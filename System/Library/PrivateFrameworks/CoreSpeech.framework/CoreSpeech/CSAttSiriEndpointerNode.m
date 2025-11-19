@interface CSAttSiriEndpointerNode
- (CSAttSiriController)attSiriController;
- (CSAttSiriEndpointerNode)init;
- (CSAttSiriEndpointerNode)initWithAttSiriController:(id)a3;
- (CSAttSiriEndpointerNodeDelegate)endpointerNodeDelegate;
- (CSEndpointAnalyzerDelegate)delegate;
- (void)_emitStoppedListeningForSpeechContinuationWithTrpId:(id)a3;
- (void)_reportHardEndpointToXPCClientWithTime:(double)a3 endpointerMetrics:(id)a4 eventType:(int64_t)a5;
- (void)_sendEndpointEventDelegateAtTime:(double)a3 eventType:(int64_t)a4 endpointerMetrics:(id)a5;
- (void)addReceiver:(id)a3;
- (void)attSiriAudioSrcNodeDidStop:(id)a3;
- (void)attSiriAudioSrcNodeLPCMRecordBufferAvailable:(id)a3 audioChunk:(id)a4;
- (void)endpointer:(id)a3 detectedTwoShotAtTime:(double)a4;
- (void)endpointer:(id)a3 didDetectHardEndpointAtTime:(double)a4 withMetrics:(id)a5 eventType:(int64_t)a6;
- (void)getEndpointerModelVersionWithReply:(id)a3;
- (void)processSpeechPackage:(id)a3 taskName:(id)a4;
- (void)removeReceiver:(id)a3;
- (void)resetForNewRequestWithSampleRate:(unint64_t)a3 recordContext:(id)a4 recordOption:(id)a5 voiceTriggerInfo:(id)a6;
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

- (void)endpointer:(id)a3 detectedTwoShotAtTime:(double)a4
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002B490;
  v5[3] = &unk_100253C98;
  v5[4] = self;
  *&v5[5] = a4;
  dispatch_async(queue, v5);
}

- (void)_emitStoppedListeningForSpeechContinuationWithTrpId:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002B5D0;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_sendEndpointEventDelegateAtTime:(double)a3 eventType:(int64_t)a4 endpointerMetrics:(id)a5
{
  v8 = a5;
  v9 = [(CSAttSiriEndpointerNode *)self getUsesAutomaticEndpointing];
  WeakRetained = objc_loadWeakRetained(&self->_endpointerNodeDelegate);
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v12 = objc_loadWeakRetained(&self->_endpointerNodeDelegate);
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [(CSAttSiriEndpointerNode *)self endpointerNodeDelegate];
      [v14 attSiriNode:self didDetectEndpointEventAtTime:a4 eventType:v8 withMetrics:v9 usesAutomaticEndpointing:a3];
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = [(CSAttSiriEndpointerNode *)self receivers];
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v22 + 1) + 8 * v19);
        if (v20)
        {
          v21 = *(*(&v22 + 1) + 8 * v19);
          if (objc_opt_respondsToSelector())
          {
            [v20 attSiriNode:self didDetectEndpointEventAtTime:a4 eventType:v8 withMetrics:v9 usesAutomaticEndpointing:a3];
          }
        }

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v17);
  }
}

- (void)_reportHardEndpointToXPCClientWithTime:(double)a3 endpointerMetrics:(id)a4 eventType:(int64_t)a5
{
  v8 = a4;
  v9 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [(CSAttSiriEndpointerNode *)self endpointerListener];
    *buf = 136315394;
    v32 = "[CSAttSiriEndpointerNode _reportHardEndpointToXPCClientWithTime:endpointerMetrics:eventType:]";
    v33 = 2112;
    v34 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s endpointerListener: %@", buf, 0x16u);
  }

  v12 = [v8 metricsCopyWithRequestId:self->_requestId lastAudioChunkHostTime:self->_lastAudioChunkHostTime];
  endpointerListener = self->_endpointerListener;
  if (objc_opt_respondsToSelector())
  {
    v14 = self->_endpointerListener;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10002BC3C;
    v26[3] = &unk_10024E9E8;
    v28 = a3;
    v27 = v12;
    v29 = a5;
    [(CSConnectionListener *)v14 notifyClientsWithBlock:v26];
  }

  v15 = [(CSAttSiriEndpointerNode *)self getUsesAutomaticEndpointing];
  v16 = [(CSAttSiriEndpointerNode *)self endpointerNodeDelegate];
  [v16 attSiriNode:self didDetectHardEndpointAtTime:v8 withMetrics:v15 usesAutomaticEndpointing:a3];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v17 = [(CSAttSiriEndpointerNode *)self receivers];
  v18 = [v17 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
          objc_enumerationMutation(v17);
        }

        [*(*(&v22 + 1) + 8 * v21) attSiriNode:self didDetectHardEndpointAtTime:v8 withMetrics:v15 usesAutomaticEndpointing:a3];
        v21 = v21 + 1;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v19);
  }
}

- (void)endpointer:(id)a3 didDetectHardEndpointAtTime:(double)a4 withMetrics:(id)a5 eventType:(int64_t)a6
{
  v9 = a5;
  queue = self->_queue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002BD08;
  v12[3] = &unk_100250B98;
  v13 = v9;
  v14 = self;
  v15 = a6;
  v16 = a4;
  v11 = v9;
  dispatch_async(queue, v12);
}

- (void)attSiriAudioSrcNodeDidStop:(id)a3
{
  endpointLatencyQueue = self->_endpointLatencyQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002BE54;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(endpointLatencyQueue, block);
}

- (void)attSiriAudioSrcNodeLPCMRecordBufferAvailable:(id)a3 audioChunk:(id)a4
{
  v5 = a4;
  endpointLatencyQueue = self->_endpointLatencyQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002BF9C;
  block[3] = &unk_100253C48;
  v7 = v5;
  v13 = v7;
  v14 = self;
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

- (void)processSpeechPackage:(id)a3 taskName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [CSASRFeatures alloc];
  v9 = [v7 numOneBestTokensExcludingTriggerPhrase];
  v10 = [v7 endOfSentenceLikelihood];
  [v10 doubleValue];
  v12 = v11;
  [CSAttSiriSpeechPackageHelper getLastTokenEndTimeFromSpeechPackage:v7];
  v14 = v13;

  v15 = [(CSASRFeatures *)v8 initWithWordCount:v9 trailingSilenceDuration:50 eosLikelihood:0 pauseCounts:v6 silencePosterior:(v14 * 1000.0) taskName:v12 processedAudioDurationInMilliseconds:0.0 acousticEndpointerScore:0.0];
  [(CSHybridEndpointAnalyzer *)self->_endpointAnalyzer processRCFeatures:v15];
}

- (void)getEndpointerModelVersionWithReply:(id)a3
{
  endpointAnalyzer = self->_endpointAnalyzer;
  v5 = a3;
  v6 = [(CSHybridEndpointAnalyzer *)endpointAnalyzer endpointerModelVersion];
  (*(a3 + 2))(v5, 0, v6);
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

- (void)resetForNewRequestWithSampleRate:(unint64_t)a3 recordContext:(id)a4 recordOption:(id)a5 voiceTriggerInfo:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  [(CSHybridEndpointAnalyzer *)self->_endpointAnalyzer resetForNewRequestWithSampleRate:a3 recordContext:v10 recordOption:v11 voiceTriggerInfo:v12];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C5C4;
  block[3] = &unk_100253680;
  block[4] = self;
  v14 = v10;
  v25 = v14;
  v15 = v11;
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
  v23 = v12;
  v17 = v12;
  v18 = v14;
  v19 = v15;
  dispatch_async(endpointLatencyQueue, v20);
}

- (void)removeReceiver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002C870;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)addReceiver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002C9E0;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (CSAttSiriEndpointerNode)initWithAttSiriController:(id)a3
{
  v4 = a3;
  v5 = [(CSAttSiriEndpointerNode *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_attSiriController, v4);
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