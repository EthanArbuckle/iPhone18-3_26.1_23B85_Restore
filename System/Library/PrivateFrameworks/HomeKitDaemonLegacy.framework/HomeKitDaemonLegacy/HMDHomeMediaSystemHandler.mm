@interface HMDHomeMediaSystemHandler
+ (id)logCategory;
- (BOOL)doAccessoriesSupportStereoPairVersion:(void *)a3 leftHomePod:(void *)a4 rightHomePod:;
- (BOOL)supportsDeviceWithCapabilities:(id)a3;
- (HMDHome)home;
- (HMDHomeMediaSystemHandler)initWithCoder:(id)a3;
- (HMDHomeMediaSystemHandler)initWithMediaSystems:(id)a3;
- (HMDHomeMediaSystemHandlerDataSource)dataSource;
- (HMDHomeMediaSystemHandlerDelegate)delegate;
- (NSArray)mediaSystems;
- (id)_currentMediaSystemIfPrimary;
- (id)attributeDescriptions;
- (id)backingStoreObjectsForVersion:(int64_t)a3;
- (id)destinationForMediaSystem:(id)a3;
- (id)eventForwarder;
- (id)eventStoreReadHandle;
- (id)filteredMediaSystems;
- (id)localAndRemoteSubscriptionProvider;
- (id)logIdentifier;
- (id)mediaSystemData:(id)a3 withIdentifier:(id)a4;
- (id)mediaSystemForAccessory:(id)a3;
- (id)mediaSystemWithUUID:(id)a3;
- (id)processedMediaSystemBuilderMessageFor:(id)a3;
- (void)_handleAddMediaSystemModel:(id)a3 message:(id)a4;
- (void)_handleRemoveMediaSystemModel:(id)a3 message:(id)a4;
- (void)_handleUpdateMediaSystemModel:(id)a3 message:(id)a4;
- (void)_userAssistantAccessControlDidUpdate:(id)a3 accessories:(id)a4;
- (void)addMediaSystem:(id)a3;
- (void)addMediaSystemWithGroupIdentifier:(id)a3 usingData:(id)a4;
- (void)addMediaSystemsWithIdentifiers:(id)a3 usingData:(id)a4;
- (void)configure:(id)a3 delegate:(id)a4 dataSource:(id)a5 queue:(id)a6 messageDispatcher:(id)a7 notificationCenter:(id)a8;
- (void)confirmPrimaryResidentIfFirstMediaSystem;
- (void)encodeWithCoder:(id)a3;
- (void)handleRemovedMediaSystem:(id)a3;
- (void)mergeMediaSystemData:(id)a3;
- (void)messageHandlerAddMediaSystem:(id)a3 configuredName:(id)a4 leftUUID:(id)a5 leftAccessoryUUID:(id)a6 rightUUID:(id)a7 rightAccessoryUUID:(id)a8 builderSession:(id)a9 completion:(id)a10;
- (void)messageHandlerRemoveMediaSystem:(id)a3 builderSession:(id)a4 message:(id)a5;
- (void)messageHandlerUpdateMediaSystem:(id)a3 configuredName:(id)a4 leftUUID:(id)a5 leftAccessoryUUID:(id)a6 rightUUID:(id)a7 rightAccessoryUUID:(id)a8 builderSession:(id)a9 completion:(id)a10;
- (void)notifyOfRemovedMediaSystem:(id)a3;
- (void)removeMediaSystem:(id)a3;
- (void)routeMediaSystemWithMessage:(id)a3;
- (void)subscribeToSettingsForNewlyAddedMediaSystem:(id)a3;
- (void)unsubscribeToSettingsForMediaSystem:(id)a3;
- (void)updateMediaSystem:(id)a3;
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

- (id)destinationForMediaSystem:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeMediaSystemHandler *)self dataSource];
  v6 = [v5 destinationForMediaSystem:v4];

  return v6;
}

- (void)_userAssistantAccessControlDidUpdate:(id)a3 accessories:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [(HMDHomeMediaSystemHandler *)self _currentMediaSystemIfPrimary];
  v10 = v9;
  if (v9)
  {
    v38 = self;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v11 = [v9 accessories];
    v12 = [v11 countByEnumeratingWithState:&v43 objects:v56 count:16];
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
            objc_enumerationMutation(v11);
          }

          v18 = [v7 containsObject:*(*(&v43 + 1) + 8 * i)];
          v14 |= v18;
          v16 &= v18;
        }

        v13 = [v11 countByEnumeratingWithState:&v43 objects:v56 count:16];
      }

      while (v13);
    }

    else
    {
      v14 = 0;
      v16 = 1;
    }

    v19 = objc_autoreleasePoolPush();
    self = v38;
    v20 = v38;
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
      v55 = v7;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEBUG, "%{public}@accessories in media system somePresent:%d allPresent:%d, ms acc:%@, incoming acc: %@", buf, 0x2Cu);

      v10 = v37;
      self = v38;
    }

    objc_autoreleasePoolPop(v19);
    if (!(v16 & 1 | ((v14 & 1) == 0)))
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v24 = [v10 accessories];
      v25 = [v24 countByEnumeratingWithState:&v39 objects:v47 count:16];
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
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v39 + 1) + 8 * j);
            if ([v7 containsObject:v29])
            {
              [v8 addObject:v29];
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v39 objects:v47 count:16];
        }

        while (v26);
      }
    }
  }

  if ([v8 count])
  {
    v30 = objc_autoreleasePoolPush();
    v31 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543618;
      v49 = v33;
      v50 = 2112;
      *v51 = v8;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@audit discovered accessories added by old controller, will remove %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v34 = [(HMDHomeMediaSystemHandler *)v31 delegate];
    v35 = [v8 copy];
    [v34 mediaSystemController:v31 removeAccessories:v35 fromAssistantAccessControl:v6];
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
    v3 = [(HMDHomeMediaSystemHandler *)self mediaSystems];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = *v12;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v11 + 1) + 8 * i);
          v8 = [v7 targetAccessory];
          if ([v8 isCurrentAccessory])
          {
            v4 = v7;

            goto LABEL_13;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)encodeWithCoder:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v23 = [MEMORY[0x277CBEB18] array];
  v24 = [MEMORY[0x277CBEB18] array];
  v25 = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = [(HMDHomeMediaSystemHandler *)self mediaSystems];
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
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

        v12 = v9;
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
          v15 = v25;
          v16 = v14;
        }

        else if (v11)
        {
          v15 = v24;
          v16 = v11;
        }

        else
        {
          v15 = v23;
          v16 = v12;
        }

        [v15 addObject:v16];
      }

      v6 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v6);
  }

  if ([v22 hmd_isForXPCTransport])
  {
    v17 = [(HMDHomeMediaSystemHandler *)self mediaSystems];
    [v22 encodeObject:v17 forKey:*MEMORY[0x277CD2480]];

    v18 = v23;
    v19 = v24;
    v20 = v25;
  }

  else
  {
    v18 = v23;
    [v22 encodeObject:v23 forKey:*MEMORY[0x277CD2480]];
    v19 = v24;
    [v22 encodeObject:v24 forKey:@"ms.homepod"];
    v20 = v25;
    [v22 encodeObject:v25 forKey:@"ms.homepod6_1"];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (HMDHomeMediaSystemHandler)initWithCoder:(id)a3
{
  v26[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB98];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v7 = [v5 setWithArray:v6];

  v8 = [v4 decodeObjectOfClasses:v7 forKey:*MEMORY[0x277CD2480]];
  v9 = [v4 decodeObjectOfClasses:v7 forKey:@"ms.homepod"];
  v10 = [v4 decodeObjectOfClasses:v7 forKey:@"ms.homepod6_1"];
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
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    v24 = 138543362;
    v25 = v20;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Decoded home media system handler with no media systems", &v24, 0xCu);
  }

  objc_autoreleasePoolPop(v17);
  v14 = MEMORY[0x277CBEBF8];
LABEL_16:
  v21 = [(HMDHomeMediaSystemHandler *)self initWithMediaSystems:v14];

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)supportsDeviceWithCapabilities:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeMediaSystemHandler *)self mediaSystems];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [v4 supportsWholeHouseAudio];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)eventStoreReadHandle
{
  v2 = [(HMDHomeMediaSystemHandler *)self home];
  v3 = [v2 homeManager];

  v4 = [v3 eventStoreReadHandle];

  return v4;
}

- (id)eventForwarder
{
  v2 = [(HMDHomeMediaSystemHandler *)self home];
  v3 = [v2 homeManager];

  v4 = [v3 eventForwarder];

  return v4;
}

- (id)localAndRemoteSubscriptionProvider
{
  v2 = [(HMDHomeMediaSystemHandler *)self home];
  v3 = [v2 homeManager];

  v4 = [v3 localAndRemoteSubscriptionProvider];

  return v4;
}

- (id)backingStoreObjectsForVersion:(int64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(HMDHomeMediaSystemHandler *)self mediaSystems];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) backingStoreObjectsForVersion:a3];
        [v5 addObjectsFromArray:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)_handleUpdateMediaSystemModel:(id)a3 message:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (isFeatureHomeTheaterQFAEnabledForTests && [isFeatureHomeTheaterQFAEnabledForTests BOOLValue])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Skipping update model due to Home Theater QFA enabled", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v12 = [v6 uuid];
    v13 = [(HMDHomeMediaSystemHandler *)self mediaSystemWithUUID:v12];

    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [v6 uuid];
      v19 = [v18 UUIDString];
      v21 = 138543874;
      v22 = v17;
      v23 = 2112;
      v24 = v19;
      v25 = 2112;
      v26 = v13;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Handling update of media system %@, system: %@", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    [v13 transactionObjectUpdated:0 newValues:v6 message:v7];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleRemoveMediaSystemModel:(id)a3 message:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (isFeatureHomeTheaterQFAEnabledForTests && [isFeatureHomeTheaterQFAEnabledForTests BOOLValue])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Skipping remove model due to Home Theater QFA enabled", &v30, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v7 respondWithError:v12];
  }

  else
  {
    v13 = [v6 uuid];
    v12 = [(HMDHomeMediaSystemHandler *)self mediaSystemWithUUID:v13];

    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [v6 uuid];
      v19 = [v18 UUIDString];
      v20 = [v7 identifier];
      v30 = 138544130;
      v31 = v17;
      v32 = 2112;
      v33 = v19;
      v34 = 2112;
      v35 = v20;
      v36 = 2112;
      v37 = v12;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Handling transaction removal of media system model uuid: %@ message identifier: %@ media system: %@", &v30, 0x2Au);
    }

    objc_autoreleasePoolPop(v14);
    if (v12)
    {
      [(HMDHomeMediaSystemHandler *)v15 removeMediaSystem:v12];
      v21 = [v7 transactionResult];
      [v21 markChanged];
      [v21 markSaveToAssistant];
      [v7 respondWithSuccess];
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = v15;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v26 = [v6 uuid];
        v27 = [v26 UUIDString];
        v28 = [(HMDHomeMediaSystemHandler *)v23 mediaSystems];
        v30 = 138543874;
        v31 = v25;
        v32 = 2112;
        v33 = v27;
        v34 = 2112;
        v35 = v28;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Cannot find media system with UUID %@, current media systems: %@", &v30, 0x20u);
      }

      objc_autoreleasePoolPop(v22);
      v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      [v7 respondWithError:v21];
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)confirmPrimaryResidentIfFirstMediaSystem
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomeMediaSystemHandler *)self mediaSystems];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = [(HMDHomeMediaSystemHandler *)self home];
    v6 = v5;
    if (v5)
    {
      if ([v5 isCurrentDevicePrimaryResident])
      {
        v7 = objc_autoreleasePoolPush();
        v8 = self;
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = HMFGetLogIdentifier();
          v17 = 138543362;
          v18 = v10;
          _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Confirming primary resident due to first added media system", &v17, 0xCu);
        }

        objc_autoreleasePoolPop(v7);
        v11 = [v6 residentDeviceManager];
        [v11 confirmWithCompletionHandler:0];
      }
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
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to confirm primary resident due to no home", &v17, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)subscribeToSettingsForNewlyAddedMediaSystem:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeMediaSystemHandler *)self stereoPairSettingsController];

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Stereo pair settings controller add media system: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [(HMDHomeMediaSystemHandler *)v7 stereoPairSettingsController];
    [v10 subscribeToAddedMediaSystemIfPrimaryResident:v4];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addMediaSystem:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 setDataSource:self];
  v5 = [(HMDHomeMediaSystemHandler *)self messageDispatcher];
  [v4 configureWithMessageDispatcher:v5];

  [(HMDHomeMediaSystemHandler *)self updateMediaSystem:v4];
  [(HMDHomeMediaSystemHandler *)self subscribeToSettingsForNewlyAddedMediaSystem:v4];
  [(HMDHomeMediaSystemHandler *)self confirmPrimaryResidentIfFirstMediaSystem];
  logger = self->_logger;
  if (os_signpost_enabled(logger))
  {
    v7 = logger;
    v8 = [v4 uuid];
    *buf = 138412290;
    v16 = v8;
    _os_signpost_emit_with_name_impl(&dword_2531F8000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AddedMediaSystem", "mediaSystemUUID=%{signpost.description:attribute}@ ", buf, 0xCu);
  }

  v9 = [(HMDHomeMediaSystemHandler *)self notificationCenter];
  v10 = [(HMDHomeMediaSystemHandler *)self delegate];
  v13 = @"HMDMediaSystemNotificationKey";
  v14 = v4;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [v9 postNotificationName:@"HMDMediaSystemAddedNotification" object:v10 userInfo:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleAddMediaSystemModel:(id)a3 message:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (isFeatureHomeTheaterQFAEnabledForTests && [isFeatureHomeTheaterQFAEnabledForTests BOOLValue])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Skipping add model due to Home Theater QFA enabled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v12 = [(HMDHomeMediaSystemHandler *)self home];
    v36 = v6;
    v13 = v6;
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

    v19 = off_27971A1A0;
    if (v15)
    {
      v19 = off_27971A1A8;
    }

    if (v18)
    {
      v19 = off_27971A1B0;
    }

    v35 = v12;
    v20 = [objc_alloc(*v19) initWithMediaSystemModel:v16 home:v12];
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [v16 uuid];
      v26 = [v25 UUIDString];
      *buf = 138543874;
      v40 = v24;
      v41 = 2112;
      v42 = v26;
      v43 = 2112;
      v44 = v20;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Handling add of media system %@, system: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    if (v20)
    {
      [(HMDHomeMediaSystemHandler *)v22 addMediaSystem:v20];
      v37 = *MEMORY[0x277CD2418];
      v27 = [v20 serialize];
      v38 = v27;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      [v7 respondWithPayload:v28];

      v29 = [v7 transactionResult];
      [v29 markChanged];
      [v29 markSaveToAssistant];
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = v22;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543362;
        v40 = v33;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@Cannot create media system object", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v30);
      v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      [v7 respondWithError:v29];
    }

    v6 = v36;
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)addMediaSystemWithGroupIdentifier:(id)a3 usingData:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v24 = 138543618;
    v25 = v11;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Adding media system with identifier: %@", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDHomeMediaSystemHandler *)v9 mediaSystemData:v7 withIdentifier:v6];
  if (v12)
  {
    v13 = [(HMDHomeMediaSystemHandler *)v9 home];
    if (v13)
    {
      v14 = [[HMDMediaSystem alloc] initWithMediaSystemData:v12 home:v13];
      [(HMDHomeMediaSystemHandler *)v9 addMediaSystem:v14];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = v9;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v24 = 138543618;
        v25 = v22;
        v26 = 2112;
        v27 = v7;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to add media system using data: %@ due to no home", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v9;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v24 = 138543874;
      v25 = v18;
      v26 = 2112;
      v27 = v6;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to get data for media system to add with identifier: %@ data: %@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)addMediaSystemsWithIdentifiers:(id)a3 usingData:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__HMDHomeMediaSystemHandler_addMediaSystemsWithIdentifiers_usingData___block_invoke;
  v8[3] = &unk_279729328;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [a3 na_each:v8];
}

- (id)mediaSystemData:(id)a3 withIdentifier:(id)a4
{
  v5 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__HMDHomeMediaSystemHandler_mediaSystemData_withIdentifier___block_invoke;
  v9[3] = &unk_2797261B8;
  v10 = v5;
  v6 = v5;
  v7 = [a3 na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __60__HMDHomeMediaSystemHandler_mediaSystemData_withIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (void)mergeMediaSystemData:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__44517;
  v15 = __Block_byref_object_dispose__44518;
  v5 = [(HMDHomeMediaSystemHandler *)self identifiersInMediaSystemData:v4];
  v16 = [v5 mutableCopy];

  v6 = [(HMDHomeMediaSystemHandler *)self mediaSystems];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__HMDHomeMediaSystemHandler_mergeMediaSystemData___block_invoke;
  v8[3] = &unk_279726170;
  v10 = &v11;
  v8[4] = self;
  v7 = v4;
  v9 = v7;
  [v6 na_each:v8];

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

- (void)messageHandlerRemoveMediaSystem:(id)a3 builderSession:(id)a4 message:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v29 = v14;
    v30 = 2112;
    v31 = v9;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Received remove media system message for session ID %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [(HMDHomeMediaSystemHandler *)v12 mediaSystemWithUUID:v8];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 modelForMediaSystem];
    [v17 setObjectChangeType:3];
    v18 = [(HMDHomeMediaSystemHandler *)v12 dataSource];
    v19 = [v18 backingStore];
    v20 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v21 = [v19 transaction:@"Remove media system" options:v20];

    [v21 add:v17 withMessage:v10];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __84__HMDHomeMediaSystemHandler_messageHandlerRemoveMediaSystem_builderSession_message___block_invoke;
    v27[3] = &unk_2797359D8;
    v27[4] = v12;
    [v21 run:v27];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v12;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v25;
      v30 = 2112;
      v31 = v9;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@No media system for session ID found %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v10 respondWithError:v17];
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
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Remove media system transaction run completed with error: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)messageHandlerUpdateMediaSystem:(id)a3 configuredName:(id)a4 leftUUID:(id)a5 leftAccessoryUUID:(id)a6 rightUUID:(id)a7 rightAccessoryUUID:(id)a8 builderSession:(id)a9 completion:(id)a10
{
  v78 = *MEMORY[0x277D85DE8];
  v64 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v62 = a7;
  v63 = a8;
  v19 = a9;
  v20 = a10;
  v21 = objc_autoreleasePoolPush();
  v22 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543618;
    v69 = v24;
    v70 = 2112;
    v71 = v19;
    _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Received update media system message for session ID %@", buf, 0x16u);
  }

  v61 = v19;

  objc_autoreleasePoolPop(v21);
  v25 = [(HMDHomeMediaSystemHandler *)v22 mediaSystemWithUUID:v64];
  if (v25)
  {
    v26 = [(HMDHomeMediaSystemHandler *)v22 dataSource];
    v27 = v18;
    v28 = [v26 mediaSystemController:v22 accessoryForUUID:v18];
    v29 = [v26 mediaSystemController:v22 accessoryForUUID:v63];
    v58 = v28;
    v59 = v16;
    v60 = v29;
    if (!v28 || !v29)
    {
      v43 = objc_autoreleasePoolPush();
      v44 = v22;
      v45 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = HMFGetLogIdentifier();
        [(HMDHomeMediaSystemHandler *)v44 delegate];
        v48 = v47 = v17;
        *buf = 138544130;
        v69 = v46;
        v70 = 2112;
        v71 = v48;
        v72 = 2112;
        v73 = v18;
        v74 = 2112;
        v75 = v63;
        _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_ERROR, "%{public}@Accessory cannot be found in home %@ for accessory IDs %@ %@", buf, 0x2Au);

        v17 = v47;
        v27 = v18;
      }

      objc_autoreleasePoolPop(v43);
      v49 = MEMORY[0x277CCA9B8];
      v34 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2021];
      v50 = [v49 hmErrorWithCode:2 description:0 reason:0 suggestion:0 underlyingError:v34];
      v20[2](v20, 0, v50);

      v31 = v62;
      goto LABEL_19;
    }

    v57 = v17;
    v30 = [v25 accessories];
    v31 = v62;
    if ([v30 containsObject:v28])
    {
      v32 = [v25 accessories];
      v33 = [v32 containsObject:v60];

      if (v33)
      {
        v34 = [v25 modelForMediaSystem];
        [v34 setObjectChangeType:2];
        [v34 setConfiguredName:v59];
        v35 = [MEMORY[0x277CD1BF8] encodeComponentDataWithLeftComponentUUID:v57 leftAccessoryUUID:v27 rightComponentUUID:v62 rightAccessoryUUID:v63];
        [v34 setMediaSystemComponents:v35];

        v36 = [v26 backingStore];
        v37 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
        v38 = [v36 transaction:@"Update media system" options:v37];

        v17 = v57;
        [v38 add:v34];
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __158__HMDHomeMediaSystemHandler_messageHandlerUpdateMediaSystem_configuredName_leftUUID_leftAccessoryUUID_rightUUID_rightAccessoryUUID_builderSession_completion___block_invoke;
        v65[3] = &unk_279735168;
        v65[4] = v22;
        v66 = v64;
        v67 = v20;
        [v38 run:v65];

LABEL_19:
        v16 = v59;
        goto LABEL_20;
      }
    }

    else
    {
    }

    v51 = objc_autoreleasePoolPush();
    v52 = v22;
    v53 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = HMFGetLogIdentifier();
      v55 = [v25 accessories];
      *buf = 138544386;
      v69 = v54;
      v70 = 2112;
      v71 = v55;
      v72 = 2112;
      v73 = v25;
      v74 = 2112;
      v75 = v27;
      v76 = 2112;
      v77 = v63;
      _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_ERROR, "%{public}@Accessories %@ in media system %@ cannot be changed - accessory IDs %@ %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v51);
    v34 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v20[2](v20, 0, v34);
    v17 = v57;
    goto LABEL_19;
  }

  v39 = objc_autoreleasePoolPush();
  v40 = v22;
  v41 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    v42 = HMFGetLogIdentifier();
    *buf = 138543618;
    v69 = v42;
    v70 = 2112;
    v71 = v64;
    _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "%{public}@Media system with uuid %@ not found", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v39);
  v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  v20[2](v20, 0, v26);
  v27 = v18;
  v31 = v62;
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

- (void)messageHandlerAddMediaSystem:(id)a3 configuredName:(id)a4 leftUUID:(id)a5 leftAccessoryUUID:(id)a6 rightUUID:(id)a7 rightAccessoryUUID:(id)a8 builderSession:(id)a9 completion:(id)a10
{
  v153 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v123 = a4;
  v17 = a5;
  v18 = a6;
  v122 = a7;
  v19 = a8;
  v20 = a9;
  v120 = a10;
  v21 = objc_autoreleasePoolPush();
  v22 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543618;
    v146 = v24;
    v147 = 2112;
    v148 = v20;
    _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Received add media system message for session ID %@", buf, 0x16u);
  }

  v121 = v20;

  objc_autoreleasePoolPop(v21);
  v25 = [(HMDHomeMediaSystemHandler *)v22 mediaSystemWithUUID:v16];

  if (!v25)
  {
    v33 = [(HMDHomeMediaSystemHandler *)v22 dataSource];
    v34 = [(HMDHomeMediaSystemHandler *)v22 home];
    v35 = [v34 homeManager];

    v36 = [v33 mediaSystemController:v22 accessoryForUUID:v18];
    v117 = v33;
    v37 = v33;
    v38 = v36;
    v29 = v19;
    v39 = [v37 mediaSystemController:v22 accessoryForUUID:v19];
    v118 = v16;
    v119 = v39;
    if (!v38 || (v40 = v39) == 0)
    {
      v53 = objc_autoreleasePoolPush();
      v54 = v22;
      v55 = HMFGetOSLogHandle();
      v31 = v117;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v56 = v38;
        v58 = v57 = v35;
        *buf = 138544130;
        v146 = v58;
        v147 = 2112;
        v148 = v117;
        v149 = 2112;
        v150 = v18;
        v151 = 2112;
        v152 = v29;
        _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_ERROR, "%{public}@Accessory cannot be found in home %@ for accessory IDs %@ %@", buf, 0x2Au);

        v35 = v57;
        v38 = v56;
      }

      objc_autoreleasePoolPop(v53);
      v59 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2021];
      v32 = v120;
      (*(v120 + 2))(v120, 0, v59);

      v60 = [v35 setupActivity];
      v143 = @"error.code";
      v61 = [MEMORY[0x277CCABB0] numberWithInteger:2021];
      v144 = v61;
      v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v144 forKeys:&v143 count:1];

      v52 = [v35 setupActivity];
      [v52 markWithReason:@"HMDHomeMediaSystemHandler.addedMediaSystem.failure"];
      goto LABEL_50;
    }

    v116 = v35;
    v41 = [v38 uuid];
    v42 = [v40 uuid];
    v43 = [v41 hmf_isEqualToUUID:v42];

    if (v43)
    {
      v44 = objc_autoreleasePoolPush();
      v45 = v22;
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = HMFGetLogIdentifier();
        *buf = 138543874;
        v146 = v47;
        v147 = 2112;
        v148 = v18;
        v149 = 2112;
        v150 = v19;
        _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_ERROR, "%{public}@Accessories in media system are not unique %@ - %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v44);
      v48 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2022];
      v32 = v120;
      (*(v120 + 2))(v120, 0, v48);

      v35 = v116;
      v49 = [v116 setupActivity];
      v141 = @"error.code";
      v50 = [MEMORY[0x277CCABB0] numberWithInteger:2022];
      v142 = v50;
      v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v142 forKeys:&v141 count:1];

      v52 = [v116 setupActivity];
      [v52 markWithReason:@"HMDHomeMediaSystemHandler.addedMediaSystem.failure"];
      v31 = v117;
      goto LABEL_50;
    }

    v112 = v38;
    v52 = [MEMORY[0x277CBEB98] setWithObjects:{v18, v19, 0}];
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v63 = [(HMDHomeMediaSystemHandler *)v22 mediaSystems];
    v115 = v18;
    v35 = v116;
    v64 = v119;
    v109 = [v63 countByEnumeratingWithState:&v131 objects:v140 count:16];
    if (v109)
    {
      v65 = *v132;
      v111 = v17;
      v113 = v63;
      v107 = *v132;
      do
      {
        v66 = 0;
        do
        {
          if (*v132 != v65)
          {
            objc_enumerationMutation(v63);
          }

          v110 = v66;
          v67 = *(*(&v131 + 1) + 8 * v66);
          v127 = 0u;
          v128 = 0u;
          v129 = 0u;
          v130 = 0u;
          v108 = v67;
          v68 = [v67 components];
          v69 = [v68 countByEnumeratingWithState:&v127 objects:v139 count:16];
          if (v69)
          {
            v70 = v69;
            v71 = *v128;
            while (2)
            {
              for (i = 0; i != v70; ++i)
              {
                if (*v128 != v71)
                {
                  objc_enumerationMutation(v68);
                }

                v73 = [*(*(&v127 + 1) + 8 * i) accessory];
                v74 = [v73 uuid];
                v75 = [v52 containsObject:v74];

                if (v75)
                {
                  v77 = objc_autoreleasePoolPush();
                  v78 = v22;
                  v79 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                  {
                    v80 = HMFGetLogIdentifier();
                    *buf = 138543874;
                    v146 = v80;
                    v147 = 2112;
                    v148 = v73;
                    v149 = 2112;
                    v150 = v108;
                    _os_log_impl(&dword_2531F8000, v79, OS_LOG_TYPE_ERROR, "%{public}@Accessory %@ already used in another media system %@", buf, 0x20u);
                  }

                  objc_autoreleasePoolPop(v77);
                  v81 = [v116 setupActivity];
                  v137[0] = @"accessory.uuid";
                  v82 = [v73 uuid];
                  v83 = HMDailyRotatedUUID();
                  v84 = v83;
                  if (v83)
                  {
                    v85 = v83;
                  }

                  else
                  {
                    v85 = @"no uuid";
                  }

                  v137[1] = @"error.code";
                  v138[0] = v85;
                  v86 = [MEMORY[0x277CCABB0] numberWithInteger:2023];
                  v138[1] = v86;
                  v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v138 forKeys:v137 count:2];

                  v35 = v116;
                  v88 = [v116 setupActivity];
                  [v88 markWithReason:@"HMDHomeMediaSystemHandler.addedMediaSystem.failure"];

                  v89 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2023];
                  (*(v120 + 2))(v120, 0, v89);

                  v32 = v120;
                  v17 = v111;
                  v38 = v112;
                  v29 = v19;
                  v31 = v117;
                  v90 = v113;
                  goto LABEL_49;
                }
              }

              v70 = [v68 countByEnumeratingWithState:&v127 objects:v139 count:16];
              if (v70)
              {
                continue;
              }

              break;
            }
          }

          v66 = v110 + 1;
          v17 = v111;
          v35 = v116;
          v64 = v119;
          v63 = v113;
          v65 = v107;
        }

        while (v110 + 1 != v109);
        v29 = v19;
        v109 = [v113 countByEnumeratingWithState:&v131 objects:v140 count:16];
      }

      while (v109);
    }

    v38 = v112;
    if (isInternalBuild() && [(HMDHomeMediaSystemHandler *)v22 doAccessoriesSupportStereoPairVersion:v112 leftHomePod:v64 rightHomePod:?])
    {
      v76 = off_27971A1B8;
      v31 = v117;
    }

    else
    {
      v31 = v117;
      if ([(HMDHomeMediaSystemHandler *)v22 doAccessoriesSupportStereoPairVersion:v112 leftHomePod:v64 rightHomePod:?])
      {
        v76 = off_27971A1C8;
      }

      else if ([(HMDHomeMediaSystemHandler *)v22 doAccessoriesSupportStereoPairVersion:v112 leftHomePod:v64 rightHomePod:?])
      {
        v76 = off_27971A1C0;
      }

      else
      {
        if (![(HMDHomeMediaSystemHandler *)v22 doAccessoriesSupportStereoPairVersion:v112 leftHomePod:v64 rightHomePod:?])
        {
          v98 = objc_autoreleasePoolPush();
          v99 = v22;
          v100 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
          {
            v101 = HMFGetLogIdentifier();
            *buf = 138543874;
            v146 = v101;
            v147 = 2112;
            v148 = v112;
            v149 = 2112;
            v150 = v119;
            _os_log_impl(&dword_2531F8000, v100, OS_LOG_TYPE_ERROR, "%{public}@There is a mismatch in the supported stereo pair versions %@, %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v98);
          v102 = [v35 setupActivity];
          v135[0] = @"error.code";
          v103 = [MEMORY[0x277CCABB0] numberWithInteger:3];
          v135[1] = @"error.code.private";
          v136[0] = v103;
          v38 = v112;
          v104 = [MEMORY[0x277CCABB0] numberWithInteger:2024];
          v136[1] = v104;
          v105 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v136 forKeys:v135 count:2];

          v106 = MEMORY[0x277CCA9B8];
          v90 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2024];
          v68 = [v106 hmErrorWithCode:3 description:0 reason:0 suggestion:0 underlyingError:v90];
          v32 = v120;
          (*(v120 + 2))(v120, 0, v68);
          goto LABEL_49;
        }

        v76 = off_27971A1B8;
      }
    }

    v91 = objc_alloc(*v76);
    v92 = [(HMDHomeMediaSystemHandler *)v22 parentUUID];
    v93 = [v91 initWithObjectChangeType:1 uuid:v118 parentUUID:v92];

    if (v123)
    {
      [v93 setConfiguredName:?];
    }

    v94 = [MEMORY[0x277CD1BF8] encodeComponentDataWithLeftComponentUUID:v17 leftAccessoryUUID:v115 rightComponentUUID:v122 rightAccessoryUUID:v29];
    [v93 setMediaSystemComponents:v94];

    v95 = [v31 backingStore];
    +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v96 = v114 = v93;
    v68 = [v95 transaction:@"Add media system" options:v96];

    v90 = v114;
    [v68 add:v114];
    v124[0] = MEMORY[0x277D85DD0];
    v124[1] = 3221225472;
    v124[2] = __155__HMDHomeMediaSystemHandler_messageHandlerAddMediaSystem_configuredName_leftUUID_leftAccessoryUUID_rightUUID_rightAccessoryUUID_builderSession_completion___block_invoke;
    v124[3] = &unk_279735168;
    v124[4] = v22;
    v125 = v118;
    v32 = v120;
    v126 = v120;
    [v68 run:v124];

LABEL_49:
    v18 = v115;
LABEL_50:

    v16 = v118;
    goto LABEL_51;
  }

  v26 = objc_autoreleasePoolPush();
  v27 = v22;
  v28 = HMFGetOSLogHandle();
  v29 = v19;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543618;
    v146 = v30;
    v147 = 2112;
    v148 = v16;
    _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Media system with uuid %@ already exists", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v26);
  v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:1];
  v32 = v120;
  (*(v120 + 2))(v120, 0, v31);
LABEL_51:

  v97 = *MEMORY[0x277D85DE8];
}

- (BOOL)doAccessoriesSupportStereoPairVersion:(void *)a3 leftHomePod:(void *)a4 rightHomePod:
{
  if (result)
  {
    v6 = a4;
    v7 = ([a3 supportedStereoPairVersions] & a2) != 0;
    v8 = [v6 supportedStereoPairVersions];

    return (v8 & a2) != 0 && v7;
  }

  return result;
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

- (void)routeMediaSystemWithMessage:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeMediaSystemHandler *)self messageHandler];
  [v5 routeUpdateMediaSystem:v4];
}

- (id)processedMediaSystemBuilderMessageFor:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeMediaSystemHandler *)self messageHandler];
  v6 = [v5 preProcessMediaSystemMessage:v4];

  return v6;
}

- (id)mediaSystemForAccessory:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeMediaSystemHandler *)self mediaSystems];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__HMDHomeMediaSystemHandler_mediaSystemForAccessory___block_invoke;
  v9[3] = &unk_279726148;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __53__HMDHomeMediaSystemHandler_mediaSystemForAccessory___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accessories];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__HMDHomeMediaSystemHandler_mediaSystemForAccessory___block_invoke_2;
  v6[3] = &unk_27972C828;
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

- (void)configure:(id)a3 delegate:(id)a4 dataSource:(id)a5 queue:(id)a6 messageDispatcher:(id)a7 notificationCenter:(id)a8
{
  v51 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v37 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [v14 uuid];
  [(HMDHomeMediaSystemHandler *)self setParentUUID:v19];

  v20 = objc_autoreleasePoolPush();
  v21 = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v23 = v38 = v16;
    [(HMDHomeMediaSystemHandler *)v21 mediaSystems];
    v25 = v24 = v15;
    *buf = 138543874;
    v46 = v23;
    v47 = 2112;
    v48 = v14;
    v49 = 2112;
    v50 = v25;
    _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Configuring media system controller for home: %@ media systems: %@", buf, 0x20u);

    v15 = v24;
    v16 = v38;
  }

  objc_autoreleasePoolPop(v20);
  [(HMDHomeMediaSystemHandler *)v21 setHome:v14];
  v39 = v15;
  [(HMDHomeMediaSystemHandler *)v21 setDelegate:v15];
  [(HMDHomeMediaSystemHandler *)v21 setDataSource:v37];
  v26 = [v14 residentDeviceManager];
  [v26 addDataSource:v21];

  [(HMDHomeMediaSystemHandler *)v21 setWorkQueue:v16];
  [(HMDHomeMediaSystemHandler *)v21 setMessageDispatcher:v17];
  v36 = v18;
  [(HMDHomeMediaSystemHandler *)v21 setNotificationCenter:v18];
  v27 = v16;
  v28 = [[HMDHomeMediaSystemControllerMessageHandler alloc] initWithQueue:v16 home:v14 messageDispatcher:v17 delegate:v21];
  [(HMDHomeMediaSystemHandler *)v21 setMessageHandler:v28];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v29 = [(HMDHomeMediaSystemHandler *)v21 mediaSystems];
  v30 = [v29 countByEnumeratingWithState:&v40 objects:v44 count:16];
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
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v40 + 1) + 8 * i);
        [v34 setDataSource:v21];
        [v34 configureWithMessageDispatcher:v17];
      }

      v31 = [v29 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v31);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  v2 = [(HMDHomeMediaSystemHandler *)self parentUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomeMediaSystemHandler *)self mediaSystems];
  v4 = [v3 na_map:&__block_literal_global_5];
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v6 = [(HMDHomeMediaSystemHandler *)self parentUUID];
  v7 = [v5 initWithName:@"homeUUID" value:v6];
  v12[0] = v7;
  v8 = [objc_alloc(MEMORY[0x277D0F778]) initWithName:@"mediaSystemUUIDs" value:v4];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)notifyOfRemovedMediaSystem:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = *MEMORY[0x277CD2470];
  v4 = [a3 uuid];
  v5 = [v4 UUIDString];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [(HMDHomeMediaSystemHandler *)self notificationCenter];
  v8 = [(HMDHomeMediaSystemHandler *)self delegate];
  [v7 postNotificationName:@"HMDMediaSystemRemovedNotification" object:v8 userInfo:v6];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)unsubscribeToSettingsForMediaSystem:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeMediaSystemHandler *)self stereoPairSettingsController];

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Stereo pair settings controller remove media system: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [(HMDHomeMediaSystemHandler *)v7 stereoPairSettingsController];
    [v10 unsubscribeToRemovedMediaSystemIfPrimaryResident:v4];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovedMediaSystem:(id)a3
{
  v6 = a3;
  [v6 unconfigureMediaSystemComponents];
  [(HMDHomeMediaSystemHandler *)self unsubscribeToSettingsForMediaSystem:v6];
  v4 = [(HMDHomeMediaSystemHandler *)self delegate];
  v5 = [v6 uuid];
  [v4 mediaSystemController:self didRemoveMediaSystem:v5];

  [(HMDHomeMediaSystemHandler *)self notifyOfRemovedMediaSystem:v6];
}

- (void)removeMediaSystem:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing media system: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  uuidToMediaSystems = v6->_uuidToMediaSystems;
  v10 = [v4 uuid];
  v11 = [(NSMutableDictionary *)uuidToMediaSystems objectForKey:v10];

  if (v11)
  {
    v12 = v6->_uuidToMediaSystems;
    v13 = [v4 uuid];
    [(NSMutableDictionary *)v12 removeObjectForKey:v13];

    os_unfair_lock_unlock(&v6->_lock);
    [(HMDHomeMediaSystemHandler *)v6 handleRemovedMediaSystem:v4];
  }

  else
  {
    os_unfair_lock_unlock(&v6->_lock);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)updateMediaSystem:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating media system: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  uuidToMediaSystems = v6->_uuidToMediaSystems;
  v10 = [v4 uuid];
  [(NSMutableDictionary *)uuidToMediaSystems setObject:v4 forKey:v10];

  os_unfair_lock_unlock(&v6->_lock);
  v11 = *MEMORY[0x277D85DE8];
}

- (id)mediaSystemWithUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_uuidToMediaSystems objectForKey:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)filteredMediaSystems
{
  v2 = [(HMDHomeMediaSystemHandler *)self mediaSystems];
  v3 = [v2 na_filter:&__block_literal_global_3_44580];

  return v3;
}

- (NSArray)mediaSystems
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_uuidToMediaSystems allValues];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMDHomeMediaSystemHandler)initWithMediaSystems:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HMDHomeMediaSystemHandler;
  v5 = [(HMDHomeMediaSystemHandler *)&v12 init];
  if (v5)
  {
    v6 = HMFGetOSLogHandle();
    logger = v5->_logger;
    v5->_logger = v6;

    v8 = [v4 na_dictionaryWithKeyGenerator:&__block_literal_global_44585];
    v9 = [v8 mutableCopy];
    uuidToMediaSystems = v5->_uuidToMediaSystems;
    v5->_uuidToMediaSystems = v9;
  }

  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_44595 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_44595, &__block_literal_global_14);
  }

  v3 = logCategory__hmf_once_v8_44596;

  return v3;
}

uint64_t __40__HMDHomeMediaSystemHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v8_44596;
  logCategory__hmf_once_v8_44596 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end