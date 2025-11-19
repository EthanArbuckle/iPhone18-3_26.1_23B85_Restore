@interface HMDNotificationRegistry
+ (id)logCategory;
- (BOOL)hasRegistrationsForActionSetUUID:(id)a3;
- (BOOL)removeRegistrationsForActionSetUUID:(id)a3;
- (BOOL)removeRegistrationsForMediaProfile:(id)a3;
- (BOOL)setNotificationsEnabled:(BOOL)a3 user:(id)a4 deviceIdsDestination:(id)a5 characteristicsPayload:(id)a6 characteristicChangeThresholdsPayload:(id)a7 mediaPropertiesPayload:(id)a8 actionSetsPayload:(id)a9 matterNotificationPayload:(id)a10;
- (HMDNotificationRegistry)init;
- (HMDNotificationRegistry)initWithPendingRequestsRetryTimer:(id)a3;
- (id)characteristicsByDestinationForCharacteristics:(id)a3 applyChangeThresholding:(BOOL)a4;
- (id)delegates;
- (id)destinationsRegisteredForNotificationsForActionSetResponses:(id)a3;
- (id)destinationsRegisteredForNotificationsForProperties:(id)a3;
- (id)filterActionSetResponses:(id)a3 deviceIdsDestination:(id)a4;
- (id)filterProperties:(id)a3 deviceIdsDestination:(id)a4;
- (id)home;
- (id)logIdentifier;
- (id)propertiesRegisteredForMediaProfileUniqueIdentifier:(id)a3;
- (id)shortDescription;
- (uint64_t)_processMediaPropertiesRequests:(void *)a1;
- (void)_addPendingRequests:(void *)a1;
- (void)_processCharacteristicsRequests:(void *)a1;
- (void)addDelegate:(id)a3;
- (void)auditNotificationDestinations:(id)a3 home:(id)a4;
- (void)clearAllRegistrations;
- (void)configureWithHome:(id)a3;
- (void)configureWithHome:(id)a3 coreDataAdapter:(id)a4;
- (void)disableAllRegistrations;
- (void)notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles:(void *)a1;
- (void)notifyDelegatesOfRegistryUpdatesForActionSets:(void *)a1;
- (void)removeRegistrationsForCharacteristics:(id)a3;
- (void)reprocessEnabledCharacteristicRegistrations;
- (void)storeCHIPRemoteSubscriberWithRemoteSourceID:(id)a3;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDNotificationRegistry

- (void)timerDidFire:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = a3;
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

  if (v8 == v5)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v59 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Pending requests retry timer fired", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    if (self)
    {
      v14 = objc_getProperty(v10, v13, 64, 1);
      dispatch_assert_queue_V2(v14);
      v16 = [objc_getProperty(v10 v15];
      [objc_getProperty(v10 v17];
      v18 = [v16 count];
      v19 = objc_autoreleasePoolPush();
      v20 = v10;
      v21 = HMFGetOSLogHandle();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
      if (v18)
      {
        v45 = v5;
        if (v22)
        {
          v23 = HMFGetLogIdentifier();
          v24 = [v16 count];
          *buf = 138543618;
          v59 = v23;
          v60 = 2048;
          v61 = v24;
          _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Processing %lu pending request(s)", buf, 0x16u);
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
                  v35 = [v30 retryCount];
                  *v52 = 138543874;
                  v53 = v34;
                  v54 = 2048;
                  v55 = v35;
                  v56 = 2112;
                  v57 = v30;
                  _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Dropping pending request that is still around after %ld retries: %@", v52, 0x20u);
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
        v5 = v45;
      }

      else
      {
        if (v22)
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543362;
          v59 = v42;
          _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@No pending requests to process", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v19);
      }
    }
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (void)_processCharacteristicsRequests:(void *)a1
{
  v97 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v65 = v3;
  if (a1)
  {
    v5 = v3;
    Property = objc_getProperty(a1, v4, 64, 1);
    dispatch_assert_queue_V2(Property);
    if ([v5 count])
    {
      v71 = a1;
      v69 = [MEMORY[0x277CBEB58] set];
      v66 = [MEMORY[0x277CBEB58] set];
      v68 = +[HMDHAPMetadata getSharedInstance];
      v82 = 0u;
      v80 = 0u;
      v81 = 0u;
      v79 = 0u;
      obj = v65;
      v72 = [obj countByEnumeratingWithState:&v79 objects:v87 count:16];
      if (v72)
      {
        v70 = *v80;
        do
        {
          v7 = 0;
          do
          {
            if (*v80 != v70)
            {
              v8 = v7;
              objc_enumerationMutation(obj);
              v7 = v8;
            }

            v73 = v7;
            v9 = *(*(&v79 + 1) + 8 * v7);
            v10 = objc_autoreleasePoolPush();
            self = v71;
            v11 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              v12 = HMFGetLogIdentifier();
              *buf = 138543618;
              *&buf[4] = v12;
              *&buf[12] = 2112;
              *&buf[14] = v9;
              _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Processing characteristics request: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v10);
            v13 = v9;
            v15 = objc_getProperty(self, v14, 64, 1);
            dispatch_assert_queue_V2(v15);
            v85 = 0u;
            v86 = 0u;
            v83 = 0u;
            v84 = 0u;
            v75 = [objc_getProperty(self v16];
            v17 = [v75 countByEnumeratingWithState:&v83 objects:buf count:16];
            if (v17)
            {
              v18 = *v84;
              do
              {
                v19 = 0;
                do
                {
                  if (*v84 != v18)
                  {
                    objc_enumerationMutation(v75);
                  }

                  v20 = *(*(&v83 + 1) + 8 * v19);
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
                    v23 = [v22 deviceIdsDestination];
                    v24 = [v13 deviceIdsDestination];
                    if ([v23 isEqualToString:v24])
                    {
                      v25 = [v22 accessoryUUID];
                      v26 = [v13 accessoryUUID];
                      v27 = [v25 isEqual:v26];

                      if (v27)
                      {
                        v28 = [v22 characteristicInstanceIDs];
                        v29 = [v13 characteristicInstanceIDs];
                        [v28 minusSet:v29];

                        v30 = [v22 characteristicInstanceIDs];
                        v31 = [v30 count] == 0;

                        v32 = objc_autoreleasePoolPush();
                        v33 = self;
                        v34 = HMFGetOSLogHandle();
                        v35 = os_log_type_enabled(v34, OS_LOG_TYPE_INFO);
                        if (v31)
                        {
                          if (v35)
                          {
                            v37 = HMFGetLogIdentifier();
                            *v88 = 138543618;
                            v89 = v37;
                            v90 = 2112;
                            v91 = v22;
                            _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Removing pending characteristics request that matches a new characteristics request: %@", v88, 0x16u);
                          }

                          objc_autoreleasePoolPop(v32);
                          [objc_getProperty(v33 v38];
                        }

                        else
                        {
                          if (v35)
                          {
                            v36 = HMFGetLogIdentifier();
                            *v88 = 138543618;
                            v89 = v36;
                            v90 = 2112;
                            v91 = v22;
                            _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Updated pending characteristics request: %@", v88, 0x16u);
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
                v39 = [v75 countByEnumeratingWithState:&v83 objects:buf count:16];
                v17 = v39;
              }

              while (v39);
            }

            WeakRetained = objc_loadWeakRetained(self + 7);
            v41 = [v13 accessoryUUID];
            v42 = [WeakRetained accessoryWithUUID:v41];

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
              v77[0] = MEMORY[0x277D85DD0];
              v77[1] = 3221225472;
              v77[2] = __59__HMDNotificationRegistry__processCharacteristicsRequests___block_invoke;
              v77[3] = &unk_278675CE8;
              v77[4] = v13;
              v78 = v68;
              v45 = [v44 characteristicsPassingTest:v77];
              v46 = [v45 count];
              v47 = [v13 characteristicInstanceIDs];
              LOBYTE(v46) = v46 == [v47 count];

              if (v46)
              {
                v76[0] = MEMORY[0x277D85DD0];
                v76[1] = 3221225472;
                v76[2] = __59__HMDNotificationRegistry__processCharacteristicsRequests___block_invoke_214;
                v76[3] = &unk_27867EE38;
                v76[4] = v13;
                v48 = [v45 na_map:v76];
                v49 = [[HMDNotificationRegistryCoreDataCharacteristicsRequest alloc] initWithRequest:v13 characteristicThresholds:v48];
                [v66 addObject:v49];
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
                  *&buf[14] = v13;
                  _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_INFO, "%{public}@Cannot find all characteristics for request so adding to pending requests: %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v54);
                [v69 addObject:v13];
              }
            }

            else
            {
              v50 = objc_autoreleasePoolPush();
              v51 = self;
              v52 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
              {
                v53 = HMFGetLogIdentifier();
                *buf = 138543618;
                *&buf[4] = v53;
                *&buf[12] = 2112;
                *&buf[14] = v13;
                _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_INFO, "%{public}@Cannot find accessory for characteristics request so adding to pending requests: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v50);
              [v69 addObject:v13];
            }

            v7 = v73 + 1;
          }

          while (v73 + 1 != v72);
          v72 = [obj countByEnumeratingWithState:&v79 objects:v87 count:16];
        }

        while (v72);
      }

      v59 = [objc_getProperty(v71 v58];
      v60 = v69;
      v61 = objc_autoreleasePoolPush();
      *&v83 = 0;
      *(&v83 + 1) = &v83;
      *&v84 = 0x2020000000;
      BYTE8(v84) = 0;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __79__HMDNotificationRegistry__processCoreDataRequestResults_pendingRequestsToAdd___block_invoke;
      v93 = &unk_278671C68;
      v94 = v71;
      v62 = v60;
      v95 = v62;
      v96 = &v83;
      [v59 hmf_enumerateWithAutoreleasePoolUsingBlock:buf];
      a1 = *(*(&v83 + 1) + 24);

      _Block_object_dispose(&v83, 8);
      objc_autoreleasePoolPop(v61);

      [(HMDNotificationRegistry *)v71 _addPendingRequests:v62];
    }

    else
    {
      a1 = 0;
    }
  }

  v63 = *MEMORY[0x277D85DE8];
  return a1;
}

- (uint64_t)_processMediaPropertiesRequests:(void *)a1
{
  v114 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v84 = v3;
  if (!a1 || (v5 = v3, Property = objc_getProperty(a1, v4, 64, 1), dispatch_assert_queue_V2(Property), ![v5 count]))
  {
    v88 = 0;
    goto LABEL_62;
  }

  v90 = a1;
  v86 = [MEMORY[0x277CBEB58] set];
  v85 = [MEMORY[0x277CBEB58] set];
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = v84;
  v91 = [obj countByEnumeratingWithState:&v95 objects:v103 count:16];
  if (!v91)
  {
    v88 = 0;
    goto LABEL_59;
  }

  v88 = 0;
  v89 = *v96;
  do
  {
    v7 = 0;
    do
    {
      if (*v96 != v89)
      {
        v8 = v7;
        objc_enumerationMutation(obj);
        v7 = v8;
      }

      v92 = v7;
      v9 = *(*(&v95 + 1) + 8 * v7);
      v10 = objc_autoreleasePoolPush();
      self = v90;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543618;
        v109 = v12;
        v110 = 2112;
        v111 = v9;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Processing media properties request: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v13 = v9;
      v15 = objc_getProperty(self, v14, 64, 1);
      dispatch_assert_queue_V2(v15);
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v94 = [objc_getProperty(self v16];
      v17 = [v94 countByEnumeratingWithState:&v99 objects:buf count:16];
      if (v17)
      {
        v18 = *v100;
        do
        {
          v19 = 0;
          do
          {
            if (*v100 != v18)
            {
              objc_enumerationMutation(v94);
            }

            v20 = *(*(&v99 + 1) + 8 * v19);
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
              v23 = [v22 deviceIdsDestination];
              v24 = [v13 deviceIdsDestination];
              if ([v23 isEqualToString:v24])
              {
                v25 = [v22 mediaProfileUUID];
                v26 = [v13 mediaProfileUUID];
                v27 = [v25 isEqual:v26];

                if (v27)
                {
                  v28 = [v22 mediaProperties];
                  v29 = [v13 mediaProperties];
                  [v28 minusSet:v29];

                  v30 = [v22 mediaProperties];
                  v31 = [v30 count] == 0;

                  v32 = objc_autoreleasePoolPush();
                  v33 = self;
                  v34 = HMFGetOSLogHandle();
                  v35 = os_log_type_enabled(v34, OS_LOG_TYPE_INFO);
                  if (v31)
                  {
                    if (v35)
                    {
                      v37 = HMFGetLogIdentifier();
                      *v104 = 138543618;
                      v105 = v37;
                      v106 = 2112;
                      v107 = v22;
                      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Removing pending media properties request that matches a new media properties request: %@", v104, 0x16u);
                    }

                    objc_autoreleasePoolPop(v32);
                    [objc_getProperty(v33 v38];
                  }

                  else
                  {
                    if (v35)
                    {
                      v36 = HMFGetLogIdentifier();
                      *v104 = 138543618;
                      v105 = v36;
                      v106 = 2112;
                      v107 = v22;
                      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Updated pending media properties request: %@", v104, 0x16u);
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
          v39 = [v94 countByEnumeratingWithState:&v99 objects:buf count:16];
          v17 = v39;
        }

        while (v39);
      }

      v40 = [(HMDNotificationRegistry *)self home];
      v41 = [v13 mediaProfileUUID];
      v42 = [v40 mediaProfileWithUUID:v41];

      if (v42)
      {
        v43 = [v13 mediaProperties];
        v44 = [v43 count] == 0;

        if (!v44)
        {
          v45 = [v13 enable];
          v46 = objc_autoreleasePoolPush();
          v47 = self;
          v48 = HMFGetOSLogHandle();
          v49 = os_log_type_enabled(v48, OS_LOG_TYPE_INFO);
          if (v45)
          {
            if (v49)
            {
              v50 = HMFGetLogIdentifier();
              v51 = [v13 mediaProperties];
              *buf = 138543874;
              v109 = v50;
              v110 = 2112;
              v111 = v42;
              v112 = 2112;
              v113 = v51;
              _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_INFO, "%{public}@Enabling notification for media profile: %@ media properties: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v46);
            v52 = [v13 mediaProperties];
            v53 = [v13 user];
            v54 = [v13 deviceIdsDestination];
            v55 = v42;
            v56 = v52;
            v57 = v53;
            v58 = v54;
            if ([v56 count])
            {
              v59 = v47 + 2;
              os_unfair_lock_lock_with_options();
              v61 = objc_getProperty(v47, v60, 32, 1);
              v62 = [v61 enableNotificationForMediaProfile:v55 mediaProperties:v56 user:v57 deviceIdsDestination:v58];

              os_unfair_lock_unlock(v59);
              if ((v62 & 1) == 0)
              {
LABEL_39:
                v63 = 0;
LABEL_53:
                v88 |= v63;
                goto LABEL_54;
              }

              goto LABEL_50;
            }
          }

          else
          {
            if (v49)
            {
              v72 = HMFGetLogIdentifier();
              v73 = [v13 mediaProperties];
              *buf = 138543874;
              v109 = v72;
              v110 = 2112;
              v111 = v42;
              v112 = 2112;
              v113 = v73;
              _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_INFO, "%{public}@Disabling notification for media profile: %@ media properties: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v46);
            v74 = [v13 mediaProperties];
            v75 = [v13 user];
            v76 = [v13 deviceIdsDestination];
            v55 = v42;
            v56 = v74;
            v57 = v75;
            v58 = v76;
            if ([v56 count])
            {
              v77 = v47 + 2;
              os_unfair_lock_lock_with_options();
              v79 = objc_getProperty(v47, v78, 32, 1);
              v80 = [v79 disableNotificationForMediaProfile:v55 mediaProperties:v56 user:v57 deviceIdsDestination:v58];

              os_unfair_lock_unlock(v77);
              if ((v80 & 1) == 0)
              {
                goto LABEL_39;
              }

LABEL_50:
              v56 = [v42 uniqueIdentifier];
              [v85 addObject:v56];
              v63 = 1;
LABEL_52:

              goto LABEL_53;
            }
          }

          v63 = 0;
          goto LABEL_52;
        }

        v68 = objc_autoreleasePoolPush();
        v69 = self;
        v70 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
        {
          v71 = HMFGetLogIdentifier();
          *buf = 138543618;
          v109 = v71;
          v110 = 2112;
          v111 = v13;
          _os_log_impl(&dword_229538000, v70, OS_LOG_TYPE_INFO, "%{public}@No media properties exist for request: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v68);
      }

      else
      {
        v64 = objc_autoreleasePoolPush();
        v65 = self;
        v66 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
        {
          v67 = HMFGetLogIdentifier();
          *buf = 138543618;
          v109 = v67;
          v110 = 2112;
          v111 = v13;
          _os_log_impl(&dword_229538000, v66, OS_LOG_TYPE_INFO, "%{public}@Cannot find media profile for media properties request so adding to pending requests: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v64);
        [v86 addObject:v13];
      }

LABEL_54:

      v7 = v92 + 1;
    }

    while (v92 + 1 != v91);
    v91 = [obj countByEnumeratingWithState:&v95 objects:v103 count:16];
  }

  while (v91);
LABEL_59:

  [(HMDNotificationRegistry *)v90 _addPendingRequests:v86];
  if ([v85 count])
  {
    v81 = [v85 allObjects];
    [(HMDNotificationRegistry *)v90 notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles:v81];
  }

LABEL_62:
  v82 = *MEMORY[0x277D85DE8];
  return v88 & 1;
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

- (void)_addPendingRequests:(void *)a1
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  Property = objc_getProperty(a1, v4, 64, 1);
  dispatch_assert_queue_V2(Property);
  if ([v3 count])
  {
    [objc_getProperty(a1 v6];
    v7 = objc_autoreleasePoolPush();
    v8 = a1;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Resuming pending requests timer", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [objc_getProperty(v8 v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [(HMDNotificationRegistry *)a1 delegates];
    v5 = [v4 allObjects];

    objc_initWeak(&location, a1);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __81__HMDNotificationRegistry_notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles___block_invoke;
    v6[3] = &unk_278671C90;
    objc_copyWeak(&v8, &location);
    v7 = v3;
    [v5 na_each:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (id)delegates
{
  os_unfair_lock_lock_with_options();
  v2 = [*(a1 + 16) copy];
  os_unfair_lock_unlock((a1 + 8));

  return v2;
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
    block[3] = &unk_278685F38;
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@About to notify delegate of mediaPropertyRegistrationsDidChange %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [*(a1 + 32) mediaPropertyRegistrationsDidChangeForMediaProfiles:*(a1 + 40)];

  v8 = *MEMORY[0x277D85DE8];
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

HMDCharacteristicNotificationChangeThreshold *__59__HMDNotificationRegistry__processCharacteristicsRequests___block_invoke_214(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 characteristicChangeThresholds];
  v5 = [v3 instanceID];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [[HMDCharacteristicNotificationChangeThreshold alloc] initWithCharacteristic:v3 threshold:v6];

  return v7;
}

void __79__HMDNotificationRegistry__processCoreDataRequestResults_pendingRequestsToAdd___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 coreDataRequest];
  v5 = [v4 request];
  if ([v3 didSucceed])
  {
    if ([v3 didModify])
    {
      v6 = [v4 characteristicThresholds];
      v7 = [v6 firstObject];
      v8 = [v7 characteristic];
      v9 = [v8 accessory];

      v10 = [v3 modifiedCharacteristics];
      v11 = [v5 deviceIdsDestination];
      if ([v10 hmf_isEmpty])
      {
LABEL_14:

        goto LABEL_15;
      }

      *(*(*(a1 + 48) + 8) + 24) = 1;
      v12 = [v5 enable];
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 32);
      v15 = HMFGetOSLogHandle();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
      if (v12)
      {
        if (v16)
        {
          v26 = HMFGetLogIdentifier();
          v17 = [v9 name];
          v25 = [v9 uuid];
          [v25 UUIDString];
          v18 = v27 = v13;
          *buf = 138544130;
          v29 = v26;
          v30 = 2112;
          v31 = v17;
          v32 = 2112;
          v33 = v18;
          v34 = 2112;
          v35 = v10;
          v19 = "%{public}@Enabling notification for accessory %@/%@ characteristics %@";
LABEL_12:
          _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEBUG, v19, buf, 0x2Au);

          v13 = v27;
        }
      }

      else if (v16)
      {
        v26 = HMFGetLogIdentifier();
        v17 = [v9 name];
        v25 = [v9 uuid];
        [v25 UUIDString];
        v18 = v27 = v13;
        *buf = 138544130;
        v29 = v26;
        v30 = 2112;
        v31 = v17;
        v32 = 2112;
        v33 = v18;
        v34 = 2112;
        v35 = v10;
        v19 = "%{public}@Disabling notification for accessory %@/%@ characteristics %@";
        goto LABEL_12;
      }

      objc_autoreleasePoolPop(v13);
      [v9 setNotificationsEnabled:objc_msgSend(v5 forCharacteristics:"enable") clientIdentifier:{v10, v11}];
      [v9 updateNotificationEnabled:objc_msgSend(v5 forCharacteristics:"enable") onBehalfOf:{v10, v11}];
      goto LABEL_14;
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 32);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v23;
      v30 = 2112;
      v31 = v5;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Processing request: %@ failed, adding to pending requests", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    [*(a1 + 40) addObject:v5];
  }

LABEL_15:

  v24 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  v2 = [(HMDNotificationRegistry *)&self->super.super.isa home];
  v3 = [v2 uuid];
  v4 = [v3 UUIDString];

  return v4;
}

- (void)addDelegate:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@adding delegate %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  [(NSHashTable *)v6->_delegates addObject:v4];
  os_unfair_lock_unlock(&v6->_lock);

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)setNotificationsEnabled:(BOOL)a3 user:(id)a4 deviceIdsDestination:(id)a5 characteristicsPayload:(id)a6 characteristicChangeThresholdsPayload:(id)a7 mediaPropertiesPayload:(id)a8 actionSetsPayload:(id)a9 matterNotificationPayload:(id)a10
{
  v217 = a3;
  v271 = *MEMORY[0x277D85DE8];
  v219 = a4;
  v220 = a5;
  v15 = a6;
  v204 = a7;
  v199 = a8;
  v201 = a9;
  v212 = a10;
  if (self)
  {
    Property = objc_getProperty(self, v16, 64, 1);
  }

  else
  {
    Property = 0;
  }

  dispatch_assert_queue_V2(Property);
  v18 = objc_autoreleasePoolPush();
  v205 = self;
  selfa = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    v21 = HMFBooleanToString();
    v22 = [v219 shortDescription];
    *buf = 138544130;
    *&buf[4] = v20;
    *&buf[12] = 2112;
    *&buf[14] = v21;
    *&buf[22] = 2112;
    v269 = v22;
    LOWORD(v270) = 2112;
    *(&v270 + 2) = v220;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Setting notifications enabled to %@ for user: %@ deviceIdsDestination: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v18);
  v213 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v201, "count")}];
  v207 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v15, "count")}];
  v249 = 0u;
  v250 = 0u;
  v247 = 0u;
  v248 = 0u;
  obj = v15;
  v225 = [obj countByEnumeratingWithState:&v247 objects:v262 count:16];
  if (v225)
  {
    v222 = *v248;
    do
    {
      v23 = 0;
      do
      {
        if (*v248 != v222)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v247 + 1) + 8 * v23);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        v26 = v25;

        if (v26)
        {
          v27 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v26];
          v227 = v27;
          if (v27)
          {
            v28 = [v27 UUIDString];
            v29 = [obj objectForKeyedSubscript:v28];

            v30 = v29;
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
              v33 = [[HMDNotificationRegistryCharacteristicsRequest alloc] initWithEnable:v217 user:v219 deviceIdsDestination:v220 accessoryUUID:v227];
              v34 = v204;
              v215 = v227;
              if (v205)
              {
                v35 = objc_autoreleasePoolPush();
                v36 = [v215 UUIDString];
                v37 = [v34 objectForKeyedSubscript:v36];

                v38 = v37;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v39 = v38;
                }

                else
                {
                  v39 = 0;
                }

                v40 = v39;

                if (v40)
                {
                  v41 = [MEMORY[0x277CBEB38] dictionary];
                  *buf = MEMORY[0x277D85DD0];
                  *&buf[8] = 3221225472;
                  *&buf[16] = __74__HMDNotificationRegistry_parseChangeThresholdsFromPayload_accessoryUUID___block_invoke;
                  v269 = &unk_278671C40;
                  *&v270 = selfa;
                  v42 = v41;
                  *(&v270 + 1) = v42;
                  [v40 na_each:buf];
                  v210 = v26;
                  v43 = v30;
                  v44 = v35;
                  v45 = v33;
                  v46 = v32;
                  v47 = v34;
                  v48 = *(&v270 + 1);
                  v49 = v42;

                  v34 = v47;
                  v32 = v46;
                  v33 = v45;
                  v35 = v44;
                  v30 = v43;
                  v26 = v210;
                }

                else
                {
                  v49 = MEMORY[0x277CBEC10];
                }

                objc_autoreleasePoolPop(v35);
              }

              else
              {
                v49 = 0;
              }

              if ([v49 count])
              {
                v66 = [(HMDNotificationRegistryCharacteristicsRequest *)v33 characteristicChangeThresholds];
                [v66 addEntriesFromDictionary:v49];
              }

              v67 = [(HMDNotificationRegistryCharacteristicsRequest *)v33 characteristicInstanceIDs];
              [v67 addObjectsFromArray:v32];

              [v207 addObject:v33];
            }

            else
            {
              v60 = objc_autoreleasePoolPush();
              v61 = selfa;
              v62 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
              {
                v63 = HMFGetLogIdentifier();
                v64 = objc_opt_class();
                *buf = 138543874;
                *&buf[4] = v63;
                *&buf[12] = 2112;
                *&buf[14] = v30;
                *&buf[22] = 2112;
                v269 = v64;
                v65 = v64;
                _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_INFO, "%{public}@Ignoring notification registration characteristics payload value that is not an array: %@)%@)", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v60);
            }
          }

          else
          {
            v56 = objc_autoreleasePoolPush();
            v57 = selfa;
            v58 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
            {
              v59 = HMFGetLogIdentifier();
              *buf = 138543618;
              *&buf[4] = v59;
              *&buf[12] = 2112;
              *&buf[14] = v26;
              _os_log_impl(&dword_229538000, v58, OS_LOG_TYPE_INFO, "%{public}@Ignoring accessory UUID string that cannot be converted in a UUID: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v56);
          }
        }

        else
        {
          v50 = objc_autoreleasePoolPush();
          v51 = selfa;
          v52 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            v53 = HMFGetLogIdentifier();
            v54 = objc_opt_class();
            *buf = 138543874;
            *&buf[4] = v53;
            *&buf[12] = 2112;
            *&buf[14] = v24;
            *&buf[22] = 2112;
            v269 = v54;
            v55 = v54;
            _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_INFO, "%{public}@Ignoring notification registration characteristics payload key that is not a string: %@ (%@)", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v50);
        }

        ++v23;
      }

      while (v225 != v23);
      v68 = [obj countByEnumeratingWithState:&v247 objects:v262 count:16];
      v225 = v68;
    }

    while (v68);
  }

  v211 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v199, "count")}];
  v245 = 0u;
  v246 = 0u;
  v243 = 0u;
  v244 = 0u;
  v223 = v199;
  v69 = [v223 countByEnumeratingWithState:&v243 objects:v261 count:16];
  if (v69)
  {
    v228 = *v244;
    do
    {
      v70 = 0;
      v208 = v69;
      do
      {
        if (*v244 != v228)
        {
          objc_enumerationMutation(v223);
        }

        v71 = *(*(&v243 + 1) + 8 * v70);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v72 = v71;
        }

        else
        {
          v72 = 0;
        }

        v73 = v72;

        if (v73)
        {
          v74 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v73];
          v75 = v74;
          if (v74)
          {
            v76 = [v74 UUIDString];
            v77 = [v223 objectForKeyedSubscript:v76];

            v78 = v77;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v79 = v78;
            }

            else
            {
              v79 = 0;
            }

            v80 = v79;

            if (v80)
            {
              v81 = [[HMDNotificationRegistryMediaPropertiesRequest alloc] initWithEnable:v217 user:v219 deviceIdsDestination:v220 mediaProfileUUID:v75];
              v82 = [(HMDNotificationRegistryMediaPropertiesRequest *)v81 mediaProperties];
              [v82 addObjectsFromArray:v80];

              [v211 addObject:v81];
            }

            else
            {
              v93 = objc_autoreleasePoolPush();
              v94 = selfa;
              v95 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
              {
                v96 = HMFGetLogIdentifier();
                v97 = objc_opt_class();
                *buf = 138543874;
                *&buf[4] = v96;
                *&buf[12] = 2112;
                *&buf[14] = v78;
                *&buf[22] = 2112;
                v269 = v97;
                v98 = v97;
                _os_log_impl(&dword_229538000, v95, OS_LOG_TYPE_INFO, "%{public}@Ignoring notification registration media properties payload value that is not an array: %@ (%@)", buf, 0x20u);

                v69 = v208;
              }

              objc_autoreleasePoolPop(v93);
            }
          }

          else
          {
            v89 = objc_autoreleasePoolPush();
            v90 = selfa;
            v91 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
            {
              v92 = HMFGetLogIdentifier();
              *buf = 138543618;
              *&buf[4] = v92;
              *&buf[12] = 2112;
              *&buf[14] = v73;
              _os_log_impl(&dword_229538000, v91, OS_LOG_TYPE_INFO, "%{public}@Ignoring media profile UUID string that cannot be converted in a UUID: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v89);
          }
        }

        else
        {
          v83 = objc_autoreleasePoolPush();
          v84 = selfa;
          v85 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
          {
            v86 = HMFGetLogIdentifier();
            v87 = objc_opt_class();
            *buf = 138543874;
            *&buf[4] = v86;
            *&buf[12] = 2112;
            *&buf[14] = v71;
            *&buf[22] = 2112;
            v269 = v87;
            v88 = v87;
            _os_log_impl(&dword_229538000, v85, OS_LOG_TYPE_INFO, "%{public}@Ignoring notification registration media properties payload key that is not a string: %@ (%@)", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v83);
        }

        ++v70;
      }

      while (v69 != v70);
      v69 = [v223 countByEnumeratingWithState:&v243 objects:v261 count:16];
    }

    while (v69);
  }

  v241 = 0u;
  v242 = 0u;
  v240 = 0u;
  v239 = 0u;
  v216 = v201;
  v99 = [v216 countByEnumeratingWithState:&v239 objects:v260 count:16];
  if (v99)
  {
    v100 = *v240;
    do
    {
      for (i = 0; i != v99; ++i)
      {
        if (*v240 != v100)
        {
          objc_enumerationMutation(v216);
        }

        v102 = *(*(&v239 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v103 = v102;
        }

        else
        {
          v103 = 0;
        }

        v104 = v103;

        if (v104)
        {
          v105 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v104];
          if (v105)
          {
            v106 = [[HMDNotificationRegistryActionSetRequest alloc] initWithEnable:v217 user:v219 deviceIdsDestination:v220 actionSetUUID:v105];
            [v213 addObject:v106];
          }

          else
          {
            v111 = objc_autoreleasePoolPush();
            v112 = selfa;
            v113 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
            {
              v114 = HMFGetLogIdentifier();
              *buf = 138543618;
              *&buf[4] = v114;
              *&buf[12] = 2112;
              *&buf[14] = v104;
              _os_log_impl(&dword_229538000, v113, OS_LOG_TYPE_ERROR, "%{public}@Action set uuid string (%@) could not be converted to a uuid", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v111);
          }
        }

        else
        {
          v107 = objc_autoreleasePoolPush();
          v108 = selfa;
          v109 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
          {
            v110 = HMFGetLogIdentifier();
            *buf = 138543362;
            *&buf[4] = v110;
            _os_log_impl(&dword_229538000, v109, OS_LOG_TYPE_ERROR, "%{public}@Action set element was not a string", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v107);
        }
      }

      v99 = [v216 countByEnumeratingWithState:&v239 objects:v260 count:16];
    }

    while (v99);
  }

  v197 = v213;
  if (!v205 || (v116 = objc_getProperty(selfa, v115, 64, 1), dispatch_assert_queue_V2(v116), ![v197 count]))
  {
    v209 = 0;
    goto LABEL_141;
  }

  v200 = [MEMORY[0x277CBEB58] set];
  v198 = [MEMORY[0x277CBEB58] set];
  v253 = 0u;
  v254 = 0u;
  v251 = 0u;
  v252 = 0u;
  v202 = v197;
  v206 = [v202 countByEnumeratingWithState:&v251 objects:v263 count:16];
  if (!v206)
  {
    v209 = 0;
    goto LABEL_138;
  }

  v209 = 0;
  v203 = *v252;
  do
  {
    v117 = 0;
    do
    {
      if (*v252 != v203)
      {
        v118 = v117;
        objc_enumerationMutation(v202);
        v117 = v118;
      }

      v214 = v117;
      v119 = *(*(&v251 + 1) + 8 * v117);
      v120 = objc_autoreleasePoolPush();
      v229 = selfa;
      v121 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
      {
        v122 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v122;
        *&buf[12] = 2112;
        *&buf[14] = v119;
        _os_log_impl(&dword_229538000, v121, OS_LOG_TYPE_INFO, "%{public}@Processing action set request: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v120);
      v218 = v119;
      v124 = objc_getProperty(v229, v123, 64, 1);
      dispatch_assert_queue_V2(v124);
      v257 = 0u;
      v258 = 0u;
      v255 = 0u;
      v256 = 0u;
      v126 = [objc_getProperty(v229 v125];
      v127 = [v126 countByEnumeratingWithState:&v255 objects:buf count:16];
      if (v127)
      {
        v128 = *v256;
        do
        {
          for (j = 0; j != v127; ++j)
          {
            if (*v256 != v128)
            {
              objc_enumerationMutation(v126);
            }

            v130 = *(*(&v255 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v131 = v130;
            }

            else
            {
              v131 = 0;
            }

            v132 = v131;

            if (v132)
            {
              v133 = [v132 deviceIdsDestination];
              v134 = [v132 deviceIdsDestination];
              if ([v133 isEqualToString:v134])
              {
                v135 = [v132 actionSetUUID];
                v136 = [v132 actionSetUUID];
                v137 = [v135 isEqual:v136];

                if (v137)
                {
                  v138 = objc_autoreleasePoolPush();
                  v139 = v229;
                  v140 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v140, OS_LOG_TYPE_INFO))
                  {
                    v141 = HMFGetLogIdentifier();
                    *v264 = 138543618;
                    v265 = v141;
                    v266 = 2112;
                    v267 = v132;
                    _os_log_impl(&dword_229538000, v140, OS_LOG_TYPE_INFO, "%{public}@Removing pending action set request that matches a new action set request: %@", v264, 0x16u);
                  }

                  objc_autoreleasePoolPop(v138);
                  [objc_getProperty(v139 v142];
                }
              }

              else
              {
              }
            }
          }

          v127 = [v126 countByEnumeratingWithState:&v255 objects:buf count:16];
        }

        while (v127);
      }

      v143 = [(HMDNotificationRegistry *)&v229->super.super.isa home];
      v144 = [v218 actionSetUUID];
      v145 = [v143 actionSetWithUUID:v144];

      if (v145)
      {
        v146 = [v218 enable];
        v147 = objc_autoreleasePoolPush();
        v148 = v229;
        v149 = HMFGetOSLogHandle();
        v150 = os_log_type_enabled(v149, OS_LOG_TYPE_INFO);
        if (v146)
        {
          if (v150)
          {
            v151 = HMFGetLogIdentifier();
            *buf = 138543618;
            *&buf[4] = v151;
            *&buf[12] = 2112;
            *&buf[14] = v145;
            _os_log_impl(&dword_229538000, v149, OS_LOG_TYPE_INFO, "%{public}@Enabling notification for action set: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v147);
          v152 = [v145 uuid];
          v153 = [v218 user];
          v154 = [v218 deviceIdsDestination];
          v155 = v152;
          v156 = v153;
          v157 = v154;
          v158 = v148 + 2;
          os_unfair_lock_lock_with_options();
          v160 = objc_getProperty(v148, v159, 32, 1);
          v161 = [v160 enableNotificationForActionSetUUID:v155 user:v156 deviceIdsDestination:v157];

          os_unfair_lock_unlock(v158);
          if ((v161 & 1) == 0)
          {
            goto LABEL_124;
          }

LABEL_131:
          v178 = [v145 uuid];
          [v198 addObject:v178];

          v162 = 1;
        }

        else
        {
          if (v150)
          {
            v167 = HMFGetLogIdentifier();
            *buf = 138543618;
            *&buf[4] = v167;
            *&buf[12] = 2112;
            *&buf[14] = v145;
            _os_log_impl(&dword_229538000, v149, OS_LOG_TYPE_INFO, "%{public}@Disabling notification for action set: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v147);
          v168 = [v145 uuid];
          v169 = [v218 user];
          v170 = [v218 deviceIdsDestination];
          v171 = v168;
          v172 = v169;
          v173 = v170;
          v174 = v148 + 2;
          os_unfair_lock_lock_with_options();
          v176 = objc_getProperty(v148, v175, 32, 1);
          v177 = [v176 disableNotificationForActionSetUUID:v171 user:v172 deviceIdsDestination:v173];

          os_unfair_lock_unlock(v174);
          if (v177)
          {
            goto LABEL_131;
          }

LABEL_124:
          v162 = 0;
        }

        v209 |= v162;
        goto LABEL_133;
      }

      v163 = objc_autoreleasePoolPush();
      v164 = v229;
      v165 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v165, OS_LOG_TYPE_INFO))
      {
        v166 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v166;
        *&buf[12] = 2112;
        *&buf[14] = v218;
        _os_log_impl(&dword_229538000, v165, OS_LOG_TYPE_INFO, "%{public}@Cannot find action set for action set request so adding to pending requests: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v163);
      [v200 addObject:v218];
LABEL_133:

      v117 = v214 + 1;
    }

    while (v214 + 1 != v206);
    v206 = [v202 countByEnumeratingWithState:&v251 objects:v263 count:16];
  }

  while (v206);
LABEL_138:

  [(HMDNotificationRegistry *)selfa _addPendingRequests:v200];
  if ([v198 count])
  {
    v179 = [v198 allObjects];
    [(HMDNotificationRegistry *)selfa notifyDelegatesOfRegistryUpdatesForActionSets:v179];
  }

LABEL_141:
  v226 = [(HMDNotificationRegistry *)&selfa->super.super.isa home];
  v180 = objc_autoreleasePoolPush();
  v230 = selfa;
  v181 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v181, OS_LOG_TYPE_INFO))
  {
    v182 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v182;
    *&buf[12] = 2112;
    *&buf[14] = v212;
    _os_log_impl(&dword_229538000, v181, OS_LOG_TYPE_INFO, "%{public}@Handling notification registration for matter attributes. payload=%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v180);
  v237 = 0u;
  v238 = 0u;
  v235 = 0u;
  v236 = 0u;
  v183 = [v226 hapAccessories];
  v184 = [v183 countByEnumeratingWithState:&v235 objects:v259 count:16];
  if (v184)
  {
    v185 = 0;
    v186 = *v236;
    do
    {
      for (k = 0; k != v184; ++k)
      {
        if (*v236 != v186)
        {
          objc_enumerationMutation(v183);
        }

        v188 = *(*(&v235 + 1) + 8 * k);
        v189 = [v188 matterNodeID];
        if (([v189 isEqual:&unk_283E71D08] & 1) == 0)
        {
          v190 = [v212 hmf_dictionaryForKey:v189];
          v191 = v190 == 0;

          if (!v191)
          {
            v231[0] = MEMORY[0x277D85DD0];
            v231[1] = 3221225472;
            v231[2] = __205__HMDNotificationRegistry_setNotificationsEnabled_user_deviceIdsDestination_characteristicsPayload_characteristicChangeThresholdsPayload_mediaPropertiesPayload_actionSetsPayload_matterNotificationPayload___block_invoke;
            v231[3] = &unk_278689668;
            v232 = v189;
            v233 = v230;
            v234 = v226;
            [v188 setCHIPReportHandler:v231];

            v185 = 1;
          }
        }
      }

      v184 = [v183 countByEnumeratingWithState:&v235 objects:v259 count:16];
    }

    while (v184);

    if (v185)
    {
      [(HMDNotificationRegistry *)v230 storeCHIPRemoteSubscriberWithRemoteSourceID:v220];
      v192 = 1;
      goto LABEL_157;
    }
  }

  else
  {
  }

  v192 = 0;
LABEL_157:
  v193 = [(HMDNotificationRegistry *)v230 _processCharacteristicsRequests:v207];
  v194 = v193 | [(HMDNotificationRegistry *)v230 _processMediaPropertiesRequests:v211];
  if ((v192 | v209 | v194))
  {
    [v226 saveToCurrentAccountWithReason:@"kModifyCharacterisiticNotificationsRequestKey"];
  }

  v195 = *MEMORY[0x277D85DE8];
  return (v194 | v209 | v192) & 1;
}

void __205__HMDNotificationRegistry_setNotificationsEnabled_user_deviceIdsDestination_characteristicsPayload_characteristicChangeThresholdsPayload_mediaPropertiesPayload_actionSetsPayload_matterNotificationPayload___block_invoke(uint64_t a1, void *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v10[0] = @"HMDHomeCHIPNodeIDMessageKey";
  v10[1] = @"HMDHomeCHIPReportMessageKey";
  v11[0] = v3;
  v11[1] = a2;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a2;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:v10 count:2];
  v7 = [MEMORY[0x277D0F848] messageWithName:@"HMDHomeCHIPSendReportMessage" messagePayload:v6];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __205__HMDNotificationRegistry_setNotificationsEnabled_user_deviceIdsDestination_characteristicsPayload_characteristicChangeThresholdsPayload_mediaPropertiesPayload_actionSetsPayload_matterNotificationPayload___block_invoke_2;
  v9[3] = &unk_278689DC0;
  v9[4] = *(a1 + 40);
  [v7 setResponseHandler:v9];
  [*(a1 + 48) handleCHIPSendReportMessage:v7];

  v8 = *MEMORY[0x277D85DE8];
}

void __205__HMDNotificationRegistry_setNotificationsEnabled_user_deviceIdsDestination_characteristicsPayload_characteristicChangeThresholdsPayload_mediaPropertiesPayload_actionSetsPayload_matterNotificationPayload___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v10;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@CHIP report handling complete: error %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)notifyDelegatesOfRegistryUpdatesForActionSets:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [(HMDNotificationRegistry *)a1 delegates];
    v5 = [v4 allObjects];

    objc_initWeak(&location, a1);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __73__HMDNotificationRegistry_notifyDelegatesOfRegistryUpdatesForActionSets___block_invoke;
    v6[3] = &unk_278671C90;
    objc_copyWeak(&v8, &location);
    v7 = v3;
    [v5 na_each:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __73__HMDNotificationRegistry_notifyDelegatesOfRegistryUpdatesForActionSets___block_invoke(uint64_t a1, void *a2)
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
    block[2] = __73__HMDNotificationRegistry_notifyDelegatesOfRegistryUpdatesForActionSets___block_invoke_2;
    block[3] = &unk_278685F38;
    v7 = WeakRetained;
    objc_copyWeak(&v11, (a1 + 40));
    v9 = v3;
    v10 = *(a1 + 32);
    dispatch_async(v7, block);

    objc_destroyWeak(&v11);
  }
}

void __73__HMDNotificationRegistry_notifyDelegatesOfRegistryUpdatesForActionSets___block_invoke_2(uint64_t a1)
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@About to notify delegate of stateRegistrationsDidChangeForActionSetUUIDs %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [*(a1 + 32) stateRegistrationsDidChangeForActionSetUUIDs:*(a1 + 40)];

  v8 = *MEMORY[0x277D85DE8];
}

void __74__HMDNotificationRegistry_parseChangeThresholdsFromPayload_accessoryUUID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v5;
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

  if (v9)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v23 = 138543874;
      v24 = v17;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = v12;
      v18 = "%{public}@Change threshold key %@ or value %@ was not of expected type";
LABEL_18:
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, v18, &v23, 0x20u);
    }

LABEL_19:

    objc_autoreleasePoolPop(v14);
    goto LABEL_20;
  }

  v19 = [v9 integerValue];
  if (v19 <= 0)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v23 = 138543874;
      v24 = v17;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = v12;
      v18 = "%{public}@Change threshold key %@ with value %@ is an invalid instance id";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v20 = *(a1 + 40);
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:v19];
  [v20 setObject:v12 forKeyedSubscript:v21];

LABEL_20:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)storeCHIPRemoteSubscriberWithRemoteSourceID:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(HMDNotificationRegistry *)self chipRemoteSubscribers];

    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [(HMDNotificationRegistry *)self setChipRemoteSubscribers:v6];
    }

    v7 = [(HMDNotificationRegistry *)self chipRemoteSubscribers];
    [v7 addObject:v4];
  }
}

- (void)auditNotificationDestinations:(id)a3 home:(id)a4
{
  v6 = a3;
  v30 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  os_unfair_lock_lock_with_options();
  if (self)
  {
    Property = objc_getProperty(self, v8, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = Property;
  v11 = [v10 removeCharacteristicRegistrationsWithoutAllowedDestinations:v6];

  if (isiOSDevice())
  {
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __62__HMDNotificationRegistry_auditNotificationDestinations_home___block_invoke;
    v39[3] = &unk_278671B90;
    v40 = v30;
    v41 = v7;
    [v11 na_each:v39];
  }

  v12 = +[HMDDeviceCapabilities deviceCapabilities];
  v13 = [v12 isResidentCapable];

  if (v13)
  {
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __62__HMDNotificationRegistry_auditNotificationDestinations_home___block_invoke_188;
    v37[3] = &unk_278671BB8;
    v38 = v30;
    v15 = [v11 na_map:v37];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __62__HMDNotificationRegistry_auditNotificationDestinations_home___block_invoke_2_190;
    v35[3] = &unk_278682908;
    v35[4] = self;
    v36 = v7;
    [v15 na_each:v35];
  }

  if (self)
  {
    v16 = objc_getProperty(self, v14, 32, 1);
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  v18 = [v17 removeMediaRegistrationsWithoutAllowedDestinations:v6];

  if ([v18 count])
  {
    v20 = [v18 na_map:&__block_literal_global_28743];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__HMDNotificationRegistry_auditNotificationDestinations_home___block_invoke_2_193;
    aBlock[3] = &unk_27868A750;
    aBlock[4] = self;
    v21 = v20;
    v34 = v21;
    v22 = _Block_copy(aBlock);
    [v7 addObject:v22];
  }

  if (self)
  {
    v23 = objc_getProperty(self, v19, 32, 1);
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;
  v25 = [v24 removeActionSetRegistrationsWithoutAllowedDestinations:v6];

  if ([v25 count])
  {
    v26 = [v25 na_map:&__block_literal_global_197];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __62__HMDNotificationRegistry_auditNotificationDestinations_home___block_invoke_4;
    v31[3] = &unk_27868A750;
    v31[4] = self;
    v27 = v26;
    v32 = v27;
    v28 = _Block_copy(v31);
    [v7 addObject:v28];
  }

  os_unfair_lock_unlock((self + v29));
  [v7 na_each:&__block_literal_global_200_28744];
}

void __62__HMDNotificationRegistry_auditNotificationDestinations_home___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 accessoryUUID];
  v6 = [v4 accessoryWithUUID:v5];

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

  if (v8)
  {
    v9 = [v3 characteristicInstanceID];
    v10 = [v8 hmdCharacteristicForInstanceId:v9];

    v11 = [v3 deviceIdsDestination];
    v12 = *(a1 + 40);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__HMDNotificationRegistry_auditNotificationDestinations_home___block_invoke_2;
    aBlock[3] = &unk_27868A010;
    v17 = v11;
    v18 = v10;
    v19 = v8;
    v13 = v10;
    v14 = v11;
    v15 = _Block_copy(aBlock);
    [v12 addObject:v15];
  }
}

id __62__HMDNotificationRegistry_auditNotificationDestinations_home___block_invoke_188(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 accessoryUUID];
  v6 = [v4 accessoryWithUUID:v5];

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

  if (v8)
  {
    v9 = [v3 characteristicInstanceID];
    v10 = [v8 hmdCharacteristicForInstanceId:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __62__HMDNotificationRegistry_auditNotificationDestinations_home___block_invoke_2_190(uint64_t a1, void *a2)
{
  v4 = a2;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 32, 1);
  }

  v6 = [Property destinationsToNotifyForCharacteristic:v4 applyChangeThresholding:0];
  if (![v6 count])
  {
    v7 = [v4 accessory];
    v8 = *(a1 + 40);
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __62__HMDNotificationRegistry_auditNotificationDestinations_home___block_invoke_3;
    v14 = &unk_27868A750;
    v15 = v4;
    v16 = v7;
    v9 = v7;
    v10 = _Block_copy(&v11);
    [v8 addObject:{v10, v11, v12, v13, v14}];
  }
}

void __62__HMDNotificationRegistry_auditNotificationDestinations_home___block_invoke_2_193(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) allObjects];
  [(HMDNotificationRegistry *)v1 notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles:v2];
}

void __62__HMDNotificationRegistry_auditNotificationDestinations_home___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) allObjects];
  [(HMDNotificationRegistry *)v1 notifyDelegatesOfRegistryUpdatesForActionSets:v2];
}

void __62__HMDNotificationRegistry_auditNotificationDestinations_home___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = HMFGetLogIdentifier();
    v5 = *(a1 + 32);
    *buf = 138543874;
    v11 = v4;
    v12 = 2112;
    v13 = 0;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_229538000, v3, OS_LOG_TYPE_INFO, "%{public}@Deregistering client %@ for notification for characteristic %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *(a1 + 40);
  v9 = *(a1 + 32);
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  [v6 setNotificationsEnabled:0 forCharacteristics:v7 clientIdentifier:0];

  v8 = *MEMORY[0x277D85DE8];
}

void __62__HMDNotificationRegistry_auditNotificationDestinations_home___block_invoke_2(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = HMFGetLogIdentifier();
    v5 = a1[4];
    v6 = a1[5];
    *buf = 138543874;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_229538000, v3, OS_LOG_TYPE_INFO, "%{public}@Deregistering client %@ for notification for characteristic %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = a1[6];
  v10 = a1[5];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  [v7 setNotificationsEnabled:0 forCharacteristics:v8 clientIdentifier:a1[4]];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)destinationsRegisteredForNotificationsForActionSetResponses:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = a3;
  if ([v19 count])
  {
    v4 = [MEMORY[0x277CBEB58] set];
    os_unfair_lock_lock_with_options();
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = v19;
    v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = *v21;
      do
      {
        v9 = 0;
        do
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v20 + 1) + 8 * v9);
          if (self)
          {
            Property = objc_getProperty(self, v6, 32, 1);
          }

          else
          {
            Property = 0;
          }

          v12 = Property;
          v13 = [v10 actionSetUUID];
          v14 = [v12 destinationsToNotifyForActionSetUUID:v13];

          [v4 addObjectsFromArray:v14];
          ++v9;
        }

        while (v7 != v9);
        v15 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
        v7 = v15;
      }

      while (v15);
    }

    os_unfair_lock_unlock(&self->_lock);
    v16 = [v4 copy];
  }

  else
  {
    v16 = [MEMORY[0x277CBEB98] set];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)destinationsRegisteredForNotificationsForProperties:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [MEMORY[0x277CBEB58] set];
    os_unfair_lock_lock_with_options();
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v4;
    v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = *v20;
      do
      {
        v10 = 0;
        do
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * v10);
          if (self)
          {
            Property = objc_getProperty(self, v7, 32, 1);
          }

          else
          {
            Property = 0;
          }

          v13 = Property;
          v14 = [v13 destinationsToNotifyForMediaPropertyResponse:v11];

          [v5 addObjectsFromArray:v14];
          ++v10;
        }

        while (v8 != v10);
        v15 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
        v8 = v15;
      }

      while (v15);
    }

    os_unfair_lock_unlock(&self->_lock);
    v16 = [v5 copy];
  }

  else
  {
    v16 = [MEMORY[0x277CBEB98] set];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)characteristicsByDestinationForCharacteristics:(id)a3 applyChangeThresholding:(BOOL)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a3;
  v8 = [v6 dictionary];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __98__HMDNotificationRegistry_characteristicsByDestinationForCharacteristics_applyChangeThresholding___block_invoke;
  v12[3] = &unk_278671B68;
  v12[4] = self;
  v13 = a4;
  v9 = [v7 na_reduceWithInitialValue:v8 reducer:v12];

  v10 = [v9 copy];

  return v10;
}

id __98__HMDNotificationRegistry_characteristicsByDestinationForCharacteristics_applyChangeThresholding___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = a3;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v6, 32, 1);
  }

  v9 = [Property destinationsToNotifyForCharacteristic:v5 applyChangeThresholding:*(a1 + 40)];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __98__HMDNotificationRegistry_characteristicsByDestinationForCharacteristics_applyChangeThresholding___block_invoke_2;
  v15[3] = &unk_278686270;
  v10 = v7;
  v16 = v10;
  v17 = v5;
  v11 = v5;
  [v9 na_each:v15];
  v12 = v17;
  v13 = v10;

  return v10;
}

void __98__HMDNotificationRegistry_characteristicsByDestinationForCharacteristics_applyChangeThresholding___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
  }

  [v3 addObject:*(a1 + 40)];
}

- (id)filterActionSetResponses:(id)a3 deviceIdsDestination:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v21 = v6;
  if ([v6 count])
  {
    v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    os_unfair_lock_lock_with_options();
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v6;
    v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v9)
    {
      v10 = *v25;
      do
      {
        v11 = 0;
        do
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v24 + 1) + 8 * v11);
          if (self)
          {
            Property = objc_getProperty(self, v8, 32, 1);
          }

          else
          {
            Property = 0;
          }

          v14 = Property;
          v15 = [v12 actionSetUUID];
          v16 = [v14 destinationsToNotifyForActionSetUUID:v15];

          if ([v16 containsObject:v7])
          {
            [v22 addObject:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v17 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
        v9 = v17;
      }

      while (v17);
    }

    os_unfair_lock_unlock(&self->_lock);
    v18 = [v22 copy];
  }

  else
  {
    v18 = MEMORY[0x277CBEBF8];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (BOOL)hasRegistrationsForActionSetUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  if (self)
  {
    Property = objc_getProperty(self, v5, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  v8 = [v7 hasEnabledRegistrationForActionSetUUID:v4];

  os_unfair_lock_unlock(&self->_lock);
  return v8;
}

- (id)propertiesRegisteredForMediaProfileUniqueIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  if (self)
  {
    Property = objc_getProperty(self, v5, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  v8 = [v7 mediaPropertiesRegisteredForMediaProfileUniqueIdentifier:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (id)filterProperties:(id)a3 deviceIdsDestination:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    os_unfair_lock_lock_with_options();
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v6;
    v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = *v23;
      do
      {
        v12 = 0;
        do
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * v12);
          if (self)
          {
            Property = objc_getProperty(self, v9, 32, 1);
          }

          else
          {
            Property = 0;
          }

          v15 = Property;
          v16 = [v15 destinationsToNotifyForMediaPropertyResponse:v13];

          if ([v16 containsObject:v7])
          {
            [v21 addObject:v13];
          }

          ++v12;
        }

        while (v10 != v12);
        v17 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
        v10 = v17;
      }

      while (v17);
    }

    os_unfair_lock_unlock(&self->_lock);
    v18 = [v21 copy];
  }

  else
  {
    v18 = MEMORY[0x277CBEBF8];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (BOOL)removeRegistrationsForActionSetUUID:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing registrations for action set: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  if (v6)
  {
    Property = objc_getProperty(v6, v9, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v11 = Property;
  v12 = [v11 removeRegistrationsForActionSetUUID:v4];

  os_unfair_lock_unlock(&v6->_lock);
  if (v12)
  {
    v16 = v4;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    [(HMDNotificationRegistry *)v6 notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles:v13];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)removeRegistrationsForMediaProfile:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing registrations for media profile: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  if (v6)
  {
    Property = objc_getProperty(v6, v9, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v11 = Property;
  v12 = [v11 removeRegistrationsForMediaProfile:v4];

  os_unfair_lock_unlock(&v6->_lock);
  if (v12)
  {
    v13 = [v4 uniqueIdentifier];
    v17 = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    [(HMDNotificationRegistry *)v6 notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)removeRegistrationsForCharacteristics:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing registrations for characteristics: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  if (v6)
  {
    Property = objc_getProperty(v6, v9, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v11 = Property;
  [v11 removeRegistrationsForCharacteristics:v4];

  os_unfair_lock_unlock(&v6->_lock);
  v12 = *MEMORY[0x277D85DE8];
}

- (id)shortDescription
{
  os_unfair_lock_lock_with_options();
  if (self)
  {
    Property = objc_getProperty(self, v3, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  v6 = [v5 shortDescription];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)clearAllRegistrations
{
  if (self)
  {
    v3 = [MEMORY[0x277CBEB98] set];
    v4 = [MEMORY[0x277CBEB98] set];
    os_unfair_lock_lock_with_options();
    v6 = objc_getProperty(self, v5, 32, 1);
    [v6 removeAllCharacteristicRegistrations];

    v8 = objc_getProperty(self, v7, 32, 1);
    v9 = [v8 removeAllActionSetRegistrations];

    v11 = objc_getProperty(self, v10, 32, 1);
    v14 = [v11 removeAllMediaProfileRegistrations];

    os_unfair_lock_unlock(&self->_lock);
    if ([v14 count])
    {
      v12 = [v14 allObjects];
      [(HMDNotificationRegistry *)self notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles:v12];
    }

    if ([v9 count])
    {
      v13 = [v9 allObjects];
      [(HMDNotificationRegistry *)self notifyDelegatesOfRegistryUpdatesForActionSets:v13];
    }
  }
}

- (void)disableAllRegistrations
{
  v43 = *MEMORY[0x277D85DE8];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__28761;
  v37 = __Block_byref_object_dispose__28762;
  v38 = [MEMORY[0x277CBEB38] dictionary];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__28761;
  v31 = __Block_byref_object_dispose__28762;
  v32 = 0;
  v3 = [(HMDNotificationRegistry *)&self->super.super.isa home];
  v4 = [v3 hapAccessories];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __50__HMDNotificationRegistry_disableAllRegistrations__block_invoke;
  v26[3] = &unk_278671B18;
  v26[4] = &v27;
  v26[5] = &v33;
  [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v26];

  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = v34[5];
    *buf = 138543618;
    v40 = v8;
    v41 = 2112;
    v42 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Disabling all registrations, then re-registering local registrations with instance ids by client: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (v6)
  {
    Property = objc_getProperty(v6, v10, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v12 = Property;
  [v12 disableAllCharacteristicRegistrations];

  if (v6)
  {
    v14 = objc_getProperty(v6, v13, 32, 1);
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v16 = [v15 disableAllActionSetRegistrations];

  if (v6)
  {
    v18 = objc_getProperty(v6, v17, 32, 1);
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  v20 = [v19 disableAllMediaProfileRegistrations];

  if (v28[5] && [v34[5] count])
  {
    v21 = v34[5];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __50__HMDNotificationRegistry_disableAllRegistrations__block_invoke_180;
    v25[3] = &unk_278671B40;
    v25[4] = v6;
    v25[5] = &v27;
    [v21 na_each:v25];
  }

  if ([v20 count])
  {
    v22 = [v20 allObjects];
    [(HMDNotificationRegistry *)v6 notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles:v22];
  }

  if ([v16 count])
  {
    v23 = [v16 allObjects];
    [(HMDNotificationRegistry *)v6 notifyDelegatesOfRegistryUpdatesForActionSets:v23];
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  v24 = *MEMORY[0x277D85DE8];
}

void __50__HMDNotificationRegistry_disableAllRegistrations__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 isCurrentAccessory])
  {
    *a4 = 1;
    v7 = [v6 uuid];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = [v6 services];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __50__HMDNotificationRegistry_disableAllRegistrations__block_invoke_2;
    v11[3] = &unk_278671AF0;
    v11[4] = *(a1 + 40);
    [v10 na_each:v11];
  }
}

void __50__HMDNotificationRegistry_disableAllRegistrations__block_invoke_180(uint64_t a1, void *a2, void *a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = a3;
  v7 = a2;
  v8 = [v5 UUIDString];
  v14 = v8;
  v15[0] = v6;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v10 = *(a1 + 32);
  v11 = [(HMDNotificationRegistry *)v10 home];
  v12 = [v11 currentUser];
  [v10 setNotificationsEnabled:1 user:v12 deviceIdsDestination:v7 characteristicsPayload:v9 characteristicChangeThresholdsPayload:MEMORY[0x277CBEC10] mediaPropertiesPayload:MEMORY[0x277CBEC10] actionSetsPayload:MEMORY[0x277CBEBF8] matterNotificationPayload:MEMORY[0x277CBEC10]];

  v13 = *MEMORY[0x277D85DE8];
}

void __50__HMDNotificationRegistry_disableAllRegistrations__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 characteristics];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__HMDNotificationRegistry_disableAllRegistrations__block_invoke_3;
  v4[3] = &unk_278671AC8;
  v4[4] = *(a1 + 32);
  [v3 na_each:v4];
}

void __50__HMDNotificationRegistry_disableAllRegistrations__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 localClientIdentifiersWithNotificationsEnabled];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HMDNotificationRegistry_disableAllRegistrations__block_invoke_4;
  v7[3] = &unk_278671AA0;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 na_each:v7];
}

void __50__HMDNotificationRegistry_disableAllRegistrations__block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:?];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v3 forKeyedSubscript:v5];
  }

  v4 = [*(a1 + 32) instanceID];
  [v3 addObject:v4];
}

- (void)reprocessEnabledCharacteristicRegistrations
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 64, 1);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMDNotificationRegistry_reprocessEnabledCharacteristicRegistrations__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = v2;
  dispatch_async(&self->super.super, block);
}

void __70__HMDNotificationRegistry_reprocessEnabledCharacteristicRegistrations__block_invoke(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    Property = objc_getProperty(*(a1 + 32), a2, 64, 1);
    dispatch_assert_queue_V2(Property);
    v5 = [objc_getProperty(v2 v4];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __71__HMDNotificationRegistry__reprocessEnabledCharacteristicRegistrations__block_invoke;
    v6[3] = &unk_278683BA0;
    v6[4] = v2;
    [v5 enumerateObjectsUsingBlock:v6];
  }
}

void __71__HMDNotificationRegistry__reprocessEnabledCharacteristicRegistrations__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    Property = objc_getProperty(v5, v3, 64, 1);
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
    Property = 0;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__HMDNotificationRegistry__reprocessEnabledCharacteristicRegistrations__block_invoke_2;
  v9[3] = &unk_27868A750;
  v9[4] = v7;
  v10 = v4;
  v8 = v4;
  dispatch_async(Property, v9);
}

void __71__HMDNotificationRegistry__reprocessEnabledCharacteristicRegistrations__block_invoke_2(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 32, 1);
  }

  v4 = [Property characteristicIIDsByAccessoryUUIDForEnabledRegistrationsForDestination:*(a1 + 40)];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__HMDNotificationRegistry__reprocessEnabledCharacteristicRegistrations__block_invoke_3;
  v6[3] = &unk_278671A78;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v4 na_each:v6];
}

void __71__HMDNotificationRegistry__reprocessEnabledCharacteristicRegistrations__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  context = objc_autoreleasePoolPush();
  v7 = [(HMDNotificationRegistry *)*(a1 + 32) home];
  v25 = v5;
  v8 = [v7 accessoryWithUUID:v5];

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
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __71__HMDNotificationRegistry__reprocessEnabledCharacteristicRegistrations__block_invoke_4;
    v27[3] = &unk_278671A50;
    v11 = v10;
    v28 = v11;
    v12 = [v6 na_map:v27];
    v13 = [v12 allObjects];

    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier();
      v18 = *(a1 + 40);
      v22 = [v11 name];
      [v11 uuid];
      v19 = v24 = v6;
      [v19 UUIDString];
      v20 = v23 = v14;
      *buf = 138544386;
      v30 = v17;
      v31 = 2112;
      v32 = v18;
      v33 = 2112;
      v34 = v22;
      v35 = 2112;
      v36 = v20;
      v37 = 2112;
      v38 = v13;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Re-Enabling notification for destination: %@ accessory %@/%@ characteristics %@", buf, 0x34u);

      v14 = v23;
      v6 = v24;
    }

    objc_autoreleasePoolPop(v14);
    [v11 setNotificationsEnabled:1 forCharacteristics:v13 clientIdentifier:*(a1 + 40)];
    [v11 updateNotificationEnabled:1 forCharacteristics:v13 onBehalfOf:*(a1 + 40)];
  }

  objc_autoreleasePoolPop(context);
  v21 = *MEMORY[0x277D85DE8];
}

- (void)configureWithHome:(id)a3 coreDataAdapter:(id)a4
{
  obj = a3;
  v6 = a4;
  os_unfair_lock_lock_with_options();
  if (self)
  {
    objc_storeWeak(&self->_home, obj);
  }

  v7 = [obj workQueue];
  v9 = v7;
  if (self)
  {
    objc_setProperty_atomic(self, v8, v7, 64);

    Property = objc_getProperty(self, v10, 40, 1);
  }

  else
  {

    Property = 0;
  }

  v12 = Property;
  [v12 setDelegate:self];

  if (self)
  {
    v14 = objc_getProperty(self, v13, 64, 1);
    v16 = objc_getProperty(self, v15, 40, 1);
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = v16;
  [v17 setDelegateQueue:v14];

  coreDataAdapter = self->_coreDataAdapter;
  self->_coreDataAdapter = v6;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)configureWithHome:(id)a3
{
  v4 = a3;
  v5 = [[HMDNotificationRegistryCoreDataAdapter alloc] initWithHome:v4];
  [(HMDNotificationRegistry *)self configureWithHome:v4 coreDataAdapter:v5];
}

- (HMDNotificationRegistry)initWithPendingRequestsRetryTimer:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = HMDNotificationRegistry;
  v6 = [(HMDNotificationRegistry *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_pendingRequestsRetryTimer, a3);
    v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    delegates = v7->_delegates;
    v7->_delegates = v8;

    v10 = [MEMORY[0x277CBEB58] set];
    pendingRequests = v7->_pendingRequests;
    v7->_pendingRequests = v10;
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
  if (logCategory__hmf_once_t84 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t84, &__block_literal_global_225_28777);
  }

  v3 = logCategory__hmf_once_v85;

  return v3;
}

void __38__HMDNotificationRegistry_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v85;
  logCategory__hmf_once_v85 = v1;
}

@end