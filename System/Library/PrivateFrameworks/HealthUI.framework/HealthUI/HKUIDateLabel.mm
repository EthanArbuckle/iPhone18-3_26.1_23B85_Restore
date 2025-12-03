@interface HKUIDateLabel
+ (id)_formattedTextFromDate:(id)date formatTemplate:(int64_t)template useUppercase:(BOOL)uppercase;
+ (id)dateStringForDateRange:(id)range formatTemplate:(int64_t)template useUppercase:(BOOL)uppercase;
- (BOOL)_setDateRange:(id)range;
- (HKUIDateLabel)init;
- (void)setDate:(id)date formatTemplate:(int64_t)template;
- (void)setDateRange:(id)range formatTemplate:(int64_t)template;
@end

@implementation HKUIDateLabel

- (HKUIDateLabel)init
{
  v3.receiver = self;
  v3.super_class = HKUIDateLabel;
  result = [(HKUIDateLabel *)&v3 init];
  if (result)
  {
    result->_useUppercase = 1;
  }

  return result;
}

- (void)setDate:(id)date formatTemplate:(int64_t)template
{
  if (date)
  {
    v6 = [HKValueRange valueRangeWithMinValue:date maxValue:date];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [(HKUIDateLabel *)self setDateRange:v6 formatTemplate:template];
}

- (void)setDateRange:(id)range formatTemplate:(int64_t)template
{
  rangeCopy = range;
  if ([(HKUIDateLabel *)self _setDateRange:?])
  {
    v6 = [HKUIDateLabel dateStringForDateRange:rangeCopy formatTemplate:template useUppercase:self->_useUppercase];
    [(HKUIDateLabel *)self setText:v6];
  }
}

- (BOOL)_setDateRange:(id)range
{
  rangeCopy = range;
  if (rangeCopy && [(HKValueRange *)self->_dateRange isEqual:rangeCopy])
  {
    v6 = 0;
  }

  else
  {
    objc_storeStrong(&self->_dateRange, range);
    v6 = 1;
  }

  return v6;
}

+ (id)dateStringForDateRange:(id)range formatTemplate:(int64_t)template useUppercase:(BOOL)uppercase
{
  uppercaseCopy = uppercase;
  rangeCopy = range;
  v8 = rangeCopy;
  if (rangeCopy)
  {
    minValue = [rangeCopy minValue];
    maxValue = [v8 maxValue];
    v11 = [minValue isEqual:maxValue];

    minValue2 = [v8 minValue];
    v13 = [HKUIDateLabel _formattedTextFromDate:minValue2 formatTemplate:template useUppercase:uppercaseCopy];

    if ((v11 & 1) == 0)
    {
      maxValue2 = [v8 maxValue];
      v15 = [HKUIDateLabel _formattedTextFromDate:maxValue2 formatTemplate:template useUppercase:uppercaseCopy];

      v16 = MEMORY[0x1E696AEC0];
      v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v18 = [v17 localizedStringForKey:@"DATE_RANGE %@ %@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v19 = [v16 stringWithFormat:v18, v13, v15];

      v13 = v19;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)_formattedTextFromDate:(id)date formatTemplate:(int64_t)template useUppercase:(BOOL)uppercase
{
  if (date)
  {
    v6 = HKLocalizedStringForDateAndTemplate(date, template);
    currentHandler = v6;
    if (uppercase)
    {
      currentLocale = [MEMORY[0x1E695DF58] currentLocale];
      v9 = [currentHandler uppercaseStringWithLocale:currentLocale];
    }

    else
    {
      currentHandler = v6;
      v9 = currentHandler;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKUIDateLabel.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"date != nil"}];
    v9 = 0;
  }

  return v9;
}

@end