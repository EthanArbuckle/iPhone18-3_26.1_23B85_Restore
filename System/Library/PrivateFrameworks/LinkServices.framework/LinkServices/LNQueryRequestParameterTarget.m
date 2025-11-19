@interface LNQueryRequestParameterTarget
- (BOOL)isEqual:(id)a3;
- (LNQueryRequestParameterTarget)initWithActionMetadata:(id)a3 parameterIdentifier:(id)a4;
- (LNQueryRequestParameterTarget)initWithActionMetadata:(id)a3 parameterIndex:(int64_t)a4;
- (LNQueryRequestParameterTarget)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNQueryRequestParameterTarget

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_20:

      goto LABEL_21;
    }

    v7 = [(LNQueryRequestParameterTarget *)self actionMetadata];
    v8 = [(LNQueryRequestParameterTarget *)v6 actionMetadata];
    v9 = v7;
    v10 = v8;
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

    v15 = [(LNQueryRequestParameterTarget *)self parameterIdentifier];
    v16 = [(LNQueryRequestParameterTarget *)v6 parameterIdentifier];
    v14 = v15;
    v17 = v16;
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

- (LNQueryRequestParameterTarget)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionMetadata"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameterIdentifier"];

  v7 = [(LNQueryRequestParameterTarget *)self initWithActionMetadata:v5 parameterIdentifier:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNQueryRequestParameterTarget *)self actionMetadata];
  [v4 encodeObject:v5 forKey:@"actionMetadata"];

  v6 = [(LNQueryRequestParameterTarget *)self parameterIdentifier];
  [v4 encodeObject:v6 forKey:@"parameterIdentifier"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(LNQueryRequestParameterTarget *)self actionMetadata];
  v5 = [v4 identifier];
  v6 = [(LNQueryRequestParameterTarget *)self parameterIdentifier];
  v7 = [v3 stringWithFormat:@"Parameter <%@:%@>", v5, v6];

  return v7;
}

- (LNQueryRequestParameterTarget)initWithActionMetadata:(id)a3 parameterIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = LNQueryRequestParameterTarget;
  v9 = [(LNQueryRequestTargetBase *)&v13 _init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 1, a3);
    objc_storeStrong(&v10->_parameterIdentifier, a4);
    v11 = v10;
  }

  return v10;
}

- (LNQueryRequestParameterTarget)initWithActionMetadata:(id)a3 parameterIndex:(int64_t)a4
{
  actionMetadata = self->_actionMetadata;
  v7 = [a3 parameters];
  v8 = [v7 objectAtIndex:a4];
  v9 = [v8 name];
  v10 = [(LNQueryRequestParameterTarget *)self initWithActionMetadata:actionMetadata parameterIdentifier:v9];

  return v10;
}

@end