@interface MTLDebugDeadlineProfile
- (void)validateCommandQueue:(id)a3;
@end

@implementation MTLDebugDeadlineProfile

- (void)validateCommandQueue:(id)a3
{
  v3 = atomic_load(&self->_commandQueue);
  if (v3)
  {
    if (v3 == a3)
    {
      return;
    }

LABEL_9:
    [MTLDebugDeadlineProfile validateCommandQueue:];
    return;
  }

  atomic_compare_exchange_strong(&self->_commandQueue, &v3, a3);
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (v3 && v5 != a3)
  {
    goto LABEL_9;
  }
}

@end