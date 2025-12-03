@interface LNActionSummary
- (BOOL)isEqual:(id)equal;
- (LNActionSummary)initWithCoder:(id)coder;
- (LNActionSummary)initWithSummaryString:(id)string bundleURL:(id)l table:(id)table otherParameterIdentifiers:(id)identifiers;
- (id)description;
- (id)localizedFormatStringForLocaleIdentifier:(id)identifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNActionSummary

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(otherParameterIdentifiers3) = 0;
LABEL_35:

      goto LABEL_36;
    }

    summaryString = [(LNActionSummary *)self summaryString];
    summaryString2 = [(LNActionSummary *)v6 summaryString];
    v9 = summaryString;
    v10 = summaryString2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(otherParameterIdentifiers3) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_33;
      }

      v15 = [v9 isEqual:v10];

      if (!v15)
      {
        LOBYTE(otherParameterIdentifiers3) = 0;
LABEL_34:

        goto LABEL_35;
      }
    }

    bundleURL = [(LNActionSummary *)self bundleURL];
    bundleURL2 = [(LNActionSummary *)v6 bundleURL];
    v14 = bundleURL;
    v18 = bundleURL2;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(otherParameterIdentifiers3) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
        goto LABEL_32;
      }

      v21 = [v14 isEqual:v18];

      if (!v21)
      {
        LOBYTE(otherParameterIdentifiers3) = 0;
LABEL_33:

        goto LABEL_34;
      }
    }

    table = [(LNActionSummary *)self table];
    table2 = [(LNActionSummary *)v6 table];
    v20 = table;
    v24 = table2;
    v19 = v24;
    if (v20 == v24)
    {
    }

    else
    {
      LOBYTE(otherParameterIdentifiers3) = 0;
      v25 = v24;
      v26 = v20;
      if (!v20 || !v24)
      {
        goto LABEL_28;
      }

      LODWORD(otherParameterIdentifiers3) = [v20 isEqual:v24];

      if (!otherParameterIdentifiers3)
      {
        goto LABEL_32;
      }
    }

    v38 = v20;
    otherParameterIdentifiers = [(LNActionSummary *)self otherParameterIdentifiers];
    otherParameterIdentifiers2 = [(LNActionSummary *)v6 otherParameterIdentifiers];

    if (otherParameterIdentifiers == otherParameterIdentifiers2)
    {
      LOBYTE(otherParameterIdentifiers3) = 1;
    }

    else
    {
      otherParameterIdentifiers3 = [(LNActionSummary *)self otherParameterIdentifiers];
      if (otherParameterIdentifiers3)
      {
        otherParameterIdentifiers4 = [(LNActionSummary *)v6 otherParameterIdentifiers];

        if (otherParameterIdentifiers4)
        {
          v30 = MEMORY[0x1E695DFD8];
          otherParameterIdentifiers5 = [(LNActionSummary *)self otherParameterIdentifiers];
          v36 = [v30 setWithArray:otherParameterIdentifiers5];
          v31 = MEMORY[0x1E695DFD8];
          otherParameterIdentifiers6 = [(LNActionSummary *)v6 otherParameterIdentifiers];
          v33 = [v31 setWithArray:otherParameterIdentifiers6];
          LOBYTE(otherParameterIdentifiers3) = [v36 isEqualToSet:v33];

          v25 = v36;
          v26 = otherParameterIdentifiers5;
          v20 = v38;
LABEL_28:
          v34 = v26;

LABEL_32:
          goto LABEL_33;
        }

        LOBYTE(otherParameterIdentifiers3) = 0;
      }
    }

    v20 = v38;
    goto LABEL_32;
  }

  LOBYTE(otherParameterIdentifiers3) = 1;
LABEL_36:

  return otherParameterIdentifiers3;
}

- (unint64_t)hash
{
  summaryString = [(LNActionSummary *)self summaryString];
  v4 = [summaryString hash];
  bundleURL = [(LNActionSummary *)self bundleURL];
  v6 = [bundleURL hash] ^ v4;
  table = [(LNActionSummary *)self table];
  v8 = [table hash];
  otherParameterIdentifiers = [(LNActionSummary *)self otherParameterIdentifiers];
  v10 = v8 ^ [otherParameterIdentifiers hash];

  return v6 ^ v10;
}

- (void)encodeWithCoder:(id)coder
{
  v17[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  summaryString = [(LNActionSummary *)self summaryString];
  [coderCopy encodeObject:summaryString forKey:@"summaryString"];

  bundleURL = [(LNActionSummary *)self bundleURL];
  [coderCopy encodeObject:bundleURL forKey:@"bundleURL"];

  table = [(LNActionSummary *)self table];
  [coderCopy encodeObject:table forKey:@"table"];

  otherParameterIdentifiers = [(LNActionSummary *)self otherParameterIdentifiers];
  [coderCopy encodeObject:otherParameterIdentifiers forKey:@"otherParameterIdentifiers"];

  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v11 = [threadDictionary objectForKeyedSubscript:@"LNStaticDeferredLocalizedStringLocaleIdentifier"];

  if (v11)
  {
    v12 = [(LNActionSummary *)self localizedFormatStringForLocaleIdentifier:v11];
    v13 = v12;
    if (v12)
    {
      v16 = v11;
      v17[0] = v12;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      [coderCopy encodeObject:v14 forKey:@"prelocalizedStrings"];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (LNActionSummary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"otherParameterIdentifiers"];

  if (v8)
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"summaryString"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleURL"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"table"];
    self = [(LNActionSummary *)self initWithSummaryString:v9 bundleURL:v10 table:v11 otherParameterIdentifiers:v8];
    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"prelocalizedStrings"];
    prelocalizedStrings = self->_prelocalizedStrings;
    self->_prelocalizedStrings = v15;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  summaryString = [(LNActionSummary *)self summaryString];
  bundleURL = [(LNActionSummary *)self bundleURL];
  table = [(LNActionSummary *)self table];
  otherParameterIdentifiers = [(LNActionSummary *)self otherParameterIdentifiers];
  v10 = [otherParameterIdentifiers valueForKeyPath:@"description"];
  v11 = [v10 componentsJoinedByString:{@", "}];
  v12 = [v3 stringWithFormat:@"<%@: %p, summaryString: %@, bundleURL: %@, table: %@, otherParameterIdentifiers: [%@]>", v5, self, summaryString, bundleURL, table, v11];

  return v12;
}

- (id)localizedFormatStringForLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:identifierCopy];
  }

  else
  {
    [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  }
  v5 = ;
  localeIdentifier = [v5 localeIdentifier];
  if (!localeIdentifier)
  {
    goto LABEL_7;
  }

  v7 = localeIdentifier;
  prelocalizedStrings = [(LNActionSummary *)self prelocalizedStrings];
  localeIdentifier2 = [v5 localeIdentifier];
  v10 = [prelocalizedStrings objectForKeyedSubscript:localeIdentifier2];

  if (v10)
  {
    prelocalizedStrings2 = [(LNActionSummary *)self prelocalizedStrings];
    localeIdentifier3 = [v5 localeIdentifier];
    summaryString = [(LNStaticDeferredLocalizedString *)prelocalizedStrings2 objectForKeyedSubscript:localeIdentifier3];
  }

  else
  {
LABEL_7:
    summaryString = [(LNActionSummary *)self summaryString];

    if (!summaryString)
    {
      goto LABEL_10;
    }

    v14 = [LNStaticDeferredLocalizedString alloc];
    summaryString2 = [(LNActionSummary *)self summaryString];
    formatString = [summaryString2 formatString];
    table = [(LNActionSummary *)self table];
    bundleURL = [(LNActionSummary *)self bundleURL];
    prelocalizedStrings2 = [(LNStaticDeferredLocalizedString *)v14 initWithKey:formatString table:table bundleURL:bundleURL];

    summaryString = [(LNStaticDeferredLocalizedString *)prelocalizedStrings2 localizedStringForLocaleIdentifier:identifierCopy];
  }

LABEL_10:

  return summaryString;
}

- (LNActionSummary)initWithSummaryString:(id)string bundleURL:(id)l table:(id)table otherParameterIdentifiers:(id)identifiers
{
  stringCopy = string;
  lCopy = l;
  tableCopy = table;
  identifiersCopy = identifiers;
  if (!identifiersCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNActionSummary.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"otherParameterIdentifiers"}];
  }

  v27.receiver = self;
  v27.super_class = LNActionSummary;
  v15 = [(LNActionSummary *)&v27 init];
  if (v15)
  {
    v16 = [stringCopy copy];
    summaryString = v15->_summaryString;
    v15->_summaryString = v16;

    v18 = [lCopy copy];
    bundleURL = v15->_bundleURL;
    v15->_bundleURL = v18;

    v20 = [tableCopy copy];
    table = v15->_table;
    v15->_table = v20;

    v22 = [identifiersCopy copy];
    otherParameterIdentifiers = v15->_otherParameterIdentifiers;
    v15->_otherParameterIdentifiers = v22;

    v24 = v15;
  }

  return v15;
}

@end