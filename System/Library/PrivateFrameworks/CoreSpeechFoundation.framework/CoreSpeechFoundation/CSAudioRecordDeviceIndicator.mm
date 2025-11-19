@interface CSAudioRecordDeviceIndicator
- (CSAudioRecordDeviceIndicator)initWithRecordContext:(id)a3 deviceId:(id)a4 shouldUseRemoteRecorder:(BOOL)a5 streamHandleId:(unint64_t)a6 shouldUseSystemDaemonRecorder:(BOOL)a7;
- (void)updateWithLatestRecordContext:(id)a3;
@end

@implementation CSAudioRecordDeviceIndicator

- (void)updateWithLatestRecordContext:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 copy];
  recordContext = self->_recordContext;
  self->_recordContext = v5;

  v7 = [v4 deviceId];

  if (v7)
  {
    if ([v4 isBuiltInVoiceTriggered] && +[CSUtils hasRemoteBuiltInMic](CSUtils, "hasRemoteBuiltInMic") && self->_shouldUseRemoteRecorder)
    {
      v8 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        v10 = [v4 deviceId];
        v14 = 136315394;
        v15 = "[CSAudioRecordDeviceIndicator updateWithLatestRecordContext:]";
        v16 = 2114;
        v17 = v10;
        _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Replace deviceId(%{public}@) to nil for VoiceTrigger from Gibraltar.", &v14, 0x16u);
      }

      deviceId = self->_deviceId;
      self->_deviceId = 0;
    }

    else
    {
      v12 = [v4 deviceId];
      deviceId = self->_deviceId;
      self->_deviceId = v12;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (CSAudioRecordDeviceIndicator)initWithRecordContext:(id)a3 deviceId:(id)a4 shouldUseRemoteRecorder:(BOOL)a5 streamHandleId:(unint64_t)a6 shouldUseSystemDaemonRecorder:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v20.receiver = self;
  v20.super_class = CSAudioRecordDeviceIndicator;
  v14 = [(CSAudioRecordDeviceIndicator *)&v20 init];
  if (v14)
  {
    v15 = [v12 copy];
    recordContext = v14->_recordContext;
    v14->_recordContext = v15;

    v17 = [v13 copy];
    deviceId = v14->_deviceId;
    v14->_deviceId = v17;

    v14->_shouldUseRemoteRecorder = a5;
    v14->_streamHandleId = a6;
    v14->_shouldUseSystemDaemonRecorder = a7;
  }

  return v14;
}

@end