@interface HMBLocalZoneIDRow
- (BOOL)isEqual:(id)a3;
- (HMBLocalZoneIDRow)initWithCoder:(id)a3;
- (HMBLocalZoneIDRow)initWithName:(id)a3 token:(id)a4;
- (NSArray)attributeDescriptions;
- (id)copyWithZone:(_NSZone *)a3;
- (id)labels;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMBLocalZoneIDRow

- (HMBLocalZoneIDRow)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMBLZR.name"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMBLZR.token"];

  v7 = [(HMBLocalZoneIDRow *)self initWithName:v5 token:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMBLocalZoneIDRow *)self name];
  [v4 encodeObject:v5 forKey:@"HMBLZR.name"];

  v6 = [(HMBLocalZoneIDRow *)self token];
  [v4 encodeObject:v6 forKey:@"HMBLZR.token"];
}

- (unint64_t)hash
{
  v2 = [(HMBLocalZoneIDRow *)self token];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 conformsToProtocol:&unk_283EBFBA0];
  v6 = 0;
  if (v4 && v5)
  {
    v7 = [v4 token];
    v8 = [(HMBLocalZoneIDRow *)self token];
    v6 = [v7 isEqual:v8];
  }

  return v6;
}

- (NSArray)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMBLocalZoneIDRow *)self name];
  v5 = [v3 initWithName:@"Name" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HMBLocalZoneIDRow *)self name];
  v6 = [(HMBLocalZoneIDRow *)self token];
  v7 = [v4 initWithName:v5 token:v6];

  return v7;
}

- (id)labels
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMBLocalZoneIDRow *)self name];
  v9[0] = v3;
  v4 = [(HMBLocalZoneIDRow *)self token];
  v5 = [v4 base64EncodedStringWithOptions:0];
  v9[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (HMBLocalZoneIDRow)initWithName:(id)a3 token:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMBLocalZoneIDRow;
  v9 = [(HMBLocalZoneIDRow *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    objc_storeStrong(&v10->_token, a4);
  }

  return v10;
}

@end