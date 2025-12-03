@interface LNEntityValueType
+ (id)objectClassesForCoding;
- (BOOL)isEqual:(id)equal;
- (LNEntityValueType)initWithCoder:(id)coder;
- (LNEntityValueType)initWithIdentifier:(id)identifier;
- (LNEntityValueType)initWithIdentifier:(id)identifier contentType:(id)type;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNEntityValueType

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = LNEntityValueType;
  v3 = [(LNValueType *)&v7 hash];
  identifier = [(LNEntityValueType *)self identifier];
  v5 = [identifier hash];

  return v5 ^ v3;
}

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
    v14.super_class = LNEntityValueType;
    if ([(LNValueType *)&v14 isEqual:v6])
    {
      identifier = [(LNEntityValueType *)self identifier];
      identifier2 = [(LNEntityValueType *)v6 identifier];
      v9 = identifier;
      v10 = identifier2;
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

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  identifier = [(LNEntityValueType *)self identifier];
  v4 = [v2 stringWithFormat:@"Entity<%@>", identifier];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = LNEntityValueType;
  coderCopy = coder;
  [(LNValueType *)&v6 encodeWithCoder:coderCopy];
  v5 = [(LNEntityValueType *)self identifier:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"identifier"];
}

- (LNEntityValueType)initWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];
  if (!selfCopy)
  {
    if (![coderCopy containsValueForKey:@"typeName"])
    {
      selfCopy = 0;
      goto LABEL_7;
    }

    selfCopy = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"typeName"];
    if (!selfCopy)
    {
      goto LABEL_7;
    }
  }

  self = [(LNEntityValueType *)self initWithIdentifier:selfCopy contentType:v6];

  selfCopy = self;
LABEL_7:

  return selfCopy;
}

- (LNEntityValueType)initWithIdentifier:(id)identifier contentType:(id)type
{
  identifierCopy = identifier;
  typeCopy = type;
  if ([(LNEntityValueType *)self isMemberOfClass:objc_opt_class()])
  {
    v8 = +[LNSystemEntityValueType supportedValueTypesByEntityIdentifier];
    v9 = [v8 objectForKeyedSubscript:identifierCopy];

    if (v9)
    {
      goto LABEL_5;
    }
  }

  v12.receiver = self;
  v12.super_class = LNEntityValueType;
  v9 = [(LNValueType *)&v12 initWithContentType:typeCopy];
  if (v9)
  {
    v10 = [identifierCopy copy];
    self = *(v9 + 16);
    *(v9 + 16) = v10;
LABEL_5:
  }

  return v9;
}

- (LNEntityValueType)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(LNEntityValueType *)self isMemberOfClass:objc_opt_class()])
  {
    v5 = +[LNSystemEntityValueType supportedValueTypesByEntityIdentifier];
    v6 = [v5 objectForKeyedSubscript:identifierCopy];

    if (v6)
    {
      goto LABEL_5;
    }
  }

  v9.receiver = self;
  v9.super_class = LNEntityValueType;
  v6 = [(LNValueType *)&v9 initWithContentType:0];
  if (v6)
  {
    v7 = [identifierCopy copy];
    self = *(v6 + 16);
    *(v6 + 16) = v7;
LABEL_5:
  }

  return v6;
}

@end