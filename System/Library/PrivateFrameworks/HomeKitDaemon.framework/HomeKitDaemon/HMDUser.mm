@interface HMDUser
+ (BOOL)isAllowedToAddOrRemoveHAPPairingsOnAccessoryFor:(id)for;
+ (HMDUser)userWithDictionary:(id)dictionary home:(id)home;
+ (id)UUIDWithUserID:(id)d forHomeIdentifier:(id)identifier uuid:(id)uuid pairingIdentity:(id)identity;
+ (id)_openZoneWithName:(id)name inDatabase:(id)database;
+ (id)allLastUserSyncDataArchives;
+ (id)allowedClassesForAnnounceNotificationMode;
+ (id)allowedClassesForSyncData;
+ (id)appendRootPath:(id)path withSettingPath:(id)settingPath;
+ (id)fetchSharedUserDataRootForHomeUUID:(id)d moc:(id)moc coreData:(id)data;
+ (id)fetchSharedUserDataRootForHomeUUID:(id)d moc:(id)moc coreData:(id)data ttrManager:(id)manager;
+ (id)getSettingsUsingPreOrderTraversal:(id)traversal rootUUID:(id)d keyPath:(id)path;
+ (id)getSyncDataFromLocalDiskWithArchive:(id)archive;
+ (id)localPrivateZoneForSharedUserUUID:(id)d database:(id)database;
+ (id)localSharedZoneForSharedUserUUID:(id)d database:(id)database;
+ (id)logCategory;
+ (id)ownerWithUserID:(id)d home:(id)home pairingIdentity:(id)identity homeManager:(id)manager;
+ (id)privateZoneNameForUserUUID:(id)d;
+ (id)sharedZoneNameForUserUUID:(id)d;
+ (id)userIDForAccountHandle:(id)handle;
+ (unint64_t)hmdUserPrivilegeFromHMMTRUserPrivilege:(unint64_t)privilege;
+ (unint64_t)hmmtrUserPrivilegeFromHMDUserPrivilege:(unint64_t)privilege;
+ (unint64_t)privilegeFromDictionary:(id)dictionary;
+ (void)__findOrCreateCKSharedUserAccessorySettingsForAccessory:(id)accessory usingManagedObjectContext:(id)context rootShareObject:(id)object listeningHistoryEnabled:(id)enabled mediaContentProfileEnabled:(id)profileEnabled personalRequestsEnabled:(id)requestsEnabled;
+ (void)_fetchAndMigrateAssistantAccessControlModelV2ToCoreDataFromLocalZone:(id)zone managedObjectContext:(id)context rootShareObject:(id)object;
+ (void)_fetchAndMigrateMediaContentProfileAccessControlModelToCoreDataFromLocalZone:(id)zone managedObjectContext:(id)context rootShareObject:(id)object;
+ (void)_fetchAndMigratePhotosPersonManagerSettingsFromLocalZone:(id)zone managedObjectContext:(id)context rootShareObject:(id)object;
+ (void)_fetchAndMigrateUserListeningHistoryUpdatedControlModelToCoreDataFromLocalZone:(id)zone managedObjectContext:(id)context rootShareObject:(id)object;
+ (void)_saveSharedUserSettingsToCoreData:(id)data managedObjectContext:(id)context rootShareObject:(id)object;
+ (void)migrateHH1SettingsToHH2ForSharedUserWithUUID:(id)d homeUUID:(id)iD privateZone:(id)zone backingStoreContext:(id)context;
+ (void)migrateHH1SettingsToHH2ForSharedUserWithUUID:(id)d homeUUID:(id)iD sharedZone:(id)zone backingStoreContext:(id)context;
- (AVOutputDeviceAuthorizedPeer)av_authorizedPeer;
- (BOOL)_isExplicitContentValueEnabledForAppleMediaAccessory:(id)accessory;
- (BOOL)_setRemoteAccessAllowed:(BOOL)allowed;
- (BOOL)areAccessoriesInAllowedList:(id)list;
- (BOOL)cloudShareTrustManager:(id)manager shouldShareTrustWithUser:(id)user;
- (BOOL)hasCameraClipsAccess;
- (BOOL)hasDeviceWithHomeKitVersionGreaterThanVersion:(id)version;
- (BOOL)isAccessCurrentlyAllowedBySchedule;
- (BOOL)isAccountEqualWithUser:(id)user;
- (BOOL)isAllowedToAccessActivityHistory;
- (BOOL)isAllowedToAddOrRemoveHAPPairingsOnAccessory;
- (BOOL)isAllowedToHaveCATId;
- (BOOL)isAllowedToSharePhotosPersonManagerData;
- (BOOL)isAnnounceAccessAllowed;
- (BOOL)isCurrentUser;
- (BOOL)isCurrentUserAndOwner;
- (BOOL)isEqual:(id)equal;
- (BOOL)isLocalAccessoryCommunicationAllowed;
- (BOOL)isOwnerCapableForTrustManager:(id)manager;
- (BOOL)isRemoteAccessAllowed;
- (BOOL)isRunningOnHomeOwnersDevice;
- (BOOL)isSharedUsersDeviceForProfileMetadata;
- (BOOL)isValid;
- (BOOL)matchingPairingIdentityIdentifier:(id)identifier;
- (BOOL)refreshDisplayName;
- (BOOL)requiresMakoSupport;
- (BOOL)shouldWeOverrideRemoteAccessAllowedDespiteNoRemoteAccessAllowed;
- (BOOL)updateAdaptiveTemperatureAutomationsDisclosureStatus:(int64_t)status;
- (BOOL)updateAdministrator:(BOOL)administrator;
- (BOOL)userDataController:(id)controller isAccessoryUserListeningHistoryUpdateCapable:(id)capable;
- (BOOL)userDataController:(id)controller isAppleMediaAccessory:(id)accessory;
- (BOOL)userDataController:(id)controller isHAPAccessory:(id)accessory;
- (BOOL)userDataController:(id)controller isMediaContentProfileCapableAccessoryID:(id)d;
- (BOOL)userDataController:(id)controller isPersonalRequestCapableAccessoryID:(id)d;
- (HAPPairingIdentity)pairingIdentity;
- (HMDAccountIdentifier)accountIdentifier;
- (HMDAssistantAccessControl)assistantAccessControl;
- (HMDHome)home;
- (HMDPhotosPersonManager)photosPersonManager;
- (HMDRestrictedGuestHomeAccessSettings)restrictedGuestAccessSettings;
- (HMDUser)initWithAccountHandle:(id)handle home:(id)home pairingIdentity:(id)identity privilege:(unint64_t)privilege;
- (HMDUser)initWithAccountHandle:(id)handle home:(id)home pairingIdentity:(id)identity privilege:(unint64_t)privilege dataSource:(id)source;
- (HMDUser)initWithAccountHandle:(id)handle homeUUID:(id)d pairingIdentity:(id)identity privilege:(unint64_t)privilege;
- (HMDUser)initWithAccountHandle:(id)handle homeUUID:(id)d pairingIdentity:(id)identity privilege:(unint64_t)privilege keyStore:(id)store dataSource:(id)source;
- (HMDUser)initWithCoder:(id)coder;
- (HMDUser)initWithModelObject:(id)object;
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
- (id)_initWithCoder:(id)coder;
- (id)account;
- (id)accountHandle;
- (id)allAccessoryUUID;
- (id)announceNotificationFileName;
- (id)announceNotificationFileNameForUserUUID:(id)d;
- (id)attributeDescriptions;
- (id)backingStoreController:(id)controller createParticipantManagerForCloudZone:(id)zone;
- (id)backingStoreObjects:(int64_t)objects;
- (id)dictionaryEncoding;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)fetchCloudShareID;
- (id)logIdentifier;
- (id)messageDestination;
- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version;
- (id)newModelWithChangeType:(unint64_t)type;
- (id)ownerPrivateSettingsAsDictionary;
- (id)privateSettingValuesByKeyPath;
- (id)privateZoneName;
- (id)pushTokensForDevicesObservingSubjectDevice:(id)device subActivity:(id)activity;
- (id)restrictedGuestScheduleEndTimerID;
- (id)restrictedGuestScheduleStartTimerID;
- (id)settingsControllerFollowerKeyPaths:(id)paths;
- (id)sharedSettingValuesByKeyPath;
- (id)sharedSettingsAsDictionary;
- (id)sharedZoneName;
- (id)shortDescription;
- (id)trustTargetUUID;
- (id)userIDsToMigrateAnnounceSettingsFrom;
- (id)zoneNameForCloudShareTrustManager:(id)manager;
- (int64_t)adaptiveTemperatureAutomationsDisclosureStatus;
- (int64_t)sharedUserSettingsLogEventBackingStoreControllerRunState;
- (int64_t)userCloudShareWithOwnerMessagingState;
- (uint64_t)announceUserAccessLevelFromAnnounceAccessAllowed:(void *)allowed announceAccessLevel:;
- (unint64_t)_compatiblePrivilege;
- (unint64_t)allowedRemoteEventAccessUserTypes;
- (unint64_t)announceAccessLevel;
- (unint64_t)audioAnalysisUserDropInAccessLevel;
- (unint64_t)camerasAccessLevel;
- (unint64_t)defaultAnnounceUserAccessLevel;
- (unint64_t)hash;
- (unint64_t)privilege;
- (void)__handleAddedAccount:(id)account;
- (void)__handleModifiedAccount:(id)account;
- (void)__handleRemovedAccount:(id)account;
- (void)_didHandleFMFDeviceChangedNotificationWithStatus:(unint64_t)status;
- (void)_encodeWithCoder:(id)coder;
- (void)_handleAnnounceSettingsUpdate:(id)update;
- (void)_handleAssistantAccessControlUpdate:(id)update;
- (void)_handleCloudShareWithOwnerMessageError;
- (void)_handleFMFDeviceChangedNotification:(id)notification;
- (void)_handleFetchProfilePhoto:(id)photo;
- (void)_handleLegacyPairingIdentityRequest:(id)request;
- (void)_handleMediaContentProfileAccessControlUpdate:(id)update;
- (void)_handleMultiUserSharePayloadRequest:(id)request;
- (void)_handleNeedsiTunesMultiUserRepair:(id)repair;
- (void)_handlePairingIdentityRequest:(id)request;
- (void)_handleRestrictedGuestNewSchedule:(id)schedule;
- (void)_handleShareClientRepairRequest:(id)request;
- (void)_handleShareLookupInfoRequest:(id)request;
- (void)_handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs:(id)ds;
- (void)_migrateAnnounceNotificationModeIfNeeded;
- (void)_notifyEveryOneAboutRestrictedGuestScheduleNotification:(id)notification;
- (void)_pushPhotoMetadataToStoreForHome:(id)home;
- (void)_pushSharedProfileMetadataToStoreForHome:(id)home iCloudAltDSID:(id)d firstName:(id)name lastName:(id)lastName profilePhotoDict:(id)dict;
- (void)_pushTextMetadataToStoreForHome:(id)home;
- (void)_readAnnounceNotificationModeFromLocalStore;
- (void)_recoverTrustManagerDueToUUIDChange;
- (void)_recoverUserSettingsDueToUUIDChange;
- (void)_removeAnnounceNotificationModeFileFromDiskForUserUUID:(id)d;
- (void)_saveAnnounceSettingsToLocalStore:(unint64_t)store;
- (void)_saveSharedUserProfileMetadataToBackingStoreContext:(id)context rootShareObject:(id)object iCloudAltDSID:(id)d firstName:(id)name lastName:(id)lastName profilePhotoDict:(id)dict;
- (void)_sendSecureShareClientPayloadToMostEligibleDevice:(id)device completion:(id)completion;
- (void)_transactionAccessorySettingsUpdated:(id)updated;
- (void)_transactionPhotosPersonManagerSettingsUpdated:(id)updated;
- (void)_transactionUserProfileMetaDataUpdated:(id)updated;
- (void)_transactionUserSettingsUpdated:(id)updated;
- (void)_transactionUserUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)_updateAnnounceNotificationMode:(unint64_t)mode;
- (void)_updateAnnounceNotificationModeToLocalStore:(unint64_t)store managedObjectContext:(id)context;
- (void)applyConditionalValueUpdateToModels:(id)models;
- (void)cancelRestrictedGuestScheduledTimers;
- (void)cloudShareTrustManager:(id)manager didFetchOwnerCloudShareID:(id)d;
- (void)cloudShareTrustManager:(id)manager didRemoveUserWithUUID:(id)d;
- (void)configureCloudShareTrustManager;
- (void)configurePersonSettingsManager;
- (void)configurePhotosPersonDataManager;
- (void)configureWithHome:(id)home;
- (void)dealloc;
- (void)deregisterForMessages;
- (void)deregisterIDSActivityObserver:(id)observer;
- (void)deregisterIDSActivityObserver:(id)observer subActivity:(id)activity subjectDevice:(id)device;
- (void)deregisterIdentity;
- (void)didFinishConfiguringForCloudShareTrustManager:(id)manager;
- (void)didRemoveTrustZoneInCloudShareTrustManager:(id)manager;
- (void)didStartBackingStoreController:(id)controller;
- (void)didStartLocalZoneForBackingStoreController:(id)controller;
- (void)didStopBackingStoreController:(id)controller;
- (void)enableUserListeningHistoryForAccessory:(id)accessory;
- (void)encodeWithCoder:(id)coder;
- (void)fetchPairingIdentityForClientWithMessage:(id)message;
- (void)handleAssistantAccessControlUpdate:(id)update;
- (void)handleCompleteDisclosureOfAdaptiveTemperatureAutomationsMessage:(id)message;
- (void)handleCompleteDisclosureOfAdaptiveTemperatureAutomationsRemoteMessage:(id)message;
- (void)handleMediaContentProfileAccessControlUpdate:(id)update;
- (void)handlePrimaryResidentUpdateNotification:(id)notification;
- (void)handleRemovedAccessory:(id)accessory;
- (void)handleRequestDisclosureNotificationAccountMessage:(id)message;
- (void)handleRestrictedGuestScheduleTimer:(id)timer;
- (void)handleUpdatedCATForUser;
- (void)handleUserDataControllerInitialized:(id)initialized;
- (void)handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs:(id)ds;
- (void)initSwiftExtensions;
- (void)initializeUserSettingsWithHome:(id)home;
- (void)postUserSettingsUpdatedNotificationWithReason:(id)reason;
- (void)recoverUserCloudDataDueToUUIDChangeFromOldUUID:(id)d;
- (void)registerForMessages;
- (void)registerIDSActivityObserver:(id)observer subActivity:(id)activity subjectDevice:(id)device;
- (void)registerIdentity;
- (void)removeAccessoriesFromAssistantAccessControlList:(id)list;
- (void)removeCloudData;
- (void)scheduleRestrictedGuestAccessTimersWithReason:(id)reason;
- (void)sendDisclosureNotificationWithLocationSharingDevice:(HMDDevice *)device completion:(id)completion;
- (void)sendSharedUserProfileMetadataUpdatedMessage;
- (void)setAccountHandle:(id)handle;
- (void)setAccountIdentifier:(id)identifier;
- (void)setAnnounceAccessLevel:(unint64_t)level;
- (void)setAssistantAccessControl:(id)control;
- (void)setAudioAnalysisUserDropInAccessLevel:(unint64_t)level;
- (void)setCamerasAccessLevel:(unint64_t)level;
- (void)setDisplayName:(id)name;
- (void)setFirstName:(id)name;
- (void)setHome:(id)home;
- (void)setIsDisclosedOnAdaptiveTemperatureAutomations:(int64_t)automations;
- (void)setLastName:(id)name;
- (void)setMergeIdentifier:(id)identifier;
- (void)setPairingIdentity:(id)identity;
- (void)setPresenceAuthStatus:(id)status;
- (void)setPrivilege:(unint64_t)privilege;
- (void)setRestrictedGuestAccessSettings:(id)settings;
- (void)setUserCloudShareWithOwnerMessagingState:(int64_t)state;
- (void)setUserID:(id)d;
- (void)setiCloudAltDSID:(id)d;
- (void)transactionObjectRemoved:(id)removed message:(id)message;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)unconfigure;
- (void)updateAnnounceNotificationMode:(unint64_t)mode;
- (void)updateCloudShareID:(id)d;
- (void)updateIDSActivityObserver:(id)observer;
- (void)updateRestrictedGuestSettingsFromWorkingStoreIfNeeded;
- (void)updateSharedBackingStoreControllerParticipants;
@end

@implementation HMDUser

- (void)initSwiftExtensions
{
  selfCopy = self;
  sub_2296EF0D8();
}

- (void)handleRequestDisclosureNotificationAccountMessage:(id)message
{
  messageCopy = message;
  selfCopy = self;
  sub_2297194D4(messageCopy);
}

- (void)handleCompleteDisclosureOfAdaptiveTemperatureAutomationsMessage:(id)message
{
  messageCopy = message;
  selfCopy = self;
  sub_22971AFA4(messageCopy);
}

- (void)handleCompleteDisclosureOfAdaptiveTemperatureAutomationsRemoteMessage:(id)message
{
  messageCopy = message;
  selfCopy = self;
  sub_22971C604(messageCopy);
}

- (void)sendDisclosureNotificationWithLocationSharingDevice:(HMDDevice *)device completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = device;
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
  deviceCopy = device;
  selfCopy = self;
  sub_229859F70(0, 0, v10, &unk_22A581CC0, v15);
}

- (BOOL)isAllowedToAddOrRemoveHAPPairingsOnAccessory
{
  selfCopy = self;
  v3 = sub_229721DA0();

  return v3 & 1;
}

- (BOOL)isAllowedToSharePhotosPersonManagerData
{
  selfCopy = self;
  if ([(HMDUser *)selfCopy isAccessPolicySet])
  {
    userAccessPolicy = [(HMDUser *)selfCopy userAccessPolicy];

    return (userAccessPolicy >> 2) & 1;
  }

  else
  {
    privilege = [(HMDUser *)selfCopy privilege];

    LOBYTE(v4) = privilege != 5;
  }

  return v4;
}

- (BOOL)isAllowedToAccessActivityHistory
{
  selfCopy = self;
  if ([(HMDUser *)selfCopy isAccessPolicySet])
  {
    userAccessPolicy = [(HMDUser *)selfCopy userAccessPolicy];

    return (userAccessPolicy >> 3) & 1;
  }

  else
  {
    privilege = [(HMDUser *)selfCopy privilege];

    LOBYTE(v4) = privilege != 5;
  }

  return v4;
}

- (BOOL)isAllowedToHaveCATId
{
  selfCopy = self;
  if ([(HMDUser *)selfCopy isAccessPolicySet])
  {
    userAccessPolicy = [(HMDUser *)selfCopy userAccessPolicy];

    return (userAccessPolicy >> 4) & 1;
  }

  else
  {
    privilege = [(HMDUser *)selfCopy privilege];

    LOBYTE(v4) = privilege != 5;
  }

  return v4;
}

- (BOOL)isLocalAccessoryCommunicationAllowed
{
  selfCopy = self;
  if ([(HMDUser *)selfCopy isAccessPolicySet])
  {
    userAccessPolicy = [(HMDUser *)selfCopy userAccessPolicy];

    return (userAccessPolicy >> 5) & 1;
  }

  else
  {
    privilege = [(HMDUser *)selfCopy privilege];

    LOBYTE(v4) = privilege != 5;
  }

  return v4;
}

+ (BOOL)isAllowedToAddOrRemoveHAPPairingsOnAccessoryFor:(id)for
{
  swift_unknownObjectRetain();
  sub_22972206C(for);
  v5 = v4;
  swift_unknownObjectRelease();
  return v5 & 1;
}

- (AVOutputDeviceAuthorizedPeer)av_authorizedPeer
{
  pairingIdentity = [(HMDUser *)self pairingIdentity];
  if (pairingIdentity)
  {
    v4 = [HMDUser av_authorizedPeerForPairingIdentity:pairingIdentity isOwner:[(HMDUser *)self privilege]== 3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasCameraClipsAccess
{
  isRemoteAccessAllowed = [(HMDUser *)self isRemoteAccessAllowed];
  if (isRemoteAccessAllowed)
  {
    camerasAccessLevel = [(HMDUser *)self camerasAccessLevel];

    LOBYTE(isRemoteAccessAllowed) = MEMORY[0x282121570](camerasAccessLevel);
  }

  return isRemoteAccessAllowed;
}

- (NSData)nfcIssuerKeyIdentifier
{
  pairingIdentity = [(HMDUser *)self pairingIdentity];
  v3 = [HMDHome nfcIssuerKeyIdentifierWithPairingIdentity:pairingIdentity];

  return v3;
}

+ (unint64_t)hmdUserPrivilegeFromHMMTRUserPrivilege:(unint64_t)privilege
{
  if (privilege - 1 > 2)
  {
    return 2;
  }

  else
  {
    return qword_22A587CD0[privilege - 1];
  }
}

+ (unint64_t)hmmtrUserPrivilegeFromHMDUserPrivilege:(unint64_t)privilege
{
  if (privilege > 4)
  {
    return 0;
  }

  else
  {
    return qword_22A587CA8[privilege];
  }
}

- (void)_pushSharedProfileMetadataToStoreForHome:(id)home iCloudAltDSID:(id)d firstName:(id)name lastName:(id)lastName profilePhotoDict:(id)dict
{
  dCopy = d;
  nameCopy = name;
  lastNameCopy = lastName;
  dictCopy = dict;
  homeCopy = home;
  uuid = [homeCopy uuid];
  backingStore = [homeCopy backingStore];
  context = [backingStore context];

  backingStore2 = [homeCopy backingStore];

  coreData = [backingStore2 coreData];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __102__HMDUser__pushSharedProfileMetadataToStoreForHome_iCloudAltDSID_firstName_lastName_profilePhotoDict___block_invoke;
  v29[3] = &unk_278684158;
  v30 = context;
  v31 = uuid;
  v32 = coreData;
  selfCopy = self;
  v34 = dCopy;
  v35 = nameCopy;
  v36 = lastNameCopy;
  v37 = dictCopy;
  v22 = dictCopy;
  v23 = lastNameCopy;
  v24 = nameCopy;
  v25 = dCopy;
  v26 = coreData;
  v27 = uuid;
  v28 = context;
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

- (void)setLastName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  lastName = self->_lastName;
  self->_lastName = nameCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)lastName
{
  os_unfair_lock_lock_with_options();
  v3 = self->_lastName;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setFirstName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  firstName = self->_firstName;
  self->_firstName = nameCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)firstName
{
  os_unfair_lock_lock_with_options();
  v3 = self->_firstName;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setiCloudAltDSID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  iCloudAltDSID = self->_iCloudAltDSID;
  self->_iCloudAltDSID = dCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)iCloudAltDSID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_iCloudAltDSID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_saveSharedUserProfileMetadataToBackingStoreContext:(id)context rootShareObject:(id)object iCloudAltDSID:(id)d firstName:(id)name lastName:(id)lastName profilePhotoDict:(id)dict
{
  v97 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  objectCopy = object;
  dCopy = d;
  nameCopy = name;
  v17 = dCopy;
  v18 = nameCopy;
  lastNameCopy = lastName;
  dictCopy = dict;
  modelID = [objectCopy modelID];
  managedObjectContext = [contextCopy managedObjectContext];
  [managedObjectContext hmd_assertIsExecuting];
  if (v17 && ([objectCopy iCloudAltDSID], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqualToString:", v17), v22, (v23 & 1) == 0))
  {
    iCloudAltDSID = [objectCopy iCloudAltDSID];
    v24 = iCloudAltDSID == 0;

    [objectCopy setICloudAltDSID:v17];
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

  firstName = [objectCopy firstName];
  v27 = [firstName isEqualToString:v18];

  if ((v27 & 1) == 0)
  {
    [objectCopy setFirstName:v18];
  }

LABEL_8:
  if (lastNameCopy)
  {
    lastName = [objectCopy lastName];
    v29 = [lastName isEqualToString:lastNameCopy];

    if ((v29 & 1) == 0)
    {
      [objectCopy setLastName:lastNameCopy];
    }
  }

  if (dictCopy)
  {
    aaProfilePhoto = [objectCopy aaProfilePhoto];

    if (aaProfilePhoto)
    {
      v79 = v24;
      v31 = managedObjectContext;
      v81 = lastNameCopy;
      v84 = v18;
      v32 = v17;
      v33 = contextCopy;
      v34 = [dictCopy valueForKey:*MEMORY[0x277CD1428]];
      v35 = [dictCopy valueForKey:*MEMORY[0x277CD1420]];
      aaProfilePhoto2 = [objectCopy aaProfilePhoto];
      photoData = [aaProfilePhoto2 photoData];
      v38 = [(MKFCKSharedUserPhoto *)v34 isEqualToData:photoData];

      if ((v38 & 1) == 0)
      {
        aaProfilePhoto3 = [objectCopy aaProfilePhoto];
        [aaProfilePhoto3 setPhotoData:v34];
      }

      aaProfilePhoto4 = [objectCopy aaProfilePhoto];
      cropRect = [aaProfilePhoto4 cropRect];
      v42 = [v35 isEqual:cropRect];

      if ((v42 & 1) == 0)
      {
        aaProfilePhoto5 = [objectCopy aaProfilePhoto];
        [aaProfilePhoto5 setCropRect:v35];
      }

      contextCopy = v33;
      v17 = v32;
      lastNameCopy = v81;
      v18 = v84;
      managedObjectContext = v31;
      v24 = v79;
    }

    else
    {
      v34 = [[MKFCKSharedUserPhoto alloc] initWithContext:managedObjectContext];
      v44 = [dictCopy valueForKey:*MEMORY[0x277CD1428]];
      [(MKFCKSharedUserPhoto *)v34 setPhotoData:v44];

      v45 = [dictCopy valueForKey:*MEMORY[0x277CD1420]];
      [(MKFCKSharedUserPhoto *)v34 setCropRect:v45];

      uUID = [MEMORY[0x277CCAD78] UUID];
      [(MKFCKSharedUserPhoto *)v34 setModelID:uUID];

      homeModelID = [objectCopy homeModelID];
      [(MKFCKSharedUserPhoto *)v34 setHomeModelID:homeModelID];

      [objectCopy setAaProfilePhoto:v34];
    }
  }

  if ([managedObjectContext hasChanges])
  {
    v85 = v18;
    v90 = 0;
    v48 = [contextCopy save:&v90];
    v49 = v90;
    v50 = v49;
    if (v48)
    {
      if (v24)
      {
        if (modelID)
        {
          v80 = v49;
          v82 = lastNameCopy;
          v51 = managedObjectContext;
          v52 = v17;
          v53 = contextCopy;
          v54 = objc_autoreleasePoolPush();
          selfCopy = self;
          v56 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            v57 = HMFGetLogIdentifier();
            *buf = 138543362;
            v92 = v57;
            _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_DEFAULT, "%{public}@Taking voucher on important MKFCKSharedUserDataRoot change", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v54);
          dataSource = [(HMDUser *)selfCopy dataSource];
          v59 = +[MKFCKSharedUserDataRoot entity];
          [dataSource applyVoucherForModel:v59 withModelID:modelID eventType:2 storeType:0];

          contextCopy = v53;
          v17 = v52;
          v50 = v80;
          lastNameCopy = v82;
          managedObjectContext = v51;
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
      v68 = contextCopy;
      v69 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v71 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v72 = v88 = v69;
        HMFBooleanToString();
        v83 = lastNameCopy;
        v73 = v17;
        v74 = v68;
        v76 = v75 = managedObjectContext;
        *buf = 138543874;
        v92 = v72;
        v93 = 2112;
        v94 = v50;
        v95 = 2112;
        v96 = v76;
        _os_log_impl(&dword_229538000, v71, OS_LOG_TYPE_INFO, "%{public}@Unable to save the shared user metadata to local store with error : %@, Success : %@", buf, 0x20u);

        managedObjectContext = v75;
        v68 = v74;
        v17 = v73;
        lastNameCopy = v83;

        v69 = v88;
      }

      objc_autoreleasePoolPop(v69);
      contextCopy = v68;
    }

    v18 = v85;
  }

  else
  {
    v60 = contextCopy;
    v61 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v63 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v87 = managedObjectContext;
      v64 = dictCopy;
      v65 = lastNameCopy;
      v67 = v66 = v18;
      *buf = 138543362;
      v92 = v67;
      _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_DEBUG, "%{public}@No changes so not going to save the shared user metadata", buf, 0xCu);

      v18 = v66;
      lastNameCopy = v65;
      dictCopy = v64;
      managedObjectContext = v87;
    }

    objc_autoreleasePoolPop(v61);
    contextCopy = v60;
  }

  v77 = *MEMORY[0x277D85DE8];
}

- (id)allAccessoryUUID
{
  home = [(HMDUser *)self home];
  accessories = [home accessories];
  v4 = [accessories na_map:&__block_literal_global_969];

  return v4;
}

- (BOOL)_isExplicitContentValueEnabledForAppleMediaAccessory:(id)accessory
{
  settingsController = [accessory settingsController];
  rootGroup = [settingsController rootGroup];
  groups = [rootGroup groups];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__HMDUser__isExplicitContentValueEnabledForAppleMediaAccessory___block_invoke;
  v8[3] = &unk_278683FF0;
  v8[4] = self;
  LOBYTE(self) = [groups na_any:v8];

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

- (void)applyConditionalValueUpdateToModels:(id)models
{
  v21 = *MEMORY[0x277D85DE8];
  modelsCopy = models;
  home = [(HMDUser *)self home];
  accessories = [home accessories];
  v7 = [accessories na_map:&__block_literal_global_869];

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
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
  v16 = selfCopy;
  v12 = v7;
  [modelsCopy na_each:v14];

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

- (id)pushTokensForDevicesObservingSubjectDevice:(id)device subActivity:(id)activity
{
  activityCopy = activity;
  deviceCopy = device;
  sharedBackingStoreController = [(HMDUser *)self sharedBackingStoreController];
  identifier = [deviceCopy identifier];

  v10 = [sharedBackingStoreController queryPushTokensForDevicesObservingSubjectDevice:identifier subActivity:activityCopy];

  return v10;
}

- (void)deregisterIDSActivityObserver:(id)observer
{
  observerCopy = observer;
  sharedBackingStoreController = [(HMDUser *)self sharedBackingStoreController];
  [sharedBackingStoreController deregisterObserverDeviceIdentifier:observerCopy];
}

- (void)deregisterIDSActivityObserver:(id)observer subActivity:(id)activity subjectDevice:(id)device
{
  deviceCopy = device;
  activityCopy = activity;
  observerCopy = observer;
  sharedBackingStoreController = [(HMDUser *)self sharedBackingStoreController];
  identifier = [observerCopy identifier];
  pushToken = [observerCopy pushToken];

  identifier2 = [deviceCopy identifier];

  [sharedBackingStoreController deregisterObserverDeviceIdentifier:identifier observerPushToken:pushToken subActivity:activityCopy subjectDeviceIdentifier:identifier2];
}

- (void)updateIDSActivityObserver:(id)observer
{
  observerCopy = observer;
  sharedBackingStoreController = [(HMDUser *)self sharedBackingStoreController];
  identifier = [observerCopy identifier];
  pushToken = [observerCopy pushToken];

  [sharedBackingStoreController updateObserverDeviceIdentifier:identifier observerPushToken:pushToken];
}

- (void)registerIDSActivityObserver:(id)observer subActivity:(id)activity subjectDevice:(id)device
{
  deviceCopy = device;
  activityCopy = activity;
  observerCopy = observer;
  sharedBackingStoreController = [(HMDUser *)self sharedBackingStoreController];
  identifier = [observerCopy identifier];
  pushToken = [observerCopy pushToken];

  identifier2 = [deviceCopy identifier];

  [sharedBackingStoreController registerObserverDeviceIdentifier:identifier observerPushToken:pushToken subActivity:activityCopy subjectDeviceIdentifier:identifier2];
}

- (void)cloudShareTrustManager:(id)manager didRemoveUserWithUUID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  dCopy = d;
  home = [(HMDUser *)self home];
  v9 = [home userWithUUID:dCopy];

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
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

- (void)didRemoveTrustZoneInCloudShareTrustManager:(id)manager
{
  v12 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removed cloud share trust", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDUser *)selfCopy setUserCloudShareWithOwnerMessagingState:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)didFinishConfiguringForCloudShareTrustManager:(id)manager
{
  v12 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
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

- (void)cloudShareTrustManager:(id)manager didFetchOwnerCloudShareID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  dCopy = d;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = dCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Trust manager did fetch owner cloud share id: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDUser *)selfCopy updateCloudShareID:dCopy];
  [(HMDUser *)selfCopy setUserCloudShareWithOwnerMessagingState:1];

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)isOwnerCapableForTrustManager:(id)manager
{
  home = [(HMDUser *)self home];
  isOwnerTrustZoneCapable = [home isOwnerTrustZoneCapable];

  return isOwnerTrustZoneCapable;
}

- (id)zoneNameForCloudShareTrustManager:(id)manager
{
  uuid = [(HMDUser *)self uuid];
  uUIDString = [uuid UUIDString];
  v5 = [@"trust-" stringByAppendingString:uUIDString];

  return v5;
}

- (BOOL)cloudShareTrustManager:(id)manager shouldShareTrustWithUser:(id)user
{
  v19 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  userCopy = user;
  if (-[HMDUser isOwner](self, "isOwner") && -[HMDUser isCurrentUser](self, "isCurrentUser") && ([userCopy isOwner] & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v14;
      v17 = 2112;
      v18 = userCopy;
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
  cloudShareTrustManager = [(HMDUser *)self cloudShareTrustManager];

  if (cloudShareTrustManager)
  {
    [(HMDUser *)self setCloudShareTrustManager:0];
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Configure new trust manager", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMDUser *)selfCopy configureCloudShareTrustManager];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)configureCloudShareTrustManager
{
  if ([(HMDUser *)self isOwner])
  {
    home = [(HMDUser *)self home];
    if (home)
    {
      v4 = [HMDCloudShareMessenger alloc];
      trustTargetUUID = [(HMDUser *)self trustTargetUUID];
      v19 = [(HMDCloudShareMessenger *)v4 initWithMessageTargetUUID:trustTargetUUID workQueue:self->_queue home:home];

      homeManager = [home homeManager];
      metricsManager = [homeManager metricsManager];

      v8 = [HMDCloudShareTrustManager alloc];
      v9 = +[HMDDatabase defaultDatabase];
      isCurrentUser = [(HMDUser *)self isCurrentUser];
      queue = self->_queue;
      cloudShareID = [(HMDUser *)self cloudShareID];
      logEventSubmitter = [metricsManager logEventSubmitter];
      dailyScheduler = [metricsManager dailyScheduler];
      v15 = [(HMDCloudShareTrustManager *)v8 initWithDatabase:v9 isOwnedTrust:isCurrentUser queue:queue shareMessenger:v19 ownerCloudShareID:cloudShareID logEventSubmitter:logEventSubmitter dailyScheduler:dailyScheduler];
      [(HMDUser *)self setCloudShareTrustManager:v15];

      cloudShareTrustManager = [(HMDUser *)self cloudShareTrustManager];
      [cloudShareTrustManager setDataSource:self];

      cloudShareTrustManager2 = [(HMDUser *)self cloudShareTrustManager];
      [cloudShareTrustManager2 setDelegate:self];

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
  uuid = [(HMDUser *)self uuid];
  uUIDString = [uuid UUIDString];
  v7 = [uUIDString dataUsingEncoding:4];
  v8 = [v3 hmf_UUIDWithNamespace:v4 data:v7];

  return v8;
}

void __26__HMDUser_trustTargetUUID__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"79E0D39A-83CC-42C1-99FC-5B4E0745E284"];
  v1 = trustTargetUUID_namespace;
  trustTargetUUID_namespace = v0;
}

- (void)updateCloudShareID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  cloudShareID = [(HMDUser *)self cloudShareID];

  if (!cloudShareID)
  {
    [(HMDUser *)self setCloudShareID:dCopy];
    home = [(HMDUser *)self home];
    [home saveToCurrentAccountWithReason:@"Update User Cloud Share ID"];

    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@User has updated their cloud share id and is cloud share ready", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    cloudShareIDFuture = [(HMDUser *)selfCopy cloudShareIDFuture];
    cloudShareID2 = [(HMDUser *)selfCopy cloudShareID];
    [(HMDAssertionLogEvent *)cloudShareIDFuture finishWithResult:cloudShareID2];
    goto LABEL_9;
  }

  cloudShareID3 = [(HMDUser *)self cloudShareID];
  v7 = [dCopy isEqual:cloudShareID3];

  if ((v7 & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Cloud Share ID has unexpectedly changed", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    cloudShareIDFuture = [[HMDAssertionLogEvent alloc] initWithReason:@"Cloud Share ID has unexpectedly changed"];
    cloudShareID2 = +[HMDMetricsManager sharedLogEventSubmitter];
    [cloudShareID2 submitLogEvent:cloudShareIDFuture];
LABEL_9:
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)fetchCloudShareID
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    cloudShareIDFuture = [(HMDUser *)selfCopy cloudShareIDFuture];
    v11 = 138543618;
    v12 = v6;
    v13 = 2112;
    v14 = cloudShareIDFuture;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching cloud share ID by returning future: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  cloudShareIDFuture2 = [(HMDUser *)selfCopy cloudShareIDFuture];
  v9 = *MEMORY[0x277D85DE8];

  return cloudShareIDFuture2;
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

- (BOOL)userDataController:(id)controller isHAPAccessory:(id)accessory
{
  v25 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  accessoryCopy = accessory;
  home = [(HMDUser *)self home];
  v9 = [home accessoryWithUUID:accessoryCopy];
  v10 = v9;
  if (!home)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v14;
      v23 = 2112;
      v24 = accessoryCopy;
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
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v14;
      v23 = 2112;
      v24 = accessoryCopy;
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

- (BOOL)userDataController:(id)controller isAppleMediaAccessory:(id)accessory
{
  v25 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  accessoryCopy = accessory;
  home = [(HMDUser *)self home];
  v9 = [home accessoryWithUUID:accessoryCopy];
  v10 = v9;
  if (!home)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v14;
      v23 = 2112;
      v24 = accessoryCopy;
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
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v14;
      v23 = 2112;
      v24 = accessoryCopy;
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

- (void)postUserSettingsUpdatedNotificationWithReason:(id)reason
{
  reasonCopy = reason;
  home = [(HMDUser *)self home];
  homeManager = [home homeManager];
  uuid = [(HMDUser *)self uuid];
  [homeManager notifyClientsOfUserSettingsChangeWithReason:reasonCopy sourceUUID:uuid];
}

- (BOOL)userDataController:(id)controller isAccessoryUserListeningHistoryUpdateCapable:(id)capable
{
  v28 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  capableCopy = capable;
  home = [(HMDUser *)self home];
  v9 = [home accessoryWithUUID:capableCopy];
  v10 = v9;
  if (!home)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v20;
      v26 = 2112;
      v27 = capableCopy;
      v21 = "%{public}@Don't have home to find accessory %@.";
LABEL_15:
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, v21, &v24, 0x16u);
    }

LABEL_16:

    objc_autoreleasePoolPop(v18);
    LOBYTE(selfCopy2) = 0;
    goto LABEL_19;
  }

  if (!v9)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v20;
      v26 = 2112;
      v27 = capableCopy;
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
    LOBYTE(selfCopy2) = 1;
  }

  else
  {
    LODWORD(selfCopy2) = [v12 supportsSiriEndpoint];
  }

LABEL_19:
  v22 = *MEMORY[0x277D85DE8];
  return selfCopy2;
}

- (BOOL)userDataController:(id)controller isMediaContentProfileCapableAccessoryID:(id)d
{
  v36 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  home = [(HMDUser *)self home];
  v9 = [home accessoryWithUUID:dCopy];
  v10 = v9;
  if (!home)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v15;
      v28 = 2112;
      v29 = dCopy;
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
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v15;
      v28 = 2112;
      v29 = dCopy;
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
  selfCopy3 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    category = [v10 category];
    supportsMediaContentProfile = [v10 supportsMediaContentProfile];
    v26 = 138544386;
    v27 = v21;
    v28 = 2112;
    v29 = home;
    v30 = 2112;
    v31 = v10;
    v32 = 2112;
    v33 = category;
    v34 = 1024;
    v35 = supportsMediaContentProfile;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Accessory is not valid home: %@, accessory: %@, category: %@, supports: %d", &v26, 0x30u);
  }

  objc_autoreleasePoolPop(v18);
  v11 = 0;
LABEL_14:

  v24 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)userDataController:(id)controller isPersonalRequestCapableAccessoryID:(id)d
{
  v36 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  home = [(HMDUser *)self home];
  v9 = [home accessoryWithUUID:dCopy];
  v10 = v9;
  if (!home)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v15;
      v28 = 2112;
      v29 = dCopy;
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
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v15;
      v28 = 2112;
      v29 = dCopy;
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
  selfCopy3 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    category = [v10 category];
    supportsPersonalRequests = [v10 supportsPersonalRequests];
    v26 = 138544386;
    v27 = v21;
    v28 = 2112;
    v29 = home;
    v30 = 2112;
    v31 = v10;
    v32 = 2112;
    v33 = category;
    v34 = 1024;
    v35 = supportsPersonalRequests;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Accessory is not valid home: %@, accessory: %@, category: %@, supports: %d", &v26, 0x30u);
  }

  objc_autoreleasePoolPop(v18);
  v11 = 0;
LABEL_14:

  v24 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)backingStoreController:(id)controller createParticipantManagerForCloudZone:(id)zone
{
  zoneCopy = zone;
  controllerCopy = controller;
  sharedBackingStoreController = [(HMDUser *)self sharedBackingStoreController];
  v9 = [controllerCopy isEqual:sharedBackingStoreController];

  if (v9)
  {
    v10 = [HMDCloudShareParticipantsManager alloc];
    queue = self->_queue;
    home = [(HMDUser *)self home];
    v13 = [(HMDCloudShareParticipantsManager *)v10 initWithQueue:queue cloudZone:zoneCopy home:home];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)didStopBackingStoreController:(id)controller
{
  v19 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = controllerCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Did stop backing store controller: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDUser *)selfCopy postUserSettingsUpdatedNotificationWithReason:@"User Settings Removed"];
  privateBackingStoreController = [(HMDUser *)selfCopy privateBackingStoreController];

  if (privateBackingStoreController == controllerCopy)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = selfCopy;
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

- (void)didStartLocalZoneForBackingStoreController:(id)controller
{
  v16 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = controllerCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Did start local zone for backing store controller: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  privateBackingStoreController = [(HMDUser *)selfCopy privateBackingStoreController];

  if (privateBackingStoreController == controllerCopy)
  {
    [(HMDUser *)selfCopy configurePersonSettingsManager];
  }

  else
  {
    sharedBackingStoreController = [(HMDUser *)selfCopy sharedBackingStoreController];

    if (sharedBackingStoreController == controllerCopy)
    {
      [(HMDUser *)selfCopy configurePhotosPersonDataManager];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)didStartBackingStoreController:(id)controller
{
  controllerCopy = controller;
  userDataController = [(HMDUser *)self userDataController];
  [userDataController handleStartForZoneController:controllerCopy];
}

- (BOOL)isRunningOnHomeOwnersDevice
{
  home = [(HMDUser *)self home];
  owner = [home owner];
  currentUser = [home currentUser];
  v5 = [owner isEqual:currentUser];

  return v5;
}

- (id)settingsControllerFollowerKeyPaths:(id)paths
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
  userID = [(HMDUser *)self userID];
  privilege = [(HMDUser *)self privilege];
  isRemoteAccessAllowed = [(HMDUser *)self isRemoteAccessAllowed];
  camerasAccessLevel = [(HMDUser *)self camerasAccessLevel];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser isAnnounceAccessAllowed](self, "isAnnounceAccessAllowed")}];
  announceAccessLevel = [(HMDUser *)self announceAccessLevel];
  audioAnalysisUserDropInAccessLevel = [(HMDUser *)self audioAnalysisUserDropInAccessLevel];
  restrictedGuestAccessSettings = [(HMDUser *)self restrictedGuestAccessSettings];
  v11 = [HMDUser userDictionaryWithUserID:userID privilege:privilege remoteAccessAllowed:isRemoteAccessAllowed cameraAccessLevel:camerasAccessLevel announceAccessAllowed:v7 announceAccessLevel:announceAccessLevel audioAnalysisUserDropInAccessLevel:audioAnalysisUserDropInAccessLevel restrictedGuestAccessSettings:restrictedGuestAccessSettings];

  return v11;
}

- (void)removeCloudData
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Removing user cloud data", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  queue = selfCopy->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__HMDUser_removeCloudData__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = selfCopy;
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

- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version
{
  v49 = *MEMORY[0x277D85DE8];
  home = [(HMDUser *)self home];
  if ([(HMDUser *)self isRemoteGateway])
  {
    v8 = [HMDResidentUserModel alloc];
    uuid = [(HMDUser *)self uuid];
    uuid2 = [home uuid];
    v11 = [(HMDBackingStoreModelObject *)v8 initWithObjectChangeType:type uuid:uuid parentUUID:uuid2];
  }

  else
  {
    v11 = [(HMDUser *)self newModelWithChangeType:type];
  }

  accountHandle = [(HMDUser *)self accountHandle];
  [(HMDResidentUserModel *)v11 setAccountHandle:accountHandle];

  accountIdentifier = [(HMDUser *)self accountIdentifier];

  if (accountIdentifier)
  {
    accountIdentifier2 = [(HMDUser *)self accountIdentifier];
    [(HMDResidentUserModel *)v11 setAccountIdentifier:accountIdentifier2];
  }

  mergeIdentifier = [(HMDUser *)self mergeIdentifier];
  if (mergeIdentifier)
  {
    [(HMDResidentUserModel *)v11 setIdsMergeIdentifier:mergeIdentifier];
  }

  else
  {
    account = [(HMDUser *)self account];
    senderCorrelationIdentifier = [account senderCorrelationIdentifier];
    [(HMDResidentUserModel *)v11 setIdsMergeIdentifier:senderCorrelationIdentifier];
  }

  if (version < 3)
  {
    goto LABEL_11;
  }

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser privilege](self, "privilege")}];
  [(HMDResidentUserModel *)v11 setPrivilege:v18];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser isRemoteAccessAllowed](self, "isRemoteAccessAllowed")}];
  [(HMDResidentUserModel *)v11 setRemoteAccessAllowed:v19];

  if (version == 3)
  {
LABEL_11:
    v20 = 0;
  }

  else
  {
    presenceAuthStatus = [(HMDUser *)self presenceAuthStatus];

    if (presenceAuthStatus)
    {
      presenceAuthStatus2 = [(HMDUser *)self presenceAuthStatus];
      number = [presenceAuthStatus2 number];
      [(HMDResidentUserModel *)v11 setPresenceAuthorizationStatus:number];
    }

    v20 = 1;
  }

  pairingIdentity = [(HMDUser *)self pairingIdentity];
  hmd_dictionaryEncoding = [pairingIdentity hmd_dictionaryEncoding];
  [(HMDResidentUserModel *)v11 setPairingIdentity:hmd_dictionaryEncoding];

  userID = [(HMDUser *)self userID];
  [(HMDResidentUserModel *)v11 setUserID:userID];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser camerasAccessLevel](self, "camerasAccessLevel")}];
  [(HMDResidentUserModel *)v11 setCamerasAccessLevel:v27];

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser audioAnalysisUserDropInAccessLevel](self, "audioAnalysisUserDropInAccessLevel")}];
  [(HMDUserModel *)v11 setAudioAnalysisUserDropInAccessLevel:v28];

  matterCASEAuthenticatedTagID = [(HMDUser *)self matterCASEAuthenticatedTagID];
  [(HMDResidentUserModel *)v11 setMatterCASEAuthenticatedTagID:matterCASEAuthenticatedTagID];

  if (v20)
  {
    v30 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser isAnnounceAccessAllowed](self, "isAnnounceAccessAllowed")}];
    [(HMDResidentUserModel *)v11 setAnnounceAccessAllowed:v30];

    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser announceAccessLevel](self, "announceAccessLevel")}];
    [(HMDResidentUserModel *)v11 setAnnounceAccessLevel:v31];
  }

  if ([(HMDUser *)self isRestrictedGuest])
  {
    restrictedGuestAccessSettings = [(HMDUser *)self restrictedGuestAccessSettings];

    if (restrictedGuestAccessSettings)
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

      restrictedGuestAccessSettings2 = [(HMDUser *)self restrictedGuestAccessSettings];
      uuidsOfAllowedAccessories = [restrictedGuestAccessSettings2 uuidsOfAllowedAccessories];
      [(HMDResidentUserModel *)v35 setAllowedAccessoryUUIDs:uuidsOfAllowedAccessories];

      v38 = objc_autoreleasePoolPush();
      selfCopy = self;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = HMFGetLogIdentifier();
        allowedAccessoryUUIDs = [(HMDResidentUserModel *)v35 allowedAccessoryUUIDs];
        v45 = 138543618;
        v46 = v41;
        v47 = 2112;
        v48 = allowedAccessoryUUIDs;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@Added allowed accessory UUIDs to user model: %@", &v45, 0x16u);
      }

      objc_autoreleasePoolPop(v38);
    }
  }

  v43 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)newModelWithChangeType:(unint64_t)type
{
  home = [(HMDUser *)self home];
  isRestrictedGuest = [(HMDUser *)self isRestrictedGuest];
  v7 = off_278666140;
  if (!isRestrictedGuest)
  {
    v7 = off_278666368;
  }

  v8 = objc_alloc(*v7);
  uuid = [(HMDUser *)self uuid];
  uuid2 = [home uuid];
  v11 = [v8 initWithObjectChangeType:type uuid:uuid parentUUID:uuid2];

  return v11;
}

- (id)backingStoreObjects:(int64_t)objects
{
  array = [MEMORY[0x277CBEB18] array];
  v6 = [(HMDUser *)self modelObjectWithChangeType:1 version:objects];
  [array addObject:v6];

  if (objects >= 4)
  {
    assistantAccessControl = [(HMDUser *)self assistantAccessControl];
    v8 = assistantAccessControl;
    if (assistantAccessControl)
    {
      model = [assistantAccessControl model];
      v10 = model;
      if (model)
      {
        [model setObjectChangeType:1];
        [array addObject:v10];
      }
    }

    accessCode = [(HMDUser *)self accessCode];
    if (accessCode)
    {
    }

    else
    {
      accessCodeChangedByUserUUID = [(HMDUser *)self accessCodeChangedByUserUUID];

      if (!accessCodeChangedByUserUUID)
      {
LABEL_10:

        goto LABEL_11;
      }
    }

    accessCode2 = [(HMDUser *)self accessCode];
    uuid = [(HMDUser *)self uuid];
    accessCodeChangedByUserUUID2 = [(HMDUser *)self accessCodeChangedByUserUUID];
    v16 = [HMDAccessCodeDataManager createUserAccessCodeModelFromAccessCode:accessCode2 forUserUUID:uuid changedByUserUUID:accessCodeChangedByUserUUID2];

    [array addObject:v16];
    goto LABEL_10;
  }

LABEL_11:
  v17 = [array copy];

  return v17;
}

- (void)transactionObjectRemoved:(id)removed message:(id)message
{
  v35 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = removedCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (!v9)
  {
    v10 = removedCopy;
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

    messagePayload = [messageCopy messagePayload];
    internalOnlyInitializer = [messagePayload hmf_flowForKey:*MEMORY[0x277D0F1C8]];

    if (internalOnlyInitializer)
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        uUID = [internalOnlyInitializer UUID];
        v31 = 138543618;
        v32 = v18;
        v33 = 2112;
        v34 = uUID;
        v20 = "%{public}@[Flow: %@] Handling removed user access code model";
LABEL_15:
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, v20, &v31, 0x16u);
      }
    }

    else
    {
      internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
      v15 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        uUID = [internalOnlyInitializer UUID];
        v31 = 138543618;
        v32 = v18;
        v33 = 2112;
        v34 = uUID;
        v20 = "%{public}@[NewFlow: %@ {Feature:Pin Codes}] Handling removed user access code model";
        goto LABEL_15;
      }
    }

    objc_autoreleasePoolPop(v15);
    home = [(HMDUser *)self home];
    accessCodeManager = [home accessCodeManager];
    dataManager = [accessCodeManager dataManager];

    if (dataManager)
    {
      [dataManager handleRemovedUserAccessCodeModel:v12 forUser:self message:messageCopy flow:internalOnlyInitializer];
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy3 = self;
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
      [messageCopy respondWithError:v29];
    }

    goto LABEL_22;
  }

  [(HMDUser *)self setAssistantAccessControl:0];
  [messageCopy respondWithSuccess];
LABEL_23:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_transactionUserProfileMetaDataUpdated:(id)updated
{
  updatedCopy = updated;
  if (_os_feature_enabled_impl())
  {
    iCloudAltDSID = [updatedCopy iCloudAltDSID];
    if (iCloudAltDSID)
    {
      v5 = iCloudAltDSID;
      iCloudAltDSID2 = [updatedCopy iCloudAltDSID];
      iCloudAltDSID3 = [(HMDUser *)self iCloudAltDSID];
      v8 = HMFEqualObjects();

      if ((v8 & 1) == 0)
      {
        iCloudAltDSID4 = [updatedCopy iCloudAltDSID];
        [(HMDUser *)self setICloudAltDSID:iCloudAltDSID4];
      }
    }

    firstName = [updatedCopy firstName];
    if (firstName)
    {
      v11 = firstName;
      firstName2 = [updatedCopy firstName];
      firstName3 = [(HMDUser *)self firstName];
      v14 = HMFEqualObjects();

      if ((v14 & 1) == 0)
      {
        firstName4 = [updatedCopy firstName];
        [(HMDUser *)self setFirstName:firstName4];
      }
    }

    lastName = [updatedCopy lastName];
    if (lastName)
    {
      v17 = lastName;
      lastName2 = [updatedCopy lastName];
      lastName3 = [(HMDUser *)self lastName];
      v20 = HMFEqualObjects();

      if ((v20 & 1) == 0)
      {
        lastName4 = [updatedCopy lastName];
        [(HMDUser *)self setLastName:lastName4];
      }
    }
  }
}

- (void)_transactionPhotosPersonManagerSettingsUpdated:(id)updated
{
  updatedCopy = updated;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HMDUser__transactionPhotosPersonManagerSettingsUpdated___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = updatedCopy;
  v6 = updatedCopy;
  dispatch_async(queue, v7);
}

void __58__HMDUser__transactionPhotosPersonManagerSettingsUpdated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) photosPersonDataManager];
  [v2 handleUpdatedUserModel:*(a1 + 40)];
}

- (void)_transactionUserSettingsUpdated:(id)updated
{
  updatedCopy = updated;
  allowExplicitContent = [updatedCopy allowExplicitContent];
  if (!allowExplicitContent || (v5 = allowExplicitContent, [updatedCopy allowExplicitContent], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "BOOLValue"), v8 = -[HMDUser allowExplicitContent](self, "allowExplicitContent"), v6, v5, v7 == v8))
  {
    v10 = 0;
  }

  else
  {
    allowExplicitContent2 = [updatedCopy allowExplicitContent];
    -[HMDUser setAllowExplicitContent:](self, "setAllowExplicitContent:", [allowExplicitContent2 BOOLValue]);

    v10 = 1;
  }

  allowiTunesAccount = [updatedCopy allowiTunesAccount];
  if (allowiTunesAccount)
  {
    v12 = allowiTunesAccount;
    allowiTunesAccount2 = [updatedCopy allowiTunesAccount];
    bOOLValue = [allowiTunesAccount2 BOOLValue];
    allowiTunesAccount3 = [(HMDUser *)self allowiTunesAccount];

    if (bOOLValue != allowiTunesAccount3)
    {
      allowiTunesAccount4 = [updatedCopy allowiTunesAccount];
      -[HMDUser setAllowiTunesAccount:](self, "setAllowiTunesAccount:", [allowiTunesAccount4 BOOLValue]);

      v10 = 1;
    }
  }

  dolbyAtmosEnabled = [updatedCopy dolbyAtmosEnabled];
  if (dolbyAtmosEnabled)
  {
    v18 = dolbyAtmosEnabled;
    dolbyAtmosEnabled2 = [updatedCopy dolbyAtmosEnabled];
    bOOLValue2 = [dolbyAtmosEnabled2 BOOLValue];
    dolbyAtmosEnabled3 = [(HMDUser *)self dolbyAtmosEnabled];

    if (bOOLValue2 != dolbyAtmosEnabled3)
    {
      dolbyAtmosEnabled4 = [updatedCopy dolbyAtmosEnabled];
      -[HMDUser setDolbyAtmosEnabled:](self, "setDolbyAtmosEnabled:", [dolbyAtmosEnabled4 BOOLValue]);

      v10 = 1;
    }
  }

  crossfadeEnabled = [updatedCopy crossfadeEnabled];
  if (crossfadeEnabled)
  {
    v24 = crossfadeEnabled;
    crossfadeEnabled2 = [updatedCopy crossfadeEnabled];
    bOOLValue3 = [crossfadeEnabled2 BOOLValue];
    crossfadeEnabled3 = [(HMDUser *)self crossfadeEnabled];

    if (bOOLValue3 != crossfadeEnabled3)
    {
      crossfadeEnabled4 = [updatedCopy crossfadeEnabled];
      -[HMDUser setCrossfadeEnabled:](self, "setCrossfadeEnabled:", [crossfadeEnabled4 BOOLValue]);

      v10 = 1;
    }
  }

  crossfadeDuration = [updatedCopy crossfadeDuration];
  if (crossfadeDuration)
  {
    v30 = crossfadeDuration;
    crossfadeDuration2 = [updatedCopy crossfadeDuration];
    [crossfadeDuration2 floatValue];
    v33 = v32;
    [(HMDUser *)self crossfadeDuration];
    v35 = v34;

    if (v33 != v35)
    {
      crossfadeDuration3 = [updatedCopy crossfadeDuration];
      [crossfadeDuration3 floatValue];
      [(HMDUser *)self setCrossfadeDuration:?];

      v10 = 1;
    }
  }

  losslessMusicEnabled = [updatedCopy losslessMusicEnabled];
  if (losslessMusicEnabled)
  {
    v38 = losslessMusicEnabled;
    losslessMusicEnabled2 = [updatedCopy losslessMusicEnabled];
    bOOLValue4 = [losslessMusicEnabled2 BOOLValue];
    losslessMusicEnabled3 = [(HMDUser *)self losslessMusicEnabled];

    if (bOOLValue4 != losslessMusicEnabled3)
    {
      losslessMusicEnabled4 = [updatedCopy losslessMusicEnabled];
      -[HMDUser setLosslessMusicEnabled:](self, "setLosslessMusicEnabled:", [losslessMusicEnabled4 BOOLValue]);

      v10 = 1;
    }
  }

  playbackInfluencesEnabled = [updatedCopy playbackInfluencesEnabled];
  if (playbackInfluencesEnabled)
  {
    v44 = playbackInfluencesEnabled;
    playbackInfluencesEnabled2 = [updatedCopy playbackInfluencesEnabled];
    bOOLValue5 = [playbackInfluencesEnabled2 BOOLValue];
    playbackInfluencesEnabled3 = [(HMDUser *)self playbackInfluencesEnabled];

    if (bOOLValue5 != playbackInfluencesEnabled3)
    {
      playbackInfluencesEnabled4 = [updatedCopy playbackInfluencesEnabled];
      -[HMDUser setPlaybackInfluencesEnabled:](self, "setPlaybackInfluencesEnabled:", [playbackInfluencesEnabled4 BOOLValue]);

      v10 = 1;
    }
  }

  siriIdentifyVoiceEnabled = [updatedCopy siriIdentifyVoiceEnabled];
  if (siriIdentifyVoiceEnabled)
  {
    v50 = siriIdentifyVoiceEnabled;
    siriIdentifyVoiceEnabled2 = [updatedCopy siriIdentifyVoiceEnabled];
    bOOLValue6 = [siriIdentifyVoiceEnabled2 BOOLValue];
    siriIdentifyVoiceEnabled3 = [(HMDUser *)self siriIdentifyVoiceEnabled];

    if (bOOLValue6 != siriIdentifyVoiceEnabled3)
    {
      siriIdentifyVoiceEnabled4 = [updatedCopy siriIdentifyVoiceEnabled];
      -[HMDUser setSiriIdentifyVoiceEnabled:](self, "setSiriIdentifyVoiceEnabled:", [siriIdentifyVoiceEnabled4 BOOLValue]);

      v10 = 1;
    }
  }

  ownerAddSceneButtonPresentedCount = [updatedCopy ownerAddSceneButtonPresentedCount];
  if (ownerAddSceneButtonPresentedCount)
  {
    v56 = ownerAddSceneButtonPresentedCount;
    ownerAddSceneButtonPresentedCount2 = [updatedCopy ownerAddSceneButtonPresentedCount];
    integerValue = [ownerAddSceneButtonPresentedCount2 integerValue];
    ownerAddSceneButtonPresentedCount3 = [(HMDUser *)self ownerAddSceneButtonPresentedCount];

    if (integerValue != ownerAddSceneButtonPresentedCount3)
    {
      ownerAddSceneButtonPresentedCount4 = [updatedCopy ownerAddSceneButtonPresentedCount];
      -[HMDUser setOwnerAddSceneButtonPresentedCount:](self, "setOwnerAddSceneButtonPresentedCount:", [ownerAddSceneButtonPresentedCount4 integerValue]);

      v10 = 1;
    }
  }

  ownerCompletedSwitchingHomesOnboardingUI = [updatedCopy ownerCompletedSwitchingHomesOnboardingUI];
  if (ownerCompletedSwitchingHomesOnboardingUI)
  {
    v62 = ownerCompletedSwitchingHomesOnboardingUI;
    ownerCompletedSwitchingHomesOnboardingUI2 = [updatedCopy ownerCompletedSwitchingHomesOnboardingUI];
    bOOLValue7 = [ownerCompletedSwitchingHomesOnboardingUI2 BOOLValue];
    ownerCompletedSwitchingHomesOnboardingUI3 = [(HMDUser *)self ownerCompletedSwitchingHomesOnboardingUI];

    if (bOOLValue7 != ownerCompletedSwitchingHomesOnboardingUI3)
    {
      ownerCompletedSwitchingHomesOnboardingUI4 = [updatedCopy ownerCompletedSwitchingHomesOnboardingUI];
      -[HMDUser setOwnerCompletedSwitchingHomesOnboardingUI:](self, "setOwnerCompletedSwitchingHomesOnboardingUI:", [ownerCompletedSwitchingHomesOnboardingUI4 BOOLValue]);

      v10 = 1;
    }
  }

  ownerDismissedAccessCodeOnboarding = [updatedCopy ownerDismissedAccessCodeOnboarding];
  if (ownerDismissedAccessCodeOnboarding)
  {
    v68 = ownerDismissedAccessCodeOnboarding;
    ownerDismissedAccessCodeOnboarding2 = [updatedCopy ownerDismissedAccessCodeOnboarding];
    bOOLValue8 = [ownerDismissedAccessCodeOnboarding2 BOOLValue];
    ownerDismissedAccessCodeOnboarding3 = [(HMDUser *)self ownerDismissedAccessCodeOnboarding];

    if (bOOLValue8 != ownerDismissedAccessCodeOnboarding3)
    {
      ownerDismissedAccessCodeOnboarding4 = [updatedCopy ownerDismissedAccessCodeOnboarding];
      -[HMDUser setOwnerDismissedAccessCodeOnboarding:](self, "setOwnerDismissedAccessCodeOnboarding:", [ownerDismissedAccessCodeOnboarding4 BOOLValue]);

      v10 = 1;
    }
  }

  ownerDismissedAccessoryFirmwareUpdateOnboarding = [updatedCopy ownerDismissedAccessoryFirmwareUpdateOnboarding];
  if (ownerDismissedAccessoryFirmwareUpdateOnboarding)
  {
    v74 = ownerDismissedAccessoryFirmwareUpdateOnboarding;
    ownerDismissedAccessoryFirmwareUpdateOnboarding2 = [updatedCopy ownerDismissedAccessoryFirmwareUpdateOnboarding];
    bOOLValue9 = [ownerDismissedAccessoryFirmwareUpdateOnboarding2 BOOLValue];
    ownerDismissedAccessoryFirmwareUpdateOnboarding3 = [(HMDUser *)self ownerDismissedAccessoryFirmwareUpdateOnboarding];

    if (bOOLValue9 != ownerDismissedAccessoryFirmwareUpdateOnboarding3)
    {
      ownerDismissedAccessoryFirmwareUpdateOnboarding4 = [updatedCopy ownerDismissedAccessoryFirmwareUpdateOnboarding];
      -[HMDUser setOwnerDismissedAccessoryFirmwareUpdateOnboarding:](self, "setOwnerDismissedAccessoryFirmwareUpdateOnboarding:", [ownerDismissedAccessoryFirmwareUpdateOnboarding4 BOOLValue]);

      v10 = 1;
    }
  }

  ownerDismissedAnnounceOnboarding = [updatedCopy ownerDismissedAnnounceOnboarding];
  if (ownerDismissedAnnounceOnboarding)
  {
    v80 = ownerDismissedAnnounceOnboarding;
    ownerDismissedAnnounceOnboarding2 = [updatedCopy ownerDismissedAnnounceOnboarding];
    bOOLValue10 = [ownerDismissedAnnounceOnboarding2 BOOLValue];
    ownerDismissedAnnounceOnboarding3 = [(HMDUser *)self ownerDismissedAnnounceOnboarding];

    if (bOOLValue10 != ownerDismissedAnnounceOnboarding3)
    {
      ownerDismissedAnnounceOnboarding4 = [updatedCopy ownerDismissedAnnounceOnboarding];
      -[HMDUser setOwnerDismissedAnnounceOnboarding:](self, "setOwnerDismissedAnnounceOnboarding:", [ownerDismissedAnnounceOnboarding4 BOOLValue]);

      v10 = 1;
    }
  }

  ownerDismissedCameraRecordingOnboarding = [updatedCopy ownerDismissedCameraRecordingOnboarding];
  if (ownerDismissedCameraRecordingOnboarding)
  {
    v86 = ownerDismissedCameraRecordingOnboarding;
    ownerDismissedCameraRecordingOnboarding2 = [updatedCopy ownerDismissedCameraRecordingOnboarding];
    bOOLValue11 = [ownerDismissedCameraRecordingOnboarding2 BOOLValue];
    ownerDismissedCameraRecordingOnboarding3 = [(HMDUser *)self ownerDismissedCameraRecordingOnboarding];

    if (bOOLValue11 != ownerDismissedCameraRecordingOnboarding3)
    {
      ownerDismissedCameraRecordingOnboarding4 = [updatedCopy ownerDismissedCameraRecordingOnboarding];
      -[HMDUser setOwnerDismissedCameraRecordingOnboarding:](self, "setOwnerDismissedCameraRecordingOnboarding:", [ownerDismissedCameraRecordingOnboarding4 BOOLValue]);

      v10 = 1;
    }
  }

  ownerDismissedCameraRecordingSetupBanner = [updatedCopy ownerDismissedCameraRecordingSetupBanner];
  if (ownerDismissedCameraRecordingSetupBanner)
  {
    v92 = ownerDismissedCameraRecordingSetupBanner;
    ownerDismissedCameraRecordingSetupBanner2 = [updatedCopy ownerDismissedCameraRecordingSetupBanner];
    bOOLValue12 = [ownerDismissedCameraRecordingSetupBanner2 BOOLValue];
    ownerDismissedCameraRecordingSetupBanner3 = [(HMDUser *)self ownerDismissedCameraRecordingSetupBanner];

    if (bOOLValue12 != ownerDismissedCameraRecordingSetupBanner3)
    {
      ownerDismissedCameraRecordingSetupBanner4 = [updatedCopy ownerDismissedCameraRecordingSetupBanner];
      -[HMDUser setOwnerDismissedCameraRecordingSetupBanner:](self, "setOwnerDismissedCameraRecordingSetupBanner:", [ownerDismissedCameraRecordingSetupBanner4 BOOLValue]);

      v10 = 1;
    }
  }

  ownerDismissedCameraUpgradeOfferBanner = [updatedCopy ownerDismissedCameraUpgradeOfferBanner];
  if (ownerDismissedCameraUpgradeOfferBanner)
  {
    v98 = ownerDismissedCameraUpgradeOfferBanner;
    ownerDismissedCameraUpgradeOfferBanner2 = [updatedCopy ownerDismissedCameraUpgradeOfferBanner];
    bOOLValue13 = [ownerDismissedCameraUpgradeOfferBanner2 BOOLValue];
    ownerDismissedCameraUpgradeOfferBanner3 = [(HMDUser *)self ownerDismissedCameraUpgradeOfferBanner];

    if (bOOLValue13 != ownerDismissedCameraUpgradeOfferBanner3)
    {
      ownerDismissedCameraUpgradeOfferBanner4 = [updatedCopy ownerDismissedCameraUpgradeOfferBanner];
      -[HMDUser setOwnerDismissedCameraUpgradeOfferBanner:](self, "setOwnerDismissedCameraUpgradeOfferBanner:", [ownerDismissedCameraUpgradeOfferBanner4 BOOLValue]);

      v10 = 1;
    }
  }

  ownerDismissedHomeTheaterOnboarding = [updatedCopy ownerDismissedHomeTheaterOnboarding];
  if (ownerDismissedHomeTheaterOnboarding)
  {
    v104 = ownerDismissedHomeTheaterOnboarding;
    ownerDismissedHomeTheaterOnboarding2 = [updatedCopy ownerDismissedHomeTheaterOnboarding];
    bOOLValue14 = [ownerDismissedHomeTheaterOnboarding2 BOOLValue];
    ownerDismissedHomeTheaterOnboarding3 = [(HMDUser *)self ownerDismissedHomeTheaterOnboarding];

    if (bOOLValue14 != ownerDismissedHomeTheaterOnboarding3)
    {
      ownerDismissedHomeTheaterOnboarding4 = [updatedCopy ownerDismissedHomeTheaterOnboarding];
      -[HMDUser setOwnerDismissedHomeTheaterOnboarding:](self, "setOwnerDismissedHomeTheaterOnboarding:", [ownerDismissedHomeTheaterOnboarding4 BOOLValue]);

      v10 = 1;
    }
  }

  ownerDismissedIdentifyVoiceOnboarding = [updatedCopy ownerDismissedIdentifyVoiceOnboarding];
  if (ownerDismissedIdentifyVoiceOnboarding)
  {
    v110 = ownerDismissedIdentifyVoiceOnboarding;
    ownerDismissedIdentifyVoiceOnboarding2 = [updatedCopy ownerDismissedIdentifyVoiceOnboarding];
    bOOLValue15 = [ownerDismissedIdentifyVoiceOnboarding2 BOOLValue];
    ownerDismissedIdentifyVoiceOnboarding3 = [(HMDUser *)self ownerDismissedIdentifyVoiceOnboarding];

    if (bOOLValue15 != ownerDismissedIdentifyVoiceOnboarding3)
    {
      ownerDismissedIdentifyVoiceOnboarding4 = [updatedCopy ownerDismissedIdentifyVoiceOnboarding];
      -[HMDUser setOwnerDismissedIdentifyVoiceOnboarding:](self, "setOwnerDismissedIdentifyVoiceOnboarding:", [ownerDismissedIdentifyVoiceOnboarding4 BOOLValue]);

      v10 = 1;
    }
  }

  ownerDismissedIdentifyVoiceSetupBanner = [updatedCopy ownerDismissedIdentifyVoiceSetupBanner];
  if (ownerDismissedIdentifyVoiceSetupBanner)
  {
    v116 = ownerDismissedIdentifyVoiceSetupBanner;
    ownerDismissedIdentifyVoiceSetupBanner2 = [updatedCopy ownerDismissedIdentifyVoiceSetupBanner];
    bOOLValue16 = [ownerDismissedIdentifyVoiceSetupBanner2 BOOLValue];
    ownerDismissedIdentifyVoiceSetupBanner3 = [(HMDUser *)self ownerDismissedIdentifyVoiceSetupBanner];

    if (bOOLValue16 != ownerDismissedIdentifyVoiceSetupBanner3)
    {
      ownerDismissedIdentifyVoiceSetupBanner4 = [updatedCopy ownerDismissedIdentifyVoiceSetupBanner];
      -[HMDUser setOwnerDismissedIdentifyVoiceSetupBanner:](self, "setOwnerDismissedIdentifyVoiceSetupBanner:", [ownerDismissedIdentifyVoiceSetupBanner4 BOOLValue]);

      v10 = 1;
    }
  }

  ownerDismissedNaturalLightingOnboarding = [updatedCopy ownerDismissedNaturalLightingOnboarding];
  if (ownerDismissedNaturalLightingOnboarding)
  {
    v122 = ownerDismissedNaturalLightingOnboarding;
    ownerDismissedNaturalLightingOnboarding2 = [updatedCopy ownerDismissedNaturalLightingOnboarding];
    bOOLValue17 = [ownerDismissedNaturalLightingOnboarding2 BOOLValue];
    ownerDismissedNaturalLightingOnboarding3 = [(HMDUser *)self ownerDismissedNaturalLightingOnboarding];

    if (bOOLValue17 != ownerDismissedNaturalLightingOnboarding3)
    {
      ownerDismissedNaturalLightingOnboarding4 = [updatedCopy ownerDismissedNaturalLightingOnboarding];
      -[HMDUser setOwnerDismissedNaturalLightingOnboarding:](self, "setOwnerDismissedNaturalLightingOnboarding:", [ownerDismissedNaturalLightingOnboarding4 BOOLValue]);

      v10 = 1;
    }
  }

  ownerDismissedTVViewingProfileOnboarding = [updatedCopy ownerDismissedTVViewingProfileOnboarding];
  if (ownerDismissedTVViewingProfileOnboarding)
  {
    v128 = ownerDismissedTVViewingProfileOnboarding;
    ownerDismissedTVViewingProfileOnboarding2 = [updatedCopy ownerDismissedTVViewingProfileOnboarding];
    bOOLValue18 = [ownerDismissedTVViewingProfileOnboarding2 BOOLValue];
    ownerDismissedTVViewingProfileOnboarding3 = [(HMDUser *)self ownerDismissedTVViewingProfileOnboarding];

    if (bOOLValue18 != ownerDismissedTVViewingProfileOnboarding3)
    {
      ownerDismissedTVViewingProfileOnboarding4 = [updatedCopy ownerDismissedTVViewingProfileOnboarding];
      -[HMDUser setOwnerDismissedTVViewingProfileOnboarding:](self, "setOwnerDismissedTVViewingProfileOnboarding:", [ownerDismissedTVViewingProfileOnboarding4 BOOLValue]);

      v10 = 1;
    }
  }

  ownerDismissedTVViewingProfileSetupBanner = [updatedCopy ownerDismissedTVViewingProfileSetupBanner];
  if (ownerDismissedTVViewingProfileSetupBanner)
  {
    v134 = ownerDismissedTVViewingProfileSetupBanner;
    ownerDismissedTVViewingProfileSetupBanner2 = [updatedCopy ownerDismissedTVViewingProfileSetupBanner];
    bOOLValue19 = [ownerDismissedTVViewingProfileSetupBanner2 BOOLValue];
    ownerDismissedTVViewingProfileSetupBanner3 = [(HMDUser *)self ownerDismissedTVViewingProfileSetupBanner];

    if (bOOLValue19 != ownerDismissedTVViewingProfileSetupBanner3)
    {
      ownerDismissedTVViewingProfileSetupBanner4 = [updatedCopy ownerDismissedTVViewingProfileSetupBanner];
      -[HMDUser setOwnerDismissedTVViewingProfileSetupBanner:](self, "setOwnerDismissedTVViewingProfileSetupBanner:", [ownerDismissedTVViewingProfileSetupBanner4 BOOLValue]);

      v10 = 1;
    }
  }

  ownerDismissedUserSplitMediaAccountWarning = [updatedCopy ownerDismissedUserSplitMediaAccountWarning];
  if (ownerDismissedUserSplitMediaAccountWarning)
  {
    v140 = ownerDismissedUserSplitMediaAccountWarning;
    ownerDismissedUserSplitMediaAccountWarning2 = [updatedCopy ownerDismissedUserSplitMediaAccountWarning];
    bOOLValue20 = [ownerDismissedUserSplitMediaAccountWarning2 BOOLValue];
    ownerDismissedUserSplitMediaAccountWarning3 = [(HMDUser *)self ownerDismissedUserSplitMediaAccountWarning];

    if (bOOLValue20 != ownerDismissedUserSplitMediaAccountWarning3)
    {
      ownerDismissedUserSplitMediaAccountWarning4 = [updatedCopy ownerDismissedUserSplitMediaAccountWarning];
      -[HMDUser setOwnerDismissedUserSplitMediaAccountWarning:](self, "setOwnerDismissedUserSplitMediaAccountWarning:", [ownerDismissedUserSplitMediaAccountWarning4 BOOLValue]);

      v10 = 1;
    }
  }

  ownerDismissedWalletKeyExpressModeOnboarding = [updatedCopy ownerDismissedWalletKeyExpressModeOnboarding];
  if (ownerDismissedWalletKeyExpressModeOnboarding)
  {
    v146 = ownerDismissedWalletKeyExpressModeOnboarding;
    ownerDismissedWalletKeyExpressModeOnboarding2 = [updatedCopy ownerDismissedWalletKeyExpressModeOnboarding];
    bOOLValue21 = [ownerDismissedWalletKeyExpressModeOnboarding2 BOOLValue];
    ownerDismissedWalletKeyExpressModeOnboarding3 = [(HMDUser *)self ownerDismissedWalletKeyExpressModeOnboarding];

    if (bOOLValue21 != ownerDismissedWalletKeyExpressModeOnboarding3)
    {
      ownerDismissedWalletKeyExpressModeOnboarding4 = [updatedCopy ownerDismissedWalletKeyExpressModeOnboarding];
      -[HMDUser setOwnerDismissedWalletKeyExpressModeOnboarding:](self, "setOwnerDismissedWalletKeyExpressModeOnboarding:", [ownerDismissedWalletKeyExpressModeOnboarding4 BOOLValue]);

      v10 = 1;
    }
  }

  ownerDismissedWelcomeUI = [updatedCopy ownerDismissedWelcomeUI];
  if (ownerDismissedWelcomeUI)
  {
    v152 = ownerDismissedWelcomeUI;
    ownerDismissedWelcomeUI2 = [updatedCopy ownerDismissedWelcomeUI];
    bOOLValue22 = [ownerDismissedWelcomeUI2 BOOLValue];
    ownerDismissedWelcomeUI3 = [(HMDUser *)self ownerDismissedWelcomeUI];

    if (bOOLValue22 != ownerDismissedWelcomeUI3)
    {
      ownerDismissedWelcomeUI4 = [updatedCopy ownerDismissedWelcomeUI];
      -[HMDUser setOwnerDismissedWelcomeUI:](self, "setOwnerDismissedWelcomeUI:", [ownerDismissedWelcomeUI4 BOOLValue]);

      v10 = 1;
    }
  }

  ownerHasUserSeenRMVNewLanguageNotification = [updatedCopy ownerHasUserSeenRMVNewLanguageNotification];
  if (ownerHasUserSeenRMVNewLanguageNotification)
  {
    v158 = ownerHasUserSeenRMVNewLanguageNotification;
    ownerHasUserSeenRMVNewLanguageNotification2 = [updatedCopy ownerHasUserSeenRMVNewLanguageNotification];
    bOOLValue23 = [ownerHasUserSeenRMVNewLanguageNotification2 BOOLValue];
    ownerHasUserSeenRMVNewLanguageNotification3 = [(HMDUser *)self ownerHasUserSeenRMVNewLanguageNotification];

    if (bOOLValue23 != ownerHasUserSeenRMVNewLanguageNotification3)
    {
      ownerHasUserSeenRMVNewLanguageNotification4 = [updatedCopy ownerHasUserSeenRMVNewLanguageNotification];
      -[HMDUser setOwnerHasUserSeenRMVNewLanguageNotification:](self, "setOwnerHasUserSeenRMVNewLanguageNotification:", [ownerHasUserSeenRMVNewLanguageNotification4 BOOLValue]);

      v10 = 1;
    }
  }

  ownerDismissed2024EnergyOnboarding = [updatedCopy ownerDismissed2024EnergyOnboarding];
  if (!ownerDismissed2024EnergyOnboarding || (v164 = ownerDismissed2024EnergyOnboarding, [updatedCopy ownerDismissed2024EnergyOnboarding], v165 = objc_claimAutoreleasedReturnValue(), v166 = objc_msgSend(v165, "BOOLValue"), v167 = -[HMDUser ownerDismissed2024EnergyOnboarding](self, "ownerDismissed2024EnergyOnboarding"), v165, v164, v166 == v167))
  {
    if (!v10)
    {
      goto LABEL_85;
    }
  }

  else
  {
    ownerDismissed2024EnergyOnboarding2 = [updatedCopy ownerDismissed2024EnergyOnboarding];
    -[HMDUser setOwnerDismissed2024EnergyOnboarding:](self, "setOwnerDismissed2024EnergyOnboarding:", [ownerDismissed2024EnergyOnboarding2 BOOLValue]);
  }

  [(HMDUser *)self postUserSettingsUpdatedNotificationWithReason:@"User Settings updated"];
LABEL_85:
}

- (void)_transactionAccessorySettingsUpdated:(id)updated
{
  updatedCopy = updated;
  assistantAccessControl = [(HMDUser *)self assistantAccessControl];
  areActivityNotificationsEnabledForPersonalRequests = [assistantAccessControl areActivityNotificationsEnabledForPersonalRequests];
  activityNotificationsEnabledForPersonalRequests = [updatedCopy activityNotificationsEnabledForPersonalRequests];
  bOOLValue = [activityNotificationsEnabledForPersonalRequests BOOLValue];

  if (areActivityNotificationsEnabledForPersonalRequests != bOOLValue)
  {
    activityNotificationsEnabledForPersonalRequests2 = [updatedCopy activityNotificationsEnabledForPersonalRequests];
    [assistantAccessControl setActivityNotificationsEnabledForPersonalRequests:{objc_msgSend(activityNotificationsEnabledForPersonalRequests2, "BOOLValue")}];

    [(HMDUser *)self postUserSettingsUpdatedNotificationWithReason:@"Personal request settings enabled"];
  }
}

- (void)handleUpdatedCATForUser
{
  home = [(HMDUser *)self home];
  [home handleCATUpdate];
}

- (void)_transactionUserUpdated:(id)updated newValues:(id)values message:(id)message
{
  v193 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  group = dispatch_group_create();
  accountHandle = [valuesCopy accountHandle];

  if (accountHandle)
  {
    accountHandle2 = [valuesCopy accountHandle];
    if (!accountHandle2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    userID = [valuesCopy userID];

    if (!userID)
    {
      accountHandle2 = 0;
      goto LABEL_9;
    }

    v12 = +[HMDAccountHandleFormatter defaultFormatter];
    userID2 = [valuesCopy userID];
    accountHandle2 = [v12 accountHandleFromString:userID2];

    if (!accountHandle2)
    {
      goto LABEL_9;
    }
  }

  accountHandle3 = [(HMDUser *)self accountHandle];
  v15 = HMFEqualObjects();

  if ((v15 & 1) == 0)
  {
    [(HMDUser *)self setAccountHandle:accountHandle2];
  }

LABEL_9:
  v176 = accountHandle2;
  v16 = objc_autoreleasePoolPush();
  selfCopy = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    userID3 = [(HMDUser *)selfCopy userID];
    account = [(HMDUser *)selfCopy account];
    [(HMDUser *)selfCopy isCurrentUser];
    v22 = HMFBooleanToString();
    *buf = 138544387;
    v182 = v19;
    v183 = 2112;
    v184 = v176;
    v185 = 2117;
    v186 = userID3;
    v187 = 2112;
    v188 = account;
    v189 = 2112;
    v190 = v22;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Updated account handle [%@] for %{sensitive}@, account: %@, isCurrentUser: %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v16);
  if ([valuesCopy propertyWasSet:@"accountIdentifier"])
  {
    accountIdentifier = [valuesCopy accountIdentifier];
    accountIdentifier2 = [(HMDUser *)selfCopy accountIdentifier];
    v25 = HMFEqualObjects();

    if ((v25 & 1) == 0)
    {
      accountIdentifier3 = [valuesCopy accountIdentifier];
      [(HMDUser *)selfCopy setAccountIdentifier:accountIdentifier3];
    }
  }

  idsMergeIdentifier = [valuesCopy idsMergeIdentifier];
  if (idsMergeIdentifier)
  {
    v28 = idsMergeIdentifier;
    idsMergeIdentifier2 = [valuesCopy idsMergeIdentifier];
    mergeIdentifier = [(HMDUser *)selfCopy mergeIdentifier];
    v31 = HMFEqualObjects();

    if ((v31 & 1) == 0)
    {
      idsMergeIdentifier3 = [valuesCopy idsMergeIdentifier];
      [(HMDUser *)selfCopy setMergeIdentifier:idsMergeIdentifier3];
    }
  }

  home = [(HMDUser *)selfCopy home];
  uuid = [(HMDUser *)selfCopy uuid];
  uuid2 = [valuesCopy uuid];
  v35 = [uuid isEqual:uuid2];

  if ((v35 & 1) == 0)
  {
    v36 = objc_autoreleasePoolPush();
    v37 = selfCopy;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = HMFGetLogIdentifier();
      uuid3 = [valuesCopy uuid];
      uuid4 = [(HMDUser *)v37 uuid];
      *buf = 138543874;
      v182 = v39;
      v183 = 2112;
      v184 = uuid3;
      v185 = 2112;
      v186 = uuid4;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Updating uuid: %@ from %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v36);
    [(HMDUser *)v37 deregisterForMessages];
    uuid5 = [(HMDUser *)v37 uuid];
    uuid6 = [valuesCopy uuid];
    [(HMDUser *)v37 setUUID:uuid6];

    [(HMDUser *)v37 registerForMessages];
    [(HMDUser *)v37 recoverUserCloudDataDueToUUIDChangeFromOldUUID:uuid5];
  }

  privilege = [valuesCopy privilege];
  if (privilege)
  {
    v45 = privilege;
    privilege2 = [(HMDUser *)selfCopy privilege];
    privilege3 = [valuesCopy privilege];
    integerValue = [privilege3 integerValue];

    if (privilege2 != integerValue)
    {
      v49 = objc_autoreleasePoolPush();
      v50 = selfCopy;
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v52 = HMFGetLogIdentifier();
        privilege4 = [(HMDUser *)v50 privilege];
        if (privilege4 > 5)
        {
          v54 = @"None";
        }

        else
        {
          v54 = off_278684178[privilege4];
        }

        privilege5 = [valuesCopy privilege];
        intValue = [privilege5 intValue];
        if (intValue > 5)
        {
          v57 = @"None";
        }

        else
        {
          v57 = off_278684178[intValue];
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
      privilege6 = [valuesCopy privilege];
      -[HMDUser setPrivilege:](v50, "setPrivilege:", [privilege6 integerValue]);
    }
  }

  remoteAccessAllowed = [valuesCopy remoteAccessAllowed];
  if (remoteAccessAllowed)
  {
    v60 = remoteAccessAllowed;
    remoteAccessAllowed2 = [valuesCopy remoteAccessAllowed];
    bOOLValue = [remoteAccessAllowed2 BOOLValue];
    isRemoteAccessAllowed = [(HMDUser *)selfCopy isRemoteAccessAllowed];

    if (bOOLValue != isRemoteAccessAllowed)
    {
      remoteAccessAllowed3 = [valuesCopy remoteAccessAllowed];
      -[HMDUser setRemoteAccessAllowed:](selfCopy, "setRemoteAccessAllowed:", [remoteAccessAllowed3 BOOLValue]);
    }
  }

  camerasAccessLevel = [valuesCopy camerasAccessLevel];
  integerValue2 = [camerasAccessLevel integerValue];

  camerasAccessLevel2 = [valuesCopy camerasAccessLevel];
  if (camerasAccessLevel2)
  {
    v68 = camerasAccessLevel2;
    camerasAccessLevel3 = [(HMDUser *)selfCopy camerasAccessLevel];

    if (integerValue2 != camerasAccessLevel3)
    {
      v70 = objc_autoreleasePoolPush();
      v71 = selfCopy;
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
      [(HMDUser *)v71 setCamerasAccessLevel:integerValue2];
    }
  }

  announceAccessLevel = [valuesCopy announceAccessLevel];
  if (announceAccessLevel)
  {
    v77 = announceAccessLevel;
    announceAccessLevel2 = [valuesCopy announceAccessLevel];
    unsignedIntegerValue = [announceAccessLevel2 unsignedIntegerValue];
    announceAccessLevel3 = [(HMDUser *)selfCopy announceAccessLevel];

    if (unsignedIntegerValue != announceAccessLevel3)
    {
      announceAccessLevel4 = [valuesCopy announceAccessLevel];
      v89 = [(HMDUser *)selfCopy announceUserAccessLevelFromAnnounceAccessAllowed:announceAccessLevel4 announceAccessLevel:?];
LABEL_51:
      [(HMDUser *)selfCopy setAnnounceAccessLevel:v89];
      goto LABEL_52;
    }
  }

  announceAccessLevel4 = [valuesCopy announceAccessLevel];
  if (announceAccessLevel4)
  {
LABEL_52:

    goto LABEL_53;
  }

  announceAccessAllowed = [valuesCopy announceAccessAllowed];
  if (announceAccessAllowed)
  {
    v83 = announceAccessAllowed;
    announceAccessAllowed2 = [valuesCopy announceAccessAllowed];
    bOOLValue2 = [announceAccessAllowed2 BOOLValue];
    isAnnounceAccessAllowed = [(HMDUser *)selfCopy isAnnounceAccessAllowed];

    if (bOOLValue2 != isAnnounceAccessAllowed)
    {
      announceAccessLevel4 = [valuesCopy announceAccessAllowed];
      bOOLValue3 = [announceAccessLevel4 BOOLValue];
      v88 = 1;
      if (bOOLValue3)
      {
        v88 = 2;
      }

      if (selfCopy)
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
  audioAnalysisUserDropInAccessLevel = [valuesCopy audioAnalysisUserDropInAccessLevel];
  integerValue3 = [audioAnalysisUserDropInAccessLevel integerValue];

  audioAnalysisUserDropInAccessLevel2 = [valuesCopy audioAnalysisUserDropInAccessLevel];
  if (audioAnalysisUserDropInAccessLevel2)
  {
    v93 = audioAnalysisUserDropInAccessLevel2;
    audioAnalysisUserDropInAccessLevel3 = [(HMDUser *)selfCopy audioAnalysisUserDropInAccessLevel];

    if (integerValue3 != audioAnalysisUserDropInAccessLevel3)
    {
      v95 = objc_autoreleasePoolPush();
      v96 = selfCopy;
      v97 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
      {
        v98 = HMFGetLogIdentifier();
        v99 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser audioAnalysisUserDropInAccessLevel](v96, "audioAnalysisUserDropInAccessLevel")}];
        v100 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:integerValue3];
        *buf = 138543874;
        v182 = v98;
        v183 = 2112;
        v184 = v99;
        v185 = 2112;
        v186 = v100;
        _os_log_impl(&dword_229538000, v97, OS_LOG_TYPE_INFO, "%{public}@Updating audio analysis user Dropin value from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v95);
      [(HMDUser *)v96 setAudioAnalysisUserDropInAccessLevel:integerValue3];
    }
  }

  matterCASEAuthenticatedTagID = [valuesCopy matterCASEAuthenticatedTagID];
  if (matterCASEAuthenticatedTagID)
  {
    v102 = matterCASEAuthenticatedTagID;
    matterCASEAuthenticatedTagID2 = [valuesCopy matterCASEAuthenticatedTagID];
    if ([matterCASEAuthenticatedTagID2 integerValue])
    {
      matterCASEAuthenticatedTagID3 = [valuesCopy matterCASEAuthenticatedTagID];
      matterCASEAuthenticatedTagID4 = [(HMDUser *)selfCopy matterCASEAuthenticatedTagID];
      v106 = [matterCASEAuthenticatedTagID3 isEqual:matterCASEAuthenticatedTagID4];

      if ((v106 & 1) == 0)
      {
        v107 = objc_autoreleasePoolPush();
        v108 = selfCopy;
        v109 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v109, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v110 = v172 = v107;
          matterCASEAuthenticatedTagID5 = [(HMDUser *)v108 matterCASEAuthenticatedTagID];
          integerValue4 = [matterCASEAuthenticatedTagID5 integerValue];
          matterCASEAuthenticatedTagID6 = [(HMDUser *)v108 matterCASEAuthenticatedTagID];
          matterCASEAuthenticatedTagID7 = [valuesCopy matterCASEAuthenticatedTagID];
          integerValue5 = [matterCASEAuthenticatedTagID7 integerValue];
          matterCASEAuthenticatedTagID8 = [valuesCopy matterCASEAuthenticatedTagID];
          *buf = 138544642;
          v182 = v110;
          v183 = 2048;
          v184 = integerValue4;
          v185 = 2112;
          v186 = matterCASEAuthenticatedTagID6;
          v187 = 2048;
          v188 = integerValue5;
          v189 = 2112;
          v190 = matterCASEAuthenticatedTagID8;
          v191 = 2112;
          v192 = v108;
          _os_log_impl(&dword_229538000, v109, OS_LOG_TYPE_INFO, "%{public}@Updating CATID from 0x%lX (%@) to 0x%lX (%@) for user %@", buf, 0x3Eu);

          v107 = v172;
        }

        objc_autoreleasePoolPop(v107);
        matterCASEAuthenticatedTagID9 = [valuesCopy matterCASEAuthenticatedTagID];
        [(HMDUser *)v108 setMatterCASEAuthenticatedTagID:matterCASEAuthenticatedTagID9];

        [(HMDUser *)v108 handleUpdatedCATForUser];
      }
    }

    else
    {
    }
  }

  setProperties = [valuesCopy setProperties];
  v118 = [setProperties containsObject:@"presenceAuthorizationStatus"];

  if (v118)
  {
    v119 = MEMORY[0x277CD1F00];
    presenceAuthorizationStatus = [valuesCopy presenceAuthorizationStatus];
    v121 = [v119 authWithNumber:presenceAuthorizationStatus];

    if (isPresenceAuthorizationValid())
    {
      presenceAuthStatus = [(HMDUser *)selfCopy presenceAuthStatus];
      v123 = HMFEqualObjects();

      if ((v123 & 1) == 0)
      {
        v124 = objc_autoreleasePoolPush();
        v125 = selfCopy;
        v126 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v126, OS_LOG_TYPE_INFO))
        {
          v127 = HMFGetLogIdentifier();
          presenceAuthStatus2 = [(HMDUser *)v125 presenceAuthStatus];
          *buf = 138544130;
          v182 = v127;
          v183 = 2112;
          v184 = v125;
          v185 = 2112;
          v186 = presenceAuthStatus2;
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
      v130 = selfCopy;
      v131 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v131, OS_LOG_TYPE_INFO))
      {
        v132 = HMFGetLogIdentifier();
        presenceAuthorizationStatus2 = [valuesCopy presenceAuthorizationStatus];
        *buf = 138543618;
        v182 = v132;
        v183 = 2112;
        v184 = presenceAuthorizationStatus2;
        _os_log_impl(&dword_229538000, v131, OS_LOG_TYPE_INFO, "%{public}@Ignoring the value for presence auth in user model: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v129);
    }
  }

  [(HMDUser *)selfCopy updateRestrictedGuestSettingsFromWorkingStoreIfNeeded];
  setProperties2 = [valuesCopy setProperties];
  if ([setProperties2 containsObject:@"matCredIPKExternalRepresentation"])
  {
    acwgIssuerPublicKeyExternalRepresentation = [(HMDUser *)selfCopy acwgIssuerPublicKeyExternalRepresentation];
    matCredIPKExternalRepresentation = [valuesCopy matCredIPKExternalRepresentation];
    v137 = HMFEqualObjects();

    if (v137)
    {
      goto LABEL_81;
    }

    v138 = objc_autoreleasePoolPush();
    v139 = selfCopy;
    v140 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v140, OS_LOG_TYPE_INFO))
    {
      v141 = HMFGetLogIdentifier();
      matCredIPKExternalRepresentation2 = [valuesCopy matCredIPKExternalRepresentation];
      *buf = 138543618;
      v182 = v141;
      v183 = 2112;
      v184 = matCredIPKExternalRepresentation2;
      _os_log_impl(&dword_229538000, v140, OS_LOG_TYPE_INFO, "%{public}@Updating acwgIssuerPublicKeyExternalRepresentation to: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v138);
    setProperties2 = [valuesCopy matCredIPKExternalRepresentation];
    [(HMDUser *)v139 setAcwgIssuerPublicKeyExternalRepresentation:setProperties2];
  }

LABEL_81:
  transactionResult = [messageCopy transactionResult];
  pairingIdentity = [valuesCopy pairingIdentity];

  if (pairingIdentity)
  {
    v145 = MEMORY[0x277CFEC20];
    pairingIdentity2 = [valuesCopy pairingIdentity];
    v147 = [v145 hmd_pairingIdentityWithDictionary:pairingIdentity2];

    pairingIdentity3 = [(HMDUser *)selfCopy pairingIdentity];
    v149 = HMFEqualObjects();

    if ((v149 & 1) == 0)
    {
      [(HMDUser *)selfCopy setPairingIdentity:v147];
    }
  }

  [(HMDUser *)selfCopy _transactionAccessorySettingsUpdated:valuesCopy];
  [(HMDUser *)selfCopy _transactionUserSettingsUpdated:valuesCopy];
  [(HMDUser *)selfCopy _transactionPhotosPersonManagerSettingsUpdated:valuesCopy];
  ownerCharacteristicAuthorizationData = [valuesCopy ownerCharacteristicAuthorizationData];
  if ([valuesCopy propertyWasSet:@"ownerCharacteristicAuthorizationData"])
  {
    ownerCharacteristicAuthorizationData2 = [(HMDUser *)selfCopy ownerCharacteristicAuthorizationData];
    v152 = HMFEqualObjects();

    if ((v152 & 1) == 0)
    {
      v153 = objc_autoreleasePoolPush();
      v154 = selfCopy;
      v155 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v155, OS_LOG_TYPE_INFO))
      {
        v156 = HMFGetLogIdentifier();
        ownerCharacteristicAuthorizationData3 = [(HMDUser *)v154 ownerCharacteristicAuthorizationData];
        *buf = 138543874;
        v182 = v156;
        v183 = 2112;
        v184 = ownerCharacteristicAuthorizationData3;
        v185 = 2112;
        v186 = ownerCharacteristicAuthorizationData;
        _os_log_impl(&dword_229538000, v155, OS_LOG_TYPE_INFO, "%{public}@Updating owner user's characteristic authorization data %@ -> %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v153);
      [(HMDUser *)v154 setOwnerCharacteristicAuthorizationData:ownerCharacteristicAuthorizationData];
    }
  }

  [(HMDUser *)selfCopy _transactionUserProfileMetaDataUpdated:valuesCopy];
  setProperties3 = [valuesCopy setProperties];
  v159 = [setProperties3 containsObject:@"adaptiveTemperatureAutomationsDisclosureStatus"];

  if (v159)
  {
    adaptiveTemperatureAutomationsDisclosureStatus = [valuesCopy adaptiveTemperatureAutomationsDisclosureStatus];
    intValue2 = [adaptiveTemperatureAutomationsDisclosureStatus intValue];

    v162 = [(HMDUser *)selfCopy updateAdaptiveTemperatureAutomationsDisclosureStatus:intValue2];
    v163 = objc_autoreleasePoolPush();
    v164 = selfCopy;
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
      v186 = intValue2;
      _os_log_impl(&dword_229538000, v165, OS_LOG_TYPE_INFO, "%{public}@%@ merge disclosure status %ld", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v163);
  }

  [transactionResult markChanged];
  workQueue = [home workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HMDUser__transactionUserUpdated_newValues_message___block_invoke;
  block[3] = &unk_27868A750;
  v169 = messageCopy;
  v179 = v169;
  v180 = 0;
  dispatch_group_notify(group, workQueue, block);

  v170 = *MEMORY[0x277D85DE8];
}

- (uint64_t)announceUserAccessLevelFromAnnounceAccessAllowed:(void *)allowed announceAccessLevel:
{
  v5 = a2;
  allowedCopy = allowed;
  v7 = allowedCopy;
  if (self)
  {
    if (allowedCopy)
    {
      unsignedIntegerValue = [allowedCopy unsignedIntegerValue];
      v9 = 1;
      if (unsignedIntegerValue == 2)
      {
        v9 = 2;
      }

      if (unsignedIntegerValue)
      {
        self = v9;
      }

      else
      {
        self = 0;
      }
    }

    else if ([v5 BOOLValue])
    {
      self = 2;
    }

    else
    {
      self = 1;
    }
  }

  return self;
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

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v54 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = valuesCopy;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  if (v12)
  {
    v13 = updatedCopy;
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

    [(HMDUser *)self _transactionUserUpdated:v15 newValues:v12 message:messageCopy];
  }

  else
  {
    v17 = valuesCopy;
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
      assistantAccessControl = [(HMDUser *)self assistantAccessControl];

      if (assistantAccessControl)
      {
        assistantAccessControl2 = [(HMDUser *)self assistantAccessControl];
        [assistantAccessControl2 transactionObjectUpdated:updatedCopy newValues:v17 message:messageCopy];
      }

      else
      {
        v31 = [[HMDAssistantAccessControl alloc] initWithUser:self model:v15];
        if (v31)
        {
          accessorySettingsDataController = [(HMDUser *)self accessorySettingsDataController];
          [(HMDAssistantAccessControl *)v31 configureWithSettingsController:accessorySettingsDataController];

          [(HMDUser *)self setAssistantAccessControl:v31];
        }
      }
    }

    else
    {
      home = [(HMDUser *)self home];
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
        v49 = home;
        messagePayload = [messageCopy messagePayload];
        v26 = [messagePayload hmf_flowForKey:*MEMORY[0x277D0F1C8]];

        if (v26)
        {
          context = objc_autoreleasePoolPush();
          selfCopy = self;
          v28 = HMFGetOSLogHandle();
          v48 = v26;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = HMFGetLogIdentifier();
            uUID = [v26 UUID];
            *buf = 138543618;
            v51 = v29;
            v52 = 2112;
            v53 = uUID;
            _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling updated user access code model", buf, 0x16u);
          }
        }

        else
        {
          internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
          context = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v28 = HMFGetOSLogHandle();
          v48 = internalOnlyInitializer;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v45 = HMFGetLogIdentifier();
            uUID2 = [internalOnlyInitializer UUID];
            *buf = 138543618;
            v51 = v45;
            v52 = 2112;
            v53 = uUID2;
            _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Pin Codes}] Handling updated user access code model", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(context);
        home = v49;
        accessCodeManager = [v49 accessCodeManager];
        dataManager = [accessCodeManager dataManager];

        if (dataManager)
        {
          selfCopy3 = self;
          v39 = v48;
          [dataManager handleUpdatedUserAccessCodeModel:v24 forUser:selfCopy3 message:messageCopy flow:v48];
        }

        else
        {
          v40 = objc_autoreleasePoolPush();
          selfCopy4 = self;
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
          [messageCopy respondWithError:v44];

          v39 = v48;
          home = v49;
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

- (void)_encodeWithCoder:(id)coder
{
  v108 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  home = [(HMDUser *)self home];
  uuid = [(HMDUser *)self uuid];
  uUIDString = [uuid UUIDString];
  [coderCopy encodeObject:uUIDString forKey:@"userUUID"];

  [coderCopy encodeConditionalObject:home forKey:@"home"];
  userDataController = [(HMDUser *)self userDataController];
  [userDataController encodeWithCoder:coderCopy];

  if (![coderCopy hmd_isForXPCTransport])
  {
    accountHandle = [(HMDUser *)self accountHandle];
    [coderCopy encodeObject:accountHandle forKey:@"HM.handle"];

    userID = [(HMDUser *)self userID];
    [coderCopy encodeObject:userID forKey:@"userID"];

    if (([coderCopy hmd_isForLocalStore] & 1) != 0 || objc_msgSend(coderCopy, "hmd_isForRemoteTransportOnSameAccount"))
    {
      accountIdentifier = [(HMDUser *)self accountIdentifier];
      [coderCopy encodeObject:accountIdentifier forKey:@"HM.accountId"];
    }

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser _compatiblePrivilege](self, "_compatiblePrivilege")}];
    [coderCopy encodeObject:v19 forKey:@"userPrivilege"];

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser privilege](self, "privilege")}];
    [coderCopy encodeObject:v20 forKey:@"HM.userAdministratorType"];

    [coderCopy encodeBool:-[HMDUser isRemoteAccessAllowed](self forKey:{"isRemoteAccessAllowed"), @"HM.isUserAllowedRemoteAccess"}];
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser camerasAccessLevel](self, "camerasAccessLevel")}];
    [coderCopy encodeObject:v21 forKey:*MEMORY[0x277CD1308]];

    isAnnounceAccessAllowed = [(HMDUser *)self isAnnounceAccessAllowed];
    [coderCopy encodeBool:isAnnounceAccessAllowed forKey:*MEMORY[0x277CD12C0]];
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser announceAccessLevel](self, "announceAccessLevel")}];
    [coderCopy encodeObject:v23 forKey:@"HMDUserAnnounceAccessLevelCodingKey"];

    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser audioAnalysisUserDropInAccessLevel](self, "audioAnalysisUserDropInAccessLevel")}];
    [coderCopy encodeObject:v24 forKey:*MEMORY[0x277CCFC48]];

    if (([coderCopy hmd_isForLocalStore] & 1) != 0 || (objc_msgSend(coderCopy, "hmd_isForRemoteTransportOnSameAccount") & 1) != 0 || objc_msgSend(coderCopy, "hmd_isForRemoteUserAdministrator"))
    {
      presenceAuthStatus = [(HMDUser *)self presenceAuthStatus];
      [presenceAuthStatus addToCoder:coderCopy];
    }

    encodingRemoteDisplayName = [(HMDUser *)self encodingRemoteDisplayName];
    [coderCopy encodeObject:encodingRemoteDisplayName forKey:@"userDisplayName"];

    pairingIdentity = [(HMDUser *)self pairingIdentity];
    identifier = [pairingIdentity identifier];
    [coderCopy encodeObject:identifier forKey:@"pairingUsername"];

    pairingIdentity2 = [(HMDUser *)self pairingIdentity];
    publicKey = [pairingIdentity2 publicKey];
    data = [publicKey data];
    [coderCopy encodeObject:data forKey:@"userPublicKey"];

    pairingIdentity3 = [(HMDUser *)self pairingIdentity];
    [coderCopy encodeObject:pairingIdentity3 forKey:*MEMORY[0x277CD13E0]];

    if (([coderCopy hmd_isForLocalStore] & 1) != 0 || objc_msgSend(coderCopy, "hmd_isForRemoteTransportOnSameAccount"))
    {
      assistantAccessControl = [(HMDUser *)self assistantAccessControl];
      [coderCopy encodeObject:assistantAccessControl forKey:*MEMORY[0x277CD12F0]];
    }

    if (([coderCopy hmd_isForLocalStore] & 1) == 0 && (objc_msgSend(coderCopy, "hmd_isForRemoteUserAdministrator") & 1) == 0)
    {
      hmd_user = [coderCopy hmd_user];
      if ([(HMDUser *)self isEqual:hmd_user])
      {
      }

      else
      {
        hmd_isForRemoteTransportOnSameAccount = [coderCopy hmd_isForRemoteTransportOnSameAccount];

        if (!hmd_isForRemoteTransportOnSameAccount)
        {
          goto LABEL_59;
        }
      }
    }

    accessCode = [(HMDUser *)self accessCode];
    [coderCopy encodeObject:accessCode forKey:@"HMDUserAccessCodeCodingKey"];

    accessCodeChangedByUserUUID = [(HMDUser *)self accessCodeChangedByUserUUID];
    [coderCopy encodeObject:accessCodeChangedByUserUUID forKey:@"HMDUserAccessCodeChangedByUserUUIDCodingKey"];

    goto LABEL_59;
  }

  if (-[HMDUser isCurrentUser](self, "isCurrentUser") && ![coderCopy hmd_isForXPCTransportEntitledForSPIAccess])
  {
    displayName = 0;
  }

  else
  {
    displayName = [(HMDUser *)self displayName];
    if (!displayName)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
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

      displayName = &stru_283CF9D50;
    }
  }

  [coderCopy encodeObject:displayName forKey:@"userDisplayName"];
  [coderCopy encodeBool:-[HMDUser isCurrentUser](self forKey:{"isCurrentUser"), @"HM.isCurrentUser"}];
  if ([coderCopy hmd_isForXPCTransportEntitledForSPIAccess])
  {
    pairingIdentity4 = [(HMDUser *)self pairingIdentity];
    if (pairingIdentity4)
    {
      v36 = objc_alloc(MEMORY[0x277D0F8A8]);
      identifier2 = [pairingIdentity4 identifier];
      publicKey2 = [pairingIdentity4 publicKey];
      v39 = [v36 initWithIdentifier:identifier2 publicKey:publicKey2 privateKey:0];

      [coderCopy encodeObject:v39 forKey:*MEMORY[0x277CD13E0]];
    }

    accessorySettingsDataController = [(HMDUser *)self accessorySettingsDataController];
    mediaContentProfileAccessControlAccessoriesToEncode = [accessorySettingsDataController mediaContentProfileAccessControlAccessoriesToEncode];

    v42 = __accessoriesFromAccessoryUUIDs(mediaContentProfileAccessControlAccessoriesToEncode, home);
    v43 = v42;
    if (v42)
    {
      v44 = [v42 copy];
      [coderCopy encodeObject:v44 forKey:*MEMORY[0x277CD13B0]];
    }

    accessorySettingsDataController2 = [(HMDUser *)self accessorySettingsDataController];
    userListeningHistoryUpdateControlModelAccessoriesToEncode = [accessorySettingsDataController2 userListeningHistoryUpdateControlModelAccessoriesToEncode];

    if (userListeningHistoryUpdateControlModelAccessoriesToEncode)
    {
      [coderCopy encodeObject:userListeningHistoryUpdateControlModelAccessoriesToEncode forKey:*MEMORY[0x277CD1398]];
    }

    userID2 = [(HMDUser *)self userID];
    [coderCopy encodeObject:userID2 forKey:@"userID"];

    [coderCopy encodeBool:-[HMDUser isAdministrator](self forKey:{"isAdministrator"), @"isAdminUser"}];
    [coderCopy encodeBool:-[HMDUser isOwner](self forKey:{"isOwner"), @"HM.isOwnerUser"}];
    [coderCopy encodeBool:-[HMDUser isRemoteAccessAllowed](self forKey:{"isRemoteAccessAllowed"), @"HM.isUserAllowedRemoteAccess"}];
    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser camerasAccessLevel](self, "camerasAccessLevel")}];
    [coderCopy encodeObject:v48 forKey:*MEMORY[0x277CD1308]];

    isAnnounceAccessAllowed2 = [(HMDUser *)self isAnnounceAccessAllowed];
    [coderCopy encodeBool:isAnnounceAccessAllowed2 forKey:*MEMORY[0x277CD12C0]];
    v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser audioAnalysisUserDropInAccessLevel](self, "audioAnalysisUserDropInAccessLevel")}];
    [coderCopy encodeObject:v50 forKey:*MEMORY[0x277CCFC48]];

    if ([(HMDUser *)self isCurrentUser])
    {
      isOwner = [(HMDUser *)self isOwner];
      v52 = MEMORY[0x277CD1380];
      if (!isOwner)
      {
        uuid2 = [home uuid];
        homeManager = [home homeManager];
        sharedUserPrivateSettingsManager = [homeManager sharedUserPrivateSettingsManager];

        v60 = [sharedUserPrivateSettingsManager settingsForHome:uuid2 ofType:1];
        [coderCopy encodeObject:v60 forKey:*v52];
        [sharedUserPrivateSettingsManager settingsForHome:uuid2 ofType:2];
        v62 = v61 = pairingIdentity4;
        [coderCopy encodeObject:v62 forKey:*MEMORY[0x277CD1388]];

        pairingIdentity4 = v61;
        goto LABEL_37;
      }

      ownerPrivateSettingsAsDictionary = [(HMDUser *)self ownerPrivateSettingsAsDictionary];
      [coderCopy encodeObject:ownerPrivateSettingsAsDictionary forKey:*v52];
    }

    uuid2 = [(HMDUser *)self sharedSettingsAsDictionary];
    [coderCopy encodeObject:uuid2 forKey:*MEMORY[0x277CD1388]];
LABEL_37:

    isRestrictedGuest = [(HMDUser *)self isRestrictedGuest];
    [coderCopy encodeBool:isRestrictedGuest forKey:*MEMORY[0x277CD1390]];
    restrictedGuestAccessSettings = [(HMDUser *)self restrictedGuestAccessSettings];

    if (restrictedGuestAccessSettings)
    {
      restrictedGuestAccessSettings2 = [(HMDUser *)self restrictedGuestAccessSettings];
      [coderCopy encodeObject:restrictedGuestAccessSettings2 forKey:*MEMORY[0x277CD0D20]];
    }

    isAccessToHomeAllowed = [home isAccessToHomeAllowed];
    [coderCopy encodeBool:isAccessToHomeAllowed forKey:*MEMORY[0x277CD0018]];
    if ((isAccessToHomeAllowed & 1) == 0)
    {
      accessNotAllowedReasonCode = [home accessNotAllowedReasonCode];
      [coderCopy encodeInteger:accessNotAllowedReasonCode forKey:*MEMORY[0x277CCFD90]];
    }

    overriddenHomeAccessControl = [home overriddenHomeAccessControl];
    v69 = overriddenHomeAccessControl;
    if (overriddenHomeAccessControl)
    {
      unsignedIntegerValue = [overriddenHomeAccessControl unsignedIntegerValue];
      [coderCopy encodeInteger:unsignedIntegerValue forKey:*MEMORY[0x277CCFD88]];
    }

    presenceAuthStatus2 = [(HMDUser *)self presenceAuthStatus];
    [presenceAuthStatus2 addToCoder:coderCopy];

    if ([(HMDUser *)self isCurrentUser])
    {
      presenceComputeStatus = [home presenceComputeStatus];
      [presenceComputeStatus addToCoder:coderCopy];

      v73 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser needsiTunesMultiUserRepair](self, "needsiTunesMultiUserRepair")}];
      [coderCopy encodeObject:v73 forKey:*MEMORY[0x277CD13C8]];
    }

    if ([(HMDUser *)self isOwner])
    {
      assistantAccessControl2 = [(HMDUser *)self assistantAccessControl];
      [coderCopy encodeObject:assistantAccessControl2 forKey:*MEMORY[0x277CD12F0]];
    }

    else
    {
      accessorySettingsDataController3 = [(HMDUser *)self accessorySettingsDataController];
      assistantAccessControl2 = [accessorySettingsDataController3 assistantAccessControlAccessoriesToEncode];

      if (assistantAccessControl2)
      {
        v76 = __accessoriesFromAccessoryUUIDs(assistantAccessControl2, home);
        v77 = [v76 count] != 0;
        [v76 na_map:&__block_literal_global_726];
        v78 = v104 = v69;
        [v76 na_map:&__block_literal_global_729];
        v105 = displayName;
        v79 = v103 = home;
        v80 = pairingIdentity4;
        v81 = [HMDAssistantAccessControl alloc];
        accessorySettingsDataController4 = [(HMDUser *)self accessorySettingsDataController];
        assistantAccessControlActivityNotificationsEnabledForPersonalRequests = [accessorySettingsDataController4 assistantAccessControlActivityNotificationsEnabledForPersonalRequests];
        v84 = v81;
        pairingIdentity4 = v80;
        v85 = [(HMDAssistantAccessControl *)v84 initWithUser:self appleAccessories:v78 hapAccessoryIdentifiers:v79 enabled:v77 activityNotificationsEnabledForPersonalRequests:assistantAccessControlActivityNotificationsEnabledForPersonalRequests];

        userDataController2 = [(HMDUser *)self userDataController];
        -[HMDAssistantAccessControl setOptions:](v85, "setOptions:", [userDataController2 assistantAccessControlRequiresAuthenticationForSecureRequests] ^ 1);

        accessorySettingsDataController5 = [(HMDUser *)self accessorySettingsDataController];
        [(HMDAssistantAccessControl *)v85 configureWithSettingsController:accessorySettingsDataController5];

        [coderCopy encodeObject:v85 forKey:*MEMORY[0x277CD12F0]];
        home = v103;
        displayName = v105;

        v69 = v104;
      }
    }

    if ([(HMDUser *)self isCurrentUser])
    {
      v88 = [objc_alloc(MEMORY[0x277CD1810]) initWithDeviceNotificationMode:{-[HMDUser announceNotificationModeForCurrentDevice](self, "announceNotificationModeForCurrentDevice")}];
      [coderCopy encodeObject:v88 forKey:*MEMORY[0x277CD12C8]];
    }

    photosPersonDataManager = [(HMDUser *)self photosPersonDataManager];
    settings = [photosPersonDataManager settings];
    [coderCopy encodeObject:settings forKey:*MEMORY[0x277CD13F0]];

    photosPersonDataManager2 = [(HMDUser *)self photosPersonDataManager];
    zoneUUID = [photosPersonDataManager2 zoneUUID];
    [coderCopy encodeObject:zoneUUID forKey:*MEMORY[0x277CD1400]];

    if ([coderCopy hmd_isForXPCTransport] && -[HMDUser isCurrentUser](self, "isCurrentUser"))
    {
      v93 = [(HMDUser *)self adaptiveTemperatureAutomationsDisclosureStatus]== 1;
      [coderCopy encodeBool:v93 forKey:*MEMORY[0x277CD1438]];
    }
  }

  account = [(HMDUser *)self account];
  senderCorrelationIdentifier = [account senderCorrelationIdentifier];

  if (senderCorrelationIdentifier && ([coderCopy hmd_entitlements] & 0x1000) != 0)
  {
    [coderCopy encodeObject:senderCorrelationIdentifier forKey:*MEMORY[0x277CD1450]];
  }

LABEL_59:
  matterCASEAuthenticatedTagID = [(HMDUser *)self matterCASEAuthenticatedTagID];
  [coderCopy encodeObject:matterCASEAuthenticatedTagID forKey:@"HMDUserMatterCATIDCodingKey"];

  if ([coderCopy hmd_isForLocalStore] && -[HMDUser isCurrentUser](self, "isCurrentUser"))
  {
    v97 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUser needsiTunesMultiUserRepair](self, "needsiTunesMultiUserRepair")}];
    [coderCopy encodeObject:v97 forKey:*MEMORY[0x277CD13C8]];
  }

  iCloudAltDSID = [(HMDUser *)self iCloudAltDSID];
  [coderCopy encodeObject:iCloudAltDSID forKey:*MEMORY[0x277CD14E8]];

  firstName = [(HMDUser *)self firstName];
  [coderCopy encodeObject:firstName forKey:*MEMORY[0x277CD1378]];

  lastName = [(HMDUser *)self lastName];
  [coderCopy encodeObject:lastName forKey:*MEMORY[0x277CD1368]];

  if (-[HMDUser isCurrentUser](self, "isCurrentUser") && (([coderCopy hmd_isForLocalStore] & 1) != 0 || objc_msgSend(coderCopy, "hmd_isForRemoteTransportOnSameAccount") && isiOSDevice()))
  {
    v101 = [objc_alloc(MEMORY[0x277CD1810]) initWithDeviceNotificationMode:{-[HMDUser announceNotificationModeForCurrentDevice](self, "announceNotificationModeForCurrentDevice")}];
    [coderCopy encodeObject:v101 forKey:*MEMORY[0x277CD12C8]];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [(HMDUser *)self _encodeWithCoder:coderCopy];
  objc_autoreleasePoolPop(v4);
}

- (id)_initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  if (v5 != objc_opt_class() || ![coderCopy decodeBoolForKey:@"userIsRemoteGateway"])
  {
    if ([coderCopy containsValueForKey:@"HM.handle"])
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.handle"];
    }

    else
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userID"];
      if (v8)
      {
        v7 = [HMDAccountHandle accountHandleForDestination:v8];
      }

      else
      {
        v7 = 0;
      }
    }

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.userAdministratorType"];
    v10 = v9;
    if (v9)
    {
      integerValue = [v9 integerValue];
    }

    else
    {
      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userPrivilege"];
      integerValue2 = [v12 integerValue];
      if (integerValue2 == 1)
      {
        integerValue = 3;
      }

      else
      {
        integerValue = integerValue2;
      }
    }

    v14 = *MEMORY[0x277CD13E0];
    if ([coderCopy containsValueForKey:*MEMORY[0x277CD13E0]])
    {
      v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:v14];
    }

    else
    {
      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pairingUsername"];
      v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userPublicKey"];
      v18 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v17];
      v15 = [objc_alloc(MEMORY[0x277CFEC20]) initWithIdentifier:v16 publicKey:v18 privateKey:0 permissions:(integerValue & 0xFFFFFFFFFFFFFFFDLL) == 1];
    }

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"home"];
    v20 = [(HMDUser *)self initWithAccountHandle:v7 home:v19 pairingIdentity:v15 privilege:2];
    if (!v20)
    {
LABEL_50:
      self = v20;

      selfCopy = self;
      goto LABEL_51;
    }

    v66 = v7;
    v64 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userUUID"];
    v21 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v64];
    uuid = v20->_uuid;
    v20->_uuid = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.userAdministratorType"];
    v65 = v10;
    if (v23)
    {
      v20->_privilege = [v23 integerValue];
    }

    else
    {
      v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"userPrivilege", 0}];
      integerValue3 = [v24 integerValue];
      v26 = 3;
      if (integerValue3 != 1)
      {
        v26 = integerValue3;
      }

      v20->_privilege = v26;
    }

    v20->_privilege = integerValue;
    if ([coderCopy containsValueForKey:@"userDisplayName"])
    {
      v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userDisplayName"];
      displayName = v20->_displayName;
      v20->_displayName = v27;
    }

    userID = [(HMDUser *)v20 userID];
    if ([userID isEqual:v20->_displayName])
    {
    }

    else
    {
      v30 = v20->_displayName;

      if (v30)
      {
LABEL_31:
        v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.accountId"];
        accountIdentifier = v20->_accountIdentifier;
        v20->_accountIdentifier = v33;

        if ([coderCopy containsValueForKey:@"HM.isUserAllowedRemoteAccess"])
        {
          v35 = [coderCopy decodeBoolForKey:@"HM.isUserAllowedRemoteAccess"];
        }

        else
        {
          v35 = 1;
        }

        v20->_remoteAccessAllowed = v35;
        v36 = [MEMORY[0x277CD1F00] authWithCoder:coderCopy];
        presenceAuthStatus = v20->_presenceAuthStatus;
        v20->_presenceAuthStatus = v36;

        v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD1308]];
        v39 = v38;
        if (v38)
        {
          v20->_camerasAccessLevel = [v38 integerValue];
        }

        v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD12F0]];
        assistantAccessControl = v20->_assistantAccessControl;
        v20->_assistantAccessControl = v40;

        v42 = *MEMORY[0x277CD12C0];
        v43 = coderCopy;
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

        integerValue4 = [v50 integerValue];
        v20->_audioAnalysisUserDropInAccessLevel = integerValue4;
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

  selfCopy = [[HMDResidentUser alloc] initWithCoder:coderCopy];
LABEL_51:

  return selfCopy;
}

+ (id)fetchSharedUserDataRootForHomeUUID:(id)d moc:(id)moc coreData:(id)data ttrManager:(id)manager
{
  v40[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  mocCopy = moc;
  dataCopy = data;
  managerCopy = manager;
  v14 = +[MKFCKSharedUserDataRoot fetchRequest];
  dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"homeModelID", dCopy];
  [v14 setPredicate:dCopy];

  cloudPrivateStore = [dataCopy cloudPrivateStore];
  v40[0] = cloudPrivateStore;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
  [v14 setAffectedStores:v17];

  [v14 setFetchLimit:1];
  v35 = 0;
  v18 = [mocCopy executeFetchRequest:v14 error:&v35];
  v19 = v35;
  firstObject = [v18 firstObject];

  if (firstObject)
  {
    modelID = [firstObject modelID];

    if (modelID)
    {
      v22 = firstObject;
      goto LABEL_11;
    }

    v34 = managerCopy;
    v27 = objc_autoreleasePoolPush();
    selfCopy = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v30;
      v38 = 2112;
      v39 = firstObject;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to get the model id from MKFCKSharedUserDataRoot: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    managerCopy = v34;
    [v34 requestRadarWithDisplayReason:@"fetched unsupported homekit data" radarTitle:@"Fetched MKFCKSharedUserDataRoot with no model id - revised"];
  }

  else
  {
    v33 = managerCopy;
    v23 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    managerCopy = v33;
    [v33 requestRadarWithDisplayReason:@"detected issue related to HomeKit Shared User functionality" radarTitle:@"MKFCKSharedUserDataRoot fetch failed during user data lookup" componentName:@"HomeKit" componentVersion:@"Users+Invitations" componentID:938670];
  }

  v22 = 0;
LABEL_11:

  v31 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)fetchSharedUserDataRootForHomeUUID:(id)d moc:(id)moc coreData:(id)data
{
  dataCopy = data;
  mocCopy = moc;
  dCopy = d;
  v10 = +[HMDTTRManager sharedManager];
  v11 = [HMDUser fetchSharedUserDataRootForHomeUUID:dCopy moc:mocCopy coreData:dataCopy ttrManager:v10];

  return v11;
}

+ (id)appendRootPath:(id)path withSettingPath:(id)settingPath
{
  pathCopy = path;
  settingPathCopy = settingPath;
  if ([pathCopy length])
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", pathCopy, settingPathCopy];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@", settingPathCopy, v9];
  }
  v7 = ;

  return v7;
}

+ (id)getSettingsUsingPreOrderTraversal:(id)traversal rootUUID:(id)d keyPath:(id)path
{
  v44 = *MEMORY[0x277D85DE8];
  traversalCopy = traversal;
  dCopy = d;
  pathCopy = path;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v12 = dictionary;
  if (dCopy)
  {
    v37 = 0;
    v13 = [traversalCopy fetchModelsWithParentModelID:dCopy error:&v37];
    v14 = v37;
    if (v13)
    {
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __62__HMDUser_getSettingsUsingPreOrderTraversal_rootUUID_keyPath___block_invoke;
      v32[3] = &unk_278684108;
      selfCopy = self;
      v15 = pathCopy;
      v33 = v15;
      v34 = traversalCopy;
      v16 = v12;
      v35 = v16;
      [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:v32];
      v25 = MEMORY[0x277D85DD0];
      v26 = 3221225472;
      v27 = __62__HMDUser_getSettingsUsingPreOrderTraversal_rootUUID_keyPath___block_invoke_2;
      v28 = &unk_278684130;
      selfCopy2 = self;
      v29 = v15;
      v17 = v16;
      v30 = v17;
      [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:&v25];
      v18 = [v17 copy];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543874;
        v39 = v22;
        v40 = 2112;
        v41 = dCopy;
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
    v18 = [dictionary copy];
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

+ (id)localSharedZoneForSharedUserUUID:(id)d database:(id)database
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  databaseCopy = database;
  v8 = [objc_opt_class() sharedZoneNameForUserUUID:dCopy];
  v9 = [self _openZoneWithName:v8 inDatabase:databaseCopy];
  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v17 = 138543874;
      v18 = v13;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = selfCopy;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Successfully created local zone [%@] for user : %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = v9;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)localPrivateZoneForSharedUserUUID:(id)d database:(id)database
{
  databaseCopy = database;
  dCopy = d;
  v8 = [objc_opt_class() privateZoneNameForUserUUID:dCopy];

  v9 = [self _openZoneWithName:v8 inDatabase:databaseCopy];

  return v9;
}

+ (id)_openZoneWithName:(id)name inDatabase:(id)database
{
  v31 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  databaseCopy = database;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v11;
    v27 = 2112;
    v28 = nameCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Opening zone with name: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = objc_alloc_init(MEMORY[0x277D170E8]);
  v24 = 0;
  v13 = [databaseCopy existingPrivateZonesWithName:nameCopy configuration:v12 delegate:0 error:&v24];
  v14 = v24;
  if (v13)
  {
    localZone = [v13 localZone];
    [localZone startUp];
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v19;
      v27 = 2112;
      v28 = localZone;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Successfully opened local zone [%@]", buf, 0x16u);
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543874;
      v26 = v21;
      v27 = 2112;
      v28 = nameCopy;
      v29 = 2112;
      v30 = v14;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to open zone with name %@: %@", buf, 0x20u);
    }

    localZone = 0;
  }

  objc_autoreleasePoolPop(v16);
  v22 = *MEMORY[0x277D85DE8];

  return localZone;
}

+ (void)_saveSharedUserSettingsToCoreData:(id)data managedObjectContext:(id)context rootShareObject:(id)object
{
  objectCopy = object;
  dataCopy = data;
  [context hmd_assertIsExecuting];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__HMDUser__saveSharedUserSettingsToCoreData_managedObjectContext_rootShareObject___block_invoke;
  v11[3] = &unk_2786840E0;
  v12 = objectCopy;
  selfCopy = self;
  v10 = objectCopy;
  [dataCopy enumerateKeysAndObjectsUsingBlock:v11];
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

+ (void)__findOrCreateCKSharedUserAccessorySettingsForAccessory:(id)accessory usingManagedObjectContext:(id)context rootShareObject:(id)object listeningHistoryEnabled:(id)enabled mediaContentProfileEnabled:(id)profileEnabled personalRequestsEnabled:(id)requestsEnabled
{
  v59 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  contextCopy = context;
  objectCopy = object;
  enabledCopy = enabled;
  profileEnabledCopy = profileEnabled;
  requestsEnabledCopy = requestsEnabled;
  [contextCopy hmd_assertIsExecuting];
  v19 = objc_autoreleasePoolPush();
  selfCopy = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138544642;
    v48 = v22;
    v49 = 2112;
    v50 = accessoryCopy;
    v51 = 2112;
    v52 = objectCopy;
    v53 = 2112;
    v54 = enabledCopy;
    v55 = 2112;
    v56 = profileEnabledCopy;
    v57 = 2112;
    v58 = requestsEnabledCopy;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Going to check whether we have shared settings for accessory : %@ for root: %@. [Listening History: %@], [Media Access control : %@], [Personal request enabled : %@]", buf, 0x3Eu);
  }

  v42 = enabledCopy;

  objc_autoreleasePoolPop(v19);
  v23 = +[MKFCKSharedUserAccessorySettings fetchRequest];
  v43 = accessoryCopy;
  accessoryCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"accessoryModelID", accessoryCopy];
  [v23 setPredicate:accessoryCopy];

  v25 = +[HMDCoreData sharedInstance];
  cloudPrivateStore = [v25 cloudPrivateStore];

  v46 = cloudPrivateStore;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
  [v23 setAffectedStores:v27];

  [v23 setFetchLimit:1];
  v45 = 0;
  v28 = [contextCopy executeFetchRequest:v23 error:&v45];
  v41 = v45;
  firstObject = [v28 firstObject];

  if (!firstObject)
  {
    v30 = objc_autoreleasePoolPush();
    v31 = selfCopy;
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
    homeModelID = [objectCopy homeModelID];
    firstObject = [MKFCKSharedUserAccessorySettings createWithHomeModelID:homeModelID accessoryModelID:v43 persistentStore:cloudPrivateStore context:contextCopy];

    [firstObject setRoot:objectCopy];
    [objectCopy addAccessorySettingsObject:firstObject];
  }

  v36 = objc_autoreleasePoolPush();
  v37 = selfCopy;
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    v39 = HMFGetLogIdentifier();
    *buf = 138543618;
    v48 = v39;
    v49 = 2112;
    v50 = firstObject;
    _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Working with %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v36);
  if (v42)
  {
    [firstObject setListeningHistoryEnabled:{objc_msgSend(v42, "BOOLValue")}];
  }

  if (profileEnabledCopy)
  {
    [firstObject setMediaContentProfileEnabled:{objc_msgSend(profileEnabledCopy, "BOOLValue")}];
  }

  if (requestsEnabledCopy)
  {
    [firstObject setPersonalRequestsEnabled:{objc_msgSend(requestsEnabledCopy, "BOOLValue")}];
  }

  v40 = *MEMORY[0x277D85DE8];
}

+ (void)_fetchAndMigrateAssistantAccessControlModelV2ToCoreDataFromLocalZone:(id)zone managedObjectContext:(id)context rootShareObject:(id)object
{
  v25 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  contextCopy = context;
  objectCopy = object;
  [contextCopy hmd_assertIsExecuting];
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Going to migrate assistant access control models from V5 to Core Data", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [zoneCopy queryModelsOfType:objc_opt_class()];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __117__HMDUser__fetchAndMigrateAssistantAccessControlModelV2ToCoreDataFromLocalZone_managedObjectContext_rootShareObject___block_invoke;
  v19[3] = &unk_2786840B8;
  v21 = objectCopy;
  v22 = selfCopy;
  v20 = contextCopy;
  v16 = objectCopy;
  v17 = contextCopy;
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

+ (void)_fetchAndMigrateMediaContentProfileAccessControlModelToCoreDataFromLocalZone:(id)zone managedObjectContext:(id)context rootShareObject:(id)object
{
  v25 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  contextCopy = context;
  objectCopy = object;
  [contextCopy hmd_assertIsExecuting];
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Going to migrate media content profile access control models from V5 to Core Data", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [zoneCopy queryModelsOfType:objc_opt_class()];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __125__HMDUser__fetchAndMigrateMediaContentProfileAccessControlModelToCoreDataFromLocalZone_managedObjectContext_rootShareObject___block_invoke;
  v19[3] = &unk_278684090;
  v21 = objectCopy;
  v22 = selfCopy;
  v20 = contextCopy;
  v16 = objectCopy;
  v17 = contextCopy;
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

+ (void)_fetchAndMigrateUserListeningHistoryUpdatedControlModelToCoreDataFromLocalZone:(id)zone managedObjectContext:(id)context rootShareObject:(id)object
{
  v25 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  contextCopy = context;
  objectCopy = object;
  [contextCopy hmd_assertIsExecuting];
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Going to migrate user listening history models from V5 to Core Data", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [zoneCopy queryModelsOfType:objc_opt_class()];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __127__HMDUser__fetchAndMigrateUserListeningHistoryUpdatedControlModelToCoreDataFromLocalZone_managedObjectContext_rootShareObject___block_invoke;
  v19[3] = &unk_278684068;
  v21 = objectCopy;
  v22 = selfCopy;
  v20 = contextCopy;
  v16 = objectCopy;
  v17 = contextCopy;
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

+ (void)_fetchAndMigratePhotosPersonManagerSettingsFromLocalZone:(id)zone managedObjectContext:(id)context rootShareObject:(id)object
{
  v25 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  contextCopy = context;
  objectCopy = object;
  [contextCopy hmd_assertIsExecuting];
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Going to migrate photos person manager settings from V5 to Core Data", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [zoneCopy queryModelsOfType:objc_opt_class()];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __105__HMDUser__fetchAndMigratePhotosPersonManagerSettingsFromLocalZone_managedObjectContext_rootShareObject___block_invoke;
  v19[3] = &unk_278684040;
  v20 = objectCopy;
  v21 = contextCopy;
  v22 = selfCopy;
  v16 = contextCopy;
  v17 = objectCopy;
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

+ (void)migrateHH1SettingsToHH2ForSharedUserWithUUID:(id)d homeUUID:(id)iD privateZone:(id)zone backingStoreContext:(id)context
{
  v35 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  zoneCopy = zone;
  contextCopy = context;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
  if (zoneCopy)
  {
    if (v17)
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138544130;
      v28 = v18;
      v29 = 2112;
      v30 = iDCopy;
      v31 = 2112;
      v32 = dCopy;
      v33 = 2112;
      v34 = zoneCopy;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Migrating private user settings from HH1 to HH2 for home : %@, user: %@, privateZone: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v14);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __97__HMDUser_migrateHH1SettingsToHH2ForSharedUserWithUUID_homeUUID_privateZone_backingStoreContext___block_invoke;
    v21[3] = &unk_278684018;
    v22 = contextCopy;
    v23 = iDCopy;
    v26 = selfCopy;
    v24 = zoneCopy;
    v25 = dCopy;
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

+ (void)migrateHH1SettingsToHH2ForSharedUserWithUUID:(id)d homeUUID:(id)iD sharedZone:(id)zone backingStoreContext:(id)context
{
  v35 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  zoneCopy = zone;
  contextCopy = context;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
  if (zoneCopy)
  {
    if (v17)
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138544130;
      v28 = v18;
      v29 = 2112;
      v30 = iDCopy;
      v31 = 2112;
      v32 = dCopy;
      v33 = 2112;
      v34 = zoneCopy;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Migrating shared user settings from HH1 to HH2 for home : %@, user: %@, sharedZone: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v14);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __96__HMDUser_migrateHH1SettingsToHH2ForSharedUserWithUUID_homeUUID_sharedZone_backingStoreContext___block_invoke;
    v21[3] = &unk_278684018;
    v22 = contextCopy;
    v23 = iDCopy;
    v26 = selfCopy;
    v24 = zoneCopy;
    v25 = dCopy;
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

+ (HMDUser)userWithDictionary:(id)dictionary home:(id)home
{
  v55[2] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  homeCopy = home;
  v8 = [dictionaryCopy hmf_stringForKey:@"userID"];
  if (v8)
  {
    v9 = [self privilegeFromDictionary:dictionaryCopy];
    v10 = [dictionaryCopy hmf_numberForKey:@"HM.isUserAllowedRemoteAccess"];
    v11 = +[HMDAccountHandleFormatter defaultFormatter];
    v12 = [v11 accountHandleFromString:v8];

    v47 = v12;
    v13 = [[HMDUser alloc] initWithAccountHandle:v12 home:homeCopy pairingIdentity:0 privilege:v9];
    v14 = __displayNameForUser(v13);
    [(HMDUser *)v13 setDisplayName:v14];

    -[HMDUser setRemoteAccessAllowed:](v13, "setRemoteAccessAllowed:", [v10 BOOLValue]);
    v15 = [dictionaryCopy hmf_numberForKey:*MEMORY[0x277CD1308]];
    v16 = v15;
    if (v15)
    {
      -[HMDUser setCamerasAccessLevel:](v13, "setCamerasAccessLevel:", [v15 integerValue]);
    }

    v46 = v16;
    if (v13)
    {
      v17 = *MEMORY[0x277CD12C0];
      v18 = dictionaryCopy;
      v19 = [v18 hmf_numberForKey:v17];
      v20 = [v18 hmf_numberForKey:@"HMDUserAnnounceAccessLevelCodingKey"];

      v21 = [(HMDUser *)v13 announceUserAccessLevelFromAnnounceAccessAllowed:v19 announceAccessLevel:v20];
    }

    else
    {
      v21 = 0;
    }

    [(HMDUser *)v13 setAnnounceAccessLevel:v21];
    v22 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CD0D20]];
    if (v22)
    {
      v44 = v10;
      v45 = homeCopy;
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
        selfCopy = self;
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

      homeCopy = v45;

      v10 = v44;
    }

    v37 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543874;
      v50 = v40;
      v51 = 2112;
      v52 = v13;
      v53 = 2112;
      v54 = dictionaryCopy;
      _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@user [%@] from dictionary: [%@]", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v37);
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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

+ (unint64_t)privilegeFromDictionary:(id)dictionary
{
  v3 = [dictionary hmf_numberForKey:@"HM.userAdministratorType"];
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
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

+ (id)getSyncDataFromLocalDiskWithArchive:(id)archive
{
  v41 = *MEMORY[0x277D85DE8];
  archiveCopy = archive;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [defaultManager fileExistsAtPath:archiveCopy];

  if (v6)
  {
    v34 = 0;
    v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:archiveCopy options:2 error:&v34];
    v8 = v34;
    if (!v7)
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543874;
        v36 = v28;
        v37 = 2112;
        v38 = archiveCopy;
        v39 = 2112;
        v40 = v8;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Unable to read data from file : %@ / %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v25);
      v16 = 0;
      goto LABEL_21;
    }

    v9 = MEMORY[0x277CCAAC8];
    allowedClassesForSyncData = [objc_opt_class() allowedClassesForSyncData];
    v33 = v8;
    v11 = [v9 unarchivedObjectOfClasses:allowedClassesForSyncData fromData:v7 error:&v33];
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
      selfCopy2 = self;
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
      selfCopy3 = self;
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
  selfCopy4 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543618;
    v36 = v24;
    v37 = 2112;
    v38 = archiveCopy;
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
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  array = [MEMORY[0x277CBEB18] array];
  v3 = hh1ToHH2PerDeviceMigrationDirectoryPath;
  v22 = defaultManager;
  v4 = [defaultManager contentsOfDirectoryAtPath:v3 error:0];

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
            selfCopy = self;
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
            [array addObject:v13];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v7);
  }

  v20 = *MEMORY[0x277D85DE8];

  return array;
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

+ (id)sharedZoneNameForUserUUID:(id)d
{
  uUIDString = [d UUIDString];
  v4 = [@"user-data-shared-" stringByAppendingString:uUIDString];

  return v4;
}

+ (id)privateZoneNameForUserUUID:(id)d
{
  uUIDString = [d UUIDString];
  v4 = [@"user-data-private-" stringByAppendingString:uUIDString];

  return v4;
}

+ (id)UUIDWithUserID:(id)d forHomeIdentifier:(id)identifier uuid:(id)uuid pairingIdentity:(id)identity
{
  v43[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifierCopy = identifier;
  uuidCopy = uuid;
  identityCopy = identity;
  v14 = identityCopy;
  if (uuidCopy)
  {
    uUID = [uuidCopy copy];
LABEL_3:
    v16 = uUID;
    goto LABEL_11;
  }

  identifier = [identityCopy identifier];

  if (identifierCopy && identifier)
  {
    v18 = MEMORY[0x277CCAD78];
    v19 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"05A41D49-2A4D-4D9E-8A3E-43A779B973BA"];
    uUIDString = [identifierCopy UUIDString];
    v43[0] = uUIDString;
    identifier2 = [v14 identifier];
    v43[1] = identifier2;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
    v16 = [v18 hm_deriveUUIDFromBaseUUID:v19 identifierSalt:0 withSalts:v22];
  }

  else
  {
    v23 = MEMORY[0x277CCAD78];
    if (!dCopy || !identifierCopy)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      goto LABEL_3;
    }

    v19 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"05A41D49-2A4D-4D9E-8A3E-43A779B973BA"];
    uUIDString = [identifierCopy UUIDString];
    v42[0] = uUIDString;
    v42[1] = dCopy;
    identifier2 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
    v16 = [v23 hm_deriveUUIDFromBaseUUID:v19 identifierSalt:0 withSalts:identifier2];
  }

LABEL_11:
  v24 = objc_autoreleasePoolPush();
  selfCopy = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v27 = HMFGetLogIdentifier();
    v30 = 138544642;
    v31 = v27;
    v32 = 2112;
    v33 = v16;
    v34 = 2112;
    v35 = dCopy;
    v36 = 2112;
    v37 = identifierCopy;
    v38 = 2112;
    v39 = uuidCopy;
    v40 = 2112;
    v41 = v14;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Created user UUID: %@ from userID: %@ homeUUID: %@ uuid: %@ pairingIdentity: %@", &v30, 0x3Eu);
  }

  objc_autoreleasePoolPop(v24);
  v28 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)userIDForAccountHandle:(id)handle
{
  v3 = [handle URI];
  unprefixedURI = [v3 unprefixedURI];

  return unprefixedURI;
}

+ (id)ownerWithUserID:(id)d home:(id)home pairingIdentity:(id)identity homeManager:(id)manager
{
  v35 = *MEMORY[0x277D85DE8];
  dCopy = d;
  homeCopy = home;
  identityCopy = identity;
  managerCopy = manager;
  v30 = 0;
  v14 = [managerCopy getOrCreateLocalPairingIdentity:&v30];
  v15 = v30;
  if (v14)
  {
    if (dCopy && identityCopy && ![v14 isEqual:identityCopy])
    {
      v22 = +[HMDAccountHandleFormatter defaultFormatter];
      v29 = [v22 accountHandleFromString:dCopy];

      v23 = objc_alloc(MEMORY[0x277CFEC20]);
      identifier = [identityCopy identifier];
      publicKey = [identityCopy publicKey];
      v26 = [v23 initWithIdentifier:identifier publicKey:publicKey privateKey:0 permissions:1];

      v17 = v29;
      v16 = [[self alloc] initWithAccountHandle:v29 home:homeCopy pairingIdentity:v26 privilege:3];
    }

    else
    {
      v16 = [self currentUserWithPrivilege:3 forHome:homeCopy];
      v17 = [[HMDAssistantAccessControl alloc] initWithUser:v16];
      [v16 setAssistantAccessControl:v17];
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (HMDUser)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = [(HMDUser *)self _initWithCoder:coderCopy];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x277D0F820]);
  messageTargetUUID = [(HMDUser *)self messageTargetUUID];
  v5 = [v3 initWithTarget:messageTargetUUID];

  return v5;
}

- (id)logIdentifier
{
  uuid = [(HMDUser *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (NSData)publicKey
{
  pairingIdentity = [(HMDUser *)self pairingIdentity];
  publicKey = [pairingIdentity publicKey];
  data = [publicKey data];

  return data;
}

- (NSString)pairingUsername
{
  pairingIdentity = [(HMDUser *)self pairingIdentity];
  identifier = [pairingIdentity identifier];

  return identifier;
}

- (void)setUserID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v4 = +[HMDAccountHandleFormatter defaultFormatter];
    v5 = [v4 accountHandleFromString:dCopy];

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
  accountHandle = [(HMDUser *)self accountHandle];
  v3 = [HMDUser userIDForAccountHandle:accountHandle];

  return v3;
}

- (void)sendSharedUserProfileMetadataUpdatedMessage
{
  messageDispatcher = [(HMDUser *)self messageDispatcher];
  v3 = [MEMORY[0x277D0F818] entitledMessageWithName:*MEMORY[0x277CD14C8] messagePayload:MEMORY[0x277CBEC10]];
  uuid = [(HMDUser *)self uuid];
  [messageDispatcher sendMessage:v3 target:uuid];
}

- (void)_handleFetchProfilePhoto:(id)photo
{
  photoCopy = photo;
  WeakRetained = objc_loadWeakRetained(&self->_home);
  backingStore = [WeakRetained backingStore];
  context = [backingStore context];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __36__HMDUser__handleFetchProfilePhoto___block_invoke;
  v9[3] = &unk_27868A750;
  v9[4] = self;
  v10 = photoCopy;
  v8 = photoCopy;
  [context performBlock:v9];
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

- (void)_didHandleFMFDeviceChangedNotificationWithStatus:(unint64_t)status
{
  v13 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (status == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_home);
    [(HMDUser *)self _pushTextMetadataToStoreForHome:WeakRetained];
    [(HMDUser *)self _pushPhotoMetadataToStoreForHome:WeakRetained];
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (void)_handleFMFDeviceChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HMDUser__handleFMFDeviceChangedNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
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

- (void)__handleModifiedAccount:(id)account
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

- (void)_pushPhotoMetadataToStoreForHome:(id)home
{
  v33 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v8 = v18 = v5;
    [(HMDUser *)selfCopy isOwner];
    v9 = HMFBooleanToString();
    dataSource = [(HMDUser *)selfCopy dataSource];
    [dataSource isThisDeviceDesignatedFMFDevice];
    v11 = HMFBooleanToString();
    [(HMDUser *)selfCopy isRestrictedGuest];
    v12 = HMFBooleanToString();
    [(HMDUser *)selfCopy isCurrentUser];
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
  accountMetadata = [(HMDUser *)selfCopy accountMetadata];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __44__HMDUser__pushPhotoMetadataToStoreForHome___block_invoke;
  v19[3] = &unk_278683F78;
  v19[4] = selfCopy;
  v20 = homeCopy;
  v16 = homeCopy;
  [accountMetadata profilePhotoWithCompletionHandler:v19];

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

- (void)_pushTextMetadataToStoreForHome:(id)home
{
  v38 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v8 = v25 = homeCopy;
    [(HMDUser *)selfCopy isOwner];
    v9 = HMFBooleanToString();
    dataSource = [(HMDUser *)selfCopy dataSource];
    [dataSource isThisDeviceDesignatedFMFDevice];
    v11 = HMFBooleanToString();
    [(HMDUser *)selfCopy isRestrictedGuest];
    v12 = HMFBooleanToString();
    [(HMDUser *)selfCopy isCurrentUser];
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

    homeCopy = v25;
  }

  objc_autoreleasePoolPop(v5);
  accountMetadata = [(HMDUser *)selfCopy accountMetadata];
  iCloudAltDSID = [accountMetadata iCloudAltDSID];
  [(HMDUser *)selfCopy setiCloudAltDSID:iCloudAltDSID];

  accountMetadata2 = [(HMDUser *)selfCopy accountMetadata];
  firstName = [accountMetadata2 firstName];
  [(HMDUser *)selfCopy setFirstName:firstName];

  accountMetadata3 = [(HMDUser *)selfCopy accountMetadata];
  lastName = [accountMetadata3 lastName];
  [(HMDUser *)selfCopy setLastName:lastName];

  iCloudAltDSID2 = [(HMDUser *)selfCopy iCloudAltDSID];
  firstName2 = [(HMDUser *)selfCopy firstName];
  lastName2 = [(HMDUser *)selfCopy lastName];
  [(HMDUser *)selfCopy _pushSharedProfileMetadataToStoreForHome:homeCopy iCloudAltDSID:iCloudAltDSID2 firstName:firstName2 lastName:lastName2 profilePhotoDict:0];

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
  home = [(HMDUser *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33__HMDUser_uniqueIDForAccessories__block_invoke;
  v9[3] = &unk_27868A4D8;
  v9[4] = self;
  v6 = context;
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
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HMDPreferenceAllowedToAcceptRemoteMessagesIntervalInHoursKey"];
  numberValue = [v3 numberValue];
  [numberValue doubleValue];
  v6 = v5 * 3600.0;

  return v6;
}

- (BOOL)shouldWeOverrideRemoteAccessAllowedDespiteNoRemoteAccessAllowed
{
  v39 = *MEMORY[0x277D85DE8];
  if (![(HMDUser *)self isRemoteAccessAllowed])
  {
    home = [(HMDUser *)self home];
    isRestrictedGuest = [(HMDUser *)self isRestrictedGuest];
    presenceMonitor = [home presenceMonitor];
    uuid = [(HMDUser *)self uuid];
    if (isRestrictedGuest)
    {
      v8 = [presenceMonitor isUserAtHome:uuid];

      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
      if (v8)
      {
        if (v12)
        {
          v13 = HMFGetLogIdentifier();
          userID = [(HMDUser *)selfCopy userID];
          v33 = 138543618;
          v34 = v13;
          v35 = 2112;
          v36 = userID;
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
          userID2 = [(HMDUser *)selfCopy userID];
          v33 = 138543618;
          v34 = v29;
          v35 = 2112;
          v36 = userID2;
          _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@[RG] : Not allowing remote access for [%@] as the user is not at Home", &v33, 0x16u);
        }

        objc_autoreleasePoolPop(v9);
        v3 = 0;
      }

      goto LABEL_21;
    }

    v15 = [presenceMonitor getLastLocalActivityTimeStampForUserUUID:uuid];

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
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
    v3 = v17 <= v19;
    if (v17 > v19)
    {
      if (v23)
      {
        v24 = HMFGetLogIdentifier();
        userID3 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
        v33 = 138543874;
        v34 = v24;
        v35 = 2112;
        v36 = userID3;
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
      userID3 = [(HMDUser *)selfCopy2 userID];
      v33 = 138543618;
      v34 = v24;
      v35 = 2112;
      v36 = userID3;
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

- (void)handlePrimaryResidentUpdateNotification:(id)notification
{
  notificationCopy = notification;
  if ([(HMDUser *)self isRestrictedGuest])
  {
    queue = [(HMDUser *)self queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__HMDUser_handlePrimaryResidentUpdateNotification___block_invoke;
    v6[3] = &unk_27868A750;
    v6[4] = self;
    v7 = notificationCopy;
    dispatch_async(queue, v6);
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

- (BOOL)areAccessoriesInAllowedList:(id)list
{
  listCopy = list;
  if (-[HMDUser isRestrictedGuest](self, "isRestrictedGuest") && [listCopy count])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__HMDUser_areAccessoriesInAllowedList___block_invoke;
    v7[3] = &unk_27868A1B0;
    v7[4] = self;
    v5 = [listCopy na_all:v7];
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
  home = [(HMDUser *)self home];
  if ([(HMDUser *)self isRestrictedGuest])
  {
    restrictedGuestAccessSettings = [(HMDUser *)self restrictedGuestAccessSettings];
    schedule = [restrictedGuestAccessSettings schedule];

    if (schedule)
    {
      v6 = MEMORY[0x277CD1D78];
      date = [MEMORY[0x277CBEAA8] date];
      timeZone = [home timeZone];
      v9 = [v6 isDate:date withinAllowedTimeForSchedule:schedule forHomeInTimeZone:timeZone];
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

- (void)_notifyEveryOneAboutRestrictedGuestScheduleNotification:(id)notification
{
  v20[1] = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v19 = @"kUserUUIDKey";
  uuid = [(HMDUser *)self uuid];
  v20[0] = uuid;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

  logAndPostNotification(notificationCopy, self, v6);
  if (HMFEqualObjects())
  {
    v7 = MEMORY[0x277CD1448];
LABEL_5:
    v8 = *v7;
    messageDispatcher = [(HMDUser *)self messageDispatcher];
    v10 = [MEMORY[0x277D0F818] entitledMessageWithName:v8 messagePayload:MEMORY[0x277CBEC10]];
    uuid2 = [(HMDUser *)self uuid];
    [messageDispatcher sendMessage:v10 target:uuid2];

    goto LABEL_9;
  }

  if (HMFEqualObjects())
  {
    v7 = MEMORY[0x277CD1440];
    goto LABEL_5;
  }

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
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

- (void)handleRestrictedGuestScheduleTimer:(id)timer
{
  timerCopy = timer;
  queue = [(HMDUser *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HMDUser_handleRestrictedGuestScheduleTimer___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = timerCopy;
  selfCopy = self;
  v6 = timerCopy;
  dispatch_async(queue, v7);
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

- (void)_handleRestrictedGuestNewSchedule:(id)schedule
{
  v38 = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  queue = [(HMDUser *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    startDate = [scheduleCopy startDate];
    endDate = [scheduleCopy endDate];
    *buf = 138543874;
    v31 = v9;
    v32 = 2112;
    v33 = startDate;
    v34 = 2112;
    v35 = endDate;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Calculated new interval : [%@, %@]", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = +[HMDBackgroundTaskManager sharedManager];
  v13 = [MEMORY[0x277CBEAA8] now];
  v14 = [scheduleCopy containsDate:v13];

  if (v14)
  {
    restrictedGuestScheduleEndTimerID = [(HMDUser *)selfCopy restrictedGuestScheduleEndTimerID];
    [scheduleCopy endDate];
  }

  else
  {
    restrictedGuestScheduleEndTimerID = [(HMDUser *)selfCopy restrictedGuestScheduleStartTimerID];
    [scheduleCopy startDate];
  }
  v16 = ;
  v29 = 0;
  v17 = [v12 scheduleTaskWithIdentifier:restrictedGuestScheduleEndTimerID fireDate:v16 onObserver:selfCopy selector:sel_handleRestrictedGuestScheduleTimer_ error:&v29];
  v18 = v29;
  v19 = objc_autoreleasePoolPush();
  v20 = selfCopy;
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
      v33 = restrictedGuestScheduleEndTimerID;
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
    v35 = restrictedGuestScheduleEndTimerID;
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
  restrictedGuestScheduleStartTimerID = [(HMDUser *)self restrictedGuestScheduleStartTimerID];
  [v5 cancelTaskWithIdentifier:restrictedGuestScheduleStartTimerID onObserver:self];

  restrictedGuestScheduleEndTimerID = [(HMDUser *)self restrictedGuestScheduleEndTimerID];
  [v5 cancelTaskWithIdentifier:restrictedGuestScheduleEndTimerID onObserver:self];
}

- (void)scheduleRestrictedGuestAccessTimersWithReason:(id)reason
{
  reasonCopy = reason;
  queue = [(HMDUser *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HMDUser_scheduleRestrictedGuestAccessTimersWithReason___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = reasonCopy;
  v6 = reasonCopy;
  dispatch_async(queue, v7);
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
    restrictedGuestAccessSettings = [(HMDUser *)self restrictedGuestAccessSettings];
    v4 = [restrictedGuestAccessSettings updateRestrictedGuestSettingsFromWorkingStore:self];

    if (v4)
    {
      logAndPostNotification(@"HMDUserScheduleDidChangeNotification", self, 0);

      [(HMDUser *)self scheduleRestrictedGuestAccessTimersWithReason:@"Updated schedule from DB"];
    }
  }
}

- (void)setRestrictedGuestAccessSettings:(id)settings
{
  settingsCopy = settings;
  os_unfair_lock_lock_with_options();
  restrictedGuestAccessSettings = self->_restrictedGuestAccessSettings;
  self->_restrictedGuestAccessSettings = settingsCopy;

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
  uuid = [(HMDUser *)self uuid];
  uUIDString = [uuid UUIDString];
  v5 = [v2 stringWithFormat:@"RGScheduleEnd.%@", uUIDString];

  return v5;
}

- (id)restrictedGuestScheduleStartTimerID
{
  v2 = MEMORY[0x277CCACA8];
  uuid = [(HMDUser *)self uuid];
  uUIDString = [uuid UUIDString];
  v5 = [v2 stringWithFormat:@"RGScheduleStart.%@", uUIDString];

  return v5;
}

- (NSNumber)notificationContextNFCIdentifier
{
  v15 = *MEMORY[0x277D85DE8];
  nfcIssuerKeyIdentifier = [(HMDUser *)self nfcIssuerKeyIdentifier];
  v4 = nfcIssuerKeyIdentifier;
  if (nfcIssuerKeyIdentifier)
  {
    bytes = [nfcIssuerKeyIdentifier bytes];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*bytes];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
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
  uuid = [(HMDUser *)self uuid];
  [uuid getUUIDBytes:v6];

  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:LODWORD(v6[0])];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)configurePersonSettingsManager
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(HMDUser *)self isCurrentUser])
  {
    home = [(HMDUser *)self home];
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    v7 = v6;
    if (home)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v13 = 138543362;
        v14 = v8;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Creating the person settings manager", &v13, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
      v9 = [[HMDPersonSettingsManager alloc] initWithHome:home workQueue:selfCopy->_queue];
      [(HMDUser *)selfCopy setPersonSettingsManager:v9];

      personSettingsManager = [(HMDUser *)selfCopy personSettingsManager];
      [personSettingsManager configure];
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
  home = [(HMDUser *)self home];
  if (home && ([(HMDUser *)self isRunningOnHomeOwnersDevice]|| [(HMDUser *)self isCurrentUser]) && [(HMDUser *)self isAllowedToSharePhotosPersonManagerData])
  {
    v3 = [HMDUserPhotosPersonDataManager alloc];
    messageDispatcher = [(HMDUser *)self messageDispatcher];
    backingStore = [home backingStore];
    context = [backingStore context];
    v7 = [(HMDUserPhotosPersonDataManager *)v3 initWithUser:self messageDispatcher:messageDispatcher backingStoreContext:context workQueue:self->_queue];
    [(HMDUser *)self setPhotosPersonDataManager:v7];

    photosPersonDataManager = [(HMDUser *)self photosPersonDataManager];
    [photosPersonDataManager configure];
  }
}

- (HMDPhotosPersonManager)photosPersonManager
{
  photosPersonDataManager = [(HMDUser *)self photosPersonDataManager];
  personManager = [photosPersonDataManager personManager];

  return personManager;
}

- (HMPhotosPersonManagerSettings)photosPersonManagerSettings
{
  photosPersonDataManager = [(HMDUser *)self photosPersonDataManager];
  settings = [photosPersonDataManager settings];
  v4 = settings;
  if (settings)
  {
    v5 = settings;
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
  uuid = [(HMDUser *)self uuid];
  v4 = [(HMDUser *)self announceNotificationFileNameForUserUUID:uuid];

  return v4;
}

- (id)announceNotificationFileNameForUserUUID:(id)d
{
  v3 = MEMORY[0x277CCACA8];
  dCopy = d;
  v5 = hh1ToHH2PerDeviceMigrationDirectoryPath;
  dCopy = [v3 stringWithFormat:@"%@/HMDUser-Announce-Notification-Mode-%@.plist", v5, dCopy];

  return dCopy;
}

- (void)_removeAnnounceNotificationModeFileFromDiskForUserUUID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = objc_alloc(MEMORY[0x277CBEBC0]);
  v6 = [(HMDUser *)self announceNotificationFileNameForUserUUID:dCopy];
  v7 = [v5 initFileURLWithPath:v6];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v15 = 0;
  [defaultManager removeItemAtURL:v7 error:&v15];
  v9 = v15;

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
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
  home = [(HMDUser *)self home];
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
        defaultManager = [*(v6 + 2560) defaultManager];
        v10 = [defaultManager fileExistsAtPath:v8];

        v11 = objc_autoreleasePoolPush();
        selfCopy = self;
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
          v38 = selfCopy;
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
        allowedClassesForAnnounceNotificationMode = [objc_opt_class() allowedClassesForAnnounceNotificationMode];
        v69 = v17;
        v20 = [v18 unarchivedObjectOfClasses:allowedClassesForAnnounceNotificationMode fromData:v16 error:&v69];
        v21 = v69;

        if (!v20)
        {
          v41 = objc_autoreleasePoolPush();
          v42 = selfCopy;
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
        v27 = selfCopy;
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
          backingStore = [home backingStore];
          context = [backingStore context];

          managedObjectContext = [context managedObjectContext];
          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v66[2] = __51__HMDUser__migrateAnnounceNotificationModeIfNeeded__block_invoke;
          v66[3] = &unk_27868A010;
          v66[4] = v27;
          v67 = v31;
          v68 = managedObjectContext;
          v35 = managedObjectContext;
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
    uuid = [(HMDUser *)self uuid];
    v9[0] = uuid;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    uuid = [(HMDUser *)self home];
    homeManager = [uuid homeManager];
    v3Uuid = [uuid uuid];
    v4 = [homeManager hh1UserIDsForCurrentUserForHomeUUID:v3Uuid];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_readAnnounceNotificationModeFromLocalStore
{
  v22 = *MEMORY[0x277D85DE8];
  isCurrentUser = [(HMDUser *)self isCurrentUser];
  v4 = objc_autoreleasePoolPush();
  if (isCurrentUser)
  {
    [(HMDUser *)self _migrateAnnounceNotificationModeIfNeeded];
    objc_autoreleasePoolPop(v4);
    home = [(HMDUser *)self home];
    uuid = [home uuid];
    backingStore = [home backingStore];
    context = [backingStore context];

    managedObjectContext = [context managedObjectContext];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __54__HMDUser__readAnnounceNotificationModeFromLocalStore__block_invoke;
    v16[3] = &unk_27868A010;
    v17 = uuid;
    v18 = managedObjectContext;
    selfCopy = self;
    v10 = managedObjectContext;
    v11 = uuid;
    [v10 performBlockAndWait:v16];
  }

  else
  {
    selfCopy2 = self;
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

- (void)_updateAnnounceNotificationModeToLocalStore:(unint64_t)store managedObjectContext:(id)context
{
  v53 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  [contextCopy hmd_assertIsExecuting];
  home = [(HMDUser *)self home];
  uuid = [home uuid];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:store];
    *buf = 138543618;
    v46 = v12;
    v47 = 2112;
    v48 = v13;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Going to store announce notification mode (%@) to local store", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = [MKFLocalBulletinAnnounceUserSettingRegistration fetchAnnounceRegistrationWithHomeUUID:uuid managedObjectContext:contextCopy];
  if (!v14)
  {
    v14 = [[MKFLocalBulletinAnnounceUserSettingRegistration alloc] initWithContext:contextCopy];
  }

  [(MKFLocalBulletinAnnounceUserSettingRegistration *)v14 setEnabled:1];
  [(MKFLocalBulletinAnnounceUserSettingRegistration *)v14 setHomeUUID:uuid];
  storeCopy = store;
  [(MKFLocalBulletinAnnounceUserSettingRegistration *)v14 setAnnounceNotificationMode:store];
  v43 = 0;
  [contextCopy save:&v43];
  v15 = v43;
  v16 = objc_autoreleasePoolPush();
  v17 = selfCopy;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    [MEMORY[0x277CCABB0] numberWithUnsignedInteger:storeCopy];
    v40 = uuid;
    v21 = v20 = home;
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

    home = v20;
    uuid = v40;
  }

  objc_autoreleasePoolPop(v16);
  if (!v15)
  {
    v41 = home;
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v24 = [standardUserDefaults dictionaryForKey:@"deviceAnnounceMode"];
    dictionary = [v24 mutableCopy];

    if (!dictionary)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:storeCopy];
    uUIDString = [uuid UUIDString];
    [dictionary setValue:v26 forKey:uUIDString];

    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults2 setObject:dictionary forKey:@"deviceAnnounceMode"];

    standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults3 synchronize];

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
      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:storeCopy];
      *buf = 138543618;
      v46 = v37;
      v47 = 2112;
      v48 = v38;
      _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Setting announce notification mode (%@) to defaults for NPSManager", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v34);
    v15 = 0;
    home = v41;
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_saveAnnounceSettingsToLocalStore:(unint64_t)store
{
  home = [(HMDUser *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  managedObjectContext = [context managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__HMDUser__saveAnnounceSettingsToLocalStore___block_invoke;
  v10[3] = &unk_278685DF8;
  v11 = managedObjectContext;
  storeCopy = store;
  v10[4] = self;
  v9 = managedObjectContext;
  [v9 performBlock:v10];
}

- (void)_updateAnnounceNotificationMode:(unint64_t)mode
{
  v22 = *MEMORY[0x277D85DE8];
  queue = [(HMDUser *)self queue];
  dispatch_assert_queue_V2(queue);

  isCurrentUser = [(HMDUser *)self isCurrentUser];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (isCurrentUser)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUser announceNotificationModeForCurrentDevice](selfCopy, "announceNotificationModeForCurrentDevice")}];
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mode];
      v16 = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating Announce Setting from %@ to %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    if ([(HMDUser *)selfCopy announceNotificationModeForCurrentDevice]!= mode)
    {
      [(HMDUser *)selfCopy setAnnounceNotificationModeForCurrentDevice:mode];
      [(HMDUser *)selfCopy _saveAnnounceSettingsToLocalStore:[(HMDUser *)selfCopy announceNotificationModeForCurrentDevice]];
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

- (void)updateAnnounceNotificationMode:(unint64_t)mode
{
  queue = [(HMDUser *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__HMDUser_updateAnnounceNotificationMode___block_invoke;
  v6[3] = &unk_27868A0D0;
  v6[4] = self;
  v6[5] = mode;
  dispatch_async(queue, v6);
}

- (void)_handleAnnounceSettingsUpdate:(id)update
{
  v26 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  queue = [(HMDUser *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(HMDUser *)self isCurrentUser])
  {
    v6 = *MEMORY[0x277CD12C8];
    v21 = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    v8 = [updateCopy unarchivedObjectForKey:v6 ofClasses:v7];

    if (v8)
    {
      -[HMDUser _updateAnnounceNotificationMode:](self, "_updateAnnounceNotificationMode:", [v8 deviceNotificationMode]);
      [updateCopy respondWithSuccess];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        messagePayload = [updateCopy messagePayload];
        *buf = 138543618;
        v23 = v17;
        v24 = 2112;
        v25 = messagePayload;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Missing announce user settings in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Missing announce settings" reason:@"Need announce settings in message" suggestion:0];
      [updateCopy respondWithError:v19];

      v8 = 0;
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      messagePayload2 = [updateCopy messagePayload];
      *buf = 138543618;
      v23 = v12;
      v24 = 2112;
      v25 = messagePayload2;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Announce settings can only be updated on current user: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48 description:@"This can only be set for the user's devices." reason:@"Announce notifications are only delivered on devices the user owns." suggestion:0];
    [updateCopy respondWithError:v8];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovedAccessory:(id)accessory
{
  userInfo = [accessory userInfo];
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

  v11 = v6;

  if (v11)
  {
    userDataController = [(HMDUser *)self userDataController];
    uuid = [v11 uuid];
    [userDataController handleRemovedAccessory:uuid];

    accessorySettingsDataController = [(HMDUser *)self accessorySettingsDataController];
    uuid2 = [v11 uuid];
    [accessorySettingsDataController handleRemovedAccessoryWithModelID:uuid2];
  }
}

- (void)removeAccessoriesFromAssistantAccessControlList:(id)list
{
  listCopy = list;
  if ([(HMDUser *)self isCurrentUserAndOwner])
  {
    assistantAccessControl = [(HMDUser *)self assistantAccessControl];
    [assistantAccessControl removeAccessoriesAddedByOldController:listCopy];
  }
}

- (void)enableUserListeningHistoryForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HMDUser_enableUserListeningHistoryForAccessory___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = accessoryCopy;
  v6 = accessoryCopy;
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

- (void)_handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs:(id)ds
{
  v58 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  home = [(HMDUser *)self home];
  homeManager = [home homeManager];
  homes = [homeManager homes];

  if (home && ([homes containsObject:home] & 1) != 0)
  {
    if ([(HMDUser *)self isCurrentUser])
    {
      v8 = [dsCopy arrayForKey:*MEMORY[0x277CD13A0]];
      v9 = v8;
      if (v8)
      {
        v43 = homes;
        v44 = dsCopy;
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
        dsCopy = v44;
        v17 = v44;
        v46 = v17;
        v18 = _Block_copy(aBlock);
        accessorySettingsDataController = [(HMDUser *)self accessorySettingsDataController];

        if (accessorySettingsDataController)
        {
          accessorySettingsDataController2 = [(HMDUser *)self accessorySettingsDataController];
          [accessorySettingsDataController2 handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs:v10 completion:v18];
        }

        else
        {
          v39 = objc_autoreleasePoolPush();
          selfCopy = self;
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v42 = HMFGetLogIdentifier();
            *buf = 138543362;
            v53 = v42;
            _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Missing user data controller.", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v39);
          accessorySettingsDataController2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"User data controller not found" reason:@"No settings for this user" suggestion:0];
          [v17 respondWithError:accessorySettingsDataController2];
        }

        homes = v43;

        responseHandler2 = v46;
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          messagePayload = [dsCopy messagePayload];
          *buf = 138543618;
          v53 = v35;
          v54 = 2112;
          v55 = messagePayload;
          _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Missing user update listening history control accessories in message payload: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v32);
        v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Missing access control accessories" reason:@"Need access control accessories in message" suggestion:0];
        responseHandler = [dsCopy responseHandler];

        if (!responseHandler)
        {
          goto LABEL_31;
        }

        responseHandler2 = [dsCopy responseHandler];
        (responseHandler2)[2](responseHandler2, v10, 0);
      }

LABEL_31:
      goto LABEL_18;
    }

    v28 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v53 = v31;
      v54 = 2112;
      v55 = dsCopy;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Can only modify own ULH control: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v25 = MEMORY[0x277CCA9B8];
    v26 = 2028;
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543874;
      v53 = v24;
      v54 = 2112;
      v55 = home;
      v56 = 2112;
      v57 = homes;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Not processing user listening history update since the homes mismatch. This user's home (%@) is not in the home manager's homes: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = MEMORY[0x277CCA9B8];
    v26 = 2018;
  }

  v9 = [v25 hmPrivateErrorWithCode:v26];
  [dsCopy respondWithError:v9];
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

- (void)handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs:(id)ds
{
  dsCopy = ds;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__HMDUser_handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = dsCopy;
  v6 = dsCopy;
  dispatch_async(queue, v7);
}

- (void)_handleMediaContentProfileAccessControlUpdate:(id)update
{
  v56 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  home = [(HMDUser *)self home];
  homeManager = [home homeManager];
  homes = [homeManager homes];

  if (home && ([homes containsObject:home] & 1) != 0)
  {
    if (![(HMDUser *)self isCurrentUser])
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543618;
        v51 = v28;
        v52 = 2112;
        v53 = updateCopy;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Can only modify own Media Profile Content control: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      [updateCopy respondWithError:v9];
      goto LABEL_30;
    }

    v8 = [updateCopy arrayForKey:*MEMORY[0x277CD13B8]];
    v9 = v8;
    if (v8)
    {
      v42 = updateCopy;
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
      updateCopy = v42;
      v17 = v42;
      v44 = v17;
      v18 = _Block_copy(aBlock);
      accessorySettingsDataController = [(HMDUser *)self accessorySettingsDataController];

      if (accessorySettingsDataController)
      {
        accessorySettingsDataController2 = [(HMDUser *)self accessorySettingsDataController];
        [accessorySettingsDataController2 handleMediaContentProfileAccessControlUpdatedAccessoryUUIDs:v10 completion:v18];
      }

      else
      {
        v36 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = HMFGetLogIdentifier();
          *buf = 138543362;
          v51 = v39;
          _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Missing user data controller.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v36);
        accessorySettingsDataController2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"User data controller not found" reason:@"No settings for this user" suggestion:0];
        [v17 respondWithError:accessorySettingsDataController2];
      }

      responseHandler2 = v44;
      v9 = v41;
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        messagePayload = [updateCopy messagePayload];
        *buf = 138543618;
        v51 = v32;
        v52 = 2112;
        v53 = messagePayload;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Missing access control accessories in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Missing access control accessories" reason:@"Need access control accessories in message" suggestion:0];
      responseHandler = [updateCopy responseHandler];

      if (!responseHandler)
      {
        goto LABEL_29;
      }

      responseHandler2 = [updateCopy responseHandler];
      (responseHandler2)[2](responseHandler2, v10, 0);
    }

LABEL_29:
LABEL_30:

    goto LABEL_31;
  }

  v21 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543874;
    v51 = v24;
    v52 = 2112;
    v53 = home;
    v54 = 2112;
    v55 = homes;
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

- (void)handleMediaContentProfileAccessControlUpdate:(id)update
{
  updateCopy = update;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMDUser_handleMediaContentProfileAccessControlUpdate___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = updateCopy;
  v6 = updateCopy;
  dispatch_async(queue, v7);
}

- (void)_handleAssistantAccessControlUpdate:(id)update
{
  v113 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  home = [(HMDUser *)self home];
  homeManager = [home homeManager];
  homes = [homeManager homes];

  if (home && ([homes containsObject:home] & 1) != 0)
  {
    assistantAccessControl = [(HMDUser *)self assistantAccessControl];
    accessories = [assistantAccessControl accessories];
    v10 = [accessories copy];

    v105 = 0;
    v11 = [HMDAssistantAccessControl accessControlWithMessage:updateCopy user:self currentAccessories:v10 error:&v105];
    v12 = v105;
    v13 = v12;
    if (!v11)
    {
      v23 = v12;
      v24 = objc_autoreleasePoolPush();
      selfCopy = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v108 = v27;
        v109 = 2112;
        v110 = updateCopy;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Failed to create access control from message: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v13 = v23;
      [updateCopy respondWithError:v23];
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
      v91 = assistantAccessControl;
      v29 = MEMORY[0x277CBEB18];
      [v11 accessories];
      v31 = v30 = v11;
      v32 = [v29 arrayWithCapacity:{objc_msgSend(v31, "count")}];

      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      accessories2 = [v30 accessories];
      v34 = [accessories2 countByEnumeratingWithState:&v99 objects:v106 count:16];
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
              objc_enumerationMutation(accessories2);
            }

            uuid = [*(*(&v99 + 1) + 8 * i) uuid];
            [v32 addObject:uuid];
          }

          v35 = [accessories2 countByEnumeratingWithState:&v99 objects:v106 count:16];
        }

        while (v35);
      }

      v39 = objc_autoreleasePoolPush();
      selfCopy2 = self;
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
      areActivityNotificationsEnabledForPersonalRequests = [v96 areActivityNotificationsEnabledForPersonalRequests];
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __47__HMDUser__handleAssistantAccessControlUpdate___block_invoke_626;
      aBlock[3] = &unk_27868A250;
      v44 = updateCopy;
      v98 = v44;
      v45 = _Block_copy(aBlock);
      accessorySettingsDataController = [(HMDUser *)selfCopy2 accessorySettingsDataController];

      v13 = v93;
      if (accessorySettingsDataController)
      {
        accessorySettingsDataController2 = [(HMDUser *)selfCopy2 accessorySettingsDataController];
        [accessorySettingsDataController2 handleAssistantAccessControlAccessoryUUIDsUpdated:v32 activityNotificationsEnabledForPersonalRequests:areActivityNotificationsEnabledForPersonalRequests completion:v45];
      }

      else
      {
        v56 = objc_autoreleasePoolPush();
        v57 = selfCopy2;
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
        accessorySettingsDataController2 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9005 description:@"User data controller not found. No settings for this user." underlyingError:0];
        [v44 respondWithError:accessorySettingsDataController2];
      }

      assistantAccessControl = v91;
      v10 = v95;
      goto LABEL_50;
    }

    if (!assistantAccessControl)
    {
      v48 = objc_autoreleasePoolPush();
      selfCopy3 = self;
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
      responseHandler = [updateCopy responseHandler];

      if (responseHandler)
      {
        v54 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9004];
        responseHandler2 = [updateCopy responseHandler];
        (responseHandler2)[2](responseHandler2, v54, 0);
      }

      goto LABEL_50;
    }

    v92 = v13;
    v94 = v10;
    [v11 setOptions:{objc_msgSend(assistantAccessControl, "options") | objc_msgSend(v11, "options") | 1}];
    if (isInternalBuild())
    {
      accessories3 = [v11 accessories];
      if ([accessories3 count])
      {
        assistantAccessControl2 = [(HMDUser *)self assistantAccessControl];
        accessories4 = [assistantAccessControl2 accessories];
        if (![accessories4 count])
        {
          v90 = assistantAccessControl;
          assistantAccessControl3 = [(HMDUser *)self assistantAccessControl];
          isEnabled = [assistantAccessControl3 isEnabled];

          if (isEnabled)
          {
            assistantAccessControl = v90;
            goto LABEL_42;
          }

          v60 = v96;
          accessories3 = [v96 user];
          v61 = objc_autoreleasePoolPush();
          selfCopy4 = self;
          v63 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
          {
            v64 = HMFGetLogIdentifier();
            *buf = 138543618;
            v108 = v64;
            v109 = 2112;
            v110 = accessories3;
            _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_INFO, "%{public}@Enabling assistant access controls for internal user: %@", buf, 0x16u);

            v60 = v96;
          }

          objc_autoreleasePoolPop(v61);
          v65 = [HMDAssistantAccessControl alloc];
          [v60 accessories];
          assistantAccessControl2 = v66 = v60;
          v67 = [(HMDAssistantAccessControl *)v65 initWithUser:accessories3 appleAccessories:assistantAccessControl2 enabled:1];
          accessories4 = v66;
          v96 = v67;
          assistantAccessControl = v90;
        }
      }
    }

LABEL_42:
    v68 = objc_autoreleasePoolPush();
    selfCopy5 = self;
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
      v79 = assistantAccessControl;
      accessories5 = [v96 accessories];
      v81 = [accessories5 na_map:&__block_literal_global_622];

      v82 = objc_autoreleasePoolPush();
      v83 = selfCopy5;
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
      areActivityNotificationsEnabledForPersonalRequests2 = [v96 areActivityNotificationsEnabledForPersonalRequests];
      v103[0] = MEMORY[0x277D85DD0];
      v103[1] = 3221225472;
      v103[2] = __47__HMDUser__handleAssistantAccessControlUpdate___block_invoke_623;
      v103[3] = &unk_27868A250;
      v104 = updateCopy;
      v87 = _Block_copy(v103);
      accessorySettingsDataController3 = [(HMDUser *)v83 accessorySettingsDataController];
      [accessorySettingsDataController3 handleAssistantAccessControlAccessoryUUIDsUpdated:v81 activityNotificationsEnabledForPersonalRequests:areActivityNotificationsEnabledForPersonalRequests2 completion:v87];

      assistantAccessControl = v79;
      v13 = v92;
      v10 = v94;
      goto LABEL_51;
    }

    v72 = objc_autoreleasePoolPush();
    v73 = selfCopy5;
    v74 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
    {
      v75 = HMFGetLogIdentifier();
      *buf = 138543362;
      v108 = v75;
      _os_log_impl(&dword_229538000, v74, OS_LOG_TYPE_INFO, "%{public}@Updated access control resulted in no change", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v72);
    responseHandler3 = [updateCopy responseHandler];

    if (responseHandler3)
    {
      responseHandler4 = [updateCopy responseHandler];
      responseHandler4[2](responseHandler4, 0, 0);
    }

    v13 = v92;
    v10 = v94;
LABEL_50:
    v28 = v96;
LABEL_51:

    goto LABEL_52;
  }

  v19 = objc_autoreleasePoolPush();
  selfCopy6 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543874;
    v108 = v22;
    v109 = 2112;
    v110 = home;
    v111 = 2112;
    v112 = homes;
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

- (void)handleAssistantAccessControlUpdate:(id)update
{
  updateCopy = update;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HMDUser_handleAssistantAccessControlUpdate___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = updateCopy;
  v6 = updateCopy;
  dispatch_async(queue, v7);
}

- (BOOL)isCurrentUserAndOwner
{
  v13 = *MEMORY[0x277D85DE8];
  if (![(HMDUser *)self isCurrentUser])
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    selfCopy2 = self;
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

- (void)setAssistantAccessControl:(id)control
{
  controlCopy = control;
  os_unfair_lock_lock_with_options();
  assistantAccessControl = self->_assistantAccessControl;
  self->_assistantAccessControl = controlCopy;

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
  assistantAccessControl = [(HMDUser *)self assistantAccessControl];
  modelID = [assistantAccessControl modelID];

  return modelID;
}

- (BOOL)isValid
{
  pairingIdentity = [(HMDUser *)self pairingIdentity];
  v3 = pairingIdentity != 0;

  return v3;
}

- (unint64_t)audioAnalysisUserDropInAccessLevel
{
  os_unfair_lock_lock_with_options();
  audioAnalysisUserDropInAccessLevel = self->_audioAnalysisUserDropInAccessLevel;
  os_unfair_lock_unlock(&self->_lock);
  return audioAnalysisUserDropInAccessLevel;
}

- (void)setAudioAnalysisUserDropInAccessLevel:(unint64_t)level
{
  os_unfair_lock_lock_with_options();
  self->_audioAnalysisUserDropInAccessLevel = level;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)announceAccessLevel
{
  os_unfair_lock_lock_with_options();
  announceAccessLevel = self->_announceAccessLevel;
  os_unfair_lock_unlock(&self->_lock);
  return announceAccessLevel;
}

- (void)setAnnounceAccessLevel:(unint64_t)level
{
  os_unfair_lock_lock_with_options();
  self->_announceAccessLevel = level;

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
  announceAccessLevel = [(HMDUser *)self announceAccessLevel];
  if (!announceAccessLevel)
  {
    announceAccessLevel = [(HMDUser *)self defaultAnnounceUserAccessLevel];
  }

  return announceAccessLevel == 2;
}

- (void)setCamerasAccessLevel:(unint64_t)level
{
  os_unfair_lock_lock_with_options();
  if (self->_camerasAccessLevel == level)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_camerasAccessLevel = level;
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

- (BOOL)_setRemoteAccessAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  os_unfair_lock_lock_with_options();
  remoteAccessAllowed = self->_remoteAccessAllowed;
  if (remoteAccessAllowed != allowedCopy)
  {
    self->_remoteAccessAllowed = allowedCopy;
  }

  v6 = remoteAccessAllowed != allowedCopy;
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
  displayName = [(HMDUser *)self displayName];
  v4 = __displayNameForUser(self);
  v5 = HMFEqualObjects();
  if ((v5 & 1) == 0)
  {
    [(HMDUser *)self setDisplayName:v4];
  }

  return v5 ^ 1;
}

- (void)setDisplayName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  displayName = self->_displayName;
  if ((HMFEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_displayName, name);
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
    userID = v3;
  }

  else
  {
    userID = [(HMDUser *)self userID];
  }

  v5 = userID;

  return v5;
}

- (HMUserPresenceAuthorization)presenceAuthStatus
{
  os_unfair_lock_lock_with_options();
  v3 = self->_presenceAuthStatus;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPresenceAuthStatus:(id)status
{
  statusCopy = status;
  os_unfair_lock_lock_with_options();
  presenceAuthStatus = self->_presenceAuthStatus;
  self->_presenceAuthStatus = statusCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)__handleRemovedAccount:(id)account
{
  v21 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  accountHandle = [(HMDUser *)self accountHandle];
  if (accountHandle)
  {
    userInfo = [accountCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:@"HMDAccountNotificationKey"];

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

    handles = [v9 handles];
    v11 = [handles containsObject:accountHandle];

    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
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
      __registerForAccountNotifications(selfCopy);
      __handleUpdatedAccount(selfCopy);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)__handleAddedAccount:(id)account
{
  v25 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  accountHandle = [(HMDUser *)self accountHandle];
  if (accountHandle)
  {
    userInfo = [accountCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:@"HMDAccountNotificationKey"];

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

    handles = [v9 handles];
    v11 = [handles containsObject:accountHandle];

    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
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
      __registerForAccountNotifications(selfCopy);
      __updateWithAccount(selfCopy, v9);
      __handleUpdatedAccount(selfCopy);
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
  accountHandle = [(HMDUser *)self accountHandle];
  v3 = [accountHandle type] == 2;

  return v3;
}

- (id)account
{
  v3 = +[HMDAccountRegistry sharedRegistry];
  accountHandle = [(HMDUser *)self accountHandle];
  if (accountHandle && [v3 accountExistsForHandle:accountHandle])
  {
    v5 = [v3 accountForHandle:accountHandle];
    goto LABEL_12;
  }

  mergeIdentifier = [(HMDUser *)self mergeIdentifier];
  if (mergeIdentifier)
  {
    senderCorrelationIdentifier = mergeIdentifier;
  }

  else
  {
    accountIdentifier = [(HMDUser *)self accountIdentifier];
    senderCorrelationIdentifier = [accountIdentifier senderCorrelationIdentifier];

    if (!senderCorrelationIdentifier)
    {
      goto LABEL_8;
    }
  }

  v5 = [v3 existingAccountWithMergeIdentifier:senderCorrelationIdentifier];
  if (!v5)
  {
LABEL_8:
    if (accountHandle)
    {
      v5 = [v3 accountForHandle:accountHandle];
    }

    else
    {
      v5 = 0;
    }
  }

LABEL_12:

  return v5;
}

- (void)_handleNeedsiTunesMultiUserRepair:(id)repair
{
  v30 = *MEMORY[0x277D85DE8];
  repairCopy = repair;
  if ([(HMDUser *)self isCurrentUser])
  {
    v5 = [repairCopy numberForKey:*MEMORY[0x277CD13C8]];
    if (v5)
    {
      v6 = v5;
      bOOLValue = [v5 BOOLValue];
      if (bOOLValue != [(HMDUser *)self needsiTunesMultiUserRepair])
      {
        home = [(HMDUser *)self home];
        v9 = objc_autoreleasePoolPush();
        selfCopy = self;
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = HMFGetLogIdentifier();
          v13 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
          v26 = 138543618;
          v27 = v12;
          v28 = 2112;
          v29 = v13;
          _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Setting needs iTunes multi-user repair %@.", &v26, 0x16u);
        }

        objc_autoreleasePoolPop(v9);
        [(HMDUser *)selfCopy setNeedsiTunesMultiUserRepair:bOOLValue];
        [home saveToCurrentAccountWithReason:@"Needs iTunes Multi-User Repair Updated"];
        homeManager = [home homeManager];
        uuid = [(HMDUser *)selfCopy uuid];
        [homeManager updateGenerationCounterWithReason:@"Needs iTunes Multi-User Repair Updated" sourceUUID:uuid shouldNotifyClients:1];
      }

      [repairCopy respondWithSuccess];
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v26 = 138543618;
        v27 = v23;
        v28 = 2112;
        v29 = repairCopy;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Missing value to set iTunes Multi User Repair: %@", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Need a value" reason:@"Need a value" suggestion:0];
      [repairCopy respondWithError:v24];

      v6 = 0;
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v19;
      v28 = 2112;
      v29 = repairCopy;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Can only send this message to current user: %@", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"User is not current user" reason:@"Can only set on current user" suggestion:0];
    [repairCopy respondWithError:v6];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_handleShareClientRepairRequest:(id)request
{
  v71 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [requestCopy uuidForKey:*MEMORY[0x277CD14A8]];
  uuid = [(HMDUser *)self uuid];
  v7 = HMFEqualObjects();

  if (v7)
  {
    home = [(HMDUser *)self home];
    currentUser = [home currentUser];
    isOwner = [currentUser isOwner];

    if (isOwner)
    {
      uuid2 = [home uuid];
      v12 = *MEMORY[0x277CD1478];
      v13 = [requestCopy uuidForKey:*MEMORY[0x277CD1478]];
      v14 = [uuid2 isEqual:v13];

      if (v14)
      {
        v15 = *MEMORY[0x277CD1498];
        v16 = [requestCopy dataForKey:*MEMORY[0x277CD1498]];

        if (v16)
        {
          v17 = MEMORY[0x277CCAAC8];
          v18 = objc_opt_class();
          v19 = [requestCopy dataForKey:v15];
          v60 = 0;
          v56 = [v17 unarchivedObjectOfClass:v18 fromData:v19 error:&v60];
          v20 = v60;

          if (v56)
          {
            v65[0] = v15;
            v21 = encodeRootObject();
            v66[0] = v21;
            v65[1] = *MEMORY[0x277CD1468];
            v22 = [requestCopy stringForKey:?];
            v66[1] = v22;
            v65[2] = v12;
            v23 = [requestCopy stringForKey:v12];
            v66[2] = v23;
            v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:3];

            v55 = +[HMDHomeKitVersion version7];
            v63 = @"kRequiredCapabilitiesKey";
            v61[0] = @"kHomedSupportedFeaturesKey";
            v61[1] = @"kHomedVersionKey";
            v62[0] = &unk_283E75C50;
            v24 = MEMORY[0x277CCABB0];
            versionString = [v55 versionString];
            [versionString doubleValue];
            v26 = [v24 numberWithDouble:?];
            v62[1] = v26;
            v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:2];
            v64 = v27;
            v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];

            v29 = objc_autoreleasePoolPush();
            selfCopy = self;
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
            objc_initWeak(buf, selfCopy);
            v57[0] = MEMORY[0x277D85DD0];
            v57[1] = 3221225472;
            v57[2] = __43__HMDUser__handleShareClientRepairRequest___block_invoke;
            v57[3] = &unk_278687F40;
            objc_copyWeak(&v59, buf);
            v58 = requestCopy;
            [(HMDUser *)selfCopy _sendAccountMessage:@"HMDUCM.rRepr" payload:v54 deviceCapabilities:v28 multicast:1 preferPrimary:0 completion:v57];

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
            selfCopy2 = self;
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
            [requestCopy respondWithError:v20];
          }
        }

        else
        {
          v45 = objc_autoreleasePoolPush();
          selfCopy3 = self;
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
          [requestCopy respondWithError:v20];
        }
      }

      else
      {
        v41 = objc_autoreleasePoolPush();
        selfCopy4 = self;
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
        [requestCopy respondWithError:v20];
      }
    }

    else
    {
      v37 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138543618;
        v68 = v40;
        v69 = 2112;
        v70 = requestCopy;
        _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Can only send this message from owner: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v37);
      v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"From user is not owner" reason:@"Can currently only repair from home owner" suggestion:0];
      [requestCopy respondWithError:v20];
    }
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v68 = v36;
      v69 = 2112;
      v70 = requestCopy;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Attempt to send repair request to mismatched user from message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
    home = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Unable to find to user in payload" reason:@"Need validated to user in payload" suggestion:0];
    [requestCopy respondWithError:home];
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

- (void)_sendSecureShareClientPayloadToMostEligibleDevice:(id)device completion:(id)completion
{
  v37[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  completionCopy = completion;
  v8 = +[HMDHomeKitVersion version6];
  v9 = *MEMORY[0x277CD1468];
  v10 = [deviceCopy objectForKeyedSubscript:*MEMORY[0x277CD1468]];
  v11 = [v10 isEqualToString:@"com.apple.applemediaservices.multiuser"];

  if (v11)
  {
    v12 = +[HMDHomeKitVersion version6];
  }

  else
  {
    v13 = [deviceCopy objectForKeyedSubscript:v9];
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
  versionString = [v8 versionString];
  [versionString doubleValue];
  v18 = [v16 numberWithDouble:?];
  v35[1] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
  v37[0] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];

  v21 = objc_autoreleasePoolPush();
  selfCopy = self;
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
  objc_initWeak(buf, selfCopy);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __72__HMDUser__sendSecureShareClientPayloadToMostEligibleDevice_completion___block_invoke;
  v27[3] = &unk_278689728;
  objc_copyWeak(&v29, buf);
  v25 = completionCopy;
  v28 = v25;
  [(HMDUser *)selfCopy _sendAccountMessage:@"HMDUCM.rsr" payload:deviceCopy deviceCapabilities:v20 multicast:0 preferPrimary:1 completion:v27];

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

- (void)_handleMultiUserSharePayloadRequest:(id)request
{
  v90 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [requestCopy uuidForKey:*MEMORY[0x277CD14A8]];
  uuid = [(HMDUser *)self uuid];
  v7 = HMFEqualObjects();

  if (v7)
  {
    if ([(HMDUser *)self isOwner])
    {
      v8 = [requestCopy uuidForKey:*MEMORY[0x277CD1470]];
      if (!v8)
      {
        v42 = objc_autoreleasePoolPush();
        selfCopy = self;
        v44 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = HMFGetLogIdentifier();
          *buf = 138543618;
          v83 = v45;
          v84 = 2112;
          v85 = requestCopy;
          _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@Could not determine from user in message: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v42);
        home = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Unable to find from user in message payload" reason:@"Need valid from user in message payload" suggestion:0];
        [requestCopy respondWithError:home];
        responseHandler6 = 0;
        goto LABEL_43;
      }

      responseHandler6 = v8;
      home = [(HMDUser *)self home];
      users = [home users];
      v12 = [users hmf_firstObjectWithUUID:responseHandler6];
      if (!v12)
      {
        v46 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = HMFGetLogIdentifier();
          *buf = 138544130;
          v83 = v49;
          v84 = 2112;
          v85 = responseHandler6;
          v86 = 2112;
          v87 = home;
          v88 = 2112;
          v89 = users;
          _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, "%{public}@Could not determine from user with uuid: %@ home: %@ users: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v46);
        v25 = MEMORY[0x277CCA9B8];
        v26 = @"Unable to find from user in home";
        v27 = @"Need valid from user";
        v28 = 2;
LABEL_29:
        responseHandler2 = [v25 hmErrorWithCode:v28 description:v26 reason:v27 suggestion:0];
        [requestCopy respondWithError:responseHandler2];
LABEL_41:

LABEL_42:
        goto LABEL_43;
      }

      uuid2 = [home uuid];
      v14 = [requestCopy uuidForKey:*MEMORY[0x277CD1478]];
      v15 = [uuid2 isEqual:v14];

      if (v15)
      {
        v16 = [requestCopy dataForKey:*MEMORY[0x277CD14B8]];
        if (v16)
        {
          v17 = v16;
          v18 = [requestCopy dataForKey:*MEMORY[0x277CD14B0]];
          if (v18)
          {
            v19 = v18;
            v20 = [requestCopy stringForKey:*MEMORY[0x277CD1468]];

            if (v20)
            {
              if ([v12 isCurrentUser])
              {
                if ([(HMDUser *)self userCloudShareWithOwnerMessagingState]!= 2)
                {
                  messagePayload = [requestCopy messagePayload];
                  v79[0] = MEMORY[0x277D85DD0];
                  v79[1] = 3221225472;
                  v79[2] = __47__HMDUser__handleMultiUserSharePayloadRequest___block_invoke;
                  v79[3] = &unk_278683F48;
                  v80 = requestCopy;
                  selfCopy3 = self;
                  [(HMDUser *)self _sendSecureShareClientPayloadToMostEligibleDevice:messagePayload completion:v79];

                  v73 = objc_autoreleasePoolPush();
                  selfCopy4 = self;
                  v75 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
                  {
                    v76 = HMFGetLogIdentifier();
                    [(HMDUser *)selfCopy4 accountHandle];
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
                selfCopy5 = self;
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
              selfCopy6 = self;
              v69 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
              {
                v70 = HMFGetLogIdentifier();
                *buf = 138543874;
                v83 = v70;
                v84 = 2112;
                v85 = v12;
                v86 = 2112;
                v87 = requestCopy;
                _os_log_impl(&dword_229538000, v69, OS_LOG_TYPE_ERROR, "%{public}@From user %@ is not current user for message: %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v67);
              responseHandler = [requestCopy responseHandler];

              if (!responseHandler)
              {
                goto LABEL_42;
              }

              responseHandler2 = [requestCopy responseHandler];
              v64 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
LABEL_40:
              v65 = v64;
              responseHandler2[2](responseHandler2, v64, 0);

              goto LABEL_41;
            }
          }

          else
          {
          }
        }

        v59 = objc_autoreleasePoolPush();
        selfCopy7 = self;
        v61 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          v62 = HMFGetLogIdentifier();
          *buf = 138543362;
          v83 = v62;
          _os_log_impl(&dword_229538000, v61, OS_LOG_TYPE_ERROR, "%{public}@Payload did not have required fields.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v59);
        responseHandler3 = [requestCopy responseHandler];

        if (!responseHandler3)
        {
          goto LABEL_42;
        }

        responseHandler2 = [requestCopy responseHandler];
        v56 = MEMORY[0x277CCA9B8];
        v57 = @"Unable to determine required arguments";
        v58 = @"Missing either URL, token or container ID";
      }

      else
      {
        v51 = objc_autoreleasePoolPush();
        selfCopy8 = self;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v54 = HMFGetLogIdentifier();
          *buf = 138543362;
          v83 = v54;
          _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_ERROR, "%{public}@Share request does not have valid home.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v51);
        responseHandler4 = [requestCopy responseHandler];

        if (!responseHandler4)
        {
          goto LABEL_42;
        }

        responseHandler2 = [requestCopy responseHandler];
        v56 = MEMORY[0x277CCA9B8];
        v57 = @"Home not valid";
        v58 = @"Missing home or invalid home";
      }

      v64 = [v56 hmErrorWithCode:3 description:v57 reason:v58 suggestion:0];
      goto LABEL_40;
    }

    v37 = objc_autoreleasePoolPush();
    selfCopy9 = self;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543618;
      v83 = v40;
      v84 = 2112;
      v85 = requestCopy;
      _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Can only send this message to owner: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v37);
    responseHandler5 = [requestCopy responseHandler];

    if (responseHandler5)
    {
      responseHandler6 = [requestCopy responseHandler];
      v34 = MEMORY[0x277CCA9B8];
      v35 = @"To user is not owner";
      v36 = @"Can currently only share to owner";
      goto LABEL_22;
    }
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy10 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543618;
      v83 = v32;
      v84 = 2112;
      v85 = requestCopy;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Attempt to send client payload to mismatched identifier from message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    responseHandler7 = [requestCopy responseHandler];

    if (responseHandler7)
    {
      responseHandler6 = [requestCopy responseHandler];
      v34 = MEMORY[0x277CCA9B8];
      v35 = @"Unable to find to user in payload";
      v36 = @"Need validated to user in payload";
LABEL_22:
      home = [v34 hmErrorWithCode:3 description:v35 reason:v36 suggestion:0];
      (responseHandler6)[2](responseHandler6, home, 0);
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

- (void)_handleShareLookupInfoRequest:(id)request
{
  v39 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [requestCopy uuidForKey:@"kUserUUIDKey"];
  uuid = [(HMDUser *)self uuid];
  v7 = HMFEqualObjects();

  if (v7)
  {
    accountHandle = [(HMDUser *)self accountHandle];

    if (accountHandle)
    {
      accountHandle2 = [(HMDUser *)self accountHandle];
      cloudKitLookupInfo = [accountHandle2 cloudKitLookupInfo];

      if (!cloudKitLookupInfo)
      {
        cloudKitLookupInfo = [requestCopy responseHandler];

        if (cloudKitLookupInfo)
        {
          responseHandler = [requestCopy responseHandler];
          v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Can't create lookup info" reason:@"Unable to convert account handle to lookup info" suggestion:0];
          (responseHandler)[2](responseHandler, v32, 0);

          cloudKitLookupInfo = 0;
        }

        goto LABEL_19;
      }

      v11 = encodeRootObject();
      v33 = *MEMORY[0x277CD1488];
      v34 = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v36 = v16;
        v37 = 2112;
        v38 = cloudKitLookupInfo;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Obtained share lookup: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      responseHandler2 = [requestCopy responseHandler];

      if (responseHandler2)
      {
        responseHandler3 = [requestCopy responseHandler];
        (responseHandler3)[2](responseHandler3, 0, v12);
      }

LABEL_18:
LABEL_19:

      goto LABEL_20;
    }

    v25 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v28;
      v37 = 2112;
      v38 = requestCopy;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Do not have account handle: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    responseHandler4 = [requestCopy responseHandler];

    if (responseHandler4)
    {
      cloudKitLookupInfo = [requestCopy responseHandler];
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"No account handle" reason:@"User has no account handle" suggestion:0];
      goto LABEL_17;
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v22;
      v37 = 2112;
      v38 = requestCopy;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Attempt to send client payload to mismatched identifier from message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    responseHandler5 = [requestCopy responseHandler];

    if (responseHandler5)
    {
      cloudKitLookupInfo = [requestCopy responseHandler];
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
LABEL_17:
      v11 = v24;
      cloudKitLookupInfo[2](cloudKitLookupInfo, v24, 0);
      goto LABEL_18;
    }
  }

LABEL_20:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_handleLegacyPairingIdentityRequest:(id)request
{
  v40 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [requestCopy uuidForKey:@"kUserUUIDKey"];
  uuid = [(HMDUser *)self uuid];
  v7 = HMFEqualObjects();

  if ((v7 & 1) == 0)
  {
    v25 = objc_autoreleasePoolPush();
    selfCopy = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v28;
      v38 = 2112;
      v39 = requestCopy;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Attempt to retrieve pairing identity with mismatching identifier from message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    goto LABEL_15;
  }

  isCurrentUser = [(HMDUser *)self isCurrentUser];
  v9 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (!isCurrentUser)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v30;
      v38 = 2112;
      v39 = requestCopy;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Attempt to retrieve pairing identity for not current user: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v29 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2014];
LABEL_15:
    allAccessoryPairingKeys = v29;
    [requestCopy respondWithError:v29];
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
  keyStore = [(HMDUser *)selfCopy2 keyStore];
  allAccessoryPairingKeys = [keyStore allAccessoryPairingKeys];

  entitlements = [requestCopy entitlements];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __47__HMDUser__handleLegacyPairingIdentityRequest___block_invoke;
  v33[3] = &__block_descriptor_40_e28__16__0__HAPPairingIdentity_8l;
  v33[4] = entitlements;
  v17 = [allAccessoryPairingKeys na_map:v33];
  v18 = encodeRootObject();
  v19 = objc_autoreleasePoolPush();
  v20 = selfCopy2;
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
    [requestCopy respondWithPayload:v24];
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
    [requestCopy respondWithError:v24];
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

- (void)fetchPairingIdentityForClientWithMessage:(id)message
{
  v55 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v52 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received request to retrieve pairing identity for user", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  pairingIdentity = [(HMDUser *)selfCopy pairingIdentity];
  if (!pairingIdentity)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = selfCopy;
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

  if (([messageCopy entitlements] & 0x10) != 0 && -[HMDUser isCurrentUser](selfCopy, "isCurrentUser"))
  {
    keyStore = [(HMDUser *)selfCopy keyStore];
    identifier = [pairingIdentity identifier];
    publicPairingIdentity = [keyStore getHH2ControllerKeyWithIdentifier:identifier];

    if (publicPairingIdentity)
    {
      privateKey = [publicPairingIdentity privateKey];
      publicKey = [publicPairingIdentity publicKey];
      publicKey2 = [pairingIdentity publicKey];
      v16 = [publicKey isEqual:publicKey2];

      if (v16)
      {
        v17 = objc_alloc(MEMORY[0x277D0F8A8]);
        identifier2 = [pairingIdentity identifier];
        publicKey3 = [pairingIdentity publicKey];
        v20 = [v17 initWithIdentifier:identifier2 publicKey:publicKey3 privateKey:privateKey];

        publicPairingIdentity = v20;
        goto LABEL_10;
      }

      v43 = objc_autoreleasePoolPush();
      v44 = selfCopy;
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
      [messageCopy respondWithError:v47];
    }

    else
    {
      v39 = objc_autoreleasePoolPush();
      v40 = selfCopy;
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
      privateKey = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Local pairing identity was not found" reason:0 suggestion:0 underlyingError:0];
      [messageCopy respondWithError:privateKey];
    }

    goto LABEL_33;
  }

  publicPairingIdentity = [pairingIdentity publicPairingIdentity];
LABEL_10:
  v21 = objc_autoreleasePoolPush();
  v22 = selfCopy;
  v23 = HMFGetOSLogHandle();
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
  if (!publicPairingIdentity)
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
    publicPairingIdentity = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:publicPairingIdentity];
    goto LABEL_33;
  }

  if (v24)
  {
    v25 = HMFGetLogIdentifier();
    *buf = 138543618;
    v52 = v25;
    v53 = 2112;
    v54 = publicPairingIdentity;
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
    [messageCopy respondWithPayload:v28];
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
    [messageCopy respondWithError:v28];
  }

LABEL_33:
  v48 = *MEMORY[0x277D85DE8];
}

- (void)_handlePairingIdentityRequest:(id)request
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [requestCopy uuidForKey:@"kUserUUIDKey"];
  uuid = [(HMDUser *)self uuid];
  v7 = HMFEqualObjects();

  if (v7)
  {
    [(HMDUser *)self fetchPairingIdentityForClientWithMessage:requestCopy];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = requestCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Attempt to retrieve pairing identity with mismatching identifier from message: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [requestCopy respondWithError:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)matchingPairingIdentityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pairingIdentity = [(HMDUser *)self pairingIdentity];
  identifier = [pairingIdentity identifier];
  v7 = [identifier isEqualToString:identifierCopy];

  return v7;
}

- (void)deregisterIdentity
{
  pairingIdentity = [(HMDUser *)self pairingIdentity];
  if (pairingIdentity)
  {
    v5 = pairingIdentity;
    v4 = +[HMDIdentityRegistry sharedRegistry];
    [v4 deregisterIdentity:v5 object:self];

    pairingIdentity = v5;
  }
}

- (void)registerIdentity
{
  pairingIdentity = [(HMDUser *)self pairingIdentity];
  account = [(HMDUser *)self account];
  if (pairingIdentity && account)
  {
    v4 = +[HMDIdentityRegistry sharedRegistry];
    [v4 registerIdentity:pairingIdentity account:account object:self];
  }
}

- (void)setPairingIdentity:(id)identity
{
  identityCopy = identity;
  os_unfair_lock_lock_with_options();
  v4 = _userPairingIdentity(identityCopy, self->_privilege);
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

- (void)setMergeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  mergeIdentifier = self->_mergeIdentifier;
  self->_mergeIdentifier = identifierCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)mergeIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_mergeIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  accountIdentifier = self->_accountIdentifier;
  if (HMFEqualObjects())
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v6 = [identifierCopy copy];
    v7 = self->_accountIdentifier;
    self->_accountIdentifier = v6;

    os_unfair_lock_unlock(&self->_lock);
    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __32__HMDUser_setAccountIdentifier___block_invoke;
    v9[3] = &unk_27868A750;
    v10 = identifierCopy;
    selfCopy = self;
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

- (void)setAccountHandle:(id)handle
{
  handleCopy = handle;
  os_unfair_lock_lock_with_options();
  accountHandle = self->_accountHandle;
  if (HMFEqualObjects())
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v6 = [handleCopy copy];
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
  primaryHandle = self->_accountHandle;
  os_unfair_lock_unlock(&self->_lock);
  if (!primaryHandle)
  {
    home = [(HMDUser *)self home];
    homeManager = [home homeManager];
    isDemoModeV2WithoutCKEnabled = [homeManager isDemoModeV2WithoutCKEnabled];

    if (isDemoModeV2WithoutCKEnabled)
    {
      v7 = +[HMDAppleAccountManager sharedManager];
      account = [v7 account];
      primaryHandle = [account primaryHandle];
    }

    else
    {
      primaryHandle = 0;
    }
  }

  return primaryHandle;
}

- (BOOL)isCurrentUser
{
  selfCopy = self;
  dataSource = [(HMDUser *)self dataSource];
  LOBYTE(selfCopy) = [dataSource isCurrentUser:selfCopy];

  return selfCopy;
}

- (BOOL)updateAdministrator:(BOOL)administrator
{
  administratorCopy = administrator;
  if ([(HMDUser *)self privilege]&& [(HMDUser *)self privilege]!= 4)
  {
    return 0;
  }

  if (administratorCopy)
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

- (void)setPrivilege:(unint64_t)privilege
{
  v12[2] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  privilege = self->_privilege;
  if (privilege == privilege)
  {
    v6 = *MEMORY[0x277D85DE8];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_privilege = privilege;
    os_unfair_lock_unlock(&self->_lock);
    v11[0] = @"kUserUUIDKey";
    uuid = [(HMDUser *)self uuid];
    v11[1] = @"HMDUserPreviousPrivilegeKey";
    v12[0] = uuid;
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
  privilege = [(HMDUser *)self privilege];
  if (privilege < 5)
  {
    return qword_22A587E68[privilege];
  }

  return [(HMDUser *)self privilege];
}

- (void)setHome:(id)home
{
  homeCopy = home;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_home, homeCopy);

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
  privilege = [(HMDUser *)self privilege];
  if (privilege > 5)
  {
    return 0;
  }

  else
  {
    return qword_22A587E38[privilege];
  }
}

- (void)deregisterForMessages
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Deregistering user", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  messageDispatcher = [(HMDUser *)selfCopy messageDispatcher];
  [messageDispatcher deregisterReceiver:selfCopy];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)registerForMessages
{
  v50[1] = *MEMORY[0x277D85DE8];
  messageDispatcher = [(HMDUser *)self messageDispatcher];
  v4 = *MEMORY[0x277CD13E8];
  v5 = [HMDXPCMessagePolicy policyWithEntitlements:13];
  v50[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:1];
  [messageDispatcher registerForMessage:v4 receiver:self policies:v6 selector:sel__handlePairingIdentityRequest_];

  v7 = *MEMORY[0x277CD1370];
  v8 = [HMDXPCMessagePolicy policyWithEntitlements:13];
  v49 = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
  [messageDispatcher registerForMessage:v7 receiver:self policies:v9 selector:sel__handleLegacyPairingIdentityRequest_];

  v10 = *MEMORY[0x277CD1490];
  v11 = [HMDXPCMessagePolicy policyWithEntitlements:517];
  v48 = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
  [messageDispatcher registerForMessage:v10 receiver:self policies:v12 selector:sel__handleShareLookupInfoRequest_];

  v13 = *MEMORY[0x277CD1460];
  v14 = [HMDXPCMessagePolicy policyWithEntitlements:517];
  v47 = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
  [messageDispatcher registerForMessage:v13 receiver:self policies:v15 selector:sel__handleMultiUserSharePayloadRequest_];

  v16 = *MEMORY[0x277CD14A0];
  v17 = [HMDXPCMessagePolicy policyWithEntitlements:517];
  v46 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
  [messageDispatcher registerForMessage:v16 receiver:self policies:v18 selector:sel__handleShareClientRepairRequest_];

  v19 = *MEMORY[0x277CD13D0];
  v20 = [HMDXPCMessagePolicy policyWithEntitlements:517];
  v45 = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
  [messageDispatcher registerForMessage:v19 receiver:self policies:v21 selector:sel__handleNeedsiTunesMultiUserRepair_];

  if ([(HMDUser *)self isCurrentUser])
  {
    v22 = *MEMORY[0x277CD12D0];
    v23 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v44 = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
    [messageDispatcher registerForMessage:v22 receiver:self policies:v24 selector:sel__handleAnnounceSettingsUpdate_];
  }

  home = [(HMDUser *)self home];
  v26 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:3 remoteAccessRequired:0];
  v27 = *MEMORY[0x277CD1430];
  v28 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v43[0] = v28;
  v43[1] = v26;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
  [messageDispatcher registerForMessage:v27 receiver:self policies:v29 selector:sel__handleFetchProfilePhoto_];

  featuresDataSource = [home featuresDataSource];
  LODWORD(v28) = [featuresDataSource isHomeActivityStateFeatureEnabled];

  if (v28)
  {
    v31 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:5 remoteAccessRequired:0];
    v32 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v42[0] = v31;
    v42[1] = v32;
    v33 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v42[2] = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:3];
    [messageDispatcher registerForMessage:@"HMDUser.requestDisclosureNotificationAccountMessage" receiver:self policies:v34 selector:sel_handleRequestDisclosureNotificationAccountMessage_];

    v35 = *MEMORY[0x277CD1360];
    v41[0] = v31;
    v41[1] = v32;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
    [messageDispatcher registerForMessage:v35 receiver:self policies:v36 selector:sel_handleCompleteDisclosureOfAdaptiveTemperatureAutomationsMessage_];

    v37 = [HMDRemoteMessagePolicy defaultSecurePrimaryResidentPolicy:v31];
    v40[2] = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:3];
    [messageDispatcher registerForMessage:@"HMDUser.completeDisclosureOfAdaptiveTemperatureAutomationsRemoteMessage" receiver:self policies:v38 selector:sel_handleCompleteDisclosureOfAdaptiveTemperatureAutomationsRemoteMessage_];
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)unconfigure
{
  [(HMDUser *)self deregisterForMessages];
  shareMessenger = [(HMDUser *)self shareMessenger];
  [shareMessenger unconfigure];

  dataSource = [(HMDUser *)self dataSource];
  notificationCenter = [dataSource notificationCenter];
  [notificationCenter removeObserver:self];
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
  home = [(HMDUser *)self home];
  privateBackingStoreController = [(HMDUser *)self privateBackingStoreController];
  if (privateBackingStoreController)
  {
  }

  else
  {
    sharedBackingStoreController = [(HMDUser *)self sharedBackingStoreController];

    if (!sharedBackingStoreController)
    {
      goto LABEL_11;
    }
  }

  if ([(HMDUser *)self isCurrentUser])
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Clearing participants from old user settings backingstores", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    sharedBackingStoreController2 = [(HMDUser *)selfCopy sharedBackingStoreController];
    [sharedBackingStoreController2 clearParticipants];
  }

  [(HMDUser *)self setUserDataController:0];
  [(HMDUser *)self setSharedBackingStoreController:0];
  [(HMDUser *)self setPrivateBackingStoreController:0];
  v11 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v21 = 138543362;
    v22 = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Initializing new user settings backingstores", &v21, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  [(HMDUser *)selfCopy2 initializeUserSettingsWithHome:home];
LABEL_11:
  if (![(HMDUser *)self isCurrentUser])
  {
    currentUser = [home currentUser];
    v16 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v19;
      v23 = 2112;
      v24 = currentUser;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Updating participants in current users shared settings backingstore: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    [currentUser updateSharedBackingStoreControllerParticipants];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)recoverUserCloudDataDueToUUIDChangeFromOldUUID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HMDUser_recoverUserCloudDataDueToUUIDChangeFromOldUUID___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
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

- (void)setUserCloudShareWithOwnerMessagingState:(int64_t)state
{
  os_unfair_lock_lock_with_options();
  self->_userCloudShareWithOwnerMessagingState = state;

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
  userDataController = [(HMDUser *)self userDataController];
  sharedUserSettingsLogEventBackingStoreControllerRunState = [userDataController sharedUserSettingsLogEventBackingStoreControllerRunState];

  return sharedUserSettingsLogEventBackingStoreControllerRunState;
}

- (void)initializeUserSettingsWithHome:(id)home
{
  v29 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v8;
    v27 = 2112;
    v28 = homeCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Initializing user settings with home: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if ([homeCopy isOwnerUser])
  {
    if (![(HMDUser *)selfCopy isRestrictedGuest])
    {
      backingStore = [homeCopy backingStore];
      context = [backingStore context];

      v11 = [HMDUserAccessorySettingsDataController alloc];
      userUUID = [(HMDUser *)selfCopy userUUID];
      userUUID2 = [(HMDUserAccessorySettingsDataController *)v11 initWithUserModelID:userUUID managedObjectContext:context];
      [(HMDUser *)selfCopy setAccessorySettingsDataController:userUUID2];
LABEL_8:
    }
  }

  else if ([(HMDUser *)selfCopy isCurrentUser])
  {
    v14 = +[HMDCoreData sharedInstance];
    context = [v14 newManagedObjectContext];

    uuid = [homeCopy uuid];
    v16 = HMDWorkingContextNameForHomeUUID(uuid);
    [context setName:v16];

    v17 = @"HMD.1P";
    [context setTransactionAuthor:@"HMD.1P"];

    userUUID = +[HMDCoreData sharedInstance];
    v18 = [HMDSharedUserAccessorySettingsDataController alloc];
    userUUID2 = [(HMDUser *)selfCopy userUUID];
    uuid2 = [homeCopy uuid];
    cloudPrivateStore = [userUUID cloudPrivateStore];
    v21 = [(HMDSharedUserAccessorySettingsDataController *)v18 initWithUserModelID:userUUID2 homeModelID:uuid2 privateStore:cloudPrivateStore managedObjectContext:context];
    [(HMDUser *)selfCopy setAccessorySettingsDataController:v21];

    goto LABEL_8;
  }

  queue = selfCopy->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HMDUser_initializeUserSettingsWithHome___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = selfCopy;
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
  uuid = [(HMDUser *)self uuid];
  v5 = [v3 sharedZoneNameForUserUUID:uuid];

  return v5;
}

- (id)privateZoneName
{
  v3 = objc_opt_class();
  uuid = [(HMDUser *)self uuid];
  v5 = [v3 privateZoneNameForUserUUID:uuid];

  return v5;
}

- (void)handleUserDataControllerInitialized:(id)initialized
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

- (void)configureWithHome:(id)home
{
  v46[3] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  msgDispatcher = [homeCopy msgDispatcher];
  [(HMDUser *)self setMessageDispatcher:msgDispatcher];

  [(HMDUser *)self setHome:homeCopy];
  if (![(HMDUser *)self isRemoteGateway])
  {
    isWatch();
    [(HMDUser *)self configureCloudShareTrustManager];
    [(HMDUser *)self initializeUserSettingsWithHome:homeCopy];
  }

  assistantAccessControl = [(HMDUser *)self assistantAccessControl];
  [(HMDUser *)self _readAnnounceNotificationModeFromLocalStore];
  if (assistantAccessControl || [(HMDUser *)self isCurrentUser]&& (assistantAccessControl = [[HMDAssistantAccessControl alloc] initWithUser:self], [(HMDUser *)self setAssistantAccessControl:assistantAccessControl], assistantAccessControl))
  {
    accessorySettingsDataController = [(HMDUser *)self accessorySettingsDataController];
    [(HMDAssistantAccessControl *)assistantAccessControl configureWithSettingsController:accessorySettingsDataController];
  }

  [(HMDUser *)self registerForMessages];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    userID = [(HMDUser *)selfCopy userID];
    account = [(HMDUser *)selfCopy account];
    [(HMDUser *)selfCopy isCurrentUser];
    v14 = HMFBooleanToString();
    *buf = 138544130;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = userID;
    *&buf[22] = 2112;
    v45 = account;
    LOWORD(v46[0]) = 2112;
    *(v46 + 2) = v14;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Configuring [%@] with account: %@, isCurrentUser: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (![(HMDUser *)selfCopy isCurrentUser])
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      userID2 = [(HMDUser *)v16 userID];
      *buf = 138543618;
      *&buf[4] = v18;
      *&buf[12] = 2112;
      *&buf[14] = userID2;
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

  [(HMDUser *)selfCopy registerIdentity];
  dataSource = [(HMDUser *)selfCopy dataSource];
  notificationCenter = [dataSource notificationCenter];
  [notificationCenter addObserver:selfCopy selector:sel_handleRemovedAccessory_ name:@"HMDHomeAccessoryRemovedNotification" object:homeCopy];

  dataSource2 = [(HMDUser *)selfCopy dataSource];
  notificationCenter2 = [dataSource2 notificationCenter];
  userDataController = [(HMDUser *)selfCopy userDataController];
  [notificationCenter2 addObserver:selfCopy selector:sel_handleUserDataControllerInitialized_ name:@"HMDUserDataControllerInitializedNotificationKey" object:userDataController];

  if ([(HMDUser *)selfCopy isRestrictedGuest])
  {
    [(HMDUser *)selfCopy cancelRestrictedGuestScheduledTimers];
    dataSource3 = [(HMDUser *)selfCopy dataSource];
    notificationCenter3 = [dataSource3 notificationCenter];
    residentDeviceManager = [homeCopy residentDeviceManager];
    [notificationCenter3 addObserver:selfCopy selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:residentDeviceManager];
  }

  if ([(HMDUser *)selfCopy isSharedUsersDeviceForProfileMetadata])
  {
    queue = [(HMDUser *)selfCopy queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__HMDUser_configureWithHome___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = selfCopy;
    dispatch_async(queue, block);

    dataSource4 = [(HMDUser *)selfCopy dataSource];
    notificationCenter4 = [dataSource4 notificationCenter];
    v34 = +[HMDAppleAccountManager sharedManager];
    [notificationCenter4 addObserver:selfCopy selector:sel___handleModifiedAccount_ name:@"HMDAppleAccountManagerAccountModifiedNotification" object:v34];

    homeManager = [homeCopy homeManager];
    fmfHandler = [homeManager fmfHandler];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __29__HMDUser_configureWithHome___block_invoke_2;
    v42[3] = &unk_278683EF8;
    v42[4] = selfCopy;
    [fmfHandler queryFMFStatusWithCompletion:v42];

    dataSource5 = [(HMDUser *)selfCopy dataSource];
    notificationCenter5 = [dataSource5 notificationCenter];
    [notificationCenter5 addObserver:selfCopy selector:sel__handleFMFDeviceChangedNotification_ name:@"HMDFMFStatusUpdateNotification" object:0];
  }

  if ([(HMDUser *)selfCopy isOwner])
  {
    queue2 = [(HMDUser *)selfCopy queue];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __29__HMDUser_configureWithHome___block_invoke_4;
    v41[3] = &unk_27868A728;
    v41[4] = selfCopy;
    dispatch_async(queue2, v41);
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

- (BOOL)hasDeviceWithHomeKitVersionGreaterThanVersion:(id)version
{
  v19 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  account = [(HMDUser *)self account];
  [account devices];
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

        version = [*(*(&v14 + 1) + 8 * i) version];
        v11 = [version isGreaterThanVersion:versionCopy];

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

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  v66[17] = *MEMORY[0x277D85DE8];
  home = [(HMDUser *)self home];
  v5 = MEMORY[0x277CCACA8];
  uuid = [(HMDUser *)self uuid];
  v61 = [v5 stringWithFormat:@"UUID: %@", uuid];
  v66[0] = v61;
  v6 = MEMORY[0x277CCACA8];
  [home isAccessToHomeAllowed];
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
  restrictedGuestAccessSettings = [(HMDUser *)self restrictedGuestAccessSettings];
  uuidsOfAllowedAccessories = [restrictedGuestAccessSettings uuidsOfAllowedAccessories];
  v49 = [v10 stringWithFormat:@"allowedAccessories: %@", uuidsOfAllowedAccessories];
  v66[6] = v49;
  v11 = MEMORY[0x277CCACA8];
  restrictedGuestAccessSettings2 = [(HMDUser *)self restrictedGuestAccessSettings];
  schedule = [restrictedGuestAccessSettings2 schedule];
  v46 = [v11 stringWithFormat:@"schedule : %@", schedule];
  v66[7] = v46;
  v12 = MEMORY[0x277CCACA8];
  v45 = shouldLogPrivateInformation();
  if (v45)
  {
    displayName = [(HMDUser *)self displayName];
  }

  else
  {
    displayName = @"...";
  }

  v36 = displayName;
  v44 = [v12 stringWithFormat:@"Display Name: %@", displayName];
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
  v63 = home;
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Home: %@", home];
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
  matterCASEAuthenticatedTagID = [(HMDUser *)self matterCASEAuthenticatedTagID];
  v26 = [v24 stringWithFormat:@"CATID: %@", matterCASEAuthenticatedTagID];
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
  photosPersonManagerSettings = [(HMDUser *)self photosPersonManagerSettings];
  v32 = [photosPersonManagerSettings description];
  v65[1] = v32;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:2];

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

- (id)attributeDescriptions
{
  v58[16] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  uuid = [(HMDUser *)self uuid];
  uUIDString = [uuid UUIDString];
  v55 = [v3 initWithName:@"UUID" value:?];
  v58[0] = v55;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  mergeIdentifier = [(HMDUser *)self mergeIdentifier];
  v53 = [v4 initWithName:@"MID" value:?];
  v58[1] = v53;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  pairingIdentity = [(HMDUser *)self pairingIdentity];
  v51 = [v5 initWithName:@"PAID" value:? options:? formatter:?];
  v58[2] = v51;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  accountHandle = [(HMDUser *)self accountHandle];
  v49 = [v6 initWithName:@"HNDL" value:?];
  v58[3] = v49;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  displayName = [(HMDUser *)self displayName];
  defaultFormatter = [MEMORY[0x277D0F8D8] defaultFormatter];
  v48 = displayName;
  v46 = [v7 initWithName:@"DN" value:displayName options:0 formatter:?];
  v58[4] = v46;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  privilege = [(HMDUser *)self privilege];
  if (privilege > 5)
  {
    v11 = @"None";
  }

  else
  {
    v11 = off_278684178[privilege];
  }

  v45 = [v9 initWithName:@"PV" value:v11];
  v58[5] = v45;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDUser *)self isRemoteAccessAllowed];
  v44 = HMFBooleanToString();
  v43 = [v12 initWithName:@"RA" value:v44];
  v58[6] = v43;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  presenceAuthStatus = [(HMDUser *)self presenceAuthStatus];
  v41 = [v13 initWithName:@"PA" value:presenceAuthStatus];
  v58[7] = v41;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  home = [(HMDUser *)self home];
  v39 = [v14 initWithName:@"HM" value:home];
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
  matterCASEAuthenticatedTagID = [(HMDUser *)self matterCASEAuthenticatedTagID];
  v28 = [v26 initWithName:@"CATID" value:matterCASEAuthenticatedTagID];
  v58[14] = v28;
  v29 = objc_alloc(MEMORY[0x277D0F778]);
  restrictedGuestAccessSettings = [(HMDUser *)self restrictedGuestAccessSettings];
  v31 = [v29 initWithName:@"RGS" value:restrictedGuestAccessSettings];
  v58[15] = v31;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:16];

  v32 = *MEMORY[0x277D85DE8];

  return v34;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  uuid = [(HMDUser *)self uuid];
  uUIDString = [uuid UUIDString];
  v7 = [v3 stringWithFormat:@"%@ %@", shortDescription, uUIDString];

  return v7;
}

- (BOOL)isAccountEqualWithUser:(id)user
{
  v22 = *MEMORY[0x277D85DE8];
  userCopy = user;
  v5 = userCopy;
  if (userCopy == self || (-[HMDUser account](userCopy, "account"), v6 = objc_claimAutoreleasedReturnValue(), -[HMDUser account](self, "account"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v6 isEqual:v7], v7, v6, (v8 & 1) != 0))
  {
    v9 = 1;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543874;
      v17 = v13;
      v18 = 2112;
      v19 = v5;
      v20 = 2112;
      v21 = selfCopy;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Accounts do not match : [otherUser : %@] [self : %@]", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  v32 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy != self)
  {
    v6 = equalCopy;
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

    home = [(HMDUser *)v8 home];
    uuid = [home uuid];
    home2 = [(HMDUser *)self home];
    uuid2 = [home2 uuid];
    v13 = [uuid isEqual:uuid2];

    if (v13)
    {
      account = [(HMDUser *)v8 account];
      account2 = [(HMDUser *)self account];
      v16 = [account isEqual:account2];

      if (v16)
      {
        v17 = 1;
LABEL_17:

        goto LABEL_18;
      }

      v18 = objc_autoreleasePoolPush();
      selfCopy = self;
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
      v31 = selfCopy;
      v22 = "%{public}@Accounts do not match : [otherUser : %@] [self : %@]";
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy2 = self;
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
      v31 = selfCopy2;
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
  pairingIdentity = [(HMDUser *)self pairingIdentity];
  v3 = [pairingIdentity hash];

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

- (HMDUser)initWithAccountHandle:(id)handle homeUUID:(id)d pairingIdentity:(id)identity privilege:(unint64_t)privilege keyStore:(id)store dataSource:(id)source
{
  handleCopy = handle;
  dCopy = d;
  identityCopy = identity;
  storeCopy = store;
  sourceCopy = source;
  v39.receiver = self;
  v39.super_class = HMDUser;
  v19 = [(HMDUser *)&v39 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_dataSource, source);
    objc_storeStrong(&v20->_keyStore, store);
    v21 = _userPairingIdentity(identityCopy, privilege);
    pairingIdentity = v20->_pairingIdentity;
    v20->_pairingIdentity = v21;

    remoteDestinationString = [handleCopy remoteDestinationString];
    v24 = [HMDUser UUIDWithUserID:remoteDestinationString forHomeIdentifier:dCopy uuid:0 pairingIdentity:v20->_pairingIdentity];
    uuid = v20->_uuid;
    v20->_uuid = v24;

    v26 = HMDispatchQueueNameString();
    uTF8String = [v26 UTF8String];
    v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v29 = dispatch_queue_create(uTF8String, v28);
    queue = v20->_queue;
    v20->_queue = v29;

    v31 = [handleCopy copy];
    accountHandle = v20->_accountHandle;
    v20->_accountHandle = v31;

    v20->_privilege = privilege;
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

- (HMDUser)initWithAccountHandle:(id)handle homeUUID:(id)d pairingIdentity:(id)identity privilege:(unint64_t)privilege
{
  identityCopy = identity;
  dCopy = d;
  handleCopy = handle;
  v13 = objc_alloc_init(HMDUserDefaultDataSource);
  systemStore = [MEMORY[0x277CFEC78] systemStore];
  v15 = [(HMDUser *)self initWithAccountHandle:handleCopy homeUUID:dCopy pairingIdentity:identityCopy privilege:privilege keyStore:systemStore dataSource:v13];

  return v15;
}

- (HMDUser)initWithAccountHandle:(id)handle home:(id)home pairingIdentity:(id)identity privilege:(unint64_t)privilege dataSource:(id)source
{
  homeCopy = home;
  sourceCopy = source;
  identityCopy = identity;
  handleCopy = handle;
  uuid = [homeCopy uuid];
  systemStore = [MEMORY[0x277CFEC78] systemStore];
  v18 = [(HMDUser *)self initWithAccountHandle:handleCopy homeUUID:uuid pairingIdentity:identityCopy privilege:privilege keyStore:systemStore dataSource:sourceCopy];

  if (v18)
  {
    objc_storeWeak(&v18->_home, homeCopy);
  }

  return v18;
}

- (HMDUser)initWithAccountHandle:(id)handle home:(id)home pairingIdentity:(id)identity privilege:(unint64_t)privilege
{
  identityCopy = identity;
  homeCopy = home;
  handleCopy = handle;
  v13 = objc_alloc_init(HMDUserDefaultDataSource);
  v14 = [(HMDUser *)self initWithAccountHandle:handleCopy home:homeCopy pairingIdentity:identityCopy privilege:privilege dataSource:v13];

  return v14;
}

- (HMDUser)initWithModelObject:(id)object
{
  objectCopy = object;
  selfCopy = [objectCopy uuid];

  if (selfCopy)
  {
    accountHandle = [objectCopy accountHandle];
    if (!accountHandle)
    {
      selfCopy = [objectCopy userID];

      if (!selfCopy)
      {
        goto LABEL_28;
      }

      v7 = +[HMDAccountHandleFormatter defaultFormatter];
      userID = [objectCopy userID];
      accountHandle = [v7 accountHandleFromString:userID];
    }

    idsMergeIdentifier = [objectCopy idsMergeIdentifier];
    pairingIdentity = [objectCopy pairingIdentity];
    if (pairingIdentity)
    {
      v11 = MEMORY[0x277CFEC20];
      pairingIdentity2 = [objectCopy pairingIdentity];
      v13 = [v11 hmd_pairingIdentityWithDictionary:pairingIdentity2];
    }

    else
    {
      v13 = 0;
    }

    privilege = [objectCopy privilege];
    v15 = -[HMDUser initWithAccountHandle:homeUUID:pairingIdentity:privilege:](self, "initWithAccountHandle:homeUUID:pairingIdentity:privilege:", accountHandle, 0, v13, [privilege integerValue]);

    if (v15)
    {
      uuid = [objectCopy uuid];
      uuid = v15->_uuid;
      v15->_uuid = uuid;

      remoteAccessAllowed = [objectCopy remoteAccessAllowed];
      v15->_remoteAccessAllowed = [remoteAccessAllowed BOOLValue];

      v19 = MEMORY[0x277CD1F00];
      presenceAuthorizationStatus = [objectCopy presenceAuthorizationStatus];
      v21 = [v19 authWithNumber:presenceAuthorizationStatus];
      presenceAuthStatus = v15->_presenceAuthStatus;
      v15->_presenceAuthStatus = v21;

      accountIdentifier = [objectCopy accountIdentifier];
      accountIdentifier = v15->_accountIdentifier;
      v15->_accountIdentifier = accountIdentifier;

      objc_storeStrong(&v15->_mergeIdentifier, idsMergeIdentifier);
      camerasAccessLevel = [objectCopy camerasAccessLevel];

      if (camerasAccessLevel)
      {
        camerasAccessLevel2 = [objectCopy camerasAccessLevel];
        v15->_camerasAccessLevel = [camerasAccessLevel2 integerValue];
      }

      v27 = objectCopy;
      if ([v27 propertyWasSet:@"announceAccessLevel"])
      {
        announceAccessLevel = [v27 announceAccessLevel];
        v29 = v15;
        v30 = 0;
        v31 = announceAccessLevel;
      }

      else
      {
        announceAccessLevel = [v27 announceAccessAllowed];
        v29 = v15;
        v30 = announceAccessLevel;
        v31 = 0;
      }

      v32 = [(HMDUser *)v29 announceUserAccessLevelFromAnnounceAccessAllowed:v30 announceAccessLevel:v31];

      v15->_announceAccessLevel = v32;
      matterCASEAuthenticatedTagID = [v27 matterCASEAuthenticatedTagID];
      if (matterCASEAuthenticatedTagID)
      {
        v34 = matterCASEAuthenticatedTagID;
        matterCASEAuthenticatedTagID2 = [v27 matterCASEAuthenticatedTagID];
        integerValue = [matterCASEAuthenticatedTagID2 integerValue];

        if (integerValue)
        {
          matterCASEAuthenticatedTagID3 = [v27 matterCASEAuthenticatedTagID];
          matterCASEAuthenticatedTagID = v15->_matterCASEAuthenticatedTagID;
          v15->_matterCASEAuthenticatedTagID = matterCASEAuthenticatedTagID3;
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
          allowedAccessoryUUIDs = [v41 allowedAccessoryUUIDs];
          v43 = allowedAccessoryUUIDs;
          v44 = MEMORY[0x277CBEBF8];
          if (allowedAccessoryUUIDs)
          {
            v44 = allowedAccessoryUUIDs;
          }

          v45 = v44;

          v46 = [[HMDRestrictedGuestHomeAccessSettings alloc] initWithAllowedAccessories:v45 schedule:0];
          restrictedGuestAccessSettings = v15->_restrictedGuestAccessSettings;
          v15->_restrictedGuestAccessSettings = v46;
        }
      }

      matCredIPKExternalRepresentation = [v27 matCredIPKExternalRepresentation];
      acwgIssuerPublicKeyExternalRepresentation = v15->_acwgIssuerPublicKeyExternalRepresentation;
      v15->_acwgIssuerPublicKeyExternalRepresentation = matCredIPKExternalRepresentation;
    }

    v50 = +[HMDAccountMetadataFactory makeInstance];
    accountMetadata = v15->_accountMetadata;
    v15->_accountMetadata = v50;

    iCloudAltDSID = [objectCopy iCloudAltDSID];
    iCloudAltDSID = v15->_iCloudAltDSID;
    v15->_iCloudAltDSID = iCloudAltDSID;

    firstName = [objectCopy firstName];
    firstName = v15->_firstName;
    v15->_firstName = firstName;

    lastName = [objectCopy lastName];
    lastName = v15->_lastName;
    v15->_lastName = lastName;

    self = v15;
    selfCopy = self;
  }

LABEL_28:

  return selfCopy;
}

- (id)privateSettingValuesByKeyPath
{
  userDataController = [(HMDUser *)self userDataController];
  privateSettingValuesByKeyPath = [userDataController privateSettingValuesByKeyPath];

  return privateSettingValuesByKeyPath;
}

- (id)sharedSettingValuesByKeyPath
{
  userDataController = [(HMDUser *)self userDataController];
  sharedSettingValuesByKeyPath = [userDataController sharedSettingValuesByKeyPath];

  return sharedSettingValuesByKeyPath;
}

- (BOOL)updateAdaptiveTemperatureAutomationsDisclosureStatus:(int64_t)status
{
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  adaptiveTemperatureAutomationsDisclosureStatus = self->_adaptiveTemperatureAutomationsDisclosureStatus;
  if (adaptiveTemperatureAutomationsDisclosureStatus < status)
  {
    self->_adaptiveTemperatureAutomationsDisclosureStatus = status;
  }

  os_unfair_lock_unlock(&self->_lock);
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = @"Did not";
    v13 = 138544130;
    v15 = 2112;
    v14 = v9;
    if (adaptiveTemperatureAutomationsDisclosureStatus < status)
    {
      v10 = @"Did";
    }

    v16 = v10;
    v17 = 2048;
    v18 = adaptiveTemperatureAutomationsDisclosureStatus;
    v19 = 2048;
    statusCopy = status;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@%@ update local adaptive temperature automations disclosure status from %ld to %ld", &v13, 0x2Au);
  }

  objc_autoreleasePoolPop(v6);
  v11 = *MEMORY[0x277D85DE8];
  return adaptiveTemperatureAutomationsDisclosureStatus < status;
}

- (void)setIsDisclosedOnAdaptiveTemperatureAutomations:(int64_t)automations
{
  os_unfair_lock_lock_with_options();
  self->_adaptiveTemperatureAutomationsDisclosureStatus = automations;

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