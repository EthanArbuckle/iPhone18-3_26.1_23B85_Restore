@interface HMITaskServiceServer
- (BOOL)cancelTask:(int)task;
- (HMITaskServiceServer)init;
- (id)buildEmptyTaskFromOptions:(id)options error:(id *)error;
- (id)buildFaceMisclassificationTaskFromOptions:(id)options error:(id *)error;
- (id)buildHomePersonClusteringTaskFromOptions:(id)options error:(id *)error;
- (id)buildPersonsModelsSummaryTaskFromOptions:(id)options error:(id *)error;
- (id)buildRemovePersonsModelTaskFromOptions:(id)options error:(id *)error;
- (id)buildSubmitFeedbackTaskFromOptions:(id)options error:(id *)error;
- (id)buildUpdatePersonsModelTaskFromOptions:(id)options error:(id *)error;
- (id)buildUpdateTorsoModelTaskFromOptions:(id)options error:(id *)error;
- (int)getNextTaskID;
- (int)submitTask:(id)task progressHandler:(id)handler completionHander:(id)hander;
- (int)submitTaskWithOptions:(id)options progressHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation HMITaskServiceServer

- (HMITaskServiceServer)init
{
  v6.receiver = self;
  v6.super_class = HMITaskServiceServer;
  initPrivate = [(HMITaskService *)&v6 initPrivate];
  if (initPrivate)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = initPrivate->_operationQueue;
    initPrivate->_operationQueue = v3;

    [(NSOperationQueue *)initPrivate->_operationQueue setMaxConcurrentOperationCount:1];
    initPrivate->_lock._os_unfair_lock_opaque = 0;
    initPrivate->_nextTaskID = 1;
  }

  return initPrivate;
}

- (int)getNextTaskID
{
  os_unfair_lock_lock_with_options();
  nextTaskID = [(HMITaskServiceServer *)self nextTaskID];
  [(HMITaskServiceServer *)self setNextTaskID:(nextTaskID + 1)];
  os_unfair_lock_unlock(&self->_lock);
  return nextTaskID;
}

- (int)submitTaskWithOptions:(id)options progressHandler:(id)handler completionHandler:(id)completionHandler
{
  v38 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v11 = [optionsCopy objectForKeyedSubscript:@"taskType"];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v16;
      _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_DEBUG, "%{public}@options is empty/nil, defaulting to Home persons clustering task with impure person cleanup", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    if (optionsCopy)
    {
      [MEMORY[0x277CBEB38] dictionaryWithDictionary:optionsCopy];
    }

    else
    {
      [MEMORY[0x277CBEB38] dictionary];
    }
    v17 = ;
    [v17 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"doImpurePersonCleanup"];
    v18 = [v17 copy];

    v12 = HMITaskTypeHomePersonClusteringTask;
    optionsCopy = v18;
  }

  if ([v12 isEqualToString:HMITaskTypeUpdatePersonsModelTask])
  {
    v33 = 0;
    v19 = &v33;
    v20 = [(HMITaskServiceServer *)self buildUpdatePersonsModelTaskFromOptions:optionsCopy error:&v33];
  }

  else if ([v12 isEqualToString:HMITaskTypeRemovePersonsModelTask])
  {
    v32 = 0;
    v19 = &v32;
    v20 = [(HMITaskServiceServer *)self buildRemovePersonsModelTaskFromOptions:optionsCopy error:&v32];
  }

  else if ([v12 isEqualToString:HMITaskTypeHomePersonClusteringTask])
  {
    v31 = 0;
    v19 = &v31;
    v20 = [(HMITaskServiceServer *)self buildHomePersonClusteringTaskFromOptions:optionsCopy error:&v31];
  }

  else if ([v12 isEqualToString:HMITaskTypeEmptyTask])
  {
    v30 = 0;
    v19 = &v30;
    v20 = [(HMITaskServiceServer *)self buildEmptyTaskFromOptions:optionsCopy error:&v30];
  }

  else if ([v12 isEqualToString:HMITaskTypeFaceMisclassificationTask])
  {
    v29 = 0;
    v19 = &v29;
    v20 = [(HMITaskServiceServer *)self buildFaceMisclassificationTaskFromOptions:optionsCopy error:&v29];
  }

  else if ([v12 isEqualToString:HMITaskTypePersonsModelsSummaryTask])
  {
    v28 = 0;
    v19 = &v28;
    v20 = [(HMITaskServiceServer *)self buildPersonsModelsSummaryTaskFromOptions:optionsCopy error:&v28];
  }

  else if ([v12 isEqualToString:HMITaskTypeFeedbackTask])
  {
    v27 = 0;
    v19 = &v27;
    v20 = [(HMITaskServiceServer *)self buildSubmitFeedbackTaskFromOptions:optionsCopy error:&v27];
  }

  else
  {
    if (![v12 isEqualToString:HMITaskTypeUpdateTorsoModelTask])
    {
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown task type: %@", v12];
      v22 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1042 description:v24];

      goto LABEL_28;
    }

    v26 = 0;
    v19 = &v26;
    v20 = [(HMITaskServiceServer *)self buildUpdateTorsoModelTaskFromOptions:optionsCopy error:&v26];
  }

  v21 = v20;
  v22 = *v19;
  if (!v21)
  {
LABEL_28:
    v34 = @"resultCode";
    v35 = @"Error";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    completionHandlerCopy[2](completionHandlerCopy, v21, v22);
    v23 = -1;
    goto LABEL_29;
  }

  v23 = [(HMITaskServiceServer *)self submitTask:v21 progressHandler:handlerCopy completionHander:completionHandlerCopy];
LABEL_29:

  return v23;
}

- (int)submitTask:(id)task progressHandler:(id)handler completionHander:(id)hander
{
  taskCopy = task;
  handlerCopy = handler;
  handerCopy = hander;
  objc_initWeak(&location, taskCopy);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __68__HMITaskServiceServer_submitTask_progressHandler_completionHander___block_invoke;
  v21[3] = &unk_278753C98;
  v11 = handlerCopy;
  v22 = v11;
  [taskCopy setProgressBlock:v21];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __68__HMITaskServiceServer_submitTask_progressHandler_completionHander___block_invoke_2;
  v18 = &unk_278752B10;
  objc_copyWeak(&v20, &location);
  v12 = handerCopy;
  v19 = v12;
  [taskCopy setCompletionBlock:&v15];
  v13 = [(HMITaskServiceServer *)self operationQueue:v15];
  [v13 addOperation:taskCopy];

  LODWORD(v13) = [taskCopy taskID];
  objc_destroyWeak(&v20);

  objc_destroyWeak(&location);
  return v13;
}

uint64_t __68__HMITaskServiceServer_submitTask_progressHandler_completionHander___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __68__HMITaskServiceServer_submitTask_progressHandler_completionHander___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  v3 = [WeakRetained results];
  v4 = [WeakRetained error];
  (*(v2 + 16))(v2, v3, v4);
}

- (BOOL)cancelTask:(int)task
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  operationQueue = [(HMITaskServiceServer *)self operationQueue];
  operations = [operationQueue operations];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__HMITaskServiceServer_cancelTask___block_invoke;
  v8[3] = &unk_278753CC0;
  taskCopy = task;
  v8[4] = &v10;
  [operations enumerateObjectsUsingBlock:v8];

  v6 = v11[5];
  if (v6)
  {
    [v11[5] cancel];
  }

  _Block_object_dispose(&v10, 8);

  return v6 != 0;
}

void __35__HMITaskServiceServer_cancelTask___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 taskID] == *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)buildUpdatePersonsModelTaskFromOptions:(id)options error:(id *)error
{
  v62 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v7 = [optionsCopy objectForKeyedSubscript:@"homeUUID"];
  if (v7)
  {
    v8 = [optionsCopy objectForKeyedSubscript:@"isExternal"];
    v9 = v8;
    if (!v8)
    {
      v27 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1026 description:@"HMIUpdatePersonsModelTaskIsExternal is nil"];
      v28 = v27;
      if (error)
      {
        v29 = v27;
        *error = v28;
      }

      HMIErrorLog(self, v28);

      v26 = 0;
      goto LABEL_32;
    }

    bOOLValue = [v8 BOOLValue];
    v11 = [optionsCopy objectForKeyedSubscript:@"sourceUUID"];
    if (v11)
    {
      v12 = +[HMIPreference sharedInstance];
      v13 = [v12 stringPreferenceForKey:@"personDataSourceDiskStoragePath" defaultValue:&stru_284057FB8];
      v14 = [v13 isEqualToString:&stru_284057FB8];

      if (v14)
      {
        v15 = objc_alloc_init(HMIHomeKitClient);
        v16 = v15;
        if (bOOLValue)
        {
          context = objc_autoreleasePoolPush();
          selfCopy = self;
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            HMFGetLogIdentifier();
            v19 = v51 = v16;
            *buf = 138543874;
            v57 = v19;
            v58 = 2112;
            v59 = v7;
            v60 = 2112;
            v61 = v11;
            _os_log_impl(&dword_22D12F000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Creating HMPhotosPersonManager for homeUUID:%@ sourceUUID:%@", buf, 0x20u);

            v16 = v51;
          }

          objc_autoreleasePoolPop(context);
          v20 = [(HMIHomeKitClient *)v16 photosPersonManagerForHomeUUID:v7 sourceUUID:v11];
          if (v20)
          {
            v21 = v20;
            v22 = [[HMIExternalPersonDataSourceHomeKit alloc] initWithHMPhotosPersonManager:v20];
            contexta = 0;
LABEL_24:

            v32 = 0;
            v33 = contexta;
            goto LABEL_25;
          }

          v42 = MEMORY[0x277CCA9B8];
          v43 = @"Failed to get HMPhotosPersonManager";
        }

        else
        {
          contexta = [(HMIHomeKitClient *)v15 isCurrentDevicePrimaryResident];
          v50 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            HMFGetLogIdentifier();
            v36 = v52 = v16;
            *buf = 138543618;
            v57 = v36;
            v58 = 2112;
            v59 = v7;
            _os_log_impl(&dword_22D12F000, v35, OS_LOG_TYPE_DEBUG, "%{public}@Creating HMHomePersonManager for homeUUID:%@", buf, 0x16u);

            v16 = v52;
          }

          objc_autoreleasePoolPop(v50);
          v37 = [(HMIHomeKitClient *)v16 homePersonManagerForHomeUUID:v7];
          if (v37)
          {
            v21 = v37;
            v22 = [[HMIHomePersonDataSourceHomeKit alloc] initWithHMHomePersonManager:v37];
            goto LABEL_24;
          }

          v42 = MEMORY[0x277CCA9B8];
          v43 = @"Failed to get HMHomePersonManager";
        }

        v47 = [v42 hmiPrivateErrorWithCode:1026 description:{v43, v50}];
        v48 = v47;
        if (error)
        {
          v49 = v47;
          *error = v48;
        }

        HMIErrorLog(self, v48);

LABEL_30:
        v26 = 0;
        goto LABEL_31;
      }

      if (bOOLValue)
      {
        v55 = 0;
        v22 = [(HMIPersonDataSourceDisk *)[HMIExternalPersonDataSourceDisk alloc] initWithHomeUUID:v7 sourceUUID:v11 error:&v55];
        v32 = v55;
        if (v22)
        {
          v33 = 0;
LABEL_25:
          v26 = [[HMIUpdatePersonsModelTask alloc] initWithTaskID:[(HMITaskServiceServer *)self getNextTaskID] homeUUID:v7 sourceUUID:v11 dataSource:v22 externalLibrary:bOOLValue removeExcessFaceCrops:v33];

LABEL_31:
LABEL_32:

          goto LABEL_33;
        }

        v44 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1026 description:@"Failed to initialize data source" underlyingError:v32];
        v45 = v44;
        if (error)
        {
          v46 = v44;
          *error = v45;
        }

        HMIErrorLog(self, v45);

        goto LABEL_30;
      }

      v30 = MEMORY[0x277CCA9B8];
      v31 = @"Disk-based Home Person Data Source not supported";
    }

    else
    {
      v30 = MEMORY[0x277CCA9B8];
      v31 = @"HMIPersonsModelTaskSourceUUID is nil";
    }

    v38 = [v30 hmiPrivateErrorWithCode:1026 description:v31];
    v39 = v38;
    if (error)
    {
      v40 = v38;
      *error = v39;
    }

    HMIErrorLog(self, v39);

    goto LABEL_30;
  }

  v23 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1026 description:@"HMITaskHomeUUIDKey is nil"];
  v24 = v23;
  if (error)
  {
    v25 = v23;
    *error = v24;
  }

  HMIErrorLog(self, v24);

  v26 = 0;
LABEL_33:

  return v26;
}

- (id)buildRemovePersonsModelTaskFromOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [optionsCopy objectForKeyedSubscript:@"homeUUID"];
  if (v7)
  {
    v8 = [optionsCopy objectForKeyedSubscript:@"sourceUUID"];
    if (v8)
    {
      v9 = [[HMIRemovePersonsModelTask alloc] initWithTaskID:[(HMITaskServiceServer *)self getNextTaskID] homeUUID:v7 sourceUUID:v8];
      goto LABEL_11;
    }

    v12 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1027 description:@"HMIPersonsModelTaskSourceUUID is nil"];
    v13 = v12;
    if (error)
    {
      v14 = v12;
      *error = v13;
    }

    HMIErrorLog(self, v13);
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1027 description:@"HMITaskHomeUUIDKey is nil"];
    v8 = v10;
    if (error)
    {
      v11 = v10;
      *error = v8;
    }

    HMIErrorLog(self, v8);
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)buildFaceMisclassificationTaskFromOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [optionsCopy objectForKeyedSubscript:@"homeUUID"];
  if (v7)
  {
    v8 = objc_alloc_init(HMIHomeKitClient);
    v9 = [(HMIHomeKitClient *)v8 homePersonManagerForHomeUUID:v7];
    if (v9)
    {
      v10 = [[HMIHomePersonDataSourceHomeKit alloc] initWithHMHomePersonManager:v9];
      v11 = [optionsCopy objectForKeyedSubscript:@"faceCrop"];
      v12 = [[HMIFaceMisclassificationTask alloc] initWithTaskID:[(HMITaskServiceServer *)self getNextTaskID] dataSource:v10 faceCrop:v11];
    }

    else
    {
      v15 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1029 description:@"Failed to get HMHomePersonManager"];
      v10 = v15;
      if (error)
      {
        v16 = v15;
        *error = v10;
      }

      HMIErrorLog(self, v10);
      v12 = 0;
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1029 description:@"HMITaskHomeUUIDKey is nil"];
    v8 = v13;
    if (error)
    {
      v14 = v13;
      *error = v8;
    }

    HMIErrorLog(self, v8);
    v12 = 0;
  }

  return v12;
}

- (id)buildHomePersonClusteringTaskFromOptions:(id)options error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if (HMIIsResidentDevice())
  {
    v7 = objc_alloc_init(HMIHomeKitClient);
    if ([(HMIHomeKitClient *)v7 isCurrentDevicePrimaryResident])
    {
      homePersonManagersForCurrentDevice = [(HMIHomeKitClient *)v7 homePersonManagersForCurrentDevice];
      if ([homePersonManagersForCurrentDevice count])
      {
        v9 = arc4random();
        v10 = v9 % [homePersonManagersForCurrentDevice count];
        allObjects = [homePersonManagersForCurrentDevice allObjects];
        v12 = [allObjects objectAtIndexedSubscript:v10];

        uUID = [v12 UUID];
        v14 = [(HMIHomeKitClient *)v7 homeForHMPersonManagerUUID:uUID];
        uuid = [v14 uuid];

        if (uuid)
        {
          v16 = [[HMIHomePersonDataSourceHomeKit alloc] initWithHMHomePersonManager:v12];
          v17 = [optionsCopy objectForKeyedSubscript:@"doImpurePersonCleanup"];

          if (v17)
          {
            v18 = [optionsCopy objectForKeyedSubscript:@"doImpurePersonCleanup"];
            bOOLValue = [v18 BOOLValue];

            v37 = uuid;
            v19 = [HMIHomePersonClusteringTask alloc];
            getNextTaskID = [(HMITaskServiceServer *)self getNextTaskID];
            uUID2 = [v12 UUID];
            v22 = +[HMIPersonsModelManager sharedInstance];
            v23 = v19;
            uuid = v37;
            v24 = [(HMIHomePersonClusteringTask *)v23 initWithTaskID:getNextTaskID homeUUID:v37 dataSource:v16 sourceUUID:uUID2 personsModelManager:v22 doImpurePersonCleanup:bOOLValue error:error];
          }

          else
          {
            v33 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1028 description:@"cleanup key is missing"];
            uUID2 = v33;
            if (error)
            {
              v34 = v33;
              *error = uUID2;
            }

            HMIErrorLog(self, uUID2);
            v24 = 0;
          }
        }

        else
        {
          v31 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1028 description:@"HomeUUID is nil"];
          v16 = v31;
          if (error)
          {
            v32 = v31;
            *error = v16;
          }

          HMIErrorLog(self, v16);
          v24 = 0;
        }
      }

      else
      {
        v29 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1028 description:@"Failed to get HMHomePersonManager"];
        v12 = v29;
        if (error)
        {
          v30 = v29;
          *error = v12;
        }

        HMIErrorLog(self, v12);
        v24 = 0;
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543362;
        v39 = v28;
        _os_log_impl(&dword_22D12F000, v27, OS_LOG_TYPE_INFO, "%{public}@Current device is not primary resident, skipping clustering", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      v24 = [(HMITask *)[HMIEmptyTask alloc] initWithTaskID:[(HMITaskServiceServer *)selfCopy getNextTaskID]];
    }
  }

  else
  {
    v24 = [(HMITask *)[HMIEmptyTask alloc] initWithTaskID:[(HMITaskServiceServer *)self getNextTaskID]];
  }

  return v24;
}

- (id)buildPersonsModelsSummaryTaskFromOptions:(id)options error:(id *)error
{
  v6 = [options objectForKeyedSubscript:@"homeUUID"];
  if (v6)
  {
    v7 = [[HMIPersonsModelsSummaryTask alloc] initWithTaskID:[(HMITaskServiceServer *)self getNextTaskID] homeUUID:v6];
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1030 description:@"HMITaskHomeUUIDKey is nil"];
    v9 = v8;
    if (error)
    {
      v10 = v8;
      *error = v9;
    }

    HMIErrorLog(self, v9);

    v7 = 0;
  }

  return v7;
}

- (id)buildSubmitFeedbackTaskFromOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v6 = [optionsCopy objectForKeyedSubscript:@"cameraProfileUUID"];
  v7 = [optionsCopy objectForKeyedSubscript:@"clipUUID"];

  v8 = [[HMIFeedbackTask alloc] initWithTaskID:[(HMITaskServiceServer *)self getNextTaskID] cameraProfileUUID:v6 clipUUID:v7];

  return v8;
}

- (id)buildUpdateTorsoModelTaskFromOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [optionsCopy objectForKeyedSubscript:@"homeUUID"];
  if (v7)
  {
    v8 = [optionsCopy objectForKeyedSubscript:@"torsoAnnotations"];
    if (v8)
    {
      v9 = [[HMIUpdateTorsoModelTask alloc] initWithTaskID:[(HMITaskServiceServer *)self getNextTaskID] homeUUID:v7 torsoAnnotations:v8];
      goto LABEL_11;
    }

    v12 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1039 description:@"HMIUpdateTorsoModelTaskAnnotationsKey is nil"];
    v13 = v12;
    if (error)
    {
      v14 = v12;
      *error = v13;
    }

    HMIErrorLog(self, v13);
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1039 description:@"HMITaskHomeUUIDKey is nil"];
    v8 = v10;
    if (error)
    {
      v11 = v10;
      *error = v8;
    }

    HMIErrorLog(self, v8);
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)buildEmptyTaskFromOptions:(id)options error:(id *)error
{
  v6 = [options objectForKeyedSubscript:@"duration"];
  if (v6)
  {
    v7 = [HMIEmptyTask alloc];
    getNextTaskID = [(HMITaskServiceServer *)self getNextTaskID];
    [v6 doubleValue];
    v9 = [(HMIEmptyTask *)v7 initWithTaskID:getNextTaskID duration:?];
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1039 description:@"HMIEmptyTaskDurationKey is nil"];
    v11 = v10;
    if (error)
    {
      v12 = v10;
      *error = v11;
    }

    HMIErrorLog(self, v11);

    v9 = 0;
  }

  return v9;
}

@end