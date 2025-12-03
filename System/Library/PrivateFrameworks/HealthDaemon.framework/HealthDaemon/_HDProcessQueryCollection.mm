@interface _HDProcessQueryCollection
- (id)queryServers;
- (void)queue_cancelStateChangeTimer;
@end

@implementation _HDProcessQueryCollection

- (id)queryServers
{
  if (self)
  {
    self = [self[1] allValues];
    v1 = vars8;
  }

  return self;
}

- (void)queue_cancelStateChangeTimer
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 24));
    v2 = *(self + 16);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = *(self + 16);
      *(self + 16) = 0;
    }
  }
}

@end