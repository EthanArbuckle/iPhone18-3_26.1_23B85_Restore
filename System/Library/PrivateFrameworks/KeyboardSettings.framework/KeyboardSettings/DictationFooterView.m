@interface DictationFooterView
+ (id)dictationAutoPunctuationText;
- (DictationFooterView)initWithSpecifier:(id)a3;
- (id)explanationSuffixTextWithOfflineDictationStatus:(id)a3 privacyLinkText:(id)a4 lowStorage:(BOOL)a5;
- (id)offlineExplanationSuffixTextWithOfflineDictationStatus:(id)a3 privacyLinkText:(id)a4;
@end

@implementation DictationFooterView

- (DictationFooterView)initWithSpecifier:(id)a3
{
  v23.receiver = self;
  v23.super_class = DictationFooterView;
  v4 = [(PSFooterMultiHyperlinkView *)&v23 initWithSpecifier:?];
  if (v4)
  {
    v5 = [a3 target];
    v6 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_ON_DEVICE_ABOUT_LINK", &stru_28679E3A8, @"Keyboard"}];
    v7 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_ON_DEVICE_MANAGE_STORAGE_LINK", &stru_28679E3A8, @"Keyboard"}];
    v8 = +[DictationFooterView dictationAutoPunctuationText];
    v9 = v6;
    if ([v8 length])
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v8, v6];
    }

    [(PSFooterMultiHyperlinkView *)v4 setText:v9];
    v10 = [v5 lowStorageOnDeviceAssetStringWithLinkString:v7];
    v11 = AFDeviceHighestLanguageModelCapabilityIdentifier();
    v12 = [v5 offlineStatusForLanguage];
    if (v11 == 10)
    {
      v13 = [(DictationFooterView *)v4 explanationSuffixTextWithOfflineDictationStatus:v12 privacyLinkText:v9 lowStorage:v10 != 0];
    }

    else
    {
      v13 = [(DictationFooterView *)v4 offlineExplanationSuffixTextWithOfflineDictationStatus:v12 privacyLinkText:v9];
    }

    v14 = v13;
    if (v13)
    {
      [(PSFooterMultiHyperlinkView *)v4 setText:v13];
    }

    v15 = [(PSFooterMultiHyperlinkView *)v4 text];
    if (v10)
    {
      [(PSFooterMultiHyperlinkView *)v4 setText:[(NSString *)v15 stringByAppendingFormat:@"\n\n%@", v10]];
      v16 = [(PSFooterMultiHyperlinkView *)v4 text];
      [a3 setProperty:v16 forKey:*MEMORY[0x277D3FF88]];
      v17 = [(NSString *)[(PSFooterMultiHyperlinkView *)v4 text] rangeOfString:v6];
      [a3 addFooterHyperlinkWithRange:v17 target:v18 action:{v5, sel_presentPrivacySheet_}];
      v19 = &selRef_launchManageStorage_;
    }

    else
    {
      [a3 setProperty:v15 forKey:*MEMORY[0x277D3FF88]];
      v19 = &selRef_presentPrivacySheet_;
      v7 = v6;
    }

    v20 = [(NSString *)[(PSFooterMultiHyperlinkView *)v4 text] rangeOfString:v7];
    [a3 addFooterHyperlinkWithRange:v20 target:v21 action:{v5, *v19}];
    [(PSFooterMultiHyperlinkView *)v4 refreshContentsWithSpecifier:a3];
  }

  return v4;
}

- (id)offlineExplanationSuffixTextWithOfflineDictationStatus:(id)a3 privacyLinkText:(id)a4
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = [MEMORY[0x277CBEB58] set];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __94__DictationFooterView_offlineExplanationSuffixTextWithOfflineDictationStatus_privacyLinkText___block_invoke;
  v14[3] = &unk_2797F9CA8;
  v14[4] = &v19;
  v14[5] = &v15;
  [a3 enumerateKeysAndObjectsUsingBlock:v14];
  if ([v20[5] count])
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if ([v20[5] count] < 2)
    {
      v8 = @"DICTATION_OFFLINE_EXPLANATION_SUFFIX_INSTALLED_WITH_LANGUAGE";
    }

    else
    {
      v8 = [@"DICTATION_OFFLINE_EXPLANATION_SUFFIX_INSTALLED_WITH_LANGUAGE" stringByAppendingString:@"S"];
    }

    v11 = [v7 localizedStringForKey:v8 value:&stru_28679E3A8 table:@"Keyboard"];
    v10 = [v6 stringWithFormat:v11, +[KSKeyboardController localizedListForInputModes:forDictation:duplicatedBaseLanguages:](KSKeyboardController, "localizedListForInputModes:forDictation:duplicatedBaseLanguages:", objc_msgSend(v20[5], "allObjects"), 1, 0)];
  }

  else
  {
    if (*(v16 + 24) != 1)
    {
LABEL_10:
      v12 = 0;
      goto LABEL_11;
    }

    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:SFLocalizableWAPIStringKeyForKey() value:&stru_28679E3A8 table:@"Keyboard"];
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v10, a4];
LABEL_11:
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  return v12;
}

uint64_t __94__DictationFooterView_offlineExplanationSuffixTextWithOfflineDictationStatus_privacyLinkText___block_invoke(uint64_t a1, void *a2)
{
  result = AFOfflineDictationStatusStringIsInstalled();
  if (result)
  {
    v5 = [objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
    v6 = [a2 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
    result = [v5 containsObject:v6];
    if (result)
    {
      result = [*(*(*(a1 + 32) + 8) + 40) addObject:v6];
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

- (id)explanationSuffixTextWithOfflineDictationStatus:(id)a3 privacyLinkText:(id)a4 lowStorage:(BOOL)a5
{
  v32[1] = *MEMORY[0x277D85DE8];
  v8 = [objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
  if ([v8 count] == 1 && (v9 = objc_msgSend(MEMORY[0x277D6F380], "sharedInputModeController"), (objc_opt_respondsToSelector() & 1) != 0))
  {
    v10 = [v9 defaultDictationLanguagesForKeyboardLanguage:{objc_msgSend(v8, "firstObject")}];
    if (!v10)
    {
      v32[0] = [v8 firstObject];
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    }
  }

  else
  {
    v10 = v8;
  }

  if ([v10 count] == 1 && DictationIsEnabled() && objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277D75688], "sharedInputModeController"), "enabledDictationLanguages"), "containsObject:", objc_msgSend(v10, "firstObject")))
  {
    v11 = [objc_msgSend(v10 "firstObject")];
    v12 = MEMORY[0x259C42620]();
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    [a3 objectForKeyedSubscript:v13];
    if (AFOfflineDictationStatusStringIsHighQualityModelSupported())
    {
      IsInstalled = AFOfflineDictationStatusStringIsInstalled();
      IsInstalling = AFOfflineDictationStatusStringIsInstalling();
      v16 = AFOfflineDictationStatusStringIsOnDeviceSearchSupported();
      if (IsInstalled)
      {
        if (v16)
        {
          v17 = @"DICTATION_ON_DEVICE_SERVER_SOMETIMES_NO_SEARCH";
        }

        else
        {
          v17 = @"DICTATION_ON_DEVICE_SERVER_SOMETIMES";
        }

        v18 = MEMORY[0x277CCACA8];
        v19 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_ON_DEVICE_PRIVATE_PROCESSING", &stru_28679E3A8, @"Keyboard"}];
        v30 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", v17, &stru_28679E3A8, @"Keyboard"}];
        v31 = a4;
        v29 = v19;
        v20 = @"%@ %@ %@";
        goto LABEL_28;
      }

      v18 = MEMORY[0x277CCACA8];
      v24 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_ON_DEVICE_SERVER_WHEN_NECESSARY", &stru_28679E3A8, @"Keyboard"}];
      v25 = v24;
      if (IsInstalling)
      {
        if (!a5)
        {
          v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v27 = @"DICTATION_ON_DEVICE_SUPPORT_DOWNLOADING";
LABEL_27:
          v30 = a4;
          v31 = [v26 localizedStringForKey:v27 value:&stru_28679E3A8 table:@"Keyboard"];
          v29 = v25;
          v20 = @"%@ %@\n\n%@";
          goto LABEL_28;
        }
      }

      else if (!a5)
      {
        v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v27 = SFLocalizableWAPIStringKeyForKey();
        v26 = v28;
        goto LABEL_27;
      }

      v29 = v24;
      v30 = a4;
      v20 = @"%@ %@";
LABEL_28:
      v21 = [v18 stringWithFormat:v20, v29, v30, v31];
      goto LABEL_19;
    }

    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_ON_DEVICE_SERVER", &stru_28679E3A8, @"Keyboard", a4, v31];
  }

  else
  {
    v21 = 0;
  }

LABEL_19:
  result = v21;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)dictationAutoPunctuationText
{
  v40 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CEF368] sharedPreferences];
  if (objc_opt_respondsToSelector())
  {
    v2 = [MEMORY[0x277CBEB18] array];
    v3 = [MEMORY[0x277CCA940] set];
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = [objc_msgSend(objc_msgSend(MEMORY[0x277CEF368] "sharedPreferences")];
    v6 = [MEMORY[0x277CBEA60] array];
    v7 = [objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
    if ((DictationIsEnabled() & (v7 != 0)) != 0)
    {
      v6 = v7;
    }

    if (v5 && [objc_msgSend(MEMORY[0x277CEF368] "sharedPreferences")] && (objc_msgSend(v6, "containsObject:", v5) & 1) == 0)
    {
      v6 = [v6 arrayByAddingObject:v5];
    }

    v29 = v2;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v35;
      v28 = 1;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v34 + 1) + 8 * i);
          [v3 addObject:TIInputModeGetBaseLanguage()];
          v13 = [v12 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
          v14 = MEMORY[0x259C42620]();
          if (v14)
          {
            v13 = v14;
          }

          if ([objc_msgSend(objc_msgSend(MEMORY[0x277CEF368] "sharedPreferences")])
          {
            [v29 addObject:v12];
          }

          else
          {
            v28 = 0;
          }
        }

        v9 = [v6 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v9);
    }

    else
    {
      v28 = 1;
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = [v3 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v31;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(v3);
          }

          v20 = *(*(&v30 + 1) + 8 * j);
          if ([v3 countForObject:v20] >= 2)
          {
            [v4 addObject:v20];
          }
        }

        v17 = [v3 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v17);
    }

    v21 = [v29 count];
    v22 = (v21 == 0) | v28;
    if (v21)
    {
      v23 = &stru_28679E3A8;
    }

    else
    {
      v23 = 0;
    }

    if ((v22 & 1) == 0)
    {
      v24 = MEMORY[0x277CCACA8];
      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if ([v29 count] < 2)
      {
        v26 = @"DICTATION_AUTO_PUNCTUATION_EXPLANATION_SUFFIX_WITH_LANGUAGE";
      }

      else
      {
        v26 = [@"DICTATION_AUTO_PUNCTUATION_EXPLANATION_SUFFIX_WITH_LANGUAGE" stringByAppendingString:@"S"];
      }

      v23 = [v24 stringWithFormat:objc_msgSend(v25, "localizedStringForKey:value:table:", v26, &stru_28679E3A8, @"Keyboard", +[KSKeyboardController localizedListForInputModes:forDictation:duplicatedBaseLanguages:](KSKeyboardController, "localizedListForInputModes:forDictation:duplicatedBaseLanguages:", v29, 1, v4)];
    }

    result = v23;
  }

  else
  {
    result = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

@end