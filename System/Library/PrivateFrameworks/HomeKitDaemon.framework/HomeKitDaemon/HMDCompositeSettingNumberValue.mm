@interface HMDCompositeSettingNumberValue
- (BOOL)isEqualValue:(id)value;
- (HMDCompositeSettingNumberValue)initWithValue:(id)value;
- (id)attributeDescriptions;
@end

@implementation HMDCompositeSettingNumberValue

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  numberValue = [(HMDCompositeSettingNumberValue *)self numberValue];
  v5 = [v3 initWithName:@"value" value:numberValue];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)isEqualValue:(id)value
{
  valueCopy = value;
  v5 = valueCopy;
  if (valueCopy == self)
  {
    v11 = 1;
  }

  else
  {
    if ([(HMDCompositeSettingNumberValue *)valueCopy conformsToProtocol:&unk_283EDADB0])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = v7;
    if (v7)
    {
      numberValue = [(HMDCompositeSettingNumberValue *)v7 numberValue];
      numberValue2 = [(HMDCompositeSettingNumberValue *)self numberValue];
      v11 = [numberValue isEqual:numberValue2];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (HMDCompositeSettingNumberValue)initWithValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = HMDCompositeSettingNumberValue;
  v5 = [(HMDCompositeSettingValue *)&v9 init];
  if (v5)
  {
    v6 = [valueCopy copy];
    numberValue = v5->_numberValue;
    v5->_numberValue = v6;
  }

  return v5;
}

@end