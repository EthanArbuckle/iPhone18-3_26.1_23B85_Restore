@interface HMDUser
+ (HMDUser)userWithDictionary:(id)a3 home:(id)a4;
+ (id)UUIDWithUserID:(id)a3 forHomeIdentifier:(id)a4 uuid:(id)a5 pairingIdentity:(id)a6;
+ (id)logCategory;
+ (id)ownerWithUserID:(id)a3 home:(id)a4 pairingIdentity:(id)a5 homeManager:(id)a6;
+ (id)privateZoneNameForUserUUID:(id)a3;
+ (id)sharedZoneNameForUserUUID:(id)a3;
+ (id)userIDForAccountHandle:(id)a3;
+ (unint64_t)hmdUserPrivilegeFromHMMTRUserPrivilege:(unint64_t)a3;
+ (unint64_t)hmmtrUserPrivilegeFromHMDUserPrivilege:(unint64_t)a3;
+ (unint64_t)privilegeFromDictionary:(id)a3;
- (AVOutputDeviceAuthorizedPeer)av_authorizedPeer;
- (BOOL)_isExplicitContentValueEnabledForAppleMediaAccessory:(id)a3;
- (BOOL)_setRemoteAccessAllowed:(BOOL)a3;
- (BOOL)cloudShareTrustManager:(id)a3 shouldShareTrustWithUser:(id)a4;
- (BOOL)hasCameraClipsAccess;
- (BOOL)hasDeviceWithHomeKitVersionGreaterThanVersion:(id)a3;
- (BOOL)isAccountEqualWithUser:(id)a3;
- (BOOL)isAnnounceAccessAllowed;
- (BOOL)isCurrentUser;
- (BOOL)isCurrentUserAndOwner;
- (BOOL)isEqual:(id)a3;
- (BOOL)isOwnerCapableForTrustManager:(id)a3;
- (BOOL)isRemoteAccessAllowed;
- (BOOL)isRunningOnHomeOwnersDevice;
- (BOOL)isValid;
- (BOOL)matchingPairingIdentityIdentifier:(id)a3;
- (BOOL)refreshDisplayName;
- (BOOL)requiresMakoSupport;
- (BOOL)updateAdministrator:(BOOL)a3;
- (BOOL)userDataController:(id)a3 isAccessoryUserListeningHistoryUpdateCapable:(id)a4;
- (BOOL)userDataController:(id)a3 isAppleMediaAccessory:(id)a4;
- (BOOL)userDataController:(id)a3 isHAPAccessory:(id)a4;
- (BOOL)userDataController:(id)a3 isMediaContentProfileCapableAccessoryID:(id)a4;
- (BOOL)userDataController:(id)a3 isPersonalRequestCapableAccessoryID:(id)a4;
- (HAPPairingIdentity)pairingIdentity;
- (HMDAccountIdentifier)accountIdentifier;
- (HMDAssistantAccessControl)assistantAccessControl;
- (HMDHome)home;
- (HMDPhotosPersonManager)photosPersonManager;
- (HMDUser)initWithAccountHandle:(id)a3 home:(id)a4 pairingIdentity:(id)a5 privilege:(unint64_t)a6;
- (HMDUser)initWithAccountHandle:(id)a3 home:(id)a4 pairingIdentity:(id)a5 privilege:(unint64_t)a6 dataSource:(id)a7;
- (HMDUser)initWithAccountHandle:(id)a3 homeUUID:(id)a4 pairingIdentity:(id)a5 privilege:(unint64_t)a6;
- (HMDUser)initWithAccountHandle:(id)a3 homeUUID:(id)a4 pairingIdentity:(id)a5 privilege:(unint64_t)a6 keyStore:(id)a7 dataSource:(id)a8;
- (HMDUser)initWithCoder:(id)a3;
- (HMDUser)initWithModelObject:(id)a3;
- (HMPhotosPersonManagerSettings)photosPersonManagerSettings;
- (HMUserPresenceAuthorization)presenceAuthStatus;
- (NSData)nfcIssuerKeyIdentifier;
- (NSData)publicKey;
- (NSNumber)notificationContextHAPIdentifier;
- (NSNumber)notificationContextNFCIdentifier;
- (NSString)displayName;
- (NSString)pairingUsername;
- (NSString)userID;
- (NSUUID)assistantAccessControlModelUUID;
- (id)_initWithCoder:(id)a3;
- (id)account;
- (id)accountHandle;
- (id)allAccessoryUUID;
- (id)announceNotificationFileName;
- (id)announceNotificationFileNameForUserUUID:(id)a3;
- (id)announceUserSettingsModelWithChangeType:(unint64_t)a3;
- (id)attributeDescriptions;
- (id)backingStoreController:(id)a3 createParticipantManagerForCloudZone:(id)a4;
- (id)backingStoreObjects:(int64_t)a3;
- (id)dictionaryEncoding;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (id)fetchCloudShareID;
- (id)logIdentifier;
- (id)messageDestination;
- (id)modelObjectWithChangeType:(unint64_t)a3 version:(int64_t)a4;
- (id)newModelWithChangeType:(unint64_t)a3;
- (id)privateSettingValuesByKeyPath;
- (id)privateZoneName;
- (id)pushTokensForDevicesObservingSubjectDevice:(id)a3 subActivity:(id)a4;
- (id)settingsController:(id)a3 willUpdateSettingAtKeyPath:(id)a4 withValue:(id)a5;
- (id)settingsControllerFollowerKeyPaths:(id)a3;
- (id)sharedSettingValuesByKeyPath;
- (id)sharedZoneName;
- (id)shortDescription;
- (id)syncDataFileNameWithHomeUUID:(id)a3;
- (id)trustTargetUUID;
- (id)zoneNameForCloudShareTrustManager:(id)a3;
- (int64_t)sharedUserSettingsLogEventBackingStoreControllerRunState;
- (int64_t)userCloudShareWithOwnerMessagingState;
- (uint64_t)announceUserAccessLevelFromAnnounceAccessAllowed:(void *)a3 announceAccessLevel:;
- (unint64_t)_compatiblePrivilege;
- (unint64_t)allowedRemoteEventAccessUserTypes;
- (unint64_t)announceAccessLevel;
- (unint64_t)audioAnalysisUserDropInAccessLevel;
- (unint64_t)camerasAccessLevel;
- (unint64_t)defaultAnnounceUserAccessLevel;
- (unint64_t)hash;
- (unint64_t)privilege;
- (void)__handleAddedAccount:(id)a3;
- (void)__handleRemovedAccount:(id)a3;
- (void)_encodeWithCoder:(id)a3;
- (void)_handleAnnounceSettingsUpdate:(id)a3;
- (void)_handleAssistantAccessControlUpdate:(id)a3;
- (void)_handleCloudShareWithOwnerMessageError;
- (void)_handleLegacyPairingIdentityRequest:(id)a3;
- (void)_handleMediaContentProfileAccessControlUpdate:(id)a3;
- (void)_handleMultiUserSharePayloadRequest:(id)a3;
- (void)_handleNeedsiTunesMultiUserRepair:(id)a3;
- (void)_handlePairingIdentityRequest:(id)a3;
- (void)_handleShareClientRepairRequest:(id)a3;
- (void)_handleShareLookupInfoRequest:(id)a3;
- (void)_handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs:(id)a3;
- (void)_recoverTrustManagerDueToUUIDChange;
- (void)_recoverUserSettingsDueToUUIDChange;
- (void)_sendSecureShareClientPayloadToMostEligibleDevice:(id)a3 completion:(id)a4;
- (void)_transactionUserUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)_updateAnnounceNotificationMode:(unint64_t)a3;
- (void)applyConditionalValueUpdateToModels:(id)a3;
- (void)backingStoreController:(id)a3 didUpdatePhotosPersonManagerSettingsModel:(id)a4 previousPhotosPersonManagerSettingsModel:(id)a5;
- (void)cloudShareTrustManager:(id)a3 didFetchOwnerCloudShareID:(id)a4;
- (void)cloudShareTrustManager:(id)a3 didRemoveUserWithUUID:(id)a4;
- (void)configureCloudShareTrustManager;
- (void)configurePersonSettingsManager;
- (void)configurePhotosPersonDataManager;
- (void)configureWithHome:(id)a3;
- (void)dealloc;
- (void)deregisterForMessages;
- (void)deregisterIDSActivityObserver:(id)a3;
- (void)deregisterIDSActivityObserver:(id)a3 subActivity:(id)a4 subjectDevice:(id)a5;
- (void)deregisterIdentity;
- (void)didFinishConfiguringForCloudShareTrustManager:(id)a3;
- (void)didRemoveTrustZoneInCloudShareTrustManager:(id)a3;
- (void)didStartBackingStoreController:(id)a3;
- (void)didStartLocalZoneForBackingStoreController:(id)a3;
- (void)didStopBackingStoreController:(id)a3;
- (void)enableUserListeningHistoryForAccessory:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)fetchPairingIdentityForClientWithMessage:(id)a3;
- (void)handleAssistantAccessControlUpdate:(id)a3;
- (void)handleMediaContentProfileAccessControlUpdate:(id)a3;
- (void)handleRemovedAccessory:(id)a3;
- (void)handleUpdatedCATForUser;
- (void)handleUserDataControllerInitialized:(id)a3;
- (void)handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs:(id)a3;
- (void)initializeUserSettingsWithHome:(id)a3;
- (void)migrateCloudZone:(id)a3 migrationQueue:(id)a4 completion:(id)a5;
- (void)postUserSettingsUpdatedNotificationWithReason:(id)a3;
- (void)recoverUserCloudDataDueToUUIDChangeFromOldUUID:(id)a3;
- (void)registerForMessages;
- (void)registerIDSActivityObserver:(id)a3 subActivity:(id)a4 subjectDevice:(id)a5;
- (void)registerIdentity;
- (void)removeAccessoriesFromAssistantAccessControlList:(id)a3;
- (void)removeCloudData;
- (void)saveAnnounceNotificationModeForCurrentUserToLocalDisk;
- (void)savePersonClassificationSettingsForCurrentUserToLocalDisk;
- (void)saveSyncDataToLocalDisk:(id)a3;
- (void)setAccountHandle:(id)a3;
- (void)setAccountIdentifier:(id)a3;
- (void)setAnnounceAccessLevel:(unint64_t)a3;
- (void)setAssistantAccessControl:(id)a3;
- (void)setAudioAnalysisUserDropInAccessLevel:(unint64_t)a3;
- (void)setCamerasAccessLevel:(unint64_t)a3;
- (void)setDisplayName:(id)a3;
- (void)setHome:(id)a3;
- (void)setPairingIdentity:(id)a3;
- (void)setPresenceAuthStatus:(id)a3;
- (void)setPrivilege:(unint64_t)a3;
- (void)setUserCloudShareWithOwnerMessagingState:(int64_t)a3;
- (void)setUserID:(id)a3;
- (void)settingsController:(id)a3 didUpdateWithCompletion:(id)a4;
- (void)transactionObjectRemoved:(id)a3 message:(id)a4;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)unconfigure;
- (void)updateAnnounceNotificationMode:(unint64_t)a3;
- (void)updateCloudShareID:(id)a3;
- (void)updateIDSActivityObserver:(id)a3;
- (void)updateSharedBackingStoreControllerParticipants;
@end

@implementation HMDUser

+ (unint64_t)hmdUserPrivilegeFromHMMTRUserPrivilege:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return 2;
  }

  else
  {
    return qword_253D4B608[a3 - 1];
  }
}

+ (unint64_t)hmmtrUserPrivilegeFromHMDUserPrivilege:(unint64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return qword_253D4B5E0[a3];
  }
}

- (AVOutputDeviceAuthorizedPeer)av_authorizedPeer
{
  v3 = [(HMDUser *)self pairingIdentity];
  if (v3)
  {
    v4 = [HMDUser av_authorizedPeerForPairingIdentity:v3 isOwner:[(HMDUser *)self privilege]== 3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasCameraClipsAccess
{
  v3 = [(HMDUser *)self isRemoteAccessAllowed];
  if (v3)
  {
    v4 = [(HMDUser *)self camerasAccessLevel];

    LOBYTE(v3) = MEMORY[0x282121570](v4);
  }

  return v3;
}

- (NSData)nfcIssuerKeyIdentifier
{
  v2 = [(HMDUser *)self pairingIdentity];
  v3 = [HMDHome nfcIssuerKeyIdentifierWithPairingIdentity:v2];

  return v3;
}

- (id)allAccessoryUUID
{
  v2 = [(HMDUser *)self home];
  v3 = [v2 accessories];
  v4 = [v3 na_map:&__block_literal_global_803];

  return v4;
}

- (BOOL)_isExplicitContentValueEnabledForAppleMediaAccessory:(id)a3
{
  v4 = [a3 settingsController];
  v5 = [v4 rootGroup];
  v6 = [v5 groups];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__HMDUser__isExplicitContentValueEnabledForAppleMediaAccessory___block_invoke;
  v8[3] = &unk_279730DD8;
  v8[4] = self;
  LOBYTE(self) = [v6 na_any:v8];

  return self;
}

uint64_t __64__HMDUser__isExplicitContentValueEnabledForAppleMediaAccessory___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 settings];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__HMDUser__isExplicitContentValueEnabledForAppleMediaAccessory___block_invoke_2;
  v6[3] = &unk_279730DB0;
  v6[4] = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

uint64_t __64__HMDUser__isExplicitContentValueEnabledForAppleMediaAccessory___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 value];
  v5 = [v3 keyPath];
  v6 = [v5 isEqualToString:@"root.music.allowExplicitContent"];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@setting found = %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [v4 BOOLValue];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)applyConditionalValueUpdateToModels:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUser *)self home];
  v6 = [v5 accessories];
  v7 = [v6 na_map:&__block_literal_global_699];

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v18 = v11;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Aggregating settings to migrate user settings for Accessories = %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__HMDUser_applyConditionalValueUpdateToModels___block_invoke_700;
  v14[3] = &unk_279730D88;
  v15 = v7;
  v16 = v9;
  v12 = v7;
  [v4 na_each:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __47__HMDUser_applyConditionalValueUpdateToModels___block_invoke_700(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_28668A8B0])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    if ([*(a1 + 32) count])
    {
      v6 = [v5 nameForKeyPath];
      v7 = [v6 isEqualToString:@"allowExplicitContent"];

      if (v7)
      {
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __47__HMDUser_applyConditionalValueUpdateToModels___block_invoke_2;
        v17[3] = &unk_2797333B0;
        v8 = *(a1 + 32);
        v17[4] = *(a1 + 40);
        v9 = [v8 na_any:v17];
        v10 = objc_autoreleasePoolPush();
        v11 = *(a1 + 40);
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = HMFGetLogIdentifier();
          v14 = HMFBooleanToString();
          *buf = 138543618;
          v19 = v13;
          v20 = 2112;
          v21 = v14;
          _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Aggregated value = %@ for allowExplicitContent", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v10);
        v15 = [MEMORY[0x277CCABB0] numberWithBool:v9];
        [v5 setNumberValue:v15];
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __47__HMDUser_applyConditionalValueUpdateToModels___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@checking allowExplicitContent setting for accessory %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) _isExplicitContentValueEnabledForAppleMediaAccessory:v3];

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void *__47__HMDUser_applyConditionalValueUpdateToModels___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
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

  return v3;
}

- (id)pushTokensForDevicesObservingSubjectDevice:(id)a3 subActivity:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDUser *)self sharedBackingStoreController];
  v9 = [v7 identifier];

  v10 = [v8 queryPushTokensForDevicesObservingSubjectDevice:v9 subActivity:v6];

  return v10;
}

- (void)deregisterIDSActivityObserver:(id)a3
{
  v4 = a3;
  v5 = [(HMDUser *)self sharedBackingStoreController];
  [v5 deregisterObserverDeviceIdentifier:v4];
}

- (void)deregisterIDSActivityObserver:(id)a3 subActivity:(id)a4 subjectDevice:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v14 = [(HMDUser *)self sharedBackingStoreController];
  v11 = [v10 identifier];
  v12 = [v10 pushToken];

  v13 = [v8 identifier];

  [v14 deregisterObserverDeviceIdentifier:v11 observerPushToken:v12 subActivity:v9 subjectDeviceIdentifier:v13];
}

- (void)updateIDSActivityObserver:(id)a3
{
  v4 = a3;
  v7 = [(HMDUser *)self sharedBackingStoreController];
  v5 = [v4 identifier];
  v6 = [v4 pushToken];

  [v7 updateObserverDeviceIdentifier:v5 observerPushToken:v6];
}

- (void)registerIDSActivityObserver:(id)a3 subActivity:(id)a4 subjectDevice:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v14 = [(HMDUser *)self sharedBackingStoreController];
  v11 = [v10 identifier];
  v12 = [v10 pushToken];

  v13 = [v8 identifier];

  [v14 registerObserverDeviceIdentifier:v11 observerPushToken:v12 subActivity:v9 subjectDeviceIdentifier:v13];
}

- (void)cloudShareTrustManager:(id)a3 didRemoveUserWithUUID:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDUser *)self home];
  v9 = [v8 userWithUUID:v7];

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v13)
    {
      v14 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v14;
      v21 = 2112;
      v22 = v9;
      v15 = "%{public}@Trust manager removed user: %@";
      v16 = v12;
      v17 = 22;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, v15, &v19, v17);
    }
  }

  else if (v13)
  {
    v14 = HMFGetLogIdentifier();
    v19 = 138543362;
    v20 = v14;
    v15 = "%{public}@Trust manager removed unknown user";
    v16 = v12;
    v17 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v10);
  v18 = *MEMORY[0x277D85DE8];
}

- (void)didRemoveTrustZoneInCloudShareTrustManager:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Removed cloud share trust", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDUser *)v6 setUserCloudShareWithOwnerMessagingState:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)didFinishConfiguringForCloudShareTrustManager:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Trust has been configured", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)cloudShareTrustManager:(id)a3 didFetchOwnerCloudShareID:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Trust manager did fetch owner cloud share id: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDUser *)v9 updateCloudShareID:v7];
  [(HMDUser *)v9 setUserCloudShareWithOwnerMessagingState:1];

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)isOwnerCapableForTrustManager:(id)a3
{
  v3 = [(HMDUser *)self home];
  v4 = [v3 isOwnerTrustZoneCapable];

  return v4;
}

- (id)zoneNameForCloudShareTrustManager:(id)a3
{
  v3 = [(HMDUser *)self uuid];
  v4 = [v3 UUIDString];
  v5 = [@"trust-" stringByAppendingString:v4];

  return v5;
}

- (BOOL)cloudShareTrustManager:(id)a3 shouldShareTrustWithUser:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (-[HMDUser isOwner](self, "isOwner") && -[HMDUser isCurrentUser](self, "isCurrentUser") && ([v7 isOwner] & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v14;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Will share cloud share trust with user: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_recoverTrustManagerDueToUUIDChange
{
  v11 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(HMDUser *)self cloudShareTrustManager];

  if (v3)
  {
    [(HMDUser *)self setCloudShareTrustManager:0];
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Configure new trust manager", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMDUser *)v5 configureCloudShareTrustManager];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)configureCloudShareTrustManager
{
  if ([(HMDUser *)self isOwner])
  {
    v3 = [(HMDUser *)self home];
    if (v3)
    {
      v4 = [HMDCloudShareMessenger alloc];
      v5 = [(HMDUser *)self trustTargetUUID];
      v19 = [(HMDCloudShareMessenger *)v4 initWithMessageTargetUUID:v5 workQueue:self->_queue home:v3];

      v6 = [v3 homeManager];
      v7 = [v6 metricsManager];

      v8 = [HMDCloudShareTrustManager alloc];
      v9 = +[HMDDatabase defaultDatabase];
      v10 = [(HMDUser *)self isCurrentUser];
      queue = self->_queue;
      v12 = [(HMDUser *)self cloudShareID];
      v13 = [v7 logEventSubmitter];
      v14 = [v7 dailyScheduler];
      v15 = [(HMDCloudShareTrustManager *)v8 initWithDatabase:v9 isOwnedTrust:v10 queue:queue shareMessenger:v19 ownerCloudShareID:v12 logEventSubmitter:v13 dailyScheduler:v14];
      [(HMDUser *)self setCloudShareTrustManager:v15];

      v16 = [(HMDUser *)self cloudShareTrustManager];
      [v16 setDataSource:self];

      v17 = [(HMDUser *)self cloudShareTrustManager];
      [v17 setDelegate:self];

      v18 = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__HMDUser_configureCloudShareTrustManager__block_invoke;
      block[3] = &unk_279735D00;
      block[4] = self;
      dispatch_async(v18, block);
    }
  }
}

void __42__HMDUser_configureCloudShareTrustManager__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) cloudShareTrustManager];
  [v1 configure];
}

- (id)trustTargetUUID
{
  if (trustTargetUUID_onceToken != -1)
  {
    dispatch_once(&trustTargetUUID_onceToken, &__block_literal_global_695);
  }

  v3 = MEMORY[0x277CCAD78];
  v4 = trustTargetUUID_namespace;
  v5 = [(HMDUser *)self uuid];
  v6 = [v5 UUIDString];
  v7 = [v6 dataUsingEncoding:4];
  v8 = [v3 hmf_UUIDWithNamespace:v4 data:v7];

  return v8;
}

uint64_t __26__HMDUser_trustTargetUUID__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"79E0D39A-83CC-42C1-99FC-5B4E0745E284"];
  v1 = trustTargetUUID_namespace;
  trustTargetUUID_namespace = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)updateCloudShareID:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUser *)self cloudShareID];

  if (!v5)
  {
    [(HMDUser *)self setCloudShareID:v4];
    v14 = [(HMDUser *)self home];
    [v14 saveToCurrentAccountWithReason:@"Update User Cloud Share ID"];

    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@User has updated their cloud share id and is cloud share ready", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v12 = [(HMDUser *)v16 cloudShareIDFuture];
    v13 = [(HMDUser *)v16 cloudShareID];
    [(HMDAssertionLogEvent *)v12 finishWithResult:v13];
    goto LABEL_9;
  }

  v6 = [(HMDUser *)self cloudShareID];
  v7 = [v4 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Cloud Share ID has unexpectedly changed", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [[HMDAssertionLogEvent alloc] initWithReason:@"Cloud Share ID has unexpectedly changed"];
    v13 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v13 submitLogEvent:v12];
LABEL_9:
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)fetchCloudShareID
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMDUser *)v4 cloudShareIDFuture];
    v11 = 138543618;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching cloud share ID by returning future: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [(HMDUser *)v4 cloudShareIDFuture];
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __83__HMDUser_updateSupportsHH2MigrationByOwnerManual_supportsHH2MigrationByOwnerAuto___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v10 = HMFBooleanToString();
      v11 = *(a1 + 41);
      v12 = HMFBooleanToString();
      v15 = 138544130;
      v16 = v8;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Failed to completed updating supports automatic HH2 migration by owner manual to %@, by owner auto to %@ with error %@", &v15, 0x2Au);
    }
  }

  else if (v7)
  {
    v13 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v13;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Completed updating supports automatic HH2 migration by owner", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)userDataController:(id)a3 isHAPAccessory:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDUser *)self home];
  v9 = [v8 accessoryWithUUID:v7];
  v10 = v9;
  if (!v8)
  {
    v11 = objc_autoreleasePoolPush();
    v16 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v14;
      v23 = 2112;
      v24 = v7;
      v15 = "%{public}@Don't have home to find accessory %@.";
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v11);
    goto LABEL_9;
  }

  if (!v9)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v14;
      v23 = 2112;
      v24 = v7;
      v15 = "%{public}@Did not find accessory %@.";
LABEL_7:
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, v15, &v21, 0x16u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
  v17 = v10;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v19 = *MEMORY[0x277D85DE8];
  return isKindOfClass & (v17 != 0);
}

- (BOOL)userDataController:(id)a3 isAppleMediaAccessory:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDUser *)self home];
  v9 = [v8 accessoryWithUUID:v7];
  v10 = v9;
  if (!v8)
  {
    v11 = objc_autoreleasePoolPush();
    v16 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v14;
      v23 = 2112;
      v24 = v7;
      v15 = "%{public}@Don't have home to find accessory %@.";
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v11);
    goto LABEL_9;
  }

  if (!v9)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v14;
      v23 = 2112;
      v24 = v7;
      v15 = "%{public}@Did not find accessory %@.";
LABEL_7:
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, v15, &v21, 0x16u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
  v17 = v10;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v19 = *MEMORY[0x277D85DE8];
  return isKindOfClass & (v17 != 0);
}

- (void)postUserSettingsUpdatedNotificationWithReason:(id)a3
{
  v4 = a3;
  v7 = [(HMDUser *)self home];
  v5 = [v7 homeManager];
  v6 = [(HMDUser *)self uuid];
  [v5 notifyClientsOfUserSettingsChangeWithReason:v4 sourceUUID:v6];
}

- (BOOL)userDataController:(id)a3 isAccessoryUserListeningHistoryUpdateCapable:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDUser *)self home];
  v9 = [v8 accessoryWithUUID:v7];
  v10 = v9;
  if (!v8)
  {
    v18 = objc_autoreleasePoolPush();
    v17 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v20;
      v26 = 2112;
      v27 = v7;
      v21 = "%{public}@Don't have home to find accessory %@.";
LABEL_15:
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, v21, &v24, 0x16u);
    }

LABEL_16:

    objc_autoreleasePoolPop(v18);
    LOBYTE(v17) = 0;
    goto LABEL_19;
  }

  if (!v9)
  {
    v18 = objc_autoreleasePoolPush();
    v17 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v20;
      v26 = 2112;
      v27 = v7;
      v21 = "%{public}@Did not find accessory %@.";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

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
  v13 = v10;
  objc_opt_class();
  v14 = objc_opt_isKindOfClass() & 1;
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (v14)
  {
    LOBYTE(v17) = 1;
  }

  else
  {
    LODWORD(v17) = [v12 supportsSiriEndpoint];
  }

LABEL_19:
  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)userDataController:(id)a3 isMediaContentProfileCapableAccessoryID:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDUser *)self home];
  v9 = [v8 accessoryWithUUID:v7];
  v10 = v9;
  if (!v8)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v15;
      v28 = 2112;
      v29 = v7;
      v16 = "%{public}@Don't have home to find accessory %@.";
LABEL_9:
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, v16, &v26, 0x16u);
    }

LABEL_10:

    objc_autoreleasePoolPop(v12);
    goto LABEL_11;
  }

  if (!v9)
  {
    v12 = objc_autoreleasePoolPush();
    v17 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v15;
      v28 = 2112;
      v29 = v7;
      v16 = "%{public}@Did not find accessory %@.";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if ([v9 supportsMediaContentProfile])
  {
    v11 = 1;
    goto LABEL_14;
  }

LABEL_11:
  v18 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    v22 = [v10 category];
    v23 = [v10 supportsMediaContentProfile];
    v26 = 138544386;
    v27 = v21;
    v28 = 2112;
    v29 = v8;
    v30 = 2112;
    v31 = v10;
    v32 = 2112;
    v33 = v22;
    v34 = 1024;
    v35 = v23;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Accessory is not valid home: %@, accessory: %@, category: %@, supports: %d", &v26, 0x30u);
  }

  objc_autoreleasePoolPop(v18);
  v11 = 0;
LABEL_14:

  v24 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)userDataController:(id)a3 isPersonalRequestCapableAccessoryID:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDUser *)self home];
  v9 = [v8 accessoryWithUUID:v7];
  v10 = v9;
  if (!v8)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v15;
      v28 = 2112;
      v29 = v7;
      v16 = "%{public}@Don't have home to find accessory %@.";
LABEL_9:
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, v16, &v26, 0x16u);
    }

LABEL_10:

    objc_autoreleasePoolPop(v12);
    goto LABEL_11;
  }

  if (!v9)
  {
    v12 = objc_autoreleasePoolPush();
    v17 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v15;
      v28 = 2112;
      v29 = v7;
      v16 = "%{public}@Did not find accessory %@.";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if ([v9 supportsPersonalRequests])
  {
    v11 = 1;
    goto LABEL_14;
  }

LABEL_11:
  v18 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    v22 = [v10 category];
    v23 = [v10 supportsPersonalRequests];
    v26 = 138544386;
    v27 = v21;
    v28 = 2112;
    v29 = v8;
    v30 = 2112;
    v31 = v10;
    v32 = 2112;
    v33 = v22;
    v34 = 1024;
    v35 = v23;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Accessory is not valid home: %@, accessory: %@, category: %@, supports: %d", &v26, 0x30u);
  }

  objc_autoreleasePoolPop(v18);
  v11 = 0;
LABEL_14:

  v24 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)backingStoreController:(id)a3 didUpdatePhotosPersonManagerSettingsModel:(id)a4 previousPhotosPersonManagerSettingsModel:(id)a5
{
  queue = self->_queue;
  v7 = a4;
  dispatch_assert_queue_V2(queue);
  v8 = [(HMDUser *)self photosPersonDataManager];
  [v8 handleUpdatedSettingsModel:v7];
}

- (id)backingStoreController:(id)a3 createParticipantManagerForCloudZone:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDUser *)self sharedBackingStoreController];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = [HMDCloudShareParticipantsManager alloc];
    queue = self->_queue;
    v12 = [(HMDUser *)self home];
    v13 = [(HMDCloudShareParticipantsManager *)v10 initWithQueue:queue cloudZone:v6 home:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)didStopBackingStoreController:(id)a3
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
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Did stop backing store controller: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDUser *)v6 postUserSettingsUpdatedNotificationWithReason:@"User Settings Removed"];
  v9 = [(HMDUser *)v6 privateBackingStoreController];

  if (v9 == v4)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v6;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Nil-ing out the person settings manager", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    [(HMDUser *)v11 setPersonSettingsManager:0];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)didStartLocalZoneForBackingStoreController:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
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
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Did start local zone for backing store controller: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDUser *)v6 privateBackingStoreController];

  if (v9 == v4)
  {
    [(HMDUser *)v6 configurePersonSettingsManager];
  }

  else
  {
    v10 = [(HMDUser *)v6 sharedBackingStoreController];

    if (v10 == v4)
    {
      [(HMDUser *)v6 configurePhotosPersonDataManager];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)didStartBackingStoreController:(id)a3
{
  v4 = a3;
  v5 = [(HMDUser *)self userDataController];
  [v5 handleStartForZoneController:v4];
}

- (BOOL)isRunningOnHomeOwnersDevice
{
  v2 = [(HMDUser *)self home];
  v3 = [v2 owner];
  v4 = [v2 currentUser];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (id)settingsControllerFollowerKeyPaths:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"root.music.allowiTunesAccount";
  v7[0] = @"root.siri.identifyVoice";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)settingsController:(id)a3 willUpdateSettingAtKeyPath:(id)a4 withValue:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![v9 isEqualToString:@"root.siri.identifyVoice"] || objc_msgSend(v10, "type") != 2)
  {
    goto LABEL_8;
  }

  v11 = [v10 numberValue];
  v12 = [v11 isEqualToNumber:&unk_28662A1D8];

  if (v12)
  {
    v13 = [MEMORY[0x277CBEB18] array];
    v14 = [(HMDUser *)self userDataController];
    v15 = [v14 updateListeningHistoryModelToReset];

    [(HMDSettingAttachedSettingUpdate *)v13 addObject:v15];
    if ([(HMDUser *)self isOwner])
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __67__HMDUser_settingsController_willUpdateSettingAtKeyPath_withValue___block_invoke;
      aBlock[3] = &unk_279735D00;
      aBlock[4] = self;
      v16 = _Block_copy(aBlock);
    }

    else
    {
      v23 = [(HMDUser *)self userDataController];
      v24 = [v23 assistantAccessControlModelToReset];

      if (v24)
      {
        [(HMDSettingAttachedSettingUpdate *)v13 addObject:v24];
      }

      else
      {
        v25 = objc_autoreleasePoolPush();
        v26 = self;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543362;
          v37 = v28;
          _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Did not get access control model to turn off voice ID!", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v25);
      }

      v16 = 0;
    }

    v29 = [objc_alloc(MEMORY[0x277CD1DD0]) initNumberSettingWithValue:&unk_28662A1D8];
    v30 = [[HMDSettingAttachedSettingUpdate alloc] initWithKeyPath:@"root.music.playbackInfluencesForYou" settingValue:v29];
    v31 = [HMDSettingOnChangeAttachedUpdatesResult alloc];
    v35 = v30;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
    v20 = [(HMDSettingOnChangeAttachedUpdatesResult *)v31 initWithSettingsToUpdate:v32 models:v13 onCommitCompletion:v16];

    goto LABEL_19;
  }

  v17 = [v10 numberValue];
  v18 = [v17 isEqualToNumber:&unk_28662A1F0];

  if (!v18)
  {
LABEL_8:
    v20 = 0;
    goto LABEL_9;
  }

  v16 = [objc_alloc(MEMORY[0x277CD1DD0]) initNumberSettingWithValue:&unk_28662A1F0];
  v13 = [[HMDSettingAttachedSettingUpdate alloc] initWithKeyPath:@"root.music.allowiTunesAccount" settingValue:v16];
  v19 = [HMDSettingOnChangeAttachedUpdatesResult alloc];
  v34 = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  v20 = [(HMDSettingOnChangeAttachedUpdatesResult *)v19 initWithSettingsToUpdate:v15 models:MEMORY[0x277CBEBF8] onCommitCompletion:0];
LABEL_19:

LABEL_9:
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

void __67__HMDUser_settingsController_willUpdateSettingAtKeyPath_withValue___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v21 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Identify voice was turned off for owner.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [HMDAssistantAccessControl alloc];
  v7 = *(a1 + 32);
  v8 = [v7 assistantAccessControl];
  v9 = [v8 isEnabled];
  v10 = [*(a1 + 32) assistantAccessControl];
  v11 = [v10 areActivityNotificationsEnabledForPersonalRequests];
  v12 = [(HMDAssistantAccessControl *)v6 initWithUser:v7 appleAccessories:MEMORY[0x277CBEBF8] hapAccessoryIdentifiers:MEMORY[0x277CBEBF8] enabled:v9 activityNotificationsEnabledForPersonalRequests:v11];

  v13 = [*(a1 + 32) home];
  v14 = [v13 backingStore];
  v15 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
  v16 = [v14 transaction:@"userAssistantAccessControlUpdated" options:v15];

  v17 = [(HMDAssistantAccessControl *)v12 model];
  [v16 add:v17 withMessage:0];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __67__HMDUser_settingsController_willUpdateSettingAtKeyPath_withValue___block_invoke_666;
  v19[3] = &unk_2797359D8;
  v19[4] = *(a1 + 32);
  [v16 run:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __67__HMDUser_settingsController_willUpdateSettingAtKeyPath_withValue___block_invoke_666(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Set assistant access control off on turning off voice identification %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)settingsController:(id)a3 didUpdateWithCompletion:(id)a4
{
  v5 = a4;
  [(HMDUser *)self postUserSettingsUpdatedNotificationWithReason:@"User Settings Updated"];
  v5[2](v5, 0);
}

- (id)dictionaryEncoding
{
  v3 = [(HMDUser *)self userID];
  v4 = [(HMDUser *)self privilege];
  v5 = [(HMDUser *)self isRemoteAccessAllowed];
  v6 = [(HMDUser *)self camerasAccessLevel];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser isAnnounceAccessAllowed](self, "isAnnounceAccessAllowed")}];
  v8 = [HMDUser userDictionaryWithUserID:v3 privilege:v4 remoteAccessAllowed:v5 cameraAccessLevel:v6 announceAccessAllowed:v7 announceAccessLevel:[(HMDUser *)self announceAccessLevel] audioAnalysisUserDropInAccessLevel:[(HMDUser *)self audioAnalysisUserDropInAccessLevel]];

  return v8;
}

- (void)removeCloudData
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Removing user cloud data", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  queue = v4->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__HMDUser_removeCloudData__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = v4;
  dispatch_async(queue, block);
  v8 = *MEMORY[0x277D85DE8];
}

void __26__HMDUser_removeCloudData__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isOwner])
  {
    v2 = [*(a1 + 32) cloudShareTrustManager];
    [v2 removeTrust];
  }

  v3 = [*(a1 + 32) sharedBackingStoreController];
  [v3 destroyZone];

  v4 = [*(a1 + 32) privateBackingStoreController];
  [v4 destroyZone];

  v5 = [*(a1 + 32) photosPersonDataManager];
  [v5 removeCloudDataDueToUserRemoval];
}

- (id)modelObjectWithChangeType:(unint64_t)a3 version:(int64_t)a4
{
  v7 = [(HMDUser *)self home];
  if ([(HMDUser *)self isRemoteGateway])
  {
    v8 = [HMDResidentUserModel alloc];
    v9 = [(HMDUser *)self uuid];
    v10 = [v7 uuid];
    v11 = [(HMDBackingStoreModelObject *)v8 initWithObjectChangeType:a3 uuid:v9 parentUUID:v10];
  }

  else
  {
    v11 = [(HMDUser *)self newModelWithChangeType:a3];
  }

  v12 = [(HMDUser *)self accountHandle];
  [(HMDResidentUserModel *)v11 setAccountHandle:v12];

  v13 = [(HMDUser *)self accountIdentifier];

  if (v13)
  {
    v14 = [(HMDUser *)self accountIdentifier];
    [(HMDResidentUserModel *)v11 setAccountIdentifier:v14];
  }

  if (a4 < 3)
  {
    goto LABEL_8;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser privilege](self, "privilege")}];
  [(HMDResidentUserModel *)v11 setPrivilege:v15];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser isRemoteAccessAllowed](self, "isRemoteAccessAllowed")}];
  [(HMDResidentUserModel *)v11 setRemoteAccessAllowed:v16];

  if (a4 == 3)
  {
LABEL_8:
    v17 = 0;
  }

  else
  {
    v18 = [(HMDUser *)self presenceAuthStatus];

    if (v18)
    {
      v19 = [(HMDUser *)self presenceAuthStatus];
      v20 = [v19 number];
      [(HMDResidentUserModel *)v11 setPresenceAuthorizationStatus:v20];
    }

    v17 = 1;
  }

  v21 = [(HMDUser *)self pairingIdentity];
  v22 = [v21 hmd_dictionaryEncoding];
  [(HMDResidentUserModel *)v11 setPairingIdentity:v22];

  v23 = [(HMDUser *)self userID];
  [(HMDResidentUserModel *)v11 setUserID:v23];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser camerasAccessLevel](self, "camerasAccessLevel")}];
  [(HMDResidentUserModel *)v11 setCamerasAccessLevel:v24];

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser audioAnalysisUserDropInAccessLevel](self, "audioAnalysisUserDropInAccessLevel")}];
  [(HMDUserModel *)v11 setAudioAnalysisUserDropInAccessLevel:v25];

  v26 = [(HMDUser *)self matterCASEAuthenticatedTagID];
  [(HMDResidentUserModel *)v11 setMatterCASEAuthenticatedTagID:v26];

  if (v17)
  {
    v27 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser isAnnounceAccessAllowed](self, "isAnnounceAccessAllowed")}];
    [(HMDResidentUserModel *)v11 setAnnounceAccessAllowed:v27];

    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser announceAccessLevel](self, "announceAccessLevel")}];
    [(HMDResidentUserModel *)v11 setAnnounceAccessLevel:v28];
  }

  return v11;
}

- (id)newModelWithChangeType:(unint64_t)a3
{
  v5 = [(HMDUser *)self home];
  v6 = [HMDUserModel alloc];
  v7 = [(HMDUser *)self uuid];
  v8 = [v5 uuid];
  v9 = [(HMDBackingStoreModelObject *)v6 initWithObjectChangeType:a3 uuid:v7 parentUUID:v8];

  return v9;
}

- (id)backingStoreObjects:(int64_t)a3
{
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(HMDUser *)self modelObjectWithChangeType:1 version:a3];
  [v5 addObject:v6];

  if (a3 >= 4)
  {
    v7 = [(HMDUser *)self assistantAccessControl];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 model];
      v10 = v9;
      if (v9)
      {
        [v9 setObjectChangeType:1];
        [v5 addObject:v10];
      }
    }

    v11 = [(HMDUser *)self announceUserSettingsModelWithChangeType:1];
    [v5 addObject:v11];

    v12 = [(HMDUser *)self accessCode];
    if (v12)
    {
    }

    else
    {
      v13 = [(HMDUser *)self accessCodeChangedByUserUUID];

      if (!v13)
      {
LABEL_10:

        goto LABEL_11;
      }
    }

    v14 = [(HMDUser *)self accessCode];
    v15 = [(HMDUser *)self uuid];
    v16 = [(HMDUser *)self accessCodeChangedByUserUUID];
    v17 = [HMDAccessCodeDataManager createUserAccessCodeModelFromAccessCode:v14 forUserUUID:v15 changedByUserUUID:v16];

    [v5 addObject:v17];
    goto LABEL_10;
  }

LABEL_11:
  v18 = [v5 copy];

  return v18;
}

- (id)announceUserSettingsModelWithChangeType:(unint64_t)a3
{
  v5 = [HMDAnnounceUserSettingsModel alloc];
  v6 = [(HMDUser *)self uuid];
  v7 = [(HMDAnnounceUserSettingsModel *)v5 initWithUserUUID:v6];

  [(HMDBackingStoreModelObject *)v7 setObjectChangeType:a3];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser announceNotificationModeForCurrentDevice](self, "announceNotificationModeForCurrentDevice")}];
  [(HMDAnnounceUserSettingsModel *)v7 setAnnounceNotificationModeForCurrentDevice:v8];

  return v7;
}

- (void)migrateCloudZone:(id)a3 migrationQueue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CBEB18] array];
  v12 = [MEMORY[0x277CBEB18] array];
  v13 = [(HMDUser *)self home];
  objc_initWeak(location, self);
  v31 = v11;
  v32 = v10;
  v30 = v13;
  if ([(HMDUser *)self isOwner])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__HMDUser_migrateCloudZone_migrationQueue_completion___block_invoke;
    aBlock[3] = &unk_279730C98;
    v33 = &v57;
    objc_copyWeak(&v57, location);
    v29 = v9;
    v14 = v9;
    v51 = v14;
    v15 = v10;
    v56 = v15;
    v16 = v11;
    v52 = v16;
    v17 = v12;
    v53 = v17;
    v18 = v8;
    v54 = v18;
    v19 = v13;
    v55 = v19;
    v20 = _Block_copy(aBlock);
    v21 = [v19 uuid];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __54__HMDUser_migrateCloudZone_migrationQueue_completion___block_invoke_2_640;
    v42[3] = &unk_279730CE8;
    objc_copyWeak(&v49, location);
    v47 = v15;
    v43 = v14;
    v44 = v16;
    v45 = v17;
    v22 = v20;
    v48 = v22;
    v46 = v19;
    [v18 cloudRecordsForParentID:v21 completionHandler:v42];
    v23 = &v51;
    v24 = &v56;
    v25 = &v52;
    v26 = &v53;
    v27 = &v54;
    v28 = &v55;

    objc_destroyWeak(&v49);
    v9 = v29;
  }

  else
  {
    v22 = [v13 uuid];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __54__HMDUser_migrateCloudZone_migrationQueue_completion___block_invoke_645;
    v34[3] = &unk_279730D38;
    v33 = &v41;
    objc_copyWeak(&v41, location);
    v40 = v10;
    v35 = v9;
    v36 = v11;
    v37 = v12;
    v38 = v13;
    v39 = v8;
    [v39 cloudRecordsForParentID:v22 completionHandler:v34];
    v23 = &v40;
    v24 = &v35;
    v25 = &v36;
    v26 = &v37;
    v27 = &v38;
    v28 = &v39;
  }

  objc_destroyWeak(v33);
  objc_destroyWeak(location);
}

void __54__HMDUser_migrateCloudZone_migrationQueue_completion___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained assistantAccessControl];
    v7 = [v6 modelID];

    v8 = [v5 assistantAccessControl];

    if (!v8)
    {
      v9 = [[HMDAssistantAccessControl alloc] initWithUser:v5];
      v10 = [(HMDAssistantAccessControl *)v9 modelID];

      v7 = v10;
    }

    v11 = *(a1 + 56);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __54__HMDUser_migrateCloudZone_migrationQueue_completion___block_invoke_3;
    v14[3] = &unk_279730C70;
    objc_copyWeak(&v21, (a1 + 80));
    v15 = *(a1 + 32);
    v20 = *(a1 + 72);
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v18 = *(a1 + 64);
    v22 = a2;
    v12 = v7;
    v19 = v12;
    [v11 cloudRecordWithObjectID:v12 completionHandler:v14];

    objc_destroyWeak(&v21);
  }

  else
  {
    v13 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__HMDUser_migrateCloudZone_migrationQueue_completion___block_invoke_2;
    block[3] = &unk_2797355D0;
    v26 = *(a1 + 72);
    v24 = *(a1 + 40);
    v25 = *(a1 + 48);
    dispatch_async(v13, block);

    v12 = v26;
  }
}

void __54__HMDUser_migrateCloudZone_migrationQueue_completion___block_invoke_2_640(uint64_t a1, void *a2, void *a3)
{
  v121 = *MEMORY[0x277D85DE8];
  v84 = a2;
  v83 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    v85 = WeakRetained;
    v86 = a1;
    v87 = [WeakRetained pairingUsername];
    if (!v87)
    {
      v33 = objc_autoreleasePoolPush();
      v34 = v85;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543618;
        v115 = v36;
        v116 = 2112;
        v117 = v34;
        _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@User %@ does not have a pairing identity, cannot migrate", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
      v32 = *(a1 + 64);
      if (!v32)
      {
        goto LABEL_72;
      }

      v37 = *(a1 + 32);
      v104[0] = MEMORY[0x277D85DD0];
      v104[1] = 3221225472;
      v104[2] = __54__HMDUser_migrateCloudZone_migrationQueue_completion___block_invoke_642;
      v104[3] = &unk_2797355D0;
      v107 = v32;
      v105 = *(a1 + 40);
      v106 = *(a1 + 48);
      dispatch_async(v37, v104);

      v6 = v107;
      goto LABEL_71;
    }

    v6 = [MEMORY[0x277CBEB18] array];
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v7 = v84;
    v8 = [v7 countByEnumeratingWithState:&v100 objects:v120 count:16];
    if (v8)
    {
      v9 = *v101;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v101 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [*(*(&v100 + 1) + 8 * i) extractObjectChange];
          if (v11)
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            v13 = (isKindOfClass & 1) != 0 ? v11 : 0;
            v14 = v13;
            if (isKindOfClass)
            {
              v15 = [v11 pairingIdentity];
              v16 = [v15 objectForKeyedSubscript:@"HAP.identifier"];

              if ([v16 isEqualToString:v87])
              {
                [v6 addObject:v11];
              }
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v100 objects:v120 count:16];
      }

      while (v8);
    }

    if ([v6 count] == 1)
    {
      v17 = [v6 firstObject];
      v18 = [v85 uuid];
      v19 = [v17 uuid];
      v20 = [v18 isEqual:v19];

      if ((v20 & 1) == 0)
      {
        v21 = objc_autoreleasePoolPush();
        v22 = v85;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = HMFGetLogIdentifier();
          v25 = [v22 uuid];
          v26 = [v17 uuid];
          *buf = 138543874;
          v115 = v24;
          v116 = 2112;
          v117 = v25;
          v118 = 2112;
          v119 = v26;
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Fixing up user.uuid from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v21);
        v27 = v86[7];
        v28 = [v22 uuid];
        [v27 dropAllChangesWithObjectID:v28];

        v29 = [v17 uuid];
        [v22 setUUID:v29];

        [v22 configureWithHome:v86[7]];
      }

      (*(v86[9] + 2))();

LABEL_71:
      v32 = v87;
      goto LABEL_72;
    }

    if ([v6 count] < 2)
    {
      v53 = objc_autoreleasePoolPush();
      v54 = v85;
      v55 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = HMFGetLogIdentifier();
        v57 = [v54 uuid];
        *buf = 138543618;
        v115 = v56;
        v116 = 2112;
        v117 = v57;
        _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_DEFAULT, "%{public}@Did not find record for user %@, looking into transactions to determine new transaction is needed", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v53);
      v58 = [v54 home];
      v59 = [v54 uuid];
      v88[0] = MEMORY[0x277D85DD0];
      v88[1] = 3221225472;
      v88[2] = __54__HMDUser_migrateCloudZone_migrationQueue_completion___block_invoke_643;
      v88[3] = &unk_279730CC0;
      objc_copyWeak(&v91, v86 + 10);
      v89 = v86[5];
      v90 = v86[9];
      [v58 cleanChangesIfNoAddChangeObjectID:v59 completion:v88];

      objc_destroyWeak(&v91);
      goto LABEL_71;
    }

    v38 = [v86[7] uuid];
    v39 = [v85 pairingIdentity];
    v40 = [HMDUser UUIDWithUserID:0 forHomeIdentifier:v38 uuid:0 pairingIdentity:v39];

    v41 = [MEMORY[0x277CBEB18] array];
    v98 = 0u;
    v99 = 0u;
    v97 = 0u;
    v96 = 0u;
    v42 = v6;
    v43 = [v42 countByEnumeratingWithState:&v96 objects:v113 count:16];
    if (v43)
    {
      v44 = 0;
      v45 = *v97;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v97 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v96 + 1) + 8 * j);
          v48 = [v47 uuid];
          v49 = [v40 isEqual:v48];

          if (v49)
          {
            v50 = v47;

            v44 = v50;
          }

          v51 = [v47 uuid];
          [v41 addObject:v51];
        }

        v43 = [v42 countByEnumeratingWithState:&v96 objects:v113 count:16];
      }

      while (v43);

      if (v44)
      {
        [v42 removeObject:v44];
        v52 = 0;
LABEL_47:
        if (([v41 containsObject:v40] & 1) == 0)
        {
          [v41 addObject:v40];
        }

        [v86[7] dropAllChangesWithArrayOfObjectIDs:v41];
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v6 = v42;
        v60 = [v6 countByEnumeratingWithState:&v92 objects:v112 count:16];
        if (v60)
        {
          v61 = *v93;
          do
          {
            for (k = 0; k != v60; ++k)
            {
              if (*v93 != v61)
              {
                objc_enumerationMutation(v6);
              }

              v63 = *(*(&v92 + 1) + 8 * k);
              [v63 setObjectChangeType:3];
              [v86[5] addObject:v63];
            }

            v60 = [v6 countByEnumeratingWithState:&v92 objects:v112 count:16];
          }

          while (v60);
        }

        v64 = [v85 uuid];
        v65 = [v64 isEqual:v40];

        if ((v65 & 1) == 0)
        {
          v66 = objc_autoreleasePoolPush();
          v67 = v85;
          v68 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            v69 = HMFGetLogIdentifier();
            v70 = [v67 uuid];
            *buf = 138543874;
            v115 = v69;
            v116 = 2112;
            v117 = v70;
            v118 = 2112;
            v119 = v40;
            _os_log_impl(&dword_2531F8000, v68, OS_LOG_TYPE_DEFAULT, "%{public}@Fixing up user.uuid from %@ to calculated %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v66);
          [v67 setUUID:v40];
          [v67 configureWithHome:v86[7]];
        }

        if (v52)
        {
          v71 = objc_autoreleasePoolPush();
          v72 = v85;
          v73 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            v74 = HMFGetLogIdentifier();
            *buf = 138543362;
            v115 = v74;
            _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_DEFAULT, "%{public}@Missing cloud record for owner user, creating", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v71);
          v75 = v86[5];
          v76 = [v72 modelObjectWithChangeType:1];
          [v75 addObject:v76];

          (*(v86[9] + 2))();
        }

        else
        {
          [v86[7] dropAllChangesWithObjectID:v40];
          v77 = [v85 modelObjectWithChangeType:2];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v78 = v77;
          }

          else
          {
            v78 = 0;
          }

          v79 = v78;

          if (v79)
          {
            v80 = [MEMORY[0x277CCAD78] UUID];
            v81 = [v80 UUIDString];
            [v79 setChangeTag:v81];

            [v86[5] addObject:v79];
          }

          (*(v86[9] + 2))();
        }

        goto LABEL_71;
      }
    }

    else
    {

      v44 = 0;
    }

    v52 = 1;
    goto LABEL_47;
  }

  v30 = *(a1 + 64);
  if (v30)
  {
    v85 = 0;
    v31 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__HMDUser_migrateCloudZone_migrationQueue_completion___block_invoke_3_641;
    block[3] = &unk_2797355D0;
    v111 = v30;
    v109 = *(a1 + 40);
    v110 = *(a1 + 48);
    dispatch_async(v31, block);

    v32 = v111;
LABEL_72:

    WeakRetained = v85;
  }

  v82 = *MEMORY[0x277D85DE8];
}

void __54__HMDUser_migrateCloudZone_migrationQueue_completion___block_invoke_645(uint64_t a1, void *a2, void *a3)
{
  v107 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained pairingUsername];
    v10 = v9;
    if (v9)
    {
      v76 = a1;
      v78 = v9;
      v72 = v8;
      v70 = v6;
      v73 = [MEMORY[0x277CBEB18] array];
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v71 = v5;
      obj = v5;
      v11 = [obj countByEnumeratingWithState:&v89 objects:v102 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v90;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v90 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = [*(*(&v89 + 1) + 8 * i) extractObjectChange];
            if (v15)
            {
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              v17 = (isKindOfClass & 1) != 0 ? v15 : 0;
              v18 = v17;
              if (isKindOfClass)
              {
                v19 = [v15 pairingIdentity];
                v20 = [v19 objectForKeyedSubscript:@"HAP.identifier"];

                if ([v20 isEqualToString:v78])
                {
                  [v73 addObject:v15];
                }
              }
            }
          }

          v12 = [obj countByEnumeratingWithState:&v89 objects:v102 count:16];
        }

        while (v12);
      }

      if ([v73 count] >= 2)
      {
        v21 = [*(a1 + 56) uuid];
        v22 = [v8 pairingIdentity];
        v23 = [HMDUser UUIDWithUserID:0 forHomeIdentifier:v21 uuid:0 pairingIdentity:v22];

        v24 = objc_autoreleasePoolPush();
        v25 = v8;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543618;
          v104 = v27;
          v105 = 2112;
          v106 = v23;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Duplicate users: forcing add/update for user uuid %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v24);
        v74 = v25;
        v28 = [v25 modelObjectWithChangeType:1];
        v29 = [HMDUserModel alloc];
        v30 = [*(a1 + 56) uuid];
        v31 = [(HMDBackingStoreModelObject *)v29 initWithObjectChangeType:1 uuid:v23 parentUUID:v30];

        v32 = [MEMORY[0x277CCAD78] UUID];
        v33 = [v32 UUIDString];
        [(HMDUserModel *)v31 setChangeTag:v33];

        v69 = v28;
        v34 = [(HMDBackingStoreModelObject *)v31 merge:v28];
        v68 = v31;
        [*(a1 + 48) addObject:v31];
        v75 = [MEMORY[0x277CBEB18] array];
        [v75 addObject:v23];
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v77 = v73;
        v35 = [v77 countByEnumeratingWithState:&v85 objects:v101 count:16];
        v36 = v23;
        if (v35)
        {
          v37 = v35;
          v38 = *v86;
          do
          {
            for (j = 0; j != v37; ++j)
            {
              if (*v86 != v38)
              {
                objc_enumerationMutation(v77);
              }

              v40 = *(*(&v85 + 1) + 8 * j);
              v41 = [v40 uuid];
              v42 = [v36 isEqual:v41];

              if ((v42 & 1) == 0)
              {
                v43 = objc_autoreleasePoolPush();
                v44 = v74;
                v45 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
                {
                  v46 = HMFGetLogIdentifier();
                  v47 = [v40 uuid];
                  *buf = 138543618;
                  v104 = v46;
                  v105 = 2112;
                  v106 = v47;
                  _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_INFO, "%{public}@Duplicate user: obsoleting user uuid %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v43);
                v48 = [HMDObsoleteUserModel alloc];
                v49 = [v40 uuid];
                a1 = v76;
                v50 = [*(v76 + 56) uuid];
                v51 = [(HMDBackingStoreModelObject *)v48 initWithObjectChangeType:1 uuid:v49 parentUUID:v50];

                v84[0] = MEMORY[0x277D85DD0];
                v84[1] = 3221225472;
                v84[2] = __54__HMDUser_migrateCloudZone_migrationQueue_completion___block_invoke_649;
                v84[3] = &unk_279730D10;
                v84[4] = v40;
                v52 = [obj hmf_objectPassingTest:v84];
                v53 = v52;
                if (v52 && [v52 encodeObjectChange:v51])
                {
                  [*(v76 + 64) updateCloudRecord:v53 completionHandler:0];
                }

                v54 = [MEMORY[0x277CCAD78] UUID];
                v55 = [v54 UUIDString];
                [(HMDObsoleteUserModel *)v51 setChangeTag:v55];

                [*(v76 + 40) addObject:v51];
                v56 = [v40 uuid];
                [v75 addObject:v56];
              }
            }

            v37 = [v77 countByEnumeratingWithState:&v85 objects:v101 count:16];
          }

          while (v37);
        }

        [*(a1 + 56) dropAllChangesWithArrayOfObjectIDs:v75];
      }

      v57 = *(v76 + 72);
      if (v57)
      {
        v58 = *(v76 + 32);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __54__HMDUser_migrateCloudZone_migrationQueue_completion___block_invoke_2_651;
        block[3] = &unk_2797355D0;
        v83 = v57;
        v81 = *(v76 + 40);
        v82 = *(v76 + 48);
        dispatch_async(v58, block);
      }

      v6 = v70;
      v5 = v71;
      v8 = v72;
      v10 = v78;
    }

    else
    {
      v61 = objc_autoreleasePoolPush();
      v62 = v8;
      v63 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v64 = HMFGetLogIdentifier();
        *buf = 138543618;
        v104 = v64;
        v105 = 2112;
        v106 = v62;
        _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_ERROR, "%{public}@User %@ does not have a pairing identity, cannot migrate", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v61);
      v65 = *(a1 + 72);
      if (!v65)
      {
        v10 = 0;
        goto LABEL_46;
      }

      v66 = *(a1 + 32);
      v93[0] = MEMORY[0x277D85DD0];
      v93[1] = 3221225472;
      v93[2] = __54__HMDUser_migrateCloudZone_migrationQueue_completion___block_invoke_647;
      v93[3] = &unk_2797355D0;
      v96 = v65;
      v94 = *(a1 + 40);
      v95 = *(a1 + 48);
      dispatch_async(v66, v93);

      v73 = v96;
    }

LABEL_46:
    goto LABEL_47;
  }

  v59 = *(a1 + 72);
  if (v59)
  {
    v60 = *(a1 + 32);
    v97[0] = MEMORY[0x277D85DD0];
    v97[1] = 3221225472;
    v97[2] = __54__HMDUser_migrateCloudZone_migrationQueue_completion___block_invoke_2_646;
    v97[3] = &unk_2797355D0;
    v100 = v59;
    v98 = *(a1 + 40);
    v99 = *(a1 + 48);
    dispatch_async(v60, v97);

    v10 = v100;
    goto LABEL_46;
  }

LABEL_47:

  v67 = *MEMORY[0x277D85DE8];
}

uint64_t __54__HMDUser_migrateCloudZone_migrationQueue_completion___block_invoke_649(uint64_t a1, void *a2)
{
  v3 = [a2 objectID];
  v4 = [*(a1 + 32) uuid];
  v5 = [v3 isEqual:v4];

  return v5;
}

void __54__HMDUser_migrateCloudZone_migrationQueue_completion___block_invoke_643(uint64_t a1, char a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && (a2 & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = WeakRetained;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Missing cloud record for owner user, creating", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = *(a1 + 32);
    v12 = [v8 modelObjectWithChangeType:1];
    [v11 addObject:v12];
  }

  (*(*(a1 + 40) + 16))();

  v13 = *MEMORY[0x277D85DE8];
}

void __54__HMDUser_migrateCloudZone_migrationQueue_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained assistantAccessControl];

    if (v9)
    {
      if (!v5)
      {
        v25 = *(a1 + 56);
        v26 = [v8 assistantAccessControl];
        v27 = [v26 modelID];
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __54__HMDUser_migrateCloudZone_migrationQueue_completion___block_invoke_5;
        v41[3] = &unk_279730C48;
        objc_copyWeak(&v46, (a1 + 80));
        v42 = *(a1 + 40);
        v45 = *(a1 + 72);
        v43 = *(a1 + 32);
        v44 = *(a1 + 48);
        [v25 cleanChangesIfNoAddChangeObjectID:v27 completion:v41];

        objc_destroyWeak(&v46);
        goto LABEL_22;
      }

      if (*(a1 + 88) == 1)
      {
        v10 = [v8 assistantAccessControl];
        v11 = [v10 model];

        [v11 setObjectChangeType:1];
        v12 = [MEMORY[0x277CCAD78] UUID];
        v13 = [v12 UUIDString];
        [v11 setChangeTag:v13];

        [*(a1 + 40) addObject:v11];
      }
    }

    else
    {
      if (!v5)
      {
        v28 = [v8 home];
        v29 = *(a1 + 64);
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __54__HMDUser_migrateCloudZone_migrationQueue_completion___block_invoke_2_635;
        v35[3] = &unk_279730C48;
        objc_copyWeak(&v40, (a1 + 80));
        v36 = *(a1 + 48);
        v39 = *(a1 + 72);
        v37 = *(a1 + 32);
        v38 = *(a1 + 40);
        [v28 cleanChangesIfNoAddChangeObjectID:v29 completion:v35];

        objc_destroyWeak(&v40);
        goto LABEL_22;
      }

      v15 = objc_autoreleasePoolPush();
      v16 = v8;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v52 = v18;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Assistant access control does not exist but cloud record does, re-running it to add access control", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      v19 = [v5 extractObjectChange];
      if (v19)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v21 = v19;
        }

        else
        {
          v21 = 0;
        }

        v22 = v21;
        if (isKindOfClass)
        {
          [*(a1 + 48) addObject:v19];
        }
      }
    }

    v23 = *(a1 + 72);
    if (v23)
    {
      v24 = *(a1 + 32);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __54__HMDUser_migrateCloudZone_migrationQueue_completion___block_invoke_637;
      v31[3] = &unk_2797355D0;
      v34 = v23;
      v32 = *(a1 + 40);
      v33 = *(a1 + 48);
      dispatch_async(v24, v31);
    }
  }

  else
  {
    v14 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__HMDUser_migrateCloudZone_migrationQueue_completion___block_invoke_4;
    block[3] = &unk_2797355D0;
    v50 = *(a1 + 72);
    v48 = *(a1 + 40);
    v49 = *(a1 + 48);
    dispatch_async(v14, block);
  }

LABEL_22:

  v30 = *MEMORY[0x277D85DE8];
}

void __54__HMDUser_migrateCloudZone_migrationQueue_completion___block_invoke_5(uint64_t a1, char a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained && (a2 & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = WeakRetained;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Missing cloud record for Assistant access control but object exists, creating add transaction to push to cloud", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [v8 assistantAccessControl];
    v12 = [v11 model];

    [v12 setObjectChangeType:1];
    [*(a1 + 32) addObject:v12];
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    v14 = *(a1 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__HMDUser_migrateCloudZone_migrationQueue_completion___block_invoke_633;
    block[3] = &unk_2797355D0;
    v19 = v13;
    v17 = *(a1 + 32);
    v18 = *(a1 + 48);
    dispatch_async(v14, block);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __54__HMDUser_migrateCloudZone_migrationQueue_completion___block_invoke_2_635(uint64_t a1, char a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained && (a2 & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = WeakRetained;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Assistant access control does not exist and cloud record does not exist, creating default Assistant access control", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [[HMDAssistantAccessControl alloc] initWithUser:v8];
    v12 = [(HMDAssistantAccessControl *)v11 model];
    v13 = v12;
    if (v12)
    {
      [v12 setObjectChangeType:1];
      [*(a1 + 32) addObject:v13];
    }
  }

  v14 = *(a1 + 56);
  if (v14)
  {
    v15 = *(a1 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__HMDUser_migrateCloudZone_migrationQueue_completion___block_invoke_636;
    block[3] = &unk_2797355D0;
    v20 = v14;
    v18 = *(a1 + 48);
    v19 = *(a1 + 32);
    dispatch_async(v15, block);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectRemoved:(id)a3 message:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v9)
  {
    [(HMDUser *)self setAssistantAccessControl:0];
    [v7 respondWithSuccess];
  }

  else
  {
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

    if (v12)
    {
      if (isWatch() && [(HMDUser *)self isCurrentUser])
      {
        v13 = objc_autoreleasePoolPush();
        v14 = self;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = HMFGetLogIdentifier();
          *buf = 138543362;
          v47 = v16;
          _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Removed announce user settings from user", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v13);
        [(HMDUser *)v14 setAnnounceNotificationModeForCurrentDevice:0];
        [v7 respondWithSuccess];
      }

      else
      {
        v17 = objc_autoreleasePoolPush();
        v18 = self;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543362;
          v47 = v20;
          _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Ignorning removed announce user settings from user, not watch or not current user", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v17);
      }
    }

    else
    {
      v21 = v10;
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
        v24 = [v7 messagePayload];
        v25 = [v24 hmf_flowForKey:*MEMORY[0x277D0F1C8]];

        if (v25)
        {
          v26 = objc_autoreleasePoolPush();
          v27 = self;
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = HMFGetLogIdentifier();
            [v25 UUID];
            v30 = v43 = v26;
            *buf = 138543618;
            v47 = v29;
            v48 = 2112;
            v49 = v30;
            _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling removed user access code model", buf, 0x16u);

            v26 = v43;
          }
        }

        else
        {
          v25 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
          v26 = objc_autoreleasePoolPush();
          v31 = self;
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v32 = v44 = v26;
            v33 = [v25 UUID];
            *buf = 138543618;
            v47 = v32;
            v48 = 2112;
            v49 = v33;
            _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Pin Codes}] Handling removed user access code model", buf, 0x16u);

            v26 = v44;
          }
        }

        objc_autoreleasePoolPop(v26);
        v34 = [(HMDUser *)self home];
        v35 = [v34 accessCodeManager];
        v36 = [v35 dataManager];

        if (v36)
        {
          [v36 handleRemovedUserAccessCodeModel:v23 forUser:self message:v7 flow:v25];
        }

        else
        {
          v37 = objc_autoreleasePoolPush();
          v38 = self;
          v39 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v40 = v45 = v37;
            *buf = 138543362;
            v47 = v40;
            _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@Not handling removed HMDUserAccessCodeModel because self.home.accessCodeManager.dataManager is nil.", buf, 0xCu);

            v37 = v45;
          }

          objc_autoreleasePoolPop(v37);
          v41 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
          [v7 respondWithError:v41];
        }
      }
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedCATForUser
{
  v2 = [(HMDUser *)self home];
  [v2 handleCATUpdate];
}

- (void)_transactionUserUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v171 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v155 = a5;
  group = dispatch_group_create();
  v10 = [v9 accountHandle];

  if (v10)
  {
    v11 = [v9 accountHandle];
    if (!v11)
    {
LABEL_8:
      v154 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = [v9 userID];

    if (!v12)
    {
      goto LABEL_8;
    }

    v13 = +[HMDAccountHandleFormatter defaultFormatter];
    v14 = [v9 userID];
    v11 = [v13 accountHandleFromString:v14];

    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v15 = [(HMDUser *)self accountHandle];
  v16 = HMFEqualObjects();

  v154 = v11;
  if ((v16 & 1) == 0)
  {
    [(HMDUser *)self setAccountHandle:v11];
  }

LABEL_9:
  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    v21 = [(HMDUser *)v18 userID];
    v22 = [(HMDUser *)v18 account];
    [(HMDUser *)v18 isCurrentUser];
    v23 = HMFBooleanToString();
    *buf = 138544387;
    v160 = v20;
    v161 = 2112;
    v162 = v154;
    v163 = 2117;
    v164 = v21;
    v165 = 2112;
    v166 = v22;
    v167 = 2112;
    v168 = v23;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Updated account handle [%@] for %{sensitive}@, account: %@, isCurrentUser: %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v17);
  if ([v9 propertyWasSet:@"accountIdentifier"])
  {
    v24 = [v9 accountIdentifier];
    v25 = [(HMDUser *)v18 accountIdentifier];
    v26 = HMFEqualObjects();

    if ((v26 & 1) == 0)
    {
      v27 = [v9 accountIdentifier];
      [(HMDUser *)v18 setAccountIdentifier:v27];
    }
  }

  v153 = [(HMDUser *)v18 home];
  v28 = [(HMDUser *)v18 uuid];
  v29 = [v9 uuid];
  v30 = [v28 isEqual:v29];

  if ((v30 & 1) == 0)
  {
    v31 = objc_autoreleasePoolPush();
    v32 = v18;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      v35 = [v9 uuid];
      v36 = [(HMDUser *)v32 uuid];
      *buf = 138543874;
      v160 = v34;
      v161 = 2112;
      v162 = v35;
      v163 = 2112;
      v164 = v36;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Updating uuid: %@ from %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v31);
    [(HMDUser *)v32 deregisterForMessages];
    v37 = [v155 transactionResult];
    v38 = [v37 source];

    if (v38 != 1)
    {
      v39 = objc_autoreleasePoolPush();
      v40 = v32;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = HMFGetLogIdentifier();
        v43 = [v153 name];
        *buf = 138543618;
        v160 = v42;
        v161 = 2112;
        v162 = v43;
        _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_INFO, "%{public}@Home %@ needs to run migration because user UUID was changed", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v39);
      v44 = [(HMDUser *)v40 uuid];
      [v153 dropAllChangesWithObjectID:v44];

      [v153 setMigrationNeeded:1];
    }

    v45 = [(HMDUser *)v32 uuid];
    v46 = [v9 uuid];
    [(HMDUser *)v32 setUUID:v46];

    [(HMDUser *)v32 registerForMessages];
    [(HMDUser *)v32 recoverUserCloudDataDueToUUIDChangeFromOldUUID:v45];
  }

  v47 = [v9 privilege];
  if (v47)
  {
    v48 = v47;
    v49 = [(HMDUser *)v18 privilege];
    v50 = [v9 privilege];
    v51 = [v50 integerValue];

    if (v49 != v51)
    {
      v52 = objc_autoreleasePoolPush();
      v53 = v18;
      v54 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        v55 = HMFGetLogIdentifier();
        v56 = [(HMDUser *)v53 privilege];
        if (v56 > 4)
        {
          v57 = @"None";
        }

        else
        {
          v57 = off_279730DF8[v56];
        }

        v58 = [v9 privilege];
        v59 = [v58 intValue];
        if (v59 > 4)
        {
          v60 = @"None";
        }

        else
        {
          v60 = off_279730DF8[v59];
        }

        *buf = 138543874;
        v160 = v55;
        v161 = 2112;
        v162 = v57;
        v163 = 2112;
        v164 = v60;
        _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_INFO, "%{public}@User Privilege got updated from : %@ -> %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v52);
      v61 = [v9 privilege];
      -[HMDUser setPrivilege:](v53, "setPrivilege:", [v61 integerValue]);
    }
  }

  v62 = [v9 remoteAccessAllowed];
  if (v62)
  {
    v63 = v62;
    v64 = [v9 remoteAccessAllowed];
    v65 = [v64 BOOLValue];
    v66 = [(HMDUser *)v18 isRemoteAccessAllowed];

    if (v65 != v66)
    {
      v67 = [v9 remoteAccessAllowed];
      -[HMDUser setRemoteAccessAllowed:](v18, "setRemoteAccessAllowed:", [v67 BOOLValue]);
    }
  }

  v68 = [v9 camerasAccessLevel];
  v69 = [v68 integerValue];

  v70 = [v9 camerasAccessLevel];
  if (v70)
  {
    v71 = v70;
    v72 = [(HMDUser *)v18 camerasAccessLevel];

    if (v69 != v72)
    {
      v73 = objc_autoreleasePoolPush();
      v74 = v18;
      v75 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
      {
        v76 = HMFGetLogIdentifier();
        [(HMDUser *)v74 camerasAccessLevel];
        v77 = HMUserCameraAccessLevelAsString();
        v78 = HMUserCameraAccessLevelAsString();
        *buf = 138543874;
        v160 = v76;
        v161 = 2112;
        v162 = v77;
        v163 = 2112;
        v164 = v78;
        _os_log_impl(&dword_2531F8000, v75, OS_LOG_TYPE_INFO, "%{public}@Updating cameras access value from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v73);
      [(HMDUser *)v74 setCamerasAccessLevel:v69];
    }
  }

  v79 = [v9 announceAccessLevel];
  if (v79)
  {
    v80 = v79;
    v81 = [v9 announceAccessLevel];
    v82 = [v81 unsignedIntegerValue];
    v83 = [(HMDUser *)v18 announceAccessLevel];

    if (v82 != v83)
    {
      v84 = [v9 announceAccessLevel];
      v92 = [(HMDUser *)v18 announceUserAccessLevelFromAnnounceAccessAllowed:v84 announceAccessLevel:?];
LABEL_52:
      [(HMDUser *)v18 setAnnounceAccessLevel:v92];
      goto LABEL_53;
    }
  }

  v84 = [v9 announceAccessLevel];
  if (v84)
  {
LABEL_53:

    goto LABEL_54;
  }

  v85 = [v9 announceAccessAllowed];
  if (v85)
  {
    v86 = v85;
    v87 = [v9 announceAccessAllowed];
    v88 = [v87 BOOLValue];
    v89 = [(HMDUser *)v18 isAnnounceAccessAllowed];

    if (v88 != v89)
    {
      v84 = [v9 announceAccessAllowed];
      v90 = [v84 BOOLValue];
      v91 = 1;
      if (v90)
      {
        v91 = 2;
      }

      if (v18)
      {
        v92 = v91;
      }

      else
      {
        v92 = 0;
      }

      goto LABEL_52;
    }
  }

LABEL_54:
  v93 = [v9 audioAnalysisUserDropInAccessLevel];
  v94 = [v93 integerValue];

  v95 = [v9 audioAnalysisUserDropInAccessLevel];
  if (v95)
  {
    v96 = v95;
    v97 = [(HMDUser *)v18 audioAnalysisUserDropInAccessLevel];

    if (v94 != v97)
    {
      v98 = objc_autoreleasePoolPush();
      v99 = v18;
      v100 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
      {
        v101 = HMFGetLogIdentifier();
        v102 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser audioAnalysisUserDropInAccessLevel](v99, "audioAnalysisUserDropInAccessLevel")}];
        v103 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v94];
        *buf = 138543874;
        v160 = v101;
        v161 = 2112;
        v162 = v102;
        v163 = 2112;
        v164 = v103;
        _os_log_impl(&dword_2531F8000, v100, OS_LOG_TYPE_INFO, "%{public}@Updating audio analysis user Dropin value from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v98);
      [(HMDUser *)v99 setAudioAnalysisUserDropInAccessLevel:v94];
    }
  }

  v104 = [v9 matterCASEAuthenticatedTagID];
  if (v104)
  {
    v105 = v104;
    v106 = [v9 matterCASEAuthenticatedTagID];
    if ([v106 integerValue])
    {
      v107 = [v9 matterCASEAuthenticatedTagID];
      v108 = [(HMDUser *)v18 matterCASEAuthenticatedTagID];
      v109 = [v107 isEqual:v108];

      if ((v109 & 1) == 0)
      {
        v110 = objc_autoreleasePoolPush();
        v111 = v18;
        v112 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v112, OS_LOG_TYPE_INFO))
        {
          v113 = HMFGetLogIdentifier();
          v149 = [(HMDUser *)v111 matterCASEAuthenticatedTagID];
          v114 = [v149 integerValue];
          v115 = [(HMDUser *)v111 matterCASEAuthenticatedTagID];
          [v9 matterCASEAuthenticatedTagID];
          v116 = v151 = v8;
          v117 = [v116 integerValue];
          [v9 matterCASEAuthenticatedTagID];
          v118 = v150 = v110;
          *buf = 138544642;
          v160 = v113;
          v161 = 2048;
          v162 = v114;
          v163 = 2112;
          v164 = v115;
          v165 = 2048;
          v166 = v117;
          v167 = 2112;
          v168 = v118;
          v169 = 2112;
          v170 = v111;
          _os_log_impl(&dword_2531F8000, v112, OS_LOG_TYPE_INFO, "%{public}@Updating CATID from 0x%lX (%@) to 0x%lX (%@) for user %@", buf, 0x3Eu);

          v110 = v150;
          v8 = v151;
        }

        objc_autoreleasePoolPop(v110);
        v119 = [v9 matterCASEAuthenticatedTagID];
        [(HMDUser *)v111 setMatterCASEAuthenticatedTagID:v119];

        [(HMDUser *)v111 handleUpdatedCATForUser];
      }
    }

    else
    {
    }
  }

  v120 = [v9 setProperties];
  v121 = [v120 containsObject:@"presenceAuthorizationStatus"];

  if (v121)
  {
    v122 = MEMORY[0x277CD1F00];
    v123 = [v9 presenceAuthorizationStatus];
    v124 = [v122 authWithNumber:v123];

    if (isPresenceAuthorizationValid())
    {
      v125 = [(HMDUser *)v18 presenceAuthStatus];
      v126 = HMFEqualObjects();

      if ((v126 & 1) == 0)
      {
        v127 = objc_autoreleasePoolPush();
        v128 = v18;
        v129 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v129, OS_LOG_TYPE_INFO))
        {
          v130 = HMFGetLogIdentifier();
          [(HMDUser *)v128 presenceAuthStatus];
          v132 = v131 = v8;
          *buf = 138544130;
          v160 = v130;
          v161 = 2112;
          v162 = v128;
          v163 = 2112;
          v164 = v132;
          v165 = 2112;
          v166 = v124;
          _os_log_impl(&dword_2531F8000, v129, OS_LOG_TYPE_INFO, "%{public}@Updating the presence auth status for user %@ from %@ to %@", buf, 0x2Au);

          v8 = v131;
        }

        objc_autoreleasePoolPop(v127);
        [(HMDUser *)v128 setPresenceAuthStatus:v124];
      }
    }

    else
    {
      v133 = objc_autoreleasePoolPush();
      v134 = v18;
      v135 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v135, OS_LOG_TYPE_INFO))
      {
        v136 = HMFGetLogIdentifier();
        [v9 presenceAuthorizationStatus];
        v138 = v137 = v8;
        *buf = 138543618;
        v160 = v136;
        v161 = 2112;
        v162 = v138;
        _os_log_impl(&dword_2531F8000, v135, OS_LOG_TYPE_INFO, "%{public}@Ignoring the value for presence auth in user model: %@", buf, 0x16u);

        v8 = v137;
      }

      objc_autoreleasePoolPop(v133);
    }
  }

  v139 = [v155 transactionResult];
  v140 = [v9 pairingIdentity];

  if (v140)
  {
    v141 = MEMORY[0x277CFEC20];
    v142 = [v9 pairingIdentity];
    v143 = [v141 hmd_pairingIdentityWithDictionary:v142];

    v144 = [(HMDUser *)v18 pairingIdentity];
    v145 = HMFEqualObjects();

    if ((v145 & 1) == 0)
    {
      [(HMDUser *)v18 setPairingIdentity:v143];
    }
  }

  [v139 markChanged];
  v146 = [v153 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HMDUser__transactionUserUpdated_newValues_message___block_invoke;
  block[3] = &unk_2797359B0;
  v157 = v155;
  v158 = 0;
  v147 = v155;
  dispatch_group_notify(group, v146, block);

  v148 = *MEMORY[0x277D85DE8];
}

- (uint64_t)announceUserAccessLevelFromAnnounceAccessAllowed:(void *)a3 announceAccessLevel:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    if (v6)
    {
      v8 = [v6 unsignedIntegerValue];
      v9 = 1;
      if (v8 == 2)
      {
        v9 = 2;
      }

      if (v8)
      {
        a1 = v9;
      }

      else
      {
        a1 = 0;
      }
    }

    else if ([v5 BOOLValue])
    {
      a1 = 2;
    }

    else
    {
      a1 = 1;
    }
  }

  return a1;
}

void __53__HMDUser__transactionUserUpdated_newValues_message___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) responseHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) responseHandler];
    (*(v3 + 2))(v3, *(a1 + 40), 0);
  }
}

- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v70 = *MEMORY[0x277D85DE8];
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
  if (!v12)
  {
    v16 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v15 = v17;

    if (v15)
    {
      v18 = [(HMDUser *)self assistantAccessControl];

      if (v18)
      {
        v19 = [(HMDUser *)self assistantAccessControl];
        [v19 transactionObjectUpdated:v8 newValues:v16 message:v10];

        goto LABEL_50;
      }

      v22 = [[HMDAssistantAccessControl alloc] initWithUser:self model:v15];
      if (v22)
      {
        [(HMDUser *)self setAssistantAccessControl:v22];
      }

LABEL_49:

      goto LABEL_50;
    }

    v20 = v16;
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

    if (!v22)
    {
      v31 = [(HMDUser *)self home];
      v32 = v20;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }

      v34 = v33;

      if (v34)
      {
        v63 = v31;
        v35 = [v10 messagePayload];
        v36 = [v35 hmf_flowForKey:*MEMORY[0x277D0F1C8]];

        v65 = v36;
        v62 = v34;
        if (v36)
        {
          v37 = objc_autoreleasePoolPush();
          v38 = self;
          v39 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            v40 = HMFGetLogIdentifier();
            [v65 UUID];
            v41 = v59 = v37;
            *buf = 138543618;
            v67 = v40;
            v68 = 2112;
            v69 = v41;
            _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling updated user access code model", buf, 0x16u);

            v37 = v59;
          }
        }

        else
        {
          v45 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
          v60 = objc_autoreleasePoolPush();
          v46 = self;
          v39 = HMFGetOSLogHandle();
          v65 = v45;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            v58 = HMFGetLogIdentifier();
            v47 = [v45 UUID];
            *buf = 138543618;
            v67 = v58;
            v68 = 2112;
            v69 = v47;
            _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Pin Codes}] Handling updated user access code model", buf, 0x16u);
          }

          v37 = v60;
        }

        objc_autoreleasePoolPop(v37);
        v31 = v63;
        v48 = [v63 accessCodeManager];
        v49 = [v48 dataManager];

        if (v49)
        {
          v34 = v62;
          v50 = self;
          v51 = v65;
          [v49 handleUpdatedUserAccessCodeModel:v62 forUser:v50 message:v10 flow:v65];
        }

        else
        {
          v52 = objc_autoreleasePoolPush();
          v53 = self;
          v54 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v55 = v61 = v52;
            *buf = 138543362;
            v67 = v55;
            _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_ERROR, "%{public}@Not handling updated HMDUserAccessCodeModel because self.home.accessCodeManager.dataManager is nil.", buf, 0xCu);

            v52 = v61;
          }

          objc_autoreleasePoolPop(v52);
          v56 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
          [v10 respondWithError:v56];

          v34 = v62;
          v31 = v63;
          v51 = v65;
        }
      }

      goto LABEL_49;
    }

    if (isWatch())
    {
      v23 = [(HMDUser *)self isCurrentUser];
      v24 = objc_autoreleasePoolPush();
      v25 = self;
      v26 = HMFGetOSLogHandle();
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);
      if (v23)
      {
        if (v27)
        {
          HMFGetLogIdentifier();
          v28 = v64 = v24;
          v29 = [(HMDAssistantAccessControl *)v22 announceNotificationModeForCurrentDevice];
          *buf = 138543618;
          v67 = v28;
          v68 = 2112;
          v69 = v29;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Updated announce notification settings for watch to %@", buf, 0x16u);

          v24 = v64;
        }

        objc_autoreleasePoolPop(v24);
        v30 = [(HMDAssistantAccessControl *)v22 announceNotificationModeForCurrentDevice];
        -[HMDUser setAnnounceNotificationModeForCurrentDevice:](v25, "setAnnounceNotificationModeForCurrentDevice:", [v30 unsignedIntegerValue]);

        [v10 respondWithSuccess];
        goto LABEL_49;
      }

      if (!v27)
      {
        goto LABEL_38;
      }

      v42 = HMFGetLogIdentifier();
      *buf = 138543362;
      v67 = v42;
      v43 = "%{public}@Ignoring announce settings update as it is not for the current user";
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = self;
      v26 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
LABEL_38:

        objc_autoreleasePoolPop(v24);
        v44 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
        [v10 respondWithError:v44];

        goto LABEL_49;
      }

      v42 = HMFGetLogIdentifier();
      *buf = 138543362;
      v67 = v42;
      v43 = "%{public}@Ignoring announce settings update as it is not on a watch";
    }

    _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, v43, buf, 0xCu);

    goto LABEL_38;
  }

  v13 = v8;
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

  [(HMDUser *)self _transactionUserUpdated:v15 newValues:v12 message:v10];
LABEL_50:

  v57 = *MEMORY[0x277D85DE8];
}

- (void)_encodeWithCoder:(id)a3
{
  v94 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUser *)self home];
  v6 = [(HMDUser *)self uuid];
  v7 = [v6 UUIDString];
  [v4 encodeObject:v7 forKey:@"userUUID"];

  [v4 encodeConditionalObject:v5 forKey:@"home"];
  v8 = [(HMDUser *)self userDataController];
  [v8 encodeWithCoder:v4];

  if ([v4 hmd_isForXPCTransport])
  {
    if (-[HMDUser isCurrentUser](self, "isCurrentUser") && ![v4 hmd_isForXPCTransportEntitledForSPIAccess])
    {
      v9 = 0;
    }

    else
    {
      v9 = [(HMDUser *)self displayName];
      if (!v9)
      {
        v10 = objc_autoreleasePoolPush();
        v11 = self;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          v13 = HMFGetLogIdentifier();
          *buf = 138543362;
          v93 = v13;
          _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Display name was nil for non-current user", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v10);
        v14 = [[HMDAssertionLogEvent alloc] initWithReason:@"Display name was nil for non-current user"];
        v15 = +[HMDMetricsManager sharedLogEventSubmitter];
        [v15 submitLogEvent:v14];

        v9 = &stru_286509E58;
      }
    }

    [v4 encodeObject:v9 forKey:@"userDisplayName"];
    [v4 encodeBool:-[HMDUser isCurrentUser](self forKey:{"isCurrentUser"), @"HM.isCurrentUser"}];
    if ([v4 hmd_isForXPCTransportEntitledForSPIAccess])
    {
      v91 = [(HMDUser *)self pairingIdentity];
      if (v91)
      {
        v35 = objc_alloc(MEMORY[0x277D0F8A8]);
        v36 = [v91 identifier];
        v37 = [v91 publicKey];
        v38 = [v35 initWithIdentifier:v36 publicKey:v37 privateKey:0];

        [v4 encodeObject:v38 forKey:*MEMORY[0x277CD13E0]];
      }

      v39 = [(HMDUser *)self userDataController];
      v40 = [v39 mediaContentProfileAccessControlAccessoriesToEncode];

      v41 = __accessoriesFromAccessoryUUIDs(v40, v5);
      if (v41)
      {
        v42 = [(HMDUser *)self userDataController];
        v43 = [v42 isInitialized];

        if (v43)
        {
          v44 = [v41 copy];
          [v4 encodeObject:v44 forKey:*MEMORY[0x277CD13B0]];
        }
      }

      v45 = [(HMDUser *)self userDataController];
      v46 = [v45 userListeningHistoryUpdateControlModelAccessoriesToEncode];

      if (v46)
      {
        v47 = [(HMDUser *)self userDataController];
        v48 = [v47 isInitialized];

        if (v48)
        {
          [v4 encodeObject:v46 forKey:*MEMORY[0x277CD1398]];
        }
      }

      v49 = [(HMDUser *)self userID];
      [v4 encodeObject:v49 forKey:@"userID"];

      [v4 encodeBool:-[HMDUser isAdministrator](self forKey:{"isAdministrator"), @"isAdminUser"}];
      [v4 encodeBool:-[HMDUser isOwner](self forKey:{"isOwner"), @"HM.isOwnerUser"}];
      [v4 encodeBool:-[HMDUser isRemoteAccessAllowed](self forKey:{"isRemoteAccessAllowed"), @"HM.isUserAllowedRemoteAccess"}];
      v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser camerasAccessLevel](self, "camerasAccessLevel")}];
      [v4 encodeObject:v50 forKey:*MEMORY[0x277CD1308]];

      v51 = [(HMDUser *)self isAnnounceAccessAllowed];
      [v4 encodeBool:v51 forKey:*MEMORY[0x277CD12C0]];
      v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser audioAnalysisUserDropInAccessLevel](self, "audioAnalysisUserDropInAccessLevel")}];
      [v4 encodeObject:v52 forKey:*MEMORY[0x277CCFC48]];

      v53 = [v5 isAccessToHomeAllowed];
      [v4 encodeBool:v53 forKey:*MEMORY[0x277CD0018]];
      if ((v53 & 1) == 0)
      {
        v54 = [v5 accessNotAllowedReasonCode];
        [v4 encodeInteger:v54 forKey:*MEMORY[0x277CCFD90]];
      }

      v55 = [v5 overriddenHomeAccessControl];
      v56 = v55;
      if (v55)
      {
        v57 = [v55 unsignedIntegerValue];
        [v4 encodeInteger:v57 forKey:*MEMORY[0x277CCFD88]];
      }

      v58 = [(HMDUser *)self presenceAuthStatus];
      [v58 addToCoder:v4];

      if ([(HMDUser *)self isCurrentUser])
      {
        v59 = [v5 presenceComputeStatus];
        [v59 addToCoder:v4];

        v60 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser needsiTunesMultiUserRepair](self, "needsiTunesMultiUserRepair")}];
        [v4 encodeObject:v60 forKey:*MEMORY[0x277CD13C8]];
      }

      if ([(HMDUser *)self isOwner])
      {
        v61 = [(HMDUser *)self assistantAccessControl];
        [v4 encodeObject:v61 forKey:*MEMORY[0x277CD12F0]];
      }

      else
      {
        v62 = [(HMDUser *)self userDataController];
        v61 = [v62 assistantAccessControlAccessoriesToEncode];

        if (v61)
        {
          v63 = __accessoriesFromAccessoryUUIDs(v61, v5);
          v89 = [v63 count] != 0;
          v64 = [v63 na_map:&__block_literal_global_616_162909];
          [v63 na_map:&__block_literal_global_620];
          v65 = v90 = v9;
          v66 = v56;
          v67 = [HMDAssistantAccessControl alloc];
          v68 = [(HMDUser *)self userDataController];
          v69 = [v68 assistantAccessControlActivityNotificationsEnabledForPersonalRequests];
          v70 = v67;
          v56 = v66;
          v71 = [(HMDAssistantAccessControl *)v70 initWithUser:self appleAccessories:v64 hapAccessoryIdentifiers:v65 enabled:v89 activityNotificationsEnabledForPersonalRequests:v69];

          v72 = [(HMDUser *)self userDataController];
          -[HMDAssistantAccessControl setOptions:](v71, "setOptions:", [v72 assistantAccessControlRequiresAuthenticationForSecureRequests] ^ 1);

          [v4 encodeObject:v71 forKey:*MEMORY[0x277CD12F0]];
          v9 = v90;
        }
      }

      v73 = [(HMDUser *)self userDataController];
      v74 = [v73 supportsHH2MigrationByOwnerManual];

      [v4 encodeBool:v74 forKey:*MEMORY[0x277CD14D0]];
      if ([(HMDUser *)self isCurrentUser])
      {
        v75 = [objc_alloc(MEMORY[0x277CD1810]) initWithDeviceNotificationMode:{-[HMDUser announceNotificationModeForCurrentDevice](self, "announceNotificationModeForCurrentDevice")}];
        [v4 encodeObject:v75 forKey:*MEMORY[0x277CD12C8]];
      }

      v76 = [(HMDUser *)self photosPersonDataManager];
      v77 = [v76 settings];
      [v4 encodeObject:v77 forKey:*MEMORY[0x277CD13F0]];

      v78 = [(HMDUser *)self photosPersonDataManager];
      v79 = [v78 zoneUUID];
      [v4 encodeObject:v79 forKey:*MEMORY[0x277CD1400]];
    }

    v80 = [(HMDUser *)self account];
    v81 = [v80 senderCorrelationIdentifier];

    if (v81 && ([v4 hmd_entitlements] & 0x1000) != 0)
    {
      [v4 encodeObject:v81 forKey:*MEMORY[0x277CD1450]];
    }

    goto LABEL_51;
  }

  v16 = [(HMDUser *)self accountHandle];
  [v4 encodeObject:v16 forKey:@"HM.handle"];

  v17 = [(HMDUser *)self userID];
  [v4 encodeObject:v17 forKey:@"userID"];

  if (([v4 hmd_isForLocalStore] & 1) != 0 || objc_msgSend(v4, "hmd_isForRemoteTransportOnSameAccount"))
  {
    v18 = [(HMDUser *)self accountIdentifier];
    [v4 encodeObject:v18 forKey:@"HM.accountId"];
  }

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser _compatiblePrivilege](self, "_compatiblePrivilege")}];
  [v4 encodeObject:v19 forKey:@"userPrivilege"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser privilege](self, "privilege")}];
  [v4 encodeObject:v20 forKey:@"HM.userAdministratorType"];

  [v4 encodeBool:-[HMDUser isRemoteAccessAllowed](self forKey:{"isRemoteAccessAllowed"), @"HM.isUserAllowedRemoteAccess"}];
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser camerasAccessLevel](self, "camerasAccessLevel")}];
  [v4 encodeObject:v21 forKey:*MEMORY[0x277CD1308]];

  v22 = [(HMDUser *)self isAnnounceAccessAllowed];
  [v4 encodeBool:v22 forKey:*MEMORY[0x277CD12C0]];
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser announceAccessLevel](self, "announceAccessLevel")}];
  [v4 encodeObject:v23 forKey:@"HMDUserAnnounceAccessLevelCodingKey"];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser audioAnalysisUserDropInAccessLevel](self, "audioAnalysisUserDropInAccessLevel")}];
  [v4 encodeObject:v24 forKey:*MEMORY[0x277CCFC48]];

  if (([v4 hmd_isForLocalStore] & 1) != 0 || (objc_msgSend(v4, "hmd_isForRemoteTransportOnSameAccount") & 1) != 0 || objc_msgSend(v4, "hmd_isForRemoteUserAdministrator"))
  {
    v25 = [(HMDUser *)self presenceAuthStatus];
    [v25 addToCoder:v4];
  }

  v26 = [(HMDUser *)self encodingRemoteDisplayName];
  [v4 encodeObject:v26 forKey:@"userDisplayName"];

  v27 = [(HMDUser *)self pairingIdentity];
  v28 = [v27 identifier];
  [v4 encodeObject:v28 forKey:@"pairingUsername"];

  v29 = [(HMDUser *)self pairingIdentity];
  v30 = [v29 publicKey];
  v31 = [v30 data];
  [v4 encodeObject:v31 forKey:@"userPublicKey"];

  v32 = [(HMDUser *)self pairingIdentity];
  [v4 encodeObject:v32 forKey:*MEMORY[0x277CD13E0]];

  if (([v4 hmd_isForLocalStore] & 1) != 0 || objc_msgSend(v4, "hmd_isForRemoteTransportOnSameAccount"))
  {
    v33 = [(HMDUser *)self assistantAccessControl];
    [v4 encodeObject:v33 forKey:*MEMORY[0x277CD12F0]];
  }

  if ([v4 hmd_isForLocalStore] & 1) != 0 || (objc_msgSend(v4, "hmd_isForRemoteUserAdministrator"))
  {
LABEL_50:
    v83 = [(HMDUser *)self accessCode];
    [v4 encodeObject:v83 forKey:@"HMDUserAccessCodeCodingKey"];

    v9 = [(HMDUser *)self accessCodeChangedByUserUUID];
    [v4 encodeObject:v9 forKey:@"HMDUserAccessCodeChangedByUserUUIDCodingKey"];
LABEL_51:

    goto LABEL_52;
  }

  v34 = [v4 hmd_user];
  if ([(HMDUser *)self isEqual:v34])
  {

    goto LABEL_50;
  }

  v82 = [v4 hmd_isForRemoteTransportOnSameAccount];

  if (v82)
  {
    goto LABEL_50;
  }

LABEL_52:
  v84 = [(HMDUser *)self matterCASEAuthenticatedTagID];
  [v4 encodeObject:v84 forKey:@"HMDUserMatterCATIDCodingKey"];

  if ([v4 hmd_isForLocalStore])
  {
    v85 = [(HMDUser *)self cloudShareID];
    [v4 encodeObject:v85 forKey:@"HMDUserCloudShareIDCodingKey"];

    if ([(HMDUser *)self isCurrentUser])
    {
      v86 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser needsiTunesMultiUserRepair](self, "needsiTunesMultiUserRepair")}];
      [v4 encodeObject:v86 forKey:*MEMORY[0x277CD13C8]];
    }
  }

  if (-[HMDUser isCurrentUser](self, "isCurrentUser") && (([v4 hmd_isForLocalStore] & 1) != 0 || objc_msgSend(v4, "hmd_isForRemoteTransportOnSameAccount") && isiOSDevice()))
  {
    v87 = [objc_alloc(MEMORY[0x277CD1810]) initWithDeviceNotificationMode:{-[HMDUser announceNotificationModeForCurrentDevice](self, "announceNotificationModeForCurrentDevice")}];
    [v4 encodeObject:v87 forKey:*MEMORY[0x277CD12C8]];
  }

  v88 = *MEMORY[0x277D85DE8];
}

id __28__HMDUser__encodeWithCoder___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
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
  v5 = [v4 uuid];

  return v5;
}

void *__28__HMDUser__encodeWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
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

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = objc_autoreleasePoolPush();
  [(HMDUser *)self _encodeWithCoder:v5];
  objc_autoreleasePoolPop(v4);
}

- (id)_initWithCoder:(id)a3
{
  v77 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 != objc_opt_class() || ![v4 decodeBoolForKey:@"userIsRemoteGateway"])
  {
    v7 = 0x277CCA000uLL;
    if ([v4 containsValueForKey:@"HM.handle"])
    {
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.handle"];
    }

    else
    {
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userID"];
      if (v9)
      {
        v8 = [HMDAccountHandle accountHandleForDestination:v9];
      }

      else
      {
        v8 = 0;
      }
    }

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.userAdministratorType"];
    v74 = v10;
    if (v10)
    {
      v11 = [v10 integerValue];
    }

    else
    {
      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userPrivilege"];
      v13 = [v12 integerValue];
      if (v13 == 1)
      {
        v11 = 3;
      }

      else
      {
        v11 = v13;
      }
    }

    v14 = *MEMORY[0x277CD13E0];
    if ([v4 containsValueForKey:*MEMORY[0x277CD13E0]])
    {
      v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:v14];
    }

    else
    {
      v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pairingUsername"];
      v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userPublicKey"];
      v18 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v17];
      v15 = [objc_alloc(MEMORY[0x277CFEC20]) initWithIdentifier:v16 publicKey:v18 privateKey:0 permissions:(v11 & 0xFFFFFFFFFFFFFFFDLL) == 1];

      v7 = 0x277CCA000;
    }

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"home"];
    v20 = [(HMDUser *)self initWithAccountHandle:v8 home:v19 pairingIdentity:v15 privilege:2];
    if (!v20)
    {
LABEL_55:
      self = v20;

      v6 = self;
      goto LABEL_56;
    }

    v72 = v15;
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDUserCloudShareIDCodingKey"];
    cloudShareID = v20->_cloudShareID;
    v20->_cloudShareID = v21;

    v73 = v8;
    if (v20->_cloudShareID)
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v20;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543362;
        v76 = v26;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@User has decoded their cloud share id and is cloud share ready", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
      [v24[31] finishWithResult:v20->_cloudShareID];
      v7 = 0x277CCA000uLL;
    }

    v27 = *(v7 + 3240);
    v71 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userUUID"];
    v28 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v71];
    uuid = v20->_uuid;
    v20->_uuid = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.userAdministratorType"];
    v31 = v30;
    if (v30)
    {
      v20->_privilege = [v30 integerValue];
    }

    else
    {
      v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userPrivilege"];
      v33 = [v32 integerValue];
      v34 = 3;
      if (v33 != 1)
      {
        v34 = v33;
      }

      v20->_privilege = v34;
    }

    v20->_privilege = v11;
    if ([v4 containsValueForKey:@"userDisplayName"])
    {
      v35 = *(v7 + 3240);
      v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userDisplayName"];
      displayName = v20->_displayName;
      v20->_displayName = v36;
    }

    v38 = [(HMDUser *)v20 userID];
    if ([v38 isEqual:v20->_displayName])
    {
    }

    else
    {
      v39 = v20->_displayName;

      if (v39)
      {
LABEL_35:
        v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.accountId"];
        accountIdentifier = v20->_accountIdentifier;
        v20->_accountIdentifier = v42;

        if ([v4 containsValueForKey:@"HM.isUserAllowedRemoteAccess"])
        {
          v44 = [v4 decodeBoolForKey:@"HM.isUserAllowedRemoteAccess"];
        }

        else
        {
          v44 = 1;
        }

        v20->_remoteAccessAllowed = v44;
        v45 = [MEMORY[0x277CD1F00] authWithCoder:v4];
        presenceAuthStatus = v20->_presenceAuthStatus;
        v20->_presenceAuthStatus = v45;

        v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD1308]];
        v48 = v47;
        if (v47)
        {
          v20->_camerasAccessLevel = [v47 integerValue];
        }

        v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD12F0]];
        assistantAccessControl = v20->_assistantAccessControl;
        v20->_assistantAccessControl = v49;

        v51 = *MEMORY[0x277CD12C0];
        v52 = v4;
        v53 = [v52 decodeBoolForKey:v51];
        v54 = [MEMORY[0x277CCABB0] numberWithBool:v53];
        v55 = [v52 decodeObjectOfClass:objc_opt_class() forKey:@"HMDUserAnnounceAccessLevelCodingKey"];

        v56 = [(HMDUser *)v20 announceUserAccessLevelFromAnnounceAccessAllowed:v54 announceAccessLevel:v55];
        v20->_announceAccessLevel = v56;
        v57 = [v52 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCFC48]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v58 = v57;
        }

        else
        {
          v58 = 0;
        }

        v59 = v58;

        v60 = [v59 integerValue];
        v20->_audioAnalysisUserDropInAccessLevel = v60;
        if (-[HMDUser isCurrentUser](v20, "isCurrentUser") && (([v52 hmd_isForLocalStore] & 1) != 0 || isWatch() && objc_msgSend(v52, "hmd_isForRemoteTransportOnSameAccount")))
        {
          v61 = [v52 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD12C8]];
          v20->_announceNotificationModeForCurrentDevice = [v61 deviceNotificationMode];
        }

        v62 = [v52 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD13C8]];
        v20->_needsiTunesMultiUserRepair = [v62 BOOLValue];

        v15 = v72;
        if ([v52 containsValueForKey:@"HMDUserAccessCodeCodingKey"])
        {
          v63 = [v52 decodeObjectOfClass:objc_opt_class() forKey:@"HMDUserAccessCodeCodingKey"];
          accessCode = v20->_accessCode;
          v20->_accessCode = v63;
        }

        if ([v52 containsValueForKey:@"HMDUserAccessCodeChangedByUserUUIDCodingKey"])
        {
          v65 = [v52 decodeObjectOfClass:objc_opt_class() forKey:@"HMDUserAccessCodeChangedByUserUUIDCodingKey"];
          accessCodeChangedByUserUUID = v20->_accessCodeChangedByUserUUID;
          v20->_accessCodeChangedByUserUUID = v65;
        }

        if ([v52 containsValueForKey:@"HMDUserMatterCATIDCodingKey"])
        {
          v67 = [v52 decodeObjectOfClass:objc_opt_class() forKey:@"HMDUserMatterCATIDCodingKey"];
          matterCASEAuthenticatedTagID = v20->_matterCASEAuthenticatedTagID;
          v20->_matterCASEAuthenticatedTagID = v67;
        }

        v8 = v73;
        goto LABEL_55;
      }
    }

    v40 = __displayNameForUser(v20);
    v41 = v20->_displayName;
    v20->_displayName = v40;

    goto LABEL_35;
  }

  v6 = [[HMDResidentUser alloc] initWithCoder:v4];
LABEL_56:

  v69 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (HMDUser)userWithDictionary:(id)a3 home:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 hmf_stringForKey:@"userID"];
  if (v8)
  {
    v9 = [a1 privilegeFromDictionary:v6];
    v10 = [v6 hmf_numberForKey:@"HM.isUserAllowedRemoteAccess"];
    v11 = +[HMDAccountHandleFormatter defaultFormatter];
    v12 = [v11 accountHandleFromString:v8];

    v13 = [[HMDUser alloc] initWithAccountHandle:v12 home:v7 pairingIdentity:0 privilege:v9];
    v14 = __displayNameForUser(v13);
    [(HMDUser *)v13 setDisplayName:v14];

    v29 = v10;
    -[HMDUser setRemoteAccessAllowed:](v13, "setRemoteAccessAllowed:", [v10 BOOLValue]);
    v15 = [v6 hmf_numberForKey:*MEMORY[0x277CD1308]];
    v16 = v15;
    if (v15)
    {
      -[HMDUser setCamerasAccessLevel:](v13, "setCamerasAccessLevel:", [v15 integerValue]);
    }

    v17 = v7;
    if (v13)
    {
      v18 = *MEMORY[0x277CD12C0];
      v19 = v6;
      v20 = [v19 hmf_numberForKey:v18];
      v21 = [v19 hmf_numberForKey:@"HMDUserAnnounceAccessLevelCodingKey"];

      v22 = [(HMDUser *)v13 announceUserAccessLevelFromAnnounceAccessAllowed:v20 announceAccessLevel:v21];
    }

    else
    {
      v22 = 0;
    }

    [(HMDUser *)v13 setAnnounceAccessLevel:v22];

    v7 = v17;
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = a1;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v26;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Cannot create user from dictionary because userID is not given", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    v13 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (unint64_t)privilegeFromDictionary:(id)a3
{
  v3 = [a3 hmf_numberForKey:@"HM.userAdministratorType"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t132_162983 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t132_162983, &__block_literal_global_590_162984);
  }

  v3 = logCategory__hmf_once_v133_162985;

  return v3;
}

uint64_t __22__HMDUser_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v133_162985;
  logCategory__hmf_once_v133_162985 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)sharedZoneNameForUserUUID:(id)a3
{
  v3 = [a3 UUIDString];
  v4 = [@"user-data-shared-" stringByAppendingString:v3];

  return v4;
}

+ (id)privateZoneNameForUserUUID:(id)a3
{
  v3 = [a3 UUIDString];
  v4 = [@"user-data-private-" stringByAppendingString:v3];

  return v4;
}

+ (id)UUIDWithUserID:(id)a3 forHomeIdentifier:(id)a4 uuid:(id)a5 pairingIdentity:(id)a6
{
  v43[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v12)
  {
    v15 = [v12 copy];
LABEL_3:
    v16 = v15;
    goto LABEL_11;
  }

  v17 = [v13 identifier];

  if (v11 && v17)
  {
    v18 = MEMORY[0x277CCAD78];
    v19 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"05A41D49-2A4D-4D9E-8A3E-43A779B973BA"];
    v20 = [v11 UUIDString];
    v43[0] = v20;
    v21 = [v14 identifier];
    v43[1] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
    v16 = [v18 hm_deriveUUIDFromBaseUUID:v19 identifierSalt:0 withSalts:v22];
  }

  else
  {
    v23 = MEMORY[0x277CCAD78];
    if (!v10 || !v11)
    {
      v15 = [MEMORY[0x277CCAD78] UUID];
      goto LABEL_3;
    }

    v19 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"05A41D49-2A4D-4D9E-8A3E-43A779B973BA"];
    v20 = [v11 UUIDString];
    v42[0] = v20;
    v42[1] = v10;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
    v16 = [v23 hm_deriveUUIDFromBaseUUID:v19 identifierSalt:0 withSalts:v21];
  }

LABEL_11:
  v24 = objc_autoreleasePoolPush();
  v25 = a1;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v27 = HMFGetLogIdentifier();
    v30 = 138544642;
    v31 = v27;
    v32 = 2112;
    v33 = v16;
    v34 = 2112;
    v35 = v10;
    v36 = 2112;
    v37 = v11;
    v38 = 2112;
    v39 = v12;
    v40 = 2112;
    v41 = v14;
    _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Created user UUID: %@ from userID: %@ homeUUID: %@ uuid: %@ pairingIdentity: %@", &v30, 0x3Eu);
  }

  objc_autoreleasePoolPop(v24);
  v28 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)userIDForAccountHandle:(id)a3
{
  v3 = [a3 URI];
  v4 = [v3 unprefixedURI];

  return v4;
}

+ (id)ownerWithUserID:(id)a3 home:(id)a4 pairingIdentity:(id)a5 homeManager:(id)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v30 = 0;
  v14 = [v13 getOrCreateLocalPairingIdentity:&v30];
  v15 = v30;
  if (v14)
  {
    if (v10 && v12 && ![v14 isEqual:v12])
    {
      v22 = +[HMDAccountHandleFormatter defaultFormatter];
      v29 = [v22 accountHandleFromString:v10];

      v23 = objc_alloc(MEMORY[0x277CFEC20]);
      v24 = [v12 identifier];
      v25 = [v12 publicKey];
      v26 = [v23 initWithIdentifier:v24 publicKey:v25 privateKey:0 permissions:1];

      v17 = v29;
      v16 = [[a1 alloc] initWithAccountHandle:v29 home:v11 pairingIdentity:v26 privilege:3];
    }

    else
    {
      v16 = [a1 currentUserWithPrivilege:3 forHome:v11];
      v17 = [[HMDAssistantAccessControl alloc] initWithUser:v16];
      [v16 setAssistantAccessControl:v17];
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = a1;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v21;
      v33 = 2112;
      v34 = v15;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to get current user from keychain with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v16 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v16;
}

- (HMDUser)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(HMDUser *)self _initWithCoder:v4];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x277D0F820]);
  v4 = [(HMDUser *)self messageTargetUUID];
  v5 = [v3 initWithTarget:v4];

  return v5;
}

- (id)logIdentifier
{
  v2 = [(HMDUser *)self uuid];
  v3 = [v2 UUIDString];

  return v3;
}

- (NSData)publicKey
{
  v2 = [(HMDUser *)self pairingIdentity];
  v3 = [v2 publicKey];
  v4 = [v3 data];

  return v4;
}

- (NSString)pairingUsername
{
  v2 = [(HMDUser *)self pairingIdentity];
  v3 = [v2 identifier];

  return v3;
}

- (void)setUserID:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v4 = +[HMDAccountHandleFormatter defaultFormatter];
    v5 = [v4 accountHandleFromString:v6];

    if (v5)
    {
      [(HMDUser *)self setAccountHandle:v5];
    }
  }

  else
  {
    [(HMDUser *)self setAccountHandle:0];
  }
}

- (NSString)userID
{
  v2 = [(HMDUser *)self accountHandle];
  v3 = [HMDUser userIDForAccountHandle:v2];

  return v3;
}

- (NSNumber)notificationContextNFCIdentifier
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HMDUser *)self nfcIssuerKeyIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 bytes];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@NFC issuer key identifier for user is nil", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v6 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSNumber)notificationContextHAPIdentifier
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v6[1] = 0;
  v2 = [(HMDUser *)self uuid];
  [v2 getUUIDBytes:v6];

  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:LODWORD(v6[0])];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)configurePersonSettingsManager
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(HMDUser *)self isCurrentUser])
  {
    v3 = [(HMDUser *)self home];
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    v7 = v6;
    if (v3)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v8;
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Creating the person settings manager", &v16, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
      v9 = [HMDPersonSettingsManager alloc];
      v10 = [(HMDUser *)v5 privateBackingStoreController];
      v11 = [v10 localZone];
      v12 = [(HMDPersonSettingsManager *)v9 initWithHome:v3 localZone:v11 workQueue:v5->_queue];
      [(HMDUser *)v5 setPersonSettingsManager:v12];

      v13 = [(HMDUser *)v5 personSettingsManager];
      [v13 configure];
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v14 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v14;
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Not creating person settings manager because home reference is nil", &v16, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)configurePhotosPersonDataManager
{
  dispatch_assert_queue_V2(self->_queue);
  v9 = [(HMDUser *)self home];
  if (v9 && ([(HMDUser *)self isRunningOnHomeOwnersDevice]|| [(HMDUser *)self isCurrentUser]))
  {
    v3 = [HMDUserPhotosPersonDataManager alloc];
    v4 = [(HMDUser *)self messageDispatcher];
    v5 = [(HMDUser *)self sharedBackingStoreController];
    v6 = [v5 localZone];
    v7 = [(HMDUserPhotosPersonDataManager *)v3 initWithUser:self messageDispatcher:v4 localZone:v6 workQueue:self->_queue];
    [(HMDUser *)self setPhotosPersonDataManager:v7];

    v8 = [(HMDUser *)self photosPersonDataManager];
    [v8 configure];
  }
}

- (HMDPhotosPersonManager)photosPersonManager
{
  v2 = [(HMDUser *)self photosPersonDataManager];
  v3 = [v2 personManager];

  return v3;
}

- (HMPhotosPersonManagerSettings)photosPersonManagerSettings
{
  v2 = [(HMDUser *)self photosPersonDataManager];
  v3 = [v2 settings];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[HMDUserPhotosPersonDataManager defaultSettings];
  }

  v6 = v5;

  return v6;
}

- (void)saveSyncDataToLocalDisk:(id)a3
{
  v37[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUser *)self home];
  if (v5)
  {
    v6 = [(HMDUser *)self userID];

    if (v6)
    {
      v7 = objc_autoreleasePoolPush();
      v36[0] = @"HMD.sync.data.homeUUID";
      v8 = [v5 uuid];
      v9 = [v8 UUIDString];
      v37[0] = v9;
      v37[1] = self;
      v36[1] = @"HMD.sync.data.user";
      v36[2] = @"HMD.sync.data.timestamp";
      v10 = [MEMORY[0x277CBEAA8] now];
      v36[3] = @"HMD.sync.data.data";
      v37[2] = v10;
      v37[3] = v4;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:4];

      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v31 = v15;
        v32 = 2112;
        v33 = v11;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Storing sync data for for user: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v16 = encodeRootObject();
      if (v16)
      {
        v17 = [v5 uuid];
        v18 = [(HMDUser *)v13 syncDataFileNameWithHomeUUID:v17];

        v19 = [HMDPersistentStore writeData:v16 toStorePath:v18 dataLabel:@"SyncData"];
        v20 = objc_autoreleasePoolPush();
        v21 = v13;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v23 = v29 = v7;
          *buf = 138543874;
          v31 = v23;
          v32 = 2112;
          v33 = v19;
          v34 = 2112;
          v35 = v18;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Stored [%@] bytes to [%@]", buf, 0x20u);

          v7 = v29;
        }

        objc_autoreleasePoolPop(v20);
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        v25 = v13;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543618;
          v31 = v27;
          v32 = 2112;
          v33 = v11;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Nothing to store as there is no data after archiving %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v24);
      }

      objc_autoreleasePoolPop(v7);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)syncDataFileNameWithHomeUUID:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = hh1ToHH2PerDeviceMigrationDirectoryPath;
  v7 = [(HMDUser *)self uuid];
  v8 = [v4 stringWithFormat:@"%@/HMDUser-Sync-Data-%@-%@.plist", v6, v5, v7];

  return v8;
}

- (id)announceNotificationFileName
{
  v3 = [(HMDUser *)self uuid];
  v4 = [(HMDUser *)self announceNotificationFileNameForUserUUID:v3];

  return v4;
}

- (id)announceNotificationFileNameForUserUUID:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = hh1ToHH2PerDeviceMigrationDirectoryPath;
  v6 = [v3 stringWithFormat:@"%@/HMDUser-Announce-Notification-Mode-%@.plist", v5, v4];

  return v6;
}

- (void)savePersonClassificationSettingsForCurrentUserToLocalDisk
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(HMDUser *)self isCurrentUser])
  {
    v3 = [(HMDUser *)self personSettingsManager];
    v4 = v3;
    if (v3)
    {
      [v3 savePersonManagerSettingsToLocalDiskForMigration];
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v14 = 138543362;
        v15 = v12;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@No person settings manager. Not storing person classification settings to local disk", &v14, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
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
      v14 = 138543362;
      v15 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Not a current user. Not storing person classification settings to local disk", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)saveAnnounceNotificationModeForCurrentUserToLocalDisk
{
  v31[1] = *MEMORY[0x277D85DE8];
  v3 = [(HMDUser *)self isCurrentUser];
  v4 = objc_autoreleasePoolPush();
  if (v3)
  {
    v30 = @"HMD.announce.notification.mode";
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser announceNotificationModeForCurrentDevice](self, "announceNotificationModeForCurrentDevice")}];
    v31[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];

    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v10;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Storing announce notification mode for user:[%@]", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    [v11 encodeObject:v6 forKey:*MEMORY[0x277CCA308]];
    [v11 finishEncoding];
    v12 = [v11 encodedData];
    if (v12)
    {
      v13 = [(HMDUser *)v8 announceNotificationFileName];
      v14 = [HMDPersistentStore writeData:v12 toStorePath:v13 dataLabel:@"AnnounceNotificationModeSettings"];
      v15 = objc_autoreleasePoolPush();
      v16 = v8;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v24 = 138543874;
        v25 = v18;
        v26 = 2112;
        v27 = v14;
        v28 = 2112;
        v29 = v13;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Stored [%@] bytes to [%@]", &v24, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = v8;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v24 = 138543618;
        v25 = v22;
        v26 = 2112;
        v27 = v6;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Nothing to store as there is no data after archiving %@", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
    }

    goto LABEL_13;
  }

  v6 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v24 = 138543362;
    v25 = v12;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Not a current user. Not storing announce notification mode to local disk", &v24, 0xCu);
LABEL_13:
  }

  objc_autoreleasePoolPop(v4);
  v23 = *MEMORY[0x277D85DE8];
}

- (void)_updateAnnounceNotificationMode:(unint64_t)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = [(HMDUser *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDUser *)self isCurrentUser];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser announceNotificationModeForCurrentDevice](v8, "announceNotificationModeForCurrentDevice")}];
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      v20 = 138543874;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating Announce Setting from %@ to %@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    if ([(HMDUser *)v8 announceNotificationModeForCurrentDevice]!= a3)
    {
      [(HMDUser *)v8 setAnnounceNotificationModeForCurrentDevice:a3];
      v14 = [(HMDUser *)v8 home];
      v15 = *MEMORY[0x277CD12D0];
      [v14 saveToCurrentAccountWithReason:*MEMORY[0x277CD12D0]];
      v16 = [v14 homeManager];
      v17 = [(HMDUser *)v8 uuid];
      [v16 updateGenerationCounterWithReason:v15 sourceUUID:v17 shouldNotifyClients:1];
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v18;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Announce settings can only be updated on current user", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)updateAnnounceNotificationMode:(unint64_t)a3
{
  v5 = [(HMDUser *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__HMDUser_updateAnnounceNotificationMode___block_invoke;
  v6[3] = &unk_279734BB8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

- (void)_handleAnnounceSettingsUpdate:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUser *)self queue];
  dispatch_assert_queue_V2(v5);

  if ([(HMDUser *)self isCurrentUser])
  {
    v6 = *MEMORY[0x277CD12C8];
    v21 = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    v8 = [v4 unarchivedObjectForKey:v6 ofClasses:v7];

    if (v8)
    {
      -[HMDUser _updateAnnounceNotificationMode:](self, "_updateAnnounceNotificationMode:", [v8 deviceNotificationMode]);
      [v4 respondWithSuccess];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v18 = [v4 messagePayload];
        *buf = 138543618;
        v23 = v17;
        v24 = 2112;
        v25 = v18;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Missing announce user settings in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Missing announce settings" reason:@"Need announce settings in message" suggestion:0];
      [v4 respondWithError:v19];

      v8 = 0;
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v4 messagePayload];
      *buf = 138543618;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Announce settings can only be updated on current user: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48 description:@"This can only be set for the user's devices." reason:@"Announce notifications are only delivered on devices the user owns." suggestion:0];
    [v4 respondWithError:v8];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovedAccessory:(id)a3
{
  v4 = [a3 userInfo];
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

  v9 = v6;

  if (v9)
  {
    v7 = [(HMDUser *)self userDataController];
    v8 = [v9 uuid];
    [v7 handleRemovedAccessory:v8];
  }
}

- (void)removeAccessoriesFromAssistantAccessControlList:(id)a3
{
  v5 = a3;
  if ([(HMDUser *)self isCurrentUserAndOwner])
  {
    v4 = [(HMDUser *)self assistantAccessControl];
    [v4 removeAccessoriesAddedByOldController:v5];
  }
}

- (void)enableUserListeningHistoryForAccessory:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HMDUser_enableUserListeningHistoryForAccessory___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __50__HMDUser_enableUserListeningHistoryForAccessory___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userDataController];

  if (v2)
  {
    v3 = [*(a1 + 32) userDataController];
    [v3 enableUserListeningHistoryForAccessory:*(a1 + 40)];
  }
}

- (void)_handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUser *)self home];
  v6 = [v5 homeManager];
  v7 = [v6 homes];

  if (v5 && ([v7 containsObject:v5] & 1) != 0)
  {
    if ([(HMDUser *)self isCurrentUser])
    {
      v8 = [v4 arrayForKey:*MEMORY[0x277CD13A0]];
      v9 = v8;
      if (v8)
      {
        v43 = v7;
        v44 = v4;
        v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v11 = v9;
        v12 = [v11 countByEnumeratingWithState:&v47 objects:v51 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v48;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v48 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v47 + 1) + 8 * i)];
              [v10 addObject:v16];
            }

            v13 = [v11 countByEnumeratingWithState:&v47 objects:v51 count:16];
          }

          while (v13);
        }

        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __73__HMDUser__handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs___block_invoke;
        aBlock[3] = &unk_2797359D8;
        v4 = v44;
        v17 = v44;
        v46 = v17;
        v18 = _Block_copy(aBlock);
        v19 = [(HMDUser *)self userDataController];

        if (v19)
        {
          v20 = [(HMDUser *)self userDataController];
          [v20 handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs:v10 completion:v18];
        }

        else
        {
          v39 = objc_autoreleasePoolPush();
          v40 = self;
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v42 = HMFGetLogIdentifier();
            *buf = 138543362;
            v53 = v42;
            _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "%{public}@Missing user data controller.", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v39);
          v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"User data controller not found" reason:@"No settings for this user" suggestion:0];
          [v17 respondWithError:v20];
        }

        v7 = v43;

        v38 = v46;
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        v33 = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          v36 = [v4 messagePayload];
          *buf = 138543618;
          v53 = v35;
          v54 = 2112;
          v55 = v36;
          _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Missing user update listening history control accessories in message payload: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v32);
        v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Missing access control accessories" reason:@"Need access control accessories in message" suggestion:0];
        v37 = [v4 responseHandler];

        if (!v37)
        {
          goto LABEL_31;
        }

        v38 = [v4 responseHandler];
        (v38)[2](v38, v10, 0);
      }

LABEL_31:
      goto LABEL_18;
    }

    v28 = objc_autoreleasePoolPush();
    v29 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v53 = v31;
      v54 = 2112;
      v55 = v4;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Can only modify own ULH control: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v25 = MEMORY[0x277CCA9B8];
    v26 = 2028;
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543874;
      v53 = v24;
      v54 = 2112;
      v55 = v5;
      v56 = 2112;
      v57 = v7;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Not processing user listening history update since the homes mismatch. This user's home (%@) is not in the home manager's homes: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = MEMORY[0x277CCA9B8];
    v26 = 2018;
  }

  v9 = [v25 hmPrivateErrorWithCode:v26];
  [v4 respondWithError:v9];
LABEL_18:

  v27 = *MEMORY[0x277D85DE8];
}

void __73__HMDUser__handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) responseHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) responseHandler];
    (v4)[2](v4, v5, 0);
  }
}

- (void)handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__HMDUser_handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_handleMediaContentProfileAccessControlUpdate:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUser *)self home];
  v6 = [v5 homeManager];
  v7 = [v6 homes];

  if (v5 && ([v7 containsObject:v5] & 1) != 0)
  {
    if (![(HMDUser *)self isCurrentUser])
    {
      v25 = objc_autoreleasePoolPush();
      v26 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543618;
        v51 = v28;
        v52 = 2112;
        v53 = v4;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Can only modify own Media Profile Content control: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      [v4 respondWithError:v9];
      goto LABEL_30;
    }

    v8 = [v4 arrayForKey:*MEMORY[0x277CD13B8]];
    v9 = v8;
    if (v8)
    {
      v42 = v4;
      v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v41 = v9;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v46;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v46 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v45 + 1) + 8 * i)];
            [v10 addObject:v16];
          }

          v13 = [v11 countByEnumeratingWithState:&v45 objects:v49 count:16];
        }

        while (v13);
      }

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __57__HMDUser__handleMediaContentProfileAccessControlUpdate___block_invoke;
      aBlock[3] = &unk_2797359D8;
      v4 = v42;
      v17 = v42;
      v44 = v17;
      v18 = _Block_copy(aBlock);
      v19 = [(HMDUser *)self userDataController];

      if (v19)
      {
        v20 = [(HMDUser *)self userDataController];
        [v20 handleMediaContentProfileAccessControlUpdatedAccessoryUUIDs:v10 completion:v18];
      }

      else
      {
        v36 = objc_autoreleasePoolPush();
        v37 = self;
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = HMFGetLogIdentifier();
          *buf = 138543362;
          v51 = v39;
          _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Missing user data controller.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v36);
        v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"User data controller not found" reason:@"No settings for this user" suggestion:0];
        [v17 respondWithError:v20];
      }

      v35 = v44;
      v9 = v41;
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        v33 = [v4 messagePayload];
        *buf = 138543618;
        v51 = v32;
        v52 = 2112;
        v53 = v33;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Missing access control accessories in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Missing access control accessories" reason:@"Need access control accessories in message" suggestion:0];
      v34 = [v4 responseHandler];

      if (!v34)
      {
        goto LABEL_29;
      }

      v35 = [v4 responseHandler];
      (v35)[2](v35, v10, 0);
    }

LABEL_29:
LABEL_30:

    goto LABEL_31;
  }

  v21 = objc_autoreleasePoolPush();
  v22 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543874;
    v51 = v24;
    v52 = 2112;
    v53 = v5;
    v54 = 2112;
    v55 = v7;
    _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Not processing media content profile update message as not part of homeManager homes. This user's home (%@) is not in the home manager's homes: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v21);
LABEL_31:

  v40 = *MEMORY[0x277D85DE8];
}

void __57__HMDUser__handleMediaContentProfileAccessControlUpdate___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) responseHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) responseHandler];
    (v4)[2](v4, v5, 0);
  }
}

- (void)handleMediaContentProfileAccessControlUpdate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMDUser_handleMediaContentProfileAccessControlUpdate___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_handleAssistantAccessControlUpdate:(id)a3
{
  v119 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUser *)self home];
  v6 = [v5 homeManager];
  v7 = [v6 homes];

  if (v5 && ([v7 containsObject:v5] & 1) != 0)
  {
    v8 = [(HMDUser *)self assistantAccessControl];
    v9 = [v8 accessories];
    v10 = [v9 copy];

    v111 = 0;
    v11 = [HMDAssistantAccessControl accessControlWithMessage:v4 user:self currentAccessories:v10 error:&v111];
    v12 = v111;
    v13 = v12;
    if (!v11)
    {
      v23 = v12;
      v24 = objc_autoreleasePoolPush();
      v25 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v114 = v27;
        v115 = 2112;
        v116 = v4;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Failed to create access control from message: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v13 = v23;
      [v4 respondWithError:v23];
      v28 = 0;
      goto LABEL_63;
    }

    v104 = v11;
    if ([(HMDUser *)self isCurrentUser])
    {
      if (![(HMDUser *)self isOwner])
      {
        v101 = v8;
        v103 = v13;
        context = v10;
        v35 = MEMORY[0x277CBEB18];
        [v11 accessories];
        v37 = v36 = v11;
        v38 = [v35 arrayWithCapacity:{objc_msgSend(v37, "count")}];

        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v39 = [v36 accessories];
        v40 = [v39 countByEnumeratingWithState:&v107 objects:v112 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v108;
          do
          {
            for (i = 0; i != v41; ++i)
            {
              if (*v108 != v42)
              {
                objc_enumerationMutation(v39);
              }

              v44 = [*(*(&v107 + 1) + 8 * i) uuid];
              [v38 addObject:v44];
            }

            v41 = [v39 countByEnumeratingWithState:&v107 objects:v112 count:16];
          }

          while (v41);
        }

        v45 = objc_autoreleasePoolPush();
        v46 = self;
        v47 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = HMFGetLogIdentifier();
          *buf = 138543618;
          v114 = v48;
          v115 = 2112;
          v116 = v104;
          _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@Updating shared user assistant access control to: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v45);
        v95 = [v104 areActivityNotificationsEnabledForPersonalRequests];
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __47__HMDUser__handleAssistantAccessControlUpdate___block_invoke;
        aBlock[3] = &unk_2797359D8;
        v49 = v4;
        v106 = v49;
        v50 = _Block_copy(aBlock);
        v51 = [(HMDUser *)v46 userDataController];

        v13 = v103;
        if (v51)
        {
          v52 = ([v104 options] & 1) == 0;
          v53 = [(HMDUser *)v46 userDataController];
          [v53 handleAssistantAccessControlAccessoryUUIDsUpdated:v38 requireAuthenticationForSecureRequests:v52 activityNotificationsEnabledForPersonalRequests:v95 completion:v50];
          v28 = v104;
        }

        else
        {
          v96 = v49;
          v61 = objc_autoreleasePoolPush();
          v62 = v46;
          v63 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            v64 = HMFGetLogIdentifier();
            *buf = 138543362;
            v114 = v64;
            _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_ERROR, "%{public}@Missing user data controller.", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v61);
          v53 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9005 description:@"User data controller not found. No settings for this user." underlyingError:0];
          [v96 respondWithError:v53];
          v28 = v104;
        }

        v10 = context;
        v8 = v101;
        goto LABEL_63;
      }

      if (v8)
      {
        v102 = v13;
        v14 = v10;
        [v11 setOptions:{objc_msgSend(v8, "options") | objc_msgSend(v11, "options") | 1}];
        if (!isInternalBuild())
        {
          goto LABEL_47;
        }

        v15 = [v11 accessories];
        if ([v15 count])
        {
          v16 = [(HMDUser *)self assistantAccessControl];
          v17 = [v16 accessories];
          if (![v17 count])
          {
            v100 = v8;
            v18 = [(HMDUser *)self assistantAccessControl];
            contextb = [v18 isEnabled];

            if (contextb)
            {
              v8 = v100;
              goto LABEL_47;
            }

            v65 = v104;
            v15 = [v104 user];
            contexta = objc_autoreleasePoolPush();
            v66 = self;
            v67 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
            {
              v68 = HMFGetLogIdentifier();
              *buf = 138543618;
              v114 = v68;
              v115 = 2112;
              v116 = v15;
              _os_log_impl(&dword_2531F8000, v67, OS_LOG_TYPE_INFO, "%{public}@Enabling assistant access controls for internal user: %@", buf, 0x16u);

              v65 = v104;
            }

            objc_autoreleasePoolPop(contexta);
            v69 = [HMDAssistantAccessControl alloc];
            [v65 accessories];
            v16 = v70 = v65;
            v71 = [(HMDAssistantAccessControl *)v69 initWithUser:v15 appleAccessories:v16 enabled:1];
            v17 = v70;
            v104 = v71;
            v8 = v100;
          }
        }

LABEL_47:
        v72 = objc_autoreleasePoolPush();
        v73 = self;
        v74 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
        {
          v75 = HMFGetLogIdentifier();
          *buf = 138543618;
          v114 = v75;
          v115 = 2112;
          v116 = v104;
          _os_log_impl(&dword_2531F8000, v74, OS_LOG_TYPE_DEFAULT, "%{public}@Updating owner user assistant access control to: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v72);
        if (HMFEqualObjects())
        {
          v76 = objc_autoreleasePoolPush();
          v77 = v73;
          v78 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
          {
            v79 = HMFGetLogIdentifier();
            *buf = 138543362;
            v114 = v79;
            _os_log_impl(&dword_2531F8000, v78, OS_LOG_TYPE_INFO, "%{public}@Updated access control resulted in no change", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v76);
          v80 = [v4 responseHandler];

          if (v80)
          {
            v81 = [v4 responseHandler];
            v81[2](v81, 0, 0);
          }

          v10 = v14;
          v13 = v102;
          goto LABEL_22;
        }

        v82 = [v104 model];
        v83 = v82;
        if (v82)
        {
          [v82 setObjectChangeType:2];
          v84 = [v5 backingStore];
          v85 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
          v86 = [v84 transaction:@"Update Assistant Access Control" options:v85];

          [v86 add:v83 withMessage:v4];
          [v86 run];
          v10 = v14;
          v13 = v102;
        }

        else
        {
          v87 = objc_autoreleasePoolPush();
          v88 = v73;
          v89 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v91 = v90 = v8;
            *buf = 138543362;
            v114 = v91;
            _os_log_impl(&dword_2531F8000, v89, OS_LOG_TYPE_ERROR, "%{public}@Failed to create transaction", buf, 0xCu);

            v8 = v90;
          }

          objc_autoreleasePoolPop(v87);
          v92 = [v4 responseHandler];

          v10 = v14;
          v13 = v102;
          v28 = v104;
          if (!v92)
          {
            goto LABEL_62;
          }

          v86 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
          v93 = [v4 responseHandler];
          (v93)[2](v93, v86, 0);
        }

        v28 = v104;
LABEL_62:

        goto LABEL_63;
      }

      v54 = objc_autoreleasePoolPush();
      v55 = self;
      v56 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v58 = v57 = v10;
        *buf = 138543362;
        v114 = v58;
        _os_log_impl(&dword_2531F8000, v56, OS_LOG_TYPE_INFO, "%{public}@Cannot update without an existing access control", buf, 0xCu);

        v10 = v57;
      }

      objc_autoreleasePoolPop(v54);
      v59 = [v4 responseHandler];

      if (!v59)
      {
        goto LABEL_22;
      }

      v34 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9004];
      v60 = [v4 responseHandler];
      (v60)[2](v60, v34, 0);
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v33 = v32 = v10;
        *buf = 138543618;
        v114 = v33;
        v115 = 2112;
        v116 = v4;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Can only modify own access control: %@", buf, 0x16u);

        v10 = v32;
      }

      objc_autoreleasePoolPop(v29);
      v34 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      [v4 respondWithError:v34];
    }

LABEL_22:
    v28 = v104;
LABEL_63:

    goto LABEL_64;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543874;
    v114 = v22;
    v115 = 2112;
    v116 = v5;
    v117 = 2112;
    v118 = v7;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Not processing assistant access control update message as not part of homeManager homes. This user's home (%@) is not in the home manager's homes: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v19);
LABEL_64:

  v94 = *MEMORY[0x277D85DE8];
}

void __47__HMDUser__handleAssistantAccessControlUpdate___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) responseHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) responseHandler];
    (v4)[2](v4, v5, 0);
  }
}

- (void)handleAssistantAccessControlUpdate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HMDUser_handleAssistantAccessControlUpdate___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (BOOL)isCurrentUserAndOwner
{
  v13 = *MEMORY[0x277D85DE8];
  if (![(HMDUser *)self isCurrentUser])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v7;
      v8 = "%{public}@Can only update current user's assistant access controls";
LABEL_8:
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, v8, &v11, 0xCu);
    }

LABEL_9:

    objc_autoreleasePoolPop(v4);
    result = 0;
    goto LABEL_10;
  }

  if (![(HMDUser *)self isOwner])
  {
    v4 = objc_autoreleasePoolPush();
    v9 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v7;
      v8 = "%{public}@Only owners may modify assistant access controls";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  result = 1;
LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setAssistantAccessControl:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  assistantAccessControl = self->_assistantAccessControl;
  self->_assistantAccessControl = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDAssistantAccessControl)assistantAccessControl
{
  os_unfair_lock_lock_with_options();
  v3 = self->_assistantAccessControl;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSUUID)assistantAccessControlModelUUID
{
  v2 = [(HMDUser *)self assistantAccessControl];
  v3 = [v2 modelID];

  return v3;
}

- (BOOL)isValid
{
  v2 = [(HMDUser *)self pairingIdentity];
  v3 = v2 != 0;

  return v3;
}

- (unint64_t)audioAnalysisUserDropInAccessLevel
{
  os_unfair_lock_lock_with_options();
  audioAnalysisUserDropInAccessLevel = self->_audioAnalysisUserDropInAccessLevel;
  os_unfair_lock_unlock(&self->_lock);
  return audioAnalysisUserDropInAccessLevel;
}

- (void)setAudioAnalysisUserDropInAccessLevel:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_audioAnalysisUserDropInAccessLevel = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)announceAccessLevel
{
  os_unfair_lock_lock_with_options();
  announceAccessLevel = self->_announceAccessLevel;
  os_unfair_lock_unlock(&self->_lock);
  return announceAccessLevel;
}

- (void)setAnnounceAccessLevel:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_announceAccessLevel = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)defaultAnnounceUserAccessLevel
{
  if ([(HMDUser *)self isOwner])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)isAnnounceAccessAllowed
{
  v3 = [(HMDUser *)self announceAccessLevel];
  if (!v3)
  {
    v3 = [(HMDUser *)self defaultAnnounceUserAccessLevel];
  }

  return v3 == 2;
}

- (void)setCamerasAccessLevel:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  if (self->_camerasAccessLevel == a3)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_camerasAccessLevel = a3;
    os_unfair_lock_unlock(&self->_lock);

    logAndPostNotification(@"HMDUserCamerasAccessLevelDidChangeNotification", self, 0);
  }
}

- (unint64_t)camerasAccessLevel
{
  os_unfair_lock_lock_with_options();
  camerasAccessLevel = self->_camerasAccessLevel;
  os_unfair_lock_unlock(&self->_lock);
  return camerasAccessLevel;
}

- (BOOL)_setRemoteAccessAllowed:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock_with_options();
  remoteAccessAllowed = self->_remoteAccessAllowed;
  if (remoteAccessAllowed != v3)
  {
    self->_remoteAccessAllowed = v3;
  }

  v6 = remoteAccessAllowed != v3;
  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (BOOL)isRemoteAccessAllowed
{
  if ([(HMDUser *)self isOwner])
  {
    return 1;
  }

  else
  {
    os_unfair_lock_lock_with_options();
    remoteAccessAllowed = self->_remoteAccessAllowed;
    os_unfair_lock_unlock(&self->_lock);
  }

  return remoteAccessAllowed;
}

- (BOOL)refreshDisplayName
{
  v3 = [(HMDUser *)self displayName];
  v4 = __displayNameForUser(self);
  v5 = HMFEqualObjects();
  if ((v5 & 1) == 0)
  {
    [(HMDUser *)self setDisplayName:v4];
  }

  return v5 ^ 1;
}

- (void)setDisplayName:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  displayName = self->_displayName;
  if ((HMFEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_displayName, a3);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)displayName
{
  os_unfair_lock_lock_with_options();
  v3 = self->_displayName;
  os_unfair_lock_unlock(&self->_lock);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [(HMDUser *)self userID];
  }

  v5 = v4;

  return v5;
}

- (HMUserPresenceAuthorization)presenceAuthStatus
{
  os_unfair_lock_lock_with_options();
  v3 = self->_presenceAuthStatus;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPresenceAuthStatus:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  presenceAuthStatus = self->_presenceAuthStatus;
  self->_presenceAuthStatus = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)__handleRemovedAccount:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUser *)self accountHandle];
  if (v5)
  {
    v6 = [v4 userInfo];
    v7 = [v6 objectForKeyedSubscript:@"HMDAccountNotificationKey"];

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

    v10 = [v9 handles];
    v11 = [v10 containsObject:v5];

    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v17 = 138543618;
        v18 = v15;
        v19 = 2112;
        v20 = v9;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Received notification account was removed: %@", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      __registerForAccountNotifications(v13);
      __handleUpdatedAccount(v13);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)__handleAddedAccount:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUser *)self accountHandle];
  if (v5)
  {
    v6 = [v4 userInfo];
    v7 = [v6 objectForKeyedSubscript:@"HMDAccountNotificationKey"];

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

    v10 = [v9 handles];
    v11 = [v10 containsObject:v5];

    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v21 = 138543618;
        v22 = v15;
        v23 = 2112;
        v24 = v9;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Received notification account was added: %@", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      __registerForAccountNotifications(v13);
      __updateWithAccount(v13, v9);
      __handleUpdatedAccount(v13);
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Account handle does not exist", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)requiresMakoSupport
{
  v2 = [(HMDUser *)self accountHandle];
  v3 = [v2 type] == 2;

  return v3;
}

- (id)account
{
  v3 = +[HMDAccountRegistry sharedRegistry];
  v4 = [(HMDUser *)self accountHandle];
  if (v4)
  {
    v5 = [v3 accountForHandle:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_handleNeedsiTunesMultiUserRepair:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMDUser *)self isCurrentUser])
  {
    v5 = [v4 numberForKey:*MEMORY[0x277CD13C8]];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 BOOLValue];
      if (v7 != [(HMDUser *)self needsiTunesMultiUserRepair])
      {
        v8 = [(HMDUser *)self home];
        v9 = objc_autoreleasePoolPush();
        v10 = self;
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = HMFGetLogIdentifier();
          v13 = [MEMORY[0x277CCABB0] numberWithBool:v7];
          v26 = 138543618;
          v27 = v12;
          v28 = 2112;
          v29 = v13;
          _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Setting needs iTunes multi-user repair %@.", &v26, 0x16u);
        }

        objc_autoreleasePoolPop(v9);
        [(HMDUser *)v10 setNeedsiTunesMultiUserRepair:v7];
        [v8 saveToCurrentAccountWithReason:@"Needs iTunes Multi-User Repair Updated"];
        v14 = [v8 homeManager];
        v15 = [(HMDUser *)v10 uuid];
        [v14 updateGenerationCounterWithReason:@"Needs iTunes Multi-User Repair Updated" sourceUUID:v15 shouldNotifyClients:1];
      }

      [v4 respondWithSuccess];
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v26 = 138543618;
        v27 = v23;
        v28 = 2112;
        v29 = v4;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Missing value to set iTunes Multi User Repair: %@", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Need a value" reason:@"Need a value" suggestion:0];
      [v4 respondWithError:v24];

      v6 = 0;
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v19;
      v28 = 2112;
      v29 = v4;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Can only send this message to current user: %@", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"User is not current user" reason:@"Can only set on current user" suggestion:0];
    [v4 respondWithError:v6];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_handleShareClientRepairRequest:(id)a3
{
  v71 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uuidForKey:*MEMORY[0x277CD14A8]];
  v6 = [(HMDUser *)self uuid];
  v7 = HMFEqualObjects();

  if (v7)
  {
    v8 = [(HMDUser *)self home];
    v9 = [v8 currentUser];
    v10 = [v9 isOwner];

    if (v10)
    {
      v11 = [v8 uuid];
      v12 = *MEMORY[0x277CD1478];
      v13 = [v4 uuidForKey:*MEMORY[0x277CD1478]];
      v14 = [v11 isEqual:v13];

      if (v14)
      {
        v15 = *MEMORY[0x277CD1498];
        v16 = [v4 dataForKey:*MEMORY[0x277CD1498]];

        if (v16)
        {
          v17 = MEMORY[0x277CCAAC8];
          v18 = objc_opt_class();
          v19 = [v4 dataForKey:v15];
          v60 = 0;
          v56 = [v17 unarchivedObjectOfClass:v18 fromData:v19 error:&v60];
          v20 = v60;

          if (v56)
          {
            v65[0] = v15;
            v21 = encodeRootObject();
            v66[0] = v21;
            v65[1] = *MEMORY[0x277CD1468];
            v22 = [v4 stringForKey:?];
            v66[1] = v22;
            v65[2] = v12;
            v23 = [v4 stringForKey:v12];
            v66[2] = v23;
            v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:3];

            v55 = +[HMDHomeKitVersion version7];
            v63 = @"kRequiredCapabilitiesKey";
            v61[0] = @"kHomedSupportedFeaturesKey";
            v61[1] = @"kHomedVersionKey";
            v62[0] = &unk_286627280;
            v24 = MEMORY[0x277CCABB0];
            v25 = [v55 versionString];
            [v25 doubleValue];
            v26 = [v24 numberWithDouble:?];
            v62[1] = v26;
            v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:2];
            v64 = v27;
            v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];

            v29 = objc_autoreleasePoolPush();
            v30 = self;
            v31 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              v32 = HMFGetLogIdentifier();
              *buf = 138543618;
              v68 = v32;
              v69 = 2112;
              v70 = v28;
              _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Sending user share repair message with device capabilites %@.", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v29);
            objc_initWeak(buf, v30);
            v57[0] = MEMORY[0x277D85DD0];
            v57[1] = 3221225472;
            v57[2] = __43__HMDUser__handleShareClientRepairRequest___block_invoke;
            v57[3] = &unk_279733AE8;
            objc_copyWeak(&v59, buf);
            v58 = v4;
            [(HMDUser *)v30 _sendAccountMessage:@"HMDUCM.rRepr" payload:v54 deviceCapabilities:v28 multicast:1 preferPrimary:0 completion:v57];

            objc_destroyWeak(&v59);
            objc_destroyWeak(buf);
          }

          else
          {
            if (!v20)
            {
              v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Unable to decode repair info" reason:@"Corrupted repair payload" suggestion:0];
            }

            v49 = objc_autoreleasePoolPush();
            v50 = self;
            v51 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              v52 = HMFGetLogIdentifier();
              *buf = 138543618;
              v68 = v52;
              v69 = 2112;
              v70 = v20;
              _os_log_impl(&dword_2531F8000, v51, OS_LOG_TYPE_ERROR, "%{public}@Unable to decoderepairInfo. %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v49);
            [v4 respondWithError:v20];
          }
        }

        else
        {
          v45 = objc_autoreleasePoolPush();
          v46 = self;
          v47 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v48 = HMFGetLogIdentifier();
            *buf = 138543362;
            v68 = v48;
            _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@Payload does not have repair info.", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v45);
          v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Unable to determine required arguments" reason:@"Missing repair payload" suggestion:0];
          [v4 respondWithError:v20];
        }
      }

      else
      {
        v41 = objc_autoreleasePoolPush();
        v42 = self;
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = HMFGetLogIdentifier();
          *buf = 138543362;
          v68 = v44;
          _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@Share request does not have valid home.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v41);
        v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Home not valid" reason:@"Missing home or invalid home" suggestion:0];
        [v4 respondWithError:v20];
      }
    }

    else
    {
      v37 = objc_autoreleasePoolPush();
      v38 = self;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138543618;
        v68 = v40;
        v69 = 2112;
        v70 = v4;
        _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@Can only send this message from owner: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v37);
      v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"From user is not owner" reason:@"Can currently only repair from home owner" suggestion:0];
      [v4 respondWithError:v20];
    }
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    v34 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v68 = v36;
      v69 = 2112;
      v70 = v4;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Attempt to send repair request to mismatched user from message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Unable to find to user in payload" reason:@"Need validated to user in payload" suggestion:0];
    [v4 respondWithError:v8];
  }

  v53 = *MEMORY[0x277D85DE8];
}

void __43__HMDUser__handleShareClientRepairRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to send remote share client repair message: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 32) respondWithError:v5];
  }

  else
  {
    [*(a1 + 32) respondWithSuccess];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_sendSecureShareClientPayloadToMostEligibleDevice:(id)a3 completion:(id)a4
{
  v37[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[HMDHomeKitVersion version6];
  v9 = *MEMORY[0x277CD1468];
  v10 = [v6 objectForKeyedSubscript:*MEMORY[0x277CD1468]];
  v11 = [v10 isEqualToString:@"com.apple.applemediaservices.multiuser"];

  if (v11)
  {
    v12 = +[HMDHomeKitVersion version6];
  }

  else
  {
    v13 = [v6 objectForKeyedSubscript:v9];
    v14 = [v13 isEqualToString:@"com.apple.mediaservicesbroker.container"];

    if (!v14)
    {
      goto LABEL_6;
    }

    v12 = +[HMDHomeKitVersion version7];
  }

  v15 = v12;

  v8 = v15;
LABEL_6:
  v36 = @"kRequiredCapabilitiesKey";
  v34[0] = @"kHomedSupportedFeaturesKey";
  v34[1] = @"kHomedVersionKey";
  v35[0] = &unk_286627268;
  v16 = MEMORY[0x277CCABB0];
  v17 = [v8 versionString];
  [v17 doubleValue];
  v18 = [v16 numberWithDouble:?];
  v35[1] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
  v37[0] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];

  v21 = objc_autoreleasePoolPush();
  v22 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543618;
    v31 = v24;
    v32 = 2112;
    v33 = v20;
    _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Sending user share message with device capabilites %@.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  objc_initWeak(buf, v22);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __72__HMDUser__sendSecureShareClientPayloadToMostEligibleDevice_completion___block_invoke;
  v27[3] = &unk_2797355F8;
  objc_copyWeak(&v29, buf);
  v25 = v7;
  v28 = v25;
  [(HMDUser *)v22 _sendAccountMessage:@"HMDUCM.rsr" payload:v6 deviceCapabilities:v20 multicast:0 preferPrimary:0 completion:v27];

  objc_destroyWeak(&v29);
  objc_destroyWeak(buf);

  v26 = *MEMORY[0x277D85DE8];
}

void __72__HMDUser__sendSecureShareClientPayloadToMostEligibleDevice_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [v6 hmf_dataForKey:*MEMORY[0x277CD1458]];
  v9 = objc_autoreleasePoolPush();
  v10 = WeakRetained;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543874;
    v15 = v12;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Received user share message response. nonce:%@ Error: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  (*(*(a1 + 32) + 16))();

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleMultiUserSharePayloadRequest:(id)a3
{
  v90 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uuidForKey:*MEMORY[0x277CD14A8]];
  v6 = [(HMDUser *)self uuid];
  v7 = HMFEqualObjects();

  if (v7)
  {
    if ([(HMDUser *)self isOwner])
    {
      v8 = [v4 uuidForKey:*MEMORY[0x277CD1470]];
      if (!v8)
      {
        v42 = objc_autoreleasePoolPush();
        v43 = self;
        v44 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = HMFGetLogIdentifier();
          *buf = 138543618;
          v83 = v45;
          v84 = 2112;
          v85 = v4;
          _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, "%{public}@Could not determine from user in message: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v42);
        v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Unable to find from user in message payload" reason:@"Need valid from user in message payload" suggestion:0];
        [v4 respondWithError:v10];
        v9 = 0;
        goto LABEL_43;
      }

      v9 = v8;
      v10 = [(HMDUser *)self home];
      v11 = [v10 users];
      v12 = [v11 hmf_firstObjectWithUUID:v9];
      if (!v12)
      {
        v46 = objc_autoreleasePoolPush();
        v47 = self;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = HMFGetLogIdentifier();
          *buf = 138544130;
          v83 = v49;
          v84 = 2112;
          v85 = v9;
          v86 = 2112;
          v87 = v10;
          v88 = 2112;
          v89 = v11;
          _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@Could not determine from user with uuid: %@ home: %@ users: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v46);
        v25 = MEMORY[0x277CCA9B8];
        v26 = @"Unable to find from user in home";
        v27 = @"Need valid from user";
        v28 = 2;
LABEL_29:
        v50 = [v25 hmErrorWithCode:v28 description:v26 reason:v27 suggestion:0];
        [v4 respondWithError:v50];
LABEL_41:

LABEL_42:
        goto LABEL_43;
      }

      v13 = [v10 uuid];
      v14 = [v4 uuidForKey:*MEMORY[0x277CD1478]];
      v15 = [v13 isEqual:v14];

      if (v15)
      {
        v16 = [v4 dataForKey:*MEMORY[0x277CD14B8]];
        if (v16)
        {
          v17 = v16;
          v18 = [v4 dataForKey:*MEMORY[0x277CD14B0]];
          if (v18)
          {
            v19 = v18;
            v20 = [v4 stringForKey:*MEMORY[0x277CD1468]];

            if (v20)
            {
              if ([v12 isCurrentUser])
              {
                if ([(HMDUser *)self userCloudShareWithOwnerMessagingState]!= 2)
                {
                  v72 = [v4 messagePayload];
                  v79[0] = MEMORY[0x277D85DD0];
                  v79[1] = 3221225472;
                  v79[2] = __47__HMDUser__handleMultiUserSharePayloadRequest___block_invoke;
                  v79[3] = &unk_279730C20;
                  v80 = v4;
                  v81 = self;
                  [(HMDUser *)self _sendSecureShareClientPayloadToMostEligibleDevice:v72 completion:v79];

                  v73 = objc_autoreleasePoolPush();
                  v74 = self;
                  v75 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
                  {
                    v76 = HMFGetLogIdentifier();
                    [(HMDUser *)v74 accountHandle];
                    v77 = v78 = v73;
                    *buf = 138543618;
                    v83 = v76;
                    v84 = 2112;
                    v85 = v77;
                    _os_log_impl(&dword_2531F8000, v75, OS_LOG_TYPE_INFO, "%{public}@Received request to send client payload to user : %@", buf, 0x16u);

                    v73 = v78;
                  }

                  objc_autoreleasePoolPop(v73);
                  goto LABEL_42;
                }

                v21 = objc_autoreleasePoolPush();
                v22 = self;
                v23 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                {
                  v24 = HMFGetLogIdentifier();
                  *buf = 138543362;
                  v83 = v24;
                  _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Sending cloud share with owner message was blocked.", buf, 0xCu);
                }

                objc_autoreleasePoolPop(v21);
                v25 = MEMORY[0x277CCA9B8];
                v26 = @"Unable to send the message";
                v27 = @"Sending cloud share with owner message was blocked.";
                v28 = 52;
                goto LABEL_29;
              }

              v67 = objc_autoreleasePoolPush();
              v68 = self;
              v69 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
              {
                v70 = HMFGetLogIdentifier();
                *buf = 138543874;
                v83 = v70;
                v84 = 2112;
                v85 = v12;
                v86 = 2112;
                v87 = v4;
                _os_log_impl(&dword_2531F8000, v69, OS_LOG_TYPE_ERROR, "%{public}@From user %@ is not current user for message: %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v67);
              v71 = [v4 responseHandler];

              if (!v71)
              {
                goto LABEL_42;
              }

              v50 = [v4 responseHandler];
              v64 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
LABEL_40:
              v65 = v64;
              v50[2](v50, v64, 0);

              goto LABEL_41;
            }
          }

          else
          {
          }
        }

        v59 = objc_autoreleasePoolPush();
        v60 = self;
        v61 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          v62 = HMFGetLogIdentifier();
          *buf = 138543362;
          v83 = v62;
          _os_log_impl(&dword_2531F8000, v61, OS_LOG_TYPE_ERROR, "%{public}@Payload did not have required fields.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v59);
        v63 = [v4 responseHandler];

        if (!v63)
        {
          goto LABEL_42;
        }

        v50 = [v4 responseHandler];
        v56 = MEMORY[0x277CCA9B8];
        v57 = @"Unable to determine required arguments";
        v58 = @"Missing either URL, token or container ID";
      }

      else
      {
        v51 = objc_autoreleasePoolPush();
        v52 = self;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v54 = HMFGetLogIdentifier();
          *buf = 138543362;
          v83 = v54;
          _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_ERROR, "%{public}@Share request does not have valid home.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v51);
        v55 = [v4 responseHandler];

        if (!v55)
        {
          goto LABEL_42;
        }

        v50 = [v4 responseHandler];
        v56 = MEMORY[0x277CCA9B8];
        v57 = @"Home not valid";
        v58 = @"Missing home or invalid home";
      }

      v64 = [v56 hmErrorWithCode:3 description:v57 reason:v58 suggestion:0];
      goto LABEL_40;
    }

    v37 = objc_autoreleasePoolPush();
    v38 = self;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543618;
      v83 = v40;
      v84 = 2112;
      v85 = v4;
      _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@Can only send this message to owner: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v37);
    v41 = [v4 responseHandler];

    if (v41)
    {
      v9 = [v4 responseHandler];
      v34 = MEMORY[0x277CCA9B8];
      v35 = @"To user is not owner";
      v36 = @"Can currently only share to owner";
      goto LABEL_22;
    }
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543618;
      v83 = v32;
      v84 = 2112;
      v85 = v4;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Attempt to send client payload to mismatched identifier from message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    v33 = [v4 responseHandler];

    if (v33)
    {
      v9 = [v4 responseHandler];
      v34 = MEMORY[0x277CCA9B8];
      v35 = @"Unable to find to user in payload";
      v36 = @"Need validated to user in payload";
LABEL_22:
      v10 = [v34 hmErrorWithCode:3 description:v35 reason:v36 suggestion:0];
      (v9)[2](v9, v10, 0);
LABEL_43:
    }
  }

  v66 = *MEMORY[0x277D85DE8];
}

void __47__HMDUser__handleMultiUserSharePayloadRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) responseHandler];

  if (v7)
  {
    if (v6)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 40);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543618;
        v18 = v11;
        v19 = 2112;
        v20 = v6;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to send cloud share with owner message. Error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      [*(a1 + 40) _handleCloudShareWithOwnerMessageError];
    }

    if (v5)
    {
      v15 = *MEMORY[0x277CD1458];
      v16 = v5;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    }

    else
    {
      v12 = 0;
    }

    v13 = [*(a1 + 32) responseHandler];
    (v13)[2](v13, v6, v12);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleShareLookupInfoRequest:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uuidForKey:@"kUserUUIDKey"];
  v6 = [(HMDUser *)self uuid];
  v7 = HMFEqualObjects();

  if (v7)
  {
    v8 = [(HMDUser *)self accountHandle];

    if (v8)
    {
      v9 = [(HMDUser *)self accountHandle];
      v10 = [v9 cloudKitLookupInfo];

      if (!v10)
      {
        v10 = [v4 responseHandler];

        if (v10)
        {
          v31 = [v4 responseHandler];
          v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Can't create lookup info" reason:@"Unable to convert account handle to lookup info" suggestion:0];
          (v31)[2](v31, v32, 0);

          v10 = 0;
        }

        goto LABEL_19;
      }

      v11 = encodeRootObject();
      v33 = *MEMORY[0x277CD1488];
      v34 = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v36 = v16;
        v37 = 2112;
        v38 = v10;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Obtained share lookup: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      v17 = [v4 responseHandler];

      if (v17)
      {
        v18 = [v4 responseHandler];
        (v18)[2](v18, 0, v12);
      }

LABEL_18:
LABEL_19:

      goto LABEL_20;
    }

    v25 = objc_autoreleasePoolPush();
    v26 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v28;
      v37 = 2112;
      v38 = v4;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Do not have account handle: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v29 = [v4 responseHandler];

    if (v29)
    {
      v10 = [v4 responseHandler];
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"No account handle" reason:@"User has no account handle" suggestion:0];
      goto LABEL_17;
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v22;
      v37 = 2112;
      v38 = v4;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Attempt to send client payload to mismatched identifier from message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [v4 responseHandler];

    if (v23)
    {
      v10 = [v4 responseHandler];
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
LABEL_17:
      v11 = v24;
      v10[2](v10, v24, 0);
      goto LABEL_18;
    }
  }

LABEL_20:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_handleLegacyPairingIdentityRequest:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uuidForKey:@"kUserUUIDKey"];
  v6 = [(HMDUser *)self uuid];
  v7 = HMFEqualObjects();

  if ((v7 & 1) == 0)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v28;
      v38 = 2112;
      v39 = v4;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Attempt to retrieve pairing identity with mismatching identifier from message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    goto LABEL_15;
  }

  v8 = [(HMDUser *)self isCurrentUser];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (!v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v30;
      v38 = 2112;
      v39 = v4;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Attempt to retrieve pairing identity for not current user: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v29 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2014];
LABEL_15:
    v15 = v29;
    [v4 respondWithError:v29];
    goto LABEL_20;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v13;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Received request to retrieve all pairing identities for the current user", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  v14 = [(HMDUser *)v10 keyStore];
  v15 = [v14 allAccessoryPairingKeys];

  v16 = [v4 entitlements];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __47__HMDUser__handleLegacyPairingIdentityRequest___block_invoke;
  v33[3] = &__block_descriptor_40_e28__16__0__HAPPairingIdentity_8l;
  v33[4] = v16;
  v17 = [v15 na_map:v33];
  v18 = encodeRootObject();
  v19 = objc_autoreleasePoolPush();
  v20 = v10;
  v21 = HMFGetOSLogHandle();
  v22 = v21;
  if (v18)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v23;
      v38 = 2112;
      v39 = v17;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Sending legacy identities : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v34 = *MEMORY[0x277CD13E0];
    v35 = v18;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    [v4 respondWithPayload:v24];
  }

  else
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v31;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unable to encode the pairing identities.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    [v4 respondWithError:v24];
  }

LABEL_20:
  v32 = *MEMORY[0x277D85DE8];
}

id __47__HMDUser__handleLegacyPairingIdentityRequest___block_invoke(uint64_t a1, void *a2)
{
  if ((*(a1 + 32) & 0x10) != 0)
  {
    v4 = MEMORY[0x277D0F8A8];
    v5 = a2;
    v6 = [v4 alloc];
    v2 = [v5 identifier];
    v7 = [v5 publicKey];
    v8 = [v5 privateKey];

    v3 = [v6 initWithIdentifier:v2 publicKey:v7 privateKey:v8];
  }

  else
  {
    v2 = a2;
    v3 = [v2 publicPairingIdentity];
  }

  return v3;
}

- (void)fetchPairingIdentityForClientWithMessage:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v45 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Received request to retrieve pairing identity for user", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDUser *)v6 pairingIdentity];
  if (v9)
  {
    if (([v4 entitlements] & 0x10) != 0 && -[HMDUser isCurrentUser](v6, "isCurrentUser"))
    {
      v10 = [(HMDUser *)v6 keyStore];
      v41 = 0;
      v11 = [v10 getLocalPairingIdentity:&v41];
      v12 = v41;

      if (!v11)
      {
        v37 = objc_autoreleasePoolPush();
        v38 = v6;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = HMFGetLogIdentifier();
          *buf = 138543618;
          v45 = v40;
          v46 = 2112;
          v47 = v12;
          _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to lookup our local pairing identity with error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v37);
        v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Local pairing identity was not found" reason:0 suggestion:0 underlyingError:v12];
        [v4 respondWithError:v24];
        goto LABEL_25;
      }

      v13 = [v11 privateKey];
      v14 = objc_alloc(MEMORY[0x277D0F8A8]);
      v15 = [v9 identifier];
      v16 = [v9 publicKey];
      v17 = [v14 initWithIdentifier:v15 publicKey:v16 privateKey:v13];

      v12 = v17;
    }

    else
    {
      v12 = [v9 publicPairingIdentity];
    }

    v18 = objc_autoreleasePoolPush();
    v19 = v6;
    v20 = HMFGetOSLogHandle();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
    if (v12)
    {
      if (v21)
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543618;
        v45 = v22;
        v46 = 2112;
        v47 = v12;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Found pairing identity for user: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v23 = encodeRootObject();
      v24 = v23;
      if (v23)
      {
        v42 = *MEMORY[0x277CD13E0];
        v43 = v23;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        [v4 respondWithPayload:v25];
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        v33 = v19;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543362;
          v45 = v35;
          _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Unable to encode the pairing identity.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v32);
        v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
        [v4 respondWithError:v25];
      }

LABEL_25:
      goto LABEL_26;
    }

    if (v21)
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v31;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Unable to retrieve pairing identity for user.", buf, 0xCu);
    }

    v30 = v18;
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = v6;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v29;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Could not find the pairing identity for the user", buf, 0xCu);
    }

    v30 = v26;
  }

  objc_autoreleasePoolPop(v30);
  v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  [v4 respondWithError:v12];
LABEL_26:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_handlePairingIdentityRequest:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uuidForKey:@"kUserUUIDKey"];
  v6 = [(HMDUser *)self uuid];
  v7 = HMFEqualObjects();

  if (v7)
  {
    [(HMDUser *)self fetchPairingIdentityForClientWithMessage:v4];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Attempt to retrieve pairing identity with mismatching identifier from message: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [v4 respondWithError:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)matchingPairingIdentityIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HMDUser *)self pairingIdentity];
  v6 = [v5 identifier];
  v7 = [v6 isEqualToString:v4];

  return v7;
}

- (void)deregisterIdentity
{
  v3 = [(HMDUser *)self pairingIdentity];
  if (v3)
  {
    v5 = v3;
    v4 = +[HMDIdentityRegistry sharedRegistry];
    [v4 deregisterIdentity:v5 object:self];

    v3 = v5;
  }
}

- (void)registerIdentity
{
  v5 = [(HMDUser *)self pairingIdentity];
  v3 = [(HMDUser *)self account];
  if (v5 && v3)
  {
    v4 = +[HMDIdentityRegistry sharedRegistry];
    [v4 registerIdentity:v5 account:v3 object:self];
  }
}

- (void)setPairingIdentity:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = _userPairingIdentity(v6, self->_privilege);
  pairingIdentity = self->_pairingIdentity;
  self->_pairingIdentity = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HAPPairingIdentity)pairingIdentity
{
  os_unfair_lock_lock_with_options();
  v3 = self->_pairingIdentity;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setAccountIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  accountIdentifier = self->_accountIdentifier;
  if (HMFEqualObjects())
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v6 = [v4 copy];
    v7 = self->_accountIdentifier;
    self->_accountIdentifier = v6;

    os_unfair_lock_unlock(&self->_lock);
    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __32__HMDUser_setAccountIdentifier___block_invoke;
    v9[3] = &unk_2797359B0;
    v10 = v4;
    v11 = self;
    dispatch_async(queue, v9);
  }
}

void __32__HMDUser_setAccountIdentifier___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    __handleUpdatedAccount(*(a1 + 40));
  }

  v2 = [*(a1 + 40) home];
  [v2 saveToCurrentAccountWithReason:@"userUserIDUpdated"];
}

- (HMDAccountIdentifier)accountIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_accountIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setAccountHandle:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  accountHandle = self->_accountHandle;
  if (HMFEqualObjects())
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v6 = [v4 copy];
    v7 = self->_accountHandle;
    self->_accountHandle = v6;

    os_unfair_lock_unlock(&self->_lock);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__HMDUser_setAccountHandle___block_invoke;
    block[3] = &unk_279735D00;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (id)accountHandle
{
  os_unfair_lock_lock_with_options();
  v3 = self->_accountHandle;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)isCurrentUser
{
  v2 = self;
  v3 = [(HMDUser *)self dataSource];
  LOBYTE(v2) = [v3 isCurrentUser:v2];

  return v2;
}

- (BOOL)updateAdministrator:(BOOL)a3
{
  v3 = a3;
  if ([(HMDUser *)self privilege]&& [(HMDUser *)self privilege]!= 4)
  {
    return 0;
  }

  if (v3)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  [(HMDUser *)self setPrivilege:v5];
  return 1;
}

- (void)setPrivilege:(unint64_t)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  privilege = self->_privilege;
  if (privilege == a3)
  {
    v6 = *MEMORY[0x277D85DE8];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_privilege = a3;
    os_unfair_lock_unlock(&self->_lock);
    v11[0] = @"kUserUUIDKey";
    v7 = [(HMDUser *)self uuid];
    v11[1] = @"HMDUserPreviousPrivilegeKey";
    v12[0] = v7;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:privilege];
    v12[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

    logAndPostNotification(@"HMDUserPrivilegeDidChangeNotification", self, v9);
    v10 = *MEMORY[0x277D85DE8];
  }
}

- (unint64_t)privilege
{
  os_unfair_lock_lock_with_options();
  privilege = self->_privilege;
  os_unfair_lock_unlock(&self->_lock);
  return privilege;
}

- (unint64_t)_compatiblePrivilege
{
  v3 = [(HMDUser *)self privilege];
  if (v3 < 5)
  {
    return qword_253D4C170[v3];
  }

  return [(HMDUser *)self privilege];
}

- (void)setHome:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_home, v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDHome)home
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_home);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (unint64_t)allowedRemoteEventAccessUserTypes
{
  v2 = [(HMDUser *)self privilege];
  if (v2 > 4)
  {
    return 0;
  }

  else
  {
    return qword_253D4C148[v2];
  }
}

- (void)deregisterForMessages
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Deregistering user", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDUser *)v4 messageDispatcher];
  [v7 deregisterReceiver:v4];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)registerForMessages
{
  v32[1] = *MEMORY[0x277D85DE8];
  v3 = [(HMDUser *)self messageDispatcher];
  v4 = *MEMORY[0x277CD13E8];
  v5 = [HMDXPCMessagePolicy policyWithEntitlements:13];
  v32[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  [v3 registerForMessage:v4 receiver:self policies:v6 selector:sel__handlePairingIdentityRequest_];

  v7 = *MEMORY[0x277CD1370];
  v8 = [HMDXPCMessagePolicy policyWithEntitlements:13];
  v31 = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  [v3 registerForMessage:v7 receiver:self policies:v9 selector:sel__handleLegacyPairingIdentityRequest_];

  v10 = *MEMORY[0x277CD1490];
  v11 = [HMDXPCMessagePolicy policyWithEntitlements:517];
  v30 = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  [v3 registerForMessage:v10 receiver:self policies:v12 selector:sel__handleShareLookupInfoRequest_];

  v13 = *MEMORY[0x277CD1460];
  v14 = [HMDXPCMessagePolicy policyWithEntitlements:517];
  v29 = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  [v3 registerForMessage:v13 receiver:self policies:v15 selector:sel__handleMultiUserSharePayloadRequest_];

  v16 = *MEMORY[0x277CD14A0];
  v17 = [HMDXPCMessagePolicy policyWithEntitlements:517];
  v28 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  [v3 registerForMessage:v16 receiver:self policies:v18 selector:sel__handleShareClientRepairRequest_];

  v19 = *MEMORY[0x277CD13D0];
  v20 = [HMDXPCMessagePolicy policyWithEntitlements:517];
  v27 = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  [v3 registerForMessage:v19 receiver:self policies:v21 selector:sel__handleNeedsiTunesMultiUserRepair_];

  if ([(HMDUser *)self isCurrentUser])
  {
    v22 = *MEMORY[0x277CD12D0];
    v23 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v26 = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    [v3 registerForMessage:v22 receiver:self policies:v24 selector:sel__handleAnnounceSettingsUpdate_];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)unconfigure
{
  [(HMDUser *)self deregisterForMessages];
  v3 = [(HMDUser *)self shareMessenger];
  [v3 unconfigure];

  v5 = [(HMDUser *)self dataSource];
  v4 = [v5 notificationCenter];
  [v4 removeObserver:self];
}

- (void)updateSharedBackingStoreControllerParticipants
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HMDUser_updateSharedBackingStoreControllerParticipants__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(queue, block);
}

void __57__HMDUser_updateSharedBackingStoreControllerParticipants__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) sharedBackingStoreController];
  [v1 updateParticipants];
}

- (void)_recoverUserSettingsDueToUUIDChange
{
  v25 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(HMDUser *)self home];
  v4 = [(HMDUser *)self privateBackingStoreController];
  if (v4)
  {
  }

  else
  {
    v5 = [(HMDUser *)self sharedBackingStoreController];

    if (!v5)
    {
      goto LABEL_11;
    }
  }

  if ([(HMDUser *)self isCurrentUser])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Clearing participants from old user settings backingstores", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [(HMDUser *)v7 sharedBackingStoreController];
    [v10 clearParticipants];
  }

  [(HMDUser *)self setUserDataController:0];
  [(HMDUser *)self setSharedBackingStoreController:0];
  [(HMDUser *)self setPrivateBackingStoreController:0];
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v21 = 138543362;
    v22 = v14;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Initializing new user settings backingstores", &v21, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  [(HMDUser *)v12 initializeUserSettingsWithHome:v3];
LABEL_11:
  if (![(HMDUser *)self isCurrentUser])
  {
    v15 = [v3 currentUser];
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v19;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Updating participants in current users shared settings backingstore: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    [v15 updateSharedBackingStoreControllerParticipants];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)recoverUserCloudDataDueToUUIDChangeFromOldUUID:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HMDUser_recoverUserCloudDataDueToUUIDChangeFromOldUUID___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __58__HMDUser_recoverUserCloudDataDueToUUIDChangeFromOldUUID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _recoverUserSettingsDueToUUIDChange];
  [*(a1 + 32) _recoverTrustManagerDueToUUIDChange];
  v2 = [*(a1 + 32) photosPersonDataManager];
  [v2 recoverDueToUUIDChangeFromOldUUID:*(a1 + 40)];

  v4 = [*(a1 + 32) home];
  v3 = [v4 walletKeyManager];
  [v3 recoverDueToUUIDChangeOfUser:*(a1 + 32) fromOldUUID:*(a1 + 40)];
}

- (void)_handleCloudShareWithOwnerMessageError
{
  os_unfair_lock_lock_with_options();
  if (!self->_userCloudShareWithOwnerMessagingState)
  {
    self->_userCloudShareWithOwnerMessagingState = 2;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setUserCloudShareWithOwnerMessagingState:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_userCloudShareWithOwnerMessagingState = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)userCloudShareWithOwnerMessagingState
{
  os_unfair_lock_lock_with_options();
  userCloudShareWithOwnerMessagingState = self->_userCloudShareWithOwnerMessagingState;
  os_unfair_lock_unlock(&self->_lock);
  return userCloudShareWithOwnerMessagingState;
}

- (int64_t)sharedUserSettingsLogEventBackingStoreControllerRunState
{
  v2 = [(HMDUser *)self userDataController];
  v3 = [v2 sharedUserSettingsLogEventBackingStoreControllerRunState];

  return v3;
}

- (void)initializeUserSettingsWithHome:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v54 = v8;
    v55 = 2112;
    v56 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Initializing user settings with home: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if ([(HMDUser *)v6 isCurrentUser])
  {
    v9 = [[HMDSettingsMessageHandler alloc] initWithQueue:v6->_queue];
    v10 = [(HMDUser *)v6 uuid];
    v11 = [v10 UUIDString];
    v12 = [@"user-data-private-" stringByAppendingString:v11];

    v13 = [(HMDUser *)v6 dataSource];
    v14 = [v13 userDataBackingStoreControllerWithDelegate:v6 queue:v6->_queue zoneName:v12 shareMessenger:0];
    [(HMDUser *)v6 setPrivateBackingStoreController:v14];

    v15 = [HMDSettingsControllerDependency alloc];
    v16 = [(HMDUser *)v6 uuid];
    v17 = [(HMDSettingsControllerDependency *)v15 initWithParentUUID:v16 logName:@"private" queue:v6->_queue metadataFileName:@"UserPrivateSettings.plist" codingKey:*MEMORY[0x277CD1418] messageHandler:v9 migrationProvider:0];

    [(HMDUser *)v6 setPrivateSettingsControllerDependency:v17];
    v18 = [[HMDSettingsController alloc] initWithDependency:v17 delegate:v6];
    v19 = [(HMDUser *)v6 privateSettingsControllerDependency];
    v20 = [(HMDUser *)v6 messageDispatcher];
    v21 = [(HMDUser *)v6 privateBackingStoreController];
    [v19 configureWithHome:v4 messageDispatcher:v20 backingStoreController:v21];

    [(HMDSettingsMessageHandler *)v9 setPrivateMessageController:v18];
  }

  else
  {
    v9 = 0;
    v18 = 0;
  }

  if ([(HMDUser *)v6 isRunningOnHomeOwnersDevice]|| [(HMDUser *)v6 isCurrentUser])
  {
    v22 = [(HMDUser *)v6 uuid];
    v23 = [v22 UUIDString];
    v24 = [@"user-data-shared-" stringByAppendingString:v23];

    v25 = [HMDCloudShareMessenger alloc];
    v26 = [(HMDUser *)v6 uuid];
    v27 = [(HMDCloudShareMessenger *)v25 initWithMessageTargetUUID:v26 workQueue:v6->_queue home:v4];
    [(HMDUser *)v6 setShareMessenger:v27];

    v28 = [(HMDUser *)v6 dataSource];
    queue = v6->_queue;
    v30 = [(HMDUser *)v6 shareMessenger];
    v31 = [v28 userDataBackingStoreControllerWithDelegate:v6 queue:queue zoneName:v24 shareMessenger:v30];
    [(HMDUser *)v6 setSharedBackingStoreController:v31];

    v32 = [HMDSettingsControllerDependency alloc];
    v33 = [(HMDUser *)v6 uuid];
    v34 = v6->_queue;
    v35 = *MEMORY[0x277CD14C0];
    v52 = @"root.music.playbackInfluencesForYou";
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
    v37 = [(HMDSettingsControllerDependency *)v32 initWithParentUUID:v33 logName:@"shared" queue:v34 metadataFileName:@"UserSharedSettings.plist" codingKey:v35 messageHandler:v9 migrationProvider:v6 keyPathsToPrune:v36];
    [(HMDUser *)v6 setSharedSettingsControllerDependency:v37];

    v38 = [HMDSettingsController alloc];
    v39 = [(HMDUser *)v6 sharedSettingsControllerDependency];
    v40 = [(HMDSettingsController *)v38 initWithDependency:v39 delegate:v6];

    v41 = [(HMDUser *)v6 sharedSettingsControllerDependency];
    v42 = [(HMDUser *)v6 messageDispatcher];
    v43 = [(HMDUser *)v6 sharedBackingStoreController];
    [v41 configureWithHome:v4 messageDispatcher:v42 backingStoreController:v43];

    [(HMDSettingsMessageHandler *)v9 setSharedMessageController:v40];
  }

  else
  {
    v40 = 0;
  }

  if (v40 | v18)
  {
    v44 = [(HMDUser *)v6 dataSource];
    v45 = v6->_queue;
    v46 = [(HMDUser *)v6 uuid];
    v47 = [v4 uuid];
    LOBYTE(v51) = [(HMDUser *)v6 isCurrentUser];
    v48 = [v44 userDataControllerWithDelegate:v6 dataSource:v6 queue:v45 userID:v46 homeID:v47 sharedSettingsController:v40 privateSettingsController:v18 isCurrentUser:v51];
    [(HMDUser *)v6 setUserDataController:v48];

    v49 = [(HMDUser *)v6 userDataController];
    [v49 configure];
  }

  v50 = *MEMORY[0x277D85DE8];
}

- (id)sharedZoneName
{
  v3 = objc_opt_class();
  v4 = [(HMDUser *)self uuid];
  v5 = [v3 sharedZoneNameForUserUUID:v4];

  return v5;
}

- (id)privateZoneName
{
  v3 = objc_opt_class();
  v4 = [(HMDUser *)self uuid];
  v5 = [v3 privateZoneNameForUserUUID:v4];

  return v5;
}

- (void)handleUserDataControllerInitialized:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HMDUser_handleUserDataControllerInitialized___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(queue, block);
}

void __47__HMDUser_handleUserDataControllerInitialized___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isCurrentUser])
  {
    v2 = [MEMORY[0x277D0F8E8] productInfo];
    v3 = [v2 productClass];

    if (v3 == 1)
    {
      v4 = [[HMDSiriMultiUserNewLanguageNotificationManagerContext alloc] initWithUser:*(a1 + 32) workQueue:*(*(a1 + 32) + 264)];
      [(HMDSiriMultiUserNewLanguageNotificationManagerContext *)v4 configure];
      v5 = [[HMDSiriMultiUserNewLanguageNotificationManager alloc] initWithContext:v4];
      [*(a1 + 32) setSiriMultiUserNewLanguageNotificationManager:v5];

      v6 = [*(a1 + 32) siriMultiUserNewLanguageNotificationManager];
      [v6 checkAllMediaAccessoriesAndPostNotificationIfNecessary];
    }
  }

  if ([*(a1 + 32) isCurrentUser])
  {
    v8 = [*(a1 + 32) home];
    v7 = [v8 homeManager];
    [v7 updateCurrentUserEligibleForOwnerToAutoMigration];
  }
}

- (void)configureWithHome:(id)a3
{
  v31[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 msgDispatcher];
  [(HMDUser *)self setMessageDispatcher:v5];

  [(HMDUser *)self setHome:v4];
  if (![(HMDUser *)self isRemoteGateway]&& !isWatch())
  {
    [(HMDUser *)self configureCloudShareTrustManager];
    [(HMDUser *)self initializeUserSettingsWithHome:v4];
  }

  v6 = [(HMDUser *)self assistantAccessControl];
  v7 = v6;
  if (v6)
  {
    [v6 configure];
  }

  [(HMDUser *)self registerForMessages];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [(HMDUser *)v9 userID];
    v13 = [(HMDUser *)v9 account];
    [(HMDUser *)v9 isCurrentUser];
    v14 = HMFBooleanToString();
    *v29 = 138544130;
    *&v29[4] = v11;
    *&v29[12] = 2112;
    *&v29[14] = v12;
    *&v29[22] = 2112;
    v30 = v13;
    LOWORD(v31[0]) = 2112;
    *(v31 + 2) = v14;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Configuring [%@] with account: %@, isCurrentUser: %@", v29, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (![(HMDUser *)v9 isCurrentUser])
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v9;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [(HMDUser *)v16 userID];
      *v29 = 138543618;
      *&v29[4] = v18;
      *&v29[12] = 2112;
      *&v29[14] = v19;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Registering for account notifications & Auditing the account as [%@] is not current user.", v29, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    __registerForAccountNotifications(v16);
    v20 = v16;
    v21 = v20;
    if (v20)
    {
      queue = v20->_queue;
      *v29 = MEMORY[0x277D85DD0];
      *&v29[8] = 3221225472;
      *&v29[16] = ____auditAccount_block_invoke;
      v30 = &unk_279735D00;
      v31[0] = v20;
      dispatch_async(queue, v29);
    }
  }

  [(HMDUser *)v9 registerIdentity];
  v23 = [(HMDUser *)v9 dataSource];
  v24 = [v23 notificationCenter];
  [v24 addObserver:v9 selector:sel_handleRemovedAccessory_ name:@"HMDHomeAccessoryRemovedNotification" object:v4];

  v25 = [(HMDUser *)v9 dataSource];
  v26 = [v25 notificationCenter];
  v27 = [(HMDUser *)v9 userDataController];
  [v26 addObserver:v9 selector:sel_handleUserDataControllerInitialized_ name:@"HMDUserDataControllerInitializedNotificationKey" object:v27];

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasDeviceWithHomeKitVersionGreaterThanVersion:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUser *)self account];
  [v5 devices];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) version];
        v11 = [v10 isGreaterThanVersion:v4];

        if (v11)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v52[13] = *MEMORY[0x277D85DE8];
  v4 = [(HMDUser *)self home];
  v5 = MEMORY[0x277CCACA8];
  v48 = [(HMDUser *)self uuid];
  v47 = [v5 stringWithFormat:@"UUID: %@", v48];
  v52[0] = v47;
  v6 = MEMORY[0x277CCACA8];
  [v4 isAccessToHomeAllowed];
  v46 = HMFBooleanToString();
  v45 = [v6 stringWithFormat:@"Is Access Allowed: %@", v46];
  v52[1] = v45;
  v7 = MEMORY[0x277CCACA8];
  [(HMDUser *)self isCurrentUser];
  v44 = HMFBooleanToString();
  v43 = [v7 stringWithFormat:@"Is Current User: %@", v44];
  v52[2] = v43;
  v8 = MEMORY[0x277CCACA8];
  [(HMDUser *)self isAdministrator];
  v42 = HMFBooleanToString();
  v41 = [v8 stringWithFormat:@"Is Admin: %@", v42];
  v52[3] = v41;
  v9 = MEMORY[0x277CCACA8];
  [(HMDUser *)self isRemoteAccessAllowed];
  v40 = HMFBooleanToString();
  v39 = [v9 stringWithFormat:@"Is Remote Access Allowed: %@", v40];
  v52[4] = v39;
  v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"User Privilege: %lu", -[HMDUser privilege](self, "privilege")];
  v52[5] = v38;
  v10 = MEMORY[0x277CCACA8];
  v37 = shouldLogPrivateInformation();
  if (v37)
  {
    v11 = [(HMDUser *)self displayName];
  }

  else
  {
    v11 = @"...";
  }

  v32 = v11;
  v36 = [v10 stringWithFormat:@"Display Name: %@", v11];
  v52[6] = v36;
  v12 = MEMORY[0x277CCACA8];
  [(HMDUser *)self camerasAccessLevel];
  v35 = HMUserCameraAccessLevelAsString();
  v33 = [v12 stringWithFormat:@"Cameras Access Level: %@", v35];
  v52[7] = v33;
  v13 = MEMORY[0x277CCACA8];
  [(HMDUser *)self isAnnounceAccessAllowed];
  v14 = HMFBooleanToString();
  v15 = [v13 stringWithFormat:@"Is Announce Access Allowed: %@", v14];
  v52[8] = v15;
  v16 = MEMORY[0x277CCACA8];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser announceAccessLevel](self, "announceAccessLevel")}];
  v18 = [v16 stringWithFormat:@"Announce Access Level: %@", v17];
  v52[9] = v18;
  v49 = v4;
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Home: %@", v4];
  v52[10] = v19;
  v20 = MEMORY[0x277CCACA8];
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser audioAnalysisUserDropInAccessLevel](self, "audioAnalysisUserDropInAccessLevel")}];
  v22 = [v20 stringWithFormat:@"AudioDropIn: %@", v21];
  v52[11] = v22;
  v23 = MEMORY[0x277CCACA8];
  v24 = [(HMDUser *)self matterCASEAuthenticatedTagID];
  v25 = [v23 stringWithFormat:@"CATID: %@", v24];
  v52[12] = v25;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:13];

  if (v37)
  {
  }

  v50[0] = *MEMORY[0x277D0F170];
  v26 = [v34 componentsJoinedByString:{@", "}];
  v50[1] = @"Photos Person Manager Settings";
  v51[0] = v26;
  v27 = [(HMDUser *)self photosPersonManagerSettings];
  v28 = [v27 description];
  v51[1] = v28;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)attributeDescriptions
{
  v53[14] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v52 = [(HMDUser *)self uuid];
  v51 = [v52 UUIDString];
  v50 = [v3 initWithName:@"UUID" value:?];
  v53[0] = v50;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v49 = [(HMDUser *)self account];
  v48 = [v49 senderCorrelationIdentifier];
  v47 = [v4 initWithName:@"MID" value:?];
  v53[1] = v47;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v46 = [(HMDUser *)self pairingIdentity];
  v45 = [v5 initWithName:@"PAID" value:? options:? formatter:?];
  v53[2] = v45;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v44 = [(HMDUser *)self accountHandle];
  v43 = [v6 initWithName:@"HNDL" value:?];
  v53[3] = v43;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(HMDUser *)self displayName];
  v41 = [MEMORY[0x277D0F8D8] defaultFormatter];
  v42 = v8;
  v40 = [v7 initWithName:@"DN" value:v8 options:0 formatter:?];
  v53[4] = v40;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMDUser *)self privilege];
  if (v10 > 4)
  {
    v11 = @"None";
  }

  else
  {
    v11 = off_279730DF8[v10];
  }

  v39 = [v9 initWithName:@"PV" value:v11];
  v53[5] = v39;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDUser *)self isRemoteAccessAllowed];
  v38 = HMFBooleanToString();
  v37 = [v12 initWithName:@"RA" value:v38];
  v53[6] = v37;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  v36 = [(HMDUser *)self presenceAuthStatus];
  v35 = [v13 initWithName:@"PA" value:v36];
  v53[7] = v35;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  v34 = [(HMDUser *)self home];
  v33 = [v14 initWithName:@"HM" value:v34];
  v53[8] = v33;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDUser *)self camerasAccessLevel];
  v32 = HMUserCameraAccessLevelAsString();
  v16 = [v15 initWithName:@"CA" value:v32];
  v53[9] = v16;
  v17 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDUser *)self isAnnounceAccessAllowed];
  v18 = HMFBooleanToString();
  v19 = [v17 initWithName:@"AA" value:v18];
  v53[10] = v19;
  v20 = objc_alloc(MEMORY[0x277D0F778]);
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser announceAccessLevel](self, "announceAccessLevel")}];
  v22 = [v20 initWithName:@"AL" value:v21];
  v53[11] = v22;
  v23 = objc_alloc(MEMORY[0x277D0F778]);
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser audioAnalysisUserDropInAccessLevel](self, "audioAnalysisUserDropInAccessLevel")}];
  v25 = [v23 initWithName:@"AAN" value:v24];
  v53[12] = v25;
  v26 = objc_alloc(MEMORY[0x277D0F778]);
  v27 = [(HMDUser *)self matterCASEAuthenticatedTagID];
  v28 = [v26 initWithName:@"CATID" value:v27];
  v53[13] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:14];

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMDUser *)self uuid];
  v6 = [v5 UUIDString];
  v7 = [v3 stringWithFormat:@"%@ %@", v4, v6];

  return v7;
}

- (BOOL)isAccountEqualWithUser:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 == self || (-[HMDUser pairingIdentity](v4, "pairingIdentity"), v6 = objc_claimAutoreleasedReturnValue(), -[HMDUser pairingIdentity](self, "pairingIdentity"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v6 isEqual:v7], v7, v6, (v8 & 1) != 0))
  {
    v9 = 1;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543874;
      v17 = v13;
      v18 = 2112;
      v19 = v5;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Pairing Identity do not match : [otherUser : %@] [self : %@]", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
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
    v7 = v6;
    if (v6)
    {
      v8 = [(HMDUser *)v6 pairingIdentity];
      v9 = [(HMDUser *)self pairingIdentity];
      v10 = [v8 isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = [(HMDUser *)self pairingIdentity];
  v3 = [v2 hash];

  return v3;
}

- (void)dealloc
{
  if (self->_pairingIdentity)
  {
    v3 = +[HMDIdentityRegistry sharedRegistry];
    [v3 deregisterIdentity:self->_pairingIdentity object:self];
  }

  v4.receiver = self;
  v4.super_class = HMDUser;
  [(HMDUser *)&v4 dealloc];
}

- (HMDUser)initWithAccountHandle:(id)a3 homeUUID:(id)a4 pairingIdentity:(id)a5 privilege:(unint64_t)a6 keyStore:(id)a7 dataSource:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v36.receiver = self;
  v36.super_class = HMDUser;
  v19 = [(HMDUser *)&v36 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_dataSource, a8);
    objc_storeStrong(&v20->_keyStore, a7);
    v21 = _userPairingIdentity(v16, a6);
    pairingIdentity = v20->_pairingIdentity;
    v20->_pairingIdentity = v21;

    v23 = [v14 remoteDestinationString];
    v24 = [HMDUser UUIDWithUserID:v23 forHomeIdentifier:v15 uuid:0 pairingIdentity:v20->_pairingIdentity];
    uuid = v20->_uuid;
    v20->_uuid = v24;

    v26 = HMDispatchQueueNameString();
    v27 = [v26 UTF8String];
    v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v29 = dispatch_queue_create(v27, v28);
    queue = v20->_queue;
    v20->_queue = v29;

    v31 = [v14 copy];
    accountHandle = v20->_accountHandle;
    v20->_accountHandle = v31;

    v20->_privilege = a6;
    v20->_remoteAccessAllowed = 1;
    v33 = objc_alloc_init(MEMORY[0x277D2C900]);
    cloudShareIDFuture = v20->_cloudShareIDFuture;
    v20->_cloudShareIDFuture = v33;

    v20->_camerasAccessLevel = HMUserDefaultCamerasAccessLevel();
    v20->_announceAccessLevel = 0;
    v20->_announceNotificationModeForCurrentDevice = 0;
    v20->_needsiTunesMultiUserRepair = 0;
    v20->_userCloudShareWithOwnerMessagingState = 0;
  }

  return v20;
}

- (HMDUser)initWithAccountHandle:(id)a3 homeUUID:(id)a4 pairingIdentity:(id)a5 privilege:(unint64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(HMDUserDefaultDataSource);
  v14 = [MEMORY[0x277CFEC78] systemStore];
  v15 = [(HMDUser *)self initWithAccountHandle:v12 homeUUID:v11 pairingIdentity:v10 privilege:a6 keyStore:v14 dataSource:v13];

  return v15;
}

- (HMDUser)initWithAccountHandle:(id)a3 home:(id)a4 pairingIdentity:(id)a5 privilege:(unint64_t)a6 dataSource:(id)a7
{
  v12 = a4;
  v13 = a7;
  v14 = a5;
  v15 = a3;
  v16 = [v12 uuid];
  v17 = [MEMORY[0x277CFEC78] systemStore];
  v18 = [(HMDUser *)self initWithAccountHandle:v15 homeUUID:v16 pairingIdentity:v14 privilege:a6 keyStore:v17 dataSource:v13];

  if (v18)
  {
    objc_storeWeak(&v18->_home, v12);
  }

  return v18;
}

- (HMDUser)initWithAccountHandle:(id)a3 home:(id)a4 pairingIdentity:(id)a5 privilege:(unint64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(HMDUserDefaultDataSource);
  v14 = [(HMDUser *)self initWithAccountHandle:v12 home:v11 pairingIdentity:v10 privilege:a6 dataSource:v13];

  return v14;
}

- (HMDUser)initWithModelObject:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];

  if (v5)
  {
    v6 = [v4 accountHandle];
    if (!v6)
    {
      v5 = [v4 userID];

      if (!v5)
      {
        goto LABEL_15;
      }

      v7 = +[HMDAccountHandleFormatter defaultFormatter];
      v8 = [v4 userID];
      v6 = [v7 accountHandleFromString:v8];
    }

    v9 = MEMORY[0x277CFEC20];
    v10 = [v4 pairingIdentity];
    v11 = [v9 hmd_pairingIdentityWithDictionary:v10];

    v12 = [v4 privilege];
    v13 = -[HMDUser initWithAccountHandle:homeUUID:pairingIdentity:privilege:](self, "initWithAccountHandle:homeUUID:pairingIdentity:privilege:", v6, 0, v11, [v12 integerValue]);

    if (v13)
    {
      v14 = [v4 uuid];
      uuid = v13->_uuid;
      v13->_uuid = v14;

      v16 = [v4 remoteAccessAllowed];
      v13->_remoteAccessAllowed = [v16 BOOLValue];

      v17 = MEMORY[0x277CD1F00];
      v18 = [v4 presenceAuthorizationStatus];
      v19 = [v17 authWithNumber:v18];
      presenceAuthStatus = v13->_presenceAuthStatus;
      v13->_presenceAuthStatus = v19;

      v21 = [v4 accountIdentifier];
      accountIdentifier = v13->_accountIdentifier;
      v13->_accountIdentifier = v21;

      v23 = [v4 camerasAccessLevel];

      if (v23)
      {
        v24 = [v4 camerasAccessLevel];
        v13->_camerasAccessLevel = [v24 integerValue];
      }

      v25 = v4;
      if ([v25 propertyWasSet:@"announceAccessLevel"])
      {
        v26 = [v25 announceAccessLevel];
        v27 = v13;
        v28 = 0;
        v29 = v26;
      }

      else
      {
        v26 = [v25 announceAccessAllowed];
        v27 = v13;
        v28 = v26;
        v29 = 0;
      }

      v30 = [(HMDUser *)v27 announceUserAccessLevelFromAnnounceAccessAllowed:v28 announceAccessLevel:v29];

      v13->_announceAccessLevel = v30;
      v31 = [v25 matterCASEAuthenticatedTagID];
      if (v31)
      {
        v32 = v31;
        v33 = [v25 matterCASEAuthenticatedTagID];
        v34 = [v33 integerValue];

        if (v34)
        {
          v35 = [v25 matterCASEAuthenticatedTagID];
          matterCASEAuthenticatedTagID = v13->_matterCASEAuthenticatedTagID;
          v13->_matterCASEAuthenticatedTagID = v35;
        }
      }
    }

    self = v13;

    v5 = self;
  }

LABEL_15:

  return v5;
}

- (id)privateSettingValuesByKeyPath
{
  v2 = [(HMDUser *)self userDataController];
  v3 = [v2 privateSettingValuesByKeyPath];

  return v3;
}

- (id)sharedSettingValuesByKeyPath
{
  v2 = [(HMDUser *)self userDataController];
  v3 = [v2 sharedSettingValuesByKeyPath];

  return v3;
}

@end