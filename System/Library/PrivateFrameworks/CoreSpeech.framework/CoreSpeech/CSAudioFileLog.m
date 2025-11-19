@interface CSAudioFileLog
+ (id)sharedInstance;
- (CSAudioFileLog)init;
- (id)_audioLogDirectory;
- (id)_getOrCreateAudioLogDirectory;
- (id)_makeTimestampedAudioLogFilenameWithPrefix:(id)a3 suffix:(id)a4;
- (id)_nowString;
- (void)_closeAudioFile;
- (void)appendAudioData:(id)a3;
- (void)dealloc;
- (void)startRecording;
- (void)stopRecording;
@end

@implementation CSAudioFileLog

- (id)_makeTimestampedAudioLogFilenameWithPrefix:(id)a3 suffix:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSAudioFileLog *)self _getOrCreateAudioLogDirectory];
  v9 = [(CSAudioFileLog *)self _nowString];
  v10 = v9;
  v11 = &stru_1002546C0;
  if (v9)
  {
    v11 = v9;
  }

  v12 = [NSString stringWithFormat:@"%@/%@%@%@", v8, v7, v11, v6];

  v13 = [v12 stringByReplacingOccurrencesOfString:@" " withString:@"_"];

  return v13;
}

- (id)_nowString
{
  v2 = objc_alloc_init(NSDateFormatter);
  v3 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  [v2 setDateFormat:@"yyyyMMdd-HHmmss"];
  v4 = +[NSDate date];
  v5 = [v2 stringFromDate:v4];

  return v5;
}

- (id)_getOrCreateAudioLogDirectory
{
  v2 = [(CSAudioFileLog *)self _audioLogDirectory];
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 fileExistsAtPath:v2 isDirectory:0];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = +[NSFileManager defaultManager];
    v12 = 0;
    v7 = [v6 createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:&v12];
    v5 = v12;

    if ((v7 & 1) == 0)
    {
      v8 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        v10 = v8;
        v11 = [v5 localizedDescription];
        *buf = 136315650;
        v14 = "[CSAudioFileLog _getOrCreateAudioLogDirectory]";
        v15 = 2114;
        v16 = v2;
        v17 = 2114;
        v18 = v11;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Couldn't create CoreSpeech log directory at path %{public}@ %{public}@", buf, 0x20u);
      }

      v2 = @"/tmp";
    }
  }

  return v2;
}

- (id)_audioLogDirectory
{
  if (qword_10029DFF0 != -1)
  {
    dispatch_once(&qword_10029DFF0, &stru_10024E7E8);
  }

  v3 = qword_10029DFE8;

  return v3;
}

- (void)stopRecording
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025570;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)appendAudioData:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000256E0;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)startRecording
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000258F8;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_closeAudioFile
{
  audioFile = self->_audioFile;
  if (audioFile)
  {
    v4 = ExtAudioFileDispose(audioFile);
    if (v4)
    {
      v5 = v4;
      v6 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        v7 = 136315394;
        v8 = "[CSAudioFileLog _closeAudioFile]";
        v9 = 1026;
        v10 = v5;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Failure disposing audio file %{public}d", &v7, 0x12u);
      }
    }

    self->_audioFile = 0;
  }
}

- (void)dealloc
{
  [(CSAudioFileLog *)self _closeAudioFile];
  v3.receiver = self;
  v3.super_class = CSAudioFileLog;
  [(CSAudioFileLog *)&v3 dealloc];
}

- (CSAudioFileLog)init
{
  v12.receiver = self;
  v12.super_class = CSAudioFileLog;
  v2 = [(CSAudioFileLog *)&v12 init];
  if (v2)
  {
    v3 = [objc_opt_class() description];
    v4 = dispatch_queue_create([v3 UTF8String], 0);
    v5 = *(v2 + 1);
    *(v2 + 1) = v4;

    v6 = *(v2 + 1);
    v7 = dispatch_get_global_queue(17, 0);
    dispatch_set_target_queue(v6, v7);

    +[CSFAudioStreamBasicDescriptionFactory utteranceFileASBD];
    *(v2 + 24) = v9;
    *(v2 + 40) = v10;
    *(v2 + 7) = v11;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_10029DFE0 != -1)
  {
    dispatch_once(&qword_10029DFE0, &stru_10024E7C8);
  }

  v3 = qword_10029DFD8;

  return v3;
}

@end