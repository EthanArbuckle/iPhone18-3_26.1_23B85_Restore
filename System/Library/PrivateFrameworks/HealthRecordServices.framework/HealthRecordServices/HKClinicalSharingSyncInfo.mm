@interface HKClinicalSharingSyncInfo
- (BOOL)isEqual:(id)a3;
- (HKClinicalSharingSyncInfo)initWithCoder:(id)a3;
- (HKClinicalSharingSyncInfo)initWithStartDate:(id)a3 accountIdentifiers:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKClinicalSharingSyncInfo

- (HKClinicalSharingSyncInfo)initWithStartDate:(id)a3 accountIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKClinicalSharingSyncInfo;
  v8 = [(HKClinicalSharingSyncInfo *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    startDate = v8->_startDate;
    v8->_startDate = v9;

    v11 = [v7 copy];
    accountIdentifiers = v8->_accountIdentifiers;
    v8->_accountIdentifiers = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    v6 = v4;
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
  v6 = [(NSSet *)self->_accountIdentifiers allObjects];
  v7 = [v6 componentsJoinedByString:{@", "}];
  v8 = [v3 stringWithFormat:@"<%@:%p start: %@ accounts: [%@]>", v4, self, startDate, v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  startDate = self->_startDate;
  v5 = a3;
  [v5 encodeObject:startDate forKey:@"startDate"];
  [v5 encodeObject:self->_accountIdentifiers forKey:@"accoundIdentifiers"];
}

- (HKClinicalSharingSyncInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB98]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"accoundIdentifiers"];
    if (v9)
    {
      self = [(HKClinicalSharingSyncInfo *)self initWithStartDate:v5 accountIdentifiers:v9];
      v10 = self;
    }

    else
    {
      [v4 hrs_failWithCocoaValueNotFoundError];
      v10 = 0;
    }
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v10 = 0;
  }

  return v10;
}

@end