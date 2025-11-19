@interface NTKRichComplicationBezelUtilities
+ (id)hitTestPathWithViewBounds:(CGRect)a3 shape:(int64_t)a4 shapeFrame:(CGRect)a5 forDevice:(id)a6;
@end

@implementation NTKRichComplicationBezelUtilities

+ (id)hitTestPathWithViewBounds:(CGRect)a3 shape:(int64_t)a4 shapeFrame:(CGRect)a5 forDevice:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a3.size.height;
  v12 = a3.size.width;
  v32 = a3.origin.y;
  v13 = a3.origin.x;
  v14 = ___LayoutConstants_block_invoke_65(a1, a6);
  if (a4 < 2)
  {
    v23 = [MEMORY[0x277D75208] bezierPathWithRect:{x, y, width, height}];
  }

  else
  {
    v18 = v14;
    if (a4 == 2)
    {
      v26 = v11 * 0.5;
      v27 = v14 * 0.5;
      v28 = v14 * 0.5 - v15;
      v33 = v17;
      v29 = v15;
      v30 = v16;
      v23 = [MEMORY[0x277D75208] bezierPath];
      [v23 moveToPoint:{v12 * 0.5, v26}];
      [v23 addArcWithCenter:0 radius:v12 * 0.5 startAngle:v26 endAngle:v28 clockwise:{v30, 3.14159265}];
      [v23 addLineToPoint:{0.0, v26}];
      [v23 addArcWithCenter:1 radius:v12 * 0.5 startAngle:v26 endAngle:v27 clockwise:{3.14159265, 0.0}];
      [v23 addLineToPoint:{v12 - v29, v26}];
      [v23 addArcWithCenter:0 radius:v12 * 0.5 startAngle:v26 endAngle:v28 clockwise:{0.0, v33}];
      [v23 closePath];
    }

    else if (a4 == 3)
    {
      v19 = v13;
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{v19, v32, v12, v11}];
      v24 = [MEMORY[0x277D75208] bezierPath];
      [v24 moveToPoint:{v12 * 0.5, v11 * 0.5}];
      [v24 addArcWithCenter:1 radius:v12 * 0.5 startAngle:v11 * 0.5 endAngle:v18 * 0.5 - v20 clockwise:{v22, v21}];
      [v24 addLineToPoint:{v12 * 0.5, v11 * 0.5}];
      [v24 closePath];
      v25 = [v24 bezierPathByReversingPath];
      [v23 appendPath:v25];
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

@end