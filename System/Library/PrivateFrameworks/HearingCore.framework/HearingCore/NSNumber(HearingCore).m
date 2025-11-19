@interface NSNumber(HearingCore)
- (uint64_t)localizedFormat;
@end

@implementation NSNumber(HearingCore)

- (uint64_t)localizedFormat
{
  if (localizedFormat_HCNumberFormatterOnceToken != -1)
  {
    [NSNumber(HearingCore) localizedFormat];
  }

  v2 = localizedFormat_HCNumberFormatter;

  return [v2 stringFromNumber:a1];
}

@end