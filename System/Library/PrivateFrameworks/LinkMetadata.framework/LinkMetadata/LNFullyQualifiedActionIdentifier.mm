@interface LNFullyQualifiedActionIdentifier
- (BOOL)isEqual:(id)equal;
- (LNFullyQualifiedActionIdentifier)initWithActionIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier;
- (LNFullyQualifiedActionIdentifier)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNFullyQualifiedActionIdentifier

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  actionIdentifier = [(LNFullyQualifiedActionIdentifier *)self actionIdentifier];
  bundleIdentifier = [(LNFullyQualifiedActionIdentifier *)self bundleIdentifier];
  v7 = [v4 initWithActionIdentifier:actionIdentifier bundleIdentifier:bundleIdentifier];

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

    actionIdentifier = [(LNFullyQualifiedActionIdentifier *)self actionIdentifier];
    actionIdentifier2 = [(LNFullyQualifiedActionIdentifier *)v6 actionIdentifier];
    v9 = actionIdentifier;
    v10 = actionIdentifier2;
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

      v12 = [v9 isEqualToString:v10];

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    bundleIdentifier = [(LNFullyQualifiedActionIdentifier *)self bundleIdentifier];
    bundleIdentifier2 = [(LNFullyQualifiedActionIdentifier *)v6 bundleIdentifier];
    v14 = bundleIdentifier;
    v17 = bundleIdentifier2;
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
        LOBYTE(v12) = [v14 isEqualToString:v17];
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
  actionIdentifier = [(LNFullyQualifiedActionIdentifier *)self actionIdentifier];
  v4 = [actionIdentifier hash];
  bundleIdentifier = [(LNFullyQualifiedActionIdentifier *)self bundleIdentifier];
  v6 = [bundleIdentifier hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  bundleIdentifier = [(LNFullyQualifiedActionIdentifier *)self bundleIdentifier];
  actionIdentifier = [(LNFullyQualifiedActionIdentifier *)self actionIdentifier];
  v8 = [v3 stringWithFormat:@"<%@: %p, bundleIdentifier: %@, actionIdentifier: %@>", v5, self, bundleIdentifier, actionIdentifier];

  return v8;
}

- (LNFullyQualifiedActionIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LNFullyQualifiedActionIdentifier *)self initWithActionIdentifier:v5 bundleIdentifier:v6];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  actionIdentifier = [(LNFullyQualifiedActionIdentifier *)self actionIdentifier];
  [coderCopy encodeObject:actionIdentifier forKey:@"actionIdentifier"];

  bundleIdentifier = [(LNFullyQualifiedActionIdentifier *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];
}

- (LNFullyQualifiedActionIdentifier)initWithActionIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  v9 = bundleIdentifierCopy;
  if (identifierCopy)
  {
    if (bundleIdentifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNFullyQualifiedActionIdentifier.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"actionIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNFullyQualifiedActionIdentifier.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNFullyQualifiedActionIdentifier;
  v10 = [(LNFullyQualifiedActionIdentifier *)&v19 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    actionIdentifier = v10->_actionIdentifier;
    v10->_actionIdentifier = v11;

    v13 = [v9 copy];
    bundleIdentifier = v10->_bundleIdentifier;
    v10->_bundleIdentifier = v13;

    v15 = v10;
  }

  return v10;
}

@end