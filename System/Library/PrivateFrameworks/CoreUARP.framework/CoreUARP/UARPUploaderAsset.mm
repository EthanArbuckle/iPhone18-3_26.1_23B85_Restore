@interface UARPUploaderAsset
- (UARPUploaderAsset)initWithUARPAsset:(id)asset remoteEndpoint:(id)endpoint callbacks:(uarpPlatformAssetCallbacks *)callbacks internalSolicit:(BOOL)solicit;
- (UARPUploaderEndpoint)remoteEndpoint;
- (id)description;
- (void)processHostTLVs;
@end

@implementation UARPUploaderAsset

- (UARPUploaderAsset)initWithUARPAsset:(id)asset remoteEndpoint:(id)endpoint callbacks:(uarpPlatformAssetCallbacks *)callbacks internalSolicit:(BOOL)solicit
{
  assetCopy = asset;
  endpointCopy = endpoint;
  v28.receiver = self;
  v28.super_class = UARPUploaderAsset;
  v13 = [(UARPUploaderAsset *)&v28 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_asset, asset);
    objc_storeWeak(&v14->_remoteEndpoint, endpointCopy);
    v15 = *&callbacks->fAssetMetaDataComplete;
    *&v14->_uarpCallbacks.fAssetReady = *&callbacks->fAssetReady;
    *&v14->_uarpCallbacks.fAssetMetaDataComplete = v15;
    v16 = *&callbacks->fPayloadReady;
    v17 = *&callbacks->fPayloadMetaDataComplete;
    v18 = *&callbacks->fPayloadDataComplete2;
    *&v14->_uarpCallbacks.fPayloadData = *&callbacks->fPayloadData;
    *&v14->_uarpCallbacks.fPayloadDataComplete2 = v18;
    *&v14->_uarpCallbacks.fPayloadReady = v16;
    *&v14->_uarpCallbacks.fPayloadMetaDataComplete = v17;
    v19 = *&callbacks->fAssetSetBytesAtOffset2;
    v20 = *&callbacks->fAssetRescindedAck;
    v21 = *&callbacks->fAssetProcessingNotification2;
    *&v14->_uarpCallbacks.fAssetOrphaned = *&callbacks->fAssetOrphaned;
    *&v14->_uarpCallbacks.fAssetProcessingNotification2 = v21;
    *&v14->_uarpCallbacks.fAssetSetBytesAtOffset2 = v19;
    *&v14->_uarpCallbacks.fAssetRescindedAck = v20;
    v22 = *&callbacks->fAssetPreProcessingNotification;
    v23 = *&callbacks->fAssetAllHeadersAndMetaDataComplete;
    v24 = *&callbacks->fAssetReleased;
    *&v14->_uarpCallbacks.fAssetGetBytesAtOffset = *&callbacks->fAssetGetBytesAtOffset;
    *&v14->_uarpCallbacks.fAssetReleased = v24;
    *&v14->_uarpCallbacks.fAssetPreProcessingNotification = v22;
    *&v14->_uarpCallbacks.fAssetAllHeadersAndMetaDataComplete = v23;
    v14->_internalSolicit = solicit;
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
  asset = [(UARPUploaderAsset *)self asset];
  v5 = [asset id];
  localURL = [v5 localURL];
  v7 = [(UARPSuperBinaryAsset *)v3 initWithURL:localURL];

  v52 = 0;
  LODWORD(v5) = [(UARPSuperBinaryAsset *)v7 expandHeadersAndTLVs:&v52];
  v8 = v52;
  if (v5)
  {
    v45 = v8;
    assetVersion = [(UARPSuperBinaryAsset *)v7 assetVersion];
    v10 = [assetVersion copy];
    assetVersion = self->_assetVersion;
    self->_assetVersion = v10;

    tlvs = [(UARPSuperBinaryAsset *)v7 tlvs];
    v13 = [UARPSuperBinaryAssetTLV findTLVWithType:3436347652 tlvs:tlvs];

    v44 = v13;
    valueAsNumber = [v13 valueAsNumber];
    if ([valueAsNumber BOOLValue])
    {
      asset2 = [(UARPUploaderAsset *)self asset];
      v15 = [asset2 id];
      [v15 setIsUrgentUpdate:1];
    }

    tlvs2 = [(UARPSuperBinaryAsset *)v7 tlvs];
    v17 = [UARPSuperBinaryAssetTLV findTLVWithType:3291140096 tlvs:tlvs2];

    v42 = v17;
    valueAsNumber2 = [v17 valueAsNumber];
    v19 = valueAsNumber2;
    if (valueAsNumber2)
    {
      self->_minimumHostBatteryLevel = [valueAsNumber2 unsignedIntegerValue];
    }

    v41 = v19;
    tlvs3 = [(UARPSuperBinaryAsset *)v7 tlvs];
    v21 = [UARPSuperBinaryAssetTLV findTLVWithType:3291140105 tlvs:tlvs3];

    v40 = v21;
    valueAsNumber3 = [v21 valueAsNumber];
    v23 = valueAsNumber3;
    if (valueAsNumber3)
    {
      self->_triggerHostBatteryLevel = [valueAsNumber3 unsignedIntegerValue];
    }

    v39 = v23;
    v46 = v7;
    tlvs4 = [(UARPSuperBinaryAsset *)v7 tlvs];
    v25 = [UARPSuperBinaryAssetTLV findTLVsWithType:3291140106 tlvs:tlvs4];

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
          selfCopy = self;
          WeakRetained = objc_loadWeakRetained(&self->_remoteEndpoint);
          accessory = [WeakRetained accessory];
          getID = [accessory getID];
          hwRevision = [getID hwRevision];
          valueAsString = [v30 valueAsString];
          v37 = [hwRevision isEqualToString:valueAsString];

          if (v37)
          {
            selfCopy->_invalidHwRevision = 1;
            goto LABEL_18;
          }

          self = selfCopy;
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