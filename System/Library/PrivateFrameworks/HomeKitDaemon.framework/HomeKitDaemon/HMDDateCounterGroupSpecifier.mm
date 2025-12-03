@interface HMDDateCounterGroupSpecifier
+ (id)specifierWithGroupName:(id)name date:(id)date;
- (BOOL)isEqual:(id)equal;
- (HMDDateCounterGroupSpecifier)initWithCoder:(id)coder;
- (HMDDateCounterGroupSpecifier)initWithGroupName:(id)name date:(id)date;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDDateCounterGroupSpecifier

- (unint64_t)hash
{
  groupName = [(HMDEventCounterGroupNameSpecifier *)self groupName];
  v4 = [groupName hash];
  date = [(HMDDateCounterGroupSpecifier *)self date];
  v6 = [date hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  groupName = [(HMDEventCounterGroupNameSpecifier *)self groupName];
  date = [(HMDDateCounterGroupSpecifier *)self date];
  v6 = [v3 stringWithFormat:@"%@/%@", groupName, date];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else if ([(HMDDateCounterGroupSpecifier *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    groupName = [(HMDEventCounterGroupNameSpecifier *)self groupName];
    groupName2 = [(HMDEventCounterGroupNameSpecifier *)v5 groupName];
    if ([groupName isEqualToString:groupName2])
    {
      date = [(HMDDateCounterGroupSpecifier *)self date];
      date2 = [(HMDDateCounterGroupSpecifier *)v5 date];
      v10 = [date isEqualToDate:date2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HMDDateCounterGroupSpecifier;
  coderCopy = coder;
  [(HMDEventCounterGroupNameSpecifier *)&v6 encodeWithCoder:coderCopy];
  v5 = [(HMDDateCounterGroupSpecifier *)self date:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"date"];
}

- (HMDDateCounterGroupSpecifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HMDDateCounterGroupSpecifier;
  v5 = [(HMDEventCounterGroupNameSpecifier *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v6;
  }

  return v5;
}

- (HMDDateCounterGroupSpecifier)initWithGroupName:(id)name date:(id)date
{
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = HMDDateCounterGroupSpecifier;
  v8 = [(HMDEventCounterGroupNameSpecifier *)&v11 initWithGroupName:name];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_date, date);
  }

  return v9;
}

+ (id)specifierWithGroupName:(id)name date:(id)date
{
  dateCopy = date;
  nameCopy = name;
  v7 = [[HMDDateCounterGroupSpecifier alloc] initWithGroupName:nameCopy date:dateCopy];

  return v7;
}

@end