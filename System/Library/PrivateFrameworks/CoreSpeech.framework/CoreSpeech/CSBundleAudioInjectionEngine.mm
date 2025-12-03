@interface CSBundleAudioInjectionEngine
- (AudioStreamBasicDescription)_defaultOutASBD;
- (BOOL)attachDevice:(id)device withOutError:(id *)error;
- (BOOL)setPluginBundleWithPath:(id)path withOutError:(id *)error;
- (BOOL)startAudioStreamWithOption:(id)option withOutError:(id *)error;
- (BOOL)stopAudioStreamWithOutError:(id *)error;
- (CSAudioInjectionEngineDelegate)delegate;
- (CSBundleAudioInjectionEngine)initWithStreamHandleId:(unint64_t)id;
- (id)_compensateChannelDataIfNeeded:(id)needed receivedNumChannels:(unsigned int)channels;
- (void)audioBufferAvailable:(id)available;
- (void)audioStreamDidStopSuccessfully:(BOOL)successfully error:(id)error;
- (void)start;
- (void)stop;
@end

@implementation CSBundleAudioInjectionEngine

- (CSAudioInjectionEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_compensateChannelDataIfNeeded:(id)needed receivedNumChannels:(unsigned int)channels
{
  neededCopy = needed;
  if (+[CSConfig inputRecordingNumberOfChannels]<= channels)
  {
    v6 = neededCopy;
  }

  else
  {
    v6 = [[NSMutableData alloc] initWithLength:{objc_msgSend(neededCopy, "length") / channels * +[CSConfig inputRecordingNumberOfChannels](CSConfig, "inputRecordingNumberOfChannels")}];
    v7 = +[CSConfig inputRecordingNumberOfChannels];
    v8 = qword_10029DF60;
    if (!(v8 % +[CSUtils loggingHeartbeatRate]))
    {
      v9 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315650;
        v12 = "[CSBundleAudioInjectionEngine _compensateChannelDataIfNeeded:receivedNumChannels:]";
        v13 = 1026;
        v14 = v7 - channels;
        v15 = 2050;
        v16 = qword_10029DF60;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Compensating %{public}u channel(s), heartbeat = %{public}lld", &v11, 0x1Cu);
      }
    }

    ++qword_10029DF60;
    [v6 replaceBytesInRange:0 withBytes:{objc_msgSend(neededCopy, "length"), objc_msgSend(neededCopy, "bytes")}];
  }

  return v6;
}

- (AudioStreamBasicDescription)_defaultOutASBD
{
  *&retstr->mBitsPerChannel = 0;
  *&retstr->mSampleRate = 0u;
  *&retstr->mBytesPerPacket = 0u;
  if (+[CSConfig inputRecordingIsFloat])
  {

    return +[CSFAudioStreamBasicDescriptionFactory lpcmFloatASBD];
  }

  else
  {

    return +[CSFAudioStreamBasicDescriptionFactory lpcmInt16ASBD];
  }
}

- (void)audioBufferAvailable:(id)available
{
  availableCopy = available;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100019898;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = availableCopy;
  v6 = availableCopy;
  dispatch_async(queue, v7);
}

- (void)audioStreamDidStopSuccessfully:(BOOL)successfully error:(id)error
{
  errorCopy = error;
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[CSBundleAudioInjectionEngine audioStreamDidStopSuccessfully:error:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s ", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 audioEngineDidStopRecord:self audioStreamHandleId:-[CSBundleAudioInjectionEngine audioStreamHandleId](self reason:{"audioStreamHandleId"), 0}];
  }
}

- (BOOL)stopAudioStreamWithOutError:(id *)error
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100019DE0;
  v17 = sub_100019DF0;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019DF8;
  block[3] = &unk_100251428;
  block[4] = self;
  block[5] = &v9;
  block[6] = &v13;
  dispatch_async_and_wait(queue, block);
  v5 = v14[5];
  if (v5)
  {
    *error = v5;
  }

  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);

  return v6;
}

- (BOOL)startAudioStreamWithOption:(id)option withOutError:(id *)error
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100019DE0;
  v18 = sub_100019DF0;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A008;
  block[3] = &unk_100251428;
  block[4] = self;
  block[5] = &v10;
  block[6] = &v14;
  dispatch_async_and_wait(queue, block);
  v6 = v15[5];
  if (v6)
  {
    *error = v6;
  }

  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  return v7;
}

- (void)stop
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A0F4;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)start
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A184;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (BOOL)setPluginBundleWithPath:(id)path withOutError:(id *)error
{
  pathCopy = path;
  if (!pathCopy)
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v30 = 136315138;
      v31 = "[CSBundleAudioInjectionEngine setPluginBundleWithPath:withOutError:]";
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Bundle Path is nil", &v30, 0xCu);
    }
  }

  v8 = [NSBundle bundleWithPath:pathCopy];
  if (([v8 load] & 1) == 0)
  {
    if (error)
    {
      *error = [NSError errorWithDomain:CSErrorDomain code:1506 userInfo:0];
    }

    v19 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v30 = 136315394;
    v31 = "[CSBundleAudioInjectionEngine setPluginBundleWithPath:withOutError:]";
    v32 = 2112;
    v33 = pathCopy;
    v20 = "%s Failed to load bundle: %@";
    v21 = v19;
    v22 = 22;
    goto LABEL_24;
  }

  principalClass = [v8 principalClass];
  if (!principalClass || (v10 = principalClass, ([(objc_class *)principalClass conformsToProtocol:&OBJC_PROTOCOL___CSBundleAudioProviding]& 1) == 0))
  {
    *error = [NSError errorWithDomain:CSErrorDomain code:1506 userInfo:0];
    v23 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v30 = 136315138;
      v31 = "[CSBundleAudioInjectionEngine setPluginBundleWithPath:withOutError:]";
      v20 = "%s Principal class does not conform to CSBundleAudioProviding.";
      goto LABEL_23;
    }

LABEL_15:
    v18 = 0;
    goto LABEL_16;
  }

  v11 = objc_alloc_init(v10);
  audioPlugin = self->_audioPlugin;
  self->_audioPlugin = v11;

  if (!self->_audioPlugin)
  {
    *error = [NSError errorWithDomain:CSErrorDomain code:1506 userInfo:0];
    v23 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v30 = 136315138;
      v31 = "[CSBundleAudioInjectionEngine setPluginBundleWithPath:withOutError:]";
      v20 = "%s Failed to instantiate plugin.";
LABEL_23:
      v21 = v23;
      v22 = 12;
LABEL_24:
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, v20, &v30, v22);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  +[CSConfig inputRecordingBufferDuration];
  v14 = v13;
  +[CSConfig inputRecordingSampleRate];
  v16 = (v14 * v15);
  [(CSBundleAudioProviding *)self->_audioPlugin setDelegate:self];
  v17 = self->_audioPlugin;
  [(CSBundleAudioInjectionEngine *)self _defaultOutASBD];
  if (([(CSBundleAudioProviding *)v17 setupAudioFormatWithBlockSize:v16 audioFormat:&v30 outError:error]& 1) == 0)
  {
    v25 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v27 = *error;
      v28 = v25;
      v29 = [v27 description];
      v30 = 136315394;
      v31 = "[CSBundleAudioInjectionEngine setPluginBundleWithPath:withOutError:]";
      v32 = 2112;
      v33 = v29;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s nil down the audio plugin due to audioFormat setting failure with error: %@", &v30, 0x16u);
    }

    v26 = self->_audioPlugin;
    self->_audioPlugin = 0;

    goto LABEL_15;
  }

  v18 = 1;
LABEL_16:

  return v18;
}

- (BOOL)attachDevice:(id)device withOutError:(id *)error
{
  bundlePath = [device bundlePath];
  LOBYTE(error) = [(CSBundleAudioInjectionEngine *)self setPluginBundleWithPath:bundlePath withOutError:error];

  return error;
}

- (CSBundleAudioInjectionEngine)initWithStreamHandleId:(unint64_t)id
{
  v13.receiver = self;
  v13.super_class = CSBundleAudioInjectionEngine;
  v4 = [(CSBundleAudioInjectionEngine *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->_audioStreamHandleId = id;
    v6 = dispatch_queue_create("CSBundleAudioInjectionEngine", 0);
    queue = v5->_queue;
    v5->_queue = v6;

    v8 = +[NSUUID UUID];
    uuid = v5->_uuid;
    v5->_uuid = v8;

    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v5->_uuid;
      *buf = 136315394;
      v15 = "[CSBundleAudioInjectionEngine initWithStreamHandleId:]";
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s CSBundleAudioInjectionEngine is allocated with UUID: %@", buf, 0x16u);
    }
  }

  return v5;
}

@end