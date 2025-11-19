@interface CSLocalAttendingInitiator
- (BOOL)fetchIsAttending;
- (CSLocalAttendingInitiator)initWithAttendingUsecase:(id)a3;
- (LBAttendingStatesServiceDelegate)delegate;
- (int64_t)_stopReasonFromHint:(unint64_t)a3;
- (void)_emitSpeechStartDetectedEventWithAttendingTriggerInfo:(id)a3;
- (void)_handleSpeechStartDetectedWithEventInfo:(id)a3;
- (void)_reset;
- (void)_startAttendingForJarvisAnnounceMessageWithInfo:(id)a3;
- (void)_startAttendingWithInfo:(id)a3;
- (void)_startAttendingWithOptions:(id)a3;
- (void)_stopAttendingWithReason:(unint64_t)a3;
- (void)attendingStoppedWithReason:(int64_t)a3;
- (void)intuitiveConvAudioCaptureMonitor:(id)a3 didStartAudioCaptureSuccessfully:(BOOL)a4 option:(id)a5 eventUUID:(id)a6;
- (void)receivedAttendingJarvisHintWithInfo:(id)a3;
- (void)receivedAttendingMagusNotSupportedHintWithInfo:(id)a3;
- (void)receivedAttendingStartHintWithInfo:(id)a3;
- (void)receivedAttendingStopHintWithInfo:(id)a3;
- (void)receivedAttendingTriggerForSiriPromptHintWithInfo:(id)a3;
- (void)receivedAttendingWillStartHintWithInfo:(id)a3;
- (void)setAttendingState:(BOOL)a3;
- (void)siriClientBehaviorMonitor:(id)a3 didStartStreamWithContext:(id)a4 successfully:(BOOL)a5 option:(id)a6 withEventUUID:(id)a7;
- (void)speechStartDetectedWithEventInfo:(id)a3;
@end

@implementation CSLocalAttendingInitiator

- (LBAttendingStatesServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_emitSpeechStartDetectedEventWithAttendingTriggerInfo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_mhUUID)
  {
    v6 = [v4 triggerMachTime] - self->_startAttendingHostTime;
    v7 = CSLogCategoryAttending;
    if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      [v5 amountOfSpeechDetectedInMs];
      v10 = v9;
      [v5 triggerThresholdInMs];
      mhUUID = self->_mhUUID;
      rootRequestIdForLogging = self->_rootRequestIdForLogging;
      v26 = 136316418;
      v27 = "[CSLocalAttendingInitiator _emitSpeechStartDetectedEventWithAttendingTriggerInfo:]";
      v28 = 2048;
      v29 = v10;
      v30 = 2048;
      v31 = v13;
      v32 = 2048;
      v33 = v6;
      v34 = 2112;
      v35 = mhUUID;
      v36 = 2112;
      v37 = rootRequestIdForLogging;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Emit SpeechStartDetected amountOfSpeech: %f, threshold: %f, attendingDuration: %llu, mhUUID: %@, rootRequestIdForLogging: %@", &v26, 0x3Eu);
    }

    v14 = objc_alloc_init(MHSchemaMHSpeechDetectorContext);
    v15 = objc_alloc_init(MHSchemaMHSpeechDetectorEnded);
    v16 = [SISchemaUUID alloc];
    v17 = [[NSUUID alloc] initWithUUIDString:self->_rootRequestIdForLogging];
    v18 = [v16 initWithNSUUID:v17];
    [v15 setPreviousRequestId:v18];

    [v5 amountOfSpeechDetectedInMs];
    [v15 setAmountOfSpeechDetectedInMs:?];
    [v5 triggerThresholdInMs];
    [v15 setStartSpeechDetectionThresholdInMs:?];
    [v15 setTimeSinceLastAcceptedRequestInNs:{+[CSFTimeUtils hostTimeToNs:](CSFTimeUtils, "hostTimeToNs:", v6)}];
    [v14 setEnded:v15];
    v19 = objc_alloc_init(MHSchemaMHClientEvent);
    v20 = objc_alloc_init(MHSchemaMHClientEventMetadata);
    v21 = [SISchemaUUID alloc];
    v22 = [[NSUUID alloc] initWithUUIDString:self->_mhUUID];
    v23 = [v21 initWithNSUUID:v22];
    [v20 setMhId:v23];

    [v19 setEventMetadata:v20];
    [v19 setSpeechDetectorContext:v14];
    v24 = +[AssistantSiriAnalytics sharedStream];
    [v24 emitMessage:v19];
  }

  else
  {
    v25 = CSLogCategoryAttending;
    if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 136315138;
      v27 = "[CSLocalAttendingInitiator _emitSpeechStartDetectedEventWithAttendingTriggerInfo:]";
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s Skip SELF logging since mhUUID is not set", &v26, 0xCu);
    }
  }
}

- (void)intuitiveConvAudioCaptureMonitor:(id)a3 didStartAudioCaptureSuccessfully:(BOOL)a4 option:(id)a5 eventUUID:(id)a6
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016E960;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)siriClientBehaviorMonitor:(id)a3 didStartStreamWithContext:(id)a4 successfully:(BOOL)a5 option:(id)a6 withEventUUID:(id)a7
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016E9E4;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_handleSpeechStartDetectedWithEventInfo:(id)a3
{
  v4 = a3;
  v5 = CSLogCategoryAttending;
  if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 description];
    v14 = 136315394;
    v15 = "[CSLocalAttendingInitiator _handleSpeechStartDetectedWithEventInfo:]";
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s %@", &v14, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    v11 = [v4 triggerMachTime];
    v12 = [v4 audioRecordType];
    v13 = [v4 deviceId];
    [v10 speechStartDetectedWithHostTime:v11 audioRecordType:v12 audioRecordDeviceId:v13];
  }
}

- (void)speechStartDetectedWithEventInfo:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10016EBF4;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)attendingStoppedWithReason:(int64_t)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10016ED74;
  v4[3] = &unk_100253C98;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (void)receivedAttendingJarvisHintWithInfo:(id)a3
{
  v4 = a3;
  v5 = [(CSLocalAttendingInitiator *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10016F034;
  v7[3] = &unk_100253C48;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)receivedAttendingMagusNotSupportedHintWithInfo:(id)a3
{
  v4 = a3;
  v5 = [(CSLocalAttendingInitiator *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10016F1AC;
  v7[3] = &unk_100253C48;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)receivedAttendingTriggerForSiriPromptHintWithInfo:(id)a3
{
  v4 = a3;
  v5 = [(CSLocalAttendingInitiator *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10016F39C;
  v7[3] = &unk_100253C48;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)receivedAttendingStopHintWithInfo:(id)a3
{
  v4 = a3;
  attendingStartTransitionGroup = self->_attendingStartTransitionGroup;
  v6 = dispatch_time(0, 10000000000);
  if (dispatch_group_wait(attendingStartTransitionGroup, v6))
  {
    v7 = CSLogCategoryAttending;
    if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v14 = "[CSLocalAttendingInitiator receivedAttendingStopHintWithInfo:]";
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s attendingStartTransitionGroup: Timed-out transition into AttendingState!", buf, 0xCu);
    }
  }

  v8 = [(CSLocalAttendingInitiator *)self queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10016F714;
  v10[3] = &unk_100253C48;
  v11 = v4;
  v12 = self;
  v9 = v4;
  dispatch_async(v8, v10);
}

- (void)receivedAttendingStartHintWithInfo:(id)a3
{
  v4 = a3;
  v5 = [(CSLocalAttendingInitiator *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10016F898;
  v7[3] = &unk_100253C48;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)receivedAttendingWillStartHintWithInfo:(id)a3
{
  v4 = a3;
  v5 = [(CSLocalAttendingInitiator *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10016FA10;
  v7[3] = &unk_100253C48;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_reset
{
  self->_isAttending = 0;
  rootRequestId = self->_rootRequestId;
  self->_rootRequestId = 0;
}

- (int64_t)_stopReasonFromHint:(unint64_t)a3
{
  if (a3 - 3 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1001AA2D0[a3 - 3];
  }
}

- (void)_stopAttendingWithReason:(unint64_t)a3
{
  v5 = CSLogCategoryAttending;
  if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
  {
    isAttending = self->_isAttending;
    v8 = 136315650;
    v9 = "[CSLocalAttendingInitiator _stopAttendingWithReason:]";
    v10 = 1024;
    v11 = isAttending;
    v12 = 2048;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s isAttending:%u, reason:%lu", &v8, 0x1Cu);
  }

  if (a3 == 5 || self->_isAttending)
  {
    if (a3 == 5)
    {
      self->_isStoppingForSiriUIDismissal = 1;
    }

    [(CSAttendingService *)self->_usecaseController stopAttendingWithReason:[(CSLocalAttendingInitiator *)self _stopReasonFromHint:a3]];
  }

  else
  {
    v7 = CSLogCategoryAttending;
    if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[CSLocalAttendingInitiator _stopAttendingWithReason:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Already stopped attending, ignore request", &v8, 0xCu);
    }
  }
}

- (void)_startAttendingForJarvisAnnounceMessageWithInfo:(id)a3
{
  v4 = a3;
  if (+[CSUtils isContinuousConversationSupported])
  {
    if (self->_isAttending)
    {
      v5 = CSLogCategoryAttending;
      if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_INFO))
      {
        v9 = 136315138;
        v10 = "[CSLocalAttendingInitiator _startAttendingForJarvisAnnounceMessageWithInfo:]";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Already in attending state, ignore request", &v9, 0xCu);
      }
    }

    else
    {
      v7 = [v4 deviceId];
      v8 = [CSAttendingOptions optionForJarvisAnnounceMessageWithDeviceId:v7];

      [(CSLocalAttendingInitiator *)self _startAttendingWithOptions:v8];
    }
  }

  else
  {
    v6 = CSLogCategoryAttending;
    if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315138;
      v10 = "[CSLocalAttendingInitiator _startAttendingForJarvisAnnounceMessageWithInfo:]";
      _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "%s Wrongly called the code path which is not supported!", &v9, 0xCu);
    }
  }
}

- (void)_startAttendingWithInfo:(id)a3
{
  v4 = a3;
  if (+[CSUtils isContinuousConversationSupported])
  {
    v5 = [v4 recordContext];
    if (self->_isAttending)
    {
      v6 = CSLogCategoryAttending;
      if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_INFO))
      {
        v17 = 136315138;
        v18 = "[CSLocalAttendingInitiator _startAttendingWithInfo:]";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Already in attending state, ignore request", &v17, 0xCu);
      }
    }

    else
    {
      v8 = [v4 rootRequestId];
      rootRequestId = self->_rootRequestId;
      self->_rootRequestId = v8;

      v10 = [v4 rootRequestId];
      rootRequestIdForLogging = self->_rootRequestIdForLogging;
      self->_rootRequestIdForLogging = v10;

      v12 = [v4 mhUUID];
      mhUUID = self->_mhUUID;
      self->_mhUUID = v12;

      v14 = [v5 type];
      v15 = [v5 deviceId];
      v16 = [CSAttendingOptions optionForFlexibleFollowupWithAudioRecordType:v14 deviceId:v15];

      [(CSLocalAttendingInitiator *)self _startAttendingWithOptions:v16];
    }
  }

  else
  {
    v7 = CSLogCategoryAttending;
    if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_FAULT))
    {
      v17 = 136315138;
      v18 = "[CSLocalAttendingInitiator _startAttendingWithInfo:]";
      _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "%s Wrongly called the code path which is not supported!", &v17, 0xCu);
    }
  }
}

- (void)_startAttendingWithOptions:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = CSLogCategoryAttending;
  if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[CSLocalAttendingInitiator _startAttendingWithOptions:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s dispatch group enter attendingStartTransitionGroup", buf, 0xCu);
  }

  dispatch_group_enter(self->_attendingStartTransitionGroup);
  [(CSLocalAttendingInitiator *)self _resetIsStoppingForSiriUIDismissal];
  if (self->_rootRequestId)
  {
    if (![(NSString *)self->_rootRequestIdForWillAttendSignal isEqualToString:?])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = objc_loadWeakRetained(&self->_delegate);
        [v8 localAttendingWillStartWithRootRequestId:self->_rootRequestIdForWillAttendSignal];
      }
    }
  }

  v9 = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 localAttendingStartedWithRootRequestId:self->_rootRequestId];
  }

  usecaseController = self->_usecaseController;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100170204;
  v14[3] = &unk_100253C70;
  v14[4] = self;
  v15 = v4;
  v13 = v4;
  [(CSAttendingService *)usecaseController startAttendingWithOptions:v13 completion:v14];
}

- (void)setAttendingState:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100170754;
  v4[3] = &unk_100253BF8;
  v5 = a3;
  v4[4] = self;
  dispatch_async(queue, v4);
}

- (BOOL)fetchIsAttending
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001708C8;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (CSLocalAttendingInitiator)initWithAttendingUsecase:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = CSLocalAttendingInitiator;
  v6 = [(CSLocalAttendingInitiator *)&v13 init];
  if (v6)
  {
    v7 = [CSUtils getSerialQueue:@"CSAttendingMagusLauncher Queue" qualityOfService:33];
    queue = v6->_queue;
    v6->_queue = v7;

    objc_storeStrong(&v6->_usecaseController, a3);
    [(CSAttendingService *)v6->_usecaseController setDelegate:v6];
    v6->_isAttending = 0;
    [(CSLocalAttendingInitiator *)v6 _resetIsStoppingForSiriUIDismissal];
    v9 = dispatch_group_create();
    attendingStartTransitionGroup = v6->_attendingStartTransitionGroup;
    v6->_attendingStartTransitionGroup = v9;

    lastLoggedMhUUID = v6->_lastLoggedMhUUID;
    v6->_lastLoggedMhUUID = 0;
  }

  return v6;
}

@end