@interface VUARPAccessory
- (BOOL)addController;
- (BOOL)connectToUARP:(id *)a3;
- (BOOL)fullyStaged:(id)a3 error:(id *)a4;
- (BOOL)payloadData:(id)a3 offset:(unint64_t)a4 asset:(id)a5 error:(id *)a6;
- (BOOL)payloadDataComplete:(id)a3 error:(id *)a4;
- (BOOL)payloadReady:(id)a3 error:(id *)a4;
- (BOOL)removeController;
- (BOOL)uarpApplyStagedAssets:(id)a3 flags:(unsigned __int16 *)a4 error:(id *)a5;
- (BOOL)uarpAssetSolicited:(id)a3 tag:(UARP4ccTag *)a4 error:(id *)a5;
- (BOOL)uarpDynamicAssetOffered:(id)a3 asset:(uarpPlatformAsset *)a4 error:(id *)a5;
- (BOOL)uarpLastError:(unsigned int *)a3 lastAction:(unsigned int *)a4;
- (BOOL)uarpRescindAllAssets:(id)a3 error:(id *)a4;
- (BOOL)uarpSendMessage:(id)a3 controller:(id)a4 error:(id *)a5;
- (BOOL)uarpSuperBinaryOffered:(id)a3 asset:(uarpPlatformAsset *)a4 error:(id *)a5;
- (BOOL)uarpTransferPause:(id)a3 error:(id *)a4;
- (BOOL)uarpTransferResume:(id)a3 error:(id *)a4;
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
- (VUARPAccessory)initWithDelegate:(id)a3 options:(uarpPlatformOptionsObj *)a4;
- (unsigned)recvMessage:(id)a3;
- (void)disconnectFromUARP;
@end

@implementation VUARPAccessory

- (VUARPAccessory)init
{
  [(VUARPAccessory *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VUARPAccessory)initWithDelegate:(id)a3 options:(uarpPlatformOptionsObj *)a4
{
  v6 = a3;
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

    objc_storeWeak(v7 + 238, v6);
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
    v12 = *&a4->maxTxPayloadLength;
    v13 = *&a4->responseTimeout;
    *(v7 + 233) = *&a4->upgradeOnly;
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

- (BOOL)connectToUARP:(id *)a3
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

- (BOOL)uarpSendMessage:(id)a3 controller:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  remoteEndpoint = self->_remoteEndpoint;
  if (remoteEndpoint == v8)
  {
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = sub_1000129AC;
    v21[4] = sub_1000129BC;
    v22 = [NSData dataWithData:v7];
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

  return remoteEndpoint == v8;
}

- (BOOL)uarpTransferPause:(id)a3 error:(id *)a4
{
  v5 = a3;
  remoteEndpoint = self->_remoteEndpoint;
  if (remoteEndpoint == v5)
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

  return remoteEndpoint == v5;
}

- (BOOL)uarpTransferResume:(id)a3 error:(id *)a4
{
  v5 = a3;
  remoteEndpoint = self->_remoteEndpoint;
  if (remoteEndpoint == v5)
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

  return remoteEndpoint == v5;
}

- (BOOL)uarpSuperBinaryOffered:(id)a3 asset:(uarpPlatformAsset *)a4 error:(id *)a5
{
  v7 = a3;
  if (self->_remoteEndpoint == v7)
  {
    v17 = [[VUARPAsset alloc] initWithLayer2Asset:a4 controller:self->_remoteEndpoint];
    [(NSMutableArray *)self->_assets addObject:v17];
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      remoteEndpoint = self->_remoteEndpoint;
      *buf = 138412802;
      v28 = v17;
      v29 = 2112;
      v30 = self;
      v31 = 2112;
      v32 = remoteEndpoint;
      _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Asset %@ offered to accessory %@ from controller %@", buf, 0x20u);
    }

    v26 = 0;
    *buf = 0;
    if (uarpPlatformEndpointAssetIsAcceptable(&self->_uarpAccessoryInternal._options.maxTxPayloadLength, a4, &v26, buf))
    {
      goto LABEL_8;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v20 = [WeakRetained vuarpStageAllowed];

    if (v20)
    {
      if (v26)
      {
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
        {
          sub_1000268C0();
        }

        if (!uarpPlatformEndpointAssetAccept(&self->_uarpAccessoryInternal, [(VUARPController *)self->_remoteEndpoint uarpRemoteEndpoint], a4, v17, [(VUARPAsset *)v17 uarpCallbacks]))
        {
          v21 = objc_loadWeakRetained(&self->_delegate);
          v22 = [v21 vuarpAssetOffered];

          if (v22)
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

    v23 = [(VUARPController *)self->_remoteEndpoint uarpRemoteEndpoint];
    v16 = uarpPlatformEndpointAssetDeny(&self->_uarpAccessoryInternal, v23, a4, *buf, v17, [(VUARPAsset *)v17 uarpCallbacks]) == 0;
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

- (BOOL)uarpDynamicAssetOffered:(id)a3 asset:(uarpPlatformAsset *)a4 error:(id *)a5
{
  v7 = a3;
  remoteEndpoint = self->_remoteEndpoint;
  if (remoteEndpoint == v7)
  {
    uarpPlatformEndpointAssetDeny(&self->_uarpAccessoryInternal, [(VUARPController *)self->_remoteEndpoint uarpRemoteEndpoint], a4, 3072, 0, 0);
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_100026A00(log, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  return remoteEndpoint == v7;
}

- (BOOL)uarpApplyStagedAssets:(id)a3 flags:(unsigned __int16 *)a4 error:(id *)a5
{
  v7 = a3;
  if (self->_remoteEndpoint == v7)
  {
    if (self->_isStaging)
    {
      *a4 = 5;
      v16 = 1;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v18 = [WeakRetained vuarpApplyStagedAssets];

      v16 = v18 == 1;
      *a4 = v18;
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

- (BOOL)uarpAssetSolicited:(id)a3 tag:(UARP4ccTag *)a4 error:(id *)a5
{
  v7 = a3;
  if (self->_remoteEndpoint == v7)
  {
    v17 = uarpAssetTagStructLogs();
    if (uarp4ccCompare(&a4->char1, v17))
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
      v27 = uarp4ccCompare(&a4->char1, v26);
      v28 = self->_log;
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
      if (!v27)
      {
        if (v29)
        {
          sub_100026B68(v28, v30, v31, v32, v33, v34, v35, v36);
        }

        uarpPlatformEndpointDynamicAssetSolicitationDeny(&self->_uarpAccessoryInternal, [(VUARPController *)self->_remoteEndpoint uarpRemoteEndpoint], a4, 3072);
        goto LABEL_4;
      }

      if (v29)
      {
        sub_100026BE0(v28, v30, v31, v32, v33, v34, v35, v36);
      }
    }

    v37 = [[UARPAssetTag alloc] initWithChar1:a4->char1 char2:a4->char2 char3:a4->char3 char4:a4->char4];
    v38 = [[VUARPAsset alloc] initSolicitedDynamicAsset:v37 controller:self->_remoteEndpoint];
    [(NSMutableArray *)self->_txAssets addObject:v38];
    if (uarpPlatformEndpointPrepareDynamicAsset(&self->_uarpAccessoryInternal, -[VUARPController uarpRemoteEndpoint](self->_remoteEndpoint, "uarpRemoteEndpoint"), v38, a4, [v38 uarpCallbacks]))
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

        uarpPlatformEndpointDynamicAssetSolicitationDeny(&self->_uarpAccessoryInternal, [(VUARPController *)self->_remoteEndpoint uarpRemoteEndpoint], a4, 2304);
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

- (BOOL)uarpRescindAllAssets:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (self->_remoteEndpoint == v5)
  {
    [(NSMutableArray *)self->_assets removeAllObjects];
    self->_isStaging = 0;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v14 = [WeakRetained vuarpRescindStagedAssets];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_100026E38(log, v7, v8, v9, v10, v11, v12, v13);
    }

    v14 = 0;
  }

  return v14;
}

- (BOOL)payloadReady:(id)a3 error:(id *)a4
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [v5 payloadAssetTag];

  LOBYTE(v5) = [WeakRetained vuarpFirmwarePayloadReady:v7];
  return v5;
}

- (BOOL)payloadData:(id)a3 offset:(unint64_t)a4 asset:(id)a5 error:(id *)a6
{
  v9 = a5;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = [v9 payloadAssetTag];

  LOBYTE(a4) = [WeakRetained vuarpFirmwarePayloadData:v12 data:v10 offset:a4];
  return a4;
}

- (BOOL)payloadDataComplete:(id)a3 error:(id *)a4
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [v5 payloadAssetTag];

  LOBYTE(v5) = [WeakRetained vuarpFirmwarePayloadComplete:v7];
  return v5;
}

- (BOOL)fullyStaged:(id)a3 error:(id *)a4
{
  self->_isStaging = 0;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [v5 assetVersion];
  v8 = [WeakRetained vuarpAssetFullyStaged:v7];

  v9 = [v5 uarpAsset];
  return (uarpPlatformEndpointAssetFullyStaged(&self->_uarpAccessoryInternal, v9) == 0) & v8;
}

- (unsigned)recvMessage:(id)a3
{
  v4 = a3;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = sub_1000129AC;
  v11[4] = sub_1000129BC;
  v12 = [NSData dataWithData:v4];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013544;
  block[3] = &unk_100040830;
  v9 = v4;
  v10 = v11;
  block[4] = self;
  v6 = v4;
  dispatch_async(queue, block);

  _Block_object_dispose(v11, 8);
  return 0;
}

- (NSString)manufacturerName
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained vuarpManufacturerName];

  return v3;
}

- (NSString)modelName
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained vuarpModelName];

  return v3;
}

- (NSString)serialNumber
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained vuarpSerialNumber];

  return v3;
}

- (NSString)hardwareVersion
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained vuarpHardwareVersion];

  return v3;
}

- (UARPAssetVersion)fwActiveVersion
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained vuarpActiveFirmwareVersion];

  return v3;
}

- (UARPAssetVersion)fwStagedVersion
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained vuarpStagedFirmwareVersion];

  return v3;
}

- (NSString)appleModelNumber
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained vuarpAppleModelNumber];

  return v3;
}

- (NSString)hwFusingType
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained vuarpHwFusingType];

  return v3;
}

- (BOOL)uarpLastError:(unsigned int *)a3 lastAction:(unsigned int *)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(a4) = [WeakRetained vuarpLastError:a3 lastAction:a4];

  return a4;
}

- (NSString)expectedTag
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained vuarpExpectedTag];

  return v3;
}

@end