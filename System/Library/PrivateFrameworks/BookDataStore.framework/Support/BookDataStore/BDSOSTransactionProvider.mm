@interface BDSOSTransactionProvider
- (BDSOSTransactionDelegate)delegate;
- (id)createTransactionWithName:(const char *)name;
@end

@implementation BDSOSTransactionProvider

- (id)createTransactionWithName:(const char *)name
{
  v5 = [[BDSOSTransaction alloc] initWithTransactionName:name];
  delegate = [(BDSOSTransactionProvider *)self delegate];

  if (delegate)
  {
    delegate2 = [(BDSOSTransactionProvider *)self delegate];
    [(BDSOSTransaction *)v5 setDelegate:delegate2];

    delegate3 = [(BDSOSTransactionProvider *)self delegate];
    [delegate3 transactionDidBeginWithName:name];
  }

  return v5;
}

- (BDSOSTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end