@interface LNQueryRequestAnyQueryTarget
- (BOOL)isEqual:(id)a3;
- (LNQueryRequestAnyQueryTarget)initWithCoder:(id)a3;
- (LNQueryRequestAnyQueryTarget)initWithQueryMetadata:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNQueryRequestAnyQueryTarget

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    v6 = v4;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [(LNQueryRequestAnyQueryTarget *)self queryMetadata];
      v8 = [(LNQueryRequestAnyQueryTarget *)v6 queryMetadata];
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

- (LNQueryRequestAnyQueryTarget)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"queryMetadata"];

  v6 = [(LNQueryRequestAnyQueryTarget *)self initWithQueryMetadata:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNQueryRequestAnyQueryTarget *)self queryMetadata];
  [v4 encodeObject:v5 forKey:@"queryMetadata"];
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(LNQueryMetadata *)self->_queryMetadata identifier];
  v4 = [v2 stringWithFormat:@"Query <%@>", v3];

  return v4;
}

- (LNQueryRequestAnyQueryTarget)initWithQueryMetadata:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = LNQueryRequestAnyQueryTarget;
  v6 = [(LNQueryRequestTargetBase *)&v10 _init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 1, a3);
    v8 = v7;
  }

  return v7;
}

@end