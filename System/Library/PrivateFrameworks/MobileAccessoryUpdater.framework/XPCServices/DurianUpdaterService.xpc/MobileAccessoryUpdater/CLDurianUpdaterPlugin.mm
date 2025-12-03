@interface CLDurianUpdaterPlugin
- (CLDurianUpdaterPlugin)initWithCoder:(id)coder;
- (CLDurianUpdaterPlugin)initWithDeviceClass:(id)class delegate:(id)delegate info:(id *)info options:(id)options;
- (id)spFirmwareUpdateStateToString:(int64_t)string;
- (void)applyFirmwareWithOptions:(id)options;
- (void)bootstrapWithOptions:(id)options;
- (void)downloadFirmwareWithOptions:(id)options;
- (void)encodeWithCoder:(id)coder;
- (void)findMyAccessoryFirmwareUpdateManager:(id)manager didFailWithError:(id)error forDevice:(id)device;
- (void)findMyAccessoryFirmwareUpdateManager:(id)manager firmwareUpdateRequestForDevice:(id)device completedWithError:(id)error;
- (void)findMyAccessoryFirmwareUpdateManager:(id)manager personalizationRequestForDevice:(id)device completedWithInfo:(id)info andError:(id)error;
- (void)finishWithOptions:(id)options;
- (void)getCandidateBeaconsToUpdate;
- (void)notifySPFirmwareUpdateState:(int64_t)state error:(id)error;
- (void)personalizationResponse:(id)response response:(id)a4 status:(id)status;
- (void)prepareFirmwareWithOptions:(id)options;
- (void)queryDeviceList:(id *)list;
@end

@implementation CLDurianUpdaterPlugin

- (CLDurianUpdaterPlugin)initWithDeviceClass:(id)class delegate:(id)delegate info:(id *)info options:(id)options
{
  classCopy = class;
  delegateCopy = delegate;
  optionsCopy = options;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = optionsCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Initializing CLDurianUpdaterPlugin - options: %@", buf, 0xCu);
  }

  v19.receiver = self;
  v19.super_class = CLDurianUpdaterPlugin;
  v12 = [(CLDurianUpdaterPlugin *)&v19 init];
  v13 = v12;
  if (v12)
  {
    [(CLDurianUpdaterPlugin *)v12 setFudPluginDelegate:delegateCopy];
    v14 = objc_alloc_init(CLDurianMobileAssetUpdater);
    [(CLDurianUpdaterPlugin *)v13 setClDurianMobileAssetUpdater:v14];

    v15 = [[CLFindMyAccessoryFirmwareUpdateManager alloc] initWithDelegate:v13 delegateQueue:0];
    [(CLDurianUpdaterPlugin *)v13 setClFirmwareUpdateManager:v15];

    v16 = objc_opt_new();
    firmwareUpdateSession = [v16 firmwareUpdateSession];
    [(CLDurianUpdaterPlugin *)v13 setSpFirmwareUpdateSession:firmwareUpdateSession];

    [(CLDurianUpdaterPlugin *)v13 getCandidateBeaconsToUpdate];
  }

  return v13;
}

- (void)bootstrapWithOptions:(id)options
{
  optionsCopy = options;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = optionsCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Bootstrapping and resolving AUDAccessory to SPBeacon - options: %@", buf, 0xCu);
  }

  v5 = [optionsCopy objectForKey:@"AccessoryOption"];
  v6 = [v5 uid];
  v7 = [v6 isEqual:@"BADDE700-BADD-BADD-BADD-BADDBADDBADD"];

  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Bootstrapping with fake accessory; returning NO to stop aud statemachine and end this cycle", buf, 2u);
    }

    fudPluginDelegate = [(CLDurianUpdaterPlugin *)self fudPluginDelegate];
    [fudPluginDelegate didBootstrap:0 info:0 error:0];
  }

  else
  {
    v24 = optionsCopy;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    candidateBeaconsToUpdate = [(CLDurianUpdaterPlugin *)self candidateBeaconsToUpdate];
    v10 = [candidateBeaconsToUpdate countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      selfCopy = self;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(candidateBeaconsToUpdate);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          identifier = [v14 identifier];
          uUIDString = [identifier UUIDString];
          v17 = [v5 uid];
          v18 = [uUIDString isEqual:v17];

          if (v18)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Resolved AUDAccessory to SPBeacon!", buf, 2u);
            }

            self = selfCopy;
            [(CLDurianUpdaterPlugin *)selfCopy setCandidateBeaconToUpdate:v14];
            clDurianMobileAssetUpdater = [(CLDurianUpdaterPlugin *)selfCopy clDurianMobileAssetUpdater];
            candidateBeaconToUpdate = [(CLDurianUpdaterPlugin *)selfCopy candidateBeaconToUpdate];
            systemVersion = [candidateBeaconToUpdate systemVersion];
            [clDurianMobileAssetUpdater setCurrentSystemVersion:systemVersion];

            goto LABEL_19;
          }
        }

        v11 = [candidateBeaconsToUpdate countByEnumeratingWithState:&v25 objects:v29 count:16];
        self = selfCopy;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:

    fudPluginDelegate = [(CLDurianUpdaterPlugin *)self fudPluginDelegate];
    candidateBeaconToUpdate2 = [(CLDurianUpdaterPlugin *)self candidateBeaconToUpdate];
    [fudPluginDelegate didBootstrap:candidateBeaconToUpdate2 != 0 info:0 error:0];

    optionsCopy = v24;
  }
}

- (void)downloadFirmwareWithOptions:(id)options
{
  optionsCopy = options;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = optionsCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Downloading firmware - options: %@", buf, 0xCu);
  }

  clDurianMobileAssetUpdater = [(CLDurianUpdaterPlugin *)self clDurianMobileAssetUpdater];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000175C;
  v7[3] = &unk_10000C260;
  v7[4] = self;
  v6 = [clDurianMobileAssetUpdater downloadAsset:v7];
}

- (void)prepareFirmwareWithOptions:(id)options
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    optionsCopy = options;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Preparing firmware - options: %@", &v7, 0xCu);
  }

  clDurianMobileAssetUpdater = [(CLDurianUpdaterPlugin *)self clDurianMobileAssetUpdater];
  [clDurianMobileAssetUpdater splitSuperBinary];

  fudPluginDelegate = [(CLDurianUpdaterPlugin *)self fudPluginDelegate];
  [fudPluginDelegate didPrepare:1 info:0 error:0];
}

- (void)applyFirmwareWithOptions:(id)options
{
  optionsCopy = options;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = optionsCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Applying firmware and getting personalization information - options: %@", &v7, 0xCu);
  }

  clFirmwareUpdateManager = [(CLDurianUpdaterPlugin *)self clFirmwareUpdateManager];
  identifier = [(SPBeacon *)self->_candidateBeaconToUpdate identifier];
  [clFirmwareUpdateManager getPersonalizationInfoForDevice:identifier];
}

- (void)finishWithOptions:(id)options
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    optionsCopy = options;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Finished firmware download - options: %@", &v6, 0xCu);
  }

  fudPluginDelegate = [(CLDurianUpdaterPlugin *)self fudPluginDelegate];
  [fudPluginDelegate didFinish:1 info:0 error:0];
}

- (void)encodeWithCoder:(id)coder
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Encoding with a coder?", v3, 2u);
  }
}

- (CLDurianUpdaterPlugin)initWithCoder:(id)coder
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Initializing with a coder?", v5, 2u);
  }

  return 0;
}

- (void)queryDeviceList:(id *)list
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Querying the device list", buf, 2u);
  }

  v5 = objc_alloc_init(NSMutableArray);
  candidateBeaconsToUpdate = [(CLDurianUpdaterPlugin *)self candidateBeaconsToUpdate];

  if (!candidateBeaconsToUpdate)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v20 = "#durian candidateBeaconsToUpdate is nil sending FUD the accessory list with a fake accessory";
    goto LABEL_17;
  }

  candidateBeaconsToUpdate2 = [(CLDurianUpdaterPlugin *)self candidateBeaconsToUpdate];
  v8 = [candidateBeaconsToUpdate2 count];

  if (v8)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    candidateBeaconsToUpdate3 = [(CLDurianUpdaterPlugin *)self candidateBeaconsToUpdate];
    v10 = [candidateBeaconsToUpdate3 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      listCopy = list;
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(candidateBeaconsToUpdate3);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          v15 = [AUDAccessory alloc];
          identifier = [v14 identifier];
          uUIDString = [identifier UUIDString];
          v18 = [v15 initWithUID:uUIDString];

          systemVersion = [v14 systemVersion];
          [v18 setFwVersion:systemVersion];

          [v5 addObject:v18];
        }

        v11 = [candidateBeaconsToUpdate3 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v11);
      list = listCopy;
    }

    goto LABEL_20;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v20 = "#durian candidateBeaconsToUpdate is empty sending FUD the accessory list with a fake accessory";
LABEL_17:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v20, buf, 2u);
  }

LABEL_18:
  candidateBeaconsToUpdate3 = [[AUDAccessory alloc] initWithUID:@"BADDE700-BADD-BADD-BADD-BADDBADDBADD"];
  [candidateBeaconsToUpdate3 setFwVersion:@"99.99.99"];
  [v5 addObject:candidateBeaconsToUpdate3];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Sending FUD the accessory list with a fake accessory", buf, 2u);
  }

LABEL_20:

  v21 = v5;
  *list = v5;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *list;
    *buf = 138412290;
    v29 = v22;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Sending FUD the accessory list: %@", buf, 0xCu);
  }
}

- (void)personalizationResponse:(id)response response:(id)a4 status:(id)status
{
  responseCopy = response;
  v9 = a4;
  statusCopy = status;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412546;
    v20 = v9;
    v21 = 2112;
    v22 = statusCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Received personalization response from FUD - responseData: %@ status: %@", &v19, 0x16u);
  }

  if ([(CLDurianUpdaterPlugin *)self candidatePersonalizationState]== 1)
  {
    if (statusCopy)
    {
      [(CLDurianUpdaterPlugin *)self notifySPFirmwareUpdateState:1 error:statusCopy];
      fudPluginDelegate = [(CLDurianUpdaterPlugin *)self fudPluginDelegate];
      [fudPluginDelegate didApply:0 info:0 error:statusCopy];
    }

    else
    {
      clDurianMobileAssetUpdater = [(CLDurianUpdaterPlugin *)self clDurianMobileAssetUpdater];
      fudPluginDelegate = [clDurianMobileAssetUpdater getAssetURL];

      v13 = [fudPluginDelegate URLByAppendingPathComponent:@"r1md"];
      v14 = [v13 URLByAppendingPathExtension:@"bin"];
      path = [v14 path];
      [v9 writeToFile:path atomically:0];

      clFirmwareUpdateManager = [(CLDurianUpdaterPlugin *)self clFirmwareUpdateManager];
      candidateBeaconToUpdate = [(CLDurianUpdaterPlugin *)self candidateBeaconToUpdate];
      identifier = [candidateBeaconToUpdate identifier];
      [clFirmwareUpdateManager updateFirmwareForDevice:identifier withAssetURL:fudPluginDelegate];
    }
  }
}

- (void)findMyAccessoryFirmwareUpdateManager:(id)manager didFailWithError:(id)error forDevice:(id)device
{
  errorCopy = error;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000043FC(errorCopy, device);
  }

  [(CLDurianUpdaterPlugin *)self notifySPFirmwareUpdateState:1 error:errorCopy];
  fudPluginDelegate = [(CLDurianUpdaterPlugin *)self fudPluginDelegate];
  [fudPluginDelegate didApply:0 info:0 error:errorCopy];
}

- (void)findMyAccessoryFirmwareUpdateManager:(id)manager personalizationRequestForDevice:(id)device completedWithInfo:(id)info andError:(id)error
{
  managerCopy = manager;
  deviceCopy = device;
  infoCopy = info;
  errorCopy = error;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = deviceCopy;
    v63 = 2112;
    v64 = infoCopy;
    v65 = 2112;
    v66 = errorCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Received personalization data from durian - device: %@ personalizationInfo: %@ error: %@", buf, 0x20u);
  }

  if (errorCopy)
  {
    [(CLDurianUpdaterPlugin *)self notifySPFirmwareUpdateState:1 error:errorCopy];
    fudPluginDelegate = [(CLDurianUpdaterPlugin *)self fudPluginDelegate];
    [fudPluginDelegate didApply:0 info:0 error:errorCopy];
  }

  else
  {
    v41 = deviceCopy;
    v42 = managerCopy;
    [(CLDurianUpdaterPlugin *)self setCandidatePersonalizationState:1];
    v59 = 0;
    v15 = [infoCopy objectForKey:@"7DFC6101-7D1C-4951-86AA-8D9728F8D66C"];
    [v15 getBytes:&v59 length:4];

    v58 = 0;
    v16 = [infoCopy objectForKey:@"7DFC6102-7D1C-4951-86AA-8D9728F8D66C"];
    [v16 getBytes:&v58 length:4];

    *buf = 0;
    v17 = [infoCopy objectForKey:@"7DFC6103-7D1C-4951-86AA-8D9728F8D66C"];
    [v17 getBytes:buf length:8];

    v57 = 0;
    v18 = [infoCopy objectForKey:@"7DFC6104-7D1C-4951-86AA-8D9728F8D66C"];
    [v18 getBytes:&v57 length:4];

    v56 = 0;
    v19 = [infoCopy objectForKey:@"7DFC6105-7D1C-4951-86AA-8D9728F8D66C"];
    [v19 getBytes:&v56 length:1];

    v55 = 0;
    v20 = [infoCopy objectForKey:@"7DFC6106-7D1C-4951-86AA-8D9728F8D66C"];
    [v20 getBytes:&v55 length:1];

    v40 = infoCopy;
    v39 = [infoCopy objectForKey:@"7DFC6107-7D1C-4951-86AA-8D9728F8D66C"];
    v21 = objc_opt_new();
    clDurianMobileAssetUpdater = [(CLDurianUpdaterPlugin *)self clDurianMobileAssetUpdater];
    getBuildIdentities = [clDurianMobileAssetUpdater getBuildIdentities];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = getBuildIdentities;
    v45 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
    if (v45)
    {
      v44 = *v52;
      do
      {
        v24 = 0;
        do
        {
          if (*v52 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v46 = v24;
          v25 = [*(*(&v51 + 1) + 8 * v24) objectForKey:{@"Manifest", v39}];
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v26 = [v25 countByEnumeratingWithState:&v47 objects:v60 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v48;
            do
            {
              for (i = 0; i != v27; i = i + 1)
              {
                if (*v48 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                v30 = *(*(&v47 + 1) + 8 * i);
                v31 = [v25 objectForKey:v30];
                v32 = [[FudPersonalizationObjectInfo alloc] initWithTag:v30];
                v33 = [v31 objectForKey:@"Trusted"];
                [v32 setTrusted:{objc_msgSend(v33, "BOOLValue")}];

                v34 = [v31 objectForKey:@"Digest"];
                [v32 setDigest:v34];

                [v32 setEffectiveSecurityMode:v56];
                [v32 setEffectiveProductionMode:v55];
                [v21 addObject:v32];
              }

              v27 = [v25 countByEnumeratingWithState:&v47 objects:v60 count:16];
            }

            while (v27);
          }

          v24 = v46 + 1;
        }

        while ((v46 + 1) != v45);
        v45 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
      }

      while (v45);
    }

    v35 = [[FudPersonalizationRequest alloc] initWithName:@"Durian"];
    [v35 setResponseFormat:1];
    [v35 setResponseAlignment:4096];
    [v35 setChipID:v59];
    [v35 setBoardID:v58];
    [v35 setEcID:*buf];
    [v35 setSecurityDomain:v57];
    [v35 setSecurityMode:v56];
    [v35 setProductionMode:v55];
    [v35 setNonceHash:v39];
    [v35 setObjectList:v21];
    [v35 setRequestPrefix:@"Rap"];
    clDurianMobileAssetUpdater2 = [(CLDurianUpdaterPlugin *)self clDurianMobileAssetUpdater];
    getFTAB = [clDurianMobileAssetUpdater2 getFTAB];
    [v35 setPayload:getFTAB];

    fudPluginDelegate2 = [(CLDurianUpdaterPlugin *)self fudPluginDelegate];
    [fudPluginDelegate2 personalizationRequest:v35];

    deviceCopy = v41;
    managerCopy = v42;
    errorCopy = 0;
    infoCopy = v40;
  }
}

- (void)findMyAccessoryFirmwareUpdateManager:(id)manager firmwareUpdateRequestForDevice:(id)device completedWithError:(id)error
{
  errorCopy = error;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    deviceCopy = device;
    v12 = 2112;
    v13 = errorCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Firmware update to durian completed - device: %@ error: %@", &v10, 0x16u);
  }

  [(CLDurianUpdaterPlugin *)self setCandidatePersonalizationState:2];
  if (errorCopy)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [(CLDurianUpdaterPlugin *)self notifySPFirmwareUpdateState:v8 error:errorCopy];
  fudPluginDelegate = [(CLDurianUpdaterPlugin *)self fudPluginDelegate];
  [fudPluginDelegate didApply:errorCopy == 0 info:0 error:errorCopy];
}

- (void)getCandidateBeaconsToUpdate
{
  v3 = dispatch_semaphore_create(0);
  spFirmwareUpdateSession = [(CLDurianUpdaterPlugin *)self spFirmwareUpdateSession];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000028FC;
  v6[3] = &unk_10000C288;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  [spFirmwareUpdateSession candidateBeaconsWithCompletion:v6];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)notifySPFirmwareUpdateState:(int64_t)state error:(id)error
{
  errorCopy = error;
  if (state == 2)
  {
    clDurianMobileAssetUpdater = [(CLDurianUpdaterPlugin *)self clDurianMobileAssetUpdater];
    getUpdatedSystemVersion = [clDurianMobileAssetUpdater getUpdatedSystemVersion];
  }

  else
  {
    getUpdatedSystemVersion = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(CLDurianUpdaterPlugin *)self spFirmwareUpdateStateToString:state];
    v13 = 138412546;
    v14 = v9;
    v15 = 2112;
    v16 = getUpdatedSystemVersion;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Signaling SPFirmwareUpdateState to %@ and system version %@", &v13, 0x16u);
  }

  spFirmwareUpdateSession = [(CLDurianUpdaterPlugin *)self spFirmwareUpdateSession];
  candidateBeaconToUpdate = [(CLDurianUpdaterPlugin *)self candidateBeaconToUpdate];
  identifier = [candidateBeaconToUpdate identifier];
  [spFirmwareUpdateSession updateBeaconUUID:identifier firmwareUpdateState:state systemVersion:getUpdatedSystemVersion error:errorCopy completion:&stru_10000C2C8];
}

- (id)spFirmwareUpdateStateToString:(int64_t)string
{
  if ((string + 1) > 6)
  {
    return @"FIRMWARE_UPDATE_STATE_INVALID";
  }

  else
  {
    return off_10000C2E8[string + 1];
  }
}

@end