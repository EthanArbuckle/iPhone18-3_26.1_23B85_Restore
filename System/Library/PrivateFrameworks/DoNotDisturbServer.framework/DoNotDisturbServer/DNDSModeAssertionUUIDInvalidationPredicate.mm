@interface DNDSModeAssertionUUIDInvalidationPredicate
- (BOOL)evaluateWithObject:(id)object substitutionVariables:(id)variables;
- (BOOL)isEqual:(id)equal;
- (DNDSModeAssertionUUIDInvalidationPredicate)initWithCoder:(id)coder;
- (DNDSModeAssertionUUIDInvalidationPredicate)initWithUUIDs:(id)ds;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDSModeAssertionUUIDInvalidationPredicate

- (DNDSModeAssertionUUIDInvalidationPredicate)initWithUUIDs:(id)ds
{
  dsCopy = ds;
  v9.receiver = self;
  v9.super_class = DNDSModeAssertionUUIDInvalidationPredicate;
  _init = [(DNDSModeAssertionInvalidationPredicate *)&v9 _init];
  if (_init)
  {
    v6 = [dsCopy copy];
    UUIDs = _init->_UUIDs;
    _init->_UUIDs = v6;
  }

  return _init;
}

- (unint64_t)hash
{
  uUIDs = [(DNDSModeAssertionUUIDInvalidationPredicate *)self UUIDs];
  v3 = [uUIDs hash];

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
      uUIDs = [(DNDSModeAssertionUUIDInvalidationPredicate *)self UUIDs];
      uUIDs2 = [(DNDSModeAssertionUUIDInvalidationPredicate *)v5 UUIDs];
      if (uUIDs == uUIDs2)
      {
        v12 = 1;
      }

      else
      {
        uUIDs3 = [(DNDSModeAssertionUUIDInvalidationPredicate *)self UUIDs];
        if (uUIDs3)
        {
          uUIDs4 = [(DNDSModeAssertionUUIDInvalidationPredicate *)v5 UUIDs];
          if (uUIDs4)
          {
            uUIDs5 = [(DNDSModeAssertionUUIDInvalidationPredicate *)self UUIDs];
            uUIDs6 = [(DNDSModeAssertionUUIDInvalidationPredicate *)v5 UUIDs];
            v12 = [uUIDs5 isEqual:uUIDs6];
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
  uUIDs = [(DNDSModeAssertionUUIDInvalidationPredicate *)self UUIDs];
  v6 = [v3 stringWithFormat:@"<%@: %p UUIDs: %@>", v4, self, uUIDs];;

  return v6;
}

- (BOOL)evaluateWithObject:(id)object substitutionVariables:(id)variables
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = DNDSModeAssertionUUIDInvalidationPredicate;
  if ([(DNDSModeAssertionInvalidationPredicate *)&v12 evaluateWithObject:objectCopy substitutionVariables:variables])
  {
    v7 = objectCopy;
    uUIDs = [(DNDSModeAssertionUUIDInvalidationPredicate *)self UUIDs];
    uUID = [v7 UUID];

    v10 = [uUIDs containsObject:uUID];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (DNDSModeAssertionUUIDInvalidationPredicate)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"UUIDs"];

  v9 = [(DNDSModeAssertionUUIDInvalidationPredicate *)self initWithUUIDs:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uUIDs = [(DNDSModeAssertionUUIDInvalidationPredicate *)self UUIDs];
  [coderCopy encodeObject:uUIDs forKey:@"UUIDs"];
}

@end