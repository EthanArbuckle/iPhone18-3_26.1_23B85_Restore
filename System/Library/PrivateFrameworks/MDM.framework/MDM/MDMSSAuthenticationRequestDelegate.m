@interface MDMSSAuthenticationRequestDelegate
+ (id)instanceWithAuthenticationContext:(id)a3;
- (id)storeLoginFailedError;
- (void)authenticateRequest:(id)a3 didReceiveResponse:(id)a4;
- (void)startWithCompletionBlock:(id)a3;
@end

@implementation MDMSSAuthenticationRequestDelegate

+ (id)instanceWithAuthenticationContext:(id)a3
{
  v3 = a3;
  v4 = [MDMSSAuthenticationRequestDelegate alloc];
  v5 = [objc_alloc(MEMORY[0x277D69A50]) initWithAuthenticationContext:v3];

  v6 = [(MDMSSRequestDelegate *)v4 initWithRequest:v5];

  return v6;
}

- (id)storeLoginFailedError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03450];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:30000 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

- (void)startWithCompletionBlock:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[MDMMCInterface isLimitedAppsMode];
  v6 = *DMCLogObjects();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_DEFAULT, "Not prompting for iTunes account in a limited apps mode.", buf, 2u);
    }

    if (v4)
    {
      v8 = [(MDMSSAuthenticationRequestDelegate *)self storeLoginFailedError];
      v4[2](v4, v8, 0);
    }
  }

  else
  {
    if (v7)
    {
      v9 = v6;
      *buf = 138543362;
      v15 = objc_opt_class();
      v10 = v15;
      _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ starting user authentication.", buf, 0xCu);
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__MDMSSAuthenticationRequestDelegate_startWithCompletionBlock___block_invoke;
    v12[3] = &unk_27982D0B8;
    v12[4] = self;
    v13 = v4;
    [(MDMSSRequestDelegate *)self _startTimeout:v12 completionBlock:900.0];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __63__MDMSSAuthenticationRequestDelegate_startWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(*(a1 + 32) + 32);
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = 0;

  if (v8)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = *(a1 + 40);
    if (v3)
    {
      (*(v6 + 16))(*(a1 + 40), 0, v3);
    }

    else
    {
      v7 = [*(a1 + 32) storeLoginFailedError];
      (*(v6 + 16))(v6, v7, 0);
    }
  }
}

- (void)authenticateRequest:(id)a3 didReceiveResponse:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 authenticateResponseType];
  v7 = *DMCLogObjects();
  if (v6 == 4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_DEFAULT, "User successfully logged into iTunes account.", &v12, 2u);
    }

    v8 = [v5 authenticatedAccount];
    authenticatedAccount = self->_authenticatedAccount;
    self->_authenticatedAccount = v8;
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = v7;
    v12 = 134217984;
    v13 = [v5 authenticateResponseType];
    _os_log_impl(&dword_2561F5000, v10, OS_LOG_TYPE_ERROR, "User failed to log into iTunes account. Reason code: %ld", &v12, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end