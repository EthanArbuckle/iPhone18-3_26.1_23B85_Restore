@interface DNDSModeAssertionDateInvalidationPredicate
- (BOOL)evaluateWithObject:(id)object substitutionVariables:(id)variables;
- (BOOL)isEqual:(id)equal;
- (DNDSModeAssertionDateInvalidationPredicate)initWithCoder:(id)coder;
- (DNDSModeAssertionDateInvalidationPredicate)initWithDate:(id)date;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDSModeAssertionDateInvalidationPredicate

- (DNDSModeAssertionDateInvalidationPredicate)initWithDate:(id)date
{
  dateCopy = date;
  v9.receiver = self;
  v9.super_class = DNDSModeAssertionDateInvalidationPredicate;
  _init = [(DNDSModeAssertionInvalidationPredicate *)&v9 _init];
  if (_init)
  {
    v6 = [dateCopy copy];
    date = _init->_date;
    _init->_date = v6;
  }

  return _init;
}

- (unint64_t)hash
{
  date = [(DNDSModeAssertionDateInvalidationPredicate *)self date];
  v3 = [date hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      date = [(DNDSModeAssertionDateInvalidationPredicate *)self date];
      date2 = [(DNDSModeAssertionDateInvalidationPredicate *)v5 date];
      if (date == date2)
      {
        v12 = 1;
      }

      else
      {
        date3 = [(DNDSModeAssertionDateInvalidationPredicate *)self date];
        if (date3)
        {
          date4 = [(DNDSModeAssertionDateInvalidationPredicate *)v5 date];
          if (date4)
          {
            date5 = [(DNDSModeAssertionDateInvalidationPredicate *)self date];
            date6 = [(DNDSModeAssertionDateInvalidationPredicate *)v5 date];
            v12 = [date5 isEqual:date6];
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
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  date = [(DNDSModeAssertionDateInvalidationPredicate *)self date];
  v6 = [v3 stringWithFormat:@"<%@: %p date: %@>", v4, self, date];;

  return v6;
}

- (BOOL)evaluateWithObject:(id)object substitutionVariables:(id)variables
{
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = DNDSModeAssertionDateInvalidationPredicate;
  if ([(DNDSModeAssertionInvalidationPredicate *)&v11 evaluateWithObject:objectCopy substitutionVariables:variables])
  {
    startDate = [objectCopy startDate];
    date = [(DNDSModeAssertionDateInvalidationPredicate *)self date];
    v9 = [startDate compare:date] == -1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (DNDSModeAssertionDateInvalidationPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];

  v6 = [(DNDSModeAssertionDateInvalidationPredicate *)self initWithDate:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  date = [(DNDSModeAssertionDateInvalidationPredicate *)self date];
  [coderCopy encodeObject:date forKey:@"date"];
}

@end