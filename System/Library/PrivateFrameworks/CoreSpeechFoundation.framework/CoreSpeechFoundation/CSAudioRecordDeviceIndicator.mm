@interface CSAudioRecordDeviceIndicator
- (CSAudioRecordDeviceIndicator)initWithRecordContext:(id)context deviceId:(id)id shouldUseRemoteRecorder:(BOOL)recorder streamHandleId:(unint64_t)handleId shouldUseSystemDaemonRecorder:(BOOL)daemonRecorder;
- (void)updateWithLatestRecordContext:(id)context;
@end

@implementation CSAudioRecordDeviceIndicator

- (void)updateWithLatestRecordContext:(id)context
{
  v18 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = [contextCopy copy];
  recordContext = self->_recordContext;
  self->_recordContext = v5;

  deviceId = [contextCopy deviceId];

  if (deviceId)
  {
    if ([contextCopy isBuiltInVoiceTriggered] && +[CSUtils hasRemoteBuiltInMic](CSUtils, "hasRemoteBuiltInMic") && self->_shouldUseRemoteRecorder)
    {
      v8 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        deviceId2 = [contextCopy deviceId];
        v14 = 136315394;
        v15 = "[CSAudioRecordDeviceIndicator updateWithLatestRecordContext:]";
        v16 = 2114;
        v17 = deviceId2;
        _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Replace deviceId(%{public}@) to nil for VoiceTrigger from Gibraltar.", &v14, 0x16u);
      }

      deviceId = self->_deviceId;
      self->_deviceId = 0;
    }

    else
    {
      deviceId3 = [contextCopy deviceId];
      deviceId = self->_deviceId;
      self->_deviceId = deviceId3;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (CSAudioRecordDeviceIndicator)initWithRecordContext:(id)context deviceId:(id)id shouldUseRemoteRecorder:(BOOL)recorder streamHandleId:(unint64_t)handleId shouldUseSystemDaemonRecorder:(BOOL)daemonRecorder
{
  contextCopy = context;
  idCopy = id;
  v20.receiver = self;
  v20.super_class = CSAudioRecordDeviceIndicator;
  v14 = [(CSAudioRecordDeviceIndicator *)&v20 init];
  if (v14)
  {
    v15 = [contextCopy copy];
    recordContext = v14->_recordContext;
    v14->_recordContext = v15;

    v17 = [idCopy copy];
    deviceId = v14->_deviceId;
    v14->_deviceId = v17;

    v14->_shouldUseRemoteRecorder = recorder;
    v14->_streamHandleId = handleId;
    v14->_shouldUseSystemDaemonRecorder = daemonRecorder;
  }

  return v14;
}

@end