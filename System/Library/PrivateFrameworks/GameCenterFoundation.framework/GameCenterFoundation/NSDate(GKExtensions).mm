@interface NSDate(GKExtensions)
+ (id)_gkFormattedTimeIntervalStringWithStartDate:()GKExtensions endDate:calendarUnits:style:;
- (uint64_t)_gkFormattedDateForStyle:()GKExtensions relative:;
@end

@implementation NSDate(GKExtensions)

+ (id)_gkFormattedTimeIntervalStringWithStartDate:()GKExtensions endDate:calendarUnits:style:
{
  v9 = MEMORY[0x277CCA958];
  v10 = a4;
  v11 = a3;
  v12 = objc_alloc_init(v9);
  [v12 setUnitsStyle:a6];
  v13 = [MEMORY[0x277CBEA80] currentCalendar];
  v14 = [v13 components:a5 fromDate:v11 toDate:v10 options:0];

  [v12 setAllowedUnits:a5];
  v15 = [v12 stringFromDateComponents:v14];

  return v15;
}

- (uint64_t)_gkFormattedDateForStyle:()GKExtensions relative:
{
  if (_gkFormattedDateForStyle_relative__once != -1)
  {
    [NSDate(GKExtensions) _gkFormattedDateForStyle:relative:];
  }

  if ([_gkFormattedDateForStyle_relative__sDateFormatter doesRelativeDateFormatting] != a4)
  {
    [_gkFormattedDateForStyle_relative__sDateFormatter setDoesRelativeDateFormatting:a4];
  }

  [_gkFormattedDateForStyle_relative__sDateFormatter _gkUpdateLocale];
  [_gkFormattedDateForStyle_relative__sDateFormatter setDateStyle:a3];
  v7 = _gkFormattedDateForStyle_relative__sDateFormatter;

  return [v7 stringFromDate:a1];
}

@end