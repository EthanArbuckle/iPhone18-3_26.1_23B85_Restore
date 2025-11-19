@interface FCGetWebTokenOperation
- (FCGetWebTokenOperation)initWithEndpointConnection:(id)a3 completion:(id)a4;
- (void)performOperation;
@end

@implementation FCGetWebTokenOperation

- (FCGetWebTokenOperation)initWithEndpointConnection:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = FCGetWebTokenOperation;
  v9 = [(FCOperation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_endpointConnection, a3);
    v11 = _Block_copy(v8);
    completion = v10->_completion;
    v10->_completion = v11;
  }

  return v10;
}

- (void)performOperation
{
  endpointConnection = self->_endpointConnection;
  v4 = dispatch_get_global_queue(-2, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__FCGetWebTokenOperation_performOperation__block_invoke;
  v5[3] = &unk_1E7C41170;
  v5[4] = self;
  [(FCNewsletterEndpointConnection *)endpointConnection getWebTokenWithCallbackQueue:v4 completion:v5];
}

void __42__FCGetWebTokenOperation_performOperation__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = v6[47];
  v8 = v5;
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
    v5 = v8;
    v6 = *(a1 + 32);
  }

  [v6 finishedPerformingOperationWithError:v5];
}

@end