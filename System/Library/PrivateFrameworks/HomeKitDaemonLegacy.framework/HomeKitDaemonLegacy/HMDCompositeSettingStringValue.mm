@interface HMDCompositeSettingStringValue
- (BOOL)isEqualValue:(id)a3;
- (HMDCompositeSettingStringValue)initWithValue:(id)a3;
- (id)attributeDescriptions;
@end

@implementation HMDCompositeSettingStringValue

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDCompositeSettingStringValue *)self stringValue];
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
    v10 = 1;
  }

  else
  {
    if ([(HMDCompositeSettingStringValue *)v4 conformsToProtocol:&unk_28667C610])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = [(HMDCompositeSettingStringValue *)v7 stringValue];

    v9 = [(HMDCompositeSettingStringValue *)self stringValue];
    v10 = [v8 isEqualToString:v9];
  }

  return v10;
}

- (HMDCompositeSettingStringValue)initWithValue:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDCompositeSettingStringValue;
  v5 = [(HMDCompositeSettingValue *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    stringValue = v5->_stringValue;
    v5->_stringValue = v6;
  }

  return v5;
}

@end