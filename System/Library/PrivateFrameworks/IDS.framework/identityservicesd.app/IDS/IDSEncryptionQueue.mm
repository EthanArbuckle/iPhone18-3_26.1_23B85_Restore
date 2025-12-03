@interface IDSEncryptionQueue
- (IDSEncryptionQueue)initWithName:(char *)name qosClass:(unsigned int)class specific:(char *)specific;
- (void)performAsyncBlock:(id)block;
- (void)performSyncBlock:(id)block;
@end

@implementation IDSEncryptionQueue

- (IDSEncryptionQueue)initWithName:(char *)name qosClass:(unsigned int)class specific:(char *)specific
{
  v14.receiver = self;
  v14.super_class = IDSEncryptionQueue;
  v8 = [(IDSEncryptionQueue *)&v14 init];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, class, 0);
    v11 = dispatch_queue_create(name, v10);

    dispatch_queue_set_specific(v11, specific, 1, 0);
    backingQueue = v8->_backingQueue;
    v8->_backingQueue = v11;

    v8->_specific = specific;
  }

  return v8;
}

- (void)performAsyncBlock:(id)block
{
  if (block)
  {
    dispatch_async(self->_backingQueue, block);
  }
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