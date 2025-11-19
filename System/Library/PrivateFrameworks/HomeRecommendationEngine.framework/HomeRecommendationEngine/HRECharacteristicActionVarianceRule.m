@interface HRECharacteristicActionVarianceRule
+ (id)anyVarianceRuleForCharacteristicType:(id)a3;
- (BOOL)passesForAction:(id)a3;
- (id)_initWithType:(id)a3;
@end

@implementation HRECharacteristicActionVarianceRule

- (id)_initWithType:(id)a3
{
  v5 = a3;
  v6 = [objc_opt_class() varianceKeyForCharacteristicType:v5];
  v9.receiver = self;
  v9.super_class = HRECharacteristicActionVarianceRule;
  v7 = [(HREActionVariance *)&v9 _initWithKey:v6];

  if (v7)
  {
    objc_storeStrong(v7 + 2, a3);
  }

  return v7;
}

+ (id)anyVarianceRuleForCharacteristicType:(id)a3
{
  v3 = [a1 varianceKeyForCharacteristicType:a3];
  v4 = [HREActionAnyVarianceRule anyVarianceRuleWithKey:v3];

  return v4;
}

- (BOOL)passesForAction:(id)a3
{
  v4 = [a3 characteristic];
  v5 = [v4 characteristicType];
  v6 = [(HRECharacteristicActionVarianceRule *)self characteristicType];
  v7 = [v5 isEqualToString:v6];

  return v7;
}

@end