@interface CSAttSiriContinuityEndDetector
- (CSAttSiriContinuityEndDetector)init;
- (void)_deliverRecognitionCompletionWithStatistics:(id)statistics requestId:(id)id endpointMode:(int64_t)mode error:(id)error;
- (void)_handleContinuityDetectorTimeout;
- (void)_notifyContinuityEnd;
- (void)_setupContinuityDetectorTimer;
- (void)addContinuityDetectionReceiver:(id)receiver;
- (void)addRecognitionTaskCompletionReceiver:(id)receiver;
- (void)configureTimeout:(float)timeout;
- (void)didCompleteRecognitionTaskWithStatistics:(id)statistics requestId:(id)id endpointMode:(int64_t)mode error:(id)error;
- (void)didGenerateTRPDetector:(id)detector;
- (void)setUpWithContinuityEndUsage:(BOOL)usage;
- (void)start;
@end

@implementation CSAttSiriContinuityEndDetector

- (void)didCompleteRecognitionTaskWithStatistics:(id)statistics requestId:(id)id endpointMode:(int64_t)mode error:(id)error
{
  statisticsCopy = statistics;
  idCopy = id;
  errorCopy = error;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100162390;
  block[3] = &unk_100253558;
  block[4] = self;
  v18 = errorCopy;
  v19 = statisticsCopy;
  v20 = idCopy;
  modeCopy = mode;
  v14 = idCopy;
  v15 = statisticsCopy;
  v16 = errorCopy;
  dispatch_async(queue, block);
}

- (void)didGenerateTRPDetector:(id)detector
{
  detectorCopy = detector;
  queue = self->_queue;
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100162690;
  v10 = &unk_100253C48;
  selfCopy = self;
  v12 = detectorCopy;
  v6 = detectorCopy;
  dispatch_async(queue, &v7);
  [(CSAttSiriContinuityEndDetector *)self start:v7];
}

- (void)_deliverRecognitionCompletionWithStatistics:(id)statistics requestId:(id)id endpointMode:(int64_t)mode error:(id)error
{
  statisticsCopy = statistics;
  idCopy = id;
  errorCopy = error;
  v13 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[CSAttSiriContinuityEndDetector _deliverRecognitionCompletionWithStatistics:requestId:endpointMode:error:]";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  recognitionTaskCompletionReceivers = [(CSAttSiriContinuityEndDetector *)self recognitionTaskCompletionReceivers];
  v15 = [recognitionTaskCompletionReceivers countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(recognitionTaskCompletionReceivers);
        }

        v19 = *(*(&v21 + 1) + 8 * v18);
        if (v19)
        {
          v20 = *(*(&v21 + 1) + 8 * v18);
          if (objc_opt_respondsToSelector())
          {
            [v19 didCompleteRecognitionTaskWithStatistics:statisticsCopy requestId:idCopy endpointMode:mode error:errorCopy];
          }
        }

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [recognitionTaskCompletionReceivers countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }
}

- (void)_notifyContinuityEnd
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v3 = qword_10029E5D0;
  v27 = qword_10029E5D0;
  if (!qword_10029E5D0)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100162B54;
    v23[3] = &unk_100253580;
    v23[4] = &v24;
    sub_100162B54(v23);
    v3 = v25[3];
  }

  v4 = v3;
  _Block_object_dispose(&v24, 8);
  v5 = [v3 alloc];
  v6 = mach_continuous_time();
  cachedTRPId = [(CSAttSiriContinuityEndDetector *)self cachedTRPId];
  v8 = [v5 initWithGeneratedHostTime:v6 lastTRPCandidateId:cachedTRPId requestId:self->_requestId];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  continuityDetectionReceivers = [(CSAttSiriContinuityEndDetector *)self continuityDetectionReceivers];
  v10 = [continuityDetectionReceivers countByEnumeratingWithState:&v19 objects:v28 count:16];
  if (v10)
  {
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(continuityDetectionReceivers);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v13 didGenerateContinuityEnd:v8];
        }
      }

      v10 = [continuityDetectionReceivers countByEnumeratingWithState:&v19 objects:v28 count:16];
    }

    while (v10);
  }

  self->_continuityEndDelivered = 1;
  cachedRecognitionCompletionInfo = self->_cachedRecognitionCompletionInfo;
  if (cachedRecognitionCompletionInfo)
  {
    statistics = [(CSAttSiriRecognitionCompletionCachedInfo *)cachedRecognitionCompletionInfo statistics];
    requestId = [(CSAttSiriRecognitionCompletionCachedInfo *)self->_cachedRecognitionCompletionInfo requestId];
    endpointMode = [(CSAttSiriRecognitionCompletionCachedInfo *)self->_cachedRecognitionCompletionInfo endpointMode];
    completionError = [(CSAttSiriRecognitionCompletionCachedInfo *)self->_cachedRecognitionCompletionInfo completionError];
    [(CSAttSiriContinuityEndDetector *)self _deliverRecognitionCompletionWithStatistics:statistics requestId:requestId endpointMode:endpointMode error:completionError];
  }
}

- (void)_handleContinuityDetectorTimeout
{
  queue = [(CSAttSiriContinuityEndDetector *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSAttSiriContinuityEndDetector *)self _notifyContinuityEnd];
}

- (void)_setupContinuityDetectorTimer
{
  continuityDetectorTimer = self->_continuityDetectorTimer;
  if (continuityDetectorTimer)
  {
    [(CSAttSiriTimer *)continuityDetectorTimer cancelTimer];
    v4 = self->_continuityDetectorTimer;
    self->_continuityDetectorTimer = 0;
  }

  objc_initWeak(&location, self);
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    continuityTimeoutWindowInSec = self->_continuityTimeoutWindowInSec;
    *buf = 136315394;
    v13 = "[CSAttSiriContinuityEndDetector _setupContinuityDetectorTimer]";
    v14 = 2048;
    v15 = continuityTimeoutWindowInSec;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Setup continuity timer for duration %f secs", buf, 0x16u);
  }

  v7 = self->_continuityDetectorTimer;
  v8 = self->_continuityTimeoutWindowInSec;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100162EF0;
  v9[3] = &unk_100253510;
  objc_copyWeak(&v10, &location);
  [(CSAttSiriTimer *)v7 setTimerForSecs:v9 completionBlock:v8];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)addRecognitionTaskCompletionReceiver:(id)receiver
{
  receiverCopy = receiver;
  queue = [(CSAttSiriContinuityEndDetector *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100163064;
  v7[3] = &unk_100253C48;
  v8 = receiverCopy;
  selfCopy = self;
  v6 = receiverCopy;
  dispatch_async(queue, v7);
}

- (void)addContinuityDetectionReceiver:(id)receiver
{
  receiverCopy = receiver;
  queue = [(CSAttSiriContinuityEndDetector *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001631B4;
  v7[3] = &unk_100253C48;
  v8 = receiverCopy;
  selfCopy = self;
  v6 = receiverCopy;
  dispatch_async(queue, v7);
}

- (void)setUpWithContinuityEndUsage:(BOOL)usage
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001632C8;
  v4[3] = &unk_100253BF8;
  usageCopy = usage;
  v4[4] = self;
  dispatch_async(queue, v4);
}

- (void)start
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016345C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)configureTimeout:(float)timeout
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001635B0;
  v4[3] = &unk_1002534E8;
  timeoutCopy = timeout;
  v4[4] = self;
  dispatch_async(queue, v4);
}

- (CSAttSiriContinuityEndDetector)init
{
  if ((+[CSUtils isMedocFeatureEnabled]& 1) != 0)
  {
    v17.receiver = self;
    v17.super_class = CSAttSiriContinuityEndDetector;
    v3 = [(CSAttSiriContinuityEndDetector *)&v17 init];
    if (v3)
    {
      v4 = dispatch_queue_create("CSAttSiriContinuityEndDetector queue", 0);
      queue = v3->_queue;
      v3->_queue = v4;

      v3->_continuityEndDeliveryNeeded = 0;
      v6 = +[NSHashTable weakObjectsHashTable];
      continuityDetectionReceivers = v3->_continuityDetectionReceivers;
      v3->_continuityDetectionReceivers = v6;

      v8 = +[NSHashTable weakObjectsHashTable];
      recognitionTaskCompletionReceivers = v3->_recognitionTaskCompletionReceivers;
      v3->_recognitionTaskCompletionReceivers = v8;

      cachedRecognitionCompletionInfo = v3->_cachedRecognitionCompletionInfo;
      v3->_cachedRecognitionCompletionInfo = 0;

      v3->_continuityEndDelivered = 0;
      requestId = v3->_requestId;
      v3->_requestId = 0;

      cachedTRPId = v3->_cachedTRPId;
      v3->_cachedTRPId = 0;

      v3->_configureContinuityWindowTimeout = 0;
    }

    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[CSAttSiriContinuityEndDetector init]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
    }

    self = v3;
    selfCopy = self;
  }

  else
  {
    v15 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[CSAttSiriContinuityEndDetector init]";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s Medoc feature flag is disabled!", buf, 0xCu);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end