@interface HMDDeviceCapabilitiesModel
+ (id)properties;
+ (id)schemaHashRoot;
@end

@implementation HMDDeviceCapabilitiesModel

+ (id)properties
{
  if (properties_onceToken_152238 != -1)
  {
    dispatch_once(&properties_onceToken_152238, &__block_literal_global_757);
  }

  v3 = properties__properties_152239;

  return v3;
}

void __40__HMDDeviceCapabilitiesModel_properties__block_invoke()
{
  v63[59] = *MEMORY[0x277D85DE8];
  v62[0] = @"supportsKeychainSync";
  v61 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[0] = v61;
  v62[1] = @"supportsDeviceSetup";
  v60 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[1] = v60;
  v62[2] = @"supportsKeyTransferClient";
  v59 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[2] = v59;
  v62[3] = @"supportsKeyTransferServer";
  v58 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[3] = v58;
  v62[4] = @"supportsStandaloneMode";
  v57 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[4] = v57;
  v62[5] = @"supportsCloudDataSync";
  v56 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[5] = v56;
  v62[6] = @"supportsWholeHouseAudio";
  v55 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[6] = v55;
  v62[7] = @"supportsAssistantAccessControl";
  v54 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[7] = v54;
  v62[8] = @"residentCapable";
  v53 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[8] = v53;
  v62[9] = @"remoteGatewayCapable";
  v52 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[9] = v52;
  v62[10] = @"supportsHomeInvitation";
  v51 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[10] = v51;
  v62[11] = @"supportsTargetControl";
  v50 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[11] = v50;
  v62[12] = @"supportsMultiUser";
  v49 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[12] = v49;
  v62[13] = @"supportsHomeLevelLocationServiceSetting";
  v48 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[13] = v48;
  v62[14] = @"supportsCompanionInitiatedRestart";
  v47 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[14] = v47;
  v62[15] = @"supportsCompanionInitiatedObliterate";
  v46 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[15] = v46;
  v62[16] = @"supportsCameraRecording";
  v45 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[16] = v45;
  v62[17] = @"supportsRouterManagement";
  v44 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[17] = v44;
  v62[18] = @"supportsShortcutActions";
  v43 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[18] = v43;
  v62[19] = @"supportsMediaActions";
  v42 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[19] = v42;
  v62[20] = @"supportsFirmwareUpdate";
  v41 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[20] = v41;
  v62[21] = @"supportsResidentFirmwareUpdate";
  v40 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[21] = v40;
  v62[22] = @"supportsCameraActivityZones";
  v39 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[22] = v39;
  v62[23] = @"supportsMusicAlarm";
  v38 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[23] = v38;
  v62[24] = @"supportsFaceClassification";
  v37 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[24] = v37;
  v62[25] = @"supportsNaturalLighting";
  v36 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[25] = v36;
  v62[26] = @"supportsIDSActivityMonitorPresence";
  v35 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[26] = v35;
  v62[27] = @"supportsCameraRecordingReachabilityNotifications";
  v34 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[27] = v34;
  v62[28] = @"supportsAnnounce";
  v33 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[28] = v33;
  v62[29] = @"supportsThirdPartyMusic";
  v32 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[29] = v32;
  v62[30] = @"supportsPreferredMediaUser";
  v31 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[30] = v31;
  v62[31] = @"supportsThreadBorderRouter";
  v30 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[31] = v30;
  v62[32] = @"supportsSiriEndpointSetup";
  v29 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[32] = v29;
  v62[33] = @"supportsHomeHub";
  v28 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[33] = v28;
  v62[34] = @"supportsWakeOnLAN";
  v27 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[34] = v27;
  v62[35] = @"supportsLockNotificationContext";
  v26 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[35] = v26;
  v62[36] = @"supportsCoordinationDoorbellChime";
  v25 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[36] = v25;
  v62[37] = @"supportsCoordinationFreeDoorbellChime";
  v24 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[37] = v24;
  v62[38] = @"supportsTVOSUpdateManualUpdateAvailableNotification";
  v23 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[38] = v23;
  v62[39] = @"supportsAudioReturnChannel";
  v22 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[39] = v22;
  v62[40] = @"supportsWalletKey";
  v21 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[40] = v21;
  v62[41] = @"supportsCameraPackageDetection";
  v20 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[41] = v20;
  v62[42] = @"supportsAccessCodes";
  v19 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[42] = v19;
  v62[43] = @"supportsCHIP";
  v18 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[43] = v18;
  v62[44] = @"supportsDoorbellChime";
  v17 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[44] = v17;
  v62[45] = @"supportsUserMediaSettings";
  v16 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[45] = v16;
  v62[46] = @"supportsUnifiedMediaNotifications";
  v15 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[46] = v15;
  v62[47] = @"supportsManagedConfigurationProfile";
  v14 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[47] = v14;
  v62[48] = @"supportsCaptiveNetworks";
  v13 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[48] = v13;
  v62[49] = @"supportsModernTransport";
  v12 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[49] = v12;
  v62[50] = @"supportsResidentFirstAccessoryCommunication";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[50] = v0;
  v62[51] = @"supportsMessagedHomePodSettings";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[51] = v1;
  v62[52] = @"supportsCustomMediaApplicationDestination";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[52] = v2;
  v62[53] = @"supportsThreadNetworkCredentialSharing";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[53] = v3;
  v62[54] = @"supportsMatterSharedAdminPairing";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[54] = v4;
  v62[55] = @"supportsRMVonAppleTV";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[55] = v5;
  v62[56] = @"supportsJustSiri";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[56] = v6;
  v62[57] = @"supportsThreadService";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[57] = v7;
  v62[58] = @"supportsMatterOwnerCertFetch";
  v8 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63[58] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:59];
  v10 = properties__properties_152239;
  properties__properties_152239 = v9;

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)schemaHashRoot
{
  v2 = [@"D1529AFE-D6F2-4562-AFD9-33A176868B4E" copy];

  return v2;
}

@end