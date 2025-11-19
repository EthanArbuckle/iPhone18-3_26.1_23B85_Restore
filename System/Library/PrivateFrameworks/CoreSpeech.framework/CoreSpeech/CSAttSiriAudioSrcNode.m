@interface CSAttSiriAudioSrcNode
- (BOOL)isBuiltInRoute;
- (BOOL)isJarvisRoute;
- (CSAttSiriAudioSrcNode)initWithAttSiriController:(id)a3;
- (CSAttSiriAudioSrcNode)initWithTargetQueue:(id)a3;
- (CSAttSiriAudioSrcNodeDelegate)delegate;
- (CSAttSiriController)attSiriController;
- (void)_handleDidStop;
- (void)addReceiver:(id)a3;
- (void)attachToMasterStream:(id)a3 name:(id)a4 completion:(id)a5;
- (void)audioDecoderDidDecodePackets:(id)a3 audioStreamHandleId:(unint64_t)a4 buffer:(id)a5 remoteVAD:(id)a6 timestamp:(unint64_t)a7 arrivalTimestampToAudioRecorder:(unint64_t)a8 wasBuffered:(BOOL)a9 receivedNumChannels:(unsigned int)a10;
- (void)audioStreamProvider:(id)a3 audioBufferAvailable:(id)a4;
- (void)audioStreamProvider:(id)a3 audioChunkForTVAvailable:(id)a4;
- (void)audioStreamProvider:(id)a3 didStopStreamUnexpectedly:(int64_t)a4;
- (void)dealloc;
- (void)fetchRoutesWithCompletion:(id)a3;
- (void)removeReceiver:(id)a3;
@end

@implementation CSAttSiriAudioSrcNode

- (CSAttSiriAudioSrcNodeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CSAttSiriController)attSiriController
{
  WeakRetained = objc_loadWeakRetained(&self->_attSiriController);

  return WeakRetained;
}

- (void)_handleDidStop
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[CSAttSiriAudioSrcNode _handleDidStop]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = self->_receivers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) attSiriAudioSrcNodeDidStop:{self, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)audioDecoderDidDecodePackets:(id)a3 audioStreamHandleId:(unint64_t)a4 buffer:(id)a5 remoteVAD:(id)a6 timestamp:(unint64_t)a7 arrivalTimestampToAudioRecorder:(unint64_t)a8 wasBuffered:(BOOL)a9 receivedNumChannels:(unsigned int)a10
{
  v12 = a5;
  v13 = +[CSAudioTimeConverterPool sharedInstance];
  v14 = [v13 defaultConverter];
  [v14 processSampleCount:self->_decoderProcessedSampleCountForTV hostTime:a7];

  v15 = ([v12 length] >> 1) / a10;
  v16 = [CSAudioChunk alloc];
  v17 = +[CSConfig inputRecordingSampleByteDepth];
  decoderProcessedSampleCountForTV = self->_decoderProcessedSampleCountForTV;
  LOBYTE(v26) = +[CSConfig inputRecordingIsFloat];
  LOBYTE(v25) = a9;
  v19 = [v16 initWithData:v12 numChannels:a10 numSamples:v15 sampleByteDepth:v17 startSampleCount:decoderProcessedSampleCountForTV hostTime:a7 arrivalHostTimeToAudioRecorder:a8 wasBuffered:v25 remoteVAD:0 isFloat:v26];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = self->_receivers;
  v21 = [(NSHashTable *)v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v29;
    do
    {
      v24 = 0;
      do
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v28 + 1) + 8 * v24) attSiriAudioSrcNodeLPCMRecordBufferAvailable:self audioChunk:v19];
        v24 = v24 + 1;
      }

      while (v22 != v24);
      v22 = [(NSHashTable *)v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v22);
  }

  self->_decoderProcessedSampleCountForTV += v15;
}

- (void)audioStreamProvider:(id)a3 audioChunkForTVAvailable:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C99C8;
  v8[3] = &unk_100253C48;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)audioStreamProvider:(id)a3 audioBufferAvailable:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C9B4C;
  v8[3] = &unk_100253C48;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)audioStreamProvider:(id)a3 didStopStreamUnexpectedly:(int64_t)a4
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C9CD8;
  v5[3] = &unk_100253C98;
  v5[4] = self;
  v5[5] = a4;
  dispatch_async(queue, v5);
}

- (void)dealloc
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v6 = "[CSAttSiriAudioSrcNode dealloc]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s CSAttSiriAudioSrcNode deallocated", buf, 0xCu);
  }

  if (CSIsTV())
  {
    [(NSMutableDictionary *)self->_decodersForTV removeAllObjects];
  }

  v4.receiver = self;
  v4.super_class = CSAttSiriAudioSrcNode;
  [(CSAttSiriAudioSrcNode *)&v4 dealloc];
}

- (void)removeReceiver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C9F44;
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
  v7[2] = sub_1000C9FE8;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)fetchRoutesWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CA1A4;
  v7[3] = &unk_100253718;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (BOOL)isJarvisRoute
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000CA364;
  v10 = sub_1000CA374;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000CA37C;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = [CSUtils isJarvisAudioRouteWithRecordRoute:v7[5]];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)isBuiltInRoute
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000CA364;
  v16 = sub_1000CA374;
  v17 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000CA364;
  v10 = sub_1000CA374;
  v11 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CA558;
  block[3] = &unk_100251428;
  block[4] = self;
  block[5] = &v12;
  block[6] = &v6;
  dispatch_sync(queue, block);
  v3 = [CSUtils isBuiltInRouteWithRecordRoute:v13[5] playbackRoute:v7[5]];
  _Block_object_dispose(&v6, 8);

  _Block_object_dispose(&v12, 8);
  return v3;
}

- (void)attachToMasterStream:(id)a3 name:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000CA8EC;
  v22[3] = &unk_100253220;
  v10 = a5;
  v23 = v10;
  v11 = objc_retainBlock(v22);
  if (v8)
  {
    v12 = [[CSAudioTandemStream alloc] initWithMasterAudioStream:v8 name:v9];
    if (v12)
    {
      v13 = v12;
      v14 = [(CSAttSiriAudioSrcNode *)self queue];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1000CA904;
      v19[3] = &unk_1002533A0;
      v19[4] = self;
      v15 = v13;
      v20 = v15;
      v21 = v11;
      dispatch_async(v14, v19);
    }

    else
    {
      v17 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v25 = "[CSAttSiriAudioSrcNode attachToMasterStream:name:completion:]";
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Fail to create tandemStream", buf, 0xCu);
      }

      v18 = [NSError errorWithDomain:CSErrorDomain code:960 userInfo:0];
      (v11[2])(v11, 0, v18);

      v15 = 0;
    }
  }

  else
  {
    v16 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v25 = "[CSAttSiriAudioSrcNode attachToMasterStream:name:completion:]";
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Unable to create tendemStream due to missing master stream", buf, 0xCu);
    }

    v15 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
    (v11[2])(v11, 0, v15);
  }
}

- (CSAttSiriAudioSrcNode)initWithAttSiriController:(id)a3
{
  v4 = a3;
  v5 = [(CSAttSiriAudioSrcNode *)self initWithTargetQueue:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_attSiriController, v4);
  }

  return v6;
}

- (CSAttSiriAudioSrcNode)initWithTargetQueue:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CSAttSiriAudioSrcNode;
  v5 = [(CSAttSiriAudioSrcNode *)&v14 init];
  if (v5)
  {
    if (v4)
    {
      v6 = dispatch_queue_create_with_target_V2("CSAttSiriAudioSrcNode Queue", 0, v4);
    }

    else
    {
      v6 = dispatch_queue_create("CSAttSiriAudioSrcNode queue", 0);
    }

    queue = v5->_queue;
    v5->_queue = v6;

    v5->_type = 4;
    v8 = +[NSHashTable weakObjectsHashTable];
    receivers = v5->_receivers;
    v5->_receivers = v8;

    v5->_isReady = 0;
    requiredNodes = v5->_requiredNodes;
    v5->_requiredNodes = 0;

    if (CSIsTV())
    {
      v5->_decoderProcessedSampleCountForTV = 0;
      v11 = +[NSMutableDictionary dictionary];
      decodersForTV = v5->_decodersForTV;
      v5->_decodersForTV = v11;
    }
  }

  return v5;
}

@end