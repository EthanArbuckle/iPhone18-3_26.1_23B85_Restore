@interface CSIntuitiveConversationLogger
- (CSAttSiriController)attSiriController;
- (CSIntuitiveConversationLogger)init;
- (CSIntuitiveConversationLogger)initWithAttSiriController:(id)controller;
- (id)_createJsonLogPathBySignalType:(id)type;
- (id)_timeStampString;
- (void)_handleStopLogging;
- (void)_logAudioMetaData:(id)data;
- (void)_logMetadata;
- (void)_setupLogDirectory;
- (void)attSiriAudioSrcNodeDidStop:(id)stop;
- (void)attSiriAudioSrcNodeLPCMRecordBufferAvailable:(id)available audioChunk:(id)chunk;
- (void)setMhId:(id)id;
- (void)startLoggingWithAudioRecordContext:(id)context requestId:(id)id;
- (void)stop;
@end

@implementation CSIntuitiveConversationLogger

- (CSAttSiriController)attSiriController
{
  WeakRetained = objc_loadWeakRetained(&self->_attSiriController);

  return WeakRetained;
}

- (void)attSiriAudioSrcNodeLPCMRecordBufferAvailable:(id)available audioChunk:(id)chunk
{
  chunkCopy = chunk;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001645A4;
  v8[3] = &unk_100253C48;
  v8[4] = self;
  v9 = chunkCopy;
  v7 = chunkCopy;
  dispatch_async(queue, v8);
}

- (void)attSiriAudioSrcNodeDidStop:(id)stop
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100164624;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_logMetadata
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    audioRecordContext = self->_audioRecordContext;
    *buf = 136315394;
    v32 = "[CSIntuitiveConversationLogger _logMetadata]";
    v33 = 2112;
    v34 = audioRecordContext;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s _audioRecordContext:%@", buf, 0x16u);
  }

  v5 = self->_audioRecordContext;
  if (v5)
  {
    type = [(CSAudioRecordContext *)v5 type];
  }

  else
  {
    type = 0;
  }

  v7 = [(CSIntuitiveConversationLogger *)self _createJsonLogPathBySignalType:@"metadata"];
  v29[0] = @"audioRecordType";
  v8 = [CSAudioRecordContext recordTypeString:type];
  startTimestampString = self->_startTimestampString;
  stopTimestampString = self->_stopTimestampString;
  v30[0] = v8;
  v30[1] = startTimestampString;
  v29[1] = @"startTimestamp";
  v29[2] = @"stopTimestamp";
  v30[2] = stopTimestampString;
  v29[3] = @"startMachAbsTime";
  v11 = [NSNumber numberWithUnsignedLongLong:self->_startMachAbsTime];
  v30[3] = v11;
  v29[4] = @"stopMachAbsTime";
  v12 = [NSNumber numberWithUnsignedLongLong:self->_stopMachAbsTime];
  v30[4] = v12;
  v29[5] = @"startSampleCount";
  v13 = [NSNumber numberWithUnsignedLongLong:self->_startSampleCount];
  v30[5] = v13;
  v29[6] = @"stopSampleCount";
  v14 = [NSNumber numberWithUnsignedLongLong:self->_stopSampleCount];
  v30[6] = v14;
  v29[7] = @"productType";
  v15 = +[CSUtils deviceProductType];
  v30[7] = v15;
  v29[8] = @"productVersion";
  v16 = +[CSUtils deviceProductVersion];
  v30[8] = v16;
  v29[9] = @"buildVersion";
  v17 = +[CSUtils deviceBuildVersion];
  requestId = self->_requestId;
  v30[9] = v17;
  v30[10] = requestId;
  v29[10] = @"requestId";
  v29[11] = @"mhUUID";
  mhId = @"Nil";
  if (self->_mhId)
  {
    mhId = self->_mhId;
  }

  v30[11] = mhId;
  v20 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:12];

  v28 = 0;
  v21 = [NSJSONSerialization dataWithJSONObject:v20 options:1 error:&v28];
  v22 = v28;
  v23 = v22;
  if (!v21 || v22)
  {
    v24 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v25 = v24;
      localizedDescription = [v23 localizedDescription];
      *buf = 136315394;
      v32 = "[CSIntuitiveConversationLogger _logMetadata]";
      v33 = 2114;
      v34 = localizedDescription;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s Failed to serialize metadata data with err: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v27 = 0;
    [v21 writeToFile:v7 options:0 error:&v27];
    v23 = v27;
  }
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

- (void)_logAudioMetaData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  if (!self->_previousLoggedSampleCount)
  {
    startSampleCount = [dataCopy startSampleCount];
    self->_startSampleCount = startSampleCount;
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[CSIntuitiveConversationLogger _logAudioMetaData:]";
      v11 = 2050;
      v12 = startSampleCount;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s audio logging start sample count %{public}llu", &v9, 0x16u);
    }
  }

  startSampleCount2 = [v5 startSampleCount];
  self->_previousLoggedSampleCount = startSampleCount2 + [v5 numSamples];
}

- (void)_handleStopLogging
{
  self->_stopSampleCount = self->_previousLoggedSampleCount;
  _timeStampString = [(CSIntuitiveConversationLogger *)self _timeStampString];
  stopTimestampString = self->_stopTimestampString;
  self->_stopTimestampString = _timeStampString;

  self->_stopMachAbsTime = mach_absolute_time();
  [(CSIntuitiveConversationLogger *)self _logMetadata];
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    requestId = self->_requestId;
    stopSampleCount = self->_stopSampleCount;
    v8 = 136315650;
    v9 = "[CSIntuitiveConversationLogger _handleStopLogging]";
    v10 = 2112;
    v11 = requestId;
    v12 = 2050;
    v13 = stopSampleCount;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Using RequestId %@ for logging. end sample count %{public}llu", &v8, 0x20u);
  }
}

- (id)_createJsonLogPathBySignalType:(id)type
{
  type = [NSString stringWithFormat:@"%@-%@.json", self->_requestId, type];
  v5 = [(NSString *)self->_logDirectory stringByAppendingPathComponent:type];

  return v5;
}

- (void)_setupLogDirectory
{
  v3 = +[NSFileManager defaultManager];
  v4 = +[CSFPreferences sharedPreferences];
  mhLogDirectory = [v4 mhLogDirectory];
  logDirectory = self->_logDirectory;
  self->_logDirectory = mhLogDirectory;

  if ([v3 fileExistsAtPath:self->_logDirectory])
  {
    v7 = 0;
  }

  else
  {
    v8 = self->_logDirectory;
    v17 = 0;
    v9 = [v3 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v17];
    v7 = v17;
    if ((v9 & 1) == 0)
    {
      v10 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v14 = self->_logDirectory;
        v15 = v10;
        localizedDescription = [v7 localizedDescription];
        *buf = 136315650;
        v19 = "[CSIntuitiveConversationLogger _setupLogDirectory]";
        v20 = 2114;
        v21 = v14;
        v22 = 2114;
        v23 = localizedDescription;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Couldn't create logging directory at path %{public}@ %{public}@", buf, 0x20u);
      }

      v11 = self->_logDirectory;
      self->_logDirectory = @"/tmp";
    }
  }

  v12 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v13 = self->_logDirectory;
    *buf = 136315394;
    v19 = "[CSIntuitiveConversationLogger _setupLogDirectory]";
    v20 = 2112;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s _logDirectory:%@", buf, 0x16u);
  }
}

- (void)setMhId:(id)id
{
  idCopy = id;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100164FA8;
  v7[3] = &unk_100253C48;
  v8 = idCopy;
  selfCopy = self;
  v6 = idCopy;
  dispatch_async(queue, v7);
}

- (void)startLoggingWithAudioRecordContext:(id)context requestId:(id)id
{
  contextCopy = context;
  idCopy = id;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100165134;
  block[3] = &unk_100253680;
  block[4] = self;
  v12 = contextCopy;
  v13 = idCopy;
  v9 = idCopy;
  v10 = contextCopy;
  dispatch_async(queue, block);
}

- (void)stop
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001652F0;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (CSIntuitiveConversationLogger)initWithAttSiriController:(id)controller
{
  controllerCopy = controller;
  v5 = [(CSIntuitiveConversationLogger *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_attSiriController, controllerCopy);
  }

  return v6;
}

- (CSIntuitiveConversationLogger)init
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[CSIntuitiveConversationLogger init]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v8.receiver = self;
  v8.super_class = CSIntuitiveConversationLogger;
  v4 = [(CSIntuitiveConversationLogger *)&v8 init];
  if (v4)
  {
    v5 = dispatch_queue_create("CSIntuitiveConversationLogger queue", 0);
    queue = v4->_queue;
    v4->_queue = v5;

    v4->_didStop = 1;
    [(CSIntuitiveConversationLogger *)v4 _setupLogDirectory];
  }

  return v4;
}

@end