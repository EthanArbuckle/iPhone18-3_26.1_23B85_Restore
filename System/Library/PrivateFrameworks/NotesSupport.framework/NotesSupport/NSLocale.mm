@interface NSLocale
@end

@implementation NSLocale

void __34__NSLocale_IC__ic_numberingSystem__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) localeIdentifier];
  v1 = _CFLocaleCopyNumberingSystemForLocaleIdentifier();
  v2 = ic_numberingSystem_numberingSystem;
  ic_numberingSystem_numberingSystem = v1;
}

@end