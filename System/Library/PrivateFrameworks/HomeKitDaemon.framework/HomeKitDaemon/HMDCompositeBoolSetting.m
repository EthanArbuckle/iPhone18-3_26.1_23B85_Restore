@interface HMDCompositeBoolSetting
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualValue:(id)a3;
- (HMDCompositeBoolSetting)initWithValue:(BOOL)a3 readVersion:(id)a4 writeVersion:(id)a5;
- (id)attributeDescriptions;
@end

@implementation HMDCompositeBoolSetting

- (id)attributeDescriptions
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HMDCompositeBoolSetting;
  v3 = [(HMDCompositeSetting *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDCompositeBoolSetting *)self BOOLValue];
  v5 = HMFBooleanToString();
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
    if (v6 && [(HMDCompositeBoolSetting *)v6 isEqualValue:self])
    {
      v10.receiver = self;
      v10.super_class = HMDCompositeBoolSetting;
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
    LOBYTE(v10) = 1;
  }

  else
  {
    if ([(HMDCompositeBoolSetting *)v4 conformsToProtocol:&unk_283EDACA8])
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
      v9 = [(HMDCompositeBoolSetting *)v7 BOOLValue];
      v10 = v9 ^ [(HMDCompositeBoolSetting *)self BOOLValue]^ 1;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

- (HMDCompositeBoolSetting)initWithValue:(BOOL)a3 readVersion:(id)a4 writeVersion:(id)a5
{
  v7.receiver = self;
  v7.super_class = HMDCompositeBoolSetting;
  result = [(HMDCompositeSetting *)&v7 initWithReadVersion:a4 writeVersion:a5];
  if (result)
  {
    result->_BOOLValue = a3;
  }

  return result;
}

@end