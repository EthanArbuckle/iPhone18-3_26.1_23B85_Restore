@interface CSAttSiriSpeechDetectionNode
- (CSAttSiriController)attSiriController;
- (CSAttSiriOSDNode)osdNode;
- (CSAttSiriSpeechDetectionNode)init;
- (CSAttSiriSpeechDetectionNode)initWithAttSiriController:(id)controller;
- (CSAttSiriSpeechDetectionNodeDelegate)delegate;
- (void)_startActivation;
- (void)addReceiver:(id)receiver;
- (void)attSiriNode:(id)node didUpdateOSDFeatures:(id)features withFrameDurationMs:(double)ms withMHID:(id)d;
- (void)registerOSDNode:(id)node;
- (void)start;
- (void)stop;
@end

@implementation CSAttSiriSpeechDetectionNode

- (CSAttSiriOSDNode)osdNode
{
  WeakRetained = objc_loadWeakRetained(&self->_osdNode);

  return WeakRetained;
}

- (CSAttSiriSpeechDetectionNodeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CSAttSiriController)attSiriController
{
  WeakRetained = objc_loadWeakRetained(&self->_attSiriController);

  return WeakRetained;
}

- (void)_startActivation
{
  if (!self->_didActivate)
  {
    self->_didActivate = 1;
    if ((self->_firstSpeechFrameAudioTsInMs + -700.0) / 1000.0 >= 0.0)
    {
      v3 = (self->_firstSpeechFrameAudioTsInMs + -700.0) / 1000.0;
    }

    else
    {
      v3 = 0.0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_osdNode);
    audioStartSampleCount = [WeakRetained audioStartSampleCount];
    +[CSConfig inputRecordingSampleRate];
    v7 = (audioStartSampleCount + v3 * v6);

    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315394;
      v16 = "[CSAttSiriSpeechDetectionNode _startActivation]";
      v17 = 2048;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s startPtAbsSampleId: %llu", &v15, 0x16u);
    }

    [(CSAttSiriSpeechDetectionNode *)self startDetectionTime];
    v9 = CSMachAbsoluteTimeAddTimeInterval();
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      startDetectionTime = [(CSAttSiriSpeechDetectionNode *)self startDetectionTime];
      v15 = 136315650;
      v16 = "[CSAttSiriSpeechDetectionNode _startActivation]";
      v17 = 2048;
      v18 = startDetectionTime;
      v19 = 2048;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s audio started at %llu, speech started at: %llu", &v15, 0x20u);
    }

    v13 = objc_alloc_init(CSAttSiriAttendingTriggerEventInfo);
    [(CSAttSiriAttendingTriggerEventInfo *)v13 setTriggerMachTime:v9];
    [(CSAttSiriAttendingTriggerEventInfo *)v13 setTriggerAbsStartSampleId:v7];
    delegate = [(CSAttSiriSpeechDetectionNode *)self delegate];
    [delegate attSiriNode:self didDetectSpeechWithTriggerInfo:v13];
  }
}

- (void)attSiriNode:(id)node didUpdateOSDFeatures:(id)features withFrameDurationMs:(double)ms withMHID:(id)d
{
  featuresCopy = features;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100039CF0;
  v10[3] = &unk_100253C48;
  v10[4] = self;
  v11 = featuresCopy;
  v9 = featuresCopy;
  dispatch_async(queue, v10);
}

- (void)stop
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100039F20;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)start
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100039FA4;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)registerOSDNode:(id)node
{
  nodeCopy = node;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003A060;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = nodeCopy;
  v6 = nodeCopy;
  dispatch_async(queue, v7);
}

- (void)addReceiver:(id)receiver
{
  receiverCopy = receiver;
  if (![(NSHashTable *)self->_receivers containsObject:receiverCopy])
  {
    if ([receiverCopy conformsToProtocol:&OBJC_PROTOCOL___CSAttSiriSpeechDetectionNodeDelegate])
    {
      [(NSHashTable *)self->_receivers addObject:receiverCopy];
    }

    else
    {
      v5 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "[CSAttSiriSpeechDetectionNode addReceiver:]";
        v8 = 2112;
        v9 = receiverCopy;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Unsupported receiver: %@", &v6, 0x16u);
      }
    }
  }
}

- (CSAttSiriSpeechDetectionNode)initWithAttSiriController:(id)controller
{
  controllerCopy = controller;
  v5 = [(CSAttSiriSpeechDetectionNode *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_attSiriController, controllerCopy);
  }

  return v6;
}

- (CSAttSiriSpeechDetectionNode)init
{
  v9.receiver = self;
  v9.super_class = CSAttSiriSpeechDetectionNode;
  v2 = [(CSAttSiriSpeechDetectionNode *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSAttSiriSpeechDetectionNode queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v2->_type = 13;
    v5 = +[NSHashTable weakObjectsHashTable];
    receivers = v2->_receivers;
    v2->_receivers = v5;

    v2->_isReady = 0;
    requiredNodes = v2->_requiredNodes;
    v2->_requiredNodes = &off_10025ECC0;
  }

  return v2;
}

@end