@interface CCUIMutableC2AnimationParameters
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDampingRatio:(double)ratio response:(double)response;
@end

@implementation CCUIMutableC2AnimationParameters

- (void)setDampingRatio:(double)ratio response:(double)response
{
  convertDampingRatioAndResponseToTensionAndFriction();
  [(CCUIMutableC2AnimationParameters *)self setTension:0.0];
  [(CCUIMutableC2AnimationParameters *)self setFriction:0.0];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CCUIC2AnimationParameters alloc];

  return [(CCUIC2AnimationParameters *)v4 _initWithAnimationParameters:self];
}

@end