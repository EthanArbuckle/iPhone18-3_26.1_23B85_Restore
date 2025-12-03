@interface IDSRegistrationKeyManagerContainerQueue
- (IDSRegistrationKeyManagerContainerQueue)init;
- (void)performSyncBlock:(id)block;
@end

@implementation IDSRegistrationKeyManagerContainerQueue

- (IDSRegistrationKeyManagerContainerQueue)init
{
  v8.receiver = self;
  v8.super_class = IDSRegistrationKeyManagerContainerQueue;
  v2 = [(IDSRegistrationKeyManagerContainerQueue *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_create("IDSRegistrationKeyManagerContainerQueue", v4);
    v6 = *(v2 + 1);
    *(v2 + 1) = v5;

    *(v2 + 2) = "_RegistrationKeyManagerContainerQueue";
    dispatch_queue_set_specific(*(v2 + 1), "_RegistrationKeyManagerContainerQueue", 1, 0);
  }

  return v2;
}

- (void)performSyncBlock:(id)block
{
  blockCopy2 = block;
  if (blockCopy2)
  {
    block = blockCopy2;
    if (dispatch_get_specific(self->_specific))
    {
      block[2]();
    }

    else
    {
      dispatch_sync(self->_backingQueue, block);
    }

    blockCopy2 = block;
  }
}

@end