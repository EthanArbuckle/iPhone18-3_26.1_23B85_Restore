@interface LACPSAuthorizerDispatchDecorator
- (LACPSAuthorizerDispatchDecorator)initWithAuthorizer:(id)authorizer;
- (void)authorizeWithCompletion:(id)completion;
@end

@implementation LACPSAuthorizerDispatchDecorator

- (LACPSAuthorizerDispatchDecorator)initWithAuthorizer:(id)authorizer
{
  authorizerCopy = authorizer;
  v13.receiver = self;
  v13.super_class = LACPSAuthorizerDispatchDecorator;
  v6 = [(LACPSAuthorizerDispatchDecorator *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_authorizer, authorizer);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [LACConcurrencyUtilities createUserInitiatedSerialQueueWithIdentifier:v9];
    workQueue = v7->_workQueue;
    v7->_workQueue = v10;
  }

  return v7;
}

- (void)authorizeWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__LACPSAuthorizerDispatchDecorator_authorizeWithCompletion___block_invoke;
  v6[3] = &unk_1E7A957E8;
  objc_copyWeak(&v8, &location);
  v5 = completionCopy;
  v7 = v5;
  [(LACPSAuthorizerDispatchDecorator *)self _performOnBackgroundQueue:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __60__LACPSAuthorizerDispatchDecorator_authorizeWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 1);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __60__LACPSAuthorizerDispatchDecorator_authorizeWithCompletion___block_invoke_2;
    v5[3] = &unk_1E7A957C0;
    objc_copyWeak(&v7, (a1 + 40));
    v6 = *(a1 + 32);
    [v4 authorizeWithCompletion:v5];

    objc_destroyWeak(&v7);
  }
}

void __60__LACPSAuthorizerDispatchDecorator_authorizeWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __60__LACPSAuthorizerDispatchDecorator_authorizeWithCompletion___block_invoke_3;
    v5[3] = &unk_1E7A95798;
    v7 = *(a1 + 32);
    v6 = v3;
    [WeakRetained _performOnMainQueue:v5];
  }
}

@end