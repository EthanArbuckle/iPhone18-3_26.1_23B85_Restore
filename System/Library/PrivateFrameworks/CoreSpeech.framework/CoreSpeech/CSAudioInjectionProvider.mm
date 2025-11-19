@interface CSAudioInjectionProvider
+ (id)defaultInjectionProvider;
- (BOOL)_connectBuiltInDevice:(id)a3 withError:(id *)a4;
- (BOOL)_connectPluginDevice:(id)a3 withError:(id *)a4;
- (BOOL)activateAudioSessionWithReason:(unint64_t)a3 streamHandleId:(unint64_t)a4 error:(id *)a5;
- (BOOL)connectDevice:(id)a3 withOutError:(id *)a4;
- (BOOL)deactivateAudioSession:(unint64_t)a3 error:(id *)a4;
- (BOOL)deactivateAudioSession:(unint64_t)a3 streamHandleId:(unint64_t)a4 error:(id *)a5;
- (BOOL)isRecordingWithRecordDeviceIndicator:(id)a3;
- (BOOL)playRecordStartingAlertAndResetEndpointerFromStream:(unint64_t)a3 withAlertOverride:(int64_t)a4;
- (BOOL)prepareAudioStreamRecord:(id)a3 recordDeviceIndicator:(id)a4 error:(id *)a5;
- (BOOL)prewarmAudioSessionWithStreamHandleId:(unint64_t)a3 error:(id *)a4;
- (BOOL)startAudioStreamWithOption:(id)a3 recordDeviceIndicator:(id)a4 error:(id *)a5;
- (BOOL)stopAudioStreamWithRecordDeviceIndicator:(id)a3 error:(id *)a4;
- (CSAudioInjectionProvider)init;
- (id)audioDeviceInfoWithStreamHandleId:(unint64_t)a3 recordDeviceIndicator:(id)a4;
- (id)metrics;
- (id)primaryInputDevice;
- (id)recordDeviceInfoWithStreamHandleId:(unint64_t)a3 recordDeviceIndicator:(id)a4;
- (id)recordRouteWithRecordDeviceIndicator:(id)a3;
- (id)recordSettingsWithStreamHandleId:(unint64_t)a3;
- (void)_createSpeechDetectionVADIfNeeded;
- (void)_tearDownSpeechDetectionVADIfNeeded;
- (void)audioEngineAudioChunkForTvAvailable:(id)a3 audioChunk:(id)a4;
- (void)audioEngineBufferAvailable:(id)a3 audioStreamHandleId:(unint64_t)a4 buffer:(id)a5 remoteVAD:(id)a6 atTime:(unint64_t)a7 isFileLoadedBuffer:(BOOL)a8;
- (void)audioEngineDidStartRecord:(id)a3 audioStreamHandleId:(unint64_t)a4 successfully:(BOOL)a5 error:(id)a6;
- (void)audioEngineDidStopRecord:(id)a3 audioStreamHandleId:(unint64_t)a4 reason:(unint64_t)a5;
- (void)dealloc;
- (void)disconnectDevice:(id)a3;
- (void)registerObserver:(id)a3;
- (void)selectBuiltInDevice:(id)a3 withCompletion:(id)a4;
- (void)setContext:(id)a3 completion:(id)a4;
- (void)start;
- (void)stop;
- (void)unregisterObserver:(id)a3;
- (void)willDestroy;
@end

@implementation CSAudioInjectionProvider

- (void)audioEngineAudioChunkForTvAvailable:(id)a3 audioChunk:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A453C;
  v8[3] = &unk_100253C48;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)audioEngineDidStopRecord:(id)a3 audioStreamHandleId:(unint64_t)a4 reason:(unint64_t)a5
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A46F8;
  block[3] = &unk_1002512C0;
  block[4] = self;
  block[5] = a4;
  block[6] = a5;
  dispatch_async(queue, block);
}

- (void)audioEngineBufferAvailable:(id)a3 audioStreamHandleId:(unint64_t)a4 buffer:(id)a5 remoteVAD:(id)a6 atTime:(unint64_t)a7 isFileLoadedBuffer:(BOOL)a8
{
  v13 = a5;
  v14 = a6;
  queue = self->_queue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000A4910;
  v18[3] = &unk_100250EF0;
  v23 = a8;
  v18[4] = self;
  v19 = v13;
  v20 = v14;
  v21 = a4;
  v22 = a7;
  v16 = v14;
  v17 = v13;
  dispatch_async(queue, v18);
}

- (void)audioEngineDidStartRecord:(id)a3 audioStreamHandleId:(unint64_t)a4 successfully:(BOOL)a5 error:(id)a6
{
  v9 = a6;
  queue = self->_queue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000A4B64;
  v12[3] = &unk_100250678;
  v13 = v9;
  v14 = a4;
  v15 = a5;
  v12[4] = self;
  v11 = v9;
  dispatch_async(queue, v12);
}

- (id)metrics
{
  v3 = AVVoiceControllerMetricDataBeginHostTime;
  v17[0] = AVVoiceControllerMetricDataBeginHostTime;
  v4 = [NSNumber numberWithUnsignedLongLong:self->_activateStartTime];
  v18[0] = v4;
  v5 = AVVoiceControllerMetricDataEndHostTime;
  v17[1] = AVVoiceControllerMetricDataEndHostTime;
  v6 = [NSNumber numberWithUnsignedLongLong:self->_activateEndTime];
  v18[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];

  v15[0] = v3;
  v8 = [NSNumber numberWithUnsignedLongLong:self->_deactivateStartTime];
  v15[1] = v5;
  v16[0] = v8;
  v9 = [NSNumber numberWithUnsignedLongLong:self->_deactivateEndTime];
  v16[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

  v13[0] = AVVoiceControllerMetricAudioSessionSetActiveTime;
  v13[1] = AVVoiceControllerMetricAudioSessionSetInactiveTime;
  v14[0] = v7;
  v14[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v11;
}

- (BOOL)playRecordStartingAlertAndResetEndpointerFromStream:(unint64_t)a3 withAlertOverride:(int64_t)a4
{
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSAudioInjectionProvider playRecordStartingAlertAndResetEndpointerFromStream:withAlertOverride:]";
    v9 = 2048;
    v10 = a4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s playing start recording alert with override: %lu", &v7, 0x16u);
  }

  return 1;
}

- (BOOL)deactivateAudioSession:(unint64_t)a3 error:(id *)a4
{
  self->_deactivateStartTime = mach_absolute_time();
  v7 = +[AVAudioSession sharedInstance];
  LOBYTE(a4) = [v7 setActive:0 withOptions:a3 error:a4];

  self->_deactivateEndTime = mach_absolute_time();
  return a4;
}

- (BOOL)deactivateAudioSession:(unint64_t)a3 streamHandleId:(unint64_t)a4 error:(id *)a5
{
  self->_deactivateStartTime = mach_absolute_time();
  v8 = +[AVAudioSession sharedInstance];
  LOBYTE(a5) = [v8 setActive:0 withOptions:a3 error:a5];

  self->_deactivateEndTime = mach_absolute_time();
  return a5;
}

- (BOOL)activateAudioSessionWithReason:(unint64_t)a3 streamHandleId:(unint64_t)a4 error:(id *)a5
{
  self->_activateStartTime = mach_absolute_time();
  if (CSIsHorseman() && (+[AVAudioSession sharedInstance](AVAudioSession, "sharedInstance"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 setCategory:AVAudioSessionCategoryPlayAndRecord mode:AVAudioSessionModeSpeechRecognition options:1 error:a5], v7, (v8 & 1) == 0))
  {
    v12 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v13 = *a5;
      v14 = 136315394;
      v15 = "[CSAudioInjectionProvider activateAudioSessionWithReason:streamHandleId:error:]";
      v16 = 2112;
      v17 = v13;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s CS set AVAudioSession category/options failed with error: %@", &v14, 0x16u);
    }

    return 0;
  }

  else
  {
    v9 = +[AVAudioSession sharedInstance];
    v10 = [v9 setActive:1 error:a5];

    self->_activateEndTime = mach_absolute_time();
    return v10;
  }
}

- (BOOL)prewarmAudioSessionWithStreamHandleId:(unint64_t)a3 error:(id *)a4
{
  v5 = +[AVAudioSession sharedInstance];
  LOBYTE(a4) = [v5 setActive:1 withOptions:0x2000 error:a4];

  return a4;
}

- (id)recordSettingsWithStreamHandleId:(unint64_t)a3
{
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = v4;
  if (self->_shouldSupportOnlyTVRemote)
  {
    [v4 setObject:&off_10025E2B8 forKey:AVNumberOfChannelsKey];
    [v5 setObject:&off_10025E2D0 forKey:AVSampleRateKey];
    [v5 setObject:&off_10025E2E8 forKey:AVLinearPCMBitDepthKey];
    v6 = +[CSFPreferences sharedPreferences];
    v7 = [v6 useSpeexForAudioInjection];

    if (v7)
    {
      v8 = &off_10025E300;
    }

    else
    {
      v8 = &off_10025E318;
    }

    [v5 setObject:v8 forKey:AVFormatIDKey];
  }

  return v5;
}

- (id)audioDeviceInfoWithStreamHandleId:(unint64_t)a3 recordDeviceIndicator:(id)a4
{
  v6 = a4;
  v7 = [CSFAudioDeviceInfo alloc];
  v8 = [(CSAudioInjectionProvider *)self recordDeviceInfoWithStreamHandleId:a3 recordDeviceIndicator:v6];

  v9 = [(CSAudioInjectionProvider *)self getPlaybackRouteForStreamID:a3];
  v10 = +[NSArray array];
  v11 = [v7 initWithRecordDeviceInfo:v8 playbackRoute:v9 playbackDeviceTypeList:v10];

  return v11;
}

- (id)recordDeviceInfoWithStreamHandleId:(unint64_t)a3 recordDeviceIndicator:(id)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1000A5594;
  queue = self->_queue;
  v12 = sub_1000A55A4;
  v13 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A55AC;
  block[3] = &unk_100252170;
  block[5] = &v8;
  block[6] = a3;
  block[4] = self;
  dispatch_async_and_wait(queue, block);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)recordRouteWithRecordDeviceIndicator:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000A5594;
  queue = self->_queue;
  v16 = sub_1000A55A4;
  v17 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A58B4;
  block[3] = &unk_100252228;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_async_and_wait(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)isRecordingWithRecordDeviceIndicator:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000A5594;
  v17 = sub_1000A55A4;
  v18 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5B78;
  block[3] = &unk_100252228;
  v12 = &v13;
  block[4] = self;
  v6 = v4;
  v11 = v6;
  dispatch_async_and_wait(queue, block);
  v7 = v14[5];
  if (v7)
  {
    v8 = [v7 isRecording];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v13, 8);
  return v8;
}

- (BOOL)stopAudioStreamWithRecordDeviceIndicator:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    uuid = self->_uuid;
    *buf = 136315394;
    *&buf[4] = "[CSAudioInjectionProvider stopAudioStreamWithRecordDeviceIndicator:error:]";
    *&buf[12] = 2112;
    *&buf[14] = uuid;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Calling stop audio stream : %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v18 = sub_1000A5594;
  v19 = sub_1000A55A4;
  v20 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5DF8;
  block[3] = &unk_100252228;
  v16 = buf;
  block[4] = self;
  v10 = v6;
  v15 = v10;
  dispatch_async_and_wait(queue, block);
  v11 = *(*&buf[8] + 40);
  if (v11)
  {
    v12 = [v11 stopAudioStreamWithOutError:a4];
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(buf, 8);
  return v12;
}

- (BOOL)startAudioStreamWithOption:(id)a3 recordDeviceIndicator:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_1000A5594;
  v32 = sub_1000A55A4;
  v33 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A6148;
  block[3] = &unk_1002509A8;
  v11 = v8;
  v24 = v11;
  v25 = self;
  v27 = &v28;
  v12 = v9;
  v26 = v12;
  dispatch_async_and_wait(queue, block);
  v13 = v29[5];
  if (v13)
  {
    didStartDelayInSeconds = self->_didStartDelayInSeconds;
    if (didStartDelayInSeconds <= 0.0)
    {
      [v29[5] startAudioStreamWithOption:v11 withOutError:a5];
    }

    else
    {
      v15 = dispatch_time(0, (didStartDelayInSeconds * 1000000000.0));
      v16 = self->_queue;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1000A6350;
      v19[3] = &unk_100252170;
      v21 = &v28;
      v20 = v11;
      v22 = a5;
      dispatch_after(v15, v16, v19);
    }
  }

  else
  {
    v17 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v35 = "[CSAudioInjectionProvider startAudioStreamWithOption:recordDeviceIndicator:error:]";
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s AudioInjection Engine is nil", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v28, 8);
  return v13 != 0;
}

- (BOOL)prepareAudioStreamRecord:(id)a3 recordDeviceIndicator:(id)a4 error:(id *)a5
{
  v6 = a3;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A640C;
  v10[3] = &unk_100253C48;
  v10[4] = self;
  v11 = v6;
  v8 = v6;
  dispatch_async(queue, v10);

  return 1;
}

- (void)setContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isPluginContext])
  {
    if (self->_shouldSupportOnlyTVRemote)
    {
      [v6 setDeviceId:self->_atvRemoteDeviceID];
    }

    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A65F0;
    block[3] = &unk_100252228;
    block[4] = self;
    v10 = v6;
    v11 = &v12;
    dispatch_async_and_wait(queue, block);
    if (v7)
    {
      v7[2](v7, v13[3], 1, 0);
    }

    _Block_object_dispose(&v12, 8);
  }

  else if (v7)
  {
    v7[2](v7, 1, 2, 0);
  }
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A6808;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A68BC;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)willDestroy
{
  v2.receiver = self;
  v2.super_class = CSAudioInjectionProvider;
  [(CSAudioInjectionProvider *)&v2 willDestroy];
}

- (void)disconnectDevice:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000A69B4;
    v7[3] = &unk_100253C48;
    v8 = v4;
    v9 = self;
    dispatch_async(queue, v7);
  }
}

- (BOOL)connectDevice:(id)a3 withOutError:(id *)a4
{
  v6 = a3;
  v7 = v6;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (v6)
  {
    queue = self->_queue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000A6CE8;
    v11[3] = &unk_100252000;
    v11[4] = self;
    v12 = v6;
    v13 = &v15;
    v14 = a4;
    dispatch_async_and_wait(queue, v11);

    v9 = *(v16 + 24);
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v15, 8);

  return v9 & 1;
}

- (id)primaryInputDevice
{
  if (self->_shouldSupportOnlyTVRemote)
  {
    v2 = &OBJC_IVAR___CSAudioInjectionProvider__primaryTvRemoteDevice;
  }

  else
  {
    v2 = &OBJC_IVAR___CSAudioInjectionProvider__primaryBuiltInDevice;
  }

  return *&self->CSAudioRecorder_opaque[*v2];
}

- (void)stop
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    uuid = self->_uuid;
    *buf = 136315394;
    v8 = "[CSAudioInjectionProvider stop]";
    v9 = 2112;
    v10 = uuid;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Stopping Audio Injection Provider : %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A6ECC;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_tearDownSpeechDetectionVADIfNeeded
{
  if ((CSIsWatch() & 1) == 0)
  {
    primaryBuiltInDevice = self->_primaryBuiltInDevice;
    if (primaryBuiltInDevice)
    {
      v4 = [(CSAudioInjectionDevice *)primaryBuiltInDevice injectionEngine];
      [v4 stop];

      audioInjectionEngines = self->_audioInjectionEngines;

      [(NSMutableDictionary *)audioInjectionEngines removeObjectForKey:&off_10025E2A0];
    }
  }
}

- (void)_createSpeechDetectionVADIfNeeded
{
  primaryBuiltInDevice = self->_primaryBuiltInDevice;
  if (primaryBuiltInDevice)
  {
    v4 = [(CSAudioInjectionDevice *)primaryBuiltInDevice injectionEngine];
    [(NSMutableDictionary *)self->_audioInjectionEngines setObject:v4 forKeyedSubscript:&off_10025E2A0];

    v5 = [(CSAudioInjectionDevice *)self->_primaryBuiltInDevice injectionEngine];
    [v5 start];
  }
}

- (BOOL)_connectBuiltInDevice:(id)a3 withError:(id *)a4
{
  v7 = a3;
  primaryBuiltInDevice = self->_primaryBuiltInDevice;
  if (!primaryBuiltInDevice)
  {
    goto LABEL_8;
  }

  v9 = [(CSAudioInjectionDevice *)primaryBuiltInDevice deviceUID];
  v10 = [v9 UUIDString];
  v11 = [v7 deviceUID];
  v12 = [v11 UUIDString];
  if (![v10 isEqualToString:v12])
  {

    goto LABEL_8;
  }

  v13 = [(CSAudioInjectionDevice *)self->_primaryBuiltInDevice injectionEngine];

  if (!v13)
  {
LABEL_8:
    v16 = [CSAudioInjectionEngineFactory engineWithDevice:v7 streamHandleId:1];
    [v16 setDelegate:self];
    v15 = [v16 attachDevice:v7 withOutError:a4];
    [v16 start];
    [(NSMutableDictionary *)self->_audioInjectionEngines setObject:v16 forKey:&off_10025E2A0];
    v17 = [(NSMutableDictionary *)self->_audioInjectionEngines objectForKeyedSubscript:&off_10025E2A0];
    [v7 setInjectionEngine:v17];

    objc_storeStrong(&self->_primaryBuiltInDevice, a3);
    goto LABEL_9;
  }

  v14 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315138;
    v20 = "[CSAudioInjectionProvider _connectBuiltInDevice:withError:]";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Ignoring the connection request given the device is the primaryBuiltInDevice and it has been attached with an injection engine", &v19, 0xCu);
  }

  v15 = 1;
LABEL_9:

  return v15;
}

- (BOOL)_connectPluginDevice:(id)a3 withError:(id *)a4
{
  latestPluginStreamId = self->_latestPluginStreamId;
  v7 = a3;
  v8 = [CSAudioInjectionEngineFactory engineWithDevice:v7 streamHandleId:latestPluginStreamId];
  [v8 setDelegate:self];
  [v8 start];
  [v7 setInjectionEngine:v8];
  LOBYTE(a4) = [v8 attachDevice:v7 withOutError:a4];

  audioInjectionEngines = self->_audioInjectionEngines;
  v10 = [NSNumber numberWithUnsignedInteger:self->_latestPluginStreamId];
  [(NSMutableDictionary *)audioInjectionEngines setObject:v8 forKey:v10];

  ++self->_latestPluginStreamId;
  return a4;
}

- (void)selectBuiltInDevice:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A7648;
  block[3] = &unk_1002533A0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)start
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A792C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)dealloc
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    uuid = self->_uuid;
    *buf = 136315394;
    v7 = "[CSAudioInjectionProvider dealloc]";
    v8 = 2112;
    v9 = uuid;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Dealloc CSAudioInjectionProvider : %@", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = CSAudioInjectionProvider;
  [(CSAudioInjectionProvider *)&v5 dealloc];
}

- (CSAudioInjectionProvider)init
{
  v23.receiver = self;
  v23.super_class = CSAudioInjectionProvider;
  v2 = [(CSAudioInjectionProvider *)&v23 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSAudioInjectionProvider", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = +[NSHashTable weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v5;

    v7 = +[NSMutableDictionary dictionary];
    audioInjectionEngines = v2->_audioInjectionEngines;
    v2->_audioInjectionEngines = v7;

    v9 = +[NSMutableArray array];
    connectedDevices = v2->_connectedDevices;
    v2->_connectedDevices = v9;

    v11 = +[NSUUID UUID];
    uuid = v2->_uuid;
    v2->_uuid = v11;

    v2->_latestPluginStreamId = 2;
    selectedBuiltInBundleDeviceUID = v2->_selectedBuiltInBundleDeviceUID;
    v2->_selectedBuiltInBundleDeviceUID = 0;

    v14 = CSIsTV();
    v2->_shouldSupportOnlyTVRemote = v14;
    if (v14)
    {
      v15 = +[NSUUID UUID];
      v16 = [v15 UUIDString];
      atvRemoteDeviceID = v2->_atvRemoteDeviceID;
      v2->_atvRemoteDeviceID = v16;

      v18 = [[CSAudioInjectionDevice alloc] initWithDeviceType:5 deviceName:@"ATVRemoteInput" deviceID:v2->_atvRemoteDeviceID productID:0];
      v19 = &OBJC_IVAR___CSAudioInjectionProvider__primaryTvRemoteDevice;
    }

    else
    {
      v18 = [[CSAudioInjectionDevice alloc] initWithDeviceType:1 deviceName:@"BuiltInMic" deviceID:0 productID:0];
      v19 = &OBJC_IVAR___CSAudioInjectionProvider__primaryBuiltInDevice;
    }

    v20 = *v19;
    v21 = *&v2->CSAudioRecorder_opaque[v20];
    *&v2->CSAudioRecorder_opaque[v20] = v18;

    [(NSMutableArray *)v2->_connectedDevices addObject:*&v2->CSAudioRecorder_opaque[v20]];
  }

  return v2;
}

+ (id)defaultInjectionProvider
{
  if (qword_10029E208 != -1)
  {
    dispatch_once(&qword_10029E208, &stru_1002503E0);
  }

  v3 = qword_10029E210;

  return v3;
}

@end