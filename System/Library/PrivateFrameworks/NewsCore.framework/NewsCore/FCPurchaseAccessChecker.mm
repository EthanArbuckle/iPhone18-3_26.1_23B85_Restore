@interface FCPurchaseAccessChecker
- (BOOL)canSynchronouslyCheckAccessToItem:(id)item;
- (BOOL)hasAccessToItem:(id)item blockedReason:(unint64_t *)reason error:(id *)error;
- (FCPurchaseAccessChecker)init;
- (FCPurchaseAccessChecker)initWithPaidAccessChecker:(id)checker;
- (void)checkAccessToItem:(id)item withQualityOfService:(int64_t)service completion:(id)completion;
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

- (FCPurchaseAccessChecker)initWithPaidAccessChecker:(id)checker
{
  v20 = *MEMORY[0x1E69E9840];
  checkerCopy = checker;
  if (!checkerCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
    objc_storeStrong(&v6->_paidAccessChecker, checker);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)canSynchronouslyCheckAccessToItem:(id)item
{
  v18 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (!itemCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

  paidAccessChecker = [(FCPurchaseAccessChecker *)self paidAccessChecker];
  isPreparedForUse = [paidAccessChecker isPreparedForUse];

  v7 = *MEMORY[0x1E69E9840];
  return isPreparedForUse;
}

- (BOOL)hasAccessToItem:(id)item blockedReason:(unint64_t *)reason error:(id *)error
{
  v28[2] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (!itemCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

  paidAccessChecker = [(FCPurchaseAccessChecker *)self paidAccessChecker];
  isPaid = [itemCopy isPaid];
  isBundlePaid = [itemCopy isBundlePaid];
  sourceChannel = [itemCopy sourceChannel];
  v12 = [paidAccessChecker canGetAccessToItemPaid:isPaid bundlePaid:isBundlePaid channel:sourceChannel];

  if (reason)
  {
    if ((v12 & 1) == 0)
    {
      *reason = 4;
      v13 = FCDefaultLog;
      if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        identifier = [itemCopy identifier];
        sourceChannel2 = [itemCopy sourceChannel];
        identifier2 = [sourceChannel2 identifier];
        isBundlePaid2 = [itemCopy isBundlePaid];
        v19 = @"does not have purchasing setup";
        *buf = 138543874;
        v24 = identifier;
        v25 = 2114;
        if (isBundlePaid2)
        {
          v19 = @"is not in the bundle";
        }

        v26 = identifier2;
        v27 = 2114;
        v28[0] = v19;
        _os_log_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_DEFAULT, "item %{public}@ is not purchaseable because its source channel %{public}@ %{public}@", buf, 0x20u);
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)checkAccessToItem:(id)item withQualityOfService:(int64_t)service completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  paidAccessChecker = [(FCPurchaseAccessChecker *)self paidAccessChecker];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__FCPurchaseAccessChecker_checkAccessToItem_withQualityOfService_completion___block_invoke;
  v12[3] = &unk_1E7C38FF0;
  v12[4] = self;
  v13 = itemCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = itemCopy;
  [paidAccessChecker prepareForUseWithCompletion:v12];
}

void __77__FCPurchaseAccessChecker_checkAccessToItem_withQualityOfService_completion___block_invoke(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  [*(a1 + 32) hasAccessToItem:*(a1 + 40) blockedReason:&v2 error:&v3];
  (*(*(a1 + 48) + 16))();
}

@end