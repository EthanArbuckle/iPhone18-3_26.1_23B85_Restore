void sub_100001C88(id a1)
{
  qword_100022990 = objc_alloc_init(CSJarvisTriggerModeMonitor);

  _objc_release_x1();
}

void sub_100001F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001F84(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[CoreSpeechXPCFakeModelMonitor _registerForFakeAssetRollNotification]_block_invoke";
    v6 = 2112;
    v7 = @"com.apple.corespeech.fakeasset.rolling";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Received notification %@", &v4, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setShouldRollFakeModel:1];
}

uint64_t sub_1000020D8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result != -1)
  {
    return notify_cancel(result);
  }

  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_alloc_init(ServiceDelegate);
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

void sub_1000034FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "[CoreSpeechXPC _fetchVoiceTriggerInstalledAssetWithLanguage:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Trial assets not available, fallback to MA assets", &v11, 0xCu);
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
}

void sub_100003AD0(id a1)
{
  v1 = qword_1000229A8;
  qword_1000229A8 = &off_10001E080;
}

void sub_100003DC0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 description];
    v15 = 136315650;
    v16 = "[CoreSpeechXPC voiceTriggerJarvisLanguageList:jarvisSelectedLanguage:completion:]_block_invoke";
    v17 = 2114;
    v18 = v5;
    v19 = 2114;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Select keyword language as %{public}@, error : %{public}@", &v15, 0x20u);
  }

  v10 = +[CSJarvisTriggerModeMonitor sharedInstance];
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
}

void sub_100003F50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v25 = v7;
      v26 = [v6 localizedDescription];
      *buf = 136315394;
      v40 = "[CoreSpeechXPC voiceTriggerJarvisLanguageList:jarvisSelectedLanguage:completion:]_block_invoke";
      v41 = 2114;
      v42 = v26;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s VoiceTriggerAsset is not available : %{public}@", buf, 0x16u);
    }
  }

  v8 = [v5 jarvisRTModelLocaleMap];
  if (!v8)
  {
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v40 = "[CoreSpeechXPC voiceTriggerJarvisLanguageList:jarvisSelectedLanguage:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Jarvis locale map is nil, fallback to embedded locale map", buf, 0xCu);
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
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = *(a1 + 56);
    v12 = [v11 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v34;
      while (2)
      {
        v15 = 0;
        do
        {
          if (*v34 != v14)
          {
            objc_enumerationMutation(v11);
          }

          if ([*(*(&v33 + 1) + 8 * v15) isEqualToString:*(a1 + 40)])
          {
            (*(*(a1 + 64) + 16))();
            goto LABEL_33;
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v33 objects:v38 count:16];
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
      v27 = v16;
      v28 = v6;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v18 = *(a1 + 56);
      v19 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v30;
        while (2)
        {
          v22 = 0;
          do
          {
            if (*v30 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = [*(a1 + 32) getAccessoryFallbackFamilyLocal:*(*(&v29 + 1) + 8 * v22) fromLocaleMap:{v8, v27, v28, v29}];
            if ([v23 isEqualToString:v11])
            {
              (*(*(a1 + 64) + 16))();

              goto LABEL_31;
            }

            v22 = v22 + 1;
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v24 = *(a1 + 64);
      v18 = [NSError errorWithDomain:CSErrorDomain code:404 userInfo:0];
      (*(v24 + 16))(v24, 0, v18);
LABEL_31:

      v16 = v27;
      v6 = v28;
    }

LABEL_33:
  }
}

void sub_100004A5C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v16 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!*(a1 + 40))
  {
    if (v9)
    {
      v12 = +[CSFPreferences sharedPreferences];
      v13 = [v9 modelHash];
      [v12 setHearstFirstPassModelVersion:v13];
    }

    if (v10)
    {
      v14 = +[CSFPreferences sharedPreferences];
      [v14 setHearstSecondPassModelVersion:v10];
    }
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    (*(v15 + 16))(v15, v16, v9, v11);
  }
}

void sub_100004B6C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 rtModelWithRequestOptions:*(a1 + 32)];
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = v8;
      v11 = [v5 resourcePath];
      v12 = [v5 configVersion];
      *buf = 136316162;
      v56 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]_block_invoke";
      v57 = 2112;
      *v58 = v9;
      *&v58[8] = 2112;
      *v59 = v11;
      *&v59[8] = 2112;
      *v60 = v12;
      *&v60[8] = 2112;
      v61 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Queried model for language:%@ path:%@ configVers:%@ model:%@", buf, 0x34u);
    }

    v13 = [v5 rtModelLocaleMapWithModelType:*(a1 + 80)];
    if (v13)
    {
      if (v7)
      {
LABEL_6:
        v42 = v13;
        v43 = v6;
        v44 = v5;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v14 = *(a1 + 56);
        v15 = [v14 countByEnumeratingWithState:&v49 objects:v54 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v50;
          while (2)
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v50 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v49 + 1) + 8 * i);
              v20 = [v19 modelHash];
              v21 = [v7 modelHash];
              v22 = [v20 isEqualToString:v21];

              if (v22)
              {
                v33 = CSLogContextFacilityCoreSpeech;
                v6 = v43;
                if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v56 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]_block_invoke";
                  v57 = 2114;
                  *v58 = v19;
                  _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s Hash matched with downloadedModel : %{public}@, accessory will select this model", buf, 0x16u);
                }

                (*(*(a1 + 72) + 16))();
                v5 = v44;
LABEL_40:
                v13 = v42;
                goto LABEL_41;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v49 objects:v54 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v14 = *(a1 + 64);
        v23 = [v14 countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v46;
          while (2)
          {
            for (j = 0; j != v24; j = j + 1)
            {
              if (*v46 != v25)
              {
                objc_enumerationMutation(v14);
              }

              v27 = *(*(&v45 + 1) + 8 * j);
              v28 = [v27 modelHash];
              v29 = [v7 modelHash];
              v30 = [v28 isEqualToString:v29];

              if (v30)
              {
                v36 = CSLogContextFacilityCoreSpeech;
                if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v56 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]_block_invoke";
                  v57 = 2114;
                  *v58 = v27;
                  _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%s Hash matched with preinstalledModel : %{public}@, accessory will select this model", buf, 0x16u);
                }

                (*(*(a1 + 72) + 16))();
                v6 = v43;
                v5 = v44;
                goto LABEL_40;
              }
            }

            v24 = [v14 countByEnumeratingWithState:&v45 objects:v53 count:16];
            if (v24)
            {
              continue;
            }

            break;
          }
        }

        v13 = v42;
        v14 = [*(a1 + 48) selectFallbackModelForLocale:*(a1 + 40) downloadedModels:*(a1 + 56) preinstalledModels:*(a1 + 64) rtLocaleMap:v42];
        v31 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v56 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]_block_invoke";
          v57 = 2114;
          *v58 = v7;
          *&v58[8] = 2114;
          *v59 = v14;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%s Ask for download : %{public}@, and use %{public}@ as fallback", buf, 0x20u);
        }

        (*(*(a1 + 72) + 16))();
        v6 = v43;
        v5 = v44;
        goto LABEL_41;
      }
    }

    else
    {
      v34 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v56 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%s rtLocaleMap is nil fallback to embedded locale map", buf, 0xCu);
      }

      v13 = [*(a1 + 48) getAccessoryFallbackLocalTable];
      if (v7)
      {
        goto LABEL_6;
      }
    }

    v14 = [*(a1 + 48) selectFallbackModelForLocale:*(a1 + 40) downloadedModels:*(a1 + 56) preinstalledModels:*(a1 + 64) rtLocaleMap:v13];
    v35 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v39 = *(a1 + 88);
      v40 = *(a1 + 96);
      v41 = *(a1 + 40);
      *buf = 136316162;
      v56 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]_block_invoke";
      v57 = 1026;
      *v58 = v39;
      *&v58[4] = 1026;
      *&v58[6] = v40;
      *v59 = 2114;
      *&v59[2] = v41;
      *v60 = 2114;
      *&v60[2] = v14;
      _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%s accessoryRTBlobs are not available for the version(%{public}d.%{public}d) and locale:%{public}@, returning fallback model : %{public}@", buf, 0x2Cu);
    }

    (*(*(a1 + 72) + 16))();
LABEL_41:

    goto LABEL_42;
  }

  v32 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v37 = v32;
    v38 = [v6 localizedDescription];
    *buf = 136315394;
    v56 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]_block_invoke";
    v57 = 2114;
    *v58 = v38;
    _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%s VoiceTriggerAsset is not available : %{public}@", buf, 0x16u);
  }

  (*(*(a1 + 72) + 16))();
LABEL_42:
}

void sub_100005E04(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [NSNumber numberWithUnsignedInteger:v3];
  [v6 setEngineMajorVersion:v4];

  v5 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  [v6 setEngineMinorVersion:v5];

  [v6 setSiriLocale:@"en-US"];
}

void sub_100006380(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1[4] + 8) objectForKeyedSubscript:v4];
  [v5 refresh];
  v6 = [v5 levelForFactor:@"AssetData" withNamespaceName:v4];
  v7 = v6;
  if (v6 && ([v6 fileValue], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "path"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    v10 = [v7 fileValue];
    v11 = [v10 path];

    v12 = [v5 levelForFactor:@"isAssetArchived" withNamespaceName:v4];

    if (v12 && [v12 BOOLeanValue])
    {
      v13 = +[CSFPreferences sharedPreferences];
      v14 = [v13 trialBaseAssetDirectory];

      v15 = [CSAssetController getAssetTypeStringForType:a1[6]];
      v16 = [v14 stringByAppendingPathComponent:v15];

      v11 = [v16 stringByAppendingPathComponent:@"TrialAssetData"];
    }

    v7 = [v5 levelForFactor:@"AssetVersion" withNamespaceName:v4];

    v17 = a1[6];
    v18 = [v7 stringValue];
    v19 = [CSAsset assetForAssetType:v17 resourcePath:v11 configVersion:v18 assetProvider:1];

    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v26 = [NSString stringWithFormat:@"Unable to get Trial asset from path: %@", v11];
      v27 = CSLogCategoryAsset;
      if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v36 = "[CSTrialAssetManager getInstalledAssetofType:forLocale:completion:]_block_invoke";
        v37 = 2112;
        v38 = v26;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
      }

      v28 = CSErrorDomain;
      v31 = @"reason";
      v32 = v26;
      v29 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v20 = [NSError errorWithDomain:v28 code:1601 userInfo:v29];
    }

    v30 = a1[5];
    if (v30)
    {
      (*(v30 + 16))(v30, v19, v20);
    }
  }

  else
  {
    v21 = [v7 fileValue];
    v22 = [v21 path];
    v19 = [NSString stringWithFormat:@"Unable to get Trial asset from path: %@", v22];

    v23 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "[CSTrialAssetManager getInstalledAssetofType:forLocale:completion:]_block_invoke";
      v37 = 2112;
      v38 = v19;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
    }

    v24 = CSErrorDomain;
    v33 = @"reason";
    v34 = v19;
    v25 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v20 = [NSError errorWithDomain:v24 code:1601 userInfo:v25];

    (*(a1[5] + 16))();
  }
}

void sub_100006A20(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [TRIClient clientWithIdentifier:a2];
  if (v5)
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }
}

void sub_100006AEC(id a1)
{
  qword_1000229B0 = objc_alloc_init(CSTrialAssetManager);

  _objc_release_x1();
}

void sub_100006F80(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setSiriLocale:v3];
  [v4 setAllowMph:*(a1 + 88)];
  [v4 setUserSelectedPhraseType:*(a1 + 40)];
  [v4 setEndpointId:*(a1 + 48)];
  [v4 setEngineMajorVersion:*(a1 + 56)];
  [v4 setEngineMinorVersion:*(a1 + 64)];
  [v4 setAccessoryModelType:*(a1 + 72)];
  [v4 setCSCoreSpeechServicesAccessoryInfo:*(a1 + 80)];
}

void sub_1000070D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1000070F0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained siriLocale];
  [v3 setSiriLocale:v5];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v3 setAllowMph:{objc_msgSend(v6, "allowMph")}];

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 userSelectedPhraseType];
  [v3 setUserSelectedPhraseType:v8];

  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 endpointId];
  [v3 setEndpointId:v10];

  v11 = objc_loadWeakRetained((a1 + 32));
  v12 = [v11 engineMajorVersion];
  [v3 setEngineMajorVersion:v12];

  v13 = objc_loadWeakRetained((a1 + 32));
  v14 = [v13 engineMinorVersion];
  [v3 setEngineMinorVersion:v14];

  v15 = objc_loadWeakRetained((a1 + 32));
  v16 = [v15 accessoryModelType];
  [v3 setAccessoryModelType:v16];

  v18 = objc_loadWeakRetained((a1 + 32));
  v17 = [v18 accessoryInfo];
  [v3 setCSCoreSpeechServicesAccessoryInfo:v17];
}

void sub_100007360(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) siriLocale];
  [v11 setSiriLocale:v3];

  [v11 setAllowMph:{objc_msgSend(*(a1 + 32), "allowMph")}];
  v4 = [*(a1 + 32) userSelectedPhraseType];
  [v11 setUserSelectedPhraseType:v4];

  v5 = [*(a1 + 32) endpointId];
  [v11 setEndpointId:v5];

  v6 = [*(a1 + 32) engineMajorVersion];
  [v11 setEngineMajorVersion:v6];

  v7 = [*(a1 + 32) engineMinorVersion];
  [v11 setEngineMinorVersion:v7];

  v8 = [*(a1 + 32) accessoryModelType];
  [v11 setAccessoryModelType:v8];

  v9 = [*(a1 + 32) accessoryInfo];
  [v11 setCSCoreSpeechServicesAccessoryInfo:v9];

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v11);
  }
}

void sub_1000078F8(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v7 = [*(a1 + 32) observers];
    v5 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
    v6 = [v7 objectForKeyedSubscript:v5];
    [v6 removeObject:*(a1 + 40)];
  }
}

void sub_100007A98(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (!v4)
  {
    v5 = +[NSHashTable weakObjectsHashTable];
    v6 = [*(a1 + 32) observers];
    v7 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
    [v6 setObject:v5 forKeyedSubscript:v7];
  }

  v10 = [*(a1 + 32) observers];
  v8 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
  v9 = [v10 objectForKeyedSubscript:v8];
  [v9 addObject:*(a1 + 40)];
}

void sub_100007EF8(uint64_t a1, void *a2)
{
  v6 = a2;
  [v6 expectedTimeRemaining];
  if (v3 <= 0.0)
  {
    [*(a1 + 32) attachProgressCallBack:0];
  }

  else
  {
    v4 = [v6 totalWritten];
    if (v4 / [v6 totalExpected] > 0.0)
    {
      v5 = *(a1 + 40);
      if (v5)
      {
        (*(v5 + 16))();
      }
    }
  }
}

void sub_100007F9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    if (v2)
    {
      v5 = [NSError errorWithDomain:CSErrorDomain code:804 userInfo:0];
      (*(v2 + 16))(v2, v5);
    }
  }

  else if (v2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 0);
  }
}

void sub_1000081B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CSLogCategoryAsset;
  if (v3)
  {
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v7 = [v5 assetServerUrl];
      v8 = [v3 localizedDescription];
      v13 = 136315650;
      v14 = "[CSAssetController _downloadAsset:withComplete:]_block_invoke";
      v15 = 2114;
      v16 = v7;
      v17 = 2114;
      v18 = v8;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s ::: Error downloading from %{public}@ with error %{public}@", &v13, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = v4;
      v11 = [v9 assetServerUrl];
      v13 = 136315394;
      v14 = "[CSAssetController _downloadAsset:withComplete:]_block_invoke";
      v15 = 2114;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s ::: download completed successfully from %{public}@.", &v13, 0x16u);
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))();
    }
  }
}

void sub_10000835C(id a1, double a2)
{
  v3 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[CSAssetController _downloadAsset:withComplete:]_block_invoke";
    v6 = 2050;
    v7 = a2 * 100.0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ::: download progress: %{public}3.0f%%", &v4, 0x16u);
  }
}

void sub_1000089B8(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008A64;
  block[3] = &unk_10001C940;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
}

void sub_100008A64(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
  }

  v3 = [*(a1 + 32) observers];
  v4 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [*(a1 + 32) observers];
    v7 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
    v8 = [v6 objectForKeyedSubscript:v7];

    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v14 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            [v13 CSAssetController:*(a1 + 32) didDownloadNewAssetForType:*(a1 + 48)];
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

void sub_100008D7C(uint64_t a1, uint64_t a2)
{
  v4 = CSLogCategoryAsset;
  if (a2)
  {
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 48);
      v9 = 136315650;
      v10 = "[CSAssetController _downloadAssetCatalogForAssetType:complete:]_block_invoke";
      v11 = 2050;
      v12 = v8;
      v13 = 2050;
      v14 = a2;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Failed to download meta data for assetType %{public}lu with error %{public}lu", &v9, 0x20u);
    }

    v5 = [NSError errorWithDomain:CSErrorDomain code:804 userInfo:0];
  }

  else
  {
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v9 = 136315394;
      v10 = "[CSAssetController _downloadAssetCatalogForAssetType:complete:]_block_invoke";
      v11 = 2050;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Meta data downloaded successfully for assetType %{public}lu", &v9, 0x16u);
    }

    v5 = 0;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, [*(a1 + 32) _isRetryRecommendedWithResult:a2]);
  }
}

void sub_100009004(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000090FC;
  block[3] = &unk_10001C8F0;
  v14 = a2;
  v5 = *(a1 + 40);
  v15 = *(a1 + 64);
  v6 = *(a1 + 48);
  v10 = *(a1 + 32);
  v7 = *(a1 + 56);
  *&v8 = v10;
  *(&v8 + 1) = v7;
  *&v9 = v5;
  *(&v9 + 1) = v6;
  v12 = v9;
  v13 = v8;
  dispatch_async(v4, block);
}

void sub_1000090FC(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    v6 = [*(a1 + 32) results];
    v5 = [CSAssetController filteredAssetsForAssets:v6 assetType:*(a1 + 72) language:*(a1 + 40)];

    v7 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [v5 count];
      v10 = *(a1 + 72);
      v12 = 136315650;
      v13 = "[CSAssetController _fetchRemoteAssetOfType:withLanguage:query:completion:]_block_invoke_2";
      v14 = 2050;
      v15 = v9;
      v16 = 2050;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s ::: found %{public}lu assets for assetType %{public}lu", &v12, 0x20u);
    }

    [*(a1 + 48) _updateFromRemoteToLocalAssets:v5 forAssetType:*(a1 + 72) completion:*(a1 + 56)];
    goto LABEL_9;
  }

  v3 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 72);
    v12 = 136315650;
    v13 = "[CSAssetController _fetchRemoteAssetOfType:withLanguage:query:completion:]_block_invoke";
    v14 = 2050;
    v15 = v11;
    v16 = 2050;
    v17 = v2;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Failed to finish query for assetType %{public}lu with error %{public}lu", &v12, 0x20u);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = [NSError errorWithDomain:CSErrorDomain code:802 userInfo:0];
    (*(v4 + 16))(v4, v5);
LABEL_9:
  }
}

void sub_100009528(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (v5)
  {
    if (*(a1 + 48) == 1 && a3 != 0)
    {
      v7 = CSLogCategoryAsset;
      if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v14 = "[CSAssetController fetchRemoteMetaOfType:allowRetry:]_block_invoke";
        v15 = 2050;
        v16 = 0x4072C00000000000;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Fetching remote meta data failed, scheduled retry after %{public}f seconds", buf, 0x16u);
      }

      objc_initWeak(buf, *(a1 + 32));
      v8 = dispatch_time(0, 0x45D9648000);
      v9 = *(*(a1 + 32) + 8);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000096E8;
      v11[3] = &unk_10001C8A0;
      objc_copyWeak(v12, buf);
      v12[1] = *(a1 + 40);
      dispatch_after(v8, v9, v11);
      objc_destroyWeak(v12);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v10 = [*(a1 + 32) _assetQueryForAssetType:*(a1 + 40)];
    [*(a1 + 32) _runAssetQuery:v10 completion:0];
  }
}

void sub_1000096E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained fetchRemoteMetaOfType:*(a1 + 40) allowRetry:0];
}

void sub_1000099AC(uint64_t a1, void *a2)
{
  if (a2 || ([*(a1 + 32) results], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, !v8))
  {
    v4 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[CSAssetController _runAssetQuery:completion:]_block_invoke";
      v16 = 2050;
      v17 = a2;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Error running asset query: error %{public}lu, or result is empty", &v14, 0x16u);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = [NSError errorWithDomain:CSErrorDomain code:802 userInfo:0];
      (*(v5 + 16))(v5, 0, v6);
LABEL_11:
    }
  }

  else
  {
    v9 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = [v10 results];
      v14 = 136315394;
      v15 = "[CSAssetController _runAssetQuery:completion:]_block_invoke";
      v16 = 2050;
      v17 = [v12 count];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Found %{public}lu assets", &v14, 0x16u);
    }

    v13 = *(a1 + 40);
    if (v13)
    {
      v6 = [*(a1 + 32) results];
      (*(v13 + 16))(v13, v6, 0);
      goto LABEL_11;
    }
  }
}

void sub_10000A18C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    v7 = [*(a1 + 32) results];
    v6 = [CSAssetController filteredAssetsForAssets:v7 assetType:*(a1 + 64) language:*(a1 + 40)];

    v8 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v6 count];
      v11 = *(a1 + 64);
      v12 = [*(a1 + 32) queryParams];
      v18 = 136315906;
      v19 = "[CSAssetController _installedAssetOfType:query:withLanguage:completion:]_block_invoke";
      v20 = 2050;
      v21 = v10;
      v22 = 2050;
      v23 = v11;
      v24 = 2114;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s ::: found %{public}lu assets for assetType=%{public}lu, matching query: %{public}@", &v18, 0x2Au);
    }

    v13 = [*(a1 + 48) _findLatestInstalledAsset:v6 assetType:*(a1 + 64)];
    v14 = *(a1 + 56);
    if (v13)
    {
      if (v14)
      {
        (*(v14 + 16))(v14, v13, 0);
      }
    }

    else if (v14)
    {
      v15 = [NSError errorWithDomain:CSErrorDomain code:802 userInfo:0];
      (*(v14 + 16))(v14, 0, v15);
    }

    goto LABEL_14;
  }

  v4 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
  {
    v16 = *(a1 + 64);
    v17 = *(a1 + 32);
    v18 = 136315906;
    v19 = "[CSAssetController _installedAssetOfType:query:withLanguage:completion:]_block_invoke";
    v20 = 2050;
    v21 = v16;
    v22 = 2114;
    v23 = v17;
    v24 = 2050;
    v25 = a2;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Error running asset-query for assetType:%{public}lu, query: %{public}@, error: %{public}lu", &v18, 0x2Au);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = [NSError errorWithDomain:CSErrorDomain code:803 userInfo:0];
    (*(v5 + 16))(v5, 0, v6);
LABEL_14:
  }
}

void sub_10000A7C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A868;
  v7[3] = &unk_10001C7B0;
  v4 = *(a1 + 56);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = v5;
  v9 = v6;
  [v2 _installedAssetOfType:v4 withLanguage:v3 completion:v7];
}

void sub_10000A868(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = *(a1 + 40);
    v6 = a3;
    v7 = [a2 getCSAssetOfType:v5];
    (*(v3 + 16))(v3, v7, v6);
  }
}

void sub_10000AA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000AA44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AA5C(uint64_t a1)
{
  v2 = [*(a1 + 32) _installedAssetOfType:*(a1 + 56) withLanguage:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10000AEA4(uint64_t a1)
{
  v2 = [MAAssetQuery alloc];
  v3 = *(*(a1 + 32) + 24);
  v4 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [v2 initWithType:v5];

  if (*(a1 + 56) == 5)
  {
    v7 = ASAttributeCompatibilityVersion;
    v8 = [NSString stringWithFormat:@"%lu", *(a1 + 64)];
    [v6 addKeyValuePair:v7 with:v8];
  }

  else
  {
    v18 = v6;
    [CSAssetController addKeyValuePairForQuery:&v18 assetType:?];
    v9 = v18;

    v6 = v9;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000B044;
  v15[3] = &unk_10001C7B0;
  v12 = *(a1 + 56);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v16 = v13;
  v17 = v14;
  [v10 _installedAssetOfType:v12 query:v6 withLanguage:v11 completion:v15];
  [*(a1 + 32) _fetchRemoteAssetOfType:*(a1 + 56) withLanguage:*(a1 + 40) query:v6 completion:0];
}

void sub_10000B044(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = *(a1 + 40);
    v6 = a3;
    v7 = [a2 getCSAssetOfType:v5];
    (*(v3 + 16))(v3, v7, v6);
  }
}

void sub_10000B5D8(uint64_t a1, void *a2)
{
  v6 = a2;
  if (([*(a1 + 32) _notInstalledAssetState:objc_msgSend(v6 assetType:{"state"), *(a1 + 48)}] & 1) == 0)
  {
    v3 = [v6 getCSAssetOfType:*(a1 + 48)];
    if (v3)
    {
      v4 = *(a1 + 40);
      v5 = [v6 getCSAssetOfType:*(a1 + 48)];
      [v4 addObject:v5];
    }
  }
}

int64_t sub_10000B680(id a1, MAAsset *a2, MAAsset *a3)
{
  if ([(MAAsset *)a2 isLatestCompareTo:a3])
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void sub_10000BD20(id a1)
{
  qword_1000229C0 = objc_alloc_init(CSAssetController);

  _objc_release_x1();
}

int64_t sub_10000D3CC(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(NSDictionary *)v4 objectForKeyedSubscript:@"majorVersion"];
  v7 = [v6 unsignedIntValue];
  v8 = [(NSDictionary *)v5 objectForKeyedSubscript:@"majorVersion"];
  v9 = [v8 unsignedIntValue];

  if (v7 > v9)
  {
    goto LABEL_2;
  }

  v11 = [(NSDictionary *)v4 objectForKeyedSubscript:@"majorVersion"];
  v12 = [v11 unsignedIntValue];
  v13 = [(NSDictionary *)v5 objectForKeyedSubscript:@"majorVersion"];
  v14 = [v13 unsignedIntValue];

  if (v12 < v14)
  {
    v10 = 1;
    goto LABEL_9;
  }

  v15 = [(NSDictionary *)v4 objectForKeyedSubscript:@"minorVersion"];
  v16 = [v15 unsignedIntValue];
  v17 = [(NSDictionary *)v5 objectForKeyedSubscript:@"minorVersion"];
  v18 = [v17 unsignedIntValue];

  if (v16 > v18)
  {
LABEL_2:
    v10 = -1;
  }

  else
  {
    v19 = [(NSDictionary *)v4 objectForKeyedSubscript:@"minorVersion"];
    v20 = [v19 unsignedIntValue];
    v21 = [(NSDictionary *)v5 objectForKeyedSubscript:@"minorVersion"];
    v22 = [v21 unsignedIntValue];

    if (v20 < v22)
    {
      v10 = 1;
    }

    else
    {
      v10 = -1;
    }
  }

LABEL_9:

  return v10;
}

void sub_10000E144(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [NSNumber numberWithUnsignedInteger:v3];
  [v4 setEngineMajorVersion:v5];

  v6 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  [v4 setEngineMinorVersion:v6];
}

void sub_10000ED8C(id a1)
{
  qword_1000229D0 = objc_alloc_init(CSSpeechEndpointAssetMetaUpdateMonitor);

  _objc_release_x1();
}

void sub_10000F82C(id a1)
{
  qword_1000229E0 = objc_alloc_init(CSVoiceTriggerAssetMetaUpdateMonitor);

  _objc_release_x1();
}