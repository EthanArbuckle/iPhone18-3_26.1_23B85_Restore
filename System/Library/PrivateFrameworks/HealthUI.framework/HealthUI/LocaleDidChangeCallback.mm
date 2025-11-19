@interface LocaleDidChangeCallback
@end

@implementation LocaleDidChangeCallback

void ___LocaleDidChangeCallback_block_invoke()
{
  v0 = __thisYearDateFormatter;
  __thisYearDateFormatter = 0;

  v1 = __timeFormatter;
  __timeFormatter = 0;
}

@end