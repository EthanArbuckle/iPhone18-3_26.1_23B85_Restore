@interface CSAccessorySiriClientBehaviorMonitor
+ (id)sharedInstance;
- (CSAccessorySiriClientBehaviorMonitor)init;
- (void)_init;
- (void)notifyDidStartStreamWithContext:(id)a3 successfully:(BOOL)a4 option:(id)a5 withEventUUID:(id)a6 forAccessory:(id)a7;
- (void)notifyDidStopStream:(id)a3 reason:(unint64_t)a4 withEventUUID:(id)a5 forAccessory:(id)a6;
- (void)notifyWillStartStreamWithContext:(id)a3 option:(id)a4 forAccessory:(id)a5;
- (void)notifyWillStopStream:(id)a3 reason:(unint64_t)a4 forAccessory:(id)a5;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CSAccessorySiriClientBehaviorMonitor

- (void)notifyDidStopStream:(id)a3 reason:(unint64_t)a4 withEventUUID:(id)a5 forAccessory:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D9D08;
  block[3] = &unk_100253558;
  v18 = v12;
  v19 = self;
  v21 = v11;
  v22 = a4;
  v20 = v10;
  v14 = v11;
  v15 = v10;
  v16 = v12;
  dispatch_async(queue, block);
}

- (void)notifyWillStopStream:(id)a3 reason:(unint64_t)a4 forAccessory:(id)a5
{
  v8 = a3;
  v9 = a5;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000D9F48;
  v13[3] = &unk_1002510C8;
  v14 = v9;
  v15 = self;
  v16 = v8;
  v17 = a4;
  v11 = v8;
  v12 = v9;
  dispatch_async(queue, v13);
}

- (void)notifyDidStartStreamWithContext:(id)a3 successfully:(BOOL)a4 option:(id)a5 withEventUUID:(id)a6 forAccessory:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  queue = self->_queue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000DA1D4;
  v21[3] = &unk_1002510A0;
  v22 = v15;
  v23 = self;
  v27 = a4;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v17 = v14;
  v18 = v13;
  v19 = v12;
  v20 = v15;
  dispatch_async(queue, v21);
}

- (void)notifyWillStartStreamWithContext:(id)a3 option:(id)a4 forAccessory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000DA434;
  v15[3] = &unk_100252F38;
  v16 = v10;
  v17 = self;
  v18 = v8;
  v19 = v9;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(queue, v15);
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000DA644;
    v7[3] = &unk_100253C48;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000DA740;
    v7[3] = &unk_100253C48;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (CSAccessorySiriClientBehaviorMonitor)init
{
  v5.receiver = self;
  v5.super_class = CSAccessorySiriClientBehaviorMonitor;
  v2 = [(CSAccessorySiriClientBehaviorMonitor *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSAccessorySiriClientBehaviorMonitor *)v2 _init];
  }

  return v3;
}

- (void)_init
{
  v3 = +[NSHashTable weakObjectsHashTable];
  observers = self->_observers;
  self->_observers = v3;

  v7 = dispatch_get_global_queue(33, 0);
  v5 = [CSUtils getSerialQueue:@"com.apple.corespeech.CSAccessorySiriClientBehaviourMonitor" withQualityOfService:33 andTargetQueue:v7];
  queue = self->_queue;
  self->_queue = v5;
}

+ (id)sharedInstance
{
  if (qword_10029E310 != -1)
  {
    dispatch_once(&qword_10029E310, &stru_100251078);
  }

  v3 = qword_10029E308;

  return v3;
}

@end