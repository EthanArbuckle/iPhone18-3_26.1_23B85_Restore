@interface LNAppShortcutActionData
- (BOOL)isEqual:(id)a3;
- (LNAppShortcutActionData)initWithAction:(id)a3 typeMap:(id)a4;
- (LNAppShortcutActionData)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNAppShortcutActionData

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNAppShortcutActionData *)self action];
  [v4 encodeObject:v5 forKey:@"action"];

  v6 = [(LNAppShortcutActionData *)self identifiersByTypeMap];
  [v4 encodeObject:v6 forKey:@"identifiersByTypeMap"];
}

- (LNAppShortcutActionData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"action"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifiersByTypeMap"];

  v7 = [(LNAppShortcutActionData *)self initWithAction:v5 typeMap:v6];
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

    v7 = [(LNAppShortcutActionData *)self action];
    v8 = [(LNAppShortcutActionData *)v6 action];
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

    v15 = [(LNAppShortcutActionData *)self identifiersByTypeMap];
    v16 = [(LNAppShortcutActionData *)v6 identifiersByTypeMap];
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

- (LNAppShortcutActionData)initWithAction:(id)a3 typeMap:(id)a4
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
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"LNAppShortcutActionData.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"action"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"LNAppShortcutActionData.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"typeMap"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNAppShortcutActionData;
  v10 = [(LNAppShortcutActionData *)&v19 init];
  if (v10)
  {
    v11 = [v7 copy];
    action = v10->_action;
    v10->_action = v11;

    v13 = [v9 copy];
    identifiersByTypeMap = v10->_identifiersByTypeMap;
    v10->_identifiersByTypeMap = v13;

    v15 = v10;
  }

  return v10;
}

@end