@interface LNAppShortcutParameterPresentationMetadata
- (BOOL)isEqual:(id)equal;
- (LNAppShortcutParameterPresentationMetadata)initWithCoder:(id)coder;
- (LNAppShortcutParameterPresentationMetadata)initWithParameterIdentifier:(id)identifier specificTitle:(id)title localizationTable:(id)table optionsCollection:(id)collection;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNAppShortcutParameterPresentationMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(optionsCollection3) = 0;
LABEL_35:

      goto LABEL_36;
    }

    parameterIdentifier = [(LNAppShortcutParameterPresentationMetadata *)self parameterIdentifier];
    parameterIdentifier2 = [(LNAppShortcutParameterPresentationMetadata *)v6 parameterIdentifier];
    v9 = parameterIdentifier;
    v10 = parameterIdentifier2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(optionsCollection3) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_33;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(optionsCollection3) = 0;
LABEL_34:

        goto LABEL_35;
      }
    }

    specificTitle = [(LNAppShortcutParameterPresentationMetadata *)self specificTitle];
    specificTitle2 = [(LNAppShortcutParameterPresentationMetadata *)v6 specificTitle];
    v14 = specificTitle;
    v18 = specificTitle2;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(optionsCollection3) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
        goto LABEL_32;
      }

      v21 = [v14 isEqual:v18];

      if (!v21)
      {
        LOBYTE(optionsCollection3) = 0;
LABEL_33:

        goto LABEL_34;
      }
    }

    localizationTable = [(LNAppShortcutParameterPresentationMetadata *)self localizationTable];
    localizationTable2 = [(LNAppShortcutParameterPresentationMetadata *)v6 localizationTable];
    v20 = localizationTable;
    v24 = localizationTable2;
    v19 = v24;
    if (v20 == v24)
    {
    }

    else
    {
      LOBYTE(optionsCollection3) = 0;
      v25 = v24;
      v26 = v20;
      if (!v20 || !v24)
      {
        goto LABEL_28;
      }

      LODWORD(optionsCollection3) = [v20 isEqualToString:v24];

      if (!optionsCollection3)
      {
        goto LABEL_32;
      }
    }

    v38 = v20;
    optionsCollection = [(LNAppShortcutParameterPresentationMetadata *)self optionsCollection];
    optionsCollection2 = [(LNAppShortcutParameterPresentationMetadata *)v6 optionsCollection];

    if (optionsCollection == optionsCollection2)
    {
      LOBYTE(optionsCollection3) = 1;
    }

    else
    {
      optionsCollection3 = [(LNAppShortcutParameterPresentationMetadata *)self optionsCollection];
      if (optionsCollection3)
      {
        optionsCollection4 = [(LNAppShortcutParameterPresentationMetadata *)v6 optionsCollection];

        if (optionsCollection4)
        {
          v30 = MEMORY[0x1E695DFD8];
          optionsCollection5 = [(LNAppShortcutParameterPresentationMetadata *)self optionsCollection];
          v36 = [v30 setWithArray:optionsCollection5];
          v31 = MEMORY[0x1E695DFD8];
          optionsCollection6 = [(LNAppShortcutParameterPresentationMetadata *)v6 optionsCollection];
          v33 = [v31 setWithArray:optionsCollection6];
          LOBYTE(optionsCollection3) = [v36 isEqualToSet:v33];

          v25 = v36;
          v26 = optionsCollection5;
          v20 = v38;
LABEL_28:
          v34 = v26;

LABEL_32:
          goto LABEL_33;
        }

        LOBYTE(optionsCollection3) = 0;
      }
    }

    v20 = v38;
    goto LABEL_32;
  }

  LOBYTE(optionsCollection3) = 1;
LABEL_36:

  return optionsCollection3;
}

- (unint64_t)hash
{
  parameterIdentifier = [(LNAppShortcutParameterPresentationMetadata *)self parameterIdentifier];
  v4 = [parameterIdentifier hash];
  specificTitle = [(LNAppShortcutParameterPresentationMetadata *)self specificTitle];
  v6 = [specificTitle hash] ^ v4;
  localizationTable = [(LNAppShortcutParameterPresentationMetadata *)self localizationTable];
  v8 = [localizationTable hash];
  optionsCollection = [(LNAppShortcutParameterPresentationMetadata *)self optionsCollection];
  v10 = v8 ^ [optionsCollection hash];

  return v6 ^ v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  parameterIdentifier = [(LNAppShortcutParameterPresentationMetadata *)self parameterIdentifier];
  specificTitle = [(LNAppShortcutParameterPresentationMetadata *)self specificTitle];
  localizationTable = [(LNAppShortcutParameterPresentationMetadata *)self localizationTable];
  optionsCollection = [(LNAppShortcutParameterPresentationMetadata *)self optionsCollection];
  v10 = [v3 stringWithFormat:@"<%@: %p, parameterIdentifier: %@, specificTitle: %@, localizationTable: %@, optionsCollection: %@>", v5, self, parameterIdentifier, specificTitle, localizationTable, optionsCollection];

  return v10;
}

- (LNAppShortcutParameterPresentationMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"specificTitle"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    selfCopy = 0;
  }

  else
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizationTable"];
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"optionsCollection"];

    self = [(LNAppShortcutParameterPresentationMetadata *)self initWithParameterIdentifier:v5 specificTitle:v7 localizationTable:v9 optionsCollection:v13];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  parameterIdentifier = [(LNAppShortcutParameterPresentationMetadata *)self parameterIdentifier];
  [coderCopy encodeObject:parameterIdentifier forKey:@"parameterIdentifier"];

  specificTitle = [(LNAppShortcutParameterPresentationMetadata *)self specificTitle];
  [coderCopy encodeObject:specificTitle forKey:@"specificTitle"];

  localizationTable = [(LNAppShortcutParameterPresentationMetadata *)self localizationTable];
  [coderCopy encodeObject:localizationTable forKey:@"localizationTable"];

  optionsCollection = [(LNAppShortcutParameterPresentationMetadata *)self optionsCollection];
  [coderCopy encodeObject:optionsCollection forKey:@"optionsCollection"];
}

- (LNAppShortcutParameterPresentationMetadata)initWithParameterIdentifier:(id)identifier specificTitle:(id)title localizationTable:(id)table optionsCollection:(id)collection
{
  identifierCopy = identifier;
  titleCopy = title;
  tableCopy = table;
  collectionCopy = collection;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAppShortcutParameterPresentationMetadata.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"parameterIdentifier"}];
  }

  v27.receiver = self;
  v27.super_class = LNAppShortcutParameterPresentationMetadata;
  v15 = [(LNAppShortcutParameterPresentationMetadata *)&v27 init];
  if (v15)
  {
    v16 = [identifierCopy copy];
    parameterIdentifier = v15->_parameterIdentifier;
    v15->_parameterIdentifier = v16;

    v18 = [titleCopy copy];
    specificTitle = v15->_specificTitle;
    v15->_specificTitle = v18;

    v20 = [tableCopy copy];
    localizationTable = v15->_localizationTable;
    v15->_localizationTable = v20;

    v22 = [collectionCopy copy];
    optionsCollection = v15->_optionsCollection;
    v15->_optionsCollection = v22;

    v24 = v15;
  }

  return v15;
}

@end