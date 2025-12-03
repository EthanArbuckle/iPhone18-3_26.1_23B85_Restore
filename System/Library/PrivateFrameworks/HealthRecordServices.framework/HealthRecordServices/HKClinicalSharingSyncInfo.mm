@interface HKClinicalSharingSyncInfo
- (BOOL)isEqual:(id)equal;
- (HKClinicalSharingSyncInfo)initWithCoder:(id)coder;
- (HKClinicalSharingSyncInfo)initWithStartDate:(id)date accountIdentifiers:(id)identifiers;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKClinicalSharingSyncInfo

- (HKClinicalSharingSyncInfo)initWithStartDate:(id)date accountIdentifiers:(id)identifiers
{
  dateCopy = date;
  identifiersCopy = identifiers;
  v14.receiver = self;
  v14.super_class = HKClinicalSharingSyncInfo;
  v8 = [(HKClinicalSharingSyncInfo *)&v14 init];
  if (v8)
  {
    v9 = [dateCopy copy];
    startDate = v8->_startDate;
    v8->_startDate = v9;

    v11 = [identifiersCopy copy];
    accountIdentifiers = v8->_accountIdentifiers;
    v8->_accountIdentifiers = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    v6 = equalCopy;
    objc_opt_class();
    v7 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSDate *)self->_startDate isEqualToDate:v6->_startDate]&& [(NSSet *)self->_accountIdentifiers isEqualToSet:v6->_accountIdentifiers];
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  startDate = self->_startDate;
  allObjects = [(NSSet *)self->_accountIdentifiers allObjects];
  v7 = [allObjects componentsJoinedByString:{@", "}];
  v8 = [v3 stringWithFormat:@"<%@:%p start: %@ accounts: [%@]>", v4, self, startDate, v7];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  startDate = self->_startDate;
  coderCopy = coder;
  [coderCopy encodeObject:startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_accountIdentifiers forKey:@"accoundIdentifiers"];
}

- (HKClinicalSharingSyncInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB98]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"accoundIdentifiers"];
    if (v9)
    {
      self = [(HKClinicalSharingSyncInfo *)self initWithStartDate:v5 accountIdentifiers:v9];
      selfCopy = self;
    }

    else
    {
      [coderCopy hrs_failWithCocoaValueNotFoundError];
      selfCopy = 0;
    }
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

@end