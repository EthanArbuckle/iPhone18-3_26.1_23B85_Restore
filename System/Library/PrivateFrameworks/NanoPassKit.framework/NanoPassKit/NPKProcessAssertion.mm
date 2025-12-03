@interface NPKProcessAssertion
+ (id)acquireBackgroundTaskAssertionWithExplanation:(id)explanation acquiredHandler:(id)handler invalidationHandler:(id)invalidationHandler;
@end

@implementation NPKProcessAssertion

+ (id)acquireBackgroundTaskAssertionWithExplanation:(id)explanation acquiredHandler:(id)handler invalidationHandler:(id)invalidationHandler
{
  explanationCopy = explanation;
  handlerCopy = handler;
  invalidationHandlerCopy = invalidationHandler;
  v10 = NPKMyPid();
  v11 = objc_alloc(MEMORY[0x277CEEEA8]);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __105__NPKProcessAssertion_acquireBackgroundTaskAssertionWithExplanation_acquiredHandler_invalidationHandler___block_invoke;
  v21[3] = &unk_279945508;
  v12 = explanationCopy;
  v24 = v10;
  v22 = v12;
  v23 = handlerCopy;
  v13 = handlerCopy;
  v14 = [v11 initWithPID:v10 flags:1 reason:4 name:v12 withHandler:v21];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __105__NPKProcessAssertion_acquireBackgroundTaskAssertionWithExplanation_acquiredHandler_invalidationHandler___block_invoke_14;
  v18[3] = &unk_279945530;
  v19 = v12;
  v20 = invalidationHandlerCopy;
  v15 = invalidationHandlerCopy;
  v16 = v12;
  [v14 setInvalidationHandler:v18];

  return v14;
}

uint64_t __105__NPKProcessAssertion_acquireBackgroundTaskAssertionWithExplanation_acquiredHandler_invalidationHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = pk_Payment_log();
  v5 = v4;
  if (a2)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = pk_Payment_log();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v18 = 138412546;
    v19 = v8;
    v20 = 1024;
    v21 = v9;
    v10 = "Notice: Acquired process assertion for %@ event with %d.";
    v11 = v7;
    v12 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_8;
  }

  v13 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (!v13)
  {
    goto LABEL_10;
  }

  v7 = pk_Payment_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v14 = *(a1 + 32);
    v15 = *(a1 + 48);
    v18 = 138412546;
    v19 = v14;
    v20 = 1024;
    v21 = v15;
    v10 = "Error: Failed to acquire process assertion for %@ event: %d.";
    v11 = v7;
    v12 = OS_LOG_TYPE_ERROR;
LABEL_8:
    _os_log_impl(&dword_25B300000, v11, v12, v10, &v18, 0x12u);
  }

LABEL_9:

LABEL_10:
  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __105__NPKProcessAssertion_acquireBackgroundTaskAssertionWithExplanation_acquiredHandler_invalidationHandler___block_invoke_14(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Invalidated process assertion for %@ event.", &v8, 0xCu);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

@end