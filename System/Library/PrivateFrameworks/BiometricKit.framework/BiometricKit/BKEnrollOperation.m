@interface BKEnrollOperation
- (BKEnrollOperation)initWithDevice:(id)a3;
- (id)enrollResultInfoWithServerIdentity:(id)a3 details:(id)a4;
- (id)optionsDictionaryWithError:(id *)a3;
- (void)enrollResult:(id)a3 details:(id)a4 client:(unint64_t)a5;
- (void)operationInterrupted;
- (void)processEnrollFailReason:(int64_t)a3;
@end

@implementation BKEnrollOperation

- (BKEnrollOperation)initWithDevice:(id)a3
{
  v5.receiver = self;
  v5.super_class = BKEnrollOperation;
  v3 = [(BKOperation *)&v5 initWithDevice:a3];
  if (v3)
  {
    v3->_userID = getCurrentUserID();
  }

  return v3;
}

- (void)operationInterrupted
{
  [(BKEnrollOperation *)self processEnrollFailReason:2];
  v3.receiver = self;
  v3.super_class = BKEnrollOperation;
  [(BKOperation *)&v3 operationInterrupted];
}

- (id)optionsDictionaryWithError:(id *)a3
{
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = v4;
  credentialSet = self->_credentialSet;
  if (credentialSet)
  {
    [v4 setObject:credentialSet forKey:@"BKOptionAuthWithCredentialSet"];
  }

  accessoryGroup = self->_accessoryGroup;
  if (accessoryGroup)
  {
    v8 = [(BKAccessoryGroup *)accessoryGroup serverAccessoryGroup];
    [v5 setObject:v8 forKey:@"BKOptionEnrollAccessoryGroup"];
  }

  return v5;
}

void __45__BKEnrollOperation_startBioOperation_reply___block_invoke(uint64_t a1, uint64_t a2)
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

- (id)enrollResultInfoWithServerIdentity:(id)a3 details:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [BKEnrollResultInfo alloc];
  v9 = [(BKOperation *)self device];
  v10 = [(BKEnrollResultInfo *)v8 initWithServerIdentity:v7 details:v6 device:v9];

  return v10;
}

- (void)enrollResult:(id)a3 details:(id)a4 client:(unint64_t)a5
{
  v38 = *MEMORY[0x1E69E9840];
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
    *buf = 134218754;
    v31 = v8;
    v32 = 2112;
    v33 = v8;
    v34 = 2048;
    v35 = v9;
    v36 = 2048;
    v37 = a5;
    _os_log_impl(&dword_1C82AD000, v11, OS_LOG_TYPE_DEFAULT, "BKEnrollOperation::enrollResult:details:client: %p(%@), %p, %llu\n", buf, 0x2Au);
  }

  v12 = [(BKOperation *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(BKOperation *)self dispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__BKEnrollOperation_enrollResult_details_client___block_invoke;
    block[3] = &unk_1E8304208;
    block[4] = self;
    v29 = v8;
    dispatch_async(v14, block);
  }

  v15 = [(BKOperation *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v17 = [(BKEnrollOperation *)self enrollResultInfoWithServerIdentity:v8 details:v9];
    v18 = [(BKOperation *)self dispatchQueue];
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __49__BKEnrollOperation_enrollResult_details_client___block_invoke_2;
    v25 = &unk_1E8304208;
    v26 = self;
    v27 = v17;
    v19 = v17;
    dispatch_async(v18, &v22);
  }

  [(BKOperation *)self operationEndsWithReason:1, v22, v23, v24, v25, v26];
  if (__osLogTrace)
  {
    v20 = __osLogTrace;
  }

  else
  {
    v20 = v10;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v20, OS_LOG_TYPE_DEFAULT, "BKEnrollOperation::enrollResult:details:client: -> void\n", buf, 2u);
  }

  kdebug_trace();

  v21 = *MEMORY[0x1E69E9840];
}

void __49__BKEnrollOperation_enrollResult_details_client___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [BKIdentity alloc];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) device];
  v6 = [(BKIdentity *)v3 initWithServerIdentity:v4 device:v5];
  [v7 enrollOperation:v2 finishedWithIdentity:v6];
}

void __49__BKEnrollOperation_enrollResult_details_client___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 enrollOperation:*(a1 + 32) finishedWithEnrollResult:*(a1 + 40)];
}

- (void)processEnrollFailReason:(int64_t)a3
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
      _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKEnrollOperation::processEnrollFailReason: %ld => delegate:%p(%@)\n", buf, 0x20u);
    }

    v11 = [(BKOperation *)self dispatchQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__BKEnrollOperation_processEnrollFailReason___block_invoke;
    v13[3] = &unk_1E8303D98;
    v13[4] = self;
    v13[5] = a3;
    dispatch_async(v11, v13);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __45__BKEnrollOperation_processEnrollFailReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 enrollOperation:*(a1 + 32) failedWithReason:*(a1 + 40)];
}

void __50__BKEnrollOperation_statusMessage_details_client___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 enrollOperation:*(a1 + 32) percentCompleted:*(a1 + 40)];
}

void __50__BKEnrollOperation_statusMessage_details_client___block_invoke_161(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 enrollOperation:*(a1 + 32) requiredAuthorizationForAccessory:*(a1 + 40)];
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

- (void)statusMessage:details:client:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end