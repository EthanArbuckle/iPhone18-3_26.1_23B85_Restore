@interface LNAssistantDefinedSchemaValueType
+ (id)objectClassesForCoding;
- (BOOL)isEqual:(id)a3;
- (LNAssistantDefinedSchemaValueType)initWithCoder:(id)a3;
- (LNAssistantDefinedSchemaValueType)initWithIdentifier:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNAssistantDefinedSchemaValueType

+ (id)objectClassesForCoding
{
  v2 = MEMORY[0x1E695DEC8];
  v3 = objc_opt_class();

  return [v2 arrayWithObject:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
    goto LABEL_13;
  }

  v6 = v4;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v14.receiver = self;
    v14.super_class = LNAssistantDefinedSchemaValueType;
    if ([(LNValueType *)&v14 isEqual:v6])
    {
      v7 = [(LNAssistantDefinedSchemaValueType *)self identifier];
      v8 = [(LNAssistantDefinedSchemaValueType *)v6 identifier];
      v9 = v7;
      v10 = v8;
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
  v4 = [(LNAssistantDefinedSchemaValueType *)self identifier];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(LNAssistantDefinedSchemaValueType *)self identifier];
  v4 = [v2 stringWithFormat:@"Schema<%@>", v3];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = LNAssistantDefinedSchemaValueType;
  v4 = a3;
  [(LNValueType *)&v6 encodeWithCoder:v4];
  v5 = [(LNAssistantDefinedSchemaValueType *)self identifier:v6.receiver];
  [v4 encodeObject:v5 forKey:@"identifier"];
}

- (LNAssistantDefinedSchemaValueType)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  if (v5)
  {
    self = [(LNAssistantDefinedSchemaValueType *)self initWithIdentifier:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (LNAssistantDefinedSchemaValueType)initWithIdentifier:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = LNAssistantDefinedSchemaValueType;
  v5 = [(LNValueType *)&v10 initWithContentType:0];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = v5;
  }

  return v5;
}

@end