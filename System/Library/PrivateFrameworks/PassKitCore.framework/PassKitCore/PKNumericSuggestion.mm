@interface PKNumericSuggestion
+ (id)suggestionWithTitle:(id)title value:(id)value currencyCode:(id)code;
- (BOOL)isEqual:(id)equal;
- (PKNumericSuggestion)initWithCoder:(id)coder;
- (id)_initWithTitle:(id)title value:(id)value currencyCode:(id)code;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKNumericSuggestion

+ (id)suggestionWithTitle:(id)title value:(id)value currencyCode:(id)code
{
  codeCopy = code;
  valueCopy = value;
  titleCopy = title;
  v11 = [[self alloc] _initWithTitle:titleCopy value:valueCopy currencyCode:codeCopy];

  return v11;
}

- (id)_initWithTitle:(id)title value:(id)value currencyCode:(id)code
{
  titleCopy = title;
  valueCopy = value;
  codeCopy = code;
  v20.receiver = self;
  v20.super_class = PKNumericSuggestion;
  v12 = [(PKNumericSuggestion *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_title, title);
    objc_storeStrong(&v13->_value, value);
    objc_storeStrong(&v13->_currencyCode, code);
    v13->_usedMaximumSuggestion = 0;
    v14 = [[PKCurrencyAmount alloc] initWithAmount:valueCopy currency:codeCopy exponent:0];
    minimalFormattedStringValue = [(PKCurrencyAmount *)v14 minimalFormattedStringValue];
    v16 = minimalFormattedStringValue;
    if (titleCopy)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@", titleCopy, minimalFormattedStringValue];
    }

    else
    {
      v17 = minimalFormattedStringValue;
    }

    displayValue = v13->_displayValue;
    v13->_displayValue = v17;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  value = self->_value;
  v6 = equalCopy[2];
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
  v8 = equalCopy[4];
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
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_title];
  [array safelyAddObject:self->_value];
  v4 = PKCombinedHash(17, array);

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

- (PKNumericSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKNumericSuggestion;
  v5 = [(PKNumericSuggestion *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayValue"];
    displayValue = v5->_displayValue;
    v5->_displayValue = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v12;

    v5->_usedMaximumSuggestion = [coderCopy decodeBoolForKey:@"usedMaximumSuggestion"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeObject:self->_value forKey:@"value"];
  [coderCopy encodeObject:self->_displayValue forKey:@"displayValue"];
  [coderCopy encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [coderCopy encodeBool:self->_usedMaximumSuggestion forKey:@"usedMaximumSuggestion"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKNumericSuggestion allocWithZone:](PKNumericSuggestion init];
  v6 = [(NSString *)self->_title copyWithZone:zone];
  title = v5->_title;
  v5->_title = v6;

  v8 = [(NSDecimalNumber *)self->_value copyWithZone:zone];
  value = v5->_value;
  v5->_value = v8;

  v10 = [(NSString *)self->_displayValue copyWithZone:zone];
  displayValue = v5->_displayValue;
  v5->_displayValue = v10;

  v12 = [(NSString *)self->_currencyCode copyWithZone:zone];
  currencyCode = v5->_currencyCode;
  v5->_currencyCode = v12;

  v5->_usedMaximumSuggestion = self->_usedMaximumSuggestion;
  return v5;
}

@end