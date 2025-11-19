@interface LNOpenApplicationConnectionOperation
- (LNOpenApplicationConnectionOperation)initWithPriority:(int64_t)a3 queue:(id)a4 completionHandler:(id)a5;
- (void)finishWithActionResponse:(id)a3 error:(id)a4;
- (void)finishWithError:(id)a3;
@end

@implementation LNOpenApplicationConnectionOperation

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v5 = [(LNOpenApplicationConnectionOperation *)self completionHandler];

  if (v5)
  {
    v6 = [(LNConnectionOperation *)self validatingResult:0 error:v4];

    v7 = [(LNOpenApplicationConnectionOperation *)self completionHandler];
    v7[2](v7, 0, v6);

    [(LNOpenApplicationConnectionOperation *)self setCompletionHandler:0];
    v4 = v6;
  }

  v8.receiver = self;
  v8.super_class = LNOpenApplicationConnectionOperation;
  [(LNConnectionOperation *)&v8 finishWithError:v4];
}

- (void)finishWithActionResponse:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(LNOpenApplicationConnectionOperation *)self completionHandler];

  if (v8)
  {
    v9 = [(LNOpenApplicationConnectionOperation *)self completionHandler];
    (v9)[2](v9, v6, v7);

    [(LNOpenApplicationConnectionOperation *)self setCompletionHandler:0];
  }

  v10.receiver = self;
  v10.super_class = LNOpenApplicationConnectionOperation;
  [(LNConnectionOperation *)&v10 finishWithError:v7];
}

- (LNOpenApplicationConnectionOperation)initWithPriority:(int64_t)a3 queue:(id)a4 completionHandler:(id)a5
{
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"LNOpenApplicationConnectionOperation.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v11 = [MEMORY[0x1E696AFB0] UUID];
  v18.receiver = self;
  v18.super_class = LNOpenApplicationConnectionOperation;
  v12 = [(LNConnectionOperation *)&v18 initWithIdentifier:v11 priority:a3 queue:v9 activity:&__block_literal_global_1131];

  if (v12)
  {
    v13 = [v10 copy];
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