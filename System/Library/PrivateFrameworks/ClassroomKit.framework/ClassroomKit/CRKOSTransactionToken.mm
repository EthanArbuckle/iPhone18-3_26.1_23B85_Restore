@interface CRKOSTransactionToken
- (CRKOSTransactionToken)initWithReason:(id)a3 completionHandler:(id)a4;
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

- (CRKOSTransactionToken)initWithReason:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CRKOSTransactionToken;
  v8 = [(CRKOSTransactionToken *)&v14 init];
  if (v8)
  {
    v9 = MEMORY[0x245D3AAD0](v7);
    completionHandler = v8->_completionHandler;
    v8->_completionHandler = v9;

    [v6 UTF8String];
    v11 = os_transaction_create();
    underlyingTransaction = v8->_underlyingTransaction;
    v8->_underlyingTransaction = v11;
  }

  return v8;
}

- (void)cancel
{
  [(CRKOSTransactionToken *)self setUnderlyingTransaction:0];
  v3 = [(CRKOSTransactionToken *)self completionHandler];

  if (v3)
  {
    v4 = [(CRKOSTransactionToken *)self completionHandler];
    [(CRKOSTransactionToken *)self setCompletionHandler:0];
    v4[2]();
  }
}

@end