@interface LNAsyncIteratorOptions
- (BOOL)isEqual:(id)a3;
- (LNAsyncIteratorOptions)initWithCoder:(id)a3;
- (LNAsyncIteratorOptions)initWithPageSize:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNAsyncIteratorOptions

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

    v7 = [(LNAsyncIteratorOptions *)self exportConfiguration];
    v8 = [(LNAsyncIteratorOptions *)v6 exportConfiguration];
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

    v15 = [(LNAsyncIteratorOptions *)self pageSize];
    v16 = [(LNAsyncIteratorOptions *)v6 pageSize];
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
        LOBYTE(v12) = [v14 isEqual:v17];
      }
    }

    goto LABEL_18;
  }

  LOBYTE(v12) = 1;
LABEL_21:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(LNAsyncIteratorOptions *)self exportConfiguration];
  v4 = [v3 hash];
  v5 = [(LNAsyncIteratorOptions *)self pageSize];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (LNAsyncIteratorOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pageSize"];
  if (v5)
  {
    self = [(LNAsyncIteratorOptions *)self initWithPageSize:v5];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"exportConfiguration"];
    [(LNAsyncIteratorOptions *)self setExportConfiguration:v6];

    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNAsyncIteratorOptions *)self exportConfiguration];
  [v4 encodeObject:v5 forKey:@"exportConfiguration"];

  v6 = [(LNAsyncIteratorOptions *)self pageSize];
  [v4 encodeObject:v6 forKey:@"pageSize"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNAsyncIteratorOptions *)self exportConfiguration];
  v7 = [(LNAsyncIteratorOptions *)self pageSize];
  v8 = [v3 stringWithFormat:@"<%@: %p, exportConfiguration: %@, pageSize: %@>", v5, self, v6, v7];

  return v8;
}

- (LNAsyncIteratorOptions)initWithPageSize:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"LNAsyncIteratorOptions.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"pageSize"}];
  }

  v12.receiver = self;
  v12.super_class = LNAsyncIteratorOptions;
  v7 = [(LNAsyncIteratorOptions *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_pageSize, a3);
    v9 = v8;
  }

  return v8;
}

@end