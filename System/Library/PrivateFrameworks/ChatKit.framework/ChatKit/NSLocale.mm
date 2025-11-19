@interface NSLocale
@end

@implementation NSLocale

void __43__NSLocale_CKUtilities____ck_currentLocale__block_invoke()
{
  v0 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v1 = __ck_currentLocale_sLocale;
  __ck_currentLocale_sLocale = v0;
}

@end