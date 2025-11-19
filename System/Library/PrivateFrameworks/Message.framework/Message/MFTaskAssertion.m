@interface MFTaskAssertion
+ (id)log;
- (MFTaskAssertion)initWithName:(id)a3 expiration:(double)a4 preventIdleSleep:(BOOL)a5;
- (void)cancelTimer;
- (void)dealloc;
- (void)invalidate;
@end

@implementation MFTaskAssertion

- (void)invalidate
{
  [(BKSProcessAssertion *)self->_assertion invalidate];
  [(EFProcessTransaction *)self->_transaction invalidate];

  [(MFTaskAssertion *)self cancelTimer];
}

- (void)dealloc
{
  [(MFTaskAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = MFTaskAssertion;
  [(MFTaskAssertion *)&v3 dealloc];
}

- (void)cancelTimer
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }
}

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__MFTaskAssertion_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_34 != -1)
  {
    dispatch_once(&log_onceToken_34, block);
  }

  v2 = log_log_34;

  return v2;
}

void __22__MFTaskAssertion_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_34;
  log_log_34 = v1;
}

- (MFTaskAssertion)initWithName:(id)a3 expiration:(double)a4 preventIdleSleep:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v31.receiver = self;
  v31.super_class = MFTaskAssertion;
  v9 = [(MFTaskAssertion *)&v31 init];
  if (v9)
  {
    v10 = MFUserAgent();
    v11 = [v10 isMaild];

    if (v11)
    {
      v12 = [MEMORY[0x1E699B860] transactionWithDescription:v8];
      v13 = *(v9 + 1);
      *(v9 + 1) = v12;
    }

    else
    {
      v14 = MFUserAgent();
      v15 = [v14 isMobileMail];

      if (v15)
      {
LABEL_12:
        v25 = v9;
        goto LABEL_13;
      }

      if (v5)
      {
        v16 = 3;
      }

      else
      {
        v16 = 7;
      }

      v17 = objc_alloc(MEMORY[0x1E698D038]);
      v18 = getpid();
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __60__MFTaskAssertion_initWithName_expiration_preventIdleSleep___block_invoke;
      v29[3] = &unk_1E7AA74A8;
      v30 = v8;
      v19 = [v17 initWithPID:v18 flags:v16 reason:10004 name:v30 withHandler:v29];
      v20 = *(v9 + 2);
      *(v9 + 2) = v19;

      if (a4 > 0.0)
      {
        v21 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
        v22 = *(v9 + 3);
        *(v9 + 3) = v21;

        v23 = dispatch_time(0, (a4 * 1000000000.0));
        dispatch_source_set_timer(*(v9 + 3), v23, 0xFFFFFFFFFFFFFFFFLL, 0);
        v24 = *(v9 + 3);
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __60__MFTaskAssertion_initWithName_expiration_preventIdleSleep___block_invoke_5;
        v27[3] = &unk_1E7AA25C0;
        v28 = v9;
        dispatch_source_set_event_handler(v24, v27);
        dispatch_resume(*(v9 + 3));
      }

      v13 = v30;
    }

    goto LABEL_12;
  }

LABEL_13:

  return v9;
}

void __60__MFTaskAssertion_initWithName_expiration_preventIdleSleep___block_invoke(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = +[MFTaskAssertion log];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v10 = 138543362;
      v11 = v6;
      v7 = "Acquired task assertion: %{public}@";
LABEL_6:
      _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_DEFAULT, v7, &v10, 0xCu);
    }
  }

  else if (v5)
  {
    v8 = *(a1 + 32);
    v10 = 138543362;
    v11 = v8;
    v7 = "could not aquire task assertion: %{public}@";
    goto LABEL_6;
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end