@interface IDSPairingManager
+ (IDSPairingManager)sharedInstance;
+ (void)devicePairingProtocolVersion:(unsigned int *)version minCompatibilityVersion:(unsigned int *)compatibilityVersion maxCompatibilityVersion:(unsigned int *)maxCompatibilityVersion;
- (BOOL)_hasAllEncryptionKeys;
- (BOOL)_isPairedToDevice:(id)device;
- (BOOL)_markSecuredEncryptionKeysAsRegenerated:(BOOL)regenerated;
- (BOOL)_purgeSecuredEncryptionKeysForAllPairedDevices;
- (BOOL)activePairedDeviceHasPairingType:(int64_t)type;
- (BOOL)addLocalPairedDevice:(id)device BTOutOfBandKey:(id)key shouldPairDirectlyOverIPsec:(BOOL)psec pairingType:(int64_t)type bluetoothMACAddress:(id)address;
- (BOOL)isCurrentDevicePairedOrPairing;
- (BOOL)isMissingAnyPublicKeyForPairedDeviceWithCBUUID:(id)d;
- (BOOL)isPaired;
- (BOOL)isTraditionalDevicePairedOrPairing;
- (BOOL)removeLocalPairedDevice:(id)device;
- (BOOL)setPairedDeviceInfo:(id)info;
- (BOOL)shouldUseIPsecLinkForDefaultPairedDeviceAndLogQuery:(BOOL)query;
- (BOOL)updateLocalPairedDevice:(id)device pairingType:(int64_t)type;
- (BOOL)updatePairedDeviceBuildVersion:(id)version productVersion:(id)productVersion productName:(id)name pairingProtocolVersion:(unsigned int)protocolVersion minCompatibilityVersion:(unsigned int)compatibilityVersion maxCompatibilityVersion:(unsigned int)maxCompatibilityVersion serviceMinCompatibilityVersion:(unsigned __int16)minCompatibilityVersion capabilityFlags:(unint64_t)self0 deviceUniqueID:(id)self1;
- (BOOL)updatePairedDeviceWithCBUUID:(id)d supportIPsec:(BOOL)psec;
- (BOOL)updatePairedDeviceiCloudURIs:(id)is pushToken:(id)token;
- (IDSPairingManager)init;
- (IDSPairingManager)initWithNRDeviceManager:(id)manager pairedDeviceRepository:(id)repository;
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
- (id)_cbuuidsWithIsPairingValue:(BOOL)value;
- (id)_createRegistrationProperties:(BOOL)properties maxCompatibilityVersion:(id)version BTOutOfBandKey:(id)key supportsIPsecWithSPPLink:(BOOL)link bluetoothMACAddress:(id)address;
- (id)_identityDataErrorPairForDataProtectionClass:(unsigned int)class;
- (id)_localDevicePrivateData;
- (id)_nrDeviceIdentifierWithCBUUID:(id)d;
- (id)allPairedDevicesWithType:(int64_t)type;
- (id)localDeviceRecord;
- (id)pairedDeviceBuildVersion;
- (id)pairedDeviceForUniqueID:(id)d;
- (id)pairedDeviceHandlesWithPairingType:(int64_t)type;
- (id)pairedDeviceProductName;
- (id)pairedDeviceRecords;
- (id)pairedDeviceiCloudURIs;
- (id)uniqueIDToCbuuidsOfPairingDevicesDictionary;
- (int64_t)_migrateSecuredEncryptionKeys;
- (int64_t)activatePairedDeviceWithCBUUID:(id)d;
- (int64_t)pairedDevicePairingType;
- (unint64_t)_hasRegeneratedSecuredEncryptionKeys;
- (unsigned)pairedDeviceMaxCompatibilityVersion;
- (unsigned)pairedDeviceMinCompatibilityVersion;
- (unsigned)pairedDevicePairingProtocolVersion;
- (unsigned)pairedDeviceServiceMinCompatibilityVersion;
- (void)_callPairedDeviceDidConnectBlocksForUniqueID:(id)d withError:(id)error;
- (void)_clearPairedDeviceDidConnectBlocksForUniqueID:(id)d;
- (void)_loadPairedDevicePropertiesIfNeeded;
- (void)_networkRelayRegisterDeviceWithCBUUID:(id)d properties:(id)properties shouldPairDirectlyOverIPsec:(BOOL)psec;
- (void)_networkRelayRegisterDeviceWithCBUUID:(id)d wasInitiallySetupUsingIDSPairing:(BOOL)pairing maxCompatibilityVersion:(id)version BTOutOfBandKey:(id)key supportsIPsecWithSPPLink:(BOOL)link bluetoothMACAddress:(id)address;
- (void)_notifyDelegatesDevicePairedToDevice:(id)device;
- (void)_notifyDelegatesDeviceUnpairedFromDevice:(id)device;
- (void)_notifyDelegatesWithBlock:(id)block;
- (void)_regenerateSecuredEncryptionKeys;
- (void)_requestPairedDeviceInfo;
- (void)_suspendOTRSessionsWithProtectionClass:(unsigned int)class;
- (void)_updateActiveStateForAllPairedDevices:(BOOL)devices;
- (void)_updatePairedState:(BOOL)state;
- (void)addDelegate:(id)delegate;
- (void)deactivatePairedDevices;
- (void)dealloc;
- (void)deliveryController:(id)controller foundNearbyIPsecCapableDeviceWithUniqueID:(id)d;
- (void)disconnectActivePairedDevice;
- (void)ensureCommunicationWithActivePairedDeviceIsPossible;
- (void)gatherLocalDeviceInfoWithCompletionBlock:(id)block;
- (void)refreshPairedDeviceEncryptionKeys;
- (void)registerPairedDeviceWithUniqueID:(id)d didConnectBlock:(id)block;
- (void)removeDelegate:(id)delegate;
- (void)setBTOutOfBandKey:(id)key forCBUUID:(id)d;
- (void)updateNetworkRelayStateForAllPairedDevices;
@end

@implementation IDSPairingManager

- (NSString)pairedDeviceUniqueID
{
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  activePairedDevice = [pairedDeviceRepository activePairedDevice];
  uniqueID = [activePairedDevice uniqueID];

  return uniqueID;
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
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  v6 = [pairedDeviceRepository allPairedDevicesWithType:0];

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
          uniqueID = [v11 uniqueID];
          [v4 addObject:uniqueID];
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
  selfCopy = self;
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  activePairedDevice = [pairedDeviceRepository activePairedDevice];
  LOBYTE(selfCopy) = [(IDSPairingManager *)selfCopy _isPairedToDevice:activePairedDevice];

  return selfCopy;
}

- (id)uniqueIDToCbuuidsOfPairingDevicesDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  v5 = [pairedDeviceRepository pairedDevicesWithIsPairingValue:0];

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
        cbuuid = [v11 cbuuid];
        if (cbuuid)
        {
          v13 = cbuuid;
          uniqueID = [v11 uniqueID];

          if (uniqueID)
          {
            cbuuid2 = [v11 cbuuid];
            uniqueID2 = [v11 uniqueID];
            [v3 setValue:cbuuid2 forKey:uniqueID2];
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
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  activePairedDevice = [pairedDeviceRepository activePairedDevice];
  pushToken = [activePairedDevice pushToken];

  return pushToken;
}

- (NSDictionary)pairedDevice
{
  if ([(IDSPairingManager *)self isPaired])
  {
    pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
    activePairedDevice = [pairedDeviceRepository activePairedDevice];
    dictionaryRepresentation = [activePairedDevice dictionaryRepresentation];
  }

  else
  {
    dictionaryRepresentation = 0;
  }

  return dictionaryRepresentation;
}

- (unsigned)pairedDeviceMinCompatibilityVersion
{
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  activePairedDevice = [pairedDeviceRepository activePairedDevice];
  minCompatibilityVersion = [activePairedDevice minCompatibilityVersion];

  return minCompatibilityVersion;
}

- (unsigned)pairedDevicePairingProtocolVersion
{
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  activePairedDevice = [pairedDeviceRepository activePairedDevice];
  pairingProtocolVersion = [activePairedDevice pairingProtocolVersion];

  return pairingProtocolVersion;
}

- (unsigned)pairedDeviceMaxCompatibilityVersion
{
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  activePairedDevice = [pairedDeviceRepository activePairedDevice];
  maxCompatibilityVersion = [activePairedDevice maxCompatibilityVersion];

  return maxCompatibilityVersion;
}

- (unsigned)pairedDeviceServiceMinCompatibilityVersion
{
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  activePairedDevice = [pairedDeviceRepository activePairedDevice];
  serviceMinCompatibilityVersion = [activePairedDevice serviceMinCompatibilityVersion];

  return serviceMinCompatibilityVersion;
}

- (id)_activePairedDeviceCBUUID
{
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  activePairedDevice = [pairedDeviceRepository activePairedDevice];
  cbuuid = [activePairedDevice cbuuid];

  return cbuuid;
}

- (NSDictionary)pairedDevicePrivateData
{
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  activePairedDevice = [pairedDeviceRepository activePairedDevice];
  privateData = [activePairedDevice privateData];

  return privateData;
}

- (NSSet)allPairedUniqueIDs
{
  v3 = objc_alloc_init(NSMutableSet);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  allPairedDevices = [pairedDeviceRepository allPairedDevices];

  v6 = [allPairedDevices countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allPairedDevices);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([(IDSPairingManager *)self _isPairedToDevice:v10])
        {
          uniqueID = [v10 uniqueID];
          [v3 addObject:uniqueID];
        }
      }

      v7 = [allPairedDevices countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v3;
}

- (void)_notifyDelegatesWithBlock:(id)block
{
  blockCopy = block;
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

        blockCopy[2](blockCopy, *(*(&v12 + 1) + 8 * v11));
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_notifyDelegatesDevicePairedToDevice:(id)device
{
  deviceCopy = device;
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
    v11 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notifying all IDS accounts device paired to: %@", buf, 0xCu);
  }

  [deviceCopy dictionaryRepresentation];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100497954;
  v9 = v8[3] = &unk_100BDD768;
  v7 = v9;
  [(IDSPairingManager *)self _notifyDelegatesWithBlock:v8];
}

- (void)_notifyDelegatesDeviceUnpairedFromDevice:(id)device
{
  deviceCopy = device;
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
    v11 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notifying all IDS accounts device unpaired from: %@", buf, 0xCu);
  }

  [deviceCopy dictionaryRepresentation];
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

  _activePairedDeviceCBUUID = [(IDSPairingManager *)self _activePairedDeviceCBUUID];
  v5 = [_activePairedDeviceCBUUID length] == 0;

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

- (IDSPairingManager)initWithNRDeviceManager:(id)manager pairedDeviceRepository:(id)repository
{
  managerCopy = manager;
  repositoryCopy = repository;
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

    objc_storeStrong(&v10->_pairedDeviceRepository, repository);
    objc_storeStrong(&v10->_nrDeviceManager, manager);
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
      pairedDeviceUUIDString = [(IDSPairingManager *)v10 pairedDeviceUUIDString];
      if (pairedDeviceUUIDString)
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

- (void)setBTOutOfBandKey:(id)key forCBUUID:(id)d
{
  keyCopy = key;
  dCopy = d;
  if (dCopy)
  {
    cbuuidToBTOutOfBandKeyDictionary = self->_cbuuidToBTOutOfBandKeyDictionary;
    v8 = keyCopy;
    if (keyCopy)
    {
      if (!cbuuidToBTOutOfBandKeyDictionary)
      {
        v9 = objc_alloc_init(NSMutableDictionary);
        v10 = self->_cbuuidToBTOutOfBandKeyDictionary;
        self->_cbuuidToBTOutOfBandKeyDictionary = v9;

        v8 = keyCopy;
        cbuuidToBTOutOfBandKeyDictionary = self->_cbuuidToBTOutOfBandKeyDictionary;
      }

      [(NSMutableDictionary *)cbuuidToBTOutOfBandKeyDictionary setObject:v8 forKeyedSubscript:dCopy];
    }

    else
    {
      [(NSMutableDictionary *)cbuuidToBTOutOfBandKeyDictionary setObject:0 forKeyedSubscript:dCopy];
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
    pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
    self->_hasLoadedPairedDevices = [pairedDeviceRepository loadPairedDevicesFromStorage];

    if (self->_hasLoadedPairedDevices)
    {
      [(IDSPairingManager *)self _migrateSecuredEncryptionKeys];
      [(IDSPairingManager *)self _requestPairedDeviceInfoAfterDelay:10.0];
      pairedDevice = [(IDSPairingManager *)self pairedDevice];
      v5 = pairedDevice;
      if (pairedDevice)
      {
        v6[0] = _NSConcreteStackBlock;
        v6[1] = 3221225472;
        v6[2] = sub_1004984A0;
        v6[3] = &unk_100BDD768;
        v7 = pairedDevice;
        [(IDSPairingManager *)self _notifyDelegatesWithBlock:v6];
      }
    }
  }
}

- (int64_t)_migrateSecuredEncryptionKeys
{
  v2 = +[IDSRegistrationKeyManager sharedInstance];
  isUsingSecureStorageForClassA = [v2 isUsingSecureStorageForClassA];
  isUsingSecureStorageForClassC = [v2 isUsingSecureStorageForClassC];
  v5 = isUsingSecureStorageForClassC;
  if (!isUsingSecureStorageForClassA || (isUsingSecureStorageForClassC & 1) == 0)
  {
    v7 = +[IMSystemMonitor sharedInstance];
    isUnderDataProtectionLock = [v7 isUnderDataProtectionLock];

    if (isUnderDataProtectionLock)
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

    if ((isUsingSecureStorageForClassA & 1) == 0)
    {
      migrateToSecureStorageForClassA = [v2 migrateToSecureStorageForClassA];
      v11 = +[IMRGLog migration];
      v9 = v11;
      if (!migrateToSecureStorageForClassA)
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

    migrateToSecureStorageForClassC = [v2 migrateToSecureStorageForClassC];
    v13 = +[IMRGLog migration];
    v9 = v13;
    if (migrateToSecureStorageForClassC)
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

- (BOOL)_markSecuredEncryptionKeysAsRegenerated:(BOOL)regenerated
{
  if (regenerated)
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

- (void)_suspendOTRSessionsWithProtectionClass:(unsigned int)class
{
  v3 = *&class;
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
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  purgeSecuredEncryptionKeysForAllPairedDevices = [pairedDeviceRepository purgeSecuredEncryptionKeysForAllPairedDevices];

  v4 = +[IMRGLog regeneration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (purgeSecuredEncryptionKeysForAllPairedDevices)
    {
      v5 = @"YES";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Purged encryption keys for all paired devices. Success: %@", &v7, 0xCu);
  }

  return purgeSecuredEncryptionKeysForAllPairedDevices;
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
  deviceIdentifier = [v6 deviceIdentifier];
  if (deviceIdentifier)
  {
    CFDictionarySetValue(v5, IDSDevicePropertyIdentifier, deviceIdentifier);
  }

  encryptionClassAKey = [v6 encryptionClassAKey];
  if (encryptionClassAKey)
  {
    CFDictionarySetValue(v5, IDSDevicePropertyEncryptionClassAKey, encryptionClassAKey);
  }

  encryptionClassCKey = [v6 encryptionClassCKey];
  if (encryptionClassCKey)
  {
    CFDictionarySetValue(v5, IDSDevicePropertyEncryptionClassCKey, encryptionClassCKey);
  }

  encryptionClassDKey = [v6 encryptionClassDKey];
  if (encryptionClassDKey)
  {
    CFDictionarySetValue(v5, IDSDevicePropertyEncryptionKey, encryptionClassDKey);
  }

  _localDevicePrivateData = [(IDSPairingManager *)self _localDevicePrivateData];
  if (_localDevicePrivateData)
  {
    CFDictionarySetValue(v5, IDSDevicePropertyPrivateDeviceData, _localDevicePrivateData);
  }

  deviceName = [v7 deviceName];
  if (deviceName)
  {
    CFDictionarySetValue(v5, IDSDevicePropertyName, deviceName);
  }

  model = [v7 model];
  if (model)
  {
    CFDictionarySetValue(v5, IDSDevicePropertyHardwareVersion, model);
  }

  objc_autoreleasePoolPop(v4);

  return v5;
}

- (id)_localDevicePrivateData
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = +[FTDeviceSupport sharedInstance];
  supportsSMS = [v3 supportsSMS];
  supportsMMS = [v3 supportsMMS];
  supportsApplePay = [v3 supportsApplePay];
  supportsHandoff = [v3 supportsHandoff];
  supportsTethering = [v3 supportsTethering];
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
  stringValue = [v12 stringValue];
  [v2 setObject:stringValue forKeyedSubscript:IDSPrivateDeviceDataVersion];

  v14 = [NSNumber numberWithBool:supportsApplePay];
  stringValue2 = [v14 stringValue];
  [v2 setObject:stringValue2 forKeyedSubscript:IDSPrivateDeviceDataSupportsApplePay];

  v16 = [NSNumber numberWithBool:supportsHandoff];
  stringValue3 = [v16 stringValue];
  [v2 setObject:stringValue3 forKeyedSubscript:IDSPrivateDeviceDataSupportsHandoff];

  v18 = [NSNumber numberWithBool:supportsTethering];
  stringValue4 = [v18 stringValue];
  [v2 setObject:stringValue4 forKeyedSubscript:IDSPrivateDeviceDataSupportsTethering];

  v20 = [NSNumber numberWithBool:supportsSMS];
  stringValue5 = [v20 stringValue];
  [v2 setObject:stringValue5 forKeyedSubscript:IDSPrivateDeviceDataSupportsSMSRelay];

  v22 = [NSNumber numberWithBool:supportsMMS];
  stringValue6 = [v22 stringValue];
  [v2 setObject:stringValue6 forKeyedSubscript:IDSPrivateDeviceDataSupportsMMSRelay];

  v24 = [NSNumber numberWithBool:v11];
  stringValue7 = [v24 stringValue];
  [v2 setObject:stringValue7 forKeyedSubscript:IDSPrivateDeviceDataSupportsPhoneCalls];

  v26 = +[IMDeviceSupport sharedInstance];
  productBuildVersion = [v26 productBuildVersion];
  if (productBuildVersion)
  {
    CFDictionarySetValue(v2, IDSPrivateDeviceDataProductBuildVersion, productBuildVersion);
  }

  productName = [v26 productName];
  if (productName)
  {
    CFDictionarySetValue(v2, IDSPrivateDeviceDataProductName, productName);
  }

  productVersion = [v26 productVersion];
  if (productVersion)
  {
    CFDictionarySetValue(v2, IDSPrivateDeviceDataProductVersion, productVersion);
  }

  deviceColor = [v3 deviceColor];
  if (deviceColor)
  {
    CFDictionarySetValue(v2, IDSPrivateDeviceDataColor, deviceColor);
  }

  enclosureColor = [v3 enclosureColor];
  if (enclosureColor)
  {
    CFDictionarySetValue(v2, IDSPrivateDeviceDataEnclosureColor, enclosureColor);
  }

  return v2;
}

- (void)gatherLocalDeviceInfoWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 136315138;
    v31 = "[IDSPairingManager gatherLocalDeviceInfoWithCompletionBlock:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", &v30, 0xCu);
  }

  if (blockCopy)
  {
    v6 = [blockCopy copy];
    localDevice = [(IDSPairingManager *)self localDevice];
    v8 = [localDevice objectForKey:IDSDevicePropertyEncryptionKey];
    v9 = [localDevice objectForKey:IDSDevicePropertyEncryptionClassAKey];
    v10 = [localDevice objectForKey:IDSDevicePropertyEncryptionClassCKey];
    pairedDevicePublicKey = [(IDSPairingManager *)self pairedDevicePublicKey];
    if (pairedDevicePublicKey)
    {
      pairedDevicePublicClassAKey = [(IDSPairingManager *)self pairedDevicePublicClassAKey];
      if (pairedDevicePublicClassAKey)
      {
        pairedDevicePublicClassCKey = [(IDSPairingManager *)self pairedDevicePublicClassCKey];
        v14 = pairedDevicePublicClassCKey == 0;
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

      v6[2](v6, localDevice);
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
    isUnderDataProtectionLock = [v18 isUnderDataProtectionLock];

    v20 = +[IMSystemMonitor sharedInstance];
    isUnderFirstDataProtectionLock = [v20 isUnderFirstDataProtectionLock];

    v22 = +[IMRGLog pairing];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = @"NO";
      v30 = 134219010;
      v31 = v9;
      if (isUnderDataProtectionLock)
      {
        v24 = @"YES";
      }

      else
      {
        v24 = @"NO";
      }

      v32 = 2048;
      v33 = v10;
      if (isUnderFirstDataProtectionLock)
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

        v6[2](v6, localDevice);
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
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  activePairedDevice = [pairedDeviceRepository activePairedDevice];
  buildVersion = [activePairedDevice buildVersion];

  return buildVersion;
}

- (NSString)pairedDeviceProductVersion
{
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  activePairedDevice = [pairedDeviceRepository activePairedDevice];
  productVersion = [activePairedDevice productVersion];

  return productVersion;
}

- (id)pairedDeviceProductName
{
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  activePairedDevice = [pairedDeviceRepository activePairedDevice];
  productName = [activePairedDevice productName];

  return productName;
}

- (BOOL)activePairedDeviceHasPairingType:(int64_t)type
{
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  activePairedDevice = [pairedDeviceRepository activePairedDevice];
  LOBYTE(type) = [activePairedDevice pairingType] == type;

  return type;
}

- (NSSet)allPairedDevices
{
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  allPairedDevices = [pairedDeviceRepository allPairedDevices];

  return allPairedDevices;
}

- (id)allPairedDevicesWithType:(int64_t)type
{
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  v5 = [pairedDeviceRepository allPairedDevicesWithType:type];

  return v5;
}

- (id)pairedDeviceHandlesWithPairingType:(int64_t)type
{
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  v5 = [pairedDeviceRepository allPairedDevicesWithType:type];

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
        iCloudURIs = [v12 iCloudURIs];
        v14 = [iCloudURIs count];

        if (v14)
        {
          iCloudURIs2 = [v12 iCloudURIs];
          [v6 addObjectsFromArray:iCloudURIs2];
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
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  activePairedDevice = [pairedDeviceRepository activePairedDevice];
  publicClassDKey = [activePairedDevice publicClassDKey];

  return publicClassDKey;
}

- (NSData)pairedDevicePublicClassAKey
{
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  activePairedDevice = [pairedDeviceRepository activePairedDevice];
  publicClassAKey = [activePairedDevice publicClassAKey];

  return publicClassAKey;
}

- (NSData)pairedDevicePublicClassCKey
{
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  activePairedDevice = [pairedDeviceRepository activePairedDevice];
  publicClassCKey = [activePairedDevice publicClassCKey];

  return publicClassCKey;
}

- (id)pairedDeviceiCloudURIs
{
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  activePairedDevice = [pairedDeviceRepository activePairedDevice];
  iCloudURIs = [activePairedDevice iCloudURIs];

  return iCloudURIs;
}

- (int64_t)pairedDevicePairingType
{
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  activePairedDevice = [pairedDeviceRepository activePairedDevice];
  pairingType = [activePairedDevice pairingType];

  return pairingType;
}

- (BOOL)_isPairedToDevice:(id)device
{
  deviceCopy = device;
  cbuuid = [deviceCopy cbuuid];
  v5 = [cbuuid length];

  publicClassDKey = [deviceCopy publicClassDKey];
  v7 = [publicClassDKey length];

  uniqueID = [deviceCopy uniqueID];

  v9 = [uniqueID length];
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

- (id)pairedDeviceForUniqueID:(id)d
{
  dCopy = d;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  allPairedDevices = [pairedDeviceRepository allPairedDevices];

  v7 = [allPairedDevices countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(allPairedDevices);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([(IDSPairingManager *)self _isPairedToDevice:v11])
        {
          uniqueID = [v11 uniqueID];
          v13 = [uniqueID isEqualToIgnoringCase:dCopy];

          if (v13)
          {
            v14 = v11;
            goto LABEL_12;
          }
        }
      }

      v8 = [allPairedDevices countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  activePairedDevice = [pairedDeviceRepository activePairedDevice];

  publicClassAKey = [activePairedDevice publicClassAKey];
  v5 = [publicClassAKey length];

  publicClassCKey = [activePairedDevice publicClassCKey];
  v7 = [publicClassCKey length];

  publicClassDKey = [activePairedDevice publicClassDKey];
  v9 = [publicClassDKey length];

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

- (void)_updatePairedState:(BOOL)state
{
  stateCopy = state;
  notify_set_state(self->_pairingStateToken, state);
  v4 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[IDSPairingManager _updatePairedState:]";
    v8 = 2048;
    v9 = stateCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Updating notify token state to: isPaired %llu", &v6, 0x16u);
  }

  [IDSPairingStateChangedNotification UTF8String];
  v5 = IMUserScopedNotification();
  notify_post(v5);
}

- (void)_updateActiveStateForAllPairedDevices:(BOOL)devices
{
  devicesCopy = devices;
  v5 = +[IMRGLog deviceState];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Update notifier state for paired devices", buf, 2u);
  }

  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  allPairedDevices = [pairedDeviceRepository allPairedDevices];

  v8 = +[IMRGLog deviceState];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [allPairedDevices count]);
    *buf = 138412290;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "All devices count: %@", buf, 0xCu);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = allPairedDevices;
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

        uniqueID = [v16 uniqueID];
        if (devicesCopy)
        {
          v19 = +[IDSDevicePropertiesStateNotifier sharedInstance];
          [v19 updateStateForDeviceWithUniqueID:uniqueID];
        }

        else
        {
          v20 = im_primary_queue();
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10049A6DC;
          block[3] = &unk_100BD6ED0;
          v23 = uniqueID;
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

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegateMap = self->_delegateMap;
  v8 = delegateCopy;
  if (!delegateMap)
  {
    v6 = +[NSHashTable weakObjectsHashTable];
    v7 = self->_delegateMap;
    self->_delegateMap = v6;

    delegateCopy = v8;
    delegateMap = self->_delegateMap;
  }

  if (![(NSHashTable *)delegateMap containsObject:delegateCopy])
  {
    [(NSHashTable *)self->_delegateMap addObject:v8];
  }
}

- (void)removeDelegate:(id)delegate
{
  [(NSHashTable *)self->_delegateMap removeObject:delegate];
  if (![(NSHashTable *)self->_delegateMap count])
  {
    delegateMap = self->_delegateMap;
    self->_delegateMap = 0;
  }
}

- (BOOL)addLocalPairedDevice:(id)device BTOutOfBandKey:(id)key shouldPairDirectlyOverIPsec:(BOOL)psec pairingType:(int64_t)type bluetoothMACAddress:(id)address
{
  psecCopy = psec;
  deviceCopy = device;
  keyCopy = key;
  v13 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v40 = "[IDSPairingManager addLocalPairedDevice:BTOutOfBandKey:shouldPairDirectlyOverIPsec:pairingType:bluetoothMACAddress:]";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (![deviceCopy length])
  {
    v17 = +[IMRGLog NRPairing];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      sub_1009213D0();
    }

    goto LABEL_32;
  }

  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  v15 = [pairedDeviceRepository containsPairedDeviceWithCBUUID:deviceCopy];

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
  [(IDSPairingManager *)self setBTOutOfBandKey:keyCopy forCBUUID:deviceCopy];
  pairedDeviceRepository2 = [(IDSPairingManager *)self pairedDeviceRepository];
  v20 = [pairedDeviceRepository2 addPairedDeviceWithCBUUID:deviceCopy pairingType:type];

  if (v20)
  {
    pairedDeviceRepository3 = [(IDSPairingManager *)self pairedDeviceRepository];
    v22 = [pairedDeviceRepository3 activatePairedDeviceWithCBUUID:deviceCopy];

    if (!v22)
    {
      v16 = 1;
      if (!psecCopy)
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
  if (psecCopy)
  {
LABEL_18:
    v24 = [[NSUUID alloc] initWithUUIDString:deviceCopy];
    v25 = [(IDSPairingManager *)self _createRegistrationProperties:0 maxCompatibilityVersion:0 BTOutOfBandKey:keyCopy supportsIPsecWithSPPLink:0 bluetoothMACAddress:0];
    [v25 setIsAltAccountPairing:type == 1];
    [(IDSPairingManager *)self _networkRelayRegisterDeviceWithCBUUID:v24 properties:v25 shouldPairDirectlyOverIPsec:1];
    pairedDeviceRepository4 = [(IDSPairingManager *)self pairedDeviceRepository];
    [pairedDeviceRepository4 updatePairedDeviceWithCBUUID:deviceCopy supportIPsec:1];

    pairedDeviceRepository5 = [(IDSPairingManager *)self pairedDeviceRepository];
    LOWORD(v38) = 10;
    [pairedDeviceRepository5 updatePairedDeviceWithCBUUID:deviceCopy deviceUniqueID:0 buildVersion:0 productVersion:0 productName:0 pairingProtocolVersion:0 minCompatibilityVersion:0 maxCompatibilityVersion:v38 serviceMinCompatibilityVersion:?];
  }

LABEL_19:
  [(IDSPairingManager *)self _updateActiveStateForAllPairedDevices];
LABEL_20:
  isPaired = [(IDSPairingManager *)self isPaired];
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

    if (isPaired)
    {
      v30 = @"YES";
    }

    v41 = 2112;
    v42 = deviceCopy;
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
  if (isPaired)
  {
    if (v33)
    {
      *buf = 136315138;
      v40 = "[IDSPairingManager addLocalPairedDevice:BTOutOfBandKey:shouldPairDirectlyOverIPsec:pairingType:bluetoothMACAddress:]";
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%s notifying delegate that we are properly paired with a local device", buf, 0xCu);
    }

    pairedDeviceRepository6 = [(IDSPairingManager *)self pairedDeviceRepository];
    v35 = [pairedDeviceRepository6 pairedDeviceWithCBUUID:deviceCopy];

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

  [(IDSPairingManager *)self _updatePairedState:isPaired];
  v36 = 1;
LABEL_37:

  return v36;
}

- (BOOL)removeLocalPairedDevice:(id)device
{
  deviceCopy = device;
  v5 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315138;
    v21 = "[IDSPairingManager removeLocalPairedDevice:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", &v20, 0xCu);
  }

  if ([deviceCopy length])
  {
    pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
    v7 = [pairedDeviceRepository pairedDeviceWithCBUUID:deviceCopy];

    v8 = [[NSUUID alloc] initWithUUIDString:deviceCopy];
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
      nrDeviceManager = [(IDSPairingManager *)self nrDeviceManager];
      [nrDeviceManager unregisterDevice:v9];
    }

    pairedDeviceRepository2 = [(IDSPairingManager *)self pairedDeviceRepository];
    v13 = [pairedDeviceRepository2 removePairedDeviceWithCBUUID:deviceCopy];

    v14 = +[IMRGLog registration];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = @"NO";
      if (v13)
      {
        v15 = @"YES";
      }

      v20 = 138412546;
      v21 = deviceCopy;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Removed locally paired device with CBUUID: %@? %@", &v20, 0x16u);
    }

    pairedDeviceRepository3 = [(IDSPairingManager *)self pairedDeviceRepository];
    isEmpty = [pairedDeviceRepository3 isEmpty];

    if (isEmpty)
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

- (int64_t)activatePairedDeviceWithCBUUID:(id)d
{
  dCopy = d;
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
    v24 = dCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Activating a paired device with CBUUID: %@", buf, 0xCu);
  }

  _activePairedDeviceCBUUID = [(IDSPairingManager *)self _activePairedDeviceCBUUID];
  v8 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = _activePairedDeviceCBUUID;
    v25 = 2112;
    v26 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Switching active paired device from %@ to %@", buf, 0x16u);
  }

  if ([dCopy isEqualToIgnoringCase:_activePairedDeviceCBUUID])
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
    v9 = [[NSUUID alloc] initWithUUIDString:_activePairedDeviceCBUUID];
    v11 = [[NSUUID alloc] initWithUUIDString:dCopy];
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

      nrDeviceManager = [(IDSPairingManager *)self nrDeviceManager];
      [nrDeviceManager disableDevice:v12];
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

      nrDeviceManager2 = [(IDSPairingManager *)self nrDeviceManager];
      [nrDeviceManager2 enableDevice:v13];
    }

    pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
    v10 = [pairedDeviceRepository activatePairedDeviceWithCBUUID:dCopy];

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
    v24 = dCopy;
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
  cbuuidsOfPairedDevices = [(IDSPairingManager *)self cbuuidsOfPairedDevices];
  v6 = [cbuuidsOfPairedDevices countByEnumeratingWithState:&v17 objects:v25 count:16];
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
          objc_enumerationMutation(cbuuidsOfPairedDevices);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [(IDSPairingManager *)self _nrDeviceIdentifierWithCBUUID:v11, v16];
        v13 = +[IMRGLog NRPairing];
        nrDeviceManager = v13;
        if (v12)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138478083;
            v22 = v11;
            v23 = 2113;
            v24 = v12;
            _os_log_impl(&_mh_execute_header, nrDeviceManager, OS_LOG_TYPE_DEFAULT, "Disabling NetworkRelay device {pairedDeviceUUID: %{private}@, nrIdentifier: %{private}@}", buf, 0x16u);
          }

          nrDeviceManager = [(IDSPairingManager *)self nrDeviceManager];
          [nrDeviceManager disableDevice:v12];
        }

        else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = v16;
          v22 = v11;
          _os_log_error_impl(&_mh_execute_header, nrDeviceManager, OS_LOG_TYPE_ERROR, "Failed to create IDSNRDeviceIdentifier from pairedDeviceUUID - failed to deactivate device {pairedDeviceUUID: %{private}@}", buf, 0xCu);
        }
      }

      v8 = [cbuuidsOfPairedDevices countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v8);
  }

  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  [pairedDeviceRepository deactivatePairedDevices];

  [(IDSPairingManager *)self _updateActiveStateForAllPairedDevices];
}

- (void)updateNetworkRelayStateForAllPairedDevices
{
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  allPairedDevices = [pairedDeviceRepository allPairedDevices];

  v5 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = allPairedDevices;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Update registration status with NetworkRelay for active device and disable non-active devices: %@", buf, 0xCu);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = allPairedDevices;
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
          cbuuidUUID = [v12 cbuuidUUID];
          v14 = [(IDSPairingManager *)self _nrDeviceIdentifierWithCBUUID:cbuuidUUID];

          if (v14)
          {
            if ([v12 isActive])
            {
              if ([(IDSPairingManager *)self _isPairedToDevice:v12])
              {
                cbuuidUUID2 = [v12 cbuuidUUID];
                v16 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v12 maxCompatibilityVersion]);
                [(IDSPairingManager *)self _networkRelayRegisterDeviceWithCBUUID:cbuuidUUID2 wasInitiallySetupUsingIDSPairing:1 maxCompatibilityVersion:v16 BTOutOfBandKey:0 supportsIPsecWithSPPLink:0 bluetoothMACAddress:0];
              }

              else
              {
                cbuuidUUID2 = +[IMRGLog NRPairing];
                if (os_log_type_enabled(cbuuidUUID2, OS_LOG_TYPE_ERROR))
                {
                  sub_1009214E4(&v20, v21, cbuuidUUID2);
                }
              }
            }

            else
            {
              v17 = +[IMRGLog NRPairing];
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                cbuuidUUID3 = [v12 cbuuidUUID];
                *buf = v19;
                v27 = cbuuidUUID3;
                v28 = 2113;
                v29 = v14;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Disabling NetworkRelay device {cbuuidUUID: %{private}@, nrIdentifier: %{private}@}", buf, 0x16u);
              }

              cbuuidUUID2 = [(IDSPairingManager *)self nrDeviceManager];
              [cbuuidUUID2 disableDevice:v14];
            }
          }

          else
          {
            cbuuidUUID2 = +[IMRGLog NRPairing];
            if (os_log_type_enabled(cbuuidUUID2, OS_LOG_TYPE_ERROR))
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

  _activePairedDeviceCBUUID = [(IDSPairingManager *)self _activePairedDeviceCBUUID];
  if ([_activePairedDeviceCBUUID length])
  {
    v5 = [(IDSPairingManager *)self isMissingAnyPublicKeyForPairedDeviceWithCBUUID:_activePairedDeviceCBUUID];
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
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  allPairedDevices = [pairedDeviceRepository allPairedDevices];
  v4 = [allPairedDevices count];

  return v4 != 0;
}

- (BOOL)isTraditionalDevicePairedOrPairing
{
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  v3 = [pairedDeviceRepository allPairedDevicesWithType:0];
  v4 = [v3 count];

  return v4 != 0;
}

- (id)_identityDataErrorPairForDataProtectionClass:(unsigned int)class
{
  v3 = *&class;
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
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  v4 = [pairedDeviceRepository pairedDevicesWithIsPairingValue:0];

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
        cbuuid = [v10 cbuuid];
        v13 = [v11 initWithUUIDString:cbuuid];

        if (v13)
        {
          v14 = [IDSLocalPairingIdentityDataErrorPair alloc];
          publicClassAKey = [v10 publicClassAKey];
          v16 = [v14 initWithIdentityData:publicClassAKey];

          v17 = [IDSLocalPairingIdentityDataErrorPair alloc];
          publicClassCKey = [v10 publicClassCKey];
          v19 = [v17 initWithIdentityData:publicClassCKey];

          v20 = [IDSLocalPairingIdentityDataErrorPair alloc];
          publicClassDKey = [v10 publicClassDKey];
          v22 = [v20 initWithIdentityData:publicClassDKey];

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

- (id)_cbuuidsWithIsPairingValue:(BOOL)value
{
  valueCopy = value;
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  v5 = [pairedDeviceRepository pairedDevicesWithIsPairingValue:valueCopy];

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
        cbuuidUUID = [v12 cbuuidUUID];

        if (cbuuidUUID)
        {
          cbuuidUUID2 = [v12 cbuuidUUID];
          [v6 addObject:cbuuidUUID2];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v6;
}

- (BOOL)shouldUseIPsecLinkForDefaultPairedDeviceAndLogQuery:(BOOL)query
{
  queryCopy = query;
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  shouldUseIPsecLinkForDefaultPairedDevice = [pairedDeviceRepository shouldUseIPsecLinkForDefaultPairedDevice];

  if (queryCopy)
  {
    v7 = +[IMRGLog NRPairing];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (shouldUseIPsecLinkForDefaultPairedDevice)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      pairedDeviceRepository2 = [(IDSPairingManager *)self pairedDeviceRepository];
      activePairedDevice = [pairedDeviceRepository2 activePairedDevice];
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = activePairedDevice;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Queried shouldUseIPsecLinkForDefaultPairedDevice {shouldUseIPsec: %@, activePairedDevice: %@}", &v12, 0x16u);
    }
  }

  return shouldUseIPsecLinkForDefaultPairedDevice;
}

- (void)registerPairedDeviceWithUniqueID:(id)d didConnectBlock:(id)block
{
  blockCopy = block;
  dCopy = d;
  v8 = [IMPair alloc];
  v9 = objc_retainBlock(blockCopy);

  v10 = [v8 initWithFirst:dCopy second:v9];
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

  registeredPairedDeviceDidConnectBlockPairs = [(IDSPairingManager *)self registeredPairedDeviceDidConnectBlockPairs];
  [registeredPairedDeviceDidConnectBlockPairs addObject:v10];
}

- (void)_callPairedDeviceDidConnectBlocksForUniqueID:(id)d withError:(id)error
{
  dCopy = d;
  errorCopy = error;
  v8 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    registeredPairedDeviceDidConnectBlockPairs = [(IDSPairingManager *)self registeredPairedDeviceDidConnectBlockPairs];
    *buf = 138412802;
    v26 = dCopy;
    v27 = 2112;
    v28 = errorCopy;
    v29 = 2112;
    v30 = registeredPairedDeviceDidConnectBlockPairs;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Calling didConnectToPairedDeviceBlocks {cbuuid: %@, error: %@, pairs: %@}", buf, 0x20u);
  }

  registeredPairedDeviceDidConnectBlockPairs2 = [(IDSPairingManager *)self registeredPairedDeviceDidConnectBlockPairs];

  if (registeredPairedDeviceDidConnectBlockPairs2)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    registeredPairedDeviceDidConnectBlockPairs3 = [(IDSPairingManager *)self registeredPairedDeviceDidConnectBlockPairs];
    v12 = [registeredPairedDeviceDidConnectBlockPairs3 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(registeredPairedDeviceDidConnectBlockPairs3);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          first = [v16 first];
          v18 = [first isEqual:dCopy];

          if (v18)
          {
            second = [v16 second];
            (second)[2](second, errorCopy);
          }
        }

        v13 = [registeredPairedDeviceDidConnectBlockPairs3 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }
  }

  [(IDSPairingManager *)self _clearPairedDeviceDidConnectBlocksForUniqueID:dCopy];
}

- (void)_clearPairedDeviceDidConnectBlocksForUniqueID:(id)d
{
  dCopy = d;
  v5 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    registeredPairedDeviceDidConnectBlockPairs = [(IDSPairingManager *)self registeredPairedDeviceDidConnectBlockPairs];
    *buf = 138412546;
    v25 = dCopy;
    v26 = 2112;
    v27 = registeredPairedDeviceDidConnectBlockPairs;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Clearing didConnectToPairedDeviceBlocks {cbuuid: %@, pairs: %@}", buf, 0x16u);
  }

  registeredPairedDeviceDidConnectBlockPairs2 = [(IDSPairingManager *)self registeredPairedDeviceDidConnectBlockPairs];

  if (registeredPairedDeviceDidConnectBlockPairs2)
  {
    v8 = objc_alloc_init(NSMutableArray);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    registeredPairedDeviceDidConnectBlockPairs3 = [(IDSPairingManager *)self registeredPairedDeviceDidConnectBlockPairs];
    v10 = [registeredPairedDeviceDidConnectBlockPairs3 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(registeredPairedDeviceDidConnectBlockPairs3);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          first = [v14 first];
          v16 = [first isEqual:dCopy];

          if (v16)
          {
            [v8 addObject:v14];
          }
        }

        v11 = [registeredPairedDeviceDidConnectBlockPairs3 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    registeredPairedDeviceDidConnectBlockPairs4 = [(IDSPairingManager *)self registeredPairedDeviceDidConnectBlockPairs];
    [registeredPairedDeviceDidConnectBlockPairs4 removeObjectsInArray:v8];

    if (![(NSMutableArray *)self->_registeredPairedDeviceDidConnectBlockPairs count])
    {
      registeredPairedDeviceDidConnectBlockPairs = self->_registeredPairedDeviceDidConnectBlockPairs;
      self->_registeredPairedDeviceDidConnectBlockPairs = 0;
    }
  }
}

- (BOOL)updatePairedDeviceWithCBUUID:(id)d supportIPsec:(BOOL)psec
{
  psecCopy = psec;
  uUIDString = [d UUIDString];
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  LOBYTE(psecCopy) = [pairedDeviceRepository updatePairedDeviceWithCBUUID:uUIDString supportIPsec:psecCopy];

  return psecCopy;
}

- (BOOL)updateLocalPairedDevice:(id)device pairingType:(int64_t)type
{
  deviceCopy = device;
  pairedDevicePairingType = [(IDSPairingManager *)self pairedDevicePairingType];
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  v9 = [pairedDeviceRepository updatePairedDeviceWithCBUUID:deviceCopy pairingType:type];

  if (v9 && pairedDevicePairingType != type)
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

- (BOOL)setPairedDeviceInfo:(id)info
{
  infoCopy = info;
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
    v32 = infoCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received paired device info: %@", buf, 0xCu);
  }

  if (![infoCopy count])
  {
    _activePairedDeviceCBUUID = +[IMRGLog NRPairing];
    if (os_log_type_enabled(_activePairedDeviceCBUUID, OS_LOG_TYPE_FAULT))
    {
      sub_100921600();
    }

    goto LABEL_31;
  }

  pairedDeviceUUIDString = [(IDSPairingManager *)self pairedDeviceUUIDString];
  v8 = [pairedDeviceUUIDString length];

  if (!v8)
  {
    _activePairedDeviceCBUUID = +[IMRGLog NRPairing];
    if (os_log_type_enabled(_activePairedDeviceCBUUID, OS_LOG_TYPE_FAULT))
    {
      sub_100921580();
    }

LABEL_31:
    LOBYTE(v13) = 0;
    goto LABEL_32;
  }

  isPaired = [(IDSPairingManager *)self isPaired];
  _activePairedDeviceCBUUID = [(IDSPairingManager *)self _activePairedDeviceCBUUID];
  v11 = [(IDSPairingManager *)self isMissingAnyPublicKeyForPairedDeviceWithCBUUID:_activePairedDeviceCBUUID];
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  v13 = [pairedDeviceRepository updatePairedDeviceWithCBUUID:_activePairedDeviceCBUUID deviceInfoPayload:infoCopy];

  [(IDSPairingManager *)self _updateActiveStateForAllPairedDevices:1];
  v14 = [(IDSPairingManager *)self isMissingAnyPublicKeyForPairedDeviceWithCBUUID:_activePairedDeviceCBUUID];
  pairedDeviceRepository2 = [(IDSPairingManager *)self pairedDeviceRepository];
  v16 = [pairedDeviceRepository2 pairedDeviceWithCBUUID:_activePairedDeviceCBUUID];

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
    isPaired2 = [(IDSPairingManager *)self isPaired];
    v29 = isPaired2 ^ 1 | isPaired;
    if ((v29 & 1) == 0)
    {
      [(IDSPairingManager *)self _updatePairedState:1];
    }

    v20 = +[IDSCurrentDevice sharedInstance];
    hasAllEncryptionKeys = [v20 hasAllEncryptionKeys];

    if ((isPaired2 & v11) == 1 && v14 != 1 && hasAllEncryptionKeys)
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
      pairedDeviceRepository3 = [(IDSPairingManager *)self pairedDeviceRepository];
      v27 = [pairedDeviceRepository3 pairedDeviceWithCBUUID:_activePairedDeviceCBUUID];

      [(IDSPairingManager *)self _notifyDelegatesDevicePairedToDevice:v27];
    }
  }

LABEL_32:
  return v13;
}

- (BOOL)isMissingAnyPublicKeyForPairedDeviceWithCBUUID:(id)d
{
  dCopy = d;
  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  v6 = [pairedDeviceRepository pairedDeviceWithCBUUID:dCopy];

  LOBYTE(pairedDeviceRepository) = [v6 hasAllPublicKeys];
  return pairedDeviceRepository ^ 1;
}

- (id)_createRegistrationProperties:(BOOL)properties maxCompatibilityVersion:(id)version BTOutOfBandKey:(id)key supportsIPsecWithSPPLink:(BOOL)link bluetoothMACAddress:(id)address
{
  linkCopy = link;
  propertiesCopy = properties;
  versionCopy = version;
  keyCopy = key;
  addressCopy = address;
  v14 = objc_alloc_init(NRDevicePairingProperties);
  if (versionCopy)
  {
    [v14 setPairingProtocolVersion:{objc_msgSend(versionCopy, "unsignedIntegerValue")}];
  }

  [v14 setWasInitiallySetupUsingIDSPairing:propertiesCopy];
  if (propertiesCopy)
  {
    v15 = 0;
  }

  else
  {
    v15 = keyCopy;
  }

  [v14 setOutOfBandKey:v15];
  [v14 setBluetoothMACAddress:addressCopy];

  [v14 setPairWithSPPLink:linkCopy];

  return v14;
}

- (void)_networkRelayRegisterDeviceWithCBUUID:(id)d wasInitiallySetupUsingIDSPairing:(BOOL)pairing maxCompatibilityVersion:(id)version BTOutOfBandKey:(id)key supportsIPsecWithSPPLink:(BOOL)link bluetoothMACAddress:(id)address
{
  linkCopy = link;
  pairingCopy = pairing;
  dCopy = d;
  v15 = [(IDSPairingManager *)self _createRegistrationProperties:pairingCopy maxCompatibilityVersion:version BTOutOfBandKey:key supportsIPsecWithSPPLink:linkCopy bluetoothMACAddress:address];
  [(IDSPairingManager *)self _networkRelayRegisterDeviceWithCBUUID:dCopy properties:v15 shouldPairDirectlyOverIPsec:0];
}

- (void)_networkRelayRegisterDeviceWithCBUUID:(id)d properties:(id)properties shouldPairDirectlyOverIPsec:(BOOL)psec
{
  dCopy = d;
  propertiesCopy = properties;
  v10 = [(IDSPairingManager *)self _nrDeviceIdentifierWithCBUUID:dCopy];
  v11 = +[IMRGLog NRPairing];
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138478339;
      v21 = v10;
      v22 = 2113;
      v23 = propertiesCopy;
      v24 = 2113;
      v25 = dCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Calling [NRDeviceManager registerDevice:properties:queue:completionBlock:] {nrDeviceIdentifier: %{private}@, properties: %{private}@, cbuuid: %{private}@}", buf, 0x20u);
    }

    nrDeviceManager = [(IDSPairingManager *)self nrDeviceManager];
    v14 = im_primary_queue();
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10049D394;
    v15[3] = &unk_100BDD790;
    v16 = dCopy;
    psecCopy = psec;
    v17 = v10;
    selfCopy = self;
    [nrDeviceManager registerDevice:v17 properties:propertiesCopy queue:v14 completionBlock:v15];

    v12 = v16;
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    sub_10092167C();
  }
}

- (BOOL)updatePairedDeviceBuildVersion:(id)version productVersion:(id)productVersion productName:(id)name pairingProtocolVersion:(unsigned int)protocolVersion minCompatibilityVersion:(unsigned int)compatibilityVersion maxCompatibilityVersion:(unsigned int)maxCompatibilityVersion serviceMinCompatibilityVersion:(unsigned __int16)minCompatibilityVersion capabilityFlags:(unint64_t)self0 deviceUniqueID:(id)self1
{
  LODWORD(v83) = compatibilityVersion;
  HIDWORD(v83) = maxCompatibilityVersion;
  versionCopy = version;
  productVersionCopy = productVersion;
  nameCopy = name;
  dCopy = d;
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
    LODWORD(v91) = protocolVersion;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s setting version %u", buf, 0x12u);
  }

  pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
  activePairedDevice = [pairedDeviceRepository activePairedDevice];
  supportIPsec = [activePairedDevice supportIPsec];

  v21 = [objc_opt_class() _isIPsecSupportedByCapabilityFlags:flags];
  v80 = [objc_opt_class() _isTinkerPairedInCapabilityFlags:flags];
  _activePairedDeviceCBUUID = [(IDSPairingManager *)self _activePairedDeviceCBUUID];
  v84 = nameCopy;
  if (_activePairedDeviceCBUUID)
  {
    pairedDeviceUniqueID = [(IDSPairingManager *)self pairedDeviceUniqueID];
    pairedDeviceBuildVersion = [(IDSPairingManager *)self pairedDeviceBuildVersion];
    pairedDeviceProductVersion = [(IDSPairingManager *)self pairedDeviceProductVersion];
    pairedDeviceProductName = [(IDSPairingManager *)self pairedDeviceProductName];
    pairedDevicePairingProtocolVersion = [(IDSPairingManager *)self pairedDevicePairingProtocolVersion];
    HIDWORD(v71) = [(IDSPairingManager *)self pairedDeviceMinCompatibilityVersion];
    LODWORD(v71) = [(IDSPairingManager *)self pairedDeviceMaxCompatibilityVersion];
    pairedDeviceServiceMinCompatibilityVersion = [(IDSPairingManager *)self pairedDeviceServiceMinCompatibilityVersion];
    v75 = [(IDSPairingManager *)self activePairedDeviceHasPairingType:1];
    v24 = +[IMRGLog watchPairing];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v90 = pairedDeviceBuildVersion;
      *&v90[8] = 2112;
      v91 = versionCopy;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "buildVersion                   %@ vs %@", buf, 0x16u);
    }

    v25 = +[IMRGLog watchPairing];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v90 = pairedDeviceProductVersion;
      *&v90[8] = 2112;
      v91 = productVersionCopy;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "productVersion                 %@ vs %@", buf, 0x16u);
    }

    v76 = pairedDeviceBuildVersion;

    v26 = +[IMRGLog watchPairing];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v90 = pairedDeviceProductName;
      *&v90[8] = 2112;
      v91 = nameCopy;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "productName                    %@ vs %@", buf, 0x16u);
    }

    v27 = +[IMRGLog watchPairing];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v90 = pairedDevicePairingProtocolVersion;
      *&v90[4] = 1024;
      *&v90[6] = protocolVersion;
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
      *v90 = pairedDeviceServiceMinCompatibilityVersion;
      *&v90[4] = 1024;
      *&v90[6] = minCompatibilityVersion;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "serviceMinCompatibilityVersion %d vs %d", buf, 0xEu);
    }

    v31 = +[IMRGLog watchPairing];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = @"NO";
      if (supportIPsec)
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
    v35 = dCopy;
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

    pairedDeviceRepository2 = [(IDSPairingManager *)self pairedDeviceRepository];
    LOWORD(v70) = minCompatibilityVersion;
    v39 = [pairedDeviceRepository2 updatePairedDeviceWithCBUUID:_activePairedDeviceCBUUID deviceUniqueID:dCopy buildVersion:versionCopy productVersion:productVersionCopy productName:nameCopy pairingProtocolVersion:protocolVersion minCompatibilityVersion:v83 maxCompatibilityVersion:v70 serviceMinCompatibilityVersion:?];

    v40 = [[NSUUID alloc] initWithUUIDString:_activePairedDeviceCBUUID];
    v41 = v40;
    v78 = productVersionCopy;
    if (!v39)
    {
      pairedDevice = +[IMRGLog watchPairing];
      v53 = pairedDeviceUniqueID;
      if (os_log_type_enabled(pairedDevice, OS_LOG_TYPE_FAULT))
      {
        sub_100921764();
      }

      goto LABEL_88;
    }

    v74 = v40;
    isPaired = [(IDSPairingManager *)self isPaired];
    if (!(v75 & 1 | ((v80 & 1) == 0)))
    {
      v43 = +[IMRGLog NRPairing];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Device wants Tinker pairing - updating repository", buf, 2u);
      }

      pairedDeviceRepository3 = [(IDSPairingManager *)self pairedDeviceRepository];
      [pairedDeviceRepository3 updatePairedDeviceWithCBUUID:_activePairedDeviceCBUUID pairingType:1];
    }

    _isIPSecLinkEnabled = [(IDSPairingManager *)self _isIPSecLinkEnabled];
    v46 = +[IMRGLog NRPairing];
    v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
    if ((_isIPSecLinkEnabled & v21) == 1)
    {
      if (v47)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Device supports IPsec - Registering", buf, 2u);
      }

      if ((supportIPsec & 1) == 0)
      {
        [(IDSPairingManager *)self setShouldQuickSwitchAfterIPSecConnected:1];
      }

      pairedDeviceRepository4 = [(IDSPairingManager *)self pairedDeviceRepository];
      [pairedDeviceRepository4 updatePairedDeviceWithCBUUID:_activePairedDeviceCBUUID supportIPsec:1];

      v49 = +[IDSUTunDeliveryController sharedInstance];
      [v49 addConnectivityDelegate:self];

      v50 = +[IDSUTunDeliveryController sharedInstance];
      [v50 startIdsNRDeviceBridgeAndPreferenceHandlerWithIdentifier:v74];

      cbuuidToBTOutOfBandKeyDictionary = self->_cbuuidToBTOutOfBandKeyDictionary;
      v35 = dCopy;
      if (cbuuidToBTOutOfBandKeyDictionary)
      {
        v52 = [(NSMutableDictionary *)cbuuidToBTOutOfBandKeyDictionary objectForKeyedSubscript:_activePairedDeviceCBUUID];
      }

      else
      {
        v52 = 0;
      }

      v53 = pairedDeviceUniqueID;
      if (v52 != 0 || isPaired)
      {
        v58 = [NSNumber numberWithUnsignedInt:HIDWORD(v83)];
        [(IDSPairingManager *)self _networkRelayRegisterDeviceWithCBUUID:v74 wasInitiallySetupUsingIDSPairing:isPaired maxCompatibilityVersion:v58 BTOutOfBandKey:v52 supportsIPsecWithSPPLink:0 bluetoothMACAddress:0];
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
      if (!isPaired)
      {
        goto LABEL_89;
      }
    }

    else
    {
      if (v47)
      {
        v55 = @"NO";
        if (_isIPSecLinkEnabled)
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
      v35 = dCopy;
      v53 = pairedDeviceUniqueID;
      if (!isPaired)
      {
        goto LABEL_89;
      }
    }

    v59 = [v53 isEqualToIgnoringCase:v35];
    v60 = [v76 isEqualToIgnoringCase:versionCopy];
    v61 = [pairedDeviceProductVersion isEqualToIgnoringCase:v78];
    v62 = [pairedDeviceProductName isEqualToIgnoringCase:v84];
    if (v60 && v61 && (v62 & 1) != 0)
    {
      pairedDevice = [(IDSPairingManager *)self pairedDevice];
      if (v59)
      {
        v53 = pairedDeviceUniqueID;
        if (v80 == v75)
        {
          if (pairedDevicePairingProtocolVersion == protocolVersion && v71 == __PAIR64__(v83, HIDWORD(v83)))
          {
            goto LABEL_82;
          }

          v63 = +[IMRGLog watchPairing];
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v90 = pairedDevice;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Notifying all IDS accounts protocol information is different: %@", buf, 0xCu);
          }

          v64 = v87;
          v87[0] = _NSConcreteStackBlock;
          v87[1] = 3221225472;
          v65 = sub_10049E25C;
LABEL_81:
          v64[2] = v65;
          v64[3] = &unk_100BDD768;
          pairedDevice = pairedDevice;
          v64[4] = pairedDevice;
          [(IDSPairingManager *)self _notifyDelegatesWithBlock:v64];

LABEL_82:
          v41 = v74;
          if (minCompatibilityVersion >= 3u && pairedDeviceServiceMinCompatibilityVersion != minCompatibilityVersion)
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
          productVersionCopy = v78;
          goto LABEL_90;
        }

LABEL_78:
        v66 = +[IMRGLog watchPairing];
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v90 = pairedDevice;
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
      pairedDevice = [(IDSPairingManager *)self pairedDevice];
    }

    v53 = pairedDeviceUniqueID;
    goto LABEL_78;
  }

  v53 = +[IMRGLog watchPairing];
  v35 = dCopy;
  if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
  {
    sub_100921764();
  }

  LOBYTE(v39) = 0;
LABEL_90:

  return v39;
}

- (BOOL)updatePairedDeviceiCloudURIs:(id)is pushToken:(id)token
{
  isCopy = is;
  tokenCopy = token;
  if ([(IDSPairingManager *)self activePairedDeviceHasPairingType:1])
  {
    pairedDevicePushToken = [(IDSPairingManager *)self pairedDevicePushToken];
    pairedDeviceiCloudURIs = [(IDSPairingManager *)self pairedDeviceiCloudURIs];
    v10 = [NSSet setWithArray:pairedDeviceiCloudURIs];

    _activePairedDeviceCBUUID = [(IDSPairingManager *)self _activePairedDeviceCBUUID];
    pairedDeviceRepository = [(IDSPairingManager *)self pairedDeviceRepository];
    v13 = [pairedDeviceRepository updatePairedDeviceWithCBUUID:_activePairedDeviceCBUUID iCloudURIs:isCopy pushToken:tokenCopy];

    if ([pairedDevicePushToken isEqualToData:tokenCopy])
    {
      v14 = [NSSet setWithArray:isCopy];
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

  pairedDevicePushToken = +[IMRGLog watchPairing];
  if (os_log_type_enabled(pairedDevicePushToken, OS_LOG_TYPE_ERROR))
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
  _purgeSecuredEncryptionKeysForAllPairedDevices = [(IDSPairingManager *)self _purgeSecuredEncryptionKeysForAllPairedDevices];
  v6 = +[IMRGLog regeneration];
  v7 = v6;
  if (_purgeSecuredEncryptionKeysForAllPairedDevices)
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

+ (void)devicePairingProtocolVersion:(unsigned int *)version minCompatibilityVersion:(unsigned int *)compatibilityVersion maxCompatibilityVersion:(unsigned int *)maxCompatibilityVersion
{
  *version = 0;
  *compatibilityVersion = -1;
  *maxCompatibilityVersion = -1;
  v8 = qword_100CBD4A0;
  if (qword_100CBD4A0 || (v8 = IMWeakLinkClass(), (qword_100CBD4A0 = v8) != 0))
  {
    sharedInstance = [v8 sharedInstance];
    *version = [sharedInstance pairingCompatibilityVersion];
    *compatibilityVersion = [sharedInstance minPairingCompatibilityVersion];
    *maxCompatibilityVersion = [sharedInstance maxPairingCompatibilityVersion];
  }

  v10 = +[IMRGLog pairingProtocolDebug];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *version;
    v12 = *compatibilityVersion;
    v13 = *maxCompatibilityVersion;
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

- (void)deliveryController:(id)controller foundNearbyIPsecCapableDeviceWithUniqueID:(id)d
{
  dCopy = d;
  v6 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PairingManager found nearbyIPsec device", buf, 2u);
  }

  if ([dCopy isEqualToString:IDSDeviceDefaultPairedDeviceUniqueID])
  {
    v7 = +[IMRGLog NRPairing];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      pairedDeviceUUIDString = [(IDSPairingManager *)self pairedDeviceUUIDString];
      *buf = 138478083;
      v23 = dCopy;
      v24 = 2113;
      v25 = pairedDeviceUUIDString;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Replacing uniqueID with pairedDeviceUniqueID {uniqueID: %{private}@, pairedDeviceUUIDString: %{private}@}", buf, 0x16u);
    }

    pairedDeviceUUIDString2 = [(IDSPairingManager *)self pairedDeviceUUIDString];

    dCopy = pairedDeviceUUIDString2;
  }

  v10 = [[NSUUID alloc] initWithUUIDString:dCopy];
  pairedDeviceUUIDString3 = [(IDSPairingManager *)self pairedDeviceUUIDString];
  v12 = [pairedDeviceUUIDString3 isEqualToString:dCopy];

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
      v19 = dCopy;
      selfCopy = self;
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
      pairedDeviceUniqueID = [(IDSPairingManager *)self pairedDeviceUniqueID];
      *buf = 138478083;
      v23 = pairedDeviceUniqueID;
      v24 = 2113;
      v25 = dCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Device found IPsec nearby but is not active paired device -- Ignoring {pairedDeviceUniqueID: %{private}@, uniqueID: %{private}@}", buf, 0x16u);
    }
  }
}

- (id)_nrDeviceIdentifierWithCBUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v4 = [NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:dCopy];
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