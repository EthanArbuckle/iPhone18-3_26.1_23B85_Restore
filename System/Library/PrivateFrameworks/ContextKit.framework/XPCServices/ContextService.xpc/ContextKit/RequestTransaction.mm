@interface RequestTransaction
- (RequestTransaction)initWithTransactionId:(id)a3 decPending:(BOOL)a4;
- (void)dealloc;
- (void)discard;
@end

@implementation RequestTransaction

- (RequestTransaction)initWithTransactionId:(id)a3 decPending:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v13.receiver = self;
  v13.super_class = RequestTransaction;
  v7 = [(RequestTransaction *)&v13 init];
  if (v7)
  {
    [v6 UTF8String];
    v8 = os_transaction_create();
    tx = v7->_tx;
    v7->_tx = v8;

    add = atomic_fetch_add(&qword_100557198, 1uLL);
    v11 = add + 1;
    if (add <= -2)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1002A41B0();
      }

      v11 = 0;
    }

    [qword_1005571A0 setActiveGauge:v11];
    if (v4)
    {
      [qword_1005571A0 decPending];
    }
  }

  return v7;
}

- (void)discard
{
  if ((atomic_exchange(&self->_discarded._Value, 1u) & 1) == 0)
  {
    add = atomic_fetch_add(&qword_100557198, 0xFFFFFFFFFFFFFFFFLL);
    v3 = add - 1;
    if (add <= 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1002A4228();
      }

      v3 = 0;
    }

    [qword_1005571A0 setActiveGauge:v3];
    [qword_1005571A0 notify];
  }
}

- (void)dealloc
{
  [(RequestTransaction *)self discard];
  v3.receiver = self;
  v3.super_class = RequestTransaction;
  [(RequestTransaction *)&v3 dealloc];
}

@end