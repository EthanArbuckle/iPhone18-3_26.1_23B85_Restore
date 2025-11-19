@interface LNAppShortcutOptionsCollection
- (BOOL)isEqual:(id)a3;
- (LNAppShortcutOptionsCollection)initWithCoder:(id)a3;
- (LNAppShortcutOptionsCollection)initWithLocalizedTitle:(id)a3 systemImageName:(id)a4 optionsProviderReference:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNAppShortcutOptionsCollection

- (LNAppShortcutOptionsCollection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemImageName"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"optionsProviderReference"];

  if (v5)
  {
    self = [(LNAppShortcutOptionsCollection *)self initWithLocalizedTitle:v5 systemImageName:v6 optionsProviderReference:v7];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNAppShortcutOptionsCollection *)self localizedTitle];
  [v4 encodeObject:v5 forKey:@"localizedTitle"];

  v6 = [(LNAppShortcutOptionsCollection *)self systemImageName];
  [v4 encodeObject:v6 forKey:@"systemImageName"];

  v7 = [(LNAppShortcutOptionsCollection *)self optionsProviderReference];
  [v4 encodeObject:v7 forKey:@"optionsProviderReference"];
}

- (unint64_t)hash
{
  v3 = [(LNAppShortcutOptionsCollection *)self localizedTitle];
  v4 = [v3 hash];
  v5 = [(LNAppShortcutOptionsCollection *)self systemImageName];
  v6 = [v5 hash] ^ v4;
  v7 = [(LNAppShortcutOptionsCollection *)self optionsProviderReference];
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
    v24.super_class = LNAppShortcutOptionsCollection;
    if ([(LNAppShortcutOptionsCollection *)&v24 isEqual:v4])
    {
      v5 = v4;
      if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        LOBYTE(v11) = 0;
LABEL_29:

        goto LABEL_30;
      }

      v6 = [(LNAppShortcutOptionsCollection *)self localizedTitle];
      v7 = [(LNAppShortcutOptionsCollection *)v5 localizedTitle];
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

      v15 = [(LNAppShortcutOptionsCollection *)self systemImageName];
      v16 = [(LNAppShortcutOptionsCollection *)v5 systemImageName];
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

      v20 = [(LNAppShortcutOptionsCollection *)self optionsProviderReference];
      v21 = [(LNAppShortcutOptionsCollection *)v5 optionsProviderReference];
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
  v6 = [(LNAppShortcutOptionsCollection *)self localizedTitle];
  v7 = [(LNAppShortcutOptionsCollection *)self systemImageName];
  v8 = [(LNAppShortcutOptionsCollection *)self optionsProviderReference];
  v9 = [v3 stringWithFormat:@"<%@: %p, localizedTitle: %@, systemImageName: %@, optionsProviderReference: %@>", v5, self, v6, v7, v8];

  return v9;
}

- (LNAppShortcutOptionsCollection)initWithLocalizedTitle:(id)a3 systemImageName:(id)a4 optionsProviderReference:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"LNAppShortcutOptionsCollection.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"localizedTitle"}];
  }

  v20.receiver = self;
  v20.super_class = LNAppShortcutOptionsCollection;
  v12 = [(LNAppShortcutOptionsCollection *)&v20 init];
  if (v12)
  {
    v13 = [v9 copy];
    localizedTitle = v12->_localizedTitle;
    v12->_localizedTitle = v13;

    v15 = [v10 copy];
    systemImageName = v12->_systemImageName;
    v12->_systemImageName = v15;

    objc_storeStrong(&v12->_optionsProviderReference, a5);
    v17 = v12;
  }

  return v12;
}

@end