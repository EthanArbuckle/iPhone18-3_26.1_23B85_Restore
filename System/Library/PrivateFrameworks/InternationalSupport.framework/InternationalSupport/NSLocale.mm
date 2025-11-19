@interface NSLocale
@end

@implementation NSLocale

void __60__NSLocale_InternationalSupportExtensions___deviceLanguages__block_invoke()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v1 = [MEMORY[0x1E695DFA0] orderedSet];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [v0 localizations];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v11 + 1) + 8 * v6) stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
        if (v7)
        {
          [v1 addObject:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v8 = [v1 array];
  v9 = _deviceLanguages___deviceLanguages;
  _deviceLanguages___deviceLanguages = v8;

  v10 = *MEMORY[0x1E69E9840];
}

void __63__NSLocale_InternationalSupportExtensions__baseSystemLanguages__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFA0] orderedSet];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [MEMORY[0x1E695DF58] systemLanguages];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(a1 + 32) baseLanguageFromLanguage:*(*(&v12 + 1) + 8 * v7)];
        if (v8)
        {
          [v2 addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v2 array];
  v10 = baseSystemLanguages___baseSystemLanguages;
  baseSystemLanguages___baseSystemLanguages = v9;

  v11 = *MEMORY[0x1E69E9840];
}

void __60__NSLocale_InternationalSupportExtensions__supportedRegions__block_invoke()
{
  v0 = MEMORY[0x1E695DFA8];
  v1 = [MEMORY[0x1E695DF58] ISOCountryCodes];
  v2 = [v0 setWithArray:v1];

  v3 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F373C3E0];
  [v2 minusSet:v3];

  v4 = supportedRegions___supportedRegions;
  supportedRegions___supportedRegions = v2;
}

void __72__NSLocale_InternationalSupportExtensions__relatedLanguagesForLanguage___block_invoke()
{
  v0 = relatedLanguagesForLanguage____relatedLanguages;
  relatedLanguagesForLanguage____relatedLanguages = &unk_1F373A8A0;
}

void __68__NSLocale_InternationalSupportExtensions__availableSpokenLanguages__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF58] availableLocaleIdentifiers];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:{*(*(&v15 + 1) + 8 * v8), v15}];
        v10 = [v9 languageIdentifier];

        v11 = [*(a1 + 32) spokenLanguagesForLanguage:v10];
        [v3 addObjectsFromArray:v11];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = [MEMORY[0x1E695DFD8] setWithArray:v3];
  v13 = availableSpokenLanguages___availableSpokenLanguages;
  availableSpokenLanguages___availableSpokenLanguages = v12;

  v14 = *MEMORY[0x1E69E9840];
}

id __90__NSLocale_InternationalSupportExtensions___languagesForRegion_subdivision_withThreshold___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = a2;
  v7 = a3;
  if (a4 == 2)
  {
    v8 = @"popular.";
  }

  else
  {
    if (a4 != 1)
    {
      goto LABEL_7;
    }

    v8 = @"minimum.";
  }

  v9 = [(__CFString *)v8 stringByAppendingString:v7];
  if (v9)
  {
    v10 = v9;
    v11 = [v6 objectForKeyedSubscript:v9];

    goto LABEL_8;
  }

LABEL_7:
  v11 = 0;
LABEL_8:

  return v11;
}

@end