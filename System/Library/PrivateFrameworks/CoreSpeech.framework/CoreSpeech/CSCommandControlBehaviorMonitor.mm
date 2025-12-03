@interface CSCommandControlBehaviorMonitor
+ (id)sharedInstance;
- (CSCommandControlBehaviorMonitor)init;
- (void)notifyDidStartStreamWithContext:(id)context successfully:(BOOL)successfully option:(id)option;
- (void)notifyDidStopStream:(id)stream;
- (void)notifyWillStartStreamWithContext:(id)context option:(id)option;
- (void)notifyWillStopStream:(id)stream;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CSCommandControlBehaviorMonitor

- (void)notifyDidStopStream:(id)stream
{
  streamCopy = stream;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CCC74;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = streamCopy;
  v6 = streamCopy;
  dispatch_async(queue, v7);
}

- (void)notifyWillStopStream:(id)stream
{
  streamCopy = stream;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CCE88;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = streamCopy;
  v6 = streamCopy;
  dispatch_async(queue, v7);
}

- (void)notifyDidStartStreamWithContext:(id)context successfully:(BOOL)successfully option:(id)option
{
  contextCopy = context;
  optionCopy = option;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000CD0D0;
  v13[3] = &unk_100252420;
  v13[4] = self;
  v14 = contextCopy;
  successfullyCopy = successfully;
  v15 = optionCopy;
  v11 = optionCopy;
  v12 = contextCopy;
  dispatch_async(queue, v13);
}

- (void)notifyWillStartStreamWithContext:(id)context option:(id)option
{
  contextCopy = context;
  optionCopy = option;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CD318;
  block[3] = &unk_100253680;
  block[4] = self;
  v12 = contextCopy;
  v13 = optionCopy;
  v9 = optionCopy;
  v10 = contextCopy;
  dispatch_async(queue, block);
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CD530;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CD61C;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (CSCommandControlBehaviorMonitor)init
{
  v8.receiver = self;
  v8.super_class = CSCommandControlBehaviorMonitor;
  v2 = [(CSCommandControlBehaviorMonitor *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSCommandControlBehaviorMonitor", 0);
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
  if (qword_10029E2E0 != -1)
  {
    dispatch_once(&qword_10029E2E0, &stru_100250C30);
  }

  v3 = qword_10029E2D8;

  return v3;
}

@end