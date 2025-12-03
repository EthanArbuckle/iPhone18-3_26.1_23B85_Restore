@interface _HMDAppleAccountIdentifier
+ (id)namespace;
- (BOOL)isAuthenticated;
- (BOOL)isEqual:(id)equal;
- (_HMDAppleAccountIdentifier)initWithCoder:(id)coder;
- (_HMDAppleAccountIdentifier)initWithIdentifier:(id)identifier;
- (_HMDAppleAccountIdentifier)initWithIdentifierString:(id)string;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HMDAppleAccountIdentifier

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = _HMDAppleAccountIdentifier;
  [(_HMDAccountIdentifier *)&v5 encodeWithCoder:coderCopy];
  os_unfair_lock_lock_with_options();
  [coderCopy encodeObject:self->_identifierString forKey:@"HM.string"];
  os_unfair_lock_unlock(&self->_lock);
}

- (_HMDAppleAccountIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _HMDAppleAccountIdentifier;
  v5 = [(_HMDAccountIdentifier *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.string"];
    identifierString = v5->_identifierString;
    v5->_identifierString = v6;
  }

  return v5;
}

- (BOOL)isAuthenticated
{
  identifierString = [(_HMDAppleAccountIdentifier *)self identifierString];
  v3 = +[HMDAppleAccountManager sharedManager];
  accountContext = [v3 accountContext];
  identifier = [accountContext identifier];
  v6 = [identifierString isEqualToString:identifier];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      identifierString = [(_HMDAppleAccountIdentifier *)self identifierString];
      identifierString2 = [(_HMDAppleAccountIdentifier *)v6 identifierString];
      v9 = [identifierString isEqualToString:identifierString2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (_HMDAppleAccountIdentifier)initWithIdentifierString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v5 = objc_alloc(MEMORY[0x277CCAD78]);
    v6 = +[_HMDAppleAccountIdentifier namespace];
    v7 = [stringCopy dataUsingEncoding:4];
    v8 = [v5 initWithNamespace:v6 data:v7];

    v14.receiver = self;
    v14.super_class = _HMDAppleAccountIdentifier;
    v9 = [(_HMDAccountIdentifier *)&v14 initWithIdentifier:v8];
    if (v9)
    {
      v10 = [stringCopy copy];
      identifierString = v9->_identifierString;
      v9->_identifierString = v10;
    }

    self = v9;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_HMDAppleAccountIdentifier)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

+ (id)namespace
{
  if (namespace_onceToken != -1)
  {
    dispatch_once(&namespace_onceToken, &__block_literal_global_17688);
  }

  v3 = namespace_namespace;

  return v3;
}

@end