@interface IDSTransactionLogBaseTaskHandler
- (IDSTransactionLogBaseTaskHandler)initWithTask:(id)a3 delegate:(id)a4 queue:(id)a5;
- (void)perform;
@end

@implementation IDSTransactionLogBaseTaskHandler

- (IDSTransactionLogBaseTaskHandler)initWithTask:(id)a3 delegate:(id)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = IDSTransactionLogBaseTaskHandler;
  v10 = [(IDSTransactionLogTaskHandler *)&v13 _init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(v10 + 1, a3);
    objc_storeStrong(&v11->_queue, a5);
  }

  return v11;
}

- (void)perform
{
  v3 = [(IDSTransactionLogBaseTaskHandler *)self task];
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:IDSTransactionLogErrorDomain code:-1000 userInfo:0];
  [v3 _completeWithError:v2];
}

@end