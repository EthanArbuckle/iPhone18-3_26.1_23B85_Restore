@interface DNDSModeAssertionDateInvalidationPredicate
- (BOOL)evaluateWithObject:(id)a3 substitutionVariables:(id)a4;
- (BOOL)isEqual:(id)a3;
- (DNDSModeAssertionDateInvalidationPredicate)initWithCoder:(id)a3;
- (DNDSModeAssertionDateInvalidationPredicate)initWithDate:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDSModeAssertionDateInvalidationPredicate

- (DNDSModeAssertionDateInvalidationPredicate)initWithDate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DNDSModeAssertionDateInvalidationPredicate;
  v5 = [(DNDSModeAssertionInvalidationPredicate *)&v9 _init];
  if (v5)
  {
    v6 = [v4 copy];
    date = v5->_date;
    v5->_date = v6;
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(DNDSModeAssertionDateInvalidationPredicate *)self date];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DNDSModeAssertionDateInvalidationPredicate *)self date];
      v7 = [(DNDSModeAssertionDateInvalidationPredicate *)v5 date];
      if (v6 == v7)
      {
        v12 = 1;
      }

      else
      {
        v8 = [(DNDSModeAssertionDateInvalidationPredicate *)self date];
        if (v8)
        {
          v9 = [(DNDSModeAssertionDateInvalidationPredicate *)v5 date];
          if (v9)
          {
            v10 = [(DNDSModeAssertionDateInvalidationPredicate *)self date];
            v11 = [(DNDSModeAssertionDateInvalidationPredicate *)v5 date];
            v12 = [v10 isEqual:v11];
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
  v5 = [(DNDSModeAssertionDateInvalidationPredicate *)self date];
  v6 = [v3 stringWithFormat:@"<%@: %p date: %@>", v4, self, v5];;

  return v6;
}

- (BOOL)evaluateWithObject:(id)a3 substitutionVariables:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = DNDSModeAssertionDateInvalidationPredicate;
  if ([(DNDSModeAssertionInvalidationPredicate *)&v11 evaluateWithObject:v6 substitutionVariables:a4])
  {
    v7 = [v6 startDate];
    v8 = [(DNDSModeAssertionDateInvalidationPredicate *)self date];
    v9 = [v7 compare:v8] == -1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (DNDSModeAssertionDateInvalidationPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];

  v6 = [(DNDSModeAssertionDateInvalidationPredicate *)self initWithDate:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DNDSModeAssertionDateInvalidationPredicate *)self date];
  [v4 encodeObject:v5 forKey:@"date"];
}

@end