@interface IDSInternalQueueController
+ (IDSInternalQueueController)sharedInstance;
- (IDSInternalQueueController)initWithName:(char *)name contextKey:(void *)key;
- (IDSInternalQueueController)initWithQueue:(id)queue;
- (void)performBlock:(id)block waitUntilDone:(BOOL)done;
@end

@implementation IDSInternalQueueController

+ (IDSInternalQueueController)sharedInstance
{
  if (qword_1ED5DE0D0 != -1)
  {
    sub_195A01DD0();
  }

  v3 = qword_1ED5DE090;

  return v3;
}

- (IDSInternalQueueController)initWithName:(char *)name contextKey:(void *)key
{
  v11.receiver = self;
  v11.super_class = IDSInternalQueueController;
  v6 = [(IDSInternalQueueController *)&v11 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create(name, v7);
    v9 = *(v6 + 1);
    *(v6 + 1) = v8;

    *(v6 + 2) = key;
    dispatch_queue_set_specific(*(v6 + 1), key, 1, 0);
  }

  return v6;
}

- (IDSInternalQueueController)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = IDSInternalQueueController;
  v6 = [(IDSInternalQueueController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v7->_contextKey = "IDSInternalQueueControllerContext";
    dispatch_queue_set_specific(v7->_queue, "IDSInternalQueueControllerContext", 1, 0);
  }

  return v7;
}

- (void)performBlock:(id)block waitUntilDone:(BOOL)done
{
  doneCopy = done;
  blockCopy = block;
  block = blockCopy;
  if (doneCopy)
  {
    if (dispatch_get_specific(self->_contextKey))
    {
      block[2]();
    }

    else
    {
      dispatch_sync(self->_queue, block);
    }
  }

  else
  {
    dispatch_async(self->_queue, blockCopy);
  }
}

@end