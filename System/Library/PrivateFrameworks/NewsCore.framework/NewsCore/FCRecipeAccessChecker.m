@interface FCRecipeAccessChecker
- (FCRecipeAccessChecker)init;
- (FCRecipeAccessChecker)initWithAccessCheckers:(id)a3;
- (FCRecipeAccessChecker)initWithPrivateChannelMembershipController:(id)a3;
@end

@implementation FCRecipeAccessChecker

- (FCRecipeAccessChecker)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCRecipeAccessChecker init]";
    v10 = 2080;
    v11 = "FCRecipeAccessChecker.m";
    v12 = 1024;
    v13 = 20;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCRecipeAccessChecker init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCRecipeAccessChecker)initWithAccessCheckers:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v11 = "[FCRecipeAccessChecker initWithAccessCheckers:]";
    v12 = 2080;
    v13 = "FCRecipeAccessChecker.m";
    v14 = 1024;
    v15 = 25;
    v16 = 2114;
    v17 = v4;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCRecipeAccessChecker initWithAccessCheckers:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (FCRecipeAccessChecker)initWithPrivateChannelMembershipController:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "privateChannelMembershipController != nil"];
    *buf = 136315906;
    v16 = "[FCRecipeAccessChecker initWithPrivateChannelMembershipController:]";
    v17 = 2080;
    v18 = "FCRecipeAccessChecker.m";
    v19 = 1024;
    v20 = 30;
    v21 = 2114;
    v22 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = MEMORY[0x1E695DEC8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__FCRecipeAccessChecker_initWithPrivateChannelMembershipController___block_invoke;
  v13[3] = &unk_1E7C36D40;
  v14 = v4;
  v6 = v4;
  v7 = [v5 fc_array:v13];
  v12.receiver = self;
  v12.super_class = FCRecipeAccessChecker;
  v8 = [(FCMultiAccessChecker *)&v12 initWithAccessCheckers:v7];

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void __68__FCRecipeAccessChecker_initWithPrivateChannelMembershipController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  [v3 addObject:v4];

  v7 = [[FCStorefrontAccessChecker alloc] initWithPrivateChannelMembershipController:*(a1 + 32)];
  [v3 addObject:v7];
  v5 = objc_opt_new();
  [v3 addObject:v5];

  v6 = [[FCRecipeDraftAccessChecker alloc] initWithPrivateChannelMembershipController:*(a1 + 32)];
  [v3 addObject:v6];
}

@end