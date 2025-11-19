@interface CoreSpeechXPC
+ (id)accessoryModelTypeToString:(int64_t)a3;
+ (void)logLanguageMismatchMetricWithJarvisSelectedLocale:(id)a3 jarvisTriggerMode:(int64_t)a4;
- (CoreSpeechXPC)initWithFakeMonitor:(id)a3;
- (id)getAccessoryFallbackFamilyLocal:(id)a3 fromLocaleMap:(id)a4;
- (id)getAccessoryFallbackLocalTable;
- (id)selectFallbackModelForLocale:(id)a3 downloadedModels:(id)a4 preinstalledModels:(id)a5 rtLocaleMap:(id)a6;
- (void)_fetchVoiceTriggerInstalledAssetWithLanguage:(id)a3 completion:(id)a4;
- (void)_handleFakeHearstModelRequest:(id)a3 majorVersion:(unint64_t)a4 minorVersion:(unint64_t)a5 downloadedModels:(id)a6 preinstalledModels:(id)a7 completion:(id)a8;
- (void)fetchRemoteVoiceTriggerAssetForLanguageCode:(id)a3 completion:(id)a4;
- (void)installedVoiceTriggerAssetForLanguageCode:(id)a3 completion:(id)a4;
- (void)supportsMultiPhraseVoiceTriggerForEngineVersion:(id)a3 engineMinorVersion:(id)a4 accessoryRTModelType:(id)a5 completion:(id)a6;
- (void)voiceTriggerJarvisLanguageList:(id)a3 jarvisSelectedLanguage:(id)a4 completion:(id)a5;
- (void)voiceTriggerRTModelWithRequestOptions:(id)a3 downloadedModels:(id)a4 preinstalledModels:(id)a5 completion:(id)a6;
@end

@implementation CoreSpeechXPC

- (void)supportsMultiPhraseVoiceTriggerForEngineVersion:(id)a3 engineMinorVersion:(id)a4 accessoryRTModelType:(id)a5 completion:(id)a6
{
  v18 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[CoreSpeechXPC supportsMultiPhraseVoiceTriggerForEngineVersion:engineMinorVersion:accessoryRTModelType:completion:]";
    _os_log_impl(&dword_222E4D000, v13, OS_LOG_TYPE_DEFAULT, "%s ", &v16, 0xCu);
  }

  v14 = [MEMORY[0x277D015F8] supportsMultiPhraseVoiceTriggerForEngineVersion:v9 engineMinorVersion:v10 accessoryRTModelType:v11];
  if (v12)
  {
    v12[2](v12, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_fetchVoiceTriggerInstalledAssetWithLanguage:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (!CSIsInternalBuild())
  {
LABEL_9:
    v15 = [MEMORY[0x277D018D0] sharedInstance];

    if (v15)
    {
      v16 = [MEMORY[0x277D018D0] sharedInstance];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __73__CoreSpeechXPC__fetchVoiceTriggerInstalledAssetWithLanguage_completion___block_invoke;
      v20[3] = &unk_2784C6B28;
      v22 = v6;
      v21 = v5;
      [v16 getInstalledAssetofType:0 forLocale:v21 completion:v20];

      v8 = v22;
    }

    else
    {
      v8 = +[CSAssetController sharedController];
      [v8 installedAssetOfType:0 language:v5 completion:v6];
    }

    goto LABEL_18;
  }

  v7 = [MEMORY[0x277D01788] sharedPreferences];
  v8 = [v7 fakeVoiceTriggerAudioAccessoryFirstPassAssetPath];

  v9 = MEMORY[0x277D015D8];
  v10 = *MEMORY[0x277D015D8];
  v11 = *MEMORY[0x277D015D8];
  if (!v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v24 = "[CoreSpeechXPC _fetchVoiceTriggerInstalledAssetWithLanguage:completion:]";
      _os_log_debug_impl(&dword_222E4D000, v10, OS_LOG_TYPE_DEBUG, "%s Overriding audio accessory first pass asset is nil", buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v24 = "[CoreSpeechXPC _fetchVoiceTriggerInstalledAssetWithLanguage:completion:]";
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&dword_222E4D000, v10, OS_LOG_TYPE_DEFAULT, "%s Overridden audio accessory first pass asset path: %@", buf, 0x16u);
  }

  v12 = [v8 stringByDeletingLastPathComponent];
  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [v13 fileExistsAtPath:v8];

  if (v14)
  {
    [MEMORY[0x277D015F8] assetForAssetType:0 resourcePath:v12 configVersion:@"override-asset" assetProvider:1];
  }

  else
  {
    [MEMORY[0x277D015F8] defaultFallBackAssetForVoiceTrigger];
  }
  v17 = ;
  v18 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v24 = "[CoreSpeechXPC _fetchVoiceTriggerInstalledAssetWithLanguage:completion:]";
    v25 = 2112;
    v26 = v17;
    _os_log_impl(&dword_222E4D000, v18, OS_LOG_TYPE_DEFAULT, "%s Fake asset: %@", buf, 0x16u);
  }

  if (v6)
  {
    (*(v6 + 2))(v6, v17, 0);
  }

LABEL_18:
  v19 = *MEMORY[0x277D85DE8];
}

void __73__CoreSpeechXPC__fetchVoiceTriggerInstalledAssetWithLanguage_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = "[CoreSpeechXPC _fetchVoiceTriggerInstalledAssetWithLanguage:completion:]_block_invoke";
      _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_INFO, "%s Trial assets not available, fallback to MA assets", &v12, 0xCu);
    }

    v10 = +[CSAssetController sharedController];
    [v10 installedAssetOfType:0 language:*(a1 + 32) completion:*(a1 + 40)];
  }

  else
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, v5, 0);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)selectFallbackModelForLocale:(id)a3 downloadedModels:(id)a4 preinstalledModels:(id)a5 rtLocaleMap:(id)a6
{
  v42 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v30 = a5;
  v11 = a6;
  v12 = [(CoreSpeechXPC *)self getAccessoryFallbackFamilyLocal:a3 fromLocaleMap:v11];
  v36 = 0u;
  v37 = 0u;
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = @"en-US";
  }

  v38 = 0uLL;
  v39 = 0uLL;
  v14 = v10;
  v15 = [v14 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v37;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v36 + 1) + 8 * i);
        v20 = [v19 modelLocale];
        v21 = [(CoreSpeechXPC *)self getAccessoryFallbackFamilyLocal:v20 fromLocaleMap:v11];

        if (([(__CFString *)v13 isEqualToString:v21]& 1) != 0)
        {
          obj = v14;
          goto LABEL_22;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v30;
  v22 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v33;
LABEL_14:
    v25 = 0;
    while (1)
    {
      if (*v33 != v24)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v32 + 1) + 8 * v25);
      v26 = [v19 modelLocale];
      v21 = [(CoreSpeechXPC *)self getAccessoryFallbackFamilyLocal:v26 fromLocaleMap:v11];

      if (([(__CFString *)v13 isEqualToString:v21]& 1) != 0)
      {
        break;
      }

      if (v23 == ++v25)
      {
        v23 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v23)
        {
          goto LABEL_14;
        }

        goto LABEL_20;
      }
    }

LABEL_22:
    v27 = v19;
  }

  else
  {
LABEL_20:
    v27 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)getAccessoryFallbackFamilyLocal:(id)a3 fromLocaleMap:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v12 = [v6 objectForKeyedSubscript:{v11, 0}];
        v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v21;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v21 != v15)
              {
                objc_enumerationMutation(v12);
              }

              if ([v5 isEqualToString:*(*(&v20 + 1) + 8 * j)])
              {
                v17 = v11;

                goto LABEL_19;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
      v17 = 0;
    }

    while (v8);
  }

  else
  {
    v17 = 0;
  }

LABEL_19:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)getAccessoryFallbackLocalTable
{
  if (getAccessoryFallbackLocalTable_onceToken != -1)
  {
    dispatch_once(&getAccessoryFallbackLocalTable_onceToken, &__block_literal_global_20464);
  }

  v3 = getAccessoryFallbackLocalTable_table;

  return v3;
}

void __47__CoreSpeechXPC_getAccessoryFallbackLocalTable__block_invoke()
{
  v0 = getAccessoryFallbackLocalTable_table;
  getAccessoryFallbackLocalTable_table = &unk_283667A30;
}

- (void)voiceTriggerJarvisLanguageList:(id)a3 jarvisSelectedLanguage:(id)a4 completion:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __82__CoreSpeechXPC_voiceTriggerJarvisLanguageList_jarvisSelectedLanguage_completion___block_invoke;
  v24[3] = &unk_2784C5738;
  v11 = v9;
  v25 = v11;
  v12 = v10;
  v26 = v12;
  v13 = MEMORY[0x223DD26C0](v24);
  if (v8 | v11)
  {
    v16 = [MEMORY[0x277D018F8] getSiriLanguageWithFallback:@"en-US"];
    v17 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v28 = "[CoreSpeechXPC voiceTriggerJarvisLanguageList:jarvisSelectedLanguage:completion:]";
      v29 = 2114;
      v30 = v16;
      _os_log_impl(&dword_222E4D000, v17, OS_LOG_TYPE_DEFAULT, "%s current Siri language code : %{public}@", buf, 0x16u);
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __82__CoreSpeechXPC_voiceTriggerJarvisLanguageList_jarvisSelectedLanguage_completion___block_invoke_24;
    v19[3] = &unk_2784C5760;
    v19[4] = self;
    v20 = v16;
    v21 = v11;
    v23 = v13;
    v22 = v8;
    v15 = v16;
    [(CoreSpeechXPC *)self _fetchVoiceTriggerInstalledAssetWithLanguage:v15 completion:v19];
  }

  else
  {
    v14 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v28 = "[CoreSpeechXPC voiceTriggerJarvisLanguageList:jarvisSelectedLanguage:completion:]";
      _os_log_error_impl(&dword_222E4D000, v14, OS_LOG_TYPE_ERROR, "%s Language list and jarvis language not provided", buf, 0xCu);
    }

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:403 userInfo:0];
    (v13)[2](v13, 0, v15);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __82__CoreSpeechXPC_voiceTriggerJarvisLanguageList_jarvisSelectedLanguage_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 description];
    v16 = 136315650;
    v17 = "[CoreSpeechXPC voiceTriggerJarvisLanguageList:jarvisSelectedLanguage:completion:]_block_invoke";
    v18 = 2114;
    v19 = v5;
    v20 = 2114;
    v21 = v9;
    _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_DEFAULT, "%s Select keyword language as %{public}@, error : %{public}@", &v16, 0x20u);
  }

  v10 = [MEMORY[0x277D017B0] sharedInstance];
  v11 = v10;
  if (v5)
  {
    [v10 setTriggerMode:1];

    if ([*(a1 + 32) isEqualToString:v5])
    {
      goto LABEL_8;
    }

    v12 = v5;
    v13 = 1;
  }

  else
  {
    [v10 setTriggerMode:2];

    v12 = *(a1 + 32);
    v13 = 2;
  }

  [CoreSpeechXPC logLanguageMismatchMetricWithJarvisSelectedLocale:v12 jarvisTriggerMode:v13];
LABEL_8:
  v14 = *(a1 + 40);
  if (v14)
  {
    (*(v14 + 16))(v14, v5, v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __82__CoreSpeechXPC_voiceTriggerJarvisLanguageList_jarvisSelectedLanguage_completion___block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      v26 = v7;
      v27 = [v6 localizedDescription];
      *buf = 136315394;
      v41 = "[CoreSpeechXPC voiceTriggerJarvisLanguageList:jarvisSelectedLanguage:completion:]_block_invoke";
      v42 = 2114;
      v43 = v27;
      _os_log_error_impl(&dword_222E4D000, v26, OS_LOG_TYPE_ERROR, "%s VoiceTriggerAsset is not available : %{public}@", buf, 0x16u);
    }
  }

  v8 = [v5 jarvisRTModelLocaleMap];
  if (!v8)
  {
    v9 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v41 = "[CoreSpeechXPC voiceTriggerJarvisLanguageList:jarvisSelectedLanguage:completion:]_block_invoke";
      _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_DEFAULT, "%s Jarvis locale map is nil, fallback to embedded locale map", buf, 0xCu);
    }

    v8 = [*(a1 + 32) getAccessoryFallbackLocalTable];
  }

  if ([*(a1 + 40) isEqualToString:*(a1 + 48)])
  {
    v10 = *(a1 + 48);
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v11 = *(a1 + 56);
    v12 = [v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v35;
      while (2)
      {
        v15 = 0;
        do
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(v11);
          }

          if ([*(*(&v34 + 1) + 8 * v15) isEqualToString:*(a1 + 40)])
          {
            (*(*(a1 + 64) + 16))();
            goto LABEL_33;
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v11 = [*(a1 + 32) getAccessoryFallbackFamilyLocal:*(a1 + 40) fromLocaleMap:v8];
    v16 = [*(a1 + 32) getAccessoryFallbackFamilyLocal:*(a1 + 48) fromLocaleMap:v8];
    if ([v16 isEqualToString:v11])
    {
      v17 = *(a1 + 48);
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v28 = v16;
      v29 = v6;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v18 = *(a1 + 56);
      v19 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v31;
        while (2)
        {
          v22 = 0;
          do
          {
            if (*v31 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = [*(a1 + 32) getAccessoryFallbackFamilyLocal:*(*(&v30 + 1) + 8 * v22) fromLocaleMap:{v8, v28, v29, v30}];
            if ([v23 isEqualToString:v11])
            {
              (*(*(a1 + 64) + 16))();

              goto LABEL_31;
            }

            ++v22;
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v24 = *(a1 + 64);
      v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:404 userInfo:0];
      (*(v24 + 16))(v24, 0, v18);
LABEL_31:

      v16 = v28;
      v6 = v29;
    }

LABEL_33:
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)voiceTriggerRTModelWithRequestOptions:(id)a3 downloadedModels:(id)a4 preinstalledModels:(id)a5 completion:(id)a6
{
  v95 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v51 = a5;
  v11 = a6;
  v12 = [v9 accessoryModelType];
  v13 = [v12 integerValue];

  v14 = [v9 engineMajorVersion];
  v15 = [v14 unsignedIntegerValue];

  v16 = [v9 engineMinorVersion];
  v17 = [v16 unsignedIntegerValue];

  v18 = MEMORY[0x277D015D8];
  v19 = *MEMORY[0x277D015D8];
  v61 = v13;
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    v21 = [CoreSpeechXPC accessoryModelTypeToString:v13];
    v22 = [v9 accessoryInfo];
    *buf = 136316162;
    v86 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]";
    v87 = 2114;
    v88 = v21;
    v89 = 1026;
    v90 = v15;
    v91 = 1026;
    v92 = v17;
    v93 = 2112;
    v94 = v22;
    _os_log_impl(&dword_222E4D000, v20, OS_LOG_TYPE_DEFAULT, "%s Received a request for VoiceTriggerRTModel %{public}@ Firmware Version : %{public}d.%{public}d Accessory Info:%@", buf, 0x2Cu);

    v13 = v61;
  }

  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = __102__CoreSpeechXPC_voiceTriggerRTModelWithRequestOptions_downloadedModels_preinstalledModels_completion___block_invoke;
  v80[3] = &unk_2784C56E8;
  v82 = v13;
  v56 = v11;
  v81 = v56;
  v55 = MEMORY[0x223DD26C0](v80);
  v23 = [v9 siriLocale];
  v54 = v23;
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = [MEMORY[0x277D018F8] getSiriLanguageWithFallback:@"en-US"];
  }

  v25 = v24;
  v26 = *v18;
  if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v86 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]";
    v87 = 2114;
    v88 = v25;
    _os_log_impl(&dword_222E4D000, v26, OS_LOG_TYPE_DEFAULT, "%s Asking mobile asset with currentLanguageCode = %{public}@", buf, 0x16u);
    v26 = *v18;
  }

  v53 = v25;
  v58 = v15;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v86 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]";
    _os_log_impl(&dword_222E4D000, v26, OS_LOG_TYPE_DEFAULT, "%s DownloadModel : ", buf, 0xCu);
  }

  v57 = v17;
  v60 = v9;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v27 = v10;
  v28 = [v27 countByEnumeratingWithState:&v76 objects:v84 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v77;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v77 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *v18;
        if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
        {
          v33 = *(*(&v76 + 1) + 8 * i);
          *buf = 136315394;
          v86 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]";
          v87 = 2114;
          v88 = v33;
          _os_log_impl(&dword_222E4D000, v32, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v76 objects:v84 count:16];
    }

    while (v29);
  }

  v52 = v27;

  v34 = *v18;
  if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v86 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]";
    _os_log_impl(&dword_222E4D000, v34, OS_LOG_TYPE_DEFAULT, "%s preinstalledModels : ", buf, 0xCu);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v35 = v51;
  v36 = [v35 countByEnumeratingWithState:&v72 objects:v83 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v73;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v73 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *v18;
        if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
        {
          v41 = *(*(&v72 + 1) + 8 * j);
          *buf = 136315394;
          v86 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]";
          v87 = 2114;
          v88 = v41;
          _os_log_impl(&dword_222E4D000, v40, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }
      }

      v37 = [v35 countByEnumeratingWithState:&v72 objects:v83 count:16];
    }

    while (v37);
  }

  v42 = v61;
  if (v61 || ([MEMORY[0x277D01788] sharedPreferences], v48 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v48, "fakeHearstModelPath"), v47 = objc_claimAutoreleasedReturnValue(), v48, v42 = 0, !v47))
  {
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __102__CoreSpeechXPC_voiceTriggerRTModelWithRequestOptions_downloadedModels_preinstalledModels_completion___block_invoke_20;
    v62[3] = &unk_2784C5710;
    v43 = v55;
    v68 = v55;
    v44 = v60;
    v63 = v60;
    v45 = v53;
    v69 = v42;
    v64 = v53;
    v65 = self;
    v46 = v52;
    v66 = v52;
    v67 = v35;
    v70 = v58;
    v71 = v57;
    [(CoreSpeechXPC *)self _fetchVoiceTriggerInstalledAssetWithLanguage:v64 completion:v62];

    v47 = v68;
  }

  else
  {
    v49 = *v18;
    v44 = v60;
    v46 = v52;
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v86 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]";
      v87 = 2114;
      v88 = v47;
      _os_log_impl(&dword_222E4D000, v49, OS_LOG_TYPE_DEFAULT, "%s Hearst Fake Model request switch turned on, executing stress test mode with fakeModelPath : %{public}@", buf, 0x16u);
    }

    v43 = v55;
    [(CoreSpeechXPC *)self _handleFakeHearstModelRequest:v47 majorVersion:v58 minorVersion:v57 downloadedModels:v52 preinstalledModels:v35 completion:v55];
    v45 = v53;
  }

  v50 = *MEMORY[0x277D85DE8];
}

void __102__CoreSpeechXPC_voiceTriggerRTModelWithRequestOptions_downloadedModels_preinstalledModels_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v16 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!*(a1 + 40))
  {
    if (v9)
    {
      v12 = [MEMORY[0x277D01788] sharedPreferences];
      v13 = [v9 modelHash];
      [v12 setHearstFirstPassModelVersion:v13];
    }

    if (v10)
    {
      v14 = [MEMORY[0x277D01788] sharedPreferences];
      [v14 setHearstSecondPassModelVersion:v10];
    }
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    (*(v15 + 16))(v15, v16, v9, v11);
  }
}

void __102__CoreSpeechXPC_voiceTriggerRTModelWithRequestOptions_downloadedModels_preinstalledModels_completion___block_invoke_20(uint64_t a1, void *a2, void *a3)
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277D015D8];
  if (v5)
  {
    v8 = [v5 rtModelWithRequestOptions:*(a1 + 32)];
    v9 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v11 = v9;
      v12 = [v5 resourcePath];
      v13 = [v5 configVersion];
      *buf = 136316162;
      v58 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]_block_invoke";
      v59 = 2112;
      *v60 = v10;
      *&v60[8] = 2112;
      *v61 = v12;
      *&v61[8] = 2112;
      *v62 = v13;
      *&v62[8] = 2112;
      v63 = v8;
      _os_log_impl(&dword_222E4D000, v11, OS_LOG_TYPE_DEFAULT, "%s Queried model for language:%@ path:%@ configVers:%@ model:%@", buf, 0x34u);
    }

    v14 = [v5 rtModelLocaleMapWithModelType:*(a1 + 80)];
    if (v14)
    {
      if (v8)
      {
LABEL_6:
        v44 = v14;
        v45 = v6;
        v46 = v5;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v15 = *(a1 + 56);
        v16 = [v15 countByEnumeratingWithState:&v51 objects:v56 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v52;
          while (2)
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v52 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v51 + 1) + 8 * i);
              v21 = [v20 modelHash];
              v22 = [v8 modelHash];
              v23 = [v21 isEqualToString:v22];

              if (v23)
              {
                v34 = *MEMORY[0x277D015D8];
                v6 = v45;
                if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v58 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]_block_invoke";
                  v59 = 2114;
                  *v60 = v20;
                  _os_log_impl(&dword_222E4D000, v34, OS_LOG_TYPE_DEFAULT, "%s Hash matched with downloadedModel : %{public}@, accessory will select this model", buf, 0x16u);
                }

                (*(*(a1 + 72) + 16))();
                v5 = v46;
LABEL_40:
                v14 = v44;
                goto LABEL_41;
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v51 objects:v56 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v15 = *(a1 + 64);
        v24 = [v15 countByEnumeratingWithState:&v47 objects:v55 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v48;
          while (2)
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v48 != v26)
              {
                objc_enumerationMutation(v15);
              }

              v28 = *(*(&v47 + 1) + 8 * j);
              v29 = [v28 modelHash];
              v30 = [v8 modelHash];
              v31 = [v29 isEqualToString:v30];

              if (v31)
              {
                v37 = *MEMORY[0x277D015D8];
                if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v58 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]_block_invoke";
                  v59 = 2114;
                  *v60 = v28;
                  _os_log_impl(&dword_222E4D000, v37, OS_LOG_TYPE_DEFAULT, "%s Hash matched with preinstalledModel : %{public}@, accessory will select this model", buf, 0x16u);
                }

                (*(*(a1 + 72) + 16))();
                v6 = v45;
                v5 = v46;
                goto LABEL_40;
              }
            }

            v25 = [v15 countByEnumeratingWithState:&v47 objects:v55 count:16];
            if (v25)
            {
              continue;
            }

            break;
          }
        }

        v14 = v44;
        v15 = [*(a1 + 48) selectFallbackModelForLocale:*(a1 + 40) downloadedModels:*(a1 + 56) preinstalledModels:*(a1 + 64) rtLocaleMap:v44];
        v32 = *MEMORY[0x277D015D8];
        if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v58 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]_block_invoke";
          v59 = 2114;
          *v60 = v8;
          *&v60[8] = 2114;
          *v61 = v15;
          _os_log_impl(&dword_222E4D000, v32, OS_LOG_TYPE_DEFAULT, "%s Ask for download : %{public}@, and use %{public}@ as fallback", buf, 0x20u);
        }

        (*(*(a1 + 72) + 16))();
        v6 = v45;
        v5 = v46;
        goto LABEL_41;
      }
    }

    else
    {
      v35 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v58 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]_block_invoke";
        _os_log_error_impl(&dword_222E4D000, v35, OS_LOG_TYPE_ERROR, "%s rtLocaleMap is nil fallback to embedded locale map", buf, 0xCu);
      }

      v14 = [*(a1 + 48) getAccessoryFallbackLocalTable];
      if (v8)
      {
        goto LABEL_6;
      }
    }

    v15 = [*(a1 + 48) selectFallbackModelForLocale:*(a1 + 40) downloadedModels:*(a1 + 56) preinstalledModels:*(a1 + 64) rtLocaleMap:v14];
    v36 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      v41 = *(a1 + 88);
      v42 = *(a1 + 96);
      v43 = *(a1 + 40);
      *buf = 136316162;
      v58 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]_block_invoke";
      v59 = 1026;
      *v60 = v41;
      *&v60[4] = 1026;
      *&v60[6] = v42;
      *v61 = 2114;
      *&v61[2] = v43;
      *v62 = 2114;
      *&v62[2] = v15;
      _os_log_error_impl(&dword_222E4D000, v36, OS_LOG_TYPE_ERROR, "%s accessoryRTBlobs are not available for the version(%{public}d.%{public}d) and locale:%{public}@, returning fallback model : %{public}@", buf, 0x2Cu);
    }

    (*(*(a1 + 72) + 16))();
LABEL_41:

    goto LABEL_42;
  }

  v33 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v39 = v33;
    v40 = [v6 localizedDescription];
    *buf = 136315394;
    v58 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]_block_invoke";
    v59 = 2114;
    *v60 = v40;
    _os_log_error_impl(&dword_222E4D000, v39, OS_LOG_TYPE_ERROR, "%s VoiceTriggerAsset is not available : %{public}@", buf, 0x16u);
  }

  (*(*(a1 + 72) + 16))();
LABEL_42:

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_handleFakeHearstModelRequest:(id)a3 majorVersion:(unint64_t)a4 minorVersion:(unint64_t)a5 downloadedModels:(id)a6 preinstalledModels:(id)a7 completion:(id)a8
{
  v89 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = a8;
  v16 = [MEMORY[0x277CCAA00] defaultManager];
  LOBYTE(a7) = [v16 fileExistsAtPath:v12];

  if (a7)
  {
    v17 = [v12 stringByAppendingPathComponent:@"fakeModel.json"];
    v18 = [MEMORY[0x277CCAA00] defaultManager];
    v19 = [v18 fileExistsAtPath:v17];

    if (v19)
    {
      v20 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v17];
      if (v20)
      {
        v21 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v20 options:0 error:0];
        if (v21)
        {
          v22 = v21;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v69 = self;
            v70 = v20;
            v71 = v17;
            v72 = v15;
            v73 = v14;
            v74 = v13;
            v23 = v22;
            v76 = [MEMORY[0x277CBEB18] array];
            v80 = 0u;
            v81 = 0u;
            v82 = 0u;
            v83 = 0u;
            v24 = v23;
            v25 = [v24 countByEnumeratingWithState:&v80 objects:v88 count:16];
            obj = v24;
            if (v25)
            {
              v26 = v25;
              v27 = *v81;
              do
              {
                for (i = 0; i != v26; ++i)
                {
                  if (*v81 != v27)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v29 = *(*(&v80 + 1) + 8 * i);
                  v30 = v12;
                  v31 = [v12 stringByAppendingPathComponent:{v29, v69}];
                  v32 = [MEMORY[0x277D015F8] assetForAssetType:0 resourcePath:v31 configVersion:v29];
                  v33 = [CSVoiceTriggerRTModelRequestOptions alloc];
                  v79[0] = MEMORY[0x277D85DD0];
                  v79[1] = 3221225472;
                  v79[2] = __120__CoreSpeechXPC__handleFakeHearstModelRequest_majorVersion_minorVersion_downloadedModels_preinstalledModels_completion___block_invoke;
                  v79[3] = &__block_descriptor_48_e56_v16__0___CSVoiceTriggerRTModelRequestOptionsMutablity__8l;
                  v79[4] = a4;
                  v79[5] = a5;
                  v34 = [(CSVoiceTriggerRTModelRequestOptions *)v33 initWithMutableBuilder:v79];
                  v35 = [v32 hearstRTModelWithRequestOptions:v34];
                  v36 = *MEMORY[0x277D015D8];
                  if (v35)
                  {
                    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      v85 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
                      v86 = 2114;
                      v87[0] = v35;
                      _os_log_impl(&dword_222E4D000, v36, OS_LOG_TYPE_DEFAULT, "%s Loading FakeModel : %{public}@", buf, 0x16u);
                    }

                    [v76 addObject:v35];
                  }

                  else if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    v85 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
                    v86 = 2114;
                    v87[0] = v31;
                    _os_log_error_impl(&dword_222E4D000, v36, OS_LOG_TYPE_ERROR, "%s Cannot create RTModel from %{public}@", buf, 0x16u);
                  }

                  v12 = v30;
                }

                v24 = obj;
                v26 = [obj countByEnumeratingWithState:&v80 objects:v88 count:16];
              }

              while (v26);
            }

            if ([v76 count] > 2)
            {
              if ([v76 count])
              {
                v46 = [v76 firstObject];
                v47 = [(CoreSpeechXPCFakeModelMonitor *)v69->_fakeAssetMonitor lastFakeModelUsedHash];
                if (v47)
                {
                  v48 = [(CoreSpeechXPCFakeModelMonitor *)v69->_fakeAssetMonitor shouldRollFakeModel];
                  v17 = v71;
                  if ([v76 count])
                  {
                    v49 = 0;
                    v38 = v46;
                    while (1)
                    {
                      v50 = [v76 objectAtIndexedSubscript:{v49, v69}];
                      v51 = [v50 modelHash];
                      v52 = [v47 isEqual:v51];

                      if (v52)
                      {
                        if (v48)
                        {
                          if (v49 < [v76 count] - 1)
                          {
                            v57 = [v76 objectAtIndexedSubscript:v49 + 1];

                            v38 = v57;
                            goto LABEL_53;
                          }
                        }

                        else
                        {
                          v53 = [v76 objectAtIndexedSubscript:v49];

                          v38 = v53;
                        }
                      }

                      if (++v49 >= [v76 count])
                      {
                        goto LABEL_53;
                      }
                    }
                  }

                  v38 = v46;
                }

                else
                {
                  v38 = [v76 firstObject];

                  v54 = *MEMORY[0x277D015D8];
                  v17 = v71;
                  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    v85 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
                    v86 = 2114;
                    v87[0] = v38;
                    _os_log_impl(&dword_222E4D000, v54, OS_LOG_TYPE_DEFAULT, "%s Using fake model for the first time : %{public}@", buf, 0x16u);
                  }
                }

LABEL_53:
                if (v38)
                {
                  v58 = *MEMORY[0x277D015D8];
                  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    v85 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
                    v86 = 2114;
                    v87[0] = v38;
                    _os_log_impl(&dword_222E4D000, v58, OS_LOG_TYPE_DEFAULT, "%s Using fake model : %{public}@", buf, 0x16u);
                  }

                  v59 = v69;
                  [(CoreSpeechXPCFakeModelMonitor *)v69->_fakeAssetMonitor setShouldRollFakeModel:0, v69];
                  fakeAssetMonitor = v59->_fakeAssetMonitor;
                  v61 = [v38 modelHash];
                  [(CoreSpeechXPCFakeModelMonitor *)fakeAssetMonitor setLastFakeModelUsedHash:v61];
                }
              }

              else
              {
                v38 = 0;
                v17 = v71;
              }

              v13 = v74;
              v62 = [v74 count];
              v63 = v74;
              v15 = v72;
              v14 = v73;
              if (v62 || (v64 = [v73 count], v63 = v73, v64))
              {
                v65 = [v63 objectAtIndex:0];
              }

              else
              {
                v65 = 0;
              }

              v66 = MEMORY[0x277D015D8];
              v67 = *MEMORY[0x277D015D8];
              if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v85 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
                v86 = 2114;
                v87[0] = v38;
                _os_log_impl(&dword_222E4D000, v67, OS_LOG_TYPE_DEFAULT, "%s %{public}@ fake model is selected for download", buf, 0x16u);
                v67 = *v66;
              }

              v20 = v70;
              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v85 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
                v86 = 2114;
                v87[0] = v65;
                _os_log_impl(&dword_222E4D000, v67, OS_LOG_TYPE_DEFAULT, "%s %{public}@ model is selected for fallback", buf, 0x16u);
              }

              (*(v72 + 2))(v72, v38, v65, @"fakeModel", 0);
            }

            else
            {
              v37 = *MEMORY[0x277D015D8];
              v14 = v73;
              v13 = v74;
              if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
              {
                v55 = v37;
                v56 = [v76 count];
                *buf = 136315650;
                v85 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
                v86 = 1026;
                LODWORD(v87[0]) = v56;
                WORD2(v87[0]) = 1026;
                *(v87 + 6) = 3;
                _os_log_error_impl(&dword_222E4D000, v55, OS_LOG_TYPE_ERROR, "%s fake model number(%{public}d) is less than minimum fake model number((%{public}d)", buf, 0x18u);
              }

              v38 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:410 userInfo:{0, v69}];
              v15 = v72;
              (*(v72 + 2))(v72, 0, 0, 0, v38);
              v17 = v71;
            }

            v22 = obj;
          }

          else
          {
            v44 = *MEMORY[0x277D015D8];
            if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v85 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
              v86 = 2114;
              v87[0] = v17;
              _os_log_error_impl(&dword_222E4D000, v44, OS_LOG_TYPE_ERROR, "%s Unable to parse fake model meta json : %{public}@", buf, 0x16u);
            }

            v45 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:409 userInfo:0];
            (*(v15 + 2))(v15, 0, 0, 0, v45);
          }
        }

        else
        {
          v42 = *MEMORY[0x277D015D8];
          if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v85 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
            v86 = 2114;
            v87[0] = v17;
            _os_log_error_impl(&dword_222E4D000, v42, OS_LOG_TYPE_ERROR, "%s Unable to parse fake model meta json : %{public}@", buf, 0x16u);
          }

          v43 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:409 userInfo:0];
          (*(v15 + 2))(v15, 0, 0, 0, v43);

          v22 = 0;
        }
      }

      else
      {
        v41 = *MEMORY[0x277D015D8];
        if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v85 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
          v86 = 2114;
          v87[0] = v17;
          _os_log_error_impl(&dword_222E4D000, v41, OS_LOG_TYPE_ERROR, "%s Unable to read fake model meta json : %{public}@", buf, 0x16u);
        }

        v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:409 userInfo:0];
        (*(v15 + 2))(v15, 0, 0, 0, v22);
      }
    }

    else
    {
      v40 = *MEMORY[0x277D015D8];
      if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v85 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
        v86 = 2114;
        v87[0] = v17;
        _os_log_error_impl(&dword_222E4D000, v40, OS_LOG_TYPE_ERROR, "%s fake model meta json does not exist : %{public}@", buf, 0x16u);
      }

      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:408 userInfo:0];
      (*(v15 + 2))(v15, 0, 0, 0, v20);
    }
  }

  else
  {
    v39 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v85 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
      v86 = 2114;
      v87[0] = v12;
      _os_log_error_impl(&dword_222E4D000, v39, OS_LOG_TYPE_ERROR, "%s Fake Model Path does not exist : %{public}@", buf, 0x16u);
    }

    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:407 userInfo:0];
    (*(v15 + 2))(v15, 0, 0, 0, v17);
  }

  v68 = *MEMORY[0x277D85DE8];
}

void __120__CoreSpeechXPC__handleFakeHearstModelRequest_majorVersion_minorVersion_downloadedModels_preinstalledModels_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = *(a1 + 32);
  v7 = a2;
  v5 = [v3 numberWithUnsignedInteger:v4];
  [v7 setEngineMajorVersion:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
  [v7 setEngineMinorVersion:v6];

  [v7 setSiriLocale:@"en-US"];
}

- (void)fetchRemoteVoiceTriggerAssetForLanguageCode:(id)a3 completion:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[CoreSpeechXPC fetchRemoteVoiceTriggerAssetForLanguageCode:completion:]";
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_DEFAULT, "%s Received a request for VoiceTrigger Asset for language code : %{public}@", &v9, 0x16u);
  }

  if (v6)
  {
    (*(v6 + 2))(v6, 0, 0, 0);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)installedVoiceTriggerAssetForLanguageCode:(id)a3 completion:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[CoreSpeechXPC installedVoiceTriggerAssetForLanguageCode:completion:]";
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_DEFAULT, "%s Received a request for VoiceTrigger Asset for language code : %{public}@", &v9, 0x16u);
  }

  if (v6)
  {
    (*(v6 + 2))(v6, 0, 0, 0);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (CoreSpeechXPC)initWithFakeMonitor:(id)a3
{
  v5 = a3;
  v8.receiver = self;
  v8.super_class = CoreSpeechXPC;
  v6 = [(CoreSpeechXPC *)&v8 init];
  if (v6)
  {
    CSLogInitIfNeeded();
    objc_storeStrong(&v6->_fakeAssetMonitor, a3);
  }

  return v6;
}

+ (void)logLanguageMismatchMetricWithJarvisSelectedLocale:(id)a3 jarvisTriggerMode:(int64_t)a4
{
  if ((a4 + 1) > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = dword_222FB8340[a4 + 1];
  }

  v6 = @"NA";
  if (a3)
  {
    v6 = a3;
  }

  v7 = MEMORY[0x277D587E0];
  v8 = v6;
  v16 = a3;
  v9 = objc_alloc_init(v7);
  [v9 setHasCarHeadUnitSelectedLocale:1];
  [v9 setCarHeadUnitSelectedLocale:v8];

  [v9 setHasCarplayTriggerMode:1];
  [v9 setCarplayTriggerMode:v5];
  v10 = objc_alloc_init(MEMORY[0x277D587F0]);
  v11 = objc_alloc_init(MEMORY[0x277D587F8]);
  v12 = objc_alloc(MEMORY[0x277D5AC78]);
  v13 = [MEMORY[0x277CCAD78] UUID];
  v14 = [v12 initWithNSUUID:v13];
  [v11 setMhId:v14];

  [v10 setEventMetadata:v11];
  [v10 setCarPlayLangaugeMismatched:v9];
  v15 = [MEMORY[0x277D552B8] sharedStream];
  [v15 emitMessage:v10];
}

+ (id)accessoryModelTypeToString:(int64_t)a3
{
  v3 = @"default";
  if (!a3)
  {
    v3 = @"Hearst";
  }

  if (a3 == 1)
  {
    return @"Remora";
  }

  else
  {
    return v3;
  }
}

@end