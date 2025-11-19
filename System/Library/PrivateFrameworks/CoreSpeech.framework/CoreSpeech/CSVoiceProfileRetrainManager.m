@interface CSVoiceProfileRetrainManager
+ (CSVoiceProfileRetrainManager)sharedInstance;
- (CSVoiceProfileRetrainManager)init;
- (void)CSLanguageCodeUpdateMonitor:(id)a3 didReceiveLanguageCodeChanged:(id)a4;
- (void)CSVoiceTriggerEnabledMonitor:(id)a3 didReceiveEnabled:(BOOL)a4;
- (void)_migrateTDVoiceProfileCallback;
- (void)_retrainingVoiceProfile:(id)a3 voiceProfile:(id)a4 asset:(id)a5 secureAsset:(id)a6;
- (void)_runRetrainerWithAssets:(id)a3 withSecureAsset:(id)a4 languageCode:(id)a5;
- (void)_runVoiceProfileRetrainerWithAsset:(id)a3 withSecureAsset:(id)a4 withLanguageCode:(id)a5;
- (void)_speakerRecognitionCleanupDuplicatedProfilesCallback;
- (void)_speakerRecognitionModelRetrainCallback;
- (void)triggerVoiceProfileRetrainingWithAsset:(id)a3 withSecureAsset:(id)a4;
@end

@implementation CSVoiceProfileRetrainManager

- (void)_retrainingVoiceProfile:(id)a3 voiceProfile:(id)a4 asset:(id)a5 secureAsset:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v11 || (+[CSUtils needRetrainingForExclaveOnly]& 1) != 0)
  {
    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v22 = "[CSVoiceProfileRetrainManager _retrainingVoiceProfile:voiceProfile:asset:secureAsset:]";
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s recognitionAsset:%@", buf, 0x16u);
    }

    [v9 pruneImplicitUtterancesOfProfile:v10 withAsset:v11];
    v14 = objc_alloc_init(NSMutableDictionary);
    [v14 setObject:v10 forKeyedSubscript:SSRVoiceRetrainingVoiceProfileKey];
    [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:SSRVoiceRetrainingFilterToVoiceTriggerUtterancesKey];
    if (v11)
    {
      [v14 setObject:v11 forKeyedSubscript:SSRVoiceRetrainingAssetKey];
    }

    if (v12)
    {
      [v14 setObject:v12 forKeyedSubscript:SSRVoiceRetrainingSecureAssetKey];
    }

    v20 = 0;
    v15 = [[SSRVoiceProfileRetrainingContext alloc] initWithVoiceRetrainingContext:v14 error:&v20];
    v16 = v20;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100152494;
    v18[3] = &unk_100252FD8;
    v19 = v10;
    [v9 triggerRetrainingVoiceProfile:v19 withContext:v15 withCompletion:v18];
  }

  else
  {
    v17 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v22 = "[CSVoiceProfileRetrainManager _retrainingVoiceProfile:voiceProfile:asset:secureAsset:]";
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Asset is nil. Cannot retrain voice profile.", buf, 0xCu);
    }
  }
}

- (void)_runRetrainerWithAssets:(id)a3 withSecureAsset:(id)a4 languageCode:(id)a5
{
  v26 = a3;
  v25 = a4;
  v30 = a5;
  v7 = +[SSRVoiceProfileManager sharedInstance];
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x3032000000;
  v48[3] = sub_100152BD0;
  v48[4] = sub_100152BE0;
  v49 = 0;
  v8 = +[CSVoiceTriggerEnabledMonitor sharedInstance];
  v9 = [v8 isEnabled];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100152BE8;
  block[3] = &unk_100253BD0;
  v10 = v7;
  v46 = v10;
  v47 = v48;
  if (qword_10029E588 == -1)
  {
    if ((v9 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    dispatch_once(&qword_10029E588, block);
    if ((v9 & 1) == 0)
    {
LABEL_3:
      if (!+[CSUtils supportsSpeakerRecognitionAssets])
      {
        goto LABEL_38;
      }
    }
  }

  context = objc_autoreleasePoolPush();
  [v10 cleanupVoiceProfileModelFilesForLocale:v30 withAssets:v26];
  v11 = [v10 provisionedVoiceProfilesForAppDomain:SSRSpeakerRecognitionSiriAppDomain withLocale:v30];
  v12 = CSLogContextFacilityCoreSpeech;
  v13 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
  v24 = v11;
  if (v11)
  {
    if (v13)
    {
      *buf = 136315906;
      *&buf[4] = "[CSVoiceProfileRetrainManager _runRetrainerWithAssets:withSecureAsset:languageCode:]";
      *&buf[12] = 2114;
      *&buf[14] = v30;
      *&buf[22] = 2114;
      v53 = v11;
      LOWORD(v54) = 2112;
      *(&v54 + 2) = v26;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s languageCode:  %{public}@ -voiceProfileArray: %{public}@, _currentAssets:%@", buf, 0x2Au);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v11;
    v28 = [obj countByEnumeratingWithState:&v41 objects:v56 count:16];
    if (v28)
    {
      v27 = *v42;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v42 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v41 + 1) + 8 * i);
          if (+[CSUtils needRetrainingForExclaveOnly])
          {
            [(CSVoiceProfileRetrainManager *)self _retrainingVoiceProfile:v10 voiceProfile:v14 asset:0 secureAsset:v25];
          }

          else
          {
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v15 = v26;
            v16 = [v15 countByEnumeratingWithState:&v37 objects:v55 count:16];
            if (v16)
            {
              v17 = *v38;
              while (2)
              {
                for (j = 0; j != v16; j = j + 1)
                {
                  if (*v38 != v17)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v19 = *(*(&v37 + 1) + 8 * j);
                  *buf = 0;
                  *&buf[8] = buf;
                  *&buf[16] = 0x3032000000;
                  v53 = sub_100152BD0;
                  *&v54 = sub_100152BE0;
                  *(&v54 + 1) = v19;
                  if ([*(&v54 + 1) useSpeakerRecognitionAsset])
                  {
                    v20 = +[SSRAssetManager sharedManager];
                    v33[0] = _NSConcreteStackBlock;
                    v33[1] = 3221225472;
                    v33[2] = sub_100152DE0;
                    v33[3] = &unk_100252FB0;
                    v36 = buf;
                    v33[4] = self;
                    v34 = v10;
                    v35 = v14;
                    [v20 getSpeakerRecognitionAssetWithLanguage:v30 completion:v33];
                  }

                  else
                  {
                    [(CSVoiceProfileRetrainManager *)self _retrainingVoiceProfile:v10 voiceProfile:v14 asset:*(*&buf[8] + 40) secureAsset:0];
                  }

                  if ((CSIsCommunalDevice() & 1) == 0 && [obj count] >= 2)
                  {
                    v21 = CSLogContextFacilityCoreSpeech;
                    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
                    {
                      *v50 = 136315138;
                      v51 = "[CSVoiceProfileRetrainManager _runRetrainerWithAssets:withSecureAsset:languageCode:]";
                      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s ERR: Constraining pruning and retraining to first profile", v50, 0xCu);
                    }

                    _Block_object_dispose(buf, 8);

                    goto LABEL_30;
                  }

                  _Block_object_dispose(buf, 8);
                }

                v16 = [v15 countByEnumeratingWithState:&v37 objects:v55 count:16];
                if (v16)
                {
                  continue;
                }

                break;
              }
            }

LABEL_30:
          }
        }

        v28 = [obj countByEnumeratingWithState:&v41 objects:v56 count:16];
      }

      while (v28);
    }

    v22 = v24;
  }

  else
  {
    if (v13)
    {
      *buf = 136315138;
      *&buf[4] = "[CSVoiceProfileRetrainManager _runRetrainerWithAssets:withSecureAsset:languageCode:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s No voice profiles found, trigger a download", buf, 0xCu);
    }

    [v10 triggerVoiceProfileDownload];
    v22 = 0;
  }

  objc_autoreleasePoolPop(context);
LABEL_38:

  _Block_object_dispose(v48, 8);
}

- (void)_runVoiceProfileRetrainerWithAsset:(id)a3 withSecureAsset:(id)a4 withLanguageCode:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(NSMutableArray);
  v11 = v10;
  if (v14)
  {
    [v10 addObject:v14];
  }

  if (+[CSUtils isExclaveHardware](CSUtils, "isExclaveHardware") && +[CSUtils supportsPersonalizedHeySiri])
  {
    v12 = +[CSAssetManager sharedManager];
    v13 = [v12 installedCompactAssetOfType:0 language:v9];

    if (v13)
    {
      [v11 addObject:v13];
    }
  }

  [(CSVoiceProfileRetrainManager *)self _runRetrainerWithAssets:v11 withSecureAsset:v8 languageCode:v9];
}

- (void)_migrateTDVoiceProfileCallback
{
  v2 = +[SSRVoiceProfileManager sharedInstance];
  [v2 migrateTDVoiceProfilesToTDTI];
}

- (void)_speakerRecognitionCleanupDuplicatedProfilesCallback
{
  v3 = +[CSVoiceTriggerEnabledMonitor sharedInstance];
  v4 = [v3 isEnabled];

  if (CSIsIOS() && v4)
  {
    v5 = +[SSRVoiceProfileManager sharedInstance];
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[CSVoiceProfileRetrainManager _speakerRecognitionCleanupDuplicatedProfilesCallback]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Triggered cleanup of duplicated profiles", buf, 0xCu);
    }

    if ([v5 triggerVoiceProfileDuplicatesCleanup])
    {
      v7 = [CSUtils getSiriLanguageWithFallback:0];
      v8 = +[CSVoiceTriggerAssetHandler sharedHandler];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100153340;
      v10[3] = &unk_100252F60;
      v10[4] = self;
      v11 = v7;
      v9 = v7;
      [v8 getVoiceTriggerAssetWithEndpointId:0 completion:v10];
    }
  }
}

- (void)_speakerRecognitionModelRetrainCallback
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[CSVoiceProfileRetrainManager _speakerRecognitionModelRetrainCallback]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s SpeakerRecognition Model Missing - Triggering voice profile retraining", buf, 0xCu);
  }

  v4 = [CSUtils getSiriLanguageWithFallback:0];
  v5 = +[SSRAssetManager sharedManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001536C4;
  v7[3] = &unk_100252F60;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 getSpeakerRecognitionAssetWithLanguage:v6 completion:v7];
}

- (void)CSLanguageCodeUpdateMonitor:(id)a3 didReceiveLanguageCodeChanged:(id)a4
{
  v5 = a4;
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[CSVoiceProfileRetrainManager CSLanguageCodeUpdateMonitor:didReceiveLanguageCodeChanged:]";
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Language Changed to %{public}@ - Triggering voice profile retraining", buf, 0x16u);
  }

  v7 = +[CSVoiceTriggerAssetHandler sharedHandler];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100153E88;
  v9[3] = &unk_100252F60;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  [v7 getVoiceTriggerAssetWithEndpointId:0 completion:v9];
}

- (void)CSVoiceTriggerEnabledMonitor:(id)a3 didReceiveEnabled:(BOOL)a4
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100154134;
  v5[3] = &unk_100253BF8;
  v6 = a4;
  v5[4] = self;
  dispatch_async(queue, v5);
}

- (void)triggerVoiceProfileRetrainingWithAsset:(id)a3 withSecureAsset:(id)a4
{
  v5 = a3;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100154580;
  v8[3] = &unk_100253C48;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (CSVoiceProfileRetrainManager)init
{
  v11.receiver = self;
  v11.super_class = CSVoiceProfileRetrainManager;
  v2 = [(CSVoiceProfileRetrainManager *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_create("cs.secondpass.retrainer.q", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = v2->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100154828;
    block[3] = &unk_100253C20;
    v6 = v2;
    v10 = v6;
    dispatch_async(v5, block);
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v13 = "[CSVoiceProfileRetrainManager init]";
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Created CSVoiceProfileRetrainManager %@", buf, 0x16u);
    }
  }

  return v2;
}

+ (CSVoiceProfileRetrainManager)sharedInstance
{
  if (qword_10029E580 != -1)
  {
    dispatch_once(&qword_10029E580, &stru_100252EE8);
  }

  v3 = qword_10029E578;

  return v3;
}

@end