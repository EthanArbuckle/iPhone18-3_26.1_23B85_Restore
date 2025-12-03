@interface HMDObjectLookup
+ (id)logCategory;
- (HMDObjectLookup)initWithWorkQueue:(id)queue;
- (id)_lookUpObjectWithUUID:(id)d applyObjectChange:(id)change previous:(id)previous result:(id)result completionHandler:(id)handler;
- (void)applyChange:(id)change previous:(id)previous onObject:(id)object result:(id)result completionHandler:(id)handler;
- (void)lookUpAndApplyObjectChange:(id)change previous:(id)previous result:(id)result completionHandler:(id)handler;
- (void)resetObjects;
@end

@implementation HMDObjectLookup

- (void)applyChange:(id)change previous:(id)previous onObject:(id)object result:(id)result completionHandler:(id)handler
{
  v54 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  previousCopy = previous;
  objectCopy = object;
  resultCopy = result;
  handlerCopy = handler;
  v15 = objectCopy;
  if ([v15 conformsToProtocol:&unk_286636BC0])
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v18 = objc_autoreleasePoolPush();
  selfCopy = self;
  v20 = HMFGetOSLogHandle();
  v21 = v20;
  if (v17)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      change = [changeCopy change];
      uuid = [change uuid];
      *buf = 138543618;
      v51 = v22;
      v52 = 2112;
      v53 = uuid;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Applying object change with UUID %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    objc_initWeak(buf, selfCopy);
    message = [changeCopy message];
    v26 = message;
    if (message)
    {
      if (!handlerCopy)
      {
LABEL_20:
        change2 = [changeCopy change];
        v39 = [change2 objectChangeType] == 3;

        change3 = [changeCopy change];
        if (v39)
        {
          [v17 transactionObjectRemoved:change3 message:v26];
        }

        else
        {
          [v17 transactionObjectUpdated:previousCopy newValues:change3 message:v26];
        }

        objc_destroyWeak(buf);
        goto LABEL_24;
      }

      v27 = [message mutableCopy];
      responseHandler = [v26 responseHandler];
      [v27 setTransactionResult:resultCopy];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __74__HMDObjectLookup_applyChange_previous_onObject_result_completionHandler___block_invoke_2;
      v44[3] = &unk_279728DE0;
      v29 = responseHandler;
      v45 = v29;
      v46 = handlerCopy;
      [v27 setResponseHandler:v44];
      v30 = [v27 copy];

      v26 = v30;
    }

    else
    {
      v36 = MEMORY[0x277D0F848];
      allMessageDestinations = [MEMORY[0x277D0F820] allMessageDestinations];
      v27 = [v36 messageWithName:@"kTransactionUpdate" destination:allMessageDestinations payload:0];

      [v27 setTransactionResult:resultCopy];
      [v27 setRemote:1];
      if (handlerCopy)
      {
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __74__HMDObjectLookup_applyChange_previous_onObject_result_completionHandler___block_invoke;
        v47[3] = &unk_2797355F8;
        objc_copyWeak(&v49, buf);
        v48 = handlerCopy;
        [v27 setResponseHandler:v47];

        objc_destroyWeak(&v49);
      }

      else
      {
        [v27 setResponseHandler:&__block_literal_global_55];
      }

      v26 = [v27 copy];
    }

    goto LABEL_20;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v31 = HMFGetLogIdentifier();
    change4 = [changeCopy change];
    uuid2 = [change4 uuid];
    *buf = 138543618;
    v51 = v31;
    v52 = 2112;
    v53 = uuid2;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Object does not implement backing store protocol, cannot apply transaction for object-change: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  v34 = _Block_copy(handlerCopy);
  if (v34)
  {
    v35 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v34[2](v34, v35);
  }

LABEL_24:
  v41 = *MEMORY[0x277D85DE8];
}

void __74__HMDObjectLookup_applyChange_previous_onObject_result_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Calling completion handler for transaction applied", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  (*(*(a1 + 32) + 16))();

  v12 = *MEMORY[0x277D85DE8];
}

void __74__HMDObjectLookup_applyChange_previous_onObject_result_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = v5;
  if (v6)
  {
    (*(v6 + 16))(v6, v5, a3);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)resetObjects
{
  uuidToObjectMapping = [(HMDObjectLookup *)self uuidToObjectMapping];
  [uuidToObjectMapping removeAllObjects];
}

- (id)_lookUpObjectWithUUID:(id)d applyObjectChange:(id)change previous:(id)previous result:(id)result completionHandler:(id)handler
{
  dCopy = d;
  changeCopy = change;
  previousCopy = previous;
  resultCopy = result;
  handlerCopy = handler;
  uuidToObjectMapping = [(HMDObjectLookup *)self uuidToObjectMapping];
  v18 = [uuidToObjectMapping objectForKey:dCopy];

  if (v18)
  {
    [(HMDObjectLookup *)self applyChange:changeCopy previous:previousCopy onObject:v18 result:resultCopy completionHandler:handlerCopy];
    v19 = 0;
  }

  else
  {
    [(HMDObjectLookup *)self scanObjects];
    uuidToObjectMapping2 = [(HMDObjectLookup *)self uuidToObjectMapping];
    v21 = [uuidToObjectMapping2 objectForKey:dCopy];

    if (v21)
    {
      [(HMDObjectLookup *)self applyChange:changeCopy previous:previousCopy onObject:v21 result:resultCopy completionHandler:handlerCopy];
      v19 = 0;
    }

    else
    {
      v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    }
  }

  return v19;
}

- (void)lookUpAndApplyObjectChange:(id)change previous:(id)previous result:(id)result completionHandler:(id)handler
{
  v40 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  previousCopy = previous;
  resultCopy = result;
  handlerCopy = handler;
  change = [changeCopy change];
  objectChangeType = [change objectChangeType];

  change2 = [changeCopy change];
  v17 = change2;
  if (objectChangeType == 3)
  {
    parentUUID = [change2 parentUUID];
    v19 = [(HMDObjectLookup *)self _lookUpObjectWithUUID:parentUUID applyObjectChange:changeCopy previous:previousCopy result:resultCopy completionHandler:handlerCopy];

    uuidToObjectMapping = [(HMDObjectLookup *)self uuidToObjectMapping];
    change3 = [changeCopy change];
    uuid = [change3 uuid];
    [uuidToObjectMapping removeObjectForKey:uuid];
  }

  else
  {
    uuid2 = [change2 uuid];
    uuid = [(HMDObjectLookup *)self _lookUpObjectWithUUID:uuid2 applyObjectChange:changeCopy previous:previousCopy result:resultCopy completionHandler:handlerCopy];

    if (!uuid)
    {
      goto LABEL_11;
    }

    uuidToObjectMapping = [changeCopy change];
    change3 = [uuidToObjectMapping parentUUID];
    v19 = [(HMDObjectLookup *)self _lookUpObjectWithUUID:change3 applyObjectChange:changeCopy previous:previousCopy result:resultCopy completionHandler:handlerCopy];
  }

  if (v19)
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      change4 = [changeCopy change];
      [change4 uuid];
      v29 = v33 = v24;
      *buf = 138543874;
      v35 = v27;
      v36 = 2112;
      v37 = v29;
      v38 = 2112;
      v39 = v19;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Could not look up and apply object change for %@: %@", buf, 0x20u);

      v24 = v33;
    }

    objc_autoreleasePoolPop(v24);
    v30 = _Block_copy(handlerCopy);
    v31 = v30;
    if (v30)
    {
      (*(v30 + 2))(v30, v19);
    }
  }

LABEL_11:

  v32 = *MEMORY[0x277D85DE8];
}

- (HMDObjectLookup)initWithWorkQueue:(id)queue
{
  queueCopy = queue;
  v10.receiver = self;
  v10.super_class = HMDObjectLookup;
  v6 = [(HMDObjectLookup *)&v10 init];
  if (v6)
  {
    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    uuidToObjectMapping = v6->_uuidToObjectMapping;
    v6->_uuidToObjectMapping = strongToWeakObjectsMapTable;

    objc_storeStrong(&v6->_workQueue, queue);
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_79410 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_79410, &__block_literal_global_79411);
  }

  v3 = logCategory__hmf_once_v1_79412;

  return v3;
}

uint64_t __30__HMDObjectLookup_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_79412;
  logCategory__hmf_once_v1_79412 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end