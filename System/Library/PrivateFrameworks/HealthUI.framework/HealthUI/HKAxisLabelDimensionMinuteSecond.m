@interface HKAxisLabelDimensionMinuteSecond
- (HKAxisLabelDimensionMinuteSecond)initWithStartDate:(id)a3;
- (id)stringForLocation:(id)a3 formatterForStepSize:(id)a4;
@end

@implementation HKAxisLabelDimensionMinuteSecond

- (HKAxisLabelDimensionMinuteSecond)initWithStartDate:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = HKAxisLabelDimensionMinuteSecond;
  v6 = [(HKAxisLabelDimensionMinuteSecond *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
    dateFormatter = v6->_dateFormatter;
    v6->_dateFormatter = v7;

    [(NSDateFormatter *)v6->_dateFormatter setDateFormat:@":ss"];
    objc_storeStrong(&v6->_startDate, a3);
  }

  return v6;
}

- (id)stringForLocation:(id)a3 formatterForStepSize:(id)a4
{
  [a3 doubleValue];
  v6 = v5;
  startDate = self->_startDate;
  if (startDate)
  {
    [(NSDate *)startDate timeIntervalSinceReferenceDate];
    v6 = v6 + v8;
  }

  dateFormatter = self->_dateFormatter;
  v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v6];
  v11 = [(NSDateFormatter *)dateFormatter stringFromDate:v10];

  v12 = MEMORY[0x1E696AEC0];
  v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v14 = [v13 localizedStringForKey:@"TRUNCATED_SECONDS_TIME" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v16 = [v15 localizedStringForKey:@"SECONDS_MEDIUM" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v17 = [v12 stringWithFormat:v14, v11, v16];

  return v17;
}

@end