@interface CSAttSiriAudioCoordinator
- (CSAttSiriAudioCoordinator)initWithTargetQueue:(id)queue;
- (void)_handleClientDidStopIfNeeded;
- (void)addReceiver:(id)receiver;
- (void)attSiriAudioSrcNodeDidStartRecording:(id)recording successfully:(BOOL)successfully error:(id)error;
- (void)attSiriAudioSrcNodeDidStop:(id)stop;
- (void)attSiriAudioSrcNodeLPCMRecordBufferAvailable:(id)available audioChunk:(id)chunk;
- (void)attSiriNode:(id)node didDetectHardEndpointAtTime:(double)time withMetrics:(id)metrics usesAutomaticEndpointing:(BOOL)endpointing;
- (void)intuitiveConvAudioCaptureMonitorDidStopAudioCapture:(id)capture stopStreamOption:(id)option eventUUID:(id)d;
- (void)removeReceiver:(id)receiver;
- (void)reset;
- (void)siriClientBehaviorMonitor:(id)monitor didStopStream:(id)stream withEventUUID:(id)d;
@end

@implementation CSAttSiriAudioCoordinator

- (void)_handleClientDidStopIfNeeded
{
  if (!self->_hasAudioEverStarted)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[CSAttSiriAudioCoordinator _handleClientDidStopIfNeeded]";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Client didStop but audio coordinator didn't ever received audio started, issue attSiriAudioSrcNodeDidStop here to let all nodes hard stop", buf, 0xCu);
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = self->_receivers;
    v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v10 + 1) + 8 * v8) attSiriAudioSrcNodeDidStop:{0, v10}];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    v9 = +[CSDiagnosticReporter sharedInstance];
    [v9 submitAudioIssueReport:kCSDiagnosticReporterIntuitiveConvTandemStreamDidNotReceiveAudio];
  }
}

- (void)intuitiveConvAudioCaptureMonitorDidStopAudioCapture:(id)capture stopStreamOption:(id)option eventUUID:(id)d
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004C85C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)siriClientBehaviorMonitor:(id)monitor didStopStream:(id)stream withEventUUID:(id)d
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004C8D8;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)attSiriNode:(id)node didDetectHardEndpointAtTime:(double)time withMetrics:(id)metrics usesAutomaticEndpointing:(BOOL)endpointing
{
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004C964;
  v7[3] = &unk_100253BF8;
  endpointingCopy = endpointing;
  v7[4] = self;
  dispatch_async(queue, v7);
}

- (void)attSiriAudioSrcNodeLPCMRecordBufferAvailable:(id)available audioChunk:(id)chunk
{
  availableCopy = available;
  chunkCopy = chunk;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004CAEC;
  block[3] = &unk_100253680;
  block[4] = self;
  v12 = availableCopy;
  v13 = chunkCopy;
  v9 = chunkCopy;
  v10 = availableCopy;
  dispatch_async(queue, block);
}

- (void)attSiriAudioSrcNodeDidStop:(id)stop
{
  stopCopy = stop;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004CC98;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = stopCopy;
  v6 = stopCopy;
  dispatch_async(queue, v7);
}

- (void)attSiriAudioSrcNodeDidStartRecording:(id)recording successfully:(BOOL)successfully error:(id)error
{
  recordingCopy = recording;
  errorCopy = error;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004CEBC;
  v13[3] = &unk_100252420;
  v13[4] = self;
  v14 = recordingCopy;
  successfullyCopy = successfully;
  v15 = errorCopy;
  v11 = errorCopy;
  v12 = recordingCopy;
  dispatch_async(queue, v13);
}

- (void)reset
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004D090;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)removeReceiver:(id)receiver
{
  receiverCopy = receiver;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004D1E4;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = receiverCopy;
  v6 = receiverCopy;
  dispatch_async(queue, v7);
}

- (void)addReceiver:(id)receiver
{
  receiverCopy = receiver;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004D288;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = receiverCopy;
  v6 = receiverCopy;
  dispatch_async(queue, v7);
}

- (CSAttSiriAudioCoordinator)initWithTargetQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = CSAttSiriAudioCoordinator;
  v5 = [(CSAttSiriAudioCoordinator *)&v11 init];
  if (v5)
  {
    if (queueCopy)
    {
      v6 = dispatch_queue_create_with_target_V2("CSAttSiriAudioCoordinator Queue", 0, queueCopy);
    }

    else
    {
      v6 = dispatch_queue_create("CSAttSiriAudioCoordinator queue", 0);
    }

    queue = v5->_queue;
    v5->_queue = v6;

    v8 = +[NSHashTable weakObjectsHashTable];
    receivers = v5->_receivers;
    v5->_receivers = v8;

    *&v5->_shouldStopDeliverAudioOnEndpoint = 0;
  }

  return v5;
}

@end