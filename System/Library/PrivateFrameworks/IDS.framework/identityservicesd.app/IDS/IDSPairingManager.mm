@interface IDSPairingManager
+ (IDSPairingManager)sharedInstance;
+ (void)devicePairingProtocolVersion:(unsigned int *)a3 minCompatibilityVersion:(unsigned int *)a4 maxCompatibilityVersion:(unsigned int *)a5;
- (BOOL)_hasAllEncryptionKeys;
- (BOOL)_isPairedToDevice:(id)a3;
- (BOOL)_markSecuredEncryptionKeysAsRegenerated:(BOOL)a3;
- (BOOL)_purgeSecuredEncryptionKeysForAllPairedDevices;
- (BOOL)activePairedDeviceHasPairingType:(int64_t)a3;
- (BOOL)addLocalPairedDevice:(id)a3 BTOutOfBandKey:(id)a4 shouldPairDirectlyOverIPsec:(BOOL)a5 pairingType:(int64_t)a6 bluetoothMACAddress:(id)a7;
- (BOOL)isCurrentDevicePairedOrPairing;
- (BOOL)isMissingAnyPublicKeyForPairedDeviceWithCBUUID:(id)a3;
- (BOOL)isPaired;
- (BOOL)isTraditionalDevicePairedOrPairing;
- (BOOL)removeLocalPairedDevice:(id)a3;
- (BOOL)setPairedDeviceInfo:(id)a3;
- (BOOL)shouldUseIPsecLinkForDefaultPairedDeviceAndLogQuery:(BOOL)a3;
- (BOOL)updateLocalPairedDevice:(id)a3 pairingType:(int64_t)a4;
- (BOOL)updatePairedDeviceBuildVersion:(id)a3 productVersion:(id)a4 productName:(id)a5 pairingProtocolVersion:(unsigned int)a6 minCompatibilityVersion:(unsigned int)a7 maxCompatibilityVersion:(unsigned int)a8 serviceMinCompatibilityVersion:(unsigned __int16)a9 capabilityFlags:(unint64_t)a10 deviceUniqueID:(id)a11;
- (BOOL)updatePairedDeviceWithCBUUID:(id)a3 supportIPsec:(BOOL)a4;
- (BOOL)updatePairedDeviceiCloudURIs:(id)a3 pushToken:(id)a4;
- (IDSPairingManager)init;
- (IDSPairingManager)initWithNRDeviceManager:(id)a3 pairedDeviceRepository:(id)a4;
- (NSData)pairedDevicePublicClassAKey;
- (NSData)pairedDevicePublicClassCKey;
- (NSData)pairedDevicePublicKey;
- (NSData)pairedDevicePushToken;
- (NSDictionary)localDevice;
- (NSDictionary)pairedDevice;
- (NSDictionary)pairedDevicePrivateData;
- (NSSet)allPairedDevices;
- (NSSet)allPairedUniqueIDs;
- (NSSet)allTraditionallyPairedUniqueIDs;
- (NSString)description;
- (NSString)pairedDeviceProductVersion;
- (NSString)pairedDeviceUniqueID;
- (id)_activePairedDeviceCBUUID;
- (id)_cbuuidsWithIsPairingValue:(BOOL)a3;
- (id)_createRegistrationProperties:(BOOL)a3 maxCompatibilityVersion:(id)a4 BTOutOfBandKey:(id)a5 supportsIPsecWithSPPLink:(BOOL)a6 bluetoothMACAddress:(id)a7;
- (id)_identityDataErrorPairForDataProtectionClass:(unsigned int)a3;
- (id)_localDevicePrivateData;
- (id)_nrDeviceIdentifierWithCBUUID:(id)a3;
- (id)allPairedDevicesWithType:(int64_t)a3;
- (id)localDeviceRecord;
- (id)pairedDeviceBuildVersion;
- (id)pairedDeviceForUniqueID:(id)a3;
- (id)pairedDeviceHandlesWithPairingType:(int64_t)a3;
- (id)pairedDeviceProductName;
- (id)pairedDeviceRecords;
- (id)pairedDeviceiCloudURIs;
- (id)uniqueIDToCbuuidsOfPairingDevicesDictionary;
- (int64_t)_migrateSecuredEncryptionKeys;
- (int64_t)activatePairedDeviceWithCBUUID:(id)a3;
- (int64_t)pairedDevicePairingType;
- (unint64_t)_hasRegeneratedSecuredEncryptionKeys;
- (unsigned)pairedDeviceMaxCompatibilityVersion;
- (unsigned)pairedDeviceMinCompatibilityVersion;
- (unsigned)pairedDevicePairingProtocolVersion;
- (unsigned)pairedDeviceServiceMinCompatibilityVersion;
- (void)_callPairedDeviceDidConnectBlocksForUniqueID:(id)a3 withError:(id)a4;
- (void)_clearPairedDeviceDidConnectBlocksForUniqueID:(id)a3;
- (void)_loadPairedDevicePropertiesIfNeeded;
- (void)_networkRelayRegisterDeviceWithCBUUID:(id)a3 properties:(id)a4 shouldPairDirectlyOverIPsec:(BOOL)a5;
- (void)_networkRelayRegisterDeviceWithCBUUID:(id)a3 wasInitiallySetupUsingIDSPairing:(BOOL)a4 maxCompatibilityVersion:(id)a5 BTOutOfBandKey:(id)a6 supportsIPsecWithSPPLink:(BOOL)a7 bluetoothMACAddress:(id)a8;
- (void)_notifyDelegatesDevicePairedToDevice:(id)a3;
- (void)_notifyDelegatesDeviceUnpairedFromDevice:(id)a3;
- (void)_notifyDelegatesWithBlock:(id)a3;
- (void)_regenerateSecuredEncryptionKeys;
- (void)_requestPairedDeviceInfo;
- (void)_suspendOTRSessionsWithProtectionClass:(unsigned int)a3;
- (void)_updateActiveStateForAllPairedDevices:(BOOL)a3;
- (void)_updatePairedState:(BOOL)a3;
- (void)addDelegate:(id)a3;
- (void)deactivatePairedDevices;
- (void)dealloc;
- (void)deliveryController:(id)a3 foundNearbyIPsecCapableDeviceWithUniqueID:(id)a4;
- (void)disconnectActivePairedDevice;
- (void)ensureCommunicationWithActivePairedDeviceIsPossible;
- (void)gatherLocalDeviceInfoWithCompletionBlock:(id)a3;
- (void)refreshPairedDeviceEncryptionKeys;
- (void)registerPairedDeviceWithUniqueID:(id)a3 didConnectBlock:(id)a4;
- (void)removeDelegate:(id)a3;
- (void)setBTOutOfBandKey:(id)a3 forCBUUID:(id)a4;
- (void)updateNetworkRelayStateForAllPairedDevices;
@end

@implementation IDSPairingManager

- (NSString)pairedDeviceUniqueID
{
  v2 = [(IDSPairingManager *)self pairedDeviceRepository];
  v3 = [v2 activePairedDevice];
  v4 = [v3 uniqueID];

  return v4;
}

+ (IDSPairingManager)sharedInstance
{
  if (qword_100CBD490 != -1)
  {
    sub_100921190();
  }

  v3 = qword_100CBD498;

  return v3;
}

- (NSSet)allTraditionallyPairedUniqueIDs
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(NSMutableSet);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(IDSPairingManager *)self pairedDeviceRepository];
  v6 = [v5 allPairedDevicesWithType:0];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([(IDSPairingManager *)self _isPairedToDevice:v11])
        {
          v12 = [v11 uniqueID];
          [v4 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  objc_autoreleasePoolPop(v3);

  return v4;
}

- (BOOL)isPaired
{
  v2 = self;
  v3 = [(IDSPairingManager *)self pairedDeviceRepository];
  v4 = [v3 activePairedDevice];
  LOBYTE(v2) = [(IDSPairingManager *)v2 _isPairedToDevice:v4];

  return v2;
}

- (id)uniqueIDToCbuuidsOfPairingDevicesDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(IDSPairingManager *)self pairedDeviceRepository];
  v5 = [v4 pairedDevicesWithIsPairingValue:0];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 cbuuid];
        if (v12)
        {
          v13 = v12;
          v14 = [v11 uniqueID];

          if (v14)
          {
            v15 = [v11 cbuuid];
            v16 = [v11 uniqueID];
            [v3 setValue:v15 forKey:v16];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v17 = [v3 copy];

  return v17;
}

- (NSData)pairedDevicePushToken
{
  v2 = [(IDSPairingManager *)self pairedDeviceRepository];
  v3 = [v2 activePairedDevice];
  v4 = [v3 pushToken];

  return v4;
}

- (NSDictionary)pairedDevice
{
  if ([(IDSPairingManager *)self isPaired])
  {
    v3 = [(IDSPairingManager *)self pairedDeviceRepository];
    v4 = [v3 activePairedDevice];
    v5 = [v4 dictionaryRepresentation];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unsigned)pairedDeviceMinCompatibilityVersion
{
  v2 = [(IDSPairingManager *)self pairedDeviceRepository];
  v3 = [v2 activePairedDevice];
  v4 = [v3 minCompatibilityVersion];

  return v4;
}

- (unsigned)pairedDevicePairingProtocolVersion
{
  v2 = [(IDSPairingManager *)self pairedDeviceRepository];
  v3 = [v2 activePairedDevice];
  v4 = [v3 pairingProtocolVersion];

  return v4;
}

- (unsigned)pairedDeviceMaxCompatibilityVersion
{
  v2 = [(IDSPairingManager *)self pairedDeviceRepository];
  v3 = [v2 activePairedDevice];
  v4 = [v3 maxCompatibilityVersion];

  return v4;
}

- (unsigned)pairedDeviceServiceMinCompatibilityVersion
{
  v2 = [(IDSPairingManager *)self pairedDeviceRepository];
  v3 = [v2 activePairedDevice];
  v4 = [v3 serviceMinCompatibilityVersion];

  return v4;
}

- (id)_activePairedDeviceCBUUID
{
  v2 = [(IDSPairingManager *)self pairedDeviceRepository];
  v3 = [v2 activePairedDevice];
  v4 = [v3 cbuuid];

  return v4;
}

- (NSDictionary)pairedDevicePrivateData
{
  v2 = [(IDSPairingManager *)self pairedDeviceRepository];
  v3 = [v2 activePairedDevice];
  v4 = [v3 privateData];

  return v4;
}

- (NSSet)allPairedUniqueIDs
{
  v3 = objc_alloc_init(NSMutableSet);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(IDSPairingManager *)self pairedDeviceRepository];
  v5 = [v4 allPairedDevices];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([(IDSPairingManager *)self _isPairedToDevice:v10])
        {
          v11 = [v10 uniqueID];
          [v3 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v3;
}

- (void)_notifyDelegatesWithBlock:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[IDSPairingManager _notifyDelegatesWithBlock:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v6 = [(NSHashTable *)self->_delegateMap copy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v4[2](v4, *(*(&v12 + 1) + 8 * v11));
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_notifyDelegatesDevicePairedToDevice:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[IDSPairingManager _notifyDelegatesDevicePairedToDevice:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v6 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notifying all IDS accounts device paired to: %@", buf, 0xCu);
  }

  [v4 dictionaryRepresentation];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100497954;
  v9 = v8[3] = &unk_100BDD768;
  v7 = v9;
  [(IDSPairingManager *)self _notifyDelegatesWithBlock:v8];
}

- (void)_notifyDelegatesDeviceUnpairedFromDevice:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[IDSPairingManager _notifyDelegatesDeviceUnpairedFromDevice:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v6 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notifying all IDS accounts device unpaired from: %@", buf, 0xCu);
  }

  [v4 dictionaryRepresentation];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100497B44;
  v9 = v8[3] = &unk_100BDD768;
  v7 = v9;
  [(IDSPairingManager *)self _notifyDelegatesWithBlock:v8];
}

- (void)_requestPairedDeviceInfo
{
  v3 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[IDSPairingManager _requestPairedDeviceInfo]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  v4 = [(IDSPairingManager *)self _activePairedDeviceCBUUID];
  v5 = [v4 length] == 0;

  if (v5)
  {
    v6 = +[IMRGLog NRPairing];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[IDSPairingManager _requestPairedDeviceInfo]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Cannot send paired device info request because we don't have the device's Bluetooth identifier.", &buf, 0xCu);
    }

    goto LABEL_7;
  }

  if ([(IDSCountdown *)self->_pairedDeviceInfoRequestCountdown isCountingDown])
  {
    v6 = +[IMRGLog watchPairing];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[IDSPairingManager _requestPairedDeviceInfo]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Ignoring paired device info request because another request is already in flight.", &buf, 0xCu);
    }

LABEL_7:

    return;
  }

  [(IDSCountdown *)self->_pairedDeviceInfoRequestCountdown startCountingDown];
  v7 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[IDSPairingManager _requestPairedDeviceInfo]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Sending paired device info request.", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v11 = 0x3032000000;
  v12 = sub_10000A9C4;
  v13 = sub_10000BC54;
  v14 = objc_alloc_init(IDSRemoteCredential);
  [*(*(&buf + 1) + 40) setWantsRetries:1];
  v8 = *(*(&buf + 1) + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100497FA8;
  v9[3] = &unk_100BD7928;
  v9[4] = &buf;
  [v8 sendIDSLocalDeviceInfoRequestWithCompletionBlock:v9];
  _Block_object_dispose(&buf, 8);
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = IDSPairingManager;
  [(IDSPairingManager *)&v4 dealloc];
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = IDSPairingManager;
  v3 = [(IDSPairingManager *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@ -- %@", v3, self->_pairedDeviceRepository];

  return v4;
}

- (IDSPairingManager)initWithNRDeviceManager:(id)a3 pairedDeviceRepository:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = IDSPairingManager;
  v9 = [(IDSPairingManager *)&v22 init];
  v10 = v9;
  if (v9)
  {
    cbuuidToBTOutOfBandKeyDictionary = v9->_cbuuidToBTOutOfBandKeyDictionary;
    v9->_cbuuidToBTOutOfBandKeyDictionary = 0;

    v12 = [[IDSCountdown alloc] initWithTimeInterval:15.0];
    pairedDeviceInfoRequestCountdown = v10->_pairedDeviceInfoRequestCountdown;
    v10->_pairedDeviceInfoRequestCountdown = v12;

    registeredPairedDeviceDidConnectBlockPairs = v10->_registeredPairedDeviceDidConnectBlockPairs;
    v10->_registeredPairedDeviceDidConnectBlockPairs = 0;

    objc_storeStrong(&v10->_pairedDeviceRepository, a4);
    objc_storeStrong(&v10->_nrDeviceManager, a3);
    v15 = +[IMSystemMonitor sharedInstance];
    [v15 setActive:1];

    v16 = +[IMSystemMonitor sharedInstance];
    [v16 setWatchesDataProtectionLockState:1];

    v17 = +[IMSystemMonitor sharedInstance];
    [v17 _addEarlyListener:v10];

    [(IDSPairingManager *)v10 _loadPairedDevicePropertiesIfNeeded];
    [IDSPairingStateChangedNotification UTF8String];
    v18 = IMUserScopedNotification();
    notify_register_check(v18, &v10->_pairingStateToken);
    [(IDSPairingManager *)v10 _updatePairedState:[(IDSPairingManager *)v10 isPaired]];
    v19 = IMGetDomainValueForKey();

    if (!v19)
    {
      v20 = [(IDSPairingManager *)v10 pairedDeviceUUIDString];
      if (v20)
      {
        IMSetDomainValueForKey();
      }
    }

    [(IDSPairingManager *)v10 _updateActiveStateForAllPairedDevices];
    [(IDSPairingManager *)v10 updateNetworkRelayStateForAllPairedDevices];
  }

  return v10;
}

- (IDSPairingManager)init
{
  v3 = objc_alloc_init(IDSPairedDeviceKeychainPersister);
  v4 = +[NRDeviceManager copySharedDeviceManager];
  v5 = [[IDSPairedDeviceRepository alloc] initWithPersister:v3];
  v6 = [(IDSPairingManager *)self initWithNRDeviceManager:v4 pairedDeviceRepository:v5];

  return v6;
}

- (void)setBTOutOfBandKey:(id)a3 forCBUUID:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (v6)
  {
    cbuuidToBTOutOfBandKeyDictionary = self->_cbuuidToBTOutOfBandKeyDictionary;
    v8 = v12;
    if (v12)
    {
      if (!cbuuidToBTOutOfBandKeyDictionary)
      {
        v9 = objc_alloc_init(NSMutableDictionary);
        v10 = self->_cbuuidToBTOutOfBandKeyDictionary;
        self->_cbuuidToBTOutOfBandKeyDictionary = v9;

        v8 = v12;
        cbuuidToBTOutOfBandKeyDictionary = self->_cbuuidToBTOutOfBandKeyDictionary;
      }

      [(NSMutableDictionary *)cbuuidToBTOutOfBandKeyDictionary setObject:v8 forKeyedSubscript:v6];
    }

    else
    {
      [(NSMutableDictionary *)cbuuidToBTOutOfBandKeyDictionary setObject:0 forKeyedSubscript:v6];
      if (![(NSMutableDictionary *)self->_cbuuidToBTOutOfBandKeyDictionary count])
      {
        v11 = self->_cbuuidToBTOutOfBandKeyDictionary;
        self->_cbuuidToBTOutOfBandKeyDictionary = 0;
      }
    }
  }
}

- (void)_loadPairedDevicePropertiesIfNeeded
{
  if (!self->_hasLoadedPairedDevices)
  {
    v3 = [(IDSPairingManager *)self pairedDeviceRepository];
    self->_hasLoadedPairedDevices = [v3 loadPairedDevicesFromStorage];

    if (self->_hasLoadedPairedDevices)
    {
      [(IDSPairingManager *)self _migrateSecuredEncryptionKeys];
      [(IDSPairingManager *)self _requestPairedDeviceInfoAfterDelay:10.0];
      v4 = [(IDSPairingManager *)self pairedDevice];
      v5 = v4;
      if (v4)
      {
        v6[0] = _NSConcreteStackBlock;
        v6[1] = 3221225472;
        v6[2] = sub_1004984A0;
        v6[3] = &unk_100BDD768;
        v7 = v4;
        [(IDSPairingManager *)self _notifyDelegatesWithBlock:v6];
      }
    }
  }
}

- (int64_t)_migrateSecuredEncryptionKeys
{
  v2 = +[IDSRegistrationKeyManager sharedInstance];
  v3 = [v2 isUsingSecureStorageForClassA];
  v4 = [v2 isUsingSecureStorageForClassC];
  v5 = v4;
  if (!v3 || (v4 & 1) == 0)
  {
    v7 = +[IMSystemMonitor sharedInstance];
    v8 = [v7 isUnderDataProtectionLock];

    if (v8)
    {
      v9 = +[IMRGLog migration];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Migration is prohibited.", buf, 2u);
      }

      v6 = 1;
      goto LABEL_24;
    }

    if ((v3 & 1) == 0)
    {
      v10 = [v2 migrateToSecureStorageForClassA];
      v11 = +[IMRGLog migration];
      v9 = v11;
      if (!v10)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          sub_1009211A4();
        }

LABEL_23:
        v6 = 2;
LABEL_24:

        goto LABEL_25;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Migrated key to class A.", v16, 2u);
      }
    }

    if (v5)
    {
      v6 = 3;
      goto LABEL_25;
    }

    v12 = [v2 migrateToSecureStorageForClassC];
    v13 = +[IMRGLog migration];
    v9 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Migrated key to class C.", v15, 2u);
      }

      v6 = 3;
      goto LABEL_24;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1009211E0();
    }

    goto LABEL_23;
  }

  v6 = 0;
LABEL_25:

  return v6;
}

- (unint64_t)_hasRegeneratedSecuredEncryptionKeys
{
  if (self->_isPendingResetOfKeyRegenerationFlag)
  {
    if ([(IDSPairingManager *)self _markSecuredEncryptionKeysAsRegenerated:0])
    {
      self->_isPendingResetOfKeyRegenerationFlag = 0;
      v3 = +[IMRGLog regeneration];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v13 = "[IDSPairingManager _hasRegeneratedSecuredEncryptionKeys]";
        v4 = "%s Set the pending-reset flag back to NO.";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, buf, 0xCu);
      }
    }

    else
    {
      v3 = +[IMRGLog regeneration];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v13 = "[IDSPairingManager _hasRegeneratedSecuredEncryptionKeys]";
        v4 = "%s Could not set the pending-reset flag back to NO.";
        goto LABEL_19;
      }
    }

    v8 = 2;
    goto LABEL_21;
  }

  v5 = IMGetKeychainData();
  v6 = 0;
  v3 = v6;
  if (v5)
  {
    v9 = [v6 length];
    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    v7 = +[IMRGLog regeneration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"YES";
      if (!v9)
      {
        v10 = @"NO";
      }

      *buf = 138412290;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Able to determine the has-regenerated-secured-encryption-key status. Has regenerated? %@", buf, 0xCu);
    }
  }

  else
  {
    v7 = +[IMRGLog regeneration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unable to determine the has-regenerated-secured-encryption-key status. keychainError: %d", buf, 8u);
    }

    v8 = 0;
  }

LABEL_21:
  return v8;
}

- (BOOL)_markSecuredEncryptionKeysAsRegenerated:(BOOL)a3
{
  if (a3)
  {
    v3 = [@"regenerated" dataUsingEncoding:4];
    *v9 = 0;
    v4 = IMSetKeychainDataWithProtection();
    v5 = +[IMRGLog regeneration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      *buf = 138412802;
      if (v4)
      {
        v6 = @"YES";
      }

      v11 = @"YES";
      v12 = 2112;
      v13 = v6;
      v14 = 1024;
      v15 = *v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updated the has-regenerated-secured-encryption-keys flag to: %@  success? %@  keychainError: %d", buf, 0x1Cu);
    }
  }

  else
  {
    *buf = 0;
    v4 = IMRemoveKeychainData();
    v7 = +[IMRGLog regeneration];
    v3 = v7;
    if (v4)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removed the has-regenerated-secured-encryption-keys flag from the keychain.", v9, 2u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_10092121C();
    }
  }

  return v4;
}

- (void)_regenerateSecuredEncryptionKeys
{
  v3 = +[IMRGLog regeneration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Suspending OTR sessions for protection classes A and C...", buf, 2u);
  }

  [(IDSPairingManager *)self _suspendOTRSessionsWithProtectionClass:1];
  [(IDSPairingManager *)self _suspendOTRSessionsWithProtectionClass:0];
  v4 = +[IMRGLog regeneration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Regenerating encryption keys for protection classes A and C...", v6, 2u);
  }

  v5 = +[IDSRegistrationKeyManager sharedInstance];
  [v5 regeneratePairingIdentitiesIncludingClassD:0];
}

- (void)_suspendOTRSessionsWithProtectionClass:(unsigned int)a3
{
  v3 = *&a3;
  v4 = +[IDSOTRController sharedInstance];
  v5 = +[IDSOTRKeyStorage sharedInstance];
  v21 = sub_100572108(0, v3);
  v30[0] = v21;
  v6 = sub_100572108(100, v3);
  v30[1] = v6;
  v7 = sub_100572108(200, v3);
  v30[2] = v7;
  v8 = sub_100572108(300, v3);
  v30[3] = v8;
  v9 = sub_10057214C(100, v3, @"UTunDelivery_Default_Sync");
  v30[4] = v9;
  v10 = sub_10057214C(200, v3, @"UTunDelivery_Default_Default");
  v30[5] = v10;
  v11 = sub_10057214C(300, v3, @"UTunDelivery_Default_Urgent");
  v30[6] = v11;
  v12 = sub_10057214C(300, v3, @"UTunDelivery_Default_UrgentCloud");
  v30[7] = v12;
  v13 = [NSArray arrayWithObjects:v30 count:8];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    v22 = 138412290;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * i);
        v20 = +[IMRGLog regeneration];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v22;
          v28 = v19;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Suspending OTR session with token: %@", buf, 0xCu);
        }

        [v5 removeSessionKeyForToken:v19];
        [v4 suspendSessionNegotiation:v19 askedByPairedDevice:0];
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v16);
  }
}

- (BOOL)_purgeSecuredEncryptionKeysForAllPairedDevices
{
  v2 = [(IDSPairingManager *)self pairedDeviceRepository];
  v3 = [v2 purgeSecuredEncryptionKeysForAllPairedDevices];

  v4 = +[IMRGLog regeneration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (v3)
    {
      v5 = @"YES";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Purged encryption keys for all paired devices. Success: %@", &v7, 0xCu);
  }

  return v3;
}

- (NSDictionary)localDevice
{
  v3 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[IDSPairingManager localDevice]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v16, 0xCu);
  }

  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = +[IDSCurrentDevice sharedInstance];
  v7 = +[FTDeviceSupport sharedInstance];
  v8 = [v6 deviceIdentifier];
  if (v8)
  {
    CFDictionarySetValue(v5, IDSDevicePropertyIdentifier, v8);
  }

  v9 = [v6 encryptionClassAKey];
  if (v9)
  {
    CFDictionarySetValue(v5, IDSDevicePropertyEncryptionClassAKey, v9);
  }

  v10 = [v6 encryptionClassCKey];
  if (v10)
  {
    CFDictionarySetValue(v5, IDSDevicePropertyEncryptionClassCKey, v10);
  }

  v11 = [v6 encryptionClassDKey];
  if (v11)
  {
    CFDictionarySetValue(v5, IDSDevicePropertyEncryptionKey, v11);
  }

  v12 = [(IDSPairingManager *)self _localDevicePrivateData];
  if (v12)
  {
    CFDictionarySetValue(v5, IDSDevicePropertyPrivateDeviceData, v12);
  }

  v13 = [v7 deviceName];
  if (v13)
  {
    CFDictionarySetValue(v5, IDSDevicePropertyName, v13);
  }

  v14 = [v7 model];
  if (v14)
  {
    CFDictionarySetValue(v5, IDSDevicePropertyHardwareVersion, v14);
  }

  objc_autoreleasePoolPop(v4);

  return v5;
}

- (id)_localDevicePrivateData
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = +[FTDeviceSupport sharedInstance];
  v4 = [v3 supportsSMS];
  v5 = [v3 supportsMMS];
  v6 = [v3 supportsApplePay];
  v7 = [v3 supportsHandoff];
  v8 = [v3 supportsTethering];
  v9 = +[IDSCTAdapter sharedInstance];
  if ([v9 supportsIdentification])
  {
    v10 = +[FTDeviceSupport sharedInstance];
    v11 = [v10 deviceType] == 2;
  }

  else
  {
    v11 = 0;
  }

  v12 = _IDSPrivateDeviceDataVersionNumber();
  v13 = [v12 stringValue];
  [v2 setObject:v13 forKeyedSubscript:IDSPrivateDeviceDataVersion];

  v14 = [NSNumber numberWithBool:v6];
  v15 = [v14 stringValue];
  [v2 setObject:v15 forKeyedSubscript:IDSPrivateDeviceDataSupportsApplePay];

  v16 = [NSNumber numberWithBool:v7];
  v17 = [v16 stringValue];
  [v2 setObject:v17 forKeyedSubscript:IDSPrivateDeviceDataSupportsHandoff];

  v18 = [NSNumber numberWithBool:v8];
  v19 = [v18 stringValue];
  [v2 setObject:v19 forKeyedSubscript:IDSPrivateDeviceDataSupportsTethering];

  v20 = [NSNumber numberWithBool:v4];
  v21 = [v20 stringValue];
  [v2 setObject:v21 forKeyedSubscript:IDSPrivateDeviceDataSupportsSMSRelay];

  v22 = [NSNumber numberWithBool:v5];
  v23 = [v22 stringValue];
  [v2 setObject:v23 forKeyedSubscript:IDSPrivateDeviceDataSupportsMMSRelay];

  v24 = [NSNumber numberWithBool:v11];
  v25 = [v24 stringValue];
  [v2 setObject:v25 forKeyedSubscript:IDSPrivateDeviceDataSupportsPhoneCalls];

  v26 = +[IMDeviceSupport sharedInstance];
  v27 = [v26 productBuildVersion];
  if (v27)
  {
    CFDictionarySetValue(v2, IDSPrivateDeviceDataProductBuildVersion, v27);
  }

  v28 = [v26 productName];
  if (v28)
  {
    CFDictionarySetValue(v2, IDSPrivateDeviceDataProductName, v28);
  }

  v29 = [v26 productVersion];
  if (v29)
  {
    CFDictionarySetValue(v2, IDSPrivateDeviceDataProductVersion, v29);
  }

  v30 = [v3 deviceColor];
  if (v30)
  {
    CFDictionarySetValue(v2, IDSPrivateDeviceDataColor, v30);
  }

  v31 = [v3 enclosureColor];
  if (v31)
  {
    CFDictionarySetValue(v2, IDSPrivateDeviceDataEnclosureColor, v31);
  }

  return v2;
}

- (void)gatherLocalDeviceInfoWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 136315138;
    v31 = "[IDSPairingManager gatherLocalDeviceInfoWithCompletionBlock:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", &v30, 0xCu);
  }

  if (v4)
  {
    v6 = [v4 copy];
    v7 = [(IDSPairingManager *)self localDevice];
    v8 = [v7 objectForKey:IDSDevicePropertyEncryptionKey];
    v9 = [v7 objectForKey:IDSDevicePropertyEncryptionClassAKey];
    v10 = [v7 objectForKey:IDSDevicePropertyEncryptionClassCKey];
    v11 = [(IDSPairingManager *)self pairedDevicePublicKey];
    if (v11)
    {
      v12 = [(IDSPairingManager *)self pairedDevicePublicClassAKey];
      if (v12)
      {
        v13 = [(IDSPairingManager *)self pairedDevicePublicClassCKey];
        v14 = v13 == 0;
      }

      else
      {
        v14 = 1;
      }
    }

    else
    {
      v14 = 1;
    }

    if ([v8 length] && objc_msgSend(v9, "length") && objc_msgSend(v10, "length"))
    {
      v15 = +[IMRGLog pairing];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v30) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "We have all the encryption keys, sending device info back", &v30, 2u);
      }

      v6[2](v6, v7);
      block = self->_block;
      if (block)
      {
        self->_block = 0;
      }

      if (v14)
      {
        v17 = +[IMRGLog NRPairing];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v30) = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "We're missing their keys but we sent our keys, requesting...", &v30, 2u);
        }

        [(IDSPairingManager *)self _requestPairedDeviceInfoAfterDelay:0.0];
      }

      goto LABEL_43;
    }

    v18 = +[IMSystemMonitor sharedInstance];
    v19 = [v18 isUnderDataProtectionLock];

    v20 = +[IMSystemMonitor sharedInstance];
    v21 = [v20 isUnderFirstDataProtectionLock];

    v22 = +[IMRGLog pairing];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = @"NO";
      v30 = 134219010;
      v31 = v9;
      if (v19)
      {
        v24 = @"YES";
      }

      else
      {
        v24 = @"NO";
      }

      v32 = 2048;
      v33 = v10;
      if (v21)
      {
        v23 = @"YES";
      }

      v34 = 2048;
      v35 = v8;
      v36 = 2112;
      v37 = v24;
      v38 = 2112;
      v39 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "We're missing some keys (A: %p) (C: %p) (D: %p) (locked: %@) (firstLocked: %@)", &v30, 0x34u);
    }

    if ([v9 length])
    {
      if ([v10 length])
      {
        if ([v8 length])
        {
          goto LABEL_43;
        }

        v25 = +[IMRGLog warning];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          sub_100921294();
        }

        v6[2](v6, v7);
        v26 = self->_block;
        if (!v26)
        {
          goto LABEL_43;
        }

        self->_block = 0;
        goto LABEL_42;
      }

      v27 = +[IMRGLog pairing];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v30) = 0;
        v28 = "Missing class C key, waiting for keychain save...";
        goto LABEL_39;
      }
    }

    else
    {
      v27 = +[IMRGLog pairing];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v30) = 0;
        v28 = "Missing class A key, waiting for keychain save...";
LABEL_39:
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v28, &v30, 2u);
      }
    }

    if (!v6)
    {
LABEL_43:

      goto LABEL_44;
    }

    v29 = objc_retainBlock(v6);
    v26 = self->_block;
    self->_block = v29;
LABEL_42:

    goto LABEL_43;
  }

LABEL_44:
}

- (id)pairedDeviceBuildVersion
{
  v2 = [(IDSPairingManager *)self pairedDeviceRepository];
  v3 = [v2 activePairedDevice];
  v4 = [v3 buildVersion];

  return v4;
}

- (NSString)pairedDeviceProductVersion
{
  v2 = [(IDSPairingManager *)self pairedDeviceRepository];
  v3 = [v2 activePairedDevice];
  v4 = [v3 productVersion];

  return v4;
}

- (id)pairedDeviceProductName
{
  v2 = [(IDSPairingManager *)self pairedDeviceRepository];
  v3 = [v2 activePairedDevice];
  v4 = [v3 productName];

  return v4;
}

- (BOOL)activePairedDeviceHasPairingType:(int64_t)a3
{
  v4 = [(IDSPairingManager *)self pairedDeviceRepository];
  v5 = [v4 activePairedDevice];
  LOBYTE(a3) = [v5 pairingType] == a3;

  return a3;
}

- (NSSet)allPairedDevices
{
  v2 = [(IDSPairingManager *)self pairedDeviceRepository];
  v3 = [v2 allPairedDevices];

  return v3;
}

- (id)allPairedDevicesWithType:(int64_t)a3
{
  v4 = [(IDSPairingManager *)self pairedDeviceRepository];
  v5 = [v4 allPairedDevicesWithType:a3];

  return v5;
}

- (id)pairedDeviceHandlesWithPairingType:(int64_t)a3
{
  v4 = [(IDSPairingManager *)self pairedDeviceRepository];
  v5 = [v4 allPairedDevicesWithType:a3];

  v6 = objc_alloc_init(NSMutableSet);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 iCloudURIs];
        v14 = [v13 count];

        if (v14)
        {
          v15 = [v12 iCloudURIs];
          [v6 addObjectsFromArray:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  return v6;
}

- (NSData)pairedDevicePublicKey
{
  v2 = [(IDSPairingManager *)self pairedDeviceRepository];
  v3 = [v2 activePairedDevice];
  v4 = [v3 publicClassDKey];

  return v4;
}

- (NSData)pairedDevicePublicClassAKey
{
  v2 = [(IDSPairingManager *)self pairedDeviceRepository];
  v3 = [v2 activePairedDevice];
  v4 = [v3 publicClassAKey];

  return v4;
}

- (NSData)pairedDevicePublicClassCKey
{
  v2 = [(IDSPairingManager *)self pairedDeviceRepository];
  v3 = [v2 activePairedDevice];
  v4 = [v3 publicClassCKey];

  return v4;
}

- (id)pairedDeviceiCloudURIs
{
  v2 = [(IDSPairingManager *)self pairedDeviceRepository];
  v3 = [v2 activePairedDevice];
  v4 = [v3 iCloudURIs];

  return v4;
}

- (int64_t)pairedDevicePairingType
{
  v2 = [(IDSPairingManager *)self pairedDeviceRepository];
  v3 = [v2 activePairedDevice];
  v4 = [v3 pairingType];

  return v4;
}

- (BOOL)_isPairedToDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 cbuuid];
  v5 = [v4 length];

  v6 = [v3 publicClassDKey];
  v7 = [v6 length];

  v8 = [v3 uniqueID];

  v9 = [v8 length];
  if (v5)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  return !v10 && v7 != 0;
}

- (id)pairedDeviceForUniqueID:(id)a3
{
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(IDSPairingManager *)self pairedDeviceRepository];
  v6 = [v5 allPairedDevices];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([(IDSPairingManager *)self _isPairedToDevice:v11])
        {
          v12 = [v11 uniqueID];
          v13 = [v12 isEqualToIgnoringCase:v4];

          if (v13)
          {
            v14 = v11;
            goto LABEL_12;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (BOOL)_hasAllEncryptionKeys
{
  v2 = [(IDSPairingManager *)self pairedDeviceRepository];
  v3 = [v2 activePairedDevice];

  v4 = [v3 publicClassAKey];
  v5 = [v4 length];

  v6 = [v3 publicClassCKey];
  v7 = [v6 length];

  v8 = [v3 publicClassDKey];
  v9 = [v8 length];

  if (v5)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  v12 = !v10 && v9 != 0;

  return v12;
}

- (void)_updatePairedState:(BOOL)a3
{
  v3 = a3;
  notify_set_state(self->_pairingStateToken, a3);
  v4 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[IDSPairingManager _updatePairedState:]";
    v8 = 2048;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Updating notify token state to: isPaired %llu", &v6, 0x16u);
  }

  [IDSPairingStateChangedNotification UTF8String];
  v5 = IMUserScopedNotification();
  notify_post(v5);
}

- (void)_updateActiveStateForAllPairedDevices:(BOOL)a3
{
  v3 = a3;
  v5 = +[IMRGLog deviceState];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Update notifier state for paired devices", buf, 2u);
  }

  v6 = [(IDSPairingManager *)self pairedDeviceRepository];
  v7 = [v6 allPairedDevices];

  v8 = +[IMRGLog deviceState];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 count]);
    *buf = 138412290;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "All devices count: %@", buf, 0xCu);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v25;
    *&v12 = 138412290;
    v21 = v12;
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v24 + 1) + 8 * v15);
        v17 = +[IMRGLog deviceState];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v21;
          v30 = v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Checking %@", buf, 0xCu);
        }

        v18 = [v16 uniqueID];
        if (v3)
        {
          v19 = +[IDSDevicePropertiesStateNotifier sharedInstance];
          [v19 updateStateForDeviceWithUniqueID:v18];
        }

        else
        {
          v20 = im_primary_queue();
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10049A6DC;
          block[3] = &unk_100BD6ED0;
          v23 = v18;
          dispatch_async(v20, block);

          v19 = v23;
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }
}

- (void)addDelegate:(id)a3
{
  v4 = a3;
  delegateMap = self->_delegateMap;
  v8 = v4;
  if (!delegateMap)
  {
    v6 = +[NSHashTable weakObjectsHashTable];
    v7 = self->_delegateMap;
    self->_delegateMap = v6;

    v4 = v8;
    delegateMap = self->_delegateMap;
  }

  if (![(NSHashTable *)delegateMap containsObject:v4])
  {
    [(NSHashTable *)self->_delegateMap addObject:v8];
  }
}

- (void)removeDelegate:(id)a3
{
  [(NSHashTable *)self->_delegateMap removeObject:a3];
  if (![(NSHashTable *)self->_delegateMap count])
  {
    delegateMap = self->_delegateMap;
    self->_delegateMap = 0;
  }
}

- (BOOL)addLocalPairedDevice:(id)a3 BTOutOfBandKey:(id)a4 shouldPairDirectlyOverIPsec:(BOOL)a5 pairingType:(int64_t)a6 bluetoothMACAddress:(id)a7
{
  v8 = a5;
  v11 = a3;
  v12 = a4;
  v13 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v40 = "[IDSPairingManager addLocalPairedDevice:BTOutOfBandKey:shouldPairDirectlyOverIPsec:pairingType:bluetoothMACAddress:]";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (![v11 length])
  {
    v17 = +[IMRGLog NRPairing];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      sub_1009213D0();
    }

    goto LABEL_32;
  }

  v14 = [(IDSPairingManager *)self pairedDeviceRepository];
  v15 = [v14 containsPairedDeviceWithCBUUID:v11];

  if (v15)
  {
    v16 = 0;
    goto LABEL_20;
  }

  v18 = +[IMRGLog regeneration];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Marking the encryption keys as regenerated to avoid regenerating newly created keys.", buf, 2u);
  }

  [(IDSPairingManager *)self _markSecuredEncryptionKeysAsRegenerated:1];
  [(IDSPairingManager *)self setBTOutOfBandKey:v12 forCBUUID:v11];
  v19 = [(IDSPairingManager *)self pairedDeviceRepository];
  v20 = [v19 addPairedDeviceWithCBUUID:v11 pairingType:a6];

  if (v20)
  {
    v21 = [(IDSPairingManager *)self pairedDeviceRepository];
    v22 = [v21 activatePairedDeviceWithCBUUID:v11];

    if (!v22)
    {
      v16 = 1;
      if (!v8)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v23 = +[IMRGLog NRPairing];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      sub_100921350();
    }
  }

  else
  {
    v23 = +[IMRGLog NRPairing];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      sub_1009212D0();
    }
  }

  v16 = 0;
  if (v8)
  {
LABEL_18:
    v24 = [[NSUUID alloc] initWithUUIDString:v11];
    v25 = [(IDSPairingManager *)self _createRegistrationProperties:0 maxCompatibilityVersion:0 BTOutOfBandKey:v12 supportsIPsecWithSPPLink:0 bluetoothMACAddress:0];
    [v25 setIsAltAccountPairing:a6 == 1];
    [(IDSPairingManager *)self _networkRelayRegisterDeviceWithCBUUID:v24 properties:v25 shouldPairDirectlyOverIPsec:1];
    v26 = [(IDSPairingManager *)self pairedDeviceRepository];
    [v26 updatePairedDeviceWithCBUUID:v11 supportIPsec:1];

    v27 = [(IDSPairingManager *)self pairedDeviceRepository];
    LOWORD(v38) = 10;
    [v27 updatePairedDeviceWithCBUUID:v11 deviceUniqueID:0 buildVersion:0 productVersion:0 productName:0 pairingProtocolVersion:0 minCompatibilityVersion:0 maxCompatibilityVersion:v38 serviceMinCompatibilityVersion:?];
  }

LABEL_19:
  [(IDSPairingManager *)self _updateActiveStateForAllPairedDevices];
LABEL_20:
  v28 = [(IDSPairingManager *)self isPaired];
  v29 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = @"NO";
    *buf = 136315906;
    v40 = "[IDSPairingManager addLocalPairedDevice:BTOutOfBandKey:shouldPairDirectlyOverIPsec:pairingType:bluetoothMACAddress:]";
    if (v16)
    {
      v31 = @"YES";
    }

    else
    {
      v31 = @"NO";
    }

    if (v28)
    {
      v30 = @"YES";
    }

    v41 = 2112;
    v42 = v11;
    v43 = 2112;
    v44 = v31;
    v45 = 2112;
    v46 = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s Added locally paired device with CBUUID %@ to repository? %@. Device is now paired? %@ ", buf, 0x2Au);
  }

  if (!v16)
  {
LABEL_32:
    v36 = 0;
    goto LABEL_37;
  }

  v32 = +[IMRGLog NRPairing];
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
  if (v28)
  {
    if (v33)
    {
      *buf = 136315138;
      v40 = "[IDSPairingManager addLocalPairedDevice:BTOutOfBandKey:shouldPairDirectlyOverIPsec:pairingType:bluetoothMACAddress:]";
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%s notifying delegate that we are properly paired with a local device", buf, 0xCu);
    }

    v34 = [(IDSPairingManager *)self pairedDeviceRepository];
    v35 = [v34 pairedDeviceWithCBUUID:v11];

    [(IDSPairingManager *)self _notifyDelegatesDevicePairedToDevice:v35];
  }

  else
  {
    if (v33)
    {
      *buf = 136315138;
      v40 = "[IDSPairingManager addLocalPairedDevice:BTOutOfBandKey:shouldPairDirectlyOverIPsec:pairingType:bluetoothMACAddress:]";
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%s We are missing the local device information to properly pair, requesting it now.", buf, 0xCu);
    }

    [(IDSPairingManager *)self _requestPairedDeviceInfoAfterDelay:10.0];
  }

  [(IDSPairingManager *)self _updatePairedState:v28];
  v36 = 1;
LABEL_37:

  return v36;
}

- (BOOL)removeLocalPairedDevice:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315138;
    v21 = "[IDSPairingManager removeLocalPairedDevice:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", &v20, 0xCu);
  }

  if ([v4 length])
  {
    v6 = [(IDSPairingManager *)self pairedDeviceRepository];
    v7 = [v6 pairedDeviceWithCBUUID:v4];

    v8 = [[NSUUID alloc] initWithUUIDString:v4];
    [(IDSPairingManager *)self _clearPairedDeviceDidConnectBlocksForUniqueID:v8];
    v9 = [(IDSPairingManager *)self _nrDeviceIdentifierWithCBUUID:v8];
    v10 = +[IMRGLog NRPairing];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138478083;
      v21 = v9;
      v22 = 2113;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Will unregister device from nrDeviceManager {nrIdentifier: %{private}@, cbuuidUUID: %{private}@, }", &v20, 0x16u);
    }

    if (v9)
    {
      v11 = [(IDSPairingManager *)self nrDeviceManager];
      [v11 unregisterDevice:v9];
    }

    v12 = [(IDSPairingManager *)self pairedDeviceRepository];
    v13 = [v12 removePairedDeviceWithCBUUID:v4];

    v14 = +[IMRGLog registration];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = @"NO";
      if (v13)
      {
        v15 = @"YES";
      }

      v20 = 138412546;
      v21 = v4;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Removed locally paired device with CBUUID: %@? %@", &v20, 0x16u);
    }

    v16 = [(IDSPairingManager *)self pairedDeviceRepository];
    v17 = [v16 isEmpty];

    if (v17)
    {
      v18 = +[IDSRegistrationKeyManager sharedInstance];
      [v18 regeneratePairingIdentitiesIncludingClassD:1];
    }

    if (v13)
    {
      [(IDSPairingManager *)self _notifyDelegatesDeviceUnpairedFromDevice:v7];
      [(IDSPairingManager *)self _updateActiveStateForAllPairedDevices];
      [(IDSPairingManager *)self _updatePairedState:0];
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (void)disconnectActivePairedDevice
{
  v3 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[IDSPairingManager disconnectActivePairedDevice]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  [(IDSPairingManager *)self deactivatePairedDevices];
  [(IDSPairingManager *)self _updateActiveStateForAllPairedDevices];
  [(IDSPairingManager *)self _updatePairedState:0];
}

- (int64_t)activatePairedDeviceWithCBUUID:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[IDSPairingManager activatePairedDeviceWithCBUUID:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v6 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Activating a paired device with CBUUID: %@", buf, 0xCu);
  }

  v7 = [(IDSPairingManager *)self _activePairedDeviceCBUUID];
  v8 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = v7;
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Switching active paired device from %@ to %@", buf, 0x16u);
  }

  if ([v4 isEqualToIgnoringCase:v7])
  {
    v9 = +[IMRGLog watchPairing];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_10092144C();
    }

    v10 = 1;
  }

  else
  {
    v9 = [[NSUUID alloc] initWithUUIDString:v7];
    v11 = [[NSUUID alloc] initWithUUIDString:v4];
    v12 = [(IDSPairingManager *)self _nrDeviceIdentifierWithCBUUID:v9];
    v13 = [(IDSPairingManager *)self _nrDeviceIdentifierWithCBUUID:v11];
    if (v12)
    {
      v14 = +[IMRGLog NRPairing];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138478083;
        v24 = v9;
        v25 = 2113;
        v26 = v12;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Disabling NetworkRelay device {activeUUID: %{private}@, activeDeviceIdentifier: %{private}@}", buf, 0x16u);
      }

      v15 = [(IDSPairingManager *)self nrDeviceManager];
      [v15 disableDevice:v12];
    }

    if (v13)
    {
      v16 = +[IMRGLog NRPairing];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138478083;
        v24 = v11;
        v25 = 2113;
        v26 = v13;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Enabling NetworkRelay device {newUUID: %{private}@, newDeviceIdentifier: %{private}@}", buf, 0x16u);
      }

      v17 = [(IDSPairingManager *)self nrDeviceManager];
      [v17 enableDevice:v13];
    }

    v18 = [(IDSPairingManager *)self pairedDeviceRepository];
    v10 = [v18 activatePairedDeviceWithCBUUID:v4];

    [(IDSPairingManager *)self _updateActiveStateForAllPairedDevices];
  }

  v19 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    if (v10 > 4)
    {
      v20 = @"<unknown>";
    }

    else
    {
      v20 = *(&off_100BDD7D8 + v10);
    }

    v21 = [NSString stringWithFormat:@"%@ (%d)", v20, v10];
    *buf = 138412546;
    v24 = v4;
    v25 = 2112;
    v26 = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Result of activating a paired device with CBUUID %@ is %@", buf, 0x16u);
  }

  return v10;
}

- (void)deactivatePairedDevices
{
  v3 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[IDSPairingManager deactivatePairedDevices]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  [(IDSPairingManager *)self setShouldQuickSwitchAfterIPSecConnected:0];
  v4 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Disabling NetworkRelay for all paired devices.", buf, 2u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(IDSPairingManager *)self cbuuidsOfPairedDevices];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v18;
    *&v7 = 138477827;
    v16 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [(IDSPairingManager *)self _nrDeviceIdentifierWithCBUUID:v11, v16];
        v13 = +[IMRGLog NRPairing];
        v14 = v13;
        if (v12)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138478083;
            v22 = v11;
            v23 = 2113;
            v24 = v12;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Disabling NetworkRelay device {pairedDeviceUUID: %{private}@, nrIdentifier: %{private}@}", buf, 0x16u);
          }

          v14 = [(IDSPairingManager *)self nrDeviceManager];
          [v14 disableDevice:v12];
        }

        else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = v16;
          v22 = v11;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to create IDSNRDeviceIdentifier from pairedDeviceUUID - failed to deactivate device {pairedDeviceUUID: %{private}@}", buf, 0xCu);
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v8);
  }

  v15 = [(IDSPairingManager *)self pairedDeviceRepository];
  [v15 deactivatePairedDevices];

  [(IDSPairingManager *)self _updateActiveStateForAllPairedDevices];
}

- (void)updateNetworkRelayStateForAllPairedDevices
{
  v3 = [(IDSPairingManager *)self pairedDeviceRepository];
  v4 = [v3 allPairedDevices];

  v5 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Update registration status with NetworkRelay for active device and disable non-active devices: %@", buf, 0xCu);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v23;
    *&v8 = 138478083;
    v19 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        if ([v12 supportIPsec])
        {
          v13 = [v12 cbuuidUUID];
          v14 = [(IDSPairingManager *)self _nrDeviceIdentifierWithCBUUID:v13];

          if (v14)
          {
            if ([v12 isActive])
            {
              if ([(IDSPairingManager *)self _isPairedToDevice:v12])
              {
                v15 = [v12 cbuuidUUID];
                v16 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v12 maxCompatibilityVersion]);
                [(IDSPairingManager *)self _networkRelayRegisterDeviceWithCBUUID:v15 wasInitiallySetupUsingIDSPairing:1 maxCompatibilityVersion:v16 BTOutOfBandKey:0 supportsIPsecWithSPPLink:0 bluetoothMACAddress:0];
              }

              else
              {
                v15 = +[IMRGLog NRPairing];
                if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                {
                  sub_1009214E4(&v20, v21, v15);
                }
              }
            }

            else
            {
              v17 = +[IMRGLog NRPairing];
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                v18 = [v12 cbuuidUUID];
                *buf = v19;
                v27 = v18;
                v28 = 2113;
                v29 = v14;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Disabling NetworkRelay device {cbuuidUUID: %{private}@, nrIdentifier: %{private}@}", buf, 0x16u);
              }

              v15 = [(IDSPairingManager *)self nrDeviceManager];
              [v15 disableDevice:v14];
            }
          }

          else
          {
            v15 = +[IMRGLog NRPairing];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              sub_100921524(v30, v12);
            }
          }
        }

        else
        {
          v14 = +[IMRGLog NRPairing];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_100921488(v31, v12);
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v9);
  }
}

- (void)ensureCommunicationWithActivePairedDeviceIsPossible
{
  v3 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[IDSPairingManager ensureCommunicationWithActivePairedDeviceIsPossible]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  v4 = [(IDSPairingManager *)self _activePairedDeviceCBUUID];
  if ([v4 length])
  {
    v5 = [(IDSPairingManager *)self isMissingAnyPublicKeyForPairedDeviceWithCBUUID:v4];
    v6 = +[IMRGLog watchPairing];
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        LOWORD(v9) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Requesting information about the new active paired device.", &v9, 2u);
      }

      [(IDSPairingManager *)self _requestPairedDeviceInfoAfterDelay:0.0];
    }

    else
    {
      if (v7)
      {
        LOWORD(v9) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Requesting information about the new active paired device was unnecessary. Communication is possible.", &v9, 2u);
      }
    }
  }

  else
  {
    v8 = +[IMRGLog watchPairing];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cannot ensure communication is possible because there is no active paired device.", &v9, 2u);
    }
  }
}

- (BOOL)isCurrentDevicePairedOrPairing
{
  v2 = [(IDSPairingManager *)self pairedDeviceRepository];
  v3 = [v2 allPairedDevices];
  v4 = [v3 count];

  return v4 != 0;
}

- (BOOL)isTraditionalDevicePairedOrPairing
{
  v2 = [(IDSPairingManager *)self pairedDeviceRepository];
  v3 = [v2 allPairedDevicesWithType:0];
  v4 = [v3 count];

  return v4 != 0;
}

- (id)_identityDataErrorPairForDataProtectionClass:(unsigned int)a3
{
  v3 = *&a3;
  v4 = +[IDSRegistrationKeyManager sharedInstance];
  v5 = [v4 fullMessageProtectionIdentityForDataProtectionClass:v3];

  v12 = 0;
  v6 = [v5 dataRepresentationWithError:&v12];
  v7 = v12;
  v8 = [IDSLocalPairingIdentityDataErrorPair alloc];
  if (v6)
  {
    v9 = [v8 initWithIdentityData:v6];
  }

  else
  {
    v9 = [v8 initWithError:v7];
  }

  v10 = v9;

  return v10;
}

- (id)localDeviceRecord
{
  v3 = [(IDSPairingManager *)self _identityDataErrorPairForDataProtectionClass:1];
  v4 = [(IDSPairingManager *)self _identityDataErrorPairForDataProtectionClass:0];
  v5 = [(IDSPairingManager *)self _identityDataErrorPairForDataProtectionClass:2];
  v6 = [[IDSLocalPairingLocalDeviceRecord alloc] initWithWithFullIdentityDataClassA:v3 classC:v4 classD:v5];

  return v6;
}

- (id)pairedDeviceRecords
{
  v25 = objc_alloc_init(NSMutableDictionary);
  v3 = [(IDSPairingManager *)self pairedDeviceRepository];
  v4 = [v3 pairedDevicesWithIsPairingValue:0];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      v9 = 0;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        v11 = [NSUUID alloc];
        v12 = [v10 cbuuid];
        v13 = [v11 initWithUUIDString:v12];

        if (v13)
        {
          v14 = [IDSLocalPairingIdentityDataErrorPair alloc];
          v15 = [v10 publicClassAKey];
          v16 = [v14 initWithIdentityData:v15];

          v17 = [IDSLocalPairingIdentityDataErrorPair alloc];
          v18 = [v10 publicClassCKey];
          v19 = [v17 initWithIdentityData:v18];

          v20 = [IDSLocalPairingIdentityDataErrorPair alloc];
          v21 = [v10 publicClassDKey];
          v22 = [v20 initWithIdentityData:v21];

          v23 = [[IDSLocalPairingPairedDeviceRecord alloc] initWithCBUUID:v13 publicIdentityDataClassA:v16 classC:v19 classD:v22];
          [v25 setObject:v23 forKeyedSubscript:v13];
        }

        else
        {
          v16 = +[IMRGLog NRPairing];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138477827;
            v31 = v10;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Missing cbuuid for paired device -- skipping {pairedDevice: %{private}@}", buf, 0xCu);
          }
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v7);
  }

  return v25;
}

- (id)_cbuuidsWithIsPairingValue:(BOOL)a3
{
  v3 = a3;
  v4 = [(IDSPairingManager *)self pairedDeviceRepository];
  v5 = [v4 pairedDevicesWithIsPairingValue:v3];

  v6 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 cbuuidUUID];

        if (v13)
        {
          v14 = [v12 cbuuidUUID];
          [v6 addObject:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v6;
}

- (BOOL)shouldUseIPsecLinkForDefaultPairedDeviceAndLogQuery:(BOOL)a3
{
  v3 = a3;
  v5 = [(IDSPairingManager *)self pairedDeviceRepository];
  v6 = [v5 shouldUseIPsecLinkForDefaultPairedDevice];

  if (v3)
  {
    v7 = +[IMRGLog NRPairing];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v6)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v9 = [(IDSPairingManager *)self pairedDeviceRepository];
      v10 = [v9 activePairedDevice];
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Queried shouldUseIPsecLinkForDefaultPairedDevice {shouldUseIPsec: %@, activePairedDevice: %@}", &v12, 0x16u);
    }
  }

  return v6;
}

- (void)registerPairedDeviceWithUniqueID:(id)a3 didConnectBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [IMPair alloc];
  v9 = objc_retainBlock(v6);

  v10 = [v8 initWithFirst:v7 second:v9];
  v11 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Registering didConnectToPairedDevice block {pair: %@}", &v15, 0xCu);
  }

  if (!self->_registeredPairedDeviceDidConnectBlockPairs)
  {
    v12 = objc_alloc_init(NSMutableArray);
    registeredPairedDeviceDidConnectBlockPairs = self->_registeredPairedDeviceDidConnectBlockPairs;
    self->_registeredPairedDeviceDidConnectBlockPairs = v12;
  }

  v14 = [(IDSPairingManager *)self registeredPairedDeviceDidConnectBlockPairs];
  [v14 addObject:v10];
}

- (void)_callPairedDeviceDidConnectBlocksForUniqueID:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(IDSPairingManager *)self registeredPairedDeviceDidConnectBlockPairs];
    *buf = 138412802;
    v26 = v6;
    v27 = 2112;
    v28 = v7;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Calling didConnectToPairedDeviceBlocks {cbuuid: %@, error: %@, pairs: %@}", buf, 0x20u);
  }

  v10 = [(IDSPairingManager *)self registeredPairedDeviceDidConnectBlockPairs];

  if (v10)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = [(IDSPairingManager *)self registeredPairedDeviceDidConnectBlockPairs];
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          v17 = [v16 first];
          v18 = [v17 isEqual:v6];

          if (v18)
          {
            v19 = [v16 second];
            (v19)[2](v19, v7);
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }
  }

  [(IDSPairingManager *)self _clearPairedDeviceDidConnectBlocksForUniqueID:v6];
}

- (void)_clearPairedDeviceDidConnectBlocksForUniqueID:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(IDSPairingManager *)self registeredPairedDeviceDidConnectBlockPairs];
    *buf = 138412546;
    v25 = v4;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Clearing didConnectToPairedDeviceBlocks {cbuuid: %@, pairs: %@}", buf, 0x16u);
  }

  v7 = [(IDSPairingManager *)self registeredPairedDeviceDidConnectBlockPairs];

  if (v7)
  {
    v8 = objc_alloc_init(NSMutableArray);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [(IDSPairingManager *)self registeredPairedDeviceDidConnectBlockPairs];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v15 = [v14 first];
          v16 = [v15 isEqual:v4];

          if (v16)
          {
            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    v17 = [(IDSPairingManager *)self registeredPairedDeviceDidConnectBlockPairs];
    [v17 removeObjectsInArray:v8];

    if (![(NSMutableArray *)self->_registeredPairedDeviceDidConnectBlockPairs count])
    {
      registeredPairedDeviceDidConnectBlockPairs = self->_registeredPairedDeviceDidConnectBlockPairs;
      self->_registeredPairedDeviceDidConnectBlockPairs = 0;
    }
  }
}

- (BOOL)updatePairedDeviceWithCBUUID:(id)a3 supportIPsec:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 UUIDString];
  v7 = [(IDSPairingManager *)self pairedDeviceRepository];
  LOBYTE(v4) = [v7 updatePairedDeviceWithCBUUID:v6 supportIPsec:v4];

  return v4;
}

- (BOOL)updateLocalPairedDevice:(id)a3 pairingType:(int64_t)a4
{
  v6 = a3;
  v7 = [(IDSPairingManager *)self pairedDevicePairingType];
  v8 = [(IDSPairingManager *)self pairedDeviceRepository];
  v9 = [v8 updatePairedDeviceWithCBUUID:v6 pairingType:a4];

  if (v9 && v7 != a4)
  {
    [(IDSPairingManager *)self pairedDevice];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10049CB18;
    v13 = v12[3] = &unk_100BDD768;
    v10 = v13;
    [(IDSPairingManager *)self _notifyDelegatesWithBlock:v12];
  }

  return v9;
}

- (BOOL)setPairedDeviceInfo:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v32 = "[IDSPairingManager setPairedDeviceInfo:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v6 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received paired device info: %@", buf, 0xCu);
  }

  if (![v4 count])
  {
    v10 = +[IMRGLog NRPairing];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_100921600();
    }

    goto LABEL_31;
  }

  v7 = [(IDSPairingManager *)self pairedDeviceUUIDString];
  v8 = [v7 length];

  if (!v8)
  {
    v10 = +[IMRGLog NRPairing];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_100921580();
    }

LABEL_31:
    LOBYTE(v13) = 0;
    goto LABEL_32;
  }

  v9 = [(IDSPairingManager *)self isPaired];
  v10 = [(IDSPairingManager *)self _activePairedDeviceCBUUID];
  v11 = [(IDSPairingManager *)self isMissingAnyPublicKeyForPairedDeviceWithCBUUID:v10];
  v12 = [(IDSPairingManager *)self pairedDeviceRepository];
  v13 = [v12 updatePairedDeviceWithCBUUID:v10 deviceInfoPayload:v4];

  [(IDSPairingManager *)self _updateActiveStateForAllPairedDevices:1];
  v14 = [(IDSPairingManager *)self isMissingAnyPublicKeyForPairedDeviceWithCBUUID:v10];
  v15 = [(IDSPairingManager *)self pairedDeviceRepository];
  v16 = [v15 pairedDeviceWithCBUUID:v10];

  v17 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"NO";
    if (v13)
    {
      v18 = @"YES";
    }

    *buf = 138412546;
    v32 = v18;
    v33 = 2112;
    v34 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Updated paired device? %@ updated state: %@", buf, 0x16u);
  }

  if (v13)
  {
    v30 = v16;
    v19 = [(IDSPairingManager *)self isPaired];
    v29 = v19 ^ 1 | v9;
    if ((v29 & 1) == 0)
    {
      [(IDSPairingManager *)self _updatePairedState:1];
    }

    v20 = +[IDSCurrentDevice sharedInstance];
    v21 = [v20 hasAllEncryptionKeys];

    if ((v19 & v11) == 1 && v14 != 1 && v21)
    {
      v22 = +[IMRGLog NRPairing];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "We were missing keys from the remote device, resuming OTR session negotiation", buf, 2u);
      }

      v23 = +[IDSOTRController sharedInstance];
      [v23 resumeSessionNegotiation];
    }

    v16 = v30;
    if ([(IDSPairingManager *)self pairedDeviceServiceMinCompatibilityVersion]>= 3)
    {
      v24 = +[IMRGLog watchPairing];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "This device supports cloud delivery, updating flag to enable it when possbile", buf, 2u);
      }

      v25 = +[IDSUTunDeliveryController sharedInstance];
      [v25 setPendingCloudFlagOnDefaultPeer];
    }

    if ((v29 & 1) == 0)
    {
      v26 = [(IDSPairingManager *)self pairedDeviceRepository];
      v27 = [v26 pairedDeviceWithCBUUID:v10];

      [(IDSPairingManager *)self _notifyDelegatesDevicePairedToDevice:v27];
    }
  }

LABEL_32:
  return v13;
}

- (BOOL)isMissingAnyPublicKeyForPairedDeviceWithCBUUID:(id)a3
{
  v4 = a3;
  v5 = [(IDSPairingManager *)self pairedDeviceRepository];
  v6 = [v5 pairedDeviceWithCBUUID:v4];

  LOBYTE(v5) = [v6 hasAllPublicKeys];
  return v5 ^ 1;
}

- (id)_createRegistrationProperties:(BOOL)a3 maxCompatibilityVersion:(id)a4 BTOutOfBandKey:(id)a5 supportsIPsecWithSPPLink:(BOOL)a6 bluetoothMACAddress:(id)a7
{
  v8 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v14 = objc_alloc_init(NRDevicePairingProperties);
  if (v11)
  {
    [v14 setPairingProtocolVersion:{objc_msgSend(v11, "unsignedIntegerValue")}];
  }

  [v14 setWasInitiallySetupUsingIDSPairing:v10];
  if (v10)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  [v14 setOutOfBandKey:v15];
  [v14 setBluetoothMACAddress:v13];

  [v14 setPairWithSPPLink:v8];

  return v14;
}

- (void)_networkRelayRegisterDeviceWithCBUUID:(id)a3 wasInitiallySetupUsingIDSPairing:(BOOL)a4 maxCompatibilityVersion:(id)a5 BTOutOfBandKey:(id)a6 supportsIPsecWithSPPLink:(BOOL)a7 bluetoothMACAddress:(id)a8
{
  v9 = a7;
  v12 = a4;
  v14 = a3;
  v15 = [(IDSPairingManager *)self _createRegistrationProperties:v12 maxCompatibilityVersion:a5 BTOutOfBandKey:a6 supportsIPsecWithSPPLink:v9 bluetoothMACAddress:a8];
  [(IDSPairingManager *)self _networkRelayRegisterDeviceWithCBUUID:v14 properties:v15 shouldPairDirectlyOverIPsec:0];
}

- (void)_networkRelayRegisterDeviceWithCBUUID:(id)a3 properties:(id)a4 shouldPairDirectlyOverIPsec:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(IDSPairingManager *)self _nrDeviceIdentifierWithCBUUID:v8];
  v11 = +[IMRGLog NRPairing];
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138478339;
      v21 = v10;
      v22 = 2113;
      v23 = v9;
      v24 = 2113;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Calling [NRDeviceManager registerDevice:properties:queue:completionBlock:] {nrDeviceIdentifier: %{private}@, properties: %{private}@, cbuuid: %{private}@}", buf, 0x20u);
    }

    v13 = [(IDSPairingManager *)self nrDeviceManager];
    v14 = im_primary_queue();
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10049D394;
    v15[3] = &unk_100BDD790;
    v16 = v8;
    v19 = a5;
    v17 = v10;
    v18 = self;
    [v13 registerDevice:v17 properties:v9 queue:v14 completionBlock:v15];

    v12 = v16;
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    sub_10092167C();
  }
}

- (BOOL)updatePairedDeviceBuildVersion:(id)a3 productVersion:(id)a4 productName:(id)a5 pairingProtocolVersion:(unsigned int)a6 minCompatibilityVersion:(unsigned int)a7 maxCompatibilityVersion:(unsigned int)a8 serviceMinCompatibilityVersion:(unsigned __int16)a9 capabilityFlags:(unint64_t)a10 deviceUniqueID:(id)a11
{
  LODWORD(v83) = a7;
  HIDWORD(v83) = a8;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v85 = a11;
  v17 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v90 = "[IDSPairingManager updatePairedDeviceBuildVersion:productVersion:productName:pairingProtocolVersion:minCompatibilityVersion:maxCompatibilityVersion:serviceMinCompatibilityVersion:capabilityFlags:deviceUniqueID:]";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v18 = +[IMRGLog pairingProtocolDebug];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *v90 = "[IDSPairingManager updatePairedDeviceBuildVersion:productVersion:productName:pairingProtocolVersion:minCompatibilityVersion:maxCompatibilityVersion:serviceMinCompatibilityVersion:capabilityFlags:deviceUniqueID:]";
    *&v90[8] = 1024;
    LODWORD(v91) = a6;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s setting version %u", buf, 0x12u);
  }

  v19 = [(IDSPairingManager *)self pairedDeviceRepository];
  v20 = [v19 activePairedDevice];
  v79 = [v20 supportIPsec];

  v21 = [objc_opt_class() _isIPsecSupportedByCapabilityFlags:a10];
  v80 = [objc_opt_class() _isTinkerPairedInCapabilityFlags:a10];
  v22 = [(IDSPairingManager *)self _activePairedDeviceCBUUID];
  v84 = v16;
  if (v22)
  {
    v77 = [(IDSPairingManager *)self pairedDeviceUniqueID];
    v23 = [(IDSPairingManager *)self pairedDeviceBuildVersion];
    v82 = [(IDSPairingManager *)self pairedDeviceProductVersion];
    v81 = [(IDSPairingManager *)self pairedDeviceProductName];
    v72 = [(IDSPairingManager *)self pairedDevicePairingProtocolVersion];
    HIDWORD(v71) = [(IDSPairingManager *)self pairedDeviceMinCompatibilityVersion];
    LODWORD(v71) = [(IDSPairingManager *)self pairedDeviceMaxCompatibilityVersion];
    v73 = [(IDSPairingManager *)self pairedDeviceServiceMinCompatibilityVersion];
    v75 = [(IDSPairingManager *)self activePairedDeviceHasPairingType:1];
    v24 = +[IMRGLog watchPairing];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v90 = v23;
      *&v90[8] = 2112;
      v91 = v14;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "buildVersion                   %@ vs %@", buf, 0x16u);
    }

    v25 = +[IMRGLog watchPairing];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v90 = v82;
      *&v90[8] = 2112;
      v91 = v15;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "productVersion                 %@ vs %@", buf, 0x16u);
    }

    v76 = v23;

    v26 = +[IMRGLog watchPairing];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v90 = v81;
      *&v90[8] = 2112;
      v91 = v16;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "productName                    %@ vs %@", buf, 0x16u);
    }

    v27 = +[IMRGLog watchPairing];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v90 = v72;
      *&v90[4] = 1024;
      *&v90[6] = a6;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "pairingProtocolVersion         %d vs %d", buf, 0xEu);
    }

    v28 = +[IMRGLog watchPairing];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v90 = HIDWORD(v71);
      *&v90[4] = 1024;
      *&v90[6] = v83;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "minCompatibilityVersion        %d vs %d", buf, 0xEu);
    }

    v29 = +[IMRGLog watchPairing];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v90 = v71;
      *&v90[4] = 1024;
      *&v90[6] = HIDWORD(v83);
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "maxCompatibilityVersion        %d vs %d", buf, 0xEu);
    }

    v30 = +[IMRGLog watchPairing];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v90 = v73;
      *&v90[4] = 1024;
      *&v90[6] = a9;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "serviceMinCompatibilityVersion %d vs %d", buf, 0xEu);
    }

    v31 = +[IMRGLog watchPairing];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = @"NO";
      if (v79)
      {
        v33 = @"YES";
      }

      else
      {
        v33 = @"NO";
      }

      if (v21)
      {
        v32 = @"YES";
      }

      *buf = 138412546;
      *v90 = v33;
      *&v90[8] = 2112;
      v91 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "supportIPsec                  %@ vs %@", buf, 0x16u);
    }

    v34 = +[IMRGLog watchPairing];
    v35 = v85;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v36 = @"NO";
      if (v75)
      {
        v37 = @"YES";
      }

      else
      {
        v37 = @"NO";
      }

      if (v80)
      {
        v36 = @"YES";
      }

      *buf = 138412546;
      *v90 = v37;
      *&v90[8] = 2112;
      v91 = v36;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "isTinkerPaired                       %@ vs %@", buf, 0x16u);
    }

    v38 = [(IDSPairingManager *)self pairedDeviceRepository];
    LOWORD(v70) = a9;
    v39 = [v38 updatePairedDeviceWithCBUUID:v22 deviceUniqueID:v85 buildVersion:v14 productVersion:v15 productName:v16 pairingProtocolVersion:a6 minCompatibilityVersion:v83 maxCompatibilityVersion:v70 serviceMinCompatibilityVersion:?];

    v40 = [[NSUUID alloc] initWithUUIDString:v22];
    v41 = v40;
    v78 = v15;
    if (!v39)
    {
      v54 = +[IMRGLog watchPairing];
      v53 = v77;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
      {
        sub_100921764();
      }

      goto LABEL_88;
    }

    v74 = v40;
    v42 = [(IDSPairingManager *)self isPaired];
    if (!(v75 & 1 | ((v80 & 1) == 0)))
    {
      v43 = +[IMRGLog NRPairing];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Device wants Tinker pairing - updating repository", buf, 2u);
      }

      v44 = [(IDSPairingManager *)self pairedDeviceRepository];
      [v44 updatePairedDeviceWithCBUUID:v22 pairingType:1];
    }

    v45 = [(IDSPairingManager *)self _isIPSecLinkEnabled];
    v46 = +[IMRGLog NRPairing];
    v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
    if ((v45 & v21) == 1)
    {
      if (v47)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Device supports IPsec - Registering", buf, 2u);
      }

      if ((v79 & 1) == 0)
      {
        [(IDSPairingManager *)self setShouldQuickSwitchAfterIPSecConnected:1];
      }

      v48 = [(IDSPairingManager *)self pairedDeviceRepository];
      [v48 updatePairedDeviceWithCBUUID:v22 supportIPsec:1];

      v49 = +[IDSUTunDeliveryController sharedInstance];
      [v49 addConnectivityDelegate:self];

      v50 = +[IDSUTunDeliveryController sharedInstance];
      [v50 startIdsNRDeviceBridgeAndPreferenceHandlerWithIdentifier:v74];

      cbuuidToBTOutOfBandKeyDictionary = self->_cbuuidToBTOutOfBandKeyDictionary;
      v35 = v85;
      if (cbuuidToBTOutOfBandKeyDictionary)
      {
        v52 = [(NSMutableDictionary *)cbuuidToBTOutOfBandKeyDictionary objectForKeyedSubscript:v22];
      }

      else
      {
        v52 = 0;
      }

      v53 = v77;
      if (v52 != 0 || v42)
      {
        v58 = [NSNumber numberWithUnsignedInt:HIDWORD(v83)];
        [(IDSPairingManager *)self _networkRelayRegisterDeviceWithCBUUID:v74 wasInitiallySetupUsingIDSPairing:v42 maxCompatibilityVersion:v58 BTOutOfBandKey:v52 supportsIPsecWithSPPLink:0 bluetoothMACAddress:0];
      }

      else
      {
        v58 = +[IMRGLog NRPairing];
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          sub_1009217A0();
        }
      }

      v41 = v74;
      if (!v42)
      {
        goto LABEL_89;
      }
    }

    else
    {
      if (v47)
      {
        v55 = @"NO";
        if (v45)
        {
          v56 = @"YES";
        }

        else
        {
          v56 = @"NO";
        }

        if (v21)
        {
          v55 = @"YES";
        }

        *buf = 138543618;
        *v90 = v56;
        *&v90[8] = 2114;
        v91 = v55;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Some device does not support IPsec - EnablingOTRForDefaultPairedDevice {localDeviceSupportIPsec: %{public}@, remoteDeviceSupportIPsec: %{public}@}", buf, 0x16u);
      }

      v57 = +[IDSUTunDeliveryController sharedInstance];
      [v57 enableOTRForDefaultPairedDevice];

      v41 = v74;
      [(IDSPairingManager *)self _callPairedDeviceDidConnectBlocksForUniqueID:v74 withError:0];
      v35 = v85;
      v53 = v77;
      if (!v42)
      {
        goto LABEL_89;
      }
    }

    v59 = [v53 isEqualToIgnoringCase:v35];
    v60 = [v76 isEqualToIgnoringCase:v14];
    v61 = [v82 isEqualToIgnoringCase:v78];
    v62 = [v81 isEqualToIgnoringCase:v84];
    if (v60 && v61 && (v62 & 1) != 0)
    {
      v54 = [(IDSPairingManager *)self pairedDevice];
      if (v59)
      {
        v53 = v77;
        if (v80 == v75)
        {
          if (v72 == a6 && v71 == __PAIR64__(v83, HIDWORD(v83)))
          {
            goto LABEL_82;
          }

          v63 = +[IMRGLog watchPairing];
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v90 = v54;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Notifying all IDS accounts protocol information is different: %@", buf, 0xCu);
          }

          v64 = v87;
          v87[0] = _NSConcreteStackBlock;
          v87[1] = 3221225472;
          v65 = sub_10049E25C;
LABEL_81:
          v64[2] = v65;
          v64[3] = &unk_100BDD768;
          v54 = v54;
          v64[4] = v54;
          [(IDSPairingManager *)self _notifyDelegatesWithBlock:v64];

LABEL_82:
          v41 = v74;
          if (a9 >= 3u && v73 != a9)
          {
            v67 = +[IMRGLog watchPairing];
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "This device now supports cloud delivery, updating flag to enable it when possbile", buf, 2u);
            }

            v68 = +[IDSUTunDeliveryController sharedInstance];
            [v68 setPendingCloudFlagOnDefaultPeer];

            v41 = v74;
          }

          [(IDSPairingManager *)self _requestPairedDeviceInfoAfterDelay:0.0];
LABEL_88:

LABEL_89:
          v15 = v78;
          goto LABEL_90;
        }

LABEL_78:
        v66 = +[IMRGLog watchPairing];
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v90 = v54;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Notifying all IDS accounts paired device updated: %@", buf, 0xCu);
        }

        v64 = v88;
        v88[0] = _NSConcreteStackBlock;
        v88[1] = 3221225472;
        v65 = sub_10049E1FC;
        goto LABEL_81;
      }
    }

    else
    {
      v54 = [(IDSPairingManager *)self pairedDevice];
    }

    v53 = v77;
    goto LABEL_78;
  }

  v53 = +[IMRGLog watchPairing];
  v35 = v85;
  if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
  {
    sub_100921764();
  }

  LOBYTE(v39) = 0;
LABEL_90:

  return v39;
}

- (BOOL)updatePairedDeviceiCloudURIs:(id)a3 pushToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(IDSPairingManager *)self activePairedDeviceHasPairingType:1])
  {
    v8 = [(IDSPairingManager *)self pairedDevicePushToken];
    v9 = [(IDSPairingManager *)self pairedDeviceiCloudURIs];
    v10 = [NSSet setWithArray:v9];

    v11 = [(IDSPairingManager *)self _activePairedDeviceCBUUID];
    v12 = [(IDSPairingManager *)self pairedDeviceRepository];
    v13 = [v12 updatePairedDeviceWithCBUUID:v11 iCloudURIs:v6 pushToken:v7];

    if ([v8 isEqualToData:v7])
    {
      v14 = [NSSet setWithArray:v6];
      v15 = [v10 isEqualToSet:v14];

      if (!v13)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v15 = 0;
      if (!v13)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    if ((v15 & 1) == 0)
    {
      [(IDSPairingManager *)self pairedDevice];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10049E4B4;
      v19 = v18[3] = &unk_100BDD768;
      v16 = v19;
      [(IDSPairingManager *)self _notifyDelegatesWithBlock:v18];
    }

    goto LABEL_11;
  }

  v8 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100921834();
  }

  LOBYTE(v13) = 0;
LABEL_12:

  return v13;
}

- (void)refreshPairedDeviceEncryptionKeys
{
  v3 = +[IMRGLog regeneration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Refreshing Paired Device Encryption Keys", buf, 2u);
  }

  v4 = +[IMRGLog regeneration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Suspending OTR sessions for protection classes A and C...", v10, 2u);
  }

  [(IDSPairingManager *)self _suspendOTRSessionsWithProtectionClass:1];
  [(IDSPairingManager *)self _suspendOTRSessionsWithProtectionClass:0];
  v5 = [(IDSPairingManager *)self _purgeSecuredEncryptionKeysForAllPairedDevices];
  v6 = +[IMRGLog regeneration];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Purged all paired device encryption keys. Requesting paired device info...", v9, 2u);
    }

    [(IDSPairingManager *)self _requestPairedDeviceInfoAfterDelay:0.0];
    v7 = +[IMRGLog regeneration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Requested paired device info. Refresh Complete!", v8, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    sub_1009218A8();
  }
}

+ (void)devicePairingProtocolVersion:(unsigned int *)a3 minCompatibilityVersion:(unsigned int *)a4 maxCompatibilityVersion:(unsigned int *)a5
{
  *a3 = 0;
  *a4 = -1;
  *a5 = -1;
  v8 = qword_100CBD4A0;
  if (qword_100CBD4A0 || (v8 = IMWeakLinkClass(), (qword_100CBD4A0 = v8) != 0))
  {
    v9 = [v8 sharedInstance];
    *a3 = [v9 pairingCompatibilityVersion];
    *a4 = [v9 minPairingCompatibilityVersion];
    *a5 = [v9 maxPairingCompatibilityVersion];
  }

  v10 = +[IMRGLog pairingProtocolDebug];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *a3;
    v12 = *a4;
    v13 = *a5;
    v14 = 136315906;
    v15 = "+[IDSPairingManager devicePairingProtocolVersion:minCompatibilityVersion:maxCompatibilityVersion:]";
    v16 = 1024;
    v17 = v11;
    v18 = 1024;
    v19 = v12;
    v20 = 1024;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s reading version: %u, min/max: %u/%u", &v14, 0x1Eu);
  }
}

- (void)deliveryController:(id)a3 foundNearbyIPsecCapableDeviceWithUniqueID:(id)a4
{
  v5 = a4;
  v6 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PairingManager found nearbyIPsec device", buf, 2u);
  }

  if ([v5 isEqualToString:IDSDeviceDefaultPairedDeviceUniqueID])
  {
    v7 = +[IMRGLog NRPairing];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(IDSPairingManager *)self pairedDeviceUUIDString];
      *buf = 138478083;
      v23 = v5;
      v24 = 2113;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Replacing uniqueID with pairedDeviceUniqueID {uniqueID: %{private}@, pairedDeviceUUIDString: %{private}@}", buf, 0x16u);
    }

    v9 = [(IDSPairingManager *)self pairedDeviceUUIDString];

    v5 = v9;
  }

  v10 = [[NSUUID alloc] initWithUUIDString:v5];
  v11 = [(IDSPairingManager *)self pairedDeviceUUIDString];
  v12 = [v11 isEqualToString:v5];

  if (v12)
  {
    if ([(IDSPairingManager *)self shouldQuickSwitchAfterIPSecConnected])
    {
      [(IDSPairingManager *)self setShouldQuickSwitchAfterIPSecConnected:0];
      v13 = +[IMRGLog NRPairing];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "SupportIPSec status updated.  Should now QuickSwitch to using IPSec.", buf, 2u);
      }

      v14 = +[IDSQuickSwitchHelper sharedInstance];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10049EB7C;
      v18[3] = &unk_100BDD7B8;
      v19 = v5;
      v20 = self;
      v21 = v10;
      [v14 initiateQuickSwitchToDeviceWithCBUUID:v19 force:1 completionBlock:v18];
    }

    else
    {
      v17 = +[IMRGLog NRPairing];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "ActivePairedDevice alread marked with supportIPsec -- Done", buf, 2u);
      }

      [(IDSPairingManager *)self _callPairedDeviceDidConnectBlocksForUniqueID:v10 withError:0];
    }
  }

  else
  {
    v15 = +[IMRGLog NRPairing];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(IDSPairingManager *)self pairedDeviceUniqueID];
      *buf = 138478083;
      v23 = v16;
      v24 = 2113;
      v25 = v5;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Device found IPsec nearby but is not active paired device -- Ignoring {pairedDeviceUniqueID: %{private}@, uniqueID: %{private}@}", buf, 0x16u);
    }
  }
}

- (id)_nrDeviceIdentifierWithCBUUID:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:v3];
    if (v4)
    {
      goto LABEL_9;
    }

    v5 = +[IMRGLog NRPairing];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1009218E4();
    }
  }

  else
  {
    v5 = +[IMRGLog NRPairing];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100921954();
    }

    v4 = 0;
  }

LABEL_9:

  return v4;
}

@end