@interface HMITaskServiceServer
- (BOOL)cancelTask:(int)a3;
- (HMITaskServiceServer)init;
- (id)buildEmptyTaskFromOptions:(id)a3 error:(id *)a4;
- (id)buildFaceMisclassificationTaskFromOptions:(id)a3 error:(id *)a4;
- (id)buildHomePersonClusteringTaskFromOptions:(id)a3 error:(id *)a4;
- (id)buildPersonsModelsSummaryTaskFromOptions:(id)a3 error:(id *)a4;
- (id)buildRemovePersonsModelTaskFromOptions:(id)a3 error:(id *)a4;
- (id)buildSubmitFeedbackTaskFromOptions:(id)a3 error:(id *)a4;
- (id)buildUpdatePersonsModelTaskFromOptions:(id)a3 error:(id *)a4;
- (id)buildUpdateTorsoModelTaskFromOptions:(id)a3 error:(id *)a4;
- (int)getNextTaskID;
- (int)submitTask:(id)a3 progressHandler:(id)a4 completionHander:(id)a5;
- (int)submitTaskWithOptions:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5;
@end

@implementation HMITaskServiceServer

- (HMITaskServiceServer)init
{
  v6.receiver = self;
  v6.super_class = HMITaskServiceServer;
  v2 = [(HMITaskService *)&v6 initPrivate];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v3;

    [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:1];
    v2->_lock._os_unfair_lock_opaque = 0;
    v2->_nextTaskID = 1;
  }

  return v2;
}

- (int)getNextTaskID
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMITaskServiceServer *)self nextTaskID];
  [(HMITaskServiceServer *)self setNextTaskID:(v3 + 1)];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (int)submitTaskWithOptions:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 objectForKeyedSubscript:@"taskType"];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v16;
      _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_DEBUG, "%{public}@options is empty/nil, defaulting to Home persons clustering task with impure person cleanup", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    if (v8)
    {
      [MEMORY[0x277CBEB38] dictionaryWithDictionary:v8];
    }

    else
    {
      [MEMORY[0x277CBEB38] dictionary];
    }
    v17 = ;
    [v17 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"doImpurePersonCleanup"];
    v18 = [v17 copy];

    v12 = HMITaskTypeHomePersonClusteringTask;
    v8 = v18;
  }

  if ([v12 isEqualToString:HMITaskTypeUpdatePersonsModelTask])
  {
    v33 = 0;
    v19 = &v33;
    v20 = [(HMITaskServiceServer *)self buildUpdatePersonsModelTaskFromOptions:v8 error:&v33];
  }

  else if ([v12 isEqualToString:HMITaskTypeRemovePersonsModelTask])
  {
    v32 = 0;
    v19 = &v32;
    v20 = [(HMITaskServiceServer *)self buildRemovePersonsModelTaskFromOptions:v8 error:&v32];
  }

  else if ([v12 isEqualToString:HMITaskTypeHomePersonClusteringTask])
  {
    v31 = 0;
    v19 = &v31;
    v20 = [(HMITaskServiceServer *)self buildHomePersonClusteringTaskFromOptions:v8 error:&v31];
  }

  else if ([v12 isEqualToString:HMITaskTypeEmptyTask])
  {
    v30 = 0;
    v19 = &v30;
    v20 = [(HMITaskServiceServer *)self buildEmptyTaskFromOptions:v8 error:&v30];
  }

  else if ([v12 isEqualToString:HMITaskTypeFaceMisclassificationTask])
  {
    v29 = 0;
    v19 = &v29;
    v20 = [(HMITaskServiceServer *)self buildFaceMisclassificationTaskFromOptions:v8 error:&v29];
  }

  else if ([v12 isEqualToString:HMITaskTypePersonsModelsSummaryTask])
  {
    v28 = 0;
    v19 = &v28;
    v20 = [(HMITaskServiceServer *)self buildPersonsModelsSummaryTaskFromOptions:v8 error:&v28];
  }

  else if ([v12 isEqualToString:HMITaskTypeFeedbackTask])
  {
    v27 = 0;
    v19 = &v27;
    v20 = [(HMITaskServiceServer *)self buildSubmitFeedbackTaskFromOptions:v8 error:&v27];
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
    v20 = [(HMITaskServiceServer *)self buildUpdateTorsoModelTaskFromOptions:v8 error:&v26];
  }

  v21 = v20;
  v22 = *v19;
  if (!v21)
  {
LABEL_28:
    v34 = @"resultCode";
    v35 = @"Error";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v10[2](v10, v21, v22);
    v23 = -1;
    goto LABEL_29;
  }

  v23 = [(HMITaskServiceServer *)self submitTask:v21 progressHandler:v9 completionHander:v10];
LABEL_29:

  return v23;
}

- (int)submitTask:(id)a3 progressHandler:(id)a4 completionHander:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, v8);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __68__HMITaskServiceServer_submitTask_progressHandler_completionHander___block_invoke;
  v21[3] = &unk_278753C98;
  v11 = v9;
  v22 = v11;
  [v8 setProgressBlock:v21];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __68__HMITaskServiceServer_submitTask_progressHandler_completionHander___block_invoke_2;
  v18 = &unk_278752B10;
  objc_copyWeak(&v20, &location);
  v12 = v10;
  v19 = v12;
  [v8 setCompletionBlock:&v15];
  v13 = [(HMITaskServiceServer *)self operationQueue:v15];
  [v13 addOperation:v8];

  LODWORD(v13) = [v8 taskID];
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

- (BOOL)cancelTask:(int)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  v4 = [(HMITaskServiceServer *)self operationQueue];
  v5 = [v4 operations];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__HMITaskServiceServer_cancelTask___block_invoke;
  v8[3] = &unk_278753CC0;
  v9 = a3;
  v8[4] = &v10;
  [v5 enumerateObjectsUsingBlock:v8];

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

- (id)buildUpdatePersonsModelTaskFromOptions:(id)a3 error:(id *)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"homeUUID"];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"isExternal"];
    v9 = v8;
    if (!v8)
    {
      v27 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1026 description:@"HMIUpdatePersonsModelTaskIsExternal is nil"];
      v28 = v27;
      if (a4)
      {
        v29 = v27;
        *a4 = v28;
      }

      HMIErrorLog(self, v28);

      v26 = 0;
      goto LABEL_32;
    }

    v10 = [v8 BOOLValue];
    v11 = [v6 objectForKeyedSubscript:@"sourceUUID"];
    if (v11)
    {
      v12 = +[HMIPreference sharedInstance];
      v13 = [v12 stringPreferenceForKey:@"personDataSourceDiskStoragePath" defaultValue:&stru_284057FB8];
      v14 = [v13 isEqualToString:&stru_284057FB8];

      if (v14)
      {
        v15 = objc_alloc_init(HMIHomeKitClient);
        v16 = v15;
        if (v10)
        {
          context = objc_autoreleasePoolPush();
          v17 = self;
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
          v34 = self;
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
        if (a4)
        {
          v49 = v47;
          *a4 = v48;
        }

        HMIErrorLog(self, v48);

LABEL_30:
        v26 = 0;
        goto LABEL_31;
      }

      if (v10)
      {
        v55 = 0;
        v22 = [(HMIPersonDataSourceDisk *)[HMIExternalPersonDataSourceDisk alloc] initWithHomeUUID:v7 sourceUUID:v11 error:&v55];
        v32 = v55;
        if (v22)
        {
          v33 = 0;
LABEL_25:
          v26 = [[HMIUpdatePersonsModelTask alloc] initWithTaskID:[(HMITaskServiceServer *)self getNextTaskID] homeUUID:v7 sourceUUID:v11 dataSource:v22 externalLibrary:v10 removeExcessFaceCrops:v33];

LABEL_31:
LABEL_32:

          goto LABEL_33;
        }

        v44 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1026 description:@"Failed to initialize data source" underlyingError:v32];
        v45 = v44;
        if (a4)
        {
          v46 = v44;
          *a4 = v45;
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
    if (a4)
    {
      v40 = v38;
      *a4 = v39;
    }

    HMIErrorLog(self, v39);

    goto LABEL_30;
  }

  v23 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1026 description:@"HMITaskHomeUUIDKey is nil"];
  v24 = v23;
  if (a4)
  {
    v25 = v23;
    *a4 = v24;
  }

  HMIErrorLog(self, v24);

  v26 = 0;
LABEL_33:

  return v26;
}

- (id)buildRemovePersonsModelTaskFromOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"homeUUID"];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"sourceUUID"];
    if (v8)
    {
      v9 = [[HMIRemovePersonsModelTask alloc] initWithTaskID:[(HMITaskServiceServer *)self getNextTaskID] homeUUID:v7 sourceUUID:v8];
      goto LABEL_11;
    }

    v12 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1027 description:@"HMIPersonsModelTaskSourceUUID is nil"];
    v13 = v12;
    if (a4)
    {
      v14 = v12;
      *a4 = v13;
    }

    HMIErrorLog(self, v13);
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1027 description:@"HMITaskHomeUUIDKey is nil"];
    v8 = v10;
    if (a4)
    {
      v11 = v10;
      *a4 = v8;
    }

    HMIErrorLog(self, v8);
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)buildFaceMisclassificationTaskFromOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"homeUUID"];
  if (v7)
  {
    v8 = objc_alloc_init(HMIHomeKitClient);
    v9 = [(HMIHomeKitClient *)v8 homePersonManagerForHomeUUID:v7];
    if (v9)
    {
      v10 = [[HMIHomePersonDataSourceHomeKit alloc] initWithHMHomePersonManager:v9];
      v11 = [v6 objectForKeyedSubscript:@"faceCrop"];
      v12 = [[HMIFaceMisclassificationTask alloc] initWithTaskID:[(HMITaskServiceServer *)self getNextTaskID] dataSource:v10 faceCrop:v11];
    }

    else
    {
      v15 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1029 description:@"Failed to get HMHomePersonManager"];
      v10 = v15;
      if (a4)
      {
        v16 = v15;
        *a4 = v10;
      }

      HMIErrorLog(self, v10);
      v12 = 0;
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1029 description:@"HMITaskHomeUUIDKey is nil"];
    v8 = v13;
    if (a4)
    {
      v14 = v13;
      *a4 = v8;
    }

    HMIErrorLog(self, v8);
    v12 = 0;
  }

  return v12;
}

- (id)buildHomePersonClusteringTaskFromOptions:(id)a3 error:(id *)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (HMIIsResidentDevice())
  {
    v7 = objc_alloc_init(HMIHomeKitClient);
    if ([(HMIHomeKitClient *)v7 isCurrentDevicePrimaryResident])
    {
      v8 = [(HMIHomeKitClient *)v7 homePersonManagersForCurrentDevice];
      if ([v8 count])
      {
        v9 = arc4random();
        v10 = v9 % [v8 count];
        v11 = [v8 allObjects];
        v12 = [v11 objectAtIndexedSubscript:v10];

        v13 = [v12 UUID];
        v14 = [(HMIHomeKitClient *)v7 homeForHMPersonManagerUUID:v13];
        v15 = [v14 uuid];

        if (v15)
        {
          v16 = [[HMIHomePersonDataSourceHomeKit alloc] initWithHMHomePersonManager:v12];
          v17 = [v6 objectForKeyedSubscript:@"doImpurePersonCleanup"];

          if (v17)
          {
            v18 = [v6 objectForKeyedSubscript:@"doImpurePersonCleanup"];
            v36 = [v18 BOOLValue];

            v37 = v15;
            v19 = [HMIHomePersonClusteringTask alloc];
            v20 = [(HMITaskServiceServer *)self getNextTaskID];
            v21 = [v12 UUID];
            v22 = +[HMIPersonsModelManager sharedInstance];
            v23 = v19;
            v15 = v37;
            v24 = [(HMIHomePersonClusteringTask *)v23 initWithTaskID:v20 homeUUID:v37 dataSource:v16 sourceUUID:v21 personsModelManager:v22 doImpurePersonCleanup:v36 error:a4];
          }

          else
          {
            v33 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1028 description:@"cleanup key is missing"];
            v21 = v33;
            if (a4)
            {
              v34 = v33;
              *a4 = v21;
            }

            HMIErrorLog(self, v21);
            v24 = 0;
          }
        }

        else
        {
          v31 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1028 description:@"HomeUUID is nil"];
          v16 = v31;
          if (a4)
          {
            v32 = v31;
            *a4 = v16;
          }

          HMIErrorLog(self, v16);
          v24 = 0;
        }
      }

      else
      {
        v29 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1028 description:@"Failed to get HMHomePersonManager"];
        v12 = v29;
        if (a4)
        {
          v30 = v29;
          *a4 = v12;
        }

        HMIErrorLog(self, v12);
        v24 = 0;
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543362;
        v39 = v28;
        _os_log_impl(&dword_22D12F000, v27, OS_LOG_TYPE_INFO, "%{public}@Current device is not primary resident, skipping clustering", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      v24 = [(HMITask *)[HMIEmptyTask alloc] initWithTaskID:[(HMITaskServiceServer *)v26 getNextTaskID]];
    }
  }

  else
  {
    v24 = [(HMITask *)[HMIEmptyTask alloc] initWithTaskID:[(HMITaskServiceServer *)self getNextTaskID]];
  }

  return v24;
}

- (id)buildPersonsModelsSummaryTaskFromOptions:(id)a3 error:(id *)a4
{
  v6 = [a3 objectForKeyedSubscript:@"homeUUID"];
  if (v6)
  {
    v7 = [[HMIPersonsModelsSummaryTask alloc] initWithTaskID:[(HMITaskServiceServer *)self getNextTaskID] homeUUID:v6];
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1030 description:@"HMITaskHomeUUIDKey is nil"];
    v9 = v8;
    if (a4)
    {
      v10 = v8;
      *a4 = v9;
    }

    HMIErrorLog(self, v9);

    v7 = 0;
  }

  return v7;
}

- (id)buildSubmitFeedbackTaskFromOptions:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"cameraProfileUUID"];
  v7 = [v5 objectForKeyedSubscript:@"clipUUID"];

  v8 = [[HMIFeedbackTask alloc] initWithTaskID:[(HMITaskServiceServer *)self getNextTaskID] cameraProfileUUID:v6 clipUUID:v7];

  return v8;
}

- (id)buildUpdateTorsoModelTaskFromOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"homeUUID"];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"torsoAnnotations"];
    if (v8)
    {
      v9 = [[HMIUpdateTorsoModelTask alloc] initWithTaskID:[(HMITaskServiceServer *)self getNextTaskID] homeUUID:v7 torsoAnnotations:v8];
      goto LABEL_11;
    }

    v12 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1039 description:@"HMIUpdateTorsoModelTaskAnnotationsKey is nil"];
    v13 = v12;
    if (a4)
    {
      v14 = v12;
      *a4 = v13;
    }

    HMIErrorLog(self, v13);
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1039 description:@"HMITaskHomeUUIDKey is nil"];
    v8 = v10;
    if (a4)
    {
      v11 = v10;
      *a4 = v8;
    }

    HMIErrorLog(self, v8);
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)buildEmptyTaskFromOptions:(id)a3 error:(id *)a4
{
  v6 = [a3 objectForKeyedSubscript:@"duration"];
  if (v6)
  {
    v7 = [HMIEmptyTask alloc];
    v8 = [(HMITaskServiceServer *)self getNextTaskID];
    [v6 doubleValue];
    v9 = [(HMIEmptyTask *)v7 initWithTaskID:v8 duration:?];
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1039 description:@"HMIEmptyTaskDurationKey is nil"];
    v11 = v10;
    if (a4)
    {
      v12 = v10;
      *a4 = v11;
    }

    HMIErrorLog(self, v11);

    v9 = 0;
  }

  return v9;
}

@end