@interface PKPassNumberField
- (PKPassNumberField)initWithCoder:(id)a3;
- (id)asDictionary;
- (id)asMutableDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)value;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassNumberField

- (id)asDictionary
{
  v2 = [(PKPassNumberField *)self asMutableDictionary];
  v3 = [v2 copy];

  return v3;
}

- (id)asMutableDictionary
{
  v13.receiver = self;
  v13.super_class = PKPassNumberField;
  v3 = [(PKPassField *)&v13 asMutableDictionary];
  v9 = v3;
  currencyCode = self->_currencyCode;
  if (currencyCode)
  {
    [v3 setObject:currencyCode forKeyedSubscript:@"currencyCode"];
  }

  v11 = _PKEnumValueToString(self->_numberStyle, @"PKNumberStyle", @"PKNumberStyleDecimal, WLNumberStyleDecimal, PKNumberStylePercent, WLNumberStylePercent, PKNumberStyleScientific, WLNumberStyleScientific, PKNumberStyleSpellOut, WLNumberStyleSpellOut", v4, v5, v6, v7, v8, 1);
  [v9 setObject:v11 forKeyedSubscript:@"numberStyle"];

  return v9;
}

- (PKPassNumberField)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPassNumberField;
  v5 = [(PKPassField *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    [(PKPassNumberField *)v5 setCurrencyCode:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numberStyle"];
    -[PKPassNumberField setNumberStyle:](v5, "setNumberStyle:", [v7 integerValue]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PKPassNumberField;
  v4 = a3;
  [(PKPassField *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:self->_currencyCode forKey:{@"currencyCode", v6.receiver, v6.super_class}];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_numberStyle];
  [v4 encodeObject:v5 forKey:@"numberStyle"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = PKPassNumberField;
  v4 = [(PKPassField *)&v7 copyWithZone:a3];
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

    v6 = [(PKPassField *)self unformattedValue];
    v7 = [v4 stringFromNumber:v6];
    v8 = self->super._value;
    self->super._value = v7;

    value = self->super._value;
  }

  return value;
}

@end