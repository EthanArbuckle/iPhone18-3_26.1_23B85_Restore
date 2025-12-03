@interface HMMTRUIDialogPresenter
- (HMMTRUIDialogPresenter)initWithQueue:(id)queue context:(id)context;
- (id)context;
- (id)dialogDelegate;
- (void)requestUserPermissionForBridgeAccessory:(id)accessory completionHandler:(id)handler;
- (void)requestUserPermissionForUnauthenticatedAccessory:(id)accessory completionHandler:(id)handler;
@end

@implementation HMMTRUIDialogPresenter

- (id)dialogDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dialogDelegate);

  return WeakRetained;
}

- (id)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (void)requestUserPermissionForBridgeAccessory:(id)accessory completionHandler:(id)handler
{
  accessoryCopy = accessory;
  handlerCopy = handler;
  clientQueue = [(HMMTRUIDialogPresenter *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__HMMTRUIDialogPresenter_requestUserPermissionForBridgeAccessory_completionHandler___block_invoke;
  block[3] = &unk_2786F0EA8;
  block[4] = self;
  v12 = accessoryCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = accessoryCopy;
  dispatch_async(clientQueue, block);
}

void __84__HMMTRUIDialogPresenter_requestUserPermissionForBridgeAccessory_completionHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dialogDelegate];

  if (v2)
  {
    v3 = [*(a1 + 32) dialogDelegate];
    if (objc_opt_respondsToSelector())
    {
      v4 = *(a1 + 40);
      v5 = [*(a1 + 32) context];
      v6 = [*(a1 + 32) clientQueue];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __84__HMMTRUIDialogPresenter_requestUserPermissionForBridgeAccessory_completionHandler___block_invoke_2;
      v18[3] = &unk_2786EE088;
      v19 = *(a1 + 48);
      [v3 requestUserPermissionForBridgeAccessory:v4 withContext:v5 queue:v6 completionHandler:v18];

      v7 = v19;
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543362;
        v21 = v15;
        _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not respond to selector", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      v16 = *(a1 + 48);
      v7 = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      (*(v16 + 16))(v16, 1, v7);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@Dialog delegate is not set", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    (*(*(a1 + 48) + 16))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)requestUserPermissionForUnauthenticatedAccessory:(id)accessory completionHandler:(id)handler
{
  accessoryCopy = accessory;
  handlerCopy = handler;
  clientQueue = [(HMMTRUIDialogPresenter *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__HMMTRUIDialogPresenter_requestUserPermissionForUnauthenticatedAccessory_completionHandler___block_invoke;
  block[3] = &unk_2786F0EA8;
  block[4] = self;
  v12 = accessoryCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = accessoryCopy;
  dispatch_async(clientQueue, block);
}

void __93__HMMTRUIDialogPresenter_requestUserPermissionForUnauthenticatedAccessory_completionHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dialogDelegate];

  if (v2)
  {
    v3 = [*(a1 + 32) dialogDelegate];
    if (objc_opt_respondsToSelector())
    {
      v4 = *(a1 + 40);
      v5 = [*(a1 + 32) context];
      v6 = [*(a1 + 32) clientQueue];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __93__HMMTRUIDialogPresenter_requestUserPermissionForUnauthenticatedAccessory_completionHandler___block_invoke_2;
      v18[3] = &unk_2786EE088;
      v19 = *(a1 + 48);
      [v3 requestUserPermissionForUnauthenticatedAccessory:v4 withContext:v5 queue:v6 completionHandler:v18];

      v7 = v19;
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543362;
        v21 = v15;
        _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not respond to selector", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      v16 = *(a1 + 48);
      v7 = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      (*(v16 + 16))(v16, 1, v7);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@Dialog delegate is not set", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    (*(*(a1 + 48) + 16))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (HMMTRUIDialogPresenter)initWithQueue:(id)queue context:(id)context
{
  queueCopy = queue;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = HMMTRUIDialogPresenter;
  v9 = [(HMMTRUIDialogPresenter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientQueue, queue);
    objc_storeWeak(&v10->_context, contextCopy);
  }

  return v10;
}

@end