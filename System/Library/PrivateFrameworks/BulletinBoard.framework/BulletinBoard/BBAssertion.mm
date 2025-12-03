@interface BBAssertion
- (BBAssertion)initWithDelegate:(id)delegate identifier:(id)identifier;
- (BBAssertionDelegate)delegate;
- (void)dealloc;
- (void)increaseOrIgnoreTransactionID:(unint64_t)d;
@end

@implementation BBAssertion

- (BBAssertion)initWithDelegate:(id)delegate identifier:(id)identifier
{
  delegateCopy = delegate;
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = BBAssertion;
  v8 = [(BBAssertion *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v10 = [identifierCopy copy];
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

- (void)increaseOrIgnoreTransactionID:(unint64_t)d
{
  if (self->_transactionID < d)
  {
    self->_transactionID = d;
  }
}

- (BBAssertionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end