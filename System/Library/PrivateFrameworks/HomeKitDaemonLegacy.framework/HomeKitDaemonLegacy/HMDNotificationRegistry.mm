@interface HMDNotificationRegistry
+ (id)logCategory;
- (BOOL)disableReachabilityEventNotificationForAccessoryUUIDs:(id)ds forUserID:(id)d;
- (BOOL)enableReachabilityEventNotificationForAccessoryUUIDs:(id)ds forUserID:(id)d;
- (BOOL)removeRegistrationsForMediaProfile:(id)profile;
- (BOOL)setNotificationsEnabled:(BOOL)enabled forUserID:(id)d characteristicsPayload:(id)payload mediaPropertiesPayload:(id)propertiesPayload;
- (HMDNotificationRegistry)init;
- (HMDNotificationRegistry)initWithCoder:(id)coder;
- (HMDNotificationRegistry)initWithPendingRequestsRetryTimer:(id)timer;
- (id)_createCharacteristicsMapForCharacteristics:(uint64_t)characteristics;
- (id)_reachabilityEventNotificationRegistryKeyForAccessoryUUID:(uint64_t)d;
- (id)_reachabilityEventNotificationRegistryKeysForAccessoryUUIDs:(void *)ds;
- (id)filterCharacteristics:(id)characteristics forUser:(id)user;
- (id)filterProperties:(id)properties forUser:(id)user;
- (id)home;
- (id)keyForCharacteristic:(uint64_t)characteristic;
- (id)keyForProperty:(void *)property mediaProfile:;
- (id)logIdentifier;
- (id)propertiesRegisteredForMediaProfileUniqueIdentifier:(id)identifier;
- (id)shortDescription;
- (id)userIDsRegisteredForReachabilityEventNotificationsForAccessoryUUIDs:(id)ds;
- (id)usersRegisteredForNotificationsForCharacteristics:(id)characteristics;
- (id)usersRegisteredForNotificationsForProperties:(id)properties;
- (os_unfair_lock)notificationRegistry;
- (uint64_t)_processCharacteristicsRequests:(void *)requests;
- (uint64_t)_processMediaPropertiesRequests:(void *)requests;
- (void)_addPendingRequests:(void *)requests;
- (void)addDelegate:(id)delegate;
- (void)auditUsersForNotifications:(id)notifications forHome:(id)home;
- (void)clearAllRegistrations;
- (void)configureWithHome:(id)home;
- (void)disableNotification:(void *)notification user:(void *)user home:;
- (void)encodeWithCoder:(id)coder;
- (void)notifyDelegatesIfKeysAreMediaRelated:(uint64_t)related;
- (void)notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles:(uint64_t)profiles;
- (void)removeAllReachabilityEventNotificationRegistrations;
- (void)removeRegistrationsForCharacteristics:(id)characteristics;
- (void)storeCHIPRemoteSubscriberWithRemoteSourceID:(id)d;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDNotificationRegistry

- (void)timerDidFire:(id)fire
{
  v62 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  if (self)
  {
    Property = objc_getProperty(self, v4, 64, 1);
    dispatch_assert_queue_V2(Property);
    v8 = objc_getProperty(self, v7, 40, 1);
  }

  else
  {
    dispatch_assert_queue_V2(0);
    v8 = 0;
  }

  if (v8 == fireCopy)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v59 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Pending requests retry timer fired", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    if (self)
    {
      v14 = objc_getProperty(selfCopy, v13, 64, 1);
      dispatch_assert_queue_V2(v14);
      v16 = [objc_getProperty(selfCopy v15];
      [objc_getProperty(selfCopy v17];
      v18 = [v16 count];
      v19 = objc_autoreleasePoolPush();
      v20 = selfCopy;
      v21 = HMFGetOSLogHandle();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
      if (v18)
      {
        v45 = fireCopy;
        if (v22)
        {
          v23 = HMFGetLogIdentifier();
          v24 = [v16 count];
          *buf = 138543618;
          v59 = v23;
          v60 = 2048;
          v61 = v24;
          _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Processing %lu pending request(s)", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v19);
        v47 = [MEMORY[0x277CBEB58] set];
        v46 = [MEMORY[0x277CBEB58] set];
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v44 = v16;
        v25 = v16;
        v26 = [v25 countByEnumeratingWithState:&v48 objects:buf count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v49;
          do
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v49 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v48 + 1) + 8 * i);
              if ([v30 retryCount] < 5)
              {
                [v30 setRetryCount:{objc_msgSend(v30, "retryCount") + 1}];
                v36 = v30;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v37 = v36;
                }

                else
                {
                  v37 = 0;
                }

                v38 = v37;

                if (v38)
                {
                  [v47 addObject:v38];
                }

                else
                {
                  v39 = v36;
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v40 = v39;
                  }

                  else
                  {
                    v40 = 0;
                  }

                  v41 = v40;

                  if (v41)
                  {
                    [v46 addObject:v41];
                  }
                }
              }

              else
              {
                v31 = objc_autoreleasePoolPush();
                v32 = v20;
                v33 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  v34 = HMFGetLogIdentifier();
                  retryCount = [v30 retryCount];
                  *v52 = 138543874;
                  v53 = v34;
                  v54 = 2048;
                  v55 = retryCount;
                  v56 = 2112;
                  v57 = v30;
                  _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Dropping pending request that is still around after %ld retries: %@", v52, 0x20u);
                }

                objc_autoreleasePoolPop(v31);
              }
            }

            v27 = [v25 countByEnumeratingWithState:&v48 objects:buf count:16];
          }

          while (v27);
        }

        [(HMDNotificationRegistry *)v20 _processCharacteristicsRequests:v47];
        [(HMDNotificationRegistry *)v20 _processMediaPropertiesRequests:v46];

        v16 = v44;
        fireCopy = v45;
      }

      else
      {
        if (v22)
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543362;
          v59 = v42;
          _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@No pending requests to process", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v19);
      }
    }
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_processCharacteristicsRequests:(void *)requests
{
  v117 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v84 = v3;
  if (requests && (v5 = v3, v6 = objc_getProperty(requests, v4, 64, 1), dispatch_assert_queue_V2(v6), [v5 count]))
  {
    requestsCopy = requests;
    v88 = [MEMORY[0x277CBEB58] set];
    v87 = +[HMDHAPMetadata getSharedInstance];
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    obj = v84;
    v91 = [obj countByEnumeratingWithState:&v99 objects:v107 count:16];
    if (v91)
    {
      v85 = 0;
      v89 = *v100;
      do
      {
        v7 = 0;
        do
        {
          if (*v100 != v89)
          {
            v8 = v7;
            objc_enumerationMutation(obj);
            v7 = v8;
          }

          v92 = v7;
          v9 = *(*(&v99 + 1) + 8 * v7);
          v10 = objc_autoreleasePoolPush();
          self = requestsCopy;
          v11 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v12 = HMFGetLogIdentifier();
            *buf = 138543618;
            *&buf[4] = v12;
            *&buf[12] = 2112;
            *&buf[14] = v9;
            _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Processing characteristics request: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v10);
          v94 = v9;
          Property = objc_getProperty(self, v13, 64, 1);
          dispatch_assert_queue_V2(Property);
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v16 = [objc_getProperty(self v15];
          v17 = [v16 countByEnumeratingWithState:&v103 objects:buf count:16];
          if (v17)
          {
            v18 = *v104;
            do
            {
              v19 = 0;
              do
              {
                if (*v104 != v18)
                {
                  objc_enumerationMutation(v16);
                }

                v20 = *(*(&v103 + 1) + 8 * v19);
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

                if (v22)
                {
                  userID = [v22 userID];
                  userID2 = [v94 userID];
                  if ([userID isEqualToString:userID2])
                  {
                    accessoryUUID = [v22 accessoryUUID];
                    accessoryUUID2 = [v94 accessoryUUID];
                    v27 = [accessoryUUID isEqual:accessoryUUID2];

                    if (v27)
                    {
                      characteristicInstanceIDs = [v22 characteristicInstanceIDs];
                      characteristicInstanceIDs2 = [v94 characteristicInstanceIDs];
                      [characteristicInstanceIDs minusSet:characteristicInstanceIDs2];

                      characteristicInstanceIDs3 = [v22 characteristicInstanceIDs];
                      v31 = [characteristicInstanceIDs3 count] == 0;

                      v32 = objc_autoreleasePoolPush();
                      v33 = self;
                      v34 = HMFGetOSLogHandle();
                      v35 = os_log_type_enabled(v34, OS_LOG_TYPE_INFO);
                      if (v31)
                      {
                        if (v35)
                        {
                          v37 = HMFGetLogIdentifier();
                          *v108 = 138543618;
                          v109 = v37;
                          v110 = 2112;
                          v111 = v22;
                          _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Removing pending characteristics request that matches a new characteristics request: %@", v108, 0x16u);
                        }

                        objc_autoreleasePoolPop(v32);
                        [objc_getProperty(v33 v38];
                      }

                      else
                      {
                        if (v35)
                        {
                          v36 = HMFGetLogIdentifier();
                          *v108 = 138543618;
                          v109 = v36;
                          v110 = 2112;
                          v111 = v22;
                          _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Updated pending characteristics request: %@", v108, 0x16u);
                        }

                        objc_autoreleasePoolPop(v32);
                      }
                    }
                  }

                  else
                  {
                  }
                }

                ++v19;
              }

              while (v17 != v19);
              v39 = [v16 countByEnumeratingWithState:&v103 objects:buf count:16];
              v17 = v39;
            }

            while (v39);
          }

          home = [(HMDNotificationRegistry *)self home];
          accessoryUUID3 = [v94 accessoryUUID];
          v42 = [home accessoryWithUUID:accessoryUUID3];

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

          if (v44)
          {
            v97[0] = MEMORY[0x277D85DD0];
            v97[1] = 3221225472;
            v97[2] = __59__HMDNotificationRegistry__processCharacteristicsRequests___block_invoke;
            v97[3] = &unk_279723BA0;
            v97[4] = v94;
            v98 = v87;
            v45 = [v44 characteristicsPassingTest:v97];
            v46 = [v45 count];
            characteristicInstanceIDs4 = [v94 characteristicInstanceIDs];
            LOBYTE(v46) = v46 == [characteristicInstanceIDs4 count];

            if (v46)
            {
              enable = [v94 enable];
              userID3 = [v94 userID];
              if (enable)
              {
                v50 = v45;
                v51 = userID3;
                v52 = [(HMDNotificationRegistry *)self _createCharacteristicsMapForCharacteristics:v50];
                if ([v52 count])
                {
                  *&v103 = 0;
                  *(&v103 + 1) = &v103;
                  *&v104 = 0x2020000000;
                  BYTE8(v104) = 0;
                  os_unfair_lock_lock_with_options();
                  *buf = MEMORY[0x277D85DD0];
                  *&buf[8] = 3221225472;
                  *&buf[16] = __72__HMDNotificationRegistry_enableNotificationForCharacteristics_forUser___block_invoke;
                  v113 = &unk_279723AD8;
                  *&v114 = self;
                  *(&v114 + 1) = v51;
                  v115 = &v103;
                  [v52 enumerateKeysAndObjectsUsingBlock:buf];

                  os_unfair_lock_unlock(self + 2);
                  v53 = *(*(&v103 + 1) + 24);
                  _Block_object_dispose(&v103, 8);
                }

                else
                {
                  v53 = 0;
                }

                userID4 = [v94 userID];
                if (v53)
                {
                  v69 = objc_autoreleasePoolPush();
                  v70 = self;
                  v71 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
                  {
                    v95 = HMFGetLogIdentifier();
                    name = [v44 name];
                    uuid = [v44 uuid];
                    uUIDString = [uuid UUIDString];
                    *buf = 138544130;
                    *&buf[4] = v95;
                    *&buf[12] = 2112;
                    *&buf[14] = name;
                    *&buf[22] = 2112;
                    v113 = uUIDString;
                    LOWORD(v114) = 2112;
                    *(&v114 + 2) = v50;
                    _os_log_impl(&dword_2531F8000, v71, OS_LOG_TYPE_INFO, "%{public}@Enabling notification for accessory %@/%@ characteristics %@", buf, 0x2Au);
                  }

                  objc_autoreleasePoolPop(v69);
                  [v44 setNotificationsEnabled:1 forCharacteristics:v50 clientIdentifier:userID4];
                  [v44 updateNotificationEnabled:1 forCharacteristics:v50 onBehalfOf:userID4];
                  v85 = 1;
                }

                else
                {
                  v85 = 0;
                }
              }

              else
              {
                v62 = v45;
                v63 = userID3;
                v64 = [(HMDNotificationRegistry *)self _createCharacteristicsMapForCharacteristics:v62];
                if ([v64 count])
                {
                  array = [MEMORY[0x277CBEB18] array];
                  *&v103 = 0;
                  *(&v103 + 1) = &v103;
                  *&v104 = 0x2020000000;
                  BYTE8(v104) = 0;
                  os_unfair_lock_lock_with_options();
                  *buf = MEMORY[0x277D85DD0];
                  *&buf[8] = 3221225472;
                  *&buf[16] = __104__HMDNotificationRegistry_disableNotificationForCharacteristics_forUser_characteristicsToDisableEvents___block_invoke;
                  v113 = &unk_279723B00;
                  *&v114 = self;
                  *(&v114 + 1) = v63;
                  v66 = array;
                  v115 = v66;
                  v116 = &v103;
                  [v64 enumerateKeysAndObjectsUsingBlock:buf];

                  os_unfair_lock_unlock(self + 2);
                  v67 = v66;
                  v85 = *(*(&v103 + 1) + 24);
                  _Block_object_dispose(&v103, 8);
                }

                else
                {
                  v85 = 0;
                  v66 = MEMORY[0x277CBEBF8];
                }

                userID4 = v66;
                userID5 = [v94 userID];
                if (v85)
                {
                  v76 = objc_autoreleasePoolPush();
                  v77 = self;
                  v78 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
                  {
                    v96 = HMFGetLogIdentifier();
                    name2 = [v44 name];
                    uuid2 = [v44 uuid];
                    uUIDString2 = [uuid2 UUIDString];
                    *buf = 138544130;
                    *&buf[4] = v96;
                    *&buf[12] = 2112;
                    *&buf[14] = name2;
                    *&buf[22] = 2112;
                    v113 = uUIDString2;
                    LOWORD(v114) = 2112;
                    *(&v114 + 2) = userID4;
                    _os_log_impl(&dword_2531F8000, v78, OS_LOG_TYPE_INFO, "%{public}@Disabling notification for accessory %@/%@ characteristics %@", buf, 0x2Au);
                  }

                  objc_autoreleasePoolPop(v76);
                  [v44 setNotificationsEnabled:0 forCharacteristics:userID4 clientIdentifier:userID5];
                  if ([userID4 count])
                  {
                    [v44 updateNotificationEnabled:0 forCharacteristics:userID4 onBehalfOf:userID5];
                  }
                }
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
                *&buf[4] = v61;
                *&buf[12] = 2112;
                *&buf[14] = v94;
                _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_INFO, "%{public}@Cannot find all characteristics for request so adding to pending requests: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v58);
              [v88 addObject:v94];
            }
          }

          else
          {
            v54 = objc_autoreleasePoolPush();
            v55 = self;
            v56 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
            {
              v57 = HMFGetLogIdentifier();
              *buf = 138543618;
              *&buf[4] = v57;
              *&buf[12] = 2112;
              *&buf[14] = v94;
              _os_log_impl(&dword_2531F8000, v56, OS_LOG_TYPE_INFO, "%{public}@Cannot find accessory for characteristics request so adding to pending requests: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v54);
            [v88 addObject:v94];
          }

          v7 = v92 + 1;
        }

        while (v92 + 1 != v91);
        v91 = [obj countByEnumeratingWithState:&v99 objects:v107 count:16];
      }

      while (v91);
    }

    else
    {
      v85 = 0;
    }

    [(HMDNotificationRegistry *)requestsCopy _addPendingRequests:v88];
  }

  else
  {
    v85 = 0;
  }

  v82 = *MEMORY[0x277D85DE8];
  return v85 & 1;
}

- (uint64_t)_processMediaPropertiesRequests:(void *)requests
{
  v126 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v91 = v3;
  if (!requests || (v5 = v3, Property = objc_getProperty(requests, v4, 64, 1), dispatch_assert_queue_V2(Property), ![v5 count]))
  {
    v95 = 0;
    goto LABEL_89;
  }

  requestsCopy = requests;
  v93 = [MEMORY[0x277CBEB58] set];
  v92 = [MEMORY[0x277CBEB58] set];
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  obj = v91;
  v98 = [obj countByEnumeratingWithState:&v107 objects:v115 count:16];
  if (!v98)
  {
    v95 = 0;
    goto LABEL_86;
  }

  v95 = 0;
  v96 = *v108;
  do
  {
    v7 = 0;
    do
    {
      if (*v108 != v96)
      {
        v8 = v7;
        objc_enumerationMutation(obj);
        v7 = v8;
      }

      v99 = v7;
      v9 = *(*(&v107 + 1) + 8 * v7);
      v10 = objc_autoreleasePoolPush();
      self = requestsCopy;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543618;
        v121 = v12;
        v122 = 2112;
        v123 = v9;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Processing media properties request: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v13 = v9;
      v15 = objc_getProperty(self, v14, 64, 1);
      dispatch_assert_queue_V2(v15);
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v104 = [objc_getProperty(self v16];
      v17 = [v104 countByEnumeratingWithState:&v111 objects:buf count:16];
      if (v17)
      {
        v18 = *v112;
        do
        {
          v19 = 0;
          do
          {
            if (*v112 != v18)
            {
              objc_enumerationMutation(v104);
            }

            v20 = *(*(&v111 + 1) + 8 * v19);
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

            if (v22)
            {
              userID = [v22 userID];
              userID2 = [v13 userID];
              if ([userID isEqualToString:userID2])
              {
                mediaProfileUUID = [v22 mediaProfileUUID];
                mediaProfileUUID2 = [v13 mediaProfileUUID];
                v27 = [mediaProfileUUID isEqual:mediaProfileUUID2];

                if (v27)
                {
                  mediaProperties = [v22 mediaProperties];
                  mediaProperties2 = [v13 mediaProperties];
                  [mediaProperties minusSet:mediaProperties2];

                  mediaProperties3 = [v22 mediaProperties];
                  v31 = [mediaProperties3 count] == 0;

                  v32 = objc_autoreleasePoolPush();
                  v33 = self;
                  v34 = HMFGetOSLogHandle();
                  v35 = os_log_type_enabled(v34, OS_LOG_TYPE_INFO);
                  if (v31)
                  {
                    if (v35)
                    {
                      v37 = HMFGetLogIdentifier();
                      *v116 = 138543618;
                      v117 = v37;
                      v118 = 2112;
                      v119 = v22;
                      _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Removing pending media properties request that matches a new media properties request: %@", v116, 0x16u);
                    }

                    objc_autoreleasePoolPop(v32);
                    [objc_getProperty(v33 v38];
                  }

                  else
                  {
                    if (v35)
                    {
                      v36 = HMFGetLogIdentifier();
                      *v116 = 138543618;
                      v117 = v36;
                      v118 = 2112;
                      v119 = v22;
                      _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Updated pending media properties request: %@", v116, 0x16u);
                    }

                    objc_autoreleasePoolPop(v32);
                  }
                }
              }

              else
              {
              }
            }

            ++v19;
          }

          while (v17 != v19);
          v39 = [v104 countByEnumeratingWithState:&v111 objects:buf count:16];
          v17 = v39;
        }

        while (v39);
      }

      home = [(HMDNotificationRegistry *)self home];
      mediaProfileUUID3 = [v13 mediaProfileUUID];
      v100 = [home mediaProfileWithUUID:mediaProfileUUID3];

      if (!v100)
      {
        v65 = objc_autoreleasePoolPush();
        v66 = self;
        v67 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
        {
          v68 = HMFGetLogIdentifier();
          *buf = 138543618;
          v121 = v68;
          v122 = 2112;
          v123 = v13;
          _os_log_impl(&dword_2531F8000, v67, OS_LOG_TYPE_INFO, "%{public}@Cannot find media profile for media properties request so adding to pending requests: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v65);
        [v93 addObject:v13];
        goto LABEL_81;
      }

      mediaProperties4 = [v13 mediaProperties];
      v43 = [mediaProperties4 count] == 0;

      if (v43)
      {
        v69 = objc_autoreleasePoolPush();
        v70 = self;
        v71 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
        {
          v72 = HMFGetLogIdentifier();
          *buf = 138543618;
          v121 = v72;
          v122 = 2112;
          v123 = v13;
          _os_log_impl(&dword_2531F8000, v71, OS_LOG_TYPE_INFO, "%{public}@No media properties exist for request: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v69);
        goto LABEL_81;
      }

      enable = [v13 enable];
      v45 = objc_autoreleasePoolPush();
      v46 = self;
      v47 = HMFGetOSLogHandle();
      v48 = os_log_type_enabled(v47, OS_LOG_TYPE_INFO);
      if (enable)
      {
        if (v48)
        {
          v49 = HMFGetLogIdentifier();
          mediaProperties5 = [v13 mediaProperties];
          *buf = 138543874;
          v121 = v49;
          v122 = 2112;
          v123 = v100;
          v124 = 2112;
          v125 = mediaProperties5;
          _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_INFO, "%{public}@Enabling notification for media profile: %@ media properties: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v45);
        mediaProperties6 = [v13 mediaProperties];
        userID3 = [v13 userID];
        v53 = v100;
        v54 = mediaProperties6;
        v55 = userID3;
        v105 = v54;
        if ([v54 count])
        {
          selfa = v46 + 2;
          os_unfair_lock_lock_with_options();
          v113 = 0u;
          v114 = 0u;
          v111 = 0u;
          v112 = 0u;
          v105 = v54;
          v56 = [v105 countByEnumeratingWithState:&v111 objects:buf count:16];
          if (v56)
          {
            v57 = 0;
            v58 = *v112;
            do
            {
              for (i = 0; i != v56; ++i)
              {
                if (*v112 != v58)
                {
                  objc_enumerationMutation(v105);
                }

                v60 = [(HMDNotificationRegistry *)v46 keyForProperty:v53 mediaProfile:?];
                notificationRegistry = [(HMDNotificationRegistry *)v46 notificationRegistry];
                v62 = [notificationRegistry objectForKeyedSubscript:v60];

                if (!v62)
                {
                  v62 = [MEMORY[0x277CBEB58] set];
                  notificationRegistry2 = [(HMDNotificationRegistry *)v46 notificationRegistry];
                  [notificationRegistry2 setObject:v62 forKeyedSubscript:v60];
                }

                if (([v62 containsObject:{v55, v91}] & 1) == 0)
                {
                  [v62 addObject:v55];
                  v57 = 1;
                }
              }

              v56 = [v105 countByEnumeratingWithState:&v111 objects:buf count:16];
            }

            while (v56);

            os_unfair_lock_unlock(selfa);
            if ((v57 & 1) == 0)
            {
              goto LABEL_50;
            }

LABEL_74:
            uniqueIdentifier = [v100 uniqueIdentifier];
            [v92 addObject:uniqueIdentifier];
            v64 = 1;

            goto LABEL_80;
          }

          os_unfair_lock_unlock(selfa);
        }

        else
        {
        }

LABEL_79:
        v64 = 0;

        goto LABEL_80;
      }

      if (v48)
      {
        v73 = HMFGetLogIdentifier();
        mediaProperties7 = [v13 mediaProperties];
        *buf = 138543874;
        v121 = v73;
        v122 = 2112;
        v123 = v100;
        v124 = 2112;
        v125 = mediaProperties7;
        _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_INFO, "%{public}@Disabling notification for media profile: %@ media properties: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v45);
      mediaProperties8 = [v13 mediaProperties];
      userID4 = [v13 userID];
      v77 = v100;
      v78 = mediaProperties8;
      v79 = userID4;
      v105 = v78;
      if (![v78 count])
      {

        goto LABEL_79;
      }

      selfb = v46 + 2;
      os_unfair_lock_lock_with_options();
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v105 = v78;
      v80 = [v105 countByEnumeratingWithState:&v111 objects:buf count:16];
      if (!v80)
      {

        os_unfair_lock_unlock(selfb);
        goto LABEL_79;
      }

      v81 = 0;
      v82 = *v112;
      do
      {
        for (j = 0; j != v80; ++j)
        {
          if (*v112 != v82)
          {
            objc_enumerationMutation(v105);
          }

          v84 = [(HMDNotificationRegistry *)v46 keyForProperty:v77 mediaProfile:?];
          notificationRegistry3 = [(HMDNotificationRegistry *)v46 notificationRegistry];
          v86 = [notificationRegistry3 objectForKeyedSubscript:v84];

          if (v86)
          {
            if (!v79)
            {
              goto LABEL_69;
            }

            if (![v86 containsObject:v79])
            {
              goto LABEL_71;
            }

            [v86 removeObject:v79];
            if (![v86 count])
            {
LABEL_69:
              notificationRegistry4 = [(HMDNotificationRegistry *)v46 notificationRegistry];
              [notificationRegistry4 removeObjectForKey:v84];
            }

            v81 = 1;
          }

LABEL_71:
        }

        v80 = [v105 countByEnumeratingWithState:&v111 objects:buf count:16];
      }

      while (v80);

      os_unfair_lock_unlock(selfb);
      if (v81)
      {
        goto LABEL_74;
      }

LABEL_50:
      v64 = 0;
LABEL_80:
      v95 |= v64;
LABEL_81:

      v7 = v99 + 1;
    }

    while (v99 + 1 != v98);
    v98 = [obj countByEnumeratingWithState:&v107 objects:v115 count:16];
  }

  while (v98);
LABEL_86:

  [(HMDNotificationRegistry *)requestsCopy _addPendingRequests:v93];
  if ([v92 count])
  {
    allObjects = [v92 allObjects];
    [(HMDNotificationRegistry *)requestsCopy notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles:allObjects];
  }

LABEL_89:
  v89 = *MEMORY[0x277D85DE8];
  return v95 & 1;
}

- (id)home
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 7);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)_addPendingRequests:(void *)requests
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  Property = objc_getProperty(requests, v4, 64, 1);
  dispatch_assert_queue_V2(Property);
  if ([v3 count])
  {
    [objc_getProperty(requests v6];
    v7 = objc_autoreleasePoolPush();
    requestsCopy = requests;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Resuming pending requests timer", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [objc_getProperty(requestsCopy v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles:(uint64_t)profiles
{
  v3 = a2;
  if (profiles)
  {
    os_unfair_lock_lock_with_options();
    v4 = [*(profiles + 24) copy];
    os_unfair_lock_unlock((profiles + 8));
    allObjects = [v4 allObjects];

    objc_initWeak(&location, profiles);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __81__HMDNotificationRegistry_notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles___block_invoke;
    v6[3] = &unk_279723BC8;
    objc_copyWeak(&v8, &location);
    v7 = v3;
    [allObjects na_each:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __81__HMDNotificationRegistry_notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      WeakRetained = objc_getProperty(WeakRetained, v5, 64, 1);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__HMDNotificationRegistry_notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles___block_invoke_2;
    block[3] = &unk_279732670;
    v7 = WeakRetained;
    objc_copyWeak(&v11, (a1 + 40));
    v9 = v3;
    v10 = *(a1 + 32);
    dispatch_async(v7, block);

    objc_destroyWeak(&v11);
  }
}

void __81__HMDNotificationRegistry_notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = *(a1 + 32);
    v9 = 138543618;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@About to notify delegate of mediaPropertyRegistrationsDidChange %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [*(a1 + 32) mediaPropertyRegistrationsDidChangeForMediaProfiles:*(a1 + 40)];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)keyForProperty:(void *)property mediaProfile:
{
  if (self)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = a2;
    uniqueIdentifier = [property uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    v8 = [v4 stringWithFormat:@"%@:%@", uUIDString, v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (os_unfair_lock)notificationRegistry
{
  if (self)
  {
    selfCopy = self;
    os_unfair_lock_assert_owner(self + 2);
    self = *&selfCopy[4]._os_unfair_lock_opaque;
    v1 = vars8;
  }

  return self;
}

uint64_t __59__HMDNotificationRegistry__processCharacteristicsRequests___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 type];
  v5 = [v3 service];
  v6 = [v5 type];

  v7 = [*(a1 + 32) characteristicInstanceIDs];
  v8 = [v3 instanceID];

  if ([v7 containsObject:v8])
  {
    v9 = [*(a1 + 40) shouldFilterChangeNotificationsForCharacteristicType:v4 serviceType:v6] ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_createCharacteristicsMapForCharacteristics:(uint64_t)characteristics
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if ([v2 count])
  {
    v19 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v2, "count")}];
    v3 = +[HMDHAPMetadata getSharedInstance];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v18 = v2;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v22;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v21 + 1) + 8 * i);
          type = [v9 type];
          service = [v9 service];
          type2 = [service type];
          v13 = [v3 shouldFilterEnableNotificationsForCharacteristicType:type serviceType:type2];

          if ((v13 & 1) == 0)
          {
            v14 = [(HMDNotificationRegistry *)characteristics keyForCharacteristic:v9];
            if (v14)
            {
              [v19 setObject:v9 forKeyedSubscript:v14];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v6);
    }

    v15 = [v19 copy];
    v2 = v18;
  }

  else
  {
    v15 = MEMORY[0x277CBEC10];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __104__HMDNotificationRegistry_disableNotificationForCharacteristics_forUser_characteristicsToDisableEvents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [(HMDNotificationRegistry *)*(a1 + 32) notificationRegistry];
  v7 = [v6 objectForKeyedSubscript:v9];

  if ([v7 containsObject:*(a1 + 40)])
  {
    [v7 removeObject:*(a1 + 40)];
    [*(a1 + 48) addObject:v5];
    if (![v7 count])
    {
      v8 = [(HMDNotificationRegistry *)*(a1 + 32) notificationRegistry];
      [v8 removeObjectForKey:v9];
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

- (id)keyForCharacteristic:(uint64_t)characteristic
{
  v3 = a2;
  v4 = v3;
  if (characteristic)
  {
    accessory = [v3 accessory];
    v6 = accessory;
    if (accessory)
    {
      v7 = MEMORY[0x277CCACA8];
      uuid = [accessory uuid];
      uUIDString = [uuid UUIDString];
      instanceID = [v4 instanceID];
      stringValue = [instanceID stringValue];
      v12 = [v7 stringWithFormat:@"%@:%@", uUIDString, stringValue];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __72__HMDNotificationRegistry_enableNotificationForCharacteristics_forUser___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [(HMDNotificationRegistry *)*(a1 + 32) notificationRegistry];
  v4 = [v3 objectForKeyedSubscript:v6];

  if (!v4)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    v5 = [(HMDNotificationRegistry *)*(a1 + 32) notificationRegistry];
    [v5 setObject:v4 forKeyedSubscript:v6];
  }

  if (([v4 containsObject:*(a1 + 40)] & 1) == 0)
  {
    [v4 addObject:*(a1 + 40)];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (id)logIdentifier
{
  home = [(HMDNotificationRegistry *)&self->super.super.isa home];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)addDelegate:(id)delegate
{
  v14 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = delegateCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@adding delegate %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  [(NSHashTable *)selfCopy->_delegates addObject:delegateCopy];
  os_unfair_lock_unlock(&selfCopy->_lock);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  os_unfair_lock_lock_with_options();
  v5 = MEMORY[0x277CBEB38];
  notificationRegistry = [(HMDNotificationRegistry *)self notificationRegistry];
  v7 = [v5 dictionaryWithCapacity:{objc_msgSend(notificationRegistry, "count")}];

  notificationRegistry2 = [(HMDNotificationRegistry *)self notificationRegistry];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__HMDNotificationRegistry_encodeWithCoder___block_invoke;
  v10[3] = &unk_279723B50;
  v9 = v7;
  v11 = v9;
  [notificationRegistry2 enumerateKeysAndObjectsUsingBlock:v10];

  os_unfair_lock_unlock(&self->_lock);
  [coderCopy encodeObject:v9 forKey:@"notificationAndUsersRegistry"];
}

void __43__HMDNotificationRegistry_encodeWithCoder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 copy];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (HMDNotificationRegistry)initWithCoder:(id)coder
{
  v28[3] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v22 = [(HMDNotificationRegistry *)self init];
  if (v22)
  {
    v5 = MEMORY[0x277CBEB98];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v28[2] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
    v7 = [v5 setWithArray:v6];

    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"notificationAndUsersRegistry"];
    if (!v8)
    {
      v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"characteristicNotificationAndUsersRegistry"];
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = [v8 allKeys];
    v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          v14 = [v8 objectForKeyedSubscript:v13];
          v15 = MEMORY[0x277CBEB58];
          allObjects = [v14 allObjects];
          v17 = [v15 setWithArray:allObjects];
          [(NSMutableDictionary *)v22->_notificationRegistry setObject:v17 forKeyedSubscript:v13];
        }

        v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v22;
}

- (BOOL)setNotificationsEnabled:(BOOL)enabled forUserID:(id)d characteristicsPayload:(id)payload mediaPropertiesPayload:(id)propertiesPayload
{
  enabledCopy = enabled;
  v114 = *MEMORY[0x277D85DE8];
  dCopy = d;
  payloadCopy = payload;
  propertiesPayloadCopy = propertiesPayload;
  if (self)
  {
    Property = objc_getProperty(self, v10, 64, 1);
  }

  else
  {
    Property = 0;
  }

  dispatch_assert_queue_V2(Property);
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  v95 = selfCopy;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = HMFBooleanToString();
    *buf = 138543874;
    v109 = v15;
    v110 = 2112;
    v111 = v16;
    v112 = 2112;
    v113 = dCopy;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Setting notifications enabled to %@ for userID: %@", buf, 0x20u);

    selfCopy = v95;
  }

  objc_autoreleasePoolPop(v12);
  v90 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(payloadCopy, "count")}];
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v17 = payloadCopy;
  v18 = [v17 countByEnumeratingWithState:&v102 objects:v107 count:16];
  v88 = v17;
  if (v18)
  {
    v19 = v18;
    v96 = *v103;
    do
    {
      v20 = 0;
      v91 = v19;
      do
      {
        if (*v103 != v96)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v102 + 1) + 8 * v20);
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

        if (v23)
        {
          v24 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v23];
          v25 = v24;
          if (v24)
          {
            uUIDString = [v24 UUIDString];
            v27 = [v17 objectForKeyedSubscript:uUIDString];

            v28 = v27;
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
              v31 = [[HMDNotificationRegistryCharacteristicsRequest alloc] initWithEnable:enabledCopy userID:dCopy accessoryUUID:v25];
              characteristicInstanceIDs = [(HMDNotificationRegistryCharacteristicsRequest *)v31 characteristicInstanceIDs];
              [characteristicInstanceIDs addObjectsFromArray:v30];

              [v90 addObject:v31];
            }

            else
            {
              v43 = objc_autoreleasePoolPush();
              v44 = selfCopy;
              v45 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
              {
                v46 = HMFGetLogIdentifier();
                v47 = objc_opt_class();
                *buf = 138543874;
                v109 = v46;
                v110 = 2112;
                v111 = v28;
                v112 = 2112;
                v113 = v47;
                v48 = v47;
                _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_INFO, "%{public}@Ignoring notification registration characteristics payload value that is not an array: %@)%@)", buf, 0x20u);

                selfCopy = v95;
              }

              objc_autoreleasePoolPop(v43);
              v17 = v88;
              v19 = v91;
            }
          }

          else
          {
            v39 = objc_autoreleasePoolPush();
            v40 = selfCopy;
            v41 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
            {
              v42 = HMFGetLogIdentifier();
              *buf = 138543618;
              v109 = v42;
              v110 = 2112;
              v111 = v23;
              _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_INFO, "%{public}@Ignoring accessory UUID string that cannot be converted in a UUID: %@", buf, 0x16u);

              selfCopy = v95;
            }

            objc_autoreleasePoolPop(v39);
          }
        }

        else
        {
          v33 = objc_autoreleasePoolPush();
          v34 = selfCopy;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = HMFGetLogIdentifier();
            v37 = objc_opt_class();
            *buf = 138543874;
            v109 = v36;
            v110 = 2112;
            v111 = v21;
            v112 = 2112;
            v113 = v37;
            v38 = v37;
            _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Ignoring notification registration characteristics payload key that is not a string: %@ (%@)", buf, 0x20u);

            selfCopy = v95;
          }

          objc_autoreleasePoolPop(v33);
        }

        ++v20;
      }

      while (v19 != v20);
      v19 = [v17 countByEnumeratingWithState:&v102 objects:v107 count:16];
    }

    while (v19);
  }

  v89 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(propertiesPayloadCopy, "count")}];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v49 = propertiesPayloadCopy;
  v97 = [v49 countByEnumeratingWithState:&v98 objects:v106 count:16];
  if (v97)
  {
    v50 = *v99;
    v92 = *v99;
    do
    {
      for (i = 0; i != v97; ++i)
      {
        if (*v99 != v50)
        {
          objc_enumerationMutation(v49);
        }

        v52 = *(*(&v98 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v53 = v52;
        }

        else
        {
          v53 = 0;
        }

        v54 = v53;

        if (v54)
        {
          v55 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v54];
          v56 = v55;
          if (v55)
          {
            uUIDString2 = [v55 UUIDString];
            v58 = v49;
            v59 = [v49 objectForKeyedSubscript:uUIDString2];

            v60 = v59;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v61 = v60;
            }

            else
            {
              v61 = 0;
            }

            v62 = v61;

            if (v62)
            {
              v63 = [[HMDNotificationRegistryMediaPropertiesRequest alloc] initWithEnable:enabledCopy userID:dCopy mediaProfileUUID:v56];
              mediaProperties = [(HMDNotificationRegistryMediaPropertiesRequest *)v63 mediaProperties];
              [mediaProperties addObjectsFromArray:v62];

              [v89 addObject:v63];
            }

            else
            {
              v75 = objc_autoreleasePoolPush();
              v76 = selfCopy;
              v77 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
              {
                v78 = HMFGetLogIdentifier();
                v79 = objc_opt_class();
                *buf = 138543874;
                v109 = v78;
                v110 = 2112;
                v111 = v60;
                v112 = 2112;
                v113 = v79;
                v87 = v75;
                v80 = v79;
                _os_log_impl(&dword_2531F8000, v77, OS_LOG_TYPE_INFO, "%{public}@Ignoring notification registration media properties payload value that is not an array: %@ (%@)", buf, 0x20u);

                v75 = v87;
              }

              objc_autoreleasePoolPop(v75);
              selfCopy = v95;
            }

            v49 = v58;
            v50 = v92;
          }

          else
          {
            v71 = objc_autoreleasePoolPush();
            v72 = selfCopy;
            v73 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
            {
              v74 = HMFGetLogIdentifier();
              *buf = 138543618;
              v109 = v74;
              v110 = 2112;
              v111 = v54;
              _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_INFO, "%{public}@Ignoring media profile UUID string that cannot be converted in a UUID: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v71);
            selfCopy = v95;
          }
        }

        else
        {
          v65 = objc_autoreleasePoolPush();
          v66 = selfCopy;
          v67 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
          {
            v68 = HMFGetLogIdentifier();
            v69 = objc_opt_class();
            *buf = 138543874;
            v109 = v68;
            v110 = 2112;
            v111 = v52;
            v112 = 2112;
            v113 = v69;
            v70 = v69;
            _os_log_impl(&dword_2531F8000, v67, OS_LOG_TYPE_INFO, "%{public}@Ignoring notification registration media properties payload key that is not a string: %@ (%@)", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v65);
        }
      }

      v97 = [v49 countByEnumeratingWithState:&v98 objects:v106 count:16];
    }

    while (v97);
  }

  home = [(HMDNotificationRegistry *)&selfCopy->super.super.isa home];
  v82 = [(HMDNotificationRegistry *)selfCopy _processCharacteristicsRequests:v90];
  v83 = v82 | [(HMDNotificationRegistry *)selfCopy _processMediaPropertiesRequests:v89];
  if (v83)
  {
    [home saveToCurrentAccountWithReason:@"kModifyCharacterisiticNotificationsRequestKey"];
  }

  v84 = *MEMORY[0x277D85DE8];
  return v83 & 1;
}

- (void)removeAllReachabilityEventNotificationRegistrations
{
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  notificationRegistry = [(HMDNotificationRegistry *)self notificationRegistry];
  allKeys = [notificationRegistry allKeys];

  v5 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 containsString:@":ReachabilityEventNotification"])
        {
          notificationRegistry2 = [(HMDNotificationRegistry *)self notificationRegistry];
          [notificationRegistry2 setObject:0 forKeyedSubscript:v8];
        }
      }

      v5 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_lock);
  v10 = *MEMORY[0x277D85DE8];
}

- (id)userIDsRegisteredForReachabilityEventNotificationsForAccessoryUUIDs:(id)ds
{
  v21 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v5 = [MEMORY[0x277CBEB58] set];
  os_unfair_lock_lock_with_options();
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = dsCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [(HMDNotificationRegistry *)self _reachabilityEventNotificationRegistryKeyForAccessoryUUID:?];
        notificationRegistry = [(HMDNotificationRegistry *)self notificationRegistry];
        v12 = [notificationRegistry objectForKeyedSubscript:{v10, v16}];

        if (v12)
        {
          [v5 unionSet:v12];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_lock);
  v13 = [v5 copy];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_reachabilityEventNotificationRegistryKeyForAccessoryUUID:(uint64_t)d
{
  if (d)
  {
    v2 = MEMORY[0x277CCACA8];
    uUIDString = [a2 UUIDString];
    v4 = [v2 stringWithFormat:@"%@%@", uUIDString, @":ReachabilityEventNotification"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)disableReachabilityEventNotificationForAccessoryUUIDs:(id)ds forUserID:(id)d
{
  dsCopy = ds;
  dCopy = d;
  v8 = [(HMDNotificationRegistry *)self _reachabilityEventNotificationRegistryKeysForAccessoryUUIDs:dsCopy];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  os_unfair_lock_lock_with_options();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__HMDNotificationRegistry_disableReachabilityEventNotificationForAccessoryUUIDs_forUserID___block_invoke;
  v11[3] = &unk_279723B78;
  v11[4] = self;
  v9 = dCopy;
  v12 = v9;
  v13 = &v14;
  [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:v11];

  os_unfair_lock_unlock(&self->_lock);
  LOBYTE(self) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return self;
}

- (id)_reachabilityEventNotificationRegistryKeysForAccessoryUUIDs:(void *)ds
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (ds)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [(HMDNotificationRegistry *)ds _reachabilityEventNotificationRegistryKeyForAccessoryUUID:?];
          [v4 addObject:{v10, v13}];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    ds = [v4 copy];
  }

  v11 = *MEMORY[0x277D85DE8];

  return ds;
}

void __91__HMDNotificationRegistry_disableReachabilityEventNotificationForAccessoryUUIDs_forUserID___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [(HMDNotificationRegistry *)*(a1 + 32) notificationRegistry];
  v4 = [v3 objectForKeyedSubscript:v6];

  if (v4)
  {
    if (!*(a1 + 40))
    {
      goto LABEL_5;
    }

    if (![v4 containsObject:?])
    {
      goto LABEL_7;
    }

    [v4 removeObject:*(a1 + 40)];
    if (![v4 count])
    {
LABEL_5:
      v5 = [(HMDNotificationRegistry *)*(a1 + 32) notificationRegistry];
      [v5 setObject:0 forKeyedSubscript:v6];
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

LABEL_7:
}

- (BOOL)enableReachabilityEventNotificationForAccessoryUUIDs:(id)ds forUserID:(id)d
{
  dsCopy = ds;
  dCopy = d;
  v8 = [(HMDNotificationRegistry *)self _reachabilityEventNotificationRegistryKeysForAccessoryUUIDs:dsCopy];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  os_unfair_lock_lock_with_options();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __90__HMDNotificationRegistry_enableReachabilityEventNotificationForAccessoryUUIDs_forUserID___block_invoke;
  v11[3] = &unk_279723B78;
  v11[4] = self;
  v9 = dCopy;
  v12 = v9;
  v13 = &v14;
  [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:v11];

  os_unfair_lock_unlock(&self->_lock);
  LOBYTE(self) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return self;
}

void __90__HMDNotificationRegistry_enableReachabilityEventNotificationForAccessoryUUIDs_forUserID___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [(HMDNotificationRegistry *)*(a1 + 32) notificationRegistry];
  v4 = [v3 objectForKeyedSubscript:v6];

  if (!v4)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    v5 = [(HMDNotificationRegistry *)*(a1 + 32) notificationRegistry];
    [v5 setObject:v4 forKeyedSubscript:v6];
  }

  if (([v4 containsObject:*(a1 + 40)] & 1) == 0)
  {
    [v4 addObject:*(a1 + 40)];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (void)storeCHIPRemoteSubscriberWithRemoteSourceID:(id)d
{
  if (d)
  {
    dCopy = d;
    chipRemoteSubscribers = [(HMDNotificationRegistry *)self chipRemoteSubscribers];

    if (!chipRemoteSubscribers)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [(HMDNotificationRegistry *)self setChipRemoteSubscribers:v6];
    }

    chipRemoteSubscribers2 = [(HMDNotificationRegistry *)self chipRemoteSubscribers];
    [chipRemoteSubscribers2 addObject:dCopy];
  }
}

- (void)auditUsersForNotifications:(id)notifications forHome:(id)home
{
  v78 = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  homeCopy = home;
  v47 = isiOSDevice();
  v5 = +[HMDDeviceCapabilities deviceCapabilities];
  isResidentCapable = [v5 isResidentCapable];

  v6 = [MEMORY[0x277CBEB58] set];
  os_unfair_lock_lock_with_options();
  notificationRegistry = [(HMDNotificationRegistry *)self notificationRegistry];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __62__HMDNotificationRegistry_auditUsersForNotifications_forHome___block_invoke;
  v54[3] = &unk_279723B50;
  v37 = v6;
  v55 = v37;
  [notificationRegistry enumerateKeysAndObjectsUsingBlock:v54];

  [v37 minusSet:notificationsCopy];
  if ([v37 count])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v75 = v10;
      v76 = 2112;
      v77 = v37;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Users %@ are not associated with this phone anymore. Deregistering them from notification registry", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v11 = v37;
    v44 = homeCopy;
    if (self)
    {
      os_unfair_lock_assert_owner(&self->_lock);
      array = [MEMORY[0x277CBEB18] array];
      array2 = [MEMORY[0x277CBEB18] array];
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      notificationRegistry2 = [(HMDNotificationRegistry *)self notificationRegistry];
      obj = [notificationRegistry2 allKeys];

      v42 = [obj countByEnumeratingWithState:&v64 objects:buf count:16];
      if (v42)
      {
        v41 = *v65;
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v65 != v41)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v64 + 1) + 8 * i);
            notificationRegistry3 = [(HMDNotificationRegistry *)self notificationRegistry];
            v48 = v13;
            v49 = [notificationRegistry3 objectForKeyedSubscript:v13];

            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v15 = [v49 copy];
            v16 = [v15 countByEnumeratingWithState:&v60 objects:v73 count:16];
            if (v16)
            {
              v17 = *v61;
              do
              {
                for (j = 0; j != v16; ++j)
                {
                  if (*v61 != v17)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v19 = *(*(&v60 + 1) + 8 * j);
                  v20 = IDSCopyRawAddressForDestination();
                  if (([v11 containsObject:v20] & 1) != 0 || objc_msgSend(v11, "containsObject:", v19))
                  {
                    v21 = objc_autoreleasePoolPush();
                    v22 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                    {
                      v23 = HMFGetLogIdentifier();
                      *v69 = 138543874;
                      *&v69[4] = v23;
                      *&v69[12] = 2112;
                      *&v69[14] = v19;
                      *&v69[22] = 2112;
                      v70 = v48;
                      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Removing user %@ from notification registry for acc-uuid:iid %@", v69, 0x20u);
                    }

                    objc_autoreleasePoolPop(v21);
                    [v49 removeObject:v19];
                    if (v47)
                    {
                      aBlock[0] = MEMORY[0x277D85DD0];
                      aBlock[1] = 3221225472;
                      aBlock[2] = __99__HMDNotificationRegistry__delayedBlocksCollectedWhileDeregisteringUsers_forHome_isiOS_isResident___block_invoke;
                      aBlock[3] = &unk_279734870;
                      aBlock[4] = self;
                      aBlock[5] = v48;
                      aBlock[6] = v19;
                      v59 = v44;
                      v24 = _Block_copy(aBlock);
                      [array addObject:v24];
                    }
                  }
                }

                v16 = [v15 countByEnumeratingWithState:&v60 objects:v73 count:16];
              }

              while (v16);
            }

            if (![v49 count])
            {
              if (isResidentCapable)
              {
                v56[0] = MEMORY[0x277D85DD0];
                v56[1] = 3221225472;
                v56[2] = __99__HMDNotificationRegistry__delayedBlocksCollectedWhileDeregisteringUsers_forHome_isiOS_isResident___block_invoke_2;
                v56[3] = &unk_279734960;
                v56[4] = self;
                v56[5] = v48;
                v57 = v44;
                v25 = _Block_copy(v56);
                [array addObject:v25];
              }

              [array2 addObject:{v48, homeCopy}];
              notificationRegistry4 = [(HMDNotificationRegistry *)self notificationRegistry];
              [notificationRegistry4 removeObjectForKey:v48];
            }
          }

          v42 = [obj countByEnumeratingWithState:&v64 objects:buf count:16];
        }

        while (v42);
      }

      *v69 = MEMORY[0x277D85DD0];
      *&v69[8] = 3221225472;
      *&v69[16] = __99__HMDNotificationRegistry__delayedBlocksCollectedWhileDeregisteringUsers_forHome_isiOS_isResident___block_invoke_3;
      v70 = &unk_2797359B0;
      selfCopy = self;
      v72 = array2;
      v27 = array2;
      v28 = _Block_copy(v69);
      [array addObject:v28];

      v29 = [array copy];
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v30 = v29;
  v31 = [v30 countByEnumeratingWithState:&v50 objects:v68 count:16];
  if (v31)
  {
    v32 = *v51;
    do
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v51 != v32)
        {
          objc_enumerationMutation(v30);
        }

        (*(*(*(&v50 + 1) + 8 * k) + 16))();
      }

      v31 = [v30 countByEnumeratingWithState:&v50 objects:v68 count:16];
    }

    while (v31);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __99__HMDNotificationRegistry__delayedBlocksCollectedWhileDeregisteringUsers_forHome_isiOS_isResident___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) copy];
  [(HMDNotificationRegistry *)v1 notifyDelegatesIfKeysAreMediaRelated:v2];
}

- (void)notifyDelegatesIfKeysAreMediaRelated:(uint64_t)related
{
  if (related)
  {
    v3 = MEMORY[0x277CBEB98];
    v4 = [a2 na_map:&__block_literal_global_20604];
    v6 = [v3 setWithArray:v4];

    if ([v6 count])
    {
      allObjects = [v6 allObjects];
      [(HMDNotificationRegistry *)related notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles:allObjects];
    }
  }
}

id __64__HMDNotificationRegistry_notifyDelegatesIfKeysAreMediaRelated___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 componentsSeparatedByString:@":"];
  if ([v2 count] == 2)
  {
    v3 = objc_alloc(MEMORY[0x277CCAD78]);
    v4 = [v2 objectAtIndexedSubscript:0];
    v5 = [v3 initWithUUIDString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)disableNotification:(void *)notification user:(void *)user home:
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a2;
  notificationCopy = notification;
  userCopy = user;
  if (self)
  {
    v10 = [v7 componentsSeparatedByString:@":"];
    if ([v10 count] == 2)
    {
      v11 = objc_alloc(MEMORY[0x277CCAD78]);
      v12 = [v10 objectAtIndexedSubscript:0];
      v13 = [v11 initWithUUIDString:v12];

      v14 = [userCopy accessoryWithUUID:v13];
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
        v17 = MEMORY[0x277CCABB0];
        v18 = [v10 objectAtIndexedSubscript:1];
        v19 = [v17 numberWithInteger:{objc_msgSend(v18, "integerValue")}];

        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __57__HMDNotificationRegistry_disableNotification_user_home___block_invoke;
        v27[3] = &unk_279733D48;
        v20 = v19;
        v28 = v20;
        v21 = [v16 characteristicsPassingTest:v27];
        v22 = objc_autoreleasePoolPush();
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v24 = v26 = v13;
          *buf = 138543874;
          v30 = v24;
          v31 = 2112;
          v32 = notificationCopy;
          v33 = 2112;
          v34 = v21;
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Deregistering client %@ for notification for characteristics %@", buf, 0x20u);

          v13 = v26;
        }

        objc_autoreleasePoolPop(v22);
        [v16 setNotificationsEnabled:0 forCharacteristics:v21 clientIdentifier:notificationCopy];
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __57__HMDNotificationRegistry_disableNotification_user_home___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 instanceID];
  v4 = [v2 isEqualToNumber:v3];

  return v4;
}

- (id)usersRegisteredForNotificationsForProperties:(id)properties
{
  v26 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v19 = [MEMORY[0x277CBEB58] set];
  if ([propertiesCopy count])
  {
    v17 = 8;
    os_unfair_lock_lock_with_options();
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = propertiesCopy;
    v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v4)
    {
      v5 = *v22;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v22 != v5)
          {
            objc_enumerationMutation(obj);
          }

          request = [*(*(&v21 + 1) + 8 * i) request];
          property = [request property];
          mediaProfile = [request mediaProfile];
          if (mediaProfile)
          {
            v10 = [(HMDNotificationRegistry *)self keyForProperty:property mediaProfile:mediaProfile];
            notificationRegistry = [(HMDNotificationRegistry *)self notificationRegistry];
            v12 = [notificationRegistry objectForKeyedSubscript:v10];

            if (v12)
            {
              allObjects = [v12 allObjects];
              [v19 addObjectsFromArray:allObjects];
            }
          }
        }

        v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v4);
    }

    os_unfair_lock_unlock((self + v17));
  }

  v14 = [v19 copy];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)usersRegisteredForNotificationsForCharacteristics:(id)characteristics
{
  v22 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  v5 = [MEMORY[0x277CBEB58] set];
  if ([characteristicsCopy count])
  {
    os_unfair_lock_lock_with_options();
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = characteristicsCopy;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [(HMDNotificationRegistry *)self keyForCharacteristic:?];
          notificationRegistry = [(HMDNotificationRegistry *)self notificationRegistry];
          v12 = [notificationRegistry objectForKeyedSubscript:v10];

          if (v12)
          {
            allObjects = [v12 allObjects];
            [v5 addObjectsFromArray:allObjects];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  v14 = [v5 copy];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)propertiesRegisteredForMediaProfileUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  notificationRegistry = [(HMDNotificationRegistry *)self notificationRegistry];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__HMDNotificationRegistry_propertiesRegisteredForMediaProfileUniqueIdentifier___block_invoke;
  v9[3] = &unk_279723B28;
  v6 = identifierCopy;
  v10 = v6;
  v7 = [notificationRegistry na_map:v9];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

id __79__HMDNotificationRegistry_propertiesRegisteredForMediaProfileUniqueIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 componentsSeparatedByString:@":"];
  if ([v3 count] == 2)
  {
    v4 = objc_alloc(MEMORY[0x277CCAD78]);
    v5 = [v3 objectAtIndexedSubscript:0];
    v6 = [v4 initWithUUIDString:v5];

    v7 = [*(a1 + 32) hmf_isEqualToUUID:v6];
    v8 = 0;
    if (v7)
    {
      v8 = [v3 objectAtIndexedSubscript:1];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)filterProperties:(id)properties forUser:(id)user
{
  v30 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  userCopy = user;
  v20 = propertiesCopy;
  if ([propertiesCopy count])
  {
    v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(propertiesCopy, "count")}];
    v19 = 8;
    os_unfair_lock_lock_with_options();
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = propertiesCopy;
    v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v6)
    {
      v7 = *v26;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v26 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v25 + 1) + 8 * i);
          request = [v9 request];
          property = [request property];
          mediaProfile = [request mediaProfile];
          if (mediaProfile)
          {
            v13 = [(HMDNotificationRegistry *)self keyForProperty:property mediaProfile:mediaProfile];
            notificationRegistry = [(HMDNotificationRegistry *)self notificationRegistry];
            v15 = [notificationRegistry objectForKeyedSubscript:v13];

            if ([v15 containsObject:userCopy])
            {
              [v21 addObject:v9];
            }
          }
        }

        v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v6);
    }

    os_unfair_lock_unlock((self + v19));
    v16 = [v21 copy];
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)filterCharacteristics:(id)characteristics forUser:(id)user
{
  v26 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  userCopy = user;
  v19 = characteristicsCopy;
  if ([characteristicsCopy count])
  {
    array = [MEMORY[0x277CBEB18] array];
    os_unfair_lock_lock_with_options();
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = characteristicsCopy;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = [(HMDNotificationRegistry *)self keyForCharacteristic:v12];
          if (v13)
          {
            notificationRegistry = [(HMDNotificationRegistry *)self notificationRegistry];
            v15 = [notificationRegistry objectForKeyedSubscript:v13];

            if ([v15 containsObject:userCopy])
            {
              [array addObject:v12];
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    os_unfair_lock_unlock(&self->_lock);
    v16 = [array copy];
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (BOOL)removeRegistrationsForMediaProfile:(id)profile
{
  v27 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  os_unfair_lock_lock_with_options();
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  notificationRegistry = [(HMDNotificationRegistry *)self notificationRegistry];
  allKeys = [notificationRegistry allKeys];

  v7 = [allKeys countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (!v7)
  {

    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_16;
  }

  v8 = 0;
  v9 = *v22;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v22 != v9)
      {
        objc_enumerationMutation(allKeys);
      }

      v11 = *(*(&v21 + 1) + 8 * i);
      if (self)
      {
        uniqueIdentifier = [profileCopy uniqueIdentifier];
        uUIDString = [uniqueIdentifier UUIDString];

        if (uUIDString)
        {
          v14 = [v11 hasPrefix:uUIDString];

          if (!v14)
          {
            continue;
          }

          notificationRegistry2 = [(HMDNotificationRegistry *)self notificationRegistry];
          [notificationRegistry2 removeObjectForKey:v11];
          v8 = 1;
          v11 = notificationRegistry2;
        }
      }
    }

    v7 = [allKeys countByEnumeratingWithState:&v21 objects:v26 count:16];
  }

  while (v7);

  os_unfair_lock_unlock(&self->_lock);
  if ((v8 & 1) == 0)
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  uniqueIdentifier2 = [profileCopy uniqueIdentifier];
  v25 = uniqueIdentifier2;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  [(HMDNotificationRegistry *)self notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles:v17];

  v18 = 1;
LABEL_17:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)removeRegistrationsForCharacteristics:(id)characteristics
{
  v17 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  os_unfair_lock_lock_with_options();
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = characteristicsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [(HMDNotificationRegistry *)self keyForCharacteristic:?];
        if (v9)
        {
          notificationRegistry = [(HMDNotificationRegistry *)self notificationRegistry];
          [notificationRegistry setObject:0 forKeyedSubscript:{v9, v12}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  v11 = *MEMORY[0x277D85DE8];
}

- (id)shortDescription
{
  os_unfair_lock_lock_with_options();
  notificationRegistry = [(HMDNotificationRegistry *)self notificationRegistry];
  shortDescription = [notificationRegistry shortDescription];

  os_unfair_lock_unlock(&self->_lock);

  return shortDescription;
}

- (void)clearAllRegistrations
{
  os_unfair_lock_lock_with_options();
  notificationRegistry = [(HMDNotificationRegistry *)self notificationRegistry];
  allKeys = [notificationRegistry allKeys];

  notificationRegistry2 = [(HMDNotificationRegistry *)self notificationRegistry];
  [notificationRegistry2 removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
  [(HMDNotificationRegistry *)self notifyDelegatesIfKeysAreMediaRelated:allKeys];
}

- (void)configureWithHome:(id)home
{
  obj = home;
  os_unfair_lock_lock_with_options();
  if (self)
  {
    objc_storeWeak(&self->_home, obj);
  }

  workQueue = [obj workQueue];
  v6 = workQueue;
  if (self)
  {
    objc_setProperty_atomic(self, v5, workQueue, 64);

    Property = objc_getProperty(self, v7, 40, 1);
  }

  else
  {

    Property = 0;
  }

  v9 = Property;
  [v9 setDelegate:self];

  if (self)
  {
    v11 = objc_getProperty(self, v10, 64, 1);
    v13 = objc_getProperty(self, v12, 40, 1);
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = v13;
  [v14 setDelegateQueue:v11];

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDNotificationRegistry)initWithPendingRequestsRetryTimer:(id)timer
{
  timerCopy = timer;
  v15.receiver = self;
  v15.super_class = HMDNotificationRegistry;
  v6 = [(HMDNotificationRegistry *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_pendingRequestsRetryTimer, timer);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    notificationRegistry = v7->_notificationRegistry;
    v7->_notificationRegistry = dictionary;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    delegates = v7->_delegates;
    v7->_delegates = weakObjectsHashTable;

    v12 = [MEMORY[0x277CBEB58] set];
    pendingRequests = v7->_pendingRequests;
    v7->_pendingRequests = v12;
  }

  return v7;
}

- (HMDNotificationRegistry)init
{
  v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:5.0];
  v4 = [(HMDNotificationRegistry *)self initWithPendingRequestsRetryTimer:v3];

  return v4;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t68 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t68, &__block_literal_global_192);
  }

  v3 = logCategory__hmf_once_v69;

  return v3;
}

uint64_t __38__HMDNotificationRegistry_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v69;
  logCategory__hmf_once_v69 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end