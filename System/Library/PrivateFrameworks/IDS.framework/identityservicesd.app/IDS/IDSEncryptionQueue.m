@interface IDSEncryptionQueue
- (IDSEncryptionQueue)initWithName:(char *)a3 qosClass:(unsigned int)a4 specific:(char *)a5;
- (void)performAsyncBlock:(id)a3;
- (void)performSyncBlock:(id)a3;
@end

@implementation IDSEncryptionQueue

- (IDSEncryptionQueue)initWithName:(char *)a3 qosClass:(unsigned int)a4 specific:(char *)a5
{
  v14.receiver = self;
  v14.super_class = IDSEncryptionQueue;
  v8 = [(IDSEncryptionQueue *)&v14 init];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, a4, 0);
    v11 = dispatch_queue_create(a3, v10);

    dispatch_queue_set_specific(v11, a5, 1, 0);
    backingQueue = v8->_backingQueue;
    v8->_backingQueue = v11;

    v8->_specific = a5;
  }

  return v8;
}

- (void)performAsyncBlock:(id)a3
{
  if (a3)
  {
    dispatch_async(self->_backingQueue, a3);
  }
}

- (void)performSyncBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    block = v4;
    if (dispatch_get_specific(self->_specific))
    {
      block[2]();
    }

    else
    {
      dispatch_sync(self->_backingQueue, block);
    }

    v4 = block;
  }
}

@end