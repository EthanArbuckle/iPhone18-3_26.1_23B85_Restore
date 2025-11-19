@interface LNActionSummary
- (BOOL)isEqual:(id)a3;
- (LNActionSummary)initWithCoder:(id)a3;
- (LNActionSummary)initWithSummaryString:(id)a3 bundleURL:(id)a4 table:(id)a5 otherParameterIdentifiers:(id)a6;
- (id)description;
- (id)localizedFormatStringForLocaleIdentifier:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNActionSummary

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

    v7 = [(LNActionSummary *)self summaryString];
    v8 = [(LNActionSummary *)v6 summaryString];
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

      v15 = [v9 isEqual:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_34:

        goto LABEL_35;
      }
    }

    v16 = [(LNActionSummary *)self bundleURL];
    v17 = [(LNActionSummary *)v6 bundleURL];
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

    v22 = [(LNActionSummary *)self table];
    v23 = [(LNActionSummary *)v6 table];
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

      LODWORD(v12) = [v20 isEqual:v24];

      if (!v12)
      {
        goto LABEL_32;
      }
    }

    v38 = v20;
    v27 = [(LNActionSummary *)self otherParameterIdentifiers];
    v28 = [(LNActionSummary *)v6 otherParameterIdentifiers];

    if (v27 == v28)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      v12 = [(LNActionSummary *)self otherParameterIdentifiers];
      if (v12)
      {
        v29 = [(LNActionSummary *)v6 otherParameterIdentifiers];

        if (v29)
        {
          v30 = MEMORY[0x1E695DFD8];
          v37 = [(LNActionSummary *)self otherParameterIdentifiers];
          v36 = [v30 setWithArray:v37];
          v31 = MEMORY[0x1E695DFD8];
          v32 = [(LNActionSummary *)v6 otherParameterIdentifiers];
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
  v3 = [(LNActionSummary *)self summaryString];
  v4 = [v3 hash];
  v5 = [(LNActionSummary *)self bundleURL];
  v6 = [v5 hash] ^ v4;
  v7 = [(LNActionSummary *)self table];
  v8 = [v7 hash];
  v9 = [(LNActionSummary *)self otherParameterIdentifiers];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (void)encodeWithCoder:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(LNActionSummary *)self summaryString];
  [v4 encodeObject:v5 forKey:@"summaryString"];

  v6 = [(LNActionSummary *)self bundleURL];
  [v4 encodeObject:v6 forKey:@"bundleURL"];

  v7 = [(LNActionSummary *)self table];
  [v4 encodeObject:v7 forKey:@"table"];

  v8 = [(LNActionSummary *)self otherParameterIdentifiers];
  [v4 encodeObject:v8 forKey:@"otherParameterIdentifiers"];

  v9 = [MEMORY[0x1E696AF00] currentThread];
  v10 = [v9 threadDictionary];
  v11 = [v10 objectForKeyedSubscript:@"LNStaticDeferredLocalizedStringLocaleIdentifier"];

  if (v11)
  {
    v12 = [(LNActionSummary *)self localizedFormatStringForLocaleIdentifier:v11];
    v13 = v12;
    if (v12)
    {
      v16 = v11;
      v17[0] = v12;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      [v4 encodeObject:v14 forKey:@"prelocalizedStrings"];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (LNActionSummary)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"otherParameterIdentifiers"];

  if (v8)
  {
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"summaryString"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleURL"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"table"];
    self = [(LNActionSummary *)self initWithSummaryString:v9 bundleURL:v10 table:v11 otherParameterIdentifiers:v8];
    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"prelocalizedStrings"];
    prelocalizedStrings = self->_prelocalizedStrings;
    self->_prelocalizedStrings = v15;

    v17 = self;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNActionSummary *)self summaryString];
  v7 = [(LNActionSummary *)self bundleURL];
  v8 = [(LNActionSummary *)self table];
  v9 = [(LNActionSummary *)self otherParameterIdentifiers];
  v10 = [v9 valueForKeyPath:@"description"];
  v11 = [v10 componentsJoinedByString:{@", "}];
  v12 = [v3 stringWithFormat:@"<%@: %p, summaryString: %@, bundleURL: %@, table: %@, otherParameterIdentifiers: [%@]>", v5, self, v6, v7, v8, v11];

  return v12;
}

- (id)localizedFormatStringForLocaleIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v4];
  }

  else
  {
    [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  }
  v5 = ;
  v6 = [v5 localeIdentifier];
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = v6;
  v8 = [(LNActionSummary *)self prelocalizedStrings];
  v9 = [v5 localeIdentifier];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [(LNActionSummary *)self prelocalizedStrings];
    v12 = [v5 localeIdentifier];
    v13 = [(LNStaticDeferredLocalizedString *)v11 objectForKeyedSubscript:v12];
  }

  else
  {
LABEL_7:
    v13 = [(LNActionSummary *)self summaryString];

    if (!v13)
    {
      goto LABEL_10;
    }

    v14 = [LNStaticDeferredLocalizedString alloc];
    v15 = [(LNActionSummary *)self summaryString];
    v16 = [v15 formatString];
    v17 = [(LNActionSummary *)self table];
    v18 = [(LNActionSummary *)self bundleURL];
    v11 = [(LNStaticDeferredLocalizedString *)v14 initWithKey:v16 table:v17 bundleURL:v18];

    v13 = [(LNStaticDeferredLocalizedString *)v11 localizedStringForLocaleIdentifier:v4];
  }

LABEL_10:

  return v13;
}

- (LNActionSummary)initWithSummaryString:(id)a3 bundleURL:(id)a4 table:(id)a5 otherParameterIdentifiers:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v14)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"LNActionSummary.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"otherParameterIdentifiers"}];
  }

  v27.receiver = self;
  v27.super_class = LNActionSummary;
  v15 = [(LNActionSummary *)&v27 init];
  if (v15)
  {
    v16 = [v11 copy];
    summaryString = v15->_summaryString;
    v15->_summaryString = v16;

    v18 = [v12 copy];
    bundleURL = v15->_bundleURL;
    v15->_bundleURL = v18;

    v20 = [v13 copy];
    table = v15->_table;
    v15->_table = v20;

    v22 = [v14 copy];
    otherParameterIdentifiers = v15->_otherParameterIdentifiers;
    v15->_otherParameterIdentifiers = v22;

    v24 = v15;
  }

  return v15;
}

@end