@interface NSDate
@end

@implementation NSDate

uint64_t __47__NSDate_CRKAdditions__crk_sharedDateFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = crk_sharedDateFormatter_formatter;
  crk_sharedDateFormatter_formatter = v0;

  v2 = crk_sharedDateFormatter_formatter;

  return [v2 setFormatOptions:1907];
}

@end