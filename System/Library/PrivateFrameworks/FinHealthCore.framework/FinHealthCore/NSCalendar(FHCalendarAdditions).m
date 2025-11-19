@interface NSCalendar(FHCalendarAdditions)
- (id)fh_dateWithStartOfDayByAddingDaysFromNow:()FHCalendarAdditions;
@end

@implementation NSCalendar(FHCalendarAdditions)

- (id)fh_dateWithStartOfDayByAddingDaysFromNow:()FHCalendarAdditions
{
  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v6 setDay:a3];
  v7 = [a1 dateByAddingComponents:v6 toDate:v5 options:0];
  v8 = [a1 startOfDayForDate:v7];

  return v8;
}

@end