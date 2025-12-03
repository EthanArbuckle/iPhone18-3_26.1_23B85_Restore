@interface CRDelayedWorkQueue
- (BOOL)scheduleWorkForKey:(id)key afterDelay:(double)delay work:(id)work;
- (CRDelayedWorkQueue)init;
- (void)cancel;
- (void)cancelWorkForKey:(id)key;
- (void)dealloc;
- (void)flush;
@end

@implementation CRDelayedWorkQueue

- (void)flush
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000210C;
  block[3] = &unk_10002CAB0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (CRDelayedWorkQueue)init
{
  v5.receiver = self;
  v5.super_class = CRDelayedWorkQueue;
  v2 = [(CRDelayedWorkQueue *)&v5 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v2->_queue = dispatch_queue_create([[NSString UTF8String:@"com.apple.corerecents.delayedWork.%p"] stringWithFormat:v3];
    v2->_requests = objc_alloc_init(NSMutableDictionary);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CRDelayedWorkQueue;
  [(CRDelayedWorkQueue *)&v3 dealloc];
}

- (void)cancelWorkForKey:(id)key
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_requests objectForKey:key];
  if (v5)
  {
    dispatch_source_cancel(v5);
    [(NSMutableDictionary *)self->_requests removeObjectForKey:key];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)scheduleWorkForKey:(id)key afterDelay:(double)delay work:(id)work
{
  os_unfair_lock_lock(&self->_lock);
  v9 = [(NSMutableDictionary *)self->_requests objectForKeyedSubscript:key];
  if (!v9)
  {
    if (delay <= 0.0)
    {
      os_unfair_lock_unlock(&self->_lock);
      (*(work + 2))(work);
      os_unfair_lock_lock(&self->_lock);
    }

    else
    {
      v10 = [NSString stringWithFormat:@"com.apple.corerecents.delayedWork-%p-%@", self, key];
      v11 = [[CRProcessTransaction alloc] initWithDescription:v10];
      if (delay < 1.79769313e308)
      {
        v12 = [[CRPowerAssertion alloc] initWithIdentifier:v10 timeout:delay + 30.0];
      }

      else
      {
        v12 = 0;
      }

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100002C58;
      v18[3] = &unk_10002CA38;
      v18[4] = self;
      v18[5] = key;
      v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100002CA8;
      handler[3] = &unk_10002CA60;
      handler[6] = v18;
      handler[7] = work;
      handler[4] = v12;
      handler[5] = v11;
      dispatch_source_set_event_handler(v13, handler);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100002D04;
      v16[3] = &unk_10002CA88;
      v16[5] = v11;
      v16[6] = v18;
      v16[4] = v12;
      dispatch_source_set_cancel_handler(v13, v16);
      [(NSMutableDictionary *)self->_requests setObject:v13 forKeyedSubscript:key];
      if (delay < 1.79769313e308)
      {
        v14 = dispatch_time(0, (delay * 1000000000.0));
      }

      else
      {
        v14 = -1;
      }

      dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      dispatch_resume(v13);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  return v9 == 0;
}

- (void)cancel
{
  os_unfair_lock_lock(&self->_lock);
  requests = self->_requests;
  self->_requests = objc_alloc_init(NSMutableDictionary);
  os_unfair_lock_unlock(&self->_lock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  objectEnumerator = [(NSMutableDictionary *)requests objectEnumerator];
  v5 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        dispatch_source_cancel(*(*(&v9 + 1) + 8 * v8));
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end