@interface HMDHAPMetadataCategory
- (HMDHAPMetadataCategory)init;
- (HMDHAPMetadataCategory)initWithIdentifier:(id)a3 uuid:(id)a4 name:(id)a5 description:(id)a6;
- (NSString)description;
@end

@implementation HMDHAPMetadataCategory

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDHAPMetadataCategory *)self name];
  v5 = [(HMDHAPMetadataCategory *)self catDescription];
  v6 = [(HMDHAPMetadataCategory *)self identifier];
  v7 = [(HMDHAPMetadataCategory *)self uuidStr];
  v8 = [v3 stringWithFormat:@"Accessory category %@: description: %@ identifier: %@ uuid: %@", v4, v5, v6, v7];

  return v8;
}

- (HMDHAPMetadataCategory)initWithIdentifier:(id)a3 uuid:(id)a4 name:(id)a5 description:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v24.receiver = self;
  v24.super_class = HMDHAPMetadataCategory;
  v15 = [(HMDHAPMetadataCategory *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, a3);
    v17 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:v12];
    uuidStr = v16->_uuidStr;
    v16->_uuidStr = v17;

    v19 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:v13];
    name = v16->_name;
    v16->_name = v19;

    v21 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:v14];
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