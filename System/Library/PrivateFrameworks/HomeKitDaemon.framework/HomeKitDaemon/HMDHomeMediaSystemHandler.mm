@interface HMDHomeMediaSystemHandler
+ (id)logCategory;
- (BOOL)supportsDeviceWithCapabilities:(id)capabilities;
- (HMDHome)home;
- (HMDHomeMediaSystemHandler)initWithCoder:(id)coder;
- (HMDHomeMediaSystemHandler)initWithMediaSystems:(id)systems;
- (HMDHomeMediaSystemHandlerDataSource)dataSource;
- (HMDHomeMediaSystemHandlerDelegate)delegate;
- (NSArray)mediaSystems;
- (id)_currentMediaSystemIfPrimary;
- (id)attributeDescriptions;
- (id)backingStoreObjectsForVersion:(int64_t)version;
- (id)destinationForMediaSystem:(id)system;
- (id)eventForwarder;
- (id)eventStoreReadHandle;
- (id)filteredMediaSystems;
- (id)localAndRemoteSubscriptionProvider;
- (id)logIdentifier;
- (id)mediaSystemData:(id)data withIdentifier:(id)identifier;
- (id)mediaSystemForAccessory:(id)accessory;
- (id)mediaSystemWithUUID:(id)d;
- (id)processedMediaSystemBuilderMessageFor:(id)for;
- (void)_handleAddMediaSystemModel:(id)model message:(id)message;
- (void)_handleRemoveMediaSystemModel:(id)model message:(id)message;
- (void)_handleUpdateMediaSystemModel:(id)model message:(id)message;
- (void)_userAssistantAccessControlDidUpdate:(id)update accessories:(id)accessories;
- (void)addMediaSystem:(id)system;
- (void)addMediaSystemWithGroupIdentifier:(id)identifier usingData:(id)data;
- (void)addMediaSystemsWithIdentifiers:(id)identifiers usingData:(id)data;
- (void)configure:(id)configure delegate:(id)delegate dataSource:(id)source queue:(id)queue messageDispatcher:(id)dispatcher notificationCenter:(id)center;
- (void)confirmPrimaryResidentIfFirstMediaSystem;
- (void)encodeWithCoder:(id)coder;
- (void)handleRemovedMediaSystem:(id)system;
- (void)mergeMediaSystemData:(id)data;
- (void)messageHandlerAddMediaSystem:(id)system configuredName:(id)name leftUUID:(id)d leftAccessoryUUID:(id)iD rightUUID:(id)uID rightAccessoryUUID:(id)uUID builderSession:(id)session completion:(id)self0;
- (void)messageHandlerRemoveMediaSystem:(id)system builderSession:(id)session message:(id)message;
- (void)messageHandlerUpdateMediaSystem:(id)system configuredName:(id)name leftUUID:(id)d leftAccessoryUUID:(id)iD rightUUID:(id)uID rightAccessoryUUID:(id)uUID builderSession:(id)session completion:(id)self0;
- (void)notifyOfRemovedMediaSystem:(id)system;
- (void)removeMediaSystem:(id)system;
- (void)routeMediaSystemWithMessage:(id)message;
- (void)subscribeToSettingsForNewlyAddedMediaSystem:(id)system;
- (void)unsubscribeToSettingsForMediaSystem:(id)system;
- (void)updateMediaSystem:(id)system;
@end

@implementation HMDHomeMediaSystemHandler

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (HMDHomeMediaSystemHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMDHomeMediaSystemHandlerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)destinationForMediaSystem:(id)system
{
  systemCopy = system;
  dataSource = [(HMDHomeMediaSystemHandler *)self dataSource];
  v6 = [dataSource destinationForMediaSystem:systemCopy];

  return v6;
}

- (void)_userAssistantAccessControlDidUpdate:(id)update accessories:(id)accessories
{
  v57 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  accessoriesCopy = accessories;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  _currentMediaSystemIfPrimary = [(HMDHomeMediaSystemHandler *)self _currentMediaSystemIfPrimary];
  v10 = _currentMediaSystemIfPrimary;
  if (_currentMediaSystemIfPrimary)
  {
    selfCopy = self;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    accessories = [_currentMediaSystemIfPrimary accessories];
    v12 = [accessories countByEnumeratingWithState:&v43 objects:v56 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v44;
      v16 = 1;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v44 != v15)
          {
            objc_enumerationMutation(accessories);
          }

          v18 = [accessoriesCopy containsObject:*(*(&v43 + 1) + 8 * i)];
          v14 |= v18;
          v16 &= v18;
        }

        v13 = [accessories countByEnumeratingWithState:&v43 objects:v56 count:16];
      }

      while (v13);
    }

    else
    {
      v14 = 0;
      v16 = 1;
    }

    v19 = objc_autoreleasePoolPush();
    self = selfCopy;
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = HMFGetLogIdentifier();
      [v10 accessories];
      v23 = v37 = v10;
      *buf = 138544386;
      v49 = v22;
      v50 = 1024;
      *v51 = v14 & 1;
      *&v51[4] = 1024;
      *&v51[6] = v16;
      v52 = 2112;
      v53 = v23;
      v54 = 2112;
      v55 = accessoriesCopy;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEBUG, "%{public}@accessories in media system somePresent:%d allPresent:%d, ms acc:%@, incoming acc: %@", buf, 0x2Cu);

      v10 = v37;
      self = selfCopy;
    }

    objc_autoreleasePoolPop(v19);
    if (!(v16 & 1 | ((v14 & 1) == 0)))
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      accessories2 = [v10 accessories];
      v25 = [accessories2 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v40;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v40 != v27)
            {
              objc_enumerationMutation(accessories2);
            }

            v29 = *(*(&v39 + 1) + 8 * j);
            if ([accessoriesCopy containsObject:v29])
            {
              [v8 addObject:v29];
            }
          }

          v26 = [accessories2 countByEnumeratingWithState:&v39 objects:v47 count:16];
        }

        while (v26);
      }
    }
  }

  if ([v8 count])
  {
    v30 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543618;
      v49 = v33;
      v50 = 2112;
      *v51 = v8;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@audit discovered accessories added by old controller, will remove %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    delegate = [(HMDHomeMediaSystemHandler *)selfCopy2 delegate];
    v35 = [v8 copy];
    [delegate mediaSystemController:selfCopy2 removeAccessories:v35 fromAssistantAccessControl:updateCopy];
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (id)_currentMediaSystemIfPrimary
{
  v16 = *MEMORY[0x277D85DE8];
  if (+[HMDDeviceCapabilities isAppleMediaAccessory])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    mediaSystems = [(HMDHomeMediaSystemHandler *)self mediaSystems];
    v4 = [mediaSystems countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = *v12;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(mediaSystems);
          }

          v7 = *(*(&v11 + 1) + 8 * i);
          targetAccessory = [v7 targetAccessory];
          if ([targetAccessory isCurrentAccessory])
          {
            v4 = v7;

            goto LABEL_13;
          }
        }

        v4 = [mediaSystems countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v4 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  mediaSystems = [(HMDHomeMediaSystemHandler *)self mediaSystems];
  [coderCopy encodeObject:mediaSystems forKey:*MEMORY[0x277CD2480]];
}

- (HMDHomeMediaSystemHandler)initWithCoder:(id)coder
{
  v26[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = MEMORY[0x277CBEB98];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v7 = [v5 setWithArray:v6];

  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:*MEMORY[0x277CD2480]];
  v9 = [coderCopy decodeObjectOfClasses:v7 forKey:@"ms.homepod"];
  v10 = [coderCopy decodeObjectOfClasses:v7 forKey:@"ms.homepod6_1"];
  v11 = v10;
  if (v8)
  {
    v12 = 0;
  }

  else
  {
    v12 = v9 == 0;
  }

  if (!v12 || v10 != 0)
  {
    if (v8)
    {
      v14 = v8;
      if (!v9)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v14 = MEMORY[0x277CBEBF8];
      if (!v9)
      {
LABEL_11:
        if (v11)
        {
          v16 = [v14 arrayByAddingObjectsFromArray:v11];

          v14 = v16;
        }

        goto LABEL_16;
      }
    }

    v15 = [v14 arrayByAddingObjectsFromArray:v9];

    v14 = v15;
    goto LABEL_11;
  }

  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    v24 = 138543362;
    v25 = v20;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Decoded home media system handler with no media systems", &v24, 0xCu);
  }

  objc_autoreleasePoolPop(v17);
  v14 = MEMORY[0x277CBEBF8];
LABEL_16:
  v21 = [(HMDHomeMediaSystemHandler *)self initWithMediaSystems:v14];

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)supportsDeviceWithCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  mediaSystems = [(HMDHomeMediaSystemHandler *)self mediaSystems];
  v6 = [mediaSystems count];

  if (v6)
  {
    supportsWholeHouseAudio = [capabilitiesCopy supportsWholeHouseAudio];
  }

  else
  {
    supportsWholeHouseAudio = 1;
  }

  return supportsWholeHouseAudio;
}

- (id)eventStoreReadHandle
{
  home = [(HMDHomeMediaSystemHandler *)self home];
  homeManager = [home homeManager];

  eventStoreReadHandle = [homeManager eventStoreReadHandle];

  return eventStoreReadHandle;
}

- (id)eventForwarder
{
  home = [(HMDHomeMediaSystemHandler *)self home];
  homeManager = [home homeManager];

  eventForwarder = [homeManager eventForwarder];

  return eventForwarder;
}

- (id)localAndRemoteSubscriptionProvider
{
  home = [(HMDHomeMediaSystemHandler *)self home];
  homeManager = [home homeManager];

  localAndRemoteSubscriptionProvider = [homeManager localAndRemoteSubscriptionProvider];

  return localAndRemoteSubscriptionProvider;
}

- (id)backingStoreObjectsForVersion:(int64_t)version
{
  v20 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  mediaSystems = [(HMDHomeMediaSystemHandler *)self mediaSystems];
  v7 = [mediaSystems countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(mediaSystems);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) backingStoreObjectsForVersion:version];
        [array addObjectsFromArray:v11];
      }

      v8 = [mediaSystems countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [array copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)_handleUpdateMediaSystemModel:(id)model message:(id)message
{
  v27 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  if (isFeatureHomeTheaterQFAEnabledForTests && ![isFeatureHomeTheaterQFAEnabledForTests BOOLValue])
  {
    uuid = [modelCopy uuid];
    v13 = [(HMDHomeMediaSystemHandler *)self mediaSystemWithUUID:uuid];

    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      uuid2 = [modelCopy uuid];
      uUIDString = [uuid2 UUIDString];
      v21 = 138543874;
      v22 = v17;
      v23 = 2112;
      v24 = uUIDString;
      v25 = 2112;
      v26 = v13;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Handling update of media system %@, system: %@", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    [v13 transactionObjectUpdated:0 newValues:modelCopy message:messageCopy];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Skipping update model due to Home Theater QFA enabled", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleRemoveMediaSystemModel:(id)model message:(id)message
{
  v38 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  if (isFeatureHomeTheaterQFAEnabledForTests && ![isFeatureHomeTheaterQFAEnabledForTests BOOLValue])
  {
    uuid = [modelCopy uuid];
    v12 = [(HMDHomeMediaSystemHandler *)self mediaSystemWithUUID:uuid];

    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      uuid2 = [modelCopy uuid];
      uUIDString = [uuid2 UUIDString];
      identifier = [messageCopy identifier];
      v30 = 138544130;
      v31 = v17;
      v32 = 2112;
      v33 = uUIDString;
      v34 = 2112;
      v35 = identifier;
      v36 = 2112;
      v37 = v12;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Handling transaction removal of media system model uuid: %@ message identifier: %@ media system: %@", &v30, 0x2Au);
    }

    objc_autoreleasePoolPop(v14);
    if (v12)
    {
      [(HMDHomeMediaSystemHandler *)selfCopy removeMediaSystem:v12];
      transactionResult = [messageCopy transactionResult];
      [transactionResult markChanged];
      [transactionResult markSaveToAssistant];
      [messageCopy respondWithSuccess];
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = selfCopy;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        uuid3 = [modelCopy uuid];
        uUIDString2 = [uuid3 UUIDString];
        mediaSystems = [(HMDHomeMediaSystemHandler *)v23 mediaSystems];
        v30 = 138543874;
        v31 = v25;
        v32 = 2112;
        v33 = uUIDString2;
        v34 = 2112;
        v35 = mediaSystems;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Cannot find media system with UUID %@, current media systems: %@", &v30, 0x20u);
      }

      objc_autoreleasePoolPop(v22);
      transactionResult = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      [messageCopy respondWithError:transactionResult];
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Skipping remove model due to Home Theater QFA enabled", &v30, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [messageCopy respondWithError:v12];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)confirmPrimaryResidentIfFirstMediaSystem
{
  v19 = *MEMORY[0x277D85DE8];
  mediaSystems = [(HMDHomeMediaSystemHandler *)self mediaSystems];
  v4 = [mediaSystems count];

  if (v4 == 1)
  {
    home = [(HMDHomeMediaSystemHandler *)self home];
    v6 = home;
    if (home)
    {
      if ([home isCurrentDevicePrimaryResident])
      {
        v7 = objc_autoreleasePoolPush();
        selfCopy = self;
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = HMFGetLogIdentifier();
          v17 = 138543362;
          v18 = v10;
          _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Confirming primary resident due to first added media system", &v17, 0xCu);
        }

        objc_autoreleasePoolPop(v7);
        residentDeviceManager = [v6 residentDeviceManager];
        [residentDeviceManager confirmWithCompletionHandler:0];
      }
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v17 = 138543362;
        v18 = v15;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to confirm primary resident due to no home", &v17, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)subscribeToSettingsForNewlyAddedMediaSystem:(id)system
{
  v16 = *MEMORY[0x277D85DE8];
  systemCopy = system;
  stereoPairSettingsController = [(HMDHomeMediaSystemHandler *)self stereoPairSettingsController];

  if (stereoPairSettingsController)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = systemCopy;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Stereo pair settings controller add media system: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    stereoPairSettingsController2 = [(HMDHomeMediaSystemHandler *)selfCopy stereoPairSettingsController];
    [stereoPairSettingsController2 subscribeToAddedMediaSystemIfPrimaryResident:systemCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addMediaSystem:(id)system
{
  v17 = *MEMORY[0x277D85DE8];
  systemCopy = system;
  [systemCopy setDataSource:self];
  messageDispatcher = [(HMDHomeMediaSystemHandler *)self messageDispatcher];
  [systemCopy configureWithMessageDispatcher:messageDispatcher];

  [(HMDHomeMediaSystemHandler *)self updateMediaSystem:systemCopy];
  [(HMDHomeMediaSystemHandler *)self subscribeToSettingsForNewlyAddedMediaSystem:systemCopy];
  [(HMDHomeMediaSystemHandler *)self confirmPrimaryResidentIfFirstMediaSystem];
  logger = self->_logger;
  if (os_signpost_enabled(logger))
  {
    v7 = logger;
    uuid = [systemCopy uuid];
    *buf = 138412290;
    v16 = uuid;
    _os_signpost_emit_with_name_impl(&dword_229538000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AddedMediaSystem", "mediaSystemUUID=%{signpost.description:attribute}@ ", buf, 0xCu);
  }

  notificationCenter = [(HMDHomeMediaSystemHandler *)self notificationCenter];
  delegate = [(HMDHomeMediaSystemHandler *)self delegate];
  v13 = @"HMDMediaSystemNotificationKey";
  v14 = systemCopy;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [notificationCenter postNotificationName:@"HMDMediaSystemAddedNotification" object:delegate userInfo:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleAddMediaSystemModel:(id)model message:(id)message
{
  v36 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  if (isFeatureHomeTheaterQFAEnabledForTests && ![isFeatureHomeTheaterQFAEnabledForTests BOOLValue])
  {
    home = [(HMDHomeMediaSystemHandler *)self home];
    v13 = [[HMDMediaSystem alloc] initWithMediaSystemModel:modelCopy home:home];
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      uuid = [modelCopy uuid];
      uUIDString = [uuid UUIDString];
      *buf = 138543874;
      v31 = v17;
      v32 = 2112;
      v33 = uUIDString;
      v34 = 2112;
      v35 = v13;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Handling add of media system %@, system: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    if (v13)
    {
      [(HMDHomeMediaSystemHandler *)selfCopy addMediaSystem:v13];
      serialize = [(HMDMediaSystem *)v13 serialize];
      v29 = serialize;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      [messageCopy respondWithPayload:v21];

      transactionResult = [messageCopy transactionResult];
      [transactionResult markChanged];
      [transactionResult markSaveToAssistant];
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
        v31 = v26;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Cannot create media system object", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
      transactionResult = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      [messageCopy respondWithError:transactionResult];
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Skipping add model due to Home Theater QFA enabled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)addMediaSystemWithGroupIdentifier:(id)identifier usingData:(id)data
{
  v30 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dataCopy = data;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v24 = 138543618;
    v25 = v11;
    v26 = 2112;
    v27 = identifierCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Adding media system with identifier: %@", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDHomeMediaSystemHandler *)selfCopy mediaSystemData:dataCopy withIdentifier:identifierCopy];
  if (v12)
  {
    home = [(HMDHomeMediaSystemHandler *)selfCopy home];
    if (home)
    {
      v14 = [[HMDMediaSystem alloc] initWithMediaSystemData:v12 home:home];
      [(HMDHomeMediaSystemHandler *)selfCopy addMediaSystem:v14];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = selfCopy;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v24 = 138543618;
        v25 = v22;
        v26 = 2112;
        v27 = dataCopy;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to add media system using data: %@ due to no home", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v24 = 138543874;
      v25 = v18;
      v26 = 2112;
      v27 = identifierCopy;
      v28 = 2112;
      v29 = dataCopy;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to get data for media system to add with identifier: %@ data: %@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)addMediaSystemsWithIdentifiers:(id)identifiers usingData:(id)data
{
  dataCopy = data;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__HMDHomeMediaSystemHandler_addMediaSystemsWithIdentifiers_usingData___block_invoke;
  v8[3] = &unk_278677FA0;
  v8[4] = self;
  v9 = dataCopy;
  v7 = dataCopy;
  [identifiers na_each:v8];
}

- (id)mediaSystemData:(id)data withIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__HMDHomeMediaSystemHandler_mediaSystemData_withIdentifier___block_invoke;
  v9[3] = &unk_278675480;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [data na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __60__HMDHomeMediaSystemHandler_mediaSystemData_withIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (void)mergeMediaSystemData:(id)data
{
  dataCopy = data;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__67633;
  v15 = __Block_byref_object_dispose__67634;
  v5 = [(HMDHomeMediaSystemHandler *)self identifiersInMediaSystemData:dataCopy];
  v16 = [v5 mutableCopy];

  mediaSystems = [(HMDHomeMediaSystemHandler *)self mediaSystems];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__HMDHomeMediaSystemHandler_mergeMediaSystemData___block_invoke;
  v8[3] = &unk_278675438;
  v10 = &v11;
  v8[4] = self;
  v7 = dataCopy;
  v9 = v7;
  [mediaSystems na_each:v8];

  [(HMDHomeMediaSystemHandler *)self addMediaSystemsWithIdentifiers:v12[5] usingData:v7];
  _Block_object_dispose(&v11, 8);
}

void __50__HMDHomeMediaSystemHandler_mergeMediaSystemData___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v4 = a2;
  v5 = [v4 uuid];
  [v3 removeObject:v5];

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = [v4 uuid];
  v9 = [v6 mediaSystemData:v7 withIdentifier:v8];

  if (v9)
  {
    [v4 mergeMediaSystemData:v9];
  }

  else
  {
    [*(a1 + 32) removeMediaSystem:v4];
  }
}

- (void)messageHandlerRemoveMediaSystem:(id)system builderSession:(id)session message:(id)message
{
  v32 = *MEMORY[0x277D85DE8];
  systemCopy = system;
  sessionCopy = session;
  messageCopy = message;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v29 = v14;
    v30 = 2112;
    v31 = sessionCopy;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Received remove media system message for session ID %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [(HMDHomeMediaSystemHandler *)selfCopy mediaSystemWithUUID:systemCopy];
  v16 = v15;
  if (v15)
  {
    modelForMediaSystem = [v15 modelForMediaSystem];
    [modelForMediaSystem setObjectChangeType:3];
    dataSource = [(HMDHomeMediaSystemHandler *)selfCopy dataSource];
    backingStore = [dataSource backingStore];
    v20 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v21 = [backingStore transaction:@"Remove media system" options:v20];

    [v21 add:modelForMediaSystem withMessage:messageCopy];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __84__HMDHomeMediaSystemHandler_messageHandlerRemoveMediaSystem_builderSession_message___block_invoke;
    v27[3] = &unk_27868A250;
    v27[4] = selfCopy;
    [v21 run:v27];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v25;
      v30 = 2112;
      v31 = sessionCopy;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@No media system for session ID found %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    modelForMediaSystem = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:modelForMediaSystem];
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __84__HMDHomeMediaSystemHandler_messageHandlerRemoveMediaSystem_builderSession_message___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Remove media system transaction run completed with error: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)messageHandlerUpdateMediaSystem:(id)system configuredName:(id)name leftUUID:(id)d leftAccessoryUUID:(id)iD rightUUID:(id)uID rightAccessoryUUID:(id)uUID builderSession:(id)session completion:(id)self0
{
  v78 = *MEMORY[0x277D85DE8];
  systemCopy = system;
  nameCopy = name;
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  uUIDCopy = uUID;
  sessionCopy = session;
  completionCopy = completion;
  v21 = objc_autoreleasePoolPush();
  selfCopy = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543618;
    v69 = v24;
    v70 = 2112;
    v71 = sessionCopy;
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Received update media system message for session ID %@", buf, 0x16u);
  }

  v61 = sessionCopy;

  objc_autoreleasePoolPop(v21);
  v25 = [(HMDHomeMediaSystemHandler *)selfCopy mediaSystemWithUUID:systemCopy];
  if (v25)
  {
    dataSource = [(HMDHomeMediaSystemHandler *)selfCopy dataSource];
    v27 = iDCopy;
    v28 = [dataSource mediaSystemController:selfCopy accessoryForUUID:iDCopy];
    v29 = [dataSource mediaSystemController:selfCopy accessoryForUUID:uUIDCopy];
    v58 = v28;
    v59 = nameCopy;
    v60 = v29;
    if (!v28 || !v29)
    {
      v43 = objc_autoreleasePoolPush();
      v44 = selfCopy;
      v45 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = HMFGetLogIdentifier();
        [(HMDHomeMediaSystemHandler *)v44 delegate];
        v48 = v47 = dCopy;
        *buf = 138544130;
        v69 = v46;
        v70 = 2112;
        v71 = v48;
        v72 = 2112;
        v73 = iDCopy;
        v74 = 2112;
        v75 = uUIDCopy;
        _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@Accessory cannot be found in home %@ for accessory IDs %@ %@", buf, 0x2Au);

        dCopy = v47;
        v27 = iDCopy;
      }

      objc_autoreleasePoolPop(v43);
      v49 = MEMORY[0x277CCA9B8];
      modelForMediaSystem = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2021];
      v50 = [v49 hmErrorWithCode:2 description:0 reason:0 suggestion:0 underlyingError:modelForMediaSystem];
      completionCopy[2](completionCopy, 0, v50);

      v31 = uIDCopy;
      goto LABEL_19;
    }

    v57 = dCopy;
    accessories = [v25 accessories];
    v31 = uIDCopy;
    if ([accessories containsObject:v28])
    {
      accessories2 = [v25 accessories];
      v33 = [accessories2 containsObject:v60];

      if (v33)
      {
        modelForMediaSystem = [v25 modelForMediaSystem];
        [modelForMediaSystem setObjectChangeType:2];
        [modelForMediaSystem setConfiguredName:v59];
        v35 = [MEMORY[0x277CD1BF8] encodeComponentDataWithLeftComponentUUID:v57 leftAccessoryUUID:v27 rightComponentUUID:uIDCopy rightAccessoryUUID:uUIDCopy];
        [modelForMediaSystem setMediaSystemComponents:v35];

        backingStore = [dataSource backingStore];
        v37 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
        v38 = [backingStore transaction:@"Update media system" options:v37];

        dCopy = v57;
        [v38 add:modelForMediaSystem];
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __158__HMDHomeMediaSystemHandler_messageHandlerUpdateMediaSystem_configuredName_leftUUID_leftAccessoryUUID_rightUUID_rightAccessoryUUID_builderSession_completion___block_invoke;
        v65[3] = &unk_278689358;
        v65[4] = selfCopy;
        v66 = systemCopy;
        v67 = completionCopy;
        [v38 run:v65];

LABEL_19:
        nameCopy = v59;
        goto LABEL_20;
      }
    }

    else
    {
    }

    v51 = objc_autoreleasePoolPush();
    v52 = selfCopy;
    v53 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = HMFGetLogIdentifier();
      accessories3 = [v25 accessories];
      *buf = 138544386;
      v69 = v54;
      v70 = 2112;
      v71 = accessories3;
      v72 = 2112;
      v73 = v25;
      v74 = 2112;
      v75 = v27;
      v76 = 2112;
      v77 = uUIDCopy;
      _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_ERROR, "%{public}@Accessories %@ in media system %@ cannot be changed - accessory IDs %@ %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v51);
    modelForMediaSystem = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    completionCopy[2](completionCopy, 0, modelForMediaSystem);
    dCopy = v57;
    goto LABEL_19;
  }

  v39 = objc_autoreleasePoolPush();
  v40 = selfCopy;
  v41 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    v42 = HMFGetLogIdentifier();
    *buf = 138543618;
    v69 = v42;
    v70 = 2112;
    v71 = systemCopy;
    _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Media system with uuid %@ not found", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v39);
  dataSource = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  completionCopy[2](completionCopy, 0, dataSource);
  v27 = iDCopy;
  v31 = uIDCopy;
LABEL_20:

  v56 = *MEMORY[0x277D85DE8];
}

void __158__HMDHomeMediaSystemHandler_messageHandlerUpdateMediaSystem_configuredName_leftUUID_leftAccessoryUUID_rightUUID_rightAccessoryUUID_builderSession_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    v3 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) mediaSystemWithUUID:*(a1 + 40)];
    v3 = [v4 serialize];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)messageHandlerAddMediaSystem:(id)system configuredName:(id)name leftUUID:(id)d leftAccessoryUUID:(id)iD rightUUID:(id)uID rightAccessoryUUID:(id)uUID builderSession:(id)session completion:(id)self0
{
  v153 = *MEMORY[0x277D85DE8];
  systemCopy = system;
  nameCopy = name;
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  uUIDCopy = uUID;
  sessionCopy = session;
  completionCopy = completion;
  v21 = objc_autoreleasePoolPush();
  selfCopy = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543618;
    v146 = v24;
    v147 = 2112;
    v148 = sessionCopy;
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Received add media system message for session ID %@", buf, 0x16u);
  }

  v121 = sessionCopy;

  objc_autoreleasePoolPop(v21);
  v25 = [(HMDHomeMediaSystemHandler *)selfCopy mediaSystemWithUUID:systemCopy];

  if (!v25)
  {
    dataSource = [(HMDHomeMediaSystemHandler *)selfCopy dataSource];
    home = [(HMDHomeMediaSystemHandler *)selfCopy home];
    homeManager = [home homeManager];

    v36 = [dataSource mediaSystemController:selfCopy accessoryForUUID:iDCopy];
    v117 = dataSource;
    v37 = dataSource;
    v38 = v36;
    v29 = uUIDCopy;
    v39 = [v37 mediaSystemController:selfCopy accessoryForUUID:uUIDCopy];
    v118 = systemCopy;
    v119 = v39;
    if (v38 && (v40 = v39) != 0)
    {
      v115 = homeManager;
      uuid = [v38 uuid];
      uuid2 = [v40 uuid];
      v43 = [uuid hmf_isEqualToUUID:uuid2];

      if (!v43)
      {
        v114 = v38;
        setupActivity5 = [MEMORY[0x277CBEB98] setWithObjects:{iDCopy, uUIDCopy, 0}];
        v131 = 0u;
        v132 = 0u;
        v133 = 0u;
        v134 = 0u;
        mediaSystems = [(HMDHomeMediaSystemHandler *)selfCopy mediaSystems];
        v113 = iDCopy;
        homeManager = v115;
        v64 = v119;
        v109 = [mediaSystems countByEnumeratingWithState:&v131 objects:v140 count:16];
        if (v109)
        {
          v65 = *v132;
          v111 = mediaSystems;
          v112 = dCopy;
          v107 = *v132;
          do
          {
            v66 = 0;
            do
            {
              if (*v132 != v65)
              {
                v67 = v66;
                objc_enumerationMutation(mediaSystems);
                v66 = v67;
              }

              v110 = v66;
              v68 = *(*(&v131 + 1) + 8 * v66);
              v127 = 0u;
              v128 = 0u;
              v129 = 0u;
              v130 = 0u;
              v108 = v68;
              components = [v68 components];
              v70 = [components countByEnumeratingWithState:&v127 objects:v139 count:16];
              if (v70)
              {
                v71 = v70;
                v72 = *v128;
                while (2)
                {
                  for (i = 0; i != v71; ++i)
                  {
                    if (*v128 != v72)
                    {
                      objc_enumerationMutation(components);
                    }

                    accessory = [*(*(&v127 + 1) + 8 * i) accessory];
                    uuid3 = [accessory uuid];
                    v76 = [setupActivity5 containsObject:uuid3];

                    if (v76)
                    {
                      v84 = objc_autoreleasePoolPush();
                      v85 = selfCopy;
                      v86 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
                      {
                        v87 = HMFGetLogIdentifier();
                        *buf = 138543874;
                        v146 = v87;
                        v147 = 2112;
                        v148 = accessory;
                        v149 = 2112;
                        v150 = v108;
                        _os_log_impl(&dword_229538000, v86, OS_LOG_TYPE_ERROR, "%{public}@Accessory %@ already used in another media system %@", buf, 0x20u);
                      }

                      objc_autoreleasePoolPop(v84);
                      setupActivity = [v115 setupActivity];
                      v137[0] = @"accessory.uuid";
                      uuid4 = [accessory uuid];
                      v90 = HMDailyRotatedUUID();
                      v91 = v90;
                      if (v90)
                      {
                        v92 = v90;
                      }

                      else
                      {
                        v92 = @"no uuid";
                      }

                      v137[1] = @"error.code";
                      v138[0] = v92;
                      v93 = [MEMORY[0x277CCABB0] numberWithInteger:2023];
                      v138[1] = v93;
                      v94 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v138 forKeys:v137 count:2];

                      homeManager = v115;
                      setupActivity2 = [v115 setupActivity];
                      [setupActivity2 markWithReason:@"HMDHomeMediaSystemHandler.addedMediaSystem.failure"];

                      v96 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2023];
                      completionCopy[2](completionCopy, 0, v96);

                      v32 = completionCopy;
                      v82 = v111;
                      dCopy = v112;
                      v29 = uUIDCopy;
                      v31 = v117;
                      v38 = v114;
                      goto LABEL_42;
                    }
                  }

                  v71 = [components countByEnumeratingWithState:&v127 objects:v139 count:16];
                  if (v71)
                  {
                    continue;
                  }

                  break;
                }
              }

              v66 = v110 + 1;
              mediaSystems = v111;
              dCopy = v112;
              v38 = v114;
              homeManager = v115;
              v64 = v119;
              v65 = v107;
            }

            while (v110 + 1 != v109);
            v29 = uUIDCopy;
            v109 = [v111 countByEnumeratingWithState:&v131 objects:v140 count:16];
          }

          while (v109);
        }

        supportedStereoPairVersions = [v38 supportedStereoPairVersions];
        if (([v64 supportedStereoPairVersions] & supportedStereoPairVersions) != 0)
        {
          v78 = [HMDMediaSystemModel alloc];
          parentUUID = [(HMDHomeMediaSystemHandler *)selfCopy parentUUID];
          v80 = [(HMDBackingStoreModelObject *)v78 initWithObjectChangeType:1 uuid:v118 parentUUID:parentUUID];

          v31 = v117;
          if (nameCopy)
          {
            [(HMDMediaSystemModel *)v80 setConfiguredName:?];
          }

          v81 = [MEMORY[0x277CD1BF8] encodeComponentDataWithLeftComponentUUID:dCopy leftAccessoryUUID:v113 rightComponentUUID:uIDCopy rightAccessoryUUID:v29];
          [(HMDMediaSystemModel *)v80 setMediaSystemComponents:v81];

          backingStore = [v117 backingStore];
          +[HMDBackingStoreTransactionOptions defaultXPCOptions];
          v83 = v82 = v80;
          components = [backingStore transaction:@"Add media system" options:v83];

          [components add:v82];
          v124[0] = MEMORY[0x277D85DD0];
          v124[1] = 3221225472;
          v124[2] = __155__HMDHomeMediaSystemHandler_messageHandlerAddMediaSystem_configuredName_leftUUID_leftAccessoryUUID_rightUUID_rightAccessoryUUID_builderSession_completion___block_invoke;
          v124[3] = &unk_278689358;
          v124[4] = selfCopy;
          v125 = v118;
          v32 = completionCopy;
          v126 = completionCopy;
          [components run:v124];
        }

        else
        {
          v98 = objc_autoreleasePoolPush();
          v99 = selfCopy;
          v100 = HMFGetOSLogHandle();
          v31 = v117;
          if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
          {
            v101 = HMFGetLogIdentifier();
            *buf = 138543874;
            v146 = v101;
            v147 = 2112;
            v148 = v38;
            v149 = 2112;
            v150 = v119;
            _os_log_impl(&dword_229538000, v100, OS_LOG_TYPE_ERROR, "%{public}@There is a mismatch in the supported stereo pair versions %@, %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v98);
          setupActivity3 = [homeManager setupActivity];
          v135[0] = @"error.code";
          v103 = [MEMORY[0x277CCABB0] numberWithInteger:3];
          v135[1] = @"error.code.private";
          v136[0] = v103;
          v38 = v114;
          v104 = [MEMORY[0x277CCABB0] numberWithInteger:2024];
          v136[1] = v104;
          v105 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v136 forKeys:v135 count:2];

          v106 = MEMORY[0x277CCA9B8];
          v82 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2024];
          components = [v106 hmErrorWithCode:3 description:0 reason:0 suggestion:0 underlyingError:v82];
          v32 = completionCopy;
          completionCopy[2](completionCopy, 0, components);
        }

LABEL_42:

        iDCopy = v113;
        goto LABEL_43;
      }

      v44 = objc_autoreleasePoolPush();
      v45 = selfCopy;
      v46 = HMFGetOSLogHandle();
      v31 = v117;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = HMFGetLogIdentifier();
        *buf = 138543874;
        v146 = v47;
        v147 = 2112;
        v148 = iDCopy;
        v149 = 2112;
        v150 = v29;
        _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_ERROR, "%{public}@Accessories in media system are not unique %@ - %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v44);
      v48 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2022];
      v32 = completionCopy;
      completionCopy[2](completionCopy, 0, v48);

      homeManager = v115;
      setupActivity4 = [v115 setupActivity];
      v141 = @"error.code";
      v50 = [MEMORY[0x277CCABB0] numberWithInteger:2022];
      v142 = v50;
      v51 = MEMORY[0x277CBEAC0];
      v52 = &v142;
      v53 = &v141;
    }

    else
    {
      v54 = objc_autoreleasePoolPush();
      v55 = selfCopy;
      v56 = HMFGetOSLogHandle();
      v31 = v117;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v57 = v38;
        v59 = v58 = homeManager;
        *buf = 138544130;
        v146 = v59;
        v147 = 2112;
        v148 = v117;
        v149 = 2112;
        v150 = iDCopy;
        v151 = 2112;
        v152 = v29;
        _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_ERROR, "%{public}@Accessory cannot be found in home %@ for accessory IDs %@ %@", buf, 0x2Au);

        homeManager = v58;
        v38 = v57;
      }

      objc_autoreleasePoolPop(v54);
      v60 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2021];
      v32 = completionCopy;
      completionCopy[2](completionCopy, 0, v60);

      setupActivity4 = [homeManager setupActivity];
      v143 = @"error.code";
      v50 = [MEMORY[0x277CCABB0] numberWithInteger:2021];
      v144 = v50;
      v51 = MEMORY[0x277CBEAC0];
      v52 = &v144;
      v53 = &v143;
    }

    v61 = [v51 dictionaryWithObjects:v52 forKeys:v53 count:1];

    setupActivity5 = [homeManager setupActivity];
    [setupActivity5 markWithReason:@"HMDHomeMediaSystemHandler.addedMediaSystem.failure"];
LABEL_43:

    systemCopy = v118;
    goto LABEL_44;
  }

  v26 = objc_autoreleasePoolPush();
  v27 = selfCopy;
  v28 = HMFGetOSLogHandle();
  v29 = uUIDCopy;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543618;
    v146 = v30;
    v147 = 2112;
    v148 = systemCopy;
    _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Media system with uuid %@ already exists", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v26);
  v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:1];
  v32 = completionCopy;
  completionCopy[2](completionCopy, 0, v31);
LABEL_44:

  v97 = *MEMORY[0x277D85DE8];
}

void __155__HMDHomeMediaSystemHandler_messageHandlerAddMediaSystem_configuredName_leftUUID_leftAccessoryUUID_rightUUID_rightAccessoryUUID_builderSession_completion___block_invoke(uint64_t a1, void *a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 home];
  v6 = [v5 homeManager];

  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v8 = [*(a1 + 32) mediaSystemWithUUID:*(a1 + 40)];
    v7 = [v8 serialize];
  }

  v9 = [v6 setupActivity];
  v16[0] = @"error.code";
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "code")}];
  v16[1] = @"domain";
  v17[0] = v10;
  v11 = [v4 domain];
  v12 = v11;
  v13 = @"no domain";
  if (v11)
  {
    v13 = v11;
  }

  v17[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  (*(*(a1 + 48) + 16))();
  v15 = *MEMORY[0x277D85DE8];
}

- (void)routeMediaSystemWithMessage:(id)message
{
  messageCopy = message;
  messageHandler = [(HMDHomeMediaSystemHandler *)self messageHandler];
  [messageHandler routeUpdateMediaSystem:messageCopy];
}

- (id)processedMediaSystemBuilderMessageFor:(id)for
{
  forCopy = for;
  messageHandler = [(HMDHomeMediaSystemHandler *)self messageHandler];
  v6 = [messageHandler preProcessMediaSystemMessage:forCopy];

  return v6;
}

- (id)mediaSystemForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  mediaSystems = [(HMDHomeMediaSystemHandler *)self mediaSystems];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__HMDHomeMediaSystemHandler_mediaSystemForAccessory___block_invoke;
  v9[3] = &unk_278675410;
  v10 = accessoryCopy;
  v6 = accessoryCopy;
  v7 = [mediaSystems na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __53__HMDHomeMediaSystemHandler_mediaSystemForAccessory___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accessories];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__HMDHomeMediaSystemHandler_mediaSystemForAccessory___block_invoke_2;
  v6[3] = &unk_278681708;
  v7 = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

uint64_t __53__HMDHomeMediaSystemHandler_mediaSystemForAccessory___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 uuid];
  v5 = [v3 uuid];

  v6 = [v4 hmf_isEqualToUUID:v5];
  return v6;
}

- (void)configure:(id)configure delegate:(id)delegate dataSource:(id)source queue:(id)queue messageDispatcher:(id)dispatcher notificationCenter:(id)center
{
  v51 = *MEMORY[0x277D85DE8];
  configureCopy = configure;
  delegateCopy = delegate;
  sourceCopy = source;
  queueCopy = queue;
  dispatcherCopy = dispatcher;
  centerCopy = center;
  uuid = [configureCopy uuid];
  [(HMDHomeMediaSystemHandler *)self setParentUUID:uuid];

  v20 = objc_autoreleasePoolPush();
  selfCopy = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v23 = v38 = queueCopy;
    [(HMDHomeMediaSystemHandler *)selfCopy mediaSystems];
    v25 = v24 = delegateCopy;
    *buf = 138543874;
    v46 = v23;
    v47 = 2112;
    v48 = configureCopy;
    v49 = 2112;
    v50 = v25;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Configuring media system controller for home: %@ media systems: %@", buf, 0x20u);

    delegateCopy = v24;
    queueCopy = v38;
  }

  objc_autoreleasePoolPop(v20);
  [(HMDHomeMediaSystemHandler *)selfCopy setHome:configureCopy];
  v39 = delegateCopy;
  [(HMDHomeMediaSystemHandler *)selfCopy setDelegate:delegateCopy];
  [(HMDHomeMediaSystemHandler *)selfCopy setDataSource:sourceCopy];
  residentDeviceManager = [configureCopy residentDeviceManager];
  [residentDeviceManager addDataSource:selfCopy];

  [(HMDHomeMediaSystemHandler *)selfCopy setWorkQueue:queueCopy];
  [(HMDHomeMediaSystemHandler *)selfCopy setMessageDispatcher:dispatcherCopy];
  v36 = centerCopy;
  [(HMDHomeMediaSystemHandler *)selfCopy setNotificationCenter:centerCopy];
  v27 = queueCopy;
  v28 = [[HMDHomeMediaSystemControllerMessageHandler alloc] initWithQueue:queueCopy home:configureCopy messageDispatcher:dispatcherCopy delegate:selfCopy];
  [(HMDHomeMediaSystemHandler *)selfCopy setMessageHandler:v28];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  mediaSystems = [(HMDHomeMediaSystemHandler *)selfCopy mediaSystems];
  v30 = [mediaSystems countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v41;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v41 != v32)
        {
          objc_enumerationMutation(mediaSystems);
        }

        v34 = *(*(&v40 + 1) + 8 * i);
        [v34 setDataSource:selfCopy];
        [v34 configureWithMessageDispatcher:dispatcherCopy];
      }

      v31 = [mediaSystems countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v31);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  parentUUID = [(HMDHomeMediaSystemHandler *)self parentUUID];
  uUIDString = [parentUUID UUIDString];

  return uUIDString;
}

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  mediaSystems = [(HMDHomeMediaSystemHandler *)self mediaSystems];
  v4 = [mediaSystems na_map:&__block_literal_global_5];
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  parentUUID = [(HMDHomeMediaSystemHandler *)self parentUUID];
  v7 = [v5 initWithName:@"homeUUID" value:parentUUID];
  v12[0] = v7;
  v8 = [objc_alloc(MEMORY[0x277D0F778]) initWithName:@"mediaSystemUUIDs" value:v4];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)notifyOfRemovedMediaSystem:(id)system
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = *MEMORY[0x277CD2470];
  uuid = [system uuid];
  uUIDString = [uuid UUIDString];
  v11[0] = uUIDString;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  notificationCenter = [(HMDHomeMediaSystemHandler *)self notificationCenter];
  delegate = [(HMDHomeMediaSystemHandler *)self delegate];
  [notificationCenter postNotificationName:@"HMDMediaSystemRemovedNotification" object:delegate userInfo:v6];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)unsubscribeToSettingsForMediaSystem:(id)system
{
  v16 = *MEMORY[0x277D85DE8];
  systemCopy = system;
  stereoPairSettingsController = [(HMDHomeMediaSystemHandler *)self stereoPairSettingsController];

  if (stereoPairSettingsController)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = systemCopy;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Stereo pair settings controller remove media system: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    stereoPairSettingsController2 = [(HMDHomeMediaSystemHandler *)selfCopy stereoPairSettingsController];
    [stereoPairSettingsController2 unsubscribeToRemovedMediaSystemIfPrimaryResident:systemCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovedMediaSystem:(id)system
{
  systemCopy = system;
  [systemCopy unconfigureMediaSystemComponents];
  [(HMDHomeMediaSystemHandler *)self unsubscribeToSettingsForMediaSystem:systemCopy];
  delegate = [(HMDHomeMediaSystemHandler *)self delegate];
  uuid = [systemCopy uuid];
  [delegate mediaSystemController:self didRemoveMediaSystem:uuid];

  [(HMDHomeMediaSystemHandler *)self notifyOfRemovedMediaSystem:systemCopy];
}

- (void)removeMediaSystem:(id)system
{
  v19 = *MEMORY[0x277D85DE8];
  systemCopy = system;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = systemCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing media system: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  uuidToMediaSystems = selfCopy->_uuidToMediaSystems;
  uuid = [systemCopy uuid];
  v11 = [(NSMutableDictionary *)uuidToMediaSystems objectForKey:uuid];

  if (v11)
  {
    v12 = selfCopy->_uuidToMediaSystems;
    uuid2 = [systemCopy uuid];
    [(NSMutableDictionary *)v12 removeObjectForKey:uuid2];

    os_unfair_lock_unlock(&selfCopy->_lock);
    [(HMDHomeMediaSystemHandler *)selfCopy handleRemovedMediaSystem:systemCopy];
  }

  else
  {
    os_unfair_lock_unlock(&selfCopy->_lock);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)updateMediaSystem:(id)system
{
  v16 = *MEMORY[0x277D85DE8];
  systemCopy = system;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = systemCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating media system: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  uuidToMediaSystems = selfCopy->_uuidToMediaSystems;
  uuid = [systemCopy uuid];
  [(NSMutableDictionary *)uuidToMediaSystems setObject:systemCopy forKey:uuid];

  os_unfair_lock_unlock(&selfCopy->_lock);
  v11 = *MEMORY[0x277D85DE8];
}

- (id)mediaSystemWithUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_uuidToMediaSystems objectForKey:dCopy];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)filteredMediaSystems
{
  mediaSystems = [(HMDHomeMediaSystemHandler *)self mediaSystems];
  v3 = [mediaSystems na_filter:&__block_literal_global_3_67696];

  return v3;
}

- (NSArray)mediaSystems
{
  os_unfair_lock_lock_with_options();
  allValues = [(NSMutableDictionary *)self->_uuidToMediaSystems allValues];
  os_unfair_lock_unlock(&self->_lock);

  return allValues;
}

- (HMDHomeMediaSystemHandler)initWithMediaSystems:(id)systems
{
  systemsCopy = systems;
  v12.receiver = self;
  v12.super_class = HMDHomeMediaSystemHandler;
  v5 = [(HMDHomeMediaSystemHandler *)&v12 init];
  if (v5)
  {
    v6 = HMFGetOSLogHandle();
    logger = v5->_logger;
    v5->_logger = v6;

    v8 = [systemsCopy na_dictionaryWithKeyGenerator:&__block_literal_global_67701];
    v9 = [v8 mutableCopy];
    uuidToMediaSystems = v5->_uuidToMediaSystems;
    v5->_uuidToMediaSystems = v9;
  }

  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_67711 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_67711, &__block_literal_global_14_67712);
  }

  v3 = logCategory__hmf_once_v8_67713;

  return v3;
}

void __40__HMDHomeMediaSystemHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v8_67713;
  logCategory__hmf_once_v8_67713 = v1;
}

@end