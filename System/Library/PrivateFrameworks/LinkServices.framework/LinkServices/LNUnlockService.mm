@interface LNUnlockService
- (LNUnlockService)initWithQueue:(id)a3;
- (void)dealloc;
- (void)requestUnlockIfNeeded:(id)a3;
@end

@implementation LNUnlockService

- (void)requestUnlockIfNeeded:(id)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_INFO, "Device unlock requested", buf, 2u);
  }

  v24 = @"ExtendedDeviceLockState";
  v25[0] = MEMORY[0x1E695E118];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v7 = MKBGetDeviceLockState();
  v8 = getLNLogCategoryConnection();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v7 != 3)
    {
      if (v7 == 6)
      {
        if (v9)
        {
          *buf = 0;
          v10 = "Requesting passcode unlock UI: device in assert delay";
LABEL_16:
          _os_log_impl(&dword_19763D000, v8, OS_LOG_TYPE_INFO, v10, buf, 2u);
        }
      }

      else if (v9)
      {
        *buf = 0;
        v10 = "Requesting passcode unlock UI";
        goto LABEL_16;
      }

      v15 = [(LNUnlockService *)self service];
      v16 = objc_opt_new();
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __41__LNUnlockService_requestUnlockIfNeeded___block_invoke_6;
      v19[3] = &unk_1E74B1FF0;
      v19[4] = self;
      v20 = v4;
      v17 = v4;
      [v15 requestPasscodeUnlockUIWithOptions:v16 withCompletion:v19];

      v14 = v20;
      goto LABEL_18;
    }

    if (v9)
    {
      *buf = 0;
      v11 = "Unlocking device is not required: key bag is disabled";
LABEL_12:
      _os_log_impl(&dword_19763D000, v8, OS_LOG_TYPE_INFO, v11, buf, 2u);
    }
  }

  else if (v9)
  {
    *buf = 0;
    v11 = "Unlocking device is not required: device is unlocked";
    goto LABEL_12;
  }

  v12 = [(LNUnlockService *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__LNUnlockService_requestUnlockIfNeeded___block_invoke;
  block[3] = &unk_1E74B1FA0;
  v22 = v4;
  v13 = v4;
  dispatch_async(v12, block);

  v14 = v22;
LABEL_18:

  v18 = *MEMORY[0x1E69E9840];
}

void __41__LNUnlockService_requestUnlockIfNeeded___block_invoke_6(uint64_t a1, int a2)
{
  v4 = getLNLogCategoryConnection();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      v6 = "Successfully unlocked";
LABEL_6:
      _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_INFO, v6, buf, 2u);
    }
  }

  else if (v5)
  {
    *buf = 0;
    v6 = "Failed to unlock device";
    goto LABEL_6;
  }

  v7 = [*(a1 + 32) queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__LNUnlockService_requestUnlockIfNeeded___block_invoke_7;
  v8[3] = &unk_1E74B1FC8;
  v9 = *(a1 + 40);
  v10 = a2;
  dispatch_async(v7, v8);
}

- (void)dealloc
{
  v3 = [(LNUnlockService *)self service];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = LNUnlockService;
  [(LNUnlockService *)&v4 dealloc];
}

- (LNUnlockService)initWithQueue:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = LNUnlockService;
  v6 = [(LNUnlockService *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = objc_alloc_init(MEMORY[0x1E69D4260]);
    service = v7->_service;
    v7->_service = v8;

    v10 = v7;
  }

  return v7;
}

@end