@interface UARPUploaderAsset
- (UARPUploaderAsset)initWithUARPAsset:(id)a3 remoteEndpoint:(id)a4 callbacks:(uarpPlatformAssetCallbacks *)a5 internalSolicit:(BOOL)a6;
- (UARPUploaderEndpoint)remoteEndpoint;
- (id)description;
- (void)processHostTLVs;
@end

@implementation UARPUploaderAsset

- (UARPUploaderAsset)initWithUARPAsset:(id)a3 remoteEndpoint:(id)a4 callbacks:(uarpPlatformAssetCallbacks *)a5 internalSolicit:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v28.receiver = self;
  v28.super_class = UARPUploaderAsset;
  v13 = [(UARPUploaderAsset *)&v28 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_asset, a3);
    objc_storeWeak(&v14->_remoteEndpoint, v12);
    v15 = *&a5->fAssetMetaDataComplete;
    *&v14->_uarpCallbacks.fAssetReady = *&a5->fAssetReady;
    *&v14->_uarpCallbacks.fAssetMetaDataComplete = v15;
    v16 = *&a5->fPayloadReady;
    v17 = *&a5->fPayloadMetaDataComplete;
    v18 = *&a5->fPayloadDataComplete2;
    *&v14->_uarpCallbacks.fPayloadData = *&a5->fPayloadData;
    *&v14->_uarpCallbacks.fPayloadDataComplete2 = v18;
    *&v14->_uarpCallbacks.fPayloadReady = v16;
    *&v14->_uarpCallbacks.fPayloadMetaDataComplete = v17;
    v19 = *&a5->fAssetSetBytesAtOffset2;
    v20 = *&a5->fAssetRescindedAck;
    v21 = *&a5->fAssetProcessingNotification2;
    *&v14->_uarpCallbacks.fAssetOrphaned = *&a5->fAssetOrphaned;
    *&v14->_uarpCallbacks.fAssetProcessingNotification2 = v21;
    *&v14->_uarpCallbacks.fAssetSetBytesAtOffset2 = v19;
    *&v14->_uarpCallbacks.fAssetRescindedAck = v20;
    v22 = *&a5->fAssetPreProcessingNotification;
    v23 = *&a5->fAssetAllHeadersAndMetaDataComplete;
    v24 = *&a5->fAssetReleased;
    *&v14->_uarpCallbacks.fAssetGetBytesAtOffset = *&a5->fAssetGetBytesAtOffset;
    *&v14->_uarpCallbacks.fAssetReleased = v24;
    *&v14->_uarpCallbacks.fAssetPreProcessingNotification = v22;
    *&v14->_uarpCallbacks.fAssetAllHeadersAndMetaDataComplete = v23;
    v14->_internalSolicit = a6;
    v25 = os_log_create("com.apple.accessoryupdater.uarp", "uploader");
    log = v14->_log;
    v14->_log = v25;
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(UARPAsset *)self->_asset id];
  v7 = [v6 tag];
  v8 = [v3 stringWithFormat:@"<%@: %@>", v5, v7];

  return v8;
}

- (void)processHostTLVs
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = [UARPSuperBinaryAsset alloc];
  v4 = [(UARPUploaderAsset *)self asset];
  v5 = [v4 id];
  v6 = [v5 localURL];
  v7 = [(UARPSuperBinaryAsset *)v3 initWithURL:v6];

  v52 = 0;
  LODWORD(v5) = [(UARPSuperBinaryAsset *)v7 expandHeadersAndTLVs:&v52];
  v8 = v52;
  if (v5)
  {
    v45 = v8;
    v9 = [(UARPSuperBinaryAsset *)v7 assetVersion];
    v10 = [v9 copy];
    assetVersion = self->_assetVersion;
    self->_assetVersion = v10;

    v12 = [(UARPSuperBinaryAsset *)v7 tlvs];
    v13 = [UARPSuperBinaryAssetTLV findTLVWithType:3436347652 tlvs:v12];

    v44 = v13;
    v43 = [v13 valueAsNumber];
    if ([v43 BOOLValue])
    {
      v14 = [(UARPUploaderAsset *)self asset];
      v15 = [v14 id];
      [v15 setIsUrgentUpdate:1];
    }

    v16 = [(UARPSuperBinaryAsset *)v7 tlvs];
    v17 = [UARPSuperBinaryAssetTLV findTLVWithType:3291140096 tlvs:v16];

    v42 = v17;
    v18 = [v17 valueAsNumber];
    v19 = v18;
    if (v18)
    {
      self->_minimumHostBatteryLevel = [v18 unsignedIntegerValue];
    }

    v41 = v19;
    v20 = [(UARPSuperBinaryAsset *)v7 tlvs];
    v21 = [UARPSuperBinaryAssetTLV findTLVWithType:3291140105 tlvs:v20];

    v40 = v21;
    v22 = [v21 valueAsNumber];
    v23 = v22;
    if (v22)
    {
      self->_triggerHostBatteryLevel = [v22 unsignedIntegerValue];
    }

    v39 = v23;
    v46 = v7;
    v24 = [(UARPSuperBinaryAsset *)v7 tlvs];
    v25 = [UARPSuperBinaryAssetTLV findTLVsWithType:3291140106 tlvs:v24];

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = v25;
    v26 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v49;
      while (2)
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v49 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v48 + 1) + 8 * i);
          v31 = self;
          WeakRetained = objc_loadWeakRetained(&self->_remoteEndpoint);
          v33 = [WeakRetained accessory];
          v34 = [v33 getID];
          v35 = [v34 hwRevision];
          v36 = [v30 valueAsString];
          v37 = [v35 isEqualToString:v36];

          if (v37)
          {
            v31->_invalidHwRevision = 1;
            goto LABEL_18;
          }

          self = v31;
        }

        v27 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
        if (v27)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    v8 = v45;
    v7 = v46;
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (UARPUploaderEndpoint)remoteEndpoint
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteEndpoint);

  return WeakRetained;
}

@end