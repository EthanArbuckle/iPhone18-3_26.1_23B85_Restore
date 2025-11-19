@interface NSLocale(MTUtilities)
- (BOOL)mtIsIn24HourTime;
@end

@implementation NSLocale(MTUtilities)

- (BOOL)mtIsIn24HourTime
{
  v1 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"j" options:0 locale:a1];
  v2 = [v1 rangeOfString:@"H"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v1, "rangeOfString:", @"k") != 0x7FFFFFFFFFFFFFFFLL;

  return v2;
}

@end