@interface FCArticleAccessChecker
- (FCArticleAccessChecker)init;
- (FCArticleAccessChecker)initWithAccessCheckers:(id)a3;
- (FCArticleAccessChecker)initWithPaidAccessChecker:(id)a3 privateChannelMembershipController:(id)a4;
@end

@implementation FCArticleAccessChecker

- (FCArticleAccessChecker)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCArticleAccessChecker init]";
    v10 = 2080;
    v11 = "FCArticleAccessChecker.m";
    v12 = 1024;
    v13 = 25;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCArticleAccessChecker init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCArticleAccessChecker)initWithAccessCheckers:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v11 = "[FCArticleAccessChecker initWithAccessCheckers:]";
    v12 = 2080;
    v13 = "FCArticleAccessChecker.m";
    v14 = 1024;
    v15 = 30;
    v16 = 2114;
    v17 = v4;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCArticleAccessChecker initWithAccessCheckers:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (FCArticleAccessChecker)initWithPaidAccessChecker:(id)a3 privateChannelMembershipController:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "paidAccessChecker != nil"];
    *buf = 136315906;
    v22 = "[FCArticleAccessChecker initWithPaidAccessChecker:privateChannelMembershipController:]";
    v23 = 2080;
    v24 = "FCArticleAccessChecker.m";
    v25 = 1024;
    v26 = 36;
    v27 = 2114;
    v28 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "privateChannelMembershipController != nil"];
    *buf = 136315906;
    v22 = "[FCArticleAccessChecker initWithPaidAccessChecker:privateChannelMembershipController:]";
    v23 = 2080;
    v24 = "FCArticleAccessChecker.m";
    v25 = 1024;
    v26 = 37;
    v27 = 2114;
    v28 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v8 = MEMORY[0x1E695DEC8];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __87__FCArticleAccessChecker_initWithPaidAccessChecker_privateChannelMembershipController___block_invoke;
  v18[3] = &unk_1E7C3B110;
  v19 = v7;
  v20 = v6;
  v9 = v6;
  v10 = v7;
  v11 = [v8 fc_array:v18];
  v17.receiver = self;
  v17.super_class = FCArticleAccessChecker;
  v12 = [(FCMultiAccessChecker *)&v17 initWithAccessCheckers:v11];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

void __87__FCArticleAccessChecker_initWithPaidAccessChecker_privateChannelMembershipController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  [v3 addObject:v4];

  v8 = [[FCStorefrontAccessChecker alloc] initWithPrivateChannelMembershipController:*(a1 + 32)];
  [v3 addObject:v8];
  v5 = objc_opt_new();
  [v3 addObject:v5];

  v6 = [[FCPurchaseAccessChecker alloc] initWithPaidAccessChecker:*(a1 + 40)];
  [v3 addObject:v6];
  v7 = [[FCArticleDraftAccessChecker alloc] initWithPrivateChannelMembershipController:*(a1 + 32)];
  [v3 addObject:v7];
}

@end