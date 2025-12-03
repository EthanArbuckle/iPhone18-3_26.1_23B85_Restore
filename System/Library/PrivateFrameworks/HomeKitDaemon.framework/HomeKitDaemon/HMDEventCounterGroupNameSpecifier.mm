@interface HMDEventCounterGroupNameSpecifier
+ (id)specifierWithGroupName:(id)name;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToGroupNameSpecifier:(id)specifier;
- (HMDEventCounterGroupNameSpecifier)initWithCoder:(id)coder;
- (HMDEventCounterGroupNameSpecifier)initWithGroupName:(id)name;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDEventCounterGroupNameSpecifier

- (unint64_t)hash
{
  groupName = [(HMDEventCounterGroupNameSpecifier *)self groupName];
  v3 = [groupName hash];

  return v3;
}

- (NSString)description
{
  groupName = [(HMDEventCounterGroupNameSpecifier *)self groupName];
  v3 = [groupName description];

  return v3;
}

- (BOOL)isEqualToGroupNameSpecifier:(id)specifier
{
  specifierCopy = specifier;
  groupName = [(HMDEventCounterGroupNameSpecifier *)self groupName];
  groupName2 = [specifierCopy groupName];

  LOBYTE(specifierCopy) = [groupName isEqualToString:groupName2];
  return specifierCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else if ([(HMDEventCounterGroupNameSpecifier *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = [(HMDEventCounterGroupNameSpecifier *)self isEqualToGroupNameSpecifier:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  groupName = [(HMDEventCounterGroupNameSpecifier *)self groupName];
  [coderCopy encodeObject:groupName forKey:@"groupName"];
}

- (HMDEventCounterGroupNameSpecifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HMDEventCounterGroupNameSpecifier;
  v5 = [(HMDEventCounterGroupNameSpecifier *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupName"];
    groupName = v5->_groupName;
    v5->_groupName = v6;
  }

  return v5;
}

- (HMDEventCounterGroupNameSpecifier)initWithGroupName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = HMDEventCounterGroupNameSpecifier;
  v6 = [(HMDEventCounterGroupNameSpecifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_groupName, name);
  }

  return v7;
}

+ (id)specifierWithGroupName:(id)name
{
  nameCopy = name;
  v4 = [[HMDEventCounterGroupNameSpecifier alloc] initWithGroupName:nameCopy];

  return v4;
}

@end