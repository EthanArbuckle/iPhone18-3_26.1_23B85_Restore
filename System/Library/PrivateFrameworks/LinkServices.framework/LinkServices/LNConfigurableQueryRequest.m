@interface LNConfigurableQueryRequest
+ (NSSet)xpcClasses;
+ (id)queryTypes;
+ (id)targetTypes;
- (BOOL)isEqual:(id)a3;
- (LNConfigurableQueryRequest)initWithCoder:(id)a3;
- (LNConfigurableQueryRequest)initWithQueryType:(id)a3 target:(id)a4 options:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNConfigurableQueryRequest

+ (NSSet)xpcClasses
{
  v3 = MEMORY[0x1E695DFA8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v3 setWithObjects:{v4, v5, v6, v7, v8, objc_opt_class(), 0}];
  v10 = [a1 queryTypes];
  [v9 unionSet:v10];

  v11 = [a1 targetTypes];
  [v9 unionSet:v11];

  v12 = [v9 copy];

  return v12;
}

+ (id)queryTypes
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
}

+ (id)targetTypes
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
}

- (LNConfigurableQueryRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() queryTypes];
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"queryType"];

  v7 = [objc_opt_class() targetTypes];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"target"];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"options"];

  v10 = 0;
  if (v6 && v8)
  {
    self = [(LNConfigurableQueryRequest *)self initWithQueryType:v6 target:v8 options:v9];
    v10 = self;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNConfigurableQueryRequest *)self queryType];
  [v4 encodeObject:v5 forKey:@"queryType"];

  v6 = [(LNConfigurableQueryRequest *)self target];
  [v4 encodeObject:v6 forKey:@"target"];

  v7 = [(LNConfigurableQueryRequest *)self options];
  [v4 encodeObject:v7 forKey:@"options"];
}

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
LABEL_27:

      goto LABEL_28;
    }

    v7 = [(LNConfigurableQueryRequest *)self queryType];
    v8 = [(LNConfigurableQueryRequest *)v6 queryType];
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
        goto LABEL_25;
      }

      v15 = [v9 isEqual:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    v16 = [(LNConfigurableQueryRequest *)self target];
    v17 = [(LNConfigurableQueryRequest *)v6 target];
    v14 = v16;
    v18 = v17;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

      v12 = [v14 isEqual:v18];

      if (!v12)
      {
        goto LABEL_25;
      }
    }

    v21 = [(LNConfigurableQueryRequest *)self options];
    v22 = [(LNConfigurableQueryRequest *)v6 options];
    v20 = v21;
    v23 = v22;
    v19 = v23;
    if (v20 == v23)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v20 && v23)
      {
        LOBYTE(v12) = [v20 isEqual:v23];
      }
    }

    goto LABEL_24;
  }

  LOBYTE(v12) = 1;
LABEL_28:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(LNQueryRequestTypeBase *)self->_queryType hash];
  v4 = [(LNQueryRequestTargetBase *)self->_target hash]^ v3;
  return v4 ^ [(LNQueryRequestOptions *)self->_options hash];
}

- (id)description
{
  v3 = [(LNConfigurableQueryRequest *)self queryType];
  v4 = [v3 description];

  v5 = [(LNConfigurableQueryRequest *)self target];
  v6 = [v5 description];

  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [(LNConfigurableQueryRequest *)self options];
  v11 = [v7 stringWithFormat:@"<%@: %p, type: %@, target: %@, options: %@>", v9, self, v4, v6, v10];

  return v11;
}

- (LNConfigurableQueryRequest)initWithQueryType:(id)a3 target:(id)a4 options:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"LNConfigurableQueryRequest.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"queryType"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"LNConfigurableQueryRequest.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"target"}];

LABEL_3:
  v21.receiver = self;
  v21.super_class = LNConfigurableQueryRequest;
  v13 = [(LNConfigurableQueryRequest *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_queryType, a3);
    objc_storeStrong(&v14->_target, a4);
    if (v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = objc_alloc_init(LNQueryRequestOptions);
    }

    options = v14->_options;
    v14->_options = v15;

    v17 = v14;
  }

  return v14;
}

@end