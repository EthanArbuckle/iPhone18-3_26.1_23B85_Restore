@interface PKPayLaterMerchandisingConfiguration
+ (id)_numberFormatter;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConfiguration:(id)configuration;
- (PKPayLaterMerchandisingConfiguration)initWithAmount:(id)amount currency:(id)currency displayStyle:(int64_t)style action:(int64_t)action theme:(unint64_t)theme environmentType:(unint64_t)type;
- (PKPayLaterMerchandisingConfiguration)initWithCoder:(id)coder;
- (id)amountString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)localeString;
- (id)region;
- (id)stringValueForProperty:(unint64_t)property;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPayLaterMerchandisingConfiguration

- (PKPayLaterMerchandisingConfiguration)initWithAmount:(id)amount currency:(id)currency displayStyle:(int64_t)style action:(int64_t)action theme:(unint64_t)theme environmentType:(unint64_t)type
{
  amountCopy = amount;
  currencyCopy = currency;
  v17 = [(PKPayLaterMerchandisingConfiguration *)self init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_amount, amount);
    objc_storeStrong(&v18->_currency, currency);
    v18->_displayStyle = style;
    v18->_action = action;
    v18->_environmentType = type;
    v18->_theme = theme;
  }

  return v18;
}

- (id)amountString
{
  _numberFormatter = [objc_opt_class() _numberFormatter];
  v4 = [_numberFormatter stringFromNumber:self->_amount];

  return v4;
}

- (id)localeString
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  v4 = [localeIdentifier stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  return v4;
}

- (id)region
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  regionCode = [currentLocale regionCode];

  return regionCode;
}

- (id)stringValueForProperty:(unint64_t)property
{
  region = 0;
  if (property <= 7)
  {
    if (property > 1)
    {
      if (property == 2)
      {
        region = self->_currency;
      }

      else if (property == 4)
      {
        region = [(PKPayLaterMerchandisingConfiguration *)self region];
      }
    }

    else if (property)
    {
      if (property == 1)
      {
        region = [(PKPayLaterMerchandisingConfiguration *)self amountString];
      }
    }

    else
    {
      region = &stru_1F227FD28;
    }
  }

  else if (property <= 31)
  {
    if (property == 8)
    {
      region = [(PKPayLaterMerchandisingConfiguration *)self localeString];
    }

    else if (property == 16)
    {
      region = PKPayLaterDisplayStyleToString(self->_displayStyle);
    }
  }

  else
  {
    switch(property)
    {
      case 0x20uLL:
        region = PKPayLaterThemeToString(self->_theme);
        break;
      case 0x40uLL:
        region = PKPayLaterActionToString(self->_action);
        break;
      case 0x80uLL:
        region = PKPayLaterEnvironmentTypeToString(self->_environmentType);
        break;
    }
  }

  return region;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPayLaterMerchandisingConfiguration *)self isEqualToConfiguration:v5];
  }

  return v6;
}

- (BOOL)isEqualToConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    goto LABEL_21;
  }

  amount = self->_amount;
  v6 = configurationCopy[1];
  if (amount)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (amount != v6)
    {
LABEL_21:
      v14 = 0;
      goto LABEL_22;
    }
  }

  else
  {
    v8 = [(NSDecimalNumber *)amount isEqual:?];
    if ((v8 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v9 = configurationCopy[2];
  v10 = self->_currency;
  v11 = v9;
  v12 = v11;
  if (v10 == v11)
  {

    goto LABEL_16;
  }

  if (!v10 || !v11)
  {

    goto LABEL_21;
  }

  v13 = [(NSString *)v10 isEqualToString:v11];

  if (!v13)
  {
    goto LABEL_21;
  }

LABEL_16:
  if (self->_displayStyle != configurationCopy[3] || self->_theme != configurationCopy[6] || self->_action != configurationCopy[4])
  {
    goto LABEL_21;
  }

  v14 = self->_environmentType == configurationCopy[5];
LABEL_22:

  return v14;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_amount];
  [v3 safelyAddObject:self->_currency];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_displayStyle - v4 + 32 * v4;
  v6 = self->_theme - v5 + 32 * v5;
  v7 = self->_action - v6 + 32 * v6;
  v8 = self->_environmentType - v7 + 32 * v7;

  return v8;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  amount = [(PKPayLaterMerchandisingConfiguration *)self amount];
  [v3 appendFormat:@"amount: '%@'; ", amount];

  [v3 appendFormat:@"currency: '%@'; ", self->_currency];
  region = [(PKPayLaterMerchandisingConfiguration *)self region];
  [v3 appendFormat:@"region: '%@'; ", region];

  localeString = [(PKPayLaterMerchandisingConfiguration *)self localeString];
  [v3 appendFormat:@"locale: '%@'; ", localeString];

  v7 = PKPayLaterDisplayStyleToString(self->_displayStyle);
  [v3 appendFormat:@"displayStyle: '%@'; ", v7];

  v8 = PKPayLaterThemeToString(self->_theme);
  [v3 appendFormat:@"theme: '%@'; ", v8];

  v9 = PKPayLaterActionToString(self->_action);
  [v3 appendFormat:@"secondaryAction: '%@'; ", v9];

  v10 = PKPayLaterEnvironmentTypeToString(self->_environmentType);
  [v3 appendFormat:@"environmentType: '%@'; ", v10];

  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPayLaterMerchandisingConfiguration allocWithZone:](PKPayLaterMerchandisingConfiguration init];
  v6 = [(NSDecimalNumber *)self->_amount copyWithZone:zone];
  amount = v5->_amount;
  v5->_amount = v6;

  v8 = [(NSString *)self->_currency copyWithZone:zone];
  currency = v5->_currency;
  v5->_currency = v8;

  v5->_displayStyle = self->_displayStyle;
  v5->_theme = self->_theme;
  v5->_action = self->_action;
  v5->_environmentType = self->_environmentType;
  return v5;
}

- (PKPayLaterMerchandisingConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKPayLaterMerchandisingConfiguration;
  v5 = [(PKPayLaterMerchandisingConfiguration *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currency"];
    currency = v5->_currency;
    v5->_currency = v8;

    v5->_displayStyle = [coderCopy decodeIntegerForKey:@"displayStyle"];
    v5->_theme = [coderCopy decodeIntegerForKey:@"theme"];
    v5->_action = [coderCopy decodeIntegerForKey:@"action"];
    v5->_environmentType = [coderCopy decodeIntegerForKey:@"environmentType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  amount = self->_amount;
  coderCopy = coder;
  [coderCopy encodeObject:amount forKey:@"amount"];
  [coderCopy encodeObject:self->_currency forKey:@"currency"];
  [coderCopy encodeInteger:self->_displayStyle forKey:@"displayStyle"];
  [coderCopy encodeInteger:self->_theme forKey:@"theme"];
  [coderCopy encodeInteger:self->_action forKey:@"action"];
  [coderCopy encodeInteger:self->_environmentType forKey:@"environmentType"];
}

+ (id)_numberFormatter
{
  if (qword_1ED6D20E8 != -1)
  {
    dispatch_once(&qword_1ED6D20E8, &__block_literal_global_202);
  }

  v3 = _MergedGlobals_270;

  return v3;
}

uint64_t __56__PKPayLaterMerchandisingConfiguration__numberFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = _MergedGlobals_270;
  _MergedGlobals_270 = v0;

  v2 = _MergedGlobals_270;

  return [v2 setNumberStyle:0];
}

@end