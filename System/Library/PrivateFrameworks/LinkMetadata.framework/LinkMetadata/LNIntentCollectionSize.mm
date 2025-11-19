@interface LNIntentCollectionSize
- (BOOL)isEqual:(id)a3;
- (LNIntentCollectionSize)initWithCoder:(id)a3;
- (LNIntentCollectionSize)initWithMin:(id)a3 max:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNIntentCollectionSize

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNIntentCollectionSize *)self min];
  [v4 encodeObject:v5 forKey:@"min"];

  v6 = [(LNIntentCollectionSize *)self max];
  [v4 encodeObject:v6 forKey:@"max"];
}

- (LNIntentCollectionSize)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"min"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"max"];

  v7 = [(LNIntentCollectionSize *)self initWithMin:v5 max:v6];
  return v7;
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
LABEL_20:

      goto LABEL_21;
    }

    v7 = [(LNIntentCollectionSize *)self min];
    v8 = [(LNIntentCollectionSize *)v6 min];
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

    v15 = [(LNIntentCollectionSize *)self max];
    v16 = [(LNIntentCollectionSize *)v6 max];
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNIntentCollectionSize *)self min];
  v7 = [v6 integerValue];
  v8 = [(LNIntentCollectionSize *)self max];
  v9 = [v3 stringWithFormat:@"<%@: %p, min: %ld max: %ld>", v5, self, v7, objc_msgSend(v8, "integerValue")];

  return v9;
}

- (LNIntentCollectionSize)initWithMin:(id)a3 max:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = LNIntentCollectionSize;
  v9 = [(LNIntentCollectionSize *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_min, a3);
    objc_storeStrong(&v10->_max, a4);
    v11 = v10;
  }

  return v10;
}

@end