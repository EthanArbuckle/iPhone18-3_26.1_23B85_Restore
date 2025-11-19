@interface BKMatchOperation
- (BKMatchOperation)initWithDevice:(id)a3;
- (id)matchResultInfoWithServerIdentity:(id)a3 details:(id)a4;
- (id)optionsDictionaryWithError:(id *)a3;
- (void)dealloc;
- (void)matchResult:(id)a3 details:(id)a4 client:(unint64_t)a5;
- (void)operationInterrupted;
- (void)processMatchFailReason:(int64_t)a3;
@end

@implementation BKMatchOperation

- (BKMatchOperation)initWithDevice:(id)a3
{
  v6.receiver = self;
  v6.super_class = BKMatchOperation;
  v3 = [(BKOperation *)&v6 initWithDevice:a3];
  v4 = v3;
  if (v3)
  {
    v3->_purpose = 1;
  }

  BKLogEvent(0x40000u);
  return v4;
}

- (void)dealloc
{
  BKLogEvent(0x40002u);
  v3.receiver = self;
  v3.super_class = BKMatchOperation;
  [(BKOperation *)&v3 dealloc];
}

- (void)operationInterrupted
{
  [(BKMatchOperation *)self processMatchFailReason:1];
  v3.receiver = self;
  v3.super_class = BKMatchOperation;
  [(BKOperation *)&v3 operationInterrupted];
}

- (id)optionsDictionaryWithError:(id *)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = v5;
  purpose = self->_purpose;
  if (purpose > 3)
  {
    switch(purpose)
    {
      case 4:
        if (!self->_credentialSet)
        {
          [BKMatchOperation optionsDictionaryWithError:a3];
          goto LABEL_45;
        }

        [v5 setObject:MEMORY[0x1E695E118] forKey:@"BKOptionMatchForUnlock"];
        credentialSet = self->_credentialSet;
        goto LABEL_14;
      case 5:
        [v5 setObject:MEMORY[0x1E695E118] forKey:@"BKOptionMatchForPreArm"];
        if (self->_captureOnly)
        {
          v23 = [MEMORY[0x1E696AD98] numberWithBool:1];
          [v6 setObject:v23 forKey:@"BKOptionMatchCaptureOnly"];
        }

LABEL_23:
        v11 = self->_useCase - 1;
        if (v11 <= 2)
        {
          [v6 setObject:*(&off_1E83043C8 + v11) forKey:@"BKOptionMatchUseCase"];
        }

        if (self->_priority)
        {
          v12 = [MEMORY[0x1E696AD98] numberWithInteger:?];
          [v6 setObject:v12 forKey:@"BKOptionPriority"];
        }

        if (self->_stopOnSuccess)
        {
          v13 = [MEMORY[0x1E696AD98] numberWithBool:1];
          [v6 setObject:v13 forKey:@"BKOptionMatchStopOnSuccess"];
        }

        if (self->_selectedIdentities)
        {
          v14 = [MEMORY[0x1E695DF70] array];
          if (!v14)
          {
            [BKMatchOperation optionsDictionaryWithError:a3];
LABEL_44:

            goto LABEL_45;
          }

          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v15 = self->_selectedIdentities;
          v16 = [(NSArray *)v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v27;
            while (2)
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v27 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = [*(*(&v26 + 1) + 8 * i) serverIdentity];
                if (!v20)
                {
                  [BKMatchOperation optionsDictionaryWithError:];
                  goto LABEL_44;
                }

                v21 = v20;
                [v14 addObject:v20];
              }

              v17 = [(NSArray *)v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          [v6 setObject:v14 forKey:@"BKOptionMatchSelectedIdentities"];
        }

        v22 = v6;
        goto LABEL_46;
      case 6:
        [v5 setObject:MEMORY[0x1E695E118] forKey:@"BKOptionMatchBypassPasscodeBiolockout"];
        credentialSet = self->_credentialSet;
        if (!credentialSet)
        {
          goto LABEL_23;
        }

        v9 = @"BKOptionAuthWithCredentialSet";
        goto LABEL_22;
    }

LABEL_15:
    if (__osLog)
    {
      v10 = __osLog;
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v32 = "0";
      v33 = 2048;
      v34 = 0;
      v35 = 2080;
      v36 = &unk_1C82F52EE;
      v37 = 2080;
      v38 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKOperation.m";
      v39 = 1024;
      v40 = 797;
      _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    setError(1, a3);
    goto LABEL_45;
  }

  if (purpose == 1)
  {
    goto LABEL_23;
  }

  if (purpose == 2)
  {
    credentialSet = MEMORY[0x1E695E118];
    v9 = @"BKOptionMatchForUnlock";
    goto LABEL_22;
  }

  if (purpose != 3)
  {
    goto LABEL_15;
  }

  credentialSet = self->_credentialSet;
  if (credentialSet)
  {
LABEL_14:
    v9 = @"BKOptionMatchForCredentialSet";
LABEL_22:
    [v6 setObject:credentialSet forKey:v9];
    goto LABEL_23;
  }

  [BKMatchOperation optionsDictionaryWithError:a3];
LABEL_45:
  v22 = 0;
LABEL_46:

  v24 = *MEMORY[0x1E69E9840];

  return v22;
}

void __44__BKMatchOperation_startBioOperation_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v5 = [BKErrorHelper errorWithOSStatus:a2];
    (*(v2 + 16))(v2, 0, v5);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 1, 0);
  }
}

- (id)matchResultInfoWithServerIdentity:(id)a3 details:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [BKMatchResultInfo alloc];
  v9 = [(BKOperation *)self device];
  v10 = [(BKMatchResultInfo *)v8 initWithServerIdentity:v7 details:v6 device:v9];

  return v10;
}

- (void)matchResult:(id)a3 details:(id)a4 client:(unint64_t)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  kdebug_trace();
  v10 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    log = v11;
    v28 = [v9 objectForKeyedSubscript:@"BKMatchDetailLockoutState"];
    v12 = [v28 intValue];
    v13 = [v9 objectForKeyedSubscript:@"BKMatchDetailUnlocked"];
    v14 = [v13 BOOLValue];
    v15 = [v9 objectForKeyedSubscript:@"BKMatchDetailCredentialAdded"];
    v16 = [v15 BOOLValue];
    [v9 objectForKeyedSubscript:@"BKMatchDetailResultIgnored"];
    v18 = v17 = a5;
    v19 = [v18 BOOLValue];
    *buf = 134219778;
    v32 = v8;
    v33 = 2112;
    v34 = v8;
    v35 = 2048;
    v36 = v9;
    v37 = 1024;
    v38 = v12;
    v10 = MEMORY[0x1E69E9C10];
    v39 = 1024;
    v40 = v14;
    v41 = 1024;
    v42 = v16;
    v43 = 1024;
    v44 = v19;
    v45 = 2048;
    v46 = v17;
    _os_log_impl(&dword_1C82AD000, log, OS_LOG_TYPE_DEFAULT, "BKMatchOperation::matchResult:withDictionary:client: %p(%@), %p(LockoutState:%d,Unlocked:%d,CredentialAdded:%d,Ignored:%d), %llu\n", buf, 0x42u);
  }

  v20 = [(BKOperation *)self delegate];
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    v22 = [(BKMatchOperation *)self matchResultInfoWithServerIdentity:v8 details:v9];
    v23 = [(BKOperation *)self dispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__BKMatchOperation_matchResult_details_client___block_invoke;
    block[3] = &unk_1E8304208;
    block[4] = self;
    v30 = v22;
    v24 = v22;
    dispatch_async(v23, block);
  }

  if (__osLogTrace)
  {
    v25 = __osLogTrace;
  }

  else
  {
    v25 = v10;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v25, OS_LOG_TYPE_DEFAULT, "BKMatchOperation::matchResult:withDictionary:client: -> void\n", buf, 2u);
  }

  kdebug_trace();

  v26 = *MEMORY[0x1E69E9840];
}

void __47__BKMatchOperation_matchResult_details_client___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 matchOperation:*(a1 + 32) matchedWithResult:*(a1 + 40)];
}

- (void)processMatchFailReason:(int64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [(BKOperation *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    if (__osLog)
    {
      v7 = __osLog;
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [(BKOperation *)self delegate];
      v10 = [(BKOperation *)self delegate];
      *buf = 134218498;
      v15 = a3;
      v16 = 2048;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKMatchOperation::processMatchFailReason: %ld => delegate:%p(%@)\n", buf, 0x20u);
    }

    v11 = [(BKOperation *)self dispatchQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __43__BKMatchOperation_processMatchFailReason___block_invoke;
    v13[3] = &unk_1E8303D98;
    v13[4] = self;
    v13[5] = a3;
    dispatch_async(v11, v13);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __43__BKMatchOperation_processMatchFailReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 matchOperation:*(a1 + 32) failedWithReason:*(a1 + 40)];
}

void __41__BKMatchOperation_statusMessage_client___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 matchOperation:*(a1 + 32) presenceDetectedInLockout:*(a1 + 40)];
}

- (id)optionsDictionaryWithError:(void *)a1 .cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v10);
  }

  result = setError(1, a1);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)optionsDictionaryWithError:(void *)a1 .cold.2(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v10);
  }

  result = setError(1, a1);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)optionsDictionaryWithError:.cold.3()
{
  OUTLINED_FUNCTION_13();
  v10 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  setError(1, v1);

  v8 = *MEMORY[0x1E69E9840];
}

- (id)optionsDictionaryWithError:(void *)a1 .cold.4(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v10);
  }

  result = setError(1, a1);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)startBioOperation:reply:.cold.1()
{
  OUTLINED_FUNCTION_13();
  v11 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v10);
  }

  v6 = OUTLINED_FUNCTION_2_4();
  result = v7(v6);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

@end