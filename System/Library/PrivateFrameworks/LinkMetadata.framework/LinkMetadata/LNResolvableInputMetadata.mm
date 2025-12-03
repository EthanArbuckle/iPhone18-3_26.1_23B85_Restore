@interface LNResolvableInputMetadata
- (BOOL)isEqual:(id)equal;
- (LNResolvableInputMetadata)initWithCoder:(id)coder;
- (LNResolvableInputMetadata)initWithQueryType:(id)type;
- (LNResolvableInputMetadata)initWithValueType:(id)type;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNResolvableInputMetadata

- (id)description
{
  kind = [(LNResolvableInputMetadata *)self kind];
  if (kind)
  {
    if (kind != 1)
    {
      goto LABEL_6;
    }

    v5 = MEMORY[0x1E696AEC0];
    queryType = [(LNResolvableInputMetadata *)self queryType];
    v7 = [v5 stringWithFormat:@"Query:%@", queryType];
  }

  else
  {
    queryType = [(LNResolvableInputMetadata *)self valueType];
    v7 = [queryType description];
  }

  v2 = v7;

LABEL_6:

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        kind = [(LNResolvableInputMetadata *)self kind];
        if (kind != [(LNResolvableInputMetadata *)v6 kind])
        {
          LOBYTE(v13) = 0;
LABEL_24:

          goto LABEL_25;
        }

        queryType = [(LNResolvableInputMetadata *)self queryType];
        queryType2 = [(LNResolvableInputMetadata *)v6 queryType];
        v10 = queryType;
        v11 = queryType2;
        v12 = v11;
        if (v10 == v11)
        {
        }

        else
        {
          LOBYTE(v13) = 0;
          v14 = v11;
          v15 = v10;
          if (!v10 || !v11)
          {
LABEL_21:

LABEL_22:
            goto LABEL_23;
          }

          v13 = [(LNResolvableInputMetadata *)v10 isEqualToString:v11];

          if (!v13)
          {
            goto LABEL_22;
          }
        }

        valueType = [(LNResolvableInputMetadata *)self valueType];
        valueType2 = [(LNResolvableInputMetadata *)v6 valueType];
        v15 = valueType;
        v18 = valueType2;
        v14 = v18;
        if (v15 == v18)
        {
          LOBYTE(v13) = 1;
        }

        else
        {
          LOBYTE(v13) = 0;
          if (v15 && v18)
          {
            LOBYTE(v13) = [(LNResolvableInputMetadata *)v15 isEqual:v18];
          }
        }

        goto LABEL_21;
      }

      LOBYTE(v13) = 0;
      v10 = v6;
      v6 = 0;
    }

    else
    {
      v10 = 0;
      LOBYTE(v13) = 0;
    }

LABEL_23:

    goto LABEL_24;
  }

  LOBYTE(v13) = 1;
LABEL_25:

  return v13;
}

- (unint64_t)hash
{
  kind = [(LNResolvableInputMetadata *)self kind];
  queryType = [(LNResolvableInputMetadata *)self queryType];
  v5 = [queryType hash] ^ kind;
  valueType = [(LNResolvableInputMetadata *)self valueType];
  v7 = [valueType hash];

  return v5 ^ v7;
}

- (LNResolvableInputMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"kind"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"queryType"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"valueType"];

  if (v5 != 1)
  {
    if (v7)
    {
      v8 = [(LNResolvableInputMetadata *)self initWithValueType:v7];
      goto LABEL_6;
    }

LABEL_7:
    selfCopy = 0;
    goto LABEL_8;
  }

  if (!v6)
  {
    goto LABEL_7;
  }

  v8 = [(LNResolvableInputMetadata *)self initWithQueryType:v6];
LABEL_6:
  self = v8;
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[LNResolvableInputMetadata kind](self forKey:{"kind"), @"kind"}];
  queryType = [(LNResolvableInputMetadata *)self queryType];
  [coderCopy encodeObject:queryType forKey:@"queryType"];

  valueType = [(LNResolvableInputMetadata *)self valueType];
  [coderCopy encodeObject:valueType forKey:@"valueType"];
}

- (LNResolvableInputMetadata)initWithValueType:(id)type
{
  typeCopy = type;
  if (!typeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNResolvableInputMetadata.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"valueType"}];
  }

  v13.receiver = self;
  v13.super_class = LNResolvableInputMetadata;
  v6 = [(LNResolvableInputMetadata *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_kind = 0;
    v8 = [typeCopy copy];
    valueType = v7->_valueType;
    v7->_valueType = v8;

    v10 = v7;
  }

  return v7;
}

- (LNResolvableInputMetadata)initWithQueryType:(id)type
{
  typeCopy = type;
  if (!typeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNResolvableInputMetadata.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"queryType"}];
  }

  v13.receiver = self;
  v13.super_class = LNResolvableInputMetadata;
  v6 = [(LNResolvableInputMetadata *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_kind = 1;
    v8 = [typeCopy copy];
    queryType = v7->_queryType;
    v7->_queryType = v8;

    v10 = v7;
  }

  return v7;
}

@end