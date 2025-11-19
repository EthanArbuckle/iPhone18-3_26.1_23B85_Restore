@interface HMDPresenceEvent
+ (id)logCategory;
- (BOOL)_activate:(unint64_t)a3 completionHandler:(id)a4;
- (BOOL)_evaluateWithHomePresence:(id)a3 presenceType:(id)a4 users:(id)a5;
- (BOOL)compatibleWithUser:(id)a3;
- (BOOL)evaluateWithHomePresence:(id)a3;
- (BOOL)evaluateWithHomePresenceUpdate:(id)a3 presenceType:(id)a4;
- (BOOL)evaluateWithUserPresence:(id)a3 presenceType:(id)a4;
- (BOOL)isCompatibleWithEvent:(id)a3;
- (HMDEventTriggerExecutionSession)executionSession;
- (HMDPresenceEvent)initWithCoder:(id)a3;
- (HMDPresenceEvent)initWithModel:(id)a3 home:(id)a4;
- (HMDPresenceEvent)initWithModel:(id)a3 home:(id)a4 featuresDataSource:(id)a5;
- (NSString)description;
- (id)_presenceTypeForClient;
- (id)analyticsPresenceEventData;
- (id)analyticsTriggerEventData;
- (id)createClientPayload;
- (id)createDaemonPayload;
- (id)createPresenceEventPayload:(BOOL)a3;
- (id)emptyModelObject;
- (id)modelObjectWithChangeType:(unint64_t)a3;
- (id)thisUser;
- (unint64_t)activationGranularity;
- (void)_addUser:(id)a3;
- (void)_evaluatePresenceEventForHomePresenceUpdate:(id)a3;
- (void)_handleHomePresenceUpdate:(id)a3;
- (void)_handleUpdateRequest:(id)a3;
- (void)_registerForMessages;
- (void)_removeAllUsers;
- (void)_transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)_updateUsers:(id)a3 home:(id)a4;
- (void)configure:(id)a3 messageDispatcher:(id)a4 queue:(id)a5 delegate:(id)a6;
- (void)dealloc;
- (void)didEndExecutionSession:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)handleRemovalOfUser:(id)a3 transaction:(id)a4;
@end

@implementation HMDPresenceEvent

- (HMDEventTriggerExecutionSession)executionSession
{
  WeakRetained = objc_loadWeakRetained(&self->_executionSession);

  return WeakRetained;
}

- (id)analyticsPresenceEventData
{
  v3 = objc_alloc_init(HMDAnalyticsPresenceEventData);
  v4 = [(HMDPresenceEvent *)self presenceType];
  if ([v4 isEqualToString:*MEMORY[0x277CD0C68]])
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:*MEMORY[0x277CD0C70]])
  {
    v5 = 2;
  }

  else if ([v4 isEqualToString:*MEMORY[0x277CD0C48]])
  {
    v5 = 3;
  }

  else
  {
    if (![v4 isEqualToString:*MEMORY[0x277CD0C60]])
    {
      goto LABEL_10;
    }

    v5 = 4;
  }

  [(HMDAnalyticsPresenceEventData *)v3 setPresenceEventType:v5];
LABEL_10:

  return v3;
}

- (id)analyticsTriggerEventData
{
  v3 = objc_alloc_init(HMDAnalyticsTriggerEventData);
  [(HMDAnalyticsTriggerEventData *)v3 setEndEvent:[(HMDEvent *)self isEndEvent]];
  v4 = [(HMDPresenceEvent *)self analyticsPresenceEventData];
  [(HMDAnalyticsTriggerEventData *)v3 setPresenceEvent:v4];
  v5 = [(HMDPresenceEvent *)self activationGranularity];
  v6 = [(HMDAnalyticsTriggerEventData *)v3 presenceEvent];
  [v6 setPresenceEventGranularity:v5];

  return v3;
}

- (void)_transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v53 = *MEMORY[0x277D85DE8];
  v46 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543362;
    v48 = v13;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Handling transaction updated", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  v14 = v8;
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

  if (v16)
  {
    os_unfair_lock_lock_with_options();
    if ([v16 propertyWasSet:@"presenceType"] && (-[HMDPresenceEvent presenceType](v11, "presenceType"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "presenceType"), v18 = objc_claimAutoreleasedReturnValue(), v19 = HMFEqualObjects(), v18, v17, (v19 & 1) == 0))
    {
      v21 = objc_autoreleasePoolPush();
      v22 = v11;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        v25 = [(HMDPresenceEvent *)v22 presenceType];
        v26 = [v16 presenceType];
        *buf = 138543874;
        v48 = v24;
        v49 = 2112;
        v50 = v25;
        v51 = 2112;
        v52 = v26;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Updating presence type from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
      v27 = [v16 presenceType];
      [(HMDPresenceEvent *)v22 setPresenceType:v27];

      v20 = 1;
    }

    else
    {
      v20 = 0;
    }

    v28 = [(HMDEvent *)v11 eventTrigger:88];
    if ([v16 propertyWasSet:@"users"])
    {
      v29 = MEMORY[0x277CBEB98];
      v30 = [(HMDPresenceEvent *)v11 userUUIDs];
      v31 = [v29 setWithArray:v30];

      v32 = MEMORY[0x277CBEB98];
      v33 = [v16 users];
      v34 = [v32 setWithArray:v33];

      if (([v31 isEqualToSet:v34] & 1) == 0)
      {
        v35 = [v16 users];
        v36 = [v28 home];
        [(HMDPresenceEvent *)v11 _updateUsers:v35 home:v36];

        v20 = 1;
      }
    }

    if (![v16 propertyWasSet:@"activation"])
    {
      goto LABEL_19;
    }

    v37 = [(HMDPresenceEvent *)v11 activation];
    v38 = [v37 number];
    v39 = [v16 activation];
    v40 = HMFEqualObjects();

    if ((v40 & 1) == 0)
    {
      v41 = MEMORY[0x277CD1D28];
      v42 = [v16 activation];
      v43 = [v41 activationGranularityWithNumber:v42];
      [(HMDPresenceEvent *)v11 setActivation:v43];

      os_unfair_lock_unlock((v11 + v45));
    }

    else
    {
LABEL_19:
      os_unfair_lock_unlock((v11 + v45));
      if ((v20 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    [v28 markChangedForMessage:v9];
LABEL_23:
    [v9 respondWithSuccess];
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (id)modelObjectWithChangeType:(unint64_t)a3
{
  v5 = [HMDPresenceEventModel alloc];
  v6 = [(HMDEvent *)self uuid];
  v7 = [(HMDEvent *)self eventTrigger];
  v8 = [v7 uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:a3 uuid:v6 parentUUID:v8];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEvent isEndEvent](self, "isEndEvent")}];
  [(HMDPresenceEventModel *)v9 setEndEvent:v10];

  os_unfair_lock_lock_with_options();
  v11 = [(HMDPresenceEvent *)self presenceType];
  [(HMDPresenceEventModel *)v9 setPresenceType:v11];

  v12 = [(HMDPresenceEvent *)self userUUIDs];
  [(HMDPresenceEventModel *)v9 setUsers:v12];

  v13 = [(HMDPresenceEvent *)self activation];
  v14 = [v13 number];
  [(HMDPresenceEventModel *)v9 setActivation:v14];

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (id)_presenceTypeForClient
{
  v3 = [(HMDPresenceEvent *)self presenceType];
  v4 = *MEMORY[0x277CD0C68];
  if (([v3 isEqualToString:*MEMORY[0x277CD0C68]] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CD0C70]))
  {
    v5 = [(HMDPresenceEvent *)self userUUIDs];
    if ([v5 count] != 1)
    {
      goto LABEL_10;
    }

    v6 = [v5 firstObject];
    v7 = [(HMDPresenceEvent *)self thisUser];
    v8 = [v7 uuid];
    v9 = [v8 UUIDString];
    v10 = [v6 isEqualToString:v9];

    if (!v10)
    {
      goto LABEL_10;
    }

    if ([v3 isEqualToString:v4])
    {
      v11 = MEMORY[0x277CD0C50];
    }

    else
    {
      if (![v3 isEqualToString:*MEMORY[0x277CD0C70]])
      {
LABEL_10:

        goto LABEL_11;
      }

      v11 = MEMORY[0x277CD0C58];
    }

    v12 = *v11;

    v3 = v12;
    goto LABEL_10;
  }

LABEL_11:

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = self;
  v25.receiver = self;
  v25.super_class = HMDPresenceEvent;
  [(HMDEvent *)&v25 encodeWithCoder:v4];
  v17 = 88;
  os_unfair_lock_lock_with_options();
  v19 = [(HMDPresenceEvent *)self presenceType];
  v18 = [(HMDPresenceEvent *)self users];
  if (![v4 hmd_isForNonAdminSharedUser])
  {
    if ([v4 hmd_isForXPCTransport])
    {
      v5 = [(HMDPresenceEvent *)self _presenceTypeForClient];
      [v4 encodeObject:v5 forKey:*MEMORY[0x277CD24C8]];
      if ([v4 hmd_isForXPCTransportEntitledForSPIAccess] && usersListApplicable())
      {
        v14 = [v18 allValues];
        [v4 encodeObject:v14 forKey:*MEMORY[0x277CD24D0]];
      }
    }

    else
    {
      [v4 encodeObject:v19 forKey:*MEMORY[0x277CD24C8]];
      v5 = [v18 allValues];
      [v4 encodeObject:v5 forKey:*MEMORY[0x277CD24D0]];
    }

    goto LABEL_19;
  }

  [v4 encodeObject:v19 forKey:*MEMORY[0x277CD24C8]];
  if (([v19 isEqualToString:*MEMORY[0x277CD0C68]] & 1) != 0 || objc_msgSend(v19, "isEqualToString:", *MEMORY[0x277CD0C70]))
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = [v18 allValues];
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v6)
    {
      v7 = *v22;
      v8 = *MEMORY[0x277CD24D0];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          v11 = [v4 hmd_user];
          v12 = [v10 isEqual:v11];

          if (v12)
          {
            v26 = v10;
            v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
            [v4 encodeObject:v13 forKey:v8];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v6);
    }

LABEL_19:
  }

  os_unfair_lock_unlock((v20 + v17));
  v15 = [(HMDPresenceEvent *)v20 activation];
  [v15 addToCoder:v4];

  v16 = *MEMORY[0x277D85DE8];
}

- (HMDPresenceEvent)initWithCoder:(id)a3
{
  v43[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v41.receiver = self;
  v41.super_class = HMDPresenceEvent;
  v5 = [(HMDEvent *)&v41 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD24C8]];
    presenceType = v6->_presenceType;
    v6->_presenceType = v7;

    v9 = [MEMORY[0x277CD1D28] activationGranularityWithCoder:v4];
    activation = v6->_activation;
    v6->_activation = v9;

    v11 = MEMORY[0x277CBEB98];
    v43[0] = objc_opt_class();
    v43[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
    v13 = [v11 setWithArray:v12];
    v36 = v4;
    v14 = [v4 decodeObjectOfClasses:v13 forKey:*MEMORY[0x277CD24D0]];

    v15 = [MEMORY[0x277CBEB38] dictionary];
    v16 = [MEMORY[0x277CBEB18] array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v35 = v14;
    v17 = [HMDHome filterUsersSupportingPresence:v14];
    v18 = [v17 countByEnumeratingWithState:&v37 objects:v42 count:16];
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
          v23 = [v22 uuid];
          v24 = [v23 UUIDString];
          [v16 addObject:v24];

          v25 = [v22 uuid];
          v26 = [v25 UUIDString];
          [v15 setObject:v22 forKeyedSubscript:v26];
        }

        v19 = [v17 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v19);
    }

    v27 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
    userUUIDs = v6->_userUUIDs;
    v6->_userUUIDs = v27;

    v29 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v15];
    users = v6->_users;
    v6->_users = v29;

    v31 = objc_alloc_init(HMDFeaturesDataSource);
    featuresDataSource = v6->_featuresDataSource;
    v6->_featuresDataSource = v31;

    v4 = v36;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)handleRemovalOfUser:(id)a3 transaction:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [(HMDPresenceEvent *)self users];
  v8 = [v17 uuid];
  v9 = [v8 UUIDString];
  v10 = [v7 objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [(HMDPresenceEvent *)self userUUIDs];
    v12 = [v11 mutableCopy];

    v13 = [v17 uuid];
    v14 = [v13 UUIDString];
    [v12 removeObject:v14];

    v15 = [(HMDPresenceEvent *)self emptyModelObject];
    v16 = [v12 copy];
    [v15 setUsers:v16];

    [v6 add:v15];
  }
}

- (void)_addUser:(id)a3
{
  v4 = a3;
  v5 = [(HMDPresenceEvent *)self users];
  v14 = [v5 mutableCopy];

  v6 = [v4 uuid];
  v7 = [v6 UUIDString];
  [v14 setObject:v4 forKeyedSubscript:v7];

  v8 = [v14 copy];
  [(HMDPresenceEvent *)self setUsers:v8];

  v9 = [(HMDPresenceEvent *)self userUUIDs];
  v10 = [v9 mutableCopy];

  v11 = [v4 uuid];

  v12 = [v11 UUIDString];
  [v10 addObject:v12];

  v13 = [v10 copy];
  [(HMDPresenceEvent *)self setUserUUIDs:v13];
}

- (void)_removeAllUsers
{
  v3 = [MEMORY[0x277CBEAC0] dictionary];
  [(HMDPresenceEvent *)self setUsers:v3];

  v4 = [MEMORY[0x277CBEA60] array];
  [(HMDPresenceEvent *)self setUserUUIDs:v4];
}

- (void)_updateUsers:(id)a3 home:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(HMDPresenceEvent *)self _removeAllUsers];
  v23 = v7;
  v8 = [v7 usersSupportingPresence];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543874;
    v30 = v12;
    v31 = 2112;
    v32 = v6;
    v33 = 2112;
    v34 = v8;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Updating users: %@, %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        v19 = [v18 uuid];
        v20 = [v19 UUIDString];
        v21 = [v6 containsObject:v20];

        if (v21)
        {
          [(HMDPresenceEvent *)v10 _addUser:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateRequest:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 stringForKey:*MEMORY[0x277CD24C8]];
  v6 = [v4 arrayForKey:*MEMORY[0x277CD24D0]];
  if (v5 | v6)
  {
    v14 = [(HMDPresenceEvent *)self emptyModelObject];
    v15 = [(HMDEvent *)self eventTrigger];
    v16 = [v15 home];

    if (v5)
    {
      [v14 setPresenceType:v5];
      if (([v5 isEqualToString:*MEMORY[0x277CD0C50]] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277CD0C58]))
      {
        v17 = [v16 currentUser];
        v18 = [v17 uuid];
        v19 = [v18 UUIDString];
        v26 = v19;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
        [v14 setUsers:v20];
      }
    }

    if (v6)
    {
      [v14 setUsers:v6];
    }

    v21 = [v16 backingStore];
    v22 = [v4 name];
    v23 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v24 = [v21 transaction:v22 options:v23];

    [v24 add:v14 withMessage:v4];
    [v24 run];
  }

  else
  {
    v7 = [v4 responseHandler];

    if (v7)
    {
      v8 = [v4 responseHandler];
      v9 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
      (v8)[2](v8, v9, 0);
    }

    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to update Presence event as parameters are NIL", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (BOOL)compatibleWithUser:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMDPresenceEvent *)self presenceType];
  if (([v5 isEqualToString:*MEMORY[0x277CD0C50]] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277CD0C58]))
  {
    v6 = [(HMDPresenceEvent *)self thisUser];
    LOBYTE(v7) = HMFEqualObjects();
  }

  else if ([v5 isEqualToString:*MEMORY[0x277CD0C48]] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277CD0C60]))
  {
    LOBYTE(v7) = 1;
  }

  else if (([v5 isEqualToString:*MEMORY[0x277CD0C68]] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277CD0C70]))
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v15 = [(HMDPresenceEvent *)self users];
    v16 = [v15 allValues];

    v7 = [v16 countByEnumeratingWithState:&v19 objects:v29 count:16];
    if (v7)
    {
      v17 = *v20;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v16);
          }

          if ([*(*(&v19 + 1) + 8 * i) isEqual:v4])
          {
            LOBYTE(v7) = 1;
            goto LABEL_22;
          }
        }

        v7 = [v16 countByEnumeratingWithState:&v19 objects:v29 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = HMFBooleanToString();
    *buf = 138543874;
    v24 = v11;
    v25 = 2112;
    v26 = v4;
    v27 = 2112;
    v28 = v12;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Checking if the username %@ is compatible: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)evaluateWithHomePresence:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMDPresenceEvent *)self presenceType];
  v6 = [(HMDPresenceEvent *)self users];
  os_unfair_lock_unlock(&self->_lock);
  LOBYTE(self) = [(HMDPresenceEvent *)self _evaluateWithHomePresence:v4 presenceType:v5 users:v6];

  return self;
}

- (BOOL)_evaluateWithHomePresence:(id)a3 presenceType:(id)a4 users:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:*MEMORY[0x277CD0C50]])
  {
    v11 = [(HMDPresenceEvent *)self thisUser];
    v12 = [v8 isUserAtHome:v11];
  }

  else
  {
    if (![v9 isEqualToString:*MEMORY[0x277CD0C58]])
    {
      if ([v9 isEqualToString:*MEMORY[0x277CD0C48]])
      {
        v15 = [v8 isAnyUserAtHome];
      }

      else
      {
        if (![v9 isEqualToString:*MEMORY[0x277CD0C60]])
        {
          if ([v9 isEqualToString:*MEMORY[0x277CD0C68]])
          {
            v11 = [v10 allValues];
            v12 = [v8 areUsersAtHome:v11];
          }

          else
          {
            if (![v9 isEqualToString:*MEMORY[0x277CD0C70]])
            {
              v13 = 0;
              goto LABEL_6;
            }

            v11 = [v10 allValues];
            v12 = [v8 areUsersNotAtHome:v11];
          }

          goto LABEL_5;
        }

        v15 = [v8 isNoUserAtHome];
      }

      v13 = v15;
      goto LABEL_6;
    }

    v11 = [(HMDPresenceEvent *)self thisUser];
    v12 = [v8 isUserNotAtHome:v11];
  }

LABEL_5:
  v13 = v12;

LABEL_6:
  return v13;
}

- (BOOL)evaluateWithUserPresence:(id)a3 presenceType:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (([v7 isEqualToString:*MEMORY[0x277CD0C50]] & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CD0C48]) & 1) == 0 && !objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CD0C68]))
  {
    if ((([v7 isEqualToString:*MEMORY[0x277CD0C58]] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CD0C60]) & 1) != 0 || objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CD0C70])) && objc_msgSend(v6, "isNotAtHome"))
    {
      v8 = objc_autoreleasePoolPush();
      v14 = self;
      v10 = HMFGetOSLogHandle();
      v11 = 1;
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }

      v12 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v12;
      v13 = "%{public}@User presence in the update is leaving home";
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  if (![v6 isAtHome])
  {
LABEL_14:
    v8 = objc_autoreleasePoolPush();
    v15 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v16;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Returning result to not fire event", &v19, 0xCu);
    }

    v11 = 0;
    goto LABEL_17;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  v11 = 1;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v19 = 138543362;
    v20 = v12;
    v13 = "%{public}@User presence in the update is arriving home";
LABEL_7:
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, v13, &v19, 0xCu);
  }

LABEL_17:

  objc_autoreleasePoolPop(v8);
  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)evaluateWithHomePresenceUpdate:(id)a3 presenceType:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [(HMDPresenceEvent *)v9 activation];
    v18 = 138543874;
    v19 = v11;
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Evaluating with homePresenceUpdate %@, activation is set to %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  if ([(HMDPresenceEvent *)v9 activationGranularity]== 1)
  {
    v13 = [v6 userPresence];
    v14 = [(HMDPresenceEvent *)v9 evaluateWithUserPresence:v13 presenceType:v7];
  }

  else
  {
    v13 = [v6 homePresence];
    v14 = [(HMDPresenceEvent *)v9 evaluateWithHomePresence:v13];
  }

  v15 = v14;

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)didEndExecutionSession:(id)a3
{
  v4 = a3;
  v5 = [(HMDEvent *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__HMDPresenceEvent_didEndExecutionSession___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __43__HMDPresenceEvent_didEndExecutionSession___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) executionSession];
  v3 = *(a1 + 40);

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v2 == v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating the current status to YES after the execution session is complete", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    if ([*(a1 + 32) activationGranularity] != 1)
    {
      [*(a1 + 32) setCurrentStatus:1];
    }

    [*(a1 + 32) setExecutionSession:0];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v12 = 138543618;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Received a callback that execution session %@ has ended, but is not known session", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)isCompatibleWithEvent:(id)a3
{
  v4.receiver = self;
  v4.super_class = HMDPresenceEvent;
  return [(HMDEvent *)&v4 isCompatibleWithEvent:a3];
}

- (void)_evaluatePresenceEventForHomePresenceUpdate:(id)a3
{
  v99 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDEvent *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if ([(HMDEvent *)self activationType]> 1)
  {
    if (!v4 || ([v4 homePresence], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
    {
      v6 = objc_autoreleasePoolPush();
      v7 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543618;
        v92 = v22;
        v93 = 2112;
        v94 = v4;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received home presence update is nil: %@", buf, 0x16u);
      }

      goto LABEL_4;
    }

    v12 = [(HMDEvent *)self eventTrigger];
    v13 = [v12 home];

    v14 = [v4 homePresence];
    v15 = [v14 home];

    if (v15 != v13)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [v4 homePresence];
        v21 = [v20 home];
        *buf = 138543874;
        v92 = v19;
        v93 = 2112;
        v94 = v21;
        v95 = 2112;
        v96 = v13;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Received home presence update, homes are not matching: %@, ours: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
      goto LABEL_67;
    }

    os_unfair_lock_lock_with_options();
    v23 = [(HMDPresenceEvent *)self presenceType];
    v90 = [(HMDPresenceEvent *)self users];
    os_unfair_lock_unlock(&self->_lock);
    if ([(HMDPresenceEvent *)self activationGranularity]!= 1)
    {
      goto LABEL_23;
    }

    if (([v4 isUpdate] & 1) == 0)
    {
      v49 = objc_autoreleasePoolPush();
      v50 = self;
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v52 = HMFGetLogIdentifier();
        *buf = 138543362;
        v92 = v52;
        _os_log_impl(&dword_2531F8000, v51, OS_LOG_TYPE_INFO, "%{public}@Home presence is not an update", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v49);
      goto LABEL_66;
    }

    v24 = [v4 userPresence];
    if (v24)
    {
      if ([v23 isEqualToString:*MEMORY[0x277CD0C50]] & 1) == 0 && (objc_msgSend(v23, "isEqualToString:", *MEMORY[0x277CD0C68]) & 1) == 0 && (objc_msgSend(v23, "isEqualToString:", *MEMORY[0x277CD0C58]) & 1) == 0 && !objc_msgSend(v23, "isEqualToString:", *MEMORY[0x277CD0C70]) || (objc_msgSend(v90, "allValues"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "user"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v25, "containsObject:", v26), v26, v25, (v27))
      {

LABEL_23:
        v28 = [(HMDPresenceEvent *)self evaluateWithHomePresenceUpdate:v4 presenceType:v23];
        v29 = objc_autoreleasePoolPush();
        v30 = self;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = HMFGetLogIdentifier();
          v33 = HMFBooleanToString();
          *buf = 138543618;
          v92 = v32;
          v93 = 2112;
          v94 = v33;
          _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Evaluated status: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v29);
        v89 = [(HMDEvent *)v30 delegate];
        v34 = [(HMDPresenceEvent *)v30 executionSession];
        if (v34)
        {
          v35 = objc_autoreleasePoolPush();
          v36 = v30;
          v37 = HMFGetOSLogHandle();
          v38 = os_log_type_enabled(v37, OS_LOG_TYPE_INFO);
          if (v28)
          {
            if (v38)
            {
              v39 = HMFGetLogIdentifier();
              *buf = 138543618;
              v92 = v39;
              v93 = 2112;
              v94 = v34;
              _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Execution session %@ is already underway, no need to create another one", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v35);
            v40 = [HMDEventTriggerDevice alloc];
            v41 = [v4 causingDevice];
            v42 = [(HMDEventTriggerDevice *)v40 initWithDevice:v41 forHome:v13];

            v43 = [v89 didOccurEvent:v36 causingDevice:v42];
            v44 = objc_autoreleasePoolPush();
            v45 = v36;
            v46 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
            {
              v47 = HMFGetLogIdentifier();
              v48 = @"Added";
              *buf = 138544130;
              v92 = v47;
              if (!v43)
              {
                v48 = @"Did not add";
              }

              v93 = 2112;
              v94 = v48;
              v95 = 2112;
              v96 = v43;
              v97 = 2112;
              v98 = v42;
              _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@%@ device to execution session %@, device %@", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v44);
          }

          else
          {
            if (v38)
            {
              v65 = HMFGetLogIdentifier();
              *buf = 138543618;
              v92 = v65;
              v93 = 2112;
              v94 = v34;
              _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Evaluated status is changing to NO, resetting the execution session %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v35);
            [v34 cancelSessionIfWaitingForUserResponse];
            [(HMDPresenceEvent *)v36 setExecutionSession:0];
            [(HMDPresenceEvent *)v36 setCurrentStatus:0];
          }
        }

        else if (v28 == [(HMDPresenceEvent *)v30 currentStatus])
        {
          v66 = objc_autoreleasePoolPush();
          v67 = v30;
          v68 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
          {
            v69 = HMFGetLogIdentifier();
            [(HMDPresenceEvent *)v67 currentStatus];
            v70 = HMFBooleanToString();
            *buf = 138543618;
            v92 = v69;
            v93 = 2112;
            v94 = v70;
            _os_log_impl(&dword_2531F8000, v68, OS_LOG_TYPE_INFO, "%{public}@Current status is not changing from %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v66);
        }

        else if ([v4 isUpdate])
        {
          if (v28)
          {
            v53 = [HMDEventTriggerDevice alloc];
            v54 = [v4 causingDevice];
            v55 = [(HMDEventTriggerDevice *)v53 initWithDevice:v54 forHome:v13];

            v56 = [v89 didOccurEvent:v30 causingDevice:v55];
            [(HMDPresenceEvent *)v30 setExecutionSession:v56];
            v57 = objc_autoreleasePoolPush();
            v58 = v30;
            v59 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
            {
              v60 = HMFGetLogIdentifier();
              *buf = 138543874;
              v92 = v60;
              v93 = 2112;
              v94 = v56;
              v95 = 2112;
              v96 = v55;
              _os_log_impl(&dword_2531F8000, v59, OS_LOG_TYPE_INFO, "%{public}@Created execution session %@ with triggerDevice: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v57);
            if (!v56)
            {
              v61 = objc_autoreleasePoolPush();
              v62 = v58;
              v63 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
              {
                v64 = HMFGetLogIdentifier();
                *buf = 138543362;
                v92 = v64;
                _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_INFO, "%{public}@Could not create execution session, updating the current status to YES", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v61);
              if ([(HMDPresenceEvent *)v62 activationGranularity]!= 1)
              {
                [(HMDPresenceEvent *)v62 setCurrentStatus:1];
              }
            }
          }

          else
          {
            v83 = objc_autoreleasePoolPush();
            v84 = v30;
            v85 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
            {
              v86 = HMFGetLogIdentifier();
              v87 = [(HMDPresenceEvent *)v84 executionSession];
              *buf = 138543618;
              v92 = v86;
              v93 = 2112;
              v94 = v87;
              _os_log_impl(&dword_2531F8000, v85, OS_LOG_TYPE_INFO, "%{public}@This event is moving to inactive state, current execution session %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v83);
            [(HMDPresenceEvent *)v84 setCurrentStatus:0];
          }
        }

        else
        {
          v77 = objc_autoreleasePoolPush();
          v78 = v30;
          v79 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
          {
            v80 = HMFGetLogIdentifier();
            [(HMDPresenceEvent *)v78 currentStatus];
            v81 = HMFBooleanToString();
            v82 = HMFBooleanToString();
            *buf = 138543874;
            v92 = v80;
            v93 = 2112;
            v94 = v81;
            v95 = 2112;
            v96 = v82;
            _os_log_impl(&dword_2531F8000, v79, OS_LOG_TYPE_INFO, "%{public}@Evaluation status is changing from %@ to %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v77);
          [(HMDPresenceEvent *)v78 setCurrentStatus:v28];
        }

        goto LABEL_66;
      }

      v71 = objc_autoreleasePoolPush();
      v75 = self;
      v73 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
      {
        v76 = HMFGetLogIdentifier();
        *buf = 138543618;
        v92 = v76;
        v93 = 2112;
        v94 = v75;
        _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_INFO, "%{public}@User presence in the update is not relevant to the user in this event: %@", buf, 0x16u);
      }
    }

    else
    {
      v71 = objc_autoreleasePoolPush();
      v72 = self;
      v73 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
      {
        v74 = HMFGetLogIdentifier();
        *buf = 138543362;
        v92 = v74;
        _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_INFO, "%{public}@User Presence is nil, not firing event", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v71);
LABEL_66:

LABEL_67:
    goto LABEL_68;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = HMDEventTriggerActivationTypeAsString([(HMDEvent *)v7 activationType]);
    *buf = 138543618;
    v92 = v9;
    v93 = 2112;
    v94 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Ignoring the home presence update since the activation type is %@", buf, 0x16u);
  }

LABEL_4:

  objc_autoreleasePoolPop(v6);
LABEL_68:

  v88 = *MEMORY[0x277D85DE8];
}

- (void)_handleHomePresenceUpdate:(id)a3
{
  v4 = a3;
  v5 = [(HMDEvent *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HMDPresenceEvent__handleHomePresenceUpdate___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __46__HMDPresenceEvent__handleHomePresenceUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"HMDHomePresenceUpdateKey"];

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

  [*(a1 + 40) _evaluatePresenceEventForHomePresenceUpdate:v5];
}

- (BOOL)_activate:(unint64_t)a3 completionHandler:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([(HMDEvent *)self isConfigured])
  {
    v19.receiver = self;
    v19.super_class = HMDPresenceEvent;
    v7 = [(HMDEvent *)&v19 _activate:a3 completionHandler:v6];
    v8 = [(HMDEvent *)self workQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __48__HMDPresenceEvent__activate_completionHandler___block_invoke;
    v17[3] = &unk_279735D28;
    v17[4] = self;
    v18 = v7;
    dispatch_async(v8, v17);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Ignoring request to activate since event hasn't been configured", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v13 = _Block_copy(v6);
    if (v13)
    {
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
      v13[2](v13, v14);
    }

    v7 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

void __48__HMDPresenceEvent__activate_completionHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) activationType];
  if (v2 - 2 < 2)
  {
    if (*(a1 + 40) == 1)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = *(a1 + 32);
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v9 = HMDEventTriggerActivationTypeAsString([*(a1 + 32) activationType]);
        v15 = 138543618;
        v16 = v8;
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Activation is changing to %@, initializing the current status", &v15, 0x16u);
      }

      objc_autoreleasePoolPop(v5);
      v10 = [*(a1 + 32) eventTrigger];
      v11 = [v10 home];
      v12 = [v11 presenceMonitor];
      v13 = [v12 homePresenceUpdate];

      [*(a1 + 32) _evaluatePresenceEventForHomePresenceUpdate:v13];
    }

    goto LABEL_10;
  }

  if (v2 > 1)
  {
LABEL_10:
    v14 = *MEMORY[0x277D85DE8];
    return;
  }

  [*(a1 + 32) setCurrentStatus:0];
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x277D85DE8];

  [v3 setExecutionSession:0];
}

- (void)_registerForMessages
{
  v5.receiver = self;
  v5.super_class = HMDPresenceEvent;
  [(HMDEvent *)&v5 _registerForMessages];
  v3 = [(HMDEvent *)self home];
  v4 = [v3 notificationCenter];
  [v4 addObserver:self selector:sel__handleHomePresenceUpdate_ name:@"HMDHomePresenceUpdateNotification" object:0];
}

- (unint64_t)activationGranularity
{
  v3 = [(HMDPresenceEvent *)self activation];

  if (!v3)
  {
    return 2;
  }

  v4 = [(HMDPresenceEvent *)self activation];
  v5 = [v4 value];

  return v5;
}

- (id)thisUser
{
  v2 = [(HMDEvent *)self home];
  v3 = [v2 currentUser];

  return v3;
}

- (id)emptyModelObject
{
  v3 = [HMDPresenceEventModel alloc];
  v4 = [(HMDEvent *)self uuid];
  v5 = [(HMDEvent *)self eventTrigger];
  v6 = [v5 uuid];
  v7 = [(HMDBackingStoreModelObject *)v3 initWithObjectChangeType:2 uuid:v4 parentUUID:v6];

  return v7;
}

- (id)createClientPayload
{
  v3 = MEMORY[0x277CBEB38];
  v11.receiver = self;
  v11.super_class = HMDPresenceEvent;
  v4 = [(HMDEvent *)&v11 createPayload];
  v5 = [v3 dictionaryWithDictionary:v4];

  os_unfair_lock_lock_with_options();
  v6 = [(HMDPresenceEvent *)self _presenceTypeForClient];
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277CD24C8]];
  v7 = [(HMDPresenceEvent *)self userUUIDs];
  [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x277CD24D0]];

  os_unfair_lock_unlock(&self->_lock);
  v8 = [(HMDPresenceEvent *)self activation];
  [v8 addToPayload:v5];

  v9 = [v5 copy];

  return v9;
}

- (id)createDaemonPayload
{
  v3 = MEMORY[0x277CBEB38];
  v11.receiver = self;
  v11.super_class = HMDPresenceEvent;
  v4 = [(HMDEvent *)&v11 createPayload];
  v5 = [v3 dictionaryWithDictionary:v4];

  os_unfair_lock_lock_with_options();
  v6 = [(HMDPresenceEvent *)self presenceType];
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277CD24C8]];

  v7 = [(HMDPresenceEvent *)self userUUIDs];
  [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x277CD24D0]];

  os_unfair_lock_unlock(&self->_lock);
  v8 = [(HMDPresenceEvent *)self activation];
  [v8 addToPayload:v5];

  v9 = [v5 copy];

  return v9;
}

- (id)createPresenceEventPayload:(BOOL)a3
{
  if (a3)
  {
    [(HMDPresenceEvent *)self createDaemonPayload];
  }

  else
  {
    [(HMDPresenceEvent *)self createClientPayload];
  }
  v3 = ;

  return v3;
}

- (void)configure:(id)a3 messageDispatcher:(id)a4 queue:(id)a5 delegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v16.receiver = self;
  v16.super_class = HMDPresenceEvent;
  [(HMDEvent *)&v16 configure:v10 messageDispatcher:v11 queue:v12 delegate:v13];
  v14 = [v10 home];
  os_unfair_lock_lock_with_options();
  v15 = [(HMDPresenceEvent *)self userUUIDs];
  [(HMDPresenceEvent *)self _updateUsers:v15 home:v14];

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)description
{
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v3 = [(HMDPresenceEvent *)self presenceType];
  v4 = [(HMDPresenceEvent *)self users];
  os_unfair_lock_unlock(&self->_lock);
  v5 = [MEMORY[0x277CCAB68] stringWithFormat:@"type: %@", v3];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        [v5 appendString:{@", "}];
        [v5 appendString:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v11 = MEMORY[0x277CCACA8];
  v17.receiver = self;
  v17.super_class = HMDPresenceEvent;
  v12 = [(HMDEvent *)&v17 description];
  v13 = [(HMDPresenceEvent *)self activation];
  v14 = [v11 stringWithFormat:@"[Presence-Event: %@, %@, %@]", v12, v5, v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)dealloc
{
  v3 = [(HMDEvent *)self home];
  v4 = [v3 notificationCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = HMDPresenceEvent;
  [(HMDPresenceEvent *)&v5 dealloc];
}

- (HMDPresenceEvent)initWithModel:(id)a3 home:(id)a4 featuresDataSource:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25.receiver = self;
  v25.super_class = HMDPresenceEvent;
  v11 = [(HMDEvent *)&v25 initWithModel:v8 home:v9];
  v12 = v11;
  if (v11)
  {
    v11->_lock._os_unfair_lock_opaque = 0;
    v13 = [v8 presenceType];
    presenceType = v12->_presenceType;
    v12->_presenceType = v13;

    v15 = MEMORY[0x277CD1D28];
    v16 = [v8 activation];
    v17 = [v15 activationGranularityWithNumber:v16];
    activation = v12->_activation;
    v12->_activation = v17;

    v19 = [MEMORY[0x277CBEA60] array];
    userUUIDs = v12->_userUUIDs;
    v12->_userUUIDs = v19;

    v21 = [MEMORY[0x277CBEAC0] dictionary];
    users = v12->_users;
    v12->_users = v21;

    objc_storeStrong(&v12->_featuresDataSource, a5);
    os_unfair_lock_lock_with_options();
    v23 = [v8 users];
    [(HMDPresenceEvent *)v12 _updateUsers:v23 home:v9];

    os_unfair_lock_unlock(&v12->_lock);
  }

  return v12;
}

- (HMDPresenceEvent)initWithModel:(id)a3 home:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(HMDFeaturesDataSource);
  v9 = [(HMDPresenceEvent *)self initWithModel:v7 home:v6 featuresDataSource:v8];

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t5_30837 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t5_30837, &__block_literal_global_30838);
  }

  v3 = logCategory__hmf_once_v6_30839;

  return v3;
}

uint64_t __31__HMDPresenceEvent_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v6_30839;
  logCategory__hmf_once_v6_30839 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end