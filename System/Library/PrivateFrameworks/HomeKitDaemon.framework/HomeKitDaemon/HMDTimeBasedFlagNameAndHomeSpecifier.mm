@interface HMDTimeBasedFlagNameAndHomeSpecifier
+ (id)specifierWithFlagName:(id)a3 homeUUID:(id)a4;
- (BOOL)isEqual:(id)a3;
- (HMDTimeBasedFlagNameAndHomeSpecifier)initWithCoder:(id)a3;
- (HMDTimeBasedFlagNameAndHomeSpecifier)initWithFlagName:(id)a3 homeUUID:(id)a4;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDTimeBasedFlagNameAndHomeSpecifier

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDTimeBasedFlagNameAndHomeSpecifier *)self flagName];
  v5 = [(HMDTimeBasedFlagNameAndHomeSpecifier *)self homeUUID];
  v6 = [v3 stringWithFormat:@"%@/%@", v4, v5];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(HMDTimeBasedFlagNameAndHomeSpecifier *)self flagName];
  v4 = [v3 hash];
  v5 = [(HMDTimeBasedFlagNameAndHomeSpecifier *)self homeUUID];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMDTimeBasedFlagNameAndHomeSpecifier *)self flagName];
      v8 = [(HMDTimeBasedFlagNameAndHomeSpecifier *)v6 flagName];
      if ([v7 isEqualToString:v8])
      {
        v9 = [(HMDTimeBasedFlagNameAndHomeSpecifier *)self homeUUID];
        v10 = [(HMDTimeBasedFlagNameAndHomeSpecifier *)v6 homeUUID];
        v11 = [v9 hmf_isEqualToUUID:v10];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDTimeBasedFlagNameAndHomeSpecifier *)self flagName];
  [v4 encodeObject:v5 forKey:@"flagName"];

  v6 = [(HMDTimeBasedFlagNameAndHomeSpecifier *)self homeUUID];
  [v4 encodeObject:v6 forKey:@"homeUUID"];
}

- (HMDTimeBasedFlagNameAndHomeSpecifier)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HMDTimeBasedFlagNameAndHomeSpecifier;
  v5 = [(HMDTimeBasedFlagNameAndHomeSpecifier *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"flagName"];
    flagName = v5->_flagName;
    v5->_flagName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"homeUUID"];
    homeUUID = v5->_homeUUID;
    v5->_homeUUID = v8;
  }

  return v5;
}

- (HMDTimeBasedFlagNameAndHomeSpecifier)initWithFlagName:(id)a3 homeUUID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDTimeBasedFlagNameAndHomeSpecifier;
  v9 = [(HMDTimeBasedFlagNameAndHomeSpecifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_flagName, a3);
    objc_storeStrong(&v10->_homeUUID, a4);
  }

  return v10;
}

+ (id)specifierWithFlagName:(id)a3 homeUUID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[HMDTimeBasedFlagNameAndHomeSpecifier alloc] initWithFlagName:v6 homeUUID:v5];

  return v7;
}

@end