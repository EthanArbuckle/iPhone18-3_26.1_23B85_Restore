@interface VUARPAccessory
- (BOOL)addController;
- (BOOL)connectToUARP:(id *)p;
- (BOOL)fullyStaged:(id)staged error:(id *)error;
- (BOOL)payloadData:(id)data offset:(unint64_t)offset asset:(id)asset error:(id *)error;
- (BOOL)payloadDataComplete:(id)complete error:(id *)error;
- (BOOL)payloadReady:(id)ready error:(id *)error;
- (BOOL)removeController;
- (BOOL)uarpApplyStagedAssets:(id)assets flags:(unsigned __int16 *)flags error:(id *)error;
- (BOOL)uarpAssetSolicited:(id)solicited tag:(UARP4ccTag *)tag error:(id *)error;
- (BOOL)uarpDynamicAssetOffered:(id)offered asset:(uarpPlatformAsset *)asset error:(id *)error;
- (BOOL)uarpLastError:(unsigned int *)error lastAction:(unsigned int *)action;
- (BOOL)uarpRescindAllAssets:(id)assets error:(id *)error;
- (BOOL)uarpSendMessage:(id)message controller:(id)controller error:(id *)error;
- (BOOL)uarpSuperBinaryOffered:(id)offered asset:(uarpPlatformAsset *)asset error:(id *)error;
- (BOOL)uarpTransferPause:(id)pause error:(id *)error;
- (BOOL)uarpTransferResume:(id)resume error:(id *)error;
- (NSString)appleModelNumber;
- (NSString)expectedTag;
- (NSString)hardwareVersion;
- (NSString)hwFusingType;
- (NSString)manufacturerName;
- (NSString)modelName;
- (NSString)serialNumber;
- (UARPAssetVersion)fwActiveVersion;
- (UARPAssetVersion)fwStagedVersion;
- (VUARPAccessory)init;
- (VUARPAccessory)initWithDelegate:(id)delegate options:(uarpPlatformOptionsObj *)options;
- (unsigned)recvMessage:(id)message;
- (void)disconnectFromUARP;
@end

@implementation VUARPAccessory

- (VUARPAccessory)init
{
  [(VUARPAccessory *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VUARPAccessory)initWithDelegate:(id)delegate options:(uarpPlatformOptionsObj *)options
{
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = VUARPAccessory;
  v7 = [(VUARPAccessory *)&v19 init];
  if (v7)
  {
    v8 = os_log_create("com.apple.accessoryupdater.uarp", "virtualUARP");
    v9 = *(v7 + 1);
    *(v7 + 1) = v8;

    v10 = dispatch_queue_create("com.apple.vuarp.accessory", 0);
    v11 = *(v7 + 2);
    *(v7 + 2) = v10;

    objc_storeWeak(v7 + 238, delegateCopy);
    *(v7 + 159) = sub_100011F38;
    *(v7 + 160) = sub_100011F90;
    *(v7 + 161) = sub_100011FA0;
    *(v7 + 162) = sub_10001200C;
    *(v7 + 163) = sub_10001201C;
    *(v7 + 164) = sub_1000120B8;
    *(v7 + 166) = sub_1000120E4;
    *(v7 + 168) = sub_100012110;
    *(v7 + 169) = sub_100012120;
    *(v7 + 170) = sub_100012130;
    *(v7 + 172) = sub_100012160;
    *(v7 + 174) = sub_1000121F4;
    *(v7 + 176) = sub_100012288;
    *(v7 + 178) = sub_10001234C;
    *(v7 + 180) = sub_1000123E0;
    *(v7 + 182) = sub_100012450;
    *(v7 + 184) = sub_1000124C0;
    *(v7 + 187) = sub_100012520;
    *(v7 + 188) = sub_100012550;
    v12 = *&options->maxTxPayloadLength;
    v13 = *&options->responseTimeout;
    *(v7 + 233) = *&options->upgradeOnly;
    *(v7 + 1832) = v12;
    *(v7 + 1848) = v13;
    *(v7 + 93) = sub_10001255C;
    *(v7 + 95) = sub_1000125F8;
    *(v7 + 368) = 0;
    v14 = objc_alloc_init(NSMutableArray);
    v15 = *(v7 + 235);
    *(v7 + 235) = v14;

    v16 = objc_alloc_init(NSMutableArray);
    v17 = *(v7 + 236);
    *(v7 + 236) = v16;
  }

  return v7;
}

- (BOOL)addController
{
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100026510(self);
  }

  return uarpPlatformRemoteEndpointAdd(&self->_uarpAccessoryInternal, [(VUARPController *)self->_remoteEndpoint uarpRemoteEndpoint], &self->_uarpOptions, self->_remoteEndpoint) == 0;
}

- (BOOL)removeController
{
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100026584(self);
  }

  return uarpPlatformRemoteEndpointRemove(&self->_uarpAccessoryInternal, [(VUARPController *)self->_remoteEndpoint uarpRemoteEndpoint]) == 0;
}

- (BOOL)connectToUARP:(id *)p
{
  v4 = objc_alloc_init(VUARPController);
  remoteEndpoint = self->_remoteEndpoint;
  self->_remoteEndpoint = v4;

  v6 = uarpPlatformEndpointInit(&self->_uarpAccessoryInternal, self, 0, &self->_uarpOptions, &self->_uarpCallbacks, &self->_vendor, uarpPlatformEndpointCallbackAppleSpecific);
  if (!v6)
  {
    [(VUARPAccessory *)self addController];
  }

  return v6 == 0;
}

- (void)disconnectFromUARP
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012854;
  block[3] = &unk_100040610;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)uarpSendMessage:(id)message controller:(id)controller error:(id *)error
{
  messageCopy = message;
  controllerCopy = controller;
  remoteEndpoint = self->_remoteEndpoint;
  if (remoteEndpoint == controllerCopy)
  {
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = sub_1000129AC;
    v21[4] = sub_1000129BC;
    v22 = [NSData dataWithData:messageCopy];
    queue = self->_queue;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000129C4;
    v20[3] = &unk_100040808;
    v20[4] = self;
    v20[5] = v21;
    dispatch_async(queue, v20);
    _Block_object_dispose(v21, 8);
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_1000265F8(log, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  return remoteEndpoint == controllerCopy;
}

- (BOOL)uarpTransferPause:(id)pause error:(id *)error
{
  pauseCopy = pause;
  remoteEndpoint = self->_remoteEndpoint;
  if (remoteEndpoint == pauseCopy)
  {
    [(VUARPController *)self->_remoteEndpoint pauseDataTransfer];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_1000266F0(log, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  return remoteEndpoint == pauseCopy;
}

- (BOOL)uarpTransferResume:(id)resume error:(id *)error
{
  resumeCopy = resume;
  remoteEndpoint = self->_remoteEndpoint;
  if (remoteEndpoint == resumeCopy)
  {
    [(VUARPController *)self->_remoteEndpoint resumeDataTransfer];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_100026768(log, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  return remoteEndpoint == resumeCopy;
}

- (BOOL)uarpSuperBinaryOffered:(id)offered asset:(uarpPlatformAsset *)asset error:(id *)error
{
  offeredCopy = offered;
  if (self->_remoteEndpoint == offeredCopy)
  {
    v17 = [[VUARPAsset alloc] initWithLayer2Asset:asset controller:self->_remoteEndpoint];
    [(NSMutableArray *)self->_assets addObject:v17];
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      remoteEndpoint = self->_remoteEndpoint;
      *buf = 138412802;
      v28 = v17;
      v29 = 2112;
      selfCopy = self;
      v31 = 2112;
      v32 = remoteEndpoint;
      _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Asset %@ offered to accessory %@ from controller %@", buf, 0x20u);
    }

    v26 = 0;
    *buf = 0;
    if (uarpPlatformEndpointAssetIsAcceptable(&self->_uarpAccessoryInternal._options.maxTxPayloadLength, asset, &v26, buf))
    {
      goto LABEL_8;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    vuarpStageAllowed = [WeakRetained vuarpStageAllowed];

    if (vuarpStageAllowed)
    {
      if (v26)
      {
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
        {
          sub_1000268C0();
        }

        if (!uarpPlatformEndpointAssetAccept(&self->_uarpAccessoryInternal, [(VUARPController *)self->_remoteEndpoint uarpRemoteEndpoint], asset, v17, [(VUARPAsset *)v17 uarpCallbacks]))
        {
          v21 = objc_loadWeakRetained(&self->_delegate);
          vuarpAssetOffered = [v21 vuarpAssetOffered];

          if (vuarpAssetOffered)
          {
            v16 = 1;
            self->_isStaging = 1;
            goto LABEL_22;
          }

          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            sub_100026930();
          }
        }

LABEL_8:
        v16 = 0;
LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_100026858();
      }

      *buf = 3584;
      v26 = 0;
    }

    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100026998();
    }

    uarpRemoteEndpoint = [(VUARPController *)self->_remoteEndpoint uarpRemoteEndpoint];
    v16 = uarpPlatformEndpointAssetDeny(&self->_uarpAccessoryInternal, uarpRemoteEndpoint, asset, *buf, v17, [(VUARPAsset *)v17 uarpCallbacks]) == 0;
    goto LABEL_22;
  }

  v8 = self->_log;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1000267E0(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  v16 = 0;
LABEL_23:

  return v16;
}

- (BOOL)uarpDynamicAssetOffered:(id)offered asset:(uarpPlatformAsset *)asset error:(id *)error
{
  offeredCopy = offered;
  remoteEndpoint = self->_remoteEndpoint;
  if (remoteEndpoint == offeredCopy)
  {
    uarpPlatformEndpointAssetDeny(&self->_uarpAccessoryInternal, [(VUARPController *)self->_remoteEndpoint uarpRemoteEndpoint], asset, 3072, 0, 0);
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_100026A00(log, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  return remoteEndpoint == offeredCopy;
}

- (BOOL)uarpApplyStagedAssets:(id)assets flags:(unsigned __int16 *)flags error:(id *)error
{
  assetsCopy = assets;
  if (self->_remoteEndpoint == assetsCopy)
  {
    if (self->_isStaging)
    {
      *flags = 5;
      v16 = 1;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      vuarpApplyStagedAssets = [WeakRetained vuarpApplyStagedAssets];

      v16 = vuarpApplyStagedAssets == 1;
      *flags = vuarpApplyStagedAssets;
    }
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_100026A78(log, v9, v10, v11, v12, v13, v14, v15);
    }

    v16 = 0;
  }

  return v16;
}

- (BOOL)uarpAssetSolicited:(id)solicited tag:(UARP4ccTag *)tag error:(id *)error
{
  solicitedCopy = solicited;
  if (self->_remoteEndpoint == solicitedCopy)
  {
    v17 = uarpAssetTagStructLogs();
    if (uarp4ccCompare(&tag->char1, v17))
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        sub_100026C58(log, v19, v20, v21, v22, v23, v24, v25);
      }
    }

    else
    {
      v26 = uarpAssetTagStructAnalytics();
      v27 = uarp4ccCompare(&tag->char1, v26);
      v28 = self->_log;
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
      if (!v27)
      {
        if (v29)
        {
          sub_100026B68(v28, v30, v31, v32, v33, v34, v35, v36);
        }

        uarpPlatformEndpointDynamicAssetSolicitationDeny(&self->_uarpAccessoryInternal, [(VUARPController *)self->_remoteEndpoint uarpRemoteEndpoint], tag, 3072);
        goto LABEL_4;
      }

      if (v29)
      {
        sub_100026BE0(v28, v30, v31, v32, v33, v34, v35, v36);
      }
    }

    v37 = [[UARPAssetTag alloc] initWithChar1:tag->char1 char2:tag->char2 char3:tag->char3 char4:tag->char4];
    v38 = [[VUARPAsset alloc] initSolicitedDynamicAsset:v37 controller:self->_remoteEndpoint];
    [(NSMutableArray *)self->_txAssets addObject:v38];
    if (uarpPlatformEndpointPrepareDynamicAsset(&self->_uarpAccessoryInternal, -[VUARPController uarpRemoteEndpoint](self->_remoteEndpoint, "uarpRemoteEndpoint"), v38, tag, [v38 uarpCallbacks]))
    {
      v39 = self->_log;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_100026CD0(v39, v40, v41, v42, v43, v44, v45, v46);
      }
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v48 = [WeakRetained vuarpDynamicAssetSolicited:v38];

      if (v48)
      {
        if (!uarpPlatformEndpointOfferAsset(&self->_uarpAccessoryInternal, [(VUARPController *)self->_remoteEndpoint uarpRemoteEndpoint], v38))
        {
          v16 = 1;
          goto LABEL_25;
        }

        v49 = self->_log;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_100026DC0(v49, v50, v51, v52, v53, v54, v55, v56);
        }
      }

      else
      {
        v57 = self->_log;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          sub_100026D48(v57, v58, v59, v60, v61, v62, v63, v64);
        }

        uarpPlatformEndpointDynamicAssetSolicitationDeny(&self->_uarpAccessoryInternal, [(VUARPController *)self->_remoteEndpoint uarpRemoteEndpoint], tag, 2304);
      }
    }

    v16 = 0;
LABEL_25:

    goto LABEL_26;
  }

  v8 = self->_log;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100026AF0(v8, v9, v10, v11, v12, v13, v14, v15);
  }

LABEL_4:
  v16 = 0;
LABEL_26:

  return v16;
}

- (BOOL)uarpRescindAllAssets:(id)assets error:(id *)error
{
  assetsCopy = assets;
  if (self->_remoteEndpoint == assetsCopy)
  {
    [(NSMutableArray *)self->_assets removeAllObjects];
    self->_isStaging = 0;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    vuarpRescindStagedAssets = [WeakRetained vuarpRescindStagedAssets];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_100026E38(log, v7, v8, v9, v10, v11, v12, v13);
    }

    vuarpRescindStagedAssets = 0;
  }

  return vuarpRescindStagedAssets;
}

- (BOOL)payloadReady:(id)ready error:(id *)error
{
  readyCopy = ready;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  payloadAssetTag = [readyCopy payloadAssetTag];

  LOBYTE(readyCopy) = [WeakRetained vuarpFirmwarePayloadReady:payloadAssetTag];
  return readyCopy;
}

- (BOOL)payloadData:(id)data offset:(unint64_t)offset asset:(id)asset error:(id *)error
{
  assetCopy = asset;
  dataCopy = data;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  payloadAssetTag = [assetCopy payloadAssetTag];

  LOBYTE(offset) = [WeakRetained vuarpFirmwarePayloadData:payloadAssetTag data:dataCopy offset:offset];
  return offset;
}

- (BOOL)payloadDataComplete:(id)complete error:(id *)error
{
  completeCopy = complete;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  payloadAssetTag = [completeCopy payloadAssetTag];

  LOBYTE(completeCopy) = [WeakRetained vuarpFirmwarePayloadComplete:payloadAssetTag];
  return completeCopy;
}

- (BOOL)fullyStaged:(id)staged error:(id *)error
{
  self->_isStaging = 0;
  stagedCopy = staged;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  assetVersion = [stagedCopy assetVersion];
  v8 = [WeakRetained vuarpAssetFullyStaged:assetVersion];

  uarpAsset = [stagedCopy uarpAsset];
  return (uarpPlatformEndpointAssetFullyStaged(&self->_uarpAccessoryInternal, uarpAsset) == 0) & v8;
}

- (unsigned)recvMessage:(id)message
{
  messageCopy = message;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = sub_1000129AC;
  v11[4] = sub_1000129BC;
  v12 = [NSData dataWithData:messageCopy];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013544;
  block[3] = &unk_100040830;
  v9 = messageCopy;
  v10 = v11;
  block[4] = self;
  v6 = messageCopy;
  dispatch_async(queue, block);

  _Block_object_dispose(v11, 8);
  return 0;
}

- (NSString)manufacturerName
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  vuarpManufacturerName = [WeakRetained vuarpManufacturerName];

  return vuarpManufacturerName;
}

- (NSString)modelName
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  vuarpModelName = [WeakRetained vuarpModelName];

  return vuarpModelName;
}

- (NSString)serialNumber
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  vuarpSerialNumber = [WeakRetained vuarpSerialNumber];

  return vuarpSerialNumber;
}

- (NSString)hardwareVersion
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  vuarpHardwareVersion = [WeakRetained vuarpHardwareVersion];

  return vuarpHardwareVersion;
}

- (UARPAssetVersion)fwActiveVersion
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  vuarpActiveFirmwareVersion = [WeakRetained vuarpActiveFirmwareVersion];

  return vuarpActiveFirmwareVersion;
}

- (UARPAssetVersion)fwStagedVersion
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  vuarpStagedFirmwareVersion = [WeakRetained vuarpStagedFirmwareVersion];

  return vuarpStagedFirmwareVersion;
}

- (NSString)appleModelNumber
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  vuarpAppleModelNumber = [WeakRetained vuarpAppleModelNumber];

  return vuarpAppleModelNumber;
}

- (NSString)hwFusingType
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  vuarpHwFusingType = [WeakRetained vuarpHwFusingType];

  return vuarpHwFusingType;
}

- (BOOL)uarpLastError:(unsigned int *)error lastAction:(unsigned int *)action
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(action) = [WeakRetained vuarpLastError:error lastAction:action];

  return action;
}

- (NSString)expectedTag
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  vuarpExpectedTag = [WeakRetained vuarpExpectedTag];

  return vuarpExpectedTag;
}

@end