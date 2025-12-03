@interface NPKFidoAuthCoordinator
- (void)clearContext;
- (void)requestAuthorizationWithCompletion:(id)completion;
@end

@implementation NPKFidoAuthCoordinator

- (void)requestAuthorizationWithCompletion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = _Block_copy(completionCopy);
      *buf = 138412290;
      v23 = v8;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKFidoAuthCoordinator: request authorization with completion: %@", buf, 0xCu);
    }
  }

  if ([(NPKFidoAuthCoordinator *)self _isDeviceLocked])
  {
    v9 = pk_General_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = pk_General_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKFidoAuthCoordinator: noting that device is locked; requesting unlock", buf, 2u);
      }
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.NPKErrorDomain" code:-1004 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, 1, 0, v12);
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x277CD4790]);
    v14 = pk_General_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = pk_General_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v13;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: NPKFidoAuthCoordinator: About to evaluate device owner authentication policy for context: %@", buf, 0xCu);
      }
    }

    if ([(NPKFidoAuthCoordinator *)self _isWristDetectDisabled])
    {
      +[NPKAudioPlayer playWarsawHaptic];
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __61__NPKFidoAuthCoordinator_requestAuthorizationWithCompletion___block_invoke;
    v18[3] = &unk_279948D58;
    v19 = v13;
    selfCopy = self;
    v21 = completionCopy;
    v12 = v13;
    [v12 evaluatePolicy:1023 options:0 reply:v18];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __61__NPKFidoAuthCoordinator_requestAuthorizationWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__NPKFidoAuthCoordinator_requestAuthorizationWithCompletion___block_invoke_2;
  v9[3] = &unk_279945BB0;
  v10 = v4;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v8 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

void __61__NPKFidoAuthCoordinator_requestAuthorizationWithCompletion___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v14 = 138412290;
      v15 = v5;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: NPKFidoAuthCoordinator: Context evaluated; error: %@", &v14, 0xCu);
    }
  }

  if (*(a1 + 32))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 40);
  }

  v7 = v6;
  if ([*(a1 + 32) code] == -2)
  {
    v8 = [*(a1 + 32) domain];
    [v8 isEqualToString:*MEMORY[0x277CD4770]];
  }

  v9 = *(a1 + 48);
  v10 = *(v9 + 8);
  *(v9 + 8) = v7;
  v11 = v7;

  v12 = *(a1 + 32);
  (*(*(a1 + 56) + 16))();

  v13 = *MEMORY[0x277D85DE8];
}

- (void)clearContext
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      context = self->_context;
      v9 = 138412290;
      v10 = context;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: NPKFidoAuthCoordinator: clearing context: %@", &v9, 0xCu);
    }
  }

  [(LAContext *)self->_context invalidate];
  v7 = self->_context;
  self->_context = 0;

  v8 = *MEMORY[0x277D85DE8];
}

@end