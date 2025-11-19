@interface FCRecipeDraftAccessChecker
- (BOOL)canSynchronouslyCheckAccessToItem:(id)a3;
- (BOOL)hasAccessToItem:(id)a3 blockedReason:(unint64_t *)a4 error:(id *)a5;
- (BOOL)shouldShowAllDraftContent;
- (FCRecipeDraftAccessChecker)init;
- (FCRecipeDraftAccessChecker)initWithPrivateChannelMembershipController:(id)a3;
- (void)checkAccessToItem:(id)a3 withQualityOfService:(int64_t)a4 completion:(id)a5;
@end

@implementation FCRecipeDraftAccessChecker

- (FCRecipeDraftAccessChecker)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCRecipeDraftAccessChecker init]";
    v10 = 2080;
    v11 = "FCRecipeDraftAccessChecker.m";
    v12 = 1024;
    v13 = 24;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCRecipeDraftAccessChecker init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCRecipeDraftAccessChecker)initWithPrivateChannelMembershipController:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "privateChannelMembershipController != nil"];
    *buf = 136315906;
    v13 = "[FCRecipeDraftAccessChecker initWithPrivateChannelMembershipController:]";
    v14 = 2080;
    v15 = "FCRecipeDraftAccessChecker.m";
    v16 = 1024;
    v17 = 29;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v11.receiver = self;
  v11.super_class = FCRecipeDraftAccessChecker;
  v6 = [(FCAccessChecker *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_privateChannelMembershipController, a3);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)canSynchronouslyCheckAccessToItem:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "item != nil"];
    *buf = 136315906;
    v8 = "[FCRecipeDraftAccessChecker canSynchronouslyCheckAccessToItem:]";
    v9 = 2080;
    v10 = "FCRecipeDraftAccessChecker.m";
    v11 = 1024;
    v12 = 42;
    v13 = 2114;
    v14 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)hasAccessToItem:(id)a3 blockedReason:(unint64_t *)a4 error:(id *)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "item != nil"];
    *buf = 136315906;
    v15 = "[FCRecipeDraftAccessChecker hasAccessToItem:blockedReason:error:]";
    v16 = 2080;
    v17 = "FCRecipeDraftAccessChecker.m";
    v18 = 1024;
    v19 = 50;
    v20 = 2114;
    v21 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (![v6 isDraft] || (objc_msgSend(v6, "isLocalDraft") & 1) != 0 || -[FCRecipeDraftAccessChecker shouldShowAllDraftContent](self, "shouldShowAllDraftContent"))
  {
    v7 = 1;
  }

  else
  {
    v10 = [(FCRecipeDraftAccessChecker *)self privateChannelMembershipController];
    v11 = [v6 sourceChannel];
    v12 = [v11 identifier];
    v7 = [v10 isAllowedToSeeDraftsForChannelID:v12];
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)checkAccessToItem:(id)a3 withQualityOfService:(int64_t)a4 completion:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "item != nil"];
    *buf = 136315906;
    *&buf[4] = "[FCRecipeDraftAccessChecker checkAccessToItem:withQualityOfService:completion:]";
    v16 = 2080;
    v17 = "FCRecipeDraftAccessChecker.m";
    v18 = 1024;
    v19 = 70;
    v20 = 2114;
    v21 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v8)
    {
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completion != nil"];
    *buf = 136315906;
    *&buf[4] = "[FCRecipeDraftAccessChecker checkAccessToItem:withQualityOfService:completion:]";
    v16 = 2080;
    v17 = "FCRecipeDraftAccessChecker.m";
    v18 = 1024;
    v19 = 71;
    v20 = 2114;
    v21 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v14 = 0;
  *buf = 0;
  v9 = [(FCRecipeDraftAccessChecker *)self hasAccessToItem:v7 blockedReason:&v14 error:buf];
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 5;
  }

  v14 = v10;
  v8[2](v8, v9);

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)shouldShowAllDraftContent
{
  v2 = NFInternalBuild();
  if (v2)
  {
    v3 = NewsCoreUserDefaults();
    v4 = [v3 BOOLForKey:@"news.draft_content.show_drafts"];

    LOBYTE(v2) = v4;
  }

  return v2;
}

@end