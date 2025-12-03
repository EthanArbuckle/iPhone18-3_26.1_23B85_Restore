@interface LNDynamicTerm
- (BOOL)isEqual:(id)equal;
- (LNDynamicTerm)initWithTerm:(id)term entityIdentifier:(id)identifier;
- (LNDynamicTerm)initWithTerm:(id)term entityIdentifierValue:(id)value entityTypeName:(id)name;
- (id)description;
- (unint64_t)hash;
@end

@implementation LNDynamicTerm

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
LABEL_15:

      goto LABEL_16;
    }

    term = [(LNDynamicTerm *)self term];
    term2 = [(LNDynamicTerm *)v6 term];
    v9 = term;
    v10 = term2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      entityIdentifier2 = v10;
      entityIdentifier = v9;
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

    entityIdentifier = [(LNDynamicTerm *)self entityIdentifier];
    entityIdentifier2 = [(LNDynamicTerm *)v6 entityIdentifier];
    LOBYTE(v12) = [entityIdentifier isEqual:entityIdentifier2];
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
  term = [(LNDynamicTerm *)self term];
  v4 = [term hash];
  entityIdentifier = [(LNDynamicTerm *)self entityIdentifier];
  v6 = [entityIdentifier hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  term = [(LNDynamicTerm *)self term];
  entityIdentifier = [(LNDynamicTerm *)self entityIdentifier];
  v8 = [v3 stringWithFormat:@"<%@: %p, term: %@, entityIdentifier: %@>", v5, self, term, entityIdentifier];

  return v8;
}

- (LNDynamicTerm)initWithTerm:(id)term entityIdentifierValue:(id)value entityTypeName:(id)name
{
  v8 = MEMORY[0x1E69AC7E0];
  nameCopy = name;
  valueCopy = value;
  termCopy = term;
  v12 = [[v8 alloc] initWithTypeIdentifier:nameCopy instanceIdentifier:valueCopy];

  v13 = [(LNDynamicTerm *)self initWithTerm:termCopy entityIdentifier:v12];
  return v13;
}

- (LNDynamicTerm)initWithTerm:(id)term entityIdentifier:(id)identifier
{
  termCopy = term;
  identifierCopy = identifier;
  v9 = identifierCopy;
  if (termCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNDynamicTerm.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"term"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNDynamicTerm.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = LNDynamicTerm;
  v10 = [(LNDynamicTerm *)&v17 init];
  if (v10)
  {
    v11 = [termCopy copy];
    term = v10->_term;
    v10->_term = v11;

    objc_storeStrong(&v10->_entityIdentifier, identifier);
    v13 = v10;
  }

  return v10;
}

@end