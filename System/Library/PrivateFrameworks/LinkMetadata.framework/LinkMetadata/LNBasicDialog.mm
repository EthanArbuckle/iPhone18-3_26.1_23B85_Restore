@interface LNBasicDialog
- (BOOL)isEqual:(id)equal;
- (LNBasicDialog)initWithCoder:(id)coder;
- (LNBasicDialog)initWithFullString:(id)string supportingString:(id)supportingString localeIdentifier:(id)identifier;
- (LNBasicDialog)initWithPrintedString:(id)string spokenString:(id)spokenString localeIdentifier:(id)identifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNBasicDialog

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = LNBasicDialog;
  coderCopy = coder;
  [(LNDialog *)&v7 encodeWithCoder:coderCopy];
  v5 = [(LNBasicDialog *)self fullString:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"fullString"];

  supportingString = [(LNBasicDialog *)self supportingString];
  [coderCopy encodeObject:supportingString forKey:@"supportingString"];
}

- (LNBasicDialog)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullString"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportingString"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localeIdentifier"];
    if (v7)
    {
      self = [(LNBasicDialog *)self initWithFullString:v5 supportingString:v6 localeIdentifier:v7];
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
    v18.receiver = self;
    v18.super_class = LNBasicDialog;
    if ([(LNDialog *)&v18 isEqual:equalCopy])
    {
      v5 = equalCopy;
      if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        LOBYTE(v11) = 0;
LABEL_22:

        goto LABEL_23;
      }

      fullString = [(LNBasicDialog *)self fullString];
      fullString2 = [(LNBasicDialog *)v5 fullString];
      v8 = fullString;
      v9 = fullString2;
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
LABEL_20:

LABEL_21:
          goto LABEL_22;
        }

        v11 = [v8 isEqual:v9];

        if (!v11)
        {
          goto LABEL_21;
        }
      }

      supportingString = [(LNBasicDialog *)self supportingString];
      supportingString2 = [(LNBasicDialog *)v5 supportingString];
      v13 = supportingString;
      v16 = supportingString2;
      v12 = v16;
      if (v13 == v16)
      {
        LOBYTE(v11) = 1;
      }

      else
      {
        LOBYTE(v11) = 0;
        if (v13 && v16)
        {
          LOBYTE(v11) = [v13 isEqual:v16];
        }
      }

      goto LABEL_20;
    }

    LOBYTE(v11) = 0;
  }

LABEL_23:

  return v11;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = LNBasicDialog;
  v3 = [(LNDialog *)&v5 hash];
  return [(LNDeferredLocalizedString *)self->_fullString hash]^ v3;
}

- (LNBasicDialog)initWithPrintedString:(id)string spokenString:(id)spokenString localeIdentifier:(id)identifier
{
  stringCopy = string;
  spokenStringCopy = spokenString;
  identifierCopy = identifier;
  if (!stringCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNBasicDialog.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"printedString"}];
  }

  v12 = [(LNBasicDialog *)self initWithFullString:stringCopy supportingString:0 localeIdentifier:identifierCopy];
  if (v12)
  {
    v13 = [stringCopy copy];
    printedString = v12->_printedString;
    v12->_printedString = v13;

    v15 = [spokenStringCopy copy];
    spokenString = v12->_spokenString;
    v12->_spokenString = v15;

    v17 = v12;
  }

  return v12;
}

- (LNBasicDialog)initWithFullString:(id)string supportingString:(id)supportingString localeIdentifier:(id)identifier
{
  stringCopy = string;
  supportingStringCopy = supportingString;
  identifierCopy = identifier;
  if (!stringCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNBasicDialog.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"fullString"}];
  }

  v22.receiver = self;
  v22.super_class = LNBasicDialog;
  v12 = [(LNDialog *)&v22 initWithLocaleIdentifier:identifierCopy];
  if (v12)
  {
    v13 = [stringCopy copy];
    fullString = v12->_fullString;
    v12->_fullString = v13;

    v15 = [supportingStringCopy copy];
    supportingString = v12->_supportingString;
    v12->_supportingString = v15;

    v17 = [stringCopy copy];
    printedString = v12->_printedString;
    v12->_printedString = v17;

    v19 = v12;
  }

  return v12;
}

@end