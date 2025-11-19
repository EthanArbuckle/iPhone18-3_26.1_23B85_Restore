@interface IDSUTunDeliveryController
+ (IDSUTunDeliveryController)sharedInstance;
- (BOOL)defaultPeerIsNearby;
- (BOOL)hasSpaceForCloudMessagesWithPriority:(int64_t)a3 dataProtectionClass:(unsigned int)a4;
- (BOOL)hasSpaceForMessagesWithPriority:(int64_t)a3 dataProtectionClass:(unsigned int)a4;
- (BOOL)isPeerForPhoneContinuityLocalMessage:(id)a3;
- (BOOL)isPresent;
- (BOOL)isTerminusConnected;
- (BOOL)isTerminusConnectedOverBluetooth;
- (BOOL)isTerminusNearby;
- (BOOL)isTerminusRegistered;
- (BOOL)localSetupInProgress;
- (IDSUTunDeliveryController)init;
- (IDSUTunDeliveryController)initWithBroadcastQueue:(id)a3 pairingManager:(id)a4;
- (IDSUTunDeliveryControllerDelegate)delegate;
- (NSDictionary)defaultPriorityMessageStatistics;
- (NSDictionary)queuedIncomingMessageDictionary;
- (NSDictionary)sendingMessageStatistics;
- (NSDictionary)syncPriorityMessageStatistics;
- (NSDictionary)urgentCloudPriorityMessageStatistics;
- (NSDictionary)urgentPriorityMessageStatistics;
- (NSSet)allowedTrafficClasses;
- (id)_copyPeerWithID:(id)a3;
- (id)_createPeerFromDeviceID:(id)a3;
- (id)_createPeerFromDeviceInfo:(id)a3;
- (id)_deviceIDForPeer:(id)a3;
- (id)_pairedDeviceUUID;
- (id)hashForString:(id)a3;
- (id)lockedContinuityPeerID:(id)a3;
- (id)pendingContinuityPeerID:(id)a3;
- (id)sessionIDforPeer:(id)a3;
- (id)topicForStreamID:(unsigned __int16)a3;
- (void)_OTREnableTimerFiredOnMain;
- (void)_cleanupContinuityPeerMaps:(id)a3;
- (void)_disableOTRForDefaultPairedPeer:(id)a3;
- (void)_enableOTRForDefaultPairedDevice;
- (void)_refreshIPsecStatus;
- (void)_removeDevicePreferencesHandler;
- (void)_removePeerFromDeviceID:(id)a3;
- (void)_setCloudConnectionConnected:(BOOL)a3 forPeer:(id)a4;
- (void)_setOTREnableTimer;
- (void)_updateLocalSetupInProgressState:(BOOL)a3;
- (void)addConnectivityDelegate:(id)a3;
- (void)addContinuityPeer:(id)a3 btUUID:(id)a4 connectBlock:(id)a5 failureBlock:(id)a6;
- (void)addUTunPeerWithDeviceUniqueID:(id)a3 btuuid:(id)a4;
- (void)admissionPolicyChangedForTopic:(id)a3 allowed:(BOOL)a4;
- (void)cancelMessageID:(id)a3;
- (void)dealloc;
- (void)defaultPeerClassCConnectivityDidChange:(BOOL)a3;
- (void)defaultPeerCloudConnectivityChanged:(BOOL)a3;
- (void)defaultPeerConnectivityChanged:(BOOL)a3;
- (void)defaultPeerDropDisallowedMessages;
- (void)defaultPeerLinkTypeChanged:(unsigned __int8)a3;
- (void)defaultPeerMagnetIndicationOfAwakeStateChanged:(BOOL)a3;
- (void)defaultPeerNearbyChanged:(BOOL)a3;
- (void)defaultPeerSetLinkPreferences:(id)a3;
- (void)defaultPeerSetPreferInfraWiFi:(BOOL)a3 services:(id)a4;
- (void)defaultPeerSetWantsQuickRelayRequest:(BOOL)a3;
- (void)defaultPeerSupportsDirectMessaging:(BOOL)a3 isObliterating:(BOOL)a4;
- (void)defaultPeerUnpairStart;
- (void)deviceWithUniqueID:(id)a3 updatedUUID:(id)a4;
- (void)didAddPairedDevice:(id)a3;
- (void)didRemovePairedDevice:(id)a3;
- (void)didUpdatePairedDevice:(id)a3;
- (void)enableCloudConnectionForDefaultPairedDevice:(BOOL)a3;
- (void)enableConnectionForDefaultPairedDevice:(BOOL)a3;
- (void)enableOTRForDefaultPairedDevice;
- (void)ensureLocalSetupInProgressConsistencyAfterQWS;
- (void)findDefaultPeerToForceOTRNegotiation:(id)a3 priority:(int64_t)a4 completionBlock:(id)a5;
- (void)kickProgressBlockForMessageID:(id)a3;
- (void)legacyUTunBTLinkManagerDefaultPeerCloudConnectivityChanged:(BOOL)a3;
- (void)legacyUTunBTLinkManagerDefaultPeerConnectivityChanged:(BOOL)a3;
- (void)legacyUTunBTLinkManagerDefaultPeerNearbyChanged:(BOOL)a3;
- (void)localAccountSetupCompleted;
- (void)localSetupCompleted;
- (void)localSetupStarted;
- (void)lockContinuityPeer:(id)a3 btUUID:(id)a4;
- (void)nrDeviceBridge:(id)a3 defaultPeerNearbyDidChange:(BOOL)a4;
- (void)peer:(id)a3 dataReceived:(id)a4 topic:(id)a5 command:(id)a6 fromID:(id)a7 messageID:(id)a8 wantsAppAck:(BOOL)a9 expectsPeerResponse:(BOOL)a10 peerResponseIdentifier:(id)a11 messageUUID:(id)a12 priority:(int64_t)a13 isCompressed:(BOOL)a14 connectionType:(int64_t)a15 didWakeHint:(BOOL)a16;
- (void)peer:(id)a3 messageReceived:(id)a4 topic:(id)a5 command:(id)a6 fromID:(id)a7 messageID:(id)a8 wantsAppAck:(BOOL)a9 expectsPeerResponse:(BOOL)a10 peerResponseIdentifier:(id)a11 messageUUID:(id)a12 priority:(int64_t)a13 isCompressed:(BOOL)a14 connectionType:(int64_t)a15 didWakeHint:(BOOL)a16;
- (void)peer:(id)a3 protobufReceived:(id)a4 topic:(id)a5 command:(id)a6 fromID:(id)a7 messageID:(id)a8 wantsAppAck:(BOOL)a9 expectsPeerResponse:(BOOL)a10 peerResponseIdentifier:(id)a11 messageUUID:(id)a12 priority:(int64_t)a13 isCompressed:(BOOL)a14 connectionType:(int64_t)a15 didWakeHint:(BOOL)a16;
- (void)peer:(id)a3 receivedAppLevelAckWithTopic:(id)a4 fromID:(id)a5 messageID:(id)a6 peerResponseIdentifier:(id)a7 priority:(int64_t)a8 connectionType:(int64_t)a9;
- (void)peerCloudConnectivityChanged:(id)a3;
- (void)peerCloudConnectivityChanged:(id)a3 isCloudConnected:(BOOL)a4;
- (void)peerConnectivityChanged:(id)a3;
- (void)peerHasSpaceForNonUrgentMessages:(id)a3 priority:(int64_t)a4 dataProtectionClass:(unsigned int)a5;
- (void)peerHasSpaceForNonUrgentMessages:(id)a3 priority:(int64_t)a4 dataProtectionClass:(unsigned int)a5 withTypes:(id)a6;
- (void)peerHasSpaceForUrgentMessages:(id)a3 dataProtectionClass:(unsigned int)a4 withTypes:(id)a5;
- (void)peerNearbyStateChanged:(id)a3 forceNotify:(BOOL)a4;
- (void)prepareForQuickSwitch;
- (void)rapportClient:(id)a3 didDiscoverDevice:(id)a4;
- (void)rapportClient:(id)a3 didLoseDevice:(id)a4;
- (void)removeConnectivityDelegate:(id)a3;
- (void)removeUTunPeerWithDeviceUniqueID:(id)a3 btuuid:(id)a4 reason:(int64_t)a5 shouldWait:(BOOL)a6;
- (void)removeUTunPeerWithSessionID:(id)a3 reason:(int64_t)a4 shouldWait:(BOOL)a5;
- (void)sendData:(id)a3 service:(id)a4 protobuf:(id)a5 resourcePath:(id)a6 resourceMetadata:(id)a7 priority:(int64_t)a8 dataProtectionClass:(unsigned int)a9 nonWaking:(BOOL)a10 nonCloudWaking:(BOOL)a11 requireBluetooth:(BOOL)a12 requireLocalWiFi:(BOOL)a13 queueOneIdentifier:(id)a14 expirationDate:(id)a15 enforceRemoteTimeouts:(BOOL)a16 expectsPeerResponse:(BOOL)a17 wantsAppAck:(BOOL)a18 compressPayload:(BOOL)a19 compressed:(BOOL)a20 peerResponseIdentifier:(id)a21 messageID:(id)a22 topic:(id)a23 awdTopic:(id)a24 command:(id)a25 fromID:(id)a26 uriToDeviceID:(id)a27 localDeviceDestinationDeviceUUID:(id)a28 bypassDuet:(BOOL)a29 duetIdentifiersOverride:(id)a30 messageType:(int64_t)a31 fallbackBlock:(id)a32 progressBlock:(id)a33 completionBlock:(id)a34;
- (void)setAllowedTrafficClasses:(id)a3;
- (void)setCompanionLinkPreference:(BOOL)a3;
- (void)setDeviceUniqueIDToCBUUID:(id)a3;
- (void)setPendingCloudFlagOnDefaultPeer;
- (void)setTopics:(id)a3;
- (void)startIdsNRDeviceBridgeAndPreferenceHandlerWithIdentifier:(id)a3;
- (void)stopIdsNRDeviceBridgeAndPreferenceHandler;
- (void)systemScreenDidPowerDown;
- (void)tryNextContinuityPeer:(id)a3;
- (void)unlockAllContinuityPeers;
- (void)unlockContinuityPeer:(id)a3;
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
  v2 = [(IDSUTunDeliveryController *)self idsNRDeviceBridge];
  v3 = [v2 isConnected];

  return v3;
}

- (BOOL)localSetupInProgress
{
  v2 = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  v3 = [v2 localSetupInProgress];

  return v3;
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
  v3 = [(IDSUTunDeliveryController *)self idsNRDeviceBridge];
  if ([v3 isConnected])
  {
    v4 = [(IDSUTunDeliveryController *)self idsNRDeviceBridge];
    v5 = [v4 latestLinkType] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (IDSUTunDeliveryController)initWithBroadcastQueue:(id)a3 pairingManager:(id)a4
{
  v7 = a3;
  v8 = a4;
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
    objc_storeStrong(&v10->_broadcastQueue, a3);
    objc_storeStrong(&v10->_pairingManager, a4);
    v15 = [(IDSPairingManager *)v10->_pairingManager cbuuidsOfPairingDevices];
    v16 = [(IDSPairingManager *)v10->_pairingManager cbuuidsOfPairedDevices];
    if ([v15 count])
    {
      v17 = 1;
    }

    else
    {
      v17 = [v16 count] == 0;
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
    v34 = [(IDSUTunDeliveryController *)v10 _pairedDeviceUUID];
    [(IDSUTunDeliveryController *)v10 startIdsNRDeviceBridgeAndPreferenceHandlerWithIdentifier:v34];
    v35 = [(IDSUTunDeliveryController *)v10 idsNRDeviceBridge];
    -[IDSUTunPeer setIsClassCConnected:](v23, "setIsClassCConnected:", [v35 isClassCConnected]);

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
  v3 = [(IDSUTunDeliveryController *)self pairingManager];
  [v3 removeDelegate:self];

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
  v3 = [(IDSUTunDeliveryController *)self pairingManager];
  v4 = [v3 isPaired];

  if (v4)
  {
    v5 = [NSUUID alloc];
    v6 = [(IDSUTunDeliveryController *)self pairingManager];
    v7 = [v6 pairedDeviceUUIDString];
    v8 = [v5 initWithUUIDString:v7];

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

- (void)startIdsNRDeviceBridgeAndPreferenceHandlerWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(IDSUTunDeliveryController *)self idsNRDeviceBridge];
  if (v5 && (-[IDSUTunDeliveryController idsNRDeviceBridge](self, "idsNRDeviceBridge"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isDevicesIdentifierEqualTo:v4], v6, v5, v7))
  {
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v4;
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
    if (v4)
    {
      v9 = [[IDSNRDevicePreferencesHandler alloc] initWithDeviceIdentifier:v4];
      [(IDSUTunDeliveryController *)self setNrDevicePreferencesHandler:v9];

      v10 = [[IDSNRDeviceBridge alloc] initWithDeviceIdentifier:v4 delegate:self];
      [(IDSUTunDeliveryController *)self setIdsNRDeviceBridge:v10];

      pthread_mutex_lock(&self->_trafficClassLock);
      v11 = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];
      [v11 setAllowedTrafficClasses:self->_allowedTrafficClasses];

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
  v3 = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];

  if (v3)
  {
    v4 = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];
    [v4 cancel];

    [(IDSUTunDeliveryController *)self setNrDevicePreferencesHandler:0];
  }
}

- (void)_refreshIPsecStatus
{
  v3 = [(IDSUTunDeliveryController *)self pairingManager];
  self->_shouldUseIPsecLinkForDefaultPairedDevice = [v3 shouldUseIPsecLinkForDefaultPairedDevice];

  v4 = [(IDSUTunDeliveryController *)self _pairedDeviceUUID];
  v5 = v4;
  if (self->_shouldUseIPsecLinkForDefaultPairedDevice && v4 != 0)
  {
    v7 = v4;
    v4 = [(IDSUTunDeliveryController *)self startIdsNRDeviceBridgeAndPreferenceHandlerWithIdentifier:v4];
    v5 = v7;
  }

  _objc_release_x1(v4, v5);
}

- (id)_copyPeerWithID:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_deviceIDToPeerLock);
  v5 = [(NSMutableDictionary *)self->_deviceIDToPeer objectForKey:v4];

  pthread_mutex_unlock(&self->_deviceIDToPeerLock);
  return v5;
}

- (id)hashForString:(id)a3
{
  memset(md, 170, sizeof(md));
  v3 = [a3 UTF8String];
  v4 = strlen(v3);
  CC_MD5(v3, v4, md);
  v5 = [NSNumber numberWithUnsignedShort:bswap32(*md) >> 16];

  return v5;
}

- (void)setDeviceUniqueIDToCBUUID:(id)a3
{
  v4 = a3;
  im_assert_primary_base_queue();
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received devices with unique ids -> cbuuids %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v6 = v4;
    _IDSLogV();
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1004C8A08;
  v7[3] = &unk_100BDE5D8;
  v7[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:{v7, v6}];
}

- (void)deviceWithUniqueID:(id)a3 updatedUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  im_assert_primary_base_queue();
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received device with unique id %@ updated BTUUID: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v13 = v6;
    v14 = v7;
    _IDSLogV();
  }

  if (v6 && ![(IDSUTunPeer *)v6 isEqualToString:IDSDeviceDefaultPairedDeviceUniqueID])
  {
    pthread_mutex_lock(&self->_deviceIDToPeerLock);
    v10 = [(NSMutableDictionary *)self->_deviceIDToPeer objectForKey:v6];
    if (v10)
    {
      pthread_mutex_unlock(&self->_deviceIDToPeerLock);
      v11 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v17 = v10;
        v18 = 2112;
        v19 = v6;
        v20 = 2112;
        v21 = v7;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updating existing peer %@ for uniqueID %@ with btuuid %@", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v14 = v6;
        v15 = v7;
        v13 = v10;
        _IDSLogV();
      }

      [(IDSUTunPeer *)v10 setBtUUID:v7, v13, v14, v15];
    }

    else
    {
      v10 = [[IDSUTunPeer alloc] initWithIdentifier:@"UTunDelivery" btUUID:v7 uniqueID:v6 shouldUseIPsecLink:0 isNearby:0 isClassCConnected:0];
      [(IDSUTunPeer *)v10 setDelegate:self];
      [(NSMutableDictionary *)self->_deviceIDToPeer setObject:v10 forKey:v6];
      pthread_mutex_unlock(&self->_deviceIDToPeerLock);
      v12 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v17 = v10;
        v18 = 2112;
        v19 = v6;
        v20 = 2112;
        v21 = v7;
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
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Ignoring update for nil or default paired device BTUUID: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)_updateLocalSetupInProgressState:(BOOL)a3
{
  v3 = a3;
  [(IDSUTunDeliveryController *)self setIsLocalSetUpInProgress:?];
  if (self->_shouldUseIPsecLinkForDefaultPairedDevice)
  {
    v5 = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];

    if (v5)
    {
      v6 = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];
      v7 = v6;
      if (v3)
      {
        [v6 localSetUpStarted];
      }

      else
      {
        [v6 localSetUpCompleted];
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

  v4 = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  [v4 clearStats];
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

  v4 = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  [v4 setLocalSetupInProgress:0];
  [(IDSUTunDeliveryController *)self _updateLocalSetupInProgressState:0];
}

- (void)prepareForQuickSwitch
{
  v3 = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  if ([v3 localSetupInProgress])
  {
    [v3 setLocalSetupInProgress:0];
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

  [v3 setSupportsCloudConnections:0];
}

- (void)updatecloudDeliveryStateOnDefaultPeer
{
  v3 = [(IDSUTunDeliveryController *)self pairingManager];
  v4 = [v3 pairedDeviceServiceMinCompatibilityVersion];

  if (v4 >= 3)
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

    v6 = [(IDSUTunDeliveryController *)self _copyPairedDevice];
    [v6 setSupportsCloudConnections:1];
  }
}

- (void)ensureLocalSetupInProgressConsistencyAfterQWS
{
  v7 = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  [v7 setLocalSetupInProgress:{-[IDSUTunDeliveryController isLocalSetUpInProgress](self, "isLocalSetUpInProgress")}];
  if (self->_shouldUseIPsecLinkForDefaultPairedDevice)
  {
    v3 = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];

    if (v3)
    {
      v4 = [(IDSUTunDeliveryController *)self isLocalSetUpInProgress];
      v5 = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];
      v6 = v5;
      if (v4)
      {
        [v5 localSetUpStarted];
      }

      else
      {
        [v5 localSetUpCompleted];
      }
    }
  }
}

- (void)setPendingCloudFlagOnDefaultPeer
{
  v2 = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  [v2 setPendingCloudEnable:1];
}

- (void)_removePeerFromDeviceID:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_deviceIDToPeerLock);
  [(NSMutableDictionary *)self->_deviceIDToPeer removeObjectForKey:v4];

  pthread_mutex_unlock(&self->_deviceIDToPeerLock);
}

- (id)_createPeerFromDeviceID:(id)a3
{
  v4 = [NSDictionary dictionaryWithObject:a3 forKey:IDSDevicePairedDeviceID];
  v5 = [(IDSUTunDeliveryController *)self _createPeerFromDeviceInfo:v4];

  return v5;
}

- (id)_createPeerFromDeviceInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:IDSDevicePairedDeviceID];
  v6 = [v4 objectForKey:@"bt-id"];
  v7 = [v4 objectForKey:@"session-id"];
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
      v20 = v4;
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

- (void)sendData:(id)a3 service:(id)a4 protobuf:(id)a5 resourcePath:(id)a6 resourceMetadata:(id)a7 priority:(int64_t)a8 dataProtectionClass:(unsigned int)a9 nonWaking:(BOOL)a10 nonCloudWaking:(BOOL)a11 requireBluetooth:(BOOL)a12 requireLocalWiFi:(BOOL)a13 queueOneIdentifier:(id)a14 expirationDate:(id)a15 enforceRemoteTimeouts:(BOOL)a16 expectsPeerResponse:(BOOL)a17 wantsAppAck:(BOOL)a18 compressPayload:(BOOL)a19 compressed:(BOOL)a20 peerResponseIdentifier:(id)a21 messageID:(id)a22 topic:(id)a23 awdTopic:(id)a24 command:(id)a25 fromID:(id)a26 uriToDeviceID:(id)a27 localDeviceDestinationDeviceUUID:(id)a28 bypassDuet:(BOOL)a29 duetIdentifiersOverride:(id)a30 messageType:(int64_t)a31 fallbackBlock:(id)a32 progressBlock:(id)a33 completionBlock:(id)a34
{
  v77 = a3;
  v67 = a4;
  v76 = a5;
  v60 = a6;
  v58 = a7;
  v59 = a14;
  v75 = a15;
  v38 = a21;
  v56 = a22;
  v57 = a23;
  v39 = a24;
  v51 = a25;
  v55 = a26;
  v50 = a27;
  v52 = a28;
  v53 = a30;
  v40 = a32;
  v54 = a33;
  v41 = a34;
  v61 = +[IDSDaemonPriorityQueueController sharedInstance];
  v79[0] = _NSConcreteStackBlock;
  v79[1] = 3221225472;
  v79[2] = sub_1004C9F68;
  v79[3] = &unk_100BDE650;
  v102 = a16;
  v101 = a9;
  v103 = a10;
  v104 = a11;
  v105 = a17;
  v106 = a18;
  v107 = a19;
  v108 = a20;
  v109 = a12;
  v110 = a13;
  v111 = a29;
  v79[4] = self;
  v80 = v57;
  v99 = a8;
  v100 = a31;
  v81 = v56;
  v82 = v77;
  v83 = v76;
  v84 = v75;
  v85 = v51;
  v86 = v50;
  v87 = v52;
  v88 = v60;
  v89 = v58;
  v90 = v38;
  v91 = v39;
  v92 = v55;
  v96 = v41;
  v97 = v40;
  v98 = v54;
  v93 = v59;
  v94 = v53;
  v95 = v67;
  v74 = v67;
  v72 = v53;
  v71 = v59;
  v70 = v54;
  v69 = v40;
  v68 = v55;
  v66 = v39;
  v65 = v38;
  v64 = v58;
  v63 = v60;
  v62 = v41;
  v42 = v52;
  v43 = v50;
  v44 = v51;
  v45 = v75;
  v46 = v76;
  v47 = v77;
  v48 = v56;
  v49 = v57;
  [v61 performBlockWithPriority:v79 priority:a8];
}

- (void)cancelMessageID:(id)a3
{
  v4 = a3;
  im_assert_primary_base_queue();
  if ([v4 length])
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempting to cancel message ID: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v10 = v4;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v10 = v4;
          _IDSLogV();
        }
      }
    }

    pthread_mutex_lock(&self->_deviceIDToPeerLock);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [(NSMutableDictionary *)self->_deviceIDToPeer allValues];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v9) cancelMessageID:{v4, v10}];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    pthread_mutex_unlock(&self->_deviceIDToPeerLock);
  }
}

- (void)kickProgressBlockForMessageID:(id)a3
{
  v4 = a3;
  im_assert_primary_base_queue();
  pthread_mutex_lock(&self->_deviceIDToPeerLock);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSMutableDictionary *)self->_deviceIDToPeer allValues];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) kickProgressBlockForMessageID:v4];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  pthread_mutex_unlock(&self->_deviceIDToPeerLock);
}

- (id)topicForStreamID:(unsigned __int16)a3
{
  v3 = a3;
  pthread_mutex_lock(&self->_streamIDToTopicLock);
  streamIDToTopic = self->_streamIDToTopic;
  v6 = [NSNumber numberWithUnsignedShort:v3];
  v7 = [(NSMutableDictionary *)streamIDToTopic objectForKey:v6];

  pthread_mutex_unlock(&self->_streamIDToTopicLock);

  return v7;
}

- (BOOL)isPresent
{
  im_assert_primary_base_queue();
  v3 = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  v4 = [v3 isConnected];

  return v4;
}

- (BOOL)defaultPeerIsNearby
{
  im_assert_primary_base_queue();
  v3 = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  v4 = [v3 isNearby];

  return v4;
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

- (void)enableConnectionForDefaultPairedDevice:(BOOL)a3
{
  v3 = a3;
  im_assert_primary_base_queue();
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
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
    if (v3)
    {
      v7 = @"YES";
    }

    v11 = v7;
    _IDSLogV();
  }

  v8 = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  v9 = v8;
  if (v8)
  {
    if (v3)
    {
      [v8 enableConnection];
    }

    else
    {
      [v8 disableConnectionForReason:14 shouldWait:0];
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

- (void)enableCloudConnectionForDefaultPairedDevice:(BOOL)a3
{
  v3 = a3;
  im_assert_primary_base_queue();
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
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
    if (v3)
    {
      v7 = @"YES";
    }

    v11 = v7;
    _IDSLogV();
  }

  v8 = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  v9 = v8;
  if (v8)
  {
    if (v3)
    {
      [v8 enableCloudConnection];
    }

    else
    {
      [v8 disableCloudConnectionForReason:14];
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

- (BOOL)hasSpaceForMessagesWithPriority:(int64_t)a3 dataProtectionClass:(unsigned int)a4
{
  v4 = *&a4;
  v7 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v7 assertRunningWithPriority:a3];

  v8 = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  LOBYTE(v4) = [v8 hasSpaceForMessagesWithPriority:a3 dataProtectionClass:v4 messageType:4];

  return v4;
}

- (BOOL)hasSpaceForCloudMessagesWithPriority:(int64_t)a3 dataProtectionClass:(unsigned int)a4
{
  v4 = *&a4;
  v7 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v7 assertRunningWithPriority:a3];

  v8 = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  LOBYTE(v4) = [v8 hasSpaceForMessagesWithPriority:a3 dataProtectionClass:v4 messageType:6];

  return v4;
}

- (void)setTopics:(id)a3
{
  v4 = a3;
  im_assert_primary_base_queue();
  pthread_mutex_lock(&self->_streamIDToTopicLock);
  v5 = [(NSMutableDictionary *)self->_streamIDToTopic allValues];
  v6 = [NSSet setWithArray:v5];

  if (v4 && v6 && [v6 isEqualToSet:v4])
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
    [v4 enumerateObjectsUsingBlock:v13];
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [(NSMutableDictionary *)self->_streamIDToTopic allKeys];
      *buf = 138412290;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Got topic set update %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v12 = [(NSMutableDictionary *)self->_streamIDToTopic allKeys];
      _IDSLogV();
    }

    pthread_mutex_unlock(&self->_streamIDToTopicLock);
  }
}

- (NSDictionary)syncPriorityMessageStatistics
{
  im_assert_primary_base_queue();
  v3 = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  v4 = [v3 syncPriorityMessageStatistics];

  return v4;
}

- (NSDictionary)defaultPriorityMessageStatistics
{
  im_assert_primary_base_queue();
  v3 = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  v4 = [v3 defaultPriorityMessageStatistics];

  return v4;
}

- (NSDictionary)urgentPriorityMessageStatistics
{
  im_assert_primary_base_queue();
  v3 = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  v4 = [v3 urgentPriorityMessageStatistics];

  return v4;
}

- (NSDictionary)urgentCloudPriorityMessageStatistics
{
  im_assert_primary_base_queue();
  v3 = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  v4 = [v3 urgentCloudPriorityMessageStatistics];

  return v4;
}

- (NSDictionary)sendingMessageStatistics
{
  im_assert_primary_base_queue();
  v3 = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  v4 = [v3 sendingMessageStatistics];

  return v4;
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

- (void)setAllowedTrafficClasses:(id)a3
{
  v5 = a3;
  im_assert_primary_base_queue();
  pthread_mutex_lock(&self->_trafficClassLock);
  if (([(NSSet *)self->_allowedTrafficClasses isEqual:v5]& 1) == 0)
  {
    objc_storeStrong(&self->_allowedTrafficClasses, a3);
    v6 = [(NSMutableDictionary *)self->_deviceIDToPeer objectForKey:IDSDeviceDefaultPairedDeviceUniqueID];
    [v6 trafficClassesChanged];

    if (self->_shouldUseIPsecLinkForDefaultPairedDevice)
    {
      v7 = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];

      if (v7)
      {
        v8 = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];
        [v8 setAllowedTrafficClasses:v5];
      }

      else
      {
        v8 = +[IDSFoundationLog delivery];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 138412290;
          v10 = v5;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Warning: [IDSUTunDeliveryController setAllowedTrafficClasses:] called but missing nrDevicePreferencesHandler; allowedTrafficClasses %@", &v9, 0xCu);
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

- (void)removeUTunPeerWithSessionID:(id)a3 reason:(int64_t)a4 shouldWait:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  pthread_mutex_lock(&self->_deviceIDToPeerLock);
  v9 = [(NSMutableDictionary *)self->_deviceIDToPeer objectForKey:v8];
  [v9 disableConnectionForReason:a4 shouldWait:v5];
  [v9 setDelegate:0];
  v10 = [(NSMutableDictionary *)self->_deviceIDToPeer objectForKey:v8];

  if (v10)
  {
    [(NSMutableDictionary *)self->_deviceIDToPeer removeObjectForKey:v8];
  }

  btuuidToSessionID = self->_btuuidToSessionID;
  v12 = [v9 originalbtUUID];
  v13 = [(NSMutableDictionary *)btuuidToSessionID objectForKey:v12];

  if (v13 && [v13 isEqualToString:v8])
  {
    v14 = self->_btuuidToSessionID;
    v15 = [v9 originalbtUUID];
    [(NSMutableDictionary *)v14 removeObjectForKey:v15];
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

- (void)removeUTunPeerWithDeviceUniqueID:(id)a3 btuuid:(id)a4 reason:(int64_t)a5 shouldWait:(BOOL)a6
{
  v6 = a6;
  pthread_mutex_lock(&self->_deviceIDToPeerLock);
  v9 = IDSDeviceDefaultPairedDeviceUniqueID;
  v10 = [(NSMutableDictionary *)self->_deviceIDToPeer objectForKey:IDSDeviceDefaultPairedDeviceUniqueID];
  [(NSMutableDictionary *)self->_deviceIDToPeer removeObjectForKey:v9];
  pthread_mutex_unlock(&self->_deviceIDToPeerLock);
  [(IDSUTunDeliveryController *)self _disableOTRForDefaultPairedPeer:v10];
  [v10 disableConnectionForReason:a5 shouldWait:v6];
  [v10 setDelegate:0];
}

- (void)addUTunPeerWithDeviceUniqueID:(id)a3 btuuid:(id)a4
{
  v6 = a3;
  v7 = a4;
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
      v24 = v6;
      v25 = 2113;
      v26 = v7;
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
    v12 = [(IDSUTunDeliveryController *)self idsNRDeviceBridge];
    v13 = [v12 isNearby];

    v14 = [(IDSUTunDeliveryController *)self idsNRDeviceBridge];
    v15 = [v14 isClassCConnected];

    v16 = [[IDSUTunPeer alloc] initWithIdentifier:@"UTunDelivery-Default" btUUID:0 uniqueID:v8 shouldUseIPsecLink:self->_shouldUseIPsecLinkForDefaultPairedDevice isNearby:v13 isClassCConnected:v15];
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

- (void)addConnectivityDelegate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
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

    v4 = [(NSHashTable *)connectivityDelegates addObject:v9];
    v5 = v9;
  }

  _objc_release_x1(v4, v5);
}

- (void)removeConnectivityDelegate:(id)a3
{
  if (a3)
  {
    [(NSHashTable *)self->_connectivityDelegates removeObject:?];
  }
}

- (id)_deviceIDForPeer:(id)a3
{
  v4 = a3;
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
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [(NSMutableDictionary *)deviceIDToPeer enumerateKeysAndObjectsUsingBlock:v9];
  pthread_mutex_unlock(&self->_deviceIDToPeerLock);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)peer:(id)a3 protobufReceived:(id)a4 topic:(id)a5 command:(id)a6 fromID:(id)a7 messageID:(id)a8 wantsAppAck:(BOOL)a9 expectsPeerResponse:(BOOL)a10 peerResponseIdentifier:(id)a11 messageUUID:(id)a12 priority:(int64_t)a13 isCompressed:(BOOL)a14 connectionType:(int64_t)a15 didWakeHint:(BOOL)a16
{
  HIDWORD(v34) = a14;
  v36 = a3;
  v35 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a11;
  v27 = a12;
  v28 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v28 assertRunningWithPriority:a13];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(a4) = objc_opt_respondsToSelector();

  if (a4)
  {
    v30 = objc_loadWeakRetained(&self->_delegate);
    v31 = [(IDSUTunDeliveryController *)self _deviceIDForPeer:v36];
    LOBYTE(v34) = a16;
    LOBYTE(v33) = BYTE4(v34);
    LOWORD(v32) = __PAIR16__(a10, a9);
    [v30 deliveryController:self protobufReceived:v35 topic:v22 command:v23 deviceID:v31 btUUID:v24 messageID:v25 wantsAppAck:v32 expectsPeerResponse:v26 peerResponseIdentifier:v27 messageUUID:a13 priority:v33 isCompressed:a15 connectionType:v34 didWakeHint:?];
  }
}

- (void)peer:(id)a3 dataReceived:(id)a4 topic:(id)a5 command:(id)a6 fromID:(id)a7 messageID:(id)a8 wantsAppAck:(BOOL)a9 expectsPeerResponse:(BOOL)a10 peerResponseIdentifier:(id)a11 messageUUID:(id)a12 priority:(int64_t)a13 isCompressed:(BOOL)a14 connectionType:(int64_t)a15 didWakeHint:(BOOL)a16
{
  HIDWORD(v34) = a14;
  v36 = a3;
  v35 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a11;
  v27 = a12;
  v28 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v28 assertRunningWithPriority:a13];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(a4) = objc_opt_respondsToSelector();

  if (a4)
  {
    v30 = objc_loadWeakRetained(&self->_delegate);
    v31 = [(IDSUTunDeliveryController *)self _deviceIDForPeer:v36];
    LOBYTE(v34) = a16;
    LOBYTE(v33) = BYTE4(v34);
    LOWORD(v32) = __PAIR16__(a10, a9);
    [v30 deliveryController:self dataReceived:v35 topic:v22 command:v23 deviceID:v31 btUUID:v24 messageID:v25 wantsAppAck:v32 expectsPeerResponse:v26 peerResponseIdentifier:v27 messageUUID:a13 priority:v33 isCompressed:a15 connectionType:v34 didWakeHint:?];
  }
}

- (void)peer:(id)a3 messageReceived:(id)a4 topic:(id)a5 command:(id)a6 fromID:(id)a7 messageID:(id)a8 wantsAppAck:(BOOL)a9 expectsPeerResponse:(BOOL)a10 peerResponseIdentifier:(id)a11 messageUUID:(id)a12 priority:(int64_t)a13 isCompressed:(BOOL)a14 connectionType:(int64_t)a15 didWakeHint:(BOOL)a16
{
  HIDWORD(v39) = a14;
  v42 = a3;
  v40 = a4;
  v41 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a11;
  v26 = a12;
  v27 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v27 assertRunningWithPriority:a13];

  v28 = [v42 originalbtUUID];
  if (v28)
  {
    v29 = v28;
    v30 = [v42 btUUID];
    v31 = [v23 isEqualToString:v30];

    if (v31)
    {
      v32 = [v42 originalbtUUID];

      v23 = v32;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v34 = objc_opt_respondsToSelector();

  if (v34)
  {
    v35 = objc_loadWeakRetained(&self->_delegate);
    v36 = [(IDSUTunDeliveryController *)self _deviceIDForPeer:v42];
    LOBYTE(v39) = a16;
    LOBYTE(v38) = BYTE4(v39);
    LOWORD(v37) = __PAIR16__(a10, a9);
    [v35 deliveryController:self messageReceived:v40 topic:v41 command:v22 deviceID:v36 btUUID:v23 messageID:v24 wantsAppAck:v37 expectsPeerResponse:v25 peerResponseIdentifier:v26 messageUUID:a13 priority:v38 isCompressed:a15 connectionType:v39 didWakeHint:?];
  }
}

- (void)peer:(id)a3 receivedAppLevelAckWithTopic:(id)a4 fromID:(id)a5 messageID:(id)a6 peerResponseIdentifier:(id)a7 priority:(int64_t)a8 connectionType:(int64_t)a9
{
  v24 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v19 assertRunningWithPriority:a8];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    v22 = objc_loadWeakRetained(&self->_delegate);
    v23 = [(IDSUTunDeliveryController *)self _deviceIDForPeer:v24];
    [v22 deliveryController:self receivedAppLevelAckWithTopic:v15 deviceID:v23 btUUID:v16 messageID:v17 peerResponseIdentifier:v18 priority:a8 connectionType:a9];
  }
}

- (void)peerNearbyStateChanged:(id)a3 forceNotify:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  im_assert_primary_base_queue();
  v7 = [v6 isNearby];
  v8 = [v6 uniqueID];
  v9 = +[IMSystemMonitor sharedInstance];
  v10 = [v9 isScreenLit];

  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(NSMutableDictionary *)self->_deviceIDToPeer count];
    v13 = @"NO";
    *buf = 138413058;
    if (v10)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    if (v7)
    {
      v13 = @"YES";
    }

    v24 = v13;
    v25 = 2112;
    v26 = v14;
    v27 = 2112;
    v28 = v8;
    v29 = 2048;
    v30 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "peer nearby state changed:%@    screenLit:%@   uniqueID:%@   peer-count:%lu", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [(NSMutableDictionary *)self->_deviceIDToPeer count];
    _IDSLogV();
  }

  if ((v4 | v10))
  {
    if (v7)
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
    v21 = v6;
    v22 = v8;
    dispatch_after(v17, broadcastQueue, block);
    if (v7)
    {
      +[NSDate timeIntervalSinceReferenceDate];
      self->_lastIsNearbyBecameTrue = v19;
    }
  }
}

- (void)peerConnectivityChanged:(id)a3
{
  v4 = a3;
  im_assert_primary_base_queue();
  v5 = [v4 isConnected];
  v6 = [v4 uniqueID];
  v7 = [v6 isEqualToString:IDSDeviceDefaultPairedDeviceUniqueID];
  if ((v7 & v5) == 1)
  {
    isLinkForDefaultPeerConnected = self->_isLinkForDefaultPeerConnected;
  }

  else
  {
    isLinkForDefaultPeerConnected = (v7 ^ 1) & v5;
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
    v35 = v6;
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

    v28 = v6;
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
    v14 = [(IDSUTunDeliveryController *)self idsNRDeviceBridge];
    if ([v14 latestLinkType] == 2)
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
  v18 = v6;
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
    if ((isLinkForDefaultPeerConnected & [v4 isNearby]) == 1)
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

    [v4 isNearby];
  }
}

- (void)peerCloudConnectivityChanged:(id)a3
{
  v4 = a3;
  im_assert_primary_base_queue();
  v5 = [v4 isCloudConnected];
  v26 = v4;
  v6 = [v4 uniqueID];
  [(IDSUTunDeliveryController *)self setIsCloudConnected:v5];
  v7 = [(NSHashTable *)self->_connectivityDelegates allObjects];
  v8 = [v7 copy];

  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    if (v5)
    {
      v10 = @"YES";
    }

    *buf = 138412546;
    v33 = v10;
    v34 = 2112;
    v35 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Broadcasting isCloudConnected %@ for %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v11 = v5 ? @"YES" : @"NO";
    v24 = v11;
    v25 = v6;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      v24 = v11;
      v25 = v6;
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
          [v16 deliveryController:self uniqueID:v6 isCloudConnected:v5];
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

- (void)peerHasSpaceForNonUrgentMessages:(id)a3 priority:(int64_t)a4 dataProtectionClass:(unsigned int)a5 withTypes:(id)a6
{
  v7 = *&a5;
  v10 = a3;
  v11 = a6;
  im_assert_primary_base_queue();
  v12 = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  v13 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"Sync";
    if (a4 == 200)
    {
      v14 = @"Default";
    }

    v15 = @"Class D";
    if (a4 == 300)
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
    v21 = v10;
    v23 = v14;
    v22 = 2112;
    v24 = 2112;
    v25 = v15;
    if (v12 == v10)
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

  if (v12 == v10)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = objc_loadWeakRetained(&self->_delegate);
      [v19 deliveryControllerHasSpaceforNonUrgentMessages:self priority:a4 dataProtectionClass:v7 ofTypes:v11];
    }
  }
}

- (void)peerHasSpaceForNonUrgentMessages:(id)a3 priority:(int64_t)a4 dataProtectionClass:(unsigned int)a5
{
  v5 = *&a5;
  v8 = a3;
  im_assert_primary_base_queue();
  v9 = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"Sync";
    if (a4 == 200)
    {
      v11 = @"Default";
    }

    v12 = @"Class D";
    if (a4 == 300)
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
    v18 = v8;
    v20 = v11;
    v19 = 2112;
    v21 = 2112;
    v22 = v12;
    if (v9 == v8)
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

  if (v9 == v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      [v16 deliveryControllerHasSpaceforNonUrgentMessages:self priority:a4 dataProtectionClass:v5];
    }
  }
}

- (void)peerHasSpaceForUrgentMessages:(id)a3 dataProtectionClass:(unsigned int)a4 withTypes:(id)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = a5;
  im_assert_primary_base_queue();
  v10 = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"Class D";
    if (v6 == 1)
    {
      v12 = @"Class A";
    }

    *buf = 138413058;
    v18 = v8;
    if (!v6)
    {
      v12 = @"Class C";
    }

    v20 = @"URGENT";
    v19 = 2112;
    v21 = 2112;
    v22 = v12;
    if (v10 == v8)
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

  if (v10 == v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      [v16 deliveryControllerHasSpaceforUrgentMessages:self dataProtectionClass:v6 ofTypes:v9];
    }
  }
}

- (void)defaultPeerConnectivityChanged:(BOOL)a3
{
  v3 = a3;
  im_assert_primary_base_queue();
  [(IDSUTunDeliveryController *)self _refreshIPsecStatus];
  if (!v3)
  {
    self->_defaultPeerConnectedDeferred = 0;
    v8 = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];

    if (v8)
    {
      v7 = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];
      [v7 annouceAvailabilityForCloudMessaging];
      goto LABEL_7;
    }

LABEL_8:
    isLinkForDefaultPeerConnected = self->_isLinkForDefaultPeerConnected;
    self->_isLinkForDefaultPeerConnected = v3;
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

      if (v3)
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
      v14 = v3 ? @"YES" : @"NO";
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
      if (isLinkForDefaultPeerConnected != v3)
      {
        [v15 setIsConnected:v3];
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
    v5 = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];

    if (v5)
    {
      v6 = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];
      [v6 setQuickRelayRequest:0];

      v7 = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];
      [v7 revokeAvailabilityForCloudMessaging];
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

- (void)legacyUTunBTLinkManagerDefaultPeerConnectivityChanged:(BOOL)a3
{
  v3 = a3;
  im_assert_primary_base_queue();
  [(IDSUTunDeliveryController *)self _refreshIPsecStatus];
  if (self->_shouldUseIPsecLinkForDefaultPairedDevice)
  {
    v5 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (v3)
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

    [(IDSUTunDeliveryController *)self defaultPeerConnectivityChanged:v3];
  }
}

- (void)defaultPeerNearbyChanged:(BOOL)a3
{
  v3 = a3;
  im_assert_primary_base_queue();
  v5 = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 isNearby];
    if (v7 != v3)
    {
      v8 = v7;
      [v6 setIsNearby:v3];
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

        if (v3)
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

        if (v3)
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

- (void)defaultPeerLinkTypeChanged:(unsigned __int8)a3
{
  v3 = a3;
  im_assert_primary_base_queue();
  v5 = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  if (!v5)
  {
    v6 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ Did not find default peer device.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v7 = self;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v7 = self;
          _IDSLogV();
        }
      }
    }
  }

  [v5 logCurrentTransportStatsAndResetTimers];
  if ([v5 linkType] != v3)
  {
    [v5 setLinkType:v3];
  }
}

- (void)legacyUTunBTLinkManagerDefaultPeerNearbyChanged:(BOOL)a3
{
  v3 = a3;
  im_assert_primary_base_queue();
  [(IDSUTunDeliveryController *)self _refreshIPsecStatus];
  if (self->_shouldUseIPsecLinkForDefaultPairedDevice)
  {
    v5 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (v3)
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

    [(IDSUTunDeliveryController *)self defaultPeerNearbyChanged:v3];
  }
}

- (void)defaultPeerCloudConnectivityChanged:(BOOL)a3
{
  v3 = a3;
  im_assert_primary_base_queue();
  v5 = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v3)
    {
      v7 = @"YES";
    }

    *buf = 138412290;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "cloud connectivity changed for default peer: %@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    if (v3)
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

  [(IDSUTunDeliveryController *)self _setCloudConnectionConnected:v3 forPeer:v5, v9];
}

- (void)legacyUTunBTLinkManagerDefaultPeerCloudConnectivityChanged:(BOOL)a3
{
  v3 = a3;
  im_assert_primary_base_queue();
  [(IDSUTunDeliveryController *)self _refreshIPsecStatus];
  if (self->_shouldUseIPsecLinkForDefaultPairedDevice)
  {
    v5 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (v3)
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

    [(IDSUTunDeliveryController *)self defaultPeerCloudConnectivityChanged:v3];
  }
}

- (void)defaultPeerMagnetIndicationOfAwakeStateChanged:(BOOL)a3
{
  v3 = a3;
  im_assert_primary_base_queue();
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
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
    if (v3)
    {
      v7 = @"YES";
    }

    v9 = v7;
    _IDSLogV();
  }

  v8 = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  [v8 setIsMagnetIndicatingPeerIsAwake:v3];
}

- (void)defaultPeerClassCConnectivityDidChange:(BOOL)a3
{
  v3 = a3;
  im_assert_primary_base_queue();
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
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
    if (v3)
    {
      v7 = @"YES";
    }

    v9 = v7;
    _IDSLogV();
  }

  v8 = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  [v8 setIsClassCConnected:v3];
  [(IDSUTunDeliveryController *)self setIsClassCConnected:v3];
  [(IDSUTunDeliveryController *)self peerConnectivityChanged:v8];
}

- (void)defaultPeerSetPreferInfraWiFi:(BOOL)a3 services:(id)a4
{
  v4 = a3;
  v6 = a4;
  im_assert_primary_base_queue();
  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (v4)
    {
      v8 = @"YES";
    }

    *buf = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = v6;
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
    v9 = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];
    v10 = v9 == 0;

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
      v11 = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];
      [v11 setPreferInfraWiFiRequest:v4 services:v6];
    }
  }

  else
  {
    v12 = [(IDSUTunDeliveryController *)self _copyPairedDevice];
    [v12 setPreferInfraWiFi:v4 services:v6];
  }
}

- (void)defaultPeerSetLinkPreferences:(id)a3
{
  v4 = a3;
  im_assert_primary_base_queue();
  if (self->_shouldUseIPsecLinkForDefaultPairedDevice)
  {
    v5 = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];

    if (v5)
    {
      v6 = +[IDSLinkPreferencesManager sharedInstance];
      v7 = [v6 accumulativePreferencesForAllServices];

      v8 = [v7 objectForKey:@"PacketsPerSecond"];
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

      v12 = [v7 objectForKey:@"InputBytesPerSecond"];
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

      v16 = [v7 objectForKey:@"OutputBytesPerSecond"];
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

      v20 = [v7 objectForKey:@"Intent"];
      if ([v20 isEqualToString:@"forceBTClassic"] && objc_msgSend(v11, "unsignedIntValue") <= 0xC7)
      {

        v11 = &off_100C3C850;
      }

      v21 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544386;
        v36 = v4;
        v37 = 1024;
        v38 = [v11 unsignedIntValue];
        v39 = 1024;
        v40 = [v15 unsignedIntValue];
        v41 = 1024;
        v42 = [v19 unsignedIntValue];
        v43 = 2114;
        v44 = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "setBluetoothLinkPreferences: service: %{public}@, pps: %d input bps: %d output bps: %d intent: %{public}@", buf, 0x28u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v22 = [v11 unsignedIntValue];
          v23 = [v15 unsignedIntValue];
          v33 = [v19 unsignedIntValue];
          v34 = v20;
          v31 = v22;
          v32 = v23;
          v30 = v4;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v24 = [v11 unsignedIntValue];
            v25 = [v15 unsignedIntValue];
            v33 = [v19 unsignedIntValue];
            v34 = v20;
            v31 = v24;
            v32 = v25;
            v30 = v4;
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
      v36 = v4;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "defaultPeerSetLinkPreferences, service: %{public}@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v30 = v4;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v30 = v4;
          _IDSLogV();
        }
      }
    }

    v28 = [(IDSUTunDeliveryController *)self _copyPairedDevice];
    [v28 setLinkPreferences:v4];
  }
}

- (void)setCompanionLinkPreference:(BOOL)a3
{
  v3 = a3;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setCompanionLinkPreference: assertIsoc: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    if (v3)
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

  v8 = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];
  [v8 setCompanionLinkPreferences:v3];
}

- (void)defaultPeerSetWantsQuickRelayRequest:(BOOL)a3
{
  v3 = a3;
  im_assert_primary_base_queue();
  [(IDSUTunDeliveryController *)self _refreshIPsecStatus];
  if (self->_shouldUseIPsecLinkForDefaultPairedDevice)
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "defaultPeerSetWantsQuickRelayRequest: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v7 = v3 ? @"YES" : @"NO";
      v10 = v7;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v10 = v7;
        _IDSLogV();
      }
    }

    v8 = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];

    if (v8)
    {
      v9 = [(IDSUTunDeliveryController *)self nrDevicePreferencesHandler];
      [v9 setQuickRelayRequest:v3];
    }

    else
    {
      v9 = +[IDSFoundationLog delivery];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[IDSUTunDeliveryController defaultPeerSetWantsQuickRelayRequest:] called but missing nrDevicePreferencesHandler", buf, 2u);
      }
    }
  }
}

- (void)defaultPeerSupportsDirectMessaging:(BOOL)a3 isObliterating:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  im_assert_primary_base_queue();
  if (self->_shouldUseIPsecLinkForDefaultPairedDevice)
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (v5)
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
      [v11 deliveryController:self device:0 supportsDirectMessaging:v5 isObliterating:v4];
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

  v4 = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  [v4 unpairStart];
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

  v4 = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  [v4 dropDisallowedMessages];
}

- (void)peerCloudConnectivityChanged:(id)a3 isCloudConnected:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  im_assert_primary_base_queue();
  if ([(__CFString *)v6 isEqualToString:kIDSDefaultPairedDeviceID])
  {
    [(IDSUTunDeliveryController *)self _refreshIPsecStatus];
    if (self->_shouldUseIPsecLinkForDefaultPairedDevice)
    {
      v7 = +[IDSFoundationLog delivery];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = @"NO";
        if (v4)
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

    v6 = v9;
  }

  v10 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (v4)
    {
      v11 = @"YES";
    }

    *buf = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "cloud connectivity changed for peer %@: %@.", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v12 = v4 ? @"YES" : @"NO";
    v13 = v6;
    v14 = v12;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      v13 = v6;
      v14 = v12;
      _IDSLogV();
    }
  }

  v7 = [(IDSUTunDeliveryController *)self _createPeerFromDeviceID:v6, v13, v14];
  [(IDSUTunDeliveryController *)self _setCloudConnectionConnected:v4 forPeer:v7];
LABEL_20:
}

- (void)_setCloudConnectionConnected:(BOOL)a3 forPeer:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    if (v4)
    {
      [v6 enableCloudConnection];
    }

    v8 = [v7 isCloudConnected];
    if (v8 != v4)
    {
      v9 = v8;
      [v7 setIsCloudConnected:v4];
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
        if (v4)
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

        if (v4)
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
  v2 = [(IDSUTunDeliveryController *)self idsNRDeviceBridge];
  v3 = [v2 isNearby];

  return v3;
}

- (BOOL)isTerminusRegistered
{
  v2 = [(IDSUTunDeliveryController *)self idsNRDeviceBridge];
  v3 = [v2 isRegistered];

  return v3;
}

- (void)nrDeviceBridge:(id)a3 defaultPeerNearbyDidChange:(BOOL)a4
{
  v4 = a4;
  v19 = a3;
  [(IDSUTunDeliveryController *)self defaultPeerNearbyChanged:v4];
  v6 = [(IDSUTunDeliveryController *)self _copyPairedDevice];
  if (v6 && v4)
  {
    v7 = [(NSHashTable *)self->_connectivityDelegates allObjects];
    v8 = [v7 copy];

    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 uniqueID];
      *buf = 138412290;
      v26 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Broadcasting found nearby IPsec device {uniqueID: %@}", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v17 = [v6 uniqueID];
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v18 = [v6 uniqueID];
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
            v16 = [v6 uniqueID];
            [v15 deliveryController:self foundNearbyIPsecCapableDeviceWithUniqueID:v16];
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    [(IDSUTunDeliveryController *)self peerNearbyStateChanged:v6 forceNotify:1];
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

- (void)_disableOTRForDefaultPairedPeer:(id)a3
{
  v4 = a3;
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

  [v4 setEnableOTR:0];
  self->_otrInitialized = 0;
}

- (void)didAddPairedDevice:(id)a3
{
  v4 = a3;
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

- (void)didRemovePairedDevice:(id)a3
{
  v4 = a3;
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

- (void)didUpdatePairedDevice:(id)a3
{
  v4 = a3;
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

- (void)findDefaultPeerToForceOTRNegotiation:(id)a3 priority:(int64_t)a4 completionBlock:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = +[IDSUTunDeliveryController sharedInstance];
  v10 = [v9 _copyPairedDevice];

  [v10 forceOTRNegotiationForTopic:v8 priority:a4 completionBlock:v7];
}

- (void)admissionPolicyChangedForTopic:(id)a3 allowed:(BOOL)a4
{
  v6 = a3;
  im_assert_primary_base_queue();
  deviceIDToPeer = self->_deviceIDToPeer;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1004D1B80;
  v9[3] = &unk_100BDE6F0;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  [(NSMutableDictionary *)deviceIDToPeer enumerateKeysAndObjectsUsingBlock:v9];
}

- (void)_cleanupContinuityPeerMaps:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_peerListMap objectForKey:v4];
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

  [(NSMutableDictionary *)self->_peerListMap removeObjectForKey:v4];
  [(NSMutableDictionary *)self->_pendingPeerMap removeObjectForKey:v4];
  [(NSMutableDictionary *)self->_peerConnectBlocksMap removeObjectForKey:v4];
  [(NSMutableDictionary *)self->_peerFailureBlocksMap removeObjectForKey:v4];
}

- (void)lockContinuityPeer:(id)a3 btUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  pthread_mutex_lock(&self->_continuityPeerLock);
  v8 = [(NSMutableDictionary *)self->_lockedPeerMap objectForKey:v7];
  v9 = v8;
  if (v8)
  {
    if (([v8 isEqualToString:v6] & 1) == 0)
    {
      v10 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v18 = v9;
        v19 = 2112;
        v20 = v7;
        v21 = 2112;
        v22 = v6;
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

    [(NSMutableDictionary *)lockedPeerMap setObject:v6 forKey:v7];
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Lock peer %@ for btUUID %@.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v15 = v6;
      v16 = v7;
      _IDSLogV();
    }

    [(IDSUTunDeliveryController *)self _cleanupContinuityPeerMaps:v7, v15, v16];
  }

  pthread_mutex_unlock(&self->_continuityPeerLock);
}

- (void)unlockContinuityPeer:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_continuityPeerLock);
  v5 = [(NSMutableDictionary *)self->_lockedPeerMap objectForKey:v4];
  if (v5)
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Remove locked peer %@ for btUUID %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v7 = v5;
      v8 = v4;
      _IDSLogV();
    }

    [(NSMutableDictionary *)self->_lockedPeerMap removeObjectForKey:v4, v7, v8];
  }

  [(IDSUTunDeliveryController *)self _cleanupContinuityPeerMaps:v4];
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

- (id)lockedContinuityPeerID:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_continuityPeerLock);
  v5 = [(NSMutableDictionary *)self->_lockedPeerMap objectForKey:v4];

  pthread_mutex_unlock(&self->_continuityPeerLock);

  return v5;
}

- (id)pendingContinuityPeerID:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_continuityPeerLock);
  v5 = [(NSMutableDictionary *)self->_pendingPeerMap objectForKey:v4];

  pthread_mutex_unlock(&self->_continuityPeerLock);

  return v5;
}

- (void)addContinuityPeer:(id)a3 btUUID:(id)a4 connectBlock:(id)a5 failureBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v10 isEqualToString:IDSDeviceDefaultPairedDeviceUniqueID])
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
    [(NSMutableDictionary *)self->_peerListMap objectForKey:v11];
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

          if ([*(*(&v44 + 1) + 8 * i) isEqualToString:v10])
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
      v49 = v10;
      v50 = 2112;
      v51 = v11;
      v52 = 2112;
      v53 = v15;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Add new peer %@ for btUUID %@, list %@.", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v41 = v11;
      v43 = v15;
      v38 = v10;
      _IDSLogV();
    }

    if (!v15)
    {
      v15 = objc_alloc_init(NSMutableArray);
    }

    [v15 addObject:{v10, v38, v41, v43}];
    peerListMap = self->_peerListMap;
    if (!peerListMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v22 = self->_peerListMap;
      self->_peerListMap = Mutable;

      peerListMap = self->_peerListMap;
    }

    [(NSMutableDictionary *)peerListMap setObject:v15 forKey:v11];
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

    v27 = [(NSMutableDictionary *)pendingPeerMap objectForKey:v11, v39];
    if (!v27)
    {
      [(NSMutableDictionary *)self->_pendingPeerMap setObject:v10 forKey:v11];
      v28 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v49 = v10;
        v50 = 2112;
        v51 = v11;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Enable peer %@ for btUUID %@.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v40 = v10;
        v42 = v11;
        _IDSLogV();
      }

      if (v12)
      {
        v29 = im_primary_queue();
        dispatch_async(v29, v12);
      }
    }

    v30 = [(NSMutableDictionary *)self->_peerConnectBlocksMap objectForKey:v11, v40, v42];
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

    v33 = [v12 copy];
    [v30 setObject:v33 forKey:v10];

    [(NSMutableDictionary *)self->_peerConnectBlocksMap setObject:v30 forKey:v11];
    v34 = [(NSMutableDictionary *)self->_peerFailureBlocksMap objectForKey:v11];
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

    v37 = [v13 copy];
    [v34 setObject:v37 forKey:v10];

    [(NSMutableDictionary *)self->_peerFailureBlocksMap setObject:v34 forKey:v11];
    pthread_mutex_unlock(&self->_continuityPeerLock);

LABEL_48:
  }
}

- (void)tryNextContinuityPeer:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_continuityPeerLock);
  v40 = self;
  v37 = v4;
  v38 = [(NSMutableDictionary *)self->_lockedPeerMap objectForKey:v4];
  if (!v38)
  {
    v6 = [(NSMutableDictionary *)self->_pendingPeerMap objectForKey:v4];
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

    v7 = [(NSMutableDictionary *)self->_peerListMap objectForKey:v4];
    v8 = [(IDSUTunDeliveryController *)self _copyPeerWithID:v6];
    v9 = [v8 continuityConnectCount];

    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v48 = v7;
      v49 = 2112;
      v50 = v6;
      v51 = 1024;
      v52 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Search peer in %@. (current peer %@, count %d)", buf, 0x1Cu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v34 = v6;
      v36 = v9;
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
            v15 = [(IDSUTunDeliveryController *)v40 _copyPeerWithID:v14];
            v16 = [v15 continuityConnectCount];
            v17 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v48 = v14;
              v49 = 1024;
              LODWORD(v50) = v16;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "peer %@ has count %d", buf, 0x12u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v32 = v14;
              v34 = v16;
              _IDSLogV();
            }

            if (v16 >= v9)
            {
              v16 = v9;
            }

            else
            {
              v18 = v14;

              v39 = v18;
            }

            v9 = v16;
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

        v20 = [(NSMutableDictionary *)v40->_peerFailureBlocksMap objectForKey:v37, v32, v34];
        v21 = [v20 objectForKey:v6];

        if (v21)
        {
          v22 = im_primary_queue();
          dispatch_async(v22, v21);
        }

        pendingPeerMap = v40->_pendingPeerMap;
        if (!pendingPeerMap)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v25 = v40->_pendingPeerMap;
          v40->_pendingPeerMap = Mutable;

          pendingPeerMap = v40->_pendingPeerMap;
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

        v27 = [(NSMutableDictionary *)v40->_peerConnectBlocksMap objectForKey:v37, v33, v35];
        v28 = [v27 objectForKey:v39];

        if (v28)
        {
          v29 = im_primary_queue();
          dispatch_async(v29, v28);
        }

        pthread_mutex_unlock(&v40->_continuityPeerLock);

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

    pthread_mutex_unlock(&v40->_continuityPeerLock);
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

- (BOOL)isPeerForPhoneContinuityLocalMessage:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_deviceIDToPeerLock);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(NSMutableDictionary *)self->_deviceIDToPeer allValues];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v7 = *v21;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [v9 btUUID];
        if ([v10 isEqualToString:v4])
        {
          v11 = [v9 originalbtUUID];
          v12 = v11 == 0;

          if (!v12)
          {
            v14 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v16 = [v9 btUUID];
              *buf = 138412290;
              v25 = v16;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Peer's session ID %@ is for the phone continuity local message.", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                v18 = [v9 btUUID];
                _IDSLogTransport();

                if (_IDSShouldLog())
                {
                  v19 = [v9 btUUID];
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

      v6 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
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

- (id)sessionIDforPeer:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_deviceIDToPeerLock);
  v5 = [(NSMutableDictionary *)self->_btuuidToSessionID objectForKey:v4];

  pthread_mutex_unlock(&self->_deviceIDToPeerLock);

  return v5;
}

- (void)enableOTRForDefaultPairedDevice
{
  im_assert_primary_base_queue();
  v3 = [(IDSUTunDeliveryController *)self _currentOTRTimer];

  if (!v3)
  {
    v7 = [(IDSUTunDeliveryController *)self pairingManager];
    if ([v7 isPaired])
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

- (void)rapportClient:(id)a3 didDiscoverDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  im_assert_primary_base_queue();
  v8 = [(IDSUTunDeliveryController *)self _copyPeerWithID:v7];
  if (!v8)
  {
    v8 = [(IDSUTunDeliveryController *)self _createPeerFromDeviceID:v7];
  }

  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Rapport discovered device. {Peer:%@, deviceID:%@}", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v11 = v8;
    v12 = v7;
    _IDSLogV();
  }

  if ([IMUserDefaults isLiveDeliveryWarmUpEnabled:v11])
  {
    if (([v8 isCloudConnected] & 1) == 0)
    {
      [v8 enableCloudConnection];
      v10 = +[IDSUTunController sharedInstance];
      [v10 startGlobalLinkForDevice:v7];
    }

    [v8 setIsPeerAlwaysConnected:1];
  }
}

- (void)rapportClient:(id)a3 didLoseDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  im_assert_primary_base_queue();
  v8 = [(IDSUTunDeliveryController *)self _copyPeerWithID:v7];
  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Rapport lost device. {Peer:%@, deviceID:%@}", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v10 = v8;
    v11 = v7;
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