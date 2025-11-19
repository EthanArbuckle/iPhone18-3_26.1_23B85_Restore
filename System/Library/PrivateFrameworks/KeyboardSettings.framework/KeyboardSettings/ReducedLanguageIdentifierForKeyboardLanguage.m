@interface ReducedLanguageIdentifierForKeyboardLanguage
@end

@implementation ReducedLanguageIdentifierForKeyboardLanguage

uint64_t ___ReducedLanguageIdentifierForKeyboardLanguage_block_invoke()
{
  v11 = *MEMORY[0x277D85DE8];
  _ReducedLanguageIdentifierForKeyboardLanguage___languageCounts = objc_alloc_init(MEMORY[0x277CCA940]);
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  SupportedLanguages = UIKeyboardGetSupportedLanguages();
  result = [SupportedLanguages countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (result)
  {
    v2 = result;
    v3 = *v7;
    do
    {
      v4 = 0;
      do
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(SupportedLanguages);
        }

        [_ReducedLanguageIdentifierForKeyboardLanguage___languageCounts addObject:{objc_msgSend(MEMORY[0x277CBEAF8], "baseLanguageFromLanguage:", *(*(&v6 + 1) + 8 * v4++), v6)}];
      }

      while (v2 != v4);
      result = [SupportedLanguages countByEnumeratingWithState:&v6 objects:v10 count:16];
      v2 = result;
    }

    while (result);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

@end