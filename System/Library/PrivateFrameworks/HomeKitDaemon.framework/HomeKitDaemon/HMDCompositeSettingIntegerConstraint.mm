@interface HMDCompositeSettingIntegerConstraint
- (BOOL)isValidValue:(id)a3 error:(id *)a4;
- (HMDCompositeSettingIntegerConstraint)initWithMaxValue:(int64_t)a3 minValue:(int64_t)a4 stepValue:(int64_t)a5;
@end

@implementation HMDCompositeSettingIntegerConstraint

- (BOOL)isValidValue:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 conformsToProtocol:&unk_283EDADB0])
  {
    v7 = v6;
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
    if (!a4)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v10 = [v8 numberValue];
  v11 = [v10 integerValue];
  v12 = [v9 numberValue];
  v13 = [v12 integerValue];

  v14 = [(HMDCompositeSettingIntegerConstraint *)self max];
  if (v13 >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  if (v11 == v15)
  {
    v16 = [v9 numberValue];
    v17 = [v16 integerValue];
    v18 = [v9 numberValue];
    v19 = [v18 integerValue];

    v20 = [(HMDCompositeSettingIntegerConstraint *)self min];
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    if (v17 == v21)
    {
      v22 = [v9 numberValue];
      v23 = [v22 integerValue];
      v24 = v23 - [(HMDCompositeSettingIntegerConstraint *)self min];
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

  if (a4)
  {
LABEL_20:
    if (!v25)
    {
      *a4 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    }
  }

LABEL_22:

  return v25;
}

- (HMDCompositeSettingIntegerConstraint)initWithMaxValue:(int64_t)a3 minValue:(int64_t)a4 stepValue:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = HMDCompositeSettingIntegerConstraint;
  result = [(HMDCompositeSettingIntegerConstraint *)&v9 init];
  if (result)
  {
    result->_min = a4;
    result->_max = a3;
    result->_step = a5;
  }

  return result;
}

@end