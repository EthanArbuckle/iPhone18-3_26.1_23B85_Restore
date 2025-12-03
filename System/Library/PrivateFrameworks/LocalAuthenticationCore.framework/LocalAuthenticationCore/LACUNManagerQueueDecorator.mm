@interface LACUNManagerQueueDecorator
- (LACUNManagerQueueDecorator)initWithManager:(id)manager replyQueue:(id)queue;
- (LACUNManagerQueueDecorator)initWithManager:(id)manager workQueue:(id)queue replyQueue:(id)replyQueue;
- (void)cancelAllNotificationsWithCompletion:(id)completion;
- (void)cancelNotificationsWithIdentifiers:(id)identifiers scheduledOnly:(BOOL)only completion:(id)completion;
- (void)notificationManager:(id)manager didRespondToNotification:(id)notification fromCategory:(id)category withAction:(id)action completionHandler:(id)handler;
- (void)postNotification:(id)notification completion:(id)completion;
@end

@implementation LACUNManagerQueueDecorator

- (LACUNManagerQueueDecorator)initWithManager:(id)manager replyQueue:(id)queue
{
  queueCopy = queue;
  managerCopy = manager;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [LACConcurrencyUtilities createUserInitiatedSerialQueueWithIdentifier:v9];

  v11 = [(LACUNManagerQueueDecorator *)self initWithManager:managerCopy workQueue:v10 replyQueue:queueCopy];
  return v11;
}

- (LACUNManagerQueueDecorator)initWithManager:(id)manager workQueue:(id)queue replyQueue:(id)replyQueue
{
  managerCopy = manager;
  queueCopy = queue;
  replyQueueCopy = replyQueue;
  v15.receiver = self;
  v15.super_class = LACUNManagerQueueDecorator;
  v12 = [(LACUNManagerQueueDecorator *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_manager, manager);
    [(LACUNManager *)v13->_manager setDelegate:v13];
    objc_storeStrong(&v13->_replyQueue, replyQueue);
    objc_storeStrong(&v13->_workQueue, queue);
  }

  return v13;
}

- (void)postNotification:(id)notification completion:(id)completion
{
  notificationCopy = notification;
  completionCopy = completion;
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__LACUNManagerQueueDecorator_postNotification_completion___block_invoke;
  v11[3] = &unk_1E7A95D70;
  objc_copyWeak(&v14, &location);
  v12 = notificationCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = notificationCopy;
  dispatch_async(workQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __58__LACUNManagerQueueDecorator_postNotification_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 2);
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __58__LACUNManagerQueueDecorator_postNotification_completion___block_invoke_2;
    v6[3] = &unk_1E7A957C0;
    objc_copyWeak(&v8, (a1 + 48));
    v7 = *(a1 + 40);
    [v4 postNotification:v5 completion:v6];

    objc_destroyWeak(&v8);
  }
}

void __58__LACUNManagerQueueDecorator_postNotification_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[4];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__LACUNManagerQueueDecorator_postNotification_completion___block_invoke_3;
    v7[3] = &unk_1E7A95798;
    v9 = *(a1 + 32);
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

uint64_t __58__LACUNManagerQueueDecorator_postNotification_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)cancelNotificationsWithIdentifiers:(id)identifiers scheduledOnly:(BOOL)only completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__LACUNManagerQueueDecorator_cancelNotificationsWithIdentifiers_scheduledOnly_completion___block_invoke;
  block[3] = &unk_1E7A97C00;
  objc_copyWeak(&v16, &location);
  onlyCopy = only;
  v14 = identifiersCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = identifiersCopy;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __90__LACUNManagerQueueDecorator_cancelNotificationsWithIdentifiers_scheduledOnly_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 2);
    v5 = *(a1 + 32);
    v6 = *(a1 + 56);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __90__LACUNManagerQueueDecorator_cancelNotificationsWithIdentifiers_scheduledOnly_completion___block_invoke_2;
    v7[3] = &unk_1E7A957C0;
    objc_copyWeak(&v9, (a1 + 48));
    v8 = *(a1 + 40);
    [v4 cancelNotificationsWithIdentifiers:v5 scheduledOnly:v6 completion:v7];

    objc_destroyWeak(&v9);
  }
}

void __90__LACUNManagerQueueDecorator_cancelNotificationsWithIdentifiers_scheduledOnly_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[4];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __90__LACUNManagerQueueDecorator_cancelNotificationsWithIdentifiers_scheduledOnly_completion___block_invoke_3;
    v7[3] = &unk_1E7A95798;
    v9 = *(a1 + 32);
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

uint64_t __90__LACUNManagerQueueDecorator_cancelNotificationsWithIdentifiers_scheduledOnly_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)cancelAllNotificationsWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__LACUNManagerQueueDecorator_cancelAllNotificationsWithCompletion___block_invoke;
  block[3] = &unk_1E7A957E8;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __67__LACUNManagerQueueDecorator_cancelAllNotificationsWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 2);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __67__LACUNManagerQueueDecorator_cancelAllNotificationsWithCompletion___block_invoke_2;
    v5[3] = &unk_1E7A957C0;
    objc_copyWeak(&v7, (a1 + 40));
    v6 = *(a1 + 32);
    [v4 cancelAllNotificationsWithCompletion:v5];

    objc_destroyWeak(&v7);
  }
}

void __67__LACUNManagerQueueDecorator_cancelAllNotificationsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[4];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __67__LACUNManagerQueueDecorator_cancelAllNotificationsWithCompletion___block_invoke_3;
    v7[3] = &unk_1E7A95798;
    v9 = *(a1 + 32);
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

uint64_t __67__LACUNManagerQueueDecorator_cancelAllNotificationsWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)notificationManager:(id)manager didRespondToNotification:(id)notification fromCategory:(id)category withAction:(id)action completionHandler:(id)handler
{
  notificationCopy = notification;
  categoryCopy = category;
  actionCopy = action;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  replyQueue = self->_replyQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __117__LACUNManagerQueueDecorator_notificationManager_didRespondToNotification_fromCategory_withAction_completionHandler___block_invoke;
  block[3] = &unk_1E7A97C28;
  objc_copyWeak(&v25, &location);
  block[4] = self;
  v21 = notificationCopy;
  v22 = categoryCopy;
  v23 = actionCopy;
  v24 = handlerCopy;
  v16 = handlerCopy;
  v17 = actionCopy;
  v18 = categoryCopy;
  v19 = notificationCopy;
  dispatch_async(replyQueue, block);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

uint64_t __117__LACUNManagerQueueDecorator_notificationManager_didRespondToNotification_fromCategory_withAction_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    WeakRetained = [*(*(a1 + 32) + 8) notificationManager:WeakRetained didRespondToNotification:*(a1 + 40) fromCategory:*(a1 + 48) withAction:*(a1 + 56) completionHandler:*(a1 + 64)];
    v3 = v5;
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v3);
}

@end