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
+ (id)deviceCapabilitiesModelIdentifierWithParentIdentifier:(id)a3;
+ (id)logCategory;
+ (unint64_t)supportedPairingCapabilities;
- (BOOL)clearsKeychainWhenRemovedFromHome;
- (BOOL)isEqual:(id)a3;
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
- (HMDDeviceCapabilities)initWithCoder:(id)a3;
- (HMDDeviceCapabilities)initWithObjectModel:(id)a3;
- (HMDDeviceCapabilities)initWithProductInfo:(id)a3;
- (HMDDeviceCapabilities)initWithProductInfo:(id)a3 mobileGestaltClient:(id)a4 featuresDataSource:(id)a5;
- (HMDDeviceCapabilities)initWithProductInfo:(id)a3 mobileGestaltClient:(id)a4 homekitVersion:(id)a5 featuresDataSource:(id)a6;
- (NSUUID)modelIdentifier;
- (NSUUID)modelParentIdentifier;
- (id)attributeDescriptions;
- (id)backingStoreObjectsWithChangeType:(unint64_t)a3 version:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)modelBackedObjects;
- (id)modelObjectWithChangeType:(unint64_t)a3 version:(int64_t)a4;
- (id)objectModel;
- (id)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setModelParentIdentifier:(id)a3;
- (void)transactionObjectRemoved:(id)a3 message:(id)a4;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
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
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsCloudDataSync];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)objectModel
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    v2 = *(a1 + 16);
    os_unfair_lock_unlock((a1 + 8));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (BOOL)supportsDeviceLock
{
  v2 = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [v2 productClass];

  return (v3 > 0xB) | (0xFAFu >> v3) & 1;
}

- (id)modelBackedObjects
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = self;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)backingStoreObjectsWithChangeType:(unint64_t)a3 version:(int64_t)a4
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [(HMDDeviceCapabilities *)self modelObjectWithChangeType:a3 version:a4];
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

- (id)modelObjectWithChangeType:(unint64_t)a3 version:(int64_t)a4
{
  v5 = [(HMDDeviceCapabilities *)self objectModel];
  v6 = [v5 copy];

  [v6 setObjectChangeType:a3];

  return v6;
}

- (void)setModelParentIdentifier:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock_with_options();
    v5 = [(HMDBackingStoreModelObject *)self->_objectModel parentUUID];
    if (v5)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = self;
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
      v26 = v20;
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
      v6 = __identifierForParentUUID(v4);
      v7 = [(HMDBackingStoreModelObject *)[HMDDeviceCapabilitiesModel alloc] initWithUUID:v6 parentUUID:v4];
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
        v15 = self;
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
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 parentUUID];

  return v3;
}

- (NSUUID)modelIdentifier
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 uuid];

  return v3;
}

- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v40[1] = *MEMORY[0x277D85DE8];
  v33 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v8;
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
    v32 = v9;
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
        v17 = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          *buf = 138543362;
          *&buf[4] = v19;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Updating device capabilities", buf, 0xCu);
        }

        objc_autoreleasePoolPop(context);
        v20 = [(HMDDeviceCapabilitiesModel *)v17->_objectModel copy];
        v21 = [(HMDBackingStoreModelObject *)v20 merge:v13];
        v22 = v17->_objectModel;
        v17->_objectModel = v20;

        os_unfair_lock_unlock(&self->_lock);
        v40[0] = @"HMDDeviceCapabilitiesUpdatedDifferingFieldsNotificationKey";
        *buf = v16;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v40 count:1];
        logAndPostNotification(@"HMDDeviceCapabilitiiesUpdatedNotification", v17, v23);
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
    v25 = self;
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
    [v9 respondWithError:v29];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectRemoved:(id)a3 message:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v11;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = objc_opt_class();
    v12 = v20;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectRemoved:message:]", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  [v7 respondWithError:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDDeviceCapabilities *)self objectModel];
  v6 = [v5 uuid];
  [v4 encodeObject:v6 forKey:@"HM.deviceCapabilities.identifier"];

  v7 = [(HMDDeviceCapabilities *)self objectModel];
  v8 = v4;
  v9 = __HMDDeviceCapabilitiesModelCodingKeyMapping();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ____HMDDeviceCapabilitiesModelEncodeWithCoder_block_invoke;
  v12[3] = &unk_278681FB0;
  v13 = v7;
  v14 = v8;
  v10 = v7;
  v11 = v8;
  [v9 enumerateKeysAndObjectsUsingBlock:v12];
}

- (HMDDeviceCapabilities)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.deviceCapabilities.identifier"];
  if (!v5)
  {
    v5 = [MEMORY[0x277CCAD78] UUID];
  }

  v6 = [(HMDBackingStoreModelObject *)[HMDDeviceCapabilitiesModel alloc] initWithUUID:v5];
  v7 = v4;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(HMDDeviceCapabilities *)self objectModel];
  v7 = [v6 copyWithZone:a3];
  v8 = [v5 initWithObjectModel:v7];

  return v8;
}

- (BOOL)clearsKeychainWhenRemovedFromHome
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 clearsKeychainWhenRemovedFromHome];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsTVOSUpdateManualUpdateAvailableNotification
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsTVOSUpdateManualUpdateAvailableNotification];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsCoordinationFreeDoorbellChime
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsCoordinationFreeDoorbellChime];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsMatterOwnerCertFetch
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsMatterOwnerCertFetch];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsThreadService
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsThreadService];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsJustSiri
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsJustSiri];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsRMVonAppleTV
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsRMVonAppleTV];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsCustomMediaApplicationDestination
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsCustomMediaApplicationDestination];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsMessagedHomePodSettings
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsMessagedHomePodSettings];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsResidentFirstAccessoryCommunication
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsResidentFirstAccessoryCommunication];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsModernTransport
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsModernTransport];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsCaptiveNetworks
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsCaptiveNetworks];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsUnifiedMediaNotifications
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsUnifiedMediaNotifications];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsCHIP
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsCHIP];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsCameraPackageDetection
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsCameraPackageDetection];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsLockNotificationContext
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsLockNotificationContext];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsMatterSharedAdminPairing
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsMatterSharedAdminPairing];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsThreadNetworkCredentialSharing
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsThreadNetworkCredentialSharing];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsWakeOnLAN
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsWakeOnLAN];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsThreadBorderRouter
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsThreadBorderRouter];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsPreferredMediaUser
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsPreferredMediaUser];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsThirdPartyMusic
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsThirdPartyMusic];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsHomeHub
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsHomeHub];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsSiriEndpointSetup
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsSiriEndpointSetup];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsUserMediaSettings
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsUserMediaSettings];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsDoorbellChime
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsDoorbellChime];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsDropIn
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsDropIn];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsAudioAnalysis
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsAudioAnalysis];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsAnnounce
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsAnnounce];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsCameraRecordingReachabilityNotifications
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsCameraRecordingReachabilityNotifications];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsIDSActivityMonitorPresence
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsIDSActivityMonitorPresence];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsAccessCodes
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsAccessCodes];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsWalletKey
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsWalletKey];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsNaturalLighting
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsNaturalLighting];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsManagedConfigurationProfile
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsManagedConfigurationProfile];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsFaceClassification
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsFaceClassification];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsCoordinationDoorbellChime
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsCoordinationDoorbellChime];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsMusicAlarm
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsMusicAlarm];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsCameraActivityZones
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsCameraActivityZones];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsResidentFirmwareUpdate
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsResidentFirmwareUpdate];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsFirmwareUpdate
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsFirmwareUpdate];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsMediaActions
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsMediaActions];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsShortcutActions
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsShortcutActions];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsRouterManagement
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsRouterManagement];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsCameraRecording
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsCameraRecording];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsCompanionInitiatedObliterate
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsCompanionInitiatedObliterate];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsCompanionInitiatedRestart
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsCompanionInitiatedRestart];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsAudioReturnChannel
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsAudioReturnChannel];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsHomeLevelLocationServiceSetting
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsHomeLevelLocationServiceSetting];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsMultiUser
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsMultiUser];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsTargetControl
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsTargetControl];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsHomeInvitation
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsHomeInvitation];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isRemoteGatewayCapable
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 remoteGatewayCapable];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isResidentCapable
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 residentCapable];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsAssistantAccessControl
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsAssistantAccessControl];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsWholeHouseAudio
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsWholeHouseAudio];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsStandaloneMode
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsStandaloneMode];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsKeyTransferServer
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsKeyTransferServer];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsKeyTransferClient
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsKeyTransferClient];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsDeviceSetup
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsDeviceSetup];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsKeychainSync
{
  v2 = [(HMDDeviceCapabilities *)self objectModel];
  v3 = [v2 supportsKeychainSync];
  v4 = [v3 BOOLValue];

  return v4;
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
  v3 = [MEMORY[0x277CBEB18] array];
  if ([(HMDDeviceCapabilities *)self supportsKeychainSync])
  {
    [v3 addObject:@"KCS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsDeviceSetup])
  {
    [v3 addObject:@"DS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsKeyTransferClient])
  {
    [v3 addObject:@"KTC"];
  }

  if ([(HMDDeviceCapabilities *)self supportsKeyTransferServer])
  {
    [v3 addObject:@"KTS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsStandaloneMode])
  {
    [v3 addObject:@"SAM"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCloudDataSync])
  {
    [v3 addObject:@"CS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsWholeHouseAudio])
  {
    [v3 addObject:@"WHA"];
  }

  if ([(HMDDeviceCapabilities *)self supportsAssistantAccessControl])
  {
    [v3 addObject:@"AAC"];
  }

  if ([(HMDDeviceCapabilities *)self isResidentCapable])
  {
    [v3 addObject:@"RC"];
  }

  if ([(HMDDeviceCapabilities *)self isRemoteGatewayCapable])
  {
    [v3 addObject:@"RGC"];
  }

  if ([(HMDDeviceCapabilities *)self supportsHomeInvitation])
  {
    [v3 addObject:@"HI"];
  }

  if ([(HMDDeviceCapabilities *)self supportsTargetControl])
  {
    [v3 addObject:@"TC"];
  }

  if ([(HMDDeviceCapabilities *)self supportsMultiUser])
  {
    [v3 addObject:@"MU"];
  }

  if ([(HMDDeviceCapabilities *)self supportsHomeLevelLocationServiceSetting])
  {
    [v3 addObject:@"HLLS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCompanionInitiatedRestart])
  {
    [v3 addObject:@"CIR"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCompanionInitiatedObliterate])
  {
    [v3 addObject:@"CIFR"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCameraRecording])
  {
    [v3 addObject:@"CR"];
  }

  if ([(HMDDeviceCapabilities *)self supportsRouterManagement])
  {
    [v3 addObject:@"RM"];
  }

  if ([(HMDDeviceCapabilities *)self supportsShortcutActions])
  {
    [v3 addObject:@"SA"];
  }

  if ([(HMDDeviceCapabilities *)self supportsMediaActions])
  {
    [v3 addObject:@"MAS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsMusicAlarm])
  {
    [v3 addObject:@"MA"];
  }

  if ([(HMDDeviceCapabilities *)self supportsFirmwareUpdate])
  {
    [v3 addObject:@"AFU"];
  }

  if ([(HMDDeviceCapabilities *)self supportsResidentFirmwareUpdate])
  {
    [v3 addObject:@"RAFU"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCameraActivityZones])
  {
    [v3 addObject:@"CAZ"];
  }

  if ([(HMDDeviceCapabilities *)self supportsFaceClassification])
  {
    [v3 addObject:@"FC"];
  }

  if ([(HMDDeviceCapabilities *)self supportsNaturalLighting])
  {
    [v3 addObject:@"NL"];
  }

  if ([(HMDDeviceCapabilities *)self supportsIDSActivityMonitorPresence])
  {
    [v3 addObject:@"IAMP"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCameraRecordingReachabilityNotifications])
  {
    [v3 addObject:@"CRRN"];
  }

  if ([(HMDDeviceCapabilities *)self supportsAnnounce])
  {
    [v3 addObject:@"AN"];
  }

  if ([(HMDDeviceCapabilities *)self supportsAudioAnalysis])
  {
    [v3 addObject:@"SAN"];
  }

  if ([(HMDDeviceCapabilities *)self supportsDropIn])
  {
    [v3 addObject:@"DIN"];
  }

  if ([(HMDDeviceCapabilities *)self supportsThirdPartyMusic])
  {
    [v3 addObject:@"BLT"];
  }

  if ([(HMDDeviceCapabilities *)self supportsPreferredMediaUser])
  {
    [v3 addObject:@"PMU"];
  }

  if ([(HMDDeviceCapabilities *)self supportsThreadBorderRouter])
  {
    [v3 addObject:@"TDR"];
  }

  if ([(HMDDeviceCapabilities *)self supportsSiriEndpointSetup])
  {
    [v3 addObject:@"SES"];
  }

  if ([(HMDDeviceCapabilities *)self supportsHomeHub])
  {
    [v3 addObject:@"HH"];
  }

  if ([(HMDDeviceCapabilities *)self supportsWakeOnLAN])
  {
    [v3 addObject:@"WOL"];
  }

  if ([(HMDDeviceCapabilities *)self supportsLockNotificationContext])
  {
    [v3 addObject:@"LNC"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCoordinationDoorbellChime])
  {
    [v3 addObject:@"CDC"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCoordinationFreeDoorbellChime])
  {
    [v3 addObject:@"CFDC"];
  }

  if ([(HMDDeviceCapabilities *)self supportsTVOSUpdateManualUpdateAvailableNotification])
  {
    [v3 addObject:@"TVMUN"];
  }

  if ([(HMDDeviceCapabilities *)self supportsAudioReturnChannel])
  {
    [v3 addObject:@"ARC"];
  }

  if ([(HMDDeviceCapabilities *)self supportsWalletKey])
  {
    [v3 addObject:@"WK"];
  }

  if ([(HMDDeviceCapabilities *)self supportsAccessCodes])
  {
    [v3 addObject:@"AC"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCameraPackageDetection])
  {
    [v3 addObject:@"CPD"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCHIP])
  {
    [v3 addObject:@"CHIP"];
  }

  if ([(HMDDeviceCapabilities *)self supportsUnifiedMediaNotifications])
  {
    [v3 addObject:@"UMN"];
  }

  if ([(HMDDeviceCapabilities *)self supportsManagedConfigurationProfile])
  {
    [v3 addObject:@"MCP"];
  }

  if ([(HMDDeviceCapabilities *)self supportsUserMediaSettings])
  {
    [v3 addObject:@"UMS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCaptiveNetworks])
  {
    [v3 addObject:@"CN"];
  }

  if ([(HMDDeviceCapabilities *)self supportsModernTransport])
  {
    [v3 addObject:@"MT"];
  }

  if ([(HMDDeviceCapabilities *)self supportsResidentFirstAccessoryCommunication])
  {
    [v3 addObject:@"RFAC"];
  }

  if ([(HMDDeviceCapabilities *)self supportsMessagedHomePodSettings])
  {
    [v3 addObject:@"MHPS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCustomMediaApplicationDestination])
  {
    [v3 addObject:@"CMDA"];
  }

  if ([(HMDDeviceCapabilities *)self supportsThreadNetworkCredentialSharing])
  {
    [v3 addObject:@"TNCS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsMatterSharedAdminPairing])
  {
    [v3 addObject:@"MSAP"];
  }

  if ([(HMDDeviceCapabilities *)self supportsRMVonAppleTV])
  {
    [v3 addObject:@"TVRMV"];
  }

  if ([(HMDDeviceCapabilities *)self supportsJustSiri])
  {
    [v3 addObject:@"HSJS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsThreadService])
  {
    [v3 addObject:@"THRDS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsMatterOwnerCertFetch])
  {
    [v3 addObject:@"MOCF"];
  }

  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v65) = 1;
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
    if (!v6)
    {
      goto LABEL_64;
    }

    v7 = [(HMDDeviceCapabilities *)self supportsKeychainSync];
    if (v7 != [(HMDDeviceCapabilities *)v6 supportsKeychainSync])
    {
      goto LABEL_64;
    }

    v8 = [(HMDDeviceCapabilities *)self supportsDeviceSetup];
    if (v8 != [(HMDDeviceCapabilities *)v6 supportsDeviceSetup])
    {
      goto LABEL_64;
    }

    v9 = [(HMDDeviceCapabilities *)self supportsKeyTransferClient];
    if (v9 != [(HMDDeviceCapabilities *)v6 supportsKeyTransferClient])
    {
      goto LABEL_64;
    }

    v10 = [(HMDDeviceCapabilities *)self supportsKeyTransferServer];
    if (v10 != [(HMDDeviceCapabilities *)v6 supportsKeyTransferServer])
    {
      goto LABEL_64;
    }

    v11 = [(HMDDeviceCapabilities *)self supportsStandaloneMode];
    if (v11 != [(HMDDeviceCapabilities *)v6 supportsStandaloneMode])
    {
      goto LABEL_64;
    }

    v12 = [(HMDDeviceCapabilities *)self supportsCloudDataSync];
    if (v12 != [(HMDDeviceCapabilities *)v6 supportsCloudDataSync])
    {
      goto LABEL_64;
    }

    v13 = [(HMDDeviceCapabilities *)self supportsWholeHouseAudio];
    if (v13 != [(HMDDeviceCapabilities *)v6 supportsWholeHouseAudio])
    {
      goto LABEL_64;
    }

    v14 = [(HMDDeviceCapabilities *)self supportsAssistantAccessControl];
    if (v14 != [(HMDDeviceCapabilities *)v6 supportsAssistantAccessControl])
    {
      goto LABEL_64;
    }

    v15 = [(HMDDeviceCapabilities *)self isResidentCapable];
    if (v15 != [(HMDDeviceCapabilities *)v6 isResidentCapable])
    {
      goto LABEL_64;
    }

    v16 = [(HMDDeviceCapabilities *)self isRemoteGatewayCapable];
    if (v16 != [(HMDDeviceCapabilities *)v6 isRemoteGatewayCapable])
    {
      goto LABEL_64;
    }

    v17 = [(HMDDeviceCapabilities *)self supportsHomeInvitation];
    if (v17 != [(HMDDeviceCapabilities *)v6 supportsHomeInvitation])
    {
      goto LABEL_64;
    }

    v18 = [(HMDDeviceCapabilities *)self supportsTargetControl];
    if (v18 != [(HMDDeviceCapabilities *)v6 supportsTargetControl])
    {
      goto LABEL_64;
    }

    v19 = [(HMDDeviceCapabilities *)self supportsMultiUser];
    if (v19 != [(HMDDeviceCapabilities *)v6 supportsMultiUser])
    {
      goto LABEL_64;
    }

    v20 = [(HMDDeviceCapabilities *)self supportsHomeLevelLocationServiceSetting];
    if (v20 != [(HMDDeviceCapabilities *)v6 supportsHomeLevelLocationServiceSetting])
    {
      goto LABEL_64;
    }

    v21 = [(HMDDeviceCapabilities *)self supportsCompanionInitiatedRestart];
    if (v21 != [(HMDDeviceCapabilities *)v6 supportsCompanionInitiatedRestart])
    {
      goto LABEL_64;
    }

    v22 = [(HMDDeviceCapabilities *)self supportsCompanionInitiatedObliterate];
    if (v22 != [(HMDDeviceCapabilities *)v6 supportsCompanionInitiatedObliterate])
    {
      goto LABEL_64;
    }

    v23 = [(HMDDeviceCapabilities *)self supportsCameraRecording];
    if (v23 != [(HMDDeviceCapabilities *)v6 supportsCameraRecording])
    {
      goto LABEL_64;
    }

    v24 = [(HMDDeviceCapabilities *)self supportsRouterManagement];
    if (v24 != [(HMDDeviceCapabilities *)v6 supportsRouterManagement])
    {
      goto LABEL_64;
    }

    v25 = [(HMDDeviceCapabilities *)self supportsShortcutActions];
    if (v25 != [(HMDDeviceCapabilities *)v6 supportsShortcutActions])
    {
      goto LABEL_64;
    }

    v26 = [(HMDDeviceCapabilities *)self supportsMediaActions];
    if (v26 != [(HMDDeviceCapabilities *)v6 supportsMediaActions])
    {
      goto LABEL_64;
    }

    v27 = [(HMDDeviceCapabilities *)self supportsMusicAlarm];
    if (v27 != [(HMDDeviceCapabilities *)v6 supportsMusicAlarm])
    {
      goto LABEL_64;
    }

    v28 = [(HMDDeviceCapabilities *)self supportsFirmwareUpdate];
    if (v28 != [(HMDDeviceCapabilities *)v6 supportsFirmwareUpdate])
    {
      goto LABEL_64;
    }

    v29 = [(HMDDeviceCapabilities *)self supportsResidentFirmwareUpdate];
    if (v29 != [(HMDDeviceCapabilities *)v6 supportsResidentFirmwareUpdate])
    {
      goto LABEL_64;
    }

    v30 = [(HMDDeviceCapabilities *)self supportsCameraActivityZones];
    if (v30 != [(HMDDeviceCapabilities *)v6 supportsCameraActivityZones])
    {
      goto LABEL_64;
    }

    v31 = [(HMDDeviceCapabilities *)self supportsFaceClassification];
    if (v31 != [(HMDDeviceCapabilities *)v6 supportsFaceClassification])
    {
      goto LABEL_64;
    }

    v32 = [(HMDDeviceCapabilities *)self supportsNaturalLighting];
    if (v32 != [(HMDDeviceCapabilities *)v6 supportsNaturalLighting])
    {
      goto LABEL_64;
    }

    v33 = [(HMDDeviceCapabilities *)self supportsIDSActivityMonitorPresence];
    if (v33 != [(HMDDeviceCapabilities *)v6 supportsIDSActivityMonitorPresence])
    {
      goto LABEL_64;
    }

    v34 = [(HMDDeviceCapabilities *)self supportsCameraRecordingReachabilityNotifications];
    if (v34 != [(HMDDeviceCapabilities *)v6 supportsCameraRecordingReachabilityNotifications])
    {
      goto LABEL_64;
    }

    v35 = [(HMDDeviceCapabilities *)self supportsAnnounce];
    if (v35 != [(HMDDeviceCapabilities *)v6 supportsAnnounce])
    {
      goto LABEL_64;
    }

    v36 = [(HMDDeviceCapabilities *)self supportsAudioAnalysis];
    if (v36 != [(HMDDeviceCapabilities *)v6 supportsAudioAnalysis])
    {
      goto LABEL_64;
    }

    v37 = [(HMDDeviceCapabilities *)self supportsDropIn];
    if (v37 != [(HMDDeviceCapabilities *)v6 supportsDropIn])
    {
      goto LABEL_64;
    }

    v38 = [(HMDDeviceCapabilities *)self supportsThirdPartyMusic];
    if (v38 != [(HMDDeviceCapabilities *)v6 supportsThirdPartyMusic])
    {
      goto LABEL_64;
    }

    v39 = [(HMDDeviceCapabilities *)self supportsPreferredMediaUser];
    if (v39 != [(HMDDeviceCapabilities *)v6 supportsPreferredMediaUser])
    {
      goto LABEL_64;
    }

    v40 = [(HMDDeviceCapabilities *)self supportsThreadBorderRouter];
    if (v40 != [(HMDDeviceCapabilities *)v6 supportsThreadBorderRouter])
    {
      goto LABEL_64;
    }

    v41 = [(HMDDeviceCapabilities *)self supportsSiriEndpointSetup];
    if (v41 != [(HMDDeviceCapabilities *)v6 supportsSiriEndpointSetup])
    {
      goto LABEL_64;
    }

    v42 = [(HMDDeviceCapabilities *)self supportsHomeHub];
    if (v42 != [(HMDDeviceCapabilities *)v6 supportsHomeHub])
    {
      goto LABEL_64;
    }

    v43 = [(HMDDeviceCapabilities *)self supportsWakeOnLAN];
    if (v43 != [(HMDDeviceCapabilities *)v6 supportsWakeOnLAN])
    {
      goto LABEL_64;
    }

    v44 = [(HMDDeviceCapabilities *)self supportsLockNotificationContext];
    if (v44 != [(HMDDeviceCapabilities *)v6 supportsLockNotificationContext])
    {
      goto LABEL_64;
    }

    v45 = [(HMDDeviceCapabilities *)self supportsCoordinationDoorbellChime];
    if (v45 != [(HMDDeviceCapabilities *)v6 supportsCoordinationDoorbellChime])
    {
      goto LABEL_64;
    }

    v46 = [(HMDDeviceCapabilities *)self supportsCoordinationFreeDoorbellChime];
    if (v46 != [(HMDDeviceCapabilities *)v6 supportsCoordinationFreeDoorbellChime])
    {
      goto LABEL_64;
    }

    v47 = [(HMDDeviceCapabilities *)self supportsTVOSUpdateManualUpdateAvailableNotification];
    if (v47 != [(HMDDeviceCapabilities *)v6 supportsTVOSUpdateManualUpdateAvailableNotification])
    {
      goto LABEL_64;
    }

    v48 = [(HMDDeviceCapabilities *)self supportsManagedConfigurationProfile];
    if (v48 != [(HMDDeviceCapabilities *)v6 supportsManagedConfigurationProfile])
    {
      goto LABEL_64;
    }

    v49 = [(HMDDeviceCapabilities *)self supportsAudioReturnChannel];
    if (v49 != [(HMDDeviceCapabilities *)v6 supportsAudioReturnChannel])
    {
      goto LABEL_64;
    }

    v50 = [(HMDDeviceCapabilities *)self supportsWalletKey];
    if (v50 != [(HMDDeviceCapabilities *)v6 supportsWalletKey])
    {
      goto LABEL_64;
    }

    v51 = [(HMDDeviceCapabilities *)self supportsCameraPackageDetection];
    if (v51 != [(HMDDeviceCapabilities *)v6 supportsCameraPackageDetection])
    {
      goto LABEL_64;
    }

    v52 = [(HMDDeviceCapabilities *)self supportsAccessCodes];
    if (v52 != [(HMDDeviceCapabilities *)v6 supportsAccessCodes])
    {
      goto LABEL_64;
    }

    v53 = [(HMDDeviceCapabilities *)self supportsCHIP];
    if (v53 != [(HMDDeviceCapabilities *)v6 supportsCHIP])
    {
      goto LABEL_64;
    }

    v54 = [(HMDDeviceCapabilities *)self supportsUnifiedMediaNotifications];
    if (v54 != [(HMDDeviceCapabilities *)v6 supportsUnifiedMediaNotifications])
    {
      goto LABEL_64;
    }

    v55 = [(HMDDeviceCapabilities *)self supportsCaptiveNetworks];
    if (v55 != [(HMDDeviceCapabilities *)v6 supportsCaptiveNetworks])
    {
      goto LABEL_64;
    }

    v56 = [(HMDDeviceCapabilities *)self supportsModernTransport];
    if (v56 != [(HMDDeviceCapabilities *)v6 supportsModernTransport])
    {
      goto LABEL_64;
    }

    v57 = [(HMDDeviceCapabilities *)self supportsResidentFirstAccessoryCommunication];
    if (v57 != [(HMDDeviceCapabilities *)v6 supportsResidentFirstAccessoryCommunication])
    {
      goto LABEL_64;
    }

    v58 = [(HMDDeviceCapabilities *)self supportsMessagedHomePodSettings];
    if (v58 == [(HMDDeviceCapabilities *)v6 supportsMessagedHomePodSettings]&& (v59 = [(HMDDeviceCapabilities *)self supportsCustomMediaApplicationDestination], v59 == [(HMDDeviceCapabilities *)v6 supportsCustomMediaApplicationDestination]) && (v60 = [(HMDDeviceCapabilities *)self supportsThreadNetworkCredentialSharing], v60 == [(HMDDeviceCapabilities *)v6 supportsThreadNetworkCredentialSharing]) && (v61 = [(HMDDeviceCapabilities *)self supportsMatterSharedAdminPairing], v61 == [(HMDDeviceCapabilities *)v6 supportsMatterSharedAdminPairing]) && (v62 = [(HMDDeviceCapabilities *)self supportsRMVonAppleTV], v62 == [(HMDDeviceCapabilities *)v6 supportsRMVonAppleTV]) && (v63 = [(HMDDeviceCapabilities *)self supportsJustSiri], v63 == [(HMDDeviceCapabilities *)v6 supportsJustSiri]) && (v64 = [(HMDDeviceCapabilities *)self supportsThreadService], v64 == [(HMDDeviceCapabilities *)v6 supportsThreadService]))
    {
      v67 = [(HMDDeviceCapabilities *)self supportsMatterOwnerCertFetch];
      v65 = v67 ^ [(HMDDeviceCapabilities *)v6 supportsMatterOwnerCertFetch]^ 1;
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

- (HMDDeviceCapabilities)initWithObjectModel:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v14.receiver = self;
    v14.super_class = HMDDeviceCapabilities;
    v6 = [(HMDDeviceCapabilities *)&v14 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_objectModel, a3);
    }

    self = v7;
    v8 = self;
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
    v8 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (HMDDeviceCapabilities)initWithProductInfo:(id)a3 mobileGestaltClient:(id)a4 homekitVersion:(id)a5 featuresDataSource:(id)a6
{
  v103 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v10)
  {
    v96 = v13;
    v15 = [HMDDeviceCapabilitiesModel alloc];
    v16 = [MEMORY[0x277CCAD78] UUID];
    v17 = [(HMDBackingStoreModelObject *)v15 initWithUUID:v16];

    v18 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsKeychainSync(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsKeychainSync:v18];

    v19 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsDeviceSetup(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsDeviceSetup:v19];

    v20 = [MEMORY[0x277CCABB0] numberWithBool:{productSupportsKeyTransferClient(v10, v11, v12)}];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsKeyTransferClient:v20];

    v21 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsKeyTransferServer(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsKeyTransferServer:v21];

    v22 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsKeychainSync(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsStandaloneMode:v22];

    v23 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCloudDataSync(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCloudDataSync:v23];

    v24 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsWholeHouseAudio(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsWholeHouseAudio:v24];

    v25 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsAssistantAccessControl(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsAssistantAccessControl:v25];

    v26 = [MEMORY[0x277CCABB0] numberWithBool:productIsResidentCapable(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setResidentCapable:v26];

    v27 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10, "productClass") == 4}];
    [(HMDDeviceCapabilitiesModel *)v17 setRemoteGatewayCapable:v27];

    v28 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsHomeInvitation(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsHomeInvitation:v28];

    v29 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsTargetControl(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsTargetControl:v29];

    v30 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsMultiUser(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsMultiUser:v30];

    v31 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsHomeLevelLocationServiceSetting(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsHomeLevelLocationServiceSetting:v31];

    v32 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCompanionInitiatedRestart(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCompanionInitiatedRestart:v32];

    v33 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCompanionInitiatedObliterate(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCompanionInitiatedObliterate:v33];

    v34 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCameraRecording(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCameraRecording:v34];

    v35 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsRouterManagement(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsRouterManagement:v35];

    v36 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsShortcutActions(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsShortcutActions:v36];

    v37 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsMediaActions(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsMediaActions:v37];

    v38 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsFirmwareUpdate(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsFirmwareUpdate:v38];

    v39 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsResidentFirmwareUpdate(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsResidentFirmwareUpdate:v39];

    v40 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCameraActivityZones(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCameraActivityZones:v40];

    v41 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsMusicAlarm(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsMusicAlarm:v41];

    v42 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCameraActivityZones(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsFaceClassification:v42];

    v43 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCameraActivityZones(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsNaturalLighting:v43];

    v44 = MEMORY[0x277CCABB0];
    v45 = [v10 productPlatform];
    v46 = [v44 numberWithBool:(v45 > 5) | (0x10u >> v45) & 1];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsIDSActivityMonitorPresence:v46];

    v47 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCameraActivityZones(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCameraRecordingReachabilityNotifications:v47];

    v48 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsAnnounce(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsAnnounce:v48];

    v49 = [MEMORY[0x277CCABB0] numberWithBool:{productSupportsAudioAnalysis(v10, v11)}];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsAudioAnalysis:v49];

    v50 = [MEMORY[0x277CCABB0] numberWithBool:{productSupportsDropIn(v10, v11)}];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsDropIn:v50];

    v51 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsThirdPartyMusic(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsThirdPartyMusic:v51];

    v52 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsPreferredMediaUser(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsPreferredMediaUser:v52];

    v53 = [MEMORY[0x277CCABB0] numberWithBool:0];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsThreadBorderRouter:v53];

    v54 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsThirdPartyMusic(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsDoorbellChime:v54];

    v55 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsUserMediaSettings(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsUserMediaSettings:v55];

    v56 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCoordinationDoorbellChime(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCoordinationDoorbellChime:v56];

    v57 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCoordinationFreeDoorbellChime(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCoordinationFreeDoorbellChime:v57];

    v58 = [MEMORY[0x277CCABB0] numberWithBool:{(objc_msgSend(v10, "productClass") & 0xFFFFFFFFFFFFFFFDLL) == 4}];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsTVOSUpdateManualUpdateAvailableNotification:v58];

    v59 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsSiriEndpointSetup(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsSiriEndpointSetup:v59];

    v60 = [MEMORY[0x277CCABB0] numberWithBool:{productSupportsHomeHub(v10, v11)}];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsHomeHub:v60];

    v61 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsWakeOnLAN(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsWakeOnLAN:v61];

    v62 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsLockNotificationContext(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsLockNotificationContext:v62];

    v63 = [MEMORY[0x277CCABB0] numberWithBool:{productSupportsAudioReturnChannel(v10, v11)}];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsAudioReturnChannel:v63];

    v64 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsLockNotificationContext(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsWalletKey:v64];

    v65 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsLockNotificationContext(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCameraPackageDetection:v65];

    v66 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsLockNotificationContext(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsAccessCodes:v66];

    v67 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsLockNotificationContext(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCHIP:v67];

    v68 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsUnifiedMediaNotifications(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsUnifiedMediaNotifications:v68];

    v69 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsUserMediaSettings(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsManagedConfigurationProfile:v69];

    v70 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCaptiveNetworks(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCaptiveNetworks:v70];

    [(HMDDeviceCapabilitiesModel *)v17 setSupportsModernTransport:MEMORY[0x277CBEC28]];
    v71 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsResidentFirstAccessoryCommunication(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsResidentFirstAccessoryCommunication:v71];

    v72 = [MEMORY[0x277CCABB0] numberWithBool:{productSupportsMessagedHomePodSettings(v10, v12)}];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsMessagedHomePodSettings:v72];

    v73 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCustomMediaApplicationDestination(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCustomMediaApplicationDestination:v73];

    v74 = [MEMORY[0x277CCABB0] numberWithBool:{productSupportsThreadNetworkCredentialSharing(v10, v11, v12)}];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsThreadNetworkCredentialSharing:v74];

    v75 = [MEMORY[0x277CCABB0] numberWithBool:{productSupportsMatterSharedAdminPairing(v10, v11, v12)}];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsMatterSharedAdminPairing:v75];

    v76 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsRMVonAppleTV(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsRMVonAppleTV:v76];

    v77 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsJustSiri(v10)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsJustSiri:v77];

    v78 = MEMORY[0x277CCABB0];
    v102 = 0;
    memset(buf, 0, sizeof(buf));
    v79 = v10;
    v80 = [v79 softwareVersion];
    v81 = v80;
    if (v80)
    {
      [v80 operatingSystemVersion];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
      v102 = 0;
    }

    v86 = [v79 productPlatform];
    v87 = [v79 productClass];

    if (v86 == 1)
    {
      v97 = *MEMORY[0x277D0F3E8];
      v99 = *(MEMORY[0x277D0F3E8] + 16);
      if (HMFOperatingSystemVersionCompare() != 1 && (isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled() & 1) != 0)
      {
        goto LABEL_16;
      }
    }

    v88 = 0;
    if (v87 > 0xA || ((1 << v87) & 0x78A) == 0)
    {
      goto LABEL_18;
    }

    if (v86 == 2 && (v98 = *MEMORY[0x277D0F330], v100 = *(MEMORY[0x277D0F330] + 16), HMFOperatingSystemVersionCompare() != 1) && isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled())
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

    v90 = [MEMORY[0x277CCABB0] numberWithBool:{productSupportsMatterOwnerCertFetch(v79, v11, v12)}];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsMatterOwnerCertFetch:v90];

    v91 = MEMORY[0x277CCABB0];
    v92 = [v79 productClass];
    v93 = [v91 numberWithBool:(v92 < 0xC) & (0x40u >> v92)];
    [(HMDDeviceCapabilitiesModel *)v17 setClearsKeychainWhenRemovedFromHome:v93];

    self = [(HMDDeviceCapabilities *)self initWithObjectModel:v17];
    v85 = self;
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
  v85 = 0;
LABEL_19:

  v94 = *MEMORY[0x277D85DE8];
  return v85;
}

- (HMDDeviceCapabilities)initWithProductInfo:(id)a3 mobileGestaltClient:(id)a4 featuresDataSource:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = +[HMDFeaturesDataSource defaultDataSource];
  v10 = [(HMDDeviceCapabilities *)self initWithProductInfo:v8 mobileGestaltClient:v7 homekitVersion:0 featuresDataSource:v9];

  return v10;
}

- (HMDDeviceCapabilities)initWithProductInfo:(id)a3
{
  v4 = a3;
  v5 = +[HMDFeaturesDataSource defaultDataSource];
  v6 = [(HMDDeviceCapabilities *)self initWithProductInfo:v4 mobileGestaltClient:0 homekitVersion:0 featuresDataSource:v5];

  return v6;
}

+ (id)deviceCapabilitiesModelIdentifierWithParentIdentifier:(id)a3
{
  if (a3)
  {
    v4 = __identifierForParentUUID(a3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (unint64_t)supportedPairingCapabilities
{
  v2 = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [v2 productClass];

  if ((v3 - 1) >= 3)
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
  v2 = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [v2 productClass];

  if (v3 != 6)
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
  v2 = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [v2 productClass];

  if (v3 != 4)
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
  v2 = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [v2 productClass] == 1;

  return v3;
}

+ (BOOL)supportsBulletinBoard
{
  v2 = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [v2 productPlatform];

  if (v3)
  {
    v4 = v3 == 3;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

+ (BOOL)supportsHomeKitDataStream
{
  v2 = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [v2 productPlatform];

  if (v3)
  {
    v4 = v3 == 3;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

+ (BOOL)isCompanionCapable
{
  v2 = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [v2 productClass] == 1;

  return v3;
}

+ (BOOL)supportsBackboard
{
  v2 = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [v2 productClass];

  return (v3 < 0xC) & (0x83Eu >> v3);
}

+ (BOOL)supportsSyncingToSharedUsers
{
  v2 = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [v2 productClass];

  return (v3 > 0xB) | (0xFDFu >> v3) & 1;
}

+ (BOOL)supportsAddingAccessory
{
  v2 = [MEMORY[0x277D0F910] systemInfo];
  if ([v2 productPlatform] == 1)
  {
    v3 = [MEMORY[0x277D0F910] systemInfo];
    v4 = [v3 productVariant] == 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (BOOL)supportsBidirectionalAudioForCameraStreaming
{
  v2 = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [v2 productPlatform];

  return (v3 > 5) | (0x2Fu >> v3) & 1;
}

+ (BOOL)supportsReceivingRemoteCameraStream
{
  v2 = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [v2 productPlatform];

  return (v3 < 6) & (0x2Eu >> v3);
}

+ (BOOL)supportsDismissUserNotificationAndDialog
{
  v2 = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [v2 productPlatform];

  return (v3 < 6) & (0x2Eu >> v3);
}

+ (BOOL)supportsUserNotifications
{
  v2 = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [v2 productPlatform];

  return (v3 < 6) & (0x26u >> v3);
}

+ (BOOL)supportsCameraSnapshotRequestViaRelay
{
  v2 = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [v2 productPlatform];

  return (v3 < 6) & (0x2Eu >> v3);
}

+ (BOOL)supportsTargetControllerAutoConfigure
{
  v2 = [MEMORY[0x277D0F8E8] productInfo];
  if ([v2 productClass] == 1)
  {
    goto LABEL_4;
  }

  v3 = [MEMORY[0x277D0F8E8] productInfo];
  if ([v3 productClass] == 3)
  {

LABEL_4:
    IsResidentCapable = 1;
    goto LABEL_5;
  }

  v6 = [MEMORY[0x277D0F8E8] productInfo];
  v7 = [v6 productClass];

  if (v7 == 2)
  {
    return 1;
  }

  v2 = [MEMORY[0x277D0F8E8] productInfo];
  IsResidentCapable = productIsResidentCapable(v2);
LABEL_5:

  return IsResidentCapable;
}

+ (BOOL)supportsRemoteAccess
{
  v2 = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [v2 productPlatform];

  return (v3 < 6) & (0x2Eu >> v3);
}

+ (BOOL)isAppleMediaAccessory
{
  v2 = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [v2 productClass];

  return (v3 & 0xFFFFFFFFFFFFFFFDLL) == 4;
}

+ (BOOL)supportsCustomerReset
{
  v2 = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [v2 productPlatform];

  return (v3 - 1) < 2;
}

+ (BOOL)supportsSymptomsHandler
{
  v2 = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [v2 productPlatform];

  return (v3 < 6) & (0x24u >> v3);
}

+ (BOOL)supportsIntentDonation
{
  v2 = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [v2 productPlatform];

  return (v3 < 6) & (0x2Cu >> v3);
}

+ (BOOL)supportsHomeApp
{
  v2 = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [v2 productPlatform];

  return (v3 < 6) & (0x2Cu >> v3);
}

+ (BOOL)supportsLocalization
{
  v2 = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [v2 productClass] != 6;

  return v3;
}

@end