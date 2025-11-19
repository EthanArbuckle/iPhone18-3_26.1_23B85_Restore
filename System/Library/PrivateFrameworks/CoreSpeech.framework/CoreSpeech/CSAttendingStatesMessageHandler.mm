@interface CSAttendingStatesMessageHandler
- (BOOL)_shouldDuckTTSAtSpeechStartDetected:(int64_t)a3;
- (CSAttendingStatesMessageHandler)init;
- (LBAttendingStatesServiceDelegate)delegate;
- (void)_handleSpeechRecognitionTaskDidStop;
- (void)_resetCachedState;
- (void)didCompleteRecognitionTaskWithStatistics:(id)a3 requestId:(id)a4 endpointMode:(int64_t)a5 error:(id)a6;
- (void)didReceiveStartRecognitionRequest:(id)a3 taskName:(id)a4 sharedUserInfo:(id)a5;
- (void)didReceiveStopRecognitionRequest:(id)a3 stopReason:(unint64_t)a4;
- (void)localAttendingStartedWithRootRequestId:(id)a3;
- (void)localAttendingStopped;
- (void)localAttendingStoppedUnexpectedlyWithError:(id)a3;
- (void)localAttendingWillStartWithRootRequestId:(id)a3;
- (void)speechStartDetectedWithHostTime:(unint64_t)a3 audioRecordType:(int64_t)a4 audioRecordDeviceId:(id)a5;
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
        v5 = [(CSSpeechStartDetectedMetaData *)self->_speechDetectedMetaData hostTime];
        v6 = [(CSSpeechStartDetectedMetaData *)self->_speechDetectedMetaData audioRecordType];
        v7 = [(CSSpeechStartDetectedMetaData *)self->_speechDetectedMetaData deviceId];
        [v8 speechRecognizerReadyForNewTurnWithSpeechStartDetectedAtHostTime:v5 audioRecordType:v6 audioRecordDeviceId:v7];
      }
    }
  }
}

- (void)didCompleteRecognitionTaskWithStatistics:(id)a3 requestId:(id)a4 endpointMode:(int64_t)a5 error:(id)a6
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C76A4;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)didReceiveStopRecognitionRequest:(id)a3 stopReason:(unint64_t)a4
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C7720;
  v5[3] = &unk_100253C98;
  v5[4] = self;
  v5[5] = a4;
  dispatch_async(queue, v5);
}

- (void)didReceiveStartRecognitionRequest:(id)a3 taskName:(id)a4 sharedUserInfo:(id)a5
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C786C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)_shouldDuckTTSAtSpeechStartDetected:(int64_t)a3
{
  v4 = a3 == 22 || a3 == 25;
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

- (void)speechStartDetectedWithHostTime:(unint64_t)a3 audioRecordType:(int64_t)a4 audioRecordDeviceId:(id)a5
{
  v8 = a5;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000C79EC;
  v11[3] = &unk_100250B98;
  v13 = a3;
  v14 = a4;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
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

- (void)localAttendingStoppedUnexpectedlyWithError:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C7DAC;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)localAttendingStartedWithRootRequestId:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C7EA0;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)localAttendingWillStartWithRootRequestId:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C7FD8;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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