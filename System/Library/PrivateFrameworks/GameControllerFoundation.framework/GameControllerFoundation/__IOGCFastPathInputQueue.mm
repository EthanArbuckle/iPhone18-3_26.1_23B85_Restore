@interface __IOGCFastPathInputQueue
- (id)description;
- (void)dealloc;
@end

@implementation __IOGCFastPathInputQueue

- (void)dealloc
{
  client = self->client;
  if (client)
  {
    providerID = client->providerID;
  }

  queueID = self->queueID;
  kdebug_trace();
  if (self->_dispatchMach)
  {
    dispatch_mach_cancel();
    dispatch_release(self->_dispatchMach);
    self->_dispatchMach = 0;
  }

  cancelHandler = self->_cancelHandler;
  if (cancelHandler)
  {
    _Block_release(cancelHandler);
    self->_cancelHandler = 0;
  }

  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_queue = 0;
  }

  queueInterface = self->queueInterface;
  if (queueInterface)
  {
    ((*queueInterface)->var3)(queueInterface);
    self->queueInterface = 0;
  }

  allocator = self->allocator;
  if (allocator)
  {
    objc_destructInstance(self);
    CFAllocatorDeallocate(allocator, self);
    CFRelease(allocator);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = __IOGCFastPathInputQueue;
    [(__IOGCFastPathInputQueue *)&v10 dealloc];
  }

  kdebug_trace();
}

- (id)description
{
  queueInterface = self->queueInterface;
  if (queueInterface && *queueInterface && (var7 = (*queueInterface)->var7) != 0)
  {
    v4 = var7(self->queueInterface, a2);

    return v4;
  }

  else
  {
    client = self->client;
    if (client)
    {
      client = client->providerID;
    }

    return [MEMORY[0x1E696AEC0] stringWithFormat:@"IOGCFastPathInputQueue %#010llx / %#010llx", client, self->queueID];
  }
}

@end