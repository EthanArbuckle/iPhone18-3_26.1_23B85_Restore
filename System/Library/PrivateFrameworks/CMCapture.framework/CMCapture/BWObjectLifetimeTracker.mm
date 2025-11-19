@interface BWObjectLifetimeTracker
+ (id)trackerWithDeallocHandler:(id)a3;
+ (void)trackAttachmentBearer:(void *)a3 deallocHandler:(id)a4;
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

+ (id)trackerWithDeallocHandler:(id)a3
{
  v4 = [BWObjectLifetimeTracker alloc];
  if (v4)
  {
    v7.receiver = v4;
    v7.super_class = BWObjectLifetimeTracker;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    if (v5)
    {
      v5[1] = [a3 copy];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)trackAttachmentBearer:(void *)a3 deallocHandler:(id)a4
{
  v6 = [BWObjectLifetimeTracker alloc];
  if (v6)
  {
    v8.receiver = v6;
    v8.super_class = BWObjectLifetimeTracker;
    v7 = objc_msgSendSuper2(&v8, sel_init);
    if (v7)
    {
      v7[1] = [a4 copy];
    }
  }

  else
  {
    v7 = 0;
  }

  CMSetAttachment(a3, @"BWObjectLifetimeTracker", v7, 0);
}

@end