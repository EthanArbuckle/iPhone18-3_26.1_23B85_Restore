@interface ITKAutoFadeOutLayer
- (void)setPosition:(CGPoint)position;
@end

@implementation ITKAutoFadeOutLayer

- (void)setPosition:(CGPoint)position
{
  v5.receiver = self;
  v5.super_class = ITKAutoFadeOutLayer;
  [(ITKAutoFadeOutLayer *)&v5 setPosition:position.x, position.y];
  superlayer = [(ITKAutoFadeOutLayer *)self superlayer];
  [superlayer setNeedsDisplay];
}

@end