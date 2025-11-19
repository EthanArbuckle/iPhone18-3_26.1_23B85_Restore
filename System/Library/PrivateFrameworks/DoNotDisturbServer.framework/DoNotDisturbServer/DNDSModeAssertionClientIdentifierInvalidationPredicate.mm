@interface DNDSModeAssertionClientIdentifierInvalidationPredicate
- (BOOL)evaluateWithObject:(id)a3 substitutionVariables:(id)a4;
- (BOOL)isEqual:(id)a3;
- (DNDSModeAssertionClientIdentifierInvalidationPredicate)initWithClientIdentifiers:(id)a3;
- (DNDSModeAssertionClientIdentifierInvalidationPredicate)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDSModeAssertionClientIdentifierInvalidationPredicate

- (DNDSModeAssertionClientIdentifierInvalidationPredicate)initWithClientIdentifiers:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DNDSModeAssertionClientIdentifierInvalidationPredicate;
  v5 = [(DNDSModeAssertionInvalidationPredicate *)&v9 _init];
  if (v5)
  {
    v6 = [v4 copy];
    clientIdentifiers = v5->_clientIdentifiers;
    v5->_clientIdentifiers = v6;
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(DNDSModeAssertionClientIdentifierInvalidationPredicate *)self clientIdentifiers];
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
      v6 = [(DNDSModeAssertionClientIdentifierInvalidationPredicate *)self clientIdentifiers];
      v7 = [(DNDSModeAssertionClientIdentifierInvalidationPredicate *)v5 clientIdentifiers];
      if (v6 == v7)
      {
        v12 = 1;
      }

      else
      {
        v8 = [(DNDSModeAssertionClientIdentifierInvalidationPredicate *)self clientIdentifiers];
        if (v8)
        {
          v9 = [(DNDSModeAssertionClientIdentifierInvalidationPredicate *)v5 clientIdentifiers];
          if (v9)
          {
            v10 = [(DNDSModeAssertionClientIdentifierInvalidationPredicate *)self clientIdentifiers];
            v11 = [(DNDSModeAssertionClientIdentifierInvalidationPredicate *)v5 clientIdentifiers];
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
  v5 = [(DNDSModeAssertionClientIdentifierInvalidationPredicate *)self clientIdentifiers];
  v6 = [v3 stringWithFormat:@"<%@: %p clientIdentifiers: %@>", v4, self, v5];;

  return v6;
}

- (BOOL)evaluateWithObject:(id)a3 substitutionVariables:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = DNDSModeAssertionClientIdentifierInvalidationPredicate;
  if ([(DNDSModeAssertionInvalidationPredicate *)&v13 evaluateWithObject:v6 substitutionVariables:a4])
  {
    v7 = v6;
    v8 = [(DNDSModeAssertionClientIdentifierInvalidationPredicate *)self clientIdentifiers];
    v9 = [v7 source];

    v10 = [v9 clientIdentifier];
    v11 = [v8 containsObject:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (DNDSModeAssertionClientIdentifierInvalidationPredicate)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"clientIdentifiers"];

  v9 = [(DNDSModeAssertionClientIdentifierInvalidationPredicate *)self initWithClientIdentifiers:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DNDSModeAssertionClientIdentifierInvalidationPredicate *)self clientIdentifiers];
  [v4 encodeObject:v5 forKey:@"clientIdentifiers"];
}

@end