@interface HMBLocalZoneIDRow
- (BOOL)isEqual:(id)equal;
- (HMBLocalZoneIDRow)initWithCoder:(id)coder;
- (HMBLocalZoneIDRow)initWithName:(id)name token:(id)token;
- (NSArray)attributeDescriptions;
- (id)copyWithZone:(_NSZone *)zone;
- (id)labels;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMBLocalZoneIDRow

- (HMBLocalZoneIDRow)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMBLZR.name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMBLZR.token"];

  v7 = [(HMBLocalZoneIDRow *)self initWithName:v5 token:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(HMBLocalZoneIDRow *)self name];
  [coderCopy encodeObject:name forKey:@"HMBLZR.name"];

  token = [(HMBLocalZoneIDRow *)self token];
  [coderCopy encodeObject:token forKey:@"HMBLZR.token"];
}

- (unint64_t)hash
{
  token = [(HMBLocalZoneIDRow *)self token];
  v3 = [token hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy conformsToProtocol:&unk_283EBFBA0];
  v6 = 0;
  if (equalCopy && v5)
  {
    token = [equalCopy token];
    token2 = [(HMBLocalZoneIDRow *)self token];
    v6 = [token isEqual:token2];
  }

  return v6;
}

- (NSArray)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  name = [(HMBLocalZoneIDRow *)self name];
  v5 = [v3 initWithName:@"Name" value:name];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  name = [(HMBLocalZoneIDRow *)self name];
  token = [(HMBLocalZoneIDRow *)self token];
  v7 = [v4 initWithName:name token:token];

  return v7;
}

- (id)labels
{
  v9[2] = *MEMORY[0x277D85DE8];
  name = [(HMBLocalZoneIDRow *)self name];
  v9[0] = name;
  token = [(HMBLocalZoneIDRow *)self token];
  v5 = [token base64EncodedStringWithOptions:0];
  v9[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (HMBLocalZoneIDRow)initWithName:(id)name token:(id)token
{
  nameCopy = name;
  tokenCopy = token;
  v12.receiver = self;
  v12.super_class = HMBLocalZoneIDRow;
  v9 = [(HMBLocalZoneIDRow *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_token, token);
  }

  return v10;
}

@end