@interface FCArticleDraftAccessChecker
- (BOOL)canSynchronouslyCheckAccessToItem:(id)item;
- (BOOL)hasAccessToItem:(id)item blockedReason:(unint64_t *)reason error:(id *)error;
- (BOOL)shouldShowAllDraftContent;
- (FCArticleDraftAccessChecker)init;
- (FCArticleDraftAccessChecker)initWithPrivateChannelMembershipController:(id)controller;
- (void)checkAccessToItem:(id)item withQualityOfService:(int64_t)service completion:(id)completion;
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

- (FCArticleDraftAccessChecker)initWithPrivateChannelMembershipController:(id)controller
{
  v20 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (!controllerCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
    objc_storeStrong(&v6->_privateChannelMembershipController, controller);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)canSynchronouslyCheckAccessToItem:(id)item
{
  v17 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (!itemCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

  if (![itemCopy isDraft] || objc_msgSend(itemCopy, "isDraft") && (objc_msgSend(itemCopy, "isLocalDraft") & 1) != 0)
  {
    shouldShowAllDraftContent = 1;
  }

  else if ([itemCopy isDraft])
  {
    shouldShowAllDraftContent = [(FCArticleDraftAccessChecker *)self shouldShowAllDraftContent];
  }

  else
  {
    shouldShowAllDraftContent = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return shouldShowAllDraftContent;
}

- (BOOL)hasAccessToItem:(id)item blockedReason:(unint64_t *)reason error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (!itemCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

  if (![itemCopy isDraft] || objc_msgSend(itemCopy, "isDraft") && (objc_msgSend(itemCopy, "isLocalDraft") & 1) != 0 || -[FCArticleDraftAccessChecker shouldShowAllDraftContent](self, "shouldShowAllDraftContent"))
  {
    LOBYTE(error) = 1;
  }

  else if (error)
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FCAccessCheckerErrorDomain" code:0 userInfo:0];
    v11 = *error;
    *error = v10;

    LOBYTE(error) = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return error;
}

- (void)checkAccessToItem:(id)item withQualityOfService:(int64_t)service completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  completionCopy = completion;
  if (!itemCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

    if (completionCopy)
    {
      goto LABEL_6;
    }
  }

  else if (completionCopy)
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
  if ([(FCArticleDraftAccessChecker *)self canSynchronouslyCheckAccessToItem:itemCopy])
  {
    v18.receiver = self;
    v18.super_class = FCArticleDraftAccessChecker;
    [(FCAccessChecker *)&v18 checkAccessToItem:itemCopy withQualityOfService:service completion:completionCopy];
  }

  else
  {
    privateChannelMembershipController = [(FCArticleDraftAccessChecker *)self privateChannelMembershipController];
    identifier = [itemCopy identifier];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __81__FCArticleDraftAccessChecker_checkAccessToItem_withQualityOfService_completion___block_invoke;
    v15[3] = &unk_1E7C39930;
    v16 = itemCopy;
    v17 = completionCopy;
    [privateChannelMembershipController isAllowedToSeeArticleID:identifier completionBlock:v15];
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