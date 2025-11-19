@interface PKNumericSuggestion
+ (id)suggestionWithTitle:(id)a3 value:(id)a4 currencyCode:(id)a5;
- (BOOL)isEqual:(id)a3;
- (PKNumericSuggestion)initWithCoder:(id)a3;
- (id)_initWithTitle:(id)a3 value:(id)a4 currencyCode:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKNumericSuggestion

+ (id)suggestionWithTitle:(id)a3 value:(id)a4 currencyCode:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] _initWithTitle:v10 value:v9 currencyCode:v8];

  return v11;
}

- (id)_initWithTitle:(id)a3 value:(id)a4 currencyCode:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = PKNumericSuggestion;
  v12 = [(PKNumericSuggestion *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_title, a3);
    objc_storeStrong(&v13->_value, a4);
    objc_storeStrong(&v13->_currencyCode, a5);
    v13->_usedMaximumSuggestion = 0;
    v14 = [[PKCurrencyAmount alloc] initWithAmount:v10 currency:v11 exponent:0];
    v15 = [(PKCurrencyAmount *)v14 minimalFormattedStringValue];
    v16 = v15;
    if (v9)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@", v9, v15];
    }

    else
    {
      v17 = v15;
    }

    displayValue = v13->_displayValue;
    v13->_displayValue = v17;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  value = self->_value;
  v6 = v4[2];
  if (!value || !v6)
  {
    if (value == v6)
    {
      goto LABEL_5;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  if (([(NSDecimalNumber *)value isEqual:?]& 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  title = self->_title;
  v8 = v4[4];
  if (title && v8)
  {
    v9 = [(NSString *)title isEqual:?];
  }

  else
  {
    v9 = title == v8;
  }

LABEL_10:

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_title];
  [v3 safelyAddObject:self->_value];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"title: '%@'; ", self->_title];
  [v3 appendFormat:@"value: '%@'; ", self->_value];
  [v3 appendFormat:@"currencyCode: '%@'; ", self->_currencyCode];
  [v3 appendFormat:@"displayValue: '%@'; ", self->_displayValue];
  [v3 appendFormat:@">"];

  return v3;
}

- (PKNumericSuggestion)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKNumericSuggestion;
  v5 = [(PKNumericSuggestion *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayValue"];
    displayValue = v5->_displayValue;
    v5->_displayValue = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v12;

    v5->_usedMaximumSuggestion = [v4 decodeBoolForKey:@"usedMaximumSuggestion"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"title"];
  [v5 encodeObject:self->_value forKey:@"value"];
  [v5 encodeObject:self->_displayValue forKey:@"displayValue"];
  [v5 encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [v5 encodeBool:self->_usedMaximumSuggestion forKey:@"usedMaximumSuggestion"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKNumericSuggestion allocWithZone:](PKNumericSuggestion init];
  v6 = [(NSString *)self->_title copyWithZone:a3];
  title = v5->_title;
  v5->_title = v6;

  v8 = [(NSDecimalNumber *)self->_value copyWithZone:a3];
  value = v5->_value;
  v5->_value = v8;

  v10 = [(NSString *)self->_displayValue copyWithZone:a3];
  displayValue = v5->_displayValue;
  v5->_displayValue = v10;

  v12 = [(NSString *)self->_currencyCode copyWithZone:a3];
  currencyCode = v5->_currencyCode;
  v5->_currencyCode = v12;

  v5->_usedMaximumSuggestion = self->_usedMaximumSuggestion;
  return v5;
}

@end