@interface PKTextContactFieldConfiguration
- (PKTextContactFieldConfiguration)initWithCoder:(id)coder;
- (PKTextContactFieldConfiguration)initWithDictionary:(id)dictionary;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKTextContactFieldConfiguration

- (PKTextContactFieldConfiguration)initWithDictionary:(id)dictionary
{
  v43 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v34.receiver = self;
  v34.super_class = PKTextContactFieldConfiguration;
  v5 = [(PKContactFieldConfiguration *)&v34 initWithType:1];
  if (!v5)
  {
    goto LABEL_53;
  }

  v5->_minLength = [dictionaryCopy PKIntegerForKey:@"minLength"];
  v5->_maxLength = [dictionaryCopy PKIntegerForKey:@"maxLength"];
  v5->_numeric = [dictionaryCopy PKBoolForKey:@"numeric"];
  v6 = [dictionaryCopy PKStringForKey:@"displayFormat"];
  displayFormat = v5->_displayFormat;
  v5->_displayFormat = v6;

  v8 = [dictionaryCopy PKStringForKey:@"displayFormatPlaceholder"];
  displayFormatPlaceholder = v5->_displayFormatPlaceholder;
  v5->_displayFormatPlaceholder = v8;

  v5->_keepPaddingCharactersForSubmission = [dictionaryCopy PKBoolForKey:@"keepPaddingCharactersForSubmission"];
  v5->_isValidCharacterSet = [dictionaryCopy PKBoolForKey:@"isValidCharacterSet"];
  v10 = [dictionaryCopy PKArrayForKey:@"characterSetDescriptions"];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    if ([v12 count])
    {
      v13 = objc_alloc_init(MEMORY[0x1E696AD48]);
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v35 objects:buf count:16];
      if (v15)
      {
        v16 = v15;
        v32 = v12;
        v17 = *v36;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v36 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v35 + 1) + 8 * i);
            if ([v19 isEqualToString:@"alphanumericCharacterSet"])
            {
              alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
            }

            else if ([v19 isEqualToString:@"capitalizedLetterCharacterSet"])
            {
              alphanumericCharacterSet = [MEMORY[0x1E696AB08] capitalizedLetterCharacterSet];
            }

            else if ([v19 isEqualToString:@"controlCharacterSet"])
            {
              alphanumericCharacterSet = [MEMORY[0x1E696AB08] controlCharacterSet];
            }

            else if ([v19 isEqualToString:@"decimalDigitCharacterSet"])
            {
              alphanumericCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
            }

            else if ([v19 isEqualToString:@"decomposableCharacterSet"])
            {
              alphanumericCharacterSet = [MEMORY[0x1E696AB08] decomposableCharacterSet];
            }

            else if ([v19 isEqualToString:@"illegalCharacterSet"])
            {
              alphanumericCharacterSet = [MEMORY[0x1E696AB08] illegalCharacterSet];
            }

            else if ([v19 isEqualToString:@"letterCharacterSet"])
            {
              alphanumericCharacterSet = [MEMORY[0x1E696AB08] letterCharacterSet];
            }

            else if ([v19 isEqualToString:@"lowercaseLetterCharacterSet"])
            {
              alphanumericCharacterSet = [MEMORY[0x1E696AB08] lowercaseLetterCharacterSet];
            }

            else if ([v19 isEqualToString:@"newlineCharacterSet"])
            {
              alphanumericCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
            }

            else if ([v19 isEqualToString:@"nonBaseCharacterSet"])
            {
              alphanumericCharacterSet = [MEMORY[0x1E696AB08] nonBaseCharacterSet];
            }

            else if ([v19 isEqualToString:@"punctuationCharacterSet"])
            {
              alphanumericCharacterSet = [MEMORY[0x1E696AB08] punctuationCharacterSet];
            }

            else if ([v19 isEqualToString:@"symbolCharacterSet"])
            {
              alphanumericCharacterSet = [MEMORY[0x1E696AB08] symbolCharacterSet];
            }

            else if ([v19 isEqualToString:@"uppercaseLetterCharacterSet"])
            {
              alphanumericCharacterSet = [MEMORY[0x1E696AB08] uppercaseLetterCharacterSet];
            }

            else if ([v19 isEqualToString:@"whitespaceAndNewlineCharacterSet"])
            {
              alphanumericCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
            }

            else
            {
              if (([v19 isEqualToString:@"whitespaceCharacterSet"] & 1) == 0)
              {

LABEL_45:
                v13 = 0;
                goto LABEL_46;
              }

              alphanumericCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
            }

            v21 = alphanumericCharacterSet;

            if (!v21)
            {
              goto LABEL_45;
            }

            [v13 formUnionWithCharacterSet:v21];
          }

          v16 = [v14 countByEnumeratingWithState:&v35 objects:buf count:16];
          if (v16)
          {
            continue;
          }

          break;
        }

LABEL_46:
        v12 = v32;
      }

      v22 = [v13 copy];
    }

    else
    {
      v22 = 0;
    }

    characterSet = v5->_characterSet;
    v5->_characterSet = v22;

    if (!v5->_characterSet)
    {
      v30 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v40 = v5;
        v41 = 2112;
        v42 = v12;
        _os_log_impl(&dword_1AD337000, v30, OS_LOG_TYPE_DEFAULT, "%@: Failed to initialize validCharacterSet with array: %@", buf, 0x16u);
      }

      goto LABEL_60;
    }
  }

  v24 = [dictionaryCopy PKStringForKey:@"validRegex"];
  if (v24)
  {
    v33 = 0;
    v25 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:v24 options:0 error:&v33];
    v26 = v33;
    validRegex = v5->_validRegex;
    v5->_validRegex = v25;

    if (!v5->_validRegex || v26)
    {
      v29 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v40 = v5;
        v41 = 2112;
        v42 = v26;
        _os_log_impl(&dword_1AD337000, v29, OS_LOG_TYPE_DEFAULT, "%@: Failed to initialize validRegex: %@", buf, 0x16u);
      }

LABEL_60:
      v28 = 0;
      goto LABEL_61;
    }
  }

LABEL_53:
  v28 = v5;
LABEL_61:

  return v28;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"%@: '%ld'; ", @"minLength", self->_minLength];
  [v3 appendFormat:@"%@: '%ld'; ", @"maxLength", self->_maxLength];
  if (self->_numeric)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 appendFormat:@"%@: '%@'; ", @"numeric", v4];
  [v3 appendFormat:@"%@: '%@'; ", @"displayFormat", self->_displayFormat];
  [v3 appendFormat:@"%@: '%@'; ", @"displayFormatPlaceholder", self->_displayFormatPlaceholder];
  if (self->_keepPaddingCharactersForSubmission)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"%@: '%@'; ", @"keepPaddingCharactersForSubmission", v5];
  [v3 appendFormat:@"%@: '%@'; ", @"characterSet", self->_characterSet];
  if (self->_isValidCharacterSet)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 appendFormat:@"%@: '%@'; ", @"isValidCharacterSet", v6];
  [v3 appendFormat:@"%@: '%@'; ", @"validRegex", self->_validRegex];
  [v3 appendFormat:@">"];
  v7 = [v3 copy];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKTextContactFieldConfiguration;
  coderCopy = coder;
  [(PKContactFieldConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_minLength forKey:{@"minLength", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_maxLength forKey:@"maxLength"];
  [coderCopy encodeBool:self->_numeric forKey:@"numeric"];
  [coderCopy encodeObject:self->_displayFormat forKey:@"displayFormat"];
  [coderCopy encodeObject:self->_displayFormatPlaceholder forKey:@"displayFormatPlaceholder"];
  [coderCopy encodeBool:self->_keepPaddingCharactersForSubmission forKey:@"keepPaddingCharactersForSubmission"];
  [coderCopy encodeObject:self->_characterSet forKey:@"characterSet"];
  [coderCopy encodeBool:self->_isValidCharacterSet forKey:@"isValidCharacterSet"];
  [coderCopy encodeObject:self->_validRegex forKey:@"validRegex"];
}

- (PKTextContactFieldConfiguration)initWithCoder:(id)coder
{
  v23[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = PKTextContactFieldConfiguration;
  v5 = [(PKContactFieldConfiguration *)&v21 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_minLength = [coderCopy decodeIntegerForKey:@"minLength"];
    v5->_maxLength = [coderCopy decodeIntegerForKey:@"maxLength"];
    v5->_numeric = [coderCopy decodeBoolForKey:@"numeric"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayFormat"];
    displayFormat = v5->_displayFormat;
    v5->_displayFormat = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayFormatPlaceholder"];
    displayFormatPlaceholder = v5->_displayFormatPlaceholder;
    v5->_displayFormatPlaceholder = v8;

    v5->_keepPaddingCharactersForSubmission = [coderCopy decodeBoolForKey:@"keepPaddingCharactersForSubmission"];
    v5->_isValidCharacterSet = [coderCopy decodeBoolForKey:@"isValidCharacterSet"];
    v10 = objc_alloc(MEMORY[0x1E695DFD8]);
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    v12 = [v10 initWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"characterSet"];
    characterSet = v5->_characterSet;
    v5->_characterSet = v13;

    v15 = objc_alloc(MEMORY[0x1E695DFD8]);
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    v17 = [v15 initWithArray:v16];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"validRegex"];
    validRegex = v5->_validRegex;
    v5->_validRegex = v18;
  }

  return v5;
}

@end