@interface NSLocale(AMPICUExtensions)
+ (id)ICUNumberingSystems;
+ (id)ISO3CharacterLanguageCodes;
+ (id)ISO3CharacterRegionCodes;
+ (id)ISO3CharacterTerritoryGroupCodes;
+ (id)ISOScriptCodes;
+ (id)ISOTerritoryGroupCodes;
+ (id)threeCharacterLanguageCodeFromTwoCharacterCode:()AMPICUExtensions;
+ (id)threeCharacterRegionCodeFromTwoCharacterCode:()AMPICUExtensions;
+ (id)twoCharacterLanguageCodeFromThreeCharacterCode:()AMPICUExtensions;
+ (id)twoCharacterRegionCodeFromThreeCharacterCode:()AMPICUExtensions;
- (id)availableCountriesOfLength:()AMPICUExtensions;
- (id)availableDateFormatTemplates;
- (id)availableLanguagesOfLength:()AMPICUExtensions;
- (id)availableResourcesOfStyle:()AMPICUExtensions icuPath:availableResourcesKeyPrefix:baseResourceKey:resourceKeyPath:availableResourcesResourceKey:availableResourcesResourceValue:allowFallbackResources:;
- (id)availableScriptsOfLength:()AMPICUExtensions;
- (id)localizedStringForCountryCode:()AMPICUExtensions length:;
- (id)localizedStringForLanguageCode:()AMPICUExtensions length:;
- (id)localizedStringForNumberingSystem:()AMPICUExtensions;
- (id)localizedStringForScriptCode:()AMPICUExtensions length:;
- (id)threeCharacterLanguageCode;
- (id)threeCharacterRegionCode;
- (uint64_t)availableVariants;
@end

@implementation NSLocale(AMPICUExtensions)

+ (id)ISOScriptCodes
{
  if (+[NSLocale(AMPICUExtensions) ISOScriptCodes]::onceToken != -1)
  {
    +[NSLocale(AMPICUExtensions) ISOScriptCodes];
  }

  v1 = _scriptCodes;

  return v1;
}

+ (id)ICUNumberingSystems
{
  if (+[NSLocale(AMPICUExtensions) ICUNumberingSystems]::onceToken != -1)
  {
    +[NSLocale(AMPICUExtensions) ICUNumberingSystems];
  }

  v1 = _numberingSystems;

  return v1;
}

+ (id)ISOTerritoryGroupCodes
{
  if (+[NSLocale(AMPICUExtensions) ISOTerritoryGroupCodes]::onceToken != -1)
  {
    +[NSLocale(AMPICUExtensions) ISOTerritoryGroupCodes];
  }

  v1 = _territoryGroupCodes;

  return v1;
}

+ (id)ISO3CharacterTerritoryGroupCodes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__NSLocale_AMPICUExtensions__ISO3CharacterTerritoryGroupCodes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[NSLocale(AMPICUExtensions) ISO3CharacterTerritoryGroupCodes]::onceToken != -1)
  {
    dispatch_once(&+[NSLocale(AMPICUExtensions) ISO3CharacterTerritoryGroupCodes]::onceToken, block);
  }

  v1 = _territoryGroupCodes3;

  return v1;
}

+ (id)ISO3CharacterLanguageCodes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__NSLocale_AMPICUExtensions__ISO3CharacterLanguageCodes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[NSLocale(AMPICUExtensions) ISO3CharacterLanguageCodes]::onceToken != -1)
  {
    dispatch_once(&+[NSLocale(AMPICUExtensions) ISO3CharacterLanguageCodes]::onceToken, block);
  }

  v1 = _languageCodes3;

  return v1;
}

+ (id)ISO3CharacterRegionCodes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__NSLocale_AMPICUExtensions__ISO3CharacterRegionCodes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[NSLocale(AMPICUExtensions) ISO3CharacterRegionCodes]::onceToken != -1)
  {
    dispatch_once(&+[NSLocale(AMPICUExtensions) ISO3CharacterRegionCodes]::onceToken, block);
  }

  v1 = _regionCodes3;

  return v1;
}

+ (id)threeCharacterLanguageCodeFromTwoCharacterCode:()AMPICUExtensions
{
  v3 = a3;
  [v3 UTF8String];
  ISO3Language = uloc_getISO3Language();
  if (ISO3Language && *ISO3Language)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:ISO3Language];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)twoCharacterLanguageCodeFromThreeCharacterCode:()AMPICUExtensions
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a3;
  [v3 UTF8String];
  uloc_getLanguage();
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];

  return v4;
}

+ (id)threeCharacterRegionCodeFromTwoCharacterCode:()AMPICUExtensions
{
  v3 = a3;
  v4 = [@"_" stringByAppendingString:v3];
  [v4 UTF8String];
  ISO3Country = uloc_getISO3Country();
  if (ISO3Country && *ISO3Country)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:ISO3Country];
  }

  else
  {
    v6 = [v3 copy];
  }

  v7 = v6;

  return v7;
}

+ (id)twoCharacterRegionCodeFromThreeCharacterCode:()AMPICUExtensions
{
  v0 = [@"_" stringByAppendingString:?];
  [v0 UTF8String];
  uloc_getCountry();
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];

  return v1;
}

- (id)threeCharacterLanguageCode
{
  v1 = [a1 languageCode];
  v2 = [MEMORY[0x277CBEAF8] threeCharacterLanguageCodeFromTwoCharacterCode:v1];
  if (!v2)
  {
    v2 = v1;
  }

  return v2;
}

- (id)threeCharacterRegionCode
{
  v1 = [a1 countryCode];
  v2 = [MEMORY[0x277CBEAF8] threeCharacterRegionCodeFromTwoCharacterCode:v1];
  if (!v2)
  {
    v2 = v1;
  }

  return v2;
}

- (id)availableResourcesOfStyle:()AMPICUExtensions icuPath:availableResourcesKeyPrefix:baseResourceKey:resourceKeyPath:availableResourcesResourceKey:availableResourcesResourceValue:allowFallbackResources:
{
  v66 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a5;
  v51 = a7;
  v49 = a8;
  v50 = a9;
  v48 = v15;
  v45 = v16;
  v17 = [a1 localeIdentifier];
  v18 = &stru_28623EE30;
  if (v15)
  {
    v18 = v15;
  }

  v46 = v18;
  v19 = [v16 stringByAppendingString:?];
  v20 = NSSelectorFromString(v19);
  v21 = objc_getAssociatedObject(a1, v20);
  v22 = [v21 objectForKeyedSubscript:@"localeID"];
  if (![v22 isEqual:v17])
  {

    if (!v21)
    {
LABEL_10:
      v47 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v25 = [v17 UTF8String];
      if (!v25 || !*v25)
      {
LABEL_45:
        v29 = [v47 copy];
        if ([v51 length])
        {
          v57 = @"localeID";
          v58 = v49;
          v60 = v17;
          v61 = v50;
          v40 = v62;
          v59 = v19;
        }

        else
        {
          v62[2] = v19;
          v62[3] = v17;
          v62[1] = @"localeID";
          v40 = &v63;
        }

        *v40 = v29;
        v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

        objc_setAssociatedObject(a1, v20, v41, 0x303);
        v21 = v41;
        goto LABEL_49;
      }

      v44 = ures_open();
      v56 = 0;
      if ([(__CFString *)v48 length])
      {
        strcpy(__dst, a6);
        *&__dst[strlen(__dst)] = 37;
        v26 = v48;
        v27 = [(__CFString *)v48 UTF8String];
        v28 = strlen(__dst);
        strncat(__dst, v27, 255 - v28);
        ures_getByKey();
      }

      else
      {
        ures_getByKey();
      }

      if (v56 <= 0)
      {
        if ([v51 length])
        {
          [v51 componentsSeparatedByString:@"."];
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          obj = v53 = 0u;
          v30 = [obj countByEnumeratingWithState:&v52 objects:v64 count:16];
          if (v30)
          {
            v31 = *v53;
LABEL_21:
            v32 = 0;
            while (1)
            {
              if (*v53 != v31)
              {
                objc_enumerationMutation(obj);
              }

              v33 = *(*(&v52 + 1) + 8 * v32);
              v56 = 0;
              [v33 UTF8String];
              if (a10)
              {
                ures_getByKeyWithFallback();
              }

              else
              {
                ures_getByKey();
              }

              if (v56 > 0)
              {
                break;
              }

              ures_close();
              if (v30 == ++v32)
              {
                v30 = [obj countByEnumeratingWithState:&v52 objects:v64 count:16];
                if (v30)
                {
                  goto LABEL_21;
                }

                break;
              }
            }
          }

          if (v56 > 0)
          {
            ures_close();

            goto LABEL_43;
          }
        }

        v56 = 0;
        for (i = ures_getNextResource(); i; i = ures_getNextResource())
        {
          if (!ures_getType())
          {
            Key = ures_getKey();
            v36 = Key;
            if (Key)
            {
              if (*Key)
              {
                v56 = 0;
                *__dst = 0;
                String = ures_getString();
                if (String)
                {
                  if (*__dst)
                  {
                    v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:v36];
                    v39 = [MEMORY[0x277CCACA8] stringWithCharacters:String length:*__dst];
                    [v47 setObject:v39 forKeyedSubscript:v38];
                  }
                }
              }
            }
          }

          ures_close();
          v56 = 0;
        }

        ures_close();
      }

LABEL_43:
      if (v44)
      {
        ures_close();
      }

      goto LABEL_45;
    }

LABEL_9:
    objc_setAssociatedObject(a1, v20, 0, 0x303);
    goto LABEL_10;
  }

  if ([v51 length])
  {
    v23 = [v21 objectForKeyedSubscript:v49];
    v24 = [v23 isEqual:v50];

    if (!v24)
    {
      if (!v21)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
  }

  v29 = [v21 objectForKeyedSubscript:v19];
LABEL_49:

  return v29;
}

- (uint64_t)availableVariants
{
  if (icuDataLangPath(void)::onceToken != -1)
  {
    [NSLocale(AMPICUExtensions) availableVariants];
  }

  LOBYTE(v3) = 1;
  return [a1 availableResourcesOfStyle:0 icuPath:icuDataLangPath(void)::sICUDataLangPath availableResourcesKeyPrefix:@"availableVariants" baseResourceKey:"Variants" resourceKeyPath:0 availableResourcesResourceKey:0 availableResourcesResourceValue:0 allowFallbackResources:v3];
}

- (id)availableCountriesOfLength:()AMPICUExtensions
{
  v4 = a3;
  if (icuDataRegionPath(void)::onceToken != -1)
  {
    [NSLocale(AMPICUExtensions) availableCountriesOfLength:];
  }

  LOBYTE(v7) = 1;
  v5 = [a1 availableResourcesOfStyle:v4 icuPath:icuDataRegionPath(void)::sICUDataRegionPath availableResourcesKeyPrefix:@"availableCountries" baseResourceKey:"Countries" resourceKeyPath:0 availableResourcesResourceKey:0 availableResourcesResourceValue:0 allowFallbackResources:v7];

  return v5;
}

- (id)availableLanguagesOfLength:()AMPICUExtensions
{
  v4 = a3;
  if (icuDataLangPath(void)::onceToken != -1)
  {
    [NSLocale(AMPICUExtensions) availableVariants];
  }

  LOBYTE(v7) = 1;
  v5 = [a1 availableResourcesOfStyle:v4 icuPath:icuDataLangPath(void)::sICUDataLangPath availableResourcesKeyPrefix:@"availableLanguages" baseResourceKey:"Languages" resourceKeyPath:0 availableResourcesResourceKey:0 availableResourcesResourceValue:0 allowFallbackResources:v7];

  return v5;
}

- (id)availableScriptsOfLength:()AMPICUExtensions
{
  v4 = a3;
  if (icuDataLangPath(void)::onceToken != -1)
  {
    [NSLocale(AMPICUExtensions) availableVariants];
  }

  LOBYTE(v7) = 1;
  v5 = [a1 availableResourcesOfStyle:v4 icuPath:icuDataLangPath(void)::sICUDataLangPath availableResourcesKeyPrefix:@"availableScripts" baseResourceKey:"Scripts" resourceKeyPath:0 availableResourcesResourceKey:0 availableResourcesResourceValue:0 allowFallbackResources:v7];

  return v5;
}

- (id)availableDateFormatTemplates
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = [a1 calendarIdentifier];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = @"gregorian";
  }

  v9[0] = v3;
  v9[1] = @"availableFormats";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v5 = [v4 componentsJoinedByString:@"."];

  LOBYTE(v8) = 1;
  v6 = [a1 availableResourcesOfStyle:0 icuPath:0 availableResourcesKeyPrefix:@"availableDateFormatTemplates" baseResourceKey:"calendar" resourceKeyPath:v5 availableResourcesResourceKey:@"calendarID" availableResourcesResourceValue:v3 allowFallbackResources:v8];

  return v6;
}

- (id)localizedStringForNumberingSystem:()AMPICUExtensions
{
  v2 = [@"@numbers=" stringByAppendingString:?];
  v3 = [a1 localizedStringForLocaleIdentifier:v2];
  v4 = v3;
  if (v3 && (v5 = [v3 rangeOfString:@"="], v6))
  {
    v7 = [v4 substringFromIndex:v5 + v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)localizedStringForLanguageCode:()AMPICUExtensions length:
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEAF8] canonicalLocaleIdentifierFromString:v6];

  v9 = 0;
  if ([v8 length])
  {
    while ([v7 length] && !v9)
    {
      v10 = [a1 availableLanguagesOfLength:v7];
      v9 = [v10 objectForKeyedSubscript:v8];

      if (!v9)
      {
        v11 = AMPICUFormattingLengthFallbacks();
        v12 = [v11 objectForKeyedSubscript:v7];

        v7 = v12;
        if (!v12)
        {
          v7 = AMPICUFormattingLengthStandard;
        }
      }
    }

    if (!v9)
    {
      v9 = [a1 localizedStringForLanguageCode:v8];
    }
  }

  return v9;
}

- (id)localizedStringForCountryCode:()AMPICUExtensions length:
{
  v6 = a3;
  v7 = a4;
  v8 = [[NSLocaleRegion alloc] initWithRegionIdentifier:v6];
  v9 = [(NSLocaleRegion *)v8 twoCharacterCode];

  v10 = 0;
  if ([v9 length])
  {
    while ([v7 length] && !v10)
    {
      v11 = [a1 availableCountriesOfLength:v7];
      v10 = [v11 objectForKeyedSubscript:v9];

      if (!v10)
      {
        v12 = AMPICUFormattingLengthFallbacks();
        v13 = [v12 objectForKeyedSubscript:v7];

        v7 = v13;
        if (!v13)
        {
          v7 = AMPICUFormattingLengthStandard;
        }
      }
    }

    if (!v10)
    {
      v10 = [a1 localizedStringForCountryCode:v9];
    }
  }

  return v10;
}

- (id)localizedStringForScriptCode:()AMPICUExtensions length:
{
  v6 = a3;
  v7 = a4;
  v8 = 0;
  if ([v6 length])
  {
    while ([v7 length] && !v8)
    {
      v9 = [a1 availableScriptsOfLength:v7];
      v8 = [v9 objectForKeyedSubscript:v6];

      if (!v8)
      {
        v10 = AMPICUFormattingLengthFallbacks();
        v11 = [v10 objectForKeyedSubscript:v7];

        v7 = v11;
        if (!v11)
        {
          v7 = AMPICUFormattingLengthStandard;
        }
      }
    }

    if (!v8)
    {
      v8 = [a1 localizedStringForScriptCode:v6];
    }
  }

  return v8;
}

@end