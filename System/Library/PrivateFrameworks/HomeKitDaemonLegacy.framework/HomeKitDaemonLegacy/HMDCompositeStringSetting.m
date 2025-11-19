@interface HMDCompositeStringSetting
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualValue:(id)a3;
- (HMDCompositeStringSetting)initWithValue:(id)a3 readVersion:(id)a4 writeVersion:(id)a5;
- (id)attributeDescriptions;
@end

@implementation HMDCompositeStringSetting

- (id)attributeDescriptions
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HMDCompositeStringSetting;
  v3 = [(HMDCompositeSetting *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMDCompositeStringSetting *)self stringValue];
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
    if (v6 && [(HMDCompositeStringSetting *)v6 isEqualValue:self])
    {
      v10.receiver = self;
      v10.super_class = HMDCompositeStringSetting;
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
    v10 = 1;
  }

  else
  {
    if ([(HMDCompositeStringSetting *)v4 conformsToProtocol:&unk_28667C610])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = [(HMDCompositeStringSetting *)v7 stringValue];

    v9 = [(HMDCompositeStringSetting *)self stringValue];
    v10 = [v8 isEqualToString:v9];
  }

  return v10;
}

- (HMDCompositeStringSetting)initWithValue:(id)a3 readVersion:(id)a4 writeVersion:(id)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = HMDCompositeStringSetting;
  v9 = [(HMDCompositeSetting *)&v13 initWithReadVersion:a4 writeVersion:a5];
  if (v9)
  {
    v10 = [v8 copy];
    stringValue = v9->_stringValue;
    v9->_stringValue = v10;
  }

  return v9;
}

@end