@interface CalCopyAbsoluteCalendarItemAlarmsInDateRange
@end

@implementation CalCopyAbsoluteCalendarItemAlarmsInDateRange

uint64_t ___CalCopyAbsoluteCalendarItemAlarmsInDateRange_block_invoke(uint64_t a1, uint64_t a2)
{
  sqlite3_bind_int(*(a2 + 8), 1, *(a1 + 32));
  v4 = *(a2 + 8);
  v5 = *(a1 + 40);

  return sqlite3_bind_int(v4, 2, v5);
}

@end