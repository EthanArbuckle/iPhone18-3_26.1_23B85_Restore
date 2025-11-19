@interface HMDDeviceCapabilitiesModel
+ (id)properties;
+ (id)schemaHashRoot;
@end

@implementation HMDDeviceCapabilitiesModel

+ (id)properties
{
  if (properties_onceToken_227026 != -1)
  {
    dispatch_once(&properties_onceToken_227026, &__block_literal_global_773);
  }

  v3 = properties__properties_227027;

  return v3;
}

void __40__HMDDeviceCapabilitiesModel_properties__block_invoke()
{
  v65[61] = *MEMORY[0x277D85DE8];
  v64[0] = @"supportsKeychainSync";
  v63 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[0] = v63;
  v64[1] = @"supportsDeviceSetup";
  v62 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[1] = v62;
  v64[2] = @"supportsKeyTransferClient";
  v61 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[2] = v61;
  v64[3] = @"supportsKeyTransferServer";
  v60 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[3] = v60;
  v64[4] = @"supportsStandaloneMode";
  v59 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[4] = v59;
  v64[5] = @"supportsCloudDataSync";
  v58 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[5] = v58;
  v64[6] = @"supportsWholeHouseAudio";
  v57 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[6] = v57;
  v64[7] = @"supportsAssistantAccessControl";
  v56 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[7] = v56;
  v64[8] = @"residentCapable";
  v55 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[8] = v55;
  v64[9] = @"remoteGatewayCapable";
  v54 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[9] = v54;
  v64[10] = @"supportsHomeInvitation";
  v53 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[10] = v53;
  v64[11] = @"supportsTargetControl";
  v52 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[11] = v52;
  v64[12] = @"supportsMultiUser";
  v51 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[12] = v51;
  v64[13] = @"supportsHomeLevelLocationServiceSetting";
  v50 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[13] = v50;
  v64[14] = @"supportsCompanionInitiatedRestart";
  v49 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[14] = v49;
  v64[15] = @"supportsCompanionInitiatedObliterate";
  v48 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[15] = v48;
  v64[16] = @"supportsCameraRecording";
  v47 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[16] = v47;
  v64[17] = @"supportsRouterManagement";
  v46 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[17] = v46;
  v64[18] = @"supportsShortcutActions";
  v45 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[18] = v45;
  v64[19] = @"supportsMediaActions";
  v44 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[19] = v44;
  v64[20] = @"supportsFirmwareUpdate";
  v43 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[20] = v43;
  v64[21] = @"supportsResidentFirmwareUpdate";
  v42 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[21] = v42;
  v64[22] = @"supportsCameraActivityZones";
  v41 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[22] = v41;
  v64[23] = @"supportsMusicAlarm";
  v40 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[23] = v40;
  v64[24] = @"supportsFaceClassification";
  v39 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[24] = v39;
  v64[25] = @"supportsNaturalLighting";
  v38 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[25] = v38;
  v64[26] = @"supportsIDSActivityMonitorPresence";
  v37 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[26] = v37;
  v64[27] = @"supportsCameraRecordingReachabilityNotifications";
  v36 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[27] = v36;
  v64[28] = @"supportsAnnounce";
  v35 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[28] = v35;
  v64[29] = @"supportsAudioAnalysis";
  v34 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[29] = v34;
  v64[30] = @"supportsDropIn";
  v33 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[30] = v33;
  v64[31] = @"supportsThirdPartyMusic";
  v32 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[31] = v32;
  v64[32] = @"supportsPreferredMediaUser";
  v31 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[32] = v31;
  v64[33] = @"supportsThreadBorderRouter";
  v30 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[33] = v30;
  v64[34] = @"supportsSiriEndpointSetup";
  v29 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[34] = v29;
  v64[35] = @"supportsHomeHub";
  v28 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[35] = v28;
  v64[36] = @"supportsWakeOnLAN";
  v27 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[36] = v27;
  v64[37] = @"supportsLockNotificationContext";
  v26 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[37] = v26;
  v64[38] = @"supportsCoordinationDoorbellChime";
  v25 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[38] = v25;
  v64[39] = @"supportsCoordinationFreeDoorbellChime";
  v24 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[39] = v24;
  v64[40] = @"supportsTVOSUpdateManualUpdateAvailableNotification";
  v23 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[40] = v23;
  v64[41] = @"supportsAudioReturnChannel";
  v22 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[41] = v22;
  v64[42] = @"supportsWalletKey";
  v21 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[42] = v21;
  v64[43] = @"supportsCameraPackageDetection";
  v20 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[43] = v20;
  v64[44] = @"supportsAccessCodes";
  v19 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[44] = v19;
  v64[45] = @"supportsCHIP";
  v18 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[45] = v18;
  v64[46] = @"supportsDoorbellChime";
  v17 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[46] = v17;
  v64[47] = @"supportsUserMediaSettings";
  v16 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[47] = v16;
  v64[48] = @"supportsUnifiedMediaNotifications";
  v15 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[48] = v15;
  v64[49] = @"supportsManagedConfigurationProfile";
  v14 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[49] = v14;
  v64[50] = @"supportsCaptiveNetworks";
  v13 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[50] = v13;
  v64[51] = @"supportsModernTransport";
  v12 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[51] = v12;
  v64[52] = @"supportsResidentFirstAccessoryCommunication";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[52] = v0;
  v64[53] = @"supportsMessagedHomePodSettings";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[53] = v1;
  v64[54] = @"supportsCustomMediaApplicationDestination";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[54] = v2;
  v64[55] = @"supportsThreadNetworkCredentialSharing";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[55] = v3;
  v64[56] = @"supportsMatterSharedAdminPairing";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[56] = v4;
  v64[57] = @"supportsRMVonAppleTV";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[57] = v5;
  v64[58] = @"supportsJustSiri";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[58] = v6;
  v64[59] = @"supportsThreadService";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[59] = v7;
  v64[60] = @"supportsMatterOwnerCertFetch";
  v8 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[60] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:61];
  v10 = properties__properties_227027;
  properties__properties_227027 = v9;

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)schemaHashRoot
{
  v2 = [@"D1529AFE-D6F2-4562-AFD9-33A176868B4E" copy];

  return v2;
}

@end