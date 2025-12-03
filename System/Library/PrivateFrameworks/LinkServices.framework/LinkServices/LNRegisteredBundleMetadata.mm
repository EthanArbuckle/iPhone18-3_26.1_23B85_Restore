@interface LNRegisteredBundleMetadata
- (BOOL)isEqual:(id)equal;
- (LNRegisteredBundleMetadata)initWithBundleIdentifier:(id)identifier installIdentifier:(id)installIdentifier;
- (LNRegisteredBundleMetadata)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNRegisteredBundleMetadata

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

    bundleIdentifier = [(LNRegisteredBundleMetadata *)self bundleIdentifier];
    bundleIdentifier2 = [(LNRegisteredBundleMetadata *)v6 bundleIdentifier];
    v9 = bundleIdentifier;
    v10 = bundleIdentifier2;
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

    installIdentifier = [(LNRegisteredBundleMetadata *)self installIdentifier];
    installIdentifier2 = [(LNRegisteredBundleMetadata *)v6 installIdentifier];
    v14 = installIdentifier;
    v17 = installIdentifier2;
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
  bundleIdentifier = [(LNRegisteredBundleMetadata *)self bundleIdentifier];
  v4 = [bundleIdentifier hash];
  installIdentifier = [(LNRegisteredBundleMetadata *)self installIdentifier];
  v6 = [installIdentifier hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  bundleIdentifier = [(LNRegisteredBundleMetadata *)self bundleIdentifier];
  installIdentifier = [(LNRegisteredBundleMetadata *)self installIdentifier];
  v8 = [v3 stringWithFormat:@"<%@: %p, bundleIdentifier: %@, installIdentifier: %@>", v5, self, bundleIdentifier, installIdentifier];

  return v8;
}

- (LNRegisteredBundleMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installIdentifier"];

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
    self = [(LNRegisteredBundleMetadata *)self initWithBundleIdentifier:v5 installIdentifier:v6];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleIdentifier = [(LNRegisteredBundleMetadata *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  installIdentifier = [(LNRegisteredBundleMetadata *)self installIdentifier];
  [coderCopy encodeObject:installIdentifier forKey:@"installIdentifier"];
}

- (LNRegisteredBundleMetadata)initWithBundleIdentifier:(id)identifier installIdentifier:(id)installIdentifier
{
  identifierCopy = identifier;
  installIdentifierCopy = installIdentifier;
  v9 = installIdentifierCopy;
  if (identifierCopy)
  {
    if (installIdentifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNRegisteredBundleMetadata.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNRegisteredBundleMetadata.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"installIdentifier"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNRegisteredBundleMetadata;
  v10 = [(LNRegisteredBundleMetadata *)&v19 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    bundleIdentifier = v10->_bundleIdentifier;
    v10->_bundleIdentifier = v11;

    v13 = [v9 copy];
    installIdentifier = v10->_installIdentifier;
    v10->_installIdentifier = v13;

    v15 = v10;
  }

  return v10;
}

@end