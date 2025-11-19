@interface FCArticleDraftAccessChecker
- (BOOL)canSynchronouslyCheckAccessToItem:(id)a3;
- (BOOL)hasAccessToItem:(id)a3 blockedReason:(unint64_t *)a4 error:(id *)a5;
- (BOOL)shouldShowAllDraftContent;
- (FCArticleDraftAccessChecker)init;
- (FCArticleDraftAccessChecker)initWithPrivateChannelMembershipController:(id)a3;
- (void)checkAccessToItem:(id)a3 withQualityOfService:(int64_t)a4 completion:(id)a5;
@end

@implementation FCArticleDraftAccessChecker

- (FCArticleDraftAccessChecker)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCArticleDraftAccessChecker init]";
    v10 = 2080;
    v11 = "FCArticleDraftAccessChecker.m";
    v12 = 1024;
    v13 = 24;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCArticleDraftAccessChecker init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCArticleDraftAccessChecker)initWithPrivateChannelMembershipController:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "privateChannelMembershipController != nil"];
    *buf = 136315906;
    v13 = "[FCArticleDraftAccessChecker initWithPrivateChannelMembershipController:]";
    v14 = 2080;
    v15 = "FCArticleDraftAccessChecker.m";
    v16 = 1024;
    v17 = 29;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v11.receiver = self;
  v11.super_class = FCArticleDraftAccessChecker;
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
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "item != nil"];
    *buf = 136315906;
    v10 = "[FCArticleDraftAccessChecker canSynchronouslyCheckAccessToItem:]";
    v11 = 2080;
    v12 = "FCArticleDraftAccessChecker.m";
    v13 = 1024;
    v14 = 42;
    v15 = 2114;
    v16 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (![v4 isDraft] || objc_msgSend(v4, "isDraft") && (objc_msgSend(v4, "isLocalDraft") & 1) != 0)
  {
    v5 = 1;
  }

  else if ([v4 isDraft])
  {
    v5 = [(FCArticleDraftAccessChecker *)self shouldShowAllDraftContent];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)hasAccessToItem:(id)a3 blockedReason:(unint64_t *)a4 error:(id *)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "item != nil"];
    *buf = 136315906;
    v14 = "[FCArticleDraftAccessChecker hasAccessToItem:blockedReason:error:]";
    v15 = 2080;
    v16 = "FCArticleDraftAccessChecker.m";
    v17 = 1024;
    v18 = 50;
    v19 = 2114;
    v20 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (![v7 isDraft] || objc_msgSend(v7, "isDraft") && (objc_msgSend(v7, "isLocalDraft") & 1) != 0 || -[FCArticleDraftAccessChecker shouldShowAllDraftContent](self, "shouldShowAllDraftContent"))
  {
    LOBYTE(a5) = 1;
  }

  else if (a5)
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FCAccessCheckerErrorDomain" code:0 userInfo:0];
    v11 = *a5;
    *a5 = v10;

    LOBYTE(a5) = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return a5;
}

- (void)checkAccessToItem:(id)a3 withQualityOfService:(int64_t)a4 completion:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (!v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "item != nil"];
    *buf = 136315906;
    v20 = "[FCArticleDraftAccessChecker checkAccessToItem:withQualityOfService:completion:]";
    v21 = 2080;
    v22 = "FCArticleDraftAccessChecker.m";
    v23 = 1024;
    v24 = 72;
    v25 = 2114;
    v26 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v9)
    {
      goto LABEL_6;
    }
  }

  else if (v9)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completion != nil"];
    *buf = 136315906;
    v20 = "[FCArticleDraftAccessChecker checkAccessToItem:withQualityOfService:completion:]";
    v21 = 2080;
    v22 = "FCArticleDraftAccessChecker.m";
    v23 = 1024;
    v24 = 73;
    v25 = 2114;
    v26 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if ([(FCArticleDraftAccessChecker *)self canSynchronouslyCheckAccessToItem:v8])
  {
    v18.receiver = self;
    v18.super_class = FCArticleDraftAccessChecker;
    [(FCAccessChecker *)&v18 checkAccessToItem:v8 withQualityOfService:a4 completion:v9];
  }

  else
  {
    v10 = [(FCArticleDraftAccessChecker *)self privateChannelMembershipController];
    v11 = [v8 identifier];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __81__FCArticleDraftAccessChecker_checkAccessToItem_withQualityOfService_completion___block_invoke;
    v15[3] = &unk_1E7C39930;
    v16 = v8;
    v17 = v9;
    [v10 isAllowedToSeeArticleID:v11 completionBlock:v15];
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __81__FCArticleDraftAccessChecker_checkAccessToItem_withQualityOfService_completion___block_invoke(uint64_t a1, char a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    v3 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      v6 = [v4 identifier];
      v7 = [*(a1 + 32) sourceChannel];
      v8 = [v7 identifier];
      v11 = 138543618;
      v12 = v6;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "item %{public}@ is not accessible because it requires draft membership in channel %{public}@", &v11, 0x16u);
    }
  }

  result = (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x1E69E9840];
  return result;
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