@interface _HMDAccountIdentifier
- (BOOL)isEqual:(id)equal;
- (NSString)kind;
- (_HMDAccountIdentifier)init;
- (_HMDAccountIdentifier)initWithCoder:(id)coder;
- (_HMDAccountIdentifier)initWithIdentifier:(id)identifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HMDAccountIdentifier

- (unint64_t)hash
{
  identifier = [(_HMDAccountIdentifier *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(_HMDAccountIdentifier *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"HM.identifier"];
}

- (_HMDAccountIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _HMDAccountIdentifier;
  v5 = [(_HMDAccountIdentifier *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (NSString)kind
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
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
      identifier = [(_HMDAccountIdentifier *)self identifier];
      identifier2 = [(_HMDAccountIdentifier *)v6 identifier];
      v9 = [identifier hmf_isEqualToUUID:identifier2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (_HMDAccountIdentifier)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v10.receiver = self;
    v10.super_class = _HMDAccountIdentifier;
    v5 = [(_HMDAccountIdentifier *)&v10 init];
    if (v5)
    {
      v6 = [identifierCopy copy];
      identifier = v5->_identifier;
      v5->_identifier = v6;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_HMDAccountIdentifier)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end