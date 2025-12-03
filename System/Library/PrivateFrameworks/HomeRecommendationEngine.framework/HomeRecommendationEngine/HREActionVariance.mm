@interface HREActionVariance
+ (id)varianceKeyForAction:(id)action;
- (id)_initWithKey:(id)key;
@end

@implementation HREActionVariance

- (id)_initWithKey:(id)key
{
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = HREActionVariance;
  _init = [(HRERule *)&v9 _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, key);
  }

  return v7;
}

+ (id)varianceKeyForAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    characteristic = [actionCopy characteristic];
    characteristicType = [characteristic characteristicType];
    v6 = [HRECharacteristicActionVarianceRule varianceKeyForCharacteristicType:characteristicType];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end