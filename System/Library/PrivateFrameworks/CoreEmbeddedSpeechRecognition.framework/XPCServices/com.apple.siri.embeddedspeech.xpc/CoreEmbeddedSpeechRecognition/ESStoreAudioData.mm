@interface ESStoreAudioData
- (BOOL)_moveAudioToVarMobile:(id)a3;
- (BOOL)_saveAudioToCache:(id)a3;
- (ESStoreAudioData)initWithUUIDString:(id)a3 language:(id)a4 task:(id)a5 codec:(id)a6 samplingRate:(unint64_t)a7 inferenceSpeakerCode:(id)a8 numTrainedFrames:(id)a9 trainingNnetVersion:(id)a10 isSpeakerCodeUsed:(BOOL)a11 isSamplingForDictation:(BOOL)a12 selfLogger:(id)a13;
- (id)_createAudioFilePath;
- (id)_createCachesDirectoryIfItDoesNotExist;
- (void)_cleanupCacheAndReset:(id)a3;
- (void)_deleteItemAtPath:(id)a3;
- (void)_logAudioSampledEventsWithStatus:(int64_t)a3 error:(id)a4 customReasonForFailure:(int64_t)a5;
- (void)_saveAudioMetadataToFilePath:(id)a3;
- (void)addAudioPacket:(id)a3;
- (void)dealloc;
- (void)saveAudioToDisk;
@end

@implementation ESStoreAudioData

- (void)_logAudioSampledEventsWithStatus:(int64_t)a3 error:(id)a4 customReasonForFailure:(int64_t)a5
{
  v8 = a4;
  if (self->_isSamplingForDictation)
  {
    v9 = [NSMutableDictionary alloc];
    v34[0] = self->_UUIDString;
    v33[0] = @"dictationUIInteractionIdentifier";
    v33[1] = @"unixTime";
    v10 = +[NSDate date];
    [v10 timeIntervalSince1970];
    v11 = [NSNumber numberWithDouble:?];
    v34[1] = v11;
    v33[2] = @"samplingDate";
    v12 = +[AFDictationSamplingUtilities samplingDateAsString];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &stru_100055AC8;
    }

    v34[2] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:3];
    v16 = [v9 initWithDictionary:v15];

    if (a3)
    {
      if (a3 == 1)
      {
        v17 = @"success";
      }

      else
      {
        v17 = &stru_100055AC8;
      }

      goto LABEL_37;
    }

    if (v8)
    {
      v18 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 code]);
      [v16 setObject:v18 forKeyedSubscript:@"errorCode"];

      v19 = [v8 domain];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = &stru_100055AC8;
      }

      [v16 setObject:v21 forKeyedSubscript:@"errorDomain"];

      v22 = [v8 localizedDescription];
      v23 = v22;
      if (v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = @"UNDEFINED";
      }

      [v16 setObject:v24 forKeyedSubscript:@"description"];

      v25 = [v8 userInfo];
      v26 = [v25 objectForKey:NSUnderlyingErrorKey];

      if (v26)
      {
        v27 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v26 code]);
        [v16 setObject:v27 forKeyedSubscript:@"underlyingErrorCode"];

        v28 = [v26 domain];
        v29 = v28;
        if (v28)
        {
          v30 = v28;
        }

        else
        {
          v30 = &stru_100055AC8;
        }

        [v16 setObject:v30 forKeyedSubscript:@"underlyingErrorDomain"];
      }

      goto LABEL_36;
    }

    v17 = @"failed";
    if (a5 > 2)
    {
      if (a5 == 3)
      {
        v31 = @"Unable to create sampling directory";
        goto LABEL_35;
      }

      if (a5 == 4)
      {
        v31 = @"Unable to create dated directory";
        goto LABEL_35;
      }
    }

    else
    {
      if (a5 == 1)
      {
        v31 = @"Audio file to be moved nil";
        goto LABEL_35;
      }

      if (a5 == 2)
      {
        v31 = @"Sampling Date is nil";
LABEL_35:
        [v16 setObject:v31 forKeyedSubscript:@"description"];
LABEL_36:
        v17 = @"failed";
      }
    }

LABEL_37:
    [v16 setObject:v17 forKeyedSubscript:@"status"];
    v32 = +[AFAnalytics sharedAnalytics];
    [v32 logEventWithType:2224 context:v16];

    goto LABEL_38;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      [(ESSelfHelper *)self->_selfLogger logSampledAudioFileStoredSuccessfully];
    }
  }

  else
  {
    [(ESSelfHelper *)self->_selfLogger logSampledAudioFileStoredWithError:v8 customFailureReason:a5];
  }

LABEL_38:
}

- (id)_createCachesDirectoryIfItDoesNotExist
{
  v3 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v4 = [v3 firstObject];

  v5 = AFDictationSamplingUtilities_ptr;
  if (!self->_isSamplingForDictation)
  {
    v5 = AFAssistantSamplingUtilities_ptr;
  }

  v6 = [*v5 sampledCachesSubDirectoryPath];
  v7 = [v4 stringByAppendingPathComponent:v6];

  v8 = AFCreateDirectoryWithPath();

  return v8;
}

- (id)_createAudioFilePath
{
  v3 = [(ESStoreAudioData *)self _createCachesDirectoryIfItDoesNotExist];
  if (v3)
  {
    v4 = AFDictationSamplingUtilities_ptr;
    if (!self->_isSamplingForDictation)
    {
      v4 = AFAssistantSamplingUtilities_ptr;
    }

    v5 = [*v4 samplingDateAsString];
    if (v5)
    {
      v6 = +[NSDate date];
      [v6 timeIntervalSince1970];
      v8 = v7;

      v9 = [NSString stringWithFormat:@"%.0f", *&v8];
      audioMetadata = self->_audioMetadata;
      v11 = [NSNumber numberWithDouble:v8];
      [(NSMutableDictionary *)audioMetadata setObject:v11 forKey:@"samplingTimestamp"];

      v12 = [NSString stringWithFormat:@"%@_%@_%@.pcm", self->_UUIDString, v5, v9];
      v13 = [v3 stringByAppendingPathComponent:v12];
    }

    else
    {
      v14 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        logPrefix = self->_logPrefix;
        *buf = 136315394;
        v18 = "[ESStoreAudioData _createAudioFilePath]";
        v19 = 2112;
        v20 = logPrefix;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s %@ Sampling: currentSamplingDateString is null", buf, 0x16u);
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_saveAudioMetadataToFilePath:(id)a3
{
  v4 = a3;
  if (self->_isSamplingForDictation)
  {
    v5 = @"dictationUIInteractionIdentifier";
  }

  else
  {
    v5 = @"interactionIdentifier";
  }

  [(NSMutableDictionary *)self->_audioMetadata setObject:self->_UUIDString forKey:v5];
  [(NSMutableDictionary *)self->_audioMetadata setObject:self->_language forKey:@"language"];
  [(NSMutableDictionary *)self->_audioMetadata setObject:self->_task forKey:@"task"];
  audioMetadata = self->_audioMetadata;
  v7 = [NSNumber numberWithUnsignedInteger:self->_samplingRate];
  [(NSMutableDictionary *)audioMetadata setObject:v7 forKey:@"samplingRate"];

  [(NSMutableDictionary *)self->_audioMetadata setObject:self->_codec forKey:@"codec"];
  if ([(NSString *)self->_inferenceSpeakerCode length])
  {
    [(NSMutableDictionary *)self->_audioMetadata setObject:self->_inferenceSpeakerCode forKey:@"inferenceSpeakerCode"];
  }

  numTrainedFrames = self->_numTrainedFrames;
  if (numTrainedFrames)
  {
    [(NSMutableDictionary *)self->_audioMetadata setObject:numTrainedFrames forKey:@"numTrainedFrames"];
  }

  trainingNnetVersion = self->_trainingNnetVersion;
  if (trainingNnetVersion)
  {
    [(NSMutableDictionary *)self->_audioMetadata setObject:trainingNnetVersion forKey:@"trainingNnetVersion"];
  }

  v10 = self->_audioMetadata;
  v11 = [NSNumber numberWithBool:self->_isSpeakerCodeUsed];
  [(NSMutableDictionary *)v10 setObject:v11 forKey:@"isSpeakerCodeUsed"];

  selfLogger = self->_selfLogger;
  if (selfLogger)
  {
    v13 = self->_audioMetadata;
    v14 = [(ESSelfHelper *)selfLogger asrId];
    v15 = [v14 UUIDString];
    [(NSMutableDictionary *)v13 setObject:v15 forKey:@"asrSelfComponentIdentifier"];
  }

  if (([(NSMutableDictionary *)self->_audioMetadata writeToFile:v4 atomically:1]& 1) == 0)
  {
    v16 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      logPrefix = self->_logPrefix;
      v18 = 136315650;
      v19 = "[ESStoreAudioData _saveAudioMetadataToFilePath:]";
      v20 = 2112;
      v21 = logPrefix;
      v22 = 2112;
      v23 = v4;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s %@ Sampling: Error while writing audio metadata dict to plist - %@", &v18, 0x20u);
    }
  }
}

- (BOOL)_moveAudioToVarMobile:(id)a3
{
  v4 = a3;
  v5 = [v4 pathComponents];
  v6 = [v5 lastObject];

  if (v6)
  {
    if (self->_isSamplingForDictation)
    {
      v7 = AFDictationSamplingUtilities_ptr;
    }

    else
    {
      v7 = AFAssistantSamplingUtilities_ptr;
    }

    v8 = [*v7 samplingDateAsString];
    if (v8)
    {
      if (self->_isSamplingForDictation)
      {
        v9 = AFDictationSamplingUtilities_ptr;
      }

      else
      {
        v9 = AFAssistantSamplingUtilities_ptr;
      }

      v10 = [*v9 createSamplingDirectory];
      if (v10)
      {
        v11 = +[NSFileManager defaultManager];
        v12 = [v10 stringByAppendingPathComponent:v8];
        if (self->_isSamplingForDictation && (AFIsInternalInstall() & 1) == 0)
        {
          buf[0] = 0;
          if ([v11 fileExistsAtPath:v12 isDirectory:buf])
          {
            if (buf[0] == 1)
            {
              [(ESStoreAudioData *)self _deleteItemAtPath:v12];
            }
          }
        }

        v13 = AFCreateDirectoryWithPath();

        if (v13)
        {
          v14 = [v13 stringByAppendingPathComponent:v6];
          v35 = 0;
          v15 = [v11 moveItemAtPath:v4 toPath:v14 error:&v35];
          v34 = v35;
          v16 = AFSiriLogContextSpeech;
          if (v15)
          {
            v33 = v11;
            if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
            {
              logPrefix = self->_logPrefix;
              *buf = 136315650;
              v37 = "[ESStoreAudioData _moveAudioToVarMobile:]";
              v38 = 2112;
              v39 = logPrefix;
              v40 = 2112;
              v41 = v14;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s %@ Sampling: Successfully moved audio file to var/mobile/Library dir, path=%@", buf, 0x20u);
            }

            v18 = [v6 stringByDeletingPathExtension];
            v19 = [NSString stringWithFormat:@"%@.plist", v18];

            v20 = [v13 stringByAppendingPathComponent:v19];
            [(ESStoreAudioData *)self _saveAudioMetadataToFilePath:v20];

            v11 = v33;
            v21 = v34;
          }

          else
          {
            if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
            {
              v32 = self->_logPrefix;
              *buf = 136315650;
              v37 = "[ESStoreAudioData _moveAudioToVarMobile:]";
              v38 = 2112;
              v39 = v32;
              v40 = 2112;
              v41 = v34;
              _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s %@ Sampling: Error while moving file from cache directory to var/mobile/Library - %@", buf, 0x20u);
            }

            v26 = self;
            v21 = v34;
            [(ESStoreAudioData *)v26 _logAudioSampledEventsWithStatus:0 error:v34 customReasonForFailure:0];
          }
        }

        else
        {
          v25 = AFSiriLogContextSpeech;
          if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
          {
            v31 = self->_logPrefix;
            *buf = 136315906;
            v37 = "[ESStoreAudioData _moveAudioToVarMobile:]";
            v38 = 2112;
            v39 = v31;
            v40 = 2112;
            v41 = v10;
            v42 = 2112;
            v43 = v8;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s %@ Sampling: Error while creating dated Sampled directory in %@ with date - %@", buf, 0x2Au);
          }

          [(ESStoreAudioData *)self _logAudioSampledEventsWithStatus:0 error:0 customReasonForFailure:4];
          v15 = 0;
        }
      }

      else
      {
        v24 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
        {
          v30 = self->_logPrefix;
          *buf = 136315394;
          v37 = "[ESStoreAudioData _moveAudioToVarMobile:]";
          v38 = 2112;
          v39 = v30;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s %@ Sampling: Error while creating Sampled directory in /var/mobile", buf, 0x16u);
        }

        [(ESStoreAudioData *)self _logAudioSampledEventsWithStatus:0 error:0 customReasonForFailure:3];
        v15 = 0;
      }
    }

    else
    {
      v23 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        v29 = self->_logPrefix;
        *buf = 136315394;
        v37 = "[ESStoreAudioData _moveAudioToVarMobile:]";
        v38 = 2112;
        v39 = v29;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s %@ Sampling: currentSamplingDate is nil", buf, 0x16u);
      }

      [(ESStoreAudioData *)self _logAudioSampledEventsWithStatus:0 error:0 customReasonForFailure:2];
      v15 = 0;
    }
  }

  else
  {
    v22 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v28 = self->_logPrefix;
      *buf = 136315394;
      v37 = "[ESStoreAudioData _moveAudioToVarMobile:]";
      v38 = 2112;
      v39 = v28;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s %@ Sampling: audioFileToBeMoved is nil", buf, 0x16u);
    }

    [(ESStoreAudioData *)self _logAudioSampledEventsWithStatus:0 error:0 customReasonForFailure:1];
    v15 = 0;
  }

  return v15;
}

- (BOOL)_saveAudioToCache:(id)a3
{
  v4 = a3;
  audioPackets = self->_audioPackets;
  v12 = 0;
  v6 = [(NSMutableData *)audioPackets writeToFile:v4 options:0x40000000 error:&v12];
  v7 = v12;
  v8 = AFSiriLogContextSpeech;
  if (v6)
  {
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      logPrefix = self->_logPrefix;
      *buf = 136315650;
      v14 = "[ESStoreAudioData _saveAudioToCache:]";
      v15 = 2112;
      v16 = logPrefix;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@ Sampling: Successfully saved audio file to cache dir, path=%@", buf, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v11 = self->_logPrefix;
      *buf = 136315650;
      v14 = "[ESStoreAudioData _saveAudioToCache:]";
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v7;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s %@ Sampling: Failed to save audio to cache dir. Error: %@", buf, 0x20u);
    }

    [(ESStoreAudioData *)self _logAudioSampledEventsWithStatus:0 error:v7 customReasonForFailure:0];
  }

  return v6;
}

- (void)dealloc
{
  [(ESStoreAudioData *)self cleanupCacheAndReset];
  v3.receiver = self;
  v3.super_class = ESStoreAudioData;
  [(ESStoreAudioData *)&v3 dealloc];
}

- (void)_cleanupCacheAndReset:(id)a3
{
  v4 = a3;
  [(ESStoreAudioData *)self _deleteItemAtPath:v4];
  v5 = objc_alloc_init(NSMutableData);
  audioPackets = self->_audioPackets;
  self->_audioPackets = v5;

  self->_collectedAudioDurationMS = 0.0;
  v7 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    logPrefix = self->_logPrefix;
    v9 = 136315650;
    v10 = "[ESStoreAudioData _cleanupCacheAndReset:]";
    v11 = 2112;
    v12 = logPrefix;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %@ Sampling: Done with cleanup of audioFile=%@ and reset of variables.", &v9, 0x20u);
  }
}

- (void)_deleteItemAtPath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (self->_isSamplingForDictation)
    {
      v5 = AFDictationSamplingUtilities;
    }

    else
    {
      v5 = AFAssistantSamplingUtilities;
    }

    v8 = [v5 deleteItemAtFilePath:v4];
  }

  else
  {
    v6 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      logPrefix = self->_logPrefix;
      v9 = 136315394;
      v10 = "[ESStoreAudioData _deleteItemAtPath:]";
      v11 = 2112;
      v12 = logPrefix;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s %@ Sampling: invalid filePath or it is null.", &v9, 0x16u);
    }
  }
}

- (void)saveAudioToDisk
{
  if (!self->_hasRecognizedAnything || ![(ESStoreAudioData *)self hasData])
  {
    v5 = AFSiriLogContextSpeech;
    if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    logPrefix = self->_logPrefix;
    v9 = 136315394;
    v10 = "[ESStoreAudioData saveAudioToDisk]";
    v11 = 2112;
    v12 = logPrefix;
    v7 = "%s %@ Sampling: Won't save audio because - has not recognized anything or has no data.";
    goto LABEL_14;
  }

  v3 = [(ESStoreAudioData *)self _createAudioFilePath];
  currentAudioFilePath = self->_currentAudioFilePath;
  self->_currentAudioFilePath = v3;

  if (!self->_currentAudioFilePath)
  {
    v5 = AFSiriLogContextSpeech;
    if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v6 = self->_logPrefix;
    v9 = 136315394;
    v10 = "[ESStoreAudioData saveAudioToDisk]";
    v11 = 2112;
    v12 = v6;
    v7 = "%s %@ Sampling: Won't save audio because - _currentAudioFilePath is null";
LABEL_14:
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, v7, &v9, 0x16u);
    return;
  }

  if ([(ESStoreAudioData *)self _saveAudioToCache:?]&& [(ESStoreAudioData *)self _moveAudioToVarMobile:self->_currentAudioFilePath])
  {

    [(ESStoreAudioData *)self _logAudioSampledEventsWithStatus:1 error:0 customReasonForFailure:0];
  }
}

- (void)addAudioPacket:(id)a3
{
  if (self->_collectedAudioDurationMS <= 60000.0)
  {
    audioPackets = self->_audioPackets;
    v5 = a3;
    [(NSMutableData *)audioPackets appendData:v5];
    v6 = [v5 length];

    self->_collectedAudioDurationMS = self->_collectedAudioDurationMS + (v6 >> 1) / self->_samplingRate * 1000.0;
  }
}

- (ESStoreAudioData)initWithUUIDString:(id)a3 language:(id)a4 task:(id)a5 codec:(id)a6 samplingRate:(unint64_t)a7 inferenceSpeakerCode:(id)a8 numTrainedFrames:(id)a9 trainingNnetVersion:(id)a10 isSpeakerCodeUsed:(BOOL)a11 isSamplingForDictation:(BOOL)a12 selfLogger:(id)a13
{
  v18 = a3;
  v19 = a4;
  v40 = a5;
  v39 = a6;
  v20 = a8;
  v21 = a9;
  v38 = a10;
  v37 = a13;
  if ([v18 length])
  {
    v41.receiver = self;
    v41.super_class = ESStoreAudioData;
    v22 = [(ESStoreAudioData *)&v41 init];
    v23 = v22;
    if (v22)
    {
      [(ESStoreAudioData *)v22 setUUIDString:v18];
      [(ESStoreAudioData *)v23 setLanguage:v19];
      objc_storeStrong(&v23->_task, a5);
      objc_storeStrong(&v23->_codec, a6);
      v23->_samplingRate = a7;
      v24 = [v20 copy];
      inferenceSpeakerCode = v23->_inferenceSpeakerCode;
      v23->_inferenceSpeakerCode = v24;

      objc_storeStrong(&v23->_numTrainedFrames, a9);
      objc_storeStrong(&v23->_trainingNnetVersion, a10);
      v23->_isSpeakerCodeUsed = a11;
      v26 = objc_alloc_init(NSMutableData);
      audioPackets = v23->_audioPackets;
      v23->_audioPackets = v26;

      v28 = objc_alloc_init(NSMutableDictionary);
      audioMetadata = v23->_audioMetadata;
      v23->_audioMetadata = v28;

      v23->_isSamplingForDictation = a12;
      objc_storeStrong(&v23->_selfLogger, a13);
      v30 = AFDictationSamplingUtilities_ptr;
      if (!v23->_isSamplingForDictation)
      {
        v30 = AFAssistantSamplingUtilities_ptr;
      }

      v31 = [*v30 component];
      logPrefix = v23->_logPrefix;
      v23->_logPrefix = v31;
    }

    self = v23;
    v33 = self;
  }

  else
  {
    v34 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v43 = "[ESStoreAudioData initWithUUIDString:language:task:codec:samplingRate:inferenceSpeakerCode:numTrainedFrames:trainingNnetVersion:isSpeakerCodeUsed:isSamplingForDictation:selfLogger:]";
      _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%s Sampling: Error while initializing ESStoreAudioData because uuid is invalid.", buf, 0xCu);
    }

    v33 = 0;
  }

  return v33;
}

@end