@interface _MTLumaDodgePillLowQualityEffectView
- (BOOL)_shouldAnimatePropertyAdditivelyWithKey:(id)key;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
@end

@implementation _MTLumaDodgePillLowQualityEffectView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if (__supportedAnimationPropertyKey(keyCopy))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _MTLumaDodgePillLowQualityEffectView;
    v5 = [(_MTLumaDodgePillLowQualityEffectView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (BOOL)_shouldAnimatePropertyAdditivelyWithKey:(id)key
{
  keyCopy = key;
  if (__supportedAnimationPropertyKey(keyCopy))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _MTLumaDodgePillLowQualityEffectView;
    v5 = [(_MTLumaDodgePillLowQualityEffectView *)&v7 _shouldAnimatePropertyAdditivelyWithKey:keyCopy];
  }

  return v5;
}

@end