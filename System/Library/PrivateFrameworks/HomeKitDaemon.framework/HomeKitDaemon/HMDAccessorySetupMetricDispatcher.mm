@interface HMDAccessorySetupMetricDispatcher
+ (id)logCategory;
- (BOOL)hasHome:(id)home;
- (BOOL)submitted;
- (HMDAccessorySetupMetricDispatcher)initWithQueue:(id)queue discoveryController:(id)controller networkInfoController:(id)infoController trackingInfo:(id)info setupSessionIdentifier:(id)identifier homeManager:(id)manager logEventSubmitter:(id)submitter radarInitiator:(id)self0 timerFactory:(id)self1;
- (HMDAccessorySetupMetricDispatcher)initWithQueue:(id)queue trackingInfo:(id)info setupSessionIdentifier:(id)identifier homeManager:(id)manager;
- (HMDAccessorySetupMetricDispatcherDelegate)delegate;
- (HMDDeviceSetupTrackingInfo)trackingInfo;
- (id)home;
- (id)logIdentifier;
- (id)networkMetricWithDiscoveryController:(id)controller networkInfoController:(id)infoController sessionID:(id)d idsIdentifierString:(id)string currentWiFiInfo:(id)info currentWiFiNetworkRSSI:(int)i numResidents:(int64_t)residents numAppleMediaAccessories:(int64_t)self0 accessoryDiagnosticInfo:(id)self1 primaryResidentIdsIdentifierString:(id)self2 primaryResidentDiagnosticInfo:(id)self3 homeUUID:(id)self4 primaryResidentDiagnosticInfoFetched:(BOOL)self5;
- (id)obtainDiscoveryAssertion;
- (void)_queryRemoteAndSubmitWithConfigurationError:(uint64_t)error;
- (void)addHome:(id)home;
- (void)addRemoteEventRouterAssertion:(id)assertion;
- (void)didReceiveEvent:(id)event topic:(id)topic;
- (void)markAccessoryAddCompleted;
- (void)markAccessoryRemoved;
- (void)markEventRouterPrimaryClientConnectMessageFailedWithError:(id)error;
- (void)markEventRouterPrimaryClientConnectStatusChanged:(BOOL)changed;
- (void)markFirstSettingObserved;
- (void)markLanguageSettingObserved;
- (void)markLocalAccessoryAddStarted;
- (void)markPrimaryResidentChanged;
- (void)markRemoteAccessoryAddEndedWithError:(id)error;
- (void)markRemoteAccessoryAddStarted;
- (void)markRemoteAccessoryAddWillStart:(id)start;
- (void)markRepairSessionComplete;
- (void)releaseDiscoveryAssertionWithAssertionHandle:(id)handle;
- (void)subscribeToSettingsEvents:(id *)events;
- (void)timerDidFire:(id)fire;
- (void)updateTrackingInfo:(id)info;
@end

@implementation HMDAccessorySetupMetricDispatcher

- (id)networkMetricWithDiscoveryController:(id)controller networkInfoController:(id)infoController sessionID:(id)d idsIdentifierString:(id)string currentWiFiInfo:(id)info currentWiFiNetworkRSSI:(int)i numResidents:(int64_t)residents numAppleMediaAccessories:(int64_t)self0 accessoryDiagnosticInfo:(id)self1 primaryResidentIdsIdentifierString:(id)self2 primaryResidentDiagnosticInfo:(id)self3 homeUUID:(id)self4 primaryResidentDiagnosticInfoFetched:(BOOL)self5
{
  iCopy = i;
  selfCopy = self;
  fetchedCopy = fetched;
  identifierStringCopy = identifierString;
  residentsCopy = residents;
  accessoriesCopy = accessories;
  v19 = sub_22A4DB7DC();
  v45 = *(v19 - 8);
  v46 = v19;
  v20 = *(v45 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22A4DD5EC();
  v43 = v24;
  v37 = sub_22A4DD5EC();
  v39 = v25;
  if (identifierString)
  {
    identifierStringCopy = sub_22A4DD5EC();
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  sub_22A4DB79C();
  controllerCopy = controller;
  infoControllerCopy = infoController;
  infoCopy = info;
  diagnosticInfoCopy = diagnosticInfo;
  residentDiagnosticInfoCopy = residentDiagnosticInfo;
  v32 = selfCopy;
  v33 = sub_2295B295C(controllerCopy, infoControllerCopy, v23, v43, v37, v39, infoCopy, iCopy, residentsCopy, accessoriesCopy, diagnosticInfo, identifierStringCopy, v27, residentDiagnosticInfo, v22, fetchedCopy);

  (*(v45 + 8))(v22, v46);

  return v33;
}

- (id)obtainDiscoveryAssertion
{
  v2 = _sSo33HMDAccessorySetupMetricDispatcherC13HomeKitDaemonE24obtainDiscoveryAssertionyXlyF_0();

  return v2;
}

- (void)releaseDiscoveryAssertionWithAssertionHandle:(id)handle
{
  type metadata accessor for AssertionHandle();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    sub_229710B48();
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
  trackingInfo = [(HMDAccessorySetupMetricDispatcher *)self trackingInfo];
  identifier = [trackingInfo identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (BOOL)hasHome:(id)home
{
  homeCopy = home;
  home = [(HMDAccessorySetupMetricDispatcher *)&self->super.super.isa home];

  return home == homeCopy;
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

- (void)addHome:(id)home
{
  v25 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  if (self)
  {
    v19 = homeCopy;
    objc_storeWeak(&self->_home, homeCopy);
    WeakRetained = objc_loadWeakRetained(&self->_homeManager);
    homes = [WeakRetained homes];

    v18 = 8;
    os_unfair_lock_lock_with_options();
    v7 = objc_loadWeakRetained(&self->_home);
    self->_selectedHomeLocationStatus = [v7 homeLocation];
    self->_isUserAtOtherOwnedHome = 0;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = homes;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          if ([v12 homeLocation] == 1)
          {
            uuid = [v12 uuid];
            uuid2 = [v7 uuid];
            if ([uuid isEqual:uuid2])
            {
            }

            else
            {
              isOwnerUser = [v12 isOwnerUser];

              if (isOwnerUser)
              {
                self->_isUserAtOtherOwnedHome = 1;
              }
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }

    os_unfair_lock_unlock((self + v18));
    submitted = [(HMDAccessorySetupMetricDispatcher *)self submitted];
    homeCopy = v19;
    if (!submitted)
    {
      [(HMDAccessorySetupMetricDispatcher *)&self->super.super.isa subscribeToSettingsEvents:?];
      homeCopy = v19;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)subscribeToSettingsEvents:(id *)events
{
  v41 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(events + 17);
  uuid = [WeakRetained uuid];

  v6 = &unk_22A586000;
  if (uuid)
  {
    trackingInfo = [events trackingInfo];
    accessoryUUID = [trackingInfo accessoryUUID];

    if (accessoryUUID)
    {
      defaultSettingsAllKeyPaths = [MEMORY[0x277CD1790] defaultSettingsAllKeyPaths];
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v37 = __60__HMDAccessorySetupMetricDispatcher_accessorySettingsTopics__block_invoke;
      v38 = &unk_278689190;
      v10 = uuid;
      v39 = v10;
      v11 = accessoryUUID;
      v40 = v11;
      v12 = [defaultSettingsAllKeyPaths na_map:&buf];

      languageKeyPaths = [MEMORY[0x277CD1790] languageKeyPaths];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __60__HMDAccessorySetupMetricDispatcher_accessorySettingsTopics__block_invoke_2;
      v33[3] = &unk_278689190;
      v34 = v10;
      v14 = v11;
      v6 = &unk_22A586000;
      v35 = v14;
      v15 = [languageKeyPaths na_map:v33];
      v16 = [v15 arrayByAddingObjectsFromArray:v12];
    }

    else
    {
      v16 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  if ([v16 count])
  {
    v17 = v16;
    v18 = objc_autoreleasePoolPush();
    eventsCopy = events;
    v20 = HMFGetOSLogHandle();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
    if (a2)
    {
      if (v21)
      {
        v22 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v22;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Subscribing to accessory settings to generate setup time metric", &buf, 0xCu);
      }

      v23 = MEMORY[0x277CBEBF8];
    }

    else
    {
      if (v21)
      {
        v28 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v28;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Unsubscribing to accessory settings to generate setup time metric", &buf, 0xCu);
      }

      v23 = v17;
      v17 = MEMORY[0x277CBEBF8];
    }

    objc_autoreleasePoolPop(v18);
    v29 = objc_loadWeakRetained(eventsCopy + 14);
    localAndRemoteSubscriptionProvider = [v29 localAndRemoteSubscriptionProvider];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = v6[441];
    v32[2] = __63__HMDAccessorySetupMetricDispatcher_subscribeToSettingsEvents___block_invoke;
    v32[3] = &unk_278689230;
    v32[4] = eventsCopy;
    [localAndRemoteSubscriptionProvider changeRegistrationsForConsumer:eventsCopy topicFilterAdditions:v17 topicFilterRemovals:v23 completion:v32];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    eventsCopy2 = events;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v27;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@No settings topics", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
  }

  v31 = *MEMORY[0x277D85DE8];
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
      _os_log_impl(&dword_229538000, v13, v14, v12, buf, v15);
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
  v17[2] = __63__HMDAccessorySetupMetricDispatcher_subscribeToSettingsEvents___block_invoke_172;
  v17[3] = &unk_278688EF8;
  v17[4] = *(a1 + 32);
  [v5 hmf_enumerateKeysAndObjectsWithAutoreleasePoolUsingBlock:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __63__HMDAccessorySetupMetricDispatcher_subscribeToSettingsEvents___block_invoke_172(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Received cached event on settings topic: %@ during subscription", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [*(a1 + 32) didReceiveEvent:v6 topic:v5];

  v11 = *MEMORY[0x277D85DE8];
}

void __60__HMDAccessorySetupMetricDispatcher_accessorySettingsTopics__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  JUMPOUT(0x22AAD2730);
}

void __60__HMDAccessorySetupMetricDispatcher_accessorySettingsTopics__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  JUMPOUT(0x22AAD2730);
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
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      trackingInfo = [(HMDAccessorySetupMetricDispatcher *)selfCopy trackingInfo];
      accessoryUUID = [trackingInfo accessoryUUID];
      v11 = 138543618;
      v12 = v7;
      v13 = 2112;
      v14 = accessoryUUID;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Marked language setting observed (%@)", &v11, 0x16u);
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
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      trackingInfo = [(HMDAccessorySetupMetricDispatcher *)selfCopy trackingInfo];
      accessoryUUID = [trackingInfo accessoryUUID];
      v15 = 138543618;
      v16 = v7;
      v17 = 2112;
      v18 = accessoryUUID;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Marked first setting observed (%@)", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    logger = selfCopy->_logger;
    if (os_signpost_enabled(logger))
    {
      v11 = logger;
      trackingInfo2 = [(HMDAccessorySetupMetricDispatcher *)selfCopy trackingInfo];
      accessoryUUID2 = [trackingInfo2 accessoryUUID];
      v15 = 138412290;
      v16 = accessoryUUID2;
      _os_signpost_emit_with_name_impl(&dword_229538000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FirstAccessorySettingObserved", "accessoryUUID=%{signpost.description:attribute}@ ", &v15, 0xCu);
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
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    trackingInfo = [(HMDAccessorySetupMetricDispatcher *)selfCopy trackingInfo];
    accessoryUUID = [trackingInfo accessoryUUID];
    v11 = 138543618;
    v12 = v6;
    v13 = 2112;
    v14 = accessoryUUID;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@No longer tracking accessory (%@) setup time as it was removed", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v9 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2029];
  [(HMDAccessorySetupMetricDispatcher *)selfCopy _queryRemoteAndSubmitWithConfigurationError:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queryRemoteAndSubmitWithConfigurationError:(uint64_t)error
{
  v3 = a2;
  if (error)
  {
    v4 = dispatch_group_create();
    WeakRetained = objc_loadWeakRetained((error + 136));
    delegate = [error delegate];
    residentDeviceManager = [WeakRetained residentDeviceManager];
    primaryResidentDevice = [residentDeviceManager primaryResidentDevice];

    obtainDiscoveryAssertion = [error obtainDiscoveryAssertion];
    v10 = *(error + 184);
    *(error + 184) = obtainDiscoveryAssertion;

    appleMediaAccessories = [WeakRetained appleMediaAccessories];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __81__HMDAccessorySetupMetricDispatcher__queryRemoteAndSubmitWithConfigurationError___block_invoke;
    v28[3] = &unk_278688F28;
    v12 = primaryResidentDevice;
    v29 = v12;
    v13 = [appleMediaAccessories na_firstObjectPassingTest:v28];

    dispatch_group_enter(v4);
    trackingInfo = [error trackingInfo];
    accessoryUUID = [trackingInfo accessoryUUID];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __81__HMDAccessorySetupMetricDispatcher__queryRemoteAndSubmitWithConfigurationError___block_invoke_2;
    v26[3] = &unk_278688F90;
    v26[4] = error;
    v16 = v4;
    v27 = v16;
    [delegate querySetupDiagnosticStateForAccessoryUUID:accessoryUUID completion:v26];

    if (v13)
    {
      dispatch_group_enter(v16);
      uuid = [v13 uuid];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __81__HMDAccessorySetupMetricDispatcher__queryRemoteAndSubmitWithConfigurationError___block_invoke_3;
      v24[3] = &unk_278688F90;
      v24[4] = error;
      v25 = v16;
      [delegate querySetupDiagnosticStateForAccessoryUUID:uuid completion:v24];
    }

    else
    {
      v19 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2032];
      objc_setProperty_atomic(error, v20, v19, 168);
    }

    Property = objc_getProperty(error, v18, 80, 1);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __81__HMDAccessorySetupMetricDispatcher__queryRemoteAndSubmitWithConfigurationError___block_invoke_4;
    v22[3] = &unk_27868A750;
    v22[4] = error;
    v23 = v3;
    dispatch_group_notify(v16, Property, v22);
  }
}

uint64_t __81__HMDAccessorySetupMetricDispatcher__queryRemoteAndSubmitWithConfigurationError___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 idsIdentifier];
  v4 = [*(a1 + 32) messageAddress];
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
  v162 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v152 = *(a1 + 40);
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
    v4 = objc_autoreleasePoolPush();
    v5 = v1;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v155 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Can't submit the metric twice", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    goto LABEL_63;
  }

  [objc_getProperty(v1 v3];
  v8 = [v1 trackingInfo];
  v9 = [v1 primaryResidentIdenticalToAccessoryBeingAdded];
  if ([v1 numberOfMediaAccessoriesnHome])
  {
    v9 |= 2uLL;
  }

  if ([v1 numberOfResidentsInHome])
  {
    v9 |= 4uLL;
  }

  if ([v1 numberOfAvailableResidentsInHome])
  {
    v9 |= 8uLL;
  }

  if ([v1 primaryResidentAssignedInHomeWhenAddAccessory])
  {
    v9 |= 0x10uLL;
  }

  if ([v1 didSendAddAccessoryRequestToPrimary])
  {
    v9 |= 0x20uLL;
  }

  v10 = [v1 didAddAccessoryLocally];
  v11 = v9 | 0x40;
  if (!v10)
  {
    v11 = v9;
  }

  v136 = v11;
  v144 = [HMDAppleMediaAccessorySetupLogEvent alloc];
  v142 = [v8 role];
  v140 = [v8 startTime];
  v138 = [v8 endTime];
  v134 = [v1 addAccessoryFinishTime];
  v132 = [v1 accessoryRemovedTime];
  v130 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v146 = [v8 sessionError];
  v150 = [v1 setupSessionIdentifier];
  v128 = [v150 UUIDString];
  v126 = [v1 isRepairSession];
  v148 = [v8 accessoryCategory];
  v124 = [v148 categoryType];
  v12 = v8;
  WeakRetained = objc_loadWeakRetained((v1 + 136));
  v14 = [v12 accessoryUUID];

  v15 = [WeakRetained accessoryWithUUID:v14];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v18 = [v17 softwareVersion];

  v122 = [v18 versionString];

  v121 = [v12 setupClientBundleID];
  v120 = objc_loadWeakRetained((v1 + 112));
  v119 = [v120 homepodSetupRetryCount];
  v118 = [v1 firstSettingTime];
  v117 = [v1 languageSettingTime];
  v153 = v12;
  v19 = objc_loadWeakRetained((v1 + 136));
  if (v19 && ([v153 accessoryUUID], v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
  {
    v21 = [v153 accessoryUUID];
    v116 = [v19 defaultRoomContainsAccessoryWithUUID:v21];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v1;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = HMFGetLogIdentifier();
      v26 = objc_loadWeakRetained(v23 + 17);
      v27 = [v153 accessoryUUID];
      *buf = 138543874;
      v155 = v25;
      v156 = 2112;
      v157 = v26;
      v158 = 2112;
      v159 = v27;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Either home: %@ or accessory UUID: %@ is nil", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
    v116 = 0;
  }

  v115 = [v1 selectedHomeLocationStatus];
  v114 = [v1 isUserAtOtherOwnedHome];
  v113 = [v1 lastPrimaryResidentAvailableTime];
  v28 = [v1 numberOfTimesPrimaryResidentChanged];
  v29 = [v1 lastPrimaryClientConnectedTime];
  v30 = [v1 numberOfTimesPrimaryClientConnected];
  v31 = [v1 numberOfTimesPrimaryClientDisconnected];
  v32 = [v1 numberOfTimesPrimaryClientConnectMessageFailed];
  v33 = [v1 lastPrimaryClientConnectMessageFailError];
  v35 = objc_getProperty(v1, v34, 152, 1);
  v37 = objc_getProperty(v1, v36, 168, 1);
  v38 = [v1 addAccessoryOnPrimaryFailError];
  LODWORD(v112) = v32;
  LODWORD(v111) = v28;
  LOBYTE(v110) = v114;
  LOBYTE(v109) = v116;
  LOBYTE(v107) = v126;
  v145 = [(HMDAppleMediaAccessorySetupLogEvent *)v144 initWithRole:v142 setupStartTime:v140 setupEndTime:v138 accessoryAddEndTime:v134 accessoryRemoveTime:v132 configurationEndTime:v130 / 0x3B9ACA00 setupSessionError:v146 setupSessionIdentifier:v128 isRepairSession:v107 category:v124 accessorySoftwareVersion:v122 setupClientBundleID:v121 retryCount:v119 firstSettingTime:v118 languageSettingTime:v117 accessoryInDefaultRoom:v109 selectedHomeLocationStatus:v115 isUserAtOtherOwnedHome:v110 lastPrimaryResidentAvailableTime:v113 numberOfTimesPrimaryResidentChanged:v111 lastPrimaryClientConnectedTime:v29 numberOfTimesPrimaryClientConnected:__PAIR64__(v31 numberOfTimesPrimaryClientDisconnected:v30) numberOfTimesPrimaryClientConnectMessageFailed:v112 addAccessoryMessageReport:v136 lastPrimaryClientConnectMessageFailError:v33 accessoryDiagnosticInfoFetchError:v35 primaryResidentDiagnosticInfoFetchError:v37 addAccessoryOnPrimaryFailError:v38];

  v149 = objc_loadWeakRetained((v1 + 96));
  v39 = objc_autoreleasePoolPush();
  v40 = v1;
  v41 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    v42 = HMFGetLogIdentifier();
    v43 = [v153 accessoryUUID];
    v44 = [(HMDAppleMediaAccessorySetupLogEvent *)v145 coreAnalyticsEventDictionary];
    *buf = 138544130;
    v155 = v42;
    v156 = 2112;
    v157 = v43;
    v158 = 2112;
    v159 = v44;
    v160 = 2112;
    v161 = v152;
    _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Submitting accessory (%@) setup log event:%@ with error:%@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v39);
  [v149 submitLogEvent:v145 error:v152];
  v151 = objc_loadWeakRetained(v40 + 17);
  v45 = [v151 currentDevice];
  v46 = [v45 idsIdentifier];
  v147 = [v46 UUIDString];

  v47 = [v151 residentDeviceManager];
  v141 = [v47 primaryResidentDevice];

  if (!v147)
  {
    v49 = objc_autoreleasePoolPush();
    v50 = v40;
    v51 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = HMFGetLogIdentifier();
      *buf = 138543362;
      v155 = v52;
      _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_ERROR, "%{public}@Could not get idsIdentifier of current device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v49);
    v147 = @"Unknown";
  }

  v143 = objc_getProperty(v40, v48, 120, 1);
  v54 = objc_getProperty(v40, v53, 128, 1);
  v139 = v54;
  if (v151 && v143 && v54)
  {
    v55 = +[HMDMainDriver driver];
    v137 = [v55 currentWiFiNetworkRSSI];

    if (v137)
    {
      v123 = [v137 intValue];
    }

    else
    {
      v123 = 0;
    }

    v135 = [v40 setupSessionIdentifier];
    v127 = [v135 UUIDString];
    v133 = +[HMDMainDriver driver];
    v125 = [v133 currentWiFiNetworkInfo];
    v131 = [v151 residentDeviceManager];
    v129 = [v131 residentDevices];
    v60 = [v129 count];
    v61 = [v151 appleMediaAccessories];
    v62 = [v61 count];
    v64 = objc_getProperty(v40, v63, 144, 1);
    v65 = [v141 device];
    v66 = [v65 idsIdentifier];
    v67 = [v66 UUIDString];
    v69 = objc_getProperty(v40, v68, 160, 1);
    v70 = [v151 uuid];
    LOBYTE(v108) = [objc_getProperty(v40 v71] == 2032;
    v72 = [v40 networkMetricWithDiscoveryController:v143 networkInfoController:v139 sessionID:v127 idsIdentifierString:v147 currentWiFiInfo:v125 currentWiFiNetworkRSSI:v123 numResidents:v60 numAppleMediaAccessories:v62 accessoryDiagnosticInfo:v64 primaryResidentIdsIdentifierString:v67 primaryResidentDiagnosticInfo:v69 homeUUID:v70 primaryResidentDiagnosticInfoFetched:v108];

    [v149 submitLogEvent:v72 error:v152];
  }

  else
  {
    v56 = objc_autoreleasePoolPush();
    v57 = v40;
    v58 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v59 = HMFGetLogIdentifier();
      *buf = 138543362;
      v155 = v59;
      _os_log_impl(&dword_229538000, v58, OS_LOG_TYPE_ERROR, "%{public}@Did not find valid controllers to get network information", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v56);
  }

  [v40 releaseDiscoveryAssertionWithAssertionHandle:*(v40 + 23)];
  objc_storeStrong(v40 + 23, 0);
  v73 = [v153 accessoryCategory];
  v74 = [v73 categoryType];
  v75 = [v74 isEqualToString:*MEMORY[0x277CCE8B0]];

  v76 = objc_loadWeakRetained(v40 + 14);
  v77 = v76;
  if (v75)
  {
    [v76 setHomepodSetupRetryCount:{objc_msgSend(v76, "homepodSetupRetryCount") + 1}];
    if ([objc_getProperty(v40 v78])
    {
      v80 = [objc_getProperty(v40 v79];
      v81 = [HMDCurrentAccessorySetupMetricDispatcher homepodSetupLogEventFromProtoSetupInfo:v80];

      if (v81)
      {
        v82 = [v40 setupSessionIdentifier];
        v83 = [v82 UUIDString];
        [v81 setSetupSessionIdentifier:v83];
      }

      [v149 submitLogEvent:v81];
      v84 = objc_autoreleasePoolPush();
      v85 = v40;
      v86 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        v87 = HMFGetLogIdentifier();
        *buf = 138543362;
        v155 = v87;
        _os_log_impl(&dword_229538000, v86, OS_LOG_TYPE_DEFAULT, "%{public}@Submitted retrieved homepod log event.", buf, 0xCu);
      }
    }

    else
    {
      if (!objc_getProperty(v40, v79, 152, 1))
      {
        v92 = objc_autoreleasePoolPush();
        v93 = v40;
        v94 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
        {
          v95 = HMFGetLogIdentifier();
          *buf = 138543362;
          v155 = v95;
          _os_log_impl(&dword_229538000, v94, OS_LOG_TYPE_ERROR, "%{public}@No homepod setup log event found.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v92);
        goto LABEL_57;
      }

      v81 = [[HMDHomePodSetupLatencyLogEvent alloc] initLogEventWithInitialState:0x10000];
      [v81 setError:{objc_getProperty(v40, v88, 152, 1)}];
      v89 = [v40 setupSessionIdentifier];
      v90 = [v89 UUIDString];
      [v81 setSetupSessionIdentifier:v90];

      [v149 submitLogEvent:v81];
      v84 = objc_autoreleasePoolPush();
      v85 = v40;
      v86 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        v91 = HMFGetLogIdentifier();
        *buf = 138543362;
        v155 = v91;
        _os_log_impl(&dword_229538000, v86, OS_LOG_TYPE_DEFAULT, "%{public}@Submitted homepod log event with fetch error.", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v84);
  }

LABEL_57:
  if (!v152)
  {
    v96 = [v153 sessionError];
    v97 = v96 == 0;

    if ((v97 & v75) != 0)
    {
      [v77 setHomepodSetupRetryCount:0];
    }
  }

  os_unfair_lock_lock_with_options();
  [*(v40 + 11) cancel];
  v98 = *(v40 + 11);
  *(v40 + 11) = 0;

  os_unfair_lock_unlock(v40 + 2);
  v99 = objc_autoreleasePoolPush();
  v100 = v40;
  v101 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
  {
    v102 = HMFGetLogIdentifier();
    *buf = 138543618;
    v155 = v102;
    v156 = 2112;
    v157 = v100;
    _os_log_impl(&dword_229538000, v101, OS_LOG_TYPE_INFO, "%{public}@Removing setup metric dispatcher:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v99);
  v103 = objc_loadWeakRetained(v100 + 14);
  v104 = [v100 trackingInfo];
  v105 = [v104 accessoryUUID];
  [v103 removeAccessorySetupMetricDispatcherForAccessoryUUID:v105];

LABEL_63:
  v106 = *MEMORY[0x277D85DE8];
}

- (void)markAccessoryAddCompleted
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  self->_addAccessoryFinishTime = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) / 0x3B9ACA00;
  os_unfair_lock_unlock(&self->_lock);
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    trackingInfo = [(HMDAccessorySetupMetricDispatcher *)selfCopy trackingInfo];
    accessoryUUID = [trackingInfo accessoryUUID];
    v10 = 138543618;
    v11 = v6;
    v12 = 2112;
    v13 = accessoryUUID;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Marked accessory add (%@)", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)markLocalAccessoryAddStarted
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  self->_didAddAccessoryLocally = 1;
  os_unfair_lock_unlock(&self->_lock);
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    trackingInfo = [(HMDAccessorySetupMetricDispatcher *)selfCopy trackingInfo];
    accessoryUUID = [trackingInfo accessoryUUID];
    v10 = 138543618;
    v11 = v6;
    v12 = 2112;
    v13 = accessoryUUID;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Marked accessory add (%@) started locally", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)markRemoteAccessoryAddEndedWithError:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  os_unfair_lock_lock_with_options();
  v5 = [errorCopy copy];
  addAccessoryOnPrimaryFailError = self->_addAccessoryOnPrimaryFailError;
  self->_addAccessoryOnPrimaryFailError = v5;

  os_unfair_lock_unlock(&self->_lock);
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    trackingInfo = [(HMDAccessorySetupMetricDispatcher *)selfCopy trackingInfo];
    accessoryUUID = [trackingInfo accessoryUUID];
    v14 = 138543874;
    v15 = v10;
    v16 = 2112;
    v17 = accessoryUUID;
    v18 = 2112;
    v19 = errorCopy;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Marked accessory add (%@) remotely ended with error (%@)", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)markRemoteAccessoryAddStarted
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  self->_didSendAddAccessoryRequestToPrimary = 1;
  os_unfair_lock_unlock(&self->_lock);
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    trackingInfo = [(HMDAccessorySetupMetricDispatcher *)selfCopy trackingInfo];
    accessoryUUID = [trackingInfo accessoryUUID];
    v10 = 138543618;
    v11 = v6;
    v12 = 2112;
    v13 = accessoryUUID;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Marked accessory add (%@) started remotely", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)markRemoteAccessoryAddWillStart:(id)start
{
  v42 = *MEMORY[0x277D85DE8];
  startCopy = start;
  os_unfair_lock_lock_with_options();
  home = [(HMDAccessorySetupMetricDispatcher *)&self->super.super.isa home];
  appleMediaAccessories = [home appleMediaAccessories];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __69__HMDAccessorySetupMetricDispatcher_markRemoteAccessoryAddWillStart___block_invoke;
  v36[3] = &unk_278688F28;
  v35 = startCopy;
  v37 = v35;
  v7 = [appleMediaAccessories na_filter:v36];

  v8 = [v7 na_map:&__block_literal_global_187_274826];
  asSet = [v8 asSet];

  residentDeviceManager = [home residentDeviceManager];
  primaryResidentDevice = [residentDeviceManager primaryResidentDevice];
  LOBYTE(startCopy) = primaryResidentDevice == 0;

  if ((startCopy & 1) == 0)
  {
    residentDeviceManager2 = [home residentDeviceManager];
    primaryResidentDevice2 = [residentDeviceManager2 primaryResidentDevice];
    device = [primaryResidentDevice2 device];
    idsIdentifier = [device idsIdentifier];

    if (idsIdentifier)
    {
      self->_primaryResidentIdenticalToAccessoryBeingAdded = [asSet containsObject:idsIdentifier];
    }

    else
    {
      self->_primaryResidentIdenticalToAccessoryBeingAdded = 0;
    }

    self->_primaryResidentAssignedInHomeWhenAddAccessory = 1;
  }

  appleMediaAccessories2 = [home appleMediaAccessories];
  v17 = [appleMediaAccessories2 count];
  self->_numberOfMediaAccessoriesnHome = v17 - [v7 count];

  residentDeviceManager3 = [home residentDeviceManager];
  availableResidentDevices = [residentDeviceManager3 availableResidentDevices];
  v20 = [availableResidentDevices na_map:&__block_literal_global_190_274827];
  asSet2 = [v20 asSet];
  v22 = [asSet2 mutableCopy];

  [v22 minusSet:asSet];
  self->_numberOfAvailableResidentsInHome = [v22 count];
  residentDeviceManager4 = [home residentDeviceManager];
  residentDevices = [residentDeviceManager4 residentDevices];
  v25 = [residentDevices na_map:&__block_literal_global_192];
  asSet3 = [v25 asSet];
  v27 = [asSet3 mutableCopy];

  [v27 minusSet:asSet];
  self->_numberOfResidentsInHome = [v27 count];

  os_unfair_lock_unlock(&self->_lock);
  v28 = objc_autoreleasePoolPush();
  selfCopy = self;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = HMFGetLogIdentifier();
    trackingInfo = [(HMDAccessorySetupMetricDispatcher *)selfCopy trackingInfo];
    accessoryUUID = [trackingInfo accessoryUUID];
    *buf = 138543618;
    v39 = v31;
    v40 = 2112;
    v41 = accessoryUUID;
    _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Marked accessory add (%@) will start", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v28);
  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __69__HMDAccessorySetupMetricDispatcher_markRemoteAccessoryAddWillStart___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 serialNumber];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

id __69__HMDAccessorySetupMetricDispatcher_markRemoteAccessoryAddWillStart___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 device];
  v3 = [v2 idsIdentifier];

  return v3;
}

id __69__HMDAccessorySetupMetricDispatcher_markRemoteAccessoryAddWillStart___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 device];
  v3 = [v2 idsIdentifier];

  return v3;
}

- (void)markRepairSessionComplete
{
  os_unfair_lock_lock_with_options();
  self->_isRepairSession = 1;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)markEventRouterPrimaryClientConnectMessageFailedWithError:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  os_unfair_lock_lock_with_options();
  if (self->_lastPrimaryResidentAvailableTime)
  {
    ++self->_numberOfTimesPrimaryClientConnectMessageFailed;
    objc_storeStrong(&self->_lastPrimaryClientConnectMessageFailError, error);
    os_unfair_lock_unlock(&self->_lock);
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = errorCopy;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Marked primary client connect message failed with error: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)markEventRouterPrimaryClientConnectStatusChanged:(BOOL)changed
{
  changedCopy = changed;
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if (self->_lastPrimaryResidentAvailableTime)
  {
    if (changedCopy)
    {
      self->_lastPrimaryClientConnectedTime = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) / 0x3B9ACA00;
      v5 = &OBJC_IVAR___HMDAccessorySetupMetricDispatcher__numberOfTimesPrimaryClientConnected;
    }

    else
    {
      v5 = &OBJC_IVAR___HMDAccessorySetupMetricDispatcher__numberOfTimesPrimaryClientDisconnected;
    }

    ++*(&self->super.super.isa + *v5);
    os_unfair_lock_unlock(&self->_lock);
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = HMFBooleanToString();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Marked primary client connection status changed: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = *MEMORY[0x277D85DE8];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)markPrimaryResidentChanged
{
  v10 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  ++self->_numberOfTimesPrimaryResidentChanged;
  if (!self->_lastPrimaryResidentAvailableTime)
  {
    self->_lastPrimaryResidentAvailableTime = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) / 0x3B9ACA00;
  }

  os_unfair_lock_unlock(&self->_lock);
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Marked primary resident is available", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)fire
{
  v28 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  if (self && (v6 = objc_getProperty(self, v4, 88, 1), fireCopy) && v6 == fireCopy && objc_getProperty(self, v7, 88, 1))
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v11;
      v24 = 2112;
      v25 = selfCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Timer did fire for setup metric dispatcher:%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    if ([(HMDAccessorySetupMetricDispatcher *)selfCopy languageSettingTime])
    {
      [(HMDAccessorySetupMetricDispatcher *)selfCopy submit];
    }

    else
    {
      v19 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2030];
      [(HMDAccessorySetupMetricDispatcher *)selfCopy _queryRemoteAndSubmitWithConfigurationError:v19];
      WeakRetained = objc_loadWeakRetained(&selfCopy->_radarInitiator);
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@", @"HomePod Database Sync Timed Out", v19];
      [WeakRetained requestRadarWithDisplayReason:@"HomePod Database Sync Timed Out" radarTitle:v21 componentName:@"HomeKit" componentVersion:@"HomeKit Device Setup" componentID:1364036];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      if (self)
      {
        Property = objc_getProperty(selfCopy2, v15, 88, 1);
      }

      else
      {
        Property = 0;
      }

      *buf = 138543874;
      v23 = v16;
      v24 = 2112;
      v25 = fireCopy;
      v26 = 2112;
      v27 = Property;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unexpected delegate callback from timer:%@, expected:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveEvent:(id)event topic:(id)topic
{
  v46 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  topicCopy = topic;
  v8 = [MEMORY[0x277CD19F0] decodeTopic:topicCopy];
  asAccessorySettingTopic = [v8 asAccessorySettingTopic];

  if (asAccessorySettingTopic)
  {
    v10 = eventCopy;
    v11 = asAccessorySettingTopic;
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
        selfCopy = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v19 = v37 = v11;
          *buf = 138543362;
          v41 = v19;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Setup metric already submitted, will unsubscribe from settings events", buf, 0xCu);

          v11 = v37;
        }

        objc_autoreleasePoolPop(v16);
        [(HMDAccessorySetupMetricDispatcher *)&selfCopy->super.super.isa subscribeToSettingsEvents:?];
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
      selfCopy2 = self;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543362;
        v41 = v35;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Setup metric submitted, will unsubscribe from settings events", buf, 0xCu);

        v11 = v29;
      }

      objc_autoreleasePoolPop(v32);
      [(HMDAccessorySetupMetricDispatcher *)&selfCopy2->super.super.isa subscribeToSettingsEvents:?];
    }

    else
    {
      v38 = v13;
      v24 = objc_autoreleasePoolPush();
      selfCopy3 = self;
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
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Nil settings value for settings update event: %@ topic: %@", buf, 0x20u);

        v11 = v27;
      }

      objc_autoreleasePoolPop(v24);
    }

    v14 = v38;
    goto LABEL_19;
  }

  v20 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543618;
    v41 = v23;
    v42 = 2112;
    v43 = topicCopy;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Do not handle topic: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
LABEL_21:

  v36 = *MEMORY[0x277D85DE8];
}

- (HMDDeviceSetupTrackingInfo)trackingInfo
{
  os_unfair_lock_lock_with_options();
  v3 = self->_trackingInfo;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)updateTrackingInfo:(id)info
{
  infoCopy = info;
  if (self)
  {
    os_unfair_lock_lock_with_options();
    objc_storeStrong(&self->_trackingInfo, info);
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)addRemoteEventRouterAssertion:(id)assertion
{
  v15 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = assertionCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Setting remote event router assertion for setup metric collection: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (selfCopy)
  {
    objc_setProperty_atomic(selfCopy, v9, assertionCopy, 176);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (HMDAccessorySetupMetricDispatcher)initWithQueue:(id)queue trackingInfo:(id)info setupSessionIdentifier:(id)identifier homeManager:(id)manager
{
  managerCopy = manager;
  identifierCopy = identifier;
  infoCopy = info;
  queueCopy = queue;
  v22 = +[HMDMainDriver driver];
  discoveryController = [v22 discoveryController];
  v13 = +[HMDMainDriver driver];
  networkInfoController = [v13 networkInfoController];
  v15 = +[HMDMetricsManager sharedLogEventSubmitter];
  metricsManager = [managerCopy metricsManager];
  radarInitiator = [metricsManager radarInitiator];
  v18 = [(HMDAccessorySetupMetricDispatcher *)self initWithQueue:queueCopy discoveryController:discoveryController networkInfoController:networkInfoController trackingInfo:infoCopy setupSessionIdentifier:identifierCopy homeManager:managerCopy logEventSubmitter:v15 radarInitiator:radarInitiator timerFactory:&__block_literal_global_274852];

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

- (HMDAccessorySetupMetricDispatcher)initWithQueue:(id)queue discoveryController:(id)controller networkInfoController:(id)infoController trackingInfo:(id)info setupSessionIdentifier:(id)identifier homeManager:(id)manager logEventSubmitter:(id)submitter radarInitiator:(id)self0 timerFactory:(id)self1
{
  queueCopy = queue;
  infoCopy = info;
  identifierCopy = identifier;
  managerCopy = manager;
  submitterCopy = submitter;
  initiatorCopy = initiator;
  factoryCopy = factory;
  v37.receiver = self;
  v37.super_class = HMDAccessorySetupMetricDispatcher;
  v23 = [(HMDAccessorySetupMetricDispatcher *)&v37 init];
  if (v23)
  {
    v24 = HMFGetOSLogHandle();
    logger = v23->_logger;
    v23->_logger = v24;

    objc_storeStrong(&v23->_queue, queue);
    v26 = +[HMDMainDriver driver];
    discoveryController = [v26 discoveryController];
    discoveryController = v23->_discoveryController;
    v23->_discoveryController = discoveryController;

    v29 = +[HMDMainDriver driver];
    networkInfoController = [v29 networkInfoController];
    networkInfoController = v23->_networkInfoController;
    v23->_networkInfoController = networkInfoController;

    objc_storeStrong(&v23->_trackingInfo, info);
    objc_storeWeak(&v23->_submitter, submitterCopy);
    v32 = factoryCopy[2](factoryCopy, v23);
    timer = v23->_timer;
    v23->_timer = v32;

    v34 = [identifierCopy copy];
    setupSessionIdentifier = v23->_setupSessionIdentifier;
    v23->_setupSessionIdentifier = v34;

    v23->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v23->_homeManager, managerCopy);
    objc_storeWeak(&v23->_radarInitiator, initiatorCopy);
  }

  return v23;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t55_274862 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t55_274862, &__block_literal_global_203);
  }

  v3 = logCategory__hmf_once_v56_274863;

  return v3;
}

void __48__HMDAccessorySetupMetricDispatcher_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v56_274863;
  logCategory__hmf_once_v56_274863 = v1;
}

@end