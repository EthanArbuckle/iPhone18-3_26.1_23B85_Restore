@interface DNDModeAssertionInvalidationDetails
- (BOOL)isEqual:(id)equal;
- (DNDModeAssertionInvalidationDetails)initWithCoder:(id)coder;
- (id)_initWithDetails:(id)details;
- (id)_initWithIdentifier:(id)identifier;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDModeAssertionInvalidationDetails

- (id)_initWithDetails:(id)details
{
  identifier = [details identifier];
  v5 = [(DNDModeAssertionInvalidationDetails *)self _initWithIdentifier:identifier];

  return v5;
}

- (id)_initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = DNDModeAssertionInvalidationDetails;
  v5 = [(DNDModeAssertionInvalidationDetails *)&v10 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
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
  identifier = [(DNDModeAssertionInvalidationDetails *)self identifier];
  v3 = [identifier hash];

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
      identifier = [(DNDModeAssertionInvalidationDetails *)self identifier];
      identifier2 = [(DNDModeAssertionInvalidationDetails *)v5 identifier];
      if (identifier == identifier2)
      {
        v12 = 1;
      }

      else
      {
        identifier3 = [(DNDModeAssertionInvalidationDetails *)self identifier];
        if (identifier3)
        {
          identifier4 = [(DNDModeAssertionInvalidationDetails *)v5 identifier];
          if (identifier4)
          {
            identifier5 = [(DNDModeAssertionInvalidationDetails *)self identifier];
            identifier6 = [(DNDModeAssertionInvalidationDetails *)v5 identifier];
            v12 = [identifier5 isEqual:identifier6];
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
  identifier = [(DNDModeAssertionInvalidationDetails *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@: %p identifier: '%@'>", v4, self, identifier];;

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDMutableModeAssertionInvalidationDetails alloc];

  return [(DNDModeAssertionInvalidationDetails *)v4 _initWithDetails:self];
}

- (DNDModeAssertionInvalidationDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  v6 = [(DNDModeAssertionInvalidationDetails *)self _initWithIdentifier:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(DNDModeAssertionInvalidationDetails *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];
}

@end