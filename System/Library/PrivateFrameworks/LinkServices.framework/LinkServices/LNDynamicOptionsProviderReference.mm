@interface LNDynamicOptionsProviderReference
- (BOOL)isEqual:(id)equal;
- (LNDynamicOptionsProviderReference)initWithCoder:(id)coder;
- (LNDynamicOptionsProviderReference)initWithParameterIdentifier:(id)identifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNDynamicOptionsProviderReference

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      parameterIdentifier = [(LNDynamicOptionsProviderReference *)self parameterIdentifier];
      parameterIdentifier2 = [(LNDynamicOptionsProviderReference *)v6 parameterIdentifier];
      v9 = parameterIdentifier;
      v10 = parameterIdentifier2;
      v11 = v10;
      if (v9 == v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0;
        if (v9 && v10)
        {
          v12 = [v9 isEqualToString:v10];
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

- (unint64_t)hash
{
  parameterIdentifier = [(LNDynamicOptionsProviderReference *)self parameterIdentifier];
  v3 = [parameterIdentifier hash];

  return v3;
}

- (LNDynamicOptionsProviderReference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterIdentifier"];

  if (v5)
  {
    self = [(LNDynamicOptionsProviderReference *)self initWithParameterIdentifier:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  parameterIdentifier = [(LNDynamicOptionsProviderReference *)self parameterIdentifier];
  [coderCopy encodeObject:parameterIdentifier forKey:@"parameterIdentifier"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  parameterIdentifier = [(LNDynamicOptionsProviderReference *)self parameterIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, parameterIdentifier: %@>", v5, self, parameterIdentifier];

  return v7;
}

- (LNDynamicOptionsProviderReference)initWithParameterIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNDynamicOptionsProviderReference.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"parameterIdentifier"}];
  }

  v12.receiver = self;
  v12.super_class = LNDynamicOptionsProviderReference;
  v6 = [(LNDynamicOptionsProviderReference *)&v12 init];
  if (v6)
  {
    v7 = [identifierCopy copy];
    parameterIdentifier = v6->_parameterIdentifier;
    v6->_parameterIdentifier = v7;

    v9 = v6;
  }

  return v6;
}

@end