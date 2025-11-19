@interface DDCreateTimeZoneValuesFromResultValue
@end

@implementation DDCreateTimeZoneValuesFromResultValue

const __CFString *__DDCreateTimeZoneValuesFromResultValue_block_invoke()
{
  result = createPropertyListForResource(@"TimeZones");
  DDCreateTimeZoneValuesFromResultValue__sTimeZonesPlist = result;
  return result;
}

@end