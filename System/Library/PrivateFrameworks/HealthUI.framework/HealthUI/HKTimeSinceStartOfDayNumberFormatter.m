@interface HKTimeSinceStartOfDayNumberFormatter
- (id)stringFromNumber:(id)a3 displayType:(id)a4 unitController:(id)a5;
@end

@implementation HKTimeSinceStartOfDayNumberFormatter

- (id)stringFromNumber:(id)a3 displayType:(id)a4 unitController:(id)a5
{
  v6 = MEMORY[0x1E695DEE8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 currentCalendar];
  v10 = [v7 hk_startOfDayTransform];

  v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
  v12 = (v10)[2](v10, v9, v11);
  [v8 doubleValue];
  v14 = v13;

  v15 = [v12 dateByAddingTimeInterval:v14];
  v16 = HKLocalizedStringForDateAndTemplate(v15, 23);

  return v16;
}

@end