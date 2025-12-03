@interface HKTimeSinceStartOfDayNumberFormatter
- (id)stringFromNumber:(id)number displayType:(id)type unitController:(id)controller;
@end

@implementation HKTimeSinceStartOfDayNumberFormatter

- (id)stringFromNumber:(id)number displayType:(id)type unitController:(id)controller
{
  v6 = MEMORY[0x1E695DEE8];
  typeCopy = type;
  numberCopy = number;
  currentCalendar = [v6 currentCalendar];
  hk_startOfDayTransform = [typeCopy hk_startOfDayTransform];

  v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
  v12 = (hk_startOfDayTransform)[2](hk_startOfDayTransform, currentCalendar, v11);
  [numberCopy doubleValue];
  v14 = v13;

  v15 = [v12 dateByAddingTimeInterval:v14];
  v16 = HKLocalizedStringForDateAndTemplate(v15, 23);

  return v16;
}

@end