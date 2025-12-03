@interface HMDActionSet
+ (id)allowedActionClasses;
+ (id)logCategory;
- (BOOL)_fixUpActions;
- (BOOL)_handleRenameActionSetTransaction:(id)transaction message:(id)message;
- (BOOL)_isValidCharacteristicWriteAction:(id)action;
- (BOOL)_updateActionSetFromDictionary:(void *)dictionary transaction:(void *)transaction response:(void *)response error:;
- (BOOL)configure:(id)configure messageDispatcher:(id)dispatcher queue:(id)queue;
- (BOOL)containsMediaPlaybackActions;
- (BOOL)containsSecureCharacteristic;
- (BOOL)containsShortcutActions;
- (BOOL)containsUnsecuringAction;
- (BOOL)isAssociatedWithAccessory:(id)accessory;
- (HMDActionSet)initWithCoder:(id)coder;
- (HMDActionSet)initWithName:(id)name uuid:(id)uuid type:(id)type home:(id)home queue:(id)queue;
- (HMDActionSet)initWithName:(id)name uuid:(id)uuid type:(id)type home:(id)home queue:(id)queue notificationCenter:(id)center;
- (HMDHome)home;
- (NSArray)actions;
- (NSArray)associatedAccessories;
- (NSDictionary)assistantObject;
- (NSString)description;
- (NSString)name;
- (NSString)serializedIdentifier;
- (NSString)urlString;
- (id)_addCharacteristicWriteActionModelWithUUID:(id)d message:(id)message;
- (id)_addLightProfileNaturalLightingModelWithUUID:(id)d message:(id)message;
- (id)_addMediaPlaybackActionModelWithUUID:(id)d message:(id)message;
- (id)_createActionExecutionLogEvent:(id)event;
- (id)_executeCharacteristicWriteRequests:(id)requests message:(id)message;
- (id)_executeGenericActions:(id)actions message:(id)message;
- (id)_executeMediaPlaybackActions:(id)actions message:(id)message;
- (id)_executeNaturalLightingActions:(id)actions writeRequests:(id)requests message:(id)message;
- (id)_executeNaturalLightingWriteRequests:(id)requests message:(id)message naturalLightingActions:(id)actions naturalLightingActionResultByActionUUID:(id)d;
- (id)_generateOverallError:(id)error forSource:(unint64_t)source;
- (id)_getActionsForActionSetObject;
- (id)_initWithCoder:(id)coder;
- (id)actionWithUUID:(id)d;
- (id)backingStoreObjects:(int64_t)objects;
- (id)createPayload;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)logIdentifier;
- (id)messageDestination;
- (id)modelObjectWithChangeType:(unint64_t)type;
- (void)__handleActionsUpdated;
- (void)_encodeWithCoder:(id)coder;
- (void)_execute:(id)_execute activity:(id)activity;
- (void)_execute:(id)_execute captureCurrentState:(BOOL)state writeRequestTuples:(id)tuples;
- (void)_executeGenericActions:(id)actions source:(unint64_t)source clientName:(id)name completionHandler:(id)handler;
- (void)_executeMediaPlaybackActions:(id)actions source:(unint64_t)source clientName:(id)name completionHandler:(id)handler;
- (void)_handleAddActionRequest:(id)request;
- (void)_handleAddCharacteristicWriteActionTransaction:(id)transaction message:(id)message;
- (void)_handleAddLightProfileNaturalLightingActionTransaction:(id)transaction message:(id)message;
- (void)_handleAddMediaPlaybackActionTransaction:(id)transaction message:(id)message;
- (void)_handleAddNewAction:(id)action message:(id)message;
- (void)_handleAddShortcutActionTransaction:(id)transaction message:(id)message;
- (void)_handleRemovalOfAction:(id)action transaction:(id)transaction;
- (void)_handleRemovalOfActions:(id)actions transaction:(id)transaction;
- (void)_handleRemoveActionRequest:(id)request;
- (void)_handleRemoveActionTransaction:(id)transaction message:(id)message;
- (void)_handleRemoveAppDataModel:(id)model message:(id)message;
- (void)_handleRenameRequest:(id)request;
- (void)_handleUpdateActionRequest:(id)request;
- (void)_handleUpdateActionSet:(id)set;
- (void)_handleUpdateAppDataModel:(id)model message:(id)message;
- (void)_issueReadRequests;
- (void)_issueWriteRequests:(id)requests;
- (void)_processActionSetModelUpdated:(id)updated message:(id)message;
- (void)_registerForMessages;
- (void)_removeAction:(id)action message:(id)message;
- (void)_removeDonatedIntent;
- (void)_updateNaturalLightingAction:(id)action forMessage:(id)message;
- (void)_updatePlaybackAction:(id)action forMessage:(id)message;
- (void)_updateWriteAction:(id)action forMessage:(id)message;
- (void)addAction:(id)action;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)execute:(id)execute;
- (void)executeWithTriggerSource:(id)source captureCurrentState:(BOOL)state completionHandler:(id)handler;
- (void)handleExecutionCompletionWithResponsePayload:(id)payload error:(id)error;
- (void)handleRemovalOfAccessory:(id)accessory transaction:(id)transaction;
- (void)handleRemovalOfActionForCharacteristic:(id)characteristic transaction:(id)transaction;
- (void)handleRemovalOfService:(id)service transaction:(id)transaction;
- (void)invalidate;
- (void)isAccessValidForExecutionWithMessage:(id)message completion:(id)completion;
- (void)removeAction:(id)action;
- (void)removeAllActions;
- (void)sendNotificationWithAction:(id)action message:(id)message;
- (void)setActions:(id)actions;
- (void)setName:(id)name;
- (void)timerDidFire:(id)fire;
- (void)transactionObjectRemoved:(id)removed message:(id)message;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
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
    name = [(HMDActionSet *)self name];
    uuid = [(HMDActionSet *)self uuid];
    uUIDString = [v3 stringWithFormat:@"%@/%@", name, uuid];
  }

  else
  {
    name = [(HMDActionSet *)self uuid];
    uUIDString = [name UUIDString];
  }

  return uUIDString;
}

- (id)backingStoreObjects:(int64_t)objects
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v41 = v8;
    v42 = 2048;
    objectsCopy = objects;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Creating backing store objects for version: %ld", buf, 0x16u);
  }

  objectsCopy2 = objects;

  objc_autoreleasePoolPop(v5);
  array = [MEMORY[0x277CBEB18] array];
  v10 = [(HMDActionSet *)selfCopy modelObjectWithChangeType:1];
  [array addObject:v10];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  actions = [(HMDActionSet *)selfCopy actions];
  v35 = [actions countByEnumeratingWithState:&v36 objects:v46 count:16];
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
          objc_enumerationMutation(actions);
        }

        v14 = *(*(&v36 + 1) + 8 * i);
        type = [v14 type];
        if (type <= 5)
        {
          if (type == 2)
          {
            home = [(HMDActionSet *)selfCopy home];
            uuid = [(HMDActionSet *)selfCopy uuid];
            v19 = [home triggerOwnedActionSetWithUUID:uuid];

            [v19 addAction:v14];
            v16 = [v14 modelObjectWithChangeType:1];

            if (v16)
            {
LABEL_11:
              [array addObject:v16];

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
        v21 = selfCopy;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v23 = actions;
          v24 = array;
          v26 = v25 = selfCopy;
          v27 = HMActionTypeAsString();
          *buf = 138543874;
          v41 = v26;
          v42 = 2112;
          objectsCopy = v14;
          v44 = 2112;
          v45 = v27;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Did not create backing store object for action %@:%@", buf, 0x20u);

          selfCopy = v25;
          array = v24;
          actions = v23;
          v12 = v34;
        }

        objc_autoreleasePoolPop(v20);
      }

      v35 = [actions countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v35);
  }

  appData = [(HMDActionSet *)selfCopy appData];

  if (objectsCopy2 >= 3 && appData)
  {
    appData2 = [(HMDActionSet *)selfCopy appData];
    v30 = [appData2 modelObjectWithChangeType:1];
    [array addObject:v30];
  }

  v31 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)modelObjectWithChangeType:(unint64_t)type
{
  v5 = [HMDActionSetModel alloc];
  uuid = [(HMDActionSet *)self uuid];
  home = [(HMDActionSet *)self home];
  uuid2 = [home uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:type uuid:uuid parentUUID:uuid2];

  name = [(HMDActionSet *)self name];
  [(HMDActionSetModel *)v9 setName:name];

  type = [(HMDActionSet *)self type];
  [(HMDActionSetModel *)v9 setType:type];

  lastExecutionDate = [(HMDActionSet *)self lastExecutionDate];

  if (lastExecutionDate)
  {
    lastExecutionDate2 = [(HMDActionSet *)self lastExecutionDate];
    [(HMDActionSetModel *)v9 setLastExecutionDate:lastExecutionDate2];
  }

  return v9;
}

- (void)_processActionSetModelUpdated:(id)updated message:(id)message
{
  updatedCopy = updated;
  messageCopy = message;
  transactionResult = [messageCopy transactionResult];
  name = [updatedCopy name];

  if (name)
  {
    v9 = [(HMDActionSet *)self _handleRenameActionSetTransaction:updatedCopy message:messageCopy];
    [transactionResult markSaveToAssistant];
  }

  else
  {
    v9 = 1;
  }

  lastExecutionDate = [updatedCopy lastExecutionDate];
  if (lastExecutionDate)
  {
    v11 = lastExecutionDate;
    lastExecutionDate2 = [(HMDActionSet *)self lastExecutionDate];
    lastExecutionDate3 = [updatedCopy lastExecutionDate];
    v14 = [lastExecutionDate2 compare:lastExecutionDate3];

    if (v14 == -1)
    {
      lastExecutionDate4 = [updatedCopy lastExecutionDate];
      [(HMDActionSet *)self setLastExecutionDate:lastExecutionDate4];
    }
  }

  [transactionResult markChanged];
  if (!v9)
  {
    [messageCopy respondWithPayload:0];
  }
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v55 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = valuesCopy;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  if (v12)
  {
    [(HMDActionSet *)self _processActionSetModelUpdated:v12 message:messageCopy];
    v13 = valuesCopy;
    goto LABEL_31;
  }

  v13 = valuesCopy;
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
    uuid = [v15 uuid];
    v17 = [(HMDActionSet *)self actionWithUUID:uuid];

    if (!v17)
    {
      [(HMDActionSet *)self _handleAddCharacteristicWriteActionTransaction:v15 message:messageCopy];
LABEL_30:

      goto LABEL_31;
    }

    goto LABEL_29;
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
    uuid2 = [v19 uuid];
    v17 = [(HMDActionSet *)self actionWithUUID:uuid2];

    if (!v17)
    {
      [(HMDActionSet *)self _handleAddMediaPlaybackActionTransaction:v19 message:messageCopy];
      goto LABEL_30;
    }

LABEL_29:
    [v17 transactionObjectUpdated:updatedCopy newValues:v13 message:messageCopy];
    goto LABEL_30;
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
    uuid3 = [v22 uuid];
    v17 = [(HMDActionSet *)self actionWithUUID:uuid3];

    if (!v17)
    {
      [(HMDActionSet *)self _handleAddShortcutActionTransaction:v22 message:messageCopy];
      goto LABEL_30;
    }

    goto LABEL_29;
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
    uuid4 = [v25 uuid];
    v17 = [(HMDActionSet *)self actionWithUUID:uuid4];

    if (!v17)
    {
      [(HMDActionSet *)self _handleAddLightProfileNaturalLightingActionTransaction:v25 message:messageCopy];
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v13 = v13;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = v13;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;

  if (v29)
  {
    uuid5 = [v29 uuid];
    v31 = [(HMDActionSet *)self actionWithUUID:uuid5];

    if (v31)
    {
      [v31 transactionObjectUpdated:updatedCopy newValues:v13 message:messageCopy];
    }

    else
    {
      v48 = 0;
      v34 = __HMDActionSetAddActionWithModel(self, v29, messageCopy, &v48);
      v35 = v48;
      if ((v34 & 1) == 0)
      {
        v36 = objc_autoreleasePoolPush();
        selfCopy = self;
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v39 = v47 = v36;
          *buf = 138543874;
          v50 = v39;
          v51 = 2112;
          v52 = v29;
          v53 = 2112;
          v54 = v35;
          _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Failed to process model, %@, with error: %@", buf, 0x20u);

          v36 = v47;
        }

        objc_autoreleasePoolPop(v36);
        responseHandler = [messageCopy responseHandler];

        if (responseHandler)
        {
          responseHandler2 = [messageCopy responseHandler];
          (responseHandler2)[2](responseHandler2, v35, 0);
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
      v32 = v13;
    }

    else
    {
      v32 = 0;
    }

    v33 = v32;

    if (v33)
    {
      [(HMDActionSet *)self _handleUpdateAppDataModel:v33 message:messageCopy];
    }

    else
    {
      v42 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = HMFGetLogIdentifier();
        *buf = 138543874;
        v50 = v45;
        v51 = 2112;
        v52 = v13;
        v53 = 2112;
        v54 = objc_opt_class();
        v46 = v54;
        _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectUpdated]", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v42);
      v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [messageCopy respondWithError:v13];
    }
  }

LABEL_31:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectRemoved:(id)removed message:(id)message
{
  v25 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = removedCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v9)
  {
    [(HMDActionSet *)self _handleRemoveActionTransaction:v9 message:messageCopy];
    v10 = removedCopy;
  }

  else
  {
    v10 = removedCopy;
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
      [(HMDActionSet *)self _handleRemoveAppDataModel:v12 message:messageCopy];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
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
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectRemoved]", &v19, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [messageCopy respondWithError:v10];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_executeGenericActions:(id)actions source:(unint64_t)source clientName:(id)name completionHandler:(id)handler
{
  v45 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  nameCopy = name;
  handlerCopy = handler;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy__22030;
  v42[4] = __Block_byref_object_dispose__22031;
  v43 = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy__22030;
  v40[4] = __Block_byref_object_dispose__22031;
  [MEMORY[0x277CBEB38] dictionary];
  v41 = v21 = handlerCopy;
  workQueue = [(HMDActionSet *)self workQueue];
  v13 = dispatch_group_create();
  objc_initWeak(&location, self);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = actionsCopy;
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
        v28[3] = &unk_279723F40;
        v29 = workQueue;
        objc_copyWeak(&v34, &location);
        v30 = v17;
        v32 = v42;
        v33 = v40;
        v31 = v13;
        [v17 executeWithSource:source clientName:nameCopy completionHandler:v28];

        objc_destroyWeak(&v34);
      }

      v14 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v14);
  }

  workQueue2 = [(HMDActionSet *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HMDActionSet__executeGenericActions_source_clientName_completionHandler___block_invoke_182;
  block[3] = &unk_27972C358;
  v25 = v21;
  v26 = v42;
  v27 = v40;
  v19 = v21;
  dispatch_group_notify(v13, workQueue2, block);

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
  block[3] = &unk_279723F18;
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

void __75__HMDActionSet__executeGenericActions_source_clientName_completionHandler___block_invoke_182(uint64_t a1)
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Action execution failed with error: %@ / %@", &v18, 0x20u);
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Action execution finished with success: %@", &v18, 0x16u);
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

- (void)_executeMediaPlaybackActions:(id)actions source:(unint64_t)source clientName:(id)name completionHandler:(id)handler
{
  v51 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  nameCopy = name;
  handlerCopy = handler;
  v11 = objc_alloc(MEMORY[0x277D0F770]);
  v12 = MEMORY[0x277CCACA8];
  v13 = MEMORY[0x259C01AE0](self, a2);
  3288 = [v12 stringWithFormat:@"%@, %s:%ld", v13, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables_legacy/Sources/homed/Action Sets/HMDActionSet.m", 3288];
  v49 = [v11 initWithName:3288];

  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = __Block_byref_object_copy__22030;
  v47[4] = __Block_byref_object_dispose__22031;
  v48 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = __Block_byref_object_copy__22030;
  v45[4] = __Block_byref_object_dispose__22031;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  workQueue = [(HMDActionSet *)self workQueue];
  v16 = dispatch_group_create();
  objc_initWeak(&location, self);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = actionsCopy;
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
        v32[3] = &unk_279723EF0;
        v33 = workQueue;
        objc_copyWeak(&v39, &location);
        v34 = v49;
        v35 = v20;
        v37 = v47;
        v38 = v45;
        v36 = v16;
        [v20 executeWithSource:source clientName:nameCopy completionHandler:v32];

        objc_destroyWeak(&v39);
      }

      v17 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v17);
  }

  workQueue2 = [(HMDActionSet *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__HMDActionSet__executeMediaPlaybackActions_source_clientName_completionHandler___block_invoke_181;
  block[3] = &unk_27972C358;
  v29 = handlerCopy;
  v30 = v47;
  v31 = v45;
  v22 = handlerCopy;
  dispatch_group_notify(v16, workQueue2, block);

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
  block[3] = &unk_279723EC8;
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Play/Pause action failed with error: %@ ", buf, 0x20u);
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Play/Pause action finished with success", buf, 0x16u);
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
  workQueue = [(HMDActionSet *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_alloc(MEMORY[0x277D0F770]);
  v5 = MEMORY[0x277CCACA8];
  v6 = MEMORY[0x259C01AE0](self, a2);
  3228 = [v5 stringWithFormat:@"%@, %s:%ld", v6, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables_legacy/Sources/homed/Action Sets/HMDActionSet.m", 3228];
  v57 = [v4 initWithName:3228];

  array = [MEMORY[0x277CBEB18] array];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  actions = [(HMDActionSet *)self actions];
  v10 = [actions countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v10)
  {
    obj = actions;
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
          characteristic = [v42 characteristic];
          if ([characteristic supportsRead])
          {
            v15 = [HMDCharacteristicRequest requestWithCharacteristic:characteristic];
            [array addObject:v15];
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
          mediaProfiles = [v18 mediaProfiles];
          v20 = [mediaProfiles countByEnumeratingWithState:&v49 objects:v58 count:16];
          if (v20)
          {
            v21 = *v50;
            do
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v50 != v21)
                {
                  objc_enumerationMutation(mediaProfiles);
                }

                v23 = *(*(&v49 + 1) + 8 * j);
                mediaSession = [v23 mediaSession];
                state = [mediaSession state];
                uniqueIdentifier = [v23 uniqueIdentifier];
                [dictionary setObject:state forKeyedSubscript:uniqueIdentifier];
              }

              v20 = [mediaProfiles countByEnumeratingWithState:&v49 objects:v58 count:16];
            }

            while (v20);
          }
        }
      }

      actions = obj;
      v10 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v10);
  }

  executionMessage = [(HMDActionSet *)self executionMessage];
  source = [executionMessage source];

  v29 = v57;
  [array count];

  objc_initWeak(&location, self);
  home = [(HMDActionSet *)self home];
  v31 = [(HMDActionSet *)self description];
  executionMessage2 = [(HMDActionSet *)self executionMessage];
  qualityOfService = [executionMessage2 qualityOfService];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __34__HMDActionSet__issueReadRequests__block_invoke;
  v43[3] = &unk_2797308C0;
  objc_copyWeak(&v47, &location);
  v44 = v57;
  v34 = array;
  v45 = v34;
  v35 = dictionary;
  v46 = v35;
  [home readCharacteristicValues:v34 source:source sourceForLogging:v31 qualityOfService:qualityOfService withCompletionHandler:v43];

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
    v16[2] = __34__HMDActionSet__issueReadRequests__block_invoke_180;
    v16[3] = &unk_27972F208;
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
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Lost self while reading characteristic values", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __34__HMDActionSet__issueReadRequests__block_invoke_180(uint64_t a1)
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
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fulfill read requests (%@) before evaluating trigger: %@", &v21, 0x2Au);
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
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Finished read requests %@ with response %@", &v21, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
    [*(a1 + 40) setExecutionInitialStates:v10];
    v19 = objc_autoreleasePoolPush();
    [*(a1 + 40) _issueWriteRequests:0];
    objc_autoreleasePoolPop(v19);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)_executeGenericActions:(id)actions message:(id)message
{
  actionsCopy = actions;
  messageCopy = message;
  if ([actionsCopy count])
  {
    source = [messageCopy source];
    clientName = [messageCopy clientName];
    v10 = clientName;
    v11 = @"Unknown";
    if (clientName)
    {
      v11 = clientName;
    }

    v12 = v11;

    v17 = 0;
    v13 = [MEMORY[0x277D0F7C0] futureWithPromise:&v17];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __47__HMDActionSet__executeGenericActions_message___block_invoke;
    v15[3] = &unk_279733FB0;
    v15[4] = self;
    v16 = v17;
    [(HMDActionSet *)self _executeGenericActions:actionsCopy source:source clientName:v12 completionHandler:v15];
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to execute generic actions: %@", &v13, 0x16u);
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

- (id)_executeNaturalLightingWriteRequests:(id)requests message:(id)message naturalLightingActions:(id)actions naturalLightingActionResultByActionUUID:(id)d
{
  v53 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  messageCopy = message;
  actionsCopy = actions;
  dCopy = d;
  if ([requestsCopy count])
  {
    source = [messageCopy source];
    v39 = 0;
    v33 = [MEMORY[0x277D0F7C0] futureWithPromise:&v39];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v31 = actionsCopy;
      v18 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v19 = v15;
      if (uUID)
      {
        [uUID getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v41 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      identifier = [messageCopy identifier];

      if (identifier)
      {
        identifier2 = [messageCopy identifier];
        [identifier2 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v15 = v19;
      v40 = *buf;
      v25 = [requestsCopy count];
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
      v50 = selfCopy;
      v51 = 2048;
      v52 = v25;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Executing write requests with identifier: %{public,uuid_t}.16P for request identifier: %{public,uuid_t}.16P from natural lighting action set: %{public}@ count: %lu", buf, 0x40u);

      actionsCopy = v31;
    }

    objc_autoreleasePoolPop(v15);
    home = [(HMDActionSet *)selfCopy home];
    transport = [messageCopy transport];
    qualityOfService = [messageCopy qualityOfService];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __124__HMDActionSet__executeNaturalLightingWriteRequests_message_naturalLightingActions_naturalLightingActionResultByActionUUID___block_invoke;
    v34[3] = &unk_279723EA0;
    v34[4] = selfCopy;
    v35 = v39;
    v36 = requestsCopy;
    v37 = actionsCopy;
    v38 = dCopy;
    [home writeCharacteristicValues:v36 source:source biomeSource:1 identifier:uUID transport:transport qualityOfService:qualityOfService withCompletionHandler:v34];

    v22 = v33;
  }

  else
  {
    v20 = MEMORY[0x277D0F7C0];
    v21 = [dCopy copy];
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
      _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_ERROR, "%{public}@Failed to execute natural lighting write requests: %@", buf, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Received response for natural lighting accessory write requests: %@", buf, 0x16u);
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
            v66[2] = __124__HMDActionSet__executeNaturalLightingWriteRequests_message_naturalLightingActions_naturalLightingActionResultByActionUUID___block_invoke_173;
            v66[3] = &unk_279723E78;
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
                _os_log_impl(&dword_2531F8000, v32, v33, v34, buf, v35);
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
        _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@Updated response by removing entries for characteristics: %@ from: (%@ -> %@)", buf, 0x2Au);
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
      _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_INFO, "%{public}@Finished executing natural lighting actions with response: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v47);
    v51 = *(v62 + 40);
    v52 = [v46 copy];
    [v51 fulfillWithValue:v52];

    v7 = v41;
  }

  v57 = *MEMORY[0x277D85DE8];
}

uint64_t __124__HMDActionSet__executeNaturalLightingWriteRequests_message_naturalLightingActions_naturalLightingActionResultByActionUUID___block_invoke_173(uint64_t a1, void *a2)
{
  v3 = [a2 lightProfileUUID];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (id)_executeNaturalLightingActions:(id)actions writeRequests:(id)requests message:(id)message
{
  v70 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  requestsCopy = requests;
  messageCopy = message;
  v40 = actionsCopy;
  v38 = requestsCopy;
  if ([actionsCopy count] && objc_msgSend(requestsCopy, "count"))
  {
    v42 = [requestsCopy mutableCopy];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v61 = 0;
    v62 = &v61;
    v63 = 0x2810000000;
    v64 = "";
    v65 = 0;
    v43 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(actionsCopy, "count")}];
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Fetching up-to-date light profile settings before execution", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = actionsCopy;
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
          lightProfile = [v16 lightProfile];
          uuid = [v16 uuid];
          uUIDString = [uuid UUIDString];

          if (lightProfile)
          {
            *buf = 0;
            v20 = [MEMORY[0x277D0F7C0] futureWithPromise:buf];
            v51[0] = MEMORY[0x277D85DD0];
            v51[1] = 3221225472;
            v51[2] = __69__HMDActionSet__executeNaturalLightingActions_writeRequests_message___block_invoke;
            v51[3] = &unk_279723E28;
            v51[4] = v16;
            v51[5] = selfCopy;
            v56 = &v61;
            v52 = dictionary;
            v53 = uUIDString;
            v54 = v42;
            v55 = *buf;
            [lightProfile fetchNaturalLightingEnabledWithCompletion:v51];
            [v43 addObject:v20];
          }

          else
          {
            v21 = objc_autoreleasePoolPush();
            v22 = selfCopy;
            v23 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v24 = HMFGetLogIdentifier();
              *buf = 138543618;
              *&buf[4] = v24;
              v67 = 2112;
              v68 = v16;
              _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Skipping executing natural lighting action, missing light profile: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v21);
            v25 = v62;
            os_unfair_lock_lock_with_options();
            v26 = MEMORY[0x277CBEAC0];
            v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
            v28 = [v26 hmd_dictionaryWithActionExecutionError:v27];
            [dictionary setObject:v28 forKeyedSubscript:uUIDString];

            os_unfair_lock_unlock(v25 + 8);
          }
        }

        v13 = [obj countByEnumeratingWithState:&v57 objects:v69 count:16];
      }

      while (v13);
    }

    v29 = objc_alloc(MEMORY[0x277D0F7A8]);
    workQueue = [(HMDActionSet *)selfCopy workQueue];
    v31 = [v29 initWithQueue:workQueue];

    v32 = [MEMORY[0x277D0F7C0] allSettled:v43];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __69__HMDActionSet__executeNaturalLightingActions_writeRequests_message___block_invoke_172;
    v46[3] = &unk_279723E50;
    v46[4] = selfCopy;
    v33 = v42;
    v47 = v33;
    v48 = messageCopy;
    v49 = obj;
    v34 = dictionary;
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
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Skipping natural lighting action %@ because either we failed to read with error: %@ or natural lighting is already enabled: %@", buf, 0x2Au);
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
    v23[2] = __69__HMDActionSet__executeNaturalLightingActions_writeRequests_message___block_invoke_170;
    v23[3] = &unk_279723E00;
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
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Removing write request from list of natural lighting accessory write requests: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      [*(a1 + 64) removeObject:v17];
    }

    os_unfair_lock_unlock(v12 + 8);
  }

  [*(a1 + 72) fulfillWithValue:0];

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __69__HMDActionSet__executeNaturalLightingActions_writeRequests_message___block_invoke_172(uint64_t a1, void *a2)
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
    return __69__HMDActionSet__executeNaturalLightingActions_writeRequests_message___block_invoke_170(v7, v8);
  }
}

uint64_t __69__HMDActionSet__executeNaturalLightingActions_writeRequests_message___block_invoke_170(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 lightProfileUUID];
  v5 = [v3 identifier];

  v6 = [v4 isEqual:v5];
  return v6;
}

- (id)_executeMediaPlaybackActions:(id)actions message:(id)message
{
  v28 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  messageCopy = message;
  if ([actionsCopy count])
  {
    source = [messageCopy source];
    clientName = [messageCopy clientName];
    v10 = clientName;
    v11 = @"Unknown";
    if (clientName)
    {
      v11 = clientName;
    }

    v12 = v11;

    v23 = 0;
    v13 = [MEMORY[0x277D0F7C0] futureWithPromise:&v23];
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [actionsCopy count];
      *buf = 138543618;
      v25 = v17;
      v26 = 2048;
      v27 = v18;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Executing media playback actions, count: %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __53__HMDActionSet__executeMediaPlaybackActions_message___block_invoke;
    v21[3] = &unk_279733FB0;
    v21[4] = selfCopy;
    v22 = v23;
    [(HMDActionSet *)selfCopy _executeMediaPlaybackActions:actionsCopy source:source clientName:v12 completionHandler:v21];
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to execute media playback actions: %{public}@", &v13, 0x16u);
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

- (id)_executeCharacteristicWriteRequests:(id)requests message:(id)message
{
  v39 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  messageCopy = message;
  if ([requestsCopy count])
  {
    source = [messageCopy source];
    v25 = 0;
    v9 = [MEMORY[0x277D0F7C0] futureWithPromise:&v25];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      if (uUID)
      {
        [uUID getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v27 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      identifier = [messageCopy identifier];

      if (identifier)
      {
        identifier2 = [messageCopy identifier];
        [identifier2 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v26 = *buf;
      v17 = [requestsCopy count];
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
      v36 = selfCopy;
      v37 = 2048;
      v38 = v17;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Executing write requests with identifier: %{public,uuid_t}.16P for request identifier: %{public,uuid_t}.16P from characteristic write action set: %{public}@ count: %lu", buf, 0x40u);
    }

    objc_autoreleasePoolPop(v11);
    home = [(HMDActionSet *)selfCopy home];
    transport = [messageCopy transport];
    qualityOfService = [messageCopy qualityOfService];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __60__HMDActionSet__executeCharacteristicWriteRequests_message___block_invoke;
    v23[3] = &unk_279733FB0;
    v23[4] = selfCopy;
    v24 = v25;
    [home writeCharacteristicValues:requestsCopy source:source biomeSource:1 identifier:uUID transport:transport qualityOfService:qualityOfService withCompletionHandler:v23];
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
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to execute characteristic write requests: %@", &v17, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Finished executing characteristic write with response: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 40) fulfillWithValue:v7];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_issueWriteRequests:(id)requests
{
  v179 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  workQueue = [(HMDActionSet *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  executionMessage = [(HMDActionSet *)self executionMessage];
  array = [MEMORY[0x277CBEB18] array];
  v7 = [requestsCopy mutableCopy];
  v8 = v7;
  v132 = requestsCopy;
  v134 = array;
  if (v7)
  {
    array2 = v7;
  }

  else
  {
    array2 = [MEMORY[0x277CBEB18] array];
  }

  v130 = array2;

  array3 = [MEMORY[0x277CBEB18] array];
  array4 = [MEMORY[0x277CBEB18] array];
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  actions = [(HMDActionSet *)self actions];
  v11 = [actions countByEnumeratingWithState:&v161 objects:v178 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v162;
    v14 = actions;
    selfCopy = self;
LABEL_6:
    v15 = 0;
    while (1)
    {
      if (*v162 != v13)
      {
        objc_enumerationMutation(actions);
      }

      v16 = *(*(&v161 + 1) + 8 * v15);
      type = [v16 type];
      if (type <= 1)
      {
        if (!type)
        {
          v41 = v16;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v42 = v41;
          }

          else
          {
            v42 = 0;
          }

          v24 = v42;

          if (v24)
          {
            if (![v132 count])
            {
              v25 = v130;
LABEL_46:
              [v25 addObject:v24];
            }

LABEL_58:

            goto LABEL_59;
          }

          v48 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v50 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            v51 = HMFGetLogIdentifier();
            v52 = HMActionTypeAsString();
            *buf = 138543874;
            v169 = v51;
            v170 = 2112;
            v171 = v41;
            v172 = 2112;
            v173 = v52;
            _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);

            self = selfCopy;
            actions = v14;
          }

          goto LABEL_54;
        }

        if (type == 1)
        {
          v22 = v16;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = v22;
          }

          else
          {
            v23 = 0;
          }

          v24 = v23;

          actions = v14;
          if (v24)
          {
            v25 = array3;
            goto LABEL_46;
          }

          v48 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v50 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            v53 = HMFGetLogIdentifier();
            v54 = HMActionTypeAsString();
            *buf = 138543874;
            v169 = v53;
            v170 = 2112;
            v171 = v22;
            v172 = 2112;
            v173 = v54;
            _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);

            actions = v14;
            self = selfCopy;
          }

LABEL_54:

          objc_autoreleasePoolPop(v48);
          goto LABEL_59;
        }
      }

      else
      {
        switch(type)
        {
          case 2:
            v31 = v16;
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

            v34 = v33;
            if (v33)
            {
              proxyConnection = [executionMessage proxyConnection];
              if (proxyConnection)
              {
                v36 = proxyConnection;
                isEntitledForShortcutsAutomationAccess = [executionMessage isEntitledForShortcutsAutomationAccess];

                if ((isEntitledForShortcutsAutomationAccess & 1) == 0)
                {
                  v64 = objc_autoreleasePoolPush();
                  selfCopy4 = self;
                  v66 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                  {
                    v67 = HMFGetLogIdentifier();
                    *buf = 138543362;
                    v169 = v67;
                    _os_log_impl(&dword_2531F8000, v66, OS_LOG_TYPE_ERROR, "%{public}@Missing ShortcutsAutomationAccess Entitlement for Execute(2)", buf, 0xCu);
                  }

                  objc_autoreleasePoolPop(v64);
                  v68 = [MEMORY[0x277CCA9B8] hmErrorWithCode:80 description:@"Missing Entitlement" reason:0 suggestion:0];
                  [(HMDActionSet *)selfCopy4 handleExecutionCompletionWithResponsePayload:0 error:v68];
                  v69 = executionMessage;
                  v70 = v134;
                  v71 = v132;
                  goto LABEL_101;
                }
              }
            }

            [v134 addObject:v31];

            goto LABEL_59;
          case 3:
            v38 = v16;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v39 = v38;
            }

            else
            {
              v39 = 0;
            }

            v24 = v39;

            if (!v24)
            {
              v43 = objc_autoreleasePoolPush();
              selfCopy5 = self;
              v45 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                v46 = HMFGetLogIdentifier();
                v47 = HMActionTypeAsString();
                *buf = 138543874;
                v169 = v46;
                v170 = 2112;
                v171 = v38;
                v172 = 2112;
                v173 = v47;
                _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);

                self = selfCopy;
              }

              actions = v14;
              goto LABEL_57;
            }

            lightProfile = [v24 lightProfile];

            if (!lightProfile)
            {
              v43 = objc_autoreleasePoolPush();
              selfCopy6 = self;
              v45 = HMFGetOSLogHandle();
              actions = v14;
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                v56 = HMFGetLogIdentifier();
                *buf = 138543618;
                v169 = v56;
                v170 = 2112;
                v171 = v24;
                _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_ERROR, "%{public}@Skipping executing natural lighting action, missing light profile: %@", buf, 0x16u);
              }

LABEL_57:

              objc_autoreleasePoolPop(v43);
              goto LABEL_58;
            }

            [array4 addObject:v24];

            goto LABEL_26;
          case 5:
            v18 = objc_autoreleasePoolPush();
            selfCopy7 = self;
            v20 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v21 = HMFGetLogIdentifier();
              *buf = 138543362;
              v169 = v21;
              _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Native matter actions are not supported in HH1", buf, 0xCu);

              self = selfCopy;
            }

            objc_autoreleasePoolPop(v18);
            break;
        }
      }

      v26 = objc_autoreleasePoolPush();
      selfCopy8 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = HMFGetLogIdentifier();
        v30 = HMActionTypeAsString();
        *buf = 138543874;
        v169 = v29;
        v170 = 2112;
        v171 = v16;
        v172 = 2112;
        v173 = v30;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Unknown action type %@:%@", buf, 0x20u);

        self = selfCopy;
      }

      objc_autoreleasePoolPop(v26);
LABEL_26:
      actions = v14;
LABEL_59:
      if (v12 == ++v15)
      {
        v12 = [actions countByEnumeratingWithState:&v161 objects:v178 count:16];
        if (v12)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  v57 = objc_autoreleasePoolPush();
  selfCopy9 = self;
  v59 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
  {
    v60 = HMFGetLogIdentifier();
    *buf = 138544386;
    v169 = v60;
    v170 = 2112;
    v171 = v130;
    v172 = 2112;
    v173 = array3;
    v174 = 2112;
    v175 = array4;
    v176 = 2112;
    v177 = v134;
    _os_log_impl(&dword_2531F8000, v59, OS_LOG_TYPE_DEBUG, "%{public}@Preparing to execute characteristic write actions: [%@], media playback actions: [%@], natural lighting actions: [%@] short cut actions: [%@]", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v57);
  v61 = [v132 mutableCopy];
  v62 = v61;
  if (v61)
  {
    array5 = v61;
  }

  else
  {
    array5 = [MEMORY[0x277CBEB18] array];
  }

  v142 = array5;
  v135 = selfCopy9;

  v159 = 0u;
  v160 = 0u;
  v157 = 0u;
  v158 = 0u;
  v72 = v130;
  v73 = [v72 countByEnumeratingWithState:&v157 objects:v167 count:16];
  if (v73)
  {
    v74 = v73;
    v75 = *v158;
    do
    {
      for (i = 0; i != v74; ++i)
      {
        if (*v158 != v75)
        {
          objc_enumerationMutation(v72);
        }

        v77 = *(*(&v157 + 1) + 8 * i);
        characteristic = [v77 characteristic];
        targetValue = [v77 targetValue];
        authorizationData = [characteristic authorizationData];
        identifier = [executionMessage identifier];
        v82 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:characteristic value:targetValue authorizationData:authorizationData identifier:identifier type:1];

        [v142 addObject:v82];
      }

      v74 = [v72 countByEnumeratingWithState:&v157 objects:v167 count:16];
    }

    while (v74);
  }

  array6 = [MEMORY[0x277CBEB18] array];
  array7 = [MEMORY[0x277CBEB18] array];
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  obj = array3;
  v84 = [obj countByEnumeratingWithState:&v153 objects:v166 count:16];
  actions = v142;
  if (v84)
  {
    v85 = v84;
    v86 = *v154;
    do
    {
      for (j = 0; j != v85; ++j)
      {
        if (*v154 != v86)
        {
          objc_enumerationMutation(obj);
        }

        v88 = *(*(&v153 + 1) + 8 * j);
        convertedCharacteristicWriteRequests = [v88 convertedCharacteristicWriteRequests];
        if (convertedCharacteristicWriteRequests)
        {
          [array6 addObject:v88];
          characteristicWriteRequests = [convertedCharacteristicWriteRequests characteristicWriteRequests];
          v91 = [characteristicWriteRequests count];

          if (v91)
          {
            characteristicWriteRequests2 = [convertedCharacteristicWriteRequests characteristicWriteRequests];
            [v142 addObjectsFromArray:characteristicWriteRequests2];
          }

          residualAction = [convertedCharacteristicWriteRequests residualAction];

          if (residualAction)
          {
            residualAction2 = [convertedCharacteristicWriteRequests residualAction];
            [array7 addObject:residualAction2];
          }
        }
      }

      v85 = [obj countByEnumeratingWithState:&v153 objects:v166 count:16];
    }

    while (v85);
  }

  v129 = array6;
  [obj removeObjectsInArray:array6];
  [obj addObjectsFromArray:array7];
  date = [MEMORY[0x277CBEAA8] date];
  array8 = [MEMORY[0x277CBEB18] array];
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v137 = array4;
  v96 = [v137 countByEnumeratingWithState:&v149 objects:v165 count:16];
  v97 = v135;
  if (v96)
  {
    v98 = v96;
    v99 = *v150;
    do
    {
      for (k = 0; k != v98; ++k)
      {
        if (*v150 != v99)
        {
          objc_enumerationMutation(v137);
        }

        v101 = *(*(&v149 + 1) + 8 * k);
        lightProfile2 = [v101 lightProfile];
        v103 = [v101 writeRequestForTransitionStartWithLightProfile:lightProfile2 startDate:date type:1];

        if (v103)
        {
          [array8 addObject:v103];
          v104 = [actions copy];
          v146[0] = MEMORY[0x277D85DD0];
          v146[1] = 3221225472;
          v146[2] = __36__HMDActionSet__issueWriteRequests___block_invoke;
          v146[3] = &unk_279723DB0;
          v146[4] = v101;
          v147 = actions;
          v148 = array8;
          [v104 na_each:v146];
        }

        else
        {
          v105 = date;
          v106 = objc_autoreleasePoolPush();
          v107 = v97;
          v108 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
          {
            v109 = HMFGetLogIdentifier();
            *buf = 138543618;
            v169 = v109;
            v170 = 2112;
            v171 = v101;
            _os_log_impl(&dword_2531F8000, v108, OS_LOG_TYPE_ERROR, "%{public}@Failed to create write request for natural lighting action: %@", buf, 0x16u);

            v97 = v135;
          }

          objc_autoreleasePoolPop(v106);
          actions = v142;
          date = v105;
        }
      }

      v98 = [v137 countByEnumeratingWithState:&v149 objects:v165 count:16];
    }

    while (v98);
  }

  v110 = MEMORY[0x277D0F848];
  messageDestination = [(HMDActionSet *)v97 messageDestination];
  v112 = [v110 messageWithName:@"kActionSetWillStartExecutionNotificationKey" destination:messageDestination payload:0];

  v69 = executionMessage;
  v113 = v112;
  [v112 setRemote:{objc_msgSend(executionMessage, "isRemote")}];
  transport = [executionMessage transport];
  v143 = v113;
  [v113 setTransport:transport];

  msgDispatcher = [(HMDActionSet *)v97 msgDispatcher];
  [msgDispatcher sendMessage:v113 completionHandler:0];

  array9 = [MEMORY[0x277CBEB18] array];
  v117 = [(HMDActionSet *)v97 _executeCharacteristicWriteRequests:actions message:executionMessage];
  [array9 addObject:v117];

  v118 = [(HMDActionSet *)v97 _executeMediaPlaybackActions:obj message:executionMessage];
  [array9 addObject:v118];

  v119 = [(HMDActionSet *)v97 _executeNaturalLightingActions:v137 writeRequests:array8 message:executionMessage];
  [array9 addObject:v119];

  v70 = v134;
  v120 = [(HMDActionSet *)v97 _executeGenericActions:v134 message:executionMessage];
  [array9 addObject:v120];

  v121 = objc_alloc(MEMORY[0x277D0F7A8]);
  [(HMDActionSet *)v97 workQueue];
  v122 = date;
  v124 = v123 = v97;
  v125 = [v121 initWithQueue:v124];

  v126 = [MEMORY[0x277D0F7C0] allSettled:array9];
  v145[0] = MEMORY[0x277D85DD0];
  v145[1] = 3221225472;
  v145[2] = __36__HMDActionSet__issueWriteRequests___block_invoke_161;
  v145[3] = &unk_279723DD8;
  v145[4] = v123;
  v127 = [v126 inContext:v125 then:v145];

  v144[0] = MEMORY[0x277D85DD0];
  v144[1] = 3221225472;
  v144[2] = __36__HMDActionSet__issueWriteRequests___block_invoke_165;
  v144[3] = &unk_279734EB8;
  v144[4] = v123;
  [v127 getResultWithCompletion:v144];

  v71 = v132;
  v34 = v129;
  v68 = array7;
LABEL_101:

  v128 = *MEMORY[0x277D85DE8];
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
    v10[3] = &unk_2797285D0;
    v10[4] = *(a1 + 32);
    v9 = [v8 na_firstObjectPassingTest:v10];

    if (v9)
    {
      [*(a1 + 40) removeObject:v3];
      [*(a1 + 48) addObject:v3];
    }
  }
}

uint64_t __36__HMDActionSet__issueWriteRequests___block_invoke_161(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a2;
  v5 = [v3 dictionary];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __36__HMDActionSet__issueWriteRequests___block_invoke_2_162;
  v12 = &unk_27972D188;
  v13 = *(a1 + 32);
  v14 = v5;
  v6 = v5;
  [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:&v9];

  v7 = [v6 copy];
  return 1;
}

void __36__HMDActionSet__issueWriteRequests___block_invoke_165(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Finished execution of all actions with response: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [*(a1 + 32) handleExecutionCompletionWithResponsePayload:v5 error:0];

  v11 = *MEMORY[0x277D85DE8];
}

void __36__HMDActionSet__issueWriteRequests___block_invoke_2_162(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Execution of action resulted in error: %@", &v14, 0x16u);
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

- (id)_createActionExecutionLogEvent:(id)event
{
  v76 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v56 = eventCopy;
  source = [eventCopy source];
  if (source == 1)
  {
    clientIdentifier = @"com.apple.Siri";
    v4 = @"com.apple.Siri";
  }

  else
  {
    clientIdentifier = [eventCopy clientIdentifier];
  }

  v5 = MEMORY[0x277CBEB58];
  actions = [(HMDActionSet *)self actions];
  v7 = [v5 setWithCapacity:{objc_msgSend(actions, "count")}];

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  actions2 = [(HMDActionSet *)self actions];
  v9 = [actions2 countByEnumeratingWithState:&v64 objects:v75 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v65;
    v57 = actions2;
    v58 = *v65;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v65 != v11)
        {
          objc_enumerationMutation(actions2);
        }

        v13 = *(*(&v64 + 1) + 8 * i);
        type = [v13 type];
        if (type > 2)
        {
          if (type == 3)
          {
            v33 = v13;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v34 = v33;
            }

            else
            {
              v34 = 0;
            }

            v30 = v34;

            if (v30)
            {
              lightProfile = [v30 lightProfile];
              accessory = [lightProfile accessory];

              if (accessory)
              {
                [v7 addObject:accessory];
              }

LABEL_44:

LABEL_54:
              continue;
            }

            v41 = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v43 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              v46 = HMFGetLogIdentifier();
              v47 = HMActionTypeAsString();
              *buf = 138543874;
              v70 = v46;
              v71 = 2112;
              v72 = v33;
              v73 = 2112;
              v74 = v47;
              _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);

              actions2 = v57;
            }

LABEL_53:

            objc_autoreleasePoolPop(v41);
            v11 = v58;
            goto LABEL_54;
          }

          if (type == 5)
          {
            v24 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v26 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v27 = HMFGetLogIdentifier();
              *buf = 138543362;
              v70 = v27;
              _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Native matter actions are not supported in HH1", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v24);
          }
        }

        else
        {
          if (!type)
          {
            v28 = v13;
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
              accessory = [v30 characteristic];
              v31Accessory = [accessory accessory];
              if (v31Accessory)
              {
                [v7 addObject:v31Accessory];
              }

              goto LABEL_44;
            }

            v41 = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v43 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              v44 = HMFGetLogIdentifier();
              v45 = HMActionTypeAsString();
              *buf = 138543874;
              v70 = v44;
              v71 = 2112;
              v72 = v28;
              v73 = 2112;
              v74 = v45;
              _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);

              actions2 = v57;
            }

            goto LABEL_53;
          }

          if (type == 1)
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
              v62 = 0u;
              v63 = 0u;
              v60 = 0u;
              v61 = 0u;
              mediaProfiles = [v17 mediaProfiles];
              v19 = [mediaProfiles countByEnumeratingWithState:&v60 objects:v68 count:16];
              if (v19)
              {
                v20 = v19;
                v21 = *v61;
                do
                {
                  for (j = 0; j != v20; ++j)
                  {
                    if (*v61 != v21)
                    {
                      objc_enumerationMutation(mediaProfiles);
                    }

                    accessory2 = [*(*(&v60 + 1) + 8 * j) accessory];
                    if (accessory2)
                    {
                      [v7 addObject:accessory2];
                    }
                  }

                  v20 = [mediaProfiles countByEnumeratingWithState:&v60 objects:v68 count:16];
                }

                while (v20);
              }

              actions2 = v57;
            }

            else
            {
              v36 = objc_autoreleasePoolPush();
              selfCopy4 = self;
              v38 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                v39 = HMFGetLogIdentifier();
                v40 = HMActionTypeAsString();
                *buf = 138543874;
                v70 = v39;
                v71 = 2112;
                v72 = v15;
                v73 = 2112;
                v74 = v40;
                _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);

                actions2 = v57;
              }

              objc_autoreleasePoolPop(v36);
            }

            v11 = v58;
          }
        }
      }

      v10 = [actions2 countByEnumeratingWithState:&v64 objects:v75 count:16];
    }

    while (v10);
  }

  v48 = [HMDActionSetEvent alloc];
  v49 = [v7 count];
  identifier = [v56 identifier];
  v51 = [(HMDActionSetEvent *)v48 initWithActionSet:self source:source numAccessories:v49 bundleId:clientIdentifier transactionId:identifier];

  v52 = *MEMORY[0x277D85DE8];

  return v51;
}

- (void)_execute:(id)_execute captureCurrentState:(BOOL)state writeRequestTuples:(id)tuples
{
  stateCopy = state;
  v44 = *MEMORY[0x277D85DE8];
  _executeCopy = _execute;
  tuplesCopy = tuples;
  workQueue = [(HMDActionSet *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v40 = 138543362;
    v41 = v14;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Executing the action set", &v40, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  actions = [(HMDActionSet *)selfCopy actions];
  v16 = [actions count];

  if (!v16)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      shortDescription = [_executeCopy shortDescription];
      v40 = 138543618;
      v41 = v27;
      v42 = 2112;
      v43 = shortDescription;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Not executing the action set: there are no actions in it: %@", &v40, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v22 = MEMORY[0x277CCA9B8];
    v23 = 25;
    goto LABEL_11;
  }

  executionMessage = [(HMDActionSet *)selfCopy executionMessage];

  if (executionMessage)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v40 = 138543362;
      v41 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Not executing the action set: another execution is already in progress", &v40, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v22 = MEMORY[0x277CCA9B8];
    v23 = 65;
LABEL_11:
    v29 = [v22 hmErrorWithCode:v23];
    [_executeCopy respondWithError:v29];

    goto LABEL_12;
  }

  [(HMDActionSet *)selfCopy setExecutionMessage:_executeCopy];
  date = [MEMORY[0x277CBEAA8] date];
  [(HMDActionSet *)selfCopy setExecutionStart:date];

  home = [(HMDActionSet *)selfCopy home];
  [home startReportingSessionForMessage:_executeCopy];

  v33 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:600.0];
  [(HMDActionSet *)selfCopy setExecutionTimeoutTimer:v33];

  executionTimeoutTimer = [(HMDActionSet *)selfCopy executionTimeoutTimer];
  [executionTimeoutTimer setDelegate:selfCopy];

  workQueue2 = [(HMDActionSet *)selfCopy workQueue];
  executionTimeoutTimer2 = [(HMDActionSet *)selfCopy executionTimeoutTimer];
  [executionTimeoutTimer2 setDelegateQueue:workQueue2];

  executionTimeoutTimer3 = [(HMDActionSet *)selfCopy executionTimeoutTimer];
  [executionTimeoutTimer3 resume];

  [(HMDActionSet *)selfCopy setExecutionInitialStates:0];
  v38 = [(HMDActionSet *)selfCopy _createActionExecutionLogEvent:_executeCopy];
  [(HMDActionSet *)selfCopy setExecutionActionSetEvent:v38];

  if (stateCopy)
  {
    [(HMDActionSet *)selfCopy _issueReadRequests];
  }

  else
  {
    v39 = objc_autoreleasePoolPush();
    [(HMDActionSet *)selfCopy _issueWriteRequests:tuplesCopy];
    objc_autoreleasePoolPop(v39);
  }

LABEL_12:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)fire
{
  v15 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  executionTimeoutTimer = [(HMDActionSet *)self executionTimeoutTimer];

  if (executionTimeoutTimer == fireCopy)
  {
    executionMessage = [(HMDActionSet *)self executionMessage];

    if (executionMessage)
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        v13 = 138543362;
        v14 = v10;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Timer execution timeout triggered. Resetting executionInProgress.", &v13, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
      v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8];
      [(HMDActionSet *)selfCopy handleExecutionCompletionWithResponsePayload:0 error:v11];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleExecutionCompletionWithResponsePayload:(id)payload error:(id)error
{
  v59 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  errorCopy = error;
  workQueue = [(HMDActionSet *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_alloc(MEMORY[0x277D0F770]);
  v10 = MEMORY[0x277CCACA8];
  v11 = MEMORY[0x259C01AE0](self, a2);
  2489 = [v10 stringWithFormat:@"%@, %s:%ld", v11, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables_legacy/Sources/homed/Action Sets/HMDActionSet.m", 2489];
  v48 = [v9 initWithName:2489];

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v51 = 0uLL;
    executionMessage = [(HMDActionSet *)selfCopy executionMessage];
    identifier = [executionMessage identifier];

    if (identifier)
    {
      executionMessage2 = [(HMDActionSet *)selfCopy executionMessage];
      identifier2 = [executionMessage2 identifier];
      [identifier2 getUUIDBytes:&v51];
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
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Action set execution completed for request identifier: %{public,uuid_t}.16P", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v13);
  executionMessage3 = [(HMDActionSet *)selfCopy executionMessage];
  executionInitialStates = [(HMDActionSet *)selfCopy executionInitialStates];
  executionActionSetEvent = [(HMDActionSet *)selfCopy executionActionSetEvent];
  [(HMDActionSet *)selfCopy setExecutionActionSetEvent:0];
  [(HMDActionSet *)selfCopy setExecutionMessage:0];
  [(HMDActionSet *)selfCopy setExecutionStart:0];
  [(HMDActionSet *)selfCopy setExecutionTimeoutTimer:0];
  [(HMDActionSet *)selfCopy setExecutionInitialStates:0];
  home = [(HMDActionSet *)selfCopy home];
  if (home)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(HMDActionSet *)selfCopy setLastExecutionDate:date];

    name = [executionMessage3 name];
    v27 = name;
    v28 = *MEMORY[0x277CD2348];
    if (name)
    {
      v28 = name;
    }

    v29 = v28;

    [home saveWithReason:v29 postSyncNotification:0];
    v49 = *MEMORY[0x277CD2038];
    lastExecutionDate = [(HMDActionSet *)selfCopy lastExecutionDate];
    v50 = lastExecutionDate;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];

    v32 = MEMORY[0x277D0F848];
    messageDestination = [(HMDActionSet *)selfCopy messageDestination];
    v34 = [v32 messageWithName:@"kActionSetExecutedNotificationKey" destination:messageDestination payload:v31];

    identifier3 = [executionMessage3 identifier];
    [v34 setIdentifier:identifier3];

    [v34 setRemote:{objc_msgSend(executionMessage3, "isRemote")}];
    msgDispatcher = [(HMDActionSet *)selfCopy msgDispatcher];
    [msgDispatcher sendMessage:v34];

    responseHandler = [executionMessage3 responseHandler];

    if (responseHandler)
    {
      v38 = errorCopy;
      if (!v38)
      {
        v38 = -[HMDActionSet _generateOverallError:forSource:](selfCopy, "_generateOverallError:forSource:", payloadCopy, [executionMessage3 source]);
      }

      v39 = v38;
      v40 = [payloadCopy mutableCopy];
      [v40 setObject:executionInitialStates forKeyedSubscript:*MEMORY[0x277CD21E8]];
      [executionMessage3 respondWithPayload:v40 error:v39];
    }

    [home handleReportingSessionResponseMessage:v34];
    [home endReportingSessionForMessage:executionMessage3];
    v41 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v41 submitLogEvent:executionActionSetEvent error:errorCopy];
  }

  else
  {
    v42 = objc_autoreleasePoolPush();
    v43 = selfCopy;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = HMFGetLogIdentifier();
      *buf = 138543362;
      v54 = v45;
      _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_DEFAULT, "%{public}@Ignoring execution completion because home reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v42);
  }

  __HMFActivityScopeLeave();
  v46 = *MEMORY[0x277D85DE8];
}

- (id)_generateOverallError:(id)error forSource:(unint64_t)source
{
  v120 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (![errorCopy count])
  {
    v67 = [MEMORY[0x277CCA9B8] hmErrorWithCode:63];
    v68 = objc_autoreleasePoolPush();
    selfCopy = self;
    v70 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      v71 = HMFGetLogIdentifier();
      *buf = 138543874;
      v115 = v71;
      v116 = 2112;
      selfCopy10 = selfCopy;
      v118 = 2112;
      v119 = v67;
      _os_log_impl(&dword_2531F8000, v70, OS_LOG_TYPE_ERROR, "%{public}@No accessories were changed so noting that action set %@ failed with error: %@", buf, 0x20u);
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
  v7 = errorCopy;
  v83 = [v7 countByEnumeratingWithState:&v107 objects:v113 count:16];
  if (v83)
  {
    v78 = errorCopy;
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
          selfCopy2 = self;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = HMFGetLogIdentifier();
            *buf = 138543874;
            v115 = v18;
            v116 = 2112;
            selfCopy10 = self;
            v118 = 2112;
            v119 = v91;
            _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Received media error for action set %@: %@", buf, 0x20u);

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
            selfCopy4 = self;
            v22 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = HMFGetLogIdentifier();
              *buf = 138543874;
              v115 = v23;
              v116 = 2112;
              selfCopy10 = self;
              v118 = 2112;
              v119 = v91;
              _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Received error for action set %@: %@", buf, 0x20u);

              v7 = v82;
            }

            objc_autoreleasePoolPop(v20);
            ++v8;
            v14 = v93;
          }

          else
          {
            home = [(HMDActionSet *)self home];
            v25 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v12];
            v26 = [home accessoryWithUUID:v25];

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
              sourceCopy = source;
              selfCopy6 = self;
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
                            selfCopy7 = self;
                            v41 = HMFGetOSLogHandle();
                            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                            {
                              HMFGetLogIdentifier();
                              v43 = v42 = v8;
                              *buf = 138543874;
                              v115 = v43;
                              v116 = 2112;
                              selfCopy10 = self;
                              v118 = 2112;
                              v119 = v95;
                              _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "%{public}@Received error for action set %@: %@", buf, 0x20u);

                              v8 = v42;
                            }

                            objc_autoreleasePoolPop(v39);
                            ++v8;
                            if (source == 1)
                            {
                              v90 = v8;
                              v44 = HAPInstanceIDFromValue();
                              v45 = HAPInstanceIDFromValue();
                              v46 = [v91 findCharacteristic:v44 forService:v45];
                              type = [v46 type];
                              service = [v46 service];
                              type2 = [service type];
                              v50 = [v89 requiresDeviceUnlock:type forService:type2];

                              if (v50)
                              {
                                v61 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:4000];
                                v62 = objc_autoreleasePoolPush();
                                v63 = selfCopy7;
                                v64 = HMFGetOSLogHandle();
                                if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                                {
                                  v65 = HMFGetLogIdentifier();
                                  *buf = 138543874;
                                  v115 = v65;
                                  v116 = 2112;
                                  selfCopy10 = selfCopy6;
                                  v118 = 2112;
                                  v119 = v61;
                                  _os_log_impl(&dword_2531F8000, v64, OS_LOG_TYPE_ERROR, "%{public}@Execution for action set %@ completed with error: %@", buf, 0x20u);
                                }

                                objc_autoreleasePoolPop(v62);
                                v66 = v61;

                                errorCopy = v78;
                                goto LABEL_65;
                              }

                              source = sourceCopy;
                              self = selfCopy6;
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

    errorCopy = v78;
    if (v8)
    {
      actions = [(HMDActionSet *)self actions];
      v53 = [actions count];

      v54 = v8 >= v53 ? 63 : 64;
      v55 = [*(v10 + 2488) hmErrorWithCode:v54];
      if (v55)
      {
        v56 = v55;
        v57 = objc_autoreleasePoolPush();
        selfCopy9 = self;
        v59 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          v60 = HMFGetLogIdentifier();
          *buf = 138543874;
          v115 = v60;
          v116 = 2112;
          selfCopy10 = self;
          v118 = 2112;
          v119 = v56;
          _os_log_impl(&dword_2531F8000, v59, OS_LOG_TYPE_ERROR, "%{public}@Execution for action set %@ completed with error: %@", buf, 0x20u);
        }

        goto LABEL_64;
      }
    }
  }

  else
  {
  }

  v57 = objc_autoreleasePoolPush();
  selfCopy11 = self;
  v59 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
  {
    v73 = HMFGetLogIdentifier();
    *buf = 138543618;
    v115 = v73;
    v116 = 2112;
    selfCopy10 = selfCopy11;
    _os_log_impl(&dword_2531F8000, v59, OS_LOG_TYPE_INFO, "%{public}@Execution for action set %@ completed successfully", buf, 0x16u);
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

- (BOOL)isAssociatedWithAccessory:(id)accessory
{
  v16 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  actions = [(HMDActionSet *)self actions];
  v6 = [actions countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(actions);
        }

        if ([*(*(&v11 + 1) + 8 * i) isAssociatedWithAccessory:accessoryCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [actions countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  actions = [(HMDActionSet *)self actions];
  v3 = [actions na_flatMap:&__block_literal_global_152];

  return v3;
}

- (void)_handleRemoveAppDataModel:(id)model message:(id)message
{
  messageCopy = message;
  transactionResult = [messageCopy transactionResult];
  [(HMDActionSet *)self setAppData:0];
  [transactionResult markChanged];
  [messageCopy respondWithPayload:0];
}

- (void)_handleUpdateAppDataModel:(id)model message:(id)message
{
  v25 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  transactionResult = [messageCopy transactionResult];
  appData = [(HMDActionSet *)self appData];

  if (appData)
  {
    appData2 = [(HMDActionSet *)self appData];
    [appData2 updateWithModel:modelCopy];
  }

  else
  {
    v11 = [HMDApplicationData alloc];
    appDataDictionary = [modelCopy appDataDictionary];
    uuid = [(HMDActionSet *)self uuid];
    v14 = [(HMDApplicationData *)v11 initWithDictionary:appDataDictionary parentUUID:uuid];
    [(HMDActionSet *)self setAppData:v14];

    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = HMFGetLogIdentifier();
      appDataDictionary2 = [modelCopy appDataDictionary];
      v21 = 138543618;
      v22 = v18;
      v23 = 2112;
      v24 = appDataDictionary2;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Updating the application data : %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  [transactionResult markChanged];
  [messageCopy respondWithPayload:0];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateActionRequest:(id)request
{
  v40 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [requestCopy uuidForKey:*MEMORY[0x277CD2060]];
  v6 = [(HMDActionSet *)self actionWithUUID:v5];
  home = [(HMDActionSet *)self home];
  v8 = home;
  if (v6)
  {
    v9 = home == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = 2;
LABEL_40:
    v36 = [v10 hmErrorWithCode:{v11, *v38, *&v38[16], v39}];
    [requestCopy respondWithError:v36];

    goto LABEL_41;
  }

  type = [v6 type];
  if (type > 2)
  {
    if (type == 3)
    {
      v13 = v6;
      objc_opt_class();
      v24 = objc_opt_isKindOfClass() & 1;
      if (v24)
      {
        v25 = v13;
      }

      else
      {
        v25 = 0;
      }

      v26 = v25;

      if (v24)
      {
        [(HMDActionSet *)self _updateNaturalLightingAction:v13 forMessage:requestCopy];
        goto LABEL_29;
      }

      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if (type == 5)
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *v38 = 138543362;
        *&v38[4] = v20;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@This action type is not supported for update", v38, 0xCu);
      }

      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (!type)
  {
    v13 = v6;
    objc_opt_class();
    v21 = objc_opt_isKindOfClass() & 1;
    if (v21)
    {
      v22 = v13;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    if (v21)
    {
      [(HMDActionSet *)self _updateWriteAction:v13 forMessage:requestCopy];
      goto LABEL_29;
    }

    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (type != 1)
  {
LABEL_37:
    v32 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *v38 = 138543874;
      *&v38[4] = v35;
      *&v38[12] = 2112;
      *&v38[14] = v6;
      *&v38[22] = 2112;
      v39 = selfCopy4;
      _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Unknown action %@ in set %@, cannot handle update action request", v38, 0x20u);
    }

    objc_autoreleasePoolPop(v32);
    v10 = MEMORY[0x277CCA9B8];
    v11 = 3;
    goto LABEL_40;
  }

  v13 = v6;
  objc_opt_class();
  v14 = objc_opt_isKindOfClass() & 1;
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (!v14)
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v19 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
LABEL_36:

      objc_autoreleasePoolPop(v17);
      goto LABEL_37;
    }

LABEL_35:
    v30 = HMFGetLogIdentifier();
    v31 = HMActionTypeAsString();
    *v38 = 138543874;
    *&v38[4] = v30;
    *&v38[12] = 2112;
    *&v38[14] = v13;
    *&v38[22] = 2112;
    v39 = v31;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", v38, 0x20u);

    goto LABEL_36;
  }

  [(HMDActionSet *)self _updatePlaybackAction:v13 forMessage:requestCopy];
LABEL_29:

LABEL_41:
  v37 = *MEMORY[0x277D85DE8];
}

- (void)_updateNaturalLightingAction:(id)action forMessage:(id)message
{
  v29 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  messageCopy = message;
  v8 = [messageCopy dictionaryForKey:*MEMORY[0x277CD2028]];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v23 = 138543874;
    v24 = v12;
    v25 = 2112;
    v26 = actionCopy;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating natural lighting action with action info %@:%@", &v23, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [HMDLightProfileNaturalLightingActionModel alloc];
  uuid = [actionCopy uuid];
  uuid2 = [(HMDActionSet *)selfCopy uuid];
  v16 = [(HMDBackingStoreModelObject *)v13 initWithObjectChangeType:2 uuid:uuid parentUUID:uuid2];

  -[HMDLightProfileNaturalLightingActionModel setNaturalLightingEnabled:](v16, "setNaturalLightingEnabled:", [v8 hmf_BOOLForKey:*MEMORY[0x277CD0788]]);
  home = [(HMDActionSet *)selfCopy home];
  backingStore = [home backingStore];
  name = [messageCopy name];
  v20 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
  v21 = [backingStore transaction:name options:v20];

  [v21 add:v16 withMessage:messageCopy];
  [v21 run];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_updatePlaybackAction:(id)action forMessage:(id)message
{
  v87 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  messageCopy = message;
  v8 = [messageCopy dictionaryForKey:*MEMORY[0x277CD2028]];
  v9 = [v8 hmf_arrayForKey:*MEMORY[0x277CD08A0]];
  v71 = actionCopy;
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
    integerValue = [v70 integerValue];
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
    selfCopy = self;
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
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@actionInfo state %@ volume %@ playbackArchive %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v19);
    if (v73 || v72 || integerValue)
    {
      v67 = v9;
      v68 = v8;
      v69 = messageCopy;
      home = [(HMDActionSet *)selfCopy home];
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
            v35 = [home mediaProfileWithUUID:v34];
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
        actionCopy = v71;
        validate = [v71 validate];
        messageCopy = v69;
        if (validate)
        {
          v37 = validate;
          [v69 respondWithError:validate];
        }

        else
        {
          v38 = objc_alloc([v71 modelClass]);
          modelIdentifier = [v71 modelIdentifier];
          uuid = [(HMDActionSet *)selfCopy uuid];
          v41 = [v38 initWithObjectChangeType:2 uuid:modelIdentifier parentUUID:uuid];

          v42 = v41;
          integerValue2 = [v70 integerValue];
          if (integerValue2 != [v71 state])
          {
            [v42 setState:v70];
          }

          volume = [v71 volume];
          v45 = HMFEqualObjects();

          if ((v45 & 1) == 0)
          {
            [v42 setVolume:v73];
          }

          mediaProfiles = [v71 mediaProfiles];
          v47 = HMFEqualObjects();

          if ((v47 & 1) == 0)
          {
            [v42 setProfiles:v29];
            v48 = mapProfilesToAccessoryUUIDs(home, v29);
            [v42 setAccessories:v48];

            v49 = mapProfilesToServiceUUIDs(home, v29);
            [v42 setServices:v49];
          }

          playbackArchive = [v71 playbackArchive];
          v51 = HMFEqualObjects();

          if ((v51 & 1) == 0)
          {
            [v42 setEncodedPlaybackArchive:v72];
          }

          v52 = objc_autoreleasePoolPush();
          v53 = selfCopy;
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
            _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_DEFAULT, "%{public}@model state %@ volume %@ playbackArchive %@", buf, 0x2Au);

            v42 = v66;
            v53 = v64;

            v52 = v65;
          }

          objc_autoreleasePoolPop(v52);
          backingStore = [home backingStore];
          name = [v69 name];
          v61 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
          v62 = [backingStore transaction:name options:v61];

          [v62 add:v42 withMessage:v69];
          [v62 run];

          v37 = 0;
        }
      }

      else
      {
        v37 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        messageCopy = v69;
        [v69 respondWithError:v37];
        actionCopy = v71;
      }

      v9 = v67;
      v8 = v68;
      v18 = v70;
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543362;
        v80 = v26;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@At least one parameter change needed in the updateAction request", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
      home = [MEMORY[0x277CCA9B8] hmErrorWithCode:20 description:@"No action set in update action request" reason:0 suggestion:0];
      [messageCopy respondWithError:home];
      v18 = v70;
    }
  }

  else
  {
    v13 = v10;
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v80 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@At least one media profile needed in the updateAction request", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20 description:@"At least one media profile needed in the updateAction request" reason:0 suggestion:0];
    [messageCopy respondWithError:v18];
    v10 = v13;
  }

  v63 = *MEMORY[0x277D85DE8];
}

- (void)_updateWriteAction:(id)action forMessage:(id)message
{
  actionCopy = action;
  messageCopy = message;
  v8 = [messageCopy uuidForKey:*MEMORY[0x277CD2060]];
  v9 = [messageCopy dictionaryForKey:*MEMORY[0x277CD2028]];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CD21B8]];
  if (v10)
  {
    characteristic = [actionCopy characteristic];
    v25 = v10;
    v12 = [characteristic validateValueForWrite:v10 outValue:&v25];
    v13 = v25;

    if (v12)
    {
      [messageCopy respondWithError:v12];
    }

    else
    {
      v15 = [HMDCharacteristicWriteActionModel alloc];
      uuid = [(HMDActionSet *)self uuid];
      v22 = [(HMDBackingStoreModelObject *)v15 initWithObjectChangeType:2 uuid:v8 parentUUID:uuid];

      [(HMDCharacteristicWriteActionModel *)v22 setTargetValue:v10];
      home = [(HMDActionSet *)self home];
      backingStore = [home backingStore];
      [messageCopy name];
      v19 = v23 = v13;
      v20 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      [backingStore transaction:v19 options:v20];
      v21 = v24 = v8;

      v13 = v23;
      [v21 add:v22 withMessage:messageCopy];
      [v21 run];

      v8 = v24;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
    [messageCopy respondWithError:v14];
  }
}

- (BOOL)_handleRenameActionSetTransaction:(id)transaction message:(id)message
{
  v31[3] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  messageCopy = message;
  name = [transactionCopy name];
  hm_truncatedNameString = [name hm_truncatedNameString];

  home = [(HMDActionSet *)self home];
  name2 = [(HMDActionSet *)self name];
  v12 = [home replaceName:name2 withNewName:hm_truncatedNameString];

  [(HMDActionSet *)self setName:hm_truncatedNameString];
  v30[0] = *MEMORY[0x277CD2050];
  uuid = [(HMDActionSet *)self uuid];
  uUIDString = [uuid UUIDString];
  v15 = *MEMORY[0x277CD2040];
  v31[0] = uUIDString;
  v31[1] = hm_truncatedNameString;
  v16 = *MEMORY[0x277CD0640];
  v30[1] = v15;
  v30[2] = v16;
  uuid2 = [home uuid];
  uUIDString2 = [uuid2 UUIDString];
  v31[2] = uUIDString2;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];

  logAndPostNotification(@"HMDActionSetRenamedNotification", self, v19);
  [messageCopy respondWithPayload:v19];
  v20 = objc_autoreleasePoolPush();
  selfCopy = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    v26 = 138543618;
    v27 = v23;
    v28 = 2112;
    v29 = v19;
    _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Responded to client with payload : %@", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
  v24 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_handleRenameRequest:(id)request
{
  v53 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [requestCopy stringForKey:*MEMORY[0x277CD2040]];
  v6 = v5;
  if (!v5 || ![v5 length])
  {
    v7 = MEMORY[0x277CD1800];
    type = [(HMDActionSet *)self type];
    LOBYTE(v7) = [v7 isBuiltinActionSetType:type];

    if ((v7 & 1) == 0)
    {
      v36 = objc_autoreleasePoolPush();
      selfCopy = self;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = HMFGetLogIdentifier();
        type2 = [(HMDActionSet *)selfCopy type];
        name = [(HMDActionSet *)selfCopy name];
        *buf = 138543874;
        v48 = v39;
        v49 = 2112;
        v50 = type2;
        v51 = 2112;
        v52 = name;
        _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Attempt to rename the actionSet %@/%@ to nil name", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v36);
      v23 = MEMORY[0x277CCA9B8];
      v24 = 20;
      goto LABEL_17;
    }

    v9 = +[HMDHome getBuiltinActionSets];
    type3 = [(HMDActionSet *)self type];
    v11 = [v9 objectForKeyedSubscript:type3];
    v12 = HMDLocalizedStringForKey(v11);

    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      type4 = [(HMDActionSet *)selfCopy2 type];
      *buf = 138543874;
      v48 = v16;
      v49 = 2112;
      v50 = type4;
      v51 = 2112;
      v52 = v12;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Resetting the name of built-in actionSet of type %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v6 = v12;
  }

  v18 = HMMaxLengthForNaming();
  if ([v6 length] <= v18)
  {
    home = [(HMDActionSet *)self home];
    if (home)
    {
      name2 = [(HMDActionSet *)self name];
      v27 = [home replaceActionSetName:name2 withNewName:v6];

      if (!v27)
      {
        v28 = [HMDActionSetModel alloc];
        uuid = [(HMDActionSet *)self uuid];
        uuid2 = [home uuid];
        v31 = [(HMDBackingStoreModelObject *)v28 initWithObjectChangeType:2 uuid:uuid parentUUID:uuid2];

        [(HMDActionSetModel *)v31 setName:v6];
        backingStore = [home backingStore];
        name3 = [requestCopy name];
        v34 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
        v35 = [backingStore transaction:name3 options:v34];

        [v35 add:v31 withMessage:requestCopy];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __37__HMDActionSet__handleRenameRequest___block_invoke;
        v43[3] = &unk_279734D88;
        v44 = home;
        v45 = v6;
        selfCopy3 = self;
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

    [requestCopy respondWithError:v27];
    goto LABEL_20;
  }

  v19 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543362;
    v48 = v22;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@New name is longer than the pre-defined max length", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v19);
  v23 = MEMORY[0x277CCA9B8];
  v24 = 46;
LABEL_17:
  home = [v23 hmErrorWithCode:v24];
  [requestCopy respondWithError:home];
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

- (void)_handleRemoveActionTransaction:(id)transaction message:(id)message
{
  v25 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  messageCopy = message;
  transactionResult = [messageCopy transactionResult];
  uuid = [transactionCopy uuid];
  v10 = [(HMDActionSet *)self actionWithUUID:uuid];
  home = [(HMDActionSet *)self home];
  v12 = home;
  if (v10 && home)
  {
    [(HMDActionSet *)self _removeAction:v10 message:messageCopy];
    if ([v12 isOwnerUser])
    {
      [transactionResult markChanged];
    }

    else if ([v12 isAdminUser])
    {
      [transactionResult markLocalChanged];
    }

    [transactionResult markSaveToAssistant];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
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
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Couldn't remove action as it was not found : %@ / %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_handleRemovalOfActions:(id)actions transaction:(id)transaction
{
  v18 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  transactionCopy = transaction;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [actionsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(actionsCopy);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) modelObjectWithChangeType:3];
        [transactionCopy add:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [actionsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleRemovalOfAction:(id)action transaction:(id)transaction
{
  v12 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v6 = MEMORY[0x277CBEA60];
  transactionCopy = transaction;
  actionCopy2 = action;
  v9 = [v6 arrayWithObjects:&actionCopy count:1];

  [(HMDActionSet *)self _handleRemovalOfActions:v9 transaction:transactionCopy, actionCopy, v12];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleRemoveActionRequest:(id)request
{
  v28 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [requestCopy uuidForKey:*MEMORY[0x277CD2060]];
  v6 = [(HMDActionSet *)self actionWithUUID:v5];
  home = [(HMDActionSet *)self home];
  v8 = home;
  if (v6)
  {
    v9 = home == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [requestCopy respondWithError:v10];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v22 = 138543874;
      v23 = v15;
      v24 = 2112;
      v25 = v6;
      v26 = 2112;
      v27 = requestCopy;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Removing action from actionSet : %@ / %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    backingStore = [v8 backingStore];
    name = [requestCopy name];
    v18 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v19 = [backingStore transaction:name options:v18];

    v20 = [v6 modelObjectWithChangeType:3];
    [v19 add:v20 withMessage:requestCopy];
    [v19 run];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_removeAction:(id)action message:(id)message
{
  v55 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  messageCopy = message;
  home = [(HMDActionSet *)self home];
  if (home)
  {
    v9 = actionCopy;
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

    if (v11 && ([messageCopy proxyConnection], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, v14 = objc_msgSend(messageCopy, "isEntitledForShortcutsAutomationAccess"), v13, (v14 & 1) == 0))
    {
      v40 = objc_autoreleasePoolPush();
      selfCopy = self;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = HMFGetLogIdentifier();
        *buf = 138543362;
        v50 = v43;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@Missing ShortcutsAutomationAccess Entitlement for Remove", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v40);
      v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:80 description:@"Missing Entitlement" reason:0 suggestion:0];
      [messageCopy respondWithError:v29];
    }

    else
    {
      [(HMDActionSet *)self removeAction:v9];
      v15 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v18 = v46 = actionCopy;
        [v9 uuid];
        v19 = v45 = messageCopy;
        [v19 UUIDString];
        v20 = v44 = v15;
        [(HMDActionSet *)selfCopy2 uuid];
        v22 = v21 = home;
        uUIDString = [v22 UUIDString];
        *buf = 138543874;
        v50 = v18;
        v51 = 2112;
        v52 = v20;
        v53 = 2112;
        v54 = uUIDString;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Remove Action uuid: %@, Action set uuid: %@", buf, 0x20u);

        home = v21;
        messageCopy = v45;

        v15 = v44;
        actionCopy = v46;
      }

      objc_autoreleasePoolPop(v15);
      v47[0] = *MEMORY[0x277CD2060];
      uuid = [v9 uuid];
      uUIDString2 = [uuid UUIDString];
      v48[0] = uUIDString2;
      v47[1] = *MEMORY[0x277CD0640];
      [home uuid];
      v27 = v26 = home;
      uUIDString3 = [v27 UUIDString];
      v48[1] = uUIDString3;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];

      home = v26;
      [messageCopy respondWithPayload:v29];
    }
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      name = [(HMDActionSet *)selfCopy3 name];
      [(HMDActionSet *)selfCopy3 uuid];
      v36 = v35 = actionCopy;
      [v36 UUIDString];
      v38 = v37 = messageCopy;
      *buf = 138543874;
      v50 = v33;
      v51 = 2112;
      v52 = name;
      v53 = 2112;
      v54 = v38;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@%@/%@: Ignoring _removeAction since home is nil", buf, 0x20u);

      actionCopy = v35;
      messageCopy = v37;
    }

    objc_autoreleasePoolPop(v30);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:v11];
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_handleAddLightProfileNaturalLightingActionTransaction:(id)transaction message:(id)message
{
  messageCopy = message;
  transactionCopy = transaction;
  v10 = 0;
  v8 = [[HMDLightProfileNaturalLightingAction alloc] initWithModelObject:transactionCopy parent:self error:&v10];

  v9 = v10;
  if (v8)
  {
    [(HMDActionSet *)self _handleAddNewAction:v8 message:messageCopy];
  }

  else
  {
    [messageCopy respondWithError:v9];
  }
}

- (void)_handleAddShortcutActionTransaction:(id)transaction message:(id)message
{
  v21 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  messageCopy = message;
  data = [transactionCopy data];

  if (data)
  {
    v9 = [HMDShortcutAction alloc];
    data2 = [transactionCopy data];
    uuid = [transactionCopy uuid];
    v12 = [(HMDShortcutAction *)v9 initWithSerializedShortcut:data2 uuid:uuid actionSet:self];

    [(HMDActionSet *)self _handleAddNewAction:v12 message:messageCopy];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Add shortcut invalid parameter: no data", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20 description:@"Invalid action properties" reason:0 suggestion:0];
    [messageCopy respondWithError:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_handleAddMediaPlaybackActionTransaction:(id)transaction message:(id)message
{
  v59 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  messageCopy = message;
  profiles = [transactionCopy profiles];
  if ([profiles count])
  {
    volume = [transactionCopy volume];
    if (volume || ([transactionCopy state], volume = objc_claimAutoreleasedReturnValue(), objc_msgSend(volume, "integerValue")))
    {

LABEL_5:
      selfCopy = self;
      home = [(HMDActionSet *)self home];
      v11 = MEMORY[0x277CBEB58];
      profiles2 = [transactionCopy profiles];
      v13 = [v11 setWithCapacity:{objc_msgSend(profiles2, "count")}];

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      profiles3 = [transactionCopy profiles];
      v15 = [profiles3 countByEnumeratingWithState:&v44 objects:v48 count:16];
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
              objc_enumerationMutation(profiles3);
            }

            v19 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v44 + 1) + 8 * i)];
            v20 = [home mediaProfileWithUUID:v19];
            if (v20)
            {
              [v13 addObject:v20];
            }
          }

          v16 = [profiles3 countByEnumeratingWithState:&v44 objects:v48 count:16];
        }

        while (v16);
      }

      if ([v13 count])
      {
        v43 = 0;
        v21 = [[HMDMediaPlaybackAction alloc] initWithModelObject:transactionCopy parent:selfCopy error:&v43];
        v22 = v43;
        if (v21)
        {
          [(HMDActionSet *)selfCopy _handleAddNewAction:v21 message:messageCopy];
        }

        else
        {
          v36 = objc_autoreleasePoolPush();
          v37 = selfCopy;
          v38 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v39 = HMFGetLogIdentifier();
            *buf = 138543618;
            v50 = v39;
            v51 = 2112;
            v52 = v22;
            _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Failed to add media playback action with error: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v36);
          [messageCopy respondWithError:v22];
        }
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        v32 = selfCopy;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          profiles4 = [transactionCopy profiles];
          *buf = 138543618;
          v50 = v34;
          v51 = 2112;
          v52 = profiles4;
          _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Add media action could not match profile UUIDs to profiles. UUIDs: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Could not map profile UUIDs to media profiles" reason:0 suggestion:0];
        [messageCopy respondWithError:v22];
      }

      goto LABEL_29;
    }

    encodedPlaybackArchive = [transactionCopy encodedPlaybackArchive];

    if (encodedPlaybackArchive)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  v23 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = HMFGetLogIdentifier();
    profiles5 = [transactionCopy profiles];
    volume2 = [transactionCopy volume];
    state = [transactionCopy state];
    encodedPlaybackArchive2 = [transactionCopy encodedPlaybackArchive];
    *buf = 138544386;
    v50 = v26;
    v51 = 2112;
    v52 = profiles5;
    v53 = 2112;
    v54 = volume2;
    v55 = 2112;
    v56 = state;
    v57 = 2112;
    v58 = encodedPlaybackArchive2;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Add media action invalid parameter: profiles : [%@], volume: %@, state: %@, encodedPlaybackArchive: %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v23);
  home = [MEMORY[0x277CCA9B8] hmErrorWithCode:20 description:@"Invalid action properties" reason:0 suggestion:0];
  [messageCopy respondWithError:home];
LABEL_29:

  v40 = *MEMORY[0x277D85DE8];
}

- (void)_handleAddCharacteristicWriteActionTransaction:(id)transaction message:(id)message
{
  v63 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  messageCopy = message;
  targetValue = [transactionCopy targetValue];
  if (!targetValue)
  {
    goto LABEL_26;
  }

  v9 = targetValue;
  accessory = [transactionCopy accessory];
  if (!accessory)
  {
    goto LABEL_25;
  }

  v11 = accessory;
  serviceID = [transactionCopy serviceID];
  if (!serviceID)
  {

LABEL_25:
    goto LABEL_26;
  }

  v13 = serviceID;
  characteristicID = [transactionCopy characteristicID];

  if (!characteristicID)
  {
LABEL_26:
    home = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [messageCopy respondWithError:home];
    goto LABEL_27;
  }

  home = [(HMDActionSet *)self home];
  v16 = objc_alloc(MEMORY[0x277CCAD78]);
  accessory2 = [transactionCopy accessory];
  v18 = [v16 initWithUUIDString:accessory2];

  v19 = [home accessoryWithUUID:v18];
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

  characteristicID2 = [transactionCopy characteristicID];
  serviceID2 = [transactionCopy serviceID];
  v24 = [v21 findCharacteristic:characteristicID2 forService:serviceID2];

  if (v24)
  {
    v51 = v18;
    transactionResult = [messageCopy transactionResult];
    if ([transactionResult source] == 1)
    {
      v48 = v21;
      v49 = home;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      actions = [(HMDActionSet *)self actions];
      v26 = [(HMDCharacteristicWriteAction *)actions countByEnumeratingWithState:&v52 objects:v62 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v53;
        while (2)
        {
          v29 = 0;
          do
          {
            if (*v53 != v28)
            {
              objc_enumerationMutation(actions);
            }

            v30 = *(*(&v52 + 1) + 8 * v29);
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
              v39 = objc_autoreleasePoolPush();
              selfCopy = self;
              v41 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                v42 = HMFGetLogIdentifier();
                uuid = [v33 uuid];
                *buf = 138543874;
                v57 = v42;
                v58 = 2112;
                v59 = v24;
                v60 = 2112;
                v61 = uuid;
                _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "%{public}@Action for chr (%@) has already existed with UUID %@. Cleaning from transaction store.", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v39);
              v44 = [MEMORY[0x277CCA9B8] hmErrorWithCode:1];
              [messageCopy respondWithError:v44];

              [transactionCopy setObjectChangeType:3];
              home = v49;
              backingStore = [v49 backingStore];
              v46 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
              v47 = [backingStore transaction:@"RemoveUnpushedActionModel" options:v46];

              [v47 add:transactionCopy];
              [v47 save];

              v21 = v48;
              goto LABEL_32;
            }

            ++v29;
          }

          while (v27 != v29);
          v27 = [(HMDCharacteristicWriteAction *)actions countByEnumeratingWithState:&v52 objects:v62 count:16];
          if (v27)
          {
            continue;
          }

          break;
        }
      }

      v21 = v48;
      home = v49;
    }

    v34 = [HMDCharacteristicWriteAction alloc];
    uuid2 = [transactionCopy uuid];
    targetValue2 = [transactionCopy targetValue];
    actions = [(HMDCharacteristicWriteAction *)v34 initWithUUID:uuid2 characteristic:v24 targetValue:targetValue2 actionSet:self];

    [(HMDActionSet *)self _handleAddNewAction:actions message:messageCopy];
LABEL_32:

    v18 = v51;
  }

  else
  {
    v38 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:v38];
  }

LABEL_27:
  v37 = *MEMORY[0x277D85DE8];
}

- (void)sendNotificationWithAction:(id)action message:(id)message
{
  v27[3] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  messageCopy = message;
  name = [messageCopy name];
  v9 = [name isEqualToString:@"kTransactionUpdate"];

  if (v9)
  {
    [messageCopy respondWithSuccess];
  }

  else
  {
    v26[0] = *MEMORY[0x277CD2060];
    uuid = [actionCopy uuid];
    uUIDString = [uuid UUIDString];
    v27[0] = uUIDString;
    v26[1] = *MEMORY[0x277CD2028];
    dictionaryRepresentation = [actionCopy dictionaryRepresentation];
    v27[1] = dictionaryRepresentation;
    v26[2] = *MEMORY[0x277CD0640];
    home = [(HMDActionSet *)self home];
    uuid2 = [home uuid];
    uUIDString2 = [uuid2 UUIDString];
    v27[2] = uUIDString2;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];

    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v20;
      v24 = 2112;
      v25 = actionCopy;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Responding to client that ActionSet is successfully added : %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    [messageCopy respondWithPayload:v16];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handleAddNewAction:(id)action message:(id)message
{
  v55 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  messageCopy = message;
  v8 = actionCopy;
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
    proxyConnection = [messageCopy proxyConnection];
    if (proxyConnection)
    {
      v12 = proxyConnection;
      isEntitledForShortcutsAutomationAccess = [messageCopy isEntitledForShortcutsAutomationAccess];

      if ((isEntitledForShortcutsAutomationAccess & 1) == 0)
      {
        v32 = objc_autoreleasePoolPush();
        selfCopy = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543362;
          v50 = v35;
          _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Missing ShortcutsAutomationAccess Entitlement for Add", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v32);
        transactionResult = [MEMORY[0x277CCA9B8] hmErrorWithCode:80 description:@"Missing Entitlement" reason:0 suggestion:0];
        [messageCopy respondWithError:transactionResult];
        goto LABEL_37;
      }
    }
  }

  [(HMDActionSet *)self addAction:v8];
  transactionResult = [messageCopy transactionResult];
  [transactionResult markChanged];
  [transactionResult markSaveToAssistant];
  v15 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = HMFGetLogIdentifier();
    uuid = [v8 uuid];
    [uuid UUIDString];
    v20 = v46 = messageCopy;
    [(HMDActionSet *)selfCopy2 uuid];
    v47 = transactionResult;
    v21 = v8;
    v23 = v22 = v10;
    uUIDString = [v23 UUIDString];
    *buf = 138543874;
    v50 = v18;
    v51 = 2112;
    v52 = v20;
    v53 = 2112;
    v54 = uUIDString;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Add Action uuid: %@, Action set uuid: %@", buf, 0x20u);

    v10 = v22;
    v8 = v21;
    transactionResult = v47;

    messageCopy = v46;
  }

  objc_autoreleasePoolPop(v15);
  type = [v8 type];
  if (type > 2)
  {
    if ((type - 3) >= 2)
    {
      if (type == 5)
      {
        v36 = objc_autoreleasePoolPush();
        v37 = selfCopy2;
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = HMFGetLogIdentifier();
          *buf = 138543362;
          v50 = v39;
          _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Native matter actions are not supported in HH1", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v36);
      }

      goto LABEL_37;
    }

LABEL_20:
    [(HMDActionSet *)selfCopy2 sendNotificationWithAction:v8 message:messageCopy];
    goto LABEL_37;
  }

  switch(type)
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
        v29 = objc_autoreleasePoolPush();
        v30 = selfCopy2;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
LABEL_34:
          v41 = HMFGetLogIdentifier();
          HMActionTypeAsString();
          v48 = transactionResult;
          v42 = v8;
          v44 = v43 = v10;
          *buf = 138543874;
          v50 = v41;
          v51 = 2112;
          v52 = v26;
          v53 = 2112;
          v54 = v44;
          _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);

          v10 = v43;
          v8 = v42;
          transactionResult = v48;
        }

LABEL_35:

        objc_autoreleasePoolPop(v29);
        goto LABEL_36;
      }

LABEL_32:
      [(HMDActionSet *)selfCopy2 sendNotificationWithAction:v26 message:messageCopy];
LABEL_36:

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
        v29 = objc_autoreleasePoolPush();
        v30 = selfCopy2;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      goto LABEL_32;
  }

LABEL_37:

  v45 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateActionSet:(id)set
{
  v52 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    messagePayload = [setCopy messagePayload];
    *buf = 138543874;
    v47 = v8;
    v48 = 2112;
    v49 = setCopy;
    v50 = 2112;
    v51 = messagePayload;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Received request to update ActionSet %@ / %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  home = [(HMDActionSet *)selfCopy home];
  type = [(HMDActionSet *)selfCopy type];
  v12 = [type isEqualToString:*MEMORY[0x277CCF1A0]];

  if (v12)
  {
    responseHandler = [setCopy responseHandler];
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    responseHandler[2](responseHandler, v14, 0);
  }

  else
  {
    backingStore = [home backingStore];
    name = [setCopy name];
    v17 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v18 = [backingStore transaction:name options:v17];

    messagePayload2 = [setCopy messagePayload];
    v20 = [messagePayload2 hmf_stringForKey:*MEMORY[0x277CD2040]];

    if (!v20)
    {
      goto LABEL_11;
    }

    name2 = [(HMDActionSet *)selfCopy name];
    v22 = [v20 isEqualToString:name2];

    if (v22)
    {
      goto LABEL_11;
    }

    name3 = [(HMDActionSet *)selfCopy name];
    v24 = [home replaceActionSetName:name3 withNewName:v20];

    if (v24)
    {
      v25 = objc_autoreleasePoolPush();
      v26 = selfCopy;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543618;
        v47 = v28;
        v48 = 2112;
        v49 = v24;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to rename actionset with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      [setCopy respondWithError:v24];

      v14 = 0;
      responseHandler = 0;
    }

    else
    {
LABEL_11:
      messagePayload3 = [setCopy messagePayload];
      v44 = 0;
      v45 = 0;
      v30 = [(HMDActionSet *)selfCopy _updateActionSetFromDictionary:messagePayload3 transaction:v18 response:&v45 error:&v44];
      v14 = v45;
      responseHandler = v44;

      if (v30)
      {
        v31 = objc_autoreleasePoolPush();
        v32 = selfCopy;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = HMFGetLogIdentifier();
          *buf = 138543362;
          v47 = v34;
          _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Updating actionSet", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v31);
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __39__HMDActionSet__handleUpdateActionSet___block_invoke;
        v38[3] = &unk_279727688;
        v39 = setCopy;
        v40 = v20;
        v41 = v32;
        v42 = home;
        v14 = v14;
        v43 = v14;
        [v18 run:v38];
      }

      else
      {
        name4 = [(HMDActionSet *)selfCopy name];
        v36 = [home replaceActionSetName:v20 withNewName:name4];

        [setCopy respondWithError:responseHandler];
      }
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (BOOL)_updateActionSetFromDictionary:(void *)dictionary transaction:(void *)transaction response:(void *)response error:
{
  v94 = *MEMORY[0x277D85DE8];
  v7 = a2;
  dictionaryCopy = dictionary;
  if (!self)
  {
    v35 = 0;
    goto LABEL_58;
  }

  v9 = [v7 hmf_arrayForKey:*MEMORY[0x277CD2030]];
  v73 = objc_alloc_init(MEMORY[0x277CBEB18]);
  actions = [self actions];
  v72 = [actions mutableCopy];

  home = [self home];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = v9;
  v71 = [obj countByEnumeratingWithState:&v83 objects:v93 count:16];
  if (!v71)
  {
    goto LABEL_26;
  }

  v70 = *v84;
  v67 = v7;
  while (2)
  {
    for (i = 0; i != v71; ++i)
    {
      if (*v84 != v70)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v83 + 1) + 8 * i);
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
        v51 = objc_autoreleasePoolPush();
        selfCopy = self;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v54 = HMFGetLogIdentifier();
          name = [selfCopy name];
          *buf = 138543618;
          v90 = v54;
          v91 = 2112;
          v92 = name;
          _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_ERROR, "%{public}@Can't update action set %@; invalid serialized action", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v51);
        v7 = v67;
        v27 = obj;
        if (response)
        {
          *response = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        }

        goto LABEL_55;
      }

      v15 = [home actionWithDictionaryRepresentation:v14];
      if (!v15)
      {
        v56 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v58 = HMFGetOSLogHandle();
        v7 = v67;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v59 = HMFGetLogIdentifier();
          *buf = 138543618;
          v90 = v59;
          v91 = 2112;
          v92 = v14;
          _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize action: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v56);
        v27 = obj;
        if (response)
        {
          *response = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        }

LABEL_55:
        goto LABEL_56;
      }

      v16 = v15;
      [v73 addObject:v15];
      selfCopy3 = self;
      [v16 updateActionSetIfNil:self];
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v18 = v72;
      v19 = [v18 countByEnumeratingWithState:&v79 objects:v88 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v80;
LABEL_14:
        v22 = 0;
        while (1)
        {
          if (*v80 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v79 + 1) + 8 * v22);
          if ([v23 isCompatibleWithAction:v16])
          {
            break;
          }

          if (v20 == ++v22)
          {
            v20 = [v18 countByEnumeratingWithState:&v79 objects:v88 count:16];
            if (v20)
            {
              goto LABEL_14;
            }

            goto LABEL_20;
          }
        }

        v24 = v23;

        if (!v24)
        {
          goto LABEL_23;
        }

        uuid = [v24 uuid];
        [v16 setUuid:uuid];

        v26 = [v16 modelObjectWithChangeType:2];
        [dictionaryCopy add:v26];

        [v18 removeObject:v24];
      }

      else
      {
LABEL_20:

LABEL_23:
        v24 = [v16 modelObjectWithChangeType:1];
        [dictionaryCopy add:v24];
      }

      self = selfCopy3;
    }

    v7 = v67;
    v71 = [obj countByEnumeratingWithState:&v83 objects:v93 count:16];
    if (v71)
    {
      continue;
    }

    break;
  }

LABEL_26:
  v27 = obj;

  if ([home validateActionsDoNotConflict:v73])
  {
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v28 = v72;
    v29 = [v28 countByEnumeratingWithState:&v75 objects:v87 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v76;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v76 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = [*(*(&v75 + 1) + 8 * j) modelObjectWithChangeType:3];
          [dictionaryCopy add:v33];
        }

        v30 = [v28 countByEnumeratingWithState:&v75 objects:v87 count:16];
      }

      while (v30);
    }

    v34 = [v7 hmd_appDataDictionaryWithError:response];
    v35 = v34 != 0;
    if (v34)
    {
      appData = [self appData];
      uuid2 = [self uuid];
      v38 = [HMDApplicationDataModel modelWithAppDataPayload:v34 existingAppData:appData parentUUID:uuid2];

      if (v38)
      {
        [dictionaryCopy add:v38];
      }

      v39 = [v7 hmf_stringForKey:*MEMORY[0x277CD2040]];
      if (v39)
      {
        name2 = [self name];
        if ([v39 isEqualToString:name2])
        {
          goto LABEL_41;
        }

        v41 = [v39 length];

        if (v41)
        {
          v42 = [HMDActionSetModel alloc];
          uuid3 = [self uuid];
          uuid4 = [home uuid];
          name2 = [(HMDBackingStoreModelObject *)v42 initWithObjectChangeType:2 uuid:uuid3 parentUUID:uuid4];

          [(HMDActionSetModel *)name2 setName:v39];
          [dictionaryCopy add:name2];
LABEL_41:
        }
      }

      v45 = [HMDActionSet alloc];
      uuid5 = [self uuid];
      type = [self type];
      v48 = [(HMDActionSet *)v45 initWithName:v39 uuid:uuid5 type:type home:home queue:0];

      [(HMDActionSet *)v48 setActions:v73];
      if (transaction)
      {
        createPayload = [(HMDActionSet *)v48 createPayload];
        v50 = [createPayload mutableCopy];

        [v50 setObject:v34 forKeyedSubscript:@"kAppDataInformationKey"];
        *transaction = [v50 copy];
      }

      v27 = obj;
    }
  }

  else
  {
    v62 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v64 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      v65 = HMFGetLogIdentifier();
      *buf = 138543618;
      v90 = v65;
      v91 = 2112;
      v92 = selfCopy4;
      _os_log_impl(&dword_2531F8000, v64, OS_LOG_TYPE_ERROR, "%{public}@Can't update action set %@; conflicting actions", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v62);
    if (response)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      *response = v35 = 0;
    }

    else
    {
LABEL_56:
      v35 = 0;
    }
  }

LABEL_58:
  v60 = *MEMORY[0x277D85DE8];
  return v35;
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

- (id)_addLightProfileNaturalLightingModelWithUUID:(id)d message:(id)message
{
  v38 = *MEMORY[0x277D85DE8];
  dCopy = d;
  messageCopy = message;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v33 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Add light profile natural lighting write action model", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [messageCopy dictionaryForKey:*MEMORY[0x277CD2028]];
  v13 = [v12 mutableCopy];

  if (!v13)
  {
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
    [messageCopy respondWithError:v14];
    v24 = 0;
    goto LABEL_16;
  }

  [v13 setObject:dCopy forKeyedSubscript:*MEMORY[0x277CD2060]];
  v14 = [HMDLightProfileNaturalLightingAction actionWithDictionaryRepresentation:v13 actionSet:selfCopy];
  if (v14)
  {
    actions = [(HMDActionSet *)selfCopy actions];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __69__HMDActionSet__addLightProfileNaturalLightingModelWithUUID_message___block_invoke;
    v30[3] = &unk_27972AF48;
    v16 = v14;
    v31 = v16;
    v17 = [actions na_firstObjectPassingTest:v30];

    if (v17)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = selfCopy;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        lightProfileUUID = [v16 lightProfileUUID];
        *buf = 138543874;
        v33 = v21;
        v34 = 2112;
        v35 = v17;
        v36 = 2112;
        v37 = lightProfileUUID;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Action already exists for light profile with UUID %@:%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:1];
      [messageCopy respondWithError:v23];
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
      [messageCopy respondWithError:v29];

      v23 = 0;
    }

    v24 = 0;
LABEL_14:

    v25 = v31;
    goto LABEL_15;
  }

  v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  [messageCopy respondWithError:v25];
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

- (id)_addMediaPlaybackActionModelWithUUID:(id)d message:(id)message
{
  v68 = *MEMORY[0x277D85DE8];
  dCopy = d;
  messageCopy = message;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v59 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Add media playback action model", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [HMDMediaPlaybackActionModel alloc];
  uuid = [(HMDActionSet *)selfCopy uuid];
  v14 = [(HMDBackingStoreModelObject *)v12 initWithObjectChangeType:1 uuid:dCopy parentUUID:uuid];

  v15 = [messageCopy dictionaryForKey:*MEMORY[0x277CD2028]];
  [(HMDMediaPlaybackActionModel *)v14 loadModelWithActionInformation:v15];
  home = [(HMDActionSet *)selfCopy home];
  profiles = [(HMDMediaPlaybackActionModel *)v14 profiles];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __61__HMDActionSet__addMediaPlaybackActionModelWithUUID_message___block_invoke;
  v55[3] = &unk_279723D68;
  v18 = home;
  v56 = v18;
  v19 = [profiles na_map:v55];

  profiles2 = [(HMDMediaPlaybackActionModel *)v14 profiles];
  v21 = mapProfilesToAccessoryUUIDs(v18, profiles2);
  [(HMDMediaPlaybackActionModel *)v14 setAccessories:v21];

  profiles3 = [(HMDMediaPlaybackActionModel *)v14 profiles];
  v23 = mapProfilesToServiceUUIDs(v18, profiles3);
  [(HMDMediaPlaybackActionModel *)v14 setServices:v23];

  if ([v19 count] && (-[HMDMediaPlaybackActionModel accessories](v14, "accessories"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "count"), v24, v25) && v18)
  {
    v47 = v18;
    v48 = dCopy;
    v49 = v15;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    actions = [(HMDActionSet *)selfCopy actions];
    v27 = [actions countByEnumeratingWithState:&v51 objects:v57 count:16];
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
            objc_enumerationMutation(actions);
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
            mediaProfiles = [v33 mediaProfiles];
            v35 = [mediaProfiles intersectsSet:v19];

            if (v35)
            {
              v44 = [MEMORY[0x277CCA9B8] hmErrorWithCode:1];
              [messageCopy respondWithError:v44];

              goto LABEL_24;
            }
          }
        }

        v28 = [actions countByEnumeratingWithState:&v51 objects:v57 count:16];
        if (v28)
        {
          continue;
        }

        break;
      }
    }

    actions = [(HMDMediaPlaybackActionModel *)v14 validate];
    if (actions)
    {
      [messageCopy respondWithError:actions];
LABEL_24:
      v43 = 0;
      dCopy = v48;
    }

    else
    {
      v43 = v14;
      dCopy = v48;
    }

    v15 = v49;
    v18 = v47;
  }

  else
  {
    v36 = objc_autoreleasePoolPush();
    v37 = selfCopy;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      [(HMDMediaPlaybackActionModel *)v14 accessories];
      v50 = v15;
      v40 = messageCopy;
      v42 = v41 = dCopy;
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
      _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Attempt to add playback action model with UUID (%@) and mediaProfiles: (%@) and accessories (%@) on home (%@)", buf, 0x34u);

      dCopy = v41;
      messageCopy = v40;
      v15 = v50;
    }

    objc_autoreleasePoolPop(v36);
    actions = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:actions];
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

- (id)_addCharacteristicWriteActionModelWithUUID:(id)d message:(id)message
{
  v72 = *MEMORY[0x277D85DE8];
  dCopy = d;
  messageCopy = message;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v71 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Add characteristic write action model", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [HMDCharacteristicWriteActionModel alloc];
  uuid = [(HMDActionSet *)selfCopy uuid];
  v14 = [(HMDBackingStoreModelObject *)v12 initWithObjectChangeType:1 uuid:dCopy parentUUID:uuid];

  v15 = [messageCopy dictionaryForKey:*MEMORY[0x277CD2028]];
  [(HMDCharacteristicWriteActionModel *)v14 loadModelWithActionInformation:v15];
  home = [(HMDActionSet *)selfCopy home];
  v17 = objc_alloc(MEMORY[0x277CCAD78]);
  accessory = [(HMDCharacteristicWriteActionModel *)v14 accessory];
  v19 = [v17 initWithUUIDString:accessory];
  v20 = [home accessoryWithUUID:v19];

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

  characteristicID = [(HMDCharacteristicWriteActionModel *)v14 characteristicID];
  serviceID = [(HMDCharacteristicWriteActionModel *)v14 serviceID];
  v25 = [v22 findCharacteristic:characteristicID forService:serviceID];

  v56 = v25;
  if (v25 && home)
  {
    v50 = v22;
    v51 = home;
    v52 = v15;
    v53 = v14;
    v54 = messageCopy;
    v55 = dCopy;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    actions = [(HMDActionSet *)selfCopy actions];
    v27 = v25;
    v62 = [actions countByEnumeratingWithState:&v65 objects:v69 count:16];
    if (!v62)
    {
      goto LABEL_26;
    }

    v28 = *v66;
    v60 = *v66;
    v61 = actions;
    while (1)
    {
      for (i = 0; i != v62; ++i)
      {
        if (*v66 != v28)
        {
          objc_enumerationMutation(actions);
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
          characteristic = [v32 characteristic];
          accessory2 = [characteristic accessory];
          service = [characteristic service];
          instanceID = [characteristic instanceID];
          instanceID2 = [v27 instanceID];
          if ([instanceID isEqual:instanceID2])
          {
            uuid2 = [accessory2 uuid];
            accessory3 = [v27 accessory];
            uuid3 = [accessory3 uuid];
            if ([uuid2 isEqual:uuid3])
            {
              [service instanceID];
              v40 = v57 = uuid2;
              [v27 service];
              v41 = v59 = accessory2;
              instanceID3 = [v41 instanceID];
              v58 = [v40 isEqual:instanceID3];

              v27 = v56;
              accessory2 = v59;

              v28 = v60;
              actions = v61;
              if (v58)
              {
                v46 = [MEMORY[0x277CCA9B8] hmErrorWithCode:1];
                messageCopy = v54;
                [v54 respondWithError:v46];

                v47 = 0;
                dCopy = v55;
                v15 = v52;
                v14 = v53;
                v22 = v50;
                home = v51;
                goto LABEL_31;
              }

              goto LABEL_23;
            }

            v28 = v60;
            actions = v61;
          }

LABEL_23:
        }
      }

      v62 = [actions countByEnumeratingWithState:&v65 objects:v69 count:16];
      if (!v62)
      {
LABEL_26:

        v14 = v53;
        targetValue = [(HMDCharacteristicWriteActionModel *)v53 targetValue];
        targetValue2 = [(HMDCharacteristicWriteActionModel *)v53 targetValue];
        v64 = targetValue;
        v45 = [v27 validateValueForWrite:targetValue2 outValue:&v64];
        actions = v64;

        if (v45)
        {
          messageCopy = v54;
          [v54 respondWithError:v45];
          v47 = 0;
        }

        else
        {
          [(HMDCharacteristicWriteActionModel *)v53 setTargetValue:actions];
          v47 = v53;
          messageCopy = v54;
        }

        dCopy = v55;
        home = v51;
        v15 = v52;
        v22 = v50;

        goto LABEL_31;
      }
    }
  }

  actions = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  [messageCopy respondWithError:actions];
  v47 = 0;
LABEL_31:

  v48 = *MEMORY[0x277D85DE8];

  return v47;
}

- (void)_handleAddActionRequest:(id)request
{
  v53 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v49 = 138543362;
    v50 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Add action to action set", &v49, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [requestCopy uuidForKey:*MEMORY[0x277CD0B10]];
  if (v9 || ([requestCopy uuidForKey:*MEMORY[0x277CD2060]], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    actions = [(HMDActionSet *)selfCopy actions];
    v12 = [actions count];
    v13 = maximumActionsPerActionSet;

    if (v12 >= v13)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = selfCopy;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        name = [(HMDActionSet *)v23 name];
        v49 = 138543618;
        v50 = v25;
        v51 = 2112;
        v52 = name;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Can't add action to action set %@; already at maximum actions allowed", &v49, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:49];
      [requestCopy respondWithError:v15];
      goto LABEL_34;
    }

    v14 = *MEMORY[0x277CD2028];
    v15 = [requestCopy dictionaryForKey:*MEMORY[0x277CD2028]];
    v16 = [v15 hmf_numberForKey:*MEMORY[0x277CD2058]];
    unsignedIntegerValue = [v16 unsignedIntegerValue];
    if (unsignedIntegerValue <= 1)
    {
      if (unsignedIntegerValue)
      {
        if (unsignedIntegerValue != 1)
        {
LABEL_19:
          v28 = objc_autoreleasePoolPush();
          v29 = selfCopy;
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = HMFGetLogIdentifier();
            v49 = 138543362;
            v50 = v31;
            _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Can't add action to action set, unsupported action type", &v49, 0xCu);
          }

          objc_autoreleasePoolPop(v28);
          v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
          [requestCopy respondWithError:v32];

          goto LABEL_33;
        }

        v27 = [(HMDActionSet *)selfCopy _addMediaPlaybackActionModelWithUUID:v10 message:requestCopy];
      }

      else
      {
        v27 = [(HMDActionSet *)selfCopy _addCharacteristicWriteActionModelWithUUID:v10 message:requestCopy];
      }
    }

    else
    {
      if (unsignedIntegerValue == 2)
      {
        v37 = [(HMDBackingStoreModelObject *)[HMDShortcutActionModel alloc] initWithObjectChangeType:1 uuid:v10 parentUUID:selfCopy->_uuid];
        v38 = [requestCopy dictionaryForKey:v14];
        [(HMDShortcutActionModel *)v37 loadModelWithActionInformation:v38];

        if (v37)
        {
LABEL_32:
          home = [(HMDActionSet *)selfCopy home];
          backingStore = [home backingStore];
          name2 = [requestCopy name];
          v46 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
          v47 = [backingStore transaction:name2 options:v46];

          [v47 add:v37 withMessage:requestCopy];
          [v47 run];

LABEL_33:
LABEL_34:

          goto LABEL_35;
        }

LABEL_26:
        v39 = objc_autoreleasePoolPush();
        v40 = selfCopy;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v42 = HMFGetLogIdentifier();
          v49 = 138543362;
          v50 = v42;
          _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "%{public}@Can't add action to action set, failed to create backing store model object", &v49, 0xCu);
        }

        objc_autoreleasePoolPop(v39);
        goto LABEL_33;
      }

      if (unsignedIntegerValue != 3)
      {
        if (unsignedIntegerValue == 5)
        {
          v18 = objc_autoreleasePoolPush();
          v19 = selfCopy;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = HMFGetLogIdentifier();
            v49 = 138543362;
            v50 = v21;
            _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Received a request to add an action that only available in HH2", &v49, 0xCu);
          }

          objc_autoreleasePoolPop(v18);
        }

        goto LABEL_19;
      }

      v27 = [(HMDActionSet *)selfCopy _addLightProfileNaturalLightingModelWithUUID:v10 message:requestCopy];
    }

    v37 = v27;
    if (v27)
    {
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  v33 = objc_autoreleasePoolPush();
  v34 = selfCopy;
  v35 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v36 = HMFGetLogIdentifier();
    v49 = 138543362;
    v50 = v36;
    _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Cannot add action to action set as UUID is nil.", &v49, 0xCu);
  }

  objc_autoreleasePoolPop(v33);
  v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
  [requestCopy respondWithError:v10];
LABEL_35:

  v48 = *MEMORY[0x277D85DE8];
}

- (void)_registerForMessages
{
  v39[2] = *MEMORY[0x277D85DE8];
  type = [(HMDActionSet *)self type];
  v32 = *MEMORY[0x277CCF1A0];
  v4 = [type isEqualToString:?];

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

  home = [(HMDActionSet *)self home];
  administratorHandler = [home administratorHandler];
  [administratorHandler registerForMessage:@"kAddActionRequestKey" receiver:self policies:v9 selector:sel__handleAddActionRequest_];

  administratorHandler2 = [home administratorHandler];
  [administratorHandler2 registerForMessage:@"kRemoveActionRequestKey" receiver:self policies:v12 selector:sel__handleRemoveActionRequest_];

  administratorHandler3 = [home administratorHandler];
  [administratorHandler3 registerForMessage:@"kReplaceActionValueKey" receiver:self policies:v19 selector:sel__handleUpdateActionRequest_];

  administratorHandler4 = [home administratorHandler];
  v25 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v33[0] = v25;
  v26 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v33[1] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  [administratorHandler4 registerForMessage:@"HMUpdateActionSetFromBuilderMessage" receiver:self policies:v27 selector:sel__handleUpdateActionSet_];

  type2 = [(HMDActionSet *)self type];
  v29 = [type2 isEqualToString:v32];

  if ((v29 & 1) == 0)
  {
    administratorHandler5 = [home administratorHandler];
    [administratorHandler5 registerForMessage:*MEMORY[0x277CD2538] receiver:self policies:v19 selector:sel__handleRenameRequest_];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (id)actionWithUUID:(id)d
{
  if (d)
  {
    dCopy = d;
    actions = [(HMDActionSet *)self actions];
    v6 = [actions hmf_firstObjectWithUUID:dCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)invalidate
{
  workQueue = [(HMDActionSet *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__HMDActionSet_invalidate__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
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

- (void)handleRemovalOfAccessory:(id)accessory transaction:(id)transaction
{
  v119 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  transactionCopy = transaction;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  selfCopy = self;
  obj = [(HMDActionSet *)self actions];
  v6 = [obj countByEnumeratingWithState:&v106 objects:v118 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v107;
    *&v7 = 138543618;
    v81 = v7;
    v84 = *v107;
    do
    {
      v10 = 0;
      v85 = v8;
      do
      {
        if (*v107 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v106 + 1) + 8 * v10);
        type = [v11 type];
        if (type > 2)
        {
          if (type != 3)
          {
            if (type != 5)
            {
              goto LABEL_81;
            }

            v13 = objc_autoreleasePoolPush();
            v14 = selfCopy;
            v15 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v16 = HMFGetLogIdentifier();
              *buf = 138543362;
              v113 = v16;
              _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Native matter actions are not supported in HH1", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v13);
LABEL_15:
            v89 = v10;
            v17 = v11;
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
            v87 = v17;

            if (v19)
            {
              mediaProfiles = [v19 mediaProfiles];
              v21 = [mediaProfiles mutableCopy];

              v104 = 0u;
              v105 = 0u;
              v102 = 0u;
              v103 = 0u;
              accessoryProfiles = [accessoryCopy accessoryProfiles];
              v93 = v21;
              v95 = [accessoryProfiles countByEnumeratingWithState:&v102 objects:v111 count:16];
              if (v95)
              {
                v83 = v19;
                v91 = 0;
                v94 = *v103;
                v23 = accessoryProfiles;
                v92 = accessoryProfiles;
                do
                {
                  for (i = 0; i != v95; ++i)
                  {
                    if (*v103 != v94)
                    {
                      objc_enumerationMutation(v23);
                    }

                    v25 = *(*(&v102 + 1) + 8 * i);
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

                    if (v27)
                    {
                      v100 = 0u;
                      v101 = 0u;
                      v98 = 0u;
                      v99 = 0u;
                      v28 = v21;
                      v29 = [v28 countByEnumeratingWithState:&v98 objects:v110 count:16];
                      if (v29)
                      {
                        v30 = v29;
                        v31 = *v99;
                        while (2)
                        {
                          for (j = 0; j != v30; ++j)
                          {
                            if (*v99 != v31)
                            {
                              objc_enumerationMutation(v28);
                            }

                            v33 = *(*(&v98 + 1) + 8 * j);
                            uniqueIdentifier = [v33 uniqueIdentifier];
                            uniqueIdentifier2 = [v27 uniqueIdentifier];
                            v36 = [uniqueIdentifier isEqual:uniqueIdentifier2];

                            if (v36)
                            {
                              [v28 removeObject:v33];
                              v91 = 1;
                              goto LABEL_38;
                            }
                          }

                          v30 = [v28 countByEnumeratingWithState:&v98 objects:v110 count:16];
                          if (v30)
                          {
                            continue;
                          }

                          break;
                        }

LABEL_38:
                        v23 = v92;
                        v21 = v93;
                      }
                    }

                    else
                    {
                      v37 = objc_autoreleasePoolPush();
                      v38 = selfCopy;
                      v39 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                      {
                        v40 = HMFGetLogIdentifier();
                        *buf = 138543362;
                        v113 = v40;
                        _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_DEBUG, "%{public}@Accessory Media Profile is NIL", buf, 0xCu);
                      }

                      objc_autoreleasePoolPop(v37);
                    }
                  }

                  v95 = [v23 countByEnumeratingWithState:&v102 objects:v111 count:16];
                }

                while (v95);

                v9 = v84;
                v8 = v85;
                v10 = v89;
                v19 = v83;
                if (v91)
                {
                  if ([v93 count])
                  {
                    v41 = [v83 modelObjectWithUpdatedMediaProfiles:v93];
                    [transactionCopy add:v41];
                  }

                  else
                  {
                    [(HMDActionSet *)selfCopy _handleRemovalOfAction:v87 transaction:transactionCopy];
                  }
                }
              }

              else
              {

                v10 = v89;
              }
            }

            else
            {
              v65 = objc_autoreleasePoolPush();
              v66 = selfCopy;
              v67 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
              {
                v68 = HMFGetLogIdentifier();
                v69 = HMActionTypeAsString();
                *buf = 138543874;
                v113 = v68;
                v114 = 2112;
                v115 = v17;
                v116 = 2112;
                v117 = v69;
                _os_log_impl(&dword_2531F8000, v67, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v65);
              v19 = 0;
              v10 = v89;
            }

LABEL_80:

            goto LABEL_81;
          }

          v52 = v10;
          v53 = v11;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v54 = v53;
          }

          else
          {
            v54 = 0;
          }

          v55 = v54;

          if (!v55)
          {
            v75 = objc_autoreleasePoolPush();
            v76 = selfCopy;
            v77 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              v78 = HMFGetLogIdentifier();
              v79 = HMActionTypeAsString();
              *buf = 138543874;
              v113 = v78;
              v114 = 2112;
              v115 = v53;
              v116 = 2112;
              v117 = v79;
              _os_log_impl(&dword_2531F8000, v77, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v75);
            v19 = 0;
            v10 = v52;
            goto LABEL_80;
          }

          v56 = accessoryCopy;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v57 = v56;
          }

          else
          {
            v57 = 0;
          }

          v58 = v57;

          lightProfiles = [v58 lightProfiles];
          v96[0] = MEMORY[0x277D85DD0];
          v96[1] = 3221225472;
          v96[2] = __53__HMDActionSet_handleRemovalOfAccessory_transaction___block_invoke;
          v96[3] = &unk_2797285D0;
          v45 = v55;
          v97 = v45;
          v60 = [lightProfiles na_firstObjectPassingTest:v96];

          if (v60)
          {
            v61 = objc_autoreleasePoolPush();
            v62 = selfCopy;
            v63 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
            {
              v64 = HMFGetLogIdentifier();
              *buf = v81;
              v113 = v64;
              v114 = 2112;
              v115 = v60;
              _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_INFO, "%{public}@Removing natural lighting action for light profile: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v61);
            [(HMDActionSet *)v62 _handleRemovalOfAction:v53 transaction:transactionCopy];
            v9 = v84;
            v8 = v85;
          }

          v10 = v52;
LABEL_67:
          v19 = v45;
          goto LABEL_80;
        }

        if (!type)
        {
          v42 = v11;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v43 = v42;
          }

          else
          {
            v43 = 0;
          }

          v44 = v43;

          if (!v44)
          {
            v70 = objc_autoreleasePoolPush();
            v71 = selfCopy;
            v72 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
            {
              v73 = HMFGetLogIdentifier();
              v74 = HMActionTypeAsString();
              *buf = 138543874;
              v113 = v73;
              v114 = 2112;
              v115 = v42;
              v116 = 2112;
              v117 = v74;
              _os_log_impl(&dword_2531F8000, v72, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v70);
            v19 = 0;
            goto LABEL_80;
          }

          v45 = v44;
          characteristic = [v44 characteristic];
          uuid = [accessoryCopy uuid];
          service = [characteristic service];
          accessory = [service accessory];
          uuid2 = [accessory uuid];
          v51 = [uuid isEqual:uuid2];

          if (v51)
          {
            [(HMDActionSet *)selfCopy _handleRemovalOfAction:v42 transaction:transactionCopy];
          }

          v9 = v84;
          v8 = v85;
          goto LABEL_67;
        }

        if (type == 1)
        {
          goto LABEL_15;
        }

LABEL_81:
        ++v10;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v106 objects:v118 count:16];
    }

    while (v8);
  }

  v80 = *MEMORY[0x277D85DE8];
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
  messageTargetUUID = [(HMDActionSet *)self messageTargetUUID];
  v5 = [v3 initWithTarget:messageTargetUUID];

  return v5;
}

- (void)_encodeWithCoder:(id)coder
{
  v86 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  home = [(HMDActionSet *)self home];
  [coderCopy encodeConditionalObject:home forKey:@"home"];
  uuid = [(HMDActionSet *)self uuid];
  uUIDString = [uuid UUIDString];
  [coderCopy encodeObject:uUIDString forKey:@"actionSetUUID"];

  hmd_isForXPCTransport = [coderCopy hmd_isForXPCTransport];
  hmd_isForXPCTransportEntitledForSPIAccess = [coderCopy hmd_isForXPCTransportEntitledForSPIAccess];
  hmd_homeManagerOptions = [coderCopy hmd_homeManagerOptions];
  selfCopy = self;
  if (!hmd_isForXPCTransport)
  {
    v59 = home;
    v61 = coderCopy;
    array = [MEMORY[0x277CBEB18] array];
    obj = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    array3 = [MEMORY[0x277CBEB18] array];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    actions = [(HMDActionSet *)self actions];
    v15 = [actions countByEnumeratingWithState:&v69 objects:v78 count:16];
    if (!v15)
    {
LABEL_26:

      coderCopy = v61;
      [v61 encodeObject:array forKey:@"actionSetActions"];
      [v61 encodeObject:obj forKey:@"HM.actionSetMediaPlaybackActionsCodingKey"];
      [v61 encodeObject:array2 forKey:@"HM.actions.3"];
      [v61 encodeObject:array3 forKey:@"HM.actions.4"];

      home = v59;
      hmd_isForXPCTransport = 0;
      goto LABEL_66;
    }

    v16 = v15;
    selfCopy2 = self;
    v18 = *v70;
LABEL_6:
    v19 = 0;
    while (1)
    {
      if (*v70 != v18)
      {
        objc_enumerationMutation(actions);
      }

      v20 = *(*(&v69 + 1) + 8 * v19);
      type = [v20 type];
      if (type > 1)
      {
        break;
      }

      if (!type)
      {
        v26 = array;
LABEL_21:
        [v26 addObject:v20];
LABEL_22:
        v27 = array2;
LABEL_23:
        [v27 addObject:v20];
        goto LABEL_24;
      }

      if (type == 1)
      {
        v26 = obj;
        goto LABEL_21;
      }

LABEL_24:
      if (v16 == ++v19)
      {
        v16 = [actions countByEnumeratingWithState:&v69 objects:v78 count:16];
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_6;
      }
    }

    if (type == 2)
    {
      goto LABEL_22;
    }

    if (type != 3)
    {
      if (type == 5)
      {
        v22 = objc_autoreleasePoolPush();
        v23 = selfCopy2;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543362;
          v80 = v25;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Attempting to encode an action only available in HH2", buf, 0xCu);

          selfCopy2 = selfCopy;
        }

        objc_autoreleasePoolPop(v22);
      }

      goto LABEL_24;
    }

    v27 = array3;
    goto LABEL_23;
  }

  v63 = hmd_isForXPCTransportEntitledForSPIAccess;
  if ((((hmd_homeManagerOptions & 0x400) != 0) & hmd_isForXPCTransportEntitledForSPIAccess) == 1)
  {
    actions2 = [(HMDActionSet *)self actions];
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __33__HMDActionSet__encodeWithCoder___block_invoke;
    v77[3] = &unk_27972AF48;
    v77[4] = self;
    array = [actions2 na_filter:v77];

    goto LABEL_65;
  }

  v58 = hmd_isForXPCTransport;
  v60 = home;
  v62 = coderCopy;
  v28 = MEMORY[0x277CBEB18];
  selfCopy3 = self;
  actions3 = [(HMDActionSet *)self actions];
  v31 = [v28 arrayWithCapacity:{objc_msgSend(actions3, "count")}];

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  obja = [(HMDActionSet *)self actions];
  v32 = [obja countByEnumeratingWithState:&v73 objects:v85 count:16];
  v33 = v63;
  if (!v32)
  {
    goto LABEL_64;
  }

  v34 = v32;
  v35 = *v74;
  v66 = v31;
  do
  {
    for (i = 0; i != v34; ++i)
    {
      if (*v74 != v35)
      {
        objc_enumerationMutation(obja);
      }

      v37 = *(*(&v73 + 1) + 8 * i);
      type2 = [v37 type];
      if (type2 <= 1)
      {
        if (type2)
        {
          if (type2 != 1)
          {
            continue;
          }

LABEL_42:
          if (!v33)
          {
            continue;
          }

LABEL_43:
          [v31 addObject:v37];
          continue;
        }

        v40 = v37;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v45 = v40;
        }

        else
        {
          v45 = 0;
        }

        v42 = v45;

        if (v42)
        {
          if ([(HMDActionSet *)selfCopy3 _isValidCharacteristicWriteAction:v42])
          {
LABEL_55:
            [v31 addObject:v40];
          }

LABEL_61:

          continue;
        }

        v46 = objc_autoreleasePoolPush();
        v47 = selfCopy3;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
LABEL_59:
          v49 = HMFGetLogIdentifier();
          v50 = HMActionTypeAsString();
          *buf = 138543874;
          v80 = v49;
          v81 = 2112;
          v82 = v40;
          v83 = 2112;
          v84 = v50;
          _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);

          v33 = v63;
          selfCopy3 = selfCopy;
        }

LABEL_60:

        objc_autoreleasePoolPop(v46);
        v31 = v66;
        goto LABEL_61;
      }

      if (type2 == 2)
      {
        v40 = v37;
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
          if (v33)
          {
            goto LABEL_55;
          }

          v43 = [v42 copy];
          removeShortcut = [v43 removeShortcut];

          [v31 addObject:removeShortcut];
          goto LABEL_61;
        }

        v46 = objc_autoreleasePoolPush();
        v47 = selfCopy3;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_59;
        }

        goto LABEL_60;
      }

      if (type2 == 3)
      {
        goto LABEL_42;
      }

      if (type2 == 5 && v33 != 0)
      {
        goto LABEL_43;
      }
    }

    v34 = [obja countByEnumeratingWithState:&v73 objects:v85 count:16];
  }

  while (v34);
LABEL_64:

  array = [v31 copy];
  home = v60;
  coderCopy = v62;
  hmd_isForXPCTransport = v58;
LABEL_65:
  [coderCopy encodeObject:array forKey:@"actionSetActions"];
LABEL_66:

  executionMessage = [(HMDActionSet *)selfCopy executionMessage];
  [coderCopy encodeBool:executionMessage != 0 forKey:@"HM.actionSetExecutionInProgress"];

  if ((hmd_isForXPCTransport & 1) != 0 || [coderCopy hmd_isForLocalStore])
  {
    lastExecutionDate = [(HMDActionSet *)selfCopy lastExecutionDate];
    [coderCopy encodeObject:lastExecutionDate forKey:@"HM.actionSetLastExecutionDate"];
  }

  if (([coderCopy hmd_isForRemoteGatewayCoder] & 1) == 0)
  {
    name = [(HMDActionSet *)selfCopy name];
    [coderCopy encodeObject:name forKey:@"actionSetName"];

    type3 = [(HMDActionSet *)selfCopy type];
    [coderCopy encodeObject:type3 forKey:@"actionSetType"];
  }

  appData = [(HMDActionSet *)selfCopy appData];
  v56 = appData;
  if (hmd_isForXPCTransport)
  {
    [appData encodeForXPCTransportWithCoder:coderCopy key:@"HM.appData"];
  }

  else
  {
    [coderCopy encodeObject:appData forKey:@"HM.appDataRepository"];
  }

  v57 = *MEMORY[0x277D85DE8];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [(HMDActionSet *)self _encodeWithCoder:coderCopy];
  objc_autoreleasePoolPop(v4);
}

- (BOOL)_isValidCharacteristicWriteAction:(id)action
{
  characteristic = [action characteristic];
  service = [characteristic service];
  v5 = service;
  v6 = 0;
  if (characteristic && service)
  {
    accessory = [characteristic accessory];
    if (accessory)
    {
      accessory2 = [v5 accessory];
      v6 = accessory2 != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)_initWithCoder:(id)coder
{
  v40[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"home"];
  v6 = [coderCopy hm_decodeAndCacheTruncatedNameStringForKey:@"actionSetName"];
  v7 = [coderCopy hm_decodeAndCacheStringForKey:@"actionSetType"];
  if (![v7 length])
  {
    v8 = *MEMORY[0x277CCF1A8];

    v7 = v8;
  }

  if ([MEMORY[0x277CD1800] isBuiltinActionSetType:self->_type])
  {
    v9 = MEMORY[0x277CCAD78];
    WeakRetained = objc_loadWeakRetained(&self->_home);
    uuid = [WeakRetained uuid];
    v40[0] = self->_type;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
    v13 = [v9 hm_deriveUUIDFromBaseUUID:uuid identifierSalt:0 withSalts:v12];
  }

  else
  {
    WeakRetained = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionSetUUID"];
    v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:WeakRetained];
  }

  v14 = [(HMDActionSet *)self initWithName:v6 uuid:v13 type:v7 home:v5 queue:0];
  if (v14)
  {
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.appDataRepository"];
    appData = v14->_appData;
    v14->_appData = v15;

    [(HMDApplicationData *)v14->_appData updateParentUUIDIfNil:v14->_uuid];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.actionSetLastExecutionDate"];
    lastExecutionDate = v14->_lastExecutionDate;
    v14->_lastExecutionDate = v17;

    v19 = +[HMDActionSet allowedActionClasses];
    if ([coderCopy containsValueForKey:@"HM.actions.3"])
    {
      v34 = v6;
      currentActions = v14->_currentActions;
      v21 = [coderCopy decodeObjectOfClasses:v19 forKey:@"HM.actions.3"];
      [(NSMutableArray *)currentActions setArray:v21];

      v22 = [coderCopy decodeObjectOfClasses:v19 forKey:@"HM.actions.4"];
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
      v25 = [coderCopy decodeObjectOfClasses:v19 forKey:@"actionSetActions"];
      [(NSMutableArray *)v14->_currentActions setArray:v25];
      v26 = [coderCopy decodeObjectOfClasses:v19 forKey:@"HM.actionSetMediaPlaybackActionsCodingKey"];
      [(NSMutableArray *)v14->_currentActions addObjectsFromArray:v26];
    }
  }

  v31 = *MEMORY[0x277D85DE8];
  return v14;
}

- (HMDActionSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = [(HMDActionSet *)self _initWithCoder:coderCopy];
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
  actions = [(HMDActionSet *)self actions];
  v3 = [actions countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(actions);
        }

        if ([*(*(&v8 + 1) + 8 * i) type] == 2)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [actions countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  actions = [(HMDActionSet *)self actions];
  v3 = [actions countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(actions);
        }

        if ([*(*(&v8 + 1) + 8 * i) type] == 1)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [actions countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  actions = [(HMDActionSet *)self actions];
  v4 = [actions indexOfObjectPassingTest:&__block_literal_global_87];

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMFBooleanToString();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Does this actionSet contain any unsecuring action : %@", &v12, 0x16u);
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
  actions = [(HMDActionSet *)self actions];
  v4 = [actions indexOfObjectPassingTest:&__block_literal_global_22207];

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMFBooleanToString();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Does this actionSet contain any Secure class accessory : %@", &v12, 0x16u);
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
  actions = [(HMDActionSet *)self actions];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(actions, "count")}];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v4 = actions;
  v5 = [v4 countByEnumeratingWithState:&v57 objects:v73 count:16];
  if (v5)
  {
    v7 = v5;
    v51 = 0;
    v8 = *v58;
    *&v6 = 138544130;
    v49 = v6;
    v53 = v3;
    v54 = v4;
    v55 = *v58;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v58 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v57 + 1) + 8 * i);
        type = [v10 type];
        if (type <= 1)
        {
          if (type)
          {
            if (type != 1)
            {
              continue;
            }

            v16 = v10;
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
              mediaProfiles = [v18 mediaProfiles];
              v20 = [mediaProfiles count];

              if (v20)
              {
                [v3 addObject:v18];
              }

              else
              {
                v40 = objc_autoreleasePoolPush();
                selfCopy = self;
                v42 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                {
                  v43 = HMFGetLogIdentifier();
                  name = [(HMDActionSet *)selfCopy name];
                  uuid = [(HMDActionSet *)selfCopy uuid];
                  uuid2 = [v18 uuid];
                  *buf = v49;
                  v62 = v43;
                  v63 = 2112;
                  v64 = name;
                  v65 = 2112;
                  v66 = uuid;
                  v67 = 2112;
                  v68 = uuid2;
                  _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@ActionSet %@/%@: Removing media action %@ since there are no media profiles", buf, 0x2Au);
                }

                objc_autoreleasePoolPop(v40);
                v51 = 1;
                v3 = v53;
              }

              v4 = v54;
              goto LABEL_42;
            }

            v34 = objc_autoreleasePoolPush();
            selfCopy4 = self;
            v36 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              v37 = HMFGetLogIdentifier();
              v38 = HMActionTypeAsString();
              *buf = 138543874;
              v62 = v37;
              v63 = 2112;
              v64 = v16;
              v65 = 2112;
              v66 = v38;
              _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);

              goto LABEL_36;
            }
          }

          else
          {
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

            v18 = v22;

            if (v18)
            {
              characteristic = [v18 characteristic];
              if (characteristic && ([v18 targetValue], v24 = objc_claimAutoreleasedReturnValue(), v24, v24))
              {
                [v3 addObject:v18];
              }

              else
              {
                v25 = objc_autoreleasePoolPush();
                selfCopy3 = self;
                v27 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  v50 = HMFGetLogIdentifier();
                  [(HMDActionSet *)selfCopy3 name];
                  v28 = v52 = v25;
                  uuid3 = [(HMDActionSet *)selfCopy3 uuid];
                  uuid4 = [v18 uuid];
                  targetValue = [v18 targetValue];
                  *buf = 138544642;
                  v62 = v50;
                  v63 = 2112;
                  v64 = v28;
                  v65 = 2112;
                  v66 = uuid3;
                  v67 = 2112;
                  v68 = uuid4;
                  v32 = uuid4;
                  v69 = 2112;
                  v70 = characteristic;
                  v71 = 2112;
                  v72 = targetValue;
                  v33 = targetValue;
                  _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ActionSet %@/%@: Removing write action %@/%@ since the characteristic %@ or value is nil", buf, 0x3Eu);

                  v4 = v54;
                  v25 = v52;
                }

                objc_autoreleasePoolPop(v25);
                v51 = 1;
                v3 = v53;
              }

              goto LABEL_42;
            }

            v34 = objc_autoreleasePoolPush();
            selfCopy4 = self;
            v36 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              v37 = HMFGetLogIdentifier();
              v39 = HMActionTypeAsString();
              *buf = 138543874;
              v62 = v37;
              v63 = 2112;
              v64 = v21;
              v65 = 2112;
              v66 = v39;
              _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);

              v3 = v53;
LABEL_36:

              v4 = v54;
            }
          }

          objc_autoreleasePoolPop(v34);
LABEL_42:

          v8 = v55;
          continue;
        }

        if ((type - 2) >= 3)
        {
          if (type != 5)
          {
            continue;
          }

          v12 = objc_autoreleasePoolPush();
          selfCopy5 = self;
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = HMFGetLogIdentifier();
            *buf = 138543362;
            v62 = v15;
            _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Native matter actions are not supported in HH1", buf, 0xCu);

            v4 = v54;
          }

          objc_autoreleasePoolPop(v12);
        }

        [v3 addObject:v10];
      }

      v7 = [v4 countByEnumeratingWithState:&v57 objects:v73 count:16];
      if (!v7)
      {
        goto LABEL_47;
      }
    }
  }

  v51 = 0;
LABEL_47:

  [(HMDActionSet *)self setActions:v3];
  v47 = *MEMORY[0x277D85DE8];
  return v51 & 1;
}

- (NSString)serializedIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  home = [(HMDActionSet *)self home];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];
  uuid2 = [(HMDActionSet *)self uuid];
  uUIDString2 = [uuid2 UUIDString];
  v9 = [v3 stringWithFormat:@"%@/%@", uUIDString, uUIDString2];

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

- (void)removeAction:(id)action
{
  actionCopy = action;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_currentActions removeObject:actionCopy];
  os_unfair_lock_unlock(&self->_lock);
  [(HMDActionSet *)self __handleActionsUpdated];
}

- (void)addAction:(id)action
{
  actionCopy = action;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_currentActions addObject:actionCopy];
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
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Last action removed - removing donated intents", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDActionSet *)selfCopy _removeDonatedIntent];
    v9 = objc_autoreleasePoolPush();
    v10 = selfCopy;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v12;
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Sending notification for now empty action set %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    notificationCenter = [(HMDActionSet *)v10 notificationCenter];
    home = [(HMDActionSet *)v10 home];
    v23 = @"HMDActionSetNotificationKey";
    *buf = v10;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v23 count:1];
    [notificationCenter postNotificationName:@"HMDHomeActionSetEmptiedNotification" object:home userInfo:v15];
  }

  v16 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v19;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@ActionSet empty/non-empty edges - re-evaluating triggers in the home", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v16);
  home2 = [(HMDActionSet *)selfCopy2 home];
  [home2 reEvaluateTriggers];

LABEL_12:
  notificationCenter2 = [(HMDActionSet *)self notificationCenter];
  [notificationCenter2 postNotificationName:@"HMDActionSetActionsUpdatedNotification" object:self userInfo:0];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)setActions:(id)actions
{
  actionsCopy = actions;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_currentActions setArray:actionsCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)configure:(id)configure messageDispatcher:(id)dispatcher queue:(id)queue
{
  v24 = *MEMORY[0x277D85DE8];
  configureCopy = configure;
  dispatcherCopy = dispatcher;
  queueCopy = queue;
  [(HMDActionSet *)self setHome:configureCopy];
  [(HMDActionSet *)self setMsgDispatcher:dispatcherCopy];
  [(HMDActionSet *)self setWorkQueue:queueCopy];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  actions = [(HMDActionSet *)self actions];
  v12 = [actions countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(actions);
        }

        [*(*(&v19 + 1) + 8 * v15++) configureWithHome:configureCopy];
      }

      while (v13 != v15);
      v13 = [actions countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  _fixUpActions = [(HMDActionSet *)self _fixUpActions];
  [(HMDActionSet *)self _registerForMessages];

  v17 = *MEMORY[0x277D85DE8];
  return _fixUpActions;
}

- (void)handleRemovalOfActionForCharacteristic:(id)characteristic transaction:(id)transaction
{
  v26 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  transactionCopy = transaction;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  selfCopy = self;
  actions = [(HMDActionSet *)self actions];
  v9 = [actions countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(actions);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
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
          if ([v15 isActionForCharacteristic:characteristicCopy])
          {
            [(HMDActionSet *)selfCopy _handleRemovalOfAction:v13 transaction:transactionCopy];
          }
        }

        else
        {
          v16 = v13;
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

          if (v18 && [v18 isActionForCharacteristic:characteristicCopy])
          {
            [(HMDActionSet *)selfCopy _handleRemovalOfAction:v16 transaction:transactionCopy];
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [actions countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovalOfService:(id)service transaction:(id)transaction
{
  v34 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  transactionCopy = transaction;
  v27 = serviceCopy;
  accessory = [serviceCopy accessory];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  selfCopy = self;
  obj = [(HMDActionSet *)self actions];
  v28 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v28)
  {
    v7 = *v30;
    v23 = *v30;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
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

        if (v11)
        {
          characteristic = [v11 characteristic];
          service = [characteristic service];
          instanceID = [service instanceID];
          instanceID2 = [v27 instanceID];
          if ([instanceID isEqualToNumber:instanceID2])
          {
            v16 = characteristic;
            accessory2 = [characteristic accessory];
            uuid = [accessory2 uuid];
            uuid2 = [accessory uuid];
            v26 = [uuid isEqual:uuid2];

            v7 = v23;
            if (v26)
            {
              [(HMDActionSet *)selfCopy _handleRemovalOfAction:v9 transaction:transactionCopy];
            }
          }

          else
          {
            v16 = characteristic;
          }
        }
      }

      v28 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v28);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)executeWithTriggerSource:(id)source captureCurrentState:(BOOL)state completionHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  handlerCopy = handler;
  workQueue = [(HMDActionSet *)self workQueue];

  if (workQueue)
  {
    workQueue2 = [(HMDActionSet *)self workQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __79__HMDActionSet_executeWithTriggerSource_captureCurrentState_completionHandler___block_invoke;
    v20[3] = &unk_279732430;
    v20[4] = self;
    v21 = sourceCopy;
    v22 = handlerCopy;
    stateCopy = state;
    dispatch_async(workQueue2, v20);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      name = [(HMDActionSet *)selfCopy name];
      actions = [(HMDActionSet *)selfCopy actions];
      *buf = 138543874;
      v25 = v15;
      v26 = 2112;
      v27 = name;
      v28 = 2048;
      v29 = [actions count];
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Work queue hasn't been configured, bailing out the execution for action set %@ with number of actions: %lu", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    if (handlerCopy)
    {
      v18 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      (*(handlerCopy + 2))(handlerCopy, v18, 0);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Execute triggered action set: %@", buf, 0x16u);
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
  v24[3] = &unk_279729A58;
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
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Executing actionSet %@ due to trigger %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  v21 = *(a1 + 32);
  v22 = [v14 copy];
  [v21 _execute:v22 captureCurrentState:*(a1 + 56) writeRequestTuples:0];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_execute:(id)_execute activity:(id)activity
{
  _executeCopy = _execute;
  activityCopy = activity;
  workQueue = [(HMDActionSet *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([_executeCopy isRemote])
  {
    home = [(HMDActionSet *)self home];
    v10 = [home writeRequestTuplesFromMessage:_executeCopy outUnhandledRequests:0];
  }

  else
  {
    v10 = 0;
  }

  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __34__HMDActionSet__execute_activity___block_invoke;
  v14[3] = &unk_279732760;
  objc_copyWeak(&v18, &location);
  v11 = activityCopy;
  v15 = v11;
  v12 = _executeCopy;
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
      v23[3] = &unk_279734870;
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
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Access validation failed before executing the action set", buf, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] HMDActionSet has been set to nil", buf, 0x16u);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Executing actionSet %@ for message %@/%@", &v13, 0x34u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _execute:*(a1 + 48) captureCurrentState:0 writeRequestTuples:*(a1 + 56)];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)execute:(id)execute
{
  executeCopy = execute;
  v6 = objc_alloc(MEMORY[0x277D0F770]);
  v7 = MEMORY[0x277CCACA8];
  v8 = MEMORY[0x259C01AE0](self, a2);
  v9 = [v7 stringWithFormat:@"%@, %s:%ld", v8, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables_legacy/Sources/homed/Action Sets/HMDActionSet.m", 304];
  v15 = [v6 initWithName:v9];

  workQueue = [(HMDActionSet *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__HMDActionSet_execute___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v13 = executeCopy;
  v14 = v15;
  v11 = executeCopy;
  dispatch_async(workQueue, block);

  __HMFActivityScopeLeave();
}

- (void)isAccessValidForExecutionWithMessage:(id)message completion:(id)completion
{
  v46 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  completionCopy = completion;
  source = [messageCopy source];
  home = [(HMDActionSet *)self home];
  synchronouslyFetchIsCarPlayConnectedStatus = [home synchronouslyFetchIsCarPlayConnectedStatus];
  if (![home applyDeviceLockStatus:messageCopy] || !-[HMDActionSet containsSecureCharacteristic](self, "containsSecureCharacteristic") || !-[HMDActionSet containsUnsecuringAction](self, "containsUnsecuringAction") && (source | 8) == 9)
  {
    goto LABEL_18;
  }

  if (synchronouslyFetchIsCarPlayConnectedStatus && [home isCarPlayAccessAllowedForActionSet:self withMessage:messageCopy fromSource:source])
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Access is allowed by CarPlay access rules for action set execution", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    completionCopy[2](completionCopy, 1, 0);
    goto LABEL_25;
  }

  if ([messageCopy isEntitledForSPIAccess])
  {
    isInternal = 1;
  }

  else
  {
    isInternal = [messageCopy isInternal];
  }

  if (source == 1)
  {
    objc_initWeak(&location, self);
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Checking siri unlock access for siri triggered action set execution", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    siriSecureAccessoryAccessController = [home siriSecureAccessoryAccessController];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __64__HMDActionSet_isAccessValidForExecutionWithMessage_completion___block_invoke;
    v33[3] = &unk_279723D20;
    objc_copyWeak(&v35, &location);
    v34 = completionCopy;
    v36 = isInternal;
    [siriSecureAccessoryAccessController isUnsecuringSiriActionAllowedWithCompletion:v33];

    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
    goto LABEL_25;
  }

  if (([messageCopy isEntitledForSecureAccess] & 1) == 0)
  {
    v29 = MEMORY[0x277CCA9B8];
    v30 = +[HMDDeviceCapabilities supportsDeviceLock];
    v31 = 10;
    if (isInternal)
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
  selfCopy3 = self;
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

    v27 = HMDRequestSourceAsString(source);
    *buf = 138544130;
    v39 = v25;
    v40 = 2112;
    v41 = v26;
    v42 = 2112;
    v43 = v27;
    v44 = 2112;
    v45 = v21;
    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Access is %@ for action set execution from source: %@ for reason: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v22);
  (completionCopy)[2](completionCopy, v21 == 0, v21);

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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Access is %@ by siri watch unlock check for action set execution", &v20, 0x16u);
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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  uuid = [(HMDActionSet *)self uuid];
  uUIDString = [uuid UUIDString];
  [dictionary setObject:uUIDString forKeyedSubscript:*MEMORY[0x277CD2050]];

  type = [(HMDActionSet *)self type];
  [dictionary setObject:type forKeyedSubscript:*MEMORY[0x277CD2048]];

  name = [(HMDActionSet *)self name];
  [dictionary setObject:name forKeyedSubscript:*MEMORY[0x277CD2040]];

  actions = [(HMDActionSet *)self actions];
  v9 = [actions valueForKey:@"dictionaryRepresentation"];
  [dictionary setObject:v9 forKeyedSubscript:*MEMORY[0x277CD2030]];

  v10 = [dictionary copy];

  return v10;
}

- (void)setName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  hm_truncatedNameString = [nameCopy hm_truncatedNameString];
  name = self->_name;
  self->_name = hm_truncatedNameString;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)name
{
  os_unfair_lock_lock_with_options();
  v3 = self->_name;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  v42 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v31 = MEMORY[0x277CCAB68];
  name = [(HMDActionSet *)self name];
  uuid = [(HMDActionSet *)self uuid];
  uUIDString = [uuid UUIDString];
  spiClientIdentifier = [(HMDActionSet *)self spiClientIdentifier];
  uUIDString2 = [spiClientIdentifier UUIDString];
  type = [(HMDActionSet *)self type];
  lastExecutionDate = [(HMDActionSet *)self lastExecutionDate];
  actions = [(HMDActionSet *)self actions];
  v10 = [actions count];
  urlString = [(HMDActionSet *)self urlString];
  v12 = [v31 stringWithFormat:@"ActionSet name: %@, uuid: %@, spiClientIdentifier: %@, type: %@, lastExecutionDate: %@, numActions: %tu, assistantIdentifier: %@", name, uUIDString, uUIDString2, type, lastExecutionDate, v10, urlString];

  [dictionary setObject:v12 forKeyedSubscript:*MEMORY[0x277D0F170]];
  appData = [(HMDActionSet *)self appData];
  v14 = [appData dumpStateWithPrivacyLevel:level];
  [dictionary setObject:v14 forKeyedSubscript:*MEMORY[0x277D0F050]];

  actions2 = [(HMDActionSet *)self actions];
  v16 = [actions2 copy];

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
          array = [dictionary objectForKeyedSubscript:v24];
          if (!array)
          {
            array = [MEMORY[0x277CBEB18] array];
            [dictionary setObject:array forKeyedSubscript:v24];
          }

          stateDump = [v22 stateDump];
          [array addObject:stateDump];

          objc_autoreleasePoolPop(v23);
        }

        v19 = [v17 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v19);
    }

    v16 = v34;
    v12 = v36;
  }

  v27 = [dictionary copy];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  name = [(HMDActionSet *)self name];
  uuid = [(HMDActionSet *)self uuid];
  uUIDString = [uuid UUIDString];
  spiClientIdentifier = [(HMDActionSet *)self spiClientIdentifier];
  uUIDString2 = [spiClientIdentifier UUIDString];
  type = [(HMDActionSet *)self type];
  lastExecutionDate = [(HMDActionSet *)self lastExecutionDate];
  actions = [(HMDActionSet *)self actions];
  v12 = [v3 stringWithFormat:@"ActionSet name: %@, uuid: %@, spiClientIdentifier: %@, type: %@, lastExecutionDate: %@, numActions: %tu", name, uUIDString, uUIDString2, type, lastExecutionDate, objc_msgSend(actions, "count")];

  return v12;
}

- (void)dealloc
{
  msgDispatcher = [(HMDActionSet *)self msgDispatcher];
  [msgDispatcher deregisterReceiver:self];

  home = [(HMDActionSet *)self home];
  administratorHandler = [home administratorHandler];
  [administratorHandler deregisterReceiver:self];

  v6.receiver = self;
  v6.super_class = HMDActionSet;
  [(HMDActionSet *)&v6 dealloc];
}

- (HMDActionSet)initWithName:(id)name uuid:(id)uuid type:(id)type home:(id)home queue:(id)queue notificationCenter:(id)center
{
  v46[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  uuidCopy = uuid;
  typeCopy = type;
  homeCopy = home;
  queueCopy = queue;
  centerCopy = center;
  v45.receiver = self;
  v45.super_class = HMDActionSet;
  v20 = [(HMDActionSet *)&v45 init];
  if (v20)
  {
    v43 = centerCopy;
    v44 = nameCopy;
    v21 = MEMORY[0x277D0F888];
    hm_truncatedNameString = [nameCopy hm_truncatedNameString];
    v23 = [v21 hmf_cachedInstanceForString:hm_truncatedNameString];
    name = v20->_name;
    v20->_name = v23;

    v25 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:typeCopy];
    type = v20->_type;
    v20->_type = v25;

    if (typeCopy && homeCopy && [MEMORY[0x277CD1800] isBuiltinActionSetType:typeCopy])
    {
      v27 = MEMORY[0x277CCAD78];
      uuid = [homeCopy uuid];
      v46[0] = typeCopy;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
      v30 = [v27 hm_deriveUUIDFromBaseUUID:uuid identifierSalt:0 withSalts:v29];
    }

    else
    {
      if (uuidCopy)
      {
        uUID = [uuidCopy copy];
      }

      else
      {
        uUID = [MEMORY[0x277CCAD78] UUID];
      }

      v30 = uUID;
    }

    v32 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSUUID:v30];
    uuid = v20->_uuid;
    v20->_uuid = v32;

    v34 = spiClientIdentifierForUUID(v20->_uuid);
    v35 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSUUID:v34];
    spiClientIdentifier = v20->_spiClientIdentifier;
    v20->_spiClientIdentifier = v35;

    objc_storeStrong(&v20->_workQueue, queue);
    objc_storeWeak(&v20->_home, homeCopy);
    msgDispatcher = [homeCopy msgDispatcher];
    msgDispatcher = v20->_msgDispatcher;
    v20->_msgDispatcher = msgDispatcher;

    array = [MEMORY[0x277CBEB18] array];
    currentActions = v20->_currentActions;
    v20->_currentActions = array;

    v20->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v20->_notificationCenter, center);
    if (queueCopy)
    {
      [(HMDActionSet *)v20 _registerForMessages];
    }

    centerCopy = v43;
    nameCopy = v44;
  }

  v41 = *MEMORY[0x277D85DE8];
  return v20;
}

- (HMDActionSet)initWithName:(id)name uuid:(id)uuid type:(id)type home:(id)home queue:(id)queue
{
  v12 = MEMORY[0x277CCAB98];
  queueCopy = queue;
  homeCopy = home;
  typeCopy = type;
  uuidCopy = uuid;
  nameCopy = name;
  defaultCenter = [v12 defaultCenter];
  v19 = [(HMDActionSet *)self initWithName:nameCopy uuid:uuidCopy type:typeCopy home:homeCopy queue:queueCopy notificationCenter:defaultCenter];

  return v19;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t197 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t197, &__block_literal_global_185);
  }

  v3 = logCategory__hmf_once_v198;

  return v3;
}

uint64_t __27__HMDActionSet_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v198;
  logCategory__hmf_once_v198 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)allowedActionClasses
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:5];
  v4 = [v2 setWithArray:{v3, v7, v8, v9, v10}];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_getActionsForActionSetObject
{
  selfCopy = self;
  v107 = *MEMORY[0x277D85DE8];
  actions = [(HMDActionSet *)self actions];
  v4 = [actions count];

  if (!v4)
  {
    goto LABEL_58;
  }

  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  actions2 = [(HMDActionSet *)selfCopy actions];
  v85 = [v5 initWithCapacity:{objc_msgSend(actions2, "count")}];

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  actions3 = [(HMDActionSet *)selfCopy actions];
  v8 = [actions3 countByEnumeratingWithState:&v95 objects:v106 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v96;
    v90 = *MEMORY[0x277D47EA8];
    v89 = *MEMORY[0x277D48000];
    v81 = *MEMORY[0x277D47EC8];
    *&v9 = 138543618;
    v80 = v9;
    v87 = *v96;
    v88 = actions3;
    v84 = selfCopy;
    do
    {
      v12 = 0;
      v86 = v10;
      do
      {
        if (*v96 != v11)
        {
          objc_enumerationMutation(actions3);
        }

        v13 = *(*(&v95 + 1) + 8 * v12);
        type = [v13 type];
        if (type == 3)
        {
          v32 = v13;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v48 = v32;
          }

          else
          {
            v48 = 0;
          }

          v31 = v48;

          if (v31)
          {
            lightProfile = [v31 lightProfile];
            v50 = lightProfile;
            if (lightProfile)
            {
              v51 = selfCopy;
              service = [lightProfile service];
              v53 = objc_alloc_init(MEMORY[0x277D47328]);
              [v53 setActionType:v90];
              v54 = objc_alloc_init(MEMORY[0x277D47340]);
              [v54 setValue:{objc_msgSend(v31, "isNaturalLightingEnabled")}];
              [v53 setValue:v54];
              [v53 setAttribute:v81];
              v55 = v31;
              v56 = v12;
              v57 = objc_alloc_init(MEMORY[0x277D47378]);
              v58 = MEMORY[0x277CBEBC0];
              urlString = [service urlString];
              v60 = [v58 URLWithString:urlString];
              [v57 setEntityId:v60];

              v10 = v86;
              v11 = v87;
              [v57 setAction:v53];
              [v85 addObject:v57];

              v12 = v56;
              v31 = v55;
            }

            else
            {
              v71 = objc_autoreleasePoolPush();
              v51 = selfCopy;
              v72 = selfCopy;
              v73 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                HMFGetLogIdentifier();
                v74 = v31;
                v76 = v75 = v12;
                *buf = v80;
                v101 = v76;
                v102 = 2112;
                v103 = v74;
                _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_ERROR, "%{public}@Natural lighting action doesn't have a light profile %@", buf, 0x16u);

                v12 = v75;
                v31 = v74;
              }

              objc_autoreleasePoolPop(v71);
            }

            selfCopy = v51;
            goto LABEL_51;
          }

          v61 = objc_autoreleasePoolPush();
          v62 = selfCopy;
          v63 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
LABEL_41:
            HMFGetLogIdentifier();
            v65 = v64 = v12;
            v66 = HMActionTypeAsString();
            *buf = 138543874;
            v101 = v65;
            v102 = 2112;
            v103 = v32;
            v104 = 2112;
            v105 = v66;
            _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);

            v10 = v86;
            v12 = v64;
          }

LABEL_42:

          goto LABEL_46;
        }

        if (type == 1)
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

          v31 = v33;

          if (v31)
          {
            v93 = 0u;
            v94 = 0u;
            v91 = 0u;
            v92 = 0u;
            mediaProfiles = [v31 mediaProfiles];
            v35 = [mediaProfiles countByEnumeratingWithState:&v91 objects:v99 count:16];
            if (v35)
            {
              v36 = v35;
              v82 = v31;
              v83 = v12;
              v37 = 0;
              v38 = 0;
              v39 = *v92;
              do
              {
                v40 = 0;
                v41 = v37;
                v42 = v38;
                do
                {
                  if (*v92 != v39)
                  {
                    objc_enumerationMutation(mediaProfiles);
                  }

                  v43 = *(*(&v91 + 1) + 8 * v40);
                  v38 = objc_alloc_init(MEMORY[0x277D47328]);

                  [v38 setActionType:v90];
                  v44 = objc_alloc_init(MEMORY[0x277D47340]);
                  [v44 setValue:1];
                  [v38 setValue:v44];
                  v37 = objc_alloc_init(MEMORY[0x277D47378]);

                  v45 = MEMORY[0x277CBEBC0];
                  urlString2 = [v43 urlString];
                  v47 = [v45 URLWithString:urlString2];
                  [v37 setEntityId:v47];

                  [v37 setAction:v38];
                  [v38 setAttribute:v89];
                  [v85 addObject:v37];

                  ++v40;
                  v41 = v37;
                  v42 = v38;
                }

                while (v36 != v40);
                v36 = [mediaProfiles countByEnumeratingWithState:&v91 objects:v99 count:16];
              }

              while (v36);

              v12 = v83;
              selfCopy = v84;
              v11 = v87;
              actions3 = v88;
              v10 = v86;
              v31 = v82;
            }

            goto LABEL_52;
          }

          v61 = objc_autoreleasePoolPush();
          v62 = selfCopy;
          v63 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_41;
          }

          goto LABEL_42;
        }

        if (type)
        {
          goto LABEL_53;
        }

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
          characteristic = [v17 characteristic];
          service2 = [characteristic service];
          v20 = v17;
          targetValue = [v17 targetValue];
          v22 = v12;
          if (isMetricLocale_onceToken != -1)
          {
            dispatch_once(&isMetricLocale_onceToken, &__block_literal_global_133089);
          }

          v23 = getTupleForCharacteristic(characteristic, targetValue, isMetricLocale_isMetricLocale);

          if (v23)
          {
            v24 = objc_alloc_init(MEMORY[0x277D47328]);
            attribute = [v23 attribute];
            [v24 setAttribute:attribute];

            [v24 setActionType:v90];
            value = [v23 value];
            [v24 setValue:value];

            v27 = objc_alloc_init(MEMORY[0x277D47378]);
            v28 = MEMORY[0x277CBEBC0];
            urlString3 = [service2 urlString];
            v30 = [v28 URLWithString:urlString3];
            [v27 setEntityId:v30];

            [v27 setAction:v24];
            [v85 addObject:v27];
          }

          v11 = v87;
          v12 = v22;
          v31 = v20;
          selfCopy = v84;
LABEL_51:
          actions3 = v88;
          goto LABEL_52;
        }

        v61 = objc_autoreleasePoolPush();
        v67 = selfCopy;
        v68 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          v69 = HMFGetLogIdentifier();
          v70 = HMActionTypeAsString();
          *buf = 138543874;
          v101 = v69;
          v102 = 2112;
          v103 = v15;
          v104 = 2112;
          v105 = v70;
          _os_log_impl(&dword_2531F8000, v68, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);

          v11 = v87;
          v10 = v86;
        }

LABEL_46:
        objc_autoreleasePoolPop(v61);
        v31 = 0;
LABEL_52:

LABEL_53:
        ++v12;
      }

      while (v12 != v10);
      v10 = [actions3 countByEnumeratingWithState:&v95 objects:v106 count:16];
    }

    while (v10);
  }

  v4 = v85;
  if (v85 && [v85 count])
  {
    v77 = [v85 copy];
  }

  else
  {
LABEL_58:
    v77 = 0;
  }

  v78 = *MEMORY[0x277D85DE8];

  return v77;
}

- (NSDictionary)assistantObject
{
  v45 = *MEMORY[0x277D85DE8];
  home = [(HMDActionSet *)self home];
  name = [(HMDActionSet *)self name];
  v5 = name;
  if (name && home)
  {
    name2 = [home name];

    if (name2)
    {
      array = [MEMORY[0x277CBEB18] array];
      actions = [(HMDActionSet *)self actions];
      v9 = [actions count];

      if (v9)
      {
        if ([(HMDActionSet *)self containsSecureCharacteristic])
        {
          containsUnsecuringAction = [(HMDActionSet *)self containsUnsecuringAction];
          v11 = MEMORY[0x277D48138];
          if (!containsUnsecuringAction)
          {
            v11 = MEMORY[0x277D48130];
          }

          [array addObject:*v11];
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

      [array addObject:*v12];
LABEL_17:
      v34 = array;
      _getActionsForActionSetObject = [(HMDActionSet *)self _getActionsForActionSetObject];
      v32 = objc_alloc(MEMORY[0x277CBEB38]);
      v36[0] = *MEMORY[0x277D48168];
      v35[0] = @"objectType";
      v35[1] = @"objectName";
      name3 = [(HMDActionSet *)self name];
      v36[1] = name3;
      v35[2] = @"objectIdentifier";
      urlString = [(HMDActionSet *)self urlString];
      v36[2] = urlString;
      v35[3] = @"objectHome";
      name4 = [home name];
      v36[3] = name4;
      v35[4] = @"objectHomeIdentifier";
      urlString2 = [home urlString];
      v36[4] = urlString2;
      v36[5] = self;
      v35[5] = @"objectReference";
      v35[6] = @"objectSceneType";
      type = [(HMDActionSet *)self type];
      v36[6] = type;
      v35[7] = @"objectSPIIdentifier";
      spiClientIdentifier = [(HMDActionSet *)self spiClientIdentifier];
      uUIDString = [spiClientIdentifier UUIDString];
      v36[7] = uUIDString;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:8];
      v28 = [v32 initWithDictionary:v27];

      if (_getActionsForActionSetObject)
      {
        [v28 setObject:_getActionsForActionSetObject forKey:@"objectSceneActions"];
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
    name5 = [(HMDActionSet *)self name];
    uuid = [(HMDActionSet *)self uuid];
    uUIDString2 = [uuid UUIDString];
    *buf = 138544130;
    v38 = v15;
    v39 = 2112;
    v40 = name5;
    v41 = 2112;
    v42 = uUIDString2;
    v43 = 2112;
    v44 = home;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Skipping because attribute(s) is nil: actionSet %@/%@  actionSet.home %@", buf, 0x2Au);
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
  uuid = [(HMDActionSet *)self uuid];
  v4 = hm_assistantIdentifier();

  return v4;
}

@end