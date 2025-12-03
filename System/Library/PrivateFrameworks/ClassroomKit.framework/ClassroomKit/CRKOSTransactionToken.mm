@interface CRKOSTransactionToken
- (CRKOSTransactionToken)initWithReason:(id)reason completionHandler:(id)handler;
- (void)cancel;
- (void)dealloc;
@end

@implementation CRKOSTransactionToken

- (void)dealloc
{
  [(CRKOSTransactionToken *)self cancel];
  v3.receiver = self;
  v3.super_class = CRKOSTransactionToken;
  [(CRKOSTransactionToken *)&v3 dealloc];
}

- (CRKOSTransactionToken)initWithReason:(id)reason completionHandler:(id)handler
{
  reasonCopy = reason;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = CRKOSTransactionToken;
  v8 = [(CRKOSTransactionToken *)&v14 init];
  if (v8)
  {
    v9 = MEMORY[0x245D3AAD0](handlerCopy);
    completionHandler = v8->_completionHandler;
    v8->_completionHandler = v9;

    [reasonCopy UTF8String];
    v11 = os_transaction_create();
    underlyingTransaction = v8->_underlyingTransaction;
    v8->_underlyingTransaction = v11;
  }

  return v8;
}

- (void)cancel
{
  [(CRKOSTransactionToken *)self setUnderlyingTransaction:0];
  completionHandler = [(CRKOSTransactionToken *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(CRKOSTransactionToken *)self completionHandler];
    [(CRKOSTransactionToken *)self setCompletionHandler:0];
    completionHandler2[2]();
  }
}

@end