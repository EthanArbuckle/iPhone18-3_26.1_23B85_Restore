@interface UARPUploaderUARP
- (BOOL)accessoryReachable:(id)a3 error:(id *)a4;
- (BOOL)accessoryReachable:(id)a3 remoteEndpoint:(id)a4 error:(id *)a5;
- (BOOL)accessoryUnreachable:(id)a3 error:(id *)a4;
- (BOOL)accessoryUnreachable:(id)a3 remoteEndpoint:(id)a4 error:(id *)a5;
- (BOOL)addAccessory:(id)a3 error:(id *)a4;
- (BOOL)applyStagedAssetsForAccessory:(id)a3 error:(id *)a4;
- (BOOL)cancelAssetStagingForAccessory:(id)a3 asset:(id)a4;
- (BOOL)genericNotification:(id)a3 notificationName:(id)a4 error:(id *)a5;
- (BOOL)handlePowerSource:(id)a3 currentCapacity:(unint64_t)a4 maxCapacity:(unint64_t)a5;
- (BOOL)offerAssetToAccessory:(id)a3 asset:(id)a4 downstreamID:(unsigned __int16)a5 error:(id *)a6;
- (BOOL)offerAssetToAccessory:(id)a3 asset:(id)a4 error:(id *)a5;
- (BOOL)offerDynamicAssetToAccessory:(id)a3 asset:(id)a4 error:(id *)a5;
- (BOOL)offerFirmwareAssetToDownstreamEndpoint:(id)a3 error:(id *)a4;
- (BOOL)pauseAssetTransfersForAccessory:(id)a3;
- (BOOL)qProcessCrshDynamicAsset:(id)a3;
- (BOOL)qProcessMticDynamicAsset:(id)a3;
- (BOOL)recvDataFromAccessory:(id)a3 data:(id)a4 error:(id *)a5;
- (BOOL)recvDataFromEndpoint:(id)a3 data:(id)a4 error:(id *)a5;
- (BOOL)removeAccessory:(id)a3 error:(id *)a4;
- (BOOL)rescindStagedAssetsForAccessory:(id)a3 error:(id *)a4;
- (BOOL)resumeAssetTransfersForAccessory:(id)a3;
- (BOOL)setController:(id)a3;
- (BOOL)shouldSendFirmwareStagingProgressForAccessory:(id)a3 asset:(id)a4;
- (BOOL)solicitDynamicAssetForAccessory:(id)a3 asset:(id)a4 error:(id *)a5;
- (BOOL)solicitDynamicAssetForAccessory:(id)a3 asset:(id)a4 internalSolicit:(BOOL)a5 error:(id *)a6;
- (BOOL)solicitDynamicAssetForAccessory:(id)a3 assetTag:(id)a4 error:(id *)a5;
- (BOOL)solicitDynamicAssetForRemoteEndpoint:(id)a3 assetTag:(id)a4 internalSolicit:(BOOL)a5 error:(id *)a6;
- (BOOL)startTapToRadar:(id)a3;
- (BOOL)supplementalAssetUpdated:(id)a3 assetName:(id)a4 error:(id *)a5;
- (BOOL)tssResponseForEndpoint:(id)a3 tssResponse:(id)a4;
- (BOOL)unsolicitedDynamicAssetForAccessory:(id)a3 assetTag:(id)a4 error:(id *)a5;
- (UARPUploaderUARP)init;
- (id)firmwareAssetIDForDownstreamEndpoint:(id)a3 error:(id *)a4;
- (id)logTokenForCategory:(int)a3;
- (id)pendingTssRequests;
- (id)qFindRemoteEndpointForAccessory:(id)a3;
- (int64_t)_queryProperty:(unint64_t)a3 endpoint:(id)a4;
- (int64_t)queryProperty:(unint64_t)a3 forAccessory:(id)a4;
- (int64_t)queryProperty:(unint64_t)a3 forAccessory:(id)a4 downstreamID:(unsigned __int16)a5;
- (void)addMappingDatabaseFromAsset:(id)a3;
- (void)addUnprocessedDynamicAsset:(id)a3 withAssetTag:(id)a4 serialNumber:(id)a5;
- (void)ageOutUnprocessedDynamicAssets;
- (void)applyStagedAssetStatus:(id)a3 status:(unint64_t)a4;
- (void)applyStagedAssetsForoDownstreamEndpoint:(id)a3;
- (void)assetRelease:(id)a3 asset:(id)a4;
- (void)assetSolicitationComplete:(id)a3 asset:(id)a4 status:(unint64_t)a5;
- (void)assetSolicitationProgress:(id)a3 asset:(id)a4 offset:(unint64_t)a5 assetLength:(unint64_t)a6;
- (void)assetStagingComplete:(id)a3 asset:(id)a4 status:(unint64_t)a5;
- (void)assetStagingPause:(id)a3;
- (void)assetStagingResume:(id)a3;
- (void)copyDynamicAssetsForTapToRadar;
- (void)discoverDownstreamEndpoints:(id)a3;
- (void)handlePersonalizationRequest:(id)a3;
- (void)handlePowerSourcePercentChange:(id)a3;
- (void)offerDynamicAssetToAccessory:(id)a3 asset:(id)a4 internalOffer:(BOOL)a5 tag:(id)a6;
- (void)pendingTssRequests;
- (void)processDynamicAssetHeySiriCompact:(id)a3;
- (void)processDynamicAssetVersions:(id)a3 partnerSerialNumbers:(id)a4;
- (void)processDynamicAssetVoiceAssist:(id)a3;
- (void)protocolVersionSelected:(id)a3 protocolVersion:(unsigned __int16)a4;
- (void)qHandlePowerSourcePercentChange:(id)a3;
- (void)qProcessDynamicAssets;
- (void)queryFirmwareUpdateResultForAccessory:(id)a3;
- (void)rescindAssets:(id)a3;
- (void)rescindStagedAssetsAck:(id)a3 asset:(id)a4;
- (void)rescindedRxDynamicAsset:(id)a3 asset:(id)a4;
- (void)sendMessageToAccessory:(id)a3 uarpMsg:(id)a4;
- (void)solicitDynamicAssetsForTapToRadar:(id)a3;
- (void)solicitExpectedDynamicAssets:(id)a3;
- (void)stopTapToRadar;
- (void)transferPauseAck:(id)a3;
- (void)transferResumeAck:(id)a3;
- (void)tssResponse:(id)a3;
- (void)updateActiveFirmwareVersion:(id)a3 remoteEndpoint:(id)a4;
- (void)updateAppleModelNumber:(id)a3 remoteEndpoint:(id)a4;
- (void)updateBoardID:(unint64_t)a3 remoteEndpoint:(id)a4;
- (void)updateChipEpoch:(unint64_t)a3 remoteEndpoint:(id)a4;
- (void)updateChipID:(unint64_t)a3 remoteEndpoint:(id)a4;
- (void)updateChipRevision:(unint64_t)a3 remoteEndpoint:(id)a4;
- (void)updateECID:(unint64_t)a3 remoteEndpoint:(id)a4;
- (void)updateFriendlyName:(id)a3 remoteEndpoint:(id)a4;
- (void)updateHardwareFusingType:(id)a3 remoteEndpoint:(id)a4;
- (void)updateHardwareVersion:(id)a3 remoteEndpoint:(id)a4;
- (void)updateLastError:(unint64_t)a3 remoteEndpoint:(id)a4;
- (void)updateManifestPrefix:(id)a3 remoteEndpoint:(id)a4;
- (void)updateManufacturerName:(id)a3 remoteEndpoint:(id)a4;
- (void)updateModelName:(id)a3 remoteEndpoint:(id)a4;
- (void)updateNonceHash:(id)a3 remoteEndpoint:(id)a4;
- (void)updateNonceSeed:(id)a3 remoteEndpoint:(id)a4;
- (void)updateProductionMode:(unint64_t)a3 remoteEndpoint:(id)a4;
- (void)updateSecurityDomain:(unint64_t)a3 remoteEndpoint:(id)a4;
- (void)updateSecurityMode:(unint64_t)a3 remoteEndpoint:(id)a4;
- (void)updateSerialNumber:(id)a3 remoteEndpoint:(id)a4;
- (void)updateStagedFirmwareVersion:(id)a3 remoteEndpoint:(id)a4;
- (void)updateStatistics:(id)a3 remoteEndpoint:(id)a4;
- (void)watchdogExpireLayer2:(id)a3;
@end

@implementation UARPUploaderUARP

- (UARPUploaderUARP)init
{
  v20.receiver = self;
  v20.super_class = UARPUploaderUARP;
  v2 = [(UARPUploader *)&v20 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.accessoryupdater.uarp", "uploader");
    log = v2->_log;
    v2->_log = v3;

    v5 = dispatch_queue_create("com.apple.UARPUploaderUARP.Internal", 0);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    accessories = v2->_accessories;
    v2->_accessories = v7;

    bzero(&v2->_uarpEndpoint, 0x2C8uLL);
    bzero(&v2->_uarpVendorExtension, 0x218uLL);
    v9 = 0;
    v10 = v2;
    do
    {
      v11 = uarpLoggingCategoryToString(v9);
      v12 = os_log_create("com.apple.uarp.layer3.au", v11);
      v13 = v10->_tokens[0];
      v10->_tokens[0] = v12;

      ++v9;
      v10 = (v10 + 8);
    }

    while (v9 != 9);
    v2->_isInternalBuild = MGGetBoolAnswer();
    v14 = [MEMORY[0x277CBEB38] dictionary];
    lastReportedProgressTime = v2->_lastReportedProgressTime;
    v2->_lastReportedProgressTime = v14;

    ttrDirectory = v2->_ttrDirectory;
    v2->_ttrDirectory = 0;

    v2->_isTapToRadarMode = 0;
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    unprocessedDynamicAssets = v2->_unprocessedDynamicAssets;
    v2->_unprocessedDynamicAssets = v17;
  }

  return v2;
}

- (id)logTokenForCategory:(int)a3
{
  if (a3 < 0xA)
  {
    v3 = self->_tokens[a3];
  }

  else
  {
    v3 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  return v3;
}

- (BOOL)setController:(id)a3
{
  v12.receiver = self;
  v12.super_class = UARPUploaderUARP;
  if (![(UARPUploader *)&v12 setController:a3])
  {
    return 0;
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__UARPUploaderUARP_setController___block_invoke;
  v7[3] = &unk_278EC2878;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(queue, v7);
  v5 = *(v9 + 6) == 0;
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __34__UARPUploaderUARP_setController___block_invoke(uint64_t a1)
{
  result = UARPPlatformControllerInit(*(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)addAccessory:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    [UARPUploaderUARP addAccessory:error:];
  }

  v7 = [(UARPUploaderUARP *)self accessoryReachable:v6 error:a4];

  return v7;
}

- (BOOL)accessoryReachable:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    [UARPUploaderUARP accessoryReachable:error:];
  }

  v7 = [[UARPUploaderEndpoint alloc] initWithUARPAccessory:v6 uploader:self];
  queue = self->_queue;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __45__UARPUploaderUARP_accessoryReachable_error___block_invoke;
  v14 = &unk_278EC1140;
  v15 = self;
  v16 = v7;
  v9 = v7;
  dispatch_sync(queue, &v11);
  [(UARPUploaderUARP *)self accessoryReachable:v6 remoteEndpoint:v9 error:a4, v11, v12, v13, v14, v15];

  return 1;
}

- (BOOL)accessoryReachable:(id)a3 remoteEndpoint:(id)a4 error:(id *)a5
{
  v6 = a4;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    [UARPUploaderUARP accessoryReachable:remoteEndpoint:error:];
  }

  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__UARPUploaderUARP_accessoryReachable_remoteEndpoint_error___block_invoke;
  v10[3] = &unk_278EC1140;
  v10[4] = self;
  v11 = v6;
  v8 = v6;
  dispatch_async(queue, v10);

  return 1;
}

- (BOOL)removeAccessory:(id)a3 error:(id *)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "Remove accessory %@", &v11, 0xCu);
  }

  v8 = [(UARPUploaderUARP *)self accessoryUnreachable:v6 error:a4];

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)accessoryUnreachable:(id)a3 error:(id *)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v14 = v5;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "Unreachable accessory %@", buf, 0xCu);
  }

  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__UARPUploaderUARP_accessoryUnreachable_error___block_invoke;
  v11[3] = &unk_278EC1140;
  v11[4] = self;
  v12 = v5;
  v8 = v5;
  dispatch_sync(queue, v11);

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __47__UARPUploaderUARP_accessoryUnreachable_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) qFindRemoteEndpointForAccessory:*(a1 + 40)];
  if (v2)
  {
    v4 = v2;
    [*(*(a1 + 32) + 1288) removeObject:v2];
    [*(a1 + 32) accessoryUnreachable:*(a1 + 40) remoteEndpoint:v4 error:0];
  }

  return MEMORY[0x2821F96F8]();
}

- (BOOL)accessoryUnreachable:(id)a3 remoteEndpoint:(id)a4 error:(id *)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "Unreachable remoteEndpoint %@", buf, 0xCu);
  }

  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__UARPUploaderUARP_accessoryUnreachable_remoteEndpoint_error___block_invoke;
  v12[3] = &unk_278EC1140;
  v12[4] = self;
  v13 = v6;
  v9 = v6;
  dispatch_async(queue, v12);

  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)recvDataFromAccessory:(id)a3 data:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    [UARPUploaderUARP recvDataFromAccessory:data:error:];
  }

  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__5;
  v16[4] = __Block_byref_object_dispose__5;
  v9 = [MEMORY[0x277CBEA90] dataWithData:v8];
  queue = self->_queue;
  v17 = v9;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__UARPUploaderUARP_recvDataFromAccessory_data_error___block_invoke;
  block[3] = &unk_278EC2480;
  block[4] = self;
  v14 = v7;
  v15 = v16;
  v11 = v7;
  dispatch_async(queue, block);

  _Block_object_dispose(v16, 8);
  return 1;
}

void __53__UARPUploaderUARP_recvDataFromAccessory_data_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) qFindRemoteEndpointForAccessory:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    [v2 dumpRxUARPMsg:*(*(*(a1 + 48) + 8) + 40)];
    v19 = 0;
    v18 = 0;
    v17 = 0;
    v4 = uarpMessageAdjustedForEndpointID([*(*(*(a1 + 48) + 8) + 40) bytes], objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "length"), &v19, &v18, &v17);
    if (v4)
    {
      v5 = v4;
      v6 = *(*(a1 + 32) + 24);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __53__UARPUploaderUARP_recvDataFromAccessory_data_error___block_invoke_cold_1(v6, v5);
      }
    }

    else if (v19)
    {
      v15 = [MEMORY[0x277CBEA90] dataWithBytes:v18 length:v17];
      v16 = [v3 downstreamEndpoint:v19];
      [v16 dumpRxUARPMsg:v15];
      [*(a1 + 32) recvDataFromEndpoint:v16 data:v15 error:0];
    }

    else
    {
      [*(a1 + 32) recvDataFromEndpoint:v3 data:*(*(*(a1 + 48) + 8) + 40) error:0];
    }
  }

  else
  {
    v7 = *(*(a1 + 32) + 24);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __53__UARPUploaderUARP_recvDataFromAccessory_data_error___block_invoke_cold_2(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }
}

- (BOOL)recvDataFromEndpoint:(id)a3 data:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    [UARPUploaderUARP recvDataFromEndpoint:data:error:];
  }

  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__5;
  v16[4] = __Block_byref_object_dispose__5;
  v9 = [MEMORY[0x277CBEB28] dataWithData:v8];
  queue = self->_queue;
  v17 = v9;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__UARPUploaderUARP_recvDataFromEndpoint_data_error___block_invoke;
  block[3] = &unk_278EC2480;
  block[4] = self;
  v14 = v7;
  v15 = v16;
  v11 = v7;
  dispatch_async(queue, block);

  _Block_object_dispose(v16, 8);
  return 1;
}

void __52__UARPUploaderUARP_recvDataFromEndpoint_data_error___block_invoke(uint64_t a1)
{
  v2 = UARPPlatformControllerRecvMessage(*(a1 + 32), *(a1 + 40), *(*(*(a1 + 48) + 8) + 40));
  if (v2)
  {
    v3 = v2;
    v4 = *(*(a1 + 32) + 24);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __52__UARPUploaderUARP_recvDataFromEndpoint_data_error___block_invoke_cold_1(v4, v3);
    }
  }
}

- (BOOL)offerAssetToAccessory:(id)a3 asset:(id)a4 error:(id *)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v10 = log;
    v11 = [v8 id];
    v12 = [v11 assetVersion];
    v13 = [v7 getID];
    v14 = [v13 modelIdentifier];
    v15 = [v7 serialNumber];
    v16 = [v7 uuid];
    *buf = 138413058;
    *&buf[4] = v12;
    *&buf[12] = 2112;
    *&buf[14] = v14;
    *&buf[22] = 2112;
    v28 = v15;
    v29 = 2112;
    v30 = v16;
    _os_log_impl(&dword_247AA7000, v10, OS_LOG_TYPE_INFO, "UARP.OFFER asset version %@ to %@ <SN=%@> <UUID=%@>", buf, 0x2Au);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LODWORD(v28) = 0;
  queue = self->_queue;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __54__UARPUploaderUARP_offerAssetToAccessory_asset_error___block_invoke;
  v23[3] = &unk_278EC2990;
  v23[4] = self;
  v24 = v7;
  v25 = v8;
  v26 = buf;
  v18 = v8;
  v19 = v7;
  dispatch_sync(queue, v23);
  v20 = *(*&buf[8] + 24) == 0;

  _Block_object_dispose(buf, 8);
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void __54__UARPUploaderUARP_offerAssetToAccessory_asset_error___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) qFindRemoteEndpointForAccessory:*(a1 + 40)];
  v4 = *(v2 - 1);
  if (v3)
  {
    v5 = *(v4 + 1376);
    v6 = [*(a1 + 40) uuid];
    [v5 setObject:0 forKeyedSubscript:v6];

    [*(a1 + 32) addMappingDatabaseFromAsset:*(a1 + 48)];
    *(*(*(a1 + 56) + 8) + 24) = UARPPlatformControllerOfferFirmwareAsset(*(a1 + 32), v3, *(a1 + 48));
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v7 = *(*(a1 + 32) + 24);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __54__UARPUploaderUARP_offerAssetToAccessory_asset_error___block_invoke_cold_1(a1 + 56, v7, v2);
      }

      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = [*(a1 + 48) id];
      [v8 firmwareStagingComplete:v9 assetID:v10 withStatus:4];
    }

    [*(a1 + 32) qHandlePowerSourcePercentChange:v3];
  }

  else
  {
    if (os_log_type_enabled(*(v4 + 24), OS_LOG_TYPE_ERROR))
    {
      __54__UARPUploaderUARP_offerAssetToAccessory_asset_error___block_invoke_cold_2(v2);
    }

    *(*(*(a1 + 56) + 8) + 24) = 27;
  }
}

- (BOOL)applyStagedAssetsForAccessory:(id)a3 error:(id *)a4
{
  v5 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  queue = self->_queue;
  v15 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__UARPUploaderUARP_applyStagedAssetsForAccessory_error___block_invoke;
  block[3] = &unk_278EC2480;
  block[4] = self;
  v10 = v5;
  v11 = &v12;
  v7 = v5;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v13 + 6) == 0;

  _Block_object_dispose(&v12, 8);
  return queue;
}

void __56__UARPUploaderUARP_applyStagedAssetsForAccessory_error___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) qFindRemoteEndpointForAccessory:*(a1 + 40)];
  if (v2)
  {
    v3 = *(*(a1 + 32) + 24);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      v5 = v3;
      v6 = [v4 getID];
      v7 = [v6 modelIdentifier];
      v8 = [*(a1 + 40) serialNumber];
      v9 = [*(a1 + 40) uuid];
      v12 = 138412802;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_247AA7000, v5, OS_LOG_TYPE_INFO, "UARP.APPLY assets for %@ <SN=%@> <UUID=%@>", &v12, 0x20u);
    }

    v10 = UARPPlatformControllerApplyStagedAssets(*(a1 + 32), v2);
  }

  else
  {
    v10 = 27;
  }

  *(*(*(a1 + 48) + 8) + 24) = v10;

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)rescindStagedAssetsForAccessory:(id)a3 error:(id *)a4
{
  v5 = a3;
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__UARPUploaderUARP_rescindStagedAssetsForAccessory_error___block_invoke;
  v9[3] = &unk_278EC1140;
  v9[4] = self;
  v10 = v5;
  v7 = v5;
  dispatch_async(queue, v9);

  return 1;
}

void __58__UARPUploaderUARP_rescindStagedAssetsForAccessory_error___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) qFindRemoteEndpointForAccessory:*(a1 + 40)];
  if (v2)
  {
    v3 = *(*(a1 + 32) + 24);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      v5 = v3;
      v6 = [v4 getID];
      v7 = [v6 modelIdentifier];
      v8 = [*(a1 + 40) serialNumber];
      v9 = [*(a1 + 40) uuid];
      v11 = 138412802;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_247AA7000, v5, OS_LOG_TYPE_INFO, "UARP.RESCIND assets for %@ <SN=%@> <UUID=%@>", &v11, 0x20u);
    }

    UARPPlatformControllerResindAllAssets(*(a1 + 32), v2);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)pauseAssetTransfersForAccessory:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    [UARPUploaderUARP pauseAssetTransfersForAccessory:];
  }

  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  queue = self->_queue;
  v12 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__UARPUploaderUARP_pauseAssetTransfersForAccessory___block_invoke;
  block[3] = &unk_278EC2480;
  block[4] = self;
  v9 = v4;
  v10 = v11;
  v6 = v4;
  dispatch_async(queue, block);

  _Block_object_dispose(v11, 8);
  return 1;
}

uint64_t __52__UARPUploaderUARP_pauseAssetTransfersForAccessory___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) qFindRemoteEndpointForAccessory:*(a1 + 40)];
  if (v2)
  {
    v3 = UARPPlatformControllerPauseAssetTransfers(*(a1 + 32), v2);
  }

  else
  {
    v3 = 27;
  }

  *(*(*(a1 + 48) + 8) + 24) = v3;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)resumeAssetTransfersForAccessory:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    [UARPUploaderUARP resumeAssetTransfersForAccessory:];
  }

  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  queue = self->_queue;
  v12 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__UARPUploaderUARP_resumeAssetTransfersForAccessory___block_invoke;
  block[3] = &unk_278EC2480;
  block[4] = self;
  v9 = v4;
  v10 = v11;
  v6 = v4;
  dispatch_async(queue, block);

  _Block_object_dispose(v11, 8);
  return 1;
}

uint64_t __53__UARPUploaderUARP_resumeAssetTransfersForAccessory___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) qFindRemoteEndpointForAccessory:*(a1 + 40)];
  if (v2)
  {
    v3 = UARPPlatformControllerResumeAssetTransfers(*(a1 + 32), v2);
  }

  else
  {
    v3 = 27;
  }

  *(*(*(a1 + 48) + 8) + 24) = v3;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)cancelAssetStagingForAccessory:(id)a3 asset:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    [UARPUploaderUARP cancelAssetStagingForAccessory:asset:];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__UARPUploaderUARP_cancelAssetStagingForAccessory_asset___block_invoke;
  v13[3] = &unk_278EC2990;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, v13);
  v11 = *(v18 + 6) == 0;

  _Block_object_dispose(&v17, 8);
  return v11;
}

uint64_t __57__UARPUploaderUARP_cancelAssetStagingForAccessory_asset___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) qFindRemoteEndpointForAccessory:*(a1 + 40)];
  if (v2)
  {
    v3 = UARPPlatformControllerRescindAsset(*(a1 + 32), v2, *(a1 + 48));
  }

  else
  {
    v3 = 27;
  }

  *(*(*(a1 + 56) + 8) + 24) = v3;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)supplementalAssetUpdated:(id)a3 assetName:(id)a4 error:(id *)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 modelNumber];
  v11 = [UARPSupportedAccessory findByAppleModelNumber:v10];

  if (!v11)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPUploaderUARP supplementalAssetUpdated:assetName:error:];
    }

    goto LABEL_23;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = [v11 supplementalAssets];
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (!v13)
  {

LABEL_21:
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPUploaderUARP supplementalAssetUpdated:assetName:error:];
    }

LABEL_23:
    appended = 0;
    goto LABEL_24;
  }

  v14 = v13;
  v28 = a5;
  v29 = self;
  v15 = 0;
  v16 = 0;
  v17 = *v31;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v31 != v17)
      {
        objc_enumerationMutation(v12);
      }

      if ([*(*(&v30 + 1) + 8 * i) isEqualToString:v9])
      {
        v15 |= [v9 containsString:@"VoiceAssist"];
        v16 = 1;
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
  }

  while (v14);

  self = v29;
  if ((v16 & 1) == 0)
  {
    goto LABEL_21;
  }

  v19 = MEMORY[0x277CCAB68];
  v20 = UARPStringSupplementalAssetsFilepath();
  v21 = [v19 stringWithFormat:@"%@/%@", v20, v9];

  appended = appendFirstUarpFilenameToFilepath(v21, v28);
  log = v29->_log;
  if (appended)
  {
    if (os_log_type_enabled(v29->_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v35 = v8;
      v36 = 2112;
      v37 = v21;
      _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_DEFAULT, "Supplemental asset for %@, located at %@", buf, 0x16u);
    }

    if ([v8 suppressAutomaticDynamicAssets])
    {
      v24 = v29->_log;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v35 = v8;
        _os_log_impl(&dword_247AA7000, v24, OS_LOG_TYPE_INFO, "Supplemental Asset Updated: Suppressed Automatic Dynamic Asset Solicitation for %@", buf, 0xCu);
      }
    }

    else if (([v11 supportsVoiceAssist] & v15) == 1)
    {
      v27 = +[UARPHeySiriModelVoiceAssist tag];
      [(UARPUploaderUARP *)v29 solicitDynamicAssetForAccessory:v8 assetTag:v27 error:v28];
    }
  }

  else if (os_log_type_enabled(v29->_log, OS_LOG_TYPE_ERROR))
  {
    [UARPUploaderUARP supplementalAssetUpdated:assetName:error:];
  }

LABEL_24:
  v25 = *MEMORY[0x277D85DE8];
  return appended;
}

- (BOOL)genericNotification:(id)a3 notificationName:(id)a4 error:(id *)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v18 = 138412546;
    v19 = v9;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "NSD Notification %@ for accessory %@", &v18, 0x16u);
  }

  v11 = [v8 modelNumber];
  v12 = [UARPSupportedAccessory findByAppleModelNumber:v11];

  if (v12)
  {
    if ([v9 isEqualToString:@"com.apple.system.powersources.percent"])
    {
      [(UARPUploaderUARP *)self handlePowerSourcePercentChange:v8];
    }

    else if ([v9 isEqualToString:@"com.apple.uarp.internal.personalization"])
    {
      [(UARPUploaderUARP *)self handlePersonalizationRequest:v8];
    }

    else if ([v8 suppressAutomaticDynamicAssets])
    {
      v15 = self->_log;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = v8;
        _os_log_impl(&dword_247AA7000, v15, OS_LOG_TYPE_INFO, "BSD Notification: Suppressed Automatic Dynamic Asset Solicitation for %@", &v18, 0xCu);
      }
    }

    else if ([v9 isEqualToString:@"com.apple.corespeech.voicetriggerassetchange"])
    {
      if ([v12 supportsVoiceAssist])
      {
        v16 = +[UARPHeySiriModelVoiceAssist tag];
        [(UARPUploaderUARP *)self solicitDynamicAssetForAccessory:v8 assetTag:v16 error:a5];
      }

      if ([v12 supportsHeySiriCompact])
      {
        v17 = +[UARPHeySiriModelCompact tag];
        [(UARPUploaderUARP *)self solicitDynamicAssetForAccessory:v8 assetTag:v17 error:a5];
      }
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [UARPUploaderUARP supplementalAssetUpdated:assetName:error:];
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12 != 0;
}

- (void)queryFirmwareUpdateResultForAccessory:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__UARPUploaderUARP_queryFirmwareUpdateResultForAccessory___block_invoke;
  v7[3] = &unk_278EC1140;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __58__UARPUploaderUARP_queryFirmwareUpdateResultForAccessory___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __58__UARPUploaderUARP_queryFirmwareUpdateResultForAccessory___block_invoke_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }
}

- (int64_t)queryProperty:(unint64_t)a3 forAccessory:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__UARPUploaderUARP_queryProperty_forAccessory___block_invoke;
  block[3] = &unk_278EC2530;
  block[4] = self;
  v11 = v6;
  v12 = a3;
  v8 = v6;
  dispatch_async(queue, block);

  return 0;
}

uint64_t __47__UARPUploaderUARP_queryProperty_forAccessory___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) qFindRemoteEndpointForAccessory:*(a1 + 40)];
  if (v2)
  {
    [*(a1 + 32) _queryProperty:*(a1 + 48) endpoint:v2];
  }

  return MEMORY[0x2821F96F8]();
}

- (int64_t)_queryProperty:(unint64_t)a3 endpoint:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v8 = log;
    v17 = [v6 accessory];
    v9 = [v17 getID];
    v10 = [v9 modelIdentifier];
    v11 = [v6 accessory];
    v12 = [v11 serialNumber];
    v13 = [v6 accessory];
    v14 = [v13 uuid];
    *buf = 138413058;
    v19 = v10;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v14;
    v24 = 2080;
    v25 = UARPAccessoryPropertyToString(a3);
    _os_log_impl(&dword_247AA7000, v8, OS_LOG_TYPE_INFO, "UARP.QUERY.INFO %@ <SN=%@> <UUID=%@>; property is <%s>", buf, 0x2Au);
  }

  UARPPlatformControllerQueryProperty(self, v6, a3);

  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)solicitDynamicAssetForAccessory:(id)a3 asset:(id)a4 error:(id *)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v14 = 138412546;
    v15 = v9;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "Solicit Dynamic Asset from accessory\n%@%@", &v14, 0x16u);
  }

  v11 = [(UARPUploaderUARP *)self solicitDynamicAssetForAccessory:v8 asset:v9 internalSolicit:0 error:a5];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)solicitDynamicAssetForAccessory:(id)a3 assetTag:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = uarpDynamicAssetURL(v9);
  if (v10)
  {
    v11 = [[UARPAssetID alloc] initWithLocationType:10 assetTag:v9 url:v10];
    v12 = [[UARPAsset alloc] initWithID:v11];
    v13 = [(UARPUploaderUARP *)self solicitDynamicAssetForAccessory:v8 asset:v12 internalSolicit:1 error:a5];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [UARPUploaderUARP solicitDynamicAssetForAccessory:assetTag:error:];
    }

    v13 = 0;
  }

  return v13;
}

- (BOOL)solicitDynamicAssetForAccessory:(id)a3 asset:(id)a4 internalSolicit:(BOOL)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__UARPUploaderUARP_solicitDynamicAssetForAccessory_asset_internalSolicit_error___block_invoke;
  v15[3] = &unk_278EC29E0;
  v15[4] = self;
  v16 = v9;
  v17 = v10;
  v18 = a5;
  v12 = v10;
  v13 = v9;
  dispatch_async(queue, v15);

  return 1;
}

void __80__UARPUploaderUARP_solicitDynamicAssetForAccessory_asset_internalSolicit_error___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) qFindRemoteEndpointForAccessory:*(a1 + 40)];
  v4 = *(v2 - 1);
  v5 = *(v4 + 24);
  if (v3)
  {
    if (os_log_type_enabled(*(v4 + 24), OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 48);
      log = v5;
      v7 = [v6 id];
      v8 = [v7 tag];
      if (*(a1 + 56))
      {
        v9 = @"Internal";
      }

      else
      {
        v9 = @"External";
      }

      v10 = [*(a1 + 40) getID];
      v11 = [v10 modelIdentifier];
      v12 = [*(a1 + 40) serialNumber];
      v13 = [*(a1 + 40) uuid];
      *buf = 138413314;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      v25 = 2112;
      v26 = v13;
      _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "UARP.SOLICIT %@ <%@> from %@ <SN=%@> <UUID=%@>", buf, 0x34u);
    }

    v14 = UARPPlatformControllerPrepareSolicitedDynamicAsset(*(a1 + 32), v3, *(a1 + 48), *(a1 + 56));
    if (UARPPlatformControllerSolicitDynamicAsset(*(a1 + 32), v3, v14) && os_log_type_enabled(*(*(a1 + 32) + 24), OS_LOG_TYPE_ERROR))
    {
      __80__UARPUploaderUARP_solicitDynamicAssetForAccessory_asset_internalSolicit_error___block_invoke_cold_1((a1 + 48));
    }
  }

  else if (os_log_type_enabled(*(v4 + 24), OS_LOG_TYPE_ERROR))
  {
    __80__UARPUploaderUARP_solicitDynamicAssetForAccessory_asset_internalSolicit_error___block_invoke_cold_2(a1, v2);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)solicitDynamicAssetForRemoteEndpoint:(id)a3 assetTag:(id)a4 internalSolicit:(BOOL)a5 error:(id *)a6
{
  v6 = a5;
  v37 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = uarpDynamicAssetURL(v10);
  if (v11)
  {
    v12 = [[UARPAssetID alloc] initWithLocationType:10 assetTag:v10 url:v11];
    v13 = [[UARPAsset alloc] initWithID:v12];
    v14 = self->_log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      log = v14;
      v15 = v12;
      v16 = v6;
      v17 = [v9 downstreamID];
      v18 = [(UARPAsset *)v13 id];
      v19 = [v18 tag];
      v20 = v19;
      v21 = @"External";
      *buf = 67109634;
      v32 = v17;
      v6 = v16;
      v12 = v15;
      v33 = 2112;
      if (v6)
      {
        v21 = @"Internal";
      }

      v34 = v19;
      v35 = 2112;
      v36 = v21;
      _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "UARP.SOLICIT <DS.ID=%u> %@ <%@>", buf, 0x1Cu);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88__UARPUploaderUARP_solicitDynamicAssetForRemoteEndpoint_assetTag_internalSolicit_error___block_invoke;
    block[3] = &unk_278EC29E0;
    block[4] = self;
    v28 = v9;
    v29 = v13;
    v30 = v6;
    v23 = v13;
    dispatch_async(queue, block);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [UARPUploaderUARP solicitDynamicAssetForAccessory:assetTag:error:];
  }

  v24 = *MEMORY[0x277D85DE8];
  return v11 != 0;
}

void __88__UARPUploaderUARP_solicitDynamicAssetForRemoteEndpoint_assetTag_internalSolicit_error___block_invoke(uint64_t a1)
{
  v2 = a1 + 40;
  v3 = UARPPlatformControllerPrepareSolicitedDynamicAsset(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
  if (UARPPlatformControllerSolicitDynamicAsset(*(v2 - 8), *v2, v3) && os_log_type_enabled(*(*(a1 + 32) + 24), OS_LOG_TYPE_ERROR))
  {
    __88__UARPUploaderUARP_solicitDynamicAssetForRemoteEndpoint_assetTag_internalSolicit_error___block_invoke_cold_1((v2 + 8));
  }
}

- (BOOL)offerDynamicAssetToAccessory:(id)a3 asset:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__UARPUploaderUARP_offerDynamicAssetToAccessory_asset_error___block_invoke;
  block[3] = &unk_278EC29B8;
  block[4] = self;
  v14 = v8;
  v15 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(queue, block);

  return 1;
}

void __61__UARPUploaderUARP_offerDynamicAssetToAccessory_asset_error___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    *buf = 138412546;
    v21 = v3;
    v22 = 2112;
    v23 = v4;
    _os_log_impl(&dword_247AA7000, v2, OS_LOG_TYPE_INFO, "Offer dynamic asset %@ to accessory %@", buf, 0x16u);
  }

  v5 = [*(a1 + 32) qFindRemoteEndpointForAccessory:*(a1 + 48)];
  if (v5)
  {
    v17 = [UARPAssetTag alloc];
    v19 = [*(a1 + 40) id];
    v18 = [v19 tag];
    v16 = [v18 char1];
    v6 = [*(a1 + 40) id];
    v7 = [v6 tag];
    v8 = [v7 char2];
    v9 = [*(a1 + 40) id];
    v10 = [v9 tag];
    v11 = [v10 char3];
    v12 = [*(a1 + 40) id];
    v13 = [v12 tag];
    v14 = -[UARPAssetTag initWithChar1:char2:char3:char4:](v17, "initWithChar1:char2:char3:char4:", v16, v8, v11, [v13 char4]);

    [*(a1 + 32) offerDynamicAssetToAccessory:v5 asset:*(a1 + 40) internalOffer:0 tag:v14];
  }

  else if (os_log_type_enabled(*(*(a1 + 32) + 24), OS_LOG_TYPE_ERROR))
  {
    __61__UARPUploaderUARP_offerDynamicAssetToAccessory_asset_error___block_invoke_cold_1((a1 + 48));
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)unsolicitedDynamicAssetForAccessory:(id)a3 assetTag:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__UARPUploaderUARP_unsolicitedDynamicAssetForAccessory_assetTag_error___block_invoke;
  block[3] = &unk_278EC29B8;
  block[4] = self;
  v14 = v8;
  v15 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(queue, block);

  return 1;
}

uint64_t __71__UARPUploaderUARP_unsolicitedDynamicAssetForAccessory_assetTag_error___block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(*(*(a1 + 32) + 24), OS_LOG_TYPE_DEBUG))
  {
    __71__UARPUploaderUARP_unsolicitedDynamicAssetForAccessory_assetTag_error___block_invoke_cold_1(a1);
  }

  [*(a1 + 40) char1];
  [*(a1 + 40) char2];
  [*(a1 + 40) char3];
  return [*(a1 + 40) char4];
}

- (BOOL)handlePowerSource:(id)a3 currentCapacity:(unint64_t)a4 maxCapacity:(unint64_t)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v36 = a4;
    v37 = 2048;
    v38 = a5;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "Power Source Current Capacity is %lu. Max Power is %lu.", buf, 0x16u);
  }

  v10 = a5 | a4;
  if (a5 | a4)
  {
    v11 = [(UARPUploaderUARP *)self qFindRemoteEndpointForAccessory:v8];
    v12 = v11;
    if (v11)
    {
      if (a5)
      {
        v13 = (a4 / a5) * 100.0;
      }

      else
      {
        v13 = 0.0;
      }

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      obj = [v11 txFirmwareAssets];
      v14 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v32;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v32 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v31 + 1) + 8 * i);
            if (![v18 minimumHostBatteryLevel] && !objc_msgSend(v18, "triggerHostBatteryLevel"))
            {
              v25 = self->_log;
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                [UARPUploaderUARP handlePowerSource:v25 currentCapacity:? maxCapacity:?];
              }

              goto LABEL_28;
            }

            if (v13 < [v18 minimumHostBatteryLevel])
            {
              v19 = self->_log;
              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                v20 = v19;
                v21 = [v18 minimumHostBatteryLevel];
                *buf = 138412802;
                v36 = v18;
                v37 = 2048;
                v38 = v13;
                v39 = 2048;
                v40 = v21;
                _os_log_impl(&dword_247AA7000, v20, OS_LOG_TYPE_INFO, "Power Source: Asset <%@> pausing due to minimum host battery level of %lu, tlv says %lu", buf, 0x20u);
              }

              UARPPlatformControllerPauseAssetTransfers(self, v12);
            }

            if (v13 > [v18 triggerHostBatteryLevel])
            {
              v22 = self->_log;
              if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
              {
                v23 = v22;
                v24 = [v18 triggerHostBatteryLevel];
                *buf = 138412802;
                v36 = v18;
                v37 = 2048;
                v38 = v13;
                v39 = 2048;
                v40 = v24;
                _os_log_impl(&dword_247AA7000, v23, OS_LOG_TYPE_INFO, "Power Source: Asset <%@> resuming due to trigger host battery level of %lu, tlv says %lu", buf, 0x20u);
              }

              UARPPlatformControllerResumeAssetTransfers(self, v12);
            }
          }

          v15 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

LABEL_28:

      v10 = v28;
      v8 = v29;
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v10 != 0;
}

- (void)handlePowerSourcePercentChange:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__UARPUploaderUARP_handlePowerSourcePercentChange___block_invoke;
  v7[3] = &unk_278EC1140;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __51__UARPUploaderUARP_handlePowerSourcePercentChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) qFindRemoteEndpointForAccessory:*(a1 + 40)];
  if (v2)
  {
    [*(a1 + 32) qHandlePowerSourcePercentChange:v2];
  }

  return MEMORY[0x2821F96F8]();
}

- (void)qHandlePowerSourcePercentChange:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = IOPSCopyPowerSourcesInfo();
  if (v5)
  {
    v6 = v5;
    v7 = IOPSCopyPowerSourcesList(v5);
    if (v7)
    {
      v8 = v7;
      if (CFArrayGetCount(v7) >= 1)
      {
        v10 = 0;
        *&v9 = 134218242;
        v20 = v9;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8, v10);
          v12 = IOPSGetPowerSourceDescription(v6, ValueAtIndex);
          v13 = [v12 objectForKey:@"Current Capacity"];
          v14 = [v12 objectForKey:@"Max Capacity"];
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
          {
            *buf = v20;
            v22 = v10;
            v23 = 2112;
            v24 = v12;
            _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "Power Source Description for index %ld is %@", buf, 0x16u);
          }

          v16 = [v4 accessory];
          v17 = -[UARPUploaderUARP handlePowerSource:currentCapacity:maxCapacity:](self, "handlePowerSource:currentCapacity:maxCapacity:", v16, [v13 unsignedIntegerValue], objc_msgSend(v14, "unsignedIntegerValue"));

          if (v17)
          {
            break;
          }

          ++v10;
        }

        while (v10 < CFArrayGetCount(v8));
      }

      CFRelease(v6);
      v18 = v8;
    }

    else
    {
      v18 = v6;
    }

    CFRelease(v18);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)handlePersonalizationRequest:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[UARPUploaderUARP handlePersonalizationRequest:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "%s: %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__UARPUploaderUARP_handlePersonalizationRequest___block_invoke;
  v9[3] = &unk_278EC1140;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __49__UARPUploaderUARP_handlePersonalizationRequest___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v9 = 136315394;
    v10 = "[UARPUploaderUARP handlePersonalizationRequest:]_block_invoke";
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_247AA7000, v2, OS_LOG_TYPE_INFO, "%s: on queue %@", &v9, 0x16u);
  }

  v5 = *(a1 + 40);
  v4 = (a1 + 40);
  v6 = [*(v4 - 1) qFindRemoteEndpointForAccessory:v5];
  v7 = os_log_type_enabled(*(*(v4 - 1) + 24), OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (v7)
    {
      __49__UARPUploaderUARP_handlePersonalizationRequest___block_invoke_cold_1();
    }

    [v6 handlePersonalizationRequest];
  }

  else if (v7)
  {
    __49__UARPUploaderUARP_handlePersonalizationRequest___block_invoke_cold_2(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)discoverDownstreamEndpoints:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__UARPUploaderUARP_discoverDownstreamEndpoints___block_invoke;
  v7[3] = &unk_278EC1140;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __48__UARPUploaderUARP_discoverDownstreamEndpoints___block_invoke(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = [*(a1 + 32) qFindRemoteEndpointForAccessory:*(a1 + 40)];
  v3 = *(v1 - 1);
  if (v2)
  {
    UarpLayer4DiscoverDownstreamEndpoints(v3, v2);
  }

  else if (os_log_type_enabled(v3[3], OS_LOG_TYPE_ERROR))
  {
    __48__UARPUploaderUARP_discoverDownstreamEndpoints___block_invoke_cold_1(v1);
  }
}

- (int64_t)queryProperty:(unint64_t)a3 forAccessory:(id)a4 downstreamID:(unsigned __int16)a5
{
  v8 = a4;
  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__UARPUploaderUARP_queryProperty_forAccessory_downstreamID___block_invoke;
  v12[3] = &unk_278EC2C80;
  v12[4] = self;
  v13 = v8;
  v15 = a5;
  v14 = a3;
  v10 = v8;
  dispatch_async(queue, v12);

  return 0;
}

void __60__UARPUploaderUARP_queryProperty_forAccessory_downstreamID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) qFindRemoteEndpointForAccessory:*(a1 + 40)];
  if (v2)
  {
    v4 = v2;
    v3 = [v2 downstreamEndpoint:*(a1 + 56)];
    if (v3)
    {
      [*(a1 + 32) _queryProperty:*(a1 + 48) endpoint:v3];
    }

    v2 = v4;
  }
}

- (BOOL)offerAssetToAccessory:(id)a3 asset:(id)a4 downstreamID:(unsigned __int16)a5 error:(id *)a6
{
  LODWORD(v6) = a5;
  v36 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = self->_log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    log = v11;
    v12 = [v10 id];
    v13 = [v12 assetVersion];
    v14 = v6;
    [v9 getID];
    v6 = v24 = v6;
    v15 = [v6 modelIdentifier];
    v16 = [v9 serialNumber];
    v17 = [v9 uuid];
    *buf = 138413314;
    *&buf[4] = v13;
    *&buf[12] = 2048;
    *&buf[14] = v14;
    *&buf[22] = 2112;
    v31 = v15;
    v32 = 2112;
    v33 = v16;
    v34 = 2112;
    v35 = v17;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "UARP.OFFER asset version %@ to <DSID=%lu> %@ <SN=%@> <UUID=%@>", buf, 0x34u);

    LOWORD(v6) = v24;
  }

  [(UARPUploaderUARP *)self addMappingDatabaseFromAsset:v10];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LODWORD(v31) = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__UARPUploaderUARP_offerAssetToAccessory_asset_downstreamID_error___block_invoke;
  block[3] = &unk_278EC2CA8;
  block[4] = self;
  v26 = v9;
  v29 = v6;
  v27 = v10;
  v28 = buf;
  v19 = v10;
  v20 = v9;
  dispatch_async(queue, block);

  _Block_object_dispose(buf, 8);
  v21 = *MEMORY[0x277D85DE8];
  return 1;
}

void __67__UARPUploaderUARP_offerAssetToAccessory_asset_downstreamID_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) qFindRemoteEndpointForAccessory:*(a1 + 40)];
  if (v2)
  {
    v7 = v2;
    v3 = [v2 downstreamEndpoint:*(a1 + 64)];
    if (v3)
    {
      *(*(*(a1 + 56) + 8) + 24) = UARPPlatformControllerOfferFirmwareAsset(*(a1 + 32), v3, *(a1 + 48));
      if (*(*(*(a1 + 56) + 8) + 24))
      {
        v4 = *(a1 + 32);
        v5 = *(a1 + 40);
        v6 = [*(a1 + 48) id];
        [v4 firmwareStagingComplete:v5 assetID:v6 withStatus:4];
      }
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = 27;
    }

    v2 = v7;
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 27;
  }
}

- (id)firmwareAssetIDForDownstreamEndpoint:(id)a3 error:(id *)a4
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 accessory];
  v7 = [(UARPUploaderUARP *)self qFindRemoteEndpointForAccessory:v6];

  if (v7)
  {
    v8 = [v7 idealTxFirmwareAsset];
    v9 = v8;
    if (!v8)
    {
      v31 = self->_log;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        logb = v31;
        v32 = [v5 downstreamID];
        v55 = [v5 accessory];
        v33 = [v55 getID];
        v34 = [v33 modelIdentifier];
        v35 = [v5 accessory];
        v36 = [v35 serialNumber];
        v37 = [v5 accessory];
        v38 = [v37 uuid];
        *buf = 67109890;
        v58 = v32;
        v59 = 2112;
        v60 = v34;
        v61 = 2112;
        v62 = v36;
        v63 = 2112;
        v64 = v38;
        _os_log_impl(&dword_247AA7000, logb, OS_LOG_TYPE_INFO, "UARP.OFFER firmware asset to <DSID=%u> %@ <SN=%@> <UUID=%@> - No pending asset", buf, 0x26u);
      }

      v29 = 0;
      goto LABEL_21;
    }

    v10 = [v8 asset];
    v11 = [v10 id];
    v12 = [v11 downstreamAssetIDs];

    if (v12)
    {
      v13 = [v9 asset];
      v14 = [v13 id];
      v15 = [v14 downstreamAssetIDs];
      v16 = [v15 count];

      v17 = self->_log;
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
      if (v16)
      {
        if (v18)
        {
          loga = v17;
          v19 = [v5 downstreamID];
          v54 = [v5 accessory];
          v20 = [v54 getID];
          v21 = [v20 modelIdentifier];
          v22 = [v5 accessory];
          v23 = [v22 serialNumber];
          v24 = [v5 accessory];
          v25 = [v24 uuid];
          *buf = 67109890;
          v58 = v19;
          v59 = 2112;
          v60 = v21;
          v61 = 2112;
          v62 = v23;
          v63 = 2112;
          v64 = v25;
          _os_log_impl(&dword_247AA7000, loga, OS_LOG_TYPE_INFO, "UARP.OFFER firmware asset to <DSID=%u> %@ <SN=%@> <UUID=%@> - downstreamAssetIDs' first object", buf, 0x26u);
        }

        v26 = [v9 asset];
        v27 = [v26 id];
        v28 = [v27 downstreamAssetIDs];
        v29 = [v28 firstObject];

        goto LABEL_20;
      }

      if (v18)
      {
        log = v17;
        v48 = [v5 downstreamID];
        v56 = [v5 accessory];
        v41 = [v56 getID];
        v42 = [v41 modelIdentifier];
        v43 = [v5 accessory];
        v44 = [v43 serialNumber];
        v45 = [v5 accessory];
        v46 = [v45 uuid];
        *buf = 67109890;
        v58 = v48;
        v59 = 2112;
        v60 = v42;
        v61 = 2112;
        v62 = v44;
        v63 = 2112;
        v64 = v46;
        v47 = "UARP.OFFER firmware asset to <DSID=%u> %@ <SN=%@> <UUID=%@> - downstreamAssetIDs array has no entries";
        goto LABEL_18;
      }
    }

    else
    {
      v39 = self->_log;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        log = v39;
        v40 = [v5 downstreamID];
        v56 = [v5 accessory];
        v41 = [v56 getID];
        v42 = [v41 modelIdentifier];
        v43 = [v5 accessory];
        v44 = [v43 serialNumber];
        v45 = [v5 accessory];
        v46 = [v45 uuid];
        *buf = 67109890;
        v58 = v40;
        v59 = 2112;
        v60 = v42;
        v61 = 2112;
        v62 = v44;
        v63 = 2112;
        v64 = v46;
        v47 = "UARP.OFFER firmware asset to <DSID=%u> %@ <SN=%@> <UUID=%@> - No downstreamAssetIDs array";
LABEL_18:
        _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, v47, buf, 0x26u);
      }
    }

    v26 = [v9 asset];
    v29 = [v26 id];
LABEL_20:

LABEL_21:
    goto LABEL_22;
  }

  v30 = self->_log;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    [UARPUploaderUARP firmwareAssetIDForDownstreamEndpoint:v30 error:v5];
  }

  v29 = 0;
LABEL_22:

  v49 = *MEMORY[0x277D85DE8];

  return v29;
}

- (BOOL)offerFirmwareAssetToDownstreamEndpoint:(id)a3 error:(id *)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = self->_log;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    log = v6;
    v7 = [v5 downstreamID];
    v28 = [v5 accessory];
    v8 = [v28 getID];
    v9 = [v8 modelIdentifier];
    v10 = [v5 accessory];
    v11 = [v10 serialNumber];
    v12 = [v5 accessory];
    v13 = [v12 uuid];
    *buf = 67109890;
    v33 = v7;
    v34 = 2112;
    v35 = v9;
    v36 = 2112;
    v37 = v11;
    v38 = 2112;
    v39 = v13;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "UARP.OFFER firmware asset to <DSID=%u> %@ <SN=%@> <UUID=%@>", buf, 0x26u);
  }

  v14 = [v5 isDownstreamEndpoint];
  if (v14)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__UARPUploaderUARP_offerFirmwareAssetToDownstreamEndpoint_error___block_invoke;
    block[3] = &unk_278EC1140;
    block[4] = self;
    v31 = v5;
    dispatch_async(queue, block);
  }

  else
  {
    v16 = self->_log;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v29 = v16;
      v17 = [v5 downstreamID];
      v18 = [v5 accessory];
      v19 = [v18 getID];
      v20 = [v19 modelIdentifier];
      v21 = [v5 accessory];
      v22 = [v21 serialNumber];
      v23 = [v5 accessory];
      v24 = [v23 uuid];
      *buf = 67109890;
      v33 = v17;
      v34 = 2112;
      v35 = v20;
      v36 = 2112;
      v37 = v22;
      v38 = 2112;
      v39 = v24;
      _os_log_impl(&dword_247AA7000, v29, OS_LOG_TYPE_INFO, "UARP.OFFER firmware asset to <DSID=%u> %@ <SN=%@> <UUID=%@> - not downstream endpoint. No OFFER", buf, 0x26u);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v14;
}

void __65__UARPUploaderUARP_offerFirmwareAssetToDownstreamEndpoint_error___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) firmwareAssetIDForDownstreamEndpoint:*(a1 + 40) error:0];
  if (v2)
  {
    v3 = [[UARPAsset alloc] initWithID:v2];
    v4 = *(*(a1 + 32) + 24);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      log = v4;
      v6 = [v5 downstreamID];
      v36 = [*(a1 + 40) accessory];
      v7 = [v36 getID];
      v8 = [v7 modelIdentifier];
      v9 = [*(a1 + 40) accessory];
      v10 = [v9 serialNumber];
      v11 = [*(a1 + 40) accessory];
      v12 = [v11 uuid];
      *buf = 67110146;
      v39 = v6;
      v40 = 2112;
      v41 = v8;
      v42 = 2112;
      v43 = v10;
      v44 = 2112;
      v45 = v12;
      v46 = 2112;
      v47 = v2;
      _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "UARP.OFFER firmware asset to <DSID=%u> %@ <SN=%@> <UUID=%@> - Offer asset %@", buf, 0x30u);
    }

    UARPPlatformControllerOfferFirmwareAsset(*(a1 + 32), *(a1 + 40), v3);
  }

  else
  {
    v14 = *(*(a1 + 32) + 24);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 40);
      loga = v14;
      v16 = [v15 downstreamID];
      v37 = [*(a1 + 40) accessory];
      v17 = [v37 getID];
      v18 = [v17 modelIdentifier];
      v19 = [*(a1 + 40) accessory];
      v20 = [v19 serialNumber];
      v21 = [*(a1 + 40) accessory];
      v22 = [v21 uuid];
      *buf = 67109890;
      v39 = v16;
      v40 = 2112;
      v41 = v18;
      v42 = 2112;
      v43 = v20;
      v44 = 2112;
      v45 = v22;
      _os_log_impl(&dword_247AA7000, loga, OS_LOG_TYPE_INFO, "UARP.OFFER firmware asset to <DSID=%u> %@ <SN=%@> <UUID=%@> - No asset available", buf, 0x26u);
    }

    if (UARPPlatformControllerNoFirmwareAssetAvailable(*(a1 + 32), *(a1 + 40)))
    {
      v23 = *(*(a1 + 32) + 24);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = *(a1 + 40);
        v25 = v23;
        v26 = [v24 downstreamID];
        v27 = [*(a1 + 40) accessory];
        v28 = [v27 getID];
        v29 = [v28 modelIdentifier];
        v30 = [*(a1 + 40) accessory];
        v31 = [v30 serialNumber];
        v32 = [*(a1 + 40) accessory];
        v33 = [v32 uuid];
        *buf = 67109890;
        v39 = v26;
        v40 = 2112;
        v41 = v29;
        v42 = 2112;
        v43 = v31;
        v44 = 2112;
        v45 = v33;
        _os_log_impl(&dword_247AA7000, v25, OS_LOG_TYPE_INFO, "UARP.OFFER firmware asset to <DSID=%u> %@ <SN=%@> <UUID=%@> - failed", buf, 0x26u);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)applyStagedAssetsForoDownstreamEndpoint:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v6 = log;
    v7 = [v4 downstreamID];
    v8 = [v4 accessory];
    v9 = [v8 uuid];
    *buf = 134218242;
    v16 = v7;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_247AA7000, v6, OS_LOG_TYPE_INFO, "UARP.APPLY assets <DSID=%lu> <UUID=%@>", buf, 0x16u);
  }

  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__UARPUploaderUARP_applyStagedAssetsForoDownstreamEndpoint___block_invoke;
  v13[3] = &unk_278EC1140;
  v13[4] = self;
  v14 = v4;
  v11 = v4;
  dispatch_async(queue, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __60__UARPUploaderUARP_applyStagedAssetsForoDownstreamEndpoint___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = UARPPlatformControllerApplyStagedAssets(*(a1 + 32), *(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v4 = *(*(a1 + 32) + 24);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      v6 = v4;
      v7 = [v5 downstreamID];
      v8 = [*(a1 + 40) accessory];
      v9 = [v8 uuid];
      v11 = 134218498;
      v12 = v7;
      v13 = 2112;
      v14 = v9;
      v15 = 2080;
      v16 = uarpStatusCodeToString(v3);
      _os_log_impl(&dword_247AA7000, v6, OS_LOG_TYPE_INFO, "UARP.APPLY assets <DSID=%lu> <UUID=%@> - FAILED <%s>", &v11, 0x20u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)qFindRemoteEndpointForAccessory:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_accessories;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 accessory];
        v11 = [v4 isEqual:v10];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)sendMessageToAccessory:(id)a3 uarpMsg:(id)a4
{
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    [UARPUploaderUARP sendMessageToAccessory:v7 uarpMsg:?];
  }

  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__5;
  v16[4] = __Block_byref_object_dispose__5;
  v9 = [MEMORY[0x277CBEA90] dataWithData:v7];
  queue = self->_queue;
  v17 = v9;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__UARPUploaderUARP_sendMessageToAccessory_uarpMsg___block_invoke;
  block[3] = &unk_278EC2B48;
  v14 = self;
  v15 = v16;
  v13 = v6;
  v11 = v6;
  dispatch_async(queue, block);

  _Block_object_dispose(v16, 8);
}

void __51__UARPUploaderUARP_sendMessageToAccessory_uarpMsg___block_invoke(uint64_t a1)
{
  [*(a1 + 32) dumpTxUARPMsg:*(*(*(a1 + 48) + 8) + 40)];
  v2 = [*(a1 + 32) downstreamID];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [v3 uarpEndpoint];
    v6 = [*(a1 + 32) directEndpoint];
    uarpPlatformSendMessageFromDownstreamEndpointID(v4, [v6 uarpEndpoint], objc_msgSend(*(a1 + 32), "downstreamID"), objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "bytes"), objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "length"));
  }

  else
  {
    v6 = [v3 controller];
    v5 = [*(a1 + 32) accessory];
    [v6 sendMessageToAccessory:v5 uarpMsg:*(*(*(a1 + 48) + 8) + 40)];
  }
}

- (void)watchdogExpireLayer2:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__UARPUploaderUARP_watchdogExpireLayer2___block_invoke;
  v7[3] = &unk_278EC1140;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __41__UARPUploaderUARP_watchdogExpireLayer2___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  if (UARPPlatformControllerLayer3WatchDogExpired(*(a1 + 32), *(a1 + 40)))
  {
    v3 = *(*(a1 + 32) + 24);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __41__UARPUploaderUARP_watchdogExpireLayer2___block_invoke_cold_1(v2, v3);
    }
  }
}

- (void)updateManufacturerName:(id)a3 remoteEndpoint:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v9 = log;
    v13[0] = 67109634;
    v13[1] = [v7 downstreamID];
    v14 = 2080;
    v15 = UARPAccessoryPropertyToString(0);
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_247AA7000, v9, OS_LOG_TYPE_INFO, "UARP.RESPONSE.INFO <DSID=%u> for <%s> is <%@>", v13, 0x1Cu);
  }

  if (([v7 isDownstreamEndpoint] & 1) == 0)
  {
    v10 = [(UARPUploader *)self controller];
    v11 = [v7 accessory];
    [v10 queryCompleteForAccessory:v11 manufacturer:v6 error:0];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateModelName:(id)a3 remoteEndpoint:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v9 = log;
    v13[0] = 67109634;
    v13[1] = [v7 downstreamID];
    v14 = 2080;
    v15 = UARPAccessoryPropertyToString(1uLL);
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_247AA7000, v9, OS_LOG_TYPE_INFO, "UARP.RESPONSE.INFO <DSID=%u> for <%s> is <%@>", v13, 0x1Cu);
  }

  if (([v7 isDownstreamEndpoint] & 1) == 0)
  {
    v10 = [(UARPUploader *)self controller];
    v11 = [v7 accessory];
    [v10 queryCompleteForAccessory:v11 modelName:v6 error:0];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateSerialNumber:(id)a3 remoteEndpoint:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v9 = log;
    v13[0] = 67109634;
    v13[1] = [v7 downstreamID];
    v14 = 2080;
    v15 = UARPAccessoryPropertyToString(2uLL);
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_247AA7000, v9, OS_LOG_TYPE_INFO, "UARP.RESPONSE.INFO <DSID=%u> for <%s> is <%@>", v13, 0x1Cu);
  }

  [v7 hasFullPersonality:self];
  if (([v7 isDownstreamEndpoint] & 1) == 0)
  {
    v10 = [(UARPUploader *)self controller];
    v11 = [v7 accessory];
    [v10 queryCompleteForAccessory:v11 serialNumber:v6 error:0];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateHardwareVersion:(id)a3 remoteEndpoint:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v9 = log;
    v13[0] = 67109634;
    v13[1] = [v7 downstreamID];
    v14 = 2080;
    v15 = UARPAccessoryPropertyToString(3uLL);
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_247AA7000, v9, OS_LOG_TYPE_INFO, "UARP.RESPONSE.INFO <DSID=%u> for <%s> is <%@>", v13, 0x1Cu);
  }

  if (([v7 isDownstreamEndpoint] & 1) == 0)
  {
    v10 = [(UARPUploader *)self controller];
    v11 = [v7 accessory];
    [v10 queryCompleteForAccessory:v11 hardwareVersion:v6 error:0];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateActiveFirmwareVersion:(id)a3 remoteEndpoint:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v9 = log;
    v13[0] = 67109634;
    v13[1] = [v7 downstreamID];
    v14 = 2080;
    v15 = UARPAccessoryPropertyToString(4uLL);
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_247AA7000, v9, OS_LOG_TYPE_INFO, "UARP.RESPONSE.INFO <DSID=%u> for <%s> is <%@>", v13, 0x1Cu);
  }

  [v7 hasFullPersonality:self];
  if (([v7 isDownstreamEndpoint] & 1) == 0)
  {
    v10 = [(UARPUploader *)self controller];
    v11 = [v7 accessory];
    [v10 queryCompleteForAccessory:v11 firmwareVersion:v6 error:0];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateStagedFirmwareVersion:(id)a3 remoteEndpoint:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v9 = log;
    v13[0] = 67109634;
    v13[1] = [v7 downstreamID];
    v14 = 2080;
    v15 = UARPAccessoryPropertyToString(5uLL);
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_247AA7000, v9, OS_LOG_TYPE_INFO, "UARP.RESPONSE.INFO <DSID=%u> for <%s> is <%@>", v13, 0x1Cu);
  }

  if (([v7 isDownstreamEndpoint] & 1) == 0)
  {
    v10 = [(UARPUploader *)self controller];
    v11 = [v7 accessory];
    [v10 queryCompleteForAccessory:v11 stagedFirmwareVersion:v6 error:0];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateLastError:(unint64_t)a3 remoteEndpoint:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v8 = log;
    v12[0] = 67109120;
    v12[1] = [v6 downstreamID];
    _os_log_impl(&dword_247AA7000, v8, OS_LOG_TYPE_INFO, "UARP.RESPONSE.INFO <DSID=%u> for <Last Error>", v12, 8u);
  }

  if (([v6 isDownstreamEndpoint] & 1) == 0)
  {
    v9 = [(UARPUploader *)self controller];
    v10 = [v6 accessory];
    [v9 firmwareUpdateResult:v10 vendorSpecificStatus:a3 error:0];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateStatistics:(id)a3 remoteEndpoint:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v9 = log;
    v13[0] = 67109378;
    v13[1] = [v7 downstreamID];
    v14 = 2080;
    v15 = UARPAccessoryPropertyToString(6uLL);
    _os_log_impl(&dword_247AA7000, v9, OS_LOG_TYPE_INFO, "UARP.RESPONSE.INFO <DSID=%u> for <%s>", v13, 0x12u);
  }

  if (([v7 isDownstreamEndpoint] & 1) == 0)
  {
    v10 = [(UARPUploader *)self controller];
    v11 = [v7 accessory];
    [v10 queryCompleteForAccessory:v11 stats:v6 error:0];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateAppleModelNumber:(id)a3 remoteEndpoint:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v9 = log;
    v13[0] = 67109634;
    v13[1] = [v7 downstreamID];
    v14 = 2080;
    v15 = UARPAccessoryPropertyToString(0xBuLL);
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_247AA7000, v9, OS_LOG_TYPE_INFO, "UARP.RESPONSE.INFO <DSID=%u> for <%s> is <%@>", v13, 0x1Cu);
  }

  [v7 hasFullPersonality:self];
  if (([v7 isDownstreamEndpoint] & 1) == 0)
  {
    v10 = [(UARPUploader *)self controller];
    v11 = [v7 accessory];
    [v10 queryCompleteForAccessory:v11 appleModelNumber:v6 error:0];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateHardwareFusingType:(id)a3 remoteEndpoint:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v9 = log;
    v13[0] = 67109634;
    v13[1] = [v7 downstreamID];
    v14 = 2080;
    v15 = UARPAccessoryPropertyToString(0xCuLL);
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_247AA7000, v9, OS_LOG_TYPE_INFO, "UARP.RESPONSE.INFO <DSID=%u> for <%s> is <%@>", v13, 0x1Cu);
  }

  [v7 hasFullPersonality:self];
  if (([v7 isDownstreamEndpoint] & 1) == 0)
  {
    v10 = [(UARPUploader *)self controller];
    v11 = [v7 accessory];
    [v10 queryCompleteForAccessory:v11 hwFusingType:v6 error:0];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateFriendlyName:(id)a3 remoteEndpoint:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v9 = log;
    v13[0] = 67109634;
    v13[1] = [v7 downstreamID];
    v14 = 2080;
    v15 = UARPAccessoryPropertyToString(0xDuLL);
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_247AA7000, v9, OS_LOG_TYPE_INFO, "UARP.RESPONSE.INFO <DSID=%u> for <%s> is <%@>", v13, 0x1Cu);
  }

  if (([v7 isDownstreamEndpoint] & 1) == 0)
  {
    v10 = [(UARPUploader *)self controller];
    v11 = [v7 accessory];
    [v10 queryCompleteForAccessory:v11 friendlyName:v6 error:0];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateManifestPrefix:(id)a3 remoteEndpoint:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (([v6 isDownstreamEndpoint] & 1) == 0)
  {
    v7 = [(UARPUploader *)self controller];
    v8 = [v6 accessory];
    [v7 queryCompleteForAccessory:v8 manifestPrefix:v9 error:0];
  }
}

- (void)updateBoardID:(unint64_t)a3 remoteEndpoint:(id)a4
{
  v8 = a4;
  if (([v8 isDownstreamEndpoint] & 1) == 0)
  {
    v6 = [(UARPUploader *)self controller];
    v7 = [v8 accessory];
    [v6 queryCompleteForAccessory:v7 boardID:a3 error:0];
  }
}

- (void)updateChipID:(unint64_t)a3 remoteEndpoint:(id)a4
{
  v8 = a4;
  if (([v8 isDownstreamEndpoint] & 1) == 0)
  {
    v6 = [(UARPUploader *)self controller];
    v7 = [v8 accessory];
    [v6 queryCompleteForAccessory:v7 chipID:a3 error:0];
  }
}

- (void)updateChipRevision:(unint64_t)a3 remoteEndpoint:(id)a4
{
  v8 = a4;
  if (([v8 isDownstreamEndpoint] & 1) == 0)
  {
    v6 = [(UARPUploader *)self controller];
    v7 = [v8 accessory];
    [v6 queryCompleteForAccessory:v7 chipRevision:a3 error:0];
  }
}

- (void)updateECID:(unint64_t)a3 remoteEndpoint:(id)a4
{
  v8 = a4;
  if (([v8 isDownstreamEndpoint] & 1) == 0)
  {
    v6 = [(UARPUploader *)self controller];
    v7 = [v8 accessory];
    [v6 queryCompleteForAccessory:v7 ecid:a3 error:0];
  }
}

- (void)updateSecurityDomain:(unint64_t)a3 remoteEndpoint:(id)a4
{
  v8 = a4;
  if (([v8 isDownstreamEndpoint] & 1) == 0)
  {
    v6 = [(UARPUploader *)self controller];
    v7 = [v8 accessory];
    [v6 queryCompleteForAccessory:v7 securityDomain:a3 error:0];
  }
}

- (void)updateSecurityMode:(unint64_t)a3 remoteEndpoint:(id)a4
{
  v8 = a4;
  if (([v8 isDownstreamEndpoint] & 1) == 0)
  {
    v6 = [(UARPUploader *)self controller];
    v7 = [v8 accessory];
    [v6 queryCompleteForAccessory:v7 securityMode:a3 error:0];
  }
}

- (void)updateProductionMode:(unint64_t)a3 remoteEndpoint:(id)a4
{
  v8 = a4;
  if (([v8 isDownstreamEndpoint] & 1) == 0)
  {
    v6 = [(UARPUploader *)self controller];
    v7 = [v8 accessory];
    [v6 queryCompleteForAccessory:v7 productionMode:a3 error:0];
  }
}

- (void)updateChipEpoch:(unint64_t)a3 remoteEndpoint:(id)a4
{
  v8 = a4;
  if (([v8 isDownstreamEndpoint] & 1) == 0)
  {
    v6 = [(UARPUploader *)self controller];
    v7 = [v8 accessory];
    [v6 queryCompleteForAccessory:v7 epoch:a3 error:0];
  }
}

- (void)updateNonceSeed:(id)a3 remoteEndpoint:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (([v6 isDownstreamEndpoint] & 1) == 0)
  {
    v7 = [(UARPUploader *)self controller];
    v8 = [v6 accessory];
    [v7 queryCompleteForAccessory:v8 nonceSeed:v9 error:0];
  }
}

- (void)updateNonceHash:(id)a3 remoteEndpoint:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (([v6 isDownstreamEndpoint] & 1) == 0)
  {
    v7 = [(UARPUploader *)self controller];
    v8 = [v6 accessory];
    [v7 queryCompleteForAccessory:v8 nonceHash:v9 error:0];
  }
}

- (BOOL)shouldSendFirmwareStagingProgressForAccessory:(id)a3 asset:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_isInternalBuild && ([v7 id], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isDynamicAsset"), v9, (v10 & 1) == 0))
  {
    v12 = [v6 modelNumber];
    v13 = [UARPSupportedAccessory findByAppleModelNumber:v12];

    if ([v13 supportsInternalSettings])
    {
      lastReportedProgressTime = self->_lastReportedProgressTime;
      v15 = [v6 uuid];
      v16 = [(NSMutableDictionary *)lastReportedProgressTime objectForKeyedSubscript:v15];

      v17 = [MEMORY[0x277CBEAA8] date];
      v18 = v17;
      if (v16 && ([v17 timeIntervalSinceDate:v16], v19 < 1.0))
      {
        v11 = 0;
      }

      else
      {
        v20 = self->_lastReportedProgressTime;
        v21 = [v6 uuid];
        [(NSMutableDictionary *)v20 setObject:v18 forKeyedSubscript:v21];

        v11 = 1;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)assetStagingComplete:(id)a3 asset:(id)a4 status:(unint64_t)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = self->_log;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    log = v10;
    v24 = [v9 id];
    v19 = [v24 tag];
    v23 = v9;
    v11 = [v8 downstreamID];
    v22 = [v8 accessory];
    v21 = [v22 getID];
    v12 = [v21 modelIdentifier];
    v13 = [v8 accessory];
    v14 = [v13 serialNumber];
    v15 = [v8 accessory];
    v16 = [v15 uuid];
    *buf = 138413570;
    v30 = v19;
    v31 = 1024;
    v32 = v11;
    v9 = v23;
    v33 = 2112;
    v34 = v12;
    v35 = 2112;
    v36 = v14;
    v37 = 2112;
    v38 = v16;
    v39 = 2080;
    v40 = UARPFirmwareStagingCompletionStatusToString(a5);
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "UARP.STAGE.COMPLETE <%@> from <DSID=%u> %@ <SN=%@> <UUID=%@>; status is <%s>", buf, 0x3Au);
  }

  if ([v8 isDownstreamEndpoint])
  {
    if (!a5)
    {
      [(UARPUploaderUARP *)self applyStagedAssetsForoDownstreamEndpoint:v8];
    }
  }

  else
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__UARPUploaderUARP_assetStagingComplete_asset_status___block_invoke;
    block[3] = &unk_278EC2918;
    block[4] = self;
    v26 = v8;
    v27 = v9;
    v28 = a5;
    dispatch_async(queue, block);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __54__UARPUploaderUARP_assetStagingComplete_asset_status___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) accessory];
  v3 = [*(a1 + 48) id];
  [v2 firmwareStagingComplete:v4 assetID:v3 withStatus:*(a1 + 56)];
}

- (void)assetStagingPause:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_log;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    log = v5;
    v6 = [v4 downstreamID];
    v7 = [v4 accessory];
    v8 = [v7 getID];
    v9 = [v8 modelIdentifier];
    v10 = [v4 accessory];
    v11 = [v10 serialNumber];
    v12 = [v4 accessory];
    v13 = [v12 uuid];
    *buf = 67109890;
    v19 = v6;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v13;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "UARP.STAGE.PAUSE from <DSID=%u> %@ <SN=%@> <UUID=%@>", buf, 0x26u);
  }

  v14 = [(UARPUploader *)self controller];
  v15 = [v4 accessory];
  [v14 assetStagingPause:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)assetStagingResume:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_log;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    log = v5;
    v6 = [v4 downstreamID];
    v7 = [v4 accessory];
    v8 = [v7 getID];
    v9 = [v8 modelIdentifier];
    v10 = [v4 accessory];
    v11 = [v10 serialNumber];
    v12 = [v4 accessory];
    v13 = [v12 uuid];
    *buf = 67109890;
    v19 = v6;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v13;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "UARP.STAGE.RESUME from <DSID=%u> %@ <SN=%@> <UUID=%@>", buf, 0x26u);
  }

  v14 = [(UARPUploader *)self controller];
  v15 = [v4 accessory];
  [v14 assetStagingResume:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)rescindStagedAssetsAck:(id)a3 asset:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v9 = log;
    v12[0] = 67109120;
    v12[1] = [v6 downstreamID];
    _os_log_impl(&dword_247AA7000, v9, OS_LOG_TYPE_INFO, "UARP.RESCIND.ACK <DSID=%u>", v12, 8u);
  }

  if (([v6 isDownstreamEndpoint] & 1) == 0)
  {
    v10 = [v6 accessory];
    [(UARPUploader *)self stagedFirmwareRescindComplete:v10 withStatus:6];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)assetRelease:(id)a3 asset:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v17 = v7;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "Release asset %@", buf, 0xCu);
  }

  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __39__UARPUploaderUARP_assetRelease_asset___block_invoke;
  v13[3] = &unk_278EC1140;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)applyStagedAssetStatus:(id)a3 status:(unint64_t)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = self->_log;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    log = v6;
    v7 = [v5 downstreamID];
    v8 = [v5 accessory];
    v9 = [v8 getID];
    v10 = [v9 modelIdentifier];
    v11 = [v5 accessory];
    v12 = [v11 serialNumber];
    v13 = [v5 accessory];
    v14 = [v13 uuid];
    *buf = 67110146;
    v20 = v7;
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v14;
    v27 = 2080;
    v28 = UARPFirmwareApplicationStatusToString(a4);
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "UARP.APPLY.COMPLETE from <DSID=%u> %@ <SN=%@> <UUID=%@>; status is <%s>", buf, 0x30u);
  }

  if (([v5 isDownstreamEndpoint] & 1) == 0)
  {
    v15 = [v5 accessory];
    [(UARPUploader *)self stagedFirmwareApplicationComplete:v15 withStatus:a4];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)transferPauseAck:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v6 = log;
    v7 = [v4 downstreamID];
    v8 = [v4 accessory];
    v10[0] = 67109378;
    v10[1] = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_247AA7000, v6, OS_LOG_TYPE_INFO, "UARP.PAUSE.ACK <DSID=%hu> %@", v10, 0x12u);
  }

  [v4 isDownstreamEndpoint];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)transferResumeAck:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v6 = log;
    v7 = [v4 downstreamID];
    v8 = [v4 accessory];
    v10[0] = 67109378;
    v10[1] = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_247AA7000, v6, OS_LOG_TYPE_INFO, "UARP.RESUME.ACK <DSID=%hu> %@", v10, 0x12u);
  }

  [v4 isDownstreamEndpoint];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)protocolVersionSelected:(id)a3 protocolVersion:(unsigned __int16)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__UARPUploaderUARP_protocolVersionSelected_protocolVersion___block_invoke;
  block[3] = &unk_278EC2CD0;
  v12 = a4;
  v10 = v6;
  v11 = self;
  v8 = v6;
  dispatch_async(queue, block);
}

void __60__UARPUploaderUARP_protocolVersionSelected_protocolVersion___block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessory];
  v3 = [v2 modelNumber];
  v50 = [UARPSupportedAccessory findByAppleModelNumber:v3];

  [*(a1 + 32) setUarpVersion:*(a1 + 48)];
  v4 = [*(a1 + 32) uarpVersion];
  v5 = [*(a1 + 32) accessory];
  [v5 setUarpVersion:v4];

  v6 = *(*(a1 + 40) + 24);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    log = v6;
    v8 = [v7 uarpVersion];
    v9 = [*(a1 + 32) downstreamID];
    v49 = [*(a1 + 32) accessory];
    v10 = [v49 getID];
    v11 = [v10 modelIdentifier];
    v12 = [*(a1 + 32) accessory];
    v13 = [v12 serialNumber];
    v14 = [*(a1 + 32) accessory];
    v15 = [v14 uuid];
    *buf = 134219010;
    v62 = v8;
    v63 = 1024;
    *v64 = v9;
    *&v64[4] = 2112;
    *&v64[6] = v11;
    v65 = 2112;
    v66 = v13;
    v67 = 2112;
    v68 = v15;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "UARP.PROTOCOL.VERSION (%lu) <DSID=%hu> for %@ <SN=%@> <UUID=%@>", buf, 0x30u);
  }

  if ([*(a1 + 32) uarpVersion])
  {
    v16 = [*(a1 + 32) accessory];
    v17 = [v16 suppressInfoQueries];

    if (v17)
    {
      v18 = *(*(a1 + 40) + 24);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = *(a1 + 32);
        v20 = v18;
        v21 = [v19 accessory];
        *buf = 138412290;
        v62 = v21;
        _os_log_impl(&dword_247AA7000, v20, OS_LOG_TYPE_INFO, "Protocol Version Selected: Suppressed Info Queries for %@", buf, 0xCu);
      }
    }

    else
    {
      if ([v50 supportsFriendlyName])
      {
        [*(a1 + 40) _queryProperty:13 endpoint:*(a1 + 32)];
      }

      [*(a1 + 40) _queryProperty:2 endpoint:*(a1 + 32)];
      [*(a1 + 40) _queryProperty:4 endpoint:*(a1 + 32)];
      [*(a1 + 40) _queryProperty:5 endpoint:*(a1 + 32)];
      [*(a1 + 40) _queryProperty:12 endpoint:*(a1 + 32)];
      [*(a1 + 40) _queryProperty:11 endpoint:*(a1 + 32)];
      [*(a1 + 40) _queryProperty:3 endpoint:*(a1 + 32)];
      [*(a1 + 40) _queryProperty:0 endpoint:*(a1 + 32)];
      [*(a1 + 40) _queryProperty:1 endpoint:*(a1 + 32)];
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v26 = [*(a1 + 32) infoPropertiesToQuery];
      v27 = [v26 countByEnumeratingWithState:&v55 objects:v60 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v56;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v56 != v29)
            {
              objc_enumerationMutation(v26);
            }

            uarpPlatformEndpointRequestInfoProperty([*(a1 + 40) uarpEndpoint], objc_msgSend(*(a1 + 32), "uarpEndpoint"), objc_msgSend(*(*(&v55 + 1) + 8 * i), "unsignedLongValue"));
          }

          v28 = [v26 countByEnumeratingWithState:&v55 objects:v60 count:16];
        }

        while (v28);
      }

      [*(a1 + 32) clearQueuedInfoProperties];
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v31 = [*(a1 + 32) applePropertiesToQuery];
      v32 = [v31 countByEnumeratingWithState:&v51 objects:v59 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v52;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v52 != v34)
            {
              objc_enumerationMutation(v31);
            }

            UARPPlatformEndpointRequestAppleInfoProperty(*(a1 + 40), *(a1 + 32), [*(*(&v51 + 1) + 8 * j) unsignedLongValue]);
          }

          v33 = [v31 countByEnumeratingWithState:&v51 objects:v59 count:16];
        }

        while (v33);
      }

      [*(a1 + 32) clearQueuedAppleProperties];
    }

    v36 = [*(a1 + 32) accessory];
    v37 = [v36 suppressAutomaticDynamicAssets];

    v38 = *(a1 + 40);
    if (v37)
    {
      v39 = v38[3];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = *(a1 + 32);
        v41 = v39;
        v42 = [v40 accessory];
        *buf = 138412290;
        v62 = v42;
        _os_log_impl(&dword_247AA7000, v41, OS_LOG_TYPE_INFO, "Protocol Version Selected: Suppressed Automatic Dynamic Asset Solicitation for %@", buf, 0xCu);
      }
    }

    else
    {
      [v38 solicitExpectedDynamicAssets:*(a1 + 32)];
    }

    v43 = *(*(a1 + 40) + 24);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = *(a1 + 32);
      v45 = v43;
      v46 = [v44 accessory];
      *buf = 136315394;
      v62 = "[UARPUploaderUARP protocolVersionSelected:protocolVersion:]_block_invoke";
      v63 = 2112;
      *v64 = v46;
      _os_log_impl(&dword_247AA7000, v45, OS_LOG_TYPE_INFO, "%s: Calling UARPPlatformControllerReofferFirmwareAsset() for %@", buf, 0x16u);
    }

    UARPPlatformControllerReofferFirmwareAsset(*(a1 + 40), *(a1 + 32));
  }

  else
  {
    v22 = *(*(a1 + 40) + 24);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = *(a1 + 32);
      v24 = v22;
      v25 = [v23 accessory];
      *buf = 138412290;
      v62 = v25;
      _os_log_impl(&dword_247AA7000, v24, OS_LOG_TYPE_INFO, "Protocol Version Invalid, no further action until a new SYNC occurs %@", buf, 0xCu);
    }
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (void)assetSolicitationComplete:(id)a3 asset:(id)a4 status:(unint64_t)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = self->_log;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    log = v10;
    v24 = [v9 id];
    v20 = [v24 tag];
    v23 = [v8 accessory];
    v22 = [v23 getID];
    v11 = [v22 modelIdentifier];
    v12 = [v8 accessory];
    v13 = [v12 serialNumber];
    v14 = [v8 accessory];
    v15 = [v14 uuid];
    *buf = 138413314;
    v26 = v20;
    v27 = 2112;
    v28 = v11;
    v29 = 2112;
    v30 = v13;
    v31 = 2112;
    v32 = v15;
    v33 = 2080;
    v34 = UARPFirmwareStagingCompletionStatusToString(a5);
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "UARP.SOLICIT.COMPLETE <%@> from %@ <SN=%@> <UUID=%@>; status is <%s>", buf, 0x34u);
  }

  v16 = [(UARPUploader *)self controller];
  v17 = [v8 accessory];
  v18 = [v9 id];
  [v16 assetSolicitationComplete:v17 assetID:v18 withStatus:a5];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)assetSolicitationProgress:(id)a3 asset:(id)a4 offset:(unint64_t)a5 assetLength:(unint64_t)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = self->_log;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v24 = v12;
    v25 = [v10 accessory];
    *buf = 138413058;
    v33 = v11;
    v34 = 2112;
    v35 = v25;
    v36 = 2048;
    v37 = a5;
    v38 = 2048;
    v39 = a6;
    _os_log_debug_impl(&dword_247AA7000, v24, OS_LOG_TYPE_DEBUG, "Asset <%@> Solicitation progress for accessory <%@> offset=<%lu> of total=<%lu>", buf, 0x2Au);
  }

  v13 = self->_log;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    log = v13;
    v31 = [v11 id];
    v26 = [v31 tag];
    v30 = [v10 accessory];
    v29 = [v30 getID];
    v14 = [v29 modelIdentifier];
    v15 = [v10 accessory];
    v16 = [v15 serialNumber];
    v17 = [v10 accessory];
    [v17 uuid];
    v27 = v11;
    v19 = v18 = a5;
    *buf = 138413570;
    v33 = v26;
    v34 = 2048;
    v35 = v18;
    v36 = 2048;
    v37 = a6;
    v38 = 2112;
    v39 = v14;
    v40 = 2112;
    v41 = v16;
    v42 = 2112;
    v43 = v19;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "UARP.SOLICIT.PROGRESS <%@> <offset=%lu> <asset length=%lu> from %@ <SN=%@> <UUID=%@>", buf, 0x3Eu);

    a5 = v18;
    v11 = v27;
  }

  v20 = [(UARPUploader *)self controller];
  v21 = [v10 accessory];
  v22 = [v11 id];
  [v20 assetSolicitationProgress:v21 assetID:v22 bytesReceived:a5 bytesTotal:a6];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)offerDynamicAssetToAccessory:(id)a3 asset:(id)a4 internalOffer:(BOOL)a5 tag:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__UARPUploaderUARP_offerDynamicAssetToAccessory_asset_internalOffer_tag___block_invoke;
  block[3] = &unk_278EC2CF8;
  block[4] = self;
  v18 = v11;
  v21 = a5;
  v19 = v10;
  v20 = v12;
  v14 = v12;
  v15 = v10;
  v16 = v11;
  dispatch_async(queue, block);
}

void __73__UARPUploaderUARP_offerDynamicAssetToAccessory_asset_internalOffer_tag___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    log = v2;
    v23 = [v3 id];
    v4 = [v23 tag];
    if (*(a1 + 64))
    {
      v5 = @"Internal";
    }

    else
    {
      v5 = @"External";
    }

    v22 = [*(a1 + 48) accessory];
    v6 = [v22 getID];
    v7 = [v6 modelIdentifier];
    v8 = [*(a1 + 48) accessory];
    v9 = [v8 serialNumber];
    v10 = [*(a1 + 48) accessory];
    v11 = [v10 uuid];
    *buf = 138413314;
    v25 = v4;
    v26 = 2112;
    v27 = v5;
    v28 = 2112;
    v29 = v7;
    v30 = 2112;
    v31 = v9;
    v32 = 2112;
    v33 = v11;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "UARP.OFFER.DA %@ <%@> from %@ <SN=%@> <UUID=%@>", buf, 0x34u);
  }

  v12 = UARPPlatformControllerOfferDynamicAsset(*(a1 + 32), *(a1 + 48), *(a1 + 40), *(a1 + 56), *(a1 + 64));
  if (v12)
  {
    v13 = v12;
    v14 = *(*(a1 + 32) + 24);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 48);
      v17 = v14;
      v18 = [v16 accessory];
      v19 = *(a1 + 40);
      v20 = uarpStatusCodeToString(v13);
      *buf = 138412802;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      v28 = 2080;
      v29 = v20;
      _os_log_error_impl(&dword_247AA7000, v17, OS_LOG_TYPE_ERROR, "Failed to offering dynamic asset; accessory is %@ asset is %@. Status is %s", buf, 0x20u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)processDynamicAssetVoiceAssist:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__UARPUploaderUARP_processDynamicAssetVoiceAssist___block_invoke;
  block[3] = &unk_278EC1948;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

uint64_t __51__UARPUploaderUARP_processDynamicAssetVoiceAssist___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = 0;
  return [v1 processDynamicAsset:&v3];
}

- (void)processDynamicAssetHeySiriCompact:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__UARPUploaderUARP_processDynamicAssetHeySiriCompact___block_invoke;
  block[3] = &unk_278EC1948;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

uint64_t __54__UARPUploaderUARP_processDynamicAssetHeySiriCompact___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = 0;
  return [v1 processDynamicAsset:&v3];
}

- (void)solicitExpectedDynamicAssets:(id)a3
{
  v4 = a3;
  if ([v4 isDownstreamEndpoint])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "Protocol Version Selected: Do not query expected dynamic assets for downstream endpoints", buf, 2u);
    }
  }

  else
  {
    v6 = [v4 accessory];
    v7 = [v6 modelNumber];
    v8 = [UARPSupportedAccessory findByAppleModelNumber:v7];

    if (v8)
    {
      if ([v8 supportsHeySiriCompact])
      {
        v9 = self->_log;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [UARPUploaderUARP solicitExpectedDynamicAssets:v9];
        }

        v10 = +[UARPHeySiriModelCompact tag];
        v19 = 0;
        [(UARPUploaderUARP *)self solicitDynamicAssetForRemoteEndpoint:v4 assetTag:v10 internalSolicit:1 error:&v19];
      }

      if ([v8 supportsAnalytics])
      {
        v11 = [v8 hardwareID];
        v12 = [v11 transport];

        if (v12 == 3)
        {
          v13 = self->_log;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            [UARPUploaderUARP solicitExpectedDynamicAssets:v13];
          }

          v14 = +[UARPDynamicAssetAnalyticsEvent tag];
          v18 = 0;
          [(UARPUploaderUARP *)self solicitDynamicAssetForRemoteEndpoint:v4 assetTag:v14 internalSolicit:1 error:&v18];
        }
      }

      if ([v8 supportsVersions])
      {
        v15 = self->_log;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [UARPUploaderUARP solicitExpectedDynamicAssets:v15];
        }

        v16 = +[UARPDynamicAssetVersions tag];
        v17 = 0;
        [(UARPUploaderUARP *)self solicitDynamicAssetForRemoteEndpoint:v4 assetTag:v16 internalSolicit:1 error:&v17];
      }
    }
  }
}

- (void)processDynamicAssetVersions:(id)a3 partnerSerialNumbers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__UARPUploaderUARP_processDynamicAssetVersions_partnerSerialNumbers___block_invoke;
    block[3] = &unk_278EC29B8;
    v11 = v7;
    v12 = self;
    v13 = v6;
    dispatch_async(queue, block);
  }
}

void __69__UARPUploaderUARP_processDynamicAssetVersions_partnerSerialNumbers___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) componentsJoinedByString:{@", "}];
  v3 = [*(a1 + 40) controller];
  v4 = [v3 updateProperty:35 value:v2 forAccessory:*(a1 + 48)];

  if ((v4 & 1) == 0 && os_log_type_enabled(*(*(a1 + 40) + 24), OS_LOG_TYPE_ERROR))
  {
    __69__UARPUploaderUARP_processDynamicAssetVersions_partnerSerialNumbers___block_invoke_cold_1(v2, (a1 + 48));
  }
}

- (void)rescindAssets:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__UARPUploaderUARP_rescindAssets___block_invoke;
  v7[3] = &unk_278EC1140;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __34__UARPUploaderUARP_rescindAssets___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEA60];
  v3 = [*(a1 + 32) accessory];
  v5 = [v2 arrayWithObject:v3];

  v4 = [*(a1 + 40) controller];
  [v4 rescindStagedFirmwareOnAccessoryList:v5 withUserIntent:0];
}

- (void)rescindedRxDynamicAsset:(id)a3 asset:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v17 = v7;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "Rescinded Dynamic Asset %@", buf, 0xCu);
  }

  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__UARPUploaderUARP_rescindedRxDynamicAsset_asset___block_invoke;
  v13[3] = &unk_278EC1140;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)addMappingDatabaseFromAsset:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__UARPUploaderUARP_addMappingDatabaseFromAsset___block_invoke;
  v7[3] = &unk_278EC1140;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __48__UARPUploaderUARP_addMappingDatabaseFromAsset___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [UARPDynamicAssetTmapDatabase alloc];
  v4 = [*(a1 + 32) id];
  v5 = [v4 localURL];
  v6 = [(UARPDynamicAssetTmapDatabase *)v3 initTmapDatabase:v5];

  [v6 decomposeUARP];
  v7 = [UARPDynamicAssetCmapDatabase alloc];
  v8 = [*(a1 + 32) id];
  v9 = [v8 localURL];
  v10 = [(UARPDynamicAssetCmapDatabase *)v7 initCmapDatabase:v9];

  [v10 decomposeUARP];
  [*(a1 + 40) qProcessDynamicAssets];

  objc_autoreleasePoolPop(v2);
}

- (void)addUnprocessedDynamicAsset:(id)a3 withAssetTag:(id)a4 serialNumber:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(__CFString *)v10 length])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      [UARPUploaderUARP addUnprocessedDynamicAsset:? withAssetTag:? serialNumber:?];
    }

    v12 = @"Unknown";

    v10 = v12;
  }

  queue = self->_queue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __73__UARPUploaderUARP_addUnprocessedDynamicAsset_withAssetTag_serialNumber___block_invoke;
  v17[3] = &unk_278EC2A58;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v21 = self;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  dispatch_async(queue, v17);
}

void __73__UARPUploaderUARP_addUnprocessedDynamicAsset_withAssetTag_serialNumber___block_invoke(void *a1)
{
  v2 = [[UARPSuperBinaryAsset alloc] initWithURL:a1[4] assetTag:a1[5] serialNumber:a1[6]];
  [*(a1[7] + 1400) addObject:v2];
}

- (void)qProcessDynamicAssets
{
  v22 = *MEMORY[0x277D85DE8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "UARP Processing Dynamic Assets.", buf, 2u);
  }

  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  obj = self->_unprocessedDynamicAssets;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 assetTag];
        v10 = +[UARPDynamicAssetMappedAnalyticsEvent tag];
        if ([v9 isEqual:v10])
        {
          v11 = [(UARPUploaderUARP *)self qProcessMticDynamicAsset:v8];
        }

        else
        {
          v11 = 0;
        }

        v12 = +[UARPDynamicAssetCrashLogEvent tag];
        if (![v9 isEqual:v12])
        {
          if (!v11)
          {
            goto LABEL_16;
          }

LABEL_15:
          [v14 addObject:v8];
          goto LABEL_16;
        }

        if ([(UARPUploaderUARP *)self qProcessCrshDynamicAsset:v8])
        {
          goto LABEL_15;
        }

LABEL_16:
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_unprocessedDynamicAssets removeObjectsInArray:v14];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)ageOutUnprocessedDynamicAssets
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__UARPUploaderUARP_ageOutUnprocessedDynamicAssets__block_invoke;
  block[3] = &unk_278EC1948;
  block[4] = self;
  dispatch_async(queue, block);
}

void __50__UARPUploaderUARP_ageOutUnprocessedDynamicAssets__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_247AA7000, v2, OS_LOG_TYPE_INFO, "UARP Aging out old Dynamic Assets.", buf, 2u);
  }

  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(*(a1 + 32) + 1400);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 timeCreated];
        [v10 timeIntervalSinceNow];
        v12 = v11;

        if (v12 >= 604800.0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v6);
  }

  [*(*(a1 + 32) + 1400) removeObjectsInArray:v3];
  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)qProcessMticDynamicAsset:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "Processing Existing MTIC Dynamic Asset with new TMAP", v12, 2u);
  }

  v6 = [v4 url];
  v7 = [UARPDynamicAssetMappedAnalyticsEvent alloc];
  v8 = [v4 serialNumber];
  v9 = [(UARPDynamicAssetMappedAnalyticsEvent *)v7 initWithURL:v6 serialNumber:v8];

  if ([(UARPDynamicAssetMappedAnalyticsEvent *)v9 decomposeUARP])
  {
    if (![(UARPDynamicAssetMappedAnalyticsEvent *)v9 findMatchingTMAP])
    {
      v10 = 0;
      goto LABEL_9;
    }

    if ([(UARPDynamicAssetMappedAnalyticsEvent *)v9 expandMTICPayloads])
    {
      [(UARPDynamicAssetMappedAnalyticsEvent *)v9 send];
    }
  }

  v10 = 1;
LABEL_9:

  return v10;
}

- (BOOL)qProcessCrshDynamicAsset:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "Processing Existing CRSH Dynamic Asset with new CMAP", v9, 2u);
  }

  v6 = [v4 url];
  v7 = [[UARPDynamicAssetCrashLogEvent alloc] initWithURL:v6];
  if ([(UARPDynamicAssetCrashLogEvent *)v7 decomposeUARP])
  {
    [(UARPDynamicAssetCrashLogEvent *)v7 processCrashInstance];
  }

  return 1;
}

- (BOOL)startTapToRadar:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_isTapToRadarMode)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "Already in Tap To Radar Mode.", buf, 2u);
    }
  }

  else
  {
    self->_isTapToRadarMode = 1;
    objc_storeStrong(&self->_ttrDirectory, a3);
    [(UARPUploaderUARP *)self copyDynamicAssetsForTapToRadar];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = self->_accessories;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(UARPUploaderUARP *)self solicitDynamicAssetsForTapToRadar:*(*(&v14 + 1) + 8 * v11++), v14];
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)stopTapToRadar
{
  self->_isTapToRadarMode = 0;
  ttrDirectory = self->_ttrDirectory;
  self->_ttrDirectory = 0;
  MEMORY[0x2821F96F8]();
}

- (void)solicitDynamicAssetsForTapToRadar:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "UARP.TTR.Solicit Dynamic Assets for Radar.", v7, 2u);
  }

  v6 = [[UARPAssetTag alloc] initWithString:@"LOGS"];
  [v4 solicitLogsDynamicAssetForTTR];
}

- (void)copyDynamicAssetsForTapToRadar
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = UARPStringLogsDirectoryFilePath();
  v5 = [v3 contentsOfDirectoryAtPath:v4 error:0];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      v10 = 0;
      do
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v30 + 1) + 8 * v10);
        v12 = UARPStringLogsDirectoryFilePath();
        v13 = [(NSURL *)self->_ttrDirectory path];
        UARPCopyFile(v12, v13, v11);

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v8);
  }

  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = UARPStringCrashAnalyticsDirectoryFilePath();
  v16 = [v14 contentsOfDirectoryAtPath:v15 error:0];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    do
    {
      v21 = 0;
      do
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v26 + 1) + 8 * v21);
        v23 = UARPStringCrashAnalyticsDirectoryFilePath();
        v24 = [(NSURL *)self->_ttrDirectory path];
        UARPCopyFile(v23, v24, v22);

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v19);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)pendingTssRequests
{
  v3 = objc_opt_new();
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    [(UARPUploaderUARP *)log pendingTssRequests:v5];
  }

  queue = self->_queue;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __38__UARPUploaderUARP_pendingTssRequests__block_invoke;
  v19 = &unk_278EC1140;
  v20 = self;
  v21 = v3;
  v13 = v3;
  dispatch_sync(queue, &v16);
  v14 = [MEMORY[0x277CBEA60] arrayWithArray:{v13, v16, v17, v18, v19, v20}];

  return v14;
}

void __38__UARPUploaderUARP_pendingTssRequests__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __38__UARPUploaderUARP_pendingTssRequests__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = *(*(a1 + 32) + 1288);
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v23;
    *&v12 = 136315394;
    v21 = v12;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = [*(*(&v22 + 1) + 8 * i) pendingTssRequests];
        v17 = *(*(a1 + 32) + 24);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = v17;
          v19 = [v16 count];
          *buf = v21;
          v27 = "[UARPUploaderUARP pendingTssRequests]_block_invoke";
          v28 = 2048;
          v29 = v19;
          _os_log_impl(&dword_247AA7000, v18, OS_LOG_TYPE_INFO, "%s: Num of pending tatsu requests %lu", buf, 0x16u);
        }

        if (v16)
        {
          [*(a1 + 40) addObjectsFromArray:v16];
        }
      }

      v13 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v13);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)tssResponse:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__UARPUploaderUARP_tssResponse___block_invoke;
  v7[3] = &unk_278EC1140;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __32__UARPUploaderUARP_tssResponse___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    *buf = 136315394;
    v22 = "[UARPUploaderUARP tssResponse:]_block_invoke";
    v23 = 2112;
    v24 = v3;
    _os_log_impl(&dword_247AA7000, v2, OS_LOG_TYPE_INFO, "%s: Checking pending TSS requests for response %@", buf, 0x16u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(*(a1 + 32) + 1288);
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v18;
    *&v6 = 136315650;
    v16 = v6;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = *(*(a1 + 32) + 24);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = *(a1 + 40);
          *buf = v16;
          v22 = "[UARPUploaderUARP tssResponse:]_block_invoke";
          v23 = 2112;
          v24 = v10;
          v25 = 2112;
          v26 = v12;
          _os_log_impl(&dword_247AA7000, v11, OS_LOG_TYPE_INFO, "%s: Checking endpoint %@ for TSS requests for response %@", buf, 0x20u);
        }

        if ([*(a1 + 32) tssResponseForEndpoint:v10 tssResponse:{*(a1 + 40), v16, v17}])
        {
          v13 = *(*(a1 + 32) + 24);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = *(a1 + 40);
            *buf = 136315394;
            v22 = "[UARPUploaderUARP tssResponse:]_block_invoke";
            v23 = 2112;
            v24 = v14;
            _os_log_impl(&dword_247AA7000, v13, OS_LOG_TYPE_INFO, "%s: Matched TSS requests with response %@", buf, 0x16u);
          }

          goto LABEL_16;
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v17 objects:v27 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)tssResponseForEndpoint:(id)a3 tssResponse:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = 136315394;
    v16 = "[UARPUploaderUARP tssResponseForEndpoint:tssResponse:]";
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "%s: Check matching TSS requests for %@", &v15, 0x16u);
  }

  v9 = [v6 handlePersonalizationResponse:v7];
  v10 = self->_log;
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      v15 = 136315394;
      v16 = "[UARPUploaderUARP tssResponseForEndpoint:tssResponse:]";
      v17 = 2112;
      v18 = v6;
      v12 = "%s: matching TSS request for %@";
LABEL_8:
      _os_log_impl(&dword_247AA7000, v10, OS_LOG_TYPE_INFO, v12, &v15, 0x16u);
    }
  }

  else if (v11)
  {
    v15 = 136315394;
    v16 = "[UARPUploaderUARP tssResponseForEndpoint:tssResponse:]";
    v17 = 2112;
    v18 = v6;
    v12 = "%s: No matching TSS requests for %@";
    goto LABEL_8;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)addAccessory:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_5(&dword_247AA7000, v0, v1, "Add accessory %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)accessoryReachable:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_5(&dword_247AA7000, v0, v1, "Reachable accessory %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)accessoryReachable:remoteEndpoint:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_5(&dword_247AA7000, v0, v1, "Reachable remoteEndpoint %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)recvDataFromAccessory:data:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_7_1(&dword_247AA7000, v0, v1, "Recv %@ bytes accessory %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __53__UARPUploaderUARP_recvDataFromAccessory_data_error___block_invoke_cold_1(void *a1, unsigned int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a1;
  uarpStatusCodeToString(a2);
  OUTLINED_FUNCTION_11_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);

  v9 = *MEMORY[0x277D85DE8];
}

void __53__UARPUploaderUARP_recvDataFromAccessory_data_error___block_invoke_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_5(&dword_247AA7000, a1, a3, "%s: could not find remote endpoint", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)recvDataFromEndpoint:data:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_7_1(&dword_247AA7000, v0, v1, "Recv %@ bytes endpoint %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __52__UARPUploaderUARP_recvDataFromEndpoint_data_error___block_invoke_cold_1(void *a1, unsigned int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  uarpStatusCodeToString(a2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_1(&dword_247AA7000, v4, v5, "UARPPlatformControllerRecvMessage() returned %s", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __54__UARPUploaderUARP_offerAssetToAccessory_asset_error___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(*(*a1 + 8) + 24);
  v5 = a2;
  v6 = uarpStatusCodeToString(v4);
  v7 = *a3;
  v9 = 136315650;
  v10 = "[UARPUploaderUARP offerAssetToAccessory:asset:error:]_block_invoke";
  v11 = 2080;
  v12 = v6;
  v13 = 2112;
  v14 = v7;
  _os_log_error_impl(&dword_247AA7000, v5, OS_LOG_TYPE_ERROR, "%s: failed to offer firmware <%s> for accessory %@", &v9, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

void __54__UARPUploaderUARP_offerAssetToAccessory_asset_error___block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)pauseAssetTransfersForAccessory:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_5(&dword_247AA7000, v0, v1, "Pause asset transfers %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)resumeAssetTransfersForAccessory:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_5(&dword_247AA7000, v0, v1, "Resume asset transfers %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)cancelAssetStagingForAccessory:asset:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_7_1(&dword_247AA7000, v0, v1, "Rescind asset %@ for accessory %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)supplementalAssetUpdated:assetName:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_3_0(&dword_247AA7000, v0, v1, "NO Supplemental asset ?! for %@, located at %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)supplementalAssetUpdated:assetName:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)supplementalAssetUpdated:assetName:error:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __58__UARPUploaderUARP_queryFirmwareUpdateResultForAccessory___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 40));
  OUTLINED_FUNCTION_1_5(&dword_247AA7000, a2, a3, "Query last action/status for accessory %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)solicitDynamicAssetForAccessory:assetTag:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __80__UARPUploaderUARP_solicitDynamicAssetForAccessory_asset_internalSolicit_error___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_3_0(&dword_247AA7000, v1, v2, "Could not solicit Dynamic Asset from accessory\n%@%@");
  v3 = *MEMORY[0x277D85DE8];
}

void __80__UARPUploaderUARP_solicitDynamicAssetForAccessory_asset_internalSolicit_error___block_invoke_cold_2(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *a2;
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_3_0(&dword_247AA7000, v4, v5, "Could not find remote endpoint to solicit Dynamic Asset from accessory\n%@%@");
  v6 = *MEMORY[0x277D85DE8];
}

void __88__UARPUploaderUARP_solicitDynamicAssetForRemoteEndpoint_assetTag_internalSolicit_error___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  v2 = *v1;
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_3_0(&dword_247AA7000, v3, v4, "Could not solicit Dynamic Asset from accessory\n%@%@");
  v5 = *MEMORY[0x277D85DE8];
}

void __61__UARPUploaderUARP_offerDynamicAssetToAccessory_asset_error___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  v2 = *(v1 + 40);
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_3_0(&dword_247AA7000, v3, v4, "Failed to find endpoint for offering dynamic asset; accessory is %@ asset is %@");
  v5 = *MEMORY[0x277D85DE8];
}

void __71__UARPUploaderUARP_unsolicitedDynamicAssetForAccessory_assetTag_error___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  OUTLINED_FUNCTION_1_6();
  v7 = v3;
  _os_log_debug_impl(&dword_247AA7000, v4, OS_LOG_TYPE_DEBUG, "Unsolicited Dynamic Asset %@\nfrom accessory %@", v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __49__UARPUploaderUARP_handlePersonalizationRequest___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __49__UARPUploaderUARP_handlePersonalizationRequest___block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __48__UARPUploaderUARP_discoverDownstreamEndpoints___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)firmwareAssetIDForDownstreamEndpoint:(void *)a1 error:(void *)a2 .cold.1(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 downstreamID];
  v5 = [a2 accessory];
  v6 = [v5 getID];
  v7 = [v6 modelIdentifier];
  v8 = [a2 accessory];
  v9 = [v8 serialNumber];
  v10 = [a2 accessory];
  v11 = [v10 uuid];
  v13[0] = 67109890;
  v13[1] = v4;
  v14 = 2112;
  v15 = v7;
  v16 = 2112;
  v17 = v9;
  v18 = 2112;
  v19 = v11;
  _os_log_error_impl(&dword_247AA7000, v3, OS_LOG_TYPE_ERROR, "UARP.OFFER firmware asset to <DSID=%u> %@ <SN=%@> <UUID=%@> - No direct endpoint", v13, 0x26u);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)sendMessageToAccessory:(void *)a1 uarpMsg:(void *)a2 .cold.1(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 length];
  v4 = [OUTLINED_FUNCTION_11() accessory];
  v6[0] = 67109378;
  v6[1] = a2;
  v7 = 2112;
  v8 = v4;
  _os_log_debug_impl(&dword_247AA7000, v3, OS_LOG_TYPE_DEBUG, "Send %d bytes to accessory %@", v6, 0x12u);

  v5 = *MEMORY[0x277D85DE8];
}

void __41__UARPUploaderUARP_watchdogExpireLayer2___block_invoke_cold_1(uint64_t *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_11() accessory];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)solicitExpectedDynamicAssets:(void *)a1 .cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_11() accessory];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_1(&dword_247AA7000, v4, v5, "Solicit HSML from accessory %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)solicitExpectedDynamicAssets:(void *)a1 .cold.2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_11() accessory];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_1(&dword_247AA7000, v4, v5, "Solicit TICS (expected Dynamic Assets) from accessory %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)solicitExpectedDynamicAssets:(void *)a1 .cold.3(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_11() accessory];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_1(&dword_247AA7000, v4, v5, "Solicit VERS from accessory %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __69__UARPUploaderUARP_processDynamicAssetVersions_partnerSerialNumbers___block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_3_0(&dword_247AA7000, v3, v4, "Failed to send partnerSerialNumbers %@ for accessory %@");
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addUnprocessedDynamicAsset:(void *)a1 withAssetTag:serialNumber:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_11() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)pendingTssRequests
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_5(&dword_247AA7000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __38__UARPUploaderUARP_pendingTssRequests__block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_5(&dword_247AA7000, a1, a3, "%s: on queue", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end