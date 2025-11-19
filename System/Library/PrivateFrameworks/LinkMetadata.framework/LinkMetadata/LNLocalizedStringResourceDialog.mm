@interface LNLocalizedStringResourceDialog
- (BOOL)isEqual:(id)a3;
- (LNLocalizedStringResourceDialog)initWithCoder:(id)a3;
- (LNLocalizedStringResourceDialog)initWithFullString:(id)a3 supportingString:(id)a4 systemImageName:(id)a5 localeIdentifier:(id)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNLocalizedStringResourceDialog

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = LNLocalizedStringResourceDialog;
  v4 = a3;
  [(LNDialog *)&v8 encodeWithCoder:v4];
  v5 = [(LNLocalizedStringResourceDialog *)self fullString:v8.receiver];
  [v4 encodeObject:v5 forKey:@"fullString"];

  v6 = [(LNLocalizedStringResourceDialog *)self supportingString];
  [v4 encodeObject:v6 forKey:@"supportingString"];

  v7 = [(LNLocalizedStringResourceDialog *)self systemImageName];
  [v4 encodeObject:v7 forKey:@"systemImageName"];
}

- (LNLocalizedStringResourceDialog)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fullString"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supportingString"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemImageName"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localeIdentifier"];
    if (v8)
    {
      self = [(LNLocalizedStringResourceDialog *)self initWithFullString:v5 supportingString:v6 systemImageName:v7 localeIdentifier:v8];
      v9 = self;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
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
    v24.super_class = LNLocalizedStringResourceDialog;
    if ([(LNDialog *)&v24 isEqual:v4])
    {
      v5 = v4;
      if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        LOBYTE(v11) = 0;
LABEL_29:

        goto LABEL_30;
      }

      v6 = [(LNLocalizedStringResourceDialog *)self fullString];
      v7 = [(LNLocalizedStringResourceDialog *)v5 fullString];
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

        v14 = [v8 isEqual:v9];

        if (!v14)
        {
          LOBYTE(v11) = 0;
LABEL_28:

          goto LABEL_29;
        }
      }

      v15 = [(LNLocalizedStringResourceDialog *)self supportingString];
      v16 = [(LNLocalizedStringResourceDialog *)v5 supportingString];
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

        v11 = [v13 isEqual:v17];

        if (!v11)
        {
          goto LABEL_27;
        }
      }

      v20 = [(LNLocalizedStringResourceDialog *)self systemImageName];
      v21 = [(LNLocalizedStringResourceDialog *)v5 systemImageName];
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

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = LNLocalizedStringResourceDialog;
  v3 = [(LNDialog *)&v5 hash];
  return [(LNStaticDeferredLocalizedString *)self->_fullString hash]^ v3;
}

- (LNLocalizedStringResourceDialog)initWithFullString:(id)a3 supportingString:(id)a4 systemImageName:(id)a5 localeIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"LNLocalizedStringResourceDialog.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"fullString"}];
  }

  v25.receiver = self;
  v25.super_class = LNLocalizedStringResourceDialog;
  v15 = [(LNDialog *)&v25 initWithLocaleIdentifier:v14];
  if (v15)
  {
    v16 = [v11 copy];
    fullString = v15->_fullString;
    v15->_fullString = v16;

    v18 = [v12 copy];
    supportingString = v15->_supportingString;
    v15->_supportingString = v18;

    v20 = [v13 copy];
    systemImageName = v15->_systemImageName;
    v15->_systemImageName = v20;

    v22 = v15;
  }

  return v15;
}

@end