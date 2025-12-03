@interface HMDAccessoryCounterGroupSpecifier
+ (id)specifierWithGroupName:(id)name homeUUID:(id)d accessoryUUID:(id)iD date:(id)date;
- (BOOL)isEqual:(id)equal;
- (HMDAccessoryCounterGroupSpecifier)initWithCoder:(id)coder;
- (HMDAccessoryCounterGroupSpecifier)initWithGroupName:(id)name homeUUID:(id)d accessoryUUID:(id)iD date:(id)date;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDAccessoryCounterGroupSpecifier

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  groupName = [(HMDEventCounterGroupNameSpecifier *)self groupName];
  homeUUID = [(HMDHouseholdDataEventCounterGroupSpecifier *)self homeUUID];
  accessoryUUID = [(HMDAccessoryCounterGroupSpecifier *)self accessoryUUID];
  date = [(HMDDateCounterGroupSpecifier *)self date];
  v8 = [v3 stringWithFormat:@"%@/%@/%@/%@", groupName, homeUUID, accessoryUUID, date];

  return v8;
}

- (unint64_t)hash
{
  groupName = [(HMDEventCounterGroupNameSpecifier *)self groupName];
  v4 = [groupName hash];
  homeUUID = [(HMDHouseholdDataEventCounterGroupSpecifier *)self homeUUID];
  v6 = [homeUUID hash] ^ v4;
  accessoryUUID = [(HMDAccessoryCounterGroupSpecifier *)self accessoryUUID];
  v8 = [accessoryUUID hash];
  date = [(HMDDateCounterGroupSpecifier *)self date];
  v10 = v8 ^ [date hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else if ([(HMDAccessoryCounterGroupSpecifier *)equalCopy isMemberOfClass:objc_opt_class()])
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
        accessoryUUID = [(HMDAccessoryCounterGroupSpecifier *)self accessoryUUID];
        accessoryUUID2 = [(HMDAccessoryCounterGroupSpecifier *)v5 accessoryUUID];
        if ([accessoryUUID hmf_isEqualToUUID:accessoryUUID2])
        {
          date = [(HMDDateCounterGroupSpecifier *)self date];
          date2 = [(HMDDateCounterGroupSpecifier *)v5 date];
          v13 = [date isEqualToDate:date2];
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

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HMDAccessoryCounterGroupSpecifier;
  coderCopy = coder;
  [(HMDHouseholdDataEventCounterGroupSpecifier *)&v6 encodeWithCoder:coderCopy];
  v5 = [(HMDAccessoryCounterGroupSpecifier *)self accessoryUUID:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"accessoryUUID"];
}

- (HMDAccessoryCounterGroupSpecifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HMDAccessoryCounterGroupSpecifier;
  v5 = [(HMDHouseholdDataEventCounterGroupSpecifier *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryUUID"];
    accessoryUUID = v5->_accessoryUUID;
    v5->_accessoryUUID = v6;
  }

  return v5;
}

- (HMDAccessoryCounterGroupSpecifier)initWithGroupName:(id)name homeUUID:(id)d accessoryUUID:(id)iD date:(id)date
{
  iDCopy = iD;
  v15.receiver = self;
  v15.super_class = HMDAccessoryCounterGroupSpecifier;
  v12 = [(HMDHouseholdDataEventCounterGroupSpecifier *)&v15 initWithGroupName:name homeUUID:d date:date];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accessoryUUID, iD);
  }

  return v13;
}

+ (id)specifierWithGroupName:(id)name homeUUID:(id)d accessoryUUID:(id)iD date:(id)date
{
  dateCopy = date;
  iDCopy = iD;
  dCopy = d;
  nameCopy = name;
  v13 = [[HMDAccessoryCounterGroupSpecifier alloc] initWithGroupName:nameCopy homeUUID:dCopy accessoryUUID:iDCopy date:dateCopy];

  return v13;
}

@end