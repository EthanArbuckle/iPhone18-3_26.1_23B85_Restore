@interface ICLocalizationUtilities
+ (BOOL)isArabic;
+ (BOOL)supportsRTL;
@end

@implementation ICLocalizationUtilities

+ (BOOL)supportsRTL
{
  if (supportsRTL_onceToken != -1)
  {
    +[ICLocalizationUtilities supportsRTL];
  }

  return supportsRTL_sCachedSupportsRTL;
}

void __38__ICLocalizationUtilities_supportsRTL__block_invoke()
{
  supportsRTL_sCachedSupportsRTL = ICAnyInputLanguagePassesBlock(&__block_literal_global_39_0);
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v0 = *MEMORY[0x1E69DE6B8];
  v1 = [MEMORY[0x1E696ADC8] mainQueue];
  v2 = [v3 addObserverForName:v0 object:0 queue:v1 usingBlock:&__block_literal_global_4_0];
}

BOOL __38__ICLocalizationUtilities_supportsRTL__block_invoke_2()
{
  result = ICAnyInputLanguagePassesBlock(&__block_literal_global_39_0);
  supportsRTL_sCachedSupportsRTL = result;
  return result;
}

+ (BOOL)isArabic
{
  autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  languageCode = [autoupdatingCurrentLocale languageCode];

  LOBYTE(autoupdatingCurrentLocale) = [languageCode hasPrefix:@"ar"];
  return autoupdatingCurrentLocale;
}

@end