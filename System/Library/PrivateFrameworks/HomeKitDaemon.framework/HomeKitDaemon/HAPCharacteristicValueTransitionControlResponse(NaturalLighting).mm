@interface HAPCharacteristicValueTransitionControlResponse(NaturalLighting)
- (uint64_t)isNaturalLightingEnabledForCharacteristic:()NaturalLighting;
@end

@implementation HAPCharacteristicValueTransitionControlResponse(NaturalLighting)

- (uint64_t)isNaturalLightingEnabledForCharacteristic:()NaturalLighting
{
  v4 = a3;
  v5 = [a1 transitionState];
  v6 = [v5 isNaturalLightingEnabledForCharacteristic:v4];

  return v6;
}

@end