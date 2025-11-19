@interface KSKeyboardController
+ (BOOL)_isLowStorageForOnDeviceDictationAsset;
+ (id)localizedDisplayNameForInputMode:(id)a3 forDictation:(BOOL)a4;
+ (id)localizedStringForGeneralKeyboardSpecifier;
+ (id)localizedStringForKeyboardController;
+ (id)singleActiveDisabledDictationLanguage;
+ (int64_t)compareUsingOrderInArray:(id)a3 withFirst:(id)a4 second:(id)a5;
+ (void)emitNavigationEventForSpecifier:(id)a3 viewController:(id)a4;
+ (void)localizeAndSortPreferencesArray:(id)a3;
- (BOOL)_supportsProKeyboard;
- (BOOL)feedbackFeatureEnabled;
- (KSKeyboardController)init;
- (NSArray)openShortcutsSpecifiers;
- (id)addAllPreferencesToArray:(id)a3 mapPreferenceToInputMode:(id)a4;
- (id)autoPunctuation:(id)a3;
- (id)bundle;
- (id)dictationEnabled:(id)a3;
- (id)dictationHWShortcutSpecifier;
- (id)getProKeyboardSetting:(id)a3;
- (id)getReachableKeybordSetting:(id)a3;
- (id)groupPreferences:(id)a3 forMapping:(id)a4 inputModes:(id)a5;
- (id)hardwareKeyboardSpecifier;
- (id)loadAllKeyboardPreferences;
- (id)lowStorageOnDeviceAssetStringWithLinkString:(id)a3;
- (id)mergePreferences:(id)a3 inputModesToPreferences:(id)a4;
- (id)pinyinDialect:(id)a3;
- (id)reachableKeyboardSpecifier;
- (id)readAutocorrectionPreferenceValue:(id)a3;
- (id)readCPDeleteWordPreferenceValue:(id)a3;
- (id)readCPPreferenceValue:(id)a3;
- (id)readCheckSpellingPreferenceValue:(id)a3;
- (id)readKeyboardAllowPaddlePreferenceValue:(id)a3;
- (id)readKeyboardInlineCompletionPreferenceValue:(id)a3;
- (id)readKeyboardMathExpressionCompletionPreferenceValue:(id)a3;
- (id)readPredictionPreferenceValue:(id)a3;
- (id)readPreferenceValue:(id)a3;
- (id)readSmartTypingPreferenceValue:(id)a3;
- (id)selectSpecifier:(id)a3;
- (id)shuangpinType:(id)a3;
- (id)smartFullwidthSpace:(id)a3;
- (id)sortPreferencesKeysByInputModeOrderAndCount:(id)a3 inputModes:(id)a4;
- (id)specifiers;
- (id)wubiStandard:(id)a3;
- (void)_dismissConfirmationSheet;
- (void)addDictationItems:(id)a3;
- (void)addEnabledExtensionSpecifiersToArray:(id)a3;
- (void)addFooterTextForDialectSpecifierForGroup:(id)a3;
- (void)addFooterTextForStickers:(id)a3;
- (void)addHardwareKeyboardAndShortcuts:(id)a3;
- (void)dealloc;
- (void)dictationDisabledCancelled:(id)a3;
- (void)dictationDisabledConfirmed:(id)a3;
- (void)dictationEnabledCancelled:(id)a3;
- (void)dictationEnabledConfirmed:(id)a3;
- (void)dictationShortcutSubtitle:(id)a3;
- (void)disableLockedDownPreferencesForGroup:(id)a3;
- (void)emitNavigationEventForRootController;
- (void)feedbackFeatureEnabled;
- (void)hardwareKeyboardAvailabilityChanged;
- (void)init;
- (void)launchManageStorage:(id)a3;
- (void)loadPreferenceForInputModeIdentifier:(id)a3 keyboardInputMode:(id)a4 addNewPreferencesToArray:(id)a5 defaultPreferenceIdentifiers:(id)a6 additionalPreferenceIdentifiers:(id)a7 mapPreferenceToInputMode:(id)a8;
- (void)managedKeyboardSettingsDidChange;
- (void)moveCharacterPreviewPreferenceToEndForGroup:(id)a3;
- (void)moveEnableDictationPreferenceToEndAndAddFooterTextForGroup:(id)a3;
- (void)movePeriodShortcutPreferenceToEndAndAddFooterTextForGroup:(id)a3;
- (void)moveSpaceConfirmationPreferenceToEndAndAddFooterTextForGroup:(id)a3;
- (void)offlineDictationStatusUpdated:(id)a3;
- (void)preferencesDidChange:(id)a3;
- (void)presentPrivacySheet:(id)a3;
- (void)removeDialectPreferenceIfNotApplicableForGroup:(id)a3;
- (void)removeShuangpinPreferenceIfNotApplicableForGroup:(id)a3;
- (void)setAutoPunctuation:(id)a3 specifier:(id)a4;
- (void)setAutocorrectionPreferenceValue:(id)a3 forSpecifier:(id)a4;
- (void)setCheckSpellingPreferenceValue:(id)a3 forSpecifier:(id)a4;
- (void)setDictationEnabled:(id)a3 forSpecifier:(id)a4;
- (void)setKeyboardAllowPaddlePreferenceValue:(id)a3 forSpecifier:(id)a4;
- (void)setKeyboardPreferenceValue:(id)a3 forSpecifier:(id)a4;
- (void)setPinyinDialect:(id)a3 specifier:(id)a4;
- (void)setPredictionPreferenceValue:(id)a3 forSpecifier:(id)a4;
- (void)setProKeyboardSetting:(id)a3 specifier:(id)a4;
- (void)setReachableKeyboardSetting:(id)a3 specifier:(id)a4;
- (void)setShuangpinType:(id)a3 specifier:(id)a4;
- (void)setSmartFullwidthSpace:(id)a3 specifier:(id)a4;
- (void)setSmartTypingPreferenceValue:(id)a3 forSpecifier:(id)a4;
- (void)setWubiStandard:(id)a3 specifier:(id)a4;
- (void)showDictationDisabledDialogForSpecifier:(id)a3;
- (void)showDictationEnableDialogForSpecifier:(id)a3;
@end

@implementation KSKeyboardController

- (void)offlineDictationStatusUpdated:(id)a3
{
  [(KSKeyboardController *)self setOfflineStatusForLanguage:a3];

  [(KSKeyboardController *)self reloadSpecifiers];
}

+ (BOOL)_isLowStorageForOnDeviceDictationAsset
{
  v4 = 0;
  v2 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  if (v2)
  {
    v2 = [v2 objectForKey:*MEMORY[0x277CCA1D0]];
    if (v2)
    {
      LOBYTE(v2) = [v2 unsignedLongLongValue] >> 22 < 0x7D;
    }
  }

  return v2;
}

- (id)lowStorageOnDeviceAssetStringWithLinkString:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCA940] set];
  v29 = [MEMORY[0x277CBEB18] array];
  v30 = [MEMORY[0x277CBEB18] array];
  v31 = [MEMORY[0x277CBEB18] array];
  v32 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277D6FFA8] sharedPreferencesController];
  v6 = [v5 suggestedDictationModesForKeyboardLanguages:{objc_msgSend(objc_msgSend(MEMORY[0x277D75688], "sharedInputModeController"), "activeDictationSupportedInputModeIdentifiers")}];
  v7 = [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277D756A0] "sharedPreferencesController")];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    v33 = 0;
    v10 = *v39;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v38 + 1) + 8 * i);
        if ([objc_msgSend(v7 objectForKeyedSubscript:{objc_msgSend(v12, "identifier")), "BOOLValue"}])
        {
          [v12 identifier];
          TIInputModeGetBaseLanguage();
          [v4 addObject:TIInputModeGetBaseLanguage()];
          v13 = [objc_msgSend(v12 "identifier")];
          if (![(NSDictionary *)[(KSKeyboardController *)self offlineStatusForLanguage] objectForKeyedSubscript:v13])
          {
            v14 = MEMORY[0x259C42620](v13);
            if (v14)
            {
              [(NSDictionary *)[(KSKeyboardController *)self offlineStatusForLanguage] objectForKeyedSubscript:v14];
            }
          }

          if (AFOfflineDictationStatusStringIsHighQualityModelSupported())
          {
            ++v33;
            IsInstalled = AFOfflineDictationStatusStringIsInstalled();
            v16 = [v12 identifier];
            if (IsInstalled)
            {
              v17 = v30;
            }

            else
            {
              v17 = v31;
            }
          }

          else
          {
            v16 = [v12 identifier];
            v17 = v32;
          }

          [v17 addObject:v16];
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v9);
  }

  else
  {
    v33 = 0;
  }

  result = [v31 count];
  if (result)
  {
    if (![objc_opt_class() _isLowStorageForOnDeviceDictationAsset])
    {
      goto LABEL_36;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v19 = [v4 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v35;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v35 != v21)
          {
            objc_enumerationMutation(v4);
          }

          v23 = *(*(&v34 + 1) + 8 * j);
          if ([v4 countForObject:v23] >= 2)
          {
            [v29 addObject:v23];
          }
        }

        v20 = [v4 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v20);
    }

    result = [v31 count];
    if (result)
    {
      if ([v32 count] || v33 >= 2)
      {
        v25 = MEMORY[0x277CCACA8];
        v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        if ([v31 count] < 2)
        {
          v27 = @"DICTATION_ON_DEVICE_LOW_STORAGE_WITH_LANGUAGE";
        }

        else
        {
          v27 = [@"DICTATION_ON_DEVICE_LOW_STORAGE_WITH_LANGUAGE" stringByAppendingString:@"S"];
        }

        result = [v25 stringWithFormat:objc_msgSend(v26, "localizedStringForKey:value:table:", v27, &stru_28679E3A8, @"Keyboard", +[KSKeyboardController localizedListForInputModes:forDictation:duplicatedBaseLanguages:](KSKeyboardController, "localizedListForInputModes:forDictation:duplicatedBaseLanguages:", v31, 1, v29)];
        goto LABEL_42;
      }

      if (v33 == 1)
      {
        result = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_ON_DEVICE_LOW_STORAGE", &stru_28679E3A8, @"Keyboard"}];
LABEL_42:
        if (a3 && result)
        {
          result = [result stringByAppendingFormat:@" %@", a3];
        }

        goto LABEL_37;
      }

LABEL_36:
      result = 0;
    }
  }

LABEL_37:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

- (KSKeyboardController)init
{
  v11.receiver = self;
  v11.super_class = KSKeyboardController;
  v2 = [(KSKeyboardController *)&v11 init];
  if (v2)
  {
    v2->_dictionaryController = objc_alloc_init(KSUserWordsManager);
    [MEMORY[0x277D75678] sharedInstance];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, HardwareKeyboardAvailabilityChanged, [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D0EEA0]], 0, 0);
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v2 selector:sel_preferencesDidChange_ name:*MEMORY[0x277D6FA08] object:0];
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel__dismissConfirmationSheet name:*MEMORY[0x277D76660] object:0];
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v7 = getMCKeyboardSettingsChangedNotificationSymbolLoc_ptr;
    v20 = getMCKeyboardSettingsChangedNotificationSymbolLoc_ptr;
    if (!getMCKeyboardSettingsChangedNotificationSymbolLoc_ptr)
    {
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __getMCKeyboardSettingsChangedNotificationSymbolLoc_block_invoke;
      v15 = &unk_2797F9DF8;
      v16 = &v17;
      v8 = ManagedConfigurationLibrary();
      v9 = dlsym(v8, "MCKeyboardSettingsChangedNotification");
      *(v16[1] + 24) = v9;
      getMCKeyboardSettingsChangedNotificationSymbolLoc_ptr = *(v16[1] + 24);
      v7 = v18[3];
    }

    _Block_object_dispose(&v17, 8);
    if (!v7)
    {
      [KSKeyboardController init];
    }

    [v6 addObserver:v2 selector:sel_managedKeyboardSettingsDidChange name:*v7 object:0];
    if (init_onceToken != -1)
    {
      [KSKeyboardController init];
    }

    if (AFOfflineDictationCapable())
    {
      v2->_dictationOfflineStatusObserver = [[KSDictationOfflineStatusObserver alloc] initWithDelegate:v2];
    }
  }

  return v2;
}

void __28__KSKeyboardController_init__block_invoke()
{
  global_queue = dispatch_get_global_queue(0, 0);

  dispatch_async(global_queue, &__block_literal_global_119);
}

uint64_t __28__KSKeyboardController_init__block_invoke_2()
{
  v0 = [MEMORY[0x277CCAA00] defaultManager];

  return [v0 URLForUbiquityContainerIdentifier:0];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D0EEA0]], 0);
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  v4.receiver = self;
  v4.super_class = KSKeyboardController;
  [(KSKeyboardController *)&v4 dealloc];
}

- (id)bundle
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

- (id)readPreferenceValue:(id)a3
{
  v5 = *MEMORY[0x277D3FFF0];
  if ([objc_msgSend(a3 propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"KanaFlick"}])
  {
    v6 = [objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
    v7 = MEMORY[0x277CCABB0];
    v8 = [v6 indexOfObjectPassingTest:&__block_literal_global_129] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (![objc_msgSend(a3 propertyForKey:{v5), "isEqualToString:", @"KanaLeftToRight"}])
    {
      v11.receiver = self;
      v11.super_class = KSKeyboardController;
      return [(KSKeyboardController *)&v11 readPreferenceValue:a3];
    }

    v9 = [objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
    v7 = MEMORY[0x277CCABB0];
    v8 = [v9 indexOfObjectPassingTest:&__block_literal_global_140] == 0x7FFFFFFFFFFFFFFFLL;
  }

  return [v7 numberWithInt:v8];
}

uint64_t __44__KSKeyboardController_readPreferenceValue___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [objc_msgSend(TIInputModeGetComponentsFromIdentifier() objectForKeyedSubscript:{@"sw", "_containsSubstring:", @"Flick"}];
  if (result)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t __44__KSKeyboardController_readPreferenceValue___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [objc_msgSend(TIInputModeGetComponentsFromIdentifier() objectForKeyedSubscript:{@"sw", "_containsSubstring:", @"RTL"}];
  if (result)
  {
    *a4 = 1;
  }

  return result;
}

- (void)setKeyboardPreferenceValue:(id)a3 forSpecifier:(id)a4
{
  v7 = [a4 propertyForKey:*MEMORY[0x277D3FFF0]];
  if (([v7 isEqualToString:@"KanaLeftToRight"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"KanaFlick"))
  {
    v8 = [objc_msgSend(objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
    if (v8)
    {
      v9 = v8;
      v10 = [objc_msgSend(objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
      if (v10 < [v9 count])
      {
        v11 = [v9 objectAtIndex:v10];
        v12 = [v7 isEqualToString:@"KanaLeftToRight"];
        [a3 BOOLValue];
        if (v12)
        {
          [v11 _containsSubstring:@"Flick"];
        }

        else
        {
          [v11 _containsSubstring:@"RTL"];
        }

        [v9 replaceObjectAtIndex:v10 withObject:UIKeyboardInputModeWithNewSWLayout()];
        [KSKeyboardListController setInputModes:v9];
      }
    }
  }

  else
  {
    if ([v7 isEqualToString:@"KeyboardPrediction"])
    {
      v13 = [MEMORY[0x277D6F470] sharedPreferencesController];
      [v13 setValue:a3 forPreferenceKey:*MEMORY[0x277D6F998]];
    }

    else if ([v7 isEqualToString:@"KeyboardAssistant"] && (objc_msgSend(a3, "BOOLValue") & 1) == 0)
    {
      v15 = *MEMORY[0x277D6FBF0];
      UIKeyboardGetCurrentInputMode();
      TIInputModeGetNormalizedIdentifier();
      TIStatisticGetKeyForInputMode();
      TIStatisticScalarIncrement();
    }

    else if ([v7 isEqualToString:*MEMORY[0x277D76AA8]])
    {
      v14 = *MEMORY[0x277D6FB58];
      TIStatisticGetKey();
      [a3 BOOLValue];
      TIStatisticScalarSetBoolean();
    }

    if (([v7 isEqualToString:@"KeyboardAutocapitalization"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"KeyboardAutocorrection") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"KeyboardPeriodShortcut") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"KeyboardContinuousPathEnabled") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"KeyboardContinuousPathDeleteWholeWord") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"KeyboardPrediction") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"KeyboardInlineCompletion") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"SpaceConfirmation") & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"KeyboardCapsLock"))
    {
      [objc_msgSend(MEMORY[0x277D6F470] "sharedPreferencesController")];
    }

    else
    {
      [MEMORY[0x277D3FAB8] setPreferenceValue:a3 specifier:a4];
    }
  }

  v16 = *MEMORY[0x277D3FFB8];
  if ([objc_msgSend(a4 propertyForKey:{*MEMORY[0x277D3FFB8]), "isEqualToString:", @"KeyboardContinuousPathEnabled"}])
  {
    v17 = [(KSKeyboardController *)self containsSpecifier:[(KSKeyboardController *)self deleteWordSpecifier]];
    if (![a3 BOOLValue] || (v17 & 1) != 0)
    {
      if (([a3 BOOLValue] & 1) == 0 && ((v17 ^ 1) & 1) == 0)
      {
        -[KSKeyboardController setDeleteWordSpecifierIndex:](self, "setDeleteWordSpecifierIndex:", [-[KSKeyboardController specifiers](self "specifiers")]);
        [(KSKeyboardController *)self removeSpecifier:[(KSKeyboardController *)self deleteWordSpecifier] animated:1];
      }
    }

    else
    {
      [(KSKeyboardController *)self deleteWordSpecifierIndex];
      v18 = [(KSKeyboardController *)self deleteWordSpecifierIndex];
      v19 = [-[KSKeyboardController specifiers](self "specifiers")];
      v20 = [(KSKeyboardController *)self deleteWordSpecifier];
      if (v18 >= v19)
      {
        [(KSKeyboardController *)self addSpecifier:v20 animated:1];
      }

      else
      {
        [(KSKeyboardController *)self insertSpecifier:v20 atIndex:[(KSKeyboardController *)self deleteWordSpecifierIndex] animated:1];
      }
    }
  }

  if ([objc_msgSend(a4 propertyForKey:{v16), "isEqualToString:", @"KeyboardPrediction"}])
  {
    v21 = [(KSKeyboardController *)self containsSpecifier:[(KSKeyboardController *)self inlineCompletionSpecifier]];
    if (![a3 BOOLValue] || (v21 & 1) != 0)
    {
      if (([a3 BOOLValue] & 1) == 0 && ((v21 ^ 1) & 1) == 0)
      {
        -[KSKeyboardController setInlineCompletionSpecifierIndex:](self, "setInlineCompletionSpecifierIndex:", [-[KSKeyboardController specifiers](self "specifiers")]);
        [(KSKeyboardController *)self removeSpecifier:[(KSKeyboardController *)self inlineCompletionSpecifier] animated:1];
      }
    }

    else
    {
      [(KSKeyboardController *)self inlineCompletionSpecifierIndex];
      v22 = [(KSKeyboardController *)self inlineCompletionSpecifierIndex];
      v23 = [-[KSKeyboardController specifiers](self "specifiers")];
      v24 = [(KSKeyboardController *)self inlineCompletionSpecifier];
      if (v22 >= v23)
      {
        [(KSKeyboardController *)self addSpecifier:v24 animated:1];
      }

      else
      {
        [(KSKeyboardController *)self insertSpecifier:v24 atIndex:[(KSKeyboardController *)self inlineCompletionSpecifierIndex] animated:1];
      }
    }
  }

  v25 = *MEMORY[0x277D3FEF8];
  if ([objc_msgSend(a4 propertyForKey:{*MEMORY[0x277D3FEF8]), "isEqualToString:", @"com.apple.InputModePreferences"}])
  {
    v26 = @"AppleKeyboardsInputModeChangedNotification";
  }

  else if ([objc_msgSend(a4 propertyForKey:{v25), "isEqualToString:", @"com.apple.keyboard.ContinuousPath"}])
  {
    v26 = @"AppleKeyboardsContinuousPathSettingsChangedNotification";
  }

  else if ([objc_msgSend(a4 propertyForKey:{v25), "isEqualToString:", @"com.apple.keyboard.predictive"}])
  {
    v26 = @"AppleKeyboardsPredictiveChangedNotification";
  }

  else
  {
    v26 = @"AppleKeyboardsSettingsChangedNotification";
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v26, 0, 0, 1u);
}

- (id)readAutocorrectionPreferenceValue:(id)a3
{
  if (([objc_msgSend(a3 propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"KeyboardAutocorrection"}] & 1) == 0)
  {
    [KSKeyboardController readAutocorrectionPreferenceValue:];
  }

  v3 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = *MEMORY[0x277D6F7C0];

  return [v3 valueForPreferenceKey:v4];
}

- (id)readPredictionPreferenceValue:(id)a3
{
  if (([objc_msgSend(a3 propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"KeyboardPrediction"}] & 1) == 0)
  {
    [KSKeyboardController readPredictionPreferenceValue:];
  }

  v3 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = *MEMORY[0x277D6F928];

  return [v3 valueForPreferenceKey:v4];
}

- (id)readKeyboardInlineCompletionPreferenceValue:(id)a3
{
  if (([objc_msgSend(a3 propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"KeyboardInlineCompletion"}] & 1) == 0)
  {
    [KSKeyboardController readKeyboardInlineCompletionPreferenceValue:];
  }

  v3 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = *MEMORY[0x277D6F878];

  return [v3 valueForPreferenceKey:v4];
}

- (id)readKeyboardMathExpressionCompletionPreferenceValue:(id)a3
{
  if (([objc_msgSend(a3 propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"KeyboardMathExpressionCompletion"}] & 1) == 0)
  {
    [KSKeyboardController readKeyboardMathExpressionCompletionPreferenceValue:];
  }

  v3 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = *MEMORY[0x277D6F8A8];

  return [v3 valueForPreferenceKey:v4];
}

- (id)readKeyboardAllowPaddlePreferenceValue:(id)a3
{
  if (([objc_msgSend(a3 propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"KeyboardAllowPaddle"}] & 1) == 0)
  {
    [KSKeyboardController readKeyboardAllowPaddlePreferenceValue:];
  }

  v3 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = *MEMORY[0x277D6F7A0];

  return [v3 valueForPreferenceKey:v4];
}

- (id)readCheckSpellingPreferenceValue:(id)a3
{
  if (([objc_msgSend(a3 propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"KeyboardCheckSpelling"}] & 1) == 0)
  {
    [KSKeyboardController readCheckSpellingPreferenceValue:];
  }

  v3 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = *MEMORY[0x277D6F820];

  return [v3 valueForPreferenceKey:v4];
}

- (id)readCPPreferenceValue:(id)a3
{
  if (([objc_msgSend(a3 propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"KeyboardContinuousPathEnabled"}] & 1) == 0)
  {
    [KSKeyboardController readCPPreferenceValue:];
  }

  v3 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = *MEMORY[0x277D6F848];

  return [v3 valueForPreferenceKey:v4];
}

- (id)readCPDeleteWordPreferenceValue:(id)a3
{
  if (([objc_msgSend(a3 propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"KeyboardContinuousPathDeleteWholeWord"}] & 1) == 0)
  {
    [KSKeyboardController readCPDeleteWordPreferenceValue:];
  }

  v3 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = *MEMORY[0x277D6F830];

  return [v3 valueForPreferenceKey:v4];
}

- (void)setAutocorrectionPreferenceValue:(id)a3 forSpecifier:(id)a4
{
  if (([objc_msgSend(a4 propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"KeyboardAutocorrection"}] & 1) == 0)
  {
    [KSKeyboardController setAutocorrectionPreferenceValue:forSpecifier:];
  }

  if (![(KSKeyboardController *)self feedbackFeatureEnabled]|| !KeyboardSettingsFeedbackLibraryCore())
  {
    goto LABEL_9;
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy_;
  v6 = getTUIFeedbackControllerClass_softClass;
  v15 = __Block_byref_object_dispose_;
  v16 = getTUIFeedbackControllerClass_softClass;
  if (!getTUIFeedbackControllerClass_softClass)
  {
    KeyboardSettingsFeedbackLibraryCore();
    v12[5] = objc_getClass("TUIFeedbackController");
    getTUIFeedbackControllerClass_softClass = v12[5];
    v6 = v12[5];
  }

  _Block_object_dispose(&v11, 8);
  if (objc_opt_respondsToSelector())
  {
    [MEMORY[0x277D6F360] getSupportedFeedbackLanguages];
    v7 = [v6 controller];
    v8 = [v7 shouldCompleteStudyWithPreferenceValue:{objc_msgSend(a3, "BOOLValue")}];
    v9 = [MEMORY[0x277D6F470] sharedPreferencesController];
    [v9 setValue:a3 forPreferenceKey:*MEMORY[0x277D6F7C0]];
    if (v8)
    {
      [v7 completeStudyWithFinalPreferenceValue:objc_msgSend(a3 parentController:{"BOOLValue"), self}];
    }
  }

  else
  {
LABEL_9:
    v10 = [MEMORY[0x277D6F470] sharedPreferencesController];
    [v10 setValue:a3 forPreferenceKey:*MEMORY[0x277D6F7C0]];
  }
}

- (BOOL)feedbackFeatureEnabled
{
  if (feedbackFeatureEnabled_once_token != -1)
  {
    [KSKeyboardController feedbackFeatureEnabled];
  }

  if (feedbackFeatureEnabled_is_internal_install == 1)
  {
    v2 = [objc_msgSend(objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:{@"com.apple.keyboard", "BOOLForKey:", @"feedbackFeatureEnabled"}];
  }

  else
  {
    v2 = 0;
  }

  if (IXACanLogMessageAtLevel())
  {
    v3 = IXAFeedbackLogFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(KSKeyboardController *)v2 feedbackFeatureEnabled];
    }
  }

  return v2;
}

uint64_t __46__KSKeyboardController_feedbackFeatureEnabled__block_invoke()
{
  result = MGGetBoolAnswer();
  feedbackFeatureEnabled_is_internal_install = result;
  return result;
}

- (void)setPredictionPreferenceValue:(id)a3 forSpecifier:(id)a4
{
  if (([objc_msgSend(a4 propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"KeyboardPrediction"}] & 1) == 0)
  {
    [KSKeyboardController setPredictionPreferenceValue:forSpecifier:];
  }

  v5 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v5 setValue:a3 forPreferenceKey:*MEMORY[0x277D6F928]];
  v6 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v7 = *MEMORY[0x277D6F998];

  [v6 setValue:a3 forPreferenceKey:v7];
}

- (void)setKeyboardAllowPaddlePreferenceValue:(id)a3 forSpecifier:(id)a4
{
  if (([objc_msgSend(a4 propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"KeyboardAllowPaddle"}] & 1) == 0)
  {
    [KSKeyboardController setKeyboardAllowPaddlePreferenceValue:forSpecifier:];
  }

  v5 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v6 = *MEMORY[0x277D6F7A0];

  [v5 setValue:a3 forPreferenceKey:v6];
}

- (void)setCheckSpellingPreferenceValue:(id)a3 forSpecifier:(id)a4
{
  if (([objc_msgSend(a4 propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"KeyboardCheckSpelling"}] & 1) == 0)
  {
    [KSKeyboardController setCheckSpellingPreferenceValue:forSpecifier:];
  }

  v5 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v6 = *MEMORY[0x277D6F820];

  [v5 setValue:a3 forPreferenceKey:v6];
}

- (id)readSmartTypingPreferenceValue:(id)a3
{
  if (([objc_msgSend(a3 propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"SmartTyping"}] & 1) == 0)
  {
    [KSKeyboardController readSmartTypingPreferenceValue:];
  }

  v3 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = *MEMORY[0x277D6FA88];

  return [v3 valueForPreferenceKey:v4];
}

- (void)setSmartTypingPreferenceValue:(id)a3 forSpecifier:(id)a4
{
  if (([objc_msgSend(a4 propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"SmartTyping"}] & 1) == 0)
  {
    [KSKeyboardController setSmartTypingPreferenceValue:forSpecifier:];
  }

  v5 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v5 setValue:a3 forPreferenceKey:*MEMORY[0x277D6FA88]];
  v6 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v7 = *MEMORY[0x277D6FA78];

  [v6 setValue:a3 forPreferenceKey:v7];
}

+ (id)singleActiveDisabledDictationLanguage
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
  if ([v2 count] == 1 && (v3 = objc_msgSend(MEMORY[0x277D6F380], "sharedInputModeController"), (objc_opt_respondsToSelector() & 1) != 0))
  {
    v4 = [v3 defaultDictationLanguagesForKeyboardLanguage:{objc_msgSend(v2, "firstObject")}];
    if (!v4)
    {
      v8[0] = [v2 firstObject];
      v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    }
  }

  else
  {
    v4 = v2;
  }

  if ([v4 count] != 1)
  {
LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  v5 = [objc_msgSend(MEMORY[0x277D756A0] "sharedPreferencesController")];
  result = [objc_msgSend(v5 valueForPreferenceKey:{*MEMORY[0x277D768A0]), "objectForKeyedSubscript:", objc_msgSend(v4, "firstObject")}];
  if (result)
  {
    if (([result BOOLValue] & 1) == 0)
    {
      result = [v4 firstObject];
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_10:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)dictationEnabled:(id)a3
{
  if (DictationIsEnabled())
  {
    v3 = [objc_opt_class() singleActiveDisabledDictationLanguage] == 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = MEMORY[0x277CCABB0];

  return [v4 numberWithBool:v3];
}

- (void)showDictationEnableDialogForSpecifier:(id)a3
{
  [a3 setConfirmationAction:sel_dictationEnabledConfirmed_];
  [a3 setConfirmationCancelAction:sel_dictationEnabledCancelled_];
  v4 = AFDeviceHighestLanguageModelCapabilityIdentifier();
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (v4 == 10)
  {
    v6 = @"DICTATION_ENABLE_PROMPT_ON_DEVICE_DICTATION_CAPABLE";
  }

  else
  {
    v6 = @"DICTATION_ENABLE_PROMPT";
  }

  v7 = [v5 localizedStringForKey:v6 value:&stru_28679E3A8 table:@"Keyboard"];
  v14 = MEMORY[0x277CBEAC0];
  v15 = v7;
  if ([objc_msgSend(MEMORY[0x277D75418] "currentDevice")])
  {
    v8 = @"DICTATION_ENABLE_TITLE_IPAD";
  }

  else
  {
    v8 = @"DICTATION_ENABLE_TITLE_IPHONE";
  }

  v9 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", v8, &stru_28679E3A8, @"Keyboard"}];
  v10 = *MEMORY[0x277D3FE98];
  v11 = *MEMORY[0x277D3FE90];
  v12 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_ENABLE_OK", &stru_28679E3A8, @"Keyboard"}];
  [a3 setupWithDictionary:{objc_msgSend(v14, "dictionaryWithObjectsAndKeys:", v9, v10, v15, v11, v12, *MEMORY[0x277D3FE88], objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_ENABLE_CANCEL", &stru_28679E3A8, @"Keyboard", *MEMORY[0x277D3FE78], 0)}];
  v13 = [objc_msgSend(MEMORY[0x277D75418] "currentDevice")];

  [(KSKeyboardController *)self showConfirmationViewForSpecifier:a3 useAlert:v13 swapAlertButtons:0];
}

- (void)showDictationDisabledDialogForSpecifier:(id)a3
{
  v4 = [objc_msgSend(MEMORY[0x277CEF368] "sharedPreferences")];
  [objc_msgSend(MEMORY[0x277D2BCF8] "sharedInstance")];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (v4)
  {
    v6 = @"DICTATION_DISABLE_PROMPT_SIRI_ENABLED";
  }

  else
  {
    v6 = @"DICTATION_DISABLE_PROMPT_SIRI_DISABLED";
  }

  v14 = [v5 localizedStringForKey:v6 value:&stru_28679E3A8 table:@"Keyboard"];
  [a3 setConfirmationAction:sel_dictationDisabledConfirmed_];
  [a3 setConfirmationCancelAction:sel_dictationDisabledCancelled_];
  v13 = MEMORY[0x277CBEAC0];
  if ([objc_msgSend(MEMORY[0x277D75418] "currentDevice")])
  {
    v7 = @"DICTATION_DISABLE_TITLE_IPAD";
  }

  else
  {
    v7 = @"DICTATION_DISABLE_TITLE_IPHONE";
  }

  v8 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", v7, &stru_28679E3A8, @"Keyboard"}];
  v9 = *MEMORY[0x277D3FE98];
  v10 = *MEMORY[0x277D3FE90];
  v11 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_DISABLE_OK", &stru_28679E3A8, @"Keyboard"}];
  [a3 setupWithDictionary:{objc_msgSend(v13, "dictionaryWithObjectsAndKeys:", v8, v9, v14, v10, v11, *MEMORY[0x277D3FE88], objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_DISABLE_CANCEL", &stru_28679E3A8, @"Keyboard", *MEMORY[0x277D3FE78], 0)}];
  v12 = [objc_msgSend(MEMORY[0x277D75418] "currentDevice")];

  [(KSKeyboardController *)self showConfirmationViewForSpecifier:a3 useAlert:v12 swapAlertButtons:0];
}

- (void)setDictationEnabled:(id)a3 forSpecifier:(id)a4
{
  if ([a3 BOOLValue])
  {

    [(KSKeyboardController *)self showDictationEnableDialogForSpecifier:a4];
  }

  else if ([objc_msgSend(MEMORY[0x277CEF368] "sharedPreferences")])
  {

    [(KSKeyboardController *)self showDictationDisabledDialogForSpecifier:a4];
  }

  else
  {

    [(KSKeyboardController *)self dictationDisabledConfirmed:a4];
  }
}

- (void)dictationEnabledConfirmed:(id)a3
{
  v3 = a3;
  v11[1] = *MEMORY[0x277D85DE8];
  [a3 setConfirmationAction:0];
  [(PSSpecifier *)v3 setConfirmationCancelAction:0];
  v5 = [objc_opt_class() singleActiveDisabledDictationLanguage];
  if (v5)
  {
    v6 = v5;
    [objc_msgSend(MEMORY[0x277D756A0] "sharedPreferencesController")];
    if (objc_opt_respondsToSelector())
    {
      v7 = [objc_msgSend(MEMORY[0x277D756A0] "sharedPreferencesController")];
      v10 = v6;
      v11[0] = MEMORY[0x277CBEC38];
      [v7 setEnabledDictationLanguages:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1)}];
      [objc_msgSend(objc_msgSend(MEMORY[0x277D756A0] "sharedPreferencesController")];
    }
  }

  [objc_msgSend(MEMORY[0x277CEF368] "sharedPreferences")];
  [objc_msgSend(MEMORY[0x277CEF368] "sharedPreferences")];
  v8 = [(KSKeyboardController *)self dictationAutoPunctuationSpecifier];
  if (v8)
  {
    v3 = v8;
  }

  if ([(KSKeyboardController *)self dictationLanguageSpecifier])
  {
    [(KSKeyboardController *)self insertSpecifier:[(KSKeyboardController *)self dictationLanguageSpecifier] afterSpecifier:v3 animated:1];
    v3 = [(KSKeyboardController *)self dictationLanguageSpecifier];
  }

  if ([(KSKeyboardController *)self dictationHardwareShortcutSpecifier])
  {
    [(KSKeyboardController *)self insertSpecifier:[(KSKeyboardController *)self dictationHardwareShortcutSpecifier] afterSpecifier:v3 animated:1];
    [(KSKeyboardController *)self dictationHardwareShortcutSpecifier];
  }

  [(KSKeyboardController *)self reloadSpecifiers];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)dictationEnabledCancelled:(id)a3
{
  [objc_msgSend(a3 propertyForKey:{*MEMORY[0x277D3FEB0]), "setOn:animated:", 0, 1}];
  [a3 setConfirmationAction:0];

  [a3 setConfirmationCancelAction:0];
}

- (void)dictationDisabledConfirmed:(id)a3
{
  [a3 setConfirmationAction:0];
  [a3 setConfirmationCancelAction:0];
  [objc_msgSend(MEMORY[0x277CEF368] "sharedPreferences")];
  [objc_msgSend(MEMORY[0x277CEF368] "sharedPreferences")];
  [objc_msgSend(MEMORY[0x277CEF368] "sharedPreferences")];
  if ([(KSKeyboardController *)self dictationLanguageSpecifier])
  {
    [(KSKeyboardController *)self removeSpecifier:[(KSKeyboardController *)self dictationLanguageSpecifier] animated:1];
  }

  if ([(KSKeyboardController *)self dictationHardwareShortcutSpecifier])
  {
    [(KSKeyboardController *)self removeSpecifier:[(KSKeyboardController *)self dictationHardwareShortcutSpecifier] animated:1];
  }

  [(KSKeyboardController *)self reloadSpecifiers];
}

- (void)dictationDisabledCancelled:(id)a3
{
  [objc_msgSend(a3 propertyForKey:{*MEMORY[0x277D3FEB0]), "setOn:animated:", 1, 1}];
  [a3 setConfirmationAction:0];

  [a3 setConfirmationCancelAction:0];
}

- (void)_dismissConfirmationSheet
{
  [(KSKeyboardController *)self presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(KSKeyboardController *)self dismissViewControllerAnimated:0 completion:0];
  }

  [(KSKeyboardController *)self reloadSpecifierID:@"Dictation" animated:0];
}

- (void)presentPrivacySheet:(id)a3
{
  v4 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.siri"];
  [v4 setPresentingViewController:self];

  [v4 present];
}

- (void)launchManageStorage:(id)a3
{
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=General&path=STORAGE_MGMT"];

  [v3 openSensitiveURL:v4 withOptions:0 error:0];
}

- (id)shuangpinType:(id)a3
{
  if (([objc_msgSend(a3 propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"ShuangpinType"}] & 1) == 0)
  {
    [KSKeyboardController shuangpinType:];
  }

  v3 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = *MEMORY[0x277D6FA70];

  return [v3 valueForPreferenceKey:v4];
}

- (void)setShuangpinType:(id)a3 specifier:(id)a4
{
  if (([objc_msgSend(a4 propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"ShuangpinType"}] & 1) == 0)
  {
    [KSKeyboardController setShuangpinType:specifier:];
  }

  v5 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v5 setValue:a3 forPreferenceKey:*MEMORY[0x277D6FA70]];

  KSUpdateShuangpinSWLayout();
}

- (id)pinyinDialect:(id)a3
{
  if (([objc_msgSend(a3 propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"PinyinDialect"}] & 1) == 0)
  {
    [KSKeyboardController pinyinDialect:];
  }

  v3 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = *MEMORY[0x277D6FA00];

  return [v3 valueForPreferenceKey:v4];
}

- (void)setPinyinDialect:(id)a3 specifier:(id)a4
{
  if (([objc_msgSend(a4 propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"PinyinDialect"}] & 1) == 0)
  {
    [KSKeyboardController setPinyinDialect:specifier:];
  }

  v5 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v5 setValue:a3 forPreferenceKey:*MEMORY[0x277D6FA00]];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AppleKeyboardsPreferencesChangedNotification", 0, 0, 1u);
}

- (id)wubiStandard:(id)a3
{
  if (([objc_msgSend(a3 propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"WubiStandard"}] & 1) == 0)
  {
    [KSKeyboardController wubiStandard:];
  }

  v3 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = *MEMORY[0x277D6FD18];

  return [v3 valueForPreferenceKey:v4];
}

- (void)setWubiStandard:(id)a3 specifier:(id)a4
{
  if (([objc_msgSend(a4 propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"WubiStandard"}] & 1) == 0)
  {
    [KSKeyboardController setWubiStandard:specifier:];
  }

  v5 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v6 = *MEMORY[0x277D6FD18];

  [v5 setValue:a3 forPreferenceKey:v6];
}

- (id)smartFullwidthSpace:(id)a3
{
  if (([objc_msgSend(a3 propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"SmartFullwidthSpace"}] & 1) == 0)
  {
    [KSKeyboardController smartFullwidthSpace:];
  }

  v3 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = *MEMORY[0x277D6FA80];

  return [v3 valueForPreferenceKey:v4];
}

- (void)setSmartFullwidthSpace:(id)a3 specifier:(id)a4
{
  if (([objc_msgSend(a4 propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"SmartFullwidthSpace"}] & 1) == 0)
  {
    [KSKeyboardController setSmartFullwidthSpace:specifier:];
  }

  v5 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v6 = *MEMORY[0x277D6FA80];

  [v5 setValue:a3 forPreferenceKey:v6];
}

+ (id)localizedStringForGeneralKeyboardSpecifier
{
  result = localizedStringForGeneralKeyboardSpecifier_sKeyboardLocalizedString;
  if (!localizedStringForGeneralKeyboardSpecifier_sKeyboardLocalizedString)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.GeneralSettingsUI"];
    if (v3)
    {
      v4 = v3;
      v5 = objc_alloc(MEMORY[0x277CCAEB8]);
      result = [v5 initWithKey:@"Keyboard" table:@"General" locale:objc_msgSend(MEMORY[0x277CBEAF8] bundleURL:{"currentLocale"), objc_msgSend(v4, "bundleURL")}];
    }

    else
    {
      result = +[KSKeyboardController localizedStringForKeyboardController];
    }

    localizedStringForGeneralKeyboardSpecifier_sKeyboardLocalizedString = result;
  }

  return result;
}

+ (id)localizedStringForKeyboardController
{
  result = localizedStringForKeyboardController_sKeyboardControllerTitleLocalizedString;
  if (!localizedStringForKeyboardController_sKeyboardControllerTitleLocalizedString)
  {
    v3 = objc_alloc(MEMORY[0x277CCAEB8]);
    v4 = [MEMORY[0x277CBEAF8] currentLocale];
    result = [v3 initWithKey:@"KEYBOARDS" table:@"Keyboard" locale:v4 bundleURL:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "bundleURL")}];
    localizedStringForKeyboardController_sKeyboardControllerTitleLocalizedString = result;
  }

  return result;
}

- (void)emitNavigationEventForRootController
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.General/Keyboard"];
  v4 = +[KSKeyboardController localizedStringForGeneralKeyboardSpecifier];
  v5 = +[KSKeyboardController localizedStringForKeyboardController];
  v7[0] = v4;
  -[KSKeyboardController pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:title:localizedNavigationComponents:deepLink:](self, "pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:title:localizedNavigationComponents:deepLink:", @"com.apple.graphic-icon.keyboard", v5, [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1], v3);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)emitNavigationEventForSpecifier:(id)a3 viewController:(id)a4
{
  v20[2] = *MEMORY[0x277D85DE8];
  v6 = objc_opt_class();
  if ([v6 isSubclassOfClass:objc_opt_class()])
  {
    v7 = [a3 identifier];
    if (v7)
    {
      v8 = v7;
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"settings-navigation://com.apple.Settings.General/Keyboard/%@", v7];
      v10 = [MEMORY[0x277CBEBC0] URLWithString:v9];
      v19[0] = @"ReachableKeyboard";
      v19[1] = @"HardwareKeyboard";
      v20[0] = @"REACHABLE_KEYBOARD";
      v20[1] = @"Hardware Keyboard";
      v11 = [objc_msgSend(MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:{2), "objectForKeyedSubscript:", v8}];
      if (v11)
      {
        v12 = v11;
        v13 = +[KSKeyboardController localizedStringForGeneralKeyboardSpecifier];
        v14 = objc_alloc(MEMORY[0x277CCAEB8]);
        v15 = [MEMORY[0x277CBEAF8] currentLocale];
        v17 = v13;
        v18 = [v14 initWithKey:v12 table:@"Keyboard" locale:v15 bundleURL:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "bundleURL")}];
        [a4 pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.keyboard" title:v18 localizedNavigationComponents:objc_msgSend(MEMORY[0x277CBEA60] deepLink:{"arrayWithObjects:count:", &v17, 2), v10}];
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)preferencesDidChange:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__KSKeyboardController_preferencesDidChange___block_invoke;
  block[3] = &unk_2797F9D10;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __45__KSKeyboardController_preferencesDidChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 1481) & 1) == 0)
  {
    *(v1 + 1481) = 1;
    v3 = dispatch_time(0, 600000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__KSKeyboardController_preferencesDidChange___block_invoke_2;
    block[3] = &unk_2797F9D10;
    block[4] = *(a1 + 32);
    dispatch_after(v3, MEMORY[0x277D85CD0], block);
  }
}

uint64_t __45__KSKeyboardController_preferencesDidChange___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) reloadSpecifiers];
  *(*(a1 + 32) + 1481) = 0;
  return result;
}

- (void)managedKeyboardSettingsDidChange
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__KSKeyboardController_managedKeyboardSettingsDidChange__block_invoke;
  block[3] = &unk_2797F9D10;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __56__KSKeyboardController_managedKeyboardSettingsDidChange__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_msgSend(v2 "navigationController")];
  v4 = *(a1 + 32);
  if (v2 == v3)
  {

    return [v4 reloadSpecifiers];
  }

  else
  {
    [v4 setNeedsReloadSpecifiers:1];
    result = [objc_msgSend(getMCProfileConnectionClass() "sharedConnection")];
    if ((result & 1) == 0)
    {
      result = [objc_msgSend(objc_msgSend(*(a1 + 32) "navigationController")];
      if (result)
      {
        v6 = [*(a1 + 32) navigationController];
        v7 = *(a1 + 32);

        return [v6 popToViewController:v7 animated:1];
      }
    }
  }

  return result;
}

- (void)disableLockedDownPreferencesForGroup:(id)a3
{
  v4 = [a3 specifierForID:@"KeyboardAutocorrection"];
  if (v4)
  {
    v5 = v4;
    v6 = [MEMORY[0x277D6F470] sharedPreferencesController];
    if ([v6 isPreferenceKeyLockedDown:*MEMORY[0x277D6F7C0]])
    {
      [v5 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    }
  }

  v7 = [a3 specifierForID:@"KeyboardPrediction"];
  if (v7)
  {
    v8 = v7;
    v9 = [MEMORY[0x277D6F470] sharedPreferencesController];
    if ([v9 isPreferenceKeyLockedDown:*MEMORY[0x277D6F928]])
    {
      [v8 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    }

    [a3 specifierForID:@"KeyboardInlineCompletion"];
    v10 = [MEMORY[0x277D6F470] sharedPreferencesController];
    if ([v10 isPreferenceKeyLockedDown:*MEMORY[0x277D6F878]])
    {
      [v8 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    }

    [a3 specifierForID:@"KeyboardMathExpressionCompletion"];
    v11 = [MEMORY[0x277D6F470] sharedPreferencesController];
    if ([v11 isPreferenceKeyLockedDown:*MEMORY[0x277D6F8A8]])
    {
      [v8 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    }
  }

  else
  {
    [a3 specifierForID:@"KeyboardInlineCompletion"];
    [a3 specifierForID:@"KeyboardMathExpressionCompletion"];
  }

  v12 = [a3 specifierForID:@"KeyboardCheckSpelling"];
  if (v12)
  {
    v13 = v12;
    v14 = [MEMORY[0x277D6F470] sharedPreferencesController];
    if ([v14 isPreferenceKeyLockedDown:*MEMORY[0x277D6F820]])
    {
      [v13 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    }
  }

  v15 = [a3 specifierForID:@"SmartTyping"];
  if (v15)
  {
    v16 = v15;
    v17 = [MEMORY[0x277D6F470] sharedPreferencesController];
    if ([v17 isPreferenceKeyLockedDown:*MEMORY[0x277D6FA88]])
    {
      [v16 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    }
  }

  v18 = [a3 specifierForID:@"KeyboardContinuousPathEnabled"];
  if (v18)
  {
    v19 = v18;
    v20 = [MEMORY[0x277D6F470] sharedPreferencesController];
    if ([v20 isPreferenceKeyLockedDown:*MEMORY[0x277D6F848]])
    {
      v21 = *MEMORY[0x277D3FF38];
      v22 = MEMORY[0x277CBEC28];

      [v19 setProperty:v22 forKey:v21];
    }
  }
}

- (void)moveCharacterPreviewPreferenceToEndForGroup:(id)a3
{
  v4 = [a3 specifierForID:@"KeyboardAllowPaddle"];
  if (v4)
  {
    v5 = v4;
    if ([a3 specifierForID:@"KEYBOARD_TITLE"])
    {
      [a3 removeObject:v5];

      [a3 addObject:v5];
    }
  }
}

- (void)movePeriodShortcutPreferenceToEndAndAddFooterTextForGroup:(id)a3
{
  [(KSKeyboardController *)self moveCharacterPreviewPreferenceToEndForGroup:?];
  v4 = [a3 specifierForID:@"KeyboardPeriodShortcut"];
  if (v4)
  {
    v5 = v4;
    v6 = [a3 specifierForID:@"KEYBOARD_TITLE"];
    if (v6)
    {
      [v6 setProperty:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] forKey:{"bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"PERIOD_SHORTCUT_DESCRIPTION", &stru_28679E3A8, @"Keyboard", *MEMORY[0x277D3FF88]}];
      [a3 removeObject:v5];

      [a3 addObject:v5];
    }
  }
}

- (void)removeShuangpinPreferenceIfNotApplicableForGroup:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [objc_msgSend(MEMORY[0x277D75688] sharedInputModeController];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v12 + 1) + 8 * v8);
      if ([TIInputModeGetVariant() isEqualToString:@"Shuangpin"])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = [a3 specifierForID:@"ShuangpinType"];
    if (v10)
    {
      [a3 removeObject:v10];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)removeDialectPreferenceIfNotApplicableForGroup:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [objc_msgSend(MEMORY[0x277D75688] sharedInputModeController];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v12 + 1) + 8 * v8);
      if ([TIInputModeGetVariant() isEqualToString:@"Pinyin"])
      {
        if ([MEMORY[0x259C42580](v9) isEqualToString:@"Hans"])
        {
          break;
        }
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v10 = [a3 specifierForID:@"PinyinDialect"];
    if (v10)
    {
      [a3 removeObject:v10];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addFooterTextForDialectSpecifierForGroup:(id)a3
{
  v3 = [a3 specifierForID:@"PinyinDialect"];
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:SFLocalizableWAPIStringKeyForKey() value:&stru_28679E3A8 table:@"Preferences_pinyin"];
    v7 = *MEMORY[0x277D40118];

    [v4 setProperty:v6 forKey:v7];
  }
}

- (void)moveSpaceConfirmationPreferenceToEndAndAddFooterTextForGroup:(id)a3
{
  v4 = [a3 specifierForID:@"KEYBOARD_TITLE"];
  if (v4)
  {
    v5 = v4;
    v6 = *MEMORY[0x277D3FF88];
    if (![v4 propertyForKey:*MEMORY[0x277D3FF88]])
    {
      v7 = [a3 specifierForID:@"SpaceConfirmation"];
      if (v7)
      {
        v8 = v7;
        [v5 setProperty:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] forKey:{"bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"SPACE_CONFIRMATION_EXPLANATION", &stru_28679E3A8, @"Keyboard", v6}];
        [a3 removeObject:v8];

        [a3 addObject:v8];
      }
    }
  }
}

- (void)moveEnableDictationPreferenceToEndAndAddFooterTextForGroup:(id)a3
{
  v5 = [a3 specifierForID:@"Dictation"];
  if (v5)
  {
    v6 = v5;
    v7 = [a3 specifierForID:@"KEYBOARD_TITLE"];
    if (v7)
    {
      v8 = v7;
      v9 = [a3 specifierForID:@"KeyboardPeriodShortcut"];
      if (v9 | [a3 specifierForID:@"SpaceConfirmation"])
      {
        if ([v8 name])
        {
          v10 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_GROUP_TITLE", &stru_28679E3A8, @"Keyboard"}];
        }

        else
        {
          v10 = 0;
        }

        v8 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DICTATION_GROUP_TITLE" name:v10];
        [a3 addObject:v8];
      }

      [a3 removeObject:v6];
      [a3 addObject:v6];
      [v8 setTarget:self];
      v11 = *MEMORY[0x277D3FF48];

      [v8 setProperty:@"DictationFooterView" forKey:v11];
    }
  }
}

+ (void)localizeAndSortPreferencesArray:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [a3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(a3);
        }

        [*(*(&v9 + 1) + 8 * v7) setName:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", objc_msgSend(*(*(&v9 + 1) + 8 * v7), "name"), &stru_28679E3A8, @"Keyboard"}];
        ++v7;
      }

      while (v5 != v7);
      v5 = [a3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [a3 sortedArrayUsingComparator:&__block_literal_global_401];
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __56__KSKeyboardController_localizeAndSortPreferencesArray___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 name];
  v5 = [a3 name];

  return [v4 localizedStandardCompare:v5];
}

+ (id)localizedDisplayNameForInputMode:(id)a3 forDictation:(BOOL)a4
{
  if (a4)
  {
    v5 = TUIDictationTitle();
    if ([v5 length] && !objc_msgSend(v5, "isEqualToString:", a3))
    {
      return v5;
    }
  }

  else
  {
    v5 = 0;
  }

  if ([TIInputModeGetVariant() length])
  {
    v5 = TUIKeyboardTitle();
  }

  NormalizedIdentifier = TIInputModeGetNormalizedIdentifier();
  if (![v5 length])
  {
    v5 = TUIKeyboardTitle();
  }

  if (![v5 length] || objc_msgSend(NormalizedIdentifier, "isEqualToString:", v5))
  {
    v7 = [MEMORY[0x277CBEAF8] currentLocale];
    v5 = [v7 displayNameForKey:*MEMORY[0x277CBE6C8] value:TIInputModeGetLanguageWithRegion()];
  }

  if ([objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")] && !objc_msgSend(v5, "length"))
  {
    +[KSKeyboardController localizedDisplayNameForInputMode:forDictation:];
  }

  return v5;
}

+ (int64_t)compareUsingOrderInArray:(id)a3 withFirst:(id)a4 second:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    v11 = 1;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(a3);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 isEqualToString:a4] && !objc_msgSend(v13, "isEqualToString:", a5))
        {
          v11 = -1;
          goto LABEL_17;
        }

        if ([v13 isEqualToString:a5] && !objc_msgSend(v13, "isEqualToString:", a4))
        {
          goto LABEL_17;
        }

        if ([v13 isEqualToString:a4] && (objc_msgSend(v13, "isEqualToString:", a5) & 1) != 0)
        {
          v11 = 0;
          goto LABEL_17;
        }
      }

      v9 = [a3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v11 = [a4 localizedStandardCompare:a5];
LABEL_17:
  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)loadPreferenceForInputModeIdentifier:(id)a3 keyboardInputMode:(id)a4 addNewPreferencesToArray:(id)a5 defaultPreferenceIdentifiers:(id)a6 additionalPreferenceIdentifiers:(id)a7 mapPreferenceToInputMode:(id)a8
{
  v62[1] = *MEMORY[0x277D85DE8];
  v14 = TIGetInputModeProperties();
  if (![objc_msgSend(MEMORY[0x277D75418] "currentDevice")] || (v15 = objc_msgSend(v14, "objectForKey:", @"Preferences-iPad")) == 0)
  {
    v15 = [v14 objectForKey:@"Preferences"];
  }

  v58 = 0;
  if (AFDictationRestricted())
  {
    v16 = 0;
  }

  else
  {
    v16 = [MEMORY[0x277CEF270] dictationIsSupportedForLanguageCode:objc_msgSend(a4 error:{"languageWithRegion"), &v58}];
  }

  v38 = a3;
  v62[0] = a3;
  [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:1];
  v17 = UIKeyboardPredictionEnabledForInputModes();
  if (v14)
  {
    v41 = [objc_msgSend(v14 objectForKey:{@"UIKeyboardInlineCompletion", "BOOLValue"}];
    obj = UIKeyboardDeviceSupportsSplit();
    v18 = [objc_msgSend(v14 objectForKey:{*MEMORY[0x277D6F680]), "BOOLValue"}] ^ 1;
    v19 = [objc_msgSend(v14 objectForKey:{@"KeyboardCPAllowsDeleteWord", "BOOLValue"}] ^ 1;
  }

  else
  {
    v18 = 1;
    obj = UIKeyboardDeviceSupportsSplit();
    v41 = 0;
    v19 = 1;
  }

  v44 = v19;
  v36 = a8;
  if (v15)
  {
    v20 = [v15 mutableCopy];
    if (UIKeyboardCheckSpellingPossibleForInputMode())
    {
      [v20 addObject:@"KeyboardCheckSpelling"];
      if (!v16)
      {
LABEL_13:
        if (!v17)
        {
LABEL_21:
          if ((v18 & 1) == 0)
          {
            [v20 addObject:@"KeyboardContinuousPathEnabled"];
            if ((v44 & 1) == 0)
            {
              [v20 addObject:@"KeyboardContinuousPathDeleteWholeWord"];
            }
          }

          if (UIKeyboardDeviceSupportsSplit())
          {
            [v20 addObject:@"RivenKeyboard"];
          }

          [v20 addObject:{@"KeyboardAssistant", v36}];
          [v20 addObject:@"KeyboardAllowPaddle"];
          [v20 addObject:@"GesturesEnabled"];
          goto LABEL_27;
        }

LABEL_19:
        [v20 addObject:{@"KeyboardPrediction", v36}];
        if (v41)
        {
          [v20 addObject:@"KeyboardInlineCompletion"];
        }

        goto LABEL_21;
      }
    }

    else if (!v16)
    {
      goto LABEL_13;
    }

    [v20 addObject:{@"Dictation", a8}];
    if (!v17)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if ([v38 isEqualToString:@"emoji"])
  {
    v20 = [MEMORY[0x277CBEB18] array];
    goto LABEL_27;
  }

  v20 = [a6 mutableCopy];
  if (UIKeyboardCheckSpellingPossibleForInputMode())
  {
    if (v16)
    {
      goto LABEL_55;
    }
  }

  else
  {
    [v20 removeObject:@"KeyboardCheckSpelling"];
    if (v16)
    {
LABEL_55:
      if (v17)
      {
        goto LABEL_56;
      }

      goto LABEL_60;
    }
  }

  [v20 removeObject:{@"Dictation", a8}];
  if (v17)
  {
LABEL_56:
    if (v41)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_60:
  [v20 removeObject:{@"KeyboardPrediction", v36}];
LABEL_61:
  [v20 removeObject:{@"KeyboardInlineCompletion", v36}];
LABEL_62:
  if ((obj & 1) == 0)
  {
    [v20 removeObject:@"RivenKeyboard"];
  }

  if (v18)
  {
    [v20 removeObject:@"KeyboardContinuousPathEnabled"];
  }

  else if (!v44)
  {
    goto LABEL_27;
  }

  [v20 removeObject:{@"KeyboardContinuousPathDeleteWholeWord", v36}];
LABEL_27:
  v21 = [MEMORY[0x277CBEB18] array];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v22 = [v20 countByEnumeratingWithState:&v54 objects:v61 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v55;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v55 != v24)
        {
          objc_enumerationMutation(v20);
        }

        v26 = *(*(&v54 + 1) + 8 * i);
        if ([v26 hasPrefix:@"!"])
        {
          [v21 addObject:v26];
          [v21 addObject:{objc_msgSend(v26, "substringFromIndex:", 1)}];
        }
      }

      v23 = [v20 countByEnumeratingWithState:&v54 objects:v61 count:16];
    }

    while (v23);
  }

  [v20 removeObjectsInArray:v21];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obja = [v14 objectForKey:@"AdditionalPreferencesPlist"];
  v45 = [obja countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (v45)
  {
    v42 = *v51;
    do
    {
      for (j = 0; j != v45; ++j)
      {
        if (*v51 != v42)
        {
          objc_enumerationMutation(obja);
        }

        v28 = [(KSKeyboardController *)self loadSpecifiersFromPlistName:*(*(&v50 + 1) + 8 * j) target:self];
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v29 = [v28 countByEnumeratingWithState:&v46 objects:v59 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v47;
          do
          {
            for (k = 0; k != v30; ++k)
            {
              if (*v47 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v33 = *(*(&v46 + 1) + 8 * k);
              v34 = [v33 identifier];
              [v20 addObject:v34];
              if (([a7 containsObject:v34] & 1) == 0)
              {
                [a5 addObject:v33];
                [a7 addObject:v34];
              }
            }

            v30 = [v28 countByEnumeratingWithState:&v46 objects:v59 count:16];
          }

          while (v30);
        }
      }

      v45 = [obja countByEnumeratingWithState:&v50 objects:v60 count:16];
    }

    while (v45);
  }

  [v37 setObject:v20 forKey:v38];
  v35 = *MEMORY[0x277D85DE8];
}

- (id)mergePreferences:(id)a3 inputModesToPreferences:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __65__KSKeyboardController_mergePreferences_inputModesToPreferences___block_invoke;
  v23[3] = &unk_2797F9D58;
  v23[4] = a3;
  v6 = [a3 indexesOfObjectsPassingTest:v23];
  if ([v6 count])
  {
    v7 = [a3 mutableCopy];
    v8 = [MEMORY[0x277CBEB18] array];
    v9 = [a3 objectsAtIndexes:v6];
    v10 = [MEMORY[0x277CBEB58] set];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          [v10 addObjectsFromArray:v15];
          [v8 addObjectsFromArray:{objc_msgSend(a4, "objectForKey:", v15)}];
        }

        v12 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v12);
    }

    [a4 removeObjectsForKeys:v9];
    [v7 removeObjectsAtIndexes:v6];
    v16 = [v10 allObjects];
    [v7 insertObject:v16 atIndex:0];
    [a4 setObject:v8 forKey:v16];
  }

  else
  {
    v7 = a3;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t __65__KSKeyboardController_mergePreferences_inputModesToPreferences___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if ([a2 count] > 3)
  {
    return 1;
  }

  v7 = [MEMORY[0x277CBEB98] setWithArray:a2];
  v8 = [v7 isEqualToSet:{objc_msgSend(MEMORY[0x277CBEB98], "setWithArray:", &unk_2867A4B60)}];
  if (v8)
  {
    return v8 ^ 1u;
  }

  for (i = a3 + 1; i < [*(a1 + 32) count]; ++i)
  {
    if ([objc_msgSend(MEMORY[0x277CBEB98] setWithArray:{objc_msgSend(*(a1 + 32), "objectAtIndex:", i)), "intersectsSet:", v7}])
    {
      return v8 ^ 1u;
    }
  }

  return 0;
}

- (id)addAllPreferencesToArray:(id)a3 mapPreferenceToInputMode:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v17 = [a3 valueForKey:@"identifier"];
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [v12 normalizedIdentifier];
        Variant = TIInputModeGetVariant();
        if (!Variant)
        {
          Variant = TIInputModeGetBaseLanguage();
        }

        if (![v5 member:Variant])
        {
          [v5 addObject:Variant];
          [v6 addObject:v13];
          [(KSKeyboardController *)self loadPreferenceForInputModeIdentifier:v13 keyboardInputMode:v12 addNewPreferencesToArray:a3 defaultPreferenceIdentifiers:v17 additionalPreferenceIdentifiers:v4 mapPreferenceToInputMode:a4];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)groupPreferences:(id)a3 forMapping:(id)a4 inputModes:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(a3);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        v13 = [v12 identifier];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __63__KSKeyboardController_groupPreferences_forMapping_inputModes___block_invoke;
        v33[3] = &unk_2797F9D80;
        v33[4] = v13;
        v14 = [a4 keysOfEntriesPassingTest:v33];
        if ([v14 count])
        {
          v15 = [v7 objectForKeyedSubscript:v14];
          if (!v15)
          {
            v15 = [MEMORY[0x277CBEB18] array];
            [v7 setObject:v15 forKey:v14];
          }

          [v15 addObject:v12];
        }
      }

      v9 = [a3 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v9);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [v7 allKeys];
  v16 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v29 + 1) + 8 * j);
        v21 = [v20 allObjects];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __63__KSKeyboardController_groupPreferences_forMapping_inputModes___block_invoke_2;
        v28[3] = &unk_2797F9DA8;
        v28[4] = a5;
        v22 = [v21 sortedArrayUsingComparator:v28];
        v23 = [v7 objectForKey:v20];
        [v7 removeObjectForKey:v20];
        [v7 setObject:v23 forKey:v22];
      }

      v17 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v17);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)sortPreferencesKeysByInputModeOrderAndCount:(id)a3 inputModes:(id)a4
{
  v5 = [a3 allKeys];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__KSKeyboardController_sortPreferencesKeysByInputModeOrderAndCount_inputModes___block_invoke;
  v7[3] = &unk_2797F9DD0;
  v7[4] = a4;
  return [v5 sortedArrayUsingComparator:v7];
}

int64_t __79__KSKeyboardController_sortPreferencesKeysByInputModeOrderAndCount_inputModes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = [a2 count];
  v7 = [a3 count];
  if (v6 > v7)
  {
    return -1;
  }

  if (v6 < v7)
  {
    return 1;
  }

  if (!v6)
  {
    return 0;
  }

  v9 = *(a1 + 32);
  v10 = [a2 objectAtIndex:0];
  v11 = [a3 objectAtIndex:0];

  return [KSKeyboardController compareUsingOrderInArray:v9 withFirst:v10 second:v11];
}

- (id)loadAllKeyboardPreferences
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(KSKeyboardController *)self loadSpecifiersFromPlistName:@"Preferences_base" target:self];
  if (v3 && (v4 = v3, v5 = [MEMORY[0x277CBEB38] dictionary], v6 = -[KSKeyboardController addAllPreferencesToArray:mapPreferenceToInputMode:](self, "addAllPreferencesToArray:mapPreferenceToInputMode:", v4, v5), v7 = -[KSKeyboardController groupPreferences:forMapping:inputModes:](self, "groupPreferences:forMapping:inputModes:", v4, v5, v6), objc_msgSend(objc_msgSend(v7, "allKeys"), "count")))
  {
    v8 = [(KSKeyboardController *)self sortPreferencesKeysByInputModeOrderAndCount:v7 inputModes:v6];
    if (![v8 count])
    {
      [KSKeyboardController loadAllKeyboardPreferences];
    }

    v9 = [(KSKeyboardController *)self mergePreferences:v8 inputModesToPreferences:v7];
    if (![v9 count])
    {
      [KSKeyboardController loadAllKeyboardPreferences];
    }

    v25 = [MEMORY[0x277CBEB18] array];
    v23 = [v8 count];
    v22 = [v9 count];
    v10 = [v6 count];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v27;
      obj = v9;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          v17 = [v7 objectForKey:v16];
          if (![v17 count])
          {
            [KSKeyboardController loadAllKeyboardPreferences];
          }

          if (v10 >= 2)
          {
            if (v13)
            {
              v18 = [KSKeyboardController localizedListForInputModes:v16 forDictation:0 duplicatedBaseLanguages:0];
              goto LABEL_17;
            }

            if (v23 == v22)
            {
              v18 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"All Keyboards", &stru_28679E3A8, @"Keyboard"}];
LABEL_17:
              v19 = v18;
            }

            else
            {
              v19 = 0;
            }

            v13 = 1;
            goto LABEL_20;
          }

          v19 = 0;
LABEL_20:
          [KSKeyboardController localizeAndSortPreferencesArray:v17];
          [v17 insertObject:objc_msgSend(MEMORY[0x277D3FAD8] atIndex:{"groupSpecifierWithID:name:", @"KEYBOARD_TITLE", v19), 0}];
          if ([v16 count] == 1)
          {
            [v16 firstObject];
            if ([TIInputModeGetVariant() isEqualToString:@"Pinyin"])
            {
              [(KSKeyboardController *)self removeShuangpinPreferenceIfNotApplicableForGroup:v17];
              [(KSKeyboardController *)self removeDialectPreferenceIfNotApplicableForGroup:v17];
              [(KSKeyboardController *)self moveSpaceConfirmationPreferenceToEndAndAddFooterTextForGroup:v17];
            }
          }

          [(KSKeyboardController *)self addFooterTextForDialectSpecifierForGroup:v17];
          [(KSKeyboardController *)self disableLockedDownPreferencesForGroup:v17];
          [(KSKeyboardController *)self movePeriodShortcutPreferenceToEndAndAddFooterTextForGroup:v17];
          [(KSKeyboardController *)self moveEnableDictationPreferenceToEndAndAddFooterTextForGroup:v17];
          [v25 addObjectsFromArray:v17];
        }

        v12 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v25 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v25;
}

- (void)addHardwareKeyboardAndShortcuts:(id)a3
{
  v5 = [a3 specifierForID:@"KEYBOARDS"];
  if (v5 && GSEventIsHardwareKeyboardAttached())
  {
    [a3 ps_insertObject:-[KSKeyboardController hardwareKeyboardSpecifier](self afterObject:{"hardwareKeyboardSpecifier"), v5}];
  }

  v6 = [a3 specifierForID:@"Hardware Keyboard"];
  v7 = [(KSKeyboardController *)self openShortcutsSpecifiers];
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  [a3 ps_insertObjectsFromArray:v7 afterObject:v8];
  v9 = [(NSArray *)v7 lastObject];
  if (v9)
  {
    v5 = v9;
  }

  if ([(KSKeyboardController *)self _supportsReachableKeyboard])
  {
    v10 = [(KSKeyboardController *)self reachableKeyboardSpecifier];
    [a3 ps_insertObject:v10 afterObject:v5];
    v5 = v10;
  }

  if ([(KSKeyboardController *)self _supportsProKeyboard])
  {
    v11 = [(KSKeyboardController *)self proKeyboardSpecifier];

    [a3 ps_insertObject:v11 afterObject:v5];
  }
}

- (void)addDictationItems:(id)a3
{
  v5 = [objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
  v6 = [a3 specifierForID:@"Dictation"];
  if ([v5 count] == 1)
  {
    v7 = [MEMORY[0x277D6F380] sharedInputModeController];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v7 defaultDictationLanguagesForKeyboardLanguage:{objc_msgSend(v5, "firstObject")}];
    }
  }

  v8 = [v5 count];
  v9 = MEMORY[0x277D3FFB8];
  if (v8 < 2)
  {
    [(KSKeyboardController *)self setDictationLanguageSpecifier:0];
  }

  else
  {
    v10 = MEMORY[0x277D3FAD8];
    v11 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"Dictation Languages", &stru_28679E3A8, @"Dictation"}];
    -[KSKeyboardController setDictationLanguageSpecifier:](self, "setDictationLanguageSpecifier:", [v10 preferenceSpecifierNamed:v11 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0]);
    [(PSSpecifier *)[(KSKeyboardController *)self dictationLanguageSpecifier] setProperty:@"DictationSettings" forKey:*v9];
    if (v6 && DictationIsEnabled())
    {
      [a3 ps_insertObject:-[KSKeyboardController dictationLanguageSpecifier](self afterObject:{"dictationLanguageSpecifier"), v6}];
    }
  }

  if (_os_feature_enabled_impl())
  {
    -[KSKeyboardController setDictationAutoPunctuationSpecifier:](self, "setDictationAutoPunctuationSpecifier:", [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] target:"bundleForClass:" set:objc_opt_class()) get:"localizedStringForKey:value:table:" detail:@"Auto-Punctuation" cell:&stru_28679E3A8 edit:{@"Dictation", self, sel_setAutoPunctuation_specifier_, sel_autoPunctuation_, 0, 6, 0}]);
    [(PSSpecifier *)[(KSKeyboardController *)self dictationAutoPunctuationSpecifier] setProperty:@"AutoPunctuationSetting" forKey:*v9];
    if (+[DictationFooterView dictationAutoPunctuationText])
    {
      [a3 ps_insertObject:-[KSKeyboardController dictationAutoPunctuationSpecifier](self afterObject:{"dictationAutoPunctuationSpecifier"), v6}];
    }
  }

  if (v6 && DictationIsEnabled() && GSEventIsHardwareKeyboardAttached())
  {
    [(KSKeyboardController *)self setDictationHardwareShortcutSpecifier:[(KSKeyboardController *)self dictationHWShortcutSpecifier]];
    if ([(KSKeyboardController *)self dictationLanguageSpecifier])
    {
      v12 = [(KSKeyboardController *)self dictationHardwareShortcutSpecifier];
      v13 = [(KSKeyboardController *)self dictationLanguageSpecifier];
      v14 = a3;
      v15 = v12;
    }

    else
    {
      v16 = [(KSKeyboardController *)self dictationAutoPunctuationSpecifier];
      v17 = [(KSKeyboardController *)self dictationHardwareShortcutSpecifier];
      if (v16)
      {
        v13 = [(KSKeyboardController *)self dictationAutoPunctuationSpecifier];
        v14 = a3;
        v15 = v17;
      }

      else
      {
        v14 = a3;
        v15 = v17;
        v13 = v6;
      }
    }

    [v14 ps_insertObject:v15 afterObject:v13];
  }
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  if (!*(&self->super.super.super.super.super.super.isa + v3))
  {
    v4 = [(KSKeyboardController *)self loadSpecifiersFromPlistName:@"Preferences" target:self];
    if (v4)
    {
      v5 = v4;
      v6 = [(KSKeyboardController *)self loadAllKeyboardPreferences];
      if (v6)
      {
        [v5 addObjectsFromArray:v6];
      }

      if ((MGGetBoolAnswer() & 1) == 0 && !CFPreferencesGetAppBooleanValue(@"force-international", @"com.apple.keyboard.preferences", 0))
      {
        [v5 removeObject:{objc_msgSend(v5, "specifierForID:", @"KEYBOARDS"}];
      }

      [(KSKeyboardController *)self addHardwareKeyboardAndShortcuts:v5];
      [(KSKeyboardController *)self addEnabledExtensionSpecifiersToArray:v5];
      [(KSKeyboardController *)self addFooterTextForStickers:v5];
      [(KSKeyboardController *)self addDictationItems:v5];
      -[KSKeyboardController setDeleteWordSpecifier:](self, "setDeleteWordSpecifier:", [v5 specifierForID:@"KeyboardContinuousPathDeleteWholeWord"]);
      v7 = [v5 specifierForID:@"KeyboardContinuousPathEnabled"];
      if (!v7 || ([-[KSKeyboardController readCPPreferenceValue:](self readCPPreferenceValue:{v7), "BOOLValue"}] & 1) == 0)
      {
        -[KSKeyboardController setDeleteWordSpecifierIndex:](self, "setDeleteWordSpecifierIndex:", [v5 indexOfObject:{-[KSKeyboardController deleteWordSpecifier](self, "deleteWordSpecifier")}]);
        [v5 removeObject:{-[KSKeyboardController deleteWordSpecifier](self, "deleteWordSpecifier")}];
      }

      -[KSKeyboardController setInlineCompletionSpecifier:](self, "setInlineCompletionSpecifier:", [v5 specifierForID:@"KeyboardInlineCompletion"]);
      v8 = [v5 specifierForID:@"KeyboardPrediction"];
      if (!v8 || ([-[KSKeyboardController readPredictionPreferenceValue:](self readPredictionPreferenceValue:{v8), "BOOLValue"}] & 1) == 0)
      {
        -[KSKeyboardController setInlineCompletionSpecifierIndex:](self, "setInlineCompletionSpecifierIndex:", [v5 indexOfObject:{-[KSKeyboardController inlineCompletionSpecifier](self, "inlineCompletionSpecifier")}]);
        [v5 removeObject:{-[KSKeyboardController inlineCompletionSpecifier](self, "inlineCompletionSpecifier")}];
      }

      *(&self->super.super.super.super.super.super.isa + v3) = v5;
      -[KSKeyboardController setTitle:](self, "setTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"KEYBOARDS", &stru_28679E3A8, @"Keyboard"}]);
      [(KSKeyboardController *)self setSpecifierID:@"Keyboard"];
      self->_needsReloadSpecifiers = 0;
    }
  }

  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)addFooterTextForStickers:(id)a3
{
  [MEMORY[0x277CBEB18] array];
  v4 = [a3 specifierForID:@"ShowStickers"];
  v5 = [a3 indexOfSpecifierWithID:@"ShowStickers"];
  if (v4 && v5 != 0x7FFFFFFFFFFFFFFFLL && v5)
  {
    v6 = [a3 objectAtIndex:v5 - 1];
    v7 = [MEMORY[0x277D3FAD8] specifierWithSpecifier:v6];
    [v7 setProperty:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] forKey:{"bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"SHOW_STICKERS_DESCRIPTION", &stru_28679E3A8, @"Keyboard", *MEMORY[0x277D3FF88]}];
    [a3 ps_insertObject:v7 afterObject:v6];

    [a3 removeObject:v6];
  }
}

- (void)addEnabledExtensionSpecifiersToArray:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [objc_msgSend(MEMORY[0x277D75688] sharedInputModeController];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [a3 addObjectsFromArray:{+[KSAddExtensionKeyboardController specifiersForExtensionInputMode:parentSpecifier:](KSAddExtensionKeyboardController, "specifiersForExtensionInputMode:parentSpecifier:", *(*(&v11 + 1) + 8 * v9++), -[KSKeyboardController specifier](self, "specifier"))}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)autoPunctuation:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [objc_msgSend(MEMORY[0x277CEF368] sharedPreferences];

  return [v3 numberWithBool:v4];
}

- (void)setAutoPunctuation:(id)a3 specifier:(id)a4
{
  v5 = [MEMORY[0x277CEF368] sharedPreferences];
  v6 = [a3 BOOLValue];

  [v5 setDictationAutoPunctuationEnabled:v6];
}

- (id)hardwareKeyboardSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"Hardware Keyboard", &stru_28679E3A8, @"Keyboard"}];
  v5 = [v3 preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
  [v5 setProperty:@"Hardware Keyboard" forKey:*MEMORY[0x277D3FFB8]];
  return v5;
}

- (id)dictationHWShortcutSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_SHORTCUT", &stru_28679E3A8, @"Dictation"}];
  v5 = [v3 preferenceSpecifierNamed:v4 target:self set:0 get:sel_dictationShortcutSubtitle_ detail:objc_opt_class() cell:2 edit:0];
  [v5 setProperty:@"DictationHWShortcut" forKey:*MEMORY[0x277D3FFB8]];
  return v5;
}

- (void)dictationShortcutSubtitle:(id)a3
{
  v5 = +[KSDictationShortcutController attributedTitleForDictationShortcutValue:](KSDictationShortcutController, "attributedTitleForDictationShortcutValue:", [objc_msgSend(objc_msgSend(MEMORY[0x277D6F470] "sharedPreferencesController")]);
  v6 = [-[KSKeyboardController cachedCellForSpecifier:](self cachedCellForSpecifier:{a3), "valueLabel"}];

  [v6 setAttributedText:v5];
}

- (void)hardwareKeyboardAvailabilityChanged
{
  if (GSEventIsHardwareKeyboardAttached())
  {
    if (![(KSKeyboardController *)self specifierForID:@"HardwareKeyboard"])
    {
      [(KSKeyboardController *)self insertSpecifier:[(KSKeyboardController *)self hardwareKeyboardSpecifier] afterSpecifierID:@"KEYBOARDS" animated:1];
    }

    if (![(KSKeyboardController *)self dictationHardwareShortcutSpecifier])
    {
      [(KSKeyboardController *)self setDictationHardwareShortcutSpecifier:[(KSKeyboardController *)self dictationHWShortcutSpecifier]];
    }

    v3 = [(KSKeyboardController *)self specifierForID:@"Dictation"];
    if ([(KSKeyboardController *)self dictationLanguageSpecifier])
    {
      v4 = [(KSKeyboardController *)self dictationLanguageSpecifier];
    }

    else
    {
      if (![(KSKeyboardController *)self dictationAutoPunctuationSpecifier])
      {
LABEL_15:
        v6 = [(KSKeyboardController *)self dictationHardwareShortcutSpecifier];

        [(KSKeyboardController *)self insertSpecifier:v6 afterSpecifier:v3 animated:1];
        return;
      }

      v4 = [(KSKeyboardController *)self dictationAutoPunctuationSpecifier];
    }

    v3 = v4;
    goto LABEL_15;
  }

  [(KSKeyboardController *)self removeSpecifierID:@"HardwareKeyboard" animated:1];
  if ([(KSKeyboardController *)self dictationHardwareShortcutSpecifier])
  {
    v5 = [(KSKeyboardController *)self dictationHardwareShortcutSpecifier];

    [(KSKeyboardController *)self removeSpecifier:v5 animated:1];
  }
}

- (id)getReachableKeybordSetting:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [objc_msgSend(MEMORY[0x277D756A0] sharedPreferencesController];

  return [v3 numberWithInteger:v4];
}

- (void)setReachableKeyboardSetting:(id)a3 specifier:(id)a4
{
  v5 = [MEMORY[0x277D756A0] sharedPreferencesController];
  v6 = [a3 integerValue];

  [v5 setHandBias:v6];
}

- (id)selectSpecifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = KSKeyboardController;
  v4 = [(KSKeyboardController *)&v6 selectSpecifier:?];
  [KSKeyboardController emitNavigationEventForSpecifier:a3 viewController:v4];
  return v4;
}

- (id)reachableKeyboardSpecifier
{
  v8[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D3FAD8];
  v4 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"REACHABLE_KEYBOARD", &stru_28679E3A8, @"Keyboard"}];
  v5 = [v3 preferenceSpecifierNamed:v4 target:self set:sel_setReachableKeyboardSetting_specifier_ get:sel_getReachableKeybordSetting_ detail:objc_opt_class() cell:2 edit:0];
  [v5 setProperty:@"ReachableKeyboard" forKey:*MEMORY[0x277D3FFB8]];
  [v5 setProperty:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] forKey:{"bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"REACHABLE_EXPLANATION", &stru_28679E3A8, @"Keyboard", *MEMORY[0x277D40118]}];
  v8[0] = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"REACHABLE_OPTION_NONE", &stru_28679E3A8, @"Keyboard"}];
  v8[1] = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"REACHABLE_OPTION_LEFT", &stru_28679E3A8, @"Keyboard"}];
  v8[2] = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"REACHABLE_OPTION_RIGHT", &stru_28679E3A8, @"Keyboard"}];
  [v5 setValues:&unk_2867A4B78 titles:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v8, 3)}];
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)_supportsProKeyboard
{
  if (TIGetToggleFourOrFiveRowKeyboardValue_onceToken != -1)
  {
    [KSKeyboardController _supportsProKeyboard];
  }

  v2 = [objc_msgSend(objc_msgSend(MEMORY[0x277D6F470] "sharedPreferencesController")];
  if (v2)
  {
    v3 = [MEMORY[0x277D75418] currentDevice];

    LOBYTE(v2) = [v3 sf_isiPad];
  }

  return v2;
}

- (id)getProKeyboardSetting:(id)a3
{
  v3 = [MEMORY[0x277D756A0] sharedPreferencesController];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return MEMORY[0x277CBEC28];
  }

  v4 = MEMORY[0x277CCABB0];
  v5 = [v3 enableProKeyboard];

  return [v4 numberWithBool:v5];
}

- (void)setProKeyboardSetting:(id)a3 specifier:(id)a4
{
  v5 = [MEMORY[0x277D756A0] sharedPreferencesController];
  if (objc_opt_respondsToSelector())
  {
    v6 = [a3 BOOLValue];

    [v5 setEnableProKeyboard:v6];
  }
}

- (NSArray)openShortcutsSpecifiers
{
  if (self->_openShortcutsSpecifiers || (v3 = MEMORY[0x277D3FAD8], v4 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"USER_DICTIONARY", &stru_28679E3A8, @"Keyboard"}], v5 = objc_msgSend(v3, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", v4, 0, 0, 0, objc_opt_class(), 2, 0), objc_msgSend(v5, "setProperty:forKey:", @"USER_DICTIONARY", *MEMORY[0x277D3FFB8]), v6 = objc_alloc(MEMORY[0x277CBEA60]), result = objc_msgSend(v6, "initWithObjects:", objc_msgSend(MEMORY[0x277D3FAD8], "groupSpecifierWithName:", &stru_28679E3A8), v5, 0), (self->_openShortcutsSpecifiers = result) != 0))
  {
    v8 = [objc_msgSend(getMCProfileConnectionClass() "sharedConnection")];
    v9 = [(NSArray *)self->_openShortcutsSpecifiers lastObject];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    [v9 setProperty:v10 forKey:*MEMORY[0x277D3FF38]];
    return self->_openShortcutsSpecifiers;
  }

  return result;
}

- (void)init
{
  dlerror();
  v0 = abort_report_np();
  [KSKeyboardController readAutocorrectionPreferenceValue:v0];
}

- (void)feedbackFeatureEnabled
{
  v6 = *MEMORY[0x277D85DE8];
  *buf = 138412290;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: RC_SEED_BUILD: 0 enabled: %d", "-[KSKeyboardController feedbackFeatureEnabled]", @"KeyboardAutocorrection", a1 & 1];
  _os_log_debug_impl(&dword_255828000, a2, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end