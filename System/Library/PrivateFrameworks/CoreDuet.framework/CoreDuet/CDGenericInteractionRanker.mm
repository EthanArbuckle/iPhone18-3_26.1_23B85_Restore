@interface CDGenericInteractionRanker
@end

@implementation CDGenericInteractionRanker

uint64_t __47___CDGenericInteractionRanker_isDateInWeekend___block_invoke()
{
  v0 = [MEMORY[0x1E695DEE8] currentCalendar];
  v1 = isDateInWeekend__calendar;
  isDateInWeekend__calendar = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end