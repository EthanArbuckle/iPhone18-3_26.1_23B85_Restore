@interface NPKQuickPaymentSessionLocalAuthenticationCoordinator
- (NPKQuickPaymentSessionLocalAuthenticationCoordinator)initWithCallbackQueue:(id)a3;
- (NPKQuickPaymentSessionLocalAuthenticationCoordinatorCredentialDelegate)credentialDelegate;
- (id)_nameForLocalAuthenticationEvent:(int64_t)a3;
- (int64_t)_credentialTypeForEvent:(int64_t)a3;
- (void)_activateLocalAuthenticationEvent:(int64_t)a3;
- (void)_cancelLocalAuthentication;
- (void)_deactivateLocalAuthenticationEvent:(int64_t)a3;
- (void)_handleLocalAuthenticationPolicyEvaluatedWithContext:(id)a3 error:(id)a4;
- (void)_invokeCompletionHandlerForInvalidationWithError:(id)a3;
- (void)_presentNextLocalAuthenticationEvent;
- (void)beginLocalAuthenticationWithAccessControl:(__SecAccessControl *)a3 operation:(int64_t)a4 completion:(id)a5;
- (void)beginLocalAuthenticationWithPolicy:(int64_t)a3 completion:(id)a4;
- (void)event:(int64_t)a3 params:(id)a4 reply:(id)a5;
- (void)invalidateLocalAuthenticationContexts;
@end

@implementation NPKQuickPaymentSessionLocalAuthenticationCoordinator

- (NPKQuickPaymentSessionLocalAuthenticationCoordinator)initWithCallbackQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = NPKQuickPaymentSessionLocalAuthenticationCoordinator;
  v6 = [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)&v11 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v8 = dispatch_queue_create("com.apple.nanopassbook.lacoordinator", v7);
    localAuthenticationQueue = v6->_localAuthenticationQueue;
    v6->_localAuthenticationQueue = v8;

    objc_storeStrong(&v6->_callbackQueue, a3);
  }

  return v6;
}

- (void)beginLocalAuthenticationWithPolicy:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  localAuthenticationQueue = self->_localAuthenticationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__NPKQuickPaymentSessionLocalAuthenticationCoordinator_beginLocalAuthenticationWithPolicy_completion___block_invoke;
  block[3] = &unk_279946730;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(localAuthenticationQueue, block);
}

void __102__NPKQuickPaymentSessionLocalAuthenticationCoordinator_beginLocalAuthenticationWithPolicy_completion___block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = _Block_copy(*(a1 + 40));
      *buf = 138412290;
      v63 = v5;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: begin local authentication with completion:%@", buf, 0xCu);
    }
  }

  v6 = MEMORY[0x277D37D28];
  v7 = *MEMORY[0x277D38558];
  v61[0] = *MEMORY[0x277D38538];
  v61[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
  v59 = *MEMORY[0x277D383D8];
  v60 = *MEMORY[0x277D38460];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
  [v6 subjects:v8 sendEvent:v9];

  v10 = *(a1 + 32);
  if (v10[4])
  {
    v11 = pk_Payment_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = pk_Payment_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: existing completion handler", buf, 2u);
      }
    }

    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD4770] code:-9 userInfo:0];
    [*(a1 + 32) _invokeCompletionHandlerForInvalidationWithError:v14];

    v10 = *(a1 + 32);
  }

  if (!v10[5])
  {
    [v10 setCompletionHandler:*(a1 + 40)];
    if (*(*(a1 + 32) + 64))
    {
      v33 = pk_Payment_log();
      v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

      if (!v34)
      {
        goto LABEL_20;
      }

      v31 = pk_Payment_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v31, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: in-progress context", buf, 2u);
      }

      goto LABEL_19;
    }

    kdebug_trace();
    v31 = objc_alloc_init(MEMORY[0x277CD4790]);
    v35 = pk_Payment_log();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);

    if (v36)
    {
      v37 = pk_Payment_log();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v37, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: created new context", buf, 2u);
      }
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));

    v39 = pk_Payment_log();
    v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);

    if (WeakRetained)
    {
      if (v40)
      {
        v41 = pk_Payment_log();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B300000, v41, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: evaluating asynchronously", buf, 2u);
        }
      }

      [v31 setUiDelegate:*(a1 + 32)];
      v42 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __102__NPKQuickPaymentSessionLocalAuthenticationCoordinator_beginLocalAuthenticationWithPolicy_completion___block_invoke_62;
      block[3] = &unk_279945F18;
      v43 = v31;
      v44 = *(a1 + 48);
      v45 = *(a1 + 32);
      v51 = v43;
      v52 = v45;
      v53 = v44;
      dispatch_async(v42, block);

      objc_storeStrong((*(a1 + 32) + 64), v31);
      v30 = v51;
    }

    else
    {
      if (v40)
      {
        v46 = pk_Payment_log();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B300000, v46, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: evaluating synchronously", buf, 2u);
        }
      }

      [v31 setUiDelegate:*(a1 + 32)];
      v47 = *(a1 + 48);
      v49 = 0;
      v48 = [v31 evaluatePolicy:v47 options:0 error:&v49];
      v30 = v49;
      [*(a1 + 32) _handleLocalAuthenticationPolicyEvaluatedWithContext:v31 error:v30];
    }

LABEL_18:

LABEL_19:
    goto LABEL_20;
  }

  v15 = pk_Payment_log();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

  if (v16)
  {
    v17 = pk_Payment_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: already-completed context", buf, 2u);
    }
  }

  if (*(a1 + 40))
  {
    v18 = *(*(a1 + 32) + 40);
    v19 = *(*(a1 + 32) + 48);
    v20 = *(*(a1 + 32) + 56);
    v21 = *(a1 + 32);
    v22 = *(v21 + 40);
    *(v21 + 40) = 0;

    v23 = *(a1 + 32);
    v24 = *(v23 + 48);
    *(v23 + 48) = 0;

    v25 = *(a1 + 32);
    v26 = *(v25 + 56);
    *(v25 + 56) = 0;

    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __102__NPKQuickPaymentSessionLocalAuthenticationCoordinator_beginLocalAuthenticationWithPolicy_completion___block_invoke_59;
    v54[3] = &unk_279948930;
    v27 = *(a1 + 32);
    v28 = *(a1 + 40);
    v55 = v18;
    v56 = v19;
    v57 = v20;
    v58 = v28;
    v29 = v20;
    v30 = v19;
    v31 = v18;
    [v27 _performDelegateCallback:v54];

    goto LABEL_18;
  }

LABEL_20:
  v32 = *MEMORY[0x277D85DE8];
}

void __102__NPKQuickPaymentSessionLocalAuthenticationCoordinator_beginLocalAuthenticationWithPolicy_completion___block_invoke_62(int8x16_t *a1)
{
  v1 = a1[3].i64[0];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __102__NPKQuickPaymentSessionLocalAuthenticationCoordinator_beginLocalAuthenticationWithPolicy_completion___block_invoke_2;
  v3[3] = &unk_279948958;
  v2 = a1[2];
  v4 = vextq_s8(v2, v2, 8uLL);
  [v2.i64[0] evaluatePolicy:v1 options:0 reply:v3];
}

void __102__NPKQuickPaymentSessionLocalAuthenticationCoordinator_beginLocalAuthenticationWithPolicy_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__NPKQuickPaymentSessionLocalAuthenticationCoordinator_beginLocalAuthenticationWithPolicy_completion___block_invoke_3;
  block[3] = &unk_279945880;
  block[4] = v6;
  v10 = v5;
  v11 = v4;
  v8 = v4;
  dispatch_async(v7, block);
}

- (void)beginLocalAuthenticationWithAccessControl:(__SecAccessControl *)a3 operation:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  localAuthenticationQueue = self->_localAuthenticationQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __119__NPKQuickPaymentSessionLocalAuthenticationCoordinator_beginLocalAuthenticationWithAccessControl_operation_completion___block_invoke;
  v11[3] = &unk_2799489A8;
  v11[4] = self;
  v12 = v8;
  v13 = a3;
  v14 = a4;
  v10 = v8;
  dispatch_async(localAuthenticationQueue, v11);
}

void __119__NPKQuickPaymentSessionLocalAuthenticationCoordinator_beginLocalAuthenticationWithAccessControl_operation_completion___block_invoke(uint64_t a1)
{
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: begin local authentication with access control", buf, 2u);
    }
  }

  v5 = *(a1 + 32);
  if (v5[4])
  {
    v6 = pk_Payment_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = pk_Payment_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: existing completion handler", buf, 2u);
      }
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD4770] code:-9 userInfo:0];
    [*(a1 + 32) _invokeCompletionHandlerForInvalidationWithError:v9];

    v5 = *(a1 + 32);
  }

  if (!v5[5])
  {
    [v5 setCompletionHandler:*(a1 + 40)];
    if (*(*(a1 + 32) + 64))
    {
      v27 = pk_Payment_log();
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

      if (!v28)
      {
        return;
      }

      v26 = pk_Payment_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v26, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: in-progress context", buf, 2u);
      }
    }

    else
    {
      kdebug_trace();
      v29 = objc_alloc_init(MEMORY[0x277CD4790]);
      v30 = pk_Payment_log();
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);

      if (v31)
      {
        v32 = pk_Payment_log();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B300000, v32, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: created new context", buf, 2u);
        }
      }

      v33 = pk_Payment_log();
      v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

      if (v34)
      {
        v35 = pk_Payment_log();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B300000, v35, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: evaluating asynchronously", buf, 2u);
        }
      }

      [v29 setUiDelegate:*(a1 + 32)];
      v36 = dispatch_get_global_queue(0, 0);
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __119__NPKQuickPaymentSessionLocalAuthenticationCoordinator_beginLocalAuthenticationWithAccessControl_operation_completion___block_invoke_65;
      v42[3] = &unk_279948980;
      v37 = v29;
      v38 = *(a1 + 56);
      v45 = *(a1 + 48);
      v46 = v38;
      v39 = *(a1 + 32);
      v43 = v37;
      v44 = v39;
      dispatch_async(v36, v42);

      v40 = *(a1 + 32);
      v41 = *(v40 + 64);
      *(v40 + 64) = v37;
      v26 = v37;
    }

    goto LABEL_31;
  }

  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: already-completed context", buf, 2u);
    }
  }

  if (*(a1 + 40))
  {
    v13 = *(*(a1 + 32) + 40);
    v14 = *(*(a1 + 32) + 48);
    v15 = *(*(a1 + 32) + 56);
    v16 = *(a1 + 32);
    v17 = *(v16 + 40);
    *(v16 + 40) = 0;

    v18 = *(a1 + 32);
    v19 = *(v18 + 48);
    *(v18 + 48) = 0;

    v20 = *(a1 + 32);
    v21 = *(v20 + 56);
    *(v20 + 56) = 0;

    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __119__NPKQuickPaymentSessionLocalAuthenticationCoordinator_beginLocalAuthenticationWithAccessControl_operation_completion___block_invoke_64;
    v47[3] = &unk_279948930;
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    v48 = v13;
    v49 = v14;
    v50 = v15;
    v51 = v23;
    v24 = v15;
    v25 = v14;
    v26 = v13;
    [v22 _performDelegateCallback:v47];

LABEL_31:
  }
}

void __119__NPKQuickPaymentSessionLocalAuthenticationCoordinator_beginLocalAuthenticationWithAccessControl_operation_completion___block_invoke_65(int8x16_t *a1)
{
  v1 = a1[3].i64[0];
  v2 = a1[3].i64[1];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __119__NPKQuickPaymentSessionLocalAuthenticationCoordinator_beginLocalAuthenticationWithAccessControl_operation_completion___block_invoke_2;
  v4[3] = &unk_279948958;
  v3 = a1[2];
  v5 = vextq_s8(v3, v3, 8uLL);
  [v3.i64[0] evaluateAccessControl:v1 operation:v2 options:0 reply:v4];
}

void __119__NPKQuickPaymentSessionLocalAuthenticationCoordinator_beginLocalAuthenticationWithAccessControl_operation_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __119__NPKQuickPaymentSessionLocalAuthenticationCoordinator_beginLocalAuthenticationWithAccessControl_operation_completion___block_invoke_3;
  block[3] = &unk_279945880;
  block[4] = v6;
  v10 = v5;
  v11 = v4;
  v8 = v4;
  dispatch_async(v7, block);
}

- (void)invalidateLocalAuthenticationContexts
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: requested invalidate context", buf, 2u);
    }
  }

  localAuthenticationQueue = self->_localAuthenticationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__NPKQuickPaymentSessionLocalAuthenticationCoordinator_invalidateLocalAuthenticationContexts__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(localAuthenticationQueue, block);
}

void __93__NPKQuickPaymentSessionLocalAuthenticationCoordinator_invalidateLocalAuthenticationContexts__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(v5 + 40);
      v7 = *(v5 + 64);
      v13 = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: invalidating context completed:%@ inProgress:%@", &v13, 0x16u);
    }
  }

  [*(*(a1 + 32) + 40) invalidate];
  v8 = *(a1 + 32);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  [*(*(a1 + 32) + 64) invalidate];
  v10 = *(a1 + 32);
  v11 = *(v10 + 64);
  *(v10 + 64) = 0;

  v12 = *MEMORY[0x277D85DE8];
}

- (void)event:(int64_t)a3 params:(id)a4 reply:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:&unk_286CE7738];
  v9 = pk_Payment_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_Payment_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self _nameForLocalAuthenticationEvent:a3];
      if (v8)
      {
        if ([v8 BOOLValue])
        {
          v13 = @"activated";
        }

        else
        {
          v13 = @"deactivated";
        }
      }

      else
      {
        v13 = @"received";
      }

      v14 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
      *buf = 138413058;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      v25 = 2112;
      v26 = v14;
      v27 = 2112;
      v28 = v7;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: LocalAuthentication UI ***** %@ %@ ***** - event: %@ params: %@", buf, 0x2Au);
    }
  }

  if (a3)
  {
    localAuthenticationQueue = self->_localAuthenticationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__NPKQuickPaymentSessionLocalAuthenticationCoordinator_event_params_reply___block_invoke;
    block[3] = &unk_279945F18;
    v18 = v8;
    v19 = self;
    v20 = a3;
    dispatch_async(localAuthenticationQueue, block);
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __75__NPKQuickPaymentSessionLocalAuthenticationCoordinator_event_params_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) BOOLValue];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v2)
  {

    return [v3 _activateLocalAuthenticationEvent:v4];
  }

  else
  {

    return [v3 _deactivateLocalAuthenticationEvent:v4];
  }
}

- (void)_handleLocalAuthenticationPolicyEvaluatedWithContext:(id)a3 error:(id)a4
{
  v44[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  kdebug_trace();
  dispatch_assert_queue_V2(self->_localAuthenticationQueue);
  if (v7)
  {
    v8 = MEMORY[0x277D37D28];
    v9 = *MEMORY[0x277D38558];
    v41[0] = *MEMORY[0x277D38538];
    v41[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
    v39 = *MEMORY[0x277D383D8];
    v40 = *MEMORY[0x277D383E8];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    [v8 subjects:v10 sendEvent:v11];
    v12 = 0;
  }

  else
  {
    v12 = [(LAContext *)v6 externalizedContext];
    v13 = MEMORY[0x277D37D28];
    v14 = *MEMORY[0x277D38558];
    v44[0] = *MEMORY[0x277D38538];
    v44[1] = v14;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
    v42 = *MEMORY[0x277D383D8];
    v43 = *MEMORY[0x277D38400];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    [v13 subjects:v10 sendEvent:v11];
  }

  v15 = _Block_copy(self->_completionHandler);
  v16 = pk_Payment_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    if (v17)
    {
      v18 = pk_Payment_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = v7;
        _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: have completion handler for evaluate policy with error:%@", buf, 0xCu);
      }
    }

    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __115__NPKQuickPaymentSessionLocalAuthenticationCoordinator__handleLocalAuthenticationPolicyEvaluatedWithContext_error___block_invoke;
    v32[3] = &unk_279948930;
    v33 = v6;
    v34 = v12;
    v35 = v7;
    v36 = v15;
    v20 = v7;
    v21 = v12;
    v22 = v6;
    [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self _performDelegateCallback:v32];

    completedError = v36;
  }

  else
  {
    if (v17)
    {
      v24 = pk_Payment_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = v7;
        _os_log_impl(&dword_25B300000, v24, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: no completion handler for evaluate policy with error:%@", buf, 0xCu);
      }
    }

    completedContext = self->_completedContext;
    self->_completedContext = v6;
    v26 = v6;

    completedCredential = self->_completedCredential;
    self->_completedCredential = v12;
    v28 = v12;

    completedError = self->_completedError;
    self->_completedError = v7;
    v29 = v7;
  }

  inProgressContext = self->_inProgressContext;
  self->_inProgressContext = 0;

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_activateLocalAuthenticationEvent:(int64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_localAuthenticationQueue);
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = a3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Activating local authentication event %ld", &v13, 0xCu);
    }
  }

  v8 = [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self pendingLocalAuthenticationEvents];

  if (!v8)
  {
    v9 = [MEMORY[0x277CBEB18] array];
    [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self setPendingLocalAuthenticationEvents:v9];
  }

  v10 = [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self pendingLocalAuthenticationEvents];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v10 addObject:v11];

  [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self _presentNextLocalAuthenticationEvent];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_deactivateLocalAuthenticationEvent:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_localAuthenticationQueue);
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = a3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: Deactivating local authentication with event %ld", buf, 0xCu);
    }
  }

  v8 = [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self activeLocalAuthenticationEvent];
  v9 = v8;
  if (v8 && [v8 integerValue] == a3)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __92__NPKQuickPaymentSessionLocalAuthenticationCoordinator__deactivateLocalAuthenticationEvent___block_invoke;
    v13[3] = &unk_279945830;
    v13[4] = self;
    v13[5] = a3;
    [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self _performDelegateCallback:v13];
    [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self setActiveLocalAuthenticationEvent:0];
  }

  v10 = [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self pendingLocalAuthenticationEvents];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v10 removeObject:v11];

  [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self _presentNextLocalAuthenticationEvent];
  v12 = *MEMORY[0x277D85DE8];
}

void __92__NPKQuickPaymentSessionLocalAuthenticationCoordinator__deactivateLocalAuthenticationEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) credentialDelegate];
  [v2 localAuthenticationCoordinator:*(a1 + 32) cancelRequestForCredentialOfType:{objc_msgSend(*(a1 + 32), "_credentialTypeForEvent:", *(a1 + 40))}];
}

- (void)_presentNextLocalAuthenticationEvent
{
  dispatch_assert_queue_V2(self->_localAuthenticationQueue);
  v9 = [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self pendingLocalAuthenticationEvents];
  if ([v9 count])
  {
    v3 = [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self activeLocalAuthenticationEvent];

    if (!v3)
    {
      v4 = [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self pendingLocalAuthenticationEvents];
      v5 = [v4 firstObject];
      v6 = [v5 integerValue];

      v7 = [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self pendingLocalAuthenticationEvents];
      [v7 removeObjectAtIndex:0];

      if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v8 = [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self _credentialTypeForEvent:v6];
        objc_initWeak(&location, self);
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __92__NPKQuickPaymentSessionLocalAuthenticationCoordinator__presentNextLocalAuthenticationEvent__block_invoke;
        v10[3] = &unk_279948A20;
        v10[4] = self;
        v11[1] = v8;
        objc_copyWeak(v11, &location);
        v11[2] = v6;
        [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self _performDelegateCallback:v10];
        objc_destroyWeak(v11);
        objc_destroyWeak(&location);
      }
    }
  }

  else
  {
  }
}

void __92__NPKQuickPaymentSessionLocalAuthenticationCoordinator__presentNextLocalAuthenticationEvent__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) credentialDelegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __92__NPKQuickPaymentSessionLocalAuthenticationCoordinator__presentNextLocalAuthenticationEvent__block_invoke_2;
  v5[3] = &unk_2799489F8;
  objc_copyWeak(&v6, (a1 + 40));
  v7 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
  [v2 localAuthenticationCoordinator:v3 requestsCredentialOfType:v4 completion:v5];

  objc_destroyWeak(&v6);
}

void __92__NPKQuickPaymentSessionLocalAuthenticationCoordinator__presentNextLocalAuthenticationEvent__block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v8 = [v5 dataUsingEncoding:4];
      v9 = [v7 inProgressContext];
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __92__NPKQuickPaymentSessionLocalAuthenticationCoordinator__presentNextLocalAuthenticationEvent__block_invoke_3;
      v12[3] = &unk_2799489D0;
      objc_copyWeak(v13, (a1 + 32));
      v13[1] = *(a1 + 40);
      [v9 setCredential:v8 forProcessedEvent:v10 credentialType:v11 reply:v12];

      objc_destroyWeak(v13);
    }

    else
    {
      [WeakRetained _cancelLocalAuthentication];
    }
  }
}

void __92__NPKQuickPaymentSessionLocalAuthenticationCoordinator__presentNextLocalAuthenticationEvent__block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [WeakRetained _nameForLocalAuthenticationEvent:*(a1 + 40)];
      if (a2)
      {
        v11 = @"success";
      }

      else
      {
        v11 = [v5 description];
      }

      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: setCredential for %@ returned %@", &v13, 0x16u);
      if ((a2 & 1) == 0)
      {
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_cancelLocalAuthentication
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: Cancelling authentication", v7, 2u);
    }
  }

  v6 = [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self inProgressContext];
  [v6 invalidate];

  [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self setInProgressContext:0];
}

- (void)_invokeCompletionHandlerForInvalidationWithError:(id)a3
{
  v4 = a3;
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    v6 = _Block_copy(completionHandler);
    v7 = self->_completionHandler;
    self->_completionHandler = 0;

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __105__NPKQuickPaymentSessionLocalAuthenticationCoordinator__invokeCompletionHandlerForInvalidationWithError___block_invoke;
    v9[3] = &unk_279946670;
    v11 = v6;
    v10 = v4;
    v8 = v6;
    [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self _performDelegateCallback:v9];
  }
}

- (int64_t)_credentialTypeForEvent:(int64_t)a3
{
  v3 = -2;
  if (a3 != 3)
  {
    v3 = 0;
  }

  if (a3 == 2)
  {
    return -1;
  }

  else
  {
    return v3;
  }
}

- (id)_nameForLocalAuthenticationEvent:(int64_t)a3
{
  if (a3 > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_279948A40 + a3);
  }
}

- (NPKQuickPaymentSessionLocalAuthenticationCoordinatorCredentialDelegate)credentialDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_credentialDelegate);

  return WeakRetained;
}

@end