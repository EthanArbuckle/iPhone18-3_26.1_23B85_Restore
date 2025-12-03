@interface PKPassDateRangeField
- (NSString)displayableEndDate;
- (NSString)displayableStartDate;
- (PKPassDateRangeField)initWithCoder:(id)coder;
- (id)_displayableDate:(id)date;
- (id)asDictionary;
- (id)asMuteDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)value;
- (void)encodeWithCoder:(id)coder;
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

- (id)_displayableDate:(id)date
{
  dateCopy = date;
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

  v7 = [v5 stringFromDate:dateCopy];

  return v7;
}

- (id)asDictionary
{
  asMutableDictionary = [(PKPassDateField *)self asMutableDictionary];
  v3 = [asMutableDictionary copy];

  return v3;
}

- (id)asMuteDictionary
{
  v8.receiver = self;
  v8.super_class = PKPassDateRangeField;
  asMutableDictionary = [(PKPassDateField *)&v8 asMutableDictionary];
  v4 = asMutableDictionary;
  startDate = self->_startDate;
  if (startDate)
  {
    [asMutableDictionary setObject:startDate forKeyedSubscript:@"startDate"];
  }

  endDate = self->_endDate;
  if (endDate)
  {
    [v4 setObject:endDate forKeyedSubscript:@"endDate"];
  }

  return v4;
}

- (PKPassDateRangeField)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPassDateRangeField;
  v5 = [(PKPassDateField *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    [(PKPassDateRangeField *)v5 setStartDate:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    [(PKPassDateRangeField *)v5 setEndDate:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPassDateRangeField;
  coderCopy = coder;
  [(PKPassDateField *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_startDate forKey:{@"startDate", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = PKPassDateRangeField;
  v4 = [(PKPassDateField *)&v6 copyWithZone:zone];
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
      unformattedValue = [(PKPassField *)self unformattedValue];
      v4 = self->super.super._value;
      self->super.super._value = unformattedValue;
    }

    value = self->super.super._value;
  }

  return value;
}

@end