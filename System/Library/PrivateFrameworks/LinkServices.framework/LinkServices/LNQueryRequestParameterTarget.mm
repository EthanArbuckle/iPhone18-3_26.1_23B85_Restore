@interface LNQueryRequestParameterTarget
- (BOOL)isEqual:(id)equal;
- (LNQueryRequestParameterTarget)initWithActionMetadata:(id)metadata parameterIdentifier:(id)identifier;
- (LNQueryRequestParameterTarget)initWithActionMetadata:(id)metadata parameterIndex:(int64_t)index;
- (LNQueryRequestParameterTarget)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNQueryRequestParameterTarget

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_20:

      goto LABEL_21;
    }

    actionMetadata = [(LNQueryRequestParameterTarget *)self actionMetadata];
    actionMetadata2 = [(LNQueryRequestParameterTarget *)v6 actionMetadata];
    v9 = actionMetadata;
    v10 = actionMetadata2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v12 = [v9 isEqual:v10];

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    parameterIdentifier = [(LNQueryRequestParameterTarget *)self parameterIdentifier];
    parameterIdentifier2 = [(LNQueryRequestParameterTarget *)v6 parameterIdentifier];
    v14 = parameterIdentifier;
    v17 = parameterIdentifier2;
    v13 = v17;
    if (v14 == v17)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v14 && v17)
      {
        LOBYTE(v12) = [v14 isEqualToString:v17];
      }
    }

    goto LABEL_18;
  }

  LOBYTE(v12) = 1;
LABEL_21:

  return v12;
}

- (LNQueryRequestParameterTarget)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionMetadata"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterIdentifier"];

  v7 = [(LNQueryRequestParameterTarget *)self initWithActionMetadata:v5 parameterIdentifier:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  actionMetadata = [(LNQueryRequestParameterTarget *)self actionMetadata];
  [coderCopy encodeObject:actionMetadata forKey:@"actionMetadata"];

  parameterIdentifier = [(LNQueryRequestParameterTarget *)self parameterIdentifier];
  [coderCopy encodeObject:parameterIdentifier forKey:@"parameterIdentifier"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  actionMetadata = [(LNQueryRequestParameterTarget *)self actionMetadata];
  identifier = [actionMetadata identifier];
  parameterIdentifier = [(LNQueryRequestParameterTarget *)self parameterIdentifier];
  v7 = [v3 stringWithFormat:@"Parameter <%@:%@>", identifier, parameterIdentifier];

  return v7;
}

- (LNQueryRequestParameterTarget)initWithActionMetadata:(id)metadata parameterIdentifier:(id)identifier
{
  metadataCopy = metadata;
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = LNQueryRequestParameterTarget;
  _init = [(LNQueryRequestTargetBase *)&v13 _init];
  v10 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, metadata);
    objc_storeStrong(&v10->_parameterIdentifier, identifier);
    v11 = v10;
  }

  return v10;
}

- (LNQueryRequestParameterTarget)initWithActionMetadata:(id)metadata parameterIndex:(int64_t)index
{
  actionMetadata = self->_actionMetadata;
  parameters = [metadata parameters];
  v8 = [parameters objectAtIndex:index];
  name = [v8 name];
  v10 = [(LNQueryRequestParameterTarget *)self initWithActionMetadata:actionMetadata parameterIdentifier:name];

  return v10;
}

@end