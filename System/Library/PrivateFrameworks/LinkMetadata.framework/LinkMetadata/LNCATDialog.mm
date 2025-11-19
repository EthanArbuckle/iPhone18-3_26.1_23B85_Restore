@interface LNCATDialog
- (BOOL)isEqual:(id)a3;
- (LNCATDialog)initWithCoder:(id)a3;
- (LNCATDialog)initWithIdentifier:(id)a3 templateDirectoryURL:(id)a4 parameters:(id)a5 localeIdentifier:(id)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNCATDialog

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = LNCATDialog;
  v4 = a3;
  [(LNDialog *)&v10 encodeWithCoder:v4];
  v5 = [(LNCATDialog *)self identifier:v10.receiver];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(LNCATDialog *)self templateDirectoryURL];
  [v4 encodeObject:v6 forKey:@"templateDirectoryURL"];

  v7 = [(LNCATDialog *)self templateDirectoryURL];
  v8 = MEMORY[0x193AD9180]();
  [v4 encodeObject:v8 forKey:@"securityScopeData"];

  v9 = [(LNCATDialog *)self parameters];
  [v4 encodeObject:v9 forKey:@"parameters"];
}

- (LNCATDialog)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"templateDirectoryURL"];
    if (v6)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"securityScopeData"];
      if (v7)
      {
        MEMORY[0x193AD9170](v6, v7);
      }

      v8 = MEMORY[0x1E695DFD8];
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
      v12 = [v4 decodeObjectOfClasses:v11 forKey:@"parameters"];

      if (v12)
      {
        v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localeIdentifier"];
        if (v13)
        {
          self = [(LNCATDialog *)self initWithIdentifier:v5 templateDirectoryURL:v6 parameters:v12 localeIdentifier:v13];
          v14 = self;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
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
    v24.super_class = LNCATDialog;
    if ([(LNDialog *)&v24 isEqual:v4])
    {
      v5 = v4;
      if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        LOBYTE(v11) = 0;
LABEL_29:

        goto LABEL_30;
      }

      v6 = [(LNCATDialog *)self identifier];
      v7 = [(LNCATDialog *)v5 identifier];
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

      v15 = [(LNCATDialog *)self templateDirectoryURL];
      v16 = [(LNCATDialog *)v5 templateDirectoryURL];
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

      v20 = [(LNCATDialog *)self parameters];
      v21 = [(LNCATDialog *)v5 parameters];
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
          LOBYTE(v11) = [v19 isEqualToDictionary:v22];
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
  v5.super_class = LNCATDialog;
  v3 = [(LNDialog *)&v5 hash];
  return [(NSString *)self->_identifier hash]^ v3;
}

- (LNCATDialog)initWithIdentifier:(id)a3 templateDirectoryURL:(id)a4 parameters:(id)a5 localeIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_8:
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"LNCATDialog.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"templateDirectoryURL"}];

    if (v13)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"LNCATDialog.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v13)
  {
    goto LABEL_4;
  }

LABEL_9:
  v26 = [MEMORY[0x1E696AAA8] currentHandler];
  [v26 handleFailureInMethod:a2 object:self file:@"LNCATDialog.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"parameters"}];

LABEL_4:
  v27.receiver = self;
  v27.super_class = LNCATDialog;
  v15 = [(LNDialog *)&v27 initWithLocaleIdentifier:v14];
  if (v15)
  {
    v16 = [v11 copy];
    identifier = v15->_identifier;
    v15->_identifier = v16;

    v18 = [v12 copy];
    templateDirectoryURL = v15->_templateDirectoryURL;
    v15->_templateDirectoryURL = v18;

    v20 = [v13 copy];
    parameters = v15->_parameters;
    v15->_parameters = v20;

    v22 = v15;
  }

  return v15;
}

@end