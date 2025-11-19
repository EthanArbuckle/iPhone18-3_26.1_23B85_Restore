@interface CSOpportuneSpeakBehaviorMonitor
+ (id)sharedInstance;
- (CSOpportuneSpeakBehaviorMonitor)init;
- (void)notifyDidStartStreamWithContext:(id)a3 audioProviderUUID:(id)a4 successfully:(BOOL)a5 option:(id)a6;
- (void)notifyDidStopStream:(id)a3;
- (void)notifyWillStartStreamWithContext:(id)a3 audioProviderUUID:(id)a4 option:(id)a5;
- (void)notifyWillStopStream:(id)a3;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CSOpportuneSpeakBehaviorMonitor

- (void)notifyDidStopStream:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100135194;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)notifyWillStopStream:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013537C;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)notifyDidStartStreamWithContext:(id)a3 audioProviderUUID:(id)a4 successfully:(BOOL)a5 option:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001355C0;
  block[3] = &unk_1002524B8;
  block[4] = self;
  v18 = v10;
  v21 = a5;
  v19 = v11;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(queue, block);
}

- (void)notifyWillStartStreamWithContext:(id)a3 audioProviderUUID:(id)a4 option:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001357FC;
  v15[3] = &unk_100252F38;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001359E8;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100135AD4;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (CSOpportuneSpeakBehaviorMonitor)init
{
  v8.receiver = self;
  v8.super_class = CSOpportuneSpeakBehaviorMonitor;
  v2 = [(CSOpportuneSpeakBehaviorMonitor *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSOpportuneSpeakBehaviorMonitor", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = +[NSHashTable weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v5;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_10029E4A8 != -1)
  {
    dispatch_once(&qword_10029E4A8, &stru_100252490);
  }

  v3 = qword_10029E4A0;

  return v3;
}

@end