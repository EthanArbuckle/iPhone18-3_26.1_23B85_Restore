@interface HMDAccessorySetupMetricDispatcher
+ (id)logCategory;
- (BOOL)hasHome:(id)a3;
- (BOOL)submitted;
- (HMDAccessorySetupMetricDispatcher)initWithQueue:(id)a3 discoveryController:(id)a4 networkInfoController:(id)a5 trackingInfo:(id)a6 setupSessionIdentifier:(id)a7 homeManager:(id)a8 logEventSubmitter:(id)a9 radarInitiator:(id)a10 timerFactory:(id)a11;
- (HMDAccessorySetupMetricDispatcher)initWithQueue:(id)a3 trackingInfo:(id)a4 setupSessionIdentifier:(id)a5 homeManager:(id)a6;
- (HMDAccessorySetupMetricDispatcherDelegate)delegate;
- (HMDDeviceSetupTrackingInfo)trackingInfo;
- (id)home;
- (id)logIdentifier;
- (id)networkMetricWithDiscoveryController:(id)a3 networkInfoController:(id)a4 sessionID:(id)a5 idsIdentifierString:(id)a6 currentWiFiInfo:(id)a7 currentWiFiNetworkRSSI:(int)a8 numResidents:(int64_t)a9 numAppleMediaAccessories:(int64_t)a10 accessoryDiagnosticInfo:(id)a11 primaryResidentIdsIdentifierString:(id)a12 primaryResidentDiagnosticInfo:(id)a13 homeUUID:(id)a14 primaryResidentDiagnosticInfoFetched:(BOOL)a15;
- (id)obtainDiscoveryAssertion;
- (void)_queryRemoteAndSubmitWithConfigurationError:(uint64_t)a1;
- (void)addHome:(id)a3;
- (void)didReceiveEvent:(id)a3 topic:(id)a4;
- (void)markAccessoryAddCompleted;
- (void)markAccessoryRemoved;
- (void)markFirstSettingObserved;
- (void)markLanguageSettingObserved;
- (void)markRepairSessionComplete;
- (void)releaseDiscoveryAssertionWithAssertionHandle:(id)a3;
- (void)subscribeToSettingsEvents:(id *)a1;
- (void)timerDidFire:(id)a3;
- (void)updateTrackingInfo:(id)a3;
@end

@implementation HMDAccessorySetupMetricDispatcher

- (id)networkMetricWithDiscoveryController:(id)a3 networkInfoController:(id)a4 sessionID:(id)a5 idsIdentifierString:(id)a6 currentWiFiInfo:(id)a7 currentWiFiNetworkRSSI:(int)a8 numResidents:(int64_t)a9 numAppleMediaAccessories:(int64_t)a10 accessoryDiagnosticInfo:(id)a11 primaryResidentIdsIdentifierString:(id)a12 primaryResidentDiagnosticInfo:(id)a13 homeUUID:(id)a14 primaryResidentDiagnosticInfoFetched:(BOOL)a15
{
  v44 = a8;
  v38 = self;
  v42 = a15;
  v18 = a12;
  v40 = a9;
  v41 = a10;
  v19 = sub_253CCFF58();
  v45 = *(v19 - 8);
  v46 = v19;
  v20 = *(v45 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_253CD0968();
  v43 = v24;
  v37 = sub_253CD0968();
  v39 = v25;
  if (a12)
  {
    v18 = sub_253CD0968();
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  sub_253CCFF38();
  v28 = a3;
  v29 = a4;
  v30 = a7;
  v36 = a11;
  v31 = a13;
  v32 = v38;
  v33 = sub_25322D750(v28, v29, v23, v43, v37, v39, v30, v44, v40, v41, a11, v18, v27, a13, v22, v42);

  (*(v45 + 8))(v22, v46);

  return v33;
}

- (id)obtainDiscoveryAssertion
{
  v2 = _sSo33HMDAccessorySetupMetricDispatcherC19HomeKitDaemonLegacyE24obtainDiscoveryAssertionyXlyF_0();

  return v2;
}

- (void)releaseDiscoveryAssertionWithAssertionHandle:(id)a3
{
  type metadata accessor for AssertionHandle();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    sub_25321D668();
  }

  swift_unknownObjectRelease();
}

- (HMDAccessorySetupMetricDispatcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDAccessorySetupMetricDispatcher *)self trackingInfo];
  v3 = [v2 identifier];
  v4 = [v3 UUIDString];

  return v4;
}

- (BOOL)hasHome:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessorySetupMetricDispatcher *)&self->super.super.isa home];

  return v5 == v4;
}

- (id)home
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 17);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)addHome:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  if (self)
  {
    objc_storeWeak(&self->_home, a3);
    WeakRetained = objc_loadWeakRetained(&self->_homeManager);
    v5 = [WeakRetained homes];

    os_unfair_lock_lock_with_options();
    v6 = objc_loadWeakRetained(&self->_home);
    self->_selectedHomeLocationStatus = [v6 homeLocation];
    self->_isUserAtOtherOwnedHome = 0;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          if ([v11 homeLocation] == 1)
          {
            v12 = [v11 uuid];
            v13 = [v6 uuid];
            if ([v12 isEqual:v13])
            {
            }

            else
            {
              v14 = [v11 isOwnerUser];

              if (v14)
              {
                self->_isUserAtOtherOwnedHome = 1;
              }
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)submitted
{
  os_unfair_lock_lock_with_options();
  submitted = self->_submitted;
  os_unfair_lock_unlock(&self->_lock);
  return submitted;
}

- (void)markLanguageSettingObserved
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if (self->_languageSettingTime)
  {
    v3 = *MEMORY[0x277D85DE8];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_languageSettingTime = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) / 0x3B9ACA00;
    os_unfair_lock_unlock(&self->_lock);
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [(HMDAccessorySetupMetricDispatcher *)v5 trackingInfo];
      v9 = [v8 accessoryUUID];
      v11 = 138543618;
      v12 = v7;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Marked language setting observed (%@)", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = *MEMORY[0x277D85DE8];
  }
}

- (void)markFirstSettingObserved
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if (self->_firstSettingTime)
  {
    v3 = *MEMORY[0x277D85DE8];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_firstSettingTime = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) / 0x3B9ACA00;
    os_unfair_lock_unlock(&self->_lock);
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [(HMDAccessorySetupMetricDispatcher *)v5 trackingInfo];
      v9 = [v8 accessoryUUID];
      v15 = 138543618;
      v16 = v7;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Marked first setting observed (%@)", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    logger = v5->_logger;
    if (os_signpost_enabled(logger))
    {
      v11 = logger;
      v12 = [(HMDAccessorySetupMetricDispatcher *)v5 trackingInfo];
      v13 = [v12 accessoryUUID];
      v15 = 138412290;
      v16 = v13;
      _os_signpost_emit_with_name_impl(&dword_2531F8000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FirstAccessorySettingObserved", "accessoryUUID=%{signpost.description:attribute}@ ", &v15, 0xCu);
    }

    v14 = *MEMORY[0x277D85DE8];
  }
}

- (void)markAccessoryRemoved
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  self->_accessoryRemovedTime = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) / 0x3B9ACA00;
  os_unfair_lock_unlock(&self->_lock);
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMDAccessorySetupMetricDispatcher *)v4 trackingInfo];
    v8 = [v7 accessoryUUID];
    v11 = 138543618;
    v12 = v6;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@No longer tracking accessory (%@) setup time as it was removed", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v9 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2029];
  [(HMDAccessorySetupMetricDispatcher *)v4 _queryRemoteAndSubmitWithConfigurationError:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queryRemoteAndSubmitWithConfigurationError:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = dispatch_group_create();
    WeakRetained = objc_loadWeakRetained((a1 + 136));
    v6 = [a1 delegate];
    v7 = [WeakRetained residentDeviceManager];
    v8 = [v7 primaryResidentDevice];

    v9 = [a1 obtainDiscoveryAssertion];
    v10 = *(a1 + 176);
    *(a1 + 176) = v9;

    v11 = [WeakRetained appleMediaAccessories];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __81__HMDAccessorySetupMetricDispatcher__queryRemoteAndSubmitWithConfigurationError___block_invoke;
    v28[3] = &unk_279734F10;
    v12 = v8;
    v29 = v12;
    v13 = [v11 na_firstObjectPassingTest:v28];

    dispatch_group_enter(v4);
    v14 = [a1 trackingInfo];
    v15 = [v14 accessoryUUID];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __81__HMDAccessorySetupMetricDispatcher__queryRemoteAndSubmitWithConfigurationError___block_invoke_2;
    v26[3] = &unk_279734F38;
    v26[4] = a1;
    v16 = v4;
    v27 = v16;
    [v6 querySetupDiagnosticStateForAccessoryUUID:v15 completion:v26];

    if (v13)
    {
      dispatch_group_enter(v16);
      v17 = [v13 uuid];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __81__HMDAccessorySetupMetricDispatcher__queryRemoteAndSubmitWithConfigurationError___block_invoke_3;
      v24[3] = &unk_279734F38;
      v24[4] = a1;
      v25 = v16;
      [v6 querySetupDiagnosticStateForAccessoryUUID:v17 completion:v24];
    }

    else
    {
      v19 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2032];
      objc_setProperty_atomic(a1, v20, v19, 168);
    }

    Property = objc_getProperty(a1, v18, 80, 1);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __81__HMDAccessorySetupMetricDispatcher__queryRemoteAndSubmitWithConfigurationError___block_invoke_4;
    v22[3] = &unk_2797359B0;
    v22[4] = a1;
    v23 = v3;
    dispatch_group_notify(v16, Property, v22);
  }
}

uint64_t __81__HMDAccessorySetupMetricDispatcher__queryRemoteAndSubmitWithConfigurationError___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 idsIdentifier];
  v4 = [*(a1 + 32) device];
  v5 = [v4 idsIdentifier];
  v6 = [v3 isEqual:v5];

  return v6;
}

void __81__HMDAccessorySetupMetricDispatcher__queryRemoteAndSubmitWithConfigurationError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  newValue = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    objc_setProperty_atomic(v7, v5, newValue, 144);
    v9 = *(a1 + 32);
    if (v9)
    {
      objc_setProperty_atomic(v9, v8, v6, 152);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __81__HMDAccessorySetupMetricDispatcher__queryRemoteAndSubmitWithConfigurationError___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  newValue = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    objc_setProperty_atomic(v7, v5, newValue, 160);
    v9 = *(a1 + 32);
    if (v9)
    {
      objc_setProperty_atomic(v9, v8, v6, 168);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __81__HMDAccessorySetupMetricDispatcher__queryRemoteAndSubmitWithConfigurationError___block_invoke_4(uint64_t a1)
{
  v161 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v151 = *(a1 + 40);
  if (!v1)
  {
    goto LABEL_63;
  }

  os_unfair_lock_lock_with_options();
  v2 = *(v1 + 24);
  *(v1 + 24) = 1;
  os_unfair_lock_unlock((v1 + 8));
  if (v2 == 1)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = v1;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v154 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Can't submit the metric twice", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    goto LABEL_63;
  }

  v7 = [v1 trackingInfo];
  v8 = [v1 primaryResidentIdenticalToAccessoryBeingAdded];
  if ([v1 numberOfMediaAccessoriesnHome])
  {
    v8 |= 2uLL;
  }

  if ([v1 numberOfResidentsInHome])
  {
    v8 |= 4uLL;
  }

  if ([v1 numberOfAvailableResidentsInHome])
  {
    v8 |= 8uLL;
  }

  if ([v1 primaryResidentAssignedInHomeWhenAddAccessory])
  {
    v8 |= 0x10uLL;
  }

  if ([v1 didSendAddAccessoryRequestToPrimary])
  {
    v8 |= 0x20uLL;
  }

  v9 = [v1 didAddAccessoryLocally];
  v10 = v8 | 0x40;
  if (!v9)
  {
    v10 = v8;
  }

  v135 = v10;
  v143 = [HMDAppleMediaAccessorySetupLogEvent alloc];
  v141 = [v7 role];
  v139 = [v7 startTime];
  v137 = [v7 endTime];
  v133 = [v1 addAccessoryFinishTime];
  v131 = [v1 accessoryRemovedTime];
  v129 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v145 = [v7 sessionError];
  v149 = [v1 setupSessionIdentifier];
  v127 = [v149 UUIDString];
  v125 = [v1 isRepairSession];
  v147 = [v7 accessoryCategory];
  v123 = [v147 categoryType];
  v11 = v7;
  WeakRetained = objc_loadWeakRetained((v1 + 136));
  v13 = [v11 accessoryUUID];

  v14 = [WeakRetained accessoryWithUUID:v13];

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

  v17 = [v16 softwareVersion];

  v121 = [v17 versionString];

  v120 = [v11 setupClientBundleID];
  v119 = objc_loadWeakRetained((v1 + 112));
  v118 = [v119 homepodSetupRetryCount];
  v117 = [v1 firstSettingTime];
  v116 = [v1 languageSettingTime];
  v152 = v11;
  v18 = objc_loadWeakRetained((v1 + 136));
  if (v18 && ([v152 accessoryUUID], v19 = objc_claimAutoreleasedReturnValue(), v19, v19))
  {
    v20 = [v152 accessoryUUID];
    v115 = [v18 defaultRoomContainsAccessoryWithUUID:v20];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = v1;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = HMFGetLogIdentifier();
      v25 = objc_loadWeakRetained(v22 + 17);
      v26 = [v152 accessoryUUID];
      *buf = 138543874;
      v154 = v24;
      v155 = 2112;
      v156 = v25;
      v157 = 2112;
      v158 = v26;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Either home: %@ or accessory UUID: %@ is nil", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    v115 = 0;
  }

  v114 = [v1 selectedHomeLocationStatus];
  v113 = [v1 isUserAtOtherOwnedHome];
  v112 = [v1 lastPrimaryResidentAvailableTime];
  v27 = [v1 numberOfTimesPrimaryResidentChanged];
  v28 = [v1 lastPrimaryClientConnectedTime];
  v29 = [v1 numberOfTimesPrimaryClientConnected];
  v30 = [v1 numberOfTimesPrimaryClientDisconnected];
  v31 = [v1 numberOfTimesPrimaryClientConnectMessageFailed];
  v32 = [v1 lastPrimaryClientConnectMessageFailError];
  v34 = objc_getProperty(v1, v33, 152, 1);
  v36 = objc_getProperty(v1, v35, 168, 1);
  v37 = [v1 addAccessoryOnPrimaryFailError];
  LODWORD(v111) = v31;
  LODWORD(v110) = v27;
  LOBYTE(v109) = v113;
  LOBYTE(v108) = v115;
  LOBYTE(v106) = v125;
  v144 = [(HMDAppleMediaAccessorySetupLogEvent *)v143 initWithRole:v141 setupStartTime:v139 setupEndTime:v137 accessoryAddEndTime:v133 accessoryRemoveTime:v131 configurationEndTime:v129 / 0x3B9ACA00 setupSessionError:v145 setupSessionIdentifier:v127 isRepairSession:v106 category:v123 accessorySoftwareVersion:v121 setupClientBundleID:v120 retryCount:v118 firstSettingTime:v117 languageSettingTime:v116 accessoryInDefaultRoom:v108 selectedHomeLocationStatus:v114 isUserAtOtherOwnedHome:v109 lastPrimaryResidentAvailableTime:v112 numberOfTimesPrimaryResidentChanged:v110 lastPrimaryClientConnectedTime:v28 numberOfTimesPrimaryClientConnected:__PAIR64__(v30 numberOfTimesPrimaryClientDisconnected:v29) numberOfTimesPrimaryClientConnectMessageFailed:v111 addAccessoryMessageReport:v135 lastPrimaryClientConnectMessageFailError:v32 accessoryDiagnosticInfoFetchError:v34 primaryResidentDiagnosticInfoFetchError:v36 addAccessoryOnPrimaryFailError:v37];

  v148 = objc_loadWeakRetained((v1 + 96));
  v38 = objc_autoreleasePoolPush();
  v39 = v1;
  v40 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    v41 = HMFGetLogIdentifier();
    v42 = [v152 accessoryUUID];
    v43 = [(HMDAppleMediaAccessorySetupLogEvent *)v144 coreAnalyticsEventDictionary];
    *buf = 138544130;
    v154 = v41;
    v155 = 2112;
    v156 = v42;
    v157 = 2112;
    v158 = v43;
    v159 = 2112;
    v160 = v151;
    _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, "%{public}@Submitting accessory (%@) setup log event:%@ with error:%@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v38);
  [v148 submitLogEvent:v144 error:v151];
  v150 = objc_loadWeakRetained(v39 + 17);
  v44 = [v150 currentDevice];
  v45 = [v44 idsIdentifier];
  v146 = [v45 UUIDString];

  v46 = [v150 residentDeviceManager];
  v140 = [v46 primaryResidentDevice];

  if (!v146)
  {
    v48 = objc_autoreleasePoolPush();
    v49 = v39;
    v50 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = HMFGetLogIdentifier();
      *buf = 138543362;
      v154 = v51;
      _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_ERROR, "%{public}@Could not get idsIdentifier of current device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v48);
    v146 = @"Unknown";
  }

  v142 = objc_getProperty(v39, v47, 120, 1);
  v53 = objc_getProperty(v39, v52, 128, 1);
  v138 = v53;
  if (v150 && v142 && v53)
  {
    v54 = +[HMDMainDriver driver];
    v136 = [v54 currentWiFiNetworkRSSI];

    if (v136)
    {
      v122 = [v136 intValue];
    }

    else
    {
      v122 = 0;
    }

    v134 = [v39 setupSessionIdentifier];
    v126 = [v134 UUIDString];
    v132 = +[HMDMainDriver driver];
    v124 = [v132 currentWiFiNetworkInfo];
    v130 = [v150 residentDeviceManager];
    v128 = [v130 residentDevices];
    v59 = [v128 count];
    v60 = [v150 appleMediaAccessories];
    v61 = [v60 count];
    v63 = objc_getProperty(v39, v62, 144, 1);
    v64 = [v140 device];
    v65 = [v64 idsIdentifier];
    v66 = [v65 UUIDString];
    v68 = objc_getProperty(v39, v67, 160, 1);
    v69 = [v150 uuid];
    LOBYTE(v107) = [objc_getProperty(v39 v70] == 2032;
    v71 = [v39 networkMetricWithDiscoveryController:v142 networkInfoController:v138 sessionID:v126 idsIdentifierString:v146 currentWiFiInfo:v124 currentWiFiNetworkRSSI:v122 numResidents:v59 numAppleMediaAccessories:v61 accessoryDiagnosticInfo:v63 primaryResidentIdsIdentifierString:v66 primaryResidentDiagnosticInfo:v68 homeUUID:v69 primaryResidentDiagnosticInfoFetched:v107];

    [v148 submitLogEvent:v71 error:v151];
  }

  else
  {
    v55 = objc_autoreleasePoolPush();
    v56 = v39;
    v57 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v58 = HMFGetLogIdentifier();
      *buf = 138543362;
      v154 = v58;
      _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_ERROR, "%{public}@Did not find valid controllers to get network information", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v55);
  }

  [v39 releaseDiscoveryAssertionWithAssertionHandle:*(v39 + 22)];
  objc_storeStrong(v39 + 22, 0);
  v72 = [v152 accessoryCategory];
  v73 = [v72 categoryType];
  v74 = [v73 isEqualToString:*MEMORY[0x277CCE8B0]];

  v75 = objc_loadWeakRetained(v39 + 14);
  v76 = v75;
  if (v74)
  {
    [v75 setHomepodSetupRetryCount:{objc_msgSend(v75, "homepodSetupRetryCount") + 1}];
    if ([objc_getProperty(v39 v77])
    {
      v79 = [objc_getProperty(v39 v78];
      v80 = [HMDCurrentAccessorySetupMetricDispatcher homepodSetupLogEventFromProtoSetupInfo:v79];

      if (v80)
      {
        v81 = [v39 setupSessionIdentifier];
        v82 = [v81 UUIDString];
        [v80 setSetupSessionIdentifier:v82];
      }

      [v148 submitLogEvent:v80];
      v83 = objc_autoreleasePoolPush();
      v84 = v39;
      v85 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        v86 = HMFGetLogIdentifier();
        *buf = 138543362;
        v154 = v86;
        _os_log_impl(&dword_2531F8000, v85, OS_LOG_TYPE_DEFAULT, "%{public}@Submitted retrieved homepod log event.", buf, 0xCu);
      }
    }

    else
    {
      if (!objc_getProperty(v39, v78, 152, 1))
      {
        v91 = objc_autoreleasePoolPush();
        v92 = v39;
        v93 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
        {
          v94 = HMFGetLogIdentifier();
          *buf = 138543362;
          v154 = v94;
          _os_log_impl(&dword_2531F8000, v93, OS_LOG_TYPE_ERROR, "%{public}@No homepod setup log event found.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v91);
        goto LABEL_57;
      }

      v80 = [[HMDHomePodSetupLatencyLogEvent alloc] initLogEventWithInitialState:0x10000];
      [v80 setError:{objc_getProperty(v39, v87, 152, 1)}];
      v88 = [v39 setupSessionIdentifier];
      v89 = [v88 UUIDString];
      [v80 setSetupSessionIdentifier:v89];

      [v148 submitLogEvent:v80];
      v83 = objc_autoreleasePoolPush();
      v84 = v39;
      v85 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        v90 = HMFGetLogIdentifier();
        *buf = 138543362;
        v154 = v90;
        _os_log_impl(&dword_2531F8000, v85, OS_LOG_TYPE_DEFAULT, "%{public}@Submitted homepod log event with fetch error.", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v83);
  }

LABEL_57:
  if (!v151)
  {
    v95 = [v152 sessionError];
    v96 = v95 == 0;

    if ((v96 & v74) != 0)
    {
      [v76 setHomepodSetupRetryCount:0];
    }
  }

  os_unfair_lock_lock_with_options();
  [*(v39 + 11) cancel];
  v97 = *(v39 + 11);
  *(v39 + 11) = 0;

  os_unfair_lock_unlock(v39 + 2);
  v98 = objc_autoreleasePoolPush();
  v99 = v39;
  v100 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
  {
    v101 = HMFGetLogIdentifier();
    *buf = 138543618;
    v154 = v101;
    v155 = 2112;
    v156 = v99;
    _os_log_impl(&dword_2531F8000, v100, OS_LOG_TYPE_INFO, "%{public}@Removing setup metric dispatcher:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v98);
  v102 = objc_loadWeakRetained(v99 + 14);
  v103 = [v99 trackingInfo];
  v104 = [v103 accessoryUUID];
  [v102 removeAccessorySetupMetricDispatcherForAccessoryUUID:v104];

LABEL_63:
  v105 = *MEMORY[0x277D85DE8];
}

- (void)markAccessoryAddCompleted
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  self->_addAccessoryFinishTime = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) / 0x3B9ACA00;
  os_unfair_lock_unlock(&self->_lock);
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMDAccessorySetupMetricDispatcher *)v4 trackingInfo];
    v8 = [v7 accessoryUUID];
    v10 = 138543618;
    v11 = v6;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Marked accessory add (%@)", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)markRepairSessionComplete
{
  os_unfair_lock_lock_with_options();
  self->_isRepairSession = 1;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)timerDidFire:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self && (v6 = objc_getProperty(self, v4, 88, 1), v5) && v6 == v5 && objc_getProperty(self, v7, 88, 1))
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v11;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Timer did fire for setup metric dispatcher:%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    if ([(HMDAccessorySetupMetricDispatcher *)v9 languageSettingTime])
    {
      [(HMDAccessorySetupMetricDispatcher *)v9 submit];
    }

    else
    {
      v19 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2030];
      [(HMDAccessorySetupMetricDispatcher *)v9 _queryRemoteAndSubmitWithConfigurationError:v19];
      WeakRetained = objc_loadWeakRetained(&v9->_radarInitiator);
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@", @"HomePod Database Sync Timed Out", v19];
      [WeakRetained requestRadarWithDisplayReason:@"HomePod Database Sync Timed Out" radarTitle:v21 componentName:@"HomeKit" componentVersion:@"HomeKit Device Setup" componentID:1364036];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      if (self)
      {
        Property = objc_getProperty(v13, v15, 88, 1);
      }

      else
      {
        Property = 0;
      }

      *buf = 138543874;
      v23 = v16;
      v24 = 2112;
      v25 = v5;
      v26 = 2112;
      v27 = Property;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unexpected delegate callback from timer:%@, expected:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveEvent:(id)a3 topic:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CD19F0] decodeTopic:v7];
  v9 = [v8 asAccessorySettingTopic];

  if (v9)
  {
    v10 = v6;
    v11 = v9;
    if (!self)
    {
LABEL_20:

      goto LABEL_21;
    }

    v39 = 0;
    v12 = [MEMORY[0x277CD1AD8] decodeSettingFromEvent:v10 error:&v39];
    v13 = v39;
    v14 = v13;
    if (v12)
    {
      if ([(HMDAccessorySetupMetricDispatcher *)self submitted])
      {
        v15 = v14;
        v16 = objc_autoreleasePoolPush();
        v17 = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v19 = v37 = v11;
          *buf = 138543362;
          v41 = v19;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Setup metric already submitted, will unsubscribe from settings events", buf, 0xCu);

          v11 = v37;
        }

        objc_autoreleasePoolPop(v16);
        [HMDAccessorySetupMetricDispatcher subscribeToSettingsEvents:?];
        v14 = v15;
        goto LABEL_19;
      }

      [(HMDAccessorySetupMetricDispatcher *)self markFirstSettingObserved];
      [v12 keyPath];
      v30 = v29 = v11;
      v31 = [v30 isEqual:@"root.siri.language"];

      v11 = v29;
      if (!v31)
      {
LABEL_19:

        goto LABEL_20;
      }

      v38 = v14;
      [(HMDAccessorySetupMetricDispatcher *)self markLanguageSettingObserved];
      [(HMDAccessorySetupMetricDispatcher *)self submit];
      v32 = objc_autoreleasePoolPush();
      v33 = self;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543362;
        v41 = v35;
        _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Setup metric submitted, will unsubscribe from settings events", buf, 0xCu);

        v11 = v29;
      }

      objc_autoreleasePoolPop(v32);
      [HMDAccessorySetupMetricDispatcher subscribeToSettingsEvents:?];
    }

    else
    {
      v38 = v13;
      v24 = objc_autoreleasePoolPush();
      v25 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v28 = v27 = v11;
        *buf = 138543874;
        v41 = v28;
        v42 = 2112;
        v43 = v10;
        v44 = 2112;
        v45 = v27;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Nil settings value for settings update event: %@ topic: %@", buf, 0x20u);

        v11 = v27;
      }

      objc_autoreleasePoolPop(v24);
    }

    v14 = v38;
    goto LABEL_19;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543618;
    v41 = v23;
    v42 = 2112;
    v43 = v7;
    _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Do not handle topic: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
LABEL_21:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)subscribeToSettingsEvents:(id *)a1
{
  v35 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 17);
  v3 = [WeakRetained uuid];

  if (v3)
  {
    v4 = [a1 trackingInfo];
    v5 = [v4 accessoryUUID];

    if (v5)
    {
      v6 = [MEMORY[0x277CD1790] defaultSettingsAllKeyPaths];
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v31 = __60__HMDAccessorySetupMetricDispatcher_accessorySettingsTopics__block_invoke;
      v32 = &unk_279734EE0;
      v7 = v3;
      v33 = v7;
      v8 = v5;
      v34 = v8;
      v9 = [v6 na_map:&buf];

      v10 = [MEMORY[0x277CD1790] languageKeyPaths];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __60__HMDAccessorySetupMetricDispatcher_accessorySettingsTopics__block_invoke_2;
      v27[3] = &unk_279734EE0;
      v28 = v7;
      v29 = v8;
      v11 = [v10 na_map:v27];
      v12 = [v11 arrayByAddingObjectsFromArray:v9];
    }

    else
    {
      v12 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  if ([v12 count])
  {
    v13 = v12;
    v14 = objc_autoreleasePoolPush();
    v15 = a1;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Unsubscribing to accessory settings to generate setup time metric", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v18 = objc_loadWeakRetained(v15 + 14);
    v19 = [v18 localAndRemoteSubscriptionProvider];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __63__HMDAccessorySetupMetricDispatcher_subscribeToSettingsEvents___block_invoke;
    v26[3] = &unk_279734EB8;
    v26[4] = v15;
    v20 = MEMORY[0x277CBEBF8];
    [v19 changeRegistrationsForConsumer:v15 topicFilterAdditions:MEMORY[0x277CBEBF8] topicFilterRemovals:v13 completion:v26];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = a1;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@No settings topics", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __63__HMDAccessorySetupMetricDispatcher_subscribeToSettingsEvents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v11;
      v20 = 2112;
      v21 = v6;
      v12 = "%{public}@Subscription to settings resulted in error: %@";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 22;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v13, v14, v12, buf, v15);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v19 = v11;
    v12 = "%{public}@Subscription to settings topics was successful";
    v13 = v10;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__HMDAccessorySetupMetricDispatcher_subscribeToSettingsEvents___block_invoke_151;
  v17[3] = &unk_279734E90;
  v17[4] = *(a1 + 32);
  [v5 hmf_enumerateKeysAndObjectsWithAutoreleasePoolUsingBlock:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __63__HMDAccessorySetupMetricDispatcher_subscribeToSettingsEvents___block_invoke_151(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v10;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Received cached event on settings topic: %@ during subscription", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [*(a1 + 32) didReceiveEvent:v6 topic:v5];

  v11 = *MEMORY[0x277D85DE8];
}

void __60__HMDAccessorySetupMetricDispatcher_accessorySettingsTopics__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  JUMPOUT(0x259C01CC0);
}

void __60__HMDAccessorySetupMetricDispatcher_accessorySettingsTopics__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  JUMPOUT(0x259C01CC0);
}

- (HMDDeviceSetupTrackingInfo)trackingInfo
{
  os_unfair_lock_lock_with_options();
  v3 = self->_trackingInfo;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)updateTrackingInfo:(id)a3
{
  v5 = a3;
  if (self)
  {
    os_unfair_lock_lock_with_options();
    objc_storeStrong(&self->_trackingInfo, a3);
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (HMDAccessorySetupMetricDispatcher)initWithQueue:(id)a3 trackingInfo:(id)a4 setupSessionIdentifier:(id)a5 homeManager:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v22 = +[HMDMainDriver driver];
  v20 = [v22 discoveryController];
  v13 = +[HMDMainDriver driver];
  v14 = [v13 networkInfoController];
  v15 = +[HMDMetricsManager sharedLogEventSubmitter];
  v16 = [v9 metricsManager];
  v17 = [v16 radarInitiator];
  v18 = [(HMDAccessorySetupMetricDispatcher *)self initWithQueue:v12 discoveryController:v20 networkInfoController:v14 trackingInfo:v11 setupSessionIdentifier:v10 homeManager:v9 logEventSubmitter:v15 radarInitiator:v17 timerFactory:&__block_literal_global_188398];

  return v18;
}

id __99__HMDAccessorySetupMetricDispatcher_initWithQueue_trackingInfo_setupSessionIdentifier_homeManager___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D0F920];
  v3 = a2;
  v4 = [[v2 alloc] initWithTimeInterval:8 options:900.0];
  [v4 setDelegate:v3];

  [v4 resume];

  return v4;
}

- (HMDAccessorySetupMetricDispatcher)initWithQueue:(id)a3 discoveryController:(id)a4 networkInfoController:(id)a5 trackingInfo:(id)a6 setupSessionIdentifier:(id)a7 homeManager:(id)a8 logEventSubmitter:(id)a9 radarInitiator:(id)a10 timerFactory:(id)a11
{
  v16 = a3;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v37.receiver = self;
  v37.super_class = HMDAccessorySetupMetricDispatcher;
  v23 = [(HMDAccessorySetupMetricDispatcher *)&v37 init];
  if (v23)
  {
    v24 = HMFGetOSLogHandle();
    logger = v23->_logger;
    v23->_logger = v24;

    objc_storeStrong(&v23->_queue, a3);
    v26 = +[HMDMainDriver driver];
    v27 = [v26 discoveryController];
    discoveryController = v23->_discoveryController;
    v23->_discoveryController = v27;

    v29 = +[HMDMainDriver driver];
    v30 = [v29 networkInfoController];
    networkInfoController = v23->_networkInfoController;
    v23->_networkInfoController = v30;

    objc_storeStrong(&v23->_trackingInfo, a6);
    objc_storeWeak(&v23->_submitter, v20);
    v32 = v22[2](v22, v23);
    timer = v23->_timer;
    v23->_timer = v32;

    v34 = [v18 copy];
    setupSessionIdentifier = v23->_setupSessionIdentifier;
    v23->_setupSessionIdentifier = v34;

    v23->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v23->_homeManager, v19);
    objc_storeWeak(&v23->_radarInitiator, v21);
  }

  return v23;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t40 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t40, &__block_literal_global_174);
  }

  v3 = logCategory__hmf_once_v41;

  return v3;
}

uint64_t __48__HMDAccessorySetupMetricDispatcher_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v41;
  logCategory__hmf_once_v41 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end