@interface KSHardwareKeyboardController
+ (id)IOHIDKeyboardLanguageToCapsLockKeyLabel;
- (BOOL)isTrackingBrightnessSlider;
- (BOOL)shouldShowGlobeKeyPreference;
- (KSHardwareKeyboardController)init;
- (id)capsLockSwitchSpecifiersFromModes:(id)modes;
- (id)getBrightness:(id)brightness;
- (id)getCurrentKeyboardType;
- (id)globeAsEmojiSpecifiers;
- (id)globeKeyPreference:(id)preference;
- (id)keyboardBrightnessSpecifiers;
- (id)keyboardTypeRemapSpecifiers;
- (id)modifierRemapSpecifiers;
- (id)newSpecifiers;
- (id)readPreferenceControllerValue:(id)value;
- (id)readRomanCapsLockPreferenceValue:(id)value;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)appWillEnterForeground:(id)foreground;
- (void)dealloc;
- (void)hardwareKeyboardAvailabilityChanged;
- (void)setBrightness:(id)brightness specifier:(id)specifier;
- (void)setPreferenceControllerValue:(id)value forSpecifier:(id)specifier;
- (void)setRomanCapsLockPreferenceValue:(id)value forSpecifier:(id)specifier;
- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section;
- (void)toggledGlobeKey:(id)key specifier:(id)specifier;
@end

@implementation KSHardwareKeyboardController

+ (id)IOHIDKeyboardLanguageToCapsLockKeyLabel
{
  if (IOHIDKeyboardLanguageToCapsLockKeyLabel___onceToken != -1)
  {
    +[KSHardwareKeyboardController IOHIDKeyboardLanguageToCapsLockKeyLabel];
  }

  return IOHIDKeyboardLanguageToCapsLockKeyLabel___map;
}

id __71__KSHardwareKeyboardController_IOHIDKeyboardLanguageToCapsLockKeyLabel__block_invoke()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2[0] = @"Simplified Chinese Keyboard";
  v2[1] = @"2SetHangul";
  v3[0] = @"中 / 英";
  v3[1] = @"한 / A";
  v2[2] = @"Zhuyin Bopomofo";
  v2[3] = @"Thai";
  v3[2] = @"中 / 英";
  v3[3] = @"ก / A";
  result = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:4];
  IOHIDKeyboardLanguageToCapsLockKeyLabel___map = result;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

- (KSHardwareKeyboardController)init
{
  v10.receiver = self;
  v10.super_class = KSHardwareKeyboardController;
  v2 = [(KSHardwareKeyboardController *)&v10 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, HardwareKeyboardAvailabilityChanged_0, [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D0EEA0]], 0, 0);
    v4 = objc_alloc_init(MEMORY[0x277CFD3B8]);
    v2->_keyboardBrightnessClient = v4;
    v5 = *MEMORY[0x277CFD3C8];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __36__KSHardwareKeyboardController_init__block_invoke;
    v9[3] = &unk_2797F9F90;
    v9[4] = v2;
    [(KeyboardBrightnessClient *)v4 registerNotificationForKeys:&unk_2867A4BA8 keyboardID:v5 block:v9];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_appWillResignActive_ name:*MEMORY[0x277D76768] object:0];
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_appWillEnterForeground_ name:*MEMORY[0x277D76758] object:0];
  }

  return v2;
}

void __36__KSHardwareKeyboardController_init__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__KSHardwareKeyboardController_init__block_invoke_2;
  v4[3] = &unk_2797F9F68;
  v3 = *(a1 + 32);
  v4[4] = a3;
  v4[5] = v3;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

uint64_t __36__KSHardwareKeyboardController_init__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [*(a1 + 40) isTrackingBrightnessSlider];
    if ((result & 1) == 0)
    {
      v4 = [*(a1 + 40) specifierForID:@"Keyboard Brightness"];
      v5 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(*(a1 + 40) + 1456), "isBacklightSaturatedOnKeyboard:", *MEMORY[0x277CFD3C8]) ^ 1}];
      [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277D3FF38]];
      [*(a1 + 40) reloadSpecifier:v4];
      v6 = [v4 propertyForKey:*MEMORY[0x277D40148]];
      v7 = *(a1 + 32);

      return [v6 setValue:v7];
    }
  }

  return result;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D0EEA0]], 0);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76758] object:0];
  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277D76768] object:0];
  [(KeyboardBrightnessClient *)self->_keyboardBrightnessClient unregisterKeyboardNotificationBlock];

  v6.receiver = self;
  v6.super_class = KSHardwareKeyboardController;
  [(KSHardwareKeyboardController *)&v6 dealloc];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  result = *(&self->super.super.super.super.super.isa + v3);
  if (!result)
  {
    title = [(KSHardwareKeyboardController *)self title];
    *(&self->super.super.super.super.super.isa + v3) = [(KSHardwareKeyboardController *)self newSpecifiers];
    [(KSHardwareKeyboardController *)self setTitle:title];
    return *(&self->super.super.super.super.super.isa + v3);
  }

  return result;
}

- (id)newSpecifiers
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = [objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
  v35 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  selfCopy = self;
  v31 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = [MEMORY[0x277CBEB58] set];
  mEMORY[0x277D75688] = [MEMORY[0x277D75688] sharedInputModeController];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v7 = [v3 countByEnumeratingWithState:&v44 objects:v50 count:16];
  v34 = v5;
  if (v7)
  {
    v8 = v7;
    v9 = *v45;
    v32 = *MEMORY[0x277D3FFB8];
    v10 = *MEMORY[0x277D3FE58];
    v11 = *MEMORY[0x277D6F758];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v45 != v9)
        {
          objc_enumerationMutation(v3);
        }

        if ([mEMORY[0x277D75688] identifierIsValidSystemInputMode:*(*(&v44 + 1) + 8 * i)])
        {
          NormalizedIdentifier = TIInputModeGetNormalizedIdentifier();
          if (![v5 member:NormalizedIdentifier])
          {
            [v5 addObject:NormalizedIdentifier];
            if ([UIKeyboardGetSupportedHardwareKeyboardsForInputMode() count])
            {
              v14 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:selfCopy set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
              [v14 setProperty:NormalizedIdentifier forKey:v32];
              [v14 setProperty:objc_opt_class() forKey:v10];
              v15 = v14;
              v5 = v34;
              [v35 addObject:v15];
            }

            if ([objc_msgSend(TIGetInputModeProperties() objectForKeyedSubscript:{v11), "BOOLValue"}])
            {
              [v31 addObject:NormalizedIdentifier];
            }
          }
        }
      }

      v8 = [v3 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v8);
  }

  v16 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"HWKeyboardSettings"];
  [v16 setProperty:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] forKey:{"bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"PERIOD_SHORTCUT_DESCRIPTION_HWKB", &stru_28679E3A8, @"Keyboard", *MEMORY[0x277D3FF88]}];
  [v35 addObject:v16];
  v33 = selfCopy;
  separateHWKeyboardSpecifiers = [(KSHardwareKeyboardController *)selfCopy separateHWKeyboardSpecifiers];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v18 = [separateHWKeyboardSpecifiers countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v41;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v41 != v20)
        {
          objc_enumerationMutation(separateHWKeyboardSpecifiers);
        }

        [*(*(&v40 + 1) + 8 * j) setName:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", objc_msgSend(*(*(&v40 + 1) + 8 * j), "name"), &stru_28679E3A8, @"Keyboard"}];
      }

      v19 = [separateHWKeyboardSpecifiers countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v19);
  }

  v22 = v35;
  [v35 addObjectsFromArray:separateHWKeyboardSpecifiers];
  if ([v31 count])
  {
    v23 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"LIVE_CONVERSION"];
    [v23 setName:{+[KSKeyboardController localizedListForInputModes:forDictation:duplicatedBaseLanguages:](KSKeyboardController, "localizedListForInputModes:forDictation:duplicatedBaseLanguages:", v31, 0, 0)}];
    [v35 addObject:v23];
    v24 = [(KSHardwareKeyboardController *)v33 loadSpecifiersFromPlistName:@"Preferences_HWLiveConversion" target:v33];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v25 = [v24 countByEnumeratingWithState:&v36 objects:v48 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v37;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v37 != v27)
          {
            objc_enumerationMutation(v24);
          }

          [*(*(&v36 + 1) + 8 * k) setName:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", objc_msgSend(*(*(&v36 + 1) + 8 * k), "name"), &stru_28679E3A8, @"Keyboard"}];
        }

        v26 = [v24 countByEnumeratingWithState:&v36 objects:v48 count:16];
      }

      while (v26);
    }

    v22 = v35;
    [v35 addObjectsFromArray:v24];
  }

  if ([(KSHardwareKeyboardController *)v33 shouldShowGlobeKeyPreference])
  {
    [v22 addObjectsFromArray:{-[KSHardwareKeyboardController globeAsEmojiSpecifiers](v33, "globeAsEmojiSpecifiers")}];
  }

  [v22 addObjectsFromArray:{-[KSHardwareKeyboardController capsLockSwitchSpecifiersFromModes:](v33, "capsLockSwitchSpecifiersFromModes:", v34)}];
  [v22 addObjectsFromArray:{-[KSHardwareKeyboardController keyboardBrightnessSpecifiers](v33, "keyboardBrightnessSpecifiers")}];
  [v22 addObjectsFromArray:{-[KSHardwareKeyboardController modifierRemapSpecifiers](v33, "modifierRemapSpecifiers")}];
  if ((BKSHIDKeyboardWantsStandardTypeOverride() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"KeyboardTypeCustomization", @"com.apple.keyboard.preferences", 0))
  {
    [v22 addObjectsFromArray:{-[KSHardwareKeyboardController keyboardTypeRemapSpecifiers](v33, "keyboardTypeRemapSpecifiers")}];
  }

  v29 = *MEMORY[0x277D85DE8];
  return v22;
}

- (id)capsLockSwitchSpecifiersFromModes:(id)modes
{
  v49 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v6 = [modes countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = *v44;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v44 != v11)
        {
          objc_enumerationMutation(modes);
        }

        v13 = *(*(&v43 + 1) + 8 * i);
        if (UIKeyboardLayoutDefaultTypeForInputModeIsASCIICapable())
        {
          ++v9;
          v10 = v13;
        }

        else
        {
          v8 += UIKeyboardLayoutSupportsASCIIToggleKey();
        }
      }

      v7 = [modes countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v7);
    if (v9 && v8)
    {
      HardwareKeyboardLanguage = BKSHIDServicesGetHardwareKeyboardLanguage();
      HasLanguageSwitchLabel = BKSHIDServicesCapsLockKeyHasLanguageSwitchLabel();
      if ([HardwareKeyboardLanguage length] && ((HasLanguageSwitchLabel & 1) != 0 || objc_msgSend(HardwareKeyboardLanguage, "isEqualToString:", @"Simplified Chinese Keyboard")))
      {
        v16 = [objc_msgSend(objc_opt_class() "IOHIDKeyboardLanguageToCapsLockKeyLabel")];
      }

      else
      {
        v16 = 0;
      }

      v38 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"HWKeyboardCapsLockSwitch"];
      if (v9 >= 2)
      {
        v17 = 2;
      }

      else
      {
        v17 = v9;
      }

      v18 = [v16 length];
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if (v18)
      {
        v20 = [v19 localizedStringForKey:@"LANGUAGE_SWITCH_LATIN_TITLE" value:&stru_28679E3A8 table:@"Keyboard"];
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:v20, v16];
        v22 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"LANGUAGE_SWITCH_LATIN_DESCRIPTION_%lu", v17), &stru_28679E3A8, @"Keyboard"}];
        if (v9 == 1)
        {
          if ([0 hasPrefix:@"%2$@"])
          {
            v23 = 4;
          }

          else
          {
            v23 = 5;
          }

          v24 = MEMORY[0x277CCACA8];
          v36 = v16;
          v37 = TUIKeyboardDisplayNameFromIdentifierForContext(v10, v23);
          v25 = v24;
        }

        else
        {
          v25 = MEMORY[0x277CCACA8];
          v36 = v16;
        }

        v28 = [v25 stringWithFormat:v22, v36, v37];
      }

      else
      {
        v21 = [v19 localizedStringForKey:@"CAPS_LOCK_LATIN_TITLE" value:&stru_28679E3A8 table:@"Keyboard"];
        v26 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"CAPS_LOCK_LATIN_DESCRIPTION_%lu", v17), &stru_28679E3A8, @"Keyboard"}];
        if (v9 != 1)
        {
LABEL_35:
          [v38 setProperty:v26 forKey:*MEMORY[0x277D3FF88]];
          [array addObject:v38];
          v29 = [(KSHardwareKeyboardController *)self loadSpecifiersFromPlistName:@"Preferences_HWCapsLock" target:self];
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v30 = [v29 countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v40;
            do
            {
              for (j = 0; j != v31; ++j)
              {
                if (*v40 != v32)
                {
                  objc_enumerationMutation(v29);
                }

                [*(*(&v39 + 1) + 8 * j) setName:v21];
              }

              v31 = [v29 countByEnumeratingWithState:&v39 objects:v47 count:16];
            }

            while (v31);
          }

          [array addObjectsFromArray:v29];
          goto LABEL_43;
        }

        if ([0 hasPrefix:@"%@"])
        {
          v27 = 4;
        }

        else
        {
          v27 = 5;
        }

        v28 = [MEMORY[0x277CCACA8] stringWithFormat:v26, TUIKeyboardDisplayNameFromIdentifierForContext(v10, v27), v37];
      }

      v26 = v28;
      goto LABEL_35;
    }
  }

LABEL_43:
  v34 = *MEMORY[0x277D85DE8];
  return array;
}

- (void)appWillEnterForeground:(id)foreground
{
  [(KSHardwareKeyboardController *)self reloadSpecifiers];

  [(KSHardwareKeyboardController *)self suspendIdleDimming:1];
}

- (id)readPreferenceControllerValue:(id)value
{
  v3 = [value propertyForKey:*MEMORY[0x277D3FFF0]];
  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];

  return [mEMORY[0x277D6F470] valueForPreferenceKey:v3];
}

- (void)setPreferenceControllerValue:(id)value forSpecifier:(id)specifier
{
  v5 = [specifier propertyForKey:*MEMORY[0x277D3FFF0]];
  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];

  [mEMORY[0x277D6F470] setValue:value forPreferenceKey:v5];
}

- (id)readRomanCapsLockPreferenceValue:(id)value
{
  if (([objc_msgSend(value propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"HWKeyboardCapsLockRomanSwitch"}] & 1) == 0)
  {
    [KSHardwareKeyboardController readRomanCapsLockPreferenceValue:];
  }

  v3 = MEMORY[0x277CCABB0];
  v4 = [objc_msgSend(MEMORY[0x277D75678] "sharedInstance")];

  return [v3 numberWithBool:v4];
}

- (void)setRomanCapsLockPreferenceValue:(id)value forSpecifier:(id)specifier
{
  if (([objc_msgSend(specifier propertyForKey:{*MEMORY[0x277D3FFF0]), "isEqualToString:", @"HWKeyboardCapsLockRomanSwitch"}] & 1) == 0)
  {
    [KSHardwareKeyboardController setRomanCapsLockPreferenceValue:forSpecifier:];
  }

  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v6 = *MEMORY[0x277D6F640];

  [mEMORY[0x277D6F470] setValue:value forPreferenceKey:v6];
}

- (id)keyboardBrightnessSpecifiers
{
  array = [MEMORY[0x277CBEB18] array];
  if ([-[KeyboardBrightnessClient copyKeyboardBacklightIDs](self->_keyboardBrightnessClient "copyKeyboardBacklightIDs")])
  {
    v4 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"Keyboard Brightness Group" name:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"Keyboard Brightness", &stru_28679E3A8, @"Keyboard"}];
    [v4 setProperty:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] forKey:{"bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"KEYBOARD_BRIGHTNESS_DESCRIPTION", &stru_28679E3A8, @"Keyboard", *MEMORY[0x277D3FF88]}];
    [array addObject:v4];
    v5 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] target:"bundleForClass:" set:objc_opt_class()) get:"localizedStringForKey:value:table:" detail:@"Keyboard Brightness" cell:&stru_28679E3A8 edit:{@"Keyboard", self, sel_setBrightness_specifier_, sel_getBrightness_, 0, 5, 0}];
    [v5 setObject:@"Keyboard Brightness" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
    v6 = [MEMORY[0x277D755B8] systemImageNamed:@"light.min"];
    v7 = [v6 imageWithTintColor:objc_msgSend(MEMORY[0x277D75348] renderingMode:{"secondaryLabelColor"), 1}];
    [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x277D400D0]];
    v8 = [MEMORY[0x277D755B8] systemImageNamed:@"light.max"];
    v9 = [v8 imageWithTintColor:objc_msgSend(MEMORY[0x277D75348] renderingMode:{"secondaryLabelColor"), 1}];
    [v5 setObject:v9 forKeyedSubscript:*MEMORY[0x277D400E0]];
    [v5 setObject:&unk_2867A50B8 forKeyedSubscript:*MEMORY[0x277D3FEC0]];
    [v5 setObject:&unk_2867A50C8 forKeyedSubscript:*MEMORY[0x277D3FEB8]];
    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D400C0]];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:{-[KeyboardBrightnessClient isBacklightSaturatedOnKeyboard:](self->_keyboardBrightnessClient, "isBacklightSaturatedOnKeyboard:", *MEMORY[0x277CFD3C8]) ^ 1}];
    [v5 setObject:v10 forKeyedSubscript:*MEMORY[0x277D3FF38]];
    [array addObject:v5];
  }

  return array;
}

- (void)setBrightness:(id)brightness specifier:(id)specifier
{
  v6 = [(KSHardwareKeyboardController *)self isTrackingBrightnessSlider:brightness];
  keyboardBrightnessClient = self->_keyboardBrightnessClient;
  v8 = objc_opt_respondsToSelector();
  v9 = self->_keyboardBrightnessClient;
  [brightness floatValue];
  if (v8)
  {
    v10 = *MEMORY[0x277CFD3C8];

    [(KeyboardBrightnessClient *)v9 setBrightness:0 fadeSpeed:!v6 commit:v10 forKeyboard:?];
  }

  else
  {
    v11 = *MEMORY[0x277CFD3C8];

    [(KeyboardBrightnessClient *)v9 setBrightness:v11 forKeyboard:?];
  }
}

- (id)getBrightness:(id)brightness
{
  [(KeyboardBrightnessClient *)self->_keyboardBrightnessClient brightnessForKeyboard:*MEMORY[0x277CFD3C8]];
  *&v3 = fminf(*&v3, 1.0);
  if (*&v3 < 0.0)
  {
    *&v3 = 0.0;
  }

  v4 = MEMORY[0x277CCABB0];

  return [v4 numberWithFloat:v3];
}

- (BOOL)isTrackingBrightnessSlider
{
  v2 = [(KSHardwareKeyboardController *)self specifierForID:@"Keyboard Brightness"];
  v3 = [objc_msgSend(v2 propertyForKey:{*MEMORY[0x277D40148]), "control"}];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v3 isTracking];
}

- (id)globeAsEmojiSpecifiers
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"Globe as Emoji group"];
  [array addObject:v4];
  v5 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:objc_msgSend(MEMORY[0x277CCACA8] target:"stringWithFormat:" set:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] get:"bundleForClass:" detail:objc_opt_class()) cell:"localizedStringForKey:value:table:" edit:{@"GLOBE_AS_EMOJI_KEY", &stru_28679E3A8, @"Keyboard", @"<globe>", self, sel_toggledGlobeKey_specifier_, sel_globeKeyPreference_, 0, 6, 0}];
  [v5 setProperty:*MEMORY[0x277D6F648] forKey:*MEMORY[0x277D3FFB8]];
  [v4 setProperty:objc_msgSend(MEMORY[0x277CCACA8] forKey:{"stringWithFormat:", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"GLOBE_AS_EMOJI_KEY_FOOTER", &stru_28679E3A8, @"Keyboard", @"<globe>", *MEMORY[0x277D3FF88]}];
  [array addObject:v5];
  return array;
}

- (id)globeKeyPreference:(id)preference
{
  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v5 = [mEMORY[0x277D6F470] valueForPreferenceKey:*MEMORY[0x277D6F648]];
  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = [(KSHardwareKeyboardController *)self defaultValueForGlobeAsEmojiKey];
  }

  v7 = bOOLValue;
  v8 = MEMORY[0x277CCABB0];

  return [v8 numberWithBool:v7];
}

- (void)toggledGlobeKey:(id)key specifier:(id)specifier
{
  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v6 = *MEMORY[0x277D6F648];

  [mEMORY[0x277D6F470] setValue:key forPreferenceKey:v6];
}

- (BOOL)shouldShowGlobeKeyPreference
{
  if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) != 1 || objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277D75688], "sharedInputModeController"), "enabledInputModeIdentifiers"), "count") < 3)
  {
    return 0;
  }

  mEMORY[0x277D75688] = [MEMORY[0x277D75688] sharedInputModeController];

  return [mEMORY[0x277D75688] containsEmojiInputMode];
}

- (id)modifierRemapSpecifiers
{
  array = [MEMORY[0x277CBEB18] array];
  [array addObject:{objc_msgSend(MEMORY[0x277D3FAD8], "groupSpecifierWithID:", @"Modifier Keys"}];
  v4 = MEMORY[0x277D3FAD8];
  v5 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"MODIFIER_KEYS", &stru_28679E3A8, @"Keyboard"}];
  [array addObject:{objc_msgSend(v4, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", v5, self, 0, 0, objc_opt_class(), 2, 0)}];
  return array;
}

- (id)keyboardTypeRemapSpecifiers
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"Keyboard Type"];
  [array addObject:v4];
  v5 = MEMORY[0x277D3FAD8];
  v6 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"Keyboard Type", &stru_28679E3A8, @"Keyboard"}];
  v7 = [v5 preferenceSpecifierNamed:v6 target:self set:0 get:sel_getCurrentKeyboardType detail:objc_opt_class() cell:2 edit:0];
  [v4 setProperty:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] forKey:{"bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"KEYBOARD_TYPE_FOOTER_TEXT", &stru_28679E3A8, @"Keyboard", *MEMORY[0x277D3FF88]}];
  [array addObject:v7];
  return array;
}

- (id)getCurrentKeyboardType
{
  DeviceProperties = BKSHIDKeyboardGetDeviceProperties();
  standardType = [DeviceProperties standardType];
  result = &stru_28679E3A8;
  if (standardType <= 0)
  {
    if (standardType != -1)
    {
      if (standardType)
      {
        return result;
      }

      return @"ANSI";
    }

    if ([DeviceProperties countryCode] != 15)
    {
      return @"ANSI";
    }

    return @"JIS";
  }

  if (standardType == 1)
  {
    return @"ISO";
  }

  if (standardType == 2)
  {
    return @"JIS";
  }

  return result;
}

- (void)hardwareKeyboardAvailabilityChanged
{
  if (GSEventIsHardwareKeyboardAttached())
  {
    if (![(KSHardwareKeyboardController *)self specifierForID:@"Keyboard Brightness Group"])
    {
      [(KSHardwareKeyboardController *)self addSpecifiersFromArray:[(KSHardwareKeyboardController *)self keyboardBrightnessSpecifiers] animated:1];
    }

    if (![(KSHardwareKeyboardController *)self specifierForID:@"Modifier Keys"])
    {
      [(KSHardwareKeyboardController *)self addSpecifiersFromArray:[(KSHardwareKeyboardController *)self modifierRemapSpecifiers] animated:1];
    }

    if (![(KSHardwareKeyboardController *)self specifierForID:@"Keyboard Type"]&& ((BKSHIDKeyboardWantsStandardTypeOverride() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"KeyboardTypeCustomization", @"com.apple.keyboard.preferences", 0)))
    {
      keyboardTypeRemapSpecifiers = [(KSHardwareKeyboardController *)self keyboardTypeRemapSpecifiers];

      [(KSHardwareKeyboardController *)self addSpecifiersFromArray:keyboardTypeRemapSpecifiers animated:1];
    }
  }

  else
  {
    [(KSHardwareKeyboardController *)self removeSpecifierID:@"Keyboard Brightness Group" animated:1];
    [(KSHardwareKeyboardController *)self removeSpecifierID:@"Modifier Keys" animated:1];

    [(KSHardwareKeyboardController *)self removeSpecifierID:@"Keyboard Type" animated:1];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v16.receiver = self;
  v16.super_class = KSHardwareKeyboardController;
  v6 = [(KSHardwareKeyboardController *)&v16 tableView:view cellForRowAtIndexPath:?];
  v7 = [(KSHardwareKeyboardController *)self specifierAtIndexPath:path];
  v8 = [v7 propertyForKey:*MEMORY[0x277D3FFB8]];
  if ([v8 isEqualToString:*MEMORY[0x277D6F648]])
  {
    name = [v7 name];
    v10 = [name rangeOfString:@"<globe>"];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v10;
      v13 = v11;
      v14 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:name];
      [v14 replaceCharactersInRange:v12 withAttributedString:{v13, +[KSKeyboardListController attributedStringForSymbolName:](KSKeyboardListController, "attributedStringForSymbolName:", @"globe"}];
      [objc_msgSend(v6 "titleLabel")];
    }
  }

  return v6;
}

- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section
{
  textLabel = [objc_msgSend(footerView textLabel];
  v7 = [textLabel rangeOfString:@"<globe>"];
  if (textLabel)
  {
    v9 = v7;
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = v8;
      v11 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:textLabel];
      [v11 replaceCharactersInRange:v9 withAttributedString:{v10, +[KSKeyboardListController attributedStringForSymbolName:](KSKeyboardListController, "attributedStringForSymbolName:", @"globe"}];
      [objc_msgSend(footerView "textLabel")];
    }
  }
}

@end