@interface CCUIMutableCABasicAnimationParameters
- (id)copyWithZone:(_NSZone *)zone;
- (void)setTimingFunction:(id)function;
@end

@implementation CCUIMutableCABasicAnimationParameters

- (void)setTimingFunction:(id)function
{
  v4 = [function copyWithZone:0];
  timingFunction = self->super._timingFunction;
  self->super._timingFunction = v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CCUICABasicAnimationParameters alloc];

  return [(CCUICABasicAnimationParameters *)v4 _initWithAnimationParameters:self];
}

@end