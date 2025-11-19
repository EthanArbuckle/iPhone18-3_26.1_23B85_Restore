@interface LNAppShortcutParameterPresentationMetadata
- (BOOL)isEqual:(id)a3;
- (LNAppShortcutParameterPresentationMetadata)initWithCoder:(id)a3;
- (LNAppShortcutParameterPresentationMetadata)initWithParameterIdentifier:(id)a3 specificTitle:(id)a4 localizationTable:(id)a5 optionsCollection:(id)a6;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNAppShortcutParameterPresentationMetadata

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
LABEL_35:

      goto LABEL_36;
    }

    v7 = [(LNAppShortcutParameterPresentationMetadata *)self parameterIdentifier];
    v8 = [(LNAppShortcutParameterPresentationMetadata *)v6 parameterIdentifier];
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
        goto LABEL_33;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_34:

        goto LABEL_35;
      }
    }

    v16 = [(LNAppShortcutParameterPresentationMetadata *)self specificTitle];
    v17 = [(LNAppShortcutParameterPresentationMetadata *)v6 specificTitle];
    v14 = v16;
    v18 = v17;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
        goto LABEL_32;
      }

      v21 = [v14 isEqual:v18];

      if (!v21)
      {
        LOBYTE(v12) = 0;
LABEL_33:

        goto LABEL_34;
      }
    }

    v22 = [(LNAppShortcutParameterPresentationMetadata *)self localizationTable];
    v23 = [(LNAppShortcutParameterPresentationMetadata *)v6 localizationTable];
    v20 = v22;
    v24 = v23;
    v19 = v24;
    if (v20 == v24)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v25 = v24;
      v26 = v20;
      if (!v20 || !v24)
      {
        goto LABEL_28;
      }

      LODWORD(v12) = [v20 isEqualToString:v24];

      if (!v12)
      {
        goto LABEL_32;
      }
    }

    v38 = v20;
    v27 = [(LNAppShortcutParameterPresentationMetadata *)self optionsCollection];
    v28 = [(LNAppShortcutParameterPresentationMetadata *)v6 optionsCollection];

    if (v27 == v28)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      v12 = [(LNAppShortcutParameterPresentationMetadata *)self optionsCollection];
      if (v12)
      {
        v29 = [(LNAppShortcutParameterPresentationMetadata *)v6 optionsCollection];

        if (v29)
        {
          v30 = MEMORY[0x1E695DFD8];
          v37 = [(LNAppShortcutParameterPresentationMetadata *)self optionsCollection];
          v36 = [v30 setWithArray:v37];
          v31 = MEMORY[0x1E695DFD8];
          v32 = [(LNAppShortcutParameterPresentationMetadata *)v6 optionsCollection];
          v33 = [v31 setWithArray:v32];
          LOBYTE(v12) = [v36 isEqualToSet:v33];

          v25 = v36;
          v26 = v37;
          v20 = v38;
LABEL_28:
          v34 = v26;

LABEL_32:
          goto LABEL_33;
        }

        LOBYTE(v12) = 0;
      }
    }

    v20 = v38;
    goto LABEL_32;
  }

  LOBYTE(v12) = 1;
LABEL_36:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(LNAppShortcutParameterPresentationMetadata *)self parameterIdentifier];
  v4 = [v3 hash];
  v5 = [(LNAppShortcutParameterPresentationMetadata *)self specificTitle];
  v6 = [v5 hash] ^ v4;
  v7 = [(LNAppShortcutParameterPresentationMetadata *)self localizationTable];
  v8 = [v7 hash];
  v9 = [(LNAppShortcutParameterPresentationMetadata *)self optionsCollection];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNAppShortcutParameterPresentationMetadata *)self parameterIdentifier];
  v7 = [(LNAppShortcutParameterPresentationMetadata *)self specificTitle];
  v8 = [(LNAppShortcutParameterPresentationMetadata *)self localizationTable];
  v9 = [(LNAppShortcutParameterPresentationMetadata *)self optionsCollection];
  v10 = [v3 stringWithFormat:@"<%@: %p, parameterIdentifier: %@, specificTitle: %@, localizationTable: %@, optionsCollection: %@>", v5, self, v6, v7, v8, v9];

  return v10;
}

- (LNAppShortcutParameterPresentationMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameterIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"specificTitle"];
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
    v14 = 0;
  }

  else
  {
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizationTable"];
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"optionsCollection"];

    self = [(LNAppShortcutParameterPresentationMetadata *)self initWithParameterIdentifier:v5 specificTitle:v7 localizationTable:v9 optionsCollection:v13];
    v14 = self;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNAppShortcutParameterPresentationMetadata *)self parameterIdentifier];
  [v4 encodeObject:v5 forKey:@"parameterIdentifier"];

  v6 = [(LNAppShortcutParameterPresentationMetadata *)self specificTitle];
  [v4 encodeObject:v6 forKey:@"specificTitle"];

  v7 = [(LNAppShortcutParameterPresentationMetadata *)self localizationTable];
  [v4 encodeObject:v7 forKey:@"localizationTable"];

  v8 = [(LNAppShortcutParameterPresentationMetadata *)self optionsCollection];
  [v4 encodeObject:v8 forKey:@"optionsCollection"];
}

- (LNAppShortcutParameterPresentationMetadata)initWithParameterIdentifier:(id)a3 specificTitle:(id)a4 localizationTable:(id)a5 optionsCollection:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"LNAppShortcutParameterPresentationMetadata.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"parameterIdentifier"}];
  }

  v27.receiver = self;
  v27.super_class = LNAppShortcutParameterPresentationMetadata;
  v15 = [(LNAppShortcutParameterPresentationMetadata *)&v27 init];
  if (v15)
  {
    v16 = [v11 copy];
    parameterIdentifier = v15->_parameterIdentifier;
    v15->_parameterIdentifier = v16;

    v18 = [v12 copy];
    specificTitle = v15->_specificTitle;
    v15->_specificTitle = v18;

    v20 = [v13 copy];
    localizationTable = v15->_localizationTable;
    v15->_localizationTable = v20;

    v22 = [v14 copy];
    optionsCollection = v15->_optionsCollection;
    v15->_optionsCollection = v22;

    v24 = v15;
  }

  return v15;
}

@end