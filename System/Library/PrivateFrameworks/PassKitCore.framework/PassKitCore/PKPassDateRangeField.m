@interface PKPassDateRangeField
- (NSString)displayableEndDate;
- (NSString)displayableStartDate;
- (PKPassDateRangeField)initWithCoder:(id)a3;
- (id)_displayableDate:(id)a3;
- (id)asDictionary;
- (id)asMuteDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)value;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassDateRangeField

- (NSString)displayableStartDate
{
  displayableStartDate = self->_displayableStartDate;
  if (!displayableStartDate)
  {
    v4 = [(PKPassDateRangeField *)self _displayableDate:self->_startDate];
    v5 = self->_displayableStartDate;
    self->_displayableStartDate = v4;

    displayableStartDate = self->_displayableStartDate;
  }

  return displayableStartDate;
}

- (NSString)displayableEndDate
{
  displayableEndDate = self->_displayableEndDate;
  if (!displayableEndDate)
  {
    v4 = [(PKPassDateRangeField *)self _displayableDate:self->_endDate];
    v5 = self->_displayableEndDate;
    self->_displayableEndDate = v4;

    displayableEndDate = self->_displayableEndDate;
  }

  return displayableEndDate;
}

- (id)_displayableDate:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
  if ([(PKPassDateField *)self dateStyle]|| [(PKPassDateField *)self timeStyle])
  {
    [v5 setDateStyle:{-[PKPassDateField dateStyle](self, "dateStyle")}];
    [v5 setTimeStyle:{-[PKPassDateField timeStyle](self, "timeStyle")}];
  }

  else
  {
    [v5 setLocalizedDateFormatFromTemplate:@"M d"];
  }

  [v5 setDoesRelativeDateFormatting:{-[PKPassDateField isRelative](self, "isRelative")}];
  if ([(PKPassDateField *)self ignoresTimeZone])
  {
    v6 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"GMT"];
    [v5 setTimeZone:v6];
  }

  v7 = [v5 stringFromDate:v4];

  return v7;
}

- (id)asDictionary
{
  v2 = [(PKPassDateField *)self asMutableDictionary];
  v3 = [v2 copy];

  return v3;
}

- (id)asMuteDictionary
{
  v8.receiver = self;
  v8.super_class = PKPassDateRangeField;
  v3 = [(PKPassDateField *)&v8 asMutableDictionary];
  v4 = v3;
  startDate = self->_startDate;
  if (startDate)
  {
    [v3 setObject:startDate forKeyedSubscript:@"startDate"];
  }

  endDate = self->_endDate;
  if (endDate)
  {
    [v4 setObject:endDate forKeyedSubscript:@"endDate"];
  }

  return v4;
}

- (PKPassDateRangeField)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPassDateRangeField;
  v5 = [(PKPassDateField *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    [(PKPassDateRangeField *)v5 setStartDate:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    [(PKPassDateRangeField *)v5 setEndDate:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPassDateRangeField;
  v4 = a3;
  [(PKPassDateField *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_startDate forKey:{@"startDate", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_endDate forKey:@"endDate"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = PKPassDateRangeField;
  v4 = [(PKPassDateField *)&v6 copyWithZone:a3];
  [v4 setStartDate:self->_startDate];
  [v4 setEndDate:self->_endDate];
  return v4;
}

- (id)value
{
  value = self->super.super._value;
  if (!value)
  {
    if (self->_startDate && self->_endDate)
    {
      if ([(PKPassDateField *)self ignoresTimeZone])
      {
        v4 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"GMT"];
      }

      else
      {
        v4 = 0;
      }

      v6 = PKDateRangeStringFromDateToDate(self->_startDate, self->_endDate, 0, 1, 0, v4);
      v7 = self->super.super._value;
      self->super.super._value = v6;
    }

    else
    {
      v5 = [(PKPassField *)self unformattedValue];
      v4 = self->super.super._value;
      self->super.super._value = v5;
    }

    value = self->super.super._value;
  }

  return value;
}

@end