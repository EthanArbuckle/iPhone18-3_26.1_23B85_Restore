@interface BRLTTable
- (BOOL)_isEqualToTable:(id)table;
- (BOOL)isCustomBrailleTable;
- (BOOL)isEqual:(id)equal;
- (BOOL)supportsTranslationByCell;
- (BOOL)supportsTranslationMode8Dot;
- (BOOL)supportsTranslationModeContracted;
- (BRLTTable)initWithExternalIdentifier:(id)identifier;
- (BRLTTable)initWithIdentifier:(id)identifier;
- (BRLTTable)initWithServiceIdentifier:(id)identifier language:(id)language variant:(id)variant;
- (BRLTTable)initWithServiceIdentifier:(id)identifier tableIdentifier:(id)tableIdentifier;
- (NSArray)replacements;
- (NSBundle)_bundle;
- (NSSet)locales;
- (NSString)candidateSelectionLanguage;
- (NSString)externalServiceIdentifier;
- (NSString)identifier;
- (NSString)localizedLanguage;
- (NSString)localizedName;
- (NSString)localizedNameWithService;
- (NSString)localizedService;
- (NSString)localizedVariant;
- (NSString)tableIdentifier;
- (id)_brailleTableDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation BRLTTable

- (BRLTTable)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = BRLTTable;
  v5 = [(BRLTTable *)&v13 init];
  if (v5)
  {
    brl_serviceIdentifier = [identifierCopy brl_serviceIdentifier];
    serviceIdentifier = v5->_serviceIdentifier;
    v5->_serviceIdentifier = brl_serviceIdentifier;

    brl_language = [identifierCopy brl_language];
    language = v5->_language;
    v5->_language = brl_language;

    brl_variant = [identifierCopy brl_variant];
    variant = v5->_variant;
    v5->_variant = brl_variant;
  }

  return v5;
}

- (BRLTTable)initWithServiceIdentifier:(id)identifier tableIdentifier:(id)tableIdentifier
{
  tableIdentifierCopy = tableIdentifier;
  identifierCopy = identifier;
  brl_language = [tableIdentifierCopy brl_language];
  brl_variant = [tableIdentifierCopy brl_variant];

  v10 = [(BRLTTable *)self initWithServiceIdentifier:identifierCopy language:brl_language variant:brl_variant];
  return v10;
}

- (BRLTTable)initWithServiceIdentifier:(id)identifier language:(id)language variant:(id)variant
{
  identifierCopy = identifier;
  languageCopy = language;
  variantCopy = variant;
  v19.receiver = self;
  v19.super_class = BRLTTable;
  v11 = [(BRLTTable *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    serviceIdentifier = v11->_serviceIdentifier;
    v11->_serviceIdentifier = v12;

    v14 = [languageCopy copy];
    language = v11->_language;
    v11->_language = v14;

    v16 = [variantCopy copy];
    variant = v11->_variant;
    v11->_variant = v16;
  }

  return v11;
}

- (BRLTTable)initWithExternalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  brl_serviceIdentifier = [identifierCopy brl_serviceIdentifier];
  brl_tableIdentifier = [identifierCopy brl_tableIdentifier];
  if ([identifierCopy isEqualToString:@"system.ko24g1"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"system.ja"))
  {
    v7 = @"apple";
LABEL_4:

    brl_serviceIdentifier = v7;
    goto LABEL_5;
  }

  if ([brl_serviceIdentifier isEqualToString:@"system"])
  {
    v7 = @"duxbury";
    goto LABEL_4;
  }

  if (([identifierCopy isEqualToString:@"system.ebupharma"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"system.ascii") & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"system.ipa") & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"system.unicode"))
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.scrod.braille.table.%@", brl_tableIdentifier, v11];
    goto LABEL_6;
  }

LABEL_5:
  [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.scrod.braille.table.%@.%@", brl_serviceIdentifier, brl_tableIdentifier];
  v8 = LABEL_6:;
  v9 = [(BRLTTable *)self initWithIdentifier:v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[BRLTTable allocWithZone:?]language:"initWithServiceIdentifier:language:variant:" variant:self->_serviceIdentifier, self->_language, self->_variant];
  _bundle = [(BRLTTable *)self _bundle];
  [(BRLTTable *)v4 set_bundle:_bundle];

  return v4;
}

- (NSString)identifier
{
  v3 = MEMORY[0x277CCACA8];
  serviceIdentifier = [(BRLTTable *)self serviceIdentifier];
  language = [(BRLTTable *)self language];
  v6 = [v3 stringWithFormat:@"%@.%@", serviceIdentifier, language];

  variant = [(BRLTTable *)self variant];

  if (variant)
  {
    variant2 = [(BRLTTable *)self variant];
    v9 = [v6 stringByAppendingFormat:@"-%@", variant2];

    v6 = v9;
  }

  return v6;
}

- (NSSet)locales
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = +[BRLTTableEnumerator tableEnumeratorWithSystemBundlePath];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  translatorBundles = [v3 translatorBundles];
  v5 = [translatorBundles countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(translatorBundles);
        }

        bundleIdentifier = [*(*(&v15 + 1) + 8 * i) bundleIdentifier];
        serviceIdentifier = [(BRLTTable *)self serviceIdentifier];
        v11 = [bundleIdentifier isEqualToString:serviceIdentifier];

        if (v11)
        {
          v12 = [v3 supportedLocalesForTable:self];

          goto LABEL_11;
        }
      }

      v6 = [translatorBundles countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = objc_opt_new();
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (NSString)externalServiceIdentifier
{
  v3 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"."];
  serviceIdentifier = [(BRLTTable *)self serviceIdentifier];
  v5 = [serviceIdentifier rangeOfCharacterFromSet:v3 options:4];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = @"unknown";
  }

  else
  {
    serviceIdentifier2 = [(BRLTTable *)self serviceIdentifier];
    v6 = [serviceIdentifier2 substringFromIndex:v5 + 1];

    if (([(__CFString *)v6 isEqualToString:@"duxbury"]& 1) != 0 || [(__CFString *)v6 isEqualToString:@"apple"])
    {

      v6 = @"system";
    }
  }

  return v6;
}

- (NSString)tableIdentifier
{
  language = [(BRLTTable *)self language];
  variant = [(BRLTTable *)self variant];

  if (variant)
  {
    variant2 = [(BRLTTable *)self variant];
    v6 = [language stringByAppendingFormat:@"-%@", variant2];

    language = v6;
  }

  return language;
}

- (NSString)localizedName
{
  _brailleTableDictionary = [(BRLTTable *)self _brailleTableDictionary];
  v4 = [_brailleTableDictionary objectForKey:@"identifierIsLanguage"];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    tableIdentifier = [(BRLTTable *)self tableIdentifier];
    localizedLanguage2 = BRLTLocalizedNameForLanguage(tableIdentifier);
  }

  else
  {
    tableIdentifier = [(BRLTTable *)self localizedVariant];
    if (tableIdentifier)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = BRLTLocalizedStringForKey(@"table.name.with.variant");
      localizedLanguage = [(BRLTTable *)self localizedLanguage];
      v11 = [v8 localizedStringWithFormat:v9, localizedLanguage, tableIdentifier];

      goto LABEL_7;
    }

    localizedLanguage2 = [(BRLTTable *)self localizedLanguage];
  }

  v11 = localizedLanguage2;
LABEL_7:

  return v11;
}

- (NSString)localizedNameWithService
{
  _brailleTableDictionary = [(BRLTTable *)self _brailleTableDictionary];
  v4 = [_brailleTableDictionary objectForKey:@"identifierIsLanguage"];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    v6 = MEMORY[0x277CCACA8];
    localizedVariant = BRLTLocalizedStringForKey(@"table.name.with.service");
    tableIdentifier = [(BRLTTable *)self tableIdentifier];
    localizedLanguage = BRLTLocalizedNameForLanguage(tableIdentifier);
    localizedService = [(BRLTTable *)self localizedService];
    [v6 localizedStringWithFormat:localizedVariant, localizedLanguage, localizedService, v15];
  }

  else
  {
    localizedVariant = [(BRLTTable *)self localizedVariant];
    v11 = MEMORY[0x277CCACA8];
    if (localizedVariant)
    {
      tableIdentifier = BRLTLocalizedStringForKey(@"table.name.with.variant.and.service");
      localizedLanguage = [(BRLTTable *)self localizedLanguage];
      localizedService = [(BRLTTable *)self localizedService];
      v14 = localizedVariant;
      v15 = localizedService;
    }

    else
    {
      tableIdentifier = BRLTLocalizedStringForKey(@"table.name.with.service");
      localizedLanguage = [(BRLTTable *)self localizedLanguage];
      localizedService = [(BRLTTable *)self localizedService];
      v14 = localizedService;
    }

    [v11 localizedStringWithFormat:tableIdentifier, localizedLanguage, v14, v15];
  }
  v12 = ;

  return v12;
}

- (NSString)localizedService
{
  serviceIdentifier = [(BRLTTable *)self serviceIdentifier];
  v3 = BRLTLocalizedStringForKey(serviceIdentifier);

  return v3;
}

- (NSString)localizedLanguage
{
  _bundle = [(BRLTTable *)self _bundle];
  localizedInfoDictionary = [_bundle localizedInfoDictionary];
  language = [(BRLTTable *)self language];
  v6 = [localizedInfoDictionary objectForKeyedSubscript:language];

  if (![v6 length])
  {
    language2 = [(BRLTTable *)self language];
    v8 = BRLTLocalizedStringForKey(language2);

    language3 = [(BRLTTable *)self language];
    LODWORD(language2) = [v8 isEqualToString:language3];

    if (language2)
    {
      language4 = [(BRLTTable *)self language];
      v11 = BRLTLocalizedNameForLanguage(language4);

      v6 = BRLTLocalizedStringForKey(v11);
    }

    else
    {
      v6 = v8;
    }
  }

  return v6;
}

- (NSString)localizedVariant
{
  variant = [(BRLTTable *)self variant];
  v4 = [variant length];

  if (!v4)
  {
    goto LABEL_11;
  }

  if (_os_feature_enabled_impl())
  {
    variant2 = [(BRLTTable *)self variant];
    v6 = [variant2 isEqualToString:@"g1"];

    if (v6)
    {
      v7 = @"variant.g1";
LABEL_9:
      v12 = BRLTLocalizedStringForKey(v7);
      goto LABEL_25;
    }

    variant3 = [(BRLTTable *)self variant];
    v9 = [variant3 isEqualToString:@"g2"];

    if (v9)
    {
      v7 = @"variant.g2";
      goto LABEL_9;
    }

    variant4 = [(BRLTTable *)self variant];
    v11 = [variant4 isEqualToString:@"8dot"];

    if (v11)
    {
      v7 = @"variant.8dot";
      goto LABEL_9;
    }

    variant5 = [(BRLTTable *)self variant];
    v14 = [variant5 isEqualToString:@"6dot"];

    if (v14)
    {
LABEL_11:
      v12 = 0;
      goto LABEL_25;
    }
  }

  v15 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"_"];
  variant6 = [(BRLTTable *)self variant];
  v17 = [variant6 rangeOfCharacterFromSet:v15 options:4];

  variant7 = [(BRLTTable *)self variant];
  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = 0;
  }

  else
  {
    variant8 = [(BRLTTable *)self variant];
    v21 = [variant8 substringToIndex:v17];

    variant9 = [(BRLTTable *)self variant];
    v19 = [variant9 substringFromIndex:v17 + 1];

    variant7 = v21;
  }

  v23 = MEMORY[0x277CCACA8];
  language = [(BRLTTable *)self language];
  v25 = [v23 stringWithFormat:@"%@.%@.variant", language, variant7];

  v12 = BRLTLocalizedStringForKey(v25);
  if ([v19 isEqualToString:@"g1"])
  {
    v26 = @"variant.name.g1";
LABEL_23:
    v27 = MEMORY[0x277CCACA8];
    v28 = BRLTLocalizedStringForKey(v26);
    v29 = [v27 stringWithFormat:v28, v12];

    v12 = v29;
    goto LABEL_24;
  }

  if ([v19 isEqualToString:@"g2"])
  {
    v26 = @"variant.name.g2";
    goto LABEL_23;
  }

  if ([v19 isEqualToString:@"8dot"])
  {
    v26 = @"variant.name.8dot";
    goto LABEL_23;
  }

  if ([v19 isEqualToString:@"computer"])
  {
    v26 = @"variant.name.computer";
    goto LABEL_23;
  }

LABEL_24:

LABEL_25:

  return v12;
}

- (BOOL)supportsTranslationModeContracted
{
  _brailleTableDictionary = [(BRLTTable *)self _brailleTableDictionary];
  v3 = _brailleTableDictionary;
  if (_brailleTableDictionary)
  {
    v4 = [_brailleTableDictionary objectForKeyedSubscript:@"supportsContraction"];
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      bOOLValue = [v4 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)supportsTranslationMode8Dot
{
  _brailleTableDictionary = [(BRLTTable *)self _brailleTableDictionary];
  v3 = _brailleTableDictionary;
  if (_brailleTableDictionary)
  {
    v4 = [_brailleTableDictionary objectForKeyedSubscript:@"supports8dot"];
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      bOOLValue = [v4 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (NSArray)replacements
{
  v28 = *MEMORY[0x277D85DE8];
  _brailleTableDictionary = [(BRLTTable *)self _brailleTableDictionary];
  v3 = _brailleTableDictionary;
  if (_brailleTableDictionary)
  {
    v4 = [_brailleTableDictionary objectForKeyedSubscript:@"replacements"];
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v21 = v3;
      v7 = objc_opt_new();
      v8 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"."];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v20 = v4;
      v9 = v4;
      v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v24;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v24 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v23 + 1) + 8 * i);
            if ([v14 rangeOfCharacterFromSet:v8 options:4] == 0x7FFFFFFFFFFFFFFFLL)
            {
              v15 = MEMORY[0x277CCACA8];
              serviceIdentifier = [(BRLTTable *)self serviceIdentifier];
              v17 = [v15 stringWithFormat:@"%@.%@", serviceIdentifier, v14];
              [v7 addObject:v17];
            }

            else
            {
              [v7 addObject:v14];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v11);
      }

      v4 = v20;
      v3 = v21;
    }

    else
    {
      v7 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)isCustomBrailleTable
{
  _brailleTableDictionary = [(BRLTTable *)self _brailleTableDictionary];
  v3 = _brailleTableDictionary;
  if (_brailleTableDictionary)
  {
    v4 = [_brailleTableDictionary objectForKeyedSubscript:@"customBraille"];
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      bOOLValue = [v4 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)supportsTranslationByCell
{
  _brailleTableDictionary = [(BRLTTable *)self _brailleTableDictionary];
  v3 = _brailleTableDictionary;
  if (_brailleTableDictionary)
  {
    v4 = [_brailleTableDictionary objectForKeyedSubscript:@"supportsTranslationByCell"];
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      bOOLValue = [v4 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (NSString)candidateSelectionLanguage
{
  _brailleTableDictionary = [(BRLTTable *)self _brailleTableDictionary];
  v3 = _brailleTableDictionary;
  if (_brailleTableDictionary)
  {
    v4 = [_brailleTableDictionary objectForKeyedSubscript:@"candidateSelectionLanguage"];
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
    }

    else
    {
      v7 = &stru_2853FD1A8;
    }
  }

  else
  {
    v7 = &stru_2853FD1A8;
  }

  return v7;
}

- (id)_brailleTableDictionary
{
  _bundle = [(BRLTTable *)self _bundle];
  identifier = [(BRLTTable *)self identifier];
  bundleIdentifier = [_bundle bundleIdentifier];
  v6 = bundleIdentifier;
  if (bundleIdentifier)
  {
    v7 = [identifier substringFromIndex:{objc_msgSend(bundleIdentifier, "length") + 1}];
  }

  else
  {
    v7 = 0;
  }

  v8 = [_bundle objectForInfoDictionaryKey:@"BrailleTables"];
  v9 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v14 = 0;
    goto LABEL_12;
  }

  if (!v7)
  {
    v11 = 0;
    goto LABEL_10;
  }

  v11 = [v8 objectForKey:v7];
  v12 = objc_opt_self();
  v13 = objc_opt_isKindOfClass();

  if (v13)
  {
LABEL_10:
    v14 = v11;
    v11 = v14;
    goto LABEL_11;
  }

  v14 = 0;
LABEL_11:

LABEL_12:

  return v14;
}

- (NSBundle)_bundle
{
  v22 = *MEMORY[0x277D85DE8];
  p_bundle = &self->_bundle;
  bundle = self->_bundle;
  if (!bundle)
  {
    +[BRLTTableEnumerator tableEnumeratorWithSystemBundlePath];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = v20 = 0u;
    translatorBundles = [v16 translatorBundles];
    v6 = [translatorBundles countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(translatorBundles);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          bundleIdentifier = [v10 bundleIdentifier];
          serviceIdentifier = [(BRLTTable *)self serviceIdentifier];
          v13 = [bundleIdentifier isEqualToString:serviceIdentifier];

          if (v13)
          {
            objc_storeStrong(p_bundle, v10);
            goto LABEL_12;
          }
        }

        v7 = [translatorBundles countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    bundle = *p_bundle;
  }

  v14 = *MEMORY[0x277D85DE8];

  return bundle;
}

- (BOOL)_isEqualToTable:(id)table
{
  tableCopy = table;
  serviceIdentifier = [(BRLTTable *)self serviceIdentifier];
  serviceIdentifier2 = [tableCopy serviceIdentifier];
  if (serviceIdentifier | serviceIdentifier2 && ![serviceIdentifier isEqualToString:serviceIdentifier2])
  {
    v11 = 0;
  }

  else
  {
    language = [(BRLTTable *)self language];
    language2 = [tableCopy language];
    if (language | language2 && ![language isEqualToString:language2])
    {
      v11 = 0;
    }

    else
    {
      variant = [(BRLTTable *)self variant];
      variant2 = [tableCopy variant];
      if (variant | variant2)
      {
        v11 = [variant isEqualToString:variant2];
      }

      else
      {
        v11 = 1;
      }
    }
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = BRLTTable;
  if ([(BRLTTable *)&v7 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BRLTTable *)self _isEqualToTable:equalCopy];
  }

  return v5;
}

- (unint64_t)hash
{
  identifier = [(BRLTTable *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = BRLTTable;
  v4 = [(BRLTTable *)&v10 description];
  serviceIdentifier = [(BRLTTable *)self serviceIdentifier];
  language = [(BRLTTable *)self language];
  variant = [(BRLTTable *)self variant];
  v8 = [v3 stringWithFormat:@"<%@ service:%@ lang:%@ variant:%@>", v4, serviceIdentifier, language, variant];

  return v8;
}

@end