@interface IDSDXPCPairing
- (IDSDXPCPairing)initWithQueue:(id)a3 idsDaemon:(id)a4 serviceController:(id)a5 pairingManager:(id)a6 quickSwitchHelper:(id)a7 accountController:(id)a8 utunController:(id)a9 utunDeliveryController:(id)a10;
- (id)_pairedDeviceCBUUIDs;
- (id)_pairingDeviceCBUUIDs;
- (id)_sortedArrayFromCBUUIDSet:(id)a3;
- (void)_addPairedDevice:(id)a3 withInfo:(id)a4 completion:(id)a5;
- (void)_updatePairedDevice:(id)a3 pairingType:(int64_t)a4 completion:(id)a5;
- (void)addPairedDeviceWithInfo:(id)a3 completion:(id)a4;
- (void)connectPairedDeviceWithID:(id)a3 completion:(id)a4;
- (void)deletePairedDeviceWithID:(id)a3 completion:(id)a4;
- (void)disconnectActivePairedDevice:(id)a3;
- (void)dropAllMessagesWithoutAnyAllowedClassifierForDevice:(id)a3 completion:(id)a4;
- (void)forgetDeviceWithID:(id)a3 completion:(id)a4;
- (void)getPairedDevicesWithCompletion:(id)a3;
- (void)getPairingDevicesWithCompletion:(id)a3;
- (void)getPairingRecordsWithCompletion:(id)a3;
- (void)pairedDevicesInfo:(id)a3;
- (void)redeliverMessagesForDevice:(id)a3 completion:(id)a4;
- (void)setAllowedTrafficClassifiersForDevice:(id)a3 classifiers:(id)a4 completion:(id)a5;
- (void)setupCompletedForPairedDeviceWithID:(id)a3 completion:(id)a4;
- (void)stopLocalPairingForDeviceWithID:(id)a3 completion:(id)a4;
- (void)switchActivePairedDeviceWithID:(id)a3 completion:(id)a4;
- (void)unpairDeviceWithID:(id)a3 completion:(id)a4;
- (void)unpairStartForDeviceWithID:(id)a3 completion:(id)a4;
- (void)updatePairedDeviceWithID:(id)a3 supportIPsec:(BOOL)a4 completion:(id)a5;
@end

@implementation IDSDXPCPairing

- (IDSDXPCPairing)initWithQueue:(id)a3 idsDaemon:(id)a4 serviceController:(id)a5 pairingManager:(id)a6 quickSwitchHelper:(id)a7 accountController:(id)a8 utunController:(id)a9 utunDeliveryController:(id)a10
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v17 = a9;
  v18 = a10;
  v28.receiver = self;
  v28.super_class = IDSDXPCPairing;
  v19 = [(IDSDXPCPairing *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_queue, a3);
    objc_storeStrong(&v20->_idsDaemon, a4);
    objc_storeStrong(&v20->_serviceController, a5);
    objc_storeStrong(&v20->_pairingManager, a6);
    objc_storeStrong(&v20->_quickSwitchHelper, a7);
    objc_storeStrong(&v20->_accountController, a8);
    objc_storeStrong(&v20->_utunController, a9);
    objc_storeStrong(&v20->_utunDeliveryController, a10);
  }

  return v20;
}

- (void)addPairedDeviceWithInfo:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 cbuuid];
  [(IDSDXPCPairing *)self _addPairedDevice:v8 withInfo:v7 completion:v6];
}

- (void)connectPairedDeviceWithID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(Daemon) connectPairedDevice (cbuuid: %@)", &v11, 0xCu);
  }

  v9 = [(IDSDXPCPairing *)self utunController];
  v10 = [v6 UUIDString];
  [v9 connectPairedDevice:v10];

  v7[2](v7, 0);
}

- (void)setupCompletedForPairedDeviceWithID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(Daemon) setupCompletedForPairedDevice (cbuuid: %@)", &v10, 0xCu);
  }

  v9 = [(IDSDXPCPairing *)self utunDeliveryController];
  [v9 localSetupCompleted];

  v7[2](v7, 0);
}

- (void)getPairingDevicesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(Daemon) getPairingDevices", &v8, 2u);
  }

  v6 = [(IDSDXPCPairing *)self _pairingDeviceCBUUIDs];
  v7 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(Daemon) getPairingDevices yielded CBUUIDs: %@", &v8, 0xCu);
  }

  v4[2](v4, v6, 0);
}

- (void)getPairedDevicesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(Daemon) getPairedDevices", &v8, 2u);
  }

  v6 = [(IDSDXPCPairing *)self _pairedDeviceCBUUIDs];
  v7 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(Daemon) getPairedDevices yielded CBUUIDs: %@", &v8, 0xCu);
  }

  v4[2](v4, v6, 0);
}

- (void)getPairingRecordsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IDSDXPCPairing *)self pairingManager];
  v8 = [v5 localDeviceRecord];

  v6 = [(IDSDXPCPairing *)self pairingManager];
  v7 = [v6 pairedDeviceRecords];

  v4[2](v4, v8, v7, 0);
}

- (void)pairedDevicesInfo:(id)a3
{
  v4 = a3;
  v5 = [(IDSDXPCPairing *)self pairingManager];
  v6 = [v5 allPairedDevices];

  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v6;
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

        v13 = [*(*(&v14 + 1) + 8 * v12) dictionaryRepresentation];
        [v7 addObject:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v4[2](v4, v7, 0);
}

- (void)updatePairedDeviceWithID:(id)a3 supportIPsec:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v33 = v8;
    v10 = [NSArray arrayWithObjects:&v33 count:1];
  }

  else
  {
    v11 = [(IDSDXPCPairing *)self pairingManager];
    v12 = [v11 cbuuidsOfPairedDevices];
    v10 = [v12 allObjects];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v25 = v8;
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
        v19 = [(IDSDXPCPairing *)self pairingManager];
        v20 = [v19 updatePairedDeviceWithCBUUID:v18 supportIPsec:v6];

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
    v8 = v25;
  }

  else
  {
    v21 = 0;
  }

  v9[2](v9, v21);
}

- (void)deletePairedDeviceWithID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(Daemon) deletePairedDeviceWithID (cbuuid: %@)", &v14, 0xCu);
  }

  v9 = [(IDSDXPCPairing *)self utunController];
  v10 = [v6 UUIDString];
  [v9 deletePairedDevice:v10];

  v11 = [(IDSDXPCPairing *)self pairingManager];
  v12 = [v6 UUIDString];
  [v11 removeLocalPairedDevice:v12];

  v13 = +[IDSUTunDeliveryController sharedInstance];
  [v13 stopIdsNRDeviceBridgeAndPreferenceHandler];

  v7[2](v7, 0);
}

- (void)unpairStartForDeviceWithID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(Daemon) deletePairedDeviceWithID (cbuuid: %@)", &v10, 0xCu);
  }

  v9 = [(IDSDXPCPairing *)self utunDeliveryController];
  [v9 defaultPeerUnpairStart];

  v7[2](v7, 0);
}

- (void)stopLocalPairingForDeviceWithID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138477827;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(Daemon) stopLocalPairingForDeviceWithID {cbuuid: %{private}@}", &v15, 0xCu);
  }

  v9 = [(IDSDXPCPairing *)self utunController];
  v10 = [v6 UUIDString];
  [v9 obliterateConnectionInfoForCBUUID:v10];

  v11 = [(IDSDXPCPairing *)self pairingManager];
  v12 = [v6 UUIDString];
  [v11 removeLocalPairedDevice:v12];

  v13 = +[IDSPairingManager sharedInstance];
  LOBYTE(v12) = [v13 isCurrentDevicePairedOrPairing];

  if ((v12 & 1) == 0)
  {
    v14 = [(IDSDXPCPairing *)self accountController];
    [v14 stopLocalSetup];
  }

  v7[2](v7, 0);
}

- (void)unpairDeviceWithID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(Daemon) unpairDevice (cbuuid: %@)", &v21, 0xCu);
  }

  v9 = [(IDSDXPCPairing *)self pairingManager];
  v10 = [v9 cbuuidsOfPairedDevices];
  v11 = [v10 containsObject:v6];

  if (v11)
  {
    v12 = [(IDSDXPCPairing *)self utunController];
    v13 = [v6 UUIDString];
    [v12 obliterateConnectionInfoForCBUUID:v13];

    v14 = [(IDSDXPCPairing *)self pairingManager];
    v15 = [v6 UUIDString];
    [v14 removeLocalPairedDevice:v15];

    v16 = [(IDSDXPCPairing *)self serviceController];
    v17 = [v16 allServicesWithAdHocServiceType:2];

    v18 = [(IDSDXPCPairing *)self idsDaemon];
    [v18 dropQueuedBroadcastsForServices:v17];

    v19 = [(IDSDXPCPairing *)self idsDaemon];
    [v19 _processMessagesUponUnpairing];

    v20 = 0;
  }

  else
  {
    v20 = [NSError errorWithDomain:IDSLocalPairingErrorDomain code:8 userInfo:0];
    v17 = v20;
  }

  v7[2](v7, v20);
}

- (void)forgetDeviceWithID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(Daemon) forgetDevice (cbuuid: %@)", &v11, 0xCu);
  }

  v9 = [(IDSDXPCPairing *)self pairingManager];
  v10 = [v6 UUIDString];
  [v9 removeLocalPairedDevice:v10];

  v7[2](v7, 0);
}

- (void)switchActivePairedDeviceWithID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(Daemon) switchActivePairedDevice (cbuuid: %@)", &v11, 0xCu);
  }

  v9 = [(IDSDXPCPairing *)self quickSwitchHelper];
  v10 = [v6 UUIDString];
  [v9 initiateQuickSwitchToDeviceWithCBUUID:v10 force:0 completionBlock:v7];
}

- (void)disconnectActivePairedDevice:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(Daemon) switchToNoActivePairedDevice", v12, 2u);
  }

  v6 = [(IDSDXPCPairing *)self utunController];
  v7 = [(IDSDXPCPairing *)self pairingManager];
  v8 = [v7 pairedDeviceUUIDString];
  [v6 obliterateConnectionInfoForCBUUID:v8];

  v9 = [(IDSDXPCPairing *)self pairingManager];
  [v9 disconnectActivePairedDevice];

  v10 = [(IDSDXPCPairing *)self idsDaemon];
  v11 = [v10 broadcasterWithMessageContext:0];

  [v11 deactivatePairedDevices];
  v4[2](v4, 0);
}

- (void)redeliverMessagesForDevice:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(Daemon) redeliverMessagesForDevice (device ID: %@)", &v13, 0xCu);
  }

  v9 = +[IDSPairingManager sharedInstance];
  v10 = [v9 pairedDeviceUniqueID];

  if ([v6 isEqualToString:v10])
  {
    v11 = [(IDSDXPCPairing *)self idsDaemon];
    [v11 launchOnDemandServicesForQueuedBroadcastAttempts];

    v12 = [(IDSDXPCPairing *)self idsDaemon];
    [v12 _processStoredMessagesIncludingClassD:1];
  }

  v7[2](v7, 0);
}

- (void)setAllowedTrafficClassifiersForDevice:(id)a3 classifiers:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "(Daemon) setAllowedTrafficClassifiersForDevice (device ID: %@)   (classifiers: %@)", &v13, 0x16u);
  }

  v12 = [(IDSDXPCPairing *)self utunDeliveryController];
  [v12 setAllowedTrafficClasses:v9];

  v10[2](v10, 0);
}

- (void)dropAllMessagesWithoutAnyAllowedClassifierForDevice:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(Daemon) dropAllMessagesWithoutAnyAllowedClassifierForDevice (device ID: %@)", buf, 0xCu);
  }

  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "(Daemon) dropAllMessagesWithoutAnyAllowedClassifierForDevice (device ID: %@)", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v12 = v6;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v12 = v6;
        _IDSLogV();
      }
    }
  }

  v10 = [(IDSDXPCPairing *)self utunDeliveryController];
  [v10 defaultPeerDropDisallowedMessages];

  v11 = [(IDSDXPCPairing *)self idsDaemon];
  [v11 _processDisallowedMessages];

  v7[2](v7, 0);
}

- (id)_pairingDeviceCBUUIDs
{
  v3 = +[IDSPairingManager sharedInstance];
  v4 = [v3 cbuuidsOfPairingDevices];

  v5 = [(IDSDXPCPairing *)self _sortedArrayFromCBUUIDSet:v4];

  return v5;
}

- (id)_pairedDeviceCBUUIDs
{
  v3 = +[IDSPairingManager sharedInstance];
  v4 = [v3 cbuuidsOfPairedDevices];

  v5 = [(IDSDXPCPairing *)self _sortedArrayFromCBUUIDSet:v4];

  return v5;
}

- (id)_sortedArrayFromCBUUIDSet:(id)a3
{
  v3 = [a3 allObjects];
  v4 = [v3 sortedArrayUsingComparator:&stru_100BE52D0];

  return v4;
}

- (void)_updatePairedDevice:(id)a3 pairingType:(int64_t)a4 completion:(id)a5
{
  v11 = a5;
  v8 = [a3 UUIDString];
  if ([v8 length])
  {
    v9 = [(IDSDXPCPairing *)self pairingManager];
    [v9 updateLocalPairedDevice:v8 pairingType:a4];

    if (v11)
    {
      v11[2](v11, 0);
    }
  }

  else
  {
    v10 = [NSError errorWithDomain:IDSLocalPairingErrorDomain code:6 userInfo:0];
    (v11)[2](v11, v10);
  }
}

- (void)_addPairedDevice:(id)a3 withInfo:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v34 = [v9 BTOutOfBandKey];
  v11 = [v9 shouldPairDirectlyOverIPsec];
  if (+[IMUserDefaults isAlwaysPairAsTinker])
  {
    v12 = 1;
  }

  else
  {
    v12 = [v9 pairingType];
  }

  v33 = [v9 bluetoothMACAddress];
  v13 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [IDSLogFormatter descriptionForData:v34 options:2];
    if (v11)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v16 = [IDSLogFormatter descriptionForData:v33 options:2];
    *buf = 138478851;
    v46 = v8;
    v47 = 2113;
    v48 = v14;
    v49 = 2114;
    v50 = v15;
    v51 = 2050;
    v52 = v12;
    v53 = 2113;
    v54 = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "(Daemon) _addPairedDevice:BTOutOfBandKey:completion: (cbuuid: %{private}@, btOutOfBandKey.hash: %{private}@, shouldPairDirectlyOverIPsec: %{public}@, pairingType: %{public}ld, bluetoothMACAddress.hash: %{private}@)", buf, 0x34u);
  }

  v17 = [(__CFString *)v8 UUIDString];
  v18 = [(IDSDXPCPairing *)self pairingManager];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1006BDF8C;
  v43[3] = &unk_100BDA9F0;
  v19 = v10;
  v44 = v19;
  [v18 registerPairedDeviceWithUniqueID:v8 didConnectBlock:v43];

  if ([v17 length])
  {
    if (v11)
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
    v24 = v17;
    v36 = v24;
    v37 = v34;
    v41 = v12;
    v38 = v33;
    v25 = v8;
    v39 = v25;
    v26 = objc_retainBlock(v35);
    v27 = [(IDSDXPCPairing *)self pairingManager];
    v28 = [v27 pairedDeviceUUIDString];

    if (v28 && ([(__CFString *)v28 isEqualToIgnoringCase:v24]& 1) != 0)
    {
      v29 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138478083;
        v46 = v28;
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

      v31 = [(IDSDXPCPairing *)self quickSwitchHelper];
      [v31 resetCommunicationStateBeforeQuickSwitchWithCompletionBlock:v26];
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