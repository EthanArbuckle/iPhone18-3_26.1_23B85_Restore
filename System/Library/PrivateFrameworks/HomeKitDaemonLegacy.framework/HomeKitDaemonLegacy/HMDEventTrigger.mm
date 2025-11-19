@interface HMDEventTrigger
+ (BOOL)__validateRecurrences:(id)a3;
+ (id)logCategory;
+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5;
- (BOOL)_checkAddEventModel:(id)a3 message:(id)a4;
- (BOOL)_isTriggerFiredNotificationEntitled;
- (BOOL)_populateTriggerModel:(id)a3 fromBuilderMessage:(id)a4 transaction:(id)a5 responsePayload:(id)a6;
- (BOOL)_validateUpdatingTriggerWithName:(id)a3 uuid:(id)a4 message:(id)a5;
- (BOOL)addEventsFromInfo:(char)a3 preserveUUIDs:(void *)a4 endEvent:(void *)a5 transaction:(void *)a6 message:(void *)a7 error:;
- (BOOL)addEventsFromMessage:(id)a3 preserveUUIDs:(BOOL)a4 transaction:(id)a5 error:(id *)a6;
- (BOOL)checkSharedEventTriggerActivationResidentRequirement:(id)a3;
- (BOOL)compatible:(id)a3 user:(id)a4;
- (BOOL)containsRecurrences;
- (BOOL)doesTheLocationEventTargetCurrentUser;
- (BOOL)hasUserConfirmationSession;
- (BOOL)isAuthorizedForLocation;
- (BOOL)isEventTriggerOnLocalDeviceForAccessory:(id)a3;
- (BOOL)isEventTriggerOnRemoteGatewayForAccessory:(id)a3;
- (BOOL)isOwnerOfHome;
- (BOOL)requiresDataVersion4;
- (BOOL)shouldActivateOnLocalDevice;
- (BOOL)shouldEncodeLastFireDate:(id)a3;
- (Class)eventTriggerTypeToEventClass:(id)a3;
- (HMDEventTrigger)initWithCoder:(id)a3;
- (HMDEventTrigger)initWithModel:(id)a3 home:(id)a4 message:(id)a5;
- (HMDEventTrigger)initWithModel:(id)a3 home:(id)a4 message:(id)a5 factory:(id)a6;
- (NSArray)calendarEvents;
- (NSArray)charThresholdEvents;
- (NSArray)characteristicBaseEvents;
- (NSArray)characteristicEvents;
- (NSArray)durationEvents;
- (NSArray)endEvents;
- (NSArray)events;
- (NSArray)locationEvents;
- (NSArray)presenceEvents;
- (NSArray)recurrences;
- (NSArray)significantTimeEvents;
- (NSArray)timeEvents;
- (NSArray)triggerEvents;
- (id)_modelWithRewrittenCondition:(id)a3;
- (id)_updateEventsOnEventTrigger:(id)a3;
- (id)backingStoreObjects:(int64_t)a3;
- (id)didOccurEvent:(id)a3 causingDevice:(id)a4;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (id)emptyModelObject;
- (id)modelObjectWithChangeType:(unint64_t)a3 version:(int64_t)a4;
- (uint64_t)updateEventsFromInfo:(void *)a1 existingEvents:(void *)a2 preserveUUIDs:(void *)a3 endEvent:(void *)a4 transaction:(void *)a5 message:(void *)a6 error:(void *)a7;
- (void)_activateEvents:(id)a3;
- (void)_activateWithCompletion:(id)a3;
- (void)_addEventModelFromDictionary:(uint64_t)a3 endEvent:(void *)a4 transaction:(void *)a5 message:(void *)a6 error:;
- (void)_addEventToEventTrigger:(id)a3;
- (void)_computeActivation;
- (void)_configureDebounceTriggerActivationTimer;
- (void)_evaluationConditionUpdated:(id)a3 message:(id)a4;
- (void)_eventTriggerRecurrencesUpdated:(id)a3 message:(id)a4;
- (void)_executeOnceUpdated:(id)a3 message:(id)a4;
- (void)_handleAddEventModel:(id)a3 message:(id)a4;
- (void)_handleAddEventToEventTrigger:(id)a3;
- (void)_handleEventTriggerUpdate:(id)a3 message:(id)a4;
- (void)_handleLocationAuthorizationChangedNotification:(id)a3;
- (void)_handleRemovalOfCharacteristic:(id)a3 withEvents:(id)a4 transaction:(id)a5;
- (void)_handleRemovalOfEvents:(id)a3 transaction:(id)a4;
- (void)_handleRemoveEventModel:(id)a3 message:(id)a4;
- (void)_handleUpdateEventTrigger:(id)a3;
- (void)_handleUpdateEventTriggerCondition:(id)a3;
- (void)_handleUpdateEventTriggerExecuteOnce:(id)a3;
- (void)_handleUpdateEventTriggerRecurrences:(id)a3;
- (void)_handleUpdateEventsOnEventTrigger:(id)a3;
- (void)_handleUpdateOwningDevice:(id)a3;
- (void)_handleUserPermissionRequest:(id)a3;
- (void)_migrateEventsToRecords;
- (void)_reevaluateIfRelaunchRequired;
- (void)_registerForMessages;
- (void)_removeEvents:(id)a3;
- (void)_removeEventsFromEventTrigger:(id)a3;
- (void)_resetExecutionState;
- (void)_transactionObjectRemoved:(id)a3 message:(id)a4;
- (void)_transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)_updateEventTriggerExecuteOnce:(id)a3;
- (void)_updateEventTriggerRecurrences:(id)a3;
- (void)_updateOwningDevice:(id)a3;
- (void)addEvent:(id)a3;
- (void)configure:(id)a3 messageDispatcher:(id)a4 queue:(id)a5;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)executionComplete:(id)a3 error:(id)a4;
- (void)fixupForReplacementAccessory:(id)a3 transaction:(id)a4;
- (void)handleRemovalOfAccessory:(id)a3 transaction:(id)a4;
- (void)handleRemovalOfService:(id)a3 transaction:(id)a4;
- (void)handleRemovalOfUser:(id)a3 transaction:(id)a4;
- (void)invalidate;
- (void)processEventRecords:(id)a3 message:(id)a4;
- (void)removeEvent:(id)a3;
- (void)resetExecutionState;
- (void)sendTriggerFiredNotification:(id)a3;
- (void)setRecurrences:(id)a3;
- (void)takeOverOwnershipOfTrigger;
- (void)timerDidFire:(id)a3;
- (void)userDidConfirmExecute:(BOOL)a3 completionHandler:(id)a4;
@end

@implementation HMDEventTrigger

- (BOOL)isOwnerOfHome
{
  v2 = [(HMDTrigger *)self home];
  v3 = [v2 isOwnerUser];

  return v3;
}

- (BOOL)isAuthorizedForLocation
{
  v2 = +[HMDLocation sharedManager];
  v3 = [v2 locationAuthorized] == 1;

  return v3;
}

- (BOOL)containsRecurrences
{
  v17 = *MEMORY[0x277D85DE8];
  memset(v15, 0, 7);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(HMDEventTrigger *)self recurrences];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v15[[*(*(&v11 + 1) + 8 * v6++) weekday] - 1] = 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v4);
  }

  v7 = 0;
  v8 = 0;
  do
  {
    v8 += v15[v7++];
  }

  while (v7 != 7);
  result = (v8 - 1) < 6;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)emptyModelObject
{
  v3 = [HMDEventTriggerModel alloc];
  v4 = [(HMDTrigger *)self uuid];
  v5 = [(HMDTrigger *)self home];
  v6 = [v5 uuid];
  v7 = [(HMDBackingStoreModelObject *)v3 initWithObjectChangeType:2 uuid:v4 parentUUID:v6];

  return v7;
}

- (id)backingStoreObjects:(int64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(HMDEventTrigger *)self modelObjectWithChangeType:1 version:a3];
  [v5 addObject:v6];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(HMDEventTrigger *)self events];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) modelObjectWithChangeType:1];
        [v5 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)modelObjectWithChangeType:(unint64_t)a3 version:(int64_t)a4
{
  v6 = [HMDEventTriggerModel alloc];
  v7 = [(HMDTrigger *)self uuid];
  v8 = [(HMDTrigger *)self home];
  v9 = [v8 uuid];
  v10 = [(HMDBackingStoreModelObject *)v6 initWithObjectChangeType:a3 uuid:v7 parentUUID:v9];

  [(HMDTrigger *)self _fillBaseObjectChangeModel:v10];
  v11 = [(HMDEventTrigger *)self evaluationCondition];

  if (v11)
  {
    v12 = MEMORY[0x277CCAAB0];
    v13 = [(HMDEventTrigger *)self evaluationCondition];
    v14 = [v12 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:0];
    [(HMDEventTriggerModel *)v10 setEvaluationCondition:v14];
  }

  v15 = [(HMDEventTrigger *)self recurrences];

  if (v15)
  {
    v16 = MEMORY[0x277CCAAB0];
    v17 = [(HMDEventTrigger *)self recurrences];
    v18 = [v16 archivedDataWithRootObject:v17 requiringSecureCoding:1 error:0];
    [(HMDEventTriggerModel *)v10 setRecurrences:v18];
  }

  v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEventTrigger executeOnce](self, "executeOnce")}];
  [(HMDEventTriggerModel *)v10 setExecuteOnce:v19];

  return v10;
}

- (void)_handleEventTriggerUpdate:(id)a3 message:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = [v18 setProperties];
  v8 = [v7 containsObject:@"evaluationCondition"];

  if (v8)
  {
    v9 = [v18 evaluationCondition];
    v10 = [HMDPredicateUtilities decodePredicateFromData:v9 error:0];

    [(HMDEventTrigger *)self _evaluationConditionUpdated:v10 message:v6];
  }

  v11 = [v18 setProperties];
  v12 = [v11 containsObject:@"recurrences"];

  if (v12)
  {
    v13 = [v18 recurrences];
    v14 = [v13 decodeArrayOfDateComponents];

    [(HMDEventTrigger *)self _eventTriggerRecurrencesUpdated:v14 message:v6];
  }

  v15 = [v18 setProperties];
  v16 = [v15 containsObject:@"executeOnce"];

  if (v16)
  {
    v17 = [v18 executeOnce];
    [(HMDEventTrigger *)self _executeOnceUpdated:v17 message:v6];
  }

  [(HMDTrigger *)self _handleTriggerUpdate:v18 message:v6];
}

- (void)_transactionObjectRemoved:(id)a3 message:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
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
    [(HMDEventTrigger *)self _handleRemoveEventModel:v10 message:v7];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to cast the given model object to EventModel", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)processEventRecords:(id)a3 message:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Saving to push the event records to cloud", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDTrigger *)v9 home];
  v13 = [v7 name];
  [v12 saveWithReason:v13 postSyncNotification:0 objectChange:v6 != 0];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v9;
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
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v32 = 138543362;
      v33 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Handling event trigger update", &v32, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    [(HMDEventTrigger *)v15 _handleEventTriggerUpdate:v13 message:v10];
  }

  else
  {
    v18 = v11;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    if (v20)
    {
      v21 = [v10 name];
      v22 = [v21 isEqualToString:@"kMigratedEventsToRecordsRequest"];

      if (v22)
      {
        [(HMDEventTrigger *)self processEventRecords:v20 message:v10];
      }

      else
      {
        v27 = objc_autoreleasePoolPush();
        v28 = self;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = HMFGetLogIdentifier();
          v32 = 138543362;
          v33 = v30;
          _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Handling event add", &v32, 0xCu);
        }

        objc_autoreleasePoolPop(v27);
        [(HMDEventTrigger *)v28 _handleAddEventModel:v20 message:v10];
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        v32 = 138543362;
        v33 = v26;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Unknown model object", &v32, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v29.receiver = self;
  v29.super_class = HMDEventTrigger;
  [(HMDTrigger *)&v29 encodeWithCoder:v4];
  if ([v4 hmd_isForXPCTransport])
  {
    v5 = [(HMDEventTrigger *)self activationState];
    [v4 encodeInteger:v5 forKey:*MEMORY[0x277CD2288]];
  }

  if ([v4 hmd_isForNonAdminSharedUser])
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = [(HMDEventTrigger *)self presenceEvents];
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        v11 = 0;
        do
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v25 + 1) + 8 * v11);
          v13 = [v4 hmd_user];
          v14 = [v12 compatibleWithUser:v13];

          if (v14)
          {
            [v6 addObject:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v9);
    }

    if ([v6 count])
    {
      v15 = [v6 copy];
      [v4 encodeObject:v15 forKey:@"HM.eventTriggerEvents"];
    }
  }

  else
  {
    v6 = [(HMDEventTrigger *)self events];
    [v4 encodeObject:v6 forKey:@"HM.eventTriggerEvents"];
  }

  v16 = [(HMDEventTrigger *)self recurrences];

  if (v16)
  {
    v17 = [(HMDEventTrigger *)self recurrences];
    [v4 encodeObject:v17 forKey:@"HM.eventTriggerRecurrences"];
  }

  v18 = [(HMDEventTrigger *)self evaluationCondition];

  if (v18)
  {
    v19 = [(HMDEventTrigger *)self evaluationCondition];
    if ([v4 hmd_isForXPCTransport])
    {
      v20 = [(HMDEventTrigger *)self predicateUtilities];
      v21 = [(HMDEventTrigger *)self evaluationCondition];
      v22 = [v20 rewritePredicateForClient:v21];

      v19 = v22;
    }

    [v4 encodeObject:v19 forKey:@"HM.eventTriggerCondition"];
  }

  v23 = [(HMDEventTrigger *)self executeOnce];
  [v4 encodeBool:v23 forKey:*MEMORY[0x277CD22B8]];
  if ([v4 hmd_isForLocalStore])
  {
    [v4 encodeBool:-[HMDEventTrigger migratedEventsToRecords](self forKey:{"migratedEventsToRecords"), @"HM.migratedEventsToRecords"}];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (HMDEventTrigger)initWithCoder:(id)a3
{
  v41[8] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v38.receiver = self;
  v38.super_class = HMDEventTrigger;
  v5 = [(HMDTrigger *)&v38 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v41[0] = objc_opt_class();
    v41[1] = objc_opt_class();
    v41[2] = objc_opt_class();
    v41[3] = objc_opt_class();
    v41[4] = objc_opt_class();
    v41[5] = objc_opt_class();
    v41[6] = objc_opt_class();
    v41[7] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:8];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"HM.eventTriggerEvents"];

    v10 = [MEMORY[0x277CBEB18] arrayWithArray:v9];
    currentEvents = v5->_currentEvents;
    v5->_currentEvents = v10;

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v12 = v5->_currentEvents;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v35;
      do
      {
        v16 = 0;
        do
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v34 + 1) + 8 * v16++) setEventTrigger:{v5, v34}];
        }

        while (v14 != v16);
        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v14);
    }

    v17 = +[HMDPredicateUtilities predicateCodingClasses];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"HM.eventTriggerCondition"];
    evaluationCondition = v5->_evaluationCondition;
    v5->_evaluationCondition = v18;

    v20 = MEMORY[0x277CBEB98];
    v39[0] = objc_opt_class();
    v39[1] = objc_opt_class();
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
    v22 = [v20 setWithArray:v21];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"HM.eventTriggerRecurrences"];
    recurrences = v5->_recurrences;
    v5->_recurrences = v23;

    v5->_executeOnce = [v4 decodeBoolForKey:*MEMORY[0x277CD22B8]];
    v5->_migratedEventsToRecords = [v4 decodeBoolForKey:@"HM.migratedEventsToRecords"];
    v25 = [HMDPredicateUtilities alloc];
    v26 = [(HMDTrigger *)v5 home];
    v27 = [(HMDTrigger *)v5 name];
    v28 = [(HMDPredicateUtilities *)v25 initWithHome:v26 logIdentifier:v27];
    predicateUtilities = v5->_predicateUtilities;
    v5->_predicateUtilities = v28;

    v5->_lock._os_unfair_lock_opaque = 0;
    v30 = objc_alloc_init(HMDEventTriggerDependencyFactory);
    dependencyFactory = v5->_dependencyFactory;
    v5->_dependencyFactory = v30;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)hasUserConfirmationSession
{
  v3 = [(HMDEventTrigger *)self executionSession];
  v4 = [v3 userConfirmationSession];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(HMDEventTrigger *)self userConfirmationSession];
    v5 = v6 != 0;
  }

  return v5;
}

- (void)_handleUserPermissionRequest:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uuidForKey:*MEMORY[0x277CD22C0]];
  v6 = [v4 remoteSourceDevice];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v15 = [(HMDTrigger *)self home];
    v16 = v4;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    v14 = v18;

    if ([v16 isRemote] && v14 && objc_msgSend(v14, "restriction") != 4)
    {
      v19 = [v15 homeManager];
      v20 = [v19 homeUserFromMessage:v16 home:v15];

      if (!v20 || ([(HMDEventTriggerDevice *)v20 isOwner]& 1) == 0)
      {
        v42 = objc_autoreleasePoolPush();
        v43 = self;
        v44 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v45 = v50 = v42;
          *buf = 138543618;
          v52 = v45;
          v53 = 2112;
          v54 = v16;
          _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, "%{public}@Only owner may perform a user permission dialog: %@", buf, 0x16u);

          v42 = v50;
        }

        objc_autoreleasePoolPop(v42);
        v46 = [v16 responseHandler];

        if (!v46)
        {
          goto LABEL_29;
        }

        v40 = [v16 responseHandler];
        v47 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
        (v40)[2](v40, v47, 0);

        goto LABEL_27;
      }
    }

    v49 = v14;
    v21 = [(HMDEventTrigger *)self userConfirmationSession];

    if (v21)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543362;
        v52 = v25;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@There is already a user confirmation session in progress, replacing it", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      [(HMDEventTrigger *)v23 setUserConfirmationSession:0];
    }

    v20 = [[HMDEventTriggerDevice alloc] initWithDevice:v7 forHome:v15];
    v26 = [HMDEventTriggerUserConfirmationSession alloc];
    v27 = [(HMDTrigger *)self workQueue];
    v28 = [(HMDTrigger *)self msgDispatcher];
    v29 = [(HMDEventTriggerUserConfirmationSession *)v26 initWithSessionID:v5 eventTrigger:self workQueue:v27 msgDispatcher:v28 requestingDevice:v20];
    [(HMDEventTrigger *)self setUserConfirmationSession:v29];

    v30 = objc_autoreleasePoolPush();
    v31 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      [(HMDEventTrigger *)v31 userConfirmationSession];
      v48 = v15;
      v34 = v7;
      v35 = v5;
      v37 = v36 = v20;
      *buf = 138543618;
      v52 = v33;
      v53 = 2112;
      v54 = v37;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Created a user confirmation session %@", buf, 0x16u);

      v20 = v36;
      v5 = v35;
      v7 = v34;
      v15 = v48;
    }

    objc_autoreleasePoolPop(v30);
    v38 = [(HMDEventTrigger *)v31 userConfirmationSession];
    [v38 createBulletinNotification];

    v39 = [v16 responseHandler];

    if (!v39)
    {
      v14 = v49;
      goto LABEL_29;
    }

    v40 = [v16 responseHandler];
    v40[2](v40, 0, 0);
    v14 = v49;
LABEL_27:

LABEL_29:
    goto LABEL_30;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543362;
    v52 = v12;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Did not receive execution session ID or requesting device", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [v4 responseHandler];

  if (v13)
  {
    v15 = [v4 responseHandler];
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    (v15)[2](v15, v14, 0);
LABEL_30:
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)userDidConfirmExecute:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(HMDTrigger *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HMDEventTrigger_userDidConfirmExecute_completionHandler___block_invoke;
  block[3] = &unk_279733DB0;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (BOOL)_isTriggerFiredNotificationEntitled
{
  v3 = [(HMDEventTrigger *)self presenceEvents];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(HMDEventTrigger *)self predicateUtilities];
    v6 = [(HMDEventTrigger *)self evaluationCondition];
    v4 = [v5 containsPresenceEvents:v6];
  }

  return v4;
}

- (void)takeOverOwnershipOfTrigger
{
  v3 = [(HMDTrigger *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HMDEventTrigger_takeOverOwnershipOfTrigger__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

void __45__HMDEventTrigger_takeOverOwnershipOfTrigger__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = +[HMDAppleAccountManager sharedManager];
  v3 = [v2 device];

  v4 = [*(a1 + 32) owningDevice];
  v5 = HMFEqualObjects();

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v9;
      v23 = 2112;
      v24 = v3;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Owning device is correctly set to %@, not changing", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v19 = @"HM.device";
    v10 = encodeRootObject();
    v20 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];

    v12 = MEMORY[0x277D0F818];
    v13 = *MEMORY[0x277CD2780];
    v14 = objc_alloc(MEMORY[0x277D0F820]);
    v15 = [*(a1 + 32) uuid];
    v16 = [v14 initWithTarget:v15];
    v17 = [v12 messageWithName:v13 destination:v16 payload:v11];

    [*(a1 + 32) _handleUpdateOwningDevice:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_resetExecutionState
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMDEventTrigger *)v4 executionSession];
    v8 = [(HMDEventTrigger *)v4 userConfirmationSession];
    v10 = 138543874;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting execution sessions %@, confirmation session %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDEventTrigger *)v4 setExecutionSession:0];
  [(HMDEventTrigger *)v4 setUserConfirmationSession:0];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)resetExecutionState
{
  v3 = [(HMDTrigger *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HMDEventTrigger_resetExecutionState__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)executionComplete:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDTrigger *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HMDEventTrigger_executionComplete_error___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

uint64_t __43__HMDEventTrigger_executionComplete_error___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v14 = 138543874;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Action set execution session %@ is complete with error %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) _resetExecutionState];
  if (!*(a1 + 48) && [*(a1 + 32) executeOnce])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Trigger is marked to be executed once, deactivating", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 32) setEnabled:0 message:0];
  }

  result = [*(a1 + 32) executeCompleteWithError:*(a1 + 48)];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)didOccurEvent:(id)a3 causingDevice:(id)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v53 = v11;
    v54 = 2112;
    v55 = v7;
    v56 = 2112;
    v57 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Event occurred on device %@, %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDEventTrigger *)v9 executionSession];

  if (v12)
  {
    v13 = [(HMDEventTrigger *)v9 executionSession];
    [v13 postponeRestoreIfWaitingForEndEvent];

    if (v7)
    {
      v14 = [(HMDEventTrigger *)v9 executionSession];
      v15 = [v14 needsUserConfirmation];

      v16 = objc_autoreleasePoolPush();
      v17 = v9;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        if (v15)
        {
          v20 = &stru_286509E58;
        }

        else
        {
          v20 = @"not ";
        }

        v21 = [(HMDEventTrigger *)v17 executionSession];
        *buf = 138544130;
        v53 = v19;
        v54 = 2112;
        v55 = v20;
        v56 = 2112;
        v57 = v7;
        v58 = 2112;
        v59 = v21;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Execution session is already in progress, %@adding occurred device %@ for asking confirmation %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v16);
      if (v15)
      {
        v22 = [(HMDEventTrigger *)v17 executionSession];
        [v22 addEvent:v6 causingDevice:v7];

        v23 = [(HMDEventTrigger *)v17 executionSession];
        goto LABEL_21;
      }
    }

    else
    {
      v44 = objc_autoreleasePoolPush();
      v45 = v9;
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v47 = HMFGetLogIdentifier();
        v48 = [(HMDEventTrigger *)v45 executionSession];
        *buf = 138543618;
        v53 = v47;
        v54 = 2112;
        v55 = v48;
        _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@Execution session is already in progress, not executing again %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v44);
    }

    v23 = 0;
  }

  else
  {
    v51 = v6;
    v24 = objc_autoreleasePoolPush();
    v25 = v9;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [(HMDEventTrigger *)v25 endEvents];
      *buf = 138543618;
      v53 = v27;
      v54 = 2112;
      v55 = v28;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Creating execution session with end events %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v29 = [HMDEventTriggerExecutionSession alloc];
    v30 = [(HMDEventTrigger *)v25 predicateUtilities];
    v31 = [(HMDTrigger *)v25 workQueue];
    v32 = [(HMDTrigger *)v25 actionSets];
    v33 = [(HMDEventTrigger *)v25 evaluationCondition];
    v34 = [(HMDEventTrigger *)v25 recurrences];
    v35 = [(HMDEventTrigger *)v25 endEvents];
    v36 = [(HMDTrigger *)v25 msgDispatcher];
    v37 = [(HMDEventTriggerExecutionSession *)v29 initWithEventTrigger:v25 predicateUtilities:v30 triggerEvent:v51 causingDevice:v7 workQueue:v31 actionSets:v32 evaluationCondition:v33 recurrences:v34 endEvents:v35 msgDispatcher:v36];
    [(HMDEventTrigger *)v25 setExecutionSession:v37];

    v38 = objc_autoreleasePoolPush();
    v39 = v25;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v41 = HMFGetLogIdentifier();
      v42 = [(HMDEventTrigger *)v39 executionSession];
      *buf = 138543618;
      v53 = v41;
      v54 = 2112;
      v55 = v42;
      _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, "%{public}@Created action set execution session: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
    v43 = [(HMDEventTrigger *)v39 executionSession];
    [v43 evaluateFiringTrigger];

    v23 = [(HMDEventTrigger *)v39 executionSession];
    v6 = v51;
  }

LABEL_21:

  v49 = *MEMORY[0x277D85DE8];

  return v23;
}

- (BOOL)isEventTriggerOnLocalDeviceForAccessory:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6 && [(HMDEventTrigger *)self computedActive]&& [(HMDEventTrigger *)self shouldActivateOnLocalDevice])
  {
    v27 = v4;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = [(HMDEventTrigger *)self characteristicBaseEvents];
    v7 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v30;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = [*(*(&v29 + 1) + 8 * i) characteristic];
          v12 = [v11 accessory];
          v13 = [v12 identifier];
          v14 = [v6 identifier];
          v15 = [v13 isEqualToString:v14];

          if (v15)
          {
            v23 = objc_autoreleasePoolPush();
            v24 = self;
            v25 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v26 = HMFGetLogIdentifier();
              *buf = 138543618;
              v34 = v26;
              v35 = 2080;
              v36 = "[HMDEventTrigger isEventTriggerOnLocalDeviceForAccessory:]";
              _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Event trigger will run locally. [%s]", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v23);
            v20 = 1;
            v4 = v27;
            goto LABEL_19;
          }
        }

        v8 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v4 = v27;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543618;
    v34 = v19;
    v35 = 2080;
    v36 = "[HMDEventTrigger isEventTriggerOnLocalDeviceForAccessory:]";
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Event trigger will run on the resident. [%s]", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v20 = 0;
LABEL_19:

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)isEventTriggerOnRemoteGatewayForAccessory:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6 && [(HMDEventTrigger *)self computedActive]&& ![(HMDEventTrigger *)self shouldActivateOnLocalDevice])
  {
    v27 = v4;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = [(HMDEventTrigger *)self characteristicBaseEvents];
    v7 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v30;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = [*(*(&v29 + 1) + 8 * i) characteristic];
          v12 = [v11 accessory];
          v13 = [v12 identifier];
          v14 = [v6 identifier];
          v15 = [v13 isEqualToString:v14];

          if (v15)
          {
            v23 = objc_autoreleasePoolPush();
            v24 = self;
            v25 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v26 = HMFGetLogIdentifier();
              *buf = 138543618;
              v34 = v26;
              v35 = 2080;
              v36 = "[HMDEventTrigger isEventTriggerOnRemoteGatewayForAccessory:]";
              _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Event trigger will run on the resident. [%s]", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v23);
            v20 = 1;
            v4 = v27;
            goto LABEL_19;
          }
        }

        v8 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v4 = v27;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543618;
    v34 = v19;
    v35 = 2080;
    v36 = "[HMDEventTrigger isEventTriggerOnRemoteGatewayForAccessory:]";
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Event trigger will run locally. [%s]", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v20 = 0;
LABEL_19:

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)_executeOnceUpdated:(id)a3 message:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  -[HMDEventTrigger setExecuteOnce:](self, "setExecuteOnce:", [a3 BOOLValue]);
  v10 = *MEMORY[0x277CD22B8];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEventTrigger executeOnce](self, "executeOnce")}];
  v11[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  [v6 respondWithPayload:v8];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_updateEventTriggerExecuteOnce:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMDEventTrigger *)self checkSharedEventTriggerActivationResidentRequirement:v4])
  {
    v5 = [v4 BOOLForKey:*MEMORY[0x277CD22B8]];
    v6 = [(HMDEventTrigger *)self emptyModelObject];
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

    v9 = [MEMORY[0x277CCABB0] numberWithBool:v5];
    [v8 setExecuteOnce:v9];

    v10 = [(HMDTrigger *)self home];
    v11 = [v10 backingStore];
    v12 = [v4 name];
    v13 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v14 = [v11 transaction:v12 options:v13];

    [v14 add:v8 withMessage:v4];
    [v14 run];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Execute once requires shared-trigger-activation capable homehub", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateEventTriggerExecuteOnce:(id)a3
{
  v4 = [(HMDTrigger *)self updateEventTriggerMessage:6 message:a3 relay:1];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(HMDEventTrigger *)self _updateEventTriggerExecuteOnce:v4];
    v5 = v6;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)_updateOwningDevice:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMDEventTrigger *)self checkSharedEventTriggerActivationResidentRequirement:v4])
  {
    v5 = [v4 dataForKey:@"HM.device"];
    v28 = 0;
    v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v28];
    v7 = v28;
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v6)
    {
      if (v11)
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543618;
        v30 = v12;
        v31 = 2112;
        v32 = v6;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Taking over owner ship of trigger to %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v13 = [(HMDEventTrigger *)v9 emptyModelObject];
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

      [v15 setOwningDevice:v6];
      v16 = [(HMDTrigger *)v9 home];
      v17 = [v16 backingStore];
      v18 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v19 = [v17 transaction:@"UpdateOwningDevice" options:v18];

      [v19 add:v15 withMessage:v4];
      [v19 run];
    }

    else
    {
      if (v11)
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543618;
        v30 = v24;
        v31 = 2112;
        v32 = v7;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Failed to unarchive device from device data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v25 = [v4 responseHandler];

      if (!v25)
      {
        goto LABEL_17;
      }

      v19 = [v4 responseHandler];
      v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      (v19)[2](v19, v26, 0);
    }

LABEL_17:
    goto LABEL_18;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543362;
    v30 = v23;
    _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Updating owning device requires shared-trigger-activation capable homehub", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v20);
LABEL_18:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateOwningDevice:(id)a3
{
  v4 = [(HMDTrigger *)self updateEventTriggerMessage:7 message:a3 relay:1];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(HMDEventTrigger *)self _updateOwningDevice:v4];
    v5 = v6;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)_evaluationConditionUpdated:(id)a3 message:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(HMDEventTrigger *)self predicateUtilities];
  v9 = [v8 rewritePredicateForDaemon:v7 message:v6];

  [(HMDEventTrigger *)self setEvaluationCondition:v9];
  v10 = [(HMDEventTrigger *)self evaluationCondition];

  if (v10)
  {
    v17 = *MEMORY[0x277CD2298];
    v11 = [(HMDEventTrigger *)self predicateUtilities];
    v12 = [(HMDEventTrigger *)self evaluationCondition];
    v13 = [v11 rewritePredicateForClient:v12];
    v14 = encodeRootObject();
    v18[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  }

  else
  {
    v15 = 0;
  }

  [v6 respondWithPayload:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateEventTriggerCondition:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDTrigger *)self updateEventTriggerMessage:4 message:v4 relay:1];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 predicateForKey:*MEMORY[0x277CD2298]];
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v30 = 138543618;
      v31 = v11;
      v32 = 2112;
      v33 = v7;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating evaluation condition for trigger %@", &v30, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [(HMDEventTrigger *)v9 predicateUtilities];
    v13 = [v12 containsPresenceEvents:v7];

    if (v13 && ![(HMDEventTrigger *)v9 checkSharedEventTriggerActivationResidentRequirement:v6])
    {
      v25 = objc_autoreleasePoolPush();
      v26 = v9;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        v30 = 138543362;
        v31 = v28;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Presence Event Condition requires shared-trigger-activation capable homehub", &v30, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
    }

    else
    {
      v14 = [(HMDEventTrigger *)v9 emptyModelObject];
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

      v17 = [(HMDEventTrigger *)v9 predicateUtilities];
      v18 = [v17 rewritePredicateForDaemon:v7 message:v6];

      v19 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v18 requiringSecureCoding:1 error:0];
      [v16 setEvaluationCondition:v19];

      v20 = [(HMDTrigger *)v9 home];
      v21 = [v20 backingStore];
      v22 = [v6 name];
      v23 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v24 = [v21 transaction:v22 options:v23];

      [v24 add:v16 withMessage:v6];
      [v24 run];
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_eventTriggerRecurrencesUpdated:(id)a3 message:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 copy];
  [(HMDEventTrigger *)self setRecurrences:v7];

  v8 = [(HMDEventTrigger *)self recurrences];
  v9 = encodeRootObject();

  if (v9)
  {
    v12 = *MEMORY[0x277CD22C8];
    v13[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  }

  else
  {
    v10 = 0;
  }

  [v6 respondWithPayload:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_updateEventTriggerRecurrences:(id)a3
{
  v4 = *MEMORY[0x277CD22C8];
  v5 = a3;
  v16 = [v5 arrayOfDateComponentsForKey:v4];
  if ([HMDEventTrigger __validateRecurrences:?])
  {
    v6 = [(HMDEventTrigger *)self emptyModelObject];
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

    v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v16 requiringSecureCoding:1 error:0];
    [v8 setRecurrences:v9];

    v10 = [(HMDTrigger *)self home];
    v11 = [v10 backingStore];
    v12 = [v5 name];
    v13 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v14 = [v11 transaction:v12 options:v13];

    [v14 add:v8 withMessage:v5];
    [v14 run];
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:3 userInfo:0];
    v15 = [v5 responseHandler];

    (v15)[2](v15, v14, 0);
  }
}

- (void)_handleUpdateEventTriggerRecurrences:(id)a3
{
  v4 = [(HMDTrigger *)self updateEventTriggerMessage:5 message:a3 relay:1];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(HMDEventTrigger *)self _updateEventTriggerRecurrences:v4];
    v5 = v6;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (BOOL)_populateTriggerModel:(id)a3 fromBuilderMessage:(id)a4 transaction:(id)a5 responsePayload:(id)a6
{
  v111 = *MEMORY[0x277D85DE8];
  v81 = a3;
  v10 = a4;
  v85 = a5;
  obj = self;
  v84 = a6;
  v86 = [(HMDTrigger *)self home];
  v87 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v80 = v10;
  v11 = [v10 arrayForKey:*MEMORY[0x277CD2728]];
  v12 = [v11 countByEnumeratingWithState:&v100 objects:v110 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v101;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v101 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v100 + 1) + 8 * i);
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

        if (!v18)
        {
          goto LABEL_25;
        }

        v19 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v18];
        if (!v19)
        {
          v18 = v16;
LABEL_25:
          v35 = objc_autoreleasePoolPush();
          v36 = obj;
          v37 = HMFGetOSLogHandle();
          v39 = v80;
          v38 = v81;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v40 = HMFGetLogIdentifier();
            *buf = 138543618;
            v107 = v40;
            v108 = 2112;
            v109 = v18;
            _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@Invalid ActionSet reference: '%@'", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v35);
          v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
          [v80 respondWithError:v20];
          goto LABEL_57;
        }

        v20 = v19;
        v21 = [v86 actionSetWithUUID:v19];
        if (!v21)
        {
          v41 = objc_autoreleasePoolPush();
          v42 = obj;
          v43 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v44 = HMFGetLogIdentifier();
            *buf = 138543618;
            v107 = v44;
            v108 = 2112;
            v109 = v20;
            _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@Failed to resolve ActionSet reference: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v41);
          v45 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
          v39 = v80;
          [v80 respondWithError:v45];

          v46 = 0;
          v38 = v81;
          goto LABEL_58;
        }

        v22 = v21;
        v23 = [v21 uuid];
        v24 = [v23 UUIDString];
        [v87 addObject:v24];
      }

      v13 = [v11 countByEnumeratingWithState:&v100 objects:v110 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v25 = [(HMDTrigger *)obj actionSets];
  v26 = [v25 countByEnumeratingWithState:&v96 objects:v105 count:16];
  if (v26)
  {
    v27 = v26;
    v11 = 0;
    v28 = *v97;
    v29 = *MEMORY[0x277CCF1A0];
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v97 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v31 = *(*(&v96 + 1) + 8 * j);
        v32 = [v31 type];
        v33 = [v32 isEqual:v29];

        if (v33)
        {
          v34 = v31;

          v11 = v34;
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v96 objects:v105 count:16];
    }

    while (v27);
  }

  else
  {
    v11 = 0;
  }

  v47 = *MEMORY[0x277CD2760];
  v39 = v80;
  v18 = [v80 dictionaryForKey:*MEMORY[0x277CD2760]];
  v38 = v81;
  if (!v18)
  {
    goto LABEL_52;
  }

  if (v11)
  {
    v48 = [v11 modelObjectWithChangeType:2];
    [v85 add:v48];

    v94 = 0;
    v95 = 0;
    LOBYTE(v48) = [(HMDActionSet *)v11 _updateActionSetFromDictionary:v18 transaction:v85 response:&v95 error:&v94];
    v49 = v95;
    v20 = v94;
    if (v48)
    {
      [v84 setObject:v49 forKeyedSubscript:v47];
      v50 = [v11 uuid];
      v51 = [v50 UUIDString];
      [v87 addObject:v51];
LABEL_51:

LABEL_52:
      v20 = [v87 copy];
      [v38 setCurrentActionSets:v20];
      v46 = 1;
      goto LABEL_58;
    }

    v66 = objc_autoreleasePoolPush();
    v67 = obj;
    v68 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v69 = HMFGetLogIdentifier();
      *buf = 138543362;
      v107 = v69;
      _os_log_impl(&dword_2531F8000, v68, OS_LOG_TYPE_ERROR, "%{public}@Failed to modify trigger-owned action set", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v66);
    [v80 respondWithError:v20];
  }

  else
  {
    v52 = [MEMORY[0x277CCAD78] UUID];
    v53 = [MEMORY[0x277CCAD78] hm_deriveUUIDFromBaseUUID:v52];
    v54 = [v53 UUIDString];

    v55 = *MEMORY[0x277CCF1A0];
    v92 = 0;
    v93 = 0;
    v78 = v54;
    v56 = [(HMDHome *)v86 _createActionSetWithUUID:v52 name:v54 type:v55 fromDictionary:v18 transaction:v85 response:&v93 error:&v92];
    v57 = v93;
    v20 = v92;

    v79 = v57;
    if (v56)
    {
      [v84 setObject:v57 forKeyedSubscript:v47];
      v77 = v52;
      v58 = [v52 UUIDString];
      [v87 addObject:v58];

      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      obja = [(HMDTrigger *)obj actionSets];
      v59 = [obja countByEnumeratingWithState:&v88 objects:v104 count:16];
      if (v59)
      {
        v60 = v59;
        v61 = *v89;
        while (2)
        {
          for (k = 0; k != v60; ++k)
          {
            if (*v89 != v61)
            {
              objc_enumerationMutation(obja);
            }

            v63 = *(*(&v88 + 1) + 8 * k);
            v64 = [v63 type];
            v65 = [v64 isEqualToString:v55];

            if (v65)
            {
              v70 = [v63 modelObjectWithChangeType:3];
              [v85 add:v70];

              goto LABEL_50;
            }
          }

          v60 = [obja countByEnumeratingWithState:&v88 objects:v104 count:16];
          if (v60)
          {
            continue;
          }

          break;
        }
      }

LABEL_50:

      v39 = v80;
      v38 = v81;
      v51 = v78;
      v49 = v79;
      v50 = v77;
      goto LABEL_51;
    }

    v71 = objc_autoreleasePoolPush();
    v72 = obj;
    v73 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      v74 = HMFGetLogIdentifier();
      *buf = 138543362;
      v107 = v74;
      _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_ERROR, "%{public}@Failed to create trigger-owned action set", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v71);
    [v80 respondWithError:v20];

    v49 = v79;
  }

LABEL_57:
  v46 = 0;
LABEL_58:

  v75 = *MEMORY[0x277D85DE8];
  return v46;
}

- (BOOL)_validateUpdatingTriggerWithName:(id)a3 uuid:(id)a4 message:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = 20;
LABEL_9:
    v18 = [v16 hmErrorWithCode:v17];
    [v10 respondWithError:v18];

    v19 = 0;
    goto LABEL_10;
  }

  if (![v8 length])
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = 3;
    goto LABEL_9;
  }

  v11 = HMMaxLengthForNaming();
  if ([v8 length] > v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@New name is longer than the pre-defined max length", &v27, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = MEMORY[0x277CCA9B8];
    v17 = 46;
    goto LABEL_9;
  }

  v22 = [(HMDTrigger *)self home];
  v23 = [v22 triggerWithName:v8];

  if (v23 && ([v23 uuid], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "isEqual:", v9), v24, (v25 & 1) == 0))
  {
    v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:1];
    [v10 respondWithError:v26];

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

LABEL_10:
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (Class)eventTriggerTypeToEventClass:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277CD22D8]])
  {
    v4 = off_27971A078;
LABEL_15:
    v5 = *v4;
    v6 = objc_opt_class();
    goto LABEL_16;
  }

  if ([v3 isEqualToString:*MEMORY[0x277CD22F8]])
  {
    v4 = off_27971A188;
    goto LABEL_15;
  }

  if ([v3 isEqualToString:*MEMORY[0x277CD22D0]])
  {
    v4 = off_27971A030;
    goto LABEL_15;
  }

  if ([v3 isEqualToString:*MEMORY[0x277CD2310]])
  {
    v4 = off_27971A248;
    goto LABEL_15;
  }

  if ([v3 isEqualToString:*MEMORY[0x277CD22E0]])
  {
    v4 = off_27971A088;
    goto LABEL_15;
  }

  if ([v3 isEqualToString:*MEMORY[0x277CD2308]])
  {
    v4 = off_27971A200;
    goto LABEL_15;
  }

  if ([v3 isEqualToString:*MEMORY[0x277CD22E8]])
  {
    v4 = off_27971A0B0;
    goto LABEL_15;
  }

  v6 = 0;
LABEL_16:

  return v6;
}

- (void)_handleUpdateEventTrigger:(id)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 messagePayload];
    *buf = 138543874;
    v69 = v8;
    v70 = 2112;
    v71 = v4;
    v72 = 2112;
    v73 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Received request to update Event Trigger %@ / %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [(HMDTrigger *)v6 home];
  v11 = [v10 enabledResidents];
  v12 = [v11 count] == 0;

  if (!v12)
  {
    v54 = [v4 stringForKey:*MEMORY[0x277CD2758]];
    v52 = [v4 numberForKey:*MEMORY[0x277CD22C8]];
    [v52 unsignedIntegerValue];
    v51 = HMDaysOfTheWeekToDateComponents();
    v53 = [v4 mutableCopy];
    objc_initWeak(&location, v6);
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __45__HMDEventTrigger__handleUpdateEventTrigger___block_invoke;
    v64[3] = &unk_279733AE8;
    objc_copyWeak(&v66, &location);
    v13 = v4;
    v65 = v13;
    [v53 setResponseHandler:v64];
    v14 = [(HMDTrigger *)v6 name];
    if ([v14 isEqualToString:v54])
    {
    }

    else
    {
      v15 = [(HMDTrigger *)v6 uuid];
      v16 = [(HMDEventTrigger *)v6 _validateUpdatingTriggerWithName:v54 uuid:v15 message:v53];

      if (!v16)
      {
LABEL_25:

        objc_destroyWeak(&v66);
        objc_destroyWeak(&location);

        goto LABEL_26;
      }
    }

    if (v52 || [HMDEventTrigger __validateRecurrences:v51])
    {
      v17 = [HMDEventTriggerModel alloc];
      v18 = [(HMDTrigger *)v6 uuid];
      v19 = [v10 uuid];
      v20 = [(HMDBackingStoreModelObject *)v17 initWithObjectChangeType:2 uuid:v18 parentUUID:v19];

      v21 = [v10 backingStore];
      v22 = [v13 name];
      v23 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v50 = [v21 transaction:v22 options:v23];

      [(HMDEventTriggerModel *)v20 setName:v54];
      v24 = [v13 stringForKey:*MEMORY[0x277CD1250]];
      [(HMDEventTriggerModel *)v20 setConfiguredName:v24];

      v25 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "BOOLForKey:", *MEMORY[0x277CD2730])}];
      [(HMDEventTriggerModel *)v20 setActive:v25];

      v49 = [v13 predicateForKey:*MEMORY[0x277CD2298]];
      if (v49)
      {
        v26 = [(HMDEventTrigger *)v6 predicateUtilities];
        v27 = [v26 rewritePredicateForDaemon:v49 message:v13];

        v28 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v27 requiringSecureCoding:1 error:0];
        [(HMDEventTriggerModel *)v20 setEvaluationCondition:v28];
      }

      else
      {
        [(HMDEventTriggerModel *)v20 setEvaluationCondition:0];
      }

      v29 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v51 requiringSecureCoding:1 error:0];
      [(HMDEventTriggerModel *)v20 setRecurrences:v29];

      v30 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "BOOLForKey:", *MEMORY[0x277CD22B8])}];
      [(HMDEventTriggerModel *)v20 setExecuteOnce:v30];

      v31 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "BOOLForKey:", *MEMORY[0x277CD1260])}];
      [(HMDEventTriggerModel *)v20 setAutoDelete:v31];

      v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
      if ([(HMDEventTrigger *)v6 _populateTriggerModel:v20 fromBuilderMessage:v53 transaction:v50 responsePayload:v32])
      {
        v47 = v32;
        v48 = [[HMDEventTrigger alloc] initWithModel:v20 home:v10 message:v13];
        v33 = [v13 arrayForKey:*MEMORY[0x277CD22B0]];
        v34 = [(HMDEventTrigger *)v6 triggerEvents];
        v35 = [v34 mutableCopy];
        v63 = 0;
        v36 = [HMDEventTrigger updateEventsFromInfo:v48 existingEvents:v33 preserveUUIDs:v35 endEvent:MEMORY[0x277CBEC28] transaction:v50 message:v13 error:&v63];
        v37 = v63;

        if (v36)
        {

          v38 = [v13 arrayForKey:*MEMORY[0x277CD22A8]];
          v39 = [(HMDEventTrigger *)v6 endEvents];
          v40 = [v39 mutableCopy];
          v62 = 0;
          v41 = [HMDEventTrigger updateEventsFromInfo:v48 existingEvents:v38 preserveUUIDs:v40 endEvent:MEMORY[0x277CBEC38] transaction:v50 message:v13 error:&v62];
          v37 = v62;

          if (v41)
          {
            [v50 add:v20];
            v55[0] = MEMORY[0x277D85DD0];
            v55[1] = 3221225472;
            v55[2] = __45__HMDEventTrigger__handleUpdateEventTrigger___block_invoke_120;
            v55[3] = &unk_2797248F0;
            v56 = v53;
            v57 = v47;
            v58 = v20;
            v59 = v49;
            v60 = v10;
            v61 = v6;
            [v50 run:v55];
          }

          else
          {
            [v53 respondWithError:v37];
          }
        }

        else
        {
          [v53 respondWithError:v37];
        }

        v32 = v47;
      }
    }

    else
    {
      v42 = objc_autoreleasePoolPush();
      v43 = v6;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = HMFGetLogIdentifier();
        *buf = 138543618;
        v69 = v45;
        v70 = 2112;
        v71 = v51;
        _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, "%{public}@Received invalid values for recurrences: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v42);
      v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      [v53 respondWithError:v20];
    }

    goto LABEL_25;
  }

  v54 = [MEMORY[0x277CCA9B8] hmErrorWithCode:91];
  [v4 respondWithError:v54];
LABEL_26:

  v46 = *MEMORY[0x277D85DE8];
}

void __45__HMDEventTrigger__handleUpdateEventTrigger___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543874;
    v14 = v11;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Responding to the client about update event trigger status : Payload : [%@], error : [%@]", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  [*(a1 + 32) respondWithPayload:v6 error:v5];

  v12 = *MEMORY[0x277D85DE8];
}

- (uint64_t)updateEventsFromInfo:(void *)a1 existingEvents:(void *)a2 preserveUUIDs:(void *)a3 endEvent:(void *)a4 transaction:(void *)a5 message:(void *)a6 error:(void *)a7
{
  v110 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v77 = a3;
  v14 = a4;
  v15 = a1;
  v16 = v14;
  v17 = a5;
  v18 = a6;
  if (a1)
  {
    v76 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v81 = [a1 home];
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v19 = v13;
    v79 = [v19 countByEnumeratingWithState:&v97 objects:v109 count:16];
    if (v79)
    {
      v80 = *v98;
      v73 = *MEMORY[0x277CD22A0];
      v78 = *MEMORY[0x277CD22F0];
      v74 = v18;
      v75 = a7;
      v82 = a1;
      v72 = v13;
LABEL_4:
      v20 = 0;
      while (1)
      {
        if (*v98 != v80)
        {
          objc_enumerationMutation(v19);
        }

        v21 = *(*(&v97 + 1) + 8 * v20);
        v22 = v21;
        v23 = v16 ? [v16 BOOLValue] : objc_msgSend(v21, "hmf_BOOLForKey:", v73);
        v87 = v23;
        v24 = v22;
        objc_opt_class();
        v25 = (objc_opt_isKindOfClass() & 1) != 0 ? v24 : 0;
        v26 = v25;

        v86 = v26;
        if (!v26)
        {
          break;
        }

        v27 = [v24 hmf_stringForKey:v78];
        if (!v27)
        {
          v61 = objc_autoreleasePoolPush();
          v62 = v15;
          v63 = HMFGetOSLogHandle();
          v13 = v72;
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            v64 = HMFGetLogIdentifier();
            *buf = 138543618;
            v104 = v64;
            v105 = 2112;
            v106 = v86;
            _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_ERROR, "%{public}@Event must have trigger type %@", buf, 0x16u);

            a7 = v75;
          }

          objc_autoreleasePoolPop(v61);
          v65 = 0;
          if (a7)
          {
            goto LABEL_51;
          }

LABEL_52:

LABEL_53:
          v55 = 0;
          goto LABEL_59;
        }

        v84 = v27;
        v28 = [v15 eventTriggerTypeToEventClass:?];
        if (!v28)
        {
          v66 = objc_autoreleasePoolPush();
          v67 = v15;
          v68 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            v69 = HMFGetLogIdentifier();
            *buf = 138543618;
            v104 = v69;
            v105 = 2112;
            v106 = v84;
            _os_log_impl(&dword_2531F8000, v68, OS_LOG_TYPE_ERROR, "%{public}@Invalid event trigger type: %@", buf, 0x16u);

            a7 = v75;
          }

          objc_autoreleasePoolPop(v66);
          v13 = v72;
          v65 = v84;
          if (!a7)
          {
            goto LABEL_52;
          }

LABEL_51:
          *a7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
          goto LABEL_52;
        }

        v29 = [v28 alloc];
        v96 = 0;
        v83 = v24;
        v30 = [v15 createEventModel:v24 endEvent:v87 message:v18 checkForSupport:1 transaction:v17 error:&v96];
        v85 = v96;
        v31 = [v29 initWithModel:v30 home:v81];
        v32 = v15;
        v33 = v31;

        if (v33)
        {
          [v76 addObject:v33];
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v34 = v77;
          v35 = [v34 countByEnumeratingWithState:&v92 objects:v102 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v93;
LABEL_19:
            v38 = v16;
            v39 = 0;
            while (1)
            {
              if (*v93 != v37)
              {
                objc_enumerationMutation(v34);
              }

              v40 = *(*(&v92 + 1) + 8 * v39);
              if ([v40 isCompatibleWithEvent:v33])
              {
                break;
              }

              if (v36 == ++v39)
              {
                v36 = [v34 countByEnumeratingWithState:&v92 objects:v102 count:16];
                v16 = v38;
                if (v36)
                {
                  goto LABEL_19;
                }

                goto LABEL_25;
              }
            }

            v41 = v40;

            v16 = v38;
            if (!v41)
            {
              goto LABEL_28;
            }

            v42 = [v41 uuid];
            [v33 setUuid:v42];

            v43 = [v41 eventTrigger];
            [v33 setEventTrigger:v43];

            v44 = [v33 modelObjectWithChangeType:2];
            [v17 add:v44];

            [v34 removeObject:v41];
            v18 = v74;
            a7 = v75;
            v45 = v83;
          }

          else
          {
LABEL_25:

LABEL_28:
            v45 = v83;
            v18 = v74;
            a7 = v75;
            [(HMDEventTrigger *)v82 _addEventModelFromDictionary:v83 endEvent:v87 transaction:v17 message:v74 error:v75];
          }
        }

        else
        {
          v46 = objc_autoreleasePoolPush();
          v47 = v32;
          v48 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            v49 = HMFGetLogIdentifier();
            *buf = 138543874;
            v104 = v49;
            v105 = 2112;
            v106 = v86;
            v107 = 2112;
            v108 = v85;
            _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize action: %@ with error: %@", buf, 0x20u);

            a7 = v75;
          }

          objc_autoreleasePoolPop(v46);
          v45 = v83;
          if (a7)
          {
            *a7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
          }
        }

        if (!v33)
        {
          v55 = 0;
          v13 = v72;
          goto LABEL_59;
        }

        ++v20;
        v15 = v82;
        if (v20 == v79)
        {
          v13 = v72;
          v79 = [v19 countByEnumeratingWithState:&v97 objects:v109 count:16];
          if (v79)
          {
            goto LABEL_4;
          }

          goto LABEL_36;
        }
      }

      v56 = objc_autoreleasePoolPush();
      v57 = v15;
      v58 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v59 = HMFGetLogIdentifier();
        v60 = [v57 name];
        *buf = 138543618;
        v104 = v59;
        v105 = 2112;
        v106 = v60;
        _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_ERROR, "%{public}@Can't update events %@; invalid serialized event", buf, 0x16u);

        a7 = v75;
      }

      objc_autoreleasePoolPop(v56);
      v13 = v72;
      if (a7)
      {
        *a7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      }

      goto LABEL_53;
    }

LABEL_36:

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v19 = v77;
    v50 = [v19 countByEnumeratingWithState:&v88 objects:v101 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v89;
      do
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v89 != v52)
          {
            objc_enumerationMutation(v19);
          }

          v54 = [*(*(&v88 + 1) + 8 * i) modelObjectWithChangeType:3];
          [v17 add:v54];
        }

        v51 = [v19 countByEnumeratingWithState:&v88 objects:v101 count:16];
      }

      while (v51);
    }

    v55 = 1;
LABEL_59:
  }

  else
  {
    v55 = 0;
  }

  v70 = *MEMORY[0x277D85DE8];
  return v55;
}

void __45__HMDEventTrigger__handleUpdateEventTrigger___block_invoke_120(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 respondWithError:a2];
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) createPayloadWithCondition:*(a1 + 56)];
    [v4 addEntriesFromDictionary:v5];

    v6 = *(a1 + 64);
    v7 = [*(a1 + 72) triggerEvents];
    v8 = [(HMDHome *)v6 _createEventsPayload:v7];
    [*(a1 + 40) setObject:v8 forKeyedSubscript:*MEMORY[0x277CD22B0]];

    v9 = *(a1 + 64);
    v10 = [*(a1 + 72) endEvents];
    v11 = [(HMDHome *)v9 _createEventsPayload:v10];
    [*(a1 + 40) setObject:v11 forKeyedSubscript:*MEMORY[0x277CD22A8]];

    v12 = *(a1 + 32);
    v13 = [*(a1 + 40) copy];
    [v12 respondWithPayload:v13];
  }
}

- (void)_addEventModelFromDictionary:(uint64_t)a3 endEvent:(void *)a4 transaction:(void *)a5 message:(void *)a6 error:
{
  v94 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a4;
  v13 = a5;
  v89 = 0;
  v14 = [a1 createEventModel:v11 endEvent:a3 message:v13 checkForSupport:1 transaction:v12 error:&v89];
  v88 = v89;
  if (v14)
  {
    v86 = v13;
    v87 = v11;
    [v12 add:v14];
    v15 = v14;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v17 = [a1 home];
      v18 = [[HMDCharacteristicEvent alloc] initWithModel:v15 home:v17];
      if (v18)
      {
        [a1 addEvent:v18];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = [MEMORY[0x277CCAB98] defaultCenter];
          [v19 postNotificationName:@"HMDEventTriggerCharacteristicBasedEventAddedNotification" object:v17 userInfo:0];
        }
      }

      else
      {
        v26 = objc_autoreleasePoolPush();
        v27 = a1;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543618;
          v91 = v29;
          v92 = 2112;
          v93 = v15;
          _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Failed to create event object with event model %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v26);
      }
    }

    else
    {
      v18 = 0;
    }

    v30 = v15;
    objc_opt_class();
    v31 = objc_opt_isKindOfClass();

    if (v31)
    {
      v32 = [a1 home];
      v33 = [[HMDLocationEvent alloc] initWithModel:v30 home:v32];

      if (v33)
      {
        [a1 addEvent:v33];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v34 = [MEMORY[0x277CCAB98] defaultCenter];
          [v34 postNotificationName:@"HMDEventTriggerCharacteristicBasedEventAddedNotification" object:v32 userInfo:0];
        }
      }

      else
      {
        v35 = objc_autoreleasePoolPush();
        v36 = a1;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = HMFGetLogIdentifier();
          *buf = 138543618;
          v91 = v38;
          v92 = 2112;
          v93 = v30;
          _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Failed to create event object with event model %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v35);
      }
    }

    else
    {
      v33 = v18;
    }

    v39 = v30;
    objc_opt_class();
    v40 = objc_opt_isKindOfClass();

    if (v40)
    {
      v41 = [a1 home];
      v42 = [[HMDCalendarEvent alloc] initWithModel:v39 home:v41];

      if (v42)
      {
        [a1 addEvent:v42];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v43 = [MEMORY[0x277CCAB98] defaultCenter];
          [v43 postNotificationName:@"HMDEventTriggerCharacteristicBasedEventAddedNotification" object:v41 userInfo:0];
        }
      }

      else
      {
        v44 = objc_autoreleasePoolPush();
        v45 = a1;
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v47 = HMFGetLogIdentifier();
          *buf = 138543618;
          v91 = v47;
          v92 = 2112;
          v93 = v39;
          _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@Failed to create event object with event model %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v44);
      }
    }

    else
    {
      v42 = v33;
    }

    v48 = v39;
    objc_opt_class();
    v49 = objc_opt_isKindOfClass();

    if (v49)
    {
      v50 = [a1 home];
      v51 = [[HMDSignificantTimeEvent alloc] initWithModel:v48 home:v50];

      if (v51)
      {
        [a1 addEvent:v51];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v52 = [MEMORY[0x277CCAB98] defaultCenter];
          [v52 postNotificationName:@"HMDEventTriggerCharacteristicBasedEventAddedNotification" object:v50 userInfo:0];
        }
      }

      else
      {
        v53 = objc_autoreleasePoolPush();
        v54 = a1;
        v55 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          v56 = HMFGetLogIdentifier();
          *buf = 138543618;
          v91 = v56;
          v92 = 2112;
          v93 = v48;
          _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_INFO, "%{public}@Failed to create event object with event model %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v53);
      }
    }

    else
    {
      v51 = v42;
    }

    v57 = v48;
    objc_opt_class();
    v58 = objc_opt_isKindOfClass();

    if (v58)
    {
      v59 = [a1 home];
      v60 = [[HMDDurationEvent alloc] initWithModel:v57 home:v59];

      if (v60)
      {
        [a1 addEvent:v60];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v61 = [MEMORY[0x277CCAB98] defaultCenter];
          [v61 postNotificationName:@"HMDEventTriggerCharacteristicBasedEventAddedNotification" object:v59 userInfo:0];
        }
      }

      else
      {
        v62 = objc_autoreleasePoolPush();
        v63 = a1;
        v64 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
        {
          v65 = HMFGetLogIdentifier();
          *buf = 138543618;
          v91 = v65;
          v92 = 2112;
          v93 = v57;
          _os_log_impl(&dword_2531F8000, v64, OS_LOG_TYPE_INFO, "%{public}@Failed to create event object with event model %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v62);
      }
    }

    else
    {
      v60 = v51;
    }

    v66 = v57;
    objc_opt_class();
    v67 = objc_opt_isKindOfClass();

    if (v67)
    {
      v68 = [a1 home];
      v69 = [[HMDCharacteristicThresholdRangeEvent alloc] initWithModel:v66 home:v68];

      if (v69)
      {
        [a1 addEvent:v69];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v70 = [MEMORY[0x277CCAB98] defaultCenter];
          [v70 postNotificationName:@"HMDEventTriggerCharacteristicBasedEventAddedNotification" object:v68 userInfo:0];
        }
      }

      else
      {
        v71 = objc_autoreleasePoolPush();
        v72 = a1;
        v73 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
        {
          v74 = HMFGetLogIdentifier();
          *buf = 138543618;
          v91 = v74;
          v92 = 2112;
          v93 = v66;
          _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_INFO, "%{public}@Failed to create event object with event model %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v71);
      }
    }

    else
    {
      v69 = v60;
    }

    v75 = v66;
    objc_opt_class();
    v76 = objc_opt_isKindOfClass();

    if (v76)
    {
      v77 = [a1 home];
      v78 = [[HMDPresenceEvent alloc] initWithModel:v75 home:v77];

      if (v78)
      {
        [a1 addEvent:v78];
        objc_opt_class();
        v24 = v88;
        if (objc_opt_isKindOfClass())
        {
          v79 = [MEMORY[0x277CCAB98] defaultCenter];
          [v79 postNotificationName:@"HMDEventTriggerCharacteristicBasedEventAddedNotification" object:v77 userInfo:0];
        }
      }

      else
      {
        v80 = objc_autoreleasePoolPush();
        v81 = a1;
        v82 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
        {
          v83 = HMFGetLogIdentifier();
          *buf = 138543618;
          v91 = v83;
          v92 = 2112;
          v93 = v75;
          _os_log_impl(&dword_2531F8000, v82, OS_LOG_TYPE_INFO, "%{public}@Failed to create event object with event model %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v80);
        v24 = v88;
      }
    }

    else
    {
      v78 = v69;
      v24 = v88;
    }

    v13 = v86;
    v11 = v87;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = a1;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v91 = v23;
      v92 = 2112;
      v93 = v11;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Cannot create event model for event info %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v24 = v88;
    if (a6)
    {
      if (v88)
      {
        v25 = v88;
        *a6 = v88;
      }

      else
      {
        v85 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
        *a6 = v85;
      }
    }
  }

  v84 = *MEMORY[0x277D85DE8];
}

- (id)_updateEventsOnEventTrigger:(id)a3
{
  v105 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v70 = v3;
  if ([v3 isRemote] & 1) != 0 || (-[HMDEventTrigger locationEvents](self, "locationEvents"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v3 = v70, !v5) || (objc_msgSend(v70, "isAuthorizedForLocationAccess"))
  {
    v71 = *MEMORY[0x277CD22B0];
    v6 = [v3 arrayForKey:?];
    v75 = [MEMORY[0x277CBEB18] array];
    v7 = [v70 BOOLForKey:*MEMORY[0x277CD22A0]];
    v78 = [(HMDTrigger *)self home];
    v8 = [v78 backingStore];
    v9 = [v70 name];
    v10 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v79 = [v8 transaction:v9 options:v10];

    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    obj = v6;
    v74 = [obj countByEnumeratingWithState:&v91 objects:v100 count:16];
    v12 = v74 != 0;
    if (v74)
    {
      v72 = *v92;
      *&v11 = 138543362;
      v68 = v11;
LABEL_6:
      v13 = 0;
      while (1)
      {
        if (*v92 != v72)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v91 + 1) + 8 * v13);
        v90 = 0;
        v15 = [(HMDEventTrigger *)self createEventModel:v14 endEvent:v7 message:v70 checkForSupport:1 transaction:v79 error:&v90, v68];
        v76 = v90;
        if (!v15)
        {
          break;
        }

        if (![(HMDEventTrigger *)self _checkAddEventModel:v15 message:v70])
        {
          v53 = objc_autoreleasePoolPush();
          v54 = self;
          v55 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            v56 = HMFGetLogIdentifier();
            *buf = v68;
            v102 = v56;
            _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_INFO, "%{public}@Cannot update events - Incompatible home hub", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v53);
LABEL_42:

          v57 = 0;
          goto LABEL_47;
        }

        if ([v78 isSharedAdmin])
        {
          v16 = objc_autoreleasePoolPush();
          v17 = self;
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = HMFGetLogIdentifier();
            *buf = v68;
            v102 = v19;
            _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@shared admin is sending the request to resident.", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v16);
          v20 = objc_alloc(MEMORY[0x277D0F820]);
          v21 = [(HMDTrigger *)v17 uuid];
          v22 = [v20 initWithTarget:v21];

          v23 = MEMORY[0x277D0F818];
          v98 = v71;
          v99 = v14;
          v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
          v25 = [v23 messageWithName:@"kAddEventToEventTriggerRequestKey" qualityOfService:9 destination:v22 payload:v24];

          [v75 addObject:v25];
        }

        [v79 add:v15 withMessage:0];

        if (v74 == ++v13)
        {
          v74 = [obj countByEnumeratingWithState:&v91 objects:v100 count:16];
          if (v74)
          {
            goto LABEL_6;
          }

          goto LABEL_17;
        }
      }

      v51 = [v70 responseHandler];

      if (v51)
      {
        if (!v76)
        {
          v76 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        }

        v52 = [v70 responseHandler];
        (v52)[2](v52, v76, 0);
      }

      v15 = 0;
      goto LABEL_42;
    }

LABEL_17:

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v77 = [(HMDEventTrigger *)self events];
    v26 = [v77 countByEnumeratingWithState:&v86 objects:v97 count:16];
    if (v26)
    {
      v27 = *v87;
      v73 = *MEMORY[0x277CD2340];
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v87 != v27)
          {
            objc_enumerationMutation(v77);
          }

          v29 = *(*(&v86 + 1) + 8 * i);
          if (v7 == [v29 isEndEvent])
          {
            v30 = objc_autoreleasePoolPush();
            v31 = self;
            v32 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              v33 = HMFGetLogIdentifier();
              *buf = 138543618;
              v102 = v33;
              v103 = 2112;
              v104 = v29;
              _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Deleting event %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v30);
            v34 = [HMDEventModel alloc];
            v35 = [v29 uuid];
            v36 = [(HMDTrigger *)v31 uuid];
            v37 = [(HMDBackingStoreModelObject *)v34 initWithObjectChangeType:3 uuid:v35 parentUUID:v36];

            if ([v78 isSharedAdmin])
            {
              v38 = objc_autoreleasePoolPush();
              v39 = v31;
              v40 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                v41 = HMFGetLogIdentifier();
                *buf = 138543362;
                v102 = v41;
                _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@Admin user : Remove event from trigger", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v38);
              v42 = objc_alloc(MEMORY[0x277D0F820]);
              v43 = [(HMDTrigger *)v39 uuid];
              v44 = [v42 initWithTarget:v43];

              v45 = MEMORY[0x277D0F818];
              v95 = v73;
              v46 = [v29 uuid];
              v47 = [v46 UUIDString];
              v96 = v47;
              v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
              v49 = [v45 messageWithName:@"kRemoveEventFromEventTriggerRequestKey" qualityOfService:9 destination:v44 payload:v48];

              [v75 addObject:v49];
            }

            [v79 add:v37 withMessage:0];

            v12 = 1;
          }
        }

        v26 = [v77 countByEnumeratingWithState:&v86 objects:v97 count:16];
      }

      while (v26);
    }

    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __47__HMDEventTrigger__updateEventsOnEventTrigger___block_invoke;
    aBlock[3] = &unk_2797248C8;
    objc_copyWeak(&v83, &location);
    v84 = v7;
    v82 = v70;
    v50 = _Block_copy(aBlock);
    if (v12)
    {
      [v79 run:v50];
    }

    else
    {
      v58 = objc_autoreleasePoolPush();
      v59 = self;
      v60 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v61 = HMFGetLogIdentifier();
        *buf = 138543362;
        v102 = v61;
        _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_ERROR, "%{public}@No events updated, calling the completion handler rightaway", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v58);
      v50[2](v50, 0);
    }

    v57 = [v75 copy];

    objc_destroyWeak(&v83);
    objc_destroyWeak(&location);
LABEL_47:
  }

  else
  {
    obj = [MEMORY[0x277CCA9B8] hmErrorWithCode:85];
    [v70 respondWithError:obj];
    v64 = objc_autoreleasePoolPush();
    v65 = self;
    v66 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
    {
      v67 = HMFGetLogIdentifier();
      *buf = 138543618;
      v102 = v67;
      v103 = 2112;
      v104 = obj;
      _os_log_impl(&dword_2531F8000, v66, OS_LOG_TYPE_INFO, "%{public}@Client does not have authorization for location, cannot remove event. [%@]", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v64);
    v57 = 0;
  }

  v62 = *MEMORY[0x277D85DE8];

  return v57;
}

void __47__HMDEventTrigger__updateEventsOnEventTrigger___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained workQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __47__HMDEventTrigger__updateEventsOnEventTrigger___block_invoke_2;
    v14[3] = &unk_279731C38;
    v7 = v3;
    v18 = *(a1 + 48);
    v15 = v7;
    v16 = v5;
    v17 = *(a1 + 32);
    dispatch_async(v6, v14);

    v8 = v15;
LABEL_7:

    goto LABEL_8;
  }

  v9 = [*(a1 + 32) responseHandler];

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v12;
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Could not finish the request as self is no longer valid. Replying back to client with error:[%@]", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v8 = [*(a1 + 32) responseHandler];
    (v8)[2](v8, v3, 0);
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x277D85DE8];
}

void __47__HMDEventTrigger__updateEventsOnEventTrigger___block_invoke_2(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 32);
      *buf = 138543618;
      v30 = v5;
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_ERROR, "%{public}@Error occurred while updating events on event trigger. [%@]", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 48) respondWithError:*(a1 + 32)];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v8 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
    [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x277CD22A0]];

    v9 = *(a1 + 40);
    if (*(a1 + 56))
    {
      [v9 endEvents];
    }

    else
    {
      [v9 triggerEvents];
    }
    v10 = ;
    v11 = [MEMORY[0x277CBEB18] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v35 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        v16 = 0;
        do
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v25 + 1) + 8 * v16) createPayload];
          [v11 addObject:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v25 objects:v35 count:16];
      }

      while (v14);
    }

    v18 = [v11 copy];
    [v7 setObject:v18 forKeyedSubscript:*MEMORY[0x277CD22B0]];

    v19 = objc_autoreleasePoolPush();
    v20 = *(a1 + 40);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [*(a1 + 48) name];
      *buf = 138543874;
      v30 = v22;
      v31 = 2112;
      v32 = v23;
      v33 = 2112;
      v34 = v7;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@All the events updated. Updating clients. %@ : %@]", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    [*(a1 + 48) respondWithPayload:v7];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateEventsOnEventTrigger:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDTrigger *)self updateEventTriggerMessage:2 message:v4 relay:0];
  if (v5)
  {
    v6 = [(HMDEventTrigger *)self _updateEventsOnEventTrigger:v5];
    v7 = [(HMDTrigger *)self home];
    if ([v6 count] && objc_msgSend(v7, "isSharedAdmin"))
    {
      v31 = v7;
      v32 = [v4 mutableCopy];
      [v32 setResponseHandler:0];
      if ([(HMDEventTrigger *)self checkSharedEventTriggerActivationResidentRequirement:0])
      {
        v8 = objc_autoreleasePoolPush();
        v9 = self;
        v10 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = HMFGetLogIdentifier();
          v12 = [v4 name];
          *buf = 138543618;
          v39 = v11;
          v40 = 2112;
          v41 = v12;
          _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@The resident supports shared-trigger-activation, relaying the update events message as is : %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v8);
        v13 = [v31 administratorHandler];
        v14 = [v13 operationForMessage:v32 error:0];
        if (v14)
        {
          [v13 addOperation:v14];
        }
      }

      else
      {
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v13 = v6;
        v15 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v15)
        {
          v16 = v15;
          v28 = v6;
          v29 = v5;
          v30 = v4;
          v17 = *v34;
          v18 = v7;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v34 != v17)
              {
                objc_enumerationMutation(v13);
              }

              v20 = *(*(&v33 + 1) + 8 * i);
              v21 = objc_autoreleasePoolPush();
              v22 = self;
              v23 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                v24 = HMFGetLogIdentifier();
                *buf = 138543618;
                v39 = v24;
                v40 = 2112;
                v41 = v20;
                _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@The resident does not support shared-trigger-activation, relaying the message %@", buf, 0x16u);

                v18 = v31;
              }

              objc_autoreleasePoolPop(v21);
              v25 = [v18 administratorHandler];
              v26 = [v25 operationForMessage:v32 error:0];
              if (v26)
              {
                [v25 addOperation:v26];
              }
            }

            v16 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
          }

          while (v16);
          v5 = v29;
          v4 = v30;
          v6 = v28;
        }
      }

      v7 = v31;
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)checkSharedEventTriggerActivationResidentRequirement:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDTrigger *)self home];
  v6 = [v5 enabledResidents];

  if ([v6 count])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v27;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v10 |= [*(*(&v26 + 1) + 8 * i) supportsSharedEventTriggerActivation];
        }

        v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v9);

      if (v10)
      {
        LOBYTE(v13) = 1;
        goto LABEL_21;
      }
    }

    else
    {
    }

    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v22;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Did not find any compatible resident device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v13 = [v4 responseHandler];

    if (v13)
    {
      v18 = 92;
      goto LABEL_20;
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Did not find any resident device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v13 = [v4 responseHandler];

    if (v13)
    {
      v18 = 91;
LABEL_20:
      v23 = [v4 responseHandler];
      v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:v18];
      (v23)[2](v23, v13, 0);

      LOBYTE(v13) = 0;
    }
  }

LABEL_21:

  v24 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_checkAddEventModel:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 endEvent];
  v9 = [v8 BOOLValue];

  v10 = (v9 & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [(HMDEventTrigger *)self checkSharedEventTriggerActivationResidentRequirement:v7];
  return v10;
}

- (BOOL)addEventsFromMessage:(id)a3 preserveUUIDs:(BOOL)a4 transaction:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [v10 arrayForKey:*MEMORY[0x277CD22B0]];
  v13 = [v10 arrayForKey:*MEMORY[0x277CD22A8]];
  if (v13)
  {
    if (![(HMDEventTrigger *)self addEventsFromInfo:v12 preserveUUIDs:a4 endEvent:MEMORY[0x277CBEC28] transaction:v11 message:v10 error:a6])
    {
      v18 = 0;
      goto LABEL_7;
    }

    v14 = MEMORY[0x277CBEC38];
    v15 = self;
    v16 = v13;
    v17 = a4;
  }

  else
  {
    v15 = self;
    v16 = v12;
    v17 = a4;
    v14 = 0;
  }

  v18 = [(HMDEventTrigger *)v15 addEventsFromInfo:v16 preserveUUIDs:v17 endEvent:v14 transaction:v11 message:v10 error:a6];
LABEL_7:

  return v18;
}

- (BOOL)addEventsFromInfo:(char)a3 preserveUUIDs:(void *)a4 endEvent:(void *)a5 transaction:(void *)a6 message:(void *)a7 error:
{
  v39 = *MEMORY[0x277D85DE8];
  obj = a2;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (a1)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v14 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v35;
      v28 = *MEMORY[0x277CD22A0];
      v17 = *MEMORY[0x277CD2340];
      v29 = v11;
      do
      {
        v18 = 0;
        v30 = v15;
        do
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v34 + 1) + 8 * v18);
          v20 = v19;
          if (v11)
          {
            v21 = [v11 BOOLValue];
          }

          else
          {
            v21 = [v19 hmf_BOOLForKey:v28];
          }

          v22 = v21;
          if ((a3 & 1) == 0)
          {
            v23 = v13;
            v24 = [v20 objectForKeyedSubscript:v17];

            if (v24)
            {
              v25 = [v20 mutableCopy];
              [v25 setObject:0 forKeyedSubscript:v17];

              v20 = v25;
            }

            v13 = v23;
            v11 = v29;
            v15 = v30;
          }

          [(HMDEventTrigger *)a1 _addEventModelFromDictionary:v20 endEvent:v22 transaction:v12 message:v13 error:a7];

          ++v18;
        }

        while (v15 != v18);
        v15 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v15);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return a1 != 0;
}

- (void)_handleRemoveEventModel:(id)a3 message:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDEventTrigger *)self events];
  v9 = [v6 uuid];
  v10 = [v8 hmf_firstObjectWithUUID:v9];

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v14;
    v28 = 2112;
    v29 = v10;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Removing event %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  if (v10)
  {
    v15 = v10;
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

    [v17 invalidate];
    [(HMDEventTrigger *)v12 removeEvent:v15];
    v24 = @"kUUIDsOfEventsKey";
    v18 = [v15 uuid];
    v19 = [v18 UUIDString];
    v23 = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
    v25 = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];

    [(HMDTrigger *)v12 markChangedForMessage:v7];
    [v7 respondWithPayload:v21];
  }

  else
  {
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [v7 respondWithError:v21];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_removeEventsFromEventTrigger:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uuidForKey:*MEMORY[0x277CD2340]];
  v6 = [(HMDEventTrigger *)self events];
  v7 = [v6 hmf_firstObjectWithUUID:v5];

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) == 0 || ([v4 isAuthorizedForLocationAccess])
    {
      v8 = [HMDEventModel alloc];
      v9 = [v7 uuid];
      v10 = [(HMDTrigger *)self uuid];
      v11 = [(HMDBackingStoreModelObject *)v8 initWithObjectChangeType:3 uuid:v9 parentUUID:v10];

      v12 = [(HMDTrigger *)self home];
      v13 = [v12 backingStore];
      v14 = [v4 name];
      v15 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v16 = [v13 transaction:v14 options:v15];

      [v16 add:v11 withMessage:v4];
      [v16 run];

      goto LABEL_14;
    }

    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v32 = 138543362;
      v33 = v27;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Client does have authorization for location, cannot remove event", &v32, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    v22 = MEMORY[0x277CCA9B8];
    v23 = 85;
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [(HMDTrigger *)v18 name];
      v32 = 138543874;
      v33 = v20;
      v34 = 2112;
      v35 = v5;
      v36 = 2112;
      v37 = v21;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Couldn't find event with UUID %@ in trigger %@", &v32, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v22 = MEMORY[0x277CCA9B8];
    v23 = 2;
  }

  v28 = [v22 hmErrorWithCode:v23];
  v29 = [v4 responseHandler];

  if (v29)
  {
    v30 = [v4 responseHandler];
    (v30)[2](v30, v28, 0);
  }

LABEL_14:
  v31 = *MEMORY[0x277D85DE8];
}

- (void)_handleAddEventModel:(id)a3 message:(id)a4
{
  v89 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v10 = 0;
  if (v8 && (isKindOfClass & 1) != 0)
  {
    v11 = [(HMDTrigger *)self home];
    v10 = [[HMDCharacteristicEvent alloc] initWithModel:v8 home:v11];
    if (v10)
    {
      [(HMDEventTrigger *)self addEvent:v10];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [MEMORY[0x277CCAB98] defaultCenter];
        [v12 postNotificationName:@"HMDEventTriggerCharacteristicBasedEventAddedNotification" object:v11 userInfo:0];
      }
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v84 = v16;
        v85 = 2112;
        v86 = v8;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Failed to create event object with event model %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  v17 = v8;
  objc_opt_class();
  v18 = objc_opt_isKindOfClass();

  if (v8 && (v18 & 1) != 0)
  {
    v19 = [(HMDTrigger *)self home];
    v20 = [[HMDLocationEvent alloc] initWithModel:v17 home:v19];

    if (v20)
    {
      [(HMDEventTrigger *)self addEvent:v20];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [MEMORY[0x277CCAB98] defaultCenter];
        [v21 postNotificationName:@"HMDEventTriggerCharacteristicBasedEventAddedNotification" object:v19 userInfo:0];
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        v84 = v25;
        v85 = 2112;
        v86 = v17;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Failed to create event object with event model %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
    }
  }

  else
  {
    v20 = v10;
  }

  v26 = v17;
  objc_opt_class();
  v27 = objc_opt_isKindOfClass();

  if (v8 && (v27 & 1) != 0)
  {
    v28 = [(HMDTrigger *)self home];
    v29 = [[HMDCalendarEvent alloc] initWithModel:v26 home:v28];

    if (v29)
    {
      [(HMDEventTrigger *)self addEvent:v29];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = [MEMORY[0x277CCAB98] defaultCenter];
        [v30 postNotificationName:@"HMDEventTriggerCharacteristicBasedEventAddedNotification" object:v28 userInfo:0];
      }
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      v32 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543618;
        v84 = v34;
        v85 = 2112;
        v86 = v26;
        _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Failed to create event object with event model %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v31);
    }
  }

  else
  {
    v29 = v20;
  }

  v35 = v26;
  objc_opt_class();
  v36 = objc_opt_isKindOfClass();

  if (v8 && (v36 & 1) != 0)
  {
    v37 = [(HMDTrigger *)self home];
    v38 = [[HMDSignificantTimeEvent alloc] initWithModel:v35 home:v37];

    if (v38)
    {
      [(HMDEventTrigger *)self addEvent:v38];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v39 = [MEMORY[0x277CCAB98] defaultCenter];
        [v39 postNotificationName:@"HMDEventTriggerCharacteristicBasedEventAddedNotification" object:v37 userInfo:0];
      }
    }

    else
    {
      v40 = objc_autoreleasePoolPush();
      v41 = self;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = HMFGetLogIdentifier();
        *buf = 138543618;
        v84 = v43;
        v85 = 2112;
        v86 = v35;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Failed to create event object with event model %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v40);
    }
  }

  else
  {
    v38 = v29;
  }

  v44 = v35;
  objc_opt_class();
  v45 = objc_opt_isKindOfClass();

  if (v8 && (v45 & 1) != 0)
  {
    v46 = [(HMDTrigger *)self home];
    v47 = [[HMDDurationEvent alloc] initWithModel:v44 home:v46];

    if (v47)
    {
      [(HMDEventTrigger *)self addEvent:v47];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v48 = [MEMORY[0x277CCAB98] defaultCenter];
        [v48 postNotificationName:@"HMDEventTriggerCharacteristicBasedEventAddedNotification" object:v46 userInfo:0];
      }
    }

    else
    {
      v49 = objc_autoreleasePoolPush();
      v50 = self;
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v52 = HMFGetLogIdentifier();
        *buf = 138543618;
        v84 = v52;
        v85 = 2112;
        v86 = v44;
        _os_log_impl(&dword_2531F8000, v51, OS_LOG_TYPE_INFO, "%{public}@Failed to create event object with event model %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v49);
    }
  }

  else
  {
    v47 = v38;
  }

  v53 = v44;
  objc_opt_class();
  v54 = objc_opt_isKindOfClass();

  if (v8 && (v54 & 1) != 0)
  {
    v55 = [(HMDTrigger *)self home];
    v56 = [[HMDCharacteristicThresholdRangeEvent alloc] initWithModel:v53 home:v55];

    if (v56)
    {
      [(HMDEventTrigger *)self addEvent:v56];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v57 = [MEMORY[0x277CCAB98] defaultCenter];
        [v57 postNotificationName:@"HMDEventTriggerCharacteristicBasedEventAddedNotification" object:v55 userInfo:0];
      }
    }

    else
    {
      v58 = objc_autoreleasePoolPush();
      v59 = self;
      v60 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        v61 = HMFGetLogIdentifier();
        *buf = 138543618;
        v84 = v61;
        v85 = 2112;
        v86 = v53;
        _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_INFO, "%{public}@Failed to create event object with event model %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v58);
    }
  }

  else
  {
    v56 = v47;
  }

  v62 = v53;
  objc_opt_class();
  v63 = objc_opt_isKindOfClass();

  if (v8 && (v63 & 1) != 0)
  {
    v64 = [(HMDTrigger *)self home];
    v65 = [[HMDPresenceEvent alloc] initWithModel:v62 home:v64];

    if (v65)
    {
      [(HMDEventTrigger *)self addEvent:v65];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v66 = [MEMORY[0x277CCAB98] defaultCenter];
        [v66 postNotificationName:@"HMDEventTriggerCharacteristicBasedEventAddedNotification" object:v64 userInfo:0];
      }
    }

    else
    {
      v76 = objc_autoreleasePoolPush();
      v77 = self;
      v78 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
      {
        v79 = HMFGetLogIdentifier();
        *buf = 138543618;
        v84 = v79;
        v85 = 2112;
        v86 = v62;
        _os_log_impl(&dword_2531F8000, v78, OS_LOG_TYPE_INFO, "%{public}@Failed to create event object with event model %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v76);
    }

    if (!v65)
    {
      goto LABEL_73;
    }
  }

  else
  {
    v65 = v56;
    if (!v56)
    {
LABEL_73:
      v75 = 0;
      goto LABEL_74;
    }
  }

  v67 = objc_autoreleasePoolPush();
  v68 = self;
  v69 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
  {
    v70 = HMFGetLogIdentifier();
    v71 = [(HMDEventTrigger *)v68 events];
    *buf = 138543874;
    v84 = v70;
    v85 = 2112;
    v86 = v65;
    v87 = 2112;
    v88 = v71;
    _os_log_impl(&dword_2531F8000, v69, OS_LOG_TYPE_DEBUG, "%{public}@Added new event %@ to %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v67);
  v72 = [(HMDTrigger *)v68 msgDispatcher];
  v73 = [(HMDTrigger *)v68 workQueue];
  [(HMDPresenceEvent *)v65 configure:v68 messageDispatcher:v72 queue:v73 delegate:v68];

  [(HMDEventTrigger *)v68 _activateWithCompletion:0];
  v74 = [(HMDPresenceEvent *)v65 createPayload];
  v82 = v74;
  v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v82 forKeys:&v81 count:1];

  [(HMDTrigger *)v68 markChangedForMessage:v7];
LABEL_74:
  [v7 respondWithPayload:v75];

  v80 = *MEMORY[0x277D85DE8];
}

- (void)_addEventToEventTrigger:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 dictionaryForKey:*MEMORY[0x277CD22B0]];
  v6 = [(HMDTrigger *)self home];
  v7 = [v6 backingStore];
  v8 = [v4 name];
  v9 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
  v10 = [v7 transaction:v8 options:v9];

  v20 = 0;
  v11 = [(HMDEventTrigger *)self createEventModel:v5 endEvent:0 message:v4 checkForSupport:1 transaction:v10 error:&v20];
  v12 = v20;
  if (v11)
  {
    if ([(HMDEventTrigger *)self _checkAddEventModel:v11 message:v4])
    {
      [v10 add:v11 withMessage:v4];
      [v10 run];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v22 = v18;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Cannot add event - Incompatible home hub", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  else
  {
    v13 = [v4 responseHandler];

    if (v13)
    {
      if (!v12)
      {
        v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      }

      v14 = [v4 responseHandler];
      (v14)[2](v14, v12, 0);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handleAddEventToEventTrigger:(id)a3
{
  v4 = [(HMDTrigger *)self updateEventTriggerMessage:1 message:a3 relay:1];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(HMDEventTrigger *)self _addEventToEventTrigger:v4];
    v5 = v6;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)_handleLocationAuthorizationChangedNotification:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 hmf_numberForKey:@"HMLocationAuthorizationKey"];

  if (v6)
  {
    [v6 integerValue];
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = HMLocationAuthorizationAsString();
      v17 = 138543618;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Latest Location Authorization is %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDEventTrigger *)v8 _activateWithCompletion:0];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@No location authorization key in the message", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)fixupForReplacementAccessory:(id)a3 transaction:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v39.receiver = self;
  v39.super_class = HMDEventTrigger;
  v32 = a4;
  [(HMDTrigger *)&v39 fixupForReplacementAccessory:v6 transaction:?];
  v7 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v31 = self;
    v10 = [(HMDEventTrigger *)self characteristicBaseEvents];
    v11 = [v10 copy];

    v34 = [v11 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v34)
    {
      v12 = *v36;
      v30 = v11;
      v33 = *v36;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(v11);
          }

          v14 = *(*(&v35 + 1) + 8 * i);
          v15 = [v14 characteristic];
          v16 = [v15 service];

          v17 = [v16 accessory];
          v18 = [v17 uuid];

          if (!v18)
          {
            v18 = [v14 accessoryUUID];
          }

          v19 = [v7 uuid];
          v20 = [v19 isEqual:v18];

          if (v20)
          {
            v21 = [v16 instanceID];
            if (!v21)
            {
              v21 = [v14 serviceID];
            }

            v22 = [v14 characteristic];
            v23 = [v22 instanceID];

            if (!v23)
            {
              v23 = [v14 characteristicInstanceID];
            }

            v24 = [v9 findCharacteristic:v23 forService:v21];
            if (v24)
            {
              [v14 replaceCharacteristic:v24];
            }

            else
            {
              v40 = v14;
              v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
              v26 = v9;
              v27 = v7;
              v28 = [v25 mutableCopy];

              [(HMDEventTrigger *)v31 _handleRemovalOfCharacteristic:0 withEvents:v28 transaction:v32];
              v7 = v27;
              v9 = v26;
              v11 = v30;
            }

            v12 = v33;
          }
        }

        v34 = [v11 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v34);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (id)_modelWithRewrittenCondition:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating evaluation condition for trigger %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDEventTrigger *)v6 emptyModelObject];
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

  v12 = [(HMDEventTrigger *)v6 predicateUtilities];
  v13 = [v12 rewritePredicateForDaemon:v4 message:0];

  if (v13)
  {
    v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:0];
    [v11 setEvaluationCondition:v14];

    v15 = v11;
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)handleRemovalOfUser:(id)a3 transaction:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    buf = 138543618;
    v36 = v11;
    v37 = 2112;
    v38 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Preparing to remove references to user %@ from trigger", &buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = [(HMDEventTrigger *)v9 presenceEvents];
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      v16 = 0;
      do
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v30 + 1) + 8 * v16++) handleRemovalOfUser:v6 transaction:v7];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v14);
  }

  v17 = [(HMDEventTrigger *)v9 predicateUtilities];
  v18 = [(HMDEventTrigger *)v9 evaluationCondition];
  v19 = [v17 containsPresenceEvents:v18];

  if (v19)
  {
    v29 = 0;
    v20 = [(HMDEventTrigger *)v9 predicateUtilities];
    v21 = [(HMDEventTrigger *)v9 evaluationCondition];
    v22 = [v20 updatePredicate:v21 removedUser:v6 conditionModified:&v29];

    if (v29 == 1)
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v9;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        buf = 138543618;
        v36 = v26;
        v37 = 2112;
        v38 = v6;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Condition has been modified following removal of user %@", &buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      v27 = [(HMDEventTrigger *)v24 _modelWithRewrittenCondition:v22];
      if (v27)
      {
        [v7 add:v27 withMessage:0];
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_handleRemovalOfEvents:(id)a3 transaction:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v21 = a4;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = objc_autoreleasePoolPush();
          v13 = self;
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = HMFGetLogIdentifier();
            *buf = 138543618;
            v28 = v15;
            v29 = 2112;
            v30 = v11;
            _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Client does have authorization for location, cannot remove event %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v12);
        }

        else
        {
          v16 = [HMDEventModel alloc];
          v17 = [v11 uuid];
          v18 = [(HMDTrigger *)self uuid];
          v19 = [(HMDBackingStoreModelObject *)v16 initWithObjectChangeType:3 uuid:v17 parentUUID:v18];

          [v21 add:v19];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v8);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_removeEvents:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v4)
  {
    v5 = *v23;
    v6 = *MEMORY[0x277CD2340];
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        v26 = v6;
        v9 = [v8 uuid];
        v10 = [v9 UUIDString];
        v27 = v10;
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];

        v12 = MEMORY[0x277D0F818];
        v13 = objc_alloc(MEMORY[0x277D0F820]);
        v14 = [(HMDTrigger *)self uuid];
        v15 = [v13 initWithTarget:v14];
        v16 = [v12 messageWithName:@"kRemoveEventFromEventTriggerRequestKey" destination:v15 payload:v11];

        objc_initWeak(&location, self);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __33__HMDEventTrigger__removeEvents___block_invoke;
        v19[3] = &unk_279733B98;
        objc_copyWeak(&v20, &location);
        [v16 setResponseHandler:v19];
        [(HMDEventTrigger *)self _handleRemoveEventsFromEventTrigger:v16 relay:0];
        objc_destroyWeak(&v20);
        objc_destroyWeak(&location);

        ++v7;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v4);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __33__HMDEventTrigger__removeEvents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained triggerEvents];
    v10 = [v9 count];

    if (!v10)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = v8;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v17 = 138543362;
        v18 = v14;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@There are no triggering events anymore, removing the trigger", &v17, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      v15 = [v12 home];
      [v15 removeTrigger:v12];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_handleRemovalOfCharacteristic:(id)a3 withEvents:(id)a4 transaction:(id)a5
{
  v63 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 accessory];
  v46 = v9;
  v48 = v11;
  if (!v9)
  {
    v44 = v10;
    v12 = MEMORY[0x277CBEB18];
    v13 = [(HMDEventTrigger *)self characteristicBaseEvents];
    v46 = [v12 arrayWithCapacity:{objc_msgSend(v13, "count")}];

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v45 = self;
    v14 = [(HMDEventTrigger *)self characteristicBaseEvents];
    v15 = [v14 copy];

    obj = v15;
    v16 = [v15 countByEnumeratingWithState:&v54 objects:v62 count:16];
    v17 = v11;
    if (v16)
    {
      v18 = v16;
      v19 = *v55;
      v47 = v8;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v55 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v54 + 1) + 8 * i);
          v22 = [v21 characteristic];
          v23 = [v22 service];
          v24 = [v23 accessory];

          v25 = [v17 uuid];
          v26 = [v24 uuid];
          if ([v25 isEqual:v26])
          {
            v27 = [v8 instanceID];
            v50 = v21;
            v28 = [v21 characteristic];
            [v28 instanceID];
            v29 = v22;
            v30 = v18;
            v32 = v31 = v19;
            v51 = [v27 isEqual:v32];

            v19 = v31;
            v18 = v30;
            v22 = v29;

            v17 = v48;
            v8 = v47;

            if (v51)
            {
              [v46 addObject:v50];
            }
          }

          else
          {
          }
        }

        v18 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
      }

      while (v18);
    }

    v10 = v44;
    self = v45;
    v11 = v17;
  }

  v53 = 0;
  v33 = [(HMDEventTrigger *)self predicateUtilities];
  v34 = [(HMDEventTrigger *)self evaluationCondition];
  v52 = 0;
  v35 = [v8 service];
  v36 = [v33 updatePredicate:v34 currentCharacteristicInPredicate:&v52 conditionModified:&v53 removedCharacteristic:v8 underService:v35 underAccessory:v11];
  v37 = v52;

  if (v53 == 1)
  {
    v38 = objc_autoreleasePoolPush();
    v39 = self;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543618;
      v59 = v41;
      v60 = 2112;
      v61 = v8;
      _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, "%{public}@Condition has been modified following removal of characteristic %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
    v42 = [(HMDEventTrigger *)v39 _modelWithRewrittenCondition:v36];
    if (v42)
    {
      [v10 add:v42 withMessage:0];
    }
  }

  [(HMDEventTrigger *)self _handleRemovalOfEvents:v46 transaction:v10];

  v43 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovalOfService:(id)a3 transaction:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = HMDEventTrigger;
  [(HMDTrigger *)&v19 handleRemovalOfService:v6 transaction:v7];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v6 characteristics];
  v9 = [v8 copy];

  v10 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(HMDEventTrigger *)self handleRemovalOfCharacteristic:*(*(&v15 + 1) + 8 * v13++) transaction:v7];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovalOfAccessory:(id)a3 transaction:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = HMDEventTrigger;
  [(HMDTrigger *)&v22 handleRemovalOfAccessory:v6 transaction:v7];
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

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [v10 services];
  v12 = [v11 copy];

  v13 = [v12 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(HMDEventTrigger *)self handleRemovalOfService:*(*(&v18 + 1) + 8 * v16++) transaction:v7];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)sendTriggerFiredNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDEventTrigger *)self locationEvents];
  v6 = [v5 count];

  if (v6)
  {
    [MEMORY[0x277D0F818] locationAuthorizedMessageWithName:@"kTriggerFiredNotificationKey" messagePayload:v4];
  }

  else
  {
    [MEMORY[0x277D0F818] messageWithName:@"kTriggerFiredNotificationKey" messagePayload:v4];
  }
  v9 = ;

  v7 = [(HMDTrigger *)self msgDispatcher];
  v8 = [(HMDTrigger *)self uuid];
  [v7 sendMessage:v9 target:v8];
}

- (BOOL)shouldEncodeLastFireDate:(id)a3
{
  v4 = a3;
  v5 = [(HMDEventTrigger *)self locationEvents];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [v4 hmd_isForXPCTransportAuthorizedForLocationAccess];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(HMDTrigger *)self msgDispatcher];
  [v3 deregisterReceiver:self];

  v4.receiver = self;
  v4.super_class = HMDEventTrigger;
  [(HMDTrigger *)&v4 dealloc];
}

- (void)_registerForMessages
{
  v45[4] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__handleLocationAuthorizationChangedNotification_ name:@"HMLocationAuthorizationChangedNotification" object:0];

  v37.receiver = self;
  v37.super_class = HMDEventTrigger;
  [(HMDTrigger *)&v37 _registerForMessages];
  v35 = [(HMDTrigger *)self home];
  v36 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v36 setRoles:{objc_msgSend(v36, "roles") | 4}];
  v4 = [v36 copy];
  v5 = [HMDUserMessagePolicy userMessagePolicyWithHome:v35 userPrivilege:4 remoteAccessRequired:0];
  v6 = [(HMDTrigger *)self msgDispatcher];
  v7 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v45[0] = v7;
  v45[1] = v4;
  v45[2] = v5;
  v8 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v45[3] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];
  [v6 registerForMessage:@"kUpdateEventTriggerConditionRequestKey" receiver:self policies:v9 selector:sel__handleUpdateEventTriggerCondition_];

  v10 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v44[0] = v10;
  v44[1] = v4;
  v44[2] = v5;
  v11 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v44[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:4];
  [v6 registerForMessage:@"kUpdateEventTriggerRecurrencesRequestKey" receiver:self policies:v12 selector:sel__handleUpdateEventTriggerRecurrences_];

  v13 = *MEMORY[0x277CD2770];
  v14 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v43[0] = v14;
  v43[1] = v4;
  v43[2] = v5;
  v15 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v43[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:4];
  [v6 registerForMessage:v13 receiver:self policies:v16 selector:sel__handleUpdateEventTriggerExecuteOnce_];

  v17 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v42[0] = v17;
  v42[1] = v4;
  v42[2] = v5;
  v18 = [HMDConfigurationMessagePolicy policyWithOperationTypes:1];
  v42[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
  [v6 registerForMessage:@"kAddEventToEventTriggerRequestKey" receiver:self policies:v19 selector:sel__handleAddEventToEventTrigger_];

  v20 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v41[0] = v20;
  v41[1] = v4;
  v41[2] = v5;
  v21 = [HMDConfigurationMessagePolicy policyWithOperationTypes:4];
  v41[3] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];
  [v6 registerForMessage:@"kRemoveEventFromEventTriggerRequestKey" receiver:self policies:v22 selector:sel__handleRemoveEventsFromEventTrigger_];

  v23 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v40[0] = v23;
  v40[1] = v4;
  v40[2] = v5;
  v24 = [HMDConfigurationMessagePolicy policyWithOperationTypes:6];
  v40[3] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];
  [v6 registerForMessage:@"kUpdateEventsToEventTriggerRequestKey" receiver:self policies:v25 selector:sel__handleUpdateEventsOnEventTrigger_];

  v26 = [(HMDTrigger *)self msgDispatcher];
  v27 = *MEMORY[0x277CD2330];
  v28 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v39[0] = v28;
  v39[1] = v5;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
  [v26 registerForMessage:v27 receiver:self policies:v29 selector:sel__handleUserPermissionRequest_];

  v30 = [(HMDTrigger *)self msgDispatcher];
  v31 = *MEMORY[0x277CD2780];
  v38[0] = v4;
  v38[1] = v5;
  v32 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v38[2] = v32;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];
  [v30 registerForMessage:v31 receiver:self policies:v33 selector:sel__handleUpdateOwningDevice_];

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_migrateEventsToRecords
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    [(HMDEventTrigger *)v4 migratedEventsToRecords];
    v7 = HMFBooleanToString();
    *buf = 138543618;
    v35 = v6;
    v36 = 2112;
    v37 = v7;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Events migration %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  if (![(HMDEventTrigger *)v4 migratedEventsToRecords])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = v4;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@The events haven't been migrated, generating transactions for each event present", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [(HMDEventTrigger *)v9 characteristicEvents];
    v13 = [v12 mutableCopy];

    v14 = [(HMDEventTrigger *)v9 locationEvents];
    [v13 addObjectsFromArray:v14];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v13;
    v15 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v28 = *v30;
      do
      {
        v17 = 0;
        do
        {
          if (*v30 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v18 = [*(*(&v29 + 1) + 8 * v17) modelObjectWithChangeType:1];
          v19 = [MEMORY[0x277D0F818] messageWithName:@"kMigratedEventsToRecordsRequest" messagePayload:0];
          [(HMDTrigger *)v9 home];
          v21 = v20 = v9;
          v22 = [v21 backingStore];
          v23 = [v19 name];
          v24 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
          v25 = [v22 transaction:v23 options:v24];

          v9 = v20;
          [v25 add:v18 withMessage:v19];
          [v25 run];

          ++v17;
        }

        while (v16 != v17);
        v16 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v16);
    }

    [(HMDEventTrigger *)v9 setMigratedEventsToRecords:1];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDTrigger *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDEventTrigger *)self debounceTriggerActivationTimer];

  if (v6 == v4)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Debounce Timer expired: Going to activate the trigger", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDEventTrigger *)v8 _computeActivation];
    [(HMDEventTrigger *)v8 _activateEvents:0];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)configure:(id)a3 messageDispatcher:(id)a4 queue:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = HMDEventTrigger;
  [(HMDTrigger *)&v19 configure:a3 messageDispatcher:a4 queue:a5];
  [(HMDEventTrigger *)self _configureDebounceTriggerActivationTimer];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(HMDEventTrigger *)self events];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = [(HMDTrigger *)self msgDispatcher];
        v13 = [(HMDTrigger *)self workQueue];
        [v11 configure:self messageDispatcher:v12 queue:v13 delegate:self];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v8);
  }

  [(HMDEventTrigger *)self _activateWithCompletion:0];
  [(HMDEventTrigger *)self _migrateEventsToRecords];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_configureDebounceTriggerActivationTimer
{
  v20 = *MEMORY[0x277D85DE8];
  dependencyFactory = self->_dependencyFactory;
  if (!dependencyFactory)
  {
    v4 = objc_alloc_init(HMDEventTriggerDependencyFactory);
    v5 = self->_dependencyFactory;
    self->_dependencyFactory = v4;

    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = self->_dependencyFactory;
      v16 = 138543618;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Missing dependency factory, reinitializing %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    dependencyFactory = self->_dependencyFactory;
  }

  v11 = [(HMDEventTriggerDependencyFactory *)dependencyFactory createTimerWithTimeInterval:0 options:7.0];
  [(HMDEventTrigger *)self setDebounceTriggerActivationTimer:v11];

  v12 = [(HMDEventTrigger *)self debounceTriggerActivationTimer];
  [v12 setDelegate:self];

  v13 = [(HMDTrigger *)self workQueue];
  v14 = [(HMDEventTrigger *)self debounceTriggerActivationTimer];
  [v14 setDelegateQueue:v13];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_reevaluateIfRelaunchRequired
{
  v28 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [(HMDEventTrigger *)self events];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v20;
    *&v5 = 138543618;
    v18 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        if ([v10 isActive])
        {
          v11 = objc_autoreleasePoolPush();
          v12 = self;
          v13 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = HMFGetLogIdentifier();
            *buf = v18;
            v24 = v14;
            v25 = 2112;
            v26 = v10;
            _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Registering for relaunch on behalf of event: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v11);
          v7 = 1;
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v15 = [(HMDEventTriggerDependencyFactory *)self->_dependencyFactory launchHandler];
  v16 = [(HMDTrigger *)self uuid];
  if (v7)
  {
    [v15 registerRelaunchClientWithUUID:v16];
  }

  else
  {
    [v15 deregisterRelaunchClientWithUUID:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_activateWithCompletion:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMDTrigger *)self isConfigured])
  {
    if (v4)
    {
      [(HMDEventTrigger *)self _computeActivation];
      [(HMDEventTrigger *)self _activateEvents:v4];
    }

    else
    {
      v7 = [(HMDEventTrigger *)self debounceTriggerActivationTimer];
      v8 = v7;
      if (!v7 || ([v7 timeInterval], v9 != 7.0))
      {
        [(HMDEventTrigger *)self _configureDebounceTriggerActivationTimer];
        v10 = objc_autoreleasePoolPush();
        v11 = self;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = HMFGetLogIdentifier();
          v14 = [(HMDEventTrigger *)v11 debounceTriggerActivationTimer];
          v17 = 138543874;
          v18 = v13;
          v19 = 2112;
          v20 = v8;
          v21 = 2112;
          v22 = v14;
          _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Reinitialized debounce timer from %@ to %@", &v17, 0x20u);
        }

        objc_autoreleasePoolPop(v10);
      }

      v15 = [(HMDEventTrigger *)self debounceTriggerActivationTimer];
      [v15 resume];
    }
  }

  else
  {
    v5 = _Block_copy(v4);
    if (v5)
    {
      v6 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2012];
      v5[2](v5, v6);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_activateEvents:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v37 = a3;
  group = dispatch_group_create();
  v39 = [(HMDEventTrigger *)self computedActive];
  v4 = objc_autoreleasePoolPush();
  val = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = HMDEventTriggerActivationTypeAsString([(HMDEventTrigger *)val activationType]);
    [(HMDEventTrigger *)val activationState];
    v8 = HMEventTriggerActivationStateAsString();
    *buf = 138543874;
    v60 = v6;
    v61 = 2114;
    v62 = v7;
    v63 = 2114;
    v64 = v8;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Attempting to activate with activation type %{public}@, state %{public}@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v40 = [MEMORY[0x277CBEB18] array];
  if (v39)
  {
    v9 = [(HMDEventTrigger *)val evaluationCondition];
    if (!v9)
    {
      v24 = 0;
LABEL_11:

      goto LABEL_12;
    }

    v10 = MEMORY[0x277CCAC30];
    v11 = v9;
    v12 = [v10 predicateWithValue:1];
    v13 = [v11 predicateFormat];

    v14 = [v12 predicateFormat];
    v15 = [v13 isEqualToString:v14];

    if ((v15 & 1) == 0)
    {
      v16 = [(HMDTrigger *)val home];
      v17 = [v16 homeLocationHandler];
      v18 = [v17 location];
      v19 = v18 == 0;

      if (v19)
      {
        v20 = objc_autoreleasePoolPush();
        v21 = val;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543362;
          v60 = v23;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Home location is not known, cannot activate the trigger", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v20);
        v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:84];
        [v40 addObject:v24];
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  if (![v40 count])
  {
    dispatch_group_enter(group);
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __35__HMDEventTrigger__activateEvents___block_invoke;
    v55[3] = &unk_279734D88;
    v55[4] = val;
    v25 = v40;
    v56 = v25;
    v26 = group;
    v57 = v26;
    [(HMDTrigger *)val _activate:v39 completionHandler:v55];
    v53 = 0u;
    v54 = 0u;
    v52 = 0u;
    v51 = 0u;
    obj = [(HMDEventTrigger *)val triggerEvents];
    v27 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
    if (v27)
    {
      v28 = *v52;
      v29 = MEMORY[0x277D85DD0];
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v52 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v51 + 1) + 8 * i);
          dispatch_group_enter(v26);
          v32 = [(HMDEventTrigger *)val activationType];
          v48[0] = v29;
          v48[1] = 3221225472;
          v48[2] = __35__HMDEventTrigger__activateEvents___block_invoke_3;
          v48[3] = &unk_279734D88;
          v48[4] = val;
          v49 = v25;
          v50 = v26;
          [v31 _activate:v32 completionHandler:v48];
        }

        v27 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
      }

      while (v27);
    }
  }

  objc_initWeak(buf, val);
  v33 = [(HMDTrigger *)val workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMDEventTrigger__activateEvents___block_invoke_5;
  block[3] = &unk_279731D50;
  objc_copyWeak(&v46, buf);
  v47 = v39;
  v44 = v40;
  v45 = v37;
  v34 = v37;
  v35 = v40;
  dispatch_group_notify(group, v33, block);

  objc_destroyWeak(&v46);
  objc_destroyWeak(buf);

  v36 = *MEMORY[0x277D85DE8];
}

void __35__HMDEventTrigger__activateEvents___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMDEventTrigger__activateEvents___block_invoke_2;
  block[3] = &unk_279734960;
  v7 = v3;
  v8 = a1[5];
  v9 = a1[6];
  v5 = v3;
  dispatch_async(v4, block);
}

void __35__HMDEventTrigger__activateEvents___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMDEventTrigger__activateEvents___block_invoke_4;
  block[3] = &unk_279734960;
  v7 = v3;
  v8 = a1[5];
  v9 = a1[6];
  v5 = v3;
  dispatch_async(v4, block);
}

void __35__HMDEventTrigger__activateEvents___block_invoke_5(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = *(a1 + 32);
    v13 = 138543618;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Completed activation with errors: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  if ([*(a1 + 32) count])
  {
    v8 = [*(a1 + 32) objectAtIndex:0];
  }

  else
  {
    [v4 _reevaluateIfRelaunchRequired];
    v8 = 0;
  }

  if (!*(a1 + 56) || ([v4 triggerEvents], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, !v10))
  {
    [v4 setExecutionSession:0];
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __35__HMDEventTrigger__activateEvents___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) addObject:?];
  }

  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

void __35__HMDEventTrigger__activateEvents___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) addObject:?];
  }

  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

- (void)_computeActivation
{
  v93 = *MEMORY[0x277D85DE8];
  v3 = [(HMDEventTrigger *)self characteristicEvents];
  v4 = [v3 count];

  v5 = [(HMDEventTrigger *)self locationEvents];
  v6 = [v5 count];

  v7 = [(HMDEventTrigger *)self calendarEvents];
  v70 = [v7 count];

  v8 = [(HMDEventTrigger *)self significantTimeEvents];
  v69 = [v8 count];

  v9 = [(HMDEventTrigger *)self presenceEvents];
  v68 = [v9 count];

  v10 = [(HMDEventTrigger *)self charThresholdEvents];
  v67 = [v10 count];

  v11 = [(HMDEventTrigger *)self endEvents];
  v66 = [v11 count];

  v12 = [(HMDTrigger *)self home];
  v13 = [v12 primaryResident];
  v74 = [v13 device];
  v73 = [(HMDTrigger *)self owningDevice];
  v14 = [v12 isCurrentDeviceConfirmedPrimaryResident];
  v15 = [(HMDEventTrigger *)self isThisDeviceDesignatedFMFDevice];
  [(HMDEventTrigger *)self isOwnerOfHome];
  v72 = (v6 == 0) & v14;
  v71 = v13;
  if (v6 && v15)
  {
    v72 = [(HMDEventTrigger *)self doesTheLocationEventTargetCurrentUser];
  }

  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v19 = v65 = v6;
    v20 = HMFBooleanToString();
    HMFBooleanToString();
    v64 = v4;
    v21 = v14;
    v23 = v22 = v12;
    v24 = HMFBooleanToString();
    v25 = HMFBooleanToString();
    *buf = 138544898;
    v78 = v19;
    v79 = 2112;
    v80 = v74;
    v81 = 2112;
    v82 = v20;
    v83 = 2112;
    v84 = v23;
    v85 = 2112;
    v86 = v73;
    v87 = 2112;
    v88 = v24;
    v89 = 2112;
    v90 = v25;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Resident %@, this-device-is-resident: %@, this-device-owns-trigger: %@, owning-device: %@, FMF device: %@, Owner of home: %@", buf, 0x48u);

    v12 = v22;
    v14 = v21;
    v4 = v64;

    v6 = v65;
  }

  objc_autoreleasePoolPop(v16);
  v26 = objc_autoreleasePoolPush();
  v27 = v17;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = HMFGetLogIdentifier();
    *buf = 138545154;
    v78 = v29;
    v79 = 2048;
    v80 = v4;
    v81 = 2048;
    v82 = v6;
    v83 = 2048;
    v84 = v70;
    v85 = 2048;
    v86 = v69;
    v87 = 2048;
    v88 = v68;
    v89 = 2048;
    v90 = v67;
    v91 = 2048;
    v92 = v66;
    _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@char: %tu, location: %tu, calendar: %tu, significant: %tu, presence: %tu, char-threshold: %tu, end: %tu", buf, 0x52u);
  }

  objc_autoreleasePoolPop(v26);
  v30 = [(HMDTrigger *)v27 hasNoActions];
  v31 = v71;
  if ([(HMDTrigger *)v27 active]&& !v30)
  {
    if (v6 && ![(HMDEventTrigger *)v27 isAuthorizedForLocation])
    {
      v32 = 0;
      v33 = 3;
      goto LABEL_41;
    }

    if (([v71 supportsSharedEventTriggerActivation] & 1) == 0 && -[HMDEventTrigger requiresDataVersion4](v27, "requiresDataVersion4"))
    {
      v32 = 0;
      if (v74)
      {
        v33 = 2;
      }

      else
      {
        v33 = 1;
      }

      goto LABEL_41;
    }

    if ([v71 supportsSharedEventTriggerActivation])
    {
      if (v6)
      {
        if (v14)
        {
          if (v72)
          {
            v32 = 3;
          }

          else
          {
            v32 = 2;
          }
        }

        else
        {
          v32 = v72;
        }

        goto LABEL_40;
      }

      v38 = (v14 & 1) == 0;
LABEL_34:
      if (v38)
      {
        v32 = 0;
      }

      else
      {
        v32 = 3;
      }

      goto LABEL_40;
    }

    if ([(HMDEventTrigger *)v27 requiresDataVersion4])
    {
      v32 = 0;
    }

    else
    {
      if (v6)
      {
        v38 = v72 == 0;
        goto LABEL_34;
      }

      if ((v14 & 1) == 0)
      {
        v38 = (v72 & (v74 == 0)) == 0;
        goto LABEL_34;
      }

      v32 = 3;
    }

LABEL_40:
    v33 = 4;
    goto LABEL_41;
  }

  if (v30)
  {
    v34 = objc_autoreleasePoolPush();
    v35 = v27;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543362;
      v78 = v37;
      _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@The trigger is disabled as there are no actions associated with this trigger.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v34);
  }

  v33 = 0;
  v32 = 0;
LABEL_41:
  v39 = objc_autoreleasePoolPush();
  v40 = v27;
  v41 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    v42 = HMFGetLogIdentifier();
    v43 = HMEventTriggerActivationStateAsString();
    v44 = HMDEventTriggerActivationTypeAsString(v32);
    *buf = 138543874;
    v78 = v42;
    v79 = 2112;
    v80 = v43;
    v81 = 2112;
    v82 = v44;
    _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_INFO, "%{public}@Computed activation flags state:%@ type: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v39);
  if ([(HMDEventTrigger *)v40 activationType]!= v32)
  {
    v45 = objc_autoreleasePoolPush();
    v46 = v40;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      v48 = HMFGetLogIdentifier();
      v49 = HMDEventTriggerActivationTypeAsString([(HMDEventTrigger *)v46 activationType]);
      HMDEventTriggerActivationTypeAsString(v32);
      v51 = v50 = v12;
      *buf = 138543874;
      v78 = v48;
      v79 = 2112;
      v80 = v49;
      v81 = 2112;
      v82 = v51;
      _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_INFO, "%{public}@Updating activation type from %@ to %@", buf, 0x20u);

      v12 = v50;
      v31 = v71;
    }

    objc_autoreleasePoolPop(v45);
    [(HMDEventTrigger *)v46 setActivationType:v32];
  }

  if ([(HMDEventTrigger *)v40 activationState]!= v33)
  {
    v52 = objc_autoreleasePoolPush();
    v53 = v40;
    v54 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      v55 = HMFGetLogIdentifier();
      [(HMDEventTrigger *)v53 activationState];
      v56 = HMEventTriggerActivationStateAsString();
      v57 = HMEventTriggerActivationStateAsString();
      *buf = 138543874;
      v78 = v55;
      v79 = 2112;
      v80 = v56;
      v81 = 2112;
      v82 = v57;
      _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_INFO, "%{public}@Updating activation state from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v52);
    [(HMDEventTrigger *)v53 setActivationState:v33];
    v75 = *MEMORY[0x277CD2288];
    v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v33];
    v76 = v58;
    v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v76 forKeys:&v75 count:1];

    v60 = [MEMORY[0x277D0F818] messageWithName:*MEMORY[0x277CD2290] identifier:0 messagePayload:v59];
    v61 = [(HMDTrigger *)v53 msgDispatcher];
    v62 = [(HMDTrigger *)v53 uuid];
    [v61 sendMessage:v60 target:v62];
  }

  v63 = *MEMORY[0x277D85DE8];
}

- (BOOL)doesTheLocationEventTargetCurrentUser
{
  v2 = [(HMDEventTrigger *)self locationEvents];
  v3 = [v2 na_allObjectsPassTest:&__block_literal_global_57];

  return v3;
}

- (BOOL)shouldActivateOnLocalDevice
{
  v3 = [(HMDEventTrigger *)self activationType];
  v5.receiver = self;
  v5.super_class = HMDEventTrigger;
  result = [(HMDTrigger *)&v5 shouldActivateOnLocalDevice];
  if (v3 - 1 >= 3)
  {
    return 0;
  }

  return result;
}

- (BOOL)compatible:(id)a3 user:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v24 = v11;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Checking if the username %@ is compatible", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (-[HMDEventTrigger requiresDataVersion4](v9, "requiresDataVersion4") && [v6 containsObject:&unk_286627C88])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = [(HMDEventTrigger *)v9 presenceEvents];
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = *v19;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v12);
          }

          if ([*(*(&v18 + 1) + 8 * i) compatibleWithUser:v7])
          {
            LOBYTE(v13) = 1;
            goto LABEL_16;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)requiresDataVersion4
{
  v25 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = HMDEventTrigger;
  if ([(HMDTrigger *)&v22 requiresDataVersion4])
  {
LABEL_6:
    v7 = 1;
    goto LABEL_7;
  }

  if ([(HMDEventTrigger *)self executeOnce])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Contains execute once/policy, requires data version 4", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    goto LABEL_6;
  }

  v10 = [(HMDEventTrigger *)self calendarEvents];
  v11 = [v10 count];

  v12 = [(HMDEventTrigger *)self significantTimeEvents];
  v13 = [v12 count];

  v14 = [(HMDEventTrigger *)self presenceEvents];
  v15 = [v14 count];

  v16 = [(HMDEventTrigger *)self charThresholdEvents];
  v17 = [v16 count];

  v18 = [(HMDEventTrigger *)self endEvents];
  v19 = [v18 count];

  v7 = 1;
  if (!v11 && !v13 && !v15 && !v19 && !v17)
  {
    v20 = [(HMDEventTrigger *)self predicateUtilities];
    v21 = [(HMDEventTrigger *)self evaluationCondition];
    v7 = [v20 containsPresenceEvents:v21];
  }

LABEL_7:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)invalidate
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Deactivating the trigger", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDTrigger *)v4 setActive:0];
  [(HMDEventTrigger *)v4 _activateWithCompletion:0];
  v8.receiver = v4;
  v8.super_class = HMDEventTrigger;
  [(HMDTrigger *)&v8 invalidate];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setRecurrences:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  recurrences = self->_recurrences;
  self->_recurrences = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)recurrences
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSArray *)self->_recurrences copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)presenceEvents
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(HMDEventTrigger *)self triggerEvents];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NSArray)charThresholdEvents
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(HMDEventTrigger *)self events];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NSArray)durationEvents
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(HMDEventTrigger *)self events];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NSArray)timeEvents
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(HMDEventTrigger *)self triggerEvents];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NSArray)significantTimeEvents
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(HMDEventTrigger *)self triggerEvents];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NSArray)calendarEvents
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(HMDEventTrigger *)self triggerEvents];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NSArray)locationEvents
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(HMDEventTrigger *)self triggerEvents];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NSArray)characteristicBaseEvents
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(HMDEventTrigger *)self events];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NSArray)characteristicEvents
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(HMDEventTrigger *)self triggerEvents];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NSArray)endEvents
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(HMDEventTrigger *)self events];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 isEndEvent])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NSArray)triggerEvents
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(HMDEventTrigger *)self events];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (([v9 isEndEvent] & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)removeEvent:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_currentEvents removeObject:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)addEvent:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  if (([(NSMutableArray *)self->_currentEvents containsObject:v4]& 1) == 0)
  {
    [(NSMutableArray *)self->_currentEvents addObject:v4];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)events
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_currentEvents copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v31.receiver = self;
  v31.super_class = HMDEventTrigger;
  v5 = [(HMDTrigger *)&v31 dumpStateWithPrivacyLevel:?];
  v6 = [v5 mutableCopy];

  v7 = [(HMDEventTrigger *)self events];
  if ([v7 count])
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = [(HMDEventTrigger *)self events];
    v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v27 + 1) + 8 * i) dumpStateWithPrivacyLevel:a3];
          [v8 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v11);
    }

    [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x277D0F098]];
  }

  v15 = [(HMDEventTrigger *)self evaluationCondition];

  if (v15)
  {
    v16 = [(HMDEventTrigger *)self evaluationCondition];
    v17 = [v16 description];
    [v6 setObject:v17 forKeyedSubscript:*MEMORY[0x277D0F120]];
  }

  v18 = [(HMDEventTrigger *)self recurrences];

  if (v18)
  {
    v19 = [(HMDEventTrigger *)self recurrences];
    v20 = [v19 description];
    [v6 setObject:v20 forKeyedSubscript:*MEMORY[0x277D0F128]];
  }

  v21 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEventTrigger executeOnce](self, "executeOnce")}];
  [v6 setObject:v21 forKeyedSubscript:*MEMORY[0x277D0F0A0]];

  v22 = [(HMDEventTrigger *)self executionSession];

  if (v22)
  {
    v23 = [(HMDEventTrigger *)self executionSession];
    v24 = [v23 dumpStateWithPrivacyLevel:a3];
    [v6 setObject:v24 forKeyedSubscript:*MEMORY[0x277D0F0A8]];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v6;
}

- (HMDEventTrigger)initWithModel:(id)a3 home:(id)a4 message:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(HMDEventTriggerDependencyFactory);
  v12 = [(HMDEventTrigger *)self initWithModel:v10 home:v9 message:v8 factory:v11];

  return v12;
}

- (HMDEventTrigger)initWithModel:(id)a3 home:(id)a4 message:(id)a5 factory:(id)a6
{
  v45[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v44.receiver = self;
  v44.super_class = HMDEventTrigger;
  v13 = [(HMDTrigger *)&v44 initWithModel:v10 home:a4];
  if (v13)
  {
    v14 = [HMDPredicateUtilities alloc];
    v15 = [(HMDTrigger *)v13 home];
    v16 = [(HMDTrigger *)v13 name];
    v17 = [(HMDPredicateUtilities *)v14 initWithHome:v15 logIdentifier:v16];
    predicateUtilities = v13->_predicateUtilities;
    v13->_predicateUtilities = v17;

    v19 = [MEMORY[0x277CBEB18] array];
    currentEvents = v13->_currentEvents;
    v13->_currentEvents = v19;

    v21 = [v10 executeOnce];
    v13->_executeOnce = [v21 BOOLValue];

    v13->_migratedEventsToRecords = 1;
    v22 = [v10 evaluationCondition];
    v23 = [HMDPredicateUtilities decodePredicateFromData:v22 error:0];

    v24 = [(HMDEventTrigger *)v13 predicateUtilities];
    v25 = [v24 rewritePredicateForDaemon:v23 message:v11];
    evaluationCondition = v13->_evaluationCondition;
    v13->_evaluationCondition = v25;

    v27 = MEMORY[0x277CCAAC8];
    v28 = MEMORY[0x277CBEB98];
    v45[0] = objc_opt_class();
    v45[1] = objc_opt_class();
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
    v30 = [v28 setWithArray:v29];
    v31 = [v10 recurrences];
    v32 = [v27 unarchivedObjectOfClasses:v30 fromData:v31 error:0];

    v33 = v32;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    v35 = v34;

    recurrences = v13->_recurrences;
    v13->_recurrences = v35;

    v37 = [(HMDTrigger *)v13 active];
    v38 = 3;
    if (!v37)
    {
      v38 = 0;
    }

    v13->_activationType = v38;
    v39 = [(HMDTrigger *)v13 active];
    v40 = 4;
    if (!v39)
    {
      v40 = 0;
    }

    v13->_activationState = v40;
    v13->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v13->_dependencyFactory, obj);
  }

  v41 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (BOOL)__validateRecurrences:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if (![v8 weekday])
        {
          LOBYTE(v10) = 0;
          goto LABEL_15;
        }

        v9 = objc_alloc_init(MEMORY[0x277CBEAB8]);
        if ([v8 weekday] != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v9 setWeekday:{objc_msgSend(v8, "weekday")}];
        }

        v10 = [v8 isEqual:v9];

        if (!v10)
        {
          goto LABEL_15;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      LOBYTE(v10) = 1;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    LOBYTE(v10) = 1;
  }

LABEL_15:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5
{
  v73[5] = *MEMORY[0x277D85DE8];
  v64 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v63 = v10;
  v11 = [v63 home];
  v12 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v12 setRoles:{objc_msgSend(v12, "roles") | 4}];
  v13 = [v12 copy];
  v14 = [HMDUserMessagePolicy userMessagePolicyWithHome:v11 userPrivilege:4 remoteAccessRequired:0];
  v15 = [v8 name];
  v16 = HMFEqualObjects();

  if (v16)
  {
    v17 = [HMDXPCMessagePolicy policyWithEntitlements:1];
    v73[0] = v17;
    v73[1] = v13;
    v73[2] = v14;
    v18 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v73[3] = v18;
    v19 = objc_opt_new();
    v73[4] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:5];

    v21 = [v8 name];
LABEL_6:
    v22 = HMFCreateMessageBinding();

LABEL_18:
    v51 = v64;
    goto LABEL_19;
  }

  v23 = [v8 name];
  v24 = HMFEqualObjects();

  if (v24)
  {
    v25 = [HMDXPCMessagePolicy policyWithEntitlements:1];
    v72[0] = v25;
    v72[1] = v13;
    v72[2] = v14;
    v26 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v72[3] = v26;
    v27 = objc_opt_new();
    v72[4] = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:5];

    v29 = [v8 name];
LABEL_17:
    v22 = HMFCreateMessageBinding();

    goto LABEL_18;
  }

  v30 = [v8 name];
  v31 = *MEMORY[0x277CD2770];
  v32 = HMFEqualObjects();

  if (v32)
  {
    v33 = [HMDXPCMessagePolicy policyWithEntitlements:1];
    v71[0] = v33;
    v71[1] = v13;
    v71[2] = v14;
    v34 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v71[3] = v34;
    v35 = objc_opt_new();
    v71[4] = v35;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:5];

    v29 = [v8 name];
    goto LABEL_17;
  }

  v36 = [v8 name];
  v37 = HMFEqualObjects();

  if (v37)
  {
    v38 = [HMDXPCMessagePolicy policyWithEntitlements:1];
    v70[0] = v38;
    v70[1] = v13;
    v70[2] = v14;
    v39 = [HMDConfigurationMessagePolicy policyWithOperationTypes:1];
    v70[3] = v39;
    v40 = objc_opt_new();
    v70[4] = v40;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:5];

    v29 = [v8 name];
    goto LABEL_17;
  }

  v41 = [v8 name];
  v42 = HMFEqualObjects();

  if (v42)
  {
    v43 = [HMDXPCMessagePolicy policyWithEntitlements:1];
    v69[0] = v43;
    v69[1] = v13;
    v69[2] = v14;
    v44 = [HMDConfigurationMessagePolicy policyWithOperationTypes:4];
    v69[3] = v44;
    v45 = objc_opt_new();
    v69[4] = v45;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:5];

    v29 = [v8 name];
    goto LABEL_17;
  }

  v46 = [v8 name];
  v47 = HMFEqualObjects();

  if (v47)
  {
    v48 = [HMDXPCMessagePolicy policyWithEntitlements:1];
    v68[0] = v48;
    v68[1] = v13;
    v68[2] = v14;
    v49 = [HMDConfigurationMessagePolicy policyWithOperationTypes:6];
    v68[3] = v49;
    v50 = objc_opt_new();
    v68[4] = v50;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:5];

    v29 = [v8 name];
    goto LABEL_17;
  }

  v54 = [v8 name];
  v55 = *MEMORY[0x277CD2330];
  v56 = HMFEqualObjects();

  if (v56)
  {
    v57 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v67[0] = v57;
    v67[1] = v14;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:2];

    v21 = [v8 name];
    goto LABEL_6;
  }

  v58 = [v8 name];
  v59 = HMFEqualObjects();

  if (v59)
  {
    v60 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v66[0] = v60;
    v66[1] = v13;
    v66[2] = v14;
    v61 = objc_opt_new();
    v66[3] = v61;
    v62 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v66[4] = v62;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:5];

    v29 = [v8 name];
    goto LABEL_17;
  }

  v65.receiver = a1;
  v65.super_class = &OBJC_METACLASS___HMDEventTrigger;
  v51 = v64;
  v22 = objc_msgSendSuper2(&v65, sel_messageBindingForDispatcher_message_receiver_, v64, v8, v9);
LABEL_19:

  v52 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_31660 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_31660, &__block_literal_global_31661);
  }

  v3 = logCategory__hmf_once_v2_31662;

  return v3;
}

uint64_t __30__HMDEventTrigger_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_31662;
  logCategory__hmf_once_v2_31662 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end