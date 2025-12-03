@interface NSLocale(PKAdditions)
+ (__CFString)pk_deviceLanguage;
+ (id)pk_preferredLocale;
@end

@implementation NSLocale(PKAdditions)

+ (__CFString)pk_deviceLanguage
{
  v0 = MEMORY[0x1E696AAE8];
  v1 = PKPassKitBundle();
  localizations = [v1 localizations];
  v3 = [v0 preferredLocalizationsFromArray:localizations forPreferences:0];
  firstObject = [v3 firstObject];

  v5 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:firstObject];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"en";
  }

  v8 = v7;

  return v7;
}

+ (id)pk_preferredLocale
{
  v0 = MEMORY[0x1E695DF58];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  preferredLocalizations = [mainBundle preferredLocalizations];
  firstObject = [preferredLocalizations firstObject];
  v4 = [v0 localeWithLocaleIdentifier:firstObject];

  return v4;
}

@end