@interface LNQueryParameterSortingOption
- (BOOL)isEqual:(id)a3;
- (LNQueryParameterSortingOption)initWithCoder:(id)a3;
- (LNQueryParameterSortingOption)initWithOrder:(int64_t)a3 sortParameterIndex:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNQueryParameterSortingOption

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [(LNQueryParameterSortingOption *)self order];
        if (v7 != [(LNQueryParameterSortingOption *)v6 order])
        {
          v13 = 0;
LABEL_16:

          goto LABEL_17;
        }

        v8 = [(LNQueryParameterSortingOption *)self sortParameterIndex];
        v9 = [(LNQueryParameterSortingOption *)v6 sortParameterIndex];
        v10 = v8;
        v11 = v9;
        v12 = v11;
        if (v10 == v11)
        {
          v13 = 1;
        }

        else
        {
          v13 = 0;
          if (v10 && v11)
          {
            v13 = [(LNQueryParameterSortingOption *)v10 isEqual:v11];
          }
        }
      }

      else
      {
        v13 = 0;
        v10 = v6;
        v6 = 0;
      }
    }

    else
    {
      v10 = 0;
      v13 = 0;
    }

    goto LABEL_16;
  }

  v13 = 1;
LABEL_17:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(LNQueryParameterSortingOption *)self order];
  v4 = [(LNQueryParameterSortingOption *)self sortParameterIndex];
  v5 = [v4 hash];

  return v5 + v3;
}

- (LNQueryParameterSortingOption)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"order"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sortParameterIndex"];

  if (v6)
  {
    self = [(LNQueryParameterSortingOption *)self initWithOrder:v5 sortParameterIndex:v6];
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
  [v4 encodeInteger:-[LNQueryParameterSortingOption order](self forKey:{"order"), @"order"}];
  v5 = [(LNQueryParameterSortingOption *)self sortParameterIndex];
  [v4 encodeObject:v5 forKey:@"sortParameterIndex"];
}

- (LNQueryParameterSortingOption)initWithOrder:(int64_t)a3 sortParameterIndex:(id)a4
{
  v8 = a4;
  if (!v8)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"LNQueryParameterSortingOption.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"sortParameterIndex"}];
  }

  v14.receiver = self;
  v14.super_class = LNQueryParameterSortingOption;
  v9 = [(LNQueryParameterSortingOption *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_order = a3;
    objc_storeStrong(&v9->_sortParameterIndex, a4);
    v11 = v10;
  }

  return v10;
}

@end