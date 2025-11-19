@interface AXLTLanguageAssetManager
+ (id)sharedInstance;
- (void)deleteSpeechAssetForTaskHint:(int64_t)a3;
- (void)downloadSpeechAssetForTaskHint:(int64_t)a3 progress:(id)a4 completion:(id)a5;
- (void)languageAssetAvaliableForTaskHint:(int64_t)a3 completion:(id)a4;
@end

@implementation AXLTLanguageAssetManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[AXLTLanguageAssetManager sharedInstance];
  }

  v3 = sharedInstance_languageAssetManager;

  return v3;
}

uint64_t __42__AXLTLanguageAssetManager_sharedInstance__block_invoke()
{
  sharedInstance_languageAssetManager = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)languageAssetAvaliableForTaskHint:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = AXLogLiveTranscription();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(AXLTLanguageAssetManager *)v7 languageAssetAvaliableForTaskHint:v8 completion:v9, v10, v11, v12, v13, v14];
  }

  v15 = MEMORY[0x277CDCEB8];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __73__AXLTLanguageAssetManager_languageAssetAvaliableForTaskHint_completion___block_invoke;
  v17[3] = &unk_27981C9F8;
  v17[4] = self;
  v18 = v6;
  v16 = v6;
  [v15 installedLanguagesForTaskHint:a3 completion:v17];
}

void __73__AXLTLanguageAssetManager_languageAssetAvaliableForTaskHint_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v7 = [v3 locale];
    v5 = [v7 localeIdentifier];
    v6 = [v4 containsObject:v5];

    (*(v2 + 16))(v2, v6);
  }
}

- (void)downloadSpeechAssetForTaskHint:(int64_t)a3 progress:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__AXLTLanguageAssetManager_downloadSpeechAssetForTaskHint_progress_completion___block_invoke;
  v12[3] = &unk_27981CA70;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v15 = a3;
  v10 = v9;
  v11 = v8;
  [(AXLTLanguageAssetManager *)self languageAssetAvaliableForTaskHint:a3 completion:v12];
}

void __79__AXLTLanguageAssetManager_downloadSpeechAssetForTaskHint_progress_completion___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = AXLogLiveTranscription();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __79__AXLTLanguageAssetManager_downloadSpeechAssetForTaskHint_progress_completion___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    v11 = objc_alloc(MEMORY[0x277CDCE88]);
    v12 = [*(a1 + 32) locale];
    v13 = [v12 localeIdentifier];
    v14 = [v11 initWithLanguage:v13 taskHint:*(a1 + 56)];

    v15 = MEMORY[0x277CDCEB8];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __79__AXLTLanguageAssetManager_downloadSpeechAssetForTaskHint_progress_completion___block_invoke_287;
    v18[3] = &unk_27981CA20;
    v19 = *(a1 + 40);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __79__AXLTLanguageAssetManager_downloadSpeechAssetForTaskHint_progress_completion___block_invoke_2;
    v16[3] = &unk_27981CA48;
    v17 = *(a1 + 48);
    [v15 fetchAssetWithConfig:v14 clientIdentifier:@"AccessibilityLiveCaptions" progress:v18 completion:v16];
  }
}

uint64_t __79__AXLTLanguageAssetManager_downloadSpeechAssetForTaskHint_progress_completion___block_invoke_287(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __79__AXLTLanguageAssetManager_downloadSpeechAssetForTaskHint_progress_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (void)deleteSpeechAssetForTaskHint:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__AXLTLanguageAssetManager_deleteSpeechAssetForTaskHint___block_invoke;
  v3[3] = &unk_27981CA98;
  v3[4] = self;
  v3[5] = a3;
  [(AXLTLanguageAssetManager *)self languageAssetAvaliableForTaskHint:a3 completion:v3];
}

void __57__AXLTLanguageAssetManager_deleteSpeechAssetForTaskHint___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = AXLogLiveTranscription();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __57__AXLTLanguageAssetManager_deleteSpeechAssetForTaskHint___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    v11 = objc_alloc(MEMORY[0x277CDCE88]);
    v12 = [*(a1 + 32) locale];
    v13 = [v12 localeIdentifier];
    v14 = [v11 initWithLanguage:v13 taskHint:*(a1 + 40)];

    [MEMORY[0x277CDCEB8] unsubscribeFromAssetWithConfig:v14 clientIdentifier:@"AccessibilityLiveCaptions" error:0];
  }
}

@end