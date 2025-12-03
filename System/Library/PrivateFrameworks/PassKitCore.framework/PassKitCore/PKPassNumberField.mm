@interface PKPassNumberField
- (PKPassNumberField)initWithCoder:(id)coder;
- (id)asDictionary;
- (id)asMutableDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)value;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassNumberField

- (id)asDictionary
{
  asMutableDictionary = [(PKPassNumberField *)self asMutableDictionary];
  v3 = [asMutableDictionary copy];

  return v3;
}

- (id)asMutableDictionary
{
  v13.receiver = self;
  v13.super_class = PKPassNumberField;
  asMutableDictionary = [(PKPassField *)&v13 asMutableDictionary];
  v9 = asMutableDictionary;
  currencyCode = self->_currencyCode;
  if (currencyCode)
  {
    [asMutableDictionary setObject:currencyCode forKeyedSubscript:@"currencyCode"];
  }

  v11 = _PKEnumValueToString(self->_numberStyle, @"PKNumberStyle", @"PKNumberStyleDecimal, WLNumberStyleDecimal, PKNumberStylePercent, WLNumberStylePercent, PKNumberStyleScientific, WLNumberStyleScientific, PKNumberStyleSpellOut, WLNumberStyleSpellOut", v4, v5, v6, v7, v8, 1);
  [v9 setObject:v11 forKeyedSubscript:@"numberStyle"];

  return v9;
}

- (PKPassNumberField)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPassNumberField;
  v5 = [(PKPassField *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    [(PKPassNumberField *)v5 setCurrencyCode:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numberStyle"];
    -[PKPassNumberField setNumberStyle:](v5, "setNumberStyle:", [v7 integerValue]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PKPassNumberField;
  coderCopy = coder;
  [(PKPassField *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_currencyCode forKey:{@"currencyCode", v6.receiver, v6.super_class}];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_numberStyle];
  [coderCopy encodeObject:v5 forKey:@"numberStyle"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = PKPassNumberField;
  v4 = [(PKPassField *)&v7 copyWithZone:zone];
  [v4 setNumberStyle:self->_numberStyle];
  v5 = [(NSString *)self->_currencyCode copy];
  [v4 setCurrencyCode:v5];

  return v4;
}

- (id)value
{
  value = self->super._value;
  if (!value)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v5 = self->_currencyCode;
    if (v5)
    {
      [v4 setNumberStyle:2];
      [v4 setCurrencyCode:v5];
    }

    else
    {
      [v4 setNumberStyle:self->_numberStyle];
    }

    unformattedValue = [(PKPassField *)self unformattedValue];
    v7 = [v4 stringFromNumber:unformattedValue];
    v8 = self->super._value;
    self->super._value = v7;

    value = self->super._value;
  }

  return value;
}

@end