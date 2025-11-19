@interface MSTriageAction
+ (id)_performAction:(id)a3 actionName:(id)a4;
+ (id)log;
+ (void)_performAction:(id)a3 undoManager:(id)a4 actionName:(id)a5;
- (EFFuture)changeActionFuture;
- (EMMessageRepository)messageRepository;
- (MSTriageAction)initWithMessageListSelection:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 delegate:(id)a6;
- (MSTriageAction)initWithOrigin:(int64_t)a3 actor:(int64_t)a4;
- (MSTriageAction)initWithQuery:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 delegate:(id)a6;
- (MSTriageActionDelegate)delegate;
- (void)performWithUndoManager:(id)a3 actionName:(id)a4 completion:(id)a5;
@end

@implementation MSTriageAction

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __21__MSTriageAction_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (MSTriageAction)initWithMessageListSelection:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 delegate:(id)a6
{
  v12 = a3;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = MSTriageAction;
  v14 = [(MSTriageAction *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_messageListItemSelection, a3);
    v15->_origin = a4;
    v15->_actor = a5;
    objc_storeWeak(&v15->_delegate, v13);
    v16 = [(MSTriageAction *)v15 messageRepository];

    if (!v16)
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:a2 object:v15 file:@"MSTriageAction.m" lineNumber:32 description:@"messageRepository cannot be nil. Either pass non-nil delegate or have selection.messageListItems not be empty."];
    }
  }

  return v15;
}

- (MSTriageAction)initWithQuery:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 delegate:(id)a6
{
  v11 = a3;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = MSTriageAction;
  v13 = [(MSTriageAction *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_actor = a5;
    v13->_query = v11;
    v13->_origin = a4;
    objc_storeWeak(&v13->_delegate, v12);
    v15 = [(MSTriageAction *)v14 messageRepository];

    if (!v15)
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      [v17 handleFailureInMethod:a2 object:v14 file:@"MSTriageAction.m" lineNumber:45 description:@"messageRepository cannot be nil. Either pass non-nil delegate or have selection.messageListItems not be empty."];
    }
  }

  return v14;
}

- (MSTriageAction)initWithOrigin:(int64_t)a3 actor:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = MSTriageAction;
  result = [(MSTriageAction *)&v7 init];
  if (result)
  {
    result->_origin = a3;
    result->_actor = a4;
  }

  return result;
}

- (EMMessageRepository)messageRepository
{
  v4 = [(MSTriageAction *)self messageListItemSelection];
  v5 = [v4 messageListItems];
  v6 = [v5 firstObject];

  v7 = [v6 repository];
  v8 = [(MSTriageAction *)self delegate];
  if (!v7)
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [v8 messageRepositoryForTriageAction:self];
    }

    else
    {
      v7 = 0;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MSTriageAction.m" lineNumber:72 description:{@"Expected messageRepository to be an EMMessageRepository, but was %@", objc_opt_class()}];
  }

  return v7;
}

- (EFFuture)changeActionFuture
{
  v2 = MEMORY[0x277D07150];
  v3 = [(MSTriageAction *)self _changeAction];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

- (void)performWithUndoManager:(id)a3 actionName:(id)a4 completion:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  [MSTriageAction _performAction:self undoManager:v10 actionName:v8];
  if (v9)
  {
    v9[2](v9);
  }
}

+ (void)_performAction:(id)a3 undoManager:(id)a4 actionName:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[MSTriageAction log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = v8;
    v25 = 2114;
    v26 = v10;
    _os_log_impl(&dword_257F8E000, v11, OS_LOG_TYPE_DEFAULT, "%@: Request to perform action: %{public}@", buf, 0x16u);
  }

  v12 = [MSTriageAction _performAction:v8 actionName:v10];
  v13 = v12;
  if (v12)
  {
    if (v9)
    {
      if ([v12 isValid])
      {
        v14 = +[MSTriageAction log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v24 = v8;
          v25 = 2114;
          v26 = v10;
          _os_log_impl(&dword_257F8E000, v14, OS_LOG_TYPE_DEFAULT, "%@: Register undo change action: %{public}@", buf, 0x16u);
        }

        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __56__MSTriageAction__performAction_undoManager_actionName___block_invoke;
        v19[3] = &unk_27985BB58;
        v20 = v13;
        v15 = v9;
        v21 = v15;
        v16 = v10;
        v22 = v16;
        [v15 registerUndoWithTarget:a1 handler:v19];
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

+ (id)_performAction:(id)a3 actionName:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D071A8] promise];
  v8 = [v5 messageRepository];
  v9 = [v5 changeActionFuture];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __44__MSTriageAction__performAction_actionName___block_invoke;
  v21[3] = &unk_27985BB80;
  v10 = v5;
  v22 = v10;
  v11 = v6;
  v23 = v11;
  v12 = v8;
  v24 = v12;
  v13 = v7;
  v25 = v13;
  [v9 addSuccessBlock:v21];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __44__MSTriageAction__performAction_actionName___block_invoke_19;
  v19[3] = &unk_27985BBA8;
  v14 = v10;
  v20 = v14;
  [v9 addFailureBlock:v19];
  v15 = [MSTriageUndoAction alloc];
  v16 = [v13 future];
  v17 = [(MSTriageUndoAction *)v15 initWithChangeActionFuture:v16 messageRepository:v12];

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