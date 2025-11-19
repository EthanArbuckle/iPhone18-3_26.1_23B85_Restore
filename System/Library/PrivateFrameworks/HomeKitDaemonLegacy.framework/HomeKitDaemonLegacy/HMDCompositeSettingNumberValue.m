@interface HMDCompositeSettingNumberValue
- (BOOL)isEqualValue:(id)a3;
- (HMDCompositeSettingNumberValue)initWithValue:(id)a3;
- (id)attributeDescriptions;
@end

@implementation HMDCompositeSettingNumberValue

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDCompositeSettingNumberValue *)self numberValue];
  v5 = [v3 initWithName:@"value" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)isEqualValue:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    if ([(HMDCompositeSettingNumberValue *)v4 conformsToProtocol:&unk_28667C6F8])
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
      v9 = [(HMDCompositeSettingNumberValue *)v7 numberValue];
      v10 = [(HMDCompositeSettingNumberValue *)self numberValue];
      v11 = [v9 isEqual:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (HMDCompositeSettingNumberValue)initWithValue:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDCompositeSettingNumberValue;
  v5 = [(HMDCompositeSettingValue *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    numberValue = v5->_numberValue;
    v5->_numberValue = v6;
  }

  return v5;
}

@end