@interface DUDefinitionDictionary
+ (id)displayNameForLanguageIdentifier:(id)identifier context:(int64_t)context;
- (BOOL)_hasDefinitionForTerm:(id)term;
- (BOOL)needsDownloadNewerVersion;
- (DUDefinitionDictionary)initWithAsset:(id)asset;
- (NSString)localizedDictionaryName;
- (NSString)localizedLanguageName;
- (NSString)localizedSortName;
- (id)_definitionValueForTerm:(id)term;
- (id)description;
- (void)dealloc;
- (void)setActivated:(BOOL)activated;
@end

@implementation DUDefinitionDictionary

- (DUDefinitionDictionary)initWithAsset:(id)asset
{
  assetCopy = asset;
  v15.receiver = self;
  v15.super_class = DUDefinitionDictionary;
  v6 = [(DUDefinitionDictionary *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rawAsset, asset);
    attributes = [(MAAsset *)v7->_rawAsset attributes];
    v9 = [attributes objectForKey:@"Language"];
    definitionLanguage = v7->_definitionLanguage;
    v7->_definitionLanguage = v9;

    if ([(MAAsset *)v7->_rawAsset wasLocal])
    {
      attributes2 = [(MAAsset *)v7->_rawAsset attributes];
      [(MAAsset *)v7->_rawAsset getLocalFileUrl];
      v7->_dictionary = DCSDictionaryCreateWithAssetAttributes();

      v7->_activated = 0;
    }

    attributes3 = [(MAAsset *)v7->_rawAsset attributes];
    v13 = [attributes3 objectForKeyedSubscript:@"DictionaryPackageName"];

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
  attributes = [(MAAsset *)self->_rawAsset attributes];
  v3 = [attributes objectForKey:@"IndexLanguages"];

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
    localizedDictionaryName = [(DUDefinitionDictionary *)self localizedDictionaryName];
  }

  else
  {
    localizedDictionaryName = [(DUDefinitionDictionary *)self localizedLanguageName];
  }

  return localizedDictionaryName;
}

- (NSString)localizedDictionaryName
{
  if ([(DUDefinitionDictionary *)self isAppleDictionary])
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    attributes = v3;
    v5 = @"Apple Dictionary";
LABEL_5:
    stringByDeletingPathExtension = [v3 localizedStringForKey:v5 value:&stru_285B95F20 table:@"DictionaryUI"];
    goto LABEL_6;
  }

  if ([(DUDefinitionDictionary *)self isTTYDictionary])
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    attributes = v3;
    v5 = @"TTY Dictionary";
    goto LABEL_5;
  }

  attributes = [(MAAsset *)self->_rawAsset attributes];
  stringByDeletingPathExtension = [attributes objectForKey:@"DictionaryPackageDisplayName"];
  if (![stringByDeletingPathExtension length])
  {
    v8 = [attributes objectForKey:@"DictionaryPackageName"];

    stringByDeletingPathExtension = [v8 stringByDeletingPathExtension];
  }

  if (![stringByDeletingPathExtension length])
  {
    localizedLanguageName = [(DUDefinitionDictionary *)self localizedLanguageName];

    stringByDeletingPathExtension = localizedLanguageName;
  }

LABEL_6:

  return stringByDeletingPathExtension;
}

+ (id)displayNameForLanguageIdentifier:(id)identifier context:(int64_t)context
{
  v5 = displayNameForLanguageIdentifier_context____onceToken;
  identifierCopy = identifier;
  if (v5 != -1)
  {
    +[DUDefinitionDictionary displayNameForLanguageIdentifier:context:];
  }

  v7 = [displayNameForLanguageIdentifier_context____displayLocale localizedStringForLanguage:identifierCopy context:context];

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

- (BOOL)_hasDefinitionForTerm:(id)term
{
  termCopy = term;
  v5 = [termCopy length];
  if (v5 >= 0xFA)
  {
    v6 = 250;
  }

  else
  {
    v6 = v5;
  }

  v7 = [termCopy substringToIndex:v6];

  dictionary = self->_dictionary;
  if (dictionary)
  {
    [v7 length];
    LOBYTE(dictionary) = DCSHasDefinitionForTerm() != 0;
  }

  return dictionary;
}

- (id)_definitionValueForTerm:(id)term
{
  termCopy = term;
  v5 = [[DUDefinitionValue alloc] initWithDefinitionDictionary:self term:termCopy];

  [(DUDefinitionValue *)v5 setRawAsset:self->_rawAsset];

  return v5;
}

- (void)setActivated:(BOOL)activated
{
  self->_activated = activated;
  if (!activated)
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
  localizedDictionaryName = [(DUDefinitionDictionary *)self localizedDictionaryName];
  activated = [(DUDefinitionDictionary *)self activated];
  v8 = @"inactive";
  if (activated)
  {
    v8 = @"active";
  }

  v9 = [v3 stringWithFormat:@"%@ <%p>: Dictionary name: %@ (%@), Asset: %@", v5, self, localizedDictionaryName, v8, self->_rawAsset];

  return v9;
}

@end