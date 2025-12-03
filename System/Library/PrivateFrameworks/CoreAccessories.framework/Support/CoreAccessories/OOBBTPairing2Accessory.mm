@interface OOBBTPairing2Accessory
+ (id)accessoryForUID:(id)d;
+ (id)accessoryList;
+ (id)accessoryListLock;
+ (id)processingQueue;
+ (void)addAccessory:(id)accessory;
+ (void)removeAccessoryForUID:(id)d;
- (BOOL)carPlaySupported;
- (BOOL)checkAlreadyPairedComponent:(id)component;
- (OOBBTPairing2Accessory)initWithUID:(id)d accInfo:(id)info;
- (id)getDeviceMacAddress;
- (id)getPendingComponent;
- (int)checkComponentsAlreadyPaired;
- (void)addComponent:(id)component;
- (void)cancelPairing:(id)pairing;
- (void)checkDeviceSupportsContactsSync:(id)sync withReply:(id)reply;
- (void)connectToACCBluetoothPairingService;
- (void)disconnectFromACCBluetoothPairingService;
- (void)showContactsSyncAlert:(id)alert accessoryUID:(id)d macAddr:(id)addr;
- (void)startPairing:(id)pairing macAddr:(id)addr pairingDataP192:(id)p192 pairingDataP256:(id)p256;
@end

@implementation OOBBTPairing2Accessory

- (OOBBTPairing2Accessory)initWithUID:(id)d accInfo:(id)info
{
  dCopy = d;
  infoCopy = info;
  v35.receiver = self;
  v35.super_class = OOBBTPairing2Accessory;
  v9 = [(OOBBTPairing2Accessory *)&v35 init];
  if (v9)
  {
    v10 = objc_alloc_init(NSMutableDictionary);
    v11 = *(v9 + 1);
    *(v9 + 1) = v10;

    objc_storeStrong(v9 + 2, d);
    objc_storeStrong(v9 + 3, info);
    v12 = +[OOBBTPairing2Accessory processingQueue];
    v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v12);
    v14 = *(v9 + 7);
    *(v9 + 7) = v13;

    objc_initWeak(&location, v9);
    v15 = *(v9 + 7);
    handler = _NSConcreteStackBlock;
    v30 = 3221225472;
    v31 = __46__OOBBTPairing2Accessory_initWithUID_accInfo___block_invoke;
    v32 = &unk_10022A3B8;
    objc_copyWeak(&v33, &location);
    dispatch_source_set_event_handler(v15, &handler);
    dispatch_source_set_timer(*(v9 + 7), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(*(v9 + 7));
    v16 = acc_strings_bundle();
    v17 = [v16 localizedStringForKey:@"“%@” would like to pair with your %@." value:&stru_10022D360 table:0];

    name = [v9 name];
    v19 = MGCopyAnswer();
    v20 = [NSString stringWithFormat:v17, name, v19, handler, v30, v31, v32];

    v21 = acc_strings_bundle();
    v22 = [v21 localizedStringForKey:@"Allow" value:&stru_10022D360 table:0];

    v23 = acc_strings_bundle();
    v24 = [v23 localizedStringForKey:@"Cancel" value:&stru_10022D360 table:0];

    dCopy = [NSString stringWithFormat:@"oobPairing2-%@", dCopy];
    v26 = objc_alloc_init(ACCUserNotification);
    v27 = *(v9 + 5);
    *(v9 + 5) = v26;

    [*(v9 + 5) setType:0];
    [*(v9 + 5) setTitle:@"Accessory Bluetooth Pairing Request"];
    [*(v9 + 5) setMessage:v20];
    [*(v9 + 5) setDefaultButtonName:v22];
    [*(v9 + 5) setOtherButtonName:v24];
    [*(v9 + 5) setIconURL:0];
    [*(v9 + 5) setIsModal:1];
    [*(v9 + 5) setTimeout:0.0];
    [*(v9 + 5) setIdentifier:dCopy];
    [*(v9 + 5) setGroupIdentifier:dCopy];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __46__OOBBTPairing2Accessory_initWithUID_accInfo___block_invoke(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v2 = *(gLogObjects + 400);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v2 = &_os_log_default;
    v3 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Pairing timer event handler fired", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained accessoryUID];
  platform_oobBtPairing2_startOobBtPairingHandler(v5);
}

- (BOOL)carPlaySupported
{
  v2 = [(NSDictionary *)self->_accInfo objectForKey:@"ACCOOBBTPairingCarPlaySupported"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)getPendingComponent
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_componentList allValues];
  v3 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(allValues);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (![v6 status])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)addComponent:(id)component
{
  componentList = self->_componentList;
  componentCopy = component;
  componentUID = [componentCopy componentUID];
  [(NSMutableDictionary *)componentList setObject:componentCopy forKey:componentUID];
}

- (void)connectToACCBluetoothPairingService
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects <= 50;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (self->_connectionToACCBluetoothPairingService)
  {
    if (v3)
    {
      v4 = *(gLogObjects + 400);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v4 = &_os_log_default;
      v7 = &_os_log_default;
    }

    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    LOWORD(v14) = 0;
    v8 = "Already have connection to ACCBluetoothPairingService!";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v8, &v14, 2u);
LABEL_18:

    return;
  }

  if (v3)
  {
    v6 = *(gLogObjects + 400);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v9 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = @"com.apple.accessories.ACCBluetoothPairingService";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Create connection to ACCBluetoothPairingService: %@", &v14, 0xCu);
  }

  v10 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.accessories.ACCBluetoothPairingService"];
  connectionToACCBluetoothPairingService = self->_connectionToACCBluetoothPairingService;
  self->_connectionToACCBluetoothPairingService = v10;

  if (!self->_connectionToACCBluetoothPairingService)
  {
    if (gLogObjects && gNumLogObjects >= 51)
    {
      v4 = *(gLogObjects + 400);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v4 = &_os_log_default;
      v13 = &_os_log_default;
    }

    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    LOWORD(v14) = 0;
    v8 = "Failed to create connection to ACCBluetoothPairingService!";
    goto LABEL_17;
  }

  v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ACCBluetoothPairingServiceProtocol];
  [(NSXPCConnection *)self->_connectionToACCBluetoothPairingService setRemoteObjectInterface:v12];

  [(NSXPCConnection *)self->_connectionToACCBluetoothPairingService resume];
}

- (void)disconnectFromACCBluetoothPairingService
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)getDeviceMacAddress
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__5;
  v24 = __Block_byref_object_dispose__5;
  v25 = 0;
  [(OOBBTPairing2Accessory *)self connectToACCBluetoothPairingService];
  if (self->_connectionToACCBluetoothPairingService)
  {
    v3 = dispatch_semaphore_create(0);
    connectionToACCBluetoothPairingService = self->_connectionToACCBluetoothPairingService;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __45__OOBBTPairing2Accessory_getDeviceMacAddress__block_invoke;
    v18[3] = &unk_10022A3E0;
    v5 = v3;
    v19 = v5;
    v6 = [(NSXPCConnection *)connectionToACCBluetoothPairingService remoteObjectProxyWithErrorHandler:v18];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __45__OOBBTPairing2Accessory_getDeviceMacAddress__block_invoke_85;
    v15[3] = &unk_100226C00;
    v17 = &v20;
    v7 = v5;
    v16 = v7;
    [v6 getDeviceBTMacAddress:v15];

    v8 = dispatch_time(0, 1000000000);
    if (dispatch_semaphore_wait(v7, v8))
    {
      if (gLogObjects && gNumLogObjects >= 51)
      {
        v9 = *(gLogObjects + 400);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v9 = &_os_log_default;
        v10 = &_os_log_default;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Timed out waiting for getDeviceBTMacAddress completion handler callback!", &v14, 2u);
      }
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 51)
    {
      v7 = *(gLogObjects + 400);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v7 = &_os_log_default;
      v11 = &_os_log_default;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "No connection to ACCBluetoothPairingService!", &v14, 2u);
    }
  }

  v12 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v12;
}

void __45__OOBBTPairing2Accessory_getDeviceMacAddress__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v4 = *(gLogObjects + 400);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v5 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __45__OOBBTPairing2Accessory_getDeviceMacAddress__block_invoke_cold_2();
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __45__OOBBTPairing2Accessory_getDeviceMacAddress__block_invoke_85(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v4 = *(gLogObjects + 400);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v5 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "deviceMacAddr = %@", &v11, 0xCu);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  if (v3)
  {
    v8 = [v3 copy];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    dispatch_semaphore_signal(*(a1 + 32));
  }
}

- (BOOL)checkAlreadyPairedComponent:(id)component
{
  componentCopy = component;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  [(OOBBTPairing2Accessory *)self connectToACCBluetoothPairingService];
  if (self->_connectionToACCBluetoothPairingService)
  {
    v5 = dispatch_semaphore_create(0);
    connectionToACCBluetoothPairingService = self->_connectionToACCBluetoothPairingService;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = __54__OOBBTPairing2Accessory_checkAlreadyPairedComponent___block_invoke;
    v22[3] = &unk_10022A3E0;
    v7 = v5;
    v23 = v7;
    v8 = [(NSXPCConnection *)connectionToACCBluetoothPairingService remoteObjectProxyWithErrorHandler:v22];
    macAddr = [componentCopy macAddr];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __54__OOBBTPairing2Accessory_checkAlreadyPairedComponent___block_invoke_87;
    v18[3] = &unk_10022A408;
    v19 = componentCopy;
    v21 = &v24;
    v10 = v7;
    v20 = v10;
    [v8 checkAlreadyPaired:macAddr completionHandler:v18];

    v11 = dispatch_time(0, 1000000000);
    if (dispatch_semaphore_wait(v10, v11))
    {
      if (gLogObjects && gNumLogObjects >= 51)
      {
        v12 = *(gLogObjects + 400);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v12 = &_os_log_default;
        v13 = &_os_log_default;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v17[0] = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Timed out waiting for checkAlreadyPaired completion handler callback!", v17, 2u);
      }
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 51)
    {
      v10 = *(gLogObjects + 400);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v10 = &_os_log_default;
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [OOBBTPairing2Accessory checkAlreadyPairedComponent:];
    }
  }

  v15 = *(v25 + 24);
  _Block_object_dispose(&v24, 8);

  return v15;
}

void __54__OOBBTPairing2Accessory_checkAlreadyPairedComponent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v4 = *(gLogObjects + 400);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v5 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __45__OOBBTPairing2Accessory_getDeviceMacAddress__block_invoke_cold_2();
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

intptr_t __54__OOBBTPairing2Accessory_checkAlreadyPairedComponent___block_invoke_87(uint64_t a1, int a2)
{
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v4 = *(gLogObjects + 400);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v5 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 32) macAddr];
    v8 = 138412546;
    v9 = v6;
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "component.macAddr = %@, alreadyPaired = %d", &v8, 0x12u);
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
  return dispatch_semaphore_signal(*(a1 + 40));
}

- (int)checkComponentsAlreadyPaired
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->_componentList allValues];
  v4 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([(OOBBTPairing2Accessory *)self checkAlreadyPairedComponent:v9])
        {
          [v9 setStatus:3];
        }

        else
        {
          ++v6;
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)checkDeviceSupportsContactsSync:(id)sync withReply:(id)reply
{
  replyCopy = reply;
  connectionToACCBluetoothPairingService = self->_connectionToACCBluetoothPairingService;
  syncCopy = sync;
  v9 = [(NSXPCConnection *)connectionToACCBluetoothPairingService remoteObjectProxyWithErrorHandler:&__block_literal_global_42];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __68__OOBBTPairing2Accessory_checkDeviceSupportsContactsSync_withReply___block_invoke_89;
  v11[3] = &unk_100228090;
  v12 = replyCopy;
  v10 = replyCopy;
  [v9 deviceSupportsContactsSync:syncCopy withReply:v11];
}

void __68__OOBBTPairing2Accessory_checkDeviceSupportsContactsSync_withReply___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v3 = *(gLogObjects + 400);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v3 = &_os_log_default;
    v4 = &_os_log_default;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __45__OOBBTPairing2Accessory_getDeviceMacAddress__block_invoke_cold_2();
  }
}

uint64_t __68__OOBBTPairing2Accessory_checkDeviceSupportsContactsSync_withReply___block_invoke_89(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)showContactsSyncAlert:(id)alert accessoryUID:(id)d macAddr:(id)addr
{
  alertCopy = alert;
  addrCopy = addr;
  dCopy = d;
  v11 = acc_strings_bundle();
  if (alertCopy)
  {
    v12 = [v11 localizedStringForKey:@"The accessory %@ may request your contacts value:phone favorites table:{and recent phone calls over Bluetooth. Do you wish to allow this?", &stru_10022D360, 0}];
    alertCopy = [NSString stringWithFormat:v12, alertCopy];
  }

  else
  {
    alertCopy = [v11 localizedStringForKey:@"An unknown accessory may request your contacts value:phone favorites table:{and recent phone calls over Bluetooth. Do you wish to allow this?", &stru_10022D360, 0}];
  }

  v14 = acc_strings_bundle();
  v15 = [v14 localizedStringForKey:@"Allow Contacts and Favorites Sync?" value:&stru_10022D360 table:0];

  v16 = acc_strings_bundle();
  v17 = [v16 localizedStringForKey:@"Allow" value:&stru_10022D360 table:0];

  v18 = acc_strings_bundle();
  v19 = [v18 localizedStringForKey:@"Don’t Allow" value:&stru_10022D360 table:0];

  v20 = [NSString stringWithFormat:@"oobPairing-contact-sync-%@", d];
  v21 = objc_alloc_init(ACCUserNotification);
  [(ACCUserNotification *)v21 setType:0];
  [(ACCUserNotification *)v21 setTitle:v15];
  [(ACCUserNotification *)v21 setMessage:alertCopy];
  [(ACCUserNotification *)v21 setDefaultButtonName:v17];
  [(ACCUserNotification *)v21 setOtherButtonName:v19];
  [(ACCUserNotification *)v21 setIconURL:0];
  [(ACCUserNotification *)v21 setIsModal:1];
  [(ACCUserNotification *)v21 setTimeout:0.0];
  [(ACCUserNotification *)v21 setIdentifier:v20];
  [(ACCUserNotification *)v21 setGroupIdentifier:d];

  v22 = +[ACCUserNotificationManager sharedManager];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = __69__OOBBTPairing2Accessory_showContactsSyncAlert_accessoryUID_macAddr___block_invoke;
  v24[3] = &unk_100227B50;
  v24[4] = self;
  v25 = addrCopy;
  v23 = addrCopy;
  [v22 presentNotification:v21 completionHandler:v24];
}

void __69__OOBBTPairing2Accessory_showContactsSyncAlert_accessoryUID_macAddr___block_invoke(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    if (gLogObjects && gNumLogObjects >= 51)
    {
      v4 = *(gLogObjects + 400);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v4 = &_os_log_default;
      v6 = &_os_log_default;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BTDeviceConnect Contact Sync Alert - user declined", v7, 2u);
    }
  }

  else
  {
    if (a2)
    {
      return;
    }

    if (gLogObjects && gNumLogObjects >= 51)
    {
      v3 = *(gLogObjects + 400);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v3 = &_os_log_default;
      v5 = &_os_log_default;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "BTDeviceConnect Contact Sync Alert - user accepted", buf, 2u);
    }

    v4 = [*(*(a1 + 32) + 48) remoteObjectProxyWithErrorHandler:&__block_literal_global_108];
    [v4 setBTDeviceSyncSettings:*(a1 + 40)];
  }
}

void __69__OOBBTPairing2Accessory_showContactsSyncAlert_accessoryUID_macAddr___block_invoke_106(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v3 = *(gLogObjects + 400);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v3 = &_os_log_default;
    v4 = &_os_log_default;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __45__OOBBTPairing2Accessory_getDeviceMacAddress__block_invoke_cold_2();
  }
}

- (void)startPairing:(id)pairing macAddr:(id)addr pairingDataP192:(id)p192 pairingDataP256:(id)p256
{
  pairingCopy = pairing;
  addrCopy = addr;
  p192Copy = p192;
  p256Copy = p256;
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v14 = *(gLogObjects + 400);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v14 = &_os_log_default;
    v15 = &_os_log_default;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    componentUID = [pairingCopy componentUID];
    *buf = 138413058;
    v40 = componentUID;
    v41 = 2112;
    v42 = addrCopy;
    v43 = 2112;
    v44 = p192Copy;
    v45 = 2112;
    v46 = p256Copy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "startPairing: %@ macAddr: %@ pairingDataP192: %@ pairingDataP256: %@", buf, 0x2Au);
  }

  if ([addrCopy length] == 6 && objc_msgSend(p192Copy, "length") == 32 && (!p256Copy || objc_msgSend(p256Copy, "length") == 32))
  {
    [(OOBBTPairing2Accessory *)self connectToACCBluetoothPairingService];
    if (self->_connectionToACCBluetoothPairingService)
    {
      v30 = [p192Copy subdataWithRange:{0, 16}];
      v29 = [p192Copy subdataWithRange:{16, 16}];
      v17 = [p256Copy subdataWithRange:{0, 16}];
      v18 = [p256Copy subdataWithRange:{16, 16}];
      if (gLogObjects && gNumLogObjects >= 51)
      {
        v19 = *(gLogObjects + 400);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v19 = &_os_log_default;
        v22 = &_os_log_default;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413314;
        v40 = addrCopy;
        v41 = 2112;
        v42 = v30;
        v43 = 2112;
        v44 = v29;
        v45 = 2112;
        v46 = v17;
        v47 = 2112;
        v48 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "call service startBTOOBPairing: accessoryMacAddr: %@ pdC192: %@ pR192: %@ pdC256: %@ pR256: %@", buf, 0x34u);
      }

      v28 = [(NSXPCConnection *)self->_connectionToACCBluetoothPairingService remoteObjectProxyWithErrorHandler:&__block_literal_global_111];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = __79__OOBBTPairing2Accessory_startPairing_macAddr_pairingDataP192_pairingDataP256___block_invoke_112;
      v31[3] = &unk_10022A490;
      v32 = addrCopy;
      v33 = v30;
      v34 = v29;
      v35 = v17;
      v36 = v18;
      v37 = pairingCopy;
      selfCopy = self;
      v23 = v18;
      v24 = v17;
      v25 = v29;
      v20 = v30;
      [v28 startBTOOBPairing:v32 pairingDataC192:v20 pairingDataR192:v25 pairingDataC256:v24 pairingDataR256:v23 completionHandler:v31];
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 51)
      {
        v20 = *(gLogObjects + 400);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v20 = &_os_log_default;
        v27 = &_os_log_default;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "No connection to ACCBluetoothPairingService!", buf, 2u);
      }
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 51)
    {
      v20 = *(gLogObjects + 400);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v20 = &_os_log_default;
      v21 = &_os_log_default;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      componentUID2 = [pairingCopy componentUID];
      *buf = 138413058;
      v40 = componentUID2;
      v41 = 2112;
      v42 = addrCopy;
      v43 = 2112;
      v44 = p192Copy;
      v45 = 2112;
      v46 = p256Copy;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "startPairing: %@ macAddr: %@ pairingDataP192: %@ pairingDataP256: %@, invalid parameter found, skip!", buf, 0x2Au);
    }
  }
}

void __79__OOBBTPairing2Accessory_startPairing_macAddr_pairingDataP192_pairingDataP256___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v3 = *(gLogObjects + 400);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v3 = &_os_log_default;
    v4 = &_os_log_default;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __45__OOBBTPairing2Accessory_getDeviceMacAddress__block_invoke_cold_2();
  }
}

void __79__OOBBTPairing2Accessory_startPairing_macAddr_pairingDataP192_pairingDataP256___block_invoke_112(uint64_t a1, int a2)
{
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v4 = *(gLogObjects + 400);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v5 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    v11 = [*(a1 + 72) status];
    v12 = [*(a1 + 72) accessoryStatus];
    *buf = 138414082;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v9;
    v29 = 2112;
    v30 = v10;
    v31 = 1024;
    v32 = a2;
    v33 = 1024;
    v34 = v11;
    v35 = 1024;
    v36 = v12;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "startPairing: %@ pdC192: %@ pR192: %@ pdC256: %@ pR256: %@, success = %d, component.status = %d, .accessoryStatus = %d", buf, 0x46u);
  }

  v13 = (a1 + 72);
  if ([*(a1 + 72) status] == 1)
  {
    if (a2)
    {
      v14 = 2;
    }

    else
    {
      v14 = 4;
    }

    [*v13 setStatus:v14];
    if ([*v13 status] == 4 || objc_msgSend(*v13, "accessoryStatus") >= 2)
    {
      _sendStopOOBBTPairing(*(a1 + 80), *(a1 + 72), [*(a1 + 72) status]);
    }

    if ([*v13 status] == 2 && (objc_msgSend(*(a1 + 80), "carPlaySupported") & 1) == 0)
    {
      v15 = *(a1 + 80);
      v16 = *(a1 + 32);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = __79__OOBBTPairing2Accessory_startPairing_macAddr_pairingDataP192_pairingDataP256___block_invoke_113;
      v19[3] = &unk_100229ED8;
      v19[4] = v15;
      v20 = v16;
      [v15 checkDeviceSupportsContactsSync:v20 withReply:v19];
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 51)
    {
      v17 = *(gLogObjects + 400);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v17 = &_os_log_default;
      v18 = &_os_log_default;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __79__OOBBTPairing2Accessory_startPairing_macAddr_pairingDataP192_pairingDataP256___block_invoke_112_cold_3(v13);
    }
  }
}

void __79__OOBBTPairing2Accessory_startPairing_macAddr_pairingDataP192_pairingDataP256___block_invoke_113(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 displayName];
    [v3 showContactsSyncAlert:v4 accessoryUID:*(*(a1 + 32) + 16) macAddr:*(a1 + 40)];
  }
}

- (void)cancelPairing:(id)pairing
{
  pairingCopy = pairing;
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v5 = *(gLogObjects + 400);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v5 = &_os_log_default;
    v6 = &_os_log_default;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    componentUID = [pairingCopy componentUID];
    v16 = 138412290;
    v17 = componentUID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "cancelPairing: %@", &v16, 0xCu);
  }

  [(OOBBTPairing2Accessory *)self connectToACCBluetoothPairingService];
  if (gLogObjects)
  {
    v8 = gNumLogObjects <= 50;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (self->_connectionToACCBluetoothPairingService)
  {
    if (v9)
    {
      v10 = *(gLogObjects + 400);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v10 = &_os_log_default;
      v12 = &_os_log_default;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = pairingCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "call service cancelBTOOBPairing: component: %@", &v16, 0xCu);
    }

    v13 = [(NSXPCConnection *)self->_connectionToACCBluetoothPairingService remoteObjectProxyWithErrorHandler:&__block_literal_global_115];
    macAddr = [pairingCopy macAddr];
    [v13 cancelBTOOBPairing:macAddr];

    [pairingCopy setStatus:4];
  }

  else
  {
    if (v9)
    {
      v11 = *(gLogObjects + 400);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v11 = &_os_log_default;
      v15 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No connection to ACCBluetoothPairingService!", &v16, 2u);
    }
  }
}

void __40__OOBBTPairing2Accessory_cancelPairing___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v3 = *(gLogObjects + 400);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v3 = &_os_log_default;
    v4 = &_os_log_default;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __45__OOBBTPairing2Accessory_getDeviceMacAddress__block_invoke_cold_2();
  }
}

+ (id)accessoryListLock
{
  if (accessoryListLock_onceToken != -1)
  {
    +[OOBBTPairing2Accessory accessoryListLock];
  }

  v3 = accessoryListLock__accessoryListLock;

  return v3;
}

void __43__OOBBTPairing2Accessory_accessoryListLock__block_invoke(id a1)
{
  accessoryListLock__accessoryListLock = objc_alloc_init(NSRecursiveLock);

  _objc_release_x1();
}

+ (id)accessoryList
{
  if (accessoryList_onceToken_0 != -1)
  {
    +[OOBBTPairing2Accessory accessoryList];
  }

  v3 = accessoryList__attachedOOBBTPairing2AccessoryList;

  return v3;
}

void __39__OOBBTPairing2Accessory_accessoryList__block_invoke(id a1)
{
  accessoryList__attachedOOBBTPairing2AccessoryList = objc_alloc_init(NSMutableDictionary);

  _objc_release_x1();
}

+ (id)accessoryForUID:(id)d
{
  dCopy = d;
  v4 = +[OOBBTPairing2Accessory accessoryList];
  v5 = [v4 objectForKey:dCopy];

  return v5;
}

+ (void)addAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = +[OOBBTPairing2Accessory accessoryList];
  accessoryUID = [accessoryCopy accessoryUID];
  [v5 setObject:accessoryCopy forKey:accessoryUID];
}

+ (void)removeAccessoryForUID:(id)d
{
  dCopy = d;
  v5 = +[OOBBTPairing2Accessory accessoryList];
  v4 = [v5 objectForKey:dCopy];
  [v5 removeObjectForKey:dCopy];

  [v4 disconnectFromACCBluetoothPairingService];
}

+ (id)processingQueue
{
  if (processingQueue_onceToken != -1)
  {
    +[OOBBTPairing2Accessory processingQueue];
  }

  v3 = processingQueue__processingQueue;

  return v3;
}

void __41__OOBBTPairing2Accessory_processingQueue__block_invoke(id a1)
{
  processingQueue__processingQueue = dispatch_queue_create("com.apple.acc.oobPairing2", 0);

  _objc_release_x1();
}

- (void)checkAlreadyPairedComponent:.cold.3()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __79__OOBBTPairing2Accessory_startPairing_macAddr_pairingDataP192_pairingDataP256___block_invoke_112_cold_3(id *a1)
{
  v7 = [*a1 componentUID];
  [*a1 status];
  [*a1 accessoryStatus];
  OUTLINED_FUNCTION_40_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

@end