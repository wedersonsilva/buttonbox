// Created by Wederson Silva - Feb 2019

// Variables

boxmainsize = [26,30,10];
boxhollow = [18,22,8];
buttonbase = [10,10,3];
clamphollow = [4,32,3];
cylinheigh = 6;
cylinradius = 1.5;
center = true;

boxcovermainsize = [26,30,2];

// ######################
//    BOX 
// ######################
translate([0,0,4.5])
  cube(buttonbase, center);
  
 difference(){
    translate([0,0,5])
      cube(boxmainsize, center);
    
    translate([0,0,7])  
      cube(boxhollow, center);    
  
   translate([5,-16,3])  
      cube(clamphollow);
  
   translate([-9,-16,3])  
      cube(clamphollow);
      
   translate([10.5,12.5,7])      
      cylinder(h=4, r=1);
   
   translate([-10.5,-12.5,7])      
      cylinder(h=4, r=1);
   
   translate([-10.5,12.5,7])      
      cylinder(h=4, r=1);
   
   translate([10.5,-12.5,7])      
      cylinder(h=4, r=1);        
}
    

// ######################
//    BOX COVER
// ######################
translate([0,35]){    
  
  difference(){
    translate([0,0,1])
    cube(boxcovermainsize,center);

    translate([0,0,-1])     
      cylinder(h=5, r=4.5);
    
    translate([10.5,12.5,-1])      
      cylinder(h=4, r=1);
   
   translate([-10.5,-12.5,-1])      
      cylinder(h=4, r=1);
   
   translate([-10.5,12.5,-1])      
      cylinder(h=4, r=1);
   
   translate([10.5,-12.5,-1])      
      cylinder(h=4, r=1);
    
    translate([-10.5,-6,1])
      rotate([180])
        linear_extrude(3){
        text("LabPRO", 4);
      }  
  }

translate([6.5,-2,2])
      cube([2,4,2]);

translate([-8.5,-2,2])
      cube([2,4,2]);

translate([-2,6.5,2])
      cube([4,2,2]);

translate([-2,-8.5,2])
      cube([4,2,2]);  
}

// ######################
//    DESIGNER CREDITS
// ######################

//translate([-7.5,6,1])
//  linear_extrude(3){
//    text("MAKER", 3);
//  }
        
//translate([-12,-9,1])
//  linear_extrude(3){
//    text("WEDERSON", 3);
//  }

//translate([-8,-13,2])
    //linear_extrude(1){
      //text("LABPRO", 3);
//}