@interface HMDCompositeBoolSetting
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualValue:(id)value;
- (HMDCompositeBoolSetting)initWithValue:(BOOL)value readVersion:(id)version writeVersion:(id)writeVersion;
- (id)attributeDescriptions;
@end

@implementation HMDCompositeBoolSetting

- (id)attributeDescriptions
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HMDCompositeBoolSetting;
  attributeDescriptions = [(HMDCompositeSetting *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDCompositeBoolSetting *)self BOOLValue];
  v5 = HMFBooleanToString();
  v6 = [v4 initWithName:@"value" value:v5];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v8 = [v7 arrayByAddingObjectsFromArray:attributeDescriptions];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (BOOL)isEqualValue:(id)value
{
  valueCopy = value;
  v5 = valueCopy;
  if (valueCopy == self)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    if ([(HMDCompositeBoolSetting *)valueCopy conformsToProtocol:&unk_283EDACA8])
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
      bOOLValue = [(HMDCompositeBoolSetting *)v7 BOOLValue];
      v10 = bOOLValue ^ [(HMDCompositeBoolSetting *)self BOOLValue]^ 1;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

- (HMDCompositeBoolSetting)initWithValue:(BOOL)value readVersion:(id)version writeVersion:(id)writeVersion
{
  v7.receiver = self;
  v7.super_class = HMDCompositeBoolSetting;
  result = [(HMDCompositeSetting *)&v7 initWithReadVersion:version writeVersion:writeVersion];
  if (result)
  {
    result->_BOOLValue = value;
  }

  return result;
}

@end