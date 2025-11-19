@interface HMDUser
+ (BOOL)isAllowedToAddOrRemoveHAPPairingsOnAccessoryFor:(id)a3;
+ (HMDUser)userWithDictionary:(id)a3 home:(id)a4;
+ (id)UUIDWithUserID:(id)a3 forHomeIdentifier:(id)a4 uuid:(id)a5 pairingIdentity:(id)a6;
+ (id)_openZoneWithName:(id)a3 inDatabase:(id)a4;
+ (id)allLastUserSyncDataArchives;
+ (id)allowedClassesForAnnounceNotificationMode;
+ (id)allowedClassesForSyncData;
+ (id)appendRootPath:(id)a3 withSettingPath:(id)a4;
+ (id)fetchSharedUserDataRootForHomeUUID:(id)a3 moc:(id)a4 coreData:(id)a5;
+ (id)fetchSharedUserDataRootForHomeUUID:(id)a3 moc:(id)a4 coreData:(id)a5 ttrManager:(id)a6;
+ (id)getSettingsUsingPreOrderTraversal:(id)a3 rootUUID:(id)a4 keyPath:(id)a5;
+ (id)getSyncDataFromLocalDiskWithArchive:(id)a3;
+ (id)localPrivateZoneForSharedUserUUID:(id)a3 database:(id)a4;
+ (id)localSharedZoneForSharedUserUUID:(id)a3 database:(id)a4;
+ (id)logCategory;
+ (id)ownerWithUserID:(id)a3 home:(id)a4 pairingIdentity:(id)a5 homeManager:(id)a6;
+ (id)privateZoneNameForUserUUID:(id)a3;
+ (id)sharedZoneNameForUserUUID:(id)a3;
+ (id)userIDForAccountHandle:(id)a3;
+ (unint64_t)hmdUserPrivilegeFromHMMTRUserPrivilege:(unint64_t)a3;
+ (unint64_t)hmmtrUserPrivilegeFromHMDUserPrivilege:(unint64_t)a3;
+ (unint64_t)privilegeFromDictionary:(id)a3;
+ (void)__findOrCreateCKSharedUserAccessorySettingsForAccessory:(id)a3 usingManagedObjectContext:(id)a4 rootShareObject:(id)a5 listeningHistoryEnabled:(id)a6 mediaContentProfileEnabled:(id)a7 personalRequestsEnabled:(id)a8;
+ (void)_fetchAndMigrateAssistantAccessControlModelV2ToCoreDataFromLocalZone:(id)a3 managedObjectContext:(id)a4 rootShareObject:(id)a5;
+ (void)_fetchAndMigrateMediaContentProfileAccessControlModelToCoreDataFromLocalZone:(id)a3 managedObjectContext:(id)a4 rootShareObject:(id)a5;
+ (void)_fetchAndMigratePhotosPersonManagerSettingsFromLocalZone:(id)a3 managedObjectContext:(id)a4 rootShareObject:(id)a5;
+ (void)_fetchAndMigrateUserListeningHistoryUpdatedControlModelToCoreDataFromLocalZone:(id)a3 managedObjectContext:(id)a4 rootShareObject:(id)a5;
+ (void)_saveSharedUserSettingsToCoreData:(id)a3 managedObjectContext:(id)a4 rootShareObject:(id)a5;
+ (void)migrateHH1SettingsToHH2ForSharedUserWithUUID:(id)a3 homeUUID:(id)a4 privateZone:(id)a5 backingStoreContext:(id)a6;
+ (void)migrateHH1SettingsToHH2ForSharedUserWithUUID:(id)a3 homeUUID:(id)a4 sharedZone:(id)a5 backingStoreContext:(id)a6;
- (AVOutputDeviceAuthorizedPeer)av_authorizedPeer;
- (BOOL)_isExplicitContentValueEnabledForAppleMediaAccessory:(id)a3;
- (BOOL)_setRemoteAccessAllowed:(BOOL)a3;
- (BOOL)areAccessoriesInAllowedList:(id)a3;
- (BOOL)cloudShareTrustManager:(id)a3 shouldShareTrustWithUser:(id)a4;
- (BOOL)hasCameraClipsAccess;
- (BOOL)hasDeviceWithHomeKitVersionGreaterThanVersion:(id)a3;
- (BOOL)isAccessCurrentlyAllowedBySchedule;
- (BOOL)isAccountEqualWithUser:(id)a3;
- (BOOL)isAllowedToAccessActivityHistory;
- (BOOL)isAllowedToAddOrRemoveHAPPairingsOnAccessory;
- (BOOL)isAllowedToHaveCATId;
- (BOOL)isAllowedToSharePhotosPersonManagerData;
- (BOOL)isAnnounceAccessAllowed;
- (BOOL)isCurrentUser;
- (BOOL)isCurrentUserAndOwner;
- (BOOL)isEqual:(id)a3;
- (BOOL)isLocalAccessoryCommunicationAllowed;
- (BOOL)isOwnerCapableForTrustManager:(id)a3;
- (BOOL)isRemoteAccessAllowed;
- (BOOL)isRunningOnHomeOwnersDevice;
- (BOOL)isSharedUsersDeviceForProfileMetadata;
- (BOOL)isValid;
- (BOOL)matchingPairingIdentityIdentifier:(id)a3;
- (BOOL)refreshDisplayName;
- (BOOL)requiresMakoSupport;
- (BOOL)shouldWeOverrideRemoteAccessAllowedDespiteNoRemoteAccessAllowed;
- (BOOL)updateAdaptiveTemperatureAutomationsDisclosureStatus:(int64_t)a3;
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
- (HMDRestrictedGuestHomeAccessSettings)restrictedGuestAccessSettings;
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
- (NSNumber)uniqueIDForAccessories;
- (NSString)displayName;
- (NSString)firstName;
- (NSString)iCloudAltDSID;
- (NSString)lastName;
- (NSString)mergeIdentifier;
- (NSString)pairingUsername;
- (NSString)userID;
- (NSUUID)assistantAccessControlModelUUID;
- (double)configuredProofOfLocalityTimeout;
- (id)_initWithCoder:(id)a3;
- (id)account;
- (id)accountHandle;
- (id)allAccessoryUUID;
- (id)announceNotificationFileName;
- (id)announceNotificationFileNameForUserUUID:(id)a3;
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
- (id)ownerPrivateSettingsAsDictionary;
- (id)privateSettingValuesByKeyPath;
- (id)privateZoneName;
- (id)pushTokensForDevicesObservingSubjectDevice:(id)a3 subActivity:(id)a4;
- (id)restrictedGuestScheduleEndTimerID;
- (id)restrictedGuestScheduleStartTimerID;
- (id)settingsControllerFollowerKeyPaths:(id)a3;
- (id)sharedSettingValuesByKeyPath;
- (id)sharedSettingsAsDictionary;
- (id)sharedZoneName;
- (id)shortDescription;
- (id)trustTargetUUID;
- (id)userIDsToMigrateAnnounceSettingsFrom;
- (id)zoneNameForCloudShareTrustManager:(id)a3;
- (int64_t)adaptiveTemperatureAutomationsDisclosureStatus;
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
- (void)__handleModifiedAccount:(id)a3;
- (void)__handleRemovedAccount:(id)a3;
- (void)_didHandleFMFDeviceChangedNotificationWithStatus:(unint64_t)a3;
- (void)_encodeWithCoder:(id)a3;
- (void)_handleAnnounceSettingsUpdate:(id)a3;
- (void)_handleAssistantAccessControlUpdate:(id)a3;
- (void)_handleCloudShareWithOwnerMessageError;
- (void)_handleFMFDeviceChangedNotification:(id)a3;
- (void)_handleFetchProfilePhoto:(id)a3;
- (void)_handleLegacyPairingIdentityRequest:(id)a3;
- (void)_handleMediaContentProfileAccessControlUpdate:(id)a3;
- (void)_handleMultiUserSharePayloadRequest:(id)a3;
- (void)_handleNeedsiTunesMultiUserRepair:(id)a3;
- (void)_handlePairingIdentityRequest:(id)a3;
- (void)_handleRestrictedGuestNewSchedule:(id)a3;
- (void)_handleShareClientRepairRequest:(id)a3;
- (void)_handleShareLookupInfoRequest:(id)a3;
- (void)_handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs:(id)a3;
- (void)_migrateAnnounceNotificationModeIfNeeded;
- (void)_notifyEveryOneAboutRestrictedGuestScheduleNotification:(id)a3;
- (void)_pushPhotoMetadataToStoreForHome:(id)a3;
- (void)_pushSharedProfileMetadataToStoreForHome:(id)a3 iCloudAltDSID:(id)a4 firstName:(id)a5 lastName:(id)a6 profilePhotoDict:(id)a7;
- (void)_pushTextMetadataToStoreForHome:(id)a3;
- (void)_readAnnounceNotificationModeFromLocalStore;
- (void)_recoverTrustManagerDueToUUIDChange;
- (void)_recoverUserSettingsDueToUUIDChange;
- (void)_removeAnnounceNotificationModeFileFromDiskForUserUUID:(id)a3;
- (void)_saveAnnounceSettingsToLocalStore:(unint64_t)a3;
- (void)_saveSharedUserProfileMetadataToBackingStoreContext:(id)a3 rootShareObject:(id)a4 iCloudAltDSID:(id)a5 firstName:(id)a6 lastName:(id)a7 profilePhotoDict:(id)a8;
- (void)_sendSecureShareClientPayloadToMostEligibleDevice:(id)a3 completion:(id)a4;
- (void)_transactionAccessorySettingsUpdated:(id)a3;
- (void)_transactionPhotosPersonManagerSettingsUpdated:(id)a3;
- (void)_transactionUserProfileMetaDataUpdated:(id)a3;
- (void)_transactionUserSettingsUpdated:(id)a3;
- (void)_transactionUserUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)_updateAnnounceNotificationMode:(unint64_t)a3;
- (void)_updateAnnounceNotificationModeToLocalStore:(unint64_t)a3 managedObjectContext:(id)a4;
- (void)applyConditionalValueUpdateToModels:(id)a3;
- (void)cancelRestrictedGuestScheduledTimers;
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
- (void)handleCompleteDisclosureOfAdaptiveTemperatureAutomationsMessage:(id)a3;
- (void)handleCompleteDisclosureOfAdaptiveTemperatureAutomationsRemoteMessage:(id)a3;
- (void)handleMediaContentProfileAccessControlUpdate:(id)a3;
- (void)handlePrimaryResidentUpdateNotification:(id)a3;
- (void)handleRemovedAccessory:(id)a3;
- (void)handleRequestDisclosureNotificationAccountMessage:(id)a3;
- (void)handleRestrictedGuestScheduleTimer:(id)a3;
- (void)handleUpdatedCATForUser;
- (void)handleUserDataControllerInitialized:(id)a3;
- (void)handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs:(id)a3;
- (void)initSwiftExtensions;
- (void)initializeUserSettingsWithHome:(id)a3;
- (void)postUserSettingsUpdatedNotificationWithReason:(id)a3;
- (void)recoverUserCloudDataDueToUUIDChangeFromOldUUID:(id)a3;
- (void)registerForMessages;
- (void)registerIDSActivityObserver:(id)a3 subActivity:(id)a4 subjectDevice:(id)a5;
- (void)registerIdentity;
- (void)removeAccessoriesFromAssistantAccessControlList:(id)a3;
- (void)removeCloudData;
- (void)scheduleRestrictedGuestAccessTimersWithReason:(id)a3;
- (void)sendDisclosureNotificationWithLocationSharingDevice:(HMDDevice *)a3 completion:(id)a4;
- (void)sendSharedUserProfileMetadataUpdatedMessage;
- (void)setAccountHandle:(id)a3;
- (void)setAccountIdentifier:(id)a3;
- (void)setAnnounceAccessLevel:(unint64_t)a3;
- (void)setAssistantAccessControl:(id)a3;
- (void)setAudioAnalysisUserDropInAccessLevel:(unint64_t)a3;
- (void)setCamerasAccessLevel:(unint64_t)a3;
- (void)setDisplayName:(id)a3;
- (void)setFirstName:(id)a3;
- (void)setHome:(id)a3;
- (void)setIsDisclosedOnAdaptiveTemperatureAutomations:(int64_t)a3;
- (void)setLastName:(id)a3;
- (void)setMergeIdentifier:(id)a3;
- (void)setPairingIdentity:(id)a3;
- (void)setPresenceAuthStatus:(id)a3;
- (void)setPrivilege:(unint64_t)a3;
- (void)setRestrictedGuestAccessSettings:(id)a3;
- (void)setUserCloudShareWithOwnerMessagingState:(int64_t)a3;
- (void)setUserID:(id)a3;
- (void)setiCloudAltDSID:(id)a3;
- (void)transactionObjectRemoved:(id)a3 message:(id)a4;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)unconfigure;
- (void)updateAnnounceNotificationMode:(unint64_t)a3;
- (void)updateCloudShareID:(id)a3;
- (void)updateIDSActivityObserver:(id)a3;
- (void)updateRestrictedGuestSettingsFromWorkingStoreIfNeeded;
- (void)updateSharedBackingStoreControllerParticipants;
@end

@implementation HMDUser

- (void)initSwiftExtensions
{
  v2 = self;
  sub_2296EF0D8();
}

- (void)handleRequestDisclosureNotificationAccountMessage:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2297194D4(v4);
}

- (void)handleCompleteDisclosureOfAdaptiveTemperatureAutomationsMessage:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22971AFA4(v4);
}

- (void)handleCompleteDisclosureOfAdaptiveTemperatureAutomationsRemoteMessage:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22971C604(v4);
}

- (void)sendDisclosureNotificationWithLocationSharingDevice:(HMDDevice *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22A4DD9DC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22A580E70;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22A57B590;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_229859F70(0, 0, v10, &unk_22A581CC0, v15);
}

- (BOOL)isAllowedToAddOrRemoveHAPPairingsOnAccessory
{
  v2 = self;
  v3 = sub_229721DA0();

  return v3 & 1;
}

- (BOOL)isAllowedToSharePhotosPersonManagerData
{
  v2 = self;
  if ([(HMDUser *)v2 isAccessPolicySet])
  {
    v3 = [(HMDUser *)v2 userAccessPolicy];

    return (v3 >> 2) & 1;
  }

  else
  {
    v5 = [(HMDUser *)v2 privilege];

    LOBYTE(v4) = v5 != 5;
  }

  return v4;
}

- (BOOL)isAllowedToAccessActivityHistory
{
  v2 = self;
  if ([(HMDUser *)v2 isAccessPolicySet])
  {
    v3 = [(HMDUser *)v2 userAccessPolicy];

    return (v3 >> 3) & 1;
  }

  else
  {
    v5 = [(HMDUser *)v2 privilege];

    LOBYTE(v4) = v5 != 5;
  }

  return v4;
}

- (BOOL)isAllowedToHaveCATId
{
  v2 = self;
  if ([(HMDUser *)v2 isAccessPolicySet])
  {
    v3 = [(HMDUser *)v2 userAccessPolicy];

    return (v3 >> 4) & 1;
  }

  else
  {
    v5 = [(HMDUser *)v2 privilege];

    LOBYTE(v4) = v5 != 5;
  }

  return v4;
}

- (BOOL)isLocalAccessoryCommunicationAllowed
{
  v2 = self;
  if ([(HMDUser *)v2 isAccessPolicySet])
  {
    v3 = [(HMDUser *)v2 userAccessPolicy];

    return (v3 >> 5) & 1;
  }

  else
  {
    v5 = [(HMDUser *)v2 privilege];

    LOBYTE(v4) = v5 != 5;
  }

  return v4;
}

+ (BOOL)isAllowedToAddOrRemoveHAPPairingsOnAccessoryFor:(id)a3
{
  swift_unknownObjectRetain();
  sub_22972206C(a3);
  v5 = v4;
  swift_unknownObjectRelease();
  return v5 & 1;
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

+ (unint64_t)hmdUserPrivilegeFromHMMTRUserPrivilege:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return 2;
  }

  else
  {
    return qword_22A587CD0[a3 - 1];
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
    return qword_22A587CA8[a3];
  }
}

- (void)_pushSharedProfileMetadataToStoreForHome:(id)a3 iCloudAltDSID:(id)a4 firstName:(id)a5 lastName:(id)a6 profilePhotoDict:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a3;
  v17 = [v16 uuid];
  v18 = [v16 backingStore];
  v19 = [v18 context];

  v20 = [v16 backingStore];

  v21 = [v20 coreData];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __102__HMDUser__pushSharedProfileMetadataToStoreForHome_iCloudAltDSID_firstName_lastName_profilePhotoDict___block_invoke;
  v29[3] = &unk_278684158;
  v30 = v19;
  v31 = v17;
  v32 = v21;
  v33 = self;
  v34 = v12;
  v35 = v13;
  v36 = v14;
  v37 = v15;
  v22 = v15;
  v23 = v14;
  v24 = v13;
  v25 = v12;
  v26 = v21;
  v27 = v17;
  v28 = v19;
  [v28 performBlock:v29];
}

void __102__HMDUser__pushSharedProfileMetadataToStoreForHome_iCloudAltDSID_firstName_lastName_profilePhotoDict___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [HMDUser fetchSharedUserDataRootForHomeUUID:*(a1 + 40) moc:v2 coreData:*(a1 + 48)];
  if (v3)
  {
    [*(a1 + 56) _saveSharedUserProfileMetadataToBackingStoreContext:*(a1 + 32) rootShareObject:v3 iCloudAltDSID:*(a1 + 64) firstName:*(a1 + 72) lastName:*(a1 + 80) profilePhotoDict:*(a1 + 88)];
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 56);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v7;
      v8 = "%{public}@Successfully saved shared user profile metadata to Core Data";
      v9 = v6;
      v10 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_229538000, v9, v10, v8, &v12, 0xCu);
    }
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 56);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v7;
      v8 = "%{public}@Unable to fetch shared user root";
      v9 = v6;
      v10 = OS_LOG_TYPE_ERROR;
      goto LABEL_6;
    }
  }

  objc_autoreleasePoolPop(v4);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)setLastName:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  lastName = self->_lastName;
  self->_lastName = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)lastName
{
  os_unfair_lock_lock_with_options();
  v3 = self->_lastName;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setFirstName:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  firstName = self->_firstName;
  self->_firstName = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)firstName
{
  os_unfair_lock_lock_with_options();
  v3 = self->_firstName;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setiCloudAltDSID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  iCloudAltDSID = self->_iCloudAltDSID;
  self->_iCloudAltDSID = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)iCloudAltDSID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_iCloudAltDSID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_saveSharedUserProfileMetadataToBackingStoreContext:(id)a3 rootShareObject:(id)a4 iCloudAltDSID:(id)a5 firstName:(id)a6 lastName:(id)a7 profilePhotoDict:(id)a8
{
  v97 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = v15;
  v18 = v16;
  v19 = a7;
  v20 = a8;
  v89 = [v14 modelID];
  v21 = [v13 managedObjectContext];
  [v21 hmd_assertIsExecuting];
  if (v17 && ([v14 iCloudAltDSID], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqualToString:", v17), v22, (v23 & 1) == 0))
  {
    v25 = [v14 iCloudAltDSID];
    v24 = v25 == 0;

    [v14 setICloudAltDSID:v17];
    if (!v18)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v24 = 0;
    if (!v18)
    {
      goto LABEL_8;
    }
  }

  v26 = [v14 firstName];
  v27 = [v26 isEqualToString:v18];

  if ((v27 & 1) == 0)
  {
    [v14 setFirstName:v18];
  }

LABEL_8:
  if (v19)
  {
    v28 = [v14 lastName];
    v29 = [v28 isEqualToString:v19];

    if ((v29 & 1) == 0)
    {
      [v14 setLastName:v19];
    }
  }

  if (v20)
  {
    v30 = [v14 aaProfilePhoto];

    if (v30)
    {
      v79 = v24;
      v31 = v21;
      v81 = v19;
      v84 = v18;
      v32 = v17;
      v33 = v13;
      v34 = [v20 valueForKey:*MEMORY[0x277CD1428]];
      v35 = [v20 valueForKey:*MEMORY[0x277CD1420]];
      v36 = [v14 aaProfilePhoto];
      v37 = [v36 photoData];
      v38 = [(MKFCKSharedUserPhoto *)v34 isEqualToData:v37];

      if ((v38 & 1) == 0)
      {
        v39 = [v14 aaProfilePhoto];
        [v39 setPhotoData:v34];
      }

      v40 = [v14 aaProfilePhoto];
      v41 = [v40 cropRect];
      v42 = [v35 isEqual:v41];

      if ((v42 & 1) == 0)
      {
        v43 = [v14 aaProfilePhoto];
        [v43 setCropRect:v35];
      }

      v13 = v33;
      v17 = v32;
      v19 = v81;
      v18 = v84;
      v21 = v31;
      v24 = v79;
    }

    else
    {
      v34 = [[MKFCKSharedUserPhoto alloc] initWithContext:v21];
      v44 = [v20 valueForKey:*MEMORY[0x277CD1428]];
      [(MKFCKSharedUserPhoto *)v34 setPhotoData:v44];

      v45 = [v20 valueForKey:*MEMORY[0x277CD1420]];
      [(MKFCKSharedUserPhoto *)v34 setCropRect:v45];

      v46 = [MEMORY[0x277CCAD78] UUID];
      [(MKFCKSharedUserPhoto *)v34 setModelID:v46];

      v47 = [v14 homeModelID];
      [(MKFCKSharedUserPhoto *)v34 setHomeModelID:v47];

      [v14 setAaProfilePhoto:v34];
    }
  }

  if ([v21 hasChanges])
  {
    v85 = v18;
    v90 = 0;
    v48 = [v13 save:&v90];
    v49 = v90;
    v50 = v49;
    if (v48)
    {
      if (v24)
      {
        if (v89)
        {
          v80 = v49;
          v82 = v19;
          v51 = v21;
          v52 = v17;
          v53 = v13;
          v54 = objc_autoreleasePoolPush();
          v55 = self;
          v56 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            v57 = HMFGetLogIdentifier();
            *buf = 138543362;
            v92 = v57;
            _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_DEFAULT, "%{public}@Taking voucher on important MKFCKSharedUserDataRoot change", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v54);
          v58 = [(HMDUser *)v55 dataSource];
          v59 = +[MKFCKSharedUserDataRoot entity];
          [v58 applyVoucherForModel:v59 withModelID:v89 eventType:2 storeType:0];

          v13 = v53;
          v17 = v52;
          v50 = v80;
          v19 = v82;
          v21 = v51;
        }

        else
        {
          v78 = +[HMDTTRManager sharedManager];
          [v78 requestRadarWithDisplayReason:@"Failed to apply voucher for shared user data" radarTitle:@"Model ID was unexpectedly nil for shared user data when applying for voucher"];
        }
      }
    }

    else
    {
      v68 = v13;
      v69 = objc_autoreleasePoolPush();
      v70 = self;
      v71 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v72 = v88 = v69;
        HMFBooleanToString();
        v83 = v19;
        v73 = v17;
        v74 = v68;
        v76 = v75 = v21;
        *buf = 138543874;
        v92 = v72;
        v93 = 2112;
        v94 = v50;
        v95 = 2112;
        v96 = v76;
        _os_log_impl(&dword_229538000, v71, OS_LOG_TYPE_INFO, "%{public}@Unable to save the shared user metadata to local store with error : %@, Success : %@", buf, 0x20u);

        v21 = v75;
        v68 = v74;
        v17 = v73;
        v19 = v83;

        v69 = v88;
      }

      objc_autoreleasePoolPop(v69);
      v13 = v68;
    }

    v18 = v85;
  }

  else
  {
    v60 = v13;
    v61 = objc_autoreleasePoolPush();
    v62 = self;
    v63 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v87 = v21;
      v64 = v20;
      v65 = v19;
      v67 = v66 = v18;
      *buf = 138543362;
      v92 = v67;
      _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_DEBUG, "%{public}@No changes so not going to save the shared user metadata", buf, 0xCu);

      v18 = v66;
      v19 = v65;
      v20 = v64;
      v21 = v87;
    }

    objc_autoreleasePoolPop(v61);
    v13 = v60;
  }

  v77 = *MEMORY[0x277D85DE8];
}

- (id)allAccessoryUUID
{
  v2 = [(HMDUser *)self home];
  v3 = [v2 accessories];
  v4 = [v3 na_map:&__block_literal_global_969];

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
  v8[3] = &unk_278683FF0;
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
  v6[3] = &unk_278683FC8;
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
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@setting found = %@", &v14, 0x16u);
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
  v7 = [v6 na_map:&__block_literal_global_869];

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
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Aggregating settings to migrate user settings for Accessories = %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__HMDUser_applyConditionalValueUpdateToModels___block_invoke_870;
  v14[3] = &unk_278683FA0;
  v15 = v7;
  v16 = v9;
  v12 = v7;
  [v4 na_each:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __47__HMDUser_applyConditionalValueUpdateToModels___block_invoke_870(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_283EEF430])
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
        v17[3] = &unk_278686EA0;
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
          _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Aggregated value = %@ for allowExplicitContent", buf, 0x16u);
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@checking allowExplicitContent setting for accessory %@", &v11, 0x16u);
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
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, v15, &v19, v17);
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
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removed cloud share trust", &v10, 0xCu);
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
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Trust has been configured", &v10, 0xCu);
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
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Trust manager did fetch owner cloud share id: %@", &v13, 0x16u);
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
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Will share cloud share trust with user: %@", &v15, 0x16u);
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
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Configure new trust manager", &v9, 0xCu);
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
      block[3] = &unk_27868A728;
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
    dispatch_once(&trustTargetUUID_onceToken, &__block_literal_global_864);
  }

  v3 = MEMORY[0x277CCAD78];
  v4 = trustTargetUUID_namespace;
  v5 = [(HMDUser *)self uuid];
  v6 = [v5 UUIDString];
  v7 = [v6 dataUsingEncoding:4];
  v8 = [v3 hmf_UUIDWithNamespace:v4 data:v7];

  return v8;
}

void __26__HMDUser_trustTargetUUID__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"79E0D39A-83CC-42C1-99FC-5B4E0745E284"];
  v1 = trustTargetUUID_namespace;
  trustTargetUUID_namespace = v0;
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
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@User has updated their cloud share id and is cloud share ready", &v20, 0xCu);
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
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Cloud Share ID has unexpectedly changed", &v20, 0xCu);
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching cloud share ID by returning future: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [(HMDUser *)v4 cloudShareIDFuture];
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

uint64_t __52__HMDUser_setHasUserSeenRMVNewLanguageNotification___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uuid];
  v3 = [HMCContext findUserWithModelID:v2];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (!v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v19 = 138543874;
      v20 = v13;
      v21 = 2112;
      v22 = v2;
      v23 = 2112;
      v24 = @"root.home.hasUserSeenRMVNewLanguageNotification";
      v14 = "%{public}@Unable to fetch the user with id [%@] when updating %@";
      v15 = v7;
      v16 = 32;
      goto LABEL_9;
    }

LABEL_10:

    objc_autoreleasePoolPop(v4);
    goto LABEL_11;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
    v19 = 138544130;
    v20 = v8;
    v21 = 2112;
    v22 = @"root.home.hasUserSeenRMVNewLanguageNotification";
    v23 = 2112;
    v24 = @"ownerHasUserSeenRMVNewLanguageNotification";
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating owner user setting: '%@' (%@) = %@", &v19, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v10 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  [v3 setValue:v10 forKey:@"ownerHasUserSeenRMVNewLanguageNotification"];

  v11 = +[HMCContext currentContext];
  v12 = [v11 save];

  if ((v12 & 1) == 0)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v13;
      v14 = "%{public}@Error when saving the update";
      v15 = v7;
      v16 = 12;
LABEL_9:
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, v14, &v19, v16);

      goto LABEL_10;
    }

    goto LABEL_10;
  }

LABEL_11:

  v17 = *MEMORY[0x277D85DE8];
  return 1;
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
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, v15, &v21, 0x16u);

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
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, v15, &v21, 0x16u);

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
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, v21, &v24, 0x16u);
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
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, v16, &v26, 0x16u);
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
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Accessory is not valid home: %@, accessory: %@, category: %@, supports: %d", &v26, 0x30u);
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
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, v16, &v26, 0x16u);
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
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Accessory is not valid home: %@, accessory: %@, category: %@, supports: %d", &v26, 0x30u);
  }

  objc_autoreleasePoolPop(v18);
  v11 = 0;
LABEL_14:

  v24 = *MEMORY[0x277D85DE8];
  return v11;
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
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Did stop backing store controller: %@", &v15, 0x16u);
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
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Nil-ing out the person settings manager", &v15, 0xCu);
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
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Did start local zone for backing store controller: %@", &v12, 0x16u);
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

- (id)dictionaryEncoding
{
  v3 = [(HMDUser *)self userID];
  v4 = [(HMDUser *)self privilege];
  v5 = [(HMDUser *)self isRemoteAccessAllowed];
  v6 = [(HMDUser *)self camerasAccessLevel];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser isAnnounceAccessAllowed](self, "isAnnounceAccessAllowed")}];
  v8 = [(HMDUser *)self announceAccessLevel];
  v9 = [(HMDUser *)self audioAnalysisUserDropInAccessLevel];
  v10 = [(HMDUser *)self restrictedGuestAccessSettings];
  v11 = [HMDUser userDictionaryWithUserID:v3 privilege:v4 remoteAccessAllowed:v5 cameraAccessLevel:v6 announceAccessAllowed:v7 announceAccessLevel:v8 audioAnalysisUserDropInAccessLevel:v9 restrictedGuestAccessSettings:v10];

  return v11;
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Removing user cloud data", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  queue = v4->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__HMDUser_removeCloudData__block_invoke;
  block[3] = &unk_27868A728;
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
  v49 = *MEMORY[0x277D85DE8];
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

  v15 = [(HMDUser *)self mergeIdentifier];
  if (v15)
  {
    [(HMDResidentUserModel *)v11 setIdsMergeIdentifier:v15];
  }

  else
  {
    v16 = [(HMDUser *)self account];
    v17 = [v16 senderCorrelationIdentifier];
    [(HMDResidentUserModel *)v11 setIdsMergeIdentifier:v17];
  }

  if (a4 < 3)
  {
    goto LABEL_11;
  }

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser privilege](self, "privilege")}];
  [(HMDResidentUserModel *)v11 setPrivilege:v18];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser isRemoteAccessAllowed](self, "isRemoteAccessAllowed")}];
  [(HMDResidentUserModel *)v11 setRemoteAccessAllowed:v19];

  if (a4 == 3)
  {
LABEL_11:
    v20 = 0;
  }

  else
  {
    v21 = [(HMDUser *)self presenceAuthStatus];

    if (v21)
    {
      v22 = [(HMDUser *)self presenceAuthStatus];
      v23 = [v22 number];
      [(HMDResidentUserModel *)v11 setPresenceAuthorizationStatus:v23];
    }

    v20 = 1;
  }

  v24 = [(HMDUser *)self pairingIdentity];
  v25 = [v24 hmd_dictionaryEncoding];
  [(HMDResidentUserModel *)v11 setPairingIdentity:v25];

  v26 = [(HMDUser *)self userID];
  [(HMDResidentUserModel *)v11 setUserID:v26];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser camerasAccessLevel](self, "camerasAccessLevel")}];
  [(HMDResidentUserModel *)v11 setCamerasAccessLevel:v27];

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser audioAnalysisUserDropInAccessLevel](self, "audioAnalysisUserDropInAccessLevel")}];
  [(HMDUserModel *)v11 setAudioAnalysisUserDropInAccessLevel:v28];

  v29 = [(HMDUser *)self matterCASEAuthenticatedTagID];
  [(HMDResidentUserModel *)v11 setMatterCASEAuthenticatedTagID:v29];

  if (v20)
  {
    v30 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser isAnnounceAccessAllowed](self, "isAnnounceAccessAllowed")}];
    [(HMDResidentUserModel *)v11 setAnnounceAccessAllowed:v30];

    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser announceAccessLevel](self, "announceAccessLevel")}];
    [(HMDResidentUserModel *)v11 setAnnounceAccessLevel:v31];
  }

  if ([(HMDUser *)self isRestrictedGuest])
  {
    v32 = [(HMDUser *)self restrictedGuestAccessSettings];

    if (v32)
    {
      v33 = v11;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      v35 = v34;

      v36 = [(HMDUser *)self restrictedGuestAccessSettings];
      v37 = [v36 uuidsOfAllowedAccessories];
      [(HMDResidentUserModel *)v35 setAllowedAccessoryUUIDs:v37];

      v38 = objc_autoreleasePoolPush();
      v39 = self;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = HMFGetLogIdentifier();
        v42 = [(HMDResidentUserModel *)v35 allowedAccessoryUUIDs];
        v45 = 138543618;
        v46 = v41;
        v47 = 2112;
        v48 = v42;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@Added allowed accessory UUIDs to user model: %@", &v45, 0x16u);
      }

      objc_autoreleasePoolPop(v38);
    }
  }

  v43 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)newModelWithChangeType:(unint64_t)a3
{
  v5 = [(HMDUser *)self home];
  v6 = [(HMDUser *)self isRestrictedGuest];
  v7 = off_278666140;
  if (!v6)
  {
    v7 = off_278666368;
  }

  v8 = objc_alloc(*v7);
  v9 = [(HMDUser *)self uuid];
  v10 = [v5 uuid];
  v11 = [v8 initWithObjectChangeType:a3 uuid:v9 parentUUID:v10];

  return v11;
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

    v11 = [(HMDUser *)self accessCode];
    if (v11)
    {
    }

    else
    {
      v12 = [(HMDUser *)self accessCodeChangedByUserUUID];

      if (!v12)
      {
LABEL_10:

        goto LABEL_11;
      }
    }

    v13 = [(HMDUser *)self accessCode];
    v14 = [(HMDUser *)self uuid];
    v15 = [(HMDUser *)self accessCodeChangedByUserUUID];
    v16 = [HMDAccessCodeDataManager createUserAccessCodeModelFromAccessCode:v13 forUserUUID:v14 changedByUserUUID:v15];

    [v5 addObject:v16];
    goto LABEL_10;
  }

LABEL_11:
  v17 = [v5 copy];

  return v17;
}

- (void)transactionObjectRemoved:(id)a3 message:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
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
  if (!v9)
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

    if (!v12)
    {
LABEL_22:

      goto LABEL_23;
    }

    v13 = [v7 messagePayload];
    v14 = [v13 hmf_flowForKey:*MEMORY[0x277D0F1C8]];

    if (v14)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [v14 UUID];
        v31 = 138543618;
        v32 = v18;
        v33 = 2112;
        v34 = v19;
        v20 = "%{public}@[Flow: %@] Handling removed user access code model";
LABEL_15:
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, v20, &v31, 0x16u);
      }
    }

    else
    {
      v14 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
      v15 = objc_autoreleasePoolPush();
      v21 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [v14 UUID];
        v31 = 138543618;
        v32 = v18;
        v33 = 2112;
        v34 = v19;
        v20 = "%{public}@[NewFlow: %@ {Feature:Pin Codes}] Handling removed user access code model";
        goto LABEL_15;
      }
    }

    objc_autoreleasePoolPop(v15);
    v22 = [(HMDUser *)self home];
    v23 = [v22 accessCodeManager];
    v24 = [v23 dataManager];

    if (v24)
    {
      [v24 handleRemovedUserAccessCodeModel:v12 forUser:self message:v7 flow:v14];
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v31 = 138543362;
        v32 = v28;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Not handling removed HMDUserAccessCodeModel because self.home.accessCodeManager.dataManager is nil.", &v31, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      [v7 respondWithError:v29];
    }

    goto LABEL_22;
  }

  [(HMDUser *)self setAssistantAccessControl:0];
  [v7 respondWithSuccess];
LABEL_23:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_transactionUserProfileMetaDataUpdated:(id)a3
{
  v22 = a3;
  if (_os_feature_enabled_impl())
  {
    v4 = [v22 iCloudAltDSID];
    if (v4)
    {
      v5 = v4;
      v6 = [v22 iCloudAltDSID];
      v7 = [(HMDUser *)self iCloudAltDSID];
      v8 = HMFEqualObjects();

      if ((v8 & 1) == 0)
      {
        v9 = [v22 iCloudAltDSID];
        [(HMDUser *)self setICloudAltDSID:v9];
      }
    }

    v10 = [v22 firstName];
    if (v10)
    {
      v11 = v10;
      v12 = [v22 firstName];
      v13 = [(HMDUser *)self firstName];
      v14 = HMFEqualObjects();

      if ((v14 & 1) == 0)
      {
        v15 = [v22 firstName];
        [(HMDUser *)self setFirstName:v15];
      }
    }

    v16 = [v22 lastName];
    if (v16)
    {
      v17 = v16;
      v18 = [v22 lastName];
      v19 = [(HMDUser *)self lastName];
      v20 = HMFEqualObjects();

      if ((v20 & 1) == 0)
      {
        v21 = [v22 lastName];
        [(HMDUser *)self setLastName:v21];
      }
    }
  }
}

- (void)_transactionPhotosPersonManagerSettingsUpdated:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HMDUser__transactionPhotosPersonManagerSettingsUpdated___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __58__HMDUser__transactionPhotosPersonManagerSettingsUpdated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) photosPersonDataManager];
  [v2 handleUpdatedUserModel:*(a1 + 40)];
}

- (void)_transactionUserSettingsUpdated:(id)a3
{
  v169 = a3;
  v4 = [v169 allowExplicitContent];
  if (!v4 || (v5 = v4, [v169 allowExplicitContent], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "BOOLValue"), v8 = -[HMDUser allowExplicitContent](self, "allowExplicitContent"), v6, v5, v7 == v8))
  {
    v10 = 0;
  }

  else
  {
    v9 = [v169 allowExplicitContent];
    -[HMDUser setAllowExplicitContent:](self, "setAllowExplicitContent:", [v9 BOOLValue]);

    v10 = 1;
  }

  v11 = [v169 allowiTunesAccount];
  if (v11)
  {
    v12 = v11;
    v13 = [v169 allowiTunesAccount];
    v14 = [v13 BOOLValue];
    v15 = [(HMDUser *)self allowiTunesAccount];

    if (v14 != v15)
    {
      v16 = [v169 allowiTunesAccount];
      -[HMDUser setAllowiTunesAccount:](self, "setAllowiTunesAccount:", [v16 BOOLValue]);

      v10 = 1;
    }
  }

  v17 = [v169 dolbyAtmosEnabled];
  if (v17)
  {
    v18 = v17;
    v19 = [v169 dolbyAtmosEnabled];
    v20 = [v19 BOOLValue];
    v21 = [(HMDUser *)self dolbyAtmosEnabled];

    if (v20 != v21)
    {
      v22 = [v169 dolbyAtmosEnabled];
      -[HMDUser setDolbyAtmosEnabled:](self, "setDolbyAtmosEnabled:", [v22 BOOLValue]);

      v10 = 1;
    }
  }

  v23 = [v169 crossfadeEnabled];
  if (v23)
  {
    v24 = v23;
    v25 = [v169 crossfadeEnabled];
    v26 = [v25 BOOLValue];
    v27 = [(HMDUser *)self crossfadeEnabled];

    if (v26 != v27)
    {
      v28 = [v169 crossfadeEnabled];
      -[HMDUser setCrossfadeEnabled:](self, "setCrossfadeEnabled:", [v28 BOOLValue]);

      v10 = 1;
    }
  }

  v29 = [v169 crossfadeDuration];
  if (v29)
  {
    v30 = v29;
    v31 = [v169 crossfadeDuration];
    [v31 floatValue];
    v33 = v32;
    [(HMDUser *)self crossfadeDuration];
    v35 = v34;

    if (v33 != v35)
    {
      v36 = [v169 crossfadeDuration];
      [v36 floatValue];
      [(HMDUser *)self setCrossfadeDuration:?];

      v10 = 1;
    }
  }

  v37 = [v169 losslessMusicEnabled];
  if (v37)
  {
    v38 = v37;
    v39 = [v169 losslessMusicEnabled];
    v40 = [v39 BOOLValue];
    v41 = [(HMDUser *)self losslessMusicEnabled];

    if (v40 != v41)
    {
      v42 = [v169 losslessMusicEnabled];
      -[HMDUser setLosslessMusicEnabled:](self, "setLosslessMusicEnabled:", [v42 BOOLValue]);

      v10 = 1;
    }
  }

  v43 = [v169 playbackInfluencesEnabled];
  if (v43)
  {
    v44 = v43;
    v45 = [v169 playbackInfluencesEnabled];
    v46 = [v45 BOOLValue];
    v47 = [(HMDUser *)self playbackInfluencesEnabled];

    if (v46 != v47)
    {
      v48 = [v169 playbackInfluencesEnabled];
      -[HMDUser setPlaybackInfluencesEnabled:](self, "setPlaybackInfluencesEnabled:", [v48 BOOLValue]);

      v10 = 1;
    }
  }

  v49 = [v169 siriIdentifyVoiceEnabled];
  if (v49)
  {
    v50 = v49;
    v51 = [v169 siriIdentifyVoiceEnabled];
    v52 = [v51 BOOLValue];
    v53 = [(HMDUser *)self siriIdentifyVoiceEnabled];

    if (v52 != v53)
    {
      v54 = [v169 siriIdentifyVoiceEnabled];
      -[HMDUser setSiriIdentifyVoiceEnabled:](self, "setSiriIdentifyVoiceEnabled:", [v54 BOOLValue]);

      v10 = 1;
    }
  }

  v55 = [v169 ownerAddSceneButtonPresentedCount];
  if (v55)
  {
    v56 = v55;
    v57 = [v169 ownerAddSceneButtonPresentedCount];
    v58 = [v57 integerValue];
    v59 = [(HMDUser *)self ownerAddSceneButtonPresentedCount];

    if (v58 != v59)
    {
      v60 = [v169 ownerAddSceneButtonPresentedCount];
      -[HMDUser setOwnerAddSceneButtonPresentedCount:](self, "setOwnerAddSceneButtonPresentedCount:", [v60 integerValue]);

      v10 = 1;
    }
  }

  v61 = [v169 ownerCompletedSwitchingHomesOnboardingUI];
  if (v61)
  {
    v62 = v61;
    v63 = [v169 ownerCompletedSwitchingHomesOnboardingUI];
    v64 = [v63 BOOLValue];
    v65 = [(HMDUser *)self ownerCompletedSwitchingHomesOnboardingUI];

    if (v64 != v65)
    {
      v66 = [v169 ownerCompletedSwitchingHomesOnboardingUI];
      -[HMDUser setOwnerCompletedSwitchingHomesOnboardingUI:](self, "setOwnerCompletedSwitchingHomesOnboardingUI:", [v66 BOOLValue]);

      v10 = 1;
    }
  }

  v67 = [v169 ownerDismissedAccessCodeOnboarding];
  if (v67)
  {
    v68 = v67;
    v69 = [v169 ownerDismissedAccessCodeOnboarding];
    v70 = [v69 BOOLValue];
    v71 = [(HMDUser *)self ownerDismissedAccessCodeOnboarding];

    if (v70 != v71)
    {
      v72 = [v169 ownerDismissedAccessCodeOnboarding];
      -[HMDUser setOwnerDismissedAccessCodeOnboarding:](self, "setOwnerDismissedAccessCodeOnboarding:", [v72 BOOLValue]);

      v10 = 1;
    }
  }

  v73 = [v169 ownerDismissedAccessoryFirmwareUpdateOnboarding];
  if (v73)
  {
    v74 = v73;
    v75 = [v169 ownerDismissedAccessoryFirmwareUpdateOnboarding];
    v76 = [v75 BOOLValue];
    v77 = [(HMDUser *)self ownerDismissedAccessoryFirmwareUpdateOnboarding];

    if (v76 != v77)
    {
      v78 = [v169 ownerDismissedAccessoryFirmwareUpdateOnboarding];
      -[HMDUser setOwnerDismissedAccessoryFirmwareUpdateOnboarding:](self, "setOwnerDismissedAccessoryFirmwareUpdateOnboarding:", [v78 BOOLValue]);

      v10 = 1;
    }
  }

  v79 = [v169 ownerDismissedAnnounceOnboarding];
  if (v79)
  {
    v80 = v79;
    v81 = [v169 ownerDismissedAnnounceOnboarding];
    v82 = [v81 BOOLValue];
    v83 = [(HMDUser *)self ownerDismissedAnnounceOnboarding];

    if (v82 != v83)
    {
      v84 = [v169 ownerDismissedAnnounceOnboarding];
      -[HMDUser setOwnerDismissedAnnounceOnboarding:](self, "setOwnerDismissedAnnounceOnboarding:", [v84 BOOLValue]);

      v10 = 1;
    }
  }

  v85 = [v169 ownerDismissedCameraRecordingOnboarding];
  if (v85)
  {
    v86 = v85;
    v87 = [v169 ownerDismissedCameraRecordingOnboarding];
    v88 = [v87 BOOLValue];
    v89 = [(HMDUser *)self ownerDismissedCameraRecordingOnboarding];

    if (v88 != v89)
    {
      v90 = [v169 ownerDismissedCameraRecordingOnboarding];
      -[HMDUser setOwnerDismissedCameraRecordingOnboarding:](self, "setOwnerDismissedCameraRecordingOnboarding:", [v90 BOOLValue]);

      v10 = 1;
    }
  }

  v91 = [v169 ownerDismissedCameraRecordingSetupBanner];
  if (v91)
  {
    v92 = v91;
    v93 = [v169 ownerDismissedCameraRecordingSetupBanner];
    v94 = [v93 BOOLValue];
    v95 = [(HMDUser *)self ownerDismissedCameraRecordingSetupBanner];

    if (v94 != v95)
    {
      v96 = [v169 ownerDismissedCameraRecordingSetupBanner];
      -[HMDUser setOwnerDismissedCameraRecordingSetupBanner:](self, "setOwnerDismissedCameraRecordingSetupBanner:", [v96 BOOLValue]);

      v10 = 1;
    }
  }

  v97 = [v169 ownerDismissedCameraUpgradeOfferBanner];
  if (v97)
  {
    v98 = v97;
    v99 = [v169 ownerDismissedCameraUpgradeOfferBanner];
    v100 = [v99 BOOLValue];
    v101 = [(HMDUser *)self ownerDismissedCameraUpgradeOfferBanner];

    if (v100 != v101)
    {
      v102 = [v169 ownerDismissedCameraUpgradeOfferBanner];
      -[HMDUser setOwnerDismissedCameraUpgradeOfferBanner:](self, "setOwnerDismissedCameraUpgradeOfferBanner:", [v102 BOOLValue]);

      v10 = 1;
    }
  }

  v103 = [v169 ownerDismissedHomeTheaterOnboarding];
  if (v103)
  {
    v104 = v103;
    v105 = [v169 ownerDismissedHomeTheaterOnboarding];
    v106 = [v105 BOOLValue];
    v107 = [(HMDUser *)self ownerDismissedHomeTheaterOnboarding];

    if (v106 != v107)
    {
      v108 = [v169 ownerDismissedHomeTheaterOnboarding];
      -[HMDUser setOwnerDismissedHomeTheaterOnboarding:](self, "setOwnerDismissedHomeTheaterOnboarding:", [v108 BOOLValue]);

      v10 = 1;
    }
  }

  v109 = [v169 ownerDismissedIdentifyVoiceOnboarding];
  if (v109)
  {
    v110 = v109;
    v111 = [v169 ownerDismissedIdentifyVoiceOnboarding];
    v112 = [v111 BOOLValue];
    v113 = [(HMDUser *)self ownerDismissedIdentifyVoiceOnboarding];

    if (v112 != v113)
    {
      v114 = [v169 ownerDismissedIdentifyVoiceOnboarding];
      -[HMDUser setOwnerDismissedIdentifyVoiceOnboarding:](self, "setOwnerDismissedIdentifyVoiceOnboarding:", [v114 BOOLValue]);

      v10 = 1;
    }
  }

  v115 = [v169 ownerDismissedIdentifyVoiceSetupBanner];
  if (v115)
  {
    v116 = v115;
    v117 = [v169 ownerDismissedIdentifyVoiceSetupBanner];
    v118 = [v117 BOOLValue];
    v119 = [(HMDUser *)self ownerDismissedIdentifyVoiceSetupBanner];

    if (v118 != v119)
    {
      v120 = [v169 ownerDismissedIdentifyVoiceSetupBanner];
      -[HMDUser setOwnerDismissedIdentifyVoiceSetupBanner:](self, "setOwnerDismissedIdentifyVoiceSetupBanner:", [v120 BOOLValue]);

      v10 = 1;
    }
  }

  v121 = [v169 ownerDismissedNaturalLightingOnboarding];
  if (v121)
  {
    v122 = v121;
    v123 = [v169 ownerDismissedNaturalLightingOnboarding];
    v124 = [v123 BOOLValue];
    v125 = [(HMDUser *)self ownerDismissedNaturalLightingOnboarding];

    if (v124 != v125)
    {
      v126 = [v169 ownerDismissedNaturalLightingOnboarding];
      -[HMDUser setOwnerDismissedNaturalLightingOnboarding:](self, "setOwnerDismissedNaturalLightingOnboarding:", [v126 BOOLValue]);

      v10 = 1;
    }
  }

  v127 = [v169 ownerDismissedTVViewingProfileOnboarding];
  if (v127)
  {
    v128 = v127;
    v129 = [v169 ownerDismissedTVViewingProfileOnboarding];
    v130 = [v129 BOOLValue];
    v131 = [(HMDUser *)self ownerDismissedTVViewingProfileOnboarding];

    if (v130 != v131)
    {
      v132 = [v169 ownerDismissedTVViewingProfileOnboarding];
      -[HMDUser setOwnerDismissedTVViewingProfileOnboarding:](self, "setOwnerDismissedTVViewingProfileOnboarding:", [v132 BOOLValue]);

      v10 = 1;
    }
  }

  v133 = [v169 ownerDismissedTVViewingProfileSetupBanner];
  if (v133)
  {
    v134 = v133;
    v135 = [v169 ownerDismissedTVViewingProfileSetupBanner];
    v136 = [v135 BOOLValue];
    v137 = [(HMDUser *)self ownerDismissedTVViewingProfileSetupBanner];

    if (v136 != v137)
    {
      v138 = [v169 ownerDismissedTVViewingProfileSetupBanner];
      -[HMDUser setOwnerDismissedTVViewingProfileSetupBanner:](self, "setOwnerDismissedTVViewingProfileSetupBanner:", [v138 BOOLValue]);

      v10 = 1;
    }
  }

  v139 = [v169 ownerDismissedUserSplitMediaAccountWarning];
  if (v139)
  {
    v140 = v139;
    v141 = [v169 ownerDismissedUserSplitMediaAccountWarning];
    v142 = [v141 BOOLValue];
    v143 = [(HMDUser *)self ownerDismissedUserSplitMediaAccountWarning];

    if (v142 != v143)
    {
      v144 = [v169 ownerDismissedUserSplitMediaAccountWarning];
      -[HMDUser setOwnerDismissedUserSplitMediaAccountWarning:](self, "setOwnerDismissedUserSplitMediaAccountWarning:", [v144 BOOLValue]);

      v10 = 1;
    }
  }

  v145 = [v169 ownerDismissedWalletKeyExpressModeOnboarding];
  if (v145)
  {
    v146 = v145;
    v147 = [v169 ownerDismissedWalletKeyExpressModeOnboarding];
    v148 = [v147 BOOLValue];
    v149 = [(HMDUser *)self ownerDismissedWalletKeyExpressModeOnboarding];

    if (v148 != v149)
    {
      v150 = [v169 ownerDismissedWalletKeyExpressModeOnboarding];
      -[HMDUser setOwnerDismissedWalletKeyExpressModeOnboarding:](self, "setOwnerDismissedWalletKeyExpressModeOnboarding:", [v150 BOOLValue]);

      v10 = 1;
    }
  }

  v151 = [v169 ownerDismissedWelcomeUI];
  if (v151)
  {
    v152 = v151;
    v153 = [v169 ownerDismissedWelcomeUI];
    v154 = [v153 BOOLValue];
    v155 = [(HMDUser *)self ownerDismissedWelcomeUI];

    if (v154 != v155)
    {
      v156 = [v169 ownerDismissedWelcomeUI];
      -[HMDUser setOwnerDismissedWelcomeUI:](self, "setOwnerDismissedWelcomeUI:", [v156 BOOLValue]);

      v10 = 1;
    }
  }

  v157 = [v169 ownerHasUserSeenRMVNewLanguageNotification];
  if (v157)
  {
    v158 = v157;
    v159 = [v169 ownerHasUserSeenRMVNewLanguageNotification];
    v160 = [v159 BOOLValue];
    v161 = [(HMDUser *)self ownerHasUserSeenRMVNewLanguageNotification];

    if (v160 != v161)
    {
      v162 = [v169 ownerHasUserSeenRMVNewLanguageNotification];
      -[HMDUser setOwnerHasUserSeenRMVNewLanguageNotification:](self, "setOwnerHasUserSeenRMVNewLanguageNotification:", [v162 BOOLValue]);

      v10 = 1;
    }
  }

  v163 = [v169 ownerDismissed2024EnergyOnboarding];
  if (!v163 || (v164 = v163, [v169 ownerDismissed2024EnergyOnboarding], v165 = objc_claimAutoreleasedReturnValue(), v166 = objc_msgSend(v165, "BOOLValue"), v167 = -[HMDUser ownerDismissed2024EnergyOnboarding](self, "ownerDismissed2024EnergyOnboarding"), v165, v164, v166 == v167))
  {
    if (!v10)
    {
      goto LABEL_85;
    }
  }

  else
  {
    v168 = [v169 ownerDismissed2024EnergyOnboarding];
    -[HMDUser setOwnerDismissed2024EnergyOnboarding:](self, "setOwnerDismissed2024EnergyOnboarding:", [v168 BOOLValue]);
  }

  [(HMDUser *)self postUserSettingsUpdatedNotificationWithReason:@"User Settings updated"];
LABEL_85:
}

- (void)_transactionAccessorySettingsUpdated:(id)a3
{
  v9 = a3;
  v4 = [(HMDUser *)self assistantAccessControl];
  v5 = [v4 areActivityNotificationsEnabledForPersonalRequests];
  v6 = [v9 activityNotificationsEnabledForPersonalRequests];
  v7 = [v6 BOOLValue];

  if (v5 != v7)
  {
    v8 = [v9 activityNotificationsEnabledForPersonalRequests];
    [v4 setActivityNotificationsEnabledForPersonalRequests:{objc_msgSend(v8, "BOOLValue")}];

    [(HMDUser *)self postUserSettingsUpdatedNotificationWithReason:@"Personal request settings enabled"];
  }
}

- (void)handleUpdatedCATForUser
{
  v2 = [(HMDUser *)self home];
  [v2 handleCATUpdate];
}

- (void)_transactionUserUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v193 = *MEMORY[0x277D85DE8];
  v175 = a3;
  v8 = a4;
  v177 = a5;
  group = dispatch_group_create();
  v9 = [v8 accountHandle];

  if (v9)
  {
    v10 = [v8 accountHandle];
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = [v8 userID];

    if (!v11)
    {
      v10 = 0;
      goto LABEL_9;
    }

    v12 = +[HMDAccountHandleFormatter defaultFormatter];
    v13 = [v8 userID];
    v10 = [v12 accountHandleFromString:v13];

    if (!v10)
    {
      goto LABEL_9;
    }
  }

  v14 = [(HMDUser *)self accountHandle];
  v15 = HMFEqualObjects();

  if ((v15 & 1) == 0)
  {
    [(HMDUser *)self setAccountHandle:v10];
  }

LABEL_9:
  v176 = v10;
  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [(HMDUser *)v17 userID];
    v21 = [(HMDUser *)v17 account];
    [(HMDUser *)v17 isCurrentUser];
    v22 = HMFBooleanToString();
    *buf = 138544387;
    v182 = v19;
    v183 = 2112;
    v184 = v176;
    v185 = 2117;
    v186 = v20;
    v187 = 2112;
    v188 = v21;
    v189 = 2112;
    v190 = v22;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Updated account handle [%@] for %{sensitive}@, account: %@, isCurrentUser: %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v16);
  if ([v8 propertyWasSet:@"accountIdentifier"])
  {
    v23 = [v8 accountIdentifier];
    v24 = [(HMDUser *)v17 accountIdentifier];
    v25 = HMFEqualObjects();

    if ((v25 & 1) == 0)
    {
      v26 = [v8 accountIdentifier];
      [(HMDUser *)v17 setAccountIdentifier:v26];
    }
  }

  v27 = [v8 idsMergeIdentifier];
  if (v27)
  {
    v28 = v27;
    v29 = [v8 idsMergeIdentifier];
    v30 = [(HMDUser *)v17 mergeIdentifier];
    v31 = HMFEqualObjects();

    if ((v31 & 1) == 0)
    {
      v32 = [v8 idsMergeIdentifier];
      [(HMDUser *)v17 setMergeIdentifier:v32];
    }
  }

  v173 = [(HMDUser *)v17 home];
  v33 = [(HMDUser *)v17 uuid];
  v34 = [v8 uuid];
  v35 = [v33 isEqual:v34];

  if ((v35 & 1) == 0)
  {
    v36 = objc_autoreleasePoolPush();
    v37 = v17;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = HMFGetLogIdentifier();
      v40 = [v8 uuid];
      v41 = [(HMDUser *)v37 uuid];
      *buf = 138543874;
      v182 = v39;
      v183 = 2112;
      v184 = v40;
      v185 = 2112;
      v186 = v41;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Updating uuid: %@ from %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v36);
    [(HMDUser *)v37 deregisterForMessages];
    v42 = [(HMDUser *)v37 uuid];
    v43 = [v8 uuid];
    [(HMDUser *)v37 setUUID:v43];

    [(HMDUser *)v37 registerForMessages];
    [(HMDUser *)v37 recoverUserCloudDataDueToUUIDChangeFromOldUUID:v42];
  }

  v44 = [v8 privilege];
  if (v44)
  {
    v45 = v44;
    v46 = [(HMDUser *)v17 privilege];
    v47 = [v8 privilege];
    v48 = [v47 integerValue];

    if (v46 != v48)
    {
      v49 = objc_autoreleasePoolPush();
      v50 = v17;
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v52 = HMFGetLogIdentifier();
        v53 = [(HMDUser *)v50 privilege];
        if (v53 > 5)
        {
          v54 = @"None";
        }

        else
        {
          v54 = off_278684178[v53];
        }

        v55 = [v8 privilege];
        v56 = [v55 intValue];
        if (v56 > 5)
        {
          v57 = @"None";
        }

        else
        {
          v57 = off_278684178[v56];
        }

        *buf = 138543874;
        v182 = v52;
        v183 = 2112;
        v184 = v54;
        v185 = 2112;
        v186 = v57;
        _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_INFO, "%{public}@User Privilege got updated from : %@ -> %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v49);
      v58 = [v8 privilege];
      -[HMDUser setPrivilege:](v50, "setPrivilege:", [v58 integerValue]);
    }
  }

  v59 = [v8 remoteAccessAllowed];
  if (v59)
  {
    v60 = v59;
    v61 = [v8 remoteAccessAllowed];
    v62 = [v61 BOOLValue];
    v63 = [(HMDUser *)v17 isRemoteAccessAllowed];

    if (v62 != v63)
    {
      v64 = [v8 remoteAccessAllowed];
      -[HMDUser setRemoteAccessAllowed:](v17, "setRemoteAccessAllowed:", [v64 BOOLValue]);
    }
  }

  v65 = [v8 camerasAccessLevel];
  v66 = [v65 integerValue];

  v67 = [v8 camerasAccessLevel];
  if (v67)
  {
    v68 = v67;
    v69 = [(HMDUser *)v17 camerasAccessLevel];

    if (v66 != v69)
    {
      v70 = objc_autoreleasePoolPush();
      v71 = v17;
      v72 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
      {
        v73 = HMFGetLogIdentifier();
        [(HMDUser *)v71 camerasAccessLevel];
        v74 = HMUserCameraAccessLevelAsString();
        v75 = HMUserCameraAccessLevelAsString();
        *buf = 138543874;
        v182 = v73;
        v183 = 2112;
        v184 = v74;
        v185 = 2112;
        v186 = v75;
        _os_log_impl(&dword_229538000, v72, OS_LOG_TYPE_INFO, "%{public}@Updating cameras access value from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v70);
      [(HMDUser *)v71 setCamerasAccessLevel:v66];
    }
  }

  v76 = [v8 announceAccessLevel];
  if (v76)
  {
    v77 = v76;
    v78 = [v8 announceAccessLevel];
    v79 = [v78 unsignedIntegerValue];
    v80 = [(HMDUser *)v17 announceAccessLevel];

    if (v79 != v80)
    {
      v81 = [v8 announceAccessLevel];
      v89 = [(HMDUser *)v17 announceUserAccessLevelFromAnnounceAccessAllowed:v81 announceAccessLevel:?];
LABEL_51:
      [(HMDUser *)v17 setAnnounceAccessLevel:v89];
      goto LABEL_52;
    }
  }

  v81 = [v8 announceAccessLevel];
  if (v81)
  {
LABEL_52:

    goto LABEL_53;
  }

  v82 = [v8 announceAccessAllowed];
  if (v82)
  {
    v83 = v82;
    v84 = [v8 announceAccessAllowed];
    v85 = [v84 BOOLValue];
    v86 = [(HMDUser *)v17 isAnnounceAccessAllowed];

    if (v85 != v86)
    {
      v81 = [v8 announceAccessAllowed];
      v87 = [v81 BOOLValue];
      v88 = 1;
      if (v87)
      {
        v88 = 2;
      }

      if (v17)
      {
        v89 = v88;
      }

      else
      {
        v89 = 0;
      }

      goto LABEL_51;
    }
  }

LABEL_53:
  v90 = [v8 audioAnalysisUserDropInAccessLevel];
  v91 = [v90 integerValue];

  v92 = [v8 audioAnalysisUserDropInAccessLevel];
  if (v92)
  {
    v93 = v92;
    v94 = [(HMDUser *)v17 audioAnalysisUserDropInAccessLevel];

    if (v91 != v94)
    {
      v95 = objc_autoreleasePoolPush();
      v96 = v17;
      v97 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
      {
        v98 = HMFGetLogIdentifier();
        v99 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser audioAnalysisUserDropInAccessLevel](v96, "audioAnalysisUserDropInAccessLevel")}];
        v100 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v91];
        *buf = 138543874;
        v182 = v98;
        v183 = 2112;
        v184 = v99;
        v185 = 2112;
        v186 = v100;
        _os_log_impl(&dword_229538000, v97, OS_LOG_TYPE_INFO, "%{public}@Updating audio analysis user Dropin value from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v95);
      [(HMDUser *)v96 setAudioAnalysisUserDropInAccessLevel:v91];
    }
  }

  v101 = [v8 matterCASEAuthenticatedTagID];
  if (v101)
  {
    v102 = v101;
    v103 = [v8 matterCASEAuthenticatedTagID];
    if ([v103 integerValue])
    {
      v104 = [v8 matterCASEAuthenticatedTagID];
      v105 = [(HMDUser *)v17 matterCASEAuthenticatedTagID];
      v106 = [v104 isEqual:v105];

      if ((v106 & 1) == 0)
      {
        v107 = objc_autoreleasePoolPush();
        v108 = v17;
        v109 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v109, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v110 = v172 = v107;
          v171 = [(HMDUser *)v108 matterCASEAuthenticatedTagID];
          v111 = [v171 integerValue];
          v112 = [(HMDUser *)v108 matterCASEAuthenticatedTagID];
          v113 = [v8 matterCASEAuthenticatedTagID];
          v114 = [v113 integerValue];
          v115 = [v8 matterCASEAuthenticatedTagID];
          *buf = 138544642;
          v182 = v110;
          v183 = 2048;
          v184 = v111;
          v185 = 2112;
          v186 = v112;
          v187 = 2048;
          v188 = v114;
          v189 = 2112;
          v190 = v115;
          v191 = 2112;
          v192 = v108;
          _os_log_impl(&dword_229538000, v109, OS_LOG_TYPE_INFO, "%{public}@Updating CATID from 0x%lX (%@) to 0x%lX (%@) for user %@", buf, 0x3Eu);

          v107 = v172;
        }

        objc_autoreleasePoolPop(v107);
        v116 = [v8 matterCASEAuthenticatedTagID];
        [(HMDUser *)v108 setMatterCASEAuthenticatedTagID:v116];

        [(HMDUser *)v108 handleUpdatedCATForUser];
      }
    }

    else
    {
    }
  }

  v117 = [v8 setProperties];
  v118 = [v117 containsObject:@"presenceAuthorizationStatus"];

  if (v118)
  {
    v119 = MEMORY[0x277CD1F00];
    v120 = [v8 presenceAuthorizationStatus];
    v121 = [v119 authWithNumber:v120];

    if (isPresenceAuthorizationValid())
    {
      v122 = [(HMDUser *)v17 presenceAuthStatus];
      v123 = HMFEqualObjects();

      if ((v123 & 1) == 0)
      {
        v124 = objc_autoreleasePoolPush();
        v125 = v17;
        v126 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v126, OS_LOG_TYPE_INFO))
        {
          v127 = HMFGetLogIdentifier();
          v128 = [(HMDUser *)v125 presenceAuthStatus];
          *buf = 138544130;
          v182 = v127;
          v183 = 2112;
          v184 = v125;
          v185 = 2112;
          v186 = v128;
          v187 = 2112;
          v188 = v121;
          _os_log_impl(&dword_229538000, v126, OS_LOG_TYPE_INFO, "%{public}@Updating the presence auth status for user %@ from %@ to %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v124);
        [(HMDUser *)v125 setPresenceAuthStatus:v121];
      }
    }

    else
    {
      v129 = objc_autoreleasePoolPush();
      v130 = v17;
      v131 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v131, OS_LOG_TYPE_INFO))
      {
        v132 = HMFGetLogIdentifier();
        v133 = [v8 presenceAuthorizationStatus];
        *buf = 138543618;
        v182 = v132;
        v183 = 2112;
        v184 = v133;
        _os_log_impl(&dword_229538000, v131, OS_LOG_TYPE_INFO, "%{public}@Ignoring the value for presence auth in user model: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v129);
    }
  }

  [(HMDUser *)v17 updateRestrictedGuestSettingsFromWorkingStoreIfNeeded];
  v134 = [v8 setProperties];
  if ([v134 containsObject:@"matCredIPKExternalRepresentation"])
  {
    v135 = [(HMDUser *)v17 acwgIssuerPublicKeyExternalRepresentation];
    v136 = [v8 matCredIPKExternalRepresentation];
    v137 = HMFEqualObjects();

    if (v137)
    {
      goto LABEL_81;
    }

    v138 = objc_autoreleasePoolPush();
    v139 = v17;
    v140 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v140, OS_LOG_TYPE_INFO))
    {
      v141 = HMFGetLogIdentifier();
      v142 = [v8 matCredIPKExternalRepresentation];
      *buf = 138543618;
      v182 = v141;
      v183 = 2112;
      v184 = v142;
      _os_log_impl(&dword_229538000, v140, OS_LOG_TYPE_INFO, "%{public}@Updating acwgIssuerPublicKeyExternalRepresentation to: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v138);
    v134 = [v8 matCredIPKExternalRepresentation];
    [(HMDUser *)v139 setAcwgIssuerPublicKeyExternalRepresentation:v134];
  }

LABEL_81:
  v143 = [v177 transactionResult];
  v144 = [v8 pairingIdentity];

  if (v144)
  {
    v145 = MEMORY[0x277CFEC20];
    v146 = [v8 pairingIdentity];
    v147 = [v145 hmd_pairingIdentityWithDictionary:v146];

    v148 = [(HMDUser *)v17 pairingIdentity];
    v149 = HMFEqualObjects();

    if ((v149 & 1) == 0)
    {
      [(HMDUser *)v17 setPairingIdentity:v147];
    }
  }

  [(HMDUser *)v17 _transactionAccessorySettingsUpdated:v8];
  [(HMDUser *)v17 _transactionUserSettingsUpdated:v8];
  [(HMDUser *)v17 _transactionPhotosPersonManagerSettingsUpdated:v8];
  v150 = [v8 ownerCharacteristicAuthorizationData];
  if ([v8 propertyWasSet:@"ownerCharacteristicAuthorizationData"])
  {
    v151 = [(HMDUser *)v17 ownerCharacteristicAuthorizationData];
    v152 = HMFEqualObjects();

    if ((v152 & 1) == 0)
    {
      v153 = objc_autoreleasePoolPush();
      v154 = v17;
      v155 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v155, OS_LOG_TYPE_INFO))
      {
        v156 = HMFGetLogIdentifier();
        v157 = [(HMDUser *)v154 ownerCharacteristicAuthorizationData];
        *buf = 138543874;
        v182 = v156;
        v183 = 2112;
        v184 = v157;
        v185 = 2112;
        v186 = v150;
        _os_log_impl(&dword_229538000, v155, OS_LOG_TYPE_INFO, "%{public}@Updating owner user's characteristic authorization data %@ -> %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v153);
      [(HMDUser *)v154 setOwnerCharacteristicAuthorizationData:v150];
    }
  }

  [(HMDUser *)v17 _transactionUserProfileMetaDataUpdated:v8];
  v158 = [v8 setProperties];
  v159 = [v158 containsObject:@"adaptiveTemperatureAutomationsDisclosureStatus"];

  if (v159)
  {
    v160 = [v8 adaptiveTemperatureAutomationsDisclosureStatus];
    v161 = [v160 intValue];

    v162 = [(HMDUser *)v17 updateAdaptiveTemperatureAutomationsDisclosureStatus:v161];
    v163 = objc_autoreleasePoolPush();
    v164 = v17;
    v165 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v165, OS_LOG_TYPE_INFO))
    {
      v166 = HMFGetLogIdentifier();
      v167 = @"Did not";
      *buf = 138543874;
      v182 = v166;
      if (v162)
      {
        v167 = @"Did";
      }

      v183 = 2112;
      v184 = v167;
      v185 = 2048;
      v186 = v161;
      _os_log_impl(&dword_229538000, v165, OS_LOG_TYPE_INFO, "%{public}@%@ merge disclosure status %ld", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v163);
  }

  [v143 markChanged];
  v168 = [v173 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HMDUser__transactionUserUpdated_newValues_message___block_invoke;
  block[3] = &unk_27868A750;
  v169 = v177;
  v179 = v169;
  v180 = 0;
  dispatch_group_notify(group, v168, block);

  v170 = *MEMORY[0x277D85DE8];
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
  v54 = *MEMORY[0x277D85DE8];
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
  }

  else
  {
    v17 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v15 = v18;

    if (v15)
    {
      v19 = [(HMDUser *)self assistantAccessControl];

      if (v19)
      {
        v20 = [(HMDUser *)self assistantAccessControl];
        [v20 transactionObjectUpdated:v8 newValues:v17 message:v10];
      }

      else
      {
        v31 = [[HMDAssistantAccessControl alloc] initWithUser:self model:v15];
        if (v31)
        {
          v32 = [(HMDUser *)self accessorySettingsDataController];
          [(HMDAssistantAccessControl *)v31 configureWithSettingsController:v32];

          [(HMDUser *)self setAssistantAccessControl:v31];
        }
      }
    }

    else
    {
      v21 = [(HMDUser *)self home];
      v22 = v17;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;

      if (v24)
      {
        v49 = v21;
        v25 = [v10 messagePayload];
        v26 = [v25 hmf_flowForKey:*MEMORY[0x277D0F1C8]];

        if (v26)
        {
          context = objc_autoreleasePoolPush();
          v27 = self;
          v28 = HMFGetOSLogHandle();
          v48 = v26;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = HMFGetLogIdentifier();
            v30 = [v26 UUID];
            *buf = 138543618;
            v51 = v29;
            v52 = 2112;
            v53 = v30;
            _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling updated user access code model", buf, 0x16u);
          }
        }

        else
        {
          v33 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
          context = objc_autoreleasePoolPush();
          v34 = self;
          v28 = HMFGetOSLogHandle();
          v48 = v33;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v45 = HMFGetLogIdentifier();
            v35 = [v33 UUID];
            *buf = 138543618;
            v51 = v45;
            v52 = 2112;
            v53 = v35;
            _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Pin Codes}] Handling updated user access code model", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(context);
        v21 = v49;
        v36 = [v49 accessCodeManager];
        v37 = [v36 dataManager];

        if (v37)
        {
          v38 = self;
          v39 = v48;
          [v37 handleUpdatedUserAccessCodeModel:v24 forUser:v38 message:v10 flow:v48];
        }

        else
        {
          v40 = objc_autoreleasePoolPush();
          v41 = self;
          v42 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v43 = contexta = v40;
            *buf = 138543362;
            v51 = v43;
            _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@Not handling updated HMDUserAccessCodeModel because self.home.accessCodeManager.dataManager is nil.", buf, 0xCu);

            v40 = contexta;
          }

          objc_autoreleasePoolPop(v40);
          v44 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
          [v10 respondWithError:v44];

          v39 = v48;
          v21 = v49;
        }
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)sharedSettingsAsDictionary
{
  v16[8] = *MEMORY[0x277D85DE8];
  v15[0] = @"root.music.allowExplicitContent";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser allowExplicitContent](self, "allowExplicitContent")}];
  v16[0] = v3;
  v15[1] = @"root.music.allowiTunesAccount";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser allowiTunesAccount](self, "allowiTunesAccount")}];
  v16[1] = v4;
  v15[2] = @"root.music.crossfadeEnabled";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser crossfadeEnabled](self, "crossfadeEnabled")}];
  v16[2] = v5;
  v15[3] = @"root.music.crossfadeDuration";
  v6 = MEMORY[0x277CCABB0];
  [(HMDUser *)self crossfadeDuration];
  v7 = [v6 numberWithFloat:?];
  v16[3] = v7;
  v15[4] = @"root.music.dolbyAtmos";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser dolbyAtmosEnabled](self, "dolbyAtmosEnabled")}];
  v16[4] = v8;
  v15[5] = @"root.music.lossless";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser losslessMusicEnabled](self, "losslessMusicEnabled")}];
  v16[5] = v9;
  v15[6] = @"root.music.playbackInfluencesForYou";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser playbackInfluencesEnabled](self, "playbackInfluencesEnabled")}];
  v16[6] = v10;
  v15[7] = @"root.siri.identifyVoice";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser siriIdentifyVoiceEnabled](self, "siriIdentifyVoiceEnabled")}];
  v16[7] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:8];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)ownerPrivateSettingsAsDictionary
{
  v26[19] = *MEMORY[0x277D85DE8];
  v25[0] = @"root.home.addSceneButtonPresentedCount";
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser ownerAddSceneButtonPresentedCount](self, "ownerAddSceneButtonPresentedCount")}];
  v26[0] = v24;
  v25[1] = @"root.home.completedSwitchingHomesOnboardingUI";
  v23 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser ownerCompletedSwitchingHomesOnboardingUI](self, "ownerCompletedSwitchingHomesOnboardingUI")}];
  v26[1] = v23;
  v25[2] = @"root.home.dismissed2024EnergyOnboarding";
  v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser ownerDismissed2024EnergyOnboarding](self, "ownerDismissed2024EnergyOnboarding")}];
  v26[2] = v22;
  v25[3] = @"root.home.dismissedAccessCodeOnboarding";
  v21 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser ownerDismissedAccessCodeOnboarding](self, "ownerDismissedAccessCodeOnboarding")}];
  v26[3] = v21;
  v25[4] = @"root.home.dismissedAccessoryFirmwareUpdateOnboarding";
  v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser ownerDismissedAccessoryFirmwareUpdateOnboarding](self, "ownerDismissedAccessoryFirmwareUpdateOnboarding")}];
  v26[4] = v20;
  v25[5] = @"root.home.dismissedAnnounceOnboarding";
  v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser ownerDismissedAnnounceOnboarding](self, "ownerDismissedAnnounceOnboarding")}];
  v26[5] = v19;
  v25[6] = @"root.home.dismissedCameraRecordingOnboarding";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser ownerDismissedCameraRecordingOnboarding](self, "ownerDismissedCameraRecordingOnboarding")}];
  v26[6] = v18;
  v25[7] = @"root.home.dismissedCameraRecordingSetupBanner";
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser ownerDismissedCameraRecordingSetupBanner](self, "ownerDismissedCameraRecordingSetupBanner")}];
  v26[7] = v17;
  v25[8] = @"root.home.dismissedCameraUpgradeOfferBanner";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser ownerDismissedCameraUpgradeOfferBanner](self, "ownerDismissedCameraUpgradeOfferBanner")}];
  v26[8] = v16;
  v25[9] = @"root.home.dismissedHomeTheaterOnboarding";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser ownerDismissedHomeTheaterOnboarding](self, "ownerDismissedHomeTheaterOnboarding")}];
  v26[9] = v15;
  v25[10] = @"root.home.dismissedIdentifyVoiceOnboarding";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser ownerDismissedIdentifyVoiceOnboarding](self, "ownerDismissedIdentifyVoiceOnboarding")}];
  v26[10] = v3;
  v25[11] = @"root.home.dismissedIdentifyVoiceSetupBanner";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser ownerDismissedIdentifyVoiceSetupBanner](self, "ownerDismissedIdentifyVoiceSetupBanner")}];
  v26[11] = v4;
  v25[12] = @"root.home.dismissedNaturalLightingOnboarding";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser ownerDismissedNaturalLightingOnboarding](self, "ownerDismissedNaturalLightingOnboarding")}];
  v26[12] = v5;
  v25[13] = @"root.home.dismissedTVViewingProfileOnboarding";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser ownerDismissedTVViewingProfileOnboarding](self, "ownerDismissedTVViewingProfileOnboarding")}];
  v26[13] = v6;
  v25[14] = @"root.home.dismissedTVViewingProfileSetupBanner";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser ownerDismissedTVViewingProfileSetupBanner](self, "ownerDismissedTVViewingProfileSetupBanner")}];
  v26[14] = v7;
  v25[15] = @"root.home.dismissedUserSplitMediaAccountWarning";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser ownerDismissedUserSplitMediaAccountWarning](self, "ownerDismissedUserSplitMediaAccountWarning")}];
  v26[15] = v8;
  v25[16] = @"root.home.dismissedWalletKeyExpressModeOnboarding";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser ownerDismissedWalletKeyExpressModeOnboarding](self, "ownerDismissedWalletKeyExpressModeOnboarding")}];
  v26[16] = v9;
  v25[17] = @"root.home.dismissedWelcomeUI";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser ownerDismissedWelcomeUI](self, "ownerDismissedWelcomeUI")}];
  v26[17] = v10;
  v25[18] = @"root.home.hasUserSeenRMVNewLanguageNotification";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser ownerHasUserSeenRMVNewLanguageNotification](self, "ownerHasUserSeenRMVNewLanguageNotification")}];
  v26[18] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:19];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)_encodeWithCoder:(id)a3
{
  v108 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUser *)self home];
  v6 = [(HMDUser *)self uuid];
  v7 = [v6 UUIDString];
  [v4 encodeObject:v7 forKey:@"userUUID"];

  [v4 encodeConditionalObject:v5 forKey:@"home"];
  v8 = [(HMDUser *)self userDataController];
  [v8 encodeWithCoder:v4];

  if (![v4 hmd_isForXPCTransport])
  {
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

    if (([v4 hmd_isForLocalStore] & 1) == 0 && (objc_msgSend(v4, "hmd_isForRemoteUserAdministrator") & 1) == 0)
    {
      v34 = [v4 hmd_user];
      if ([(HMDUser *)self isEqual:v34])
      {
      }

      else
      {
        v55 = [v4 hmd_isForRemoteTransportOnSameAccount];

        if (!v55)
        {
          goto LABEL_59;
        }
      }
    }

    v56 = [(HMDUser *)self accessCode];
    [v4 encodeObject:v56 forKey:@"HMDUserAccessCodeCodingKey"];

    v57 = [(HMDUser *)self accessCodeChangedByUserUUID];
    [v4 encodeObject:v57 forKey:@"HMDUserAccessCodeChangedByUserUUIDCodingKey"];

    goto LABEL_59;
  }

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
        v107 = v13;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Display name was nil for non-current user", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      v14 = [[HMDAssertionLogEvent alloc] initWithReason:@"Display name was nil for non-current user"];
      v15 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v15 submitLogEvent:v14];

      v9 = &stru_283CF9D50;
    }
  }

  [v4 encodeObject:v9 forKey:@"userDisplayName"];
  [v4 encodeBool:-[HMDUser isCurrentUser](self forKey:{"isCurrentUser"), @"HM.isCurrentUser"}];
  if ([v4 hmd_isForXPCTransportEntitledForSPIAccess])
  {
    v35 = [(HMDUser *)self pairingIdentity];
    if (v35)
    {
      v36 = objc_alloc(MEMORY[0x277D0F8A8]);
      v37 = [v35 identifier];
      v38 = [v35 publicKey];
      v39 = [v36 initWithIdentifier:v37 publicKey:v38 privateKey:0];

      [v4 encodeObject:v39 forKey:*MEMORY[0x277CD13E0]];
    }

    v40 = [(HMDUser *)self accessorySettingsDataController];
    v41 = [v40 mediaContentProfileAccessControlAccessoriesToEncode];

    v42 = __accessoriesFromAccessoryUUIDs(v41, v5);
    v43 = v42;
    if (v42)
    {
      v44 = [v42 copy];
      [v4 encodeObject:v44 forKey:*MEMORY[0x277CD13B0]];
    }

    v45 = [(HMDUser *)self accessorySettingsDataController];
    v46 = [v45 userListeningHistoryUpdateControlModelAccessoriesToEncode];

    if (v46)
    {
      [v4 encodeObject:v46 forKey:*MEMORY[0x277CD1398]];
    }

    v47 = [(HMDUser *)self userID];
    [v4 encodeObject:v47 forKey:@"userID"];

    [v4 encodeBool:-[HMDUser isAdministrator](self forKey:{"isAdministrator"), @"isAdminUser"}];
    [v4 encodeBool:-[HMDUser isOwner](self forKey:{"isOwner"), @"HM.isOwnerUser"}];
    [v4 encodeBool:-[HMDUser isRemoteAccessAllowed](self forKey:{"isRemoteAccessAllowed"), @"HM.isUserAllowedRemoteAccess"}];
    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser camerasAccessLevel](self, "camerasAccessLevel")}];
    [v4 encodeObject:v48 forKey:*MEMORY[0x277CD1308]];

    v49 = [(HMDUser *)self isAnnounceAccessAllowed];
    [v4 encodeBool:v49 forKey:*MEMORY[0x277CD12C0]];
    v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser audioAnalysisUserDropInAccessLevel](self, "audioAnalysisUserDropInAccessLevel")}];
    [v4 encodeObject:v50 forKey:*MEMORY[0x277CCFC48]];

    if ([(HMDUser *)self isCurrentUser])
    {
      v51 = [(HMDUser *)self isOwner];
      v52 = MEMORY[0x277CD1380];
      if (!v51)
      {
        v54 = [v5 uuid];
        v58 = [v5 homeManager];
        v59 = [v58 sharedUserPrivateSettingsManager];

        v60 = [v59 settingsForHome:v54 ofType:1];
        [v4 encodeObject:v60 forKey:*v52];
        [v59 settingsForHome:v54 ofType:2];
        v62 = v61 = v35;
        [v4 encodeObject:v62 forKey:*MEMORY[0x277CD1388]];

        v35 = v61;
        goto LABEL_37;
      }

      v53 = [(HMDUser *)self ownerPrivateSettingsAsDictionary];
      [v4 encodeObject:v53 forKey:*v52];
    }

    v54 = [(HMDUser *)self sharedSettingsAsDictionary];
    [v4 encodeObject:v54 forKey:*MEMORY[0x277CD1388]];
LABEL_37:

    v63 = [(HMDUser *)self isRestrictedGuest];
    [v4 encodeBool:v63 forKey:*MEMORY[0x277CD1390]];
    v64 = [(HMDUser *)self restrictedGuestAccessSettings];

    if (v64)
    {
      v65 = [(HMDUser *)self restrictedGuestAccessSettings];
      [v4 encodeObject:v65 forKey:*MEMORY[0x277CD0D20]];
    }

    v66 = [v5 isAccessToHomeAllowed];
    [v4 encodeBool:v66 forKey:*MEMORY[0x277CD0018]];
    if ((v66 & 1) == 0)
    {
      v67 = [v5 accessNotAllowedReasonCode];
      [v4 encodeInteger:v67 forKey:*MEMORY[0x277CCFD90]];
    }

    v68 = [v5 overriddenHomeAccessControl];
    v69 = v68;
    if (v68)
    {
      v70 = [v68 unsignedIntegerValue];
      [v4 encodeInteger:v70 forKey:*MEMORY[0x277CCFD88]];
    }

    v71 = [(HMDUser *)self presenceAuthStatus];
    [v71 addToCoder:v4];

    if ([(HMDUser *)self isCurrentUser])
    {
      v72 = [v5 presenceComputeStatus];
      [v72 addToCoder:v4];

      v73 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser needsiTunesMultiUserRepair](self, "needsiTunesMultiUserRepair")}];
      [v4 encodeObject:v73 forKey:*MEMORY[0x277CD13C8]];
    }

    if ([(HMDUser *)self isOwner])
    {
      v74 = [(HMDUser *)self assistantAccessControl];
      [v4 encodeObject:v74 forKey:*MEMORY[0x277CD12F0]];
    }

    else
    {
      v75 = [(HMDUser *)self accessorySettingsDataController];
      v74 = [v75 assistantAccessControlAccessoriesToEncode];

      if (v74)
      {
        v76 = __accessoriesFromAccessoryUUIDs(v74, v5);
        v77 = [v76 count] != 0;
        [v76 na_map:&__block_literal_global_726];
        v78 = v104 = v69;
        [v76 na_map:&__block_literal_global_729];
        v105 = v9;
        v79 = v103 = v5;
        v80 = v35;
        v81 = [HMDAssistantAccessControl alloc];
        v82 = [(HMDUser *)self accessorySettingsDataController];
        v83 = [v82 assistantAccessControlActivityNotificationsEnabledForPersonalRequests];
        v84 = v81;
        v35 = v80;
        v85 = [(HMDAssistantAccessControl *)v84 initWithUser:self appleAccessories:v78 hapAccessoryIdentifiers:v79 enabled:v77 activityNotificationsEnabledForPersonalRequests:v83];

        v86 = [(HMDUser *)self userDataController];
        -[HMDAssistantAccessControl setOptions:](v85, "setOptions:", [v86 assistantAccessControlRequiresAuthenticationForSecureRequests] ^ 1);

        v87 = [(HMDUser *)self accessorySettingsDataController];
        [(HMDAssistantAccessControl *)v85 configureWithSettingsController:v87];

        [v4 encodeObject:v85 forKey:*MEMORY[0x277CD12F0]];
        v5 = v103;
        v9 = v105;

        v69 = v104;
      }
    }

    if ([(HMDUser *)self isCurrentUser])
    {
      v88 = [objc_alloc(MEMORY[0x277CD1810]) initWithDeviceNotificationMode:{-[HMDUser announceNotificationModeForCurrentDevice](self, "announceNotificationModeForCurrentDevice")}];
      [v4 encodeObject:v88 forKey:*MEMORY[0x277CD12C8]];
    }

    v89 = [(HMDUser *)self photosPersonDataManager];
    v90 = [v89 settings];
    [v4 encodeObject:v90 forKey:*MEMORY[0x277CD13F0]];

    v91 = [(HMDUser *)self photosPersonDataManager];
    v92 = [v91 zoneUUID];
    [v4 encodeObject:v92 forKey:*MEMORY[0x277CD1400]];

    if ([v4 hmd_isForXPCTransport] && -[HMDUser isCurrentUser](self, "isCurrentUser"))
    {
      v93 = [(HMDUser *)self adaptiveTemperatureAutomationsDisclosureStatus]== 1;
      [v4 encodeBool:v93 forKey:*MEMORY[0x277CD1438]];
    }
  }

  v94 = [(HMDUser *)self account];
  v95 = [v94 senderCorrelationIdentifier];

  if (v95 && ([v4 hmd_entitlements] & 0x1000) != 0)
  {
    [v4 encodeObject:v95 forKey:*MEMORY[0x277CD1450]];
  }

LABEL_59:
  v96 = [(HMDUser *)self matterCASEAuthenticatedTagID];
  [v4 encodeObject:v96 forKey:@"HMDUserMatterCATIDCodingKey"];

  if ([v4 hmd_isForLocalStore] && -[HMDUser isCurrentUser](self, "isCurrentUser"))
  {
    v97 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser needsiTunesMultiUserRepair](self, "needsiTunesMultiUserRepair")}];
    [v4 encodeObject:v97 forKey:*MEMORY[0x277CD13C8]];
  }

  v98 = [(HMDUser *)self iCloudAltDSID];
  [v4 encodeObject:v98 forKey:*MEMORY[0x277CD14E8]];

  v99 = [(HMDUser *)self firstName];
  [v4 encodeObject:v99 forKey:*MEMORY[0x277CD1378]];

  v100 = [(HMDUser *)self lastName];
  [v4 encodeObject:v100 forKey:*MEMORY[0x277CD1368]];

  if (-[HMDUser isCurrentUser](self, "isCurrentUser") && (([v4 hmd_isForLocalStore] & 1) != 0 || objc_msgSend(v4, "hmd_isForRemoteTransportOnSameAccount") && isiOSDevice()))
  {
    v101 = [objc_alloc(MEMORY[0x277CD1810]) initWithDeviceNotificationMode:{-[HMDUser announceNotificationModeForCurrentDevice](self, "announceNotificationModeForCurrentDevice")}];
    [v4 encodeObject:v101 forKey:*MEMORY[0x277CD12C8]];
  }

  v102 = *MEMORY[0x277D85DE8];
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
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 != objc_opt_class() || ![v4 decodeBoolForKey:@"userIsRemoteGateway"])
  {
    if ([v4 containsValueForKey:@"HM.handle"])
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.handle"];
    }

    else
    {
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userID"];
      if (v8)
      {
        v7 = [HMDAccountHandle accountHandleForDestination:v8];
      }

      else
      {
        v7 = 0;
      }
    }

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.userAdministratorType"];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 integerValue];
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
    }

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"home"];
    v20 = [(HMDUser *)self initWithAccountHandle:v7 home:v19 pairingIdentity:v15 privilege:2];
    if (!v20)
    {
LABEL_50:
      self = v20;

      v6 = self;
      goto LABEL_51;
    }

    v66 = v7;
    v64 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userUUID"];
    v21 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v64];
    uuid = v20->_uuid;
    v20->_uuid = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.userAdministratorType"];
    v65 = v10;
    if (v23)
    {
      v20->_privilege = [v23 integerValue];
    }

    else
    {
      v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:{@"userPrivilege", 0}];
      v25 = [v24 integerValue];
      v26 = 3;
      if (v25 != 1)
      {
        v26 = v25;
      }

      v20->_privilege = v26;
    }

    v20->_privilege = v11;
    if ([v4 containsValueForKey:@"userDisplayName"])
    {
      v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userDisplayName"];
      displayName = v20->_displayName;
      v20->_displayName = v27;
    }

    v29 = [(HMDUser *)v20 userID];
    if ([v29 isEqual:v20->_displayName])
    {
    }

    else
    {
      v30 = v20->_displayName;

      if (v30)
      {
LABEL_31:
        v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.accountId"];
        accountIdentifier = v20->_accountIdentifier;
        v20->_accountIdentifier = v33;

        if ([v4 containsValueForKey:@"HM.isUserAllowedRemoteAccess"])
        {
          v35 = [v4 decodeBoolForKey:@"HM.isUserAllowedRemoteAccess"];
        }

        else
        {
          v35 = 1;
        }

        v20->_remoteAccessAllowed = v35;
        v36 = [MEMORY[0x277CD1F00] authWithCoder:v4];
        presenceAuthStatus = v20->_presenceAuthStatus;
        v20->_presenceAuthStatus = v36;

        v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD1308]];
        v39 = v38;
        if (v38)
        {
          v20->_camerasAccessLevel = [v38 integerValue];
        }

        v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD12F0]];
        assistantAccessControl = v20->_assistantAccessControl;
        v20->_assistantAccessControl = v40;

        v42 = *MEMORY[0x277CD12C0];
        v43 = v4;
        v44 = [v43 decodeBoolForKey:v42];
        v45 = [MEMORY[0x277CCABB0] numberWithBool:v44];
        v46 = [v43 decodeObjectOfClass:objc_opt_class() forKey:@"HMDUserAnnounceAccessLevelCodingKey"];

        v47 = [(HMDUser *)v20 announceUserAccessLevelFromAnnounceAccessAllowed:v45 announceAccessLevel:v46];
        v20->_announceAccessLevel = v47;
        v48 = [v43 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCFC48]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v49 = v48;
        }

        else
        {
          v49 = 0;
        }

        v50 = v49;

        v51 = [v50 integerValue];
        v20->_audioAnalysisUserDropInAccessLevel = v51;
        v52 = [v43 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD0D20]];
        restrictedGuestAccessSettings = v20->_restrictedGuestAccessSettings;
        v20->_restrictedGuestAccessSettings = v52;

        if ([(HMDUser *)v20 isCurrentUser])
        {
          if ([v43 hmd_isForLocalStore])
          {
            v54 = [v43 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD12C8]];
            v20->_announceNotificationModeForCurrentDevice = [v54 deviceNotificationMode];
          }

          else
          {
            isWatch();
          }
        }

        v55 = [v43 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD13C8]];
        v20->_needsiTunesMultiUserRepair = [v55 BOOLValue];

        if ([v43 containsValueForKey:@"HMDUserAccessCodeCodingKey"])
        {
          v56 = [v43 decodeObjectOfClass:objc_opt_class() forKey:@"HMDUserAccessCodeCodingKey"];
          accessCode = v20->_accessCode;
          v20->_accessCode = v56;
        }

        v7 = v66;
        if ([v43 containsValueForKey:@"HMDUserAccessCodeChangedByUserUUIDCodingKey"])
        {
          v58 = [v43 decodeObjectOfClass:objc_opt_class() forKey:@"HMDUserAccessCodeChangedByUserUUIDCodingKey"];
          accessCodeChangedByUserUUID = v20->_accessCodeChangedByUserUUID;
          v20->_accessCodeChangedByUserUUID = v58;
        }

        if ([v43 containsValueForKey:@"HMDUserMatterCATIDCodingKey"])
        {
          v60 = [v43 decodeObjectOfClass:objc_opt_class() forKey:@"HMDUserMatterCATIDCodingKey"];
          matterCASEAuthenticatedTagID = v20->_matterCASEAuthenticatedTagID;
          v20->_matterCASEAuthenticatedTagID = v60;
        }

        v10 = v65;
        goto LABEL_50;
      }
    }

    v31 = __displayNameForUser(v20);
    v32 = v20->_displayName;
    v20->_displayName = v31;

    goto LABEL_31;
  }

  v6 = [[HMDResidentUser alloc] initWithCoder:v4];
LABEL_51:

  return v6;
}

+ (id)fetchSharedUserDataRootForHomeUUID:(id)a3 moc:(id)a4 coreData:(id)a5 ttrManager:(id)a6
{
  v40[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[MKFCKSharedUserDataRoot fetchRequest];
  v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"homeModelID", v10];
  [v14 setPredicate:v15];

  v16 = [v12 cloudPrivateStore];
  v40[0] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
  [v14 setAffectedStores:v17];

  [v14 setFetchLimit:1];
  v35 = 0;
  v18 = [v11 executeFetchRequest:v14 error:&v35];
  v19 = v35;
  v20 = [v18 firstObject];

  if (v20)
  {
    v21 = [v20 modelID];

    if (v21)
    {
      v22 = v20;
      goto LABEL_11;
    }

    v34 = v13;
    v27 = objc_autoreleasePoolPush();
    v28 = a1;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v30;
      v38 = 2112;
      v39 = v20;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to get the model id from MKFCKSharedUserDataRoot: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v13 = v34;
    [v34 requestRadarWithDisplayReason:@"fetched unsupported homekit data" radarTitle:@"Fetched MKFCKSharedUserDataRoot with no model id - revised"];
  }

  else
  {
    v33 = v13;
    v23 = objc_autoreleasePoolPush();
    v24 = a1;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v26;
      v38 = 2112;
      v39 = v19;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch shared user root, error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v13 = v33;
    [v33 requestRadarWithDisplayReason:@"detected issue related to HomeKit Shared User functionality" radarTitle:@"MKFCKSharedUserDataRoot fetch failed during user data lookup" componentName:@"HomeKit" componentVersion:@"Users+Invitations" componentID:938670];
  }

  v22 = 0;
LABEL_11:

  v31 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)fetchSharedUserDataRootForHomeUUID:(id)a3 moc:(id)a4 coreData:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[HMDTTRManager sharedManager];
  v11 = [HMDUser fetchSharedUserDataRootForHomeUUID:v9 moc:v8 coreData:v7 ttrManager:v10];

  return v11;
}

+ (id)appendRootPath:(id)a3 withSettingPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v5, v6];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v6, v9];
  }
  v7 = ;

  return v7;
}

+ (id)getSettingsUsingPreOrderTraversal:(id)a3 rootUUID:(id)a4 keyPath:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CBEB38] dictionary];
  v12 = v11;
  if (v9)
  {
    v37 = 0;
    v13 = [v8 fetchModelsWithParentModelID:v9 error:&v37];
    v14 = v37;
    if (v13)
    {
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __62__HMDUser_getSettingsUsingPreOrderTraversal_rootUUID_keyPath___block_invoke;
      v32[3] = &unk_278684108;
      v36 = a1;
      v15 = v10;
      v33 = v15;
      v34 = v8;
      v16 = v12;
      v35 = v16;
      [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:v32];
      v25 = MEMORY[0x277D85DD0];
      v26 = 3221225472;
      v27 = __62__HMDUser_getSettingsUsingPreOrderTraversal_rootUUID_keyPath___block_invoke_2;
      v28 = &unk_278684130;
      v31 = a1;
      v29 = v15;
      v17 = v16;
      v30 = v17;
      [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:&v25];
      v18 = [v17 copy];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = a1;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543874;
        v39 = v22;
        v40 = 2112;
        v41 = v9;
        v42 = 2112;
        v43 = v14;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@fetch models with root UUID : %@ failed with error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v19);
      v18 = [v12 copy];
    }
  }

  else
  {
    v18 = [v11 copy];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v18;
}

void __62__HMDUser_getSettingsUsingPreOrderTraversal_rootUUID_keyPath___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v14;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 32);
    v8 = [v4 name];
    v9 = [v6 appendRootPath:v7 withSettingPath:v8];

    v10 = *(a1 + 56);
    v11 = *(a1 + 40);
    v12 = [v5 hmbModelID];
    v13 = [v10 getSettingsUsingPreOrderTraversal:v11 rootUUID:v12 keyPath:v9];

    if ([v13 count])
    {
      [*(a1 + 48) addEntriesFromDictionary:v13];
    }
  }
}

void __62__HMDUser_getSettingsUsingPreOrderTraversal_rootUUID_keyPath___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
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
    v6 = *(a1 + 48);
    v7 = *(a1 + 32);
    v8 = [v5 name];
    v9 = [v6 appendRootPath:v7 withSettingPath:v8];

    v10 = [HMDSetting settingValueWithModel:v5];
    v11 = v10;
    if (v9)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      [*(a1 + 40) setObject:v10 forKeyedSubscript:v9];
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 48);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v18 = 138543874;
        v19 = v16;
        v20 = 2112;
        v21 = v9;
        v22 = 2112;
        v23 = v11;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@[%@] : [%@]", &v18, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (id)localSharedZoneForSharedUserUUID:(id)a3 database:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() sharedZoneNameForUserUUID:v6];
  v9 = [a1 _openZoneWithName:v8 inDatabase:v7];
  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = a1;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v17 = 138543874;
      v18 = v13;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Successfully created local zone [%@] for user : %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = v9;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)localPrivateZoneForSharedUserUUID:(id)a3 database:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() privateZoneNameForUserUUID:v7];

  v9 = [a1 _openZoneWithName:v8 inDatabase:v6];

  return v9;
}

+ (id)_openZoneWithName:(id)a3 inDatabase:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = a1;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v11;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Opening zone with name: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = objc_alloc_init(MEMORY[0x277D170E8]);
  v24 = 0;
  v13 = [v7 existingPrivateZonesWithName:v6 configuration:v12 delegate:0 error:&v24];
  v14 = v24;
  if (v13)
  {
    v15 = [v13 localZone];
    [v15 startUp];
    v16 = objc_autoreleasePoolPush();
    v17 = v9;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v19;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Successfully opened local zone [%@]", buf, 0x16u);
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v20 = v9;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543874;
      v26 = v21;
      v27 = 2112;
      v28 = v6;
      v29 = 2112;
      v30 = v14;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to open zone with name %@: %@", buf, 0x20u);
    }

    v15 = 0;
  }

  objc_autoreleasePoolPop(v16);
  v22 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (void)_saveSharedUserSettingsToCoreData:(id)a3 managedObjectContext:(id)a4 rootShareObject:(id)a5
{
  v8 = a5;
  v9 = a3;
  [a4 hmd_assertIsExecuting];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__HMDUser__saveSharedUserSettingsToCoreData_managedObjectContext_rootShareObject___block_invoke;
  v11[3] = &unk_2786840E0;
  v12 = v8;
  v13 = a1;
  v10 = v8;
  [v9 enumerateKeysAndObjectsUsingBlock:v11];
}

void __82__HMDUser__saveSharedUserSettingsToCoreData_managedObjectContext_rootShareObject___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) entity];
  v8 = [v7 hmd_attributeForSettingsPath:v5];

  if (v8)
  {
    v9 = [v6 numberValue];
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 40);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v13 = v25 = v6;
      v14 = [*(a1 + 32) entity];
      v15 = [v14 name];
      [v8 name];
      v16 = v24 = v10;
      *buf = 138544386;
      v27 = v13;
      v28 = 2112;
      v29 = v5;
      v30 = 2112;
      v31 = v15;
      v32 = 2112;
      v33 = v16;
      v34 = 2112;
      v35 = v9;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Updating shared user setting '%@' (%@.%@) = %@", buf, 0x34u);

      v10 = v24;
      v6 = v25;
    }

    objc_autoreleasePoolPop(v10);
    v17 = *(a1 + 32);
    v18 = [v8 name];
    [v17 setValue:v9 forKey:v18];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = *(a1 + 40);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v22;
      v28 = 2112;
      v29 = v5;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Invalid settings key path '%@' for shared user settings update", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
  }

  v23 = *MEMORY[0x277D85DE8];
}

+ (void)__findOrCreateCKSharedUserAccessorySettingsForAccessory:(id)a3 usingManagedObjectContext:(id)a4 rootShareObject:(id)a5 listeningHistoryEnabled:(id)a6 mediaContentProfileEnabled:(id)a7 personalRequestsEnabled:(id)a8
{
  v59 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v44 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  [v15 hmd_assertIsExecuting];
  v19 = objc_autoreleasePoolPush();
  v20 = a1;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138544642;
    v48 = v22;
    v49 = 2112;
    v50 = v14;
    v51 = 2112;
    v52 = v44;
    v53 = 2112;
    v54 = v16;
    v55 = 2112;
    v56 = v17;
    v57 = 2112;
    v58 = v18;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Going to check whether we have shared settings for accessory : %@ for root: %@. [Listening History: %@], [Media Access control : %@], [Personal request enabled : %@]", buf, 0x3Eu);
  }

  v42 = v16;

  objc_autoreleasePoolPop(v19);
  v23 = +[MKFCKSharedUserAccessorySettings fetchRequest];
  v43 = v14;
  v24 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"accessoryModelID", v14];
  [v23 setPredicate:v24];

  v25 = +[HMDCoreData sharedInstance];
  v26 = [v25 cloudPrivateStore];

  v46 = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
  [v23 setAffectedStores:v27];

  [v23 setFetchLimit:1];
  v45 = 0;
  v28 = [v15 executeFetchRequest:v23 error:&v45];
  v41 = v45;
  v29 = [v28 firstObject];

  if (!v29)
  {
    v30 = objc_autoreleasePoolPush();
    v31 = v20;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v34 = v33 = v30;
      *buf = 138543618;
      v48 = v34;
      v49 = 2112;
      v50 = v43;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Did not find the accessorySettings for accessory UUID : %@. Going to create a new one", buf, 0x16u);

      v30 = v33;
    }

    objc_autoreleasePoolPop(v30);
    v35 = [v44 homeModelID];
    v29 = [MKFCKSharedUserAccessorySettings createWithHomeModelID:v35 accessoryModelID:v43 persistentStore:v26 context:v15];

    [v29 setRoot:v44];
    [v44 addAccessorySettingsObject:v29];
  }

  v36 = objc_autoreleasePoolPush();
  v37 = v20;
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    v39 = HMFGetLogIdentifier();
    *buf = 138543618;
    v48 = v39;
    v49 = 2112;
    v50 = v29;
    _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Working with %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v36);
  if (v42)
  {
    [v29 setListeningHistoryEnabled:{objc_msgSend(v42, "BOOLValue")}];
  }

  if (v17)
  {
    [v29 setMediaContentProfileEnabled:{objc_msgSend(v17, "BOOLValue")}];
  }

  if (v18)
  {
    [v29 setPersonalRequestsEnabled:{objc_msgSend(v18, "BOOLValue")}];
  }

  v40 = *MEMORY[0x277D85DE8];
}

+ (void)_fetchAndMigrateAssistantAccessControlModelV2ToCoreDataFromLocalZone:(id)a3 managedObjectContext:(id)a4 rootShareObject:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v9 hmd_assertIsExecuting];
  v11 = objc_autoreleasePoolPush();
  v12 = a1;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Going to migrate assistant access control models from V5 to Core Data", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [v8 queryModelsOfType:objc_opt_class()];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __117__HMDUser__fetchAndMigrateAssistantAccessControlModelV2ToCoreDataFromLocalZone_managedObjectContext_rootShareObject___block_invoke;
  v19[3] = &unk_2786840B8;
  v21 = v10;
  v22 = v12;
  v20 = v9;
  v16 = v10;
  v17 = v9;
  [v15 enumerateObjectsUsingBlock:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __117__HMDUser__fetchAndMigrateAssistantAccessControlModelV2ToCoreDataFromLocalZone_managedObjectContext_rootShareObject___block_invoke(id *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 accessoryUUIDs];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __117__HMDUser__fetchAndMigrateAssistantAccessControlModelV2ToCoreDataFromLocalZone_managedObjectContext_rootShareObject___block_invoke_2;
  v13[3] = &unk_278688028;
  v16 = a1[6];
  v14 = a1[4];
  v15 = a1[5];
  [v4 enumerateObjectsUsingBlock:v13];

  v5 = [v3 activityNotificationsEnabledForPersonalRequests];
  [a1[5] setActivityNotificationsEnabledForPersonalRequests:{objc_msgSend(v5, "BOOLValue")}];

  v6 = objc_autoreleasePoolPush();
  v7 = a1[6];
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v3 activityNotificationsEnabledForPersonalRequests];
    [v10 BOOLValue];
    v11 = HMFBooleanToString();
    *buf = 138543618;
    v18 = v9;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Migrating activityNotificationsEnabledForPersonalRequests : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = *MEMORY[0x277D85DE8];
}

+ (void)_fetchAndMigrateMediaContentProfileAccessControlModelToCoreDataFromLocalZone:(id)a3 managedObjectContext:(id)a4 rootShareObject:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v9 hmd_assertIsExecuting];
  v11 = objc_autoreleasePoolPush();
  v12 = a1;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Going to migrate media content profile access control models from V5 to Core Data", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [v8 queryModelsOfType:objc_opt_class()];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __125__HMDUser__fetchAndMigrateMediaContentProfileAccessControlModelToCoreDataFromLocalZone_managedObjectContext_rootShareObject___block_invoke;
  v19[3] = &unk_278684090;
  v21 = v10;
  v22 = v12;
  v20 = v9;
  v16 = v10;
  v17 = v9;
  [v15 enumerateObjectsUsingBlock:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __125__HMDUser__fetchAndMigrateMediaContentProfileAccessControlModelToCoreDataFromLocalZone_managedObjectContext_rootShareObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accessories];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __125__HMDUser__fetchAndMigrateMediaContentProfileAccessControlModelToCoreDataFromLocalZone_managedObjectContext_rootShareObject___block_invoke_2;
  v4[3] = &unk_278688028;
  v7 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 enumerateObjectsUsingBlock:v4];
}

+ (void)_fetchAndMigrateUserListeningHistoryUpdatedControlModelToCoreDataFromLocalZone:(id)a3 managedObjectContext:(id)a4 rootShareObject:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v9 hmd_assertIsExecuting];
  v11 = objc_autoreleasePoolPush();
  v12 = a1;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Going to migrate user listening history models from V5 to Core Data", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [v8 queryModelsOfType:objc_opt_class()];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __127__HMDUser__fetchAndMigrateUserListeningHistoryUpdatedControlModelToCoreDataFromLocalZone_managedObjectContext_rootShareObject___block_invoke;
  v19[3] = &unk_278684068;
  v21 = v10;
  v22 = v12;
  v20 = v9;
  v16 = v10;
  v17 = v9;
  [v15 enumerateObjectsUsingBlock:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __127__HMDUser__fetchAndMigrateUserListeningHistoryUpdatedControlModelToCoreDataFromLocalZone_managedObjectContext_rootShareObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accessories];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __127__HMDUser__fetchAndMigrateUserListeningHistoryUpdatedControlModelToCoreDataFromLocalZone_managedObjectContext_rootShareObject___block_invoke_2;
  v4[3] = &unk_278688028;
  v7 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 enumerateObjectsUsingBlock:v4];
}

+ (void)_fetchAndMigratePhotosPersonManagerSettingsFromLocalZone:(id)a3 managedObjectContext:(id)a4 rootShareObject:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v9 hmd_assertIsExecuting];
  v11 = objc_autoreleasePoolPush();
  v12 = a1;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Going to migrate photos person manager settings from V5 to Core Data", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [v8 queryModelsOfType:objc_opt_class()];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __105__HMDUser__fetchAndMigratePhotosPersonManagerSettingsFromLocalZone_managedObjectContext_rootShareObject___block_invoke;
  v19[3] = &unk_278684040;
  v20 = v10;
  v21 = v9;
  v22 = v12;
  v16 = v9;
  v17 = v10;
  [v15 enumerateObjectsUsingBlock:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __105__HMDUser__fetchAndMigratePhotosPersonManagerSettingsFromLocalZone_managedObjectContext_rootShareObject___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 sharingFaceClassificationsEnabled];
  [*(a1 + 32) setSharePhotosFaceClassifications:{objc_msgSend(v4, "BOOLValue")}];

  v5 = [v3 zoneUUID];
  [*(a1 + 32) setPhotosPersonDataZoneUUID:v5];

  v6 = *(a1 + 40);
  v19 = 0;
  v7 = [v6 save:&v19];
  v8 = v19;
  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 48);
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v7)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v13;
      v14 = "%{public}@Successfully stored photos person manager settings";
      v15 = v12;
      v16 = OS_LOG_TYPE_INFO;
      v17 = 12;
LABEL_6:
      _os_log_impl(&dword_229538000, v15, v16, v14, buf, v17);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v21 = v13;
    v22 = 2112;
    v23 = v8;
    v14 = "%{public}@Unable to save the photos person manager settings: %@";
    v15 = v12;
    v16 = OS_LOG_TYPE_ERROR;
    v17 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v9);
  v18 = *MEMORY[0x277D85DE8];
}

+ (void)migrateHH1SettingsToHH2ForSharedUserWithUUID:(id)a3 homeUUID:(id)a4 privateZone:(id)a5 backingStoreContext:(id)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = a1;
  v16 = HMFGetOSLogHandle();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
  if (v12)
  {
    if (v17)
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138544130;
      v28 = v18;
      v29 = 2112;
      v30 = v11;
      v31 = 2112;
      v32 = v10;
      v33 = 2112;
      v34 = v12;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Migrating private user settings from HH1 to HH2 for home : %@, user: %@, privateZone: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v14);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __97__HMDUser_migrateHH1SettingsToHH2ForSharedUserWithUUID_homeUUID_privateZone_backingStoreContext___block_invoke;
    v21[3] = &unk_278684018;
    v22 = v13;
    v23 = v11;
    v26 = v15;
    v24 = v12;
    v25 = v10;
    [v22 performBlock:v21];
  }

  else
  {
    if (v17)
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v19;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Unable to open private zone. This can be due to 1. This user did not exist in HH1 world and they are a brand new user in HH2 world.2. The device on which this user is accepting the invitation does not have the HH1 V5 data.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __97__HMDUser_migrateHH1SettingsToHH2ForSharedUserWithUUID_homeUUID_privateZone_backingStoreContext___block_invoke(uint64_t a1)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v2 = +[HMDCoreData sharedInstance];
  v3 = [*(a1 + 32) managedObjectContext];
  v4 = +[MKFCKSharedUserPrivateRoot fetchRequest];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"homeModelID", *(a1 + 40)];
  [v4 setPredicate:v5];

  v6 = [v2 cloudPrivateStore];
  v35[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  [v4 setAffectedStores:v7];

  [v4 setFetchLimit:1];
  v30 = 0;
  v8 = [v3 executeFetchRequest:v4 error:&v30];
  v9 = v30;
  v10 = [v8 firstObject];

  v11 = objc_autoreleasePoolPush();
  if (v10)
  {
    v12 = [objc_opt_class() getSettingsUsingPreOrderTraversal:*(a1 + 48) rootUUID:*(a1 + 56) keyPath:&stru_283CF9D50];
    v13 = [HMDHome loadMigrationCharacteristicsAuthorizationDataFromDiskWithHomeUUID:*(a1 + 40)];
    if ([v12 count] || -[NSObject count](v13, "count"))
    {
      if ([v13 count])
      {
        v29 = v9;
        [v10 setCharacteristicAuthorizationData:v13];
        context = objc_autoreleasePoolPush();
        v14 = *(a1 + 64);
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v16 = v27 = v2;
          [v10 characteristicAuthorizationData];
          v17 = v26 = v3;
          *buf = 138543618;
          v32 = v16;
          v33 = 2112;
          v34 = v17;
          _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Updating shared user characteristics authorization data to %@", buf, 0x16u);

          v3 = v26;
          v2 = v27;
        }

        objc_autoreleasePoolPop(context);
        [HMDHome removeCharacteristicAuthorizationDataMigrationFileFromDiskWithhHomeUUID:*(a1 + 40)];
        v9 = v29;
      }

      if ([v12 count])
      {
        [*(a1 + 64) _saveSharedUserSettingsToCoreData:v12 managedObjectContext:v3 rootShareObject:v10];
      }

      objc_autoreleasePoolPop(v11);
      v18 = [*(a1 + 32) save];
      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 64);
      v13 = HMFGetOSLogHandle();
      v19 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
      if (v18)
      {
        if (v19)
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543362;
          v32 = v20;
          v21 = "%{public}@Successfully migrated V5 private settings for shared user to Core Data";
LABEL_17:
          v22 = v13;
          v23 = OS_LOG_TYPE_INFO;
          v24 = 12;
          goto LABEL_18;
        }
      }

      else if (v19)
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543362;
        v32 = v20;
        v21 = "%{public}@Unable to save the migrated V5 private settings for user";
        goto LABEL_17;
      }
    }
  }

  else
  {
    v12 = *(a1 + 64);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v20;
      v33 = 2112;
      v34 = v9;
      v21 = "%{public}@Unable to fetch shared user private root object: %@";
      v22 = v13;
      v23 = OS_LOG_TYPE_ERROR;
      v24 = 22;
LABEL_18:
      _os_log_impl(&dword_229538000, v22, v23, v21, buf, v24);
    }
  }

  objc_autoreleasePoolPop(v11);
  v25 = *MEMORY[0x277D85DE8];
}

+ (void)migrateHH1SettingsToHH2ForSharedUserWithUUID:(id)a3 homeUUID:(id)a4 sharedZone:(id)a5 backingStoreContext:(id)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = a1;
  v16 = HMFGetOSLogHandle();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
  if (v12)
  {
    if (v17)
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138544130;
      v28 = v18;
      v29 = 2112;
      v30 = v11;
      v31 = 2112;
      v32 = v10;
      v33 = 2112;
      v34 = v12;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Migrating shared user settings from HH1 to HH2 for home : %@, user: %@, sharedZone: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v14);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __96__HMDUser_migrateHH1SettingsToHH2ForSharedUserWithUUID_homeUUID_sharedZone_backingStoreContext___block_invoke;
    v21[3] = &unk_278684018;
    v22 = v13;
    v23 = v11;
    v26 = v15;
    v24 = v12;
    v25 = v10;
    [v22 performBlock:v21];
  }

  else
  {
    if (v17)
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v19;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Unable to open shared zone. This can be due to 1. This user did not exist in HH1 world and they are a brand new user in HH2 world.2. The device on which this user is accepting the invitation does not have the HH1 V5 data.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __96__HMDUser_migrateHH1SettingsToHH2ForSharedUserWithUUID_homeUUID_sharedZone_backingStoreContext___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = +[HMDCoreData sharedInstance];
  v3 = [*(a1 + 32) managedObjectContext];
  v4 = [HMDUser fetchSharedUserDataRootForHomeUUID:*(a1 + 40) moc:v3 coreData:v2];
  v5 = objc_autoreleasePoolPush();
  if (!v4)
  {
    v6 = *(a1 + 64);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v14;
      v15 = "%{public}@Unable to fetch shared user data object";
      v16 = v12;
      v17 = OS_LOG_TYPE_ERROR;
LABEL_14:
      _os_log_impl(&dword_229538000, v16, v17, v15, &v23, 0xCu);

      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v6 = [objc_opt_class() getSettingsUsingPreOrderTraversal:*(a1 + 48) rootUUID:*(a1 + 56) keyPath:&stru_283CF9D50];
  if ([v6 count])
  {
    [*(a1 + 64) _saveSharedUserSettingsToCoreData:v6 managedObjectContext:v3 rootShareObject:v4];

    objc_autoreleasePoolPop(v5);
    v7 = objc_autoreleasePoolPush();
    [*(a1 + 64) _fetchAndMigrateAssistantAccessControlModelV2ToCoreDataFromLocalZone:*(a1 + 48) managedObjectContext:v3 rootShareObject:v4];
    objc_autoreleasePoolPop(v7);
    v8 = objc_autoreleasePoolPush();
    [*(a1 + 64) _fetchAndMigrateMediaContentProfileAccessControlModelToCoreDataFromLocalZone:*(a1 + 48) managedObjectContext:v3 rootShareObject:v4];
    objc_autoreleasePoolPop(v8);
    v9 = objc_autoreleasePoolPush();
    [*(a1 + 64) _fetchAndMigrateUserListeningHistoryUpdatedControlModelToCoreDataFromLocalZone:*(a1 + 48) managedObjectContext:v3 rootShareObject:v4];
    objc_autoreleasePoolPop(v9);
    v10 = objc_autoreleasePoolPush();
    [*(a1 + 64) _fetchAndMigratePhotosPersonManagerSettingsFromLocalZone:*(a1 + 48) managedObjectContext:v3 rootShareObject:v4];
    objc_autoreleasePoolPop(v10);
    v11 = [*(a1 + 32) save];
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 64);
    v12 = HMFGetOSLogHandle();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v11)
    {
      if (v13)
      {
        v14 = HMFGetLogIdentifier();
        v23 = 138543362;
        v24 = v14;
        v15 = "%{public}@Successfully migrated V5 settings for shared user to Core Data";
LABEL_13:
        v16 = v12;
        v17 = OS_LOG_TYPE_INFO;
        goto LABEL_14;
      }
    }

    else if (v13)
    {
      v14 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v14;
      v15 = "%{public}@Unable to save the migrated V5 settings for user";
      goto LABEL_13;
    }

LABEL_15:

    goto LABEL_16;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = *(a1 + 64);
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    v23 = 138543362;
    v24 = v21;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Did not find any settings model for user", &v23, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
LABEL_16:

  objc_autoreleasePoolPop(v5);
  v22 = *MEMORY[0x277D85DE8];
}

+ (HMDUser)userWithDictionary:(id)a3 home:(id)a4
{
  v55[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 hmf_stringForKey:@"userID"];
  if (v8)
  {
    v9 = [a1 privilegeFromDictionary:v6];
    v10 = [v6 hmf_numberForKey:@"HM.isUserAllowedRemoteAccess"];
    v11 = +[HMDAccountHandleFormatter defaultFormatter];
    v12 = [v11 accountHandleFromString:v8];

    v47 = v12;
    v13 = [[HMDUser alloc] initWithAccountHandle:v12 home:v7 pairingIdentity:0 privilege:v9];
    v14 = __displayNameForUser(v13);
    [(HMDUser *)v13 setDisplayName:v14];

    -[HMDUser setRemoteAccessAllowed:](v13, "setRemoteAccessAllowed:", [v10 BOOLValue]);
    v15 = [v6 hmf_numberForKey:*MEMORY[0x277CD1308]];
    v16 = v15;
    if (v15)
    {
      -[HMDUser setCamerasAccessLevel:](v13, "setCamerasAccessLevel:", [v15 integerValue]);
    }

    v46 = v16;
    if (v13)
    {
      v17 = *MEMORY[0x277CD12C0];
      v18 = v6;
      v19 = [v18 hmf_numberForKey:v17];
      v20 = [v18 hmf_numberForKey:@"HMDUserAnnounceAccessLevelCodingKey"];

      v21 = [(HMDUser *)v13 announceUserAccessLevelFromAnnounceAccessAllowed:v19 announceAccessLevel:v20];
    }

    else
    {
      v21 = 0;
    }

    [(HMDUser *)v13 setAnnounceAccessLevel:v21];
    v22 = [v6 objectForKeyedSubscript:*MEMORY[0x277CD0D20]];
    if (v22)
    {
      v44 = v10;
      v45 = v7;
      v23 = MEMORY[0x277CCAAC8];
      v24 = MEMORY[0x277CBEB98];
      v55[0] = objc_opt_class();
      v55[1] = objc_opt_class();
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
      v26 = [v24 setWithArray:v25];
      v48 = 0;
      v27 = [v23 unarchivedObjectOfClasses:v26 fromData:v22 error:&v48];
      v28 = v48;

      if (v28)
      {
        v29 = objc_autoreleasePoolPush();
        v30 = a1;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v32 = v43 = v29;
          *buf = 138543618;
          v50 = v32;
          v51 = 2112;
          v52 = v28;
          _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode restricted guest settings from user dictionary with error: %@", buf, 0x16u);

          v29 = v43;
        }

        objc_autoreleasePoolPop(v29);
      }

      else
      {
        [(HMDUser *)v13 setRestrictedGuestAccessSettings:v27];
      }

      v7 = v45;

      v10 = v44;
    }

    v37 = objc_autoreleasePoolPush();
    v38 = a1;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543874;
      v50 = v40;
      v51 = 2112;
      v52 = v13;
      v53 = 2112;
      v54 = v6;
      _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@user [%@] from dictionary: [%@]", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v37);
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    v34 = a1;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543362;
      v50 = v36;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Cannot create user from dictionary because userID is not given", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v33);
    v13 = 0;
  }

  v41 = *MEMORY[0x277D85DE8];

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
  if (logCategory__hmf_once_t181 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t181, &__block_literal_global_702);
  }

  v3 = logCategory__hmf_once_v182;

  return v3;
}

void __22__HMDUser_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v182;
  logCategory__hmf_once_v182 = v1;
}

+ (id)getSyncDataFromLocalDiskWithArchive:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  if (v6)
  {
    v34 = 0;
    v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v4 options:2 error:&v34];
    v8 = v34;
    if (!v7)
    {
      v25 = objc_autoreleasePoolPush();
      v26 = a1;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543874;
        v36 = v28;
        v37 = 2112;
        v38 = v4;
        v39 = 2112;
        v40 = v8;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Unable to read data from file : %@ / %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v25);
      v16 = 0;
      goto LABEL_21;
    }

    v9 = MEMORY[0x277CCAAC8];
    v10 = [objc_opt_class() allowedClassesForSyncData];
    v33 = v8;
    v11 = [v9 unarchivedObjectOfClasses:v10 fromData:v7 error:&v33];
    v12 = v33;

    if (v11)
    {
      v13 = v11;
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
        goto LABEL_20;
      }

      v17 = objc_autoreleasePoolPush();
      v18 = a1;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v36 = v20;
        v37 = 2112;
        v38 = v13;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unarchived data is the wrong type : %@", buf, 0x16u);
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v29 = a1;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543618;
        v36 = v30;
        v37 = 2112;
        v38 = v12;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to unarchive from disk : %@", buf, 0x16u);
      }

      v16 = 0;
    }

    objc_autoreleasePoolPop(v17);
LABEL_20:

    v8 = v12;
LABEL_21:

    goto LABEL_22;
  }

  v21 = objc_autoreleasePoolPush();
  v22 = a1;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543618;
    v36 = v24;
    v37 = 2112;
    v38 = v4;
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@HH1 sync data file does not exist : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  v16 = 0;
LABEL_22:

  v31 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)allLastUserSyncDataArchives
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v24 = [MEMORY[0x277CBEB18] array];
  v3 = hh1ToHH2PerDeviceMigrationDirectoryPath;
  v22 = v2;
  v4 = [v2 contentsOfDirectoryAtPath:v3 error:0];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        if ([v10 hasPrefix:@"HMDUser-Sync-Data-"])
        {
          v11 = MEMORY[0x277CCACA8];
          v12 = hh1ToHH2PerDeviceMigrationDirectoryPath;
          v13 = [v11 stringWithFormat:@"%@/%@", v12, v10];

          if (v13)
          {
            v14 = objc_autoreleasePoolPush();
            v15 = a1;
            v16 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v17 = v8;
              v19 = v18 = v5;
              *buf = 138543618;
              v30 = v19;
              v31 = 2112;
              v32 = v13;
              _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Found hh2 shared user last sync data %@", buf, 0x16u);

              v5 = v18;
              v8 = v17;
            }

            objc_autoreleasePoolPop(v14);
            [v24 addObject:v13];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v7);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)allowedClassesForSyncData
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:5];
  v4 = [v2 setWithArray:{v3, v7, v8, v9, v10}];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)allowedClassesForAnnounceNotificationMode
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:3];
  v4 = [v2 setWithArray:{v3, v7, v8}];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
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
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Created user UUID: %@ from userID: %@ homeUUID: %@ uuid: %@ pairingIdentity: %@", &v30, 0x3Eu);
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
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to get current user from keychain with error: %@", buf, 0x16u);
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

- (void)sendSharedUserProfileMetadataUpdatedMessage
{
  v5 = [(HMDUser *)self messageDispatcher];
  v3 = [MEMORY[0x277D0F818] entitledMessageWithName:*MEMORY[0x277CD14C8] messagePayload:MEMORY[0x277CBEC10]];
  v4 = [(HMDUser *)self uuid];
  [v5 sendMessage:v3 target:v4];
}

- (void)_handleFetchProfilePhoto:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_home);
  v6 = [WeakRetained backingStore];
  v7 = [v6 context];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __36__HMDUser__handleFetchProfilePhoto___block_invoke;
  v9[3] = &unk_27868A750;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v7 performBlock:v9];
}

void __36__HMDUser__handleFetchProfilePhoto___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uuid];
  v3 = [HMCContext findUserWithModelID:v2];

  v4 = [v3 sharedUserDataRoot];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 aaProfilePhoto];
    v7 = [v6 photoData];

    if (v7)
    {
      v8 = *(a1 + 40);
      v9 = [v5 aaProfilePhoto];
      v10 = [v9 cropRect];
      v11 = v10;
      if (!v10)
      {
        v11 = [MEMORY[0x277CCAE60] valueWithRect:{*MEMORY[0x277CCA868], *(MEMORY[0x277CCA868] + 8), *(MEMORY[0x277CCA868] + 16), *(MEMORY[0x277CCA868] + 24)}];
      }

      v12 = encodeRootObjectForIncomingXPCMessage(v11, 0);
      v26[1] = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:2];
      [v8 respondWithPayload:v13];

      if (!v10)
      {
      }
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 32);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v28 = v22;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@No profile photo in root", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v23 = *(a1 + 40);
      v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v23 respondWithError:v9];
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch shared user root", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v18 = *(a1 + 40);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v18 respondWithError:v7];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_didHandleFMFDeviceChangedNotificationWithStatus:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (a3 == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_home);
    [(HMDUser *)self _pushTextMetadataToStoreForHome:WeakRetained];
    [(HMDUser *)self _pushPhotoMetadataToStoreForHome:WeakRetained];
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@_didHandleFMFDeviceChangedNotificationWithStatus:HDMFMFStatusThisDeviceIsDesignated", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleFMFDeviceChangedNotification:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HMDUser__handleFMFDeviceChangedNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __47__HMDUser__handleFMFDeviceChangedNotification___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Reevaluating me device for HMDAppleAccountManagerAccountModified observer - handleFMFDeviceChangedNotification", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 40) userInfo];
  v7 = [v6 hmf_numberForKey:@"FMFStatus"];
  v8 = [v7 unsignedIntegerValue];

  v9 = [*(a1 + 32) dataSource];
  v10 = [v9 notificationCenter];
  v11 = v10;
  v12 = *(a1 + 32);
  if (v8 == 2)
  {
    v13 = +[HMDAppleAccountManager sharedManager];
    [v11 addObserver:v12 selector:sel___handleModifiedAccount_ name:@"HMDAppleAccountManagerAccountModifiedNotification" object:v13];

    v14 = 2;
  }

  else
  {
    [v10 removeObserver:*(a1 + 32) name:@"HMDAppleAccountManagerAccountModifiedNotification" object:0];
    v14 = 3;
  }

  result = [*(a1 + 32) _didHandleFMFDeviceChangedNotificationWithStatus:v14];
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)__handleModifiedAccount:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMDUser___handleModifiedAccount___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

void __35__HMDUser___handleModifiedAccount___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) home];
  v2 = [*(a1 + 32) accountMetadata];
  [v2 updateAccountMetadata];

  [*(a1 + 32) _pushTextMetadataToStoreForHome:v5];
  v3 = [*(a1 + 32) dataSource];
  v4 = [v3 isThisDeviceDesignatedFMFDevice];

  if (v4)
  {
    [*(a1 + 32) _pushPhotoMetadataToStoreForHome:v5];
  }
}

- (void)_pushPhotoMetadataToStoreForHome:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v8 = v18 = v5;
    [(HMDUser *)v6 isOwner];
    v9 = HMFBooleanToString();
    v10 = [(HMDUser *)v6 dataSource];
    [v10 isThisDeviceDesignatedFMFDevice];
    v11 = HMFBooleanToString();
    [(HMDUser *)v6 isRestrictedGuest];
    v12 = HMFBooleanToString();
    [(HMDUser *)v6 isCurrentUser];
    v13 = HMFBooleanToString();
    _os_feature_enabled_impl();
    v14 = HMFBooleanToString();
    *buf = 138544642;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v11;
    v27 = 2112;
    v28 = v12;
    v29 = 2112;
    v30 = v13;
    v31 = 2112;
    v32 = v14;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Pushing photo shared user profile metadata in _pushPhotoMetadataToStoreForHome: owner = %@ meDevice = %@ restrictedGuest = %@ currentUser = %@ metadataEnabled = %@", buf, 0x3Eu);

    v5 = v18;
  }

  objc_autoreleasePoolPop(v5);
  v15 = [(HMDUser *)v6 accountMetadata];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __44__HMDUser__pushPhotoMetadataToStoreForHome___block_invoke;
  v19[3] = &unk_278683F78;
  v19[4] = v6;
  v20 = v4;
  v16 = v4;
  [v15 profilePhotoWithCompletionHandler:v19];

  v17 = *MEMORY[0x277D85DE8];
}

void __44__HMDUser__pushPhotoMetadataToStoreForHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEAC0];
  v4 = a2;
  v5 = [v4 photoData];
  v6 = *MEMORY[0x277CD1428];
  v7 = [v4 cropRect];

  v8 = [v3 dictionaryWithObjectsAndKeys:{v5, v6, v7, *MEMORY[0x277CD1420], 0}];

  [*(a1 + 32) _pushSharedProfileMetadataToStoreForHome:*(a1 + 40) iCloudAltDSID:0 firstName:0 lastName:0 profilePhotoDict:v8];
}

- (void)_pushTextMetadataToStoreForHome:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v8 = v25 = v4;
    [(HMDUser *)v6 isOwner];
    v9 = HMFBooleanToString();
    v10 = [(HMDUser *)v6 dataSource];
    [v10 isThisDeviceDesignatedFMFDevice];
    v11 = HMFBooleanToString();
    [(HMDUser *)v6 isRestrictedGuest];
    v12 = HMFBooleanToString();
    [(HMDUser *)v6 isCurrentUser];
    v13 = HMFBooleanToString();
    _os_feature_enabled_impl();
    v14 = HMFBooleanToString();
    *buf = 138544642;
    v27 = v8;
    v28 = 2112;
    v29 = v9;
    v30 = 2112;
    v31 = v11;
    v32 = 2112;
    v33 = v12;
    v34 = 2112;
    v35 = v13;
    v36 = 2112;
    v37 = v14;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Pushing text shared user profile metadata in _pushTextMetadataToStoreForHome: owner = %@ meDevice = %@ restrictedGuest = %@ currentUser = %@ metadataEnabled = %@", buf, 0x3Eu);

    v4 = v25;
  }

  objc_autoreleasePoolPop(v5);
  v15 = [(HMDUser *)v6 accountMetadata];
  v16 = [v15 iCloudAltDSID];
  [(HMDUser *)v6 setiCloudAltDSID:v16];

  v17 = [(HMDUser *)v6 accountMetadata];
  v18 = [v17 firstName];
  [(HMDUser *)v6 setFirstName:v18];

  v19 = [(HMDUser *)v6 accountMetadata];
  v20 = [v19 lastName];
  [(HMDUser *)v6 setLastName:v20];

  v21 = [(HMDUser *)v6 iCloudAltDSID];
  v22 = [(HMDUser *)v6 firstName];
  v23 = [(HMDUser *)v6 lastName];
  [(HMDUser *)v6 _pushSharedProfileMetadataToStoreForHome:v4 iCloudAltDSID:v21 firstName:v22 lastName:v23 profilePhotoDict:0];

  v24 = *MEMORY[0x277D85DE8];
}

- (NSNumber)uniqueIDForAccessories
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__240476;
  v16 = __Block_byref_object_dispose__240477;
  v17 = 0;
  v3 = [(HMDUser *)self home];
  v4 = [v3 backingStore];
  v5 = [v4 context];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33__HMDUser_uniqueIDForAccessories__block_invoke;
  v9[3] = &unk_27868A4D8;
  v9[4] = self;
  v6 = v5;
  v10 = v6;
  v11 = &v12;
  [v6 unsafeSynchronousBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __33__HMDUser_uniqueIDForAccessories__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v3 = [*(a1 + 40) managedObjectContext];
  v10 = [_MKFHome findHomeMemberWithUUID:v2 context:v3];

  v4 = v10;
  if (v10)
  {
    v5 = [v10 uniqueIDForAccessories];
    v6 = [v5 isEqualToNumber:&unk_283E74CD8];

    v4 = v10;
    if ((v6 & 1) == 0)
    {
      v7 = [v10 uniqueIDForAccessories];
      v8 = *(*(a1 + 48) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v4 = v10;
    }
  }
}

- (double)configuredProofOfLocalityTimeout
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"HMDPreferenceAllowedToAcceptRemoteMessagesIntervalInHoursKey"];
  v4 = [v3 numberValue];
  [v4 doubleValue];
  v6 = v5 * 3600.0;

  return v6;
}

- (BOOL)shouldWeOverrideRemoteAccessAllowedDespiteNoRemoteAccessAllowed
{
  v39 = *MEMORY[0x277D85DE8];
  if (![(HMDUser *)self isRemoteAccessAllowed])
  {
    v4 = [(HMDUser *)self home];
    v5 = [(HMDUser *)self isRestrictedGuest];
    v6 = [v4 presenceMonitor];
    v7 = [(HMDUser *)self uuid];
    if (v5)
    {
      v8 = [v6 isUserAtHome:v7];

      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
      if (v8)
      {
        if (v12)
        {
          v13 = HMFGetLogIdentifier();
          v14 = [(HMDUser *)v10 userID];
          v33 = 138543618;
          v34 = v13;
          v35 = 2112;
          v36 = v14;
          _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@[RG] : Allowing remote access for [%@] even though remote access is not allowed", &v33, 0x16u);
        }

        objc_autoreleasePoolPop(v9);
        v3 = 1;
      }

      else
      {
        if (v12)
        {
          v29 = HMFGetLogIdentifier();
          v30 = [(HMDUser *)v10 userID];
          v33 = 138543618;
          v34 = v29;
          v35 = 2112;
          v36 = v30;
          _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@[RG] : Not allowing remote access for [%@] as the user is not at Home", &v33, 0x16u);
        }

        objc_autoreleasePoolPop(v9);
        v3 = 0;
      }

      goto LABEL_21;
    }

    v15 = [v6 getLastLocalActivityTimeStampForUserUUID:v7];

    if (!v15)
    {
      v3 = 0;
LABEL_20:

LABEL_21:
      goto LABEL_22;
    }

    [v15 timeIntervalSinceNow];
    v17 = fabs(v16);
    [(HMDUser *)self configuredProofOfLocalityTimeout];
    v19 = v18;
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
    v3 = v17 <= v19;
    if (v17 > v19)
    {
      if (v23)
      {
        v24 = HMFGetLogIdentifier();
        v25 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
        v33 = 138543874;
        v34 = v24;
        v35 = 2112;
        v36 = v25;
        v37 = 2112;
        v38 = v15;
        v26 = "%{public}@User was last local %@ seconds ago at %@";
        v27 = v22;
        v28 = 32;
        goto LABEL_18;
      }
    }

    else if (v23)
    {
      v24 = HMFGetLogIdentifier();
      v25 = [(HMDUser *)v21 userID];
      v33 = 138543618;
      v34 = v24;
      v35 = 2112;
      v36 = v25;
      v26 = "%{public}@Allowing remote access for [%@] even though remote access is not allowed";
      v27 = v22;
      v28 = 22;
LABEL_18:
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, v26, &v33, v28);
    }

    objc_autoreleasePoolPop(v20);
    goto LABEL_20;
  }

  v3 = 1;
LABEL_22:
  v31 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)handlePrimaryResidentUpdateNotification:(id)a3
{
  v4 = a3;
  if ([(HMDUser *)self isRestrictedGuest])
  {
    v5 = [(HMDUser *)self queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__HMDUser_handlePrimaryResidentUpdateNotification___block_invoke;
    v6[3] = &unk_27868A750;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

void __51__HMDUser_handlePrimaryResidentUpdateNotification___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) name];
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Received resident update notification: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)areAccessoriesInAllowedList:(id)a3
{
  v4 = a3;
  if (-[HMDUser isRestrictedGuest](self, "isRestrictedGuest") && [v4 count])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__HMDUser_areAccessoriesInAllowedList___block_invoke;
    v7[3] = &unk_27868A1B0;
    v7[4] = self;
    v5 = [v4 na_all:v7];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

uint64_t __39__HMDUser_areAccessoriesInAllowedList___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 restrictedGuestAccessSettings];
  v5 = [v4 uuidsOfAllowedAccessories];
  v6 = [v5 containsObject:v3];

  return v6;
}

- (BOOL)isAccessCurrentlyAllowedBySchedule
{
  v3 = [(HMDUser *)self home];
  if ([(HMDUser *)self isRestrictedGuest])
  {
    v4 = [(HMDUser *)self restrictedGuestAccessSettings];
    v5 = [v4 schedule];

    if (v5)
    {
      v6 = MEMORY[0x277CD1D78];
      v7 = [MEMORY[0x277CBEAA8] date];
      v8 = [v3 timeZone];
      v9 = [v6 isDate:v7 withinAllowedTimeForSchedule:v5 forHomeInTimeZone:v8];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_notifyEveryOneAboutRestrictedGuestScheduleNotification:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = @"kUserUUIDKey";
  v5 = [(HMDUser *)self uuid];
  v20[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

  logAndPostNotification(v4, self, v6);
  if (HMFEqualObjects())
  {
    v7 = MEMORY[0x277CD1448];
LABEL_5:
    v8 = *v7;
    v9 = [(HMDUser *)self messageDispatcher];
    v10 = [MEMORY[0x277D0F818] entitledMessageWithName:v8 messagePayload:MEMORY[0x277CBEC10]];
    v11 = [(HMDUser *)self uuid];
    [v9 sendMessage:v10 target:v11];

    goto LABEL_9;
  }

  if (HMFEqualObjects())
  {
    v7 = MEMORY[0x277CD1440];
    goto LABEL_5;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v15;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Nothing to notify to clients", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v12);
LABEL_9:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleRestrictedGuestScheduleTimer:(id)a3
{
  v4 = a3;
  v5 = [(HMDUser *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HMDUser_handleRestrictedGuestScheduleTimer___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __46__HMDUser_handleRestrictedGuestScheduleTimer___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 hmf_stringForKey:@"HMD.BGTM.NK"];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 40);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v53 = v7;
    v54 = 2112;
    v55 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@RG schedule timer fired: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 40) restrictedGuestScheduleStartTimerID];
  v9 = HMFEqualObjects();

  v10 = [*(a1 + 40) restrictedGuestScheduleEndTimerID];
  v11 = HMFEqualObjects();

  if (v9 & 1) != 0 || (v11)
  {
    v16 = +[HMDBackgroundTaskManager sharedManager];
    v17 = *(a1 + 40);
    if (v9)
    {
      v18 = [v17 restrictedGuestAccessSettings];
      v19 = [v18 nextScheduledInterval];

      if (v19)
      {
        v20 = [MEMORY[0x277CBEAA8] now];
        v21 = [v19 containsDate:v20];

        if (v21)
        {
          [*(a1 + 40) _notifyEveryOneAboutRestrictedGuestScheduleNotification:@"HMDUserRestrictedGuestScheduleStartedNotification"];
          v22 = objc_autoreleasePoolPush();
          v23 = *(a1 + 40);
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = HMFGetLogIdentifier();
            v26 = [v19 endDate];
            *buf = 138543618;
            v53 = v25;
            v54 = 2112;
            v55 = v26;
            _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Going to schedule the end period timer: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v22);
          v27 = [*(a1 + 40) restrictedGuestScheduleEndTimerID];
          v28 = [v19 endDate];
          v29 = *(a1 + 40);
          v51 = 0;
          v30 = [v16 scheduleTaskWithIdentifier:v27 fireDate:v28 onObserver:v29 selector:sel_handleRestrictedGuestScheduleTimer_ error:&v51];
          v31 = v51;

          if (v30)
          {
            goto LABEL_31;
          }

          v32 = objc_autoreleasePoolPush();
          v33 = *(a1 + 40);
          v34 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
LABEL_30:

            objc_autoreleasePoolPop(v32);
LABEL_31:

            goto LABEL_32;
          }

          v35 = HMFGetLogIdentifier();
          v36 = [v19 endDate];
          *buf = 138543874;
          v53 = v35;
          v54 = 2112;
          v55 = v36;
          v56 = 2112;
          v57 = v31;
          v37 = "%{public}@Failed to schedule end timer: %@ / %@";
LABEL_22:
          _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, v37, buf, 0x20u);

          goto LABEL_30;
        }

        v32 = objc_autoreleasePoolPush();
        v33 = *(a1 + 40);
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v49 = HMFGetLogIdentifier();
          *buf = 138543362;
          v53 = v49;
          _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Looks like we are not within the allowed time interval anymore.", buf, 0xCu);
        }

LABEL_29:
        v31 = 0;
        goto LABEL_30;
      }

      v32 = objc_autoreleasePoolPush();
      v33 = *(a1 + 40);
      v34 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
LABEL_28:
        v19 = 0;
        goto LABEL_29;
      }

      v46 = HMFGetLogIdentifier();
      *buf = 138543362;
      v53 = v46;
      v47 = "%{public}@Looks like the schedule is not valid anymore.";
    }

    else
    {
      [v17 _notifyEveryOneAboutRestrictedGuestScheduleNotification:@"HMDUserRestrictedGuestScheduleEndedNotification"];
      v38 = [*(a1 + 40) restrictedGuestAccessSettings];
      v19 = [v38 nextScheduledInterval];

      v32 = objc_autoreleasePoolPush();
      v33 = *(a1 + 40);
      v34 = HMFGetOSLogHandle();
      v39 = os_log_type_enabled(v34, OS_LOG_TYPE_INFO);
      if (v19)
      {
        if (v39)
        {
          v40 = HMFGetLogIdentifier();
          v41 = [v19 startDate];
          *buf = 138543618;
          v53 = v40;
          v54 = 2112;
          v55 = v41;
          _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Going to schedule the start period timer: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v32);
        v42 = [*(a1 + 40) restrictedGuestScheduleStartTimerID];
        v43 = [v19 startDate];
        v44 = *(a1 + 40);
        v50 = 0;
        v45 = [v16 scheduleTaskWithIdentifier:v42 fireDate:v43 onObserver:v44 selector:sel_handleRestrictedGuestScheduleTimer_ error:&v50];
        v31 = v50;

        if (v45)
        {
          goto LABEL_31;
        }

        v32 = objc_autoreleasePoolPush();
        v33 = *(a1 + 40);
        v34 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_30;
        }

        v35 = HMFGetLogIdentifier();
        v36 = [v19 startDate];
        *buf = 138543874;
        v53 = v35;
        v54 = 2112;
        v55 = v36;
        v56 = 2112;
        v57 = v31;
        v37 = "%{public}@Failed to schedule start timer: %@ / %@";
        goto LABEL_22;
      }

      if (!v39)
      {
        goto LABEL_28;
      }

      v46 = HMFGetLogIdentifier();
      *buf = 138543362;
      v53 = v46;
      v47 = "%{public}@No more intervals in the schedule. Nothing to schedule";
    }

    _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, v47, buf, 0xCu);

    goto LABEL_28;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = *(a1 + 40);
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543362;
    v53 = v15;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@This is neither start nor end timer. File a radar for BTM", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v12);
LABEL_32:

  v48 = *MEMORY[0x277D85DE8];
}

- (void)_handleRestrictedGuestNewSchedule:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUser *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 startDate];
    v11 = [v4 endDate];
    *buf = 138543874;
    v31 = v9;
    v32 = 2112;
    v33 = v10;
    v34 = 2112;
    v35 = v11;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Calculated new interval : [%@, %@]", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = +[HMDBackgroundTaskManager sharedManager];
  v13 = [MEMORY[0x277CBEAA8] now];
  v14 = [v4 containsDate:v13];

  if (v14)
  {
    v15 = [(HMDUser *)v7 restrictedGuestScheduleEndTimerID];
    [v4 endDate];
  }

  else
  {
    v15 = [(HMDUser *)v7 restrictedGuestScheduleStartTimerID];
    [v4 startDate];
  }
  v16 = ;
  v29 = 0;
  v17 = [v12 scheduleTaskWithIdentifier:v15 fireDate:v16 onObserver:v7 selector:sel_handleRestrictedGuestScheduleTimer_ error:&v29];
  v18 = v29;
  v19 = objc_autoreleasePoolPush();
  v20 = v7;
  v21 = HMFGetOSLogHandle();
  v22 = v21;
  if (v17)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543874;
      v31 = v23;
      v32 = 2112;
      v33 = v15;
      v34 = 2112;
      v35 = v16;
      v24 = "%{public}@Scheduled new timer for RG : %@ / %@";
      v25 = v22;
      v26 = OS_LOG_TYPE_INFO;
      v27 = 32;
LABEL_11:
      _os_log_impl(&dword_229538000, v25, v26, v24, buf, v27);
    }
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138544130;
    v31 = v23;
    v32 = 2112;
    v33 = v16;
    v34 = 2112;
    v35 = v15;
    v36 = 2112;
    v37 = v18;
    v24 = "%{public}@Failed to schedule RG schedule timer: %@ / %@ / %@";
    v25 = v22;
    v26 = OS_LOG_TYPE_ERROR;
    v27 = 42;
    goto LABEL_11;
  }

  objc_autoreleasePoolPop(v19);
  v28 = *MEMORY[0x277D85DE8];
}

- (void)cancelRestrictedGuestScheduledTimers
{
  v5 = +[HMDBackgroundTaskManager sharedManager];
  v3 = [(HMDUser *)self restrictedGuestScheduleStartTimerID];
  [v5 cancelTaskWithIdentifier:v3 onObserver:self];

  v4 = [(HMDUser *)self restrictedGuestScheduleEndTimerID];
  [v5 cancelTaskWithIdentifier:v4 onObserver:self];
}

- (void)scheduleRestrictedGuestAccessTimersWithReason:(id)a3
{
  v4 = a3;
  v5 = [(HMDUser *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HMDUser_scheduleRestrictedGuestAccessTimersWithReason___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __57__HMDUser_scheduleRestrictedGuestAccessTimersWithReason___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) restrictedGuestAccessSettings];
    v7 = [v6 schedule];
    v8 = *(a1 + 40);
    v12 = 138543874;
    v13 = v5;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Going to schedule timers for restricted guest: %@, reason: %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) cancelRestrictedGuestScheduledTimers];
  v9 = [*(a1 + 32) restrictedGuestAccessSettings];
  v10 = [v9 nextScheduledInterval];

  if (v10)
  {
    [*(a1 + 32) _handleRestrictedGuestNewSchedule:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateRestrictedGuestSettingsFromWorkingStoreIfNeeded
{
  if ([(HMDUser *)self isRestrictedGuest])
  {
    v3 = [(HMDUser *)self restrictedGuestAccessSettings];
    v4 = [v3 updateRestrictedGuestSettingsFromWorkingStore:self];

    if (v4)
    {
      logAndPostNotification(@"HMDUserScheduleDidChangeNotification", self, 0);

      [(HMDUser *)self scheduleRestrictedGuestAccessTimersWithReason:@"Updated schedule from DB"];
    }
  }
}

- (void)setRestrictedGuestAccessSettings:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  restrictedGuestAccessSettings = self->_restrictedGuestAccessSettings;
  self->_restrictedGuestAccessSettings = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDRestrictedGuestHomeAccessSettings)restrictedGuestAccessSettings
{
  os_unfair_lock_lock_with_options();
  v3 = self->_restrictedGuestAccessSettings;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)restrictedGuestScheduleEndTimerID
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDUser *)self uuid];
  v4 = [v3 UUIDString];
  v5 = [v2 stringWithFormat:@"RGScheduleEnd.%@", v4];

  return v5;
}

- (id)restrictedGuestScheduleStartTimerID
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDUser *)self uuid];
  v4 = [v3 UUIDString];
  v5 = [v2 stringWithFormat:@"RGScheduleStart.%@", v4];

  return v5;
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
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@NFC issuer key identifier for user is nil", &v13, 0xCu);
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
  v15 = *MEMORY[0x277D85DE8];
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
        v13 = 138543362;
        v14 = v8;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Creating the person settings manager", &v13, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
      v9 = [[HMDPersonSettingsManager alloc] initWithHome:v3 workQueue:v5->_queue];
      [(HMDUser *)v5 setPersonSettingsManager:v9];

      v10 = [(HMDUser *)v5 personSettingsManager];
      [v10 configure];
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = HMFGetLogIdentifier();
        v13 = 138543362;
        v14 = v11;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Not creating person settings manager because home reference is nil", &v13, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)configurePhotosPersonDataManager
{
  dispatch_assert_queue_V2(self->_queue);
  v9 = [(HMDUser *)self home];
  if (v9 && ([(HMDUser *)self isRunningOnHomeOwnersDevice]|| [(HMDUser *)self isCurrentUser]) && [(HMDUser *)self isAllowedToSharePhotosPersonManagerData])
  {
    v3 = [HMDUserPhotosPersonDataManager alloc];
    v4 = [(HMDUser *)self messageDispatcher];
    v5 = [v9 backingStore];
    v6 = [v5 context];
    v7 = [(HMDUserPhotosPersonDataManager *)v3 initWithUser:self messageDispatcher:v4 backingStoreContext:v6 workQueue:self->_queue];
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

- (void)_removeAnnounceNotificationModeFileFromDiskForUserUUID:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBEBC0]);
  v6 = [(HMDUser *)self announceNotificationFileNameForUserUUID:v4];
  v7 = [v5 initFileURLWithPath:v6];

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = 0;
  [v8 removeItemAtURL:v7 error:&v15];
  v9 = v15;

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Error occurred while removing announce notification settings file from disk : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_migrateAnnounceNotificationModeIfNeeded
{
  v83 = *MEMORY[0x277D85DE8];
  v58 = [(HMDUser *)self home];
  [(HMDUser *)self userIDsToMigrateAnnounceSettingsFrom];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v3 = v74 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v71 objects:v82 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0x277CCA000uLL;
    v61 = *v72;
    v59 = v3;
    do
    {
      v7 = 0;
      v60 = v5;
      do
      {
        if (*v72 != v61)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(HMDUser *)self announceNotificationFileNameForUserUUID:*(*(&v71 + 1) + 8 * v7)];
        v9 = [*(v6 + 2560) defaultManager];
        v10 = [v9 fileExistsAtPath:v8];

        v11 = objc_autoreleasePoolPush();
        v12 = self;
        v13 = HMFGetOSLogHandle();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
        if ((v10 & 1) == 0)
        {
          if (v14)
          {
            v36 = HMFGetLogIdentifier();
            *buf = 138543618;
            v77 = v36;
            v78 = 2112;
            v79 = v8;
            _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@HH1 announce setting file do not exist : %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v11);
          goto LABEL_33;
        }

        if (v14)
        {
          v15 = HMFGetLogIdentifier();
          *buf = 138543618;
          v77 = v15;
          v78 = 2112;
          v79 = v8;
          _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Going to read HH1 announce setting file : %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v11);
        v70 = 0;
        v16 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v8 options:2 error:&v70];
        v17 = v70;
        if (!v16)
        {
          v37 = objc_autoreleasePoolPush();
          v38 = v12;
          v39 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v40 = HMFGetLogIdentifier();
            *buf = 138543874;
            v77 = v40;
            v78 = 2112;
            v79 = v8;
            v80 = 2112;
            v81 = v17;
            _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Unable to read data from file : %@ / %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v37);
          goto LABEL_32;
        }

        v18 = MEMORY[0x277CCAAC8];
        v19 = [objc_opt_class() allowedClassesForAnnounceNotificationMode];
        v69 = v17;
        v20 = [v18 unarchivedObjectOfClasses:v19 fromData:v16 error:&v69];
        v21 = v69;

        if (!v20)
        {
          v41 = objc_autoreleasePoolPush();
          v42 = v12;
          v43 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v44 = HMFGetLogIdentifier();
            *buf = 138543618;
            v77 = v44;
            v78 = 2112;
            v79 = v21;
            _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_ERROR, "%{public}@Unable to unarchive from disk : %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v41);
          goto LABEL_31;
        }

        v22 = v20;
        objc_opt_class();
        v23 = objc_opt_isKindOfClass() & 1;
        if (v23)
        {
          v24 = v22;
        }

        else
        {
          v24 = 0;
        }

        v25 = v24;

        v26 = objc_autoreleasePoolPush();
        v27 = v12;
        v28 = HMFGetOSLogHandle();
        v29 = v28;
        if (!v23)
        {
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v45 = HMFGetLogIdentifier();
            *buf = 138543618;
            v77 = v45;
            v78 = 2112;
            v79 = v22;
            _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Unarchived data is the wrong type : %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v26);
          v3 = v59;
LABEL_31:
          v5 = v60;
LABEL_32:
          v6 = 0x277CCA000;
LABEL_33:

          goto LABEL_34;
        }

        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 138543618;
          v77 = v30;
          v78 = 2112;
          v79 = v22;
          _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Found HH1 announce notification mode for current user : %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v26);
        v31 = [v22 objectForKeyedSubscript:@"HMD.announce.notification.mode"];
        if (v31)
        {
          v32 = [v58 backingStore];
          v33 = [v32 context];

          v34 = [v33 managedObjectContext];
          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v66[2] = __51__HMDUser__migrateAnnounceNotificationModeIfNeeded__block_invoke;
          v66[3] = &unk_27868A010;
          v66[4] = v27;
          v67 = v31;
          v68 = v34;
          v35 = v34;
          [v35 performBlockAndWait:v66];
        }

        else
        {
          v46 = objc_autoreleasePoolPush();
          v47 = v27;
          v48 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v49 = v57 = v46;
            *buf = 138543618;
            v77 = v49;
            v78 = 2112;
            v79 = v22;
            _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, "%{public}@That's weird. Announce notification dictionary contain nil value for notification mode : %@", buf, 0x16u);

            v46 = v57;
          }

          objc_autoreleasePoolPop(v46);
        }

        v3 = v59;
        v5 = v60;
        v6 = 0x277CCA000;
        if (v31)
        {
          goto LABEL_42;
        }

LABEL_34:
        ++v7;
      }

      while (v5 != v7);
      v50 = [v3 countByEnumeratingWithState:&v71 objects:v82 count:16];
      v5 = v50;
    }

    while (v50);
  }

LABEL_42:

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v51 = v3;
  v52 = [v51 countByEnumeratingWithState:&v62 objects:v75 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v63;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v63 != v54)
        {
          objc_enumerationMutation(v51);
        }

        [(HMDUser *)self _removeAnnounceNotificationModeFileFromDiskForUserUUID:*(*(&v62 + 1) + 8 * i)];
      }

      v53 = [v51 countByEnumeratingWithState:&v62 objects:v75 count:16];
    }

    while (v53);
  }

  v56 = *MEMORY[0x277D85DE8];
}

uint64_t __51__HMDUser__migrateAnnounceNotificationModeIfNeeded__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) intValue];
  v4 = *(a1 + 48);

  return [v2 _updateAnnounceNotificationModeToLocalStore:v3 managedObjectContext:v4];
}

- (id)userIDsToMigrateAnnounceSettingsFrom
{
  v9[1] = *MEMORY[0x277D85DE8];
  if ([(HMDUser *)self isOwner])
  {
    v3 = [(HMDUser *)self uuid];
    v9[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v3 = [(HMDUser *)self home];
    v5 = [v3 homeManager];
    v6 = [v3 uuid];
    v4 = [v5 hh1UserIDsForCurrentUserForHomeUUID:v6];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_readAnnounceNotificationModeFromLocalStore
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(HMDUser *)self isCurrentUser];
  v4 = objc_autoreleasePoolPush();
  if (v3)
  {
    [(HMDUser *)self _migrateAnnounceNotificationModeIfNeeded];
    objc_autoreleasePoolPop(v4);
    v5 = [(HMDUser *)self home];
    v6 = [v5 uuid];
    v7 = [v5 backingStore];
    v8 = [v7 context];

    v9 = [v8 managedObjectContext];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __54__HMDUser__readAnnounceNotificationModeFromLocalStore__block_invoke;
    v16[3] = &unk_27868A010;
    v17 = v6;
    v18 = v9;
    v19 = self;
    v10 = v9;
    v11 = v6;
    [v10 performBlockAndWait:v16];
  }

  else
  {
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Not reading announce setting from local store as this user is not the current user", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __54__HMDUser__readAnnounceNotificationModeFromLocalStore__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MKFLocalBulletinAnnounceUserSettingRegistration fetchAnnounceRegistrationWithHomeUUID:*(a1 + 32) managedObjectContext:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    [*(a1 + 48) setAnnounceNotificationModeForCurrentDevice:{objc_msgSend(v2, "announceNotificationMode")}];
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 48);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "announceNotificationModeForCurrentDevice")}];
      v11 = 138543618;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Announce Notification Mode : %@", &v11, 0x16u);
    }
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 48);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Did not find announce setting in local store.", &v11, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v4);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_updateAnnounceNotificationModeToLocalStore:(unint64_t)a3 managedObjectContext:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [v6 hmd_assertIsExecuting];
  v7 = [(HMDUser *)self home];
  v8 = [v7 uuid];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    *buf = 138543618;
    v46 = v12;
    v47 = 2112;
    v48 = v13;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Going to store announce notification mode (%@) to local store", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = [MKFLocalBulletinAnnounceUserSettingRegistration fetchAnnounceRegistrationWithHomeUUID:v8 managedObjectContext:v6];
  if (!v14)
  {
    v14 = [[MKFLocalBulletinAnnounceUserSettingRegistration alloc] initWithContext:v6];
  }

  [(MKFLocalBulletinAnnounceUserSettingRegistration *)v14 setEnabled:1];
  [(MKFLocalBulletinAnnounceUserSettingRegistration *)v14 setHomeUUID:v8];
  v42 = a3;
  [(MKFLocalBulletinAnnounceUserSettingRegistration *)v14 setAnnounceNotificationMode:a3];
  v43 = 0;
  [v6 save:&v43];
  v15 = v43;
  v16 = objc_autoreleasePoolPush();
  v17 = v10;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v42];
    v40 = v8;
    v21 = v20 = v7;
    v22 = HMFBooleanToString();
    *buf = 138544130;
    v46 = v19;
    v47 = 2112;
    v48 = v21;
    v49 = 2112;
    v50 = v15;
    v51 = 2112;
    v52 = v22;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Storing announce notification mode (%@) saved to local store with error : %@, Success : %@", buf, 0x2Au);

    v7 = v20;
    v8 = v40;
  }

  objc_autoreleasePoolPop(v16);
  if (!v15)
  {
    v41 = v7;
    v23 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v24 = [v23 dictionaryForKey:@"deviceAnnounceMode"];
    v25 = [v24 mutableCopy];

    if (!v25)
    {
      v25 = [MEMORY[0x277CBEB38] dictionary];
    }

    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v42];
    v27 = [v8 UUIDString];
    [v25 setValue:v26 forKey:v27];

    v28 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v28 setObject:v25 forKey:@"deviceAnnounceMode"];

    v29 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v29 synchronize];

    v30 = objc_opt_new();
    v31 = MEMORY[0x277CBEB98];
    v44 = @"deviceAnnounceMode";
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
    v33 = [v31 setWithArray:v32];
    [v30 synchronizeUserDefaultsDomain:@"com.apple.homed" keys:v33];

    v34 = objc_autoreleasePoolPush();
    v35 = v17;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = HMFGetLogIdentifier();
      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v42];
      *buf = 138543618;
      v46 = v37;
      v47 = 2112;
      v48 = v38;
      _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Setting announce notification mode (%@) to defaults for NPSManager", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v34);
    v15 = 0;
    v7 = v41;
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_saveAnnounceSettingsToLocalStore:(unint64_t)a3
{
  v5 = [(HMDUser *)self home];
  v6 = [v5 backingStore];
  v7 = [v6 context];

  v8 = [v7 managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__HMDUser__saveAnnounceSettingsToLocalStore___block_invoke;
  v10[3] = &unk_278685DF8;
  v11 = v8;
  v12 = a3;
  v10[4] = self;
  v9 = v8;
  [v9 performBlock:v10];
}

- (void)_updateAnnounceNotificationMode:(unint64_t)a3
{
  v22 = *MEMORY[0x277D85DE8];
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
      v16 = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating Announce Setting from %@ to %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    if ([(HMDUser *)v8 announceNotificationModeForCurrentDevice]!= a3)
    {
      [(HMDUser *)v8 setAnnounceNotificationModeForCurrentDevice:a3];
      [(HMDUser *)v8 _saveAnnounceSettingsToLocalStore:[(HMDUser *)v8 announceNotificationModeForCurrentDevice]];
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Announce settings can only be updated on current user", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)updateAnnounceNotificationMode:(unint64_t)a3
{
  v5 = [(HMDUser *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__HMDUser_updateAnnounceNotificationMode___block_invoke;
  v6[3] = &unk_27868A0D0;
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
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Missing announce user settings in message payload: %@", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Announce settings can only be updated on current user: %@", buf, 0x16u);
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

  v11 = v6;

  if (v11)
  {
    v7 = [(HMDUser *)self userDataController];
    v8 = [v11 uuid];
    [v7 handleRemovedAccessory:v8];

    v9 = [(HMDUser *)self accessorySettingsDataController];
    v10 = [v11 uuid];
    [v9 handleRemovedAccessoryWithModelID:v10];
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
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __50__HMDUser_enableUserListeningHistoryForAccessory___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessorySettingsDataController];

  if (v2)
  {
    v3 = [*(a1 + 32) accessorySettingsDataController];
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
        aBlock[3] = &unk_27868A250;
        v4 = v44;
        v17 = v44;
        v46 = v17;
        v18 = _Block_copy(aBlock);
        v19 = [(HMDUser *)self accessorySettingsDataController];

        if (v19)
        {
          v20 = [(HMDUser *)self accessorySettingsDataController];
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
            _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Missing user data controller.", buf, 0xCu);
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
          _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Missing user update listening history control accessories in message payload: %@", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Can only modify own ULH control: %@", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Not processing user listening history update since the homes mismatch. This user's home (%@) is not in the home manager's homes: %@", buf, 0x20u);
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
  v7[3] = &unk_27868A750;
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
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Can only modify own Media Profile Content control: %@", buf, 0x16u);
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
      aBlock[3] = &unk_27868A250;
      v4 = v42;
      v17 = v42;
      v44 = v17;
      v18 = _Block_copy(aBlock);
      v19 = [(HMDUser *)self accessorySettingsDataController];

      if (v19)
      {
        v20 = [(HMDUser *)self accessorySettingsDataController];
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
          _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Missing user data controller.", buf, 0xCu);
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
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Missing access control accessories in message payload: %@", buf, 0x16u);
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
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Not processing media content profile update message as not part of homeManager homes. This user's home (%@) is not in the home manager's homes: %@", buf, 0x20u);
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
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_handleAssistantAccessControlUpdate:(id)a3
{
  v113 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUser *)self home];
  v6 = [v5 homeManager];
  v7 = [v6 homes];

  if (v5 && ([v7 containsObject:v5] & 1) != 0)
  {
    v8 = [(HMDUser *)self assistantAccessControl];
    v9 = [v8 accessories];
    v10 = [v9 copy];

    v105 = 0;
    v11 = [HMDAssistantAccessControl accessControlWithMessage:v4 user:self currentAccessories:v10 error:&v105];
    v12 = v105;
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
        v108 = v27;
        v109 = 2112;
        v110 = v4;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Failed to create access control from message: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v13 = v23;
      [v4 respondWithError:v23];
      v28 = 0;
      goto LABEL_51;
    }

    if (![(HMDUser *)self isCurrentUser])
    {
      _HMFPreconditionFailure();
    }

    v96 = v11;
    if (![(HMDUser *)self isOwner])
    {
      v93 = v13;
      v95 = v10;
      v91 = v8;
      v29 = MEMORY[0x277CBEB18];
      [v11 accessories];
      v31 = v30 = v11;
      v32 = [v29 arrayWithCapacity:{objc_msgSend(v31, "count")}];

      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v33 = [v30 accessories];
      v34 = [v33 countByEnumeratingWithState:&v99 objects:v106 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v100;
        do
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v100 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = [*(*(&v99 + 1) + 8 * i) uuid];
            [v32 addObject:v38];
          }

          v35 = [v33 countByEnumeratingWithState:&v99 objects:v106 count:16];
        }

        while (v35);
      }

      v39 = objc_autoreleasePoolPush();
      v40 = self;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = HMFGetLogIdentifier();
        *buf = 138543618;
        v108 = v42;
        v109 = 2112;
        v110 = v96;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@Updating shared user assistant access control to: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v39);
      v43 = [v96 areActivityNotificationsEnabledForPersonalRequests];
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __47__HMDUser__handleAssistantAccessControlUpdate___block_invoke_626;
      aBlock[3] = &unk_27868A250;
      v44 = v4;
      v98 = v44;
      v45 = _Block_copy(aBlock);
      v46 = [(HMDUser *)v40 accessorySettingsDataController];

      v13 = v93;
      if (v46)
      {
        v47 = [(HMDUser *)v40 accessorySettingsDataController];
        [v47 handleAssistantAccessControlAccessoryUUIDsUpdated:v32 activityNotificationsEnabledForPersonalRequests:v43 completion:v45];
      }

      else
      {
        v56 = objc_autoreleasePoolPush();
        v57 = v40;
        v58 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v59 = v89 = v56;
          *buf = 138543362;
          v108 = v59;
          _os_log_impl(&dword_229538000, v58, OS_LOG_TYPE_ERROR, "%{public}@Missing user data controller.", buf, 0xCu);

          v56 = v89;
        }

        objc_autoreleasePoolPop(v56);
        v47 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9005 description:@"User data controller not found. No settings for this user." underlyingError:0];
        [v44 respondWithError:v47];
      }

      v8 = v91;
      v10 = v95;
      goto LABEL_50;
    }

    if (!v8)
    {
      v48 = objc_autoreleasePoolPush();
      v49 = self;
      v50 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v52 = v51 = v10;
        *buf = 138543362;
        v108 = v52;
        _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_INFO, "%{public}@Cannot update without an existing access control", buf, 0xCu);

        v10 = v51;
      }

      objc_autoreleasePoolPop(v48);
      v53 = [v4 responseHandler];

      if (v53)
      {
        v54 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9004];
        v55 = [v4 responseHandler];
        (v55)[2](v55, v54, 0);
      }

      goto LABEL_50;
    }

    v92 = v13;
    v94 = v10;
    [v11 setOptions:{objc_msgSend(v8, "options") | objc_msgSend(v11, "options") | 1}];
    if (isInternalBuild())
    {
      v14 = [v11 accessories];
      if ([v14 count])
      {
        v15 = [(HMDUser *)self assistantAccessControl];
        v16 = [v15 accessories];
        if (![v16 count])
        {
          v90 = v8;
          v17 = [(HMDUser *)self assistantAccessControl];
          v18 = [v17 isEnabled];

          if (v18)
          {
            v8 = v90;
            goto LABEL_42;
          }

          v60 = v96;
          v14 = [v96 user];
          v61 = objc_autoreleasePoolPush();
          v62 = self;
          v63 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
          {
            v64 = HMFGetLogIdentifier();
            *buf = 138543618;
            v108 = v64;
            v109 = 2112;
            v110 = v14;
            _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_INFO, "%{public}@Enabling assistant access controls for internal user: %@", buf, 0x16u);

            v60 = v96;
          }

          objc_autoreleasePoolPop(v61);
          v65 = [HMDAssistantAccessControl alloc];
          [v60 accessories];
          v15 = v66 = v60;
          v67 = [(HMDAssistantAccessControl *)v65 initWithUser:v14 appleAccessories:v15 enabled:1];
          v16 = v66;
          v96 = v67;
          v8 = v90;
        }
      }
    }

LABEL_42:
    v68 = objc_autoreleasePoolPush();
    v69 = self;
    v70 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      v71 = HMFGetLogIdentifier();
      *buf = 138543618;
      v108 = v71;
      v109 = 2112;
      v110 = v96;
      _os_log_impl(&dword_229538000, v70, OS_LOG_TYPE_DEFAULT, "%{public}@Updating owner user assistant access control to: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v68);
    v28 = v96;
    if (!HMFEqualObjects())
    {
      v79 = v8;
      v80 = [v96 accessories];
      v81 = [v80 na_map:&__block_literal_global_622];

      v82 = objc_autoreleasePoolPush();
      v83 = v69;
      v84 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        v85 = HMFGetLogIdentifier();
        *buf = 138543618;
        v108 = v85;
        v109 = 2112;
        v110 = v96;
        _os_log_impl(&dword_229538000, v84, OS_LOG_TYPE_DEFAULT, "%{public}@Updating owner user assistant access control to: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v82);
      v86 = [v96 areActivityNotificationsEnabledForPersonalRequests];
      v103[0] = MEMORY[0x277D85DD0];
      v103[1] = 3221225472;
      v103[2] = __47__HMDUser__handleAssistantAccessControlUpdate___block_invoke_623;
      v103[3] = &unk_27868A250;
      v104 = v4;
      v87 = _Block_copy(v103);
      v88 = [(HMDUser *)v83 accessorySettingsDataController];
      [v88 handleAssistantAccessControlAccessoryUUIDsUpdated:v81 activityNotificationsEnabledForPersonalRequests:v86 completion:v87];

      v8 = v79;
      v13 = v92;
      v10 = v94;
      goto LABEL_51;
    }

    v72 = objc_autoreleasePoolPush();
    v73 = v69;
    v74 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
    {
      v75 = HMFGetLogIdentifier();
      *buf = 138543362;
      v108 = v75;
      _os_log_impl(&dword_229538000, v74, OS_LOG_TYPE_INFO, "%{public}@Updated access control resulted in no change", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v72);
    v76 = [v4 responseHandler];

    if (v76)
    {
      v77 = [v4 responseHandler];
      v77[2](v77, 0, 0);
    }

    v13 = v92;
    v10 = v94;
LABEL_50:
    v28 = v96;
LABEL_51:

    goto LABEL_52;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543874;
    v108 = v22;
    v109 = 2112;
    v110 = v5;
    v111 = 2112;
    v112 = v7;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Not processing assistant access control update message as not part of homeManager homes. This user's home (%@) is not in the home manager's homes: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v19);
LABEL_52:

  v78 = *MEMORY[0x277D85DE8];
}

void __47__HMDUser__handleAssistantAccessControlUpdate___block_invoke_623(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) responseHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) responseHandler];
    (v4)[2](v4, v5, 0);
  }
}

void __47__HMDUser__handleAssistantAccessControlUpdate___block_invoke_626(uint64_t a1, void *a2)
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
  v7[3] = &unk_27868A750;
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
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, v8, &v11, 0xCu);
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
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Received notification account was removed: %@", &v17, 0x16u);
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
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Received notification account was added: %@", &v21, 0x16u);
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
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Account handle does not exist", &v21, 0xCu);
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
  if (v4 && [v3 accountExistsForHandle:v4])
  {
    v5 = [v3 accountForHandle:v4];
    goto LABEL_12;
  }

  v6 = [(HMDUser *)self mergeIdentifier];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [(HMDUser *)self accountIdentifier];
    v7 = [v8 senderCorrelationIdentifier];

    if (!v7)
    {
      goto LABEL_8;
    }
  }

  v5 = [v3 existingAccountWithMergeIdentifier:v7];
  if (!v5)
  {
LABEL_8:
    if (v4)
    {
      v5 = [v3 accountForHandle:v4];
    }

    else
    {
      v5 = 0;
    }
  }

LABEL_12:

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
          _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Setting needs iTunes multi-user repair %@.", &v26, 0x16u);
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
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Missing value to set iTunes Multi User Repair: %@", &v26, 0x16u);
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
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Can only send this message to current user: %@", &v26, 0x16u);
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
            v62[0] = &unk_283E75C50;
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
              _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Sending user share repair message with device capabilites %@.", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v29);
            objc_initWeak(buf, v30);
            v57[0] = MEMORY[0x277D85DD0];
            v57[1] = 3221225472;
            v57[2] = __43__HMDUser__handleShareClientRepairRequest___block_invoke;
            v57[3] = &unk_278687F40;
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
              _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_ERROR, "%{public}@Unable to decoderepairInfo. %@", buf, 0x16u);
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
            _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_ERROR, "%{public}@Payload does not have repair info.", buf, 0xCu);
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
          _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_ERROR, "%{public}@Share request does not have valid home.", buf, 0xCu);
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
        _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Can only send this message from owner: %@", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Attempt to send repair request to mismatched user from message: %@", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to send remote share client repair message: %@", &v13, 0x16u);
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
  v35[0] = &unk_283E75C38;
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
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Sending user share message with device capabilites %@.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  objc_initWeak(buf, v22);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __72__HMDUser__sendSecureShareClientPayloadToMostEligibleDevice_completion___block_invoke;
  v27[3] = &unk_278689728;
  objc_copyWeak(&v29, buf);
  v25 = v7;
  v28 = v25;
  [(HMDUser *)v22 _sendAccountMessage:@"HMDUCM.rsr" payload:v6 deviceCapabilities:v20 multicast:0 preferPrimary:1 completion:v27];

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
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Received user share message response. nonce:%@ Error: %@", &v14, 0x20u);
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
          _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@Could not determine from user in message: %@", buf, 0x16u);
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
          _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, "%{public}@Could not determine from user with uuid: %@ home: %@ users: %@", buf, 0x2Au);
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
                  v79[3] = &unk_278683F48;
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
                    _os_log_impl(&dword_229538000, v75, OS_LOG_TYPE_INFO, "%{public}@Received request to send client payload to user : %@", buf, 0x16u);

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
                  _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Sending cloud share with owner message was blocked.", buf, 0xCu);
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
                _os_log_impl(&dword_229538000, v69, OS_LOG_TYPE_ERROR, "%{public}@From user %@ is not current user for message: %@", buf, 0x20u);
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
          _os_log_impl(&dword_229538000, v61, OS_LOG_TYPE_ERROR, "%{public}@Payload did not have required fields.", buf, 0xCu);
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
          _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_ERROR, "%{public}@Share request does not have valid home.", buf, 0xCu);
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
      _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Can only send this message to owner: %@", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Attempt to send client payload to mismatched identifier from message: %@", buf, 0x16u);
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
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to send cloud share with owner message. Error: %@", buf, 0x16u);
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
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Obtained share lookup: %@", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Do not have account handle: %@", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Attempt to send client payload to mismatched identifier from message: %@", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Attempt to retrieve pairing identity with mismatching identifier from message: %@", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Attempt to retrieve pairing identity for not current user: %@", buf, 0x16u);
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
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Received request to retrieve all pairing identities for the current user", buf, 0xCu);
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
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Sending legacy identities : %@", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unable to encode the pairing identities.", buf, 0xCu);
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
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v52 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received request to retrieve pairing identity for user", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDUser *)v6 pairingIdentity];
  if (!v9)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = v6;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543362;
      v52 = v32;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Could not find the pairing identity for the user", buf, 0xCu);
    }

    v33 = v29;
    goto LABEL_21;
  }

  if (([v4 entitlements] & 0x10) != 0 && -[HMDUser isCurrentUser](v6, "isCurrentUser"))
  {
    v10 = [(HMDUser *)v6 keyStore];
    v11 = [v9 identifier];
    v12 = [v10 getHH2ControllerKeyWithIdentifier:v11];

    if (v12)
    {
      v13 = [v12 privateKey];
      v14 = [v12 publicKey];
      v15 = [v9 publicKey];
      v16 = [v14 isEqual:v15];

      if (v16)
      {
        v17 = objc_alloc(MEMORY[0x277D0F8A8]);
        v18 = [v9 identifier];
        v19 = [v9 publicKey];
        v20 = [v17 initWithIdentifier:v18 publicKey:v19 privateKey:v13];

        v12 = v20;
        goto LABEL_10;
      }

      v43 = objc_autoreleasePoolPush();
      v44 = v6;
      v45 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = HMFGetLogIdentifier();
        *buf = 138543362;
        v52 = v46;
        _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@Failed to get matching public key for this user", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v43);
      v47 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 description:@"Local pairing identity does not match user pairing identity" reason:0 suggestion:0 underlyingError:0];
      [v4 respondWithError:v47];
    }

    else
    {
      v39 = objc_autoreleasePoolPush();
      v40 = v6;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = HMFGetLogIdentifier();
        *buf = 138543618;
        v52 = v42;
        v53 = 2112;
        v54 = 0;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to lookup our local pairing identity with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v39);
      v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Local pairing identity was not found" reason:0 suggestion:0 underlyingError:0];
      [v4 respondWithError:v13];
    }

    goto LABEL_33;
  }

  v12 = [v9 publicPairingIdentity];
LABEL_10:
  v21 = objc_autoreleasePoolPush();
  v22 = v6;
  v23 = HMFGetOSLogHandle();
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
  if (!v12)
  {
    if (v24)
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543362;
      v52 = v34;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Unable to retrieve pairing identity for user.", buf, 0xCu);
    }

    v33 = v21;
LABEL_21:
    objc_autoreleasePoolPop(v33);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v4 respondWithError:v12];
    goto LABEL_33;
  }

  if (v24)
  {
    v25 = HMFGetLogIdentifier();
    *buf = 138543618;
    v52 = v25;
    v53 = 2112;
    v54 = v12;
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Found pairing identity for user: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  v26 = encodeRootObject();
  v27 = v26;
  if (v26)
  {
    v49 = *MEMORY[0x277CD13E0];
    v50 = v26;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    [v4 respondWithPayload:v28];
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    v36 = v22;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543362;
      v52 = v38;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Unable to encode the pairing identity.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v35);
    v28 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    [v4 respondWithError:v28];
  }

LABEL_33:
  v48 = *MEMORY[0x277D85DE8];
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
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Attempt to retrieve pairing identity with mismatching identifier from message: %@", &v14, 0x16u);
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

- (void)setMergeIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  mergeIdentifier = self->_mergeIdentifier;
  self->_mergeIdentifier = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)mergeIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_mergeIdentifier;
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
    v9[3] = &unk_27868A750;
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
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (id)accountHandle
{
  os_unfair_lock_lock_with_options();
  v3 = self->_accountHandle;
  os_unfair_lock_unlock(&self->_lock);
  if (!v3)
  {
    v4 = [(HMDUser *)self home];
    v5 = [v4 homeManager];
    v6 = [v5 isDemoModeV2WithoutCKEnabled];

    if (v6)
    {
      v7 = +[HMDAppleAccountManager sharedManager];
      v8 = [v7 account];
      v3 = [v8 primaryHandle];
    }

    else
    {
      v3 = 0;
    }
  }

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
    return qword_22A587E68[v3];
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
  if (v2 > 5)
  {
    return 0;
  }

  else
  {
    return qword_22A587E38[v2];
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Deregistering user", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDUser *)v4 messageDispatcher];
  [v7 deregisterReceiver:v4];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)registerForMessages
{
  v50[1] = *MEMORY[0x277D85DE8];
  v3 = [(HMDUser *)self messageDispatcher];
  v4 = *MEMORY[0x277CD13E8];
  v5 = [HMDXPCMessagePolicy policyWithEntitlements:13];
  v50[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:1];
  [v3 registerForMessage:v4 receiver:self policies:v6 selector:sel__handlePairingIdentityRequest_];

  v7 = *MEMORY[0x277CD1370];
  v8 = [HMDXPCMessagePolicy policyWithEntitlements:13];
  v49 = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
  [v3 registerForMessage:v7 receiver:self policies:v9 selector:sel__handleLegacyPairingIdentityRequest_];

  v10 = *MEMORY[0x277CD1490];
  v11 = [HMDXPCMessagePolicy policyWithEntitlements:517];
  v48 = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
  [v3 registerForMessage:v10 receiver:self policies:v12 selector:sel__handleShareLookupInfoRequest_];

  v13 = *MEMORY[0x277CD1460];
  v14 = [HMDXPCMessagePolicy policyWithEntitlements:517];
  v47 = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
  [v3 registerForMessage:v13 receiver:self policies:v15 selector:sel__handleMultiUserSharePayloadRequest_];

  v16 = *MEMORY[0x277CD14A0];
  v17 = [HMDXPCMessagePolicy policyWithEntitlements:517];
  v46 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
  [v3 registerForMessage:v16 receiver:self policies:v18 selector:sel__handleShareClientRepairRequest_];

  v19 = *MEMORY[0x277CD13D0];
  v20 = [HMDXPCMessagePolicy policyWithEntitlements:517];
  v45 = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
  [v3 registerForMessage:v19 receiver:self policies:v21 selector:sel__handleNeedsiTunesMultiUserRepair_];

  if ([(HMDUser *)self isCurrentUser])
  {
    v22 = *MEMORY[0x277CD12D0];
    v23 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v44 = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
    [v3 registerForMessage:v22 receiver:self policies:v24 selector:sel__handleAnnounceSettingsUpdate_];
  }

  v25 = [(HMDUser *)self home];
  v26 = [HMDUserMessagePolicy userMessagePolicyWithHome:v25 userPrivilege:3 remoteAccessRequired:0];
  v27 = *MEMORY[0x277CD1430];
  v28 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v43[0] = v28;
  v43[1] = v26;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
  [v3 registerForMessage:v27 receiver:self policies:v29 selector:sel__handleFetchProfilePhoto_];

  v30 = [v25 featuresDataSource];
  LODWORD(v28) = [v30 isHomeActivityStateFeatureEnabled];

  if (v28)
  {
    v31 = [HMDUserMessagePolicy userMessagePolicyWithHome:v25 userPrivilege:5 remoteAccessRequired:0];
    v32 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v42[0] = v31;
    v42[1] = v32;
    v33 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v42[2] = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:3];
    [v3 registerForMessage:@"HMDUser.requestDisclosureNotificationAccountMessage" receiver:self policies:v34 selector:sel_handleRequestDisclosureNotificationAccountMessage_];

    v35 = *MEMORY[0x277CD1360];
    v41[0] = v31;
    v41[1] = v32;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
    [v3 registerForMessage:v35 receiver:self policies:v36 selector:sel_handleCompleteDisclosureOfAdaptiveTemperatureAutomationsMessage_];

    v37 = [HMDRemoteMessagePolicy defaultSecurePrimaryResidentPolicy:v31];
    v40[2] = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:3];
    [v3 registerForMessage:@"HMDUser.completeDisclosureOfAdaptiveTemperatureAutomationsRemoteMessage" receiver:self policies:v38 selector:sel_handleCompleteDisclosureOfAdaptiveTemperatureAutomationsRemoteMessage_];
  }

  v39 = *MEMORY[0x277D85DE8];
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
  block[3] = &unk_27868A728;
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
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Clearing participants from old user settings backingstores", &v21, 0xCu);
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
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Initializing new user settings backingstores", &v21, 0xCu);
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
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Updating participants in current users shared settings backingstore: %@", &v21, 0x16u);
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
  v7[3] = &unk_27868A750;
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
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v8;
    v27 = 2112;
    v28 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Initializing user settings with home: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if ([v4 isOwnerUser])
  {
    if (![(HMDUser *)v6 isRestrictedGuest])
    {
      v9 = [v4 backingStore];
      v10 = [v9 context];

      v11 = [HMDUserAccessorySettingsDataController alloc];
      v12 = [(HMDUser *)v6 userUUID];
      v13 = [(HMDUserAccessorySettingsDataController *)v11 initWithUserModelID:v12 managedObjectContext:v10];
      [(HMDUser *)v6 setAccessorySettingsDataController:v13];
LABEL_8:
    }
  }

  else if ([(HMDUser *)v6 isCurrentUser])
  {
    v14 = +[HMDCoreData sharedInstance];
    v10 = [v14 newManagedObjectContext];

    v15 = [v4 uuid];
    v16 = HMDWorkingContextNameForHomeUUID(v15);
    [v10 setName:v16];

    v17 = @"HMD.1P";
    [v10 setTransactionAuthor:@"HMD.1P"];

    v12 = +[HMDCoreData sharedInstance];
    v18 = [HMDSharedUserAccessorySettingsDataController alloc];
    v13 = [(HMDUser *)v6 userUUID];
    v19 = [v4 uuid];
    v20 = [v12 cloudPrivateStore];
    v21 = [(HMDSharedUserAccessorySettingsDataController *)v18 initWithUserModelID:v13 homeModelID:v19 privateStore:v20 managedObjectContext:v10];
    [(HMDUser *)v6 setAccessorySettingsDataController:v21];

    goto LABEL_8;
  }

  queue = v6->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HMDUser_initializeUserSettingsWithHome___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = v6;
  dispatch_async(queue, block);

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __42__HMDUser_initializeUserSettingsWithHome___block_invoke(uint64_t a1)
{
  [*(a1 + 32) configurePhotosPersonDataManager];
  v2 = *(a1 + 32);

  return [v2 configurePersonSettingsManager];
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
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

void __47__HMDUser_handleUserDataControllerInitialized___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isCurrentUser] && isiPhoneDevice())
  {
    v4 = [[HMDSiriMultiUserNewLanguageNotificationManagerContext alloc] initWithUser:*(a1 + 32) workQueue:*(*(a1 + 32) + 360)];
    [(HMDSiriMultiUserNewLanguageNotificationManagerContext *)v4 configure];
    v2 = [[HMDSiriMultiUserNewLanguageNotificationManager alloc] initWithContext:v4];
    [*(a1 + 32) setSiriMultiUserNewLanguageNotificationManager:v2];

    v3 = [*(a1 + 32) siriMultiUserNewLanguageNotificationManager];
    [v3 checkAllMediaAccessoriesAndPostNotificationIfNecessary];
  }
}

- (void)configureWithHome:(id)a3
{
  v46[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 msgDispatcher];
  [(HMDUser *)self setMessageDispatcher:v5];

  [(HMDUser *)self setHome:v4];
  if (![(HMDUser *)self isRemoteGateway])
  {
    isWatch();
    [(HMDUser *)self configureCloudShareTrustManager];
    [(HMDUser *)self initializeUserSettingsWithHome:v4];
  }

  v6 = [(HMDUser *)self assistantAccessControl];
  [(HMDUser *)self _readAnnounceNotificationModeFromLocalStore];
  if (v6 || [(HMDUser *)self isCurrentUser]&& (v6 = [[HMDAssistantAccessControl alloc] initWithUser:self], [(HMDUser *)self setAssistantAccessControl:v6], v6))
  {
    v7 = [(HMDUser *)self accessorySettingsDataController];
    [(HMDAssistantAccessControl *)v6 configureWithSettingsController:v7];
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
    *buf = 138544130;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = v12;
    *&buf[22] = 2112;
    v45 = v13;
    LOWORD(v46[0]) = 2112;
    *(v46 + 2) = v14;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Configuring [%@] with account: %@, isCurrentUser: %@", buf, 0x2Au);
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
      *buf = 138543618;
      *&buf[4] = v18;
      *&buf[12] = 2112;
      *&buf[14] = v19;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Registering for account notifications & Auditing the account as [%@] is not current user.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    __registerForAccountNotifications(v16);
    v20 = v16;
    v21 = v20;
    if (v20)
    {
      queue = v20->_queue;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = ____auditAccount_block_invoke;
      v45 = &unk_27868A728;
      v46[0] = v20;
      dispatch_async(queue, buf);
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

  if ([(HMDUser *)v9 isRestrictedGuest])
  {
    [(HMDUser *)v9 cancelRestrictedGuestScheduledTimers];
    v28 = [(HMDUser *)v9 dataSource];
    v29 = [v28 notificationCenter];
    v30 = [v4 residentDeviceManager];
    [v29 addObserver:v9 selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:v30];
  }

  if ([(HMDUser *)v9 isSharedUsersDeviceForProfileMetadata])
  {
    v31 = [(HMDUser *)v9 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__HMDUser_configureWithHome___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = v9;
    dispatch_async(v31, block);

    v32 = [(HMDUser *)v9 dataSource];
    v33 = [v32 notificationCenter];
    v34 = +[HMDAppleAccountManager sharedManager];
    [v33 addObserver:v9 selector:sel___handleModifiedAccount_ name:@"HMDAppleAccountManagerAccountModifiedNotification" object:v34];

    v35 = [v4 homeManager];
    v36 = [v35 fmfHandler];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __29__HMDUser_configureWithHome___block_invoke_2;
    v42[3] = &unk_278683EF8;
    v42[4] = v9;
    [v36 queryFMFStatusWithCompletion:v42];

    v37 = [(HMDUser *)v9 dataSource];
    v38 = [v37 notificationCenter];
    [v38 addObserver:v9 selector:sel__handleFMFDeviceChangedNotification_ name:@"HMDFMFStatusUpdateNotification" object:0];
  }

  if ([(HMDUser *)v9 isOwner])
  {
    v39 = [(HMDUser *)v9 queue];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __29__HMDUser_configureWithHome___block_invoke_4;
    v41[3] = &unk_27868A728;
    v41[4] = v9;
    dispatch_async(v39, v41);
  }

  v40 = *MEMORY[0x277D85DE8];
}

void __29__HMDUser_configureWithHome___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 home];
  [v1 _pushTextMetadataToStoreForHome:v2];
}

void __29__HMDUser_configureWithHome___block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 value] == 2)
  {
    v3 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__HMDUser_configureWithHome___block_invoke_3;
    block[3] = &unk_27868A728;
    block[4] = *(a1 + 32);
    dispatch_async(v3, block);
  }
}

void __29__HMDUser_configureWithHome___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 home];
  [v1 _pushPhotoMetadataToStoreForHome:v2];
}

- (BOOL)isSharedUsersDeviceForProfileMetadata
{
  if (!_os_feature_enabled_impl() || [(HMDUser *)self isOwner]|| [(HMDUser *)self isRestrictedGuest])
  {
    return 0;
  }

  return [(HMDUser *)self isCurrentUser];
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
  v66[17] = *MEMORY[0x277D85DE8];
  v4 = [(HMDUser *)self home];
  v5 = MEMORY[0x277CCACA8];
  v62 = [(HMDUser *)self uuid];
  v61 = [v5 stringWithFormat:@"UUID: %@", v62];
  v66[0] = v61;
  v6 = MEMORY[0x277CCACA8];
  [v4 isAccessToHomeAllowed];
  v60 = HMFBooleanToString();
  v59 = [v6 stringWithFormat:@"Is Access Allowed: %@", v60];
  v66[1] = v59;
  v7 = MEMORY[0x277CCACA8];
  [(HMDUser *)self isCurrentUser];
  v58 = HMFBooleanToString();
  v57 = [v7 stringWithFormat:@"Is Current User: %@", v58];
  v66[2] = v57;
  v8 = MEMORY[0x277CCACA8];
  [(HMDUser *)self isAdministrator];
  v56 = HMFBooleanToString();
  v55 = [v8 stringWithFormat:@"Is Admin: %@", v56];
  v66[3] = v55;
  v9 = MEMORY[0x277CCACA8];
  [(HMDUser *)self isRemoteAccessAllowed];
  v54 = HMFBooleanToString();
  v53 = [v9 stringWithFormat:@"Is Remote Access Allowed: %@", v54];
  v66[4] = v53;
  v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"User Privilege: %lu", -[HMDUser privilege](self, "privilege")];
  v66[5] = v52;
  v10 = MEMORY[0x277CCACA8];
  v51 = [(HMDUser *)self restrictedGuestAccessSettings];
  v50 = [v51 uuidsOfAllowedAccessories];
  v49 = [v10 stringWithFormat:@"allowedAccessories: %@", v50];
  v66[6] = v49;
  v11 = MEMORY[0x277CCACA8];
  v48 = [(HMDUser *)self restrictedGuestAccessSettings];
  v47 = [v48 schedule];
  v46 = [v11 stringWithFormat:@"schedule : %@", v47];
  v66[7] = v46;
  v12 = MEMORY[0x277CCACA8];
  v45 = shouldLogPrivateInformation();
  if (v45)
  {
    v13 = [(HMDUser *)self displayName];
  }

  else
  {
    v13 = @"...";
  }

  v36 = v13;
  v44 = [v12 stringWithFormat:@"Display Name: %@", v13];
  v66[8] = v44;
  v14 = MEMORY[0x277CCACA8];
  [(HMDUser *)self camerasAccessLevel];
  v43 = HMUserCameraAccessLevelAsString();
  v42 = [v14 stringWithFormat:@"Cameras Access Level: %@", v43];
  v66[9] = v42;
  v15 = MEMORY[0x277CCACA8];
  [(HMDUser *)self isAnnounceAccessAllowed];
  v40 = HMFBooleanToString();
  v39 = [v15 stringWithFormat:@"Is Announce Access Allowed: %@", v40];
  v66[10] = v39;
  v16 = MEMORY[0x277CCACA8];
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser announceAccessLevel](self, "announceAccessLevel")}];
  v37 = [v16 stringWithFormat:@"Announce Access Level: %@", v38];
  v66[11] = v37;
  v63 = v4;
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Home: %@", v4];
  v66[12] = v17;
  v18 = MEMORY[0x277CCACA8];
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser audioAnalysisUserDropInAccessLevel](self, "audioAnalysisUserDropInAccessLevel")}];
  v20 = [v18 stringWithFormat:@"AudioDropIn: %@", v19];
  v66[13] = v20;
  v21 = MEMORY[0x277CCACA8];
  [(HMDUser *)self isPending];
  v22 = HMFBooleanToString();
  v23 = [v21 stringWithFormat:@"Is Pending User: %@", v22];
  v66[14] = v23;
  v24 = MEMORY[0x277CCACA8];
  v25 = [(HMDUser *)self matterCASEAuthenticatedTagID];
  v26 = [v24 stringWithFormat:@"CATID: %@", v25];
  v66[15] = v26;
  v27 = MEMORY[0x277CCACA8];
  v28 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDUser adaptiveTemperatureAutomationsDisclosureStatus](self, "adaptiveTemperatureAutomationsDisclosureStatus")}];
  v29 = [v27 stringWithFormat:@"isDisclosedOnATA: %@", v28];
  v66[16] = v29;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:17];

  if (v45)
  {
  }

  v64[0] = *MEMORY[0x277D0F170];
  v30 = [v41 componentsJoinedByString:{@", "}];
  v64[1] = @"Photos Person Manager Settings";
  v65[0] = v30;
  v31 = [(HMDUser *)self photosPersonManagerSettings];
  v32 = [v31 description];
  v65[1] = v32;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:2];

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

- (id)attributeDescriptions
{
  v58[16] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v57 = [(HMDUser *)self uuid];
  v56 = [v57 UUIDString];
  v55 = [v3 initWithName:@"UUID" value:?];
  v58[0] = v55;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v54 = [(HMDUser *)self mergeIdentifier];
  v53 = [v4 initWithName:@"MID" value:?];
  v58[1] = v53;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v52 = [(HMDUser *)self pairingIdentity];
  v51 = [v5 initWithName:@"PAID" value:? options:? formatter:?];
  v58[2] = v51;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v50 = [(HMDUser *)self accountHandle];
  v49 = [v6 initWithName:@"HNDL" value:?];
  v58[3] = v49;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(HMDUser *)self displayName];
  v47 = [MEMORY[0x277D0F8D8] defaultFormatter];
  v48 = v8;
  v46 = [v7 initWithName:@"DN" value:v8 options:0 formatter:?];
  v58[4] = v46;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMDUser *)self privilege];
  if (v10 > 5)
  {
    v11 = @"None";
  }

  else
  {
    v11 = off_278684178[v10];
  }

  v45 = [v9 initWithName:@"PV" value:v11];
  v58[5] = v45;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDUser *)self isRemoteAccessAllowed];
  v44 = HMFBooleanToString();
  v43 = [v12 initWithName:@"RA" value:v44];
  v58[6] = v43;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  v42 = [(HMDUser *)self presenceAuthStatus];
  v41 = [v13 initWithName:@"PA" value:v42];
  v58[7] = v41;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  v40 = [(HMDUser *)self home];
  v39 = [v14 initWithName:@"HM" value:v40];
  v58[8] = v39;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDUser *)self camerasAccessLevel];
  v38 = HMUserCameraAccessLevelAsString();
  v37 = [v15 initWithName:@"CA" value:v38];
  v58[9] = v37;
  v16 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDUser *)self isAnnounceAccessAllowed];
  v36 = HMFBooleanToString();
  v35 = [v16 initWithName:@"AA" value:v36];
  v58[10] = v35;
  v17 = objc_alloc(MEMORY[0x277D0F778]);
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser announceAccessLevel](self, "announceAccessLevel")}];
  v19 = [v17 initWithName:@"AL" value:v18];
  v58[11] = v19;
  v20 = objc_alloc(MEMORY[0x277D0F778]);
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser audioAnalysisUserDropInAccessLevel](self, "audioAnalysisUserDropInAccessLevel")}];
  v22 = [v20 initWithName:@"AAN" value:v21];
  v58[12] = v22;
  v23 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDUser *)self isPending];
  v24 = HMFBooleanToString();
  v25 = [v23 initWithName:@"PU" value:v24];
  v58[13] = v25;
  v26 = objc_alloc(MEMORY[0x277D0F778]);
  v27 = [(HMDUser *)self matterCASEAuthenticatedTagID];
  v28 = [v26 initWithName:@"CATID" value:v27];
  v58[14] = v28;
  v29 = objc_alloc(MEMORY[0x277D0F778]);
  v30 = [(HMDUser *)self restrictedGuestAccessSettings];
  v31 = [v29 initWithName:@"RGS" value:v30];
  v58[15] = v31;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:16];

  v32 = *MEMORY[0x277D85DE8];

  return v34;
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
  if (v4 == self || (-[HMDUser account](v4, "account"), v6 = objc_claimAutoreleasedReturnValue(), -[HMDUser account](self, "account"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v6 isEqual:v7], v7, v6, (v8 & 1) != 0))
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
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Accounts do not match : [otherUser : %@] [self : %@]", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    v6 = v4;
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

    if (!v8)
    {
      goto LABEL_16;
    }

    v9 = [(HMDUser *)v8 home];
    v10 = [v9 uuid];
    v11 = [(HMDUser *)self home];
    v12 = [v11 uuid];
    v13 = [v10 isEqual:v12];

    if (v13)
    {
      v14 = [(HMDUser *)v8 account];
      v15 = [(HMDUser *)self account];
      v16 = [v14 isEqual:v15];

      if (v16)
      {
        v17 = 1;
LABEL_17:

        goto LABEL_18;
      }

      v18 = objc_autoreleasePoolPush();
      v23 = self;
      v20 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_15;
      }

      v21 = HMFGetLogIdentifier();
      v26 = 138543874;
      v27 = v21;
      v28 = 2112;
      v29 = v8;
      v30 = 2112;
      v31 = v23;
      v22 = "%{public}@Accounts do not match : [otherUser : %@] [self : %@]";
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = self;
      v20 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
LABEL_15:

        objc_autoreleasePoolPop(v18);
LABEL_16:
        v17 = 0;
        goto LABEL_17;
      }

      v21 = HMFGetLogIdentifier();
      v26 = 138543874;
      v27 = v21;
      v28 = 2112;
      v29 = v8;
      v30 = 2112;
      v31 = v19;
      v22 = "%{public}@Homes do not match: [otherUser: %@] [self : %@]";
    }

    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEBUG, v22, &v26, 0x20u);

    goto LABEL_15;
  }

  v17 = 1;
LABEL_18:

  v24 = *MEMORY[0x277D85DE8];
  return v17;
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
  v39.receiver = self;
  v39.super_class = HMDUser;
  v19 = [(HMDUser *)&v39 init];
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
    v20->_crossfadeDuration = 4.0;
    v20->_needsiTunesMultiUserRepair = 0;
    v20->_userCloudShareWithOwnerMessagingState = 0;
    if ([(HMDUser *)v20 isRestrictedGuest])
    {
      v35 = [HMDRestrictedGuestHomeAccessSettings alloc];
      v36 = [(HMDRestrictedGuestHomeAccessSettings *)v35 initWithAllowedAccessories:MEMORY[0x277CBEBF8] schedule:0];
      restrictedGuestAccessSettings = v20->_restrictedGuestAccessSettings;
      v20->_restrictedGuestAccessSettings = v36;
    }

    [(HMDUser *)v20 initSwiftExtensions];
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
        goto LABEL_28;
      }

      v7 = +[HMDAccountHandleFormatter defaultFormatter];
      v8 = [v4 userID];
      v6 = [v7 accountHandleFromString:v8];
    }

    v9 = [v4 idsMergeIdentifier];
    v10 = [v4 pairingIdentity];
    if (v10)
    {
      v11 = MEMORY[0x277CFEC20];
      v12 = [v4 pairingIdentity];
      v13 = [v11 hmd_pairingIdentityWithDictionary:v12];
    }

    else
    {
      v13 = 0;
    }

    v14 = [v4 privilege];
    v15 = -[HMDUser initWithAccountHandle:homeUUID:pairingIdentity:privilege:](self, "initWithAccountHandle:homeUUID:pairingIdentity:privilege:", v6, 0, v13, [v14 integerValue]);

    if (v15)
    {
      v16 = [v4 uuid];
      uuid = v15->_uuid;
      v15->_uuid = v16;

      v18 = [v4 remoteAccessAllowed];
      v15->_remoteAccessAllowed = [v18 BOOLValue];

      v19 = MEMORY[0x277CD1F00];
      v20 = [v4 presenceAuthorizationStatus];
      v21 = [v19 authWithNumber:v20];
      presenceAuthStatus = v15->_presenceAuthStatus;
      v15->_presenceAuthStatus = v21;

      v23 = [v4 accountIdentifier];
      accountIdentifier = v15->_accountIdentifier;
      v15->_accountIdentifier = v23;

      objc_storeStrong(&v15->_mergeIdentifier, v9);
      v25 = [v4 camerasAccessLevel];

      if (v25)
      {
        v26 = [v4 camerasAccessLevel];
        v15->_camerasAccessLevel = [v26 integerValue];
      }

      v27 = v4;
      if ([v27 propertyWasSet:@"announceAccessLevel"])
      {
        v28 = [v27 announceAccessLevel];
        v29 = v15;
        v30 = 0;
        v31 = v28;
      }

      else
      {
        v28 = [v27 announceAccessAllowed];
        v29 = v15;
        v30 = v28;
        v31 = 0;
      }

      v32 = [(HMDUser *)v29 announceUserAccessLevelFromAnnounceAccessAllowed:v30 announceAccessLevel:v31];

      v15->_announceAccessLevel = v32;
      v33 = [v27 matterCASEAuthenticatedTagID];
      if (v33)
      {
        v34 = v33;
        v35 = [v27 matterCASEAuthenticatedTagID];
        v36 = [v35 integerValue];

        if (v36)
        {
          v37 = [v27 matterCASEAuthenticatedTagID];
          matterCASEAuthenticatedTagID = v15->_matterCASEAuthenticatedTagID;
          v15->_matterCASEAuthenticatedTagID = v37;
        }
      }

      if ([(HMDUser *)v15 isRestrictedGuest])
      {
        v39 = v27;
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
          v42 = [v41 allowedAccessoryUUIDs];
          v43 = v42;
          v44 = MEMORY[0x277CBEBF8];
          if (v42)
          {
            v44 = v42;
          }

          v45 = v44;

          v46 = [[HMDRestrictedGuestHomeAccessSettings alloc] initWithAllowedAccessories:v45 schedule:0];
          restrictedGuestAccessSettings = v15->_restrictedGuestAccessSettings;
          v15->_restrictedGuestAccessSettings = v46;
        }
      }

      v48 = [v27 matCredIPKExternalRepresentation];
      acwgIssuerPublicKeyExternalRepresentation = v15->_acwgIssuerPublicKeyExternalRepresentation;
      v15->_acwgIssuerPublicKeyExternalRepresentation = v48;
    }

    v50 = +[HMDAccountMetadataFactory makeInstance];
    accountMetadata = v15->_accountMetadata;
    v15->_accountMetadata = v50;

    v52 = [v4 iCloudAltDSID];
    iCloudAltDSID = v15->_iCloudAltDSID;
    v15->_iCloudAltDSID = v52;

    v54 = [v4 firstName];
    firstName = v15->_firstName;
    v15->_firstName = v54;

    v56 = [v4 lastName];
    lastName = v15->_lastName;
    v15->_lastName = v56;

    self = v15;
    v5 = self;
  }

LABEL_28:

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

- (BOOL)updateAdaptiveTemperatureAutomationsDisclosureStatus:(int64_t)a3
{
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  adaptiveTemperatureAutomationsDisclosureStatus = self->_adaptiveTemperatureAutomationsDisclosureStatus;
  if (adaptiveTemperatureAutomationsDisclosureStatus < a3)
  {
    self->_adaptiveTemperatureAutomationsDisclosureStatus = a3;
  }

  os_unfair_lock_unlock(&self->_lock);
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = @"Did not";
    v13 = 138544130;
    v15 = 2112;
    v14 = v9;
    if (adaptiveTemperatureAutomationsDisclosureStatus < a3)
    {
      v10 = @"Did";
    }

    v16 = v10;
    v17 = 2048;
    v18 = adaptiveTemperatureAutomationsDisclosureStatus;
    v19 = 2048;
    v20 = a3;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@%@ update local adaptive temperature automations disclosure status from %ld to %ld", &v13, 0x2Au);
  }

  objc_autoreleasePoolPop(v6);
  v11 = *MEMORY[0x277D85DE8];
  return adaptiveTemperatureAutomationsDisclosureStatus < a3;
}

- (void)setIsDisclosedOnAdaptiveTemperatureAutomations:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_adaptiveTemperatureAutomationsDisclosureStatus = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)adaptiveTemperatureAutomationsDisclosureStatus
{
  os_unfair_lock_lock_with_options();
  adaptiveTemperatureAutomationsDisclosureStatus = self->_adaptiveTemperatureAutomationsDisclosureStatus;
  os_unfair_lock_unlock(&self->_lock);
  return adaptiveTemperatureAutomationsDisclosureStatus;
}

@end