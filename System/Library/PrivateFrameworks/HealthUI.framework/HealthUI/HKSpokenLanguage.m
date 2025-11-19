@interface HKSpokenLanguage
- (BOOL)isEqual:(id)a3;
- (HKSpokenLanguage)initWithLanguageIdentifier:(id)a3 forCategory:(unint64_t)a4;
- (id)localizedStringForDisplay;
@end

@implementation HKSpokenLanguage

- (HKSpokenLanguage)initWithLanguageIdentifier:(id)a3 forCategory:(unint64_t)a4
{
  v7 = a3;
  v16.receiver = self;
  v16.super_class = HKSpokenLanguage;
  v8 = [(HKSpokenLanguage *)&v16 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF58] currentLocale];
    v10 = [v9 localizedStringForLanguage:v7 context:3];
    languageInCurrentLocale = v8->_languageInCurrentLocale;
    v8->_languageInCurrentLocale = v10;

    v12 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v7];
    v13 = [v12 localizedStringForLanguage:v7 context:3];
    languageInLanguageLocale = v8->_languageInLanguageLocale;
    v8->_languageInLanguageLocale = v13;

    objc_storeStrong(&v8->_identifier, a3);
    v8->_languageCategoryType = a4;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (languageCategoryType = self->_languageCategoryType, languageCategoryType == [v4 languageCategoryType]))
  {
    identifier = self->_identifier;
    v7 = [v4 identifier];
    if ([(NSString *)identifier isEqualToString:v7])
    {
      languageInCurrentLocale = self->_languageInCurrentLocale;
      v9 = [v4 languageInCurrentLocale];
      if ([(NSString *)languageInCurrentLocale isEqualToString:v9])
      {
        languageInLanguageLocale = self->_languageInLanguageLocale;
        v11 = [v4 languageInLanguageLocale];
        v12 = [(NSString *)languageInLanguageLocale isEqualToString:v11];
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
  v3 = [(HKSpokenLanguage *)self languageInCurrentLocale];
  v4 = [(HKSpokenLanguage *)self languageInLanguageLocale];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = [(HKSpokenLanguage *)self languageInCurrentLocale];
  }

  else
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = [v8 localizedStringForKey:@"%1$@ - %2$@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v10 = [(HKSpokenLanguage *)self languageInCurrentLocale];
    v11 = [(HKSpokenLanguage *)self languageInLanguageLocale];
    v6 = [v7 stringWithFormat:v9, v10, v11];
  }

  return v6;
}

@end