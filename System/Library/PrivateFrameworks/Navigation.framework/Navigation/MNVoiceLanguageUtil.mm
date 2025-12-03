@interface MNVoiceLanguageUtil
+ (id)_uiVoiceLanguage;
+ (id)systemDefaultVoiceLanguage;
@end

@implementation MNVoiceLanguageUtil

+ (id)systemDefaultVoiceLanguage
{
  v24 = *MEMORY[0x1E69E9840];
  _uiVoiceLanguage = [self _uiVoiceLanguage];
  mEMORY[0x1E698D1C0] = [MEMORY[0x1E698D1C0] sharedPreferences];
  assistantIsEnabled = [mEMORY[0x1E698D1C0] assistantIsEnabled];

  if (!assistantIsEnabled)
  {
    languageCode = GetAudioLogForMNVoiceLanguageUtilCategory();
    if (os_log_type_enabled(languageCode, OS_LOG_TYPE_INFO))
    {
      v20 = 138543362;
      v21 = _uiVoiceLanguage;
      _os_log_impl(&dword_1D311E000, languageCode, OS_LOG_TYPE_INFO, "ⓥ Using UI language %{public}@ (Siri disabled)", &v20, 0xCu);
    }

    goto LABEL_15;
  }

  outputVoice = [MEMORY[0x1E698D0F8] outputVoice];
  languageCode = [outputVoice languageCode];

  v7 = GetAudioLogForMNVoiceLanguageUtilCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v20 = 138543362;
    v21 = languageCode;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEBUG, "ⓥ siriVoiceLanguage = %{public}@", &v20, 0xCu);
  }

  if (!languageCode)
  {
LABEL_15:
    v13 = _uiVoiceLanguage;
    goto LABEL_20;
  }

  v8 = [MEMORY[0x1E698D0F8] assistantIsSupportedForLanguageCode:_uiVoiceLanguage error:0];
  v9 = GetAudioLogForMNVoiceLanguageUtilCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = @"No";
    if (v8)
    {
      v10 = @"Yes";
    }

    v20 = 138543362;
    v21 = v10;
    _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_DEBUG, "ⓥ uiLanguageAvailableInSiri = %{public}@", &v20, 0xCu);
  }

  v11 = GetAudioLogForMNVoiceLanguageUtilCategory();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v12)
    {
      v20 = 138543618;
      v21 = languageCode;
      v22 = 2114;
      v23 = _uiVoiceLanguage;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_INFO, "ⓥ Using Siri language %{public}@ (UI-based language is %{public}@)", &v20, 0x16u);
    }

    v13 = languageCode;
    v11 = _uiVoiceLanguage;
  }

  else
  {
    if (v12)
    {
      v20 = 138543618;
      v21 = _uiVoiceLanguage;
      v22 = 2114;
      v23 = languageCode;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_INFO, "ⓥ Using UI language %{public}@ (Siri language is %{public}@)", &v20, 0x16u);
    }

    v13 = _uiVoiceLanguage;
  }

LABEL_20:
  v14 = [MEMORY[0x1E69A1E60] supportedPhoneticTypesForPhoneticLocaleID:v13];
  v15 = *MEMORY[0x1E69A19B0];
  v16 = *(MEMORY[0x1E69A19B0] + 8);
  GEOConfigSetArray();
  v17 = v13;

  v18 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (id)_uiVoiceLanguage
{
  v37 = *MEMORY[0x1E69E9840];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  preferredLocalizations = [mainBundle preferredLocalizations];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = preferredLocalizations;
  v25 = [v4 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (!v25)
  {

LABEL_20:
    v6 = @"en-US";
    goto LABEL_21;
  }

  v6 = 0;
  v24 = *v27;
  v7 = *MEMORY[0x1E695D9B0];
  *&v5 = 138543874;
  v23 = v5;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v27 != v24)
    {
      objc_enumerationMutation(v4);
    }

    v9 = *(*(&v26 + 1) + 8 * v8);
    v10 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:{v9, v23}];
    v11 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v10];
    v12 = [v11 objectForKey:v7];

    v13 = [MEMORY[0x1E69D32F0] fallbackLanguageFor:v10];
    v14 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v13];
    v15 = [v14 objectForKey:v7];

    v16 = GetAudioLogForMNVoiceLanguageUtilCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = v23;
      v31 = v9;
      v32 = 2114;
      v33 = v10;
      v34 = 2114;
      v35 = v13;
      _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_DEBUG, "ⓥ UI language %{public}@ (%{public}@) falls back to %{public}@", buf, 0x20u);
    }

    v17 = [v12 isEqualToString:@"yue"];
    v18 = [v13 isEqualToString:@"zh-HK"];
    if (!v6)
    {
      v6 = v13;
    }

    if ((v17 & v18 & 1) != 0 || [v15 isEqual:v12])
    {
      v19 = v13;

      v20 = 1;
      v6 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
      break;
    }

    if (v25 == ++v8)
    {
      v25 = [v4 countByEnumeratingWithState:&v26 objects:v36 count:16];
      if (v25)
      {
        goto LABEL_3;
      }

      break;
    }
  }

  if (!v6)
  {
    goto LABEL_20;
  }

LABEL_21:

  v21 = *MEMORY[0x1E69E9840];

  return v6;
}

@end