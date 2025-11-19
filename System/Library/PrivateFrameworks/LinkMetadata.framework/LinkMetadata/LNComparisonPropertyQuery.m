@interface LNComparisonPropertyQuery
- (BOOL)isEqual:(id)a3;
- (LNComparisonPropertyQuery)initWithCoder:(id)a3;
- (LNComparisonPropertyQuery)initWithPropertyIndex:(id)a3 value:(id)a4 type:(unint64_t)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNComparisonPropertyQuery

- (void)encodeWithCoder:(id)a3
{
  propertyIndex = self->_propertyIndex;
  v5 = a3;
  [v5 encodeObject:propertyIndex forKey:@"propertyIndex"];
  [v5 encodeInteger:self->_type forKey:@"type"];
  [v5 encodeObject:self->_value forKey:@"value"];
}

- (LNComparisonPropertyQuery)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"propertyIndex"];
  v6 = [v4 decodeIntForKey:@"type"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];

  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    self = [(LNComparisonPropertyQuery *)self initWithPropertyIndex:v5 value:v7 type:v6];
    v9 = self;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(LNComparisonPropertyQuery *)self propertyIndex];
  v4 = [v3 hash];
  v5 = [(LNComparisonPropertyQuery *)self value];
  v6 = [v5 hash] ^ v4;
  v7 = [(LNComparisonPropertyQuery *)self type];

  return v6 ^ v7;
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
LABEL_17:

      goto LABEL_18;
    }

    v7 = [(LNComparisonPropertyQuery *)self propertyIndex];
    v8 = [(LNComparisonPropertyQuery *)v6 propertyIndex];
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
        goto LABEL_15;
      }

      v12 = [v9 isEqual:v10];

      if (!v12)
      {
        goto LABEL_16;
      }
    }

    v14 = [(LNComparisonPropertyQuery *)self value];
    v13 = [(LNComparisonPropertyQuery *)v6 value];
    if ([v14 isEqual:v13])
    {
      v15 = [(LNComparisonPropertyQuery *)self type];
      LOBYTE(v12) = v15 == [(LNComparisonPropertyQuery *)v6 type];
    }

    else
    {
      LOBYTE(v12) = 0;
    }

LABEL_15:

LABEL_16:
    goto LABEL_17;
  }

  LOBYTE(v12) = 1;
LABEL_18:

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(LNComparisonPropertyQuery *)self propertyIndex];
  if (self)
  {
    v5 = [(LNComparisonPropertyQuery *)self type];
    if (v5 - 1 > 8)
    {
      v6 = @"==";
    }

    else
    {
      v6 = off_1E72B1070[v5 - 1];
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [(LNComparisonPropertyQuery *)self value];
  v9 = [v3 stringWithFormat:@"<%@ %@ %@>", v4, v7, v8];

  return v9;
}

- (LNComparisonPropertyQuery)initWithPropertyIndex:(id)a3 value:(id)a4 type:(unint64_t)a5
{
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"LNComparisonPropertyQuery.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"propertyIndex"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"LNComparisonPropertyQuery.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"value"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = LNComparisonPropertyQuery;
  v13 = [(LNPropertyQuery *)&v18 _init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(v13 + 1, a3);
    v14->_type = a5;
    objc_storeStrong(&v14->_value, a4);
  }

  return v14;
}

@end