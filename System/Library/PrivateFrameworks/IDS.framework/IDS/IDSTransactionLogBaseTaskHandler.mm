@interface IDSTransactionLogBaseTaskHandler
- (IDSTransactionLogBaseTaskHandler)initWithTask:(id)task delegate:(id)delegate queue:(id)queue;
- (void)perform;
@end

@implementation IDSTransactionLogBaseTaskHandler

- (IDSTransactionLogBaseTaskHandler)initWithTask:(id)task delegate:(id)delegate queue:(id)queue
{
  taskCopy = task;
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = IDSTransactionLogBaseTaskHandler;
  _init = [(IDSTransactionLogTaskHandler *)&v13 _init];
  v11 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, task);
    objc_storeStrong(&v11->_queue, queue);
  }

  return v11;
}

- (void)perform
{
  task = [(IDSTransactionLogBaseTaskHandler *)self task];
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:IDSTransactionLogErrorDomain code:-1000 userInfo:0];
  [task _completeWithError:v2];
}

@end