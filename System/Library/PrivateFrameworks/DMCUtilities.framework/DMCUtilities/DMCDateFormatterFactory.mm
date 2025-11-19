@interface DMCDateFormatterFactory
+ (id)isoDateFormatter;
+ (id)isoLocalTimeZoneDateFormatter;
@end

@implementation DMCDateFormatterFactory

+ (id)isoDateFormatter
{
  if (isoDateFormatter_onceToken != -1)
  {
    +[DMCDateFormatterFactory isoDateFormatter];
  }

  v3 = isoDateFormatter_dateFormatter;

  return v3;
}

uint64_t __43__DMCDateFormatterFactory_isoDateFormatter__block_invoke()
{
  isoDateFormatter_dateFormatter = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)isoLocalTimeZoneDateFormatter
{
  if (isoLocalTimeZoneDateFormatter_onceToken != -1)
  {
    +[DMCDateFormatterFactory isoLocalTimeZoneDateFormatter];
  }

  v3 = isoLocalTimeZoneDateFormatter_dateFormatter;

  return v3;
}

uint64_t __56__DMCDateFormatterFactory_isoLocalTimeZoneDateFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = isoLocalTimeZoneDateFormatter_dateFormatter;
  isoLocalTimeZoneDateFormatter_dateFormatter = v0;

  v2 = [MEMORY[0x1E695DFE8] localTimeZone];
  [isoLocalTimeZoneDateFormatter_dateFormatter setTimeZone:v2];

  v3 = isoLocalTimeZoneDateFormatter_dateFormatter;

  return [v3 setFormatOptions:1907];
}

@end