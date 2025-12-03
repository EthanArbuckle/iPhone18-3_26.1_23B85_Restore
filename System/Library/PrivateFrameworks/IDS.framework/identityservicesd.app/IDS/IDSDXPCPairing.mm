@interface IDSDXPCPairing
- (IDSDXPCPairing)initWithQueue:(id)queue idsDaemon:(id)daemon serviceController:(id)controller pairingManager:(id)manager quickSwitchHelper:(id)helper accountController:(id)accountController utunController:(id)utunController utunDeliveryController:(id)self0;
- (id)_pairedDeviceCBUUIDs;
- (id)_pairingDeviceCBUUIDs;
- (id)_sortedArrayFromCBUUIDSet:(id)set;
- (void)_addPairedDevice:(id)device withInfo:(id)info completion:(id)completion;
- (void)_updatePairedDevice:(id)device pairingType:(int64_t)type completion:(id)completion;
- (void)addPairedDeviceWithInfo:(id)info completion:(id)completion;
- (void)connectPairedDeviceWithID:(id)d completion:(id)completion;
- (void)deletePairedDeviceWithID:(id)d completion:(id)completion;
- (void)disconnectActivePairedDevice:(id)device;
- (void)dropAllMessagesWithoutAnyAllowedClassifierForDevice:(id)device completion:(id)completion;
- (void)forgetDeviceWithID:(id)d completion:(id)completion;
- (void)getPairedDevicesWithCompletion:(id)completion;
- (void)getPairingDevicesWithCompletion:(id)completion;
- (void)getPairingRecordsWithCompletion:(id)completion;
- (void)pairedDevicesInfo:(id)info;
- (void)redeliverMessagesForDevice:(id)device completion:(id)completion;
- (void)setAllowedTrafficClassifiersForDevice:(id)device classifiers:(id)classifiers completion:(id)completion;
- (void)setupCompletedForPairedDeviceWithID:(id)d completion:(id)completion;
- (void)stopLocalPairingForDeviceWithID:(id)d completion:(id)completion;
- (void)switchActivePairedDeviceWithID:(id)d completion:(id)completion;
- (void)unpairDeviceWithID:(id)d completion:(id)completion;
- (void)unpairStartForDeviceWithID:(id)d completion:(id)completion;
- (void)updatePairedDeviceWithID:(id)d supportIPsec:(BOOL)psec completion:(id)completion;
@end

@implementation IDSDXPCPairing

- (IDSDXPCPairing)initWithQueue:(id)queue idsDaemon:(id)daemon serviceController:(id)controller pairingManager:(id)manager quickSwitchHelper:(id)helper accountController:(id)accountController utunController:(id)utunController utunDeliveryController:(id)self0
{
  queueCopy = queue;
  daemonCopy = daemon;
  controllerCopy = controller;
  managerCopy = manager;
  helperCopy = helper;
  accountControllerCopy = accountController;
  utunControllerCopy = utunController;
  deliveryControllerCopy = deliveryController;
  v28.receiver = self;
  v28.super_class = IDSDXPCPairing;
  v19 = [(IDSDXPCPairing *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_queue, queue);
    objc_storeStrong(&v20->_idsDaemon, daemon);
    objc_storeStrong(&v20->_serviceController, controller);
    objc_storeStrong(&v20->_pairingManager, manager);
    objc_storeStrong(&v20->_quickSwitchHelper, helper);
    objc_storeStrong(&v20->_accountController, accountController);
    objc_storeStrong(&v20->_utunController, utunController);
    objc_storeStrong(&v20->_utunDeliveryController, deliveryController);
  }

  return v20;
}

- (void)addPairedDeviceWithInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  infoCopy = info;
  cbuuid = [infoCopy cbuuid];
  [(IDSDXPCPairing *)self _addPairedDevice:cbuuid withInfo:infoCopy completion:completionCopy];
}

- (void)connectPairedDeviceWithID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(Daemon) connectPairedDevice (cbuuid: %@)", &v11, 0xCu);
  }

  utunController = [(IDSDXPCPairing *)self utunController];
  uUIDString = [dCopy UUIDString];
  [utunController connectPairedDevice:uUIDString];

  completionCopy[2](completionCopy, 0);
}

- (void)setupCompletedForPairedDeviceWithID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(Daemon) setupCompletedForPairedDevice (cbuuid: %@)", &v10, 0xCu);
  }

  utunDeliveryController = [(IDSDXPCPairing *)self utunDeliveryController];
  [utunDeliveryController localSetupCompleted];

  completionCopy[2](completionCopy, 0);
}

- (void)getPairingDevicesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(Daemon) getPairingDevices", &v8, 2u);
  }

  _pairingDeviceCBUUIDs = [(IDSDXPCPairing *)self _pairingDeviceCBUUIDs];
  v7 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = _pairingDeviceCBUUIDs;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(Daemon) getPairingDevices yielded CBUUIDs: %@", &v8, 0xCu);
  }

  completionCopy[2](completionCopy, _pairingDeviceCBUUIDs, 0);
}

- (void)getPairedDevicesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(Daemon) getPairedDevices", &v8, 2u);
  }

  _pairedDeviceCBUUIDs = [(IDSDXPCPairing *)self _pairedDeviceCBUUIDs];
  v7 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = _pairedDeviceCBUUIDs;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(Daemon) getPairedDevices yielded CBUUIDs: %@", &v8, 0xCu);
  }

  completionCopy[2](completionCopy, _pairedDeviceCBUUIDs, 0);
}

- (void)getPairingRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  pairingManager = [(IDSDXPCPairing *)self pairingManager];
  localDeviceRecord = [pairingManager localDeviceRecord];

  pairingManager2 = [(IDSDXPCPairing *)self pairingManager];
  pairedDeviceRecords = [pairingManager2 pairedDeviceRecords];

  completionCopy[2](completionCopy, localDeviceRecord, pairedDeviceRecords, 0);
}

- (void)pairedDevicesInfo:(id)info
{
  infoCopy = info;
  pairingManager = [(IDSDXPCPairing *)self pairingManager];
  allPairedDevices = [pairingManager allPairedDevices];

  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(allPairedDevices, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = allPairedDevices;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        dictionaryRepresentation = [*(*(&v14 + 1) + 8 * v12) dictionaryRepresentation];
        [v7 addObject:dictionaryRepresentation];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  infoCopy[2](infoCopy, v7, 0);
}

- (void)updatePairedDeviceWithID:(id)d supportIPsec:(BOOL)psec completion:(id)completion
{
  psecCopy = psec;
  dCopy = d;
  completionCopy = completion;
  if (dCopy)
  {
    v33 = dCopy;
    allObjects = [NSArray arrayWithObjects:&v33 count:1];
  }

  else
  {
    pairingManager = [(IDSDXPCPairing *)self pairingManager];
    cbuuidsOfPairedDevices = [pairingManager cbuuidsOfPairedDevices];
    allObjects = [cbuuidsOfPairedDevices allObjects];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = allObjects;
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v25 = dCopy;
    v16 = *v27;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        pairingManager2 = [(IDSDXPCPairing *)self pairingManager];
        v20 = [pairingManager2 updatePairedDeviceWithCBUUID:v18 supportIPsec:psecCopy];

        if ((v20 & 1) == 0)
        {
          v22 = [NSString stringWithFormat:@"We were unable to update the cache. Possibly because the device doesn't exist. Look at the logs to know for sure. {uuid: %@}", v18];
          v23 = IDSGenericErrorDomain;
          v30 = NSDebugDescriptionErrorKey;
          v31 = v22;
          v24 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          v21 = [NSError errorWithDomain:v23 code:1 userInfo:v24];

          goto LABEL_14;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }

    v21 = 0;
LABEL_14:
    dCopy = v25;
  }

  else
  {
    v21 = 0;
  }

  completionCopy[2](completionCopy, v21);
}

- (void)deletePairedDeviceWithID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(Daemon) deletePairedDeviceWithID (cbuuid: %@)", &v14, 0xCu);
  }

  utunController = [(IDSDXPCPairing *)self utunController];
  uUIDString = [dCopy UUIDString];
  [utunController deletePairedDevice:uUIDString];

  pairingManager = [(IDSDXPCPairing *)self pairingManager];
  uUIDString2 = [dCopy UUIDString];
  [pairingManager removeLocalPairedDevice:uUIDString2];

  v13 = +[IDSUTunDeliveryController sharedInstance];
  [v13 stopIdsNRDeviceBridgeAndPreferenceHandler];

  completionCopy[2](completionCopy, 0);
}

- (void)unpairStartForDeviceWithID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(Daemon) deletePairedDeviceWithID (cbuuid: %@)", &v10, 0xCu);
  }

  utunDeliveryController = [(IDSDXPCPairing *)self utunDeliveryController];
  [utunDeliveryController defaultPeerUnpairStart];

  completionCopy[2](completionCopy, 0);
}

- (void)stopLocalPairingForDeviceWithID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138477827;
    v16 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(Daemon) stopLocalPairingForDeviceWithID {cbuuid: %{private}@}", &v15, 0xCu);
  }

  utunController = [(IDSDXPCPairing *)self utunController];
  uUIDString = [dCopy UUIDString];
  [utunController obliterateConnectionInfoForCBUUID:uUIDString];

  pairingManager = [(IDSDXPCPairing *)self pairingManager];
  uUIDString2 = [dCopy UUIDString];
  [pairingManager removeLocalPairedDevice:uUIDString2];

  v13 = +[IDSPairingManager sharedInstance];
  LOBYTE(uUIDString2) = [v13 isCurrentDevicePairedOrPairing];

  if ((uUIDString2 & 1) == 0)
  {
    accountController = [(IDSDXPCPairing *)self accountController];
    [accountController stopLocalSetup];
  }

  completionCopy[2](completionCopy, 0);
}

- (void)unpairDeviceWithID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(Daemon) unpairDevice (cbuuid: %@)", &v21, 0xCu);
  }

  pairingManager = [(IDSDXPCPairing *)self pairingManager];
  cbuuidsOfPairedDevices = [pairingManager cbuuidsOfPairedDevices];
  v11 = [cbuuidsOfPairedDevices containsObject:dCopy];

  if (v11)
  {
    utunController = [(IDSDXPCPairing *)self utunController];
    uUIDString = [dCopy UUIDString];
    [utunController obliterateConnectionInfoForCBUUID:uUIDString];

    pairingManager2 = [(IDSDXPCPairing *)self pairingManager];
    uUIDString2 = [dCopy UUIDString];
    [pairingManager2 removeLocalPairedDevice:uUIDString2];

    serviceController = [(IDSDXPCPairing *)self serviceController];
    v17 = [serviceController allServicesWithAdHocServiceType:2];

    idsDaemon = [(IDSDXPCPairing *)self idsDaemon];
    [idsDaemon dropQueuedBroadcastsForServices:v17];

    idsDaemon2 = [(IDSDXPCPairing *)self idsDaemon];
    [idsDaemon2 _processMessagesUponUnpairing];

    v20 = 0;
  }

  else
  {
    v20 = [NSError errorWithDomain:IDSLocalPairingErrorDomain code:8 userInfo:0];
    v17 = v20;
  }

  completionCopy[2](completionCopy, v20);
}

- (void)forgetDeviceWithID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(Daemon) forgetDevice (cbuuid: %@)", &v11, 0xCu);
  }

  pairingManager = [(IDSDXPCPairing *)self pairingManager];
  uUIDString = [dCopy UUIDString];
  [pairingManager removeLocalPairedDevice:uUIDString];

  completionCopy[2](completionCopy, 0);
}

- (void)switchActivePairedDeviceWithID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(Daemon) switchActivePairedDevice (cbuuid: %@)", &v11, 0xCu);
  }

  quickSwitchHelper = [(IDSDXPCPairing *)self quickSwitchHelper];
  uUIDString = [dCopy UUIDString];
  [quickSwitchHelper initiateQuickSwitchToDeviceWithCBUUID:uUIDString force:0 completionBlock:completionCopy];
}

- (void)disconnectActivePairedDevice:(id)device
{
  deviceCopy = device;
  v5 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(Daemon) switchToNoActivePairedDevice", v12, 2u);
  }

  utunController = [(IDSDXPCPairing *)self utunController];
  pairingManager = [(IDSDXPCPairing *)self pairingManager];
  pairedDeviceUUIDString = [pairingManager pairedDeviceUUIDString];
  [utunController obliterateConnectionInfoForCBUUID:pairedDeviceUUIDString];

  pairingManager2 = [(IDSDXPCPairing *)self pairingManager];
  [pairingManager2 disconnectActivePairedDevice];

  idsDaemon = [(IDSDXPCPairing *)self idsDaemon];
  v11 = [idsDaemon broadcasterWithMessageContext:0];

  [v11 deactivatePairedDevices];
  deviceCopy[2](deviceCopy, 0);
}

- (void)redeliverMessagesForDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  v8 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(Daemon) redeliverMessagesForDevice (device ID: %@)", &v13, 0xCu);
  }

  v9 = +[IDSPairingManager sharedInstance];
  pairedDeviceUniqueID = [v9 pairedDeviceUniqueID];

  if ([deviceCopy isEqualToString:pairedDeviceUniqueID])
  {
    idsDaemon = [(IDSDXPCPairing *)self idsDaemon];
    [idsDaemon launchOnDemandServicesForQueuedBroadcastAttempts];

    idsDaemon2 = [(IDSDXPCPairing *)self idsDaemon];
    [idsDaemon2 _processStoredMessagesIncludingClassD:1];
  }

  completionCopy[2](completionCopy, 0);
}

- (void)setAllowedTrafficClassifiersForDevice:(id)device classifiers:(id)classifiers completion:(id)completion
{
  deviceCopy = device;
  classifiersCopy = classifiers;
  completionCopy = completion;
  v11 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = deviceCopy;
    v15 = 2112;
    v16 = classifiersCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "(Daemon) setAllowedTrafficClassifiersForDevice (device ID: %@)   (classifiers: %@)", &v13, 0x16u);
  }

  utunDeliveryController = [(IDSDXPCPairing *)self utunDeliveryController];
  [utunDeliveryController setAllowedTrafficClasses:classifiersCopy];

  completionCopy[2](completionCopy, 0);
}

- (void)dropAllMessagesWithoutAnyAllowedClassifierForDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  v8 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(Daemon) dropAllMessagesWithoutAnyAllowedClassifierForDevice (device ID: %@)", buf, 0xCu);
  }

  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "(Daemon) dropAllMessagesWithoutAnyAllowedClassifierForDevice (device ID: %@)", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v12 = deviceCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v12 = deviceCopy;
        _IDSLogV();
      }
    }
  }

  utunDeliveryController = [(IDSDXPCPairing *)self utunDeliveryController];
  [utunDeliveryController defaultPeerDropDisallowedMessages];

  idsDaemon = [(IDSDXPCPairing *)self idsDaemon];
  [idsDaemon _processDisallowedMessages];

  completionCopy[2](completionCopy, 0);
}

- (id)_pairingDeviceCBUUIDs
{
  v3 = +[IDSPairingManager sharedInstance];
  cbuuidsOfPairingDevices = [v3 cbuuidsOfPairingDevices];

  v5 = [(IDSDXPCPairing *)self _sortedArrayFromCBUUIDSet:cbuuidsOfPairingDevices];

  return v5;
}

- (id)_pairedDeviceCBUUIDs
{
  v3 = +[IDSPairingManager sharedInstance];
  cbuuidsOfPairedDevices = [v3 cbuuidsOfPairedDevices];

  v5 = [(IDSDXPCPairing *)self _sortedArrayFromCBUUIDSet:cbuuidsOfPairedDevices];

  return v5;
}

- (id)_sortedArrayFromCBUUIDSet:(id)set
{
  allObjects = [set allObjects];
  v4 = [allObjects sortedArrayUsingComparator:&stru_100BE52D0];

  return v4;
}

- (void)_updatePairedDevice:(id)device pairingType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  uUIDString = [device UUIDString];
  if ([uUIDString length])
  {
    pairingManager = [(IDSDXPCPairing *)self pairingManager];
    [pairingManager updateLocalPairedDevice:uUIDString pairingType:type];

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    v10 = [NSError errorWithDomain:IDSLocalPairingErrorDomain code:6 userInfo:0];
    (completionCopy)[2](completionCopy, v10);
  }
}

- (void)_addPairedDevice:(id)device withInfo:(id)info completion:(id)completion
{
  deviceCopy = device;
  infoCopy = info;
  completionCopy = completion;
  bTOutOfBandKey = [infoCopy BTOutOfBandKey];
  shouldPairDirectlyOverIPsec = [infoCopy shouldPairDirectlyOverIPsec];
  if (+[IMUserDefaults isAlwaysPairAsTinker])
  {
    pairingType = 1;
  }

  else
  {
    pairingType = [infoCopy pairingType];
  }

  bluetoothMACAddress = [infoCopy bluetoothMACAddress];
  v13 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [IDSLogFormatter descriptionForData:bTOutOfBandKey options:2];
    if (shouldPairDirectlyOverIPsec)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v16 = [IDSLogFormatter descriptionForData:bluetoothMACAddress options:2];
    *buf = 138478851;
    v46 = deviceCopy;
    v47 = 2113;
    v48 = v14;
    v49 = 2114;
    v50 = v15;
    v51 = 2050;
    v52 = pairingType;
    v53 = 2113;
    v54 = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "(Daemon) _addPairedDevice:BTOutOfBandKey:completion: (cbuuid: %{private}@, btOutOfBandKey.hash: %{private}@, shouldPairDirectlyOverIPsec: %{public}@, pairingType: %{public}ld, bluetoothMACAddress.hash: %{private}@)", buf, 0x34u);
  }

  uUIDString = [(__CFString *)deviceCopy UUIDString];
  pairingManager = [(IDSDXPCPairing *)self pairingManager];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1006BDF8C;
  v43[3] = &unk_100BDA9F0;
  v19 = completionCopy;
  v44 = v19;
  [pairingManager registerPairedDeviceWithUniqueID:deviceCopy didConnectBlock:v43];

  if ([uUIDString length])
  {
    if (shouldPairDirectlyOverIPsec)
    {
      v20 = 1;
    }

    else
    {
      v20 = IMGetDomainBoolForKeyWithDefaultValue();
    }

    v22 = +[IMRGLog watchPairing];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = @"NO";
      if (v20)
      {
        v23 = @"YES";
      }

      *buf = 138412290;
      v46 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "(Daemon) _addPairedDevice: PairDirectlyOverIPsec: %@", buf, 0xCu);
    }

    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1006BDF9C;
    v35[3] = &unk_100BE52F8;
    v42 = v20;
    v40 = v19;
    v35[4] = self;
    v24 = uUIDString;
    v36 = v24;
    v37 = bTOutOfBandKey;
    v41 = pairingType;
    v38 = bluetoothMACAddress;
    v25 = deviceCopy;
    v39 = v25;
    v26 = objc_retainBlock(v35);
    pairingManager2 = [(IDSDXPCPairing *)self pairingManager];
    pairedDeviceUUIDString = [pairingManager2 pairedDeviceUUIDString];

    if (pairedDeviceUUIDString && ([(__CFString *)pairedDeviceUUIDString isEqualToIgnoringCase:v24]& 1) != 0)
    {
      v29 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138478083;
        v46 = pairedDeviceUUIDString;
        v47 = 2113;
        v48 = v24;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "(Daemon) Told to add a paired device but there is no need to reset communication with the currently active paired device. {activeCBUUID: %{private}@, cbuuidString: %{private}@}", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }

      if (v26)
      {
        (v26[2])(v26, 0);
      }
    }

    else
    {
      v30 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v46 = v25;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "(Daemon) Reset communication with currently active paired device before adding a new paired device: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v32 = v25;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v32 = v25;
            _IDSLogV();
          }
        }
      }

      quickSwitchHelper = [(IDSDXPCPairing *)self quickSwitchHelper];
      [quickSwitchHelper resetCommunicationStateBeforeQuickSwitchWithCompletionBlock:v26];
    }

    v21 = v40;
  }

  else
  {
    v21 = [NSError errorWithDomain:IDSLocalPairingErrorDomain code:6 userInfo:0];
    (*(v19 + 2))(v19, v21);
  }
}

@end