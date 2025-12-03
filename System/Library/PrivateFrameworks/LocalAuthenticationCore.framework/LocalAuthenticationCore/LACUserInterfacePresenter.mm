@interface LACUserInterfacePresenter
- (LACUserInterfacePresenter)initWithReplyQueue:(id)queue uiController:(id)controller;
- (void)presentUIForIdentifier:(int64_t)identifier request:(id)request completion:(id)completion;
@end

@implementation LACUserInterfacePresenter

- (LACUserInterfacePresenter)initWithReplyQueue:(id)queue uiController:(id)controller
{
  queueCopy = queue;
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = LACUserInterfacePresenter;
  v9 = [(LACUserInterfacePresenter *)&v15 init];
  if (v9)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [LACConcurrencyUtilities createUserInitiatedSerialQueueWithIdentifier:v11];
    workQueue = v9->_workQueue;
    v9->_workQueue = v12;

    objc_storeStrong(&v9->_replyQueue, queue);
    objc_storeStrong(&v9->_uiController, controller);
  }

  return v9;
}

- (void)presentUIForIdentifier:(int64_t)identifier request:(id)request completion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  if ((identifier & 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    options = [requestCopy options];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:1000];
    v12 = [options objectForKey:v11];
    bOOLValue = [v12 BOOLValue];

    v14 = LACLogUI();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (bOOLValue)
    {
      if (v15)
      {
        v16 = NSStringFromLACUserInterfaceRequestIdentifier(identifier);
        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(requestCopy, "identifier")}];
        *buf = 138412546;
        v39 = v16;
        v40 = 2114;
        v41 = v17;
        _os_log_impl(&dword_1B0233000, v14, OS_LOG_TYPE_DEFAULT, "Skipping UI for %@ rid: %{public}@, not interactive evaluation", buf, 0x16u);
      }

      replyQueue = self->_replyQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __71__LACUserInterfacePresenter_presentUIForIdentifier_request_completion___block_invoke_5;
      block[3] = &unk_1E7A96630;
      v34 = completionCopy;
      dispatch_async(replyQueue, block);
    }

    else
    {
      if (v15)
      {
        v26 = NSStringFromLACUserInterfaceRequestIdentifier(identifier);
        *buf = 138412290;
        v39 = v26;
        _os_log_impl(&dword_1B0233000, v14, OS_LOG_TYPE_DEFAULT, "Will present UI for %@", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      workQueue = self->_workQueue;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __71__LACUserInterfacePresenter_presentUIForIdentifier_request_completion___block_invoke_6;
      v29[3] = &unk_1E7A95EF0;
      objc_copyWeak(v32, buf);
      v30 = requestCopy;
      v32[1] = identifier;
      v31 = completionCopy;
      dispatch_async(workQueue, v29);

      objc_destroyWeak(v32);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v19 = LACLogUI();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [LACUserInterfacePresenter presentUIForIdentifier:identifier request:v19 completion:?];
    }

    v20 = MEMORY[0x1E696AEC0];
    v21 = [MEMORY[0x1E696AD98] numberWithInteger:identifier];
    v22 = [v20 stringWithFormat:@"Unsupported user interface request: %@", v21];

    v23 = [LACError errorWithCode:-1000 debugDescription:v22];
    v24 = self->_replyQueue;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __71__LACUserInterfacePresenter_presentUIForIdentifier_request_completion___block_invoke;
    v35[3] = &unk_1E7A95798;
    v36 = v23;
    v37 = completionCopy;
    v25 = v23;
    dispatch_async(v24, v35);
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __71__LACUserInterfacePresenter_presentUIForIdentifier_request_completion___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 3);
    v5 = [*(a1 + 32) contextID];
    v6 = [v4 userInterfaceWithUUID:v5];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __71__LACUserInterfacePresenter_presentUIForIdentifier_request_completion___block_invoke_2;
    v13[3] = &unk_1E7A96658;
    v15 = *(a1 + 56);
    v14 = *(a1 + 32);
    v7 = __71__LACUserInterfacePresenter_presentUIForIdentifier_request_completion___block_invoke_2(v13);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __71__LACUserInterfacePresenter_presentUIForIdentifier_request_completion___block_invoke_3;
    v9[3] = &unk_1E7A966A8;
    v12[1] = *(a1 + 56);
    objc_copyWeak(v12, (a1 + 48));
    v11 = *(a1 + 40);
    v8 = v6;
    v10 = v8;
    [v8 processRequest:v7 completion:v9];

    objc_destroyWeak(v12);
  }
}

LACUserInterfaceRequest *__71__LACUserInterfacePresenter_presentUIForIdentifier_request_completion___block_invoke_2(uint64_t a1)
{
  v1 = [[LACUserInterfaceRequest alloc] initWithIdentifier:*(a1 + 40) evaluationRequest:*(a1 + 32)];

  return v1;
}

void __71__LACUserInterfacePresenter_presentUIForIdentifier_request_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LACLogUI();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromLACUserInterfaceRequestIdentifier(*(a1 + 56));
    *buf = 138412546;
    v15 = v5;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_1B0233000, v4, OS_LOG_TYPE_DEFAULT, "Did dismiss UI for %@ with error: %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__LACUserInterfacePresenter_presentUIForIdentifier_request_completion___block_invoke_9;
    block[3] = &unk_1E7A96680;
    v13 = *(a1 + 40);
    v11 = v3;
    v12 = *(a1 + 32);
    dispatch_async(v8, block);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)presentUIForIdentifier:(uint64_t)a1 request:(uint64_t)a2 completion:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromLACUserInterfaceRequestIdentifier(a2);
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_1B0233000, a3, OS_LOG_TYPE_ERROR, "%@ cannot present UI for identifier: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end