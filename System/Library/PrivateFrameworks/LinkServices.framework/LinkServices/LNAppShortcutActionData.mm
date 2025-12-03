@interface LNAppShortcutActionData
- (BOOL)isEqual:(id)equal;
- (LNAppShortcutActionData)initWithAction:(id)action typeMap:(id)map;
- (LNAppShortcutActionData)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNAppShortcutActionData

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  action = [(LNAppShortcutActionData *)self action];
  [coderCopy encodeObject:action forKey:@"action"];

  identifiersByTypeMap = [(LNAppShortcutActionData *)self identifiersByTypeMap];
  [coderCopy encodeObject:identifiersByTypeMap forKey:@"identifiersByTypeMap"];
}

- (LNAppShortcutActionData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"action"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifiersByTypeMap"];

  v7 = [(LNAppShortcutActionData *)self initWithAction:v5 typeMap:v6];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_20:

      goto LABEL_21;
    }

    action = [(LNAppShortcutActionData *)self action];
    action2 = [(LNAppShortcutActionData *)v6 action];
    v9 = action;
    v10 = action2;
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

    identifiersByTypeMap = [(LNAppShortcutActionData *)self identifiersByTypeMap];
    identifiersByTypeMap2 = [(LNAppShortcutActionData *)v6 identifiersByTypeMap];
    v14 = identifiersByTypeMap;
    v17 = identifiersByTypeMap2;
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

- (LNAppShortcutActionData)initWithAction:(id)action typeMap:(id)map
{
  actionCopy = action;
  mapCopy = map;
  v9 = mapCopy;
  if (actionCopy)
  {
    if (mapCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAppShortcutActionData.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"action"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNAppShortcutActionData.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"typeMap"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNAppShortcutActionData;
  v10 = [(LNAppShortcutActionData *)&v19 init];
  if (v10)
  {
    v11 = [actionCopy copy];
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