@interface LNSpeakableStringDialog
- (BOOL)isEqual:(id)equal;
- (LNSpeakableStringDialog)initWithCoder:(id)coder;
- (LNSpeakableStringDialog)initWithFullSpeakableString:(id)string supportingSpeakableString:(id)speakableString systemImageName:(id)name localeIdentifier:(id)identifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNSpeakableStringDialog

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = LNSpeakableStringDialog;
  coderCopy = coder;
  [(LNDialog *)&v8 encodeWithCoder:coderCopy];
  v5 = [(LNSpeakableStringDialog *)self fullSpeakableString:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"fullSpeakableString"];

  supportingSpeakableString = [(LNSpeakableStringDialog *)self supportingSpeakableString];
  [coderCopy encodeObject:supportingSpeakableString forKey:@"supportingSpeakableString"];

  systemImageName = [(LNSpeakableStringDialog *)self systemImageName];
  [coderCopy encodeObject:systemImageName forKey:@"systemImageName"];
}

- (LNSpeakableStringDialog)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullSpeakableString"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportingSpeakableString"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemImageName"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localeIdentifier"];
    if (v8)
    {
      self = [(LNSpeakableStringDialog *)self initWithFullSpeakableString:v5 supportingSpeakableString:v6 systemImageName:v7 localeIdentifier:v8];
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
    v24.super_class = LNSpeakableStringDialog;
    if ([(LNDialog *)&v24 isEqual:equalCopy])
    {
      v5 = equalCopy;
      if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        LOBYTE(v11) = 0;
LABEL_29:

        goto LABEL_30;
      }

      fullSpeakableString = [(LNSpeakableStringDialog *)self fullSpeakableString];
      fullSpeakableString2 = [(LNSpeakableStringDialog *)v5 fullSpeakableString];
      v8 = fullSpeakableString;
      v9 = fullSpeakableString2;
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

      supportingSpeakableString = [(LNSpeakableStringDialog *)self supportingSpeakableString];
      supportingSpeakableString2 = [(LNSpeakableStringDialog *)v5 supportingSpeakableString];
      v13 = supportingSpeakableString;
      v17 = supportingSpeakableString2;
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

      systemImageName = [(LNSpeakableStringDialog *)self systemImageName];
      systemImageName2 = [(LNSpeakableStringDialog *)v5 systemImageName];
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  fullSpeakableString = [(LNSpeakableStringDialog *)self fullSpeakableString];
  supportingSpeakableString = [(LNSpeakableStringDialog *)self supportingSpeakableString];
  systemImageName = [(LNSpeakableStringDialog *)self systemImageName];
  v9 = [v3 stringWithFormat:@"<%@: %p, fullSpeakableString: %@, supportingSpeakableString: %@, systemImageName: %@>", v5, self, fullSpeakableString, supportingSpeakableString, systemImageName];

  return v9;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = LNSpeakableStringDialog;
  v3 = [(LNDialog *)&v5 hash];
  return [(LNSpeakableString *)self->_fullSpeakableString hash]^ v3;
}

- (LNSpeakableStringDialog)initWithFullSpeakableString:(id)string supportingSpeakableString:(id)speakableString systemImageName:(id)name localeIdentifier:(id)identifier
{
  stringCopy = string;
  speakableStringCopy = speakableString;
  nameCopy = name;
  identifierCopy = identifier;
  if (!stringCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNSpeakableStringDialog.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"fullSpeakableString"}];
  }

  v25.receiver = self;
  v25.super_class = LNSpeakableStringDialog;
  v15 = [(LNDialog *)&v25 initWithLocaleIdentifier:identifierCopy];
  if (v15)
  {
    v16 = [stringCopy copy];
    fullSpeakableString = v15->_fullSpeakableString;
    v15->_fullSpeakableString = v16;

    v18 = [speakableStringCopy copy];
    supportingSpeakableString = v15->_supportingSpeakableString;
    v15->_supportingSpeakableString = v18;

    v20 = [nameCopy copy];
    systemImageName = v15->_systemImageName;
    v15->_systemImageName = v20;

    v22 = v15;
  }

  return v15;
}

@end