@interface FCPurchaseAccessChecker
- (BOOL)canSynchronouslyCheckAccessToItem:(id)a3;
- (BOOL)hasAccessToItem:(id)a3 blockedReason:(unint64_t *)a4 error:(id *)a5;
- (FCPurchaseAccessChecker)init;
- (FCPurchaseAccessChecker)initWithPaidAccessChecker:(id)a3;
- (void)checkAccessToItem:(id)a3 withQualityOfService:(int64_t)a4 completion:(id)a5;
@end

@implementation FCPurchaseAccessChecker

- (FCPurchaseAccessChecker)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPurchaseAccessChecker init]";
    v10 = 2080;
    v11 = "FCPurchaseAccessChecker.m";
    v12 = 1024;
    v13 = 24;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPurchaseAccessChecker init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPurchaseAccessChecker)initWithPaidAccessChecker:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "paidAccessChecker != nil"];
    *buf = 136315906;
    v13 = "[FCPurchaseAccessChecker initWithPaidAccessChecker:]";
    v14 = 2080;
    v15 = "FCPurchaseAccessChecker.m";
    v16 = 1024;
    v17 = 29;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v11.receiver = self;
  v11.super_class = FCPurchaseAccessChecker;
  v6 = [(FCAccessChecker *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paidAccessChecker, a3);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)canSynchronouslyCheckAccessToItem:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "item != nil"];
    *buf = 136315906;
    v11 = "[FCPurchaseAccessChecker canSynchronouslyCheckAccessToItem:]";
    v12 = 2080;
    v13 = "FCPurchaseAccessChecker.m";
    v14 = 1024;
    v15 = 42;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [(FCPurchaseAccessChecker *)self paidAccessChecker];
  v6 = [v5 isPreparedForUse];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)hasAccessToItem:(id)a3 blockedReason:(unint64_t *)a4 error:(id *)a5
{
  v28[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "item != nil"];
    *buf = 136315906;
    v24 = "[FCPurchaseAccessChecker hasAccessToItem:blockedReason:error:]";
    v25 = 2080;
    v26 = "FCPurchaseAccessChecker.m";
    v27 = 1024;
    LODWORD(v28[0]) = 50;
    WORD2(v28[0]) = 2114;
    *(v28 + 6) = v22;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v8 = [(FCPurchaseAccessChecker *)self paidAccessChecker];
  v9 = [v7 isPaid];
  v10 = [v7 isBundlePaid];
  v11 = [v7 sourceChannel];
  v12 = [v8 canGetAccessToItemPaid:v9 bundlePaid:v10 channel:v11];

  if (a4)
  {
    if ((v12 & 1) == 0)
    {
      *a4 = 4;
      v13 = FCDefaultLog;
      if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        v15 = [v7 identifier];
        v16 = [v7 sourceChannel];
        v17 = [v16 identifier];
        v18 = [v7 isBundlePaid];
        v19 = @"does not have purchasing setup";
        *buf = 138543874;
        v24 = v15;
        v25 = 2114;
        if (v18)
        {
          v19 = @"is not in the bundle";
        }

        v26 = v17;
        v27 = 2114;
        v28[0] = v19;
        _os_log_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_DEFAULT, "item %{public}@ is not purchaseable because its source channel %{public}@ %{public}@", buf, 0x20u);
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)checkAccessToItem:(id)a3 withQualityOfService:(int64_t)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(FCPurchaseAccessChecker *)self paidAccessChecker];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__FCPurchaseAccessChecker_checkAccessToItem_withQualityOfService_completion___block_invoke;
  v12[3] = &unk_1E7C38FF0;
  v12[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  [v9 prepareForUseWithCompletion:v12];
}

void __77__FCPurchaseAccessChecker_checkAccessToItem_withQualityOfService_completion___block_invoke(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  [*(a1 + 32) hasAccessToItem:*(a1 + 40) blockedReason:&v2 error:&v3];
  (*(*(a1 + 48) + 16))();
}

@end