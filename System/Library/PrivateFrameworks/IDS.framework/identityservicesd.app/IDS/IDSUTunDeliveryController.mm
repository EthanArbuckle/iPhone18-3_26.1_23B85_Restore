@interface IDSUTunDeliveryController
+ (IDSUTunDeliveryController)sharedInstance;
- (BOOL)defaultPeerIsNearby;
- (BOOL)hasSpaceForCloudMessagesWithPriority:(int64_t)priority dataProtectionClass:(unsigned int)class;
- (BOOL)hasSpaceForMessagesWithPriority:(int64_t)priority dataProtectionClass:(unsigned int)class;
- (BOOL)isPeerForPhoneContinuityLocalMessage:(id)message;
- (BOOL)isPresent;
- (BOOL)isTerminusConnected;
- (BOOL)isTerminusConnectedOverBluetooth;
- (BOOL)isTerminusNearby;
- (BOOL)isTerminusRegistered;
- (BOOL)localSetupInProgress;
- (IDSUTunDeliveryController)init;
- (IDSUTunDeliveryController)initWithBroadcastQueue:(id)queue pairingManager:(id)manager;
- (IDSUTunDeliveryControllerDelegate)delegate;
- (NSDictionary)defaultPriorityMessageStatistics;
- (NSDictionary)queuedIncomingMessageDictionary;
- (NSDictionary)sendingMessageStatistics;
- (NSDictionary)syncPriorityMessageStatistics;
- (NSDictionary)urgentCloudPriorityMessageStatistics;
- (NSDictionary)urgentPriorityMessageStatistics;
- (NSSet)allowedTrafficClasses;
- (id)_copyPeerWithID:(id)d;
- (id)_createPeerFromDeviceID:(id)d;
- (id)_createPeerFromDeviceInfo:(id)info;
- (id)_deviceIDForPeer:(id)peer;
- (id)_pairedDeviceUUID;
- (id)hashForString:(id)string;
- (id)lockedContinuityPeerID:(id)d;
- (id)pendingContinuityPeerID:(id)d;
- (id)sessionIDforPeer:(id)peer;
- (id)topicForStreamID:(unsigned __int16)d;
- (void)_OTREnableTimerFiredOnMain;
- (void)_cleanupContinuityPeerMaps:(id)maps;
- (void)_disableOTRForDefaultPairedPeer:(id)peer;
- (void)_enableOTRForDefaultPairedDevice;
- (void)_refreshIPsecStatus;
- (void)_removeDevicePreferencesHandler;
- (void)_removePeerFromDeviceID:(id)d;
- (void)_setCloudConnectionConnected:(BOOL)connected forPeer:(id)peer;
- (void)_setOTREnableTimer;
- (void)_updateLocalSetupInProgressState:(BOOL)state;
- (void)addConnectivityDelegate:(id)delegate;
- (void)addContinuityPeer:(id)peer btUUID:(id)d connectBlock:(id)block failureBlock:(id)failureBlock;
- (void)addUTunPeerWithDeviceUniqueID:(id)d btuuid:(id)btuuid;
- (void)admissionPolicyChangedForTopic:(id)topic allowed:(BOOL)allowed;
- (void)cancelMessageID:(id)d;
- (void)dealloc;
- (void)defaultPeerClassCConnectivityDidChange:(BOOL)change;
- (void)defaultPeerCloudConnectivityChanged:(BOOL)changed;
- (void)defaultPeerConnectivityChanged:(BOOL)changed;
- (void)defaultPeerDropDisallowedMessages;
- (void)defaultPeerLinkTypeChanged:(unsigned __int8)changed;
- (void)defaultPeerMagnetIndicationOfAwakeStateChanged:(BOOL)changed;
- (void)defaultPeerNearbyChanged:(BOOL)changed;
- (void)defaultPeerSetLinkPreferences:(id)preferences;
- (void)defaultPeerSetPreferInfraWiFi:(BOOL)fi services:(id)services;
- (void)defaultPeerSetWantsQuickRelayRequest:(BOOL)request;
- (void)defaultPeerSupportsDirectMessaging:(BOOL)messaging isObliterating:(BOOL)obliterating;
- (void)defaultPeerUnpairStart;
- (void)deviceWithUniqueID:(id)d updatedUUID:(id)iD;
- (void)didAddPairedDevice:(id)device;
- (void)didRemovePairedDevice:(id)device;
- (void)didUpdatePairedDevice:(id)device;
- (void)enableCloudConnectionForDefaultPairedDevice:(BOOL)device;
- (void)enableConnectionForDefaultPairedDevice:(BOOL)device;
- (void)enableOTRForDefaultPairedDevice;
- (void)ensureLocalSetupInProgressConsistencyAfterQWS;
- (void)findDefaultPeerToForceOTRNegotiation:(id)negotiation priority:(int64_t)priority completionBlock:(id)block;
- (void)kickProgressBlockForMessageID:(id)d;
- (void)legacyUTunBTLinkManagerDefaultPeerCloudConnectivityChanged:(BOOL)changed;
- (void)legacyUTunBTLinkManagerDefaultPeerConnectivityChanged:(BOOL)changed;
- (void)legacyUTunBTLinkManagerDefaultPeerNearbyChanged:(BOOL)changed;
- (void)localAccountSetupCompleted;
- (void)localSetupCompleted;
- (void)localSetupStarted;
- (void)lockContinuityPeer:(id)peer btUUID:(id)d;
- (void)nrDeviceBridge:(id)bridge defaultPeerNearbyDidChange:(BOOL)change;
- (void)peer:(id)peer dataReceived:(id)received topic:(id)topic command:(id)command fromID:(id)d messageID:(id)iD wantsAppAck:(BOOL)ack expectsPeerResponse:(BOOL)self0 peerResponseIdentifier:(id)self1 messageUUID:(id)self2 priority:(int64_t)self3 isCompressed:(BOOL)self4 connectionType:(int64_t)self5 didWakeHint:(BOOL)self6;
- (void)peer:(id)peer messageReceived:(id)received topic:(id)topic command:(id)command fromID:(id)d messageID:(id)iD wantsAppAck:(BOOL)ack expectsPeerResponse:(BOOL)self0 peerResponseIdentifier:(id)self1 messageUUID:(id)self2 priority:(int64_t)self3 isCompressed:(BOOL)self4 connectionType:(int64_t)self5 didWakeHint:(BOOL)self6;
- (void)peer:(id)peer protobufReceived:(id)received topic:(id)topic command:(id)command fromID:(id)d messageID:(id)iD wantsAppAck:(BOOL)ack expectsPeerResponse:(BOOL)self0 peerResponseIdentifier:(id)self1 messageUUID:(id)self2 priority:(int64_t)self3 isCompressed:(BOOL)self4 connectionType:(int64_t)self5 didWakeHint:(BOOL)self6;
- (void)peer:(id)peer receivedAppLevelAckWithTopic:(id)topic fromID:(id)d messageID:(id)iD peerResponseIdentifier:(id)identifier priority:(int64_t)priority connectionType:(int64_t)type;
- (void)peerCloudConnectivityChanged:(id)changed;
- (void)peerCloudConnectivityChanged:(id)changed isCloudConnected:(BOOL)connected;
- (void)peerConnectivityChanged:(id)changed;
- (void)peerHasSpaceForNonUrgentMessages:(id)messages priority:(int64_t)priority dataProtectionClass:(unsigned int)class;
- (void)peerHasSpaceForNonUrgentMessages:(id)messages priority:(int64_t)priority dataProtectionClass:(unsigned int)class withTypes:(id)types;
- (void)peerHasSpaceForUrgentMessages:(id)messages dataProtectionClass:(unsigned int)class withTypes:(id)types;
- (void)peerNearbyStateChanged:(id)changed forceNotify:(BOOL)notify;
- (void)prepareForQuickSwitch;
- (void)rapportClient:(id)client didDiscoverDevice:(id)device;
- (void)rapportClient:(id)client didLoseDevice:(id)device;
- (void)removeConnectivityDelegate:(id)delegate;
- (void)removeUTunPeerWithDeviceUniqueID:(id)d btuuid:(id)btuuid reason:(int64_t)reason shouldWait:(BOOL)wait;
- (void)removeUTunPeerWithSessionID:(id)d reason:(int64_t)reason shouldWait:(BOOL)wait;
- (void)sendData:(id)data service:(id)service protobuf:(id)protobuf resourcePath:(id)path resourceMetadata:(id)metadata priority:(int64_t)priority dataProtectionClass:(unsigned int)class nonWaking:(BOOL)self0 nonCloudWaking:(BOOL)self1 requireBluetooth:(BOOL)self2 requireLocalWiFi:(BOOL)self3 queueOneIdentifier:(id)self4 expirationDate:(id)self5 enforceRemoteTimeouts:(BOOL)self6 expectsPeerResponse:(BOOL)self7 wantsAppAck:(BOOL)self8 compressPayload:(BOOL)self9 compressed:(BOOL)compressed peerResponseIdentifier:(id)responseIdentifier messageID:(id)d topic:(id)topic awdTopic:(id)awdTopic command:(id)command fromID:(id)iD uriToDeviceID:(id)deviceID localDeviceDestinationDeviceUUID:(id)uID bypassDuet:(BOOL)duet duetIdentifiersOverride:(id)data0 messageType:(int64_t)data1 fallbackBlock:(id)data2 progressBlock:(id)data3 completionBlock:(id)data4;
- (void)setAllowedTrafficClasses:(id)classes;
- (void)setCompanionLinkPreference:(BOOL)preference;
- (void)setDeviceUniqueIDToCBUUID:(id)d;
- (void)setPendingCloudFlagOnDefaultPeer;
- (void)setTopics:(id)topics;
- (void)startIdsNRDeviceBridgeAndPreferenceHandlerWithIdentifier:(id)identifier;
- (void)stopIdsNRDeviceBridgeAndPreferenceHandler;
- (void)systemScreenDidPowerDown;
- (void)tryNextContinuityPeer:(id)peer;
- (void)unlockAllContinuityPeers;
- (void)unlockContinuityPeer:(id)peer;
- (void)updatecloudDeliveryStateOnDefaultPeer;
@end

@implementation IDSUTunDeliveryController

+ (IDSUTunDeliveryController)sharedInstance
{
  if (qword_100CBD5B0 != -1)
  {
    sub_10001B178();
  }

  v3 = qword_100CBD5B8;

  return v3;
}

- (BOOL)isTerminusConnected
{
  idsNRDeviceBridge = [(IDSUTunDeliveryController *)self idsNRDeviceBridge];
  isConnected = [idsNRDeviceBridge isConnected];

  return isConnected;
}

- (BOOL)localSetupInProgress
{
  _copyPairedDevice = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  localSetupInProgress = [_copyPairedDevice localSetupInProgress];

  return localSetupInProgress;
}

- (NSSet)allowedTrafficClasses
{
  pthread_mutex_lock(&self->_trafficClassLock);
  v3 = self->_allowedTrafficClasses;
  pthread_mutex_unlock(&self->_trafficClassLock);

  return v3;
}

- (BOOL)isTerminusConnectedOverBluetooth
{
  idsNRDeviceBridge = [(IDSUTunDeliveryController *)self idsNRDeviceBridge];
  if ([idsNRDeviceBridge isConnected])
  {
    idsNRDeviceBridge2 = [(IDSUTunDeliveryController *)self idsNRDeviceBridge];
    v5 = [idsNRDeviceBridge2 latestLinkType] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (IDSUTunDeliveryController)initWithBroadcastQueue:(id)queue pairingManager:(id)manager
{
  queueCopy = queue;
  managerCopy = manager;
  im_assert_primary_base_queue();
  v55.receiver = self;
  v55.super_class = IDSUTunDeliveryController;
  v9 = [(IDSUTunDeliveryController *)&v55 init];
  v10 = v9;
  if (v9)
  {
    if (!v9->_deviceIDToPeer)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      deviceIDToPeer = v10->_deviceIDToPeer;
      v10->_deviceIDToPeer = Mutable;
    }

    if (!v10->_btuuidToSessionID)
    {
      v13 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      btuuidToSessionID = v10->_btuuidToSessionID;
      v10->_btuuidToSessionID = v13;
    }

    pthread_mutex_init(&v10->_deviceIDToPeerLock, 0);
    pthread_mutex_init(&v10->_streamIDToTopicLock, 0);
    pthread_mutex_init(&v10->_trafficClassLock, 0);
    pthread_mutex_init(&v10->_continuityPeerLock, 0);
    v10->_notificationDelayInSeconds = 10.0;
    objc_storeStrong(&v10->_broadcastQueue, queue);
    objc_storeStrong(&v10->_pairingManager, manager);
    cbuuidsOfPairingDevices = [(IDSPairingManager *)v10->_pairingManager cbuuidsOfPairingDevices];
    cbuuidsOfPairedDevices = [(IDSPairingManager *)v10->_pairingManager cbuuidsOfPairedDevices];
    if ([cbuuidsOfPairingDevices count])
    {
      v17 = 1;
    }

    else
    {
      v17 = [cbuuidsOfPairedDevices count] == 0;
    }

    v18 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = @"not ";
      if (v17)
      {
        v19 = &stru_100C06028;
      }

      *buf = 138412290;
      v57 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "LOCALSETUP: at launch default local setup does %@need to happen.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v20 = v17 ? &stru_100C06028 : @"not ";
      v48 = v20;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v48 = v20;
        _IDSLogV();
      }
    }

    v10->_shouldUseIPsecLinkForDefaultPairedDevice = [(IDSPairingManager *)v10->_pairingManager shouldUseIPsecLinkForDefaultPairedDevice];
    v21 = [IDSUTunPeer alloc];
    v22 = IDSDeviceDefaultPairedDeviceUniqueID;
    v23 = [(IDSUTunPeer *)v21 initWithIdentifier:@"UTunDelivery-Default" btUUID:0 uniqueID:IDSDeviceDefaultPairedDeviceUniqueID shouldUseIPsecLink:v10->_shouldUseIPsecLinkForDefaultPairedDevice isNearby:0 isClassCConnected:0];
    [(IDSUTunPeer *)v23 setDelegate:v10];
    [(IDSUTunPeer *)v23 setLocalSetupInProgress:v17];
    if ([(IDSPairingManager *)v10->_pairingManager pairedDeviceServiceMinCompatibilityVersion]>= 3)
    {
      v24 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "LOCALSETUP: Enabling Cloud On This Device", buf, 2u);
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

      [(IDSUTunPeer *)v23 setSupportsCloudConnections:1];
    }

    [(NSMutableDictionary *)v10->_deviceIDToPeer setObject:v23 forKey:v22];
    if (v10->_shouldUseIPsecLinkForDefaultPairedDevice)
    {
      v25 = 0;
    }

    else
    {
      v25 = IMGetDomainBoolForKey() ^ 1;
    }

    v10->_enableOTR = v25;
    v26 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      if (v10->_enableOTR)
      {
        v27 = @"YES";
      }

      else
      {
        v27 = @"NO";
      }

      *buf = 138412290;
      v57 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "EnableOTR: %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v28 = v10->_enableOTR ? @"YES" : @"NO";
      v49 = v28;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        if (v10->_enableOTR)
        {
          v29 = @"YES";
        }

        else
        {
          v29 = @"NO";
        }

        v49 = v29;
        _IDSLogV();
      }
    }

    if ([(IDSPairingManager *)v10->_pairingManager isPaired])
    {
      v30 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        if (v10->_enableOTR)
        {
          v31 = @"YES";
        }

        else
        {
          v31 = @"NO";
        }

        *buf = 138412290;
        v57 = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Already paired, set OTR for default paired device: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        v32 = v10->_enableOTR ? @"YES" : @"NO";
        v50 = v32;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          if (v10->_enableOTR)
          {
            v33 = @"YES";
          }

          else
          {
            v33 = @"NO";
          }

          v50 = v33;
          _IDSLogV();
        }
      }

      [(IDSUTunPeer *)v23 setEnableOTR:v10->_enableOTR, v50];
      v10->_otrInitialized = 1;
    }

    [(IDSPairingManager *)v10->_pairingManager addDelegate:v10];
    v10->_messageID = 0;
    _pairedDeviceUUID = [(IDSUTunDeliveryController *)v10 _pairedDeviceUUID];
    [(IDSUTunDeliveryController *)v10 startIdsNRDeviceBridgeAndPreferenceHandlerWithIdentifier:_pairedDeviceUUID];
    idsNRDeviceBridge = [(IDSUTunDeliveryController *)v10 idsNRDeviceBridge];
    -[IDSUTunPeer setIsClassCConnected:](v23, "setIsClassCConnected:", [idsNRDeviceBridge isClassCConnected]);

    [(IDSUTunDeliveryController *)v10 _updateLocalSetupInProgressState:v17];
    v36 = +[IMSystemMonitor sharedInstance];
    [v36 setActive:1];

    v37 = +[IMSystemMonitor sharedInstance];
    [v37 setWatchesScreenLightState:1];

    v38 = +[IMSystemMonitor sharedInstance];
    [v38 addListener:v10];

    v39 = +[IDSRapportClient sharedInstance];
    [v39 addDelegate:v10];

    if (CUTIsInternalInstall())
    {
      v40 = objc_alloc_init(IDSConnectivityMonitor);
      connectivityMonitor = v10->_connectivityMonitor;
      v10->_connectivityMonitor = v40;

      v42 = +[NSHashTable weakObjectsHashTable];
      connectivityDelegates = v10->_connectivityDelegates;
      v10->_connectivityDelegates = v42;

      [(NSHashTable *)v10->_connectivityDelegates addObject:v10->_connectivityMonitor];
    }

    if (_os_feature_enabled_impl())
    {
      v44 = +[IDSDiagnosticInfoHandler sharedInstance];
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_1004C7C60;
      v53[3] = &unk_100BDBF58;
      v54 = v10;
      v45 = im_primary_queue();
      [v44 registerDiagnosticInfoBlock:v53 title:@"IDS-Connectivity-Status" queue:v45];

      v46 = &v54;
    }

    else
    {
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_1004C7D94;
      v51[3] = &unk_100BDE570;
      v52 = v10;
      v44 = im_primary_queue();
      sub_1006085C4(v51, @"IDS-Connectivity-Status", v44);
      v46 = &v52;
    }
  }

  return v10;
}

- (IDSUTunDeliveryController)init
{
  v3 = im_primary_queue();
  v4 = +[IDSPairingManager sharedInstance];
  v5 = [(IDSUTunDeliveryController *)self initWithBroadcastQueue:v3 pairingManager:v4];

  return v5;
}

- (void)dealloc
{
  [(IDSUTunDeliveryController *)self _removeDevicePreferencesHandler];
  pairingManager = [(IDSUTunDeliveryController *)self pairingManager];
  [pairingManager removeDelegate:self];

  [(IMTimer *)self->_otrTimer invalidate];
  otrTimer = self->_otrTimer;
  self->_otrTimer = 0;

  v5 = +[IDSRapportClient sharedInstance];
  [v5 removeDelegate:self];

  [(NSMutableDictionary *)self->_deviceIDToPeer enumerateKeysAndObjectsUsingBlock:&stru_100BDE5B0];
  pthread_mutex_destroy(&self->_deviceIDToPeerLock);
  pthread_mutex_destroy(&self->_streamIDToTopicLock);
  pthread_mutex_destroy(&self->_trafficClassLock);
  pthread_mutex_destroy(&self->_continuityPeerLock);
  v6.receiver = self;
  v6.super_class = IDSUTunDeliveryController;
  [(IDSUTunDeliveryController *)&v6 dealloc];
}

- (id)_pairedDeviceUUID
{
  pairingManager = [(IDSUTunDeliveryController *)self pairingManager];
  isPaired = [pairingManager isPaired];

  if (isPaired)
  {
    v5 = [NSUUID alloc];
    pairingManager2 = [(IDSUTunDeliveryController *)self pairingManager];
    pairedDeviceUUIDString = [pairingManager2 pairedDeviceUUIDString];
    v8 = [v5 initWithUUIDString:pairedDeviceUUIDString];

    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Queried pairedDeviceUUIDString {pairedDeviceUUIDString: %@}", buf, 0xCu);
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
  }

  else
  {
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Could not query pairedDeviceUUIDString {isPaired: 0}", buf, 2u);
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

    v8 = 0;
  }

  return v8;
}

- (void)startIdsNRDeviceBridgeAndPreferenceHandlerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  idsNRDeviceBridge = [(IDSUTunDeliveryController *)self idsNRDeviceBridge];
  if (idsNRDeviceBridge && (-[IDSUTunDeliveryController idsNRDeviceBridge](self, "idsNRDeviceBridge"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isDevicesIdentifierEqualTo:identifierCopy], v6, idsNRDeviceBridge, v7))
  {
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NRDeviceMonitor already running for {deviceIdentifier: %@}.", buf, 0xCu);
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
  }

  else
  {
    [(IDSUTunDeliveryController *)self _removeDevicePreferencesHandler];
    [(IDSUTunDeliveryController *)self setIdsNRDeviceBridge:0];
    if (identifierCopy)
    {
      v9 = [[IDSNRDevicePreferencesHandler alloc] initWithDeviceIdentifier:identifierCopy];
      [(IDSUTunDeliveryController *)self setNrDevicePreferencesHandler:v9];

      v10 = [[IDSNRDeviceBridge alloc] initWithDeviceIdentifier:identifierCopy delegate:self];
      [(IDSUTunDeliveryController *)self setIdsNRDeviceBridge:v10];

      pthread_mutex_lock(&self->_trafficClassLock);
      nrDevicePreferencesHandler = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];
      [nrDevicePreferencesHandler setAllowedTrafficClasses:self->_allowedTrafficClasses];

      pthread_mutex_unlock(&self->_trafficClassLock);
    }
  }
}

- (void)stopIdsNRDeviceBridgeAndPreferenceHandler
{
  [(IDSUTunDeliveryController *)self _removeDevicePreferencesHandler];

  [(IDSUTunDeliveryController *)self setIdsNRDeviceBridge:0];
}

- (void)_removeDevicePreferencesHandler
{
  nrDevicePreferencesHandler = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];

  if (nrDevicePreferencesHandler)
  {
    nrDevicePreferencesHandler2 = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];
    [nrDevicePreferencesHandler2 cancel];

    [(IDSUTunDeliveryController *)self setNrDevicePreferencesHandler:0];
  }
}

- (void)_refreshIPsecStatus
{
  pairingManager = [(IDSUTunDeliveryController *)self pairingManager];
  self->_shouldUseIPsecLinkForDefaultPairedDevice = [pairingManager shouldUseIPsecLinkForDefaultPairedDevice];

  _pairedDeviceUUID = [(IDSUTunDeliveryController *)self _pairedDeviceUUID];
  v5 = _pairedDeviceUUID;
  if (self->_shouldUseIPsecLinkForDefaultPairedDevice && _pairedDeviceUUID != 0)
  {
    v7 = _pairedDeviceUUID;
    _pairedDeviceUUID = [(IDSUTunDeliveryController *)self startIdsNRDeviceBridgeAndPreferenceHandlerWithIdentifier:_pairedDeviceUUID];
    v5 = v7;
  }

  _objc_release_x1(_pairedDeviceUUID, v5);
}

- (id)_copyPeerWithID:(id)d
{
  dCopy = d;
  pthread_mutex_lock(&self->_deviceIDToPeerLock);
  v5 = [(NSMutableDictionary *)self->_deviceIDToPeer objectForKey:dCopy];

  pthread_mutex_unlock(&self->_deviceIDToPeerLock);
  return v5;
}

- (id)hashForString:(id)string
{
  memset(md, 170, sizeof(md));
  uTF8String = [string UTF8String];
  v4 = strlen(uTF8String);
  CC_MD5(uTF8String, v4, md);
  v5 = [NSNumber numberWithUnsignedShort:bswap32(*md) >> 16];

  return v5;
}

- (void)setDeviceUniqueIDToCBUUID:(id)d
{
  dCopy = d;
  im_assert_primary_base_queue();
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received devices with unique ids -> cbuuids %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v6 = dCopy;
    _IDSLogV();
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1004C8A08;
  v7[3] = &unk_100BDE5D8;
  v7[4] = self;
  [dCopy enumerateKeysAndObjectsUsingBlock:{v7, v6}];
}

- (void)deviceWithUniqueID:(id)d updatedUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  im_assert_primary_base_queue();
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = dCopy;
    v18 = 2112;
    v19 = iDCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received device with unique id %@ updated BTUUID: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v13 = dCopy;
    v14 = iDCopy;
    _IDSLogV();
  }

  if (dCopy && ![(IDSUTunPeer *)dCopy isEqualToString:IDSDeviceDefaultPairedDeviceUniqueID])
  {
    pthread_mutex_lock(&self->_deviceIDToPeerLock);
    v10 = [(NSMutableDictionary *)self->_deviceIDToPeer objectForKey:dCopy];
    if (v10)
    {
      pthread_mutex_unlock(&self->_deviceIDToPeerLock);
      v11 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v17 = v10;
        v18 = 2112;
        v19 = dCopy;
        v20 = 2112;
        v21 = iDCopy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updating existing peer %@ for uniqueID %@ with btuuid %@", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v14 = dCopy;
        v15 = iDCopy;
        v13 = v10;
        _IDSLogV();
      }

      [(IDSUTunPeer *)v10 setBtUUID:iDCopy, v13, v14, v15];
    }

    else
    {
      v10 = [[IDSUTunPeer alloc] initWithIdentifier:@"UTunDelivery" btUUID:iDCopy uniqueID:dCopy shouldUseIPsecLink:0 isNearby:0 isClassCConnected:0];
      [(IDSUTunPeer *)v10 setDelegate:self];
      [(NSMutableDictionary *)self->_deviceIDToPeer setObject:v10 forKey:dCopy];
      pthread_mutex_unlock(&self->_deviceIDToPeerLock);
      v12 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v17 = v10;
        v18 = 2112;
        v19 = dCopy;
        v20 = 2112;
        v21 = iDCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Created new peer %@ for uniqueID %@ with btuuid %@", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  else
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = dCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Ignoring update for nil or default paired device BTUUID: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)_updateLocalSetupInProgressState:(BOOL)state
{
  stateCopy = state;
  [(IDSUTunDeliveryController *)self setIsLocalSetUpInProgress:?];
  if (self->_shouldUseIPsecLinkForDefaultPairedDevice)
  {
    nrDevicePreferencesHandler = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];

    if (nrDevicePreferencesHandler)
    {
      nrDevicePreferencesHandler2 = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];
      v7 = nrDevicePreferencesHandler2;
      if (stateCopy)
      {
        [nrDevicePreferencesHandler2 localSetUpStarted];
      }

      else
      {
        [nrDevicePreferencesHandler2 localSetUpCompleted];
      }
    }
  }
}

- (void)localSetupStarted
{
  im_assert_primary_base_queue();
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "LOCALSETUP: local setup started - clearing all stats", v5, 2u);
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

  _copyPairedDevice = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  [_copyPairedDevice clearStats];
  [(IDSUTunDeliveryController *)self _updateLocalSetupInProgressState:1];
}

- (void)localSetupCompleted
{
  im_assert_primary_base_queue();
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "LOCALSETUP: Informed that local setup has completed!", v5, 2u);
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

  _copyPairedDevice = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  [_copyPairedDevice setLocalSetupInProgress:0];
  [(IDSUTunDeliveryController *)self _updateLocalSetupInProgressState:0];
}

- (void)prepareForQuickSwitch
{
  _copyPairedDevice = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  if ([_copyPairedDevice localSetupInProgress])
  {
    [_copyPairedDevice setLocalSetupInProgress:0];
    [(IDSUTunDeliveryController *)self _updateLocalSetupInProgressState:0];
  }

  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "LOCALSETUP: Disabling Cloud Connections for QWS", v5, 2u);
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

  [_copyPairedDevice setSupportsCloudConnections:0];
}

- (void)updatecloudDeliveryStateOnDefaultPeer
{
  pairingManager = [(IDSUTunDeliveryController *)self pairingManager];
  pairedDeviceServiceMinCompatibilityVersion = [pairingManager pairedDeviceServiceMinCompatibilityVersion];

  if (pairedDeviceServiceMinCompatibilityVersion >= 3)
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "LOCALSETUP: Enabling Cloud Connections", v7, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    _copyPairedDevice = [(IDSUTunDeliveryController *)self _copyPairedDevice];
    [_copyPairedDevice setSupportsCloudConnections:1];
  }
}

- (void)ensureLocalSetupInProgressConsistencyAfterQWS
{
  _copyPairedDevice = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  [_copyPairedDevice setLocalSetupInProgress:{-[IDSUTunDeliveryController isLocalSetUpInProgress](self, "isLocalSetUpInProgress")}];
  if (self->_shouldUseIPsecLinkForDefaultPairedDevice)
  {
    nrDevicePreferencesHandler = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];

    if (nrDevicePreferencesHandler)
    {
      isLocalSetUpInProgress = [(IDSUTunDeliveryController *)self isLocalSetUpInProgress];
      nrDevicePreferencesHandler2 = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];
      v6 = nrDevicePreferencesHandler2;
      if (isLocalSetUpInProgress)
      {
        [nrDevicePreferencesHandler2 localSetUpStarted];
      }

      else
      {
        [nrDevicePreferencesHandler2 localSetUpCompleted];
      }
    }
  }
}

- (void)setPendingCloudFlagOnDefaultPeer
{
  _copyPairedDevice = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  [_copyPairedDevice setPendingCloudEnable:1];
}

- (void)_removePeerFromDeviceID:(id)d
{
  dCopy = d;
  pthread_mutex_lock(&self->_deviceIDToPeerLock);
  [(NSMutableDictionary *)self->_deviceIDToPeer removeObjectForKey:dCopy];

  pthread_mutex_unlock(&self->_deviceIDToPeerLock);
}

- (id)_createPeerFromDeviceID:(id)d
{
  v4 = [NSDictionary dictionaryWithObject:d forKey:IDSDevicePairedDeviceID];
  v5 = [(IDSUTunDeliveryController *)self _createPeerFromDeviceInfo:v4];

  return v5;
}

- (id)_createPeerFromDeviceInfo:(id)info
{
  infoCopy = info;
  v5 = [infoCopy objectForKey:IDSDevicePairedDeviceID];
  v6 = [infoCopy objectForKey:@"bt-id"];
  v7 = [infoCopy objectForKey:@"session-id"];
  pthread_mutex_lock(&self->_deviceIDToPeerLock);
  if (!v7 || ![(IDSUTunPeer *)v7 length])
  {
    v10 = [(NSMutableDictionary *)self->_deviceIDToPeer objectForKey:v5];
    if (v10)
    {
      goto LABEL_31;
    }

    v10 = [[IDSUTunPeer alloc] initWithIdentifier:@"UTunDelivery" btUUID:v6 uniqueID:v5 shouldUseIPsecLink:0 isNearby:0 isClassCConnected:0];
    [(NSMutableDictionary *)self->_deviceIDToPeer setObject:v10 forKey:v5];
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      deviceIDToPeer = self->_deviceIDToPeer;
      *buf = 138412802;
      v18 = v10;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = deviceIDToPeer;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Peer %@ is created from btID %@ (peer map: %@)", buf, 0x20u);
    }

    if (!os_log_shim_legacy_logging_enabled())
    {
      goto LABEL_25;
    }

    if (!_IDSShouldLogTransport())
    {
      goto LABEL_25;
    }

    _IDSLogTransport();
    if (!_IDSShouldLog())
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if ([v5 isEqualToString:IDSDeviceDefaultPairedDeviceUniqueID])
  {
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_deviceIDToPeer;
      *buf = 138412802;
      v18 = v7;
      v19 = 2112;
      v20 = infoCopy;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "WARNING: Peer from sessionID %@ shouldn't be created for the default paired device! (deviceInfo: %@) (peer map: %@)", buf, 0x20u);
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

    v10 = 0;
    goto LABEL_31;
  }

  v10 = [(NSMutableDictionary *)self->_deviceIDToPeer objectForKey:v7];
  if (v10)
  {
    goto LABEL_31;
  }

  v10 = [[IDSUTunPeer alloc] initWithIdentifier:@"UTunDelivery" btUUID:v7 uniqueID:v5 shouldUseIPsecLink:0 isNearby:0 isClassCConnected:0];
  [(IDSUTunPeer *)v10 setOriginalbtUUID:v6];
  [(NSMutableDictionary *)self->_deviceIDToPeer setObject:v10 forKey:v7];
  [(NSMutableDictionary *)self->_btuuidToSessionID setObject:v7 forKey:v6];
  v13 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = self->_deviceIDToPeer;
    *buf = 138412802;
    v18 = v10;
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Peer %@ is created from sessionID %@ (peer map: %@)", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
LABEL_24:
        _IDSLogV();
      }
    }
  }

LABEL_25:
  if (v10)
  {
    [(IDSUTunPeer *)v10 setDelegate:self];
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v18 = v10;
      v19 = 2112;
      v20 = v5;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Created new peer %@ for uniqueID %@ with btuuid %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

LABEL_31:
  pthread_mutex_unlock(&self->_deviceIDToPeerLock);

  return v10;
}

- (void)sendData:(id)data service:(id)service protobuf:(id)protobuf resourcePath:(id)path resourceMetadata:(id)metadata priority:(int64_t)priority dataProtectionClass:(unsigned int)class nonWaking:(BOOL)self0 nonCloudWaking:(BOOL)self1 requireBluetooth:(BOOL)self2 requireLocalWiFi:(BOOL)self3 queueOneIdentifier:(id)self4 expirationDate:(id)self5 enforceRemoteTimeouts:(BOOL)self6 expectsPeerResponse:(BOOL)self7 wantsAppAck:(BOOL)self8 compressPayload:(BOOL)self9 compressed:(BOOL)compressed peerResponseIdentifier:(id)responseIdentifier messageID:(id)d topic:(id)topic awdTopic:(id)awdTopic command:(id)command fromID:(id)iD uriToDeviceID:(id)deviceID localDeviceDestinationDeviceUUID:(id)uID bypassDuet:(BOOL)duet duetIdentifiersOverride:(id)data0 messageType:(int64_t)data1 fallbackBlock:(id)data2 progressBlock:(id)data3 completionBlock:(id)data4
{
  dataCopy = data;
  serviceCopy = service;
  protobufCopy = protobuf;
  pathCopy = path;
  metadataCopy = metadata;
  identifierCopy = identifier;
  dateCopy = date;
  responseIdentifierCopy = responseIdentifier;
  dCopy = d;
  topicCopy = topic;
  awdTopicCopy = awdTopic;
  commandCopy = command;
  iDCopy = iD;
  deviceIDCopy = deviceID;
  uIDCopy = uID;
  overrideCopy = override;
  blockCopy = block;
  progressBlockCopy = progressBlock;
  completionBlockCopy = completionBlock;
  v61 = +[IDSDaemonPriorityQueueController sharedInstance];
  v79[0] = _NSConcreteStackBlock;
  v79[1] = 3221225472;
  v79[2] = sub_1004C9F68;
  v79[3] = &unk_100BDE650;
  timeoutsCopy = timeouts;
  classCopy = class;
  wakingCopy = waking;
  cloudWakingCopy = cloudWaking;
  responseCopy = response;
  ackCopy = ack;
  payloadCopy = payload;
  compressedCopy = compressed;
  bluetoothCopy = bluetooth;
  fiCopy = fi;
  duetCopy = duet;
  v79[4] = self;
  v80 = topicCopy;
  priorityCopy = priority;
  typeCopy = type;
  v81 = dCopy;
  v82 = dataCopy;
  v83 = protobufCopy;
  v84 = dateCopy;
  v85 = commandCopy;
  v86 = deviceIDCopy;
  v87 = uIDCopy;
  v88 = pathCopy;
  v89 = metadataCopy;
  v90 = responseIdentifierCopy;
  v91 = awdTopicCopy;
  v92 = iDCopy;
  v96 = completionBlockCopy;
  v97 = blockCopy;
  v98 = progressBlockCopy;
  v93 = identifierCopy;
  v94 = overrideCopy;
  v95 = serviceCopy;
  v74 = serviceCopy;
  v72 = overrideCopy;
  v71 = identifierCopy;
  v70 = progressBlockCopy;
  v69 = blockCopy;
  v68 = iDCopy;
  v66 = awdTopicCopy;
  v65 = responseIdentifierCopy;
  v64 = metadataCopy;
  v63 = pathCopy;
  v62 = completionBlockCopy;
  v42 = uIDCopy;
  v43 = deviceIDCopy;
  v44 = commandCopy;
  v45 = dateCopy;
  v46 = protobufCopy;
  v47 = dataCopy;
  v48 = dCopy;
  v49 = topicCopy;
  [v61 performBlockWithPriority:v79 priority:priority];
}

- (void)cancelMessageID:(id)d
{
  dCopy = d;
  im_assert_primary_base_queue();
  if ([dCopy length])
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = dCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempting to cancel message ID: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v10 = dCopy;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v10 = dCopy;
          _IDSLogV();
        }
      }
    }

    pthread_mutex_lock(&self->_deviceIDToPeerLock);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    allValues = [(NSMutableDictionary *)self->_deviceIDToPeer allValues];
    v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v11 + 1) + 8 * v9) cancelMessageID:{dCopy, v10}];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    pthread_mutex_unlock(&self->_deviceIDToPeerLock);
  }
}

- (void)kickProgressBlockForMessageID:(id)d
{
  dCopy = d;
  im_assert_primary_base_queue();
  pthread_mutex_lock(&self->_deviceIDToPeerLock);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)self->_deviceIDToPeer allValues];
  v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v10 + 1) + 8 * v9) kickProgressBlockForMessageID:dCopy];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  pthread_mutex_unlock(&self->_deviceIDToPeerLock);
}

- (id)topicForStreamID:(unsigned __int16)d
{
  dCopy = d;
  pthread_mutex_lock(&self->_streamIDToTopicLock);
  streamIDToTopic = self->_streamIDToTopic;
  v6 = [NSNumber numberWithUnsignedShort:dCopy];
  v7 = [(NSMutableDictionary *)streamIDToTopic objectForKey:v6];

  pthread_mutex_unlock(&self->_streamIDToTopicLock);

  return v7;
}

- (BOOL)isPresent
{
  im_assert_primary_base_queue();
  _copyPairedDevice = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  isConnected = [_copyPairedDevice isConnected];

  return isConnected;
}

- (BOOL)defaultPeerIsNearby
{
  im_assert_primary_base_queue();
  _copyPairedDevice = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  isNearby = [_copyPairedDevice isNearby];

  return isNearby;
}

- (void)localAccountSetupCompleted
{
  self->_localAccountSetupCompleted = 1;
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_defaultPeerConnectedDeferred)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "local account setup complete - has deferred task? %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v5 = self->_defaultPeerConnectedDeferred ? @"YES" : @"NO";
    v8 = v5;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      if (self->_defaultPeerConnectedDeferred)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v8 = v6;
      _IDSLogV();
    }
  }

  if (self->_defaultPeerConnectedDeferred)
  {
    self->_defaultPeerConnectedDeferred = 0;
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "calling deferred default peer connected", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    [(IDSUTunDeliveryController *)self defaultPeerConnectivityChanged:1, v8];
  }
}

- (void)enableConnectionForDefaultPairedDevice:(BOOL)device
{
  deviceCopy = device;
  im_assert_primary_base_queue();
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (deviceCopy)
    {
      v6 = @"YES";
    }

    *buf = 138412290;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "enableConnectionForDefaultPairedDevice %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v7 = @"NO";
    if (deviceCopy)
    {
      v7 = @"YES";
    }

    v11 = v7;
    _IDSLogV();
  }

  _copyPairedDevice = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  v9 = _copyPairedDevice;
  if (_copyPairedDevice)
  {
    if (deviceCopy)
    {
      [_copyPairedDevice enableConnection];
    }

    else
    {
      [_copyPairedDevice disableConnectionForReason:14 shouldWait:0];
    }
  }

  else
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = IDSDeviceDefaultPairedDeviceUniqueID;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No connection found for default paired device %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)enableCloudConnectionForDefaultPairedDevice:(BOOL)device
{
  deviceCopy = device;
  im_assert_primary_base_queue();
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (deviceCopy)
    {
      v6 = @"YES";
    }

    *buf = 138412290;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "enableCloudConnectionForDefaultPairedDevice %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v7 = @"NO";
    if (deviceCopy)
    {
      v7 = @"YES";
    }

    v11 = v7;
    _IDSLogV();
  }

  _copyPairedDevice = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  v9 = _copyPairedDevice;
  if (_copyPairedDevice)
  {
    if (deviceCopy)
    {
      [_copyPairedDevice enableCloudConnection];
    }

    else
    {
      [_copyPairedDevice disableCloudConnectionForReason:14];
    }
  }

  else
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = IDSDeviceDefaultPairedDeviceUniqueID;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No connection found for default paired device %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (BOOL)hasSpaceForMessagesWithPriority:(int64_t)priority dataProtectionClass:(unsigned int)class
{
  v4 = *&class;
  v7 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v7 assertRunningWithPriority:priority];

  _copyPairedDevice = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  LOBYTE(v4) = [_copyPairedDevice hasSpaceForMessagesWithPriority:priority dataProtectionClass:v4 messageType:4];

  return v4;
}

- (BOOL)hasSpaceForCloudMessagesWithPriority:(int64_t)priority dataProtectionClass:(unsigned int)class
{
  v4 = *&class;
  v7 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v7 assertRunningWithPriority:priority];

  _copyPairedDevice = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  LOBYTE(v4) = [_copyPairedDevice hasSpaceForMessagesWithPriority:priority dataProtectionClass:v4 messageType:6];

  return v4;
}

- (void)setTopics:(id)topics
{
  topicsCopy = topics;
  im_assert_primary_base_queue();
  pthread_mutex_lock(&self->_streamIDToTopicLock);
  allValues = [(NSMutableDictionary *)self->_streamIDToTopic allValues];
  v6 = [NSSet setWithArray:allValues];

  if (topicsCopy && v6 && [v6 isEqualToSet:topicsCopy])
  {
    pthread_mutex_unlock(&self->_streamIDToTopicLock);
  }

  else
  {
    streamIDToTopic = self->_streamIDToTopic;
    self->_streamIDToTopic = 0;

    if (!self->_streamIDToTopic)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v9 = self->_streamIDToTopic;
      self->_streamIDToTopic = Mutable;
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1004CBED4;
    v13[3] = &unk_100BDE678;
    v13[4] = self;
    [topicsCopy enumerateObjectsUsingBlock:v13];
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      allKeys = [(NSMutableDictionary *)self->_streamIDToTopic allKeys];
      *buf = 138412290;
      v15 = allKeys;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Got topic set update %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      allKeys2 = [(NSMutableDictionary *)self->_streamIDToTopic allKeys];
      _IDSLogV();
    }

    pthread_mutex_unlock(&self->_streamIDToTopicLock);
  }
}

- (NSDictionary)syncPriorityMessageStatistics
{
  im_assert_primary_base_queue();
  _copyPairedDevice = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  syncPriorityMessageStatistics = [_copyPairedDevice syncPriorityMessageStatistics];

  return syncPriorityMessageStatistics;
}

- (NSDictionary)defaultPriorityMessageStatistics
{
  im_assert_primary_base_queue();
  _copyPairedDevice = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  defaultPriorityMessageStatistics = [_copyPairedDevice defaultPriorityMessageStatistics];

  return defaultPriorityMessageStatistics;
}

- (NSDictionary)urgentPriorityMessageStatistics
{
  im_assert_primary_base_queue();
  _copyPairedDevice = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  urgentPriorityMessageStatistics = [_copyPairedDevice urgentPriorityMessageStatistics];

  return urgentPriorityMessageStatistics;
}

- (NSDictionary)urgentCloudPriorityMessageStatistics
{
  im_assert_primary_base_queue();
  _copyPairedDevice = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  urgentCloudPriorityMessageStatistics = [_copyPairedDevice urgentCloudPriorityMessageStatistics];

  return urgentCloudPriorityMessageStatistics;
}

- (NSDictionary)sendingMessageStatistics
{
  im_assert_primary_base_queue();
  _copyPairedDevice = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  sendingMessageStatistics = [_copyPairedDevice sendingMessageStatistics];

  return sendingMessageStatistics;
}

- (NSDictionary)queuedIncomingMessageDictionary
{
  im_assert_primary_base_queue();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = [v5 deliveryControllerQueuedIncomingMessageDictionary:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setAllowedTrafficClasses:(id)classes
{
  classesCopy = classes;
  im_assert_primary_base_queue();
  pthread_mutex_lock(&self->_trafficClassLock);
  if (([(NSSet *)self->_allowedTrafficClasses isEqual:classesCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_allowedTrafficClasses, classes);
    v6 = [(NSMutableDictionary *)self->_deviceIDToPeer objectForKey:IDSDeviceDefaultPairedDeviceUniqueID];
    [v6 trafficClassesChanged];

    if (self->_shouldUseIPsecLinkForDefaultPairedDevice)
    {
      nrDevicePreferencesHandler = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];

      if (nrDevicePreferencesHandler)
      {
        nrDevicePreferencesHandler2 = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];
        [nrDevicePreferencesHandler2 setAllowedTrafficClasses:classesCopy];
      }

      else
      {
        nrDevicePreferencesHandler2 = +[IDSFoundationLog delivery];
        if (os_log_type_enabled(nrDevicePreferencesHandler2, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 138412290;
          v10 = classesCopy;
          _os_log_impl(&_mh_execute_header, nrDevicePreferencesHandler2, OS_LOG_TYPE_DEFAULT, "Warning: [IDSUTunDeliveryController setAllowedTrafficClasses:] called but missing nrDevicePreferencesHandler; allowedTrafficClasses %@", &v9, 0xCu);
        }
      }
    }
  }

  pthread_mutex_unlock(&self->_trafficClassLock);
}

- (void)systemScreenDidPowerDown
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "System did lock", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  deviceIDToPeer = self->_deviceIDToPeer;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1004CC3F0;
  v5[3] = &unk_100BDE6A0;
  v5[4] = self;
  [(NSMutableDictionary *)deviceIDToPeer enumerateKeysAndObjectsUsingBlock:v5];
}

- (void)removeUTunPeerWithSessionID:(id)d reason:(int64_t)reason shouldWait:(BOOL)wait
{
  waitCopy = wait;
  dCopy = d;
  pthread_mutex_lock(&self->_deviceIDToPeerLock);
  v9 = [(NSMutableDictionary *)self->_deviceIDToPeer objectForKey:dCopy];
  [v9 disableConnectionForReason:reason shouldWait:waitCopy];
  [v9 setDelegate:0];
  v10 = [(NSMutableDictionary *)self->_deviceIDToPeer objectForKey:dCopy];

  if (v10)
  {
    [(NSMutableDictionary *)self->_deviceIDToPeer removeObjectForKey:dCopy];
  }

  btuuidToSessionID = self->_btuuidToSessionID;
  originalbtUUID = [v9 originalbtUUID];
  v13 = [(NSMutableDictionary *)btuuidToSessionID objectForKey:originalbtUUID];

  if (v13 && [v13 isEqualToString:dCopy])
  {
    v14 = self->_btuuidToSessionID;
    originalbtUUID2 = [v9 originalbtUUID];
    [(NSMutableDictionary *)v14 removeObjectForKey:originalbtUUID2];
  }

  else
  {
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "There is a new session for the local path, skipped removing...", v17, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  pthread_mutex_unlock(&self->_deviceIDToPeerLock);
}

- (void)removeUTunPeerWithDeviceUniqueID:(id)d btuuid:(id)btuuid reason:(int64_t)reason shouldWait:(BOOL)wait
{
  waitCopy = wait;
  pthread_mutex_lock(&self->_deviceIDToPeerLock);
  v9 = IDSDeviceDefaultPairedDeviceUniqueID;
  v10 = [(NSMutableDictionary *)self->_deviceIDToPeer objectForKey:IDSDeviceDefaultPairedDeviceUniqueID];
  [(NSMutableDictionary *)self->_deviceIDToPeer removeObjectForKey:v9];
  pthread_mutex_unlock(&self->_deviceIDToPeerLock);
  [(IDSUTunDeliveryController *)self _disableOTRForDefaultPairedPeer:v10];
  [v10 disableConnectionForReason:reason shouldWait:waitCopy];
  [v10 setDelegate:0];
}

- (void)addUTunPeerWithDeviceUniqueID:(id)d btuuid:(id)btuuid
{
  dCopy = d;
  btuuidCopy = btuuid;
  pthread_mutex_lock(&self->_deviceIDToPeerLock);
  v8 = IDSDeviceDefaultPairedDeviceUniqueID;
  v9 = [(NSMutableDictionary *)self->_deviceIDToPeer objectForKey:IDSDeviceDefaultPairedDeviceUniqueID];

  if (v9)
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      deviceIDToPeer = self->_deviceIDToPeer;
      *buf = 138478339;
      v24 = dCopy;
      v25 = 2113;
      v26 = btuuidCopy;
      v27 = 2113;
      v28 = deviceIDToPeer;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Already have a peer ignoring call to add {deviceUniqueID: %{private}@, btuuid: %{private}@, deviceIDToPeer: %{private}@}", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    pthread_mutex_unlock(&self->_deviceIDToPeerLock);
  }

  else
  {
    [(IDSUTunDeliveryController *)self _refreshIPsecStatus];
    idsNRDeviceBridge = [(IDSUTunDeliveryController *)self idsNRDeviceBridge];
    isNearby = [idsNRDeviceBridge isNearby];

    idsNRDeviceBridge2 = [(IDSUTunDeliveryController *)self idsNRDeviceBridge];
    isClassCConnected = [idsNRDeviceBridge2 isClassCConnected];

    v16 = [[IDSUTunPeer alloc] initWithIdentifier:@"UTunDelivery-Default" btUUID:0 uniqueID:v8 shouldUseIPsecLink:self->_shouldUseIPsecLinkForDefaultPairedDevice isNearby:isNearby isClassCConnected:isClassCConnected];
    [(IDSUTunPeer *)v16 setDelegate:self];
    [(NSMutableDictionary *)self->_deviceIDToPeer setObject:v16 forKey:v8];
    pthread_mutex_unlock(&self->_deviceIDToPeerLock);
    [(IDSUTunDeliveryController *)self peerNearbyStateChanged:v16 forceNotify:1];
    if (self->_shouldUseIPsecLinkForDefaultPairedDevice)
    {
      v17 = 0;
    }

    else
    {
      v17 = IMGetDomainBoolForKey() ^ 1;
    }

    self->_enableOTR = v17;
    v18 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_enableOTR)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      *buf = 138412290;
      v24 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "EnableOTR: %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v20 = self->_enableOTR ? @"YES" : @"NO";
      v22 = v20;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        if (self->_enableOTR)
        {
          v21 = @"YES";
        }

        else
        {
          v21 = @"NO";
        }

        v22 = v21;
        _IDSLogV();
      }
    }

    [(IDSUTunPeer *)v16 enableConnection];
  }
}

- (void)addConnectivityDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = delegateCopy;
  if (delegateCopy)
  {
    connectivityDelegates = self->_connectivityDelegates;
    v9 = v5;
    if (!connectivityDelegates)
    {
      v7 = +[NSHashTable weakObjectsHashTable];
      v8 = self->_connectivityDelegates;
      self->_connectivityDelegates = v7;

      connectivityDelegates = self->_connectivityDelegates;
    }

    delegateCopy = [(NSHashTable *)connectivityDelegates addObject:v9];
    v5 = v9;
  }

  _objc_release_x1(delegateCopy, v5);
}

- (void)removeConnectivityDelegate:(id)delegate
{
  if (delegate)
  {
    [(NSHashTable *)self->_connectivityDelegates removeObject:?];
  }
}

- (id)_deviceIDForPeer:(id)peer
{
  peerCopy = peer;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10000A9E4;
  v16 = sub_10000BC64;
  v17 = 0;
  pthread_mutex_lock(&self->_deviceIDToPeerLock);
  deviceIDToPeer = self->_deviceIDToPeer;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1004CCC38;
  v9[3] = &unk_100BDE6C8;
  v6 = peerCopy;
  v10 = v6;
  v11 = &v12;
  [(NSMutableDictionary *)deviceIDToPeer enumerateKeysAndObjectsUsingBlock:v9];
  pthread_mutex_unlock(&self->_deviceIDToPeerLock);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)peer:(id)peer protobufReceived:(id)received topic:(id)topic command:(id)command fromID:(id)d messageID:(id)iD wantsAppAck:(BOOL)ack expectsPeerResponse:(BOOL)self0 peerResponseIdentifier:(id)self1 messageUUID:(id)self2 priority:(int64_t)self3 isCompressed:(BOOL)self4 connectionType:(int64_t)self5 didWakeHint:(BOOL)self6
{
  HIDWORD(v34) = compressed;
  peerCopy = peer;
  receivedCopy = received;
  topicCopy = topic;
  commandCopy = command;
  dCopy = d;
  iDCopy = iD;
  identifierCopy = identifier;
  uIDCopy = uID;
  v28 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v28 assertRunningWithPriority:priority];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(received) = objc_opt_respondsToSelector();

  if (received)
  {
    v30 = objc_loadWeakRetained(&self->_delegate);
    v31 = [(IDSUTunDeliveryController *)self _deviceIDForPeer:peerCopy];
    LOBYTE(v34) = hint;
    LOBYTE(v33) = BYTE4(v34);
    LOWORD(v32) = __PAIR16__(response, ack);
    [v30 deliveryController:self protobufReceived:receivedCopy topic:topicCopy command:commandCopy deviceID:v31 btUUID:dCopy messageID:iDCopy wantsAppAck:v32 expectsPeerResponse:identifierCopy peerResponseIdentifier:uIDCopy messageUUID:priority priority:v33 isCompressed:type connectionType:v34 didWakeHint:?];
  }
}

- (void)peer:(id)peer dataReceived:(id)received topic:(id)topic command:(id)command fromID:(id)d messageID:(id)iD wantsAppAck:(BOOL)ack expectsPeerResponse:(BOOL)self0 peerResponseIdentifier:(id)self1 messageUUID:(id)self2 priority:(int64_t)self3 isCompressed:(BOOL)self4 connectionType:(int64_t)self5 didWakeHint:(BOOL)self6
{
  HIDWORD(v34) = compressed;
  peerCopy = peer;
  receivedCopy = received;
  topicCopy = topic;
  commandCopy = command;
  dCopy = d;
  iDCopy = iD;
  identifierCopy = identifier;
  uIDCopy = uID;
  v28 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v28 assertRunningWithPriority:priority];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(received) = objc_opt_respondsToSelector();

  if (received)
  {
    v30 = objc_loadWeakRetained(&self->_delegate);
    v31 = [(IDSUTunDeliveryController *)self _deviceIDForPeer:peerCopy];
    LOBYTE(v34) = hint;
    LOBYTE(v33) = BYTE4(v34);
    LOWORD(v32) = __PAIR16__(response, ack);
    [v30 deliveryController:self dataReceived:receivedCopy topic:topicCopy command:commandCopy deviceID:v31 btUUID:dCopy messageID:iDCopy wantsAppAck:v32 expectsPeerResponse:identifierCopy peerResponseIdentifier:uIDCopy messageUUID:priority priority:v33 isCompressed:type connectionType:v34 didWakeHint:?];
  }
}

- (void)peer:(id)peer messageReceived:(id)received topic:(id)topic command:(id)command fromID:(id)d messageID:(id)iD wantsAppAck:(BOOL)ack expectsPeerResponse:(BOOL)self0 peerResponseIdentifier:(id)self1 messageUUID:(id)self2 priority:(int64_t)self3 isCompressed:(BOOL)self4 connectionType:(int64_t)self5 didWakeHint:(BOOL)self6
{
  HIDWORD(v39) = compressed;
  peerCopy = peer;
  receivedCopy = received;
  topicCopy = topic;
  commandCopy = command;
  dCopy = d;
  iDCopy = iD;
  identifierCopy = identifier;
  uIDCopy = uID;
  v27 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v27 assertRunningWithPriority:priority];

  originalbtUUID = [peerCopy originalbtUUID];
  if (originalbtUUID)
  {
    v29 = originalbtUUID;
    btUUID = [peerCopy btUUID];
    v31 = [dCopy isEqualToString:btUUID];

    if (v31)
    {
      originalbtUUID2 = [peerCopy originalbtUUID];

      dCopy = originalbtUUID2;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v34 = objc_opt_respondsToSelector();

  if (v34)
  {
    v35 = objc_loadWeakRetained(&self->_delegate);
    v36 = [(IDSUTunDeliveryController *)self _deviceIDForPeer:peerCopy];
    LOBYTE(v39) = hint;
    LOBYTE(v38) = BYTE4(v39);
    LOWORD(v37) = __PAIR16__(response, ack);
    [v35 deliveryController:self messageReceived:receivedCopy topic:topicCopy command:commandCopy deviceID:v36 btUUID:dCopy messageID:iDCopy wantsAppAck:v37 expectsPeerResponse:identifierCopy peerResponseIdentifier:uIDCopy messageUUID:priority priority:v38 isCompressed:type connectionType:v39 didWakeHint:?];
  }
}

- (void)peer:(id)peer receivedAppLevelAckWithTopic:(id)topic fromID:(id)d messageID:(id)iD peerResponseIdentifier:(id)identifier priority:(int64_t)priority connectionType:(int64_t)type
{
  peerCopy = peer;
  topicCopy = topic;
  dCopy = d;
  iDCopy = iD;
  identifierCopy = identifier;
  v19 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v19 assertRunningWithPriority:priority];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    v22 = objc_loadWeakRetained(&self->_delegate);
    v23 = [(IDSUTunDeliveryController *)self _deviceIDForPeer:peerCopy];
    [v22 deliveryController:self receivedAppLevelAckWithTopic:topicCopy deviceID:v23 btUUID:dCopy messageID:iDCopy peerResponseIdentifier:identifierCopy priority:priority connectionType:type];
  }
}

- (void)peerNearbyStateChanged:(id)changed forceNotify:(BOOL)notify
{
  notifyCopy = notify;
  changedCopy = changed;
  im_assert_primary_base_queue();
  isNearby = [changedCopy isNearby];
  uniqueID = [changedCopy uniqueID];
  v9 = +[IMSystemMonitor sharedInstance];
  isScreenLit = [v9 isScreenLit];

  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(NSMutableDictionary *)self->_deviceIDToPeer count];
    v13 = @"NO";
    *buf = 138413058;
    if (isScreenLit)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    if (isNearby)
    {
      v13 = @"YES";
    }

    v24 = v13;
    v25 = 2112;
    v26 = v14;
    v27 = 2112;
    v28 = uniqueID;
    v29 = 2048;
    v30 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "peer nearby state changed:%@    screenLit:%@   uniqueID:%@   peer-count:%lu", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [(NSMutableDictionary *)self->_deviceIDToPeer count];
    _IDSLogV();
  }

  if ((notifyCopy | isScreenLit))
  {
    if (isNearby)
    {
      v15 = 0;
    }

    else
    {
      [(IDSUTunDeliveryController *)self notificationDelayInSeconds];
      v15 = 1000000000 * v16;
    }

    v17 = dispatch_time(0, v15);
    broadcastQueue = self->_broadcastQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1004CD63C;
    block[3] = &unk_100BD6E18;
    block[4] = self;
    v21 = changedCopy;
    v22 = uniqueID;
    dispatch_after(v17, broadcastQueue, block);
    if (isNearby)
    {
      +[NSDate timeIntervalSinceReferenceDate];
      self->_lastIsNearbyBecameTrue = v19;
    }
  }
}

- (void)peerConnectivityChanged:(id)changed
{
  changedCopy = changed;
  im_assert_primary_base_queue();
  isConnected = [changedCopy isConnected];
  uniqueID = [changedCopy uniqueID];
  v7 = [uniqueID isEqualToString:IDSDeviceDefaultPairedDeviceUniqueID];
  if ((v7 & isConnected) == 1)
  {
    isLinkForDefaultPeerConnected = self->_isLinkForDefaultPeerConnected;
  }

  else
  {
    isLinkForDefaultPeerConnected = (v7 ^ 1) & isConnected;
  }

  [(IDSUTunDeliveryController *)self setIsConnected:isLinkForDefaultPeerConnected & 1];
  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    deviceIDToPeer = self->_deviceIDToPeer;
    *buf = 138412802;
    if (isLinkForDefaultPeerConnected)
    {
      v10 = @"YES";
    }

    v33 = *&v10;
    v34 = 2112;
    v35 = uniqueID;
    v36 = 2112;
    v37 = deviceIDToPeer;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "peer connectivity changed: %@    uniqueID: %@   map: %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = @"NO";
    if (isLinkForDefaultPeerConnected)
    {
      v12 = @"YES";
    }

    v28 = uniqueID;
    v29 = self->_deviceIDToPeer;
    v27 = *&v12;
    _IDSLogV();
  }

  if (isLinkForDefaultPeerConnected)
  {
    v13 = 0;
  }

  else
  {
    idsNRDeviceBridge = [(IDSUTunDeliveryController *)self idsNRDeviceBridge];
    if ([idsNRDeviceBridge latestLinkType] == 2)
    {
      v13 = 0;
    }

    else
    {
      [(IDSUTunDeliveryController *)self notificationDelayInSeconds];
      v13 = 1000000000 * v15;
    }
  }

  v16 = dispatch_time(0, v13);
  broadcastQueue = self->_broadcastQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004CDD80;
  block[3] = &unk_100BD6E40;
  block[4] = self;
  v18 = uniqueID;
  v31 = v18;
  dispatch_after(v16, broadcastQueue, block);
  +[NSDate timeIntervalSinceReferenceDate];
  v20 = v19;
  lastConnectedTime = self->_lastConnectedTime;
  v22 = v20 - lastConnectedTime;
  if (isLinkForDefaultPeerConnected)
  {
    v22 = 0.0;
  }

  if (lastConnectedTime <= 0.0)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v22;
  }

  if (isLinkForDefaultPeerConnected)
  {
    self->_lastConnectedTime = v20;
    if ((isLinkForDefaultPeerConnected & [changedCopy isNearby]) == 1)
    {
      v24 = ((v20 - self->_lastIsNearbyBecameTrue) * 1000.0);
      if (v24 >= 1)
      {
        v25 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v33 = *&v24;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Submitting AWD metric {nearbyToConnectedDurationInMs: %lld ms}.", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        IMSubmitSimpleAWDMetric();
      }
    }
  }

  else
  {
    self->_lastConnectedTime = 0.0;
    if (v23 > 0.0)
    {
      v26 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v33 = v23;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Submitting aggd metric for connected time %f seconds.", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v27 = v23;
        _IDSLogV();
      }

      IMSubmitSimpleAggegateMetric();
    }

    [changedCopy isNearby];
  }
}

- (void)peerCloudConnectivityChanged:(id)changed
{
  changedCopy = changed;
  im_assert_primary_base_queue();
  isCloudConnected = [changedCopy isCloudConnected];
  v26 = changedCopy;
  uniqueID = [changedCopy uniqueID];
  [(IDSUTunDeliveryController *)self setIsCloudConnected:isCloudConnected];
  allObjects = [(NSHashTable *)self->_connectivityDelegates allObjects];
  v8 = [allObjects copy];

  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    if (isCloudConnected)
    {
      v10 = @"YES";
    }

    *buf = 138412546;
    v33 = v10;
    v34 = 2112;
    v35 = uniqueID;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Broadcasting isCloudConnected %@ for %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v11 = isCloudConnected ? @"YES" : @"NO";
    v24 = v11;
    v25 = uniqueID;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      v24 = v11;
      v25 = uniqueID;
      _IDSLogV();
    }
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v13)
  {
    v14 = *v28;
    do
    {
      v15 = 0;
      do
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v27 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 deliveryController:self uniqueID:uniqueID isCloudConnected:isCloudConnected];
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v13);
  }

  if (![v26 isCloudConnected] || (-[IDSUTunDeliveryController lastCloudConnectedTime](self, "lastCloudConnectedTime"), v17 == 0.0))
  {
    [NSDate timeIntervalSinceReferenceDate:v24];
    [(IDSUTunDeliveryController *)self setLastCloudConnectedTime:?];
  }

  else
  {
    v18 = [IDSCloudMessagingLinkReEstablishedMetric alloc];
    +[NSDate timeIntervalSinceReferenceDate];
    v20 = v19;
    [(IDSUTunDeliveryController *)self lastCloudConnectedTime];
    v22 = [v18 initWithInactiveTime:0 linkType:0 priorLinkType:v20 - v21];
    v23 = +[IDSAWDLogger logger];
    [v23 logMetric:v22];
  }
}

- (void)peerHasSpaceForNonUrgentMessages:(id)messages priority:(int64_t)priority dataProtectionClass:(unsigned int)class withTypes:(id)types
{
  v7 = *&class;
  messagesCopy = messages;
  typesCopy = types;
  im_assert_primary_base_queue();
  _copyPairedDevice = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  v13 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"Sync";
    if (priority == 200)
    {
      v14 = @"Default";
    }

    v15 = @"Class D";
    if (priority == 300)
    {
      v14 = @"URGENT";
    }

    if (v7 == 1)
    {
      v15 = @"Class A";
    }

    if (!v7)
    {
      v15 = @"Class C";
    }

    *buf = 138413058;
    v21 = messagesCopy;
    v23 = v14;
    v22 = 2112;
    v24 = 2112;
    v25 = v15;
    if (_copyPairedDevice == messagesCopy)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v26 = 2112;
    v27 = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "peerHasSpaceForNonUrgentMessages %@ %@ %@ isDefaultPeer? %@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if (_copyPairedDevice == messagesCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = objc_loadWeakRetained(&self->_delegate);
      [v19 deliveryControllerHasSpaceforNonUrgentMessages:self priority:priority dataProtectionClass:v7 ofTypes:typesCopy];
    }
  }
}

- (void)peerHasSpaceForNonUrgentMessages:(id)messages priority:(int64_t)priority dataProtectionClass:(unsigned int)class
{
  v5 = *&class;
  messagesCopy = messages;
  im_assert_primary_base_queue();
  _copyPairedDevice = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"Sync";
    if (priority == 200)
    {
      v11 = @"Default";
    }

    v12 = @"Class D";
    if (priority == 300)
    {
      v11 = @"URGENT";
    }

    if (v5 == 1)
    {
      v12 = @"Class A";
    }

    if (!v5)
    {
      v12 = @"Class C";
    }

    *buf = 138413058;
    v18 = messagesCopy;
    v20 = v11;
    v19 = 2112;
    v21 = 2112;
    v22 = v12;
    if (_copyPairedDevice == messagesCopy)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v23 = 2112;
    v24 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "peerHasSpaceForNonUrgentMessages %@ %@ %@ isDefaultPeer? %@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if (_copyPairedDevice == messagesCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      [v16 deliveryControllerHasSpaceforNonUrgentMessages:self priority:priority dataProtectionClass:v5];
    }
  }
}

- (void)peerHasSpaceForUrgentMessages:(id)messages dataProtectionClass:(unsigned int)class withTypes:(id)types
{
  v6 = *&class;
  messagesCopy = messages;
  typesCopy = types;
  im_assert_primary_base_queue();
  _copyPairedDevice = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"Class D";
    if (v6 == 1)
    {
      v12 = @"Class A";
    }

    *buf = 138413058;
    v18 = messagesCopy;
    if (!v6)
    {
      v12 = @"Class C";
    }

    v20 = @"URGENT";
    v19 = 2112;
    v21 = 2112;
    v22 = v12;
    if (_copyPairedDevice == messagesCopy)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v23 = 2112;
    v24 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "peerHasSpaceForUrgentMessages %@ %@ %@ isDefaultPeer? %@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if (_copyPairedDevice == messagesCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      [v16 deliveryControllerHasSpaceforUrgentMessages:self dataProtectionClass:v6 ofTypes:typesCopy];
    }
  }
}

- (void)defaultPeerConnectivityChanged:(BOOL)changed
{
  changedCopy = changed;
  im_assert_primary_base_queue();
  [(IDSUTunDeliveryController *)self _refreshIPsecStatus];
  if (!changedCopy)
  {
    self->_defaultPeerConnectedDeferred = 0;
    nrDevicePreferencesHandler = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];

    if (nrDevicePreferencesHandler)
    {
      nrDevicePreferencesHandler2 = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];
      [nrDevicePreferencesHandler2 annouceAvailabilityForCloudMessaging];
      goto LABEL_7;
    }

LABEL_8:
    isLinkForDefaultPeerConnected = self->_isLinkForDefaultPeerConnected;
    self->_isLinkForDefaultPeerConnected = changedCopy;
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"NO";
      if (isLinkForDefaultPeerConnected)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      if (changedCopy)
      {
        v11 = @"YES";
      }

      *buf = 138412546;
      v22 = v12;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "default peer connectivity changed: %@ -> %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v13 = isLinkForDefaultPeerConnected ? @"YES" : @"NO";
      v14 = changedCopy ? @"YES" : @"NO";
      v19 = v13;
      v20 = v14;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v19 = v13;
        v20 = v14;
        _IDSLogV();
      }
    }

    v15 = [(IDSUTunDeliveryController *)self _copyPairedDevice:v19];
    v16 = v15;
    if (v15)
    {
      if (isLinkForDefaultPeerConnected != changedCopy)
      {
        [v15 setIsConnected:changedCopy];
        [(IDSUTunDeliveryController *)self peerConnectivityChanged:v16];
      }
    }

    else
    {
      v17 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "default peer connectivity changed but no default peer", buf, 2u);
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
    }

    return;
  }

  if (self->_localAccountSetupCompleted)
  {
    [(IDSUTunDeliveryController *)self enableConnectionForDefaultPairedDevice:1];
    nrDevicePreferencesHandler3 = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];

    if (nrDevicePreferencesHandler3)
    {
      nrDevicePreferencesHandler4 = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];
      [nrDevicePreferencesHandler4 setQuickRelayRequest:0];

      nrDevicePreferencesHandler2 = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];
      [nrDevicePreferencesHandler2 revokeAvailabilityForCloudMessaging];
LABEL_7:

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  self->_defaultPeerConnectedDeferred = 1;
  v18 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "local account setup has not finished yet - defer default peer connected", buf, 2u);
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
}

- (void)legacyUTunBTLinkManagerDefaultPeerConnectivityChanged:(BOOL)changed
{
  changedCopy = changed;
  im_assert_primary_base_queue();
  [(IDSUTunDeliveryController *)self _refreshIPsecStatus];
  if (self->_shouldUseIPsecLinkForDefaultPairedDevice)
  {
    v5 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (changedCopy)
      {
        v6 = @"YES";
      }

      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "legacyUTunBTLinkManagerDefaultPeerConnectivityChanged: %@ but using IPsec link - drop callback", &v7, 0xCu);
    }
  }

  else
  {

    [(IDSUTunDeliveryController *)self defaultPeerConnectivityChanged:changedCopy];
  }
}

- (void)defaultPeerNearbyChanged:(BOOL)changed
{
  changedCopy = changed;
  im_assert_primary_base_queue();
  _copyPairedDevice = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  v6 = _copyPairedDevice;
  if (_copyPairedDevice)
  {
    isNearby = [_copyPairedDevice isNearby];
    if (isNearby != changedCopy)
    {
      v8 = isNearby;
      [v6 setIsNearby:changedCopy];
      v9 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = @"NO";
        if (v8)
        {
          v11 = @"YES";
        }

        else
        {
          v11 = @"NO";
        }

        if (changedCopy)
        {
          v10 = @"YES";
        }

        *buf = 138412546;
        v17 = v11;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "default peer nearby changed: %@ -> %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        if (v8)
        {
          v12 = @"YES";
        }

        else
        {
          v12 = @"NO";
        }

        if (changedCopy)
        {
          v13 = @"YES";
        }

        else
        {
          v13 = @"NO";
        }

        v14 = v12;
        v15 = v13;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v14 = v12;
          v15 = v13;
          _IDSLogV();
        }
      }

      [(IDSUTunDeliveryController *)self peerNearbyStateChanged:v6 forceNotify:1, v14, v15];
    }
  }
}

- (void)defaultPeerLinkTypeChanged:(unsigned __int8)changed
{
  changedCopy = changed;
  im_assert_primary_base_queue();
  _copyPairedDevice = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  if (!_copyPairedDevice)
  {
    v6 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ Did not find default peer device.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        selfCopy3 = self;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          selfCopy3 = self;
          _IDSLogV();
        }
      }
    }
  }

  [_copyPairedDevice logCurrentTransportStatsAndResetTimers];
  if ([_copyPairedDevice linkType] != changedCopy)
  {
    [_copyPairedDevice setLinkType:changedCopy];
  }
}

- (void)legacyUTunBTLinkManagerDefaultPeerNearbyChanged:(BOOL)changed
{
  changedCopy = changed;
  im_assert_primary_base_queue();
  [(IDSUTunDeliveryController *)self _refreshIPsecStatus];
  if (self->_shouldUseIPsecLinkForDefaultPairedDevice)
  {
    v5 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (changedCopy)
      {
        v6 = @"YES";
      }

      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "legacyUTunBTLinkManagerDefaultPeerNearbyChanged: %@ but using IPsec link - drop callback", &v7, 0xCu);
    }
  }

  else
  {

    [(IDSUTunDeliveryController *)self defaultPeerNearbyChanged:changedCopy];
  }
}

- (void)defaultPeerCloudConnectivityChanged:(BOOL)changed
{
  changedCopy = changed;
  im_assert_primary_base_queue();
  _copyPairedDevice = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (changedCopy)
    {
      v7 = @"YES";
    }

    *buf = 138412290;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "cloud connectivity changed for default peer: %@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    if (changedCopy)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v9 = v8;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      v9 = v8;
      _IDSLogV();
    }
  }

  [(IDSUTunDeliveryController *)self _setCloudConnectionConnected:changedCopy forPeer:_copyPairedDevice, v9];
}

- (void)legacyUTunBTLinkManagerDefaultPeerCloudConnectivityChanged:(BOOL)changed
{
  changedCopy = changed;
  im_assert_primary_base_queue();
  [(IDSUTunDeliveryController *)self _refreshIPsecStatus];
  if (self->_shouldUseIPsecLinkForDefaultPairedDevice)
  {
    v5 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (changedCopy)
      {
        v6 = @"YES";
      }

      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "legacyUTunBTLinkManagerDefaultPeerCloudConnectivityChanged: %@ but using IPsec link - drop callback", &v7, 0xCu);
    }
  }

  else
  {

    [(IDSUTunDeliveryController *)self defaultPeerCloudConnectivityChanged:changedCopy];
  }
}

- (void)defaultPeerMagnetIndicationOfAwakeStateChanged:(BOOL)changed
{
  changedCopy = changed;
  im_assert_primary_base_queue();
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (changedCopy)
    {
      v6 = @"YES";
    }

    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "defaultPeerMagnetIndicationOfAwakeStateChanged %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v7 = @"NO";
    if (changedCopy)
    {
      v7 = @"YES";
    }

    v9 = v7;
    _IDSLogV();
  }

  _copyPairedDevice = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  [_copyPairedDevice setIsMagnetIndicatingPeerIsAwake:changedCopy];
}

- (void)defaultPeerClassCConnectivityDidChange:(BOOL)change
{
  changeCopy = change;
  im_assert_primary_base_queue();
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (changeCopy)
    {
      v6 = @"YES";
    }

    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "defaultPeerClassCConnectivityDidChange %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v7 = @"NO";
    if (changeCopy)
    {
      v7 = @"YES";
    }

    v9 = v7;
    _IDSLogV();
  }

  _copyPairedDevice = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  [_copyPairedDevice setIsClassCConnected:changeCopy];
  [(IDSUTunDeliveryController *)self setIsClassCConnected:changeCopy];
  [(IDSUTunDeliveryController *)self peerConnectivityChanged:_copyPairedDevice];
}

- (void)defaultPeerSetPreferInfraWiFi:(BOOL)fi services:(id)services
{
  fiCopy = fi;
  servicesCopy = services;
  im_assert_primary_base_queue();
  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (fiCopy)
    {
      v8 = @"YES";
    }

    *buf = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = servicesCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "defaultPeerSetPreferInfraWiFi: %@ services: %@", buf, 0x16u);
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

  if (self->_shouldUseIPsecLinkForDefaultPairedDevice)
  {
    nrDevicePreferencesHandler = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];
    v10 = nrDevicePreferencesHandler == 0;

    if (v10)
    {
      v13 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "defaultPeerSetPreferInfraWiFi failed due to nil device identifier.", buf, 2u);
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
    }

    else
    {
      nrDevicePreferencesHandler2 = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];
      [nrDevicePreferencesHandler2 setPreferInfraWiFiRequest:fiCopy services:servicesCopy];
    }
  }

  else
  {
    _copyPairedDevice = [(IDSUTunDeliveryController *)self _copyPairedDevice];
    [_copyPairedDevice setPreferInfraWiFi:fiCopy services:servicesCopy];
  }
}

- (void)defaultPeerSetLinkPreferences:(id)preferences
{
  preferencesCopy = preferences;
  im_assert_primary_base_queue();
  if (self->_shouldUseIPsecLinkForDefaultPairedDevice)
  {
    nrDevicePreferencesHandler = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];

    if (nrDevicePreferencesHandler)
    {
      v6 = +[IDSLinkPreferencesManager sharedInstance];
      accumulativePreferencesForAllServices = [v6 accumulativePreferencesForAllServices];

      v8 = [accumulativePreferencesForAllServices objectForKey:@"PacketsPerSecond"];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = &off_100C3C838;
      }

      v11 = v10;

      v12 = [accumulativePreferencesForAllServices objectForKey:@"InputBytesPerSecond"];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = &off_100C3C838;
      }

      v15 = v14;

      v16 = [accumulativePreferencesForAllServices objectForKey:@"OutputBytesPerSecond"];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = &off_100C3C838;
      }

      v19 = v18;

      v20 = [accumulativePreferencesForAllServices objectForKey:@"Intent"];
      if ([v20 isEqualToString:@"forceBTClassic"] && objc_msgSend(v11, "unsignedIntValue") <= 0xC7)
      {

        v11 = &off_100C3C850;
      }

      v21 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544386;
        v36 = preferencesCopy;
        v37 = 1024;
        unsignedIntValue = [v11 unsignedIntValue];
        v39 = 1024;
        unsignedIntValue2 = [v15 unsignedIntValue];
        v41 = 1024;
        unsignedIntValue3 = [v19 unsignedIntValue];
        v43 = 2114;
        v44 = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "setBluetoothLinkPreferences: service: %{public}@, pps: %d input bps: %d output bps: %d intent: %{public}@", buf, 0x28u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          unsignedIntValue4 = [v11 unsignedIntValue];
          unsignedIntValue5 = [v15 unsignedIntValue];
          unsignedIntValue6 = [v19 unsignedIntValue];
          v34 = v20;
          v31 = unsignedIntValue4;
          v32 = unsignedIntValue5;
          v30 = preferencesCopy;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            unsignedIntValue7 = [v11 unsignedIntValue];
            unsignedIntValue8 = [v15 unsignedIntValue];
            unsignedIntValue6 = [v19 unsignedIntValue];
            v34 = v20;
            v31 = unsignedIntValue7;
            v32 = unsignedIntValue8;
            v30 = preferencesCopy;
            _IDSLogV();
          }
        }
      }

      v26 = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler:v30];
      [v26 setBluetoothLinkPreferences:v11 inputbps:v15 outputbps:v19];
    }

    else
    {
      v29 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "defaultPeerSetLinkPreferences failed due to nil device identifier.", buf, 2u);
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
    }
  }

  else
  {
    v27 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v36 = preferencesCopy;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "defaultPeerSetLinkPreferences, service: %{public}@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v30 = preferencesCopy;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v30 = preferencesCopy;
          _IDSLogV();
        }
      }
    }

    _copyPairedDevice = [(IDSUTunDeliveryController *)self _copyPairedDevice];
    [_copyPairedDevice setLinkPreferences:preferencesCopy];
  }
}

- (void)setCompanionLinkPreference:(BOOL)preference
{
  preferenceCopy = preference;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (preferenceCopy)
    {
      v6 = @"YES";
    }

    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setCompanionLinkPreference: assertIsoc: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    if (preferenceCopy)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v9 = v7;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      v9 = v7;
      _IDSLogV();
    }
  }

  nrDevicePreferencesHandler = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];
  [nrDevicePreferencesHandler setCompanionLinkPreferences:preferenceCopy];
}

- (void)defaultPeerSetWantsQuickRelayRequest:(BOOL)request
{
  requestCopy = request;
  im_assert_primary_base_queue();
  [(IDSUTunDeliveryController *)self _refreshIPsecStatus];
  if (self->_shouldUseIPsecLinkForDefaultPairedDevice)
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (requestCopy)
      {
        v6 = @"YES";
      }

      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "defaultPeerSetWantsQuickRelayRequest: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v7 = requestCopy ? @"YES" : @"NO";
      v10 = v7;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v10 = v7;
        _IDSLogV();
      }
    }

    nrDevicePreferencesHandler = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];

    if (nrDevicePreferencesHandler)
    {
      nrDevicePreferencesHandler2 = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];
      [nrDevicePreferencesHandler2 setQuickRelayRequest:requestCopy];
    }

    else
    {
      nrDevicePreferencesHandler2 = +[IDSFoundationLog delivery];
      if (os_log_type_enabled(nrDevicePreferencesHandler2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, nrDevicePreferencesHandler2, OS_LOG_TYPE_DEFAULT, "[IDSUTunDeliveryController defaultPeerSetWantsQuickRelayRequest:] called but missing nrDevicePreferencesHandler", buf, 2u);
      }
    }
  }
}

- (void)defaultPeerSupportsDirectMessaging:(BOOL)messaging isObliterating:(BOOL)obliterating
{
  obliteratingCopy = obliterating;
  messagingCopy = messaging;
  im_assert_primary_base_queue();
  if (self->_shouldUseIPsecLinkForDefaultPairedDevice)
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (messagingCopy)
      {
        v8 = @"YES";
      }

      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "defaultPeerSupportsDirectMessaging: %@", buf, 0xCu);
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

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 deliveryController:self device:0 supportsDirectMessaging:messagingCopy isObliterating:obliteratingCopy];
    }
  }
}

- (void)defaultPeerUnpairStart
{
  im_assert_primary_base_queue();
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "defaultPeerUnpairStart", v5, 2u);
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

  _copyPairedDevice = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  [_copyPairedDevice unpairStart];
  [(IDSUTunDeliveryController *)self _updateLocalSetupInProgressState:1];
}

- (void)defaultPeerDropDisallowedMessages
{
  im_assert_primary_base_queue();
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "defaultPeerDropDisallowedMessages", v5, 2u);
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

  _copyPairedDevice = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  [_copyPairedDevice dropDisallowedMessages];
}

- (void)peerCloudConnectivityChanged:(id)changed isCloudConnected:(BOOL)connected
{
  connectedCopy = connected;
  changedCopy = changed;
  im_assert_primary_base_queue();
  if ([(__CFString *)changedCopy isEqualToString:kIDSDefaultPairedDeviceID])
  {
    [(IDSUTunDeliveryController *)self _refreshIPsecStatus];
    if (self->_shouldUseIPsecLinkForDefaultPairedDevice)
    {
      v7 = +[IDSFoundationLog delivery];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = @"NO";
        if (connectedCopy)
        {
          v8 = @"YES";
        }

        *buf = 138412290;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "peerCloudConnectivityChanged: %@ but using IPsec link - drop callback", buf, 0xCu);
      }

      goto LABEL_20;
    }

    v9 = IDSDeviceDefaultPairedDeviceUniqueID;

    changedCopy = v9;
  }

  v10 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (connectedCopy)
    {
      v11 = @"YES";
    }

    *buf = 138412546;
    v16 = changedCopy;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "cloud connectivity changed for peer %@: %@.", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v12 = connectedCopy ? @"YES" : @"NO";
    v13 = changedCopy;
    v14 = v12;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      v13 = changedCopy;
      v14 = v12;
      _IDSLogV();
    }
  }

  v7 = [(IDSUTunDeliveryController *)self _createPeerFromDeviceID:changedCopy, v13, v14];
  [(IDSUTunDeliveryController *)self _setCloudConnectionConnected:connectedCopy forPeer:v7];
LABEL_20:
}

- (void)_setCloudConnectionConnected:(BOOL)connected forPeer:(id)peer
{
  connectedCopy = connected;
  peerCopy = peer;
  v7 = peerCopy;
  if (peerCopy)
  {
    if (connectedCopy)
    {
      [peerCopy enableCloudConnection];
    }

    isCloudConnected = [v7 isCloudConnected];
    if (isCloudConnected != connectedCopy)
    {
      v9 = isCloudConnected;
      [v7 setIsCloudConnected:connectedCopy];
      v10 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = @"NO";
        if (v9)
        {
          v12 = @"YES";
        }

        else
        {
          v12 = @"NO";
        }

        *buf = 138412802;
        v20 = v7;
        v22 = v12;
        v21 = 2112;
        if (connectedCopy)
        {
          v11 = @"YES";
        }

        v23 = 2112;
        v24 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ cloud connectivity changed: %@ -> %@", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        if (v9)
        {
          v13 = @"YES";
        }

        else
        {
          v13 = @"NO";
        }

        if (connectedCopy)
        {
          v14 = @"YES";
        }

        else
        {
          v14 = @"NO";
        }

        v17 = v13;
        v18 = v14;
        v16 = v7;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v17 = v13;
          v18 = v14;
          v16 = v7;
          _IDSLogV();
        }
      }

      [(IDSUTunDeliveryController *)self peerCloudConnectivityChanged:v7, v16, v17, v18];
    }
  }

  else
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Tried to process cloud connectivity change with nil peer.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (BOOL)isTerminusNearby
{
  idsNRDeviceBridge = [(IDSUTunDeliveryController *)self idsNRDeviceBridge];
  isNearby = [idsNRDeviceBridge isNearby];

  return isNearby;
}

- (BOOL)isTerminusRegistered
{
  idsNRDeviceBridge = [(IDSUTunDeliveryController *)self idsNRDeviceBridge];
  isRegistered = [idsNRDeviceBridge isRegistered];

  return isRegistered;
}

- (void)nrDeviceBridge:(id)bridge defaultPeerNearbyDidChange:(BOOL)change
{
  changeCopy = change;
  bridgeCopy = bridge;
  [(IDSUTunDeliveryController *)self defaultPeerNearbyChanged:changeCopy];
  _copyPairedDevice = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  if (_copyPairedDevice && changeCopy)
  {
    allObjects = [(NSHashTable *)self->_connectivityDelegates allObjects];
    v8 = [allObjects copy];

    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [_copyPairedDevice uniqueID];
      *buf = 138412290;
      v26 = uniqueID;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Broadcasting found nearby IPsec device {uniqueID: %@}", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        uniqueID2 = [_copyPairedDevice uniqueID];
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          uniqueID3 = [_copyPairedDevice uniqueID];
          _IDSLogV();
        }
      }
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = *v21;
      do
      {
        v14 = 0;
        do
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v20 + 1) + 8 * v14);
          if (objc_opt_respondsToSelector())
          {
            uniqueID4 = [_copyPairedDevice uniqueID];
            [v15 deliveryController:self foundNearbyIPsecCapableDeviceWithUniqueID:uniqueID4];
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    [(IDSUTunDeliveryController *)self peerNearbyStateChanged:_copyPairedDevice forceNotify:1];
  }
}

- (void)_setOTREnableTimer
{
  [(IMTimer *)self->_otrTimer invalidate];
  otrTimer = self->_otrTimer;
  self->_otrTimer = 0;

  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Set Enable OTR Timer for 60.0 seconds", v9, 2u);
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

  v5 = [IMTimer alloc];
  v6 = im_primary_queue();
  v7 = [v5 initWithTimeInterval:@"OTREnableTimer" name:1 shouldWake:self target:"_enableOTRForDefaultPairedDevice" selector:0 userInfo:v6 queue:60.0];
  v8 = self->_otrTimer;
  self->_otrTimer = v7;
}

- (void)_OTREnableTimerFiredOnMain
{
  v3 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004D12F8;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_enableOTRForDefaultPairedDevice
{
  im_assert_primary_base_queue();
  if (self->_enableOTR)
  {
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Set OTR for defaultPairedDevice: YES.", v6, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    v4 = +[IDSOTRController sharedInstance];
    [v4 resetAllSessions];

    v5 = [(NSMutableDictionary *)self->_deviceIDToPeer objectForKey:IDSDeviceDefaultPairedDeviceUniqueID];
    [v5 setEnableOTR:1];
    self->_otrInitialized = 1;
  }
}

- (void)_disableOTRForDefaultPairedPeer:(id)peer
{
  peerCopy = peer;
  im_assert_primary_base_queue();
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set OTR for defaultPairedDevice: NO.", v7, 2u);
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

  [(IMTimer *)self->_otrTimer invalidate];
  otrTimer = self->_otrTimer;
  self->_otrTimer = 0;

  [peerCopy setEnableOTR:0];
  self->_otrInitialized = 0;
}

- (void)didAddPairedDevice:(id)device
{
  deviceCopy = device;
  im_assert_primary_base_queue();
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "didAddPairedDevice is called.", v8, 2u);
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

  v6 = +[IDSOTRKeyStorage sharedInstance];
  [v6 removeSessionKeyForAllTokenFromMainQueue];

  v7 = +[IDSOTRController sharedInstance];
  [v7 removeAllCachedSessionsFromMainQueue];

  if (self->_enableOTR)
  {
    [(IDSUTunDeliveryController *)self _setOTREnableTimer];
  }
}

- (void)didRemovePairedDevice:(id)device
{
  deviceCopy = device;
  im_assert_primary_base_queue();
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "didRemovePairedDevice is called.", v9, 2u);
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

  pthread_mutex_lock(&self->_deviceIDToPeerLock);
  v6 = [(NSMutableDictionary *)self->_deviceIDToPeer objectForKey:IDSDeviceDefaultPairedDeviceUniqueID];
  pthread_mutex_unlock(&self->_deviceIDToPeerLock);
  [(IDSUTunDeliveryController *)self _disableOTRForDefaultPairedPeer:v6];
  v7 = +[IDSOTRKeyStorage sharedInstance];
  [v7 removeSessionKeyForAllTokenFromMainQueue];

  v8 = +[IDSOTRController sharedInstance];
  [v8 removeAllCachedSessionsFromMainQueue];
}

- (void)didUpdatePairedDevice:(id)device
{
  deviceCopy = device;
  im_assert_primary_base_queue();
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (self->_enableOTR)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    if (self->_otrInitialized)
    {
      v6 = @"YES";
    }

    *buf = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "didUpdatePairedDevice is called, enable OTR %@, otrInitialized %@.", buf, 0x16u);
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

  if (self->_enableOTR && self->_otrInitialized)
  {
    v8 = [(NSMutableDictionary *)self->_deviceIDToPeer objectForKey:IDSDeviceDefaultPairedDeviceUniqueID];
    [v8 setEnableOTR:1];
  }
}

- (void)findDefaultPeerToForceOTRNegotiation:(id)negotiation priority:(int64_t)priority completionBlock:(id)block
{
  blockCopy = block;
  negotiationCopy = negotiation;
  v9 = +[IDSUTunDeliveryController sharedInstance];
  _copyPairedDevice = [v9 _copyPairedDevice];

  [_copyPairedDevice forceOTRNegotiationForTopic:negotiationCopy priority:priority completionBlock:blockCopy];
}

- (void)admissionPolicyChangedForTopic:(id)topic allowed:(BOOL)allowed
{
  topicCopy = topic;
  im_assert_primary_base_queue();
  deviceIDToPeer = self->_deviceIDToPeer;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1004D1B80;
  v9[3] = &unk_100BDE6F0;
  v10 = topicCopy;
  allowedCopy = allowed;
  v8 = topicCopy;
  [(NSMutableDictionary *)deviceIDToPeer enumerateKeysAndObjectsUsingBlock:v9];
}

- (void)_cleanupContinuityPeerMaps:(id)maps
{
  mapsCopy = maps;
  v5 = [(NSMutableDictionary *)self->_peerListMap objectForKey:mapsCopy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(IDSUTunDeliveryController *)self _copyPeerWithID:*(*(&v11 + 1) + 8 * v9)];
        [v10 setContinuityConnectCount:0];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(NSMutableDictionary *)self->_peerListMap removeObjectForKey:mapsCopy];
  [(NSMutableDictionary *)self->_pendingPeerMap removeObjectForKey:mapsCopy];
  [(NSMutableDictionary *)self->_peerConnectBlocksMap removeObjectForKey:mapsCopy];
  [(NSMutableDictionary *)self->_peerFailureBlocksMap removeObjectForKey:mapsCopy];
}

- (void)lockContinuityPeer:(id)peer btUUID:(id)d
{
  peerCopy = peer;
  dCopy = d;
  pthread_mutex_lock(&self->_continuityPeerLock);
  v8 = [(NSMutableDictionary *)self->_lockedPeerMap objectForKey:dCopy];
  v9 = v8;
  if (v8)
  {
    if (([v8 isEqualToString:peerCopy] & 1) == 0)
    {
      v10 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v18 = v9;
        v19 = 2112;
        v20 = dCopy;
        v21 = 2112;
        v22 = peerCopy;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Peer %@ is already locked for btUUID %@, ignore peer %@", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  else
  {
    lockedPeerMap = self->_lockedPeerMap;
    if (!lockedPeerMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v13 = self->_lockedPeerMap;
      self->_lockedPeerMap = Mutable;

      lockedPeerMap = self->_lockedPeerMap;
    }

    [(NSMutableDictionary *)lockedPeerMap setObject:peerCopy forKey:dCopy];
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = peerCopy;
      v19 = 2112;
      v20 = dCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Lock peer %@ for btUUID %@.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v15 = peerCopy;
      v16 = dCopy;
      _IDSLogV();
    }

    [(IDSUTunDeliveryController *)self _cleanupContinuityPeerMaps:dCopy, v15, v16];
  }

  pthread_mutex_unlock(&self->_continuityPeerLock);
}

- (void)unlockContinuityPeer:(id)peer
{
  peerCopy = peer;
  pthread_mutex_lock(&self->_continuityPeerLock);
  v5 = [(NSMutableDictionary *)self->_lockedPeerMap objectForKey:peerCopy];
  if (v5)
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = peerCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Remove locked peer %@ for btUUID %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v7 = v5;
      v8 = peerCopy;
      _IDSLogV();
    }

    [(NSMutableDictionary *)self->_lockedPeerMap removeObjectForKey:peerCopy, v7, v8];
  }

  [(IDSUTunDeliveryController *)self _cleanupContinuityPeerMaps:peerCopy];
  pthread_mutex_unlock(&self->_continuityPeerLock);
}

- (void)unlockAllContinuityPeers
{
  pthread_mutex_lock(&self->_continuityPeerLock);
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Unlock all peers, clean up.", v9, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  lockedPeerMap = self->_lockedPeerMap;
  self->_lockedPeerMap = 0;

  peerListMap = self->_peerListMap;
  self->_peerListMap = 0;

  pendingPeerMap = self->_pendingPeerMap;
  self->_pendingPeerMap = 0;

  peerConnectBlocksMap = self->_peerConnectBlocksMap;
  self->_peerConnectBlocksMap = 0;

  peerFailureBlocksMap = self->_peerFailureBlocksMap;
  self->_peerFailureBlocksMap = 0;

  pthread_mutex_unlock(&self->_continuityPeerLock);
}

- (id)lockedContinuityPeerID:(id)d
{
  dCopy = d;
  pthread_mutex_lock(&self->_continuityPeerLock);
  v5 = [(NSMutableDictionary *)self->_lockedPeerMap objectForKey:dCopy];

  pthread_mutex_unlock(&self->_continuityPeerLock);

  return v5;
}

- (id)pendingContinuityPeerID:(id)d
{
  dCopy = d;
  pthread_mutex_lock(&self->_continuityPeerLock);
  v5 = [(NSMutableDictionary *)self->_pendingPeerMap objectForKey:dCopy];

  pthread_mutex_unlock(&self->_continuityPeerLock);

  return v5;
}

- (void)addContinuityPeer:(id)peer btUUID:(id)d connectBlock:(id)block failureBlock:(id)failureBlock
{
  peerCopy = peer;
  dCopy = d;
  blockCopy = block;
  failureBlockCopy = failureBlock;
  if ([peerCopy isEqualToString:IDSDeviceDefaultPairedDeviceUniqueID])
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "addContinuityPeer is called for default paired device, please file a bug.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }

  else
  {
    pthread_mutex_lock(&self->_continuityPeerLock);
    [(NSMutableDictionary *)self->_peerListMap objectForKey:dCopy];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v15 = v45 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v16)
    {
      v17 = *v45;
      while (2)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v45 != v17)
          {
            objc_enumerationMutation(v15);
          }

          if ([*(*(&v44 + 1) + 8 * i) isEqualToString:peerCopy])
          {
            pthread_mutex_unlock(&self->_continuityPeerLock);
            v27 = v15;
            goto LABEL_48;
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v44 objects:v54 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v49 = peerCopy;
      v50 = 2112;
      v51 = dCopy;
      v52 = 2112;
      v53 = v15;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Add new peer %@ for btUUID %@, list %@.", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v41 = dCopy;
      v43 = v15;
      v38 = peerCopy;
      _IDSLogV();
    }

    if (!v15)
    {
      v15 = objc_alloc_init(NSMutableArray);
    }

    [v15 addObject:{peerCopy, v38, v41, v43}];
    peerListMap = self->_peerListMap;
    if (!peerListMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v22 = self->_peerListMap;
      self->_peerListMap = Mutable;

      peerListMap = self->_peerListMap;
    }

    [(NSMutableDictionary *)peerListMap setObject:v15 forKey:dCopy];
    v23 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = v15;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "current peer list:%@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v39 = v15;
      _IDSLogV();
    }

    pendingPeerMap = self->_pendingPeerMap;
    if (!pendingPeerMap)
    {
      v25 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v26 = self->_pendingPeerMap;
      self->_pendingPeerMap = v25;

      pendingPeerMap = self->_pendingPeerMap;
    }

    v27 = [(NSMutableDictionary *)pendingPeerMap objectForKey:dCopy, v39];
    if (!v27)
    {
      [(NSMutableDictionary *)self->_pendingPeerMap setObject:peerCopy forKey:dCopy];
      v28 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v49 = peerCopy;
        v50 = 2112;
        v51 = dCopy;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Enable peer %@ for btUUID %@.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v40 = peerCopy;
        v42 = dCopy;
        _IDSLogV();
      }

      if (blockCopy)
      {
        v29 = im_primary_queue();
        dispatch_async(v29, blockCopy);
      }
    }

    v30 = [(NSMutableDictionary *)self->_peerConnectBlocksMap objectForKey:dCopy, v40, v42];
    if (!v30)
    {
      v30 = objc_alloc_init(NSMutableDictionary);
    }

    if (!self->_peerConnectBlocksMap)
    {
      v31 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      peerConnectBlocksMap = self->_peerConnectBlocksMap;
      self->_peerConnectBlocksMap = v31;
    }

    v33 = [blockCopy copy];
    [v30 setObject:v33 forKey:peerCopy];

    [(NSMutableDictionary *)self->_peerConnectBlocksMap setObject:v30 forKey:dCopy];
    v34 = [(NSMutableDictionary *)self->_peerFailureBlocksMap objectForKey:dCopy];
    if (!v34)
    {
      v34 = objc_alloc_init(NSMutableDictionary);
    }

    if (!self->_peerFailureBlocksMap)
    {
      v35 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      peerFailureBlocksMap = self->_peerFailureBlocksMap;
      self->_peerFailureBlocksMap = v35;
    }

    v37 = [failureBlockCopy copy];
    [v34 setObject:v37 forKey:peerCopy];

    [(NSMutableDictionary *)self->_peerFailureBlocksMap setObject:v34 forKey:dCopy];
    pthread_mutex_unlock(&self->_continuityPeerLock);

LABEL_48:
  }
}

- (void)tryNextContinuityPeer:(id)peer
{
  peerCopy = peer;
  pthread_mutex_lock(&self->_continuityPeerLock);
  selfCopy = self;
  v37 = peerCopy;
  v38 = [(NSMutableDictionary *)self->_lockedPeerMap objectForKey:peerCopy];
  if (!v38)
  {
    v6 = [(NSMutableDictionary *)self->_pendingPeerMap objectForKey:peerCopy];
    if (!v6)
    {
      v30 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "No pending peer, bail out.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }

      pthread_mutex_unlock(&self->_continuityPeerLock);
      goto LABEL_62;
    }

    v7 = [(NSMutableDictionary *)self->_peerListMap objectForKey:peerCopy];
    v8 = [(IDSUTunDeliveryController *)self _copyPeerWithID:v6];
    continuityConnectCount = [v8 continuityConnectCount];

    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v48 = v7;
      v49 = 2112;
      v50 = v6;
      v51 = 1024;
      v52 = continuityConnectCount;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Search peer in %@. (current peer %@, count %d)", buf, 0x1Cu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v34 = v6;
      v36 = continuityConnectCount;
      v32 = v7;
      _IDSLogV();
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v7;
    v11 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v11)
    {
      v39 = 0;
      v12 = *v43;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v43 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v42 + 1) + 8 * i);
          if (([v14 isEqualToString:{v6, v32, v34, v36}] & 1) == 0)
          {
            v15 = [(IDSUTunDeliveryController *)selfCopy _copyPeerWithID:v14];
            continuityConnectCount2 = [v15 continuityConnectCount];
            v17 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v48 = v14;
              v49 = 1024;
              LODWORD(v50) = continuityConnectCount2;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "peer %@ has count %d", buf, 0x12u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v32 = v14;
              v34 = continuityConnectCount2;
              _IDSLogV();
            }

            if (continuityConnectCount2 >= continuityConnectCount)
            {
              continuityConnectCount2 = continuityConnectCount;
            }

            else
            {
              v18 = v14;

              v39 = v18;
            }

            continuityConnectCount = continuityConnectCount2;
          }
        }

        v11 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v11);

      if (v39)
      {
        v19 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v48 = v39;
          v49 = 2112;
          v50 = v6;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Try new peer %@, disable peer %@.", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v32 = v39;
          v34 = v6;
          _IDSLogV();
        }

        v20 = [(NSMutableDictionary *)selfCopy->_peerFailureBlocksMap objectForKey:v37, v32, v34];
        v21 = [v20 objectForKey:v6];

        if (v21)
        {
          v22 = im_primary_queue();
          dispatch_async(v22, v21);
        }

        pendingPeerMap = selfCopy->_pendingPeerMap;
        if (!pendingPeerMap)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v25 = selfCopy->_pendingPeerMap;
          selfCopy->_pendingPeerMap = Mutable;

          pendingPeerMap = selfCopy->_pendingPeerMap;
        }

        [(NSMutableDictionary *)pendingPeerMap setObject:v39 forKey:v37];
        v26 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v48 = v39;
          v49 = 2112;
          v50 = v37;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Enable peer %@ for btUUID %@.", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v33 = v39;
          v35 = v37;
          _IDSLogV();
        }

        v27 = [(NSMutableDictionary *)selfCopy->_peerConnectBlocksMap objectForKey:v37, v33, v35];
        v28 = [v27 objectForKey:v39];

        if (v28)
        {
          v29 = im_primary_queue();
          dispatch_async(v29, v28);
        }

        pthread_mutex_unlock(&selfCopy->_continuityPeerLock);

LABEL_61:
LABEL_62:

        goto LABEL_63;
      }
    }

    else
    {
    }

    v31 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v48 = v6;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Found no other peer, stick with peer %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    pthread_mutex_unlock(&selfCopy->_continuityPeerLock);
    v39 = 0;
    goto LABEL_61;
  }

  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v48 = v38;
    v49 = 2112;
    v50 = v37;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Peer %@ is already locked for btUUID %@, skip other peers.", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  pthread_mutex_unlock(&self->_continuityPeerLock);
LABEL_63:
}

- (BOOL)isPeerForPhoneContinuityLocalMessage:(id)message
{
  messageCopy = message;
  pthread_mutex_lock(&self->_deviceIDToPeerLock);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  allValues = [(NSMutableDictionary *)self->_deviceIDToPeer allValues];
  v6 = [allValues countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v7 = *v21;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        btUUID = [v9 btUUID];
        if ([btUUID isEqualToString:messageCopy])
        {
          originalbtUUID = [v9 originalbtUUID];
          v12 = originalbtUUID == 0;

          if (!v12)
          {
            v14 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              btUUID2 = [v9 btUUID];
              *buf = 138412290;
              v25 = btUUID2;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Peer's session ID %@ is for the phone continuity local message.", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                btUUID3 = [v9 btUUID];
                _IDSLogTransport();

                if (_IDSShouldLog())
                {
                  btUUID4 = [v9 btUUID];
                  _IDSLogV();
                }
              }
            }

            v13 = 1;
            goto LABEL_20;
          }
        }

        else
        {
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_20:

  pthread_mutex_unlock(&self->_deviceIDToPeerLock);
  return v13;
}

- (id)sessionIDforPeer:(id)peer
{
  peerCopy = peer;
  pthread_mutex_lock(&self->_deviceIDToPeerLock);
  v5 = [(NSMutableDictionary *)self->_btuuidToSessionID objectForKey:peerCopy];

  pthread_mutex_unlock(&self->_deviceIDToPeerLock);

  return v5;
}

- (void)enableOTRForDefaultPairedDevice
{
  im_assert_primary_base_queue();
  _currentOTRTimer = [(IDSUTunDeliveryController *)self _currentOTRTimer];

  if (!_currentOTRTimer)
  {
    pairingManager = [(IDSUTunDeliveryController *)self pairingManager];
    if ([pairingManager isPaired])
    {
      enableOTR = self->_enableOTR;

      if (enableOTR)
      {
        v5 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Told to enable OTR for default paired device", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }

        v6 = [(NSMutableDictionary *)self->_deviceIDToPeer objectForKey:IDSDeviceDefaultPairedDeviceUniqueID];
        [v6 setEnableOTR:1];
        self->_otrInitialized = 1;
      }
    }

    else
    {
    }
  }
}

- (void)rapportClient:(id)client didDiscoverDevice:(id)device
{
  clientCopy = client;
  deviceCopy = device;
  im_assert_primary_base_queue();
  v8 = [(IDSUTunDeliveryController *)self _copyPeerWithID:deviceCopy];
  if (!v8)
  {
    v8 = [(IDSUTunDeliveryController *)self _createPeerFromDeviceID:deviceCopy];
  }

  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Rapport discovered device. {Peer:%@, deviceID:%@}", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v11 = v8;
    v12 = deviceCopy;
    _IDSLogV();
  }

  if ([IMUserDefaults isLiveDeliveryWarmUpEnabled:v11])
  {
    if (([v8 isCloudConnected] & 1) == 0)
    {
      [v8 enableCloudConnection];
      v10 = +[IDSUTunController sharedInstance];
      [v10 startGlobalLinkForDevice:deviceCopy];
    }

    [v8 setIsPeerAlwaysConnected:1];
  }
}

- (void)rapportClient:(id)client didLoseDevice:(id)device
{
  clientCopy = client;
  deviceCopy = device;
  im_assert_primary_base_queue();
  v8 = [(IDSUTunDeliveryController *)self _copyPeerWithID:deviceCopy];
  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Rapport lost device. {Peer:%@, deviceID:%@}", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v10 = v8;
    v11 = deviceCopy;
    _IDSLogV();
  }

  if ([IMUserDefaults isLiveDeliveryWarmUpEnabled:v10])
  {
    [v8 setIsPeerAlwaysConnected:0];
  }
}

- (IDSUTunDeliveryControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end