@interface HMDHouseholdDataEventCounterGroupSpecifier
+ (id)specifierWithGroupName:(id)name homeUUID:(id)d date:(id)date;
- (BOOL)isEqual:(id)equal;
- (HMDHouseholdDataEventCounterGroupSpecifier)initWithCoder:(id)coder;
- (HMDHouseholdDataEventCounterGroupSpecifier)initWithGroupName:(id)name homeUUID:(id)d date:(id)date;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDHouseholdDataEventCounterGroupSpecifier

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  groupName = [(HMDEventCounterGroupNameSpecifier *)self groupName];
  homeUUID = [(HMDHouseholdDataEventCounterGroupSpecifier *)self homeUUID];
  date = [(HMDDateCounterGroupSpecifier *)self date];
  v7 = [v3 stringWithFormat:@"%@/%@/%@", groupName, homeUUID, date];

  return v7;
}

- (unint64_t)hash
{
  groupName = [(HMDEventCounterGroupNameSpecifier *)self groupName];
  v4 = [groupName hash];
  homeUUID = [(HMDHouseholdDataEventCounterGroupSpecifier *)self homeUUID];
  v6 = [homeUUID hash] ^ v4;
  date = [(HMDDateCounterGroupSpecifier *)self date];
  v8 = [date hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else if ([(HMDHouseholdDataEventCounterGroupSpecifier *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    groupName = [(HMDEventCounterGroupNameSpecifier *)self groupName];
    groupName2 = [(HMDEventCounterGroupNameSpecifier *)v5 groupName];
    if ([groupName isEqualToString:groupName2])
    {
      homeUUID = [(HMDHouseholdDataEventCounterGroupSpecifier *)self homeUUID];
      homeUUID2 = [(HMDHouseholdDataEventCounterGroupSpecifier *)v5 homeUUID];
      if ([homeUUID hmf_isEqualToUUID:homeUUID2])
      {
        date = [(HMDDateCounterGroupSpecifier *)self date];
        date2 = [(HMDDateCounterGroupSpecifier *)v5 date];
        v12 = [date isEqualToDate:date2];
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

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HMDHouseholdDataEventCounterGroupSpecifier;
  coderCopy = coder;
  [(HMDDateCounterGroupSpecifier *)&v6 encodeWithCoder:coderCopy];
  v5 = [(HMDHouseholdDataEventCounterGroupSpecifier *)self homeUUID:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"homeUUID"];
}

- (HMDHouseholdDataEventCounterGroupSpecifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HMDHouseholdDataEventCounterGroupSpecifier;
  v5 = [(HMDDateCounterGroupSpecifier *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeUUID"];
    homeUUID = v5->_homeUUID;
    v5->_homeUUID = v6;
  }

  return v5;
}

- (HMDHouseholdDataEventCounterGroupSpecifier)initWithGroupName:(id)name homeUUID:(id)d date:(id)date
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = HMDHouseholdDataEventCounterGroupSpecifier;
  v10 = [(HMDDateCounterGroupSpecifier *)&v13 initWithGroupName:name date:date];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_homeUUID, d);
  }

  return v11;
}

+ (id)specifierWithGroupName:(id)name homeUUID:(id)d date:(id)date
{
  dateCopy = date;
  dCopy = d;
  nameCopy = name;
  v10 = [[HMDHouseholdDataEventCounterGroupSpecifier alloc] initWithGroupName:nameCopy homeUUID:dCopy date:dateCopy];

  return v10;
}

@end