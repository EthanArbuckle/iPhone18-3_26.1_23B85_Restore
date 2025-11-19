@interface ITKAutoFadeOutLayer
- (void)setPosition:(CGPoint)a3;
@end

@implementation ITKAutoFadeOutLayer

- (void)setPosition:(CGPoint)a3
{
  v5.receiver = self;
  v5.super_class = ITKAutoFadeOutLayer;
  [(ITKAutoFadeOutLayer *)&v5 setPosition:a3.x, a3.y];
  v4 = [(ITKAutoFadeOutLayer *)self superlayer];
  [v4 setNeedsDisplay];
}

@end