@interface BDSOSTransactionProvider
- (BDSOSTransactionDelegate)delegate;
- (id)createTransactionWithName:(const char *)a3;
@end

@implementation BDSOSTransactionProvider

- (id)createTransactionWithName:(const char *)a3
{
  v5 = [[BDSOSTransaction alloc] initWithTransactionName:a3];
  v6 = [(BDSOSTransactionProvider *)self delegate];

  if (v6)
  {
    v7 = [(BDSOSTransactionProvider *)self delegate];
    [(BDSOSTransaction *)v5 setDelegate:v7];

    v8 = [(BDSOSTransactionProvider *)self delegate];
    [v8 transactionDidBeginWithName:a3];
  }

  return v5;
}

- (BDSOSTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end