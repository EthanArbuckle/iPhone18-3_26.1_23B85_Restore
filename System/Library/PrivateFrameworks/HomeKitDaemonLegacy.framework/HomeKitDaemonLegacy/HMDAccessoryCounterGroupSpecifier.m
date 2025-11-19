@interface HMDAccessoryCounterGroupSpecifier
+ (id)specifierWithGroupName:(id)a3 homeUUID:(id)a4 accessoryUUID:(id)a5 date:(id)a6;
- (BOOL)isEqual:(id)a3;
- (HMDAccessoryCounterGroupSpecifier)initWithCoder:(id)a3;
- (HMDAccessoryCounterGroupSpecifier)initWithGroupName:(id)a3 homeUUID:(id)a4 accessoryUUID:(id)a5 date:(id)a6;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDAccessoryCounterGroupSpecifier

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDEventCounterGroupNameSpecifier *)self groupName];
  v5 = [(HMDHouseholdDataEventCounterGroupSpecifier *)self homeUUID];
  v6 = [(HMDAccessoryCounterGroupSpecifier *)self accessoryUUID];
  v7 = [(HMDDateCounterGroupSpecifier *)self date];
  v8 = [v3 stringWithFormat:@"%@/%@/%@/%@", v4, v5, v6, v7];

  return v8;
}

- (unint64_t)hash
{
  v3 = [(HMDEventCounterGroupNameSpecifier *)self groupName];
  v4 = [v3 hash];
  v5 = [(HMDHouseholdDataEventCounterGroupSpecifier *)self homeUUID];
  v6 = [v5 hash] ^ v4;
  v7 = [(HMDAccessoryCounterGroupSpecifier *)self accessoryUUID];
  v8 = [v7 hash];
  v9 = [(HMDDateCounterGroupSpecifier *)self date];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else if ([(HMDAccessoryCounterGroupSpecifier *)v4 isMemberOfClass:objc_opt_class()])
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
        v10 = [(HMDAccessoryCounterGroupSpecifier *)self accessoryUUID];
        v11 = [(HMDAccessoryCounterGroupSpecifier *)v5 accessoryUUID];
        if ([v10 hmf_isEqualToUUID:v11])
        {
          v15 = [(HMDDateCounterGroupSpecifier *)self date];
          v12 = [(HMDDateCounterGroupSpecifier *)v5 date];
          v13 = [v15 isEqualToDate:v12];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HMDAccessoryCounterGroupSpecifier;
  v4 = a3;
  [(HMDHouseholdDataEventCounterGroupSpecifier *)&v6 encodeWithCoder:v4];
  v5 = [(HMDAccessoryCounterGroupSpecifier *)self accessoryUUID:v6.receiver];
  [v4 encodeObject:v5 forKey:@"accessoryUUID"];
}

- (HMDAccessoryCounterGroupSpecifier)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDAccessoryCounterGroupSpecifier;
  v5 = [(HMDHouseholdDataEventCounterGroupSpecifier *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryUUID"];
    accessoryUUID = v5->_accessoryUUID;
    v5->_accessoryUUID = v6;
  }

  return v5;
}

- (HMDAccessoryCounterGroupSpecifier)initWithGroupName:(id)a3 homeUUID:(id)a4 accessoryUUID:(id)a5 date:(id)a6
{
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMDAccessoryCounterGroupSpecifier;
  v12 = [(HMDHouseholdDataEventCounterGroupSpecifier *)&v15 initWithGroupName:a3 homeUUID:a4 date:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accessoryUUID, a5);
  }

  return v13;
}

+ (id)specifierWithGroupName:(id)a3 homeUUID:(id)a4 accessoryUUID:(id)a5 date:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[HMDAccessoryCounterGroupSpecifier alloc] initWithGroupName:v12 homeUUID:v11 accessoryUUID:v10 date:v9];

  return v13;
}

@end