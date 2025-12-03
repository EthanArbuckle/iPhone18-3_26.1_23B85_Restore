@interface IPLanguage
+ (id)languageWithIdentifier:(id)identifier normalize:(BOOL)normalize;
- (BOOL)isEqual:(id)equal;
- (IPLanguage)minimizedLanguage;
- (id)description;
- (unint64_t)hash;
@end

@implementation IPLanguage

+ (id)languageWithIdentifier:(id)identifier normalize:(BOOL)normalize
{
  normalizeCopy = normalize;
  identifierCopy = identifier;
  v6 = objc_opt_new();
  v7 = v6;
  if (normalizeCopy)
  {
    v8 = [IntlUtility normalizedLanguageIDFromString:identifierCopy];
    [v7 setIdentifier:v8];
  }

  else
  {
    [v6 setIdentifier:identifierCopy];
  }

  if (+[IntlUtility forceCapitalizationInLanguageLists])
  {
    if ([IntlUtility canCapitalizeAutonymForLanguage:identifierCopy])
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

  v11 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:identifierCopy];
  v12 = [v11 localizedStringForLanguage:identifierCopy context:v9];
  [v7 setName:v12];

  v13 = MEMORY[0x277CBEAF8];
  _deviceLanguage = [MEMORY[0x277CBEAF8] _deviceLanguage];
  v15 = [v13 localeWithLocaleIdentifier:_deviceLanguage];
  v16 = [v15 localizedStringForLanguage:identifierCopy context:v10];
  [v7 setLocalizedStringForName:v16];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  identifier = [(IPLanguage *)self identifier];
  identifier2 = [equalCopy identifier];

  LOBYTE(equalCopy) = [identifier isEqual:identifier2];
  return equalCopy;
}

- (unint64_t)hash
{
  identifier = [(IPLanguage *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(IPLanguage *)self identifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, identifier: %@>", v5, self, identifier];

  return v7;
}

- (IPLanguage)minimizedLanguage
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  countryCode = [currentLocale countryCode];

  v5 = MEMORY[0x277CBEAF8];
  identifier = [(IPLanguage *)self identifier];
  v7 = [v5 componentsFromLocaleIdentifier:identifier];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CBE690]];

  if ([countryCode isEqualToString:v8])
  {
    v9 = MEMORY[0x277CBEAF8];
    identifier2 = [(IPLanguage *)self identifier];
    v11 = [v9 baseLanguageFromLanguage:identifier2];
    selfCopy = [IPLanguage languageWithIdentifier:v11];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end