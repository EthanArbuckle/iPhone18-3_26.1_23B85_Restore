@interface PDXPCEventStreamsManager
+ (id)eventStreamManager;
- (id)_init;
- (id)_managerForEventStream:(id)a3;
- (void)beginEventDelivery;
- (void)pauseEventDelivery;
- (void)registerForLaunchEvents;
- (void)registerObserver:(id)a3 forEventStream:(id)a4 withReplyQueue:(id)a5;
- (void)unregisterObserver:(id)a3 forEventStream:(id)a4;
@end

@implementation PDXPCEventStreamsManager

+ (id)eventStreamManager
{
  if (qword_1009241D0 != -1)
  {
    sub_1005B7CE4();
  }

  v3 = qword_1009241C8;

  return v3;
}

- (id)_init
{
  v9.receiver = self;
  v9.super_class = PDXPCEventStreamsManager;
  v2 = [(PDXPCEventStreamsManager *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_pauseCounter = 1;
    v4 = objc_alloc_init(NSMutableDictionary);
    streamToStreamManagerMap = v3->_streamToStreamManagerMap;
    v3->_streamToStreamManagerMap = v4;

    v6 = dispatch_queue_create("com.apple.passd.xpcEventStreamsManager.state", 0);
    stateQueue = v3->_stateQueue;
    v3->_stateQueue = v6;
  }

  return v3;
}

- (void)registerForLaunchEvents
{
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100050070;
  block[3] = &unk_10083C470;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

- (void)pauseEventDelivery
{
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005014C;
  block[3] = &unk_10083C470;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

- (void)beginEventDelivery
{
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100050284;
  block[3] = &unk_10083C470;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

- (void)registerObserver:(id)a3 forEventStream:(id)a4 withReplyQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 length])
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_1000059A0;
    v19 = sub_10000B0DC;
    v20 = 0;
    stateQueue = self->_stateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100050580;
    block[3] = &unk_10083F120;
    v14 = &v15;
    block[4] = self;
    v13 = v9;
    dispatch_sync(stateQueue, block);
    [v16[5] registerObserver:v8 withReplyQueue:v10];

    _Block_object_dispose(&v15, 8);
  }
}

- (void)unregisterObserver:(id)a3 forEventStream:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 length])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_1000059A0;
    v16 = sub_10000B0DC;
    v17 = 0;
    stateQueue = self->_stateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100050704;
    block[3] = &unk_10083F120;
    v11 = &v12;
    block[4] = self;
    v10 = v7;
    dispatch_sync(stateQueue, block);
    [v13[5] unregisterObserver:v6];

    _Block_object_dispose(&v12, 8);
  }
}

- (id)_managerForEventStream:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_streamToStreamManagerMap objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [[PDXPCEventStreamManager alloc] initWithEventStream:v4 startedPaused:self->_pauseCounter != 0];
    [(NSMutableDictionary *)self->_streamToStreamManagerMap setObject:v5 forKeyedSubscript:v4];
  }

  return v5;
}

@end