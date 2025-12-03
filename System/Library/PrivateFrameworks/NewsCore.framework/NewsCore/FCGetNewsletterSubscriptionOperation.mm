@interface FCGetNewsletterSubscriptionOperation
- (FCGetNewsletterSubscriptionOperation)initWithEndpointConnection:(id)connection completion:(id)completion;
- (void)performOperation;
@end

@implementation FCGetNewsletterSubscriptionOperation

- (void)performOperation
{
  endpointConnection = self->_endpointConnection;
  v4 = FCDispatchQueueForQualityOfService([(FCGetNewsletterSubscriptionOperation *)self qualityOfService]);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__FCGetNewsletterSubscriptionOperation_performOperation__block_invoke;
  v5[3] = &unk_1E7C3CAE8;
  v5[4] = self;
  [(FCNewsletterEndpointConnection *)endpointConnection getNewsletterSubscriptionWithCallbackQueue:v4 completion:v5];
}

void __56__FCGetNewsletterSubscriptionOperation_performOperation__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = *(a1 + 32);
  v11 = v10[47];
  v12 = v9;
  if (v11)
  {
    (*(v11 + 16))(v11, a2, a3, a4, v9);
    v9 = v12;
    v10 = *(a1 + 32);
  }

  [v10 finishedPerformingOperationWithError:v9];
}

- (FCGetNewsletterSubscriptionOperation)initWithEndpointConnection:(id)connection completion:(id)completion
{
  connectionCopy = connection;
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = FCGetNewsletterSubscriptionOperation;
  v9 = [(FCOperation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_endpointConnection, connection);
    v11 = _Block_copy(completionCopy);
    completion = v10->_completion;
    v10->_completion = v11;
  }

  return v10;
}

@end