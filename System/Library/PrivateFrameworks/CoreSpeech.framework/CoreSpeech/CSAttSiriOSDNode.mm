@interface CSAttSiriOSDNode
- (CSAttSiriController)attSiriController;
- (CSAttSiriOSDNode)init;
- (CSAttSiriOSDNode)initWithAttSiriController:(id)controller;
- (id)_getSerialQueue:(id)queue targetQueue:(id)targetQueue;
- (unint64_t)audioStartSampleCount;
- (unint64_t)fetchLastKnownConsecutiveBoronStartSampleCount;
- (void)addReceiver:(id)receiver;
- (void)attSiriAudioSrcNodeDidStop:(id)stop;
- (void)attSiriAudioSrcNodeLPCMRecordBufferAvailable:(id)available audioChunk:(id)chunk;
- (void)attSiriNode:(id)node faceTrackingDataUpdate:(id)update atMachAbsTime:(unint64_t)time;
- (void)checkConsecutiveBoronSignalWithAudioChunk:(id)chunk;
- (void)endpointerAssetManagerDidUpdateOSDAsset:(id)asset;
- (void)osdAnalyzer:(id)analyzer didDetectEndOfSpeechAt:(double)at;
- (void)osdAnalyzer:(id)analyzer didDetectStartOfSpeechAt:(double)at;
- (void)osdAnalyzer:(id)analyzer didUpdateOSDFeatures:(id)features;
- (void)removeReceiver:(id)receiver;
- (void)resetForNewRequestWithRecordContext:(id)context endpointerSettings:(id)settings voiceTriggerInfo:(id)info osdMode:(unint64_t)mode;
- (void)setMhId:(id)id;
- (void)setPrefetchedAsset:(id)asset;
- (void)stop;
@end

@implementation CSAttSiriOSDNode

- (CSAttSiriController)attSiriController
{
  WeakRetained = objc_loadWeakRetained(&self->_attSiriController);

  return WeakRetained;
}

- (void)setMhId:(id)id
{
  idCopy = id;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000BDFF8;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  dispatch_async(queue, v7);
}

- (void)attSiriNode:(id)node faceTrackingDataUpdate:(id)update atMachAbsTime:(unint64_t)time
{
  updateCopy = update;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BE0B4;
  block[3] = &unk_1002533C8;
  block[4] = self;
  v11 = updateCopy;
  timeCopy = time;
  v9 = updateCopy;
  dispatch_async(queue, block);
}

- (void)osdAnalyzer:(id)analyzer didDetectEndOfSpeechAt:(double)at
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000BE188;
  v5[3] = &unk_100253C98;
  v5[4] = self;
  *&v5[5] = at;
  dispatch_async(queue, v5);
}

- (void)osdAnalyzer:(id)analyzer didDetectStartOfSpeechAt:(double)at
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000BE328;
  v5[3] = &unk_100253C98;
  v5[4] = self;
  *&v5[5] = at;
  dispatch_async(queue, v5);
}

- (void)osdAnalyzer:(id)analyzer didUpdateOSDFeatures:(id)features
{
  analyzerCopy = analyzer;
  featuresCopy = features;
  v8 = +[CSFPreferences sharedPreferences];
  isEndpointEnhancedLoggingEnabled = [v8 isEndpointEnhancedLoggingEnabled];

  if (isEndpointEnhancedLoggingEnabled)
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v16 = "[CSAttSiriOSDNode osdAnalyzer:didUpdateOSDFeatures:]";
      v17 = 2112;
      v18 = analyzerCopy;
      v19 = 2112;
      v20 = featuresCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s %@ %@", buf, 0x20u);
    }
  }

  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000BE5C8;
  v13[3] = &unk_100253C48;
  v13[4] = self;
  v14 = featuresCopy;
  v12 = featuresCopy;
  dispatch_async(queue, v13);
}

- (void)endpointerAssetManagerDidUpdateOSDAsset:(id)asset
{
  assetCopy = asset;
  apQueue = self->_apQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000BE790;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = assetCopy;
  v6 = assetCopy;
  dispatch_async(apQueue, v7);
}

- (unint64_t)fetchLastKnownConsecutiveBoronStartSampleCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  apQueue = self->_apQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000BE844;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(apQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)audioStartSampleCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000BE904;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)resetForNewRequestWithRecordContext:(id)context endpointerSettings:(id)settings voiceTriggerInfo:(id)info osdMode:(unint64_t)mode
{
  contextCopy = context;
  settingsCopy = settings;
  infoCopy = info;
  apQueue = self->_apQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BEA68;
  block[3] = &unk_1002533C8;
  selfCopy = self;
  modeCopy = mode;
  v23 = settingsCopy;
  v14 = settingsCopy;
  dispatch_async(apQueue, block);
  queue = self->_queue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000BEEE0;
  v18[3] = &unk_100253680;
  v19 = contextCopy;
  v20 = infoCopy;
  selfCopy2 = self;
  v16 = infoCopy;
  v17 = contextCopy;
  dispatch_async_and_wait(queue, v18);
}

- (void)attSiriAudioSrcNodeDidStop:(id)stop
{
  apQueue = self->_apQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BF090;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(apQueue, block);
}

- (void)checkConsecutiveBoronSignalWithAudioChunk:(id)chunk
{
  chunkCopy = chunk;
  remoteVAD = [chunkCopy remoteVAD];
  bytes = [remoteVAD bytes];

  remoteVAD2 = [chunkCopy remoteVAD];
  v8 = [remoteVAD2 length];

  if (v8 >= 1)
  {
    v10 = 0;
    *&v9 = 136315394;
    v18 = v9;
    do
    {
      if (bytes[v10])
      {
        v11 = [(CSAttSiriOSDNode *)self countOfConsecutiveBoron]+ 1;
      }

      else
      {
        v11 = 0;
      }

      [(CSAttSiriOSDNode *)self setCountOfConsecutiveBoron:v11, v18];
      countOfConsecutiveBoron = [(CSAttSiriOSDNode *)self countOfConsecutiveBoron];
      if (countOfConsecutiveBoron >= [(CSAttSiriOSDNode *)self numOfConsecutiveBoronActivationThreshold])
      {
        -[CSAttSiriOSDNode setLastKnownConsecutiveBoronStartSampleCount:](self, "setLastKnownConsecutiveBoronStartSampleCount:", [chunkCopy startSampleCount]);
        v13 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
        {
          v14 = v13;
          lastKnownConsecutiveBoronStartSampleCount = [(CSAttSiriOSDNode *)self lastKnownConsecutiveBoronStartSampleCount];
          *buf = v18;
          v20 = "[CSAttSiriOSDNode checkConsecutiveBoronSignalWithAudioChunk:]";
          v21 = 2048;
          v22 = lastKnownConsecutiveBoronStartSampleCount;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s update lastKnownConsecutiveBoronStartSampleCount to: %llu", buf, 0x16u);
        }
      }

      ++v10;
      remoteVAD3 = [chunkCopy remoteVAD];
      v17 = [remoteVAD3 length];
    }

    while (v10 < v17);
  }
}

- (void)attSiriAudioSrcNodeLPCMRecordBufferAvailable:(id)available audioChunk:(id)chunk
{
  availableCopy = available;
  chunkCopy = chunk;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BF4E0;
  block[3] = &unk_100252228;
  v19 = v20;
  block[4] = self;
  v9 = chunkCopy;
  v18 = v9;
  dispatch_async_and_wait(queue, block);
  apQueue = self->_apQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000BF680;
  v13[3] = &unk_1002509A8;
  v13[4] = self;
  v14 = v9;
  v15 = availableCopy;
  v16 = v20;
  v11 = availableCopy;
  v12 = v9;
  dispatch_async(apQueue, v13);

  _Block_object_dispose(v20, 8);
}

- (void)setPrefetchedAsset:(id)asset
{
  assetCopy = asset;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000BFD78;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = assetCopy;
  v6 = assetCopy;
  dispatch_async(queue, v7);
}

- (void)stop
{
  apQueue = self->_apQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BFEB4;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(apQueue, block);
}

- (void)removeReceiver:(id)receiver
{
  receiverCopy = receiver;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C000C;
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
  v7[2] = sub_1000C017C;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = receiverCopy;
  v6 = receiverCopy;
  dispatch_async(queue, v7);
}

- (id)_getSerialQueue:(id)queue targetQueue:(id)targetQueue
{
  targetQueueCopy = targetQueue;
  if (targetQueueCopy)
  {
    v6 = dispatch_queue_create_with_target_V2([queue UTF8String], 0, targetQueueCopy);
  }

  else
  {
    v6 = [CSUtils getSerialQueueWithQOS:33 name:queue fixedPriority:kCSDefaultSerialQueueFixedPriority];
  }

  v7 = v6;

  return v7;
}

- (CSAttSiriOSDNode)initWithAttSiriController:(id)controller
{
  controllerCopy = controller;
  v5 = [(CSAttSiriOSDNode *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_attSiriController, controllerCopy);
  }

  return v6;
}

- (CSAttSiriOSDNode)init
{
  if (+[CSUtils supportHybridEndpointer])
  {
    v35.receiver = self;
    v35.super_class = CSAttSiriOSDNode;
    v3 = [(CSAttSiriOSDNode *)&v35 init];
    v4 = v3;
    if (v3)
    {
      v3->_type = 0;
      v5 = +[CSUtils isContinuousConversationSupported];
      v6 = &off_10025ED38;
      requiredNodes = v4->_requiredNodes;
      if (v5)
      {
        v6 = &off_10025ED20;
      }

      v4->_requiredNodes = v6;

      v8 = +[NSHashTable weakObjectsHashTable];
      receivers = v4->_receivers;
      v4->_receivers = v8;

      v4->_isReady = 0;
      v10 = 0;
      if ((+[CSUtils supportsDispatchWorkloop]& 1) == 0)
      {
        v10 = [CSUtils rootQueueWithFixedPriority:kCSDefaultSerialQueueFixedPriority];
      }

      v11 = [objc_opt_class() description];
      lowercaseString = [v11 lowercaseString];
      v13 = [NSString stringWithFormat:@"com.apple.cs.%@.queue", lowercaseString];

      v14 = [(CSAttSiriOSDNode *)v4 _getSerialQueue:v13 targetQueue:v10];
      queue = v4->_queue;
      v4->_queue = v14;

      v16 = [objc_opt_class() description];
      lowercaseString2 = [v16 lowercaseString];
      v18 = [NSString stringWithFormat:@"com.apple.cs.%@.osdQueue", lowercaseString2];

      v19 = [(CSAttSiriOSDNode *)v4 _getSerialQueue:v18 targetQueue:v10];
      osdQueue = v4->_osdQueue;
      v4->_osdQueue = v19;

      v21 = [objc_opt_class() description];
      lowercaseString3 = [v21 lowercaseString];
      v23 = [NSString stringWithFormat:@"com.apple.cs.%@.apQueue", lowercaseString3];

      v24 = [(CSAttSiriOSDNode *)v4 _getSerialQueue:v23 targetQueue:v10];
      apQueue = v4->_apQueue;
      v4->_apQueue = v24;

      +[CSConfig inputRecordingSampleRate];
      v4->_currentRequestSampleRate = v26;
      v4->_vtEndInSampleCount = 0;
      v4->_numOfConsecutiveBoronActivationThreshold = 5;
      v27 = v4->_apQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000C06D0;
      block[3] = &unk_100253C20;
      v28 = v4;
      v34 = v28;
      dispatch_async(v27, block);
      v29 = +[NSMutableArray array];
      lipMovementSignalDataArray = v28->_lipMovementSignalDataArray;
      v28->_lipMovementSignalDataArray = v29;
    }

    self = v4;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end