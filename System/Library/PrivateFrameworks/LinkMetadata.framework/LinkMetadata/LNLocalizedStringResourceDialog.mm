@interface LNLocalizedStringResourceDialog
- (BOOL)isEqual:(id)equal;
- (LNLocalizedStringResourceDialog)initWithCoder:(id)coder;
- (LNLocalizedStringResourceDialog)initWithFullString:(id)string supportingString:(id)supportingString systemImageName:(id)name localeIdentifier:(id)identifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNLocalizedStringResourceDialog

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = LNLocalizedStringResourceDialog;
  coderCopy = coder;
  [(LNDialog *)&v8 encodeWithCoder:coderCopy];
  v5 = [(LNLocalizedStringResourceDialog *)self fullString:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"fullString"];

  supportingString = [(LNLocalizedStringResourceDialog *)self supportingString];
  [coderCopy encodeObject:supportingString forKey:@"supportingString"];

  systemImageName = [(LNLocalizedStringResourceDialog *)self systemImageName];
  [coderCopy encodeObject:systemImageName forKey:@"systemImageName"];
}

- (LNLocalizedStringResourceDialog)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullString"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportingString"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemImageName"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localeIdentifier"];
    if (v8)
    {
      self = [(LNLocalizedStringResourceDialog *)self initWithFullString:v5 supportingString:v6 systemImageName:v7 localeIdentifier:v8];
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
    v24.receiver = self;
    v24.super_class = LNLocalizedStringResourceDialog;
    if ([(LNDialog *)&v24 isEqual:equalCopy])
    {
      v5 = equalCopy;
      if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        LOBYTE(v11) = 0;
LABEL_29:

        goto LABEL_30;
      }

      fullString = [(LNLocalizedStringResourceDialog *)self fullString];
      fullString2 = [(LNLocalizedStringResourceDialog *)v5 fullString];
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

      supportingString = [(LNLocalizedStringResourceDialog *)self supportingString];
      supportingString2 = [(LNLocalizedStringResourceDialog *)v5 supportingString];
      v13 = supportingString;
      v17 = supportingString2;
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

      systemImageName = [(LNLocalizedStringResourceDialog *)self systemImageName];
      systemImageName2 = [(LNLocalizedStringResourceDialog *)v5 systemImageName];
      v19 = systemImageName;
      v22 = systemImageName2;
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

- (LNLocalizedStringResourceDialog)initWithFullString:(id)string supportingString:(id)supportingString systemImageName:(id)name localeIdentifier:(id)identifier
{
  stringCopy = string;
  supportingStringCopy = supportingString;
  nameCopy = name;
  identifierCopy = identifier;
  if (!stringCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNLocalizedStringResourceDialog.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"fullString"}];
  }

  v25.receiver = self;
  v25.super_class = LNLocalizedStringResourceDialog;
  v15 = [(LNDialog *)&v25 initWithLocaleIdentifier:identifierCopy];
  if (v15)
  {
    v16 = [stringCopy copy];
    fullString = v15->_fullString;
    v15->_fullString = v16;

    v18 = [supportingStringCopy copy];
    supportingString = v15->_supportingString;
    v15->_supportingString = v18;

    v20 = [nameCopy copy];
    systemImageName = v15->_systemImageName;
    v15->_systemImageName = v20;

    v22 = v15;
  }

  return v15;
}

@end