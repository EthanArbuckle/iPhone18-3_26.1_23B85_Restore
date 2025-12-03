@interface MSTriageAction
+ (id)_performAction:(id)action actionName:(id)name;
+ (id)log;
+ (void)_performAction:(id)action undoManager:(id)manager actionName:(id)name;
- (EFFuture)changeActionFuture;
- (EMMessageRepository)messageRepository;
- (MSTriageAction)initWithMessageListSelection:(id)selection origin:(int64_t)origin actor:(int64_t)actor delegate:(id)delegate;
- (MSTriageAction)initWithOrigin:(int64_t)origin actor:(int64_t)actor;
- (MSTriageAction)initWithQuery:(id)query origin:(int64_t)origin actor:(int64_t)actor delegate:(id)delegate;
- (MSTriageActionDelegate)delegate;
- (void)performWithUndoManager:(id)manager actionName:(id)name completion:(id)completion;
@end

@implementation MSTriageAction

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __21__MSTriageAction_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_3 != -1)
  {
    dispatch_once(&log_onceToken_3, block);
  }

  v2 = log_log_3;

  return v2;
}

void __21__MSTriageAction_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_3;
  log_log_3 = v1;
}

- (MSTriageAction)initWithMessageListSelection:(id)selection origin:(int64_t)origin actor:(int64_t)actor delegate:(id)delegate
{
  selectionCopy = selection;
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = MSTriageAction;
  v14 = [(MSTriageAction *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_messageListItemSelection, selection);
    v15->_origin = origin;
    v15->_actor = actor;
    objc_storeWeak(&v15->_delegate, delegateCopy);
    messageRepository = [(MSTriageAction *)v15 messageRepository];

    if (!messageRepository)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v15 file:@"MSTriageAction.m" lineNumber:32 description:@"messageRepository cannot be nil. Either pass non-nil delegate or have selection.messageListItems not be empty."];
    }
  }

  return v15;
}

- (MSTriageAction)initWithQuery:(id)query origin:(int64_t)origin actor:(int64_t)actor delegate:(id)delegate
{
  queryCopy = query;
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = MSTriageAction;
  v13 = [(MSTriageAction *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_actor = actor;
    v13->_query = queryCopy;
    v13->_origin = origin;
    objc_storeWeak(&v13->_delegate, delegateCopy);
    messageRepository = [(MSTriageAction *)v14 messageRepository];

    if (!messageRepository)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v14 file:@"MSTriageAction.m" lineNumber:45 description:@"messageRepository cannot be nil. Either pass non-nil delegate or have selection.messageListItems not be empty."];
    }
  }

  return v14;
}

- (MSTriageAction)initWithOrigin:(int64_t)origin actor:(int64_t)actor
{
  v7.receiver = self;
  v7.super_class = MSTriageAction;
  result = [(MSTriageAction *)&v7 init];
  if (result)
  {
    result->_origin = origin;
    result->_actor = actor;
  }

  return result;
}

- (EMMessageRepository)messageRepository
{
  messageListItemSelection = [(MSTriageAction *)self messageListItemSelection];
  messageListItems = [messageListItemSelection messageListItems];
  firstObject = [messageListItems firstObject];

  repository = [firstObject repository];
  delegate = [(MSTriageAction *)self delegate];
  if (!repository)
  {
    if (objc_opt_respondsToSelector())
    {
      repository = [delegate messageRepositoryForTriageAction:self];
    }

    else
    {
      repository = 0;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSTriageAction.m" lineNumber:72 description:{@"Expected messageRepository to be an EMMessageRepository, but was %@", objc_opt_class()}];
  }

  return repository;
}

- (EFFuture)changeActionFuture
{
  v2 = MEMORY[0x277D07150];
  _changeAction = [(MSTriageAction *)self _changeAction];
  v4 = [v2 futureWithResult:_changeAction];

  return v4;
}

- (void)performWithUndoManager:(id)manager actionName:(id)name completion:(id)completion
{
  managerCopy = manager;
  nameCopy = name;
  completionCopy = completion;
  [MSTriageAction _performAction:self undoManager:managerCopy actionName:nameCopy];
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

+ (void)_performAction:(id)action undoManager:(id)manager actionName:(id)name
{
  v27 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  managerCopy = manager;
  nameCopy = name;
  v11 = +[MSTriageAction log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = actionCopy;
    v25 = 2114;
    v26 = nameCopy;
    _os_log_impl(&dword_257F8E000, v11, OS_LOG_TYPE_DEFAULT, "%@: Request to perform action: %{public}@", buf, 0x16u);
  }

  v12 = [MSTriageAction _performAction:actionCopy actionName:nameCopy];
  v13 = v12;
  if (v12)
  {
    if (managerCopy)
    {
      if ([v12 isValid])
      {
        v14 = +[MSTriageAction log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v24 = actionCopy;
          v25 = 2114;
          v26 = nameCopy;
          _os_log_impl(&dword_257F8E000, v14, OS_LOG_TYPE_DEFAULT, "%@: Register undo change action: %{public}@", buf, 0x16u);
        }

        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __56__MSTriageAction__performAction_undoManager_actionName___block_invoke;
        v19[3] = &unk_27985BB58;
        v20 = v13;
        v15 = managerCopy;
        v21 = v15;
        v16 = nameCopy;
        v22 = v16;
        [v15 registerUndoWithTarget:self handler:v19];
        if (v16 && ([v15 isUndoing] & 1) == 0)
        {
          [v15 setActionName:v16];
        }

        v17 = v20;
      }

      else
      {
        v17 = +[MSTriageAction log];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          +[MSTriageAction _performAction:undoManager:actionName:];
        }
      }
    }

    else
    {
      v17 = +[MSTriageAction log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        +[MSTriageAction _performAction:undoManager:actionName:];
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

+ (id)_performAction:(id)action actionName:(id)name
{
  actionCopy = action;
  nameCopy = name;
  promise = [MEMORY[0x277D071A8] promise];
  messageRepository = [actionCopy messageRepository];
  changeActionFuture = [actionCopy changeActionFuture];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __44__MSTriageAction__performAction_actionName___block_invoke;
  v21[3] = &unk_27985BB80;
  v10 = actionCopy;
  v22 = v10;
  v11 = nameCopy;
  v23 = v11;
  v12 = messageRepository;
  v24 = v12;
  v13 = promise;
  v25 = v13;
  [changeActionFuture addSuccessBlock:v21];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __44__MSTriageAction__performAction_actionName___block_invoke_19;
  v19[3] = &unk_27985BBA8;
  v14 = v10;
  v20 = v14;
  [changeActionFuture addFailureBlock:v19];
  v15 = [MSTriageUndoAction alloc];
  future = [v13 future];
  v17 = [(MSTriageUndoAction *)v15 initWithChangeActionFuture:future messageRepository:v12];

  return v17;
}

void __44__MSTriageAction__performAction_actionName___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[MSTriageAction log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = [v3 ef_publicDescription];
    v12 = 138412802;
    v13 = v6;
    v14 = 2114;
    v15 = v5;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&dword_257F8E000, v4, OS_LOG_TYPE_DEFAULT, "%@: Performing change action: %{public}@ (%{public}@)", &v12, 0x20u);
  }

  v8 = [*(a1 + 32) isUndoSupported];
  v9 = *(a1 + 48);
  if (v8)
  {
    v10 = [v9 performMessageChangeActionReturningUndoAction:v3];
    [*(a1 + 56) finishWithFuture:v10];
  }

  else
  {
    [v9 performMessageChangeAction:v3];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __44__MSTriageAction__performAction_actionName___block_invoke_19(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[MSTriageAction log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = [v3 ef_publicDescription];
    __44__MSTriageAction__performAction_actionName___block_invoke_19_cold_1(v5, v6, v8, v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (MSTriageActionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)_performAction:undoManager:actionName:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_257F8E000, v0, v1, "%@: Unable to register undo action (%{public}@) - undo action is invalid");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_performAction:undoManager:actionName:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_257F8E000, v0, v1, "%@: Unable to register undo action (%{public}@) - undo manager is nil");
  v2 = *MEMORY[0x277D85DE8];
}

void __44__MSTriageAction__performAction_actionName___block_invoke_19_cold_1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_257F8E000, log, OS_LOG_TYPE_ERROR, "%@: Getting change action failed with error: %{public}@", buf, 0x16u);
}

@end