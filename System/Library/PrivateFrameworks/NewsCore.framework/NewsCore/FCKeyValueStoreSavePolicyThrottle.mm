@interface FCKeyValueStoreSavePolicyThrottle
- (FCKeyValueStoreSavePolicyThrottle)initWithDelay:(double)delay;
- (void)scheduleSaveOnQueue:(id)queue handler:(id)handler;
@end

@implementation FCKeyValueStoreSavePolicyThrottle

- (FCKeyValueStoreSavePolicyThrottle)initWithDelay:(double)delay
{
  v5.receiver = self;
  v5.super_class = FCKeyValueStoreSavePolicyThrottle;
  result = [(FCKeyValueStoreSavePolicyThrottle *)&v5 init];
  if (result)
  {
    result->_delay = delay;
  }

  return result;
}

- (void)scheduleSaveOnQueue:(id)queue handler:(id)handler
{
  v5 = (self->_delay * 1000000000.0);
  handlerCopy = handler;
  queue = queue;
  v7 = dispatch_time(0, v5);
  dispatch_after(v7, queue, handlerCopy);
}

@end