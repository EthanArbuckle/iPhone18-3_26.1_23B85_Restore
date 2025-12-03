@interface HRECharacteristicActionVarianceRule
+ (id)anyVarianceRuleForCharacteristicType:(id)type;
- (BOOL)passesForAction:(id)action;
- (id)_initWithType:(id)type;
@end

@implementation HRECharacteristicActionVarianceRule

- (id)_initWithType:(id)type
{
  typeCopy = type;
  v6 = [objc_opt_class() varianceKeyForCharacteristicType:typeCopy];
  v9.receiver = self;
  v9.super_class = HRECharacteristicActionVarianceRule;
  v7 = [(HREActionVariance *)&v9 _initWithKey:v6];

  if (v7)
  {
    objc_storeStrong(v7 + 2, type);
  }

  return v7;
}

+ (id)anyVarianceRuleForCharacteristicType:(id)type
{
  v3 = [self varianceKeyForCharacteristicType:type];
  v4 = [HREActionAnyVarianceRule anyVarianceRuleWithKey:v3];

  return v4;
}

- (BOOL)passesForAction:(id)action
{
  characteristic = [action characteristic];
  characteristicType = [characteristic characteristicType];
  characteristicType2 = [(HRECharacteristicActionVarianceRule *)self characteristicType];
  v7 = [characteristicType isEqualToString:characteristicType2];

  return v7;
}

@end