@interface PKPassDateField
- (PKPassDateField)initWithCoder:(id)coder;
- (id)asDictionary;
- (id)asMutableDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)value;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassDateField

- (id)asDictionary
{
  asMutableDictionary = [(PKPassDateField *)self asMutableDictionary];
  v3 = [asMutableDictionary copy];

  return v3;
}

- (id)asMutableDictionary
{
  v16.receiver = self;
  v16.super_class = PKPassDateField;
  asMutableDictionary = [(PKPassField *)&v16 asMutableDictionary];
  dateStyle = self->_dateStyle;
  if (dateStyle)
  {
    v10 = _PKEnumValueToString(dateStyle, @"PKDateStyle", @"PKDateStyleNone, WLDateStyleNone,PKDateStyleShort, WLDateStyleShort, PKDateStyleMedium, WLDateStyleMedium, PKDateStyleLong, WLDateStyleLong, PKDateStyleFull, WLDateStyleFull", v3, v4, v5, v6, v7, 0);
    [asMutableDictionary setObject:v10 forKeyedSubscript:@"dateStyle"];
  }

  timeStyle = self->_timeStyle;
  if (timeStyle)
  {
    v12 = _PKEnumValueToString(timeStyle, @"PKDateStyle", @"PKDateStyleNone, WLDateStyleNone,PKDateStyleShort, WLDateStyleShort, PKDateStyleMedium, WLDateStyleMedium, PKDateStyleLong, WLDateStyleLong, PKDateStyleFull, WLDateStyleFull", v3, v4, v5, v6, v7, 0);
    [asMutableDictionary setObject:v12 forKeyedSubscript:@"timeStyle"];
  }

  if (self->_isRelative)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [asMutableDictionary setObject:v13 forKeyedSubscript:@"isRelative"];
  }

  if (self->_ignoresTimeZone)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [asMutableDictionary setObject:v14 forKeyedSubscript:@"ignoresTimeZone"];
  }

  return asMutableDictionary;
}

- (PKPassDateField)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKPassDateField;
  v5 = [(PKPassField *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateStyle"];
    -[PKPassDateField setDateStyle:](v5, "setDateStyle:", [v6 integerValue]);

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeStyle"];
    -[PKPassDateField setTimeStyle:](v5, "setTimeStyle:", [v7 integerValue]);

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isRelative"];
    -[PKPassDateField setIsRelative:](v5, "setIsRelative:", [v8 BOOLValue]);

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ignoresTimeZone"];
    -[PKPassDateField setIgnoresTimeZone:](v5, "setIgnoresTimeZone:", [v9 BOOLValue]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = PKPassDateField;
  coderCopy = coder;
  [(PKPassField *)&v9 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{self->_dateStyle, v9.receiver, v9.super_class}];
  [coderCopy encodeObject:v5 forKey:@"dateStyle"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_timeStyle];
  [coderCopy encodeObject:v6 forKey:@"timeStyle"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_isRelative];
  [coderCopy encodeObject:v7 forKey:@"isRelative"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_ignoresTimeZone];
  [coderCopy encodeObject:v8 forKey:@"ignoresTimeZone"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = PKPassDateField;
  v4 = [(PKPassField *)&v6 copyWithZone:zone];
  [v4 setDateStyle:self->_dateStyle];
  [v4 setTimeStyle:self->_timeStyle];
  [v4 setIsRelative:self->_isRelative];
  [v4 setIgnoresTimeZone:self->_ignoresTimeZone];
  return v4;
}

- (id)value
{
  value = self->super._value;
  if (!value)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v4 setDateStyle:self->_dateStyle];
    [v4 setTimeStyle:self->_timeStyle];
    [v4 setDoesRelativeDateFormatting:self->_isRelative];
    unformattedValue = [(PKPassField *)self unformattedValue];
    if (self->_ignoresTimeZone)
    {
      v6 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"GMT"];
      [v4 setTimeZone:v6];
    }

    v7 = [v4 stringFromDate:unformattedValue];
    v8 = self->super._value;
    self->super._value = v7;

    value = self->super._value;
  }

  return value;
}

@end