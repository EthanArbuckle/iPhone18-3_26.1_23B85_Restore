@interface UARPUploaderEndpoint
- (BOOL)handlePersonalizationResponse:(id)response;
- (BOOL)hasFullPersonality:(id)personality;
- (BOOL)im4mAssetReceived:(id)received;
- (NSArray)rxDynamicAssets;
- (NSArray)txDynamicAssets;
- (NSArray)txFirmwareAssets;
- (UARPUploaderEndpoint)initWithUARPAccessory:(id)accessory endpointID:(unsigned __int16)d uploader:(id)uploader;
- (UARPUploaderEndpoint)initWithUARPAccessory:(id)accessory uploader:(id)uploader;
- (UARPUploaderUARP)uploader;
- (id)downstreamEndpoint:(unsigned __int16)endpoint;
- (id)findMatch:(id)match;
- (id)idealTxFirmwareAsset;
- (id)pendingTssRequests;
- (void)abandonRxDynamicAsset:(id)asset;
- (void)abandonTxDynamicAsset:(id)asset;
- (void)addRxDynamicAsset:(id)asset;
- (void)addTxDynamicAsset:(id)asset;
- (void)addTxFirmwareAsset:(id)asset;
- (void)cancelLayer2WatchdogTimer;
- (void)dealloc;
- (void)dumpRxUARPMsg:(id)msg;
- (void)dumpTxUARPMsg:(id)msg;
- (void)handleLayer2WatchdogTimer:(id)timer;
- (void)handlePersonalizationRequest;
- (void)handlePersonalizationRequest:(id)request tatsuSigningServer:(id)server;
- (void)qcancelLayer2WatchdogTimer;
- (void)queueAppleProperty:(unsigned int)property;
- (void)queueInfoProperty:(unsigned int)property;
- (void)removeAsset:(id)asset;
- (void)respondIM4M:(id)m;
- (void)setLayer2WatchdogTimer:(id)timer timeoutMS:(unint64_t)s;
- (void)solicitLogsDynamicAssetForEndpoint:(id)endpoint;
- (void)solicitLogsDynamicAssetForTTR;
@end

@implementation UARPUploaderEndpoint

- (UARPUploaderEndpoint)initWithUARPAccessory:(id)accessory endpointID:(unsigned __int16)d uploader:(id)uploader
{
  v62 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  uploaderCopy = uploader;
  v59.receiver = self;
  v59.super_class = UARPUploaderEndpoint;
  v11 = [(UARPUploaderEndpoint *)&v59 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_accessory, accessory);
    objc_storeWeak(&v12->_uploader, uploaderCopy);
    v13 = os_log_create("com.apple.accessoryupdater.uarp", "uploader");
    log = v12->_log;
    v12->_log = v13;

    v15 = dispatch_queue_create("com.apple.UARPUploaderUARP.accessory", 0);
    queue = v12->_queue;
    v12->_queue = v15;

    v17 = dispatch_queue_create("com.apple.UARPUploaderEndpoint.personalization", 0);
    personalizationQueue = v12->_personalizationQueue;
    v12->_personalizationQueue = v17;

    v12->_uarpEndpoint.pUpstreamEP = 0;
    *&v12->_uarpEndpoint.stagedFirmwareVersion.minor = 0u;
    *&v12->_uarpEndpoint.activeFirmwareVersion.minor = 0u;
    *&v12->_uarpEndpoint.pTxQueuePendingResponses = 0u;
    *&v12->_uarpEndpoint.pStreamingCtx = 0u;
    *&v12->_uarpEndpoint.uarpStats.packetsOutOfOrder = 0u;
    *&v12->_uarpEndpoint.lastRxMsgID = 0u;
    *&v12->_uarpEndpoint.selectedProtocolVersion = 0u;
    *&v12->_uarpEndpoint._options.upgradeOnly = 0u;
    *&v12->_uarpEndpoint._options.responseTimeout = 0u;
    *&v12->_uarpEndpoint._options.maxTxPayloadLength = 0u;
    v12->_downstreamID = d;
    modelNumber = [accessoryCopy modelNumber];
    v20 = [UARPSupportedAccessory findByAppleModelNumber:modelNumber];

    *&v12->_uarpOptions.maxTxPayloadLength = 0u;
    *&v12->_uarpOptions.responseTimeout = 0u;
    *&v12->_uarpOptions.upgradeOnly = 0;
    *&v12->_uarpOptions.maxTxPayloadLength = 0x800000008000;
    v12->_uarpOptions.payloadWindowLength = 0x8000;
    v12->_uarpOptions.protocolVersion = 7;
    v12->_uarpOptions.reofferFirmwareOnSync = 0;
    *&v12->_uarpOptions.responseTimeout = 267144;
    if (v20)
    {
      v12->_uarpOptions.responseTimeout = [v20 uploaderResponseTimeout];
      v12->_uarpOptions.retryLimit = [v20 uploaderRetryLimit];
    }

    productGroup = [accessoryCopy productGroup];
    v24 = 0;
    if (productGroup)
    {
      v22 = productGroup;
      productNumber = [accessoryCopy productNumber];

      if (productNumber)
      {
        v24 = 1;
      }
    }

    v12->_uarpOptions.endpointType = v24;
    v12->_uarpVersion = 0;
    if ([v20 reofferFirmwareOnSync])
    {
      v12->_uarpOptions.reofferFirmwareOnSync = 1;
    }

    v12->_uarpOptions.upgradeOnly = 1;
    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    txFirmwareAssets = v12->_txFirmwareAssets;
    v12->_txFirmwareAssets = v25;

    v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
    txDynamicAssets = v12->_txDynamicAssets;
    v12->_txDynamicAssets = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    rxDynamicAssets = v12->_rxDynamicAssets;
    v12->_rxDynamicAssets = v29;

    v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
    downstreamEndpoints = v12->_downstreamEndpoints;
    v12->_downstreamEndpoints = v31;

    v33 = objc_alloc_init(MEMORY[0x277CBEB58]);
    infoPropertiesToQuery = v12->_infoPropertiesToQuery;
    v12->_infoPropertiesToQuery = v33;

    v35 = objc_alloc_init(MEMORY[0x277CBEB58]);
    applePropertiesToQuery = v12->_applePropertiesToQuery;
    v12->_applePropertiesToQuery = v35;

    uUID = [MEMORY[0x277CCAD78] UUID];
    uuid = v12->_uuid;
    v12->_uuid = uUID;

    v39 = v12->_log;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = v12->_uuid;
      v41 = v39;
      uUIDString = [(NSUUID *)v40 UUIDString];
      *buf = 138412290;
      v61 = uUIDString;
      _os_log_impl(&dword_247AA7000, v41, OS_LOG_TYPE_INFO, "New Remote Endpoint: UUID <%@>", buf, 0xCu);
    }

    getID = [(UARPAccessory *)v12->_accessory getID];
    modelIdentifier = [getID modelIdentifier];
    uUIDString2 = [(NSUUID *)v12->_uuid UUIDString];
    v46 = UARPStringPcapFilesFilepath();
    v47 = UARPUniqueFilename(modelIdentifier, uUIDString2, v46, 0, @".pcap");

    v48 = v12->_log;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      [(UARPUploaderEndpoint *)v47 initWithUARPAccessory:v48 endpointID:v49 uploader:v50, v51, v52, v53, v54];
    }

    v55 = [[UARPPacketDumper alloc] initWithFileName:v47];
    packetDumper = v12->_packetDumper;
    v12->_packetDumper = v55;
  }

  v57 = *MEMORY[0x277D85DE8];
  return v12;
}

- (UARPUploaderEndpoint)initWithUARPAccessory:(id)accessory uploader:(id)uploader
{
  accessoryCopy = accessory;
  uploaderCopy = uploader;
  v8 = [(UARPUploaderEndpoint *)self initWithUARPAccessory:accessoryCopy endpointID:0 uploader:uploaderCopy];
  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = UARPStringPcapFilesFilepath();
    UARPCleanupAgedFiles(v10, 259200.0);

    v11 = UARPStringLogsDirectoryFilePath();
    UARPCleanupAgedFiles(v11, 259200.0);

    v12 = UARPStringCrashAnalyticsDirectoryFilePath();
    UARPCleanupAgedFiles(v12, 604800.0);

    [uploaderCopy ageOutUnprocessedDynamicAssets];
    v13 = UARPStringSysdiagnoseDirectoryFilePath();
    UARPCleanupAgedFiles(v13, 604800.0);

    objc_autoreleasePoolPop(v9);
  }

  return v8;
}

- (void)dealloc
{
  packetDumper = self->_packetDumper;
  self->_packetDumper = 0;

  layer2WatchdogTimer = self->_layer2WatchdogTimer;
  if (layer2WatchdogTimer)
  {
    dispatch_source_cancel(layer2WatchdogTimer);
    v5 = self->_layer2WatchdogTimer;
    self->_layer2WatchdogTimer = 0;
  }

  v6.receiver = self;
  v6.super_class = UARPUploaderEndpoint;
  [(UARPUploaderEndpoint *)&v6 dealloc];
}

- (NSArray)txFirmwareAssets
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [MEMORY[0x277CBEA60] arrayWithArray:selfCopy->_txFirmwareAssets];
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSArray)txDynamicAssets
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [MEMORY[0x277CBEA60] arrayWithArray:selfCopy->_txDynamicAssets];
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSArray)rxDynamicAssets
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [MEMORY[0x277CBEA60] arrayWithArray:selfCopy->_rxDynamicAssets];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)addTxFirmwareAsset:(id)asset
{
  v22 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = assetCopy;
    _os_log_impl(&dword_247AA7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Add Tx Firmware Asset %@", buf, 0xCu);
  }

  if (assetCopy)
  {
    if ([(NSMutableArray *)self->_txFirmwareAssets count])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [UARPUploaderEndpoint addTxFirmwareAsset:];
      }

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v5 = self->_txFirmwareAssets;
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        v8 = v6;
        v9 = *v16;
        v10 = MEMORY[0x277D86220];
        *&v7 = 138412290;
        v14 = v7;
        do
        {
          v11 = 0;
          do
          {
            if (*v16 != v9)
            {
              objc_enumerationMutation(v5);
            }

            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              v12 = *(*(&v15 + 1) + 8 * v11);
              *buf = v14;
              v21 = v12;
              _os_log_impl(&dword_247AA7000, v10, OS_LOG_TYPE_INFO, "Pending Tx Firmware Asset %@", buf, 0xCu);
            }

            ++v11;
          }

          while (v8 != v11);
          v8 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v8);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [UARPUploaderEndpoint addTxFirmwareAsset:];
      }
    }

    [(NSMutableArray *)self->_txFirmwareAssets addObject:assetCopy, v14, v15];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_247AA7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Add Tx Firmware Asset...  is null? fail", buf, 2u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)addTxDynamicAsset:(id)asset
{
  v8 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = assetCopy;
    _os_log_impl(&dword_247AA7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Add Tx Dynamic Asset %@", &v6, 0xCu);
  }

  [(NSMutableArray *)self->_txDynamicAssets addObject:assetCopy];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [UARPUploaderEndpoint addTxDynamicAsset:?];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)addRxDynamicAsset:(id)asset
{
  v8 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = assetCopy;
    _os_log_impl(&dword_247AA7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Add Rx Dynamic Asset %@", &v6, 0xCu);
  }

  [(NSMutableArray *)self->_rxDynamicAssets addObject:assetCopy];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [UARPUploaderEndpoint addRxDynamicAsset:?];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeAsset:(id)asset
{
  txFirmwareAssets = self->_txFirmwareAssets;
  assetCopy = asset;
  [(NSMutableArray *)txFirmwareAssets removeObject:assetCopy];
  [(NSMutableArray *)self->_txDynamicAssets removeObject:assetCopy];
}

- (id)findMatch:(id)match
{
  v41 = *MEMORY[0x277D85DE8];
  matchCopy = match;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = self->_txFirmwareAssets;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v35 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v34 + 1) + 8 * v9);
      asset = [v10 asset];
      v12 = [matchCopy isEqual:asset];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v34 objects:v40 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = self->_txDynamicAssets;
    v13 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v31;
LABEL_11:
      v16 = 0;
      while (1)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v30 + 1) + 8 * v16);
        asset2 = [v10 asset];
        v18 = [matchCopy isEqual:asset2];

        if (v18)
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v30 objects:v39 count:16];
          if (v14)
          {
            goto LABEL_11;
          }

          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v5 = self->_rxDynamicAssets;
      v19 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v26 objects:v38 count:16];
      if (!v19)
      {
        goto LABEL_27;
      }

      v20 = *v27;
LABEL_19:
      v21 = 0;
      while (1)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * v21);
        asset3 = [v10 asset];
        v23 = [matchCopy isEqual:asset3];

        if (v23)
        {
          break;
        }

        if (v19 == ++v21)
        {
          v19 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v26 objects:v38 count:16];
          if (v19)
          {
            goto LABEL_19;
          }

          goto LABEL_27;
        }
      }
    }
  }

  v19 = v10;
LABEL_27:

  v24 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)handleLayer2WatchdogTimer:(id)timer
{
  layer2WatchdogTimer = self->_layer2WatchdogTimer;
  self->_layer2WatchdogTimer = 0;
  timerCopy = timer;

  [timerCopy watchdogExpireLayer2:self];
}

- (void)cancelLayer2WatchdogTimer
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__UARPUploaderEndpoint_cancelLayer2WatchdogTimer__block_invoke;
  block[3] = &unk_278EC1948;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)qcancelLayer2WatchdogTimer
{
  layer2WatchdogTimer = self->_layer2WatchdogTimer;
  if (layer2WatchdogTimer)
  {
    dispatch_source_cancel(layer2WatchdogTimer);
    v4 = self->_layer2WatchdogTimer;
    self->_layer2WatchdogTimer = 0;
  }
}

- (void)setLayer2WatchdogTimer:(id)timer timeoutMS:(unint64_t)s
{
  timerCopy = timer;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__UARPUploaderEndpoint_setLayer2WatchdogTimer_timeoutMS___block_invoke;
  block[3] = &unk_278EC2530;
  v10 = timerCopy;
  sCopy = s;
  block[4] = self;
  v8 = timerCopy;
  dispatch_async(queue, block);
}

void __57__UARPUploaderEndpoint_setLayer2WatchdogTimer_timeoutMS___block_invoke(uint64_t a1)
{
  [*(a1 + 32) qcancelLayer2WatchdogTimer];
  v2 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(*(a1 + 32) + 16));
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  if ((1000000 * *(a1 + 48)) <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 1000000 * *(a1 + 48);
  }

  v6 = dispatch_time(0, v5);
  dispatch_source_set_timer(*(*(a1 + 32) + 32), v6, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
  objc_initWeak(&location, *(a1 + 32));
  v7 = *(*(a1 + 32) + 32);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __57__UARPUploaderEndpoint_setLayer2WatchdogTimer_timeoutMS___block_invoke_2;
  handler[3] = &unk_278EC2508;
  objc_copyWeak(&v10, &location);
  v9 = *(a1 + 40);
  dispatch_source_set_event_handler(v7, handler);
  dispatch_resume(*(*(a1 + 32) + 32));

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __57__UARPUploaderEndpoint_setLayer2WatchdogTimer_timeoutMS___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleLayer2WatchdogTimer:*(a1 + 32)];
}

- (void)solicitLogsDynamicAssetForEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  appleModelNumber = [endpointCopy appleModelNumber];
  v5 = [UARPSupportedAccessory findByAppleModelNumber:appleModelNumber];

  v6 = [[UARPAssetTag alloc] initWithString:@"LOGS"];
  if ([v5 ttrSolicitLogs])
  {
    WeakRetained = objc_loadWeakRetained(&self->_uploader);
    [WeakRetained solicitDynamicAssetForRemoteEndpoint:endpointCopy assetTag:v6 internalSolicit:1 error:0];
  }
}

- (void)solicitLogsDynamicAssetForTTR
{
  v14 = *MEMORY[0x277D85DE8];
  [(UARPUploaderEndpoint *)self solicitLogsDynamicAssetForEndpoint:self];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_downstreamEndpoints;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

        [(UARPUploaderEndpoint *)self solicitLogsDynamicAssetForEndpoint:*(*(&v9 + 1) + 8 * v7++), v9];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)downstreamEndpoint:(unsigned __int16)endpoint
{
  endpointCopy = endpoint;
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_downstreamEndpoints;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 downstreamID] == endpointCopy)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)hasFullPersonality:(id)personality
{
  personalityCopy = personality;
  serialNumber = [(UARPUploaderEndpoint *)self serialNumber];

  if (!serialNumber)
  {
    goto LABEL_10;
  }

  appleModelNumber = [(UARPUploaderEndpoint *)self appleModelNumber];

  if (!appleModelNumber)
  {
    goto LABEL_10;
  }

  hwFusingType = [(UARPUploaderEndpoint *)self hwFusingType];

  if (hwFusingType && ([(UARPUploaderEndpoint *)self firmwareVersion], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    if ([personalityCopy isTapToRadarMode])
    {
      [personalityCopy solicitDynamicAssetsForTapToRadar:self];
    }

    if ([(UARPUploaderEndpoint *)self isDownstreamEndpoint])
    {
      [personalityCopy offerFirmwareAssetToDownstreamEndpoint:self error:0];
    }

    v9 = 1;
  }

  else
  {
LABEL_10:
    v9 = 0;
  }

  return v9;
}

- (void)dumpTxUARPMsg:(id)msg
{
  packetDumper = self->_packetDumper;
  if (packetDumper)
  {
    accessory = self->_accessory;
    msgCopy = msg;
    getID = [(UARPAccessory *)accessory getID];
    [(UARPPacketDumper *)packetDumper dump:msgCopy accessoryID:getID uarpStatus:0 direction:0];
  }
}

- (void)dumpRxUARPMsg:(id)msg
{
  packetDumper = self->_packetDumper;
  if (packetDumper)
  {
    accessory = self->_accessory;
    msgCopy = msg;
    getID = [(UARPAccessory *)accessory getID];
    [(UARPPacketDumper *)packetDumper dump:msgCopy accessoryID:getID uarpStatus:0 direction:1];
  }
}

- (void)abandonRxDynamicAsset:(id)asset
{
  v8 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = assetCopy;
    _os_log_impl(&dword_247AA7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Remove Rx Dynamic Asset %@", &v6, 0xCu);
  }

  if ([assetCopy internalSolicit])
  {
    [(NSMutableArray *)self->_rxDynamicAssets removeObject:assetCopy];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [UARPUploaderEndpoint addRxDynamicAsset:?];
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = assetCopy;
      _os_log_impl(&dword_247AA7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Do not abandon internally solicited Rx Dynamic Asset %@", &v6, 0xCu);
    }

    [assetCopy setUarpSuperBinary:0];
    [assetCopy setUarpPlatformAsset:0];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)abandonTxDynamicAsset:(id)asset
{
  v8 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = assetCopy;
    _os_log_impl(&dword_247AA7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Remove Tx Dynamic Asset %@", &v6, 0xCu);
  }

  [(NSMutableArray *)self->_txDynamicAssets removeObject:assetCopy];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [UARPUploaderEndpoint addTxDynamicAsset:?];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)queueInfoProperty:(unsigned int)property
{
  obj = self;
  objc_sync_enter(obj);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:property];
  [(NSMutableSet *)obj->_infoPropertiesToQuery addObject:v4];

  objc_sync_exit(obj);
}

- (void)queueAppleProperty:(unsigned int)property
{
  obj = self;
  objc_sync_enter(obj);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:property];
  [(NSMutableSet *)obj->_applePropertiesToQuery addObject:v4];

  objc_sync_exit(obj);
}

- (id)idealTxFirmwareAsset
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = self->_txFirmwareAssets;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v24;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        if (v5)
        {
          v21 = 0;
          v22 = 0;
          assetVersion = [v8 assetVersion];
          LODWORD(v21) = [assetVersion majorVersion];

          assetVersion2 = [v8 assetVersion];
          HIDWORD(v21) = [assetVersion2 minorVersion];

          assetVersion3 = [v8 assetVersion];
          HIDWORD(v22) = [assetVersion3 buildVersion];

          assetVersion4 = [v8 assetVersion];
          LODWORD(v22) = [assetVersion4 releaseVersion];

          assetVersion5 = [v5 assetVersion];
          v20[0] = [assetVersion5 majorVersion];

          assetVersion6 = [v5 assetVersion];
          v20[1] = [assetVersion6 minorVersion];

          assetVersion7 = [v5 assetVersion];
          v20[3] = [assetVersion7 buildVersion];

          assetVersion8 = [v5 assetVersion];
          v20[2] = [assetVersion8 releaseVersion];

          if (uarpVersionCompare(v20, &v21) == 1)
          {
            v17 = v8;

            v5 = v17;
          }
        }

        else
        {
          v5 = v8;
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)im4mAssetReceived:(id)received
{
  v44 = *MEMORY[0x277D85DE8];
  receivedCopy = received;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    [(UARPUploaderEndpoint *)log im4mAssetReceived:v6, v7, v8, v9, v10, v11, v12];
  }

  asset = [receivedCopy asset];
  v14 = [asset id];
  v15 = [v14 tag];

  v16 = uarpAssetTagStructPersonalization();
  v17 = [[UARPAssetTag alloc] initWithChar1:*v16 char2:v16[1] char3:v16[2] char4:v16[3]];
  v18 = [v15 isEqual:v17];
  if (v18)
  {
    asset2 = [receivedCopy asset];
    v20 = [asset2 id];
    localURL = [v20 localURL];
    v22 = [localURL copy];

    v23 = [MEMORY[0x277CBEBC0] URLWithString:@"https://gs.apple.com:443"];
    v24 = [[UARPDynamicAssetPersonalization alloc] initWithEndpoint:self url:v22 tatsuServerURL:v23];
    v39 = 0;
    LOBYTE(localURL) = [(UARPDynamicAssetPersonalization *)v24 processDynamicAsset:&v39];
    v25 = v39;
    v26 = v25;
    if (localURL)
    {
      v36 = v25;
      v37 = v22;
      [receivedCopy setPendingTssRequest:v24];
      name = [@"com.apple.uarp.internal.personalization" UTF8String];
      appleModelNumber = [(UARPUploaderEndpoint *)self appleModelNumber];
      v28 = [UARPSupportedAccessory findByAppleModelNumber:appleModelNumber];

      if ([v28 supportsAuthListingInternally])
      {
        [(UARPUploaderEndpoint *)self handlePersonalizationRequest];
      }

      else
      {
        personalizationNotification = [v28 personalizationNotification];

        if (personalizationNotification)
        {
          personalizationNotification2 = [v28 personalizationNotification];
          name = [personalizationNotification2 UTF8String];
        }

        v31 = self->_log;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = v31;
          appleModelNumber2 = [(UARPUploaderEndpoint *)self appleModelNumber];
          *buf = 136315394;
          v41 = name;
          v42 = 2112;
          v43 = appleModelNumber2;
          _os_log_impl(&dword_247AA7000, v32, OS_LOG_TYPE_INFO, "posting bsd notification to personalization helper; %s for %@", buf, 0x16u);
        }

        notify_post(name);
      }

      v26 = v36;
      v22 = v37;
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPUploaderEndpoint im4mAssetReceived:];
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [UARPUploaderEndpoint im4mAssetReceived:];
  }

  v34 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)handlePersonalizationRequest
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_5(&dword_247AA7000, self, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __52__UARPUploaderEndpoint_handlePersonalizationRequest__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"https://gs.apple.com:443"];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(*(a1 + 32) + 264);
  v3 = [obj countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v17;
    *&v4 = 136315138;
    v14 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = *(*(a1 + 32) + 8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v21 = "[UARPUploaderEndpoint handlePersonalizationRequest]_block_invoke";
          v22 = 2112;
          v23 = v8;
          _os_log_impl(&dword_247AA7000, v9, OS_LOG_TYPE_INFO, "%s: Check asset for pending tss request, %@", buf, 0x16u);
        }

        v10 = [v8 pendingTssRequest];

        v11 = *(*(a1 + 32) + 8);
        v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
        if (v10)
        {
          if (v12)
          {
            *buf = v14;
            v21 = "[UARPUploaderEndpoint handlePersonalizationRequest]_block_invoke";
            _os_log_impl(&dword_247AA7000, v11, OS_LOG_TYPE_INFO, "%s: Check asset; pending tss request", buf, 0xCu);
          }

          [*(a1 + 32) handlePersonalizationRequest:v8 tatsuSigningServer:v2];
        }

        else if (v12)
        {
          *buf = v14;
          v21 = "[UARPUploaderEndpoint handlePersonalizationRequest]_block_invoke";
          _os_log_impl(&dword_247AA7000, v11, OS_LOG_TYPE_INFO, "%s: Check asset; no pending tss request", buf, 0xCu);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handlePersonalizationRequest:(id)request tatsuSigningServer:(id)server
{
  v26 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  serverCopy = server;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v23 = "[UARPUploaderEndpoint handlePersonalizationRequest:tatsuSigningServer:]";
    v24 = 2112;
    selfCopy3 = self;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "%s: Handling TSS request for %@", buf, 0x16u);
  }

  modelNumber = [(UARPAccessory *)self->_accessory modelNumber];
  v10 = [UARPSupportedAccessory findByAppleModelNumber:modelNumber];

  LODWORD(modelNumber) = [v10 supportsAuthListingInternally];
  pendingTssRequest = [requestCopy pendingTssRequest];
  v12 = pendingTssRequest;
  if (modelNumber)
  {
    v21 = 0;
    v13 = [pendingTssRequest tssRequest:serverCopy error:&v21 authListed:1];
    v14 = v21;
  }

  else
  {
    v20 = 0;
    v13 = [pendingTssRequest tssRequest:serverCopy error:&v20 authListed:0];
    v14 = v20;
  }

  v15 = v14;

  if ((v13 & 1) == 0)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPUploaderEndpoint handlePersonalizationRequest:tatsuSigningServer:];
    }

    WeakRetained = objc_loadWeakRetained(&self->_uploader);
    [WeakRetained rescindAssets:self];
  }

  v17 = self->_log;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v23 = "[UARPUploaderEndpoint handlePersonalizationRequest:tatsuSigningServer:]";
    v24 = 2112;
    selfCopy3 = self;
    _os_log_impl(&dword_247AA7000, v17, OS_LOG_TYPE_INFO, "%s: Respond with IM4M %@", buf, 0x16u);
  }

  [(UARPUploaderEndpoint *)self respondIM4M:requestCopy];
  v18 = self->_log;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v23 = "[UARPUploaderEndpoint handlePersonalizationRequest:tatsuSigningServer:]";
    v24 = 2112;
    selfCopy3 = self;
    _os_log_impl(&dword_247AA7000, v18, OS_LOG_TYPE_INFO, "%s: Remove received IM4M asset from Rx list %@", buf, 0x16u);
  }

  [(NSMutableArray *)self->_rxDynamicAssets removeObject:requestCopy];

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)handlePersonalizationResponse:(id)response
{
  v59 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    downstreamID = self->_downstreamID;
    *buf = 136315650;
    v56 = "[UARPUploaderEndpoint handlePersonalizationResponse:]";
    v57 = 1024;
    *v58 = downstreamID;
    *&v58[4] = 2112;
    *&v58[6] = self;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "%s: Checking pending TSS requests for (ds id is %u) %@", buf, 0x1Cu);
  }

  if (responseCopy)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v6 = self->_rxDynamicAssets;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v50;
      *&v8 = 136315394;
      v42 = v8;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v50 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v49 + 1) + 8 * i);
          pendingTssRequest = [v12 pendingTssRequest];

          v14 = self->_log;
          v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
          if (pendingTssRequest)
          {
            if (v15)
            {
              *buf = v42;
              v56 = "[UARPUploaderEndpoint handlePersonalizationResponse:]";
              v57 = 2112;
              *v58 = self;
              _os_log_impl(&dword_247AA7000, v14, OS_LOG_TYPE_INFO, "%s: Pending TSS requests for %@", buf, 0x16u);
            }

            v16 = self->_log;
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = v42;
              v56 = "[UARPUploaderEndpoint handlePersonalizationResponse:]";
              v57 = 2112;
              *v58 = responseCopy;
              _os_log_impl(&dword_247AA7000, v16, OS_LOG_TYPE_INFO, "%s: Pending TSS requests for %@", buf, 0x16u);
            }

            v17 = self->_log;
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v18 = v17;
              pendingTssRequest2 = [v12 pendingTssRequest];
              *buf = v42;
              v56 = "[UARPUploaderEndpoint handlePersonalizationResponse:]";
              v57 = 2112;
              *v58 = pendingTssRequest2;
              _os_log_impl(&dword_247AA7000, v18, OS_LOG_TYPE_INFO, "%s: Pending TSS requests for %@", buf, 0x16u);
            }

            pendingTssRequest3 = [v12 pendingTssRequest];
            v21 = [pendingTssRequest3 compareTssResponse:responseCopy];

            if (v21)
            {
              v34 = self->_log;
              if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
              {
                *buf = v42;
                v56 = "[UARPUploaderEndpoint handlePersonalizationResponse:]";
                v57 = 2112;
                *v58 = self;
                _os_log_impl(&dword_247AA7000, v34, OS_LOG_TYPE_INFO, "%s: Matched TSS response for %@", buf, 0x16u);
              }

              pendingTssRequest4 = [v12 pendingTssRequest];
              v37 = [pendingTssRequest4 processTssResponse:responseCopy];

              if ((v37 & 1) == 0)
              {
                if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
                {
                  [UARPUploaderEndpoint handlePersonalizationResponse:];
                }

                WeakRetained = objc_loadWeakRetained(&self->_uploader);
                [WeakRetained rescindAssets:self];
              }

              v39 = self->_log;
              if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
              {
                *buf = v42;
                v56 = "[UARPUploaderEndpoint handlePersonalizationResponse:]";
                v57 = 2112;
                *v58 = self;
                _os_log_impl(&dword_247AA7000, v39, OS_LOG_TYPE_INFO, "%s: Respond with IM4M %@", buf, 0x16u);
              }

              [(UARPUploaderEndpoint *)self respondIM4M:v12];
              v33 = 1;
              goto LABEL_47;
            }
          }

          else if (v15)
          {
            *buf = v42;
            v56 = "[UARPUploaderEndpoint handlePersonalizationResponse:]";
            v57 = 2112;
            *v58 = v12;
            _os_log_impl(&dword_247AA7000, v14, OS_LOG_TYPE_INFO, "%s: No pending TSS requests for %@", buf, 0x16u);
          }
        }

        v9 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v49 objects:v54 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v22 = self->_log;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v56 = "[UARPUploaderEndpoint handlePersonalizationResponse:]";
      v57 = 2112;
      *v58 = self;
      _os_log_impl(&dword_247AA7000, v22, OS_LOG_TYPE_INFO, "%s: No pending/matching TSS requests on direct endpoint for %@", buf, 0x16u);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v6 = self->_downstreamEndpoints;
    v23 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v23)
    {
      v25 = v23;
      v26 = *v46;
      *&v24 = 136315650;
      v43 = v24;
      do
      {
        v27 = v6;
        for (j = 0; j != v25; ++j)
        {
          if (*v46 != v26)
          {
            objc_enumerationMutation(v27);
          }

          v29 = *(*(&v45 + 1) + 8 * j);
          v30 = self->_log;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = v30;
            downstreamID = [v29 downstreamID];
            *buf = v43;
            v56 = "[UARPUploaderEndpoint handlePersonalizationResponse:]";
            v57 = 1024;
            *v58 = downstreamID;
            *&v58[4] = 2112;
            *&v58[6] = self;
            _os_log_impl(&dword_247AA7000, v31, OS_LOG_TYPE_INFO, "%s: Checking downstream endpoint (%u) for TSS requests for %@", buf, 0x1Cu);
          }

          [v29 handlePersonalizationResponse:{responseCopy, v43}];
        }

        v6 = v27;
        v25 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v25);
    }
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPUploaderEndpoint handlePersonalizationResponse:];
    }

    v6 = objc_loadWeakRetained(&self->_uploader);
    [(NSMutableArray *)v6 rescindAssets:self];
  }

  v33 = 0;
LABEL_47:

  v40 = *MEMORY[0x277D85DE8];
  return v33;
}

- (void)respondIM4M:(id)m
{
  mCopy = m;
  pendingTssRequest = [mCopy pendingTssRequest];
  tagIM4M = [pendingTssRequest tagIM4M];
  v7 = uarpDynamicAssetURL(tagIM4M);

  pendingTssRequest2 = [mCopy pendingTssRequest];
  v19 = 0;
  v9 = [pendingTssRequest2 prepareDynamicAsset:v7 error:&v19];
  v10 = v19;

  if (v9)
  {
    v11 = [UARPAssetID alloc];
    pendingTssRequest3 = [mCopy pendingTssRequest];
    tagIM4M2 = [pendingTssRequest3 tagIM4M];
    v14 = [(UARPAssetID *)v11 initWithLocationType:0 assetTag:tagIM4M2 url:v7];

    v15 = [[UARPAsset alloc] initWithID:v14];
    WeakRetained = objc_loadWeakRetained(&self->_uploader);
    pendingTssRequest4 = [mCopy pendingTssRequest];
    tagIM4M3 = [pendingTssRequest4 tagIM4M];
    [WeakRetained offerDynamicAssetToAccessory:self asset:v15 internalOffer:1 tag:tagIM4M3];
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPUploaderEndpoint respondIM4M:];
    }

    v14 = objc_loadWeakRetained(&self->_uploader);
    [(UARPAssetID *)v14 rescindAssets:self];
  }
}

- (id)pendingTssRequests
{
  v62 = *MEMORY[0x277D85DE8];
  v45 = objc_opt_new();
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    rxDynamicAssets = self->_rxDynamicAssets;
    v5 = log;
    *buf = 136315394;
    v56 = "[UARPUploaderEndpoint pendingTssRequests]";
    v57 = 2048;
    v58 = [(NSMutableArray *)rxDynamicAssets count];
    _os_log_impl(&dword_247AA7000, v5, OS_LOG_TYPE_INFO, "%s: Pending TSS requests, there is %lu rx dynamic assets", buf, 0x16u);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = self->_rxDynamicAssets;
  v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v50 objects:v61 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v51;
    *&v7 = 136315394;
    v43 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v51 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v50 + 1) + 8 * i);
        pendingTssRequest = [v11 pendingTssRequest];

        v13 = self->_log;
        if (pendingTssRequest)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = v13;
            pendingTssRequest2 = [v11 pendingTssRequest];
            tatsuServerURL = [pendingTssRequest2 tatsuServerURL];
            pendingTssRequest3 = [v11 pendingTssRequest];
            options = [pendingTssRequest3 options];
            *buf = 136315650;
            v56 = "[UARPUploaderEndpoint pendingTssRequests]";
            v57 = 2112;
            v58 = tatsuServerURL;
            v59 = 2112;
            v60 = options;
            _os_log_impl(&dword_247AA7000, v14, OS_LOG_TYPE_INFO, "%s: Pending TSS request for Signing Server %@ is %@", buf, 0x20u);
          }

          v19 = MEMORY[0x277CBEB38];
          pendingTssRequest4 = [v11 pendingTssRequest];
          options2 = [pendingTssRequest4 options];
          v22 = [v19 dictionaryWithDictionary:options2];

          pendingTssRequest5 = [v11 pendingTssRequest];
          tatsuServerURL2 = [pendingTssRequest5 tatsuServerURL];
          absoluteString = [tatsuServerURL2 absoluteString];
          [v22 setObject:absoluteString forKeyedSubscript:@"tatsuSigningServer"];

          v26 = self->_log;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = v43;
            v56 = "[UARPUploaderEndpoint pendingTssRequests]";
            v57 = 2112;
            v58 = v22;
            _os_log_error_impl(&dword_247AA7000, v26, OS_LOG_TYPE_ERROR, "%s: Modified Pending TSS request is %@", buf, 0x16u);
          }

          v27 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v22];
          [v45 addObject:v27];
        }

        else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = v43;
          v56 = "[UARPUploaderEndpoint pendingTssRequests]";
          v57 = 2112;
          v58 = v11;
          _os_log_error_impl(&dword_247AA7000, v13, OS_LOG_TYPE_ERROR, "%s: No pending TSS request on %@", buf, 0x16u);
        }
      }

      v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v50 objects:v61 count:16];
    }

    while (v8);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v28 = self->_downstreamEndpoints;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v47;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v47 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v46 + 1) + 8 * j);
        v34 = self->_log;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v56 = "[UARPUploaderEndpoint pendingTssRequests]";
          v57 = 2112;
          v58 = v33;
          _os_log_impl(&dword_247AA7000, v34, OS_LOG_TYPE_INFO, "%s: Checking for pending TSS requests on %@", buf, 0x16u);
        }

        pendingTssRequests = [v33 pendingTssRequests];
        v36 = self->_log;
        v37 = os_log_type_enabled(v36, OS_LOG_TYPE_INFO);
        if (pendingTssRequests)
        {
          if (v37)
          {
            v38 = v36;
            v39 = [pendingTssRequests count];
            *buf = 136315650;
            v56 = "[UARPUploaderEndpoint pendingTssRequests]";
            v57 = 2048;
            v58 = v39;
            v59 = 2112;
            v60 = v33;
            _os_log_impl(&dword_247AA7000, v38, OS_LOG_TYPE_INFO, "%s: Found %lu for pending TSS requests on %@", buf, 0x20u);
          }

          [v45 addObjectsFromArray:pendingTssRequests];
        }

        else if (v37)
        {
          *buf = 136315394;
          v56 = "[UARPUploaderEndpoint pendingTssRequests]";
          v57 = 2112;
          v58 = v33;
          _os_log_impl(&dword_247AA7000, v36, OS_LOG_TYPE_INFO, "%s: No pending TSS request on downstream endpoint %@", buf, 0x16u);
        }
      }

      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v30);
  }

  v40 = [MEMORY[0x277CBEA60] arrayWithArray:v45];

  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

- (UARPUploaderUARP)uploader
{
  WeakRetained = objc_loadWeakRetained(&self->_uploader);

  return WeakRetained;
}

- (void)initWithUARPAccessory:(uint64_t)a3 endpointID:(uint64_t)a4 uploader:(uint64_t)a5 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_5(&dword_247AA7000, a2, a3, "Endpoint Packet Capture at %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)addTxDynamicAsset:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_5(&dword_247AA7000, MEMORY[0x277D86220], v1, "Tx Dynamic Assets %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addRxDynamicAsset:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_5(&dword_247AA7000, MEMORY[0x277D86220], v1, "Rx Dynamic Assets %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)im4mAssetReceived:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_5(&dword_247AA7000, a1, a3, "%s: enter", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)im4mAssetReceived:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)im4mAssetReceived:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handlePersonalizationResponse:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handlePersonalizationResponse:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end