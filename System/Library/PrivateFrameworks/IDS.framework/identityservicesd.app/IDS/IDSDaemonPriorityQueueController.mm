@interface IDSDaemonPriorityQueueController
+ (id)sharedInstance;
- (IDSDaemonPriorityQueueController)init;
- (id)_queueForImplicitPriority:(int64_t)a3;
- (id)queueForPriority:(int64_t)a3;
- (void)assertRunningOnMain;
- (void)assertRunningWithPriority:(int64_t)a3;
- (void)performBlock:(id)a3 withImplicitPriority:(int64_t)a4;
- (void)performBlockDefaultPriority:(id)a3;
- (void)performBlockMainQueue:(id)a3;
- (void)performBlockMainQueue:(id)a3 afterTimeMSec:(unsigned int)a4;
- (void)performBlockSYNCHRONOUSLYWithPriority:(id)a3 priority:(int64_t)a4;
- (void)performBlockSyncPriority:(id)a3;
- (void)performBlockUrgentPriority:(id)a3;
- (void)performBlockWithPriority:(id)a3 priority:(int64_t)a4;
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

- (id)queueForPriority:(int64_t)a3
{
  switch(a3)
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

- (id)_queueForImplicitPriority:(int64_t)a3
{
  switch(a3)
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

- (void)performBlock:(id)a3 withImplicitPriority:(int64_t)a4
{
  v6 = a3;
  v7 = [(IDSDaemonPriorityQueueController *)self _queueForImplicitPriority:a4];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006A3A8C;
  block[3] = &unk_100BD7270;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)performBlockSyncPriority:(id)a3
{
  v4 = a3;
  sync_queue = self->_sync_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006A3B70;
  block[3] = &unk_100BD7270;
  v8 = v4;
  v6 = v4;
  dispatch_async(sync_queue, block);
}

- (void)performBlockDefaultPriority:(id)a3
{
  v4 = a3;
  default_queue = self->_default_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006A3C54;
  block[3] = &unk_100BD7270;
  v8 = v4;
  v6 = v4;
  dispatch_async(default_queue, block);
}

- (void)performBlockUrgentPriority:(id)a3
{
  v4 = a3;
  urgent_queue = self->_urgent_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006A3D38;
  block[3] = &unk_100BD7270;
  v8 = v4;
  v6 = v4;
  dispatch_async(urgent_queue, block);
}

- (void)performBlockMainQueue:(id)a3
{
  v3 = a3;
  v4 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006A3E28;
  block[3] = &unk_100BD7270;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

- (void)performBlockMainQueue:(id)a3 afterTimeMSec:(unsigned int)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = dispatch_time(0, 1000000 * a4);
    v8 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1006A3F54;
    block[3] = &unk_100BD7270;
    v10 = v6;
    dispatch_after(v7, v8, block);
  }

  else
  {
    [(IDSDaemonPriorityQueueController *)self performBlockMainQueue:v6];
  }
}

- (void)performBlockWithPriority:(id)a3 priority:(int64_t)a4
{
  v6 = a3;
  v7 = [(IDSDaemonPriorityQueueController *)self queueForPriority:a4];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006A405C;
  block[3] = &unk_100BD7270;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)performBlockSYNCHRONOUSLYWithPriority:(id)a3 priority:(int64_t)a4
{
  v6 = a3;
  [(IDSDaemonPriorityQueueController *)self assertRunningOnMain];
  v7 = [(IDSDaemonPriorityQueueController *)self queueForPriority:a4];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006A416C;
  block[3] = &unk_100BD7270;
  v10 = v6;
  v8 = v6;
  dispatch_sync(v7, block);
}

- (void)assertRunningWithPriority:(int64_t)a3
{
  v3 = [(IDSDaemonPriorityQueueController *)self queueForPriority:a3];
  dispatch_assert_queue_V2(v3);
}

@end