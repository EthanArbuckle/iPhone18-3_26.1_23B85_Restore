@interface HMDCoreFollowUpRemoveItemsOperation
- (HMDCoreFollowUpRemoveItemsOperation)initWithIdentifiersToRemove:(id)remove followUpController:(id)controller;
- (void)main;
@end

@implementation HMDCoreFollowUpRemoveItemsOperation

- (void)main
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    identifiersToRemove = [(HMDCoreFollowUpRemoveItemsOperation *)selfCopy identifiersToRemove];
    *buf = 138543618;
    v14 = v6;
    v15 = 2112;
    v16 = identifiersToRemove;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping advertisement for existing followup items: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  objc_initWeak(buf, selfCopy);
  followUpController = [(HMDCoreFollowUpRemoveItemsOperation *)selfCopy followUpController];
  identifiersToRemove2 = [(HMDCoreFollowUpRemoveItemsOperation *)selfCopy identifiersToRemove];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__HMDCoreFollowUpRemoveItemsOperation_main__block_invoke;
  v11[3] = &unk_27972ED20;
  objc_copyWeak(&v12, buf);
  [followUpController clearPendingFollowUpItemsWithUniqueIdentifiers:identifiersToRemove2 completion:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
  v10 = *MEMORY[0x277D85DE8];
}

void __43__HMDCoreFollowUpRemoveItemsOperation_main__block_invoke(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_autoreleasePoolPush();
  v8 = WeakRetained;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (a2)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v8 identifiersToRemove];
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully stopped advertising followup items: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [v8 finish];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v8 identifiersToRemove];
      v15 = [v5 shortDescription];
      v17 = 138543874;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to stop advertisement for followup items: %@, with error: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [v8 cancelWithError:v5];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (HMDCoreFollowUpRemoveItemsOperation)initWithIdentifiersToRemove:(id)remove followUpController:(id)controller
{
  removeCopy = remove;
  controllerCopy = controller;
  if (!controllerCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = controllerCopy;
  if (![removeCopy count])
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    [(HMDAssistantCharacteristicTuple *)v13 .cxx_destruct];
    return result;
  }

  v15.receiver = self;
  v15.super_class = HMDCoreFollowUpRemoveItemsOperation;
  v9 = [(HMFOperation *)&v15 initWithTimeout:0.0];
  if (v9)
  {
    v10 = [removeCopy copy];
    identifiersToRemove = v9->_identifiersToRemove;
    v9->_identifiersToRemove = v10;

    objc_storeStrong(&v9->_followUpController, controller);
  }

  return v9;
}

@end