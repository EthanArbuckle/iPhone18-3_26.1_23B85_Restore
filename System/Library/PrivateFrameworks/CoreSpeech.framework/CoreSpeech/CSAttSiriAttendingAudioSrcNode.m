@interface CSAttSiriAttendingAudioSrcNode
- (CSAttSiriAttendingAudioSrcNode)initWithAttSiriController:(id)a3;
- (CSAttSiriAttendingAudioSrcNode)initWithAudioStreamProvider:(id)a3 audioProviderSelector:(id)a4 streamName:(id)a5 streamRequest:(id)a6;
- (CSAttSiriController)attSiriController;
- (void)_handleDidStop;
- (void)_handleDidStopStreamUnexpectedly;
- (void)addReceiver:(id)a3;
- (void)audioStreamProvider:(id)a3 audioBufferAvailable:(id)a4;
- (void)audioStreamProvider:(id)a3 audioChunkForTVAvailable:(id)a4;
- (void)audioStreamProvider:(id)a3 didStopStreamUnexpectedly:(int64_t)a4;
- (void)cancelAudioStreamHold;
- (void)dealloc;
- (void)holdAudioStreamWithTimeout:(double)a3;
- (void)removeReceiver:(id)a3;
- (void)startAudioStreamWithOption:(id)a3 completion:(id)a4;
- (void)stopAudioStreamWithOption:(id)a3 completion:(id)a4;
@end

@implementation CSAttSiriAttendingAudioSrcNode

- (CSAttSiriController)attSiriController
{
  WeakRetained = objc_loadWeakRetained(&self->_attSiriController);

  return WeakRetained;
}

- (void)_handleDidStopStreamUnexpectedly
{
  v3 = [(CSAttSiriAttendingAudioSrcNode *)self delegate];
  [v3 attSiriAttendingAudioSrcNodeDidStopUnexpectedly:self];

  [(CSAttSiriAttendingAudioSrcNode *)self _handleDidStop];
}

- (void)_handleDidStop
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[CSAttSiriAttendingAudioSrcNode _handleDidStop]";
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

- (void)audioStreamProvider:(id)a3 audioChunkForTVAvailable:(id)a4
{
  v4 = a4;
  v5 = +[CSAudioPowerProvider sharedInstance];
  [v5 processAudioChunkForTV:v4];
}

- (void)audioStreamProvider:(id)a3 audioBufferAvailable:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100024274;
  v8[3] = &unk_100253C48;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)audioStreamProvider:(id)a3 didStopStreamUnexpectedly:(int64_t)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024410;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)dealloc
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v6 = "[CSAttSiriAttendingAudioSrcNode dealloc]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s CSAttSiriAttendingAudioSrcNode deallocated", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CSAttSiriAttendingAudioSrcNode;
  [(CSAttSiriAttendingAudioSrcNode *)&v4 dealloc];
}

- (void)removeReceiver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100024638;
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
  v7[2] = sub_1000246EC;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)cancelAudioStreamHold
{
  v3 = [(CSAttSiriAttendingAudioSrcNode *)self streamProvider];
  [v3 cancelAudioStreamHold:self->_audioStreamHolding];

  audioStreamHolding = self->_audioStreamHolding;
  self->_audioStreamHolding = 0;
}

- (void)holdAudioStreamWithTimeout:(double)a3
{
  v6 = [CSAudioStreamHoldRequestOption defaultOptionWithTimeout:a3];
  v4 = [(CSAttSiriAttendingAudioSrcNode *)self streamProvider];
  v5 = [v4 holdAudioStreamWithDescription:@"CSAttSiriAttendingAudioSrcNode" option:v6];
}

- (void)stopAudioStreamWithOption:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000249B0;
  v7[3] = &unk_100253270;
  v8 = self;
  v9 = a4;
  v6.receiver = v8;
  v6.super_class = CSAttSiriAttendingAudioSrcNode;
  v5 = v9;
  [(CSAttSiriAttendingAudioSrcNode *)&v6 stopAudioStreamWithOption:a3 completion:v7];
}

- (void)startAudioStreamWithOption:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100024B90;
  v7[3] = &unk_100253270;
  v8 = self;
  v9 = a4;
  v6.receiver = v8;
  v6.super_class = CSAttSiriAttendingAudioSrcNode;
  v5 = v9;
  [(CSAttSiriAttendingAudioSrcNode *)&v6 startAudioStreamWithOption:a3 completion:v7];
}

- (CSAttSiriAttendingAudioSrcNode)initWithAudioStreamProvider:(id)a3 audioProviderSelector:(id)a4 streamName:(id)a5 streamRequest:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v28.receiver = self;
  v28.super_class = CSAttSiriAttendingAudioSrcNode;
  v12 = [(CSAttSiriAttendingAudioSrcNode *)&v28 init];
  if (v12)
  {
    v13 = v12;
    v14 = dispatch_queue_create("CSAttSiriAttendingAudioSrcNode Attending queue", 0);
    queue = v13->_queue;
    v13->_queue = v14;

    v13->_type = 5;
    v16 = +[NSHashTable weakObjectsHashTable];
    receivers = v13->_receivers;
    v13->_receivers = v16;

    v13->_isReady = 0;
    requiredNodes = v13->_requiredNodes;
    v13->_requiredNodes = 0;

    objc_storeStrong(&v13->_audioProviderSelector, a4);
    v19 = v9;
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v22 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v30 = "[CSAttSiriAttendingAudioSrcNode initWithAudioStreamProvider:audioProviderSelector:streamName:streamRequest:]";
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s audioStreamProvider is nil, fetch audioProvider from context", buf, 0xCu);
      }

      audioProviderSelector = v13->_audioProviderSelector;
      v24 = [v11 recordContext];
      v20 = [(CSAudioProviderSelecting *)audioProviderSelector audioProviderWithContext:v24 error:0];

      if (!v20)
      {
        v26 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v30 = "[CSAttSiriAttendingAudioSrcNode initWithAudioStreamProvider:audioProviderSelector:streamName:streamRequest:]";
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s attSiriAudioStreamProvider is nil!", buf, 0xCu);
        }

        v21 = 0;
        goto LABEL_9;
      }
    }

    v27.receiver = v13;
    v27.super_class = CSAttSiriAttendingAudioSrcNode;
    v13 = [(CSAttSiriAttendingAudioSrcNode *)&v27 initWithAudioStreamProvider:v20 streamName:@"CSAttSiriAttendingAudioSrcNode" streamRequest:v11];

    v21 = v13;
LABEL_9:

    goto LABEL_10;
  }

  v21 = 0;
LABEL_10:

  return v21;
}

- (CSAttSiriAttendingAudioSrcNode)initWithAttSiriController:(id)a3
{
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
  {
    v6 = 136315138;
    v7 = "[CSAttSiriAttendingAudioSrcNode initWithAttSiriController:]";
    _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "%s Not implemented", &v6, 0xCu);
  }

  return 0;
}

@end