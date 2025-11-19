@interface IDSInternalQueueController
+ (IDSInternalQueueController)sharedInstance;
- (IDSInternalQueueController)initWithName:(char *)a3 contextKey:(void *)a4;
- (IDSInternalQueueController)initWithQueue:(id)a3;
- (void)performBlock:(id)a3 waitUntilDone:(BOOL)a4;
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

- (IDSInternalQueueController)initWithName:(char *)a3 contextKey:(void *)a4
{
  v11.receiver = self;
  v11.super_class = IDSInternalQueueController;
  v6 = [(IDSInternalQueueController *)&v11 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create(a3, v7);
    v9 = *(v6 + 1);
    *(v6 + 1) = v8;

    *(v6 + 2) = a4;
    dispatch_queue_set_specific(*(v6 + 1), a4, 1, 0);
  }

  return v6;
}

- (IDSInternalQueueController)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSInternalQueueController;
  v6 = [(IDSInternalQueueController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v7->_contextKey = "IDSInternalQueueControllerContext";
    dispatch_queue_set_specific(v7->_queue, "IDSInternalQueueControllerContext", 1, 0);
  }

  return v7;
}

- (void)performBlock:(id)a3 waitUntilDone:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  block = v6;
  if (v4)
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
    dispatch_async(self->_queue, v6);
  }
}

@end