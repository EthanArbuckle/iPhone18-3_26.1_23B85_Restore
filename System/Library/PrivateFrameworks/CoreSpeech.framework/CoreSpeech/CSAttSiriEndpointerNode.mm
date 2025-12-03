@interface CSAttSiriEndpointerNode
- (CSAttSiriController)attSiriController;
- (CSAttSiriEndpointerNode)init;
- (CSAttSiriEndpointerNode)initWithAttSiriController:(id)controller;
- (CSAttSiriEndpointerNodeDelegate)endpointerNodeDelegate;
- (CSEndpointAnalyzerDelegate)delegate;
- (void)_emitStoppedListeningForSpeechContinuationWithTrpId:(id)id;
- (void)_reportHardEndpointToXPCClientWithTime:(double)time endpointerMetrics:(id)metrics eventType:(int64_t)type;
- (void)_sendEndpointEventDelegateAtTime:(double)time eventType:(int64_t)type endpointerMetrics:(id)metrics;
- (void)addReceiver:(id)receiver;
- (void)attSiriAudioSrcNodeDidStop:(id)stop;
- (void)attSiriAudioSrcNodeLPCMRecordBufferAvailable:(id)available audioChunk:(id)chunk;
- (void)endpointer:(id)endpointer detectedTwoShotAtTime:(double)time;
- (void)endpointer:(id)endpointer didDetectHardEndpointAtTime:(double)time withMetrics:(id)metrics eventType:(int64_t)type;
- (void)getEndpointerModelVersionWithReply:(id)reply;
- (void)processSpeechPackage:(id)package taskName:(id)name;
- (void)removeReceiver:(id)receiver;
- (void)resetForNewRequestWithSampleRate:(unint64_t)rate recordContext:(id)context recordOption:(id)option voiceTriggerInfo:(id)info;
- (void)stopEndpointer;
@end

@implementation CSAttSiriEndpointerNode

- (CSAttSiriEndpointerNodeDelegate)endpointerNodeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_endpointerNodeDelegate);

  return WeakRetained;
}

- (CSEndpointAnalyzerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (CSAttSiriController)attSiriController
{
  WeakRetained = objc_loadWeakRetained(&self->_attSiriController);

  return WeakRetained;
}

- (void)endpointer:(id)endpointer detectedTwoShotAtTime:(double)time
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002B490;
  v5[3] = &unk_100253C98;
  v5[4] = self;
  *&v5[5] = time;
  dispatch_async(queue, v5);
}

- (void)_emitStoppedListeningForSpeechContinuationWithTrpId:(id)id
{
  idCopy = id;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002B5D0;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  dispatch_async(queue, v7);
}

- (void)_sendEndpointEventDelegateAtTime:(double)time eventType:(int64_t)type endpointerMetrics:(id)metrics
{
  metricsCopy = metrics;
  getUsesAutomaticEndpointing = [(CSAttSiriEndpointerNode *)self getUsesAutomaticEndpointing];
  WeakRetained = objc_loadWeakRetained(&self->_endpointerNodeDelegate);
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v12 = objc_loadWeakRetained(&self->_endpointerNodeDelegate);
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      endpointerNodeDelegate = [(CSAttSiriEndpointerNode *)self endpointerNodeDelegate];
      [endpointerNodeDelegate attSiriNode:self didDetectEndpointEventAtTime:type eventType:metricsCopy withMetrics:getUsesAutomaticEndpointing usesAutomaticEndpointing:time];
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  receivers = [(CSAttSiriEndpointerNode *)self receivers];
  v16 = [receivers countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      v19 = 0;
      do
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(receivers);
        }

        v20 = *(*(&v22 + 1) + 8 * v19);
        if (v20)
        {
          v21 = *(*(&v22 + 1) + 8 * v19);
          if (objc_opt_respondsToSelector())
          {
            [v20 attSiriNode:self didDetectEndpointEventAtTime:type eventType:metricsCopy withMetrics:getUsesAutomaticEndpointing usesAutomaticEndpointing:time];
          }
        }

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [receivers countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v17);
  }
}

- (void)_reportHardEndpointToXPCClientWithTime:(double)time endpointerMetrics:(id)metrics eventType:(int64_t)type
{
  metricsCopy = metrics;
  v9 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    endpointerListener = [(CSAttSiriEndpointerNode *)self endpointerListener];
    *buf = 136315394;
    v32 = "[CSAttSiriEndpointerNode _reportHardEndpointToXPCClientWithTime:endpointerMetrics:eventType:]";
    v33 = 2112;
    v34 = endpointerListener;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s endpointerListener: %@", buf, 0x16u);
  }

  v12 = [metricsCopy metricsCopyWithRequestId:self->_requestId lastAudioChunkHostTime:self->_lastAudioChunkHostTime];
  endpointerListener = self->_endpointerListener;
  if (objc_opt_respondsToSelector())
  {
    v14 = self->_endpointerListener;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10002BC3C;
    v26[3] = &unk_10024E9E8;
    timeCopy = time;
    v27 = v12;
    typeCopy = type;
    [(CSConnectionListener *)v14 notifyClientsWithBlock:v26];
  }

  getUsesAutomaticEndpointing = [(CSAttSiriEndpointerNode *)self getUsesAutomaticEndpointing];
  endpointerNodeDelegate = [(CSAttSiriEndpointerNode *)self endpointerNodeDelegate];
  [endpointerNodeDelegate attSiriNode:self didDetectHardEndpointAtTime:metricsCopy withMetrics:getUsesAutomaticEndpointing usesAutomaticEndpointing:time];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  receivers = [(CSAttSiriEndpointerNode *)self receivers];
  v18 = [receivers countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v23;
    do
    {
      v21 = 0;
      do
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(receivers);
        }

        [*(*(&v22 + 1) + 8 * v21) attSiriNode:self didDetectHardEndpointAtTime:metricsCopy withMetrics:getUsesAutomaticEndpointing usesAutomaticEndpointing:time];
        v21 = v21 + 1;
      }

      while (v19 != v21);
      v19 = [receivers countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v19);
  }
}

- (void)endpointer:(id)endpointer didDetectHardEndpointAtTime:(double)time withMetrics:(id)metrics eventType:(int64_t)type
{
  metricsCopy = metrics;
  queue = self->_queue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002BD08;
  v12[3] = &unk_100250B98;
  v13 = metricsCopy;
  selfCopy = self;
  typeCopy = type;
  timeCopy = time;
  v11 = metricsCopy;
  dispatch_async(queue, v12);
}

- (void)attSiriAudioSrcNodeDidStop:(id)stop
{
  endpointLatencyQueue = self->_endpointLatencyQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002BE54;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(endpointLatencyQueue, block);
}

- (void)attSiriAudioSrcNodeLPCMRecordBufferAvailable:(id)available audioChunk:(id)chunk
{
  chunkCopy = chunk;
  endpointLatencyQueue = self->_endpointLatencyQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002BF9C;
  block[3] = &unk_100253C48;
  v7 = chunkCopy;
  v13 = v7;
  selfCopy = self;
  dispatch_async(endpointLatencyQueue, block);
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002C020;
  v10[3] = &unk_100253C48;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(queue, v10);
}

- (void)processSpeechPackage:(id)package taskName:(id)name
{
  nameCopy = name;
  packageCopy = package;
  v8 = [CSASRFeatures alloc];
  numOneBestTokensExcludingTriggerPhrase = [packageCopy numOneBestTokensExcludingTriggerPhrase];
  endOfSentenceLikelihood = [packageCopy endOfSentenceLikelihood];
  [endOfSentenceLikelihood doubleValue];
  v12 = v11;
  [CSAttSiriSpeechPackageHelper getLastTokenEndTimeFromSpeechPackage:packageCopy];
  v14 = v13;

  v15 = [(CSASRFeatures *)v8 initWithWordCount:numOneBestTokensExcludingTriggerPhrase trailingSilenceDuration:50 eosLikelihood:0 pauseCounts:nameCopy silencePosterior:(v14 * 1000.0) taskName:v12 processedAudioDurationInMilliseconds:0.0 acousticEndpointerScore:0.0];
  [(CSHybridEndpointAnalyzer *)self->_endpointAnalyzer processRCFeatures:v15];
}

- (void)getEndpointerModelVersionWithReply:(id)reply
{
  endpointAnalyzer = self->_endpointAnalyzer;
  replyCopy = reply;
  endpointerModelVersion = [(CSHybridEndpointAnalyzer *)endpointAnalyzer endpointerModelVersion];
  (*(reply + 2))(replyCopy, 0, endpointerModelVersion);
}

- (void)stopEndpointer
{
  [(CSEndpointAnalyzerBase *)self->_endpointAnalyzer stopEndpointer];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C424;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)resetForNewRequestWithSampleRate:(unint64_t)rate recordContext:(id)context recordOption:(id)option voiceTriggerInfo:(id)info
{
  contextCopy = context;
  optionCopy = option;
  infoCopy = info;
  [(CSHybridEndpointAnalyzer *)self->_endpointAnalyzer resetForNewRequestWithSampleRate:rate recordContext:contextCopy recordOption:optionCopy voiceTriggerInfo:infoCopy];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C5C4;
  block[3] = &unk_100253680;
  block[4] = self;
  v14 = contextCopy;
  v25 = v14;
  v15 = optionCopy;
  v26 = v15;
  dispatch_async(queue, block);
  endpointLatencyQueue = self->_endpointLatencyQueue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002C62C;
  v20[3] = &unk_100252F38;
  v20[4] = self;
  v21 = v15;
  v22 = v14;
  v23 = infoCopy;
  v17 = infoCopy;
  v18 = v14;
  v19 = v15;
  dispatch_async(endpointLatencyQueue, v20);
}

- (void)removeReceiver:(id)receiver
{
  receiverCopy = receiver;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002C870;
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
  v7[2] = sub_10002C9E0;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = receiverCopy;
  v6 = receiverCopy;
  dispatch_async(queue, v7);
}

- (CSAttSiriEndpointerNode)initWithAttSiriController:(id)controller
{
  controllerCopy = controller;
  v5 = [(CSAttSiriEndpointerNode *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_attSiriController, controllerCopy);
  }

  return v6;
}

- (CSAttSiriEndpointerNode)init
{
  v17.receiver = self;
  v17.super_class = CSAttSiriEndpointerNode;
  v2 = [(CSAttSiriEndpointerNode *)&v17 init];
  if (v2)
  {
    v3 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[CSAttSiriEndpointerNode init]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
    }

    v4 = [CSUtils getSerialQueue:@"CSAttSiriEndpointerNode queue" qualityOfService:33];
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, -2);
    v7 = dispatch_queue_create("CSAttSiriEndpointerNode Latency Queue", v6);
    endpointLatencyQueue = v2->_endpointLatencyQueue;
    v2->_endpointLatencyQueue = v7;

    v2->_type = 1;
    v9 = +[NSHashTable weakObjectsHashTable];
    receivers = v2->_receivers;
    v2->_receivers = v9;

    v2->_isReady = 0;
    v11 = +[CSUtils supportHybridEndpointer];
    v12 = &off_10025EC90;
    requiredNodes = v2->_requiredNodes;
    if (v11)
    {
      v12 = &off_10025EC78;
    }

    v2->_requiredNodes = v12;

    v14 = objc_alloc_init(CSHybridEndpointAnalyzer);
    endpointAnalyzer = v2->_endpointAnalyzer;
    v2->_endpointAnalyzer = v14;

    [(CSHybridEndpointAnalyzer *)v2->_endpointAnalyzer setDelegate:v2];
  }

  return v2;
}

@end