@interface BRLTTable
- (BOOL)_isEqualToTable:(id)a3;
- (BOOL)isCustomBrailleTable;
- (BOOL)isEqual:(id)a3;
- (BOOL)supportsTranslationByCell;
- (BOOL)supportsTranslationMode8Dot;
- (BOOL)supportsTranslationModeContracted;
- (BRLTTable)initWithExternalIdentifier:(id)a3;
- (BRLTTable)initWithIdentifier:(id)a3;
- (BRLTTable)initWithServiceIdentifier:(id)a3 language:(id)a4 variant:(id)a5;
- (BRLTTable)initWithServiceIdentifier:(id)a3 tableIdentifier:(id)a4;
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
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation BRLTTable

- (BRLTTable)initWithIdentifier:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = BRLTTable;
  v5 = [(BRLTTable *)&v13 init];
  if (v5)
  {
    v6 = [v4 brl_serviceIdentifier];
    serviceIdentifier = v5->_serviceIdentifier;
    v5->_serviceIdentifier = v6;

    v8 = [v4 brl_language];
    language = v5->_language;
    v5->_language = v8;

    v10 = [v4 brl_variant];
    variant = v5->_variant;
    v5->_variant = v10;
  }

  return v5;
}

- (BRLTTable)initWithServiceIdentifier:(id)a3 tableIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 brl_language];
  v9 = [v6 brl_variant];

  v10 = [(BRLTTable *)self initWithServiceIdentifier:v7 language:v8 variant:v9];
  return v10;
}

- (BRLTTable)initWithServiceIdentifier:(id)a3 language:(id)a4 variant:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = BRLTTable;
  v11 = [(BRLTTable *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    serviceIdentifier = v11->_serviceIdentifier;
    v11->_serviceIdentifier = v12;

    v14 = [v9 copy];
    language = v11->_language;
    v11->_language = v14;

    v16 = [v10 copy];
    variant = v11->_variant;
    v11->_variant = v16;
  }

  return v11;
}

- (BRLTTable)initWithExternalIdentifier:(id)a3
{
  v4 = a3;
  v5 = [v4 brl_serviceIdentifier];
  v6 = [v4 brl_tableIdentifier];
  if ([v4 isEqualToString:@"system.ko24g1"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"system.ja"))
  {
    v7 = @"apple";
LABEL_4:

    v5 = v7;
    goto LABEL_5;
  }

  if ([v5 isEqualToString:@"system"])
  {
    v7 = @"duxbury";
    goto LABEL_4;
  }

  if (([v4 isEqualToString:@"system.ebupharma"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"system.ascii") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"system.ipa") & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"system.unicode"))
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.scrod.braille.table.%@", v6, v11];
    goto LABEL_6;
  }

LABEL_5:
  [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.scrod.braille.table.%@.%@", v5, v6];
  v8 = LABEL_6:;
  v9 = [(BRLTTable *)self initWithIdentifier:v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[BRLTTable allocWithZone:?]language:"initWithServiceIdentifier:language:variant:" variant:self->_serviceIdentifier, self->_language, self->_variant];
  v5 = [(BRLTTable *)self _bundle];
  [(BRLTTable *)v4 set_bundle:v5];

  return v4;
}

- (NSString)identifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(BRLTTable *)self serviceIdentifier];
  v5 = [(BRLTTable *)self language];
  v6 = [v3 stringWithFormat:@"%@.%@", v4, v5];

  v7 = [(BRLTTable *)self variant];

  if (v7)
  {
    v8 = [(BRLTTable *)self variant];
    v9 = [v6 stringByAppendingFormat:@"-%@", v8];

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
  v4 = [v3 translatorBundles];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v15 + 1) + 8 * i) bundleIdentifier];
        v10 = [(BRLTTable *)self serviceIdentifier];
        v11 = [v9 isEqualToString:v10];

        if (v11)
        {
          v12 = [v3 supportedLocalesForTable:self];

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  v4 = [(BRLTTable *)self serviceIdentifier];
  v5 = [v4 rangeOfCharacterFromSet:v3 options:4];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = @"unknown";
  }

  else
  {
    v7 = [(BRLTTable *)self serviceIdentifier];
    v6 = [v7 substringFromIndex:v5 + 1];

    if (([(__CFString *)v6 isEqualToString:@"duxbury"]& 1) != 0 || [(__CFString *)v6 isEqualToString:@"apple"])
    {

      v6 = @"system";
    }
  }

  return v6;
}

- (NSString)tableIdentifier
{
  v3 = [(BRLTTable *)self language];
  v4 = [(BRLTTable *)self variant];

  if (v4)
  {
    v5 = [(BRLTTable *)self variant];
    v6 = [v3 stringByAppendingFormat:@"-%@", v5];

    v3 = v6;
  }

  return v3;
}

- (NSString)localizedName
{
  v3 = [(BRLTTable *)self _brailleTableDictionary];
  v4 = [v3 objectForKey:@"identifierIsLanguage"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = [(BRLTTable *)self tableIdentifier];
    v7 = BRLTLocalizedNameForLanguage(v6);
  }

  else
  {
    v6 = [(BRLTTable *)self localizedVariant];
    if (v6)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = BRLTLocalizedStringForKey(@"table.name.with.variant");
      v10 = [(BRLTTable *)self localizedLanguage];
      v11 = [v8 localizedStringWithFormat:v9, v10, v6];

      goto LABEL_7;
    }

    v7 = [(BRLTTable *)self localizedLanguage];
  }

  v11 = v7;
LABEL_7:

  return v11;
}

- (NSString)localizedNameWithService
{
  v3 = [(BRLTTable *)self _brailleTableDictionary];
  v4 = [v3 objectForKey:@"identifierIsLanguage"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = BRLTLocalizedStringForKey(@"table.name.with.service");
    v8 = [(BRLTTable *)self tableIdentifier];
    v9 = BRLTLocalizedNameForLanguage(v8);
    v10 = [(BRLTTable *)self localizedService];
    [v6 localizedStringWithFormat:v7, v9, v10, v15];
  }

  else
  {
    v7 = [(BRLTTable *)self localizedVariant];
    v11 = MEMORY[0x277CCACA8];
    if (v7)
    {
      v8 = BRLTLocalizedStringForKey(@"table.name.with.variant.and.service");
      v9 = [(BRLTTable *)self localizedLanguage];
      v10 = [(BRLTTable *)self localizedService];
      v14 = v7;
      v15 = v10;
    }

    else
    {
      v8 = BRLTLocalizedStringForKey(@"table.name.with.service");
      v9 = [(BRLTTable *)self localizedLanguage];
      v10 = [(BRLTTable *)self localizedService];
      v14 = v10;
    }

    [v11 localizedStringWithFormat:v8, v9, v14, v15];
  }
  v12 = ;

  return v12;
}

- (NSString)localizedService
{
  v2 = [(BRLTTable *)self serviceIdentifier];
  v3 = BRLTLocalizedStringForKey(v2);

  return v3;
}

- (NSString)localizedLanguage
{
  v3 = [(BRLTTable *)self _bundle];
  v4 = [v3 localizedInfoDictionary];
  v5 = [(BRLTTable *)self language];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (![v6 length])
  {
    v7 = [(BRLTTable *)self language];
    v8 = BRLTLocalizedStringForKey(v7);

    v9 = [(BRLTTable *)self language];
    LODWORD(v7) = [v8 isEqualToString:v9];

    if (v7)
    {
      v10 = [(BRLTTable *)self language];
      v11 = BRLTLocalizedNameForLanguage(v10);

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
  v3 = [(BRLTTable *)self variant];
  v4 = [v3 length];

  if (!v4)
  {
    goto LABEL_11;
  }

  if (_os_feature_enabled_impl())
  {
    v5 = [(BRLTTable *)self variant];
    v6 = [v5 isEqualToString:@"g1"];

    if (v6)
    {
      v7 = @"variant.g1";
LABEL_9:
      v12 = BRLTLocalizedStringForKey(v7);
      goto LABEL_25;
    }

    v8 = [(BRLTTable *)self variant];
    v9 = [v8 isEqualToString:@"g2"];

    if (v9)
    {
      v7 = @"variant.g2";
      goto LABEL_9;
    }

    v10 = [(BRLTTable *)self variant];
    v11 = [v10 isEqualToString:@"8dot"];

    if (v11)
    {
      v7 = @"variant.8dot";
      goto LABEL_9;
    }

    v13 = [(BRLTTable *)self variant];
    v14 = [v13 isEqualToString:@"6dot"];

    if (v14)
    {
LABEL_11:
      v12 = 0;
      goto LABEL_25;
    }
  }

  v15 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"_"];
  v16 = [(BRLTTable *)self variant];
  v17 = [v16 rangeOfCharacterFromSet:v15 options:4];

  v18 = [(BRLTTable *)self variant];
  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = 0;
  }

  else
  {
    v20 = [(BRLTTable *)self variant];
    v21 = [v20 substringToIndex:v17];

    v22 = [(BRLTTable *)self variant];
    v19 = [v22 substringFromIndex:v17 + 1];

    v18 = v21;
  }

  v23 = MEMORY[0x277CCACA8];
  v24 = [(BRLTTable *)self language];
  v25 = [v23 stringWithFormat:@"%@.%@.variant", v24, v18];

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
  v2 = [(BRLTTable *)self _brailleTableDictionary];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"supportsContraction"];
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [v4 BOOLValue];
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

- (BOOL)supportsTranslationMode8Dot
{
  v2 = [(BRLTTable *)self _brailleTableDictionary];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"supports8dot"];
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [v4 BOOLValue];
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

- (NSArray)replacements
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [(BRLTTable *)self _brailleTableDictionary];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"replacements"];
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
              v16 = [(BRLTTable *)self serviceIdentifier];
              v17 = [v15 stringWithFormat:@"%@.%@", v16, v14];
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
  v2 = [(BRLTTable *)self _brailleTableDictionary];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"customBraille"];
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [v4 BOOLValue];
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

- (BOOL)supportsTranslationByCell
{
  v2 = [(BRLTTable *)self _brailleTableDictionary];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"supportsTranslationByCell"];
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [v4 BOOLValue];
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

- (NSString)candidateSelectionLanguage
{
  v2 = [(BRLTTable *)self _brailleTableDictionary];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"candidateSelectionLanguage"];
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
  v3 = [(BRLTTable *)self _bundle];
  v4 = [(BRLTTable *)self identifier];
  v5 = [v3 bundleIdentifier];
  v6 = v5;
  if (v5)
  {
    v7 = [v4 substringFromIndex:{objc_msgSend(v5, "length") + 1}];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v3 objectForInfoDictionaryKey:@"BrailleTables"];
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
    v5 = [v16 translatorBundles];
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [v10 bundleIdentifier];
          v12 = [(BRLTTable *)self serviceIdentifier];
          v13 = [v11 isEqualToString:v12];

          if (v13)
          {
            objc_storeStrong(p_bundle, v10);
            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (BOOL)_isEqualToTable:(id)a3
{
  v4 = a3;
  v5 = [(BRLTTable *)self serviceIdentifier];
  v6 = [v4 serviceIdentifier];
  if (v5 | v6 && ![v5 isEqualToString:v6])
  {
    v11 = 0;
  }

  else
  {
    v7 = [(BRLTTable *)self language];
    v8 = [v4 language];
    if (v7 | v8 && ![v7 isEqualToString:v8])
    {
      v11 = 0;
    }

    else
    {
      v9 = [(BRLTTable *)self variant];
      v10 = [v4 variant];
      if (v9 | v10)
      {
        v11 = [v9 isEqualToString:v10];
      }

      else
      {
        v11 = 1;
      }
    }
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = BRLTTable;
  if ([(BRLTTable *)&v7 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BRLTTable *)self _isEqualToTable:v4];
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(BRLTTable *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = BRLTTable;
  v4 = [(BRLTTable *)&v10 description];
  v5 = [(BRLTTable *)self serviceIdentifier];
  v6 = [(BRLTTable *)self language];
  v7 = [(BRLTTable *)self variant];
  v8 = [v3 stringWithFormat:@"<%@ service:%@ lang:%@ variant:%@>", v4, v5, v6, v7];

  return v8;
}

@end