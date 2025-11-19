void *LocStringKeyBasedOnLanguageCount(void *result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    result = [result stringByAppendingString:@"S"];
  }

  if (a3)
  {

    return [result stringByAppendingString:a3];
  }

  return result;
}

void sub_255829D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t DictationIsEnabled()
{
  if ([objc_msgSend(MEMORY[0x277CEF368] "sharedPreferences")])
  {
    return 1;
  }

  else
  {
    return [objc_msgSend(MEMORY[0x277CEF368] "sharedPreferences")] ^ 1;
  }
}

void sub_25582AD74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25582BC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getMCProfileConnectionClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy_;
  v0 = getMCProfileConnectionClass_softClass;
  v7 = __Block_byref_object_dispose_;
  v8 = getMCProfileConnectionClass_softClass;
  if (!getMCProfileConnectionClass_softClass)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getMCProfileConnectionClass_block_invoke;
    v2[3] = &unk_2797F9DF8;
    v2[4] = &v3;
    __getMCProfileConnectionClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_25582D5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMCKeyboardSettingsChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ManagedConfigurationLibrary();
  result = dlsym(v2, "MCKeyboardSettingsChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMCKeyboardSettingsChangedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ManagedConfigurationLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ManagedConfigurationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2797F9E18;
    v6 = 0;
    ManagedConfigurationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ManagedConfigurationLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __ManagedConfigurationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ManagedConfigurationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t KeyboardSettingsFeedbackLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!KeyboardSettingsFeedbackLibraryCore_frameworkLibrary)
  {
    KeyboardSettingsFeedbackLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = KeyboardSettingsFeedbackLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __KeyboardSettingsFeedbackLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  KeyboardSettingsFeedbackLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getTUIFeedbackControllerClass_block_invoke(uint64_t a1)
{
  KeyboardSettingsFeedbackLibraryCore();
  result = objc_getClass("TUIFeedbackController");
  *(*(*(a1 + 32) + 8) + 40) = result;
  getTUIFeedbackControllerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getMCProfileConnectionClass_block_invoke(uint64_t a1)
{
  ManagedConfigurationLibrary();
  result = objc_getClass("MCProfileConnection");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getMCProfileConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = __getMCProfileConnectionClass_block_invoke_cold_1();
    return __TIGetToggleFourOrFiveRowKeyboardValue_block_invoke(v3);
  }

  return result;
}

uint64_t __TIGetToggleFourOrFiveRowKeyboardValue_block_invoke()
{
  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v1 = MEMORY[0x277CBEC28];

  return [v0 _configureKey:@"ToggleFourOrFiveRowKeyboard" domain:@"com.apple.keyboard" defaultValue:v1];
}

void sub_25583318C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, id location)
{
  objc_destroyWeak((v54 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t IsTrialAssetDeliveryEnabled()
{
  v0 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.internal.ck"];
  v1 = [v0 objectForKey:@"disableTrialAssetDelivery"];
  v2 = [v1 BOOLValue];

  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v4 = [v0 objectForKey:@"enableTrialAssetDelivery"];
    if ([v4 BOOLValue])
    {
      v3 = 1;
    }

    else
    {
      v3 = _os_feature_enabled_impl();
    }
  }

  return v3;
}

__CFString *TUIKeyboardDisplayNameFromIdentifierForContext(void *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277D75680] keyboardInputModeWithIdentifier:a1];
  if ([v4 isExtensionInputMode])
  {

    return [v4 safe__extendedDisplayName];
  }

  if ([a1 hasPrefix:*MEMORY[0x277D76BD0]])
  {
    return @"QWERTY";
  }

  TIInputModeGetNormalizedIdentifier();
  LanguageWithRegion = TIInputModeGetLanguageWithRegion();
  v6 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", LanguageWithRegion, &stru_28679E3A8, @"KeyboardTitles"}];
  if (([v6 isEqualToString:LanguageWithRegion] & 1) == 0 && v6)
  {
    return v6;
  }

  v8 = [MEMORY[0x277CBEAF8] localeForBundleLanguage:{objc_msgSend(MEMORY[0x277CCA8D8], "mainBundle")}];
  if (_ReducedLanguageIdentifierForKeyboardLanguage___onceToken != -1)
  {
    TUIKeyboardDisplayNameFromIdentifierForContext_cold_1();
  }

  if ([_ReducedLanguageIdentifierForKeyboardLanguage___languageCounts countForObject:{objc_msgSend(MEMORY[0x277CBEAF8], "baseLanguageFromLanguage:", LanguageWithRegion)}] <= 1)
  {
    LanguageWithRegion = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:LanguageWithRegion];
  }

  return [v8 localizedStringForLanguage:LanguageWithRegion context:a2];
}

void sub_255839F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t getSFSpeechAssetManagerClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__0;
  v0 = getSFSpeechAssetManagerClass_softClass;
  v7 = __Block_byref_object_dispose__0;
  v8 = getSFSpeechAssetManagerClass_softClass;
  if (!getSFSpeechAssetManagerClass_softClass)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getSFSpeechAssetManagerClass_block_invoke;
    v2[3] = &unk_2797F9DF8;
    v2[4] = &v3;
    __getSFSpeechAssetManagerClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_25583C198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSFSpeechAssetManagerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!SpeechLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __SpeechLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2797FA110;
    v7 = 0;
    SpeechLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (SpeechLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SFSpeechAssetManager");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getSFSpeechAssetManagerClass_block_invoke_cold_1();
  }

  getSFSpeechAssetManagerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SpeechLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SpeechLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id attributedTitleForKey(void *a1, __IOHIDServiceClient *a2, void *a3, int a4)
{
  v7 = a1;
  v8 = a3;
  if ([(__CFString *)v7 isEqualToString:@"Function"]&& showGlobeKeyInsteadOfFunctionKey(a2))
  {

    v7 = @"Globe";
  }

  v9 = [_keyToTitle objectForKeyedSubscript:v7];
  if (![(__CFString *)v7 isEqualToString:@"CapsLock"]|| !a2)
  {
    goto LABEL_10;
  }

  v10 = IOHIDServiceClientCopyProperty(a2, @"CapsLockLanguageSwitch");
  v11 = IOHIDServiceClientCopyProperty(a2, @"KeyboardLanguage");
  if ([v11 length] && ((objc_msgSend(v10, "BOOLValue") & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"Simplified Chinese Keyboard")))
  {
    v12 = +[KSHardwareKeyboardController IOHIDKeyboardLanguageToCapsLockKeyLabel];
    v13 = [v12 objectForKey:v11];
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
LABEL_10:
    if (a4)
    {
      v14 = [_keyToSymbol objectForKeyedSubscript:v7];
    }

    else
    {
      v14 = 0;
    }

    v15 = 0;
    if (!v8)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v15 = v13;

  v14 = 0;
  v9 = v15;
  if (v8)
  {
LABEL_14:
    v16 = [v9 stringByAppendingString:v8];

    v9 = v16;
  }

LABEL_15:
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:v9 value:&stru_28679E3A8 table:@"Keyboard"];

  v19 = [KSKeyboardListController attributedTitleForSymbolName:v14 cellTitle:v18];

  return v19;
}

void sub_255841740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, id location)
{
  objc_destroyWeak((v45 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t showGlobeKeyInsteadOfFunctionKey(__IOHIDServiceClient *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = IOHIDServiceClientCopyProperty(a1, @"SupportsGlobeKey");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __initializeDictionaries_block_invoke()
{
  v37 = *MEMORY[0x277D85DE8];
  v34[0] = @"CapsLock";
  v34[1] = @"Control";
  v35[0] = &unk_2867A4BD8;
  v35[1] = &unk_2867A4BF0;
  v34[2] = @"Option";
  v34[3] = @"Command";
  v35[2] = &unk_2867A4C08;
  v35[3] = &unk_2867A4C20;
  v34[4] = @"Escape";
  v34[5] = @"Function";
  v35[4] = &unk_2867A4C38;
  v35[5] = &unk_2867A4C50;
  v34[6] = @"Globe";
  v34[7] = @"NoAction";
  v35[6] = &unk_2867A4C68;
  v35[7] = &unk_2867A4C80;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:8];
  v1 = _keyToKeyCode;
  _keyToKeyCode = v0;

  v32[0] = @"CapsLock";
  v32[1] = @"Control";
  v33[0] = @"Caps Lock";
  v33[1] = @"Control";
  v32[2] = @"Option";
  v32[3] = @"Command";
  v33[2] = @"Option";
  v33[3] = @"Command";
  v32[4] = @"Escape";
  v32[5] = @"Function";
  v33[4] = @"Escape";
  v33[5] = @"Function";
  v32[6] = @"Globe";
  v32[7] = @"NoAction";
  v33[6] = @"Globe";
  v33[7] = @"No Action";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:8];
  v3 = _keyToTitle;
  _keyToTitle = v2;

  v30[0] = @"CapsLock";
  v30[1] = @"Control";
  v31[0] = @"capslock";
  v31[1] = @"control";
  v30[2] = @"Option";
  v30[3] = @"Command";
  v31[2] = @"option";
  v31[3] = @"command";
  v30[4] = @"Escape";
  v30[5] = @"Function";
  v31[4] = @"escape";
  v31[5] = @"fn";
  v30[6] = @"Globe";
  v31[6] = @"globe";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:7];
  v5 = _keyToSymbol;
  _keyToSymbol = v4;

  v29[0] = @"CapsLock";
  v29[1] = @"Control";
  v29[2] = @"Option";
  v29[3] = @"Command";
  v29[4] = @"Globe";
  v29[5] = @"Function";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:6];
  v7 = _srcKeys;
  _srcKeys = v6;

  v28[0] = @"CapsLock";
  v28[1] = @"Control";
  v28[2] = @"Option";
  v28[3] = @"Command";
  v28[4] = @"Escape";
  v28[5] = @"Globe";
  v28[6] = @"Function";
  v28[7] = @"NoAction";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:8];
  v9 = _dstKeys;
  _dstKeys = v8;

  v10 = _keyToKeyCode;
  v11 = [MEMORY[0x277CBEB38] dictionary];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        v18 = [v12 objectForKeyedSubscript:{v17, v24}];
        if ([v18 count])
        {
          v19 = 0;
          do
          {
            v20 = [v18 objectAtIndexedSubscript:v19];
            [v11 setObject:v17 forKeyedSubscript:v20];

            ++v19;
          }

          while (v19 < [v18 count]);
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v14);
  }

  v21 = [v11 copy];
  v22 = _keyCodeToKey;
  _keyCodeToKey = v21;

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t KSInputModeIsChineseWubi()
{
  result = [TIInputModeGetBaseLanguage() isEqualToString:@"zh"];
  if (result)
  {
    Variant = TIInputModeGetVariant();

    return [Variant isEqualToString:@"Wubixing"];
  }

  return result;
}

uint64_t KSGetCurrentWubiStandardName()
{
  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v1 = [objc_msgSend(v0 valueForPreferenceKey:{*MEMORY[0x277D6FD18]), "integerValue"}];

  return KSGetWubiStandardName(v1);
}

uint64_t KSGetWubiStandardName(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  v2 = off_2797FA130[a1];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return [v3 localizedStringForKey:v2 value:&stru_28679E3A8 table:@"Preferences_wubi"];
}

void ShortcutsDidChange(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __ShortcutsDidChange_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_255846DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id TIUIGetMultilingualIDFromInputMode()
{
  v0 = TIInputModeGetComponentsFromIdentifier();
  v1 = [v0 objectForKey:@"ml"];

  return v1;
}

id TIUIInputModeGetMultilingualSetFromInputModes(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = TIUIGetMultilingualIDFromInputMode();
  if ([v3 length])
  {
    v4 = [MEMORY[0x277CBEB18] array];
    if (v2)
    {
      v5 = v2;
    }

    else
    {
      v6 = [MEMORY[0x277D75688] sharedInputModeController];
      v5 = [v6 enabledInputModeIdentifiers];
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = TIUIGetMultilingualIDFromInputMode();
          if ([v3 isEqualToString:{v13, v16}])
          {
            [v4 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t TIUIGetMultlingualSetsAreEqual(void *a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = TIUIGetLanguagesForMultilingualSet(v3);
  v6 = TIUIGetLanguagesForMultilingualSet(v4);
  if (![v5 isEqualToSet:v6])
  {
    goto LABEL_14;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
LABEL_4:
    v11 = 0;
    while (1)
    {
      if (*v24 != v10)
      {
        objc_enumerationMutation(v7);
      }

      if ([*(*(&v23 + 1) + 8 * v11) isEqualToString:{@"vi_VN", v23}])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v9)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }

    v12 = TIUIGetOrderedLanguagesForMultilingualSet(v3);
    v13 = TIUIGetOrderedLanguagesForMultilingualSet(v4);
    v14 = [v12 isEqualToArray:v13];

    if (!v14)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_10:
  }

  v15 = [v3 firstObject];
  v16 = TIInputModeGetSWLayout();

  v17 = [v4 firstObject];
  v18 = TIInputModeGetSWLayout();

  if (v16 == v18)
  {

    goto LABEL_16;
  }

  v19 = [v16 isEqualToString:v18];

  if (v19)
  {
LABEL_16:
    v20 = 1;
    goto LABEL_17;
  }

LABEL_14:
  v20 = 0;
LABEL_17:

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

id TIUIGetLanguagesForMultilingualSet(void *a1)
{
  v1 = MEMORY[0x277CBEB98];
  v2 = TIUIGetOrderedLanguagesForMultilingualSet(a1);
  v3 = [v1 setWithArray:v2];

  return v3;
}

id TIUIGetOrderedLanguagesForMultilingualSet(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v1, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = TIInputModeGetLanguageWithRegion();
        [v2 addObject:{v9, v12}];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v2;
}

id TIUIKeyboardInputModeGetIdentifierFromComponents(void *a1)
{
  v1 = a1;
  v2 = TIInputModeGetNormalizedIdentifierFromComponents();
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [v1 objectForKey:@"sw"];
  if ([v4 length])
  {
    v5 = [@"sw=" stringByAppendingString:v4];
    [v3 addObject:v5];
  }

  v6 = [v1 objectForKey:@"hw"];
  if ([v6 length])
  {
    v7 = [@"hw=" stringByAppendingString:v6];
    [v3 addObject:v7];
  }

  v8 = [v1 objectForKey:@"ml"];
  if ([v8 length])
  {
    v9 = [@"ml=" stringByAppendingString:v8];
    [v3 addObject:v9];
  }

  if ([v3 count])
  {
    v10 = [v3 componentsJoinedByString:@""];;
    v11 = [v2 stringByAppendingFormat:@"@%@", v10];

    v2 = v11;
  }

  return v2;
}

void *TIUIKeyboardGetSupportedSoftwareMultiscriptLayouts()
{
  v0 = TIGetInputModeProperties();
  v1 = [v0 objectForKey:@"SWLayouts-Multiscript"];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  v4 = v3;

  return v3;
}

id TIUIGetPairedInputModesForInputMode(void *a1)
{
  v1 = TIUIGetPairedInputModesForInputMode___onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    TIUIGetPairedInputModesForInputMode_cold_1();
  }

  v3 = [TIUIGetPairedInputModesForInputMode___pairedInputModes objectForKeyedSubscript:v2];

  return v3;
}

void __TIUIGetPairedInputModesForInputMode_block_invoke()
{
  v0 = TIUIGetPairedInputModesForInputMode___pairedInputModes;
  TIUIGetPairedInputModesForInputMode___pairedInputModes = &unk_2867A50D8;
}

uint64_t TIUICanAddInputModeToMultilingualSet(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = GetDependentMultilingualInputModes();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v12 = TIInputModeGetNormalizedIdentifier();
        if ([v5 containsObject:{v12, v17}] && (!v3 || objc_msgSend(v5, "containsObject:", v3) && ((objc_msgSend(&unk_2867A4D70, "containsObject:", v3) & 1) != 0 || isH13ANEPresentOnIOS())) && objc_msgSend(v6, "count") < 5)
        {

          IsMultiscriptInput = 1;
          v14 = v6;
          goto LABEL_17;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  if ([v6 count] <= 1)
  {
    if (v3)
    {
      v14 = [v6 arrayByAddingObject:v3];
      if (TIUIMultilingualSetIsMonoscriptInput(v14))
      {
        IsMultiscriptInput = 1;
      }

      else
      {
        IsMultiscriptInput = TIUIMultilingualSetIsMultiscriptInput(v14, 0);
      }

LABEL_17:
    }

    else
    {
      IsMultiscriptInput = 1;
    }
  }

  else
  {
    IsMultiscriptInput = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return IsMultiscriptInput;
}

id GetDependentMultilingualInputModes()
{
  if (GetDependentMultilingualInputModes___onceToken != -1)
  {
    GetDependentMultilingualInputModes_cold_1();
  }

  v1 = GetDependentMultilingualInputModes___dependentInputModes;

  return v1;
}

uint64_t TIUIMultilingualSetIsMonoscriptInput(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v18;
    v6 = *MEMORY[0x277D6F760];
    v7 = *MEMORY[0x277D6F750];
    do
    {
      v8 = 0;
      v9 = v4;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v10 = *(*(&v17 + 1) + 8 * v8);
        v11 = TIInputModeGetNormalizedIdentifier();
        v4 = TIGetInputModeProperties();

        v12 = [v4 objectForKey:{v6, v17}];
        if ([v12 BOOLValue])
        {
          v13 = [v4 objectForKey:v7];

          if (v13)
          {
            v14 = 0;
            goto LABEL_13;
          }
        }

        else
        {
        }

        ++v8;
        v9 = v4;
      }

      while (v3 != v8);
      v3 = [v1 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v3);
    v14 = 1;
LABEL_13:
  }

  else
  {
    v14 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t TIUIMultilingualSetIsMultiscriptInput(void *a1, _BYTE *a2)
{
  v3 = a1;
  if ([v3 count] == 2)
  {
    if (_TIUIMultilingualSetIsMultiscriptInputInOrder(v3))
    {
      v4 = 1;
    }

    else
    {
      v5 = [v3 reverseObjectEnumerator];
      v6 = [v5 allObjects];

      IsMultiscriptInputInOrder = _TIUIMultilingualSetIsMultiscriptInputInOrder(v6);
      v4 = IsMultiscriptInputInOrder;
      if (a2 && IsMultiscriptInputInOrder)
      {
        *a2 = 1;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id TIUIGetAddableInputModesForMultilingualSet(void *a1)
{
  v72 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (TIUICanAddInputModeToMultilingualSet(0, v1))
  {
    v2 = v1;
    v3 = [v2 mutableCopy];
    if ([v3 count])
    {
      v4 = 0;
      do
      {
        v5 = [v2 objectAtIndexedSubscript:v4];
        v6 = TIInputModeGetNormalizedIdentifier();
        [v3 replaceObjectAtIndex:v4 withObject:v6];

        ++v4;
      }

      while (v4 < [v3 count]);
    }

    v47 = GetMultilingualInputModes();
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v64 objects:v71 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v65;
      v12 = MEMORY[0x277CBEBF8];
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v65 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v64 + 1) + 8 * i);
          if (![v47 containsObject:v14])
          {
            v19 = v7;
            v18 = v12;
            goto LABEL_50;
          }

          GetDependentMultilingualInputModes();
          v16 = v15 = v10;
          v17 = [v16 containsObject:v14];

          v10 = v17 | v15;
        }

        v9 = [v7 countByEnumeratingWithState:&v64 objects:v71 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }

    v44 = v10;
    v45 = v2;
    v46 = v1;

    v48 = [MEMORY[0x277CBEB18] array];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v20 = GetDependentMultilingualInputModes();
    v21 = [v20 countByEnumeratingWithState:&v60 objects:v70 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v61;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v61 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v60 + 1) + 8 * j);
          if (([v7 containsObject:v25] & 1) == 0)
          {
            v26 = GetRequiredInputModesForDependentInputMode(v25);
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            v27 = v26;
            v28 = [v27 countByEnumeratingWithState:&v56 objects:v69 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v57;
              while (2)
              {
                for (k = 0; k != v29; ++k)
                {
                  if (*v57 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  if ([v7 containsObject:*(*(&v56 + 1) + 8 * k)])
                  {

                    if (([&unk_2867A4D70 containsObject:v25] & 1) != 0 || isH13ANEPresentOnIOS())
                    {
                      [v48 addObject:v25];
                    }

                    goto LABEL_35;
                  }
                }

                v29 = [v27 countByEnumeratingWithState:&v56 objects:v69 count:16];
                if (v29)
                {
                  continue;
                }

                break;
              }
            }

LABEL_35:
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v60 objects:v70 count:16];
      }

      while (v22);
    }

    v1 = v46;
    v18 = v48;
    if ((v44 & 1) == 0)
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v32 = GetBilingualInputModes();
      v33 = [v32 countByEnumeratingWithState:&v52 objects:v68 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v53;
        do
        {
          for (m = 0; m != v34; ++m)
          {
            if (*v53 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v52 + 1) + 8 * m);
            if (([v7 containsObject:v37] & 1) == 0)
            {
              [v48 addObject:v37];
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v52 objects:v68 count:16];
        }

        while (v34);
      }
    }

    v38 = [MEMORY[0x277D75688] sharedInputModeController];
    v39 = [v38 enabledInputModeIdentifiers];

    v40 = MEMORY[0x277CCAC30];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __TIUIGetAddableInputModesForMultilingualSet_block_invoke;
    v49[3] = &unk_2797FA2A8;
    v50 = v39;
    v51 = v45;
    v19 = v39;
    v41 = [v40 predicateWithBlock:v49];
    [v48 filterUsingPredicate:v41];

LABEL_50:
  }

  else
  {
    v18 = MEMORY[0x277CBEBF8];
  }

  v42 = *MEMORY[0x277D85DE8];

  return v18;
}

id GetMultilingualInputModes()
{
  v0 = GetBilingualInputModes();
  v1 = GetDependentMultilingualInputModes();
  v2 = [v0 arrayByAddingObjectsFromArray:v1];

  return v2;
}

id GetRequiredInputModesForDependentInputMode(void *a1)
{
  v1 = a1;
  if (GetRequiredInputModesForDependentInputMode_onceToken != -1)
  {
    GetRequiredInputModesForDependentInputMode_cold_1();
  }

  if ([GetRequiredInputModesForDependentInputMode___transliterationInputModes containsObject:v1])
  {
    v2 = GetRequiredInputModesForDependentInputMode___englishInputModes;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id GetBilingualInputModes()
{
  if (GetBilingualInputModes___onceToken != -1)
  {
    GetBilingualInputModes_cold_1();
  }

  v1 = GetBilingualInputModes___bilingualInputModes;

  return v1;
}

uint64_t __TIUIGetAddableInputModesForMultilingualSet_block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = TIUIGetProposedMultilingualSetsForAddingInputMode(a2, *(a1 + 32));
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v13 + 1) + 8 * v7) objectForKeyedSubscript:{@"current", v13}];
        v9 = [v8 isEqualToArray:*(a1 + 40)];

        if (v9)
        {
          v10 = 1;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

id TIUIGetProposedMultilingualSetsForAddingInputMode(void *a1, void *a2)
{
  v155 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v114 = GetMultilingualInputModes();
  if ([v114 containsObject:v3])
  {
    v109 = v3;
    v5 = [MEMORY[0x277CBEB40] orderedSet];
    v116 = [MEMORY[0x277CBEB38] dictionary];
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v99 = v4;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v127 objects:v153 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v128;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v128 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v127 + 1) + 8 * i);
          v11 = TIInputModeGetNormalizedIdentifier();
          if ([v114 containsObject:v11])
          {
            v12 = TIUIGetMultilingualIDFromInputMode();
            v13 = v12;
            if (v12)
            {
              v14 = v12;
            }

            else
            {
              v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"_", v10];
            }

            v15 = v14;

            v16 = [v116 objectForKeyedSubscript:v15];
            if (!v16)
            {
              v16 = [MEMORY[0x277CBEB18] array];
              [v116 setObject:v16 forKeyedSubscript:v15];
            }

            [v16 addObject:v10];
            [v5 addObject:v15];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v127 objects:v153 count:16];
      }

      while (v7);
    }

    v104 = [MEMORY[0x277CBEB18] array];
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v108 = v5;
    v3 = v109;
    v111 = [v108 countByEnumeratingWithState:&v123 objects:v152 count:16];
    if (v111)
    {
      v110 = *v124;
      v17 = 0x277CCA000;
      do
      {
        for (j = 0; j != v111; ++j)
        {
          if (*v124 != v110)
          {
            objc_enumerationMutation(v108);
          }

          v19 = *(*(&v123 + 1) + 8 * j);
          v20 = [v116 objectForKeyedSubscript:v19];
          if (![v19 hasPrefix:@"_"])
          {
            if (!TIUICanAddInputModeToMultilingualSet(v3, v20))
            {
              goto LABEL_97;
            }

            v36 = [v20 firstObject];
            v35 = GetInputModeIdentifierByMatchingLayoutsAndAddingMultilingualID(v3, v36, v19);

            if (([obj containsObject:v35] & 1) == 0)
            {
              v37 = TIUIGetProposedMultilingualSetByAddingInputMode(v3, v20);
              if (v37)
              {
                [v104 addObject:v37];
              }

              goto LABEL_95;
            }

            goto LABEL_96;
          }

          v21 = v3;
          v22 = v20;
          v23 = GetDependentMultilingualInputModes();
          v24 = [v23 containsObject:v21];

          v112 = v20;
          v113 = j;
          if (v24)
          {
            if (([&unk_2867A4D70 containsObject:v21] & 1) == 0 && !isH13ANEPresentOnIOS())
            {
LABEL_57:
              v35 = 0;
              goto LABEL_65;
            }

            v25 = GetRequiredInputModesForDependentInputMode(v21);
            v131 = 0u;
            v132 = 0u;
            v133 = 0u;
            v134 = 0u;
            v26 = v22;
            v27 = [v26 countByEnumeratingWithState:&v131 objects:v154 count:16];
            if (v27)
            {
              v28 = v27;
              v105 = v22;
              v29 = v21;
              v30 = *v132;
              while (2)
              {
                for (k = 0; k != v28; ++k)
                {
                  if (*v132 != v30)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v32 = *(*(&v131 + 1) + 8 * k);
                  v33 = TIInputModeGetNormalizedIdentifier();
                  v34 = [v25 containsObject:v33];

                  if (v34)
                  {
                    v21 = v29;
                    goto LABEL_61;
                  }
                }

                v28 = [v26 countByEnumeratingWithState:&v131 objects:v154 count:16];
                if (v28)
                {
                  continue;
                }

                break;
              }

              v35 = 0;
              v21 = v29;
LABEL_62:
              v22 = v105;
            }

            else
            {
              v35 = 0;
            }

            v20 = v112;
            j = v113;
          }

          else
          {
            v38 = GetBilingualInputModes();
            v39 = [v38 containsObject:v21];

            if (!v39)
            {
              goto LABEL_57;
            }

            v133 = 0u;
            v134 = 0u;
            v131 = 0u;
            v132 = 0u;
            v25 = v22;
            v117 = [v25 countByEnumeratingWithState:&v131 objects:v154 count:16];
            if (v117)
            {
              v105 = v22;
              v40 = *v132;
              while (2)
              {
                for (m = 0; m != v117; ++m)
                {
                  if (*v132 != v40)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v32 = *(*(&v131 + 1) + 8 * m);
                  v26 = TIInputModeGetNormalizedIdentifier();
                  v42 = GetBilingualInputModes();
                  if ([v42 containsObject:v26])
                  {
                    [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:v21];
                    v43 = v40;
                    v44 = v25;
                    v46 = v45 = v21;
                    v47 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:v26];
                    v48 = [v46 isEqualToString:v47];

                    v21 = v45;
                    v25 = v44;
                    v40 = v43;

                    if (!v48)
                    {
                      v17 = 0x277CCA000uLL;
LABEL_61:
                      v35 = v32;
                      goto LABEL_62;
                    }
                  }

                  else
                  {
                  }

                  v49 = GetDependentMultilingualInputModes();
                  if ([v49 containsObject:v26])
                  {
                    v50 = GetRequiredInputModesForDependentInputMode(v26);
                    v51 = [v50 containsObject:v21];

                    v17 = 0x277CCA000;
                    if (v51 && (([&unk_2867A4D70 containsObject:v26] & 1) != 0 || (isH13ANEPresentOnIOS() & 1) != 0))
                    {
                      goto LABEL_61;
                    }
                  }

                  else
                  {

                    v17 = 0x277CCA000;
                  }
                }

                v117 = [v25 countByEnumeratingWithState:&v131 objects:v154 count:16];
                if (v117)
                {
                  continue;
                }

                break;
              }

              v35 = 0;
              v20 = v112;
              j = v113;
              v22 = v105;
            }

            else
            {
              v35 = 0;
            }
          }

          v3 = v109;
LABEL_65:

          if (v35)
          {
            v52 = obj;
            v53 = [MEMORY[0x277CBEB18] array];
            v131 = 0u;
            v132 = 0u;
            v133 = 0u;
            v134 = 0u;
            v54 = v52;
            v55 = [v54 countByEnumeratingWithState:&v131 objects:v154 count:16];
            if (v55)
            {
              v56 = v55;
              v57 = *v132;
              do
              {
                for (n = 0; n != v56; ++n)
                {
                  if (*v132 != v57)
                  {
                    objc_enumerationMutation(v54);
                  }

                  v59 = *(*(&v131 + 1) + 8 * n);
                  v60 = TIUIGetMultilingualIDFromInputMode();
                  if ([v60 length])
                  {
                    v61 = [*(v17 + 2992) numberWithInteger:{objc_msgSend(v60, "integerValue")}];
                    [v53 addObject:v61];
                  }
                }

                v56 = [v54 countByEnumeratingWithState:&v131 objects:v154 count:16];
              }

              while (v56);
            }

            [v53 sortUsingSelector:sel_compare_];
            v62 = [v53 lastObject];
            v63 = [v62 integerValue];

            v64 = [*(v17 + 2992) numberWithUnsignedInteger:v63 + 1];
            if ([v53 containsObject:v64])
            {
              TIUIGetProposedMultilingualSetsForAddingInputMode_cold_3();
            }

            v65 = [*(v17 + 2992) numberWithUnsignedInteger:v63 + 1];
            v37 = [v65 stringValue];

            v66 = GetInputModeIdentifierByMatchingLayoutsAndAddingMultilingualID(v35, 0, v37);
            v67 = GetInputModeIdentifierByMatchingLayoutsAndAddingMultilingualID(v21, v66, v37);
            v68 = TIUIGetPairedInputModesForInputMode(v21);
            if (![v68 count])
            {
              v69 = TIInputModeGetNormalizedIdentifier();
              v70 = TIUIGetPairedInputModesForInputMode(v69);

              v68 = v70;
            }

            if ([v68 count])
            {
              v106 = v67;
              v71 = [MEMORY[0x277CBEB18] arrayWithObject:v67];
              v119 = 0u;
              v120 = 0u;
              v121 = 0u;
              v122 = 0u;
              v118 = v68;
              v72 = v68;
              v73 = [v72 countByEnumeratingWithState:&v119 objects:v151 count:16];
              if (v73)
              {
                v74 = v73;
                v75 = *v120;
                do
                {
                  for (ii = 0; ii != v74; ++ii)
                  {
                    if (*v120 != v75)
                    {
                      objc_enumerationMutation(v72);
                    }

                    v77 = GetInputModeIdentifierByMatchingLayoutsAndAddingMultilingualID(*(*(&v119 + 1) + 8 * ii), v66, v37);
                    [v71 addObject:v77];
                  }

                  v74 = [v72 countByEnumeratingWithState:&v119 objects:v151 count:16];
                }

                while (v74);
              }

              v149[0] = @"current";
              v148 = v35;
              v78 = [MEMORY[0x277CBEA60] arrayWithObjects:&v148 count:1];
              v150[0] = v78;
              v149[1] = @"updated";
              v147 = v66;
              v79 = [MEMORY[0x277CBEA60] arrayWithObjects:&v147 count:1];
              v149[2] = @"added";
              v150[1] = v79;
              v150[2] = v71;
              v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v150 forKeys:v149 count:3];
              [v104 addObject:v80];

              v67 = v106;
              goto LABEL_87;
            }

            v146[0] = v66;
            v146[1] = v67;
            v81 = [MEMORY[0x277CBEA60] arrayWithObjects:v146 count:2];
            IsMonoscriptInput = TIUIMultilingualSetIsMonoscriptInput(v81);

            if (IsMonoscriptInput)
            {
              v144[0] = @"current";
              v143 = v35;
              v71 = [MEMORY[0x277CBEA60] arrayWithObjects:&v143 count:1];
              v145[0] = v71;
              v144[1] = @"updated";
              v142 = v66;
              v83 = [MEMORY[0x277CBEA60] arrayWithObjects:&v142 count:1];
              v145[1] = v83;
              v144[2] = @"added";
              v141 = v67;
              v84 = [MEMORY[0x277CBEA60] arrayWithObjects:&v141 count:1];
              v145[2] = v84;
              [MEMORY[0x277CBEAC0] dictionaryWithObjects:v145 forKeys:v144 count:3];
              v86 = v85 = v67;
              [v104 addObject:v86];

              v67 = v85;
            }

            else
            {
              v140[0] = v66;
              v140[1] = v67;
              v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v140 count:2];
              v154[0] = 0;
              if (TIUIMultilingualSetIsMultiscriptInput(v71, v154))
              {
                if ([v71 count] != 2)
                {
                  TIUIGetProposedMultilingualSetsForAddingInputMode_cold_1();
                }

                v118 = v68;
                v87 = [v71 objectAtIndexedSubscript:v154[0]];
                v88 = [v71 objectAtIndexedSubscript:v154[0] ^ 1];
                v89 = TIInputModeGetNormalizedIdentifier();
                v90 = TIUIKeyboardGetSupportedSoftwareMultiscriptLayouts();

                if (![v90 count])
                {
                  TIUIGetProposedMultilingualSetsForAddingInputMode_cold_2();
                }

                v107 = [v90 firstObject];
                v103 = UIKeyboardInputModeWithNewSWLayout();
                v137 = v35;
                v138[0] = @"current";
                v101 = [MEMORY[0x277CBEA60] arrayWithObjects:&v137 count:1];
                v139[0] = v101;
                v138[1] = @"updated";
                v136 = v103;
                v91 = [MEMORY[0x277CBEA60] arrayWithObjects:&v136 count:1];
                v139[1] = v91;
                v138[2] = @"added";
                v102 = v88;
                v135 = v88;
                [MEMORY[0x277CBEA60] arrayWithObjects:&v135 count:1];
                v100 = v87;
                v93 = v92 = v67;
                v139[2] = v93;
                v94 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v139 forKeys:v138 count:3];
                [v104 addObject:v94];

                v67 = v92;
LABEL_87:
                v68 = v118;
              }
            }

            v3 = v109;
            v20 = v112;
            j = v113;
LABEL_95:
          }

LABEL_96:

LABEL_97:
        }

        v111 = [v108 countByEnumeratingWithState:&v123 objects:v152 count:16];
      }

      while (v111);
    }

    v95 = v104;
    v96 = [v104 indexesOfObjectsPassingTest:&__block_literal_global_119_0];
    if ([v96 count])
    {
      [v104 removeObjectsAtIndexes:v96];
    }

    v4 = v99;
  }

  else
  {
    v95 = MEMORY[0x277CBEBF8];
  }

  v97 = *MEMORY[0x277D85DE8];

  return v95;
}

id GetInputModeIdentifierByMatchingLayoutsAndAddingMultilingualID(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = TIInputModeGetComponentsFromIdentifier();
  v9 = [v8 mutableCopy];

  if (v6)
  {
    v10 = TIInputModeGetComponentsFromIdentifier();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v9 objectForKey:@"sw"];
  if (![v11 length])
  {
    v12 = [KSKeyboardListController softwareLayoutsForBaseInputMode:v5];
    v13 = [v10 objectForKeyedSubscript:@"sw"];
    if ([v13 length] && objc_msgSend(v12, "containsObject:", v13))
    {
      v14 = v13;
    }

    else
    {
      v14 = [v12 firstObject];
    }

    v15 = v14;

    [v9 setObject:v15 forKeyedSubscript:@"sw"];
    v11 = v15;
  }

  v16 = [v9 objectForKey:@"hw"];
  if (![v16 length])
  {
    v17 = UIKeyboardGetSupportedHardwareKeyboardsForInputMode();
    v18 = [v10 objectForKeyedSubscript:@"hw"];
    if ([v18 length] && objc_msgSend(v17, "containsObject:", v18))
    {
      v19 = v18;
    }

    else
    {
      v19 = UIKeyboardGetDefaultHardwareKeyboardForInputMode();
    }

    v20 = v19;

    [v9 setObject:v20 forKeyedSubscript:@"hw"];
    v16 = v20;
  }

  [v9 setObject:v7 forKeyedSubscript:@"ml"];
  v21 = TIUIKeyboardInputModeGetIdentifierFromComponents(v9);

  return v21;
}

id TIUIGetProposedMultilingualSetByAddingInputMode(void *a1, void *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v4 firstObject];
  v6 = TIUIGetMultilingualIDFromInputMode();

  v7 = [v4 firstObject];
  v8 = GetInputModeIdentifierByMatchingLayoutsAndAddingMultilingualID(v3, v7, v6);

  v9 = TIUIGetPairedInputModesForInputMode(v3);
  if ([v9 count])
  {
    v34 = v8;
    v36 = v3;
    v10 = [MEMORY[0x277CBEB18] arrayWithObject:v8];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v39 objects:v53 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v40;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v40 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v39 + 1) + 8 * i);
          v17 = [v4 firstObject];
          v18 = GetInputModeIdentifierByMatchingLayoutsAndAddingMultilingualID(v16, v17, v6);

          [v10 addObject:v18];
        }

        v13 = [v11 countByEnumeratingWithState:&v39 objects:v53 count:16];
      }

      while (v13);
    }

    v51[0] = @"current";
    v51[1] = @"added";
    v52[0] = v4;
    v52[1] = v10;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
    v8 = v34;
    v3 = v36;
  }

  else
  {
    v50 = v8;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
    v21 = [v20 arrayByAddingObjectsFromArray:v4];
    IsMonoscriptInput = TIUIMultilingualSetIsMonoscriptInput(v21);

    if (IsMonoscriptInput)
    {
      v48[1] = @"added";
      v49[0] = v4;
      v47 = v8;
      v48[0] = @"current";
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
      v49[1] = v10;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
    }

    else
    {
      v10 = [v4 arrayByAddingObject:v8];
      v38 = 0;
      if (TIUIMultilingualSetIsMultiscriptInput(v10, &v38))
      {
        if ([v10 count] != 2)
        {
          TIUIGetProposedMultilingualSetByAddingInputMode_cold_1();
        }

        v23 = [v10 objectAtIndexedSubscript:v38];
        v37 = [v10 objectAtIndexedSubscript:v38 ^ 1];
        v24 = TIInputModeGetNormalizedIdentifier();
        v25 = TIUIKeyboardGetSupportedSoftwareMultiscriptLayouts();

        if (![v25 count])
        {
          TIUIGetProposedMultilingualSetByAddingInputMode_cold_2();
        }

        v35 = v25;
        v33 = [v25 firstObject];
        v31 = UIKeyboardInputModeWithNewSWLayout();
        v46[0] = v4;
        v45[0] = @"current";
        v45[1] = @"updated";
        v44 = v31;
        [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
        v26 = v32 = v23;
        v46[1] = v26;
        v45[2] = @"added";
        v43 = v37;
        v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
        v46[2] = v27;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:3];
      }

      else
      {
        v19 = 0;
      }
    }
  }

  if (TIUIGetProposedInputModeIsValid(v19))
  {
    v28 = v19;
  }

  else
  {
    v28 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

uint64_t TIUIGetProposedInputModeIsValid(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = TIUIProposedInputModeGetMultilingualSet(a1);
  v2 = [v1 firstObject];
  v3 = TIInputModeGetMultilingualSetFromInputModesWithPreferredLanguages();

  v4 = [MEMORY[0x277D75688] sharedInputModeController];
  v5 = [v4 enabledInputModeIdentifiers];

  [MEMORY[0x277D75680] multilingualSetsFromInputModeIdentifiers:v5];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * v10) identifier];
        v12 = TIInputModeGetMultilingualSetFromInputModes();

        LOBYTE(v11) = TIUIGetMultlingualSetsAreEqual(v12, v3);
        if (v11)
        {
          v13 = 0;
          goto LABEL_11;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

id TIUIProposedInputModeGetMultilingualSet(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"current"];
  v3 = TIUIGetInputModesByAddingProposedInputMode(v1, v2);

  v4 = [v3 firstObject];
  v5 = TIUIInputModeGetMultilingualSetFromInputModes(v4, v3);

  return v5;
}

id TIUIGetInputModesByAddingProposedInputMode(void *a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v4 mutableCopy];
  v6 = [v3 objectForKeyedSubscript:@"current"];
  v7 = [v3 objectForKeyedSubscript:@"updated"];
  v8 = [v3 objectForKeyedSubscript:@"added"];
  if ([v7 count])
  {
    v9 = [v6 count];
    if (v9 != [v7 count])
    {
      TIUIGetInputModesByAddingProposedInputMode_cold_1();
    }

    if ([v5 count])
    {
      v10 = 0;
      do
      {
        v11 = [v5 objectAtIndexedSubscript:v10];
        v12 = [v6 indexOfObject:v11];
        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = v12;
          if (v12 >= [v7 count])
          {
            TIUIGetInputModesByAddingProposedInputMode_cold_2();
          }

          if (v13 < [v7 count])
          {
            v14 = [v7 objectAtIndexedSubscript:v13];
            [v5 replaceObjectAtIndex:v10 withObject:v14];
          }
        }

        ++v10;
      }

      while (v10 < [v5 count]);
    }
  }

  if ([v8 count])
  {
    v15 = [v7 lastObject];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = [v6 lastObject];
    }

    v18 = v17;

    v19 = [v5 indexOfObject:v18];
    if (v19 == 0x7FFFFFFFFFFFFFFFLL)
    {
      TIUIGetInputModesByAddingProposedInputMode_cold_3();
    }

    v20 = v19;
    v28 = v8;
    v29 = v4;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v21 = v8;
    v22 = [v21 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v31;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v31 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [v5 insertObject:*(*(&v30 + 1) + 8 * i) atIndex:{++v20, v28, v29, v30}];
        }

        v23 = [v21 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v23);
    }

    v8 = v28;
    v4 = v29;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t _TIUIMultilingualSetIsMultiscriptInputInOrder(void *a1)
{
  v1 = a1;
  if ([v1 count] == 2 && (objc_msgSend(MEMORY[0x277D6F470], "sharedPreferencesController"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "valueForPreferenceKey:", @"KeyboardMultiscriptEnabled"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "BOOLValue"), v3, v2, v4))
  {
    v5 = [v1 firstObject];
    v6 = TIInputModeGetNormalizedIdentifier();

    v7 = TIGetInputModeProperties();
    v8 = *MEMORY[0x277D6F760];
    v9 = [v7 objectForKey:*MEMORY[0x277D6F760]];
    v10 = [v9 BOOLValue];

    if (v10)
    {
      v11 = [v1 objectAtIndexedSubscript:1];
      v12 = TIInputModeGetNormalizedIdentifier();

      v13 = TIGetInputModeProperties();
      v14 = [v13 objectForKey:v8];
      v15 = [v14 BOOLValue];

      if (v15)
      {
        v16 = [v7 objectForKey:*MEMORY[0x277D6F750]];
        v17 = [v16 allKeys];

        v18 = [v17 containsObject:v12];
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t TIUIGetCountOfUserVisibleInputModes()
{
  v18 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D75688] sharedInputModeController];
  v1 = [v0 enabledInputModeIdentifiers];
  v2 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = TIUIGetMultilingualIDFromInputMode();
        if ([v10 length])
        {
          if ([v2 containsObject:v10])
          {
            goto LABEL_10;
          }

          [v2 addObject:v10];
        }

        ++v6;
LABEL_10:
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (!v5)
      {
        goto LABEL_14;
      }
    }
  }

  v6 = 0;
LABEL_14:

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

id TIUIGetLocalizedConcatenatedLanguageNamesForInputModesWithStyle(void *a1, int a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
    v5 = [KSKeyboardListController keyboardDisplayNameForIdentifier:v4];
  }

  else
  {
    v39 = a2;
    v40 = v3;
    v6 = [MEMORY[0x277CBEB38] dictionary];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v7 = [MEMORY[0x277D75688] sharedInputModeController];
    v8 = [v7 enabledInputModeIdentifiers];

    v9 = [v8 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v46;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v46 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v45 + 1) + 8 * i);
          v14 = TIInputModeGetLanguage();
          v15 = TIInputModeGetNormalizedIdentifier();
          v16 = [v6 objectForKeyedSubscript:v14];
          if (!v16)
          {
            v16 = [MEMORY[0x277CBEB58] set];
            [v6 setObject:v16 forKeyedSubscript:v14];
          }

          [v16 addObject:v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v10);
    }

    v17 = [v40 firstObject];
    v18 = [MEMORY[0x277CBEAF8] preferredLanguages];
    v19 = TIInputModeGetMultilingualSetFromInputModesWithPreferredLanguages();

    v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v19, "count")}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v21 = v19;
    v22 = [v21 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v42;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v42 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v41 + 1) + 8 * j);
          if ((TIInputModeIsMultilingualOnly() & 1) == 0)
          {
            v27 = TIInputModeGetLanguage();
            v28 = [v6 objectForKeyedSubscript:v27];
            v29 = [v28 count];

            if (v29 >= 2)
            {
              v30 = TIInputModeGetNormalizedIdentifier();

              v27 = v30;
            }

            v31 = [KSKeyboardListController keyboardDisplayNameForIdentifier:v27];
            [v20 addObject:v31];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v23);
    }

    if (v39)
    {
      v32 = [v20 count];
      v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v34 = v33;
      if (v32 == 2)
      {
        v35 = @"LIST_SEPARATOR_2";
      }

      else
      {
        v35 = @"LIST_SEPARATOR";
      }

      v36 = [v33 localizedStringForKey:v35 value:&stru_28679E3A8 table:@"Keyboard"];

      v5 = [v20 componentsJoinedByString:v36];
    }

    else
    {
      v5 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:v20];
    }

    v3 = v40;
  }

  v37 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t TIUIMultilingualSetGetLanguageCount(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v4 += TIInputModeIsMultilingualOnly() ^ 1;
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t TIUIMultilingualSetContainsTransliterationInputModes(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = *v11;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v11 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v10 + 1) + 8 * i);
        v6 = TIInputModeGetNormalizedIdentifier();
        IsTransliteration = TIInputModeIsTransliteration();

        if (IsTransliteration)
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

void __GetDependentMultilingualInputModes_block_invoke()
{
  v0 = GetDependentMultilingualInputModes___dependentInputModes;
  GetDependentMultilingualInputModes___dependentInputModes = &unk_2867A4D58;
}

void __GetRequiredInputModesForDependentInputMode_block_invoke()
{
  v0 = GetRequiredInputModesForDependentInputMode___transliterationInputModes;
  GetRequiredInputModesForDependentInputMode___transliterationInputModes = &unk_2867A4D88;

  v1 = GetRequiredInputModesForDependentInputMode___englishInputModes;
  GetRequiredInputModesForDependentInputMode___englishInputModes = &unk_2867A4DA0;
}

void __GetBilingualInputModes_block_invoke()
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v0 = [MEMORY[0x277D6F380] sharedInputModeController];
  v1 = [v0 supportedInputModeIdentifiers];

  v2 = [v1 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v18;
    v5 = *MEMORY[0x277D6F760];
    v6 = *MEMORY[0x277D6F708];
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        v9 = TIGetInputModeProperties();
        v10 = [v9 objectForKeyedSubscript:v5];
        v11 = [v10 BOOLValue];

        if (v11)
        {
          v12 = [v9 objectForKeyedSubscript:v6];
          v13 = [v12 BOOLValue];

          if ((v13 & 1) == 0)
          {
            [v16 addObject:v8];
          }
        }

        ++v7;
      }

      while (v3 != v7);
      v3 = [v1 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v3);
  }

  v14 = GetBilingualInputModes___bilingualInputModes;
  GetBilingualInputModes___bilingualInputModes = v16;

  v15 = *MEMORY[0x277D85DE8];
}

void *TIDownloadButton()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D755D0];
  v5[0] = [MEMORY[0x277D75348] tintColor];
  v1 = [v0 configurationWithPaletteColors:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v5, 1)}];
  v2 = [MEMORY[0x277D75220] buttonWithType:0];
  [v2 setPreferredSymbolConfiguration:v1 forImageInState:0];
  [v2 setImage:objc_msgSend(MEMORY[0x277D755B8] forState:{"systemImageNamed:", @"icloud.and.arrow.down", 0}];
  [v2 sizeToFit];
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t KSInputModeIsChineseShuangpin()
{
  result = [TIInputModeGetBaseLanguage() isEqualToString:@"zh"];
  if (result)
  {
    Variant = TIInputModeGetVariant();

    return [Variant isEqualToString:@"Shuangpin"];
  }

  return result;
}

BOOL KSCurrentShuangpinTypeUsesSemicolon()
{
  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v1 = [objc_msgSend(v0 valueForPreferenceKey:{*MEMORY[0x277D6FA70]), "integerValue"}];
  return v1 == 7 || v1 == 2;
}

uint64_t KSGetCurrentShuangpinName()
{
  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v1 = [objc_msgSend(v0 valueForPreferenceKey:{*MEMORY[0x277D6FA70]), "integerValue"}];

  return KSGetShuangpinNameFromType(v1);
}

uint64_t KSGetShuangpinNameFromType(int a1)
{
  v2 = a1 - 2;
  if ((a1 - 2) > 5 || ((0x3Du >> v2) & 1) == 0)
  {
    return 0;
  }

  v3 = off_2797FA340[v2];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return [v4 localizedStringForKey:v3 value:&stru_28679E3A8 table:@"Preferences_pinyin"];
}

void *KSFilteredLayoutsByCurrentShuangpinType(void *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v3 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = [objc_msgSend(v3 valueForPreferenceKey:{*MEMORY[0x277D6FA70]), "integerValue"}];
  if (v4 == 7 || v4 == 2)
  {
    v24 = 0uLL;
    v25 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v6 = [a1 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(a1);
          }

          v10 = *(*(&v22 + 1) + 8 * i);
          if (([v10 hasPrefix:@"Pinyin-"] & 1) == 0)
          {
            [v2 addObject:v10];
          }
        }

        v7 = [a1 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v20 = 0uLL;
    v21 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v11 = [a1 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(a1);
          }

          v15 = *(*(&v18 + 1) + 8 * j);
          if (([v15 hasPrefix:@"Shuangpin-with-Semicolon-"] & 1) == 0)
          {
            [v2 addObject:v15];
          }
        }

        v12 = [a1 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v12);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v2;
}

id KSUpdateShuangpinSWLayout()
{
  result = [objc_msgSend(objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
  if (result)
  {
    v1 = result;
    v2 = [objc_msgSend(objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
    v3 = [MEMORY[0x277D6F470] sharedPreferencesController];
    v4 = [objc_msgSend(v3 valueForPreferenceKey:{*MEMORY[0x277D6FA70]), "integerValue"}];
    v5 = v4 == 7 || v4 == 2;
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __KSUpdateShuangpinSWLayout_block_invoke_2;
    v10 = &unk_2797FA320;
    v6 = v5;
    v11 = v1;
    v12 = v6;
    [v2 enumerateIndexesUsingBlock:&v7];
    return [KSKeyboardListController setInputModes:v1, v7, v8, v9, v10];
  }

  return result;
}

uint64_t __KSUpdateShuangpinSWLayout_block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) objectAtIndexedSubscript:a2];
  SWLayout = TIInputModeGetSWLayout();
  v5 = SWLayout;
  if (*(a1 + 40) == 1)
  {
    result = [SWLayout hasPrefix:@"Pinyin-"];
    if (!result)
    {
      return result;
    }

    v7 = @"Pinyin-";
    v8 = [@"Pinyin-" length];
    v9 = @"Shuangpin-with-Semicolon-";
  }

  else
  {
    result = [SWLayout hasPrefix:@"Shuangpin-with-Semicolon-"];
    if (!result)
    {
      return result;
    }

    v7 = @"Shuangpin-with-Semicolon-";
    v8 = [@"Shuangpin-with-Semicolon-" length];
    v9 = @"Pinyin-";
  }

  result = [v5 stringByReplacingOccurrencesOfString:v7 withString:v9 options:0 range:{0, v8}];
  if (result)
  {
    v10 = UIKeyboardInputModeWithNewSWLayout();
    v11 = *(a1 + 32);

    return [v11 replaceObjectAtIndex:a2 withObject:v10];
  }

  return result;
}

void sub_255850588(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2558509E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2558514D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}