@interface CRXUDispatchQueue
+ (CRXUDispatchQueue)dispatchQueueWithQueue:(id)a3;
+ (CRXUDispatchQueue)main;
+ (id)concurrentQueueWithName:(id)a3;
+ (id)concurrentQueueWithName:(id)a3 qos:(unsigned int)a4;
+ (id)serialQueueWithName:(id)a3;
+ (id)serialQueueWithName:(id)a3 qos:(unsigned int)a4;
- (CRXUDispatchQueue)initWithQueue:(id)a3 name:(id)a4;
- (id)debugDescription;
- (void)afterDelay:(double)a3 dispatchAsync:(id)a4;
- (void)dispatchAsync:(id)a3;
- (void)dispatchSync:(id)a3;
@end

@implementation CRXUDispatchQueue

- (CRXUDispatchQueue)initWithQueue:(id)a3 name:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = CRXUDispatchQueue;
  v9 = [(CRXUDispatchQueue *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    if (v8)
    {
      v11 = [v8 copy];
      name = v10->_name;
      v10->_name = v11;
    }

    v13 = os_log_create(CRXULoggingSubsystem, CRXULoggingCategory[0]);
    log = v10->_log;
    v10->_log = v13;
  }

  return v10;
}

+ (CRXUDispatchQueue)dispatchQueueWithQueue:(id)a3
{
  v4 = a3;
  label = dispatch_queue_get_label(v4);
  if (label)
  {
    v6 = [NSString stringWithCString:label encoding:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [[a1 alloc] initWithQueue:v4 name:v6];

  return v7;
}

- (void)dispatchSync:(id)a3
{
  v4 = a3;
  v5 = v4;
  queue = self->_queue;
  if (self->_tracingEnabled)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000040B8;
    v7[3] = &unk_1000A9970;
    v7[4] = self;
    v8 = v4;
    dispatch_sync(queue, v7);
  }

  else
  {
    dispatch_sync(self->_queue, v4);
  }
}

- (void)dispatchAsync:(id)a3
{
  v4 = a3;
  v5 = v4;
  queue = self->_queue;
  if (self->_tracingEnabled)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100004308;
    v7[3] = &unk_1000A9970;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }

  else
  {
    dispatch_async(self->_queue, v4);
  }
}

- (void)afterDelay:(double)a3 dispatchAsync:(id)a4
{
  v6 = a4;
  v7 = dispatch_time(0, (a3 * 1000000000.0));
  v8 = v7;
  queue = self->_queue;
  if (self->_tracingEnabled)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100004588;
    v10[3] = &unk_1000A9970;
    v10[4] = self;
    v11 = v6;
    dispatch_after(v8, queue, v10);
  }

  else
  {
    dispatch_after(v7, self->_queue, v6);
  }
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = [(CRXUDispatchQueue *)self name];
  v5 = [NSString stringWithFormat:@"%@<%p> %@", v3, self, v4];

  return v5;
}

+ (id)serialQueueWithName:(id)a3 qos:(unsigned int)a4
{
  v6 = dispatch_queue_attr_make_with_qos_class(0, a4, -1);
  v7 = a3;
  v8 = a3;
  v9 = dispatch_queue_create([v8 UTF8String], v6);
  v10 = [[a1 alloc] initWithQueue:v9 name:v8];

  return v10;
}

+ (id)concurrentQueueWithName:(id)a3 qos:(unsigned int)a4
{
  v6 = dispatch_queue_attr_make_with_qos_class(&_dispatch_queue_attr_concurrent, a4, -1);
  v7 = a3;
  v8 = a3;
  v9 = dispatch_queue_create([v8 UTF8String], v6);
  v10 = [[a1 alloc] initWithQueue:v9 name:v8];

  return v10;
}

+ (id)serialQueueWithName:(id)a3
{
  v5 = a3;
  v6 = a3;
  v7 = [v6 UTF8String];
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create(v7, v8);

  v10 = [[a1 alloc] initWithQueue:v9 name:v6];

  return v10;
}

+ (id)concurrentQueueWithName:(id)a3
{
  v5 = a3;
  v6 = a3;
  v7 = [v6 UTF8String];
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create(v7, v8);

  v10 = [[a1 alloc] initWithQueue:v9 name:v6];

  return v10;
}

+ (CRXUDispatchQueue)main
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004AE0;
  block[3] = &unk_1000A9990;
  block[4] = a1;
  if (qword_1000BA5A8 != -1)
  {
    dispatch_once(&qword_1000BA5A8, block);
  }

  v2 = qword_1000BA5A0;

  return v2;
}

@end