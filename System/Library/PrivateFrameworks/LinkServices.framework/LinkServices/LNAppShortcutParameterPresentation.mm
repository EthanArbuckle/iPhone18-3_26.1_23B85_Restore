@interface LNAppShortcutParameterPresentation
- (BOOL)isEqual:(id)equal;
- (LNAppShortcutParameterPresentation)initWithCoder:(id)coder;
- (LNAppShortcutParameterPresentation)initWithParameterIdentifier:(id)identifier localizedSpecificTitle:(id)title optionsCollections:(id)collections;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNAppShortcutParameterPresentation

- (LNAppShortcutParameterPresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedSpecificTitle"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"optionsCollections"];

  selfCopy = 0;
  if (v5 && v6)
  {
    self = [(LNAppShortcutParameterPresentation *)self initWithParameterIdentifier:v5 localizedSpecificTitle:v6 optionsCollections:v10];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  parameterIdentifier = [(LNAppShortcutParameterPresentation *)self parameterIdentifier];
  [coderCopy encodeObject:parameterIdentifier forKey:@"parameterIdentifier"];

  localizedSpecificTitle = [(LNAppShortcutParameterPresentation *)self localizedSpecificTitle];
  [coderCopy encodeObject:localizedSpecificTitle forKey:@"localizedSpecificTitle"];

  optionsCollections = [(LNAppShortcutParameterPresentation *)self optionsCollections];
  [coderCopy encodeObject:optionsCollections forKey:@"optionsCollections"];
}

- (unint64_t)hash
{
  parameterIdentifier = [(LNAppShortcutParameterPresentation *)self parameterIdentifier];
  v4 = [parameterIdentifier hash];
  localizedSpecificTitle = [(LNAppShortcutParameterPresentation *)self localizedSpecificTitle];
  v6 = [localizedSpecificTitle hash] ^ v4;
  optionsCollections = [(LNAppShortcutParameterPresentation *)self optionsCollections];
  v8 = [optionsCollections hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = LNAppShortcutParameterPresentation;
    if ([(LNAppShortcutParameterPresentation *)&v24 isEqual:equalCopy])
    {
      v5 = equalCopy;
      if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        LOBYTE(v11) = 0;
LABEL_29:

        goto LABEL_30;
      }

      parameterIdentifier = [(LNAppShortcutParameterPresentation *)self parameterIdentifier];
      parameterIdentifier2 = [(LNAppShortcutParameterPresentation *)v5 parameterIdentifier];
      v8 = parameterIdentifier;
      v9 = parameterIdentifier2;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        LOBYTE(v11) = 0;
        v12 = v9;
        v13 = v8;
        if (!v8 || !v9)
        {
          goto LABEL_27;
        }

        v14 = [v8 isEqualToString:v9];

        if (!v14)
        {
          LOBYTE(v11) = 0;
LABEL_28:

          goto LABEL_29;
        }
      }

      localizedSpecificTitle = [(LNAppShortcutParameterPresentation *)self localizedSpecificTitle];
      localizedSpecificTitle2 = [(LNAppShortcutParameterPresentation *)v5 localizedSpecificTitle];
      v13 = localizedSpecificTitle;
      v17 = localizedSpecificTitle2;
      v12 = v17;
      if (v13 == v17)
      {
      }

      else
      {
        LOBYTE(v11) = 0;
        v18 = v17;
        v19 = v13;
        if (!v13 || !v17)
        {
LABEL_26:

LABEL_27:
          goto LABEL_28;
        }

        v11 = [v13 isEqualToString:v17];

        if (!v11)
        {
          goto LABEL_27;
        }
      }

      optionsCollections = [(LNAppShortcutParameterPresentation *)self optionsCollections];
      optionsCollections2 = [(LNAppShortcutParameterPresentation *)v5 optionsCollections];
      v19 = optionsCollections;
      v22 = optionsCollections2;
      v18 = v22;
      if (v19 == v22)
      {
        LOBYTE(v11) = 1;
      }

      else
      {
        LOBYTE(v11) = 0;
        if (v19 && v22)
        {
          LOBYTE(v11) = [v19 isEqual:v22];
        }
      }

      goto LABEL_26;
    }

    LOBYTE(v11) = 0;
  }

LABEL_30:

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  parameterIdentifier = [(LNAppShortcutParameterPresentation *)self parameterIdentifier];
  localizedSpecificTitle = [(LNAppShortcutParameterPresentation *)self localizedSpecificTitle];
  optionsCollections = [(LNAppShortcutParameterPresentation *)self optionsCollections];
  v9 = [v3 stringWithFormat:@"<%@: %p, parameterIdentifier: %@, localizedSpecificTitle: %@, optionsCollections: %@>", v5, self, parameterIdentifier, localizedSpecificTitle, optionsCollections];

  return v9;
}

- (LNAppShortcutParameterPresentation)initWithParameterIdentifier:(id)identifier localizedSpecificTitle:(id)title optionsCollections:(id)collections
{
  identifierCopy = identifier;
  titleCopy = title;
  collectionsCopy = collections;
  if (identifierCopy)
  {
    if (titleCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAppShortcutParameterPresentation.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"parameterIdentifier"}];

    if (titleCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNAppShortcutParameterPresentation.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"localizedSpecificTitle"}];

LABEL_3:
  v23.receiver = self;
  v23.super_class = LNAppShortcutParameterPresentation;
  v12 = [(LNAppShortcutParameterPresentation *)&v23 init];
  if (v12)
  {
    v13 = [identifierCopy copy];
    parameterIdentifier = v12->_parameterIdentifier;
    v12->_parameterIdentifier = v13;

    v15 = [titleCopy copy];
    localizedSpecificTitle = v12->_localizedSpecificTitle;
    v12->_localizedSpecificTitle = v15;

    v17 = [collectionsCopy copy];
    optionsCollections = v12->_optionsCollections;
    v12->_optionsCollections = v17;

    v19 = v12;
  }

  return v12;
}

@end