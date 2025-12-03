@interface LNLinkEnumerationValueType
+ (id)objectClassesForCoding;
- (BOOL)isEqual:(id)equal;
- (LNLinkEnumerationValueType)initWithCoder:(id)coder;
- (LNLinkEnumerationValueType)initWithEnumerationIdentifier:(id)identifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNLinkEnumerationValueType

+ (id)objectClassesForCoding
{
  v2 = MEMORY[0x1E695DEC8];
  v3 = objc_opt_class();

  return [v2 arrayWithObject:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
    goto LABEL_13;
  }

  v6 = equalCopy;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v14.receiver = self;
    v14.super_class = LNLinkEnumerationValueType;
    if ([(LNValueType *)&v14 isEqual:v6])
    {
      enumerationIdentifier = [(LNLinkEnumerationValueType *)self enumerationIdentifier];
      enumerationIdentifier2 = [(LNLinkEnumerationValueType *)v6 enumerationIdentifier];
      v9 = enumerationIdentifier;
      v10 = enumerationIdentifier2;
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

      goto LABEL_11;
    }
  }

  else
  {

    v6 = 0;
  }

  v12 = 0;
LABEL_11:

LABEL_13:
  return v12;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = LNLinkEnumerationValueType;
  v3 = [(LNValueType *)&v7 hash];
  enumerationIdentifier = [(LNLinkEnumerationValueType *)self enumerationIdentifier];
  v5 = [enumerationIdentifier hash];

  return v5 ^ v3;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = LNLinkEnumerationValueType;
  coderCopy = coder;
  [(LNValueType *)&v6 encodeWithCoder:coderCopy];
  v5 = [(LNLinkEnumerationValueType *)self enumerationIdentifier:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"enumerationIdentifier"];
}

- (LNLinkEnumerationValueType)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enumerationIdentifier"];

  v6 = [(LNLinkEnumerationValueType *)self initWithEnumerationIdentifier:v5];
  return v6;
}

- (LNLinkEnumerationValueType)initWithEnumerationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNLinkEnumerationValueType.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"enumerationIdentifier"}];
  }

  v12.receiver = self;
  v12.super_class = LNLinkEnumerationValueType;
  v6 = [(LNValueType *)&v12 initWithContentType:0];
  if (v6)
  {
    v7 = [identifierCopy copy];
    enumerationIdentifier = v6->_enumerationIdentifier;
    v6->_enumerationIdentifier = v7;

    v9 = v6;
  }

  return v6;
}

@end