@interface LNDynamicTerm
- (BOOL)isEqual:(id)a3;
- (LNDynamicTerm)initWithTerm:(id)a3 entityIdentifier:(id)a4;
- (LNDynamicTerm)initWithTerm:(id)a3 entityIdentifierValue:(id)a4 entityTypeName:(id)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation LNDynamicTerm

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
LABEL_15:

      goto LABEL_16;
    }

    v7 = [(LNDynamicTerm *)self term];
    v8 = [(LNDynamicTerm *)v6 term];
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
        goto LABEL_13;
      }

      v12 = [v9 isEqualToString:v10];

      if (!v12)
      {
        goto LABEL_14;
      }
    }

    v14 = [(LNDynamicTerm *)self entityIdentifier];
    v13 = [(LNDynamicTerm *)v6 entityIdentifier];
    LOBYTE(v12) = [v14 isEqual:v13];
LABEL_13:

LABEL_14:
    goto LABEL_15;
  }

  LOBYTE(v12) = 1;
LABEL_16:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(LNDynamicTerm *)self term];
  v4 = [v3 hash];
  v5 = [(LNDynamicTerm *)self entityIdentifier];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNDynamicTerm *)self term];
  v7 = [(LNDynamicTerm *)self entityIdentifier];
  v8 = [v3 stringWithFormat:@"<%@: %p, term: %@, entityIdentifier: %@>", v5, self, v6, v7];

  return v8;
}

- (LNDynamicTerm)initWithTerm:(id)a3 entityIdentifierValue:(id)a4 entityTypeName:(id)a5
{
  v8 = MEMORY[0x1E69AC7E0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[v8 alloc] initWithTypeIdentifier:v9 instanceIdentifier:v10];

  v13 = [(LNDynamicTerm *)self initWithTerm:v11 entityIdentifier:v12];
  return v13;
}

- (LNDynamicTerm)initWithTerm:(id)a3 entityIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"LNDynamicTerm.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"term"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"LNDynamicTerm.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = LNDynamicTerm;
  v10 = [(LNDynamicTerm *)&v17 init];
  if (v10)
  {
    v11 = [v7 copy];
    term = v10->_term;
    v10->_term = v11;

    objc_storeStrong(&v10->_entityIdentifier, a4);
    v13 = v10;
  }

  return v10;
}

@end