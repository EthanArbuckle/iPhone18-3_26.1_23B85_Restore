@interface HMDTrigger
+ (id)logCategory;
+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver;
- (BOOL)hasNoActions;
- (BOOL)isAssociatedWithAccessory:(id)accessory;
- (BOOL)isConfigured;
- (BOOL)isOwnedByThisDevice;
- (BOOL)modelContainsTriggerFired:(id)fired;
- (BOOL)supportsDeviceWithCapabilities:(id)capabilities;
- (HMDHome)home;
- (HMDTrigger)initWithCoder:(id)coder;
- (HMDTrigger)initWithModel:(id)model home:(id)home;
- (HMDTrigger)initWithName:(id)name uuid:(id)uuid;
- (NSArray)actionSets;
- (NSDictionary)actionContext;
- (NSDictionary)bulletinContext;
- (NSString)configuredName;
- (NSString)contextID;
- (NSString)name;
- (NSString)urlString;
- (id)_initWithCoder:(id)coder;
- (id)actionSetForKey:(id)key;
- (id)actionSetMapKeys;
- (id)attributeDescriptions;
- (id)backingStoreObjects:(int64_t)objects;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)emptyModelObject;
- (id)logIdentifier;
- (id)modelObjectWithChangeType:(unint64_t)type version:(id)version;
- (id)trimmedNameFromName:(id)name configuredName:(id)configuredName error:(id *)error;
- (id)updateEventTriggerMessage:(int)message message:(id)a4 relay:(BOOL)relay;
- (void)_actionSetsUpdated:(id)updated message:(id)message;
- (void)_activate:(BOOL)_activate completionHandler:(id)handler;
- (void)_activateTriggerRequest:(id)request;
- (void)_activateWithCompletion:(id)completion;
- (void)_addActionSet:(id)set;
- (void)_encodeWithCoder:(id)coder;
- (void)_executeActionSets:(id)sets captureCurrentState:(BOOL)state completionHandler:(id)handler;
- (void)_executeActionSetsWithCompletionHandler:(id)handler;
- (void)_fillBaseObjectChangeModel:(id)model;
- (void)_forceEvaluate;
- (void)_handleActivateTriggerRequest:(id)request;
- (void)_handleAddActionSetRequest:(id)request;
- (void)_handleAddTriggerOwnedActionSetRequest:(id)request;
- (void)_handleRemoveActionSetRequest:(id)request postUpdate:(BOOL)update;
- (void)_handleRemoveTriggerOwnedActionSetRequest:(id)request postUpdate:(BOOL)update;
- (void)_handleRemoveTriggerPolicyRequest:(id)request;
- (void)_handleRenameRequest:(id)request;
- (void)_handleTriggerUpdate:(id)update message:(id)message;
- (void)_handleUpdateActionSetRequest:(id)request;
- (void)_handleUpdateTriggerPolicyRequest:(id)request;
- (void)_recentFireDateUpdated:(id)updated;
- (void)_registerForMessages;
- (void)_renameRequest:(id)request;
- (void)_transactionObjectRemoved:(id)removed message:(id)message;
- (void)_transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)activateAfterResidentChangeWithCompletion:(id)completion;
- (void)activateWithCompletion:(id)completion;
- (void)configure:(id)configure messageDispatcher:(id)dispatcher queue:(id)queue;
- (void)confirmResident;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)executeCompleteWithError:(id)error;
- (void)invalidate;
- (void)markChangedForMessage:(id)message triggerModel:(id)model;
- (void)reEvaluate:(unint64_t)evaluate;
- (void)removeActionSetForKey:(id)key;
- (void)removeAllActionSets;
- (void)sendTriggerFiredNotification:(id)notification;
- (void)setActionSetForKey:(id)key value:(id)value;
- (void)setConfiguredName:(id)name;
- (void)setName:(id)name;
- (void)triggerFired;
- (void)userDidConfirmExecute:(BOOL)execute completionHandler:(id)handler;
@end

@implementation HMDTrigger

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)_addActionSet:(id)set
{
  setCopy = set;
  uuid = [setCopy uuid];
  uUIDString = [uuid UUIDString];

  [(HMDTrigger *)self setActionSetForKey:uUIDString value:setCopy];
}

- (BOOL)supportsDeviceWithCapabilities:(id)capabilities
{
  v19 = *MEMORY[0x277D85DE8];
  capabilitiesCopy = capabilities;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  actionSets = [(HMDTrigger *)self actionSets];
  v6 = [actionSets countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = 1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(actionSets);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 containsShortcutActions])
        {
          v9 &= [capabilitiesCopy supportsShortcutActions];
        }

        if ([v11 containsMediaPlaybackActions])
        {
          v9 &= [capabilitiesCopy supportsMediaActions];
        }
      }

      v7 = [actionSets countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

- (void)confirmResident
{
  if ([(HMDTrigger *)self isConfigured])
  {
    home = [(HMDTrigger *)self home];
    residentDeviceManager = [home residentDeviceManager];

    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __29__HMDTrigger_confirmResident__block_invoke;
    v5[3] = &unk_2797359D8;
    v5[4] = self;
    [residentDeviceManager confirmWithCompletionHandler:v5];
  }
}

void __29__HMDTrigger_confirmResident__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v3;
      v9 = "%{public}@Failed to confirm primary resident with error: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v10, v11, v9, &v14, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v8;
    v9 = "%{public}@Successfully confirmed primary resident";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v13 = *MEMORY[0x277D85DE8];
}

- (id)updateEventTriggerMessage:(int)message message:(id)a4 relay:(BOOL)relay
{
  v8 = a4;
  home = [(HMDTrigger *)self home];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__HMDTrigger_updateEventTriggerMessage_message_relay___block_invoke;
  aBlock[3] = &unk_2797209D0;
  v10 = v8;
  v19 = v10;
  objc_copyWeak(&v21, &location);
  v11 = home;
  v20 = v11;
  messageCopy = message;
  relayCopy = relay;
  v12 = _Block_copy(aBlock);
  if (![v11 isSharedAdmin])
  {
    goto LABEL_5;
  }

  primaryResident = [v11 primaryResident];
  v14 = primaryResident;
  if (primaryResident && ([primaryResident isReachable] & 1) != 0)
  {

LABEL_5:
    v14 = [v10 mutableCopy];
    [v14 setResponseHandler:v12];
    [v14 setRemote:{objc_msgSend(v10, "isRemote")}];
    v15 = [v14 copy];
    goto LABEL_7;
  }

  v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:91];
  v12[2](v12, v16, 0);

  v15 = 0;
LABEL_7:

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return v15;
}

void __54__HMDTrigger_updateEventTriggerMessage_message_relay___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = objc_alloc_init(HomeKitEventTriggerUpdateLogEvent);
    v8 = [*(a1 + 32) remoteSourceID];

    if (v8)
    {
      v9 = 3;
    }

    else if ([*(a1 + 40) isOwnerUser])
    {
      v9 = 1;
    }

    else
    {
      if (![*(a1 + 40) isAdminUser])
      {
        goto LABEL_11;
      }

      v9 = 2;
    }

    v11 = [(HomeKitEventTriggerUpdateLogEvent *)v7 analyticsData];
    [v11 setRequestOrigin:v9];

LABEL_11:
    v12 = *(a1 + 56);
    v13 = [(HomeKitEventTriggerUpdateLogEvent *)v7 analyticsData];
    [v13 setUpdateType:v12];

    v14 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v14 submitLogEvent:v7];

    if (!v20 && *(a1 + 60) == 1 && [*(a1 + 40) isSharedAdmin])
    {
      v15 = [*(a1 + 32) mutableCopy];
      [v15 setResponseHandler:0];
      v16 = [*(a1 + 40) administratorHandler];
      v17 = [v16 operationForMessage:v15 error:0];
      if (v17)
      {
        [v16 addOperation:v17];
      }
    }

    v18 = [*(a1 + 32) responseHandler];

    if (v18)
    {
      v19 = [*(a1 + 32) responseHandler];
      (v19)[2](v19, v20, v5);
    }

    goto LABEL_19;
  }

  v10 = [*(a1 + 32) responseHandler];

  if (!v10)
  {
    goto LABEL_20;
  }

  v7 = [*(a1 + 32) responseHandler];
  (*&v7->super._endTime)(v7, v20, v5);
LABEL_19:

LABEL_20:
}

- (id)emptyModelObject
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)backingStoreObjects:(int64_t)objects
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 stringWithFormat:@"You must override %@ in a subclass", v6];
  v8 = [v3 exceptionWithName:v4 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (id)modelObjectWithChangeType:(unint64_t)type version:(id)version
{
  versionCopy = version;
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = NSStringFromSelector(a2);
  v10 = [v8 stringWithFormat:@"You must override %@ in a subclass", v9];
  v11 = [v6 exceptionWithName:v7 reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

- (void)_transactionObjectRemoved:(id)removed message:(id)message
{
  removedCopy = removed;
  messageCopy = message;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)_transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = NSStringFromSelector(a2);
  v15 = [v13 stringWithFormat:@"You must override %@ in a subclass", v14];
  v16 = [v11 exceptionWithName:v12 reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

- (void)_encodeWithCoder:(id)coder
{
  v30 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  home = [(HMDTrigger *)self home];
  [coderCopy encodeConditionalObject:home forKey:@"home"];
  name = [(HMDTrigger *)self name];
  [coderCopy encodeObject:name forKey:@"triggerName"];

  uuid = [(HMDTrigger *)self uuid];
  uUIDString = [uuid UUIDString];
  [coderCopy encodeObject:uUIDString forKey:@"triggerUUID"];

  actionSets = [(HMDTrigger *)self actionSets];
  [coderCopy encodeObject:actionSets forKey:@"triggerActionSets"];

  [coderCopy encodeBool:-[HMDTrigger active](self forKey:{"active"), @"triggerActive"}];
  configuredName = [(HMDTrigger *)self configuredName];
  [coderCopy encodeObject:configuredName forKey:*MEMORY[0x277CD1248]];

  LODWORD(configuredName) = [coderCopy hmd_isForXPCTransport];
  hmd_isForXPCTransportEntitledForSPIAccess = [coderCopy hmd_isForXPCTransportEntitledForSPIAccess];
  if (!configuredName)
  {
    actionSetUUIDs = [(HMDTrigger *)self actionSetUUIDs];
    [coderCopy encodeObject:actionSetUUIDs forKey:@"triggerActionSetUUIDs"];

    owningDevice = [(HMDTrigger *)self owningDevice];
    [coderCopy encodeObject:owningDevice forKey:@"HM.device"];

    owner = [(HMDTrigger *)self owner];
    [coderCopy encodeObject:owner forKey:@"HM.user"];

    policy = [(HMDTrigger *)self policy];
    [coderCopy encodeObject:policy forKey:*MEMORY[0x277CD1270]];

    goto LABEL_8;
  }

  v12 = hmd_isForXPCTransportEntitledForSPIAccess;
  v13 = [(HMDTrigger *)self shouldEncodeLastFireDate:coderCopy];
  if (!v12)
  {
    goto LABEL_5;
  }

  policy2 = [(HMDTrigger *)self policy];
  [coderCopy encodeObject:policy2 forKey:*MEMORY[0x277CD1270]];

  owningDevice2 = [(HMDTrigger *)self owningDevice];
  [coderCopy encodeObject:owningDevice2 forKey:@"HM.device"];

  owner2 = [(HMDTrigger *)self owner];

  if (owner2)
  {
    owner3 = [(HMDTrigger *)self owner];
    [coderCopy encodeObject:owner3 forKey:@"HM.user"];

LABEL_5:
    if (!v13)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v24 = objc_autoreleasePoolPush();
  selfCopy = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    v28 = 138543362;
    v29 = v27;
    _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Owner user is not set in the trigger", &v28, 0xCu);
  }

  objc_autoreleasePoolPop(v24);
  if (v13)
  {
LABEL_8:
    mostRecentFireDate = [(HMDTrigger *)self mostRecentFireDate];
    [coderCopy encodeObject:mostRecentFireDate forKey:@"triggerLastFireDate"];
  }

LABEL_9:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [(HMDTrigger *)self _encodeWithCoder:coderCopy];
  objc_autoreleasePoolPop(v4);
}

- (id)_initWithCoder:(id)coder
{
  v53[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"triggerName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"triggerUUID"];
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v6];
  v8 = [(HMDTrigger *)self initWithName:v5 uuid:v7];
  if (v8)
  {
    v43 = v7;
    v44 = v6;
    v45 = v5;
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"home"];
    objc_storeWeak(&v8->_home, v9);

    v10 = MEMORY[0x277CBEB98];
    v53[0] = objc_opt_class();
    v53[1] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
    v12 = [v10 setWithArray:v11];

    v13 = MEMORY[0x277CBEB98];
    v52[0] = objc_opt_class();
    v52[1] = objc_opt_class();
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
    v15 = [v13 setWithArray:v14];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"triggerActionSetUUIDs"];

    v42 = v12;
    v17 = [coderCopy decodeObjectOfClasses:v12 forKey:@"triggerActionSets"];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v18 = [v17 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v47;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v47 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v46 + 1) + 8 * i);
          uuid = [v22 uuid];
          uUIDString = [uuid UUIDString];
          [(HMDTrigger *)v8 setActionSetForKey:uUIDString value:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v19);
    }

    if (v16)
    {
      actionSetMapKeys = [v16 mutableCopy];
      [(HMDTrigger *)v8 setActionSetUUIDs:actionSetMapKeys];
    }

    else
    {
      actionSetMapKeys = [(HMDTrigger *)v8 actionSetMapKeys];
      v26 = [actionSetMapKeys mutableCopy];
      [(HMDTrigger *)v8 setActionSetUUIDs:v26];
    }

    v7 = v43;
    v6 = v44;

    -[HMDTrigger setActive:](v8, "setActive:", [coderCopy decodeBoolForKey:@"triggerActive"]);
    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"triggerLastFireDate"];
    [(HMDTrigger *)v8 setMostRecentFireDate:v27];

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.user"];
    owner = v8->_owner;
    v8->_owner = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.device"];
    owningDevice = v8->_owningDevice;
    v8->_owningDevice = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD1248]];
    hm_truncatedNameString = [v32 hm_truncatedNameString];
    configuredName = v8->_configuredName;
    v8->_configuredName = hm_truncatedNameString;

    v35 = MEMORY[0x277CBEB98];
    v50 = objc_opt_class();
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
    v37 = [v35 setWithArray:v36];

    v38 = [coderCopy decodeObjectOfClasses:v37 forKey:*MEMORY[0x277CD1270]];
    policy = v8->_policy;
    v8->_policy = v38;

    v5 = v45;
  }

  v40 = *MEMORY[0x277D85DE8];
  return v8;
}

- (HMDTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = [(HMDTrigger *)self _initWithCoder:coderCopy];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (void)executeCompleteWithError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  policy = [(HMDTrigger *)self policy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = policy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = errorCopy;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Trigger is marked to be deleted after execution (finished with error: %@), removing...", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    home = [(HMDTrigger *)selfCopy home];
    [home removeTrigger:selfCopy];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleTriggerUpdate:(id)update message:(id)message
{
  v85 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  messageCopy = message;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    setProperties = [updateCopy setProperties];
    *buf = 138543874;
    v76 = v11;
    v77 = 2112;
    v78 = updateCopy;
    v79 = 2112;
    v80 = setProperties;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling base trigger update: %@, %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  setProperties2 = [updateCopy setProperties];
  v14 = [setProperties2 containsObject:@"currentActionSets"];

  if (v14)
  {
    [(HMDTrigger *)selfCopy _actionSetsUpdated:updateCopy message:messageCopy];
  }

  setProperties3 = [updateCopy setProperties];
  v16 = 0x277CBE000;
  if ([setProperties3 containsObject:@"name"])
  {
  }

  else
  {
    setProperties4 = [updateCopy setProperties];
    v18 = [setProperties4 containsObject:@"configuredName"];

    if (!v18)
    {
      goto LABEL_13;
    }
  }

  name = [(HMDTrigger *)selfCopy name];
  configuredName = [(HMDTrigger *)selfCopy configuredName];
  name2 = [updateCopy name];
  [(HMDTrigger *)selfCopy setName:name2];

  configuredName2 = [updateCopy configuredName];
  [(HMDTrigger *)selfCopy setConfiguredName:configuredName2];

  v22 = objc_autoreleasePoolPush();
  v23 = selfCopy;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = HMFGetLogIdentifier();
    name3 = [(HMDTrigger *)v23 name];
    configuredName3 = [(HMDTrigger *)v23 configuredName];
    *buf = 138544386;
    v76 = v25;
    v77 = 2112;
    v78 = name;
    v79 = 2112;
    v80 = name3;
    v81 = 2112;
    v82 = configuredName;
    v83 = 2112;
    v84 = configuredName3;
    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Parameter configured From : [%@, %@] To: [%@, %@]", buf, 0x34u);

    v16 = 0x277CBE000uLL;
  }

  objc_autoreleasePoolPop(v22);
  v28 = *(v16 + 2872);
  messagePayload = [messageCopy messagePayload];
  v30 = [v28 dictionaryWithDictionary:messagePayload];

  name4 = [(HMDTrigger *)v23 name];
  [v30 setObject:name4 forKeyedSubscript:*MEMORY[0x277CD2758]];

  configuredName4 = [(HMDTrigger *)v23 configuredName];
  [v30 setObject:configuredName4 forKeyedSubscript:*MEMORY[0x277CD1250]];

  v33 = HMDRemoteMessagePayloadKeysForTransportMetadata();
  [v30 removeObjectsForKeys:v33];

  v34 = objc_autoreleasePoolPush();
  v35 = v23;
  v36 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    v37 = HMFGetLogIdentifier();
    *buf = 138543618;
    v76 = v37;
    v77 = 2112;
    v78 = v30;
    _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@name parameter configured : payload : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v34);
  [messageCopy respondWithPayload:v30];

LABEL_13:
  setProperties5 = [updateCopy setProperties];
  v39 = [setProperties5 containsObject:@"mostRecentFireDate"];

  if (v39)
  {
    mostRecentFireDate = [updateCopy mostRecentFireDate];
    [(HMDTrigger *)selfCopy _recentFireDateUpdated:mostRecentFireDate];
  }

  setProperties6 = [updateCopy setProperties];
  v42 = [setProperties6 containsObject:@"owner"];

  if (v42)
  {
    home = [(HMDTrigger *)selfCopy home];
    owner = [updateCopy owner];
    uuid = [owner uuid];
    v46 = [home userWithUUID:uuid];
    [(HMDTrigger *)selfCopy setOwner:v46];

    [messageCopy respondWithPayload:0];
  }

  setProperties7 = [updateCopy setProperties];
  v48 = [setProperties7 containsObject:@"owningDevice"];

  if (v48)
  {
    owningDevice = [updateCopy owningDevice];
    [(HMDTrigger *)selfCopy setOwningDevice:owningDevice];

    v73[0] = *MEMORY[0x277CD2768];
    uuid2 = [(HMDTrigger *)selfCopy uuid];
    uUIDString = [uuid2 UUIDString];
    v73[1] = @"HM.device";
    v74[0] = uUIDString;
    owningDevice2 = [(HMDTrigger *)selfCopy owningDevice];
    v53 = encodeRootObjectForIncomingXPCMessage(owningDevice2, 0);
    v74[1] = v53;
    v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];

    [messageCopy respondWithPayload:v54];
  }

  setProperties8 = [updateCopy setProperties];
  v56 = [setProperties8 containsObject:@"active"];

  if (v56)
  {
    active = [updateCopy active];
    -[HMDTrigger setActive:](selfCopy, "setActive:", [active BOOLValue]);

    v71 = *MEMORY[0x277CD2730];
    v58 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDTrigger active](selfCopy, "active")}];
    v72 = v58;
    v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];

    [messageCopy respondWithPayload:v59];
  }

  setProperties9 = [updateCopy setProperties];
  v61 = [setProperties9 containsObject:@"autoDelete"];

  if (v61)
  {
    autoDelete = [updateCopy autoDelete];
    bOOLValue = [autoDelete BOOLValue];

    if (bOOLValue)
    {
      v64 = objc_alloc_init(HMDTriggerDeleteAfterExecutionPolicy);
      [(HMDTrigger *)selfCopy setPolicy:v64];

      policy = [(HMDTrigger *)selfCopy policy];
      uuid3 = [policy uuid];
    }

    else
    {
      [(HMDTrigger *)selfCopy setPolicy:0];
      uuid3 = 0;
    }

    v67 = [*(v16 + 2872) dictionaryWithCapacity:1];
    if (uuid3)
    {
      uUIDString2 = [uuid3 UUIDString];
      [v67 setObject:uUIDString2 forKeyedSubscript:*MEMORY[0x277CD1288]];
    }

    [messageCopy respondWithPayload:v67];
  }

  [(HMDTrigger *)selfCopy markChangedForMessage:messageCopy triggerModel:updateCopy];

  v69 = *MEMORY[0x277D85DE8];
}

- (void)_fillBaseObjectChangeModel:(id)model
{
  modelCopy = model;
  name = [(HMDTrigger *)self name];
  [modelCopy setName:name];

  configuredName = [(HMDTrigger *)self configuredName];
  [modelCopy setConfiguredName:configuredName];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDTrigger active](self, "active")}];
  [modelCopy setActive:v7];

  actionSetUUIDs = [(HMDTrigger *)self actionSetUUIDs];
  v9 = [actionSetUUIDs copy];
  [modelCopy setCurrentActionSets:v9];

  mostRecentFireDate = [(HMDTrigger *)self mostRecentFireDate];
  [modelCopy setMostRecentFireDate:mostRecentFireDate];

  owner = [(HMDTrigger *)self owner];
  [modelCopy setOwner:owner];

  owningDevice = [(HMDTrigger *)self owningDevice];
  [modelCopy setOwningDevice:owningDevice];

  policy = [(HMDTrigger *)self policy];
  objc_opt_class();
  LOBYTE(owningDevice) = objc_opt_isKindOfClass();

  v14 = [MEMORY[0x277CCABB0] numberWithBool:owningDevice & (policy != 0)];
  [modelCopy setAutoDelete:v14];
}

- (void)_registerForMessages
{
  v30[4] = *MEMORY[0x277D85DE8];
  v24 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v24 setRoles:{objc_msgSend(v24, "roles") | 4}];
  v3 = [v24 copy];
  home = [(HMDTrigger *)self home];
  v4 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:4 remoteAccessRequired:0];
  msgDispatcher = [(HMDTrigger *)self msgDispatcher];
  v6 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v30[0] = v6;
  v30[1] = v3;
  v30[2] = v4;
  v7 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v30[3] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
  [msgDispatcher registerForMessage:@"kRenameTriggerRequestKey" receiver:self policies:v8 selector:sel__handleRenameRequest_];

  v9 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v29[0] = v9;
  v29[1] = v3;
  v29[2] = v4;
  v10 = [HMDConfigurationMessagePolicy policyWithOperationTypes:5];
  v29[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
  [msgDispatcher registerForMessage:@"kUpdateActionSetTriggerRequestKey" receiver:self policies:v11 selector:sel__handleUpdateActionSetRequest_];

  v12 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v28[0] = v12;
  v28[1] = v3;
  v28[2] = v4;
  v13 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v28[3] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  [msgDispatcher registerForMessage:@"kActivateTriggerRequestKey" receiver:self policies:v14 selector:sel__handleActivateTriggerRequest_];

  v15 = *MEMORY[0x277CD1298];
  v16 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v27[0] = v16;
  v27[1] = v3;
  v27[2] = v4;
  v17 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v27[3] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:4];
  [msgDispatcher registerForMessage:v15 receiver:self policies:v18 selector:sel__handleUpdateTriggerPolicyRequest_];

  v19 = *MEMORY[0x277CD1290];
  v20 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v26[0] = v20;
  v26[1] = v3;
  v26[2] = v4;
  v21 = [HMDConfigurationMessagePolicy policyWithOperationTypes:4];
  v26[3] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  [msgDispatcher registerForMessage:v19 receiver:self policies:v22 selector:sel__handleRemoveTriggerPolicyRequest_];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)userDidConfirmExecute:(BOOL)execute completionHandler:(id)handler
{
  v5 = MEMORY[0x277CCA9B8];
  handlerCopy = handler;
  v7 = [v5 hmErrorWithCode:22];
  (*(handler + 2))(handlerCopy, v7);
}

- (void)_executeActionSets:(id)sets captureCurrentState:(BOOL)state completionHandler:(id)handler
{
  stateCopy = state;
  v60 = *MEMORY[0x277D85DE8];
  setsCopy = sets;
  handlerCopy = handler;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = setsCopy;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Executing action sets: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = +[HMDLostModeManager sharedManager];
  isLost = [v11 isLost];

  if (isLost)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Not executing action sets: device is in lost mode", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v37 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
    handlerCopy[2](handlerCopy, v37, 0);
  }

  else
  {
    msgDispatcher = [(HMDTrigger *)selfCopy msgDispatcher];
    v18 = msgDispatcher == 0;

    if (v18)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = selfCopy;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v29;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Not executing action sets: trigger is unconfigured", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v26);
      v37 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
      handlerCopy[2](handlerCopy, v37, 0);
    }

    else
    {
      v37 = [setsCopy na_filter:&__block_literal_global_67];
      if ([v37 count])
      {
        v19 = dispatch_group_create();
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v57 = __Block_byref_object_copy__544;
        v58 = __Block_byref_object_dispose__545;
        v59 = 0;
        v53[0] = 0;
        v53[1] = v53;
        v53[2] = 0x3032000000;
        v53[3] = __Block_byref_object_copy__544;
        v53[4] = __Block_byref_object_dispose__545;
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        obj = v37;
        v20 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
        if (v20)
        {
          v21 = *v50;
          do
          {
            v22 = 0;
            do
            {
              if (*v50 != v21)
              {
                objc_enumerationMutation(obj);
              }

              v23 = *(*(&v49 + 1) + 8 * v22);
              dispatch_group_enter(v19);
              v44[0] = MEMORY[0x277D85DD0];
              v44[1] = 3221225472;
              v44[2] = __71__HMDTrigger__executeActionSets_captureCurrentState_completionHandler___block_invoke_68;
              v44[3] = &unk_2797209A8;
              v44[4] = selfCopy;
              v47 = buf;
              v24 = v19;
              v48 = v53;
              v45 = v24;
              v46 = v23;
              [v23 executeWithTriggerSource:selfCopy captureCurrentState:stateCopy completionHandler:v44];

              ++v22;
            }

            while (v20 != v22);
            v20 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
          }

          while (v20);
        }

        workQueue = [(HMDTrigger *)selfCopy workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __71__HMDTrigger__executeActionSets_captureCurrentState_completionHandler___block_invoke_3;
        block[3] = &unk_27972C358;
        v41 = handlerCopy;
        v42 = buf;
        v43 = v53;
        dispatch_group_notify(v19, workQueue, block);

        _Block_object_dispose(v53, 8);
        _Block_object_dispose(buf, 8);
      }

      else
      {
        v30 = objc_autoreleasePoolPush();
        v31 = selfCopy;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = HMFGetLogIdentifier();
          *buf = 138543362;
          *&buf[4] = v33;
          _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@Not executing action sets: all action sets have an empty list of actions", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v30);
        v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:25];
        handlerCopy[2](handlerCopy, v19, 0);
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __71__HMDTrigger__executeActionSets_captureCurrentState_completionHandler___block_invoke_68(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__HMDTrigger__executeActionSets_captureCurrentState_completionHandler___block_invoke_2;
  v14[3] = &unk_27972D2F0;
  v8 = *(a1 + 56);
  v15 = v5;
  v19 = v8;
  v9 = *(a1 + 40);
  v10 = *(a1 + 64);
  v11 = *(a1 + 48);
  v16 = v9;
  v17 = v11;
  v20 = v10;
  v18 = v6;
  v12 = v6;
  v13 = v5;
  dispatch_async(v7, v14);
}

void __71__HMDTrigger__executeActionSets_captureCurrentState_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v2);
  }

  dispatch_group_leave(*(a1 + 40));
  v3 = *(*(*(a1 + 72) + 8) + 40);
  v4 = *(a1 + 56);
  v5 = [*(a1 + 48) uuid];
  [v3 setObject:v4 forKeyedSubscript:v5];
}

BOOL __71__HMDTrigger__executeActionSets_captureCurrentState_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 actions];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)_executeActionSetsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  actionSets = [(HMDTrigger *)self actionSets];
  [(HMDTrigger *)self _executeActionSets:actionSets captureCurrentState:0 completionHandler:handlerCopy];
}

- (void)_handleRemoveTriggerPolicyRequest:(id)request
{
  v22 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  policy = [(HMDTrigger *)self policy];

  if (policy)
  {
    emptyModelObject = [(HMDTrigger *)self emptyModelObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = emptyModelObject;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = [MEMORY[0x277CCABB0] numberWithBool:0];
    [v8 setAutoDelete:v9];

    home = [(HMDTrigger *)self home];
    backingStore = [home backingStore];
    name = [requestCopy name];
    v13 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v14 = [backingStore transaction:name options:v13];

    [v14 add:v8 withMessage:requestCopy];
    [v14 run];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Policy already removed", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    [requestCopy respondWithSuccess];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateTriggerPolicyRequest:(id)request
{
  v29 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  home = [(HMDTrigger *)self home];
  if (home)
  {
    v6 = [requestCopy dictionaryForKey:*MEMORY[0x277CD1278]];
    v26 = 0;
    v7 = [v6 hmf_BOOLForKey:*MEMORY[0x277CD1260] isPresent:&v26];
    if (v26)
    {
      v8 = v7;
      emptyModelObject = [(HMDTrigger *)self emptyModelObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = emptyModelObject;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      v12 = [MEMORY[0x277CCABB0] numberWithBool:v8];
      [v11 setAutoDelete:v12];

      backingStore = [home backingStore];
      name = [requestCopy name];
      v15 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v16 = [backingStore transaction:name options:v15];

      [v16 add:v11 withMessage:requestCopy];
      [v16 run];
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v28 = v24;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Invalid payload for update policy request", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      [requestCopy respondWithError:v16];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Trigger not associated to a home", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [requestCopy respondWithError:v6];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_activateTriggerRequest:(id)request
{
  requestCopy = request;
  home = [(HMDTrigger *)self home];
  if (home)
  {
    v5 = [requestCopy numberForKey:*MEMORY[0x277CD2730]];
    if (v5)
    {
      responseHandler2 = v5;
      -[HMDTrigger setEnabled:message:](self, "setEnabled:message:", [v5 BOOLValue], requestCopy);
    }

    else
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:20 userInfo:0];
      responseHandler = [requestCopy responseHandler];
      (responseHandler)[2](responseHandler, v8, 0);

      responseHandler2 = 0;
    }
  }

  else
  {
    responseHandler2 = [requestCopy responseHandler];
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (responseHandler2)[2](responseHandler2, v7, 0);
  }
}

- (void)_handleActivateTriggerRequest:(id)request
{
  v4 = [(HMDTrigger *)self updateEventTriggerMessage:10 message:request relay:1];
  if (v4)
  {
    [(HMDTrigger *)self _activateTriggerRequest:v4];
  }

  MEMORY[0x2821F96F8]();
}

- (void)_actionSetsUpdated:(id)updated message:(id)message
{
  v110 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  messageCopy = message;
  v7 = MEMORY[0x277CBEB58];
  v74 = updatedCopy;
  currentActionSets = [updatedCopy currentActionSets];
  v9 = [v7 setWithArray:currentActionSets];

  v10 = MEMORY[0x277CBEB58];
  actionSetMapKeys = [(HMDTrigger *)self actionSetMapKeys];
  v12 = [v10 setWithArray:actionSetMapKeys];

  v75 = v12;
  v76 = v9;
  [v9 minusSet:v12];
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543618;
    v107 = v16;
    v108 = 2112;
    v109 = v9;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@addedActionSets: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  v17 = MEMORY[0x277CBEB98];
  currentActionSets2 = [v74 currentActionSets];
  v19 = [v17 setWithArray:currentActionSets2];
  v20 = v75;
  [v75 minusSet:v19];

  v21 = objc_autoreleasePoolPush();
  v22 = selfCopy;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543618;
    v107 = v24;
    v108 = 2112;
    v109 = v75;
    _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@removedActionSets: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  v90 = v22;
  if ([v76 count])
  {
    home = [(HMDTrigger *)v22 home];
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v26 = v76;
    v89 = [v26 countByEnumeratingWithState:&v96 objects:v105 count:16];
    if (v89)
    {
      v78 = 0;
      v87 = *v97;
      v85 = *MEMORY[0x277CD2728];
      v83 = *MEMORY[0x277CD2040];
      v81 = *MEMORY[0x277CD2720];
      v79 = *MEMORY[0x277CD2738];
      obj = v26;
      do
      {
        v27 = 0;
        do
        {
          if (*v97 != v87)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v96 + 1) + 8 * v27);
          v29 = objc_autoreleasePoolPush();
          v30 = v22;
          v31 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v32 = HMFGetLogIdentifier();
            *buf = 138543618;
            v107 = v32;
            v108 = 2112;
            v109 = v28;
            _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Action set %@ has been added", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v29);
          v33 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v28];
          v34 = [home actionSetWithUUID:v33];
          if (v34 || ([home triggerOwnedActionSetWithUUID:v33], (v34 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v35 = v34;
            if (([v34 containsShortcutActions] & 1) != 0 || objc_msgSend(v35, "containsMediaPlaybackActions"))
            {
              v78 = 1;
            }

            [(HMDTrigger *)v30 setActionSetForKey:v28 value:v35];
            actionSetUUIDs = [(HMDTrigger *)v30 actionSetUUIDs];
            v37 = [actionSetUUIDs containsObject:v28];

            if ((v37 & 1) == 0)
            {
              actionSetUUIDs2 = [(HMDTrigger *)v30 actionSetUUIDs];
              [actionSetUUIDs2 addObject:v28];
            }

            v104[0] = v28;
            v103[0] = v85;
            v103[1] = v83;
            name = [v35 name];
            v104[1] = name;
            v103[2] = v81;
            type = [v35 type];
            v103[3] = v79;
            v104[2] = type;
            v104[3] = MEMORY[0x277CBEC38];
            v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:4];

            v42 = objc_autoreleasePoolPush();
            v43 = v30;
            v44 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
            {
              v45 = HMFGetLogIdentifier();
              *buf = 138543362;
              v107 = v45;
              _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@Responding to clients that actionSet has been added to the trigger.", buf, 0xCu);

              v22 = v90;
            }

            objc_autoreleasePoolPop(v42);
            [messageCopy respondWithPayload:v41];
          }

          else
          {
            v46 = objc_autoreleasePoolPush();
            v47 = v30;
            v48 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              v49 = HMFGetLogIdentifier();
              *buf = 138543618;
              v107 = v49;
              v108 = 2112;
              v109 = v28;
              _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_INFO, "%{public}@Action set %@ could not be found", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v46);
          }

          ++v27;
        }

        while (v89 != v27);
        v50 = [obj countByEnumeratingWithState:&v96 objects:v105 count:16];
        v89 = v50;
      }

      while (v50);

      if (v78)
      {
        [(HMDTrigger *)v30 confirmResident];
      }
    }

    else
    {
    }

    v20 = v75;
  }

  if ([v20 count])
  {
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v80 = v20;
    v51 = [v80 countByEnumeratingWithState:&v92 objects:v102 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v93;
      v86 = *MEMORY[0x277CD2040];
      v88 = *MEMORY[0x277CD2728];
      v82 = *MEMORY[0x277CD2738];
      v84 = *MEMORY[0x277CD2720];
      do
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v93 != v53)
          {
            objc_enumerationMutation(v80);
          }

          v55 = *(*(&v92 + 1) + 8 * i);
          v56 = objc_autoreleasePoolPush();
          v57 = v22;
          v58 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            v59 = HMFGetLogIdentifier();
            *buf = 138543618;
            v107 = v59;
            v108 = 2112;
            v109 = v55;
            _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_INFO, "%{public}@Action set %@ has been deleted", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v56);
          v60 = [(HMDTrigger *)v57 actionSetForKey:v55];
          if (v60)
          {
            [(HMDTrigger *)v57 removeActionSetForKey:v55];
            actionSetUUIDs3 = [(HMDTrigger *)v57 actionSetUUIDs];
            [actionSetUUIDs3 removeObject:v55];

            v101[0] = v55;
            v100[0] = v88;
            v100[1] = v86;
            name2 = [v60 name];
            v101[1] = name2;
            v100[2] = v84;
            type2 = [v60 type];
            v100[3] = v82;
            v101[2] = type2;
            v101[3] = MEMORY[0x277CBEC28];
            v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:4];

            v65 = objc_autoreleasePoolPush();
            v66 = v57;
            v67 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
            {
              v68 = HMFGetLogIdentifier();
              *buf = 138543362;
              v107 = v68;
              _os_log_impl(&dword_2531F8000, v67, OS_LOG_TYPE_INFO, "%{public}@Notifying clients that actionSet has been removed from the trigger.", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v65);
            [messageCopy respondWithPayload:v64];

            v22 = v90;
          }

          else
          {
            v69 = objc_autoreleasePoolPush();
            v70 = v57;
            v71 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
            {
              v72 = HMFGetLogIdentifier();
              *buf = 138543618;
              v107 = v72;
              v108 = 2112;
              v109 = v55;
              _os_log_impl(&dword_2531F8000, v71, OS_LOG_TYPE_INFO, "%{public}@Action set %@ could not be found", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v69);
          }
        }

        v52 = [v80 countByEnumeratingWithState:&v92 objects:v102 count:16];
      }

      while (v52);
    }

    v20 = v75;
  }

  v73 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateActionSetRequest:(id)request
{
  v4 = [(HMDTrigger *)self updateEventTriggerMessage:9 message:request relay:1];
  if (v4)
  {
    [(HMDTrigger *)self _updateActionSetRequest:v4 postUpdate:1];
  }

  MEMORY[0x2821F96F8]();
}

- (void)_handleRemoveTriggerOwnedActionSetRequest:(id)request postUpdate:(BOOL)update
{
  updateCopy = update;
  v30 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v7 = [requestCopy uuidForKey:*MEMORY[0x277CD2728]];
  if (v7)
  {
    home = [(HMDTrigger *)self home];
    backingStore = [home backingStore];
    name = [requestCopy name];
    v11 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v12 = [backingStore transaction:name options:v11];

    v13 = [HMDActionSetModel alloc];
    uuid = [home uuid];
    v15 = [(HMDBackingStoreModelObject *)v13 initWithObjectChangeType:3 uuid:v7 parentUUID:uuid];

    [v12 add:v15 withMessage:0];
    if (updateCopy)
    {
      emptyModelObject = [(HMDTrigger *)self emptyModelObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = emptyModelObject;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;

      actionSetUUIDs = [(HMDTrigger *)self actionSetUUIDs];
      uUIDString = [v7 UUIDString];
      [actionSetUUIDs removeObject:uUIDString];

      actionSetUUIDs2 = [(HMDTrigger *)self actionSetUUIDs];
      v22 = [actionSetUUIDs2 copy];
      [v18 setCurrentActionSets:v22];

      [v12 add:v18 withMessage:requestCopy];
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        v28 = 138543362;
        v29 = v26;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Remove of trigger owned action set, not posting event trigger update model as requested", &v28, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
    }

    [v12 run];
  }

  else
  {
    home = [requestCopy responseHandler];
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    (home)[2](home, v12, 0);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_handleRemoveActionSetRequest:(id)request postUpdate:(BOOL)update
{
  updateCopy = update;
  v29 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v7 = [requestCopy uuidForKey:*MEMORY[0x277CD2728]];
  if (v7)
  {
    if (updateCopy)
    {
      emptyModelObject = [(HMDTrigger *)self emptyModelObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = emptyModelObject;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;

      actionSetUUIDs = [(HMDTrigger *)self actionSetUUIDs];
      uUIDString = [v7 UUIDString];
      [actionSetUUIDs removeObject:uUIDString];

      actionSetUUIDs2 = [(HMDTrigger *)self actionSetUUIDs];
      v14 = [actionSetUUIDs2 copy];
      [v10 setCurrentActionSets:v14];

      home = [(HMDTrigger *)self home];
      backingStore = [home backingStore];
      name = [requestCopy name];
      v18 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v19 = [backingStore transaction:name options:v18];

      [v19 add:v10 withMessage:requestCopy];
      [v19 run];
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        v27 = 138543362;
        v28 = v25;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Remove of trigger action set, not posting event trigger update model as requested", &v27, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
    }
  }

  else
  {
    responseHandler = [requestCopy responseHandler];
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    (responseHandler)[2](responseHandler, v21, 0);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_handleAddTriggerOwnedActionSetRequest:(id)request
{
  v31 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [requestCopy uuidForKey:*MEMORY[0x277CD0B10]];
  if (v5)
  {
    home = [(HMDTrigger *)self home];
    v7 = [HMDActionSetModel alloc];
    uuid = [home uuid];
    v9 = [(HMDBackingStoreModelObject *)v7 initWithObjectChangeType:1 uuid:v5 parentUUID:uuid];

    v10 = [MEMORY[0x277CCAD78] hm_deriveUUIDFromBaseUUID:v5];
    uUIDString = [v10 UUIDString];
    [(HMDActionSetModel *)v9 setName:uUIDString];

    [(HMDActionSetModel *)v9 setType:*MEMORY[0x277CCF1A0]];
    emptyModelObject = [(HMDTrigger *)self emptyModelObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = emptyModelObject;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    actionSetUUIDs = [(HMDTrigger *)self actionSetUUIDs];
    uUIDString2 = [v5 UUIDString];
    [actionSetUUIDs addObject:uUIDString2];

    actionSetUUIDs2 = [(HMDTrigger *)self actionSetUUIDs];
    v18 = [actionSetUUIDs2 copy];
    [v14 setCurrentActionSets:v18];

    backingStore = [home backingStore];
    name = [requestCopy name];
    v21 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v22 = [backingStore transaction:name options:v21];

    [v22 add:v9 withMessage:0];
    [v22 add:v14 withMessage:requestCopy];

    [v22 run];
    goto LABEL_10;
  }

  v23 = objc_autoreleasePoolPush();
  selfCopy = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = HMFGetLogIdentifier();
    v29 = 138543362;
    v30 = v26;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ActionSetUUID not set.", &v29, 0xCu);
  }

  objc_autoreleasePoolPop(v23);
  responseHandler = [requestCopy responseHandler];

  if (responseHandler)
  {
    home = [requestCopy responseHandler];
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    (home)[2](home, v9, 0);
LABEL_10:
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_handleAddActionSetRequest:(id)request
{
  requestCopy = request;
  v4 = [requestCopy uuidForKey:*MEMORY[0x277CD2728]];
  if (v4)
  {
    emptyModelObject = [(HMDTrigger *)self emptyModelObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = emptyModelObject;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    actionSetUUIDs = [(HMDTrigger *)self actionSetUUIDs];
    uUIDString = [v4 UUIDString];
    [actionSetUUIDs addObject:uUIDString];

    actionSetUUIDs2 = [(HMDTrigger *)self actionSetUUIDs];
    v11 = [actionSetUUIDs2 copy];
    [v7 setCurrentActionSets:v11];

    home = [(HMDTrigger *)self home];
    backingStore = [home backingStore];
    name = [requestCopy name];
    v15 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    responseHandler = [backingStore transaction:name options:v15];

    [responseHandler add:v7 withMessage:requestCopy];
    [responseHandler run];
  }

  else
  {
    responseHandler = [requestCopy responseHandler];
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    (responseHandler)[2](responseHandler, v17, 0);
  }
}

- (id)trimmedNameFromName:(id)name configuredName:(id)configuredName error:(id *)error
{
  v53 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  configuredNameCopy = configuredName;
  home = [(HMDTrigger *)self home];
  homeManager = [home homeManager];
  nameValidator = [homeManager nameValidator];
  v13 = [nameValidator nameByTrimmingDisallowedCharactersFromName:nameCopy];

  v14 = [v13 length];
  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  v18 = v17;
  if (!v14)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      v46 = v31;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Trimmed name is now empty", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    if (error)
    {
      v29 = MEMORY[0x277CCA9B8];
      v30 = 20;
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543618;
    v46 = v19;
    v47 = 2112;
    v48 = v13;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Processing new trigger name after trimming invalid characters: '%@'", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  name = [(HMDTrigger *)selfCopy name];
  v21 = [name isEqualToString:v13];

  if (v21)
  {
    configuredName = [(HMDTrigger *)selfCopy configuredName];
    v23 = [configuredName isEqualToString:configuredNameCopy];

    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    v27 = v26;
    if (v23)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543362;
        v46 = v28;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Cannot rename the trigger as new trigger name & configured names are same.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
      if (error)
      {
        v29 = MEMORY[0x277CCA9B8];
        v30 = 48;
LABEL_14:
        [v29 hmErrorWithCode:v30];
        *error = v32 = 0;
        goto LABEL_27;
      }

LABEL_20:
      v32 = 0;
      goto LABEL_27;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543362;
      v46 = v41;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Allowing rename request as current name and new trimmed name are the same but current configured name and new configured name are different", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    v32 = v13;
  }

  else
  {
    name2 = [(HMDTrigger *)selfCopy name];
    v34 = [home replaceName:name2 withNewName:v13];

    if (v34)
    {
      v35 = objc_autoreleasePoolPush();
      v36 = selfCopy;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        [(HMDTrigger *)v36 name];
        v39 = v44 = v35;
        *buf = 138544130;
        v46 = v38;
        v47 = 2112;
        v48 = v39;
        v49 = 2112;
        v50 = v13;
        v51 = 2112;
        v52 = v34;
        _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@Cannot rename the trigger from '%@' to '%@': %@", buf, 0x2Au);

        v35 = v44;
      }

      objc_autoreleasePoolPop(v35);
      if (error)
      {
        v40 = v34;
        v32 = 0;
        *error = v34;
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v32 = v13;
    }
  }

LABEL_27:

  v42 = *MEMORY[0x277D85DE8];

  return v32;
}

- (void)_renameRequest:(id)request
{
  v47 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [requestCopy stringForKey:*MEMORY[0x277CD2758]];
  v6 = v5;
  if (!v5 || ![v5 length])
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = 20;
LABEL_8:
    v14 = [v12 hmErrorWithCode:v13];
    [requestCopy respondWithError:v14];
    goto LABEL_9;
  }

  v7 = HMMaxLengthForNaming();
  if ([v6 length] > v7)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@New name is longer than the pre-defined max length", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = MEMORY[0x277CCA9B8];
    v13 = 46;
    goto LABEL_8;
  }

  v14 = [requestCopy stringForKey:*MEMORY[0x277CD1250]];
  home = [(HMDTrigger *)self home];
  if (home)
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      name = [(HMDTrigger *)selfCopy2 name];
      configuredName = [(HMDTrigger *)selfCopy2 configuredName];
      *buf = 138544386;
      v38 = v20;
      v39 = 2112;
      v40 = name;
      v41 = 2112;
      v42 = v6;
      v43 = 2112;
      v44 = configuredName;
      v45 = 2112;
      v46 = v14;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Rename request received: '%@' -> '%@', '%@' -> '%@'", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v17);
    v36 = 0;
    v23 = [(HMDTrigger *)selfCopy2 trimmedNameFromName:v6 configuredName:v14 error:&v36];
    v24 = v36;
    if (v23)
    {
      emptyModelObject = [(HMDTrigger *)selfCopy2 emptyModelObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = emptyModelObject;
      }

      else
      {
        v26 = 0;
      }

      v27 = v26;

      [v27 setName:v23];
      [v27 setConfiguredName:v14];
      backingStore = [home backingStore];
      name2 = [requestCopy name];
      v30 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      [backingStore transaction:name2 options:v30];
      v35 = home;
      v31 = v14;
      v33 = v32 = v24;

      [v33 add:v27 withMessage:requestCopy];
      [v33 run];

      v24 = v32;
      v14 = v31;
      home = v35;
    }

    else
    {
      [requestCopy respondWithError:v24];
    }
  }

  else
  {
    v34 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [requestCopy respondWithError:v34];
  }

LABEL_9:
  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleRenameRequest:(id)request
{
  v4 = [(HMDTrigger *)self updateEventTriggerMessage:8 message:request relay:1];
  if (v4)
  {
    [(HMDTrigger *)self _renameRequest:v4];
  }

  MEMORY[0x2821F96F8]();
}

- (void)_activate:(BOOL)_activate completionHandler:(id)handler
{
  _activateCopy = _activate;
  v21 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (_activateCopy)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    actionSets = [(HMDTrigger *)self actionSets];
    v8 = [actionSets countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(actionSets);
          }

          actions = [*(*(&v16 + 1) + 8 * i) actions];
          v10 += [actions count];
        }

        v9 = [actionSets countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);

      if (v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:25 userInfo:0];
    handlerCopy[2](handlerCopy, v14);

    goto LABEL_14;
  }

LABEL_10:
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }

LABEL_14:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)markChangedForMessage:(id)message triggerModel:(id)model
{
  v20 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  modelCopy = model;
  home = [(HMDTrigger *)self home];
  transactionResult = [messageCopy transactionResult];
  if ([home isOwnerUser])
  {
    [transactionResult markChanged];
  }

  else if ([home isAdminUser])
  {
    [transactionResult markLocalChanged];
  }

  v10 = [(HMDTrigger *)self modelContainsTriggerFired:modelCopy];
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (v10)
  {
    if (v14)
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v15;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Not re-activating the trigger after applying the trigger model since it only contains mostRecentFireDate", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    if (v14)
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v16;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Activating the trigger after applying the trigger model", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDTrigger *)selfCopy activateWithCompletion:0];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)modelContainsTriggerFired:(id)fired
{
  firedCopy = fired;
  setProperties = [firedCopy setProperties];
  if ([setProperties count] == 1)
  {
    setProperties2 = [firedCopy setProperties];
    v6 = [setProperties2 containsObject:@"mostRecentFireDate"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)activateAfterResidentChangeWithCompletion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Re-evaluating trigger after resident change", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDTrigger *)selfCopy activateWithCompletion:completionCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_activateWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  if (v3)
  {
    v5 = v3;
    v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v5[2](v5, v4);

    v3 = v5;
  }
}

- (void)activateWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if ([(HMDTrigger *)self isConfigured])
  {
    workQueue = [(HMDTrigger *)self workQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __37__HMDTrigger_activateWithCompletion___block_invoke;
    v11[3] = &unk_279735738;
    v11[4] = self;
    v12 = completionCopy;
    dispatch_async(workQueue, v11);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Work queue is not configured, cannot activate", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)isConfigured
{
  workQueue = [(HMDTrigger *)self workQueue];
  v3 = workQueue != 0;

  return v3;
}

- (BOOL)isOwnedByThisDevice
{
  owner = [(HMDTrigger *)self owner];
  if ([owner isCurrentUser])
  {
    owningDevice = [(HMDTrigger *)self owningDevice];
    if (owningDevice)
    {
      owningDevice2 = [(HMDTrigger *)self owningDevice];
      isCurrentDevice = [owningDevice2 isCurrentDevice];
    }

    else
    {
      isCurrentDevice = 1;
    }
  }

  else
  {
    isCurrentDevice = 0;
  }

  return isCurrentDevice;
}

- (void)invalidate
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v20 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Invalidating trigger", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  actionSets = [(HMDTrigger *)selfCopy actionSets];
  v8 = [actionSets countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(actionSets);
        }

        [(HMDTrigger *)selfCopy removeActionSet:*(*(&v14 + 1) + 8 * v11++) postUpdate:0];
      }

      while (v9 != v11);
      v9 = [actionSets countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [(HMDTrigger *)selfCopy removeAllActionSets];
  actionSetUUIDs = [(HMDTrigger *)selfCopy actionSetUUIDs];
  [actionSetUUIDs removeAllObjects];

  [(HMDTrigger *)selfCopy setMsgDispatcher:0];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)configure:(id)configure messageDispatcher:(id)dispatcher queue:(id)queue
{
  configureCopy = configure;
  dispatcherCopy = dispatcher;
  queueCopy = queue;
  home = [(HMDTrigger *)self home];

  if (home != configureCopy)
  {
    [(HMDTrigger *)self setHome:configureCopy];
    owner = [(HMDTrigger *)self owner];
    uuid = [owner uuid];
    v13 = [configureCopy userWithUUID:uuid];
    [(HMDTrigger *)self setOwner:v13];
  }

  [(HMDTrigger *)self setMsgDispatcher:dispatcherCopy];
  [(HMDTrigger *)self setWorkQueue:queueCopy];

  [(HMDTrigger *)self _registerForMessages];
  residentDeviceManager = [configureCopy residentDeviceManager];
  [residentDeviceManager addDataSource:self];
}

- (BOOL)isAssociatedWithAccessory:(id)accessory
{
  v16 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  actionSets = [(HMDTrigger *)self actionSets];
  v6 = [actionSets countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(actionSets);
        }

        if ([*(*(&v11 + 1) + 8 * i) isAssociatedWithAccessory:accessoryCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [actionSets countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)sendTriggerFiredNotification:(id)notification
{
  notificationCopy = notification;
  if ([(HMDTrigger *)self _isTriggerFiredNotificationEntitled])
  {
    [MEMORY[0x277D0F818] entitledMessageWithName:@"kTriggerFiredNotificationKey" messagePayload:notificationCopy];
  }

  else
  {
    [MEMORY[0x277D0F818] messageWithName:@"kTriggerFiredNotificationKey" messagePayload:notificationCopy];
  }
  v7 = ;

  msgDispatcher = [(HMDTrigger *)self msgDispatcher];
  uuid = [(HMDTrigger *)self uuid];
  [msgDispatcher sendMessage:v7 target:uuid];
}

- (void)_recentFireDateUpdated:(id)updated
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (updated)
  {
    [(HMDTrigger *)self setMostRecentFireDate:?];
    v10 = *MEMORY[0x277CD2748];
    v8 = *MEMORY[0x277CD2750];
    mostRecentFireDate = [(HMDTrigger *)self mostRecentFireDate];
    v9 = mostRecentFireDate;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v11[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

    [(HMDTrigger *)self sendTriggerFiredNotification:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)triggerFired
{
  emptyModelObject = [(HMDTrigger *)self emptyModelObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = emptyModelObject;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  date = [MEMORY[0x277CBEAA8] date];
  [v5 setMostRecentFireDate:date];

  home = [(HMDTrigger *)self home];
  backingStore = [home backingStore];
  v9 = +[HMDBackingStoreTransactionOptions defaultLocalOptions];
  v10 = [backingStore transaction:@"kTriggerFiredNotificationKey" options:v9];

  [v10 add:v5 withMessage:0];
  [v10 run];
}

- (void)reEvaluate:(unint64_t)evaluate
{
  v17 = *MEMORY[0x277D85DE8];
  if (![(HMDTrigger *)self isConfigured])
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v11;
      v12 = "%{public}@Cannot re-evaluate trigger, work queue has not been configured yet";
LABEL_12:
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, v12, &v15, 0xCu);
    }

LABEL_13:

    objc_autoreleasePoolPop(v8);
    goto LABEL_14;
  }

  home = [(HMDTrigger *)self home];
  isOwnerUser = [home isOwnerUser];

  if ((isOwnerUser & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v11;
      v12 = "%{public}@Cannot re-evaluate trigger, not a owner user";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (evaluate != 1)
  {
    if (!evaluate)
    {
      v7 = *MEMORY[0x277D85DE8];

      [(HMDTrigger *)self _checkForNoActions];
      return;
    }

LABEL_14:
    v13 = *MEMORY[0x277D85DE8];
    return;
  }

  v14 = *MEMORY[0x277D85DE8];

  [(HMDTrigger *)self _forceEvaluate];
}

- (void)_forceEvaluate
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(HMDTrigger *)self active])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Trigger is active. Hence force evaluating", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [(HMDTrigger *)selfCopy _activateWithCompletion:0];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasNoActions
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  actionSets = [(HMDTrigger *)self actionSets];
  v3 = [actionSets countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(actionSets);
        }

        actions = [*(*(&v12 + 1) + 8 * i) actions];
        v8 = [actions count];

        if (v8)
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v4 = [actionSets countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (NSArray)actionSets
{
  os_unfair_lock_lock_with_options();
  actionSetMappings = [(HMDTrigger *)self actionSetMappings];
  allValues = [actionSetMappings allValues];

  os_unfair_lock_unlock(&self->_lock);

  return allValues;
}

- (id)actionSetMapKeys
{
  os_unfair_lock_lock_with_options();
  actionSetMappings = [(HMDTrigger *)self actionSetMappings];
  allKeys = [actionSetMappings allKeys];

  os_unfair_lock_unlock(&self->_lock);

  return allKeys;
}

- (void)removeAllActionSets
{
  os_unfair_lock_lock_with_options();
  actionSetMappings = [(HMDTrigger *)self actionSetMappings];
  [actionSetMappings removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeActionSetForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v6 = keyCopy;
    os_unfair_lock_lock_with_options();
    actionSetMappings = [(HMDTrigger *)self actionSetMappings];
    [actionSetMappings removeObjectForKey:v6];

    os_unfair_lock_unlock(&self->_lock);
    keyCopy = v6;
  }
}

- (id)actionSetForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    os_unfair_lock_lock_with_options();
    actionSetMappings = [(HMDTrigger *)self actionSetMappings];
    v6 = [actionSetMappings objectForKey:keyCopy];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setActionSetForKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  if (keyCopy && valueCopy)
  {
    os_unfair_lock_lock_with_options();
    actionSetMappings = [(HMDTrigger *)self actionSetMappings];
    [actionSetMappings setObject:valueCopy forKey:keyCopy];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)setConfiguredName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  hm_truncatedNameString = [nameCopy hm_truncatedNameString];
  configuredName = self->_configuredName;
  self->_configuredName = hm_truncatedNameString;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)configuredName
{
  os_unfair_lock_lock_with_options();
  v3 = self->_configuredName;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
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
  v46 = *MEMORY[0x277D85DE8];
  v37 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v4 = MEMORY[0x277CCACA8];
  name = [(HMDTrigger *)self name];
  configuredName = [(HMDTrigger *)self configuredName];
  uuid = [(HMDTrigger *)self uuid];
  uUIDString = [uuid UUIDString];
  [(HMDTrigger *)self active];
  v9 = HMFBooleanToString();
  [(HMDTrigger *)self shouldActivateOnLocalDevice];
  v10 = HMFBooleanToString();
  mostRecentFireDate = [(HMDTrigger *)self mostRecentFireDate];
  policy = [(HMDTrigger *)self policy];
  v13 = [v4 stringWithFormat:@"name: %@, configuredName: %@, uuid: %@, enabled: %@, activeOnLocalDevice: %@, lastFireDate: %@, Policy: %@", name, configuredName, uUIDString, v9, v10, mostRecentFireDate, policy];

  v14 = v37;
  v36 = v13;
  [v37 setObject:v13 forKeyedSubscript:*MEMORY[0x277D0F170]];
  actionSets = [(HMDTrigger *)self actionSets];
  v16 = [actionSets count];

  if (v16)
  {
    v17 = MEMORY[0x277CBEB18];
    actionSets2 = [(HMDTrigger *)self actionSets];
    v40 = [v17 arrayWithCapacity:{objc_msgSend(actionSets2, "count")}];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = [(HMDTrigger *)self actionSets];
    v19 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v42;
      v22 = *MEMORY[0x277CCF1A0];
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v42 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v41 + 1) + 8 * i);
          type = [v24 type];
          v26 = [type isEqualToString:v22];

          if (v26)
          {
            name2 = [v24 dumpStateWithPrivacyLevel:level];
            [v40 addObject:name2];
          }

          else
          {
            v28 = MEMORY[0x277CCACA8];
            name2 = [v24 name];
            type2 = [v24 type];
            uuid2 = [v24 uuid];
            uUIDString2 = [uuid2 UUIDString];
            actions = [v24 actions];
            v33 = [v28 stringWithFormat:@"name: %@, type: %@, uuid: %@, numActions: %ld", name2, type2, uUIDString2, objc_msgSend(actions, "count")];
            [v40 addObject:v33];
          }
        }

        v20 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v20);
    }

    v14 = v37;
    [v37 setObject:v40 forKeyedSubscript:*MEMORY[0x277D0F048]];
  }

  v34 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)attributeDescriptions
{
  v36[9] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  name = [(HMDTrigger *)self name];
  v34 = [v3 initWithName:@"NM" value:name];
  v36[0] = v34;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  configuredName = [(HMDTrigger *)self configuredName];
  v32 = [v4 initWithName:@"CN" value:configuredName];
  v36[1] = v32;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  uuid = [(HMDTrigger *)self uuid];
  v30 = [v5 initWithName:@"UUID" value:uuid];
  v36[2] = v30;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDTrigger *)self active];
  v29 = HMFBooleanToString();
  v28 = [v6 initWithName:@"ACT" value:v29];
  v36[3] = v28;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDTrigger *)self shouldActivateOnLocalDevice];
  v27 = HMFBooleanToString();
  v26 = [v7 initWithName:@"AOLD" value:v27];
  v36[4] = v26;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  owningDevice = [(HMDTrigger *)self owningDevice];
  identifier = [owningDevice identifier];
  v10 = [v8 initWithName:@"DE" value:identifier];
  v36[5] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  owner = [(HMDTrigger *)self owner];
  userID = [owner userID];
  defaultFormatter = [MEMORY[0x277D0F8D8] defaultFormatter];
  v15 = [v11 initWithName:@"USR" value:userID options:2 formatter:defaultFormatter];
  v36[6] = v15;
  v16 = objc_alloc(MEMORY[0x277D0F778]);
  actionSets = [(HMDTrigger *)self actionSets];
  v18 = [v16 initWithName:@"AS" value:actionSets];
  v36[7] = v18;
  v19 = objc_alloc(MEMORY[0x277D0F778]);
  policy = [(HMDTrigger *)self policy];
  v21 = [v19 initWithName:@"PO" value:policy];
  v36[8] = v21;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:9];

  v22 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)dealloc
{
  msgDispatcher = [(HMDTrigger *)self msgDispatcher];
  [msgDispatcher deregisterReceiver:self];

  v4.receiver = self;
  v4.super_class = HMDTrigger;
  [(HMDTrigger *)&v4 dealloc];
}

- (id)logIdentifier
{
  if (isInternalBuild())
  {
    v3 = MEMORY[0x277CCACA8];
    name = [(HMDTrigger *)self name];
    uuid = [(HMDTrigger *)self uuid];
    uUIDString = [uuid UUIDString];
    uUIDString2 = [v3 stringWithFormat:@"%@/%@", name, uUIDString];
  }

  else
  {
    name = [(HMDTrigger *)self uuid];
    uUIDString2 = [name UUIDString];
  }

  return uUIDString2;
}

- (HMDTrigger)initWithModel:(id)model home:(id)home
{
  modelCopy = model;
  homeCopy = home;
  name = [modelCopy name];
  uuid = [modelCopy uuid];
  v10 = [(HMDTrigger *)self initWithName:name uuid:uuid];

  if (v10)
  {
    objc_storeWeak(&v10->_home, homeCopy);
    configuredName = [modelCopy configuredName];
    hm_truncatedNameString = [configuredName hm_truncatedNameString];
    configuredName = v10->_configuredName;
    v10->_configuredName = hm_truncatedNameString;

    active = [modelCopy active];
    v10->_active = [active BOOLValue];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    actionSetMappings = v10->_actionSetMappings;
    v10->_actionSetMappings = dictionary;

    mostRecentFireDate = [modelCopy mostRecentFireDate];
    mostRecentFireDate = v10->_mostRecentFireDate;
    v10->_mostRecentFireDate = mostRecentFireDate;

    owner = [modelCopy owner];
    uuid2 = [owner uuid];

    if (uuid2)
    {
      owner2 = [modelCopy owner];
      uuid3 = [owner2 uuid];
      v23 = [homeCopy userWithUUID:uuid3];
      owner = v10->_owner;
      v10->_owner = v23;
    }

    owningDevice = [modelCopy owningDevice];
    owningDevice = v10->_owningDevice;
    v10->_owningDevice = owningDevice;

    autoDelete = [modelCopy autoDelete];
    bOOLValue = [autoDelete BOOLValue];
    if (bOOLValue)
    {
      v29 = objc_alloc_init(HMDTriggerDeleteAfterExecutionPolicy);
    }

    else
    {
      v29 = 0;
    }

    objc_storeStrong(&v10->_policy, v29);
    if (bOOLValue)
    {
    }

    [(HMDTrigger *)v10 _actionSetsUpdated:modelCopy message:0];
  }

  return v10;
}

- (HMDTrigger)initWithName:(id)name uuid:(id)uuid
{
  nameCopy = name;
  uuidCopy = uuid;
  v8 = uuidCopy;
  selfCopy = 0;
  if (nameCopy && uuidCopy)
  {
    v19.receiver = self;
    v19.super_class = HMDTrigger;
    v10 = [(HMDTrigger *)&v19 init];
    if (v10)
    {
      hm_truncatedNameString = [nameCopy hm_truncatedNameString];
      v12 = [hm_truncatedNameString copy];
      name = v10->_name;
      v10->_name = v12;

      objc_storeStrong(&v10->_uuid, uuid);
      v10->_active = 0;
      array = [MEMORY[0x277CBEB18] array];
      actionSetUUIDs = v10->_actionSetUUIDs;
      v10->_actionSetUUIDs = array;

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      actionSetMappings = v10->_actionSetMappings;
      v10->_actionSetMappings = dictionary;

      v10->_lock._os_unfair_lock_opaque = 0;
    }

    self = v10;
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver
{
  v44[5] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  receiverCopy = receiver;
  objc_opt_class();
  v41 = receiverCopy;
  if (objc_opt_isKindOfClass())
  {
    v7 = receiverCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  home = [v8 home];

  v10 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v10 setRoles:{objc_msgSend(v10, "roles") | 4}];
  v40 = v10;
  v11 = [v10 copy];
  v12 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:4 remoteAccessRequired:0];
  v13 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v44[0] = v13;
  v14 = objc_opt_new();
  v44[1] = v14;
  v15 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v44[2] = v15;
  v44[3] = v11;
  v44[4] = v12;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:5];

  v16 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v43[0] = v16;
  v17 = objc_opt_new();
  v43[1] = v17;
  v18 = [HMDConfigurationMessagePolicy policyWithOperationTypes:4];
  v43[2] = v18;
  v43[3] = v11;
  v43[4] = v12;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:5];

  v19 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v42[0] = v19;
  v20 = v12;
  v21 = objc_opt_new();
  v42[1] = v21;
  v22 = [HMDConfigurationMessagePolicy policyWithOperationTypes:5];
  v42[2] = v22;
  v42[3] = v11;
  v42[4] = v12;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:5];

  name = [messageCopy name];
  LODWORD(v22) = HMFEqualObjects();

  name2 = [messageCopy name];
  if (v22)
  {
    v26 = v37;
    v27 = HMFCreateMessageBinding();
    v28 = v39;
LABEL_10:

    goto LABEL_11;
  }

  v26 = v37;
  v29 = HMFEqualObjects();

  name2 = [messageCopy name];
  v28 = v39;
  if (v29)
  {
    goto LABEL_9;
  }

  v30 = HMFEqualObjects();

  name2 = [messageCopy name];
  if (v30 || (v31 = *MEMORY[0x277CD1298], v32 = HMFEqualObjects(), name2, [messageCopy name], name2 = objc_claimAutoreleasedReturnValue(), v32))
  {
LABEL_9:
    v27 = HMFCreateMessageBinding();
    goto LABEL_10;
  }

  v35 = *MEMORY[0x277CD1290];
  v36 = HMFEqualObjects();

  if (v36)
  {
    name2 = [messageCopy name];
    goto LABEL_9;
  }

  v27 = 0;
LABEL_11:

  v33 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_604 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_604, &__block_literal_global_605);
  }

  v3 = logCategory__hmf_once_v1_606;

  return v3;
}

uint64_t __25__HMDTrigger_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v1_606 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

- (NSDictionary)bulletinContext
{
  v19[7] = *MEMORY[0x277D85DE8];
  home = [(HMDTrigger *)self home];
  v18[0] = @"home";
  contextID = [home contextID];
  v19[0] = contextID;
  v18[1] = @"trigger";
  contextID2 = [(HMDTrigger *)self contextID];
  v19[1] = contextID2;
  v18[2] = *MEMORY[0x277CCF328];
  contextSPIUniqueIdentifier = [home contextSPIUniqueIdentifier];
  uUIDString = [contextSPIUniqueIdentifier UUIDString];
  v19[2] = uUIDString;
  v18[3] = *MEMORY[0x277CCF348];
  contextSPIUniqueIdentifier2 = [(HMDTrigger *)self contextSPIUniqueIdentifier];
  uUIDString2 = [contextSPIUniqueIdentifier2 UUIDString];
  v19[3] = uUIDString2;
  v18[4] = *MEMORY[0x277CCF350];
  name = [(HMDTrigger *)self name];
  v19[4] = name;
  v18[5] = @"home.uuid.internal";
  uuid = [home uuid];
  uUIDString3 = [uuid UUIDString];
  v19[5] = uUIDString3;
  v18[6] = @"trigger.uuid.internal";
  uuid2 = [(HMDTrigger *)self uuid];
  uUIDString4 = [uuid2 UUIDString];
  v19[6] = uUIDString4;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:7];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (NSDictionary)actionContext
{
  v17[4] = *MEMORY[0x277D85DE8];
  v16[0] = @"itemType";
  v16[1] = @"identifier";
  v17[0] = @"TRIGGER";
  v17[1] = @"trigger_execute";
  v16[2] = @"title";
  v2 = HMDLocalizedStringForKey(@"CONFIRM_EXECUTE_SECURE_TRIGGER_ACTION_YES");
  v16[3] = @"shouldDismiss";
  v3 = MEMORY[0x277CBEC38];
  v17[2] = v2;
  v17[3] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];

  v14[0] = @"itemType";
  v14[1] = @"identifier";
  v15[0] = @"TRIGGER";
  v15[1] = @"trigger_doNotExecute";
  v14[2] = @"title";
  v5 = HMDLocalizedStringForKey(@"CONFIRM_EXECUTE_SECURE_TRIGGER_ACTION_NO");
  v14[3] = @"shouldDismiss";
  v15[2] = v5;
  v15[3] = v3;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];

  v11[1] = v6;
  v12[0] = @"buttonCategory";
  v12[1] = @"bulletinActionButtonDescription";
  v13[0] = &unk_286627430;
  v11[0] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (NSString)contextID
{
  uuid = [(HMDTrigger *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (NSString)urlString
{
  v2 = *MEMORY[0x277CCF2B8];
  uuid = [(HMDTrigger *)self uuid];
  v4 = hm_assistantIdentifier();

  return v4;
}

@end