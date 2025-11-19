@interface NSLocale
@end

@implementation NSLocale

void __44__NSLocale_AMPICUExtensions__ISOScriptCodes__block_invoke()
{
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  IntPropertyMaxValue = u_getIntPropertyMaxValue(UCHAR_SCRIPT);
  if ((IntPropertyMaxValue & 0x80000000) == 0)
  {
    v1 = 0;
    v2 = IntPropertyMaxValue + 1;
    do
    {
      ShortName = uscript_getShortName();
      if (ShortName)
      {
        v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:ShortName];
        [v7 addObject:v4];
      }

      ++v1;
    }

    while (v2 != v1);
  }

  v5 = [v7 sortedArrayUsingSelector:sel_compare_];
  v6 = _scriptCodes;
  _scriptCodes = v5;
}

void __49__NSLocale_AMPICUExtensions__ICUNumberingSystems__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  unumsys_openAvailableNames();
  v1 = uenum_count();
  if (v1 < 1)
  {
    v4 = 0;
  }

  else
  {
    v2 = 0;
    do
    {
      v3 = uenum_next();
      v4 = [NSNumberingSystem numberingSystemWithNumberingSystemName:v3];

      if (v4)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
        [v0 setObject:v4 forKeyedSubscript:v5];
      }

      v2 = v4;
      --v1;
    }

    while (v1);
  }

  uenum_close();
  v6 = [v0 copy];
  v7 = _numberingSystems;
  _numberingSystems = v6;
}

void __52__NSLocale_AMPICUExtensions__ISOTerritoryGroupCodes__block_invoke()
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  fillMutableSetWithRegionType(v3);
  fillMutableSetWithRegionType(v3);
  fillMutableSetWithRegionType(v3);
  fillMutableSetWithRegionType(v3);
  v0 = [v3 allObjects];
  v1 = [v0 sortedArrayUsingSelector:sel_localizedStandardCompare_];
  v2 = _territoryGroupCodes;
  _territoryGroupCodes = v1;
}

void __62__NSLocale_AMPICUExtensions__ISO3CharacterTerritoryGroupCodes__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) ISOTerritoryGroupCodes];
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [@"_" stringByAppendingString:{v7, v14}];
        v9 = v8;
        [v8 UTF8String];
        ISO3Country = uloc_getISO3Country();
        if (ISO3Country && *ISO3Country)
        {
          v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:ISO3Country];
          [v2 addObject:v11];
        }

        else
        {
          [v2 addObject:v7];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v12 = [v2 sortedArrayUsingSelector:sel_localizedStandardCompare_];
  v13 = _territoryGroupCodes3;
  _territoryGroupCodes3 = v12;
}

void __56__NSLocale_AMPICUExtensions__ISO3CharacterLanguageCodes__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) ISOLanguageCodes];
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = v7;
        [v7 UTF8String];
        ISO3Language = uloc_getISO3Language();
        if (ISO3Language && *ISO3Language)
        {
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:ISO3Language];
          [v2 addObject:v10];
        }

        else
        {
          [v2 addObject:v7];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v11 = [v2 sortedArrayUsingSelector:sel_localizedStandardCompare_];
  v12 = _languageCodes3;
  _languageCodes3 = v11;
}

void __54__NSLocale_AMPICUExtensions__ISO3CharacterRegionCodes__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) ISOCountryCodes];
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [@"_" stringByAppendingString:{v7, v14}];
        v9 = v8;
        [v8 UTF8String];
        ISO3Country = uloc_getISO3Country();
        if (ISO3Country && *ISO3Country)
        {
          v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:ISO3Country];
          [v2 addObject:v11];
        }

        else
        {
          [v2 addObject:v7];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v12 = [v2 sortedArrayUsingSelector:sel_localizedStandardCompare_];
  v13 = _regionCodes3;
  _regionCodes3 = v12;
}

@end