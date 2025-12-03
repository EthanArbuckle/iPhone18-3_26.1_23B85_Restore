@interface CSOpportuneSpeakBehaviorMonitor
+ (id)sharedInstance;
- (CSOpportuneSpeakBehaviorMonitor)init;
- (void)notifyDidStartStreamWithContext:(id)context audioProviderUUID:(id)d successfully:(BOOL)successfully option:(id)option;
- (void)notifyDidStopStream:(id)stream;
- (void)notifyWillStartStreamWithContext:(id)context audioProviderUUID:(id)d option:(id)option;
- (void)notifyWillStopStream:(id)stream;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CSOpportuneSpeakBehaviorMonitor

- (void)notifyDidStopStream:(id)stream
{
  streamCopy = stream;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100135194;
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
  v7[2] = sub_10013537C;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = streamCopy;
  v6 = streamCopy;
  dispatch_async(queue, v7);
}

- (void)notifyDidStartStreamWithContext:(id)context audioProviderUUID:(id)d successfully:(BOOL)successfully option:(id)option
{
  contextCopy = context;
  dCopy = d;
  optionCopy = option;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001355C0;
  block[3] = &unk_1002524B8;
  block[4] = self;
  v18 = contextCopy;
  successfullyCopy = successfully;
  v19 = dCopy;
  v20 = optionCopy;
  v14 = optionCopy;
  v15 = dCopy;
  v16 = contextCopy;
  dispatch_async(queue, block);
}

- (void)notifyWillStartStreamWithContext:(id)context audioProviderUUID:(id)d option:(id)option
{
  contextCopy = context;
  dCopy = d;
  optionCopy = option;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001357FC;
  v15[3] = &unk_100252F38;
  v15[4] = self;
  v16 = contextCopy;
  v17 = dCopy;
  v18 = optionCopy;
  v12 = optionCopy;
  v13 = dCopy;
  v14 = contextCopy;
  dispatch_async(queue, v15);
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001359E8;
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
  v7[2] = sub_100135AD4;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
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