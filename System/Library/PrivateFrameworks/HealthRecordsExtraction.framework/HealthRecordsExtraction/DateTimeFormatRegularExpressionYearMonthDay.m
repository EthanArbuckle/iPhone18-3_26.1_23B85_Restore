@interface DateTimeFormatRegularExpressionYearMonthDay
@end

@implementation DateTimeFormatRegularExpressionYearMonthDay

uint64_t ___DateTimeFormatRegularExpressionYearMonthDay_block_invoke()
{
  _DateTimeFormatRegularExpressionYearMonthDay_regex = _RegularExpressionFromPattern(@"^([0-9]{4})-([0-9]{2})-([0-9]{2})$");

  return MEMORY[0x2821F96F8]();
}

@end