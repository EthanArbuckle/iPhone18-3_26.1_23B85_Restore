@interface LACPSAuthorizerComposite
- (LACPSAuthorizerComposite)initWithAuthorizers:(id)authorizers;
- (void)_performAuthorizationWithAuthorizers:(id)authorizers handler:(id)handler;
- (void)authorizeWithCompletion:(id)completion;
@end

@implementation LACPSAuthorizerComposite

- (LACPSAuthorizerComposite)initWithAuthorizers:(id)authorizers
{
  authorizersCopy = authorizers;
  v9.receiver = self;
  v9.super_class = LACPSAuthorizerComposite;
  v6 = [(LACPSAuthorizerComposite *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_authorizers, authorizers);
  }

  return v7;
}

- (void)authorizeWithCompletion:(id)completion
{
  authorizers = self->_authorizers;
  completionCopy = completion;
  v6 = [(NSArray *)authorizers mutableCopy];
  [(LACPSAuthorizerComposite *)self _performAuthorizationWithAuthorizers:v6 handler:completionCopy];
}

- (void)_performAuthorizationWithAuthorizers:(id)authorizers handler:(id)handler
{
  authorizersCopy = authorizers;
  handlerCopy = handler;
  if ([authorizersCopy count])
  {
    objc_initWeak(&location, self);
    firstObject = [authorizersCopy firstObject];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __73__LACPSAuthorizerComposite__performAuthorizationWithAuthorizers_handler___block_invoke;
    v9[3] = &unk_1E7A95648;
    objc_copyWeak(&v12, &location);
    v11 = handlerCopy;
    v10 = authorizersCopy;
    [firstObject authorizeWithCompletion:v9];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __73__LACPSAuthorizerComposite__performAuthorizationWithAuthorizers_handler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v4)
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      [*(a1 + 32) removeObjectAtIndex:0];
      [WeakRetained _performAuthorizationWithAuthorizers:*(a1 + 32) handler:*(a1 + 40)];
    }
  }
}

@end