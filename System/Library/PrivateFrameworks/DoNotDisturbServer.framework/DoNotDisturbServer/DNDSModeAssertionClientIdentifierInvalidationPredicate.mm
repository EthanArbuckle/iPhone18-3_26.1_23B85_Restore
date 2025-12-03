@interface DNDSModeAssertionClientIdentifierInvalidationPredicate
- (BOOL)evaluateWithObject:(id)object substitutionVariables:(id)variables;
- (BOOL)isEqual:(id)equal;
- (DNDSModeAssertionClientIdentifierInvalidationPredicate)initWithClientIdentifiers:(id)identifiers;
- (DNDSModeAssertionClientIdentifierInvalidationPredicate)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDSModeAssertionClientIdentifierInvalidationPredicate

- (DNDSModeAssertionClientIdentifierInvalidationPredicate)initWithClientIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v9.receiver = self;
  v9.super_class = DNDSModeAssertionClientIdentifierInvalidationPredicate;
  _init = [(DNDSModeAssertionInvalidationPredicate *)&v9 _init];
  if (_init)
  {
    v6 = [identifiersCopy copy];
    clientIdentifiers = _init->_clientIdentifiers;
    _init->_clientIdentifiers = v6;
  }

  return _init;
}

- (unint64_t)hash
{
  clientIdentifiers = [(DNDSModeAssertionClientIdentifierInvalidationPredicate *)self clientIdentifiers];
  v3 = [clientIdentifiers hash];

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
      clientIdentifiers = [(DNDSModeAssertionClientIdentifierInvalidationPredicate *)self clientIdentifiers];
      clientIdentifiers2 = [(DNDSModeAssertionClientIdentifierInvalidationPredicate *)v5 clientIdentifiers];
      if (clientIdentifiers == clientIdentifiers2)
      {
        v12 = 1;
      }

      else
      {
        clientIdentifiers3 = [(DNDSModeAssertionClientIdentifierInvalidationPredicate *)self clientIdentifiers];
        if (clientIdentifiers3)
        {
          clientIdentifiers4 = [(DNDSModeAssertionClientIdentifierInvalidationPredicate *)v5 clientIdentifiers];
          if (clientIdentifiers4)
          {
            clientIdentifiers5 = [(DNDSModeAssertionClientIdentifierInvalidationPredicate *)self clientIdentifiers];
            clientIdentifiers6 = [(DNDSModeAssertionClientIdentifierInvalidationPredicate *)v5 clientIdentifiers];
            v12 = [clientIdentifiers5 isEqual:clientIdentifiers6];
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
  clientIdentifiers = [(DNDSModeAssertionClientIdentifierInvalidationPredicate *)self clientIdentifiers];
  v6 = [v3 stringWithFormat:@"<%@: %p clientIdentifiers: %@>", v4, self, clientIdentifiers];;

  return v6;
}

- (BOOL)evaluateWithObject:(id)object substitutionVariables:(id)variables
{
  objectCopy = object;
  v13.receiver = self;
  v13.super_class = DNDSModeAssertionClientIdentifierInvalidationPredicate;
  if ([(DNDSModeAssertionInvalidationPredicate *)&v13 evaluateWithObject:objectCopy substitutionVariables:variables])
  {
    v7 = objectCopy;
    clientIdentifiers = [(DNDSModeAssertionClientIdentifierInvalidationPredicate *)self clientIdentifiers];
    source = [v7 source];

    clientIdentifier = [source clientIdentifier];
    v11 = [clientIdentifiers containsObject:clientIdentifier];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (DNDSModeAssertionClientIdentifierInvalidationPredicate)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"clientIdentifiers"];

  v9 = [(DNDSModeAssertionClientIdentifierInvalidationPredicate *)self initWithClientIdentifiers:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientIdentifiers = [(DNDSModeAssertionClientIdentifierInvalidationPredicate *)self clientIdentifiers];
  [coderCopy encodeObject:clientIdentifiers forKey:@"clientIdentifiers"];
}

@end