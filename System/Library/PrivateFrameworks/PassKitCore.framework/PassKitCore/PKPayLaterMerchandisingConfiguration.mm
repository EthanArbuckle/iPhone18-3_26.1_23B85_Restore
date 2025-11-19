@interface PKPayLaterMerchandisingConfiguration
+ (id)_numberFormatter;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConfiguration:(id)a3;
- (PKPayLaterMerchandisingConfiguration)initWithAmount:(id)a3 currency:(id)a4 displayStyle:(int64_t)a5 action:(int64_t)a6 theme:(unint64_t)a7 environmentType:(unint64_t)a8;
- (PKPayLaterMerchandisingConfiguration)initWithCoder:(id)a3;
- (id)amountString;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)localeString;
- (id)region;
- (id)stringValueForProperty:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPayLaterMerchandisingConfiguration

- (PKPayLaterMerchandisingConfiguration)initWithAmount:(id)a3 currency:(id)a4 displayStyle:(int64_t)a5 action:(int64_t)a6 theme:(unint64_t)a7 environmentType:(unint64_t)a8
{
  v15 = a3;
  v16 = a4;
  v17 = [(PKPayLaterMerchandisingConfiguration *)self init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_amount, a3);
    objc_storeStrong(&v18->_currency, a4);
    v18->_displayStyle = a5;
    v18->_action = a6;
    v18->_environmentType = a8;
    v18->_theme = a7;
  }

  return v18;
}

- (id)amountString
{
  v3 = [objc_opt_class() _numberFormatter];
  v4 = [v3 stringFromNumber:self->_amount];

  return v4;
}

- (id)localeString
{
  v2 = [MEMORY[0x1E695DF58] currentLocale];
  v3 = [v2 localeIdentifier];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  return v4;
}

- (id)region
{
  v2 = [MEMORY[0x1E695DF58] currentLocale];
  v3 = [v2 regionCode];

  return v3;
}

- (id)stringValueForProperty:(unint64_t)a3
{
  v4 = 0;
  if (a3 <= 7)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v4 = self->_currency;
      }

      else if (a3 == 4)
      {
        v4 = [(PKPayLaterMerchandisingConfiguration *)self region];
      }
    }

    else if (a3)
    {
      if (a3 == 1)
      {
        v4 = [(PKPayLaterMerchandisingConfiguration *)self amountString];
      }
    }

    else
    {
      v4 = &stru_1F227FD28;
    }
  }

  else if (a3 <= 31)
  {
    if (a3 == 8)
    {
      v4 = [(PKPayLaterMerchandisingConfiguration *)self localeString];
    }

    else if (a3 == 16)
    {
      v4 = PKPayLaterDisplayStyleToString(self->_displayStyle);
    }
  }

  else
  {
    switch(a3)
    {
      case 0x20uLL:
        v4 = PKPayLaterThemeToString(self->_theme);
        break;
      case 0x40uLL:
        v4 = PKPayLaterActionToString(self->_action);
        break;
      case 0x80uLL:
        v4 = PKPayLaterEnvironmentTypeToString(self->_environmentType);
        break;
    }
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPayLaterMerchandisingConfiguration *)self isEqualToConfiguration:v5];
  }

  return v6;
}

- (BOOL)isEqualToConfiguration:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_21;
  }

  amount = self->_amount;
  v6 = v4[1];
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

  v9 = v4[2];
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
  if (self->_displayStyle != v4[3] || self->_theme != v4[6] || self->_action != v4[4])
  {
    goto LABEL_21;
  }

  v14 = self->_environmentType == v4[5];
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
  v4 = [(PKPayLaterMerchandisingConfiguration *)self amount];
  [v3 appendFormat:@"amount: '%@'; ", v4];

  [v3 appendFormat:@"currency: '%@'; ", self->_currency];
  v5 = [(PKPayLaterMerchandisingConfiguration *)self region];
  [v3 appendFormat:@"region: '%@'; ", v5];

  v6 = [(PKPayLaterMerchandisingConfiguration *)self localeString];
  [v3 appendFormat:@"locale: '%@'; ", v6];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPayLaterMerchandisingConfiguration allocWithZone:](PKPayLaterMerchandisingConfiguration init];
  v6 = [(NSDecimalNumber *)self->_amount copyWithZone:a3];
  amount = v5->_amount;
  v5->_amount = v6;

  v8 = [(NSString *)self->_currency copyWithZone:a3];
  currency = v5->_currency;
  v5->_currency = v8;

  v5->_displayStyle = self->_displayStyle;
  v5->_theme = self->_theme;
  v5->_action = self->_action;
  v5->_environmentType = self->_environmentType;
  return v5;
}

- (PKPayLaterMerchandisingConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPayLaterMerchandisingConfiguration;
  v5 = [(PKPayLaterMerchandisingConfiguration *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currency"];
    currency = v5->_currency;
    v5->_currency = v8;

    v5->_displayStyle = [v4 decodeIntegerForKey:@"displayStyle"];
    v5->_theme = [v4 decodeIntegerForKey:@"theme"];
    v5->_action = [v4 decodeIntegerForKey:@"action"];
    v5->_environmentType = [v4 decodeIntegerForKey:@"environmentType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  amount = self->_amount;
  v5 = a3;
  [v5 encodeObject:amount forKey:@"amount"];
  [v5 encodeObject:self->_currency forKey:@"currency"];
  [v5 encodeInteger:self->_displayStyle forKey:@"displayStyle"];
  [v5 encodeInteger:self->_theme forKey:@"theme"];
  [v5 encodeInteger:self->_action forKey:@"action"];
  [v5 encodeInteger:self->_environmentType forKey:@"environmentType"];
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