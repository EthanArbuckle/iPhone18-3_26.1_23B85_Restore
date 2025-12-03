@interface KSKeyboardController
+ (BOOL)_isLowStorageForOnDeviceDictationAsset;
+ (id)localizedDisplayNameForInputMode:(id)mode forDictation:(BOOL)dictation;
+ (id)localizedStringForGeneralKeyboardSpecifier;
+ (id)localizedStringForKeyboardController;
+ (id)singleActiveDisabledDictationLanguage;
+ (int64_t)compareUsingOrderInArray:(id)array withFirst:(id)first second:(id)second;
+ (void)emitNavigationEventForSpecifier:(id)specifier viewController:(id)controller;
+ (void)localizeAndSortPreferencesArray:(id)array;
- (BOOL)_supportsProKeyboard;
- (BOOL)feedbackFeatureEnabled;
- (KSKeyboardController)init;
- (NSArray)openShortcutsSpecifiers;
- (id)addAllPreferencesToArray:(id)array mapPreferenceToInputMode:(id)mode;
- (id)autoPunctuation:(id)punctuation;
- (id)bundle;
- (id)dictationEnabled:(id)enabled;
- (id)dictationHWShortcutSpecifier;
- (id)getProKeyboardSetting:(id)setting;
- (id)getReachableKeybordSetting:(id)setting;
- (id)groupPreferences:(id)preferences forMapping:(id)mapping inputModes:(id)modes;
- (id)hardwareKeyboardSpecifier;
- (id)loadAllKeyboardPreferences;
- (id)lowStorageOnDeviceAssetStringWithLinkString:(id)string;
- (id)mergePreferences:(id)preferences inputModesToPreferences:(id)toPreferences;
- (id)pinyinDialect:(id)dialect;
- (id)reachableKeyboardSpecifier;
- (id)readAutocorrectionPreferenceValue:(id)value;
- (id)readCPDeleteWordPreferenceValue:(id)value;
- (id)readCPPreferenceValue:(id)value;
- (id)readCheckSpellingPreferenceValue:(id)value;
- (id)readKeyboardAllowPaddlePreferenceValue:(id)value;
- (id)readKeyboardInlineCompletionPreferenceValue:(id)value;
- (id)readKeyboardMathExpressionCompletionPreferenceValue:(id)value;
- (id)readPredictionPreferenceValue:(id)value;
- (id)readPreferenceValue:(id)value;
- (id)readSmartTypingPreferenceValue:(id)value;
- (id)selectSpecifier:(id)specifier;
- (id)shuangpinType:(id)type;
- (id)smartFullwidthSpace:(id)space;
- (id)sortPreferencesKeysByInputModeOrderAndCount:(id)count inputModes:(id)modes;
- (id)specifiers;
- (id)wubiStandard:(id)standard;
- (void)_dismissConfirmationSheet;
- (void)addDictationItems:(id)items;
- (void)addEnabledExtensionSpecifiersToArray:(id)array;
- (void)addFooterTextForDialectSpecifierForGroup:(id)group;
- (void)addFooterTextForStickers:(id)stickers;
- (void)addHardwareKeyboardAndShortcuts:(id)shortcuts;
- (void)dealloc;
- (void)dictationDisabledCancelled:(id)cancelled;
- (void)dictationDisabledConfirmed:(id)confirmed;
- (void)dictationEnabledCancelled:(id)cancelled;
- (void)dictationEnabledConfirmed:(id)confirmed;
- (void)dictationShortcutSubtitle:(id)subtitle;
- (void)disableLockedDownPreferencesForGroup:(id)group;
- (void)emitNavigationEventForRootController;
- (void)feedbackFeatureEnabled;
- (void)hardwareKeyboardAvailabilityChanged;
- (void)init;
- (void)launchManageStorage:(id)storage;
- (void)loadPreferenceForInputModeIdentifier:(id)identifier keyboardInputMode:(id)mode addNewPreferencesToArray:(id)array defaultPreferenceIdentifiers:(id)identifiers additionalPreferenceIdentifiers:(id)preferenceIdentifiers mapPreferenceToInputMode:(id)inputMode;
- (void)managedKeyboardSettingsDidChange;
- (void)moveCharacterPreviewPreferenceToEndForGroup:(id)group;
- (void)moveEnableDictationPreferenceToEndAndAddFooterTextForGroup:(id)group;
- (void)movePeriodShortcutPreferenceToEndAndAddFooterTextForGroup:(id)group;
- (void)moveSpaceConfirmationPreferenceToEndAndAddFooterTextForGroup:(id)group;
- (void)offlineDictationStatusUpdated:(id)updated;
- (void)preferencesDidChange:(id)change;
- (void)presentPrivacySheet:(id)sheet;
- (void)removeDialectPreferenceIfNotApplicableForGroup:(id)group;
- (void)removeShuangpinPreferenceIfNotApplicableForGroup:(id)group;
- (void)setAutoPunctuation:(id)punctuation specifier:(id)specifier;
- (void)setAutocorrectionPreferenceValue:(id)value forSpecifier:(id)specifier;
- (void)setCheckSpellingPreferenceValue:(id)value forSpecifier:(id)specifier;
- (void)setDictationEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)setKeyboardAllowPaddlePreferenceValue:(id)value forSpecifier:(id)specifier;
- (void)setKeyboardPreferenceValue:(id)value forSpecifier:(id)specifier;
- (void)setPinyinDialect:(id)dialect specifier:(id)specifier;
- (void)setPredictionPreferenceValue:(id)value forSpecifier:(id)specifier;
- (void)setProKeyboardSetting:(id)setting specifier:(id)specifier;
- (void)setReachableKeyboardSetting:(id)setting specifier:(id)specifier;
- (void)setShuangpinType:(id)type specifier:(id)specifier;
- (void)setSmartFullwidthSpace:(id)space specifier:(id)specifier;
- (void)setSmartTypingPreferenceValue:(id)value forSpecifier:(id)specifier;
- (void)setWubiStandard:(id)standard specifier:(id)specifier;
- (void)showDictationDisabledDialogForSpecifier:(id)specifier;
- (void)showDictationEnableDialogForSpecifier:(id)specifier;
@end

@implementation KSKeyboardController

- (void)offlineDictationStatusUpdated:(id)updated
{
  [(KSKeyboardController *)self setOfflineStatusForLanguage:updated];

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

- (id)lowStorageOnDeviceAssetStringWithLinkString:(id)string
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCA940] set];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  array4 = [MEMORY[0x277CBEB18] array];
  mEMORY[0x277D6FFA8] = [MEMORY[0x277D6FFA8] sharedPreferencesController];
  v6 = [mEMORY[0x277D6FFA8] suggestedDictationModesForKeyboardLanguages:{objc_msgSend(objc_msgSend(MEMORY[0x277D75688], "sharedInputModeController"), "activeDictationSupportedInputModeIdentifiers")}];
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
            identifier = [v12 identifier];
            if (IsInstalled)
            {
              v17 = array2;
            }

            else
            {
              v17 = array3;
            }
          }

          else
          {
            identifier = [v12 identifier];
            v17 = array4;
          }

          [v17 addObject:identifier];
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

  result = [array3 count];
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
            [array addObject:v23];
          }
        }

        v20 = [v4 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v20);
    }

    result = [array3 count];
    if (result)
    {
      if ([array4 count] || v33 >= 2)
      {
        v25 = MEMORY[0x277CCACA8];
        v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        if ([array3 count] < 2)
        {
          v27 = @"DICTATION_ON_DEVICE_LOW_STORAGE_WITH_LANGUAGE";
        }

        else
        {
          v27 = [@"DICTATION_ON_DEVICE_LOW_STORAGE_WITH_LANGUAGE" stringByAppendingString:@"S"];
        }

        result = [v25 stringWithFormat:objc_msgSend(v26, "localizedStringForKey:value:table:", v27, &stru_28679E3A8, @"Keyboard", +[KSKeyboardController localizedListForInputModes:forDictation:duplicatedBaseLanguages:](KSKeyboardController, "localizedListForInputModes:forDictation:duplicatedBaseLanguages:", array3, 1, array)];
        goto LABEL_42;
      }

      if (v33 == 1)
      {
        result = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_ON_DEVICE_LOW_STORAGE", &stru_28679E3A8, @"Keyboard"}];
LABEL_42:
        if (string && result)
        {
          result = [result stringByAppendingFormat:@" %@", string];
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_preferencesDidChange_ name:*MEMORY[0x277D6FA08] object:0];
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__dismissConfirmationSheet name:*MEMORY[0x277D76660] object:0];
    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
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

    [defaultCenter3 addObserver:v2 selector:sel_managedKeyboardSettingsDidChange name:*v7 object:0];
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

- (id)readPreferenceValue:(id)value
{
  v5 = *MEMORY[0x277D3FFF0];
  if ([objc_msgSend(value propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"KanaFlick"}])
  {
    v6 = [objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
    v7 = MEMORY[0x277CCABB0];
    v8 = [v6 indexOfObjectPassingTest:&__block_literal_global_129] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (![objc_msgSend(value propertyForKey:{v5), "isEqualToString:", @"KanaLeftToRight"}])
    {
      v11.receiver = self;
      v11.super_class = KSKeyboardController;
      return [(KSKeyboardController *)&v11 readPreferenceValue:value];
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

- (void)setKeyboardPreferenceValue:(id)value forSpecifier:(id)specifier
{
  v7 = [specifier propertyForKey:*MEMORY[0x277D3FFF0]];
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
        [value BOOLValue];
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
      mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
      [mEMORY[0x277D6F470] setValue:value forPreferenceKey:*MEMORY[0x277D6F998]];
    }

    else if ([v7 isEqualToString:@"KeyboardAssistant"] && (objc_msgSend(value, "BOOLValue") & 1) == 0)
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
      [value BOOLValue];
      TIStatisticScalarSetBoolean();
    }

    if (([v7 isEqualToString:@"KeyboardAutocapitalization"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"KeyboardAutocorrection") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"KeyboardPeriodShortcut") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"KeyboardContinuousPathEnabled") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"KeyboardContinuousPathDeleteWholeWord") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"KeyboardPrediction") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"KeyboardInlineCompletion") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"SpaceConfirmation") & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"KeyboardCapsLock"))
    {
      [objc_msgSend(MEMORY[0x277D6F470] "sharedPreferencesController")];
    }

    else
    {
      [MEMORY[0x277D3FAB8] setPreferenceValue:value specifier:specifier];
    }
  }

  v16 = *MEMORY[0x277D3FFB8];
  if ([objc_msgSend(specifier propertyForKey:{*MEMORY[0x277D3FFB8]), "isEqualToString:", @"KeyboardContinuousPathEnabled"}])
  {
    v17 = [(KSKeyboardController *)self containsSpecifier:[(KSKeyboardController *)self deleteWordSpecifier]];
    if (![value BOOLValue] || (v17 & 1) != 0)
    {
      if (([value BOOLValue] & 1) == 0 && ((v17 ^ 1) & 1) == 0)
      {
        -[KSKeyboardController setDeleteWordSpecifierIndex:](self, "setDeleteWordSpecifierIndex:", [-[KSKeyboardController specifiers](self "specifiers")]);
        [(KSKeyboardController *)self removeSpecifier:[(KSKeyboardController *)self deleteWordSpecifier] animated:1];
      }
    }

    else
    {
      [(KSKeyboardController *)self deleteWordSpecifierIndex];
      deleteWordSpecifierIndex = [(KSKeyboardController *)self deleteWordSpecifierIndex];
      v19 = [-[KSKeyboardController specifiers](self "specifiers")];
      deleteWordSpecifier = [(KSKeyboardController *)self deleteWordSpecifier];
      if (deleteWordSpecifierIndex >= v19)
      {
        [(KSKeyboardController *)self addSpecifier:deleteWordSpecifier animated:1];
      }

      else
      {
        [(KSKeyboardController *)self insertSpecifier:deleteWordSpecifier atIndex:[(KSKeyboardController *)self deleteWordSpecifierIndex] animated:1];
      }
    }
  }

  if ([objc_msgSend(specifier propertyForKey:{v16), "isEqualToString:", @"KeyboardPrediction"}])
  {
    v21 = [(KSKeyboardController *)self containsSpecifier:[(KSKeyboardController *)self inlineCompletionSpecifier]];
    if (![value BOOLValue] || (v21 & 1) != 0)
    {
      if (([value BOOLValue] & 1) == 0 && ((v21 ^ 1) & 1) == 0)
      {
        -[KSKeyboardController setInlineCompletionSpecifierIndex:](self, "setInlineCompletionSpecifierIndex:", [-[KSKeyboardController specifiers](self "specifiers")]);
        [(KSKeyboardController *)self removeSpecifier:[(KSKeyboardController *)self inlineCompletionSpecifier] animated:1];
      }
    }

    else
    {
      [(KSKeyboardController *)self inlineCompletionSpecifierIndex];
      inlineCompletionSpecifierIndex = [(KSKeyboardController *)self inlineCompletionSpecifierIndex];
      v23 = [-[KSKeyboardController specifiers](self "specifiers")];
      inlineCompletionSpecifier = [(KSKeyboardController *)self inlineCompletionSpecifier];
      if (inlineCompletionSpecifierIndex >= v23)
      {
        [(KSKeyboardController *)self addSpecifier:inlineCompletionSpecifier animated:1];
      }

      else
      {
        [(KSKeyboardController *)self insertSpecifier:inlineCompletionSpecifier atIndex:[(KSKeyboardController *)self inlineCompletionSpecifierIndex] animated:1];
      }
    }
  }

  v25 = *MEMORY[0x277D3FEF8];
  if ([objc_msgSend(specifier propertyForKey:{*MEMORY[0x277D3FEF8]), "isEqualToString:", @"com.apple.InputModePreferences"}])
  {
    v26 = @"AppleKeyboardsInputModeChangedNotification";
  }

  else if ([objc_msgSend(specifier propertyForKey:{v25), "isEqualToString:", @"com.apple.keyboard.ContinuousPath"}])
  {
    v26 = @"AppleKeyboardsContinuousPathSettingsChangedNotification";
  }

  else if ([objc_msgSend(specifier propertyForKey:{v25), "isEqualToString:", @"com.apple.keyboard.predictive"}])
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

- (id)readAutocorrectionPreferenceValue:(id)value
{
  if (([objc_msgSend(value propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"KeyboardAutocorrection"}] & 1) == 0)
  {
    [KSKeyboardController readAutocorrectionPreferenceValue:];
  }

  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = *MEMORY[0x277D6F7C0];

  return [mEMORY[0x277D6F470] valueForPreferenceKey:v4];
}

- (id)readPredictionPreferenceValue:(id)value
{
  if (([objc_msgSend(value propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"KeyboardPrediction"}] & 1) == 0)
  {
    [KSKeyboardController readPredictionPreferenceValue:];
  }

  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = *MEMORY[0x277D6F928];

  return [mEMORY[0x277D6F470] valueForPreferenceKey:v4];
}

- (id)readKeyboardInlineCompletionPreferenceValue:(id)value
{
  if (([objc_msgSend(value propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"KeyboardInlineCompletion"}] & 1) == 0)
  {
    [KSKeyboardController readKeyboardInlineCompletionPreferenceValue:];
  }

  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = *MEMORY[0x277D6F878];

  return [mEMORY[0x277D6F470] valueForPreferenceKey:v4];
}

- (id)readKeyboardMathExpressionCompletionPreferenceValue:(id)value
{
  if (([objc_msgSend(value propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"KeyboardMathExpressionCompletion"}] & 1) == 0)
  {
    [KSKeyboardController readKeyboardMathExpressionCompletionPreferenceValue:];
  }

  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = *MEMORY[0x277D6F8A8];

  return [mEMORY[0x277D6F470] valueForPreferenceKey:v4];
}

- (id)readKeyboardAllowPaddlePreferenceValue:(id)value
{
  if (([objc_msgSend(value propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"KeyboardAllowPaddle"}] & 1) == 0)
  {
    [KSKeyboardController readKeyboardAllowPaddlePreferenceValue:];
  }

  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = *MEMORY[0x277D6F7A0];

  return [mEMORY[0x277D6F470] valueForPreferenceKey:v4];
}

- (id)readCheckSpellingPreferenceValue:(id)value
{
  if (([objc_msgSend(value propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"KeyboardCheckSpelling"}] & 1) == 0)
  {
    [KSKeyboardController readCheckSpellingPreferenceValue:];
  }

  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = *MEMORY[0x277D6F820];

  return [mEMORY[0x277D6F470] valueForPreferenceKey:v4];
}

- (id)readCPPreferenceValue:(id)value
{
  if (([objc_msgSend(value propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"KeyboardContinuousPathEnabled"}] & 1) == 0)
  {
    [KSKeyboardController readCPPreferenceValue:];
  }

  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = *MEMORY[0x277D6F848];

  return [mEMORY[0x277D6F470] valueForPreferenceKey:v4];
}

- (id)readCPDeleteWordPreferenceValue:(id)value
{
  if (([objc_msgSend(value propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"KeyboardContinuousPathDeleteWholeWord"}] & 1) == 0)
  {
    [KSKeyboardController readCPDeleteWordPreferenceValue:];
  }

  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = *MEMORY[0x277D6F830];

  return [mEMORY[0x277D6F470] valueForPreferenceKey:v4];
}

- (void)setAutocorrectionPreferenceValue:(id)value forSpecifier:(id)specifier
{
  if (([objc_msgSend(specifier propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"KeyboardAutocorrection"}] & 1) == 0)
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
    controller = [v6 controller];
    v8 = [controller shouldCompleteStudyWithPreferenceValue:{objc_msgSend(value, "BOOLValue")}];
    mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
    [mEMORY[0x277D6F470] setValue:value forPreferenceKey:*MEMORY[0x277D6F7C0]];
    if (v8)
    {
      [controller completeStudyWithFinalPreferenceValue:objc_msgSend(value parentController:{"BOOLValue"), self}];
    }
  }

  else
  {
LABEL_9:
    mEMORY[0x277D6F470]2 = [MEMORY[0x277D6F470] sharedPreferencesController];
    [mEMORY[0x277D6F470]2 setValue:value forPreferenceKey:*MEMORY[0x277D6F7C0]];
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

- (void)setPredictionPreferenceValue:(id)value forSpecifier:(id)specifier
{
  if (([objc_msgSend(specifier propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"KeyboardPrediction"}] & 1) == 0)
  {
    [KSKeyboardController setPredictionPreferenceValue:forSpecifier:];
  }

  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  [mEMORY[0x277D6F470] setValue:value forPreferenceKey:*MEMORY[0x277D6F928]];
  mEMORY[0x277D6F470]2 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v7 = *MEMORY[0x277D6F998];

  [mEMORY[0x277D6F470]2 setValue:value forPreferenceKey:v7];
}

- (void)setKeyboardAllowPaddlePreferenceValue:(id)value forSpecifier:(id)specifier
{
  if (([objc_msgSend(specifier propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"KeyboardAllowPaddle"}] & 1) == 0)
  {
    [KSKeyboardController setKeyboardAllowPaddlePreferenceValue:forSpecifier:];
  }

  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v6 = *MEMORY[0x277D6F7A0];

  [mEMORY[0x277D6F470] setValue:value forPreferenceKey:v6];
}

- (void)setCheckSpellingPreferenceValue:(id)value forSpecifier:(id)specifier
{
  if (([objc_msgSend(specifier propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"KeyboardCheckSpelling"}] & 1) == 0)
  {
    [KSKeyboardController setCheckSpellingPreferenceValue:forSpecifier:];
  }

  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v6 = *MEMORY[0x277D6F820];

  [mEMORY[0x277D6F470] setValue:value forPreferenceKey:v6];
}

- (id)readSmartTypingPreferenceValue:(id)value
{
  if (([objc_msgSend(value propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"SmartTyping"}] & 1) == 0)
  {
    [KSKeyboardController readSmartTypingPreferenceValue:];
  }

  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = *MEMORY[0x277D6FA88];

  return [mEMORY[0x277D6F470] valueForPreferenceKey:v4];
}

- (void)setSmartTypingPreferenceValue:(id)value forSpecifier:(id)specifier
{
  if (([objc_msgSend(specifier propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"SmartTyping"}] & 1) == 0)
  {
    [KSKeyboardController setSmartTypingPreferenceValue:forSpecifier:];
  }

  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  [mEMORY[0x277D6F470] setValue:value forPreferenceKey:*MEMORY[0x277D6FA88]];
  mEMORY[0x277D6F470]2 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v7 = *MEMORY[0x277D6FA78];

  [mEMORY[0x277D6F470]2 setValue:value forPreferenceKey:v7];
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

- (id)dictationEnabled:(id)enabled
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

- (void)showDictationEnableDialogForSpecifier:(id)specifier
{
  [specifier setConfirmationAction:sel_dictationEnabledConfirmed_];
  [specifier setConfirmationCancelAction:sel_dictationEnabledCancelled_];
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
  [specifier setupWithDictionary:{objc_msgSend(v14, "dictionaryWithObjectsAndKeys:", v9, v10, v15, v11, v12, *MEMORY[0x277D3FE88], objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_ENABLE_CANCEL", &stru_28679E3A8, @"Keyboard", *MEMORY[0x277D3FE78], 0)}];
  v13 = [objc_msgSend(MEMORY[0x277D75418] "currentDevice")];

  [(KSKeyboardController *)self showConfirmationViewForSpecifier:specifier useAlert:v13 swapAlertButtons:0];
}

- (void)showDictationDisabledDialogForSpecifier:(id)specifier
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
  [specifier setConfirmationAction:sel_dictationDisabledConfirmed_];
  [specifier setConfirmationCancelAction:sel_dictationDisabledCancelled_];
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
  [specifier setupWithDictionary:{objc_msgSend(v13, "dictionaryWithObjectsAndKeys:", v8, v9, v14, v10, v11, *MEMORY[0x277D3FE88], objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_DISABLE_CANCEL", &stru_28679E3A8, @"Keyboard", *MEMORY[0x277D3FE78], 0)}];
  v12 = [objc_msgSend(MEMORY[0x277D75418] "currentDevice")];

  [(KSKeyboardController *)self showConfirmationViewForSpecifier:specifier useAlert:v12 swapAlertButtons:0];
}

- (void)setDictationEnabled:(id)enabled forSpecifier:(id)specifier
{
  if ([enabled BOOLValue])
  {

    [(KSKeyboardController *)self showDictationEnableDialogForSpecifier:specifier];
  }

  else if ([objc_msgSend(MEMORY[0x277CEF368] "sharedPreferences")])
  {

    [(KSKeyboardController *)self showDictationDisabledDialogForSpecifier:specifier];
  }

  else
  {

    [(KSKeyboardController *)self dictationDisabledConfirmed:specifier];
  }
}

- (void)dictationEnabledConfirmed:(id)confirmed
{
  confirmedCopy = confirmed;
  v11[1] = *MEMORY[0x277D85DE8];
  [confirmed setConfirmationAction:0];
  [(PSSpecifier *)confirmedCopy setConfirmationCancelAction:0];
  singleActiveDisabledDictationLanguage = [objc_opt_class() singleActiveDisabledDictationLanguage];
  if (singleActiveDisabledDictationLanguage)
  {
    v6 = singleActiveDisabledDictationLanguage;
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
  dictationAutoPunctuationSpecifier = [(KSKeyboardController *)self dictationAutoPunctuationSpecifier];
  if (dictationAutoPunctuationSpecifier)
  {
    confirmedCopy = dictationAutoPunctuationSpecifier;
  }

  if ([(KSKeyboardController *)self dictationLanguageSpecifier])
  {
    [(KSKeyboardController *)self insertSpecifier:[(KSKeyboardController *)self dictationLanguageSpecifier] afterSpecifier:confirmedCopy animated:1];
    confirmedCopy = [(KSKeyboardController *)self dictationLanguageSpecifier];
  }

  if ([(KSKeyboardController *)self dictationHardwareShortcutSpecifier])
  {
    [(KSKeyboardController *)self insertSpecifier:[(KSKeyboardController *)self dictationHardwareShortcutSpecifier] afterSpecifier:confirmedCopy animated:1];
    [(KSKeyboardController *)self dictationHardwareShortcutSpecifier];
  }

  [(KSKeyboardController *)self reloadSpecifiers];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)dictationEnabledCancelled:(id)cancelled
{
  [objc_msgSend(cancelled propertyForKey:{*MEMORY[0x277D3FEB0]), "setOn:animated:", 0, 1}];
  [cancelled setConfirmationAction:0];

  [cancelled setConfirmationCancelAction:0];
}

- (void)dictationDisabledConfirmed:(id)confirmed
{
  [confirmed setConfirmationAction:0];
  [confirmed setConfirmationCancelAction:0];
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

- (void)dictationDisabledCancelled:(id)cancelled
{
  [objc_msgSend(cancelled propertyForKey:{*MEMORY[0x277D3FEB0]), "setOn:animated:", 1, 1}];
  [cancelled setConfirmationAction:0];

  [cancelled setConfirmationCancelAction:0];
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

- (void)presentPrivacySheet:(id)sheet
{
  v4 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.siri"];
  [v4 setPresentingViewController:self];

  [v4 present];
}

- (void)launchManageStorage:(id)storage
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=General&path=STORAGE_MGMT"];

  [defaultWorkspace openSensitiveURL:v4 withOptions:0 error:0];
}

- (id)shuangpinType:(id)type
{
  if (([objc_msgSend(type propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"ShuangpinType"}] & 1) == 0)
  {
    [KSKeyboardController shuangpinType:];
  }

  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = *MEMORY[0x277D6FA70];

  return [mEMORY[0x277D6F470] valueForPreferenceKey:v4];
}

- (void)setShuangpinType:(id)type specifier:(id)specifier
{
  if (([objc_msgSend(specifier propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"ShuangpinType"}] & 1) == 0)
  {
    [KSKeyboardController setShuangpinType:specifier:];
  }

  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  [mEMORY[0x277D6F470] setValue:type forPreferenceKey:*MEMORY[0x277D6FA70]];

  KSUpdateShuangpinSWLayout();
}

- (id)pinyinDialect:(id)dialect
{
  if (([objc_msgSend(dialect propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"PinyinDialect"}] & 1) == 0)
  {
    [KSKeyboardController pinyinDialect:];
  }

  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = *MEMORY[0x277D6FA00];

  return [mEMORY[0x277D6F470] valueForPreferenceKey:v4];
}

- (void)setPinyinDialect:(id)dialect specifier:(id)specifier
{
  if (([objc_msgSend(specifier propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"PinyinDialect"}] & 1) == 0)
  {
    [KSKeyboardController setPinyinDialect:specifier:];
  }

  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  [mEMORY[0x277D6F470] setValue:dialect forPreferenceKey:*MEMORY[0x277D6FA00]];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AppleKeyboardsPreferencesChangedNotification", 0, 0, 1u);
}

- (id)wubiStandard:(id)standard
{
  if (([objc_msgSend(standard propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"WubiStandard"}] & 1) == 0)
  {
    [KSKeyboardController wubiStandard:];
  }

  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = *MEMORY[0x277D6FD18];

  return [mEMORY[0x277D6F470] valueForPreferenceKey:v4];
}

- (void)setWubiStandard:(id)standard specifier:(id)specifier
{
  if (([objc_msgSend(specifier propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"WubiStandard"}] & 1) == 0)
  {
    [KSKeyboardController setWubiStandard:specifier:];
  }

  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v6 = *MEMORY[0x277D6FD18];

  [mEMORY[0x277D6F470] setValue:standard forPreferenceKey:v6];
}

- (id)smartFullwidthSpace:(id)space
{
  if (([objc_msgSend(space propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"SmartFullwidthSpace"}] & 1) == 0)
  {
    [KSKeyboardController smartFullwidthSpace:];
  }

  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = *MEMORY[0x277D6FA80];

  return [mEMORY[0x277D6F470] valueForPreferenceKey:v4];
}

- (void)setSmartFullwidthSpace:(id)space specifier:(id)specifier
{
  if (([objc_msgSend(specifier propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"SmartFullwidthSpace"}] & 1) == 0)
  {
    [KSKeyboardController setSmartFullwidthSpace:specifier:];
  }

  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v6 = *MEMORY[0x277D6FA80];

  [mEMORY[0x277D6F470] setValue:space forPreferenceKey:v6];
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
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    result = [v3 initWithKey:@"KEYBOARDS" table:@"Keyboard" locale:currentLocale bundleURL:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "bundleURL")}];
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

+ (void)emitNavigationEventForSpecifier:(id)specifier viewController:(id)controller
{
  v20[2] = *MEMORY[0x277D85DE8];
  v6 = objc_opt_class();
  if ([v6 isSubclassOfClass:objc_opt_class()])
  {
    identifier = [specifier identifier];
    if (identifier)
    {
      v8 = identifier;
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"settings-navigation://com.apple.Settings.General/Keyboard/%@", identifier];
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
        currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
        v17 = v13;
        v18 = [v14 initWithKey:v12 table:@"Keyboard" locale:currentLocale bundleURL:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "bundleURL")}];
        [controller pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.keyboard" title:v18 localizedNavigationComponents:objc_msgSend(MEMORY[0x277CBEA60] deepLink:{"arrayWithObjects:count:", &v17, 2), v10}];
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)preferencesDidChange:(id)change
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

- (void)disableLockedDownPreferencesForGroup:(id)group
{
  v4 = [group specifierForID:@"KeyboardAutocorrection"];
  if (v4)
  {
    v5 = v4;
    mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
    if ([mEMORY[0x277D6F470] isPreferenceKeyLockedDown:*MEMORY[0x277D6F7C0]])
    {
      [v5 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    }
  }

  v7 = [group specifierForID:@"KeyboardPrediction"];
  if (v7)
  {
    v8 = v7;
    mEMORY[0x277D6F470]2 = [MEMORY[0x277D6F470] sharedPreferencesController];
    if ([mEMORY[0x277D6F470]2 isPreferenceKeyLockedDown:*MEMORY[0x277D6F928]])
    {
      [v8 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    }

    [group specifierForID:@"KeyboardInlineCompletion"];
    mEMORY[0x277D6F470]3 = [MEMORY[0x277D6F470] sharedPreferencesController];
    if ([mEMORY[0x277D6F470]3 isPreferenceKeyLockedDown:*MEMORY[0x277D6F878]])
    {
      [v8 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    }

    [group specifierForID:@"KeyboardMathExpressionCompletion"];
    mEMORY[0x277D6F470]4 = [MEMORY[0x277D6F470] sharedPreferencesController];
    if ([mEMORY[0x277D6F470]4 isPreferenceKeyLockedDown:*MEMORY[0x277D6F8A8]])
    {
      [v8 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    }
  }

  else
  {
    [group specifierForID:@"KeyboardInlineCompletion"];
    [group specifierForID:@"KeyboardMathExpressionCompletion"];
  }

  v12 = [group specifierForID:@"KeyboardCheckSpelling"];
  if (v12)
  {
    v13 = v12;
    mEMORY[0x277D6F470]5 = [MEMORY[0x277D6F470] sharedPreferencesController];
    if ([mEMORY[0x277D6F470]5 isPreferenceKeyLockedDown:*MEMORY[0x277D6F820]])
    {
      [v13 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    }
  }

  v15 = [group specifierForID:@"SmartTyping"];
  if (v15)
  {
    v16 = v15;
    mEMORY[0x277D6F470]6 = [MEMORY[0x277D6F470] sharedPreferencesController];
    if ([mEMORY[0x277D6F470]6 isPreferenceKeyLockedDown:*MEMORY[0x277D6FA88]])
    {
      [v16 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    }
  }

  v18 = [group specifierForID:@"KeyboardContinuousPathEnabled"];
  if (v18)
  {
    v19 = v18;
    mEMORY[0x277D6F470]7 = [MEMORY[0x277D6F470] sharedPreferencesController];
    if ([mEMORY[0x277D6F470]7 isPreferenceKeyLockedDown:*MEMORY[0x277D6F848]])
    {
      v21 = *MEMORY[0x277D3FF38];
      v22 = MEMORY[0x277CBEC28];

      [v19 setProperty:v22 forKey:v21];
    }
  }
}

- (void)moveCharacterPreviewPreferenceToEndForGroup:(id)group
{
  v4 = [group specifierForID:@"KeyboardAllowPaddle"];
  if (v4)
  {
    v5 = v4;
    if ([group specifierForID:@"KEYBOARD_TITLE"])
    {
      [group removeObject:v5];

      [group addObject:v5];
    }
  }
}

- (void)movePeriodShortcutPreferenceToEndAndAddFooterTextForGroup:(id)group
{
  [(KSKeyboardController *)self moveCharacterPreviewPreferenceToEndForGroup:?];
  v4 = [group specifierForID:@"KeyboardPeriodShortcut"];
  if (v4)
  {
    v5 = v4;
    v6 = [group specifierForID:@"KEYBOARD_TITLE"];
    if (v6)
    {
      [v6 setProperty:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] forKey:{"bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"PERIOD_SHORTCUT_DESCRIPTION", &stru_28679E3A8, @"Keyboard", *MEMORY[0x277D3FF88]}];
      [group removeObject:v5];

      [group addObject:v5];
    }
  }
}

- (void)removeShuangpinPreferenceIfNotApplicableForGroup:(id)group
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  sharedInputModeController = [objc_msgSend(MEMORY[0x277D75688] sharedInputModeController];
  v5 = [sharedInputModeController countByEnumeratingWithState:&v12 objects:v16 count:16];
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
        objc_enumerationMutation(sharedInputModeController);
      }

      v9 = *(*(&v12 + 1) + 8 * v8);
      if ([TIInputModeGetVariant() isEqualToString:@"Shuangpin"])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [sharedInputModeController countByEnumeratingWithState:&v12 objects:v16 count:16];
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
    v10 = [group specifierForID:@"ShuangpinType"];
    if (v10)
    {
      [group removeObject:v10];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)removeDialectPreferenceIfNotApplicableForGroup:(id)group
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  sharedInputModeController = [objc_msgSend(MEMORY[0x277D75688] sharedInputModeController];
  v5 = [sharedInputModeController countByEnumeratingWithState:&v12 objects:v16 count:16];
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
        objc_enumerationMutation(sharedInputModeController);
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
        v6 = [sharedInputModeController countByEnumeratingWithState:&v12 objects:v16 count:16];
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
    v10 = [group specifierForID:@"PinyinDialect"];
    if (v10)
    {
      [group removeObject:v10];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addFooterTextForDialectSpecifierForGroup:(id)group
{
  v3 = [group specifierForID:@"PinyinDialect"];
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:SFLocalizableWAPIStringKeyForKey() value:&stru_28679E3A8 table:@"Preferences_pinyin"];
    v7 = *MEMORY[0x277D40118];

    [v4 setProperty:v6 forKey:v7];
  }
}

- (void)moveSpaceConfirmationPreferenceToEndAndAddFooterTextForGroup:(id)group
{
  v4 = [group specifierForID:@"KEYBOARD_TITLE"];
  if (v4)
  {
    v5 = v4;
    v6 = *MEMORY[0x277D3FF88];
    if (![v4 propertyForKey:*MEMORY[0x277D3FF88]])
    {
      v7 = [group specifierForID:@"SpaceConfirmation"];
      if (v7)
      {
        v8 = v7;
        [v5 setProperty:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] forKey:{"bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"SPACE_CONFIRMATION_EXPLANATION", &stru_28679E3A8, @"Keyboard", v6}];
        [group removeObject:v8];

        [group addObject:v8];
      }
    }
  }
}

- (void)moveEnableDictationPreferenceToEndAndAddFooterTextForGroup:(id)group
{
  v5 = [group specifierForID:@"Dictation"];
  if (v5)
  {
    v6 = v5;
    v7 = [group specifierForID:@"KEYBOARD_TITLE"];
    if (v7)
    {
      v8 = v7;
      v9 = [group specifierForID:@"KeyboardPeriodShortcut"];
      if (v9 | [group specifierForID:@"SpaceConfirmation"])
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
        [group addObject:v8];
      }

      [group removeObject:v6];
      [group addObject:v6];
      [v8 setTarget:self];
      v11 = *MEMORY[0x277D3FF48];

      [v8 setProperty:@"DictationFooterView" forKey:v11];
    }
  }
}

+ (void)localizeAndSortPreferencesArray:(id)array
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [array countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(array);
        }

        [*(*(&v9 + 1) + 8 * v7) setName:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", objc_msgSend(*(*(&v9 + 1) + 8 * v7), "name"), &stru_28679E3A8, @"Keyboard"}];
        ++v7;
      }

      while (v5 != v7);
      v5 = [array countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [array sortedArrayUsingComparator:&__block_literal_global_401];
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __56__KSKeyboardController_localizeAndSortPreferencesArray___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 name];
  v5 = [a3 name];

  return [v4 localizedStandardCompare:v5];
}

+ (id)localizedDisplayNameForInputMode:(id)mode forDictation:(BOOL)dictation
{
  if (dictation)
  {
    v5 = TUIDictationTitle();
    if ([v5 length] && !objc_msgSend(v5, "isEqualToString:", mode))
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
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v5 = [currentLocale displayNameForKey:*MEMORY[0x277CBE6C8] value:TIInputModeGetLanguageWithRegion()];
  }

  if ([objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")] && !objc_msgSend(v5, "length"))
  {
    +[KSKeyboardController localizedDisplayNameForInputMode:forDictation:];
  }

  return v5;
}

+ (int64_t)compareUsingOrderInArray:(id)array withFirst:(id)first second:(id)second
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [array countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(array);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 isEqualToString:first] && !objc_msgSend(v13, "isEqualToString:", second))
        {
          v11 = -1;
          goto LABEL_17;
        }

        if ([v13 isEqualToString:second] && !objc_msgSend(v13, "isEqualToString:", first))
        {
          goto LABEL_17;
        }

        if ([v13 isEqualToString:first] && (objc_msgSend(v13, "isEqualToString:", second) & 1) != 0)
        {
          v11 = 0;
          goto LABEL_17;
        }
      }

      v9 = [array countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v11 = [first localizedStandardCompare:second];
LABEL_17:
  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)loadPreferenceForInputModeIdentifier:(id)identifier keyboardInputMode:(id)mode addNewPreferencesToArray:(id)array defaultPreferenceIdentifiers:(id)identifiers additionalPreferenceIdentifiers:(id)preferenceIdentifiers mapPreferenceToInputMode:(id)inputMode
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
    v16 = [MEMORY[0x277CEF270] dictationIsSupportedForLanguageCode:objc_msgSend(mode error:{"languageWithRegion"), &v58}];
  }

  identifierCopy = identifier;
  v62[0] = identifier;
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
  inputModeCopy = inputMode;
  if (v15)
  {
    array = [v15 mutableCopy];
    if (UIKeyboardCheckSpellingPossibleForInputMode())
    {
      [array addObject:@"KeyboardCheckSpelling"];
      if (!v16)
      {
LABEL_13:
        if (!v17)
        {
LABEL_21:
          if ((v18 & 1) == 0)
          {
            [array addObject:@"KeyboardContinuousPathEnabled"];
            if ((v44 & 1) == 0)
            {
              [array addObject:@"KeyboardContinuousPathDeleteWholeWord"];
            }
          }

          if (UIKeyboardDeviceSupportsSplit())
          {
            [array addObject:@"RivenKeyboard"];
          }

          [array addObject:{@"KeyboardAssistant", inputModeCopy}];
          [array addObject:@"KeyboardAllowPaddle"];
          [array addObject:@"GesturesEnabled"];
          goto LABEL_27;
        }

LABEL_19:
        [array addObject:{@"KeyboardPrediction", inputModeCopy}];
        if (v41)
        {
          [array addObject:@"KeyboardInlineCompletion"];
        }

        goto LABEL_21;
      }
    }

    else if (!v16)
    {
      goto LABEL_13;
    }

    [array addObject:{@"Dictation", inputMode}];
    if (!v17)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if ([identifierCopy isEqualToString:@"emoji"])
  {
    array = [MEMORY[0x277CBEB18] array];
    goto LABEL_27;
  }

  array = [identifiers mutableCopy];
  if (UIKeyboardCheckSpellingPossibleForInputMode())
  {
    if (v16)
    {
      goto LABEL_55;
    }
  }

  else
  {
    [array removeObject:@"KeyboardCheckSpelling"];
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

  [array removeObject:{@"Dictation", inputMode}];
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
  [array removeObject:{@"KeyboardPrediction", inputModeCopy}];
LABEL_61:
  [array removeObject:{@"KeyboardInlineCompletion", inputModeCopy}];
LABEL_62:
  if ((obj & 1) == 0)
  {
    [array removeObject:@"RivenKeyboard"];
  }

  if (v18)
  {
    [array removeObject:@"KeyboardContinuousPathEnabled"];
  }

  else if (!v44)
  {
    goto LABEL_27;
  }

  [array removeObject:{@"KeyboardContinuousPathDeleteWholeWord", inputModeCopy}];
LABEL_27:
  array2 = [MEMORY[0x277CBEB18] array];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v22 = [array countByEnumeratingWithState:&v54 objects:v61 count:16];
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
          objc_enumerationMutation(array);
        }

        v26 = *(*(&v54 + 1) + 8 * i);
        if ([v26 hasPrefix:@"!"])
        {
          [array2 addObject:v26];
          [array2 addObject:{objc_msgSend(v26, "substringFromIndex:", 1)}];
        }
      }

      v23 = [array countByEnumeratingWithState:&v54 objects:v61 count:16];
    }

    while (v23);
  }

  [array removeObjectsInArray:array2];
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
              identifier = [v33 identifier];
              [array addObject:identifier];
              if (([preferenceIdentifiers containsObject:identifier] & 1) == 0)
              {
                [array addObject:v33];
                [preferenceIdentifiers addObject:identifier];
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

  [v37 setObject:array forKey:identifierCopy];
  v35 = *MEMORY[0x277D85DE8];
}

- (id)mergePreferences:(id)preferences inputModesToPreferences:(id)toPreferences
{
  v25 = *MEMORY[0x277D85DE8];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __65__KSKeyboardController_mergePreferences_inputModesToPreferences___block_invoke;
  v23[3] = &unk_2797F9D58;
  v23[4] = preferences;
  v6 = [preferences indexesOfObjectsPassingTest:v23];
  if ([v6 count])
  {
    preferencesCopy = [preferences mutableCopy];
    array = [MEMORY[0x277CBEB18] array];
    v9 = [preferences objectsAtIndexes:v6];
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
          [array addObjectsFromArray:{objc_msgSend(toPreferences, "objectForKey:", v15)}];
        }

        v12 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v12);
    }

    [toPreferences removeObjectsForKeys:v9];
    [preferencesCopy removeObjectsAtIndexes:v6];
    allObjects = [v10 allObjects];
    [preferencesCopy insertObject:allObjects atIndex:0];
    [toPreferences setObject:array forKey:allObjects];
  }

  else
  {
    preferencesCopy = preferences;
  }

  v17 = *MEMORY[0x277D85DE8];
  return preferencesCopy;
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

- (id)addAllPreferencesToArray:(id)array mapPreferenceToInputMode:(id)mode
{
  v26 = *MEMORY[0x277D85DE8];
  v17 = [array valueForKey:@"identifier"];
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [MEMORY[0x277CBEB58] set];
  array = [MEMORY[0x277CBEB18] array];
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
        normalizedIdentifier = [v12 normalizedIdentifier];
        Variant = TIInputModeGetVariant();
        if (!Variant)
        {
          Variant = TIInputModeGetBaseLanguage();
        }

        if (![v5 member:Variant])
        {
          [v5 addObject:Variant];
          [array addObject:normalizedIdentifier];
          [(KSKeyboardController *)self loadPreferenceForInputModeIdentifier:normalizedIdentifier keyboardInputMode:v12 addNewPreferencesToArray:array defaultPreferenceIdentifiers:v17 additionalPreferenceIdentifiers:v4 mapPreferenceToInputMode:mode];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];
  return array;
}

- (id)groupPreferences:(id)preferences forMapping:(id)mapping inputModes:(id)modes
{
  v40 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = [preferences countByEnumeratingWithState:&v34 objects:v39 count:16];
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
          objc_enumerationMutation(preferences);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        identifier = [v12 identifier];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __63__KSKeyboardController_groupPreferences_forMapping_inputModes___block_invoke;
        v33[3] = &unk_2797F9D80;
        v33[4] = identifier;
        v14 = [mapping keysOfEntriesPassingTest:v33];
        if ([v14 count])
        {
          array = [dictionary objectForKeyedSubscript:v14];
          if (!array)
          {
            array = [MEMORY[0x277CBEB18] array];
            [dictionary setObject:array forKey:v14];
          }

          [array addObject:v12];
        }
      }

      v9 = [preferences countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v9);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [dictionary allKeys];
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
        allObjects = [v20 allObjects];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __63__KSKeyboardController_groupPreferences_forMapping_inputModes___block_invoke_2;
        v28[3] = &unk_2797F9DA8;
        v28[4] = modes;
        v22 = [allObjects sortedArrayUsingComparator:v28];
        v23 = [dictionary objectForKey:v20];
        [dictionary removeObjectForKey:v20];
        [dictionary setObject:v23 forKey:v22];
      }

      v17 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v17);
  }

  v24 = *MEMORY[0x277D85DE8];
  return dictionary;
}

- (id)sortPreferencesKeysByInputModeOrderAndCount:(id)count inputModes:(id)modes
{
  allKeys = [count allKeys];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__KSKeyboardController_sortPreferencesKeysByInputModeOrderAndCount_inputModes___block_invoke;
  v7[3] = &unk_2797F9DD0;
  v7[4] = modes;
  return [allKeys sortedArrayUsingComparator:v7];
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

    array = [MEMORY[0x277CBEB18] array];
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
          [array addObjectsFromArray:v17];
        }

        v12 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v12);
    }
  }

  else
  {
    array = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return array;
}

- (void)addHardwareKeyboardAndShortcuts:(id)shortcuts
{
  v5 = [shortcuts specifierForID:@"KEYBOARDS"];
  if (v5 && GSEventIsHardwareKeyboardAttached())
  {
    [shortcuts ps_insertObject:-[KSKeyboardController hardwareKeyboardSpecifier](self afterObject:{"hardwareKeyboardSpecifier"), v5}];
  }

  v6 = [shortcuts specifierForID:@"Hardware Keyboard"];
  openShortcutsSpecifiers = [(KSKeyboardController *)self openShortcutsSpecifiers];
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  [shortcuts ps_insertObjectsFromArray:openShortcutsSpecifiers afterObject:v8];
  lastObject = [(NSArray *)openShortcutsSpecifiers lastObject];
  if (lastObject)
  {
    v5 = lastObject;
  }

  if ([(KSKeyboardController *)self _supportsReachableKeyboard])
  {
    reachableKeyboardSpecifier = [(KSKeyboardController *)self reachableKeyboardSpecifier];
    [shortcuts ps_insertObject:reachableKeyboardSpecifier afterObject:v5];
    v5 = reachableKeyboardSpecifier;
  }

  if ([(KSKeyboardController *)self _supportsProKeyboard])
  {
    proKeyboardSpecifier = [(KSKeyboardController *)self proKeyboardSpecifier];

    [shortcuts ps_insertObject:proKeyboardSpecifier afterObject:v5];
  }
}

- (void)addDictationItems:(id)items
{
  v5 = [objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
  v6 = [items specifierForID:@"Dictation"];
  if ([v5 count] == 1)
  {
    mEMORY[0x277D6F380] = [MEMORY[0x277D6F380] sharedInputModeController];
    if (objc_opt_respondsToSelector())
    {
      v5 = [mEMORY[0x277D6F380] defaultDictationLanguagesForKeyboardLanguage:{objc_msgSend(v5, "firstObject")}];
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
      [items ps_insertObject:-[KSKeyboardController dictationLanguageSpecifier](self afterObject:{"dictationLanguageSpecifier"), v6}];
    }
  }

  if (_os_feature_enabled_impl())
  {
    -[KSKeyboardController setDictationAutoPunctuationSpecifier:](self, "setDictationAutoPunctuationSpecifier:", [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] target:"bundleForClass:" set:objc_opt_class()) get:"localizedStringForKey:value:table:" detail:@"Auto-Punctuation" cell:&stru_28679E3A8 edit:{@"Dictation", self, sel_setAutoPunctuation_specifier_, sel_autoPunctuation_, 0, 6, 0}]);
    [(PSSpecifier *)[(KSKeyboardController *)self dictationAutoPunctuationSpecifier] setProperty:@"AutoPunctuationSetting" forKey:*v9];
    if (+[DictationFooterView dictationAutoPunctuationText])
    {
      [items ps_insertObject:-[KSKeyboardController dictationAutoPunctuationSpecifier](self afterObject:{"dictationAutoPunctuationSpecifier"), v6}];
    }
  }

  if (v6 && DictationIsEnabled() && GSEventIsHardwareKeyboardAttached())
  {
    [(KSKeyboardController *)self setDictationHardwareShortcutSpecifier:[(KSKeyboardController *)self dictationHWShortcutSpecifier]];
    if ([(KSKeyboardController *)self dictationLanguageSpecifier])
    {
      dictationHardwareShortcutSpecifier = [(KSKeyboardController *)self dictationHardwareShortcutSpecifier];
      dictationLanguageSpecifier = [(KSKeyboardController *)self dictationLanguageSpecifier];
      itemsCopy3 = items;
      v15 = dictationHardwareShortcutSpecifier;
    }

    else
    {
      dictationAutoPunctuationSpecifier = [(KSKeyboardController *)self dictationAutoPunctuationSpecifier];
      dictationHardwareShortcutSpecifier2 = [(KSKeyboardController *)self dictationHardwareShortcutSpecifier];
      if (dictationAutoPunctuationSpecifier)
      {
        dictationLanguageSpecifier = [(KSKeyboardController *)self dictationAutoPunctuationSpecifier];
        itemsCopy3 = items;
        v15 = dictationHardwareShortcutSpecifier2;
      }

      else
      {
        itemsCopy3 = items;
        v15 = dictationHardwareShortcutSpecifier2;
        dictationLanguageSpecifier = v6;
      }
    }

    [itemsCopy3 ps_insertObject:v15 afterObject:dictationLanguageSpecifier];
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
      loadAllKeyboardPreferences = [(KSKeyboardController *)self loadAllKeyboardPreferences];
      if (loadAllKeyboardPreferences)
      {
        [v5 addObjectsFromArray:loadAllKeyboardPreferences];
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

- (void)addFooterTextForStickers:(id)stickers
{
  [MEMORY[0x277CBEB18] array];
  v4 = [stickers specifierForID:@"ShowStickers"];
  v5 = [stickers indexOfSpecifierWithID:@"ShowStickers"];
  if (v4 && v5 != 0x7FFFFFFFFFFFFFFFLL && v5)
  {
    v6 = [stickers objectAtIndex:v5 - 1];
    v7 = [MEMORY[0x277D3FAD8] specifierWithSpecifier:v6];
    [v7 setProperty:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] forKey:{"bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"SHOW_STICKERS_DESCRIPTION", &stru_28679E3A8, @"Keyboard", *MEMORY[0x277D3FF88]}];
    [stickers ps_insertObject:v7 afterObject:v6];

    [stickers removeObject:v6];
  }
}

- (void)addEnabledExtensionSpecifiersToArray:(id)array
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  sharedInputModeController = [objc_msgSend(MEMORY[0x277D75688] sharedInputModeController];
  v6 = [sharedInputModeController countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(sharedInputModeController);
        }

        [array addObjectsFromArray:{+[KSAddExtensionKeyboardController specifiersForExtensionInputMode:parentSpecifier:](KSAddExtensionKeyboardController, "specifiersForExtensionInputMode:parentSpecifier:", *(*(&v11 + 1) + 8 * v9++), -[KSKeyboardController specifier](self, "specifier"))}];
      }

      while (v7 != v9);
      v7 = [sharedInputModeController countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)autoPunctuation:(id)punctuation
{
  v3 = MEMORY[0x277CCABB0];
  sharedPreferences = [objc_msgSend(MEMORY[0x277CEF368] sharedPreferences];

  return [v3 numberWithBool:sharedPreferences];
}

- (void)setAutoPunctuation:(id)punctuation specifier:(id)specifier
{
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  bOOLValue = [punctuation BOOLValue];

  [mEMORY[0x277CEF368] setDictationAutoPunctuationEnabled:bOOLValue];
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

- (void)dictationShortcutSubtitle:(id)subtitle
{
  v5 = +[KSDictationShortcutController attributedTitleForDictationShortcutValue:](KSDictationShortcutController, "attributedTitleForDictationShortcutValue:", [objc_msgSend(objc_msgSend(MEMORY[0x277D6F470] "sharedPreferencesController")]);
  v6 = [-[KSKeyboardController cachedCellForSpecifier:](self cachedCellForSpecifier:{subtitle), "valueLabel"}];

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
      dictationLanguageSpecifier = [(KSKeyboardController *)self dictationLanguageSpecifier];
    }

    else
    {
      if (![(KSKeyboardController *)self dictationAutoPunctuationSpecifier])
      {
LABEL_15:
        dictationHardwareShortcutSpecifier = [(KSKeyboardController *)self dictationHardwareShortcutSpecifier];

        [(KSKeyboardController *)self insertSpecifier:dictationHardwareShortcutSpecifier afterSpecifier:v3 animated:1];
        return;
      }

      dictationLanguageSpecifier = [(KSKeyboardController *)self dictationAutoPunctuationSpecifier];
    }

    v3 = dictationLanguageSpecifier;
    goto LABEL_15;
  }

  [(KSKeyboardController *)self removeSpecifierID:@"HardwareKeyboard" animated:1];
  if ([(KSKeyboardController *)self dictationHardwareShortcutSpecifier])
  {
    dictationHardwareShortcutSpecifier2 = [(KSKeyboardController *)self dictationHardwareShortcutSpecifier];

    [(KSKeyboardController *)self removeSpecifier:dictationHardwareShortcutSpecifier2 animated:1];
  }
}

- (id)getReachableKeybordSetting:(id)setting
{
  v3 = MEMORY[0x277CCABB0];
  sharedPreferencesController = [objc_msgSend(MEMORY[0x277D756A0] sharedPreferencesController];

  return [v3 numberWithInteger:sharedPreferencesController];
}

- (void)setReachableKeyboardSetting:(id)setting specifier:(id)specifier
{
  mEMORY[0x277D756A0] = [MEMORY[0x277D756A0] sharedPreferencesController];
  integerValue = [setting integerValue];

  [mEMORY[0x277D756A0] setHandBias:integerValue];
}

- (id)selectSpecifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = KSKeyboardController;
  v4 = [(KSKeyboardController *)&v6 selectSpecifier:?];
  [KSKeyboardController emitNavigationEventForSpecifier:specifier viewController:v4];
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
    currentDevice = [MEMORY[0x277D75418] currentDevice];

    LOBYTE(v2) = [currentDevice sf_isiPad];
  }

  return v2;
}

- (id)getProKeyboardSetting:(id)setting
{
  mEMORY[0x277D756A0] = [MEMORY[0x277D756A0] sharedPreferencesController];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return MEMORY[0x277CBEC28];
  }

  v4 = MEMORY[0x277CCABB0];
  enableProKeyboard = [mEMORY[0x277D756A0] enableProKeyboard];

  return [v4 numberWithBool:enableProKeyboard];
}

- (void)setProKeyboardSetting:(id)setting specifier:(id)specifier
{
  mEMORY[0x277D756A0] = [MEMORY[0x277D756A0] sharedPreferencesController];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [setting BOOLValue];

    [mEMORY[0x277D756A0] setEnableProKeyboard:bOOLValue];
  }
}

- (NSArray)openShortcutsSpecifiers
{
  if (self->_openShortcutsSpecifiers || (v3 = MEMORY[0x277D3FAD8], v4 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"USER_DICTIONARY", &stru_28679E3A8, @"Keyboard"}], v5 = objc_msgSend(v3, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", v4, 0, 0, 0, objc_opt_class(), 2, 0), objc_msgSend(v5, "setProperty:forKey:", @"USER_DICTIONARY", *MEMORY[0x277D3FFB8]), v6 = objc_alloc(MEMORY[0x277CBEA60]), result = objc_msgSend(v6, "initWithObjects:", objc_msgSend(MEMORY[0x277D3FAD8], "groupSpecifierWithName:", &stru_28679E3A8), v5, 0), (self->_openShortcutsSpecifiers = result) != 0))
  {
    v8 = [objc_msgSend(getMCProfileConnectionClass() "sharedConnection")];
    lastObject = [(NSArray *)self->_openShortcutsSpecifiers lastObject];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    [lastObject setProperty:v10 forKey:*MEMORY[0x277D3FF38]];
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
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: RC_SEED_BUILD: 0 enabled: %d", "-[KSKeyboardController feedbackFeatureEnabled]", @"KeyboardAutocorrection", self & 1];
  _os_log_debug_impl(&dword_255828000, a2, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end