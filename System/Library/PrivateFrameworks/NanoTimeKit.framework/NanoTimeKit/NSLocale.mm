@interface NSLocale
@end

@implementation NSLocale

void __66__NSLocale_NTKLocaleOverride____loadSwizzledCurrentLocaleIfNeeded__block_invoke()
{
  v0 = objc_opt_class();
  ClassMethod = class_getClassMethod(v0, sel_currentLocale);
  v2 = class_getClassMethod(v0, sel___userCurrentLocale);
  method_exchangeImplementations(ClassMethod, v2);
  v3 = [MEMORY[0x277CBEAF8] __userCurrentLocale];
  v4 = __currentLocaleOverride;
  __currentLocaleOverride = v3;
}

@end