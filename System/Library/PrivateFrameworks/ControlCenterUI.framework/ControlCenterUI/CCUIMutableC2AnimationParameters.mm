@interface CCUIMutableC2AnimationParameters
- (id)copyWithZone:(_NSZone *)a3;
- (void)setDampingRatio:(double)a3 response:(double)a4;
@end

@implementation CCUIMutableC2AnimationParameters

- (void)setDampingRatio:(double)a3 response:(double)a4
{
  convertDampingRatioAndResponseToTensionAndFriction();
  [(CCUIMutableC2AnimationParameters *)self setTension:0.0];
  [(CCUIMutableC2AnimationParameters *)self setFriction:0.0];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CCUIC2AnimationParameters alloc];

  return [(CCUIC2AnimationParameters *)v4 _initWithAnimationParameters:self];
}

@end