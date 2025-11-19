@interface LNEntityValueType
+ (id)objectClassesForCoding;
- (BOOL)isEqual:(id)a3;
- (LNEntityValueType)initWithCoder:(id)a3;
- (LNEntityValueType)initWithIdentifier:(id)a3;
- (LNEntityValueType)initWithIdentifier:(id)a3 contentType:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNEntityValueType

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = LNEntityValueType;
  v3 = [(LNValueType *)&v7 hash];
  v4 = [(LNEntityValueType *)self identifier];
  v5 = [v4 hash];

  return v5 ^ v3;
}

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
    v14.super_class = LNEntityValueType;
    if ([(LNValueType *)&v14 isEqual:v6])
    {
      v7 = [(LNEntityValueType *)self identifier];
      v8 = [(LNEntityValueType *)v6 identifier];
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

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(LNEntityValueType *)self identifier];
  v4 = [v2 stringWithFormat:@"Entity<%@>", v3];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = LNEntityValueType;
  v4 = a3;
  [(LNValueType *)&v6 encodeWithCoder:v4];
  v5 = [(LNEntityValueType *)self identifier:v6.receiver];
  [v4 encodeObject:v5 forKey:@"identifier"];
}

- (LNEntityValueType)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];
  if (!v5)
  {
    if (![v4 containsValueForKey:@"typeName"])
    {
      v5 = 0;
      goto LABEL_7;
    }

    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"typeName"];
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  self = [(LNEntityValueType *)self initWithIdentifier:v5 contentType:v6];

  v5 = self;
LABEL_7:

  return v5;
}

- (LNEntityValueType)initWithIdentifier:(id)a3 contentType:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(LNEntityValueType *)self isMemberOfClass:objc_opt_class()])
  {
    v8 = +[LNSystemEntityValueType supportedValueTypesByEntityIdentifier];
    v9 = [v8 objectForKeyedSubscript:v6];

    if (v9)
    {
      goto LABEL_5;
    }
  }

  v12.receiver = self;
  v12.super_class = LNEntityValueType;
  v9 = [(LNValueType *)&v12 initWithContentType:v7];
  if (v9)
  {
    v10 = [v6 copy];
    self = *(v9 + 16);
    *(v9 + 16) = v10;
LABEL_5:
  }

  return v9;
}

- (LNEntityValueType)initWithIdentifier:(id)a3
{
  v4 = a3;
  if ([(LNEntityValueType *)self isMemberOfClass:objc_opt_class()])
  {
    v5 = +[LNSystemEntityValueType supportedValueTypesByEntityIdentifier];
    v6 = [v5 objectForKeyedSubscript:v4];

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
    v7 = [v4 copy];
    self = *(v6 + 16);
    *(v6 + 16) = v7;
LABEL_5:
  }

  return v6;
}

@end