@interface FCPeopleAlsoReadFeedItemService
- (FCPeopleAlsoReadFeedItemService)init;
- (FCPeopleAlsoReadFeedItemService)initWithConfigurationManager:(id)manager contentContext:(id)context readingHistory:(id)history;
- (void)fetchFeedItemsWithCursor:(id)cursor feedItemHandler:(id)handler networkEventHandler:(id)eventHandler completionHandler:(id)completionHandler;
@end

@implementation FCPeopleAlsoReadFeedItemService

- (FCPeopleAlsoReadFeedItemService)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPeopleAlsoReadFeedItemService init]";
    v10 = 2080;
    v11 = "FCPeopleAlsoReadFeedItemService.m";
    v12 = 1024;
    v13 = 31;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPeopleAlsoReadFeedItemService init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPeopleAlsoReadFeedItemService)initWithConfigurationManager:(id)manager contentContext:(id)context readingHistory:(id)history
{
  v28 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  contextCopy = context;
  historyCopy = history;
  if (!managerCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "configurationManager"];
    *buf = 136315906;
    v21 = "[FCPeopleAlsoReadFeedItemService initWithConfigurationManager:contentContext:readingHistory:]";
    v22 = 2080;
    v23 = "FCPeopleAlsoReadFeedItemService.m";
    v24 = 1024;
    v25 = 38;
    v26 = 2114;
    v27 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (contextCopy)
    {
      goto LABEL_6;
    }
  }

  else if (contextCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "contentContext"];
    *buf = 136315906;
    v21 = "[FCPeopleAlsoReadFeedItemService initWithConfigurationManager:contentContext:readingHistory:]";
    v22 = 2080;
    v23 = "FCPeopleAlsoReadFeedItemService.m";
    v24 = 1024;
    v25 = 39;
    v26 = 2114;
    v27 = v17;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!historyCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "readingHistory"];
    *buf = 136315906;
    v21 = "[FCPeopleAlsoReadFeedItemService initWithConfigurationManager:contentContext:readingHistory:]";
    v22 = 2080;
    v23 = "FCPeopleAlsoReadFeedItemService.m";
    v24 = 1024;
    v25 = 40;
    v26 = 2114;
    v27 = v18;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v19.receiver = self;
  v19.super_class = FCPeopleAlsoReadFeedItemService;
  v12 = [(FCPeopleAlsoReadFeedItemService *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_configurationManager, manager);
    objc_storeStrong(&v13->_contentContext, context);
    objc_storeStrong(&v13->_readingHistory, history);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)fetchFeedItemsWithCursor:(id)cursor feedItemHandler:(id)handler networkEventHandler:(id)eventHandler completionHandler:(id)completionHandler
{
  cursorCopy = cursor;
  handlerCopy = handler;
  eventHandlerCopy = eventHandler;
  completionHandlerCopy = completionHandler;
  configurationManager = [(FCPeopleAlsoReadFeedItemService *)self configurationManager];
  possiblyUnfetchedAppConfiguration = [configurationManager possiblyUnfetchedAppConfiguration];

  if (objc_opt_respondsToSelector())
  {
    peopleAlsoReadConfiguration = [possiblyUnfetchedAppConfiguration peopleAlsoReadConfiguration];
    if (peopleAlsoReadConfiguration)
    {
      v17 = peopleAlsoReadConfiguration;
      v18 = [FCPeopleAlsoReadArticlesOperation alloc];
      contentContext = [(FCPeopleAlsoReadFeedItemService *)self contentContext];
      readingHistory = [(FCPeopleAlsoReadFeedItemService *)self readingHistory];
      v21 = [(FCPeopleAlsoReadArticlesOperation *)v18 initWithContentContext:contentContext configuration:v17 readingHistory:readingHistory cursor:cursorCopy];

      [(FCPeopleAlsoReadArticlesOperation *)v21 setFeedItemHandler:handlerCopy];
      objc_initWeak(&location, v21);
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __114__FCPeopleAlsoReadFeedItemService_fetchFeedItemsWithCursor_feedItemHandler_networkEventHandler_completionHandler___block_invoke_3;
      v25 = &unk_1E7C47970;
      objc_copyWeak(&v28, &location);
      v26 = eventHandlerCopy;
      v27 = completionHandlerCopy;
      [(FCPeopleAlsoReadArticlesOperation *)v21 setCompletionHandler:&v22];
      [(FCOperation *)v21 start:v22];

      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
    }

    else
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __114__FCPeopleAlsoReadFeedItemService_fetchFeedItemsWithCursor_feedItemHandler_networkEventHandler_completionHandler___block_invoke_2;
      v30[3] = &unk_1E7C379C8;
      v31 = completionHandlerCopy;
      __114__FCPeopleAlsoReadFeedItemService_fetchFeedItemsWithCursor_feedItemHandler_networkEventHandler_completionHandler___block_invoke_2(v30);

      v17 = 0;
    }
  }

  else
  {
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __114__FCPeopleAlsoReadFeedItemService_fetchFeedItemsWithCursor_feedItemHandler_networkEventHandler_completionHandler___block_invoke;
    v35 = &unk_1E7C379C8;
    v36 = completionHandlerCopy;
    v36[2](v36, 0);
    v17 = v36;
  }
}

void __114__FCPeopleAlsoReadFeedItemService_fetchFeedItemsWithCursor_feedItemHandler_networkEventHandler_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FCErrorDomain" code:44 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

void __114__FCPeopleAlsoReadFeedItemService_fetchFeedItemsWithCursor_feedItemHandler_networkEventHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained networkEvents];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        (*(*(a1 + 32) + 16))();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 40) + 16))();
  v11 = *MEMORY[0x1E69E9840];
}

@end