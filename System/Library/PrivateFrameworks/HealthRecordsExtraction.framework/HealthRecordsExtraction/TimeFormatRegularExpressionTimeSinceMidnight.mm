@interface TimeFormatRegularExpressionTimeSinceMidnight
@end

@implementation TimeFormatRegularExpressionTimeSinceMidnight

uint64_t ___TimeFormatRegularExpressionTimeSinceMidnight_block_invoke()
{
  _TimeFormatRegularExpressionTimeSinceMidnight_regex = _RegularExpressionFromPattern(@"^([01][0-9]|2[0-3]):([0-5][0-9]):([0-5][0-9])(?:.([0-9]+))?$");

  return MEMORY[0x2821F96F8]();
}

@end