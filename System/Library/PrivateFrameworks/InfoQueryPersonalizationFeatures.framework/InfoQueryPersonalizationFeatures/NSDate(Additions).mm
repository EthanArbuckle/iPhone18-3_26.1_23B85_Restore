@interface NSDate(Additions)
- (uint64_t)isDateInTodayOrFuture;
@end

@implementation NSDate(Additions)

- (uint64_t)isDateInTodayOrFuture
{
  [self timeIntervalSinceNow];
  if (v2 >= 0.0)
  {
    return 1;
  }

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [currentCalendar isDateInToday:self];

  return v4;
}

@end