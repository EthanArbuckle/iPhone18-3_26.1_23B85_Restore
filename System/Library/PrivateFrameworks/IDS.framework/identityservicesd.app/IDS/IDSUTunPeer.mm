@interface IDSUTunPeer
- (BOOL)_allCloudConnectionsAreIdle;
- (BOOL)_allConnectionsAreIdle;
- (BOOL)_shouldLogTransportStats;
- (BOOL)hasSpaceForMessagesWithPriority:(int64_t)priority dataProtectionClass:(unsigned int)class messageType:(int64_t)type;
- (BOOL)isConnected;
- (BOOL)manager:(id)manager cbuuidDidDiscover:(id)discover;
- (BOOL)sendAckForMessageWithSequenceNumber:(unsigned int)number priority:(int64_t)priority dataProtectionClass:(unsigned int)class connectionType:(int64_t)type;
- (IDSUTunPeer)initWithIdentifier:(id)identifier btUUID:(id)d uniqueID:(id)iD shouldUseIPsecLink:(BOOL)link isNearby:(BOOL)nearby isClassCConnected:(BOOL)connected;
- (IDSUTunPeerDelegate)delegate;
- (NSDictionary)defaultPriorityMessageStatistics;
- (NSDictionary)sendingMessageStatistics;
- (NSDictionary)syncPriorityMessageStatistics;
- (NSDictionary)urgentCloudPriorityMessageStatistics;
- (NSDictionary)urgentPriorityMessageStatistics;
- (id)_connectionForPriority:(int64_t)priority messageType:(int64_t)type dataProtectionClass:(unsigned int)class;
- (id)_copyPowerlogDictionaryWithOutgoingStats:(id)stats incomingStats:(id)incomingStats;
- (id)_copyStatisticsDict:(id)dict;
- (id)createConnectionWithIdentifier:(id)identifier priority:(int64_t)priority shouldUseIPsecLink:(BOOL)link dataProtectionClass:(unsigned int)class optionalIdentifier:(id)optionalIdentifier;
- (id)defaultCloudPriorityMessageStatistics;
- (int64_t)_connectionTypeForConnection:(id)connection;
- (void)_accumulateStats:(id)stats intoMessages:(unint64_t *)messages andBytes:(unint64_t *)bytes;
- (void)_addStatsFromDict:(id)dict toAggregate:(id)aggregate;
- (void)_checkServicesPreferringInfraWiFi:(unsigned int)fi;
- (void)_clearCloudDisableTimer;
- (void)_clearDisableTimer;
- (void)_cloudDisableTimerFired:(id)fired;
- (void)_disableTimerFired:(id)fired;
- (void)_handleCBUUIDDidConnect:(id)connect isDefaultPairedDevice:(BOOL)device isAlwaysConnected:(BOOL)connected;
- (void)_handleCBUUIDFailToConnect:(id)connect withReason:(id)reason;
- (void)_powerLogServices:(id)services prefersInfraWifi:(BOOL)wifi;
- (void)_powerlogDictionaryForPriority:(int64_t)priority;
- (void)_powerlogDictionaryForSockets;
- (void)_powerlogTransportStats;
- (void)_startCloudDisableTimerIfNecessary;
- (void)_startDisableTimerIfNecessary;
- (void)_startPowerLogTimersForAllPriorities;
- (void)admissionPolicyChangedForTopic:(id)topic allowed:(BOOL)allowed;
- (void)assertBTClassic:(BOOL)classic;
- (void)cancelMessageID:(id)d;
- (void)clearStats;
- (void)connection:(id)connection connectivityChanged:(BOOL)changed;
- (void)connection:(id)connection dataReceived:(id)received topic:(id)topic command:(id)command fromID:(id)d messageID:(id)iD wantsAppAck:(BOOL)ack expectsPeerResponse:(BOOL)self0 peerResponseIdentifier:(id)self1 messageUUID:(id)self2 isCompressed:(BOOL)self3 didWakeHint:(BOOL)self4;
- (void)connection:(id)connection messageReceived:(id)received topic:(id)topic command:(id)command fromID:(id)d messageID:(id)iD wantsAppAck:(BOOL)ack expectsPeerResponse:(BOOL)self0 peerResponseIdentifier:(id)self1 messageUUID:(id)self2 isCompressed:(BOOL)self3 didWakeHint:(BOOL)self4;
- (void)connection:(id)connection protobufReceived:(id)received topic:(id)topic command:(id)command fromID:(id)d messageID:(id)iD wantsAppAck:(BOOL)ack expectsPeerResponse:(BOOL)self0 peerResponseIdentifier:(id)self1 messageUUID:(id)self2 isCompressed:(BOOL)self3 didWakeHint:(BOOL)self4;
- (void)connection:(id)connection receivedAppLevelAckWithTopic:(id)topic fromID:(id)d messageID:(id)iD peerResponseIdentifier:(id)identifier;
- (void)connectionHasSpaceForMessages:(id)messages dataProtectionClass:(unsigned int)class;
- (void)connectionIsEmpty:(id)empty;
- (void)connectionIsEmptyOfCloudMessages:(id)messages;
- (void)dealloc;
- (void)disableCloudConnectionForReason:(int64_t)reason;
- (void)disableConnectionForReason:(int64_t)reason shouldWait:(BOOL)wait;
- (void)dropDisallowedMessages;
- (void)enableCloudConnection;
- (void)enableConnection;
- (void)forceOTRNegotiationForTopic:(id)topic priority:(int64_t)priority completionBlock:(id)block;
- (void)kickProgressBlockForMessageID:(id)d;
- (void)logCurrentTransportStatsAndResetTimers;
- (void)manager:(id)manager cbuuidDidConnect:(id)connect isAlwaysConnected:(BOOL)connected;
- (void)manager:(id)manager cbuuidDidDisconnect:(id)disconnect;
- (void)manager:(id)manager cbuuidDidFailToConnect:(id)connect withReason:(id)reason;
- (void)performBlock:(id)block priority:(int64_t)priority dataProtectionClass:(unsigned int)class;
- (void)performBlockForAllConnections:(id)connections;
- (void)performBlockForDirectConnections:(id)connections;
- (void)performBlockSynchronouslyForAllConnections:(id)connections;
- (void)sendMessage:(id)message priority:(int64_t)priority messageType:(int64_t)type;
- (void)setBtUUID:(id)d;
- (void)setEnableOTR:(BOOL)r;
- (void)setIsConnected:(BOOL)connected;
- (void)setIsMagnetIndicatingPeerIsAwake:(BOOL)awake;
- (void)setIsPeerAlwaysConnected:(BOOL)connected;
- (void)setLinkPreferences:(id)preferences;
- (void)setLocalSetupInProgress:(BOOL)progress;
- (void)setPendingCloudEnable:(BOOL)enable;
- (void)setPreferInfraWiFi:(BOOL)fi services:(id)services;
- (void)setSupportsCloudConnections:(BOOL)connections;
- (void)trafficClassesChanged;
- (void)unpairStart;
@end

@implementation IDSUTunPeer

- (void)_startCloudDisableTimerIfNecessary
{
  im_assert_primary_base_queue();
  cloudDisableTimer = self->_cloudDisableTimer;
  if (cloudDisableTimer)
  {
    v4 = sub_10000AD38();

    [(IMDispatchTimer *)cloudDisableTimer updateTimerInterval:v4 repeats:0];
  }

  else
  {
    v5 = [IMDispatchTimer alloc];
    v6 = im_primary_queue();
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10001629C;
    v9[3] = &unk_100BD9268;
    v9[4] = self;
    v7 = [v5 initWithQueue:v6 interval:sub_10000AD38() repeats:0 handlerBlock:v9];
    v8 = self->_cloudDisableTimer;
    self->_cloudDisableTimer = v7;
  }
}

- (void)_powerlogDictionaryForSockets
{
  im_assert_primary_base_queue();
  context = objc_autoreleasePoolPush();
  v2 = +[IDSUTunController sharedInstance];
  v3 = kIDSDefaultPairedDeviceID;
  v26 = [v2 perServiceDataSentForDevice:kIDSDefaultPairedDeviceID services:0];

  v4 = +[IDSUTunController sharedInstance];
  v25 = [v4 perServiceDataReceivedForDevice:v3 services:0];

  allKeys = [v26 allKeys];
  v6 = [NSMutableSet setWithArray:allKeys];

  allKeys2 = [v25 allKeys];
  [v6 addObjectsFromArray:allKeys2];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v6;
  v27 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v27)
  {
    Mutable = 0;
    v24 = *v33;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        *buf = 0;
        v30 = 0;
        v31 = 0;
        v29 = 0;
        v11 = [v26 objectForKey:v10];
        [(IDSUTunPeer *)self _accumulateStats:v11 intoMessages:buf andBytes:&v31];

        v12 = [v25 objectForKey:v10];
        [(IDSUTunPeer *)self _accumulateStats:v12 intoMessages:&v30 andBytes:&v29];

        if (!Mutable)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        }

        v13 = [NSDictionary alloc];
        v14 = [NSNumber numberWithUnsignedLongLong:v31];
        v15 = [NSNumber numberWithUnsignedLongLong:*buf];
        v16 = [NSNumber numberWithUnsignedLongLong:v29];
        v17 = [NSNumber numberWithUnsignedLongLong:v30];
        v18 = [NSNumber numberWithUnsignedChar:[(IDSUTunPeer *)self linkType]];
        v19 = [v13 initWithObjectsAndKeys:{v14, @"IDSLocalOutgoingSocketBytes", v15, @"IDSLocalOutgoingSocketPackets", v16, @"IDSLocalIncomingSocketBytes", v17, @"IDSLocalIncomingSocketPackets", v18, @"IDSLocalLinkType", 0}];

        [(__CFDictionary *)Mutable setObject:v19 forKey:v10];
      }

      v27 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v27);

    if (Mutable)
    {
      [(__CFDictionary *)Mutable setObject:@"Sockets" forKey:@"IDSLocalStatisticsCategory"];
      v20 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(__CFDictionary *)Mutable count];
        *buf = 136315650;
        *&buf[4] = "[IDSUTunPeer _powerlogDictionaryForSockets]";
        v37 = 2048;
        selfCopy = self;
        v39 = 2048;
        v40 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s: self %p reporting stats for sockets %lu services", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        [(__CFDictionary *)Mutable count];
        _IDSLogV();
      }

      IDSPowerLogDictionary();
    }
  }

  else
  {

    Mutable = 0;
  }

  objc_autoreleasePoolPop(context);
}

- (BOOL)_allCloudConnectionsAreIdle
{
  im_assert_primary_base_queue();
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = -86;
  v3 = self->_urgentDirectConnections;
  v4 = +[IDSDaemonPriorityQueueController sharedInstance];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100016158;
  v14[3] = &unk_100BD9038;
  v5 = v3;
  v15 = v5;
  v16 = &v17;
  [v4 performBlockSYNCHRONOUSLYWithPriority:v14 priority:300];

  if (*(v18 + 24) == 1 && [(NSArray *)self->_defaultDirectConnections count])
  {
    v6 = self->_defaultDirectConnections;
    v7 = +[IDSDaemonPriorityQueueController sharedInstance];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100368370;
    v11[3] = &unk_100BD9038;
    v8 = v6;
    v12 = v8;
    v13 = &v17;
    [v7 performBlockSYNCHRONOUSLYWithPriority:v11 priority:200];
  }

  v9 = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return v9;
}

- (void)_clearCloudDisableTimer
{
  im_assert_primary_base_queue();
  [(IMDispatchTimer *)self->_cloudDisableTimer invalidate];
  cloudDisableTimer = self->_cloudDisableTimer;
  self->_cloudDisableTimer = 0;
}

- (void)_startDisableTimerIfNecessary
{
  im_assert_primary_base_queue();
  disableTimer = self->_disableTimer;
  if (disableTimer)
  {

    [(IMDispatchTimer *)disableTimer updateTimerInterval:15 repeats:0];
  }

  else
  {
    v4 = [IMDispatchTimer alloc];
    v5 = im_primary_queue();
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1003682F0;
    v8[3] = &unk_100BD9268;
    v8[4] = self;
    v6 = [v4 initWithQueue:v5 interval:15 repeats:0 handlerBlock:v8];
    v7 = self->_disableTimer;
    self->_disableTimer = v6;
  }
}

- (id)createConnectionWithIdentifier:(id)identifier priority:(int64_t)priority shouldUseIPsecLink:(BOOL)link dataProtectionClass:(unsigned int)class optionalIdentifier:(id)optionalIdentifier
{
  v8 = *&class;
  identifierCopy = identifier;
  optionalIdentifierCopy = optionalIdentifier;
  switch(priority)
  {
    case 100:
      v14 = @"-Sync";
      v28 = 100;
      v15 = @"sync";
      break;
    case 300:
      v14 = @"-Urgent";
      v28 = 300;
      v15 = @"urgent";
      break;
    case 200:
      v14 = @"-Default";
      v28 = 200;
      v15 = @"default";
      break;
    default:
      if (!isRunningTests())
      {
        abort();
      }

      throwsIDSAbortException();
      v28 = 0;
      v15 = 0;
      v14 = 0;
      break;
  }

  if (v8 > 2)
  {
    v16 = &stru_100C06028;
  }

  else
  {
    v16 = off_100BD92F8[v8];
    v15 = [(__CFString *)v15 stringByAppendingString:v16];
  }

  v29 = identifierCopy;
  if (optionalIdentifierCopy)
  {
    [NSString stringWithFormat:@"%@%@%@%@%@", identifierCopy, v14, v16, @"-", optionalIdentifierCopy];
  }

  else
  {
    [NSString stringWithFormat:@"%@%@%@", identifierCopy, v14, v16, v26, v27];
  }
  v17 = ;
  linkCopy = link;
  BYTE1(v24) = link;
  LOBYTE(v24) = 0;
  v19 = [[IDSUTunConnection alloc] initWithIdentifier:v17 socketPriority:v28 btUUID:self->_btUUID uniqueID:self->_uniqueID incomingServiceMap:self->_incomingServiceMap outgoingServiceMap:self->_outgoingServiceMap isCloudEnabled:v24 shouldUseIPsecLink:?];
  [(IDSUTunConnection *)v19 setSupportsLegacyOTRSessionToken:1];
  [(IDSUTunConnection *)v19 setMaxQueueSize:5242880];
  [(IDSUTunConnection *)v19 setDelegate:self];
  [(IDSUTunConnection *)v19 setSupportedMessageTypes:&off_100C3DB20];
  [(IDSUTunConnection *)v19 setIdsPriority:priority];
  [(IDSUTunConnection *)v19 setDataProtectionClass:v8];
  [(IDSUTunConnection *)v19 setName:v15];
  if (!optionalIdentifierCopy && (priority == 300 || priority == 200))
  {
    v20 = [NSString stringWithFormat:@"%@%@Cloud%@", v29, v14, v16];
    BYTE1(v25) = linkCopy;
    LOBYTE(v25) = 1;
    v21 = [[IDSUTunConnection alloc] initWithIdentifier:v20 socketPriority:v28 btUUID:self->_btUUID uniqueID:self->_uniqueID incomingServiceMap:self->_incomingServiceMap outgoingServiceMap:self->_outgoingServiceMap isCloudEnabled:v25 shouldUseIPsecLink:?];
    [(IDSUTunConnection *)v21 setSupportsLegacyOTRSessionToken:0];
    [(IDSUTunConnection *)v21 setMaxQueueSize:0x200000];
    [(IDSUTunConnection *)v21 setDelegate:self];
    [(IDSUTunConnection *)v21 setSupportedMessageTypes:&off_100C3DB38];
    [(IDSUTunConnection *)v19 setCloudConnection:v21];
    [(IDSUTunConnection *)v21 setIdsPriority:priority];
    [(IDSUTunConnection *)v21 setDataProtectionClass:v8];
    v22 = [(__CFString *)v15 stringByAppendingString:@" Cloud"];
    [(IDSUTunConnection *)v21 setName:v22];
  }

  return v19;
}

- (IDSUTunPeer)initWithIdentifier:(id)identifier btUUID:(id)d uniqueID:(id)iD shouldUseIPsecLink:(BOOL)link isNearby:(BOOL)nearby isClassCConnected:(BOOL)connected
{
  linkCopy = link;
  identifierCopy = identifier;
  dCopy = d;
  iDCopy = iD;
  v89.receiver = self;
  v89.super_class = IDSUTunPeer;
  v14 = [(IDSUTunPeer *)&v89 init];
  if (v14)
  {
    v14->_isDefaultPairedDevice = [iDCopy isEqualToString:IDSDeviceDefaultPairedDeviceUniqueID];
    v15 = [(__CFString *)identifierCopy copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [iDCopy copy];
    uniqueID = v14->_uniqueID;
    v14->_uniqueID = v17;

    v14->_isMagnetIndicatingPeerIsAwake = 1;
    v14->_shouldUseIPsecLink = linkCopy;
    v14->_emptyStatesLock._os_unfair_lock_opaque = 0;
    v14->_isBTClassicAsserted = 0;
    if (linkCopy)
    {
      v14->_isNearby = nearby;
    }

    if (!v14->_isDefaultPairedDevice)
    {
      v19 = [dCopy copy];
      btUUID = v14->_btUUID;
      v14->_btUUID = v19;

      v14->_supportsCloudConnections = 1;
    }

    v85 = IMGetDomainValueForKey();
    v14->_waitForDefaultPairedDevice = 0;
    if (v14->_isDefaultPairedDevice)
    {
      v21 = +[IDSUTunController sharedInstance];
      [v21 prepareDefaultPairedConnectionInfoWithDeviceUniqueID:iDCopy shouldUseServiceConnector:linkCopy];

      v14->_waitForDefaultPairedDevice = 1;
    }

    v22 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v99 = v14;
      v100 = 2112;
      v101 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Initing IDSUTunPeer %p %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v23 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = @"NO";
      if (v14->_isDefaultPairedDevice)
      {
        v25 = @"YES";
      }

      else
      {
        v25 = @"NO";
      }

      if (v14->_waitForDefaultPairedDevice)
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      v27 = v14->_btUUID;
      v28 = v14->_uniqueID;
      if (linkCopy)
      {
        v24 = @"YES";
      }

      *buf = 138413570;
      v99 = v27;
      v100 = 2112;
      v101 = v25;
      v102 = 2112;
      v103 = v85;
      v104 = 2112;
      v105 = v26;
      v106 = 2112;
      v107 = v28;
      v108 = 2112;
      v109 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "btuuid %@ isDefaultPairedDevice: %@ pipePeripheralUUIDString: %@ waitForDefaultPairedDevice: %@ uniqueID %@ shouldUseIPsecLink: %@", buf, 0x3Eu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v29 = [IDSUTunPeerServiceMap alloc];
    v30 = [NSString stringWithFormat:@"incoming:%@", v14->_btUUID];
    v31 = [(IDSUTunPeerServiceMap *)v29 initWithName:v30];
    incomingServiceMap = v14->_incomingServiceMap;
    v14->_incomingServiceMap = v31;

    v33 = [IDSUTunPeerServiceMap alloc];
    v34 = [NSString stringWithFormat:@"outgoing:%@", v14->_btUUID];
    v35 = [(IDSUTunPeerServiceMap *)v33 initWithName:v34];
    outgoingServiceMap = v14->_outgoingServiceMap;
    v14->_outgoingServiceMap = v35;

    v37 = objc_alloc_init(NSMutableDictionary);
    connectedStates = v14->_connectedStates;
    v14->_connectedStates = v37;

    v39 = objc_alloc_init(NSMutableDictionary);
    emptyStates = v14->_emptyStates;
    v14->_emptyStates = v39;

    if (linkCopy)
    {
      v41 = [(IDSUTunPeer *)v14 createConnectionWithIdentifier:identifierCopy priority:300 shouldUseIPsecLink:1 dataProtectionClass:0 optionalIdentifier:0];
      v42 = [(IDSUTunPeer *)v14 createConnectionWithIdentifier:identifierCopy priority:300 shouldUseIPsecLink:1 dataProtectionClass:2 optionalIdentifier:0];
      v43 = [(IDSUTunPeer *)v14 createConnectionWithIdentifier:identifierCopy priority:300 shouldUseIPsecLink:1 dataProtectionClass:2 optionalIdentifier:@"Relay"];
      v44 = [(IDSUTunPeer *)v14 createConnectionWithIdentifier:identifierCopy priority:200 shouldUseIPsecLink:1 dataProtectionClass:0 optionalIdentifier:0];
      v45 = [(IDSUTunPeer *)v14 createConnectionWithIdentifier:identifierCopy priority:200 shouldUseIPsecLink:1 dataProtectionClass:2 optionalIdentifier:0];
      v46 = [(IDSUTunPeer *)v14 createConnectionWithIdentifier:identifierCopy priority:100 shouldUseIPsecLink:1 dataProtectionClass:0 optionalIdentifier:0];
      v47 = [(IDSUTunPeer *)v14 createConnectionWithIdentifier:identifierCopy priority:100 shouldUseIPsecLink:1 dataProtectionClass:2 optionalIdentifier:0];
      v93[0] = v41;
      v93[1] = v42;
      v93[2] = v43;
      v93[3] = v44;
      v93[4] = v45;
      v93[5] = v46;
      v93[6] = v47;
      v48 = [NSArray arrayWithObjects:v93 count:7];
      directConnections = v14->_directConnections;
      v14->_directConnections = v48;

      v92[0] = v41;
      v92[1] = v42;
      v92[2] = v43;
      v50 = [NSArray arrayWithObjects:v92 count:3];
      urgentDirectConnections = v14->_urgentDirectConnections;
      v14->_urgentDirectConnections = v50;

      v91[0] = v44;
      v91[1] = v45;
      v52 = [NSArray arrayWithObjects:v91 count:2];
      defaultDirectConnections = v14->_defaultDirectConnections;
      v14->_defaultDirectConnections = v52;

      v90[0] = v46;
      v90[1] = v47;
      v54 = [NSArray arrayWithObjects:v90 count:2];
      syncDirectConnections = v14->_syncDirectConnections;
      v14->_syncDirectConnections = v54;

      urgentConnectionForAck = v14->_urgentConnectionForAck;
      v14->_urgentConnectionForAck = v42;
      v57 = v42;

      defaultConnectionForAck = v14->_defaultConnectionForAck;
      v14->_defaultConnectionForAck = v45;
      v59 = v45;

      syncConnectionForAck = v14->_syncConnectionForAck;
      v14->_syncConnectionForAck = v47;
      v61 = v47;

      cloudConnection = [(IDSUTunConnection *)v57 cloudConnection];
      urgentCloudConnectionForAck = v14->_urgentCloudConnectionForAck;
      v14->_urgentCloudConnectionForAck = cloudConnection;

      cloudConnection2 = [(IDSUTunConnection *)v59 cloudConnection];
      defaultCloudConnectionForAck = v14->_defaultCloudConnectionForAck;
      v14->_defaultCloudConnectionForAck = cloudConnection2;

      v14->_isClassCConnected = connected;
    }

    else
    {
      v66 = [(IDSUTunPeer *)v14 createConnectionWithIdentifier:identifierCopy priority:300 shouldUseIPsecLink:0 dataProtectionClass:3 optionalIdentifier:0];
      v67 = [(IDSUTunPeer *)v14 createConnectionWithIdentifier:identifierCopy priority:200 shouldUseIPsecLink:0 dataProtectionClass:3 optionalIdentifier:0];
      v68 = [(IDSUTunPeer *)v14 createConnectionWithIdentifier:identifierCopy priority:100 shouldUseIPsecLink:0 dataProtectionClass:3 optionalIdentifier:0];
      v97[0] = v66;
      v97[1] = v67;
      v97[2] = v68;
      v69 = [NSArray arrayWithObjects:v97 count:3];
      v70 = v14->_directConnections;
      v14->_directConnections = v69;

      v96 = v66;
      v71 = [NSArray arrayWithObjects:&v96 count:1];
      v72 = v14->_urgentDirectConnections;
      v14->_urgentDirectConnections = v71;

      v95 = v67;
      v73 = [NSArray arrayWithObjects:&v95 count:1];
      v74 = v14->_defaultDirectConnections;
      v14->_defaultDirectConnections = v73;

      v94 = v68;
      v75 = [NSArray arrayWithObjects:&v94 count:1];
      v76 = v14->_syncDirectConnections;
      v14->_syncDirectConnections = v75;

      v77 = v14->_urgentConnectionForAck;
      v14->_urgentConnectionForAck = v66;
      v41 = v66;

      v78 = v14->_defaultConnectionForAck;
      v14->_defaultConnectionForAck = v67;
      v43 = v67;

      v79 = v14->_syncConnectionForAck;
      v14->_syncConnectionForAck = v68;
      v44 = v68;

      cloudConnection3 = [(IDSUTunConnection *)v41 cloudConnection];
      v81 = v14->_urgentCloudConnectionForAck;
      v14->_urgentCloudConnectionForAck = cloudConnection3;

      cloudConnection4 = [(IDSUTunConnection *)v43 cloudConnection];
      v46 = v14->_defaultCloudConnectionForAck;
      v14->_defaultCloudConnectionForAck = cloudConnection4;
    }

    if ([(IDSUTunPeer *)v14 _shouldLogTransportStats])
    {
      [(IDSUTunPeer *)v14 _powerlogTransportStats];
    }

    v88 = v14;
    im_dispatch_after_primary_queue();
  }

  return v14;
}

- (void)dealloc
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, " Deallocing UTunPeer %p", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    selfCopy2 = self;
    _IDSLogV();
  }

  [(IMDispatchTimer *)self->_disableTimer invalidate];
  v4 = +[IDSWPLinkManager sharedInstance];
  [v4 removeConnectivityDelegate:self];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_directConnections;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        [v9 setDelegate:0];
        cloudConnection = [v9 cloudConnection];
        [cloudConnection setDelegate:0];

        [v9 setCloudConnection:0];
        [v9 invalidateTimeoutTimer];
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  powerLogTimerUrgent = self->_powerLogTimerUrgent;
  if (powerLogTimerUrgent)
  {
    dispatch_source_cancel(powerLogTimerUrgent);
  }

  powerLogTimerDefault = self->_powerLogTimerDefault;
  if (powerLogTimerDefault)
  {
    dispatch_source_cancel(powerLogTimerDefault);
  }

  powerLogTimerSync = self->_powerLogTimerSync;
  if (powerLogTimerSync)
  {
    dispatch_source_cancel(powerLogTimerSync);
  }

  powerLogTimerSockets = self->_powerLogTimerSockets;
  if (powerLogTimerSockets)
  {
    dispatch_source_cancel(powerLogTimerSockets);
  }

  v16.receiver = self;
  v16.super_class = IDSUTunPeer;
  [(IDSUTunPeer *)&v16 dealloc];
}

- (void)performBlockForDirectConnections:(id)connections
{
  connectionsCopy = connections;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = self->_directConnections;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = +[IDSDaemonPriorityQueueController sharedInstance];
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_10035F128;
        v13[3] = &unk_100BD7298;
        v11 = connectionsCopy;
        v13[4] = v9;
        v14 = v11;
        [v10 performBlockWithPriority:v13 priority:{objc_msgSend(v9, "priority")}];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (void)performBlockForAllConnections:(id)connections
{
  connectionsCopy = connections;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = self->_directConnections;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        supportsCloudConnections = self->_supportsCloudConnections;
        v11 = +[IDSDaemonPriorityQueueController sharedInstance];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10035F2E0;
        v14[3] = &unk_100BD8F70;
        v12 = connectionsCopy;
        v14[4] = v9;
        v15 = v12;
        v16 = supportsCloudConnections;
        [v11 performBlockWithPriority:v14 priority:{objc_msgSend(v9, "priority")}];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

- (void)performBlockSynchronouslyForAllConnections:(id)connections
{
  connectionsCopy = connections;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = self->_directConnections;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        supportsCloudConnections = self->_supportsCloudConnections;
        v11 = +[IDSDaemonPriorityQueueController sharedInstance];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10035F52C;
        v14[3] = &unk_100BD8F70;
        v12 = connectionsCopy;
        v14[4] = v9;
        v15 = v12;
        v16 = supportsCloudConnections;
        [v11 performBlockSYNCHRONOUSLYWithPriority:v14 priority:{objc_msgSend(v9, "priority")}];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

- (void)performBlock:(id)block priority:(int64_t)priority dataProtectionClass:(unsigned int)class
{
  blockCopy = block;
  if (self->_shouldUseIPsecLink)
  {
    if (class >= 3)
    {
      v10 = +[IDSFoundationLog UTunPeer];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        priorityCopy = class;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Sending message with unexpected data protection class (%d) - using C", buf, 8u);
      }

      v9 = 0;
    }

    else
    {
      v9 = dword_1009AB678[class];
    }
  }

  else
  {
    v9 = 3;
  }

  if (priority > 199)
  {
    if (priority == 300)
    {
LABEL_18:
      v11 = 56;
      goto LABEL_19;
    }

    if (priority == 200)
    {
      v11 = 64;
      goto LABEL_19;
    }

LABEL_15:
    v12 = +[IDSFoundationLog UTunPeer];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      priorityCopy = priority;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Priority is %d - defaulting to Urgent", buf, 8u);
    }

    goto LABEL_18;
  }

  if (priority)
  {
    if (priority == 100)
    {
      v11 = 72;
LABEL_19:
      v13 = *(&self->super.isa + v11);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10035F804;
      v14[3] = &unk_100BD8F98;
      v16 = v9;
      v15 = blockCopy;
      [v13 enumerateObjectsUsingBlock:v14];

      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v13 = +[IDSFoundationLog UTunPeer];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    sub_100917B6C(v13);
  }

LABEL_20:
}

- (void)setSupportsCloudConnections:(BOOL)connections
{
  connectionsCopy = connections;
  im_assert_primary_base_queue();
  if (self->_supportsCloudConnections != connectionsCopy)
  {
    self->_supportsCloudConnections = connectionsCopy;
    if (connectionsCopy && !self->_waitForDefaultPairedDevice)
    {

      [(IDSUTunPeer *)self enableCloudConnection];
    }
  }
}

- (void)setBtUUID:(id)d
{
  dCopy = d;
  im_assert_primary_base_queue();
  if (!dCopy || self->_isDefaultPairedDevice || [(NSString *)self->_btUUID isEqualToString:dCopy])
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      btUUID = self->_btUUID;
      *buf = 138412802;
      selfCopy = self;
      v27 = 2112;
      v28 = btUUID;
      v29 = 2112;
      v30 = dCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ ignoring btuuid update from %@ to %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  else
  {
    v7 = [dCopy copy];
    v8 = self->_btUUID;
    self->_btUUID = v7;

    v9 = v7;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    selfCopy2 = self;
    obj = self->_directConnections;
    v11 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v31 count:16];
    if (v11)
    {
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          supportsCloudConnections = selfCopy2->_supportsCloudConnections;
          v16 = +[IDSDaemonPriorityQueueController sharedInstance];
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_10035FBC0;
          v18[3] = &unk_100BD8FC0;
          v18[4] = v14;
          v19 = v9;
          v20 = supportsCloudConnections;
          [v16 performBlockWithPriority:v18 priority:{objc_msgSend(v14, "priority")}];
        }

        v11 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v31 count:16];
      }

      while (v11);
    }
  }
}

- (BOOL)sendAckForMessageWithSequenceNumber:(unsigned int)number priority:(int64_t)priority dataProtectionClass:(unsigned int)class connectionType:(int64_t)type
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10035FD00;
  v8[3] = &unk_100BD8FE8;
  v8[5] = priority;
  v8[6] = type;
  classCopy = class;
  numberCopy = number;
  v8[4] = &v11;
  [IDSUTunPeer performBlock:"performBlock:priority:dataProtectionClass:" priority:v8 dataProtectionClass:?];
  v6 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v6;
}

- (BOOL)hasSpaceForMessagesWithPriority:(int64_t)priority dataProtectionClass:(unsigned int)class messageType:(int64_t)type
{
  v6 = *&class;
  v9 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v9 assertRunningWithPriority:priority];

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100360010;
  v11[3] = &unk_100BD9010;
  v11[4] = &v13;
  v11[5] = type;
  v12 = v6;
  [(IDSUTunPeer *)self performBlock:v11 priority:priority dataProtectionClass:v6];
  LOBYTE(type) = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return type;
}

- (BOOL)isConnected
{
  im_assert_primary_base_queue();
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_directConnections;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        if (-[IDSUTunPeer isClassCConnected](self, "isClassCConnected", v17) || [v8 dataProtectionClass])
        {
          if (([v8 isRelayConnection] & 1) == 0 && (-[NSMutableDictionary objectForKeyedSubscript:](self->_connectedStates, "objectForKeyedSubscript:", v8), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "BOOLValue"), v9, !v10) || self->_supportsCloudConnections && (objc_msgSend(v8, "cloudConnection"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11) && (connectedStates = self->_connectedStates, objc_msgSend(v8, "cloudConnection"), v13 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKeyedSubscript:](connectedStates, "objectForKeyedSubscript:", v13), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "BOOLValue"), v14, v13, !v15))
          {

            return 0;
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  if (self->_isBTClassicAsserted)
  {
    self->_isBTClassicAsserted = 0;
    [(IDSUTunPeer *)self assertBTClassic:0];
  }

  return 1;
}

- (void)assertBTClassic:(BOOL)classic
{
  classicCopy = classic;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (classicCopy)
    {
      v5 = @"YES";
    }

    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "assertBTClassic: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v6 = @"NO";
    if (classicCopy)
    {
      v6 = @"YES";
    }

    v13 = v6;
    _IDSLogV();
  }

  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = v7;
  if (classicCopy)
  {
    v9 = &off_100C3BB48;
  }

  else
  {
    v9 = &off_100C3BB60;
  }

  [v7 setObject:v9 forKey:{@"PacketsPerSecond", v13}];
  if (classicCopy)
  {
    [v8 setObject:@"forceBTClassic" forKey:@"Intent"];
  }

  v10 = [NSDictionary dictionaryWithDictionary:v8];
  v11 = +[IDSLinkPreferencesManager sharedInstance];
  [v11 updateService:@"UTUNConnection-Setup" withPreferences:v10];

  v12 = +[IDSUTunDeliveryController sharedInstance];
  [v12 defaultPeerSetLinkPreferences:@"UTUNConnection-Setup"];
}

- (void)_addStatsFromDict:(id)dict toAggregate:(id)aggregate
{
  dictCopy = dict;
  aggregateCopy = aggregate;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [&off_100C3DB50 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(&off_100C3DB50);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [dictCopy objectForKey:v11];
        unsignedLongLongValue = [v12 unsignedLongLongValue];

        v14 = [aggregateCopy objectForKey:v11];
        unsignedLongLongValue2 = [v14 unsignedLongLongValue];

        v16 = [NSNumber numberWithUnsignedLongLong:&unsignedLongLongValue[unsignedLongLongValue2]];
        [aggregateCopy setObject:v16 forKey:v11];
      }

      v8 = [&off_100C3DB50 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

- (id)_copyStatisticsDict:(id)dict
{
  dictCopy = dict;
  v20 = objc_alloc_init(NSMutableDictionary);
  context = objc_autoreleasePoolPush();
  [dictCopy allKeys];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v30 = 0u;
  v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v21)
  {
    v19 = *v28;
    do
    {
      v4 = 0;
      do
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v4;
        v5 = *(*(&v27 + 1) + 8 * v4);
        v6 = objc_alloc_init(NSMutableDictionary);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v7 = [&off_100C3DB68 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v24;
          do
          {
            v10 = 0;
            do
            {
              if (*v24 != v9)
              {
                objc_enumerationMutation(&off_100C3DB68);
              }

              v11 = *(*(&v23 + 1) + 8 * v10);
              v12 = [dictCopy objectForKey:v5];
              v13 = [v12 objectForKey:v11];
              unsignedLongValue = [v13 unsignedLongValue];

              v15 = [NSNumber numberWithUnsignedLongLong:unsignedLongValue];
              [v6 setObject:v15 forKey:v11];

              v10 = v10 + 1;
            }

            while (v8 != v10);
            v8 = [&off_100C3DB68 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v8);
        }

        [v20 setObject:v6 forKey:v5];

        v4 = v22 + 1;
      }

      while ((v22 + 1) != v21);
      v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v21);
  }

  objc_autoreleasePoolPop(context);
  return v20;
}

- (NSDictionary)sendingMessageStatistics
{
  im_assert_primary_base_queue();
  v25 = objc_alloc_init(NSMutableDictionary);
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_10000A8C8;
  v45 = sub_10000BBE4;
  v46 = +[NSMutableArray array];
  context = objc_autoreleasePoolPush();
  v3 = +[IDSDaemonPriorityQueueController sharedInstance];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100360CF8;
  v40[3] = &unk_100BD9038;
  v40[4] = self;
  v40[5] = &v41;
  [v3 performBlockSYNCHRONOUSLYWithPriority:v40 priority:200];

  v4 = +[IDSDaemonPriorityQueueController sharedInstance];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100360E88;
  v39[3] = &unk_100BD9038;
  v39[4] = self;
  v39[5] = &v41;
  [v4 performBlockSYNCHRONOUSLYWithPriority:v39 priority:300];

  v5 = +[IDSDaemonPriorityQueueController sharedInstance];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100361018;
  v38[3] = &unk_100BD9038;
  v38[4] = self;
  v38[5] = &v41;
  [v5 performBlockSYNCHRONOUSLYWithPriority:v38 priority:100];

  v6 = +[NSMutableSet set];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = v42[5];
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v49 count:16];
  if (v8)
  {
    v9 = *v35;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v7);
        }

        allKeys = [*(*(&v34 + 1) + 8 * i) allKeys];
        [v6 addObjectsFromArray:allKeys];
      }

      v8 = [v7 countByEnumeratingWithState:&v34 objects:v49 count:16];
    }

    while (v8);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v6;
  v12 = [obj countByEnumeratingWithState:&v30 objects:v48 count:16];
  if (v12)
  {
    v24 = *v31;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v30 + 1) + 8 * j);
        v15 = objc_alloc_init(NSMutableDictionary);
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v16 = v42[5];
        v17 = [v16 countByEnumeratingWithState:&v26 objects:v47 count:16];
        if (v17)
        {
          v18 = *v27;
          do
          {
            for (k = 0; k != v17; k = k + 1)
            {
              if (*v27 != v18)
              {
                objc_enumerationMutation(v16);
              }

              v20 = [*(*(&v26 + 1) + 8 * k) objectForKey:v14];
              [(IDSUTunPeer *)self _addStatsFromDict:v20 toAggregate:v15];
            }

            v17 = [v16 countByEnumeratingWithState:&v26 objects:v47 count:16];
          }

          while (v17);
        }

        [v25 setObject:v15 forKey:v14];
      }

      v12 = [obj countByEnumeratingWithState:&v30 objects:v48 count:16];
    }

    while (v12);
  }

  objc_autoreleasePoolPop(context);
  _Block_object_dispose(&v41, 8);

  return v25;
}

- (NSDictionary)syncPriorityMessageStatistics
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000A8C8;
  v11 = sub_10000BBE4;
  v12 = 0;
  v3 = +[IDSDaemonPriorityQueueController sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10036127C;
  v6[3] = &unk_100BD9060;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlockSYNCHRONOUSLYWithPriority:v6 priority:100];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSDictionary)defaultPriorityMessageStatistics
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000A8C8;
  v11 = sub_10000BBE4;
  v12 = 0;
  v3 = +[IDSDaemonPriorityQueueController sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100361430;
  v6[3] = &unk_100BD9060;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlockSYNCHRONOUSLYWithPriority:v6 priority:200];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSDictionary)urgentPriorityMessageStatistics
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000A8C8;
  v11 = sub_10000BBE4;
  v12 = 0;
  v3 = +[IDSDaemonPriorityQueueController sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003615E4;
  v6[3] = &unk_100BD9060;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlockSYNCHRONOUSLYWithPriority:v6 priority:300];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSDictionary)urgentCloudPriorityMessageStatistics
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000A8C8;
  v11 = sub_10000BBE4;
  v12 = 0;
  v3 = +[IDSDaemonPriorityQueueController sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100361798;
  v6[3] = &unk_100BD9060;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlockSYNCHRONOUSLYWithPriority:v6 priority:300];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)defaultCloudPriorityMessageStatistics
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000A8C8;
  v11 = sub_10000BBE4;
  v12 = 0;
  v3 = +[IDSDaemonPriorityQueueController sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10036195C;
  v6[3] = &unk_100BD9060;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlockSYNCHRONOUSLYWithPriority:v6 priority:200];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)_accumulateStats:(id)stats intoMessages:(unint64_t *)messages andBytes:(unint64_t *)bytes
{
  if (stats)
  {
    statsCopy = stats;
    v9 = [statsCopy objectForKey:@"localDeliveryQueueStatMessageCount"];
    v8 = [statsCopy objectForKey:@"localDeliveryQueueStatBytes"];

    if (messages && v9)
    {
      *messages += [v9 unsignedLongLongValue];
    }

    if (bytes && v8)
    {
      *bytes += [v8 unsignedLongLongValue];
    }
  }
}

- (id)_copyPowerlogDictionaryWithOutgoingStats:(id)stats incomingStats:(id)incomingStats
{
  statsCopy = stats;
  incomingStatsCopy = incomingStats;
  v8 = +[NSMutableSet set];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = statsCopy;
  v9 = [obj countByEnumeratingWithState:&v67 objects:v75 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v68;
    do
    {
      v12 = 0;
      do
      {
        if (*v68 != v11)
        {
          objc_enumerationMutation(obj);
        }

        allKeys = [*(*(&v67 + 1) + 8 * v12) allKeys];
        [v8 addObjectsFromArray:allKeys];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v67 objects:v75 count:16];
    }

    while (v10);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v45 = incomingStatsCopy;
  v14 = [v45 countByEnumeratingWithState:&v63 objects:v74 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v64;
    do
    {
      v17 = 0;
      do
      {
        if (*v64 != v16)
        {
          objc_enumerationMutation(v45);
        }

        allKeys2 = [*(*(&v63 + 1) + 8 * v17) allKeys];
        [v8 addObjectsFromArray:allKeys2];

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v45 countByEnumeratingWithState:&v63 objects:v74 count:16];
    }

    while (v15);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v42 = v8;
  v44 = [v42 countByEnumeratingWithState:&v59 objects:v73 count:16];
  Mutable = 0;
  if (v44)
  {
    v43 = *v60;
    do
    {
      v20 = 0;
      do
      {
        if (*v60 != v43)
        {
          objc_enumerationMutation(v42);
        }

        v21 = *(*(&v59 + 1) + 8 * v20);
        v57 = 0;
        v58 = 0;
        v55 = 0;
        v56 = 0;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v22 = obj;
        v23 = [v22 countByEnumeratingWithState:&v51 objects:v72 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v52;
          do
          {
            v26 = 0;
            do
            {
              if (*v52 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = [*(*(&v51 + 1) + 8 * v26) objectForKey:v21];
              [(IDSUTunPeer *)self _accumulateStats:v27 intoMessages:&v58 andBytes:&v57];

              v26 = v26 + 1;
            }

            while (v24 != v26);
            v24 = [v22 countByEnumeratingWithState:&v51 objects:v72 count:16];
          }

          while (v24);
        }

        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v28 = v45;
        v29 = [v28 countByEnumeratingWithState:&v47 objects:v71 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v48;
          do
          {
            v32 = 0;
            do
            {
              if (*v48 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v33 = [*(*(&v47 + 1) + 8 * v32) objectForKey:v21];
              [(IDSUTunPeer *)self _accumulateStats:v33 intoMessages:&v56 andBytes:&v55];

              v32 = v32 + 1;
            }

            while (v30 != v32);
            v30 = [v28 countByEnumeratingWithState:&v47 objects:v71 count:16];
          }

          while (v30);
        }

        if (!Mutable)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        }

        v34 = [NSDictionary alloc];
        v35 = [NSNumber numberWithUnsignedLongLong:v57];
        v36 = [NSNumber numberWithUnsignedLongLong:v58];
        v37 = [NSNumber numberWithUnsignedLongLong:v55];
        v38 = [NSNumber numberWithUnsignedLongLong:v56];
        v39 = [NSNumber numberWithUnsignedChar:[(IDSUTunPeer *)self linkType]];
        v40 = [v34 initWithObjectsAndKeys:{v35, @"IDSLocalOutgoingMessageBytes", v36, @"IDSLocalOutgoingMessages", v37, @"IDSLocalIncomingMessageBytes", v38, @"IDSLocalIncomingMessages", v39, @"IDSLocalLinkType", 0}];

        [(__CFDictionary *)Mutable setObject:v40 forKey:v21];
        v20 = v20 + 1;
      }

      while (v20 != v44);
      v44 = [v42 countByEnumeratingWithState:&v59 objects:v73 count:16];
    }

    while (v44);
  }

  return Mutable;
}

- (void)_powerlogDictionaryForPriority:(int64_t)priority
{
  v5 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v5 assertRunningWithPriority:priority];

  context = objc_autoreleasePoolPush();
  v6 = 72;
  if (priority == 200)
  {
    v6 = 64;
  }

  if (priority == 300)
  {
    v6 = 56;
  }

  v7 = *(&self->super.isa + v6);
  v8 = +[NSMutableArray array];
  v9 = +[NSMutableArray array];
  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_1003622EC;
  v28 = &unk_100BD9088;
  v10 = v8;
  v29 = v10;
  selfCopy = self;
  v11 = v9;
  v31 = v11;
  [v7 enumerateObjectsUsingBlock:&v25];
  v12 = [(IDSUTunPeer *)self _copyPowerlogDictionaryWithOutgoingStats:v10 incomingStats:v11];
  if (v12)
  {
    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v12 count];
      v15 = @"Sync";
      if (priority == 200)
      {
        v15 = @"Default";
      }

      *buf = 136315906;
      v33 = "[IDSUTunPeer _powerlogDictionaryForPriority:]";
      v36 = 2112;
      v34 = 2048;
      selfCopy2 = self;
      if (priority == 300)
      {
        v15 = @"URGENT";
      }

      v37 = v15;
      v38 = 2048;
      v39 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: self %p reporting stats for %@ %lu", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      if (priority == 200)
      {
        v16 = @"Default";
      }

      else
      {
        v16 = @"Sync";
      }

      if (priority == 300)
      {
        v17 = @"URGENT";
      }

      else
      {
        v17 = v16;
      }

      v22 = v17;
      v23 = [v12 count];
      v20 = "[IDSUTunPeer _powerlogDictionaryForPriority:]";
      selfCopy3 = self;
      _IDSLogV();
    }

    if (priority == 200)
    {
      v18 = @"Default";
    }

    else
    {
      v18 = @"Sync";
    }

    if (priority == 300)
    {
      v19 = @"URGENT";
    }

    else
    {
      v19 = v18;
    }

    [v12 setObject:v19 forKey:{@"IDSLocalStatisticsCategory", v20, selfCopy3, v22, v23, context, v25, v26, v27, v28, v29, selfCopy}];
    IDSPowerLogDictionary();
  }

  objc_autoreleasePoolPop(context);
}

- (void)_powerlogTransportStats
{
  [(IDSUTunPeer *)self _startPowerLogTimersForAllPriorities];
  v3 = [IMWeakReference weakRefWithObject:self];
  if (!self->_shouldUseIPsecLink)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_shouldUseIPsecLink)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Enabling power logging for sockets {_shouldUseIPsecLink: %@}", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v6 = im_primary_queue();
    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v6);
    powerLogTimerSockets = self->_powerLogTimerSockets;
    self->_powerLogTimerSockets = v7;

    v9 = self->_powerLogTimerSockets;
    if (v9)
    {
      v10 = dispatch_time(0, 60000000000);
      dispatch_source_set_timer(v9, v10, 0xDF8475800uLL, 0x3B9ACA00uLL);
      v11 = self->_powerLogTimerSockets;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10000C3EC;
      handler[3] = &unk_100BD6ED0;
      v13 = v3;
      dispatch_source_set_event_handler(v11, handler);
      dispatch_activate(self->_powerLogTimerSockets);
    }
  }
}

- (void)_startPowerLogTimersForAllPriorities
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v35 = "[IDSUTunPeer _startPowerLogTimersForAllPriorities]";
    v36 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: self %p Enabling power logging for transport stats", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v26 = "[IDSUTunPeer _startPowerLogTimersForAllPriorities]";
    selfCopy2 = self;
    _IDSLogV();
  }

  selfCopy2 = [IMWeakReference weakRefWithObject:self, v26, selfCopy2];
  v5 = +[IDSDaemonPriorityQueueController sharedInstance];
  v6 = [v5 queueForPriority:300];
  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v6);
  powerLogTimerUrgent = self->_powerLogTimerUrgent;
  self->_powerLogTimerUrgent = v7;

  v9 = self->_powerLogTimerUrgent;
  if (v9)
  {
    v10 = dispatch_time(0, 60000000000);
    dispatch_source_set_timer(v9, v10, 0xDF8475800uLL, 0x3B9ACA00uLL);
    v11 = self->_powerLogTimerUrgent;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000C3A4;
    handler[3] = &unk_100BD6ED0;
    v33 = selfCopy2;
    dispatch_source_set_event_handler(v11, handler);
    dispatch_activate(self->_powerLogTimerUrgent);
  }

  v12 = +[IDSDaemonPriorityQueueController sharedInstance];
  v13 = [v12 queueForPriority:200];
  v14 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v13);
  powerLogTimerDefault = self->_powerLogTimerDefault;
  self->_powerLogTimerDefault = v14;

  v16 = self->_powerLogTimerDefault;
  if (v16)
  {
    v17 = dispatch_time(0, 60000000000);
    dispatch_source_set_timer(v16, v17, 0xDF8475800uLL, 0x3B9ACA00uLL);
    v18 = self->_powerLogTimerDefault;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10000C35C;
    v30[3] = &unk_100BD6ED0;
    v31 = selfCopy2;
    dispatch_source_set_event_handler(v18, v30);
    dispatch_activate(self->_powerLogTimerDefault);
  }

  v19 = +[IDSDaemonPriorityQueueController sharedInstance];
  v20 = [v19 queueForPriority:100];
  v21 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v20);
  powerLogTimerSync = self->_powerLogTimerSync;
  self->_powerLogTimerSync = v21;

  v23 = self->_powerLogTimerSync;
  if (v23)
  {
    v24 = dispatch_time(0, 60000000000);
    dispatch_source_set_timer(v23, v24, 0xDF8475800uLL, 0x3B9ACA00uLL);
    v25 = self->_powerLogTimerSync;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10000FBD0;
    v28[3] = &unk_100BD6ED0;
    v29 = selfCopy2;
    dispatch_source_set_event_handler(v25, v28);
    dispatch_activate(self->_powerLogTimerSync);
  }
}

- (void)logCurrentTransportStatsAndResetTimers
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    selfCopy3 = "[IDSUTunPeer logCurrentTransportStatsAndResetTimers]";
    v32 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: self %p Will log the current transport stats and restart timers.", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v22 = "[IDSUTunPeer logCurrentTransportStatsAndResetTimers]";
    selfCopy2 = self;
    _IDSLogV();
  }

  v4 = [(IDSUTunPeer *)self _shouldLogTransportStats:v22];
  if (v4 && self->_shouldUseIPsecLink)
  {
    powerLogTimerUrgent = self->_powerLogTimerUrgent;
    if (powerLogTimerUrgent)
    {
      dispatch_source_cancel(powerLogTimerUrgent);
      v6 = self->_powerLogTimerUrgent;
      self->_powerLogTimerUrgent = 0;
    }

    powerLogTimerDefault = self->_powerLogTimerDefault;
    if (powerLogTimerDefault)
    {
      dispatch_source_cancel(powerLogTimerDefault);
      v8 = self->_powerLogTimerDefault;
      self->_powerLogTimerDefault = 0;
    }

    powerLogTimerSync = self->_powerLogTimerSync;
    if (powerLogTimerSync)
    {
      dispatch_source_cancel(powerLogTimerSync);
      v10 = self->_powerLogTimerSync;
      self->_powerLogTimerSync = 0;
    }

    v11 = [IMWeakReference weakRefWithObject:self];
    v12 = +[IDSDaemonPriorityQueueController sharedInstance];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100362EB8;
    v28[3] = &unk_100BD6ED0;
    v13 = v11;
    v29 = v13;
    [v12 performBlockUrgentPriority:v28];

    v14 = +[IDSDaemonPriorityQueueController sharedInstance];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100362F00;
    v26[3] = &unk_100BD6ED0;
    v15 = v13;
    v27 = v15;
    [v14 performBlockDefaultPriority:v26];

    v16 = +[IDSDaemonPriorityQueueController sharedInstance];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100362F48;
    v24[3] = &unk_100BD6ED0;
    v25 = v15;
    v17 = v15;
    [v16 performBlockSyncPriority:v24];

    [(IDSUTunPeer *)self _startPowerLogTimersForAllPriorities];
  }

  else
  {
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = @"NO";
      shouldUseIPsecLink = self->_shouldUseIPsecLink;
      if (v4)
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      *buf = 138412802;
      selfCopy3 = self;
      v32 = 2112;
      if (shouldUseIPsecLink)
      {
        v19 = @"YES";
      }

      selfCopy = v21;
      v34 = 2112;
      v35 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@ logCurrentTransportStatsAndResetTimers shouldLog=%@, _shouldUseIPsecLink=%@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)setLocalSetupInProgress:(BOOL)progress
{
  if (self->_localSetupInProgress != progress)
  {
    progressCopy = progress;
    self->_localSetupInProgress = progress;
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (progressCopy)
      {
        v6 = @"YES";
      }

      *buf = 138412546;
      selfCopy = self;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "LOCALSETUP: %@ has been told to localSetupInProgress %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }
}

- (void)enableConnection
{
  im_assert_primary_base_queue();
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = self->_uniqueID;
    *buf = 138412290;
    v7 = uniqueID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "enableConnection for peer %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v5 = self->_uniqueID;
    _IDSLogV();
  }

  if (self->_isDefaultPairedDevice)
  {
    self->_waitForDefaultPairedDevice = 0;
    [(IDSUTunPeer *)self assertBTClassic:1];
    self->_isBTClassicAsserted = 1;
  }

  [(IDSUTunPeer *)self performBlockForAllConnections:&stru_100BD90C8, v5];
}

- (void)enableCloudConnection
{
  im_assert_primary_base_queue();
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = self->_uniqueID;
    *buf = 138412290;
    v19 = uniqueID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "enableCloudConnection for peer %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v10 = self->_uniqueID;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v10 = self->_uniqueID;
        _IDSLogV();
      }
    }
  }

  if (self->_supportsCloudConnections)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    obj = self->_directConnections;
    v5 = [(NSArray *)obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = *v14;
      do
      {
        v7 = 0;
        do
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v13 + 1) + 8 * v7);
          v9 = +[IDSDaemonPriorityQueueController sharedInstance];
          v12[0] = _NSConcreteStackBlock;
          v12[1] = 3221225472;
          v12[2] = sub_1003634E4;
          v12[3] = &unk_100BD6ED0;
          v12[4] = v8;
          [v9 performBlockWithPriority:v12 priority:{objc_msgSend(v8, "priority")}];

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [(NSArray *)obj countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }
  }
}

- (void)disableConnectionForReason:(int64_t)reason shouldWait:(BOOL)wait
{
  waitCopy = wait;
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = +[NSThread callStackSymbols];
    *buf = 138412290;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "disabling connection %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v11 = +[NSThread callStackSymbols];
    _IDSLogV();
  }

  im_assert_primary_base_queue();
  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = self->_uniqueID;
    *buf = 138412802;
    v15 = uniqueID;
    v16 = 2048;
    selfCopy = self;
    v18 = 2048;
    reasonCopy = reason;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "disable Connection for peer %@:%p withReason %ld", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if (self->_isDefaultPairedDevice)
  {
    self->_waitForDefaultPairedDevice = 1;
  }

  if (waitCopy)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100363954;
    v13[3] = &unk_100BD90E8;
    v13[4] = reason;
    [(IDSUTunPeer *)self performBlockSynchronouslyForAllConnections:v13];
  }

  else
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100363AAC;
    v12[3] = &unk_100BD90E8;
    v12[4] = reason;
    [(IDSUTunPeer *)self performBlockForAllConnections:v12];
  }
}

- (void)disableCloudConnectionForReason:(int64_t)reason
{
  im_assert_primary_base_queue();
  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = self->_uniqueID;
    *buf = 138412802;
    v23 = uniqueID;
    v24 = 2048;
    selfCopy = self;
    v26 = 2048;
    reasonCopy = reason;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "disable cloud connection for peer %@:%p withReason %ld", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      selfCopy3 = self;
      reasonCopy3 = reason;
      v11 = self->_uniqueID;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        selfCopy3 = self;
        reasonCopy3 = reason;
        v11 = self->_uniqueID;
        _IDSLogV();
      }
    }
  }

  if (self->_supportsCloudConnections)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = self->_directConnections;
    v6 = [(NSArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = *v18;
      do
      {
        v8 = 0;
        do
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v17 + 1) + 8 * v8);
          v10 = [IDSDaemonPriorityQueueController sharedInstance:v11];
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_100363EB8;
          v16[3] = &unk_100BD7978;
          v16[4] = v9;
          v16[5] = reason;
          [v10 performBlockWithPriority:v16 priority:{objc_msgSend(v9, "priority")}];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [(NSArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }
  }
}

- (void)setEnableOTR:(BOOL)r
{
  im_assert_primary_base_queue();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100363FAC;
  v5[3] = &unk_100BD9108;
  rCopy = r;
  [(IDSUTunPeer *)self performBlockForAllConnections:v5];
}

- (void)setIsMagnetIndicatingPeerIsAwake:(BOOL)awake
{
  awakeCopy = awake;
  im_assert_primary_base_queue();
  if (self->_isMagnetIndicatingPeerIsAwake != awakeCopy)
  {
    self->_isMagnetIndicatingPeerIsAwake = awakeCopy;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10036404C;
    v5[3] = &unk_100BD9108;
    v6 = awakeCopy;
    [(IDSUTunPeer *)self performBlockForAllConnections:v5];
  }
}

- (void)_powerLogServices:(id)services prefersInfraWifi:(BOOL)wifi
{
  wifiCopy = wifi;
  value = services;
  v6 = [value count];
  v7 = @"Client Request";
  if (!v6)
  {
    v7 = @"Idle Remove";
  }

  v8 = v7;
  v9 = self->_servicesPreferringInfraWiFi;
  if (!v9)
  {
    v9 = objc_alloc_init(NSMutableSet);
  }

  v10 = objc_alloc_init(NSMutableDictionary);
  v11 = v10;
  if (v9)
  {
    CFDictionarySetValue(v10, @"IDSServicePrefersInfraWifi", v9);
  }

  CFDictionarySetValue(v11, @"Reason", v8);
  v12 = [NSNumber numberWithBool:wifiCopy];
  if (v12)
  {
    CFDictionarySetValue(v11, @"InfraWiFiState", v12);
  }

  if ([value count] && value)
  {
    CFDictionarySetValue(v11, @"Services", value);
  }

  IDSPowerLogDictionary();
}

- (void)_checkServicesPreferringInfraWiFi:(unsigned int)fi
{
  v3 = *&fi;
  im_assert_primary_base_queue();
  v55 = v3;
  if (self->_dispatchCounterInfraWiFi == v3)
  {
    v5 = +[IDSUTunController sharedInstance];
    copyLinkStatsDict = [v5 copyLinkStatsDict];

    v7 = [copyLinkStatsDict objectForKey:@"InfraWiFi"];
    v8 = [v7 objectForKey:@"packetsReceived"];
    unsignedLongLongValue = [v8 unsignedLongLongValue];

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = self->_servicesPreferringInfraWiFi;
    v57 = [(NSMutableSet *)obj countByEnumeratingWithState:&v60 objects:v78 count:16];
    if (v57)
    {
      v9 = 0;
      v56 = *v61;
      do
      {
        for (i = 0; i != v57; i = i + 1)
        {
          if (*v61 != v56)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v60 + 1) + 8 * i);
          v12 = [(IDSUTunPeer *)self syncPriorityMessageStatistics:v46];
          v13 = [v12 objectForKey:v11];
          v14 = [v13 objectForKey:@"localDeliveryQueueStatDeliveredMessageCount"];
          unsignedLongLongValue2 = [v14 unsignedLongLongValue];

          defaultPriorityMessageStatistics = [(IDSUTunPeer *)self defaultPriorityMessageStatistics];
          v17 = [defaultPriorityMessageStatistics objectForKey:v11];
          v18 = [v17 objectForKey:@"localDeliveryQueueStatDeliveredMessageCount"];
          unsignedLongLongValue3 = [v18 unsignedLongLongValue];

          urgentPriorityMessageStatistics = [(IDSUTunPeer *)self urgentPriorityMessageStatistics];
          v21 = [urgentPriorityMessageStatistics objectForKey:v11];
          v22 = [v21 objectForKey:@"localDeliveryQueueStatDeliveredMessageCount"];
          unsignedLongLongValue4 = [v22 unsignedLongLongValue];

          v24 = &unsignedLongLongValue2[unsignedLongLongValue3 + unsignedLongLongValue4];
          if (self->_supportsCloudConnections)
          {
            urgentCloudPriorityMessageStatistics = [(IDSUTunPeer *)self urgentCloudPriorityMessageStatistics];
            v26 = [urgentCloudPriorityMessageStatistics objectForKey:v11];
            v27 = [v26 objectForKey:@"localDeliveryQueueStatDeliveredMessageCount"];
            unsignedLongLongValue5 = [v27 unsignedLongLongValue];

            v24 = &v24[unsignedLongLongValue5];
            if (self->_supportsCloudConnections)
            {
              defaultCloudPriorityMessageStatistics = [(IDSUTunPeer *)self defaultCloudPriorityMessageStatistics];
              v30 = [defaultCloudPriorityMessageStatistics objectForKey:v11];
              v31 = [v30 objectForKey:@"localDeliveryQueueStatDeliveredMessageCount"];
              unsignedLongLongValue6 = [v31 unsignedLongLongValue];

              v24 = &v24[unsignedLongLongValue6];
            }
          }

          v33 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109634;
            v65 = v55;
            v66 = 2112;
            v67 = v11;
            v68 = 2048;
            v69 = v24;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "_checkServicesPreferringInfraWiFi %u: Service %@ has %llu delivered messages", buf, 0x1Cu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v47 = v11;
              v48 = v24;
              v46 = v55;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v47 = v11;
                v48 = v24;
                v46 = v55;
                _IDSLogV();
              }
            }
          }

          v9 += v24;
        }

        v57 = [(NSMutableSet *)obj countByEnumeratingWithState:&v60 objects:v78 count:16];
      }

      while (v57);
    }

    else
    {
      v9 = 0;
    }

    v34 = +[IDSUTunController sharedInstance];
    v35 = [v34 totalPacketsReceivedForDevice:kIDSDefaultPairedDeviceID services:self->_servicesPreferringInfraWiFi];

    v36 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      totalPacketsReceivedInfraWiFi = self->_totalPacketsReceivedInfraWiFi;
      totalPacketsReceivedClientSockets = self->_totalPacketsReceivedClientSockets;
      totalDeliveredMessagesInfraWiFi = self->_totalDeliveredMessagesInfraWiFi;
      *buf = 67110656;
      v65 = v55;
      v66 = 2048;
      v67 = totalPacketsReceivedInfraWiFi;
      v68 = 2048;
      v69 = unsignedLongLongValue;
      v70 = 2048;
      v71 = totalPacketsReceivedClientSockets;
      v72 = 2048;
      v73 = v35;
      v74 = 2048;
      v75 = totalDeliveredMessagesInfraWiFi;
      v76 = 2048;
      v77 = v9;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "_checkServicesPreferringInfraWiFi %u: InfraWiFi received %llu -> %llu packets. Client sockets received %llu -> %llu packets. Total delivered %llu -> %llu", buf, 0x44u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v51 = self->_totalDeliveredMessagesInfraWiFi;
        v52 = v9;
        v49 = self->_totalPacketsReceivedClientSockets;
        v50 = v35;
        v47 = self->_totalPacketsReceivedInfraWiFi;
        v48 = unsignedLongLongValue;
        v46 = v55;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v51 = self->_totalDeliveredMessagesInfraWiFi;
          v52 = v9;
          v49 = self->_totalPacketsReceivedClientSockets;
          v50 = v35;
          v47 = self->_totalPacketsReceivedInfraWiFi;
          v48 = unsignedLongLongValue;
          v46 = v55;
          _IDSLogV();
        }
      }
    }

    if (v9 == self->_totalDeliveredMessagesInfraWiFi && v35 == self->_totalPacketsReceivedClientSockets && unsignedLongLongValue == self->_totalPacketsReceivedInfraWiFi)
    {
      v40 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v65 = v55;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "_checkServicesPreferringInfraWiFi %u: No message delivered and no client socket packet received for services preferring InfraWiFi - disabling it now", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v46 = v55;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v46 = v55;
            _IDSLogV();
          }
        }
      }

      servicesPreferringInfraWiFi = self->_servicesPreferringInfraWiFi;
      if (servicesPreferringInfraWiFi)
      {
        [(NSMutableSet *)servicesPreferringInfraWiFi removeAllObjects];
        if (![(NSMutableSet *)self->_servicesPreferringInfraWiFi count])
        {
          v42 = self->_servicesPreferringInfraWiFi;
          self->_servicesPreferringInfraWiFi = 0;
        }

        [(IDSUTunPeer *)self _powerLogServices:0 prefersInfraWifi:0, v46, v47, v48, v49, v50, v51, v52];
      }

      v43 = +[IDSUTunController sharedInstance];
      [v43 setPreferInfraWiFi:0];
    }

    else
    {
      self->_totalDeliveredMessagesInfraWiFi = v9;
      self->_totalPacketsReceivedInfraWiFi = unsignedLongLongValue;
      self->_totalPacketsReceivedClientSockets = v35;
      v44 = dispatch_time(0, 90000000000);
      v45 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10036495C;
      block[3] = &unk_100BD89B0;
      block[4] = self;
      v59 = v55;
      dispatch_after(v44, v45, block);
    }
  }
}

- (void)setPreferInfraWiFi:(BOOL)fi services:(id)services
{
  fiCopy = fi;
  servicesCopy = services;
  im_assert_primary_base_queue();
  if (self->_isDefaultPairedDevice && [servicesCopy count])
  {
    if (self->_localSetupInProgress)
    {
      v7 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = servicesCopy;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Local Setup is not complete yet - ignore preferInfraWiFi for %@", buf, 0xCu);
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
      v8 = [[NSMutableSet alloc] initWithSet:self->_servicesPreferringInfraWiFi];
      if (fiCopy)
      {
        servicesPreferringInfraWiFi = self->_servicesPreferringInfraWiFi;
        if (!servicesPreferringInfraWiFi)
        {
          v10 = objc_alloc_init(NSMutableSet);
          v11 = self->_servicesPreferringInfraWiFi;
          self->_servicesPreferringInfraWiFi = v10;

          servicesPreferringInfraWiFi = self->_servicesPreferringInfraWiFi;
        }

        [(NSMutableSet *)servicesPreferringInfraWiFi addObjectsFromArray:servicesCopy];
        v12 = +[IDSUTunController sharedInstance];
        [v12 setPreferInfraWiFi:1];

        v13 = self->_dispatchCounterInfraWiFi + 1;
        self->_dispatchCounterInfraWiFi = v13;
        v14 = dispatch_time(0, 90000000000);
        v15 = im_primary_queue();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100364CE8;
        block[3] = &unk_100BD89B0;
        block[4] = self;
        v27 = v13;
        dispatch_after(v14, v15, block);
      }

      else
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v16 = servicesCopy;
        v17 = [v16 countByEnumeratingWithState:&v22 objects:v28 count:16];
        if (v17)
        {
          v18 = *v23;
          do
          {
            v19 = 0;
            do
            {
              if (*v23 != v18)
              {
                objc_enumerationMutation(v16);
              }

              [(NSMutableSet *)self->_servicesPreferringInfraWiFi removeObject:*(*(&v22 + 1) + 8 * v19)];
              v19 = v19 + 1;
            }

            while (v17 != v19);
            v17 = [v16 countByEnumeratingWithState:&v22 objects:v28 count:16];
          }

          while (v17);
        }

        if (![(NSMutableSet *)self->_servicesPreferringInfraWiFi count])
        {
          v20 = self->_servicesPreferringInfraWiFi;
          self->_servicesPreferringInfraWiFi = 0;
        }

        if (!self->_servicesPreferringInfraWiFi)
        {
          v21 = +[IDSUTunController sharedInstance];
          [v21 setPreferInfraWiFi:0];

          ++self->_dispatchCounterInfraWiFi;
        }
      }

      if (([(NSMutableSet *)self->_servicesPreferringInfraWiFi isEqualToSet:v8]& 1) == 0)
      {
        [(IDSUTunPeer *)self _powerLogServices:servicesCopy prefersInfraWifi:fiCopy];
      }
    }
  }
}

- (void)setLinkPreferences:(id)preferences
{
  preferencesCopy = preferences;
  im_assert_primary_base_queue();
  if (preferencesCopy && self->_isDefaultPairedDevice)
  {
    if (self->_localSetupInProgress)
    {
      v5 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v8 = preferencesCopy;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Local Setup is not complete yet - ignore setLinkPreferences for %{public}@", buf, 0xCu);
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
      v6 = +[IDSUTunController sharedInstance];
      [v6 setLinkPreferences:preferencesCopy];
    }
  }
}

- (void)setIsConnected:(BOOL)connected
{
  connectedCopy = connected;
  im_assert_primary_base_queue();
  if (self->_isConnected != connectedCopy)
  {
    self->_isConnected = connectedCopy;
    if (connectedCopy)
    {

      [(IDSUTunPeer *)self performBlockForAllConnections:&stru_100BD9128];
    }
  }
}

- (void)unpairStart
{
  im_assert_primary_base_queue();
  [(IDSUTunPeer *)self setLocalSetupInProgress:1];
  if ([(NSMutableSet *)self->_servicesPreferringInfraWiFi count])
  {
    servicesPreferringInfraWiFi = self->_servicesPreferringInfraWiFi;
    self->_servicesPreferringInfraWiFi = 0;

    v4 = +[IDSUTunController sharedInstance];
    [v4 setPreferInfraWiFi:0];
  }

  ++self->_dispatchCounterInfraWiFi;
}

- (void)dropDisallowedMessages
{
  im_assert_primary_base_queue();

  [(IDSUTunPeer *)self performBlockForAllConnections:&stru_100BD9148];
}

- (void)trafficClassesChanged
{
  im_assert_primary_base_queue();

  [(IDSUTunPeer *)self performBlockForAllConnections:&stru_100BD9168];
}

- (void)clearStats
{
  im_assert_primary_base_queue();
  [(IDSUTunPeer *)self performBlockForAllConnections:&stru_100BD9188];
  v3 = +[IDSUTunController sharedInstance];
  [v3 clearStats];
}

- (void)cancelMessageID:(id)d
{
  dCopy = d;
  im_assert_primary_base_queue();
  if ([dCopy length])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1003650F4;
    v5[3] = &unk_100BD91B0;
    v6 = dCopy;
    [(IDSUTunPeer *)self performBlockForAllConnections:v5];
  }
}

- (void)kickProgressBlockForMessageID:(id)d
{
  dCopy = d;
  im_assert_primary_base_queue();
  if ([dCopy length])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1003651A4;
    v5[3] = &unk_100BD91B0;
    v6 = dCopy;
    [(IDSUTunPeer *)self performBlockForAllConnections:v5];
  }
}

- (void)sendMessage:(id)message priority:(int64_t)priority messageType:(int64_t)type
{
  messageCopy = message;
  v28 = _os_activity_create(&_mh_execute_header, "UTUNPeer sendMessage", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v28, &state);
  v9 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v9 assertRunningWithPriority:priority];

  if (messageCopy)
  {
    v10 = -[IDSUTunPeer _connectionForPriority:messageType:dataProtectionClass:](self, "_connectionForPriority:messageType:dataProtectionClass:", priority, type, [messageCopy dataProtectionClass]);
    v11 = v10;
    if (!self->_waitForDefaultPairedDevice)
    {
      [v10 setEnabled:1];
    }

    os_unfair_lock_lock(&self->_emptyStatesLock);
    [(NSMutableDictionary *)self->_emptyStates setObject:&__kCFBooleanFalse forKeyedSubscript:v11];
    os_unfair_lock_unlock(&self->_emptyStatesLock);
    if ([messageCopy requireBluetooth] && !self->_isNearby)
    {
      v14 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        messageUUID = [messageCopy messageUUID];
        *buf = 138412290;
        v30 = messageUUID;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Bluetooth is required but we are not nearby - failing message %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          messageUUID2 = [messageCopy messageUUID];
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            messageUUID2 = [messageCopy messageUUID];
            _IDSLogV();
          }
        }
      }

      completionBlock = [messageCopy completionBlock];
      if (!completionBlock)
      {
        goto LABEL_26;
      }

      toDeviceID = [messageCopy toDeviceID];
      v18 = +[IDSDaemonPriorityQueueController sharedInstance];
      v19 = v26;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10036575C;
      v26[3] = &unk_100BD8CB0;
      v26[4] = v11;
      v20 = toDeviceID;
      v26[5] = v20;
      completionBlock = completionBlock;
      v26[6] = completionBlock;
      [v18 performBlockMainQueue:v26];
    }

    else
    {
      if (![messageCopy requireLocalWiFi] || (-[IDSUTunPeer rapportClient](self, "rapportClient"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isDeviceDiscovered:", self->_uniqueID), v12, (v13 & 1) != 0))
      {
        [v11 sendMessage:messageCopy];
        [v11 resumeConnectivity];
LABEL_27:

        goto LABEL_28;
      }

      v21 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        messageUUID3 = [messageCopy messageUUID];
        *buf = 138412290;
        v30 = messageUUID3;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Local WiFi is required but we are not discovered by Rapport - failing message %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          messageUUID2 = [messageCopy messageUUID];
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            messageUUID2 = [messageCopy messageUUID];
            _IDSLogV();
          }
        }
      }

      completionBlock = [messageCopy completionBlock];
      if (!completionBlock)
      {
LABEL_26:

        goto LABEL_27;
      }

      toDeviceID2 = [messageCopy toDeviceID];
      v18 = +[IDSDaemonPriorityQueueController sharedInstance];
      v19 = v25;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100365868;
      v25[3] = &unk_100BD8CB0;
      v25[4] = v11;
      v20 = toDeviceID2;
      v25[5] = v20;
      completionBlock = completionBlock;
      v25[6] = completionBlock;
      [v18 performBlockMainQueue:v25];
    }

    goto LABEL_26;
  }

LABEL_28:
  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (id)_connectionForPriority:(int64_t)priority messageType:(int64_t)type dataProtectionClass:(unsigned int)class
{
  v5 = *&class;
  v8 = priority != 100 && [(IDSUTunPeer *)self _messageTypeSupportedForCloudConnection:type]&& self->_supportsCloudConnections;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10000A8C8;
  v17 = sub_10000BBE4;
  v18 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100365ACC;
  v11[3] = &unk_100BD91D8;
  v12 = v8;
  v11[4] = &v13;
  [(IDSUTunPeer *)self performBlock:v11 priority:priority dataProtectionClass:v5];
  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v9;
}

- (int64_t)_connectionTypeForConnection:(id)connection
{
  if ([connection isCloudEnabled])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)connection:(id)connection connectivityChanged:(BOOL)changed
{
  changedCopy = changed;
  connectionCopy = connection;
  v7 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v7 assertRunningWithPriority:{objc_msgSend(connectionCopy, "idsPriority")}];

  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [connectionCopy identifier];
    v10 = identifier;
    v11 = @"NO";
    *buf = 138413058;
    selfCopy = self;
    if (changedCopy)
    {
      v11 = @"YES";
    }

    v26 = 2112;
    v27 = connectionCopy;
    v28 = 2112;
    v29 = identifier;
    v30 = 2112;
    v31 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ %@ %@ isConnected changed to %@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    identifier2 = [connectionCopy identifier];
    v13 = identifier2;
    v14 = @"NO";
    if (changedCopy)
    {
      v14 = @"YES";
    }

    v19 = identifier2;
    v20 = v14;
    selfCopy2 = self;
    v18 = connectionCopy;
    _IDSLogV();
  }

  v15 = [IDSDaemonPriorityQueueController sharedInstance:selfCopy2];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100365DD8;
  v21[3] = &unk_100BD8FC0;
  v21[4] = self;
  v22 = connectionCopy;
  v23 = changedCopy;
  v16 = connectionCopy;
  [v15 performBlockMainQueue:v21];
}

- (void)connection:(id)connection protobufReceived:(id)received topic:(id)topic command:(id)command fromID:(id)d messageID:(id)iD wantsAppAck:(BOOL)ack expectsPeerResponse:(BOOL)self0 peerResponseIdentifier:(id)self1 messageUUID:(id)self2 isCompressed:(BOOL)self3 didWakeHint:(BOOL)self4
{
  uIDCopy = uID;
  identifierCopy = identifier;
  iDCopy = iD;
  dCopy = d;
  commandCopy = command;
  topicCopy = topic;
  receivedCopy = received;
  connectionCopy = connection;
  v28 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v28 assertRunningWithPriority:{-[IDSUTunPeer _priorityForConnection:](self, "_priorityForConnection:", connectionCopy)}];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v29 = [(IDSUTunPeer *)self _priorityForConnection:connectionCopy];
  v30 = [(IDSUTunPeer *)self _connectionTypeForConnection:connectionCopy];

  LOBYTE(v33) = hint;
  LOBYTE(v32) = compressed;
  LOWORD(v31) = __PAIR16__(response, ack);
  [WeakRetained peer:self protobufReceived:receivedCopy topic:topicCopy command:commandCopy fromID:dCopy messageID:iDCopy wantsAppAck:v31 expectsPeerResponse:identifierCopy peerResponseIdentifier:uIDCopy messageUUID:v29 priority:v32 isCompressed:v30 connectionType:v33 didWakeHint:?];
}

- (void)connection:(id)connection dataReceived:(id)received topic:(id)topic command:(id)command fromID:(id)d messageID:(id)iD wantsAppAck:(BOOL)ack expectsPeerResponse:(BOOL)self0 peerResponseIdentifier:(id)self1 messageUUID:(id)self2 isCompressed:(BOOL)self3 didWakeHint:(BOOL)self4
{
  uIDCopy = uID;
  identifierCopy = identifier;
  iDCopy = iD;
  dCopy = d;
  commandCopy = command;
  topicCopy = topic;
  receivedCopy = received;
  connectionCopy = connection;
  v28 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v28 assertRunningWithPriority:{-[IDSUTunPeer _priorityForConnection:](self, "_priorityForConnection:", connectionCopy)}];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v29 = [(IDSUTunPeer *)self _priorityForConnection:connectionCopy];
  v30 = [(IDSUTunPeer *)self _connectionTypeForConnection:connectionCopy];

  LOBYTE(v33) = hint;
  LOBYTE(v32) = compressed;
  LOWORD(v31) = __PAIR16__(response, ack);
  [WeakRetained peer:self dataReceived:receivedCopy topic:topicCopy command:commandCopy fromID:dCopy messageID:iDCopy wantsAppAck:v31 expectsPeerResponse:identifierCopy peerResponseIdentifier:uIDCopy messageUUID:v29 priority:v32 isCompressed:v30 connectionType:v33 didWakeHint:?];
}

- (void)connection:(id)connection messageReceived:(id)received topic:(id)topic command:(id)command fromID:(id)d messageID:(id)iD wantsAppAck:(BOOL)ack expectsPeerResponse:(BOOL)self0 peerResponseIdentifier:(id)self1 messageUUID:(id)self2 isCompressed:(BOOL)self3 didWakeHint:(BOOL)self4
{
  uIDCopy = uID;
  identifierCopy = identifier;
  iDCopy = iD;
  dCopy = d;
  commandCopy = command;
  topicCopy = topic;
  receivedCopy = received;
  connectionCopy = connection;
  v28 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v28 assertRunningWithPriority:{-[IDSUTunPeer _priorityForConnection:](self, "_priorityForConnection:", connectionCopy)}];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v29 = [(IDSUTunPeer *)self _priorityForConnection:connectionCopy];
  v30 = [(IDSUTunPeer *)self _connectionTypeForConnection:connectionCopy];

  LOBYTE(v33) = hint;
  LOBYTE(v32) = compressed;
  LOWORD(v31) = __PAIR16__(response, ack);
  [WeakRetained peer:self messageReceived:receivedCopy topic:topicCopy command:commandCopy fromID:dCopy messageID:iDCopy wantsAppAck:v31 expectsPeerResponse:identifierCopy peerResponseIdentifier:uIDCopy messageUUID:v29 priority:v32 isCompressed:v30 connectionType:v33 didWakeHint:?];
}

- (void)connection:(id)connection receivedAppLevelAckWithTopic:(id)topic fromID:(id)d messageID:(id)iD peerResponseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  iDCopy = iD;
  dCopy = d;
  topicCopy = topic;
  connectionCopy = connection;
  v17 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v17 assertRunningWithPriority:{-[IDSUTunPeer _priorityForConnection:](self, "_priorityForConnection:", connectionCopy)}];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v18 = [(IDSUTunPeer *)self _priorityForConnection:connectionCopy];
  v19 = [(IDSUTunPeer *)self _connectionTypeForConnection:connectionCopy];

  [WeakRetained peer:self receivedAppLevelAckWithTopic:topicCopy fromID:dCopy messageID:iDCopy peerResponseIdentifier:identifierCopy priority:v18 connectionType:v19];
}

- (void)connectionHasSpaceForMessages:(id)messages dataProtectionClass:(unsigned int)class
{
  v4 = *&class;
  messagesCopy = messages;
  im_assert_primary_base_queue();
  idsPriority = [messagesCopy idsPriority];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (idsPriority == 300)
  {
    supportedMessageTypes = [messagesCopy supportedMessageTypes];
    [WeakRetained peerHasSpaceForUrgentMessages:self dataProtectionClass:v4 withTypes:supportedMessageTypes];
  }

  else
  {
    idsPriority2 = [messagesCopy idsPriority];
    supportedMessageTypes = [messagesCopy supportedMessageTypes];
    [WeakRetained peerHasSpaceForNonUrgentMessages:self priority:idsPriority2 dataProtectionClass:v4 withTypes:supportedMessageTypes];
  }
}

- (void)setPendingCloudEnable:(BOOL)enable
{
  self->_pendingCloudEnable = 1;
  if (!self->_supportsCloudConnections)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100366718;
    v3[3] = &unk_100BD91B0;
    v3[4] = self;
    [(IDSUTunPeer *)self performBlockForDirectConnections:v3];
  }
}

- (void)connectionIsEmpty:(id)empty
{
  emptyCopy = empty;
  os_unfair_lock_lock(&self->_emptyStatesLock);
  [(NSMutableDictionary *)self->_emptyStates setObject:&__kCFBooleanTrue forKeyedSubscript:emptyCopy];
  os_unfair_lock_unlock(&self->_emptyStatesLock);
  if (self->_pendingCloudEnable && !self->_supportsCloudConnections)
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if ([emptyCopy idsPriority] == 300)
      {
        v6 = @"URGENT";
      }

      else
      {
        idsPriority = [emptyCopy idsPriority];
        v6 = @"Sync";
        if (idsPriority == 200)
        {
          v6 = @"Default";
        }
      }

      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Enabling %@ Cloud Connections on this peer", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      if ([emptyCopy idsPriority] == 300)
      {
        v8 = @"URGENT";
      }

      else
      {
        idsPriority2 = [emptyCopy idsPriority];
        v8 = @"Sync";
        if (idsPriority2 == 200)
        {
          v8 = @"Default";
        }
      }

      v12 = v8;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        if ([emptyCopy idsPriority] == 300)
        {
          v10 = @"URGENT";
        }

        else
        {
          idsPriority3 = [emptyCopy idsPriority];
          v10 = @"Sync";
          if (idsPriority3 == 200)
          {
            v10 = @"Default";
          }
        }

        v12 = v10;
        _IDSLogV();
      }
    }

    *&self->_supportsCloudConnections = 1;
    [(IDSUTunPeer *)self enableCloudConnection];
  }

  if (!self->_isPeerAlwaysConnected)
  {
    [(IDSUTunPeer *)self _startDisableTimerIfNecessary];
  }
}

- (void)connectionIsEmptyOfCloudMessages:(id)messages
{
  messagesCopy = messages;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (self->_pendingCloudEnable)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    isPeerAlwaysConnected = self->_isPeerAlwaysConnected;
    if (self->_supportsCloudConnections)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    *buf = 138412802;
    if (isPeerAlwaysConnected)
    {
      v6 = @"YES";
    }

    v27 = v7;
    v28 = 2112;
    v29 = v9;
    v30 = 2112;
    v31 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_pendingCloudEnable: %@, _supportsCloudConnections: %@, _isPeerAlwaysConnected: %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v10 = self->_pendingCloudEnable ? @"YES" : @"NO";
    v11 = self->_supportsCloudConnections ? @"YES" : @"NO";
    v12 = self->_isPeerAlwaysConnected ? @"YES" : @"NO";
    v24 = v11;
    v25 = v12;
    v23 = v10;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      if (self->_pendingCloudEnable)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      if (self->_supportsCloudConnections)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      if (self->_isPeerAlwaysConnected)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      v24 = v14;
      v25 = v15;
      v23 = v13;
      _IDSLogV();
    }
  }

  if (self->_pendingCloudEnable && !self->_supportsCloudConnections)
  {
    v16 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if ([messagesCopy idsPriority] == 300)
      {
        v17 = @"URGENT";
      }

      else
      {
        idsPriority = [messagesCopy idsPriority];
        v17 = @"Sync";
        if (idsPriority == 200)
        {
          v17 = @"Default";
        }
      }

      *buf = 138412290;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Enabling %@ Cloud Connections on this peer", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      if ([messagesCopy idsPriority] == 300)
      {
        v19 = @"URGENT";
      }

      else
      {
        idsPriority2 = [messagesCopy idsPriority];
        v19 = @"Sync";
        if (idsPriority2 == 200)
        {
          v19 = @"Default";
        }
      }

      v23 = v19;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        if ([messagesCopy idsPriority] == 300)
        {
          v21 = @"URGENT";
        }

        else
        {
          idsPriority3 = [messagesCopy idsPriority];
          v21 = @"Sync";
          if (idsPriority3 == 200)
          {
            v21 = @"Default";
          }
        }

        v23 = v21;
        _IDSLogV();
      }
    }

    *&self->_supportsCloudConnections = 1;
    [(IDSUTunPeer *)self enableCloudConnection:v23];
  }

  if (!self->_isPeerAlwaysConnected)
  {
    [(IDSUTunPeer *)self _startCloudDisableTimerIfNecessary];
  }
}

- (void)_handleCBUUIDDidConnect:(id)connect isDefaultPairedDevice:(BOOL)device isAlwaysConnected:(BOOL)connected
{
  connectedCopy = connected;
  connectCopy = connect;
  im_assert_primary_base_queue();
  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v21 = 2112;
    v22 = connectCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ LinkManager did connect cbuuid %@ - enabling connections", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      selfCopy3 = self;
      v16 = connectCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        selfCopy3 = self;
        v16 = connectCopy;
        _IDSLogV();
      }
    }
  }

  if (connectedCopy)
  {
    [(IDSUTunPeer *)self performBlockForAllConnections:&stru_100BD91F8];
  }

  if (!device)
  {
    v10 = +[IDSUTunDeliveryController sharedInstance];
    v11 = [v10 lockedContinuityPeerID:connectCopy];

    if (!v11)
    {
      ++self->_continuityConnectCount;
      v12 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        uniqueID = self->_uniqueID;
        continuityConnectCount = self->_continuityConnectCount;
        *buf = 138412546;
        selfCopy = uniqueID;
        v21 = 1024;
        LODWORD(v22) = continuityConnectCount;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "continuityConnectCount for peer %@ is changed to %d.", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        selfCopy3 = self->_uniqueID;
        v16 = self->_continuityConnectCount;
        _IDSLogV();
      }
    }
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1003670AC;
  v17[3] = &unk_100BD9108;
  deviceCopy = device;
  [(IDSUTunPeer *)self performBlockForAllConnections:v17, selfCopy3, v16];
  self->_isPeerAlwaysConnected = connectedCopy;
  if (!connectedCopy)
  {
    [(IDSUTunPeer *)self _clearDisableTimer];
    [(IDSUTunPeer *)self _startDisableTimerIfNecessary];
  }
}

- (void)manager:(id)manager cbuuidDidConnect:(id)connect isAlwaysConnected:(BOOL)connected
{
  connectedCopy = connected;
  managerCopy = manager;
  connectCopy = connect;
  im_assert_primary_base_queue();
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (connectedCopy)
    {
      v11 = @"YES";
    }

    *buf = 138412546;
    selfCopy = connectCopy;
    v39 = 2112;
    v40 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "manager:cbuuidDidConnect:%@ isAlwaysConnected:%@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = @"NO";
    if (connectedCopy)
    {
      v12 = @"YES";
    }

    v26 = connectCopy;
    v28 = v12;
    _IDSLogV();
  }

  v13 = [(NSString *)self->_uniqueID isEqualToString:IDSDeviceDefaultPairedDeviceUniqueID, v26, v28];
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v15 = +[IDSUTunDeliveryController sharedInstance];
    v14 = [v15 lockedContinuityPeerID:connectCopy];

    if (v14 && ([(IDSUTunPeer *)v14 isEqualToString:self->_uniqueID]& 1) == 0)
    {
      v20 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        uniqueID = self->_uniqueID;
        *buf = 138412802;
        selfCopy = v14;
        v39 = 2112;
        v40 = connectCopy;
        v41 = 2112;
        v42 = uniqueID;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Peer %@ is already locked for btUUID %@, ignore peer %@.", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            goto LABEL_24;
          }
        }
      }

      goto LABEL_41;
    }
  }

  if (connectCopy && [(NSString *)self->_btUUID isEqualToString:connectCopy])
  {
    if (v13 || v14)
    {
      v22 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = self->_uniqueID;
        v24 = @"NO";
        *buf = 138412802;
        if (v13)
        {
          v24 = @"YES";
        }

        selfCopy = v23;
        v39 = 2112;
        v40 = v24;
        v41 = 2112;
        v42 = v14;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Enable peer %@ now. (isDefaultPairedDevice %@   lockedPeer %@)", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v25 = @"NO";
        if (v13)
        {
          v25 = @"YES";
        }

        v29 = v25;
        v30 = v14;
        v27 = self->_uniqueID;
        _IDSLogV();
      }

      [(IDSUTunPeer *)self _handleCBUUIDDidConnect:connectCopy isDefaultPairedDevice:v13 isAlwaysConnected:connectedCopy, v27, v29, v30];
    }

    else
    {
      v16 = +[IDSUTunDeliveryController sharedInstance];
      v17 = self->_uniqueID;
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100367720;
      v33[3] = &unk_100BD9220;
      v33[4] = self;
      v34 = connectCopy;
      v35 = v13;
      v36 = connectedCopy;
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100367734;
      v31[3] = &unk_100BD6E40;
      v31[4] = self;
      v32 = v34;
      [v16 addContinuityPeer:v17 btUUID:v32 connectBlock:v33 failureBlock:v31];

      v14 = 0;
    }

    goto LABEL_41;
  }

  v18 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    btUUID = self->_btUUID;
    *buf = 138412802;
    selfCopy = self;
    v39 = 2112;
    v40 = connectCopy;
    v41 = 2112;
    v42 = btUUID;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "IGNORING %@ LinkManager did connect cbuuid %@ - enabling connections (%@)", buf, 0x20u);
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

LABEL_41:
}

- (void)_handleCBUUIDFailToConnect:(id)connect withReason:(id)reason
{
  connectCopy = connect;
  reasonCopy = reason;
  im_assert_primary_base_queue();
  if (connectCopy && [(NSString *)self->_btUUID isEqualToString:connectCopy])
  {
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = connectCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "cbuuidDidFailToConnect for peer %@, disabling peer connections!", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v9 = connectCopy;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v9 = connectCopy;
          _IDSLogV();
        }
      }
    }

    [(IDSUTunPeer *)self _clearDisableTimer];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100367914;
    v10[3] = &unk_100BD91B0;
    v11 = reasonCopy;
    [(IDSUTunPeer *)self performBlockForAllConnections:v10];
  }
}

- (void)manager:(id)manager cbuuidDidFailToConnect:(id)connect withReason:(id)reason
{
  managerCopy = manager;
  connectCopy = connect;
  reasonCopy = reason;
  if (self->_originalbtUUID)
  {
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Skip handling _handleCBUUIDFailToConnect for Phone continuity local message case.", v12, 2u);
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
    [(IDSUTunPeer *)self _handleCBUUIDFailToConnect:connectCopy withReason:reasonCopy];
  }
}

- (void)manager:(id)manager cbuuidDidDisconnect:(id)disconnect
{
  managerCopy = manager;
  disconnectCopy = disconnect;
  im_assert_primary_base_queue();
  [(IDSUTunPeer *)self performBlockForAllConnections:&stru_100BD9240];
  if (disconnectCopy && [(NSString *)self->_btUUID isEqualToString:disconnectCopy])
  {
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v13 = 2112;
      v14 = disconnectCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ LinkManager did disconnect cbuuid %@ - kicking our disable timer", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        selfCopy3 = self;
        v10 = disconnectCopy;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          selfCopy3 = self;
          v10 = disconnectCopy;
          _IDSLogV();
        }
      }
    }

    [(IDSUTunPeer *)self _startDisableTimerIfNecessary:selfCopy3];
  }
}

- (BOOL)manager:(id)manager cbuuidDidDiscover:(id)discover
{
  discoverCopy = discover;
  im_assert_primary_base_queue();
  if (discoverCopy && [(NSString *)self->_btUUID isEqualToString:discoverCopy])
  {
    isNearby = self->_isNearby;
    v7 = 1;
    self->_isNearby = 1;
    if (!isNearby)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained peerNearbyStateChanged:self forceNotify:0];

      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_allConnectionsAreIdle
{
  im_assert_primary_base_queue();
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = -86;
  v3 = self->_urgentDirectConnections;
  v4 = +[IDSDaemonPriorityQueueController sharedInstance];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100367F7C;
  v20[3] = &unk_100BD9038;
  v5 = v3;
  v21 = v5;
  v22 = &v23;
  [v4 performBlockSYNCHRONOUSLYWithPriority:v20 priority:300];

  if (*(v24 + 24) == 1 && (v6 = self->_defaultDirectConnections, +[IDSDaemonPriorityQueueController sharedInstance](IDSDaemonPriorityQueueController, "sharedInstance"), v7 = objc_claimAutoreleasedReturnValue(), v17[0] = _NSConcreteStackBlock, v17[1] = 3221225472, v17[2] = sub_10036808C, v17[3] = &unk_100BD9038, v8 = v6, v18 = v8, v19 = &v23, [v7 performBlockSYNCHRONOUSLYWithPriority:v17 priority:200], v7, v18, v8, (v24[3] & 1) != 0))
  {
    v9 = self->_syncDirectConnections;
    v10 = +[IDSDaemonPriorityQueueController sharedInstance];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10036819C;
    v14[3] = &unk_100BD9038;
    v11 = v9;
    v15 = v11;
    v16 = &v23;
    [v10 performBlockSYNCHRONOUSLYWithPriority:v14 priority:100];

    v12 = *(v24 + 24);
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v23, 8);
  return v12 & 1;
}

- (void)_clearDisableTimer
{
  im_assert_primary_base_queue();
  [(IMDispatchTimer *)self->_disableTimer invalidate];
  disableTimer = self->_disableTimer;
  self->_disableTimer = 0;
}

- (void)_disableTimerFired:(id)fired
{
  im_assert_primary_base_queue();
  [(IDSUTunPeer *)self _clearDisableTimer];
  if ([(IDSUTunPeer *)self _allConnectionsAreIdle]&& self->_btUUID)
  {

    [(IDSUTunPeer *)self performBlockForDirectConnections:&stru_100BD9288];
  }
}

- (void)_cloudDisableTimerFired:(id)fired
{
  firedCopy = fired;
  im_assert_primary_base_queue();
  [(IDSUTunPeer *)self _clearCloudDisableTimer];
  if ([(IDSUTunPeer *)self _allCloudConnectionsAreIdle])
  {
    if (self->_isDefaultPairedDevice)
    {
      p_uniqueID = &kIDSDefaultPairedDeviceID;
    }

    else
    {
      p_uniqueID = &self->_uniqueID;
    }

    v6 = *p_uniqueID;
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Tearing Down Global Link For %@ Due To Inactivity", buf, 0xCu);
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

    if (self->_shouldUseIPsecLink)
    {
      v8 = +[IDSUTunDeliveryController sharedInstance];
      [v8 defaultPeerSetWantsQuickRelayRequest:0];
    }

    else
    {
      v8 = +[IDSUTunController sharedInstance];
      [v8 disconnectGlobalLinkForDevice:v6 isReinitiating:0 completionHandler:0];
    }
  }

  else
  {
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not all connections are idle.", buf, 2u);
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

- (void)setIsPeerAlwaysConnected:(BOOL)connected
{
  connectedCopy = connected;
  im_assert_primary_base_queue();
  if (self->_isPeerAlwaysConnected != connectedCopy)
  {
    self->_isPeerAlwaysConnected = connectedCopy;
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (self->_isPeerAlwaysConnected)
      {
        v6 = @"YES";
      }

      *buf = 138412546;
      selfCopy = self;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ isPeerAlwaysConnected is changed to %@", buf, 0x16u);
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

    if (self->_isPeerAlwaysConnected)
    {
      [(IDSUTunPeer *)self _clearCloudDisableTimer];
    }

    else
    {
      [(IDSUTunPeer *)self _startCloudDisableTimerIfNecessary];
    }
  }
}

- (void)forceOTRNegotiationForTopic:(id)topic priority:(int64_t)priority completionBlock:(id)block
{
  topicCopy = topic;
  blockCopy = block;
  if (self->_shouldUseIPsecLink)
  {
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ forceOTRNegotiationForTopic is no-op when ipsec is used", buf, 0xCu);
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
    supportsCloudConnections = self->_supportsCloudConnections;
    switch(priority)
    {
      case 100:
        v18 = self->_syncDirectConnections;
        v19 = +[IDSDaemonPriorityQueueController sharedInstance];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_100368DF8;
        v27[3] = &unk_100BD92B0;
        v28 = v18;
        v29 = topicCopy;
        v31 = 100;
        v30 = blockCopy;
        v32 = supportsCloudConnections;
        v20 = v18;
        [v19 performBlockSyncPriority:v27];

        break;
      case 200:
        v15 = self->_defaultDirectConnections;
        v16 = +[IDSDaemonPriorityQueueController sharedInstance];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100368F28;
        v21[3] = &unk_100BD92B0;
        v22 = v15;
        v23 = topicCopy;
        v25 = 200;
        v24 = blockCopy;
        v26 = supportsCloudConnections;
        v17 = v15;
        [v16 performBlockDefaultPriority:v21];

        break;
      case 300:
        v12 = self->_urgentDirectConnections;
        v13 = +[IDSDaemonPriorityQueueController sharedInstance];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_100368CC8;
        v33[3] = &unk_100BD92B0;
        v34 = v12;
        v35 = topicCopy;
        v37 = 300;
        v36 = blockCopy;
        v38 = supportsCloudConnections;
        v14 = v12;
        [v13 performBlockUrgentPriority:v33];

        break;
    }
  }
}

- (void)admissionPolicyChangedForTopic:(id)topic allowed:(BOOL)allowed
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003690F4;
  v7[3] = &unk_100BD92D8;
  topicCopy = topic;
  allowedCopy = allowed;
  v6 = topicCopy;
  [(IDSUTunPeer *)self performBlockForAllConnections:v7];
}

- (BOOL)_shouldLogTransportStats
{
  if (self->_isDefaultPairedDevice)
  {
    return _IDSShouldPowerLog(@"IDS Local Network Stats", a2);
  }

  else
  {
    return 0;
  }
}

- (IDSUTunPeerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end