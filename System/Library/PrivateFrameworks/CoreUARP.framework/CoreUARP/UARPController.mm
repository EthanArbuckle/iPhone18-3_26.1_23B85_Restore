@interface UARPController
- (BOOL)accessoryIDKnown:(id)a3;
- (BOOL)accessoryKnown:(id)a3;
- (BOOL)accessoryReachable:(id)a3;
- (BOOL)accessoryReachableInternal:(id)a3;
- (BOOL)accessoryUnreachable:(id)a3;
- (BOOL)accessoryUnreachableInternal:(id)a3;
- (BOOL)addAccessory:(id)a3 assetID:(id)a4;
- (BOOL)applyStagedFirmwareOnAccessoryList:(id)a3 withUserIntent:(BOOL)a4;
- (BOOL)cancelFirmwareStagingForAccessory:(id)a3 assetID:(id)a4;
- (BOOL)changeAssetLocation:(id)a3 assetID:(id)a4;
- (BOOL)checkForUpdate:(id)a3;
- (BOOL)createUploader;
- (BOOL)disableTRMSystemAuthenticationForRegistryEntryID:(id)a3;
- (BOOL)downloadAvailableFirmwareUpdate:(id)a3 assetID:(id)a4 withUserIntent:(BOOL)a5;
- (BOOL)downloadReleaseNotes:(id)a3 assetID:(id)a4;
- (BOOL)dynamicAssetAvailableForAccessory:(id)a3 assetID:(id)a4 error:(id *)a5;
- (BOOL)enableTRMSystemAuthenticationForRegistryEntryID:(id)a3;
- (BOOL)getAttestationCertificates:(id)a3 assetLocationType:(int64_t)a4;
- (BOOL)getAttestationCertificatesInternal:(id)a3 assetID:(id)a4;
- (BOOL)getBatchedSupportedAccessories:(id)a3 assetLocationType:(int64_t)a4;
- (BOOL)getSupportedAccessories:(id)a3 assetLocationType:(int64_t)a4;
- (BOOL)getSupportedAccessoriesInternal:(id)a3 assetID:(id)a4 batchRequest:(BOOL)a5;
- (BOOL)pauseAssetTransfersForAccessory:(id)a3;
- (BOOL)recvDataFromAccessory:(id)a3 data:(id)a4 error:(id *)a5;
- (BOOL)registerForAssetAvailabilityNotification:(id)a3;
- (BOOL)registerForAttestationCertificatesAvailability:(id)a3;
- (BOOL)registerForGenericNotification:(id)a3 notificationName:(id)a4;
- (BOOL)registerForSupplementalAssetAvailabilityNotification:(id)a3;
- (BOOL)registerForSupportedAccessoriesAvailability:(id)a3;
- (BOOL)removeAccessory:(id)a3;
- (BOOL)requestConsent:(id)a3;
- (BOOL)rescindStagedFirmwareOnAccessoryList:(id)a3 withUserIntent:(BOOL)a4;
- (BOOL)resumeAssetTransfersForAccessory:(id)a3;
- (BOOL)revokeConsentRequest:(id)a3;
- (BOOL)solicitDynamicAsset:(id)a3 assetID:(id)a4;
- (BOOL)stageFirmwareUpdateOnAccessoryList:(id)a3 withUserIntent:(BOOL)a4;
- (BOOL)startPacketCapture:(id)a3;
- (BOOL)startTapToRadar:(id)a3;
- (BOOL)triggerUnsolicitedDynamicAsset:(id)a3 assetTag:(id)a4;
- (BOOL)updateProperty:(unint64_t)a3 value:(id)a4 forAccessory:(id)a5;
- (NSArray)accessoryList;
- (UARPController)init;
- (UARPControllerDelegateProtocol)delegate;
- (id)assetAvailabilityTokenForAccessory:(id)a3;
- (id)createSupportedAccessory:(id)a3 accessoryMetadata:(id)a4;
- (id)pendingAssetForAccessory:(id)a3 assetID:(id)a4;
- (id)pendingTatsuRequests;
- (id)personalizationHelperQueryPendingTssRequests:(id)a3;
- (id)supplementalAssetAvailabilityTokenForAccessory:(id)a3;
- (id)unsolicitedDynamicAssetOffered:(id)a3 assetID:(id)a4;
- (int64_t)queryProperty:(unint64_t)a3 forAccessory:(id)a4;
- (void)accessoryTransportNeeded:(id)a3 isNeeded:(BOOL)a4;
- (void)assetAvailabilityNotificationPosted:(int)a3;
- (void)assetAvailablityUpdateForAccessory:(id)a3 assetID:(id)a4;
- (void)assetAvailablityUpdateForAccessoryID:(id)a3 assetID:(id)a4;
- (void)assetSolicitationComplete:(id)a3 assetID:(id)a4 withStatus:(unint64_t)a5;
- (void)assetSolicitationProgress:(id)a3 assetID:(id)a4 bytesReceived:(unint64_t)a5 bytesTotal:(unint64_t)a6;
- (void)assetStagingPause:(id)a3;
- (void)assetStagingResume:(id)a3;
- (void)dealloc;
- (void)firmwareStagingComplete:(id)a3 assetID:(id)a4 withStatus:(unint64_t)a5;
- (void)firmwareStagingProgress:(id)a3 assetID:(id)a4 bytesSent:(unint64_t)a5 bytesTotal:(unint64_t)a6 filterProgress:(BOOL)a7;
- (void)firmwareUpdateResult:(id)a3 vendorSpecificStatus:(unsigned int)a4 error:(id)a5;
- (void)genericNotificationPosted:(int)a3;
- (void)handleReceivedAttestationCertificates:(id)a3 forSubjectKeyIdentifier:(id)a4;
- (void)pendingTatsuRequests;
- (void)personalizationHelperTssResponse:(id)a3 updaterName:(id)a4;
- (void)progressForUARPConsent:(id)a3 bytesSent:(unint64_t)a4 bytesTotal:(unint64_t)a5;
- (void)progressForUARPConsentInPostLogout:(id)a3 bytesSent:(unint64_t)a4 bytesTotal:(unint64_t)a5;
- (void)queryCompleteForAccessory:(id)a3 appleModelNumber:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 boardID:(unint64_t)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 chipID:(unint64_t)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 chipRevision:(unint64_t)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 ecid:(unint64_t)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 enableMixMatch:(BOOL)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 epoch:(unint64_t)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 firmwareVersion:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 friendlyName:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 hardwareVersion:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 hwFusingType:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 liveNonce:(BOOL)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 manifestPrefix:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 manufacturer:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 modelName:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 nonceHash:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 nonceSeed:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 prefixNeedsLUN:(BOOL)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 productionMode:(unint64_t)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 securityDomain:(unint64_t)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 securityMode:(unint64_t)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 serialNumber:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 stagedFirmwareVersion:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 stats:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 suffixNeedsLUN:(BOOL)a4 error:(id)a5;
- (void)queryFirmwareUpdateResultForAccessory:(id)a3;
- (void)sendFirmwareUpdateProgressForAccessory:(id)a3 assetID:(id)a4 bytesSent:(unint64_t)a5 bytesTotal:(unint64_t)a6;
- (void)sendFirmwareUpdateProgressForUARPConsent:(id)a3 bytesSent:(unint64_t)a4 bytesTotal:(unint64_t)a5;
- (void)sendMessageToAccessory:(id)a3 uarpMsg:(id)a4;
- (void)setChipInfoDelegate:(id)a3;
- (void)stagedFirmwareApplicationComplete:(id)a3 withStatus:(unint64_t)a4;
- (void)stagedFirmwareRescindComplete:(id)a3 withStatus:(unint64_t)a4;
- (void)startPersonalizationHelperService:(id)a3 entitlement:(id)a4;
- (void)stopPacketCapture;
- (void)stopTapToRadar;
- (void)supplementalAssetAvailabilityNotificationPosted:(int)a3;
- (void)supplementalAssetAvailablityUpdateForAccessory:(id)a3 assetName:(id)a4;
- (void)supplementalAssetAvailablityUpdateForAccessoryID:(id)a3 assetName:(id)a4;
- (void)supportedAccessories:(id)a3 forProductGroup:(id)a4 isComplete:(BOOL)a5;
- (void)tssResponse:(id)a3;
- (void)unregisterForAllAssetAvailabilityNotifications;
- (void)unregisterForAllAttestationCertificatesAvailabilityNotifications;
- (void)unregisterForAllGenericNotifications;
- (void)unregisterForAllSupplementalAssetAvailabilityNotifications;
- (void)unregisterForAssetAvailabilityNotification:(id)a3;
- (void)unregisterForSupplementalAssetAvailabilityNotification:(id)a3;
- (void)updatePendingAssetsForAccessory:(id)a3 assetID:(id)a4;
@end

@implementation UARPController

- (UARPController)init
{
  v32.receiver = self;
  v32.super_class = UARPController;
  v2 = [(UARPController *)&v32 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    accessories = v2->_accessories;
    v2->_accessories = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEA78]);
    assetCache = v2->_assetCache;
    v2->_assetCache = v5;

    v7 = dispatch_queue_create("UARPController internal", 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v7;

    v9 = dispatch_queue_create("UARPController delegate", 0);
    delegateQueue = v2->_delegateQueue;
    v2->_delegateQueue = v9;

    v11 = os_log_create("com.apple.accessoryupdater.uarp", "xpc");
    xpcLog = v2->_xpcLog;
    v2->_xpcLog = v11;

    v13 = os_log_create("com.apple.accessoryupdater.uarp", "uarpController");
    controllerLog = v2->_controllerLog;
    v2->_controllerLog = v13;

    v15 = [[UARPControllerXPC alloc] initWithController:v2];
    internalDelegate = v2->_internalDelegate;
    v2->_internalDelegate = v15;

    v17 = objc_alloc_init(UARPPowerLogManager);
    powerLogManager = v2->_powerLogManager;
    v2->_powerLogManager = v17;

    v19 = [[UARPAnalyticsUpdateFirmwareManager alloc] initWithController:v2 queue:v2->_internalQueue];
    updateFirmwareAnalytics = v2->_updateFirmwareAnalytics;
    v2->_updateFirmwareAnalytics = v19;

    v21 = [MEMORY[0x277CBEB38] dictionary];
    assetAvailabilityNotificationTokenDict = v2->_assetAvailabilityNotificationTokenDict;
    v2->_assetAvailabilityNotificationTokenDict = v21;

    v23 = [MEMORY[0x277CBEB38] dictionary];
    supplementalAssetAvailabilityNotificationTokenDict = v2->_supplementalAssetAvailabilityNotificationTokenDict;
    v2->_supplementalAssetAvailabilityNotificationTokenDict = v23;

    v25 = [MEMORY[0x277CBEB38] dictionary];
    assetAvailabilityUARPProductGroupNotificationTokenDict = v2->_assetAvailabilityUARPProductGroupNotificationTokenDict;
    v2->_assetAvailabilityUARPProductGroupNotificationTokenDict = v25;

    v27 = [MEMORY[0x277CBEB38] dictionary];
    attestationCertificatesAvailabilitySubjectKeyIdentifierNotificationTokenDict = v2->_attestationCertificatesAvailabilitySubjectKeyIdentifierNotificationTokenDict;
    v2->_attestationCertificatesAvailabilitySubjectKeyIdentifierNotificationTokenDict = v27;

    v29 = [MEMORY[0x277CBEB38] dictionary];
    generalNotificationTokenDict = v2->_generalNotificationTokenDict;
    v2->_generalNotificationTokenDict = v29;

    v2->_isInternalBuild = MGGetBoolAnswer();
  }

  return v2;
}

- (void)setChipInfoDelegate:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  chipInfoDelegate = obj->_chipInfoDelegate;
  obj->_chipInfoDelegate = v4;

  objc_sync_exit(obj);
}

- (void)dealloc
{
  [(UARPController *)self unregisterForAllAssetAvailabilityNotifications];
  [(UARPController *)self unregisterForAllSupplementalAssetAvailabilityNotifications];
  [(UARPController *)self unregisterForAllGenericNotifications];
  [(UARPController *)self unregisterForAllAttestationCertificatesAvailabilityNotifications];
  v3.receiver = self;
  v3.super_class = UARPController;
  [(UARPController *)&v3 dealloc];
}

- (BOOL)accessoryReachableInternal:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  accessories = self->_accessories;
  v6 = [v4 getID];
  v7 = [(NSMutableDictionary *)accessories objectForKeyedSubscript:v6];

  [v7 setSuppressAutomaticDynamicAssets:{objc_msgSend(v4, "suppressAutomaticDynamicAssets")}];
  [v7 setSuppressInfoQueries:{objc_msgSend(v4, "suppressInfoQueries")}];
  controllerLog = self->_controllerLog;
  if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_INFO))
  {
    v17 = 138412290;
    v18 = v4;
    _os_log_impl(&dword_247AA7000, controllerLog, OS_LOG_TYPE_INFO, "Accessory reported as reachable %@", &v17, 0xCu);
  }

  if (![(UARPController *)self createUploader])
  {
    goto LABEL_12;
  }

  if (v7)
  {
    v9 = [v7 reachable];
    v10 = self->_controllerLog;
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v9)
    {
      if (v11)
      {
        v17 = 138412290;
        v18 = v7;
        _os_log_impl(&dword_247AA7000, v10, OS_LOG_TYPE_INFO, "Accessory is already reachable %@", &v17, 0xCu);
      }

      goto LABEL_11;
    }

    if (v11)
    {
      v17 = 138412290;
      v18 = v7;
      _os_log_impl(&dword_247AA7000, v10, OS_LOG_TYPE_INFO, "Accessory is newly reachable %@", &v17, 0xCu);
    }

    [v7 setReachable:1];
    if ([(UARPUploader *)self->_uploader accessoryReachable:v4 error:0])
    {
      goto LABEL_11;
    }

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

LABEL_11:
  powerLogManager = self->_powerLogManager;
  v13 = [v4 getID];
  [(UARPPowerLogManager *)powerLogManager setAccessoryIDReachable:v13];

  v14 = 1;
LABEL_13:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)accessoryReachable:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__UARPController_accessoryReachable___block_invoke;
  block[3] = &unk_278EC2850;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

uint64_t __37__UARPController_accessoryReachable___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) accessoryReachableInternal:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)accessoryUnreachableInternal:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  accessories = self->_accessories;
  v6 = [v4 getID];
  v7 = [(NSMutableDictionary *)accessories objectForKeyedSubscript:v6];

  controllerLog = self->_controllerLog;
  if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v37 = v4;
    _os_log_impl(&dword_247AA7000, controllerLog, OS_LOG_TYPE_INFO, "Accessory reported as unreachable %@", buf, 0xCu);
  }

  if (!v7)
  {
    goto LABEL_20;
  }

  v9 = [v7 reachable];
  v10 = self->_controllerLog;
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (!v9)
  {
    if (v11)
    {
      *buf = 138412290;
      v37 = v7;
      v24 = 1;
      _os_log_impl(&dword_247AA7000, v10, OS_LOG_TYPE_INFO, "Accessory is already unreachable %@", buf, 0xCu);
    }

    else
    {
      v24 = 1;
    }

    goto LABEL_24;
  }

  if (v11)
  {
    *buf = 138412290;
    v37 = v7;
    _os_log_impl(&dword_247AA7000, v10, OS_LOG_TYPE_INFO, "Accessory is newly unreachable %@", buf, 0xCu);
  }

  if (![(UARPUploader *)self->_uploader accessoryUnreachable:v4 error:0])
  {
LABEL_20:
    v24 = 0;
    goto LABEL_24;
  }

  v31 = v4;
  [v7 setReachable:0];
  v12 = [v7 pendingAssets];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v33;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        v18 = [v17 id];
        v19 = [v7 getID];
        v20 = [v18 isStagingInProgressOnAccessoryID:v19];

        if (v20)
        {
          v21 = self->_controllerLog;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v37 = v17;
            v38 = 2112;
            v39 = v7;
            _os_log_impl(&dword_247AA7000, v21, OS_LOG_TYPE_DEFAULT, "Asset %@ not being staged anymore on %@", buf, 0x16u);
          }

          v22 = [v17 id];
          v23 = [v7 getID];
          [v22 stagingCompleteOnAccessoryID:v23];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v14);
  }

  v24 = 1;
  v4 = v31;
LABEL_24:
  updateFirmwareAnalytics = self->_updateFirmwareAnalytics;
  v26 = [v4 getID];
  [(UARPAnalyticsUpdateFirmwareManager *)updateFirmwareAnalytics setAccessoryIDUnreachable:v26];

  powerLogManager = self->_powerLogManager;
  v28 = [v4 getID];
  [(UARPPowerLogManager *)powerLogManager setAccessoryIDUnreachable:v28];

  v29 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BOOL)accessoryUnreachable:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__UARPController_accessoryUnreachable___block_invoke;
  block[3] = &unk_278EC2850;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

uint64_t __39__UARPController_accessoryUnreachable___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) accessoryUnreachableInternal:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (NSArray)accessoryList
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__UARPController_accessoryList__block_invoke;
  v5[3] = &unk_278EC2878;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __31__UARPController_accessoryList__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 8) allValues];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)stageFirmwareUpdateOnAccessoryList:(id)a3 withUserIntent:(BOOL)a4
{
  v6 = a3;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__UARPController_stageFirmwareUpdateOnAccessoryList_withUserIntent___block_invoke;
  block[3] = &unk_278EC28A0;
  v11 = v6;
  v12 = self;
  v13 = a4;
  v8 = v6;
  dispatch_sync(internalQueue, block);

  return 1;
}

void __68__UARPController_stageFirmwareUpdateOnAccessoryList_withUserIntent___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = *(a1 + 32);
  v29 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v29)
  {
    v28 = *v39;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v39 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v38 + 1) + 8 * i);
        v4 = *(*(a1 + 40) + 32);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v43 = v3;
          _os_log_impl(&dword_247AA7000, v4, OS_LOG_TYPE_INFO, "stage assets for accessory %@", buf, 0xCu);
        }

        v5 = [v3 pendingAssets];
        if ([v5 count])
        {
          v30 = v5;
          v31 = i;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v33 = v5;
          v6 = [v33 countByEnumeratingWithState:&v34 objects:v46 count:16];
          if (v6)
          {
            v7 = v6;
            v8 = *v35;
            do
            {
              v9 = 0;
              v32 = v7;
              do
              {
                if (*v35 != v8)
                {
                  objc_enumerationMutation(v33);
                }

                v10 = *(*(&v34 + 1) + 8 * v9);
                v11 = [v10 id];
                v12 = [v3 getID];
                v13 = [v11 isStagingInProgressOnAccessoryID:v12];

                v14 = *(*(a1 + 40) + 32);
                if (v13)
                {
                  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v43 = v10;
                    v44 = 2112;
                    v45 = v3;
                    _os_log_impl(&dword_247AA7000, v14, OS_LOG_TYPE_DEFAULT, "Asset %@ already being staged on accessory %@", buf, 0x16u);
                  }
                }

                else
                {
                  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412546;
                    v43 = v10;
                    v44 = 2112;
                    v45 = v3;
                    _os_log_impl(&dword_247AA7000, v14, OS_LOG_TYPE_INFO, "staging %@ for accessory %@", buf, 0x16u);
                  }

                  [v3 setFirmwareUpdateBytesTotal:{objc_msgSend(v10, "fileLength")}];
                  v15 = [v10 id];
                  v16 = [v3 getID];
                  [v15 stagingStartedOnAccessoryID:v16];

                  v17 = *(*(a1 + 40) + 88);
                  v18 = [v3 getID];
                  v19 = [v10 id];
                  [v17 stagingStartedForAccessoryID:v18 assetID:v19 userIntent:*(a1 + 48)];

                  v20 = *(*(a1 + 40) + 144);
                  v21 = [v3 getID];
                  v22 = [v10 id];
                  v23 = [v22 assetVersion];
                  v24 = [v3 firmwareVersion];
                  [v20 setAssetOfferedForAccessoryID:v21 offeredFirmwareVersion:v23 activeFirmwareVersion:v24];

                  [*(*(a1 + 40) + 64) offerAssetToAccessory:v3 asset:v10 error:0];
                  v7 = v32;
                }

                ++v9;
              }

              while (v7 != v9);
              v7 = [v33 countByEnumeratingWithState:&v34 objects:v46 count:16];
            }

            while (v7);
          }

          v5 = v30;
          i = v31;
        }

        else
        {
          v25 = *(*(a1 + 40) + 32);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v43 = v3;
            _os_log_impl(&dword_247AA7000, v25, OS_LOG_TYPE_INFO, "no assets to stage for accessory %@", buf, 0xCu);
          }
        }
      }

      v29 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v29);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)applyStagedFirmwareOnAccessoryList:(id)a3 withUserIntent:(BOOL)a4
{
  v5 = a3;
  internalQueue = self->_internalQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__UARPController_applyStagedFirmwareOnAccessoryList_withUserIntent___block_invoke;
  v9[3] = &unk_278EC1140;
  v10 = v5;
  v11 = self;
  v7 = v5;
  dispatch_sync(internalQueue, v9);

  return 1;
}

void __68__UARPController_applyStagedFirmwareOnAccessoryList_withUserIntent___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
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

        [*(*(a1 + 40) + 64) applyStagedAssetsForAccessory:*(*(&v8 + 1) + 8 * v6++) error:{0, v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)rescindStagedFirmwareOnAccessoryList:(id)a3 withUserIntent:(BOOL)a4
{
  v5 = a3;
  internalQueue = self->_internalQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__UARPController_rescindStagedFirmwareOnAccessoryList_withUserIntent___block_invoke;
  v9[3] = &unk_278EC1140;
  v10 = v5;
  v11 = self;
  v7 = v5;
  dispatch_sync(internalQueue, v9);

  return 1;
}

void __70__UARPController_rescindStagedFirmwareOnAccessoryList_withUserIntent___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
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

        [*(*(a1 + 40) + 64) rescindStagedAssetsForAccessory:*(*(&v8 + 1) + 8 * v6++) error:{0, v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)cancelFirmwareStagingForAccessory:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  internalQueue = self->_internalQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__UARPController_cancelFirmwareStagingForAccessory_assetID___block_invoke;
  v12[3] = &unk_278EC28C8;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v15 = &v16;
  v9 = v7;
  v10 = v6;
  dispatch_sync(internalQueue, v12);
  LOBYTE(internalQueue) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return internalQueue;
}

void __60__UARPController_cancelFirmwareStagingForAccessory_assetID___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) pendingAssetForAccessory:*(a1 + 40) assetID:*(a1 + 48)];
  v4 = *(v2 - 1);
  if (v3)
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(v4 + 64) cancelAssetStagingForAccessory:*(a1 + 40) asset:v3];
  }

  else if (os_log_type_enabled(*(v4 + 32), OS_LOG_TYPE_ERROR))
  {
    __60__UARPController_cancelFirmwareStagingForAccessory_assetID___block_invoke_cold_1(v2);
  }
}

- (BOOL)recvDataFromAccessory:(id)a3 data:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([v9 length])
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__4;
    v22 = __Block_byref_object_dispose__4;
    v23 = 0;
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__UARPController_recvDataFromAccessory_data_error___block_invoke;
    block[3] = &unk_278EC28F0;
    v16 = &v24;
    block[4] = self;
    v14 = v8;
    v15 = v9;
    v17 = &v18;
    dispatch_sync(internalQueue, block);
    if (a5)
    {
      *a5 = v19[5];
    }

    v11 = *(v25 + 24);

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    if (os_log_type_enabled(self->_controllerLog, OS_LOG_TYPE_ERROR))
    {
      [UARPController recvDataFromAccessory:data:error:];
    }

    v11 = 0;
  }

  return v11 & 1;
}

void __51__UARPController_recvDataFromAccessory_data_error___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 64);
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v3 recvDataFromAccessory:v2 data:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[7] + 8) + 24) = v6;
  v7 = a1[6];
  if (*(*(a1[7] + 8) + 24))
  {
    v8 = 0;
  }

  else
  {
    v8 = 11;
  }

  v9 = a1[5];
  v10 = *(a1[4] + 96);
  v11 = [v9 getID];
  [v10 dump:v7 accessoryID:v11 uarpStatus:v8 direction:1];
}

- (BOOL)accessoryKnown:(id)a3
{
  accessories = self->_accessories;
  v4 = [a3 getID];
  v5 = [(NSMutableDictionary *)accessories objectForKeyedSubscript:v4];
  LOBYTE(accessories) = v5 != 0;

  return accessories;
}

- (BOOL)accessoryIDKnown:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_accessories objectForKeyedSubscript:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)updatePendingAssetsForAccessory:(id)a3 assetID:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 localURL];
  if (!v8 || [v7 downloadStatus] != 1)
  {
    goto LABEL_21;
  }

  v9 = [v7 updateAvailabilityStatus];

  if (v9 == 3)
  {
    v8 = [(UARPController *)self pendingAssetForAccessory:v6 assetID:v7];
    if (v8)
    {
      xpcLog = self->_xpcLog;
      if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 136315394;
        v25 = "[UARPController updatePendingAssetsForAccessory:assetID:]";
        v26 = 2112;
        v27 = v7;
        _os_log_impl(&dword_247AA7000, xpcLog, OS_LOG_TYPE_DEFAULT, "%s: AssetID %@ already present in accessory's pending list", &v24, 0x16u);
      }

      goto LABEL_21;
    }

    v11 = [(NSCache *)self->_assetCache objectForKey:v7];
    if (!v11)
    {
      v12 = [(UARPControllerInternalDelegate *)self->_internalDelegate getSandboxExtensionTokenForAssetID:v7];
      v13 = [UARPAsset alloc];
      if (v12)
      {
        v14 = [(UARPAsset *)v13 initWithID:v7 sandboxToken:v12];
      }

      else
      {
        v14 = [(UARPAsset *)v13 initWithID:v7];
      }

      v11 = v14;
      if (!v14)
      {
        v23 = self->_xpcLog;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [UARPController updatePendingAssetsForAccessory:v23 assetID:?];
        }

        goto LABEL_20;
      }

      [(NSCache *)self->_assetCache setObject:v14 forKey:v7];
    }

    v15 = self->_xpcLog;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [v6 pendingAssets];
      v24 = 136315650;
      v25 = "[UARPController updatePendingAssetsForAccessory:assetID:]";
      v26 = 2112;
      v27 = v6;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_247AA7000, v16, OS_LOG_TYPE_DEFAULT, "%s: Current PendingAssetList for %@: %@", &v24, 0x20u);
    }

    v18 = self->_xpcLog;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315394;
      v25 = "[UARPController updatePendingAssetsForAccessory:assetID:]";
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&dword_247AA7000, v18, OS_LOG_TYPE_DEFAULT, "%s: Adding Asset %@", &v24, 0x16u);
    }

    [v6 addPendingAsset:v11];
    v19 = self->_xpcLog;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = [v6 pendingAssets];
      v24 = 136315650;
      v25 = "[UARPController updatePendingAssetsForAccessory:assetID:]";
      v26 = 2112;
      v27 = v6;
      v28 = 2112;
      v29 = v21;
      _os_log_impl(&dword_247AA7000, v20, OS_LOG_TYPE_DEFAULT, "%s: Updated PendingAssetList for %@: %@", &v24, 0x20u);
    }

    v12 = v11;
LABEL_20:

LABEL_21:
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)pendingAssetForAccessory:(id)a3 assetID:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v34 = "[UARPController pendingAssetForAccessory:assetID:]";
    v35 = 2112;
    v36 = v7;
    _os_log_impl(&dword_247AA7000, xpcLog, OS_LOG_TYPE_DEFAULT, "%s: Looking for matching asset on pending queue for asset %@", buf, 0x16u);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [v6 pendingAssets];
  v9 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v27 = v6;
    v11 = *v30;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        v14 = [v13 id];
        v15 = [v14 firmwareHash];
        v16 = [v7 firmwareHash];
        v17 = [v15 isEqualToString:v16];

        v18 = self->_xpcLog;
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        if (v17)
        {
          if (v19)
          {
            v23 = v18;
            v24 = [v13 id];
            *buf = 136315650;
            v34 = "[UARPController pendingAssetForAccessory:assetID:]";
            v35 = 2112;
            v36 = v24;
            v37 = 2112;
            v38 = v7;
            _os_log_impl(&dword_247AA7000, v23, OS_LOG_TYPE_DEFAULT, "%s: Assets matched %@ and %@", buf, 0x20u);
          }

          v22 = v13;
          goto LABEL_17;
        }

        if (v19)
        {
          v20 = v18;
          v21 = [v13 id];
          *buf = 136315650;
          v34 = "[UARPController pendingAssetForAccessory:assetID:]";
          v35 = 2112;
          v36 = v21;
          v37 = 2112;
          v38 = v7;
          _os_log_impl(&dword_247AA7000, v20, OS_LOG_TYPE_DEFAULT, "%s: Assets NOT matched %@ and %@", buf, 0x20u);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    v22 = 0;
LABEL_17:
    v6 = v27;
  }

  else
  {
    v22 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v22;
}

- (void)firmwareStagingComplete:(id)a3 assetID:(id)a4 withStatus:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 getID];
  [v9 stagingCompleteOnAccessoryID:v10];

  v11 = [(UARPController *)self pendingAssetForAccessory:v8 assetID:v9];
  if (v11)
  {
    [v8 removePendingAsset:v11];
  }

  if (([v9 isDynamicAsset] & 1) == 0)
  {
    updateFirmwareAnalytics = self->_updateFirmwareAnalytics;
    v13 = [v8 getID];
    [(UARPAnalyticsUpdateFirmwareManager *)updateFirmwareAnalytics stagingCompleteForAccessoryID:v13 assetID:v9 status:a5];

    powerLogManager = self->_powerLogManager;
    v15 = [v8 getID];
    v16 = [v9 assetVersion];
    v17 = [v8 firmwareVersion];
    [(UARPPowerLogManager *)powerLogManager setStagingCompleteForAccessoryID:v15 stagedFirmwareVersion:v16 activeFirmareVersion:v17 status:a5];

    if (self->_isInternalBuild)
    {
      internalDelegate = self->_internalDelegate;
      v19 = [v8 getID];
      [(UARPControllerInternalDelegate *)internalDelegate stagingCompleteForAccessoryID:v19 assetID:v9 status:a5];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v21 = [v9 reportProgressToDelegates];

    if (v21)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __61__UARPController_firmwareStagingComplete_assetID_withStatus___block_invoke;
      block[3] = &unk_278EC2918;
      block[4] = self;
      v31 = v8;
      v32 = v9;
      v33 = a5;
      dispatch_async(delegateQueue, block);
    }
  }

  else
  {
  }

  v23 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v24 = [v9 reportProgressToDelegates];

    if (v24)
    {
      v25 = self->_delegateQueue;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __61__UARPController_firmwareStagingComplete_assetID_withStatus___block_invoke_2;
      v26[3] = &unk_278EC2918;
      v26[4] = self;
      v27 = v8;
      v28 = v9;
      v29 = a5;
      dispatch_async(v25, v26);
    }
  }

  else
  {
  }
}

void __61__UARPController_firmwareStagingComplete_assetID_withStatus___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained firmwareUpdateComplete:a1[5] assetID:a1[6] withStatus:a1[7]];
}

void __61__UARPController_firmwareStagingComplete_assetID_withStatus___block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained firmwareStagingComplete:a1[5] assetID:a1[6] withStatus:a1[7]];
}

- (void)stagedFirmwareApplicationComplete:(id)a3 withStatus:(unint64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__UARPController_stagedFirmwareApplicationComplete_withStatus___block_invoke;
    block[3] = &unk_278EC2530;
    block[4] = self;
    v11 = v6;
    v12 = a4;
    dispatch_async(delegateQueue, block);
  }
}

void __63__UARPController_stagedFirmwareApplicationComplete_withStatus___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained stagedFirmwareApplicationComplete:a1[5] withStatus:a1[6]];
}

- (void)stagedFirmwareRescindComplete:(id)a3 withStatus:(unint64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__UARPController_stagedFirmwareRescindComplete_withStatus___block_invoke;
    block[3] = &unk_278EC2530;
    block[4] = self;
    v11 = v6;
    v12 = a4;
    dispatch_async(delegateQueue, block);
  }
}

void __59__UARPController_stagedFirmwareRescindComplete_withStatus___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained stagedFirmwareRescindComplete:a1[5] withStatus:a1[6]];
}

- (BOOL)updateProperty:(unint64_t)a3 value:(id)a4 forAccessory:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  v11 = 0;
  if (a3 > 4)
  {
    if (a3 > 11)
    {
      switch(a3)
      {
        case 0xCuLL:
          [v9 setHwFusingType:v8];
          break;
        case 0xDuLL:
          [v9 setFriendlyName:v8];
          break;
        case 0x23uLL:
          break;
        default:
          goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (a3 != 5)
    {
      if (a3 == 7)
      {
        [v9 setProductGroup:v8];
        goto LABEL_26;
      }

      if (a3 == 8)
      {
        [v9 setProductNumber:v8];
LABEL_26:
        v11 = [(UARPControllerInternalDelegate *)self->_internalDelegate updateProperty:a3 value:v8 forAccessory:v10];
        goto LABEL_27;
      }

      goto LABEL_27;
    }

    [v9 setStagedFirmwareVersion:v8];
    powerLogManager = self->_powerLogManager;
    v13 = [v10 getID];
    [(UARPPowerLogManager *)powerLogManager setStagedFirmwareVersionForAccessoryID:v13 stagedFirmwareVersion:v8];
LABEL_24:

    goto LABEL_26;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      [v9 setSerialNumber:v8];
      goto LABEL_26;
    }

    if (a3 == 3)
    {
      [v9 setHwRevision:v8];
      goto LABEL_26;
    }

    [v9 setFirmwareVersion:v8];
    v12 = self->_powerLogManager;
    v13 = [v10 getID];
    [(UARPPowerLogManager *)v12 setActiveFirmwareVersionForAccessoryID:v13 activeFirmwareVersion:v8];
    goto LABEL_24;
  }

  if (!a3)
  {
    [v9 setManufacturer:v8];
    goto LABEL_26;
  }

  if (a3 == 1)
  {
    [v9 setModelName:v8];
    goto LABEL_26;
  }

LABEL_27:

  return v11;
}

- (void)sendMessageToAccessory:(id)a3 uarpMsg:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 length])
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3032000000;
    v12[3] = __Block_byref_object_copy__4;
    v12[4] = __Block_byref_object_dispose__4;
    v13 = [MEMORY[0x277CBEA90] dataWithData:v7];
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__UARPController_sendMessageToAccessory_uarpMsg___block_invoke;
    block[3] = &unk_278EC2480;
    block[4] = self;
    v10 = v6;
    v11 = v12;
    dispatch_async(delegateQueue, block);

    _Block_object_dispose(v12, 8);
  }

  else if (os_log_type_enabled(self->_controllerLog, OS_LOG_TYPE_ERROR))
  {
    [UARPController sendMessageToAccessory:uarpMsg:];
  }
}

void __49__UARPController_sendMessageToAccessory_uarpMsg___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  v3 = a1[5];
  v4 = *(*(a1[6] + 8) + 40);
  v15 = 0;
  v5 = [WeakRetained sendMessageToAccessory:v3 uarpMsg:v4 error:&v15];
  v6 = v15;

  if ((v5 & 1) == 0)
  {
    v7 = os_log_create("com.apple.accessoryupdater.uarp", "uploader");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __49__UARPController_sendMessageToAccessory_uarpMsg___block_invoke_cold_1(a1 + 5);
    }
  }

  v8 = a1[4];
  v9 = *(v8 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__UARPController_sendMessageToAccessory_uarpMsg___block_invoke_24;
  block[3] = &unk_278EC2940;
  v14 = v5;
  block[4] = v8;
  v11 = *(a1 + 5);
  v10 = v11;
  v13 = v11;
  dispatch_async(v9, block);
}

void __49__UARPController_sendMessageToAccessory_uarpMsg___block_invoke_24(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v1 = 0;
  }

  else
  {
    v1 = 11;
  }

  v2 = *(*(a1 + 32) + 96);
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v4 = [*(a1 + 40) getID];
  [v2 dump:v3 accessoryID:v4 uarpStatus:v1 direction:0];
}

- (BOOL)startPacketCapture:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__UARPController_startPacketCapture___block_invoke;
  block[3] = &unk_278EC2480;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

void __37__UARPController_startPacketCapture___block_invoke(void *a1)
{
  if (!*(a1[4] + 96))
  {
    v2 = [[UARPPacketDumper alloc] initWithFileName:a1[5]];
    v3 = a1[4];
    v4 = *(v3 + 96);
    *(v3 + 96) = v2;

    *(*(a1[6] + 8) + 24) = *(a1[4] + 96) != 0;
  }
}

- (void)stopPacketCapture
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__UARPController_stopPacketCapture__block_invoke;
  block[3] = &unk_278EC1948;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

void __35__UARPController_stopPacketCapture__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 96);
  *(v1 + 96) = 0;
}

- (BOOL)solicitDynamicAsset:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v8 = [v7 localURL];

  if (v8)
  {
    internalQueue = self->_internalQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __46__UARPController_solicitDynamicAsset_assetID___block_invoke;
    v12[3] = &unk_278EC28C8;
    v12[4] = self;
    v13 = v6;
    v14 = v7;
    v15 = &v16;
    dispatch_sync(internalQueue, v12);
    v10 = *(v17 + 24);
  }

  else
  {
    if (os_log_type_enabled(self->_xpcLog, OS_LOG_TYPE_ERROR))
    {
      [UARPController solicitDynamicAsset:assetID:];
    }

    v10 = 0;
  }

  _Block_object_dispose(&v16, 8);

  return v10 & 1;
}

void __46__UARPController_solicitDynamicAsset_assetID___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) getID];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = (a1 + 48);
    v6 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 48)];
    if (v6)
    {
LABEL_5:
      *(*(*(a1 + 56) + 8) + 24) = [*(*(a1 + 32) + 64) solicitDynamicAssetForAccessory:*(a1 + 40) asset:v6 error:0];

      goto LABEL_6;
    }

    v7 = [[UARPAsset alloc] initWithID:*(a1 + 48)];
    v8 = *(a1 + 32);
    if (v7)
    {
      v6 = v7;
      [*(v8 + 16) setObject:v7 forKey:*v5];
      goto LABEL_5;
    }

    v9 = *(v8 + 24);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __46__UARPController_solicitDynamicAsset_assetID___block_invoke_cold_1(v5, v9);
    }
  }

LABEL_6:
}

- (void)assetSolicitationComplete:(id)a3 assetID:(id)a4 withStatus:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(UARPController *)self pendingAssetForAccessory:v8 assetID:v9];
  if (v10)
  {
    [v8 removePendingAsset:v10];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v12 = [v9 reportProgressToDelegates];

    if (v12)
    {
      delegateQueue = self->_delegateQueue;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __63__UARPController_assetSolicitationComplete_assetID_withStatus___block_invoke;
      v14[3] = &unk_278EC2918;
      v14[4] = self;
      v15 = v8;
      v16 = v9;
      v17 = a5;
      dispatch_async(delegateQueue, v14);
    }
  }

  else
  {
  }
}

void __63__UARPController_assetSolicitationComplete_assetID_withStatus___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained assetSolicitationComplete:a1[5] assetID:a1[6] withStatus:a1[7]];
}

- (BOOL)dynamicAssetAvailableForAccessory:(id)a3 assetID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__4;
  v24 = __Block_byref_object_dispose__4;
  v25 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__UARPController_dynamicAssetAvailableForAccessory_assetID_error___block_invoke;
  block[3] = &unk_278EC2968;
  block[4] = self;
  v11 = v8;
  v16 = v11;
  v12 = v9;
  v17 = v12;
  v18 = &v26;
  v19 = &v20;
  dispatch_sync(internalQueue, block);
  if (a5)
  {
    *a5 = v21[5];
  }

  v13 = *(v27 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

void __66__UARPController_dynamicAssetAvailableForAccessory_assetID_error___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) getID];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = (a1 + 48);
    v6 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 48)];
    if (v6)
    {
LABEL_5:
      v9 = *(a1 + 40);
      v10 = *(*(a1 + 32) + 64);
      v11 = *(*(a1 + 64) + 8);
      obj = *(v11 + 40);
      v12 = [v10 offerDynamicAssetToAccessory:v9 asset:v6 error:&obj];
      objc_storeStrong((v11 + 40), obj);
      *(*(*(a1 + 56) + 8) + 24) = v12;

      goto LABEL_6;
    }

    v7 = [[UARPAsset alloc] initWithID:*(a1 + 48)];
    v8 = *(a1 + 32);
    if (v7)
    {
      v6 = v7;
      [*(v8 + 16) setObject:v7 forKey:*v5];
      goto LABEL_5;
    }

    v13 = *(v8 + 24);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __66__UARPController_dynamicAssetAvailableForAccessory_assetID_error___block_invoke_cold_1(v5, v13);
    }
  }

LABEL_6:
}

- (BOOL)triggerUnsolicitedDynamicAsset:(id)a3 assetTag:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  internalQueue = self->_internalQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__UARPController_triggerUnsolicitedDynamicAsset_assetTag___block_invoke;
  v12[3] = &unk_278EC2990;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v15 = &v16;
  v9 = v7;
  v10 = v6;
  dispatch_sync(internalQueue, v12);
  LOBYTE(internalQueue) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return internalQueue;
}

void __58__UARPController_triggerUnsolicitedDynamicAsset_assetTag___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) getID];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(*(a1 + 32) + 64) unsolicitedDynamicAssetForAccessory:*(a1 + 40) assetTag:*(a1 + 48) error:0];
  }
}

- (void)assetAvailablityUpdateForAccessory:(id)a3 assetID:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v34 = "[UARPController assetAvailablityUpdateForAccessory:assetID:]";
    v35 = 2112;
    v36 = v6;
    v37 = 2112;
    v38 = v7;
    _os_log_impl(&dword_247AA7000, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@ %@", buf, 0x20u);
  }

  v9 = [v7 assetVersion];
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = v9;
  v11 = [v6 stagedFirmwareVersion];

  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = [v6 stagedFirmwareVersion];
  v13 = [v7 assetVersion];
  v14 = uarpVersionCompareStrings(v12, v13);

  if (v14 != 1)
  {
    v23 = self->_xpcLog;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      v25 = [v7 assetVersion];
      v26 = [v6 stagedFirmwareVersion];
      *buf = 138412802;
      v34 = v25;
      v35 = 2112;
      v36 = v26;
      v37 = 2112;
      v38 = v6;
      _os_log_impl(&dword_247AA7000, v24, OS_LOG_TYPE_DEFAULT, "assetID assetVersion %@ is not greater than staged version %@ for accessory %@", buf, 0x20u);
    }
  }

  else
  {
LABEL_6:
    v15 = [v7 assetVersion];
    [v6 setAvailableFirmwareVersion:v15];

    [(UARPController *)self updatePendingAssetsForAccessory:v6 assetID:v7];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __61__UARPController_assetAvailablityUpdateForAccessory_assetID___block_invoke;
      block[3] = &unk_278EC29B8;
      block[4] = self;
      v31 = v6;
      v32 = v7;
      dispatch_async(delegateQueue, block);
    }

    v19 = objc_loadWeakRetained(&self->_delegate);
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      v21 = self->_delegateQueue;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __61__UARPController_assetAvailablityUpdateForAccessory_assetID___block_invoke_2;
      v27[3] = &unk_278EC29B8;
      v27[4] = self;
      v28 = v6;
      v29 = v7;
      dispatch_async(v21, v27);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __61__UARPController_assetAvailablityUpdateForAccessory_assetID___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained assetAvailablityUpdateForAccessory:a1[5] assetID:a1[6]];
}

void __61__UARPController_assetAvailablityUpdateForAccessory_assetID___block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained assetAvailablityUpdateForAccessoryID:a1[5] assetID:a1[6]];
}

- (void)assetAvailablityUpdateForAccessoryID:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__UARPController_assetAvailablityUpdateForAccessoryID_assetID___block_invoke;
  block[3] = &unk_278EC29B8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(internalQueue, block);
}

void __63__UARPController_assetAvailablityUpdateForAccessoryID_assetID___block_invoke(void *a1)
{
  v2 = a1 + 5;
  v3 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v4 = *(v2 - 1);
  if (v3)
  {
    [(os_log_t *)v4 assetAvailablityUpdateForAccessory:v3 assetID:a1[6]];
  }

  else if (os_log_type_enabled(v4[3], OS_LOG_TYPE_ERROR))
  {
    __63__UARPController_assetAvailablityUpdateForAccessoryID_assetID___block_invoke_cold_1(v2);
  }
}

- (void)supplementalAssetAvailablityUpdateForAccessory:(id)a3 assetName:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v17 = "[UARPController supplementalAssetAvailablityUpdateForAccessory:assetName:]";
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_247AA7000, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@ %@", buf, 0x20u);
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__UARPController_supplementalAssetAvailablityUpdateForAccessory_assetName___block_invoke;
  block[3] = &unk_278EC29B8;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(internalQueue, block);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)supplementalAssetAvailablityUpdateForAccessoryID:(id)a3 assetName:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__UARPController_supplementalAssetAvailablityUpdateForAccessoryID_assetName___block_invoke;
  block[3] = &unk_278EC29B8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(internalQueue, block);
}

void __77__UARPController_supplementalAssetAvailablityUpdateForAccessoryID_assetName___block_invoke(void *a1)
{
  v2 = a1 + 5;
  v3 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v4 = *(v2 - 1);
  if (v3)
  {
    [(os_log_t *)v4 supplementalAssetAvailablityUpdateForAccessory:v3 assetName:a1[6]];
  }

  else if (os_log_type_enabled(v4[3], OS_LOG_TYPE_ERROR))
  {
    __77__UARPController_supplementalAssetAvailablityUpdateForAccessoryID_assetName___block_invoke_cold_1(v2);
  }
}

- (void)supportedAccessories:(id)a3 forProductGroup:(id)a4 isComplete:(BOOL)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      v15 = 0;
      do
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(UARPController *)self createSupportedAccessory:v9 accessoryMetadata:*(*(&v25 + 1) + 8 * v15)];
        if (v16)
        {
          [v10 addObject:v16];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  if (![v10 count])
  {

    v10 = 0;
  }

  delegateQueue = self->_delegateQueue;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __66__UARPController_supportedAccessories_forProductGroup_isComplete___block_invoke;
  v21[3] = &unk_278EC29E0;
  v21[4] = self;
  v22 = v10;
  v23 = v9;
  v24 = a5;
  v18 = v9;
  v19 = v10;
  dispatch_async(delegateQueue, v21);

  v20 = *MEMORY[0x277D85DE8];
}

void __66__UARPController_supportedAccessories_forProductGroup_isComplete___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 168));
  v3 = objc_opt_respondsToSelector();

  v4 = objc_loadWeakRetained((*(a1 + 32) + 168));
  v7 = v4;
  if (v3)
  {
    [v4 supportedAccessories:*(a1 + 40) forProductGroup:*(a1 + 48) isComplete:*(a1 + 56)];
LABEL_5:

    return;
  }

  v5 = objc_opt_respondsToSelector();

  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = objc_loadWeakRetained((v6 + 168));
    [v7 supportedAccessories:*(a1 + 40) forProductGroup:*(a1 + 48)];
    goto LABEL_5;
  }

  if (os_log_type_enabled(*(v6 + 24), OS_LOG_TYPE_ERROR))
  {
    __66__UARPController_supportedAccessories_forProductGroup_isComplete___block_invoke_cold_1();
  }
}

- (void)handleReceivedAttestationCertificates:(id)a3 forSubjectKeyIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__UARPController_handleReceivedAttestationCertificates_forSubjectKeyIdentifier___block_invoke;
  block[3] = &unk_278EC29B8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(delegateQueue, block);
}

void __80__UARPController_handleReceivedAttestationCertificates_forSubjectKeyIdentifier___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained attestationCertificates:a1[5] forSubjectKeyIdentifier:a1[6]];
}

- (id)createSupportedAccessory:(id)a3 accessoryMetadata:(id)a4
{
  v4 = a4;
  if ([v4 accessoryCapability] == 16)
  {
    v5 = [UARPAccessoryHardwareCHIP alloc];
    v6 = [v4 productGroup];
    v7 = [v6 integerValue];
    v8 = [v4 productNumber];
    v9 = -[UARPAccessoryHardwareCHIP initWithVendorID:productID:hardwareID:metadata:](v5, "initWithVendorID:productID:hardwareID:metadata:", v7, [v8 integerValue], 0, v4);

    v10 = [UARPSupportedAccessory alloc];
    v11 = [v4 productGroup];
    v12 = [v4 productNumber];
    v13 = -[UARPSupportedAccessory initWithHardwareID:productGroup:productNumber:capabilities:](v10, "initWithHardwareID:productGroup:productNumber:capabilities:", v9, v11, v12, [v4 accessoryCapability]);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)queryFirmwareUpdateResultForAccessory:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__UARPController_queryFirmwareUpdateResultForAccessory___block_invoke;
  v7[3] = &unk_278EC1140;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (int64_t)queryProperty:(unint64_t)a3 forAccessory:(id)a4
{
  v6 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  internalQueue = self->_internalQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__UARPController_queryProperty_forAccessory___block_invoke;
  v11[3] = &unk_278EC2A08;
  v13 = &v15;
  v14 = a3;
  v11[4] = self;
  v12 = v6;
  v8 = v6;
  dispatch_sync(internalQueue, v11);
  v9 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v9;
}

uint64_t __45__UARPController_queryProperty_forAccessory___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) queryPropertyInternal:*(a1 + 56) forAccessory:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 56);

    return [v3 addPendingClientPropertyQuery:v4];
  }

  return result;
}

- (void)firmwareUpdateResult:(id)a3 vendorSpecificStatus:(unsigned int)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  delegateQueue = self->_delegateQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__UARPController_firmwareUpdateResult_vendorSpecificStatus_error___block_invoke;
  v13[3] = &unk_278EC2A30;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(delegateQueue, v13);
}

void __66__UARPController_firmwareUpdateResult_vendorSpecificStatus_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 168));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 168));
    [v4 firmwareUpdateResult:*(a1 + 40) vendorSpecificStatus:*(a1 + 56) error:*(a1 + 48)];
  }
}

- (void)queryCompleteForAccessory:(id)a3 manufacturer:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(UARPController *)self updateProperty:0 value:v9 forAccessory:v8];
  if ([v8 clientQueryPendingForProperty:0])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegateQueue = self->_delegateQueue;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __63__UARPController_queryCompleteForAccessory_manufacturer_error___block_invoke;
      v18 = &unk_278EC2A58;
      v19 = self;
      v14 = v8;
      v20 = v14;
      v21 = v9;
      v22 = v10;
      dispatch_async(delegateQueue, &v15);
      [v14 removePendingClientPropertyQuery:{0, v15, v16, v17, v18, v19}];
    }
  }
}

void __63__UARPController_queryCompleteForAccessory_manufacturer_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] manufacturer:a1[6] error:a1[7]];
}

- (void)queryCompleteForAccessory:(id)a3 modelName:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(UARPController *)self updateProperty:1 value:v9 forAccessory:v8];
  if ([v8 clientQueryPendingForProperty:1])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegateQueue = self->_delegateQueue;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __60__UARPController_queryCompleteForAccessory_modelName_error___block_invoke;
      v18 = &unk_278EC2A58;
      v19 = self;
      v14 = v8;
      v20 = v14;
      v21 = v9;
      v22 = v10;
      dispatch_async(delegateQueue, &v15);
      [v14 removePendingClientPropertyQuery:{1, v15, v16, v17, v18, v19}];
    }
  }
}

void __60__UARPController_queryCompleteForAccessory_modelName_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] modelName:a1[6] error:a1[7]];
}

- (void)queryCompleteForAccessory:(id)a3 firmwareVersion:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(UARPController *)self updateProperty:4 value:v9 forAccessory:v8];
  if ([v8 clientQueryPendingForProperty:4])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegateQueue = self->_delegateQueue;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __66__UARPController_queryCompleteForAccessory_firmwareVersion_error___block_invoke;
      v18 = &unk_278EC2A58;
      v19 = self;
      v14 = v8;
      v20 = v14;
      v21 = v9;
      v22 = v10;
      dispatch_async(delegateQueue, &v15);
      [v14 removePendingClientPropertyQuery:{4, v15, v16, v17, v18, v19}];
    }
  }
}

void __66__UARPController_queryCompleteForAccessory_firmwareVersion_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] firmwareVersion:a1[6] error:a1[7]];
}

- (void)queryCompleteForAccessory:(id)a3 stagedFirmwareVersion:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(UARPController *)self updateProperty:5 value:v9 forAccessory:v8];
  if ([v8 clientQueryPendingForProperty:5])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegateQueue = self->_delegateQueue;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __72__UARPController_queryCompleteForAccessory_stagedFirmwareVersion_error___block_invoke;
      v18 = &unk_278EC2A58;
      v19 = self;
      v14 = v8;
      v20 = v14;
      v21 = v9;
      v22 = v10;
      dispatch_async(delegateQueue, &v15);
      [v14 removePendingClientPropertyQuery:{5, v15, v16, v17, v18, v19}];
    }
  }
}

void __72__UARPController_queryCompleteForAccessory_stagedFirmwareVersion_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] stagedFirmwareVersion:a1[6] error:a1[7]];
}

- (void)queryCompleteForAccessory:(id)a3 stats:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 clientQueryPendingForProperty:6])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegateQueue = self->_delegateQueue;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __56__UARPController_queryCompleteForAccessory_stats_error___block_invoke;
      v18 = &unk_278EC2A58;
      v19 = self;
      v14 = v8;
      v20 = v14;
      v21 = v9;
      v22 = v10;
      dispatch_async(delegateQueue, &v15);
      [v14 removePendingClientPropertyQuery:{6, v15, v16, v17, v18, v19}];
    }
  }
}

void __56__UARPController_queryCompleteForAccessory_stats_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] stats:a1[6] error:a1[7]];
}

- (void)queryCompleteForAccessory:(id)a3 hardwareVersion:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(UARPController *)self updateProperty:3 value:v9 forAccessory:v8];
  if ([v8 clientQueryPendingForProperty:3])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegateQueue = self->_delegateQueue;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __66__UARPController_queryCompleteForAccessory_hardwareVersion_error___block_invoke;
      v18 = &unk_278EC2A58;
      v19 = self;
      v14 = v8;
      v20 = v14;
      v21 = v9;
      v22 = v10;
      dispatch_async(delegateQueue, &v15);
      [v14 removePendingClientPropertyQuery:{3, v15, v16, v17, v18, v19}];
    }
  }
}

void __66__UARPController_queryCompleteForAccessory_hardwareVersion_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] hardwareVersion:a1[6] error:a1[7]];
}

- (void)queryCompleteForAccessory:(id)a3 serialNumber:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(UARPController *)self updateProperty:2 value:v9 forAccessory:v8];
  if ([v8 clientQueryPendingForProperty:2])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegateQueue = self->_delegateQueue;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __63__UARPController_queryCompleteForAccessory_serialNumber_error___block_invoke;
      v18 = &unk_278EC2A58;
      v19 = self;
      v14 = v8;
      v20 = v14;
      v21 = v9;
      v22 = v10;
      dispatch_async(delegateQueue, &v15);
      [v14 removePendingClientPropertyQuery:{2, v15, v16, v17, v18, v19}];
    }
  }
}

void __63__UARPController_queryCompleteForAccessory_serialNumber_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] serialNumber:a1[6] error:a1[7]];
}

- (void)queryCompleteForAccessory:(id)a3 appleModelNumber:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(UARPController *)self updateProperty:11 value:v9 forAccessory:v8];
  if ([v8 clientQueryPendingForProperty:11])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegateQueue = self->_delegateQueue;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __67__UARPController_queryCompleteForAccessory_appleModelNumber_error___block_invoke;
      v18 = &unk_278EC2A58;
      v19 = self;
      v14 = v8;
      v20 = v14;
      v21 = v9;
      v22 = v10;
      dispatch_async(delegateQueue, &v15);
      [v14 removePendingClientPropertyQuery:{11, v15, v16, v17, v18, v19}];
    }
  }
}

void __67__UARPController_queryCompleteForAccessory_appleModelNumber_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] appleModelNumber:a1[6] error:a1[7]];
}

- (void)queryCompleteForAccessory:(id)a3 hwFusingType:(id)a4 error:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 modelNumber];
  v12 = [UARPSupportedAccessory findByAppleModelNumber:v11];

  if (!self->_isInternalBuild && -[__CFString isEqualToString:](v9, "isEqualToString:", @"unfused") && ([v12 fusingOverrideUnfused], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    v14 = [v12 fusingOverrideUnfused];
    v15 = [v14 isEqualToString:@"dev"];

    if (v15)
    {
      v16 = @"dev";
    }

    else
    {
      v16 = @"prod";
    }

    xpcLog = self->_xpcLog;
    if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v32 = v8;
      v33 = 2114;
      v34 = v9;
      v35 = 2114;
      v36 = v16;
      _os_log_error_impl(&dword_247AA7000, xpcLog, OS_LOG_TYPE_ERROR, "Overriding hw fusing for %{public}@, from %{public}@ to %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v16 = v9;
  }

  [(UARPController *)self updateProperty:12 value:v16 forAccessory:v8];
  if ([v8 clientQueryPendingForProperty:12])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      delegateQueue = self->_delegateQueue;
      v23 = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __63__UARPController_queryCompleteForAccessory_hwFusingType_error___block_invoke;
      v26 = &unk_278EC2A58;
      v27 = self;
      v21 = v8;
      v28 = v21;
      v29 = v16;
      v30 = v10;
      dispatch_async(delegateQueue, &v23);
      [v21 removePendingClientPropertyQuery:{12, v23, v24, v25, v26, v27}];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __63__UARPController_queryCompleteForAccessory_hwFusingType_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] hwFusingType:a1[6] error:a1[7]];
}

- (void)queryCompleteForAccessory:(id)a3 friendlyName:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(UARPController *)self updateProperty:13 value:v9 forAccessory:v8];
  if ([v8 clientQueryPendingForProperty:13])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegateQueue = self->_delegateQueue;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __63__UARPController_queryCompleteForAccessory_friendlyName_error___block_invoke;
      v18 = &unk_278EC2A58;
      v19 = self;
      v14 = v8;
      v20 = v14;
      v21 = v9;
      v22 = v10;
      dispatch_async(delegateQueue, &v15);
      [v14 removePendingClientPropertyQuery:{13, v15, v16, v17, v18, v19}];
    }
  }
}

void __63__UARPController_queryCompleteForAccessory_friendlyName_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] friendlyName:a1[6] error:a1[7]];
}

- (void)queryCompleteForAccessory:(id)a3 manifestPrefix:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 clientQueryPendingForProperty:14])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__UARPController_queryCompleteForAccessory_manifestPrefix_error___block_invoke;
      block[3] = &unk_278EC2A58;
      block[4] = self;
      v14 = v8;
      v27 = v14;
      v28 = v9;
      v29 = v10;
      dispatch_async(delegateQueue, block);
      [v14 removePendingClientPropertyQuery:14];
    }
  }

  if ([v8 clientQueryPendingForProperty:14])
  {
    chipInfoDelegate = self->_chipInfoDelegate;
    if (objc_opt_respondsToSelector())
    {
      v16 = self->_delegateQueue;
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __65__UARPController_queryCompleteForAccessory_manifestPrefix_error___block_invoke_2;
      v21 = &unk_278EC2A58;
      v22 = self;
      v17 = v8;
      v23 = v17;
      v24 = v9;
      v25 = v10;
      dispatch_async(v16, &v18);
      [v17 removePendingClientPropertyQuery:{14, v18, v19, v20, v21, v22}];
    }
  }
}

void __65__UARPController_queryCompleteForAccessory_manifestPrefix_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] manifestPrefix:a1[6] error:a1[7]];
}

- (void)queryCompleteForAccessory:(id)a3 boardID:(unint64_t)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 clientQueryPendingForProperty:15])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__UARPController_queryCompleteForAccessory_boardID_error___block_invoke;
      block[3] = &unk_278EC2918;
      block[4] = self;
      v13 = v8;
      v26 = v13;
      v28 = a4;
      v27 = v9;
      dispatch_async(delegateQueue, block);
      [v13 removePendingClientPropertyQuery:15];
    }
  }

  if ([v8 clientQueryPendingForProperty:15])
  {
    chipInfoDelegate = self->_chipInfoDelegate;
    if (objc_opt_respondsToSelector())
    {
      v15 = self->_delegateQueue;
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __58__UARPController_queryCompleteForAccessory_boardID_error___block_invoke_2;
      v20 = &unk_278EC2918;
      v21 = self;
      v16 = v8;
      v22 = v16;
      v24 = a4;
      v23 = v9;
      dispatch_async(v15, &v17);
      [v16 removePendingClientPropertyQuery:{15, v17, v18, v19, v20, v21}];
    }
  }
}

void __58__UARPController_queryCompleteForAccessory_boardID_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] boardID:a1[7] error:a1[6]];
}

- (void)queryCompleteForAccessory:(id)a3 chipID:(unint64_t)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 clientQueryPendingForProperty:16])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__UARPController_queryCompleteForAccessory_chipID_error___block_invoke;
      block[3] = &unk_278EC2918;
      block[4] = self;
      v13 = v8;
      v26 = v13;
      v28 = a4;
      v27 = v9;
      dispatch_async(delegateQueue, block);
      [v13 removePendingClientPropertyQuery:16];
    }
  }

  if ([v8 clientQueryPendingForProperty:16])
  {
    chipInfoDelegate = self->_chipInfoDelegate;
    if (objc_opt_respondsToSelector())
    {
      v15 = self->_delegateQueue;
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __57__UARPController_queryCompleteForAccessory_chipID_error___block_invoke_2;
      v20 = &unk_278EC2918;
      v21 = self;
      v16 = v8;
      v22 = v16;
      v24 = a4;
      v23 = v9;
      dispatch_async(v15, &v17);
      [v16 removePendingClientPropertyQuery:{16, v17, v18, v19, v20, v21}];
    }
  }
}

void __57__UARPController_queryCompleteForAccessory_chipID_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] chipID:a1[7] error:a1[6]];
}

- (void)queryCompleteForAccessory:(id)a3 chipRevision:(unint64_t)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 clientQueryPendingForProperty:17])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__UARPController_queryCompleteForAccessory_chipRevision_error___block_invoke;
      block[3] = &unk_278EC2918;
      block[4] = self;
      v13 = v8;
      v26 = v13;
      v28 = a4;
      v27 = v9;
      dispatch_async(delegateQueue, block);
      [v13 removePendingClientPropertyQuery:17];
    }
  }

  if ([v8 clientQueryPendingForProperty:17])
  {
    chipInfoDelegate = self->_chipInfoDelegate;
    if (objc_opt_respondsToSelector())
    {
      v15 = self->_delegateQueue;
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __63__UARPController_queryCompleteForAccessory_chipRevision_error___block_invoke_2;
      v20 = &unk_278EC2918;
      v21 = self;
      v16 = v8;
      v22 = v16;
      v24 = a4;
      v23 = v9;
      dispatch_async(v15, &v17);
      [v16 removePendingClientPropertyQuery:{17, v17, v18, v19, v20, v21}];
    }
  }
}

void __63__UARPController_queryCompleteForAccessory_chipRevision_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] chipRevision:a1[7] error:a1[6]];
}

- (void)queryCompleteForAccessory:(id)a3 ecid:(unint64_t)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 clientQueryPendingForProperty:18])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __55__UARPController_queryCompleteForAccessory_ecid_error___block_invoke;
      block[3] = &unk_278EC2918;
      block[4] = self;
      v13 = v8;
      v26 = v13;
      v28 = a4;
      v27 = v9;
      dispatch_async(delegateQueue, block);
      [v13 removePendingClientPropertyQuery:18];
    }
  }

  if ([v8 clientQueryPendingForProperty:18])
  {
    chipInfoDelegate = self->_chipInfoDelegate;
    if (objc_opt_respondsToSelector())
    {
      v15 = self->_delegateQueue;
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __55__UARPController_queryCompleteForAccessory_ecid_error___block_invoke_2;
      v20 = &unk_278EC2918;
      v21 = self;
      v16 = v8;
      v22 = v16;
      v24 = a4;
      v23 = v9;
      dispatch_async(v15, &v17);
      [v16 removePendingClientPropertyQuery:{18, v17, v18, v19, v20, v21}];
    }
  }
}

void __55__UARPController_queryCompleteForAccessory_ecid_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] ecid:a1[7] error:a1[6]];
}

- (void)queryCompleteForAccessory:(id)a3 securityDomain:(unint64_t)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 clientQueryPendingForProperty:19])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__UARPController_queryCompleteForAccessory_securityDomain_error___block_invoke;
      block[3] = &unk_278EC2918;
      block[4] = self;
      v13 = v8;
      v26 = v13;
      v28 = a4;
      v27 = v9;
      dispatch_async(delegateQueue, block);
      [v13 removePendingClientPropertyQuery:19];
    }
  }

  if ([v8 clientQueryPendingForProperty:19])
  {
    chipInfoDelegate = self->_chipInfoDelegate;
    if (objc_opt_respondsToSelector())
    {
      v15 = self->_delegateQueue;
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __65__UARPController_queryCompleteForAccessory_securityDomain_error___block_invoke_2;
      v20 = &unk_278EC2918;
      v21 = self;
      v16 = v8;
      v22 = v16;
      v24 = a4;
      v23 = v9;
      dispatch_async(v15, &v17);
      [v16 removePendingClientPropertyQuery:{19, v17, v18, v19, v20, v21}];
    }
  }
}

void __65__UARPController_queryCompleteForAccessory_securityDomain_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] securityDomain:a1[7] error:a1[6]];
}

- (void)queryCompleteForAccessory:(id)a3 securityMode:(unint64_t)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 clientQueryPendingForProperty:20])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__UARPController_queryCompleteForAccessory_securityMode_error___block_invoke;
      block[3] = &unk_278EC2918;
      block[4] = self;
      v13 = v8;
      v26 = v13;
      v28 = a4;
      v27 = v9;
      dispatch_async(delegateQueue, block);
      [v13 removePendingClientPropertyQuery:20];
    }
  }

  if ([v8 clientQueryPendingForProperty:20])
  {
    chipInfoDelegate = self->_chipInfoDelegate;
    if (objc_opt_respondsToSelector())
    {
      v15 = self->_delegateQueue;
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __63__UARPController_queryCompleteForAccessory_securityMode_error___block_invoke_2;
      v20 = &unk_278EC2918;
      v21 = self;
      v16 = v8;
      v22 = v16;
      v24 = a4;
      v23 = v9;
      dispatch_async(v15, &v17);
      [v16 removePendingClientPropertyQuery:{20, v17, v18, v19, v20, v21}];
    }
  }
}

void __63__UARPController_queryCompleteForAccessory_securityMode_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] securityMode:a1[7] error:a1[6]];
}

- (void)queryCompleteForAccessory:(id)a3 productionMode:(unint64_t)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 clientQueryPendingForProperty:21])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__UARPController_queryCompleteForAccessory_productionMode_error___block_invoke;
      block[3] = &unk_278EC2918;
      block[4] = self;
      v13 = v8;
      v26 = v13;
      v28 = a4;
      v27 = v9;
      dispatch_async(delegateQueue, block);
      [v13 removePendingClientPropertyQuery:21];
    }
  }

  if ([v8 clientQueryPendingForProperty:21])
  {
    chipInfoDelegate = self->_chipInfoDelegate;
    if (objc_opt_respondsToSelector())
    {
      v15 = self->_delegateQueue;
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __65__UARPController_queryCompleteForAccessory_productionMode_error___block_invoke_2;
      v20 = &unk_278EC2918;
      v21 = self;
      v16 = v8;
      v22 = v16;
      v24 = a4;
      v23 = v9;
      dispatch_async(v15, &v17);
      [v16 removePendingClientPropertyQuery:{21, v17, v18, v19, v20, v21}];
    }
  }
}

void __65__UARPController_queryCompleteForAccessory_productionMode_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] productionMode:a1[7] error:a1[6]];
}

- (void)queryCompleteForAccessory:(id)a3 epoch:(unint64_t)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 clientQueryPendingForProperty:22])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__UARPController_queryCompleteForAccessory_epoch_error___block_invoke;
      block[3] = &unk_278EC2918;
      block[4] = self;
      v13 = v8;
      v26 = v13;
      v28 = a4;
      v27 = v9;
      dispatch_async(delegateQueue, block);
      [v13 removePendingClientPropertyQuery:22];
    }
  }

  if ([v8 clientQueryPendingForProperty:22])
  {
    chipInfoDelegate = self->_chipInfoDelegate;
    if (objc_opt_respondsToSelector())
    {
      v15 = self->_delegateQueue;
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __56__UARPController_queryCompleteForAccessory_epoch_error___block_invoke_2;
      v20 = &unk_278EC2918;
      v21 = self;
      v16 = v8;
      v22 = v16;
      v24 = a4;
      v23 = v9;
      dispatch_async(v15, &v17);
      [v16 removePendingClientPropertyQuery:{22, v17, v18, v19, v20, v21}];
    }
  }
}

void __56__UARPController_queryCompleteForAccessory_epoch_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] epoch:a1[7] error:a1[6]];
}

- (void)queryCompleteForAccessory:(id)a3 enableMixMatch:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 clientQueryPendingForProperty:23])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__UARPController_queryCompleteForAccessory_enableMixMatch_error___block_invoke;
      block[3] = &unk_278EC29E0;
      block[4] = self;
      v13 = v8;
      v26 = v13;
      v28 = a4;
      v27 = v9;
      dispatch_async(delegateQueue, block);
      [v13 removePendingClientPropertyQuery:23];
    }
  }

  if ([v8 clientQueryPendingForProperty:23])
  {
    chipInfoDelegate = self->_chipInfoDelegate;
    if (objc_opt_respondsToSelector())
    {
      v15 = self->_delegateQueue;
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __65__UARPController_queryCompleteForAccessory_enableMixMatch_error___block_invoke_2;
      v20 = &unk_278EC29E0;
      v21 = self;
      v16 = v8;
      v22 = v16;
      v24 = a4;
      v23 = v9;
      dispatch_async(v15, &v17);
      [v16 removePendingClientPropertyQuery:{23, v17, v18, v19, v20, v21}];
    }
  }
}

void __65__UARPController_queryCompleteForAccessory_enableMixMatch_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 168));
  [WeakRetained queryCompleteForAccessory:*(a1 + 40) enableMixMatch:*(a1 + 56) error:*(a1 + 48)];
}

- (void)queryCompleteForAccessory:(id)a3 liveNonce:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 clientQueryPendingForProperty:24])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__UARPController_queryCompleteForAccessory_liveNonce_error___block_invoke;
      block[3] = &unk_278EC29E0;
      block[4] = self;
      v13 = v8;
      v26 = v13;
      v28 = a4;
      v27 = v9;
      dispatch_async(delegateQueue, block);
      [v13 removePendingClientPropertyQuery:24];
    }
  }

  if ([v8 clientQueryPendingForProperty:24])
  {
    chipInfoDelegate = self->_chipInfoDelegate;
    if (objc_opt_respondsToSelector())
    {
      v15 = self->_delegateQueue;
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __60__UARPController_queryCompleteForAccessory_liveNonce_error___block_invoke_2;
      v20 = &unk_278EC29E0;
      v21 = self;
      v16 = v8;
      v22 = v16;
      v24 = a4;
      v23 = v9;
      dispatch_async(v15, &v17);
      [v16 removePendingClientPropertyQuery:{24, v17, v18, v19, v20, v21}];
    }
  }
}

void __60__UARPController_queryCompleteForAccessory_liveNonce_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 168));
  [WeakRetained queryCompleteForAccessory:*(a1 + 40) liveNonce:*(a1 + 56) error:*(a1 + 48)];
}

- (void)queryCompleteForAccessory:(id)a3 prefixNeedsLUN:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 clientQueryPendingForProperty:25])
  {
    chipInfoDelegate = self->_chipInfoDelegate;
    if (objc_opt_respondsToSelector())
    {
      delegateQueue = self->_delegateQueue;
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __65__UARPController_queryCompleteForAccessory_prefixNeedsLUN_error___block_invoke;
      v16 = &unk_278EC29E0;
      v17 = self;
      v12 = v8;
      v18 = v12;
      v20 = a4;
      v19 = v9;
      dispatch_async(delegateQueue, &v13);
      [v12 removePendingClientPropertyQuery:{25, v13, v14, v15, v16, v17}];
    }
  }
}

- (void)queryCompleteForAccessory:(id)a3 suffixNeedsLUN:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 clientQueryPendingForProperty:26])
  {
    chipInfoDelegate = self->_chipInfoDelegate;
    if (objc_opt_respondsToSelector())
    {
      delegateQueue = self->_delegateQueue;
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __65__UARPController_queryCompleteForAccessory_suffixNeedsLUN_error___block_invoke;
      v16 = &unk_278EC29E0;
      v17 = self;
      v12 = v8;
      v18 = v12;
      v20 = a4;
      v19 = v9;
      dispatch_async(delegateQueue, &v13);
      [v12 removePendingClientPropertyQuery:{26, v13, v14, v15, v16, v17}];
    }
  }
}

- (void)queryCompleteForAccessory:(id)a3 nonceSeed:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 clientQueryPendingForProperty:42])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegateQueue = self->_delegateQueue;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __60__UARPController_queryCompleteForAccessory_nonceSeed_error___block_invoke;
      v18 = &unk_278EC2A58;
      v19 = self;
      v14 = v8;
      v20 = v14;
      v21 = v9;
      v22 = v10;
      dispatch_async(delegateQueue, &v15);
      [v14 removePendingClientPropertyQuery:{42, v15, v16, v17, v18, v19}];
    }
  }
}

void __60__UARPController_queryCompleteForAccessory_nonceSeed_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] nonceSeed:a1[6] error:a1[7]];
}

- (void)queryCompleteForAccessory:(id)a3 nonceHash:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 clientQueryPendingForProperty:43])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegateQueue = self->_delegateQueue;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __60__UARPController_queryCompleteForAccessory_nonceHash_error___block_invoke;
      v18 = &unk_278EC2A58;
      v19 = self;
      v14 = v8;
      v20 = v14;
      v21 = v9;
      v22 = v10;
      dispatch_async(delegateQueue, &v15);
      [v14 removePendingClientPropertyQuery:{43, v15, v16, v17, v18, v19}];
    }
  }
}

void __60__UARPController_queryCompleteForAccessory_nonceHash_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] nonceHash:a1[6] error:a1[7]];
}

- (void)firmwareStagingProgress:(id)a3 assetID:(id)a4 bytesSent:(unint64_t)a5 bytesTotal:(unint64_t)a6 filterProgress:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v15 = [v13 reportProgressToDelegates];

    if (v15)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __86__UARPController_firmwareStagingProgress_assetID_bytesSent_bytesTotal_filterProgress___block_invoke;
      block[3] = &unk_278EC2A80;
      block[4] = self;
      v18 = v12;
      v19 = v13;
      v20 = a5;
      v21 = a6;
      dispatch_async(delegateQueue, block);
    }
  }

  else
  {
  }

  if (!a7)
  {
    [(UARPControllerInternalDelegate *)self->_internalDelegate sendFirmwareUpdateProgressForAccessory:v12 assetID:v13 bytesSent:a5 bytesTotal:a6];
  }
}

void __86__UARPController_firmwareStagingProgress_assetID_bytesSent_bytesTotal_filterProgress___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained firmwareStagingProgress:a1[5] assetID:a1[6] bytesSent:a1[7] bytesTotal:a1[8]];
}

- (void)assetSolicitationProgress:(id)a3 assetID:(id)a4 bytesReceived:(unint64_t)a5 bytesTotal:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v13 = [v11 reportProgressToDelegates];

    if (v13)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __77__UARPController_assetSolicitationProgress_assetID_bytesReceived_bytesTotal___block_invoke;
      block[3] = &unk_278EC2A80;
      block[4] = self;
      v16 = v10;
      v17 = v11;
      v18 = a5;
      v19 = a6;
      dispatch_async(delegateQueue, block);
    }
  }

  else
  {
  }
}

void __77__UARPController_assetSolicitationProgress_assetID_bytesReceived_bytesTotal___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained assetSolicitationProgress:a1[5] assetID:a1[6] bytesReceived:a1[7] bytesTotal:a1[8]];
}

- (id)unsolicitedDynamicAssetOffered:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__4;
  v21 = __Block_byref_object_dispose__4;
  v22 = 0;
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__UARPController_unsolicitedDynamicAssetOffered_assetID___block_invoke;
  v13[3] = &unk_278EC2990;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(internalQueue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __57__UARPController_unsolicitedDynamicAssetOffered_assetID___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) getID];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = (a1 + 48);
    v6 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 48)];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v9 = [[UARPAsset alloc] initWithID:*(a1 + 48)];
      v10 = *(*(a1 + 56) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v12 = *(*(*(a1 + 56) + 8) + 40);
      v13 = *(a1 + 32);
      if (v12)
      {
        [*(v13 + 16) setObject:v12 forKey:*v5];
      }

      else
      {
        v14 = *(v13 + 24);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          __46__UARPController_solicitDynamicAsset_assetID___block_invoke_cold_1(v5, v14);
        }
      }
    }
  }
}

- (void)accessoryTransportNeeded:(id)a3 isNeeded:(BOOL)a4
{
  v6 = a3;
  if (os_log_type_enabled(self->_xpcLog, OS_LOG_TYPE_ERROR))
  {
    [UARPController accessoryTransportNeeded:isNeeded:];
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__UARPController_accessoryTransportNeeded_isNeeded___block_invoke;
  block[3] = &unk_278EC28A0;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_sync(internalQueue, block);
}

void __52__UARPController_accessoryTransportNeeded_isNeeded___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) getID];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 168));
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v8 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = *(v8 + 48);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __52__UARPController_accessoryTransportNeeded_isNeeded___block_invoke_2;
      block[3] = &unk_278EC28A0;
      block[4] = v8;
      v11 = v7;
      v12 = *(a1 + 48);
      dispatch_async(v9, block);
    }
  }
}

void __52__UARPController_accessoryTransportNeeded_isNeeded___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 168));
  [WeakRetained accessoryTransportNeeded:*(a1 + 40) isNeeded:*(a1 + 48)];
}

- (BOOL)addAccessory:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  internalQueue = self->_internalQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __39__UARPController_addAccessory_assetID___block_invoke;
  v12[3] = &unk_278EC2AA8;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v15 = &v16;
  v9 = v7;
  v10 = v6;
  dispatch_sync(internalQueue, v12);
  LOBYTE(internalQueue) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return internalQueue;
}

void __39__UARPController_addAccessory_assetID___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 56) + 8) + 24) = [*(*(a1 + 32) + 72) addAccessory:*(a1 + 40) assetID:*(a1 + 48)];
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 32) + 8);
    v4 = [v2 getID];
    [v3 setObject:v2 forKeyedSubscript:v4];

    if ([*(*(a1 + 32) + 72) useAssetAvailabilityNotifications])
    {
      *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) registerForAssetAvailabilityNotification:*(a1 + 40)];
      if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
      {
        [*(a1 + 32) removeAccessory:*(a1 + 40)];
      }

      *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) registerForSupplementalAssetAvailabilityNotification:*(a1 + 40)];
      if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
      {
        [*(a1 + 32) removeAccessory:*(a1 + 40)];
      }
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [*(a1 + 40) bsdNotifications];
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v19;
      *&v7 = 138412290;
      v17 = v7;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v12 = *(*(a1 + 32) + 32);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = v17;
            v23 = v11;
            _os_log_debug_impl(&dword_247AA7000, v12, OS_LOG_TYPE_DEBUG, "registering bsd notification; %@", buf, 0xCu);
          }

          [*(a1 + 32) registerForGenericNotification:*(a1 + 40) notificationName:{v11, v17}];
        }

        v8 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v8);
    }

    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v13 = *(a1 + 40);
      v14 = *(*(a1 + 32) + 144);
      v15 = [v13 getID];
      [v14 addAccessoryID:v15];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)removeAccessory:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__UARPController_removeAccessory___block_invoke;
  block[3] = &unk_278EC2850;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

void __34__UARPController_removeAccessory___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 32) + 72) removeAccessory:*(a1 + 40)];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [*(a1 + 32) accessoryUnreachableInternal:*(a1 + 40)];
    v2 = *(*(a1 + 32) + 8);
    v3 = [*(a1 + 40) getID];
    [v2 removeObjectForKey:v3];

    [*(a1 + 32) unregisterForAssetAvailabilityNotification:*(a1 + 40)];
    [*(a1 + 32) unregisterForSupplementalAssetAvailabilityNotification:*(a1 + 40)];
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 144);
    v6 = [v4 getID];
    [v5 removeAccessoryID:v6];
  }
}

- (BOOL)changeAssetLocation:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  internalQueue = self->_internalQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__UARPController_changeAssetLocation_assetID___block_invoke;
  v12[3] = &unk_278EC2AA8;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v15 = &v16;
  v9 = v7;
  v10 = v6;
  dispatch_sync(internalQueue, v12);
  LOBYTE(internalQueue) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return internalQueue;
}

uint64_t __46__UARPController_changeAssetLocation_assetID___block_invoke(void *a1)
{
  result = [*(a1[4] + 72) changeAssetLocation:a1[5] assetID:a1[6]];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

- (BOOL)requestConsent:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__UARPController_requestConsent___block_invoke;
  block[3] = &unk_278EC2850;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

uint64_t __33__UARPController_requestConsent___block_invoke(void *a1)
{
  result = [*(a1[4] + 72) requestConsent:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (BOOL)revokeConsentRequest:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__UARPController_revokeConsentRequest___block_invoke;
  block[3] = &unk_278EC2850;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

uint64_t __39__UARPController_revokeConsentRequest___block_invoke(void *a1)
{
  result = [*(a1[4] + 72) revokeConsentRequest:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (BOOL)pauseAssetTransfersForAccessory:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__UARPController_pauseAssetTransfersForAccessory___block_invoke;
  block[3] = &unk_278EC2480;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

void __50__UARPController_pauseAssetTransfersForAccessory___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) getID];
  v5 = [v2 objectForKeyedSubscript:v3];

  v4 = v5;
  if (v5)
  {
    if ([v5 assetTransfersPaused])
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 32) + 64) pauseAssetTransfersForAccessory:*(a1 + 40)];
      v4 = v5;
      if (*(*(*(a1 + 48) + 8) + 24) != 1)
      {
        goto LABEL_7;
      }

      [v5 setAssetTransfersPaused:1];
    }

    v4 = v5;
  }

LABEL_7:
}

- (BOOL)resumeAssetTransfersForAccessory:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__UARPController_resumeAssetTransfersForAccessory___block_invoke;
  block[3] = &unk_278EC2480;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

void __51__UARPController_resumeAssetTransfersForAccessory___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) getID];
  v5 = [v2 objectForKeyedSubscript:v3];

  v4 = v5;
  if (v5)
  {
    if ([v5 assetTransfersPaused])
    {
      *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 32) + 64) resumeAssetTransfersForAccessory:*(a1 + 40)];
      v4 = v5;
      if (*(*(*(a1 + 48) + 8) + 24) != 1)
      {
        goto LABEL_7;
      }

      [v5 setAssetTransfersPaused:0];
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    v4 = v5;
  }

LABEL_7:
}

- (BOOL)downloadAvailableFirmwareUpdate:(id)a3 assetID:(id)a4 withUserIntent:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__UARPController_downloadAvailableFirmwareUpdate_assetID_withUserIntent___block_invoke;
  block[3] = &unk_278EC2AD0;
  block[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = &v19;
  v18 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return internalQueue;
}

uint64_t __73__UARPController_downloadAvailableFirmwareUpdate_assetID_withUserIntent___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 72) downloadAvailableFirmwareUpdate:*(a1 + 40) assetID:*(a1 + 48) withUserIntent:*(a1 + 64)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (BOOL)downloadReleaseNotes:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  internalQueue = self->_internalQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__UARPController_downloadReleaseNotes_assetID___block_invoke;
  v12[3] = &unk_278EC2AA8;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v15 = &v16;
  v9 = v7;
  v10 = v6;
  dispatch_sync(internalQueue, v12);
  LOBYTE(internalQueue) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return internalQueue;
}

uint64_t __47__UARPController_downloadReleaseNotes_assetID___block_invoke(void *a1)
{
  result = [*(a1[4] + 72) downloadReleaseNotes:a1[5] assetID:a1[6]];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

- (void)sendFirmwareUpdateProgressForAccessory:(id)a3 assetID:(id)a4 bytesSent:(unint64_t)a5 bytesTotal:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__UARPController_sendFirmwareUpdateProgressForAccessory_assetID_bytesSent_bytesTotal___block_invoke;
  block[3] = &unk_278EC2A80;
  block[4] = self;
  v16 = v10;
  v17 = v11;
  v18 = a5;
  v19 = a6;
  v13 = v11;
  v14 = v10;
  dispatch_sync(internalQueue, block);
}

- (void)sendFirmwareUpdateProgressForUARPConsent:(id)a3 bytesSent:(unint64_t)a4 bytesTotal:(unint64_t)a5
{
  v8 = a3;
  internalQueue = self->_internalQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__UARPController_sendFirmwareUpdateProgressForUARPConsent_bytesSent_bytesTotal___block_invoke;
  v11[3] = &unk_278EC2AF8;
  v11[4] = self;
  v12 = v8;
  v13 = a4;
  v14 = a5;
  v10 = v8;
  dispatch_sync(internalQueue, v11);
}

- (void)progressForUARPConsent:(id)a3 bytesSent:(unint64_t)a4 bytesTotal:(unint64_t)a5
{
  v8 = a3;
  internalQueue = self->_internalQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__UARPController_progressForUARPConsent_bytesSent_bytesTotal___block_invoke;
  v11[3] = &unk_278EC2AF8;
  v11[4] = self;
  v12 = v8;
  v13 = a4;
  v14 = a5;
  v10 = v8;
  dispatch_sync(internalQueue, v11);
}

- (void)progressForUARPConsentInPostLogout:(id)a3 bytesSent:(unint64_t)a4 bytesTotal:(unint64_t)a5
{
  v8 = a3;
  internalQueue = self->_internalQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__UARPController_progressForUARPConsentInPostLogout_bytesSent_bytesTotal___block_invoke;
  v11[3] = &unk_278EC2AF8;
  v11[4] = self;
  v12 = v8;
  v13 = a4;
  v14 = a5;
  v10 = v8;
  dispatch_sync(internalQueue, v11);
}

- (BOOL)enableTRMSystemAuthenticationForRegistryEntryID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__UARPController_enableTRMSystemAuthenticationForRegistryEntryID___block_invoke;
  block[3] = &unk_278EC2850;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

uint64_t __66__UARPController_enableTRMSystemAuthenticationForRegistryEntryID___block_invoke(void *a1)
{
  result = [*(a1[4] + 72) enableTRMSystemAuthenticationForRegistryEntryID:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (BOOL)disableTRMSystemAuthenticationForRegistryEntryID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__UARPController_disableTRMSystemAuthenticationForRegistryEntryID___block_invoke;
  block[3] = &unk_278EC2850;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

uint64_t __67__UARPController_disableTRMSystemAuthenticationForRegistryEntryID___block_invoke(void *a1)
{
  result = [*(a1[4] + 72) disableTRMSystemAuthenticationForRegistryEntryID:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (BOOL)checkForUpdate:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__UARPController_checkForUpdate___block_invoke;
  block[3] = &unk_278EC2850;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

uint64_t __33__UARPController_checkForUpdate___block_invoke(void *a1)
{
  result = [*(a1[4] + 72) checkForUpdate:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (BOOL)getSupportedAccessoriesInternal:(id)a3 assetID:(id)a4 batchRequest:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__UARPController_getSupportedAccessoriesInternal_assetID_batchRequest___block_invoke;
  block[3] = &unk_278EC2AD0;
  block[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = &v19;
  v18 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return internalQueue;
}

void __71__UARPController_getSupportedAccessoriesInternal_assetID_batchRequest___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  v3 = (a1 + 40);
  v4 = [*(a1 + 40) identifier];
  *(*(*(a1 + 56) + 8) + 24) = [v2 getSupportedAccessories:v4 assetID:*(a1 + 48) batchRequest:*(a1 + 64)];

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    if ([*(*(a1 + 32) + 72) useAssetAvailabilityNotifications])
    {
      *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) registerForSupportedAccessoriesAvailability:*(a1 + 40)];
      if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && os_log_type_enabled(*(*(a1 + 32) + 32), OS_LOG_TYPE_ERROR))
      {
        __71__UARPController_getSupportedAccessoriesInternal_assetID_batchRequest___block_invoke_cold_1(v3);
      }
    }
  }
}

- (BOOL)getSupportedAccessories:(id)a3 assetLocationType:(int64_t)a4
{
  v6 = a3;
  v7 = [[UARPAssetID alloc] initWithLocationType:a4 remoteURL:0];
  LOBYTE(self) = [(UARPController *)self getSupportedAccessoriesInternal:v6 assetID:v7 batchRequest:0];

  return self;
}

- (BOOL)getBatchedSupportedAccessories:(id)a3 assetLocationType:(int64_t)a4
{
  v6 = a3;
  v7 = [[UARPAssetID alloc] initWithLocationType:a4 remoteURL:0];
  LOBYTE(self) = [(UARPController *)self getSupportedAccessoriesInternal:v6 assetID:v7 batchRequest:1];

  return self;
}

- (BOOL)getAttestationCertificatesInternal:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  internalQueue = self->_internalQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__UARPController_getAttestationCertificatesInternal_assetID___block_invoke;
  v12[3] = &unk_278EC2AA8;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v15 = &v16;
  v9 = v7;
  v10 = v6;
  dispatch_sync(internalQueue, v12);
  LOBYTE(internalQueue) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return internalQueue;
}

void __61__UARPController_getAttestationCertificatesInternal_assetID___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  *(*(v2[2] + 8) + 24) = [*(*(a1 + 32) + 72) getAttestationCertificates:*(a1 + 40) assetID:*(a1 + 48)];
  if (*(*(v2[2] + 8) + 24) == 1)
  {
    if ([*(*(a1 + 32) + 72) useAssetAvailabilityNotifications])
    {
      *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) registerForAttestationCertificatesAvailability:*(a1 + 40)];
      if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && os_log_type_enabled(*(*(a1 + 32) + 32), OS_LOG_TYPE_ERROR))
      {
        __61__UARPController_getAttestationCertificatesInternal_assetID___block_invoke_cold_1(v2);
      }
    }
  }
}

- (BOOL)getAttestationCertificates:(id)a3 assetLocationType:(int64_t)a4
{
  v6 = a3;
  v7 = [[UARPAssetID alloc] initWithLocationType:a4 remoteURL:0];
  LOBYTE(self) = [(UARPController *)self getAttestationCertificatesInternal:v6 assetID:v7];

  return self;
}

- (void)assetAvailabilityNotificationPosted:(int)a3
{
  v16 = *MEMORY[0x277D85DE8];
  assetAvailabilityNotificationTokenDict = self->_assetAvailabilityNotificationTokenDict;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:?];
  v6 = [(NSMutableDictionary *)assetAvailabilityNotificationTokenDict objectForKeyedSubscript:v5];

  controllerLog = self->_controllerLog;
  if (v6)
  {
    if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_INFO))
    {
      v12 = 136315394;
      v13 = "[UARPController assetAvailabilityNotificationPosted:]";
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_247AA7000, controllerLog, OS_LOG_TYPE_INFO, "%s: Asset availability notification for %@", &v12, 0x16u);
    }

    internalDelegate = self->_internalDelegate;
    v9 = [v6 getID];
    v10 = [(UARPControllerInternalDelegate *)internalDelegate getAssetIDForAccessoryID:v9];

    if (v10)
    {
      [(UARPController *)self assetAvailablityUpdateForAccessory:v6 assetID:v10];
    }

    else if (os_log_type_enabled(self->_controllerLog, OS_LOG_TYPE_ERROR))
    {
      [UARPController assetAvailabilityNotificationPosted:];
    }
  }

  else if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_ERROR))
  {
    [UARPController assetAvailabilityNotificationPosted:];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)registerForAssetAvailabilityNotification:(id)a3
{
  v4 = a3;
  out_token = -1;
  v5 = [v4 getID];
  v6 = [v5 assetAvailabilityUpdateNotification];

  objc_initWeak(&location, self);
  internalQueue = self->_internalQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __59__UARPController_registerForAssetAvailabilityNotification___block_invoke;
  handler[3] = &unk_278EC2B20;
  objc_copyWeak(&v13, &location);
  v8 = notify_register_dispatch(v6, &out_token, internalQueue, handler);
  if (v8)
  {
    if (os_log_type_enabled(self->_controllerLog, OS_LOG_TYPE_ERROR))
    {
      [UARPController registerForAssetAvailabilityNotification:];
    }
  }

  else
  {
    assetAvailabilityNotificationTokenDict = self->_assetAvailabilityNotificationTokenDict;
    v10 = [MEMORY[0x277CCABB0] numberWithInt:out_token];
    [(NSMutableDictionary *)assetAvailabilityNotificationTokenDict setObject:v4 forKeyedSubscript:v10];
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v8 == 0;
}

void __59__UARPController_registerForAssetAvailabilityNotification___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained assetAvailabilityNotificationPosted:a2];
}

- (BOOL)registerForSupportedAccessoriesAvailability:(id)a3
{
  v4 = a3;
  out_token = -1;
  v5 = [v4 identifier];

  v6 = MEMORY[0x277CCACA8];
  if (v5)
  {
    v7 = [v4 identifier];
    v8 = [v6 stringWithFormat:@"%@-%@", @"com.apple.accessoryUpdater.uarp.supportedAccessoriesMetadataAvailable", v7];
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", @"com.apple.accessoryUpdater.uarp.supportedAccessoriesMetadataAvailable"];
  }

  objc_initWeak(&location, self);
  v9 = [v8 UTF8String];
  internalQueue = self->_internalQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __62__UARPController_registerForSupportedAccessoriesAvailability___block_invoke;
  handler[3] = &unk_278EC2B20;
  objc_copyWeak(&v16, &location);
  v11 = notify_register_dispatch(v9, &out_token, internalQueue, handler);
  if (v11)
  {
    if (os_log_type_enabled(self->_controllerLog, OS_LOG_TYPE_ERROR))
    {
      [UARPController registerForSupportedAccessoriesAvailability:];
    }
  }

  else if (v4)
  {
    assetAvailabilityUARPProductGroupNotificationTokenDict = self->_assetAvailabilityUARPProductGroupNotificationTokenDict;
    v13 = [MEMORY[0x277CCABB0] numberWithInt:out_token];
    [(NSMutableDictionary *)assetAvailabilityUARPProductGroupNotificationTokenDict setObject:v4 forKeyedSubscript:v13];
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v11 == 0;
}

void __62__UARPController_registerForSupportedAccessoriesAvailability___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained availabilityNotificationForSupportedAccessoriesPosted:a2];
}

- (id)assetAvailabilityTokenForAccessory:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_assetAvailabilityNotificationTokenDict;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_assetAvailabilityNotificationTokenDict objectForKeyedSubscript:v11, v16];
        if ([v4 isEqual:v12])
        {
          v13 = v11;

          v8 = v13;
        }
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)unregisterForAssetAvailabilityNotification:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(UARPController *)self assetAvailabilityTokenForAccessory:v4];
  v6 = v5;
  if (v5)
  {
    notify_cancel([v5 intValue]);
    [(NSMutableDictionary *)self->_assetAvailabilityNotificationTokenDict removeObjectForKey:v6];
    controllerLog = self->_controllerLog;
    if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[UARPController unregisterForAssetAvailabilityNotification:]";
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_247AA7000, controllerLog, OS_LOG_TYPE_INFO, "%s: unregistered %@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)unregisterForAllAssetAvailabilityNotifications
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = self->_assetAvailabilityNotificationTokenDict;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        notify_cancel([*(*(&v18 + 1) + 8 * v7++) intValue]);
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_assetAvailabilityNotificationTokenDict removeAllObjects];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_assetAvailabilityUARPProductGroupNotificationTokenDict;
  v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        notify_cancel([*(*(&v14 + 1) + 8 * v12++) intValue]);
      }

      while (v10 != v12);
      v10 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v10);
  }

  [(NSMutableDictionary *)self->_assetAvailabilityUARPProductGroupNotificationTokenDict removeAllObjects];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)supplementalAssetAvailabilityNotificationPosted:(int)a3
{
  v16 = *MEMORY[0x277D85DE8];
  supplementalAssetAvailabilityNotificationTokenDict = self->_supplementalAssetAvailabilityNotificationTokenDict;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:?];
  v6 = [(NSMutableDictionary *)supplementalAssetAvailabilityNotificationTokenDict objectForKeyedSubscript:v5];

  controllerLog = self->_controllerLog;
  if (v6)
  {
    if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_INFO))
    {
      v12 = 136315394;
      v13 = "[UARPController supplementalAssetAvailabilityNotificationPosted:]";
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_247AA7000, controllerLog, OS_LOG_TYPE_INFO, "%s: Supplemental Asset availability notification for %@", &v12, 0x16u);
    }

    internalDelegate = self->_internalDelegate;
    v9 = [v6 getID];
    v10 = [(UARPControllerInternalDelegate *)internalDelegate getSupplementalAssetNameForAccessoryID:v9];

    if (v10)
    {
      [(UARPController *)self supplementalAssetAvailablityUpdateForAccessory:v6 assetName:v10];
    }

    else if (os_log_type_enabled(self->_controllerLog, OS_LOG_TYPE_ERROR))
    {
      [UARPController supplementalAssetAvailabilityNotificationPosted:];
    }
  }

  else if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_ERROR))
  {
    [UARPController supplementalAssetAvailabilityNotificationPosted:];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)registerForSupplementalAssetAvailabilityNotification:(id)a3
{
  v4 = a3;
  out_token = -1;
  v5 = [v4 getID];
  v6 = [v5 supplementalAssetAvailabilityUpdateNotification];

  objc_initWeak(&location, self);
  internalQueue = self->_internalQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __71__UARPController_registerForSupplementalAssetAvailabilityNotification___block_invoke;
  handler[3] = &unk_278EC2B20;
  objc_copyWeak(&v13, &location);
  v8 = notify_register_dispatch(v6, &out_token, internalQueue, handler);
  if (v8)
  {
    if (os_log_type_enabled(self->_controllerLog, OS_LOG_TYPE_ERROR))
    {
      [UARPController registerForAssetAvailabilityNotification:];
    }
  }

  else
  {
    supplementalAssetAvailabilityNotificationTokenDict = self->_supplementalAssetAvailabilityNotificationTokenDict;
    v10 = [MEMORY[0x277CCABB0] numberWithInt:out_token];
    [(NSMutableDictionary *)supplementalAssetAvailabilityNotificationTokenDict setObject:v4 forKeyedSubscript:v10];
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v8 == 0;
}

void __71__UARPController_registerForSupplementalAssetAvailabilityNotification___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained supplementalAssetAvailabilityNotificationPosted:a2];
}

- (id)supplementalAssetAvailabilityTokenForAccessory:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_supplementalAssetAvailabilityNotificationTokenDict;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_supplementalAssetAvailabilityNotificationTokenDict objectForKeyedSubscript:v11, v16];
        if ([v4 isEqual:v12])
        {
          v13 = v11;

          v8 = v13;
        }
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)unregisterForSupplementalAssetAvailabilityNotification:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(UARPController *)self supplementalAssetAvailabilityTokenForAccessory:v4];
  v6 = v5;
  if (v5)
  {
    notify_cancel([v5 intValue]);
    [(NSMutableDictionary *)self->_supplementalAssetAvailabilityNotificationTokenDict removeObjectForKey:v6];
    controllerLog = self->_controllerLog;
    if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[UARPController unregisterForSupplementalAssetAvailabilityNotification:]";
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_247AA7000, controllerLog, OS_LOG_TYPE_INFO, "%s: unregistered %@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)unregisterForAllSupplementalAssetAvailabilityNotifications
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_supplementalAssetAvailabilityNotificationTokenDict;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

        notify_cancel([*(*(&v9 + 1) + 8 * v7++) intValue]);
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_supplementalAssetAvailabilityNotificationTokenDict removeAllObjects];
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)registerForAttestationCertificatesAvailability:(id)a3
{
  v4 = a3;
  out_token = -1;
  if (v4)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"com.apple.accessoryUpdater.uarp.attestationCertificatesAvailable", v4];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@", @"com.apple.accessoryUpdater.uarp.attestationCertificatesAvailable", v12];
  }
  v5 = ;
  objc_initWeak(&location, self);
  v6 = [v5 UTF8String];
  internalQueue = self->_internalQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __65__UARPController_registerForAttestationCertificatesAvailability___block_invoke;
  handler[3] = &unk_278EC2B20;
  objc_copyWeak(&v14, &location);
  v8 = notify_register_dispatch(v6, &out_token, internalQueue, handler);
  if (v8)
  {
    if (os_log_type_enabled(self->_controllerLog, OS_LOG_TYPE_ERROR))
    {
      [UARPController registerForSupportedAccessoriesAvailability:];
    }
  }

  else if (v4)
  {
    attestationCertificatesAvailabilitySubjectKeyIdentifierNotificationTokenDict = self->_attestationCertificatesAvailabilitySubjectKeyIdentifierNotificationTokenDict;
    v10 = [MEMORY[0x277CCABB0] numberWithInt:out_token];
    [(NSMutableDictionary *)attestationCertificatesAvailabilitySubjectKeyIdentifierNotificationTokenDict setObject:v4 forKeyedSubscript:v10];
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v8 == 0;
}

void __65__UARPController_registerForAttestationCertificatesAvailability___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained availabilityNotificationForAttestationCertificatesPosted:a2];
}

- (void)unregisterForAllAttestationCertificatesAvailabilityNotifications
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_attestationCertificatesAvailabilitySubjectKeyIdentifierNotificationTokenDict;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

        notify_cancel([*(*(&v9 + 1) + 8 * v7++) intValue]);
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_attestationCertificatesAvailabilitySubjectKeyIdentifierNotificationTokenDict removeAllObjects];
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)registerForGenericNotification:(id)a3 notificationName:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  controllerLog = self->_controllerLog;
  if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v34 = v7;
    _os_log_impl(&dword_247AA7000, controllerLog, OS_LOG_TYPE_INFO, "Registering for BSD notification %@", buf, 0xCu);
  }

  [(NSMutableDictionary *)self->_generalNotificationTokenDict allValues];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v9 = v29 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v11 = *v29;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v9);
        }

        if ([*(*(&v28 + 1) + 8 * i) isEqualToString:v7])
        {
          v19 = self->_controllerLog;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v34 = v7;
            _os_log_impl(&dword_247AA7000, v19, OS_LOG_TYPE_INFO, "Already registered for notification %@", buf, 0xCu);
          }

          v17 = 1;
          goto LABEL_21;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  out_token = -1;
  objc_initWeak(&location, self);
  v13 = v7;
  v14 = [v7 UTF8String];
  internalQueue = self->_internalQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __66__UARPController_registerForGenericNotification_notificationName___block_invoke;
  handler[3] = &unk_278EC2B20;
  objc_copyWeak(&v25, &location);
  v16 = notify_register_dispatch(v14, &out_token, internalQueue, handler);
  v17 = v16 == 0;
  v18 = self->_controllerLog;
  if (v16)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [UARPController registerForSupportedAccessoriesAvailability:];
    }
  }

  else
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v34 = v7;
      _os_log_impl(&dword_247AA7000, v18, OS_LOG_TYPE_INFO, "Registered for BSD notification %@", buf, 0xCu);
    }

    generalNotificationTokenDict = self->_generalNotificationTokenDict;
    v21 = [MEMORY[0x277CCABB0] numberWithInt:out_token];
    [(NSMutableDictionary *)generalNotificationTokenDict setObject:v7 forKeyedSubscript:v21];
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
LABEL_21:

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

void __66__UARPController_registerForGenericNotification_notificationName___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained genericNotificationPosted:a2];
}

- (void)genericNotificationPosted:(int)a3
{
  v28 = *MEMORY[0x277D85DE8];
  generalNotificationTokenDict = self->_generalNotificationTokenDict;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:?];
  v6 = [(NSMutableDictionary *)generalNotificationTokenDict objectForKeyedSubscript:v5];

  controllerLog = self->_controllerLog;
  if (v6)
  {
    if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v25 = "[UARPController genericNotificationPosted:]";
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_247AA7000, controllerLog, OS_LOG_TYPE_INFO, "%s: Notification posted %@", buf, 0x16u);
    }

    v8 = [(NSMutableDictionary *)self->_accessories allValues];
    v9 = [v8 copy];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          v16 = [v15 bsdNotifications];
          v17 = [v16 containsObject:v6];

          if (v17)
          {
            [(UARPUploader *)self->_uploader genericNotification:v15 notificationName:v6 error:0];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }
  }

  else if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_ERROR))
  {
    [UARPController genericNotificationPosted:];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)unregisterForAllGenericNotifications
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_generalNotificationTokenDict;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

        notify_cancel([*(*(&v9 + 1) + 8 * v7++) intValue]);
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_generalNotificationTokenDict removeAllObjects];
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)createUploader
{
  if (self->_uploader)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      v7 = [v6 newUploader];
      uploader = self->_uploader;
      self->_uploader = v7;
    }

    else
    {
      v9 = objc_alloc_init(UARPUploaderUARP);
      v6 = self->_uploader;
      self->_uploader = &v9->super;
    }

    if ([(UARPUploader *)self->_uploader setController:self])
    {
      LOBYTE(v2) = 1;
    }

    else
    {
      v2 = os_log_type_enabled(self->_controllerLog, OS_LOG_TYPE_ERROR);
      if (v2)
      {
        [UARPController createUploader];
        LOBYTE(v2) = 0;
      }
    }
  }

  return v2;
}

- (BOOL)startTapToRadar:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  if ([(UARPController *)self createUploader])
  {
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__UARPController_startTapToRadar___block_invoke;
    block[3] = &unk_278EC2B48;
    block[4] = self;
    v10 = &v11;
    v9 = v4;
    dispatch_async(internalQueue, block);
    v6 = *(v12 + 24);
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v6 & 1;
}

void __34__UARPController_startTapToRadar___block_invoke(void *a1)
{
  v2 = *(a1[4] + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_247AA7000, v2, OS_LOG_TYPE_INFO, "start TTR called.", v5, 2u);
  }

  v3 = a1[4];
  v4 = *(v3 + 64);
  if (v4)
  {
    *(*(a1[6] + 8) + 24) = [v4 startTapToRadar:a1[5]];
  }

  else
  {
    if (os_log_type_enabled(*(v3 + 32), OS_LOG_TYPE_ERROR))
    {
      __34__UARPController_startTapToRadar___block_invoke_cold_1();
    }

    *(*(a1[6] + 8) + 24) = 0;
  }
}

- (void)stopTapToRadar
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__UARPController_stopTapToRadar__block_invoke;
  block[3] = &unk_278EC1948;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

uint64_t __32__UARPController_stopTapToRadar__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_247AA7000, v2, OS_LOG_TYPE_INFO, "stop TTR called.", v4, 2u);
  }

  return [*(*(a1 + 32) + 64) stopTapToRadar];
}

- (void)startPersonalizationHelperService:(id)a3 entitlement:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = dispatch_queue_create("UARPController personalization", 0);
  personalizationQueue = self->_personalizationQueue;
  self->_personalizationQueue = v8;

  v10 = [[UARPPersonalizationManager alloc] initWithMachServiceName:v7 entitlement:v6 delegate:self queue:self->_personalizationQueue];
  personalizationManager = self->_personalizationManager;
  self->_personalizationManager = v10;
}

- (id)personalizationHelperQueryPendingTssRequests:(id)a3
{
  controllerLog = self->_controllerLog;
  if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_DEBUG))
  {
    [(UARPController *)controllerLog personalizationHelperQueryPendingTssRequests:v5, v6, v7, v8, v9, v10, v11];
  }

  v12 = [(UARPController *)self pendingTatsuRequests];

  return v12;
}

- (void)personalizationHelperTssResponse:(id)a3 updaterName:(id)a4
{
  v5 = a3;
  controllerLog = self->_controllerLog;
  if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_DEBUG))
  {
    [(UARPController *)controllerLog personalizationHelperTssResponse:v7 updaterName:v8, v9, v10, v11, v12, v13];
  }

  [(UARPController *)self tssResponse:v5];
}

- (id)pendingTatsuRequests
{
  v28 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__4;
  v22 = __Block_byref_object_dispose__4;
  v23 = objc_opt_new();
  controllerLog = self->_controllerLog;
  if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_DEBUG))
  {
    [(UARPController *)controllerLog pendingTatsuRequests:v4];
  }

  internalQueue = self->_internalQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __38__UARPController_pendingTatsuRequests__block_invoke;
  v17[3] = &unk_278EC2408;
  v17[4] = self;
  v17[5] = &v18;
  dispatch_sync(internalQueue, v17);
  v12 = self->_controllerLog;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v19[5];
    *buf = 136315394;
    v25 = "[UARPController pendingTatsuRequests]";
    v26 = 2112;
    v27 = v13;
    _os_log_impl(&dword_247AA7000, v12, OS_LOG_TYPE_INFO, "%s: Pending Tatsu Requests %@", buf, 0x16u);
  }

  v14 = [MEMORY[0x277CBEA60] arrayWithArray:v19[5]];
  _Block_object_dispose(&v18, 8);

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void __38__UARPController_pendingTatsuRequests__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __38__UARPController_pendingTatsuRequests__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = [*(*(a1 + 32) + 64) pendingTssRequests];
  [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:v10];
}

- (void)tssResponse:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  controllerLog = self->_controllerLog;
  if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[UARPController tssResponse:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_247AA7000, controllerLog, OS_LOG_TYPE_INFO, "%s: Tatsu Response, %@", buf, 0x16u);
  }

  internalQueue = self->_internalQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __30__UARPController_tssResponse___block_invoke;
  v9[3] = &unk_278EC1140;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_sync(internalQueue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __30__UARPController_tssResponse___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[UARPController tssResponse:]_block_invoke";
    _os_log_impl(&dword_247AA7000, v2, OS_LOG_TYPE_INFO, "%s: on queue", &v5, 0xCu);
  }

  result = [*(*(a1 + 32) + 64) tssResponse:*(a1 + 40)];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)assetStagingPause:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegateQueue = self->_delegateQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __36__UARPController_assetStagingPause___block_invoke;
    v8[3] = &unk_278EC1140;
    v8[4] = self;
    v9 = v4;
    dispatch_async(delegateQueue, v8);
  }
}

void __36__UARPController_assetStagingPause___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 168));
  [WeakRetained assetStagingPause:*(a1 + 40)];
}

- (void)assetStagingResume:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegateQueue = self->_delegateQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __37__UARPController_assetStagingResume___block_invoke;
    v8[3] = &unk_278EC1140;
    v8[4] = self;
    v9 = v4;
    dispatch_async(delegateQueue, v8);
  }
}

void __37__UARPController_assetStagingResume___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 168));
  [WeakRetained assetStagingResume:*(a1 + 40)];
}

- (UARPControllerDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __60__UARPController_cancelFirmwareStagingForAccessory_assetID___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  v2 = *v1;
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)recvDataFromAccessory:data:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updatePendingAssetsForAccessory:(void *)a1 assetID:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_11() localURL];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_247AA7000, v4, v5, "Unable to initialize asset at %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)sendMessageToAccessory:uarpMsg:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __49__UARPController_sendMessageToAccessory_uarpMsg___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)solicitDynamicAsset:assetID:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __46__UARPController_solicitDynamicAsset_assetID___block_invoke_cold_1(uint64_t *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_11() localURL];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_247AA7000, v6, v7, "Unable to initialize asset at %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __66__UARPController_dynamicAssetAvailableForAccessory_assetID_error___block_invoke_cold_1(uint64_t *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_11() localPath];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_247AA7000, v6, v7, "Unable to initialize dynamic asset at %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __63__UARPController_assetAvailablityUpdateForAccessoryID_assetID___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __77__UARPController_supplementalAssetAvailablityUpdateForAccessoryID_assetName___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __66__UARPController_supportedAccessories_forProductGroup_isComplete___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)accessoryTransportNeeded:isNeeded:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __71__UARPController_getSupportedAccessoriesInternal_assetID_batchRequest___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  v2 = *v1;
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

void __61__UARPController_getAttestationCertificatesInternal_assetID___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  v2 = *v1;
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)assetAvailabilityNotificationPosted:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)assetAvailabilityNotificationPosted:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)registerForAssetAvailabilityNotification:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)registerForSupportedAccessoriesAvailability:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)supplementalAssetAvailabilityNotificationPosted:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)supplementalAssetAvailabilityNotificationPosted:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)genericNotificationPosted:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)personalizationHelperQueryPendingTssRequests:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_5(&dword_247AA7000, a1, a3, "%s: ", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)personalizationHelperTssResponse:(uint64_t)a3 updaterName:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_5(&dword_247AA7000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)pendingTatsuRequests
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_5(&dword_247AA7000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __38__UARPController_pendingTatsuRequests__block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_5(&dword_247AA7000, a1, a3, "%s: on queue", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end