@interface LNCATDialog
- (BOOL)isEqual:(id)equal;
- (LNCATDialog)initWithCoder:(id)coder;
- (LNCATDialog)initWithIdentifier:(id)identifier templateDirectoryURL:(id)l parameters:(id)parameters localeIdentifier:(id)localeIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNCATDialog

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = LNCATDialog;
  coderCopy = coder;
  [(LNDialog *)&v10 encodeWithCoder:coderCopy];
  v5 = [(LNCATDialog *)self identifier:v10.receiver];
  [coderCopy encodeObject:v5 forKey:@"identifier"];

  templateDirectoryURL = [(LNCATDialog *)self templateDirectoryURL];
  [coderCopy encodeObject:templateDirectoryURL forKey:@"templateDirectoryURL"];

  templateDirectoryURL2 = [(LNCATDialog *)self templateDirectoryURL];
  v8 = MEMORY[0x193AD9180]();
  [coderCopy encodeObject:v8 forKey:@"securityScopeData"];

  parameters = [(LNCATDialog *)self parameters];
  [coderCopy encodeObject:parameters forKey:@"parameters"];
}

- (LNCATDialog)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"templateDirectoryURL"];
    if (v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"securityScopeData"];
      if (v7)
      {
        MEMORY[0x193AD9170](v6, v7);
      }

      v8 = MEMORY[0x1E695DFD8];
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
      v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"parameters"];

      if (v12)
      {
        v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localeIdentifier"];
        if (v13)
        {
          self = [(LNCATDialog *)self initWithIdentifier:v5 templateDirectoryURL:v6 parameters:v12 localeIdentifier:v13];
          selfCopy = self;
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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
    v24.super_class = LNCATDialog;
    if ([(LNDialog *)&v24 isEqual:equalCopy])
    {
      v5 = equalCopy;
      if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        LOBYTE(v11) = 0;
LABEL_29:

        goto LABEL_30;
      }

      identifier = [(LNCATDialog *)self identifier];
      identifier2 = [(LNCATDialog *)v5 identifier];
      v8 = identifier;
      v9 = identifier2;
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

      templateDirectoryURL = [(LNCATDialog *)self templateDirectoryURL];
      templateDirectoryURL2 = [(LNCATDialog *)v5 templateDirectoryURL];
      v13 = templateDirectoryURL;
      v17 = templateDirectoryURL2;
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

      parameters = [(LNCATDialog *)self parameters];
      parameters2 = [(LNCATDialog *)v5 parameters];
      v19 = parameters;
      v22 = parameters2;
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

- (LNCATDialog)initWithIdentifier:(id)identifier templateDirectoryURL:(id)l parameters:(id)parameters localeIdentifier:(id)localeIdentifier
{
  identifierCopy = identifier;
  lCopy = l;
  parametersCopy = parameters;
  localeIdentifierCopy = localeIdentifier;
  if (identifierCopy)
  {
    if (lCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNCATDialog.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"templateDirectoryURL"}];

    if (parametersCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNCATDialog.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

  if (!lCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (parametersCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNCATDialog.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"parameters"}];

LABEL_4:
  v27.receiver = self;
  v27.super_class = LNCATDialog;
  v15 = [(LNDialog *)&v27 initWithLocaleIdentifier:localeIdentifierCopy];
  if (v15)
  {
    v16 = [identifierCopy copy];
    identifier = v15->_identifier;
    v15->_identifier = v16;

    v18 = [lCopy copy];
    templateDirectoryURL = v15->_templateDirectoryURL;
    v15->_templateDirectoryURL = v18;

    v20 = [parametersCopy copy];
    parameters = v15->_parameters;
    v15->_parameters = v20;

    v22 = v15;
  }

  return v15;
}

@end