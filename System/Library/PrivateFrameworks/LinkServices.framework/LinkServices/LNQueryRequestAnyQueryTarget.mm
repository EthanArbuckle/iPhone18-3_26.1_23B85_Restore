@interface LNQueryRequestAnyQueryTarget
- (BOOL)isEqual:(id)equal;
- (LNQueryRequestAnyQueryTarget)initWithCoder:(id)coder;
- (LNQueryRequestAnyQueryTarget)initWithQueryMetadata:(id)metadata;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNQueryRequestAnyQueryTarget

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
      queryMetadata = [(LNQueryRequestAnyQueryTarget *)self queryMetadata];
      queryMetadata2 = [(LNQueryRequestAnyQueryTarget *)v6 queryMetadata];
      v9 = queryMetadata;
      v10 = queryMetadata2;
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
          v12 = [v9 isEqual:v10];
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

- (LNQueryRequestAnyQueryTarget)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"queryMetadata"];

  v6 = [(LNQueryRequestAnyQueryTarget *)self initWithQueryMetadata:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  queryMetadata = [(LNQueryRequestAnyQueryTarget *)self queryMetadata];
  [coderCopy encodeObject:queryMetadata forKey:@"queryMetadata"];
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  identifier = [(LNQueryMetadata *)self->_queryMetadata identifier];
  v4 = [v2 stringWithFormat:@"Query <%@>", identifier];

  return v4;
}

- (LNQueryRequestAnyQueryTarget)initWithQueryMetadata:(id)metadata
{
  metadataCopy = metadata;
  v10.receiver = self;
  v10.super_class = LNQueryRequestAnyQueryTarget;
  _init = [(LNQueryRequestTargetBase *)&v10 _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, metadata);
    v8 = v7;
  }

  return v7;
}

@end