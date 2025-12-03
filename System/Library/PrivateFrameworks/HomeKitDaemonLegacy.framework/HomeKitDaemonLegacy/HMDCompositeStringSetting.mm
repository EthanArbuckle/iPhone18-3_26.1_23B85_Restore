@interface HMDCompositeStringSetting
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualValue:(id)value;
- (HMDCompositeStringSetting)initWithValue:(id)value readVersion:(id)version writeVersion:(id)writeVersion;
- (id)attributeDescriptions;
@end

@implementation HMDCompositeStringSetting

- (id)attributeDescriptions
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HMDCompositeStringSetting;
  attributeDescriptions = [(HMDCompositeSetting *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  stringValue = [(HMDCompositeStringSetting *)self stringValue];
  v6 = [v4 initWithName:@"value" value:stringValue];
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
    if ([(HMDCompositeStringSetting *)valueCopy conformsToProtocol:&unk_28667C610])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    stringValue = [(HMDCompositeStringSetting *)v7 stringValue];

    stringValue2 = [(HMDCompositeStringSetting *)self stringValue];
    v10 = [stringValue isEqualToString:stringValue2];
  }

  return v10;
}

- (HMDCompositeStringSetting)initWithValue:(id)value readVersion:(id)version writeVersion:(id)writeVersion
{
  valueCopy = value;
  v13.receiver = self;
  v13.super_class = HMDCompositeStringSetting;
  v9 = [(HMDCompositeSetting *)&v13 initWithReadVersion:version writeVersion:writeVersion];
  if (v9)
  {
    v10 = [valueCopy copy];
    stringValue = v9->_stringValue;
    v9->_stringValue = v10;
  }

  return v9;
}

@end