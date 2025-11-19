@interface LNQueryRequestDefaultQueryTarget
- (BOOL)isEqual:(id)a3;
- (LNQueryRequestDefaultQueryTarget)initWithCoder:(id)a3;
- (LNQueryRequestDefaultQueryTarget)initWithEntityMetadata:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNQueryRequestDefaultQueryTarget

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
      v7 = [(LNQueryRequestDefaultQueryTarget *)self entityMetadata];
      v8 = [(LNQueryRequestDefaultQueryTarget *)v6 entityMetadata];
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

- (LNQueryRequestDefaultQueryTarget)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entityMetadata"];

  v6 = [(LNQueryRequestDefaultQueryTarget *)self initWithEntityMetadata:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNQueryRequestDefaultQueryTarget *)self entityMetadata];
  [v4 encodeObject:v5 forKey:@"entityMetadata"];
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(LNEntityMetadata *)self->_entityMetadata identifier];
  v4 = [v2 stringWithFormat:@"Entity <%@>", v3];

  return v4;
}

- (LNQueryRequestDefaultQueryTarget)initWithEntityMetadata:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = LNQueryRequestDefaultQueryTarget;
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