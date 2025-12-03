@interface NTKRichComplicationLineView
- (CGPath)_generatePath;
- (CGPoint)_pointAtProgress:(float)progress;
- (void)_setupGradientLayer:(id)layer;
@end

@implementation NTKRichComplicationLineView

- (void)_setupGradientLayer:(id)layer
{
  v3 = *MEMORY[0x277CDA690];
  layerCopy = layer;
  [layerCopy setType:v3];
  CGAffineTransformMakeRotation(&v6, -1.57079633);
  v5 = v6;
  [layerCopy setAffineTransform:&v5];
}

- (CGPoint)_pointAtProgress:(float)progress
{
  [(NTKRichComplicationLineView *)self bounds];
  v6 = v5;
  v8 = v7;
  device = [(CDRichComplicationShapeView *)self device];
  v10 = ___LayoutConstants_block_invoke_57(device, device);

  v11 = v10 + (v6 + v10 * -2.0) * progress;
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
  device = [(CDRichComplicationShapeView *)self device];
  v8 = ___LayoutConstants_block_invoke_57(device, device);

  bezierPath = [MEMORY[0x277D75208] bezierPath];
  v10 = v6 * 0.5;
  [bezierPath moveToPoint:{v8, v10}];
  [bezierPath addLineToPoint:{v4 - v8, v10}];
  cGPath = [bezierPath CGPath];

  return cGPath;
}

@end