@interface HKSpokenLanguage
- (BOOL)isEqual:(id)equal;
- (HKSpokenLanguage)initWithLanguageIdentifier:(id)identifier forCategory:(unint64_t)category;
- (id)localizedStringForDisplay;
@end

@implementation HKSpokenLanguage

- (HKSpokenLanguage)initWithLanguageIdentifier:(id)identifier forCategory:(unint64_t)category
{
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = HKSpokenLanguage;
  v8 = [(HKSpokenLanguage *)&v16 init];
  if (v8)
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    v10 = [currentLocale localizedStringForLanguage:identifierCopy context:3];
    languageInCurrentLocale = v8->_languageInCurrentLocale;
    v8->_languageInCurrentLocale = v10;

    v12 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:identifierCopy];
    v13 = [v12 localizedStringForLanguage:identifierCopy context:3];
    languageInLanguageLocale = v8->_languageInLanguageLocale;
    v8->_languageInLanguageLocale = v13;

    objc_storeStrong(&v8->_identifier, identifier);
    v8->_languageCategoryType = category;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (languageCategoryType = self->_languageCategoryType, languageCategoryType == [equalCopy languageCategoryType]))
  {
    identifier = self->_identifier;
    identifier = [equalCopy identifier];
    if ([(NSString *)identifier isEqualToString:identifier])
    {
      languageInCurrentLocale = self->_languageInCurrentLocale;
      languageInCurrentLocale = [equalCopy languageInCurrentLocale];
      if ([(NSString *)languageInCurrentLocale isEqualToString:languageInCurrentLocale])
      {
        languageInLanguageLocale = self->_languageInLanguageLocale;
        languageInLanguageLocale = [equalCopy languageInLanguageLocale];
        v12 = [(NSString *)languageInLanguageLocale isEqualToString:languageInLanguageLocale];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)localizedStringForDisplay
{
  languageInCurrentLocale = [(HKSpokenLanguage *)self languageInCurrentLocale];
  languageInLanguageLocale = [(HKSpokenLanguage *)self languageInLanguageLocale];
  v5 = [languageInCurrentLocale isEqualToString:languageInLanguageLocale];

  if (v5)
  {
    languageInCurrentLocale2 = [(HKSpokenLanguage *)self languageInCurrentLocale];
  }

  else
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = [v8 localizedStringForKey:@"%1$@ - %2$@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    languageInCurrentLocale3 = [(HKSpokenLanguage *)self languageInCurrentLocale];
    languageInLanguageLocale2 = [(HKSpokenLanguage *)self languageInLanguageLocale];
    languageInCurrentLocale2 = [v7 stringWithFormat:v9, languageInCurrentLocale3, languageInLanguageLocale2];
  }

  return languageInCurrentLocale2;
}

@end