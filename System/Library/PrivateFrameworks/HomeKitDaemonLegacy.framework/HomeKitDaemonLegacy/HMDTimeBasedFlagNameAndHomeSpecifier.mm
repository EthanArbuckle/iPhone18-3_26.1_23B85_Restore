@interface HMDTimeBasedFlagNameAndHomeSpecifier
+ (id)specifierWithFlagName:(id)name homeUUID:(id)d;
- (BOOL)isEqual:(id)equal;
- (HMDTimeBasedFlagNameAndHomeSpecifier)initWithCoder:(id)coder;
- (HMDTimeBasedFlagNameAndHomeSpecifier)initWithFlagName:(id)name homeUUID:(id)d;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDTimeBasedFlagNameAndHomeSpecifier

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  flagName = [(HMDTimeBasedFlagNameAndHomeSpecifier *)self flagName];
  homeUUID = [(HMDTimeBasedFlagNameAndHomeSpecifier *)self homeUUID];
  v6 = [v3 stringWithFormat:@"%@/%@", flagName, homeUUID];

  return v6;
}

- (unint64_t)hash
{
  flagName = [(HMDTimeBasedFlagNameAndHomeSpecifier *)self flagName];
  v4 = [flagName hash];
  homeUUID = [(HMDTimeBasedFlagNameAndHomeSpecifier *)self homeUUID];
  v6 = [homeUUID hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      flagName = [(HMDTimeBasedFlagNameAndHomeSpecifier *)self flagName];
      flagName2 = [(HMDTimeBasedFlagNameAndHomeSpecifier *)v6 flagName];
      if ([flagName isEqualToString:flagName2])
      {
        homeUUID = [(HMDTimeBasedFlagNameAndHomeSpecifier *)self homeUUID];
        homeUUID2 = [(HMDTimeBasedFlagNameAndHomeSpecifier *)v6 homeUUID];
        v11 = [homeUUID hmf_isEqualToUUID:homeUUID2];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  flagName = [(HMDTimeBasedFlagNameAndHomeSpecifier *)self flagName];
  [coderCopy encodeObject:flagName forKey:@"flagName"];

  homeUUID = [(HMDTimeBasedFlagNameAndHomeSpecifier *)self homeUUID];
  [coderCopy encodeObject:homeUUID forKey:@"homeUUID"];
}

- (HMDTimeBasedFlagNameAndHomeSpecifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HMDTimeBasedFlagNameAndHomeSpecifier;
  v5 = [(HMDTimeBasedFlagNameAndHomeSpecifier *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"flagName"];
    flagName = v5->_flagName;
    v5->_flagName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeUUID"];
    homeUUID = v5->_homeUUID;
    v5->_homeUUID = v8;
  }

  return v5;
}

- (HMDTimeBasedFlagNameAndHomeSpecifier)initWithFlagName:(id)name homeUUID:(id)d
{
  nameCopy = name;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = HMDTimeBasedFlagNameAndHomeSpecifier;
  v9 = [(HMDTimeBasedFlagNameAndHomeSpecifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_flagName, name);
    objc_storeStrong(&v10->_homeUUID, d);
  }

  return v10;
}

+ (id)specifierWithFlagName:(id)name homeUUID:(id)d
{
  dCopy = d;
  nameCopy = name;
  v7 = [[HMDTimeBasedFlagNameAndHomeSpecifier alloc] initWithFlagName:nameCopy homeUUID:dCopy];

  return v7;
}

@end