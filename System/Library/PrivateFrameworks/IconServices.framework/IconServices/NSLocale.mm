@interface NSLocale
@end

@implementation NSLocale

void __63__NSLocale_IconServicesAdditions___IS_currentLanguageDirection__block_invoke()
{
  v0 = MEMORY[0x1E695DF58];
  v2 = [MEMORY[0x1E695DF58] currentLocale];
  v1 = [v2 languageCode];
  _IS_currentLanguageDirection_direction = [v0 characterDirectionForLanguage:v1];
}

@end