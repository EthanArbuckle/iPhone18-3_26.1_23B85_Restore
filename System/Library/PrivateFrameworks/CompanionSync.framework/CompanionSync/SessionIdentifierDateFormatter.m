@interface SessionIdentifierDateFormatter
@end

@implementation SessionIdentifierDateFormatter

void ___SessionIdentifierDateFormatter_block_invoke()
{
  v0 = objc_opt_new();
  v1 = _SessionIdentifierDateFormatter___formatter;
  _SessionIdentifierDateFormatter___formatter = v0;

  [_SessionIdentifierDateFormatter___formatter setDateFormat:@"'P'yyyy-MM-dd'T'HH:mm:ss.SSS"];
  v2 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [_SessionIdentifierDateFormatter___formatter setTimeZone:v2];
}

@end