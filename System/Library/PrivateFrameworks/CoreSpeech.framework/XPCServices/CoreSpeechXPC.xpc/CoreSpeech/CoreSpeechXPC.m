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
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[CoreSpeechXPC supportsMultiPhraseVoiceTriggerForEngineVersion:engineMinorVersion:accessoryRTModelType:completion:]";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s ", &v15, 0xCu);
  }

  v14 = [CSAsset supportsMultiPhraseVoiceTriggerForEngineVersion:v9 engineMinorVersion:v10 accessoryRTModelType:v11];
  if (v12)
  {
    v12[2](v12, v14);
  }
}

- (void)_fetchVoiceTriggerInstalledAssetWithLanguage:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!CSIsInternalBuild())
  {
LABEL_9:
    v13 = +[CSUAFAssetManager sharedInstance];

    if (v13)
    {
      v14 = +[CSUAFAssetManager sharedInstance];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000034FC;
      v17[3] = &unk_10001C5C8;
      v19 = v6;
      v18 = v5;
      [v14 getInstalledAssetofType:0 forLocale:v18 completion:v17];

      v8 = v19;
    }

    else
    {
      v8 = +[CSAssetController sharedController];
      [v8 installedAssetOfType:0 language:v5 completion:v6];
    }

    goto LABEL_18;
  }

  v7 = +[CSFPreferences sharedPreferences];
  v8 = [v7 fakeVoiceTriggerAudioAccessoryFirstPassAssetPath];

  v9 = CSLogContextFacilityCoreSpeech;
  if (!v8)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v21 = "[CoreSpeechXPC _fetchVoiceTriggerInstalledAssetWithLanguage:completion:]";
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s Overriding audio accessory first pass asset is nil", buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "[CoreSpeechXPC _fetchVoiceTriggerInstalledAssetWithLanguage:completion:]";
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Overridden audio accessory first pass asset path: %@", buf, 0x16u);
  }

  v10 = [v8 stringByDeletingLastPathComponent];
  v11 = +[NSFileManager defaultManager];
  v12 = [v11 fileExistsAtPath:v8];

  if (v12)
  {
    [CSAsset assetForAssetType:0 resourcePath:v10 configVersion:@"override-asset" assetProvider:1];
  }

  else
  {
    +[CSAsset defaultFallBackAssetForVoiceTrigger];
  }
  v15 = ;
  v16 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "[CoreSpeechXPC _fetchVoiceTriggerInstalledAssetWithLanguage:completion:]";
    v22 = 2112;
    v23 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s Fake asset: %@", buf, 0x16u);
  }

  if (v6)
  {
    (*(v6 + 2))(v6, v15, 0);
  }

LABEL_18:
}

- (id)selectFallbackModelForLocale:(id)a3 downloadedModels:(id)a4 preinstalledModels:(id)a5 rtLocaleMap:(id)a6
{
  v10 = a4;
  v29 = a5;
  v11 = a6;
  v12 = [(CoreSpeechXPC *)self getAccessoryFallbackFamilyLocal:a3 fromLocaleMap:v11];
  v35 = 0u;
  v36 = 0u;
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = @"en-US";
  }

  v37 = 0uLL;
  v38 = 0uLL;
  v14 = v10;
  v15 = [v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v36;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v35 + 1) + 8 * i);
        v20 = [v19 modelLocale];
        v21 = [(CoreSpeechXPC *)self getAccessoryFallbackFamilyLocal:v20 fromLocaleMap:v11];

        if (([(__CFString *)v13 isEqualToString:v21]& 1) != 0)
        {
          obj = v14;
          goto LABEL_22;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v29;
  v22 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v32;
LABEL_14:
    v25 = 0;
    while (1)
    {
      if (*v32 != v24)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v31 + 1) + 8 * v25);
      v26 = [v19 modelLocale];
      v21 = [(CoreSpeechXPC *)self getAccessoryFallbackFamilyLocal:v26 fromLocaleMap:v11];

      if (([(__CFString *)v13 isEqualToString:v21]& 1) != 0)
      {
        break;
      }

      if (v23 == ++v25)
      {
        v23 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
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

  return v27;
}

- (id)getAccessoryFallbackFamilyLocal:(id)a3 fromLocaleMap:(id)a4
{
  v5 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v12 = [v6 objectForKeyedSubscript:{v11, 0}];
        v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v20;
          while (2)
          {
            for (j = 0; j != v14; j = j + 1)
            {
              if (*v20 != v15)
              {
                objc_enumerationMutation(v12);
              }

              if ([v5 isEqualToString:*(*(&v19 + 1) + 8 * j)])
              {
                v17 = v11;

                goto LABEL_19;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
      v17 = 0;
    }

    while (v8);
  }

  else
  {
    v17 = 0;
  }

LABEL_19:

  return v17;
}

- (id)getAccessoryFallbackLocalTable
{
  if (qword_1000229A0 != -1)
  {
    dispatch_once(&qword_1000229A0, &stru_10001C5A0);
  }

  v3 = qword_1000229A8;

  return v3;
}

- (void)voiceTriggerJarvisLanguageList:(id)a3 jarvisSelectedLanguage:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100003DC0;
  v23[3] = &unk_10001C558;
  v11 = v9;
  v24 = v11;
  v12 = v10;
  v25 = v12;
  v13 = objc_retainBlock(v23);
  if (v8 | v11)
  {
    v16 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
    v17 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v27 = "[CoreSpeechXPC voiceTriggerJarvisLanguageList:jarvisSelectedLanguage:completion:]";
      v28 = 2114;
      v29 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s current Siri language code : %{public}@", buf, 0x16u);
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100003F50;
    v18[3] = &unk_10001C580;
    v18[4] = self;
    v19 = v16;
    v20 = v11;
    v22 = v13;
    v21 = v8;
    v15 = v16;
    [(CoreSpeechXPC *)self _fetchVoiceTriggerInstalledAssetWithLanguage:v15 completion:v18];
  }

  else
  {
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v27 = "[CoreSpeechXPC voiceTriggerJarvisLanguageList:jarvisSelectedLanguage:completion:]";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Language list and jarvis language not provided", buf, 0xCu);
    }

    v15 = [NSError errorWithDomain:CSErrorDomain code:403 userInfo:0];
    (v13[2])(v13, 0, v15);
  }
}

- (void)voiceTriggerRTModelWithRequestOptions:(id)a3 downloadedModels:(id)a4 preinstalledModels:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v49 = a5;
  v11 = a6;
  v12 = [v9 accessoryModelType];
  v13 = [v12 integerValue];

  v14 = [v9 engineMajorVersion];
  v15 = [v14 unsignedIntegerValue];

  v16 = [v9 engineMinorVersion];
  v17 = [v16 unsignedIntegerValue];

  v18 = CSLogContextFacilityCoreSpeech;
  v59 = v13;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v18;
    v20 = [CoreSpeechXPC accessoryModelTypeToString:v13];
    v21 = [v9 accessoryInfo];
    *buf = 136316162;
    v84 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]";
    v85 = 2114;
    v86 = v20;
    v87 = 1026;
    v88 = v15;
    v89 = 1026;
    v90 = v17;
    v91 = 2112;
    v92 = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s Received a request for VoiceTriggerRTModel %{public}@ Firmware Version : %{public}d.%{public}d Accessory Info:%@", buf, 0x2Cu);

    v13 = v59;
  }

  v78[0] = _NSConcreteStackBlock;
  v78[1] = 3221225472;
  v78[2] = sub_100004A5C;
  v78[3] = &unk_10001C508;
  v80 = v13;
  v54 = v11;
  v79 = v54;
  v53 = objc_retainBlock(v78);
  v22 = [v9 siriLocale];
  v52 = v22;
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
  }

  v24 = v23;
  v25 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v84 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]";
    v85 = 2114;
    v86 = v24;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s Asking mobile asset with currentLanguageCode = %{public}@", buf, 0x16u);
    v25 = CSLogContextFacilityCoreSpeech;
  }

  v51 = v24;
  v56 = v15;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v84 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]";
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s DownloadModel : ", buf, 0xCu);
  }

  v55 = v17;
  v58 = v9;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v26 = v10;
  v27 = [v26 countByEnumeratingWithState:&v74 objects:v82 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v75;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v75 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          v32 = *(*(&v74 + 1) + 8 * i);
          *buf = 136315394;
          v84 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]";
          v85 = 2114;
          v86 = v32;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v74 objects:v82 count:16];
    }

    while (v28);
  }

  v50 = v26;

  v33 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v84 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]";
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s preinstalledModels : ", buf, 0xCu);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v34 = v49;
  v35 = [v34 countByEnumeratingWithState:&v70 objects:v81 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v71;
    do
    {
      for (j = 0; j != v36; j = j + 1)
      {
        if (*v71 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          v40 = *(*(&v70 + 1) + 8 * j);
          *buf = 136315394;
          v84 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]";
          v85 = 2114;
          v86 = v40;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }
      }

      v36 = [v34 countByEnumeratingWithState:&v70 objects:v81 count:16];
    }

    while (v36);
  }

  v41 = v59;
  if (v59 || (+[CSFPreferences sharedPreferences](CSFPreferences, "sharedPreferences"), v47 = objc_claimAutoreleasedReturnValue(), [v47 fakeHearstModelPath], v46 = objc_claimAutoreleasedReturnValue(), v47, v41 = 0, !v46))
  {
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_100004B6C;
    v60[3] = &unk_10001C530;
    v42 = v53;
    v66 = v53;
    v43 = v58;
    v61 = v58;
    v44 = v51;
    v67 = v41;
    v62 = v51;
    v63 = self;
    v45 = v50;
    v64 = v50;
    v65 = v34;
    v68 = v56;
    v69 = v55;
    [(CoreSpeechXPC *)self _fetchVoiceTriggerInstalledAssetWithLanguage:v62 completion:v60];

    v46 = v66;
  }

  else
  {
    v48 = CSLogContextFacilityCoreSpeech;
    v43 = v58;
    v45 = v50;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v84 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]";
      v85 = 2114;
      v86 = v46;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%s Hearst Fake Model request switch turned on, executing stress test mode with fakeModelPath : %{public}@", buf, 0x16u);
    }

    v42 = v53;
    [(CoreSpeechXPC *)self _handleFakeHearstModelRequest:v46 majorVersion:v56 minorVersion:v55 downloadedModels:v50 preinstalledModels:v34 completion:v53];
    v44 = v51;
  }
}

- (void)_handleFakeHearstModelRequest:(id)a3 majorVersion:(unint64_t)a4 minorVersion:(unint64_t)a5 downloadedModels:(id)a6 preinstalledModels:(id)a7 completion:(id)a8
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = a8;
  v16 = +[NSFileManager defaultManager];
  LOBYTE(a7) = [v16 fileExistsAtPath:v12];

  if (a7)
  {
    v17 = [v12 stringByAppendingPathComponent:@"fakeModel.json"];
    v18 = +[NSFileManager defaultManager];
    v19 = [v18 fileExistsAtPath:v17];

    if (v19)
    {
      v20 = [NSData dataWithContentsOfFile:v17];
      if (v20)
      {
        v21 = [NSJSONSerialization JSONObjectWithData:v20 options:0 error:0];
        if (v21)
        {
          v22 = v21;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v67 = self;
            v68 = v20;
            v69 = v17;
            v70 = v15;
            v71 = v14;
            v72 = v13;
            v23 = v22;
            v74 = +[NSMutableArray array];
            v78 = 0u;
            v79 = 0u;
            v80 = 0u;
            v81 = 0u;
            v24 = v23;
            v25 = [v24 countByEnumeratingWithState:&v78 objects:v86 count:16];
            obj = v24;
            if (v25)
            {
              v26 = v25;
              v27 = *v79;
              do
              {
                for (i = 0; i != v26; i = i + 1)
                {
                  if (*v79 != v27)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v29 = *(*(&v78 + 1) + 8 * i);
                  v30 = v12;
                  v31 = [v12 stringByAppendingPathComponent:{v29, v67}];
                  v32 = [CSAsset assetForAssetType:0 resourcePath:v31 configVersion:v29];
                  v33 = [CSVoiceTriggerRTModelRequestOptions alloc];
                  v77[0] = _NSConcreteStackBlock;
                  v77[1] = 3221225472;
                  v77[2] = sub_100005E04;
                  v77[3] = &unk_10001CA18;
                  v77[4] = a4;
                  v77[5] = a5;
                  v34 = [(CSVoiceTriggerRTModelRequestOptions *)v33 initWithMutableBuilder:v77];
                  v35 = [v32 hearstRTModelWithRequestOptions:v34];
                  v36 = CSLogContextFacilityCoreSpeech;
                  if (v35)
                  {
                    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      v83 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
                      v84 = 2114;
                      v85[0] = v35;
                      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%s Loading FakeModel : %{public}@", buf, 0x16u);
                    }

                    [v74 addObject:v35];
                  }

                  else if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    v83 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
                    v84 = 2114;
                    v85[0] = v31;
                    _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s Cannot create RTModel from %{public}@", buf, 0x16u);
                  }

                  v12 = v30;
                }

                v24 = obj;
                v26 = [obj countByEnumeratingWithState:&v78 objects:v86 count:16];
              }

              while (v26);
            }

            if ([v74 count] > 2)
            {
              if ([v74 count])
              {
                v46 = [v74 firstObject];
                v47 = [(CoreSpeechXPCFakeModelMonitor *)v67->_fakeAssetMonitor lastFakeModelUsedHash];
                if (v47)
                {
                  v48 = [(CoreSpeechXPCFakeModelMonitor *)v67->_fakeAssetMonitor shouldRollFakeModel];
                  v17 = v69;
                  if ([v74 count])
                  {
                    v49 = 0;
                    v38 = v46;
                    while (1)
                    {
                      v50 = [v74 objectAtIndexedSubscript:{v49, v67}];
                      v51 = [v50 modelHash];
                      v52 = [v47 isEqual:v51];

                      if (v52)
                      {
                        if (v48)
                        {
                          if (v49 < [v74 count] - 1)
                          {
                            v57 = [v74 objectAtIndexedSubscript:v49 + 1];

                            v38 = v57;
                            goto LABEL_53;
                          }
                        }

                        else
                        {
                          v53 = [v74 objectAtIndexedSubscript:v49];

                          v38 = v53;
                        }
                      }

                      if (++v49 >= [v74 count])
                      {
                        goto LABEL_53;
                      }
                    }
                  }

                  v38 = v46;
                }

                else
                {
                  v38 = [v74 firstObject];

                  v54 = CSLogContextFacilityCoreSpeech;
                  v17 = v69;
                  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    v83 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
                    v84 = 2114;
                    v85[0] = v38;
                    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%s Using fake model for the first time : %{public}@", buf, 0x16u);
                  }
                }

LABEL_53:
                if (v38)
                {
                  v58 = CSLogContextFacilityCoreSpeech;
                  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    v83 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
                    v84 = 2114;
                    v85[0] = v38;
                    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%s Using fake model : %{public}@", buf, 0x16u);
                  }

                  v59 = v67;
                  [(CoreSpeechXPCFakeModelMonitor *)v67->_fakeAssetMonitor setShouldRollFakeModel:0, v67];
                  fakeAssetMonitor = v59->_fakeAssetMonitor;
                  v61 = [v38 modelHash];
                  [(CoreSpeechXPCFakeModelMonitor *)fakeAssetMonitor setLastFakeModelUsedHash:v61];
                }
              }

              else
              {
                v38 = 0;
                v17 = v69;
              }

              v13 = v72;
              v62 = [v72 count];
              v63 = v72;
              v15 = v70;
              v14 = v71;
              if (v62 || (v64 = [v71 count], v63 = v71, v64))
              {
                v65 = [v63 objectAtIndex:0];
              }

              else
              {
                v65 = 0;
              }

              v66 = CSLogContextFacilityCoreSpeech;
              if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v83 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
                v84 = 2114;
                v85[0] = v38;
                _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "%s %{public}@ fake model is selected for download", buf, 0x16u);
                v66 = CSLogContextFacilityCoreSpeech;
              }

              v20 = v68;
              if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v83 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
                v84 = 2114;
                v85[0] = v65;
                _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "%s %{public}@ model is selected for fallback", buf, 0x16u);
              }

              (*(v70 + 2))(v70, v38, v65, @"fakeModel", 0);
            }

            else
            {
              v37 = CSLogContextFacilityCoreSpeech;
              v14 = v71;
              v13 = v72;
              if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
              {
                v55 = v37;
                v56 = [v74 count];
                *buf = 136315650;
                v83 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
                v84 = 1026;
                LODWORD(v85[0]) = v56;
                WORD2(v85[0]) = 1026;
                *(v85 + 6) = 3;
                _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%s fake model number(%{public}d) is less than minimum fake model number((%{public}d)", buf, 0x18u);
              }

              v38 = [NSError errorWithDomain:CSErrorDomain code:410 userInfo:0, v67];
              v15 = v70;
              (*(v70 + 2))(v70, 0, 0, 0, v38);
              v17 = v69;
            }

            v22 = obj;
          }

          else
          {
            v44 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v83 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
              v84 = 2114;
              v85[0] = v17;
              _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%s Unable to parse fake model meta json : %{public}@", buf, 0x16u);
            }

            v45 = [NSError errorWithDomain:CSErrorDomain code:409 userInfo:0];
            (*(v15 + 2))(v15, 0, 0, 0, v45);
          }
        }

        else
        {
          v42 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v83 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
            v84 = 2114;
            v85[0] = v17;
            _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%s Unable to parse fake model meta json : %{public}@", buf, 0x16u);
          }

          v43 = [NSError errorWithDomain:CSErrorDomain code:409 userInfo:0];
          (*(v15 + 2))(v15, 0, 0, 0, v43);

          v22 = 0;
        }
      }

      else
      {
        v41 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v83 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
          v84 = 2114;
          v85[0] = v17;
          _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%s Unable to read fake model meta json : %{public}@", buf, 0x16u);
        }

        v22 = [NSError errorWithDomain:CSErrorDomain code:409 userInfo:0];
        (*(v15 + 2))(v15, 0, 0, 0, v22);
      }
    }

    else
    {
      v40 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v83 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
        v84 = 2114;
        v85[0] = v17;
        _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%s fake model meta json does not exist : %{public}@", buf, 0x16u);
      }

      v20 = [NSError errorWithDomain:CSErrorDomain code:408 userInfo:0];
      (*(v15 + 2))(v15, 0, 0, 0, v20);
    }
  }

  else
  {
    v39 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v83 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
      v84 = 2114;
      v85[0] = v12;
      _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%s Fake Model Path does not exist : %{public}@", buf, 0x16u);
    }

    v17 = [NSError errorWithDomain:CSErrorDomain code:407 userInfo:0];
    (*(v15 + 2))(v15, 0, 0, 0, v17);
  }
}

- (void)fetchRemoteVoiceTriggerAssetForLanguageCode:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CoreSpeechXPC fetchRemoteVoiceTriggerAssetForLanguageCode:completion:]";
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Received a request for VoiceTrigger Asset for language code : %{public}@", &v8, 0x16u);
  }

  if (v6)
  {
    (*(v6 + 2))(v6, 0, 0, 0);
  }
}

- (void)installedVoiceTriggerAssetForLanguageCode:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CoreSpeechXPC installedVoiceTriggerAssetForLanguageCode:completion:]";
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Received a request for VoiceTrigger Asset for language code : %{public}@", &v8, 0x16u);
  }

  if (v6)
  {
    (*(v6 + 2))(v6, 0, 0, 0);
  }
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
    v5 = dword_1000133F0[a4 + 1];
  }

  v6 = @"NA";
  if (a3)
  {
    v6 = a3;
  }

  v7 = v6;
  v15 = a3;
  v8 = objc_alloc_init(MHSchemaMHCarplayLanguageMismatch);
  [v8 setHasCarHeadUnitSelectedLocale:1];
  [v8 setCarHeadUnitSelectedLocale:v7];

  [v8 setHasCarplayTriggerMode:1];
  [v8 setCarplayTriggerMode:v5];
  v9 = objc_alloc_init(MHSchemaMHClientEvent);
  v10 = objc_alloc_init(MHSchemaMHClientEventMetadata);
  v11 = [SISchemaUUID alloc];
  v12 = +[NSUUID UUID];
  v13 = [v11 initWithNSUUID:v12];
  [v10 setMhId:v13];

  [v9 setEventMetadata:v10];
  [v9 setCarPlayLangaugeMismatched:v8];
  v14 = +[AssistantSiriAnalytics sharedStream];
  [v14 emitMessage:v9];
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