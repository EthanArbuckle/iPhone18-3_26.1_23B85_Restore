@interface HMDResidentAppleMediaStateManager
- (BOOL)hasRegistrationsForMediaProfileIdentifier:(_BOOL8)a1;
- (HMDResidentAppleMediaStateManager)initWithDataSource:(id)a3 delegate:(id)a4;
- (void)configureWithNotificationRegistry:(id)a3 notificationCenter:(id)a4;
- (void)handleAppleMediaAccessoryReachabilityChanged:(id)a3;
- (void)mediaPropertyRegistrationsDidChangeForMediaProfiles:(id)a3;
- (void)refreshStateForMediaProfile:(void *)a1;
- (void)startRetryTimer;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDResidentAppleMediaStateManager

- (void)mediaPropertyRegistrationsDidChangeForMediaProfiles:(id)a3
{
  v116 = *MEMORY[0x277D85DE8];
  v86 = a3;
  v4 = objc_autoreleasePoolPush();
  v95 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v86;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Notified that media profile registrations did change: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v7 = MEMORY[0x277CBEB98];
  v105[0] = MEMORY[0x277D85DD0];
  v105[1] = 3221225472;
  v105[2] = __89__HMDResidentAppleMediaStateManager_mediaPropertyRegistrationsDidChangeForMediaProfiles___block_invoke;
  v105[3] = &unk_2797358A0;
  v105[4] = v95;
  v8 = [v86 na_filter:v105];
  v9 = [v7 setWithArray:v8];

  v10 = MEMORY[0x277CBEB98];
  v104[0] = MEMORY[0x277D85DD0];
  v104[1] = 3221225472;
  v104[2] = __89__HMDResidentAppleMediaStateManager_mediaPropertyRegistrationsDidChangeForMediaProfiles___block_invoke_2;
  v104[3] = &unk_2797358A0;
  v104[4] = v95;
  v11 = [v86 na_filter:v104];
  v87 = [v10 setWithArray:v11];

  if (v95)
  {
    WeakRetained = objc_loadWeakRetained(&v95->_dataSource);
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
          if (v95)
          {
            v17 = objc_autoreleasePoolPush();
            v18 = v95;
            v19 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v20 = HMFGetLogIdentifier();
              v21 = [v16 uniqueIdentifier];
              *v112 = 138543618;
              v113 = v20;
              v114 = 2112;
              v115 = v21;
              _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Subscribing to updates for media profile identifier: %@", v112, 0x16u);
            }

            objc_autoreleasePoolPop(v17);
            os_unfair_lock_lock_with_options();
            v23 = objc_getProperty(v18, v22, 32, 1);
            v24 = [v16 uniqueIdentifier];
            v25 = [v23 containsObject:v24];

            if (v25)
            {
              v27 = objc_autoreleasePoolPush();
              v28 = v18;
              v29 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                v30 = HMFGetLogIdentifier();
                v31 = [v16 uniqueIdentifier];
                *v112 = 138543618;
                v113 = v30;
                v114 = 2112;
                v115 = v31;
                _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Already registered for updates for media profile identifier: %@", v112, 0x16u);
              }

              objc_autoreleasePoolPop(v27);
              os_unfair_lock_unlock(&v18->_lock);
            }

            else
            {
              v36 = objc_getProperty(v18, v26, 32, 1);
              v37 = [v16 uniqueIdentifier];
              [v36 addObject:v37];

              os_unfair_lock_unlock(&v18->_lock);
              v38 = [v16 accessory];
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
          v33 = v95;
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
          if (v95)
          {
            v52 = objc_autoreleasePoolPush();
            v53 = v95;
            v54 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
            {
              v55 = HMFGetLogIdentifier();
              v56 = [v51 uniqueIdentifier];
              *v112 = 138543618;
              v113 = v55;
              v114 = 2112;
              v115 = v56;
              _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_INFO, "%{public}@Unsubscribing to updates for media profile identifier: %@", v112, 0x16u);
            }

            objc_autoreleasePoolPop(v52);
            os_unfair_lock_lock_with_options();
            v58 = objc_getProperty(v53, v57, 32, 1);
            v59 = [v51 uniqueIdentifier];
            v60 = [v58 containsObject:v59];

            if (v60)
            {
              v62 = objc_getProperty(v53, v61, 32, 1);
              v63 = [v51 uniqueIdentifier];
              [v62 removeObject:v63];

              os_unfair_lock_unlock(&v53->_lock);
              v64 = [v51 accessory];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v65 = v64;
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
                v79 = [v51 uniqueIdentifier];
                *v112 = 138543618;
                v113 = v78;
                v114 = 2112;
                v115 = v79;
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
          v72 = v95;
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
  v82 = v95;
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
  if (*(a1 + 48))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = a1;
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

  v6 = *(a1 + 56);
  if (v6 > 8)
  {
    v2 = objc_autoreleasePoolPush();
    v17 = a1;
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
  *(a1 + 56) = v7;
  v8 = HMDResidentAppleMediaStateManagerRetryIntervals[v7];
  v9 = objc_autoreleasePoolPush();
  v10 = a1;
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
  WeakRetained = objc_loadWeakRetained(v10 + 2);
  v15 = [WeakRetained timerWithTimerInterval:v8];
  v16 = v10[6];
  v10[6] = v15;

  [v10[6] setDelegate:v10];
  [v10[6] resume];
LABEL_11:
  os_unfair_lock_unlock((a1 + 8));
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

- (void)refreshStateForMediaProfile:(void *)a1
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = a1;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [v3 uniqueIdentifier];
      *buf = 138543618;
      v22 = v7;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Refreshing state for media profile with unique identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = [v3 accessory];
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

    v12 = [v11 device];
    if (v12)
    {
      WeakRetained = objc_loadWeakRetained(v5 + 3);
      v20 = v3;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
      [WeakRetained readProfileState:v14 viaDevice:v12 forStateManager:v5];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = v5;
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

- (BOOL)hasRegistrationsForMediaProfileIdentifier:(_BOOL8)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    WeakRetained = objc_loadWeakRetained((v2 + 16));
    v5 = [WeakRetained propertiesRegisteredForMediaProfileUniqueIdentifier:v3];

    v2 = [v5 count] != 0;
  }

  return v2;
}

- (void)timerDidFire:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  retryTimer = self->_retryTimer;
  if (retryTimer == v4)
  {
    self->_retryTimer = 0;

    v6 = [(NSMutableSet *)self->_mediaProfilesToRetry allObjects];
    [(NSMutableSet *)self->_mediaProfilesToRetry removeAllObjects];
    os_unfair_lock_unlock(&self->_lock);
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Retrying media subscription for profiles: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDResidentAppleMediaStateManager *)v8 mediaPropertyRegistrationsDidChangeForMediaProfiles:v6];
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v6 = MEMORY[0x277CBEBF8];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleAppleMediaAccessoryReachabilityChanged:(id)a3
{
  v14 = a3;
  v4 = [v14 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"HMDAccessoryNotificationKey"];

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
    v8 = [v7 mediaProfile];
    if (v8)
    {
      os_unfair_lock_lock_with_options();
      v10 = self ? objc_getProperty(self, v9, 32, 1) : 0;
      v11 = v10;
      v12 = [v8 uniqueIdentifier];
      v13 = [v11 containsObject:v12];

      os_unfair_lock_unlock(&self->_lock);
      if (v13)
      {
        [(HMDResidentAppleMediaStateManager *)self refreshStateForMediaProfile:v8];
      }
    }
  }
}

- (void)configureWithNotificationRegistry:(id)a3 notificationCenter:(id)a4
{
  v6 = a4;
  [a3 addDelegate:self];
  [v6 addObserver:self selector:sel_handleAppleMediaAccessoryReachabilityChanged_ name:@"HMDAppleMediaAccessoryDeviceIsReachableNotification" object:0];
}

- (HMDResidentAppleMediaStateManager)initWithDataSource:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = HMDResidentAppleMediaStateManager;
  v8 = [(HMDResidentAppleMediaStateManager *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dataSource, v6);
    objc_storeWeak(&v9->_delegate, v7);
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