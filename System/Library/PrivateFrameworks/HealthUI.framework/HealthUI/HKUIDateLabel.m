@interface HKUIDateLabel
+ (id)_formattedTextFromDate:(id)a3 formatTemplate:(int64_t)a4 useUppercase:(BOOL)a5;
+ (id)dateStringForDateRange:(id)a3 formatTemplate:(int64_t)a4 useUppercase:(BOOL)a5;
- (BOOL)_setDateRange:(id)a3;
- (HKUIDateLabel)init;
- (void)setDate:(id)a3 formatTemplate:(int64_t)a4;
- (void)setDateRange:(id)a3 formatTemplate:(int64_t)a4;
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

- (void)setDate:(id)a3 formatTemplate:(int64_t)a4
{
  if (a3)
  {
    v6 = [HKValueRange valueRangeWithMinValue:a3 maxValue:a3];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [(HKUIDateLabel *)self setDateRange:v6 formatTemplate:a4];
}

- (void)setDateRange:(id)a3 formatTemplate:(int64_t)a4
{
  v7 = a3;
  if ([(HKUIDateLabel *)self _setDateRange:?])
  {
    v6 = [HKUIDateLabel dateStringForDateRange:v7 formatTemplate:a4 useUppercase:self->_useUppercase];
    [(HKUIDateLabel *)self setText:v6];
  }
}

- (BOOL)_setDateRange:(id)a3
{
  v5 = a3;
  if (v5 && [(HKValueRange *)self->_dateRange isEqual:v5])
  {
    v6 = 0;
  }

  else
  {
    objc_storeStrong(&self->_dateRange, a3);
    v6 = 1;
  }

  return v6;
}

+ (id)dateStringForDateRange:(id)a3 formatTemplate:(int64_t)a4 useUppercase:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 minValue];
    v10 = [v8 maxValue];
    v11 = [v9 isEqual:v10];

    v12 = [v8 minValue];
    v13 = [HKUIDateLabel _formattedTextFromDate:v12 formatTemplate:a4 useUppercase:v5];

    if ((v11 & 1) == 0)
    {
      v14 = [v8 maxValue];
      v15 = [HKUIDateLabel _formattedTextFromDate:v14 formatTemplate:a4 useUppercase:v5];

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

+ (id)_formattedTextFromDate:(id)a3 formatTemplate:(int64_t)a4 useUppercase:(BOOL)a5
{
  if (a3)
  {
    v6 = HKLocalizedStringForDateAndTemplate(a3, a4);
    v7 = v6;
    if (a5)
    {
      v8 = [MEMORY[0x1E695DF58] currentLocale];
      v9 = [v7 uppercaseStringWithLocale:v8];
    }

    else
    {
      v7 = v6;
      v9 = v7;
    }
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"HKUIDateLabel.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"date != nil"}];
    v9 = 0;
  }

  return v9;
}

@end