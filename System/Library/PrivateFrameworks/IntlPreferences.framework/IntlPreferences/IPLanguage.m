@interface IPLanguage
+ (id)languageWithIdentifier:(id)a3 normalize:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (IPLanguage)minimizedLanguage;
- (id)description;
- (unint64_t)hash;
@end

@implementation IPLanguage

+ (id)languageWithIdentifier:(id)a3 normalize:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_opt_new();
  v7 = v6;
  if (v4)
  {
    v8 = [IntlUtility normalizedLanguageIDFromString:v5];
    [v7 setIdentifier:v8];
  }

  else
  {
    [v6 setIdentifier:v5];
  }

  if (+[IntlUtility forceCapitalizationInLanguageLists])
  {
    if ([IntlUtility canCapitalizeAutonymForLanguage:v5])
    {
      v9 = 4;
    }

    else
    {
      v9 = 3;
    }

    v10 = 4;
  }

  else
  {
    v10 = 3;
    v9 = 3;
  }

  v11 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v5];
  v12 = [v11 localizedStringForLanguage:v5 context:v9];
  [v7 setName:v12];

  v13 = MEMORY[0x277CBEAF8];
  v14 = [MEMORY[0x277CBEAF8] _deviceLanguage];
  v15 = [v13 localeWithLocaleIdentifier:v14];
  v16 = [v15 localizedStringForLanguage:v5 context:v10];
  [v7 setLocalizedStringForName:v16];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(IPLanguage *)self identifier];
  v6 = [v4 identifier];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (unint64_t)hash
{
  v2 = [(IPLanguage *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(IPLanguage *)self identifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, identifier: %@>", v5, self, v6];

  return v7;
}

- (IPLanguage)minimizedLanguage
{
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [v3 countryCode];

  v5 = MEMORY[0x277CBEAF8];
  v6 = [(IPLanguage *)self identifier];
  v7 = [v5 componentsFromLocaleIdentifier:v6];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CBE690]];

  if ([v4 isEqualToString:v8])
  {
    v9 = MEMORY[0x277CBEAF8];
    v10 = [(IPLanguage *)self identifier];
    v11 = [v9 baseLanguageFromLanguage:v10];
    v12 = [IPLanguage languageWithIdentifier:v11];
  }

  else
  {
    v12 = self;
  }

  return v12;
}

@end