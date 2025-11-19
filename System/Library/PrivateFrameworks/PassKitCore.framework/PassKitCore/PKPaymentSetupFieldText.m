@interface PKPaymentSetupFieldText
+ (id)readOnlyPaymentSetupFieldWithDisplayName:(id)a3 value:(id)a4;
- (BOOL)hasDisplayFormat;
- (BOOL)submissionStringMeetsAllRequirements;
- (BOOL)submissionStringMeetsValidationRegex;
- (NSCharacterSet)allowedCharacters;
- (PKPaymentSetupFieldText)initWithIdentifier:(id)a3 type:(unint64_t)a4;
- (id)_allowedCharacters;
- (id)_amountFormatter;
- (id)_currencyFormatter;
- (id)_stringByApplyingCurrencyFormatter:(id)a3 allowPartialFractional:(BOOL)a4;
- (id)_stringByApplyingNumericFractionalFormat:(id)a3;
- (id)_submissionStringForValue:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)decimalSeparator;
- (id)displayFormatPaddingCharacters;
- (id)displayString;
- (id)stringByApplyingDisplayFormat:(id)a3 allowPartialFractional:(BOOL)a4;
- (void)setAllowedCharacters:(id)a3;
- (void)setCurrencyCode:(id)a3;
- (void)setCurrentValue:(id)a3;
- (void)setDefaultValue:(id)a3;
- (void)setNumericFractional:(BOOL)a3;
- (void)setSecureVisibleText:(BOOL)a3;
- (void)updateDisplayFormat:(id)a3;
- (void)updateWithAttribute:(id)a3;
- (void)updateWithConfiguration:(id)a3;
@end

@implementation PKPaymentSetupFieldText

- (PKPaymentSetupFieldText)initWithIdentifier:(id)a3 type:(unint64_t)a4
{
  v5.receiver = self;
  v5.super_class = PKPaymentSetupFieldText;
  result = [(PKPaymentSetupField *)&v5 initWithIdentifier:a3 type:a4];
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

+ (id)readOnlyPaymentSetupFieldWithDisplayName:(id)a3 value:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PKPaymentSetupFieldText alloc] initWithIdentifier:v6 type:1];
  [(PKPaymentSetupField *)v7 setLocalizedDisplayName:v6];

  currentValue = v7->super._currentValue;
  v7->super._currentValue = v5;

  [(PKPaymentSetupField *)v7 setReadonly:1];

  return v7;
}

- (void)setCurrentValue:(id)a3
{
  v4 = a3;
  allowedCharacters = self->_allowedCharacters;
  v6 = v4;
  if (allowedCharacters)
  {
    v7 = [(NSCharacterSet *)allowedCharacters invertedSet];
    v8 = [v4 rangeOfCharacterFromSet:v7 options:0];

    v6 = v4;
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {

      v6 = 0;
    }
  }

  v9.receiver = self;
  v9.super_class = PKPaymentSetupFieldText;
  [(PKPaymentSetupField *)&v9 setCurrentValue:v6];
}

- (void)setDefaultValue:(id)a3
{
  v4 = a3;
  allowedCharacters = self->_allowedCharacters;
  if (allowedCharacters)
  {
    v6 = [(NSCharacterSet *)allowedCharacters invertedSet];
    v7 = [v4 rangeOfCharacterFromSet:v6 options:0];

    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {

      v4 = 0;
    }
  }

  v8.receiver = self;
  v8.super_class = PKPaymentSetupFieldText;
  [(PKPaymentSetupField *)&v8 setDefaultValue:v4];
}

- (void)setCurrencyCode:(id)a3
{
  v19 = a3;
  v5 = [v19 length];
  v6 = v19;
  if (v5)
  {
    v7 = self->_currencyCode;
    v8 = v19;
    v9 = v8;
    if (v7 != v8)
    {
      if (v8 && v7)
      {
        v10 = [(NSString *)v7 isEqualToString:v8];

        v6 = v19;
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
      }

      objc_storeStrong(&self->_currencyCode, a3);
      v7 = [(PKPaymentSetupFieldText *)self _currencyFormatter];
      [(NSString *)v7 setCurrencyCode:self->_currencyCode];
      v11 = objc_alloc(MEMORY[0x1E695DFD8]);
      v12 = [(NSString *)v7 groupingSeparator];
      v13 = [(NSString *)v7 currencySymbol];
      v14 = [v11 initWithObjects:{v12, v13, @" ", @" ", 0}];
      v15 = [v14 allObjects];
      paddingCharacters = self->_paddingCharacters;
      self->_paddingCharacters = v15;

      v9 = [(PKPaymentSetupFieldText *)self _allowedCharacters];
      v17 = [v9 copy];
      allowedCharacters = self->_allowedCharacters;
      self->_allowedCharacters = v17;
    }

    v6 = v19;
  }

LABEL_10:
}

- (void)setNumericFractional:(BOOL)a3
{
  if (self->_numericFractional != a3)
  {
    self->_numericFractional = a3;
    currencyFormatter = self->_currencyFormatter;
    self->_currencyFormatter = 0;

    amountFormatter = self->_amountFormatter;
    self->_amountFormatter = 0;
  }
}

- (void)setSecureVisibleText:(BOOL)a3
{
  v3 = a3;
  if ([(PKPaymentSetupFieldText *)self isSecureVisibleText]!= a3)
  {
    v5 = 1;
    if (v3)
    {
      v5 = 2;
    }

    self->_secureTextVisibility = v5;
  }
}

- (id)displayString
{
  v3 = [(PKPaymentSetupField *)self currentValue];
  if (!v3)
  {
    v3 = [(PKPaymentSetupField *)self defaultValue];
  }

  if ([(PKPaymentSetupFieldText *)self hasDisplayFormat])
  {
    v4 = [(PKPaymentSetupFieldText *)self stringByApplyingDisplayFormat:v3];

    v3 = v4;
  }

  return v3;
}

- (id)_submissionStringForValue:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (![v4 length])
  {
    v5 = [(PKPaymentSetupField *)self defaultValue];
  }

  v6 = [(PKPaymentSetupFieldText *)self decimalSeparator];
  if ([(PKPaymentSetupFieldText *)self hasDisplayFormat]&& !self->_keepPaddingCharactersForSubmission)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = [(PKPaymentSetupFieldText *)self displayFormatPaddingCharacters];
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          if (!-[PKPaymentSetupFieldText isNumericFractional](self, "isNumericFractional") || ([v12 isEqualToString:v6] & 1) == 0)
          {
            v13 = [v5 stringByReplacingOccurrencesOfString:v12 withString:&stru_1F227FD28];

            v5 = v13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }
  }

  if ([(PKPaymentSetupFieldText *)self isNumericFractional])
  {
    v14 = [v5 rangeOfString:v6 options:4];
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = [v5 stringByReplacingOccurrencesOfString:v6 withString:&stru_1F227FD28 options:0 range:{0, v14}];

      v5 = v15;
    }
  }

  v16 = [(PKPaymentSetupFieldText *)self _currencyFormatter];
  if (v16)
  {
    v17 = v16;
    if ([(PKPaymentSetupFieldText *)self isNumeric])
    {
    }

    else
    {
      v18 = [(PKPaymentSetupFieldText *)self isNumericFractional];

      if (!v18)
      {
        goto LABEL_24;
      }
    }

    v19 = [v5 stringByApplyingTransform:*MEMORY[0x1E695DA50] reverse:0];

    v5 = v19;
  }

LABEL_24:
  v20 = [v5 pk_zString];

  return v20;
}

- (id)decimalSeparator
{
  v3 = [(PKPaymentSetupFieldText *)self _currencyFormatter];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 currencyDecimalSeparator];
  }

  else
  {
    v6 = [(PKPaymentSetupFieldText *)self _amountFormatter];
    v5 = [v6 decimalSeparator];
  }

  return v5;
}

- (BOOL)submissionStringMeetsAllRequirements
{
  v3 = [(PKPaymentSetupField *)self submissionString];
  if ([(PKPaymentSetupFieldText *)self minLength])
  {
    v4 = [v3 length];
    v5 = v4 >= [(PKPaymentSetupFieldText *)self minLength];
  }

  else
  {
    v5 = 1;
  }

  if ([(PKPaymentSetupFieldText *)self maxLength])
  {
    v6 = [v3 length];
    v5 &= v6 <= [(PKPaymentSetupFieldText *)self maxLength];
  }

  if ([(PKPaymentSetupFieldText *)self useLuhnCheck])
  {
    v5 &= PKLuhnCheck(v3);
  }

  if ([(PKPaymentSetupFieldText *)self isNumeric]|| [(PKPaymentSetupFieldText *)self isNumericFractional])
  {
    v7 = [MEMORY[0x1E696AB08] letterCharacterSet];
    v8 = [v3 rangeOfCharacterFromSet:v7] == 0x7FFFFFFFFFFFFFFFLL;

    v5 &= v8;
  }

  v9 = [(PKPaymentSetupFieldText *)self submissionStringMeetsValidationRegex];

  return v9 & v5;
}

- (BOOL)submissionStringMeetsValidationRegex
{
  v3 = [(PKPaymentSetupField *)self submissionString];
  v4 = [(PKPaymentSetupFieldText *)self validationRegex];
  v5 = 1;
  if (v4 && v3)
  {
    v5 = [v4 numberOfMatchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}] != 0;
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
    v7 = [(PKPaymentSetupFieldText *)self _currencyFormatter];
    v8 = v7;
    if (v7)
    {
      -[NSNumberFormatter setMinimumFractionDigits:](self->_amountFormatter, "setMinimumFractionDigits:", [v7 minimumFractionDigits]);
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
  v3 = [MEMORY[0x1E696AD48] decimalDigitCharacterSet];
  paddingCharacters = self->_paddingCharacters;
  if (paddingCharacters)
  {
    v5 = [(NSArray *)paddingCharacters componentsJoinedByString:&stru_1F227FD28];
    [v3 addCharactersInString:v5];
  }

  if ([(PKPaymentSetupFieldText *)self isNumericFractional])
  {
    v6 = [(PKPaymentSetupFieldText *)self decimalSeparator];
    [v3 addCharactersInString:v6];
  }

  v7 = [v3 copy];
  allowedCharacters = self->_allowedCharacters;
  self->_allowedCharacters = v7;

  return v3;
}

- (BOOL)hasDisplayFormat
{
  if (self->_currencyCode)
  {
    return 1;
  }

  v3 = [(PKPaymentSetupField *)self displayFormat];
  v2 = [v3 length] != 0;

  return v2;
}

- (id)_stringByApplyingCurrencyFormatter:(id)a3 allowPartialFractional:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (![v6 length])
  {
    v23 = 0;
    goto LABEL_26;
  }

  v7 = [(PKPaymentSetupFieldText *)self _amountFormatter];
  v8 = [(PKPaymentSetupFieldText *)self _currencyFormatter];
  v9 = [v8 groupingSeparator];
  v10 = [v6 stringByReplacingOccurrencesOfString:v9 withString:&stru_1F227FD28];

  v11 = [v8 currencySymbol];
  v12 = [v10 stringByReplacingOccurrencesOfString:v11 withString:&stru_1F227FD28];

  if ([(PKPaymentSetupFieldText *)self isNumericFractional])
  {
    v13 = [(PKPaymentSetupFieldText *)self decimalSeparator];
    v14 = [v12 rangeOfString:v13 options:4];
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = [v12 stringByReplacingOccurrencesOfString:v13 withString:&stru_1F227FD28 options:0 range:{0, v14}];

      v12 = v15;
    }

    v16 = v12;
    v12 = [v7 numberFromString:v12];
    v17 = v16;
    v18 = v13;
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
        v27 = [v7 stringFromNumber:v12];
        v28 = [v8 stringFromNumber:v12];
        v29 = v28;
        if (v20 && v4)
        {
          v30 = [v28 rangeOfString:v19 options:4];
          v32 = v30 + v31;
        }

        else
        {
          if (!v4 || (v34 = [v17 length], v34 >= objc_msgSend(v27, "length")))
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

  v19 = [v7 numberFromString:v12];
  v24 = [v8 stringFromNumber:v19];
LABEL_25:

  v6 = v24;
  v23 = v6;
LABEL_26:

  return v23;
}

- (id)_stringByApplyingNumericFractionalFormat:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!-[PKPaymentSetupFieldText isNumericFractional](self, "isNumericFractional") || ![v4 length])
  {
    v23 = 0;
    goto LABEL_26;
  }

  v5 = [(PKPaymentSetupFieldText *)self decimalSeparator];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v26 = self;
  v6 = [(PKPaymentSetupFieldText *)self displayFormatPaddingCharacters];
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v27 + 1) + 8 * i);
      v12 = v5;
      v13 = v11;
      v14 = v13;
      if (v12 == v13)
      {

        goto LABEL_16;
      }

      if (!v5 || !v13)
      {

LABEL_15:
        [v4 stringByReplacingOccurrencesOfString:v14 withString:&stru_1F227FD28];
        v4 = v12 = v4;
LABEL_16:

        continue;
      }

      v15 = [v12 isEqualToString:v13];

      if ((v15 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v8);
LABEL_19:

  v16 = [v4 rangeOfString:v5 options:4];
  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [v4 stringByReplacingOccurrencesOfString:v5 withString:&stru_1F227FD28 options:0 range:{0, v16}];

    v4 = v17;
  }

  v18 = [(PKPaymentSetupFieldText *)v26 _amountFormatter];
  v19 = [v18 numberFromString:v4];
  v20 = [v18 stringFromNumber:v19];
  v21 = [v4 length];
  if (v21 >= [v20 length])
  {
    v22 = v20;
  }

  else
  {
    v22 = [v20 substringToIndex:{objc_msgSend(v4, "length")}];
  }

  v24 = v22;

  v4 = v24;
  v23 = v4;
LABEL_26:

  return v23;
}

- (id)stringByApplyingDisplayFormat:(id)a3 allowPartialFractional:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PKPaymentSetupFieldText *)self _currencyFormatter];

  if (v7)
  {
    v8 = [(PKPaymentSetupFieldText *)self _stringByApplyingCurrencyFormatter:v6 allowPartialFractional:v4];
  }

  else
  {
    if ([(PKPaymentSetupFieldText *)self isNumericFractional]&& [(PKPaymentSetupFieldText *)self hasDisplayFormat])
    {
      v9 = [(PKPaymentSetupFieldText *)self _stringByApplyingNumericFractionalFormat:v6];

      v6 = v9;
    }

    v10 = [(PKPaymentSetupField *)self displayFormat];
    v11 = [(PKPaymentSetupFieldText *)self displayFormatPaddingCharacters];
    v8 = PKApplyFormatToString(v6, v10, v11);
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
    v5 = [MEMORY[0x1E695DF70] array];
    v6 = [(PKPaymentSetupFieldText *)self displayFormatPlaceholder];
    v7 = [v6 length];

    if (v7 == 1)
    {
      v8 = [(PKPaymentSetupField *)self displayFormat];
      if ([v8 length])
      {
        do
        {
          v9 = [v8 substringToIndex:1];
          v10 = [(PKPaymentSetupFieldText *)self displayFormatPlaceholder];
          if ([v9 isEqualToString:v10])
          {
          }

          else
          {
            v11 = [v5 containsObject:v9];

            if ((v11 & 1) == 0)
            {
              [v5 addObject:v9];
            }
          }

          v12 = [v8 substringFromIndex:1];

          v8 = v12;
        }

        while ([v12 length]);
      }

      else
      {
        v12 = v8;
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
            v18 = [(PKPaymentSetupField *)self displayFormat];
            v19 = [v18 containsString:v17];

            if (v19)
            {
              [v5 addObject:v17];
            }
          }

          v14 = [&unk_1F23B3C08 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v14);
      }
    }

    v3 = [MEMORY[0x1E695DEC8] arrayWithArray:v5];
  }

  return v3;
}

- (void)updateDisplayFormat:(id)a3
{
  if (a3)
  {
    [(PKPaymentSetupField *)self setDisplayFormat:?];

    [(PKPaymentSetupField *)self noteCurrentValueChanged];
  }
}

- (void)setAllowedCharacters:(id)a3
{
  v5 = a3;
  allowedCharacters = self->_allowedCharacters;
  v7 = v5;
  if (!v5 || !allowedCharacters)
  {
    if (allowedCharacters == v5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (([(NSCharacterSet *)v5 isEqual:?]& 1) == 0)
  {
LABEL_6:
    objc_storeStrong(&self->_allowedCharacters, a3);
  }

LABEL_7:
}

- (NSCharacterSet)allowedCharacters
{
  allowedCharacters = self->_allowedCharacters;
  if (allowedCharacters)
  {
    v3 = allowedCharacters;
LABEL_5:
    v5 = v3;
    goto LABEL_6;
  }

  if ([(PKPaymentSetupFieldText *)self isNumeric])
  {
    v3 = [MEMORY[0x1E696AD48] decimalDigitCharacterSet];
    goto LABEL_5;
  }

  if ([(PKPaymentSetupFieldText *)self isNumericFractional])
  {
    v5 = [MEMORY[0x1E696AD48] decimalDigitCharacterSet];
    v7 = [(PKPaymentSetupFieldText *)self decimalSeparator];
    [v5 addCharactersInString:v7];
  }

  else
  {
    v5 = 0;
  }

LABEL_6:

  return v5;
}

- (void)updateWithAttribute:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKPaymentSetupFieldText;
  [(PKPaymentSetupField *)&v10 updateWithAttribute:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    -[PKPaymentSetupFieldText setMinLength:](self, "setMinLength:", [v5 minLength]);
    -[PKPaymentSetupFieldText setMaxLength:](self, "setMaxLength:", [v5 maxLength]);
    -[PKPaymentSetupFieldText setSecureText:](self, "setSecureText:", [v5 isSecureText]);
    -[PKPaymentSetupFieldText setSecureVisibleText:](self, "setSecureVisibleText:", [v5 isSecureVisibleText]);
    -[PKPaymentSetupFieldText setNumeric:](self, "setNumeric:", [v5 isNumeric]);
    -[PKPaymentSetupFieldText setLuhnCheck:](self, "setLuhnCheck:", [v5 useLuhnCheck]);
    v6 = [v5 defaultValue];
    if ([v6 length])
    {
      [(PKPaymentSetupFieldText *)self setDefaultValue:v6];
    }

    v7 = [(PKPaymentSetupField *)self defaultValue];
    v8 = [v7 stringByApplyingTransform:*MEMORY[0x1E695DA48] reverse:0];

    if (v8)
    {
      [v5 setCurrentValue:v8];
    }

    v9 = [v5 displayFormatPlaceholder];
    if ([v9 length] == 1)
    {
      [(PKPaymentSetupFieldText *)self setDisplayFormatPlaceholder:v9];
    }
  }
}

- (void)updateWithConfiguration:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = PKPaymentSetupFieldText;
  [(PKPaymentSetupField *)&v43 updateWithConfiguration:v4];
  v5 = [v4 PKNumberForKey:@"minLength"];
  v6 = v5;
  if (v5)
  {
    -[PKPaymentSetupFieldText setMinLength:](self, "setMinLength:", [v5 unsignedIntegerValue]);
  }

  v7 = [v4 PKNumberForKey:@"maxLength"];
  v8 = v7;
  if (v7)
  {
    -[PKPaymentSetupFieldText setMaxLength:](self, "setMaxLength:", [v7 unsignedIntegerValue]);
  }

  v9 = [v4 PKNumberForKey:@"secureText"];
  v10 = v9;
  if (v9)
  {
    -[PKPaymentSetupFieldText setSecureText:](self, "setSecureText:", [v9 BOOLValue]);
  }

  v42 = v6;
  v11 = [v4 PKStringForKey:@"secureTextVisibility"];
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
    v16 = [v4 PKNumberForKey:{@"secureVisibleText", 0, v10}];
    v17 = v16;
    if (v16)
    {
      -[PKPaymentSetupFieldText setSecureVisibleText:](self, "setSecureVisibleText:", [v16 BOOLValue]);
    }
  }

  v24 = [v4 PKNumberForKey:{@"numeric", v38}];
  v25 = v24;
  if (v24)
  {
    -[PKPaymentSetupFieldText setNumeric:](self, "setNumeric:", [v24 BOOLValue]);
  }

  v26 = [v4 PKNumberForKey:@"numericFractional"];
  v27 = v26;
  if (v26)
  {
    -[PKPaymentSetupFieldText setNumericFractional:](self, "setNumericFractional:", [v26 BOOLValue]);
  }

  v28 = [v4 PKNumberForKey:@"useLuhnCheck"];
  v29 = v28;
  if (v28)
  {
    -[PKPaymentSetupFieldText setLuhnCheck:](self, "setLuhnCheck:", [v28 BOOLValue]);
  }

  v30 = [v4 PKStringForKey:@"displayFormatPlaceholder"];
  if ([v30 length] == 1)
  {
    [(PKPaymentSetupFieldText *)self setDisplayFormatPlaceholder:v30];
  }

  v31 = [v4 PKStringForKey:@"currencyCode"];
  if (v31)
  {
    [(PKPaymentSetupFieldText *)self setCurrencyCode:v31];
  }

  v41 = v8;
  v32 = [v4 PKStringForKey:@"alignment"];
  v33 = v32;
  if (v32)
  {
    [(PKPaymentSetupFieldText *)self setAlignment:PKPaymentSetupFieldTextAlignmentFromString(v32)];
  }

  v34 = [v4 PKStringForKey:@"validationRegex"];
  if (v34)
  {
    v35 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v34 options:0 error:0];
    [(PKPaymentSetupFieldText *)self setValidationRegex:v35];
  }

  v36 = [v4 PKNumberForKey:@"codeOnError"];
  v37 = v36;
  if (v36)
  {
    -[PKPaymentSetupFieldText setCodeOnError:](self, "setCodeOnError:", [v36 integerValue]);
  }
}

- (id)copyWithZone:(_NSZone *)a3
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
  v6 = [(NSString *)self->_displayFormatPlaceholder copyWithZone:a3];
  v7 = *(v5 + 33);
  *(v5 + 33) = v6;

  v8 = [(NSString *)self->_currencyCode copyWithZone:a3];
  v9 = *(v5 + 28);
  *(v5 + 28) = v8;

  *(v5 + 196) = self->_keepPaddingCharactersForSubmission;
  v10 = [(NSArray *)self->_paddingCharacters copyWithZone:a3];
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