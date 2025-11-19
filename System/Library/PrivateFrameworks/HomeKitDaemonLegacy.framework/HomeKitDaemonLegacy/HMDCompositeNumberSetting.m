@interface HMDCompositeNumberSetting
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualValue:(id)a3;
- (HMDCompositeNumberSetting)initWithValue:(id)a3 readVersion:(id)a4 writeVersion:(id)a5;
- (id)attributeDescriptions;
@end

@implementation HMDCompositeNumberSetting

- (id)attributeDescriptions
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HMDCompositeNumberSetting;
  v3 = [(HMDCompositeSetting *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMDCompositeNumberSetting *)self numberValue];
  v6 = [v4 initWithName:@"value" value:v5];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v8 = [v7 arrayByAddingObjectsFromArray:v3];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = v6;
    if (v6 && [(HMDCompositeNumberSetting *)v6 isEqualValue:self])
    {
      v10.receiver = self;
      v10.super_class = HMDCompositeNumberSetting;
      v8 = [(HMDCompositeSetting *)&v10 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
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
    if ([(HMDCompositeNumberSetting *)v4 conformsToProtocol:&unk_28667C6F8])
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
      v9 = [(HMDCompositeNumberSetting *)v7 numberValue];
      v10 = [(HMDCompositeNumberSetting *)self numberValue];
      v11 = [v9 isEqual:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (HMDCompositeNumberSetting)initWithValue:(id)a3 readVersion:(id)a4 writeVersion:(id)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = HMDCompositeNumberSetting;
  v9 = [(HMDCompositeSetting *)&v13 initWithReadVersion:a4 writeVersion:a5];
  if (v9)
  {
    v10 = [v8 copy];
    numberValue = v9->_numberValue;
    v9->_numberValue = v10;
  }

  return v9;
}

@end