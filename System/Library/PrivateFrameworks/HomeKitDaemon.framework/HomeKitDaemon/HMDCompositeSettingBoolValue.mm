@interface HMDCompositeSettingBoolValue
- (BOOL)isEqualValue:(id)a3;
- (HMDCompositeSettingBoolValue)initWithValue:(BOOL)a3;
- (id)attributeDescriptions;
@end

@implementation HMDCompositeSettingBoolValue

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDCompositeSettingBoolValue *)self BOOLValue];
  v4 = HMFBooleanToString();
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
    LOBYTE(v10) = 1;
  }

  else
  {
    if ([(HMDCompositeSettingBoolValue *)v4 conformsToProtocol:&unk_283EDACA8])
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
      v9 = [(HMDCompositeSettingBoolValue *)v7 BOOLValue];
      v10 = v9 ^ [(HMDCompositeSettingBoolValue *)self BOOLValue]^ 1;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

- (HMDCompositeSettingBoolValue)initWithValue:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HMDCompositeSettingBoolValue;
  result = [(HMDCompositeSettingValue *)&v5 init];
  if (result)
  {
    result->_BOOLValue = a3;
  }

  return result;
}

@end