@interface HMDActionSet
+ (id)allowedActionClasses;
+ (id)logCategory;
- (BOOL)_fixUpActions;
- (BOOL)_handleRenameActionSetTransaction:(id)a3 message:(id)a4;
- (BOOL)_isValidCharacteristicWriteAction:(id)a3;
- (BOOL)_updateActionSetFromDictionary:(void *)a3 transaction:(void *)a4 response:(void *)a5 error:;
- (BOOL)configure:(id)a3 messageDispatcher:(id)a4 queue:(id)a5;
- (BOOL)containsMediaPlaybackActions;
- (BOOL)containsSecureCharacteristic;
- (BOOL)containsShortcutActions;
- (BOOL)containsUnsecuringAction;
- (BOOL)isAssociatedWithAccessory:(id)a3;
- (HMDActionSet)initWithCoder:(id)a3;
- (HMDActionSet)initWithName:(id)a3 uuid:(id)a4 type:(id)a5 home:(id)a6 queue:(id)a7;
- (HMDActionSet)initWithName:(id)a3 uuid:(id)a4 type:(id)a5 home:(id)a6 queue:(id)a7 notificationCenter:(id)a8;
- (HMDHome)home;
- (NSArray)actions;
- (NSArray)associatedAccessories;
- (NSDictionary)assistantObject;
- (NSString)description;
- (NSString)name;
- (NSString)serializedIdentifier;
- (NSString)urlString;
- (id)_addAppleMediaAccessoryPowerActionModelWithUUID:(id)a3 message:(id)a4;
- (id)_addCharacteristicWriteActionModelWithUUID:(id)a3 message:(id)a4;
- (id)_addLightProfileNaturalLightingModelWithUUID:(id)a3 message:(id)a4;
- (id)_addMediaPlaybackActionModelWithUUID:(id)a3 message:(id)a4;
- (id)_createActionExecutionLogEvent:(id)a3;
- (id)_executeAppleMediaAccessoryPowerActions:(id)a3 message:(id)a4;
- (id)_executeCharacteristicWriteRequests:(id)a3 message:(id)a4;
- (id)_executeCommandActions:(id)a3 message:(id)a4;
- (id)_executeGenericActions:(id)a3 message:(id)a4;
- (id)_executeMediaPlaybackActions:(id)a3 message:(id)a4;
- (id)_executeNaturalLightingActions:(id)a3 writeRequests:(id)a4 message:(id)a5;
- (id)_executeNaturalLightingActionsForMatter:(id)a3;
- (id)_executeNaturalLightingWriteRequests:(id)a3 message:(id)a4 naturalLightingActions:(id)a5 naturalLightingActionResultByActionUUID:(id)a6;
- (id)_generateOverallError:(id)a3 forSource:(unint64_t)a4;
- (id)_getActionsForActionSetObject;
- (id)_initWithCoder:(id)a3;
- (id)actionWithUUID:(id)a3;
- (id)backingStoreObjects:(int64_t)a3;
- (id)createPayload;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (id)logIdentifier;
- (id)messageDestination;
- (id)modelObjectWithChangeType:(unint64_t)a3;
- (void)__handleActionsUpdated;
- (void)_encodeWithCoder:(id)a3;
- (void)_execute:(id)a3 activity:(id)a4;
- (void)_execute:(id)a3 captureCurrentState:(BOOL)a4 writeRequestTuples:(id)a5;
- (void)_executeAppleMediaAccessoryPowerActions:(id)a3 source:(unint64_t)a4 clientName:(id)a5 completionHandler:(id)a6;
- (void)_executeCommandActions:(id)a3 source:(unint64_t)a4 clientName:(id)a5 completionHandler:(id)a6;
- (void)_executeGenericActions:(id)a3 source:(unint64_t)a4 clientName:(id)a5 completionHandler:(id)a6;
- (void)_executeMediaPlaybackActions:(id)a3 source:(unint64_t)a4 clientName:(id)a5 completionHandler:(id)a6;
- (void)_handleAddActionRequest:(id)a3;
- (void)_handleAddAppleMediaAccessoryPowerActionTransaction:(id)a3 message:(id)a4;
- (void)_handleAddCharacteristicWriteActionTransaction:(id)a3 message:(id)a4;
- (void)_handleAddCommandActionTransaction:(id)a3 message:(id)a4;
- (void)_handleAddLightProfileNaturalLightingActionTransaction:(id)a3 message:(id)a4;
- (void)_handleAddMediaPlaybackActionTransaction:(id)a3 message:(id)a4;
- (void)_handleAddNewAction:(id)a3 message:(id)a4;
- (void)_handleAddShortcutActionTransaction:(id)a3 message:(id)a4;
- (void)_handleRemovalOfAction:(id)a3 transaction:(id)a4;
- (void)_handleRemovalOfActions:(id)a3 transaction:(id)a4;
- (void)_handleRemoveActionRequest:(id)a3;
- (void)_handleRemoveActionTransaction:(id)a3 message:(id)a4;
- (void)_handleRemoveAppDataModel:(id)a3 message:(id)a4;
- (void)_handleRenameRequest:(id)a3;
- (void)_handleUpdateActionRequest:(id)a3;
- (void)_handleUpdateActionSet:(id)a3;
- (void)_handleUpdateAppDataModel:(id)a3 message:(id)a4;
- (void)_issueReadRequests;
- (void)_issueWriteRequests:(id)a3;
- (void)_processActionSetModelUpdated:(id)a3 message:(id)a4;
- (void)_registerForMessages;
- (void)_removeAction:(id)a3 message:(id)a4;
- (void)_removeDonatedIntent;
- (void)_updateAppleMediaAccessoryPowerAction:(id)a3 forMessage:(id)a4;
- (void)_updateNaturalLightingAction:(id)a3 forMessage:(id)a4;
- (void)_updatePlaybackAction:(id)a3 forMessage:(id)a4;
- (void)_updateWriteAction:(id)a3 forMessage:(id)a4;
- (void)addAction:(id)a3;
- (void)auditActionsForAccessory:(id)a3 transaction:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)execute:(id)a3;
- (void)executeWithTriggerSource:(id)a3 captureCurrentState:(BOOL)a4 completionHandler:(id)a5;
- (void)handleExecutionCompletionWithResponsePayload:(id)a3 error:(id)a4;
- (void)handleRemovalOfAccessory:(id)a3 transaction:(id)a4;
- (void)handleRemovalOfService:(id)a3 transaction:(id)a4;
- (void)invalidate;
- (void)isAccessValidForExecutionWithMessage:(id)a3 completion:(id)a4;
- (void)removeAction:(id)a3;
- (void)removeAllActions;
- (void)sendNotificationWithAction:(id)a3 message:(id)a4;
- (void)setActions:(id)a3;
- (void)setName:(id)a3;
- (void)timerDidFire:(id)a3;
- (void)transactionObjectRemoved:(id)a3 message:(id)a4;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
@end

@implementation HMDActionSet

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  if (isInternalBuild())
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [(HMDActionSet *)self name];
    v5 = [(HMDActionSet *)self uuid];
    v6 = [v3 stringWithFormat:@"%@/%@", v4, v5];
  }

  else
  {
    v4 = [(HMDActionSet *)self uuid];
    v6 = [v4 UUIDString];
  }

  return v6;
}

- (id)backingStoreObjects:(int64_t)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v41 = v8;
    v42 = 2048;
    v43 = a3;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Creating backing store objects for version: %ld", buf, 0x16u);
  }

  v33 = a3;

  objc_autoreleasePoolPop(v5);
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = [(HMDActionSet *)v6 modelObjectWithChangeType:1];
  [v9 addObject:v10];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = [(HMDActionSet *)v6 actions];
  v35 = [v11 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v35)
  {
    v12 = *v37;
    v34 = *v37;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(v11);
        }

        v14 = *(*(&v36 + 1) + 8 * i);
        v15 = [v14 type];
        if (v15 <= 5)
        {
          if (v15 == 2)
          {
            v17 = [(HMDActionSet *)v6 home];
            v18 = [(HMDActionSet *)v6 uuid];
            v19 = [v17 triggerOwnedActionSetWithUUID:v18];

            [v19 addAction:v14];
            v16 = [v14 modelObjectWithChangeType:1];

            if (v16)
            {
LABEL_11:
              [v9 addObject:v16];

              continue;
            }
          }

          else
          {
            v16 = [v14 modelObjectWithChangeType:1];
            if (v16)
            {
              goto LABEL_11;
            }
          }
        }

        v20 = objc_autoreleasePoolPush();
        v21 = v6;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v23 = v11;
          v24 = v9;
          v26 = v25 = v6;
          v27 = HMActionTypeAsString();
          *buf = 138543874;
          v41 = v26;
          v42 = 2112;
          v43 = v14;
          v44 = 2112;
          v45 = v27;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Did not create backing store object for action %@:%@", buf, 0x20u);

          v6 = v25;
          v9 = v24;
          v11 = v23;
          v12 = v34;
        }

        objc_autoreleasePoolPop(v20);
      }

      v35 = [v11 countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v35);
  }

  v28 = [(HMDActionSet *)v6 appData];

  if (v33 >= 3 && v28)
  {
    v29 = [(HMDActionSet *)v6 appData];
    v30 = [v29 modelObjectWithChangeType:1];
    [v9 addObject:v30];
  }

  v31 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)modelObjectWithChangeType:(unint64_t)a3
{
  v5 = [HMDActionSetModel alloc];
  v6 = [(HMDActionSet *)self uuid];
  v7 = [(HMDActionSet *)self home];
  v8 = [v7 uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:a3 uuid:v6 parentUUID:v8];

  v10 = [(HMDActionSet *)self name];
  [(HMDActionSetModel *)v9 setName:v10];

  v11 = [(HMDActionSet *)self type];
  [(HMDActionSetModel *)v9 setType:v11];

  v12 = [(HMDActionSet *)self lastExecutionDate];

  if (v12)
  {
    v13 = [(HMDActionSet *)self lastExecutionDate];
    [(HMDActionSetModel *)v9 setLastExecutionDate:v13];
  }

  return v9;
}

- (void)_processActionSetModelUpdated:(id)a3 message:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [v6 transactionResult];
  v8 = [v16 name];

  if (v8)
  {
    v9 = [(HMDActionSet *)self _handleRenameActionSetTransaction:v16 message:v6];
    [v7 markSaveToAssistant];
  }

  else
  {
    v9 = 1;
  }

  v10 = [v16 lastExecutionDate];
  if (v10)
  {
    v11 = v10;
    v12 = [(HMDActionSet *)self lastExecutionDate];
    v13 = [v16 lastExecutionDate];
    v14 = [v12 compare:v13];

    if (v14 == -1)
    {
      v15 = [v16 lastExecutionDate];
      [(HMDActionSet *)self setLastExecutionDate:v15];
    }
  }

  [v7 markChanged];
  if (!v9)
  {
    [v6 respondWithPayload:0];
  }
}

- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v63 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  if (v12)
  {
    [(HMDActionSet *)self _processActionSetModelUpdated:v12 message:v10];
    v13 = v9;
    goto LABEL_37;
  }

  v13 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v15)
  {
    v16 = [v15 uuid];
    v17 = [(HMDActionSet *)self actionWithUUID:v16];

    if (!v17)
    {
      [(HMDActionSet *)self _handleAddCharacteristicWriteActionTransaction:v15 message:v10];
LABEL_36:

      goto LABEL_37;
    }

    goto LABEL_35;
  }

  v13 = v13;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v13;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  if (v19)
  {
    v20 = [v19 uuid];
    v17 = [(HMDActionSet *)self actionWithUUID:v20];

    if (!v17)
    {
      [(HMDActionSet *)self _handleAddMediaPlaybackActionTransaction:v19 message:v10];
      goto LABEL_36;
    }

LABEL_35:
    [v17 transactionObjectUpdated:v8 newValues:v13 message:v10];
    goto LABEL_36;
  }

  v13 = v13;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v13;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  if (v22)
  {
    v23 = [v22 uuid];
    v17 = [(HMDActionSet *)self actionWithUUID:v23];

    if (!v17)
    {
      [(HMDActionSet *)self _handleAddShortcutActionTransaction:v22 message:v10];
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v13 = v13;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v13;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  if (v25)
  {
    v26 = [v25 uuid];
    v17 = [(HMDActionSet *)self actionWithUUID:v26];

    if (!v17)
    {
      [(HMDActionSet *)self _handleAddLightProfileNaturalLightingActionTransaction:v25 message:v10];
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v13 = v13;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = v13;
  }

  else
  {
    v27 = 0;
  }

  v28 = v27;

  if (v28)
  {
    v29 = [v28 uuid];
    v17 = [(HMDActionSet *)self actionWithUUID:v29];

    if (!v17)
    {
      [(HMDActionSet *)self _handleAddAppleMediaAccessoryPowerActionTransaction:v28 message:v10];
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v13 = v13;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = v13;
  }

  else
  {
    v31 = 0;
  }

  v32 = v31;

  if (v32)
  {
    v33 = +[HMDCoreData featuresDataSource];
    v34 = [v33 isRVCEnabled];

    if (v34)
    {
      v35 = [v32 uuid];
      v17 = [(HMDActionSet *)self actionWithUUID:v35];

      if (!v17)
      {
        [(HMDActionSet *)self _handleAddCommandActionTransaction:v32 message:v10];
        goto LABEL_36;
      }

      goto LABEL_35;
    }
  }

  v13 = v13;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = v13;
  }

  else
  {
    v36 = 0;
  }

  v37 = v36;

  if (v37)
  {
    v38 = [v37 uuid];
    v39 = [(HMDActionSet *)self actionWithUUID:v38];

    if (v39)
    {
      [v39 transactionObjectUpdated:v8 newValues:v13 message:v10];
    }

    else
    {
      v56 = 0;
      v42 = __HMDActionSetAddActionWithModel(self, v37, v10, &v56);
      v43 = v56;
      if ((v42 & 1) == 0)
      {
        v44 = objc_autoreleasePoolPush();
        v45 = self;
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v47 = v55 = v44;
          *buf = 138543874;
          v58 = v47;
          v59 = 2112;
          v60 = v37;
          v61 = 2112;
          v62 = v43;
          _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_ERROR, "%{public}@Failed to process model, %@, with error: %@", buf, 0x20u);

          v44 = v55;
        }

        objc_autoreleasePoolPop(v44);
        v48 = [v10 responseHandler];

        if (v48)
        {
          v49 = [v10 responseHandler];
          (v49)[2](v49, v43, 0);
        }
      }
    }
  }

  else
  {
    v13 = v13;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = v13;
    }

    else
    {
      v40 = 0;
    }

    v41 = v40;

    if (v41)
    {
      [(HMDActionSet *)self _handleUpdateAppDataModel:v41 message:v10];
    }

    else
    {
      v50 = objc_autoreleasePoolPush();
      v51 = self;
      v52 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = HMFGetLogIdentifier();
        *buf = 138543874;
        v58 = v53;
        v59 = 2112;
        v60 = v13;
        v61 = 2112;
        v62 = objc_opt_class();
        v54 = v62;
        _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectUpdated]", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v50);
      v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v10 respondWithError:v13];
    }
  }

LABEL_37:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectRemoved:(id)a3 message:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v9)
  {
    [(HMDActionSet *)self _handleRemoveActionTransaction:v9 message:v7];
    v10 = v6;
  }

  else
  {
    v10 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      [(HMDActionSet *)self _handleRemoveAppDataModel:v12 message:v7];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v19 = 138543874;
        v20 = v16;
        v21 = 2112;
        v22 = v10;
        v23 = 2112;
        v24 = objc_opt_class();
        v17 = v24;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectRemoved]", &v19, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v7 respondWithError:v10];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_executeGenericActions:(id)a3 source:(unint64_t)a4 clientName:(id)a5 completionHandler:(id)a6
{
  v45 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v23 = a5;
  v11 = a6;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy__31300;
  v42[4] = __Block_byref_object_dispose__31301;
  v43 = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy__31300;
  v40[4] = __Block_byref_object_dispose__31301;
  [MEMORY[0x277CBEB38] dictionary];
  v41 = v21 = v11;
  v12 = [(HMDActionSet *)self workQueue];
  v13 = dispatch_group_create();
  objc_initWeak(&location, self);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v10;
  v14 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v14)
  {
    v15 = *v36;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v35 + 1) + 8 * i);
        dispatch_group_enter(v13);
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __75__HMDActionSet__executeGenericActions_source_clientName_completionHandler___block_invoke;
        v28[3] = &unk_278672220;
        v29 = v12;
        objc_copyWeak(&v34, &location);
        v30 = v17;
        v32 = v42;
        v33 = v40;
        v31 = v13;
        [v17 executeWithSource:a4 clientName:v23 completionHandler:v28];

        objc_destroyWeak(&v34);
      }

      v14 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v14);
  }

  v18 = [(HMDActionSet *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HMDActionSet__executeGenericActions_source_clientName_completionHandler___block_invoke_193;
  block[3] = &unk_278684DB8;
  v25 = v21;
  v26 = v42;
  v27 = v40;
  v19 = v21;
  dispatch_group_notify(v13, v18, block);

  objc_destroyWeak(&location);
  _Block_object_dispose(v40, 8);

  _Block_object_dispose(v42, 8);
  v20 = *MEMORY[0x277D85DE8];
}

void __75__HMDActionSet__executeGenericActions_source_clientName_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HMDActionSet__executeGenericActions_source_clientName_completionHandler___block_invoke_2;
  block[3] = &unk_2786721F8;
  objc_copyWeak(&v14, (a1 + 72));
  v5 = *(a1 + 40);
  v10 = v3;
  v11 = v5;
  v13 = *(a1 + 64);
  v8 = *(a1 + 48);
  v6 = v8;
  v12 = v8;
  v7 = v3;
  dispatch_async(v4, block);

  objc_destroyWeak(&v14);
}

void __75__HMDActionSet__executeGenericActions_source_clientName_completionHandler___block_invoke_193(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 32));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 48) + 8) + 40));
    v2 = v3;
  }
}

void __75__HMDActionSet__executeGenericActions_source_clientName_completionHandler___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = *(a1 + 32);
  v4 = objc_autoreleasePoolPush();
  v5 = WeakRetained;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      v18 = 138543874;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Action execution failed with error: %@ / %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      v18 = 138543618;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Action execution finished with success: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v13 = [MEMORY[0x277CBEAC0] hmd_dictionaryWithActionExecutionError:*(a1 + 32)];
  v14 = *(*(*(a1 + 64) + 8) + 40);
  v15 = [*(a1 + 40) uuid];
  v16 = [v15 UUIDString];
  [v14 setObject:v13 forKeyedSubscript:v16];

  dispatch_group_leave(*(a1 + 48));
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_executeAppleMediaAccessoryPowerActions:(id)a3 source:(unint64_t)a4 clientName:(id)a5 completionHandler:(id)a6
{
  v50 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v27 = a5;
  v25 = a6;
  v12 = objc_alloc(MEMORY[0x277D0F770]);
  v13 = MEMORY[0x277CCACA8];
  v14 = MEMORY[0x22AAD2510](self, a2);
  v15 = [v13 stringWithFormat:@"%@, %s:%ld", v14, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables/Sources/homed/Action Sets/HMDActionSet.m", 3377];
  v48 = [v12 initWithName:v15];

  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x3032000000;
  v46[3] = __Block_byref_object_copy__31300;
  v46[4] = __Block_byref_object_dispose__31301;
  v47 = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = __Block_byref_object_copy__31300;
  v44[4] = __Block_byref_object_dispose__31301;
  v45 = [MEMORY[0x277CBEB38] dictionary];
  v16 = dispatch_group_create();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v11;
  v17 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v17)
  {
    v18 = *v41;
    do
    {
      v19 = 0;
      do
      {
        if (*v41 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v40 + 1) + 8 * v19);
        objc_initWeak(&location, self);
        dispatch_group_enter(v16);
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __92__HMDActionSet__executeAppleMediaAccessoryPowerActions_source_clientName_completionHandler___block_invoke;
        v32[3] = &unk_278672220;
        objc_copyWeak(&v38, &location);
        v21 = v48;
        v36 = v46;
        v37 = v44;
        v33 = v21;
        v34 = v20;
        v35 = v16;
        [v20 executeWithSource:a4 clientName:v27 completionHandler:v32];

        objc_destroyWeak(&v38);
        objc_destroyWeak(&location);
        ++v19;
      }

      while (v17 != v19);
      v17 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v17);
  }

  v22 = [(HMDActionSet *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__HMDActionSet__executeAppleMediaAccessoryPowerActions_source_clientName_completionHandler___block_invoke_192;
  block[3] = &unk_278684DB8;
  v29 = v25;
  v30 = v46;
  v31 = v44;
  v23 = v25;
  dispatch_group_notify(v16, v22, block);

  _Block_object_dispose(v44, 8);
  _Block_object_dispose(v46, 8);

  __HMFActivityScopeLeave();
  v24 = *MEMORY[0x277D85DE8];
}

void __92__HMDActionSet__executeAppleMediaAccessoryPowerActions_source_clientName_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v6 = objc_autoreleasePoolPush();
  v7 = WeakRetained;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v4)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 32) identifier];
      v12 = [v11 shortDescription];
      v21 = 138543874;
      v22 = v10;
      v23 = 2114;
      v24 = v12;
      v25 = 2112;
      v26 = v4;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] ATV Power action failed with error: %@ ", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [*(a1 + 32) identifier];
      v15 = [v14 shortDescription];
      v21 = 138543618;
      v22 = v13;
      v23 = 2114;
      v24 = v15;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] ATV Power action finished with success", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v16 = [MEMORY[0x277CBEAC0] hmd_dictionaryWithActionExecutionError:v4];
  v17 = *(*(*(a1 + 64) + 8) + 40);
  v18 = [*(a1 + 40) uuid];
  v19 = [v18 UUIDString];
  [v17 setObject:v16 forKeyedSubscript:v19];

  dispatch_group_leave(*(a1 + 48));
  v20 = *MEMORY[0x277D85DE8];
}

- (void)_executeCommandActions:(id)a3 source:(unint64_t)a4 clientName:(id)a5 completionHandler:(id)a6
{
  v51 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v28 = a5;
  v25 = a6;
  v11 = objc_alloc(MEMORY[0x277D0F770]);
  v12 = MEMORY[0x277CCACA8];
  v13 = MEMORY[0x22AAD2510](self, a2);
  v14 = [v12 stringWithFormat:@"%@, %s:%ld", v13, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables/Sources/homed/Action Sets/HMDActionSet.m", 3339];
  v49 = [v11 initWithName:v14];

  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = __Block_byref_object_copy__31300;
  v47[4] = __Block_byref_object_dispose__31301;
  v48 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = __Block_byref_object_copy__31300;
  v45[4] = __Block_byref_object_dispose__31301;
  v46 = [MEMORY[0x277CBEB38] dictionary];
  v15 = [(HMDActionSet *)self workQueue];
  v16 = dispatch_group_create();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v10;
  v17 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v17)
  {
    v18 = *v42;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v42 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v41 + 1) + 8 * i);
        dispatch_group_enter(v16);
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __75__HMDActionSet__executeCommandActions_source_clientName_completionHandler___block_invoke;
        v33[3] = &unk_2786721D0;
        v34 = v15;
        v35 = self;
        v21 = v49;
        v39 = v47;
        v40 = v45;
        v36 = v21;
        v37 = v20;
        v38 = v16;
        [v20 executeWithSource:a4 clientName:v28 completionHandler:v33];
      }

      v17 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v17);
  }

  v22 = [(HMDActionSet *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HMDActionSet__executeCommandActions_source_clientName_completionHandler___block_invoke_191;
  block[3] = &unk_278684DB8;
  v30 = v25;
  v31 = v47;
  v32 = v45;
  v23 = v25;
  dispatch_group_notify(v16, v22, block);

  _Block_object_dispose(v45, 8);
  _Block_object_dispose(v47, 8);

  __HMFActivityScopeLeave();
  v24 = *MEMORY[0x277D85DE8];
}

void __75__HMDActionSet__executeCommandActions_source_clientName_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HMDActionSet__executeCommandActions_source_clientName_completionHandler___block_invoke_2;
  block[3] = &unk_2786847E8;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v13 = v3;
  v14 = v4;
  v7 = v6;
  v18 = *(a1 + 80);
  v8 = *(a1 + 56);
  v15 = v7;
  v16 = v8;
  v11 = *(a1 + 64);
  v9 = v11;
  v17 = v11;
  v10 = v3;
  dispatch_async(v5, block);
}

void __75__HMDActionSet__executeCommandActions_source_clientName_completionHandler___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (v2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 48) identifier];
      v9 = [v8 shortDescription];
      v10 = *(a1 + 32);
      v19 = 138543874;
      v20 = v7;
      v21 = 2114;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Command action failed with error: %@ ", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), *(a1 + 32));
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 48) identifier];
      v13 = [v12 shortDescription];
      v19 = 138543618;
      v20 = v11;
      v21 = 2114;
      v22 = v13;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Command action finished with success", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
  }

  v14 = [MEMORY[0x277CBEAC0] hmd_dictionaryWithActionExecutionError:*(a1 + 32)];
  v15 = *(*(*(a1 + 80) + 8) + 40);
  v16 = [*(a1 + 56) uuid];
  v17 = [v16 UUIDString];
  [v15 setObject:v14 forKeyedSubscript:v17];

  dispatch_group_leave(*(a1 + 64));
  v18 = *MEMORY[0x277D85DE8];
}

- (void)_executeMediaPlaybackActions:(id)a3 source:(unint64_t)a4 clientName:(id)a5 completionHandler:(id)a6
{
  v51 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v27 = a5;
  v24 = a6;
  v11 = objc_alloc(MEMORY[0x277D0F770]);
  v12 = MEMORY[0x277CCACA8];
  v13 = MEMORY[0x22AAD2510](self, a2);
  v14 = [v12 stringWithFormat:@"%@, %s:%ld", v13, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables/Sources/homed/Action Sets/HMDActionSet.m", 3288];
  v49 = [v11 initWithName:v14];

  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = __Block_byref_object_copy__31300;
  v47[4] = __Block_byref_object_dispose__31301;
  v48 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = __Block_byref_object_copy__31300;
  v45[4] = __Block_byref_object_dispose__31301;
  v46 = [MEMORY[0x277CBEB38] dictionary];
  v15 = [(HMDActionSet *)self workQueue];
  v16 = dispatch_group_create();
  objc_initWeak(&location, self);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v10;
  v17 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v17)
  {
    v18 = *v41;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v41 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v40 + 1) + 8 * i);
        dispatch_group_enter(v16);
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __81__HMDActionSet__executeMediaPlaybackActions_source_clientName_completionHandler___block_invoke;
        v32[3] = &unk_2786721A8;
        v33 = v15;
        objc_copyWeak(&v39, &location);
        v34 = v49;
        v35 = v20;
        v37 = v47;
        v38 = v45;
        v36 = v16;
        [v20 executeWithSource:a4 clientName:v27 completionHandler:v32];

        objc_destroyWeak(&v39);
      }

      v17 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v17);
  }

  v21 = [(HMDActionSet *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__HMDActionSet__executeMediaPlaybackActions_source_clientName_completionHandler___block_invoke_190;
  block[3] = &unk_278684DB8;
  v29 = v24;
  v30 = v47;
  v31 = v45;
  v22 = v24;
  dispatch_group_notify(v16, v21, block);

  objc_destroyWeak(&location);
  _Block_object_dispose(v45, 8);

  _Block_object_dispose(v47, 8);
  __HMFActivityScopeLeave();

  v23 = *MEMORY[0x277D85DE8];
}

void __81__HMDActionSet__executeMediaPlaybackActions_source_clientName_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__HMDActionSet__executeMediaPlaybackActions_source_clientName_completionHandler___block_invoke_2;
  block[3] = &unk_278672180;
  objc_copyWeak(&v16, (a1 + 80));
  v11 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v12 = v5;
  v13 = v6;
  v15 = *(a1 + 72);
  v9 = *(a1 + 56);
  v7 = v9;
  v14 = v9;
  v8 = v3;
  dispatch_async(v4, block);

  objc_destroyWeak(&v16);
}

void __81__HMDActionSet__executeMediaPlaybackActions_source_clientName_completionHandler___block_invoke_2(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = *(a1 + 32);
  v4 = objc_autoreleasePoolPush();
  v5 = WeakRetained;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 40) identifier];
      v10 = [v9 shortDescription];
      v11 = *(a1 + 32);
      *buf = 138543874;
      v39 = v8;
      v40 = 2114;
      v41 = v10;
      v42 = 2112;
      v43 = v11;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Play/Pause action failed with error: %@ ", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 32));
    v12 = encodeRootObjectForIncomingXPCMessage(*(a1 + 32), 0);
    v36 = @"HM.mediaPlaybackErrorDataKey";
    v37 = v12;
    v13 = MEMORY[0x277CBEAC0];
    v14 = &v37;
    v15 = &v36;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [*(a1 + 40) identifier];
      v18 = [v17 shortDescription];
      *buf = 138543618;
      v39 = v16;
      v40 = 2114;
      v41 = v18;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Play/Pause action finished with success", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v34 = *MEMORY[0x277CD08B0];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 48), "state")}];
    v35 = v12;
    v13 = MEMORY[0x277CBEAC0];
    v14 = &v35;
    v15 = &v34;
  }

  v19 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:1];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v20 = [*(a1 + 48) mediaProfiles];
  v21 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v30;
    do
    {
      v24 = 0;
      do
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(*(a1 + 72) + 8) + 40);
        v26 = [*(*(&v29 + 1) + 8 * v24) uniqueIdentifier];
        v27 = [v26 UUIDString];
        [v25 setObject:v19 forKeyedSubscript:v27];

        ++v24;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v22);
  }

  dispatch_group_leave(*(a1 + 56));
  v28 = *MEMORY[0x277D85DE8];
}

- (void)_issueReadRequests
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = [(HMDActionSet *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_alloc(MEMORY[0x277D0F770]);
  v5 = MEMORY[0x277CCACA8];
  v6 = MEMORY[0x22AAD2510](self, a2);
  v7 = [v5 stringWithFormat:@"%@, %s:%ld", v6, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables/Sources/homed/Action Sets/HMDActionSet.m", 3228];
  v57 = [v4 initWithName:v7];

  v38 = [MEMORY[0x277CBEB18] array];
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v9 = [(HMDActionSet *)self actions];
  v10 = [v9 countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v10)
  {
    obj = v9;
    v40 = *v54;
    do
    {
      v41 = v10;
      for (i = 0; i != v41; ++i)
      {
        if (*v54 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v53 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        v42 = v13;

        if (v42)
        {
          v14 = [v42 characteristic];
          if ([v14 supportsRead])
          {
            v15 = [HMDCharacteristicRequest requestWithCharacteristic:v14];
            [v38 addObject:v15];
          }
        }

        v16 = v12;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        v18 = v17;

        if (v18)
        {
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v19 = [v18 mediaProfiles];
          v20 = [v19 countByEnumeratingWithState:&v49 objects:v58 count:16];
          if (v20)
          {
            v21 = *v50;
            do
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v50 != v21)
                {
                  objc_enumerationMutation(v19);
                }

                v23 = *(*(&v49 + 1) + 8 * j);
                v24 = [v23 mediaSession];
                v25 = [v24 state];
                v26 = [v23 uniqueIdentifier];
                [v8 setObject:v25 forKeyedSubscript:v26];
              }

              v20 = [v19 countByEnumeratingWithState:&v49 objects:v58 count:16];
            }

            while (v20);
          }
        }
      }

      v9 = obj;
      v10 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v10);
  }

  v27 = [(HMDActionSet *)self executionMessage];
  v28 = [v27 source];

  v29 = v57;
  [v38 count];

  objc_initWeak(&location, self);
  v30 = [(HMDActionSet *)self home];
  v31 = [(HMDActionSet *)self description];
  v32 = [(HMDActionSet *)self executionMessage];
  v33 = [v32 qualityOfService];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __34__HMDActionSet__issueReadRequests__block_invoke;
  v43[3] = &unk_2786839D0;
  objc_copyWeak(&v47, &location);
  v44 = v57;
  v34 = v38;
  v45 = v34;
  v35 = v8;
  v46 = v35;
  [v30 readCharacteristicValues:v34 source:v28 sourceForLogging:v31 qualityOfService:v33 withCompletionHandler:v43];

  objc_destroyWeak(&v47);
  objc_destroyWeak(&location);

  __HMFActivityScopeLeave();
  v36 = *MEMORY[0x277D85DE8];
}

void __34__HMDActionSet__issueReadRequests__block_invoke(id *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained workQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __34__HMDActionSet__issueReadRequests__block_invoke_189;
    v16[3] = &unk_278683598;
    v17 = v5;
    v18 = v8;
    v19 = a1[4];
    v20 = a1[5];
    v21 = a1[6];
    v22 = v6;
    dispatch_async(v9, v16);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [a1[4] identifier];
      v14 = [v13 shortDescription];
      *buf = 138543618;
      v24 = v12;
      v25 = 2114;
      v26 = v14;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Lost self while reading characteristic values", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __34__HMDActionSet__issueReadRequests__block_invoke_189(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = [*(a1 + 48) identifier];
      v7 = [v6 shortDescription];
      v8 = *(a1 + 56);
      v9 = *(a1 + 32);
      v21 = 138544130;
      v22 = v5;
      v23 = 2114;
      v24 = v7;
      v25 = 2112;
      v26 = v8;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fulfill read requests (%@) before evaluating trigger: %@", &v21, 0x2Au);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 40) handleExecutionCompletionWithResponsePayload:0 error:*(a1 + 32)];
  }

  else
  {
    v10 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:*(a1 + 64)];
    [v10 addEntriesFromDictionary:*(a1 + 72)];
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [*(a1 + 48) identifier];
      v16 = [v15 shortDescription];
      v17 = *(a1 + 56);
      v18 = *(a1 + 72);
      v21 = 138544130;
      v22 = v14;
      v23 = 2114;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v18;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Finished read requests %@ with response %@", &v21, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
    [*(a1 + 40) setExecutionInitialStates:v10];
    v19 = objc_autoreleasePoolPush();
    [*(a1 + 40) _issueWriteRequests:0];
    objc_autoreleasePoolPop(v19);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)_executeGenericActions:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [v7 source];
    v9 = [v7 clientName];
    v10 = v9;
    v11 = @"Unknown";
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;

    v17 = 0;
    v13 = [MEMORY[0x277D0F7C0] futureWithPromise:&v17];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __47__HMDActionSet__executeGenericActions_message___block_invoke;
    v15[3] = &unk_278688370;
    v15[4] = self;
    v16 = v17;
    [(HMDActionSet *)self _executeGenericActions:v6 source:v8 clientName:v12 completionHandler:v15];
  }

  else
  {
    v13 = [MEMORY[0x277D0F7C0] futureWithValue:MEMORY[0x277CBEC10]];
  }

  return v13;
}

void __47__HMDActionSet__executeGenericActions_message___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && ![v6 count])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to execute generic actions: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 40) rejectWithError:v5];
  }

  else
  {
    [*(a1 + 40) fulfillWithValue:v7];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_executeAppleMediaAccessoryPowerActions:(id)a3 message:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [v7 source];
    v9 = [v7 clientName];
    v10 = v9;
    v11 = @"Unknown";
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;

    v23 = 0;
    v13 = [MEMORY[0x277D0F7C0] futureWithPromise:&v23];
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [v6 count];
      *buf = 138543618;
      v25 = v17;
      v26 = 2048;
      v27 = v18;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Executing apple tv power actions, count: %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __64__HMDActionSet__executeAppleMediaAccessoryPowerActions_message___block_invoke;
    v21[3] = &unk_278688370;
    v21[4] = v15;
    v22 = v23;
    [(HMDActionSet *)v15 _executeAppleMediaAccessoryPowerActions:v6 source:v8 clientName:v12 completionHandler:v21];
  }

  else
  {
    v13 = [MEMORY[0x277D0F7C0] futureWithValue:MEMORY[0x277CBEC10]];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v13;
}

void __64__HMDActionSet__executeAppleMediaAccessoryPowerActions_message___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && ![v6 count])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to execute apple tv power actions: %{public}@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 40) rejectWithError:v5];
  }

  else
  {
    [*(a1 + 40) fulfillWithValue:v7];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_executeNaturalLightingActionsForMatter:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(HMDActionSet *)self home];
    v6 = v5;
    if (v5)
    {
      [v5 executeMatterNaturalLightingActions:v4];
    }

    else
    {
      [MEMORY[0x277D0F7C0] futureWithValue:MEMORY[0x277CBEC10]];
    }
    v7 = ;
  }

  else
  {
    v7 = [MEMORY[0x277D0F7C0] futureWithValue:MEMORY[0x277CBEC10]];
  }

  return v7;
}

- (id)_executeNaturalLightingWriteRequests:(id)a3 message:(id)a4 naturalLightingActions:(id)a5 naturalLightingActionResultByActionUUID:(id)a6
{
  v53 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v10 count])
  {
    v32 = [v11 source];
    v39 = 0;
    v33 = [MEMORY[0x277D0F7C0] futureWithPromise:&v39];
    v14 = [MEMORY[0x277CCAD78] UUID];
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v31 = v12;
      v18 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v19 = v15;
      if (v14)
      {
        [v14 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v41 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      v23 = [v11 identifier];

      if (v23)
      {
        v24 = [v11 identifier];
        [v24 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v15 = v19;
      v40 = *buf;
      v25 = [v10 count];
      *buf = 138544898;
      *&buf[4] = v18;
      *&buf[12] = 1042;
      *&buf[14] = 16;
      v43 = 2098;
      v44 = &v41;
      v45 = 1042;
      v46 = 16;
      v47 = 2098;
      v48 = &v40;
      v49 = 2114;
      v50 = v16;
      v51 = 2048;
      v52 = v25;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Executing write requests with identifier: %{public,uuid_t}.16P for request identifier: %{public,uuid_t}.16P from natural lighting action set: %{public}@ count: %lu", buf, 0x40u);

      v12 = v31;
    }

    objc_autoreleasePoolPop(v15);
    v26 = [(HMDActionSet *)v16 home];
    v27 = [v11 transport];
    v28 = [v11 qualityOfService];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __124__HMDActionSet__executeNaturalLightingWriteRequests_message_naturalLightingActions_naturalLightingActionResultByActionUUID___block_invoke;
    v34[3] = &unk_27867DA38;
    v34[4] = v16;
    v35 = v39;
    v36 = v10;
    v37 = v12;
    v38 = v13;
    [v26 writeCharacteristicValues:v36 source:v32 biomeSource:1 identifier:v14 transport:v27 qualityOfService:v28 withCompletionHandler:v34];

    v22 = v33;
  }

  else
  {
    v20 = MEMORY[0x277D0F7C0];
    v21 = [v13 copy];
    v22 = [v20 futureWithValue:v21];
  }

  v29 = *MEMORY[0x277D85DE8];

  return v22;
}

void __124__HMDActionSet__executeNaturalLightingWriteRequests_message_naturalLightingActions_naturalLightingActionResultByActionUUID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v80 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v61 = v5;
  v62 = a1;
  if (v5 && ![v6 count])
  {
    v53 = objc_autoreleasePoolPush();
    v54 = *(a1 + 32);
    v55 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v56 = HMFGetLogIdentifier();
      *buf = 138543618;
      v72 = v56;
      v73 = 2112;
      v74 = v5;
      _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_ERROR, "%{public}@Failed to execute natural lighting write requests: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v53);
    [*(v62 + 40) rejectWithError:v5];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v72 = v11;
      v73 = 2112;
      v74 = v7;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Received response for natural lighting accessory write requests: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v60 = [MEMORY[0x277CBEB58] set];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v12 = v62;
    obj = *(v62 + 48);
    v13 = [obj countByEnumeratingWithState:&v67 objects:v79 count:16];
    if (v13)
    {
      v15 = v13;
      v16 = *v68;
      *&v14 = 138543874;
      v58 = v14;
      v59 = *v68;
      do
      {
        v17 = 0;
        v63 = v15;
        do
        {
          if (*v68 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v67 + 1) + 8 * v17);
          v19 = [v18 identifier];

          if (v19)
          {
            v20 = *(v12 + 56);
            v66[0] = MEMORY[0x277D85DD0];
            v66[1] = 3221225472;
            v66[2] = __124__HMDActionSet__executeNaturalLightingWriteRequests_message_naturalLightingActions_naturalLightingActionResultByActionUUID___block_invoke_182;
            v66[3] = &unk_278675578;
            v66[4] = v18;
            v21 = [v20 na_firstObjectPassingTest:v66];
            if (v21)
            {
              v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
              v23 = [v21 isNaturalLightingEnabled];
              v65 = v22;
              v24 = v7;
              v25 = [v7 hmd_isValidResponseForWriteRequest:v18 naturalLightingEnabled:v23 error:&v65];
              v26 = v65;

              v27 = objc_autoreleasePoolPush();
              v28 = *(v12 + 32);
              v29 = HMFGetOSLogHandle();
              v30 = v29;
              if (v25)
              {
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                {
                  v31 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v72 = v31;
                  v73 = 2112;
                  v74 = v21;
                  v32 = v30;
                  v33 = OS_LOG_TYPE_DEBUG;
                  v34 = "%{public}@Successfully executed natural lighting action: %@";
                  v35 = 22;
                  goto LABEL_17;
                }
              }

              else if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                v31 = HMFGetLogIdentifier();
                *buf = v58;
                v72 = v31;
                v73 = 2112;
                v74 = v21;
                v75 = 2112;
                v76 = v26;
                v32 = v30;
                v33 = OS_LOG_TYPE_INFO;
                v34 = "%{public}@Failed to execute natural lighting action %@:%@";
                v35 = 32;
LABEL_17:
                _os_log_impl(&dword_229538000, v32, v33, v34, buf, v35);
              }

              objc_autoreleasePoolPop(v27);
              v36 = [MEMORY[0x277CBEAC0] hmd_dictionaryWithActionExecutionError:v61];
              v12 = v62;
              v37 = *(v62 + 64);
              v38 = [v21 uuid];
              v39 = [v38 UUIDString];
              [v37 setObject:v36 forKeyedSubscript:v39];

              v40 = [v18 characteristic];
              [v60 addObject:v40];

              v7 = v24;
              v16 = v59;
              v15 = v63;
            }
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [obj countByEnumeratingWithState:&v67 objects:v79 count:16];
      }

      while (v15);
    }

    if ([v60 count])
    {
      v41 = [v7 hmd_responseByRemovingEntriesForCharacteristics:v60];
      v42 = objc_autoreleasePoolPush();
      v43 = *(v12 + 32);
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = HMFGetLogIdentifier();
        *buf = 138544130;
        v72 = v45;
        v73 = 2112;
        v74 = v60;
        v75 = 2112;
        v76 = v7;
        v77 = 2112;
        v78 = v41;
        _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@Updated response by removing entries for characteristics: %@ from: (%@ -> %@)", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v42);
    }

    else
    {
      v41 = v7;
    }

    v46 = [v41 mutableCopy];
    [v46 addEntriesFromDictionary:*(v62 + 64)];
    v47 = objc_autoreleasePoolPush();
    v48 = *(v62 + 32);
    v49 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v50 = HMFGetLogIdentifier();
      *buf = 138543618;
      v72 = v50;
      v73 = 2112;
      v74 = v46;
      _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@Finished executing natural lighting actions with response: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v47);
    v51 = *(v62 + 40);
    v52 = [v46 copy];
    [v51 fulfillWithValue:v52];

    v7 = v41;
  }

  v57 = *MEMORY[0x277D85DE8];
}

uint64_t __124__HMDActionSet__executeNaturalLightingWriteRequests_message_naturalLightingActions_naturalLightingActionResultByActionUUID___block_invoke_182(uint64_t a1, void *a2)
{
  v3 = [a2 lightProfileUUID];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (id)_executeNaturalLightingActions:(id)a3 writeRequests:(id)a4 message:(id)a5
{
  v70 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v39 = a5;
  v40 = v8;
  v38 = v9;
  if ([v8 count] && objc_msgSend(v9, "count"))
  {
    v42 = [v9 mutableCopy];
    v44 = [MEMORY[0x277CBEB38] dictionary];
    v61 = 0;
    v62 = &v61;
    v63 = 0x2810000000;
    v64 = &unk_22A7E2FC5;
    v65 = 0;
    v43 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v10 = objc_autoreleasePoolPush();
    v45 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Fetching up-to-date light profile settings before execution", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = v8;
    v13 = [obj countByEnumeratingWithState:&v57 objects:v69 count:16];
    if (v13)
    {
      v14 = *v58;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v58 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v57 + 1) + 8 * i);
          v17 = [v16 lightProfile];
          v18 = [v16 uuid];
          v19 = [v18 UUIDString];

          if (v17)
          {
            *buf = 0;
            v20 = [MEMORY[0x277D0F7C0] futureWithPromise:buf];
            v51[0] = MEMORY[0x277D85DD0];
            v51[1] = 3221225472;
            v51[2] = __69__HMDActionSet__executeNaturalLightingActions_writeRequests_message___block_invoke;
            v51[3] = &unk_278672130;
            v51[4] = v16;
            v51[5] = v45;
            v56 = &v61;
            v52 = v44;
            v53 = v19;
            v54 = v42;
            v55 = *buf;
            [v17 fetchNaturalLightingEnabledWithCompletion:v51];
            [v43 addObject:v20];
          }

          else
          {
            v21 = objc_autoreleasePoolPush();
            v22 = v45;
            v23 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v24 = HMFGetLogIdentifier();
              *buf = 138543618;
              *&buf[4] = v24;
              v67 = 2112;
              v68 = v16;
              _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Skipping executing natural lighting action, missing light profile: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v21);
            v25 = v62;
            os_unfair_lock_lock_with_options();
            v26 = MEMORY[0x277CBEAC0];
            v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
            v28 = [v26 hmd_dictionaryWithActionExecutionError:v27];
            [v44 setObject:v28 forKeyedSubscript:v19];

            os_unfair_lock_unlock(v25 + 8);
          }
        }

        v13 = [obj countByEnumeratingWithState:&v57 objects:v69 count:16];
      }

      while (v13);
    }

    v29 = objc_alloc(MEMORY[0x277D0F7A8]);
    v30 = [(HMDActionSet *)v45 workQueue];
    v31 = [v29 initWithQueue:v30];

    v32 = [MEMORY[0x277D0F7C0] allSettled:v43];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __69__HMDActionSet__executeNaturalLightingActions_writeRequests_message___block_invoke_181;
    v46[3] = &unk_278672158;
    v46[4] = v45;
    v33 = v42;
    v47 = v33;
    v48 = v39;
    v49 = obj;
    v34 = v44;
    v50 = v34;
    v35 = [v32 inContext:v31 then:v46];

    _Block_object_dispose(&v61, 8);
  }

  else
  {
    v35 = [MEMORY[0x277D0F7C0] futureWithValue:MEMORY[0x277CBEC10]];
  }

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

void __69__HMDActionSet__executeNaturalLightingActions_writeRequests_message___block_invoke(uint64_t a1, int a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 || [*(a1 + 32) isNaturalLightingEnabled] == a2)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 40);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 32);
      v11 = HMFBooleanToString();
      *buf = 138544130;
      v25 = v9;
      v26 = 2112;
      v27 = v10;
      v28 = 2112;
      v29 = v5;
      v30 = 2112;
      v31 = v11;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Skipping natural lighting action %@ because either we failed to read with error: %@ or natural lighting is already enabled: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v6);
    v12 = *(*(a1 + 80) + 8);
    os_unfair_lock_lock_with_options();
    v13 = MEMORY[0x277CBEAC0];
    if ([v5 code] == 48)
    {
      v14 = 0;
    }

    else
    {
      v14 = v5;
    }

    v15 = [v13 hmd_dictionaryWithActionExecutionError:v14];
    [*(a1 + 48) setObject:v15 forKeyedSubscript:*(a1 + 56)];

    v16 = *(a1 + 64);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __69__HMDActionSet__executeNaturalLightingActions_writeRequests_message___block_invoke_179;
    v23[3] = &unk_278672108;
    v23[4] = *(a1 + 32);
    v17 = [v16 na_firstObjectPassingTest:v23];
    if (v17)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = *(a1 + 40);
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543618;
        v25 = v21;
        v26 = 2112;
        v27 = v17;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Removing write request from list of natural lighting accessory write requests: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      [*(a1 + 64) removeObject:v17];
    }

    os_unfair_lock_unlock(v12 + 8);
  }

  [*(a1 + 72) fulfillWithValue:0];

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __69__HMDActionSet__executeNaturalLightingActions_writeRequests_message___block_invoke_181(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _executeNaturalLightingWriteRequests:*(a1 + 40) message:*(a1 + 48) naturalLightingActions:*(a1 + 56) naturalLightingActionResultByActionUUID:*(a1 + 64)];
  if (v4)
  {
    v5 = v4;

    return 3;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    return __69__HMDActionSet__executeNaturalLightingActions_writeRequests_message___block_invoke_179(v7, v8);
  }
}

uint64_t __69__HMDActionSet__executeNaturalLightingActions_writeRequests_message___block_invoke_179(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 lightProfileUUID];
  v5 = [v3 identifier];

  v6 = [v4 isEqual:v5];
  return v6;
}

- (id)_executeCommandActions:(id)a3 message:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [v7 source];
    v9 = [v7 clientName];
    v10 = v9;
    v11 = @"Unknown";
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;

    v23 = 0;
    v13 = [MEMORY[0x277D0F7C0] futureWithPromise:&v23];
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [v6 count];
      *buf = 138543618;
      v25 = v17;
      v26 = 2048;
      v27 = v18;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Executing command actions, count: %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __47__HMDActionSet__executeCommandActions_message___block_invoke;
    v21[3] = &unk_278688370;
    v21[4] = v15;
    v22 = v23;
    [(HMDActionSet *)v15 _executeCommandActions:v6 source:v8 clientName:v12 completionHandler:v21];
  }

  else
  {
    v13 = [MEMORY[0x277D0F7C0] futureWithValue:MEMORY[0x277CBEC10]];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v13;
}

void __47__HMDActionSet__executeCommandActions_message___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && ![v6 count])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to execute command actions: %{public}@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 40) rejectWithError:v5];
  }

  else
  {
    [*(a1 + 40) fulfillWithValue:v7];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_executeMediaPlaybackActions:(id)a3 message:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [v7 source];
    v9 = [v7 clientName];
    v10 = v9;
    v11 = @"Unknown";
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;

    v23 = 0;
    v13 = [MEMORY[0x277D0F7C0] futureWithPromise:&v23];
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [v6 count];
      *buf = 138543618;
      v25 = v17;
      v26 = 2048;
      v27 = v18;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Executing media playback actions, count: %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __53__HMDActionSet__executeMediaPlaybackActions_message___block_invoke;
    v21[3] = &unk_278688370;
    v21[4] = v15;
    v22 = v23;
    [(HMDActionSet *)v15 _executeMediaPlaybackActions:v6 source:v8 clientName:v12 completionHandler:v21];
  }

  else
  {
    v13 = [MEMORY[0x277D0F7C0] futureWithValue:MEMORY[0x277CBEC10]];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v13;
}

void __53__HMDActionSet__executeMediaPlaybackActions_message___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && ![v6 count])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to execute media playback actions: %{public}@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 40) rejectWithError:v5];
  }

  else
  {
    [*(a1 + 40) fulfillWithValue:v7];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_executeCharacteristicWriteRequests:(id)a3 message:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [v7 source];
    v25 = 0;
    v9 = [MEMORY[0x277D0F7C0] futureWithPromise:&v25];
    v10 = [MEMORY[0x277CCAD78] UUID];
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      if (v10)
      {
        [v10 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v27 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      v15 = [v7 identifier];

      if (v15)
      {
        v16 = [v7 identifier];
        [v16 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v26 = *buf;
      v17 = [v6 count];
      *buf = 138544898;
      *&buf[4] = v14;
      *&buf[12] = 1042;
      *&buf[14] = 16;
      v29 = 2098;
      v30 = &v27;
      v31 = 1042;
      v32 = 16;
      v33 = 2098;
      v34 = &v26;
      v35 = 2114;
      v36 = v12;
      v37 = 2048;
      v38 = v17;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Executing write requests with identifier: %{public,uuid_t}.16P for request identifier: %{public,uuid_t}.16P from characteristic write action set: %{public}@ count: %lu", buf, 0x40u);
    }

    objc_autoreleasePoolPop(v11);
    v18 = [(HMDActionSet *)v12 home];
    v19 = [v7 transport];
    v20 = [v7 qualityOfService];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __60__HMDActionSet__executeCharacteristicWriteRequests_message___block_invoke;
    v23[3] = &unk_278688370;
    v23[4] = v12;
    v24 = v25;
    [v18 writeCharacteristicValues:v6 source:v8 biomeSource:1 identifier:v10 transport:v19 qualityOfService:v20 withCompletionHandler:v23];
  }

  else
  {
    v9 = [MEMORY[0x277D0F7C0] futureWithValue:MEMORY[0x277CBEC10]];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v9;
}

void __60__HMDActionSet__executeCharacteristicWriteRequests_message___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && ![v6 count])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to execute characteristic write requests: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    [*(a1 + 40) rejectWithError:v5];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Finished executing characteristic write with response: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 40) fulfillWithValue:v7];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_issueWriteRequests:(id)a3
{
  v191 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDActionSet *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDActionSet *)self executionMessage];
  v7 = [MEMORY[0x277CBEB18] array];
  v140 = v4;
  v8 = [v4 mutableCopy];
  v9 = v8;
  v142 = v7;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [MEMORY[0x277CBEB18] array];
  }

  v136 = v10;

  v141 = [MEMORY[0x277CBEB18] array];
  v137 = [MEMORY[0x277CBEB18] array];
  v135 = [MEMORY[0x277CBEB18] array];
  v139 = [MEMORY[0x277CBEB18] array];
  v138 = [MEMORY[0x277CBEB18] array];
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  obj = [(HMDActionSet *)self actions];
  v11 = [obj countByEnumeratingWithState:&v171 objects:v190 count:16];
  v152 = v6;
  if (v11)
  {
    v12 = v11;
    v13 = *v172;
    v149 = self;
LABEL_6:
    v14 = 0;
    while (1)
    {
      if (*v172 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v171 + 1) + 8 * v14);
      v16 = [v15 type];
      if (v16 > 2)
      {
        if (v16 != 3)
        {
          if (v16 == 4)
          {
            v43 = v15;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v44 = v43;
            }

            else
            {
              v44 = 0;
            }

            v27 = v44;

            if (!v27)
            {
              v45 = objc_autoreleasePoolPush();
              v46 = self;
              v47 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                v53 = HMFGetLogIdentifier();
                v54 = HMActionTypeAsString();
                *buf = 138543874;
                v179 = v53;
                v180 = 2112;
                v181 = v43;
                v182 = 2112;
                v183 = v54;
                _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);

                self = v149;
              }

              goto LABEL_75;
            }

            v28 = v139;
          }

          else
          {
            if (v16 != 5)
            {
              goto LABEL_29;
            }

            v23 = +[HMDCoreData featuresDataSource];
            v24 = [v23 isRVCEnabled];

            if (!v24)
            {
              goto LABEL_29;
            }

            v25 = v15;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v26 = v25;
            }

            else
            {
              v26 = 0;
            }

            v27 = v26;

            if (!v27)
            {
              v45 = objc_autoreleasePoolPush();
              v46 = self;
              v47 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_74;
              }

LABEL_75:

              v34 = v45;
LABEL_76:
              objc_autoreleasePoolPop(v34);
              goto LABEL_77;
            }

            v28 = v138;
          }

          goto LABEL_71;
        }

        v36 = v15;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v37 = v36;
        }

        else
        {
          v37 = 0;
        }

        v27 = v37;

        if (v27)
        {
          v38 = [v27 lightProfile];

          if (v38)
          {
            v39 = [v27 lightProfile];
            if ([v39 supportsCHIP])
            {
              v40 = [v27 lightProfile];
              v41 = [v40 isNaturalLightingSupported];

              if (v41)
              {
                v28 = v135;
                goto LABEL_71;
              }
            }

            else
            {
            }

            v28 = v137;
            goto LABEL_71;
          }

          v48 = objc_autoreleasePoolPush();
          v55 = self;
          v56 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            v57 = HMFGetLogIdentifier();
            *buf = 138543618;
            v179 = v57;
            v180 = 2112;
            v181 = v27;
            _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_ERROR, "%{public}@Skipping executing natural lighting action, missing light profile: %@", buf, 0x16u);

            self = v149;
          }
        }

        else
        {
          v48 = objc_autoreleasePoolPush();
          v49 = self;
          v50 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            v51 = HMFGetLogIdentifier();
            v52 = HMActionTypeAsString();
            *buf = 138543874;
            v179 = v51;
            v180 = 2112;
            v181 = v36;
            v182 = 2112;
            v183 = v52;
            _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);

            self = v149;
            v6 = v152;
          }
        }

        objc_autoreleasePoolPop(v48);
      }

      else
      {
        if (v16)
        {
          if (v16 != 1)
          {
            if (v16 == 2)
            {
              v17 = v15;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v18 = v17;
              }

              else
              {
                v18 = 0;
              }

              v19 = v18;

              v143 = v19;
              if (v19)
              {
                v20 = [v6 proxyConnection];
                if (v20)
                {
                  v21 = v20;
                  v22 = [v6 isEntitledForShortcutsAutomationAccess];

                  if ((v22 & 1) == 0)
                  {
                    v67 = objc_autoreleasePoolPush();
                    v68 = self;
                    v69 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                    {
                      v70 = HMFGetLogIdentifier();
                      *buf = 138543362;
                      v179 = v70;
                      _os_log_impl(&dword_229538000, v69, OS_LOG_TYPE_ERROR, "%{public}@Missing ShortcutsAutomationAccess Entitlement for Execute(2)", buf, 0xCu);
                    }

                    objc_autoreleasePoolPop(v67);
                    v71 = [MEMORY[0x277CCA9B8] hmErrorWithCode:80 description:@"Missing Entitlement" reason:0 suggestion:0];
                    [(HMDActionSet *)v68 handleExecutionCompletionWithResponsePayload:0 error:v71];
                    v72 = v142;
                    v73 = v138;
                    v74 = v139;
                    goto LABEL_123;
                  }
                }
              }

              [v142 addObject:v17];

              goto LABEL_77;
            }

LABEL_29:
            v29 = objc_autoreleasePoolPush();
            v30 = self;
            v31 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v32 = HMFGetLogIdentifier();
              v33 = HMActionTypeAsString();
              *buf = 138543874;
              v179 = v32;
              v180 = 2112;
              v181 = v15;
              v182 = 2112;
              v183 = v33;
              _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@Unknown action type %@:%@", buf, 0x20u);

              self = v149;
            }

            v34 = v29;
            goto LABEL_76;
          }

          v25 = v15;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v42 = v25;
          }

          else
          {
            v42 = 0;
          }

          v27 = v42;

          if (!v27)
          {
            v45 = objc_autoreleasePoolPush();
            v46 = self;
            v47 = HMFGetOSLogHandle();
            if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          }

          v28 = v141;
          goto LABEL_71;
        }

        v25 = v15;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v35 = v25;
        }

        else
        {
          v35 = 0;
        }

        v27 = v35;

        if (!v27)
        {
          v45 = objc_autoreleasePoolPush();
          v46 = self;
          v47 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_75;
          }

LABEL_74:
          v58 = HMFGetLogIdentifier();
          v59 = HMActionTypeAsString();
          *buf = 138543874;
          v179 = v58;
          v180 = 2112;
          v181 = v25;
          v182 = 2112;
          v183 = v59;
          _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);

          v6 = v152;
          goto LABEL_75;
        }

        if (![v140 count])
        {
          v28 = v136;
LABEL_71:
          [v28 addObject:v27];
        }
      }

LABEL_77:
      if (v12 == ++v14)
      {
        v12 = [obj countByEnumeratingWithState:&v171 objects:v190 count:16];
        if (v12)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  v60 = objc_autoreleasePoolPush();
  v61 = self;
  v62 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
  {
    v63 = HMFGetLogIdentifier();
    *buf = 138544642;
    v179 = v63;
    v180 = 2112;
    v181 = v136;
    v182 = 2112;
    v183 = v141;
    v184 = 2112;
    v185 = v137;
    v186 = 2112;
    v187 = v142;
    v188 = 2112;
    v189 = v138;
    _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_DEBUG, "%{public}@Preparing to execute characteristic write actions: [%@], media playback actions: [%@], natural lighting actions: [%@] short cut actions: [%@], command actions: [%@]", buf, 0x3Eu);
  }

  objc_autoreleasePoolPop(v60);
  v64 = [v140 mutableCopy];
  v65 = v64;
  v144 = v61;
  if (v64)
  {
    v66 = v64;
  }

  else
  {
    v66 = [MEMORY[0x277CBEB18] array];
  }

  obj = v66;

  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v75 = v136;
  v76 = [v75 countByEnumeratingWithState:&v167 objects:v177 count:16];
  if (v76)
  {
    v77 = v76;
    v78 = *v168;
    do
    {
      for (i = 0; i != v77; ++i)
      {
        if (*v168 != v78)
        {
          objc_enumerationMutation(v75);
        }

        v80 = *(*(&v167 + 1) + 8 * i);
        v81 = [v80 characteristic];
        v82 = [v80 targetValue];
        v83 = [v81 authorizationData];
        v84 = [v152 identifier];
        v85 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v81 value:v82 authorizationData:v83 identifier:v84 type:1];

        [obj addObject:v85];
      }

      v77 = [v75 countByEnumeratingWithState:&v167 objects:v177 count:16];
    }

    while (v77);
  }

  v86 = [MEMORY[0x277CBEB18] array];
  v146 = [MEMORY[0x277CBEB18] array];
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v148 = v141;
  v87 = [v148 countByEnumeratingWithState:&v163 objects:v176 count:16];
  v88 = v144;
  if (v87)
  {
    v89 = v87;
    v90 = *v164;
    do
    {
      for (j = 0; j != v89; ++j)
      {
        if (*v164 != v90)
        {
          objc_enumerationMutation(v148);
        }

        v92 = *(*(&v163 + 1) + 8 * j);
        v93 = [v92 convertedCharacteristicWriteRequests];
        if (v93)
        {
          [v86 addObject:v92];
          v94 = [v93 characteristicWriteRequests];
          v95 = [v94 count];

          if (v95)
          {
            v96 = [v93 characteristicWriteRequests];
            [obj addObjectsFromArray:v96];
          }

          v97 = [v93 residualAction];

          if (v97)
          {
            v98 = [v93 residualAction];
            [v146 addObject:v98];
          }
        }
      }

      v89 = [v148 countByEnumeratingWithState:&v163 objects:v176 count:16];
    }

    while (v89);
  }

  v143 = v86;
  [v148 removeObjectsInArray:v86];
  [v148 addObjectsFromArray:v146];
  v99 = [MEMORY[0x277CBEAA8] date];
  v151 = [MEMORY[0x277CBEB18] array];
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v147 = v137;
  v100 = [v147 countByEnumeratingWithState:&v159 objects:v175 count:16];
  v145 = v99;
  if (v100)
  {
    v101 = v100;
    v102 = *v160;
    do
    {
      for (k = 0; k != v101; ++k)
      {
        if (*v160 != v102)
        {
          objc_enumerationMutation(v147);
        }

        v104 = *(*(&v159 + 1) + 8 * k);
        v105 = [v104 lightProfile];
        v106 = [v104 writeRequestForTransitionStartWithLightProfile:v105 startDate:v99 type:1];

        if (v106)
        {
          [v151 addObject:v106];
          v107 = [obj copy];
          v156[0] = MEMORY[0x277D85DD0];
          v156[1] = 3221225472;
          v156[2] = __36__HMDActionSet__issueWriteRequests___block_invoke;
          v156[3] = &unk_2786720E0;
          v156[4] = v104;
          v157 = obj;
          v158 = v151;
          [v107 na_each:v156];
        }

        else
        {
          v108 = objc_autoreleasePoolPush();
          v109 = v88;
          v110 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
          {
            v111 = HMFGetLogIdentifier();
            *buf = 138543618;
            v179 = v111;
            v180 = 2112;
            v181 = v104;
            _os_log_impl(&dword_229538000, v110, OS_LOG_TYPE_ERROR, "%{public}@Failed to create write request for natural lighting action: %@", buf, 0x16u);

            v88 = v144;
          }

          objc_autoreleasePoolPop(v108);
          v99 = v145;
        }
      }

      v101 = [v147 countByEnumeratingWithState:&v159 objects:v175 count:16];
    }

    while (v101);
  }

  v112 = MEMORY[0x277D0F848];
  v113 = [(HMDActionSet *)v88 messageDestination];
  v114 = [v112 messageWithName:@"kActionSetWillStartExecutionNotificationKey" destination:v113 payload:0];

  v6 = v152;
  [v114 setRemote:{objc_msgSend(v152, "isRemote")}];
  v115 = [v152 transport];
  [v114 setTransport:v115];

  v116 = [(HMDActionSet *)v88 msgDispatcher];
  v150 = v114;
  [v116 sendMessage:v114 completionHandler:0];

  v117 = [MEMORY[0x277CBEB18] array];
  v118 = [(HMDActionSet *)v88 _executeCharacteristicWriteRequests:obj message:v152];
  [v117 addObject:v118];

  v119 = [(HMDActionSet *)v88 _executeMediaPlaybackActions:v148 message:v152];
  [v117 addObject:v119];

  v120 = [(HMDActionSet *)v88 _executeNaturalLightingActions:v147 writeRequests:v151 message:v152];
  [v117 addObject:v120];

  v72 = v142;
  v74 = v139;
  v71 = v146;
  if (([v135 hmf_isEmpty] & 1) == 0)
  {
    v121 = objc_autoreleasePoolPush();
    v122 = v88;
    v123 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v123, OS_LOG_TYPE_DEBUG))
    {
      v124 = HMFGetLogIdentifier();
      *buf = 138543618;
      v179 = v124;
      v180 = 2112;
      v181 = v135;
      _os_log_impl(&dword_229538000, v123, OS_LOG_TYPE_DEBUG, "%{public}@Preparing to execute natural lighting actions for matter: [%@]", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v121);
    v125 = [(HMDActionSet *)v122 _executeNaturalLightingActionsForMatter:v135];
    [v117 addObject:v125];
  }

  v126 = [(HMDActionSet *)v88 _executeAppleMediaAccessoryPowerActions:v139 message:v152];
  [v117 addObject:v126];

  v127 = [(HMDActionSet *)v88 _executeGenericActions:v142 message:v152];
  [v117 addObject:v127];

  v73 = v138;
  v128 = [(HMDActionSet *)v88 _executeCommandActions:v138 message:v152];
  [v117 addObject:v128];

  v129 = objc_alloc(MEMORY[0x277D0F7A8]);
  v130 = [(HMDActionSet *)v88 workQueue];
  v131 = [v129 initWithQueue:v130];

  v132 = [MEMORY[0x277D0F7C0] allSettled:v117];
  v155[0] = MEMORY[0x277D85DD0];
  v155[1] = 3221225472;
  v155[2] = __36__HMDActionSet__issueWriteRequests___block_invoke_170;
  v155[3] = &unk_2786868A0;
  v155[4] = v88;
  v133 = [v132 inContext:v131 then:v155];

  v154[0] = MEMORY[0x277D85DD0];
  v154[1] = 3221225472;
  v154[2] = __36__HMDActionSet__issueWriteRequests___block_invoke_174;
  v154[3] = &unk_278689230;
  v154[4] = v88;
  [v133 getResultWithCompletion:v154];

LABEL_123:
  v134 = *MEMORY[0x277D85DE8];
}

void __36__HMDActionSet__issueWriteRequests___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 characteristic];
  v5 = [v4 accessory];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 lightProfiles];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __36__HMDActionSet__issueWriteRequests___block_invoke_2;
    v10[3] = &unk_2786782C8;
    v10[4] = *(a1 + 32);
    v9 = [v8 na_firstObjectPassingTest:v10];

    if (v9)
    {
      [*(a1 + 40) removeObject:v3];
      [*(a1 + 48) addObject:v3];
    }
  }
}

uint64_t __36__HMDActionSet__issueWriteRequests___block_invoke_170(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a2;
  v5 = [v3 dictionary];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __36__HMDActionSet__issueWriteRequests___block_invoke_2_171;
  v12 = &unk_2786855C8;
  v13 = *(a1 + 32);
  v14 = v5;
  v6 = v5;
  [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:&v9];

  v7 = [v6 copy];
  return 1;
}

void __36__HMDActionSet__issueWriteRequests___block_invoke_174(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v10;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Finished execution of all actions with response: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [*(a1 + 32) handleExecutionCompletionWithResponsePayload:v5 error:0];

  v11 = *MEMORY[0x277D85DE8];
}

void __36__HMDActionSet__issueWriteRequests___block_invoke_2_171(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Execution of action resulted in error: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v10 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      [*(a1 + 40) addEntriesFromDictionary:v12];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __36__HMDActionSet__issueWriteRequests___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) lightProfileUUID];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (id)_createActionExecutionLogEvent:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v46 = v3;
  v44 = [v3 source];
  if (v44 == 1)
  {
    v45 = @"com.apple.Siri";
    v4 = @"com.apple.Siri";
  }

  else
  {
    v45 = [v3 clientIdentifier];
  }

  v5 = MEMORY[0x277CBEB58];
  v6 = [(HMDActionSet *)self actions];
  v7 = [v5 setWithCapacity:{objc_msgSend(v6, "count")}];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v8 = [(HMDActionSet *)self actions];
  v9 = [v8 countByEnumeratingWithState:&v53 objects:v64 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v54;
    v47 = v8;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v54 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v53 + 1) + 8 * i);
        v14 = [v13 type];
        if (v14 <= 2)
        {
          if (v14)
          {
            if (v14 != 1)
            {
              continue;
            }

            v17 = v13;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = v17;
            }

            else
            {
              v23 = 0;
            }

            v19 = v23;

            if (!v19)
            {
              v20 = objc_autoreleasePoolPush();
              v21 = self;
              v22 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_63;
              }

              goto LABEL_64;
            }

            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v24 = [v19 mediaProfiles];
            v25 = [v24 countByEnumeratingWithState:&v49 objects:v57 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v50;
              do
              {
                for (j = 0; j != v26; ++j)
                {
                  if (*v50 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v29 = [*(*(&v49 + 1) + 8 * j) accessory];
                  if (v29)
                  {
                    [v7 addObject:v29];
                  }
                }

                v26 = [v24 countByEnumeratingWithState:&v49 objects:v57 count:16];
              }

              while (v26);
            }

            v8 = v47;
LABEL_65:

            continue;
          }

          v17 = v13;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v34 = v17;
          }

          else
          {
            v34 = 0;
          }

          v19 = v34;

          if (v19)
          {
            v32 = [v19 characteristic];
            v35 = [v32 accessory];
            if (v35)
            {
              [v7 addObject:v35];
            }

            goto LABEL_55;
          }

          v20 = objc_autoreleasePoolPush();
          v21 = self;
          v22 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        }

        switch(v14)
        {
          case 3:
            v17 = v13;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v30 = v17;
            }

            else
            {
              v30 = 0;
            }

            v19 = v30;

            if (v19)
            {
              v31 = [v19 lightProfile];
              v32 = [v31 accessory];

              if (v32)
              {
                goto LABEL_47;
              }

              goto LABEL_55;
            }

            v20 = objc_autoreleasePoolPush();
            v21 = self;
            v22 = HMFGetOSLogHandle();
            if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_64;
            }

LABEL_63:
            v36 = HMFGetLogIdentifier();
            v37 = HMActionTypeAsString();
            *buf = 138543874;
            v59 = v36;
            v60 = 2112;
            v61 = v17;
            v62 = 2112;
            v63 = v37;
            _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);

            v8 = v47;
            goto LABEL_64;
          case 4:
            v17 = v13;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v33 = v17;
            }

            else
            {
              v33 = 0;
            }

            v19 = v33;

            if (v19)
            {
              goto LABEL_46;
            }

            v20 = objc_autoreleasePoolPush();
            v21 = self;
            v22 = HMFGetOSLogHandle();
            if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_64;
            }

            goto LABEL_63;
          case 5:
            v15 = +[HMDCoreData featuresDataSource];
            v16 = [v15 isRVCEnabled];

            if (v16)
            {
              v17 = v13;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v18 = v17;
              }

              else
              {
                v18 = 0;
              }

              v19 = v18;

              if (!v19)
              {
                v20 = objc_autoreleasePoolPush();
                v21 = self;
                v22 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_63;
                }

LABEL_64:

                objc_autoreleasePoolPop(v20);
                v19 = 0;
                goto LABEL_65;
              }

LABEL_46:
              v32 = [v19 accessory];
              if (v32)
              {
LABEL_47:
                [v7 addObject:v32];
              }

LABEL_55:

              goto LABEL_65;
            }

            break;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v53 objects:v64 count:16];
    }

    while (v10);
  }

  v38 = [HMDActionSetEvent alloc];
  v39 = [v7 count];
  v40 = [v46 identifier];
  v41 = [(HMDActionSetEvent *)v38 initWithActionSet:self source:v44 numAccessories:v39 bundleId:v45 transactionId:v40];

  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

- (void)_execute:(id)a3 captureCurrentState:(BOOL)a4 writeRequestTuples:(id)a5
{
  v6 = a4;
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(HMDActionSet *)self workQueue];
  dispatch_assert_queue_V2(v10);

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v40 = 138543362;
    v41 = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Executing the action set", &v40, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [(HMDActionSet *)v12 actions];
  v16 = [v15 count];

  if (!v16)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = v12;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [v8 shortDescription];
      v40 = 138543618;
      v41 = v27;
      v42 = 2112;
      v43 = v28;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Not executing the action set: there are no actions in it: %@", &v40, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v22 = MEMORY[0x277CCA9B8];
    v23 = 25;
    goto LABEL_11;
  }

  v17 = [(HMDActionSet *)v12 executionMessage];

  if (v17)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v12;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v40 = 138543362;
      v41 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Not executing the action set: another execution is already in progress", &v40, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v22 = MEMORY[0x277CCA9B8];
    v23 = 65;
LABEL_11:
    v29 = [v22 hmErrorWithCode:v23];
    [v8 respondWithError:v29];

    goto LABEL_12;
  }

  [(HMDActionSet *)v12 setExecutionMessage:v8];
  v31 = [MEMORY[0x277CBEAA8] date];
  [(HMDActionSet *)v12 setExecutionStart:v31];

  v32 = [(HMDActionSet *)v12 home];
  [v32 startReportingSessionForMessage:v8];

  v33 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:600.0];
  [(HMDActionSet *)v12 setExecutionTimeoutTimer:v33];

  v34 = [(HMDActionSet *)v12 executionTimeoutTimer];
  [v34 setDelegate:v12];

  v35 = [(HMDActionSet *)v12 workQueue];
  v36 = [(HMDActionSet *)v12 executionTimeoutTimer];
  [v36 setDelegateQueue:v35];

  v37 = [(HMDActionSet *)v12 executionTimeoutTimer];
  [v37 resume];

  [(HMDActionSet *)v12 setExecutionInitialStates:0];
  v38 = [(HMDActionSet *)v12 _createActionExecutionLogEvent:v8];
  [(HMDActionSet *)v12 setExecutionActionSetEvent:v38];

  if (v6)
  {
    [(HMDActionSet *)v12 _issueReadRequests];
  }

  else
  {
    v39 = objc_autoreleasePoolPush();
    [(HMDActionSet *)v12 _issueWriteRequests:v9];
    objc_autoreleasePoolPop(v39);
  }

LABEL_12:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDActionSet *)self executionTimeoutTimer];

  if (v5 == v4)
  {
    v6 = [(HMDActionSet *)self executionMessage];

    if (v6)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        v13 = 138543362;
        v14 = v10;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Timer execution timeout triggered. Resetting executionInProgress.", &v13, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
      v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8];
      [(HMDActionSet *)v8 handleExecutionCompletionWithResponsePayload:0 error:v11];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleExecutionCompletionWithResponsePayload:(id)a3 error:(id)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v47 = a3;
  v7 = a4;
  v8 = [(HMDActionSet *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_alloc(MEMORY[0x277D0F770]);
  v10 = MEMORY[0x277CCACA8];
  v11 = MEMORY[0x22AAD2510](self, a2);
  v12 = [v10 stringWithFormat:@"%@, %s:%ld", v11, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables/Sources/homed/Action Sets/HMDActionSet.m", 2489];
  v48 = [v9 initWithName:v12];

  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v51 = 0uLL;
    v17 = [(HMDActionSet *)v14 executionMessage];
    v18 = [v17 identifier];

    if (v18)
    {
      v19 = [(HMDActionSet *)v14 executionMessage];
      v20 = [v19 identifier];
      [v20 getUUIDBytes:&v51];
    }

    else
    {
      v51 = *MEMORY[0x277D0F960];
    }

    v52 = v51;
    *buf = 138543874;
    v54 = v16;
    v55 = 1042;
    v56 = 16;
    v57 = 2098;
    v58 = &v52;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Action set execution completed for request identifier: %{public,uuid_t}.16P", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v13);
  v21 = [(HMDActionSet *)v14 executionMessage];
  v22 = [(HMDActionSet *)v14 executionInitialStates];
  v23 = [(HMDActionSet *)v14 executionActionSetEvent];
  [(HMDActionSet *)v14 setExecutionActionSetEvent:0];
  [(HMDActionSet *)v14 setExecutionMessage:0];
  [(HMDActionSet *)v14 setExecutionStart:0];
  [(HMDActionSet *)v14 setExecutionTimeoutTimer:0];
  [(HMDActionSet *)v14 setExecutionInitialStates:0];
  v24 = [(HMDActionSet *)v14 home];
  if (v24)
  {
    v25 = [MEMORY[0x277CBEAA8] date];
    [(HMDActionSet *)v14 setLastExecutionDate:v25];

    v26 = [v21 name];
    v27 = v26;
    v28 = *MEMORY[0x277CD2348];
    if (v26)
    {
      v28 = v26;
    }

    v29 = v28;

    [v24 saveWithReason:v29 postSyncNotification:0];
    v49 = *MEMORY[0x277CD2038];
    v30 = [(HMDActionSet *)v14 lastExecutionDate];
    v50 = v30;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];

    v32 = MEMORY[0x277D0F848];
    v33 = [(HMDActionSet *)v14 messageDestination];
    v34 = [v32 messageWithName:@"kActionSetExecutedNotificationKey" destination:v33 payload:v31];

    v35 = [v21 identifier];
    [v34 setIdentifier:v35];

    [v34 setRemote:{objc_msgSend(v21, "isRemote")}];
    v36 = [(HMDActionSet *)v14 msgDispatcher];
    [v36 sendMessage:v34];

    v37 = [v21 responseHandler];

    if (v37)
    {
      v38 = v7;
      if (!v38)
      {
        v38 = -[HMDActionSet _generateOverallError:forSource:](v14, "_generateOverallError:forSource:", v47, [v21 source]);
      }

      v39 = v38;
      v40 = [v47 mutableCopy];
      [v40 setObject:v22 forKeyedSubscript:*MEMORY[0x277CD21E8]];
      [v21 respondWithPayload:v40 error:v39];
    }

    [v24 handleReportingSessionResponseMessage:v34];
    [v24 endReportingSessionForMessage:v21];
    v41 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v41 submitLogEvent:v23 error:v7];
  }

  else
  {
    v42 = objc_autoreleasePoolPush();
    v43 = v14;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = HMFGetLogIdentifier();
      *buf = 138543362;
      v54 = v45;
      _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_DEFAULT, "%{public}@Ignoring execution completion because home reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v42);
  }

  __HMFActivityScopeLeave();
  v46 = *MEMORY[0x277D85DE8];
}

- (id)_generateOverallError:(id)a3 forSource:(unint64_t)a4
{
  v120 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (![v6 count])
  {
    v67 = [MEMORY[0x277CCA9B8] hmErrorWithCode:63];
    v68 = objc_autoreleasePoolPush();
    v69 = self;
    v70 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      v71 = HMFGetLogIdentifier();
      *buf = 138543874;
      v115 = v71;
      v116 = 2112;
      v117 = v69;
      v118 = 2112;
      v119 = v67;
      _os_log_impl(&dword_229538000, v70, OS_LOG_TYPE_ERROR, "%{public}@No accessories were changed so noting that action set %@ failed with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v68);
    v66 = v67;
    goto LABEL_66;
  }

  v89 = +[HMDHAPMetadata getSharedInstance];
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v7 = v6;
  v83 = [v7 countByEnumeratingWithState:&v107 objects:v113 count:16];
  if (v83)
  {
    v78 = v6;
    v8 = 0;
    v84 = *v108;
    v9 = *MEMORY[0x277CD2128];
    v10 = 0x277CCA000uLL;
    v82 = v7;
    v92 = *MEMORY[0x277CD2128];
    do
    {
      v11 = 0;
      do
      {
        if (*v108 != v84)
        {
          objc_enumerationMutation(v7);
        }

        v85 = v11;
        v12 = *(*(&v107 + 1) + 8 * v11);
        v13 = [v7 hmf_dictionaryForKey:v12];
        v14 = [v13 hmf_dataForKey:@"HM.mediaPlaybackErrorDataKey"];
        v91 = [*(v10 + 2488) hmf_unarchiveFromData:v14 error:0];
        if (v91)
        {
          v15 = objc_autoreleasePoolPush();
          v16 = self;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = HMFGetLogIdentifier();
            *buf = 138543874;
            v115 = v18;
            v116 = 2112;
            v117 = self;
            v118 = 2112;
            v119 = v91;
            _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Received media error for action set %@: %@", buf, 0x20u);

            v9 = v92;
          }

          objc_autoreleasePoolPop(v15);
          ++v8;
          v7 = v82;
        }

        else
        {
          v19 = [v13 hmf_dataForKey:@"HM.genericErrorDataKey"];

          v93 = v19;
          v91 = [*(v10 + 2488) hmf_unarchiveFromData:v19 error:0];
          if (v91)
          {
            v20 = objc_autoreleasePoolPush();
            v21 = self;
            v22 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = HMFGetLogIdentifier();
              *buf = 138543874;
              v115 = v23;
              v116 = 2112;
              v117 = self;
              v118 = 2112;
              v119 = v91;
              _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Received error for action set %@: %@", buf, 0x20u);

              v7 = v82;
            }

            objc_autoreleasePoolPop(v20);
            ++v8;
            v14 = v93;
          }

          else
          {
            v24 = [(HMDActionSet *)self home];
            v25 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v12];
            v26 = [v24 accessoryWithUUID:v25];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v27 = v26;
            }

            else
            {
              v27 = 0;
            }

            v91 = v27;

            v105 = 0u;
            v106 = 0u;
            v103 = 0u;
            v104 = 0u;
            v28 = v13;
            v79 = [v28 countByEnumeratingWithState:&v103 objects:v112 count:16];
            if (v79)
            {
              v29 = *v104;
              v30 = v93;
              v86 = a4;
              v87 = self;
              v76 = *v104;
              v77 = v13;
              v81 = v28;
              do
              {
                v31 = 0;
                do
                {
                  if (*v104 != v29)
                  {
                    v32 = v31;
                    objc_enumerationMutation(v28);
                    v31 = v32;
                  }

                  v80 = v31;
                  v88 = *(*(&v103 + 1) + 8 * v31);
                  v33 = [v28 hmf_dictionaryForKey:{v76, v77}];
                  v99 = 0u;
                  v100 = 0u;
                  v101 = 0u;
                  v102 = 0u;
                  obj = v33;
                  v97 = [obj countByEnumeratingWithState:&v99 objects:v111 count:16];
                  if (v97)
                  {
                    v96 = *v100;
                    while (2)
                    {
                      v34 = 0;
                      v35 = v30;
                      do
                      {
                        if (*v100 != v96)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v36 = [obj hmf_dictionaryForKey:*(*(&v99 + 1) + 8 * v34)];
                        v30 = [v36 hmf_dataForKey:v9];

                        if (v30)
                        {
                          v37 = *(v10 + 2488);
                          v38 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v30 error:0];
                          if (v38)
                          {
                            v94 = v30;
                            v95 = v38;
                            v39 = objc_autoreleasePoolPush();
                            v40 = self;
                            v41 = HMFGetOSLogHandle();
                            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                            {
                              HMFGetLogIdentifier();
                              v43 = v42 = v8;
                              *buf = 138543874;
                              v115 = v43;
                              v116 = 2112;
                              v117 = self;
                              v118 = 2112;
                              v119 = v95;
                              _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Received error for action set %@: %@", buf, 0x20u);

                              v8 = v42;
                            }

                            objc_autoreleasePoolPop(v39);
                            ++v8;
                            if (a4 == 1)
                            {
                              v90 = v8;
                              v44 = HAPInstanceIDFromValue();
                              v45 = HAPInstanceIDFromValue();
                              v46 = [v91 findCharacteristic:v44 forService:v45];
                              v47 = [v46 type];
                              v48 = [v46 service];
                              v49 = [v48 type];
                              v50 = [v89 requiresDeviceUnlock:v47 forService:v49];

                              if (v50)
                              {
                                v61 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:4000];
                                v62 = objc_autoreleasePoolPush();
                                v63 = v40;
                                v64 = HMFGetOSLogHandle();
                                if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                                {
                                  v65 = HMFGetLogIdentifier();
                                  *buf = 138543874;
                                  v115 = v65;
                                  v116 = 2112;
                                  v117 = v87;
                                  v118 = 2112;
                                  v119 = v61;
                                  _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_ERROR, "%{public}@Execution for action set %@ completed with error: %@", buf, 0x20u);
                                }

                                objc_autoreleasePoolPop(v62);
                                v66 = v61;

                                v6 = v78;
                                goto LABEL_65;
                              }

                              a4 = v86;
                              self = v87;
                              v8 = v90;
                            }

                            v10 = 0x277CCA000;
                            v9 = v92;
                            v30 = v94;
                            v38 = v95;
                          }
                        }

                        ++v34;
                        v35 = v30;
                      }

                      while (v97 != v34);
                      v97 = [obj countByEnumeratingWithState:&v99 objects:v111 count:16];
                      if (v97)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v31 = v80 + 1;
                  v28 = v81;
                  v7 = v82;
                  v29 = v76;
                  v13 = v77;
                }

                while (v80 + 1 != v79);
                v79 = [v81 countByEnumeratingWithState:&v103 objects:v112 count:16];
              }

              while (v79);
            }

            else
            {
              v30 = v93;
            }

            v14 = v30;
          }
        }

        v11 = v85 + 1;
      }

      while (v85 + 1 != v83);
      v51 = [v7 countByEnumeratingWithState:&v107 objects:v113 count:16];
      v83 = v51;
    }

    while (v51);

    v6 = v78;
    if (v8)
    {
      v52 = [(HMDActionSet *)self actions];
      v53 = [v52 count];

      v54 = v8 >= v53 ? 63 : 64;
      v55 = [*(v10 + 2488) hmErrorWithCode:v54];
      if (v55)
      {
        v56 = v55;
        v57 = objc_autoreleasePoolPush();
        v58 = self;
        v59 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          v60 = HMFGetLogIdentifier();
          *buf = 138543874;
          v115 = v60;
          v116 = 2112;
          v117 = self;
          v118 = 2112;
          v119 = v56;
          _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_ERROR, "%{public}@Execution for action set %@ completed with error: %@", buf, 0x20u);
        }

        goto LABEL_64;
      }
    }
  }

  else
  {
  }

  v57 = objc_autoreleasePoolPush();
  v72 = self;
  v59 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
  {
    v73 = HMFGetLogIdentifier();
    *buf = 138543618;
    v115 = v73;
    v116 = 2112;
    v117 = v72;
    _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_INFO, "%{public}@Execution for action set %@ completed successfully", buf, 0x16u);
  }

  v56 = 0;
LABEL_64:

  objc_autoreleasePoolPop(v57);
  v66 = v56;
LABEL_65:

LABEL_66:
  v74 = *MEMORY[0x277D85DE8];

  return v66;
}

- (BOOL)isAssociatedWithAccessory:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(HMDActionSet *)self actions];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v11 + 1) + 8 * i) isAssociatedWithAccessory:v4])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (NSArray)associatedAccessories
{
  v2 = [(HMDActionSet *)self actions];
  v3 = [v2 na_flatMap:&__block_literal_global_161];

  return v3;
}

- (void)_handleRemoveAppDataModel:(id)a3 message:(id)a4
{
  v5 = a4;
  v6 = [v5 transactionResult];
  [(HMDActionSet *)self setAppData:0];
  [v6 markChanged];
  [v5 respondWithPayload:0];
}

- (void)_handleUpdateAppDataModel:(id)a3 message:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 transactionResult];
  v9 = [(HMDActionSet *)self appData];

  if (v9)
  {
    v10 = [(HMDActionSet *)self appData];
    [v10 updateWithModel:v6];
  }

  else
  {
    v11 = [HMDApplicationData alloc];
    v12 = [v6 appDataDictionary];
    v13 = [(HMDActionSet *)self uuid];
    v14 = [(HMDApplicationData *)v11 initWithDictionary:v12 parentUUID:v13];
    [(HMDActionSet *)self setAppData:v14];

    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v6 appDataDictionary];
      v21 = 138543618;
      v22 = v18;
      v23 = 2112;
      v24 = v19;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Updating the application data : %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  [v8 markChanged];
  [v7 respondWithPayload:0];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateActionRequest:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uuidForKey:*MEMORY[0x277CD2060]];
  v6 = [(HMDActionSet *)self actionWithUUID:v5];
  v7 = [(HMDActionSet *)self home];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = 2;
LABEL_48:
    v40 = [v10 hmErrorWithCode:{v11, *v42, *&v42[16], v43}];
    [v4 respondWithError:v40];

    goto LABEL_49;
  }

  v12 = [v6 type];
  if (v12 > 2)
  {
    if (v12 != 3)
    {
      if (v12 != 4)
      {
        if (v12 == 5)
        {
          v13 = objc_autoreleasePoolPush();
          v14 = self;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = HMFGetLogIdentifier();
            *v42 = 138543362;
            *&v42[4] = v16;
            _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@This action type is not supported for update", v42, 0xCu);
          }

          goto LABEL_44;
        }

LABEL_45:
        v36 = objc_autoreleasePoolPush();
        v37 = self;
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = HMFGetLogIdentifier();
          *v42 = 138543874;
          *&v42[4] = v39;
          *&v42[12] = 2112;
          *&v42[14] = v6;
          *&v42[22] = 2112;
          v43 = v37;
          _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Unknown action %@ in set %@, cannot handle update action request", v42, 0x20u);
        }

        objc_autoreleasePoolPop(v36);
        v10 = MEMORY[0x277CCA9B8];
        v11 = 3;
        goto LABEL_48;
      }

      v17 = v6;
      objc_opt_class();
      v24 = objc_opt_isKindOfClass() & 1;
      if (v24)
      {
        v25 = v17;
      }

      else
      {
        v25 = 0;
      }

      v26 = v25;

      if (v24)
      {
        [(HMDActionSet *)self _updateAppleMediaAccessoryPowerAction:v17 forMessage:v4];
        goto LABEL_35;
      }

      v13 = objc_autoreleasePoolPush();
      v31 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_43;
      }

LABEL_44:

      objc_autoreleasePoolPop(v13);
      goto LABEL_45;
    }

    v17 = v6;
    objc_opt_class();
    v21 = objc_opt_isKindOfClass() & 1;
    if (v21)
    {
      v22 = v17;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    if (v21)
    {
      [(HMDActionSet *)self _updateNaturalLightingAction:v17 forMessage:v4];
      goto LABEL_35;
    }

    v13 = objc_autoreleasePoolPush();
    v30 = self;
    v15 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

LABEL_43:
    v34 = HMFGetLogIdentifier();
    v35 = HMActionTypeAsString();
    *v42 = 138543874;
    *&v42[4] = v34;
    *&v42[12] = 2112;
    *&v42[14] = v17;
    *&v42[22] = 2112;
    v43 = v35;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", v42, 0x20u);

    goto LABEL_44;
  }

  if (!v12)
  {
    v17 = v6;
    objc_opt_class();
    v27 = objc_opt_isKindOfClass() & 1;
    if (v27)
    {
      v28 = v17;
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;

    if (v27)
    {
      [(HMDActionSet *)self _updateWriteAction:v17 forMessage:v4];
      goto LABEL_35;
    }

    v13 = objc_autoreleasePoolPush();
    v32 = self;
    v15 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  if (v12 != 1)
  {
    goto LABEL_45;
  }

  v17 = v6;
  objc_opt_class();
  v18 = objc_opt_isKindOfClass() & 1;
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  if (!v18)
  {
    v13 = objc_autoreleasePoolPush();
    v33 = self;
    v15 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  [(HMDActionSet *)self _updatePlaybackAction:v17 forMessage:v4];
LABEL_35:

LABEL_49:
  v41 = *MEMORY[0x277D85DE8];
}

- (void)_updateAppleMediaAccessoryPowerAction:(id)a3 forMessage:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 dictionaryForKey:*MEMORY[0x277CD2028]];
  v9 = [v8 hmf_UUIDForKey:*MEMORY[0x277CCF210]];
  v10 = [v8 hmf_numberForKey:*MEMORY[0x277CCF220]];
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (v9)
  {
    v15 = v10 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543874;
      v32 = v16;
      v33 = 2112;
      v34 = v9;
      v35 = 2112;
      v36 = v10;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@accessoryUUID or targetSleepWakeState is nil: %@, %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138544386;
      v32 = v18;
      v33 = 2112;
      v34 = v6;
      v35 = 2112;
      v36 = v8;
      v37 = 2112;
      v38 = v9;
      v39 = 2112;
      v40 = v10;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Updating Apple TV power action: %@, with action info: %@, accessoryUUID: %@, targetSleepWakeState: %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v11);
    v19 = [(HMDActionSet *)v12 home];
    v20 = [v19 backingStore];
    v21 = [v20 context];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __65__HMDActionSet__updateAppleMediaAccessoryPowerAction_forMessage___block_invoke;
    v24[3] = &unk_278683598;
    v25 = v6;
    v26 = v12;
    v27 = v9;
    v28 = v10;
    v29 = v19;
    v30 = v7;
    v22 = v19;
    [v21 performBlock:v24];
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __65__HMDActionSet__updateAppleMediaAccessoryPowerAction_forMessage___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uuid];
  v3 = [HMCContext findAppleMediaAccessoryPowerActionWithModelID:v2];

  if (!v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 32) uuid];
      *buf = 138543618;
      v27 = v7;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unable to find AppleMediaAccessoryPowerAction with UUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v9 = [HMCContext findAppleMediaAccessoryWithModelID:*(a1 + 48)];
  [v3 setAccessory:v9];

  v10 = [v3 accessory];

  if (!v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 48);
      *buf = 138543618;
      v27 = v14;
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to find AppleMediaAccessory with UUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  [v3 setTargetSleepWakeState:*(a1 + 56)];
  v16 = +[HMCContext currentContext];
  [v16 save];

  v17 = [*(a1 + 32) uuid];
  v18 = [v17 UUIDString];
  v25[0] = v18;
  v24[1] = *MEMORY[0x277CD2028];
  v19 = [*(a1 + 32) dictionaryRepresentation];
  v25[1] = v19;
  v24[2] = *MEMORY[0x277CD0640];
  v20 = [*(a1 + 64) uuid];
  v21 = [v20 UUIDString];
  v25[2] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];

  [*(a1 + 72) respondWithPayload:v22];
  v23 = *MEMORY[0x277D85DE8];
}

- (void)_updateNaturalLightingAction:(id)a3 forMessage:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 dictionaryForKey:*MEMORY[0x277CD2028]];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v23 = 138543874;
    v24 = v12;
    v25 = 2112;
    v26 = v6;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating natural lighting action with action info %@:%@", &v23, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [HMDLightProfileNaturalLightingActionModel alloc];
  v14 = [v6 uuid];
  v15 = [(HMDActionSet *)v10 uuid];
  v16 = [(HMDBackingStoreModelObject *)v13 initWithObjectChangeType:2 uuid:v14 parentUUID:v15];

  -[HMDLightProfileNaturalLightingActionModel setNaturalLightingEnabled:](v16, "setNaturalLightingEnabled:", [v8 hmf_BOOLForKey:*MEMORY[0x277CD0788]]);
  v17 = [(HMDActionSet *)v10 home];
  v18 = [v17 backingStore];
  v19 = [v7 name];
  v20 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
  v21 = [v18 transaction:v19 options:v20];

  [v21 add:v16 withMessage:v7];
  [v21 run];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_updatePlaybackAction:(id)a3 forMessage:(id)a4
{
  v87 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 dictionaryForKey:*MEMORY[0x277CD2028]];
  v9 = [v8 hmf_arrayForKey:*MEMORY[0x277CD08A0]];
  v71 = v6;
  if (v9)
  {
    v10 = [MEMORY[0x277CBEB98] setWithArray:v9];
  }

  else
  {
    v10 = 0;
  }

  if ([v10 count])
  {
    v70 = [v8 hmf_numberForKey:*MEMORY[0x277CD08B0]];
    v11 = [v70 integerValue];
    v73 = [v8 hmf_numberForKey:*MEMORY[0x277CD08C0]];
    v12 = [v8 hmf_dataForKey:*MEMORY[0x277CD0890]];
    if (v12)
    {
      v72 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v12 error:0];
    }

    else
    {
      v72 = 0;
    }

    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138544130;
      v80 = v22;
      v81 = 2112;
      v82 = v70;
      v83 = 2112;
      v84 = v73;
      v85 = 2112;
      v86 = v72;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@actionInfo state %@ volume %@ playbackArchive %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v19);
    if (v73 || v72 || v11)
    {
      v67 = v9;
      v68 = v8;
      v69 = v7;
      v27 = [(HMDActionSet *)v20 home];
      v28 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v10, "count")}];
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v29 = v10;
      v30 = [v29 countByEnumeratingWithState:&v74 objects:v78 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v75;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v75 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v74 + 1) + 8 * i)];
            v35 = [v27 mediaProfileWithUUID:v34];
            if (v35)
            {
              [v28 addObject:v35];
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v74 objects:v78 count:16];
        }

        while (v31);
      }

      if ([v28 count])
      {
        v6 = v71;
        v36 = [v71 validate];
        v7 = v69;
        if (v36)
        {
          v37 = v36;
          [v69 respondWithError:v36];
        }

        else
        {
          v38 = objc_alloc([v71 modelClass]);
          v39 = [v71 modelIdentifier];
          v40 = [(HMDActionSet *)v20 uuid];
          v41 = [v38 initWithObjectChangeType:2 uuid:v39 parentUUID:v40];

          v42 = v41;
          v43 = [v70 integerValue];
          if (v43 != [v71 state])
          {
            [v42 setState:v70];
          }

          v44 = [v71 volume];
          v45 = HMFEqualObjects();

          if ((v45 & 1) == 0)
          {
            [v42 setVolume:v73];
          }

          v46 = [v71 mediaProfiles];
          v47 = HMFEqualObjects();

          if ((v47 & 1) == 0)
          {
            [v42 setProfiles:v29];
            v48 = mapProfilesToAccessoryUUIDs(v27, v29);
            [v42 setAccessories:v48];

            v49 = mapProfilesToServiceUUIDs(v27, v29);
            [v42 setServices:v49];
          }

          v50 = [v71 playbackArchive];
          v51 = HMFEqualObjects();

          if ((v51 & 1) == 0)
          {
            [v42 setEncodedPlaybackArchive:v72];
          }

          v52 = objc_autoreleasePoolPush();
          v53 = v20;
          v54 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            v55 = HMFGetLogIdentifier();
            [v42 state];
            v56 = v65 = v52;
            [v42 volume];
            v57 = v64 = v53;
            [v42 encodedPlaybackArchive];
            v58 = v66 = v42;
            *buf = 138544130;
            v80 = v55;
            v81 = 2112;
            v82 = v56;
            v83 = 2112;
            v84 = v57;
            v85 = 2112;
            v86 = v58;
            _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_DEFAULT, "%{public}@model state %@ volume %@ playbackArchive %@", buf, 0x2Au);

            v42 = v66;
            v53 = v64;

            v52 = v65;
          }

          objc_autoreleasePoolPop(v52);
          v59 = [v27 backingStore];
          v60 = [v69 name];
          v61 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
          v62 = [v59 transaction:v60 options:v61];

          [v62 add:v42 withMessage:v69];
          [v62 run];

          v37 = 0;
        }
      }

      else
      {
        v37 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        v7 = v69;
        [v69 respondWithError:v37];
        v6 = v71;
      }

      v9 = v67;
      v8 = v68;
      v18 = v70;
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v20;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543362;
        v80 = v26;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@At least one parameter change needed in the updateAction request", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
      v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20 description:@"No action set in update action request" reason:0 suggestion:0];
      [v7 respondWithError:v27];
      v18 = v70;
    }
  }

  else
  {
    v13 = v10;
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v80 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@At least one media profile needed in the updateAction request", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20 description:@"At least one media profile needed in the updateAction request" reason:0 suggestion:0];
    [v7 respondWithError:v18];
    v10 = v13;
  }

  v63 = *MEMORY[0x277D85DE8];
}

- (void)_updateWriteAction:(id)a3 forMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 uuidForKey:*MEMORY[0x277CD2060]];
  v9 = [v7 dictionaryForKey:*MEMORY[0x277CD2028]];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CD21B8]];
  if (v10)
  {
    v11 = [v6 characteristic];
    v25 = v10;
    v12 = [v11 validateValueForWrite:v10 outValue:&v25];
    v13 = v25;

    if (v12)
    {
      [v7 respondWithError:v12];
    }

    else
    {
      v15 = [HMDCharacteristicWriteActionModel alloc];
      v16 = [(HMDActionSet *)self uuid];
      v22 = [(HMDBackingStoreModelObject *)v15 initWithObjectChangeType:2 uuid:v8 parentUUID:v16];

      [(HMDCharacteristicWriteActionModel *)v22 setTargetValue:v10];
      v17 = [(HMDActionSet *)self home];
      v18 = [v17 backingStore];
      [v7 name];
      v19 = v23 = v13;
      v20 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      [v18 transaction:v19 options:v20];
      v21 = v24 = v8;

      v13 = v23;
      [v21 add:v22 withMessage:v7];
      [v21 run];

      v8 = v24;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
    [v7 respondWithError:v14];
  }
}

- (BOOL)_handleRenameActionSetTransaction:(id)a3 message:(id)a4
{
  v31[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 name];
  v9 = [v8 hm_truncatedNameString];

  v10 = [(HMDActionSet *)self home];
  v11 = [(HMDActionSet *)self name];
  v12 = [v10 replaceName:v11 withNewName:v9];

  [(HMDActionSet *)self setName:v9];
  v30[0] = *MEMORY[0x277CD2050];
  v13 = [(HMDActionSet *)self uuid];
  v14 = [v13 UUIDString];
  v15 = *MEMORY[0x277CD2040];
  v31[0] = v14;
  v31[1] = v9;
  v16 = *MEMORY[0x277CD0640];
  v30[1] = v15;
  v30[2] = v16;
  v17 = [v10 uuid];
  v18 = [v17 UUIDString];
  v31[2] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];

  logAndPostNotification(@"HMDActionSetRenamedNotification", self, v19);
  [v7 respondWithPayload:v19];
  v20 = objc_autoreleasePoolPush();
  v21 = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    v26 = 138543618;
    v27 = v23;
    v28 = 2112;
    v29 = v19;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Responded to client with payload : %@", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
  v24 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_handleRenameRequest:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 stringForKey:*MEMORY[0x277CD2040]];
  v6 = v5;
  if (!v5 || ![v5 length])
  {
    v7 = MEMORY[0x277CD1800];
    v8 = [(HMDActionSet *)self type];
    LOBYTE(v7) = [v7 isBuiltinActionSetType:v8];

    if ((v7 & 1) == 0)
    {
      v36 = objc_autoreleasePoolPush();
      v37 = self;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = HMFGetLogIdentifier();
        v40 = [(HMDActionSet *)v37 type];
        v41 = [(HMDActionSet *)v37 name];
        *buf = 138543874;
        v48 = v39;
        v49 = 2112;
        v50 = v40;
        v51 = 2112;
        v52 = v41;
        _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Attempt to rename the actionSet %@/%@ to nil name", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v36);
      v23 = MEMORY[0x277CCA9B8];
      v24 = 20;
      goto LABEL_17;
    }

    v9 = +[HMDHome getBuiltinActionSets];
    v10 = [(HMDActionSet *)self type];
    v11 = [v9 objectForKeyedSubscript:v10];
    v12 = HMDLocalizedStringForKey(v11);

    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [(HMDActionSet *)v14 type];
      *buf = 138543874;
      v48 = v16;
      v49 = 2112;
      v50 = v17;
      v51 = 2112;
      v52 = v12;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Resetting the name of built-in actionSet of type %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v6 = v12;
  }

  v18 = HMMaxLengthForNaming();
  if ([v6 length] <= v18)
  {
    v25 = [(HMDActionSet *)self home];
    if (v25)
    {
      v26 = [(HMDActionSet *)self name];
      v27 = [v25 replaceActionSetName:v26 withNewName:v6];

      if (!v27)
      {
        v28 = [HMDActionSetModel alloc];
        v29 = [(HMDActionSet *)self uuid];
        v30 = [v25 uuid];
        v31 = [(HMDBackingStoreModelObject *)v28 initWithObjectChangeType:2 uuid:v29 parentUUID:v30];

        [(HMDActionSetModel *)v31 setName:v6];
        v32 = [v25 backingStore];
        v33 = [v4 name];
        v34 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
        v35 = [v32 transaction:v33 options:v34];

        [v35 add:v31 withMessage:v4];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __37__HMDActionSet__handleRenameRequest___block_invoke;
        v43[3] = &unk_278688D58;
        v44 = v25;
        v45 = v6;
        v46 = self;
        [v35 run:v43];

        v27 = 0;
LABEL_20:

        goto LABEL_21;
      }
    }

    else
    {
      v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    }

    [v4 respondWithError:v27];
    goto LABEL_20;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543362;
    v48 = v22;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@New name is longer than the pre-defined max length", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v19);
  v23 = MEMORY[0x277CCA9B8];
  v24 = 46;
LABEL_17:
  v25 = [v23 hmErrorWithCode:v24];
  [v4 respondWithError:v25];
LABEL_21:

  v42 = *MEMORY[0x277D85DE8];
}

void __37__HMDActionSet__handleRenameRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = [*(a1 + 48) name];
    v4 = [v2 replaceActionSetName:v3 withNewName:v5];
  }
}

- (void)_removeDonatedIntent
{
  v3 = +[HMDDonationHandler sharedDonationHandler];
  [v3 removeIntentForActionSet:self];
}

- (void)_handleRemoveActionTransaction:(id)a3 message:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 transactionResult];
  v9 = [v6 uuid];
  v10 = [(HMDActionSet *)self actionWithUUID:v9];
  v11 = [(HMDActionSet *)self home];
  v12 = v11;
  if (v10 && v11)
  {
    [(HMDActionSet *)self _removeAction:v10 message:v7];
    if ([v12 isOwnerUser])
    {
      [v8 markChanged];
    }

    else if ([v12 isAdminUser])
    {
      [v8 markLocalChanged];
    }

    [v8 markSaveToAssistant];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543874;
      v20 = v16;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Couldn't remove action as it was not found : %@ / %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v7 respondWithError:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_handleRemovalOfActions:(id)a3 transaction:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) modelObjectWithChangeType:3];
        [v6 add:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleRemovalOfAction:(id)a3 transaction:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v6 = MEMORY[0x277CBEA60];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v11 count:1];

  [(HMDActionSet *)self _handleRemovalOfActions:v9 transaction:v7, v11, v12];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleRemoveActionRequest:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uuidForKey:*MEMORY[0x277CD2060]];
  v6 = [(HMDActionSet *)self actionWithUUID:v5];
  v7 = [(HMDActionSet *)self home];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v4 respondWithError:v10];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v22 = 138543874;
      v23 = v15;
      v24 = 2112;
      v25 = v6;
      v26 = 2112;
      v27 = v4;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Removing action from actionSet : %@ / %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [v8 backingStore];
    v17 = [v4 name];
    v18 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v19 = [v16 transaction:v17 options:v18];

    v20 = [v6 modelObjectWithChangeType:3];
    [v19 add:v20 withMessage:v4];
    [v19 run];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_removeAction:(id)a3 message:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDActionSet *)self home];
  if (v8)
  {
    v9 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11 && ([v7 proxyConnection], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, v14 = objc_msgSend(v7, "isEntitledForShortcutsAutomationAccess"), v13, (v14 & 1) == 0))
    {
      v40 = objc_autoreleasePoolPush();
      v41 = self;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = HMFGetLogIdentifier();
        *buf = 138543362;
        v50 = v43;
        _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@Missing ShortcutsAutomationAccess Entitlement for Remove", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v40);
      v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:80 description:@"Missing Entitlement" reason:0 suggestion:0];
      [v7 respondWithError:v29];
    }

    else
    {
      [(HMDActionSet *)self removeAction:v9];
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v18 = v46 = v6;
        [v9 uuid];
        v19 = v45 = v7;
        [v19 UUIDString];
        v20 = v44 = v15;
        [(HMDActionSet *)v16 uuid];
        v22 = v21 = v8;
        v23 = [v22 UUIDString];
        *buf = 138543874;
        v50 = v18;
        v51 = 2112;
        v52 = v20;
        v53 = 2112;
        v54 = v23;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Remove Action uuid: %@, Action set uuid: %@", buf, 0x20u);

        v8 = v21;
        v7 = v45;

        v15 = v44;
        v6 = v46;
      }

      objc_autoreleasePoolPop(v15);
      v47[0] = *MEMORY[0x277CD2060];
      v24 = [v9 uuid];
      v25 = [v24 UUIDString];
      v48[0] = v25;
      v47[1] = *MEMORY[0x277CD0640];
      [v8 uuid];
      v27 = v26 = v8;
      v28 = [v27 UUIDString];
      v48[1] = v28;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];

      v8 = v26;
      [v7 respondWithPayload:v29];
    }
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      v34 = [(HMDActionSet *)v31 name];
      [(HMDActionSet *)v31 uuid];
      v36 = v35 = v6;
      [v36 UUIDString];
      v38 = v37 = v7;
      *buf = 138543874;
      v50 = v33;
      v51 = 2112;
      v52 = v34;
      v53 = 2112;
      v54 = v38;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@%@/%@: Ignoring _removeAction since home is nil", buf, 0x20u);

      v6 = v35;
      v7 = v37;
    }

    objc_autoreleasePoolPop(v30);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v7 respondWithError:v11];
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_handleAddAppleMediaAccessoryPowerActionTransaction:(id)a3 message:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v11;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@_handleAddAppleMediaAccessoryPowerActionTransaction:message: with model: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v15 = 0;
  v12 = [[HMDAppleMediaAccessoryPowerAction alloc] initWithModelObject:v6 parent:v9 error:&v15];
  v13 = v15;
  if (v12)
  {
    [(HMDActionSet *)v9 _handleAddNewAction:v12 message:v7];
  }

  else
  {
    [v7 respondWithError:v13];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleAddLightProfileNaturalLightingActionTransaction:(id)a3 message:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = 0;
  v8 = [[HMDLightProfileNaturalLightingAction alloc] initWithModelObject:v7 parent:self error:&v10];

  v9 = v10;
  if (v8)
  {
    [(HMDActionSet *)self _handleAddNewAction:v8 message:v6];
  }

  else
  {
    [v6 respondWithError:v9];
  }
}

- (void)_handleAddShortcutActionTransaction:(id)a3 message:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 data];

  if (v8)
  {
    v9 = [HMDShortcutAction alloc];
    v10 = [v6 data];
    v11 = [v6 uuid];
    v12 = [(HMDShortcutAction *)v9 initWithSerializedShortcut:v10 uuid:v11 actionSet:self];

    [(HMDActionSet *)self _handleAddNewAction:v12 message:v7];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Add shortcut invalid parameter: no data", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20 description:@"Invalid action properties" reason:0 suggestion:0];
    [v7 respondWithError:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_handleAddMediaPlaybackActionTransaction:(id)a3 message:(id)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 profiles];
  if ([v8 count])
  {
    v9 = [v6 volume];
    if (v9 || ([v6 state], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "integerValue")))
    {

LABEL_5:
      v42 = self;
      v10 = [(HMDActionSet *)self home];
      v11 = MEMORY[0x277CBEB58];
      v12 = [v6 profiles];
      v13 = [v11 setWithCapacity:{objc_msgSend(v12, "count")}];

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v14 = [v6 profiles];
      v15 = [v14 countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v45;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v45 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v44 + 1) + 8 * i)];
            v20 = [v10 mediaProfileWithUUID:v19];
            if (v20)
            {
              [v13 addObject:v20];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v44 objects:v48 count:16];
        }

        while (v16);
      }

      if ([v13 count])
      {
        v43 = 0;
        v21 = [[HMDMediaPlaybackAction alloc] initWithModelObject:v6 parent:v42 error:&v43];
        v22 = v43;
        if (v21)
        {
          [(HMDActionSet *)v42 _handleAddNewAction:v21 message:v7];
        }

        else
        {
          v36 = objc_autoreleasePoolPush();
          v37 = v42;
          v38 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v39 = HMFGetLogIdentifier();
            *buf = 138543618;
            v50 = v39;
            v51 = 2112;
            v52 = v22;
            _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Failed to add media playback action with error: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v36);
          [v7 respondWithError:v22];
        }
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        v32 = v42;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          v35 = [v6 profiles];
          *buf = 138543618;
          v50 = v34;
          v51 = 2112;
          v52 = v35;
          _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Add media action could not match profile UUIDs to profiles. UUIDs: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Could not map profile UUIDs to media profiles" reason:0 suggestion:0];
        [v7 respondWithError:v22];
      }

      goto LABEL_29;
    }

    v41 = [v6 encodedPlaybackArchive];

    if (v41)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  v23 = objc_autoreleasePoolPush();
  v24 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = HMFGetLogIdentifier();
    v27 = [v6 profiles];
    v28 = [v6 volume];
    v29 = [v6 state];
    v30 = [v6 encodedPlaybackArchive];
    *buf = 138544386;
    v50 = v26;
    v51 = 2112;
    v52 = v27;
    v53 = 2112;
    v54 = v28;
    v55 = 2112;
    v56 = v29;
    v57 = 2112;
    v58 = v30;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Add media action invalid parameter: profiles : [%@], volume: %@, state: %@, encodedPlaybackArchive: %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v23);
  v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20 description:@"Invalid action properties" reason:0 suggestion:0];
  [v7 respondWithError:v10];
LABEL_29:

  v40 = *MEMORY[0x277D85DE8];
}

- (void)_handleAddCommandActionTransaction:(id)a3 message:(id)a4
{
  v78 = *MEMORY[0x277D85DE8];
  v54 = a3;
  v55 = a4;
  v6 = [v54 matterPathUUIDs];

  if (v6)
  {
    v53 = [(HMDActionSet *)self home];
    v63 = 0;
    v64 = &v63;
    v65 = 0x3032000000;
    v66 = __Block_byref_object_copy__31300;
    v67 = __Block_byref_object_dispose__31301;
    v68 = 0;
    v7 = [v53 accessories];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __59__HMDActionSet__handleAddCommandActionTransaction_message___block_invoke;
    v60[3] = &unk_278672098;
    v62 = &v63;
    v8 = v54;
    v61 = v8;
    [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v60];

    if (v64[5])
    {
      v52 = [v55 transactionResult];
      if ([v52 source] == 1)
      {
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v9 = [(HMDActionSet *)self actions];
        v10 = [v9 countByEnumeratingWithState:&v56 objects:v77 count:16];
        if (v10)
        {
          v11 = *v57;
          while (2)
          {
            v12 = 0;
            do
            {
              if (*v57 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = *(*(&v56 + 1) + 8 * v12);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v14 = v13;
              }

              else
              {
                v14 = 0;
              }

              v15 = v14;
              if (v15)
              {
                v16 = [v64[5] firstObject];
                v17 = [(HMDMatterCommandAction *)v15 isActionForMatterPath:v16];

                if (v17)
                {
                  v29 = objc_autoreleasePoolPush();
                  v30 = self;
                  v31 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                  {
                    v32 = HMFGetLogIdentifier();
                    v33 = [v64[5] firstObject];
                    v50 = [v33 endpointID];
                    v51 = [v64[5] firstObject];
                    v34 = [v51 accessory];
                    v35 = [(HMDAction *)v15 uuid];
                    *buf = 138544130;
                    v70 = v32;
                    v71 = 2112;
                    v72 = v50;
                    v73 = 2112;
                    v74 = v34;
                    v75 = 2112;
                    v76 = v35;
                    _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Action for endpoint/accessory %@/%@ has already existed with UUID %@. Cleaning from transaction store.", buf, 0x2Au);
                  }

                  objc_autoreleasePoolPop(v29);
                  v36 = [MEMORY[0x277CCA9B8] hmErrorWithCode:1];
                  [v55 respondWithError:v36];

                  v37 = [HMDMatterCommandActionModel alloc];
                  v38 = [v8 uuid];
                  v39 = [v8 parentUUID];
                  v40 = [(HMDBackingStoreModelObject *)v37 initWithObjectChangeType:3 uuid:v38 parentUUID:v39];

                  v41 = [v53 backingStore];
                  v42 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
                  v43 = [v41 transaction:@"RemoveUnpushedActionModel" options:v42];

                  [v43 add:v40];
                  [v43 save];

                  goto LABEL_26;
                }
              }

              ++v12;
            }

            while (v10 != v12);
            v10 = [v9 countByEnumeratingWithState:&v56 objects:v77 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }
      }

      v18 = [v8 commands];
      v9 = [v8 decodeSerializedMatterCommands:v18 home:v53];

      if (v9)
      {
        v19 = [HMDMatterCommandAction alloc];
        v20 = [v8 uuid];
        v21 = [v8 enforceExecutionOrder];
        v15 = -[HMDMatterCommandAction initWithUUID:commands:enforceExecutionOrder:actionSet:](v19, "initWithUUID:commands:enforceExecutionOrder:actionSet:", v20, v9, [v21 BOOLValue], self);

        [(HMDActionSet *)self _handleAddNewAction:v15 message:v55];
LABEL_26:
      }

      else
      {
        v44 = objc_autoreleasePoolPush();
        v45 = self;
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v47 = HMFGetLogIdentifier();
          v48 = [v8 commands];
          *buf = 138543618;
          v70 = v47;
          v71 = 2112;
          v72 = v48;
          _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode matter commands from dictionary %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v44);
        v9 = 0;
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v28 = [v8 matterPathUUIDs];
        *buf = 138543618;
        v70 = v27;
        v71 = 2112;
        v72 = v28;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Command with matterPaths with UUIDs %@ not found on accessory", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
    }

    _Block_object_dispose(&v63, 8);
    v23 = v55;
  }

  else
  {
    v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    v23 = v55;
    [v55 respondWithError:v22];
  }

  v49 = *MEMORY[0x277D85DE8];
}

void __59__HMDActionSet__handleAddCommandActionTransaction_message___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v8 | v11)
  {
    if (v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v11;
    }

    v13 = [v12 matterAdapter];
    v14 = [*(a1 + 32) matterPathUUIDs];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __59__HMDActionSet__handleAddCommandActionTransaction_message___block_invoke_2;
    v19[3] = &unk_278672070;
    v20 = v13;
    v15 = v13;
    v16 = [v14 na_map:v19];
    v17 = *(*(a1 + 40) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    if (*(*(*(a1 + 40) + 8) + 40))
    {
      *a4 = 1;
    }
  }
}

- (void)_handleAddCharacteristicWriteActionTransaction:(id)a3 message:(id)a4
{
  v80 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 targetValue];
  if (!v8)
  {
    goto LABEL_26;
  }

  v9 = v8;
  v10 = [v6 accessory];
  if (!v10)
  {
    goto LABEL_25;
  }

  v11 = v10;
  v12 = [v6 serviceID];
  if (!v12)
  {

LABEL_25:
    goto LABEL_26;
  }

  v13 = v12;
  v14 = [v6 characteristicID];

  if (!v14)
  {
LABEL_26:
    v39 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [v7 respondWithError:v39];

    goto LABEL_27;
  }

  v15 = [(HMDActionSet *)self home];
  v16 = objc_alloc(MEMORY[0x277CCAD78]);
  v17 = [v6 accessory];
  v18 = [v16 initWithUUIDString:v17];

  v19 = [v15 accessoryWithUUID:v18];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  v22 = [v6 characteristicID];
  v23 = [v6 serviceID];
  v24 = [v21 findCharacteristic:v22 forService:v23];

  v68 = [v7 transactionResult];
  if ([v68 source] == 1)
  {
    v62 = v21;
    v64 = v18;
    v66 = v15;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v60 = self;
    v25 = [(HMDActionSet *)self actions];
    v26 = [(HMDCharacteristicWriteAction *)v25 countByEnumeratingWithState:&v69 objects:v79 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v70;
      while (2)
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v70 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v69 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v31 = v30;
          }

          else
          {
            v31 = 0;
          }

          v32 = v31;
          v33 = v32;
          if (v32 && [v32 isActionForCharacteristic:v24])
          {
            v41 = objc_autoreleasePoolPush();
            v42 = v60;
            v43 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              v44 = HMFGetLogIdentifier();
              v45 = [v33 uuid];
              *buf = 138543874;
              v74 = v44;
              v75 = 2112;
              v76 = v24;
              v77 = 2112;
              v78 = v45;
              _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_ERROR, "%{public}@Action for chr (%@) has already existed with UUID %@. Cleaning from transaction store.", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v41);
            v46 = [MEMORY[0x277CCA9B8] hmErrorWithCode:1];
            [v7 respondWithError:v46];

            [v6 setObjectChangeType:3];
            v15 = v66;
            v47 = [v66 backingStore];
            v48 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
            v49 = [v47 transaction:@"RemoveUnpushedActionModel" options:v48];

            [v49 add:v6];
            [v49 save];

            v21 = v62;
            v18 = v64;
            goto LABEL_35;
          }
        }

        v27 = [(HMDCharacteristicWriteAction *)v25 countByEnumeratingWithState:&v69 objects:v79 count:16];
        if (v27)
        {
          continue;
        }

        break;
      }
    }

    v18 = v64;
    v15 = v66;
    self = v60;
  }

  if (v24)
  {
    v34 = [HMDCharacteristicWriteAction alloc];
    v35 = [v6 uuid];
    v36 = [v6 targetValue];
    v37 = [(HMDCharacteristicWriteAction *)v34 initWithUUID:v35 characteristic:v24 targetValue:v36 actionSet:self];
    v38 = self;
    v25 = v37;
  }

  else
  {
    v65 = v18;
    v67 = v15;
    v63 = v21;
    v50 = objc_autoreleasePoolPush();
    v61 = self;
    v51 = self;
    v52 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      v53 = HMFGetLogIdentifier();
      *buf = 138543618;
      v74 = v53;
      v75 = 2112;
      v76 = v6;
      _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_INFO, "%{public}@Characteristic is not yet available yet due to lack of PV or Resident sync. Create the action using the model: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v50);
    v59 = [HMDCharacteristicWriteAction alloc];
    v35 = [v6 uuid];
    v54 = objc_alloc(MEMORY[0x277CCAD78]);
    v36 = [v6 accessory];
    v58 = [v54 initWithUUIDString:v36];
    v55 = [v6 serviceID];
    v56 = [v6 characteristicID];
    v57 = [v6 targetValue];
    v25 = [(HMDCharacteristicWriteAction *)v59 initWithUUID:v35 accessoryUUID:v58 serviceIID:v55 characteristicIID:v56 targetValue:v57 actionSet:v51];

    v21 = v63;
    v18 = v65;
    v38 = v61;
    v15 = v67;
  }

  [(HMDActionSet *)v38 _handleAddNewAction:v25 message:v7];
LABEL_35:

LABEL_27:
  v40 = *MEMORY[0x277D85DE8];
}

- (void)sendNotificationWithAction:(id)a3 message:(id)a4
{
  v27[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 name];
  v9 = [v8 isEqualToString:@"kTransactionUpdate"];

  if (v9)
  {
    [v7 respondWithSuccess];
  }

  else
  {
    v26[0] = *MEMORY[0x277CD2060];
    v10 = [v6 uuid];
    v11 = [v10 UUIDString];
    v27[0] = v11;
    v26[1] = *MEMORY[0x277CD2028];
    v12 = [v6 dictionaryRepresentation];
    v27[1] = v12;
    v26[2] = *MEMORY[0x277CD0640];
    v13 = [(HMDActionSet *)self home];
    v14 = [v13 uuid];
    v15 = [v14 UUIDString];
    v27[2] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];

    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v20;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Responding to client that ActionSet is successfully added : %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    [v7 respondWithPayload:v16];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handleAddNewAction:(id)a3 message:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = [v7 proxyConnection];
    if (v11)
    {
      v12 = v11;
      v13 = [v7 isEntitledForShortcutsAutomationAccess];

      if ((v13 & 1) == 0)
      {
        v33 = objc_autoreleasePoolPush();
        v34 = self;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = HMFGetLogIdentifier();
          *buf = 138543362;
          v48 = v36;
          _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Missing ShortcutsAutomationAccess Entitlement for Add", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v33);
        v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:80 description:@"Missing Entitlement" reason:0 suggestion:0];
        [v7 respondWithError:v14];
        goto LABEL_41;
      }
    }
  }

  [(HMDActionSet *)self addAction:v8];
  v14 = [v7 transactionResult];
  [v14 markChanged];
  [v14 markSaveToAssistant];
  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = HMFGetLogIdentifier();
    [v8 uuid];
    v19 = v45 = v10;
    [v19 UUIDString];
    v44 = v8;
    v20 = v14;
    v22 = v21 = v7;
    v23 = [(HMDActionSet *)v16 uuid];
    v24 = [v23 UUIDString];
    *buf = 138543874;
    v48 = v18;
    v49 = 2112;
    v50 = v22;
    v51 = 2112;
    v52 = v24;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Add Action uuid: %@, Action set uuid: %@", buf, 0x20u);

    v7 = v21;
    v14 = v20;
    v8 = v44;

    v10 = v45;
  }

  objc_autoreleasePoolPop(v15);
  v25 = [v8 type];
  if (v25 > 2)
  {
    if ((v25 - 3) >= 2)
    {
      if (v25 == 5)
      {
        v37 = +[HMDCoreData featuresDataSource];
        v38 = [v37 isRVCEnabled];

        if (v38)
        {
          v26 = v8;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v39 = v26;
          }

          else
          {
            v39 = 0;
          }

          v28 = v39;

          if (!v28)
          {
            v46 = v14;
            v29 = v10;
            v30 = objc_autoreleasePoolPush();
            v31 = v16;
            v32 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_38;
            }

            goto LABEL_39;
          }

          goto LABEL_36;
        }
      }

      goto LABEL_41;
    }

LABEL_20:
    [(HMDActionSet *)v16 sendNotificationWithAction:v8 message:v7];
    goto LABEL_41;
  }

  switch(v25)
  {
    case 0:
      v26 = v8;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v40 = v26;
      }

      else
      {
        v40 = 0;
      }

      v28 = v40;

      if (!v28)
      {
        v46 = v14;
        v29 = v10;
        v30 = objc_autoreleasePoolPush();
        v31 = v16;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
LABEL_38:
          v41 = HMFGetLogIdentifier();
          v42 = HMActionTypeAsString();
          *buf = 138543874;
          v48 = v41;
          v49 = 2112;
          v50 = v26;
          v51 = 2112;
          v52 = v42;
          _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);
        }

LABEL_39:

        objc_autoreleasePoolPop(v30);
        v10 = v29;
        v14 = v46;
        goto LABEL_40;
      }

LABEL_36:
      [(HMDActionSet *)v16 sendNotificationWithAction:v26 message:v7];
LABEL_40:

      break;
    case 1:
      goto LABEL_20;
    case 2:
      v26 = v8;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      v28 = v27;

      if (!v28)
      {
        v46 = v14;
        v29 = v10;
        v30 = objc_autoreleasePoolPush();
        v31 = v16;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      goto LABEL_36;
  }

LABEL_41:

  v43 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateActionSet:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 messagePayload];
    *buf = 138543874;
    v47 = v8;
    v48 = 2112;
    v49 = v4;
    v50 = 2112;
    v51 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received request to update ActionSet %@ / %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [(HMDActionSet *)v6 home];
  v11 = [(HMDActionSet *)v6 type];
  v12 = [v11 isEqualToString:*MEMORY[0x277CCF1A0]];

  if (v12)
  {
    v13 = [v4 responseHandler];
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v13[2](v13, v14, 0);
  }

  else
  {
    v15 = [v10 backingStore];
    v16 = [v4 name];
    v17 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v18 = [v15 transaction:v16 options:v17];

    v19 = [v4 messagePayload];
    v20 = [v19 hmf_stringForKey:*MEMORY[0x277CD2040]];

    if (!v20)
    {
      goto LABEL_11;
    }

    v21 = [(HMDActionSet *)v6 name];
    v22 = [v20 isEqualToString:v21];

    if (v22)
    {
      goto LABEL_11;
    }

    v23 = [(HMDActionSet *)v6 name];
    v24 = [v10 replaceActionSetName:v23 withNewName:v20];

    if (v24)
    {
      v25 = objc_autoreleasePoolPush();
      v26 = v6;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543618;
        v47 = v28;
        v48 = 2112;
        v49 = v24;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to rename actionset with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      [v4 respondWithError:v24];

      v14 = 0;
      v13 = 0;
    }

    else
    {
LABEL_11:
      v29 = [v4 messagePayload];
      v44 = 0;
      v45 = 0;
      v30 = [(HMDActionSet *)v6 _updateActionSetFromDictionary:v29 transaction:v18 response:&v45 error:&v44];
      v14 = v45;
      v13 = v44;

      if (v30)
      {
        v31 = objc_autoreleasePoolPush();
        v32 = v6;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = HMFGetLogIdentifier();
          *buf = 138543362;
          v47 = v34;
          _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Updating actionSet", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v31);
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __39__HMDActionSet__handleUpdateActionSet___block_invoke;
        v38[3] = &unk_278676CB8;
        v39 = v4;
        v40 = v20;
        v41 = v32;
        v42 = v10;
        v14 = v14;
        v43 = v14;
        [v18 run:v38];
      }

      else
      {
        v35 = [(HMDActionSet *)v6 name];
        v36 = [v10 replaceActionSetName:v20 withNewName:v35];

        [v4 respondWithError:v13];
      }
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (BOOL)_updateActionSetFromDictionary:(void *)a3 transaction:(void *)a4 response:(void *)a5 error:
{
  v100 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (!a1)
  {
    v40 = 0;
    goto LABEL_70;
  }

  v9 = [v7 hmf_arrayForKey:*MEMORY[0x277CD2030]];
  v79 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = [a1 actions];
  v78 = [v10 mutableCopy];

  v80 = [a1 home];
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = v9;
  v77 = [obj countByEnumeratingWithState:&v89 objects:v99 count:16];
  if (!v77)
  {
    goto LABEL_33;
  }

  v76 = *v90;
  v73 = v7;
  while (2)
  {
    for (i = 0; i != v77; ++i)
    {
      if (*v90 != v76)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v89 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      if (!v14)
      {
        v56 = objc_autoreleasePoolPush();
        v57 = a1;
        v58 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v59 = HMFGetLogIdentifier();
          v60 = [v57 name];
          *buf = 138543618;
          v96 = v59;
          v97 = 2112;
          v98 = v60;
          _os_log_impl(&dword_229538000, v58, OS_LOG_TYPE_ERROR, "%{public}@Can't update action set %@; invalid serialized action", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v56);
        v7 = v73;
        v61 = obj;
        if (a5)
        {
          *a5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        }

        goto LABEL_62;
      }

      v15 = [v80 actionWithDictionaryRepresentation:v14];
      if (!v15)
      {
        v62 = objc_autoreleasePoolPush();
        v63 = a1;
        v64 = HMFGetOSLogHandle();
        v7 = v73;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          v65 = HMFGetLogIdentifier();
          *buf = 138543618;
          v96 = v65;
          v97 = 2112;
          v98 = v14;
          _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize action: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v62);
        v61 = obj;
        if (a5)
        {
          *a5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        }

LABEL_62:
        v40 = 0;
        goto LABEL_69;
      }

      v16 = v15;
      v17 = +[HMDCoreData featuresDataSource];
      v18 = [v17 isRVCEnabled];

      if (v18)
      {
        v19 = v16;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v21 = v19;
        }

        else
        {
          v21 = 0;
        }

        v22 = v21;

        if (isKindOfClass)
        {
          [v19 addMatterPathsToTransactionIfNotStored:v8];
        }
      }

      [v79 addObject:v16];
      v23 = a1;
      [v16 updateActionSetIfNil:a1];
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v24 = v78;
      v25 = [v24 countByEnumeratingWithState:&v85 objects:v94 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v86;
LABEL_21:
        v28 = 0;
        while (1)
        {
          if (*v86 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v85 + 1) + 8 * v28);
          if ([v29 isCompatibleWithAction:v16])
          {
            break;
          }

          if (v26 == ++v28)
          {
            v26 = [v24 countByEnumeratingWithState:&v85 objects:v94 count:16];
            if (v26)
            {
              goto LABEL_21;
            }

            goto LABEL_27;
          }
        }

        v30 = v29;

        if (!v30)
        {
          goto LABEL_30;
        }

        v31 = [v30 uuid];
        [v16 setUuid:v31];

        v32 = [v16 modelObjectWithChangeType:2];
        [v8 add:v32];

        [v24 removeObject:v30];
      }

      else
      {
LABEL_27:

LABEL_30:
        v30 = [v16 modelObjectWithChangeType:1];
        [v8 add:v30];
      }

      a1 = v23;
    }

    v7 = v73;
    v77 = [obj countByEnumeratingWithState:&v89 objects:v99 count:16];
    if (v77)
    {
      continue;
    }

    break;
  }

LABEL_33:

  if ([v80 validateActionsDoNotConflict:v79])
  {
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v33 = v78;
    v34 = [v33 countByEnumeratingWithState:&v81 objects:v93 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v82;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v82 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = [*(*(&v81 + 1) + 8 * j) modelObjectWithChangeType:3];
          [v8 add:v38];
        }

        v35 = [v33 countByEnumeratingWithState:&v81 objects:v93 count:16];
      }

      while (v35);
    }

    v39 = [v7 hmd_appDataDictionaryWithError:a5];
    v40 = v39 != 0;
    if (v39)
    {
      v41 = [a1 appData];
      v42 = [a1 uuid];
      v43 = [HMDApplicationDataModel modelWithAppDataPayload:v39 existingAppData:v41 parentUUID:v42];

      if (v43)
      {
        [v8 add:v43];
      }

      v44 = [v7 hmf_stringForKey:*MEMORY[0x277CD2040]];
      if (v44)
      {
        v45 = [a1 name];
        if ([v44 isEqualToString:v45])
        {
          goto LABEL_48;
        }

        v46 = [v44 length];

        if (v46)
        {
          v47 = [HMDActionSetModel alloc];
          v48 = [a1 uuid];
          v49 = [v80 uuid];
          v45 = [(HMDBackingStoreModelObject *)v47 initWithObjectChangeType:2 uuid:v48 parentUUID:v49];

          [(HMDActionSetModel *)v45 setName:v44];
          [v8 add:v45];
LABEL_48:
        }
      }

      v50 = [HMDActionSet alloc];
      v51 = [a1 uuid];
      v52 = [a1 type];
      v53 = [(HMDActionSet *)v50 initWithName:v44 uuid:v51 type:v52 home:v80 queue:0];

      [(HMDActionSet *)v53 setActions:v79];
      if (a4)
      {
        v54 = [(HMDActionSet *)v53 createPayload];
        v55 = [v54 mutableCopy];

        [v55 setObject:v39 forKeyedSubscript:@"kAppDataInformationKey"];
        *a4 = [v55 copy];
      }
    }
  }

  else
  {
    v66 = objc_autoreleasePoolPush();
    v67 = a1;
    v68 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v69 = HMFGetLogIdentifier();
      *buf = 138543618;
      v96 = v69;
      v97 = 2112;
      v98 = v67;
      _os_log_impl(&dword_229538000, v68, OS_LOG_TYPE_ERROR, "%{public}@Can't update action set %@; conflicting actions", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v66);
    if (a5)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      *a5 = v40 = 0;
    }

    else
    {
      v40 = 0;
    }
  }

  v61 = obj;
LABEL_69:

LABEL_70:
  v70 = *MEMORY[0x277D85DE8];
  return v40;
}

void __39__HMDActionSet__handleUpdateActionSet___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v12 = v3;
  if (v3)
  {
    [v4 respondWithError:v3];
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = [*(a1 + 48) name];
      v7 = [v5 isEqualToString:v6];

      if ((v7 & 1) == 0)
      {
        v8 = *(a1 + 56);
        v9 = *(a1 + 40);
        v10 = [*(a1 + 48) name];
        v11 = [v8 replaceActionSetName:v9 withNewName:v10];
      }
    }
  }

  else
  {
    [v4 respondWithPayload:*(a1 + 64)];
  }
}

- (id)_addAppleMediaAccessoryPowerActionModelWithUUID:(id)a3 message:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v42 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Add Apple TV Power Action model", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [HMDAppleMediaAccessoryPowerActionModel alloc];
  v13 = [(HMDActionSet *)v9 uuid];
  v34 = v6;
  v14 = [(HMDBackingStoreModelObject *)v12 initWithObjectChangeType:1 uuid:v6 parentUUID:v13];

  v33 = v7;
  v32 = [v7 dictionaryForKey:*MEMORY[0x277CD2028]];
  [(HMDAppleMediaAccessoryPowerActionModel *)v14 loadModelWithActionInformation:?];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [(HMDActionSet *)v9 actions];
  v15 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v37;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v36 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        v21 = v20;

        if (v21)
        {
          v22 = [v21 accessory];
          v23 = [v22 uuid];
          [(HMDAppleMediaAccessoryPowerActionModel *)v14 accessoryUUID];
          v25 = v24 = v14;
          v26 = [v23 hmf_isEqualToUUID:v25];

          v14 = v24;
          if (v26)
          {
            v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:1];
            v28 = v33;
            [v33 respondWithError:v29];

            v27 = 0;
            goto LABEL_17;
          }
        }
      }

      v16 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v27 = v14;
  v28 = v33;
LABEL_17:

  v30 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)_addLightProfileNaturalLightingModelWithUUID:(id)a3 message:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v33 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Add light profile natural lighting write action model", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [v7 dictionaryForKey:*MEMORY[0x277CD2028]];
  v13 = [v12 mutableCopy];

  if (!v13)
  {
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
    [v7 respondWithError:v14];
    v24 = 0;
    goto LABEL_16;
  }

  [v13 setObject:v6 forKeyedSubscript:*MEMORY[0x277CD2060]];
  v14 = [HMDLightProfileNaturalLightingAction actionWithDictionaryRepresentation:v13 actionSet:v9];
  if (v14)
  {
    v15 = [(HMDActionSet *)v9 actions];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __69__HMDActionSet__addLightProfileNaturalLightingModelWithUUID_message___block_invoke;
    v30[3] = &unk_27867C048;
    v16 = v14;
    v31 = v16;
    v17 = [v15 na_firstObjectPassingTest:v30];

    if (v17)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = v9;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v22 = [v16 lightProfileUUID];
        *buf = 138543874;
        v33 = v21;
        v34 = 2112;
        v35 = v17;
        v36 = 2112;
        v37 = v22;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Action already exists for light profile with UUID %@:%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:1];
      [v7 respondWithError:v23];
    }

    else
    {
      v26 = [v16 modelObjectWithChangeType:1 version:4];
      if (v26)
      {
        v23 = v26;
        v24 = v23;
        goto LABEL_14;
      }

      v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      [v7 respondWithError:v29];

      v23 = 0;
    }

    v24 = 0;
LABEL_14:

    v25 = v31;
    goto LABEL_15;
  }

  v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  [v7 respondWithError:v25];
  v24 = 0;
LABEL_15:

LABEL_16:
  v27 = *MEMORY[0x277D85DE8];

  return v24;
}

uint64_t __69__HMDActionSet__addLightProfileNaturalLightingModelWithUUID_message___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 lightProfileUUID];
    v8 = [*(a1 + 32) lightProfileUUID];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_addMediaPlaybackActionModelWithUUID:(id)a3 message:(id)a4
{
  v68 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v59 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Add media playback action model", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [HMDMediaPlaybackActionModel alloc];
  v13 = [(HMDActionSet *)v9 uuid];
  v14 = [(HMDBackingStoreModelObject *)v12 initWithObjectChangeType:1 uuid:v6 parentUUID:v13];

  v15 = [v7 dictionaryForKey:*MEMORY[0x277CD2028]];
  [(HMDMediaPlaybackActionModel *)v14 loadModelWithActionInformation:v15];
  v16 = [(HMDActionSet *)v9 home];
  v17 = [(HMDMediaPlaybackActionModel *)v14 profiles];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __61__HMDActionSet__addMediaPlaybackActionModelWithUUID_message___block_invoke;
  v55[3] = &unk_278672048;
  v18 = v16;
  v56 = v18;
  v19 = [v17 na_map:v55];

  v20 = [(HMDMediaPlaybackActionModel *)v14 profiles];
  v21 = mapProfilesToAccessoryUUIDs(v18, v20);
  [(HMDMediaPlaybackActionModel *)v14 setAccessories:v21];

  v22 = [(HMDMediaPlaybackActionModel *)v14 profiles];
  v23 = mapProfilesToServiceUUIDs(v18, v22);
  [(HMDMediaPlaybackActionModel *)v14 setServices:v23];

  if ([v19 count] && (-[HMDMediaPlaybackActionModel accessories](v14, "accessories"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "count"), v24, v25) && v18)
  {
    v47 = v18;
    v48 = v6;
    v49 = v15;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v26 = [(HMDActionSet *)v9 actions];
    v27 = [v26 countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v52;
      while (2)
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v52 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v51 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v32 = v31;
          }

          else
          {
            v32 = 0;
          }

          v33 = v32;

          if (v33)
          {
            v34 = [v33 mediaProfiles];
            v35 = [v34 intersectsSet:v19];

            if (v35)
            {
              v44 = [MEMORY[0x277CCA9B8] hmErrorWithCode:1];
              [v7 respondWithError:v44];

              goto LABEL_24;
            }
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v51 objects:v57 count:16];
        if (v28)
        {
          continue;
        }

        break;
      }
    }

    v26 = [(HMDMediaPlaybackActionModel *)v14 validate];
    if (v26)
    {
      [v7 respondWithError:v26];
LABEL_24:
      v43 = 0;
      v6 = v48;
    }

    else
    {
      v43 = v14;
      v6 = v48;
    }

    v15 = v49;
    v18 = v47;
  }

  else
  {
    v36 = objc_autoreleasePoolPush();
    v37 = v9;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      [(HMDMediaPlaybackActionModel *)v14 accessories];
      v50 = v15;
      v40 = v7;
      v42 = v41 = v6;
      *buf = 138544386;
      v59 = v39;
      v60 = 2112;
      v61 = v41;
      v62 = 2112;
      v63 = v19;
      v64 = 2112;
      v65 = v42;
      v66 = 2112;
      v67 = v18;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Attempt to add playback action model with UUID (%@) and mediaProfiles: (%@) and accessories (%@) on home (%@)", buf, 0x34u);

      v6 = v41;
      v7 = v40;
      v15 = v50;
    }

    objc_autoreleasePoolPop(v36);
    v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v7 respondWithError:v26];
    v43 = 0;
  }

  v45 = *MEMORY[0x277D85DE8];

  return v43;
}

id __61__HMDActionSet__addMediaPlaybackActionModelWithUUID_message___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a2;
  v5 = [[v3 alloc] initWithUUIDString:v4];

  v6 = [*(a1 + 32) mediaProfileWithUUID:v5];

  return v6;
}

- (id)_addCharacteristicWriteActionModelWithUUID:(id)a3 message:(id)a4
{
  v72 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v71 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Add characteristic write action model", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [HMDCharacteristicWriteActionModel alloc];
  v13 = [(HMDActionSet *)v9 uuid];
  v14 = [(HMDBackingStoreModelObject *)v12 initWithObjectChangeType:1 uuid:v6 parentUUID:v13];

  v15 = [v7 dictionaryForKey:*MEMORY[0x277CD2028]];
  [(HMDCharacteristicWriteActionModel *)v14 loadModelWithActionInformation:v15];
  v16 = [(HMDActionSet *)v9 home];
  v17 = objc_alloc(MEMORY[0x277CCAD78]);
  v18 = [(HMDCharacteristicWriteActionModel *)v14 accessory];
  v19 = [v17 initWithUUIDString:v18];
  v20 = [v16 accessoryWithUUID:v19];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  v23 = [(HMDCharacteristicWriteActionModel *)v14 characteristicID];
  v24 = [(HMDCharacteristicWriteActionModel *)v14 serviceID];
  v25 = [v22 findCharacteristic:v23 forService:v24];

  v56 = v25;
  if (v25 && v16)
  {
    v50 = v22;
    v51 = v16;
    v52 = v15;
    v53 = v14;
    v54 = v7;
    v55 = v6;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v26 = [(HMDActionSet *)v9 actions];
    v27 = v25;
    v62 = [v26 countByEnumeratingWithState:&v65 objects:v69 count:16];
    if (!v62)
    {
      goto LABEL_26;
    }

    v28 = *v66;
    v60 = *v66;
    v61 = v26;
    while (1)
    {
      for (i = 0; i != v62; ++i)
      {
        if (*v66 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = *(*(&v65 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = v30;
        }

        else
        {
          v31 = 0;
        }

        v32 = v31;

        if (v32)
        {
          v33 = [v32 characteristic];
          v34 = [v33 accessory];
          v63 = [v33 service];
          v35 = [v33 instanceID];
          v36 = [v27 instanceID];
          if ([v35 isEqual:v36])
          {
            v37 = [v34 uuid];
            v38 = [v27 accessory];
            v39 = [v38 uuid];
            if ([v37 isEqual:v39])
            {
              [v63 instanceID];
              v40 = v57 = v37;
              [v27 service];
              v41 = v59 = v34;
              v42 = [v41 instanceID];
              v58 = [v40 isEqual:v42];

              v27 = v56;
              v34 = v59;

              v28 = v60;
              v26 = v61;
              if (v58)
              {
                v46 = [MEMORY[0x277CCA9B8] hmErrorWithCode:1];
                v7 = v54;
                [v54 respondWithError:v46];

                v47 = 0;
                v6 = v55;
                v15 = v52;
                v14 = v53;
                v22 = v50;
                v16 = v51;
                goto LABEL_31;
              }

              goto LABEL_23;
            }

            v28 = v60;
            v26 = v61;
          }

LABEL_23:
        }
      }

      v62 = [v26 countByEnumeratingWithState:&v65 objects:v69 count:16];
      if (!v62)
      {
LABEL_26:

        v14 = v53;
        v43 = [(HMDCharacteristicWriteActionModel *)v53 targetValue];
        v44 = [(HMDCharacteristicWriteActionModel *)v53 targetValue];
        v64 = v43;
        v45 = [v27 validateValueForWrite:v44 outValue:&v64];
        v26 = v64;

        if (v45)
        {
          v7 = v54;
          [v54 respondWithError:v45];
          v47 = 0;
        }

        else
        {
          [(HMDCharacteristicWriteActionModel *)v53 setTargetValue:v26];
          v47 = v53;
          v7 = v54;
        }

        v6 = v55;
        v16 = v51;
        v15 = v52;
        v22 = v50;

        goto LABEL_31;
      }
    }
  }

  v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  [v7 respondWithError:v26];
  v47 = 0;
LABEL_31:

  v48 = *MEMORY[0x277D85DE8];

  return v47;
}

- (void)_handleAddActionRequest:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v55 = 138543362;
    v56 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Add action to action set", &v55, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 uuidForKey:*MEMORY[0x277CD0B10]];
  if (v9 || ([v4 uuidForKey:*MEMORY[0x277CD2060]], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11 = [(HMDActionSet *)v6 actions];
    v12 = [v11 count];
    v13 = maximumActionsPerActionSet;

    if (v12 >= v13)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = v6;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v28 = [(HMDActionSet *)v25 name];
        v55 = 138543618;
        v56 = v27;
        v57 = 2112;
        v58 = v28;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Can't add action to action set %@; already at maximum actions allowed", &v55, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:49];
      [v4 respondWithError:v15];
      goto LABEL_38;
    }

    v14 = *MEMORY[0x277CD2028];
    v15 = [v4 dictionaryForKey:*MEMORY[0x277CD2028]];
    v16 = [v15 hmf_numberForKey:*MEMORY[0x277CD2058]];
    v17 = [v16 unsignedIntegerValue];
    if (v17 > 2)
    {
      if (v17 == 3)
      {
        v44 = [(HMDActionSet *)v6 _addLightProfileNaturalLightingModelWithUUID:v10 message:v4];
      }

      else
      {
        if (v17 != 4)
        {
          if (v17 == 5)
          {
            v29 = objc_autoreleasePoolPush();
            v30 = v6;
            v31 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              v32 = HMFGetLogIdentifier();
              v55 = 138543362;
              v56 = v32;
              _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Received a request to add an action that only available in HH2", &v55, 0xCu);
            }

            objc_autoreleasePoolPop(v29);
          }

          goto LABEL_24;
        }

        v44 = [(HMDActionSet *)v6 _addAppleMediaAccessoryPowerActionModelWithUUID:v10 message:v4];
      }
    }

    else if (v17)
    {
      if (v17 != 1)
      {
        if (v17 == 2)
        {
          if ([v4 isEntitledForShortcutsAutomationAccess])
          {
            v18 = [(HMDBackingStoreModelObject *)[HMDShortcutActionModel alloc] initWithObjectChangeType:1 uuid:v10 parentUUID:v6->_uuid];
            v19 = [v4 dictionaryForKey:v14];
            [(HMDShortcutActionModel *)v18 loadModelWithActionInformation:v19];

            if (!v18)
            {
LABEL_12:
              v20 = objc_autoreleasePoolPush();
              v21 = v6;
              v22 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                v23 = HMFGetLogIdentifier();
                v55 = 138543362;
                v56 = v23;
                _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Can't add action to action set, failed to create backing store model object", &v55, 0xCu);
              }

              objc_autoreleasePoolPop(v20);
              goto LABEL_37;
            }

            goto LABEL_36;
          }

          v51 = objc_autoreleasePoolPush();
          v52 = v6;
          v53 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            v54 = HMFGetLogIdentifier();
            v55 = 138543362;
            v56 = v54;
            _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_ERROR, "%{public}@Client does not have have entitlement for shortcut automation, cannot add action", &v55, 0xCu);
          }

          objc_autoreleasePoolPop(v51);
          v37 = MEMORY[0x277CCA9B8];
          v38 = 80;
LABEL_27:
          v39 = [v37 hmErrorWithCode:v38];
          [v4 respondWithError:v39];

LABEL_37:
LABEL_38:

          goto LABEL_39;
        }

LABEL_24:
        v33 = objc_autoreleasePoolPush();
        v34 = v6;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = HMFGetLogIdentifier();
          v55 = 138543362;
          v56 = v36;
          _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Can't add action to action set, unsupported action type", &v55, 0xCu);
        }

        objc_autoreleasePoolPop(v33);
        v37 = MEMORY[0x277CCA9B8];
        v38 = 3;
        goto LABEL_27;
      }

      v44 = [(HMDActionSet *)v6 _addMediaPlaybackActionModelWithUUID:v10 message:v4];
    }

    else
    {
      v44 = [(HMDActionSet *)v6 _addCharacteristicWriteActionModelWithUUID:v10 message:v4];
    }

    v18 = v44;
    if (!v44)
    {
      goto LABEL_12;
    }

LABEL_36:
    v45 = [(HMDActionSet *)v6 home];
    v46 = [v45 backingStore];
    v47 = [v4 name];
    v48 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v49 = [v46 transaction:v47 options:v48];

    [v49 add:v18 withMessage:v4];
    [v49 run];

    goto LABEL_37;
  }

  v40 = objc_autoreleasePoolPush();
  v41 = v6;
  v42 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    v43 = HMFGetLogIdentifier();
    v55 = 138543362;
    v56 = v43;
    _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@Cannot add action to action set as UUID is nil.", &v55, 0xCu);
  }

  objc_autoreleasePoolPop(v40);
  v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
  [v4 respondWithError:v10];
LABEL_39:

  v50 = *MEMORY[0x277D85DE8];
}

- (void)_registerForMessages
{
  v39[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMDActionSet *)self type];
  v32 = *MEMORY[0x277CCF1A0];
  v4 = [v3 isEqualToString:?];

  v5 = [HMDConfigurationMessagePolicy policyWithOperationTypes:1];
  v6 = v5;
  if (v4)
  {
    v39[0] = v5;
    v7 = 5;
    v8 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v39[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];

    v10 = [HMDConfigurationMessagePolicy policyWithOperationTypes:4];
    v38[0] = v10;
    v11 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v38[1] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];

    v13 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v37 = v13;
    v14 = &v37;
  }

  else
  {
    v36[0] = v5;
    v7 = 1;
    v15 = [HMDXPCMessagePolicy policyWithEntitlements:1];
    v36[1] = v15;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];

    v16 = [HMDConfigurationMessagePolicy policyWithOperationTypes:4];
    v35[0] = v16;
    v17 = [HMDXPCMessagePolicy policyWithEntitlements:1];
    v35[1] = v17;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];

    v13 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v34 = v13;
    v14 = &v34;
  }

  v18 = [HMDXPCMessagePolicy policyWithEntitlements:v7];
  v14[1] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  v20 = [(HMDActionSet *)self home];
  v21 = [v20 administratorHandler];
  [v21 registerForMessage:@"kAddActionRequestKey" receiver:self policies:v9 selector:sel__handleAddActionRequest_];

  v22 = [v20 administratorHandler];
  [v22 registerForMessage:@"kRemoveActionRequestKey" receiver:self policies:v12 selector:sel__handleRemoveActionRequest_];

  v23 = [v20 administratorHandler];
  [v23 registerForMessage:@"kReplaceActionValueKey" receiver:self policies:v19 selector:sel__handleUpdateActionRequest_];

  v24 = [v20 administratorHandler];
  v25 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v33[0] = v25;
  v26 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v33[1] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  [v24 registerForMessage:@"HMUpdateActionSetFromBuilderMessage" receiver:self policies:v27 selector:sel__handleUpdateActionSet_];

  v28 = [(HMDActionSet *)self type];
  v29 = [v28 isEqualToString:v32];

  if ((v29 & 1) == 0)
  {
    v30 = [v20 administratorHandler];
    [v30 registerForMessage:*MEMORY[0x277CD2538] receiver:self policies:v19 selector:sel__handleRenameRequest_];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (id)actionWithUUID:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(HMDActionSet *)self actions];
    v6 = [v5 hmf_firstObjectWithUUID:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)invalidate
{
  v3 = [(HMDActionSet *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__HMDActionSet_invalidate__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __26__HMDActionSet_invalidate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) actions];
  v3 = [v2 count];

  if (v3)
  {
    [*(a1 + 32) _removeDonatedIntent];
  }

  [*(a1 + 32) removeAllActions];
  v4 = *(a1 + 32);

  return [v4 setMsgDispatcher:0];
}

- (void)handleRemovalOfAccessory:(id)a3 transaction:(id)a4
{
  v133 = *MEMORY[0x277D85DE8];
  v101 = a3;
  v97 = a4;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v104 = self;
  obj = [(HMDActionSet *)self actions];
  v6 = [obj countByEnumeratingWithState:&v120 objects:v132 count:16];
  if (v6)
  {
    v8 = v6;
    v103 = *v121;
    *&v7 = 138543618;
    v95 = v7;
    do
    {
      v9 = 0;
      v98 = v8;
      do
      {
        if (*v121 != v103)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v120 + 1) + 8 * v9);
        v11 = [v10 type];
        if (v11 <= 2)
        {
          if (!v11)
          {
            v58 = v10;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v66 = v58;
            }

            else
            {
              v66 = 0;
            }

            v60 = v66;

            if (v60)
            {
              v67 = [v101 uuid];
              v68 = [v60 accessoryUUID];
              v69 = [v67 isEqual:v68];

              if (v69)
              {
LABEL_76:
                [(HMDActionSet *)v104 _handleRemovalOfAction:v58 transaction:v97];
              }

LABEL_90:

              goto LABEL_97;
            }

            v81 = objc_autoreleasePoolPush();
            v82 = v104;
            v83 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
            {
              v87 = HMFGetLogIdentifier();
              v88 = HMActionTypeAsString();
              *buf = 138543874;
              v127 = v87;
              v128 = 2112;
              v129 = v58;
              v130 = 2112;
              v131 = v88;
              _os_log_impl(&dword_229538000, v83, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);

              v8 = v98;
            }

LABEL_89:

            objc_autoreleasePoolPop(v81);
            goto LABEL_90;
          }

          if (v11 != 1)
          {
            goto LABEL_97;
          }
        }

        else
        {
          if (v11 == 3)
          {
            v45 = v10;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v46 = v45;
            }

            else
            {
              v46 = 0;
            }

            v47 = v46;

            if (v47)
            {
              v48 = v9;
              v49 = v101;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v50 = v49;
              }

              else
              {
                v50 = 0;
              }

              v51 = v50;

              v52 = [v51 lightProfiles];
              v110[0] = MEMORY[0x277D85DD0];
              v110[1] = 3221225472;
              v110[2] = __53__HMDActionSet_handleRemovalOfAccessory_transaction___block_invoke;
              v110[3] = &unk_2786782C8;
              v111 = v47;
              v53 = [v52 na_firstObjectPassingTest:v110];

              v9 = v48;
              if (v53)
              {
                v54 = objc_autoreleasePoolPush();
                v55 = v104;
                v56 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
                {
                  v57 = HMFGetLogIdentifier();
                  *buf = v95;
                  v127 = v57;
                  v128 = 2112;
                  v129 = v53;
                  _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_INFO, "%{public}@Removing natural lighting action for light profile: %@", buf, 0x16u);

                  v9 = v48;
                }

                objc_autoreleasePoolPop(v54);
                [(HMDActionSet *)v55 _handleRemovalOfAction:v45 transaction:v97];
                v8 = v98;
              }
            }

            else
            {
              v75 = objc_autoreleasePoolPush();
              v76 = v104;
              v77 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
              {
                HMFGetLogIdentifier();
                v79 = v78 = v9;
                v80 = HMActionTypeAsString();
                *buf = 138543874;
                v127 = v79;
                v128 = 2112;
                v129 = v45;
                v130 = 2112;
                v131 = v80;
                _os_log_impl(&dword_229538000, v77, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);

                v9 = v78;
              }

              objc_autoreleasePoolPop(v75);
            }

            goto LABEL_97;
          }

          if (v11 == 4)
          {
            v58 = v10;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v59 = v58;
            }

            else
            {
              v59 = 0;
            }

            v60 = v59;

            if (v60)
            {
              [v60 accessory];
              v62 = v61 = v9;
              v63 = [v62 uuid];
              v64 = [v101 uuid];
              v65 = [v63 hmf_isEqualToUUID:v64];

              v9 = v61;
              if (v65)
              {
                goto LABEL_76;
              }

              goto LABEL_90;
            }

            v81 = objc_autoreleasePoolPush();
            v82 = v104;
            v83 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v85 = v84 = v9;
              v86 = HMActionTypeAsString();
              *buf = 138543874;
              v127 = v85;
              v128 = 2112;
              v129 = v58;
              v130 = 2112;
              v131 = v86;
              _os_log_impl(&dword_229538000, v83, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);

              v9 = v84;
            }

            goto LABEL_89;
          }

          if (v11 != 5)
          {
            goto LABEL_97;
          }

          v12 = +[HMDCoreData featuresDataSource];
          v13 = [v12 isRVCEnabled];

          if (v13)
          {
            v14 = v10;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = v14;
            }

            else
            {
              v15 = 0;
            }

            v16 = v15;

            if (!v16)
            {
              v89 = objc_autoreleasePoolPush();
              v90 = v104;
              v91 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
              {
                v92 = HMFGetLogIdentifier();
                v93 = HMActionTypeAsString();
                *buf = 138543874;
                v127 = v92;
                v128 = 2112;
                v129 = v14;
                v130 = 2112;
                v131 = v93;
                _os_log_impl(&dword_229538000, v91, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);

                v8 = v98;
              }

              objc_autoreleasePoolPop(v89);
              goto LABEL_97;
            }

            v17 = [v101 uuid];
            v18 = [v16 accessory];
            v19 = [v18 uuid];
            v20 = [v17 isEqual:v19];

            if (v20)
            {
              [(HMDActionSet *)v104 _handleRemovalOfAction:v14 transaction:v97];
            }

            v8 = v98;
          }
        }

        v21 = v10;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }

        v23 = v22;
        v99 = v21;

        v102 = v23;
        if (v23)
        {
          v24 = [v23 mediaProfiles];
          v25 = [v24 mutableCopy];

          v118 = 0u;
          v119 = 0u;
          v116 = 0u;
          v117 = 0u;
          v26 = [v101 accessoryProfiles];
          v109 = [v26 countByEnumeratingWithState:&v116 objects:v125 count:16];
          if (v109)
          {
            v96 = v9;
            v105 = 0;
            v107 = v25;
            v108 = *v117;
            v106 = v26;
            do
            {
              for (i = 0; i != v109; ++i)
              {
                if (*v117 != v108)
                {
                  objc_enumerationMutation(v26);
                }

                v28 = *(*(&v116 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v29 = v28;
                }

                else
                {
                  v29 = 0;
                }

                v30 = v29;

                if (v30)
                {
                  v114 = 0u;
                  v115 = 0u;
                  v112 = 0u;
                  v113 = 0u;
                  v31 = v25;
                  v32 = [v31 countByEnumeratingWithState:&v112 objects:v124 count:16];
                  if (v32)
                  {
                    v33 = v32;
                    v34 = *v113;
                    while (2)
                    {
                      for (j = 0; j != v33; ++j)
                      {
                        if (*v113 != v34)
                        {
                          objc_enumerationMutation(v31);
                        }

                        v36 = *(*(&v112 + 1) + 8 * j);
                        v37 = [v36 uniqueIdentifier];
                        v38 = [v30 uniqueIdentifier];
                        v39 = [v37 isEqual:v38];

                        if (v39)
                        {
                          [v31 removeObject:v36];
                          v105 = 1;
                          goto LABEL_43;
                        }
                      }

                      v33 = [v31 countByEnumeratingWithState:&v112 objects:v124 count:16];
                      if (v33)
                      {
                        continue;
                      }

                      break;
                    }

LABEL_43:
                    v26 = v106;
                    v25 = v107;
                  }
                }

                else
                {
                  v40 = objc_autoreleasePoolPush();
                  v41 = v104;
                  v42 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
                  {
                    v43 = HMFGetLogIdentifier();
                    *buf = 138543362;
                    v127 = v43;
                    _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_DEBUG, "%{public}@Accessory Media Profile is NIL", buf, 0xCu);
                  }

                  objc_autoreleasePoolPop(v40);
                }
              }

              v109 = [v26 countByEnumeratingWithState:&v116 objects:v125 count:16];
            }

            while (v109);

            v8 = v98;
            v9 = v96;
            if (v105)
            {
              if ([v25 count])
              {
                v44 = [v102 modelObjectWithUpdatedMediaProfiles:v25];
                [v97 add:v44];
              }

              else
              {
                [(HMDActionSet *)v104 _handleRemovalOfAction:v99 transaction:v97];
              }
            }
          }

          else
          {
          }
        }

        else
        {
          v70 = objc_autoreleasePoolPush();
          v71 = v104;
          v72 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
          {
            v73 = HMFGetLogIdentifier();
            v74 = HMActionTypeAsString();
            *buf = 138543874;
            v127 = v73;
            v128 = 2112;
            v129 = v99;
            v130 = 2112;
            v131 = v74;
            _os_log_impl(&dword_229538000, v72, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v70);
        }

LABEL_97:
        ++v9;
      }

      while (v9 != v8);
      v8 = [obj countByEnumeratingWithState:&v120 objects:v132 count:16];
    }

    while (v8);
  }

  v94 = *MEMORY[0x277D85DE8];
}

uint64_t __53__HMDActionSet_handleRemovalOfAccessory_transaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) lightProfileUUID];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x277D0F820]);
  v4 = [(HMDActionSet *)self messageTargetUUID];
  v5 = [v3 initWithTarget:v4];

  return v5;
}

- (void)_encodeWithCoder:(id)a3
{
  v87 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDActionSet *)self home];
  [v4 encodeConditionalObject:v5 forKey:@"home"];
  v6 = [(HMDActionSet *)self uuid];
  v7 = [v6 UUIDString];
  [v4 encodeObject:v7 forKey:@"actionSetUUID"];

  v8 = [v4 hmd_isForXPCTransport];
  v9 = [v4 hmd_isForXPCTransportEntitledForSPIAccess];
  v10 = [v4 hmd_homeManagerOptions];
  v67 = self;
  if (!v8)
  {
    v60 = v5;
    v62 = v4;
    v13 = [MEMORY[0x277CBEB18] array];
    obj = [MEMORY[0x277CBEB18] array];
    [MEMORY[0x277CBEB18] array];
    v15 = v14 = self;
    v16 = [MEMORY[0x277CBEB18] array];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v17 = [(HMDActionSet *)v14 actions];
    v18 = [v17 countByEnumeratingWithState:&v70 objects:v79 count:16];
    if (!v18)
    {
LABEL_28:

      v12 = v13;
      v4 = v62;
      [v62 encodeObject:v12 forKey:@"actionSetActions"];
      [v62 encodeObject:obj forKey:@"HM.actionSetMediaPlaybackActionsCodingKey"];
      [v62 encodeObject:v15 forKey:@"HM.actions.3"];
      [v62 encodeObject:v16 forKey:@"HM.actions.4"];

      v5 = v60;
      self = v67;
      v8 = 0;
      goto LABEL_69;
    }

    v19 = v18;
    v20 = *v71;
    v65 = v16;
LABEL_6:
    v21 = 0;
    while (1)
    {
      if (*v71 != v20)
      {
        objc_enumerationMutation(v17);
      }

      v22 = *(*(&v70 + 1) + 8 * v21);
      v23 = [v22 type];
      if (v23 > 2)
      {
        if (v23 != 3 && v23 != 4)
        {
          if (v23 == 5)
          {
            v24 = objc_autoreleasePoolPush();
            v25 = v67;
            v26 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v28 = v27 = v13;
              *buf = 138543362;
              v81 = v28;
              _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Attempting to encode an action only available in HH2", buf, 0xCu);

              v13 = v27;
              v16 = v65;
            }

            objc_autoreleasePoolPop(v24);
          }

          goto LABEL_26;
        }

        v29 = v16;
        goto LABEL_25;
      }

      if (v23)
      {
        if (v23 != 1)
        {
          if (v23 != 2)
          {
            goto LABEL_26;
          }

          goto LABEL_24;
        }

        v30 = obj;
      }

      else
      {
        v30 = v13;
      }

      [v30 addObject:v22];
LABEL_24:
      v29 = v15;
LABEL_25:
      [v29 addObject:v22];
LABEL_26:
      if (v19 == ++v21)
      {
        v19 = [v17 countByEnumeratingWithState:&v70 objects:v79 count:16];
        if (!v19)
        {
          goto LABEL_28;
        }

        goto LABEL_6;
      }
    }
  }

  if ((((v10 & 0x400) != 0) & v9) == 1)
  {
    v11 = [(HMDActionSet *)self actions];
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __33__HMDActionSet__encodeWithCoder___block_invoke;
    v78[3] = &unk_27867C048;
    v78[4] = self;
    v12 = [v11 na_filter:v78];

    goto LABEL_68;
  }

  v59 = v8;
  v61 = v5;
  v63 = v4;
  v31 = MEMORY[0x277CBEB18];
  v32 = [(HMDActionSet *)self actions];
  v33 = [v31 arrayWithCapacity:{objc_msgSend(v32, "count")}];

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obja = [(HMDActionSet *)self actions];
  v34 = [obja countByEnumeratingWithState:&v74 objects:v86 count:16];
  if (!v34)
  {
    goto LABEL_67;
  }

  v35 = v34;
  v36 = *v75;
  v66 = v33;
  do
  {
    for (i = 0; i != v35; ++i)
    {
      if (*v75 != v36)
      {
        objc_enumerationMutation(obja);
      }

      v38 = *(*(&v74 + 1) + 8 * i);
      v39 = [v38 type];
      if (v39 <= 2)
      {
        if (v39)
        {
          if (v39 == 1)
          {
            goto LABEL_51;
          }

          if (v39 != 2)
          {
            continue;
          }

          v40 = v38;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v41 = v40;
          }

          else
          {
            v41 = 0;
          }

          v42 = v41;

          if (v42)
          {
            if (!v9)
            {
              v43 = [v42 copy];
              v44 = [v43 removeShortcut];

              [v33 addObject:v44];
LABEL_64:

              continue;
            }

LABEL_58:
            [v33 addObject:v40];
            goto LABEL_64;
          }

          v47 = objc_autoreleasePoolPush();
          v48 = self;
          v49 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_62;
          }
        }

        else
        {
          v40 = v38;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v46 = v40;
          }

          else
          {
            v46 = 0;
          }

          v42 = v46;

          if (v42)
          {
            if (![(HMDActionSet *)self _isValidCharacteristicWriteAction:v42])
            {
              goto LABEL_64;
            }

            goto LABEL_58;
          }

          v47 = objc_autoreleasePoolPush();
          v48 = self;
          v49 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
LABEL_62:
            HMFGetLogIdentifier();
            v50 = v64 = v47;
            v51 = HMActionTypeAsString();
            *buf = 138543874;
            v81 = v50;
            v82 = 2112;
            v83 = v40;
            v84 = 2112;
            v85 = v51;
            _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);

            self = v67;
            v47 = v64;
          }
        }

        objc_autoreleasePoolPop(v47);
        v33 = v66;
        goto LABEL_64;
      }

      if (v39 == 3 || v39 == 4)
      {
LABEL_51:
        if (!v9)
        {
          continue;
        }

LABEL_52:
        [v33 addObject:v38];
        continue;
      }

      if (v39 == 5 && v9 != 0)
      {
        goto LABEL_52;
      }
    }

    v35 = [obja countByEnumeratingWithState:&v74 objects:v86 count:16];
  }

  while (v35);
LABEL_67:

  v12 = [v33 copy];
  v5 = v61;
  v4 = v63;
  v8 = v59;
LABEL_68:
  [v4 encodeObject:v12 forKey:@"actionSetActions"];
LABEL_69:

  v52 = [(HMDActionSet *)self executionMessage];
  [v4 encodeBool:v52 != 0 forKey:@"HM.actionSetExecutionInProgress"];

  if ((v8 & 1) != 0 || [v4 hmd_isForLocalStore])
  {
    v53 = [(HMDActionSet *)self lastExecutionDate];
    [v4 encodeObject:v53 forKey:@"HM.actionSetLastExecutionDate"];
  }

  if (([v4 hmd_isForRemoteGatewayCoder] & 1) == 0)
  {
    v54 = [(HMDActionSet *)self name];
    [v4 encodeObject:v54 forKey:@"actionSetName"];

    v55 = [(HMDActionSet *)self type];
    [v4 encodeObject:v55 forKey:@"actionSetType"];
  }

  v56 = [(HMDActionSet *)self appData];
  v57 = v56;
  if (v8)
  {
    [v56 encodeForXPCTransportWithCoder:v4 key:@"HM.appData"];
  }

  else
  {
    [v4 encodeObject:v56 forKey:@"HM.appDataRepository"];
  }

  v58 = *MEMORY[0x277D85DE8];
}

uint64_t __33__HMDActionSet__encodeWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type])
  {
    v4 = 1;
  }

  else
  {
    v5 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v4 = [*(a1 + 32) _isValidCharacteristicWriteAction:v7];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = objc_autoreleasePoolPush();
  [(HMDActionSet *)self _encodeWithCoder:v5];
  objc_autoreleasePoolPop(v4);
}

- (BOOL)_isValidCharacteristicWriteAction:(id)a3
{
  v3 = [a3 characteristic];
  v4 = v3 != 0;

  return v4;
}

- (id)_initWithCoder:(id)a3
{
  v40[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"home"];
  v6 = [v4 hm_decodeAndCacheTruncatedNameStringForKey:@"actionSetName"];
  v7 = [v4 hm_decodeAndCacheStringForKey:@"actionSetType"];
  if (![v7 length])
  {
    v8 = *MEMORY[0x277CCF1A8];

    v7 = v8;
  }

  if ([MEMORY[0x277CD1800] isBuiltinActionSetType:self->_type])
  {
    v9 = MEMORY[0x277CCAD78];
    WeakRetained = objc_loadWeakRetained(&self->_home);
    v11 = [WeakRetained uuid];
    v40[0] = self->_type;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
    v13 = [v9 hm_deriveUUIDFromBaseUUID:v11 identifierSalt:0 withSalts:v12];
  }

  else
  {
    WeakRetained = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionSetUUID"];
    v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:WeakRetained];
  }

  v14 = [(HMDActionSet *)self initWithName:v6 uuid:v13 type:v7 home:v5 queue:0];
  if (v14)
  {
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.appDataRepository"];
    appData = v14->_appData;
    v14->_appData = v15;

    [(HMDApplicationData *)v14->_appData updateParentUUIDIfNil:v14->_uuid];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.actionSetLastExecutionDate"];
    lastExecutionDate = v14->_lastExecutionDate;
    v14->_lastExecutionDate = v17;

    v19 = +[HMDActionSet allowedActionClasses];
    if ([v4 containsValueForKey:@"HM.actions.3"])
    {
      v34 = v6;
      currentActions = v14->_currentActions;
      v21 = [v4 decodeObjectOfClasses:v19 forKey:@"HM.actions.3"];
      [(NSMutableArray *)currentActions setArray:v21];

      v22 = [v4 decodeObjectOfClasses:v19 forKey:@"HM.actions.4"];
      v23 = v22;
      v24 = MEMORY[0x277CBEBF8];
      if (v22)
      {
        v24 = v22;
      }

      v25 = v24;

      [(NSMutableArray *)v14->_currentActions addObjectsFromArray:v25];
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v26 = v14->_currentActions;
      v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v27)
      {
        v28 = v27;
        v33 = v5;
        v29 = *v36;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v36 != v29)
            {
              objc_enumerationMutation(v26);
            }

            [*(*(&v35 + 1) + 8 * i) updateActionSetIfNil:{v14, v33}];
          }

          v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v28);
        v5 = v33;
      }

      v6 = v34;
    }

    else
    {
      v25 = [v4 decodeObjectOfClasses:v19 forKey:@"actionSetActions"];
      [(NSMutableArray *)v14->_currentActions setArray:v25];
      v26 = [v4 decodeObjectOfClasses:v19 forKey:@"HM.actionSetMediaPlaybackActionsCodingKey"];
      [(NSMutableArray *)v14->_currentActions addObjectsFromArray:v26];
    }
  }

  v31 = *MEMORY[0x277D85DE8];
  return v14;
}

- (HMDActionSet)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(HMDActionSet *)self _initWithCoder:v4];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (BOOL)containsShortcutActions
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(HMDActionSet *)self actions];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) type] == 2)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)containsMediaPlaybackActions
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(HMDActionSet *)self actions];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) type] == 1)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)containsUnsecuringAction
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HMDActionSet *)self actions];
  v4 = [v3 indexOfObjectPassingTest:&__block_literal_global_87];

  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMFBooleanToString();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Does this actionSet contain any unsecuring action : %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  result = v4 != 0x7FFFFFFFFFFFFFFFLL;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __40__HMDActionSet_containsUnsecuringAction__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isUnsecuringAction];
  if (result)
  {
    *a4 = 1;
  }

  return result;
}

- (BOOL)containsSecureCharacteristic
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HMDActionSet *)self actions];
  v4 = [v3 indexOfObjectPassingTest:&__block_literal_global_31507];

  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMFBooleanToString();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Does this actionSet contain any Secure class accessory : %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  result = v4 != 0x7FFFFFFFFFFFFFFFLL;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __44__HMDActionSet_containsSecureCharacteristic__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 requiresDeviceUnlock];
  if (result)
  {
    *a4 = 1;
  }

  return result;
}

- (BOOL)_fixUpActions
{
  v74 = *MEMORY[0x277D85DE8];
  v2 = [(HMDActionSet *)self actions];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v57 objects:v73 count:16];
  if (v5)
  {
    v7 = v5;
    v51 = 0;
    v8 = *v58;
    *&v6 = 138544130;
    v48 = v6;
    v54 = v3;
    v55 = v4;
    v49 = *v58;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v58 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v57 + 1) + 8 * i);
        v11 = [v10 type];
        if ((v11 - 2) < 4)
        {
          [v3 addObject:v10];
          continue;
        }

        if (v11 == 1)
        {
          v17 = v10;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = v17;
          }

          else
          {
            v18 = 0;
          }

          v14 = v18;

          if (v14)
          {
            v19 = [v14 mediaProfiles];
            v20 = [v19 count];

            if (v20)
            {
              [v3 addObject:v14];
            }

            else
            {
              v39 = objc_autoreleasePoolPush();
              v40 = self;
              v41 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                HMFGetLogIdentifier();
                v42 = v53 = v39;
                v43 = [(HMDActionSet *)v40 name];
                v44 = [(HMDActionSet *)v40 uuid];
                v45 = [v14 uuid];
                *buf = v48;
                v62 = v42;
                v63 = 2112;
                v64 = v43;
                v65 = 2112;
                v66 = v44;
                v67 = 2112;
                v68 = v45;
                _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@ActionSet %@/%@: Removing media action %@ since there are no media profiles", buf, 0x2Au);

                v4 = v55;
                v39 = v53;
              }

              objc_autoreleasePoolPop(v39);
              v51 = 1;
              v3 = v54;
            }
          }

          else
          {
            v29 = objc_autoreleasePoolPush();
            v30 = self;
            v31 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              v32 = HMFGetLogIdentifier();
              v33 = HMActionTypeAsString();
              *buf = 138543874;
              v62 = v32;
              v63 = 2112;
              v64 = v17;
              v65 = 2112;
              v66 = v33;
              _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);

              v3 = v54;
            }

            objc_autoreleasePoolPop(v29);
            v4 = v55;
          }
        }

        else
        {
          if (v11)
          {
            continue;
          }

          v12 = v10;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }

          v14 = v13;

          if (v14)
          {
            v15 = [v14 characteristic];
            if (v15 && ([v14 targetValue], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
            {
              [v3 addObject:v14];
            }

            else
            {
              v21 = objc_autoreleasePoolPush();
              v22 = self;
              v23 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v50 = HMFGetLogIdentifier();
                v24 = [(HMDActionSet *)v22 name];
                v25 = [(HMDActionSet *)v22 uuid];
                [v14 uuid];
                v26 = v52 = v21;
                v27 = [v14 targetValue];
                *buf = 138544642;
                v62 = v50;
                v63 = 2112;
                v64 = v24;
                v65 = 2112;
                v66 = v25;
                v67 = 2112;
                v68 = v26;
                v69 = 2112;
                v70 = v15;
                v71 = 2112;
                v72 = v27;
                v28 = v27;
                _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ActionSet %@/%@: Removing write action %@/%@ since the characteristic %@ or value is nil", buf, 0x3Eu);

                v21 = v52;
                v8 = v49;
              }

              objc_autoreleasePoolPop(v21);
              v51 = 1;
              v3 = v54;
              v4 = v55;
            }
          }

          else
          {
            v34 = objc_autoreleasePoolPush();
            v35 = self;
            v36 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              v37 = HMFGetLogIdentifier();
              v38 = HMActionTypeAsString();
              *buf = 138543874;
              v62 = v37;
              v63 = 2112;
              v64 = v12;
              v65 = 2112;
              v66 = v38;
              _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);

              v4 = v55;
              v3 = v54;
            }

            objc_autoreleasePoolPop(v34);
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v57 objects:v73 count:16];
      if (!v7)
      {
        goto LABEL_41;
      }
    }
  }

  v51 = 0;
LABEL_41:

  [(HMDActionSet *)self setActions:v3];
  v46 = *MEMORY[0x277D85DE8];
  return v51 & 1;
}

- (NSString)serializedIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDActionSet *)self home];
  v5 = [v4 uuid];
  v6 = [v5 UUIDString];
  v7 = [(HMDActionSet *)self uuid];
  v8 = [v7 UUIDString];
  v9 = [v3 stringWithFormat:@"%@/%@", v6, v8];

  return v9;
}

- (NSArray)actions
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_currentActions copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)removeAllActions
{
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_currentActions removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);

  [(HMDActionSet *)self __handleActionsUpdated];
}

- (void)removeAction:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_currentActions removeObject:v4];
  os_unfair_lock_unlock(&self->_lock);
  [(HMDActionSet *)self __handleActionsUpdated];
}

- (void)addAction:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_currentActions addObject:v4];
  os_unfair_lock_unlock(&self->_lock);
  [(HMDActionSet *)self __handleActionsUpdated];
}

- (void)__handleActionsUpdated
{
  v27 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_currentActions count];
  v4 = [(NSMutableArray *)self->_currentActions count];
  os_unfair_lock_unlock(&self->_lock);
  if (v4)
  {
    if (v3 != 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Last action removed - removing donated intents", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDActionSet *)v6 _removeDonatedIntent];
    v9 = objc_autoreleasePoolPush();
    v10 = v6;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v12;
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Sending notification for now empty action set %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [(HMDActionSet *)v10 notificationCenter];
    v14 = [(HMDActionSet *)v10 home];
    v23 = @"HMDActionSetNotificationKey";
    *buf = v10;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v23 count:1];
    [v13 postNotificationName:@"HMDHomeActionSetEmptiedNotification" object:v14 userInfo:v15];
  }

  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v19;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@ActionSet empty/non-empty edges - re-evaluating triggers in the home", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v16);
  v20 = [(HMDActionSet *)v17 home];
  [v20 reEvaluateTriggers];

LABEL_12:
  v21 = [(HMDActionSet *)self notificationCenter];
  [v21 postNotificationName:@"HMDActionSetActionsUpdatedNotification" object:self userInfo:0];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)setActions:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_currentActions setArray:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)configure:(id)a3 messageDispatcher:(id)a4 queue:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(HMDActionSet *)self setHome:v8];
  [(HMDActionSet *)self setMsgDispatcher:v9];
  [(HMDActionSet *)self setWorkQueue:v10];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [(HMDActionSet *)self actions];
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v19 + 1) + 8 * v15++) configureWithHome:v8];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v16 = [(HMDActionSet *)self _fixUpActions];
  [(HMDActionSet *)self _registerForMessages];

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)auditActionsForAccessory:(id)a3 transaction:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v31 = self;
  v8 = [(HMDActionSet *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v30 = v11;
  if (v11)
  {
    v27 = v7;
    v12 = [MEMORY[0x277CBEB18] array];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = [(HMDActionSet *)v31 actions];
    v14 = [v13 countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v33;
      v28 = v9;
      v29 = v12;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v32 + 1) + 8 * i);
          if ([v18 isStaleWithAccessory:v9])
          {
            v19 = objc_autoreleasePoolPush();
            v20 = v31;
            v21 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v22 = HMFGetLogIdentifier();
              [v30 shortDescription];
              v23 = v16;
              v25 = v24 = v13;
              *buf = 138543874;
              v37 = v22;
              v38 = 2112;
              v39 = v25;
              v40 = 2112;
              v41 = v18;
              _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Audit: Associated characteristic(s) no longer exists on accessory %@ for action %@", buf, 0x20u);

              v13 = v24;
              v16 = v23;

              v9 = v28;
              v12 = v29;
            }

            objc_autoreleasePoolPop(v19);
            [v12 addObject:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v32 objects:v42 count:16];
      }

      while (v15);
    }

    v7 = v27;
    if (([v12 hmf_isEmpty] & 1) == 0)
    {
      [(HMDActionSet *)v31 _handleRemovalOfActions:v12 transaction:v27];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovalOfService:(id)a3 transaction:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v23 = a4;
  v25 = [v6 accessory];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v22 = self;
  obj = [(HMDActionSet *)self actions];
  v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    v24 = v6;
    do
    {
      v10 = 0;
      do
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;

        if (v13)
        {
          v14 = [v13 serviceID];
          v15 = [v6 instanceID];
          if ([v14 isEqualToNumber:v15])
          {
            v16 = [v13 accessoryUUID];
            [v25 uuid];
            v17 = v8;
            v19 = v18 = v9;
            v20 = [v16 isEqual:v19];

            v9 = v18;
            v8 = v17;

            v6 = v24;
            if (v20)
            {
              [(HMDActionSet *)v22 _handleRemovalOfAction:v11 transaction:v23];
            }
          }

          else
          {
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)executeWithTriggerSource:(id)a3 captureCurrentState:(BOOL)a4 completionHandler:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(HMDActionSet *)self workQueue];

  if (v10)
  {
    v11 = [(HMDActionSet *)self workQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __79__HMDActionSet_executeWithTriggerSource_captureCurrentState_completionHandler___block_invoke;
    v20[3] = &unk_278685C18;
    v20[4] = self;
    v21 = v8;
    v22 = v9;
    v23 = a4;
    dispatch_async(v11, v20);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [(HMDActionSet *)v13 name];
      v17 = [(HMDActionSet *)v13 actions];
      *buf = 138543874;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      v28 = 2048;
      v29 = [v17 count];
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Work queue hasn't been configured, bailing out the execution for action set %@ with number of actions: %lu", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    if (v9)
    {
      v18 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      (*(v9 + 2))(v9, v18, 0);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __79__HMDActionSet_executeWithTriggerSource_captureCurrentState_completionHandler___block_invoke(uint64_t a1)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) name];
    *buf = 138543618;
    v27 = v5;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Execute triggered action set: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  if ([*(a1 + 40) triggerType] == 2)
  {
    v7 = 4;
  }

  else
  {
    v7 = 3;
  }

  v8 = MEMORY[0x277D0F848];
  v9 = [MEMORY[0x277D0F820] allMessageDestinations];
  v32[0] = @"sourceType";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  v33[0] = v10;
  v32[1] = @"triggerSourceUUID";
  v11 = [*(a1 + 40) uuid];
  v12 = [v11 UUIDString];
  v33[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v14 = [v8 messageWithName:@"triggerSourceInternalMessage" destination:v9 payload:v13];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __79__HMDActionSet_executeWithTriggerSource_captureCurrentState_completionHandler___block_invoke_77;
  v24[3] = &unk_2786818D0;
  v25 = *(a1 + 48);
  [v14 setResponseHandler:v24];
  v15 = objc_autoreleasePoolPush();
  v16 = *(a1 + 32);
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [*(a1 + 32) name];
    v20 = [*(a1 + 40) name];
    *buf = 138543874;
    v27 = v18;
    v28 = 2112;
    v29 = v19;
    v30 = 2112;
    v31 = v20;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Executing actionSet %@ due to trigger %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  v21 = *(a1 + 32);
  v22 = [v14 copy];
  [v21 _execute:v22 captureCurrentState:*(a1 + 56) writeRequestTuples:0];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_execute:(id)a3 activity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDActionSet *)self workQueue];
  dispatch_assert_queue_V2(v8);

  if ([v6 isRemote])
  {
    v9 = [(HMDActionSet *)self home];
    v10 = [v9 writeRequestTuplesFromMessage:v6 outUnhandledRequests:0];
  }

  else
  {
    v10 = 0;
  }

  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __34__HMDActionSet__execute_activity___block_invoke;
  v14[3] = &unk_278672000;
  objc_copyWeak(&v18, &location);
  v11 = v7;
  v15 = v11;
  v12 = v6;
  v16 = v12;
  v13 = v10;
  v17 = v13;
  [(HMDActionSet *)self isAccessValidForExecutionWithMessage:v12 completion:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __34__HMDActionSet__execute_activity___block_invoke(id *a1, char a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v8 = [WeakRetained workQueue];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __34__HMDActionSet__execute_activity___block_invoke_71;
      v23[3] = &unk_2786891E0;
      v23[4] = v7;
      v24 = a1[4];
      v25 = a1[5];
      v26 = a1[6];
      dispatch_async(v8, v23);
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = v7;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [a1[4] identifier];
        v21 = [v20 shortDescription];
        *buf = 138543618;
        v28 = v19;
        v29 = 2114;
        v30 = v21;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Access validation failed before executing the action set", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      [a1[5] respondWithError:v5];
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [a1[4] identifier];
      v13 = [v12 shortDescription];
      *buf = 138543618;
      v28 = v11;
      v29 = 2114;
      v30 = v13;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] HMDActionSet has been set to nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = a1[5];
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [v14 respondWithError:v15];
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __34__HMDActionSet__execute_activity___block_invoke_71(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) identifier];
    v7 = [v6 shortDescription];
    v8 = [*(a1 + 32) name];
    [*(a1 + 48) isEntitledForSPIAccess];
    v9 = HMFBooleanToString();
    v10 = [*(a1 + 48) clientIdentifier];
    v13 = 138544386;
    v14 = v5;
    v15 = 2114;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Executing actionSet %@ for message %@/%@", &v13, 0x34u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _execute:*(a1 + 48) captureCurrentState:0 writeRequestTuples:*(a1 + 56)];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)execute:(id)a3
{
  v5 = a3;
  v6 = objc_alloc(MEMORY[0x277D0F770]);
  v7 = MEMORY[0x277CCACA8];
  v8 = MEMORY[0x22AAD2510](self, a2);
  v9 = [v7 stringWithFormat:@"%@, %s:%ld", v8, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables/Sources/homed/Action Sets/HMDActionSet.m", 304];
  v15 = [v6 initWithName:v9];

  v10 = [(HMDActionSet *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__HMDActionSet_execute___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v13 = v5;
  v14 = v15;
  v11 = v5;
  dispatch_async(v10, block);

  __HMFActivityScopeLeave();
}

- (void)isAccessValidForExecutionWithMessage:(id)a3 completion:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 source];
  v9 = [(HMDActionSet *)self home];
  v10 = [v9 synchronouslyFetchIsCarPlayConnectedStatus];
  if (![v9 applyDeviceLockStatus:v6] || !-[HMDActionSet containsSecureCharacteristic](self, "containsSecureCharacteristic") || !-[HMDActionSet containsUnsecuringAction](self, "containsUnsecuringAction") && (v8 | 8) == 9)
  {
    goto LABEL_18;
  }

  if (v10 && [v9 isCarPlayAccessAllowedForActionSet:self withMessage:v6 fromSource:v8])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Access is allowed by CarPlay access rules for action set execution", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v7[2](v7, 1, 0);
    goto LABEL_25;
  }

  if ([v6 isEntitledForSPIAccess])
  {
    v15 = 1;
  }

  else
  {
    v15 = [v6 isInternal];
  }

  if (v8 == 1)
  {
    objc_initWeak(&location, self);
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v19;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Checking siri unlock access for siri triggered action set execution", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v20 = [v9 siriSecureAccessoryAccessController];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __64__HMDActionSet_isAccessValidForExecutionWithMessage_completion___block_invoke;
    v33[3] = &unk_278671FD8;
    objc_copyWeak(&v35, &location);
    v34 = v7;
    v36 = v15;
    [v20 isUnsecuringSiriActionAllowedWithCompletion:v33];

    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
    goto LABEL_25;
  }

  if (([v6 isEntitledForSecureAccess] & 1) == 0)
  {
    v29 = MEMORY[0x277CCA9B8];
    v30 = +[HMDDeviceCapabilities supportsDeviceLock];
    v31 = 10;
    if (v15)
    {
      v31 = 2003;
    }

    if (v30)
    {
      v32 = 82;
    }

    else
    {
      v32 = v31;
    }

    v21 = [v29 hmErrorWithCode:v32];
  }

  else
  {
LABEL_18:
    v21 = 0;
  }

  v22 = objc_autoreleasePoolPush();
  v23 = self;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = HMFGetLogIdentifier();
    if (v21)
    {
      v26 = @"denied";
    }

    else
    {
      v26 = @"allowed";
    }

    v27 = HMDRequestSourceAsString(v8);
    *buf = 138544130;
    v39 = v25;
    v40 = 2112;
    v41 = v26;
    v42 = 2112;
    v43 = v27;
    v44 = 2112;
    v45 = v21;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Access is %@ for action set execution from source: %@ for reason: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v22);
  (v7)[2](v7, v21 == 0, v21);

LABEL_25:
  v28 = *MEMORY[0x277D85DE8];
}

void __64__HMDActionSet_isAccessValidForExecutionWithMessage_completion___block_invoke(uint64_t a1, int a2)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = v8;
      v10 = @"denied";
      if (a2)
      {
        v10 = @"allowed";
      }

      v20 = 138543618;
      v21 = v8;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Access is %@ by siri watch unlock check for action set execution", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    if (a2)
    {
      v11 = 0;
    }

    else
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = *(a1 + 48);
      v16 = +[HMDDeviceCapabilities supportsDeviceLock];
      v17 = 10;
      if (v15)
      {
        v17 = 2003;
      }

      if (v16)
      {
        v18 = 82;
      }

      else
      {
        v18 = v17;
      }

      v11 = [v14 hmErrorWithCode:v18];
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    (*(v12 + 16))(v12, 0, v13);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)createPayload
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDActionSet *)self uuid];
  v5 = [v4 UUIDString];
  [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x277CD2050]];

  v6 = [(HMDActionSet *)self type];
  [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x277CD2048]];

  v7 = [(HMDActionSet *)self name];
  [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x277CD2040]];

  v8 = [(HMDActionSet *)self actions];
  v9 = [v8 valueForKey:@"dictionaryRepresentation"];
  [v3 setObject:v9 forKeyedSubscript:*MEMORY[0x277CD2030]];

  v10 = [v3 copy];

  return v10;
}

- (void)setName:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 hm_truncatedNameString];
  name = self->_name;
  self->_name = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)name
{
  os_unfair_lock_lock_with_options();
  v3 = self->_name;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v31 = MEMORY[0x277CCAB68];
  v30 = [(HMDActionSet *)self name];
  v33 = [(HMDActionSet *)self uuid];
  v5 = [v33 UUIDString];
  v32 = [(HMDActionSet *)self spiClientIdentifier];
  v6 = [v32 UUIDString];
  v7 = [(HMDActionSet *)self type];
  v8 = [(HMDActionSet *)self lastExecutionDate];
  v9 = [(HMDActionSet *)self actions];
  v10 = [v9 count];
  v11 = [(HMDActionSet *)self urlString];
  v12 = [v31 stringWithFormat:@"ActionSet name: %@, uuid: %@, spiClientIdentifier: %@, type: %@, lastExecutionDate: %@, numActions: %tu, assistantIdentifier: %@", v30, v5, v6, v7, v8, v10, v11];

  [v4 setObject:v12 forKeyedSubscript:*MEMORY[0x277D0F170]];
  v13 = [(HMDActionSet *)self appData];
  v14 = [v13 dumpStateWithPrivacyLevel:a3];
  [v4 setObject:v14 forKeyedSubscript:*MEMORY[0x277D0F050]];

  v15 = [(HMDActionSet *)self actions];
  v16 = [v15 copy];

  if ([v16 count])
  {
    v34 = v16;
    v36 = v12;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v38;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v38 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v37 + 1) + 8 * i);
          v23 = objc_autoreleasePoolPush();
          [v22 type];
          v24 = HMActionTypeAsString();
          v25 = [v4 objectForKeyedSubscript:v24];
          if (!v25)
          {
            v25 = [MEMORY[0x277CBEB18] array];
            [v4 setObject:v25 forKeyedSubscript:v24];
          }

          v26 = [v22 stateDump];
          [v25 addObject:v26];

          objc_autoreleasePoolPop(v23);
        }

        v19 = [v17 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v19);
    }

    v16 = v34;
    v12 = v36;
  }

  v27 = [v4 copy];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = [(HMDActionSet *)self name];
  v5 = [(HMDActionSet *)self uuid];
  v6 = [v5 UUIDString];
  v7 = [(HMDActionSet *)self spiClientIdentifier];
  v8 = [v7 UUIDString];
  v9 = [(HMDActionSet *)self type];
  v10 = [(HMDActionSet *)self lastExecutionDate];
  v11 = [(HMDActionSet *)self actions];
  v12 = [v3 stringWithFormat:@"ActionSet name: %@, uuid: %@, spiClientIdentifier: %@, type: %@, lastExecutionDate: %@, numActions: %tu", v4, v6, v8, v9, v10, objc_msgSend(v11, "count")];

  return v12;
}

- (void)dealloc
{
  v3 = [(HMDActionSet *)self msgDispatcher];
  [v3 deregisterReceiver:self];

  v4 = [(HMDActionSet *)self home];
  v5 = [v4 administratorHandler];
  [v5 deregisterReceiver:self];

  v6.receiver = self;
  v6.super_class = HMDActionSet;
  [(HMDActionSet *)&v6 dealloc];
}

- (HMDActionSet)initWithName:(id)a3 uuid:(id)a4 type:(id)a5 home:(id)a6 queue:(id)a7 notificationCenter:(id)a8
{
  v46[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v45.receiver = self;
  v45.super_class = HMDActionSet;
  v20 = [(HMDActionSet *)&v45 init];
  if (v20)
  {
    v43 = v19;
    v44 = v14;
    v21 = MEMORY[0x277D0F888];
    v22 = [v14 hm_truncatedNameString];
    v23 = [v21 hmf_cachedInstanceForString:v22];
    name = v20->_name;
    v20->_name = v23;

    v25 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:v16];
    type = v20->_type;
    v20->_type = v25;

    if (v16 && v17 && [MEMORY[0x277CD1800] isBuiltinActionSetType:v16])
    {
      v27 = MEMORY[0x277CCAD78];
      v28 = [v17 uuid];
      v46[0] = v16;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
      v30 = [v27 hm_deriveUUIDFromBaseUUID:v28 identifierSalt:0 withSalts:v29];
    }

    else
    {
      if (v15)
      {
        v31 = [v15 copy];
      }

      else
      {
        v31 = [MEMORY[0x277CCAD78] UUID];
      }

      v30 = v31;
    }

    v32 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSUUID:v30];
    uuid = v20->_uuid;
    v20->_uuid = v32;

    v34 = spiClientIdentifierForUUID(v20->_uuid);
    v35 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSUUID:v34];
    spiClientIdentifier = v20->_spiClientIdentifier;
    v20->_spiClientIdentifier = v35;

    objc_storeStrong(&v20->_workQueue, a7);
    objc_storeWeak(&v20->_home, v17);
    v37 = [v17 msgDispatcher];
    msgDispatcher = v20->_msgDispatcher;
    v20->_msgDispatcher = v37;

    v39 = [MEMORY[0x277CBEB18] array];
    currentActions = v20->_currentActions;
    v20->_currentActions = v39;

    v20->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v20->_notificationCenter, a8);
    if (v18)
    {
      [(HMDActionSet *)v20 _registerForMessages];
    }

    v19 = v43;
    v14 = v44;
  }

  v41 = *MEMORY[0x277D85DE8];
  return v20;
}

- (HMDActionSet)initWithName:(id)a3 uuid:(id)a4 type:(id)a5 home:(id)a6 queue:(id)a7
{
  v12 = MEMORY[0x277CCAB98];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [v12 defaultCenter];
  v19 = [(HMDActionSet *)self initWithName:v17 uuid:v16 type:v15 home:v14 queue:v13 notificationCenter:v18];

  return v19;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t234 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t234, &__block_literal_global_196_31562);
  }

  v3 = logCategory__hmf_once_v235;

  return v3;
}

void __27__HMDActionSet_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v235;
  logCategory__hmf_once_v235 = v1;
}

+ (id)allowedActionClasses
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:7];
  v4 = [v2 setWithArray:{v3, v7, v8, v9, v10, v11, v12}];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_getActionsForActionSetObject
{
  v2 = self;
  v117 = *MEMORY[0x277D85DE8];
  v3 = [(HMDActionSet *)self actions];
  v4 = [v3 count];

  if (!v4)
  {
    goto LABEL_67;
  }

  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v6 = [(HMDActionSet *)v2 actions];
  v94 = [v5 initWithCapacity:{objc_msgSend(v6, "count")}];

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v7 = [(HMDActionSet *)v2 actions];
  v8 = [v7 countByEnumeratingWithState:&v105 objects:v116 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v106;
    v100 = *MEMORY[0x277D47EA8];
    v90 = *MEMORY[0x277D47EC8];
    v99 = *MEMORY[0x277D48000];
    *&v9 = 138543618;
    v89 = v9;
    v95 = *v106;
    v91 = v7;
    v92 = v2;
    do
    {
      v12 = 0;
      v96 = v10;
      do
      {
        if (*v106 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v105 + 1) + 8 * v12);
        v14 = [v13 type];
        if (v14 > 2)
        {
          if (v14 == 3)
          {
            v98 = v12;
            v51 = v13;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v52 = v51;
            }

            else
            {
              v52 = 0;
            }

            v37 = v52;

            if (v37)
            {
              v53 = [v37 lightProfile];
              v54 = v53;
              if (v53)
              {
                v55 = [v53 service];
                v56 = objc_alloc_init(MEMORY[0x277D47328]);
                [v56 setActionType:v100];
                v57 = objc_alloc_init(MEMORY[0x277D47340]);
                [v57 setValue:{objc_msgSend(v37, "isNaturalLightingEnabled")}];
                [v56 setValue:v57];
                [v56 setAttribute:v90];
                v58 = objc_alloc_init(MEMORY[0x277D47378]);
                v59 = MEMORY[0x277CBEBC0];
                v60 = v7;
                v61 = v2;
                v62 = v55;
                v63 = [v55 urlString];
                v64 = [v59 URLWithString:v63];
                [v58 setEntityId:v64];

                v11 = v95;
                [v58 setAction:v56];
                [v94 addObject:v58];

                v2 = v61;
                v7 = v60;
              }

              else
              {
                v82 = objc_autoreleasePoolPush();
                v83 = v2;
                v84 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
                {
                  v85 = HMFGetLogIdentifier();
                  *buf = v89;
                  v111 = v85;
                  v112 = 2112;
                  v113 = v37;
                  _os_log_impl(&dword_229538000, v84, OS_LOG_TYPE_ERROR, "%{public}@Natural lighting action doesn't have a light profile %@", buf, 0x16u);

                  v11 = v95;
                }

                objc_autoreleasePoolPop(v82);
              }

              v10 = v96;
              goto LABEL_61;
            }

            v75 = objc_autoreleasePoolPush();
            v76 = v2;
            v77 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              v80 = HMFGetLogIdentifier();
              v81 = HMActionTypeAsString();
              *buf = 138543874;
              v111 = v80;
              v112 = 2112;
              v113 = v51;
              v114 = 2112;
              v115 = v81;
              _os_log_impl(&dword_229538000, v77, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);

              v10 = v96;
              v11 = v95;
            }

LABEL_56:

            objc_autoreleasePoolPop(v75);
            goto LABEL_61;
          }

          if (v14 == 4)
          {
            v32 = v13;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v33 = v32;
            }

            else
            {
              v33 = 0;
            }

            v34 = v33;

            if (v34)
            {
            }

            else
            {
              v70 = objc_autoreleasePoolPush();
              v71 = v2;
              v72 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
              {
                v73 = HMFGetLogIdentifier();
                v74 = HMActionTypeAsString();
                *buf = 138543874;
                v111 = v73;
                v112 = 2112;
                v113 = v32;
                v114 = 2112;
                v115 = v74;
                _os_log_impl(&dword_229538000, v72, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);

                v11 = v95;
              }

              objc_autoreleasePoolPop(v70);
            }
          }
        }

        else
        {
          if (!v14)
          {
            v98 = v12;
            v35 = v13;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v36 = v35;
            }

            else
            {
              v36 = 0;
            }

            v37 = v36;

            if (!v37)
            {
              v75 = objc_autoreleasePoolPush();
              v76 = v2;
              v77 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
              {
                v78 = HMFGetLogIdentifier();
                v79 = HMActionTypeAsString();
                *buf = 138543874;
                v111 = v78;
                v112 = 2112;
                v113 = v35;
                v114 = 2112;
                v115 = v79;
                _os_log_impl(&dword_229538000, v77, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);

                v11 = v95;
                v10 = v96;
              }

              goto LABEL_56;
            }

            v38 = v7;
            v39 = v2;
            v40 = [v37 characteristic];
            v41 = [v40 service];
            v42 = [v37 targetValue];
            if (isMetricLocale_onceToken != -1)
            {
              dispatch_once(&isMetricLocale_onceToken, &__block_literal_global_198641);
            }

            v43 = getTupleForCharacteristic(v40, v42, isMetricLocale_isMetricLocale);

            if (v43)
            {
              v44 = objc_alloc_init(MEMORY[0x277D47328]);
              v45 = [v43 attribute];
              [v44 setAttribute:v45];

              [v44 setActionType:v100];
              v46 = [v43 value];
              [v44 setValue:v46];

              v47 = objc_alloc_init(MEMORY[0x277D47378]);
              v48 = MEMORY[0x277CBEBC0];
              v49 = [v41 urlString];
              v50 = [v48 URLWithString:v49];
              [v47 setEntityId:v50];

              v10 = v96;
              [v47 setAction:v44];
              [v94 addObject:v47];
            }

            v11 = v95;
            v2 = v39;
            v7 = v38;
LABEL_61:

            v12 = v98;
            goto LABEL_62;
          }

          if (v14 == 1)
          {
            v15 = v13;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = v15;
            }

            else
            {
              v16 = 0;
            }

            v17 = v16;

            if (v17)
            {
              v103 = 0u;
              v104 = 0u;
              v101 = 0u;
              v102 = 0u;
              v18 = [v17 mediaProfiles];
              v19 = [v18 countByEnumeratingWithState:&v101 objects:v109 count:16];
              if (v19)
              {
                v20 = v19;
                v93 = v17;
                v97 = v12;
                v21 = 0;
                v22 = 0;
                v23 = *v102;
                do
                {
                  v24 = 0;
                  v25 = v21;
                  v26 = v22;
                  do
                  {
                    if (*v102 != v23)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v27 = *(*(&v101 + 1) + 8 * v24);
                    v22 = objc_alloc_init(MEMORY[0x277D47328]);

                    [v22 setActionType:v100];
                    v28 = objc_alloc_init(MEMORY[0x277D47340]);
                    [v28 setValue:1];
                    [v22 setValue:v28];
                    v21 = objc_alloc_init(MEMORY[0x277D47378]);

                    v29 = MEMORY[0x277CBEBC0];
                    v30 = [v27 urlString];
                    v31 = [v29 URLWithString:v30];
                    [v21 setEntityId:v31];

                    [v21 setAction:v22];
                    [v22 setAttribute:v99];
                    [v94 addObject:v21];

                    ++v24;
                    v25 = v21;
                    v26 = v22;
                  }

                  while (v20 != v24);
                  v20 = [v18 countByEnumeratingWithState:&v101 objects:v109 count:16];
                }

                while (v20);

                v7 = v91;
                v2 = v92;
                v11 = v95;
                v12 = v97;
                v17 = v93;
              }

              v10 = v96;
            }

            else
            {
              v65 = objc_autoreleasePoolPush();
              v66 = v2;
              v67 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
              {
                v68 = HMFGetLogIdentifier();
                v69 = HMActionTypeAsString();
                *buf = 138543874;
                v111 = v68;
                v112 = 2112;
                v113 = v15;
                v114 = 2112;
                v115 = v69;
                _os_log_impl(&dword_229538000, v67, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);

                v10 = v96;
                v11 = v95;
              }

              objc_autoreleasePoolPop(v65);
            }
          }
        }

LABEL_62:
        ++v12;
      }

      while (v12 != v10);
      v10 = [v7 countByEnumeratingWithState:&v105 objects:v116 count:16];
    }

    while (v10);
  }

  v4 = v94;
  if (v94 && [v94 count])
  {
    v86 = [v94 copy];
  }

  else
  {
LABEL_67:
    v86 = 0;
  }

  v87 = *MEMORY[0x277D85DE8];

  return v86;
}

- (NSDictionary)assistantObject
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = [(HMDActionSet *)self home];
  v4 = [(HMDActionSet *)self name];
  v5 = v4;
  if (v4 && v3)
  {
    v6 = [v3 name];

    if (v6)
    {
      v7 = [MEMORY[0x277CBEB18] array];
      v8 = [(HMDActionSet *)self actions];
      v9 = [v8 count];

      if (v9)
      {
        if ([(HMDActionSet *)self containsSecureCharacteristic])
        {
          v10 = [(HMDActionSet *)self containsUnsecuringAction];
          v11 = MEMORY[0x277D48138];
          if (!v10)
          {
            v11 = MEMORY[0x277D48130];
          }

          [v7 addObject:*v11];
        }

        if (![(HMDActionSet *)self containsMediaPlaybackActions])
        {
          goto LABEL_17;
        }

        v12 = MEMORY[0x277D48128];
      }

      else
      {
        v12 = MEMORY[0x277D48140];
      }

      [v7 addObject:*v12];
LABEL_17:
      v34 = v7;
      v33 = [(HMDActionSet *)self _getActionsForActionSetObject];
      v32 = objc_alloc(MEMORY[0x277CBEB38]);
      v36[0] = *MEMORY[0x277D48168];
      v35[0] = @"objectType";
      v35[1] = @"objectName";
      v20 = [(HMDActionSet *)self name];
      v36[1] = v20;
      v35[2] = @"objectIdentifier";
      v21 = [(HMDActionSet *)self urlString];
      v36[2] = v21;
      v35[3] = @"objectHome";
      v22 = [v3 name];
      v36[3] = v22;
      v35[4] = @"objectHomeIdentifier";
      v23 = [v3 urlString];
      v36[4] = v23;
      v36[5] = self;
      v35[5] = @"objectReference";
      v35[6] = @"objectSceneType";
      v24 = [(HMDActionSet *)self type];
      v36[6] = v24;
      v35[7] = @"objectSPIIdentifier";
      v25 = [(HMDActionSet *)self spiClientIdentifier];
      v26 = [v25 UUIDString];
      v36[7] = v26;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:8];
      v28 = [v32 initWithDictionary:v27];

      if (v33)
      {
        [v28 setObject:v33 forKey:@"objectSceneActions"];
      }

      if ([v34 count])
      {
        v29 = [v34 copy];
        [v28 setObject:v29 forKey:@"objectStatus"];
      }

      v19 = [v28 copy];

      goto LABEL_22;
    }
  }

  else
  {
  }

  v13 = objc_autoreleasePoolPush();
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [(HMDActionSet *)self name];
    v17 = [(HMDActionSet *)self uuid];
    v18 = [v17 UUIDString];
    *buf = 138544130;
    v38 = v15;
    v39 = 2112;
    v40 = v16;
    v41 = 2112;
    v42 = v18;
    v43 = 2112;
    v44 = v3;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Skipping because attribute(s) is nil: actionSet %@/%@  actionSet.home %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v13);
  v19 = 0;
LABEL_22:

  v30 = *MEMORY[0x277D85DE8];

  return v19;
}

- (NSString)urlString
{
  v2 = *MEMORY[0x277CCF280];
  v3 = [(HMDActionSet *)self uuid];
  v4 = hm_assistantIdentifier();

  return v4;
}

@end