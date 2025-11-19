@interface DNDModeAssertionInvalidationDetails
- (BOOL)isEqual:(id)a3;
- (DNDModeAssertionInvalidationDetails)initWithCoder:(id)a3;
- (id)_initWithDetails:(id)a3;
- (id)_initWithIdentifier:(id)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDModeAssertionInvalidationDetails

- (id)_initWithDetails:(id)a3
{
  v4 = [a3 identifier];
  v5 = [(DNDModeAssertionInvalidationDetails *)self _initWithIdentifier:v4];

  return v5;
}

- (id)_initWithIdentifier:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DNDModeAssertionInvalidationDetails;
  v5 = [(DNDModeAssertionInvalidationDetails *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_2833C9B78;
    }

    objc_storeStrong(&v5->_identifier, v8);
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(DNDModeAssertionInvalidationDetails *)self identifier];
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
      v6 = [(DNDModeAssertionInvalidationDetails *)self identifier];
      v7 = [(DNDModeAssertionInvalidationDetails *)v5 identifier];
      if (v6 == v7)
      {
        v12 = 1;
      }

      else
      {
        v8 = [(DNDModeAssertionInvalidationDetails *)self identifier];
        if (v8)
        {
          v9 = [(DNDModeAssertionInvalidationDetails *)v5 identifier];
          if (v9)
          {
            v10 = [(DNDModeAssertionInvalidationDetails *)self identifier];
            v11 = [(DNDModeAssertionInvalidationDetails *)v5 identifier];
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
  v5 = [(DNDModeAssertionInvalidationDetails *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@: %p identifier: '%@'>", v4, self, v5];;

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDMutableModeAssertionInvalidationDetails alloc];

  return [(DNDModeAssertionInvalidationDetails *)v4 _initWithDetails:self];
}

- (DNDModeAssertionInvalidationDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  v6 = [(DNDModeAssertionInvalidationDetails *)self _initWithIdentifier:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DNDModeAssertionInvalidationDetails *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];
}

@end