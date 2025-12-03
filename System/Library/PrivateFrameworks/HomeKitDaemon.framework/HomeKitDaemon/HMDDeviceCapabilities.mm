@interface HMDDeviceCapabilities
+ (BOOL)isAppleMediaAccessory;
+ (BOOL)isCompanionCapable;
+ (BOOL)isInternalVirtualDevice;
+ (BOOL)supportsAddingAccessory;
+ (BOOL)supportsAudioDestinationControllerCreation;
+ (BOOL)supportsAudioDestinationCreation;
+ (BOOL)supportsBackboard;
+ (BOOL)supportsBidirectionalAudioForCameraStreaming;
+ (BOOL)supportsBulletinBoard;
+ (BOOL)supportsCameraSnapshotRequestViaRelay;
+ (BOOL)supportsCustomerReset;
+ (BOOL)supportsDeviceLock;
+ (BOOL)supportsDismissUserNotificationAndDialog;
+ (BOOL)supportsHomeApp;
+ (BOOL)supportsHomeKitDataStream;
+ (BOOL)supportsIntentDonation;
+ (BOOL)supportsLocalization;
+ (BOOL)supportsReceivingRemoteCameraStream;
+ (BOOL)supportsRemoteAccess;
+ (BOOL)supportsSiriUnsecuringActionsWithWatchAuth;
+ (BOOL)supportsSymptomsHandler;
+ (BOOL)supportsSyncingToSharedUsers;
+ (BOOL)supportsTargetControllerAutoConfigure;
+ (BOOL)supportsUserNotifications;
+ (HMDDeviceCapabilities)deviceCapabilities;
+ (id)deviceCapabilitiesModelIdentifierWithParentIdentifier:(id)identifier;
+ (id)logCategory;
+ (unint64_t)supportedPairingCapabilities;
- (BOOL)clearsKeychainWhenRemovedFromHome;
- (BOOL)isEqual:(id)equal;
- (BOOL)isRemoteGatewayCapable;
- (BOOL)isResidentCapable;
- (BOOL)supportsAccessCodes;
- (BOOL)supportsAnnounce;
- (BOOL)supportsAssistantAccessControl;
- (BOOL)supportsAudioAnalysis;
- (BOOL)supportsAudioReturnChannel;
- (BOOL)supportsCHIP;
- (BOOL)supportsCameraActivityZones;
- (BOOL)supportsCameraPackageDetection;
- (BOOL)supportsCameraRecording;
- (BOOL)supportsCameraRecordingReachabilityNotifications;
- (BOOL)supportsCaptiveNetworks;
- (BOOL)supportsCloudDataSync;
- (BOOL)supportsCompanionInitiatedObliterate;
- (BOOL)supportsCompanionInitiatedRestart;
- (BOOL)supportsCoordinationDoorbellChime;
- (BOOL)supportsCoordinationFreeDoorbellChime;
- (BOOL)supportsCustomMediaApplicationDestination;
- (BOOL)supportsDeviceSetup;
- (BOOL)supportsDoorbellChime;
- (BOOL)supportsDropIn;
- (BOOL)supportsFaceClassification;
- (BOOL)supportsFirmwareUpdate;
- (BOOL)supportsHomeHub;
- (BOOL)supportsHomeInvitation;
- (BOOL)supportsHomeLevelLocationServiceSetting;
- (BOOL)supportsIDSActivityMonitorPresence;
- (BOOL)supportsJustSiri;
- (BOOL)supportsKeyTransferClient;
- (BOOL)supportsKeyTransferServer;
- (BOOL)supportsKeychainSync;
- (BOOL)supportsLockNotificationContext;
- (BOOL)supportsManagedConfigurationProfile;
- (BOOL)supportsMatterOwnerCertFetch;
- (BOOL)supportsMatterSharedAdminPairing;
- (BOOL)supportsMediaActions;
- (BOOL)supportsMessagedHomePodSettings;
- (BOOL)supportsModernTransport;
- (BOOL)supportsMultiUser;
- (BOOL)supportsMusicAlarm;
- (BOOL)supportsNaturalLighting;
- (BOOL)supportsPreferredMediaUser;
- (BOOL)supportsRMVonAppleTV;
- (BOOL)supportsResidentFirmwareUpdate;
- (BOOL)supportsResidentFirstAccessoryCommunication;
- (BOOL)supportsRouterManagement;
- (BOOL)supportsShortcutActions;
- (BOOL)supportsSiriEndpointSetup;
- (BOOL)supportsStandaloneMode;
- (BOOL)supportsTVOSUpdateManualUpdateAvailableNotification;
- (BOOL)supportsTargetControl;
- (BOOL)supportsThirdPartyMusic;
- (BOOL)supportsThreadBorderRouter;
- (BOOL)supportsThreadNetworkCredentialSharing;
- (BOOL)supportsThreadService;
- (BOOL)supportsUnifiedMediaNotifications;
- (BOOL)supportsUserMediaSettings;
- (BOOL)supportsWakeOnLAN;
- (BOOL)supportsWalletKey;
- (BOOL)supportsWholeHouseAudio;
- (HMDDeviceCapabilities)initWithCoder:(id)coder;
- (HMDDeviceCapabilities)initWithObjectModel:(id)model;
- (HMDDeviceCapabilities)initWithProductInfo:(id)info;
- (HMDDeviceCapabilities)initWithProductInfo:(id)info mobileGestaltClient:(id)client featuresDataSource:(id)source;
- (HMDDeviceCapabilities)initWithProductInfo:(id)info mobileGestaltClient:(id)client homekitVersion:(id)version featuresDataSource:(id)source;
- (NSUUID)modelIdentifier;
- (NSUUID)modelParentIdentifier;
- (id)attributeDescriptions;
- (id)backingStoreObjectsWithChangeType:(unint64_t)type version:(int64_t)version;
- (id)copyWithZone:(_NSZone *)zone;
- (id)modelBackedObjects;
- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version;
- (id)objectModel;
- (id)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setModelParentIdentifier:(id)identifier;
- (void)transactionObjectRemoved:(id)removed message:(id)message;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
@end

@implementation HMDDeviceCapabilities

+ (HMDDeviceCapabilities)deviceCapabilities
{
  if (deviceCapabilities_onceToken != -1)
  {
    dispatch_once(&deviceCapabilities_onceToken, &__block_literal_global_227880);
  }

  v3 = deviceCapabilities_deviceCapabilities;

  return v3;
}

- (BOOL)supportsCloudDataSync
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsCloudDataSync = [objectModel supportsCloudDataSync];
  bOOLValue = [supportsCloudDataSync BOOLValue];

  return bOOLValue;
}

- (id)objectModel
{
  if (self)
  {
    os_unfair_lock_lock_with_options();
    v2 = *(self + 16);
    os_unfair_lock_unlock((self + 8));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (BOOL)supportsDeviceLock
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productClass = [productInfo productClass];

  return (productClass > 0xB) | (0xFAFu >> productClass) & 1;
}

- (id)modelBackedObjects
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = self;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)backingStoreObjectsWithChangeType:(unint64_t)type version:(int64_t)version
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [(HMDDeviceCapabilities *)self modelObjectWithChangeType:type version:version];
  v5 = v4;
  if (v4)
  {
    v9[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  v6 = [objectModel copy];

  [v6 setObjectChangeType:type];

  return v6;
}

- (void)setModelParentIdentifier:(id)identifier
{
  v34 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    os_unfair_lock_lock_with_options();
    parentUUID = [(HMDBackingStoreModelObject *)self->_objectModel parentUUID];
    if (parentUUID)
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v22;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Parent identifier is already present for this object", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v23 = [[HMDAssertionLogEvent alloc] initWithReason:@"Parent identifier is already present for this object"];
      v24 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v24 submitLogEvent:v23];

      v25 = objc_autoreleasePoolPush();
      v26 = selfCopy;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v28;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Parent identifier is already present for this object", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
    }

    else
    {
      v6 = __identifierForParentUUID(identifierCopy);
      v7 = [(HMDBackingStoreModelObject *)[HMDDeviceCapabilitiesModel alloc] initWithUUID:v6 parentUUID:identifierCopy];
      objectModel = self->_objectModel;
      v29 = 0;
      v9 = [(HMDBackingStoreModelObject *)v7 merge:objectModel error:&v29];
      v10 = v29;
      if (v9)
      {
        objc_storeStrong(&self->_objectModel, v7);
      }

      else
      {
        v14 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543618;
          v31 = v17;
          v32 = 2112;
          v33 = v10;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to update model with error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
      }
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Model parent UUID is a required argument", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (NSUUID)modelParentIdentifier
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  parentUUID = [objectModel parentUUID];

  return parentUUID;
}

- (NSUUID)modelIdentifier
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  uuid = [objectModel uuid];

  return uuid;
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v40[1] = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  v10 = valuesCopy;
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
    v13 = v12;
    v32 = messageCopy;
    if (self)
    {
      os_unfair_lock_lock_with_options();
      objectModel = self->_objectModel;
      v34 = 0;
      v15 = [(HMDBackingStoreModelObject *)objectModel diff:v13 differingFields:&v34];
      v16 = v34;
      if (v15)
      {
        context = objc_autoreleasePoolPush();
        selfCopy = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          *buf = 138543362;
          *&buf[4] = v19;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Updating device capabilities", buf, 0xCu);
        }

        objc_autoreleasePoolPop(context);
        v20 = [(HMDDeviceCapabilitiesModel *)selfCopy->_objectModel copy];
        v21 = [(HMDBackingStoreModelObject *)v20 merge:v13];
        v22 = selfCopy->_objectModel;
        selfCopy->_objectModel = v20;

        os_unfair_lock_unlock(&self->_lock);
        v40[0] = @"HMDDeviceCapabilitiesUpdatedDifferingFieldsNotificationKey";
        *buf = v16;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v40 count:1];
        logAndPostNotification(@"HMDDeviceCapabilitiiesUpdatedNotification", selfCopy, v23);
      }

      else
      {
        os_unfair_lock_unlock(&self->_lock);
      }
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543874;
      *&buf[4] = v27;
      v36 = 2112;
      v37 = v10;
      v38 = 2112;
      v39 = objc_opt_class();
      v28 = v39;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectUpdated:newValues:message:]", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v24);
    v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:v29];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectRemoved:(id)removed message:(id)message
{
  v21 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  messageCopy = message;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v11;
    v17 = 2112;
    v18 = removedCopy;
    v19 = 2112;
    v20 = objc_opt_class();
    v12 = v20;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectRemoved:message:]", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  [messageCopy respondWithError:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  uuid = [objectModel uuid];
  [coderCopy encodeObject:uuid forKey:@"HM.deviceCapabilities.identifier"];

  objectModel2 = [(HMDDeviceCapabilities *)self objectModel];
  v8 = coderCopy;
  v9 = __HMDDeviceCapabilitiesModelCodingKeyMapping();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ____HMDDeviceCapabilitiesModelEncodeWithCoder_block_invoke;
  v12[3] = &unk_278681FB0;
  v13 = objectModel2;
  v14 = v8;
  v10 = objectModel2;
  v11 = v8;
  [v9 enumerateKeysAndObjectsUsingBlock:v12];
}

- (HMDDeviceCapabilities)initWithCoder:(id)coder
{
  coderCopy = coder;
  uUID = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.deviceCapabilities.identifier"];
  if (!uUID)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
  }

  v6 = [(HMDBackingStoreModelObject *)[HMDDeviceCapabilitiesModel alloc] initWithUUID:uUID];
  v7 = coderCopy;
  v8 = __HMDDeviceCapabilitiesModelCodingKeyMapping();
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = ____HMDDeviceCapabilitiesModelDecodeWithCoder_block_invoke;
  v16 = &unk_278681FB0;
  v17 = v7;
  v18 = v6;
  v9 = v7;
  v10 = v6;
  [v8 enumerateKeysAndObjectsUsingBlock:&v13];

  v11 = [(HMDDeviceCapabilities *)self initWithObjectModel:v10, v13, v14, v15, v16];
  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  v7 = [objectModel copyWithZone:zone];
  v8 = [v5 initWithObjectModel:v7];

  return v8;
}

- (BOOL)clearsKeychainWhenRemovedFromHome
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  clearsKeychainWhenRemovedFromHome = [objectModel clearsKeychainWhenRemovedFromHome];
  bOOLValue = [clearsKeychainWhenRemovedFromHome BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsTVOSUpdateManualUpdateAvailableNotification
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsTVOSUpdateManualUpdateAvailableNotification = [objectModel supportsTVOSUpdateManualUpdateAvailableNotification];
  bOOLValue = [supportsTVOSUpdateManualUpdateAvailableNotification BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsCoordinationFreeDoorbellChime
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsCoordinationFreeDoorbellChime = [objectModel supportsCoordinationFreeDoorbellChime];
  bOOLValue = [supportsCoordinationFreeDoorbellChime BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsMatterOwnerCertFetch
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsMatterOwnerCertFetch = [objectModel supportsMatterOwnerCertFetch];
  bOOLValue = [supportsMatterOwnerCertFetch BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsThreadService
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsThreadService = [objectModel supportsThreadService];
  bOOLValue = [supportsThreadService BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsJustSiri
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsJustSiri = [objectModel supportsJustSiri];
  bOOLValue = [supportsJustSiri BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsRMVonAppleTV
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsRMVonAppleTV = [objectModel supportsRMVonAppleTV];
  bOOLValue = [supportsRMVonAppleTV BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsCustomMediaApplicationDestination
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsCustomMediaApplicationDestination = [objectModel supportsCustomMediaApplicationDestination];
  bOOLValue = [supportsCustomMediaApplicationDestination BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsMessagedHomePodSettings
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsMessagedHomePodSettings = [objectModel supportsMessagedHomePodSettings];
  bOOLValue = [supportsMessagedHomePodSettings BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsResidentFirstAccessoryCommunication
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsResidentFirstAccessoryCommunication = [objectModel supportsResidentFirstAccessoryCommunication];
  bOOLValue = [supportsResidentFirstAccessoryCommunication BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsModernTransport
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsModernTransport = [objectModel supportsModernTransport];
  bOOLValue = [supportsModernTransport BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsCaptiveNetworks
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsCaptiveNetworks = [objectModel supportsCaptiveNetworks];
  bOOLValue = [supportsCaptiveNetworks BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsUnifiedMediaNotifications
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsUnifiedMediaNotifications = [objectModel supportsUnifiedMediaNotifications];
  bOOLValue = [supportsUnifiedMediaNotifications BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsCHIP
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsCHIP = [objectModel supportsCHIP];
  bOOLValue = [supportsCHIP BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsCameraPackageDetection
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsCameraPackageDetection = [objectModel supportsCameraPackageDetection];
  bOOLValue = [supportsCameraPackageDetection BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsLockNotificationContext
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsLockNotificationContext = [objectModel supportsLockNotificationContext];
  bOOLValue = [supportsLockNotificationContext BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsMatterSharedAdminPairing
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsMatterSharedAdminPairing = [objectModel supportsMatterSharedAdminPairing];
  bOOLValue = [supportsMatterSharedAdminPairing BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsThreadNetworkCredentialSharing
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsThreadNetworkCredentialSharing = [objectModel supportsThreadNetworkCredentialSharing];
  bOOLValue = [supportsThreadNetworkCredentialSharing BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsWakeOnLAN
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsWakeOnLAN = [objectModel supportsWakeOnLAN];
  bOOLValue = [supportsWakeOnLAN BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsThreadBorderRouter
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsThreadBorderRouter = [objectModel supportsThreadBorderRouter];
  bOOLValue = [supportsThreadBorderRouter BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsPreferredMediaUser
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsPreferredMediaUser = [objectModel supportsPreferredMediaUser];
  bOOLValue = [supportsPreferredMediaUser BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsThirdPartyMusic
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsThirdPartyMusic = [objectModel supportsThirdPartyMusic];
  bOOLValue = [supportsThirdPartyMusic BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsHomeHub
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsHomeHub = [objectModel supportsHomeHub];
  bOOLValue = [supportsHomeHub BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsSiriEndpointSetup
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsSiriEndpointSetup = [objectModel supportsSiriEndpointSetup];
  bOOLValue = [supportsSiriEndpointSetup BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsUserMediaSettings
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsUserMediaSettings = [objectModel supportsUserMediaSettings];
  bOOLValue = [supportsUserMediaSettings BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsDoorbellChime
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsDoorbellChime = [objectModel supportsDoorbellChime];
  bOOLValue = [supportsDoorbellChime BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsDropIn
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsDropIn = [objectModel supportsDropIn];
  bOOLValue = [supportsDropIn BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsAudioAnalysis
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsAudioAnalysis = [objectModel supportsAudioAnalysis];
  bOOLValue = [supportsAudioAnalysis BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsAnnounce
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsAnnounce = [objectModel supportsAnnounce];
  bOOLValue = [supportsAnnounce BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsCameraRecordingReachabilityNotifications
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsCameraRecordingReachabilityNotifications = [objectModel supportsCameraRecordingReachabilityNotifications];
  bOOLValue = [supportsCameraRecordingReachabilityNotifications BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsIDSActivityMonitorPresence
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsIDSActivityMonitorPresence = [objectModel supportsIDSActivityMonitorPresence];
  bOOLValue = [supportsIDSActivityMonitorPresence BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsAccessCodes
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsAccessCodes = [objectModel supportsAccessCodes];
  bOOLValue = [supportsAccessCodes BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsWalletKey
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsWalletKey = [objectModel supportsWalletKey];
  bOOLValue = [supportsWalletKey BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsNaturalLighting
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsNaturalLighting = [objectModel supportsNaturalLighting];
  bOOLValue = [supportsNaturalLighting BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsManagedConfigurationProfile
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsManagedConfigurationProfile = [objectModel supportsManagedConfigurationProfile];
  bOOLValue = [supportsManagedConfigurationProfile BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsFaceClassification
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsFaceClassification = [objectModel supportsFaceClassification];
  bOOLValue = [supportsFaceClassification BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsCoordinationDoorbellChime
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsCoordinationDoorbellChime = [objectModel supportsCoordinationDoorbellChime];
  bOOLValue = [supportsCoordinationDoorbellChime BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsMusicAlarm
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsMusicAlarm = [objectModel supportsMusicAlarm];
  bOOLValue = [supportsMusicAlarm BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsCameraActivityZones
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsCameraActivityZones = [objectModel supportsCameraActivityZones];
  bOOLValue = [supportsCameraActivityZones BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsResidentFirmwareUpdate
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsResidentFirmwareUpdate = [objectModel supportsResidentFirmwareUpdate];
  bOOLValue = [supportsResidentFirmwareUpdate BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsFirmwareUpdate
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsFirmwareUpdate = [objectModel supportsFirmwareUpdate];
  bOOLValue = [supportsFirmwareUpdate BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsMediaActions
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsMediaActions = [objectModel supportsMediaActions];
  bOOLValue = [supportsMediaActions BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsShortcutActions
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsShortcutActions = [objectModel supportsShortcutActions];
  bOOLValue = [supportsShortcutActions BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsRouterManagement
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsRouterManagement = [objectModel supportsRouterManagement];
  bOOLValue = [supportsRouterManagement BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsCameraRecording
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsCameraRecording = [objectModel supportsCameraRecording];
  bOOLValue = [supportsCameraRecording BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsCompanionInitiatedObliterate
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsCompanionInitiatedObliterate = [objectModel supportsCompanionInitiatedObliterate];
  bOOLValue = [supportsCompanionInitiatedObliterate BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsCompanionInitiatedRestart
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsCompanionInitiatedRestart = [objectModel supportsCompanionInitiatedRestart];
  bOOLValue = [supportsCompanionInitiatedRestart BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsAudioReturnChannel
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsAudioReturnChannel = [objectModel supportsAudioReturnChannel];
  bOOLValue = [supportsAudioReturnChannel BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsHomeLevelLocationServiceSetting
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsHomeLevelLocationServiceSetting = [objectModel supportsHomeLevelLocationServiceSetting];
  bOOLValue = [supportsHomeLevelLocationServiceSetting BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsMultiUser
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsMultiUser = [objectModel supportsMultiUser];
  bOOLValue = [supportsMultiUser BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsTargetControl
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsTargetControl = [objectModel supportsTargetControl];
  bOOLValue = [supportsTargetControl BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsHomeInvitation
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsHomeInvitation = [objectModel supportsHomeInvitation];
  bOOLValue = [supportsHomeInvitation BOOLValue];

  return bOOLValue;
}

- (BOOL)isRemoteGatewayCapable
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  remoteGatewayCapable = [objectModel remoteGatewayCapable];
  bOOLValue = [remoteGatewayCapable BOOLValue];

  return bOOLValue;
}

- (BOOL)isResidentCapable
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  residentCapable = [objectModel residentCapable];
  bOOLValue = [residentCapable BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsAssistantAccessControl
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsAssistantAccessControl = [objectModel supportsAssistantAccessControl];
  bOOLValue = [supportsAssistantAccessControl BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsWholeHouseAudio
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsWholeHouseAudio = [objectModel supportsWholeHouseAudio];
  bOOLValue = [supportsWholeHouseAudio BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsStandaloneMode
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsStandaloneMode = [objectModel supportsStandaloneMode];
  bOOLValue = [supportsStandaloneMode BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsKeyTransferServer
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsKeyTransferServer = [objectModel supportsKeyTransferServer];
  bOOLValue = [supportsKeyTransferServer BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsKeyTransferClient
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsKeyTransferClient = [objectModel supportsKeyTransferClient];
  bOOLValue = [supportsKeyTransferClient BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsDeviceSetup
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsDeviceSetup = [objectModel supportsDeviceSetup];
  bOOLValue = [supportsDeviceSetup BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsKeychainSync
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsKeychainSync = [objectModel supportsKeychainSync];
  bOOLValue = [supportsKeychainSync BOOLValue];

  return bOOLValue;
}

- (id)attributeDescriptions
{
  v168[54] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsKeychainSync];
  v167 = HMFBooleanToString();
  v166 = [v3 initWithName:@"Keychain Sync" value:v167];
  v168[0] = v166;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsDeviceSetup];
  v165 = HMFBooleanToString();
  v164 = [v4 initWithName:@"Device Setup" value:v165];
  v168[1] = v164;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsKeyTransferClient];
  v163 = HMFBooleanToString();
  v162 = [v5 initWithName:@"Key Transfer Client" value:v163];
  v168[2] = v162;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsKeyTransferServer];
  v161 = HMFBooleanToString();
  v160 = [v6 initWithName:@"Key Transfer Server" value:v161];
  v168[3] = v160;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsStandaloneMode];
  v159 = HMFBooleanToString();
  v158 = [v7 initWithName:@"Standalone Mode" value:v159];
  v168[4] = v158;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsCloudDataSync];
  v157 = HMFBooleanToString();
  v156 = [v8 initWithName:@"Cloud Data Sync" value:v157];
  v168[5] = v156;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsWholeHouseAudio];
  v155 = HMFBooleanToString();
  v154 = [v9 initWithName:@"Whole House Audio" value:v155];
  v168[6] = v154;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsAssistantAccessControl];
  v153 = HMFBooleanToString();
  v152 = [v10 initWithName:@"Assistant Access Control" value:v153];
  v168[7] = v152;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self isResidentCapable];
  v151 = HMFBooleanToString();
  v150 = [v11 initWithName:@"Resident" value:v151];
  v168[8] = v150;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self isRemoteGatewayCapable];
  v149 = HMFBooleanToString();
  v148 = [v12 initWithName:@"Remote Gateway" value:v149];
  v168[9] = v148;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsTargetControl];
  v147 = HMFBooleanToString();
  v146 = [v13 initWithName:@"Target Control" value:v147];
  v168[10] = v146;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsMultiUser];
  v145 = HMFBooleanToString();
  v144 = [v14 initWithName:@"Multi-User" value:v145];
  v168[11] = v144;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsHomeLevelLocationServiceSetting];
  v143 = HMFBooleanToString();
  v142 = [v15 initWithName:@"Home Level Location Services" value:v143];
  v168[12] = v142;
  v16 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsCompanionInitiatedRestart];
  v141 = HMFBooleanToString();
  v140 = [v16 initWithName:@"Restart" value:v141];
  v168[13] = v140;
  v17 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsCompanionInitiatedObliterate];
  v139 = HMFBooleanToString();
  v138 = [v17 initWithName:@"Factory Reset" value:v139];
  v168[14] = v138;
  v18 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsHomeInvitation];
  v137 = HMFBooleanToString();
  v136 = [v18 initWithName:@"Home Invitation" value:v137];
  v168[15] = v136;
  v19 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsCameraRecording];
  v135 = HMFBooleanToString();
  v134 = [v19 initWithName:@"Camera Recording" value:v135];
  v168[16] = v134;
  v20 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsRouterManagement];
  v133 = HMFBooleanToString();
  v132 = [v20 initWithName:@"Router Management" value:v133];
  v168[17] = v132;
  v21 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsShortcutActions];
  v131 = HMFBooleanToString();
  v130 = [v21 initWithName:@"Shortcut Actions" value:v131];
  v168[18] = v130;
  v22 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsMediaActions];
  v129 = HMFBooleanToString();
  v128 = [v22 initWithName:@"Media Actions" value:v129];
  v168[19] = v128;
  v23 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsFirmwareUpdate];
  v127 = HMFBooleanToString();
  v126 = [v23 initWithName:@"Firmware Update" value:v127];
  v168[20] = v126;
  v24 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsResidentFirmwareUpdate];
  v125 = HMFBooleanToString();
  v124 = [v24 initWithName:@"Resident Firmware Update" value:v125];
  v168[21] = v124;
  v25 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsCameraActivityZones];
  v123 = HMFBooleanToString();
  v122 = [v25 initWithName:@"Camera Activity Zones" value:v123];
  v168[22] = v122;
  v26 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsMusicAlarm];
  v121 = HMFBooleanToString();
  v120 = [v26 initWithName:@"Music Alarms" value:v121];
  v168[23] = v120;
  v27 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsFaceClassification];
  v119 = HMFBooleanToString();
  v118 = [v27 initWithName:@"Face Classification" value:v119];
  v168[24] = v118;
  v28 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsNaturalLighting];
  v117 = HMFBooleanToString();
  v116 = [v28 initWithName:@"Natural Lighting" value:v117];
  v168[25] = v116;
  v29 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsIDSActivityMonitorPresence];
  v115 = HMFBooleanToString();
  v114 = [v29 initWithName:@"IDS Activity Monitor (Presence)" value:v115];
  v168[26] = v114;
  v30 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsCameraRecordingReachabilityNotifications];
  v113 = HMFBooleanToString();
  v112 = [v30 initWithName:@"Camera Recording Reachability Notifications" value:v113];
  v168[27] = v112;
  v31 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsAnnounce];
  v111 = HMFBooleanToString();
  v110 = [v31 initWithName:@"Announce" value:v111];
  v168[28] = v110;
  v32 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsAudioAnalysis];
  v109 = HMFBooleanToString();
  v108 = [v32 initWithName:@"Sound Analysis" value:v109];
  v168[29] = v108;
  v33 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsDropIn];
  v107 = HMFBooleanToString();
  v106 = [v33 initWithName:@"Drop In" value:v107];
  v168[30] = v106;
  v34 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsThirdPartyMusic];
  v105 = HMFBooleanToString();
  v104 = [v34 initWithName:@"ThirdPartyMusic" value:v105];
  v168[31] = v104;
  v35 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsPreferredMediaUser];
  v103 = HMFBooleanToString();
  v102 = [v35 initWithName:@"PreferredMediaUser" value:v103];
  v168[32] = v102;
  v36 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsThreadBorderRouter];
  v101 = HMFBooleanToString();
  v100 = [v36 initWithName:@"Thread Border Router" value:v101];
  v168[33] = v100;
  v37 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsSiriEndpointSetup];
  v99 = HMFBooleanToString();
  v98 = [v37 initWithName:@"Siri Endpoint Setup" value:v99];
  v168[34] = v98;
  v38 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsHomeHub];
  v97 = HMFBooleanToString();
  v96 = [v38 initWithName:@"Home Hub" value:v97];
  v168[35] = v96;
  v39 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsWakeOnLAN];
  v95 = HMFBooleanToString();
  v94 = [v39 initWithName:@"LPM Wake On LAN" value:v95];
  v168[36] = v94;
  v40 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsLockNotificationContext];
  v93 = HMFBooleanToString();
  v92 = [v40 initWithName:@"Lock Notification Context" value:v93];
  v168[37] = v92;
  v41 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsAudioReturnChannel];
  v91 = HMFBooleanToString();
  v90 = [v41 initWithName:@"Audio Return Channel" value:v91];
  v168[38] = v90;
  v42 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsWalletKey];
  v89 = HMFBooleanToString();
  v88 = [v42 initWithName:@"Wallet Key" value:v89];
  v168[39] = v88;
  v43 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsCameraPackageDetection];
  v87 = HMFBooleanToString();
  v86 = [v43 initWithName:@"Camera Package Detection" value:v87];
  v168[40] = v86;
  v44 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsAccessCodes];
  v85 = HMFBooleanToString();
  v84 = [v44 initWithName:@"Access Codes" value:v85];
  v168[41] = v84;
  v45 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsCHIP];
  v83 = HMFBooleanToString();
  v82 = [v45 initWithName:@"CHIP" value:v83];
  v168[42] = v82;
  v46 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsUnifiedMediaNotifications];
  v81 = HMFBooleanToString();
  v80 = [v46 initWithName:@"Unified Media Notifications" value:v81];
  v168[43] = v80;
  v47 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsCaptiveNetworks];
  v79 = HMFBooleanToString();
  v78 = [v47 initWithName:@"Captive Networks" value:v79];
  v168[44] = v78;
  v48 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsModernTransport];
  v77 = HMFBooleanToString();
  v76 = [v48 initWithName:@"Modern Transport" value:v77];
  v168[45] = v76;
  v49 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsResidentFirstAccessoryCommunication];
  v75 = HMFBooleanToString();
  v74 = [v49 initWithName:@"Resident First Accessory Communication" value:v75];
  v168[46] = v74;
  v50 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsCustomMediaApplicationDestination];
  v73 = HMFBooleanToString();
  v72 = [v50 initWithName:@"Custom Destination Media Action" value:v73];
  v168[47] = v72;
  v51 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsThreadNetworkCredentialSharing];
  v71 = HMFBooleanToString();
  v70 = [v51 initWithName:@"Thread Network Credential Sharing" value:v71];
  v168[48] = v70;
  v52 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsMatterSharedAdminPairing];
  v53 = HMFBooleanToString();
  v54 = [v52 initWithName:@"Matter Shared Admin Pairing" value:v53];
  v168[49] = v54;
  v55 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsRMVonAppleTV];
  v56 = HMFBooleanToString();
  v57 = [v55 initWithName:@"RMV on AppleTV" value:v56];
  v168[50] = v57;
  v58 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsJustSiri];
  v59 = HMFBooleanToString();
  v60 = [v58 initWithName:@"Just Siri" value:v59];
  v168[51] = v60;
  v61 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsThreadService];
  v62 = HMFBooleanToString();
  v63 = [v61 initWithName:@"Thread Service" value:v62];
  v168[52] = v63;
  v64 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsMatterOwnerCertFetch];
  v65 = HMFBooleanToString();
  v66 = [v64 initWithName:@"Matter Owner Cert Fetch" value:v65];
  v168[53] = v66;
  v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v168 count:54];

  v67 = *MEMORY[0x277D85DE8];

  return v69;
}

- (id)shortDescription
{
  array = [MEMORY[0x277CBEB18] array];
  if ([(HMDDeviceCapabilities *)self supportsKeychainSync])
  {
    [array addObject:@"KCS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsDeviceSetup])
  {
    [array addObject:@"DS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsKeyTransferClient])
  {
    [array addObject:@"KTC"];
  }

  if ([(HMDDeviceCapabilities *)self supportsKeyTransferServer])
  {
    [array addObject:@"KTS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsStandaloneMode])
  {
    [array addObject:@"SAM"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCloudDataSync])
  {
    [array addObject:@"CS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsWholeHouseAudio])
  {
    [array addObject:@"WHA"];
  }

  if ([(HMDDeviceCapabilities *)self supportsAssistantAccessControl])
  {
    [array addObject:@"AAC"];
  }

  if ([(HMDDeviceCapabilities *)self isResidentCapable])
  {
    [array addObject:@"RC"];
  }

  if ([(HMDDeviceCapabilities *)self isRemoteGatewayCapable])
  {
    [array addObject:@"RGC"];
  }

  if ([(HMDDeviceCapabilities *)self supportsHomeInvitation])
  {
    [array addObject:@"HI"];
  }

  if ([(HMDDeviceCapabilities *)self supportsTargetControl])
  {
    [array addObject:@"TC"];
  }

  if ([(HMDDeviceCapabilities *)self supportsMultiUser])
  {
    [array addObject:@"MU"];
  }

  if ([(HMDDeviceCapabilities *)self supportsHomeLevelLocationServiceSetting])
  {
    [array addObject:@"HLLS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCompanionInitiatedRestart])
  {
    [array addObject:@"CIR"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCompanionInitiatedObliterate])
  {
    [array addObject:@"CIFR"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCameraRecording])
  {
    [array addObject:@"CR"];
  }

  if ([(HMDDeviceCapabilities *)self supportsRouterManagement])
  {
    [array addObject:@"RM"];
  }

  if ([(HMDDeviceCapabilities *)self supportsShortcutActions])
  {
    [array addObject:@"SA"];
  }

  if ([(HMDDeviceCapabilities *)self supportsMediaActions])
  {
    [array addObject:@"MAS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsMusicAlarm])
  {
    [array addObject:@"MA"];
  }

  if ([(HMDDeviceCapabilities *)self supportsFirmwareUpdate])
  {
    [array addObject:@"AFU"];
  }

  if ([(HMDDeviceCapabilities *)self supportsResidentFirmwareUpdate])
  {
    [array addObject:@"RAFU"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCameraActivityZones])
  {
    [array addObject:@"CAZ"];
  }

  if ([(HMDDeviceCapabilities *)self supportsFaceClassification])
  {
    [array addObject:@"FC"];
  }

  if ([(HMDDeviceCapabilities *)self supportsNaturalLighting])
  {
    [array addObject:@"NL"];
  }

  if ([(HMDDeviceCapabilities *)self supportsIDSActivityMonitorPresence])
  {
    [array addObject:@"IAMP"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCameraRecordingReachabilityNotifications])
  {
    [array addObject:@"CRRN"];
  }

  if ([(HMDDeviceCapabilities *)self supportsAnnounce])
  {
    [array addObject:@"AN"];
  }

  if ([(HMDDeviceCapabilities *)self supportsAudioAnalysis])
  {
    [array addObject:@"SAN"];
  }

  if ([(HMDDeviceCapabilities *)self supportsDropIn])
  {
    [array addObject:@"DIN"];
  }

  if ([(HMDDeviceCapabilities *)self supportsThirdPartyMusic])
  {
    [array addObject:@"BLT"];
  }

  if ([(HMDDeviceCapabilities *)self supportsPreferredMediaUser])
  {
    [array addObject:@"PMU"];
  }

  if ([(HMDDeviceCapabilities *)self supportsThreadBorderRouter])
  {
    [array addObject:@"TDR"];
  }

  if ([(HMDDeviceCapabilities *)self supportsSiriEndpointSetup])
  {
    [array addObject:@"SES"];
  }

  if ([(HMDDeviceCapabilities *)self supportsHomeHub])
  {
    [array addObject:@"HH"];
  }

  if ([(HMDDeviceCapabilities *)self supportsWakeOnLAN])
  {
    [array addObject:@"WOL"];
  }

  if ([(HMDDeviceCapabilities *)self supportsLockNotificationContext])
  {
    [array addObject:@"LNC"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCoordinationDoorbellChime])
  {
    [array addObject:@"CDC"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCoordinationFreeDoorbellChime])
  {
    [array addObject:@"CFDC"];
  }

  if ([(HMDDeviceCapabilities *)self supportsTVOSUpdateManualUpdateAvailableNotification])
  {
    [array addObject:@"TVMUN"];
  }

  if ([(HMDDeviceCapabilities *)self supportsAudioReturnChannel])
  {
    [array addObject:@"ARC"];
  }

  if ([(HMDDeviceCapabilities *)self supportsWalletKey])
  {
    [array addObject:@"WK"];
  }

  if ([(HMDDeviceCapabilities *)self supportsAccessCodes])
  {
    [array addObject:@"AC"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCameraPackageDetection])
  {
    [array addObject:@"CPD"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCHIP])
  {
    [array addObject:@"CHIP"];
  }

  if ([(HMDDeviceCapabilities *)self supportsUnifiedMediaNotifications])
  {
    [array addObject:@"UMN"];
  }

  if ([(HMDDeviceCapabilities *)self supportsManagedConfigurationProfile])
  {
    [array addObject:@"MCP"];
  }

  if ([(HMDDeviceCapabilities *)self supportsUserMediaSettings])
  {
    [array addObject:@"UMS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCaptiveNetworks])
  {
    [array addObject:@"CN"];
  }

  if ([(HMDDeviceCapabilities *)self supportsModernTransport])
  {
    [array addObject:@"MT"];
  }

  if ([(HMDDeviceCapabilities *)self supportsResidentFirstAccessoryCommunication])
  {
    [array addObject:@"RFAC"];
  }

  if ([(HMDDeviceCapabilities *)self supportsMessagedHomePodSettings])
  {
    [array addObject:@"MHPS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCustomMediaApplicationDestination])
  {
    [array addObject:@"CMDA"];
  }

  if ([(HMDDeviceCapabilities *)self supportsThreadNetworkCredentialSharing])
  {
    [array addObject:@"TNCS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsMatterSharedAdminPairing])
  {
    [array addObject:@"MSAP"];
  }

  if ([(HMDDeviceCapabilities *)self supportsRMVonAppleTV])
  {
    [array addObject:@"TVRMV"];
  }

  if ([(HMDDeviceCapabilities *)self supportsJustSiri])
  {
    [array addObject:@"HSJS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsThreadService])
  {
    [array addObject:@"THRDS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsMatterOwnerCertFetch])
  {
    [array addObject:@"MOCF"];
  }

  v4 = [array componentsJoinedByString:{@", "}];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v65) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (!v6)
    {
      goto LABEL_64;
    }

    supportsKeychainSync = [(HMDDeviceCapabilities *)self supportsKeychainSync];
    if (supportsKeychainSync != [(HMDDeviceCapabilities *)v6 supportsKeychainSync])
    {
      goto LABEL_64;
    }

    supportsDeviceSetup = [(HMDDeviceCapabilities *)self supportsDeviceSetup];
    if (supportsDeviceSetup != [(HMDDeviceCapabilities *)v6 supportsDeviceSetup])
    {
      goto LABEL_64;
    }

    supportsKeyTransferClient = [(HMDDeviceCapabilities *)self supportsKeyTransferClient];
    if (supportsKeyTransferClient != [(HMDDeviceCapabilities *)v6 supportsKeyTransferClient])
    {
      goto LABEL_64;
    }

    supportsKeyTransferServer = [(HMDDeviceCapabilities *)self supportsKeyTransferServer];
    if (supportsKeyTransferServer != [(HMDDeviceCapabilities *)v6 supportsKeyTransferServer])
    {
      goto LABEL_64;
    }

    supportsStandaloneMode = [(HMDDeviceCapabilities *)self supportsStandaloneMode];
    if (supportsStandaloneMode != [(HMDDeviceCapabilities *)v6 supportsStandaloneMode])
    {
      goto LABEL_64;
    }

    supportsCloudDataSync = [(HMDDeviceCapabilities *)self supportsCloudDataSync];
    if (supportsCloudDataSync != [(HMDDeviceCapabilities *)v6 supportsCloudDataSync])
    {
      goto LABEL_64;
    }

    supportsWholeHouseAudio = [(HMDDeviceCapabilities *)self supportsWholeHouseAudio];
    if (supportsWholeHouseAudio != [(HMDDeviceCapabilities *)v6 supportsWholeHouseAudio])
    {
      goto LABEL_64;
    }

    supportsAssistantAccessControl = [(HMDDeviceCapabilities *)self supportsAssistantAccessControl];
    if (supportsAssistantAccessControl != [(HMDDeviceCapabilities *)v6 supportsAssistantAccessControl])
    {
      goto LABEL_64;
    }

    isResidentCapable = [(HMDDeviceCapabilities *)self isResidentCapable];
    if (isResidentCapable != [(HMDDeviceCapabilities *)v6 isResidentCapable])
    {
      goto LABEL_64;
    }

    isRemoteGatewayCapable = [(HMDDeviceCapabilities *)self isRemoteGatewayCapable];
    if (isRemoteGatewayCapable != [(HMDDeviceCapabilities *)v6 isRemoteGatewayCapable])
    {
      goto LABEL_64;
    }

    supportsHomeInvitation = [(HMDDeviceCapabilities *)self supportsHomeInvitation];
    if (supportsHomeInvitation != [(HMDDeviceCapabilities *)v6 supportsHomeInvitation])
    {
      goto LABEL_64;
    }

    supportsTargetControl = [(HMDDeviceCapabilities *)self supportsTargetControl];
    if (supportsTargetControl != [(HMDDeviceCapabilities *)v6 supportsTargetControl])
    {
      goto LABEL_64;
    }

    supportsMultiUser = [(HMDDeviceCapabilities *)self supportsMultiUser];
    if (supportsMultiUser != [(HMDDeviceCapabilities *)v6 supportsMultiUser])
    {
      goto LABEL_64;
    }

    supportsHomeLevelLocationServiceSetting = [(HMDDeviceCapabilities *)self supportsHomeLevelLocationServiceSetting];
    if (supportsHomeLevelLocationServiceSetting != [(HMDDeviceCapabilities *)v6 supportsHomeLevelLocationServiceSetting])
    {
      goto LABEL_64;
    }

    supportsCompanionInitiatedRestart = [(HMDDeviceCapabilities *)self supportsCompanionInitiatedRestart];
    if (supportsCompanionInitiatedRestart != [(HMDDeviceCapabilities *)v6 supportsCompanionInitiatedRestart])
    {
      goto LABEL_64;
    }

    supportsCompanionInitiatedObliterate = [(HMDDeviceCapabilities *)self supportsCompanionInitiatedObliterate];
    if (supportsCompanionInitiatedObliterate != [(HMDDeviceCapabilities *)v6 supportsCompanionInitiatedObliterate])
    {
      goto LABEL_64;
    }

    supportsCameraRecording = [(HMDDeviceCapabilities *)self supportsCameraRecording];
    if (supportsCameraRecording != [(HMDDeviceCapabilities *)v6 supportsCameraRecording])
    {
      goto LABEL_64;
    }

    supportsRouterManagement = [(HMDDeviceCapabilities *)self supportsRouterManagement];
    if (supportsRouterManagement != [(HMDDeviceCapabilities *)v6 supportsRouterManagement])
    {
      goto LABEL_64;
    }

    supportsShortcutActions = [(HMDDeviceCapabilities *)self supportsShortcutActions];
    if (supportsShortcutActions != [(HMDDeviceCapabilities *)v6 supportsShortcutActions])
    {
      goto LABEL_64;
    }

    supportsMediaActions = [(HMDDeviceCapabilities *)self supportsMediaActions];
    if (supportsMediaActions != [(HMDDeviceCapabilities *)v6 supportsMediaActions])
    {
      goto LABEL_64;
    }

    supportsMusicAlarm = [(HMDDeviceCapabilities *)self supportsMusicAlarm];
    if (supportsMusicAlarm != [(HMDDeviceCapabilities *)v6 supportsMusicAlarm])
    {
      goto LABEL_64;
    }

    supportsFirmwareUpdate = [(HMDDeviceCapabilities *)self supportsFirmwareUpdate];
    if (supportsFirmwareUpdate != [(HMDDeviceCapabilities *)v6 supportsFirmwareUpdate])
    {
      goto LABEL_64;
    }

    supportsResidentFirmwareUpdate = [(HMDDeviceCapabilities *)self supportsResidentFirmwareUpdate];
    if (supportsResidentFirmwareUpdate != [(HMDDeviceCapabilities *)v6 supportsResidentFirmwareUpdate])
    {
      goto LABEL_64;
    }

    supportsCameraActivityZones = [(HMDDeviceCapabilities *)self supportsCameraActivityZones];
    if (supportsCameraActivityZones != [(HMDDeviceCapabilities *)v6 supportsCameraActivityZones])
    {
      goto LABEL_64;
    }

    supportsFaceClassification = [(HMDDeviceCapabilities *)self supportsFaceClassification];
    if (supportsFaceClassification != [(HMDDeviceCapabilities *)v6 supportsFaceClassification])
    {
      goto LABEL_64;
    }

    supportsNaturalLighting = [(HMDDeviceCapabilities *)self supportsNaturalLighting];
    if (supportsNaturalLighting != [(HMDDeviceCapabilities *)v6 supportsNaturalLighting])
    {
      goto LABEL_64;
    }

    supportsIDSActivityMonitorPresence = [(HMDDeviceCapabilities *)self supportsIDSActivityMonitorPresence];
    if (supportsIDSActivityMonitorPresence != [(HMDDeviceCapabilities *)v6 supportsIDSActivityMonitorPresence])
    {
      goto LABEL_64;
    }

    supportsCameraRecordingReachabilityNotifications = [(HMDDeviceCapabilities *)self supportsCameraRecordingReachabilityNotifications];
    if (supportsCameraRecordingReachabilityNotifications != [(HMDDeviceCapabilities *)v6 supportsCameraRecordingReachabilityNotifications])
    {
      goto LABEL_64;
    }

    supportsAnnounce = [(HMDDeviceCapabilities *)self supportsAnnounce];
    if (supportsAnnounce != [(HMDDeviceCapabilities *)v6 supportsAnnounce])
    {
      goto LABEL_64;
    }

    supportsAudioAnalysis = [(HMDDeviceCapabilities *)self supportsAudioAnalysis];
    if (supportsAudioAnalysis != [(HMDDeviceCapabilities *)v6 supportsAudioAnalysis])
    {
      goto LABEL_64;
    }

    supportsDropIn = [(HMDDeviceCapabilities *)self supportsDropIn];
    if (supportsDropIn != [(HMDDeviceCapabilities *)v6 supportsDropIn])
    {
      goto LABEL_64;
    }

    supportsThirdPartyMusic = [(HMDDeviceCapabilities *)self supportsThirdPartyMusic];
    if (supportsThirdPartyMusic != [(HMDDeviceCapabilities *)v6 supportsThirdPartyMusic])
    {
      goto LABEL_64;
    }

    supportsPreferredMediaUser = [(HMDDeviceCapabilities *)self supportsPreferredMediaUser];
    if (supportsPreferredMediaUser != [(HMDDeviceCapabilities *)v6 supportsPreferredMediaUser])
    {
      goto LABEL_64;
    }

    supportsThreadBorderRouter = [(HMDDeviceCapabilities *)self supportsThreadBorderRouter];
    if (supportsThreadBorderRouter != [(HMDDeviceCapabilities *)v6 supportsThreadBorderRouter])
    {
      goto LABEL_64;
    }

    supportsSiriEndpointSetup = [(HMDDeviceCapabilities *)self supportsSiriEndpointSetup];
    if (supportsSiriEndpointSetup != [(HMDDeviceCapabilities *)v6 supportsSiriEndpointSetup])
    {
      goto LABEL_64;
    }

    supportsHomeHub = [(HMDDeviceCapabilities *)self supportsHomeHub];
    if (supportsHomeHub != [(HMDDeviceCapabilities *)v6 supportsHomeHub])
    {
      goto LABEL_64;
    }

    supportsWakeOnLAN = [(HMDDeviceCapabilities *)self supportsWakeOnLAN];
    if (supportsWakeOnLAN != [(HMDDeviceCapabilities *)v6 supportsWakeOnLAN])
    {
      goto LABEL_64;
    }

    supportsLockNotificationContext = [(HMDDeviceCapabilities *)self supportsLockNotificationContext];
    if (supportsLockNotificationContext != [(HMDDeviceCapabilities *)v6 supportsLockNotificationContext])
    {
      goto LABEL_64;
    }

    supportsCoordinationDoorbellChime = [(HMDDeviceCapabilities *)self supportsCoordinationDoorbellChime];
    if (supportsCoordinationDoorbellChime != [(HMDDeviceCapabilities *)v6 supportsCoordinationDoorbellChime])
    {
      goto LABEL_64;
    }

    supportsCoordinationFreeDoorbellChime = [(HMDDeviceCapabilities *)self supportsCoordinationFreeDoorbellChime];
    if (supportsCoordinationFreeDoorbellChime != [(HMDDeviceCapabilities *)v6 supportsCoordinationFreeDoorbellChime])
    {
      goto LABEL_64;
    }

    supportsTVOSUpdateManualUpdateAvailableNotification = [(HMDDeviceCapabilities *)self supportsTVOSUpdateManualUpdateAvailableNotification];
    if (supportsTVOSUpdateManualUpdateAvailableNotification != [(HMDDeviceCapabilities *)v6 supportsTVOSUpdateManualUpdateAvailableNotification])
    {
      goto LABEL_64;
    }

    supportsManagedConfigurationProfile = [(HMDDeviceCapabilities *)self supportsManagedConfigurationProfile];
    if (supportsManagedConfigurationProfile != [(HMDDeviceCapabilities *)v6 supportsManagedConfigurationProfile])
    {
      goto LABEL_64;
    }

    supportsAudioReturnChannel = [(HMDDeviceCapabilities *)self supportsAudioReturnChannel];
    if (supportsAudioReturnChannel != [(HMDDeviceCapabilities *)v6 supportsAudioReturnChannel])
    {
      goto LABEL_64;
    }

    supportsWalletKey = [(HMDDeviceCapabilities *)self supportsWalletKey];
    if (supportsWalletKey != [(HMDDeviceCapabilities *)v6 supportsWalletKey])
    {
      goto LABEL_64;
    }

    supportsCameraPackageDetection = [(HMDDeviceCapabilities *)self supportsCameraPackageDetection];
    if (supportsCameraPackageDetection != [(HMDDeviceCapabilities *)v6 supportsCameraPackageDetection])
    {
      goto LABEL_64;
    }

    supportsAccessCodes = [(HMDDeviceCapabilities *)self supportsAccessCodes];
    if (supportsAccessCodes != [(HMDDeviceCapabilities *)v6 supportsAccessCodes])
    {
      goto LABEL_64;
    }

    supportsCHIP = [(HMDDeviceCapabilities *)self supportsCHIP];
    if (supportsCHIP != [(HMDDeviceCapabilities *)v6 supportsCHIP])
    {
      goto LABEL_64;
    }

    supportsUnifiedMediaNotifications = [(HMDDeviceCapabilities *)self supportsUnifiedMediaNotifications];
    if (supportsUnifiedMediaNotifications != [(HMDDeviceCapabilities *)v6 supportsUnifiedMediaNotifications])
    {
      goto LABEL_64;
    }

    supportsCaptiveNetworks = [(HMDDeviceCapabilities *)self supportsCaptiveNetworks];
    if (supportsCaptiveNetworks != [(HMDDeviceCapabilities *)v6 supportsCaptiveNetworks])
    {
      goto LABEL_64;
    }

    supportsModernTransport = [(HMDDeviceCapabilities *)self supportsModernTransport];
    if (supportsModernTransport != [(HMDDeviceCapabilities *)v6 supportsModernTransport])
    {
      goto LABEL_64;
    }

    supportsResidentFirstAccessoryCommunication = [(HMDDeviceCapabilities *)self supportsResidentFirstAccessoryCommunication];
    if (supportsResidentFirstAccessoryCommunication != [(HMDDeviceCapabilities *)v6 supportsResidentFirstAccessoryCommunication])
    {
      goto LABEL_64;
    }

    supportsMessagedHomePodSettings = [(HMDDeviceCapabilities *)self supportsMessagedHomePodSettings];
    if (supportsMessagedHomePodSettings == [(HMDDeviceCapabilities *)v6 supportsMessagedHomePodSettings]&& (v59 = [(HMDDeviceCapabilities *)self supportsCustomMediaApplicationDestination], v59 == [(HMDDeviceCapabilities *)v6 supportsCustomMediaApplicationDestination]) && (v60 = [(HMDDeviceCapabilities *)self supportsThreadNetworkCredentialSharing], v60 == [(HMDDeviceCapabilities *)v6 supportsThreadNetworkCredentialSharing]) && (v61 = [(HMDDeviceCapabilities *)self supportsMatterSharedAdminPairing], v61 == [(HMDDeviceCapabilities *)v6 supportsMatterSharedAdminPairing]) && (v62 = [(HMDDeviceCapabilities *)self supportsRMVonAppleTV], v62 == [(HMDDeviceCapabilities *)v6 supportsRMVonAppleTV]) && (v63 = [(HMDDeviceCapabilities *)self supportsJustSiri], v63 == [(HMDDeviceCapabilities *)v6 supportsJustSiri]) && (v64 = [(HMDDeviceCapabilities *)self supportsThreadService], v64 == [(HMDDeviceCapabilities *)v6 supportsThreadService]))
    {
      supportsMatterOwnerCertFetch = [(HMDDeviceCapabilities *)self supportsMatterOwnerCertFetch];
      v65 = supportsMatterOwnerCertFetch ^ [(HMDDeviceCapabilities *)v6 supportsMatterOwnerCertFetch]^ 1;
    }

    else
    {
LABEL_64:
      LOBYTE(v65) = 0;
    }
  }

  return v65;
}

- (unint64_t)hash
{
  [(HMDDeviceCapabilities *)self supportsKeychainSync];
  [(HMDDeviceCapabilities *)self supportsDeviceSetup];
  [(HMDDeviceCapabilities *)self supportsKeyTransferClient];
  [(HMDDeviceCapabilities *)self supportsKeyTransferServer];
  [(HMDDeviceCapabilities *)self supportsStandaloneMode];
  [(HMDDeviceCapabilities *)self supportsCloudDataSync];
  [(HMDDeviceCapabilities *)self supportsWholeHouseAudio];
  [(HMDDeviceCapabilities *)self supportsAssistantAccessControl];
  [(HMDDeviceCapabilities *)self isResidentCapable];
  [(HMDDeviceCapabilities *)self isRemoteGatewayCapable];
  [(HMDDeviceCapabilities *)self supportsHomeInvitation];
  [(HMDDeviceCapabilities *)self supportsTargetControl];
  [(HMDDeviceCapabilities *)self supportsMultiUser];
  [(HMDDeviceCapabilities *)self supportsHomeLevelLocationServiceSetting];
  [(HMDDeviceCapabilities *)self supportsCompanionInitiatedRestart];
  [(HMDDeviceCapabilities *)self supportsCompanionInitiatedObliterate];
  [(HMDDeviceCapabilities *)self supportsCameraRecording];
  [(HMDDeviceCapabilities *)self supportsRouterManagement];
  [(HMDDeviceCapabilities *)self supportsShortcutActions];
  [(HMDDeviceCapabilities *)self supportsMediaActions];
  [(HMDDeviceCapabilities *)self supportsFirmwareUpdate];
  [(HMDDeviceCapabilities *)self supportsResidentFirmwareUpdate];
  [(HMDDeviceCapabilities *)self supportsCameraActivityZones];
  [(HMDDeviceCapabilities *)self supportsMusicAlarm];
  [(HMDDeviceCapabilities *)self supportsFaceClassification];
  [(HMDDeviceCapabilities *)self supportsNaturalLighting];
  [(HMDDeviceCapabilities *)self supportsIDSActivityMonitorPresence];
  [(HMDDeviceCapabilities *)self supportsCameraRecordingReachabilityNotifications];
  [(HMDDeviceCapabilities *)self supportsAnnounce];
  [(HMDDeviceCapabilities *)self supportsAudioAnalysis];
  [(HMDDeviceCapabilities *)self supportsDropIn];
  [(HMDDeviceCapabilities *)self supportsDoorbellChime];
  [(HMDDeviceCapabilities *)self supportsThirdPartyMusic];
  [(HMDDeviceCapabilities *)self supportsThreadBorderRouter];
  [(HMDDeviceCapabilities *)self supportsPreferredMediaUser];
  [(HMDDeviceCapabilities *)self supportsSiriEndpointSetup];
  [(HMDDeviceCapabilities *)self supportsHomeHub];
  [(HMDDeviceCapabilities *)self supportsWakeOnLAN];
  [(HMDDeviceCapabilities *)self supportsLockNotificationContext];
  [(HMDDeviceCapabilities *)self supportsCoordinationDoorbellChime];
  [(HMDDeviceCapabilities *)self supportsCoordinationFreeDoorbellChime];
  [(HMDDeviceCapabilities *)self supportsTVOSUpdateManualUpdateAvailableNotification];
  [(HMDDeviceCapabilities *)self supportsAudioReturnChannel];
  [(HMDDeviceCapabilities *)self supportsWalletKey];
  [(HMDDeviceCapabilities *)self supportsCameraPackageDetection];
  [(HMDDeviceCapabilities *)self supportsAccessCodes];
  [(HMDDeviceCapabilities *)self supportsCHIP];
  [(HMDDeviceCapabilities *)self supportsUnifiedMediaNotifications];
  [(HMDDeviceCapabilities *)self supportsManagedConfigurationProfile];
  [(HMDDeviceCapabilities *)self supportsUserMediaSettings];
  [(HMDDeviceCapabilities *)self supportsCaptiveNetworks];
  [(HMDDeviceCapabilities *)self supportsModernTransport];
  [(HMDDeviceCapabilities *)self supportsResidentFirstAccessoryCommunication];
  [(HMDDeviceCapabilities *)self supportsMessagedHomePodSettings];
  [(HMDDeviceCapabilities *)self supportsCustomMediaApplicationDestination];
  [(HMDDeviceCapabilities *)self supportsThreadNetworkCredentialSharing];
  [(HMDDeviceCapabilities *)self supportsMatterSharedAdminPairing];
  [(HMDDeviceCapabilities *)self supportsRMVonAppleTV];
  [(HMDDeviceCapabilities *)self supportsJustSiri];
  [(HMDDeviceCapabilities *)self supportsThreadService];
  [(HMDDeviceCapabilities *)self supportsMatterOwnerCertFetch];
  [(HMDDeviceCapabilities *)self supportsWiFiRepairV2];
  [(HMDDeviceCapabilities *)self supportsStereoOdeonTTSUBypassingPrimary];
  [(HMDDeviceCapabilities *)self supportsNetworkDiagnostics];

  return [(HMDDeviceCapabilities *)self supportsCrossfadeAsAirPlaySource];
}

- (HMDDeviceCapabilities)initWithObjectModel:(id)model
{
  v17 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  if (modelCopy)
  {
    v14.receiver = self;
    v14.super_class = HMDDeviceCapabilities;
    v6 = [(HMDDeviceCapabilities *)&v14 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_objectModel, model);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Model object is a required argument", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    selfCopy = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (HMDDeviceCapabilities)initWithProductInfo:(id)info mobileGestaltClient:(id)client homekitVersion:(id)version featuresDataSource:(id)source
{
  v103 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  clientCopy = client;
  versionCopy = version;
  sourceCopy = source;
  v14 = sourceCopy;
  if (infoCopy)
  {
    v96 = sourceCopy;
    v15 = [HMDDeviceCapabilitiesModel alloc];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v17 = [(HMDBackingStoreModelObject *)v15 initWithUUID:uUID];

    v18 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsKeychainSync(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsKeychainSync:v18];

    v19 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsDeviceSetup(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsDeviceSetup:v19];

    v20 = [MEMORY[0x277CCABB0] numberWithBool:{productSupportsKeyTransferClient(infoCopy, clientCopy, versionCopy)}];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsKeyTransferClient:v20];

    v21 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsKeyTransferServer(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsKeyTransferServer:v21];

    v22 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsKeychainSync(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsStandaloneMode:v22];

    v23 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCloudDataSync(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCloudDataSync:v23];

    v24 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsWholeHouseAudio(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsWholeHouseAudio:v24];

    v25 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsAssistantAccessControl(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsAssistantAccessControl:v25];

    v26 = [MEMORY[0x277CCABB0] numberWithBool:productIsResidentCapable(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setResidentCapable:v26];

    v27 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(infoCopy, "productClass") == 4}];
    [(HMDDeviceCapabilitiesModel *)v17 setRemoteGatewayCapable:v27];

    v28 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsHomeInvitation(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsHomeInvitation:v28];

    v29 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsTargetControl(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsTargetControl:v29];

    v30 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsMultiUser(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsMultiUser:v30];

    v31 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsHomeLevelLocationServiceSetting(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsHomeLevelLocationServiceSetting:v31];

    v32 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCompanionInitiatedRestart(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCompanionInitiatedRestart:v32];

    v33 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCompanionInitiatedObliterate(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCompanionInitiatedObliterate:v33];

    v34 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCameraRecording(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCameraRecording:v34];

    v35 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsRouterManagement(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsRouterManagement:v35];

    v36 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsShortcutActions(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsShortcutActions:v36];

    v37 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsMediaActions(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsMediaActions:v37];

    v38 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsFirmwareUpdate(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsFirmwareUpdate:v38];

    v39 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsResidentFirmwareUpdate(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsResidentFirmwareUpdate:v39];

    v40 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCameraActivityZones(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCameraActivityZones:v40];

    v41 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsMusicAlarm(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsMusicAlarm:v41];

    v42 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCameraActivityZones(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsFaceClassification:v42];

    v43 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCameraActivityZones(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsNaturalLighting:v43];

    v44 = MEMORY[0x277CCABB0];
    productPlatform = [infoCopy productPlatform];
    v46 = [v44 numberWithBool:(productPlatform > 5) | (0x10u >> productPlatform) & 1];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsIDSActivityMonitorPresence:v46];

    v47 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCameraActivityZones(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCameraRecordingReachabilityNotifications:v47];

    v48 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsAnnounce(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsAnnounce:v48];

    v49 = [MEMORY[0x277CCABB0] numberWithBool:{productSupportsAudioAnalysis(infoCopy, clientCopy)}];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsAudioAnalysis:v49];

    v50 = [MEMORY[0x277CCABB0] numberWithBool:{productSupportsDropIn(infoCopy, clientCopy)}];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsDropIn:v50];

    v51 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsThirdPartyMusic(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsThirdPartyMusic:v51];

    v52 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsPreferredMediaUser(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsPreferredMediaUser:v52];

    v53 = [MEMORY[0x277CCABB0] numberWithBool:0];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsThreadBorderRouter:v53];

    v54 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsThirdPartyMusic(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsDoorbellChime:v54];

    v55 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsUserMediaSettings(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsUserMediaSettings:v55];

    v56 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCoordinationDoorbellChime(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCoordinationDoorbellChime:v56];

    v57 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCoordinationFreeDoorbellChime(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCoordinationFreeDoorbellChime:v57];

    v58 = [MEMORY[0x277CCABB0] numberWithBool:{(objc_msgSend(infoCopy, "productClass") & 0xFFFFFFFFFFFFFFFDLL) == 4}];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsTVOSUpdateManualUpdateAvailableNotification:v58];

    v59 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsSiriEndpointSetup(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsSiriEndpointSetup:v59];

    v60 = [MEMORY[0x277CCABB0] numberWithBool:{productSupportsHomeHub(infoCopy, clientCopy)}];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsHomeHub:v60];

    v61 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsWakeOnLAN(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsWakeOnLAN:v61];

    v62 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsLockNotificationContext(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsLockNotificationContext:v62];

    v63 = [MEMORY[0x277CCABB0] numberWithBool:{productSupportsAudioReturnChannel(infoCopy, clientCopy)}];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsAudioReturnChannel:v63];

    v64 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsLockNotificationContext(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsWalletKey:v64];

    v65 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsLockNotificationContext(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCameraPackageDetection:v65];

    v66 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsLockNotificationContext(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsAccessCodes:v66];

    v67 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsLockNotificationContext(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCHIP:v67];

    v68 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsUnifiedMediaNotifications(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsUnifiedMediaNotifications:v68];

    v69 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsUserMediaSettings(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsManagedConfigurationProfile:v69];

    v70 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCaptiveNetworks(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCaptiveNetworks:v70];

    [(HMDDeviceCapabilitiesModel *)v17 setSupportsModernTransport:MEMORY[0x277CBEC28]];
    v71 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsResidentFirstAccessoryCommunication(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsResidentFirstAccessoryCommunication:v71];

    v72 = [MEMORY[0x277CCABB0] numberWithBool:{productSupportsMessagedHomePodSettings(infoCopy, versionCopy)}];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsMessagedHomePodSettings:v72];

    v73 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCustomMediaApplicationDestination(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCustomMediaApplicationDestination:v73];

    v74 = [MEMORY[0x277CCABB0] numberWithBool:{productSupportsThreadNetworkCredentialSharing(infoCopy, clientCopy, versionCopy)}];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsThreadNetworkCredentialSharing:v74];

    v75 = [MEMORY[0x277CCABB0] numberWithBool:{productSupportsMatterSharedAdminPairing(infoCopy, clientCopy, versionCopy)}];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsMatterSharedAdminPairing:v75];

    v76 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsRMVonAppleTV(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsRMVonAppleTV:v76];

    v77 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsJustSiri(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsJustSiri:v77];

    v78 = MEMORY[0x277CCABB0];
    v102 = 0;
    memset(buf, 0, sizeof(buf));
    v79 = infoCopy;
    softwareVersion = [v79 softwareVersion];
    v81 = softwareVersion;
    if (softwareVersion)
    {
      [softwareVersion operatingSystemVersion];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
      v102 = 0;
    }

    productPlatform2 = [v79 productPlatform];
    productClass = [v79 productClass];

    if (productPlatform2 == 1)
    {
      v97 = *MEMORY[0x277D0F3E8];
      v99 = *(MEMORY[0x277D0F3E8] + 16);
      if (HMFOperatingSystemVersionCompare() != 1 && (isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled() & 1) != 0)
      {
        goto LABEL_16;
      }
    }

    v88 = 0;
    if (productClass > 0xA || ((1 << productClass) & 0x78A) == 0)
    {
      goto LABEL_18;
    }

    if (productPlatform2 == 2 && (v98 = *MEMORY[0x277D0F330], v100 = *(MEMORY[0x277D0F330] + 16), HMFOperatingSystemVersionCompare() != 1) && isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled())
    {
LABEL_16:
      v88 = MGGetBoolAnswer();
    }

    else
    {
      v88 = 0;
    }

LABEL_18:
    v89 = [v78 numberWithBool:v88];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsThreadService:v89];

    v90 = [MEMORY[0x277CCABB0] numberWithBool:{productSupportsMatterOwnerCertFetch(v79, clientCopy, versionCopy)}];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsMatterOwnerCertFetch:v90];

    v91 = MEMORY[0x277CCABB0];
    productClass2 = [v79 productClass];
    v93 = [v91 numberWithBool:(productClass2 < 0xC) & (0x40u >> productClass2)];
    [(HMDDeviceCapabilitiesModel *)v17 setClearsKeychainWhenRemovedFromHome:v93];

    self = [(HMDDeviceCapabilities *)self initWithObjectModel:v17];
    selfCopy = self;
    v14 = v96;
    goto LABEL_19;
  }

  v82 = objc_autoreleasePoolPush();
  v83 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
  {
    v84 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v84;
    _os_log_impl(&dword_229538000, v83, OS_LOG_TYPE_ERROR, "%{public}@Product info is a required argument", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v82);
  selfCopy = 0;
LABEL_19:

  v94 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (HMDDeviceCapabilities)initWithProductInfo:(id)info mobileGestaltClient:(id)client featuresDataSource:(id)source
{
  clientCopy = client;
  infoCopy = info;
  v9 = +[HMDFeaturesDataSource defaultDataSource];
  v10 = [(HMDDeviceCapabilities *)self initWithProductInfo:infoCopy mobileGestaltClient:clientCopy homekitVersion:0 featuresDataSource:v9];

  return v10;
}

- (HMDDeviceCapabilities)initWithProductInfo:(id)info
{
  infoCopy = info;
  v5 = +[HMDFeaturesDataSource defaultDataSource];
  v6 = [(HMDDeviceCapabilities *)self initWithProductInfo:infoCopy mobileGestaltClient:0 homekitVersion:0 featuresDataSource:v5];

  return v6;
}

+ (id)deviceCapabilitiesModelIdentifierWithParentIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = __identifierForParentUUID(identifier);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (unint64_t)supportedPairingCapabilities
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productClass = [productInfo productClass];

  if ((productClass - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return 15;
  }
}

+ (BOOL)supportsAudioDestinationCreation
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productClass = [productInfo productClass];

  if (productClass != 6)
  {
    return 0;
  }

  if (MGGetBoolAnswer())
  {
    return 1;
  }

  return +[HMDDeviceCapabilities isInternalVirtualDevice];
}

+ (BOOL)supportsAudioDestinationControllerCreation
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productClass = [productInfo productClass];

  if (productClass != 4)
  {
    return 0;
  }

  if (MGGetBoolAnswer())
  {
    return 1;
  }

  return +[HMDDeviceCapabilities isInternalVirtualDevice];
}

+ (BOOL)isInternalVirtualDevice
{
  if (isInternalVirtualDevice_onceToken != -1)
  {
    dispatch_once(&isInternalVirtualDevice_onceToken, &__block_literal_global_397);
  }

  if (isInternalVirtualDevice_result != 1)
  {
    return 0;
  }

  return isInternalBuild();
}

uint64_t __48__HMDDeviceCapabilities_isInternalVirtualDevice__block_invoke()
{
  result = MGGetBoolAnswer();
  isInternalVirtualDevice_result = result;
  return result;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_227873 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_227873, &__block_literal_global_217_227874);
  }

  v3 = logCategory__hmf_once_v5_227875;

  return v3;
}

void __36__HMDDeviceCapabilities_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_227875;
  logCategory__hmf_once_v5_227875 = v1;
}

void __43__HMDDeviceCapabilities_deviceCapabilities__block_invoke()
{
  v0 = [HMDDeviceCapabilities alloc];
  v6 = [MEMORY[0x277D0F8E8] productInfo];
  v1 = objc_alloc_init(HMDMobileGestaltClient);
  v2 = +[HMDHomeKitVersion currentVersion];
  v3 = +[HMDFeaturesDataSource defaultDataSource];
  v4 = [(HMDDeviceCapabilities *)v0 initWithProductInfo:v6 mobileGestaltClient:v1 homekitVersion:v2 featuresDataSource:v3];
  v5 = deviceCapabilities_deviceCapabilities;
  deviceCapabilities_deviceCapabilities = v4;
}

+ (BOOL)supportsSiriUnsecuringActionsWithWatchAuth
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [productInfo productClass] == 1;

  return v3;
}

+ (BOOL)supportsBulletinBoard
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productPlatform = [productInfo productPlatform];

  if (productPlatform)
  {
    v4 = productPlatform == 3;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

+ (BOOL)supportsHomeKitDataStream
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productPlatform = [productInfo productPlatform];

  if (productPlatform)
  {
    v4 = productPlatform == 3;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

+ (BOOL)isCompanionCapable
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [productInfo productClass] == 1;

  return v3;
}

+ (BOOL)supportsBackboard
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productClass = [productInfo productClass];

  return (productClass < 0xC) & (0x83Eu >> productClass);
}

+ (BOOL)supportsSyncingToSharedUsers
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productClass = [productInfo productClass];

  return (productClass > 0xB) | (0xFDFu >> productClass) & 1;
}

+ (BOOL)supportsAddingAccessory
{
  systemInfo = [MEMORY[0x277D0F910] systemInfo];
  if ([systemInfo productPlatform] == 1)
  {
    systemInfo2 = [MEMORY[0x277D0F910] systemInfo];
    v4 = [systemInfo2 productVariant] == 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (BOOL)supportsBidirectionalAudioForCameraStreaming
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productPlatform = [productInfo productPlatform];

  return (productPlatform > 5) | (0x2Fu >> productPlatform) & 1;
}

+ (BOOL)supportsReceivingRemoteCameraStream
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productPlatform = [productInfo productPlatform];

  return (productPlatform < 6) & (0x2Eu >> productPlatform);
}

+ (BOOL)supportsDismissUserNotificationAndDialog
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productPlatform = [productInfo productPlatform];

  return (productPlatform < 6) & (0x2Eu >> productPlatform);
}

+ (BOOL)supportsUserNotifications
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productPlatform = [productInfo productPlatform];

  return (productPlatform < 6) & (0x26u >> productPlatform);
}

+ (BOOL)supportsCameraSnapshotRequestViaRelay
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productPlatform = [productInfo productPlatform];

  return (productPlatform < 6) & (0x2Eu >> productPlatform);
}

+ (BOOL)supportsTargetControllerAutoConfigure
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  if ([productInfo productClass] == 1)
  {
    goto LABEL_4;
  }

  productInfo2 = [MEMORY[0x277D0F8E8] productInfo];
  if ([productInfo2 productClass] == 3)
  {

LABEL_4:
    IsResidentCapable = 1;
    goto LABEL_5;
  }

  productInfo3 = [MEMORY[0x277D0F8E8] productInfo];
  productClass = [productInfo3 productClass];

  if (productClass == 2)
  {
    return 1;
  }

  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  IsResidentCapable = productIsResidentCapable(productInfo);
LABEL_5:

  return IsResidentCapable;
}

+ (BOOL)supportsRemoteAccess
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productPlatform = [productInfo productPlatform];

  return (productPlatform < 6) & (0x2Eu >> productPlatform);
}

+ (BOOL)isAppleMediaAccessory
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productClass = [productInfo productClass];

  return (productClass & 0xFFFFFFFFFFFFFFFDLL) == 4;
}

+ (BOOL)supportsCustomerReset
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productPlatform = [productInfo productPlatform];

  return (productPlatform - 1) < 2;
}

+ (BOOL)supportsSymptomsHandler
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productPlatform = [productInfo productPlatform];

  return (productPlatform < 6) & (0x24u >> productPlatform);
}

+ (BOOL)supportsIntentDonation
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productPlatform = [productInfo productPlatform];

  return (productPlatform < 6) & (0x2Cu >> productPlatform);
}

+ (BOOL)supportsHomeApp
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productPlatform = [productInfo productPlatform];

  return (productPlatform < 6) & (0x2Cu >> productPlatform);
}

+ (BOOL)supportsLocalization
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [productInfo productClass] != 6;

  return v3;
}

@end