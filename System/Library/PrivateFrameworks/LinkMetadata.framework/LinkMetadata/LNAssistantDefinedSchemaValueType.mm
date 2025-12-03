@interface LNAssistantDefinedSchemaValueType
+ (id)objectClassesForCoding;
- (BOOL)isEqual:(id)equal;
- (LNAssistantDefinedSchemaValueType)initWithCoder:(id)coder;
- (LNAssistantDefinedSchemaValueType)initWithIdentifier:(id)identifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNAssistantDefinedSchemaValueType

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
    v14.super_class = LNAssistantDefinedSchemaValueType;
    if ([(LNValueType *)&v14 isEqual:v6])
    {
      identifier = [(LNAssistantDefinedSchemaValueType *)self identifier];
      identifier2 = [(LNAssistantDefinedSchemaValueType *)v6 identifier];
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

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = LNAssistantDefinedSchemaValueType;
  v3 = [(LNValueType *)&v7 hash];
  identifier = [(LNAssistantDefinedSchemaValueType *)self identifier];
  v5 = [identifier hash];

  return v5 ^ v3;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  identifier = [(LNAssistantDefinedSchemaValueType *)self identifier];
  v4 = [v2 stringWithFormat:@"Schema<%@>", identifier];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = LNAssistantDefinedSchemaValueType;
  coderCopy = coder;
  [(LNValueType *)&v6 encodeWithCoder:coderCopy];
  v5 = [(LNAssistantDefinedSchemaValueType *)self identifier:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"identifier"];
}

- (LNAssistantDefinedSchemaValueType)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  if (v5)
  {
    self = [(LNAssistantDefinedSchemaValueType *)self initWithIdentifier:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (LNAssistantDefinedSchemaValueType)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = LNAssistantDefinedSchemaValueType;
  v5 = [(LNValueType *)&v10 initWithContentType:0];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = v5;
  }

  return v5;
}

@end