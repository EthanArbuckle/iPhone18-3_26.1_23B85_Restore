@interface HAPCharacteristicValueTransitionControl
@end

@implementation HAPCharacteristicValueTransitionControl

uint64_t __116__HAPCharacteristicValueTransitionControl_NaturalLighting__naturalLightingActiveTransitionContextForCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 HAPInstanceID];
  v4 = [v3 value];
  v5 = [*(a1 + 32) instanceID];
  v6 = [v4 isEqualToNumber:v5];

  return v6;
}

uint64_t __100__HAPCharacteristicValueTransitionControl_NaturalLighting__naturalLightingEnabledForCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 HAPInstanceID];
  v4 = [v3 value];
  v5 = [*(a1 + 32) instanceID];
  v6 = [v4 isEqualToNumber:v5];

  return v6;
}

@end