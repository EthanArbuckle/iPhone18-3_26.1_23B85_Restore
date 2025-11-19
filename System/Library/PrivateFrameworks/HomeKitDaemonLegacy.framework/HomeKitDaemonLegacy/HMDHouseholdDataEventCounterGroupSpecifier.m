@interface HMDHouseholdDataEventCounterGroupSpecifier
+ (id)specifierWithGroupName:(id)a3 homeUUID:(id)a4 date:(id)a5;
- (BOOL)isEqual:(id)a3;
- (HMDHouseholdDataEventCounterGroupSpecifier)initWithCoder:(id)a3;
- (HMDHouseholdDataEventCounterGroupSpecifier)initWithGroupName:(id)a3 homeUUID:(id)a4 date:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDHouseholdDataEventCounterGroupSpecifier

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDEventCounterGroupNameSpecifier *)self groupName];
  v5 = [(HMDHouseholdDataEventCounterGroupSpecifier *)self homeUUID];
  v6 = [(HMDDateCounterGroupSpecifier *)self date];
  v7 = [v3 stringWithFormat:@"%@/%@/%@", v4, v5, v6];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(HMDEventCounterGroupNameSpecifier *)self groupName];
  v4 = [v3 hash];
  v5 = [(HMDHouseholdDataEventCounterGroupSpecifier *)self homeUUID];
  v6 = [v5 hash] ^ v4;
  v7 = [(HMDDateCounterGroupSpecifier *)self date];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else if ([(HMDHouseholdDataEventCounterGroupSpecifier *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(HMDEventCounterGroupNameSpecifier *)self groupName];
    v7 = [(HMDEventCounterGroupNameSpecifier *)v5 groupName];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(HMDHouseholdDataEventCounterGroupSpecifier *)self homeUUID];
      v9 = [(HMDHouseholdDataEventCounterGroupSpecifier *)v5 homeUUID];
      if ([v8 hmf_isEqualToUUID:v9])
      {
        v10 = [(HMDDateCounterGroupSpecifier *)self date];
        v11 = [(HMDDateCounterGroupSpecifier *)v5 date];
        v12 = [v10 isEqualToDate:v11];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HMDHouseholdDataEventCounterGroupSpecifier;
  v4 = a3;
  [(HMDDateCounterGroupSpecifier *)&v6 encodeWithCoder:v4];
  v5 = [(HMDHouseholdDataEventCounterGroupSpecifier *)self homeUUID:v6.receiver];
  [v4 encodeObject:v5 forKey:@"homeUUID"];
}

- (HMDHouseholdDataEventCounterGroupSpecifier)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDHouseholdDataEventCounterGroupSpecifier;
  v5 = [(HMDDateCounterGroupSpecifier *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"homeUUID"];
    homeUUID = v5->_homeUUID;
    v5->_homeUUID = v6;
  }

  return v5;
}

- (HMDHouseholdDataEventCounterGroupSpecifier)initWithGroupName:(id)a3 homeUUID:(id)a4 date:(id)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = HMDHouseholdDataEventCounterGroupSpecifier;
  v10 = [(HMDDateCounterGroupSpecifier *)&v13 initWithGroupName:a3 date:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_homeUUID, a4);
  }

  return v11;
}

+ (id)specifierWithGroupName:(id)a3 homeUUID:(id)a4 date:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[HMDHouseholdDataEventCounterGroupSpecifier alloc] initWithGroupName:v9 homeUUID:v8 date:v7];

  return v10;
}

@end