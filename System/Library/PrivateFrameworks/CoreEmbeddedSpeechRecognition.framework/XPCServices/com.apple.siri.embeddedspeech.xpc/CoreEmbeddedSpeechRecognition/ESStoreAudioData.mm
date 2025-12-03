@interface ESStoreAudioData
- (BOOL)_moveAudioToVarMobile:(id)mobile;
- (BOOL)_saveAudioToCache:(id)cache;
- (ESStoreAudioData)initWithUUIDString:(id)string language:(id)language task:(id)task codec:(id)codec samplingRate:(unint64_t)rate inferenceSpeakerCode:(id)code numTrainedFrames:(id)frames trainingNnetVersion:(id)self0 isSpeakerCodeUsed:(BOOL)self1 isSamplingForDictation:(BOOL)self2 selfLogger:(id)self3;
- (id)_createAudioFilePath;
- (id)_createCachesDirectoryIfItDoesNotExist;
- (void)_cleanupCacheAndReset:(id)reset;
- (void)_deleteItemAtPath:(id)path;
- (void)_logAudioSampledEventsWithStatus:(int64_t)status error:(id)error customReasonForFailure:(int64_t)failure;
- (void)_saveAudioMetadataToFilePath:(id)path;
- (void)addAudioPacket:(id)packet;
- (void)dealloc;
- (void)saveAudioToDisk;
@end

@implementation ESStoreAudioData

- (void)_logAudioSampledEventsWithStatus:(int64_t)status error:(id)error customReasonForFailure:(int64_t)failure
{
  errorCopy = error;
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

    if (status)
    {
      if (status == 1)
      {
        v17 = @"success";
      }

      else
      {
        v17 = &stru_100055AC8;
      }

      goto LABEL_37;
    }

    if (errorCopy)
    {
      v18 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
      [v16 setObject:v18 forKeyedSubscript:@"errorCode"];

      domain = [errorCopy domain];
      v20 = domain;
      if (domain)
      {
        v21 = domain;
      }

      else
      {
        v21 = &stru_100055AC8;
      }

      [v16 setObject:v21 forKeyedSubscript:@"errorDomain"];

      localizedDescription = [errorCopy localizedDescription];
      v23 = localizedDescription;
      if (localizedDescription)
      {
        v24 = localizedDescription;
      }

      else
      {
        v24 = @"UNDEFINED";
      }

      [v16 setObject:v24 forKeyedSubscript:@"description"];

      userInfo = [errorCopy userInfo];
      v26 = [userInfo objectForKey:NSUnderlyingErrorKey];

      if (v26)
      {
        v27 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v26 code]);
        [v16 setObject:v27 forKeyedSubscript:@"underlyingErrorCode"];

        domain2 = [v26 domain];
        v29 = domain2;
        if (domain2)
        {
          v30 = domain2;
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
    if (failure > 2)
    {
      if (failure == 3)
      {
        v31 = @"Unable to create sampling directory";
        goto LABEL_35;
      }

      if (failure == 4)
      {
        v31 = @"Unable to create dated directory";
        goto LABEL_35;
      }
    }

    else
    {
      if (failure == 1)
      {
        v31 = @"Audio file to be moved nil";
        goto LABEL_35;
      }

      if (failure == 2)
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

  if (status)
  {
    if (status == 1)
    {
      [(ESSelfHelper *)self->_selfLogger logSampledAudioFileStoredSuccessfully];
    }
  }

  else
  {
    [(ESSelfHelper *)self->_selfLogger logSampledAudioFileStoredWithError:errorCopy customFailureReason:failure];
  }

LABEL_38:
}

- (id)_createCachesDirectoryIfItDoesNotExist
{
  v3 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  firstObject = [v3 firstObject];

  v5 = AFDictationSamplingUtilities_ptr;
  if (!self->_isSamplingForDictation)
  {
    v5 = AFAssistantSamplingUtilities_ptr;
  }

  sampledCachesSubDirectoryPath = [*v5 sampledCachesSubDirectoryPath];
  v7 = [firstObject stringByAppendingPathComponent:sampledCachesSubDirectoryPath];

  v8 = AFCreateDirectoryWithPath();

  return v8;
}

- (id)_createAudioFilePath
{
  _createCachesDirectoryIfItDoesNotExist = [(ESStoreAudioData *)self _createCachesDirectoryIfItDoesNotExist];
  if (_createCachesDirectoryIfItDoesNotExist)
  {
    v4 = AFDictationSamplingUtilities_ptr;
    if (!self->_isSamplingForDictation)
    {
      v4 = AFAssistantSamplingUtilities_ptr;
    }

    samplingDateAsString = [*v4 samplingDateAsString];
    if (samplingDateAsString)
    {
      v6 = +[NSDate date];
      [v6 timeIntervalSince1970];
      v8 = v7;

      v9 = [NSString stringWithFormat:@"%.0f", *&v8];
      audioMetadata = self->_audioMetadata;
      v11 = [NSNumber numberWithDouble:v8];
      [(NSMutableDictionary *)audioMetadata setObject:v11 forKey:@"samplingTimestamp"];

      v12 = [NSString stringWithFormat:@"%@_%@_%@.pcm", self->_UUIDString, samplingDateAsString, v9];
      v13 = [_createCachesDirectoryIfItDoesNotExist stringByAppendingPathComponent:v12];
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

- (void)_saveAudioMetadataToFilePath:(id)path
{
  pathCopy = path;
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
    asrId = [(ESSelfHelper *)selfLogger asrId];
    uUIDString = [asrId UUIDString];
    [(NSMutableDictionary *)v13 setObject:uUIDString forKey:@"asrSelfComponentIdentifier"];
  }

  if (([(NSMutableDictionary *)self->_audioMetadata writeToFile:pathCopy atomically:1]& 1) == 0)
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
      v23 = pathCopy;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s %@ Sampling: Error while writing audio metadata dict to plist - %@", &v18, 0x20u);
    }
  }
}

- (BOOL)_moveAudioToVarMobile:(id)mobile
{
  mobileCopy = mobile;
  pathComponents = [mobileCopy pathComponents];
  lastObject = [pathComponents lastObject];

  if (lastObject)
  {
    if (self->_isSamplingForDictation)
    {
      v7 = AFDictationSamplingUtilities_ptr;
    }

    else
    {
      v7 = AFAssistantSamplingUtilities_ptr;
    }

    samplingDateAsString = [*v7 samplingDateAsString];
    if (samplingDateAsString)
    {
      if (self->_isSamplingForDictation)
      {
        v9 = AFDictationSamplingUtilities_ptr;
      }

      else
      {
        v9 = AFAssistantSamplingUtilities_ptr;
      }

      createSamplingDirectory = [*v9 createSamplingDirectory];
      if (createSamplingDirectory)
      {
        v11 = +[NSFileManager defaultManager];
        v12 = [createSamplingDirectory stringByAppendingPathComponent:samplingDateAsString];
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
          v14 = [v13 stringByAppendingPathComponent:lastObject];
          v35 = 0;
          v15 = [v11 moveItemAtPath:mobileCopy toPath:v14 error:&v35];
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

            stringByDeletingPathExtension = [lastObject stringByDeletingPathExtension];
            v19 = [NSString stringWithFormat:@"%@.plist", stringByDeletingPathExtension];

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

            selfCopy = self;
            v21 = v34;
            [(ESStoreAudioData *)selfCopy _logAudioSampledEventsWithStatus:0 error:v34 customReasonForFailure:0];
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
            v41 = createSamplingDirectory;
            v42 = 2112;
            v43 = samplingDateAsString;
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

- (BOOL)_saveAudioToCache:(id)cache
{
  cacheCopy = cache;
  audioPackets = self->_audioPackets;
  v12 = 0;
  v6 = [(NSMutableData *)audioPackets writeToFile:cacheCopy options:0x40000000 error:&v12];
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
      v18 = cacheCopy;
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

- (void)_cleanupCacheAndReset:(id)reset
{
  resetCopy = reset;
  [(ESStoreAudioData *)self _deleteItemAtPath:resetCopy];
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
    v14 = resetCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %@ Sampling: Done with cleanup of audioFile=%@ and reset of variables.", &v9, 0x20u);
  }
}

- (void)_deleteItemAtPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    if (self->_isSamplingForDictation)
    {
      v5 = AFDictationSamplingUtilities;
    }

    else
    {
      v5 = AFAssistantSamplingUtilities;
    }

    v8 = [v5 deleteItemAtFilePath:pathCopy];
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

  _createAudioFilePath = [(ESStoreAudioData *)self _createAudioFilePath];
  currentAudioFilePath = self->_currentAudioFilePath;
  self->_currentAudioFilePath = _createAudioFilePath;

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

- (void)addAudioPacket:(id)packet
{
  if (self->_collectedAudioDurationMS <= 60000.0)
  {
    audioPackets = self->_audioPackets;
    packetCopy = packet;
    [(NSMutableData *)audioPackets appendData:packetCopy];
    v6 = [packetCopy length];

    self->_collectedAudioDurationMS = self->_collectedAudioDurationMS + (v6 >> 1) / self->_samplingRate * 1000.0;
  }
}

- (ESStoreAudioData)initWithUUIDString:(id)string language:(id)language task:(id)task codec:(id)codec samplingRate:(unint64_t)rate inferenceSpeakerCode:(id)code numTrainedFrames:(id)frames trainingNnetVersion:(id)self0 isSpeakerCodeUsed:(BOOL)self1 isSamplingForDictation:(BOOL)self2 selfLogger:(id)self3
{
  stringCopy = string;
  languageCopy = language;
  taskCopy = task;
  codecCopy = codec;
  codeCopy = code;
  framesCopy = frames;
  versionCopy = version;
  loggerCopy = logger;
  if ([stringCopy length])
  {
    v41.receiver = self;
    v41.super_class = ESStoreAudioData;
    v22 = [(ESStoreAudioData *)&v41 init];
    v23 = v22;
    if (v22)
    {
      [(ESStoreAudioData *)v22 setUUIDString:stringCopy];
      [(ESStoreAudioData *)v23 setLanguage:languageCopy];
      objc_storeStrong(&v23->_task, task);
      objc_storeStrong(&v23->_codec, codec);
      v23->_samplingRate = rate;
      v24 = [codeCopy copy];
      inferenceSpeakerCode = v23->_inferenceSpeakerCode;
      v23->_inferenceSpeakerCode = v24;

      objc_storeStrong(&v23->_numTrainedFrames, frames);
      objc_storeStrong(&v23->_trainingNnetVersion, version);
      v23->_isSpeakerCodeUsed = used;
      v26 = objc_alloc_init(NSMutableData);
      audioPackets = v23->_audioPackets;
      v23->_audioPackets = v26;

      v28 = objc_alloc_init(NSMutableDictionary);
      audioMetadata = v23->_audioMetadata;
      v23->_audioMetadata = v28;

      v23->_isSamplingForDictation = dictation;
      objc_storeStrong(&v23->_selfLogger, logger);
      v30 = AFDictationSamplingUtilities_ptr;
      if (!v23->_isSamplingForDictation)
      {
        v30 = AFAssistantSamplingUtilities_ptr;
      }

      component = [*v30 component];
      logPrefix = v23->_logPrefix;
      v23->_logPrefix = component;
    }

    self = v23;
    selfCopy = self;
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

    selfCopy = 0;
  }

  return selfCopy;
}

@end