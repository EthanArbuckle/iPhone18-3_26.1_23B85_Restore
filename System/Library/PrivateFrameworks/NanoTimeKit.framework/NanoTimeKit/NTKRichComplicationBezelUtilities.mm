@interface NTKRichComplicationBezelUtilities
+ (id)hitTestPathWithViewBounds:(CGRect)bounds shape:(int64_t)shape shapeFrame:(CGRect)frame forDevice:(id)device;
@end

@implementation NTKRichComplicationBezelUtilities

+ (id)hitTestPathWithViewBounds:(CGRect)bounds shape:(int64_t)shape shapeFrame:(CGRect)frame forDevice:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11 = bounds.size.height;
  v12 = bounds.size.width;
  v32 = bounds.origin.y;
  v13 = bounds.origin.x;
  v14 = ___LayoutConstants_block_invoke_65(self, device);
  if (shape < 2)
  {
    bezierPath = [MEMORY[0x277D75208] bezierPathWithRect:{x, y, width, height}];
  }

  else
  {
    v18 = v14;
    if (shape == 2)
    {
      v26 = v11 * 0.5;
      v27 = v14 * 0.5;
      v28 = v14 * 0.5 - v15;
      v33 = v17;
      v29 = v15;
      v30 = v16;
      bezierPath = [MEMORY[0x277D75208] bezierPath];
      [bezierPath moveToPoint:{v12 * 0.5, v26}];
      [bezierPath addArcWithCenter:0 radius:v12 * 0.5 startAngle:v26 endAngle:v28 clockwise:{v30, 3.14159265}];
      [bezierPath addLineToPoint:{0.0, v26}];
      [bezierPath addArcWithCenter:1 radius:v12 * 0.5 startAngle:v26 endAngle:v27 clockwise:{3.14159265, 0.0}];
      [bezierPath addLineToPoint:{v12 - v29, v26}];
      [bezierPath addArcWithCenter:0 radius:v12 * 0.5 startAngle:v26 endAngle:v28 clockwise:{0.0, v33}];
      [bezierPath closePath];
    }

    else if (shape == 3)
    {
      v19 = v13;
      v20 = v15;
      v21 = v16;
      v22 = v17;
      bezierPath = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{v19, v32, v12, v11}];
      bezierPath2 = [MEMORY[0x277D75208] bezierPath];
      [bezierPath2 moveToPoint:{v12 * 0.5, v11 * 0.5}];
      [bezierPath2 addArcWithCenter:1 radius:v12 * 0.5 startAngle:v11 * 0.5 endAngle:v18 * 0.5 - v20 clockwise:{v22, v21}];
      [bezierPath2 addLineToPoint:{v12 * 0.5, v11 * 0.5}];
      [bezierPath2 closePath];
      bezierPathByReversingPath = [bezierPath2 bezierPathByReversingPath];
      [bezierPath appendPath:bezierPathByReversingPath];
    }

    else
    {
      bezierPath = 0;
    }
  }

  return bezierPath;
}

@end