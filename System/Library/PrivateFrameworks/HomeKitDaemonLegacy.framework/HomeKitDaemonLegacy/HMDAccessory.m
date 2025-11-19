@interface HMDAccessory
+ (BOOL)splitProductDataIntoProductGroupAndProductNumber:(id)a3 productGroup:(id *)a4 productNumber:(id *)a5;
+ (BOOL)validateProductData:(id)a3;
+ (id)logCategory;
+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5;
- (BOOL)_allowSoftwareUpdateChangeFromSource:(unint64_t)a3;
- (BOOL)_getLastKnownLowBatteryStatus;
- (BOOL)_updateRoom:(id)a3 source:(unint64_t)a4;
- (BOOL)hasActiveSession;
- (BOOL)hasMediaProfile;
- (BOOL)hasSiriEndpointProfile;
- (BOOL)isFirstPartyAccessory;
- (BOOL)isKnownManufacturer;
- (BOOL)isLastSeenDateValid;
- (BOOL)isLowBattery;
- (BOOL)isReachable;
- (BOOL)isReachableForXPCClients;
- (BOOL)isRemotelyReachable;
- (BOOL)isSuspendCapable;
- (BOOL)reachabilityPingEnabled;
- (BOOL)reachabilityPingNotificationEnabled;
- (BOOL)resetOnBackoffExpiry;
- (HMDAccessory)hostAccessory;
- (HMDAccessory)init;
- (HMDAccessory)initWithCoder:(id)a3;
- (HMDAccessory)initWithNotificationCenter:(id)a3;
- (HMDAccessory)initWithTransaction:(id)a3 home:(id)a4;
- (HMDAccessoryVersion)firmwareVersion;
- (HMDApplicationData)appData;
- (HMDHome)home;
- (HMDNetworkRouterFirewallRuleAccessoryIdentifier)metadataIdentifier;
- (HMDRoom)room;
- (HMDSoftwareUpdate)softwareUpdate;
- (HMDUserManagementOperationTimestamp)pairingsAuditedTimestamp;
- (HMDUserManagementOperationTimestamp)sharedAdminAddedTimestamp;
- (HMDVendorModelEntry)vendorInfo;
- (HMFVersion)primaryProfileVersion;
- (NSArray)accessoryProfiles;
- (NSArray)transportReports;
- (NSData)wiFiUniquePreSharedKey;
- (NSDate)lastSeenDate;
- (NSDate)timeBecameReachable;
- (NSDate)timeBecameUnreachable;
- (NSDictionary)assistantObject;
- (NSNumber)initialCategoryIdentifier;
- (NSNumber)networkClientIdentifier;
- (NSString)contextID;
- (NSString)displayableFirmwareVersion;
- (NSString)hashRouteID;
- (NSString)identifier;
- (NSString)initialManufacturer;
- (NSString)initialModel;
- (NSString)manufacturer;
- (NSString)model;
- (NSString)name;
- (NSString)pendingConfigurationIdentifier;
- (NSString)productData;
- (NSString)productGroup;
- (NSString)providedName;
- (NSString)serialNumber;
- (NSString)urlString;
- (NSUUID)configuredNetworkProtectionGroupUUID;
- (NSUUID)contextSPIUniqueIdentifier;
- (NSUUID)defaultNetworkProtectionGroupUUID;
- (NSUUID)networkClientProfileFingerprint;
- (NSUUID)networkRouterUUID;
- (NSUUID)spiClientIdentifier;
- (double)lastPairingFailureTime;
- (id)_updateCategory:(id)a3 notifyClients:(BOOL)a4;
- (id)accessoryBulletinContext;
- (id)attributeDescriptions;
- (id)backingStoreObjects:(int64_t)a3;
- (id)dumpNetworkState;
- (id)dumpSimpleState;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (id)findVendorInfoAndManufacturerKnown:(BOOL *)a3;
- (id)getConfiguredName;
- (id)logIdentifier;
- (id)messageDestination;
- (id)messageSendPolicy;
- (id)metricLoggingTransportDetails;
- (id)metricLoggingVendorDetails;
- (id)modelWithUpdatedRoom:(id)a3;
- (id)networkProtectionBindingForMessage:(id)a3;
- (id)networkProtectionGroupUUID;
- (id)privateDescription;
- (id)runtimeState;
- (id)shortDescription;
- (id)transactionWithObjectChangeType:(unint64_t)a3;
- (int64_t)currentNetworkProtectionMode;
- (int64_t)networkClientLAN;
- (int64_t)reachableTransports;
- (int64_t)targetNetworkProtectionMode;
- (int64_t)wiFiCredentialType;
- (unint64_t)configNumber;
- (unint64_t)consecutivePairingFailure;
- (unint64_t)supportedTransports;
- (void)__handleAuditPairings:(id)a3;
- (void)__handleGetAccessoryAdvertisingParams:(id)a3;
- (void)__handleIdentify:(id)a3;
- (void)__handleListPairings:(id)a3;
- (void)__handlePairingIdentityRequest:(id)a3;
- (void)__handleSetAppData:(id)a3;
- (void)__handleUpdatePendingConfigurationIdentifierMessage:(id)a3;
- (void)_applySoftwareUpdateModel:(id)a3 completion:(id)a4;
- (void)_configNumberUpdated;
- (void)_handleLinkQualityRequestMessage:(id)a3;
- (void)_handlePreviewAllowedHosts:(id)a3;
- (void)_handleRenameMessage:(id)a3;
- (void)_handleUpdateRoomMessage:(id)a3;
- (void)_handleUpdatedName:(id)a3;
- (void)_handleWiFiReconfiguration:(id)a3;
- (void)_notifyConnectivityChangedWithRemoteAccessChanged:(BOOL)a3;
- (void)_registerForMessages;
- (void)_relayIdentifyAccessorytoResidentForMessage:(id)a3;
- (void)_renameAccessory:(id)a3 resetName:(BOOL)a4 message:(id)a5;
- (void)_updateBridgedAccessoriesWithLastSeenDate:(id)a3;
- (void)_updateHost:(id)a3;
- (void)addAccessoryProfile:(id)a3;
- (void)addHostedAccessory:(id)a3;
- (void)appDataRemoved:(id)a3 message:(id)a4;
- (void)appDataUpdated:(id)a3 message:(id)a4;
- (void)configureWithHome:(id)a3 msgDispatcher:(id)a4 configurationTracker:(id)a5 initialConfiguration:(BOOL)a6;
- (void)dealloc;
- (void)decodePreferredMediaUser:(id)a3;
- (void)didEncounterError:(id)a3;
- (void)encodePreferredMediaUser:(id)a3;
- (void)encodeProfiles:(id)a3 forXPCCoder:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)handleAccessoryUpdateShouldProcessTransactionRemovalValueRequestMessage:(id)a3;
- (void)handleAddedAccessoryProfile:(id)a3;
- (void)handleAddedMediaProfile:(id)a3;
- (void)handleAddedSiriEndpointProfile:(id)a3;
- (void)handleAddedSoftwareUpdateModel:(id)a3 message:(id)a4;
- (void)handleIdentifyAccessoryMessage:(id)a3;
- (void)handleRemovedSoftwareUpdateModel:(id)a3 message:(id)a4;
- (void)handleUpdatedSoftwareUpdateModel:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)notifyAccessoryNameChanged:(BOOL)a3;
- (void)populateModelObject:(id)a3 version:(int64_t)a4;
- (void)populateVendorDetailsForCoreAnalytics:(id)a3 keyPrefix:(id)a4;
- (void)postAccessoryRenamedNotification;
- (void)remoteAccessEnabled:(BOOL)a3;
- (void)removeAccessoryProfile:(id)a3;
- (void)removeCloudData;
- (void)removeHostedAccessory:(id)a3;
- (void)resetHashedRoute;
- (void)runTransactionWithModel:(id)a3 label:(id)a4 completion:(id)a5;
- (void)runTransactionWithModels:(id)a3 label:(id)a4 completion:(id)a5;
- (void)saveCurrentNetworkProtectionMode:(int64_t)a3 assignedLAN:(int64_t)a4 allowedWANHosts:(id)a5 profileFingerprint:(id)a6;
- (void)saveNetworkAccessViolation:(id)a3;
- (void)saveNetworkClientIdentifier:(id)a3 networkRouterUUID:(id)a4 clearProfileFingerprint:(BOOL)a5;
- (void)saveWiFiUniquePreSharedKey:(id)a3 credentialType:(int64_t)a4;
- (void)sendRemovalRequestWithCompletion:(id)a3;
- (void)setAccessoryProfiles:(id)a3;
- (void)setAppData:(id)a3;
- (void)setCategory:(id)a3;
- (void)setConfigNumber:(unint64_t)a3;
- (void)setConfiguredName:(id)a3;
- (void)setConfiguredNetworkProtectionGroupUUID:(id)a3;
- (void)setConnected:(BOOL)a3;
- (void)setConsecutivePairingFailure:(unint64_t)a3;
- (void)setCurrentNetworkProtectionMode:(int64_t)a3;
- (void)setDefaultPreferredMediaUserIfRemoved:(id)a3 defaultUser:(id)a4 completion:(id)a5;
- (void)setDisplayableFirmwareVersion:(id)a3;
- (void)setFirmwareVersion:(id)a3;
- (void)setHostAccessory:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setInitialCategoryIdentifier:(id)a3;
- (void)setInitialManufacturer:(id)a3;
- (void)setInitialModel:(id)a3;
- (void)setIsKnownManufacturer:(BOOL)a3;
- (void)setLastPairingFailureTime:(double)a3;
- (void)setLastSeenDate:(id)a3;
- (void)setLowBattery:(BOOL)a3;
- (void)setManufacturer:(id)a3;
- (void)setModel:(id)a3;
- (void)setNetworkClientIdentifier:(id)a3;
- (void)setNetworkClientLAN:(int64_t)a3;
- (void)setNetworkClientProfileFingerprint:(id)a3;
- (void)setNetworkRouterUUID:(id)a3;
- (void)setPairingsAuditedTimestamp:(id)a3;
- (void)setPendingConfigurationIdentifier:(id)a3;
- (void)setPreferredMediaUser:(id)a3 selectionType:(unint64_t)a4 completion:(id)a5;
- (void)setPrimaryProfileVersion:(id)a3;
- (void)setProductData:(id)a3;
- (void)setProvidedName:(id)a3;
- (void)setReachabilityPingEnabled:(BOOL)a3;
- (void)setRemotelyReachable:(BOOL)a3;
- (void)setResetOnBackoffExpiry:(BOOL)a3;
- (void)setRoom:(id)a3;
- (void)setSerialNumber:(id)a3;
- (void)setSharedAdminAddedTimestamp:(id)a3;
- (void)setSoftwareUpdate:(id)a3;
- (void)setSoftwareUpdateForTesting:(id)a3;
- (void)setSuspendedCapable:(BOOL)a3;
- (void)setTimeBecameReachable:(id)a3;
- (void)setTimeBecameUnreachable:(id)a3;
- (void)setVendorInfo:(id)a3;
- (void)setWiFiUniquePreSharedKey:(id)a3;
- (void)setWifiCredentialType:(int64_t)a3;
- (void)setreachabilityPingNotificationEnabled:(BOOL)a3;
- (void)startReachabilityCheck;
- (void)stopReachabilityCheck;
- (void)submitLogEvent:(id)a3;
- (void)submitLogEvent:(id)a3 error:(id)a4;
- (void)transactionAccessoryUpdatedForPreferredMediaUser:(id)a3 completionHandler:(id)a4;
- (void)transactionObjectRemoved:(id)a3 message:(id)a4;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)unconfigure;
- (void)updateCategory:(id)a3;
- (void)updateMediaSession:(id)a3;
- (void)updateRoom:(id)a3 source:(unint64_t)a4;
- (void)updateSoftwareUpdate:(id)a3 completionHandler:(id)a4;
- (void)updateVendorInfo;
@end

@implementation HMDAccessory

- (id)accessoryBulletinContext
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"accessory";
  v2 = [(HMDAccessory *)self contextID];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSUUID)contextSPIUniqueIdentifier
{
  v3 = +[HMDProcessInfo privateClientIdentifierSalt];
  v4 = MEMORY[0x277CCAD78];
  v5 = [(HMDAccessory *)self uuid];
  v6 = [v4 hm_deriveUUIDFromBaseUUID:v5 identifierSalt:v3];

  return v6;
}

- (NSString)contextID
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDAccessory *)self home];
  v5 = [v4 contextID];
  v6 = [(HMDAccessory *)self uuid];
  v7 = [v6 UUIDString];
  v8 = [v3 stringWithFormat:@"%@:%@", v5, v7];

  return v8;
}

- (void)_handlePreviewAllowedHosts:(id)a3
{
  v4 = a3;
  if ([(HMDAccessory *)self supportsNetworkProtection])
  {
    v5 = [(HMDAccessory *)self home];
    v6 = [HMDAccessoryAllowedHostsPreviewHelper helperForHome:v5];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __63__HMDAccessory_NetworkProtection2___handlePreviewAllowedHosts___block_invoke;
    v8[3] = &unk_27972CCA0;
    v9 = v4;
    [v6 fetchAllowedHostsForAccessory:self completion:v8];
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v7];
  }
}

void __63__HMDAccessory_NetworkProtection2___handlePreviewAllowedHosts___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v11 = *MEMORY[0x277CD09E0];
    v8 = encodeRootObjectForSPIClients(v5);
    v12[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    if (!v6)
    {
      v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    }

    v9 = 0;
  }

  [*(a1 + 32) respondWithPayload:v9 error:v7];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)networkProtectionBindingForMessage:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 name];
  v5 = *MEMORY[0x277CD09F0];
  v6 = HMFEqualObjects();

  if (v6)
  {
    v7 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v14[0] = v7;
    v8 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v14[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

    v10 = [v3 name];
    v11 = HMFCreateMessageBindingWithReceiver();
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)submitLogEvent:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(HMDAccessory *)self home];
  v8 = [v9 logEventSubmitter];
  [v8 submitLogEvent:v7 error:v6];
}

- (void)submitLogEvent:(id)a3
{
  v4 = a3;
  v6 = [(HMDAccessory *)self home];
  v5 = [v6 logEventSubmitter];
  [v5 submitLogEvent:v4 error:0];
}

- (void)stopReachabilityCheck
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

- (void)startReachabilityCheck
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

- (void)handleRemovedSoftwareUpdateModel:(id)a3 message:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 transactionResult];
  v9 = -[HMDAccessory _allowSoftwareUpdateChangeFromSource:](self, "_allowSoftwareUpdateChangeFromSource:", [v8 source]);
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (!v9)
  {
    if (v13)
    {
      v18 = HMFGetLogIdentifier();
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "source")}];
      v21 = 138543618;
      v22 = v18;
      v23 = 2112;
      v24 = v19;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Removing software update is not allowed from source %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v7 respondWithError:v17];
    goto LABEL_9;
  }

  if (v13)
  {
    v14 = HMFGetLogIdentifier();
    v15 = [(HMDAccessory *)v11 softwareUpdate];
    v21 = 138543618;
    v22 = v14;
    v23 = 2112;
    v24 = v15;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Removing software update: %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  [(HMDAccessory *)v11 setSoftwareUpdate:0];
  [v8 markChanged];
  v16 = [v7 responseHandler];

  if (v16)
  {
    v17 = [v7 responseHandler];
    v17[2](v17, 0, 0);
LABEL_9:
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)handleAddedSoftwareUpdateModel:(id)a3 message:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 transactionResult];
  if (-[HMDAccessory _allowSoftwareUpdateChangeFromSource:](self, "_allowSoftwareUpdateChangeFromSource:", [v8 source]))
  {
    v9 = [[HMDSoftwareUpdate alloc] initWithModel:v6];
    [(HMDAccessory *)self setSoftwareUpdate:v9];
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v13;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Added software update: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [v8 markChanged];
    v14 = [v7 responseHandler];

    if (v14)
    {
      v15 = [v7 responseHandler];
      v15[2](v15, 0, 0);
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "source")}];
      v22 = 138543618;
      v23 = v19;
      v24 = 2112;
      v25 = v20;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Adding software update is not allowed from source %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v7 respondWithError:v9];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedSoftwareUpdateModel:(id)a3 newValues:(id)a4 message:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 transactionResult];
  if (-[HMDAccessory _allowSoftwareUpdateChangeFromSource:](self, "_allowSoftwareUpdateChangeFromSource:", [v11 source]))
  {
    v12 = [(HMDAccessory *)self softwareUpdate];
    [v12 transactionObjectUpdated:v8 newValues:v9 message:v10];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "source")}];
      v19 = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = v17;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Updating software update is not allowed from source %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v10 respondWithError:v12];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_allowSoftwareUpdateChangeFromSource:(unint64_t)a3
{
  v5 = [(HMDAccessory *)self home];
  v6 = [v5 isOwnerUser];

  if (!v6)
  {
    return 1;
  }

  result = [(HMDAccessory *)self supportsFirmwareUpdate];
  if (a3 < 2)
  {
    return 1;
  }

  return result;
}

- (void)_applySoftwareUpdateModel:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDAccessory *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDAccessory *)self home];
  v10 = [v9 backingStore];
  v11 = +[HMDBackingStoreTransactionOptions defaultLocalOptions];
  v12 = [v10 transaction:@"HMDAccessorySoftwareUpdate" options:v11];

  [v12 add:v7 withMessage:0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__HMDAccessory__applySoftwareUpdateModel_completion___block_invoke;
  v14[3] = &unk_279735558;
  v15 = v6;
  v13 = v6;
  [v12 run:v14];
}

uint64_t __53__HMDAccessory__applySoftwareUpdateModel_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateSoftwareUpdate:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HMDAccessory_updateSoftwareUpdate_completionHandler___block_invoke;
  block[3] = &unk_2797355D0;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __55__HMDAccessory_updateSoftwareUpdate_completionHandler___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) supportsSoftwareUpdate])
  {
    v2 = [*(a1 + 32) softwareUpdate];
    v3 = *(a1 + 40);
    if (HMFEqualObjects())
    {
      v4 = objc_autoreleasePoolPush();
      v5 = *(a1 + 32);
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = HMFGetLogIdentifier();
        *buf = 138543362;
        v45 = v7;
        _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot update software update, matches existing update", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
      if (!*(a1 + 48))
      {
        goto LABEL_39;
      }

      v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:1];
      (*(*(a1 + 48) + 16))();
      goto LABEL_38;
    }

    v13 = *(a1 + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v8 = v14;

    if (([v8 supportsCHIP] & 1) == 0)
    {
      if (!*(a1 + 40))
      {
        goto LABEL_23;
      }

      v15 = [*(a1 + 32) firmwareVersion];
      v16 = [*(a1 + 40) version];
      v17 = [v15 isAtLeastVersion:v16];

      if (v17)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = *(a1 + 32);
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = HMFGetLogIdentifier();
          v22 = [*(a1 + 40) version];
          v23 = [v22 versionString];
          v24 = [*(a1 + 32) firmwareVersion];
          [v24 versionString];
          v25 = v43 = v18;
          *buf = 138543874;
          v45 = v21;
          v46 = 2112;
          v47 = v23;
          v48 = 2112;
          v49 = v25;
          _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Software update, '%@', is older than current software version, '%@'", buf, 0x20u);

          v18 = v43;
        }

        objc_autoreleasePoolPop(v18);
        if (!*(a1 + 48))
        {
          goto LABEL_38;
        }

        v26 = MEMORY[0x277CCA9B8];
        v27 = 44;
        goto LABEL_36;
      }
    }

    v28 = *(a1 + 40);
    if (v28 && ![v28 downloadSize])
    {
      v37 = objc_autoreleasePoolPush();
      v38 = *(a1 + 32);
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = HMFGetLogIdentifier();
        v41 = *(a1 + 40);
        *buf = 138543618;
        v45 = v40;
        v46 = 2112;
        v47 = v41;
        _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@Software update, '%@', has invalid 0 download size.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v37);
      if (!*(a1 + 48))
      {
        goto LABEL_38;
      }

      v26 = MEMORY[0x277CCA9B8];
      v27 = 3;
LABEL_36:
      v35 = [v26 hmErrorWithCode:v27];
      (*(*(a1 + 48) + 16))();
LABEL_37:

LABEL_38:
      goto LABEL_39;
    }

LABEL_23:
    v29 = objc_autoreleasePoolPush();
    v30 = *(a1 + 32);
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = HMFGetLogIdentifier();
      v33 = *(a1 + 40);
      *buf = 138543618;
      v45 = v32;
      v46 = 2112;
      v47 = v33;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@Updating software update to: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    [*(a1 + 40) configureWithAccessory:*(a1 + 32) dataSource:*(a1 + 32) messageDispatcher:0];
    v34 = *(a1 + 40);
    if (v34)
    {
      v35 = [v34 model];
    }

    else
    {
      v35 = [v2 transactionWithObjectChangeType:0];
      [v35 setSoftwareVersion:0];
      [v35 setDisplayableSoftwareVersion:0];
      [v35 setState:0];
      [v35 setInstallDuration:0];
      [v35 setDownloadSize:0];
      [v35 setReleaseDate:0];
    }

    if (v2)
    {
      v36 = 2;
    }

    else
    {
      v36 = 1;
    }

    [v35 setObjectChangeType:v36];
    [*(a1 + 32) _applySoftwareUpdateModel:v35 completion:*(a1 + 48)];
    goto LABEL_37;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543362;
    v45 = v12;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Cannot update software update for an accessory that does not support software update", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  if (*(a1 + 48))
  {
    v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(*(a1 + 48) + 16))();
LABEL_39:
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)setSoftwareUpdate:(id)a3
{
  v11 = a3;
  os_unfair_recursive_lock_lock_with_options();
  softwareUpdate = self->_softwareUpdate;
  if (HMFEqualObjects())
  {
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    v6 = self->_softwareUpdate;
    objc_storeStrong(&self->_softwareUpdate, a3);
    os_unfair_recursive_lock_unlock();
    v7 = [(HMDAccessory *)self msgDispatcher];
    [v11 configureWithAccessory:self dataSource:self messageDispatcher:v7];

    v8 = [(HMDAccessory *)self home];
    if (v8)
    {
      if ([(HMDAccessory *)self isCurrentAccessory])
      {
        v9 = [v8 homeManager];
        v10 = [v9 softwareUpdateManager];

        [v10 updateAvailableUpdate:v11];
      }

      [v8 reevaluateAccessoryInfo];
    }

    if (v6)
    {
      [(HMDSoftwareUpdate *)v6 invalidate];
    }
  }
}

- (void)setSoftwareUpdateForTesting:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  softwareUpdate = self->_softwareUpdate;
  self->_softwareUpdate = v4;

  os_unfair_recursive_lock_unlock();
}

- (HMDSoftwareUpdate)softwareUpdate
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_softwareUpdate;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)__handlePairingIdentityRequest:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uuidForKey:*MEMORY[0x277CCF0B0]];
  v6 = [(HMDAccessory *)self uuid];
  v7 = HMFEqualObjects();

  if (v7)
  {
    v8 = self;
    if ([(HMDAccessory *)v8 conformsToProtocol:&unk_286699670])
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = objc_autoreleasePoolPush();
    v12 = v8;
    v13 = HMFGetOSLogHandle();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if (!v10)
    {
      if (v14)
      {
        v30 = HMFGetLogIdentifier();
        v39 = 138543362;
        v40 = v30;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Attempt to retrieve pairing identity from an accessory that does not support pairing identity", &v39, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      [v4 respondWithError:v16];
      goto LABEL_26;
    }

    if (v14)
    {
      v15 = HMFGetLogIdentifier();
      v39 = 138543362;
      v40 = v15;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Received request to to retrieve pairing identity for accessory", &v39, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [(HMDAccessory *)v10 pairingIdentity];
    if (v16)
    {
      v17 = [v4 BOOLForKey:*MEMORY[0x277CCEC28]];
      v18 = [v4 proxyConnection];
      v19 = [v18 entitlements];

      if (!v17 || (v19 & 0x10) != 0)
      {
        v36 = [(HMDAccessory *)v12 home];
        v37 = [v36 homeManager];
        [v37 sendPairingIdentity:v16 includePrivateKey:v17 requestMessage:v4];

        goto LABEL_25;
      }

      v20 = objc_autoreleasePoolPush();
      v21 = v12;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v39 = 138543362;
        v40 = v23;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Client requested private key but does not have entitlement for private key", &v39, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      v24 = MEMORY[0x277CCA9B8];
      v25 = 17;
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      v32 = v12;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        v35 = [(HMDAccessory *)v32 name];
        v39 = 138543618;
        v40 = v34;
        v41 = 2112;
        v42 = v35;
        _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Pairing identity for accessory not found : %@", &v39, 0x16u);
      }

      objc_autoreleasePoolPop(v31);
      v24 = MEMORY[0x277CCA9B8];
      v25 = 2;
    }

    v36 = [v24 hmErrorWithCode:v25];
    [v4 respondWithError:v36];
LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

  v26 = objc_autoreleasePoolPush();
  v27 = self;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = HMFGetLogIdentifier();
    v39 = 138543618;
    v40 = v29;
    v41 = 2112;
    v42 = v4;
    _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Attempt to retrieve pairing identity with mismatching identifier from message: %@", &v39, 0x16u);
  }

  objc_autoreleasePoolPop(v26);
  v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  [v4 respondWithError:v10];
LABEL_27:

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_updateHost:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v4 = [(HMDAccessory *)self hostAccessory];
  v5 = [MEMORY[0x277CCAD78] hmf_zeroUUID];
  v6 = [v25 isEqual:v5];

  if (v6)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (!v4 || ([v4 uuid], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqual:", v25), v8, (v9 & 1) == 0))
    {
      v10 = v25;
      if (self)
      {
        v11 = [(HMDAccessory *)self home];
        v12 = [v11 accessoryWithUUID:v10];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v24 = v11;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v15 = [v11 allNewlyConfiguredAccessories];
          v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v27;
            while (2)
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v27 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v26 + 1) + 8 * i);
                v21 = [v20 uuid];
                v22 = [v21 isEqual:v10];

                if (v22)
                {
                  v14 = v20;

                  goto LABEL_21;
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v14 = 0;
LABEL_21:
          v13 = 0;
          v11 = v24;
        }
      }

      else
      {
        v14 = 0;
      }

      [v4 removeHostedAccessory:self];
      [v14 addHostedAccessory:self];
      [(HMDAccessory *)self setHostAccessory:v14];
    }
  }

  else
  {
    [v4 removeHostedAccessory:self];
    [(HMDAccessory *)self setHostAccessory:0];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (HMDAccessory)hostAccessory
{
  os_unfair_recursive_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_hostAccessory);
  os_unfair_recursive_lock_unlock();

  return WeakRetained;
}

- (void)setHostAccessory:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  objc_storeWeak(&self->_hostAccessory, v4);

  os_unfair_recursive_lock_unlock();
}

- (void)removeHostedAccessory:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)addHostedAccessory:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (NSString)hashRouteID
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(HMDAccessory *)self providesHashRouteID])
  {
    os_unfair_recursive_lock_lock_with_options();
    hashRouteID = self->_hashRouteID;
    if (hashRouteID)
    {
      v4 = hashRouteID;
    }

    else
    {
      os_unfair_recursive_lock_unlock();
      v5 = objc_autoreleasePoolPush();
      v6 = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v17 = 138543362;
        v18 = v8;
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Do not have cached hashed route, reaching out to siri to fetch it", &v17, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
      v9 = [(HMDAccessory *)v6 hashedRouteFactory];
      v10 = [(HMDAccessory *)v6 identifier];
      v4 = (v9)[2](v9, v10);

      v11 = objc_autoreleasePoolPush();
      v12 = v6;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v17 = 138543618;
        v18 = v14;
        v19 = 2112;
        v20 = v4;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Caching hashed route from siri: %@", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      os_unfair_recursive_lock_lock_with_options();
      objc_storeStrong(&self->_hashRouteID, v4);
    }

    os_unfair_recursive_lock_unlock();
  }

  else
  {
    v4 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)resetHashedRoute
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(HMDAccessory *)self providesHashRouteID])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting cached hashed route", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    os_unfair_recursive_lock_lock_with_options();
    hashRouteID = v4->_hashRouteID;
    v4->_hashRouteID = 0;

    os_unfair_recursive_lock_unlock();
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)encodeProfiles:(id)a3 forXPCCoder:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v6 hmd_isForXPCTransportEntitledForSPIAccess])
  {
    v8 = v13;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v9 = __43__HMDAccessory_encodeProfiles_forXPCCoder___block_invoke;
  }

  else
  {
    v8 = &v11;
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v9 = __43__HMDAccessory_encodeProfiles_forXPCCoder___block_invoke_2;
  }

  v8[2] = v9;
  v8[3] = &unk_279726320;
  v8[4] = self;
  v10 = [v7 na_filter:{v11, v12}];

  [v6 encodeObject:v10 forKey:@"HM.accessoryProfiles"];
}

- (void)encodeWithCoder:(id)a3
{
  v87 = a3;
  v4 = [v87 hmd_isForXPCTransport];
  v5 = [v87 hmd_isForXPCTransportEntitledForSPIAccess];
  v6 = [v87 hmd_homeManagerOptions];
  v7 = [(HMDAccessory *)self uuid];
  v8 = [v7 UUIDString];
  [v87 encodeObject:v8 forKey:@"accessoryUUID"];

  v9 = [(HMDAccessory *)self getConfiguredName];
  [v87 encodeObject:v9 forKey:@"accessoryConfiguredName"];

  v10 = [(HMDAccessory *)self displayableFirmwareVersion];
  [v87 encodeObject:v10 forKey:*MEMORY[0x277CCEA38]];

  v11 = MEMORY[0x277CD1FA0];
  if (v4)
  {
    v12 = [(HMDAccessory *)self name];
    [v87 encodeObject:v12 forKey:@"accessoryName"];

    v13 = [(HMDAccessory *)self firmwareVersion];
    v14 = [v13 shortVersionString];
    [v87 encodeObject:v14 forKey:@"HM.firmwareVersion"];

    if (!v5)
    {
      v15 = [(HMDAccessory *)self manufacturer];
      [v87 encodeObject:v15 forKey:@"HM.manufacturer"];

      v16 = [(HMDAccessory *)self model];
      [v87 encodeObject:v16 forKey:@"HM.model"];

      [v87 encodeBool:-[HMDAccessory isSuspendCapable](self forKey:{"isSuspendCapable"), *v11}];
      goto LABEL_9;
    }
  }

  else
  {
    v17 = [(HMDAccessory *)self configuredName];
    [v87 encodeObject:v17 forKey:@"accessoryName"];

    v18 = [(HMDAccessory *)self firmwareVersion];
    v19 = [v18 rawVersionString];
    [v87 encodeObject:v19 forKey:@"HM.firmwareVersion"];

    v20 = [(HMDAccessory *)self hostAccessory];
    if (v20)
    {
      [v87 encodeConditionalObject:v20 forKey:@"HM.hostAccessory"];
    }
  }

  v21 = [(HMDAccessory *)self serialNumber];
  [v87 encodeObject:v21 forKey:@"HM.serialNumber"];

  v22 = [(HMDAccessory *)self manufacturer];
  [v87 encodeObject:v22 forKey:@"HM.manufacturer"];

  v23 = [(HMDAccessory *)self model];
  [v87 encodeObject:v23 forKey:@"HM.model"];

  [v87 encodeBool:-[HMDAccessory isSuspendCapable](self forKey:{"isSuspendCapable"), *v11}];
  if (v5)
  {
    [v87 encodeInt32:-[HMDAccessory accessoryReprovisionState](self forKey:{"accessoryReprovisionState"), @"HM.accessoryReprovisionState"}];
  }

LABEL_9:
  v24 = [(HMDAccessory *)self isCurrentAccessory];
  if (v4)
  {
    [v87 encodeBool:v24 forKey:*MEMORY[0x277CCE9F0]];
    v25 = [(HMDAccessory *)self supportsIdentify];
    [v87 encodeBool:v25 forKey:*MEMORY[0x277CCEFB0]];
  }

  if ((v6 & 0x9741) != 0 || v24 && (v6 & 0x10) != 0)
  {
    v26 = [(HMDAccessory *)self home];
    v27 = [(HMDAccessory *)self allowedHosts];
    [v87 encodeObject:v27 forKey:*MEMORY[0x277CCE7E8]];

    v28 = [(HMDAccessory *)self networkAccessViolation];
    [v87 encodeObject:v28 forKey:*MEMORY[0x277CCEBA0]];

    if (([v87 hmd_isForRemoteGatewayCoder] & 1) == 0)
    {
      v29 = [(HMDAccessory *)self category];
      [v87 encodeObject:v29 forKey:@"HM.accessoryCategory"];
    }

    if ((v4 & 1) == 0)
    {
      v30 = [(HMDAccessory *)self firmwareVersion];
      [v87 encodeObject:v30 forKey:@"HM.firmwareVersionObject"];

      v31 = [(HMDAccessory *)self productData];
      [v87 encodeObject:v31 forKey:@"HMDA.productData2"];

      v32 = [(HMDAccessory *)self primaryProfileVersion];
      v33 = [v32 versionString];
      [v87 encodeObject:v33 forKey:@"HMDA.primaryProfileVersion"];
    }

    if ([v87 hmd_isForLocalStore])
    {
      v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessory configNumber](self, "configNumber")}];
      [v87 encodeObject:v34 forKey:@"HMDAccessoryConfigurationNumberCodingKey"];

      v35 = [(HMDAccessory *)self lastSeenDate];
      [v87 encodeObject:v35 forKey:@"HMDAccessoryLastSeenDateCodingKey"];

      [v87 encodeBool:-[HMDAccessory isLowBattery](self forKey:{"isLowBattery"), @"HMDAccessoryLowBatteryCodingKey"}];
      v36 = [(HMDAccessory *)self sharedAdminAddedTimestamp];
      [v87 encodeObject:v36 forKey:@"HM.sharedAdminAddedTimestamp"];

      v37 = [(HMDAccessory *)self pairingsAuditedTimestamp];
      [v87 encodeObject:v37 forKey:@"HM.pairingsAuditedTimestamp"];
    }

    if (([v87 hmd_isForLocalStore] & 1) != 0 || objc_msgSend(v87, "hmd_isForRemoteTransport") && (objc_msgSend(v87, "hmd_isForRemoteTransportOnSameAccount") & 1) == 0 && (objc_msgSend(v87, "hmd_isForRemoteUserAdministrator") & 1) != 0 || objc_msgSend(v87, "hmd_isForRemoteTransportOnSameAccount") && (objc_msgSend(v87, "hmd_isForRemoteGatewayCoder") & 1) == 0)
    {
      v38 = [(HMDAccessory *)self networkClientIdentifier];
      [v87 encodeObject:v38 forKey:@"HMDA.nci"];

      v39 = [(HMDAccessory *)self networkRouterUUID];
      v40 = [v39 UUIDString];
      [v87 encodeObject:v40 forKey:@"HMDA.nruuid"];

      [v87 encodeInteger:-[HMDAccessory networkClientLAN](self forKey:{"networkClientLAN"), @"HMDA.ncl"}];
      v41 = [(HMDAccessory *)self networkClientProfileFingerprint];
      v42 = [v41 UUIDString];
      [v87 encodeObject:v42 forKey:@"HMDA.ncfp"];

      v43 = [(HMDAccessory *)self wiFiUniquePreSharedKey];
      [v87 encodeObject:v43 forKey:@"HMDA.wifiUniquePSK"];

      v44 = [(HMDAccessory *)self initialManufacturer];
      [v87 encodeObject:v44 forKey:@"HMDA.initialManufacturer"];

      v45 = [(HMDAccessory *)self initialModel];
      [v87 encodeObject:v45 forKey:@"HMDA.initialModel"];

      v46 = [(HMDAccessory *)self initialCategoryIdentifier];
      [v87 encodeObject:v46 forKey:@"HMDA.initialCategoryIdentifier"];
    }

    v47 = v4 ^ 1 | v5;
    if (![v87 hmd_isForRemoteGatewayCoder] && ((v4 ^ 1 | v5) & 1) != 0)
    {
      v48 = [(HMDAccessory *)self targetNetworkProtectionMode];
      [v87 encodeInteger:v48 forKey:*MEMORY[0x277CCF088]];
      v49 = [(HMDAccessory *)self currentNetworkProtectionMode];
      [v87 encodeInteger:v49 forKey:*MEMORY[0x277CCE9F8]];
      v50 = [(HMDAccessory *)self wiFiCredentialType];
      [v87 encodeInteger:v50 forKey:*MEMORY[0x277CCF100]];
      if (v4)
      {
        v51 = [(HMDAccessory *)self networkProtectionGroupUUID];
        v52 = MEMORY[0x277CCEC68];
      }

      else
      {
        v51 = [(HMDAccessory *)self configuredNetworkProtectionGroupUUID];
        v52 = MEMORY[0x277CCE9B8];
      }

      v53 = [v51 UUIDString];
      [v87 encodeObject:v53 forKey:*v52];

      if ([(HMDAccessory *)self supportsSoftwareUpdate])
      {
        if (([v87 hmd_isForNonAdminSharedUser] & 1) == 0)
        {
          if (v4 && ![v26 isAdminUser])
          {
            goto LABEL_37;
          }

          v54 = [(HMDAccessory *)self softwareUpdate];
          [v87 encodeObject:v54 forKey:*MEMORY[0x277CCEEE8]];
        }
      }
    }

    if (!v4)
    {
      [v87 encodeConditionalObject:v26 forKey:@"home"];
      v67 = [(HMDAccessory *)self appData];
      [v87 encodeObject:v67 forKey:@"HM.appDataRepository"];

      if (([v87 hmd_isForRemoteGatewayCoder] & 1) == 0)
      {
        v68 = [(HMDAccessory *)self providedName];
        [v87 encodeObject:v68 forKey:@"accessoryProvidedName"];

        v69 = [(HMDAccessory *)self room];
        [v87 encodeConditionalObject:v69 forKey:@"accessoryRoom"];
      }

      v60 = [(HMDAccessory *)self identifier];
      [v87 encodeObject:v60 forKey:@"accessoryServerIdentifier"];
      goto LABEL_52;
    }

LABEL_37:
    [v87 encodeBool:-[HMDAccessory isReachableForXPCClients](self forKey:{"isReachableForXPCClients"), @"reachable"}];
    if (v5)
    {
      v55 = [(HMDAccessory *)self reachableTransports];
      [v87 encodeInteger:v55 forKey:*MEMORY[0x277CD1FF0]];
    }

    v56 = [(HMDAccessory *)self room];
    [v87 encodeObject:v56 forKey:@"accessoryRoom"];

    v57 = [(HMDAccessory *)self supportsNetworkProtection];
    [v87 encodeBool:v57 forKey:*MEMORY[0x277CCEC18]];
    v58 = [(HMDAccessory *)self currentNetworkProtectionMode]== 1;
    [v87 encodeBool:v58 forKey:*MEMORY[0x277CCEBB8]];
    v59 = [(HMDAccessory *)self vendorInfo];
    v60 = v59;
    if (v5)
    {
      v61 = [v59 appBundleID];
      [v87 encodeObject:v61 forKey:@"HM.bundleID"];

      v62 = [v60 appStoreID];
      [v87 encodeObject:v62 forKey:@"HM.storeID"];

      v63 = [(HMDAccessory *)self firmwareVersion];
      if (v63 && [(HMDAccessory *)self isPrimary])
      {
        v64 = [v60 firmwareVersion];
        v65 = [(HMDAccessory *)self firmwareVersion];
        v66 = [v64 isGreaterThanVersion:v65];
      }

      else
      {
        v66 = 0;
      }

      [v87 encodeBool:v66 forKey:@"HM.firmwareUpdateAvailable"];
      v74 = [(HMDAccessory *)self identifier];
      [v87 encodeObject:v74 forKey:@"accessoryServerIdentifier"];

      v75 = [(HMDAccessory *)self supportsWiFiReconfiguration];
      [v87 encodeBool:v75 forKey:*MEMORY[0x277CCF110]];
      v76 = [(HMDAccessory *)self supportsMultiUser];
      [v87 encodeBool:v76 forKey:*MEMORY[0x277CCEB98]];
      v77 = [(HMDAccessory *)self supportsHomeLevelLocationServiceSetting];
      [v87 encodeBool:v77 forKey:*MEMORY[0x277CCEB00]];
      v78 = [(HMDAccessory *)self supportsDoorbellChime];
      [v87 encodeBool:v78 forKey:*MEMORY[0x277CCEFA0]];
      v79 = [(HMDAccessory *)self supportsUserMediaSettings];
      [v87 encodeBool:v79 forKey:*MEMORY[0x277CCF038]];
      v80 = [(HMDAccessory *)self supportsAudioReturnChannel];
      [v87 encodeBool:v80 forKey:*MEMORY[0x277CCEF60]];
      v81 = [(HMDAccessory *)self supportsMusicAlarm];
      [v87 encodeBool:v81 forKey:*MEMORY[0x277CCEFE8]];
      v82 = [(HMDAccessory *)self supportsAnnounce];
      [v87 encodeBool:v82 forKey:*MEMORY[0x277CCEF50]];
      v72 = [(HMDAccessory *)self supportsMediaActions];
      v73 = MEMORY[0x277CCEFD0];
    }

    else
    {
      v70 = [v87 hmd_message];
      v71 = [v70 isEntitledForVendorAccessForAccessoryWithVendorInfo:v60];

      if (!v71)
      {
LABEL_51:
        v83 = [(HMDAccessory *)self appData];
        [v83 encodeForXPCTransportWithCoder:v87 key:@"HM.appData"];

        v84 = [(HMDAccessory *)self accessoryProfiles];
        v85 = [v84 copy];

        [(HMDAccessory *)self encodeProfiles:v85 forXPCCoder:v87];
LABEL_52:

        [v87 encodeBool:-[HMDAccessory isPrimary](self forKey:{"isPrimary"), @"isPrimary"}];
        if (v47)
        {
          v86 = [(HMDAccessory *)self pendingConfigurationIdentifier];
          [v87 encodeObject:v86 forKey:*MEMORY[0x277CCEC40]];
        }

        goto LABEL_55;
      }

      v72 = 1;
      v73 = MEMORY[0x277CCEB28];
    }

    [v87 encodeBool:v72 forKey:*v73];
    goto LABEL_51;
  }

LABEL_55:
}

- (void)handleIdentifyAccessoryMessage:(id)a3
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = a3;
  v5 = [v3 hmErrorWithCode:48];
  [v4 respondWithError:v5];
}

- (HMDAccessory)initWithCoder:(id)a3
{
  v113 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessory *)self init];
  if (!v5)
  {
LABEL_43:
    v19 = v5;
    goto LABEL_44;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryUUID"];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v6];
    if (v7)
    {
      v8 = v7;
      objc_storeStrong(&v5->_uuid, v7);
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"home"];
      objc_storeWeak(&v5->_home, v9);

      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryRoom"];
      room = v5->_room;
      v5->_room = v10;

      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.accessoryCategory"];
      category = v5->_category;
      v5->_category = v12;

      if (v5->_category)
      {
        v14 = [MEMORY[0x277CD1680] categoryIdentifierForCategory:?];
        categoryIdentifier = v5->_categoryIdentifier;
        v5->_categoryIdentifier = v14;
      }

      else
      {
        v20 = +[HMDHAPMetadata getSharedInstance];
        v21 = [v20 categoryForOther];
        v22 = [v21 identifier];
        v23 = v5->_categoryIdentifier;
        v5->_categoryIdentifier = v22;

        v24 = [MEMORY[0x277CD1680] categoryWithCategoryIdentifier:v5->_categoryIdentifier];
        categoryIdentifier = v5->_category;
        v5->_category = v24;
      }

      v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDAccessoryLastSeenDateCodingKey"];
      lastSeenDate = v5->_lastSeenDate;
      v5->_lastSeenDate = v25;

      v5->_lowBattery = [v4 decodeBoolForKey:@"HMDAccessoryLowBatteryCodingKey"];
      if ([v4 containsValueForKey:@"HMDAccessoryConfigurationNumberCodingKey"])
      {
        v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDAccessoryConfigurationNumberCodingKey"];
        v5->_configNumber = [v27 unsignedIntegerValue];
      }

      v28 = [(HMAccessoryCategory *)v5->_category categoryType];
      v29 = [v28 isEqualToString:*MEMORY[0x277CCE928]];

      if (v29)
      {
        v30 = MEMORY[0x277CD1680];
        v31 = objc_alloc(MEMORY[0x277CCAD78]);
        v32 = [v31 initWithUUIDString:*MEMORY[0x277CCE920]];
        v33 = [v30 categoryWithIdentifier:v32];
        v34 = v5->_category;
        v5->_category = v33;
      }

      v35 = [v4 containsValueForKey:@"accessoryConfiguredName"];
      v36 = objc_opt_class();
      if (v35)
      {
        v37 = @"accessoryConfiguredName";
      }

      else
      {
        v37 = @"accessoryName";
      }

      v38 = [v4 decodeObjectOfClass:v36 forKey:v37];
      v39 = [v38 hm_truncatedNameString];
      configuredName = v5->_configuredName;
      v5->_configuredName = v39;

      v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryProvidedName"];
      v42 = [v41 hm_truncatedNameString];
      providedName = v5->_providedName;
      v5->_providedName = v42;

      v5->_suspendCapable = [v4 decodeBoolForKey:*MEMORY[0x277CD1FA0]];
      LODWORD(v41) = [v4 containsValueForKey:@"accessoryServerIdentifier"];
      v44 = objc_opt_class();
      if (v41)
      {
        v45 = [v4 decodeObjectOfClass:v44 forKey:@"accessoryServerIdentifier"];
        identifier = v5->_identifier;
        v5->_identifier = v45;
      }

      else
      {
        identifier = [v4 decodeObjectOfClass:v44 forKey:@"accessoryIdentifier"];
        v47 = [MEMORY[0x277CFE9F8] serverIdentifierWithUniqueIdentifier:identifier];
        v48 = v5->_identifier;
        v5->_identifier = v47;
      }

      v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.manufacturer"];
      manufacturer = v5->_manufacturer;
      v5->_manufacturer = v49;

      v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.model"];
      model = v5->_model;
      v5->_model = v51;

      v53 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.serialNumber"];
      serialNumber = v5->_serialNumber;
      v5->_serialNumber = v53;

      v55 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDA.initialManufacturer"];
      initialManufacturer = v5->_initialManufacturer;
      v5->_initialManufacturer = v55;

      v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDA.initialModel"];
      initialModel = v5->_initialModel;
      v5->_initialModel = v57;

      v59 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDA.initialCategoryIdentifier"];
      initialCategoryIdentifier = v5->_initialCategoryIdentifier;
      v5->_initialCategoryIdentifier = v59;

      if ([v4 containsValueForKey:@"HMDA.productData2"])
      {
        v61 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDA.productData2"];
        productData = v5->_productData;
        v5->_productData = v61;
      }

      v63 = *MEMORY[0x277CCEA38];
      if ([v4 containsValueForKey:*MEMORY[0x277CCEA38]])
      {
        v64 = [v4 decodeObjectOfClass:objc_opt_class() forKey:v63];
        displayableFirmwareVersion = v5->_displayableFirmwareVersion;
        v5->_displayableFirmwareVersion = v64;
      }

      if ([v4 containsValueForKey:@"HM.firmwareVersionObject"])
      {
        v66 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.firmwareVersionObject"];
        firmwareVersion = v5->_firmwareVersion;
        v5->_firmwareVersion = v66;
      }

      else
      {
        firmwareVersion = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.firmwareVersion"];
        if (firmwareVersion)
        {
          v68 = [[HMDAccessoryVersion alloc] initWithString:firmwareVersion];
          v69 = v5->_firmwareVersion;
          v5->_firmwareVersion = v68;
        }
      }

      v70 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEEE8]];
      softwareUpdate = v5->_softwareUpdate;
      v5->_softwareUpdate = v70;

      v72 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.appDataRepository"];
      appData = v5->_appData;
      v5->_appData = v72;

      [(HMDApplicationData *)v5->_appData updateParentUUIDIfNil:v5->_uuid];
      v74 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDA.nci"];
      networkClientIdentifier = v5->_networkClientIdentifier;
      v5->_networkClientIdentifier = v74;

      v76 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDA.nruuid"];
      v77 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v76];
      networkRouterUUID = v5->_networkRouterUUID;
      v5->_networkRouterUUID = v77;

      v5->_networkClientLAN = [v4 decodeIntegerForKey:@"HMDA.ncl"];
      v79 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDA.ncfp"];
      v80 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v79];
      networkClientProfileFingerprint = v5->_networkClientProfileFingerprint;
      v5->_networkClientProfileFingerprint = v80;

      v82 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEBA0]];
      networkAccessViolation = v5->_networkAccessViolation;
      v5->_networkAccessViolation = v82;

      v84 = *MEMORY[0x277CCE9F8];
      if ([v4 containsValueForKey:*MEMORY[0x277CCE9F8]])
      {
        v5->_currentNetworkProtectionMode = [v4 decodeIntegerForKey:v84];
      }

      v85 = *MEMORY[0x277CCF100];
      if ([v4 containsValueForKey:*MEMORY[0x277CCF100]])
      {
        v5->_wiFiCredentialType = [v4 decodeIntegerForKey:v85];
      }

      v86 = MEMORY[0x277CBEB98];
      v108[0] = objc_opt_class();
      v108[1] = objc_opt_class();
      v87 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:2];
      v88 = [v86 setWithArray:v87];
      v89 = [v4 decodeObjectOfClasses:v88 forKey:*MEMORY[0x277CCE7E8]];
      allowedHosts = v5->_allowedHosts;
      v5->_allowedHosts = v89;

      v91 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDA.wifiUniquePSK"];
      wiFiUniquePreSharedKey = v5->_wiFiUniquePreSharedKey;
      v5->_wiFiUniquePreSharedKey = v91;

      v93 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCE9B8]];
      if (v93)
      {
        v94 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v93];
        configuredNetworkProtectionGroupUUID = v5->_configuredNetworkProtectionGroupUUID;
        v5->_configuredNetworkProtectionGroupUUID = v94;
      }

      v96 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDA.primaryProfileVersion"];
      if (v96)
      {
        v97 = [objc_alloc(MEMORY[0x277D0F940]) initWithString:v96];
        primaryProfileVersion = v5->_primaryProfileVersion;
        v5->_primaryProfileVersion = v97;
      }

      if ([v4 containsValueForKey:@"HM.sharedAdminAddedTimestamp"])
      {
        v99 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.sharedAdminAddedTimestamp"];
        sharedAdminAddedTimestamp = v5->_sharedAdminAddedTimestamp;
        v5->_sharedAdminAddedTimestamp = v99;
      }

      if ([v4 containsValueForKey:@"HM.pairingsAuditedTimestamp"])
      {
        v101 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.pairingsAuditedTimestamp"];
        pairingsAuditedTimestamp = v5->_pairingsAuditedTimestamp;
        v5->_pairingsAuditedTimestamp = v101;
      }

      if ([v4 containsValueForKey:@"HM.hostAccessory"])
      {
        v103 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.hostAccessory"];
        [v103 addHostedAccessory:v5];
        objc_storeWeak(&v5->_hostAccessory, v103);
      }

      v104 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEC40]];
      pendingConfigurationIdentifier = v5->_pendingConfigurationIdentifier;
      v5->_pendingConfigurationIdentifier = v104;

      goto LABEL_43;
    }
  }

  v16 = objc_autoreleasePoolPush();
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543618;
    v110 = v18;
    v111 = 2112;
    v112 = v6;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_FAULT, "%{public}@Cannot decode accessory with invalid uuid: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v19 = 0;
LABEL_44:

  v106 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x277D0F820]);
  v4 = [(HMDAccessory *)self messageTargetUUID];
  v5 = [v3 initWithTarget:v4];

  return v5;
}

- (id)logIdentifier
{
  if (isInternalBuild())
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [(HMDAccessory *)self uuid];
    v5 = [(HMDAccessory *)self name];
    v6 = [v3 stringWithFormat:@"%@/%@", v4, v5];
  }

  else
  {
    v4 = [(HMDAccessory *)self uuid];
    v6 = [v4 UUIDString];
  }

  return v6;
}

- (id)dumpNetworkState
{
  v2 = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  if (v4)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [(HMDAccessory *)v4 uuid];
    v8 = [v7 UUIDString];
    if ([(HMDAccessory *)v4 isIPSecureSessionEstablished])
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    if ([(HMDAccessory *)v4 isBLESecureSessionEstablished])
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v11 = [v6 stringWithFormat:@"uuid: %@ ipSession: %@ bleSession: %@ ", v8, v9, v10];

    [v5 setObject:v11 forKeyedSubscript:*MEMORY[0x277D0F170]];
  }

  return v5;
}

- (id)dumpSimpleState
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v15 = MEMORY[0x277CCACA8];
  v4 = [(HMDAccessory *)self name];
  v5 = [(HMDAccessory *)self uuid];
  v6 = [v5 UUIDString];
  v7 = "YES";
  if (![(HMDAccessory *)self isReachable]&& ![(HMDAccessory *)self isRemotelyReachable])
  {
    v7 = "NO";
  }

  if ([(HMDAccessory *)self isReachable])
  {
    v8 = "Yes";
  }

  else
  {
    v8 = "No";
  }

  if ([(HMDAccessory *)self isRemotelyReachable])
  {
    v9 = "Yes";
  }

  else
  {
    v9 = "No";
  }

  v10 = [(HMDAccessory *)self room];
  v11 = [v10 name];
  v12 = [(HMDAccessory *)self firmwareVersion];
  v13 = [v15 stringWithFormat:@"name: %@, uuid: %@, Accessory Reachable: %s (local: %s, remote: %s), room: %@, firmwareVersion: %@", v4, v6, v7, v8, v9, v11, v12];

  [v3 setObject:v13 forKeyedSubscript:*MEMORY[0x277D0F170]];

  return v3;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v102 = *MEMORY[0x277D85DE8];
  v84 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
  v4 = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v82 = v6;
  v7 = [(HMDAccessory *)v6 isSecureSessionEstablished];
  v85 = MEMORY[0x277CCAB68];
  v80 = [(HMDAccessory *)v4 name];
  v78 = [(HMDAccessory *)v4 providedName];
  obj = [(HMDAccessory *)v4 configuredName];
  v77 = [(HMDAccessory *)v4 uuid];
  v76 = [v77 UUIDString];
  v87 = [(HMDAccessory *)v4 identifier];
  v8 = "YES";
  if (![(HMDAccessory *)v4 isReachable]&& ![(HMDAccessory *)v4 isRemotelyReachable])
  {
    v8 = "NO";
  }

  v89 = v4;
  if ([(HMDAccessory *)v4 isReachable])
  {
    v9 = "Yes";
  }

  else
  {
    v9 = "No";
  }

  v74 = v9;
  if ([(HMDAccessory *)v4 isRemotelyReachable])
  {
    v10 = "Yes";
  }

  else
  {
    v10 = "No";
  }

  v73 = v10;
  if ([(HMDAccessory *)v4 isSuspendCapable])
  {
    v11 = "Yes";
  }

  else
  {
    v11 = "No";
  }

  if (v7)
  {
    v12 = "Yes";
  }

  else
  {
    v12 = "No";
  }

  v71 = v12;
  v72 = v11;
  v75 = [(HMDAccessory *)v4 room];
  v70 = [v75 name];
  v69 = [(HMDAccessory *)v4 firmwareVersion];
  v68 = [(HMDAccessory *)v4 primaryProfileVersion];
  v67 = [(HMDAccessory *)v4 productData];
  v13 = [(HMDAccessory *)v4 sharedAdminAddedTimestamp];
  v14 = [(HMDAccessory *)v4 pairingsAuditedTimestamp];
  v15 = [(HMDAccessory *)v4 pendingConfigurationIdentifier];
  v16 = [(HMDAccessory *)v4 urlString];
  v17 = [(HMDAccessory *)v4 lastSeenDate];
  [(HMDAccessory *)v4 isLowBattery];
  v18 = HMFBooleanToString();
  v86 = [v85 stringWithFormat:@"name: %@, providedName: %@, configuredName: %@, uuid: %@, identifier: %@, Accessory Reachable: %s (local: %s, remote: %s), suspendCapable: %s, HAP secure session: %s, room: %@, firmwareVersion: %@, primaryProfileVersion: %@, productData: %@, share admin added: %@, pairings audited: %@, pendingConfigurationIdentifier: %@, assistantIdentifier: %@, lastSeenDate: %@, lowBattery: %@", v80, v78, obj, v76, v87, v8, v74, v73, v72, v71, v70, v69, v68, v67, v13, v14, v15, v16, v17, v18];

  v19 = [(HMDAccessory *)v4 wiFiUniquePreSharedKey];
  if (v19)
  {
    if (isInternalBuild())
    {
      v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v19 encoding:1];
    }

    else
    {
      v20 = @"(present)";
    }
  }

  else
  {
    v20 = @"(null)";
  }

  v22 = a3;
  v21 = v84;
  v23 = v86;
  [(HMDAccessory *)v4 supportsWiFiReconfiguration];
  v24 = HMFBooleanToString();
  v25 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessory wiFiCredentialType](v4, "wiFiCredentialType")}];
  [v86 appendFormat:@", supportsWiFiReconfiguration: %@, wiFiCredentialType: %@, wiFiUniquePreSharedKey: %@", v24, v25, v20];

  [(HMDAccessory *)v4 supportsNetworkProtection];
  v26 = HMFBooleanToString();
  [v86 appendFormat:@", supportsNetworkProtection: %@", v26];

  v88 = v20;
  if ([(HMDAccessory *)v4 supportsNetworkProtection])
  {
    v81 = v19;
    v27 = [(HMDAccessory *)v4 networkClientIdentifier];
    v28 = [(HMDAccessory *)v4 networkRouterUUID];
    v29 = [v28 UUIDString];
    v30 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessory targetNetworkProtectionMode](v4, "targetNetworkProtectionMode")}];
    v31 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessory currentNetworkProtectionMode](v4, "currentNetworkProtectionMode")}];
    v32 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessory networkClientLAN](v4, "networkClientLAN")}];
    v33 = [(HMDAccessory *)v4 networkClientProfileFingerprint];
    [v86 appendFormat:@", networkClientIdentifier: %@, networkRouterUUID: %@, targetNetworkProtectionMode: %@, currentNetworkProtectionMode: %@, LAN: %@, Fingerprint: %@", v27, v29, v30, v31, v32, v33];

    v34 = [(HMDAccessory *)v4 allowedHosts];
    v35 = v34;
    if (v34)
    {
      v36 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v34, "count")}];
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v79 = v35;
      obja = v35;
      v37 = [obja countByEnumeratingWithState:&v96 objects:v101 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v97;
        do
        {
          for (i = 0; i != v38; ++i)
          {
            if (*v97 != v39)
            {
              objc_enumerationMutation(obja);
            }

            v41 = *(*(&v96 + 1) + 8 * i);
            v42 = MEMORY[0x277CCACA8];
            v43 = [v41 name];
            v44 = [v41 addresses];
            v45 = [v44 allObjects];
            v46 = [v45 componentsJoinedByString:{@", "}];
            v47 = [v42 stringWithFormat:@"Allow %@ (%@) purpose = 0x%lx", v43, v46, objc_msgSend(v41, "purpose")];
            [v36 addObject:v47];
          }

          v38 = [obja countByEnumeratingWithState:&v96 objects:v101 count:16];
        }

        while (v38);
      }

      v48 = [v36 copy];
      [v84 setObject:v48 forKeyedSubscript:@"Accessory Firewall WAN Rule"];

      v4 = v89;
      v23 = v86;
      v35 = v79;
    }

    v22 = a3;
    v21 = v84;
    v19 = v81;
    v20 = v88;
  }

  v49 = [(HMDAccessory *)v4 vendorInfo];

  if (v49)
  {
    v50 = [(HMDAccessory *)v4 vendorInfo];
    [v23 appendFormat:@", vendorInfo: %@", v50];
  }

  v51 = [v23 copy];
  [v21 setObject:v51 forKeyedSubscript:*MEMORY[0x277D0F170]];

  v52 = [(HMDAccessory *)v4 appData];
  v53 = [v52 dumpStateWithPrivacyLevel:v22];
  [v21 setObject:v53 forKeyedSubscript:*MEMORY[0x277D0F050]];

  v54 = [(HMDAccessory *)v4 category];

  if (v54)
  {
    v55 = [(HMDAccessory *)v4 category];
    v56 = [v55 dumpState];
    [v21 setObject:v56 forKeyedSubscript:*MEMORY[0x277D0F020]];
  }

  v57 = [(HMDAccessory *)v4 accessoryProfiles];
  if ([v57 count])
  {
    v58 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v57, "count")}];
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v59 = v57;
    v60 = [v59 countByEnumeratingWithState:&v92 objects:v100 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v93;
      do
      {
        for (j = 0; j != v61; ++j)
        {
          if (*v93 != v62)
          {
            objc_enumerationMutation(v59);
          }

          v64 = [*(*(&v92 + 1) + 8 * j) dumpStateWithPrivacyLevel:v22];
          [v58 addObject:v64];
        }

        v61 = [v59 countByEnumeratingWithState:&v92 objects:v100 count:16];
      }

      while (v61);
    }

    [v21 setObject:v58 forKeyedSubscript:*MEMORY[0x277D0F030]];
    v23 = v86;
    v20 = v88;
  }

  v65 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)transactionObjectRemoved:(id)a3 message:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
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
    [(HMDAccessory *)self appDataRemoved:v10 message:v7];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v18 = 138543874;
      v19 = v14;
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = objc_opt_class();
      v15 = v23;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectRemoved]", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v7 respondWithError:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  if (v12)
  {
    __transactionAccessoryUpdated(self, v12, v10);
    v13 = v9;
  }

  else
  {
    v13 = v9;
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

    if (v15)
    {
      [(HMDAccessory *)self appDataUpdated:v15 message:v10];
    }

    else
    {
      v13 = v13;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v13;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      if (v17)
      {
        v18 = [(HMDAccessory *)self softwareUpdate];
        if (v18)
        {
          if ([v17 propertyWasSet:@"softwareVersion"])
          {
            v19 = [v17 softwareVersion];

            if (v19)
            {
              v20 = [v17 softwareVersion];
              v21 = [v18 version];
              v22 = [v20 isEqualToVersion:v21];

              if (v22)
              {
                [(HMDAccessory *)self handleUpdatedSoftwareUpdateModel:v8 newValues:v17 message:v10];
              }

              else
              {
                [(HMDAccessory *)self handleAddedSoftwareUpdateModel:v17 message:v10];
              }
            }

            else
            {
              [(HMDAccessory *)self handleRemovedSoftwareUpdateModel:v17 message:v10];
            }
          }

          else
          {
            [(HMDAccessory *)self handleUpdatedSoftwareUpdateModel:v8 newValues:v17 message:v10];
          }
        }

        else
        {
          v28 = [v17 softwareVersion];

          if (v28)
          {
            [(HMDAccessory *)self handleAddedSoftwareUpdateModel:v17 message:v10];
          }
        }
      }

      else
      {
        v23 = objc_autoreleasePoolPush();
        v24 = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          v30 = 138543874;
          v31 = v26;
          v32 = 2112;
          v33 = v13;
          v34 = 2112;
          v35 = objc_opt_class();
          v27 = v35;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectUpdated]", &v30, 0x20u);
        }

        objc_autoreleasePoolPop(v23);
        v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [v10 respondWithError:v13];
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)__handleAuditPairings:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMDAccessory *)self isPrimary])
  {
    v5 = self;
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
      v8 = [HMDBackingStoreTransactionOptions optionsWithSource:1 destination:2 mustReplay:0 mustPush:0];
      v9 = [(HMDAccessory *)v5 home];
      v10 = [v9 backingStore];
      v11 = [v4 name];
      v12 = [v10 transaction:v11 options:v8];

      v13 = [HMDUserManagementOperation auditUserManagementOperationAccessory:v5 model:0];
      v14 = [(HMDAccessory *)v5 uuid];
      v15 = [v13 modelObjectWithChangeType:1 parentUUID:v14];

      if (v15)
      {
        [v12 add:v15 withMessage:v4];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __38__HMDAccessory___handleAuditPairings___block_invoke;
        v30[3] = &unk_2797359D8;
        v31 = v4;
        [v12 run:v30];
        v16 = v31;
      }

      else
      {
        v25 = objc_autoreleasePoolPush();
        v26 = v5;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543362;
          v33 = v28;
          _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to create audit model", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v25);
        v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
        [v4 respondWithError:v16];
      }
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = v5;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v33 = v24;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Cannot audit accessory", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      [v4 respondWithError:v8];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Can only audit pairings on a primary accessory", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v7];
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __38__HMDAccessory___handleAuditPairings___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) responseHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) responseHandler];
    (v4)[2](v4, v5, 0);
  }
}

- (void)__handleListPairings:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  if ([(HMDAccessory *)v5 conformsToProtocol:&unk_286699670])
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
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __37__HMDAccessory___handleListPairings___block_invoke;
    v14[3] = &unk_27972CCA0;
    v15 = v4;
    [(HMDAccessory *)v7 pairingsWithCompletionHandler:v14];
    v8 = v15;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = v5;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Does not support user management", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v8];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __37__HMDAccessory___handleListPairings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v24 = a1;
    v8 = [MEMORY[0x277CCAB68] string];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v25 = v5;
    obj = v5;
    v9 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          v14 = MEMORY[0x277CCACA8];
          v15 = [v13 identifier];
          v16 = [v13 publicKey];
          v17 = [v16 data];
          [v13 permissions];
          v18 = HMFBooleanToString();
          v19 = [v14 stringWithFormat:@"Identifier = %@, PublicKey = %@, Admin = %@\n", v15, v17, v18];
          [v8 appendString:v19];
        }

        v10 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v10);
    }

    v31 = @"kDescriptionKey";
    v20 = [v8 copy];
    v32 = v20;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];

    v6 = 0;
    v5 = v25;
    a1 = v24;
  }

  v21 = [*(a1 + 32) responseHandler];

  if (v21)
  {
    v22 = [*(a1 + 32) responseHandler];
    (v22)[2](v22, v6, v7);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)didEncounterError:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v8;
      v28 = 2112;
      v29 = v4;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Notifying clients of error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [(HMDAccessory *)v6 home];
    v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:0];
    v11 = v10;
    if (v9 && v10)
    {
      v12 = objc_alloc(MEMORY[0x277D0F820]);
      v13 = [v9 messageTargetUUID];
      v14 = [v12 initWithTarget:v13];

      v15 = MEMORY[0x277D0F848];
      v16 = *MEMORY[0x277CCFDA8];
      v17 = [(HMDAccessory *)v6 uuid];
      v18 = [v17 UUIDString];
      v24[1] = *MEMORY[0x277CCFEF0];
      v25[0] = v18;
      v25[1] = v11;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
      v20 = [v15 messageWithName:v16 destination:v14 payload:v19];

      v21 = [[HMDHomeManagerXPCMessageSendPolicy alloc] initWithEntitlements:0 options:-1 active:1];
      [v20 setSendPolicy:v21];

      v22 = [(HMDAccessory *)v6 msgDispatcher];
      [v22 sendMessage:v20 completionHandler:0];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)__handleUpdatePendingConfigurationIdentifierMessage:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 messagePayload];
    v22 = 138543618;
    v23 = v8;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling update pending configuration identifier message payload: %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [(HMDAccessory *)v6 home];
  if (v10)
  {
    v11 = [v4 stringForKey:*MEMORY[0x277CCEC40]];
    v12 = [(HMDAccessory *)v6 transactionWithObjectChangeType:2];
    [v12 setPendingConfigurationIdentifier:v11];
    v13 = [v10 backingStore];
    v14 = [v4 name];
    v15 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v16 = [v13 transaction:v14 options:v15];

    [v16 add:v12 withMessage:v4];
    [v16 run];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v6;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Home is nil", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [v4 respondWithError:v11];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)setPendingConfigurationIdentifier:(id)a3
{
  v6 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v4 = [v6 copy];
  pendingConfigurationIdentifier = self->_pendingConfigurationIdentifier;
  self->_pendingConfigurationIdentifier = v4;

  os_unfair_recursive_lock_unlock();
}

- (NSString)pendingConfigurationIdentifier
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_pendingConfigurationIdentifier;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setConfiguredNetworkProtectionGroupUUID:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  configuredNetworkProtectionGroupUUID = self->_configuredNetworkProtectionGroupUUID;
  self->_configuredNetworkProtectionGroupUUID = v4;

  os_unfair_recursive_lock_unlock();
}

- (NSUUID)configuredNetworkProtectionGroupUUID
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_configuredNetworkProtectionGroupUUID;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (NSUUID)defaultNetworkProtectionGroupUUID
{
  os_unfair_recursive_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_home);
  v4 = WeakRetained;
  defaultNetworkProtectionGroupUUID = self->_defaultNetworkProtectionGroupUUID;
  if (defaultNetworkProtectionGroupUUID)
  {
    v6 = 1;
  }

  else
  {
    v6 = WeakRetained == 0;
  }

  if (!v6)
  {
    if (self->_initialManufacturer && self->_initialCategoryIdentifier)
    {
      v7 = [HMDAccessoryNetworkProtectionGroupModel modelIDForHome:"modelIDForHome:manufacturer:category:" manufacturer:WeakRetained category:?];
      v8 = self->_defaultNetworkProtectionGroupUUID;
      self->_defaultNetworkProtectionGroupUUID = v7;

      defaultNetworkProtectionGroupUUID = self->_defaultNetworkProtectionGroupUUID;
    }

    else
    {
      defaultNetworkProtectionGroupUUID = 0;
    }
  }

  v9 = defaultNetworkProtectionGroupUUID;

  os_unfair_recursive_lock_unlock();

  return v9;
}

- (id)networkProtectionGroupUUID
{
  v3 = [(HMDAccessory *)self configuredNetworkProtectionGroupUUID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(HMDAccessory *)self defaultNetworkProtectionGroupUUID];
  }

  v6 = v5;

  return v6;
}

- (void)saveNetworkAccessViolation:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessory *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__HMDAccessory_saveNetworkAccessViolation___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __43__HMDAccessory_saveNetworkAccessViolation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) networkAccessViolation];
  v3 = *(a1 + 40);
  v4 = HMFEqualObjects();

  if ((v4 & 1) == 0)
  {
    v13 = [*(a1 + 32) transactionWithObjectChangeType:2];
    v5 = [*(a1 + 40) lastViolationDate];
    v6 = EpochIntervalFromDate(v5);
    [v13 setLastNetworkAccessViolationOccurrenceSince1970:v6];

    v7 = [*(a1 + 40) lastResetDate];
    v8 = EpochIntervalFromDate(v7);
    [v13 setLastNetworkAccessViolationResetSince1970:v8];

    v9 = [HMDBackingStoreTransactionOptions optionsWithSource:0 destination:2 mustReplay:0 mustPush:0];
    v10 = [*(a1 + 32) home];
    v11 = [v10 backingStore];
    v12 = [v11 transaction:@"SaveNetworkAccessViolation" options:v9];

    [v12 add:v13];
    [v12 run];
  }
}

- (void)_handleWiFiReconfiguration:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 numberForKey:*MEMORY[0x277CD09F8]];
  v6 = [v4 BOOLForKey:*MEMORY[0x277CD0A18]];
  if (!v5)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = 27;
LABEL_7:
    v9 = [v12 hmErrorWithCode:v13];
    [v4 respondWithError:v9];
    goto LABEL_12;
  }

  v7 = v6;
  if (([v5 integerValue] & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = 3;
    goto LABEL_7;
  }

  v8 = [(HMDAccessory *)self home];
  v9 = [v8 routerClientManager];

  if (v9)
  {
    v10 = [v5 integerValue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __43__HMDAccessory__handleWiFiReconfiguration___block_invoke;
    v19[3] = &unk_2797359D8;
    v20 = v4;
    [v9 migrateAccessory:self toCredentialType:v10 rotate:v7 completion:v19];
    v11 = v20;
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unable to perform Wi-Fi reconfiguration -- no Client Manager", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    [v4 respondWithError:v11];
  }

LABEL_12:
  v18 = *MEMORY[0x277D85DE8];
}

- (void)saveWiFiUniquePreSharedKey:(id)a3 credentialType:(int64_t)a4
{
  v6 = a3;
  v7 = [(HMDAccessory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMDAccessory_saveWiFiUniquePreSharedKey_credentialType___block_invoke;
  block[3] = &unk_279732F10;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(v7, block);
}

void __58__HMDAccessory_saveWiFiUniquePreSharedKey_credentialType___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) wiFiUniquePreSharedKey];
  v3 = *(a1 + 40);
  v4 = HMFEqualObjects();

  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 32) transactionWithObjectChangeType:2];
    [v5 setWiFiUniquePreSharedKey:*(a1 + 40)];
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
    [v5 setWiFiCredentialType:v6];

    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v5 wiFiCredentialType];
      v17 = 138543618;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Setting wiFiCredentialType to %@ in accessory transaction", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [HMDBackingStoreTransactionOptions optionsWithSource:0 destination:2 mustReplay:1 mustPush:0];
    v13 = [*(a1 + 32) home];
    v14 = [v13 backingStore];
    v15 = [v14 transaction:@"SaveWiFiUniquePreSharedKey" options:v12];

    [v15 add:v5];
    [v15 run];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setWiFiUniquePreSharedKey:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  wiFiUniquePreSharedKey = self->_wiFiUniquePreSharedKey;
  self->_wiFiUniquePreSharedKey = v4;

  os_unfair_recursive_lock_unlock();
}

- (NSData)wiFiUniquePreSharedKey
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_wiFiUniquePreSharedKey;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setWifiCredentialType:(int64_t)a3
{
  os_unfair_recursive_lock_lock_with_options();
  self->_wiFiCredentialType = a3;

  os_unfair_recursive_lock_unlock();
}

- (int64_t)wiFiCredentialType
{
  os_unfair_recursive_lock_lock_with_options();
  wiFiCredentialType = self->_wiFiCredentialType;
  os_unfair_recursive_lock_unlock();
  return wiFiCredentialType;
}

- (void)saveCurrentNetworkProtectionMode:(int64_t)a3 assignedLAN:(int64_t)a4 allowedWANHosts:(id)a5 profileFingerprint:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = [(HMDAccessory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__HMDAccessory_saveCurrentNetworkProtectionMode_assignedLAN_allowedWANHosts_profileFingerprint___block_invoke;
  block[3] = &unk_2797262F8;
  block[4] = self;
  v16 = v10;
  v18 = a3;
  v19 = a4;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  dispatch_async(v12, block);
}

void __96__HMDAccessory_saveCurrentNetworkProtectionMode_assignedLAN_allowedWANHosts_profileFingerprint___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allowedHosts];
  if (*(a1 + 40))
  {
    v3 = *(a1 + 40);
  }

  v4 = HMFEqualObjects();

  if (!v4 || [*(a1 + 32) currentNetworkProtectionMode] != *(a1 + 56) || objc_msgSend(*(a1 + 32), "networkClientLAN") != *(a1 + 64) || (objc_msgSend(*(a1 + 32), "networkClientProfileFingerprint"), v5 = objc_claimAutoreleasedReturnValue(), v6 = *(a1 + 48), v7 = HMFEqualObjects(), v5, (v7 & 1) == 0))
  {
    v17 = [*(a1 + 32) transactionWithObjectChangeType:2];
    v8 = [*(a1 + 40) na_map:&__block_literal_global_319];
    if ([v8 count])
    {
      v9 = [v8 copy];
      [v17 setAppliedFirewallWANRules:v9];
    }

    else
    {
      [v17 setAppliedFirewallWANRules:0];
    }

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
    [v17 setCurrentNetworkProtectionMode:v10];

    v11 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 64)];
    [v17 setNetworkClientLAN:v11];

    v12 = [*(a1 + 48) UUIDString];
    [v17 setNetworkClientProfileFingerprint:v12];

    v13 = [*(a1 + 32) home];
    v14 = [v13 backingStore];
    v15 = +[HMDBackingStoreTransactionOptions defaultResidenceOptions];
    v16 = [v14 transaction:@"SaveCurrentNetworkProtectionModeAndFirewallWANRules" options:v15];

    [v16 add:v17];
    [v16 run];
  }
}

- (void)setNetworkClientProfileFingerprint:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  networkClientProfileFingerprint = self->_networkClientProfileFingerprint;
  self->_networkClientProfileFingerprint = v4;

  os_unfair_recursive_lock_unlock();
}

- (NSUUID)networkClientProfileFingerprint
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_networkClientProfileFingerprint;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setNetworkClientLAN:(int64_t)a3
{
  os_unfair_recursive_lock_lock_with_options();
  self->_networkClientLAN = a3;

  os_unfair_recursive_lock_unlock();
}

- (int64_t)networkClientLAN
{
  os_unfair_recursive_lock_lock_with_options();
  networkClientLAN = self->_networkClientLAN;
  os_unfair_recursive_lock_unlock();
  return networkClientLAN;
}

- (void)setCurrentNetworkProtectionMode:(int64_t)a3
{
  os_unfair_recursive_lock_lock_with_options();
  self->_currentNetworkProtectionMode = a3;

  os_unfair_recursive_lock_unlock();
}

- (int64_t)currentNetworkProtectionMode
{
  os_unfair_recursive_lock_lock_with_options();
  currentNetworkProtectionMode = self->_currentNetworkProtectionMode;
  os_unfair_recursive_lock_unlock();
  return currentNetworkProtectionMode;
}

- (int64_t)targetNetworkProtectionMode
{
  v3 = [(HMDAccessory *)self home];
  v4 = [v3 networkProtectionGroupRegistry];
  v5 = [(HMDAccessory *)self networkProtectionGroupUUID];
  v6 = [v4 targetProtectionModeForGroupWithUUID:v5];

  return v6;
}

- (void)saveNetworkClientIdentifier:(id)a3 networkRouterUUID:(id)a4 clearProfileFingerprint:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HMDAccessory *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86__HMDAccessory_saveNetworkClientIdentifier_networkRouterUUID_clearProfileFingerprint___block_invoke;
  v13[3] = &unk_279731C38;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

void __86__HMDAccessory_saveNetworkClientIdentifier_networkRouterUUID_clearProfileFingerprint___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) networkClientIdentifier];
  v3 = *(a1 + 40);
  v4 = HMFEqualObjects();

  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [*(a1 + 32) networkRouterUUID];
  v6 = *(a1 + 48);
  v7 = HMFEqualObjects();

  if (!v7 || *(a1 + 56) == 1 && ([*(a1 + 32) networkClientProfileFingerprint], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
LABEL_5:
    v14 = [*(a1 + 32) transactionWithObjectChangeType:2];
    [v14 setNetworkClientIdentifier:*(a1 + 40)];
    v9 = [*(a1 + 48) UUIDString];
    [v14 setNetworkRouterUUID:v9];

    if (*(a1 + 56) == 1)
    {
      [v14 setNetworkClientProfileFingerprint:0];
    }

    v10 = [HMDBackingStoreTransactionOptions optionsWithSource:0 destination:2 mustReplay:1 mustPush:0];
    v11 = [*(a1 + 32) home];
    v12 = [v11 backingStore];
    v13 = [v12 transaction:@"SaveNetworkClientIdentifier" options:v10];

    [v13 add:v14];
    [v13 run];
  }
}

- (void)setNetworkRouterUUID:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  networkRouterUUID = self->_networkRouterUUID;
  self->_networkRouterUUID = v4;

  os_unfair_recursive_lock_unlock();
}

- (NSUUID)networkRouterUUID
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_networkRouterUUID;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setNetworkClientIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  networkClientIdentifier = self->_networkClientIdentifier;
  self->_networkClientIdentifier = v4;

  os_unfair_recursive_lock_unlock();
}

- (NSNumber)networkClientIdentifier
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_networkClientIdentifier;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setPrimaryProfileVersion:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  primaryProfileVersion = self->_primaryProfileVersion;
  self->_primaryProfileVersion = v4;

  os_unfair_recursive_lock_unlock();
}

- (HMFVersion)primaryProfileVersion
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_primaryProfileVersion;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setAccessoryProfiles:(id)a3
{
  v6 = a3;
  os_unfair_recursive_lock_lock_with_options();
  if (v6)
  {
    v4 = [MEMORY[0x277CBEB58] setWithArray:?];
    accessoryProfiles = self->_accessoryProfiles;
    self->_accessoryProfiles = v4;
  }

  else
  {
    [(NSMutableSet *)self->_accessoryProfiles removeAllObjects];
  }

  os_unfair_recursive_lock_unlock();
}

- (void)removeAccessoryProfile:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_recursive_lock_lock_with_options();
    [(NSMutableSet *)self->_accessoryProfiles removeObject:v5];
    os_unfair_recursive_lock_unlock();
    v4 = v5;
  }
}

- (void)handleAddedSiriEndpointProfile:(id)a3
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
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling added siri endpoint profile: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleAddedMediaProfile:(id)a3
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
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling added media profile: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleAddedAccessoryProfile:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    [(HMDAccessory *)self handleAddedMediaProfile:v6];
  }

  v9 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    [(HMDAccessory *)self handleAddedSiriEndpointProfile:v8];
  }

  logAndPostNotification(@"HMDAccessoryProfileAddedNotification", self, 0);
}

- (void)addAccessoryProfile:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    os_unfair_recursive_lock_lock_with_options();
    [(NSMutableSet *)self->_accessoryProfiles addObject:v7];
    os_unfair_recursive_lock_unlock();
    v5 = [(HMDAccessory *)self msgDispatcher];

    if (v5)
    {
      v6 = [(HMDAccessory *)self msgDispatcher];
      [v7 configureWithMessageDispatcher:v6 configurationTracker:0];
    }

    [(HMDAccessory *)self handleAddedAccessoryProfile:v7];
    v4 = v7;
  }
}

- (NSArray)accessoryProfiles
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(NSMutableSet *)self->_accessoryProfiles allObjects];
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)appDataRemoved:(id)a3 message:(id)a4
{
  v5 = a4;
  [(HMDAccessory *)self setAppData:0];
  v6 = [v5 transactionResult];
  [v6 markChanged];
  [v5 respondWithPayload:0];
}

- (void)appDataUpdated:(id)a3 message:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessory *)self appData];

  if (v8)
  {
    v9 = [(HMDAccessory *)self appData];
    [v9 updateWithModel:v6];
  }

  else
  {
    v10 = [HMDApplicationData alloc];
    v11 = [v6 appDataDictionary];
    v12 = [(HMDAccessory *)self uuid];
    v13 = [(HMDApplicationData *)v10 initWithDictionary:v11 parentUUID:v12];
    [(HMDAccessory *)self setAppData:v13];

    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [v6 appDataDictionary];
      v21 = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Updating the application data : %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v19 = [v7 transactionResult];
  [v19 markChanged];
  [v7 respondWithPayload:0];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)__handleSetAppData:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessory *)self home];
  if (v5)
  {
    v24 = 0;
    v6 = [v4 appDataDictionaryWithError:&v24];
    v7 = v24;
    if (v6)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543618;
        v26 = v11;
        v27 = 2112;
        v28 = v6;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Going to update appData for accessory to: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v12 = [(HMDAccessory *)v9 appData];
      v13 = [(HMDAccessory *)v9 uuid];
      v14 = [HMDApplicationDataModel modelWithAppDataPayload:v6 existingAppData:v12 parentUUID:v13];

      if (v14)
      {
        v15 = [v5 backingStore];
        v16 = [v4 name];
        v17 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
        v18 = [v15 transaction:v16 options:v17];

        [v18 add:v14 withMessage:v4];
        [v18 run];
      }

      else
      {
        [v4 respondWithSuccess];
      }
    }

    else
    {
      [v4 respondWithError:v7];
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v22;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Attempted to set appData on an accessory that is no longer part of a home", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:12];
    [v4 respondWithError:v7];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)setAppData:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  appData = self->_appData;
  self->_appData = v4;

  os_unfair_recursive_lock_unlock();
}

- (HMDApplicationData)appData
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_appData;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)_configNumberUpdated
{
  v2 = [(HMDAccessory *)self workQueue];
  dispatch_assert_queue_V2(v2);
}

- (void)setConfigNumber:(unint64_t)a3
{
  v22 = *MEMORY[0x277D85DE8];
  os_unfair_recursive_lock_lock_with_options();
  configNumber = self->_configNumber;
  self->_configNumber = a3;
  v7 = configNumber != a3 && configNumber != 0;
  os_unfair_recursive_lock_unlock();
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v17 = v11;
    v18 = 1024;
    v19 = configNumber;
    v20 = 1024;
    v21 = a3;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@c# was set %u -> %u", buf, 0x18u);
  }

  objc_autoreleasePoolPop(v8);
  if (v7)
  {
    v12 = [(HMDAccessory *)v9 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__HMDAccessory_setConfigNumber___block_invoke;
    block[3] = &unk_279735D00;
    block[4] = v9;
    dispatch_async(v12, block);

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 postNotificationName:@"HMDAccessoryConfigNumberUpdatedNotification" object:v9];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (unint64_t)configNumber
{
  os_unfair_recursive_lock_lock_with_options();
  configNumber = self->_configNumber;
  os_unfair_recursive_lock_unlock();
  return configNumber;
}

- (id)runtimeState
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"kAccessoryIsReachableKey";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessory isReachableForXPCClients](self, "isReachableForXPCClients")}];
  v9[0] = v3;
  v8[1] = *MEMORY[0x277CCEC80];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessory reachableTransports](self, "reachableTransports")}];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)remoteAccessEnabled:(BOOL)a3
{
  v5 = [(HMDAccessory *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__HMDAccessory_remoteAccessEnabled___block_invoke;
  v6[3] = &unk_279735D28;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

- (void)_notifyConnectivityChangedWithRemoteAccessChanged:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [(HMDAccessory *)self home];
  if (([v5 isResidentSupported] & 1) != 0 || a3 || !-[HMDAccessory isRemoteAccessEnabled](self, "isRemoteAccessEnabled"))
  {
    [v5 notifyClientsOfReachabilityUpdateForAccessory:self];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Ignoring non-remote reachability change while remote access is enabled", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)messageSendPolicy
{
  v2 = [[HMDHomeManagerXPCMessageSendPolicy alloc] initWithEntitlements:1 options:1];

  return v2;
}

- (void)setConnected:(BOOL)a3
{
  os_unfair_recursive_lock_lock_with_options();
  self->_connected = a3;

  os_unfair_recursive_lock_unlock();
}

- (BOOL)hasActiveSession
{
  os_unfair_recursive_lock_lock_with_options();
  connected = self->_connected;
  os_unfair_recursive_lock_unlock();
  return connected;
}

- (int64_t)reachableTransports
{
  v3 = [(HMDAccessory *)self home];
  v4 = [v3 isResidentSupported];

  if (v4)
  {
    v5 = [(HMDAccessory *)self isRemotelyReachable];
  }

  else
  {
    v5 = [(HMDAccessory *)self isRemoteAccessEnabled];
  }

  if (v5)
  {
    return 8;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isReachableForXPCClients
{
  v3 = [(HMDAccessory *)self home];
  if ([v3 isResidentSupported])
  {
  }

  else
  {
    v4 = [(HMDAccessory *)self isRemoteAccessEnabled];

    if (v4)
    {
      return 1;
    }
  }

  if ([(HMDAccessory *)self isReachable])
  {
    return 1;
  }

  return [(HMDAccessory *)self isRemotelyReachable];
}

- (BOOL)isLowBattery
{
  os_unfair_recursive_lock_lock_with_options();
  lowBattery = self->_lowBattery;
  os_unfair_recursive_lock_unlock();
  return lowBattery;
}

- (void)setLowBattery:(BOOL)a3
{
  os_unfair_recursive_lock_lock_with_options();
  self->_lowBattery = a3;

  os_unfair_recursive_lock_unlock();
}

- (BOOL)isLastSeenDateValid
{
  os_unfair_recursive_lock_lock_with_options();
  lastSeenDate = self->_lastSeenDate;
  if (lastSeenDate)
  {
    v4 = [MEMORY[0x277CBEAA8] distantPast];
    if ([lastSeenDate isEqual:v4])
    {
      LOBYTE(lastSeenDate) = 0;
    }

    else
    {
      v5 = self->_lastSeenDate;
      lastSeenDate = [MEMORY[0x277CBEAA8] distantFuture];
      LOBYTE(v5) = [(NSDate *)v5 isEqual:lastSeenDate];

      LOBYTE(lastSeenDate) = v5 ^ 1;
    }
  }

  os_unfair_recursive_lock_unlock();
  return lastSeenDate;
}

- (NSDate)lastSeenDate
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_lastSeenDate;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setLastSeenDate:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  lastSeenDate = self->_lastSeenDate;
  self->_lastSeenDate = v4;

  os_unfair_recursive_lock_unlock();
}

- (void)setRemotelyReachable:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_recursive_lock_lock_with_options();
  if (self->_remotelyReachable == v3)
  {
    v5 = *MEMORY[0x277D85DE8];

    os_unfair_recursive_lock_unlock();
  }

  else
  {
    self->_remotelyReachable = v3;
    reachable = self->_reachable;
    os_unfair_recursive_lock_unlock();
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v11 = HMFBooleanToString();
      v17 = 138543618;
      v18 = v10;
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Updated isRemotelyReachable to %{public}@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [(HMDAccessory *)v8 home];

    if (v12 && !reachable)
    {
      [(HMDAccessory *)v8 _notifyConnectivityChangedWithRemoteAccessChanged:0];
    }

    v13 = [(HMDAccessory *)v8 notificationCenter];
    v14 = v13;
    if (v3)
    {
      v15 = @"HMDAccessoryIsRemotelyReachableNotification";
    }

    else
    {
      v15 = @"HMDAccessoryIsNotRemotelyReachableNotification";
    }

    logAndPostNotificationWithNotificationCenter(v13, v15, v8, 0);

    v16 = *MEMORY[0x277D85DE8];
  }
}

- (BOOL)isRemotelyReachable
{
  os_unfair_recursive_lock_lock_with_options();
  remotelyReachable = self->_remotelyReachable;
  os_unfair_recursive_lock_unlock();
  return remotelyReachable;
}

- (BOOL)_getLastKnownLowBatteryStatus
{
  v3 = [(HMDAccessory *)self isLowBattery];
  v4 = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [(HMDAccessory *)v6 findCharacteristicType:*MEMORY[0x277CCFAA8] forServiceType:*MEMORY[0x277CD0DE8]];

  v8 = [v7 value];

  if (v8)
  {
    v9 = [v7 value];
    v3 = [v9 BOOLValue];
  }

  return v3;
}

- (void)_updateBridgedAccessoriesWithLastSeenDate:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessory *)self home];
  if (v5)
  {
    v6 = self;
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

    v29 = v8;
    if (v8 && (-[HMDAccessory identifiersForBridgedAccessories](v8, "identifiersForBridgedAccessories"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 count], v9, v10))
    {
      v11 = [(HMDAccessory *)v8 identifiersForBridgedAccessories];
      v12 = [v11 copy];
    }

    else
    {
      v12 = 0;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v34 objects:v44 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v35;
      v30 = v4;
      v31 = v5;
      do
      {
        v17 = 0;
        v32 = v15;
        do
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [v5 accessoryWithUUID:*(*(&v34 + 1) + 8 * v17)];
          v19 = v18;
          if (v18 && ([v18 isLastSeenDateValid] & 1) == 0)
          {
            context = objc_autoreleasePoolPush();
            v20 = v6;
            v21 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v22 = HMFGetLogIdentifier();
              v23 = [v19 lastSeenDate];
              [v19 uuid];
              v24 = v16;
              v25 = v13;
              v27 = v26 = v6;
              *buf = 138543874;
              v39 = v22;
              v40 = 2112;
              v41 = v23;
              v42 = 2112;
              v43 = v27;
              _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Bridge became unreachable. Updated last seen date to %@ for bridged accessory %@", buf, 0x20u);

              v6 = v26;
              v13 = v25;
              v16 = v24;
              v15 = v32;

              v4 = v30;
              v5 = v31;
            }

            objc_autoreleasePoolPop(context);
            [v19 setLastSeenDate:v4];
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v34 objects:v44 count:16];
      }

      while (v15);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)isReachable
{
  os_unfair_recursive_lock_lock_with_options();
  reachable = self->_reachable;
  os_unfair_recursive_lock_unlock();
  return reachable;
}

- (NSDate)timeBecameReachable
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_timeBecameReachable;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setTimeBecameReachable:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  timeBecameReachable = self->_timeBecameReachable;
  self->_timeBecameReachable = v4;

  os_unfair_recursive_lock_unlock();
}

- (NSDate)timeBecameUnreachable
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_timeBecameUnreachable;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setTimeBecameUnreachable:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  timeBecameUnreachable = self->_timeBecameUnreachable;
  self->_timeBecameUnreachable = v4;

  os_unfair_recursive_lock_unlock();
}

- (void)setreachabilityPingNotificationEnabled:(BOOL)a3
{
  os_unfair_recursive_lock_lock_with_options();
  self->_reachabilityPingNotificationEnabled = a3;

  os_unfair_recursive_lock_unlock();
}

- (BOOL)reachabilityPingNotificationEnabled
{
  os_unfair_recursive_lock_lock_with_options();
  reachabilityPingNotificationEnabled = self->_reachabilityPingNotificationEnabled;
  os_unfair_recursive_lock_unlock();
  return reachabilityPingNotificationEnabled;
}

- (void)setReachabilityPingEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(HMDAccessory *)self supportsUnreachablePing];
  os_unfair_recursive_lock_lock_with_options();
  self->_reachabilityPingEnabled = v3;
  v6 = self->_reachable || v5;
  os_unfair_recursive_lock_unlock();
  if (v6 && v3)
  {

    [(HMDAccessory *)self startReachabilityCheck];
  }

  else
  {

    [(HMDAccessory *)self stopReachabilityCheck];
  }
}

- (BOOL)reachabilityPingEnabled
{
  os_unfair_recursive_lock_lock_with_options();
  reachabilityPingEnabled = self->_reachabilityPingEnabled;
  os_unfair_recursive_lock_unlock();
  return reachabilityPingEnabled;
}

- (void)setSuspendedCapable:(BOOL)a3
{
  os_unfair_recursive_lock_lock_with_options();
  self->_suspendCapable = a3;

  os_unfair_recursive_lock_unlock();
}

- (BOOL)isSuspendCapable
{
  os_unfair_recursive_lock_lock_with_options();
  suspendCapable = self->_suspendCapable;
  os_unfair_recursive_lock_unlock();
  return suspendCapable;
}

- (void)setPairingsAuditedTimestamp:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  pairingsAuditedTimestamp = self->_pairingsAuditedTimestamp;
  self->_pairingsAuditedTimestamp = v4;

  os_unfair_recursive_lock_unlock();
}

- (HMDUserManagementOperationTimestamp)pairingsAuditedTimestamp
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_pairingsAuditedTimestamp;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setSharedAdminAddedTimestamp:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  sharedAdminAddedTimestamp = self->_sharedAdminAddedTimestamp;
  self->_sharedAdminAddedTimestamp = v4;

  os_unfair_recursive_lock_unlock();
}

- (HMDUserManagementOperationTimestamp)sharedAdminAddedTimestamp
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_sharedAdminAddedTimestamp;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)notifyAccessoryNameChanged:(BOOL)a3
{
  v3 = a3;
  v38 = *MEMORY[0x277D85DE8];
  v5 = [(HMDAccessory *)self name];
  v6 = [(HMDAccessory *)self home];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5 && v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v11;
      v36 = 2112;
      v37 = v5;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Name changed to %@, notifying clients", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = MEMORY[0x277D0F818];
    v13 = *MEMORY[0x277CD1FC0];
    v14 = [(HMDAccessory *)v8 messageDestination];
    v15 = *MEMORY[0x277CD1FC8];
    v33[0] = v5;
    v16 = *MEMORY[0x277CD0640];
    v32[0] = v15;
    v32[1] = v16;
    v17 = [v6 uuid];
    v18 = [v17 UUIDString];
    v33[1] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
    v20 = [v12 messageWithName:v13 destination:v14 payload:v19];

    v21 = [(HMDAccessory *)v8 msgDispatcher];
    [v21 sendMessage:v20 completionHandler:0];

    v22 = [(HMDAccessory *)v8 workQueue];
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __43__HMDAccessory_notifyAccessoryNameChanged___block_invoke;
    v29 = &unk_2797359B0;
    v30 = v8;
    v31 = v5;
    dispatch_async(v22, &v26);

    if (v3)
    {
      v23 = [v6 homeManager];
      [v23 assistantSyncDataChanged:v13];
    }

    [(HMDAccessory *)v8 postAccessoryRenamedNotification:v26];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v24;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Name or home is nil, cannot send name changed notification", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)updateMediaSession:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessory *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__HMDAccessory_updateMediaSession___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __35__HMDAccessory_updateMediaSession___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) accessoryProfiles];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
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

        [v9 setMediaSession:*(a1 + 40)];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateVendorInfo
{
  v5 = 0;
  v3 = [(HMDAccessory *)self findVendorInfoAndManufacturerKnown:&v5];
  os_unfair_recursive_lock_lock_with_options();
  vendorInfo = self->_vendorInfo;
  self->_vendorInfo = v3;

  self->_isKnownManufacturer = v5;
  os_unfair_recursive_lock_unlock();
}

- (void)setIsKnownManufacturer:(BOOL)a3
{
  os_unfair_recursive_lock_lock_with_options();
  self->_isKnownManufacturer = a3;

  os_unfair_recursive_lock_unlock();
}

- (BOOL)isKnownManufacturer
{
  os_unfair_recursive_lock_lock_with_options();
  isKnownManufacturer = self->_isKnownManufacturer;
  os_unfair_recursive_lock_unlock();
  return isKnownManufacturer;
}

- (void)setVendorInfo:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  vendorInfo = self->_vendorInfo;
  self->_vendorInfo = v4;

  os_unfair_recursive_lock_unlock();
}

- (HMDVendorModelEntry)vendorInfo
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_vendorInfo;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (id)findVendorInfoAndManufacturerKnown:(BOOL *)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = +[HMDVendorDataManager sharedVendorDataManager];
  v6 = [(HMDAccessory *)self productData];
  if (!v6 || ([v5 vendorModelEntryForProductData:v6], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = [(HMDAccessory *)self manufacturer];
    v10 = [(HMDAccessory *)self model];
    v11 = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v13 && ([(HMDAccessory *)v13 bridge], (v14 = objc_claimAutoreleasedReturnValue()) != 0) && (v15 = v14, v16 = [(HMDAccessory *)v11 isPrimary], v15, !v16))
    {
      v21 = [(HMDAccessory *)v13 bridge];
      v18 = [v21 manufacturer];

      v17 = [v21 model];

      v22 = objc_autoreleasePoolPush();
      v23 = v11;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        HMFGetLogIdentifier();
        v25 = v29 = v21;
        [(HMDAccessory *)v23 uuid];
        v26 = v30 = v22;
        *buf = 138544130;
        v32 = v25;
        v33 = 2114;
        v34 = v26;
        v35 = 2114;
        v36 = v18;
        v37 = 2114;
        v38 = v17;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Overriding vendor info for %{public}@ with Manufacturer: %{public}@ Model: %{public}@", buf, 0x2Au);

        v22 = v30;
        v21 = v29;
      }

      objc_autoreleasePoolPop(v22);
      if (v18)
      {
LABEL_12:
        if (v17)
        {
          v19 = [v5 vendorModelEntryForManufacturer:v18 model:v17];
          v8 = v19;
          if (v19)
          {
            if (a3)
            {
              *a3 = 1;
            }

            v20 = v19;
          }

          else if (a3)
          {
            *a3 = [v5 databaseContainsManufacturer:v18];
          }

          goto LABEL_28;
        }

        if (a3)
        {
          v8 = 0;
          *a3 = [v5 databaseContainsManufacturer:v18];
LABEL_28:

          goto LABEL_29;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v17 = v10;
      v18 = v9;
      if (v9)
      {
        goto LABEL_12;
      }
    }

    if (a3)
    {
      v8 = 0;
      *a3 = 0;
      goto LABEL_28;
    }

LABEL_24:
    v8 = 0;
    goto LABEL_28;
  }

  v8 = v7;
  if (a3)
  {
    *a3 = 1;
  }

LABEL_29:

  v27 = *MEMORY[0x277D85DE8];

  return v8;
}

- (NSString)productGroup
{
  v3 = objc_opt_class();
  v4 = [(HMDAccessory *)self productData];
  v8 = 0;
  [v3 splitProductDataIntoProductGroupAndProductNumber:v4 productGroup:&v8 productNumber:0];
  v5 = v8;
  v6 = v8;

  return v5;
}

- (void)setProductData:(id)a3
{
  v6 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v4 = [v6 copy];
  productData = self->_productData;
  self->_productData = v4;

  os_unfair_recursive_lock_unlock();
}

- (NSString)productData
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_productData;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setSerialNumber:(id)a3
{
  v6 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v4 = [v6 copy];
  serialNumber = self->_serialNumber;
  self->_serialNumber = v4;

  os_unfair_recursive_lock_unlock();
}

- (NSString)serialNumber
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_serialNumber;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setDisplayableFirmwareVersion:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 hm_truncatedDisplayableVersionString];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [(HMDAccessory *)v7 displayableFirmwareVersion];
    v13 = 138543874;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating displayable firmware version string from %@ to %@.", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  os_unfair_recursive_lock_lock_with_options();
  displayableFirmwareVersion = v7->_displayableFirmwareVersion;
  v7->_displayableFirmwareVersion = v5;

  os_unfair_recursive_lock_unlock();
  v12 = *MEMORY[0x277D85DE8];
}

- (NSString)displayableFirmwareVersion
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_displayableFirmwareVersion;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setFirmwareVersion:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMDAccessory *)v6 firmwareVersion];
    v12 = 138543874;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating firmware version from %@ to %@.", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_recursive_lock_lock_with_options();
  firmwareVersion = v6->_firmwareVersion;
  v6->_firmwareVersion = v4;

  os_unfair_recursive_lock_unlock();
  v11 = *MEMORY[0x277D85DE8];
}

- (HMDAccessoryVersion)firmwareVersion
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_firmwareVersion;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setInitialManufacturer:(id)a3
{
  v6 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v4 = [v6 copy];
  initialManufacturer = self->_initialManufacturer;
  self->_initialManufacturer = v4;

  os_unfair_recursive_lock_unlock();
}

- (NSString)initialManufacturer
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_initialManufacturer;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setManufacturer:(id)a3
{
  v6 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v4 = [v6 copy];
  manufacturer = self->_manufacturer;
  self->_manufacturer = v4;

  os_unfair_recursive_lock_unlock();
}

- (NSString)manufacturer
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_manufacturer;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setInitialModel:(id)a3
{
  v6 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v4 = [v6 copy];
  initialModel = self->_initialModel;
  self->_initialModel = v4;

  os_unfair_recursive_lock_unlock();
}

- (NSString)initialModel
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_initialModel;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setModel:(id)a3
{
  v6 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v4 = [v6 copy];
  model = self->_model;
  self->_model = v4;

  os_unfair_recursive_lock_unlock();
}

- (NSString)model
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_model;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)_handleRenameMessage:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 stringForKey:*MEMORY[0x277CD1FC8]];
  v6 = [v4 BOOLForKey:@"kAccessoryNameResetKey"];
  if (v6 != ([v5 length] == 0))
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = 3;
LABEL_7:
    v14 = [v7 hmErrorWithCode:v8];
    [v4 respondWithError:v14];
    goto LABEL_8;
  }

  v9 = HMMaxLengthForNaming();
  if ([v5 length] > v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@New name is longer than the pre-defined max length", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v7 = MEMORY[0x277CCA9B8];
    v8 = 46;
    goto LABEL_7;
  }

  v16 = [(HMDAccessory *)self home];
  v14 = v16;
  if (v16)
  {
    if (v5 && ([v16 validateName:v5], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v18 = v17;
      [v4 respondWithError:v17];
    }

    else
    {
      [(HMDAccessory *)self _renameAccessory:v5 resetName:v6 message:v4];
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v22;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unable to change name as no home is associated to the accessory", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v23 = MEMORY[0x277CCA9B8];
    v24 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2018];
    v25 = [v23 hmErrorWithCode:2 description:0 reason:0 suggestion:0 underlyingError:v24];
    [v4 respondWithError:v25];
  }

LABEL_8:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)postAccessoryRenamedNotification
{
  v9[2] = *MEMORY[0x277D85DE8];
  v9[0] = self;
  v3 = *MEMORY[0x277CD1FC8];
  v8[0] = @"HMDAccessoryKey";
  v8[1] = v3;
  v4 = [(HMDAccessory *)self name];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = [(HMDAccessory *)self notificationCenter];
  logAndPostNotificationWithNotificationCenter(v6, @"HMDAccessoryNameUpdatedNotification", self, v5);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_renameAccessory:(id)a3 resetName:(BOOL)a4 message:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(HMDAccessory *)self transactionWithObjectChangeType:2];
  [v10 setName:v9];
  [v10 setConfiguredName:v9];

  v11 = [(HMDAccessory *)self home];
  v12 = [v11 backingStore];
  v13 = [v8 name];
  v14 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
  v15 = [v12 transaction:v13 options:v14];

  if (a4)
  {
    [v15 add:v10 withMessage:0];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __51__HMDAccessory__renameAccessory_resetName_message___block_invoke_2;
    v16[3] = &unk_2797358C8;
    v16[4] = self;
    v17 = v8;
    [v15 run:v16];
  }

  else
  {
    [v15 add:v10 withMessage:v8];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __51__HMDAccessory__renameAccessory_resetName_message___block_invoke;
    v18[3] = &unk_2797359D8;
    v18[4] = self;
    [v15 run:v18];
  }
}

uint64_t __51__HMDAccessory__renameAccessory_resetName_message___block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [*(result + 32) postAccessoryRenamedNotification];
  }

  return result;
}

void __51__HMDAccessory__renameAccessory_resetName_message___block_invoke_2(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) name];
    v6 = v5;
    if (v5)
    {
      v8 = *MEMORY[0x277CD1FC8];
      v9[0] = v5;
      v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    }

    else
    {
      v4 = 0;
    }

    [*(a1 + 32) postAccessoryRenamedNotification];
  }

  [*(a1 + 40) respondWithPayload:v4 error:v3];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setProvidedName:(id)a3
{
  v6 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v4 = [v6 hm_truncatedNameString];
  providedName = self->_providedName;
  self->_providedName = v4;

  os_unfair_recursive_lock_unlock();
}

- (NSString)providedName
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_providedName;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setConfiguredName:(id)a3
{
  v6 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v4 = [v6 hm_truncatedNameString];
  configuredName = self->_configuredName;
  self->_configuredName = v4;

  os_unfair_recursive_lock_unlock();
}

- (id)getConfiguredName
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_configuredName;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)_handleUpdatedName:(id)a3
{
  v4 = [(HMDAccessory *)self workQueue];
  dispatch_assert_queue_V2(v4);

  [(HMDAccessory *)self postAccessoryRenamedNotification];
}

- (NSString)name
{
  configuredName = self->_configuredName;
  if (!configuredName)
  {
    configuredName = self->_providedName;
  }

  v3 = [(NSString *)configuredName copy];

  return v3;
}

- (void)__handleGetAccessoryAdvertisingParams:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v6 = [(HMDAccessory *)self identifier];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v11 = @"kIdentifierKey";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  v9 = [v4 dictionaryWithObjects:v7 forKeys:v8];
  [v5 respondWithPayload:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setInitialCategoryIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  initialCategoryIdentifier = self->_initialCategoryIdentifier;
  self->_initialCategoryIdentifier = v4;

  os_unfair_recursive_lock_unlock();
}

- (NSNumber)initialCategoryIdentifier
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_initialCategoryIdentifier;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (id)_updateCategory:(id)a3 notifyClients:(BOOL)a4
{
  v29[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (![(HMDAccessory *)self isPrimary])
  {
    goto LABEL_13;
  }

  if (!v6)
  {
    v10 = [(HMDAccessory *)self category];

    if (v10)
    {
      goto LABEL_13;
    }
  }

  [(HMDAccessory *)self setCategoryIdentifier:v6];
  v7 = +[HMDHAPMetadata getSharedInstance];
  v8 = [v7 categoryForIdentifier:v6];
  if (v8)
  {
    v9 = v8;
    goto LABEL_8;
  }

  v9 = [v7 categoryForOther];
  if (v9)
  {
LABEL_8:
    v11 = [(HMDAccessory *)self category];
    if (!v11)
    {
      goto LABEL_19;
    }

    v12 = v11;
    v13 = [(HMDAccessory *)self category];
    v14 = [v13 categoryType];
    v15 = [v9 uuidStr];
    v16 = [v14 isEqualToString:v15];

    if ((v16 & 1) == 0)
    {
LABEL_19:
      v17 = objc_alloc(MEMORY[0x277CD1680]);
      v18 = [v9 uuidStr];
      v19 = [v9 catDescription];
      v20 = [v17 initWithType:v18 name:v19];
      [(HMDAccessory *)self setCategory:v20];

      if (a4)
      {
        v21 = [(HMDAccessory *)self category];
        v22 = encodeRootObjectForIncomingXPCMessage(v21, 0);

        v23 = MEMORY[0x277D0F818];
        v28 = @"kAccessoryCategory";
        v29[0] = v22;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
        v25 = [v23 messageWithName:@"kAccessoryCategoryChangedNotificationKey" messagePayload:v24];

        goto LABEL_14;
      }
    }
  }

LABEL_13:
  v25 = 0;
LABEL_14:

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (void)updateCategory:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && (-[HMDAccessory categoryIdentifier](self, "categoryIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isEqual:v4], v5, !v6))
  {
    v12 = [(HMDAccessory *)self transactionWithObjectChangeType:2];
    [v12 setAccessoryCategory:v4];
    v13 = [(HMDAccessory *)self home];
    v14 = [v13 backingStore];
    v15 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v16 = [v14 transaction:@"AccessoryUpdated" options:v15];

    [v16 add:v12 withMessage:0];
    [v16 run];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [(HMDAccessory *)v8 categoryIdentifier];
      v18 = 138543874;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      v22 = 2112;
      v23 = v4;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@No change in category -- old: %@, new: %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)_updateRoom:(id)a3 source:(unint64_t)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDAccessory *)self home];
  v8 = [v7 roomWithUUID:v6];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v8 name];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    *buf = 138543874;
    v41 = v12;
    v42 = 2112;
    v43 = v13;
    v44 = 2112;
    v45 = v14;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@_updateRoom to: room: %@, source: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  if (v8)
  {
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v8 = [v7 roomForEntireHome];
    if (!v7)
    {
LABEL_12:
      v24 = objc_autoreleasePoolPush();
      v25 = v10;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v41 = v27;
        v42 = 2112;
        v43 = v6;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to change room since room with UUID %@ or its home cannot be found", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v28 = 0;
      goto LABEL_21;
    }
  }

  if (!v8)
  {
    goto LABEL_12;
  }

  v15 = [(HMDAccessory *)v10 room];
  v16 = [v8 uuid];
  v17 = [v15 uuid];
  LODWORD(v18) = [v16 hmf_isEqualToUUID:v17];

  v19 = objc_autoreleasePoolPush();
  v20 = v10;
  v21 = HMFGetOSLogHandle();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
  if (v18)
  {
    if (v22)
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v23;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Accessory is already in the same room. not updating.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
  }

  else
  {
    if (v22)
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543874;
      v41 = v29;
      v42 = 2112;
      v43 = v15;
      v44 = 2112;
      v45 = v8;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Updating room: %@ new room: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v30 = [(HMDAccessory *)v20 room];
    v31 = [v30 name];

    [(HMDAccessory *)v20 setRoom:v8];
    v32 = objc_alloc(MEMORY[0x277CBEB38]);
    v38 = @"HMIsCloudSourceKey";
    v33 = [MEMORY[0x277CCABB0] numberWithBool:(a4 & 0xFFFFFFFFFFFFFFFELL) == 2];
    v39 = v33;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v35 = [v32 initWithDictionary:v34];

    if (v31)
    {
      [v35 setObject:v31 forKey:@"kRoomOldNameKey"];
    }

    [v35 setObject:v20 forKeyedSubscript:@"HMDAccessoryKey"];
    v18 = [v35 copy];
    logAndPostNotification(@"HMDNotificationAccessoryChangedRoom", v20, v18);

    LOBYTE(v18) = 0;
  }

  v28 = v18 ^ 1;

LABEL_21:
  v36 = *MEMORY[0x277D85DE8];
  return v28;
}

- (void)_handleUpdateRoomMessage:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uuidForKey:*MEMORY[0x277CD0D40]];
  v6 = [(HMDAccessory *)self home];
  v7 = [v6 roomWithUUID:v5];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v6 rooms];
    *buf = 138544130;
    v43 = v11;
    v44 = 2112;
    v45 = v6;
    v46 = 2112;
    v47 = v12;
    v48 = 2112;
    v49 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@_handleUpdateRoomMessage: home: %@, rooms: %@, newRoom: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (!v6)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v9;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [(HMDAccessory *)v21 name];
      *buf = 138543618;
      v43 = v23;
      v44 = 2112;
      v45 = v24;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to change room for accessory %@ since home cannot be found on accessory", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v25 = MEMORY[0x277CCA9B8];
    v26 = 2018;
    goto LABEL_15;
  }

  if (!v7)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = v9;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      v31 = [(HMDAccessory *)v28 name];
      *buf = 138543874;
      v43 = v30;
      v44 = 2112;
      v45 = v31;
      v46 = 2112;
      v47 = v5;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to change room for accessory %@ since room with UUID %@ cannot be found", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v27);
    v25 = MEMORY[0x277CCA9B8];
    v26 = 2017;
LABEL_15:
    v32 = [v25 hmPrivateErrorWithCode:v26];
LABEL_16:
    v15 = v32;
    [v4 respondWithError:v32];
    goto LABEL_17;
  }

  if (v5)
  {
    v13 = [v6 roomForEntireHome];
    v14 = [v7 isEqual:v13];

    if ((v14 & 1) == 0 && [v6 accessoryCountForRoom:v7] >= 0x3E8)
    {
      v34 = objc_autoreleasePoolPush();
      v35 = v9;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        v38 = [(HMDAccessory *)v35 name];
        v39 = [v7 name];
        *buf = 138543874;
        v43 = v37;
        v44 = 2112;
        v45 = v38;
        v46 = 2112;
        v47 = v39;
        _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@Can't assign %@  to room %@; already at maximum accessories allowed", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v34);
      v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:49];
      goto LABEL_16;
    }
  }

  v15 = [(HMDAccessory *)v9 modelWithUpdatedRoom:v7];
  v16 = [v6 backingStore];
  v17 = [v4 name];
  v18 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
  v19 = [v16 transaction:v17 options:v18];

  [v19 add:v15 withMessage:v4];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __41__HMDAccessory__handleUpdateRoomMessage___block_invoke;
  v40[3] = &unk_2797358C8;
  v40[4] = v9;
  v41 = v7;
  [v19 run:v40];

LABEL_17:
  v33 = *MEMORY[0x277D85DE8];
}

void __41__HMDAccessory__handleUpdateRoomMessage___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) name];
    v10 = 138543874;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Finished updating the room (%@) for the accessory finished with error: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x277D85DE8];
}

- (id)modelWithUpdatedRoom:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(HMDAccessory *)self transactionWithObjectChangeType:2];
    v6 = [v4 uuid];
    v7 = [v6 UUIDString];
    [v5 setRoomUUID:v7];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [(HMDAccessory *)v9 name];
      v15 = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Cannot create update room model because room was not specified for accessory %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v5 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)updateRoom:(id)a3 source:(unint64_t)a4
{
  v6 = a3;
  v7 = [(HMDAccessory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HMDAccessory_updateRoom_source___block_invoke;
  block[3] = &unk_279732F10;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(v7, block);
}

void __34__HMDAccessory_updateRoom_source___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uuid];
  [v2 _updateRoom:v3 source:*(a1 + 48)];
}

- (void)setRoom:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  room = self->_room;
  self->_room = v4;

  os_unfair_recursive_lock_unlock();
  v6 = [(HMDAccessory *)self home];
  [v6 configureBulletinNotification];
}

- (HMDRoom)room
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_room;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (NSUUID)spiClientIdentifier
{
  v2 = [(HMDAccessory *)self uuid];
  v3 = spiClientIdentifierForUUID(v2);

  return v3;
}

- (void)setResetOnBackoffExpiry:(BOOL)a3
{
  os_unfair_recursive_lock_lock_with_options();
  self->_resetOnBackoffExpiry = a3;

  os_unfair_recursive_lock_unlock();
}

- (BOOL)resetOnBackoffExpiry
{
  os_unfair_recursive_lock_lock_with_options();
  resetOnBackoffExpiry = self->_resetOnBackoffExpiry;
  os_unfair_recursive_lock_unlock();
  return resetOnBackoffExpiry;
}

- (void)setConsecutivePairingFailure:(unint64_t)a3
{
  os_unfair_recursive_lock_lock_with_options();
  self->_consecutivePairingFailures = a3;

  os_unfair_recursive_lock_unlock();
}

- (unint64_t)consecutivePairingFailure
{
  os_unfair_recursive_lock_lock_with_options();
  consecutivePairingFailures = self->_consecutivePairingFailures;
  os_unfair_recursive_lock_unlock();
  return consecutivePairingFailures;
}

- (void)setLastPairingFailureTime:(double)a3
{
  os_unfair_recursive_lock_lock_with_options();
  self->_lastPairingFailureTime = a3;

  os_unfair_recursive_lock_unlock();
}

- (double)lastPairingFailureTime
{
  os_unfair_recursive_lock_lock_with_options();
  lastPairingFailureTime = self->_lastPairingFailureTime;
  os_unfair_recursive_lock_unlock();
  return lastPairingFailureTime;
}

- (void)setIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    os_unfair_recursive_lock_lock_with_options();
    v5 = [v7 copy];
    identifier = self->_identifier;
    self->_identifier = v5;

    os_unfair_recursive_lock_unlock();
    v4 = v7;
  }
}

- (NSString)identifier
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_identifier;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)removeCloudData
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(HMDAccessory *)self accessoryProfiles];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) removeCloudData];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)unconfigure
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(HMDAccessory *)self accessoryProfiles];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) unconfigure];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(HMDAccessory *)self setAccessoryProfiles:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasSiriEndpointProfile
{
  v2 = [(HMDAccessory *)self accessoryProfiles];
  v3 = [v2 na_any:&__block_literal_global_300];

  return v3;
}

uint64_t __38__HMDAccessory_hasSiriEndpointProfile__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (v2 != 0);
}

- (BOOL)hasMediaProfile
{
  v2 = [(HMDAccessory *)self accessoryProfiles];
  v3 = [v2 na_any:&__block_literal_global_297_45778];

  return v3;
}

uint64_t __31__HMDAccessory_hasMediaProfile__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (v2 != 0);
}

- (BOOL)isFirstPartyAccessory
{
  v2 = self;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (v2 != 0);
}

- (void)configureWithHome:(id)a3 msgDispatcher:(id)a4 configurationTracker:(id)a5 initialConfiguration:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v11)
  {
    dispatch_group_enter(v11);
  }

  [(HMDAccessory *)self setHome:v9];
  [(HMDAccessory *)self setMsgDispatcher:v10];
  v13 = [(HMDAccessory *)self workQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __90__HMDAccessory_configureWithHome_msgDispatcher_configurationTracker_initialConfiguration___block_invoke;
  v17[3] = &unk_279734870;
  v17[4] = self;
  v18 = v9;
  v19 = v10;
  v20 = v12;
  v14 = v12;
  v15 = v10;
  v16 = v9;
  dispatch_async(v13, v17);
}

void __90__HMDAccessory_configureWithHome_msgDispatcher_configurationTracker_initialConfiguration___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) room];

  if (!v2)
  {
    v3 = [*(a1 + 40) roomForEntireHome];
    [*(a1 + 32) setRoom:v3];
  }

  if (*(a1 + 48))
  {
    [*(a1 + 32) _registerForMessages];
  }

  [*(a1 + 32) _registerForNotifications];
  if (*(a1 + 48))
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [*(a1 + 32) accessoryProfiles];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v12 + 1) + 8 * v8++) configureWithMessageDispatcher:*(a1 + 48) configurationTracker:*(a1 + 56)];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  v9 = [*(a1 + 32) softwareUpdate];
  [v9 configureWithAccessory:*(a1 + 32) dataSource:*(a1 + 32) messageDispatcher:*(a1 + 48)];

  [*(a1 + 32) updateVendorInfo];
  v10 = *(a1 + 56);
  if (v10)
  {
    dispatch_group_leave(v10);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_relayIdentifyAccessorytoResidentForMessage:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D0F818];
  v6 = [v4 messagePayload];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__HMDAccessory__relayIdentifyAccessorytoResidentForMessage___block_invoke;
  v12[3] = &unk_279734E00;
  v13 = v4;
  v7 = v4;
  v8 = [v5 messageWithMessage:v7 messagePayload:v6 responseHandler:v12];

  v9 = [(HMDAccessory *)self home];
  v10 = [(HMDAccessory *)self uuid];
  v11 = [(HMDAccessory *)self workQueue];
  [v9 redispatchToResidentMessage:v8 target:v10 responseQueue:v11];
}

void __60__HMDAccessory__relayIdentifyAccessorytoResidentForMessage___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) responseHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) responseHandler];
    (v4)[2](v4, v5, 0);
  }
}

- (void)__handleIdentify:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (isWatch() || ![(HMDAccessory *)self isReachable])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      isWatch();
      v13 = HMFBooleanToString();
      [(HMDAccessory *)v10 isReachable];
      v14 = HMFBooleanToString();
      v21 = 138543874;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Relaying request to identify accessory because we are a watch (%@) or the accessory is unreachable (%@)", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    if ([(HMDAccessory *)v10 isRemoteAccessEnabled])
    {
      [(HMDAccessory *)v10 _relayIdentifyAccessorytoResidentForMessage:v4];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = v10;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v21 = 138543362;
        v22 = v18;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Cannot relay request to identify accessory because remote access is not enabled", &v21, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      [v4 respondWithError:v19];
    }
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling identify", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDAccessory *)v6 handleIdentifyAccessoryMessage:v4];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryUpdateShouldProcessTransactionRemovalValueRequestMessage:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v21 = v8;
    v22 = 2112;
    v23 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling accessory update should process transaction removal value request message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 messagePayload];
  v10 = *MEMORY[0x277CCF0D8];
  v19 = 0;
  v11 = [v9 hmf_BOOLForKey:v10 error:&v19];
  v12 = v19;

  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v6;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v4 messagePayload];
      *buf = 138543874;
      v21 = v16;
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to get value from payload: %@ error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    [v4 respondWithError:v12];
  }

  else
  {
    [(HMDAccessory *)v6 setShouldProcessTransactionRemoval:v11];
    [v4 respondWithSuccess];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_handleLinkQualityRequestMessage:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [HMDRemoteMessage alloc];
    v6 = [v4 name];
    v7 = [v4 destination];
    v8 = [v4 messagePayload];
    v9 = [(HMDRemoteMessage *)v5 initWithName:v6 destination:v7 payload:v8 type:0 timeout:1 secure:10.0];

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __49__HMDAccessory__handleLinkQualityRequestMessage___block_invoke;
    v22[3] = &unk_279734E00;
    v10 = v4;
    v23 = v10;
    [(HMDRemoteMessage *)v9 setResponseHandler:v22];
    v11 = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v13 && [(HMDAccessory *)v13 communicationProtocol]== 2)
    {
      v14 = [(HMDAccessory *)v11 home];
      if ([v14 isCurrentDeviceConfirmedPrimaryResident])
      {
        [(HMDAccessory *)v13 handleLinkQualityRequestMessage:v9];
      }

      else
      {
        v16 = objc_autoreleasePoolPush();
        v17 = v11;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v19 = HMFGetLogIdentifier();
          *buf = 138543362;
          v25 = v19;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEBUG, "%{public}@LinkQuality: Re-dispatching to primary resident", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v16);
        v20 = [(HMDAccessory *)v17 uuid];
        v21 = [(HMDAccessory *)v17 workQueue];
        [v14 redispatchToResidentMessage:v9 target:v20 responseQueue:v21];
      }
    }

    else
    {
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48 description:@"This Accessory type does not support link quality" reason:0 suggestion:0];
      [v10 respondWithError:v14];
    }
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48 description:@"Feature is disabled" reason:@"Feature flag is disabled" suggestion:0];
    [v4 respondWithError:v9];
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __49__HMDAccessory__handleLinkQualityRequestMessage___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 respondWithError:a2];
  }

  else
  {
    return [v2 respondWithPayload:?];
  }
}

- (void)_registerForMessages
{
  v78[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessory *)self home];
  v65 = [HMDUserMessagePolicy userMessagePolicyWithHome:v3 userPrivilege:0 remoteAccessRequired:0];
  v4 = [v3 administratorHandler];
  v5 = *MEMORY[0x277CD12B0];
  v6 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v77[0] = v6;
  v7 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v77[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:2];
  [v4 registerForMessage:v5 receiver:self policies:v8 selector:sel__handleUpdateRoomMessage_];

  v9 = [v3 administratorHandler];
  v10 = *MEMORY[0x277CD0CA8];
  v11 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v76[0] = v11;
  v12 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v76[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:2];
  [v9 registerForMessage:v10 receiver:self policies:v13 selector:sel__handleRenameMessage_];

  v14 = [v3 administratorHandler];
  v15 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v75[0] = v15;
  v16 = [HMDConfigurationMessagePolicy policyWithOperationTypes:7];
  v75[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:2];
  [v14 registerForMessage:@"kSetAppDataRequestKey" receiver:self policies:v17 selector:sel___handleSetAppData_];

  v18 = [v3 administratorHandler];
  v19 = *MEMORY[0x277CCF0C8];
  v20 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v74[0] = v20;
  v21 = [HMDConfigurationMessagePolicy policyWithOperationTypes:7];
  v74[1] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:2];
  [v18 registerForMessage:v19 receiver:self policies:v22 selector:sel___handleUpdatePendingConfigurationIdentifierMessage_];

  v23 = [(HMDAccessory *)self msgDispatcher];
  v24 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v73[0] = v24;
  v73[1] = v65;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:2];
  [v23 registerForMessage:@"kAccessoryAdvertisingParamsRequestKey" receiver:self policies:v25 selector:sel___handleGetAccessoryAdvertisingParams_];

  v26 = [(HMDAccessory *)self msgDispatcher];
  v27 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v72[0] = v27;
  v28 = [HMDUserMessagePolicy userMessagePolicyWithHome:v3 userPrivilege:3 remoteAccessRequired:0];
  v72[1] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
  [v26 registerForMessage:@"kListPairingsRequestKey" receiver:self policies:v29 selector:sel___handleListPairings_];

  v30 = [(HMDAccessory *)self msgDispatcher];
  v31 = *MEMORY[0x277CCE820];
  v32 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v71[0] = v32;
  v33 = [HMDUserMessagePolicy userMessagePolicyWithHome:v3 userPrivilege:3 remoteAccessRequired:0];
  v71[1] = v33;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
  [v30 registerForMessage:v31 receiver:self policies:v34 selector:sel___handleAuditPairings_];

  v35 = [(HMDAccessory *)self msgDispatcher];
  v36 = *MEMORY[0x277CCEC30];
  v37 = [HMDXPCMessagePolicy policyWithEntitlements:13];
  v70[0] = v37;
  v70[1] = v65;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
  [v35 registerForMessage:v36 receiver:self policies:v38 selector:sel___handlePairingIdentityRequest_];

  v39 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v39 setRoles:{objc_msgSend(v39, "roles") | 6}];
  v40 = [v39 copy];
  v41 = [(HMDAccessory *)self msgDispatcher];
  v42 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v69[0] = v42;
  v69[1] = v40;
  v69[2] = v65;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:3];
  [v41 registerForMessage:@"kIdentifyAccessoryRequestKey" receiver:self policies:v43 selector:sel___handleIdentify_];

  if (isInternalBuild())
  {
    v44 = [(HMDAccessory *)self msgDispatcher];
    v45 = *MEMORY[0x277CD0A00];
    v46 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v68[0] = v46;
    v47 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v68[1] = v47;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
    [v44 registerForMessage:v45 receiver:self policies:v48 selector:sel__handleWiFiReconfiguration_];

    v49 = [(HMDAccessory *)self msgDispatcher];
    v50 = *MEMORY[0x277CCF0E0];
    v51 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v67[0] = v51;
    v52 = [HMDUserMessagePolicy userMessagePolicyWithHome:v3 userPrivilege:3 remoteAccessRequired:0];
    v67[1] = v52;
    v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:2];
    [v49 registerForMessage:v50 receiver:self policies:v53 selector:sel_handleAccessoryUpdateShouldProcessTransactionRemovalValueRequestMessage_];
  }

  v54 = [(HMDAccessory *)self msgDispatcher];
  v55 = *MEMORY[0x277CCEC78];
  v66[0] = v65;
  v56 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v66[1] = v56;
  v57 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v66[2] = v57;
  v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:3];
  [v54 registerForMessage:v55 receiver:self policies:v58 selector:sel__handleLinkQualityRequestMessage_];

  if (self)
  {
    v59 = [(HMDAccessory *)self msgDispatcher];
    v60 = *MEMORY[0x277CD09F0];
    v61 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v78[0] = v61;
    v62 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v78[1] = v62;
    v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:2];
    [v59 registerForMessage:v60 receiver:self policies:v63 selector:sel__handlePreviewAllowedHosts_];
  }

  v64 = *MEMORY[0x277D85DE8];
}

- (id)backingStoreObjects:(int64_t)a3
{
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(HMDAccessory *)self appData];

  if (a3 >= 3 && v6)
  {
    v7 = [(HMDAccessory *)self appData];
    v8 = [v7 modelObjectWithChangeType:1];
    [v5 addObject:v8];
  }

  if (a3 > 3)
  {
    v9 = [(HMDAccessory *)self softwareUpdate];
    v10 = v9;
    if (v9 && [v9 downloadSize])
    {
      v11 = [v10 model];
      [v11 setObjectChangeType:1];
      v12 = [v11 parentUUID];

      if (!v12)
      {
        v13 = [(HMDAccessory *)self uuid];
        [v11 setParentUUIDIfNotNil:v13];
      }

      [v5 addObject:v11];
    }
  }

  return v5;
}

- (void)populateModelObject:(id)a3 version:(int64_t)a4
{
  v79 = *MEMORY[0x277D85DE8];
  v6 = a3;
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
  v9 = [(HMDAccessory *)self name];
  [v8 setName:v9];

  v10 = [(HMDAccessory *)self configuredName];
  [v8 setConfiguredName:v10];

  v11 = [(HMDAccessory *)self providedName];
  [v8 setProvidedName:v11];

  v12 = [(HMDAccessory *)self categoryIdentifier];
  [v8 setPropertyIfNotNil:v12 named:@"accessoryCategory"];

  v13 = [(HMDAccessory *)self identifier];
  [v8 setIdentifier:v13];

  v14 = [(HMDAccessory *)self room];
  v15 = [v14 uuid];
  if (v15)
  {
    v16 = v15;
    v17 = [(HMDAccessory *)self room];
    [v17 uuid];
    v18 = v73 = a4;
    v19 = [(HMDAccessory *)self home];
    [v19 roomForEntireHome];
    v21 = v20 = v6;
    v22 = [v21 uuid];
    v72 = [v18 isEqual:v22];

    v6 = v20;
    a4 = v73;

    if (v72)
    {
      goto LABEL_8;
    }

    v14 = [(HMDAccessory *)self room];
    v23 = [v14 uuid];
    v24 = [v23 UUIDString];
    [v8 setRoomUUID:v24];
  }

LABEL_8:
  v25 = [MEMORY[0x277CCABB0] numberWithBool:self->_suspendCapable];
  [v8 setSuspendCapable:v25];

  if (a4 >= 4)
  {
    v26 = [(HMDAccessory *)self model];
    [v8 setPropertyIfNotNil:v26 named:@"model"];

    v27 = [(HMDAccessory *)self manufacturer];
    [v8 setPropertyIfNotNil:v27 named:@"manufacturer"];

    v28 = [(HMDAccessory *)self firmwareVersion];
    v29 = [v28 rawVersionString];
    [v8 setPropertyIfNotNil:v29 named:@"firmwareVersion"];

    v30 = [(HMDAccessory *)self displayableFirmwareVersion];
    [v8 setPropertyIfNotNil:v30 named:@"displayableFirmwareVersion"];

    v31 = [(HMDAccessory *)self serialNumber];
    [v8 setPropertyIfNotNil:v31 named:@"serialNumber"];

    v32 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessory currentNetworkProtectionMode](self, "currentNetworkProtectionMode")}];
    [v8 setCurrentNetworkProtectionMode:v32];

    v33 = [(HMDAccessory *)self networkAccessViolation];
    v34 = [v33 lastViolationDate];
    v35 = EpochIntervalFromDate(v34);
    [v8 setLastNetworkAccessViolationOccurrenceSince1970:v35];

    v36 = [(HMDAccessory *)self networkAccessViolation];
    v37 = [v36 lastResetDate];
    v38 = EpochIntervalFromDate(v37);
    [v8 setLastNetworkAccessViolationResetSince1970:v38];

    v39 = MEMORY[0x277CBEB18];
    v40 = [(HMDAccessory *)self allowedHosts];
    v41 = [v39 arrayWithCapacity:{objc_msgSend(v40, "count")}];

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v42 = [(HMDAccessory *)self allowedHosts];
    v43 = [v42 countByEnumeratingWithState:&v74 objects:v78 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v75;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v75 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = [*(*(&v74 + 1) + 8 * i) jsonWANRule];
          [v41 addObject:v47];
        }

        v44 = [v42 countByEnumeratingWithState:&v74 objects:v78 count:16];
      }

      while (v44);
    }

    v48 = [v41 copy];
    [v8 setAppliedFirewallWANRules:v48];

    v49 = [(HMDAccessory *)self productData];
    [v8 setPropertyIfNotNil:v49 named:@"productDataV2"];

    v50 = [(HMDAccessory *)self configuredNetworkProtectionGroupUUID];
    v51 = [v50 UUIDString];
    [v8 setConfiguredNetworkProtectionGroupUUIDString:v51];

    v52 = [(HMDAccessory *)self networkClientIdentifier];
    [v8 setNetworkClientIdentifier:v52];

    v53 = [(HMDAccessory *)self networkRouterUUID];
    v54 = [v53 UUIDString];
    [v8 setNetworkRouterUUID:v54];

    v55 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessory networkClientLAN](self, "networkClientLAN")}];
    [v8 setNetworkClientLAN:v55];

    v56 = [(HMDAccessory *)self networkClientProfileFingerprint];
    v57 = [v56 UUIDString];
    [v8 setNetworkClientProfileFingerprint:v57];

    v58 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessory wiFiCredentialType](self, "wiFiCredentialType")}];
    [v8 setWiFiCredentialType:v58];

    v59 = [(HMDAccessory *)self wiFiUniquePreSharedKey];
    [v8 setWiFiUniquePreSharedKey:v59];

    v60 = [(HMDAccessory *)self pendingConfigurationIdentifier];
    [v8 setPendingConfigurationIdentifier:v60];

    v61 = [(HMDAccessory *)self primaryProfileVersion];
    v62 = [v61 versionString];
    [v8 setPropertyIfNotNil:v62 named:@"primaryProfileVersion"];

    v63 = [(HMDAccessory *)self initialManufacturer];
    [v8 setPropertyIfNotNil:v63 named:@"initialManufacturer"];

    v64 = [(HMDAccessory *)self initialModel];
    [v8 setPropertyIfNotNil:v64 named:@"initialModel"];

    v65 = [(HMDAccessory *)self initialCategoryIdentifier];
    [v8 setPropertyIfNotNil:v65 named:@"initialCategoryIdentifier"];

    v66 = [(HMDAccessory *)self hostAccessory];
    v67 = [v66 uuid];
    v68 = [v67 UUIDString];
    [v8 setHostAccessoryUUID:v68];

    v69 = [(HMDAccessory *)self lastSeenDate];
    [v8 setPropertyIfNotNil:v69 named:@"lastSeenDate"];

    v70 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessory isLowBattery](self, "isLowBattery")}];
    [v8 setPropertyIfNotNil:v70 named:@"lowBattery"];
  }

  v71 = *MEMORY[0x277D85DE8];
}

- (id)transactionWithObjectChangeType:(unint64_t)a3
{
  v5 = [HMDAccessoryTransaction alloc];
  v6 = [(HMDAccessory *)self uuid];
  v7 = [(HMDAccessory *)self home];
  v8 = [v7 uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:a3 uuid:v6 parentUUID:v8];

  return v9;
}

- (NSArray)transportReports
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

- (id)shortDescription
{
  v3 = isInternalBuild();
  v4 = MEMORY[0x277CCACA8];
  if (v3)
  {
    v5 = [(HMDAccessory *)self name];
    v6 = [(HMDAccessory *)self uuid];
    v7 = [(HMDAccessory *)self identifier];
    [(HMDAccessory *)self isReachable];
    v8 = HMFBooleanToString();
    v9 = [v4 stringWithFormat:@"%@/%@/%@/%@", v5, v6, v7, v8];
  }

  else
  {
    v5 = [(HMDAccessory *)self uuid];
    v6 = [(HMDAccessory *)self identifier];
    [(HMDAccessory *)self isReachable];
    v7 = HMFBooleanToString();
    v9 = [v4 stringWithFormat:@"%@/%@/%@", v5, v6, v7];
  }

  return v9;
}

- (void)setCategory:(id)a3
{
  v4 = [MEMORY[0x277CD1A18] cachedInstanceForHMAccessoryCategory:a3];
  category = self->_category;
  self->_category = v4;

  MEMORY[0x2821F96F8](v4, category);
}

- (unint64_t)supportedTransports
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

- (id)attributeDescriptions
{
  v51[14] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v50 = [(HMDAccessory *)self name];
  v49 = [v3 initWithName:@"Nm" value:v50];
  v51[0] = v49;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v48 = [(HMDAccessory *)self getConfiguredName];
  v47 = [v4 initWithName:@"CN" value:v48];
  v51[1] = v47;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v46 = [(HMDAccessory *)self providedName];
  v45 = [v5 initWithName:@"PN" value:v46];
  v51[2] = v45;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v44 = [(HMDAccessory *)self uuid];
  v43 = [v6 initWithName:@"UUID" value:v44];
  v51[3] = v43;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v42 = [(HMDAccessory *)self category];
  v41 = [v42 name];
  v40 = [v7 initWithName:@"Cat" value:v41];
  v51[4] = v40;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v39 = [(HMDAccessory *)self home];
  v38 = [v39 name];
  v37 = [v8 initWithName:@"HM" value:v38];
  v51[5] = v37;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v36 = [(HMDAccessory *)self room];
  v35 = [v36 name];
  v34 = [v9 initWithName:@"RM" value:v35];
  v51[6] = v34;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v33 = [(HMDAccessory *)self manufacturer];
  v32 = [v10 initWithName:@"MFG" value:v33];
  v51[7] = v32;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v31 = [(HMDAccessory *)self model];
  v30 = [v11 initWithName:@"MO" value:v31];
  v51[8] = v30;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v29 = [(HMDAccessory *)self serialNumber];
  v13 = [v12 initWithName:@"SN" value:v29];
  v51[9] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  v15 = [(HMDAccessory *)self productData];
  v16 = [v14 initWithName:@"PD" value:v15];
  v51[10] = v16;
  v17 = objc_alloc(MEMORY[0x277D0F778]);
  v18 = [(HMDAccessory *)self firmwareVersion];
  v19 = [v17 initWithName:@"FV" value:v18];
  v51[11] = v19;
  v20 = objc_alloc(MEMORY[0x277D0F778]);
  v21 = [(HMDAccessory *)self displayableFirmwareVersion];
  v22 = [v20 initWithName:@"DFV" value:v21];
  v51[12] = v22;
  v23 = objc_alloc(MEMORY[0x277D0F778]);
  v24 = [(HMDAccessory *)self softwareUpdate];
  v25 = [v23 initWithName:@"SU" value:v24];
  v51[13] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:14];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)privateDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMDAccessory *)self uuid];
  v6 = [v5 UUIDString];
  v7 = [v3 stringWithFormat:@"%@ %@", v4, v6];

  return v7;
}

- (void)dealloc
{
  v3 = [(HMDAccessory *)self msgDispatcher];
  [v3 deregisterReceiver:self];

  v4 = [(HMDAccessory *)self home];
  v5 = [v4 administratorHandler];
  [v5 deregisterReceiver:self];

  v6.receiver = self;
  v6.super_class = HMDAccessory;
  [(HMDAccessory *)&v6 dealloc];
}

- (void)sendRemovalRequestWithCompletion:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMDAccessory *)v6 shortDescription];
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Sending removal request for accessory: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [(HMDAccessory *)v6 home];
  [v10 handleRemoveAccessory:v6 completion:v4];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setDefaultPreferredMediaUserIfRemoved:(id)a3 defaultUser:(id)a4 completion:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    _HMFPreconditionFailure();
  }

  v11 = v10;
  v12 = [v8 uuid];
  v13 = [(HMDAccessory *)self preferredMediaUserUUID];
  v14 = [v12 hmf_isEqualToUUID:v13];

  if (v14)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v26 = 138543874;
      v27 = v18;
      v28 = 2112;
      v29 = v8;
      v30 = 2112;
      v31 = v9;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Resetting preferred media user: %@ to default user: %@.", &v26, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    if (v9)
    {
      v19 = [v9 uuid];
      [(HMDAccessory *)v16 setPreferredMediaUser:v19 selectionType:0 completion:v11];
    }

    else
    {
      [(HMDAccessory *)v16 setPreferredMediaUser:0 selectionType:0 completion:v11];
    }
  }

  else
  {
    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v24;
      v28 = 2112;
      v29 = v20;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Removed user is not current preferred media user: %@", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    if (v11)
    {
      (v11)[2](v11, v20);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)setPreferredMediaUser:(id)a3 selectionType:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__HMDAccessory_setPreferredMediaUser_selectionType_completion___block_invoke;
  v11[3] = &unk_279734508;
  objc_copyWeak(&v13, &location);
  v10 = v9;
  v12 = v10;
  [(HMDAccessory *)self runTransactionWithPreferredMediaUserUUID:v8 selectionType:a4 completion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __63__HMDAccessory_setPreferredMediaUser_selectionType_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to set preferred media user, error: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)encodePreferredMediaUser:(id)a3
{
  v7 = a3;
  v4 = [(HMDAccessory *)self preferredMediaUserUUID];
  [v7 encodeObject:v4 forKey:*MEMORY[0x277CCEC48]];

  v5 = [(HMDAccessory *)self preferredMediaUserSelectionTypeNumber];

  if (v5)
  {
    v6 = [(HMDAccessory *)self preferredMediaUserSelectionTypeNumber];
    [v7 encodeObject:v6 forKey:*MEMORY[0x277CCEC58]];
  }
}

- (void)decodePreferredMediaUser:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEC48]];
  [(HMDAccessory *)self setPreferredMediaUserUUID:v5];

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEC58]];

  [(HMDAccessory *)self setPreferredMediaUserSelectionTypeNumber:v6];
}

- (void)transactionAccessoryUpdatedForPreferredMediaUser:(id)a3 completionHandler:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 propertyWasSet:@"preferredMediaUserUUID"] && (objc_msgSend(v6, "preferredMediaUserUUID"), v8 = objc_claimAutoreleasedReturnValue(), -[HMDAccessory preferredMediaUserUUID](self, "preferredMediaUserUUID"), v9 = objc_claimAutoreleasedReturnValue(), v10 = HMFEqualObjects(), v9, v8, (v10 & 1) == 0))
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [v6 preferredMediaUserUUID];
      v28 = 138543618;
      v29 = v15;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Updated preferred media user UUID: %@", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v17 = [v6 preferredMediaUserUUID];
    [(HMDAccessory *)v13 setPreferredMediaUserUUID:v17];

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  if ([v6 propertyWasSet:@"preferredUserSelectionType"])
  {
    v18 = [v6 preferredUserSelectionType];
    v19 = [(HMDAccessory *)self preferredMediaUserSelectionTypeNumber];
    v20 = HMFEqualObjects();

    if ((v20 & 1) == 0)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = HMFGetLogIdentifier();
        v25 = [v6 preferredUserSelectionType];
        v28 = 138543618;
        v29 = v24;
        v30 = 2112;
        v31 = v25;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Updated preferred media user selection type: %@", &v28, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      v26 = [v6 preferredUserSelectionType];
      [(HMDAccessory *)v22 setPreferredMediaUserSelectionTypeNumber:v26];

      v11 = 1;
    }
  }

  v7[2](v7, v11);

  v27 = *MEMORY[0x277D85DE8];
}

- (void)runTransactionWithModels:(id)a3 label:(id)a4 completion:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDAccessory *)self home];
  v12 = [v11 backingStore];

  v13 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
  v14 = [v12 transaction:v9 options:v13];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = v8;
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      v19 = 0;
      do
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [v14 add:*(*(&v24 + 1) + 8 * v19++)];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v17);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __58__HMDAccessory_runTransactionWithModels_label_completion___block_invoke;
  v22[3] = &unk_279735558;
  v23 = v10;
  v20 = v10;
  [v14 run:v22];

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __58__HMDAccessory_runTransactionWithModels_label_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)runTransactionWithModel:(id)a3 label:(id)a4 completion:(id)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v8 = MEMORY[0x277CBEA60];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 arrayWithObjects:&v14 count:1];

  [(HMDAccessory *)self runTransactionWithModels:v12 label:v10 completion:v9, v14, v15];
  v13 = *MEMORY[0x277D85DE8];
}

- (HMDAccessory)initWithTransaction:(id)a3 home:(id)a4
{
  v108 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessory *)self init];
  if (!v8)
  {
LABEL_37:
    v26 = v8;
    goto LABEL_38;
  }

  v9 = [v6 uuid];
  uuid = v8->_uuid;
  v8->_uuid = v9;

  v11 = [v6 configuredName];
  v12 = [v11 hm_truncatedNameString];
  configuredName = v8->_configuredName;
  v8->_configuredName = v12;

  v14 = [v6 identifier];
  identifier = v8->_identifier;
  v8->_identifier = v14;

  if (v8->_identifier)
  {
    objc_storeWeak(&v8->_home, v7);
    v16 = [v6 roomUUID];

    if (v16)
    {
      v17 = objc_alloc(MEMORY[0x277CCAD78]);
      v18 = [v6 roomUUID];
      v19 = [v17 initWithUUIDString:v18];
      v20 = [v7 roomWithUUID:v19];
      room = v8->_room;
      v8->_room = v20;
    }

    else
    {
      v27 = [v7 roomForEntireHome];
      v18 = v8->_room;
      v8->_room = v27;
    }

    v28 = [v6 providedName];
    v29 = [v28 hm_truncatedNameString];
    providedName = v8->_providedName;
    v8->_providedName = v29;

    v31 = [v6 model];
    model = v8->_model;
    v8->_model = v31;

    v33 = [v6 manufacturer];
    manufacturer = v8->_manufacturer;
    v8->_manufacturer = v33;

    v8->_accessoryReprovisionState = 0;
    v35 = [v6 firmwareVersion];

    if (v35)
    {
      v36 = [HMDAccessoryVersion alloc];
      v37 = [v6 firmwareVersion];
      v38 = [(HMDAccessoryVersion *)v36 initWithString:v37];
      firmwareVersion = v8->_firmwareVersion;
      v8->_firmwareVersion = v38;
    }

    v40 = [v6 displayableFirmwareVersion];

    if (v40)
    {
      v41 = [v6 displayableFirmwareVersion];
      displayableFirmwareVersion = v8->_displayableFirmwareVersion;
      v8->_displayableFirmwareVersion = v41;
    }

    v43 = [v6 serialNumber];
    serialNumber = v8->_serialNumber;
    v8->_serialNumber = v43;

    v45 = [v6 initialModel];
    initialModel = v8->_initialModel;
    v8->_initialModel = v45;

    v47 = [v6 initialManufacturer];
    initialManufacturer = v8->_initialManufacturer;
    v8->_initialManufacturer = v47;

    v49 = [v6 initialCategoryIdentifier];
    initialCategoryIdentifier = v8->_initialCategoryIdentifier;
    v8->_initialCategoryIdentifier = v49;

    v51 = [v6 productDataV2];
    v52 = v51;
    if (!v51)
    {
      v52 = [v6 productData];
    }

    objc_storeStrong(&v8->_productData, v52);
    if (!v51)
    {
    }

    v53 = [v6 suspendCapable];

    if (v53)
    {
      v54 = [v6 suspendCapable];
      v8->_suspendCapable = [v54 BOOLValue];
    }

    v55 = [v6 lastSeenDate];

    if (v55)
    {
      v56 = [v6 lastSeenDate];
      lastSeenDate = v8->_lastSeenDate;
      v8->_lastSeenDate = v56;
    }

    v58 = [v6 lowBattery];

    if (v58)
    {
      v59 = [v6 lowBattery];
      v8->_lowBattery = [v59 BOOLValue];
    }

    v60 = [v7 msgDispatcher];
    msgDispatcher = v8->_msgDispatcher;
    v8->_msgDispatcher = v60;

    v62 = [v6 accessoryCategory];
    v63 = [(HMDAccessory *)v8 _updateCategory:v62 notifyClients:0];

    v64 = [v6 networkClientIdentifier];
    networkClientIdentifier = v8->_networkClientIdentifier;
    v8->_networkClientIdentifier = v64;

    v66 = objc_alloc(MEMORY[0x277CCAD78]);
    v67 = [v6 networkRouterUUID];
    v68 = [v66 initWithUUIDString:v67];
    networkRouterUUID = v8->_networkRouterUUID;
    v8->_networkRouterUUID = v68;

    v70 = [v6 currentNetworkProtectionMode];

    if (v70)
    {
      v71 = [v6 currentNetworkProtectionMode];
      v8->_currentNetworkProtectionMode = [v71 integerValue];
    }

    v72 = [v6 wiFiCredentialType];

    if (v72)
    {
      v73 = objc_autoreleasePoolPush();
      v74 = v8;
      v75 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
      {
        v76 = HMFGetLogIdentifier();
        v77 = [v6 wiFiCredentialType];
        v104 = 138543618;
        v105 = v76;
        v106 = 2112;
        v107 = v77;
        _os_log_impl(&dword_2531F8000, v75, OS_LOG_TYPE_INFO, "%{public}@Setting accessory wiFiCredentialType to %@", &v104, 0x16u);
      }

      objc_autoreleasePoolPop(v73);
      v78 = [v6 wiFiCredentialType];
      v74->_wiFiCredentialType = [v78 integerValue];
    }

    v79 = [v6 appliedFirewallWANRules];
    v80 = [HMDAccessoryAllowedHost allowedHostsFromJSONFirewallWANRules:v79];
    allowedHosts = v8->_allowedHosts;
    v8->_allowedHosts = v80;

    v82 = [v6 wiFiUniquePreSharedKey];
    wiFiUniquePreSharedKey = v8->_wiFiUniquePreSharedKey;
    v8->_wiFiUniquePreSharedKey = v82;

    v84 = [HMDAccessoryNetworkAccessViolation alloc];
    v85 = [v6 lastNetworkAccessViolationOccurrenceSince1970];
    v86 = [v6 lastNetworkAccessViolationResetSince1970];
    v87 = [(HMDAccessoryNetworkAccessViolation *)v84 initWithLastViolationTimeInterval:v85 lastViolationResetTimeInterval:v86];

    networkAccessViolation = v8->_networkAccessViolation;
    if ((HMFEqualObjects() & 1) == 0)
    {
      objc_storeStrong(&v8->_networkAccessViolation, v87);
    }

    v89 = [v6 primaryProfileVersion];

    if (v89)
    {
      v90 = objc_alloc(MEMORY[0x277D0F940]);
      v91 = [v6 primaryProfileVersion];
      v92 = [v90 initWithString:v91];
      primaryProfileVersion = v8->_primaryProfileVersion;
      v8->_primaryProfileVersion = v92;
    }

    v94 = [v6 sharedAdminAddedTimestamp];
    sharedAdminAddedTimestamp = v8->_sharedAdminAddedTimestamp;
    v8->_sharedAdminAddedTimestamp = v94;

    v96 = [v6 pairingsAuditedTimestamp];
    pairingsAuditedTimestamp = v8->_pairingsAuditedTimestamp;
    v8->_pairingsAuditedTimestamp = v96;

    v98 = [v6 pendingConfigurationIdentifier];
    pendingConfigurationIdentifier = v8->_pendingConfigurationIdentifier;
    v8->_pendingConfigurationIdentifier = v98;

    v100 = [v6 hostAccessoryUUID];
    if (v100)
    {
      v101 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v100];
    }

    else
    {
      v101 = 0;
    }

    [(HMDAccessory *)v8 _updateHost:v101];

    goto LABEL_37;
  }

  v22 = objc_autoreleasePoolPush();
  v23 = v8;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    v104 = 138543618;
    v105 = v25;
    v106 = 2112;
    v107 = v6;
    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to create accessory from transaction with nil identifier: %@", &v104, 0x16u);
  }

  objc_autoreleasePoolPop(v22);
  v26 = 0;
LABEL_38:

  v102 = *MEMORY[0x277D85DE8];
  return v26;
}

- (HMDAccessory)initWithNotificationCenter:(id)a3
{
  v5 = a3;
  v27.receiver = self;
  v27.super_class = HMDAccessory;
  v6 = [(HMDAccessory *)&v27 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notificationCenter, a3);
    v8 = HMDispatchQueueNameString();
    v9 = [v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_get_global_queue(21, 0);
    v12 = dispatch_queue_create_with_target_V2(v9, v10, v11);
    workQueue = v7->_workQueue;
    v7->_workQueue = v12;

    [MEMORY[0x277D0F7A8] blessWithImplicitContext:v7->_workQueue];
    v14 = [MEMORY[0x277CCAD78] UUID];
    uuid = v7->_uuid;
    v7->_uuid = v14;

    v16 = [MEMORY[0x277CBEB58] set];
    accessoryProfiles = v7->_accessoryProfiles;
    v7->_accessoryProfiles = v16;

    v7->_currentNetworkProtectionMode = 4;
    v7->_wiFiCredentialType = 0;
    v18 = +[HMDAccessoryNetworkAccessViolation noViolation];
    networkAccessViolation = v7->_networkAccessViolation;
    v7->_networkAccessViolation = v18;

    v7->_reachabilityPingEnabled = 0;
    v7->_reachabilityPingNotificationEnabled = 0;
    v20 = [MEMORY[0x277CBEAA8] date];
    timeBecameUnreachable = v7->_timeBecameUnreachable;
    v7->_timeBecameUnreachable = v20;

    timeBecameReachable = v7->_timeBecameReachable;
    v7->_timeBecameReachable = 0;

    v7->_shouldProcessTransactionRemoval = 1;
    v23 = objc_alloc_init(HMDFeaturesDataSource);
    featuresDataSource = v7->_featuresDataSource;
    v7->_featuresDataSource = v23;

    hashedRouteFactory = v7->_hashedRouteFactory;
    v7->_hashedRouteFactory = &__block_literal_global_45900;
  }

  return v7;
}

id __43__HMDAccessory_initWithNotificationCenter___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HMDHelper sharedHelper];
  v4 = [v3 hashedRouteIDForIdentifier:v2];

  return v4;
}

- (HMDAccessory)init
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = [(HMDAccessory *)self initWithNotificationCenter:v3];

  return v4;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t179 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t179, &__block_literal_global_442);
  }

  v3 = logCategory__hmf_once_v180;

  return v3;
}

uint64_t __27__HMDAccessory_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v180;
  logCategory__hmf_once_v180 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (BOOL)splitProductDataIntoProductGroupAndProductNumber:(id)a3 productGroup:(id *)a4 productNumber:(id *)a5
{
  v7 = a3;
  v8 = [objc_opt_class() validateProductData:v7];
  if (v8)
  {
    if (a4)
    {
      *a4 = [v7 substringWithRange:{0, 8}];
    }

    if (a5)
    {
      *a5 = [v7 substringWithRange:{8, 8}];
    }
  }

  return v8;
}

+ (BOOL)validateProductData:(id)a3
{
  v3 = a3;
  if ([v3 length] == 16)
  {
    v4 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789ABCDEFabcdef"];
    v5 = [v4 invertedSet];

    v6 = [v3 rangeOfCharacterFromSet:v5] == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5
{
  v101 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
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

  v13 = [v12 home];
  if (v13)
  {
    v14 = [HMDUserMessagePolicy userMessagePolicyWithHome:v13 userPrivilege:0 remoteAccessRequired:0];
    v15 = [v9 name];
    v16 = *MEMORY[0x277CD12B0];
    v17 = HMFEqualObjects();

    if (v17)
    {
      v18 = [HMDXPCMessagePolicy policyWithEntitlements:1];
      v94[0] = v18;
      v19 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
      v94[1] = v19;
      v20 = objc_opt_new();
      v94[2] = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:3];

      v22 = [v9 name];
LABEL_16:
      v28 = HMFCreateMessageBindingWithReceiver();

LABEL_17:
      goto LABEL_18;
    }

    v29 = [v9 name];
    v30 = *MEMORY[0x277CD0CA8];
    v31 = HMFEqualObjects();

    if (v31)
    {
      v32 = [HMDXPCMessagePolicy policyWithEntitlements:1];
      v93[0] = v32;
      v33 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
      v93[1] = v33;
      v34 = objc_opt_new();
      v93[2] = v34;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:3];

      v22 = [v9 name];
      goto LABEL_16;
    }

    v35 = [v9 name];
    v36 = HMFEqualObjects();

    if (v36)
    {
      v37 = [HMDXPCMessagePolicy policyWithEntitlements:5];
      v92[0] = v37;
      v38 = [HMDConfigurationMessagePolicy policyWithOperationTypes:7];
      v92[1] = v38;
      v39 = objc_opt_new();
      v92[2] = v39;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:3];

      v22 = [v9 name];
      goto LABEL_16;
    }

    v40 = [v9 name];
    v41 = *MEMORY[0x277CCF0C8];
    v42 = HMFEqualObjects();

    if (v42)
    {
      v43 = [HMDXPCMessagePolicy policyWithEntitlements:5];
      v91[0] = v43;
      v44 = [HMDConfigurationMessagePolicy policyWithOperationTypes:7];
      v91[1] = v44;
      v45 = objc_opt_new();
      v91[2] = v45;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:3];

      v22 = [v9 name];
      goto LABEL_16;
    }

    v48 = [v9 name];
    v49 = HMFEqualObjects();

    if (v49)
    {
      v50 = [HMDXPCMessagePolicy policyWithEntitlements:5];
      v90[0] = v50;
      v90[1] = v14;
      v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:2];

      v52 = [v9 name];
LABEL_23:
      v28 = HMFCreateMessageBindingWithReceiver();

LABEL_24:
      goto LABEL_17;
    }

    v53 = [v9 name];
    v54 = HMFEqualObjects();

    if (v54)
    {
      v55 = [HMDXPCMessagePolicy policyWithEntitlements:5];
      v89[0] = v55;
      v56 = [HMDUserMessagePolicy userMessagePolicyWithHome:v13 userPrivilege:3 remoteAccessRequired:0];
      v89[1] = v56;
      v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:2];

      v58 = [v9 name];
    }

    else
    {
      v59 = [v9 name];
      v60 = *MEMORY[0x277CCEC30];
      v61 = HMFEqualObjects();

      if (v61)
      {
        v62 = [HMDXPCMessagePolicy policyWithEntitlements:13];
        v88[0] = v62;
        v88[1] = v14;
        v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:2];

        v52 = [v9 name];
        goto LABEL_23;
      }

      v63 = [v9 name];
      v64 = HMFEqualObjects();

      if (v64)
      {
        v51 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
        [v51 setRoles:{objc_msgSend(v51, "roles") | 6}];
        v83 = [v51 copy];
        v65 = [HMDXPCMessagePolicy policyWithEntitlements:1];
        v87[0] = v65;
        v87[1] = v83;
        v87[2] = v14;
        v66 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:3];

        v67 = [v9 name];
        v28 = HMFCreateMessageBindingWithReceiver();

        goto LABEL_24;
      }

      if (isInternalBuild() && ([v9 name], v68 = objc_claimAutoreleasedReturnValue(), v69 = *MEMORY[0x277CD0A00], v70 = HMFEqualObjects(), v68, v70))
      {
        v71 = [HMDXPCMessagePolicy policyWithEntitlements:5];
        v86[0] = v71;
        v72 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
        v86[1] = v72;
        v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:2];

        v58 = [v9 name];
      }

      else
      {
        v73 = [v9 name];
        v74 = *MEMORY[0x277CCF0E0];
        v75 = HMFEqualObjects();

        if (v75)
        {
          v76 = [HMDXPCMessagePolicy policyWithEntitlements:5];
          v85[0] = v76;
          v77 = [HMDUserMessagePolicy userMessagePolicyWithHome:v13 userPrivilege:3 remoteAccessRequired:0];
          v85[1] = v77;
          v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:2];

          v58 = [v9 name];
        }

        else
        {
          v78 = [v9 name];
          v79 = *MEMORY[0x277CCEC78];
          v80 = HMFEqualObjects();

          if (!v80)
          {
            v28 = [v12 networkProtectionBindingForMessage:v9];
            goto LABEL_17;
          }

          v84[0] = v14;
          v81 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
          v84[1] = v81;
          v82 = [HMDXPCMessagePolicy policyWithEntitlements:5];
          v84[2] = v82;
          v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:3];

          v58 = [v9 name];
        }
      }
    }

    v28 = HMFCreateMessageBindingWithReceiver();

    goto LABEL_17;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = a1;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = HMFGetLogIdentifier();
    v27 = [v9 name];
    *buf = 138543874;
    v96 = v26;
    v97 = 2112;
    v98 = v27;
    v99 = 2112;
    v100 = v10;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Unable to find binding for message %@, receiver does not have valid home: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v23);
  v28 = 0;
LABEL_18:

  v46 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)metricLoggingTransportDetails
{
  v2 = [[HMDAccessoryMetricTransportDetails alloc] initWithAccessory:self];

  return v2;
}

- (void)populateVendorDetailsForCoreAnalytics:(id)a3 keyPrefix:(id)a4
{
  v6 = a4;
  v7 = a3;
  v20 = [[HMDAccessoryMetricVendorDetails alloc] initWithAccessory:self];
  v8 = [(HMDAccessoryMetricVendorDetails *)v20 productData];
  v9 = [v6 stringByAppendingString:@"ProductData"];
  [v7 setObject:v8 forKeyedSubscript:v9];

  v10 = [(HMDAccessoryMetricVendorDetails *)v20 manufacturer];
  v11 = [v6 stringByAppendingString:@"Manufacturer"];
  [v7 setObject:v10 forKeyedSubscript:v11];

  v12 = [(HMDAccessoryMetricVendorDetails *)v20 model];
  v13 = [v6 stringByAppendingString:@"Model"];
  [v7 setObject:v12 forKeyedSubscript:v13];

  v14 = [(HMDAccessoryMetricVendorDetails *)v20 firmwareVersion];
  v15 = [v6 stringByAppendingString:@"FirmwareVersion"];
  [v7 setObject:v14 forKeyedSubscript:v15];

  v16 = [(HMDAccessoryMetricVendorDetails *)v20 category];
  v17 = [v6 stringByAppendingString:@"Category"];
  [v7 setObject:v16 forKeyedSubscript:v17];

  v18 = [(HMDAccessoryMetricVendorDetails *)v20 differentiationNumber];
  v19 = [v6 stringByAppendingString:@"DifferentiationNumber"];

  [v7 setObject:v18 forKeyedSubscript:v19];
}

- (id)metricLoggingVendorDetails
{
  v2 = [[HMDAccessoryMetricVendorDetails alloc] initWithAccessory:self];

  return v2;
}

- (NSDictionary)assistantObject
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessory *)self home];
  if (v3 && ([(HMDAccessory *)self name], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = objc_alloc(MEMORY[0x277CBEB38]);
    v28[0] = *MEMORY[0x277D48148];
    v6 = [(HMDAccessory *)self name:@"objectType"];
    v28[1] = v6;
    v27[2] = @"objectIdentifier";
    v7 = [(HMDAccessory *)self urlString];
    v28[2] = v7;
    v27[3] = @"objectHome";
    v8 = [v3 name];
    v28[3] = v8;
    v27[4] = @"objectHomeIdentifier";
    v9 = [v3 urlString];
    v27[5] = @"objectReference";
    v28[4] = v9;
    v28[5] = self;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:6];
    v11 = [v5 initWithDictionary:v10];

    v12 = [(HMDAccessory *)self hashRouteID];
    if (v12)
    {
      [v11 setObject:v12 forKey:@"objectHashedRouteUID"];
    }

    v13 = [(HMDAccessory *)self room];
    v14 = [v13 name];
    if (v14)
    {
      v15 = [v3 name];
      v16 = [v14 isEqualToString:v15];

      if ((v16 & 1) == 0)
      {
        [v11 setObject:v14 forKey:@"objectRoom"];
        v17 = [v13 urlString];
        [v11 setObject:v17 forKey:@"objectRoomIdentifier"];
      }
    }

    v18 = [v11 copy];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [(HMDAccessory *)self name];
      v23 = [(HMDAccessory *)self uuid];
      v24 = [v23 UUIDString];
      *buf = 138543874;
      v30 = v21;
      v31 = 2112;
      v32 = v22;
      v33 = 2112;
      v34 = v24;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Skipping because accessory.home or accessory.name is nil for %@/%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v18 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v18;
}

- (NSString)urlString
{
  v2 = *MEMORY[0x277CCF278];
  v3 = [(HMDAccessory *)self uuid];
  v4 = hm_assistantIdentifier();

  return v4;
}

- (HMDNetworkRouterFirewallRuleAccessoryIdentifier)metadataIdentifier
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessory *)self productData];
  if (v3)
  {
    v4 = [(HMDAccessory *)self firmwareVersion];
    v5 = [HMDNetworkRouterFirewallRuleAccessoryIdentifier createWithProductData:v3 firmwareVersion:v4];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v18 = 138543874;
        v19 = v15;
        v20 = 2112;
        v21 = v3;
        v22 = 2112;
        v23 = v4;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to generate meta-data identifier with product data '%@' and firmware version '%@'", &v18, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v11;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to generate meta-data identifier because the productData is nil -- %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v6 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

@end