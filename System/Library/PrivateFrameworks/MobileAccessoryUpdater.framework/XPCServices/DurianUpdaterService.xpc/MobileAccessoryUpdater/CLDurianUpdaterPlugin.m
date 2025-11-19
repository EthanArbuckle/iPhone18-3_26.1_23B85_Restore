@interface CLDurianUpdaterPlugin
- (CLDurianUpdaterPlugin)initWithCoder:(id)a3;
- (CLDurianUpdaterPlugin)initWithDeviceClass:(id)a3 delegate:(id)a4 info:(id *)a5 options:(id)a6;
- (id)spFirmwareUpdateStateToString:(int64_t)a3;
- (void)applyFirmwareWithOptions:(id)a3;
- (void)bootstrapWithOptions:(id)a3;
- (void)downloadFirmwareWithOptions:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)findMyAccessoryFirmwareUpdateManager:(id)a3 didFailWithError:(id)a4 forDevice:(id)a5;
- (void)findMyAccessoryFirmwareUpdateManager:(id)a3 firmwareUpdateRequestForDevice:(id)a4 completedWithError:(id)a5;
- (void)findMyAccessoryFirmwareUpdateManager:(id)a3 personalizationRequestForDevice:(id)a4 completedWithInfo:(id)a5 andError:(id)a6;
- (void)finishWithOptions:(id)a3;
- (void)getCandidateBeaconsToUpdate;
- (void)notifySPFirmwareUpdateState:(int64_t)a3 error:(id)a4;
- (void)personalizationResponse:(id)a3 response:(id)a4 status:(id)a5;
- (void)prepareFirmwareWithOptions:(id)a3;
- (void)queryDeviceList:(id *)a3;
@end

@implementation CLDurianUpdaterPlugin

- (CLDurianUpdaterPlugin)initWithDeviceClass:(id)a3 delegate:(id)a4 info:(id *)a5 options:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Initializing CLDurianUpdaterPlugin - options: %@", buf, 0xCu);
  }

  v19.receiver = self;
  v19.super_class = CLDurianUpdaterPlugin;
  v12 = [(CLDurianUpdaterPlugin *)&v19 init];
  v13 = v12;
  if (v12)
  {
    [(CLDurianUpdaterPlugin *)v12 setFudPluginDelegate:v10];
    v14 = objc_alloc_init(CLDurianMobileAssetUpdater);
    [(CLDurianUpdaterPlugin *)v13 setClDurianMobileAssetUpdater:v14];

    v15 = [[CLFindMyAccessoryFirmwareUpdateManager alloc] initWithDelegate:v13 delegateQueue:0];
    [(CLDurianUpdaterPlugin *)v13 setClFirmwareUpdateManager:v15];

    v16 = objc_opt_new();
    v17 = [v16 firmwareUpdateSession];
    [(CLDurianUpdaterPlugin *)v13 setSpFirmwareUpdateSession:v17];

    [(CLDurianUpdaterPlugin *)v13 getCandidateBeaconsToUpdate];
  }

  return v13;
}

- (void)bootstrapWithOptions:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Bootstrapping and resolving AUDAccessory to SPBeacon - options: %@", buf, 0xCu);
  }

  v5 = [v4 objectForKey:@"AccessoryOption"];
  v6 = [v5 uid];
  v7 = [v6 isEqual:@"BADDE700-BADD-BADD-BADD-BADDBADDBADD"];

  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Bootstrapping with fake accessory; returning NO to stop aud statemachine and end this cycle", buf, 2u);
    }

    v8 = [(CLDurianUpdaterPlugin *)self fudPluginDelegate];
    [v8 didBootstrap:0 info:0 error:0];
  }

  else
  {
    v24 = v4;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = [(CLDurianUpdaterPlugin *)self candidateBeaconsToUpdate];
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      v23 = self;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          v15 = [v14 identifier];
          v16 = [v15 UUIDString];
          v17 = [v5 uid];
          v18 = [v16 isEqual:v17];

          if (v18)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Resolved AUDAccessory to SPBeacon!", buf, 2u);
            }

            self = v23;
            [(CLDurianUpdaterPlugin *)v23 setCandidateBeaconToUpdate:v14];
            v19 = [(CLDurianUpdaterPlugin *)v23 clDurianMobileAssetUpdater];
            v20 = [(CLDurianUpdaterPlugin *)v23 candidateBeaconToUpdate];
            v21 = [v20 systemVersion];
            [v19 setCurrentSystemVersion:v21];

            goto LABEL_19;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
        self = v23;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:

    v8 = [(CLDurianUpdaterPlugin *)self fudPluginDelegate];
    v22 = [(CLDurianUpdaterPlugin *)self candidateBeaconToUpdate];
    [v8 didBootstrap:v22 != 0 info:0 error:0];

    v4 = v24;
  }
}

- (void)downloadFirmwareWithOptions:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Downloading firmware - options: %@", buf, 0xCu);
  }

  v5 = [(CLDurianUpdaterPlugin *)self clDurianMobileAssetUpdater];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000175C;
  v7[3] = &unk_10000C260;
  v7[4] = self;
  v6 = [v5 downloadAsset:v7];
}

- (void)prepareFirmwareWithOptions:(id)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = a3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Preparing firmware - options: %@", &v7, 0xCu);
  }

  v5 = [(CLDurianUpdaterPlugin *)self clDurianMobileAssetUpdater];
  [v5 splitSuperBinary];

  v6 = [(CLDurianUpdaterPlugin *)self fudPluginDelegate];
  [v6 didPrepare:1 info:0 error:0];
}

- (void)applyFirmwareWithOptions:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Applying firmware and getting personalization information - options: %@", &v7, 0xCu);
  }

  v5 = [(CLDurianUpdaterPlugin *)self clFirmwareUpdateManager];
  v6 = [(SPBeacon *)self->_candidateBeaconToUpdate identifier];
  [v5 getPersonalizationInfoForDevice:v6];
}

- (void)finishWithOptions:(id)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = a3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Finished firmware download - options: %@", &v6, 0xCu);
  }

  v5 = [(CLDurianUpdaterPlugin *)self fudPluginDelegate];
  [v5 didFinish:1 info:0 error:0];
}

- (void)encodeWithCoder:(id)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Encoding with a coder?", v3, 2u);
  }
}

- (CLDurianUpdaterPlugin)initWithCoder:(id)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Initializing with a coder?", v5, 2u);
  }

  return 0;
}

- (void)queryDeviceList:(id *)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Querying the device list", buf, 2u);
  }

  v5 = objc_alloc_init(NSMutableArray);
  v6 = [(CLDurianUpdaterPlugin *)self candidateBeaconsToUpdate];

  if (!v6)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v20 = "#durian candidateBeaconsToUpdate is nil sending FUD the accessory list with a fake accessory";
    goto LABEL_17;
  }

  v7 = [(CLDurianUpdaterPlugin *)self candidateBeaconsToUpdate];
  v8 = [v7 count];

  if (v8)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = [(CLDurianUpdaterPlugin *)self candidateBeaconsToUpdate];
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v23 = a3;
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          v15 = [AUDAccessory alloc];
          v16 = [v14 identifier];
          v17 = [v16 UUIDString];
          v18 = [v15 initWithUID:v17];

          v19 = [v14 systemVersion];
          [v18 setFwVersion:v19];

          [v5 addObject:v18];
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v11);
      a3 = v23;
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
  v9 = [[AUDAccessory alloc] initWithUID:@"BADDE700-BADD-BADD-BADD-BADDBADDBADD"];
  [v9 setFwVersion:@"99.99.99"];
  [v5 addObject:v9];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Sending FUD the accessory list with a fake accessory", buf, 2u);
  }

LABEL_20:

  v21 = v5;
  *a3 = v5;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *a3;
    *buf = 138412290;
    v29 = v22;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Sending FUD the accessory list: %@", buf, 0xCu);
  }
}

- (void)personalizationResponse:(id)a3 response:(id)a4 status:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412546;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Received personalization response from FUD - responseData: %@ status: %@", &v19, 0x16u);
  }

  if ([(CLDurianUpdaterPlugin *)self candidatePersonalizationState]== 1)
  {
    if (v10)
    {
      [(CLDurianUpdaterPlugin *)self notifySPFirmwareUpdateState:1 error:v10];
      v11 = [(CLDurianUpdaterPlugin *)self fudPluginDelegate];
      [v11 didApply:0 info:0 error:v10];
    }

    else
    {
      v12 = [(CLDurianUpdaterPlugin *)self clDurianMobileAssetUpdater];
      v11 = [v12 getAssetURL];

      v13 = [v11 URLByAppendingPathComponent:@"r1md"];
      v14 = [v13 URLByAppendingPathExtension:@"bin"];
      v15 = [v14 path];
      [v9 writeToFile:v15 atomically:0];

      v16 = [(CLDurianUpdaterPlugin *)self clFirmwareUpdateManager];
      v17 = [(CLDurianUpdaterPlugin *)self candidateBeaconToUpdate];
      v18 = [v17 identifier];
      [v16 updateFirmwareForDevice:v18 withAssetURL:v11];
    }
  }
}

- (void)findMyAccessoryFirmwareUpdateManager:(id)a3 didFailWithError:(id)a4 forDevice:(id)a5
{
  v7 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000043FC(v7, a5);
  }

  [(CLDurianUpdaterPlugin *)self notifySPFirmwareUpdateState:1 error:v7];
  v8 = [(CLDurianUpdaterPlugin *)self fudPluginDelegate];
  [v8 didApply:0 info:0 error:v7];
}

- (void)findMyAccessoryFirmwareUpdateManager:(id)a3 personalizationRequestForDevice:(id)a4 completedWithInfo:(id)a5 andError:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = v11;
    v63 = 2112;
    v64 = v12;
    v65 = 2112;
    v66 = v13;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Received personalization data from durian - device: %@ personalizationInfo: %@ error: %@", buf, 0x20u);
  }

  if (v13)
  {
    [(CLDurianUpdaterPlugin *)self notifySPFirmwareUpdateState:1 error:v13];
    v14 = [(CLDurianUpdaterPlugin *)self fudPluginDelegate];
    [v14 didApply:0 info:0 error:v13];
  }

  else
  {
    v41 = v11;
    v42 = v10;
    [(CLDurianUpdaterPlugin *)self setCandidatePersonalizationState:1];
    v59 = 0;
    v15 = [v12 objectForKey:@"7DFC6101-7D1C-4951-86AA-8D9728F8D66C"];
    [v15 getBytes:&v59 length:4];

    v58 = 0;
    v16 = [v12 objectForKey:@"7DFC6102-7D1C-4951-86AA-8D9728F8D66C"];
    [v16 getBytes:&v58 length:4];

    *buf = 0;
    v17 = [v12 objectForKey:@"7DFC6103-7D1C-4951-86AA-8D9728F8D66C"];
    [v17 getBytes:buf length:8];

    v57 = 0;
    v18 = [v12 objectForKey:@"7DFC6104-7D1C-4951-86AA-8D9728F8D66C"];
    [v18 getBytes:&v57 length:4];

    v56 = 0;
    v19 = [v12 objectForKey:@"7DFC6105-7D1C-4951-86AA-8D9728F8D66C"];
    [v19 getBytes:&v56 length:1];

    v55 = 0;
    v20 = [v12 objectForKey:@"7DFC6106-7D1C-4951-86AA-8D9728F8D66C"];
    [v20 getBytes:&v55 length:1];

    v40 = v12;
    v39 = [v12 objectForKey:@"7DFC6107-7D1C-4951-86AA-8D9728F8D66C"];
    v21 = objc_opt_new();
    v22 = [(CLDurianUpdaterPlugin *)self clDurianMobileAssetUpdater];
    v23 = [v22 getBuildIdentities];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v23;
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
    v36 = [(CLDurianUpdaterPlugin *)self clDurianMobileAssetUpdater];
    v37 = [v36 getFTAB];
    [v35 setPayload:v37];

    v38 = [(CLDurianUpdaterPlugin *)self fudPluginDelegate];
    [v38 personalizationRequest:v35];

    v11 = v41;
    v10 = v42;
    v13 = 0;
    v12 = v40;
  }
}

- (void)findMyAccessoryFirmwareUpdateManager:(id)a3 firmwareUpdateRequestForDevice:(id)a4 completedWithError:(id)a5
{
  v7 = a5;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = a4;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Firmware update to durian completed - device: %@ error: %@", &v10, 0x16u);
  }

  [(CLDurianUpdaterPlugin *)self setCandidatePersonalizationState:2];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [(CLDurianUpdaterPlugin *)self notifySPFirmwareUpdateState:v8 error:v7];
  v9 = [(CLDurianUpdaterPlugin *)self fudPluginDelegate];
  [v9 didApply:v7 == 0 info:0 error:v7];
}

- (void)getCandidateBeaconsToUpdate
{
  v3 = dispatch_semaphore_create(0);
  v4 = [(CLDurianUpdaterPlugin *)self spFirmwareUpdateSession];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000028FC;
  v6[3] = &unk_10000C288;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  [v4 candidateBeaconsWithCompletion:v6];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)notifySPFirmwareUpdateState:(int64_t)a3 error:(id)a4
{
  v6 = a4;
  if (a3 == 2)
  {
    v7 = [(CLDurianUpdaterPlugin *)self clDurianMobileAssetUpdater];
    v8 = [v7 getUpdatedSystemVersion];
  }

  else
  {
    v8 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(CLDurianUpdaterPlugin *)self spFirmwareUpdateStateToString:a3];
    v13 = 138412546;
    v14 = v9;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Signaling SPFirmwareUpdateState to %@ and system version %@", &v13, 0x16u);
  }

  v10 = [(CLDurianUpdaterPlugin *)self spFirmwareUpdateSession];
  v11 = [(CLDurianUpdaterPlugin *)self candidateBeaconToUpdate];
  v12 = [v11 identifier];
  [v10 updateBeaconUUID:v12 firmwareUpdateState:a3 systemVersion:v8 error:v6 completion:&stru_10000C2C8];
}

- (id)spFirmwareUpdateStateToString:(int64_t)a3
{
  if ((a3 + 1) > 6)
  {
    return @"FIRMWARE_UPDATE_STATE_INVALID";
  }

  else
  {
    return off_10000C2E8[a3 + 1];
  }
}

@end