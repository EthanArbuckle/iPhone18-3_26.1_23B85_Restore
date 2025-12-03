@interface HLPHelpLocaleController
- (HLPHelpLocaleController)initWithURL:(id)l;
- (id)currentLocale;
- (id)englishLocale;
- (id)localeWithPreferredLanguages:(id)languages;
- (void)processData:(id)data formattedData:(id)formattedData;
- (void)processFileURLWithCompletionHandler:(id)handler;
@end

@implementation HLPHelpLocaleController

- (HLPHelpLocaleController)initWithURL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = HLPHelpLocaleController;
  v5 = [(HLPRemoteDataController *)&v11 initWithURL:lCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [(HLPRemoteDataController *)v5 URL];
    isFileURL = [v7 isFileURL];

    if ((isFileURL & 1) == 0)
    {
      v9 = [lCopy URLByAppendingPathComponent:@"locale-list.json"];
      [(HLPRemoteDataController *)v6 setURL:v9];
    }
  }

  return v6;
}

- (void)processFileURLWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [(HLPRemoteDataController *)self URL];
  path = [v6 path];
  v19 = 0;
  v8 = [defaultManager contentsOfDirectoryAtPath:path error:&v19];
  v9 = v19;

  if (v9)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__HLPHelpLocaleController_processFileURLWithCompletionHandler___block_invoke;
    block[3] = &unk_2797076E0;
    v18 = handlerCopy;
    v17 = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v10 = v18;
  }

  else
  {
    v11 = [MEMORY[0x277CBEBF8] mutableCopy];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __63__HLPHelpLocaleController_processFileURLWithCompletionHandler___block_invoke_2;
    v14[3] = &unk_279706DD0;
    v14[4] = self;
    v15 = v11;
    v10 = v11;
    [v8 enumerateObjectsUsingBlock:v14];
    [(HLPHelpLocaleController *)self processData:0 formattedData:v10];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__HLPHelpLocaleController_processFileURLWithCompletionHandler___block_invoke_3;
    v12[3] = &unk_279706BE8;
    v12[4] = self;
    v13 = handlerCopy;
    dispatch_async(MEMORY[0x277D85CD0], v12);
  }
}

void __63__HLPHelpLocaleController_processFileURLWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [v15 pathExtension];
  v4 = [v3 isEqualToString:@"lproj"];

  if (v4)
  {
    v5 = [*(a1 + 32) URL];
    v6 = [v5 URLByAppendingPathComponent:v15];

    v7 = [v6 URLByAppendingPathComponent:@"locale-info.json"];

    if ([v7 checkResourceIsReachableAndReturnError:0])
    {
      v8 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v7];
      v9 = MEMORY[0x277CBEAC0];
      v10 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:0 error:0];
      v11 = [v9 dictionaryWithDictionary:v10];

      v12 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v11];
      if ([v12 count])
      {
        v13 = [v12 objectForKeyedSubscript:@"meta"];
        v14 = [v13 objectForKeyedSubscript:@"isoCodes"];
        [v12 setObject:v14 forKeyedSubscript:@"isoCodes"];

        [v12 setObject:v15 forKeyedSubscript:@"folder"];
        [*(a1 + 40) addObject:v12];
      }
    }
  }
}

uint64_t __63__HLPHelpLocaleController_processFileURLWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setLoading:0];
  [*(a1 + 32) setHasLoaded:1];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)processData:(id)data formattedData:(id)formattedData
{
  formattedDataCopy = formattedData;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x277CBEBF8];
    v7 = [MEMORY[0x277CBEBF8] mutableCopy];
    v8 = [v6 mutableCopy];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __53__HLPHelpLocaleController_processData_formattedData___block_invoke;
    v17 = &unk_279707708;
    v18 = v7;
    v19 = v8;
    v9 = v8;
    v10 = v7;
    [formattedDataCopy enumerateObjectsUsingBlock:&v14];
    v11 = [MEMORY[0x277CBEA60] arrayWithArray:{v10, v14, v15, v16, v17}];
    supportedLanguageCodes = self->_supportedLanguageCodes;
    self->_supportedLanguageCodes = v11;

    v13 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
    [(HLPHelpLocaleController *)self setLocales:v13];
  }
}

void __53__HLPHelpLocaleController_processData_formattedData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [[HLPHelpLocale alloc] initWithDictionary:v3];

  v4 = *(a1 + 32);
  v5 = [(HLPHelpLocale *)v6 isoCodes];
  [v4 addObjectsFromArray:v5];

  [*(a1 + 40) addObject:v6];
}

- (id)englishLocale
{
  v2 = objc_alloc_init(HLPHelpLocale);
  [(HLPHelpLocale *)v2 setPath:@"en.lproj"];
  [(HLPHelpLocale *)v2 setIsoCodes:&unk_28647D200];

  return v2;
}

- (id)localeWithPreferredLanguages:(id)languages
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  languagesCopy = languages;
  v4 = [languagesCopy mutableCopy];
  do
  {
    if (![v4 count])
    {
      break;
    }

    v5 = [MEMORY[0x277CCA8D8] preferredLocalizationsFromArray:self->_supportedLanguageCodes forPreferences:v4];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__HLPHelpLocaleController_localeWithPreferredLanguages___block_invoke;
    v14[3] = &unk_279706F58;
    v14[4] = self;
    v14[5] = &v15;
    [v5 enumerateObjectsUsingBlock:v14];
    [v4 removeObjectAtIndex:0];
    v6 = v16[5];
  }

  while (!v6);
  if (!v16[5])
  {
    path = [0 path];
    v8 = [path length];

    if (!v8)
    {
      v9 = objc_alloc_init(HLPHelpLocale);
      v10 = v16[5];
      v16[5] = v9;

      [v16[5] setPath:@"en.lproj"];
      [v16[5] setIsoCodes:&unk_28647D218];
    }
  }

  v11 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v11;
}

void __56__HLPHelpLocaleController_localeWithPreferredLanguages___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 lowercaseString];
  v7 = [*(a1 + 32) locales];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__HLPHelpLocaleController_localeWithPreferredLanguages___block_invoke_2;
  v10[3] = &unk_279707730;
  v8 = *(a1 + 40);
  v11 = v6;
  v12 = v8;
  v9 = v6;
  [v7 enumerateObjectsUsingBlock:v10];

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

void __56__HLPHelpLocaleController_localeWithPreferredLanguages___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 isoCodes];
  v8 = [v7 indexOfObject:*(a1 + 32)];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)currentLocale
{
  v3 = [MEMORY[0x277CBEBF8] mutableCopy];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [standardUserDefaults objectForKey:@"HLPHelpBookPreferredLanguageOverride"];

  if (v5)
  {
    [v3 addObject:v5];
  }

  preferredLanguagesOverride = [(HLPHelpLocaleController *)self preferredLanguagesOverride];
  v7 = [preferredLanguagesOverride count];

  if (v7)
  {
    preferredLanguagesOverride2 = [(HLPHelpLocaleController *)self preferredLanguagesOverride];
    [v3 addObjectsFromArray:preferredLanguagesOverride2];
  }

  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  [v3 addObjectsFromArray:preferredLanguages];

  v10 = [(HLPHelpLocaleController *)self localeWithPreferredLanguages:v3];

  return v10;
}

@end