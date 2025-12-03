@interface LNQueryParameterMetadata
- (BOOL)isEqual:(id)equal;
- (LNQueryParameterMetadata)initWithCoder:(id)coder;
- (LNQueryParameterMetadata)initWithPropertyIdentifier:(id)identifier localizedTitle:(id)title comparators:(id)comparators;
- (LNQueryParameterMetadata)initWithPropertyIdentifier:(id)identifier title:(id)title comparators:(id)comparators;
- (NSString)title;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNQueryParameterMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(comparators3) = 0;
LABEL_27:

      goto LABEL_28;
    }

    propertyIdentifier = [(LNQueryParameterMetadata *)self propertyIdentifier];
    propertyIdentifier2 = [(LNQueryParameterMetadata *)v6 propertyIdentifier];
    v9 = propertyIdentifier;
    v10 = propertyIdentifier2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(comparators3) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_25;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(comparators3) = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    localizedTitle = [(LNQueryParameterMetadata *)self localizedTitle];
    localizedTitle2 = [(LNQueryParameterMetadata *)v6 localizedTitle];
    v14 = localizedTitle;
    v18 = localizedTitle2;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(comparators3) = 0;
      v19 = v18;
      comparators5 = v14;
      if (!v14 || !v18)
      {
        goto LABEL_22;
      }

      LODWORD(comparators3) = [v14 isEqual:v18];

      if (!comparators3)
      {
        goto LABEL_25;
      }
    }

    comparators = [(LNQueryParameterMetadata *)self comparators];
    comparators2 = [(LNQueryParameterMetadata *)v6 comparators];

    if (comparators == comparators2)
    {
      LOBYTE(comparators3) = 1;
      goto LABEL_25;
    }

    comparators3 = [(LNQueryParameterMetadata *)self comparators];
    if (!comparators3)
    {
LABEL_25:

      goto LABEL_26;
    }

    comparators4 = [(LNQueryParameterMetadata *)v6 comparators];

    if (!comparators4)
    {
      LOBYTE(comparators3) = 0;
      goto LABEL_25;
    }

    v24 = MEMORY[0x1E695DFD8];
    comparators5 = [(LNQueryParameterMetadata *)self comparators];
    v19 = [v24 setWithArray:comparators5];
    comparators3 = MEMORY[0x1E695DFD8];
    comparators6 = [(LNQueryParameterMetadata *)v6 comparators];
    v25 = [comparators3 setWithArray:comparators6];
    LOBYTE(comparators3) = [v19 isEqualToSet:v25];

LABEL_22:
    goto LABEL_25;
  }

  LOBYTE(comparators3) = 1;
LABEL_28:

  return comparators3;
}

- (unint64_t)hash
{
  propertyIdentifier = [(LNQueryParameterMetadata *)self propertyIdentifier];
  v4 = [propertyIdentifier hash];
  title = [(LNQueryParameterMetadata *)self title];
  v6 = [title hash] ^ v4;
  comparators = [(LNQueryParameterMetadata *)self comparators];
  v8 = [comparators hash];

  return v6 ^ v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  propertyIdentifier = [(LNQueryParameterMetadata *)self propertyIdentifier];
  localizedTitle = [(LNQueryParameterMetadata *)self localizedTitle];
  comparators = [(LNQueryParameterMetadata *)self comparators];
  v9 = [comparators valueForKeyPath:@"description"];
  v10 = [v9 componentsJoinedByString:{@", "}];
  v11 = [v3 stringWithFormat:@"<%@: %p, propertyIdentifier: %@, localizedTitle: %@, comparators: [%@]>", v5, self, propertyIdentifier, localizedTitle, v10];

  return v11;
}

- (LNQueryParameterMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"propertyIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"comparators"];

  selfCopy = 0;
  if (v6 && v10)
  {
    self = [(LNQueryParameterMetadata *)self initWithPropertyIdentifier:v5 localizedTitle:v6 comparators:v10];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  propertyIdentifier = [(LNQueryParameterMetadata *)self propertyIdentifier];
  [coderCopy encodeObject:propertyIdentifier forKey:@"propertyIdentifier"];

  localizedTitle = [(LNQueryParameterMetadata *)self localizedTitle];
  [coderCopy encodeObject:localizedTitle forKey:@"localizedTitle"];

  comparators = [(LNQueryParameterMetadata *)self comparators];
  [coderCopy encodeObject:comparators forKey:@"comparators"];
}

- (LNQueryParameterMetadata)initWithPropertyIdentifier:(id)identifier localizedTitle:(id)title comparators:(id)comparators
{
  identifierCopy = identifier;
  titleCopy = title;
  comparatorsCopy = comparators;
  v12 = comparatorsCopy;
  if (titleCopy)
  {
    if (comparatorsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNQueryParameterMetadata.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"title"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNQueryParameterMetadata.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"comparators"}];

LABEL_3:
  v24.receiver = self;
  v24.super_class = LNQueryParameterMetadata;
  v13 = [(LNQueryParameterMetadata *)&v24 init];
  if (v13)
  {
    v14 = [identifierCopy copy];
    propertyIdentifier = v13->_propertyIdentifier;
    v13->_propertyIdentifier = v14;

    v16 = [titleCopy copy];
    localizedTitle = v13->_localizedTitle;
    v13->_localizedTitle = v16;

    v18 = [v12 copy];
    comparators = v13->_comparators;
    v13->_comparators = v18;

    v20 = v13;
  }

  return v13;
}

- (LNQueryParameterMetadata)initWithPropertyIdentifier:(id)identifier title:(id)title comparators:(id)comparators
{
  comparatorsCopy = comparators;
  titleCopy = title;
  identifierCopy = identifier;
  v11 = [[LNStaticDeferredLocalizedString alloc] initWithLocalizedKey:titleCopy bundleIdentifier:0 bundleURL:0 table:0];

  v12 = [(LNQueryParameterMetadata *)self initWithPropertyIdentifier:identifierCopy localizedTitle:v11 comparators:comparatorsCopy];
  return v12;
}

- (NSString)title
{
  localizedTitle = [(LNQueryParameterMetadata *)self localizedTitle];
  v3 = [localizedTitle key];

  return v3;
}

@end