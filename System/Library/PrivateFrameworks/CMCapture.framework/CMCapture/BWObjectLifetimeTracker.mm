@interface BWObjectLifetimeTracker
+ (id)trackerWithDeallocHandler:(id)handler;
+ (void)trackAttachmentBearer:(void *)bearer deallocHandler:(id)handler;
- (void)dealloc;
@end

@implementation BWObjectLifetimeTracker

- (void)dealloc
{
  deallocHandler = self->_deallocHandler;
  if (deallocHandler)
  {
    deallocHandler[2](deallocHandler, a2);
  }

  v4.receiver = self;
  v4.super_class = BWObjectLifetimeTracker;
  [(BWObjectLifetimeTracker *)&v4 dealloc];
}

+ (id)trackerWithDeallocHandler:(id)handler
{
  v4 = [BWObjectLifetimeTracker alloc];
  if (v4)
  {
    v7.receiver = v4;
    v7.super_class = BWObjectLifetimeTracker;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    if (v5)
    {
      v5[1] = [handler copy];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)trackAttachmentBearer:(void *)bearer deallocHandler:(id)handler
{
  v6 = [BWObjectLifetimeTracker alloc];
  if (v6)
  {
    v8.receiver = v6;
    v8.super_class = BWObjectLifetimeTracker;
    v7 = objc_msgSendSuper2(&v8, sel_init);
    if (v7)
    {
      v7[1] = [handler copy];
    }
  }

  else
  {
    v7 = 0;
  }

  CMSetAttachment(bearer, @"BWObjectLifetimeTracker", v7, 0);
}

@end