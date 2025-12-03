@interface HMDPresenceEvent
+ (id)logCategory;
- (BOOL)_activate:(unint64_t)_activate completionHandler:(id)handler;
- (BOOL)_evaluateWithHomePresence:(id)presence presenceType:(id)type users:(id)users;
- (BOOL)compatibleWithUser:(id)user;
- (BOOL)evaluateWithHomePresence:(id)presence;
- (BOOL)evaluateWithHomePresenceUpdate:(id)update presenceType:(id)type;
- (BOOL)evaluateWithUserPresence:(id)presence presenceType:(id)type;
- (BOOL)isCompatibleWithEvent:(id)event;
- (HMDEventTriggerExecutionSession)executionSession;
- (HMDPresenceEvent)initWithCoder:(id)coder;
- (HMDPresenceEvent)initWithModel:(id)model home:(id)home;
- (HMDPresenceEvent)initWithModel:(id)model home:(id)home featuresDataSource:(id)source;
- (NSString)description;
- (id)_presenceTypeForClient;
- (id)analyticsPresenceEventData;
- (id)analyticsTriggerEventData;
- (id)createClientPayload;
- (id)createDaemonPayload;
- (id)createPresenceEventPayload:(BOOL)payload;
- (id)emptyModelObject;
- (id)modelObjectWithChangeType:(unint64_t)type;
- (id)thisUser;
- (unint64_t)activationGranularity;
- (void)_addUser:(id)user;
- (void)_evaluatePresenceEventForHomePresenceUpdate:(id)update;
- (void)_handleHomePresenceUpdate:(id)update;
- (void)_handlePrivilegeUpdate:(id)update;
- (void)_handleUpdateRequest:(id)request;
- (void)_registerForMessages;
- (void)_removeAllUsers;
- (void)_transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)_updateUsers:(id)users home:(id)home;
- (void)configure:(id)configure messageDispatcher:(id)dispatcher queue:(id)queue delegate:(id)delegate;
- (void)dealloc;
- (void)didEndExecutionSession:(id)session;
- (void)encodeWithCoder:(id)coder;
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
  presenceType = [(HMDPresenceEvent *)self presenceType];
  if ([presenceType isEqualToString:*MEMORY[0x277CD0C68]])
  {
    v5 = 1;
  }

  else if ([presenceType isEqualToString:*MEMORY[0x277CD0C70]])
  {
    v5 = 2;
  }

  else if ([presenceType isEqualToString:*MEMORY[0x277CD0C48]])
  {
    v5 = 3;
  }

  else
  {
    if (![presenceType isEqualToString:*MEMORY[0x277CD0C60]])
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
  analyticsPresenceEventData = [(HMDPresenceEvent *)self analyticsPresenceEventData];
  [(HMDAnalyticsTriggerEventData *)v3 setPresenceEvent:analyticsPresenceEventData];
  activationGranularity = [(HMDPresenceEvent *)self activationGranularity];
  presenceEvent = [(HMDAnalyticsTriggerEventData *)v3 presenceEvent];
  [presenceEvent setPresenceEventGranularity:activationGranularity];

  return v3;
}

- (void)_transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v53 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543362;
    v48 = v13;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Handling transaction updated", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  v14 = valuesCopy;
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
    if ([v16 propertyWasSet:@"presenceType"] && (-[HMDPresenceEvent presenceType](selfCopy, "presenceType"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "presenceType"), v18 = objc_claimAutoreleasedReturnValue(), v19 = HMFEqualObjects(), v18, v17, (v19 & 1) == 0))
    {
      v21 = objc_autoreleasePoolPush();
      v22 = selfCopy;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        presenceType = [(HMDPresenceEvent *)v22 presenceType];
        presenceType2 = [v16 presenceType];
        *buf = 138543874;
        v48 = v24;
        v49 = 2112;
        v50 = presenceType;
        v51 = 2112;
        v52 = presenceType2;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Updating presence type from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
      presenceType3 = [v16 presenceType];
      [(HMDPresenceEvent *)v22 setPresenceType:presenceType3];

      v20 = 1;
    }

    else
    {
      v20 = 0;
    }

    v28 = [(HMDEvent *)selfCopy eventTrigger:88];
    if ([v16 propertyWasSet:@"users"])
    {
      v29 = MEMORY[0x277CBEB98];
      userUUIDs = [(HMDPresenceEvent *)selfCopy userUUIDs];
      v31 = [v29 setWithArray:userUUIDs];

      v32 = MEMORY[0x277CBEB98];
      users = [v16 users];
      v34 = [v32 setWithArray:users];

      if (([v31 isEqualToSet:v34] & 1) == 0)
      {
        users2 = [v16 users];
        home = [v28 home];
        [(HMDPresenceEvent *)selfCopy _updateUsers:users2 home:home];

        v20 = 1;
      }
    }

    if (![v16 propertyWasSet:@"activation"])
    {
      goto LABEL_19;
    }

    activation = [(HMDPresenceEvent *)selfCopy activation];
    number = [activation number];
    activation2 = [v16 activation];
    v40 = HMFEqualObjects();

    if ((v40 & 1) == 0)
    {
      v41 = MEMORY[0x277CD1D28];
      activation3 = [v16 activation];
      v43 = [v41 activationGranularityWithNumber:activation3];
      [(HMDPresenceEvent *)selfCopy setActivation:v43];

      os_unfair_lock_unlock((selfCopy + v45));
    }

    else
    {
LABEL_19:
      os_unfair_lock_unlock((selfCopy + v45));
      if ((v20 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    [v28 markChangedForMessage:messageCopy];
LABEL_23:
    [messageCopy respondWithSuccess];
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (id)modelObjectWithChangeType:(unint64_t)type
{
  v5 = [HMDPresenceEventModel alloc];
  uuid = [(HMDEvent *)self uuid];
  eventTrigger = [(HMDEvent *)self eventTrigger];
  uuid2 = [eventTrigger uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:type uuid:uuid parentUUID:uuid2];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEvent isEndEvent](self, "isEndEvent")}];
  [(HMDPresenceEventModel *)v9 setEndEvent:v10];

  os_unfair_lock_lock_with_options();
  presenceType = [(HMDPresenceEvent *)self presenceType];
  [(HMDPresenceEventModel *)v9 setPresenceType:presenceType];

  userUUIDs = [(HMDPresenceEvent *)self userUUIDs];
  [(HMDPresenceEventModel *)v9 setUsers:userUUIDs];

  activation = [(HMDPresenceEvent *)self activation];
  number = [activation number];
  [(HMDPresenceEventModel *)v9 setActivation:number];

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (id)_presenceTypeForClient
{
  presenceType = [(HMDPresenceEvent *)self presenceType];
  v4 = *MEMORY[0x277CD0C68];
  if (([presenceType isEqualToString:*MEMORY[0x277CD0C68]] & 1) != 0 || objc_msgSend(presenceType, "isEqualToString:", *MEMORY[0x277CD0C70]))
  {
    userUUIDs = [(HMDPresenceEvent *)self userUUIDs];
    if ([userUUIDs count] != 1)
    {
      goto LABEL_10;
    }

    firstObject = [userUUIDs firstObject];
    thisUser = [(HMDPresenceEvent *)self thisUser];
    uuid = [thisUser uuid];
    uUIDString = [uuid UUIDString];
    v10 = [firstObject isEqualToString:uUIDString];

    if (!v10)
    {
      goto LABEL_10;
    }

    if ([presenceType isEqualToString:v4])
    {
      v11 = MEMORY[0x277CD0C50];
    }

    else
    {
      if (![presenceType isEqualToString:*MEMORY[0x277CD0C70]])
      {
LABEL_10:

        goto LABEL_11;
      }

      v11 = MEMORY[0x277CD0C58];
    }

    v12 = *v11;

    presenceType = v12;
    goto LABEL_10;
  }

LABEL_11:

  return presenceType;
}

- (void)encodeWithCoder:(id)coder
{
  v28 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  selfCopy = self;
  v25.receiver = self;
  v25.super_class = HMDPresenceEvent;
  [(HMDEvent *)&v25 encodeWithCoder:coderCopy];
  v17 = 88;
  os_unfair_lock_lock_with_options();
  presenceType = [(HMDPresenceEvent *)self presenceType];
  users = [(HMDPresenceEvent *)self users];
  if (![coderCopy hmd_isForNonAdminSharedUser])
  {
    if ([coderCopy hmd_isForXPCTransport])
    {
      _presenceTypeForClient = [(HMDPresenceEvent *)self _presenceTypeForClient];
      [coderCopy encodeObject:_presenceTypeForClient forKey:*MEMORY[0x277CD24C8]];
      if ([coderCopy hmd_isForXPCTransportEntitledForSPIAccess] && usersListApplicable())
      {
        allValues = [users allValues];
        [coderCopy encodeObject:allValues forKey:*MEMORY[0x277CD24D0]];
      }
    }

    else
    {
      [coderCopy encodeObject:presenceType forKey:*MEMORY[0x277CD24C8]];
      _presenceTypeForClient = [users allValues];
      [coderCopy encodeObject:_presenceTypeForClient forKey:*MEMORY[0x277CD24D0]];
    }

    goto LABEL_19;
  }

  [coderCopy encodeObject:presenceType forKey:*MEMORY[0x277CD24C8]];
  if (([presenceType isEqualToString:*MEMORY[0x277CD0C68]] & 1) != 0 || objc_msgSend(presenceType, "isEqualToString:", *MEMORY[0x277CD0C70]))
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    _presenceTypeForClient = [users allValues];
    v6 = [_presenceTypeForClient countByEnumeratingWithState:&v21 objects:v27 count:16];
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
            objc_enumerationMutation(_presenceTypeForClient);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          hmd_user = [coderCopy hmd_user];
          v12 = [v10 isEqual:hmd_user];

          if (v12)
          {
            v26 = v10;
            v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
            [coderCopy encodeObject:v13 forKey:v8];
          }
        }

        v6 = [_presenceTypeForClient countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v6);
    }

LABEL_19:
  }

  os_unfair_lock_unlock((selfCopy + v17));
  activation = [(HMDPresenceEvent *)selfCopy activation];
  [activation addToCoder:coderCopy];

  v16 = *MEMORY[0x277D85DE8];
}

- (HMDPresenceEvent)initWithCoder:(id)coder
{
  v43[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v41.receiver = self;
  v41.super_class = HMDPresenceEvent;
  v5 = [(HMDEvent *)&v41 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD24C8]];
    presenceType = v6->_presenceType;
    v6->_presenceType = v7;

    v9 = [MEMORY[0x277CD1D28] activationGranularityWithCoder:coderCopy];
    activation = v6->_activation;
    v6->_activation = v9;

    v11 = MEMORY[0x277CBEB98];
    v43[0] = objc_opt_class();
    v43[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
    v13 = [v11 setWithArray:v12];
    v36 = coderCopy;
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:*MEMORY[0x277CD24D0]];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    array = [MEMORY[0x277CBEB18] array];
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
          uuid = [v22 uuid];
          uUIDString = [uuid UUIDString];
          [array addObject:uUIDString];

          uuid2 = [v22 uuid];
          uUIDString2 = [uuid2 UUIDString];
          [dictionary setObject:v22 forKeyedSubscript:uUIDString2];
        }

        v19 = [v17 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v19);
    }

    v27 = [MEMORY[0x277CBEA60] arrayWithArray:array];
    userUUIDs = v6->_userUUIDs;
    v6->_userUUIDs = v27;

    v29 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];
    users = v6->_users;
    v6->_users = v29;

    v31 = objc_alloc_init(HMDFeaturesDataSource);
    featuresDataSource = v6->_featuresDataSource;
    v6->_featuresDataSource = v31;

    coderCopy = v36;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_addUser:(id)user
{
  userCopy = user;
  users = [(HMDPresenceEvent *)self users];
  v14 = [users mutableCopy];

  uuid = [userCopy uuid];
  uUIDString = [uuid UUIDString];
  [v14 setObject:userCopy forKeyedSubscript:uUIDString];

  v8 = [v14 copy];
  [(HMDPresenceEvent *)self setUsers:v8];

  userUUIDs = [(HMDPresenceEvent *)self userUUIDs];
  v10 = [userUUIDs mutableCopy];

  uuid2 = [userCopy uuid];

  uUIDString2 = [uuid2 UUIDString];
  [v10 addObject:uUIDString2];

  v13 = [v10 copy];
  [(HMDPresenceEvent *)self setUserUUIDs:v13];
}

- (void)_removeAllUsers
{
  dictionary = [MEMORY[0x277CBEAC0] dictionary];
  [(HMDPresenceEvent *)self setUsers:dictionary];

  array = [MEMORY[0x277CBEA60] array];
  [(HMDPresenceEvent *)self setUserUUIDs:array];
}

- (void)_updateUsers:(id)users home:(id)home
{
  v35 = *MEMORY[0x277D85DE8];
  usersCopy = users;
  homeCopy = home;
  [(HMDPresenceEvent *)self _removeAllUsers];
  v23 = homeCopy;
  v8 = [homeCopy usersIncludingPendingUsers:1];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543874;
    v30 = v12;
    v31 = 2112;
    v32 = usersCopy;
    v33 = 2112;
    v34 = v8;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Updating users: %@, %@", buf, 0x20u);
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
        uuid = [v18 uuid];
        uUIDString = [uuid UUIDString];
        v21 = [usersCopy containsObject:uUIDString];

        if (v21)
        {
          [(HMDPresenceEvent *)selfCopy _addUser:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateRequest:(id)request
{
  v29 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [requestCopy stringForKey:*MEMORY[0x277CD24C8]];
  v6 = [requestCopy arrayForKey:*MEMORY[0x277CD24D0]];
  if (v5 | v6)
  {
    emptyModelObject = [(HMDPresenceEvent *)self emptyModelObject];
    eventTrigger = [(HMDEvent *)self eventTrigger];
    home = [eventTrigger home];

    if (v5)
    {
      [emptyModelObject setPresenceType:v5];
      if (([v5 isEqualToString:*MEMORY[0x277CD0C50]] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277CD0C58]))
      {
        currentUser = [home currentUser];
        uuid = [currentUser uuid];
        uUIDString = [uuid UUIDString];
        v26 = uUIDString;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
        [emptyModelObject setUsers:v20];
      }
    }

    if (v6)
    {
      [emptyModelObject setUsers:v6];
    }

    backingStore = [home backingStore];
    name = [requestCopy name];
    v23 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v24 = [backingStore transaction:name options:v23];

    [v24 add:emptyModelObject withMessage:requestCopy];
    [v24 run];
  }

  else
  {
    responseHandler = [requestCopy responseHandler];

    if (responseHandler)
    {
      responseHandler2 = [requestCopy responseHandler];
      v9 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
      (responseHandler2)[2](responseHandler2, v9, 0);
    }

    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to update Presence event as parameters are NIL", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (BOOL)compatibleWithUser:(id)user
{
  v30 = *MEMORY[0x277D85DE8];
  userCopy = user;
  os_unfair_lock_lock_with_options();
  presenceType = [(HMDPresenceEvent *)self presenceType];
  if (([presenceType isEqualToString:*MEMORY[0x277CD0C50]] & 1) != 0 || objc_msgSend(presenceType, "isEqualToString:", *MEMORY[0x277CD0C58]))
  {
    thisUser = [(HMDPresenceEvent *)self thisUser];
    LOBYTE(v7) = HMFEqualObjects();
  }

  else if ([presenceType isEqualToString:*MEMORY[0x277CD0C48]] & 1) != 0 || (objc_msgSend(presenceType, "isEqualToString:", *MEMORY[0x277CD0C60]))
  {
    LOBYTE(v7) = 1;
  }

  else if (([presenceType isEqualToString:*MEMORY[0x277CD0C68]] & 1) != 0 || objc_msgSend(presenceType, "isEqualToString:", *MEMORY[0x277CD0C70]))
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    users = [(HMDPresenceEvent *)self users];
    allValues = [users allValues];

    v7 = [allValues countByEnumeratingWithState:&v19 objects:v29 count:16];
    if (v7)
    {
      v17 = *v20;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(allValues);
          }

          if ([*(*(&v19 + 1) + 8 * i) isEqual:userCopy])
          {
            LOBYTE(v7) = 1;
            goto LABEL_22;
          }
        }

        v7 = [allValues countByEnumeratingWithState:&v19 objects:v29 count:16];
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
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = HMFBooleanToString();
    *buf = 138543874;
    v24 = v11;
    v25 = 2112;
    v26 = userCopy;
    v27 = 2112;
    v28 = v12;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Checking if the username %@ is compatible: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)evaluateWithHomePresence:(id)presence
{
  presenceCopy = presence;
  os_unfair_lock_lock_with_options();
  presenceType = [(HMDPresenceEvent *)self presenceType];
  users = [(HMDPresenceEvent *)self users];
  os_unfair_lock_unlock(&self->_lock);
  LOBYTE(self) = [(HMDPresenceEvent *)self _evaluateWithHomePresence:presenceCopy presenceType:presenceType users:users];

  return self;
}

- (BOOL)_evaluateWithHomePresence:(id)presence presenceType:(id)type users:(id)users
{
  presenceCopy = presence;
  typeCopy = type;
  usersCopy = users;
  if ([typeCopy isEqualToString:*MEMORY[0x277CD0C50]])
  {
    thisUser = [(HMDPresenceEvent *)self thisUser];
    v12 = [presenceCopy isUserAtHome:thisUser];
  }

  else
  {
    if (![typeCopy isEqualToString:*MEMORY[0x277CD0C58]])
    {
      if ([typeCopy isEqualToString:*MEMORY[0x277CD0C48]])
      {
        isAnyUserAtHome = [presenceCopy isAnyUserAtHome];
      }

      else
      {
        if (![typeCopy isEqualToString:*MEMORY[0x277CD0C60]])
        {
          if ([typeCopy isEqualToString:*MEMORY[0x277CD0C68]])
          {
            thisUser = [usersCopy allValues];
            v12 = [presenceCopy areUsersAtHome:thisUser];
          }

          else
          {
            if (![typeCopy isEqualToString:*MEMORY[0x277CD0C70]])
            {
              v13 = 0;
              goto LABEL_6;
            }

            thisUser = [usersCopy allValues];
            v12 = [presenceCopy areUsersNotAtHome:thisUser];
          }

          goto LABEL_5;
        }

        isAnyUserAtHome = [presenceCopy isNoUserAtHome];
      }

      v13 = isAnyUserAtHome;
      goto LABEL_6;
    }

    thisUser = [(HMDPresenceEvent *)self thisUser];
    v12 = [presenceCopy isUserNotAtHome:thisUser];
  }

LABEL_5:
  v13 = v12;

LABEL_6:
  return v13;
}

- (BOOL)evaluateWithUserPresence:(id)presence presenceType:(id)type
{
  v21 = *MEMORY[0x277D85DE8];
  presenceCopy = presence;
  typeCopy = type;
  if (([typeCopy isEqualToString:*MEMORY[0x277CD0C50]] & 1) == 0 && (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277CD0C48]) & 1) == 0 && !objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277CD0C68]))
  {
    if ((([typeCopy isEqualToString:*MEMORY[0x277CD0C58]] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277CD0C60]) & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277CD0C70])) && objc_msgSend(presenceCopy, "isNotAtHome"))
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
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

  if (![presenceCopy isAtHome])
  {
LABEL_14:
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v16;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Returning result to not fire event", &v19, 0xCu);
    }

    v11 = 0;
    goto LABEL_17;
  }

  v8 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v10 = HMFGetOSLogHandle();
  v11 = 1;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v19 = 138543362;
    v20 = v12;
    v13 = "%{public}@User presence in the update is arriving home";
LABEL_7:
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, v13, &v19, 0xCu);
  }

LABEL_17:

  objc_autoreleasePoolPop(v8);
  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)evaluateWithHomePresenceUpdate:(id)update presenceType:(id)type
{
  v24 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  typeCopy = type;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    activation = [(HMDPresenceEvent *)selfCopy activation];
    v18 = 138543874;
    v19 = v11;
    v20 = 2112;
    v21 = updateCopy;
    v22 = 2112;
    v23 = activation;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Evaluating with homePresenceUpdate %@, activation is set to %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  if ([(HMDPresenceEvent *)selfCopy activationGranularity]== 1)
  {
    userPresence = [updateCopy userPresence];
    v14 = [(HMDPresenceEvent *)selfCopy evaluateWithUserPresence:userPresence presenceType:typeCopy];
  }

  else
  {
    userPresence = [updateCopy homePresence];
    v14 = [(HMDPresenceEvent *)selfCopy evaluateWithHomePresence:userPresence];
  }

  v15 = v14;

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)didEndExecutionSession:(id)session
{
  sessionCopy = session;
  workQueue = [(HMDEvent *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__HMDPresenceEvent_didEndExecutionSession___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = sessionCopy;
  v6 = sessionCopy;
  dispatch_async(workQueue, v7);
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating the current status to YES after the execution session is complete", &v12, 0xCu);
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Received a callback that execution session %@ has ended, but is not known session", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)isCompatibleWithEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = HMDPresenceEvent;
  return [(HMDEvent *)&v4 isCompatibleWithEvent:event];
}

- (void)_evaluatePresenceEventForHomePresenceUpdate:(id)update
{
  v99 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  workQueue = [(HMDEvent *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDEvent *)self activationType]> 1)
  {
    if (!updateCopy || ([updateCopy homePresence], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy7 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543618;
        v92 = v22;
        v93 = 2112;
        v94 = updateCopy;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Received home presence update is nil: %@", buf, 0x16u);
      }

      goto LABEL_4;
    }

    eventTrigger = [(HMDEvent *)self eventTrigger];
    home = [eventTrigger home];

    homePresence = [updateCopy homePresence];
    home2 = [homePresence home];

    if (home2 != home)
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        homePresence2 = [updateCopy homePresence];
        home3 = [homePresence2 home];
        *buf = 138543874;
        v92 = v19;
        v93 = 2112;
        v94 = home3;
        v95 = 2112;
        v96 = home;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Received home presence update, homes are not matching: %@, ours: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
      goto LABEL_67;
    }

    os_unfair_lock_lock_with_options();
    presenceType = [(HMDPresenceEvent *)self presenceType];
    users = [(HMDPresenceEvent *)self users];
    os_unfair_lock_unlock(&self->_lock);
    if ([(HMDPresenceEvent *)self activationGranularity]!= 1)
    {
      goto LABEL_23;
    }

    if (([updateCopy isUpdate] & 1) == 0)
    {
      v49 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v52 = HMFGetLogIdentifier();
        *buf = 138543362;
        v92 = v52;
        _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_INFO, "%{public}@Home presence is not an update", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v49);
      goto LABEL_66;
    }

    userPresence = [updateCopy userPresence];
    if (userPresence)
    {
      if ([presenceType isEqualToString:*MEMORY[0x277CD0C50]] & 1) == 0 && (objc_msgSend(presenceType, "isEqualToString:", *MEMORY[0x277CD0C68]) & 1) == 0 && (objc_msgSend(presenceType, "isEqualToString:", *MEMORY[0x277CD0C58]) & 1) == 0 && !objc_msgSend(presenceType, "isEqualToString:", *MEMORY[0x277CD0C70]) || (objc_msgSend(users, "allValues"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(userPresence, "user"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v25, "containsObject:", v26), v26, v25, (v27))
      {

LABEL_23:
        v28 = [(HMDPresenceEvent *)self evaluateWithHomePresenceUpdate:updateCopy presenceType:presenceType];
        v29 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = HMFGetLogIdentifier();
          v33 = HMFBooleanToString();
          *buf = 138543618;
          v92 = v32;
          v93 = 2112;
          v94 = v33;
          _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Evaluated status: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v29);
        delegate = [(HMDEvent *)selfCopy4 delegate];
        executionSession = [(HMDPresenceEvent *)selfCopy4 executionSession];
        if (executionSession)
        {
          v35 = objc_autoreleasePoolPush();
          v36 = selfCopy4;
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
              v94 = executionSession;
              _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Execution session %@ is already underway, no need to create another one", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v35);
            v40 = [HMDEventTriggerDevice alloc];
            causingDevice = [updateCopy causingDevice];
            v42 = [(HMDEventTriggerDevice *)v40 initWithDevice:causingDevice forHome:home];

            v43 = [delegate didOccurEvent:v36 causingDevice:v42];
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
              _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_INFO, "%{public}@%@ device to execution session %@, device %@", buf, 0x2Au);
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
              v94 = executionSession;
              _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Evaluated status is changing to NO, resetting the execution session %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v35);
            [executionSession cancelSessionIfWaitingForUserResponse];
            [(HMDPresenceEvent *)v36 setExecutionSession:0];
            [(HMDPresenceEvent *)v36 setCurrentStatus:0];
          }
        }

        else if (v28 == [(HMDPresenceEvent *)selfCopy4 currentStatus])
        {
          v66 = objc_autoreleasePoolPush();
          v67 = selfCopy4;
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
            _os_log_impl(&dword_229538000, v68, OS_LOG_TYPE_INFO, "%{public}@Current status is not changing from %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v66);
        }

        else if ([updateCopy isUpdate])
        {
          if (v28)
          {
            v53 = [HMDEventTriggerDevice alloc];
            causingDevice2 = [updateCopy causingDevice];
            v55 = [(HMDEventTriggerDevice *)v53 initWithDevice:causingDevice2 forHome:home];

            v56 = [delegate didOccurEvent:selfCopy4 causingDevice:v55];
            [(HMDPresenceEvent *)selfCopy4 setExecutionSession:v56];
            v57 = objc_autoreleasePoolPush();
            v58 = selfCopy4;
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
              _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_INFO, "%{public}@Created execution session %@ with triggerDevice: %@", buf, 0x20u);
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
                _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_INFO, "%{public}@Could not create execution session, updating the current status to YES", buf, 0xCu);
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
            v84 = selfCopy4;
            v85 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
            {
              v86 = HMFGetLogIdentifier();
              executionSession2 = [(HMDPresenceEvent *)v84 executionSession];
              *buf = 138543618;
              v92 = v86;
              v93 = 2112;
              v94 = executionSession2;
              _os_log_impl(&dword_229538000, v85, OS_LOG_TYPE_INFO, "%{public}@This event is moving to inactive state, current execution session %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v83);
            [(HMDPresenceEvent *)v84 setCurrentStatus:0];
          }
        }

        else
        {
          v77 = objc_autoreleasePoolPush();
          v78 = selfCopy4;
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
            _os_log_impl(&dword_229538000, v79, OS_LOG_TYPE_INFO, "%{public}@Evaluation status is changing from %@ to %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v77);
          [(HMDPresenceEvent *)v78 setCurrentStatus:v28];
        }

        goto LABEL_66;
      }

      v71 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v73 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
      {
        v76 = HMFGetLogIdentifier();
        *buf = 138543618;
        v92 = v76;
        v93 = 2112;
        v94 = selfCopy5;
        _os_log_impl(&dword_229538000, v73, OS_LOG_TYPE_INFO, "%{public}@User presence in the update is not relevant to the user in this event: %@", buf, 0x16u);
      }
    }

    else
    {
      v71 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v73 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
      {
        v74 = HMFGetLogIdentifier();
        *buf = 138543362;
        v92 = v74;
        _os_log_impl(&dword_229538000, v73, OS_LOG_TYPE_INFO, "%{public}@User Presence is nil, not firing event", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v71);
LABEL_66:

LABEL_67:
    goto LABEL_68;
  }

  v6 = objc_autoreleasePoolPush();
  selfCopy7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = HMDEventTriggerActivationTypeAsString([(HMDEvent *)selfCopy7 activationType]);
    *buf = 138543618;
    v92 = v9;
    v93 = 2112;
    v94 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Ignoring the home presence update since the activation type is %@", buf, 0x16u);
  }

LABEL_4:

  objc_autoreleasePoolPop(v6);
LABEL_68:

  v88 = *MEMORY[0x277D85DE8];
}

- (void)_handleHomePresenceUpdate:(id)update
{
  updateCopy = update;
  workQueue = [(HMDEvent *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HMDPresenceEvent__handleHomePresenceUpdate___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = updateCopy;
  selfCopy = self;
  v6 = updateCopy;
  dispatch_async(workQueue, v7);
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

- (BOOL)_activate:(unint64_t)_activate completionHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if ([(HMDEvent *)self isConfigured])
  {
    v19.receiver = self;
    v19.super_class = HMDPresenceEvent;
    v7 = [(HMDEvent *)&v19 _activate:_activate completionHandler:handlerCopy];
    workQueue = [(HMDEvent *)self workQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __48__HMDPresenceEvent__activate_completionHandler___block_invoke;
    v17[3] = &unk_278688650;
    v17[4] = self;
    v18 = v7;
    dispatch_async(workQueue, v17);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Ignoring request to activate since event hasn't been configured", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v13 = _Block_copy(handlerCopy);
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
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) activationType];
  if (v2 - 2 >= 2)
  {
    if (v2 <= 1)
    {
      [*(a1 + 32) setCurrentStatus:0];
      v3 = *(a1 + 32);
      v4 = *MEMORY[0x277D85DE8];

      [v3 setExecutionSession:0];
      return;
    }

LABEL_14:
    v16 = *MEMORY[0x277D85DE8];
    return;
  }

  v17 = [*(a1 + 32) featuresDataSource];
  if (([v17 isHomeActivityStateReplacesPresenceMonitorFeatureEnabled] & 1) == 0)
  {
    v6 = *(a1 + 40);

    if (v6 == 1)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 32);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v11 = HMDEventTriggerActivationTypeAsString([*(a1 + 32) activationType]);
        *buf = 138543618;
        v19 = v10;
        v20 = 2112;
        v21 = v11;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Activation is changing to %@, initializing the current status", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      v12 = [*(a1 + 32) eventTrigger];
      v13 = [v12 home];
      v14 = [v13 presenceMonitor];
      v15 = [v14 homePresenceUpdate];

      [*(a1 + 32) _evaluatePresenceEventForHomePresenceUpdate:v15];
    }

    goto LABEL_14;
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handlePrivilegeUpdate:(id)update
{
  home = [(HMDEvent *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__HMDPresenceEvent__handlePrivilegeUpdate___block_invoke;
  v7[3] = &unk_27868A728;
  v7[4] = self;
  [context performBlock:v7];
}

void __43__HMDPresenceEvent__handlePrivilegeUpdate___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uuid];
  v3 = [HMCContext findPresenceEventWithModelID:v2];

  if (v3)
  {
    v4 = [v3 users];
    v5 = [v4 na_map:&__block_literal_global_36];

    v6 = [*(a1 + 32) workQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __43__HMDPresenceEvent__handlePrivilegeUpdate___block_invoke_2;
    v14[3] = &unk_27868A750;
    v14[4] = *(a1 + 32);
    v15 = v5;
    v7 = v5;
    dispatch_async(v6, v14);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 32) uuid];
      *buf = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unable to find the MKFPresenceEvent with modelID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __43__HMDPresenceEvent__handlePrivilegeUpdate___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) home];
  v4 = *v2;
  os_unfair_lock_lock_with_options();
  v5 = objc_autoreleasePoolPush();
  v6 = *v2;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@User privilege changed. Going to update users", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [*(a1 + 32) _updateUsers:*(a1 + 40) home:v3];
  os_unfair_lock_unlock(v4 + 22);
  v9 = [v3 homeManager];
  v10 = [*(a1 + 32) uuid];
  [v9 updateGenerationCounterWithReason:@"User Privilege changed" sourceUUID:v10 shouldNotifyClients:1];

  v11 = *MEMORY[0x277D85DE8];
}

id __43__HMDPresenceEvent__handlePrivilegeUpdate___block_invoke_33(uint64_t a1, void *a2)
{
  v2 = [a2 modelID];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)_registerForMessages
{
  v6.receiver = self;
  v6.super_class = HMDPresenceEvent;
  [(HMDEvent *)&v6 _registerForMessages];
  home = [(HMDEvent *)self home];
  notificationCenter = [home notificationCenter];
  [notificationCenter addObserver:self selector:sel__handleHomePresenceUpdate_ name:@"HMDHomePresenceUpdateNotification" object:0];

  notificationCenter2 = [home notificationCenter];
  [notificationCenter2 addObserver:self selector:sel__handlePrivilegeUpdate_ name:@"HMDUserPrivilegeDidChangeNotification" object:0];
}

- (unint64_t)activationGranularity
{
  activation = [(HMDPresenceEvent *)self activation];

  if (!activation)
  {
    return 2;
  }

  activation2 = [(HMDPresenceEvent *)self activation];
  value = [activation2 value];

  return value;
}

- (id)thisUser
{
  home = [(HMDEvent *)self home];
  currentUser = [home currentUser];

  return currentUser;
}

- (id)emptyModelObject
{
  v3 = [HMDPresenceEventModel alloc];
  uuid = [(HMDEvent *)self uuid];
  eventTrigger = [(HMDEvent *)self eventTrigger];
  uuid2 = [eventTrigger uuid];
  v7 = [(HMDBackingStoreModelObject *)v3 initWithObjectChangeType:2 uuid:uuid parentUUID:uuid2];

  return v7;
}

- (id)createClientPayload
{
  v3 = MEMORY[0x277CBEB38];
  v11.receiver = self;
  v11.super_class = HMDPresenceEvent;
  createPayload = [(HMDEvent *)&v11 createPayload];
  v5 = [v3 dictionaryWithDictionary:createPayload];

  os_unfair_lock_lock_with_options();
  _presenceTypeForClient = [(HMDPresenceEvent *)self _presenceTypeForClient];
  [v5 setObject:_presenceTypeForClient forKeyedSubscript:*MEMORY[0x277CD24C8]];
  userUUIDs = [(HMDPresenceEvent *)self userUUIDs];
  [v5 setObject:userUUIDs forKeyedSubscript:*MEMORY[0x277CD24D0]];

  os_unfair_lock_unlock(&self->_lock);
  activation = [(HMDPresenceEvent *)self activation];
  [activation addToPayload:v5];

  v9 = [v5 copy];

  return v9;
}

- (id)createDaemonPayload
{
  v3 = MEMORY[0x277CBEB38];
  v11.receiver = self;
  v11.super_class = HMDPresenceEvent;
  createPayload = [(HMDEvent *)&v11 createPayload];
  v5 = [v3 dictionaryWithDictionary:createPayload];

  os_unfair_lock_lock_with_options();
  presenceType = [(HMDPresenceEvent *)self presenceType];
  [v5 setObject:presenceType forKeyedSubscript:*MEMORY[0x277CD24C8]];

  userUUIDs = [(HMDPresenceEvent *)self userUUIDs];
  [v5 setObject:userUUIDs forKeyedSubscript:*MEMORY[0x277CD24D0]];

  os_unfair_lock_unlock(&self->_lock);
  activation = [(HMDPresenceEvent *)self activation];
  [activation addToPayload:v5];

  v9 = [v5 copy];

  return v9;
}

- (id)createPresenceEventPayload:(BOOL)payload
{
  if (payload)
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

- (void)configure:(id)configure messageDispatcher:(id)dispatcher queue:(id)queue delegate:(id)delegate
{
  configureCopy = configure;
  dispatcherCopy = dispatcher;
  queueCopy = queue;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = HMDPresenceEvent;
  [(HMDEvent *)&v16 configure:configureCopy messageDispatcher:dispatcherCopy queue:queueCopy delegate:delegateCopy];
  home = [configureCopy home];
  os_unfair_lock_lock_with_options();
  userUUIDs = [(HMDPresenceEvent *)self userUUIDs];
  [(HMDPresenceEvent *)self _updateUsers:userUUIDs home:home];

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)description
{
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  presenceType = [(HMDPresenceEvent *)self presenceType];
  users = [(HMDPresenceEvent *)self users];
  os_unfair_lock_unlock(&self->_lock);
  v5 = [MEMORY[0x277CCAB68] stringWithFormat:@"type: %@", presenceType];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = users;
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
  activation = [(HMDPresenceEvent *)self activation];
  v14 = [v11 stringWithFormat:@"[Presence-Event: %@, %@, %@]", v12, v5, activation];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)dealloc
{
  home = [(HMDEvent *)self home];
  notificationCenter = [home notificationCenter];
  [notificationCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = HMDPresenceEvent;
  [(HMDPresenceEvent *)&v5 dealloc];
}

- (HMDPresenceEvent)initWithModel:(id)model home:(id)home featuresDataSource:(id)source
{
  modelCopy = model;
  homeCopy = home;
  sourceCopy = source;
  v25.receiver = self;
  v25.super_class = HMDPresenceEvent;
  v11 = [(HMDEvent *)&v25 initWithModel:modelCopy home:homeCopy];
  v12 = v11;
  if (v11)
  {
    v11->_lock._os_unfair_lock_opaque = 0;
    presenceType = [modelCopy presenceType];
    presenceType = v12->_presenceType;
    v12->_presenceType = presenceType;

    v15 = MEMORY[0x277CD1D28];
    activation = [modelCopy activation];
    v17 = [v15 activationGranularityWithNumber:activation];
    activation = v12->_activation;
    v12->_activation = v17;

    array = [MEMORY[0x277CBEA60] array];
    userUUIDs = v12->_userUUIDs;
    v12->_userUUIDs = array;

    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    users = v12->_users;
    v12->_users = dictionary;

    objc_storeStrong(&v12->_featuresDataSource, source);
    os_unfair_lock_lock_with_options();
    users = [modelCopy users];
    [(HMDPresenceEvent *)v12 _updateUsers:users home:homeCopy];

    os_unfair_lock_unlock(&v12->_lock);
  }

  return v12;
}

- (HMDPresenceEvent)initWithModel:(id)model home:(id)home
{
  homeCopy = home;
  modelCopy = model;
  v8 = objc_alloc_init(HMDFeaturesDataSource);
  v9 = [(HMDPresenceEvent *)self initWithModel:modelCopy home:homeCopy featuresDataSource:v8];

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t5_45293 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t5_45293, &__block_literal_global_45294);
  }

  v3 = logCategory__hmf_once_v6_45295;

  return v3;
}

void __31__HMDPresenceEvent_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v6_45295;
  logCategory__hmf_once_v6_45295 = v1;
}

@end