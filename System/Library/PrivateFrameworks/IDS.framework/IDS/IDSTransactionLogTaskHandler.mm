@interface IDSTransactionLogTaskHandler
+ (id)handlerWithTask:(id)task delegate:(id)delegate queue:(id)queue;
- (id)_init;
- (void)perform;
@end

@implementation IDSTransactionLogTaskHandler

+ (id)handlerWithTask:(id)task delegate:(id)delegate queue:(id)queue
{
  taskCopy = task;
  delegateCopy = delegate;
  queueCopy = queue;
  if ([taskCopy isMemberOfClass:objc_opt_class()])
  {
    v12 = [[IDSTransactionLogBaseTaskHandler alloc] initWithTask:taskCopy delegate:delegateCopy queue:queueCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = taskCopy;
      v12 = [[IDSTransactionLogSyncTaskHandler alloc] initWithTask:v13 delegate:delegateCopy queue:queueCopy];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"IDSTransactionLogTaskHandler.m" lineNumber:55 description:@"Unexpected task type"];

      v12 = 0;
    }
  }

  return v12;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = IDSTransactionLogTaskHandler;
  return [(IDSTransactionLogTaskHandler *)&v3 init];
}

- (void)perform
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"IDSTransactionLogTaskHandler.m" lineNumber:65 description:@"Abstract method"];
}

@end