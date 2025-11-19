@interface LNAppShortcutParameterPresentation
- (BOOL)isEqual:(id)a3;
- (LNAppShortcutParameterPresentation)initWithCoder:(id)a3;
- (LNAppShortcutParameterPresentation)initWithParameterIdentifier:(id)a3 localizedSpecificTitle:(id)a4 optionsCollections:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNAppShortcutParameterPresentation

- (LNAppShortcutParameterPresentation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameterIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedSpecificTitle"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"optionsCollections"];

  v11 = 0;
  if (v5 && v6)
  {
    self = [(LNAppShortcutParameterPresentation *)self initWithParameterIdentifier:v5 localizedSpecificTitle:v6 optionsCollections:v10];
    v11 = self;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNAppShortcutParameterPresentation *)self parameterIdentifier];
  [v4 encodeObject:v5 forKey:@"parameterIdentifier"];

  v6 = [(LNAppShortcutParameterPresentation *)self localizedSpecificTitle];
  [v4 encodeObject:v6 forKey:@"localizedSpecificTitle"];

  v7 = [(LNAppShortcutParameterPresentation *)self optionsCollections];
  [v4 encodeObject:v7 forKey:@"optionsCollections"];
}

- (unint64_t)hash
{
  v3 = [(LNAppShortcutParameterPresentation *)self parameterIdentifier];
  v4 = [v3 hash];
  v5 = [(LNAppShortcutParameterPresentation *)self localizedSpecificTitle];
  v6 = [v5 hash] ^ v4;
  v7 = [(LNAppShortcutParameterPresentation *)self optionsCollections];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = LNAppShortcutParameterPresentation;
    if ([(LNAppShortcutParameterPresentation *)&v24 isEqual:v4])
    {
      v5 = v4;
      if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        LOBYTE(v11) = 0;
LABEL_29:

        goto LABEL_30;
      }

      v6 = [(LNAppShortcutParameterPresentation *)self parameterIdentifier];
      v7 = [(LNAppShortcutParameterPresentation *)v5 parameterIdentifier];
      v8 = v6;
      v9 = v7;
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

      v15 = [(LNAppShortcutParameterPresentation *)self localizedSpecificTitle];
      v16 = [(LNAppShortcutParameterPresentation *)v5 localizedSpecificTitle];
      v13 = v15;
      v17 = v16;
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

      v20 = [(LNAppShortcutParameterPresentation *)self optionsCollections];
      v21 = [(LNAppShortcutParameterPresentation *)v5 optionsCollections];
      v19 = v20;
      v22 = v21;
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
  v6 = [(LNAppShortcutParameterPresentation *)self parameterIdentifier];
  v7 = [(LNAppShortcutParameterPresentation *)self localizedSpecificTitle];
  v8 = [(LNAppShortcutParameterPresentation *)self optionsCollections];
  v9 = [v3 stringWithFormat:@"<%@: %p, parameterIdentifier: %@, localizedSpecificTitle: %@, optionsCollections: %@>", v5, self, v6, v7, v8];

  return v9;
}

- (LNAppShortcutParameterPresentation)initWithParameterIdentifier:(id)a3 localizedSpecificTitle:(id)a4 optionsCollections:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"LNAppShortcutParameterPresentation.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"parameterIdentifier"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"LNAppShortcutParameterPresentation.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"localizedSpecificTitle"}];

LABEL_3:
  v23.receiver = self;
  v23.super_class = LNAppShortcutParameterPresentation;
  v12 = [(LNAppShortcutParameterPresentation *)&v23 init];
  if (v12)
  {
    v13 = [v9 copy];
    parameterIdentifier = v12->_parameterIdentifier;
    v12->_parameterIdentifier = v13;

    v15 = [v10 copy];
    localizedSpecificTitle = v12->_localizedSpecificTitle;
    v12->_localizedSpecificTitle = v15;

    v17 = [v11 copy];
    optionsCollections = v12->_optionsCollections;
    v12->_optionsCollections = v17;

    v19 = v12;
  }

  return v12;
}

@end