@interface LNQueryRequestDefaultQueryTarget
- (BOOL)isEqual:(id)equal;
- (LNQueryRequestDefaultQueryTarget)initWithCoder:(id)coder;
- (LNQueryRequestDefaultQueryTarget)initWithEntityMetadata:(id)metadata;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNQueryRequestDefaultQueryTarget

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
      entityMetadata = [(LNQueryRequestDefaultQueryTarget *)self entityMetadata];
      entityMetadata2 = [(LNQueryRequestDefaultQueryTarget *)v6 entityMetadata];
      v9 = entityMetadata;
      v10 = entityMetadata2;
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

- (LNQueryRequestDefaultQueryTarget)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entityMetadata"];

  v6 = [(LNQueryRequestDefaultQueryTarget *)self initWithEntityMetadata:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  entityMetadata = [(LNQueryRequestDefaultQueryTarget *)self entityMetadata];
  [coderCopy encodeObject:entityMetadata forKey:@"entityMetadata"];
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  identifier = [(LNEntityMetadata *)self->_entityMetadata identifier];
  v4 = [v2 stringWithFormat:@"Entity <%@>", identifier];

  return v4;
}

- (LNQueryRequestDefaultQueryTarget)initWithEntityMetadata:(id)metadata
{
  metadataCopy = metadata;
  v10.receiver = self;
  v10.super_class = LNQueryRequestDefaultQueryTarget;
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