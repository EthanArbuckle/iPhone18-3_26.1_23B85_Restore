@interface LNOpenApplicationConnectionOperation
- (LNOpenApplicationConnectionOperation)initWithPriority:(int64_t)priority queue:(id)queue completionHandler:(id)handler;
- (void)finishWithActionResponse:(id)response error:(id)error;
- (void)finishWithError:(id)error;
@end

@implementation LNOpenApplicationConnectionOperation

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(LNOpenApplicationConnectionOperation *)self completionHandler];

  if (completionHandler)
  {
    v6 = [(LNConnectionOperation *)self validatingResult:0 error:errorCopy];

    completionHandler2 = [(LNOpenApplicationConnectionOperation *)self completionHandler];
    completionHandler2[2](completionHandler2, 0, v6);

    [(LNOpenApplicationConnectionOperation *)self setCompletionHandler:0];
    errorCopy = v6;
  }

  v8.receiver = self;
  v8.super_class = LNOpenApplicationConnectionOperation;
  [(LNConnectionOperation *)&v8 finishWithError:errorCopy];
}

- (void)finishWithActionResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  completionHandler = [(LNOpenApplicationConnectionOperation *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(LNOpenApplicationConnectionOperation *)self completionHandler];
    (completionHandler2)[2](completionHandler2, responseCopy, errorCopy);

    [(LNOpenApplicationConnectionOperation *)self setCompletionHandler:0];
  }

  v10.receiver = self;
  v10.super_class = LNOpenApplicationConnectionOperation;
  [(LNConnectionOperation *)&v10 finishWithError:errorCopy];
}

- (LNOpenApplicationConnectionOperation)initWithPriority:(int64_t)priority queue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNOpenApplicationConnectionOperation.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  v18.receiver = self;
  v18.super_class = LNOpenApplicationConnectionOperation;
  v12 = [(LNConnectionOperation *)&v18 initWithIdentifier:uUID priority:priority queue:queueCopy activity:&__block_literal_global_1131];

  if (v12)
  {
    v13 = [handlerCopy copy];
    completionHandler = v12->_completionHandler;
    v12->_completionHandler = v13;

    v15 = v12;
  }

  return v12;
}

os_activity_t __81__LNOpenApplicationConnectionOperation_initWithPriority_queue_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:open app", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

@end