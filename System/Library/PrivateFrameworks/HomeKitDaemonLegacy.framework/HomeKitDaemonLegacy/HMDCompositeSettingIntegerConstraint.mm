@interface HMDCompositeSettingIntegerConstraint
- (BOOL)isValidValue:(id)value error:(id *)error;
- (HMDCompositeSettingIntegerConstraint)initWithMaxValue:(int64_t)value minValue:(int64_t)minValue stepValue:(int64_t)stepValue;
@end

@implementation HMDCompositeSettingIntegerConstraint

- (BOOL)isValidValue:(id)value error:(id *)error
{
  valueCopy = value;
  if ([valueCopy conformsToProtocol:&unk_28667C6F8])
  {
    v7 = valueCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = v8;
  if (!v8)
  {
    v25 = 0;
    if (!error)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  numberValue = [v8 numberValue];
  integerValue = [numberValue integerValue];
  numberValue2 = [v9 numberValue];
  integerValue2 = [numberValue2 integerValue];

  v14 = [(HMDCompositeSettingIntegerConstraint *)self max];
  if (integerValue2 >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = integerValue2;
  }

  if (integerValue == v15)
  {
    numberValue3 = [v9 numberValue];
    integerValue3 = [numberValue3 integerValue];
    numberValue4 = [v9 numberValue];
    integerValue4 = [numberValue4 integerValue];

    v20 = [(HMDCompositeSettingIntegerConstraint *)self min];
    if (integerValue4 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = integerValue4;
    }

    if (integerValue3 == v21)
    {
      numberValue5 = [v9 numberValue];
      integerValue5 = [numberValue5 integerValue];
      v24 = integerValue5 - [(HMDCompositeSettingIntegerConstraint *)self min];
      v25 = v24 % [(HMDCompositeSettingIntegerConstraint *)self step]== 0;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  if (error)
  {
LABEL_20:
    if (!v25)
    {
      *error = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    }
  }

LABEL_22:

  return v25;
}

- (HMDCompositeSettingIntegerConstraint)initWithMaxValue:(int64_t)value minValue:(int64_t)minValue stepValue:(int64_t)stepValue
{
  v9.receiver = self;
  v9.super_class = HMDCompositeSettingIntegerConstraint;
  result = [(HMDCompositeSettingIntegerConstraint *)&v9 init];
  if (result)
  {
    result->_min = minValue;
    result->_max = value;
    result->_step = stepValue;
  }

  return result;
}

@end