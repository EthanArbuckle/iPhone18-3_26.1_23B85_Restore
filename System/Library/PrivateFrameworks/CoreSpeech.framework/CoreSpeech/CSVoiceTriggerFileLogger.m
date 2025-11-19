@interface CSVoiceTriggerFileLogger
- (BOOL)_shouldLogDeviceId:(id)a3;
- (BOOL)_shouldSkipLogging:(id)a3;
- (CSVoiceTriggerFileLogger)init;
- (id)_audioLogDirectory;
- (id)_geckoLogDirectory;
- (id)_metaFilenameWithRootDir:(id)a3 prefix:(id)a4 deviceId:(id)a5;
- (id)_timeStampString;
- (void)_clearOldGeckoLoggingFiles;
- (void)_clearOldLoggingFiles;
- (void)_logGeckoWithFilePrefix:(id)a3 WithResult:(id)a4;
- (void)_logSelfTriggerAudioWithPrefix:(id)a3 result:(id)a4;
- (void)_logVTResult:(id)a3 metaFilePath:(id)a4 audioFilePath:(id)a5 completion:(id)a6;
- (void)_moveSecureAudioCaptureFrom:(id)a3 withExclaveTimestamp:(id)a4;
- (void)_notifyFalseRejectFeedbackBanner:(id)a3;
- (void)_syncAvailableSecureCaptures;
- (void)_writeDictionary:(id)a3 toPath:(id)a4;
- (void)selfTriggerDetector:(id)a3 didDetectNearMiss:(id)a4;
- (void)selfTriggerDetector:(id)a3 didDetectSelfTrigger:(id)a4;
- (void)voiceTriggerDidDetectKeyword:(id)a3 deviceId:(id)a4;
- (void)voiceTriggerDidDetectNearMiss:(id)a3 deviceId:(id)a4;
- (void)voiceTriggerDidDetectSpeakerReject:(id)a3;
@end

@implementation CSVoiceTriggerFileLogger

- (void)_notifyFalseRejectFeedbackBanner:(id)a3
{
  v3 = kVTEItriggerScore;
  v4 = a3;
  v11 = [v4 objectForKey:v3];
  v5 = [v4 objectForKey:kVTEITriggeredPhId];

  if (v11)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    [v11 floatValue];
    v8 = v7;
    v9 = [v5 unsignedIntValue];
    LODWORD(v10) = v8;
    [CSSiriDebugConnection launchSiriDebugFeedbackBannerFalseRejectBannerWithTriggerScore:v9 withTriggeredPhraseId:v10];
  }
}

- (void)_clearOldGeckoLoggingFiles
{
  v4 = +[CSFPreferences sharedPreferences];
  v2 = [v4 geckoAudioLogDirectory];
  v3 = [NSURL URLWithString:v2];
  +[CSConfig daysBeforeRemovingLogFiles];
  [CSUtils removeLogFilesInDirectory:v3 matchingPattern:@".*" beforeDays:?];
}

- (void)_clearOldLoggingFiles
{
  v2 = +[CSFPreferences sharedPreferences];
  +[CSAudioFileManager pruneNumberOfLogFilesTo:](CSAudioFileManager, "pruneNumberOfLogFilesTo:", [v2 maxNumLoggingFiles]);

  +[CSConfig daysBeforeRemovingLogFiles];
  [CSAudioFileManager removeLogFilesOlderThanNDays:?];
  +[CSConfig daysBeforeRemovingLogFiles];

  [CSAudioFileManager removeRemoteP2PLogFilesOlderThanNDays:?];
}

- (void)_logSelfTriggerAudioWithPrefix:(id)a3 result:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(CSVoiceTriggerFileLogger *)self _shouldSkipLogging:v7])
  {
    v8 = [(CSVoiceTriggerFileLogger *)self _audioLogDirectory];
    v9 = [(CSVoiceTriggerFileLogger *)self _metaFilenameWithRootDir:v8 prefix:v6 deviceId:0];

    v10 = [v9 stringByReplacingOccurrencesOfString:@".json" withString:@".wav"];
    v11 = [v7 objectForKeyedSubscript:kVTEIAudioProviderUUID];
    v12 = [v7 mutableCopy];
    [v12 setObject:v10 forKey:kVTEICaptureFilePath];
    v13 = v12;

    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10014B254;
    block[3] = &unk_100252D58;
    v19 = v13;
    v20 = self;
    v21 = v11;
    v22 = v10;
    v23 = v9;
    v15 = v9;
    v16 = v10;
    v17 = v11;
    v7 = v13;
    dispatch_async(queue, block);
    [(CSVoiceTriggerFileLogger *)self _clearOldLoggingFiles];
  }
}

- (void)selfTriggerDetector:(id)a3 didDetectNearMiss:(id)a4
{
  v7 = a4;
  if (-[CSVoiceTriggerFileLogger fileLoggingEnabled](self, "fileLoggingEnabled") || (+[CSFPreferences sharedPreferences](CSFPreferences, "sharedPreferences"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isSelfTriggerNearMissAudioLoggingEnabled], v5, v6))
  {
    [(CSVoiceTriggerFileLogger *)self _logSelfTriggerAudioWithPrefix:@"-selfTriggerNearMiss" result:v7];
  }
}

- (void)selfTriggerDetector:(id)a3 didDetectSelfTrigger:(id)a4
{
  v5 = a4;
  if ([(CSVoiceTriggerFileLogger *)self fileLoggingEnabled])
  {
    [(CSVoiceTriggerFileLogger *)self _logSelfTriggerAudioWithPrefix:@"-selfTrigger" result:v5];
  }
}

- (void)voiceTriggerDidDetectSpeakerReject:(id)a3
{
  v10 = a3;
  [(CSVoiceTriggerFileLogger *)self _notifyFalseRejectFeedbackBanner:?];
  if ([(CSVoiceTriggerFileLogger *)self fileLoggingEnabled])
  {
    if ([(CSVoiceTriggerFileLogger *)self _shouldSkipLogging:v10])
    {
      goto LABEL_6;
    }

    v4 = [(CSVoiceTriggerFileLogger *)self _audioLogDirectory];
    v5 = [(CSVoiceTriggerFileLogger *)self _metaFilenameWithRootDir:v4 prefix:@"-rejected" deviceId:0];

    v6 = [v5 stringByReplacingOccurrencesOfString:@".json" withString:@".wav"];
    v7 = [v10 mutableCopy];
    [v7 setObject:v6 forKey:kVTEICaptureFilePath];
    v8 = v7;

    [(CSVoiceTriggerFileLogger *)self _logVTResult:v8 metaFilePath:v5 audioFilePath:v6 completion:&stru_100252D30];
    [(CSVoiceTriggerFileLogger *)self _clearOldLoggingFiles];

    v9 = v8;
  }

  else
  {
    v9 = v10;
  }

  v10 = v9;
  [(CSVoiceTriggerFileLogger *)self _logGeckoWithFilePrefix:@"-rejected" WithResult:v9];
LABEL_6:
}

- (void)_logGeckoWithFilePrefix:(id)a3 WithResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (((CSIsIOS() & 1) != 0 || CSIsHorseman()) && [(CSVoiceTriggerFileLogger *)self geckoLoggingEnabled]&& ![(CSVoiceTriggerFileLogger *)self _shouldSkipLogging:v7])
  {
    v8 = [(CSVoiceTriggerFileLogger *)self _geckoLogDirectory];
    if (v8)
    {
      v9 = [(CSVoiceTriggerFileLogger *)self _metaFilenameWithRootDir:v8 prefix:v6 deviceId:0];
      v10 = [v9 stringByReplacingOccurrencesOfString:@".json" withString:@".wav"];
      v11 = [v7 mutableCopy];
      [v11 setObject:v10 forKey:kVTEICaptureFilePath];
      v12 = v11;

      [(CSVoiceTriggerFileLogger *)self _logVTResult:v12 metaFilePath:v9 audioFilePath:v10 completion:&stru_100252D10];
      [(CSVoiceTriggerFileLogger *)self _clearOldGeckoLoggingFiles];

      v7 = v12;
    }

    else
    {
      v13 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315138;
        v15 = "[CSVoiceTriggerFileLogger _logGeckoWithFilePrefix:WithResult:]";
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Failed to get Gecko log directory", &v14, 0xCu);
      }
    }
  }
}

- (void)voiceTriggerDidDetectNearMiss:(id)a3 deviceId:(id)a4
{
  v15 = a3;
  v6 = a4;
  [(CSVoiceTriggerFileLogger *)self _notifyFalseRejectFeedbackBanner:v15];
  if ([(CSVoiceTriggerFileLogger *)self fileLoggingEnabled])
  {
    if ([(CSVoiceTriggerFileLogger *)self _shouldSkipLogging:v15])
    {
      goto LABEL_9;
    }

    v7 = [(CSVoiceTriggerFileLogger *)self _shouldLogDeviceId:v15];
    v8 = [(CSVoiceTriggerFileLogger *)self _audioLogDirectory];
    if (v7)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }

    v10 = [(CSVoiceTriggerFileLogger *)self _metaFilenameWithRootDir:v8 prefix:@"-almost" deviceId:v9];

    v11 = [v10 stringByReplacingOccurrencesOfString:@".json" withString:@".wav"];
    v12 = [v15 mutableCopy];
    [v12 setObject:v11 forKey:kVTEICaptureFilePath];
    v13 = v12;

    [(CSVoiceTriggerFileLogger *)self _logVTResult:v13 metaFilePath:v10 audioFilePath:v11 completion:&stru_100252CF0];
    [(CSVoiceTriggerFileLogger *)self _clearOldLoggingFiles];

    v14 = v13;
  }

  else
  {
    v14 = v15;
  }

  v15 = v14;
  [(CSVoiceTriggerFileLogger *)self _logGeckoWithFilePrefix:@"-almost" WithResult:v14];
LABEL_9:
}

- (void)_logVTResult:(id)a3 metaFilePath:(id)a4 audioFilePath:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (self->_isExclaveHardware && CSIsInternalBuild())
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10014BC74;
    block[3] = &unk_100253C20;
    block[4] = self;
    dispatch_async(queue, block);
    v15 = self->_queue;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10014BC7C;
    v26[3] = &unk_100252CA8;
    v27 = v13;
    v16 = v13;
    dispatch_async(v15, v26);
  }

  else
  {
    v17 = [v10 objectForKeyedSubscript:kVTEIAudioProviderUUID];
    v18 = self->_queue;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10014BC94;
    v20[3] = &unk_100252CD0;
    v20[4] = self;
    v21 = v17;
    v22 = v10;
    v23 = v12;
    v24 = v11;
    v25 = v13;
    v19 = v13;
    v16 = v17;
    dispatch_async(v18, v20);
  }
}

- (void)voiceTriggerDidDetectKeyword:(id)a3 deviceId:(id)a4
{
  v15 = a3;
  v6 = a4;
  if ([(CSVoiceTriggerFileLogger *)self fileLoggingEnabled])
  {
    if ([(CSVoiceTriggerFileLogger *)self _shouldSkipLogging:v15])
    {
      goto LABEL_9;
    }

    v7 = [(CSVoiceTriggerFileLogger *)self _shouldLogDeviceId:v15];
    v8 = [(CSVoiceTriggerFileLogger *)self _audioLogDirectory];
    if (v7)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }

    v10 = [(CSVoiceTriggerFileLogger *)self _metaFilenameWithRootDir:v8 prefix:@"-triggered" deviceId:v9];

    v11 = [v10 stringByReplacingOccurrencesOfString:@".json" withString:@".wav"];
    v12 = [v15 mutableCopy];
    [v12 setObject:v11 forKey:kVTEICaptureFilePath];
    v13 = v12;

    [(CSVoiceTriggerFileLogger *)self _logVTResult:v13 metaFilePath:v10 audioFilePath:v11 completion:&stru_100252C80];
    [(CSVoiceTriggerFileLogger *)self _clearOldLoggingFiles];

    v14 = v13;
  }

  else
  {
    v14 = v15;
  }

  v15 = v14;
  [(CSVoiceTriggerFileLogger *)self _logGeckoWithFilePrefix:@"-triggered" WithResult:v14];
LABEL_9:
}

- (void)_syncAvailableSecureCaptures
{
  v2 = +[NSFileManager defaultManager];
  v32 = 0;
  v3 = [v2 contentsOfDirectoryAtPath:@"/var/mobile/tmp/com.apple.corespeechd/AudioCapture/siri" error:&v32];
  v4 = v32;
  v5 = v4;
  if (v3)
  {
    v23 = v4;
    v24 = v3;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v29;
      v10 = @"/var/mobile/tmp/com.apple.corespeechd/AudioCapture/siri";
      v25 = *v29;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          v13 = [(__CFString *)v10 stringByAppendingPathComponent:v12];
          v27 = 0;
          if ([v2 fileExistsAtPath:v13 isDirectory:&v27] && v27 == 1)
          {
            if ([v12 length] > 0xD)
            {
              v15 = [v12 substringToIndex:14];
              [v15 substringToIndex:8];
              v16 = v2;
              v17 = v10;
              v19 = v18 = v6;
              v20 = [v15 substringFromIndex:8];
              v21 = [NSString stringWithFormat:@"%@-%@", v19, v20];

              v6 = v18;
              v10 = v17;
              v2 = v16;
              v9 = v25;
              [(CSVoiceTriggerFileLogger *)self _moveSecureAudioCaptureFrom:v13 withExclaveTimestamp:v21];
            }

            else
            {
              v14 = CSLogContextFacilityCoreSpeech;
              if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v34 = "[CSVoiceTriggerFileLogger _syncAvailableSecureCaptures]";
                v35 = 2112;
                v36 = v12;
                _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Audio capture folder name %@ is too short to parse date time", buf, 0x16u);
              }
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v8);
    }

    v5 = v23;
    v3 = v24;
  }

  else
  {
    v22 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v34 = "[CSVoiceTriggerFileLogger _syncAvailableSecureCaptures]";
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s Failed to get secure audio logging directory", buf, 0xCu);
    }
  }
}

- (void)_moveSecureAudioCaptureFrom:(id)a3 withExclaveTimestamp:(id)a4
{
  v5 = a3;
  v31 = a4;
  +[NSFileManager defaultManager];
  v27 = v40 = 0;
  v32 = v5;
  v6 = [v27 contentsOfDirectoryAtPath:v5 error:&v40];
  v7 = v40;
  if (v6)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v26 = v6;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (!v8)
    {
      goto LABEL_22;
    }

    v9 = v8;
    v29 = *v37;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v37 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v36 + 1) + 8 * v10);
        v12 = [v32 stringByAppendingPathComponent:v11];
        v13 = [(CSVoiceTriggerFileLogger *)self _audioLogDirectory];
        v14 = [NSString stringWithFormat:@"%@-%@", v31, v11];
        v15 = [v13 stringByAppendingPathComponent:v14];

        v16 = [NSURL fileURLWithPath:v12];
        v34 = 0;
        v35 = 0;
        v17 = [v16 getResourceValue:&v35 forKey:NSURLIsPurgeableKey error:&v34];
        v18 = v35;
        v19 = v34;

        if ((v17 & 1) == 0)
        {
          v22 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v42 = "[CSVoiceTriggerFileLogger _moveSecureAudioCaptureFrom:withExclaveTimestamp:]";
            v43 = 2112;
            v44 = v11;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s Failed to check purgeable status for file %@", buf, 0x16u);
          }

          goto LABEL_16;
        }

        if (([v18 BOOLValue] & 1) == 0)
        {
          v23 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v42 = "[CSVoiceTriggerFileLogger _moveSecureAudioCaptureFrom:withExclaveTimestamp:]";
            v43 = 2112;
            v44 = v11;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s Secure audio capture file %@ skipped (likely in progress)", buf, 0x16u);
          }

LABEL_16:
          v7 = v19;
          goto LABEL_17;
        }

        v33 = v19;
        v20 = [v27 copyItemAtPath:v12 toPath:v15 error:&v33];
        v7 = v33;

        v21 = CSLogContextFacilityCoreSpeech;
        if (v20)
        {
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v42 = "[CSVoiceTriggerFileLogger _moveSecureAudioCaptureFrom:withExclaveTimestamp:]";
            v43 = 2112;
            v44 = v11;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s Secure audio capture file %@ copied successfully", buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v42 = "[CSVoiceTriggerFileLogger _moveSecureAudioCaptureFrom:withExclaveTimestamp:]";
          v43 = 2112;
          v44 = v11;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s Failed to move secure audio capture file %@", buf, 0x16u);
        }

LABEL_17:

        v10 = v10 + 1;
      }

      while (v9 != v10);
      v24 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
      v9 = v24;
      if (!v24)
      {
LABEL_22:

        v6 = v26;
        goto LABEL_25;
      }
    }
  }

  v25 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v42 = "[CSVoiceTriggerFileLogger _moveSecureAudioCaptureFrom:withExclaveTimestamp:]";
    _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s Failed to get secure audio capture", buf, 0xCu);
  }

LABEL_25:
}

- (BOOL)_shouldSkipLogging:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:kVTEIfirstPassTriggerSource];
  v4 = [v3 isEqualToString:kVTEIFirstPassTriggeredFromDarwin];

  return v4;
}

- (BOOL)_shouldLogDeviceId:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:kVTEIfirstPassTriggerSource];
  v4 = [v3 isEqualToString:kVTEIFirstPassTriggeredFromRemora];

  return v4;
}

- (void)_writeDictionary:(id)a3 toPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v13 = 0;
    v7 = [NSJSONSerialization dataWithJSONObject:v5 options:3 error:&v13];
    v8 = v13;
    if (v8)
    {
      v9 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v11 = [v8 localizedDescription];
        *buf = 136315394;
        v15 = "[CSVoiceTriggerFileLogger _writeDictionary:toPath:]";
        v16 = 2114;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Error writing out event info meta: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      [v7 writeToFile:v6 atomically:0];
    }
  }

  else
  {
    v12 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "[CSVoiceTriggerFileLogger _writeDictionary:toPath:]";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s No meta data to write, skip", buf, 0xCu);
    }
  }
}

- (id)_metaFilenameWithRootDir:(id)a3 prefix:(id)a4 deviceId:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CSVoiceTriggerFileLogger *)self _timeStampString];
  v12 = v11;
  if (v8)
  {
    [NSString stringWithFormat:@"%@-%@%@%@", v11, v8, v9, @".json"];
  }

  else
  {
    [NSString stringWithFormat:@"%@%@%@", v11, v9, @".json", v16];
  }
  v13 = ;

  v14 = [v10 stringByAppendingPathComponent:v13];

  return v14;
}

- (id)_timeStampString
{
  v2 = objc_alloc_init(NSDateFormatter);
  v3 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  [v2 setDateFormat:@"yyyyMMdd-HHmmss"];
  v4 = +[NSDate date];
  v5 = [v2 stringFromDate:v4];

  return v5;
}

- (id)_geckoLogDirectory
{
  v2 = +[NSFileManager defaultManager];
  v3 = +[CSFPreferences sharedPreferences];
  v4 = [v3 geckoAudioLogDirectory];

  if ([v2 fileExistsAtPath:v4])
  {
    v5 = 0;
  }

  else
  {
    v19 = NSFileProtectionKey;
    v20 = NSFileProtectionCompleteUnlessOpen;
    v6 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v12 = 0;
    v7 = [v2 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:v6 error:&v12];
    v5 = v12;

    if ((v7 & 1) == 0)
    {
      v8 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v10 = v8;
        v11 = [v5 localizedDescription];
        *buf = 136315650;
        v14 = "[CSVoiceTriggerFileLogger _geckoLogDirectory]";
        v15 = 2114;
        v16 = v4;
        v17 = 2114;
        v18 = v11;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Couldn't create voice trigger audio logging directory at path %{public}@ %{public}@", buf, 0x20u);
      }

      v4 = 0;
    }
  }

  return v4;
}

- (id)_audioLogDirectory
{
  v2 = +[NSFileManager defaultManager];
  v3 = +[CSFPreferences sharedPreferences];
  v4 = [v3 voiceTriggerAudioLogDirectory];

  if ([v2 fileExistsAtPath:v4])
  {
    v5 = 0;
  }

  else
  {
    v11 = 0;
    v6 = [v2 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v11];
    v5 = v11;
    if ((v6 & 1) == 0)
    {
      v7 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v9 = v7;
        v10 = [v5 localizedDescription];
        *buf = 136315650;
        v13 = "[CSVoiceTriggerFileLogger _audioLogDirectory]";
        v14 = 2114;
        v15 = v4;
        v16 = 2114;
        v17 = v10;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Couldn't create voice trigger audio logging directory at path %{public}@ %{public}@", buf, 0x20u);
      }

      v4 = @"/tmp";
    }
  }

  return v4;
}

- (CSVoiceTriggerFileLogger)init
{
  v3 = +[CSFPreferences sharedPreferences];
  v4 = [v3 fileLoggingIsEnabled];
  v5 = +[CSFPreferences sharedPreferences];
  v6 = -[CSVoiceTriggerFileLogger initWithSpeechManager:fileLoggingEnabled:geckoLoggingEnabled:](self, "initWithSpeechManager:fileLoggingEnabled:geckoLoggingEnabled:", 0, v4, [v5 geckoLoggingLevel] > 0);

  return v6;
}

@end