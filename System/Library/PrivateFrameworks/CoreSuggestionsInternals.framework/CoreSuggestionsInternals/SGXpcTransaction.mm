@interface SGXpcTransaction
- (BOOL)doneReturningWasDone;
- (void)dealloc;
@end

@implementation SGXpcTransaction

- (void)dealloc
{
  [(SGXpcTransaction *)self done];
  v3.receiver = self;
  v3.super_class = SGXpcTransaction;
  [(SGXpcTransaction *)&v3 dealloc];
}

- (BOOL)doneReturningWasDone
{
  v2 = atomic_exchange(&self->_done._Value, 1u);
  if ((v2 & 1) == 0)
  {
    transaction = self->_transaction;
    self->_transaction = 0;

    timeoutTimer = self->_timeoutTimer;
    if (timeoutTimer)
    {
      dispatch_source_cancel(timeoutTimer);
      v6 = self->_timeoutTimer;
      self->_timeoutTimer = 0;
    }
  }

  return v2 & 1;
}

@end