@interface CSAccessorySiriClientBehaviorMonitor
+ (id)sharedInstance;
- (CSAccessorySiriClientBehaviorMonitor)init;
- (void)_init;
- (void)notifyDidStartStreamWithContext:(id)context successfully:(BOOL)successfully option:(id)option withEventUUID:(id)d forAccessory:(id)accessory;
- (void)notifyDidStopStream:(id)stream reason:(unint64_t)reason withEventUUID:(id)d forAccessory:(id)accessory;
- (void)notifyWillStartStreamWithContext:(id)context option:(id)option forAccessory:(id)accessory;
- (void)notifyWillStopStream:(id)stream reason:(unint64_t)reason forAccessory:(id)accessory;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CSAccessorySiriClientBehaviorMonitor

- (void)notifyDidStopStream:(id)stream reason:(unint64_t)reason withEventUUID:(id)d forAccessory:(id)accessory
{
  streamCopy = stream;
  dCopy = d;
  accessoryCopy = accessory;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D9D08;
  block[3] = &unk_100253558;
  v18 = accessoryCopy;
  selfCopy = self;
  v21 = dCopy;
  reasonCopy = reason;
  v20 = streamCopy;
  v14 = dCopy;
  v15 = streamCopy;
  v16 = accessoryCopy;
  dispatch_async(queue, block);
}

- (void)notifyWillStopStream:(id)stream reason:(unint64_t)reason forAccessory:(id)accessory
{
  streamCopy = stream;
  accessoryCopy = accessory;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000D9F48;
  v13[3] = &unk_1002510C8;
  v14 = accessoryCopy;
  selfCopy = self;
  v16 = streamCopy;
  reasonCopy = reason;
  v11 = streamCopy;
  v12 = accessoryCopy;
  dispatch_async(queue, v13);
}

- (void)notifyDidStartStreamWithContext:(id)context successfully:(BOOL)successfully option:(id)option withEventUUID:(id)d forAccessory:(id)accessory
{
  contextCopy = context;
  optionCopy = option;
  dCopy = d;
  accessoryCopy = accessory;
  queue = self->_queue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000DA1D4;
  v21[3] = &unk_1002510A0;
  v22 = accessoryCopy;
  selfCopy = self;
  successfullyCopy = successfully;
  v24 = contextCopy;
  v25 = optionCopy;
  v26 = dCopy;
  v17 = dCopy;
  v18 = optionCopy;
  v19 = contextCopy;
  v20 = accessoryCopy;
  dispatch_async(queue, v21);
}

- (void)notifyWillStartStreamWithContext:(id)context option:(id)option forAccessory:(id)accessory
{
  contextCopy = context;
  optionCopy = option;
  accessoryCopy = accessory;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000DA434;
  v15[3] = &unk_100252F38;
  v16 = accessoryCopy;
  selfCopy = self;
  v18 = contextCopy;
  v19 = optionCopy;
  v12 = optionCopy;
  v13 = contextCopy;
  v14 = accessoryCopy;
  dispatch_async(queue, v15);
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000DA644;
    v7[3] = &unk_100253C48;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(queue, v7);
  }
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000DA740;
    v7[3] = &unk_100253C48;
    v7[4] = self;
    v8 = observerCopy;
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