@interface HMDCompositeNumberSetting
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualValue:(id)value;
- (HMDCompositeNumberSetting)initWithValue:(id)value readVersion:(id)version writeVersion:(id)writeVersion;
- (id)attributeDescriptions;
@end

@implementation HMDCompositeNumberSetting

- (id)attributeDescriptions
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HMDCompositeNumberSetting;
  attributeDescriptions = [(HMDCompositeSetting *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  numberValue = [(HMDCompositeNumberSetting *)self numberValue];
  v6 = [v4 initWithName:@"value" value:numberValue];
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
    if ([(HMDCompositeNumberSetting *)valueCopy conformsToProtocol:&unk_283EDADB0])
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
      numberValue = [(HMDCompositeNumberSetting *)v7 numberValue];
      numberValue2 = [(HMDCompositeNumberSetting *)self numberValue];
      v11 = [numberValue isEqual:numberValue2];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (HMDCompositeNumberSetting)initWithValue:(id)value readVersion:(id)version writeVersion:(id)writeVersion
{
  valueCopy = value;
  v13.receiver = self;
  v13.super_class = HMDCompositeNumberSetting;
  v9 = [(HMDCompositeSetting *)&v13 initWithReadVersion:version writeVersion:writeVersion];
  if (v9)
  {
    v10 = [valueCopy copy];
    numberValue = v9->_numberValue;
    v9->_numberValue = v10;
  }

  return v9;
}

@end