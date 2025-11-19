@interface IDSPairedDeviceRepository
- (BOOL)_addPairedDevice:(id)a3;
- (BOOL)_criticalPerformTransactionWithBlock:(id)a3;
- (BOOL)_criticalPersistState;
- (BOOL)_criticalPurgeSecuredEncryptionKeysForAllPairedDevices;
- (BOOL)_criticalRemovePairedDeviceWithCBUUID:(id)a3;
- (BOOL)_criticalUpdatePairedDeviceWithCBUUID:(id)a3 deviceInfoPayload:(id)a4;
- (BOOL)_criticalUpdatePairedDeviceWithCBUUID:(id)a3 deviceUniqueID:(id)a4 buildVersion:(id)a5 productVersion:(id)a6 productName:(id)a7 pairingProtocolVersion:(unsigned int)a8 minCompatibilityVersion:(unsigned int)a9 maxCompatibilityVersion:(unsigned int)a10 serviceMinCompatibilityVersion:(unsigned __int16)a11;
- (BOOL)_criticalUpdatePairedDeviceWithCBUUID:(id)a3 iCloudURIs:(id)a4 pushToken:(id)a5;
- (BOOL)_criticalUpdatePairedDeviceWithCBUUID:(id)a3 pairingType:(int64_t)a4;
- (BOOL)_criticalUpdatePairedDeviceWithCBUUID:(id)a3 supportIPsec:(BOOL)a4;
- (BOOL)_performTransactionInCriticalSectionWithBlock:(id)a3;
- (BOOL)addPairedDeviceWithCBUUID:(id)a3 pairingType:(int64_t)a4;
- (BOOL)containsPairedDeviceWithCBUUID:(id)a3;
- (BOOL)isEmpty;
- (BOOL)loadPairedDevicesFromStorage;
- (BOOL)purgeSecuredEncryptionKeysForAllPairedDevices;
- (BOOL)removePairedDeviceWithCBUUID:(id)a3;
- (BOOL)shouldUseIPsecLinkForDefaultPairedDevice;
- (BOOL)updatePairedDeviceWithCBUUID:(id)a3 deviceInfoPayload:(id)a4;
- (BOOL)updatePairedDeviceWithCBUUID:(id)a3 deviceUniqueID:(id)a4 buildVersion:(id)a5 productVersion:(id)a6 productName:(id)a7 pairingProtocolVersion:(unsigned int)a8 minCompatibilityVersion:(unsigned int)a9 maxCompatibilityVersion:(unsigned int)a10 serviceMinCompatibilityVersion:(unsigned __int16)a11;
- (BOOL)updatePairedDeviceWithCBUUID:(id)a3 iCloudURIs:(id)a4 pushToken:(id)a5;
- (BOOL)updatePairedDeviceWithCBUUID:(id)a3 pairingType:(int64_t)a4;
- (BOOL)updatePairedDeviceWithCBUUID:(id)a3 supportIPsec:(BOOL)a4;
- (IDSPairedDeviceRepository)initWithPersister:(id)a3;
- (id)_criticalActivePairedDevice;
- (id)_criticalAllPairedDevices;
- (id)_criticalPairedDeviceWithCBUUID:(id)a3;
- (id)activePairedDevice;
- (id)allPairedDevices;
- (id)allPairedDevicesWithType:(int64_t)a3;
- (id)description;
- (id)pairedDeviceWithCBUUID:(id)a3;
- (id)pairedDevicesWithIsPairingValue:(BOOL)a3;
- (int64_t)_criticalActivatePairedDeviceWithCBUUID:(id)a3;
- (int64_t)_criticalPerformPairedDeviceActivationWithCBUUID:(id)a3;
- (int64_t)activatePairedDeviceWithCBUUID:(id)a3;
- (void)_accessPairedDevicesInCriticalSectionWithBlock:(id)a3;
- (void)_criticalLoadPairedDeviceArray:(id)a3;
- (void)_criticalPerformPairedDeviceDeactivation;
- (void)_criticalPutPairedDevice:(id)a3;
- (void)_criticalUpdatePairedDevice:(id)a3 isActive:(BOOL)a4;
- (void)deactivatePairedDevices;
@end

@implementation IDSPairedDeviceRepository

- (id)activePairedDevice
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10000AAF4;
  v9 = sub_10000BCEC;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000041E4;
  v4[3] = &unk_100BD9060;
  v4[4] = self;
  v4[5] = &v5;
  [(IDSPairedDeviceRepository *)self _accessPairedDevicesInCriticalSectionWithBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)_criticalActivePairedDevice
{
  v3 = objc_autoreleasePoolPush();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSMutableDictionary *)self->_pairedDevices allValues];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 isActive])
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)_criticalAllPairedDevices
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(NSMutableDictionary *)self->_pairedDevices allValues];
  v5 = [NSSet setWithArray:v4];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)allPairedDevices
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10000AAF4;
  v9 = sub_10000BCEC;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000A77C;
  v4[3] = &unk_100BD9060;
  v4[4] = self;
  v4[5] = &v5;
  [(IDSPairedDeviceRepository *)self _accessPairedDevicesInCriticalSectionWithBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (BOOL)shouldUseIPsecLinkForDefaultPairedDevice
{
  v2 = [(IDSPairedDeviceRepository *)self activePairedDevice];
  v3 = [v2 supportIPsec];

  return v3;
}

- (IDSPairedDeviceRepository)initWithPersister:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = IDSPairedDeviceRepository;
  v6 = [(IDSPairedDeviceRepository *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_pairedDevicesLock._os_unfair_lock_opaque = 0;
    v8 = objc_alloc_init(NSMutableDictionary);
    pairedDevices = v7->_pairedDevices;
    v7->_pairedDevices = v8;

    objc_storeStrong(&v7->_persister, a3);
  }

  return v7;
}

- (id)description
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10000AAF4;
  v9 = sub_10000BCEC;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006B2B98;
  v4[3] = &unk_100BD9060;
  v4[4] = self;
  v4[5] = &v5;
  [(IDSPairedDeviceRepository *)self _accessPairedDevicesInCriticalSectionWithBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (BOOL)loadPairedDevicesFromStorage
{
  [(IDSPairedDevicePersister *)self->_persister loadPairedDevices];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006B2CD8;
  v5[3] = &unk_100BD6E40;
  v6 = v5[4] = self;
  v3 = v6;
  [(IDSPairedDeviceRepository *)self _accessPairedDevicesInCriticalSectionWithBlock:v5];

  return v3 != 0;
}

- (void)_criticalLoadPairedDeviceArray:(id)a3
{
  v4 = a3;
  [(NSMutableDictionary *)self->_pairedDevices removeAllObjects];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v16;
    *&v7 = 138412290;
    v14 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 cbuuid];
        if ([v12 length])
        {
          [(NSMutableDictionary *)self->_pairedDevices setObject:v11 forKeyedSubscript:v12];
        }

        else
        {
          v13 = +[IMRGLog pairedDeviceRepo];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            *buf = v14;
            v20 = v11;
            _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Loaded a paired device from storage with an empty/missing CBUUID: %@", buf, 0xCu);
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v8);
  }
}

- (BOOL)containsPairedDeviceWithCBUUID:(id)a3
{
  v3 = [(IDSPairedDeviceRepository *)self pairedDeviceWithCBUUID:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)pairedDeviceWithCBUUID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_10000AAF4;
    v17 = sub_10000BCEC;
    v18 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1006B3078;
    v10[3] = &unk_100BDA688;
    v12 = &v13;
    v10[4] = self;
    v11 = v4;
    [(IDSPairedDeviceRepository *)self _accessPairedDevicesInCriticalSectionWithBlock:v10];
    v5 = v14[5];
    if (!v5)
    {
      v6 = +[IMRGLog pairedDeviceRepo];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1009313A4();
      }

      v5 = v14[5];
    }

    v7 = v5;

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = +[IMRGLog pairedDeviceRepo];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10093140C();
    }

    v7 = 0;
  }

  return v7;
}

- (id)_criticalPairedDeviceWithCBUUID:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToIgnoringCase:kIDSDefaultPairedDeviceID])
  {
    [(IDSPairedDeviceRepository *)self _criticalActivePairedDevice];
  }

  else
  {
    [(NSMutableDictionary *)self->_pairedDevices objectForKeyedSubscript:v4];
  }
  v5 = ;

  return v5;
}

- (BOOL)addPairedDeviceWithCBUUID:(id)a3 pairingType:(int64_t)a4
{
  v6 = a3;
  v7 = +[IMRGLog pairedDeviceRepo];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Adding a paired device to the repository with CBUUID: %@", &v11, 0xCu);
  }

  v8 = [[IDSPairedDevice alloc] initWithCBUUID:v6 pairingType:a4];
  v9 = [(IDSPairedDeviceRepository *)self _addPairedDevice:v8];

  return v9;
}

- (BOOL)_addPairedDevice:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006B32D4;
  v6[3] = &unk_100BE43D0;
  v7 = a3;
  v8 = self;
  v4 = v7;
  LOBYTE(self) = [(IDSPairedDeviceRepository *)self _performTransactionInCriticalSectionWithBlock:v6];

  return self;
}

- (void)_criticalPutPairedDevice:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog deviceState];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 cbuuid];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Putting paired device %@", &v9, 0xCu);
  }

  v7 = [v4 cbuuid];
  if ([v7 length])
  {
    [(NSMutableDictionary *)self->_pairedDevices setObject:v4 forKeyedSubscript:v7];
  }

  else
  {
    v8 = +[IMRGLog pairedDeviceRepo];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1009314B4();
    }
  }
}

- (BOOL)removePairedDeviceWithCBUUID:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog pairedDeviceRepo];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing a paired device from the repository with CBUUID: %@", buf, 0xCu);
  }

  if ([v4 length])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1006B3624;
    v9[3] = &unk_100BE43D0;
    v9[4] = self;
    v10 = v4;
    v6 = [(IDSPairedDeviceRepository *)self _performTransactionInCriticalSectionWithBlock:v9];
  }

  else
  {
    v7 = +[IMRGLog pairedDeviceRepo];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1009314E8();
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)_criticalRemovePairedDeviceWithCBUUID:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_pairedDevices allKeys];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    [(NSMutableDictionary *)self->_pairedDevices removeObjectForKey:v4];
    v7 = [(IDSPairedDeviceRepository *)self _criticalPersistState];
  }

  else
  {
    v8 = +[IMRGLog pairedDeviceRepo];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10093151C();
    }

    v7 = 1;
  }

  return v7;
}

- (id)allPairedDevicesWithType:(int64_t)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_10000AAF4;
  v14 = sub_10000BCEC;
  v15 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1006B386C;
  v9[3] = &unk_100BD9060;
  v9[4] = self;
  v9[5] = &v10;
  [(IDSPairedDeviceRepository *)self _accessPairedDevicesInCriticalSectionWithBlock:v9];
  v4 = v11[5];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1006B38B8;
  v8[3] = &unk_100BE43F0;
  v8[4] = a3;
  v5 = [NSPredicate predicateWithBlock:v8];
  v6 = [v4 filteredSetUsingPredicate:v5];

  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)pairedDevicesWithIsPairingValue:(BOOL)a3
{
  v3 = a3;
  v4 = [(IDSPairedDeviceRepository *)self allPairedDevices];
  v5 = objc_alloc_init(NSMutableSet);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 isPairing] == v3)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)isEmpty
{
  v2 = [(IDSPairedDeviceRepository *)self allPairedDevices];
  v3 = [v2 count] == 0;

  return v3;
}

- (int64_t)activatePairedDeviceWithCBUUID:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog pairedDeviceRepo];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Activating paired device with CBUUID: %@", &buf, 0xCu);
  }

  if (v4)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v12 = 0x2020000000;
    v13 = 0xAAAAAAAAAAAAAAAALL;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1006B3BF0;
    v8[3] = &unk_100BE4418;
    p_buf = &buf;
    v8[4] = self;
    v9 = v4;
    [(IDSPairedDeviceRepository *)self _performTransactionInCriticalSectionWithBlock:v8];
    v6 = *(*(&buf + 1) + 24);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v6 = 2;
  }

  return v6;
}

- (void)deactivatePairedDevices
{
  v3 = +[IMRGLog pairedDeviceRepo];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deactivating paired devices", buf, 2u);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006B3D04;
  v4[3] = &unk_100BE4440;
  v4[4] = self;
  [(IDSPairedDeviceRepository *)self _performTransactionInCriticalSectionWithBlock:v4];
}

- (int64_t)_criticalActivatePairedDeviceWithCBUUID:(id)a3
{
  v4 = a3;
  [(IDSPairedDeviceRepository *)self _criticalPerformPairedDeviceDeactivation];
  v5 = [(IDSPairedDeviceRepository *)self _criticalPerformPairedDeviceActivationWithCBUUID:v4];

  if (!v5)
  {
    if ([(IDSPairedDeviceRepository *)self _criticalPersistState])
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  return v5;
}

- (void)_criticalPerformPairedDeviceDeactivation
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(NSMutableDictionary *)self->_pairedDevices allValues];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isActive])
        {
          v9 = +[IMRGLog pairedDeviceRepo];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = [v8 cbuuid];
            *buf = 136315394;
            v16 = "[IDSPairedDeviceRepository _criticalPerformPairedDeviceDeactivation]";
            v17 = 2112;
            v18 = v10;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Deactivating paired device with CBUUID: %@", buf, 0x16u);
          }

          [(IDSPairedDeviceRepository *)self _criticalUpdatePairedDevice:v8 isActive:0];
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (int64_t)_criticalPerformPairedDeviceActivationWithCBUUID:(id)a3
{
  v4 = a3;
  v5 = [(IDSPairedDeviceRepository *)self _criticalPairedDeviceWithCBUUID:v4];
  if (v5)
  {
    [(IDSPairedDeviceRepository *)self _criticalUpdatePairedDevice:v5 isActive:1];
    v6 = 0;
  }

  else
  {
    v7 = +[IMRGLog pairedDeviceRepo];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[IDSPairedDeviceRepository _criticalPerformPairedDeviceActivationWithCBUUID:]";
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Cannot activate an unknown paired device. CBUUID: %@", &v9, 0x16u);
    }

    v6 = 2;
  }

  return v6;
}

- (void)_criticalUpdatePairedDevice:(id)a3 isActive:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[IDSPairedDevice alloc] initWithPairedDevice:v6 isActive:v4];

  [(IDSPairedDeviceRepository *)self _criticalPutPairedDevice:v7];
}

- (BOOL)purgeSecuredEncryptionKeysForAllPairedDevices
{
  v3 = +[IMRGLog pairedDeviceRepo];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Purging the secured encryption keys for all paired devices.", buf, 2u);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006B4198;
  v5[3] = &unk_100BE4440;
  v5[4] = self;
  return [(IDSPairedDeviceRepository *)self _performTransactionInCriticalSectionWithBlock:v5];
}

- (BOOL)_criticalPurgeSecuredEncryptionKeysForAllPairedDevices
{
  v3 = [(NSMutableDictionary *)self->_pairedDevices allValues];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * v7) pairedDeviceWithoutSecuredEncryptionKeys];
        [(IDSPairedDeviceRepository *)self _criticalPutPairedDevice:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [(IDSPairedDeviceRepository *)self _criticalPersistState];

  return v9;
}

- (BOOL)updatePairedDeviceWithCBUUID:(id)a3 deviceInfoPayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IMRGLog pairedDeviceRepo];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating a paired device in the repository with CBUUID: %@ with deviceInfoPayload: %@", buf, 0x16u);
  }

  if ([v6 length])
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1006B4464;
    v12[3] = &unk_100BE4468;
    v12[4] = self;
    v13 = v6;
    v14 = v7;
    v9 = [(IDSPairedDeviceRepository *)self _performTransactionInCriticalSectionWithBlock:v12];
  }

  else
  {
    v10 = +[IMRGLog pairedDeviceRepo];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1009315A4();
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)_criticalUpdatePairedDeviceWithCBUUID:(id)a3 deviceInfoPayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSPairedDeviceRepository *)self _criticalPairedDeviceWithCBUUID:v6];
  if (v8)
  {
    v9 = [[IDSPairedDevice alloc] initWithPairedDevice:v8 deviceInfoPayload:v7];
    [(IDSPairedDeviceRepository *)self _criticalPutPairedDevice:v9];
    v10 = [(IDSPairedDeviceRepository *)self _criticalPersistState];
  }

  else
  {
    v11 = +[IMRGLog pairedDeviceRepo];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1009315D8();
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)updatePairedDeviceWithCBUUID:(id)a3 supportIPsec:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[IMRGLog pairedDeviceRepo];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [NSNumber numberWithBool:v4];
    *buf = 138478083;
    v16 = v6;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating a paired device supportIPsec property {cbuuid: %{private}@, supportIPsec: %{public}@}", buf, 0x16u);
  }

  if ([v6 length])
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1006B46F8;
    v12[3] = &unk_100BE4490;
    v12[4] = self;
    v13 = v6;
    v14 = v4;
    v9 = [(IDSPairedDeviceRepository *)self _performTransactionInCriticalSectionWithBlock:v12];
  }

  else
  {
    v10 = +[IMRGLog pairedDeviceRepo];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_10093164C();
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)_criticalUpdatePairedDeviceWithCBUUID:(id)a3 supportIPsec:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(IDSPairedDeviceRepository *)self _criticalPairedDeviceWithCBUUID:v6];
  v8 = v7;
  if (v7)
  {
    if ([v7 supportIPsec] == v4)
    {
      LOBYTE(v10) = 1;
      goto LABEL_18;
    }

    v9 = [[IDSPairedDevice alloc] initWithPairedDevice:v8 supportIPsec:v4];
    [(IDSPairedDeviceRepository *)self _criticalPutPairedDevice:v9];
    v10 = [(IDSPairedDeviceRepository *)self _criticalPersistState];
    if (v10)
    {
      v11 = +[IMRGLog pairedDeviceRepo];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        if ([v8 supportIPsec])
        {
          v12 = @"YES";
        }

        else
        {
          v12 = @"NO";
        }

        if ([(IDSPairedDevice *)v9 supportIPsec])
        {
          v13 = @"YES";
        }

        else
        {
          v13 = @"NO";
        }

        v15 = 138412546;
        v16 = v12;
        v17 = 2112;
        v18 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updated paired device support IPsec {supportIPsec.old: %@, supportIPsec.new: %@}", &v15, 0x16u);
      }
    }
  }

  else
  {
    v9 = +[IMRGLog pairedDeviceRepo];
    if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_ERROR))
    {
      sub_100931680();
    }

    LOBYTE(v10) = 0;
  }

LABEL_18:
  return v10;
}

- (BOOL)updatePairedDeviceWithCBUUID:(id)a3 deviceUniqueID:(id)a4 buildVersion:(id)a5 productVersion:(id)a6 productName:(id)a7 pairingProtocolVersion:(unsigned int)a8 minCompatibilityVersion:(unsigned int)a9 maxCompatibilityVersion:(unsigned int)a10 serviceMinCompatibilityVersion:(unsigned __int16)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = +[IMRGLog pairedDeviceRepo];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138414338;
    v37 = v16;
    v38 = 2112;
    v39 = v17;
    v40 = 2112;
    v41 = v18;
    v42 = 2112;
    v43 = v19;
    v44 = 2112;
    v45 = v20;
    v46 = 1024;
    v47 = a8;
    v48 = 1024;
    v49 = a9;
    v50 = 1024;
    v51 = a10;
    v52 = 1024;
    v53 = a11;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Updating a paired device with CBUUID: %@ to (deviceUniqueID: %@) (buildVersion: %@) (productVersion: %@) (productName: %@) (pairingProtocolVersion: %u) (minCompatibilityVersion: %u) (maxCompatibilityVersion: %u) (serviceMinCompatibilityVersion: %u)", buf, 0x4Cu);
  }

  if ([v16 length])
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1006B4B3C;
    v26[3] = &unk_100BE44B8;
    v26[4] = self;
    v27 = v16;
    v28 = v17;
    v29 = v18;
    v30 = v19;
    v31 = v20;
    v32 = a8;
    v33 = a9;
    v34 = a10;
    v35 = a11;
    v22 = [(IDSPairedDeviceRepository *)self _performTransactionInCriticalSectionWithBlock:v26];
  }

  else
  {
    v23 = +[IMRGLog pairedDeviceRepo];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      sub_1009316E8();
    }

    v22 = 0;
  }

  return v22;
}

- (BOOL)_criticalUpdatePairedDeviceWithCBUUID:(id)a3 deviceUniqueID:(id)a4 buildVersion:(id)a5 productVersion:(id)a6 productName:(id)a7 pairingProtocolVersion:(unsigned int)a8 minCompatibilityVersion:(unsigned int)a9 maxCompatibilityVersion:(unsigned int)a10 serviceMinCompatibilityVersion:(unsigned __int16)a11
{
  v11 = *&a8;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = [(IDSPairedDeviceRepository *)self _criticalPairedDeviceWithCBUUID:v17];
  v23 = v22;
  v65 = v21;
  if (v22)
  {
    v56 = self;
    v24 = [v22 privateData];
    key = IDSPrivateDeviceDataProductBuildVersion;
    v25 = [v24 objectForKeyedSubscript:?];
    v53 = IDSPrivateDeviceDataProductVersion;
    v64 = [v24 objectForKeyedSubscript:?];
    v54 = IDSPrivateDeviceDataProductName;
    v63 = [v24 objectForKeyedSubscript:?];
    v62 = [v23 uniqueID];
    v59 = v25;
    if ([v19 length])
    {
      v26 = [v25 isEqualToIgnoringCase:v19] ^ 1;
    }

    else
    {
      v26 = 0;
    }

    v28 = v19;
    value = v20;
    if ([v20 length])
    {
      v29 = [v64 isEqualToIgnoringCase:v20] ^ 1;
    }

    else
    {
      v29 = 0;
    }

    v30 = v18;
    if ([v21 length])
    {
      v31 = [v63 isEqualToIgnoringCase:v21] ^ 1;
    }

    else
    {
      v31 = 0;
    }

    v58 = v17;
    if ([v30 length])
    {
      v55 = [v62 isEqualToIgnoringCase:v30] ^ 1;
    }

    else
    {
      v55 = 0;
    }

    v32 = [v23 pairingProtocolVersion];
    v33 = [v23 minCompatibilityVersion];
    v60 = [v23 maxCompatibilityVersion];
    v34 = [v23 serviceMinCompatibilityVersion];
    if (((v26 | v29 | v31) & 1) == 0 && v32 == v11 && v33 == a9 && v60 == a10 && v34 == a11)
    {
      v27 = 1;
      v18 = v30;
      v19 = v28;
      v20 = value;
      v17 = v58;
      v35 = v59;
    }

    else
    {
      v51 = v34;
      theDict = [v24 mutableCopy];
      if (!theDict)
      {
        theDict = objc_alloc_init(NSMutableDictionary);
      }

      if (v26)
      {
        v36 = +[IMRGLog pairedDeviceRepo];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v67 = v59;
          *&v67[8] = 2112;
          v68 = v28;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Updated paired device build version from: %@ to: %@", buf, 0x16u);
        }

        if (v28)
        {
          CFDictionarySetValue(theDict, key, v28);
        }
      }

      if (v29)
      {
        v37 = +[IMRGLog pairedDeviceRepo];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v67 = v64;
          *&v67[8] = 2112;
          v68 = value;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Updated paired device product version from: %@ to: %@", buf, 0x16u);
        }

        if (value)
        {
          CFDictionarySetValue(theDict, v53, value);
        }
      }

      v19 = v28;
      v35 = v59;
      if (v31)
      {
        v38 = +[IMRGLog pairedDeviceRepo];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v67 = v63;
          *&v67[8] = 2112;
          v68 = v65;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Updated paired device product name from: %@ to: %@", buf, 0x16u);
        }

        if (v65)
        {
          CFDictionarySetValue(theDict, v54, v65);
        }
      }

      v18 = v30;
      v20 = value;
      if (v55)
      {
        v39 = +[IMRGLog pairedDeviceRepo];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v67 = v62;
          *&v67[8] = 2112;
          v68 = v18;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Updated paired device uniqueID from: %@ to: %@", buf, 0x16u);
        }
      }

      if (v32 != v11)
      {
        v40 = +[IMRGLog pairedDeviceRepo];
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = [v23 pairingProtocolVersion];
          *buf = 67109376;
          *v67 = v41;
          *&v67[4] = 1024;
          *&v67[6] = v11;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Updated paired device pairing protocol from: %u to: %u", buf, 0xEu);
        }
      }

      v42 = v33 == a9;
      v17 = v58;
      if (!v42)
      {
        v43 = +[IMRGLog pairedDeviceRepo];
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = [v23 minCompatibilityVersion];
          *buf = 67109376;
          *v67 = v44;
          *&v67[4] = 1024;
          *&v67[6] = a9;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Updated paired device min compatibility version from: %u to: %u", buf, 0xEu);
        }
      }

      if (v60 != a10)
      {
        v45 = +[IMRGLog pairedDeviceRepo];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = [v23 maxCompatibilityVersion];
          *buf = 67109376;
          *v67 = v46;
          *&v67[4] = 1024;
          *&v67[6] = a10;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Updated paired device max compatibility version from: %u to: %u", buf, 0xEu);
        }
      }

      if (v51 != a11)
      {
        v47 = +[IMRGLog pairedDeviceRepo];
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = [v23 serviceMinCompatibilityVersion];
          *buf = 67109376;
          *v67 = v48;
          *&v67[4] = 1024;
          *&v67[6] = a11;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Updated paired device service min compatibility version from: %u to: %u", buf, 0xEu);
        }
      }

      v49 = [[IDSPairedDevice alloc] initWithPairedDevice:v23 deviceUniqueID:v18 pairingProtocolVersion:v11 minCompatibilityVersion:a9 maxCompatibilityVersion:a10 serviceMinCompatibilityVersion:a11 privateData:theDict];
      [(IDSPairedDeviceRepository *)v56 _criticalPutPairedDevice:v49];
      v27 = [(IDSPairedDeviceRepository *)v56 _criticalPersistState];
    }
  }

  else
  {
    v24 = +[IMRGLog pairedDeviceRepo];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      sub_10093171C();
    }

    v27 = 0;
  }

  return v27;
}

- (BOOL)updatePairedDeviceWithCBUUID:(id)a3 pairingType:(int64_t)a4
{
  v6 = a3;
  v7 = +[IMRGLog pairedDeviceRepo];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    v15 = v6;
    v16 = 2050;
    v17 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating a paired device pairingType property {cbuuid: %{private}@, pairingType: %{public}ld}", buf, 0x16u);
  }

  if ([v6 length])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1006B548C;
    v11[3] = &unk_100BE44E0;
    v11[4] = self;
    v12 = v6;
    v13 = a4;
    v8 = [(IDSPairedDeviceRepository *)self _performTransactionInCriticalSectionWithBlock:v11];
  }

  else
  {
    v9 = +[IMRGLog pairedDeviceRepo];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_10093164C();
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)_criticalUpdatePairedDeviceWithCBUUID:(id)a3 pairingType:(int64_t)a4
{
  v6 = a3;
  v7 = [(IDSPairedDeviceRepository *)self _criticalPairedDeviceWithCBUUID:v6];
  v8 = v7;
  if (!v7)
  {
    v10 = +[IMRGLog pairedDeviceRepo];
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
    {
      sub_100931790();
    }

    LOBYTE(v9) = 0;
    goto LABEL_11;
  }

  if ([v7 pairingType] != a4)
  {
    v10 = [[IDSPairedDevice alloc] initWithPairedDevice:v8 pairingType:a4];
    [(IDSPairedDeviceRepository *)self _criticalPutPairedDevice:v10];
    v9 = [(IDSPairedDeviceRepository *)self _criticalPersistState];
    if (v9)
    {
      v11 = +[IMRGLog pairedDeviceRepo];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134218240;
        v14 = [v8 pairingType];
        v15 = 2048;
        v16 = [(IDSPairedDevice *)v10 pairingType];
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updated paired device support pairingType {pairingType.old: %ld, pairingType.new: %ld}", &v13, 0x16u);
      }
    }

LABEL_11:

    goto LABEL_12;
  }

  LOBYTE(v9) = 1;
LABEL_12:

  return v9;
}

- (BOOL)updatePairedDeviceWithCBUUID:(id)a3 iCloudURIs:(id)a4 pushToken:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IMRGLog pairedDeviceRepo];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478339;
    v20 = v8;
    v21 = 2114;
    v22 = v9;
    v23 = 2114;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updating a paired device uris, loginID and pushToken properties {cbuuid: %{private}@, uris: %{public}@, pushToken: %{public}@}", buf, 0x20u);
  }

  if ([v8 length])
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1006B57FC;
    v15[3] = &unk_100BE4508;
    v15[4] = self;
    v16 = v8;
    v17 = v9;
    v18 = v10;
    v12 = [(IDSPairedDeviceRepository *)self _performTransactionInCriticalSectionWithBlock:v15];
  }

  else
  {
    v13 = +[IMRGLog pairedDeviceRepo];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_10093164C();
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)_criticalUpdatePairedDeviceWithCBUUID:(id)a3 iCloudURIs:(id)a4 pushToken:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IDSPairedDeviceRepository *)self _criticalPairedDeviceWithCBUUID:v8];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 iCloudURIs];
    v14 = [NSSet setWithArray:v9];
    v15 = [NSSet setWithArray:v13];
    if ([v15 isEqualToSet:v14] && (objc_msgSend(v12, "pushToken"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToData:", v10), v16, (v17 & 1) != 0))
    {
      LOBYTE(v18) = 1;
    }

    else
    {
      v19 = [[IDSPairedDevice alloc] initWithPairedDevice:v12 iCloudURIs:v9 pushToken:v10];
      [(IDSPairedDeviceRepository *)self _criticalPutPairedDevice:v19];
      v18 = [(IDSPairedDeviceRepository *)self _criticalPersistState];
      if (v18)
      {
        v20 = +[IMRGLog pairedDeviceRepo];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [(IDSPairedDevice *)v19 iCloudURIs];
          v23 = [v12 pushToken];
          v22 = [(IDSPairedDevice *)v19 pushToken];
          *buf = 138413058;
          v26 = v13;
          v27 = 2112;
          v28 = v24;
          v29 = 2112;
          v30 = v23;
          v31 = 2112;
          v32 = v22;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Updated paired device support uris and pushToken {uris.old: %@, uris.new: %@, pushToken.old: %@, pushToken.new: %@}", buf, 0x2Au);
        }
      }
    }
  }

  else
  {
    v13 = +[IMRGLog pairedDeviceRepo];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1009317F8();
    }

    LOBYTE(v18) = 0;
  }

  return v18;
}

- (BOOL)_performTransactionInCriticalSectionWithBlock:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = -86;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006B5B6C;
  v6[3] = &unk_100BE4530;
  v9 = &v10;
  v7 = self;
  v3 = a3;
  v8 = v3;
  [(IDSPairedDeviceRepository *)v7 _accessPairedDevicesInCriticalSectionWithBlock:v6];
  v4 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v4;
}

- (BOOL)_criticalPerformTransactionWithBlock:(id)a3
{
  p_pairedDevices = &self->_pairedDevices;
  pairedDevices = self->_pairedDevices;
  v5 = a3;
  v6 = [(NSMutableDictionary *)pairedDevices mutableCopy];
  v7 = v5[2](v5);

  if ((v7 & 1) == 0)
  {
    objc_storeStrong(p_pairedDevices, v6);
  }

  return v7;
}

- (BOOL)_criticalPersistState
{
  v2 = self;
  v3 = [(NSMutableDictionary *)self->_pairedDevices allValues];
  LOBYTE(v2) = [(IDSPairedDevicePersister *)v2->_persister savePairedDevices:v3];

  return v2;
}

- (void)_accessPairedDevicesInCriticalSectionWithBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_pairedDevicesLock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_pairedDevicesLock);
}

@end