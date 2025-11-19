@interface DUDefinitionDictionary
+ (id)displayNameForLanguageIdentifier:(id)a3 context:(int64_t)a4;
- (BOOL)_hasDefinitionForTerm:(id)a3;
- (BOOL)needsDownloadNewerVersion;
- (DUDefinitionDictionary)initWithAsset:(id)a3;
- (NSString)localizedDictionaryName;
- (NSString)localizedLanguageName;
- (NSString)localizedSortName;
- (id)_definitionValueForTerm:(id)a3;
- (id)description;
- (void)dealloc;
- (void)setActivated:(BOOL)a3;
@end

@implementation DUDefinitionDictionary

- (DUDefinitionDictionary)initWithAsset:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = DUDefinitionDictionary;
  v6 = [(DUDefinitionDictionary *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rawAsset, a3);
    v8 = [(MAAsset *)v7->_rawAsset attributes];
    v9 = [v8 objectForKey:@"Language"];
    definitionLanguage = v7->_definitionLanguage;
    v7->_definitionLanguage = v9;

    if ([(MAAsset *)v7->_rawAsset wasLocal])
    {
      v11 = [(MAAsset *)v7->_rawAsset attributes];
      [(MAAsset *)v7->_rawAsset getLocalFileUrl];
      v7->_dictionary = DCSDictionaryCreateWithAssetAttributes();

      v7->_activated = 0;
    }

    v12 = [(MAAsset *)v7->_rawAsset attributes];
    v13 = [v12 objectForKeyedSubscript:@"DictionaryPackageName"];

    -[DUDefinitionDictionary setIsAppleDictionary:](v7, "setIsAppleDictionary:", [v13 isEqualToString:@"Apple Dictionary.dictionary"]);
    -[DUDefinitionDictionary setIsTTYDictionary:](v7, "setIsTTYDictionary:", [v13 isEqualToString:@"TTY Abbreviations Dictionary.dictionary"]);
  }

  return v7;
}

- (void)dealloc
{
  dictionary = self->_dictionary;
  if (dictionary)
  {
    CFRelease(dictionary);
    self->_dictionary = 0;
  }

  v4.receiver = self;
  v4.super_class = DUDefinitionDictionary;
  [(DUDefinitionDictionary *)&v4 dealloc];
}

- (NSString)localizedLanguageName
{
  v2 = [(MAAsset *)self->_rawAsset attributes];
  v3 = [v2 objectForKey:@"IndexLanguages"];

  if ([v3 count])
  {
    v4 = objc_opt_class();
    v5 = [v3 objectAtIndexedSubscript:0];
    v6 = [v4 displayNameForLanguageIdentifier:v5 context:3];

    if ([v3 count] == 1)
    {
      v7 = v6;
    }

    else if ([v3 count] == 2)
    {
      v8 = objc_opt_class();
      v9 = [v3 objectAtIndexedSubscript:1];
      v10 = [v8 displayNameForLanguageIdentifier:v9 context:5];

      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v6, v10];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)localizedSortName
{
  if ([(DUDefinitionDictionary *)self isAppleDictionary]|| [(DUDefinitionDictionary *)self isTTYDictionary])
  {
    v3 = [(DUDefinitionDictionary *)self localizedDictionaryName];
  }

  else
  {
    v3 = [(DUDefinitionDictionary *)self localizedLanguageName];
  }

  return v3;
}

- (NSString)localizedDictionaryName
{
  if ([(DUDefinitionDictionary *)self isAppleDictionary])
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = v3;
    v5 = @"Apple Dictionary";
LABEL_5:
    v6 = [v3 localizedStringForKey:v5 value:&stru_285B95F20 table:@"DictionaryUI"];
    goto LABEL_6;
  }

  if ([(DUDefinitionDictionary *)self isTTYDictionary])
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = v3;
    v5 = @"TTY Dictionary";
    goto LABEL_5;
  }

  v4 = [(MAAsset *)self->_rawAsset attributes];
  v6 = [v4 objectForKey:@"DictionaryPackageDisplayName"];
  if (![v6 length])
  {
    v8 = [v4 objectForKey:@"DictionaryPackageName"];

    v6 = [v8 stringByDeletingPathExtension];
  }

  if (![v6 length])
  {
    v9 = [(DUDefinitionDictionary *)self localizedLanguageName];

    v6 = v9;
  }

LABEL_6:

  return v6;
}

+ (id)displayNameForLanguageIdentifier:(id)a3 context:(int64_t)a4
{
  v5 = displayNameForLanguageIdentifier_context____onceToken;
  v6 = a3;
  if (v5 != -1)
  {
    +[DUDefinitionDictionary displayNameForLanguageIdentifier:context:];
  }

  v7 = [displayNameForLanguageIdentifier_context____displayLocale localizedStringForLanguage:v6 context:a4];

  return v7;
}

void __67__DUDefinitionDictionary_displayNameForLanguageIdentifier_context___block_invoke()
{
  v0 = MEMORY[0x277CBEAF8];
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v2 = [v1 preferredLocalizations];
  v3 = [v2 firstObject];
  v6 = [v0 canonicalLanguageIdentifierFromString:v3];

  v4 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:v6];
  v5 = displayNameForLanguageIdentifier_context____displayLocale;
  displayNameForLanguageIdentifier_context____displayLocale = v4;
}

- (BOOL)_hasDefinitionForTerm:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  if (v5 >= 0xFA)
  {
    v6 = 250;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 substringToIndex:v6];

  dictionary = self->_dictionary;
  if (dictionary)
  {
    [v7 length];
    LOBYTE(dictionary) = DCSHasDefinitionForTerm() != 0;
  }

  return dictionary;
}

- (id)_definitionValueForTerm:(id)a3
{
  v4 = a3;
  v5 = [[DUDefinitionValue alloc] initWithDefinitionDictionary:self term:v4];

  [(DUDefinitionValue *)v5 setRawAsset:self->_rawAsset];

  return v5;
}

- (void)setActivated:(BOOL)a3
{
  self->_activated = a3;
  if (!a3)
  {
    assetToUpgrade = self->_assetToUpgrade;
    if (assetToUpgrade)
    {
      objc_storeStrong(&self->_rawAsset, assetToUpgrade);
      v5 = self->_assetToUpgrade;
      self->_assetToUpgrade = 0;
    }
  }
}

- (BOOL)needsDownloadNewerVersion
{
  assetToUpgrade = self->_assetToUpgrade;
  if (assetToUpgrade)
  {
    LOBYTE(assetToUpgrade) = self->_rawAsset == assetToUpgrade || (v4 = [(MAAsset *)assetToUpgrade _contentVersion], v4 > [(MAAsset *)self->_rawAsset _contentVersion]) || [(MAAsset *)self->_rawAsset state]== 3;
  }

  return assetToUpgrade;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(DUDefinitionDictionary *)self localizedDictionaryName];
  v7 = [(DUDefinitionDictionary *)self activated];
  v8 = @"inactive";
  if (v7)
  {
    v8 = @"active";
  }

  v9 = [v3 stringWithFormat:@"%@ <%p>: Dictionary name: %@ (%@), Asset: %@", v5, self, v6, v8, self->_rawAsset];

  return v9;
}

@end