@interface HMDCompositeSettingStringConstraint
- (HMDCompositeSettingStringConstraint)initWithValidValues:(id)values;
@end

@implementation HMDCompositeSettingStringConstraint

- (HMDCompositeSettingStringConstraint)initWithValidValues:(id)values
{
  valuesCopy = values;
  v9.receiver = self;
  v9.super_class = HMDCompositeSettingStringConstraint;
  v5 = [(HMDCompositeSettingStringConstraint *)&v9 init];
  if (v5)
  {
    v6 = [valuesCopy copy];
    validValues = v5->_validValues;
    v5->_validValues = v6;
  }

  return v5;
}

@end