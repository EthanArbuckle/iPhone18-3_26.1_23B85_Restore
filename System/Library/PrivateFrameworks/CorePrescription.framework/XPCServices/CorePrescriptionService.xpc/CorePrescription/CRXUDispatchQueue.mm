@interface CRXUDispatchQueue
+ (CRXUDispatchQueue)dispatchQueueWithQueue:(id)queue;
+ (CRXUDispatchQueue)main;
+ (id)concurrentQueueWithName:(id)name;
+ (id)concurrentQueueWithName:(id)name qos:(unsigned int)qos;
+ (id)serialQueueWithName:(id)name;
+ (id)serialQueueWithName:(id)name qos:(unsigned int)qos;
- (CRXUDispatchQueue)initWithQueue:(id)queue name:(id)name;
- (id)debugDescription;
- (void)afterDelay:(double)delay dispatchAsync:(id)async;
- (void)dispatchAsync:(id)async;
- (void)dispatchSync:(id)sync;
@end

@implementation CRXUDispatchQueue

- (CRXUDispatchQueue)initWithQueue:(id)queue name:(id)name
{
  queueCopy = queue;
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = CRXUDispatchQueue;
  v9 = [(CRXUDispatchQueue *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    if (nameCopy)
    {
      v11 = [nameCopy copy];
      name = v10->_name;
      v10->_name = v11;
    }

    v13 = os_log_create(CRXULoggingSubsystem, CRXULoggingCategory[0]);
    log = v10->_log;
    v10->_log = v13;
  }

  return v10;
}

+ (CRXUDispatchQueue)dispatchQueueWithQueue:(id)queue
{
  queueCopy = queue;
  label = dispatch_queue_get_label(queueCopy);
  if (label)
  {
    v6 = [NSString stringWithCString:label encoding:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [[self alloc] initWithQueue:queueCopy name:v6];

  return v7;
}

- (void)dispatchSync:(id)sync
{
  syncCopy = sync;
  v5 = syncCopy;
  queue = self->_queue;
  if (self->_tracingEnabled)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000040B8;
    v7[3] = &unk_1000A9970;
    v7[4] = self;
    v8 = syncCopy;
    dispatch_sync(queue, v7);
  }

  else
  {
    dispatch_sync(self->_queue, syncCopy);
  }
}

- (void)dispatchAsync:(id)async
{
  asyncCopy = async;
  v5 = asyncCopy;
  queue = self->_queue;
  if (self->_tracingEnabled)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100004308;
    v7[3] = &unk_1000A9970;
    v7[4] = self;
    v8 = asyncCopy;
    dispatch_async(queue, v7);
  }

  else
  {
    dispatch_async(self->_queue, asyncCopy);
  }
}

- (void)afterDelay:(double)delay dispatchAsync:(id)async
{
  asyncCopy = async;
  v7 = dispatch_time(0, (delay * 1000000000.0));
  v8 = v7;
  queue = self->_queue;
  if (self->_tracingEnabled)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100004588;
    v10[3] = &unk_1000A9970;
    v10[4] = self;
    v11 = asyncCopy;
    dispatch_after(v8, queue, v10);
  }

  else
  {
    dispatch_after(v7, self->_queue, asyncCopy);
  }
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  name = [(CRXUDispatchQueue *)self name];
  v5 = [NSString stringWithFormat:@"%@<%p> %@", v3, self, name];

  return v5;
}

+ (id)serialQueueWithName:(id)name qos:(unsigned int)qos
{
  v6 = dispatch_queue_attr_make_with_qos_class(0, qos, -1);
  nameCopy = name;
  nameCopy2 = name;
  v9 = dispatch_queue_create([nameCopy2 UTF8String], v6);
  v10 = [[self alloc] initWithQueue:v9 name:nameCopy2];

  return v10;
}

+ (id)concurrentQueueWithName:(id)name qos:(unsigned int)qos
{
  v6 = dispatch_queue_attr_make_with_qos_class(&_dispatch_queue_attr_concurrent, qos, -1);
  nameCopy = name;
  nameCopy2 = name;
  v9 = dispatch_queue_create([nameCopy2 UTF8String], v6);
  v10 = [[self alloc] initWithQueue:v9 name:nameCopy2];

  return v10;
}

+ (id)serialQueueWithName:(id)name
{
  nameCopy = name;
  nameCopy2 = name;
  uTF8String = [nameCopy2 UTF8String];
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create(uTF8String, v8);

  v10 = [[self alloc] initWithQueue:v9 name:nameCopy2];

  return v10;
}

+ (id)concurrentQueueWithName:(id)name
{
  nameCopy = name;
  nameCopy2 = name;
  uTF8String = [nameCopy2 UTF8String];
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create(uTF8String, v8);

  v10 = [[self alloc] initWithQueue:v9 name:nameCopy2];

  return v10;
}

+ (CRXUDispatchQueue)main
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004AE0;
  block[3] = &unk_1000A9990;
  block[4] = self;
  if (qword_1000BA5A8 != -1)
  {
    dispatch_once(&qword_1000BA5A8, block);
  }

  v2 = qword_1000BA5A0;

  return v2;
}

@end