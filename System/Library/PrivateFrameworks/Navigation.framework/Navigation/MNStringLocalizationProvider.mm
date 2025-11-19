@interface MNStringLocalizationProvider
+ (void)initLocalizationProvider;
- (MNStringLocalizationProvider)init;
- (id)spokenLocale;
@end

@implementation MNStringLocalizationProvider

- (id)spokenLocale
{
  v2 = MEMORY[0x1E695DF58];
  v3 = +[MNUserOptionsEngine sharedInstance];
  v4 = [v3 currentVoiceLanguage];
  v5 = [v2 localeWithLocaleIdentifier:v4];

  return v5;
}

- (MNStringLocalizationProvider)init
{
  v7.receiver = self;
  v7.super_class = MNStringLocalizationProvider;
  v2 = [(MNStringLocalizationProvider *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    locale = v2->_locale;
    v2->_locale = v3;

    v5 = v2;
  }

  return v2;
}

+ (void)initLocalizationProvider
{
  if (initLocalizationProvider_onceToken != -1)
  {
    dispatch_once(&initLocalizationProvider_onceToken, &__block_literal_global_16685);
  }
}

uint64_t __56__MNStringLocalizationProvider_initLocalizationProvider__block_invoke()
{
  v0 = objc_alloc_init(MNStringLocalizationProvider);
  v1 = initLocalizationProvider_localizationProvider;
  initLocalizationProvider_localizationProvider = v0;

  v2 = initLocalizationProvider_localizationProvider;
  v3 = MEMORY[0x1E69A1CA8];

  return [v3 setLocalizationProvider:v2];
}

@end