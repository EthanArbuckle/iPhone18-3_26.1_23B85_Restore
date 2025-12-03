@interface HMDHAPMetadataCategory
- (HMDHAPMetadataCategory)init;
- (HMDHAPMetadataCategory)initWithIdentifier:(id)identifier uuid:(id)uuid name:(id)name description:(id)description;
- (NSString)description;
@end

@implementation HMDHAPMetadataCategory

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  name = [(HMDHAPMetadataCategory *)self name];
  catDescription = [(HMDHAPMetadataCategory *)self catDescription];
  identifier = [(HMDHAPMetadataCategory *)self identifier];
  uuidStr = [(HMDHAPMetadataCategory *)self uuidStr];
  v8 = [v3 stringWithFormat:@"Accessory category %@: description: %@ identifier: %@ uuid: %@", name, catDescription, identifier, uuidStr];

  return v8;
}

- (HMDHAPMetadataCategory)initWithIdentifier:(id)identifier uuid:(id)uuid name:(id)name description:(id)description
{
  identifierCopy = identifier;
  uuidCopy = uuid;
  nameCopy = name;
  descriptionCopy = description;
  v24.receiver = self;
  v24.super_class = HMDHAPMetadataCategory;
  v15 = [(HMDHAPMetadataCategory *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, identifier);
    v17 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:uuidCopy];
    uuidStr = v16->_uuidStr;
    v16->_uuidStr = v17;

    v19 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:nameCopy];
    name = v16->_name;
    v16->_name = v19;

    v21 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:descriptionCopy];
    catDescription = v16->_catDescription;
    v16->_catDescription = v21;
  }

  return v16;
}

- (HMDHAPMetadataCategory)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end