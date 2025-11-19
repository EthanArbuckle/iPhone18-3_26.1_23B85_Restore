@interface NSDate
@end

@implementation NSDate

void __55__NSDate_CalendarAdditions__dateForEndOfDayInTimeZone___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v5 = _EKSharedGregorianCalendarForTimeZone(*(a1 + 40));
    v2 = [v5 dateByAddingComponents:*(a1 + 48) toDate:*(a1 + 56) options:0];
    v3 = *(*(a1 + 64) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

void __65__NSDate_CalendarAdditions__dateAtHour_minute_second_inTimeZone___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v6 = _EKSharedGregorianCalendarForTimeZone(*(a1 + 40));
    v2 = [v6 components:30 fromDate:*(a1 + 32)];
    [v2 setHour:*(a1 + 56)];
    [v2 setMinute:*(a1 + 64)];
    [v2 setSecond:*(a1 + 72)];
    [v2 setTimeZone:*(a1 + 40)];
    v3 = [v6 dateFromComponents:v2];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

uint64_t __65__NSDate_CalendarAdditions__dateWithoutTimeComponentsInTimeZone___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) dateRemovingTimeComponentsInCalendar:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

void __72__NSDate_CalendarAdditions___performBlockBehindDispatchSync_inTimeZone___block_invoke(uint64_t a1)
{
  v2 = _EKSharedGregorianCalendarForTimeZone(*(a1 + 32));
  (*(*(a1 + 40) + 16))();
}

uint64_t __35__NSDate_CalClassAdditions__calGMT__block_invoke()
{
  calGMT_gmt = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __72__NSDate_CalClassAdditions___stringWithUseAbbreviatedFormats_lowerCase___block_invoke()
{
  _stringWithUseAbbreviatedFormats_lowerCase__calendar = [MEMORY[0x1E695DEE8] currentCalendar];

  return MEMORY[0x1EEE66BB8]();
}

@end