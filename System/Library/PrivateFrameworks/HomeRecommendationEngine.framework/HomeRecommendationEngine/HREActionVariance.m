@interface HREActionVariance
+ (id)varianceKeyForAction:(id)a3;
- (id)_initWithKey:(id)a3;
@end

@implementation HREActionVariance

- (id)_initWithKey:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HREActionVariance;
  v6 = [(HRERule *)&v9 _init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 1, a3);
  }

  return v7;
}

+ (id)varianceKeyForAction:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 characteristic];
    v5 = [v4 characteristicType];
    v6 = [HRECharacteristicActionVarianceRule varianceKeyForCharacteristicType:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end