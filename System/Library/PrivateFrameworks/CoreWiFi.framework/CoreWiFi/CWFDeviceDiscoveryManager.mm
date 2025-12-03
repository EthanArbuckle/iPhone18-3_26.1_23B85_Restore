@interface CWFDeviceDiscoveryManager
- (BOOL)_isRapportTeardownTimerValid;
- (BOOL)_isSupportedModel:(id)model;
- (BOOL)_isWiFiInfoRequestTimerValid;
- (CWFDeviceDiscoveryManager)init;
- (id)_interfaceForModel:(id)model;
- (id)_wifiInfo;
- (id)fetchActiveDevices;
- (void)_fetchAndUpdateActiveDevicesInfo;
- (void)_fetchWiFiInfoForDevice:(id)device rapportDevice:(id)rapportDevice;
- (void)_fetchWiFiInfoForRapportDevice:(id)device completion:(id)completion;
- (void)_invalidateRapportTeardownTimer;
- (void)_invalidateWiFiInfoRetryRequestTimer;
- (void)_registerExtractWiFiInfo;
- (void)_reportFaultEventForDevices:(id)devices;
- (void)_resetRapportClientWithInvalidation:(BOOL)invalidation;
- (void)_sendRapportMessageToDevice:(id)device requestID:(id)d request:(id)request options:(id)options completion:(id)completion;
- (void)_setupRapportClientWithReason:(unint64_t)reason;
- (void)fetchWiFiInfoForDevice:(id)device;
- (void)invalidate;
- (void)registerDelegate:(id)delegate;
- (void)startDiscoveringDevicesIfNeeded:(id)needed withReason:(unint64_t)reason;
- (void)unregisterDelegate:(id)delegate;
@end

@implementation CWFDeviceDiscoveryManager

- (CWFDeviceDiscoveryManager)init
{
  v16.receiver = self;
  v16.super_class = CWFDeviceDiscoveryManager;
  v2 = [(CWFDeviceDiscoveryManager *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_new();
    activeDevices = v2->_activeDevices;
    v2->_activeDevices = v3;

    v5 = objc_opt_new();
    retryDevices = v2->_retryDevices;
    v2->_retryDevices = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INITIATED, 0);

    v9 = dispatch_queue_create("com.apple.corewifi.rapportQueue", v8);
    rapportQueue = v2->_rapportQueue;
    v2->_rapportQueue = v9;

    v11 = objc_opt_new();
    delegates = v2->_delegates;
    v2->_delegates = v11;

    v13 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"[A-F0-9]{8}-[A-F0-9]{4}-[A-F0-9]{4}-[A-F0-9]{4}-[A-F0-9]{12}" options:1 error:0];
    rapportErrorRegex = v2->_rapportErrorRegex;
    v2->_rapportErrorRegex = v13;
  }

  return v2;
}

- (void)registerDelegate:(id)delegate
{
  delegateCopy = delegate;
  rapportQueue = self->_rapportQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0C6561C;
  v7[3] = &unk_1E86E6420;
  v8 = delegateCopy;
  selfCopy = self;
  v6 = delegateCopy;
  dispatch_async(rapportQueue, v7);
}

- (void)unregisterDelegate:(id)delegate
{
  delegateCopy = delegate;
  rapportQueue = self->_rapportQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0C65714;
  v7[3] = &unk_1E86E6420;
  v8 = delegateCopy;
  selfCopy = self;
  v6 = delegateCopy;
  dispatch_async(rapportQueue, v7);
}

- (void)invalidate
{
  objc_initWeak(&location, self);
  rapportQueue = self->_rapportQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1E0C65818;
  v4[3] = &unk_1E86E6190;
  objc_copyWeak(&v5, &location);
  dispatch_async(rapportQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)startDiscoveringDevicesIfNeeded:(id)needed withReason:(unint64_t)reason
{
  neededCopy = needed;
  objc_initWeak(&location, self);
  rapportQueue = self->_rapportQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E0C65B00;
  v9[3] = &unk_1E86E7460;
  objc_copyWeak(v11, &location);
  v10 = neededCopy;
  v11[1] = reason;
  v8 = neededCopy;
  dispatch_async(rapportQueue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

- (id)fetchActiveDevices
{
  objc_initWeak(&location, self);
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2D50;
  v12 = sub_1E0BC61E4;
  v13 = 0;
  rapportQueue = self->_rapportQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C65CAC;
  block[3] = &unk_1E86E7488;
  objc_copyWeak(&v7, &location);
  block[4] = &v8;
  dispatch_sync(rapportQueue, block);
  v4 = v9[5];
  objc_destroyWeak(&v7);
  _Block_object_dispose(&v8, 8);

  objc_destroyWeak(&location);

  return v4;
}

- (void)_setupRapportClientWithReason:(unint64_t)reason
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = CWFGetPHOSLog();
  if (v5)
  {
    v6 = CWFGetPHOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v41 = 136446978;
    v42 = "[CWFDeviceDiscoveryManager _setupRapportClientWithReason:]";
    v43 = 2082;
    v44 = "CWFDeviceDiscoveryManager.m";
    v45 = 1024;
    v46 = 276;
    v47 = 2080;
    v48 = "[CWFDeviceDiscoveryManager _setupRapportClientWithReason:]";
    LODWORD(v26) = 38;
    v25 = &v41;
    _os_log_send_and_compose_impl();
  }

  rapportClient = [(CWFDeviceDiscoveryManager *)self rapportClient];

  if (rapportClient)
  {
    v9 = CWFGetPHOSLog();
    if (v9)
    {
      v10 = CWFGetPHOSLog();
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v41 = 136446978;
      v42 = "[CWFDeviceDiscoveryManager _setupRapportClientWithReason:]";
      v43 = 2082;
      v44 = "CWFDeviceDiscoveryManager.m";
      v45 = 1024;
      v46 = 279;
      v47 = 2080;
      v48 = "[CWFDeviceDiscoveryManager _setupRapportClientWithReason:]";
      _os_log_send_and_compose_impl();
    }
  }

  else
  {
    objc_initWeak(&location, self);
    self->_setupReason = reason;
    v11 = objc_alloc_init(sub_1E0C66414());
    rapportQueue = [(CWFDeviceDiscoveryManager *)self rapportQueue];
    [v11 setDispatchQueue:rapportQueue];

    [v11 setControlFlags:72706];
    [v11 setFlags:17];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = sub_1E0C664F4;
    v38[3] = &unk_1E86E6190;
    objc_copyWeak(&v39, &location);
    [v11 setInvalidationHandler:v38];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = sub_1E0C66620;
    v36[3] = &unk_1E86E6190;
    objc_copyWeak(&v37, &location);
    [v11 setInterruptionHandler:v36];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = sub_1E0C6674C;
    v34[3] = &unk_1E86E74D8;
    objc_copyWeak(v35, &location);
    v35[1] = reason;
    [v11 setDeviceFoundHandler:v34];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = sub_1E0C669EC;
    v32[3] = &unk_1E86E7500;
    objc_copyWeak(&v33, &location);
    [v11 setDeviceLostHandler:v32];
    v13 = CWFGetPHOSLog();
    if (v13)
    {
      v14 = CWFGetPHOSLog();
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v41 = 136446722;
      v42 = "[CWFDeviceDiscoveryManager _setupRapportClientWithReason:]";
      v43 = 2082;
      v44 = "CWFDeviceDiscoveryManager.m";
      v45 = 1024;
      v46 = 345;
      LODWORD(v26) = 28;
      v25 = &v41;
      _os_log_send_and_compose_impl();
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_1E0C66C40;
    v29[3] = &unk_1E86E7528;
    objc_copyWeak(&v31, &location);
    v17 = v11;
    v30 = v17;
    [v17 activateWithCompletion:v29];
    [(CWFDeviceDiscoveryManager *)self setRapportClient:v17];
    if (reason == 1)
    {
      [(CWFDeviceDiscoveryManager *)self _registerExtractWiFiInfo];
    }

    v18 = [(CWFDeviceDiscoveryManager *)self rapportQueue:v25];
    v19 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v18);
    [(CWFDeviceDiscoveryManager *)self setRapportTeardownTimer:v19];

    rapportTeardownTimer = [(CWFDeviceDiscoveryManager *)self rapportTeardownTimer];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1E0C66E90;
    handler[3] = &unk_1E86E6190;
    objc_copyWeak(&v28, &location);
    dispatch_source_set_event_handler(rapportTeardownTimer, handler);

    v21 = dispatch_time(0, 120000000000);
    rapportTeardownTimer2 = [(CWFDeviceDiscoveryManager *)self rapportTeardownTimer];
    dispatch_source_set_timer(rapportTeardownTimer2, v21, 0x1BF08EB000uLL, 0);

    rapportTeardownTimer3 = [(CWFDeviceDiscoveryManager *)self rapportTeardownTimer];
    dispatch_resume(rapportTeardownTimer3);

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&v33);
    objc_destroyWeak(v35);
    objc_destroyWeak(&v37);
    objc_destroyWeak(&v39);

    objc_destroyWeak(&location);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)fetchWiFiInfoForDevice:(id)device
{
  v23 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v5 = CWFGetPHOSLog();
  if (v5)
  {
    v6 = CWFGetPHOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    [deviceCopy userInfo];
    v13 = 136447234;
    v15 = 2082;
    v14 = "[CWFDeviceDiscoveryManager fetchWiFiInfoForDevice:]";
    v16 = "CWFDeviceDiscoveryManager.m";
    v17 = 1024;
    v18 = 382;
    v19 = 2080;
    v20 = "[CWFDeviceDiscoveryManager fetchWiFiInfoForDevice:]";
    v22 = v21 = 2112;
    _os_log_send_and_compose_impl();
  }

  rapportQueue = self->_rapportQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C67090;
  block[3] = &unk_1E86E6420;
  block[4] = self;
  v12 = deviceCopy;
  v9 = deviceCopy;
  dispatch_async(rapportQueue, block);

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isSupportedModel:(id)model
{
  modelCopy = model;
  v4 = modelCopy;
  if (modelCopy)
  {
    if ([modelCopy hasPrefix:@"iPhone"] & 1) != 0 || (objc_msgSend(v4, "hasPrefix:", @"iPad") & 1) != 0 || (objc_msgSend(v4, "containsString:", @"Mac"))
    {
      v5 = 1;
    }

    else
    {
      v5 = [v4 containsString:@"RealityDevice"];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_interfaceForModel:(id)model
{
  if ([model containsString:@"RealityDevice"])
  {
    return @"ir0";
  }

  else
  {
    return @"en0";
  }
}

- (void)_fetchAndUpdateActiveDevicesInfo
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(CWFDeviceDiscoveryManager *)self activeDevices];
  v3 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = *v20;
    do
    {
      v5 = 0;
      do
      {
        if (*v20 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v19 + 1) + 8 * v5);
        v7 = objc_autoreleasePoolPush();
        v13 = 0;
        v14 = &v13;
        v15 = 0x3032000000;
        v16 = sub_1E0BC2D50;
        v17 = sub_1E0BC61E4;
        v18 = 0;
        rapportClient = [(CWFDeviceDiscoveryManager *)self rapportClient];
        activeDevices = [rapportClient activeDevices];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = sub_1E0C67558;
        v12[3] = &unk_1E86E7550;
        v12[4] = v6;
        v12[5] = &v13;
        [activeDevices enumerateObjectsUsingBlock:v12];

        [(CWFDeviceDiscoveryManager *)self _fetchWiFiInfoForDevice:v6 rapportDevice:v14[5]];
        _Block_object_dispose(&v13, 8);

        objc_autoreleasePoolPop(v7);
        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v3);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_fetchWiFiInfoForDevice:(id)device rapportDevice:(id)rapportDevice
{
  v17[2] = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  rapportDeviceCopy = rapportDevice;
  objc_initWeak(&location, self);
  retryDevices = [(CWFDeviceDiscoveryManager *)self retryDevices];
  v17[0] = deviceCopy;
  v17[1] = rapportDeviceCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  effectiveIdentifier = [rapportDeviceCopy effectiveIdentifier];
  [retryDevices setObject:v9 forKey:effectiveIdentifier];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1E0C677A0;
  v13[3] = &unk_1E86E75A0;
  objc_copyWeak(&v15, &location);
  v11 = deviceCopy;
  v14 = v11;
  [(CWFDeviceDiscoveryManager *)self _fetchWiFiInfoForRapportDevice:rapportDeviceCopy completion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_registerExtractWiFiInfo
{
  v19 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = CWFGetPHOSLog();
  if (v3)
  {
    v4 = CWFGetPHOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136446978;
    v12 = "[CWFDeviceDiscoveryManager _registerExtractWiFiInfo]";
    v13 = 2082;
    v14 = "CWFDeviceDiscoveryManager.m";
    v15 = 1024;
    v16 = 511;
    v17 = 2080;
    v18 = "[CWFDeviceDiscoveryManager _registerExtractWiFiInfo]";
    _os_log_send_and_compose_impl();
  }

  rapportClient = [(CWFDeviceDiscoveryManager *)self rapportClient];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E0C680EC;
  v8[3] = &unk_1E86E75C8;
  objc_copyWeak(&v9, &location);
  [rapportClient registerRequestID:@"com.apple.corewifi.RequestWiFiInfo" options:MEMORY[0x1E695E0F8] handler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  v7 = *MEMORY[0x1E69E9840];
}

- (id)_wifiInfo
{
  v14[4] = *MEMORY[0x1E69E9840];
  v3 = MGGetStringAnswer();
  v4 = MGGetStringAnswer();
  v5 = @"1";
  if (v4)
  {
    v5 = v4;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v3, v5];
  v13[0] = @"deviceMACAddress";
  thisDeviceMACAddress = [(CWFDeviceDiscoveryManager *)self thisDeviceMACAddress];
  v14[0] = thisDeviceMACAddress;
  v13[1] = @"deviceMarketingName";
  v8 = MGGetStringAnswer();
  v14[1] = v8;
  v13[2] = @"deviceProductType";
  v9 = MGGetStringAnswer();
  v13[3] = @"deviceProductColor";
  v14[2] = v9;
  v14[3] = v6;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)_fetchWiFiInfoForRapportDevice:(id)device completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  completionCopy = completion;
  v8 = CWFGetPHOSLog();
  if (v8)
  {
    v9 = CWFGetPHOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136446978;
    v20 = "[CWFDeviceDiscoveryManager _fetchWiFiInfoForRapportDevice:completion:]";
    v21 = 2082;
    v22 = "CWFDeviceDiscoveryManager.m";
    v23 = 1024;
    v24 = 537;
    v25 = 2080;
    v26 = "[CWFDeviceDiscoveryManager _fetchWiFiInfoForRapportDevice:completion:]";
    _os_log_send_and_compose_impl();
  }

  v11 = dispatch_time(0, 1000000000);
  rapportQueue = [(CWFDeviceDiscoveryManager *)self rapportQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C685D4;
  block[3] = &unk_1E86E6CA8;
  block[4] = self;
  v17 = deviceCopy;
  v18 = completionCopy;
  v13 = completionCopy;
  v14 = deviceCopy;
  dispatch_after(v11, rapportQueue, block);

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_sendRapportMessageToDevice:(id)device requestID:(id)d request:(id)request options:(id)options completion:(id)completion
{
  v46 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  completionCopy = completion;
  rapportClient = [(CWFDeviceDiscoveryManager *)self rapportClient];

  if (rapportClient)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v19 = CWFGetPHOSLog();
    if (v19)
    {
      v20 = CWFGetPHOSLog();
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 136447234;
      v37 = "[CWFDeviceDiscoveryManager _sendRapportMessageToDevice:requestID:request:options:completion:]";
      v38 = 2082;
      v39 = "CWFDeviceDiscoveryManager.m";
      v40 = 1024;
      v41 = 570;
      v42 = 2112;
      v43 = uUID;
      v44 = 2112;
      v45 = deviceCopy;
      _os_log_send_and_compose_impl();
    }

    v24 = objc_alloc_init(sub_1E0C66414());
    [v24 setControlFlags:256];
    [v24 setDestinationDevice:deviceCopy];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_1E0C68970;
    v28[3] = &unk_1E86E7618;
    v29 = uUID;
    v35 = completionCopy;
    v30 = optionsCopy;
    v31 = requestCopy;
    v32 = v24;
    v33 = dCopy;
    v34 = deviceCopy;
    v25 = v24;
    v22 = uUID;
    [v25 activateWithCompletion:v28];
  }

  else
  {
    v21 = CWFGetPHOSLog();
    if (v21)
    {
      v22 = CWFGetPHOSLog();
    }

    else
    {
      v22 = MEMORY[0x1E69E9C10];
      v26 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 136447234;
      v37 = "[CWFDeviceDiscoveryManager _sendRapportMessageToDevice:requestID:request:options:completion:]";
      v38 = 2082;
      v39 = "CWFDeviceDiscoveryManager.m";
      v40 = 1024;
      v41 = 564;
      v42 = 2112;
      v43 = dCopy;
      v44 = 2112;
      v45 = deviceCopy;
      _os_log_send_and_compose_impl();
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)_resetRapportClientWithInvalidation:(BOOL)invalidation
{
  v15 = *MEMORY[0x1E69E9840];
  if (invalidation)
  {
    rapportClient = [(CWFDeviceDiscoveryManager *)self rapportClient];
    [rapportClient invalidate];
  }

  rapportClient2 = [(CWFDeviceDiscoveryManager *)self rapportClient];
  [rapportClient2 setDeviceFoundHandler:0];

  rapportClient3 = [(CWFDeviceDiscoveryManager *)self rapportClient];
  [rapportClient3 setDeviceLostHandler:0];

  rapportClient4 = [(CWFDeviceDiscoveryManager *)self rapportClient];
  [rapportClient4 setInterruptionHandler:0];

  rapportClient5 = [(CWFDeviceDiscoveryManager *)self rapportClient];
  [rapportClient5 setInvalidationHandler:0];

  [(CWFDeviceDiscoveryManager *)self setRapportClient:0];
  if ([(CWFDeviceDiscoveryManager *)self rapportClientActivationFailCount]> 2)
  {
    v11 = CWFGetPHOSLog();
    if (v11)
    {
      v12 = CWFGetPHOSLog();
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      _os_log_send_and_compose_impl();
    }

    v14 = *MEMORY[0x1E69E9840];
  }

  else
  {
    setupReason = [(CWFDeviceDiscoveryManager *)self setupReason];
    v10 = *MEMORY[0x1E69E9840];

    [(CWFDeviceDiscoveryManager *)self _setupRapportClientWithReason:setupReason];
  }
}

- (void)_invalidateWiFiInfoRetryRequestTimer
{
  v11 = *MEMORY[0x1E69E9840];
  wifiInfoRetryRequestTimer = [(CWFDeviceDiscoveryManager *)self wifiInfoRetryRequestTimer];
  if (wifiInfoRetryRequestTimer)
  {
    v4 = wifiInfoRetryRequestTimer;
    _isWiFiInfoRequestTimerValid = [(CWFDeviceDiscoveryManager *)self _isWiFiInfoRequestTimerValid];

    if (_isWiFiInfoRequestTimerValid)
    {
      v6 = CWFGetPHOSLog();
      if (v6)
      {
        v7 = CWFGetPHOSLog();
      }

      else
      {
        v7 = MEMORY[0x1E69E9C10];
        v8 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        _os_log_send_and_compose_impl();
      }

      wifiInfoRetryRequestTimer2 = [(CWFDeviceDiscoveryManager *)self wifiInfoRetryRequestTimer];
      dispatch_source_cancel(wifiInfoRetryRequestTimer2);

      [(CWFDeviceDiscoveryManager *)self setWifiInfoRetryRequestTimer:0];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isWiFiInfoRequestTimerValid
{
  wifiInfoRetryRequestTimer = [(CWFDeviceDiscoveryManager *)self wifiInfoRetryRequestTimer];
  if (wifiInfoRetryRequestTimer)
  {
    wifiInfoRetryRequestTimer2 = [(CWFDeviceDiscoveryManager *)self wifiInfoRetryRequestTimer];
    v5 = dispatch_source_testcancel(wifiInfoRetryRequestTimer2) == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_invalidateRapportTeardownTimer
{
  v11 = *MEMORY[0x1E69E9840];
  rapportTeardownTimer = [(CWFDeviceDiscoveryManager *)self rapportTeardownTimer];
  if (rapportTeardownTimer)
  {
    v4 = rapportTeardownTimer;
    _isRapportTeardownTimerValid = [(CWFDeviceDiscoveryManager *)self _isRapportTeardownTimerValid];

    if (_isRapportTeardownTimerValid)
    {
      v6 = CWFGetPHOSLog();
      if (v6)
      {
        v7 = CWFGetPHOSLog();
      }

      else
      {
        v7 = MEMORY[0x1E69E9C10];
        v8 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        _os_log_send_and_compose_impl();
      }

      rapportTeardownTimer2 = [(CWFDeviceDiscoveryManager *)self rapportTeardownTimer];
      dispatch_source_cancel(rapportTeardownTimer2);

      [(CWFDeviceDiscoveryManager *)self setRapportTeardownTimer:0];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isRapportTeardownTimerValid
{
  rapportTeardownTimer = [(CWFDeviceDiscoveryManager *)self rapportTeardownTimer];
  if (rapportTeardownTimer)
  {
    rapportTeardownTimer2 = [(CWFDeviceDiscoveryManager *)self rapportTeardownTimer];
    v5 = dispatch_source_testcancel(rapportTeardownTimer2) == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_reportFaultEventForDevices:(id)devices
{
  v30 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  if ([devicesCopy count])
  {
    v5 = [devicesCopy objectAtIndexedSubscript:1];
    model = [v5 model];
    v7 = [(CWFDeviceDiscoveryManager *)self _interfaceForModel:model];

    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v8 = qword_1ED7E39C0;
    v23 = qword_1ED7E39C0;
    if (!qword_1ED7E39C0)
    {
      *v25 = MEMORY[0x1E69E9820];
      *&v25[8] = 3221225472;
      *&v25[16] = sub_1E0C69A38;
      *&v26 = &unk_1E86E5600;
      *(&v26 + 1) = &v20;
      sub_1E0C69A38(v25);
      v8 = v21[3];
    }

    v9 = v8;
    _Block_object_dispose(&v20, 8);
    sharedInstance = [v8 sharedInstance];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    model2 = [v5 model];
    [dictionary setObject:model2 forKey:@"deviceModel"];

    effectiveIdentifier = [v5 effectiveIdentifier];
    [dictionary setObject:effectiveIdentifier forKey:@"deviceRapportEffectiveIdentifier"];

    v14 = CWFGetPHOSLog();
    if (v14)
    {
      v15 = CWFGetPHOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 136447490;
      *&v25[4] = "[CWFDeviceDiscoveryManager _reportFaultEventForDevices:]";
      *&v25[12] = 2082;
      *&v25[14] = "CWFDeviceDiscoveryManager.m";
      *&v25[22] = 1024;
      LODWORD(v26) = 664;
      WORD2(v26) = 2112;
      *(&v26 + 6) = dictionary;
      HIWORD(v26) = 2112;
      v27 = sharedInstance;
      v28 = 2112;
      v29 = v7;
      _os_log_send_and_compose_impl();
    }

    date = [MEMORY[0x1E695DF00] date];
    v24 = dictionary;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    [sharedInstance addFaultEvent:37 forInterface:v7 at:date event:v18];
  }

  v19 = *MEMORY[0x1E69E9840];
}

@end