@interface CCUIMutableCASpringAnimationParameters
- (id)copyWithZone:(_NSZone *)a3;
- (void)setTimingFunction:(id)a3;
@end

@implementation CCUIMutableCASpringAnimationParameters

- (void)setTimingFunction:(id)a3
{
  v4 = [a3 copyWithZone:0];
  timingFunction = self->super._timingFunction;
  self->super._timingFunction = v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CCUICASpringAnimationParameters alloc];

  return [(CCUICASpringAnimationParameters *)v4 _initWithAnimationParameters:self];
}

@end