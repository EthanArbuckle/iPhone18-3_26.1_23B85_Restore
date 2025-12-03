@interface HMDResidentAppleMediaStateManager
- (BOOL)hasRegistrationsForMediaProfileIdentifier:(_BOOL8)identifier;
- (HMDResidentAppleMediaStateManager)initWithDataSource:(id)source delegate:(id)delegate;
- (void)configureWithNotificationRegistry:(id)registry notificationCenter:(id)center;
- (void)handleAppleMediaAccessoryReachabilityChanged:(id)changed;
- (void)mediaPropertyRegistrationsDidChangeForMediaProfiles:(id)profiles;
- (void)refreshStateForMediaProfile:(void *)profile;
- (void)startRetryTimer;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDResidentAppleMediaStateManager

- (void)mediaPropertyRegistrationsDidChangeForMediaProfiles:(id)profiles
{
  v116 = *MEMORY[0x277D85DE8];
  profilesCopy = profiles;
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = profilesCopy;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Notified that media profile registrations did change: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v7 = MEMORY[0x277CBEB98];
  v105[0] = MEMORY[0x277D85DD0];
  v105[1] = 3221225472;
  v105[2] = __89__HMDResidentAppleMediaStateManager_mediaPropertyRegistrationsDidChangeForMediaProfiles___block_invoke;
  v105[3] = &unk_2797358A0;
  v105[4] = selfCopy;
  v8 = [profilesCopy na_filter:v105];
  v9 = [v7 setWithArray:v8];

  v10 = MEMORY[0x277CBEB98];
  v104[0] = MEMORY[0x277D85DD0];
  v104[1] = 3221225472;
  v104[2] = __89__HMDResidentAppleMediaStateManager_mediaPropertyRegistrationsDidChangeForMediaProfiles___block_invoke_2;
  v104[3] = &unk_2797358A0;
  v104[4] = selfCopy;
  v11 = [profilesCopy na_filter:v104];
  v87 = [v10 setWithArray:v11];

  if (selfCopy)
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_dataSource);
  }

  else
  {
    WeakRetained = 0;
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  obj = v9;
  v92 = [obj countByEnumeratingWithState:&v100 objects:v107 count:16];
  if (v92)
  {
    v90 = *v101;
    do
    {
      for (i = 0; i != v92; ++i)
      {
        if (*v101 != v90)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v100 + 1) + 8 * i);
        v14 = [WeakRetained mediaProfileForUniqueIdentifier:v13];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
          if (selfCopy)
          {
            v17 = objc_autoreleasePoolPush();
            v18 = selfCopy;
            v19 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v20 = HMFGetLogIdentifier();
              uniqueIdentifier = [v16 uniqueIdentifier];
              *v112 = 138543618;
              v113 = v20;
              v114 = 2112;
              v115 = uniqueIdentifier;
              _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Subscribing to updates for media profile identifier: %@", v112, 0x16u);
            }

            objc_autoreleasePoolPop(v17);
            os_unfair_lock_lock_with_options();
            v23 = objc_getProperty(v18, v22, 32, 1);
            uniqueIdentifier2 = [v16 uniqueIdentifier];
            v25 = [v23 containsObject:uniqueIdentifier2];

            if (v25)
            {
              v27 = objc_autoreleasePoolPush();
              v28 = v18;
              v29 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                v30 = HMFGetLogIdentifier();
                uniqueIdentifier3 = [v16 uniqueIdentifier];
                *v112 = 138543618;
                v113 = v30;
                v114 = 2112;
                v115 = uniqueIdentifier3;
                _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Already registered for updates for media profile identifier: %@", v112, 0x16u);
              }

              objc_autoreleasePoolPop(v27);
              os_unfair_lock_unlock(&v18->_lock);
            }

            else
            {
              v36 = objc_getProperty(v18, v26, 32, 1);
              uniqueIdentifier4 = [v16 uniqueIdentifier];
              [v36 addObject:uniqueIdentifier4];

              os_unfair_lock_unlock(&v18->_lock);
              accessory = [v16 accessory];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v39 = accessory;
              }

              else
              {
                v39 = 0;
              }

              v40 = v39;

              if ([v40 isCurrentAccessory])
              {
                v41 = objc_autoreleasePoolPush();
                v42 = v18;
                v43 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                {
                  v44 = HMFGetLogIdentifier();
                  *v112 = 138543362;
                  v113 = v44;
                  _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_INFO, "%{public}@Subscribed for updates for media profile identifier on current device", v112, 0xCu);
                }

                objc_autoreleasePoolPop(v41);
              }

              else
              {
                objc_initWeak(v112, v18);
                v45 = objc_loadWeakRetained(&v18->_delegate);
                *buf = MEMORY[0x277D85DD0];
                *&buf[8] = 3221225472;
                *&buf[16] = __71__HMDResidentAppleMediaStateManager_subscribeToUpdatesForMediaProfile___block_invoke;
                v109 = &unk_2797338E8;
                objc_copyWeak(&v111, v112);
                v46 = v16;
                v110 = v46;
                [v45 enableMediaNotifications:1 directlyOnMediaAccessory:v40 forStateManager:v18 completion:buf];

                [(HMDResidentAppleMediaStateManager *)v18 refreshStateForMediaProfile:v46];
                objc_destroyWeak(&v111);
                objc_destroyWeak(v112);
              }
            }
          }
        }

        else
        {
          v32 = objc_autoreleasePoolPush();
          v33 = selfCopy;
          v34 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = HMFGetLogIdentifier();
            *buf = 138543618;
            *&buf[4] = v35;
            *&buf[12] = 2112;
            *&buf[14] = v13;
            _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Could not find media profile with uniqueIdentifier: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v32);
        }
      }

      v92 = [obj countByEnumeratingWithState:&v100 objects:v107 count:16];
    }

    while (v92);
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v88 = v87;
  v93 = [v88 countByEnumeratingWithState:&v96 objects:v106 count:16];
  if (v93)
  {
    v91 = *v97;
    do
    {
      for (j = 0; j != v93; ++j)
      {
        if (*v97 != v91)
        {
          objc_enumerationMutation(v88);
        }

        v48 = *(*(&v96 + 1) + 8 * j);
        v49 = [WeakRetained mediaProfileForUniqueIdentifier:v48];
        v50 = v49;
        if (v49)
        {
          v51 = v49;
          if (selfCopy)
          {
            v52 = objc_autoreleasePoolPush();
            v53 = selfCopy;
            v54 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
            {
              v55 = HMFGetLogIdentifier();
              uniqueIdentifier5 = [v51 uniqueIdentifier];
              *v112 = 138543618;
              v113 = v55;
              v114 = 2112;
              v115 = uniqueIdentifier5;
              _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_INFO, "%{public}@Unsubscribing to updates for media profile identifier: %@", v112, 0x16u);
            }

            objc_autoreleasePoolPop(v52);
            os_unfair_lock_lock_with_options();
            v58 = objc_getProperty(v53, v57, 32, 1);
            uniqueIdentifier6 = [v51 uniqueIdentifier];
            v60 = [v58 containsObject:uniqueIdentifier6];

            if (v60)
            {
              v62 = objc_getProperty(v53, v61, 32, 1);
              uniqueIdentifier7 = [v51 uniqueIdentifier];
              [v62 removeObject:uniqueIdentifier7];

              os_unfair_lock_unlock(&v53->_lock);
              accessory2 = [v51 accessory];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v65 = accessory2;
              }

              else
              {
                v65 = 0;
              }

              v66 = v65;

              if ([v66 isCurrentAccessory])
              {
                v67 = objc_autoreleasePoolPush();
                v68 = v53;
                v69 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
                {
                  v70 = HMFGetLogIdentifier();
                  *v112 = 138543362;
                  v113 = v70;
                  _os_log_impl(&dword_2531F8000, v69, OS_LOG_TYPE_INFO, "%{public}@Unsubscribed for updates for media profile identifier on current device", v112, 0xCu);
                }

                objc_autoreleasePoolPop(v67);
              }

              else
              {
                objc_initWeak(v112, v53);
                v80 = objc_loadWeakRetained(&v53->_delegate);
                *buf = MEMORY[0x277D85DD0];
                *&buf[8] = 3221225472;
                *&buf[16] = __73__HMDResidentAppleMediaStateManager_unsubscribeToUpdatesForMediaProfile___block_invoke;
                v109 = &unk_2797338E8;
                objc_copyWeak(&v111, v112);
                v110 = v51;
                [v80 enableMediaNotifications:0 directlyOnMediaAccessory:v66 forStateManager:v53 completion:buf];

                objc_destroyWeak(&v111);
                objc_destroyWeak(v112);
              }
            }

            else
            {
              v75 = objc_autoreleasePoolPush();
              v76 = v53;
              v77 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
              {
                v78 = HMFGetLogIdentifier();
                uniqueIdentifier8 = [v51 uniqueIdentifier];
                *v112 = 138543618;
                v113 = v78;
                v114 = 2112;
                v115 = uniqueIdentifier8;
                _os_log_impl(&dword_2531F8000, v77, OS_LOG_TYPE_INFO, "%{public}@Already unsubscribed for updates for media profile identifier: %@", v112, 0x16u);
              }

              objc_autoreleasePoolPop(v75);
              os_unfair_lock_unlock(&v53->_lock);
            }
          }
        }

        else
        {
          v71 = objc_autoreleasePoolPush();
          v72 = selfCopy;
          v73 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            v74 = HMFGetLogIdentifier();
            *buf = 138543618;
            *&buf[4] = v74;
            *&buf[12] = 2112;
            *&buf[14] = v48;
            _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_ERROR, "%{public}@Could not find media profile with uniqueIdentifier: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v71);
        }
      }

      v93 = [v88 countByEnumeratingWithState:&v96 objects:v106 count:16];
    }

    while (v93);
  }

  v81 = objc_autoreleasePoolPush();
  v82 = selfCopy;
  v83 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
  {
    v84 = HMFGetLogIdentifier();
    *buf = 138543874;
    *&buf[4] = v84;
    *&buf[12] = 2112;
    *&buf[14] = obj;
    *&buf[22] = 2112;
    v109 = v88;
    _os_log_impl(&dword_2531F8000, v83, OS_LOG_TYPE_INFO, "%{public}@Added %@ media profiles and removed: %@ media profiles from media state management", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v81);
  v85 = *MEMORY[0x277D85DE8];
}

void __73__HMDResidentAppleMediaStateManager_unsubscribeToUpdatesForMediaProfile___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 32) uniqueIdentifier];
    v10 = HMFBooleanToString();
    v18 = 138544130;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v3;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Unsubscribed for updates for media profile identifier: %@ with success: %@ - %@", &v18, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  if (v6)
  {
    os_unfair_lock_lock_with_options();
    if (v3)
    {
      v12 = objc_getProperty(v6, v11, 32, 1);
      v13 = [*(a1 + 32) uniqueIdentifier];
      [v12 addObject:v13];

      v15 = objc_getProperty(v6, v14, 40, 1);
      v16 = [*(a1 + 32) uniqueIdentifier];
      [v15 addObject:v16];

      os_unfair_lock_unlock(v6 + 2);
      [(HMDResidentAppleMediaStateManager *)v6 startRetryTimer];
    }

    else
    {
      *&v6[14]._os_unfair_lock_opaque = 0;
      os_unfair_lock_unlock(v6 + 2);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)startRetryTimer
{
  v24 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if (*(self + 48))
  {
    v2 = objc_autoreleasePoolPush();
    selfCopy = self;
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v5;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Not starting media state manager retry timer because one is already running", &v20, 0xCu);
    }

LABEL_10:

    objc_autoreleasePoolPop(v2);
    goto LABEL_11;
  }

  v6 = *(self + 56);
  if (v6 > 8)
  {
    v2 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v18;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_ERROR, "%{public}@Not starting media state manager retry timer due to too many failed retries", &v20, 0xCu);
    }

    goto LABEL_10;
  }

  v7 = v6 + 1;
  *(self + 56) = v7;
  v8 = HMDResidentAppleMediaStateManagerRetryIntervals[v7];
  v9 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
    v20 = 138543618;
    v21 = v12;
    v22 = 2112;
    v23 = v13;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Starting media state manager retry timer with fire interval: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  WeakRetained = objc_loadWeakRetained(selfCopy3 + 2);
  v15 = [WeakRetained timerWithTimerInterval:v8];
  v16 = selfCopy3[6];
  selfCopy3[6] = v15;

  [selfCopy3[6] setDelegate:selfCopy3];
  [selfCopy3[6] resume];
LABEL_11:
  os_unfair_lock_unlock((self + 8));
  v19 = *MEMORY[0x277D85DE8];
}

void __71__HMDResidentAppleMediaStateManager_subscribeToUpdatesForMediaProfile___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 32) uniqueIdentifier];
    v10 = HMFBooleanToString();
    v18 = 138544130;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v3;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Subscribed for updates for media profile identifier: %@ with success: %@ - %@", &v18, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  if (v6)
  {
    os_unfair_lock_lock_with_options();
    if (v3)
    {
      v12 = objc_getProperty(v6, v11, 32, 1);
      v13 = [*(a1 + 32) uniqueIdentifier];
      [v12 removeObject:v13];

      v15 = objc_getProperty(v6, v14, 40, 1);
      v16 = [*(a1 + 32) uniqueIdentifier];
      [v15 addObject:v16];

      os_unfair_lock_unlock(v6 + 2);
      [(HMDResidentAppleMediaStateManager *)v6 startRetryTimer];
    }

    else
    {
      *&v6[14]._os_unfair_lock_opaque = 0;
      os_unfair_lock_unlock(v6 + 2);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)refreshStateForMediaProfile:(void *)profile
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (profile)
  {
    v4 = objc_autoreleasePoolPush();
    profileCopy = profile;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      uniqueIdentifier = [v3 uniqueIdentifier];
      *buf = 138543618;
      v22 = v7;
      v23 = 2112;
      v24 = uniqueIdentifier;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Refreshing state for media profile with unique identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    accessory = [v3 accessory];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = accessory;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    device = [v11 device];
    if (device)
    {
      WeakRetained = objc_loadWeakRetained(profileCopy + 3);
      v20 = v3;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
      [WeakRetained readProfileState:v14 viaDevice:device forStateManager:profileCopy];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = profileCopy;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138544130;
        v22 = v18;
        v23 = 2112;
        v24 = 0;
        v25 = 2112;
        v26 = v11;
        v27 = 2112;
        v28 = v3;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unable to refresh state either device: %@ for accessory: %@, mediaProfile: %@ is nil", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasRegistrationsForMediaProfileIdentifier:(_BOOL8)identifier
{
  identifierCopy = identifier;
  if (identifier)
  {
    v3 = a2;
    WeakRetained = objc_loadWeakRetained((identifierCopy + 16));
    v5 = [WeakRetained propertiesRegisteredForMediaProfileUniqueIdentifier:v3];

    identifierCopy = [v5 count] != 0;
  }

  return identifierCopy;
}

- (void)timerDidFire:(id)fire
{
  v16 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  os_unfair_lock_lock_with_options();
  retryTimer = self->_retryTimer;
  if (retryTimer == fireCopy)
  {
    self->_retryTimer = 0;

    allObjects = [(NSMutableSet *)self->_mediaProfilesToRetry allObjects];
    [(NSMutableSet *)self->_mediaProfilesToRetry removeAllObjects];
    os_unfair_lock_unlock(&self->_lock);
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = allObjects;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Retrying media subscription for profiles: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDResidentAppleMediaStateManager *)selfCopy mediaPropertyRegistrationsDidChangeForMediaProfiles:allObjects];
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    allObjects = MEMORY[0x277CBEBF8];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleAppleMediaAccessoryReachabilityChanged:(id)changed
{
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"HMDAccessoryNotificationKey"];

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
    mediaProfile = [v7 mediaProfile];
    if (mediaProfile)
    {
      os_unfair_lock_lock_with_options();
      v10 = self ? objc_getProperty(self, v9, 32, 1) : 0;
      v11 = v10;
      uniqueIdentifier = [mediaProfile uniqueIdentifier];
      v13 = [v11 containsObject:uniqueIdentifier];

      os_unfair_lock_unlock(&self->_lock);
      if (v13)
      {
        [(HMDResidentAppleMediaStateManager *)self refreshStateForMediaProfile:mediaProfile];
      }
    }
  }
}

- (void)configureWithNotificationRegistry:(id)registry notificationCenter:(id)center
{
  centerCopy = center;
  [registry addDelegate:self];
  [centerCopy addObserver:self selector:sel_handleAppleMediaAccessoryReachabilityChanged_ name:@"HMDAppleMediaAccessoryDeviceIsReachableNotification" object:0];
}

- (HMDResidentAppleMediaStateManager)initWithDataSource:(id)source delegate:(id)delegate
{
  sourceCopy = source;
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = HMDResidentAppleMediaStateManager;
  v8 = [(HMDResidentAppleMediaStateManager *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dataSource, sourceCopy);
    objc_storeWeak(&v9->_delegate, delegateCopy);
    v9->_lock._os_unfair_lock_opaque = 0;
    v10 = [MEMORY[0x277CBEB58] set];
    subscribedMediaProfiles = v9->_subscribedMediaProfiles;
    v9->_subscribedMediaProfiles = v10;

    v12 = [MEMORY[0x277CBEB58] set];
    mediaProfilesToRetry = v9->_mediaProfilesToRetry;
    v9->_mediaProfilesToRetry = v12;

    v9->_retryCount = 0;
  }

  return v9;
}

@end