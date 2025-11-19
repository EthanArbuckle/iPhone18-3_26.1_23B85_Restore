@interface BKEnrollTouchIDOperation
- (BKEnrollTouchIDOperation)initWithDevice:(id)a3;
- (BOOL)startWithError:(id *)a3;
- (id)createEnrollProgressInfo:(unsigned int)a3;
- (void)dealloc;
- (void)enrollResult:(id)a3 details:(id)a4 client:(unint64_t)a5;
- (void)homeButtonPressed:(unint64_t)a3;
@end

@implementation BKEnrollTouchIDOperation

- (BKEnrollTouchIDOperation)initWithDevice:(id)a3
{
  v6.receiver = self;
  v6.super_class = BKEnrollTouchIDOperation;
  v3 = [(BKEnrollOperation *)&v6 initWithDevice:a3];
  v4 = v3;
  if (v3)
  {
    ComponentSetInit(&v3->_compSet.count);
  }

  return v4;
}

- (void)dealloc
{
  v3 = ComponentSetRelease(&self->_compSet.count);
  v4.receiver = self;
  v4.super_class = BKEnrollTouchIDOperation;
  [(BKOperation *)&v4 dealloc];
}

- (BOOL)startWithError:(id *)a3
{
  v4.receiver = self;
  v4.super_class = BKEnrollTouchIDOperation;
  return [(BKOperation *)&v4 startWithError:a3];
}

- (id)createEnrollProgressInfo:(unsigned int)a3
{
  v13 = *MEMORY[0x1E69E9840];
  memset(v12, 0, 512);
  memset(&v10[30], 0, 32);
  v4 = [(BiometricKitXPCClient *)self->super.super._xpcClient pullAlignmentData:0];
  v5 = v4;
  if (v4)
  {
    [v4 getBytes:v12 length:3060];
    if (SWORD3(v12[0]) >= 300)
    {
      [BKEnrollTouchIDOperation createEnrollProgressInfo:];
    }

    else
    {
      v6 = ComponentSetUpdate();
      if (v6)
      {
        [(BKEnrollTouchIDOperation *)v6 createEnrollProgressInfo:?];
      }

      else
      {
        v7 = GenerateEnrollProgressInfo(v10, a3, 0);
        if (v7)
        {
          goto LABEL_5;
        }

        [BKEnrollTouchIDOperation createEnrollProgressInfo:];
      }
    }
  }

  else
  {
    [BKEnrollTouchIDOperation createEnrollProgressInfo:];
  }

  v7 = v11;
LABEL_5:

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)enrollResult:(id)a3 details:(id)a4 client:(unint64_t)a5
{
  v5.receiver = self;
  v5.super_class = BKEnrollTouchIDOperation;
  [(BKEnrollOperation *)&v5 enrollResult:a3 details:a4 client:a5];
}

void __49__BKEnrollTouchIDOperation_statusMessage_client___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 enrollOperation:*(a1 + 32) progressedWithTouchIDInfo:*(a1 + 40)];
}

void __49__BKEnrollTouchIDOperation_statusMessage_client___block_invoke_17(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 fingerprintCaptureOperation:*(a1 + 32) encounteredCaptureError:*(a1 + 40)];
}

- (void)homeButtonPressed:(unint64_t)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v18 = a3;
    _os_log_impl(&dword_1C82AD000, v6, OS_LOG_TYPE_DEFAULT, "BKEnrollTouchIDOperation::homeButtonPressed: clientID:%llu\n", buf, 0xCu);
  }

  v7 = [(BKOperation *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    if (__osLog)
    {
      v9 = __osLog;
    }

    else
    {
      v9 = v5;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [(BKOperation *)self delegate];
      v12 = [(BKOperation *)self delegate];
      *buf = 134218242;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKEnrollTouchIDOperation::homeButtonPressed: homeButtonPressedInEnrollOperation => delegate:%p(%@)\n", buf, 0x16u);
    }

    v13 = [(BKOperation *)self dispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__BKEnrollTouchIDOperation_homeButtonPressed___block_invoke;
    block[3] = &unk_1E8303E78;
    block[4] = self;
    dispatch_async(v13, block);
  }

  if (__osLogTrace)
  {
    v14 = __osLogTrace;
  }

  else
  {
    v14 = v5;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v14, OS_LOG_TYPE_DEFAULT, "BKEnrollTouchIDOperation::homeButtonPressed: -> void\n", buf, 2u);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __46__BKEnrollTouchIDOperation_homeButtonPressed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 touchIDButtonPressedInOperation:*(a1 + 32)];
}

- (void)createEnrollProgressInfo:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v3, v4, v5, v6, v7, 0x30u);
  }

  *a2 = 0;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)createEnrollProgressInfo:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_6();
  v5 = *MEMORY[0x1E69E9840];
}

- (void)createEnrollProgressInfo:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_6();
  v5 = *MEMORY[0x1E69E9840];
}

- (void)createEnrollProgressInfo:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_6();
  v5 = *MEMORY[0x1E69E9840];
}

@end