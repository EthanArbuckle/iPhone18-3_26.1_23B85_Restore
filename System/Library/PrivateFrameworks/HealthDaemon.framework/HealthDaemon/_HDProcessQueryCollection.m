@interface _HDProcessQueryCollection
- (id)queryServers;
- (void)queue_cancelStateChangeTimer;
@end

@implementation _HDProcessQueryCollection

- (id)queryServers
{
  if (a1)
  {
    a1 = [a1[1] allValues];
    v1 = vars8;
  }

  return a1;
}

- (void)queue_cancelStateChangeTimer
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 24));
    v2 = *(a1 + 16);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = *(a1 + 16);
      *(a1 + 16) = 0;
    }
  }
}

@end