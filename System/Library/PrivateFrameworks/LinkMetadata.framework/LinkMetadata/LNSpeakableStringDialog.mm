@interface LNSpeakableStringDialog
- (BOOL)isEqual:(id)a3;
- (LNSpeakableStringDialog)initWithCoder:(id)a3;
- (LNSpeakableStringDialog)initWithFullSpeakableString:(id)a3 supportingSpeakableString:(id)a4 systemImageName:(id)a5 localeIdentifier:(id)a6;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNSpeakableStringDialog

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = LNSpeakableStringDialog;
  v4 = a3;
  [(LNDialog *)&v8 encodeWithCoder:v4];
  v5 = [(LNSpeakableStringDialog *)self fullSpeakableString:v8.receiver];
  [v4 encodeObject:v5 forKey:@"fullSpeakableString"];

  v6 = [(LNSpeakableStringDialog *)self supportingSpeakableString];
  [v4 encodeObject:v6 forKey:@"supportingSpeakableString"];

  v7 = [(LNSpeakableStringDialog *)self systemImageName];
  [v4 encodeObject:v7 forKey:@"systemImageName"];
}

- (LNSpeakableStringDialog)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fullSpeakableString"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supportingSpeakableString"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemImageName"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localeIdentifier"];
    if (v8)
    {
      self = [(LNSpeakableStringDialog *)self initWithFullSpeakableString:v5 supportingSpeakableString:v6 systemImageName:v7 localeIdentifier:v8];
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
    v24.super_class = LNSpeakableStringDialog;
    if ([(LNDialog *)&v24 isEqual:v4])
    {
      v5 = v4;
      if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        LOBYTE(v11) = 0;
LABEL_29:

        goto LABEL_30;
      }

      v6 = [(LNSpeakableStringDialog *)self fullSpeakableString];
      v7 = [(LNSpeakableStringDialog *)v5 fullSpeakableString];
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

      v15 = [(LNSpeakableStringDialog *)self supportingSpeakableString];
      v16 = [(LNSpeakableStringDialog *)v5 supportingSpeakableString];
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

      v20 = [(LNSpeakableStringDialog *)self systemImageName];
      v21 = [(LNSpeakableStringDialog *)v5 systemImageName];
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
  v6 = [(LNSpeakableStringDialog *)self fullSpeakableString];
  v7 = [(LNSpeakableStringDialog *)self supportingSpeakableString];
  v8 = [(LNSpeakableStringDialog *)self systemImageName];
  v9 = [v3 stringWithFormat:@"<%@: %p, fullSpeakableString: %@, supportingSpeakableString: %@, systemImageName: %@>", v5, self, v6, v7, v8];

  return v9;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = LNSpeakableStringDialog;
  v3 = [(LNDialog *)&v5 hash];
  return [(LNSpeakableString *)self->_fullSpeakableString hash]^ v3;
}

- (LNSpeakableStringDialog)initWithFullSpeakableString:(id)a3 supportingSpeakableString:(id)a4 systemImageName:(id)a5 localeIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"LNSpeakableStringDialog.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"fullSpeakableString"}];
  }

  v25.receiver = self;
  v25.super_class = LNSpeakableStringDialog;
  v15 = [(LNDialog *)&v25 initWithLocaleIdentifier:v14];
  if (v15)
  {
    v16 = [v11 copy];
    fullSpeakableString = v15->_fullSpeakableString;
    v15->_fullSpeakableString = v16;

    v18 = [v12 copy];
    supportingSpeakableString = v15->_supportingSpeakableString;
    v15->_supportingSpeakableString = v18;

    v20 = [v13 copy];
    systemImageName = v15->_systemImageName;
    v15->_systemImageName = v20;

    v22 = v15;
  }

  return v15;
}

@end