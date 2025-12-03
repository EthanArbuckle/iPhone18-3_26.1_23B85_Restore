@interface HMDTimeBasedFlagNameSpecifier
+ (id)specifierWithFlagName:(id)name;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToGroupNameSpecifier:(id)specifier;
- (HMDTimeBasedFlagNameSpecifier)initWithCoder:(id)coder;
- (HMDTimeBasedFlagNameSpecifier)initWithFlagName:(id)name;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDTimeBasedFlagNameSpecifier

- (NSString)description
{
  flagName = [(HMDTimeBasedFlagNameSpecifier *)self flagName];
  v3 = [flagName description];

  return v3;
}

- (unint64_t)hash
{
  flagName = [(HMDTimeBasedFlagNameSpecifier *)self flagName];
  v3 = [flagName hash];

  return v3;
}

- (BOOL)isEqualToGroupNameSpecifier:(id)specifier
{
  specifierCopy = specifier;
  flagName = [(HMDTimeBasedFlagNameSpecifier *)self flagName];
  flagName2 = [specifierCopy flagName];

  LOBYTE(specifierCopy) = [flagName isEqualToString:flagName2];
  return specifierCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
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
      flagName = [(HMDTimeBasedFlagNameSpecifier *)self flagName];
      flagName2 = [(HMDTimeBasedFlagNameSpecifier *)v6 flagName];
      v9 = [flagName isEqualToString:flagName2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  flagName = [(HMDTimeBasedFlagNameSpecifier *)self flagName];
  [coderCopy encodeObject:flagName forKey:@"flagName"];
}

- (HMDTimeBasedFlagNameSpecifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HMDTimeBasedFlagNameSpecifier;
  v5 = [(HMDTimeBasedFlagNameSpecifier *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"flagName"];
    flagName = v5->_flagName;
    v5->_flagName = v6;
  }

  return v5;
}

- (HMDTimeBasedFlagNameSpecifier)initWithFlagName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = HMDTimeBasedFlagNameSpecifier;
  v6 = [(HMDTimeBasedFlagNameSpecifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_flagName, name);
  }

  return v7;
}

+ (id)specifierWithFlagName:(id)name
{
  nameCopy = name;
  v4 = [[HMDTimeBasedFlagNameSpecifier alloc] initWithFlagName:nameCopy];

  return v4;
}

@end