//declare bacteria variables here   
 Bacteria[] colony; 
 void setup()   
 {     
  //initialize bacteria variables here   
   size(500,500);
   colony = new Bacteria [15];
   for(int i = 0; i <colony.length; i++){
     colony[i] = new Bacteria();
   }
 }   
 void draw()   
 {    
   //move and show the bacteria 
   //background(0);
   for(int i = 0; i<colony.length; i++){
     colony[i].move();
     colony[i].show(); 
    
   }
 }  
 class Bacteria    
 {     
   //lots of java!   
   int x;
   int y;
   int col;
    Bacteria(){
      x = (int)(Math.random()*500);
      y = (int)(Math.random()*500);
      col = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    }
    void move(){
     x = x + ((int)(Math.random()*11)-5);
     y = y + ((int)(Math.random()*11)-5);
    }
    void show(){
     stroke(col);
     fill(col);
     ellipse(x, y, 10, 10);
    }
 }    
