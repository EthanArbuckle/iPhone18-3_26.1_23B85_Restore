@interface __IOGCFastPathControlQueue
- (id)description;
- (void)dealloc;
@end

@implementation __IOGCFastPathControlQueue

- (void)dealloc
{
  queueInterface = self->queueInterface;
  if (queueInterface)
  {
    (*(*queueInterface + 3))(queueInterface, a2);
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
    v5.receiver = self;
    v5.super_class = __IOGCFastPathControlQueue;
    [(__IOGCFastPathControlQueue *)&v5 dealloc];
  }
}

- (id)description
{
  queueInterface = self->queueInterface;
  if (queueInterface && *queueInterface && (v3 = *(*queueInterface + 5)) != 0)
  {
    v4 = v3(self->queueInterface, a2);

    return v4;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = __IOGCFastPathControlQueue;
    return [(__IOGCFastPathControlQueue *)&v6 description];
  }
}

@end