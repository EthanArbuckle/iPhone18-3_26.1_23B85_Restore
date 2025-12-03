@interface HAPCharacteristicValueTransitionControlResponse(NaturalLighting)
- (uint64_t)isNaturalLightingEnabledForCharacteristic:()NaturalLighting;
@end

@implementation HAPCharacteristicValueTransitionControlResponse(NaturalLighting)

- (uint64_t)isNaturalLightingEnabledForCharacteristic:()NaturalLighting
{
  v4 = a3;
  transitionState = [self transitionState];
  v6 = [transitionState isNaturalLightingEnabledForCharacteristic:v4];

  return v6;
}

@end