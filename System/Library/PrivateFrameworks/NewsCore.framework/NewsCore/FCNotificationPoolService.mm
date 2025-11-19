@interface FCNotificationPoolService
- (FCNotificationPoolService)init;
- (FCNotificationPoolService)initWithContext:(id)a3 contentVariantProvider:(id)a4;
- (void)fetchPoolWithCompletionHandler:(id)a3;
@end

@implementation FCNotificationPoolService

- (FCNotificationPoolService)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCNotificationPoolService init]";
    v10 = 2080;
    v11 = "FCNotificationPoolService.m";
    v12 = 1024;
    v13 = 26;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCNotificationPoolService init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCNotificationPoolService)initWithContext:(id)a3 contentVariantProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FCNotificationPoolService;
  v9 = [(FCNotificationPoolService *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, a3);
    objc_storeStrong(&v10->_contentVariantProvider, a4);
  }

  return v10;
}

- (void)fetchPoolWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [FCNotificationPoolOperation alloc];
  v6 = [(FCNotificationPoolService *)self context];
  v7 = [(FCNotificationPoolService *)self contentVariantProvider];
  v8 = [(FCNotificationPoolOperation *)v5 initWithContext:v6 contentVariantProvider:v7];

  v9 = [MEMORY[0x1E695DF70] array];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__FCNotificationPoolService_fetchPoolWithCompletionHandler___block_invoke;
  v17[3] = &unk_1E7C420B8;
  v10 = v9;
  v18 = v10;
  [(FCNotificationPoolOperation *)v8 setItemHandler:v17];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__FCNotificationPoolService_fetchPoolWithCompletionHandler___block_invoke_2;
  v14[3] = &unk_1E7C39710;
  v15 = v10;
  v16 = v4;
  v11 = v10;
  v12 = v4;
  [(FCNotificationPoolOperation *)v8 setCompletionHandler:v14];
  v13 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
  [v13 addOperation:v8];
}

void __60__FCNotificationPoolService_fetchPoolWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6 = *(a1 + 40);
    v5 = v3;
    v6[2](v6, 0, v5);
  }

  else
  {
    v4 = [[FCNotificationPool alloc] initWithItems:*(a1 + 32)];
    (*(*(a1 + 40) + 16))();
  }
}

@end