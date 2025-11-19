@interface NTKRichComplicationLineView
- (CGPath)_generatePath;
- (CGPoint)_pointAtProgress:(float)a3;
- (void)_setupGradientLayer:(id)a3;
@end

@implementation NTKRichComplicationLineView

- (void)_setupGradientLayer:(id)a3
{
  v3 = *MEMORY[0x277CDA690];
  v4 = a3;
  [v4 setType:v3];
  CGAffineTransformMakeRotation(&v6, -1.57079633);
  v5 = v6;
  [v4 setAffineTransform:&v5];
}

- (CGPoint)_pointAtProgress:(float)a3
{
  [(NTKRichComplicationLineView *)self bounds];
  v6 = v5;
  v8 = v7;
  v9 = [(CDRichComplicationShapeView *)self device];
  v10 = ___LayoutConstants_block_invoke_57(v9, v9);

  v11 = v10 + (v6 + v10 * -2.0) * a3;
  v12 = v8 * 0.5;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPath)_generatePath
{
  [(NTKRichComplicationLineView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = [(CDRichComplicationShapeView *)self device];
  v8 = ___LayoutConstants_block_invoke_57(v7, v7);

  v9 = [MEMORY[0x277D75208] bezierPath];
  v10 = v6 * 0.5;
  [v9 moveToPoint:{v8, v10}];
  [v9 addLineToPoint:{v4 - v8, v10}];
  v11 = [v9 CGPath];

  return v11;
}

@end