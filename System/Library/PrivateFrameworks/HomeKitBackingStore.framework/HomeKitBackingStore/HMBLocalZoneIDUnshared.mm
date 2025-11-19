@interface HMBLocalZoneIDUnshared
- (BOOL)isEqual:(id)a3;
- (HMBLocalZoneIDUnshared)initWithName:(id)a3;
- (NSData)token;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation HMBLocalZoneIDUnshared

- (unint64_t)hash
{
  v2 = [(HMBLocalZoneIDUnshared *)self token];
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
    v8 = [(HMBLocalZoneIDUnshared *)self token];
    v6 = [v7 isEqual:v8];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HMBLocalZoneIDUnshared *)self name];
  v6 = [v4 initWithName:v5];

  return v6;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMBLocalZoneIDUnshared *)self name];
  v4 = [v2 stringWithFormat:@"<HMBLocalZoneIDUnshared: %@>", v3];

  return v4;
}

- (NSData)token
{
  v2 = [(HMBLocalZoneIDUnshared *)self name];
  v3 = [v2 dataUsingEncoding:10];

  return v3;
}

- (HMBLocalZoneIDUnshared)initWithName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMBLocalZoneIDUnshared;
  v6 = [(HMBLocalZoneIDUnshared *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
  }

  return v7;
}

@end