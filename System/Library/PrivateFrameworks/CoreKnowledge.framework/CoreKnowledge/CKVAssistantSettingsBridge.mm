@interface CKVAssistantSettingsBridge
+ (BOOL)isASRSupported;
+ (BOOL)isAssistantEnabled;
+ (BOOL)isDictationEnabled;
+ (BOOL)isSiriUODSupported;
+ (id)currentDictationLanguageCodes;
+ (id)currentSiriLanguageCode;
+ (id)getConformingSharedUserIds;
- (CKVAssistantSettingsBridge)init;
@end

@implementation CKVAssistantSettingsBridge

+ (BOOL)isDictationEnabled
{
  v2 = [MEMORY[0x1E698D1C0] sharedPreferences];
  v3 = [v2 dictationIsEnabled];

  return v3;
}

+ (BOOL)isAssistantEnabled
{
  v2 = [MEMORY[0x1E698D1C0] sharedPreferences];
  v3 = [v2 assistantIsEnabled];

  return v3;
}

+ (id)getConformingSharedUserIds
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "+[CKVAssistantSettingsBridge getConformingSharedUserIds]";
    _os_log_error_impl(&dword_1C8683000, v2, OS_LOG_TYPE_ERROR, "%s Unexpected call to getConformingSharedUserIds from non-tvOS platform, returning empty results", &v5, 0xCu);
  }

  v3 = [MEMORY[0x1E695DFD8] set];

  return v3;
}

+ (id)currentDictationLanguageCodes
{
  v2 = objc_alloc_init(MEMORY[0x1E697B9C0]);
  v3 = [v2 installationStatusForLanguagesWithAssetType:3];

  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__402;
  v11 = __Block_byref_object_dispose__403;
  v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__CKVAssistantSettingsBridge_currentDictationLanguageCodes__block_invoke;
  v6[3] = &unk_1E831E460;
  v6[4] = &v7;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __59__CKVAssistantSettingsBridge_currentDictationLanguageCodes__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (AFOfflineDictationStatusStringIsInstalled())
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }
}

+ (id)currentSiriLanguageCode
{
  v2 = [MEMORY[0x1E698D1C0] sharedPreferences];
  v3 = [v2 languageCode];

  if (![v3 length])
  {
    v4 = [MEMORY[0x1E698D1C0] sharedPreferences];
    v5 = [v4 bestSupportedLanguageCodeForLanguageCode:0];

    v3 = v5;
  }

  return v3;
}

+ (BOOL)isASRSupported
{
  v2 = AFDeviceSupportsSiriUOD();
  if (v2)
  {
    return 1;
  }

  return MEMORY[0x1EEDEE6E0](v2, v3);
}

+ (BOOL)isSiriUODSupported
{
  v2 = AFDeviceSupportsSiriUOD();
  if (v2)
  {
    return 1;
  }

  return MEMORY[0x1EEDEE750](v2, v3);
}

- (CKVAssistantSettingsBridge)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

@end