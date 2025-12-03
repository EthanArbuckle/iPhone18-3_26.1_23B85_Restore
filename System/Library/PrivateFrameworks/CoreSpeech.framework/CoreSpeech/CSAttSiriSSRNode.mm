@interface CSAttSiriSSRNode
- (CSAttSiriController)attSiriController;
- (CSAttSiriSSRNode)init;
- (CSAttSiriSSRNode)initWithAttSiriController:(id)controller;
- (CSAttSiriSSRNode)initWithDownloadMonitor:(id)monitor assetHandler:(id)handler;
- (id)_mapScoresToSharedSiriId:(id)id;
- (id)_processSpeakerRecognitionResult:(id)result;
- (id)filteredVoiceProfileArray:(id)array;
- (id)getLeadingUtteranceLogger;
- (id)getSharedUserIdWithHighestVoiceIdScore:(id)score;
- (void)CSLanguageCodeUpdateMonitor:(id)monitor didReceiveLanguageCodeChanged:(id)changed;
- (void)CSSpeakerRecognitionAssetDownloadMonitor:(id)monitor didInstallNewAsset:(BOOL)asset assetProviderType:(unint64_t)type;
- (void)_logSpeakerFalseTriggerMitigationScore:(id)score withSpeakerMatchScore:(float)matchScore withSpeakerScoreThreshold:(float)threshold withAudioDuration:(double)duration withSuccess:(BOOL)success;
- (void)_refreshSpeakerRecognitionAssets;
- (void)_reportNoAudioProcessed;
- (void)_setupLeadingUtteranceLogger;
- (void)_setupSSRControllerWithAudioContext:(id)context withVoiceTriggerEventInfo:(id)info;
- (void)_setupSpeakerRecognitionForFollowUp:(id)up withVoiceTriggerInfo:(id)info;
- (void)_setupSpeakerRecognitionForProfiles:(id)profiles WithVTEventInfo:(id)info WithLocale:(id)locale;
- (void)_setupWithDownloadMonitor:(id)monitor assetHandler:(id)handler;
- (void)_stopProcessing;
- (void)addReceiver:(id)receiver;
- (void)attSiriAudioSrcNodeDidStop:(id)stop;
- (void)attSiriAudioSrcNodeLPCMRecordBufferAvailable:(id)available audioChunk:(id)chunk;
- (void)cacheSharedUserInfos:(id)infos;
- (void)handleSiriSessionEnd;
- (void)logSpeakerFalseTriggerMitigationScore:(float)score withAudioDuration:(double)duration;
- (void)removeReceiver:(id)receiver;
- (void)resetForNewRequestWithRecordContext:(id)context voiceTriggerInfo:(id)info withReqId:(id)id;
- (void)setPrefetchedAsset:(id)asset;
- (void)setUpSpeakerProfileForFlexibleFollowup;
- (void)speakerRecognitionController:(id)controller hasSpeakerInfo:(id)info;
- (void)speakerRecognitionFinishedProcessing:(id)processing withFinalSpeakerInfo:(id)info;
- (void)startXPCConnection;
- (void)stop;
@end

@implementation CSAttSiriSSRNode

- (void)handleSiriSessionEnd
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000052E4;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (CSAttSiriController)attSiriController
{
  WeakRetained = objc_loadWeakRetained(&self->_attSiriController);

  return WeakRetained;
}

- (id)getLeadingUtteranceLogger
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10002DBC0;
  v10 = sub_10002DBD0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002DBD8;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_logSpeakerFalseTriggerMitigationScore:(id)score withSpeakerMatchScore:(float)matchScore withSpeakerScoreThreshold:(float)threshold withAudioDuration:(double)duration withSuccess:(BOOL)success
{
  successCopy = success;
  scoreCopy = score;
  if (self->_mhId)
  {
    v13 = [SISchemaUUID alloc];
    v14 = [[NSUUID alloc] initWithUUIDString:self->_mhId];
    v15 = [v13 initWithNSUUID:v14];

    v16 = objc_alloc_init(MHSchemaMHSpeakerFalseTriggerMitigated);
    [v16 setModelVersion:scoreCopy];
    *&v17 = matchScore;
    [v16 setSpeakerMatchScore:v17];
    *&v18 = threshold;
    [v16 setThresholdScore:v18];
    [v16 setProcessedAudioDurationInNs:duration];
    if (successCopy)
    {
      v19 = 0;
    }

    else
    {
      v19 = 1954;
    }

    [v16 setErrorCode:v19];
    v20 = objc_alloc_init(MHSchemaMHClientEventMetadata);
    [v20 setMhId:v15];
    v21 = objc_alloc_init(MHSchemaMHClientEvent);
    [v21 setMhId:v15];
    [v21 setEventMetadata:v20];
    [v21 setSpeakerFalseTriggerMitigated:v16];
    v22 = +[AssistantSiriAnalytics sharedStream];
    [v22 emitMessage:v21];

    v23 = CSLogCategorySpkrId;
    if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_INFO))
    {
      mhId = self->_mhId;
      v26 = 136315906;
      v27 = "[CSAttSiriSSRNode _logSpeakerFalseTriggerMitigationScore:withSpeakerMatchScore:withSpeakerScoreThreshold:withAudioDuration:withSuccess:]";
      v28 = 2112;
      v29 = mhId;
      v30 = 2048;
      matchScoreCopy = matchScore;
      v32 = 2048;
      durationCopy = duration;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s Submit Speaker False Trigger Mitigation score msg to SELF metrics for MH ID: %@, speakerMatchScore: %f, audioProcessDuration: %f", &v26, 0x2Au);
    }
  }

  else
  {
    v25 = CSLogCategorySpkrId;
    if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_ERROR))
    {
      v26 = 136315138;
      v27 = "[CSAttSiriSSRNode _logSpeakerFalseTriggerMitigationScore:withSpeakerMatchScore:withSpeakerScoreThreshold:withAudioDuration:withSuccess:]";
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s MHID not set, skipping SELF Logging", &v26, 0xCu);
    }
  }
}

- (void)logSpeakerFalseTriggerMitigationScore:(float)score withAudioDuration:(double)duration
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002DEEC;
  block[3] = &unk_100251C60;
  block[4] = self;
  scoreCopy = score;
  *&block[5] = duration;
  dispatch_async(queue, block);
}

- (void)attSiriAudioSrcNodeLPCMRecordBufferAvailable:(id)available audioChunk:(id)chunk
{
  chunkCopy = chunk;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002DFF0;
  v8[3] = &unk_100253C48;
  v9 = chunkCopy;
  selfCopy = self;
  v7 = chunkCopy;
  dispatch_async(queue, v8);
}

- (void)attSiriAudioSrcNodeDidStop:(id)stop
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E144;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)speakerRecognitionFinishedProcessing:(id)processing withFinalSpeakerInfo:(id)info
{
  processingCopy = processing;
  infoCopy = info;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E2C0;
  block[3] = &unk_100253680;
  block[4] = self;
  v12 = processingCopy;
  v13 = infoCopy;
  v9 = infoCopy;
  v10 = processingCopy;
  dispatch_async(queue, block);
}

- (void)CSLanguageCodeUpdateMonitor:(id)monitor didReceiveLanguageCodeChanged:(id)changed
{
  changedCopy = changed;
  v6 = CSLogCategorySpkrId;
  if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[CSAttSiriSSRNode CSLanguageCodeUpdateMonitor:didReceiveLanguageCodeChanged:]";
    v11 = 2114;
    v12 = changedCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s _currentLanguageCode changed: %{public}@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E89C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)speakerRecognitionController:(id)controller hasSpeakerInfo:(id)info
{
  controllerCopy = controller;
  infoCopy = info;
  v8 = infoCopy;
  if (controllerCopy && infoCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002EA64;
    block[3] = &unk_100253680;
    block[4] = self;
    v13 = controllerCopy;
    v14 = v8;
    dispatch_async(queue, block);
  }

  else
  {
    if (!controllerCopy && (v10 = CSLogCategorySpkrId, os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_ERROR)))
    {
      *buf = 136315138;
      v16 = "[CSAttSiriSSRNode speakerRecognitionController:hasSpeakerInfo:]";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s spkrRecognizer is nil!", buf, 0xCu);
      if (v8)
      {
        goto LABEL_9;
      }
    }

    else if (v8)
    {
      goto LABEL_9;
    }

    v11 = CSLogCategorySpkrId;
    if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[CSAttSiriSSRNode speakerRecognitionController:hasSpeakerInfo:]";
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s speakerInfo is nil!", buf, 0xCu);
    }
  }

LABEL_9:
}

- (void)CSSpeakerRecognitionAssetDownloadMonitor:(id)monitor didInstallNewAsset:(BOOL)asset assetProviderType:(unint64_t)type
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002F114;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)startXPCConnection
{
  v2 = CSLogCategorySpkrId;
  if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[CSAttSiriSSRNode startXPCConnection]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s XPC connection with client established", &v3, 0xCu);
  }
}

- (void)_reportNoAudioProcessed
{
  if (CSIsHorseman())
  {
    speakerRecognitionScores = self->_speakerRecognitionScores;
    if (!speakerRecognitionScores || (-[NSDictionary objectForKeyedSubscript:](speakerRecognitionScores, "objectForKeyedSubscript:", kSSRSpeakerRecognitionAudioProcessedDurationKey), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 intValue], v4, !v5))
    {
      v6 = CSLogCategorySpkrId;
      if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = "[CSAttSiriSSRNode _reportNoAudioProcessed]";
        v10 = 1024;
        v11 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Reporting no audio processed for speaker recognition: %ims", &v8, 0x12u);
      }

      v7 = +[CSDiagnosticReporter sharedInstance];
      [v7 submitVoiceIdIssueReport:kCSDiagnosticReporterVoiceIdNoAudioProcessed];
    }
  }
}

- (void)_stopProcessing
{
  [(SSRSpeakerRecognitionController *)self->_ssrController endAudio];
  [(CSAudioFileWriter *)self->_leadingUtteranceLogger endAudio];
  leadingUtteranceLogger = self->_leadingUtteranceLogger;
  if (!leadingUtteranceLogger)
  {
LABEL_17:
    if (self->_shouldCleanupVoiceProfile)
    {
      v25 = CSLogCategorySpkrId;
      if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v40 = "[CSAttSiriSSRNode _stopProcessing]";
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s trigger VoiceProfileCleanup", buf, 0xCu);
      }

      self->_shouldCleanupVoiceProfile = 0;
      v26 = +[SSRVoiceProfileManager sharedInstance];
      [v26 triggerVoiceProfileCleanupWithCompletion:&stru_10024EB30];
    }

    [(CSAttSiriSSRNode *)self _reportNoAudioProcessed];
    return;
  }

  self->_leadingUtteranceLogger = 0;

  voiceProfileManager = self->_voiceProfileManager;
  v5 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
  v6 = [(SSRVoiceProfileManager *)voiceProfileManager newVoiceProfileWithLocale:v5 withAppDomain:SSRSpeakerRecognitionSiriCCAppDomain];
  ccProfile = self->_ccProfile;
  self->_ccProfile = v6;

  v8 = self->_ccProfile;
  if (v8)
  {
    asset = self->_asset;
    if (asset)
    {
      v37[0] = SSRVoiceRetrainingVoiceProfileKey;
      v37[1] = SSRVoiceRetrainingPayloadProfileKey;
      v38[0] = v8;
      v38[1] = &__kCFBooleanTrue;
      v37[2] = SSRVoiceRetrainingAssetKey;
      v38[2] = asset;
      v10 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:3];
      v35 = 0;
      v11 = [[SSRVoiceProfileRetrainingContext alloc] initWithVoiceRetrainingContext:v10 error:&v35];
      v12 = v35;
      if (v12)
      {
        v13 = v12;
        v14 = CSLogCategorySpkrId;
        if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_ERROR))
        {
          v27 = self->_ccProfile;
          v28 = v14;
          profileID = [(SSRVoiceProfile *)v27 profileID];
          *buf = 136315650;
          v40 = "[CSAttSiriSSRNode _stopProcessing]";
          v41 = 2114;
          v42 = profileID;
          v43 = 2114;
          v44 = v13;
          _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s ERR: Failed to init retrainCtxt for profileID %{public}@ with error %{public}@", buf, 0x20u);
        }

        return;
      }

      v17 = CSLogCategorySpkrId;
      if (self->_leadingUtteranceAudioFile)
      {
        if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_DEFAULT))
        {
          v18 = self->_ccProfile;
          v19 = v17;
          profileID2 = [(SSRVoiceProfile *)v18 profileID];
          *buf = 136315394;
          v40 = "[CSAttSiriSSRNode _stopProcessing]";
          v41 = 2114;
          v42 = profileID2;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s Creating Continuous Conversation voice profile %{public}@", buf, 0x16u);
        }

        objc_initWeak(buf, self);
        v21 = self->_voiceProfileManager;
        v22 = [NSURL fileURLWithPath:self->_leadingUtteranceAudioFile];
        v36 = v22;
        v23 = [NSArray arrayWithObjects:&v36 count:1];
        v24 = self->_ccProfile;
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_10002F8C8;
        v33[3] = &unk_1002532D8;
        objc_copyWeak(&v34, buf);
        [(SSRVoiceProfileManager *)v21 addUtterances:v23 toProfile:v24 withContext:v11 withCompletion:v33];

        objc_destroyWeak(&v34);
        objc_destroyWeak(buf);
      }

      else if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_ERROR))
      {
        v30 = self->_ccProfile;
        v31 = v17;
        profileID3 = [(SSRVoiceProfile *)v30 profileID];
        *buf = 136315394;
        v40 = "[CSAttSiriSSRNode _stopProcessing]";
        v41 = 2114;
        v42 = profileID3;
        _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s ERR: Failed to add utterance to profileID %{public}@ because the audio file couldn't be found", buf, 0x16u);
      }

      goto LABEL_17;
    }
  }

  v15 = CSLogCategorySpkrId;
  if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_ERROR))
  {
    v16 = self->_asset;
    *buf = 136315650;
    v40 = "[CSAttSiriSSRNode _stopProcessing]";
    v41 = 2114;
    v42 = v8;
    v43 = 2114;
    v44 = v16;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s ERR: Failed to retrain voice profile %{public}@ with asset %{public}@", buf, 0x20u);
  }
}

- (id)_mapScoresToSharedSiriId:(id)id
{
  idCopy = id;
  if ([idCopy count])
  {
    v5 = [idCopy count];
  }

  else
  {
    v5 = 1;
  }

  v45 = [NSMutableDictionary dictionaryWithCapacity:v5];
  v6 = +[CSFPreferences sharedPreferences];
  readSpeakerIdScoreOverrrideConfig = [v6 readSpeakerIdScoreOverrrideConfig];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v7 = idCopy;
  v8 = [v7 countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v50;
    *&v9 = 136315650;
    v43 = v9;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v50 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v49 + 1) + 8 * i);
        v14 = [v7 objectForKeyedSubscript:{v13, v43}];
        [v14 floatValue];
        v16 = v15;

        if (v16 <= 1.0)
        {
          v17 = v16;
        }

        else
        {
          v17 = 1.0;
        }

        if (v17 < 0.0)
        {
          v17 = 0.0;
        }

        integerValue = vcvtpd_s64_f64(v17 * 100.0);
        v19 = [(SSRVoiceProfileManager *)self->_voiceProfileManager voiceProfileForId:v13];
        v20 = v19;
        if (v19)
        {
          siriProfileId = [v19 siriProfileId];

          if (siriProfileId)
          {
            if (CSIsInternalBuild())
            {
              if (readSpeakerIdScoreOverrrideConfig)
              {
                siriProfileId2 = [v20 siriProfileId];
                v23 = [readSpeakerIdScoreOverrrideConfig objectForKey:siriProfileId2];

                if (v23)
                {
                  siriProfileId3 = [v20 siriProfileId];
                  v25 = [readSpeakerIdScoreOverrrideConfig objectForKey:siriProfileId3];

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    integerValue = [v25 integerValue];
                    v26 = CSLogCategorySpkrId;
                    if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_DEFAULT))
                    {
                      v27 = v26;
                      siriProfileId4 = [v20 siriProfileId];
                      *buf = v43;
                      v56 = "[CSAttSiriSSRNode _mapScoresToSharedSiriId:]";
                      v57 = 2112;
                      v58 = v25;
                      v59 = 2112;
                      v60 = siriProfileId4;
                      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%s Overriding score to %@ for profile %@", buf, 0x20u);
                    }
                  }
                }
              }
            }

            v29 = [NSNumber numberWithInteger:integerValue];
            siriProfileId5 = [v20 siriProfileId];
            [v45 setObject:v29 forKey:siriProfileId5];

            goto LABEL_31;
          }

          v34 = CSLogCategorySpkrId;
          if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v56 = "[CSAttSiriSSRNode _mapScoresToSharedSiriId:]";
            v57 = 2112;
            v58 = v13;
            v32 = v34;
            v33 = "%s Siri Profile ID for profileID %@ not found";
            goto LABEL_28;
          }
        }

        else
        {
          v31 = CSLogCategorySpkrId;
          if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v56 = "[CSAttSiriSSRNode _mapScoresToSharedSiriId:]";
            v57 = 2112;
            v58 = v13;
            v32 = v31;
            v33 = "%s Voice Profile for profileID %@ not found";
LABEL_28:
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v33, buf, 0x16u);
          }
        }

        if (CSIsTV())
        {
          goto LABEL_32;
        }

        v29 = [NSNumber numberWithInteger:integerValue];
        [v45 setObject:v29 forKey:v13];
LABEL_31:

LABEL_32:
      }

      v10 = [v7 countByEnumeratingWithState:&v49 objects:v61 count:16];
    }

    while (v10);
  }

  v35 = objc_alloc_init(NSMutableDictionary);
  v36 = objc_alloc_init(NSMutableDictionary);
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1000300CC;
  v46[3] = &unk_10024EB10;
  v46[4] = self;
  v37 = v35;
  v47 = v37;
  v38 = v36;
  v48 = v38;
  [v45 enumerateKeysAndObjectsUsingBlock:v46];
  if ([v38 count])
  {
    v39 = +[AFAnalytics sharedAnalytics];
    v53[0] = @"valid_scores";
    v53[1] = @"invalid_scores";
    v54[0] = v37;
    v54[1] = v38;
    v40 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:2];
    [v39 logEventWithType:6115 context:v40];
  }

  v41 = [v37 copy];

  return v41;
}

- (id)_processSpeakerRecognitionResult:(id)result
{
  resultCopy = result;
  v5 = [resultCopy mutableCopy];
  v6 = kSSRSpeakerRecognitionKnownUserScoresKey;
  v7 = [resultCopy objectForKeyedSubscript:kSSRSpeakerRecognitionKnownUserScoresKey];

  v8 = [(CSAttSiriSSRNode *)self _mapScoresToSharedSiriId:v7];

  if (v8 && [v8 count])
  {
    v9 = &OBJC_IVAR___CSAdBlockerAssetDownloadMonitor__lastUpdatedAssetType;
    v10 = [CSUserIdentityClassifier pickTopScoringProfileIdFromScores:v8];
    if (v10)
    {
      [v5 setObject:v10 forKeyedSubscript:@"userClassified"];
    }

    else
    {
      v13 = CSLogCategorySpkrId;
      if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_ERROR))
      {
        v35 = 136315394;
        v36 = "[CSAttSiriSSRNode _processSpeakerRecognitionResult:]";
        v37 = 2114;
        *v38 = v8;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s ERR: Failed to get classified user from %{public}@", &v35, 0x16u);
      }
    }

    v14 = kVTEITriggeredPhId;
    v15 = [(NSDictionary *)self->_voiceTriggerEventInfo objectForKey:kVTEITriggeredPhId];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [(NSDictionary *)self->_voiceTriggerEventInfo objectForKey:v14];
      integerValue = [v16 integerValue];

      v9 = &OBJC_IVAR___CSAdBlockerAssetDownloadMonitor__lastUpdatedAssetType;
    }

    else
    {
      integerValue = 0;
    }

    v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 + 830 classifyUserIdentityFor:v10 withScores:v8 withAsset:self->_asset withPhId:integerValue]);
    [v5 setObject:v18 forKeyedSubscript:@"userIdentityClassification"];

    [v5 setObject:v8 forKeyedSubscript:v6];
    v19 = [NSNumber numberWithInteger:[(CSAsset *)self->_asset multiUserLowScoreThresholdForPhId:integerValue]];
    [v5 setObject:v19 forKeyedSubscript:kSSRSpeakerRecognitionLowScoreThresholdKey];

    v20 = [NSNumber numberWithInteger:[(CSAsset *)self->_asset multiUserHighScoreThresholdForPhId:integerValue]];
    [v5 setObject:v20 forKeyedSubscript:kSSRSpeakerRecognitionHighScoreThresholdKey];

    v21 = [NSNumber numberWithInteger:[(CSAsset *)self->_asset multiUserConfidentScoreThresholdForPhId:integerValue]];
    [v5 setObject:v21 forKeyedSubscript:kSSRSpeakerRecognitionConfidentScoreThresholdKey];

    v22 = [NSNumber numberWithInteger:[(CSAsset *)self->_asset multiUserDeltaScoreThresholdForPhId:integerValue]];
    [v5 setObject:v22 forKeyedSubscript:kSSRSpeakerRecognitionDeltaScoreThresholdKey];

    v23 = CSLogCategorySpkrId;
    if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_DEFAULT))
    {
      v24 = kSSRSpeakerRecognitionSegmentCounterKey;
      v25 = v23;
      v26 = [v5 objectForKeyedSubscript:v24];
      intValue = [v26 intValue];
      v28 = [v5 objectForKeyedSubscript:kSSRSpeakerRecognitionSegmentStartTimeKey];
      [v28 floatValue];
      v30 = v29;
      v31 = [v5 objectForKeyedSubscript:kSSRSpeakerRecognitionAudioProcessedDurationKey];
      intValue2 = [v31 intValue];
      v33 = [v5 objectForKeyedSubscript:v6];
      v35 = 136316162;
      v36 = "[CSAttSiriSSRNode _processSpeakerRecognitionResult:]";
      v37 = 1026;
      *v38 = intValue;
      *&v38[4] = 2050;
      *&v38[6] = v30;
      v39 = 1024;
      v40 = intValue2;
      v41 = 2114;
      v42 = v33;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s mappedSpeakerIdInfo for {%{public}d, %{public}.2fsec %dms} - %{public}@", &v35, 0x2Cu);
    }

    v12 = v5;
  }

  else
  {
    v11 = CSLogCategorySpkrId;
    if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 136315138;
      v36 = "[CSAttSiriSSRNode _processSpeakerRecognitionResult:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Nil mappedSpeakerIdInfo since mappedScores is not valid, no score will be sent out", &v35, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

- (void)_refreshSpeakerRecognitionAssets
{
  if ((CSIsIOS() & 1) != 0 || CSIsAppleSiliconMac())
  {
    assetHandler = self->_assetHandler;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100030904;
    v17[3] = &unk_100252F10;
    v17[4] = self;
    [(CSVoiceTriggerAssetHandler *)assetHandler getVoiceTriggerAssetWithEndpointId:0 completion:v17];
    return;
  }

  if ((CSIsCommunalDevice() & 1) != 0 || (+[CSFPreferences sharedPreferences](CSFPreferences, "sharedPreferences"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isFlexibleFollowupsSupported], v4, v5))
  {
    v6 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
    if (CSIsCommunalDevice())
    {
      v7 = +[SSRAssetManager sharedManager];
      v8 = [v7 allInstalledSpeakerRecognitionAssetsForLanguage:v6];
      ssrAssets = self->_ssrAssets;
      self->_ssrAssets = v8;

      v10 = CSLogCategorySpkrId;
      if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_ssrAssets;
        *buf = 136315394;
        v19 = "[CSAttSiriSSRNode _refreshSpeakerRecognitionAssets]";
        v20 = 2114;
        v21 = v11;
        v12 = "%s Initialized SSRNode with SpeakerRecognition assets %{public}@";
LABEL_12:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 0x16u);
      }
    }

    else
    {
      v13 = +[CSAssetManager sharedManager];
      v14 = [v13 allInstalledAssetsOfType:0 language:v6];
      v15 = self->_ssrAssets;
      self->_ssrAssets = v14;

      v10 = CSLogCategorySpkrId;
      if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_DEFAULT))
      {
        v16 = self->_ssrAssets;
        *buf = 136315394;
        v19 = "[CSAttSiriSSRNode _refreshSpeakerRecognitionAssets]";
        v20 = 2114;
        v21 = v16;
        v12 = "%s Initialized SSRNode with VoiceTrigger assets %{public}@";
        goto LABEL_12;
      }
    }
  }
}

- (void)_setupSpeakerRecognitionForProfiles:(id)profiles WithVTEventInfo:(id)info WithLocale:(id)locale
{
  profilesCopy = profiles;
  infoCopy = info;
  localeCopy = locale;
  isBuiltInVoiceTriggered = [(CSAudioRecordContext *)self->_audioRecordContext isBuiltInVoiceTriggered];
  v12 = 4.0;
  if (isBuiltInVoiceTriggered)
  {
    if (infoCopy)
    {
      v13 = [infoCopy objectForKeyedSubscript:kVTEItriggerEndSeconds];
      [v13 floatValue];
      v12 = v14 + 4.0;
    }

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = CSLogCategorySpkrId;
  if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_DEFAULT))
  {
    if (isBuiltInVoiceTriggered)
    {
      v17 = @"VT";
    }

    else
    {
      v17 = @"BP";
    }

    v18 = v16;
    *buf = 136316162;
    v42 = "[CSAttSiriSSRNode _setupSpeakerRecognitionForProfiles:WithVTEventInfo:WithLocale:]";
    v43 = 2114;
    v44 = v17;
    v45 = 2114;
    v46 = localeCopy;
    v47 = 2050;
    v48 = [profilesCopy count];
    v49 = 2050;
    v50 = v12;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s Setting up SSR controller with {%{public}@, %{public}@, %{public}ldusers, %{public}fsecs}", buf, 0x34u);
  }

  asset = self->_asset;
  if (SSRShouldUseTDTIWithAsset())
  {
    isContinuousConversation = 1;
  }

  else
  {
    isContinuousConversation = [(CSAudioRecordContext *)self->_audioRecordContext isContinuousConversation];
  }

  v39[0] = SSRSpeakerRecognitionStyleKey;
  v21 = [NSNumber numberWithUnsignedInteger:v15];
  v40[0] = v21;
  v40[1] = localeCopy;
  v39[1] = SSRSpeakerRecognitionLocaleKey;
  v39[2] = SSRSpeakerRecognitionUsePayloadProfileKey;
  v22 = [NSNumber numberWithBool:isContinuousConversation];
  v40[2] = v22;
  v40[3] = profilesCopy;
  v39[3] = SSRSpeakerRecognitionProfileArrayKey;
  v39[4] = SSRSpeakerRecognitionVTEventInfoKey;
  v24 = &__NSDictionary0__struct;
  if (infoCopy)
  {
    v24 = infoCopy;
  }

  v40[4] = v24;
  v39[5] = SSRSpeakerRecognitionMaxAudioDurationSecs;
  *&v23 = v12;
  v25 = [NSNumber numberWithFloat:v23];
  v40[5] = v25;
  v40[6] = &__kCFBooleanFalse;
  v39[6] = SSRSpeakerRecognitionOSTransactionRequired;
  v39[7] = SSRSpeakerRecognitionAssetArrayKey;
  v40[7] = self->_ssrAssets;
  v26 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:8];

  v38 = 0;
  v27 = [[SSRSpeakerRecognitionContext alloc] initWithVoiceRecognitionContext:v26 error:&v38];
  v28 = v38;
  v29 = v28;
  if (!v27 || v28)
  {
    v36 = CSLogCategorySpkrId;
    if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_ERROR))
    {
      v33 = v36;
      localizedDescription = [v29 localizedDescription];
      *buf = 136315394;
      v42 = "[CSAttSiriSSRNode _setupSpeakerRecognitionForProfiles:WithVTEventInfo:WithLocale:]";
      v43 = 2112;
      v44 = localizedDescription;
      v35 = "%s ERR: Failed to create SSR context with error %@";
      goto LABEL_26;
    }

LABEL_23:

    goto LABEL_24;
  }

  v37 = 0;
  v30 = [[SSRSpeakerRecognitionController alloc] initWithContext:v27 withDelegate:self error:&v37];
  v29 = v37;
  ssrController = self->_ssrController;
  self->_ssrController = v30;

  if (!self->_ssrController || v29)
  {
    v32 = CSLogCategorySpkrId;
    if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_ERROR))
    {
      v33 = v32;
      localizedDescription = [v29 localizedDescription];
      *buf = 136315394;
      v42 = "[CSAttSiriSSRNode _setupSpeakerRecognitionForProfiles:WithVTEventInfo:WithLocale:]";
      v43 = 2112;
      v44 = localizedDescription;
      v35 = "%s ERR: Failed to create SSR controller with error %@";
LABEL_26:
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, v35, buf, 0x16u);

      goto LABEL_23;
    }

    goto LABEL_23;
  }

LABEL_24:
}

- (void)_setupLeadingUtteranceLogger
{
  ccProfile = self->_ccProfile;
  if (ccProfile)
  {
    v4 = CSLogCategorySpkrId;
    if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v29 = "[CSAttSiriSSRNode _setupLeadingUtteranceLogger]";
      v30 = 2114;
      v31 = ccProfile;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s magus voice profile - %{public}@", buf, 0x16u);
    }
  }

  voiceProfileManager = self->_voiceProfileManager;
  if (!voiceProfileManager || !self->_asset)
  {
    v6 = +[SSRVoiceProfileManager sharedInstance];
    v7 = self->_voiceProfileManager;
    self->_voiceProfileManager = v6;

    firstObject = [(NSArray *)self->_ssrAssets firstObject];
    asset = self->_asset;
    self->_asset = firstObject;

    v10 = CSLogCategorySpkrId;
    if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_asset;
      v12 = v10;
      configVersion = [(CSAsset *)v11 configVersion];
      *buf = 136315394;
      v29 = "[CSAttSiriSSRNode _setupLeadingUtteranceLogger]";
      v30 = 2114;
      v31 = configVersion;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s Asset Vers: %{public}@", buf, 0x16u);
    }

    voiceProfileManager = self->_voiceProfileManager;
  }

  v14 = SSRSpeakerRecognitionSiriCCAppDomain;
  [(SSRVoiceProfileManager *)voiceProfileManager deleteAllVoiceProfilesForAppDomain:SSRSpeakerRecognitionSiriCCAppDomain];
  v15 = [(SSRVoiceProfileManager *)self->_voiceProfileManager getCacheDirectoryForAppDomain:v14];
  v16 = +[NSUUID UUID];
  uUIDString = [v16 UUIDString];
  v18 = [v15 stringByAppendingPathComponent:uUIDString];
  v19 = [v18 stringByAppendingPathExtension:@"wav"];
  leadingUtteranceAudioFile = self->_leadingUtteranceAudioFile;
  self->_leadingUtteranceAudioFile = v19;

  v21 = [CSPlainAudioFileWriter alloc];
  v22 = [NSURL URLWithString:self->_leadingUtteranceAudioFile];
  +[CSFAudioStreamBasicDescriptionFactory lpcmInt16ASBD];
  +[CSFAudioStreamBasicDescriptionFactory lpcmInt16ASBD];
  v23 = [v21 initWithURL:v22 inputFormat:buf outputFormat:v27];
  leadingUtteranceLogger = self->_leadingUtteranceLogger;
  self->_leadingUtteranceLogger = v23;

  v25 = CSLogCategorySpkrId;
  if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_DEFAULT))
  {
    v26 = self->_leadingUtteranceAudioFile;
    *buf = 136315394;
    v29 = "[CSAttSiriSSRNode _setupLeadingUtteranceLogger]";
    v30 = 2114;
    v31 = v26;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s Recording leading utterance - %{public}@", buf, 0x16u);
  }
}

- (void)_setupSpeakerRecognitionForFollowUp:(id)up withVoiceTriggerInfo:(id)info
{
  upCopy = up;
  infoCopy = info;
  v8 = [(SSRVoiceProfileManager *)self->_voiceProfileManager provisionedVoiceProfilesForAppDomain:SSRSpeakerRecognitionSiriCCAppDomain withLocale:upCopy];
  v9 = v8;
  if (v8 && [v8 count])
  {
    [(CSAttSiriSSRNode *)self _setupSpeakerRecognitionForProfiles:v9 WithVTEventInfo:infoCopy WithLocale:upCopy];
  }

  else
  {
    v10 = CSLogCategorySpkrId;
    if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[CSAttSiriSSRNode _setupSpeakerRecognitionForFollowUp:withVoiceTriggerInfo:]";
      v13 = 2114;
      v14 = upCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Voice Profiles not present for Continuous Conversation for %{public}@ - Bailing out", &v11, 0x16u);
    }
  }
}

- (void)_setupSSRControllerWithAudioContext:(id)context withVoiceTriggerEventInfo:(id)info
{
  contextCopy = context;
  infoCopy = info;
  if ((CSIsCommunalDevice() & 1) != 0 || ([contextCopy isContinuousConversation] & 1) != 0 || objc_msgSend(contextCopy, "isBuiltInVoiceTriggered"))
  {
    v8 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
    ssrAssets = self->_ssrAssets;
    if (ssrAssets)
    {
      firstObject = [(NSArray *)ssrAssets firstObject];
      asset = self->_asset;
      self->_asset = firstObject;

      v12 = CSLogCategorySpkrId;
      if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_DEFAULT))
      {
        v13 = self->_asset;
        v14 = v12;
        configVersion = [(CSAsset *)v13 configVersion];
        v27 = 136315394;
        v28 = "[CSAttSiriSSRNode _setupSSRControllerWithAudioContext:withVoiceTriggerEventInfo:]";
        v29 = 2114;
        v30 = configVersion;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Asset Vers: %{public}@", &v27, 0x16u);
      }

      isContinuousConversation = [contextCopy isContinuousConversation];
      v17 = +[SSRVoiceProfileManager sharedInstance];
      voiceProfileManager = self->_voiceProfileManager;
      self->_voiceProfileManager = v17;

      if ((CSIsCommunalDevice() & 1) != 0 || ((CSIsIOS() & 1) != 0 || CSIsAppleSiliconMac()) && (([contextCopy isBuiltInVoiceTriggered] & 1) != 0 || objc_msgSend(contextCopy, "isDarwinVoiceTriggered")))
      {
        v19 = [(SSRVoiceProfileManager *)self->_voiceProfileManager provisionedVoiceProfilesForAppDomain:SSRSpeakerRecognitionSiriAppDomain withLocale:v8];
        v20 = v19;
        if (v19 && [v19 count])
        {
          if (CSIsCommunalDevice())
          {
            v21 = [(CSAttSiriSSRNode *)self filteredVoiceProfileArray:v20];

            v20 = v21;
          }

          if (CSIsInternalBuild())
          {
            v22 = [(SSRVoiceProfileManager *)self->_voiceProfileManager provisionedVoiceProfilesForAppDomain:SSRSpeakerRecognitionSiriDebugAppDomain withLocale:v8];
            if (v22)
            {
              v23 = [v20 arrayByAddingObjectsFromArray:v22];

              v20 = v23;
            }
          }

          [(CSAttSiriSSRNode *)self _setupSpeakerRecognitionForProfiles:v20 WithVTEventInfo:infoCopy WithLocale:v8];
        }

        else
        {
          v25 = CSLogCategorySpkrId;
          if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_DEFAULT))
          {
            v27 = 136315394;
            v28 = "[CSAttSiriSSRNode _setupSSRControllerWithAudioContext:withVoiceTriggerEventInfo:]";
            v29 = 2114;
            v30 = v8;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s Voice Profiles not present for %{public}@ - Bailing out", &v27, 0x16u);
          }
        }
      }

      else
      {
        v26 = CSLogCategorySpkrId;
        if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 136315394;
          v28 = "[CSAttSiriSSRNode _setupSSRControllerWithAudioContext:withVoiceTriggerEventInfo:]";
          v29 = 1024;
          LODWORD(v30) = isContinuousConversation;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s isCurReqTriggerFreeFollowOn:%u", &v27, 0x12u);
        }

        if (isContinuousConversation)
        {
          [(CSAttSiriSSRNode *)self _setupSpeakerRecognitionForFollowUp:v8 withVoiceTriggerInfo:infoCopy];
        }
      }
    }

    else
    {
      v24 = CSLogCategorySpkrId;
      if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 136315394;
        v28 = "[CSAttSiriSSRNode _setupSSRControllerWithAudioContext:withVoiceTriggerEventInfo:]";
        v29 = 2114;
        v30 = v8;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s SSR Assets is nil for %{public}@ - Bailing out", &v27, 0x16u);
      }
    }
  }
}

- (void)setUpSpeakerProfileForFlexibleFollowup
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000317CC;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)getSharedUserIdWithHighestVoiceIdScore:(id)score
{
  scoreCopy = score;
  v5 = scoreCopy;
  if (scoreCopy && [scoreCopy count])
  {
    if ([v5 count] == 1)
    {
      firstObject = [v5 firstObject];
    }

    else
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x3032000000;
      v15 = sub_10002DBC0;
      v16 = sub_10002DBD0;
      v17 = 0;
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000319D4;
      block[3] = &unk_100252228;
      block[4] = self;
      v10 = v5;
      v11 = &v12;
      dispatch_async_and_wait(queue, block);
      firstObject = v13[5];

      _Block_object_dispose(&v12, 8);
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (void)cacheSharedUserInfos:(id)infos
{
  infosCopy = infos;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100031C18;
  v7[3] = &unk_100253C48;
  v8 = infosCopy;
  selfCopy = self;
  v6 = infosCopy;
  dispatch_async(queue, v7);
}

- (id)filteredVoiceProfileArray:(id)array
{
  if (array)
  {
    arrayCopy = array;
    v5 = [NSPredicate predicateWithBlock:&stru_10024EAC8];
    v6 = [arrayCopy filteredArrayUsingPredicate:v5];

    v7 = [v6 count];
    v8 = [arrayCopy count];

    self->_shouldCleanupVoiceProfile = v7 < v8;
    v9 = CSLogCategorySpkrId;
    if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[CSAttSiriSSRNode filteredVoiceProfileArray:]";
      v13 = 2048;
      v14 = v7 < v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s _shouldCleanupVoiceProfile: %lu", &v11, 0x16u);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setPrefetchedAsset:(id)asset
{
  assetCopy = asset;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100031ED4;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = assetCopy;
  v6 = assetCopy;
  dispatch_async(queue, v7);
}

- (void)removeReceiver:(id)receiver
{
  receiverCopy = receiver;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100032080;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = receiverCopy;
  v6 = receiverCopy;
  dispatch_async(queue, v7);
}

- (void)addReceiver:(id)receiver
{
  receiverCopy = receiver;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003216C;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = receiverCopy;
  v6 = receiverCopy;
  dispatch_async(queue, v7);
}

- (void)stop
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100032338;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)resetForNewRequestWithRecordContext:(id)context voiceTriggerInfo:(id)info withReqId:(id)id
{
  contextCopy = context;
  infoCopy = info;
  idCopy = id;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000324E4;
  v15[3] = &unk_100252F38;
  v15[4] = self;
  v16 = contextCopy;
  v17 = infoCopy;
  v18 = idCopy;
  v12 = idCopy;
  v13 = infoCopy;
  v14 = contextCopy;
  dispatch_async(queue, v15);
}

- (void)_setupWithDownloadMonitor:(id)monitor assetHandler:(id)handler
{
  monitorCopy = monitor;
  handlerCopy = handler;
  if (monitorCopy)
  {
    v8 = monitorCopy;
  }

  else
  {
    v8 = +[CSSpeakerRecognitionAssetDownloadMonitor sharedInstance];
  }

  downloadMonitor = self->_downloadMonitor;
  self->_downloadMonitor = v8;

  if (handlerCopy)
  {
    v10 = handlerCopy;
  }

  else
  {
    v10 = +[CSVoiceTriggerAssetHandler sharedHandler];
  }

  assetHandler = self->_assetHandler;
  self->_assetHandler = v10;

  requiredNodes = self->_requiredNodes;
  self->_type = 10;
  self->_requiredNodes = &off_10025ECA8;

  v13 = +[NSHashTable weakObjectsHashTable];
  receivers = self->_receivers;
  self->_receivers = v13;

  self->_isReady = 0;
  v15 = [objc_opt_class() description];
  v16 = [CSUtils getSerialQueueWithQOS:33 name:v15 fixedPriority:kCSDefaultSerialQueueFixedPriority];
  queue = self->_queue;
  self->_queue = v16;

  [(CSSpeakerRecognitionAssetDownloadMonitor *)self->_downloadMonitor addObserver:self];
  v18 = +[CSLanguageCodeUpdateMonitor sharedInstance];
  [v18 addObserver:self];

  v19 = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003271C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(v19, block);
}

- (CSAttSiriSSRNode)initWithAttSiriController:(id)controller
{
  controllerCopy = controller;
  v5 = [(CSAttSiriSSRNode *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_attSiriController, controllerCopy);
  }

  return v6;
}

- (CSAttSiriSSRNode)initWithDownloadMonitor:(id)monitor assetHandler:(id)handler
{
  monitorCopy = monitor;
  handlerCopy = handler;
  v11.receiver = self;
  v11.super_class = CSAttSiriSSRNode;
  v8 = [(CSAttSiriSSRNode *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CSAttSiriSSRNode *)v8 _setupWithDownloadMonitor:monitorCopy assetHandler:handlerCopy];
  }

  return v9;
}

- (CSAttSiriSSRNode)init
{
  v6.receiver = self;
  v6.super_class = CSAttSiriSSRNode;
  v2 = [(CSAttSiriSSRNode *)&v6 init];
  if (v2)
  {
    v3 = +[CSSpeakerRecognitionAssetDownloadMonitor sharedInstance];
    v4 = +[CSVoiceTriggerAssetHandler sharedHandler];
    [(CSAttSiriSSRNode *)v2 _setupWithDownloadMonitor:v3 assetHandler:v4];
  }

  return v2;
}

@end