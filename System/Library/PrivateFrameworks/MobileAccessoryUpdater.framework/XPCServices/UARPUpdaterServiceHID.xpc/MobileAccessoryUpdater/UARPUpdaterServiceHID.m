@interface UARPUpdaterServiceHID
- (BOOL)automaticUpdatesDisabledForIdentifier:(id)a3;
- (UARPUpdaterServiceHID)init;
- (id)getMatchingServicesList;
- (id)registryEntryIDsForIdentifier:(id)a3;
- (void)assetSolicitationComplete:(id)a3 assetID:(id)a4 withStatus:(unint64_t)a5;
- (void)findAndHandleConnectedHIDAccessories;
- (void)firmwareStagingComplete:(id)a3 withStatus:(unint64_t)a4;
- (void)getMatchingServicesListWithReply:(id)a3;
- (void)ioKitRuleMatched:(id)a3;
- (void)matchingService:(unsigned int)a3 identifier:(id)a4;
- (void)qProcessStandaloneDynamicAssetSolicitation:(id)a3 modelNumbers:(id)a4 notifyService:(id)a5;
- (void)queryPendingTssRequests:(id)a3;
- (void)standaloneDynamicAssetSolicitation:(id)a3 modelNumber:(id)a4 notifyService:(id)a5 reply:(id)a6;
- (void)standaloneDynamicAssetSolicitation:(id)a3 modelNumbers:(id)a4 notifyService:(id)a5 reply:(id)a6;
- (void)tssResponse:(id)a3;
@end

@implementation UARPUpdaterServiceHID

- (UARPUpdaterServiceHID)init
{
  v10.receiver = self;
  v10.super_class = UARPUpdaterServiceHID;
  v2 = [(UARPUpdaterServiceHID *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.accessoryupdater.UARPUpdaterServiceHID.queue", 0);
    serviceQueue = v2->_serviceQueue;
    v2->_serviceQueue = v3;

    v5 = os_log_create("com.apple.accessoryupdater.uarp", "hidUpdater");
    log = v2->_log;
    v2->_log = v5;

    v7 = +[UARPHIDUpdater sharedInstance];
    hidUpdater = v2->_hidUpdater;
    v2->_hidUpdater = v7;

    [(UARPHIDUpdater *)v2->_hidUpdater setGoldRestoreDelegate:v2];
  }

  return v2;
}

- (id)getMatchingServicesList
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v38 = "[UARPUpdaterServiceHID getMatchingServicesList]";
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s:", buf, 0xCu);
  }

  v26 = +[NSMutableArray array];
  [UARPSupportedAccessory supportedAccessoriesByTransport:1];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v36 = 0u;
  v23 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v23)
  {
    v22 = *v34;
    do
    {
      v3 = 0;
      do
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v3;
        v4 = *(*(&v33 + 1) + 8 * v3);
        v5 = [v4 hardwareID];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v24 = v5;
        v27 = [v5 personalities];
        v6 = [v27 countByEnumeratingWithState:&v29 objects:v41 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v30;
          do
          {
            for (i = 0; i != v7; i = i + 1)
            {
              if (*v30 != v8)
              {
                objc_enumerationMutation(v27);
              }

              v10 = *(*(&v29 + 1) + 8 * i);
              hidUpdater = self->_hidUpdater;
              v12 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v10 vendorID]);
              v13 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v10 productID]);
              v14 = [(UARPHIDUpdater *)hidUpdater matchingDictionaryForVendorID:v12 productID:v13];

              if (v14)
              {
                v15 = [v4 identifier];
                v16 = [v10 personalityIdentifier:v15];

                v17 = [[UARPServiceUpdaterAccessoryMatchingRule alloc] initWithIdentifier:v16 xpcEventStream:@"com.apple.iokit.matching" matchingDictionary:v14];
                if (v17)
                {
                  [v26 addObject:v17];
                }
              }
            }

            v7 = [v27 countByEnumeratingWithState:&v29 objects:v41 count:16];
          }

          while (v7);
        }

        v3 = v25 + 1;
      }

      while ((v25 + 1) != v23);
      v23 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v23);
  }

  v18 = self->_log;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v38 = "[UARPUpdaterServiceHID getMatchingServicesList]";
    v39 = 2112;
    v40 = v26;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s: IOKit Matching Rules are %@", buf, 0x16u);
  }

  v19 = [NSArray arrayWithArray:v26];

  return v19;
}

- (void)getMatchingServicesListWithReply:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[UARPUpdaterServiceHID getMatchingServicesListWithReply:]";
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s:", &v7, 0xCu);
  }

  v6 = [(UARPUpdaterServiceHID *)self getMatchingServicesList];
  v4[2](v4, v6);
}

- (id)registryEntryIDsForIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  hidUpdater = self->_hidUpdater;
  v7 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v4 vendorID]);
  v8 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v4 productID]);
  v9 = [(UARPHIDUpdater *)hidUpdater matchingDictionaryForVendorID:v7 productID:v8];

  existing = 0;
  v10 = v9;
  if (IOServiceGetMatchingServices(kIOMasterPortDefault, v10, &existing))
  {
    v11 = v5;
  }

  else
  {
    v12 = IOIteratorNext(existing);
    if (v12)
    {
      v13 = v12;
      do
      {
        v17 = 0;
        if (!IORegistryEntryGetRegistryEntryID(v13, &v17) && v17)
        {
          v14 = [NSNumber numberWithUnsignedLongLong:?];
          [v5 addObject:v14];
        }

        IOObjectRelease(v13);
        v13 = IOIteratorNext(existing);
      }

      while (v13);
    }

    IOObjectRelease(existing);
    v11 = [NSArray arrayWithArray:v5];
  }

  v15 = v11;

  return v15;
}

- (BOOL)automaticUpdatesDisabledForIdentifier:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"."];
  v4 = CFPreferencesCopyAppValue(@"disabledProductIdentifiers", @"com.apple.mobileaccessoryupdater");
  v5 = [v3 objectAtIndex:0];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 BOOLValue];

  return v7;
}

- (void)findAndHandleConnectedHIDAccessories
{
  v34 = +[NSMutableArray array];
  [UARPSupportedAccessory supportedAccessoriesByTransport:1];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v46 = 0u;
  v25 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v25)
  {
    v24 = *v44;
    do
    {
      v3 = 0;
      do
      {
        if (*v44 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v3;
        v30 = *(*(&v43 + 1) + 8 * v3);
        v4 = [v30 hardwareID];
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v26 = v4;
        v28 = [v4 personalities];
        v31 = [v28 countByEnumeratingWithState:&v39 objects:v52 count:16];
        if (v31)
        {
          v29 = *v40;
          do
          {
            for (i = 0; i != v31; i = i + 1)
            {
              if (*v40 != v29)
              {
                objc_enumerationMutation(v28);
              }

              v6 = *(*(&v39 + 1) + 8 * i);
              v7 = [v30 identifier];
              v8 = [v6 personalityIdentifier:v7];

              v9 = [(UARPUpdaterServiceHID *)self registryEntryIDsForIdentifier:v6];
              if ([v9 count])
              {
                v32 = v9;
                v33 = i;
                v37 = 0u;
                v38 = 0u;
                v35 = 0u;
                v36 = 0u;
                v10 = v9;
                v11 = [v10 countByEnumeratingWithState:&v35 objects:v51 count:16];
                if (v11)
                {
                  v12 = v11;
                  v13 = *v36;
                  do
                  {
                    for (j = 0; j != v12; j = j + 1)
                    {
                      if (*v36 != v13)
                      {
                        objc_enumerationMutation(v10);
                      }

                      v15 = -[UARPHIDUpdater getAccessoryForIORegEntryID:identifier:](self->_hidUpdater, "getAccessoryForIORegEntryID:identifier:", [*(*(&v35 + 1) + 8 * j) unsignedLongLongValue], v8);
                      v16 = v15;
                      if (v15)
                      {
                        v17 = [v15 modelNumber];
                        v18 = [(UARPUpdaterServiceHID *)self automaticUpdatesDisabledForIdentifier:v17];

                        if (v18)
                        {
                          log = self->_log;
                          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 136315394;
                            v48 = "[UARPUpdaterServiceHID findAndHandleConnectedHIDAccessories]";
                            v49 = 2112;
                            v50 = v16;
                            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s: Ignoring auto-update disabled accessory %@", buf, 0x16u);
                          }
                        }

                        else
                        {
                          [v34 addObject:v16];
                        }
                      }
                    }

                    v12 = [v10 countByEnumeratingWithState:&v35 objects:v51 count:16];
                  }

                  while (v12);
                }

                v9 = v32;
                i = v33;
              }
            }

            v31 = [v28 countByEnumeratingWithState:&v39 objects:v52 count:16];
          }

          while (v31);
        }

        v3 = v27 + 1;
      }

      while ((v27 + 1) != v25);
      v25 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v25);
  }

  v20 = self->_log;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v48 = "[UARPUpdaterServiceHID findAndHandleConnectedHIDAccessories]";
    v49 = 2112;
    v50 = v34;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s: Connected accessories found %@", buf, 0x16u);
  }

  if ([v34 count])
  {
    hidUpdater = self->_hidUpdater;
    v22 = [NSArray arrayWithArray:v34];
    [(UARPHIDUpdater *)hidUpdater startUpdateForAccessories:v22 assetID:0];
  }
}

- (void)ioKitRuleMatched:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (v4)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_INFO))
    {
      v27 = 136315394;
      v28 = "[UARPUpdaterServiceHID ioKitRuleMatched:]";
      v29 = 2112;
      v30 = v4;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: %@", &v27, 0x16u);
    }

    v6 = [v4 identifier];
    if (!v6)
    {
      v11 = self->_log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10001DE40(v11, v12, v13, v14, v15, v16, v17, v18);
      }

      goto LABEL_17;
    }

    v7 = [v4 registryEntryID];
    if (!v7)
    {
      v19 = self->_log;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10001DDC8(v19, v20, v21, v22, v23, v24, v25, v26);
      }

      goto LABEL_17;
    }

    v8 = [(UARPHIDUpdater *)self->_hidUpdater getAccessoryForIORegEntryID:v7 identifier:v6];
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_10001DD48();
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    else if (!v8)
    {
LABEL_9:

LABEL_17:
      goto LABEL_18;
    }

    hidUpdater = self->_hidUpdater;
    v10 = [NSArray arrayWithObject:v8];
    [(UARPHIDUpdater *)hidUpdater startUpdateForAccessories:v10 assetID:0];

    goto LABEL_9;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 136315138;
    v28 = "[UARPUpdaterServiceHID ioKitRuleMatched:]";
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s: No ioKitRule", &v27, 0xCu);
  }

  [(UARPUpdaterServiceHID *)self findAndHandleConnectedHIDAccessories];
LABEL_18:
}

- (void)matchingService:(unsigned int)a3 identifier:(id)a4
{
  v6 = a4;
  entryID = 0;
  if (!IORegistryEntryGetRegistryEntryID(a3, &entryID) && entryID)
  {
    v7 = [UARPServiceUpdaterMatchedIOKitRule alloc];
    v8 = [v7 initWithIdentifier:v6 registryEntryID:entryID];
    [(UARPUpdaterServiceHID *)self ioKitRuleMatched:v8];
  }
}

- (void)firmwareStagingComplete:(id)a3 withStatus:(unint64_t)a4
{
  if (!a4)
  {
    [(UARPHIDUpdater *)self->_hidUpdater applyStagedAssets:a3];
  }
}

- (void)assetSolicitationComplete:(id)a3 assetID:(id)a4 withStatus:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  serviceQueue = self->_serviceQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000F920;
  v13[3] = &unk_10002C700;
  v14 = v9;
  v15 = self;
  v16 = v8;
  v17 = a5;
  v11 = v8;
  v12 = v9;
  dispatch_async(serviceQueue, v13);
}

- (void)standaloneDynamicAssetSolicitation:(id)a3 modelNumber:(id)a4 notifyService:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  serviceQueue = self->_serviceQueue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000FDD4;
  v18[3] = &unk_10002C548;
  v18[4] = self;
  v19 = v11;
  v20 = v12;
  v21 = v10;
  v14 = v10;
  v15 = v12;
  v16 = v11;
  v17 = a6;
  dispatch_async(serviceQueue, v18);
  v17[2](v17, 1);
}

- (void)standaloneDynamicAssetSolicitation:(id)a3 modelNumbers:(id)a4 notifyService:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  serviceQueue = self->_serviceQueue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001008C;
  v18[3] = &unk_10002C548;
  v18[4] = self;
  v19 = v11;
  v20 = v12;
  v21 = v10;
  v14 = v10;
  v15 = v12;
  v16 = v11;
  v17 = a6;
  dispatch_async(serviceQueue, v18);
  v17[2](v17, 1);
}

- (void)qProcessStandaloneDynamicAssetSolicitation:(id)a3 modelNumbers:(id)a4 notifyService:(id)a5
{
  v54 = a3;
  v7 = a4;
  v8 = a5;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v7;
  v51 = [v7 countByEnumeratingWithState:&v60 objects:v70 count:16];
  if (!v51)
  {
LABEL_23:
    v33 = [[UARPStandaloneCommandManagerReply alloc] initWithRemoteServiceEndpoint:v8];
    v34 = v33;
    if (v33)
    {
      legacyStandaloneDynamicAssetSolicitation = self->_legacyStandaloneDynamicAssetSolicitation;
      v36 = [(UARPStandaloneCommandManagerReply *)v33 remoteObject];
      v37 = v36;
      if (legacyStandaloneDynamicAssetSolicitation)
      {
        v38 = [obj objectAtIndexedSubscript:0];
        [v37 dynamicAssetSolicitationComplete:&__NSArray0__struct modelNumber:v38];
      }

      else
      {
        [v36 dynamicAssetSolicitationComplete:&__NSArray0__struct];
      }

      pendingAssetSolicitationRequest = self->_pendingAssetSolicitationRequest;
      self->_pendingAssetSolicitationRequest = 0;

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10001E0A8();
      }
    }

    else
    {
      v39 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v39)
      {
        sub_10001E130(v39, v40, v41, v42, v43, v44, v45, v46);
      }
    }

    goto LABEL_32;
  }

  v48 = v8;
  v53 = 0;
  v50 = *v61;
  do
  {
    v9 = 0;
    do
    {
      if (*v61 != v50)
      {
        objc_enumerationMutation(obj);
      }

      v52 = v9;
      v10 = [(UARPHIDUpdater *)self->_hidUpdater getAccessoriesForIdentifier:*(*(&v60 + 1) + 8 * v9)];
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v56 objects:v69 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v57;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v57 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v56 + 1) + 8 * i);
            v16 = [v15 accessoryID];
            if (v16)
            {
              v17 = v16;
              v18 = [v15 accessoryID];
              v19 = [v18 modelNumber];
              if (v19)
              {
                v20 = v19;
                v21 = [v15 accessoryID];
                v22 = [v21 serialNumber];

                if (v22)
                {
                  v23 = [v15 accessoryID];
                  v24 = [v23 serialNumber];
                  v25 = [NSString stringWithFormat:@"LOGS-%@.uarp", v24];

                  v26 = UARPStringDynamicAssetsFilepath();
                  v27 = [NSURL fileURLWithPath:v26];
                  v28 = [v27 URLByAppendingPathComponent:v25];

                  v29 = [[UARPAssetID alloc] initWithLocationType:10 assetTag:v54 url:v28];
                  [(UARPUpdaterServiceDynamicAssetSolicitationRecord *)self->_pendingAssetSolicitationRequest addExpectedSolicitationResponse];
                  hidUpdater = self->_hidUpdater;
                  v31 = [v15 accessoryID];
                  v64 = v31;
                  v53 = 1;
                  v32 = [NSArray arrayWithObjects:&v64 count:1];
                  [(UARPHIDUpdater *)hidUpdater solicitDynamicAssetForAccessories:v32 assetID:v29];

                  continue;
                }
              }

              else
              {
              }
            }

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v66 = "[UARPUpdaterServiceHID qProcessStandaloneDynamicAssetSolicitation:modelNumbers:notifyService:]";
              v67 = 2112;
              v68 = v15;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: Invalid accessory %@", buf, 0x16u);
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v56 objects:v69 count:16];
        }

        while (v12);
      }

      v9 = v52 + 1;
    }

    while ((v52 + 1) != v51);
    v51 = [obj countByEnumeratingWithState:&v60 objects:v70 count:16];
  }

  while (v51);
  v8 = v48;
  if ((v53 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_32:
}

- (void)queryPendingTssRequests:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[UARPUpdaterServiceHID queryPendingTssRequests:]";
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s:", &v8, 0xCu);
  }

  v6 = [(UARPHIDUpdater *)self->_hidUpdater pendingTatsuRequests];
  v7 = self->_log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[UARPUpdaterServiceHID queryPendingTssRequests:]";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s: HID Updater responded with these pending TSS Requests %@", &v8, 0x16u);
  }

  v4[2](v4, v6);
}

- (void)tssResponse:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[UARPUpdaterServiceHID tssResponse:]";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: TSS Response %@", &v6, 0x16u);
  }

  [(UARPHIDUpdater *)self->_hidUpdater tssResponse:v4];
}

@end