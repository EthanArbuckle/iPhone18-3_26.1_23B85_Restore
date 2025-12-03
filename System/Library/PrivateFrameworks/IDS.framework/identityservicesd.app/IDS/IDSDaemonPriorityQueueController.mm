@interface IDSDaemonPriorityQueueController
+ (id)sharedInstance;
- (IDSDaemonPriorityQueueController)init;
- (id)_queueForImplicitPriority:(int64_t)priority;
- (id)queueForPriority:(int64_t)priority;
- (void)assertRunningOnMain;
- (void)assertRunningWithPriority:(int64_t)priority;
- (void)performBlock:(id)block withImplicitPriority:(int64_t)priority;
- (void)performBlockDefaultPriority:(id)priority;
- (void)performBlockMainQueue:(id)queue;
- (void)performBlockMainQueue:(id)queue afterTimeMSec:(unsigned int)sec;
- (void)performBlockSYNCHRONOUSLYWithPriority:(id)priority priority:(int64_t)a4;
- (void)performBlockSyncPriority:(id)priority;
- (void)performBlockUrgentPriority:(id)priority;
- (void)performBlockWithPriority:(id)priority priority:(int64_t)a4;
@end

@implementation IDSDaemonPriorityQueueController

+ (id)sharedInstance
{
  if (qword_100CBF478 != -1)
  {
    sub_100016C14();
  }

  v3 = qword_100CBF480;

  return v3;
}

- (void)assertRunningOnMain
{
  if (!pthread_main_np())
  {
    v2 = im_primary_base_queue();
    dispatch_assert_queue_V2(v2);
  }
}

- (IDSDaemonPriorityQueueController)init
{
  v14.receiver = self;
  v14.super_class = IDSDaemonPriorityQueueController;
  v2 = [(IDSDaemonPriorityQueueController *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);
    v5 = dispatch_queue_create("IDSDaemonPriorityQueueSync", v4);
    sync_queue = v2->_sync_queue;
    v2->_sync_queue = v5;

    v7 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_DEFAULT, 0);
    v8 = dispatch_queue_create("IDSDaemonPriorityQueueDefault", v7);
    default_queue = v2->_default_queue;
    v2->_default_queue = v8;

    v10 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
    v11 = dispatch_queue_create("IDSDaemonPriorityQueueUrgent", v10);
    urgent_queue = v2->_urgent_queue;
    v2->_urgent_queue = v11;
  }

  return v2;
}

- (id)queueForPriority:(int64_t)priority
{
  switch(priority)
  {
    case 100:
      v4 = 8;
      break;
    case 300:
      v4 = 24;
      break;
    case 200:
      v4 = 16;
      break;
    default:
      abort();
  }

  v5 = *(&self->super.isa + v4);

  return v5;
}

- (id)_queueForImplicitPriority:(int64_t)priority
{
  switch(priority)
  {
    case 300:
      urgent_queue = self->_urgent_queue;
      goto LABEL_7;
    case 200:
      urgent_queue = self->_default_queue;
      goto LABEL_7;
    case 100:
      urgent_queue = self->_sync_queue;
LABEL_7:
      v4 = urgent_queue;
      goto LABEL_9;
  }

  v4 = im_primary_queue();
LABEL_9:

  return v4;
}

- (void)performBlock:(id)block withImplicitPriority:(int64_t)priority
{
  blockCopy = block;
  v7 = [(IDSDaemonPriorityQueueController *)self _queueForImplicitPriority:priority];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006A3A8C;
  block[3] = &unk_100BD7270;
  v10 = blockCopy;
  v8 = blockCopy;
  dispatch_async(v7, block);
}

- (void)performBlockSyncPriority:(id)priority
{
  priorityCopy = priority;
  sync_queue = self->_sync_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006A3B70;
  block[3] = &unk_100BD7270;
  v8 = priorityCopy;
  v6 = priorityCopy;
  dispatch_async(sync_queue, block);
}

- (void)performBlockDefaultPriority:(id)priority
{
  priorityCopy = priority;
  default_queue = self->_default_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006A3C54;
  block[3] = &unk_100BD7270;
  v8 = priorityCopy;
  v6 = priorityCopy;
  dispatch_async(default_queue, block);
}

- (void)performBlockUrgentPriority:(id)priority
{
  priorityCopy = priority;
  urgent_queue = self->_urgent_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006A3D38;
  block[3] = &unk_100BD7270;
  v8 = priorityCopy;
  v6 = priorityCopy;
  dispatch_async(urgent_queue, block);
}

- (void)performBlockMainQueue:(id)queue
{
  queueCopy = queue;
  v4 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006A3E28;
  block[3] = &unk_100BD7270;
  v7 = queueCopy;
  v5 = queueCopy;
  dispatch_async(v4, block);
}

- (void)performBlockMainQueue:(id)queue afterTimeMSec:(unsigned int)sec
{
  queueCopy = queue;
  if (sec)
  {
    v7 = dispatch_time(0, 1000000 * sec);
    v8 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1006A3F54;
    block[3] = &unk_100BD7270;
    v10 = queueCopy;
    dispatch_after(v7, v8, block);
  }

  else
  {
    [(IDSDaemonPriorityQueueController *)self performBlockMainQueue:queueCopy];
  }
}

- (void)performBlockWithPriority:(id)priority priority:(int64_t)a4
{
  priorityCopy = priority;
  v7 = [(IDSDaemonPriorityQueueController *)self queueForPriority:a4];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006A405C;
  block[3] = &unk_100BD7270;
  v10 = priorityCopy;
  v8 = priorityCopy;
  dispatch_async(v7, block);
}

- (void)performBlockSYNCHRONOUSLYWithPriority:(id)priority priority:(int64_t)a4
{
  priorityCopy = priority;
  [(IDSDaemonPriorityQueueController *)self assertRunningOnMain];
  v7 = [(IDSDaemonPriorityQueueController *)self queueForPriority:a4];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006A416C;
  block[3] = &unk_100BD7270;
  v10 = priorityCopy;
  v8 = priorityCopy;
  dispatch_sync(v7, block);
}

- (void)assertRunningWithPriority:(int64_t)priority
{
  v3 = [(IDSDaemonPriorityQueueController *)self queueForPriority:priority];
  dispatch_assert_queue_V2(v3);
}

@end