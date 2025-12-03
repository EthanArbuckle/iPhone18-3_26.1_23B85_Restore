@interface KeyboardSettingsMediator
+ (id)cloudSettingKeyFromTextInputUIKey;
- (id)KeyboardCheckSpelling;
- (id)automaticCapitalization;
- (id)automaticPeriod;
- (id)automaticSpellingCorrection;
- (id)capsLockSwitch;
- (id)deviceSettingsForKeys:(id)keys;
- (id)dictationLanguages;
- (id)dictationShortcut;
- (id)doubleQuoteOption;
- (id)fnKeyFunction;
- (id)keyboardAllowPaddle;
- (id)keyboardAutocapitalization;
- (id)keyboardAutocorrection;
- (id)keyboardCapsLock;
- (id)keyboardContinuousPathDeleteWholeWord;
- (id)keyboardContinuousPathEnabled;
- (id)keyboardPeriodShortcut;
- (id)keyboardPrediction;
- (id)preferencesController;
- (id)singleQuoteOption;
- (id)smartDashesEnabled;
- (id)smartQuotesEnabled;
- (id)spaceConfirmation;
- (id)textInputMenu;
- (void)registerKeys;
- (void)setAutomaticCapitalization:(id)capitalization;
- (void)setAutomaticPeriod:(id)period;
- (void)setAutomaticSpellingCorrection:(id)correction;
- (void)setCapsLockSwitch:(id)switch;
- (void)setDictationLanguages:(id)languages;
- (void)setDictationShortcut:(id)shortcut;
- (void)setFnKeyFunction:(id)function;
- (void)setKeyboardAllowPaddle:(id)paddle;
- (void)setKeyboardAutocapitalization:(id)autocapitalization;
- (void)setKeyboardAutocorrection:(id)autocorrection;
- (void)setKeyboardCapsLock:(id)lock;
- (void)setKeyboardCheckSpelling:(id)spelling;
- (void)setKeyboardContinuousPathDeleteWholeWord:(id)word;
- (void)setKeyboardContinuousPathEnabled:(id)enabled;
- (void)setKeyboardPeriodShortcut:(id)shortcut;
- (void)setKeyboardPrediction:(id)prediction;
- (void)setSmartDashesEnabled:(id)enabled;
- (void)setSmartQuotesEnabled:(id)enabled;
- (void)setSpaceConfirmation:(id)confirmation;
- (void)setTextInputMenu:(id)menu;
@end

@implementation KeyboardSettingsMediator

- (void)registerKeys
{
  [(KeyboardSettingsMediator *)self registerKey:@"KB_KeyRepeatThreshold" getter:"keyRepeatThreshold" setter:"setKeyRepeatThreshold:"];
  [(KeyboardSettingsMediator *)self registerKey:@"KB_KeyRepeatInterval" getter:"keyRepeatInterval" setter:"setKeyRepeatInterval:"];
  [(KeyboardSettingsMediator *)self registerKey:@"KB_AdjustBacklight" getter:"adjustBacklight" setter:"setAdjustBacklight:"];
  [(KeyboardSettingsMediator *)self registerKey:@"KB_IdleDimTime" getter:"idleDimTime" setter:"setIdleDimTime:"];
  [(KeyboardSettingsMediator *)self registerKey:@"KB_FnKeyFunction" getter:"fnKeyFunction" setter:"setFnKeyFunction:"];
  [(KeyboardSettingsMediator *)self registerKey:@"KB_DFRPresentationModeDefault" getter:"DFRPresentationMode" setter:"setDFRPresentationMode:"];
  [(KeyboardSettingsMediator *)self registerKey:@"KB_DFRFnBehavior" getter:"DFRFnBehavior" setter:"setDFRFnBehavior:"];
  [(KeyboardSettingsMediator *)self registerKey:@"KB_UIMode" getter:"uiMode" setter:"setUIMode:"];
  [(KeyboardSettingsMediator *)self registerKey:@"KB_TextInputMenu" getter:"textInputMenu" setter:"setTextInputMenu:"];
  [(KeyboardSettingsMediator *)self registerKey:@"KB_CapsLockSwitch" getter:"capsLockSwitch" setter:"setCapsLockSwitch:"];
  [(KeyboardSettingsMediator *)self registerKey:@"KB_PerContextInput" getter:"perContextInput" setter:"setPerContextInput:"];
  [(KeyboardSettingsMediator *)self registerKey:@"KB_AutomaticSpellingCorrection" getter:"automaticSpellingCorrection" setter:"setAutomaticSpellingCorrection:"];
  [(KeyboardSettingsMediator *)self registerKey:@"KB_AutomaticCapitalization" getter:"automaticCapitalization" setter:"setAutomaticCapitalization:"];
  [(KeyboardSettingsMediator *)self registerKey:@"KB_AutomaticTextCompletion" getter:"automaticTextCompletion" setter:"setAutomaticTextCompletion:"];
  [(KeyboardSettingsMediator *)self registerKey:@"KB_AutomaticQuote" getter:"automaticQuote" setter:"setAutomaticQuote:"];
  [(KeyboardSettingsMediator *)self registerKey:@"KB_AutomaticDash" getter:"automaticDash" setter:"setAutomaticDash:"];
  [(KeyboardSettingsMediator *)self registerKey:@"KB_AutomaticPeriod" getter:"automaticPeriod" setter:"setAutomaticPeriod:"];
  [(KeyboardSettingsMediator *)self registerKey:@"KB_SmartReply" getter:"smartReply" setter:"setSmartReply:"];
  [(KeyboardSettingsMediator *)self registerKey:@"KB_SpellingLanguage" getter:"spellingLanguage" setter:"setSpellingLanguage:"];
  [(KeyboardSettingsMediator *)self registerKey:@"KB_SingleQuoteOption" getter:"singleQuoteOption" setter:"setSingleQuoteOption:"];
  [(KeyboardSettingsMediator *)self registerKey:@"KB_DoubleQuoteOption" getter:"doubleQuoteOption" setter:"setDoubleQuoteOption:"];
  [(KeyboardSettingsMediator *)self registerKey:@"KB_BidiSplitCursor" getter:"bidiSplitCursor" setter:"setBidiSplitCursor:"];
  [(KeyboardSettingsMediator *)self registerKey:@"KB_BidiKeyboardShortcut" getter:"bidiKeyboardShortcut" setter:"setBidiKeyboardShortcut:"];
  [(KeyboardSettingsMediator *)self registerKey:@"KB_BidiVisualSelection" getter:"bidiVisualSelection" setter:"setBidiVisualSelection:"];
  [(KeyboardSettingsMediator *)self registerKey:@"KB_DictationShortcut" getter:"dictationShortcut" setter:"setDictationShortcut:"];
  [(KeyboardSettingsMediator *)self registerKey:TIKeyboardAutocorrectionPreference getter:"keyboardAutocorrection" setter:"setKeyboardAutocorrection:"];
  [(KeyboardSettingsMediator *)self registerKey:TIKeyboardAutocapitalizationPreference getter:"keyboardAutocapitalization" setter:"setKeyboardAutocapitalization:"];
  [(KeyboardSettingsMediator *)self registerKey:TIKeyboardCheckSpellingPreference getter:"KeyboardCheckSpelling" setter:"setKeyboardCheckSpelling:"];
  [(KeyboardSettingsMediator *)self registerKey:TISmartQuotesEnabledPreference getter:"smartQuotesEnabled" setter:"setSmartQuotesEnabled:"];
  [(KeyboardSettingsMediator *)self registerKey:TISmartDashesEnabledPreference getter:"smartDashesEnabled" setter:"setSmartDashesEnabled:"];
  [(KeyboardSettingsMediator *)self registerKey:TIKeyboardCapsLockPreference getter:"keyboardCapsLock" setter:"setKeyboardCapsLock:"];
  [(KeyboardSettingsMediator *)self registerKey:TIKeyboardContinuousPathEnabledPreference getter:"keyboardContinuousPathEnabled" setter:"setKeyboardContinuousPathEnabled:"];
  [(KeyboardSettingsMediator *)self registerKey:TIKeyboardContinuousPathDeleteWholeWordPreference getter:"keyboardContinuousPathDeleteWholeWord" setter:"setKeyboardContinuousPathDeleteWholeWord:"];
  [(KeyboardSettingsMediator *)self registerKey:TIKeyboardAllowPaddlePreference getter:"keyboardAllowPaddle" setter:"setKeyboardAllowPaddle:"];
  [(KeyboardSettingsMediator *)self registerKey:TIKeyboardPeriodShortcutPreference getter:"keyboardPeriodShortcut" setter:"setKeyboardPeriodShortcut:"];
  [(KeyboardSettingsMediator *)self registerKey:TIKeyboardPredictionPreference getter:"keyboardPrediction" setter:"setKeyboardPrediction:"];
  [(KeyboardSettingsMediator *)self registerKey:TISpaceConfirmationPreference getter:"spaceConfirmation" setter:"setSpaceConfirmation:"];

  [(KeyboardSettingsMediator *)self registerKey:@"KB_DictationLanguages" getter:"dictationLanguages" setter:"setDictationLangauges:"];
}

+ (id)cloudSettingKeyFromTextInputUIKey
{
  if (qword_10000C958 != -1)
  {
    sub_100003654();
  }

  v3 = qword_10000C950;

  return v3;
}

- (id)deviceSettingsForKeys:(id)keys
{
  keysCopy = keys;
  if (keysCopy)
  {
    v5 = keysCopy;
    v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [keysCopy count]);
    cloudSettingKeyFromTextInputUIKey = [objc_opt_class() cloudSettingKeyFromTextInputUIKey];
    if ([v5 count])
    {
      v8 = 0;
      do
      {
        v9 = [v5 objectAtIndexedSubscript:v8];
        v10 = [cloudSettingKeyFromTextInputUIKey objectForKeyedSubscript:v9];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = v9;
        }

        [v6 addObject:v12];

        ++v8;
      }

      while (v8 < [v5 count]);
    }
  }

  else
  {
    v6 = 0;
  }

  v15.receiver = self;
  v15.super_class = KeyboardSettingsMediator;
  v13 = [(KeyboardSettingsMediator *)&v15 deviceSettingsForKeys:v6];

  return v13;
}

- (void)setFnKeyFunction:(id)function
{
  functionCopy = function;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "XPCSERVICE - Update FnKeyFunction", v7, 2u);
  }

  v4 = [functionCopy intValue] == 1;
  v5 = +[TIPreferencesController sharedPreferencesController];
  v6 = [NSNumber numberWithBool:v4];
  [v5 setValue:v6 forPreferenceKey:TIHWKeyboardGlobeAsEmojiKeyPreference];
}

- (void)setTextInputMenu:(id)menu
{
  menuCopy = menu;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "XPCSERVICE - Text input menu", v5, 2u);
  }

  if (menuCopy)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100003668();
    }

    v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.TextInputMenu"];
    [v4 setBool:objc_msgSend(menuCopy forKey:{"BOOLValue"), @"visible"}];
  }
}

- (void)setCapsLockSwitch:(id)switch
{
  switchCopy = switch;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "XPCSERVICE - CapsLock switch", v5, 2u);
  }

  if (switchCopy)
  {
    v4 = +[TIPreferencesController sharedPreferencesController];
    [v4 setValue:switchCopy forPreferenceKey:TIHWKeyboardCapsLockRomanSwitchPreference];
  }
}

- (void)setAutomaticSpellingCorrection:(id)correction
{
  correctionCopy = correction;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "XPCSERVICE - Automatic spelling correction", v5, 2u);
  }

  if (correctionCopy)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1000036D8();
    }

    v4 = +[TIPreferencesController sharedPreferencesController];
    [v4 setValue:correctionCopy forPreferenceKey:TIHWKeyboardAutocorrectionPreference];
  }
}

- (void)setDictationLanguages:(id)languages
{
  languagesCopy = languages;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "XPCSERVICE - Dictation languages", v7, 2u);
  }

  firstObject = [languagesCopy firstObject];
  if (firstObject)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100003748();
    }

    v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v5 preferencesActions];
    [preferencesActions setEnabledDictationLanguages:firstObject];
  }
}

- (void)setDictationShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "XPCSERVICE - Dictation shortcut", v9, 2u);
  }

  firstObject = [shortcutCopy firstObject];
  if (firstObject)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1000037B8();
    }

    v5 = [firstObject objectForKeyedSubscript:@"KB_Dictation_ShortcutType"];
    integerValue = [v5 integerValue];

    if (integerValue <= 6 && ((0x75u >> integerValue) & 1) != 0)
    {
      v7 = (&off_100008200)[integerValue & 7];
      v8 = +[TIPreferencesController sharedPreferencesController];
      [v8 setValue:v7 forPreferenceKey:TIHWKeyboardDictationShortcutPreference];
    }
  }
}

- (void)setKeyboardAutocorrection:(id)autocorrection
{
  autocorrectionCopy = autocorrection;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "XPCSERVICE - TIKeyboardAutocorrectionPreference", v5, 2u);
  }

  if (autocorrectionCopy)
  {
    v4 = +[TIPreferencesController sharedPreferencesController];
    [v4 setValue:autocorrectionCopy forPreferenceKey:TIKeyboardAutocorrectionPreference];
  }
}

- (void)setKeyboardAutocapitalization:(id)autocapitalization
{
  autocapitalizationCopy = autocapitalization;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "XPCSERVICE - TIKeyboardAutocapitalizationPreference", v5, 2u);
  }

  if (autocapitalizationCopy)
  {
    v4 = +[TIPreferencesController sharedPreferencesController];
    [v4 setValue:autocapitalizationCopy forPreferenceKey:TIKeyboardAutocapitalizationPreference];
  }
}

- (void)setAutomaticCapitalization:(id)capitalization
{
  capitalizationCopy = capitalization;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "XPCSERVICE - Automatic capitalization", v5, 2u);
  }

  if (capitalizationCopy)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100003828();
    }

    v4 = +[TIPreferencesController sharedPreferencesController];
    [v4 setValue:capitalizationCopy forPreferenceKey:TIHWKeyboardAutocapitalizationPreference];
  }
}

- (void)setAutomaticPeriod:(id)period
{
  periodCopy = period;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "XPCSERVICE - Automatic period", v5, 2u);
  }

  if (periodCopy)
  {
    v4 = +[TIPreferencesController sharedPreferencesController];
    [v4 setValue:periodCopy forPreferenceKey:TIHWKeyboardPeriodShortcutPreference];
  }
}

- (void)setKeyboardCheckSpelling:(id)spelling
{
  spellingCopy = spelling;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "XPCSERVICE - KeyboardCheckSpellingPreference", v5, 2u);
  }

  if (spellingCopy)
  {
    v4 = +[TIPreferencesController sharedPreferencesController];
    [v4 setValue:spellingCopy forPreferenceKey:TIKeyboardCheckSpellingPreference];
  }
}

- (void)setSmartQuotesEnabled:(id)enabled
{
  enabledCopy = enabled;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "XPCSERVICE - SmartQuotesEnabledPreference", v5, 2u);
  }

  if (enabledCopy)
  {
    v4 = +[TIPreferencesController sharedPreferencesController];
    [v4 setValue:enabledCopy forPreferenceKey:TISmartQuotesEnabledPreference];
  }
}

- (void)setSmartDashesEnabled:(id)enabled
{
  enabledCopy = enabled;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "XPCSERVICE - SmartDashesEnabledPreference", v5, 2u);
  }

  if (enabledCopy)
  {
    v4 = +[TIPreferencesController sharedPreferencesController];
    [v4 setValue:enabledCopy forPreferenceKey:TISmartDashesEnabledPreference];
  }
}

- (void)setKeyboardCapsLock:(id)lock
{
  lockCopy = lock;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "XPCSERVICE - KeyboardCapsLockPreference", v5, 2u);
  }

  if (lockCopy)
  {
    v4 = +[TIPreferencesController sharedPreferencesController];
    [v4 setValue:lockCopy forPreferenceKey:TIKeyboardCapsLockPreference];
  }
}

- (void)setKeyboardContinuousPathEnabled:(id)enabled
{
  enabledCopy = enabled;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "XPCSERVICE - KeyboardContinuousPathEnabledPreference", v5, 2u);
  }

  if (enabledCopy)
  {
    v4 = +[TIPreferencesController sharedPreferencesController];
    [v4 setValue:enabledCopy forPreferenceKey:TIKeyboardContinuousPathEnabledPreference];
  }
}

- (void)setKeyboardContinuousPathDeleteWholeWord:(id)word
{
  wordCopy = word;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "XPCSERVICE - KeyboardContinuousPathDeleteWholeWordPreference", v5, 2u);
  }

  if (wordCopy)
  {
    v4 = +[TIPreferencesController sharedPreferencesController];
    [v4 setValue:wordCopy forPreferenceKey:TIKeyboardContinuousPathDeleteWholeWordPreference];
  }
}

- (void)setKeyboardAllowPaddle:(id)paddle
{
  paddleCopy = paddle;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "XPCSERVICE - KeyboardAllowPaddlePreference", v5, 2u);
  }

  if (paddleCopy)
  {
    v4 = +[TIPreferencesController sharedPreferencesController];
    [v4 setValue:paddleCopy forPreferenceKey:TIKeyboardAllowPaddlePreference];
  }
}

- (void)setKeyboardPeriodShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "XPCSERVICE - KeyboardPeriodShortcutPreference", v5, 2u);
  }

  if (shortcutCopy)
  {
    v4 = +[TIPreferencesController sharedPreferencesController];
    [v4 setValue:shortcutCopy forPreferenceKey:TIKeyboardPeriodShortcutPreference];
  }
}

- (void)setKeyboardPrediction:(id)prediction
{
  predictionCopy = prediction;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "XPCSERVICE - KeyboardPredictionPreference", v5, 2u);
  }

  if (predictionCopy)
  {
    v4 = +[TIPreferencesController sharedPreferencesController];
    [v4 setValue:predictionCopy forPreferenceKey:TIKeyboardPredictionPreference];
  }
}

- (void)setSpaceConfirmation:(id)confirmation
{
  confirmationCopy = confirmation;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "XPCSERVICE - SpaceConfirmationPreference", v5, 2u);
  }

  if (confirmationCopy)
  {
    v4 = +[TIPreferencesController sharedPreferencesController];
    [v4 setValue:confirmationCopy forPreferenceKey:TISpaceConfirmationPreference];
  }
}

- (id)preferencesController
{
  v2 = +[TIPreferencesController sharedPreferencesController];
  [v2 synchronizePreferences];

  return v2;
}

- (id)fnKeyFunction
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IN SERVICE - HWKeyboardGlobeAsEmojiKey", v8, 2u);
  }

  preferencesController = [(KeyboardSettingsMediator *)self preferencesController];
  v4 = [preferencesController BOOLForPreferenceKey:TIHWKeyboardGlobeAsEmojiKeyPreference];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [NSNumber numberWithInteger:v5];

  return v6;
}

- (id)textInputMenu
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IN SERVICE - Text input menu", v13, 2u);
  }

  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.TextInputMenu"];
  v3 = [v2 BOOLForKey:@"visible"];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100003898(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = [NSNumber numberWithBool:v3];

  return v11;
}

- (id)capsLockSwitch
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IN SERVICE - HWKeyboardCapsLockRomanSwitch", v7, 2u);
  }

  preferencesController = [(KeyboardSettingsMediator *)self preferencesController];
  v4 = [preferencesController BOOLForPreferenceKey:TIHWKeyboardCapsLockRomanSwitchPreference];

  v5 = [NSNumber numberWithBool:v4];

  return v5;
}

- (id)automaticSpellingCorrection
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IN SERVICE - HWKeyboardAutocorrection", v7, 2u);
  }

  preferencesController = [(KeyboardSettingsMediator *)self preferencesController];
  v4 = [preferencesController BOOLForPreferenceKey:TIHWKeyboardAutocorrectionPreference];

  v5 = [NSNumber numberWithBool:v4];

  return v5;
}

- (id)automaticCapitalization
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IN SERVICE - HWKeyboardAutocapitalization", v7, 2u);
  }

  preferencesController = [(KeyboardSettingsMediator *)self preferencesController];
  v4 = [preferencesController BOOLForPreferenceKey:TIHWKeyboardAutocapitalizationPreference];

  v5 = [NSNumber numberWithBool:v4];

  return v5;
}

- (id)automaticPeriod
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IN SERVICE - HWKeyboardPeriodShortcut", v7, 2u);
  }

  preferencesController = [(KeyboardSettingsMediator *)self preferencesController];
  v4 = [preferencesController BOOLForPreferenceKey:TIHWKeyboardPeriodShortcutPreference];

  v5 = [NSNumber numberWithBool:v4];

  return v5;
}

- (id)singleQuoteOption
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IN SERVICE - Single Quote option", v6, 2u);
  }

  v2 = CFPreferencesCopyAppValue(@"KB_SingleQuoteOption", kCFPreferencesAnyApplication);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (id)doubleQuoteOption
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IN SERVICE - Double Quote option", v6, 2u);
  }

  v2 = CFPreferencesCopyAppValue(@"KB_DoubleQuoteOption", kCFPreferencesAnyApplication);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (id)dictationLanguages
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IN SERVICE - Dictation languages", v7, 2u);
  }

  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v2 preferencesActions];
  v4 = [preferencesActions valueForPreferenceKey:UIDictationLanguagesEnabled];

  v8 = v4;
  v5 = [NSArray arrayWithObjects:&v8 count:1];

  return v5;
}

- (id)dictationShortcut
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IN SERVICE - Dictation shortcut", v8, 2u);
  }

  preferencesController = [(KeyboardSettingsMediator *)self preferencesController];
  v4 = [preferencesController valueForPreferenceKey:TIHWKeyboardDictationShortcutPreference];
  integerValue = [v4 integerValue];

  if (integerValue + 1 > 2)
  {
    v6 = 0;
  }

  else
  {
    v9 = (&off_100008238)[integerValue + 1];
    v6 = [NSArray arrayWithObjects:&v9 count:1];
  }

  return v6;
}

- (id)keyboardAutocorrection
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IN SERVICE - TIKeyboardAutocorrectionPreference", v7, 2u);
  }

  preferencesController = [(KeyboardSettingsMediator *)self preferencesController];
  v4 = [preferencesController BOOLForPreferenceKey:TIKeyboardAutocorrectionPreference];

  v5 = [NSNumber numberWithBool:v4];

  return v5;
}

- (id)keyboardAutocapitalization
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IN SERVICE - TIKeyboardAutocapitalizationPreference", v7, 2u);
  }

  preferencesController = [(KeyboardSettingsMediator *)self preferencesController];
  v4 = [preferencesController BOOLForPreferenceKey:TIKeyboardAutocapitalizationPreference];

  v5 = [NSNumber numberWithBool:v4];

  return v5;
}

- (id)KeyboardCheckSpelling
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IN SERVICE - KeyboardCheckSpelling", v7, 2u);
  }

  preferencesController = [(KeyboardSettingsMediator *)self preferencesController];
  v4 = [preferencesController BOOLForPreferenceKey:TIKeyboardCheckSpellingPreference];

  v5 = [NSNumber numberWithBool:v4];

  return v5;
}

- (id)smartQuotesEnabled
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IN SERVICE - SmartQuotesEnabled", v7, 2u);
  }

  preferencesController = [(KeyboardSettingsMediator *)self preferencesController];
  v4 = [preferencesController BOOLForPreferenceKey:TISmartQuotesEnabledPreference];

  v5 = [NSNumber numberWithBool:v4];

  return v5;
}

- (id)smartDashesEnabled
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IN SERVICE - SmartQuotesEnabled", v7, 2u);
  }

  preferencesController = [(KeyboardSettingsMediator *)self preferencesController];
  v4 = [preferencesController BOOLForPreferenceKey:TISmartDashesEnabledPreference];

  v5 = [NSNumber numberWithBool:v4];

  return v5;
}

- (id)keyboardCapsLock
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IN SERVICE - KeyboardCapsLock", v7, 2u);
  }

  preferencesController = [(KeyboardSettingsMediator *)self preferencesController];
  v4 = [preferencesController BOOLForPreferenceKey:TIKeyboardCapsLockPreference];

  v5 = [NSNumber numberWithBool:v4];

  return v5;
}

- (id)keyboardContinuousPathEnabled
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IN SERVICE - KeyboardContinuousPathEnabled", v7, 2u);
  }

  preferencesController = [(KeyboardSettingsMediator *)self preferencesController];
  v4 = [preferencesController BOOLForPreferenceKey:TIKeyboardContinuousPathEnabledPreference];

  v5 = [NSNumber numberWithBool:v4];

  return v5;
}

- (id)keyboardContinuousPathDeleteWholeWord
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IN SERVICE - KeyboardContinuousPathDeleteWholeWord", v7, 2u);
  }

  preferencesController = [(KeyboardSettingsMediator *)self preferencesController];
  v4 = [preferencesController BOOLForPreferenceKey:TIKeyboardContinuousPathDeleteWholeWordPreference];

  v5 = [NSNumber numberWithBool:v4];

  return v5;
}

- (id)keyboardAllowPaddle
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IN SERVICE - KeyboardAllowPaddle", v7, 2u);
  }

  preferencesController = [(KeyboardSettingsMediator *)self preferencesController];
  v4 = [preferencesController BOOLForPreferenceKey:TIKeyboardAllowPaddlePreference];

  v5 = [NSNumber numberWithBool:v4];

  return v5;
}

- (id)keyboardPeriodShortcut
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IN SERVICE - KeyboardPeriodShortcut", v7, 2u);
  }

  preferencesController = [(KeyboardSettingsMediator *)self preferencesController];
  v4 = [preferencesController BOOLForPreferenceKey:TIKeyboardPeriodShortcutPreference];

  v5 = [NSNumber numberWithBool:v4];

  return v5;
}

- (id)keyboardPrediction
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IN SERVICE - KeyboardPrediction", v7, 2u);
  }

  preferencesController = [(KeyboardSettingsMediator *)self preferencesController];
  v4 = [preferencesController BOOLForPreferenceKey:TIKeyboardPredictionPreference];

  v5 = [NSNumber numberWithBool:v4];

  return v5;
}

- (id)spaceConfirmation
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IN SERVICE - SpaceConfirmation", v7, 2u);
  }

  preferencesController = [(KeyboardSettingsMediator *)self preferencesController];
  v4 = [preferencesController BOOLForPreferenceKey:TISpaceConfirmationPreference];

  v5 = [NSNumber numberWithBool:v4];

  return v5;
}

@end