@interface FAFamilyCircleChangeHandler
+ (void)_refetchFamilyWithContext:(id)a3 completion:(id)a4;
+ (void)handleDidRepairFamilyWithCompletion:(id)a3;
+ (void)handleDidSetupFamilyWithCompletion:(id)a3;
+ (void)handleURLResponse:(id)a3;
@end

@implementation FAFamilyCircleChangeHandler

+ (void)handleURLResponse:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v12 = 138412546;
    v13 = v7;
    v14 = 2080;
    v15 = "+[FAFamilyCircleChangeHandler handleURLResponse:]";
    _os_log_impl(&dword_1B70B0000, v5, OS_LOG_TYPE_DEFAULT, "%@ %s", &v12, 0x16u);
  }

  v8 = [v4 allHeaderFields];

  v9 = [v8 objectForKey:@"X-Apple-Family-Changed"];

  if (v9)
  {
    v10 = _FALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1B70B0000, v10, OS_LOG_TYPE_DEFAULT, "FACircleRemoteUIDelegate - Family state has changed", &v12, 2u);
    }

    [a1 _refetchFamilyWithContext:@"family_changed_header" completion:&__block_literal_global_1];
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (void)handleDidRepairFamilyWithCompletion:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138412546;
    v10 = v7;
    v11 = 2080;
    v12 = "+[FAFamilyCircleChangeHandler handleDidRepairFamilyWithCompletion:]";
    _os_log_impl(&dword_1B70B0000, v5, OS_LOG_TYPE_DEFAULT, "%@ %s", &v9, 0x16u);
  }

  [a1 _refetchFamilyWithContext:@"family_repair" completion:v4];
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)handleDidSetupFamilyWithCompletion:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138412546;
    v10 = v7;
    v11 = 2080;
    v12 = "+[FAFamilyCircleChangeHandler handleDidSetupFamilyWithCompletion:]";
    _os_log_impl(&dword_1B70B0000, v5, OS_LOG_TYPE_DEFAULT, "%@ %s", &v9, 0x16u);
  }

  [a1 _refetchFamilyWithContext:@"family_setup" completion:v4];
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)_refetchFamilyWithContext:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = _FALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138412546;
    v19 = v9;
    v20 = 2080;
    v21 = "+[FAFamilyCircleChangeHandler _refetchFamilyWithContext:completion:]";
    _os_log_impl(&dword_1B70B0000, v7, OS_LOG_TYPE_DEFAULT, "%@ %s: force fetching family changes", buf, 0x16u);
  }

  v10 = objc_alloc_init(FAFetchFamilyCircleRequest);
  [(FAFetchFamilyCircleRequest *)v10 setCachePolicy:1000];
  [(FAFetchFamilyCircleRequest *)v10 setContext:v6];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __68__FAFamilyCircleChangeHandler__refetchFamilyWithContext_completion___block_invoke;
  v16[3] = &unk_1E7CA4928;
  v17 = v5;
  v11 = v5;
  [(FAFetchFamilyCircleRequest *)v10 startRequestWithCompletionHandler:v16];
  v12 = _FALogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138412546;
    v19 = v14;
    v20 = 2080;
    v21 = "+[FAFamilyCircleChangeHandler _refetchFamilyWithContext:completion:]";
    _os_log_impl(&dword_1B70B0000, v12, OS_LOG_TYPE_DEFAULT, "%@ %s done", buf, 0x16u);
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __68__FAFamilyCircleChangeHandler__refetchFamilyWithContext_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end