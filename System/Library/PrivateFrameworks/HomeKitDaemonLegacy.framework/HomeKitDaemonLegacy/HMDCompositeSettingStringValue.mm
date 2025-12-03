@interface HMDCompositeSettingStringValue
- (BOOL)isEqualValue:(id)value;
- (HMDCompositeSettingStringValue)initWithValue:(id)value;
- (id)attributeDescriptions;
@end

@implementation HMDCompositeSettingStringValue

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  stringValue = [(HMDCompositeSettingStringValue *)self stringValue];
  v5 = [v3 initWithName:@"value" value:stringValue];
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
    v10 = 1;
  }

  else
  {
    if ([(HMDCompositeSettingStringValue *)valueCopy conformsToProtocol:&unk_28667C610])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    stringValue = [(HMDCompositeSettingStringValue *)v7 stringValue];

    stringValue2 = [(HMDCompositeSettingStringValue *)self stringValue];
    v10 = [stringValue isEqualToString:stringValue2];
  }

  return v10;
}

- (HMDCompositeSettingStringValue)initWithValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = HMDCompositeSettingStringValue;
  v5 = [(HMDCompositeSettingValue *)&v9 init];
  if (v5)
  {
    v6 = [valueCopy copy];
    stringValue = v5->_stringValue;
    v5->_stringValue = v6;
  }

  return v5;
}

@end