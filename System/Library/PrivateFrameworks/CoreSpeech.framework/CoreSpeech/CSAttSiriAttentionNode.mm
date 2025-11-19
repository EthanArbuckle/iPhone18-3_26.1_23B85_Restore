@interface CSAttSiriAttentionNode
- (CSAttSiriAttentionNode)initWithAttSiriController:(id)a3;
- (CSAttSiriController)attSiriController;
- (void)addReceiver:(id)a3;
- (void)handleFaceAttentionEvent:(id)a3;
- (void)removeReceiver:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation CSAttSiriAttentionNode

- (CSAttSiriController)attSiriController
{
  WeakRetained = objc_loadWeakRetained(&self->_attSiriController);

  return WeakRetained;
}

- (void)handleFaceAttentionEvent:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100135E18;
  v7[3] = &unk_100253C48;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)stop
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013609C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)start
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013624C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)removeReceiver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100136904;
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
  v7[2] = sub_1001369F0;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (CSAttSiriAttentionNode)initWithAttSiriController:(id)a3
{
  v4 = a3;
  if (+[CSAttSiriAttentionNode supportAttentionLostAndGain])
  {
    v14.receiver = self;
    v14.super_class = CSAttSiriAttentionNode;
    v5 = [(CSAttSiriAttentionNode *)&v14 init];
    if (v5)
    {
      v6 = dispatch_queue_create("CSAttSiriAttentionNode queue", 0);
      queue = v5->_queue;
      v5->_queue = v6;

      v5->_type = 6;
      v8 = +[NSHashTable weakObjectsHashTable];
      receivers = v5->_receivers;
      v5->_receivers = v8;

      v5->_isReady = 0;
      requiredNodes = v5->_requiredNodes;
      v5->_requiredNodes = 0;

      objc_storeWeak(&v5->_attSiriController, v4);
    }

    self = v5;
    v11 = self;
  }

  else
  {
    v12 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[CSAttSiriAttentionNode initWithAttSiriController:]";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Attention is NOT supported on this platform", buf, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

@end