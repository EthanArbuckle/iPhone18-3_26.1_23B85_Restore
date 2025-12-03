@interface CSAttendingStatesMessageHandler
- (BOOL)_shouldDuckTTSAtSpeechStartDetected:(int64_t)detected;
- (CSAttendingStatesMessageHandler)init;
- (LBAttendingStatesServiceDelegate)delegate;
- (void)_handleSpeechRecognitionTaskDidStop;
- (void)_resetCachedState;
- (void)didCompleteRecognitionTaskWithStatistics:(id)statistics requestId:(id)id endpointMode:(int64_t)mode error:(id)error;
- (void)didReceiveStartRecognitionRequest:(id)request taskName:(id)name sharedUserInfo:(id)info;
- (void)didReceiveStopRecognitionRequest:(id)request stopReason:(unint64_t)reason;
- (void)localAttendingStartedWithRootRequestId:(id)id;
- (void)localAttendingStopped;
- (void)localAttendingStoppedUnexpectedlyWithError:(id)error;
- (void)localAttendingWillStartWithRootRequestId:(id)id;
- (void)speechStartDetectedWithHostTime:(unint64_t)time audioRecordType:(int64_t)type audioRecordDeviceId:(id)id;
@end

@implementation CSAttendingStatesMessageHandler

- (LBAttendingStatesServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleSpeechRecognitionTaskDidStop
{
  self->_isSpeechRecognizerBusy = 0;
  if (self->_shouldDelaySpeechRecognizerForNextTurn)
  {
    if (self->_speechDetectedMetaData)
    {
      self->_shouldDelaySpeechRecognizerForNextTurn = 0;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v4 = objc_opt_respondsToSelector();

      if (v4)
      {
        v8 = objc_loadWeakRetained(&self->_delegate);
        hostTime = [(CSSpeechStartDetectedMetaData *)self->_speechDetectedMetaData hostTime];
        audioRecordType = [(CSSpeechStartDetectedMetaData *)self->_speechDetectedMetaData audioRecordType];
        deviceId = [(CSSpeechStartDetectedMetaData *)self->_speechDetectedMetaData deviceId];
        [v8 speechRecognizerReadyForNewTurnWithSpeechStartDetectedAtHostTime:hostTime audioRecordType:audioRecordType audioRecordDeviceId:deviceId];
      }
    }
  }
}

- (void)didCompleteRecognitionTaskWithStatistics:(id)statistics requestId:(id)id endpointMode:(int64_t)mode error:(id)error
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C76A4;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)didReceiveStopRecognitionRequest:(id)request stopReason:(unint64_t)reason
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C7720;
  v5[3] = &unk_100253C98;
  v5[4] = self;
  v5[5] = reason;
  dispatch_async(queue, v5);
}

- (void)didReceiveStartRecognitionRequest:(id)request taskName:(id)name sharedUserInfo:(id)info
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C786C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)_shouldDuckTTSAtSpeechStartDetected:(int64_t)detected
{
  v4 = detected == 22 || detected == 25;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSAttendingStatesMessageHandler _shouldDuckTTSAtSpeechStartDetected:]";
    v9 = 1026;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s shouldDuckTTS: %{public}d", &v7, 0x12u);
  }

  return v4;
}

- (void)speechStartDetectedWithHostTime:(unint64_t)time audioRecordType:(int64_t)type audioRecordDeviceId:(id)id
{
  idCopy = id;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000C79EC;
  v11[3] = &unk_100250B98;
  timeCopy = time;
  typeCopy = type;
  v11[4] = self;
  v12 = idCopy;
  v10 = idCopy;
  dispatch_async(queue, v11);
}

- (void)localAttendingStopped
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C7C80;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)localAttendingStoppedUnexpectedlyWithError:(id)error
{
  errorCopy = error;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C7DAC;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(queue, v7);
}

- (void)localAttendingStartedWithRootRequestId:(id)id
{
  idCopy = id;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C7EA0;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  dispatch_async(queue, v7);
}

- (void)localAttendingWillStartWithRootRequestId:(id)id
{
  idCopy = id;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C7FD8;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  dispatch_async(queue, v7);
}

- (void)_resetCachedState
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSAttendingStatesMessageHandler _resetCachedState]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  *&self->_isSpeechRecognizerBusy = 0;
  speechDetectedMetaData = self->_speechDetectedMetaData;
  self->_speechDetectedMetaData = 0;
}

- (CSAttendingStatesMessageHandler)init
{
  v6.receiver = self;
  v6.super_class = CSAttendingStatesMessageHandler;
  v2 = [(CSAttendingStatesMessageHandler *)&v6 init];
  if (v2)
  {
    v3 = [CSUtils getSerialQueue:@"CSAttendingStatesMessageHandler Queue" qualityOfService:33];
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

@end