@interface DateTimeFormatRegularExpressionYearMonthDayTime
@end

@implementation DateTimeFormatRegularExpressionYearMonthDayTime

uint64_t ___DateTimeFormatRegularExpressionYearMonthDayTime_block_invoke()
{
  _DateTimeFormatRegularExpressionYearMonthDayTime_regex = _RegularExpressionFromPattern(@"^([0-9]{4})-([0-9]{2})-([0-9]{2})T([0-9]{2}):([0-9]{2}):([0-9]{2})(?:.(?:[0-9]+))?(Z|[+-](?:2[0-3]|[01][0-9]):[0-5][0-9])$");

  return MEMORY[0x2821F96F8]();
}

@end