@interface HMDCompositeSettingStringConstraint
- (HMDCompositeSettingStringConstraint)initWithValidValues:(id)a3;
@end

@implementation HMDCompositeSettingStringConstraint

- (HMDCompositeSettingStringConstraint)initWithValidValues:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDCompositeSettingStringConstraint;
  v5 = [(HMDCompositeSettingStringConstraint *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    validValues = v5->_validValues;
    v5->_validValues = v6;
  }

  return v5;
}

@end