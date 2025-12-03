@interface PKPaymentSetupFieldText
+ (id)readOnlyPaymentSetupFieldWithDisplayName:(id)name value:(id)value;
- (BOOL)hasDisplayFormat;
- (BOOL)submissionStringMeetsAllRequirements;
- (BOOL)submissionStringMeetsValidationRegex;
- (NSCharacterSet)allowedCharacters;
- (PKPaymentSetupFieldText)initWithIdentifier:(id)identifier type:(unint64_t)type;
- (id)_allowedCharacters;
- (id)_amountFormatter;
- (id)_currencyFormatter;
- (id)_stringByApplyingCurrencyFormatter:(id)formatter allowPartialFractional:(BOOL)fractional;
- (id)_stringByApplyingNumericFractionalFormat:(id)format;
- (id)_submissionStringForValue:(id)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)decimalSeparator;
- (id)displayFormatPaddingCharacters;
- (id)displayString;
- (id)stringByApplyingDisplayFormat:(id)format allowPartialFractional:(BOOL)fractional;
- (void)setAllowedCharacters:(id)characters;
- (void)setCurrencyCode:(id)code;
- (void)setCurrentValue:(id)value;
- (void)setDefaultValue:(id)value;
- (void)setNumericFractional:(BOOL)fractional;
- (void)setSecureVisibleText:(BOOL)text;
- (void)updateDisplayFormat:(id)format;
- (void)updateWithAttribute:(id)attribute;
- (void)updateWithConfiguration:(id)configuration;
@end

@implementation PKPaymentSetupFieldText

- (PKPaymentSetupFieldText)initWithIdentifier:(id)identifier type:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = PKPaymentSetupFieldText;
  result = [(PKPaymentSetupField *)&v5 initWithIdentifier:identifier type:type];
  if (result)
  {
    result->_minLength = 0;
    result->_maxLength = 0;
    result->_secureText = 1;
    result->_secureTextVisibility = 2;
    result->_numeric = 0;
    result->_numericFractional = 0;
    result->_luhnCheck = 0;
    result->_keepPaddingCharactersForSubmission = 0;
    result->_alignment = 0;
    result->_codeOnError = 0;
  }

  return result;
}

+ (id)readOnlyPaymentSetupFieldWithDisplayName:(id)name value:(id)value
{
  valueCopy = value;
  nameCopy = name;
  v7 = [[PKPaymentSetupFieldText alloc] initWithIdentifier:nameCopy type:1];
  [(PKPaymentSetupField *)v7 setLocalizedDisplayName:nameCopy];

  currentValue = v7->super._currentValue;
  v7->super._currentValue = valueCopy;

  [(PKPaymentSetupField *)v7 setReadonly:1];

  return v7;
}

- (void)setCurrentValue:(id)value
{
  valueCopy = value;
  allowedCharacters = self->_allowedCharacters;
  v6 = valueCopy;
  if (allowedCharacters)
  {
    invertedSet = [(NSCharacterSet *)allowedCharacters invertedSet];
    v8 = [valueCopy rangeOfCharacterFromSet:invertedSet options:0];

    v6 = valueCopy;
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {

      v6 = 0;
    }
  }

  v9.receiver = self;
  v9.super_class = PKPaymentSetupFieldText;
  [(PKPaymentSetupField *)&v9 setCurrentValue:v6];
}

- (void)setDefaultValue:(id)value
{
  valueCopy = value;
  allowedCharacters = self->_allowedCharacters;
  if (allowedCharacters)
  {
    invertedSet = [(NSCharacterSet *)allowedCharacters invertedSet];
    v7 = [valueCopy rangeOfCharacterFromSet:invertedSet options:0];

    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {

      valueCopy = 0;
    }
  }

  v8.receiver = self;
  v8.super_class = PKPaymentSetupFieldText;
  [(PKPaymentSetupField *)&v8 setDefaultValue:valueCopy];
}

- (void)setCurrencyCode:(id)code
{
  codeCopy = code;
  v5 = [codeCopy length];
  v6 = codeCopy;
  if (v5)
  {
    _currencyFormatter = self->_currencyCode;
    v8 = codeCopy;
    _allowedCharacters = v8;
    if (_currencyFormatter != v8)
    {
      if (v8 && _currencyFormatter)
      {
        v10 = [(NSString *)_currencyFormatter isEqualToString:v8];

        v6 = codeCopy;
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
      }

      objc_storeStrong(&self->_currencyCode, code);
      _currencyFormatter = [(PKPaymentSetupFieldText *)self _currencyFormatter];
      [(NSString *)_currencyFormatter setCurrencyCode:self->_currencyCode];
      v11 = objc_alloc(MEMORY[0x1E695DFD8]);
      groupingSeparator = [(NSString *)_currencyFormatter groupingSeparator];
      currencySymbol = [(NSString *)_currencyFormatter currencySymbol];
      v14 = [v11 initWithObjects:{groupingSeparator, currencySymbol, @" ", @" ", 0}];
      allObjects = [v14 allObjects];
      paddingCharacters = self->_paddingCharacters;
      self->_paddingCharacters = allObjects;

      _allowedCharacters = [(PKPaymentSetupFieldText *)self _allowedCharacters];
      v17 = [_allowedCharacters copy];
      allowedCharacters = self->_allowedCharacters;
      self->_allowedCharacters = v17;
    }

    v6 = codeCopy;
  }

LABEL_10:
}

- (void)setNumericFractional:(BOOL)fractional
{
  if (self->_numericFractional != fractional)
  {
    self->_numericFractional = fractional;
    currencyFormatter = self->_currencyFormatter;
    self->_currencyFormatter = 0;

    amountFormatter = self->_amountFormatter;
    self->_amountFormatter = 0;
  }
}

- (void)setSecureVisibleText:(BOOL)text
{
  textCopy = text;
  if ([(PKPaymentSetupFieldText *)self isSecureVisibleText]!= text)
  {
    v5 = 1;
    if (textCopy)
    {
      v5 = 2;
    }

    self->_secureTextVisibility = v5;
  }
}

- (id)displayString
{
  currentValue = [(PKPaymentSetupField *)self currentValue];
  if (!currentValue)
  {
    currentValue = [(PKPaymentSetupField *)self defaultValue];
  }

  if ([(PKPaymentSetupFieldText *)self hasDisplayFormat])
  {
    v4 = [(PKPaymentSetupFieldText *)self stringByApplyingDisplayFormat:currentValue];

    currentValue = v4;
  }

  return currentValue;
}

- (id)_submissionStringForValue:(id)value
{
  v27 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  defaultValue = valueCopy;
  if (![valueCopy length])
  {
    defaultValue = [(PKPaymentSetupField *)self defaultValue];
  }

  decimalSeparator = [(PKPaymentSetupFieldText *)self decimalSeparator];
  if ([(PKPaymentSetupFieldText *)self hasDisplayFormat]&& !self->_keepPaddingCharactersForSubmission)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    displayFormatPaddingCharacters = [(PKPaymentSetupFieldText *)self displayFormatPaddingCharacters];
    v8 = [displayFormatPaddingCharacters countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(displayFormatPaddingCharacters);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          if (!-[PKPaymentSetupFieldText isNumericFractional](self, "isNumericFractional") || ([v12 isEqualToString:decimalSeparator] & 1) == 0)
          {
            v13 = [defaultValue stringByReplacingOccurrencesOfString:v12 withString:&stru_1F227FD28];

            defaultValue = v13;
          }
        }

        v9 = [displayFormatPaddingCharacters countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }
  }

  if ([(PKPaymentSetupFieldText *)self isNumericFractional])
  {
    v14 = [defaultValue rangeOfString:decimalSeparator options:4];
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = [defaultValue stringByReplacingOccurrencesOfString:decimalSeparator withString:&stru_1F227FD28 options:0 range:{0, v14}];

      defaultValue = v15;
    }
  }

  _currencyFormatter = [(PKPaymentSetupFieldText *)self _currencyFormatter];
  if (_currencyFormatter)
  {
    v17 = _currencyFormatter;
    if ([(PKPaymentSetupFieldText *)self isNumeric])
    {
    }

    else
    {
      isNumericFractional = [(PKPaymentSetupFieldText *)self isNumericFractional];

      if (!isNumericFractional)
      {
        goto LABEL_24;
      }
    }

    v19 = [defaultValue stringByApplyingTransform:*MEMORY[0x1E695DA50] reverse:0];

    defaultValue = v19;
  }

LABEL_24:
  pk_zString = [defaultValue pk_zString];

  return pk_zString;
}

- (id)decimalSeparator
{
  _currencyFormatter = [(PKPaymentSetupFieldText *)self _currencyFormatter];
  v4 = _currencyFormatter;
  if (_currencyFormatter)
  {
    currencyDecimalSeparator = [_currencyFormatter currencyDecimalSeparator];
  }

  else
  {
    _amountFormatter = [(PKPaymentSetupFieldText *)self _amountFormatter];
    currencyDecimalSeparator = [_amountFormatter decimalSeparator];
  }

  return currencyDecimalSeparator;
}

- (BOOL)submissionStringMeetsAllRequirements
{
  submissionString = [(PKPaymentSetupField *)self submissionString];
  if ([(PKPaymentSetupFieldText *)self minLength])
  {
    v4 = [submissionString length];
    v5 = v4 >= [(PKPaymentSetupFieldText *)self minLength];
  }

  else
  {
    v5 = 1;
  }

  if ([(PKPaymentSetupFieldText *)self maxLength])
  {
    v6 = [submissionString length];
    v5 &= v6 <= [(PKPaymentSetupFieldText *)self maxLength];
  }

  if ([(PKPaymentSetupFieldText *)self useLuhnCheck])
  {
    v5 &= PKLuhnCheck(submissionString);
  }

  if ([(PKPaymentSetupFieldText *)self isNumeric]|| [(PKPaymentSetupFieldText *)self isNumericFractional])
  {
    letterCharacterSet = [MEMORY[0x1E696AB08] letterCharacterSet];
    v8 = [submissionString rangeOfCharacterFromSet:letterCharacterSet] == 0x7FFFFFFFFFFFFFFFLL;

    v5 &= v8;
  }

  submissionStringMeetsValidationRegex = [(PKPaymentSetupFieldText *)self submissionStringMeetsValidationRegex];

  return submissionStringMeetsValidationRegex & v5;
}

- (BOOL)submissionStringMeetsValidationRegex
{
  submissionString = [(PKPaymentSetupField *)self submissionString];
  validationRegex = [(PKPaymentSetupFieldText *)self validationRegex];
  v5 = 1;
  if (validationRegex && submissionString)
  {
    v5 = [validationRegex numberOfMatchesInString:submissionString options:0 range:{0, objc_msgSend(submissionString, "length")}] != 0;
  }

  return v5;
}

- (id)_currencyFormatter
{
  if (self->_currencyCode)
  {
    currencyFormatter = self->_currencyFormatter;
    if (!currencyFormatter)
    {
      v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];
      v5 = objc_alloc_init(MEMORY[0x1E696ADA0]);
      v6 = self->_currencyFormatter;
      self->_currencyFormatter = v5;

      [(NSNumberFormatter *)self->_currencyFormatter setLocale:v4];
      [(NSNumberFormatter *)self->_currencyFormatter setCurrencyCode:self->_currencyCode];
      [(NSNumberFormatter *)self->_currencyFormatter setNumberStyle:2];
      if (![(PKPaymentSetupFieldText *)self isNumericFractional])
      {
        [(NSNumberFormatter *)self->_currencyFormatter setMinimumFractionDigits:0];
      }

      amountFormatter = self->_amountFormatter;
      self->_amountFormatter = 0;

      currencyFormatter = self->_currencyFormatter;
    }

    v8 = currencyFormatter;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_amountFormatter
{
  amountFormatter = self->_amountFormatter;
  if (!amountFormatter)
  {
    v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];
    v5 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v6 = self->_amountFormatter;
    self->_amountFormatter = v5;

    [(NSNumberFormatter *)self->_amountFormatter setLocale:v4];
    _currencyFormatter = [(PKPaymentSetupFieldText *)self _currencyFormatter];
    v8 = _currencyFormatter;
    if (_currencyFormatter)
    {
      -[NSNumberFormatter setMinimumFractionDigits:](self->_amountFormatter, "setMinimumFractionDigits:", [_currencyFormatter minimumFractionDigits]);
      -[NSNumberFormatter setMaximumFractionDigits:](self->_amountFormatter, "setMaximumFractionDigits:", [v8 maximumFractionDigits]);
      -[NSNumberFormatter setMinimumIntegerDigits:](self->_amountFormatter, "setMinimumIntegerDigits:", [v8 minimumIntegerDigits]);
      -[NSNumberFormatter setMaximumIntegerDigits:](self->_amountFormatter, "setMaximumIntegerDigits:", [v8 maximumIntegerDigits]);
    }

    else if ([(PKPaymentSetupFieldText *)self isNumericFractional])
    {
      [(NSNumberFormatter *)self->_amountFormatter setMinimumFractionDigits:100];
    }

    amountFormatter = self->_amountFormatter;
  }

  return amountFormatter;
}

- (id)_allowedCharacters
{
  decimalDigitCharacterSet = [MEMORY[0x1E696AD48] decimalDigitCharacterSet];
  paddingCharacters = self->_paddingCharacters;
  if (paddingCharacters)
  {
    v5 = [(NSArray *)paddingCharacters componentsJoinedByString:&stru_1F227FD28];
    [decimalDigitCharacterSet addCharactersInString:v5];
  }

  if ([(PKPaymentSetupFieldText *)self isNumericFractional])
  {
    decimalSeparator = [(PKPaymentSetupFieldText *)self decimalSeparator];
    [decimalDigitCharacterSet addCharactersInString:decimalSeparator];
  }

  v7 = [decimalDigitCharacterSet copy];
  allowedCharacters = self->_allowedCharacters;
  self->_allowedCharacters = v7;

  return decimalDigitCharacterSet;
}

- (BOOL)hasDisplayFormat
{
  if (self->_currencyCode)
  {
    return 1;
  }

  displayFormat = [(PKPaymentSetupField *)self displayFormat];
  v2 = [displayFormat length] != 0;

  return v2;
}

- (id)_stringByApplyingCurrencyFormatter:(id)formatter allowPartialFractional:(BOOL)fractional
{
  fractionalCopy = fractional;
  formatterCopy = formatter;
  if (![formatterCopy length])
  {
    v23 = 0;
    goto LABEL_26;
  }

  _amountFormatter = [(PKPaymentSetupFieldText *)self _amountFormatter];
  _currencyFormatter = [(PKPaymentSetupFieldText *)self _currencyFormatter];
  groupingSeparator = [_currencyFormatter groupingSeparator];
  v10 = [formatterCopy stringByReplacingOccurrencesOfString:groupingSeparator withString:&stru_1F227FD28];

  currencySymbol = [_currencyFormatter currencySymbol];
  v12 = [v10 stringByReplacingOccurrencesOfString:currencySymbol withString:&stru_1F227FD28];

  if ([(PKPaymentSetupFieldText *)self isNumericFractional])
  {
    decimalSeparator = [(PKPaymentSetupFieldText *)self decimalSeparator];
    v14 = [v12 rangeOfString:decimalSeparator options:4];
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = [v12 stringByReplacingOccurrencesOfString:decimalSeparator withString:&stru_1F227FD28 options:0 range:{0, v14}];

      v12 = v15;
    }

    v16 = v12;
    v12 = [_amountFormatter numberFromString:v12];
    v17 = v16;
    v18 = decimalSeparator;
    v19 = v18;
    v20 = v17 == v18;
    if (v17 == v18)
    {

      v25 = v12;
      v12 = &unk_1F23B4940;
      v26 = v17;
    }

    else
    {
      if (v18 && v17)
      {
        v21 = [v17 isEqualToString:v18];

        if ((v21 & 1) == 0)
        {
          v20 = 0;
          goto LABEL_16;
        }

        v20 = 1;
        v22 = &unk_1F23B4940;
LABEL_15:

        v12 = v22;
LABEL_16:
        v27 = [_amountFormatter stringFromNumber:v12];
        v28 = [_currencyFormatter stringFromNumber:v12];
        v29 = v28;
        if (v20 && fractionalCopy)
        {
          v30 = [v28 rangeOfString:v19 options:4];
          v32 = v30 + v31;
        }

        else
        {
          if (!fractionalCopy || (v34 = [v17 length], v34 >= objc_msgSend(v27, "length")))
          {
            v33 = v29;
            goto LABEL_24;
          }

          v35 = [v17 length];
          v36 = [v29 length];
          v32 = v36 + v35 - [v27 length];
        }

        v33 = [v29 substringToIndex:v32];
LABEL_24:
        v24 = v33;

        goto LABEL_25;
      }

      v26 = v18;
      v25 = v17;
    }

    v22 = v12;

    v12 = v25;
    goto LABEL_15;
  }

  v19 = [_amountFormatter numberFromString:v12];
  v24 = [_currencyFormatter stringFromNumber:v19];
LABEL_25:

  formatterCopy = v24;
  v23 = formatterCopy;
LABEL_26:

  return v23;
}

- (id)_stringByApplyingNumericFractionalFormat:(id)format
{
  v32 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  if (!-[PKPaymentSetupFieldText isNumericFractional](self, "isNumericFractional") || ![formatCopy length])
  {
    v23 = 0;
    goto LABEL_26;
  }

  decimalSeparator = [(PKPaymentSetupFieldText *)self decimalSeparator];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  selfCopy = self;
  displayFormatPaddingCharacters = [(PKPaymentSetupFieldText *)self displayFormatPaddingCharacters];
  v7 = [displayFormatPaddingCharacters countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = v7;
  v9 = *v28;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v28 != v9)
      {
        objc_enumerationMutation(displayFormatPaddingCharacters);
      }

      v11 = *(*(&v27 + 1) + 8 * i);
      v12 = decimalSeparator;
      v13 = v11;
      v14 = v13;
      if (v12 == v13)
      {

        goto LABEL_16;
      }

      if (!decimalSeparator || !v13)
      {

LABEL_15:
        [formatCopy stringByReplacingOccurrencesOfString:v14 withString:&stru_1F227FD28];
        formatCopy = v12 = formatCopy;
LABEL_16:

        continue;
      }

      v15 = [v12 isEqualToString:v13];

      if ((v15 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v8 = [displayFormatPaddingCharacters countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v8);
LABEL_19:

  v16 = [formatCopy rangeOfString:decimalSeparator options:4];
  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [formatCopy stringByReplacingOccurrencesOfString:decimalSeparator withString:&stru_1F227FD28 options:0 range:{0, v16}];

    formatCopy = v17;
  }

  _amountFormatter = [(PKPaymentSetupFieldText *)selfCopy _amountFormatter];
  v19 = [_amountFormatter numberFromString:formatCopy];
  v20 = [_amountFormatter stringFromNumber:v19];
  v21 = [formatCopy length];
  if (v21 >= [v20 length])
  {
    v22 = v20;
  }

  else
  {
    v22 = [v20 substringToIndex:{objc_msgSend(formatCopy, "length")}];
  }

  v24 = v22;

  formatCopy = v24;
  v23 = formatCopy;
LABEL_26:

  return v23;
}

- (id)stringByApplyingDisplayFormat:(id)format allowPartialFractional:(BOOL)fractional
{
  fractionalCopy = fractional;
  formatCopy = format;
  _currencyFormatter = [(PKPaymentSetupFieldText *)self _currencyFormatter];

  if (_currencyFormatter)
  {
    v8 = [(PKPaymentSetupFieldText *)self _stringByApplyingCurrencyFormatter:formatCopy allowPartialFractional:fractionalCopy];
  }

  else
  {
    if ([(PKPaymentSetupFieldText *)self isNumericFractional]&& [(PKPaymentSetupFieldText *)self hasDisplayFormat])
    {
      v9 = [(PKPaymentSetupFieldText *)self _stringByApplyingNumericFractionalFormat:formatCopy];

      formatCopy = v9;
    }

    displayFormat = [(PKPaymentSetupField *)self displayFormat];
    displayFormatPaddingCharacters = [(PKPaymentSetupFieldText *)self displayFormatPaddingCharacters];
    v8 = PKApplyFormatToString(formatCopy, displayFormat, displayFormatPaddingCharacters);
  }

  return v8;
}

- (id)displayFormatPaddingCharacters
{
  v26 = *MEMORY[0x1E69E9840];
  paddingCharacters = self->_paddingCharacters;
  if (paddingCharacters)
  {
    v3 = paddingCharacters;
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    displayFormatPlaceholder = [(PKPaymentSetupFieldText *)self displayFormatPlaceholder];
    v7 = [displayFormatPlaceholder length];

    if (v7 == 1)
    {
      displayFormat = [(PKPaymentSetupField *)self displayFormat];
      if ([displayFormat length])
      {
        do
        {
          v9 = [displayFormat substringToIndex:1];
          displayFormatPlaceholder2 = [(PKPaymentSetupFieldText *)self displayFormatPlaceholder];
          if ([v9 isEqualToString:displayFormatPlaceholder2])
          {
          }

          else
          {
            v11 = [array containsObject:v9];

            if ((v11 & 1) == 0)
            {
              [array addObject:v9];
            }
          }

          v12 = [displayFormat substringFromIndex:1];

          displayFormat = v12;
        }

        while ([v12 length]);
      }

      else
      {
        v12 = displayFormat;
      }
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v13 = [&unk_1F23B3C08 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v22;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v22 != v15)
            {
              objc_enumerationMutation(&unk_1F23B3C08);
            }

            v17 = *(*(&v21 + 1) + 8 * i);
            displayFormat2 = [(PKPaymentSetupField *)self displayFormat];
            v19 = [displayFormat2 containsString:v17];

            if (v19)
            {
              [array addObject:v17];
            }
          }

          v14 = [&unk_1F23B3C08 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v14);
      }
    }

    v3 = [MEMORY[0x1E695DEC8] arrayWithArray:array];
  }

  return v3;
}

- (void)updateDisplayFormat:(id)format
{
  if (format)
  {
    [(PKPaymentSetupField *)self setDisplayFormat:?];

    [(PKPaymentSetupField *)self noteCurrentValueChanged];
  }
}

- (void)setAllowedCharacters:(id)characters
{
  charactersCopy = characters;
  allowedCharacters = self->_allowedCharacters;
  v7 = charactersCopy;
  if (!charactersCopy || !allowedCharacters)
  {
    if (allowedCharacters == charactersCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (([(NSCharacterSet *)charactersCopy isEqual:?]& 1) == 0)
  {
LABEL_6:
    objc_storeStrong(&self->_allowedCharacters, characters);
  }

LABEL_7:
}

- (NSCharacterSet)allowedCharacters
{
  allowedCharacters = self->_allowedCharacters;
  if (allowedCharacters)
  {
    decimalDigitCharacterSet = allowedCharacters;
LABEL_5:
    decimalDigitCharacterSet2 = decimalDigitCharacterSet;
    goto LABEL_6;
  }

  if ([(PKPaymentSetupFieldText *)self isNumeric])
  {
    decimalDigitCharacterSet = [MEMORY[0x1E696AD48] decimalDigitCharacterSet];
    goto LABEL_5;
  }

  if ([(PKPaymentSetupFieldText *)self isNumericFractional])
  {
    decimalDigitCharacterSet2 = [MEMORY[0x1E696AD48] decimalDigitCharacterSet];
    decimalSeparator = [(PKPaymentSetupFieldText *)self decimalSeparator];
    [decimalDigitCharacterSet2 addCharactersInString:decimalSeparator];
  }

  else
  {
    decimalDigitCharacterSet2 = 0;
  }

LABEL_6:

  return decimalDigitCharacterSet2;
}

- (void)updateWithAttribute:(id)attribute
{
  attributeCopy = attribute;
  v10.receiver = self;
  v10.super_class = PKPaymentSetupFieldText;
  [(PKPaymentSetupField *)&v10 updateWithAttribute:attributeCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = attributeCopy;
    -[PKPaymentSetupFieldText setMinLength:](self, "setMinLength:", [v5 minLength]);
    -[PKPaymentSetupFieldText setMaxLength:](self, "setMaxLength:", [v5 maxLength]);
    -[PKPaymentSetupFieldText setSecureText:](self, "setSecureText:", [v5 isSecureText]);
    -[PKPaymentSetupFieldText setSecureVisibleText:](self, "setSecureVisibleText:", [v5 isSecureVisibleText]);
    -[PKPaymentSetupFieldText setNumeric:](self, "setNumeric:", [v5 isNumeric]);
    -[PKPaymentSetupFieldText setLuhnCheck:](self, "setLuhnCheck:", [v5 useLuhnCheck]);
    defaultValue = [v5 defaultValue];
    if ([defaultValue length])
    {
      [(PKPaymentSetupFieldText *)self setDefaultValue:defaultValue];
    }

    defaultValue2 = [(PKPaymentSetupField *)self defaultValue];
    v8 = [defaultValue2 stringByApplyingTransform:*MEMORY[0x1E695DA48] reverse:0];

    if (v8)
    {
      [v5 setCurrentValue:v8];
    }

    displayFormatPlaceholder = [v5 displayFormatPlaceholder];
    if ([displayFormatPlaceholder length] == 1)
    {
      [(PKPaymentSetupFieldText *)self setDisplayFormatPlaceholder:displayFormatPlaceholder];
    }
  }
}

- (void)updateWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v43.receiver = self;
  v43.super_class = PKPaymentSetupFieldText;
  [(PKPaymentSetupField *)&v43 updateWithConfiguration:configurationCopy];
  v5 = [configurationCopy PKNumberForKey:@"minLength"];
  v6 = v5;
  if (v5)
  {
    -[PKPaymentSetupFieldText setMinLength:](self, "setMinLength:", [v5 unsignedIntegerValue]);
  }

  v7 = [configurationCopy PKNumberForKey:@"maxLength"];
  v8 = v7;
  if (v7)
  {
    -[PKPaymentSetupFieldText setMaxLength:](self, "setMaxLength:", [v7 unsignedIntegerValue]);
  }

  v9 = [configurationCopy PKNumberForKey:@"secureText"];
  v10 = v9;
  if (v9)
  {
    -[PKPaymentSetupFieldText setSecureText:](self, "setSecureText:", [v9 BOOLValue]);
  }

  v42 = v6;
  v11 = [configurationCopy PKStringForKey:@"secureTextVisibility"];
  v38 = v11;
  v40 = v10;
  if (v11)
  {
    v12 = v11;
    v13 = v12;
    if (v12 == @"none" || (v14 = [(__CFString *)v12 isEqualToString:@"none", v38, v10], v13, (v14 & 1) != 0))
    {
      v15 = 0;
    }

    else
    {
      v18 = v13;
      if (v18 == @"short_reveal" || (v19 = v18, v20 = [(__CFString *)v18 isEqualToString:@"short_reveal"], v19, (v20 & 1) != 0) || (v21 = v19, v21 != @"reveal") && (v22 = v21, v23 = [(__CFString *)v21 isEqualToString:@"reveal"], v22, !v23))
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }
    }

    self->_secureTextVisibility = v15;
  }

  else
  {
    v16 = [configurationCopy PKNumberForKey:{@"secureVisibleText", 0, v10}];
    v17 = v16;
    if (v16)
    {
      -[PKPaymentSetupFieldText setSecureVisibleText:](self, "setSecureVisibleText:", [v16 BOOLValue]);
    }
  }

  v24 = [configurationCopy PKNumberForKey:{@"numeric", v38}];
  v25 = v24;
  if (v24)
  {
    -[PKPaymentSetupFieldText setNumeric:](self, "setNumeric:", [v24 BOOLValue]);
  }

  v26 = [configurationCopy PKNumberForKey:@"numericFractional"];
  v27 = v26;
  if (v26)
  {
    -[PKPaymentSetupFieldText setNumericFractional:](self, "setNumericFractional:", [v26 BOOLValue]);
  }

  v28 = [configurationCopy PKNumberForKey:@"useLuhnCheck"];
  v29 = v28;
  if (v28)
  {
    -[PKPaymentSetupFieldText setLuhnCheck:](self, "setLuhnCheck:", [v28 BOOLValue]);
  }

  v30 = [configurationCopy PKStringForKey:@"displayFormatPlaceholder"];
  if ([v30 length] == 1)
  {
    [(PKPaymentSetupFieldText *)self setDisplayFormatPlaceholder:v30];
  }

  v31 = [configurationCopy PKStringForKey:@"currencyCode"];
  if (v31)
  {
    [(PKPaymentSetupFieldText *)self setCurrencyCode:v31];
  }

  v41 = v8;
  v32 = [configurationCopy PKStringForKey:@"alignment"];
  v33 = v32;
  if (v32)
  {
    [(PKPaymentSetupFieldText *)self setAlignment:PKPaymentSetupFieldTextAlignmentFromString(v32)];
  }

  v34 = [configurationCopy PKStringForKey:@"validationRegex"];
  if (v34)
  {
    v35 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v34 options:0 error:0];
    [(PKPaymentSetupFieldText *)self setValidationRegex:v35];
  }

  v36 = [configurationCopy PKNumberForKey:@"codeOnError"];
  v37 = v36;
  if (v36)
  {
    -[PKPaymentSetupFieldText setCodeOnError:](self, "setCodeOnError:", [v36 integerValue]);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v15.receiver = self;
  v15.super_class = PKPaymentSetupFieldText;
  v5 = [(PKPaymentSetupField *)&v15 copyWithZone:?];
  *(v5 + 25) = self->_minLength;
  *(v5 + 26) = self->_maxLength;
  *(v5 + 192) = self->_secureText;
  *(v5 + 27) = self->_secureTextVisibility;
  *(v5 + 193) = self->_numeric;
  *(v5 + 194) = self->_numericFractional;
  *(v5 + 195) = self->_luhnCheck;
  v6 = [(NSString *)self->_displayFormatPlaceholder copyWithZone:zone];
  v7 = *(v5 + 33);
  *(v5 + 33) = v6;

  v8 = [(NSString *)self->_currencyCode copyWithZone:zone];
  v9 = *(v5 + 28);
  *(v5 + 28) = v8;

  *(v5 + 196) = self->_keepPaddingCharactersForSubmission;
  v10 = [(NSArray *)self->_paddingCharacters copyWithZone:zone];
  v11 = *(v5 + 34);
  *(v5 + 34) = v10;

  objc_storeStrong(v5 + 21, self->_currencyFormatter);
  objc_storeStrong(v5 + 22, self->_amountFormatter);
  objc_storeStrong(v5 + 23, self->_allowedCharacters);
  *(v5 + 29) = self->_alignment;
  v12 = [(NSArray *)self->_keyboardAccessories copy];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  return v5;
}

@end