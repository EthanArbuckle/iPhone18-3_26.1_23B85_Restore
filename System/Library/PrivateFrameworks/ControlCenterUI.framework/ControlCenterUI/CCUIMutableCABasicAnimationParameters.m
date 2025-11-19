@interface CCUIMutableCABasicAnimationParameters
- (id)copyWithZone:(_NSZone *)a3;
- (void)setTimingFunction:(id)a3;
@end

@implementation CCUIMutableCABasicAnimationParameters

- (void)setTimingFunction:(id)a3
{
  v4 = [a3 copyWithZone:0];
  timingFunction = self->super._timingFunction;
  self->super._timingFunction = v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CCUICABasicAnimationParameters alloc];

  return [(CCUICABasicAnimationParameters *)v4 _initWithAnimationParameters:self];
}

@end