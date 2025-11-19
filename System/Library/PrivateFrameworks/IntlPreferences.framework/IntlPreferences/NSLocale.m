@interface NSLocale
@end

@implementation NSLocale

uint64_t __68__NSLocale_IntlPreferencesAdditions__supportedCJLanguageIdentifiers__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:a2];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];

  if ([v3 isEqualToString:@"zh"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"ja"];
  }

  return v4;
}

void __59__NSLocale_IntlPreferencesAdditions__renderableUILanguages__block_invoke()
{
  v0 = MEMORY[0x277CBEA60];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = [v4 URLForResource:@"RenderableUILanguages" withExtension:@"plist"];
  v2 = [v0 arrayWithContentsOfURL:v1];
  v3 = renderableUILanguages___renderableLanguages;
  renderableUILanguages___renderableLanguages = v2;
}

void __63__NSLocale_IntlPreferencesAdditions__renderableLocaleLanguages__block_invoke()
{
  v18 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEAF8] availableLocaleIdentifiers];
  v1 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = v0;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [MEMORY[0x277CBEAF8] canonicalLanguageAndScriptCodeIdentifierForIdentifier:{*(*(&v13 + 1) + 8 * v6), v13}];
        [v1 addObject:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v8 = MEMORY[0x277CBEAF8];
  v9 = [v1 allObjects];
  v10 = [v8 renderableLanguagesFromList:v9];
  v11 = renderableLocaleLanguages___renderableLanguages;
  renderableLocaleLanguages___renderableLanguages = v10;

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __66__NSLocale_IntlPreferencesAdditions__renderableLanguagesFromList___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[IntlUtility sharedIntlUtility];
  v4 = [v3 canRenderLanguage:v2];

  return v4;
}

void __86__NSLocale_IntlPreferencesAdditions__archivedPreferencesWithHashesForBundleIDs_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _hashesFromAppPreferences:a2];
  (*(v2 + 16))(v2, v3);
}

void __59__NSLocale_IntlPreferencesAdditions__selectableScriptCodes__block_invoke()
{
  v0 = selectableScriptCodes_selectableScriptCodes;
  selectableScriptCodes_selectableScriptCodes = &unk_2841A2688;
}

@end