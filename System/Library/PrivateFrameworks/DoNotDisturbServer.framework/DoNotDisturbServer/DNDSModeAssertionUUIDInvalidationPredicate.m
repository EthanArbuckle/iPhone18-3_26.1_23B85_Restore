@interface DNDSModeAssertionUUIDInvalidationPredicate
- (BOOL)evaluateWithObject:(id)a3 substitutionVariables:(id)a4;
- (BOOL)isEqual:(id)a3;
- (DNDSModeAssertionUUIDInvalidationPredicate)initWithCoder:(id)a3;
- (DNDSModeAssertionUUIDInvalidationPredicate)initWithUUIDs:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDSModeAssertionUUIDInvalidationPredicate

- (DNDSModeAssertionUUIDInvalidationPredicate)initWithUUIDs:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DNDSModeAssertionUUIDInvalidationPredicate;
  v5 = [(DNDSModeAssertionInvalidationPredicate *)&v9 _init];
  if (v5)
  {
    v6 = [v4 copy];
    UUIDs = v5->_UUIDs;
    v5->_UUIDs = v6;
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(DNDSModeAssertionUUIDInvalidationPredicate *)self UUIDs];
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
      v6 = [(DNDSModeAssertionUUIDInvalidationPredicate *)self UUIDs];
      v7 = [(DNDSModeAssertionUUIDInvalidationPredicate *)v5 UUIDs];
      if (v6 == v7)
      {
        v12 = 1;
      }

      else
      {
        v8 = [(DNDSModeAssertionUUIDInvalidationPredicate *)self UUIDs];
        if (v8)
        {
          v9 = [(DNDSModeAssertionUUIDInvalidationPredicate *)v5 UUIDs];
          if (v9)
          {
            v10 = [(DNDSModeAssertionUUIDInvalidationPredicate *)self UUIDs];
            v11 = [(DNDSModeAssertionUUIDInvalidationPredicate *)v5 UUIDs];
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
  v5 = [(DNDSModeAssertionUUIDInvalidationPredicate *)self UUIDs];
  v6 = [v3 stringWithFormat:@"<%@: %p UUIDs: %@>", v4, self, v5];;

  return v6;
}

- (BOOL)evaluateWithObject:(id)a3 substitutionVariables:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = DNDSModeAssertionUUIDInvalidationPredicate;
  if ([(DNDSModeAssertionInvalidationPredicate *)&v12 evaluateWithObject:v6 substitutionVariables:a4])
  {
    v7 = v6;
    v8 = [(DNDSModeAssertionUUIDInvalidationPredicate *)self UUIDs];
    v9 = [v7 UUID];

    v10 = [v8 containsObject:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (DNDSModeAssertionUUIDInvalidationPredicate)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"UUIDs"];

  v9 = [(DNDSModeAssertionUUIDInvalidationPredicate *)self initWithUUIDs:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DNDSModeAssertionUUIDInvalidationPredicate *)self UUIDs];
  [v4 encodeObject:v5 forKey:@"UUIDs"];
}

@end