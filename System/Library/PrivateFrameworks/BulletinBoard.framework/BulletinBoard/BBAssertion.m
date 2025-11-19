@interface BBAssertion
- (BBAssertion)initWithDelegate:(id)a3 identifier:(id)a4;
- (BBAssertionDelegate)delegate;
- (void)dealloc;
- (void)increaseOrIgnoreTransactionID:(unint64_t)a3;
@end

@implementation BBAssertion

- (BBAssertion)initWithDelegate:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = BBAssertion;
  v8 = [(BBAssertion *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    v10 = [v7 copy];
    identifier = v9->_identifier;
    v9->_identifier = v10;
  }

  return v9;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained assertionExpired:self->_identifier transactionID:self->_transactionID];

  v4.receiver = self;
  v4.super_class = BBAssertion;
  [(BBAssertion *)&v4 dealloc];
}

- (void)increaseOrIgnoreTransactionID:(unint64_t)a3
{
  if (self->_transactionID < a3)
  {
    self->_transactionID = a3;
  }
}

- (BBAssertionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end