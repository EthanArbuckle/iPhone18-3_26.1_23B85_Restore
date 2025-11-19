@interface CSCoreSpeechDKeepAliveHandler
+ (id)keepAliveDirectory;
+ (id)keepAlivePath;
- (BOOL)_coreSpeechDaemonKeepAlived;
- (CSCoreSpeechDKeepAliveHandler)init;
- (void)_enableCoreSpeechDaemonKeepAlive;
- (void)start;
@end

@implementation CSCoreSpeechDKeepAliveHandler

- (BOOL)_coreSpeechDaemonKeepAlived
{
  v2 = +[NSFileManager defaultManager];
  v3 = +[CSCoreSpeechDKeepAliveHandler keepAlivePath];
  v4 = [v2 fileExistsAtPath:v3];

  if (v4)
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = +[CSCoreSpeechDKeepAliveHandler keepAlivePath];
      v9 = 136315394;
      v10 = "[CSCoreSpeechDKeepAliveHandler _coreSpeechDaemonKeepAlived]";
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s KeepAlive file %{public}@ already existing", &v9, 0x16u);
    }
  }

  return v4;
}

- (void)_enableCoreSpeechDaemonKeepAlive
{
  if (![(CSCoreSpeechDKeepAliveHandler *)self _coreSpeechDaemonKeepAlived])
  {
    v2 = +[CSCoreSpeechDKeepAliveHandler keepAliveDirectory];
    v3 = +[CSCoreSpeechDKeepAliveHandler keepAlivePath];
    v4 = +[NSFileManager defaultManager];
    v5 = [v4 fileExistsAtPath:v2];

    if ((v5 & 1) == 0)
    {
      v6 = +[NSFileManager defaultManager];
      v16 = 0;
      v7 = [v6 createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:&v16];
      v8 = v16;

      if ((v7 & 1) == 0)
      {
        v14 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          v11 = v14;
          v12 = [v8 localizedDescription];
          *buf = 136315650;
          v18 = "[CSCoreSpeechDKeepAliveHandler _enableCoreSpeechDaemonKeepAlive]";
          v19 = 2114;
          v20 = v2;
          v21 = 2114;
          v22 = v12;
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Cannot create directory at : %{public}@ : %{public}@", buf, 0x20u);
          goto LABEL_14;
        }

LABEL_11:

        return;
      }
    }

    v15 = 0;
    v9 = [@"KeepAlive" writeToFile:v3 atomically:0 encoding:4 error:&v15];
    v8 = v15;
    v10 = CSLogContextFacilityCoreSpeech;
    if (v9)
    {
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v18 = "[CSCoreSpeechDKeepAliveHandler _enableCoreSpeechDaemonKeepAlive]";
        v19 = 2112;
        v20 = v3;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Successfully make CoreSpeechDaemon as KeepAlive, created keepAlive file at %@", buf, 0x16u);
      }

      goto LABEL_11;
    }

    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      v12 = [v8 localizedDescription];
      v13 = [v8 localizedRecoverySuggestion];
      *buf = 136315906;
      v18 = "[CSCoreSpeechDKeepAliveHandler _enableCoreSpeechDaemonKeepAlive]";
      v19 = 2114;
      v20 = v3;
      v21 = 2114;
      v22 = v12;
      v23 = 2114;
      v24 = v13;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Failed to make CoreSpeechDaemon as KeepAlive : Cannot create file at %{public}@, error : %{public}@, %{public}@", buf, 0x2Au);

LABEL_14:
      goto LABEL_11;
    }

    goto LABEL_11;
  }
}

- (void)start
{
  if ((CSIsHorseman() & 1) != 0 || +[CSUtils isExclaveHardware]&& CSHasAOP())
  {
    v3 = [[CSOSTransaction alloc] initWithDescription:@"KeepAlive"];
    transaction = self->_transaction;
    self->_transaction = v3;

    [(CSCoreSpeechDKeepAliveHandler *)self _enableCoreSpeechDaemonKeepAlive];
  }
}

- (CSCoreSpeechDKeepAliveHandler)init
{
  v3.receiver = self;
  v3.super_class = CSCoreSpeechDKeepAliveHandler;
  return [(CSCoreSpeechDKeepAliveHandler *)&v3 init];
}

+ (id)keepAlivePath
{
  if (CSIsSimulator())
  {
    v2 = NSHomeDirectory();
    v3 = [v2 stringByAppendingPathComponent:@"Library/VoiceTrigger/KeepAlive"];
  }

  else
  {
    v3 = @"/var/mobile/Library/VoiceTrigger/KeepAlive";
  }

  return v3;
}

+ (id)keepAliveDirectory
{
  if (CSIsSimulator())
  {
    v2 = NSHomeDirectory();
    v3 = [v2 stringByAppendingPathComponent:@"Library/VoiceTrigger"];
  }

  else
  {
    v3 = @"/var/mobile/Library/VoiceTrigger";
  }

  return v3;
}

@end