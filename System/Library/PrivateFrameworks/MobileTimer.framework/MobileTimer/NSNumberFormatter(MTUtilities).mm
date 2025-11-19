@interface NSNumberFormatter(MTUtilities)
+ (id)mtDecimalStyleNumberFormatter;
@end

@implementation NSNumberFormatter(MTUtilities)

+ (id)mtDecimalStyleNumberFormatter
{
  if (mtDecimalStyleNumberFormatter_onceToken != -1)
  {
    +[NSNumberFormatter(MTUtilities) mtDecimalStyleNumberFormatter];
  }

  v1 = mtDecimalStyleNumberFormatter__decimalStyleumberFormatter;

  return v1;
}

@end