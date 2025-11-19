@interface FCKeyValueStoreSavePolicyThrottle
- (FCKeyValueStoreSavePolicyThrottle)initWithDelay:(double)a3;
- (void)scheduleSaveOnQueue:(id)a3 handler:(id)a4;
@end

@implementation FCKeyValueStoreSavePolicyThrottle

- (FCKeyValueStoreSavePolicyThrottle)initWithDelay:(double)a3
{
  v5.receiver = self;
  v5.super_class = FCKeyValueStoreSavePolicyThrottle;
  result = [(FCKeyValueStoreSavePolicyThrottle *)&v5 init];
  if (result)
  {
    result->_delay = a3;
  }

  return result;
}

- (void)scheduleSaveOnQueue:(id)a3 handler:(id)a4
{
  v5 = (self->_delay * 1000000000.0);
  v6 = a4;
  queue = a3;
  v7 = dispatch_time(0, v5);
  dispatch_after(v7, queue, v6);
}

@end