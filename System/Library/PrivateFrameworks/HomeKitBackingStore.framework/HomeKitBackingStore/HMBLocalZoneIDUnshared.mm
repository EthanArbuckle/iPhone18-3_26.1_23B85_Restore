@interface HMBLocalZoneIDUnshared
- (BOOL)isEqual:(id)equal;
- (HMBLocalZoneIDUnshared)initWithName:(id)name;
- (NSData)token;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation HMBLocalZoneIDUnshared

- (unint64_t)hash
{
  token = [(HMBLocalZoneIDUnshared *)self token];
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
    token2 = [(HMBLocalZoneIDUnshared *)self token];
    v6 = [token isEqual:token2];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  name = [(HMBLocalZoneIDUnshared *)self name];
  v6 = [v4 initWithName:name];

  return v6;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  name = [(HMBLocalZoneIDUnshared *)self name];
  v4 = [v2 stringWithFormat:@"<HMBLocalZoneIDUnshared: %@>", name];

  return v4;
}

- (NSData)token
{
  name = [(HMBLocalZoneIDUnshared *)self name];
  v3 = [name dataUsingEncoding:10];

  return v3;
}

- (HMBLocalZoneIDUnshared)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = HMBLocalZoneIDUnshared;
  v6 = [(HMBLocalZoneIDUnshared *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
  }

  return v7;
}

@end