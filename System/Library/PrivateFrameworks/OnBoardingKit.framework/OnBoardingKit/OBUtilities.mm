@interface OBUtilities
+ (id)localizedString:(id)string forTable:(id)table inBundle:(id)bundle forLanguage:(id)language;
+ (id)stringWithFormat:(id)format;
@end

@implementation OBUtilities

+ (id)localizedString:(id)string forTable:(id)table inBundle:(id)bundle forLanguage:(id)language
{
  v22[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  tableCopy = table;
  bundleCopy = bundle;
  languageCopy = language;
  if ([stringCopy length] && objc_msgSend(tableCopy, "length") && objc_msgSend(languageCopy, "length"))
  {
    v13 = MEMORY[0x1E696AAE8];
    localizations = [bundleCopy localizations];
    v22[0] = languageCopy;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v16 = [v13 preferredLocalizationsFromArray:localizations forPreferences:v15];
    firstObject = [v16 firstObject];

    v18 = [bundleCopy localizedStringForKey:stringCopy value:0 table:tableCopy localization:firstObject];
  }

  else
  {
    v18 = 0;
  }

  if (![v18 length])
  {
    v19 = [bundleCopy localizedStringForKey:stringCopy value:&stru_1F2CE9518 table:tableCopy];

    v18 = v19;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)stringWithFormat:(id)format
{
  v3 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  v5 = [[v3 alloc] initWithFormat:formatCopy arguments:&v8];

  return v5;
}

@end