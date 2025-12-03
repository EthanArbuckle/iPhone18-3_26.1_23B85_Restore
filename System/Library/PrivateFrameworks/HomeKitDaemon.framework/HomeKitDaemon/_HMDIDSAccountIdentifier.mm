@interface _HMDIDSAccountIdentifier
+ (id)namespace;
- (BOOL)isEqual:(id)equal;
- (_HMDIDSAccountIdentifier)initWithCoder:(id)coder;
- (_HMDIDSAccountIdentifier)initWithIdentifier:(id)identifier;
- (_HMDIDSAccountIdentifier)initWithIdentifierString:(id)string;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HMDIDSAccountIdentifier

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _HMDIDSAccountIdentifier;
  coderCopy = coder;
  [(_HMDAccountIdentifier *)&v6 encodeWithCoder:coderCopy];
  v5 = [(_HMDIDSAccountIdentifier *)self identifierString:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"HM.string"];
}

- (_HMDIDSAccountIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _HMDIDSAccountIdentifier;
  v5 = [(_HMDAccountIdentifier *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.string"];
    identifierString = v5->_identifierString;
    v5->_identifierString = v6;
  }

  return v5;
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
      identifierString = [(_HMDIDSAccountIdentifier *)self identifierString];
      identifierString2 = [(_HMDIDSAccountIdentifier *)v6 identifierString];
      v9 = [identifierString isEqualToString:identifierString2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (_HMDIDSAccountIdentifier)initWithIdentifierString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v5 = objc_alloc(MEMORY[0x277CCAD78]);
    v6 = +[_HMDIDSAccountIdentifier namespace];
    v7 = [stringCopy dataUsingEncoding:4];
    v8 = [v5 initWithNamespace:v6 data:v7];

    v14.receiver = self;
    v14.super_class = _HMDIDSAccountIdentifier;
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

- (_HMDIDSAccountIdentifier)initWithIdentifier:(id)identifier
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
  if (namespace_onceToken_184 != -1)
  {
    dispatch_once(&namespace_onceToken_184, &__block_literal_global_186);
  }

  v3 = namespace_namespace_183;

  return v3;
}

@end