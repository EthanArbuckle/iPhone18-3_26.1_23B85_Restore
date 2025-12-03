@interface CSSelfTriggerDetector
+ (id)_digitalZeroChunkFromFirstAudioChunk:(id)chunk;
+ (id)selfTriggerAudioLogDirectory;
+ (id)selfTriggerAudioLoggingFilePath;
+ (id)timeStampString;
- (BOOL)_isTelephonyTapAvailable;
- (CSSelfTriggerDetector)initWithTargetQueue:(id)queue audioProviderSelecting:(id)selecting audioSourceType:(unint64_t)type;
- (CSSpeechManager)speechManager;
- (unint64_t)_getPlaybackRouteType;
- (unint64_t)currentState;
- (void)CSAudioServerCrashMonitorDidReceiveServerRestart:(id)restart;
- (void)CSPhoneCallStateMonitor:(id)monitor didRecievePhoneCallStateChange:(unint64_t)change;
- (void)_addPowerLogsIfSupported:(unint64_t)supported;
- (void)_hardStopAndRestartAudioQueueIfNeeded;
- (void)_keywordAnalyzerNDAPI:(id)i hasResultAvailable:(id)available forChannel:(unint64_t)channel;
- (void)_loadCurrentAssetToAnalyzer;
- (void)_processAudioChunk:(id)chunk;
- (void)_reset;
- (void)_setAsset:(id)asset;
- (void)_startListenPolling;
- (void)_startListenPollingWithInterval:(double)interval completion:(id)completion;
- (void)_startListenWithCompletion:(id)completion;
- (void)_stopAudioFileWriter;
- (void)_stopListeningWithCompletion:(id)completion;
- (void)_transitCurrentStateTo:(unint64_t)to;
- (void)_unloadCurrentAssetToAnalyzer;
- (void)audioStreamProvider:(id)provider audioBufferAvailable:(id)available;
- (void)audioStreamProvider:(id)provider didStopStreamUnexpectedly:(int64_t)unexpectedly;
- (void)registerObserver:(id)observer;
- (void)reset;
- (void)setAsset:(id)asset;
- (void)siriClientBehaviorMonitor:(id)monitor didStartStreamWithContext:(id)context successfully:(BOOL)successfully option:(id)option withEventUUID:(id)d;
- (void)siriClientBehaviorMonitor:(id)monitor didStopStream:(id)stream withEventUUID:(id)d;
- (void)siriClientBehaviorMonitor:(id)monitor willStopStream:(id)stream reason:(unint64_t)reason;
- (void)start;
- (void)startAnalyze;
- (void)stopAnalyzeWithCompletion:(id)completion;
- (void)unregisterObserver:(id)observer;
@end

@implementation CSSelfTriggerDetector

- (CSSpeechManager)speechManager
{
  WeakRetained = objc_loadWeakRetained(&self->_speechManager);

  return WeakRetained;
}

- (void)_stopAudioFileWriter
{
  audioFileWriter = self->_audioFileWriter;
  if (audioFileWriter)
  {
    [(CSPlainAudioFileWriter *)audioFileWriter endAudio];
    v4 = self->_audioFileWriter;
    self->_audioFileWriter = 0;
  }
}

- (void)_addPowerLogsIfSupported:(unint64_t)supported
{
  if ([(CSSelfTriggerDetector *)self _shouldAddPowerLogs]&& self->_state != supported)
  {
    if (supported)
    {
      if (supported != 1)
      {
        return;
      }

      _getPlaybackRouteType = [(CSSelfTriggerDetector *)self _getPlaybackRouteType];
      v6 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
      if ([v6 phoneCallState] == 3)
      {
        v7 = 1;
      }

      else
      {
        v9 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
        v7 = [v9 phoneCallState] == 4;
      }

      v11 = +[CSPowerLogger sharedPowerLogger];
      audioSourceType = self->_audioSourceType;
      v8 = +[NSDate date];
      [v8 timeIntervalSince1970];
      [v11 powerLogSelfTriggerSuppressionStartWithSpeakerType:_getPlaybackRouteType withAudioSource:audioSourceType atTime:v7 isPhoneCall:?];
    }

    else
    {
      v11 = +[CSPowerLogger sharedPowerLogger];
      v8 = +[NSDate date];
      [v8 timeIntervalSince1970];
      [v11 powerLogSelfTriggerSuppressionStopAtTime:?];
    }
  }
}

- (void)_transitCurrentStateTo:(unint64_t)to
{
  v5 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    audioSourceType = self->_audioSourceType;
    state = self->_state;
    v8 = 136315906;
    v9 = "[CSSelfTriggerDetector _transitCurrentStateTo:]";
    v10 = 2048;
    v11 = state;
    v12 = 2048;
    toCopy = to;
    v14 = 2048;
    v15 = audioSourceType;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s From state : %lu to state : %lu , audioSourceType : %lu", &v8, 0x2Au);
  }

  [(CSSelfTriggerDetector *)self _addPowerLogsIfSupported:to];
  self->_state = to;
}

- (void)_hardStopAndRestartAudioQueueIfNeeded
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10001AD5C;
  v2[3] = &unk_100253300;
  v2[4] = self;
  [(CSSelfTriggerDetector *)self _stopListeningWithCompletion:v2];
}

- (void)CSPhoneCallStateMonitor:(id)monitor didRecievePhoneCallStateChange:(unint64_t)change
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001ADE8;
  v5[3] = &unk_100253C98;
  v5[4] = self;
  v5[5] = change;
  dispatch_async(queue, v5);
}

- (void)CSAudioServerCrashMonitorDidReceiveServerRestart:(id)restart
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B010;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)siriClientBehaviorMonitor:(id)monitor willStopStream:(id)stream reason:(unint64_t)reason
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B144;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)siriClientBehaviorMonitor:(id)monitor didStopStream:(id)stream withEventUUID:(id)d
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B270;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)siriClientBehaviorMonitor:(id)monitor didStartStreamWithContext:(id)context successfully:(BOOL)successfully option:(id)option withEventUUID:(id)d
{
  if (successfully)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001B3A0;
    block[3] = &unk_100253C20;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)_keywordAnalyzerNDAPI:(id)i hasResultAvailable:(id)available forChannel:(unint64_t)channel
{
  availableCopy = available;
  [availableCopy bestScore];
  v9 = v8;
  v10 = qword_10029DF70;
  if (!(v10 % +[CSUtils loggingHeartbeatRate]))
  {
    v11 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_isSiriClientListening)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      audioSourceType = self->_audioSourceType;
      selfTriggerConfig = self->_selfTriggerConfig;
      v15 = v11;
      [(CSContinuousVoiceTriggerConfig *)selfTriggerConfig threshold];
      *buf = 136316418;
      v99 = "[CSSelfTriggerDetector _keywordAnalyzerNDAPI:hasResultAvailable:forChannel:]";
      v100 = 2050;
      v101 = v9;
      v102 = 2050;
      v103 = *&channel;
      v104 = 2114;
      v105 = v12;
      v106 = 2050;
      v107 = audioSourceType;
      v108 = 2048;
      v109 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s Output NDAPI self trigger best score = %{public}f for channel = %{public}tu, client listening ? %{public}@, audioSourceType %{public}lu, threshold = %f", buf, 0x3Eu);
    }
  }

  ++qword_10029DF70;
  if (!self->_isSiriClientListening)
  {
    [(CSContinuousVoiceTriggerConfig *)self->_selfTriggerConfig threshold];
    if (v9 >= v17)
    {
      bestStart = [availableCopy bestStart];
      bestEnd = [availableCopy bestEnd];
      samplesAtFire = [availableCopy samplesAtFire];
      +[CSConfig inputRecordingSampleRate];
      v42 = ((bestEnd - bestStart) / v41);
      +[CSConfig inputRecordingSampleRate];
      v44 = ((samplesAtFire - bestStart) / v43);
      v45 = [(CSAudioTimeConverter *)self->_audioTimeConverter hostTimeFromSampleCount:bestStart];
      v87 = [(CSAudioTimeConverter *)self->_audioTimeConverter hostTimeFromSampleCount:bestEnd];
      v23 = +[NSMutableDictionary dictionary];
      configVersion = [(CSAsset *)self->_currentAsset configVersion];

      if (configVersion)
      {
        configVersion2 = [(CSAsset *)self->_currentAsset configVersion];
        [(__CFString *)v23 setObject:configVersion2 forKey:kVTEIconfigVersion];
      }

      +[CSConfig inputRecordingSampleRate];
      v48 = [NSNumber numberWithUnsignedInteger:bestStart];
      [(__CFString *)v23 setObject:v48 forKey:kVTEItriggerStartSampleCount];

      v49 = [NSNumber numberWithUnsignedInteger:bestEnd];
      [(__CFString *)v23 setObject:v49 forKey:kVTEItriggerEndSampleCount];

      v50 = [NSNumber numberWithUnsignedInteger:samplesAtFire];
      [(__CFString *)v23 setObject:v50 forKey:kVTEItriggerFireSampleCount];

      [(__CFString *)v23 setObject:&off_10025E978 forKey:kVTEItriggerStartSeconds];
      v51 = [NSNumber numberWithDouble:v42];
      [(__CFString *)v23 setObject:v51 forKey:kVTEItriggerEndSeconds];

      v52 = [NSNumber numberWithDouble:v44];
      [(__CFString *)v23 setObject:v52 forKey:kVTEItriggerFireSeconds];

      *&v53 = v9;
      v54 = [NSNumber numberWithFloat:v53];
      [(__CFString *)v23 setObject:v54 forKey:kVTEItriggerScore];

      [(CSContinuousVoiceTriggerConfig *)self->_selfTriggerConfig threshold];
      v55 = [NSNumber numberWithFloat:?];
      [(__CFString *)v23 setObject:v55 forKey:kVTEIthreshold];

      v56 = [NSNumber numberWithUnsignedLongLong:v45];
      [(__CFString *)v23 setObject:v56 forKey:kVTEItriggerStartMachTime];

      v57 = [NSNumber numberWithUnsignedLongLong:v87];
      [(__CFString *)v23 setObject:v57 forKey:kVTEItriggerEndMachTime];

      v58 = [NSNumber numberWithUnsignedInteger:channel];
      [(__CFString *)v23 setObject:v58 forKey:kVTEIactiveChannel];

      audioProviderUUID = [(CSSelfTriggerDetector *)self audioProviderUUID];

      if (audioProviderUUID)
      {
        audioProviderUUID2 = [(CSSelfTriggerDetector *)self audioProviderUUID];
        [(__CFString *)v23 setObject:audioProviderUUID2 forKey:kVTEIAudioProviderUUID];
      }

      if (self->_audioSourceType == 1)
      {
        [(__CFString *)v23 setObject:&off_10025DCE8 forKey:kVTEIAudioProviderType];
        if (self->_tapProviderType == 1)
        {
          v61 = &off_10025DCE8;
        }

        else
        {
          v61 = &off_10025DD00;
        }

        [(__CFString *)v23 setObject:v61 forKey:kVTEIAudioTapProviderType];
      }

      v62 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
      {
        v63 = v62;
        v64 = COERCE_DOUBLE(mach_absolute_time());
        v65 = self->_audioSourceType;
        *buf = 136315906;
        v99 = "[CSSelfTriggerDetector _keywordAnalyzerNDAPI:hasResultAvailable:forChannel:]";
        v100 = 2048;
        v101 = v64;
        v102 = 2050;
        v103 = *&v65;
        v104 = 2114;
        v105 = v23;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%s At %llu notifying self trigger detected with audioSourceType %{public}lu : %{public}@", buf, 0x2Au);
      }

      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v66 = self->_observers;
      v67 = [(NSHashTable *)v66 countByEnumeratingWithState:&v92 objects:v97 count:16];
      if (v67)
      {
        v68 = v67;
        v69 = *v93;
        do
        {
          for (i = 0; i != v68; i = i + 1)
          {
            if (*v93 != v69)
            {
              objc_enumerationMutation(v66);
            }

            v71 = *(*(&v92 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v71 selfTriggerDetector:self didDetectSelfTrigger:v23];
            }
          }

          v68 = [(NSHashTable *)v66 countByEnumeratingWithState:&v92 objects:v97 count:16];
        }

        while (v68);
      }

      if ([(CSSelfTriggerDetector *)self _shouldAddPowerLogs])
      {
        _getPlaybackRouteType = [(CSSelfTriggerDetector *)self _getPlaybackRouteType];
        v73 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
        if ([v73 phoneCallState] == 3)
        {
          v74 = 1;
        }

        else
        {
          v82 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
          v74 = [v82 phoneCallState] == 4;
        }

        v83 = +[CSPowerLogger sharedPowerLogger];
        v84 = self->_audioSourceType;
        v85 = +[NSDate date];
        [v85 timeIntervalSince1970];
        [v83 powerLogSelfTriggerSuppressionDetectedWithSpeakerType:_getPlaybackRouteType withAudioSource:v84 atTime:v74 isPhoneCall:?];
      }

      goto LABEL_58;
    }

    [(CSContinuousVoiceTriggerConfig *)self->_selfTriggerConfig loggingThreshold];
    if (v9 >= v18)
    {
      if (self->_hasPendingNearMiss)
      {
        nearMissDelayTimeoutInSamples = self->_nearMissDelayTimeoutInSamples;
        nearMissCandidateDetectedSamples = self->_nearMissCandidateDetectedSamples;
        v21 = *&self->_numAnalyzedSamples;
        if (nearMissDelayTimeoutInSamples + nearMissCandidateDetectedSamples < *&v21)
        {
          v22 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v99 = "[CSSelfTriggerDetector _keywordAnalyzerNDAPI:hasResultAvailable:forChannel:]";
            v100 = 2048;
            v101 = v21;
            v102 = 2048;
            v103 = v9;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s SelfTrigger detected near miss at %lu samples with score %.3f", buf, 0x20u);
          }

          v23 = +[NSMutableDictionary dictionary];
          bestStart2 = [availableCopy bestStart];
          samplesAtFire2 = [availableCopy samplesAtFire];
          +[CSConfig inputRecordingSampleRate];
          if ((v26 + v26) <= samplesAtFire2)
          {
            samplesAtFire3 = [availableCopy samplesAtFire];
            +[CSConfig inputRecordingSampleRate];
            bestStart2 = (samplesAtFire3 + (v28 * -2.0));
          }

          v29 = [NSNumber numberWithUnsignedInteger:bestStart2];
          [(__CFString *)v23 setObject:v29 forKey:kVTEItriggerStartSampleCount];

          audioProviderUUID3 = [(CSSelfTriggerDetector *)self audioProviderUUID];

          if (audioProviderUUID3)
          {
            audioProviderUUID4 = [(CSSelfTriggerDetector *)self audioProviderUUID];
            [(__CFString *)v23 setObject:audioProviderUUID4 forKey:kVTEIAudioProviderUUID];
          }

          if (self->_audioSourceType == 1)
          {
            [(__CFString *)v23 setObject:&off_10025DCE8 forKey:kVTEIAudioProviderType];
          }

          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v32 = self->_observers;
          v33 = [(NSHashTable *)v32 countByEnumeratingWithState:&v88 objects:v96 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v89;
            do
            {
              for (j = 0; j != v34; j = j + 1)
              {
                if (*v89 != v35)
                {
                  objc_enumerationMutation(v32);
                }

                v37 = *(*(&v88 + 1) + 8 * j);
                if (objc_opt_respondsToSelector())
                {
                  [v37 selfTriggerDetector:self didDetectNearMiss:v23];
                }
              }

              v34 = [(NSHashTable *)v32 countByEnumeratingWithState:&v88 objects:v96 count:16];
            }

            while (v34);
          }

LABEL_58:
          [(CSSelfTriggerDetector *)self _reset];

          goto LABEL_59;
        }

        if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * qword_10029DF70, 1) <= 0x1999999999999999uLL)
        {
          v86 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v99 = "[CSSelfTriggerDetector _keywordAnalyzerNDAPI:hasResultAvailable:forChannel:]";
            v100 = 2050;
            *&v101 = *&v21 - nearMissCandidateDetectedSamples + nearMissDelayTimeoutInSamples;
            v78 = "%s Waiting for logging near miss until timeout %{public}lu samples";
            v79 = v86;
            v80 = OS_LOG_TYPE_INFO;
            v81 = 22;
            goto LABEL_55;
          }
        }
      }

      else
      {
        self->_hasPendingNearMiss = 1;
        v75 = *&self->_numAnalyzedSamples;
        *&self->_nearMissCandidateDetectedSamples = v75;
        v76 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          v77 = self->_nearMissDelayTimeoutInSamples;
          *buf = 136315650;
          v99 = "[CSSelfTriggerDetector _keywordAnalyzerNDAPI:hasResultAvailable:forChannel:]";
          v100 = 2050;
          v101 = v75;
          v102 = 2050;
          v103 = *&v77;
          v78 = "%s Detected near miss candidate at %{public}tu, let's wait %{public}tu samples to log";
          v79 = v76;
          v80 = OS_LOG_TYPE_DEFAULT;
          v81 = 32;
LABEL_55:
          _os_log_impl(&_mh_execute_header, v79, v80, v78, buf, v81);
        }
      }
    }
  }

LABEL_59:
}

- (void)audioStreamProvider:(id)provider audioBufferAvailable:(id)available
{
  availableCopy = available;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001BF8C;
  v8[3] = &unk_100253C48;
  v8[4] = self;
  v9 = availableCopy;
  v7 = availableCopy;
  dispatch_async(queue, v8);
}

- (void)_processAudioChunk:(id)chunk
{
  chunkCopy = chunk;
  -[CSAudioTimeConverter processSampleCount:hostTime:](self->_audioTimeConverter, "processSampleCount:hostTime:", [chunkCopy startSampleCount], objc_msgSend(chunkCopy, "hostTime"));
  if (self->_currentAsset)
  {
    if (self->_selfTriggerEnabled)
    {
      if (self->_audioFileWriter)
      {
        v5 = [chunkCopy dataForChannel:{-[CSKeywordAnalyzerNDAPI activeChannel](self->_keywordAnalyzer, "activeChannel")}];
        -[CSPlainAudioFileWriter addSamples:numSamples:](self->_audioFileWriter, "addSamples:numSamples:", [v5 bytes], objc_msgSend(chunkCopy, "numSamples"));
      }

      v6 = [(CSKeywordAnalyzerNDAPI *)self->_keywordAnalyzer getAnalyzedResultsFromAudioChunk:chunkCopy];
      v19 = chunkCopy;
      self->_numAnalyzedSamples += [chunkCopy numSamples];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v21;
        do
        {
          v11 = 0;
          do
          {
            if (*v21 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v20 + 1) + 8 * v11);
            voiceTriggerPhIds = [(CSContinuousVoiceTriggerConfig *)self->_selfTriggerConfig voiceTriggerPhIds];
            v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 phId]);
            v15 = [voiceTriggerPhIds containsObject:v14];

            if (v15)
            {
              [(CSSelfTriggerDetector *)self _keywordAnalyzerNDAPI:self->_keywordAnalyzer hasResultAvailable:v12 forChannel:[(CSKeywordAnalyzerNDAPI *)self->_keywordAnalyzer activeChannel]];
            }

            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v9);
      }

      chunkCopy = v19;
    }

    else
    {
      v17 = qword_10029DF68;
      if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * qword_10029DF68, 1) <= 0x1999999999999999uLL)
      {
        v18 = CSLogCategoryVT;
        if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v26 = "[CSSelfTriggerDetector _processAudioChunk:]";
          v27 = 2050;
          v28 = v17;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s enablePolicy is NO, we shouldn't receive audio here, heartbeat = %{public}lld", buf, 0x16u);
          v17 = qword_10029DF68;
        }
      }

      qword_10029DF68 = v17 + 1;
    }
  }

  else
  {
    v16 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "[CSSelfTriggerDetector _processAudioChunk:]";
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Could not find Assets. Cannot process Audio", buf, 0xCu);
    }
  }
}

- (void)audioStreamProvider:(id)provider didStopStreamUnexpectedly:(int64_t)unexpectedly
{
  v6 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[CSSelfTriggerDetector audioStreamProvider:didStopStreamUnexpectedly:]";
    v11 = 2050;
    unexpectedlyCopy = unexpectedly;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s stream stopped unexpectedly : %{public}ld", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001C524;
  v8[3] = &unk_100253C98;
  v8[4] = self;
  v8[5] = unexpectedly;
  dispatch_async(queue, v8);
}

- (unint64_t)_getPlaybackRouteType
{
  v2 = +[CSBuiltinSpeakerStateMonitor sharedInstance];
  currentBuiltinSpeakerState = [v2 currentBuiltinSpeakerState];

  if (currentBuiltinSpeakerState == 1)
  {
    return 1;
  }

  v5 = +[CSBluetoothSpeakerStateMonitor sharedInstance];
  isActive = [v5 isActive];

  if (isActive)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (BOOL)_isTelephonyTapAvailable
{
  v3 = +[CSUtils supportTelephonyAudioTap];
  if (v3)
  {
    LOBYTE(v3) = self->_audioSourceType == 1;
  }

  return v3;
}

- (void)_stopListeningWithCompletion:(id)completion
{
  completionCopy = completion;
  audioStream = [(CSSelfTriggerDetector *)self audioStream];
  if (audioStream && (v6 = audioStream, -[CSSelfTriggerDetector audioStream](self, "audioStream"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isStreaming], v7, v6, v8))
  {
    [(CSSelfTriggerDetector *)self _transitCurrentStateTo:3];
    audioStream2 = [(CSSelfTriggerDetector *)self audioStream];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_10001C7A4;
    v13 = &unk_100253270;
    selfCopy = self;
    v15 = completionCopy;
    [audioStream2 stopAudioStreamWithOption:0 completion:&v10];
  }

  else
  {
    [(CSSelfTriggerDetector *)self _unloadCurrentAssetToAnalyzer];
    [(CSSelfTriggerDetector *)self _transitCurrentStateTo:0];
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 1, 0);
    }
  }

  [(CSSelfTriggerDetector *)self _stopAudioFileWriter:v10];
}

- (void)stopAnalyzeWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001CA24;
  v7[3] = &unk_100253718;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)_startListenWithCompletion:(id)completion
{
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10001CF80;
  v43[3] = &unk_100253220;
  completionCopy = completion;
  v44 = completionCopy;
  v5 = objc_retainBlock(v43);
  v6 = +[CSAudioRecordContext contextForBuiltInVoiceTrigger];
  if (self->_audioSourceType == 1)
  {
    v7 = [(CSAudioProviderSelecting *)self->_audioProviderSelecting audioTapProviderWithType:self->_tapProviderType];
    if (v7)
    {
      v8 = v7;
      v9 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v46 = "[CSSelfTriggerDetector _startListenWithCompletion:]";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Using audio tapping provider for self-trigger", buf, 0xCu);
      }

      goto LABEL_8;
    }
  }

  if ([(CSSelfTriggerDetector *)self _shouldReuseBuiltInAudioProvider])
  {
    v10 = [(CSAudioProviderSelecting *)self->_audioProviderSelecting audioProviderWithStreamID:1];
    if (v10)
    {
      v8 = v10;
LABEL_8:
      v38 = 0;
      goto LABEL_11;
    }
  }

  audioProviderSelecting = self->_audioProviderSelecting;
  v42 = 0;
  v8 = [(CSAudioProviderSelecting *)audioProviderSelecting audioProviderWithContext:v6 error:&v42];
  v12 = v42;
  v13 = v12;
  if (!v8)
  {
    (v5[2])(v5, 0, v12);
    goto LABEL_20;
  }

  v38 = v12;
LABEL_11:
  uUID = [v8 UUID];
  v15 = [uUID copy];
  [(CSSelfTriggerDetector *)self setAudioProviderUUID:v15];

  v16 = objc_alloc_init(CSAudioTimeConverter);
  audioTimeConverter = self->_audioTimeConverter;
  self->_audioTimeConverter = v16;

  v18 = objc_alloc_init(CSAudioStreamRequest);
  v19 = +[CSFPreferences sharedPreferences];
  fileLoggingIsEnabled = [v19 fileLoggingIsEnabled];

  if (fileLoggingIsEnabled)
  {
    [v18 setRequiresHistoricalBuffer:1];
  }

  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  v41 = 0;
  v23 = [v8 audioStreamWithRequest:v18 streamName:v22 error:&v41];
  v24 = v41;

  if (v23)
  {
    v36 = v6;
    v37 = completionCopy;
    [(CSSelfTriggerDetector *)self setAudioStream:v23];
    [v23 setDelegate:self];
    v25 = mach_absolute_time();
    LODWORD(v26) = 2.0;
    v27 = v25 - [CSFTimeUtils secondsToHostTime:v26];
    v28 = objc_alloc_init(CSAudioStartStreamOption);
    [v28 setRequestHistoricalAudioDataWithHostTime:1];
    [v28 setStartRecordingHostTime:v27];
    [v28 setSkipAlertBehavior:1];
    [(CSSelfTriggerDetector *)self _loadCurrentAssetToAnalyzer];
    [(CSSelfTriggerDetector *)self _reset];
    [(CSSelfTriggerDetector *)self _transitCurrentStateTo:1];
    v29 = +[CSFPreferences sharedPreferences];
    isSelfTriggerFileLoggingEnabled = [v29 isSelfTriggerFileLoggingEnabled];

    if (isSelfTriggerFileLoggingEnabled)
    {
      v31 = +[CSSelfTriggerDetector selfTriggerAudioLoggingFilePath];
      v32 = [CSPlainAudioFileWriter alloc];
      v33 = [NSURL URLWithString:v31];
      v34 = [v32 initWithURL:v33];
      audioFileWriter = self->_audioFileWriter;
      self->_audioFileWriter = v34;
    }

    else
    {
      v31 = self->_audioFileWriter;
      self->_audioFileWriter = 0;
    }

    completionCopy = v37;
    v13 = v38;

    self->_didReceiveFirstBuffer = 0;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10001CF98;
    v39[3] = &unk_100253270;
    v39[4] = self;
    v40 = v5;
    [v23 startAudioStreamWithOption:v28 completion:v39];

    v6 = v36;
  }

  else
  {
    (v5[2])(v5, 0, v24);
    v13 = v38;
  }

LABEL_20:
}

- (void)_startListenPollingWithInterval:(double)interval completion:(id)completion
{
  completionCopy = completion;
  v7 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[CSSelfTriggerDetector _startListenPollingWithInterval:completion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  audioStream = [(CSSelfTriggerDetector *)self audioStream];
  if ([audioStream isStreaming])
  {
  }

  else
  {
    selfTriggerEnabled = self->_selfTriggerEnabled;

    if (selfTriggerEnabled)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10001D358;
      v11[3] = &unk_1002531F8;
      v11[4] = self;
      intervalCopy = interval;
      v12 = completionCopy;
      [(CSSelfTriggerDetector *)self _startListenWithCompletion:v11];

      goto LABEL_11;
    }
  }

  v10 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[CSSelfTriggerDetector _startListenPollingWithInterval:completion:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Skip listen polling since audio is streaming / selfTrigger disabled", buf, 0xCu);
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

LABEL_11:
}

- (void)_startListenPolling
{
  if (self->_isListenPollingStarting)
  {
    v2 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v5 = "[CSSelfTriggerDetector _startListenPolling]";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Already started listen polling, skip", buf, 0xCu);
    }
  }

  else
  {
    self->_isListenPollingStarting = 1;
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10001D69C;
    v3[3] = &unk_100253300;
    v3[4] = self;
    [(CSSelfTriggerDetector *)self _startListenPollingWithInterval:v3 completion:1.0];
  }
}

- (void)startAnalyze
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001D71C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_unloadCurrentAssetToAnalyzer
{
  v3 = objc_autoreleasePoolPush();
  keywordAnalyzer = self->_keywordAnalyzer;
  self->_keywordAnalyzer = 0;

  modelLoadTransaction = self->_modelLoadTransaction;
  self->_modelLoadTransaction = 0;

  objc_autoreleasePoolPop(v3);
}

- (void)_loadCurrentAssetToAnalyzer
{
  if (!self->_modelLoadTransaction)
  {
    v3 = [[CSOSTransaction alloc] initWithDescription:@"Transaction for STS model loading"];
    modelLoadTransaction = self->_modelLoadTransaction;
    self->_modelLoadTransaction = v3;
  }

  resourcePath = [(CSAsset *)self->_currentAsset resourcePath];
  configPathNDAPI = [(CSContinuousVoiceTriggerConfig *)self->_selfTriggerConfig configPathNDAPI];
  v6 = [[CSKeywordAnalyzerNDAPI alloc] initWithConfigPath:configPathNDAPI resourcePath:resourcePath];
  keywordAnalyzer = self->_keywordAnalyzer;
  self->_keywordAnalyzer = v6;

  v8 = self->_keywordAnalyzer;
  self->_isKeywordAnalyzerCorrupted = v8 == 0;
  if (self->_audioSourceType == 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = +[CSConfig channelForOutputReference];
  }

  [(CSKeywordAnalyzerNDAPI *)v8 setActiveChannel:v9];
}

- (void)_setAsset:(id)asset
{
  assetCopy = asset;
  if (assetCopy)
  {
    objc_storeStrong(&self->_currentAsset, asset);
    v6 = [CSContinuousVoiceTriggerConfigDecoder decodeConfigFrom:self->_currentAsset];
    selfTriggerConfig = self->_selfTriggerConfig;
    self->_selfTriggerConfig = v6;

    if (self->_keywordAnalyzer || self->_isKeywordAnalyzerCorrupted)
    {
      [(CSSelfTriggerDetector *)self _loadCurrentAssetToAnalyzer];
    }

    [(CSSelfTriggerDetector *)self _reset];
  }

  else
  {
    v8 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[CSSelfTriggerDetector _setAsset:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s asset is nil, stop initialization", &v9, 0xCu);
    }
  }
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001DA2C;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001DAD0;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (unint64_t)currentState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001DB88;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setAsset:(id)asset
{
  assetCopy = asset;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001DC34;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = assetCopy;
  v6 = assetCopy;
  dispatch_async(queue, v7);
}

- (void)_reset
{
  [(CSKeywordAnalyzerNDAPI *)self->_keywordAnalyzer reset];
  self->_hasPendingNearMiss = 0;
  self->_nearMissCandidateDetectedSamples = 0;
  self->_numAnalyzedSamples = 0;
}

- (void)reset
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001DCE4;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)start
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001DD60;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (CSSelfTriggerDetector)initWithTargetQueue:(id)queue audioProviderSelecting:(id)selecting audioSourceType:(unint64_t)type
{
  queueCopy = queue;
  selectingCopy = selecting;
  v19.receiver = self;
  v19.super_class = CSSelfTriggerDetector;
  v10 = [(CSSelfTriggerDetector *)&v19 init];
  if (v10)
  {
    v11 = dispatch_queue_create("CSSelfVoiceTriggerDetector Queue", 0);
    v12 = *(v10 + 2);
    *(v10 + 2) = v11;

    if (queueCopy)
    {
      dispatch_set_target_queue(*(v10 + 2), queueCopy);
    }

    v13 = +[NSHashTable weakObjectsHashTable];
    v14 = *(v10 + 3);
    *(v10 + 3) = v13;

    objc_storeStrong(v10 + 12, selecting);
    *(v10 + 14) = type;
    *(v10 + 15) = 0;
    v15 = *(v10 + 6);
    *(v10 + 6) = 0;

    *(v10 + 8) = 0;
    +[CSConfig inputRecordingSampleRate];
    *(v10 + 12) = 0;
    *(v10 + 18) = 0;
    *(v10 + 19) = 0;
    *(v10 + 17) = (v16 * 0.5);
  }

  v17 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "[CSSelfTriggerDetector initWithTargetQueue:audioProviderSelecting:audioSourceType:]";
    v22 = 2048;
    typeCopy = type;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s Creating SelfTriggerDetector with audioSourceType(%lu)", buf, 0x16u);
  }

  return v10;
}

+ (id)timeStampString
{
  v2 = objc_alloc_init(NSDateFormatter);
  v3 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  [v2 setDateFormat:@"yyyyMMdd-HHmmss"];
  v4 = +[NSDate date];
  v5 = [v2 stringFromDate:v4];

  return v5;
}

+ (id)selfTriggerAudioLogDirectory
{
  v2 = +[NSFileManager defaultManager];
  v3 = +[CSFPreferences sharedPreferences];
  voiceTriggerAudioLogDirectory = [v3 voiceTriggerAudioLogDirectory];

  if ([v2 fileExistsAtPath:voiceTriggerAudioLogDirectory])
  {
    v5 = 0;
  }

  else
  {
    v11 = 0;
    v6 = [v2 createDirectoryAtPath:voiceTriggerAudioLogDirectory withIntermediateDirectories:1 attributes:0 error:&v11];
    v5 = v11;
    if ((v6 & 1) == 0)
    {
      v7 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
      {
        v9 = v7;
        localizedDescription = [v5 localizedDescription];
        *buf = 136315650;
        v13 = "+[CSSelfTriggerDetector selfTriggerAudioLogDirectory]";
        v14 = 2114;
        v15 = voiceTriggerAudioLogDirectory;
        v16 = 2114;
        v17 = localizedDescription;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Couldn't create self-trigger audio logging directory at path %{public}@ %{public}@", buf, 0x20u);
      }

      voiceTriggerAudioLogDirectory = @"/tmp";
    }
  }

  return voiceTriggerAudioLogDirectory;
}

+ (id)selfTriggerAudioLoggingFilePath
{
  v2 = +[CSSelfTriggerDetector selfTriggerAudioLogDirectory];
  v3 = +[CSSelfTriggerDetector timeStampString];
  v4 = [NSString stringWithFormat:@"%@%@.wav", v3, @"-selfTrigger"];

  v5 = [v2 stringByAppendingPathComponent:v4];

  return v5;
}

+ (id)_digitalZeroChunkFromFirstAudioChunk:(id)chunk
{
  chunkCopy = chunk;
  startSampleCount = [chunkCopy startSampleCount];
  LODWORD(v5) = 0.5;
  v6 = [CSFTimeUtils secondsToHostTime:v5];
  if ([chunkCopy hostTime] <= v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ([chunkCopy hostTime] - v6);
  }

  v8 = [chunkCopy digitalZeroChunkWithDurationInSec:startSampleCount startSampleCount:v7 hostTime:0.5];

  return v8;
}

@end