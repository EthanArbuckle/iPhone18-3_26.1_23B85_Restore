@interface LACPSAuthorizerComposite
- (LACPSAuthorizerComposite)initWithAuthorizers:(id)a3;
- (void)_performAuthorizationWithAuthorizers:(id)a3 handler:(id)a4;
- (void)authorizeWithCompletion:(id)a3;
@end

@implementation LACPSAuthorizerComposite

- (LACPSAuthorizerComposite)initWithAuthorizers:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LACPSAuthorizerComposite;
  v6 = [(LACPSAuthorizerComposite *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_authorizers, a3);
  }

  return v7;
}

- (void)authorizeWithCompletion:(id)a3
{
  authorizers = self->_authorizers;
  v5 = a3;
  v6 = [(NSArray *)authorizers mutableCopy];
  [(LACPSAuthorizerComposite *)self _performAuthorizationWithAuthorizers:v6 handler:v5];
}

- (void)_performAuthorizationWithAuthorizers:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    objc_initWeak(&location, self);
    v8 = [v6 firstObject];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __73__LACPSAuthorizerComposite__performAuthorizationWithAuthorizers_handler___block_invoke;
    v9[3] = &unk_1E7A95648;
    objc_copyWeak(&v12, &location);
    v11 = v7;
    v10 = v6;
    [v8 authorizeWithCompletion:v9];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(v7 + 2))(v7, 0);
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