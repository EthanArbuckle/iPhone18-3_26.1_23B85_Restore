@interface IDSLinkManager
- (BOOL)_hasGlobalLinkConnectingOrConnected;
- (BOOL)_startUDPLinkHandshakeForDefaultDevice:(BOOL)device immediately:(BOOL)immediately;
- (BOOL)isConnectedToDeviceID:(id)d;
- (BOOL)link:(id)link didReceivePacket:(id *)packet fromDeviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (IDSLinkManager)initWithDelegate:(id)delegate;
- (id)_getIDSLinkTypeString:(unint64_t)string;
- (id)_linkKeyForLink:(id)link;
- (id)_newGlobalLinkForDeviceUniqueID:(id)d cbuuid:(id)cbuuid options:(id)options;
- (id)_newUDPGlobalLinkForDeviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (id)_newUDPLinkForDeviceUniqueID:(id)d cbuuid:(id)cbuuid IPVersion:(unint64_t)version port:(unsigned __int16)port;
- (id)_selectBestLink:(id)link;
- (id)copyLinkStatsDict;
- (id)generateLinkReport:(double)report forceReport:(BOOL)forceReport;
- (id)globalLinkForSessionID:(id)d;
- (id)linkForCBUUID:(id)d;
- (unint64_t)_getIDSLinkTypeFromWRMLinkType:(unint64_t)type;
- (unint64_t)_getWRMLinkTypeFromIDSLinkType:(unint64_t)type;
- (unint64_t)_sendPacketBuffer:(id *)buffer toDeviceUniqueID:(id)d cbuuid:(id)cbuuid link:(id)link;
- (unint64_t)currentLinkType:(id)type;
- (unint64_t)sendPacketBuffer:(id *)buffer toDeviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (unint64_t)sendPacketBufferArray:(id *)array arraySize:(int)size toDeviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (void)_addAllocateRequestForDevice:(id)device requestID:(id)d;
- (void)_bringUpWiFi:(BOOL)fi;
- (void)_clearWiFiAssociationPowerAssertion;
- (void)_connectivityChangedForDefaultDevice:(BOOL)device isCloudConnected:(BOOL)connected;
- (void)_createWiFiAssociationPowerAssertion:(double)assertion;
- (void)_createWiFiManagerClient;
- (void)_handleNetworkChanges:(id)changes;
- (void)_handleWRMLinkRecommendation:(unint64_t)recommendation;
- (void)_handleWiFiAutoJoinStatusChange:(int64_t)change WiFiSSID:(id)d;
- (void)_nearbyChangedForDefaultDevice;
- (void)_processLMCommandPacket:(id *)packet fromLink:(id)link deviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (void)_processLinkChangeForDefaultDeviceFrom:(id)from to:(id)to;
- (void)_removeAllLinksForDeviceID:(id)d;
- (void)_removeAllocateRequestForDevice:(id)device requestID:(id)d;
- (void)_removeLinkForDeviceID:(id)d linkKey:(id)key verifyWithLink:(id)link;
- (void)_sendUDPLinkInterfaceAddresses:(id)addresses toDeviceID:(id)d isRetransmission:(BOOL)retransmission isReply:(BOOL)reply;
- (void)_setBestLinkToCurrent:(id)current;
- (void)_startAllocateRequestForDevice:(id)device;
- (void)_startCellularDataStatusListener:(BOOL)listener;
- (void)_startNetworkInterfaceListener:(BOOL)listener;
- (void)_startReporter;
- (void)_subscribeToWRMForLinkRecommendation:(unint64_t)recommendation;
- (void)_suspendBTLink:(BOOL)link cbuuid:(id)cbuuid;
- (void)_unsubscribeFromWRMForLinkRecommendation;
- (void)addPairedDevice:(id)device;
- (void)cellularRadioAccessTechnologyDidChange:(BOOL)change;
- (void)cellularSoMaskDidChange:(unsigned int)change;
- (void)clearGlobalLinkConfigurationForSession:(id)session configuration:(id)configuration;
- (void)clearGlobalLinkForSessionID:(id)d;
- (void)connectGlobalLinkForDevice:(id)device sessionInfo:(id)info connectReadyHandler:(id)handler withLocalInterfacePreference:(int)preference;
- (void)connectPairedDevice:(id)device;
- (void)createConnectionDataForDevice:(id)device localPartyID:(id)d dataReadyHandler:(id)handler;
- (void)currentLinkType:(unint64_t *)type andRATType:(unsigned int *)tType forDeviceID:(id)d;
- (void)dealloc;
- (void)deletePairedDevice:(id)device;
- (void)didReceiveBlockedIndicationForLink:(id)link reason:(unsigned int)reason;
- (void)disconnectGlobalLinkForDevice:(id)device isReinitiating:(BOOL)reinitiating completionHandler:(id)handler;
- (void)flushBuffer:(unint64_t)buffer toDeviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (void)getSessionInfo:(id)info relayGroupID:(id)d relaySessionID:(id)iD options:(id)options;
- (void)handleAllocateRequestFailureForDevice:(id)device requestID:(id)d errorCode:(int)code;
- (void)injectFakePacketInBTLink:(id *)link cbuuid:(id)cbuuid;
- (void)link:(id)link didAddQREvent:(id)event;
- (void)link:(id)link didCellularMTUChange:(unsigned __int16)change;
- (void)link:(id)link didCellularNWPathFlagsChanged:(unsigned __int16)changed;
- (void)link:(id)link didConnectForDeviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (void)link:(id)link didConnectOverCloud:(id)cloud cbuuid:(id)cbuuid;
- (void)link:(id)link didConnectUnderlyingLink:(char)underlyingLink linkUUID:(id)d localAttributes:(id)attributes remoteAttributes:(id)remoteAttributes;
- (void)link:(id)link didDefaultUnderlyingLinkChangeSucceeded:(BOOL)succeeded currentDefaultLinkID:(char)d;
- (void)link:(id)link didDisconnectForDeviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (void)link:(id)link didDisconnectOverCloud:(id)cloud cbuuid:(id)cbuuid;
- (void)link:(id)link didDisconnectUnderlyingLinkID:(char)d linkUUID:(id)iD reason:(unsigned __int8)reason;
- (void)link:(id)link didFailToConnectOverCloud:(id)cloud cbuuid:(id)cbuuid;
- (void)link:(id)link didFinishConvergenceForRelaySessionID:(id)d;
- (void)link:(id)link didGetLinkProbingStatus:(id)status;
- (void)link:(id)link didRATChange:(unsigned __int8)change;
- (void)link:(id)link didReceiveChildConnections:(id)connections forLinkID:(char)d;
- (void)link:(id)link didReceiveEncryptedDataBlobs:(id)blobs;
- (void)link:(id)link didReceiveErrorIndicationWithCode:(unsigned int)code;
- (void)link:(id)link didReceiveKeyMaterialMessageData:(id)data fromParticipantIDs:(id)ds toParticipantID:(id)d;
- (void)link:(id)link didReceiveMappedParticipantsDict:(id)dict forLinkID:(char)d;
- (void)link:(id)link didReceiveMaterialInfo:(id)info material:(id)material;
- (void)link:(id)link didReceiveParticipantUpdate:(id)update status:(unsigned __int16)status;
- (void)link:(id)link didReceivePluginDisconnect:(id)disconnect;
- (void)link:(id)link didReceivePluginRegistration:(unint64_t)registration pluginName:(id)name;
- (void)link:(id)link didReceivePluginUnregistration:(unint64_t)unregistration pluginName:(id)name;
- (void)link:(id)link didReceiveReliableUnicastServerMaterial:(id)material;
- (void)link:(id)link didReceiveReportEvent:(id)event;
- (void)link:(id)link didReceiveRequestToPurgeRegistration:(id)registration;
- (void)link:(id)link didReceiveSKEData:(id)data;
- (void)link:(id)link didReceiveSessionInfo:(id)info relayGroupID:(id)d relaySessionID:(id)iD status:(unsigned int)status;
- (void)link:(id)link didReceiveSessionStateCounter:(unsigned int)counter;
- (void)link:(id)link didReceiveSessionStats:(id)stats relayGroupID:(id)d relaySessionID:(id)iD success:(BOOL)success;
- (void)link:(id)link didWiFiNWPathFlagsChanged:(unsigned __int16)changed;
- (void)link:(id)link hasSpaceAvailable:(BOOL)available deviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (void)link:(id)link hostAwakeDidChange:(BOOL)change deviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (void)link:(id)link pathMTUDidChange:(unsigned __int16)change forLinkID:(char)d;
- (void)link:(id)link reportNoSessionState:(id)state;
- (void)manager:(id)manager didPairedDeviceChange:(BOOL)change;
- (void)manager:(id)manager didPowerStateChange:(BOOL)change;
- (void)manager:(id)manager linkDidConnect:(id)connect;
- (void)manager:(id)manager linkDidDisconnect:(id)disconnect;
- (void)obliterateConnectionInfo;
- (void)processRemoteConnectionDataForDevice:(id)device remoteConnectionData:(id)data completionHandler:(id)handler;
- (void)setIsOnPhoneCall:(BOOL)call forDeviceID:(id)d;
- (void)setPreferInfraWiFi:(BOOL)fi;
- (void)setRequireBT:(BOOL)t;
- (void)setShouldStartBTLinkManager:(BOOL)manager;
- (void)start;
- (void)startBTDatagramLinkForDeviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (void)startConnectionForDevice:(id)device isInitiator:(BOOL)initiator remotePartyID:(id)d useStunMICheck:(BOOL)check;
- (void)startGlobalLinkForDevice:(id)device;
- (void)startLinkForDeviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (void)startLocalSetup;
- (void)startUDPGlobalLinkForDevice:(id)device;
- (void)stopBTDatagramLinkForDeviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (void)stopGlobalLinkForDevice:(id)device;
- (void)stopLinkForDeviceUniqueID:(id)d cbuuid:(id)cbuuid disconnectWP:(BOOL)p;
- (void)stopUDPGlobalLinkForDevice:(id)device;
- (void)terminateCallDueToIdleClientForLink:(id)link;
- (void)triggerBTCorruptionRecoveryForCBUUID:(id)d;
- (void)triggerFixedInterfaceLinksDidConnect;
@end

@implementation IDSLinkManager

- (IDSLinkManager)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v38.receiver = self;
  v38.super_class = IDSLinkManager;
  v5 = [(IDSLinkManager *)&v38 init];
  if (v5)
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "============= New LinkManager %@ starting =============", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v34 = v5;
      _IDSLogV();
    }

    objc_storeWeak(&v5->_delegate, delegateCopy);
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    cbuuidToLinks = v5->_cbuuidToLinks;
    v5->_cbuuidToLinks = Mutable;

    v9 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    deviceIDToCurrentLink = v5->_deviceIDToCurrentLink;
    v5->_deviceIDToCurrentLink = v9;

    v11 = +[IMLockdownManager sharedInstance];
    v5->_isInternalInstall = [v11 isInternalInstall];

    v5->_demoMode = 0;
    v12 = +[NSMutableDictionary dictionary];
    globalLinkConfigurationsBySessionID = v5->_globalLinkConfigurationsBySessionID;
    v5->_globalLinkConfigurationsBySessionID = v12;

    if (CFPreferencesGetAppBooleanValue(@"StoreDemoMode", @"com.apple.demo-settings", 0) && CFPreferencesGetAppIntegerValue(@"FProgramNumber", @"com.apple.demo-settings", 0) == 5)
    {
      v5->_demoMode = 1;
    }

    v14 = IMGetDomainValueForKey();
    v15 = v14;
    if (v14)
    {
      unsignedIntValue = [v14 unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 1.0;
    }

    v5->_minReportFileOpenTimeInterval = unsignedIntValue;
    v5->_previousReportFileOpenTime = 0.0;
    v17 = +[IMUserDefaults fixedInterface];
    fixedInterface = v5->_fixedInterface;
    v5->_fixedInterface = v17;

    v19 = +[IMUserDefaults fixedInterfaceDestination];
    fixedInterfaceDestination = v5->_fixedInterfaceDestination;
    v5->_fixedInterfaceDestination = v19;

    v21 = v5->_fixedInterface;
    if (v21 && v5->_fixedInterfaceDestination)
    {
      v22 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v5->_fixedInterface;
        v24 = v5->_fixedInterfaceDestination;
        *buf = 138412546;
        v40 = v23;
        v41 = 2112;
        v42 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Both FixedInterface [%@] and FixedInterfaceDestination [%@] are set. Setting up UDPLink only.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v35 = v5->_fixedInterface;
          v37 = v5->_fixedInterfaceDestination;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v35 = v5->_fixedInterface;
            v37 = v5->_fixedInterfaceDestination;
            _IDSLogV();
          }
        }
      }

      v5->_hasFixedDestination = 1;
    }

    else
    {
      v5->_fixedInterface = 0;

      v25 = v5->_fixedInterfaceDestination;
      v5->_fixedInterfaceDestination = 0;

      v5->_hasFixedDestination = 0;
      v26 = [[IDSBTLinkManager alloc] initWithDelegate:v5 pairedDevice:0];
      btLinkManager = v5->_btLinkManager;
      v5->_btLinkManager = v26;

      if (v5->_btLinkManager)
      {
        [(IDSLinkManager *)v5 _startNetworkInterfaceListener:1];
        [(IDSLinkManager *)v5 _startCellularDataStatusListener:1];
      }
    }

    [(IDSLinkManager *)v5 _startReporter:v35];
    v28 = IMGetDomainValueForKey();
    v29 = v28;
    if (v28)
    {
      unsignedIntValue2 = [v28 unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 60.0;
    }

    v5->_preferInfraWiFiConnectionTimeout = unsignedIntValue2;
    v31 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      preferInfraWiFiConnectionTimeout = v5->_preferInfraWiFiConnectionTimeout;
      *buf = 67109120;
      LODWORD(v40) = preferInfraWiFiConnectionTimeout;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Use preferInfraWiFiConnectionTimeout: %d seconds.", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v36 = v5->_preferInfraWiFiConnectionTimeout;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v36 = v5->_preferInfraWiFiConnectionTimeout;
          _IDSLogV();
        }
      }
    }

    [(IDSLinkManager *)v5 _createWiFiManagerClient];
  }

  return v5;
}

- (void)dealloc
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "============= Dealloc LinkManager %@ =============", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    selfCopy2 = self;
    _IDSLogV();
  }

  dynamicStore = self->_dynamicStore;
  if (dynamicStore)
  {
    CFRelease(dynamicStore);
  }

  [(IDSLinkManager *)self _bringUpWiFi:0, selfCopy2];
  if (self->_wifiDevice)
  {
    if (qword_100CBEED8 != -1)
    {
      sub_100928EE8();
    }

    if (off_100CBEED0)
    {
      off_100CBEED0(self->_wifiDevice, 0, 0);
    }

    CFRelease(self->_wifiDevice);
  }

  if (self->_wifiManager)
  {
    if (qword_100CBEEE8 != -1)
    {
      sub_100928F10();
    }

    v5 = off_100CBEEE0;
    if (off_100CBEEE0)
    {
      wifiManager = self->_wifiManager;
      Main = CFRunLoopGetMain();
      v5(wifiManager, Main, kCFRunLoopDefaultMode);
    }

    CFRelease(self->_wifiManager);
  }

  [(IDSBTLinkManager *)self->_btLinkManager stop];
  [(IDSWPLinkManager *)self->_wpLinkManager setDelegate:0];
  reporterTimer = self->_reporterTimer;
  if (reporterTimer)
  {
    dispatch_source_cancel(reporterTimer);
    v9 = self->_reporterTimer;
    self->_reporterTimer = 0;
  }

  v11.receiver = self;
  v11.super_class = IDSLinkManager;
  [(IDSLinkManager *)&v11 dealloc];
}

- (id)globalLinkForSessionID:(id)d
{
  v3 = 0;
  if (d)
  {
    cbuuidToLinks = self->_cbuuidToLinks;
    v5 = 0;
    if (cbuuidToLinks)
    {
      v6 = CFDictionaryGetValue(cbuuidToLinks, d);
      v3 = v6;
      if (v6)
      {
        v5 = CFDictionaryGetValue(v6, @"IDSLinkGlobalKey");
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)clearGlobalLinkConfigurationForSession:(id)session configuration:(id)configuration
{
  sessionCopy = session;
  globalLinkConfigurationsBySessionID = self->_globalLinkConfigurationsBySessionID;
  configurationCopy = configuration;
  v8 = [(NSMutableDictionary *)globalLinkConfigurationsBySessionID objectForKeyedSubscript:sessionCopy];

  if (v8 == configurationCopy)
  {
    [(NSMutableDictionary *)self->_globalLinkConfigurationsBySessionID setObject:0 forKeyedSubscript:sessionCopy];
  }
}

- (void)start
{
  v3 = +[IDSWPLinkManager sharedInstance];
  wpLinkManager = self->_wpLinkManager;
  self->_wpLinkManager = v3;

  [(IDSWPLinkManager *)self->_wpLinkManager setDelegate:self];
  if (self->_hasFixedDestination)
  {
    v5 = [(NSString *)self->_fixedInterfaceDestination rangeOfString:@":"]!= 0x7FFFFFFFFFFFFFFFLL;
    v6 = kIDSDefaultPairedDeviceID;
    v7 = [(IDSLinkManager *)self _newUDPLinkForDeviceUniqueID:0 cbuuid:kIDSDefaultPairedDeviceID IPVersion:v5 port:49888];
    if ([(NSString *)self->_fixedInterfaceDestination rangeOfString:@"="]== 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [IDSSockAddrWrapper wrapperWithAddressString:self->_fixedInterfaceDestination withPortHostOrder:49888 withInterfaceName:self->_fixedInterface];
      [v7 setDestinationAddress:v8 isFixedDestination:self->_hasFixedDestination fromAddress:0];
    }

    else
    {
      v9 = sub_1005383E4(self->_fixedInterfaceDestination, self->_fixedInterface);
      deviceIDToUDPDestinations = self->_deviceIDToUDPDestinations;
      self->_deviceIDToUDPDestinations = v9;

      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v12 = self->_deviceIDToUDPDestinations;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100539880;
      v14[3] = &unk_100BD95F8;
      v15 = Mutable;
      v13 = Mutable;
      [(NSDictionary *)v12 enumerateKeysAndObjectsUsingBlock:v14];
      [v7 setDestinationAddressToDeviceIDMap:v13];
    }

    [(IDSLinkManager *)self _setBestLinkToCurrent:v6];
    self->_isDefaultDeviceNearby = 1;
    [(IDSLinkManager *)self _nearbyChangedForDefaultDevice];
  }
}

- (void)triggerFixedInterfaceLinksDidConnect
{
  if (self->_hasFixedDestination)
  {
    deviceIDToCurrentLink = self->_deviceIDToCurrentLink;
    if (deviceIDToCurrentLink)
    {
      v4 = kIDSDefaultPairedDeviceID == 0;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      Value = 0;
    }

    else
    {
      Value = CFDictionaryGetValue(deviceIDToCurrentLink, kIDSDefaultPairedDeviceID);
    }

    v6 = Value;
    allKeys = [(NSDictionary *)self->_deviceIDToUDPDestinations allKeys];
    v10 = v6;
    v7 = v6;
    v8 = allKeys;
    IDSTransportThreadAddBlock();
  }
}

- (id)copyLinkStatsDict
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  Value = 0;
  if (self->_cbuuidToLinks)
  {
    v5 = kIDSDefaultPairedDeviceID == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    Value = CFDictionaryGetValue(self->_cbuuidToLinks, kIDSDefaultPairedDeviceID);
  }

  allValues = [Value allValues];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        copyLinkStatsDict = [v11 copyLinkStatsDict];
        if (copyLinkStatsDict)
        {
          CFDictionarySetValue(Mutable, [v11 linkTypeString], copyLinkStatsDict);
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v13 = [NSDictionary alloc];
  v14 = [NSNumber numberWithUnsignedLongLong:self->_totalBytesReceived];
  v15 = [NSNumber numberWithUnsignedLongLong:self->_totalBytesSent];
  v16 = [NSNumber numberWithUnsignedLongLong:self->_totalPacketsDropped];
  v17 = [NSNumber numberWithUnsignedLongLong:self->_totalPacketsReceived];
  v18 = [NSNumber numberWithUnsignedLongLong:self->_totalPacketsSent];
  v19 = [v13 initWithObjectsAndKeys:{v14, @"bytesReceived", v15, @"bytesSent", v16, @"packetsDropped", v17, @"packetsReceived", v18, @"packetsSent", 0}];

  if (v19)
  {
    CFDictionarySetValue(Mutable, @"total", v19);
  }

  return Mutable;
}

- (id)generateLinkReport:(double)report forceReport:(BOOL)forceReport
{
  previousReportTime = self->_previousReportTime;
  v6 = report - previousReportTime;
  if (forceReport || v6 >= 30.0)
  {
    if (previousReportTime == 0.0)
    {
LABEL_36:
      self->_previousReportTime = report;
      return 0;
    }

    reporterFd = self->_reporterFd;
    if (reporterFd != -1)
    {
LABEL_5:
      *&v90[15] = 0xAAAAAAAAAAAAAAAALL;
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *v90 = v8;
      v89 = v8;
      v88 = v8;
      v87 = v8;
      v86 = v8;
      v85 = v8;
      v84 = v8;
      v83 = v8;
      v82 = v8;
      v81 = v8;
      v80 = v8;
      v79 = v8;
      strcpy(__s, "=======================================================\n");
      v9 = strlen(__s);
      if (write(reporterFd, __s, v9) <= 0)
      {
        close(self->_reporterFd);
        self->_reporterFd = -1;
        v10 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          reporterFile = self->_reporterFile;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "closed FIFO file %s", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        dispatch_source_cancel(self->_reporterTimer);
        reporterTimer = self->_reporterTimer;
        self->_reporterTimer = 0;
      }

LABEL_12:
      v12 = [[NSMutableString alloc] initWithFormat:@"                            Since last report (for %.1fs)\tCumulative total\n", *&v6];
      allKeys = [(NSMutableDictionary *)self->_cbuuidToLinks allKeys];
      context = objc_autoreleasePoolPush();
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      obj = allKeys;
      v14 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
      if (v14)
      {
        v15 = *v70;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v70 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v69 + 1) + 8 * i);
            deviceIDToCurrentLink = self->_deviceIDToCurrentLink;
            if (deviceIDToCurrentLink)
            {
              v19 = v17 == 0;
            }

            else
            {
              v19 = 1;
            }

            if (v19)
            {
              Value = 0;
            }

            else
            {
              Value = CFDictionaryGetValue(deviceIDToCurrentLink, *(*(&v69 + 1) + 8 * i));
            }

            v21 = Value;
            v22 = 0;
            if (self->_cbuuidToLinks && v17)
            {
              v22 = CFDictionaryGetValue(self->_cbuuidToLinks, v17);
            }

            allValues = [v22 allValues];
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            v24 = [allValues countByEnumeratingWithState:&v65 objects:v74 count:16];
            if (v24)
            {
              v25 = *v66;
              do
              {
                for (j = 0; j != v24; j = j + 1)
                {
                  if (*v66 != v25)
                  {
                    objc_enumerationMutation(allValues);
                  }

                  v27 = [*(*(&v65 + 1) + 8 * j) generateLinkReport:objc_msgSend(*(*(&v65 + 1) + 8 * j) isCurrentLink:{"isEqual:", v21), report}];
                  [v12 appendString:v27];
                }

                v24 = [allValues countByEnumeratingWithState:&v65 objects:v74 count:16];
              }

              while (v24);
            }
          }

          v14 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
        }

        while (v14);
      }

      totalPacketsSent = self->_totalPacketsSent;
      previousPacketsSent = self->_previousPacketsSent;
      v59 = formattedBytes();
      v28 = formattedSpeed();
      v29 = self->_totalPacketsSent;
      v30 = formattedBytes();
      totalPacketsReceived = self->_totalPacketsReceived;
      previousPacketsReceived = self->_previousPacketsReceived;
      v33 = formattedBytes();
      v34 = formattedSpeed();
      v35 = self->_totalPacketsReceived;
      v36 = formattedBytes();
      [v12 appendFormat:@"  Combined              Tx %6llu pkts %@B %@bps     %6llu pkts %@B\n                        Rx %6llu pkts %@B %@bps     %6llu pkts %@B\n                   Dropped %6llu pkts                       %6llu pkts", totalPacketsSent - previousPacketsSent, v59, v28, v29, v30, totalPacketsReceived - previousPacketsReceived, v33, v34, v35, v36, self->_totalPacketsDropped - self->_previousPacketsDropped, self->_totalPacketsDropped];

      objc_autoreleasePoolPop(context);
      v37 = +[IDSUTunController sharedInstance];
      v38 = [v37 onTransportThread_PerServiceDataTransferredForDevice:kIDSDefaultPairedDeviceID services:0];
      v39 = sub_100538A74(v38);

      [v12 appendString:@"\n\nStreaming Usage Statistics:\n"];
      [v12 appendString:v39];
      v40 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10053A6D8;
      block[3] = &unk_100BD6E40;
      v63 = v12;
      selfCopy = self;
      v41 = v12;
      dispatch_async(v40, block);

      v42 = *&self->_totalBytesReceived;
      *&self->_previousBytesSent = *&self->_totalBytesSent;
      *&self->_previousBytesReceived = v42;
      self->_previousPacketsDropped = self->_totalPacketsDropped;

      goto LABEL_36;
    }

    if (report - self->_previousReportFileOpenTime < self->_minReportFileOpenTimeInterval)
    {
      return 0;
    }

    self->_previousReportFileOpenTime = report;
    v44 = self->_reporterFile;
    v45 = open(self->_reporterFile, 5);
    self->_reporterFd = v45;
    if (v45 != -1)
    {
      v46 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *__s = 136315138;
        *&__s[4] = v44;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "opened FIFO file %s for writing", __s, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v47 = self->_reporterTimer;
      if (v47)
      {
        dispatch_source_cancel(v47);
      }

      v48 = im_primary_queue();
      v49 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v48);
      v50 = self->_reporterTimer;
      self->_reporterTimer = v49;

      v51 = self->_reporterTimer;
      v52 = dispatch_time(0, 5000000000);
      dispatch_source_set_timer(v51, v52, 0x12A05F200uLL, 0x5F5E100uLL);
      v53 = self->_reporterTimer;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10053A630;
      handler[3] = &unk_100BD6ED0;
      handler[4] = self;
      dispatch_source_set_event_handler(v53, handler);
      dispatch_resume(self->_reporterTimer);
      reporterFd = self->_reporterFd;
      if (reporterFd == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_5;
    }

    v54 = *__error();
    if (v54 != 6)
    {
      v55 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *__s = 136315394;
        *&__s[4] = v44;
        *&__s[12] = 1024;
        *&__s[14] = v54;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "cannot open reporting FIFO file %s, errno=%d", __s, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  return 0;
}

- (void)_startReporter
{
  self->_reporterFd = -1;
  if (!self->_isInternalInstall)
  {
    return;
  }

  memset(v26, 170, sizeof(v26));
  if (!confstr(65537, v26, 0x401uLL))
  {
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "_startReporter cannot locate temporary directory", &v22, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
    {
      return;
    }

LABEL_27:
    _IDSLogV();
    return;
  }

  v3 = opendir(v26);
  v4 = v3;
  if (!v3)
  {
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315138;
      v23 = v26;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "_startReporter cannot open %s", &v22, 0xCu);
    }

    if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
    {
      return;
    }

    goto LABEL_27;
  }

  v5 = readdir(v3);
  if (v5)
  {
    *&v6 = 136315138;
    v21 = v6;
    do
    {
      d_name = v5->d_name;
      if (!strncmp(v5->d_name, "ids-report.", 0xBuLL))
      {
        v8 = strlen(v26) + v5->d_namlen;
        v9 = v8 + 1;
        v10 = (v8 + 16) & 0xFFFFFFFFFFFFFFF0;
        v11 = &v21 - v10;
        if (v9)
        {
          memset(&v21 - v10, 170, v9);
        }

        snprintf(v11, v9, "%s%s", v26, d_name);
        v12 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v21;
          v23 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "removing old fifo file %s", &v22, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        unlink(v11);
      }

      v5 = readdir(v4);
    }

    while (v5);
  }

  closedir(v4);
  v13 = getpid();
  reporterFile = self->_reporterFile;
  snprintf(self->_reporterFile, 0x401uLL, "%s%s%u", v26, "ids-report.", v13);
  if (!mkfifo(self->_reporterFile, 0x1A4u))
  {
    v15 = open(self->_reporterFile, 5);
    self->_reporterFd = v15;
    if (v15 == -1)
    {
      v19 = *__error();
      if (v19 != 6)
      {
        v20 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 136315394;
          v23 = reporterFile;
          v24 = 1024;
          v25 = v19;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "cannot open reporting FIFO file %s, errno=%d", &v22, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLog())
          {
            goto LABEL_38;
          }
        }
      }
    }

    else
    {
      v16 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 136315138;
        v23 = reporterFile;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "opened FIFO file %s for writing", &v22, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
LABEL_38:
        _IDSLogV();
      }
    }
  }
}

- (void)_createWiFiManagerClient
{
  if (self->_isCentral)
  {
    if (qword_100CBEEF8 != -1)
    {
      sub_100928F38();
    }

    v3 = off_100CBEEF0(0, 0);
    self->_wifiManager = v3;
    if (v3)
    {
      if (qword_100CBEF08 != -1)
      {
        sub_100928F4C();
      }

      v4 = off_100CBEF00(self->_wifiManager);
      v5 = v4;
      if (v4)
      {
        v6 = [v4 count];
        if (v6)
        {
          v6 = [v5 objectAtIndex:0];
        }

        self->_wifiDevice = v6;
      }

      if (!self->_wifiDevice)
      {
        v11 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No WifiDevice available!", buf, 2u);
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

        goto LABEL_45;
      }

      if (qword_100CBEF18 != -1)
      {
        sub_100928F60();
      }

      if (off_100CBEF10)
      {
        off_100CBEF10(self->_wifiDevice, sub_10053BDFC, self);
        if (qword_100CBEF28 != -1)
        {
          sub_100928F74();
        }

        v7 = off_100CBEF20;
        if (off_100CBEF20)
        {
          wifiManager = self->_wifiManager;
          Main = CFRunLoopGetMain();
          v7(wifiManager, Main, kCFRunLoopDefaultMode);
LABEL_47:

          return;
        }

        v13 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "WiFiManagerClientScheduleWithRunLoop not found in MobileWiFi", v19, 2u);
        }

        if (!os_log_shim_legacy_logging_enabled())
        {
          goto LABEL_43;
        }

        if (!_IDSShouldLogTransport())
        {
          goto LABEL_43;
        }

        _IDSLogTransport();
        if (!_IDSShouldLog())
        {
          goto LABEL_43;
        }
      }

      else
      {
        v12 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "WiFiDeviceClientRegisterAutoJoinNotificationCallback not found in MobileWiFi", v18, 2u);
        }

        if (!os_log_shim_legacy_logging_enabled())
        {
          goto LABEL_43;
        }

        if (!_IDSShouldLogTransport())
        {
          goto LABEL_43;
        }

        _IDSLogTransport();
        if (!_IDSShouldLog())
        {
          goto LABEL_43;
        }
      }

      _IDSLogV();
LABEL_43:
      wifiDevice = self->_wifiDevice;
      if (wifiDevice)
      {
        CFRelease(wifiDevice);
        self->_wifiDevice = 0;
      }

LABEL_45:
      v15 = self->_wifiManager;
      if (v15)
      {
        CFRelease(v15);
        self->_wifiManager = 0;
      }

      goto LABEL_47;
    }

    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "WiFiManagerClientCreate failed!", v16, 2u);
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

- (id)_linkKeyForLink:(id)link
{
  linkCopy = link;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = @"IDSLinkBTKey";
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = @"IDSLinkBTDatagramKey";
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = @"IDSLinkBTLEKey";
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = @"IDSLinkLocalUDPKey";
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v4 = @"IDSLinkGlobalUDPKey";
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v4 = @"IDSLinkGlobalKey";
            }

            else
            {
              v4 = @"IDSLinkNoneKey";
            }
          }
        }
      }
    }
  }

  return v4;
}

- (void)_suspendBTLink:(BOOL)link cbuuid:(id)cbuuid
{
  linkCopy = link;
  v6 = kIDSDefaultPairedDeviceID;
  cbuuidToLinks = self->_cbuuidToLinks;
  if (cbuuidToLinks)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || (v9 = CFDictionaryGetValue(cbuuidToLinks, v6)) == 0)
  {
    v10 = 0;
    self->_doesDefaultDevicePreferInfraWiFi = linkCopy;
  }

  else
  {
    v10 = v9;
    v11 = CFDictionaryGetValue(v9, @"IDSLinkBTKey");
    doesDefaultDevicePreferInfraWiFi = self->_doesDefaultDevicePreferInfraWiFi;
    self->_doesDefaultDevicePreferInfraWiFi = linkCopy;
    if (v11)
    {
      v13 = v11;
      isLinkSuspended = [v11 isLinkSuspended];
      v15 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = @"NO";
        if (isLinkSuspended)
        {
          v17 = @"YES";
        }

        else
        {
          v17 = @"NO";
        }

        if (linkCopy)
        {
          v16 = @"YES";
        }

        *buf = 138412546;
        v19 = v17;
        v20 = 2112;
        v21 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "_suspendBTLink %@ -> %@", buf, 0x16u);
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

      if (isLinkSuspended == linkCopy)
      {
        if (doesDefaultDevicePreferInfraWiFi && !linkCopy && !self->_isCentral)
        {
          [(IDSLinkManager *)self _startUDPLinkHandshakeForDefaultDevice:0 immediately:1];
          if (self->_isDefaultDeviceUsingBTLink)
          {
            [(IDSLinkManager *)self _connectivityChangedForDefaultDevice:1 isCloudConnected:self->_lastSentDefaultDeviceCloudConnectivity];
          }
        }
      }

      else
      {
        [v13 suspendLink:linkCopy];
        [(IDSLinkManager *)self _setBestLinkToCurrent:v6];
      }

      goto LABEL_24;
    }
  }

  if (!linkCopy)
  {
    [(IDSLinkManager *)self _setBestLinkToCurrent:v6];
  }

  v13 = 0;
LABEL_24:
}

- (void)injectFakePacketInBTLink:(id *)link cbuuid:(id)cbuuid
{
  cbuuidCopy = cbuuid;
  v7 = cbuuidCopy;
  if (self->_isInternalInstall)
  {
    key = kIDSDefaultPairedDeviceID;

    v8 = 0;
    if (self->_cbuuidToLinks)
    {
      Value = 0;
      if (key)
      {
        Value = CFDictionaryGetValue(self->_cbuuidToLinks, key);
        v8 = Value;
        if (Value)
        {
          Value = CFDictionaryGetValue(Value, @"IDSLinkBTKey");
        }
      }
    }

    else
    {
      Value = 0;
    }

    [Value injectFakePacket:link];

    cbuuidCopy = key;
  }
}

- (void)_connectivityChangedForDefaultDevice:(BOOL)device isCloudConnected:(BOOL)connected
{
  if (self->_shouldStartBTLinkManager)
  {
    connectedCopy = connected;
    deviceCopy = device;
    if (device)
    {
      self->_hasDelayedNoConnectivityNotification = 0;
    }

    if (self->_lastSentDefaultDeviceConnectivity != device || self->_lastSentDefaultDeviceCloudConnectivity != connected)
    {
      v7 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = @"NO";
        if (self->_lastSentDefaultDeviceConnectivity)
        {
          v9 = @"YES";
        }

        else
        {
          v9 = @"NO";
        }

        lastSentDefaultDeviceCloudConnectivity = self->_lastSentDefaultDeviceCloudConnectivity;
        if (deviceCopy)
        {
          v11 = @"YES";
        }

        else
        {
          v11 = @"NO";
        }

        *buf = 138413058;
        v26 = v9;
        if (lastSentDefaultDeviceCloudConnectivity)
        {
          v12 = @"YES";
        }

        else
        {
          v12 = @"NO";
        }

        v27 = 2112;
        v28 = v11;
        if (connectedCopy)
        {
          v8 = @"YES";
        }

        v29 = 2112;
        v30 = v12;
        v31 = 2112;
        v32 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_connectivityChangedForDefaultDevice: local(%@ -> %@), cloud(%@ -> %@).", buf, 0x2Au);
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

      self->_lastSentDefaultDeviceConnectivity = deviceCopy;
      self->_lastSentDefaultDeviceCloudConnectivity = connectedCopy;
      if (deviceCopy || connectedCopy)
      {
        v16 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "_connectivityChangedForDefaultDevice sending UTunController didConnectForDevice (default)", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained link:self didConnectForDeviceUniqueID:0 cbuuid:kIDSDefaultPairedDeviceID];
      }

      else
      {
        v13 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "_connectivityChangedForDefaultDevice sending UTunController didDisconnectForDevice (default)", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained link:self didDisconnectForDeviceUniqueID:0 cbuuid:kIDSDefaultPairedDeviceID];
      }
    }

    if (self->_hasDelayedNoConnectivityNotification)
    {
      v17 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = @"NO";
        if (deviceCopy)
        {
          v18 = @"YES";
        }

        *buf = 138412290;
        v26 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "_connectivityChangedForDefaultDevice NOT(delay) sending legacyUTunBTLinkManagerDefaultPeerConnectivityChanged: %@", buf, 0xCu);
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

    else if (self->_lastSentDefaultPeerConnectivity != deviceCopy)
    {
      self->_lastSentDefaultPeerConnectivity = deviceCopy;
      v19 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10053CC70;
      block[3] = &unk_100BDFD48;
      v24 = deviceCopy;
      dispatch_async(v19, block);
    }

    v20 = im_primary_queue();
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10053CE08;
    v21[3] = &unk_100BDFD48;
    v22 = connectedCopy;
    dispatch_async(v20, v21);
  }

  else
  {
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Not processing _connectivityChangedForDefaultDevice in the IPsecLink path.", buf, 2u);
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

- (void)_nearbyChangedForDefaultDevice
{
  if (self->_lastSentDefaultDeviceNearby != self->_isDefaultDeviceNearby)
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = @"NO";
      if (self->_lastSentDefaultDeviceNearby)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      if (self->_isDefaultDeviceNearby)
      {
        v4 = @"YES";
      }

      *buf = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_nearbyChangedForDefaultDevice: %@ -> %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    self->_lastSentDefaultDeviceNearby = self->_isDefaultDeviceNearby;
    v6 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10053D178;
    block[3] = &unk_100BD6ED0;
    block[4] = self;
    dispatch_async(v6, block);
  }
}

- (void)_processLMCommandPacket:(id *)packet fromLink:(id)link deviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  linkCopy = link;
  dCopy = d;
  cbuuidCopy = cbuuid;
  *&v12 = *packet->var0;
  if (*packet->var0 <= 0x42u)
  {
    if (LODWORD(v12) == 64)
    {
      goto LABEL_5;
    }

    if (LODWORD(v12) != 65)
    {
      if (LODWORD(v12) == 66)
      {
LABEL_5:
        v13 = IMGetDomainValueForKey();
        v14 = v13;
        if (!v13 || ![v13 BOOLValue] || self->_doesDefaultDevicePreferInfraWiFi)
        {

LABEL_20:
          context = objc_autoreleasePoolPush();
          v16 = [IDSInterfaceAddress interfaceAddressWithTransmittedBytes:packet->var0 + 1 length:packet->var2 - 1 withLocalInterfaceName:self->_fixedInterface];
          v17 = v16;
          if (!v16 || ([v16 address], v18 = objc_claimAutoreleasedReturnValue(), v18, !v18))
          {
            v29 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v30 = packet->var2 - 1;
              v31 = [NSData dataWithBytes:packet->var0 + 1 length:v30];
              *buf = 134218242;
              v57 = *&v30;
              v58 = 2112;
              v59 = v31;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "received invalid interface address bytes(%ld) = %@", buf, 0x16u);
            }

            if (!os_log_shim_legacy_logging_enabled())
            {
              goto LABEL_138;
            }

            if (!_IDSShouldLogTransport())
            {
              goto LABEL_138;
            }

            v32 = packet->var2 - 1;
            v50 = [NSData dataWithBytes:packet->var0 + 1 length:v32];
            _IDSLogTransport();

            if (!_IDSShouldLog())
            {
              goto LABEL_138;
            }

            v33 = [NSData dataWithBytes:packet->var0 + 1 length:packet->var2 - 1, v32, v50];
            _IDSLogV();
LABEL_137:

LABEL_138:
            objc_autoreleasePoolPop(context);
            goto LABEL_139;
          }

          v53 = LODWORD(v12) & 0xFFFFFFFB;
          v19 = LODWORD(v12) - 69;
          v20 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = &stru_100C06028;
            *&v22 = COERCE_DOUBLE(@"(prefer) ");
            if (v19 >= 2)
            {
              *&v22 = COERCE_DOUBLE(&stru_100C06028);
            }

            *buf = 138413058;
            v57 = *&v22;
            v58 = 2112;
            if (v53 == 66)
            {
              v21 = @"(reply) ";
            }

            v59 = v21;
            v60 = 2112;
            v61 = v17;
            v62 = 2112;
            v63 = linkCopy;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "received remote UDPLink %@interface address %@%@ through %@", buf, 0x2Au);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
          {
            *&v23 = v19 >= 2 ? COERCE_DOUBLE(&stru_100C06028) : COERCE_DOUBLE(@"(prefer) ");
            v24 = v53 == 66 ? @"(reply) " : &stru_100C06028;
            v51 = v17;
            v52 = linkCopy;
            v48 = *&v23;
            v49 = v24;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v51 = v17;
              v52 = linkCopy;
              v48 = *&v23;
              v49 = v24;
              _IDSLogV();
            }
          }

          if (v19 <= 1)
          {
            if (!self->_isCentral || (ids_monotonic_time(), v26 = v25 - self->_rejectedPreferInfraWiFi, v26 >= 8.0))
            {
              v28 = 1;
              goto LABEL_93;
            }

            v27 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v57 = v26;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Rejected last preferInfraWiFi request %.1f seconds ago - ignoring this preferInfraWiFi request", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                v48 = v26;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  v48 = v26;
                  _IDSLogV();
                }
              }
            }
          }

          v28 = 0;
LABEL_93:
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v42 = -[IDSLinkManager _newUDPLinkForDeviceUniqueID:cbuuid:IPVersion:port:](self, "_newUDPLinkForDeviceUniqueID:cbuuid:IPVersion:port:", 0, cbuuidCopy, [v17 IPVersion], 0);
          if ((v28 & self->_isCentral) == 1 && !(isKindOfClass & 1 | !self->_doesDefaultDevicePreferInfraWiFi))
          {
            v33 = 0;
          }

          else
          {
            if ((isKindOfClass & 1) != 0 && packet->var19.ss_family)
            {
              v33 = [[IDSSockAddrWrapper alloc] initWithSockAddr:&packet->var19];
            }

            else
            {
              v33 = 0;
            }

            address = [v17 address];
            v44 = [v42 setDestinationAddress:address isFixedDestination:self->_hasFixedDestination fromAddress:v33];

            if ((v44 & 1) == 0)
            {
              v45 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "received remote UDPLink interface address doesn't match to the source of the packet - ignoring", buf, 2u);
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

              goto LABEL_136;
            }
          }

          if (v28)
          {
            if (self->_isCentral == self->_doesDefaultDevicePreferInfraWiFi)
            {
LABEL_123:
              if (isKindOfClass)
              {
                if (!self->_isWiFiBroughtUp)
                {
LABEL_136:

                  goto LABEL_137;
                }

                self->_shouldKeepWiFiUp = 1;
                [(IDSLinkManager *)self _connectivityChangedForDefaultDevice:1 isCloudConnected:self->_lastSentDefaultDeviceCloudConnectivity];
              }

              else if (!self->_mayBringUpWiFi)
              {
                v47 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "will bring up WiFi when losing BTLink", buf, 2u);
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

                self->_mayBringUpWiFi = 1;
              }

              if (v53 != 66)
              {
                [(IDSLinkManager *)self _sendUDPLinkInterfaceAddresses:v42 toDeviceID:cbuuidCopy isRetransmission:0 isReply:1];
              }

              goto LABEL_136;
            }
          }

          else if (!self->_doesDefaultDevicePreferInfraWiFi)
          {
            goto LABEL_123;
          }

          [(IDSLinkManager *)self _suspendBTLink:v28 cbuuid:cbuuidCopy, *&v48];
          goto LABEL_123;
        }

        v46 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Ignore LMCommandUDPLinkAddress/Reply due to disabled range extension via defaults.", buf, 2u);
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

        goto LABEL_116;
      }

      goto LABEL_79;
    }

LABEL_54:
    v34 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *&v35 = COERCE_DOUBLE(&stru_100C06028);
      if (LODWORD(v12) == 67)
      {
        *&v35 = COERCE_DOUBLE(@"(reply) ");
      }

      *buf = 138412546;
      v57 = *&v35;
      v58 = 2112;
      v59 = linkCopy;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "received remote UDPLink interface down %@through %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      *&v36 = LODWORD(v12) == 67 ? COERCE_DOUBLE(@"(reply) ") : COERCE_DOUBLE(&stru_100C06028);
      v48 = *&v36;
      v49 = linkCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v48 = *&v36;
        v49 = linkCopy;
        _IDSLogV();
      }
    }

    if (self->_doesDefaultDevicePreferInfraWiFi)
    {
      [(IDSLinkManager *)self _suspendBTLink:0 cbuuid:cbuuidCopy];
    }

    v14 = [(IDSLinkManager *)self _newUDPLinkForDeviceUniqueID:0 cbuuid:cbuuidCopy IPVersion:0 port:0, *&v48, v49];
    if (LODWORD(v12) == 65)
    {
      [(IDSLinkManager *)self _sendUDPLinkInterfaceAddresses:v14 toDeviceID:cbuuidCopy isRetransmission:0 isReply:1];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [v14 setDestinationAddress:0 isFixedDestination:self->_hasFixedDestination fromAddress:0];
    }

    if (self->_isCentral)
    {
      if (self->_mayBringUpWiFi)
      {
        v37 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "will NOT bring up WiFi when losing BTLink", buf, 2u);
        }

        if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLogTransport())
        {
          v38 = 0;
          goto LABEL_115;
        }

        _IDSLogTransport();
        v38 = 0;
        if (_IDSShouldLog())
        {
          goto LABEL_91;
        }

        goto LABEL_115;
      }
    }

    else if (!self->_mayBringUpWiFi)
    {
      v40 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "will bring up WiFi when losing BTLink", buf, 2u);
      }

      if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLogTransport())
      {
        v38 = 1;
        goto LABEL_115;
      }

      _IDSLogTransport();
      v38 = 1;
      if (_IDSShouldLog())
      {
LABEL_91:
        _IDSLogV();
      }

LABEL_115:
      self->_mayBringUpWiFi = v38;
    }

LABEL_116:

    goto LABEL_139;
  }

  if ((LODWORD(v12) - 69) < 2)
  {
    goto LABEL_20;
  }

  if (LODWORD(v12) == 67)
  {
    goto LABEL_54;
  }

  if (LODWORD(v12) != 68)
  {
LABEL_79:
    v39 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v57 = v12;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "unknown LMCommand %lu received", buf, 0xCu);
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

    goto LABEL_139;
  }

  v15 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Remote device reported data corruption", buf, 2u);
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

  if (objc_opt_respondsToSelector())
  {
    [(__CFString *)linkCopy remoteDetectedCorruption];
  }

LABEL_139:
}

- (void)_sendUDPLinkInterfaceAddresses:(id)addresses toDeviceID:(id)d isRetransmission:(BOOL)retransmission isReply:(BOOL)reply
{
  replyCopy = reply;
  retransmissionCopy = retransmission;
  addressesCopy = addresses;
  dCopy = d;
  v12 = dCopy;
  if (!self->_hasFixedDestination)
  {
    v13 = kIDSDefaultPairedDeviceID;
    if ([dCopy isEqualToString:kIDSDefaultPairedDeviceID])
    {
      if ([addressesCopy isInvalidated])
      {
        v14 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "UDPLink invalidated - stop retransmitting local interface address", buf, 2u);
        }

        if (!os_log_shim_legacy_logging_enabled())
        {
          goto LABEL_117;
        }

        if (!_IDSShouldLogTransport())
        {
          goto LABEL_117;
        }

        _IDSLogTransport();
        if (!_IDSShouldLog())
        {
          goto LABEL_117;
        }

        goto LABEL_116;
      }

      if (replyCopy)
      {
LABEL_11:
        copyCurrentNetworkInterfaces = [addressesCopy copyCurrentNetworkInterfaces];
        firstObject = [copyCurrentNetworkInterfaces firstObject];
        address = [firstObject address];
        localWiFiAddressUsedForDefaultDevice = self->_localWiFiAddressUsedForDefaultDevice;
        self->_localWiFiAddressUsedForDefaultDevice = address;

        v19 = _IDSLinkPacketBufferCreate();
        if (firstObject)
        {
          v20 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = &stru_100C06028;
            if (self->_doesDefaultDevicePreferInfraWiFi)
            {
              v22 = @"(prefer) ";
            }

            else
            {
              v22 = &stru_100C06028;
            }

            *buf = 138412802;
            v59 = *&v22;
            v60 = 2112;
            if (replyCopy)
            {
              v21 = @"(reply) ";
            }

            v61 = v21;
            v62 = 2112;
            v63 = firstObject;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "transmitting UDPLink %@interface address %@%@", buf, 0x20u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
          {
            v23 = self->_doesDefaultDevicePreferInfraWiFi ? @"(prefer) " : &stru_100C06028;
            v24 = replyCopy ? @"(reply) " : &stru_100C06028;
            v54 = v24;
            v55 = firstObject;
            v53 = *&v23;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              if (self->_doesDefaultDevicePreferInfraWiFi)
              {
                v25 = @"(prefer) ";
              }

              else
              {
                v25 = &stru_100C06028;
              }

              v54 = v24;
              v55 = firstObject;
              v53 = *&v25;
              _IDSLogV();
            }
          }

          if (replyCopy)
          {
            v26 = 70;
          }

          else
          {
            v26 = 69;
          }

          if (replyCopy)
          {
            v27 = 66;
          }

          else
          {
            v27 = 64;
          }

          if (self->_doesDefaultDevicePreferInfraWiFi)
          {
            v28 = v26;
          }

          else
          {
            v28 = v27;
          }

          v29 = [firstObject getTransmittableBytes:*v19 withPrefixByte:{v28, *&v53, v54, v55}];
        }

        else
        {
          if (!self->_isDefaultDeviceUsingBTLink)
          {
            v51 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "cannot send LinkDown when BT is not used - bail out", buf, 2u);
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

            if (!replyCopy)
            {
              self->_addressRetransmissionInterval = 0.0;
            }

            goto LABEL_94;
          }

          v41 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = &stru_100C06028;
            if (replyCopy)
            {
              v42 = @"(reply)";
            }

            *buf = 138412290;
            v59 = *&v42;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "transmitting UDPLink interface down%@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
          {
            v43 = replyCopy ? @"(reply)" : &stru_100C06028;
            v53 = *&v43;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v53 = *&v43;
              _IDSLogV();
            }
          }

          if (replyCopy)
          {
            v44 = 67;
          }

          else
          {
            v44 = 65;
          }

          **v19 = v44;
          v29 = 1;
        }

        v19[2] = v29;
        v45 = [(IDSLinkManager *)self sendPacketBuffer:v19 toDeviceUniqueID:0 cbuuid:v12, *&v53];
        if (v45 == 13 || v45 == 1)
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained link:self hasSpaceAvailable:0 deviceUniqueID:0 cbuuid:v12];
        }

        if (replyCopy)
        {
LABEL_94:

          goto LABEL_118;
        }

        addressRetransmissionInterval = self->_addressRetransmissionInterval;
        v48 = 1.0;
        if (addressRetransmissionInterval != 0.0)
        {
          if (addressRetransmissionInterval >= 4.0)
          {
LABEL_93:
            v56 = addressesCopy;
            v57 = v12;
            IDSTransportThreadAddBlockAfter();

            goto LABEL_94;
          }

          v48 = addressRetransmissionInterval + addressRetransmissionInterval;
        }

        self->_addressRetransmissionInterval = v48;
        goto LABEL_93;
      }

      ids_monotonic_time();
      v31 = v30;
      if (retransmissionCopy)
      {
        [addressesCopy lastDestinationSent];
        v33 = v32;
        [addressesCopy lastDestinationReceived];
        if (v33 <= v34)
        {
          v52 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "already received remote interface address - stop retransmitting local interface address", buf, 2u);
          }

          if (!os_log_shim_legacy_logging_enabled())
          {
            goto LABEL_117;
          }

          if (!_IDSShouldLogTransport())
          {
            goto LABEL_117;
          }

          _IDSLogTransport();
          if (!_IDSShouldLog())
          {
            goto LABEL_117;
          }

LABEL_116:
          _IDSLogV();
LABEL_117:
          self->_addressRetransmissionInterval = 0.0;
          goto LABEL_118;
        }

        if (self->_isDefaultDeviceUsingBTLink)
        {
          v35 = 30.0;
        }

        else
        {
          v35 = 60.0;
        }

        [addressesCopy lastDestinationSent];
        if (v31 - v36 <= v35)
        {
          goto LABEL_11;
        }

        v37 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v59 = v35;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "didn't receive remote interface address for last %.0fs - giving up!", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v53 = v35;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v53 = v35;
              _IDSLogV();
            }
          }
        }

        if (self->_isCentral)
        {
          Value = 0;
          if (v13 && self->_deviceIDToCurrentLink)
          {
            Value = CFDictionaryGetValue(self->_deviceIDToCurrentLink, v13);
          }

          v39 = Value;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v40 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v59 = *&v39;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "setDestinationAddress nil for %@.", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                v53 = *&v39;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  v53 = *&v39;
                  _IDSLogV();
                }
              }
            }

            [v39 setDestinationAddress:0 isFixedDestination:self->_hasFixedDestination fromAddress:{0, *&v53}];
          }

          [(IDSLinkManager *)self _setBestLinkToCurrent:v13, *&v53];
        }

        [(IDSLinkManager *)self _bringUpWiFi:0, *&v53];
        self->_addressRetransmissionInterval = 0.0;
        if (self->_doesDefaultDevicePreferInfraWiFi)
        {
          [(IDSLinkManager *)self _suspendBTLink:0 cbuuid:v12];
        }
      }

      else
      {
        [addressesCopy setLastDestinationSent:v30];
        if (self->_addressRetransmissionInterval <= 0.0)
        {
          goto LABEL_11;
        }

        v49 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = self->_addressRetransmissionInterval;
          *buf = 134217984;
          v59 = v50;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "retransmission already scheduled with %.1fs - resetting it to 1s next time", buf, 0xCu);
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

        self->_addressRetransmissionInterval = 0.5;
      }
    }
  }

LABEL_118:
}

- (void)_createWiFiAssociationPowerAssertion:(double)assertion
{
  if (self->_isCentral)
  {
    v5 = [[CUTPowerAssertion alloc] initWithIdentifier:@"IDSLinkManagerWiFiPowerAssertion" timeout:assertion];
    WiFiPowerAssertion = self->_WiFiPowerAssertion;
    self->_WiFiPowerAssertion = v5;

    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_WiFiPowerAssertion;
      *buf = 134218240;
      v10 = v8;
      v11 = 1024;
      assertionCopy = assertion;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Created new power assertion %p for WiFi association with timeout %d.", buf, 0x12u);
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

- (void)_clearWiFiAssociationPowerAssertion
{
  if (self->_isCentral && self->_WiFiPowerAssertion)
  {
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      WiFiPowerAssertion = self->_WiFiPowerAssertion;
      *buf = 134217984;
      v7 = WiFiPowerAssertion;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing power assertion %p for WiFi association", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    v5 = self->_WiFiPowerAssertion;
    self->_WiFiPowerAssertion = 0;
  }
}

- (void)_handleWiFiAutoJoinStatusChange:(int64_t)change WiFiSSID:(id)d
{
  dCopy = d;
  self->_currentWiFiAutoJoinStatus = change;
  if ((change - 3) > 1)
  {
    self->_isWiFiAssociated = 0;
    if (change - 1) < 0xA && ((0x213u >> (change - 1)))
    {
      v7 = 0;
    }

    else
    {
      if (self->_isWiFiBroughtUp)
      {
        [(IDSLinkManager *)self _clearWiFiAssociationPowerAssertion];
      }

      WiFiAssociationFailureHandler = self->_WiFiAssociationFailureHandler;
      if (WiFiAssociationFailureHandler)
      {
        WiFiAssociationFailureHandler[2]();
        v9 = self->_WiFiAssociationFailureHandler;
        self->_WiFiAssociationFailureHandler = 0;
      }

      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
    self->_isWiFiAssociated = 1;
    if (self->_isWiFiBroughtUp)
    {
      [(IDSLinkManager *)self _clearWiFiAssociationPowerAssertion];
    }
  }

  objc_storeStrong(&self->_currentWiFiSSID, d);
  if (self->_isCentral && (v7 & self->_isWiFiBroughtUp) == 1 && self->_WiFiAssociationStartTime > 0.0)
  {
    doesDefaultDevicePreferInfraWiFi = self->_doesDefaultDevicePreferInfraWiFi;
    ids_monotonic_time();
    v12 = (v11 - self->_WiFiAssociationStartTime);
    currentWiFiAutoJoinStatus = self->_currentWiFiAutoJoinStatus;
    v14 = [[IDSWiFiSetupAttemptMetric alloc] initWithAttemptType:!doesDefaultDevicePreferInfraWiFi msDuration:v12 result:currentWiFiAutoJoinStatus client:@"IDSLinkManager_WiFi"];
    v15 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v15 logMetric:v14];

    v16 = +[IDSAWDLogging sharedInstance];
    [v16 wifiSetupAttemptType:!doesDefaultDevicePreferInfraWiFi duration:v12 result:currentWiFiAutoJoinStatus client:@"IDSLinkManager_WiFi"];

    self->_WiFiAssociationStartTime = 0.0;
  }
}

- (BOOL)_startUDPLinkHandshakeForDefaultDevice:(BOOL)device immediately:(BOOL)immediately
{
  if (!self->_requireBT)
  {
    immediatelyCopy = immediately;
    deviceCopy = device;
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      if (deviceCopy)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      mayBringUpWiFi = self->_mayBringUpWiFi;
      if (immediatelyCopy)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      *buf = 138412802;
      v51 = v11;
      v52 = 2112;
      v53 = v13;
      if (mayBringUpWiFi)
      {
        v10 = @"YES";
      }

      v54 = 2112;
      v55 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_startUDPLinkHandshakeForDefaultDevice wantsWiFi %@ immediately %@ mayBringUpWiFi %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v14 = deviceCopy ? @"YES" : @"NO";
      v15 = immediatelyCopy ? @"YES" : @"NO";
      v16 = self->_mayBringUpWiFi ? @"YES" : @"NO";
      v38 = v15;
      v39 = v16;
      v37 = v14;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        if (self->_mayBringUpWiFi)
        {
          v17 = @"YES";
        }

        else
        {
          v17 = @"NO";
        }

        v38 = v15;
        v39 = v17;
        v37 = v14;
        _IDSLogV();
      }
    }

    if (deviceCopy)
    {
      if (self->_isCentral)
      {
        if (!self->_mayBringUpWiFi)
        {
          v18 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "_startUDPLinkHandshakeForDefaultDevice Central: wantsWiFi is YES but mayBringUpWiFi is NO - skip!", buf, 2u);
          }

          v5 = os_log_shim_legacy_logging_enabled();
          if (v5)
          {
            v5 = _IDSShouldLogTransport();
            if (v5)
            {
              _IDSLogTransport();
              v5 = _IDSShouldLog();
              if (v5)
              {
                goto LABEL_102;
              }
            }
          }

          return v5;
        }
      }

      else if (!self->_localWiFiAddressUsedForDefaultDevice)
      {
        v35 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "_startUDPLinkHandshakeForDefaultDevice !Central: wantsWiFi is YES but localWiFi has no IP - skip!", buf, 2u);
        }

        v5 = os_log_shim_legacy_logging_enabled();
        if (v5)
        {
          v5 = _IDSShouldLogTransport();
          if (v5)
          {
            _IDSLogTransport();
            v5 = _IDSShouldLog();
            if (v5)
            {
              goto LABEL_102;
            }
          }
        }

        return v5;
      }

      iMWeakLinkClass() = [IMWeakLinkClass() sharedInstance];
      isWiFiEnabled = [iMWeakLinkClass() isWiFiEnabled];

      if ((isWiFiEnabled & 1) == 0)
      {
        v33 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "wantsWiFi = YES but isWiFiEnabled = NO - not enabling WoW/AutoAssociation", buf, 2u);
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

        if (self->_doesDefaultDevicePreferInfraWiFi)
        {
          v34 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "preferInfraWiFi was requested - reject it", buf, 2u);
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

          v45 = _NSConcreteStackBlock;
          v46 = 3221225472;
          v47 = sub_10053F950;
          v48 = &unk_100BD8A20;
          selfCopy = self;
          IDSTransportThreadAddBlock();
        }

        goto LABEL_95;
      }
    }

    v21 = !deviceCopy || immediatelyCopy;
    if (self->_isCentral)
    {
      v22 = deviceCopy;
    }

    else
    {
      v22 = !deviceCopy || immediatelyCopy;
    }

    if (deviceCopy)
    {
      v21 |= self->_isWiFiBroughtUp;
    }

    v23 = self->_handshakeCounter + 1;
    self->_handshakeCounter = v23;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10053FA10;
    v41[3] = &unk_100BDFD98;
    v41[4] = self;
    v42 = v23;
    v43 = deviceCopy;
    v44 = v22;
    v24 = objc_retainBlock(v41);
    if (v21)
    {
      v25 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = @"down";
        if (deviceCopy)
        {
          v26 = @"up";
        }

        v27 = &stru_100C06028;
        if (!v22)
        {
          v27 = @"don't ";
        }

        *buf = 138412546;
        v51 = v26;
        v52 = 2112;
        v53 = v27;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "_startUDPLinkHandshakeForDefaultDevice bring %@ WiFi, %@send handshake now", buf, 0x16u);
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

      (v24[2])(v24, 0);
    }

    else
    {
      v28 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = @"down";
        if (deviceCopy)
        {
          v29 = @"up";
        }

        *buf = 138412802;
        v51 = v29;
        if (v22)
        {
          v30 = &stru_100C06028;
        }

        else
        {
          v30 = @"don't ";
        }

        v52 = 2112;
        v53 = v30;
        v54 = 2048;
        v55 = 0x4024000000000000;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "_startUDPLinkHandshakeForDefaultDevice bring %@ WiFi, %@send handshake in %.1f seconds", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        v31 = deviceCopy ? @"up" : @"down";
        v32 = v22 ? &stru_100C06028 : @"don't ";
        v38 = v32;
        v39 = 0x4024000000000000;
        v37 = v31;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v38 = v32;
          v39 = 0x4024000000000000;
          v37 = v31;
          _IDSLogV();
        }
      }

      [(IDSLinkManager *)self _createWiFiAssociationPowerAssertion:10.0, v37, v38, v39];
      v40 = v24;
      IDSTransportThreadAddBlockAfter();
    }

    LOBYTE(v5) = 1;
    return v5;
  }

  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "LinkManager requires BT, skip WiFi handshake.", buf, 2u);
  }

  v5 = os_log_shim_legacy_logging_enabled();
  if (v5)
  {
    v5 = _IDSShouldLogTransport();
    if (v5)
    {
      _IDSLogTransport();
      v5 = _IDSShouldLog();
      if (v5)
      {
LABEL_102:
        _IDSLogV();
LABEL_95:
        LOBYTE(v5) = 0;
      }
    }
  }

  return v5;
}

- (void)_processLinkChangeForDefaultDeviceFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();
  v11 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = fromCopy;
    v34 = 2112;
    v35 = toCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "process link change for default paired device (oldLink:%@, newLink:%@).", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v30 = fromCopy;
      v31 = toCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v30 = fromCopy;
        v31 = toCopy;
        _IDSLogV();
      }
    }
  }

  v12 = v9 & 1;
  v13 = isKindOfClass ^ v9 & 1;
  if (v13)
  {
    self->_isDefaultDeviceUsingBTLink = v9 & 1;
  }

  if (toCopy)
  {
    v14 = kIDSDefaultPairedDeviceID;
    CFDictionarySetValue(self->_deviceIDToCurrentLink, kIDSDefaultPairedDeviceID, toCopy);
    if ((v12 | v10))
    {
      [(IDSLinkManager *)self _connectivityChangedForDefaultDevice:v12 isCloudConnected:v10 & 1];
      if ((v13 & 1) == 0)
      {
        goto LABEL_25;
      }

      v15 = 0;
      goto LABEL_19;
    }

    if (!self->_isCentral && self->_doesDefaultDevicePreferInfraWiFi)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v14 = kIDSDefaultPairedDeviceID;
    if (kIDSDefaultPairedDeviceID)
    {
      deviceIDToCurrentLink = self->_deviceIDToCurrentLink;
      if (deviceIDToCurrentLink)
      {
        CFDictionaryRemoveValue(deviceIDToCurrentLink, kIDSDefaultPairedDeviceID);
      }
    }
  }

  v15 = 1;
  v17 = 1;
  if ((v13 & 1) == 0)
  {
LABEL_24:
    self->_hasDelayedNoConnectivityNotification = v17;
    [(IDSLinkManager *)self _connectivityChangedForDefaultDevice:0 isCloudConnected:self->_lastSentDefaultDeviceCloudConnectivity, v30, v31];
    goto LABEL_25;
  }

LABEL_19:
  v18 = IMGetDomainValueForKey();
  v19 = v18;
  if (v18 && [v18 BOOLValue] && !self->_doesDefaultDevicePreferInfraWiFi)
  {
    v29 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Skip wifi handshake due to disabled range extension via defaults.", buf, 2u);
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

    v17 = 0;
  }

  else
  {
    v17 = [(IDSLinkManager *)self _startUDPLinkHandshakeForDefaultDevice:isKindOfClass & 1 immediately:self->_doesDefaultDevicePreferInfraWiFi, v30, v31];
  }

  if (v15)
  {
    goto LABEL_24;
  }

LABEL_25:
  if (v12)
  {
    defaultLinkType = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      defaultLinkType = 2;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        defaultLinkType = [toCopy defaultLinkType];
      }

      else
      {
        defaultLinkType = 0;
      }
    }
  }

  if (self->_currentDefaultDeviceLinkType != defaultLinkType)
  {
    linkTypeString = [toCopy linkTypeString];
    if (linkTypeString)
    {
      v22 = linkTypeString;
    }

    else
    {
      v22 = @"NoLink";
    }

    v23 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      currentDefaultDeviceLinkType = self->_currentDefaultDeviceLinkType;
      *buf = 134218498;
      v33 = currentDefaultDeviceLinkType;
      v34 = 2048;
      v35 = defaultLinkType;
      v36 = 2112;
      v37 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Link type changed from %lu to %lu, current link: %@", buf, 0x20u);
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

    self->_currentDefaultDeviceLinkType = defaultLinkType;
    if (defaultLinkType == 1)
    {
      [(IDSLinkManager *)self disconnectGlobalLinkForDevice:v14 isReinitiating:0 completionHandler:0];
      [(IDSLinkManager *)self _clearWiFiAssociationPowerAssertion];
      [(IDSLinkManager *)self _bringUpWiFi:0];
    }

    v25 = [NSDictionary alloc];
    v26 = [NSNumber numberWithUnsignedInteger:self->_currentDefaultDeviceLinkType];
    v27 = [v25 initWithObjectsAndKeys:{v26, @"IDSLinkType", 0}];

    IDSPowerLogDictionary();
    if (defaultLinkType == 2 && self->_doesDefaultDevicePreferInfraWiFi)
    {
      [(IDSLinkManager *)self _subscribeToWRMForLinkRecommendation:0];
    }

    else
    {
      [(IDSLinkManager *)self _unsubscribeFromWRMForLinkRecommendation];
    }

    v28 = +[IDSWRMExchange sharedInstance];
    [v28 handleActiveLinkChange:{-[IDSLinkManager _getWRMLinkTypeFromIDSLinkType:](self, "_getWRMLinkTypeFromIDSLinkType:", self->_currentDefaultDeviceLinkType)}];
  }
}

- (id)_selectBestLink:(id)link
{
  linkCopy = link;
  allValues = [linkCopy allValues];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    headerOverhead = 255;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 state] == 4 && objc_msgSend(v11, "headerOverhead") < headerOverhead)
        {
          headerOverhead = [v11 headerOverhead];
          v12 = v11;

          v7 = v12;
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_setBestLinkToCurrent:(id)current
{
  currentCopy = current;
  Value = 0;
  if (currentCopy && self->_deviceIDToCurrentLink)
  {
    Value = CFDictionaryGetValue(self->_deviceIDToCurrentLink, currentCopy);
  }

  v6 = Value;
  v7 = 0;
  if (currentCopy)
  {
    cbuuidToLinks = self->_cbuuidToLinks;
    v9 = 0;
    if (cbuuidToLinks)
    {
      v7 = CFDictionaryGetValue(cbuuidToLinks, currentCopy);
      if (v7)
      {
        v9 = [(IDSLinkManager *)self _selectBestLink:v7];
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->_cbuuidToLinks;
    deviceIDToCurrentLink = self->_deviceIDToCurrentLink;
    *buf = 138413314;
    v30 = currentCopy;
    v31 = 2112;
    v32 = deviceIDToCurrentLink;
    v33 = 2112;
    v34 = v12;
    v35 = 2112;
    v36 = v6;
    v37 = 2112;
    v38 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "_setBestLinkToCurrent cbuuid %@ _deviceIDToCurrentLink %@ _cbuuidToLinks %@ oldlink %@ newlink %@", buf, 0x34u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v27 = v6;
    v28 = v9;
    v25 = self->_deviceIDToCurrentLink;
    v26 = self->_cbuuidToLinks;
    v23 = currentCopy;
    _IDSLogV();
  }

  if (v9 != v6)
  {
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      deviceUniqueID = [(NSMutableDictionary *)v9 deviceUniqueID];
      *buf = 138413058;
      v30 = v6;
      v31 = 2112;
      v32 = v9;
      v33 = 2112;
      v34 = currentCopy;
      v35 = 2112;
      v36 = deviceUniqueID;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "set current link from %@ to %@ for cbuuid %@ deviceUniqueID %@", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        [(NSMutableDictionary *)v9 deviceUniqueID];
        v27 = v26 = currentCopy;
        v23 = v6;
        v25 = v9;
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          [(NSMutableDictionary *)v9 deviceUniqueID:v6];
          v27 = v26 = currentCopy;
          v23 = v6;
          v25 = v9;
          _IDSLogV();
        }
      }
    }

    if ([(NSMutableDictionary *)currentCopy isEqualToString:kIDSDefaultPairedDeviceID, v23, v25, v26, v27, v28]&& !self->_hasFixedDestination)
    {
      [(IDSLinkManager *)self _processLinkChangeForDefaultDeviceFrom:v6 to:v9];
      goto LABEL_52;
    }

    if (v9)
    {
      CFDictionarySetValue(self->_deviceIDToCurrentLink, currentCopy, v9);
      if (self->_hasFixedDestination)
      {
        [(IDSLinkManager *)self _connectivityChangedForDefaultDevice:1 isCloudConnected:0];
        goto LABEL_52;
      }

      v16 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = currentCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "sending UTunController didConnectForDevice %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v24 = currentCopy;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v24 = currentCopy;
            _IDSLogV();
          }
        }
      }

      alternateDelegate = [(NSMutableDictionary *)v9 alternateDelegate];
      v18 = alternateDelegate;
      if (alternateDelegate)
      {
        [alternateDelegate link:self didConnectForDeviceUniqueID:0 cbuuid:currentCopy];
      }

      else
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained link:self didConnectForDeviceUniqueID:0 cbuuid:currentCopy];
      }
    }

    else
    {
      if (currentCopy)
      {
        v15 = self->_deviceIDToCurrentLink;
        if (v15)
        {
          CFDictionaryRemoveValue(v15, currentCopy);
        }
      }

      if (self->_hasFixedDestination)
      {
        [(IDSLinkManager *)self _connectivityChangedForDefaultDevice:0 isCloudConnected:0];
        goto LABEL_52;
      }

      v19 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = currentCopy;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "sending UTunController didDisconnectForDevice %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v24 = currentCopy;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v24 = currentCopy;
            _IDSLogV();
          }
        }
      }

      alternateDelegate2 = [(NSMutableDictionary *)v6 alternateDelegate];
      v18 = alternateDelegate2;
      if (alternateDelegate2)
      {
        [alternateDelegate2 link:self didDisconnectForDeviceUniqueID:0 cbuuid:currentCopy];
      }

      else
      {
        v22 = objc_loadWeakRetained(&self->_delegate);
        [v22 link:self didDisconnectForDeviceUniqueID:0 cbuuid:currentCopy];
      }
    }
  }

LABEL_52:
}

- (id)_newUDPLinkForDeviceUniqueID:(id)d cbuuid:(id)cbuuid IPVersion:(unint64_t)version port:(unsigned __int16)port
{
  portCopy = port;
  dCopy = d;
  cbuuidCopy = cbuuid;
  v12 = 0;
  v13 = 1;
  if (cbuuidCopy)
  {
    cbuuidToLinks = self->_cbuuidToLinks;
    if (cbuuidToLinks)
    {
      v15 = CFDictionaryGetValue(cbuuidToLinks, cbuuidCopy);
      v12 = v15;
      if (v15)
      {
        v16 = CFDictionaryGetValue(v15, @"IDSLinkLocalUDPKey");
        if (v16)
        {
          v17 = v16;
          goto LABEL_28;
        }

        v13 = 0;
      }
    }
  }

  v18 = [[IDSUDPLink alloc] initWithDeviceUniqueID:dCopy cbuuid:cbuuidCopy];
  [(NSMutableDictionary *)v18 setDelegate:self];
  if (v13)
  {
    v12 = [NSMutableDictionary dictionaryWithObject:v18 forKey:@"IDSLinkLocalUDPKey"];
    if (v12)
    {
      v19 = self->_cbuuidToLinks;
      v20 = cbuuidCopy;
      v21 = v12;
LABEL_12:
      CFDictionarySetValue(v19, v20, v21);
    }
  }

  else if (v18)
  {
    v20 = @"IDSLinkLocalUDPKey";
    v19 = v12;
    v21 = v18;
    goto LABEL_12;
  }

  [(NSMutableDictionary *)v18 setPort:portCopy];
  [(NSMutableDictionary *)v18 setAllowsLinkLocal:self->_hasFixedDestination];
  v22 = [(NSMutableDictionary *)v18 newSocketWithIPVersion:version wantsAWDL:0 wantsWiFi:1 wantsCellular:0];
  v23 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    [(NSMutableDictionary *)v18 state];
    if ([(NSMutableDictionary *)v18 state]> 6)
    {
      v24 = "UnexpectedState";
    }

    else
    {
      v24 = _IDSLinkStateStrings[[(NSMutableDictionary *)v18 state]];
    }

    *buf = 138412802;
    v29 = v18;
    v30 = 2080;
    v31 = v24;
    v32 = 2048;
    v33 = [v22 count];
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "created new UDPLink %@ state %s with %lu interfaces", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    [(NSMutableDictionary *)v18 state];
    v25 = [(NSMutableDictionary *)v18 state]> 6 ? "UnexpectedState" : _IDSLinkStateStrings[[(NSMutableDictionary *)v18 state]];
    v27 = [v22 count];
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      [(NSMutableDictionary *)v18 state:v18];
      if ([(NSMutableDictionary *)v18 state]<= 6)
      {
        [(NSMutableDictionary *)v18 state];
      }

      [v22 count];
      _IDSLogV();
    }
  }

  v17 = v18;

LABEL_28:
  return v17;
}

- (id)_newUDPGlobalLinkForDeviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  dCopy = d;
  cbuuidCopy = cbuuid;
  v8 = 0;
  v9 = 1;
  if (cbuuidCopy)
  {
    cbuuidToLinks = self->_cbuuidToLinks;
    if (cbuuidToLinks)
    {
      v11 = CFDictionaryGetValue(cbuuidToLinks, cbuuidCopy);
      v8 = v11;
      if (v11)
      {
        v12 = CFDictionaryGetValue(v11, @"IDSLinkGlobalUDPKey");
        if (v12)
        {
          v13 = v12;
          goto LABEL_23;
        }

        v9 = 0;
      }
    }
  }

  v13 = [[IDSUDPGlobalLink alloc] initWithDeviceUniqueID:dCopy cbuuid:cbuuidCopy];
  [(IDSUDPGlobalLink *)v13 setDelegate:self];
  if (v9)
  {
    v8 = [NSMutableDictionary dictionaryWithObject:v13 forKey:@"IDSLinkGlobalUDPKey"];
    if (v8)
    {
      v14 = self->_cbuuidToLinks;
      v15 = cbuuidCopy;
      v16 = v8;
LABEL_12:
      CFDictionarySetValue(v14, v15, v16);
    }
  }

  else if (v13)
  {
    v15 = @"IDSLinkGlobalUDPKey";
    v14 = v8;
    v16 = v13;
    goto LABEL_12;
  }

  v17 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    [(IDSUDPGlobalLink *)v13 state];
    if ([(IDSUDPGlobalLink *)v13 state]> 6)
    {
      v18 = "UnexpectedState";
    }

    else
    {
      v18 = _IDSLinkStateStrings[[(IDSUDPGlobalLink *)v13 state]];
    }

    *buf = 138412546;
    v22 = v13;
    v23 = 2080;
    v24 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "created new UDPGlobalLink %@ state %s", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [(IDSUDPGlobalLink *)v13 state];
    if ([(IDSUDPGlobalLink *)v13 state]<= 6)
    {
      [(IDSUDPGlobalLink *)v13 state];
    }

    _IDSLogV();
  }

LABEL_23:
  v19 = v13;

  return v19;
}

- (id)_newGlobalLinkForDeviceUniqueID:(id)d cbuuid:(id)cbuuid options:(id)options
{
  dCopy = d;
  cbuuidCopy = cbuuid;
  optionsCopy = options;
  if (self->_hasFixedDestination)
  {
    v11 = 0;
  }

  else
  {
    v12 = [(NSMutableDictionary *)self->_cbuuidToLinks objectForKeyedSubscript:cbuuidCopy];
    v13 = [(NSMutableDictionary *)self->_globalLinkConfigurationsBySessionID objectForKeyedSubscript:cbuuidCopy];
    v14 = [(IDSLinkManager *)self globalLinkForSessionID:cbuuidCopy];
    if (v14)
    {
      v11 = v14;
    }

    else
    {
      v15 = [objc_alloc(+[IDSGlobalLink getGLClassWithOptions:](IDSGlobalLink getGLClassWithOptions:{optionsCopy)), "initWithDeviceUniqueID:cbuuid:", dCopy, cbuuidCopy}];
      [v13 configureGlobalLink:v15];
      [v15 setDelegate:self];
      Mutable = [optionsCopy mutableCopy];
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      }

      if ([cbuuidCopy isEqualToString:kIDSDefaultPairedDeviceID])
      {
        [(__CFDictionary *)Mutable setObject:&__kCFBooleanTrue forKeyedSubscript:IDSGlobalLinkOptionForceRelayKey];
      }

      v17 = [[IDSGlobalLinkBlocks alloc] initWithBlocks:&stru_100BDFE00 qraAWDBlock:&stru_100BDFE40 qraCONBlock:&stru_100BDFE80 qraDISBlock:&stru_100BDFEA0];
      [(__CFDictionary *)Mutable setObject:v17 forKeyedSubscript:IDSGlobalLinkOptionQRABlockKey];
      [v15 startWithOptions:Mutable];
      if (!v12)
      {
        v12 = +[NSMutableDictionary dictionary];
        [(NSMutableDictionary *)self->_cbuuidToLinks setObject:v12 forKeyedSubscript:cbuuidCopy];
      }

      [v12 setObject:v15 forKeyedSubscript:@"IDSLinkGlobalKey"];
      v18 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        [v15 state];
        if ([v15 state] > 6)
        {
          v19 = "UnexpectedState";
        }

        else
        {
          v19 = _IDSLinkStateStrings[[v15 state]];
        }

        *buf = 138412802;
        v26 = v15;
        v27 = 2112;
        v28 = cbuuidCopy;
        v29 = 2080;
        v30 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "created new GlobalLink %@ for session %@ (=> cbuuid), state %s.", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        [v15 state];
        if ([v15 state] > 6)
        {
          v20 = "UnexpectedState";
        }

        else
        {
          v20 = _IDSLinkStateStrings[[v15 state]];
        }

        v23 = cbuuidCopy;
        v24 = v20;
        v22 = v15;
        _IDSLogV();
      }

      [(IDSLinkManager *)self _startNetworkInterfaceListener:1, v22, v23, v24];
      [(IDSLinkManager *)self _startCellularDataStatusListener:1];
      v11 = v15;
    }
  }

  return v11;
}

- (void)_bringUpWiFi:(BOOL)fi
{
  if (fi)
  {
    if (self->_shouldBringWiFiDown)
    {
      v4 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "resetting _shouldBringWiFiDown to NO", buf, 2u);
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

      self->_shouldBringWiFiDown = 0;
    }

    if (!self->_isWiFiBroughtUp)
    {
      v5 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "enable AutoAssociation and WoW now", buf, 2u);
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

      *&self->_isWiFiBroughtUp = 1;
      if (self->_isCentral && self->_wifiDevice && !self->_isWiFiAssociated)
      {
        ids_monotonic_time();
        self->_WiFiAssociationStartTime = v6;
      }

      v7 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1005429E4;
      block[3] = &unk_100BD6ED0;
      block[4] = self;
      dispatch_async(v7, block);
    }
  }

  else if (self->_isWiFiBroughtUp)
  {
    deviceIDToGlobalLinkUp = self->_deviceIDToGlobalLinkUp;
    v9 = kIDSDefaultPairedDeviceID;
    if (deviceIDToGlobalLinkUp)
    {
      v10 = kIDSDefaultPairedDeviceID == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      Value = 0;
    }

    else
    {
      Value = CFDictionaryGetValue(deviceIDToGlobalLinkUp, kIDSDefaultPairedDeviceID);
    }

    bOOLValue = [Value BOOLValue];
    if (self->_isDefaultDeviceOnPhoneCall)
    {
      v13 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Deferring disabling AutoAssociation and WoW because we are on a phone call", buf, 2u);
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

      self->_shouldBringWiFiDown = 1;
    }

    else if (bOOLValue)
    {
      if (self->_currentDefaultDeviceLinkType == 1)
      {
        v14 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Deferring disabling AutoAssociation and WoW, wait for GlobalLink disconnect.", buf, 2u);
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

        [(IDSLinkManager *)self disconnectGlobalLinkForDevice:v9 isReinitiating:0 completionHandler:0];
      }

      else
      {
        v20 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          currentDefaultDeviceLinkType = self->_currentDefaultDeviceLinkType;
          *buf = 67109120;
          v26 = currentDefaultDeviceLinkType;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Deferring disabling AutoAssociation and WoW, current linkType:%d.", buf, 8u);
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
      v15 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Disable AutoAssociation and WoW now", buf, 2u);
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

      *&self->_isWiFiBroughtUp = 0;
      if (self->_isCentral)
      {
        v16 = 0;
        self->_WiFiAssociationStartTime = 0.0;
        cbuuidToLinks = self->_cbuuidToLinks;
        if (cbuuidToLinks)
        {
          v18 = 0;
          if (v9)
          {
            v19 = CFDictionaryGetValue(cbuuidToLinks, v9);
            v16 = v19;
            if (v19)
            {
              v18 = CFDictionaryGetValue(v19, @"IDSLinkLocalUDPKey");
              if (v18)
              {
                [v16 removeObjectForKey:@"IDSLinkLocalUDPKey"];
              }
            }

            else
            {
              v18 = 0;
            }
          }
        }

        else
        {
          v18 = 0;
        }
      }

      v22 = im_primary_queue();
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100542A74;
      v23[3] = &unk_100BD6ED0;
      v23[4] = self;
      dispatch_async(v22, v23);
    }
  }
}

- (void)_removeLinkForDeviceID:(id)d linkKey:(id)key verifyWithLink:(id)link
{
  dCopy = d;
  keyCopy = key;
  linkCopy = link;
  v11 = 0;
  if (dCopy)
  {
    cbuuidToLinks = self->_cbuuidToLinks;
    v13 = 0;
    if (cbuuidToLinks)
    {
      v14 = CFDictionaryGetValue(cbuuidToLinks, dCopy);
      v13 = v14;
      v11 = 0;
      if (keyCopy)
      {
        if (v14)
        {
          v11 = CFDictionaryGetValue(v14, keyCopy);
          if (v11)
          {
            if (!linkCopy || [(__CFString *)linkCopy isEqual:v11])
            {
              v15 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                v16 = @"a BT/BTLE link";
                if (linkCopy)
                {
                  v16 = linkCopy;
                }

                *buf = 138412546;
                v18 = v16;
                v19 = 2112;
                v20 = dCopy;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "removing %@ from links for device %@", buf, 0x16u);
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

              if (objc_opt_respondsToSelector())
              {
                [v11 invalidate];
              }

              CFDictionaryRemoveValue(v13, keyCopy);
              [(IDSLinkManager *)self _setBestLinkToCurrent:dCopy];
            }
          }
        }
      }
    }
  }

  else
  {
    v13 = 0;
  }
}

- (void)_removeAllLinksForDeviceID:(id)d
{
  key = d;
  if (key && (cbuuidToLinks = self->_cbuuidToLinks) != 0)
  {
    v5 = CFDictionaryGetValue(cbuuidToLinks, key);
    [v5 enumerateKeysAndObjectsUsingBlock:&stru_100BDFEE0];
  }

  else
  {
    [0 enumerateKeysAndObjectsUsingBlock:&stru_100BDFEE0];
    v5 = 0;
    if (!key)
    {
      goto LABEL_7;
    }
  }

  v6 = self->_cbuuidToLinks;
  if (v6)
  {
    CFDictionaryRemoveValue(v6, key);
  }

LABEL_7:
  [(IDSLinkManager *)self _setBestLinkToCurrent:?];
}

- (BOOL)_hasGlobalLinkConnectingOrConnected
{
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    cbuuidToLinks = self->_cbuuidToLinks;
    *buf = 138412290;
    v22 = cbuuidToLinks;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_hasGlobalLinkConnectingOrConnected: _cbuuidToLinks: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v15 = self->_cbuuidToLinks;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v15 = self->_cbuuidToLinks;
        _IDSLogV();
      }
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  allValues = [(NSMutableDictionary *)self->_cbuuidToLinks allValues];
  v6 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if (v9)
        {
          v10 = CFDictionaryGetValue(v9, @"IDSLinkGlobalKey");
          if (v10)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSMutableDictionary *)v10 state]<= 4)
            {
              v12 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v22 = v10;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ is still connecting or connected.", buf, 0xCu);
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

              v11 = 1;
              goto LABEL_28;
            }
          }
        }

        else
        {
          v10 = 0;
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_28:

  return v11;
}

- (void)_startNetworkInterfaceListener:(BOOL)listener
{
  dynamicStore = self->_dynamicStore;
  if (listener)
  {
    if (!dynamicStore)
    {
      context.version = 0;
      context.info = self;
      context.retain = &_CFRetain;
      context.release = &_CFRelease;
      context.copyDescription = 0;
      v5 = SCDynamicStoreCreate(0, @"com.apple.idslinkmanager.networkinterfacelistener", sub_1005433D4, &context);
      self->_dynamicStore = v5;
      if (v5)
      {
        v6 = SCDynamicStoreSetNotificationKeys(v5, 0, &off_100C3DD30);
        v7 = self->_dynamicStore;
        if (v6)
        {
          v8 = im_primary_queue();
          SCDynamicStoreSetDispatchQueue(v7, v8);

          v9 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *v11 = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "network interface listener started", v11, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
LABEL_17:
                _IDSLogV();
              }
            }
          }
        }

        else
        {
          CFRelease(self->_dynamicStore);
          self->_dynamicStore = 0;
        }
      }
    }
  }

  else if (dynamicStore)
  {
    SCDynamicStoreSetDispatchQueue(dynamicStore, 0);
    CFRelease(self->_dynamicStore);
    self->_dynamicStore = 0;
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(context.version) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "network interface listener stopped", &context, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          goto LABEL_17;
        }
      }
    }
  }
}

- (void)_startCellularDataStatusListener:(BOOL)listener
{
  if (listener)
  {
    if (!self->_cellularDataStatusListenerStarted)
    {
      self->_cellularDataStatusListenerStarted = 1;
      v4 = +[IDSCellularLinkMonitor sharedInstance];
      [v4 addCellularLinkDelegate:self];

      v5 = +[IDSCellularLinkMonitor sharedInstance];
      [v5 registerCellularDataStatusNotification:1];

      v6 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "cellular data status listener started", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
LABEL_13:
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }
    }
  }

  else if (self->_cellularDataStatusListenerStarted)
  {
    self->_cellularDataStatusListenerStarted = 0;
    v7 = +[IDSCellularLinkMonitor sharedInstance];
    [v7 removeCellularLinkDelegate:self];

    v8 = +[IDSCellularLinkMonitor sharedInstance];
    [v8 registerCellularDataStatusNotification:0];

    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "cellular data status listener stopped", v10, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        goto LABEL_13;
      }
    }
  }
}

- (unint64_t)sendPacketBuffer:(id *)buffer toDeviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  dCopy = d;
  cbuuidCopy = cbuuid;
  if (buffer->var0)
  {
    v10 = (*buffer->var0 >> 5) & 1;
  }

  else
  {
    v10 = 0;
  }

  if (self->_isInternalInstall || self->_demoMode)
  {
    if (!self->_reporterTimer)
    {
      ids_monotonic_time();
      v11 = [(IDSLinkManager *)self generateLinkReport:0 forceReport:?];
    }

    if (self->_hasFixedDestination)
    {
      var2 = buffer->var2;
      if (!self->_deviceIDToUDPDestinations)
      {
        goto LABEL_30;
      }

      Value = 0;
      v14 = kIDSDefaultPairedDeviceID;
      if (self->_deviceIDToCurrentLink && kIDSDefaultPairedDeviceID)
      {
        Value = CFDictionaryGetValue(self->_deviceIDToCurrentLink, kIDSDefaultPairedDeviceID);
      }

      v15 = Value;
      if (cbuuidCopy)
      {
        deviceIDToUDPDestinations = self->_deviceIDToUDPDestinations;
        if (deviceIDToUDPDestinations)
        {
          v17 = CFDictionaryGetValue(deviceIDToUDPDestinations, cbuuidCopy);
          if (v17)
          {
            v18 = v17;
            v19 = [v15 sendPacketBuffer:buffer destination:v17 toDeviceID:0];
            v20 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              if (v19 > 0xF)
              {
                v21 = "UnexpectedSendResult";
              }

              else
              {
                v21 = _IDSLinkSendResultStrings[v19];
              }

              *buf = 138412802;
              v59 = v15;
              v60 = 2048;
              *v61 = var2;
              *&v61[8] = 2080;
              *&v61[10] = v21;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "sending a packet over %@ (%zdB) = %s", buf, 0x20u);
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

            goto LABEL_136;
          }
        }
      }

      v27 = [cbuuidCopy isEqualToString:v14];

      if ((v27 & 1) == 0)
      {
LABEL_30:
        v15 = 0;
        if (cbuuidCopy)
        {
          deviceIDToCurrentLink = self->_deviceIDToCurrentLink;
          if (deviceIDToCurrentLink)
          {
            v29 = CFDictionaryGetValue(deviceIDToCurrentLink, cbuuidCopy);
            v15 = v29;
            if (v29)
            {
              if ([v29 state] == 4)
              {
                v19 = [v15 sendPacketBuffer:buffer toDeviceUniqueID:dCopy cbuuid:cbuuidCopy];
                v30 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
                  if (v19 > 0xF)
                  {
                    v31 = "UnexpectedSendResult";
                  }

                  else
                  {
                    v31 = _IDSLinkSendResultStrings[v19];
                  }

                  *buf = 138412802;
                  v59 = v15;
                  v60 = 2048;
                  *v61 = var2;
                  *&v61[8] = 2080;
                  *&v61[10] = v31;
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "sending a packet over %@ (%zdB) = %s", buf, 0x20u);
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

LABEL_136:

                if (v19 == 13 || !v19)
                {
                  v54 = vdupq_n_s64(1uLL);
                  v54.i64[0] = var2;
                  *&self->_totalBytesSent = vaddq_s64(*&self->_totalBytesSent, v54);
                  goto LABEL_113;
                }

                goto LABEL_39;
              }
            }
          }
        }
      }

      _IDSLinkPacketBufferRelease();
      v19 = 6;
LABEL_39:
      ++self->_totalPacketsDropped;
      goto LABEL_113;
    }
  }

  if (!buffer->var10)
  {
    goto LABEL_86;
  }

  currentDefaultDeviceLinkType = self->_currentDefaultDeviceLinkType;
  if (currentDefaultDeviceLinkType - 3 > 1)
  {
    if (currentDefaultDeviceLinkType != 1)
    {
      if (currentDefaultDeviceLinkType != 2 || !buffer->var7)
      {
        goto LABEL_86;
      }

      v32 = [(IDSLinkManager *)self globalLinkForSessionID:cbuuidCopy];
      v33 = v32;
      if (v32 && [v32 state] == 4)
      {
        v34 = v33;
        v35 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v59 = v34;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "use %@ for cloud enabled packet.", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v55 = v34;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v55 = v34;
              _IDSLogV();
            }
          }
        }
      }

      else
      {
        v34 = 0;
      }

      goto LABEL_76;
    }

    if (!buffer->var11)
    {
      goto LABEL_86;
    }

    v36 = 0;
    if (!cbuuidCopy)
    {
      v38 = 0;
      v34 = 0;
      goto LABEL_75;
    }

    cbuuidToLinks = self->_cbuuidToLinks;
    v38 = 0;
    v34 = 0;
    if (cbuuidToLinks)
    {
      v39 = CFDictionaryGetValue(cbuuidToLinks, cbuuidCopy);
      v36 = v39;
      if (v39)
      {
        v40 = CFDictionaryGetValue(v39, @"IDSLinkBTDatagramKey");
        v38 = v40;
        if (v40 && [v40 state] == 4)
        {
          v38 = v38;
          v34 = v38;
          goto LABEL_75;
        }
      }

      else
      {
        v38 = 0;
      }

      v34 = 0;
    }

LABEL_75:

LABEL_76:
    if (v34)
    {
      if (!buffer->var8)
      {
        goto LABEL_123;
      }

      v41 = 0;
      if (cbuuidCopy && self->_deviceIDToCurrentLink)
      {
        v41 = CFDictionaryGetValue(self->_deviceIDToCurrentLink, cbuuidCopy);
      }

      if (v34 == v41)
      {
LABEL_123:
        v43 = 0;
      }

      else
      {
        v42 = 0;
        if (cbuuidCopy && self->_deviceIDToCurrentLink)
        {
          v42 = CFDictionaryGetValue(self->_deviceIDToCurrentLink, cbuuidCopy);
        }

        v43 = v42;
      }

      if ([v34 state] == 4)
      {
        if (v43)
        {
          v47 = _IDSLinkPacketBufferClone();
          v46 = 0;
        }

        else
        {
          v47 = 0;
          v46 = 1;
        }

        goto LABEL_91;
      }

      goto LABEL_127;
    }

LABEL_86:
    if (!cbuuidCopy || (v44 = self->_deviceIDToCurrentLink) == 0 || (v45 = CFDictionaryGetValue(v44, cbuuidCopy)) == 0)
    {
      ++self->_totalPacketsDropped;
      v48 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v59 = cbuuidCopy;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "no current link for %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v55 = cbuuidCopy;
        _IDSLogV();
      }

      if (([cbuuidCopy isEqualToString:{kIDSDefaultPairedDeviceID, v55}] & 1) == 0 && !buffer->var7)
      {
        v49 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v59 = cbuuidCopy;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "No current link for %@ -- asking WiProx to connect.", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v57 = cbuuidCopy;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v57 = cbuuidCopy;
              _IDSLogV();
            }
          }
        }

        v50 = +[IDSWPLinkManager sharedInstance];
        [v50 connectToPeer:cbuuidCopy];
      }

      v34 = 0;
      v43 = 0;
      goto LABEL_111;
    }

    v34 = v45;
    v43 = 0;
    if ([v45 state] == 4)
    {
      v46 = 1;
      v47 = 0;
LABEL_91:
      if (v10)
      {
        kdebug_trace();
      }

      v19 = [(IDSLinkManager *)self _sendPacketBuffer:buffer toDeviceUniqueID:dCopy cbuuid:cbuuidCopy link:v34, v55];
      if (v46)
      {
        if (v47)
        {
          _IDSLinkPacketBufferRelease();
        }
      }

      else
      {
        v52 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v59 = v43;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "use %@ for control message", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v56 = v43;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v56 = v43;
              _IDSLogV();
            }
          }
        }

        if (![(IDSLinkManager *)self _sendPacketBuffer:v47 toDeviceUniqueID:dCopy cbuuid:cbuuidCopy link:v43, v56])
        {
          v19 = 0;
        }
      }

      goto LABEL_112;
    }

LABEL_127:
    ++self->_totalPacketsDropped;
    v53 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v59 = cbuuidCopy;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "dropped data for device %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    if (!buffer->var7)
    {
      [(IDSLinkManager *)self startLinkForDeviceUniqueID:dCopy cbuuid:cbuuidCopy];
    }

LABEL_111:
    _IDSLinkPacketBufferRelease();
    v19 = 6;
LABEL_112:

    goto LABEL_113;
  }

  if (buffer->var7)
  {
    goto LABEL_86;
  }

  ++self->_totalPacketsDropped;
  v23 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = buffer->var2;
    v25 = self->_currentDefaultDeviceLinkType;
    totalPacketsDropped = self->_totalPacketsDropped;
    *buf = 134218496;
    v59 = v24;
    v60 = 1024;
    *v61 = v25;
    *&v61[4] = 2048;
    *&v61[6] = totalPacketsDropped;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "dropping a packet (%zdB) over link type (%d), #dropped: %llu.", buf, 0x1Cu);
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

  _IDSLinkPacketBufferRelease();
  v19 = 6;
LABEL_113:

  return v19;
}

- (unint64_t)_sendPacketBuffer:(id *)buffer toDeviceUniqueID:(id)d cbuuid:(id)cbuuid link:(id)link
{
  dCopy = d;
  cbuuidCopy = cbuuid;
  linkCopy = link;
  var2 = buffer->var2;
  var10 = buffer->var10;
  v15 = [linkCopy sendPacketBuffer:buffer toDeviceUniqueID:dCopy cbuuid:cbuuidCopy];
  v16 = v15;
  if (var10 && v15 != 0)
  {
    v18 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      if (v16 > 0xF)
      {
        v19 = "UnexpectedSendResult";
      }

      else
      {
        v19 = _IDSLinkSendResultStrings[v16];
      }

      *buf = 138412802;
      v23 = linkCopy;
      v24 = 2048;
      v25 = var2;
      v26 = 2080;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "sending a packet over %@ (%zdB) = %s", buf, 0x20u);
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

  if (v16 != 13 && v16)
  {
    v20 = 216;
  }

  else
  {
    self->_totalBytesSent += var2;
    v20 = 192;
  }

  ++*(&self->super.isa + v20);

  return v16;
}

- (unint64_t)sendPacketBufferArray:(id *)array arraySize:(int)size toDeviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  v7 = *&size;
  dCopy = d;
  cbuuidCopy = cbuuid;
  v12 = [(IDSLinkManager *)self globalLinkForSessionID:cbuuidCopy];
  v13 = v12;
  if (v12)
  {
    if ([v12 state] == 4)
    {
      v14 = v13;
      v15 = v14;
      if (v7 < 1)
      {
        v16 = 0;
      }

      else
      {
        v16 = 0;
        v17 = v7;
        arrayCopy = array;
        do
        {
          v19 = *arrayCopy++;
          v16 += *(v19 + 16);
          --v17;
        }

        while (v17);
      }

      v20 = [v14 sendPacketBufferArray:array arraySize:v7 toDeviceUniqueID:dCopy cbuuid:cbuuidCopy];
      if (v20)
      {
        v22 = 216;
      }

      else
      {
        self->_totalBytesSent += v16;
        v22 = 192;
      }

      *(&self->super.isa + v22) = (*(&self->super.isa + v22) + v7);
      goto LABEL_18;
    }

    v20 = 6;
  }

  else
  {
    v20 = 12;
  }

  self->_totalPacketsDropped += v7;
  if (v7 >= 1)
  {
    v21 = v7;
    do
    {
      ++array;
      _IDSLinkPacketBufferRelease();
      --v21;
    }

    while (v21);
  }

  v15 = 0;
LABEL_18:

  return v20;
}

- (void)flushBuffer:(unint64_t)buffer toDeviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  dCopy = d;
  cbuuidCopy = cbuuid;
  v9 = cbuuidCopy;
  if (!self->_hasFixedDestination)
  {
    v10 = 0;
    if (cbuuidCopy)
    {
      cbuuidToLinks = self->_cbuuidToLinks;
      v12 = 0;
      if (cbuuidToLinks)
      {
        v13 = CFDictionaryGetValue(cbuuidToLinks, v9);
        v10 = v13;
        if (v13)
        {
          v14 = CFDictionaryGetValue(v13, @"IDSLinkBTKey");
          v12 = v14;
          if (v14)
          {
            [v14 flushBuffer:buffer];
          }
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }
}

- (void)startLocalSetup
{
  if (!self->_hasFixedDestination)
  {
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "startLocalSetup called", v4, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    [(IDSLinkManager *)self addPairedDevice:@"LOCAL-SETUP-STARTED"];
    [(IDSLinkManager *)self _startNetworkInterfaceListener:1];
    [(IDSLinkManager *)self _startCellularDataStatusListener:1];
  }
}

- (void)obliterateConnectionInfo
{
  if (!self->_hasFixedDestination)
  {
    self->_mayBringUpWiFi = 0;
    [(IDSLinkManager *)self _bringUpWiFi:0];
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "obliterateConnectionInfo called", buf, 2u);
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

    [(IDSLinkManager *)self _removeAllLinksForDeviceID:kIDSDefaultPairedDeviceID];
    [(IDSLinkManager *)self deletePairedDevice:0];
    if (![(IDSLinkManager *)self _hasGlobalLinkConnectingOrConnected])
    {
      [(IDSLinkManager *)self _startNetworkInterfaceListener:0];
      [(IDSLinkManager *)self _startCellularDataStatusListener:0];
    }

    localWiFiAddressUsedForDefaultDevice = self->_localWiFiAddressUsedForDefaultDevice;
    if (localWiFiAddressUsedForDefaultDevice)
    {
      self->_localWiFiAddressUsedForDefaultDevice = 0;
    }

    if (self->_doesDefaultDevicePreferInfraWiFi)
    {
      self->_doesDefaultDevicePreferInfraWiFi = 0;
      v5 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "reset preferInfraWiFi.", buf, 2u);
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

    v6 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"NO";
      if (self->_lastSentDefaultDeviceNearby)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      if (self->_lastSentDefaultDeviceConnectivity)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      lastSentDefaultPeerConnectivity = self->_lastSentDefaultPeerConnectivity;
      if (self->_lastSentDefaultDeviceCloudConnectivity)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      *buf = 138413058;
      if (lastSentDefaultPeerConnectivity)
      {
        v7 = @"YES";
      }

      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "reset last sent default peer states (deviceNearby:%@, deviceConnectivity:%@, deviceCloudConnectivity:%@, peerConnectivity:%@).", buf, 0x2Au);
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

    *&self->_lastSentDefaultDeviceNearby = 0;
    if (self->_isDefaultDeviceOnPhoneCall)
    {
      self->_isDefaultDeviceOnPhoneCall = 0;
      v12 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "reset phone call state.", buf, 2u);
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
}

- (void)addPairedDevice:(id)device
{
  deviceCopy = device;
  if (!self->_hasFixedDestination)
  {
    btLinkManager = self->_btLinkManager;
    if (btLinkManager)
    {
      pairedDevice = [(IDSBTLinkManager *)btLinkManager pairedDevice];
      v7 = [pairedDevice isEqualToString:deviceCopy];

      if (v7)
      {
        v8 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v16 = deviceCopy;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "addPairedDevice for the same UUID %@ - Ignoring", buf, 0xCu);
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
        v11 = im_primary_queue();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10054505C;
        block[3] = &unk_100BD6ED0;
        v12 = deviceCopy;
        v14 = v12;
        dispatch_async(v11, block);

        [(IDSLinkManager *)self _removeAllLinksForDeviceID:kIDSDefaultPairedDeviceID];
        [(IDSBTLinkManager *)self->_btLinkManager updatePairedDevice:v12];
      }
    }

    else
    {
      v9 = [[IDSBTLinkManager alloc] initWithDelegate:self pairedDevice:deviceCopy];
      v10 = self->_btLinkManager;
      self->_btLinkManager = v9;

      if (self->_shouldStartBTLinkManager)
      {
        [(IDSBTLinkManager *)self->_btLinkManager start];
      }
    }
  }
}

- (void)connectPairedDevice:(id)device
{
  deviceCopy = device;
  v5 = deviceCopy;
  if (!self->_hasFixedDestination)
  {
    if (deviceCopy && (-[IDSBTLinkManager pairedDevice](self->_btLinkManager, "pairedDevice"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 isEqualToString:v6], v6, v7))
    {
      [(IDSBTLinkManager *)self->_btLinkManager connect];
    }

    else
    {
      v8 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v10 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "connectPairedDevice for unknown UUID %@ - Ignoring", buf, 0xCu);
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
}

- (void)deletePairedDevice:(id)device
{
  deviceCopy = device;
  v5 = deviceCopy;
  if (!self->_hasFixedDestination)
  {
    if (deviceCopy && (-[IDSBTLinkManager pairedDevice](self->_btLinkManager, "pairedDevice"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 isEqualToString:v6], v6, !v7))
    {
      v12 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v5;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "deletePairedDevice for unknown UUID %@ - Ignoring", buf, 0xCu);
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
      v8 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "deletePairedDevice for %@", buf, 0xCu);
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

      v9 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10054565C;
      block[3] = &unk_100BD6ED0;
      v14 = v5;
      dispatch_async(v9, block);

      self->_isDefaultDeviceNearby = 0;
      [(IDSLinkManager *)self _nearbyChangedForDefaultDevice];
      v10 = kIDSDefaultPairedDeviceID;
      [(IDSLinkManager *)self disconnectGlobalLinkForDevice:kIDSDefaultPairedDeviceID isReinitiating:0 completionHandler:0];
      [(IDSLinkManager *)self stopGlobalLinkForDevice:v10];
      [(IDSBTLinkManager *)self->_btLinkManager obliterateConnectionInfo];
      [(IDSBTLinkManager *)self->_btLinkManager stop];
      btLinkManager = self->_btLinkManager;
      self->_btLinkManager = 0;

      [(IDSLinkManager *)self _removeAllLinksForDeviceID:v10];
    }
  }
}

- (void)setPreferInfraWiFi:(BOOL)fi
{
  if (self->_hasFixedDestination)
  {
    return;
  }

  if (self->_requireBT)
  {
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "LinkManager requires BT, ignore preferInfraWiFi request.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
LABEL_16:
          _IDSLogV();
        }
      }
    }
  }

  else if (self->_isCentral)
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "preferInfraWiFi must not be initiated from this device", v12, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          goto LABEL_16;
        }
      }
    }
  }

  else if (fi)
  {
    if (self->_doesDefaultDevicePreferInfraWiFi)
    {
      return;
    }

    if (self->_localWiFiAddressUsedForDefaultDevice)
    {
      v6 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "switching to preferInfraWiFi mode", v11, 2u);
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

      self->_doesDefaultDevicePreferInfraWiFi = 1;
      if (self->_isDefaultDeviceUsingBTLink)
      {
        [(IDSLinkManager *)self _connectivityChangedForDefaultDevice:0 isCloudConnected:self->_lastSentDefaultDeviceCloudConnectivity];
      }

      [(IDSLinkManager *)self _startUDPLinkHandshakeForDefaultDevice:1 immediately:1];
    }

    else
    {
      v8 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "preferInfraWiFi requested but no local IP available - ignoring", v10, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            goto LABEL_16;
          }
        }
      }
    }
  }

  else if (self->_doesDefaultDevicePreferInfraWiFi)
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "switching back to Magnet/InfraWiFi mode", v9, 2u);
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

    [(IDSLinkManager *)self _suspendBTLink:0 cbuuid:kIDSDefaultPairedDeviceID];
  }
}

- (BOOL)isConnectedToDeviceID:(id)d
{
  result = 0;
  if (d)
  {
    deviceIDToCurrentLink = self->_deviceIDToCurrentLink;
    if (deviceIDToCurrentLink)
    {
      return CFDictionaryGetValue(deviceIDToCurrentLink, d) != 0;
    }
  }

  return result;
}

- (void)triggerBTCorruptionRecoveryForCBUUID:(id)d
{
  v4 = 0;
  key = d;
  if (key)
  {
    Value = 0;
    if (self->_cbuuidToLinks)
    {
      Value = CFDictionaryGetValue(self->_cbuuidToLinks, key);
      v4 = Value;
      if (Value)
      {
        v6 = CFDictionaryGetValue(Value, @"IDSLinkBTKey");
        if (v6)
        {
          v7 = v6;
          [v6 triggerBTCorruptionRecovery];

          goto LABEL_9;
        }

        Value = CFDictionaryGetValue(v4, @"IDSLinkBTLEKey");
      }
    }
  }

  else
  {
    Value = 0;
  }

  [Value triggerBTCorruptionRecovery];
LABEL_9:
}

- (void)setRequireBT:(BOOL)t
{
  if (self->_requireBT != t)
  {
    tCopy = t;
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (tCopy)
      {
        v6 = @"YES";
      }

      *buf = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "LinkManager requires BT: %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    self->_requireBT = tCopy;
  }
}

- (void)setShouldStartBTLinkManager:(BOOL)manager
{
  if (self->_shouldStartBTLinkManager != manager)
  {
    self->_shouldStartBTLinkManager = manager;
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_shouldStartBTLinkManager)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      *buf = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "LinkManager shouldStartBTLinkManager: %@.", buf, 0xCu);
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

    btLinkManager = self->_btLinkManager;
    if (self->_shouldStartBTLinkManager)
    {
      if (btLinkManager)
      {
        [(IDSBTLinkManager *)btLinkManager start];
      }
    }

    else if (btLinkManager)
    {
      [(IDSBTLinkManager *)btLinkManager obliterateConnectionInfo];
      [(IDSBTLinkManager *)self->_btLinkManager stop];
    }
  }
}

- (void)startLinkForDeviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  dCopy = d;
  cbuuidCopy = cbuuid;
  v8 = cbuuidCopy;
  if (cbuuidCopy && ([cbuuidCopy isEqualToString:kIDSDefaultPairedDeviceID] & 1) == 0 && !self->_hasFixedDestination)
  {
    deviceIDToCurrentLink = self->_deviceIDToCurrentLink;
    if (deviceIDToCurrentLink)
    {
      deviceIDToCurrentLink = CFDictionaryGetValue(deviceIDToCurrentLink, v8);
    }

    v10 = deviceIDToCurrentLink;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v17 = v8;
        v18 = 2112;
        v19 = dCopy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Already have BTLE link for cbuuid %@ deviceUniqueID %@", buf, 0x16u);
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
      v12 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v17 = v8;
        v18 = 2112;
        v19 = dCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No connected BTLE link for cbuuid %@ deviceUniqueID %@ -- asking WiProx to connect.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v14 = v8;
          v15 = dCopy;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v14 = v8;
            v15 = dCopy;
            _IDSLogV();
          }
        }
      }

      v13 = [IDSWPLinkManager sharedInstance:v14];
      [v13 connectToPeer:v8];
    }
  }
}

- (void)stopLinkForDeviceUniqueID:(id)d cbuuid:(id)cbuuid disconnectWP:(BOOL)p
{
  pCopy = p;
  dCopy = d;
  cbuuidCopy = cbuuid;
  v10 = cbuuidCopy;
  if (cbuuidCopy && ([cbuuidCopy isEqualToString:kIDSDefaultPairedDeviceID] & 1) == 0 && !self->_hasFixedDestination)
  {
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = dCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Asked to disconnect from cbuuid %@ deviceUniqueID %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v13 = v10;
        v14 = dCopy;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v13 = v10;
          v14 = dCopy;
          _IDSLogV();
        }
      }
    }

    [(IDSLinkManager *)self _removeAllLinksForDeviceID:v10, v13, v14];
    if (pCopy)
    {
      v12 = +[IDSWPLinkManager sharedInstance];
      [v12 disconnectFromPeer:v10];
    }
  }
}

- (void)startUDPGlobalLinkForDevice:(id)device
{
  deviceCopy = device;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "startUDPGlobalLinkForDevice %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v6 = deviceCopy;
    _IDSLogV();
  }
}

- (void)stopUDPGlobalLinkForDevice:(id)device
{
  deviceCopy = device;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "stopUDPGlobalLinkForDevice %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v11 = deviceCopy;
    _IDSLogV();
  }

  v6 = 0;
  if (deviceCopy)
  {
    cbuuidToLinks = self->_cbuuidToLinks;
    v8 = 0;
    if (cbuuidToLinks)
    {
      v9 = CFDictionaryGetValue(cbuuidToLinks, deviceCopy);
      v6 = v9;
      if (v9)
      {
        v8 = CFDictionaryGetValue(v9, @"IDSLinkGlobalUDPKey");
        if (v8)
        {
          v10 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v13 = deviceCopy;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Remove UDPGlobalLink for device %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v11 = deviceCopy;
            _IDSLogV();
          }

          if (objc_opt_respondsToSelector())
          {
            [v8 invalidate];
          }

          CFDictionaryRemoveValue(v6, @"IDSLinkGlobalUDPKey");
        }
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  [(IDSLinkManager *)self _removeAllLinksForDeviceID:deviceCopy, v11];
}

- (void)createConnectionDataForDevice:(id)device localPartyID:(id)d dataReadyHandler:(id)handler
{
  deviceCopy = device;
  dCopy = d;
  handlerCopy = handler;
  v11 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = deviceCopy;
    v28 = 2112;
    v29 = dCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "createConnectionDataForDevice - deviceID=%@, localPartyID=%@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v21 = deviceCopy;
      v22 = dCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v21 = deviceCopy;
        v22 = dCopy;
        _IDSLogV();
      }
    }
  }

  v12 = 0;
  if (deviceCopy && (cbuuidToLinks = self->_cbuuidToLinks) != 0 && (v14 = CFDictionaryGetValue(cbuuidToLinks, deviceCopy), (v12 = v14) != 0) && (v15 = CFDictionaryGetValue(v14, @"IDSLinkGlobalUDPKey")) != 0)
  {
    v16 = v15;
    if (objc_opt_respondsToSelector())
    {
      [v16 createConnectionData:dCopy dataReadyHandler:handlerCopy];
    }
  }

  else
  {
    v17 = [NSDictionary dictionaryWithObject:@"No UDPGlobalLink is found" forKey:NSLocalizedDescriptionKey, v21, v22];
    v18 = [NSError errorWithDomain:@"UDPGlobalLink" code:8006 userInfo:v17];

    v19 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "No UDPGlobalLink is found.", buf, 2u);
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

    if (handlerCopy)
    {
      v20 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100546BF8;
      block[3] = &unk_100BD7298;
      v25 = handlerCopy;
      v24 = v18;
      dispatch_async(v20, block);
    }

    v16 = 0;
  }
}

- (void)processRemoteConnectionDataForDevice:(id)device remoteConnectionData:(id)data completionHandler:(id)handler
{
  deviceCopy = device;
  dataCopy = data;
  handlerCopy = handler;
  v11 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "processRemoteConnectionDataForDevice - %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v21 = deviceCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v21 = deviceCopy;
        _IDSLogV();
      }
    }
  }

  v12 = 0;
  if (deviceCopy && (cbuuidToLinks = self->_cbuuidToLinks) != 0 && (v14 = CFDictionaryGetValue(cbuuidToLinks, deviceCopy), (v12 = v14) != 0) && (v15 = CFDictionaryGetValue(v14, @"IDSLinkGlobalUDPKey")) != 0)
  {
    v16 = v15;
    if (objc_opt_respondsToSelector())
    {
      [v16 processRemoteConnectionData:dataCopy completionHandler:handlerCopy];
    }
  }

  else
  {
    v17 = [NSDictionary dictionaryWithObject:@"No UDPGlobalLink is found" forKey:NSLocalizedDescriptionKey, v21];
    v18 = [NSError errorWithDomain:@"UDPGlobalLink" code:8006 userInfo:v17];

    v19 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "No UDPGlobalLink is found.", buf, 2u);
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

    if (handlerCopy)
    {
      v20 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100546F94;
      block[3] = &unk_100BD7298;
      v24 = handlerCopy;
      v23 = v18;
      dispatch_async(v20, block);
    }

    v16 = 0;
  }
}

- (void)startConnectionForDevice:(id)device isInitiator:(BOOL)initiator remotePartyID:(id)d useStunMICheck:(BOOL)check
{
  checkCopy = check;
  initiatorCopy = initiator;
  deviceCopy = device;
  dCopy = d;
  v12 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"NO";
    *buf = 138412802;
    v19 = deviceCopy;
    v20 = 2112;
    if (initiatorCopy)
    {
      v13 = @"YES";
    }

    v21 = v13;
    v22 = 2112;
    v23 = dCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "startConnectionForDevice - deviceID=%@ isInitiator=%@ remotePartyID=%@", buf, 0x20u);
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

  v14 = 0;
  if (deviceCopy)
  {
    cbuuidToLinks = self->_cbuuidToLinks;
    v16 = 0;
    if (cbuuidToLinks)
    {
      v17 = CFDictionaryGetValue(cbuuidToLinks, deviceCopy);
      v14 = v17;
      if (v17)
      {
        v16 = CFDictionaryGetValue(v17, @"IDSLinkGlobalUDPKey");
        if (v16 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v16 startConnectionForDevice:deviceCopy isInitiator:initiatorCopy remotePartyID:dCopy useStunMICheck:checkCopy];
        }
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 0;
  }
}

- (void)startBTDatagramLinkForDeviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  dCopy = d;
  cbuuidCopy = cbuuid;
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = dCopy;
    v13 = 2112;
    v14 = cbuuidCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "startBTDatagramLinkForDeviceUniqueID - deviceID %@ cbuuid %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v9 = dCopy;
      v10 = cbuuidCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v9 = dCopy;
        v10 = cbuuidCopy;
        _IDSLogV();
      }
    }
  }

  [(IDSBTLinkManager *)self->_btLinkManager startDatagramLink:v9];
}

- (void)stopBTDatagramLinkForDeviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  dCopy = d;
  cbuuidCopy = cbuuid;
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = dCopy;
    v13 = 2112;
    v14 = cbuuidCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "stopBTDatagramLinkForDeviceUniqueID - deviceID %@ cbuuid %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v9 = dCopy;
      v10 = cbuuidCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v9 = dCopy;
        v10 = cbuuidCopy;
        _IDSLogV();
      }
    }
  }

  [(IDSBTLinkManager *)self->_btLinkManager stopDatagramLink:v9];
}

- (void)_startAllocateRequestForDevice:(id)device
{
  deviceCopy = device;
  v5 = deviceCopy;
  if (self->_hasFixedDestination)
  {
    goto LABEL_41;
  }

  v6 = [deviceCopy isEqualToString:kIDSDefaultPairedDeviceID];
  if (!v6 || self->_currentDefaultDeviceLinkType != 1)
  {
    v8 = [(IDSLinkManager *)self _newGlobalLinkForDeviceUniqueID:0 cbuuid:v5 options:0];
    state = [v8 state];
    if (state < 2)
    {
      if ([v8 hasReachableInterface:0] & 1) != 0 || (objc_msgSend(v8, "hasReachableInterface:", 1))
      {
        Value = 0;
        if (v5 && self->_deviceIDToGlobalLinkUp)
        {
          Value = CFDictionaryGetValue(self->_deviceIDToGlobalLinkUp, v5);
        }

        if (![Value BOOLValue])
        {
          if (!self->_deviceIDToGlobalLinkUp)
          {
            Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            deviceIDToGlobalLinkUp = self->_deviceIDToGlobalLinkUp;
            self->_deviceIDToGlobalLinkUp = Mutable;
          }

          CFDictionarySetValue(self->_deviceIDToGlobalLinkUp, v5, &__kCFBooleanTrue);
          if (v6)
          {
            self->_delayedDefaultDeviceAllocateRequest = 0;
          }

          v17 = im_primary_queue();
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100547A20;
          block[3] = &unk_100BD6E40;
          v21 = v5;
          selfCopy = self;
          v18 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
          dispatch_async(v17, v18);

          goto LABEL_40;
        }

        v14 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v24 = v5;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "skip allocate request for %@, link is already up.", buf, 0xCu);
        }

        if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLogTransport() || (_IDSLogTransport(), !_IDSShouldLog()))
        {
LABEL_40:

          goto LABEL_41;
        }
      }

      else
      {
        v19 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v24 = v5;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "skip allocate request for %@, no local interface.", buf, 0xCu);
        }

        if (!os_log_shim_legacy_logging_enabled())
        {
          goto LABEL_40;
        }

        if (!_IDSShouldLogTransport())
        {
          goto LABEL_40;
        }

        _IDSLogTransport();
        if (!_IDSShouldLog())
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v10 = state;
      v11 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = _IDSLinkStateStrings[v10];
        *buf = 138412546;
        v24 = v5;
        v25 = 2080;
        v26 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "skip allocate request for %@, link is in state [%s].", buf, 0x16u);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_40;
      }

      if (!_IDSShouldLogTransport())
      {
        goto LABEL_40;
      }

      _IDSLogTransport();
      if (!_IDSShouldLog())
      {
        goto LABEL_40;
      }
    }

    _IDSLogV();
    goto LABEL_40;
  }

  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "skip allocate request for %@, BT is connected.", buf, 0xCu);
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

LABEL_41:
}

- (void)startGlobalLinkForDevice:(id)device
{
  deviceCopy = device;
  v5 = deviceCopy;
  if (self->_hasFixedDestination)
  {
    goto LABEL_36;
  }

  v6 = [deviceCopy isEqualToString:kIDSDefaultPairedDeviceID];
  if (!v6 || self->_currentDefaultDeviceLinkType != 1)
  {
    v8 = [(IDSLinkManager *)self _newGlobalLinkForDeviceUniqueID:0 cbuuid:v5 options:0];
    state = [v8 state];
    v10 = state;
    if (state < 2)
    {
      v13 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = _IDSLinkStateStrings[v10];
        *buf = 138412802;
        v21 = v8;
        v22 = 2112;
        v23 = v5;
        v24 = 2080;
        v25 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "start new GlobalLink %@ for %@, link state [%s].", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v18 = v5;
          v19 = _IDSLinkStateStrings[v10];
          v17 = v8;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v18 = v5;
            v19 = _IDSLinkStateStrings[v10];
            v17 = v8;
            _IDSLogV();
          }
        }
      }

      if (v6)
      {
        [(IDSLinkManager *)self _bringUpWiFi:1];
        self->_delayedDefaultDeviceAllocateRequest = 1;
        [(IDSLinkManager *)self _startCellularDataStatusListener:1];
      }

      [(IDSLinkManager *)self _startAllocateRequestForDevice:v5, v17, v18, v19];
      goto LABEL_35;
    }

    if ((state - 7) > 0xFFFFFFFFFFFFFFFDLL)
    {
      if (!v6 || self->_delayedDefaultDeviceAllocateRequest)
      {
        goto LABEL_35;
      }

      self->_delayedDefaultDeviceAllocateRequest = 1;
      v15 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = _IDSLinkStateStrings[v10];
        *buf = 138412546;
        v21 = v5;
        v22 = 2080;
        v23 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "delayed allcoate request for %@, link state is [%s].", buf, 0x16u);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_35;
      }

      if (!_IDSShouldLogTransport())
      {
        goto LABEL_35;
      }

      _IDSLogTransport();
      if (!_IDSShouldLog())
      {
        goto LABEL_35;
      }
    }

    else
    {
      v11 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = _IDSLinkStateStrings[v10];
        *buf = 138412546;
        v21 = v5;
        v22 = 2080;
        v23 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "skip starting GlobalLink for %@, link state is [%s].", buf, 0x16u);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_35;
      }

      if (!_IDSShouldLogTransport())
      {
        goto LABEL_35;
      }

      _IDSLogTransport();
      if (!_IDSShouldLog())
      {
        goto LABEL_35;
      }
    }

    _IDSLogV();
LABEL_35:

    goto LABEL_36;
  }

  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "skip starting GlobalLink for %@, BT is connected.", buf, 0xCu);
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

LABEL_36:
}

- (void)clearGlobalLinkForSessionID:(id)d
{
  dCopy = d;
  cbuuidToLinks = self->_cbuuidToLinks;
  if (cbuuidToLinks)
  {
    v7 = dCopy;
    cbuuidToLinks = [cbuuidToLinks objectForKeyedSubscript:dCopy];
    dCopy = v7;
    if (cbuuidToLinks)
    {
      v6 = cbuuidToLinks;
      [cbuuidToLinks setObject:0 forKeyedSubscript:@"IDSLinkGlobalKey"];

      dCopy = v7;
    }
  }

  _objc_release_x1(cbuuidToLinks, dCopy);
}

- (void)stopGlobalLinkForDevice:(id)device
{
  deviceCopy = device;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "stopGlobalLinkForDevice %@ (=> cbuuid)", buf, 0xCu);
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

  v6 = [(IDSLinkManager *)self globalLinkForSessionID:deviceCopy, v12];
  if (v6)
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = deviceCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Remove %@ for session %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v13 = v6;
        v14 = deviceCopy;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v13 = v6;
          v14 = deviceCopy;
          _IDSLogV();
        }
      }
    }

    [v6 invalidate];
    [(IDSLinkManager *)self clearGlobalLinkForSessionID:deviceCopy];
  }

  if (!self->_btLinkManager && ![(IDSLinkManager *)self _hasGlobalLinkConnectingOrConnected])
  {
    [(IDSLinkManager *)self _startNetworkInterfaceListener:0];
    [(IDSLinkManager *)self _startCellularDataStatusListener:0];
  }

  Value = 0;
  if (deviceCopy && self->_deviceIDToGlobalLinkUp)
  {
    Value = CFDictionaryGetValue(self->_deviceIDToGlobalLinkUp, deviceCopy);
  }

  if ([Value BOOLValue])
  {
    CFDictionarySetValue(self->_deviceIDToGlobalLinkUp, deviceCopy, &__kCFBooleanFalse);
  }

  if ([deviceCopy isEqualToString:kIDSDefaultPairedDeviceID])
  {
    self->_delayedDefaultDeviceAllocateRequest = 0;
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = deviceCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "IDSGlobalLink is brought down for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v13 = deviceCopy;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v13 = deviceCopy;
          _IDSLogV();
        }
      }
    }

    if (self->_currentDefaultDeviceLinkType != 2)
    {
      v10 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        currentDefaultDeviceLinkType = self->_currentDefaultDeviceLinkType;
        *buf = 67109120;
        LODWORD(v16) = currentDefaultDeviceLinkType;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Bring down WiFi (currentLinkType:%d).", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v13 = self->_currentDefaultDeviceLinkType;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v13 = self->_currentDefaultDeviceLinkType;
            _IDSLogV();
          }
        }
      }

      [(IDSLinkManager *)self _bringUpWiFi:0, v13];
    }
  }

  else
  {
    [(IDSLinkManager *)self _removeAllLinksForDeviceID:deviceCopy];
  }
}

- (void)connectGlobalLinkForDevice:(id)device sessionInfo:(id)info connectReadyHandler:(id)handler withLocalInterfacePreference:(int)preference
{
  v6 = *&preference;
  deviceCopy = device;
  infoCopy = info;
  handlerCopy = handler;
  if (!self->_hasFixedDestination)
  {
    if ([(__CFString *)deviceCopy isEqualToString:kIDSDefaultPairedDeviceID]&& self->_currentDefaultDeviceLinkType == 1)
    {
      v13 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v42 = deviceCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Magent is connected, skip connecting GlobalLink for %@.", buf, 0xCu);
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
      Value = 0;
      if (infoCopy && kIDSQRAllocateKey_RequestID)
      {
        Value = CFDictionaryGetValue(infoCopy, kIDSQRAllocateKey_RequestID);
      }

      v15 = Value;
      [(IDSLinkManager *)self _removeAllocateRequestForDevice:deviceCopy requestID:v15];
      v16 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v42 = v15;
        v43 = 2112;
        v44 = deviceCopy;
        v45 = 2112;
        v46 = infoCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Receive allocate response for request %@, device %@. connectGlobalLinkForDevice with sessionInfo %@.", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v34 = deviceCopy;
          v36 = infoCopy;
          v32 = v15;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v34 = deviceCopy;
            v36 = infoCopy;
            v32 = v15;
            _IDSLogV();
          }
        }
      }

      v17 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(__CFDictionary *)infoCopy objectForKeyedSubscript:kIDSQRAllocateKey_StreamInfoSubscribedStreams];
        *buf = 138412290;
        v42 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "connectGlobalLinkForDevice: sessionInfo[kIDSQRAllocateKey_StreamInfoSubscribedStreams]:%@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v19 = kIDSQRAllocateKey_StreamInfoSubscribedStreams;
          v32 = [(__CFDictionary *)infoCopy objectForKeyedSubscript:kIDSQRAllocateKey_StreamInfoSubscribedStreams];
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            v32 = [(__CFDictionary *)infoCopy objectForKeyedSubscript:v19, v32];
            _IDSLogV();
          }
        }
      }

      v20 = [(IDSLinkManager *)self _newGlobalLinkForDeviceUniqueID:0 cbuuid:deviceCopy options:infoCopy, v32, v34, v36];
      if (kIDSQRAllocateKey_AlternateDelegate)
      {
        v21 = infoCopy != 0;
      }

      else
      {
        v21 = 0;
      }

      if (v21)
      {
        v22 = CFDictionaryGetValue(infoCopy, kIDSQRAllocateKey_AlternateDelegate);
      }

      else
      {
        v22 = 0;
      }

      v23 = v22;
      v24 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v42 = v23;
        v43 = 2112;
        v44 = deviceCopy;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Set alternateDelegate %@ for %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v33 = v23;
        v35 = deviceCopy;
        _IDSLogV();
      }

      [v20 setAlternateDelegate:{v23, v33, v35}];
      if (kIDSQRAllocateKey_ClientUniquePID)
      {
        v25 = infoCopy != 0;
      }

      else
      {
        v25 = 0;
      }

      if (v25)
      {
        v26 = CFDictionaryGetValue(infoCopy, kIDSQRAllocateKey_ClientUniquePID);
      }

      else
      {
        v26 = 0;
      }

      v27 = v26;
      [v20 setClientUniquePID:{objc_msgSend(v27, "unsignedLongLongValue")}];
      if (v20)
      {
        [v20 connectWithSessionInfo:infoCopy interfaceAddress:0 joinSession:1 completionHandler:handlerCopy withLocalInterfacePreference:v6];
      }

      else
      {
        v28 = [NSDictionary dictionaryWithObject:@"No GlobalLink is found." forKey:NSLocalizedDescriptionKey];
        v37 = [NSError errorWithDomain:@"GlobalLink" code:8006 userInfo:v28];

        v29 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v42 = @"No GlobalLink is found.";
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
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

        if (handlerCopy)
        {
          v30 = im_primary_queue();
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100548FB4;
          block[3] = &unk_100BD7298;
          v40 = handlerCopy;
          v39 = v37;
          v31 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
          dispatch_async(v30, v31);
        }
      }
    }
  }
}

- (void)disconnectGlobalLinkForDevice:(id)device isReinitiating:(BOOL)reinitiating completionHandler:(id)handler
{
  reinitiatingCopy = reinitiating;
  deviceCopy = device;
  handlerCopy = handler;
  v10 = [(IDSLinkManager *)self globalLinkForSessionID:deviceCopy];
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "disconnectGlobalLinkForDevice for  %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v14 = deviceCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v14 = deviceCopy;
        _IDSLogV();
      }
    }
  }

  if ([v10 state] <= 4)
  {
    [v10 disconnectWithCompletionHandler:handlerCopy isReinitiating:reinitiatingCopy];
  }

  else
  {
LABEL_10:
    if (handlerCopy)
    {
      v12 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1005491F4;
      block[3] = &unk_100BD7270;
      v16 = handlerCopy;
      v13 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
      dispatch_async(v12, v13);
    }
  }
}

- (void)_addAllocateRequestForDevice:(id)device requestID:(id)d
{
  deviceCopy = device;
  dCopy = d;
  if (!deviceCopy || (deviceIDToAllocRequests = self->_deviceIDToAllocRequests) == 0 || (v9 = CFDictionaryGetValue(deviceIDToAllocRequests, deviceCopy)) == 0)
  {
    v9 = objc_alloc_init(NSMutableArray);
  }

  if (dCopy && v9)
  {
    CFArrayAppendValue(v9, dCopy);
  }

  if (!self->_deviceIDToAllocRequests)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v11 = self->_deviceIDToAllocRequests;
    self->_deviceIDToAllocRequests = Mutable;
  }

  v12 = v9;
  if (v9)
  {
    CFDictionarySetValue(self->_deviceIDToAllocRequests, deviceCopy, v12);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100928FB0();
  }

  v13 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = dCopy;
    v16 = 2112;
    v17 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "allocate request %@ is pending for %@", buf, 0x16u);
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

- (void)_removeAllocateRequestForDevice:(id)device requestID:(id)d
{
  dCopy = d;
  Value = 0;
  v8 = dCopy;
  if (device && self->_deviceIDToAllocRequests)
  {
    Value = CFDictionaryGetValue(self->_deviceIDToAllocRequests, device);
    dCopy = v8;
  }

  [Value removeObject:dCopy];
}

- (void)handleAllocateRequestFailureForDevice:(id)device requestID:(id)d errorCode:(int)code
{
  v5 = *&code;
  deviceCopy = device;
  dCopy = d;
  v10 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v16 = deviceCopy;
    v17 = 2112;
    v18 = dCopy;
    v19 = 1024;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "handleAllocateRequestFailureForDevice - deviceID %@, requestID %@, erroCode %d", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v13 = dCopy;
      v14 = v5;
      v12 = deviceCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v13 = dCopy;
        v14 = v5;
        v12 = deviceCopy;
        _IDSLogV();
      }
    }
  }

  [(IDSLinkManager *)self _removeAllocateRequestForDevice:deviceCopy requestID:dCopy, v12, v13, v14];
  Value = 0;
  if (deviceCopy && self->_deviceIDToGlobalLinkUp)
  {
    Value = CFDictionaryGetValue(self->_deviceIDToGlobalLinkUp, deviceCopy);
  }

  if ([Value BOOLValue])
  {
    CFDictionarySetValue(self->_deviceIDToGlobalLinkUp, deviceCopy, &__kCFBooleanFalse);
  }
}

- (void)getSessionInfo:(id)info relayGroupID:(id)d relaySessionID:(id)iD options:(id)options
{
  infoCopy = info;
  dCopy = d;
  iDCopy = iD;
  optionsCopy = options;
  Value = 0;
  if (optionsCopy && IDSGlobalLinkOptionSessionInfoRequestTypeKey)
  {
    Value = CFDictionaryGetValue(optionsCopy, IDSGlobalLinkOptionSessionInfoRequestTypeKey);
  }

  unsignedIntValue = [Value unsignedIntValue];
  v16 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v41 = dCopy;
    v42 = 2112;
    v43 = iDCopy;
    v44 = 2112;
    v45 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "get session info for group %@, session %@, options %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v37 = iDCopy;
      v39 = optionsCopy;
      v35 = dCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v37 = iDCopy;
        v39 = optionsCopy;
        v35 = dCopy;
        _IDSLogV();
      }
    }
  }

  v17 = [(IDSLinkManager *)self globalLinkForSessionID:infoCopy, v35, v37, v39];
  v18 = v17;
  if (v17 || unsignedIntValue != 1)
  {
    if (v17)
    {
      if (unsignedIntValue != 1)
      {
        v23 = optionsCopy;
LABEL_53:
        [v18 getSessionInfo:dCopy relaySessionID:iDCopy requestType:unsignedIntValue options:v23];

        goto LABEL_54;
      }

LABEL_43:
      v30 = 0;
      if (optionsCopy && IDSGlobalLinkOptionQRSessionInfoKey)
      {
        v30 = CFDictionaryGetValue(optionsCopy, IDSGlobalLinkOptionQRSessionInfoKey);
      }

      v23 = v30;
      v31 = IDSGlobalLinkOptionSessionInfoCommandFlagKey;
      v32 = [(__CFDictionary *)optionsCopy objectForKey:IDSGlobalLinkOptionSessionInfoCommandFlagKey];
      unsignedIntValue2 = [v32 unsignedIntValue];

      if (unsignedIntValue2)
      {
        v34 = [NSNumber numberWithUnsignedInt:unsignedIntValue2];
        if (v34)
        {
          CFDictionarySetValue(v23, v31, v34);
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100929038();
        }
      }

      goto LABEL_53;
    }
  }

  else
  {
    v19 = IDSGlobalLinkOptionNewLinkOptionsKey;
    if (optionsCopy)
    {
      v20 = IDSGlobalLinkOptionNewLinkOptionsKey == 0;
    }

    else
    {
      v20 = 1;
    }

    v21 = !v20;
    if (v20)
    {
      v22 = 0;
    }

    else
    {
      v22 = CFDictionaryGetValue(optionsCopy, IDSGlobalLinkOptionNewLinkOptionsKey);
    }

    v18 = [(IDSLinkManager *)self _newGlobalLinkForDeviceUniqueID:0 cbuuid:infoCopy options:v22];
    if (v18)
    {
      if (v21)
      {
        v24 = CFDictionaryGetValue(optionsCopy, v19);
        v25 = 0;
        if (v24 && kIDSQRAllocateKey_AlternateDelegate)
        {
          v25 = CFDictionaryGetValue(v24, kIDSQRAllocateKey_AlternateDelegate);
        }
      }

      else
      {
        v24 = 0;
        v25 = 0;
      }

      v26 = v25;
      v27 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v41 = v26;
        v42 = 2112;
        v43 = infoCopy;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Set alternateDelegate %@ for %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v36 = v26;
        v38 = infoCopy;
        _IDSLogV();
      }

      [v18 setAlternateDelegate:{v26, v36, v38}];
      if (kIDSQRAllocateKey_ClientUniquePID)
      {
        v28 = optionsCopy != 0;
      }

      else
      {
        v28 = 0;
      }

      if (v28)
      {
        v29 = CFDictionaryGetValue(optionsCopy, kIDSQRAllocateKey_ClientUniquePID);
      }

      else
      {
        v29 = 0;
      }

      [v18 setClientUniquePID:{objc_msgSend(v29, "unsignedLongLongValue")}];

      goto LABEL_43;
    }
  }

  v23 = optionsCopy;
LABEL_54:
}

- (void)setIsOnPhoneCall:(BOOL)call forDeviceID:(id)d
{
  callCopy = call;
  dCopy = d;
  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (callCopy)
    {
      v8 = @"YES";
    }

    *buf = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = dCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "setIsOnPhoneCall %@ for deviceID %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v9 = callCopy ? @"YES" : @"NO";
    v11 = v9;
    v12 = dCopy;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      v11 = v9;
      v12 = dCopy;
      _IDSLogV();
    }
  }

  if ([dCopy isEqualToString:{kIDSDefaultPairedDeviceID, v11, v12}])
  {
    isDefaultDeviceOnPhoneCall = self->_isDefaultDeviceOnPhoneCall;
    self->_isDefaultDeviceOnPhoneCall = callCopy;
    if (isDefaultDeviceOnPhoneCall && !callCopy && self->_shouldBringWiFiDown)
    {
      [(IDSLinkManager *)self _bringUpWiFi:0];
    }
  }
}

- (void)link:(id)link didConnectForDeviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  linkCopy = link;
  dCopy = d;
  cbuuidCopy = cbuuid;
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v28 = linkCopy;
    v29 = 2112;
    v30 = cbuuidCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ didConnectForDevice %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v18 = linkCopy;
    v19 = cbuuidCopy;
    _IDSLogV();
  }

  [(IDSLinkManager *)self _setBestLinkToCurrent:cbuuidCopy, v18, v19];
  if (self->_hasFixedDestination)
  {
    allKeys = [(NSDictionary *)self->_deviceIDToUDPDestinations allKeys];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = [allKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(allKeys);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = +[IDSWPLinkManager sharedInstance];
          [v16 setAlwaysConnectedForCBUUID:v15];
        }

        v12 = [allKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    v21 = linkCopy;
    v17 = allKeys;
    IDSTransportThreadAddBlockAfter();
  }
}

- (void)link:(id)link didDisconnectForDeviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  linkCopy = link;
  dCopy = d;
  cbuuidCopy = cbuuid;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = linkCopy;
    v17 = 2112;
    v18 = cbuuidCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ didDisconnectForDevice %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v13 = linkCopy;
    v14 = cbuuidCopy;
    _IDSLogV();
  }

  v12 = [(IDSLinkManager *)self _linkKeyForLink:linkCopy, v13, v14];
  [(IDSLinkManager *)self _removeLinkForDeviceID:cbuuidCopy linkKey:v12 verifyWithLink:linkCopy];
  if (([v12 isEqualToString:@"IDSLinkBTKey"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"IDSLinkBTLEKey"))
  {
    [(IDSBTLinkManager *)self->_btLinkManager removeLink:linkCopy];
    [(IDSWPLinkManager *)self->_wpLinkManager removeLink:linkCopy];
  }
}

- (BOOL)link:(id)link didReceivePacket:(id *)packet fromDeviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  linkCopy = link;
  dCopy = d;
  cbuuidCopy = cbuuid;
  var2 = packet->var2;
  v14 = vdupq_n_s64(1uLL);
  v14.i64[0] = var2;
  *&self->_totalBytesReceived = vaddq_s64(*&self->_totalBytesReceived, v14);
  if (var2 >= 1)
  {
    if ((*packet->var0 & 0xE0) == 0x40 && !packet->var6)
    {
      [(IDSLinkManager *)self _processLMCommandPacket:packet fromLink:linkCopy deviceUniqueID:dCopy cbuuid:cbuuidCopy];
      v17 = 1;
      goto LABEL_10;
    }

    if ((*packet->var0 & 0x20) != 0)
    {
      kdebug_trace();
    }
  }

  alternateDelegate = [linkCopy alternateDelegate];
  v16 = alternateDelegate;
  if (alternateDelegate)
  {
    v17 = [alternateDelegate link:self didReceivePacket:packet fromDeviceUniqueID:dCopy cbuuid:cbuuidCopy];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v17 = [WeakRetained link:self didReceivePacket:packet fromDeviceUniqueID:dCopy cbuuid:cbuuidCopy];
  }

LABEL_10:
  return v17;
}

- (void)link:(id)link hostAwakeDidChange:(BOOL)change deviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  cbuuid = [link cbuuid];
  v8 = [cbuuid isEqualToString:kIDSDefaultPairedDeviceID];

  if (v8)
  {
    v9 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10054A414;
    block[3] = &unk_100BDFD48;
    changeCopy = change;
    dispatch_async(v9, block);
  }
}

- (void)link:(id)link hasSpaceAvailable:(BOOL)available deviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  availableCopy = available;
  linkCopy = link;
  dCopy = d;
  cbuuidCopy = cbuuid;
  if (!self->_isCentral && self->_doesDefaultDevicePreferInfraWiFi && self->_currentDefaultDeviceLinkType == 1)
  {
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "default device is in preferInfraWiFi handshake, skip notifying BTLink hasSpaceAvailable.", v15, 2u);
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
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained link:self hasSpaceAvailable:availableCopy deviceUniqueID:dCopy cbuuid:cbuuidCopy];
  }
}

- (void)link:(id)link didReceiveSKEData:(id)data
{
  linkCopy = link;
  dataCopy = data;
  alternateDelegate = [linkCopy alternateDelegate];
  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = alternateDelegate;
    v13 = 1024;
    v14 = [dataCopy length];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "didReceiveSKEData - alternateDelegate:%@, skeData:%d bytes.", buf, 0x12u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v10 = [dataCopy length];
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        [dataCopy length];
        _IDSLogV();
      }
    }
  }

  if (alternateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [alternateDelegate link:self didReceiveSKEData:dataCopy];
  }
}

- (void)link:(id)link didReceiveKeyMaterialMessageData:(id)data fromParticipantIDs:(id)ds toParticipantID:(id)d
{
  linkCopy = link;
  dataCopy = data;
  dsCopy = ds;
  dCopy = d;
  alternateDelegate = [linkCopy alternateDelegate];
  v15 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v17 = alternateDelegate;
    v18 = 2112;
    v19 = dsCopy;
    v20 = 2112;
    v21 = dCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "didReceiveKeyMaterialMessage - alternateDelegate:%@ from %@ to %@", buf, 0x20u);
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

  if (alternateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [alternateDelegate link:self didReceiveKeyMaterialMessageData:dataCopy fromParticipantIDs:dsCopy toParticipantID:dCopy];
  }
}

- (void)link:(id)link didReceiveMaterialInfo:(id)info material:(id)material
{
  linkCopy = link;
  infoCopy = info;
  materialCopy = material;
  alternateDelegate = [linkCopy alternateDelegate];
  v12 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = alternateDelegate;
    v15 = 2112;
    v16 = infoCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "didReceiveMaterialInfo - alternateDelegate:%@ materialInfo:%@", buf, 0x16u);
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

  if (alternateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [alternateDelegate link:self didReceiveMaterialInfo:infoCopy material:materialCopy];
  }
}

- (void)link:(id)link didConnectOverCloud:(id)cloud cbuuid:(id)cbuuid
{
  linkCopy = link;
  cloudCopy = cloud;
  cbuuidCopy = cbuuid;
  if (self->_shouldStartBTLinkManager)
  {
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = cbuuidCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "didConnectOverCloud for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v14 = cbuuidCopy;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v14 = cbuuidCopy;
          _IDSLogV();
        }
      }
    }

    [(IDSLinkManager *)self _setBestLinkToCurrent:cbuuidCopy, v14];
    if ([cbuuidCopy isEqualToString:kIDSDefaultPairedDeviceID])
    {
      [(IDSLinkManager *)self _connectivityChangedForDefaultDevice:self->_lastSentDefaultDeviceConnectivity isCloudConnected:1];
    }

    else
    {
      v13 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10054AE10;
      block[3] = &unk_100BD6ED0;
      v16 = cbuuidCopy;
      dispatch_async(v13, block);
    }
  }

  else
  {
    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Not processing didConnectOverCloud in the IPsecLink path.", buf, 2u);
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

- (void)link:(id)link didFailToConnectOverCloud:(id)cloud cbuuid:(id)cbuuid
{
  linkCopy = link;
  cloudCopy = cloud;
  cbuuidCopy = cbuuid;
  v11 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = cbuuidCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "didFailToConnectOverCloud for %@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v13 = cbuuidCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v13 = cbuuidCopy;
        _IDSLogV();
      }
    }
  }

  [(IDSLinkManager *)self disconnectGlobalLinkForDevice:cbuuidCopy isReinitiating:0 completionHandler:0, v13];
  [(IDSLinkManager *)self _setBestLinkToCurrent:cbuuidCopy];
  if ([cbuuidCopy isEqualToString:kIDSDefaultPairedDeviceID])
  {
    [(IDSLinkManager *)self _connectivityChangedForDefaultDevice:self->_lastSentDefaultDeviceConnectivity isCloudConnected:0];
  }

  else
  {
    v12 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10054B090;
    block[3] = &unk_100BD6ED0;
    v15 = cbuuidCopy;
    dispatch_async(v12, block);
  }
}

- (void)link:(id)link didDisconnectOverCloud:(id)cloud cbuuid:(id)cbuuid
{
  linkCopy = link;
  cloudCopy = cloud;
  cbuuidCopy = cbuuid;
  v11 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = cbuuidCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "didDisconnectOverCloud for %@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v17 = cbuuidCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v17 = cbuuidCopy;
        _IDSLogV();
      }
    }
  }

  [(IDSLinkManager *)self stopGlobalLinkForDevice:cbuuidCopy, v17];
  [(IDSLinkManager *)self _setBestLinkToCurrent:cbuuidCopy];
  cbuuid = [linkCopy cbuuid];
  v13 = kIDSDefaultPairedDeviceID;
  v14 = [cbuuid isEqualToString:kIDSDefaultPairedDeviceID];

  if (v14)
  {
    [(IDSLinkManager *)self _connectivityChangedForDefaultDevice:self->_lastSentDefaultDeviceConnectivity isCloudConnected:0];
    if (self->_delayedDefaultDeviceAllocateRequest)
    {
      v15 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "allocation request was delayed, retry...", buf, 2u);
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

      [(IDSLinkManager *)self _startAllocateRequestForDevice:v13];
    }
  }

  else
  {
    v16 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10054B400;
    block[3] = &unk_100BD6ED0;
    v19 = cbuuidCopy;
    dispatch_async(v16, block);
  }
}

- (void)link:(id)link didConnectUnderlyingLink:(char)underlyingLink linkUUID:(id)d localAttributes:(id)attributes remoteAttributes:(id)remoteAttributes
{
  underlyingLinkCopy = underlyingLink;
  linkCopy = link;
  dCopy = d;
  attributesCopy = attributes;
  remoteAttributesCopy = remoteAttributes;
  alternateDelegate = [linkCopy alternateDelegate];
  v17 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v19 = alternateDelegate;
    v20 = 1024;
    v21 = underlyingLinkCopy;
    v22 = 2112;
    v23 = dCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "didConnectUnderlyingLink - alternateDelegate:%@, linkID:%d, linkUUID:%@.", buf, 0x1Cu);
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

  if (alternateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [alternateDelegate link:self didConnectUnderlyingLink:underlyingLinkCopy linkUUID:dCopy localAttributes:attributesCopy remoteAttributes:remoteAttributesCopy];
  }
}

- (void)link:(id)link didReceiveChildConnections:(id)connections forLinkID:(char)d
{
  dCopy = d;
  linkCopy = link;
  connectionsCopy = connections;
  alternateDelegate = [linkCopy alternateDelegate];
  v11 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v13 = alternateDelegate;
    v14 = 2112;
    v15 = connectionsCopy;
    v16 = 1024;
    v17 = dCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "didReceiveChildConnectionID - alternateDelegate:%@, connections:%@ linkID:%d", buf, 0x1Cu);
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

  if (alternateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [alternateDelegate link:self didReceiveChildConnections:connectionsCopy forLinkID:dCopy];
  }
}

- (void)link:(id)link didReceiveReliableUnicastServerMaterial:(id)material
{
  linkCopy = link;
  materialCopy = material;
  alternateDelegate = [linkCopy alternateDelegate];
  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = materialCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "didReceiveReliableUnicastServerMaterial - material: %@", buf, 0xCu);
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

  if (alternateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [alternateDelegate link:self didReceiveReliableUnicastServerMaterial:materialCopy];
  }
}

- (void)link:(id)link didDisconnectUnderlyingLinkID:(char)d linkUUID:(id)iD reason:(unsigned __int8)reason
{
  reasonCopy = reason;
  dCopy = d;
  linkCopy = link;
  iDCopy = iD;
  alternateDelegate = [linkCopy alternateDelegate];
  v13 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v15 = alternateDelegate;
    v16 = 1024;
    v17 = dCopy;
    v18 = 2112;
    v19 = iDCopy;
    v20 = 1024;
    v21 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "didDisconnectUnderlyingLinkID - alternateDelegate:%@, linkID:%d, linkUUID:%@, reason: %d", buf, 0x22u);
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

  if (alternateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [alternateDelegate link:self didDisconnectUnderlyingLinkID:dCopy linkUUID:iDCopy reason:reasonCopy];
  }
}

- (void)link:(id)link didDefaultUnderlyingLinkChangeSucceeded:(BOOL)succeeded currentDefaultLinkID:(char)d
{
  dCopy = d;
  succeededCopy = succeeded;
  linkCopy = link;
  alternateDelegate = [linkCopy alternateDelegate];
  v10 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = alternateDelegate;
    v13 = 1024;
    v14 = dCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "didDefaultUnderlyingLinkChangeSucceeded - alternateDelegate:%@, currentDefaultLinkID:%d.", buf, 0x12u);
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

  if (alternateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [alternateDelegate link:self didDefaultUnderlyingLinkChangeSucceeded:succeededCopy currentDefaultLinkID:dCopy];
  }
}

- (void)link:(id)link didWiFiNWPathFlagsChanged:(unsigned __int16)changed
{
  changedCopy = changed;
  linkCopy = link;
  alternateDelegate = [linkCopy alternateDelegate];
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v10 = alternateDelegate;
    v11 = 1024;
    v12 = changedCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "didWiFiNWPathFlagsChanged - alternateDelegate:%@, nwPathFlags:%u.", buf, 0x12u);
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

  if (alternateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [alternateDelegate link:self didWiFiNWPathFlagsChanged:changedCopy];
  }
}

- (void)link:(id)link didCellularNWPathFlagsChanged:(unsigned __int16)changed
{
  changedCopy = changed;
  linkCopy = link;
  alternateDelegate = [linkCopy alternateDelegate];
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v10 = alternateDelegate;
    v11 = 1024;
    v12 = changedCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "didCellularNWPathFlagsChanged - alternateDelegate:%@, nwPathFlags:%u.", buf, 0x12u);
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

  if (alternateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [alternateDelegate link:self didCellularNWPathFlagsChanged:changedCopy];
  }
}

- (void)link:(id)link didRATChange:(unsigned __int8)change
{
  changeCopy = change;
  linkCopy = link;
  alternateDelegate = [linkCopy alternateDelegate];
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v10 = alternateDelegate;
    v11 = 2080;
    v12 = IDSRadioAccessTechnologyToString();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "didRATChange - alternateDelegate:%@, newRAT:%s.", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      IDSRadioAccessTechnologyToString();
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        IDSRadioAccessTechnologyToString();
        _IDSLogV();
      }
    }
  }

  if (alternateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [alternateDelegate link:self didRATChange:changeCopy];
  }
}

- (void)link:(id)link didCellularMTUChange:(unsigned __int16)change
{
  changeCopy = change;
  linkCopy = link;
  alternateDelegate = [linkCopy alternateDelegate];
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v10 = alternateDelegate;
    v11 = 1024;
    v12 = changeCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "didCellularMTUChange - alternateDelegate:%@, cellular MTU:%u.", buf, 0x12u);
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

  if (alternateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [alternateDelegate link:self didCellularMTUChange:changeCopy];
  }
}

- (void)link:(id)link didGetLinkProbingStatus:(id)status
{
  statusCopy = status;
  alternateDelegate = [link alternateDelegate];
  if (alternateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [alternateDelegate link:self didGetLinkProbingStatus:statusCopy];
  }
}

- (void)terminateCallDueToIdleClientForLink:(id)link
{
  linkCopy = link;
  alternateDelegate = [linkCopy alternateDelegate];
  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = alternateDelegate;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "terminateCallDueToIdleClientForLink - alternateDelegate:%@", buf, 0xCu);
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

  if (alternateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [alternateDelegate terminateCallDueToIdleClientForLink:self];
  }
}

- (void)link:(id)link didReceiveSessionInfo:(id)info relayGroupID:(id)d relaySessionID:(id)iD status:(unsigned int)status
{
  v7 = *&status;
  linkCopy = link;
  infoCopy = info;
  dCopy = d;
  iDCopy = iD;
  alternateDelegate = [linkCopy alternateDelegate];
  v17 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v19 = dCopy;
    v20 = 2112;
    v21 = iDCopy;
    v22 = 1024;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "receive session-info for group %@, session %@, status: %u.", buf, 0x1Cu);
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

  if (alternateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [alternateDelegate link:self didReceiveSessionInfo:infoCopy relayGroupID:dCopy relaySessionID:iDCopy status:v7];
  }
}

- (void)link:(id)link didFinishConvergenceForRelaySessionID:(id)d
{
  linkCopy = link;
  dCopy = d;
  alternateDelegate = [linkCopy alternateDelegate];
  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = dCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "didFinishConvergenceForRelaySessionID: %@.", buf, 0xCu);
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

  if (alternateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [alternateDelegate link:self didFinishConvergenceForRelaySessionID:dCopy];
  }
}

- (void)link:(id)link didReceiveSessionStats:(id)stats relayGroupID:(id)d relaySessionID:(id)iD success:(BOOL)success
{
  successCopy = success;
  linkCopy = link;
  statsCopy = stats;
  dCopy = d;
  iDCopy = iD;
  alternateDelegate = [linkCopy alternateDelegate];
  v17 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"NO";
    *buf = 138412802;
    v20 = dCopy;
    v21 = 2112;
    if (successCopy)
    {
      v18 = @"YES";
    }

    v22 = iDCopy;
    v23 = 2112;
    v24 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "receive session stats for group %@, session %@, success: %@.", buf, 0x20u);
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

  if (alternateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [alternateDelegate link:self didReceiveSessionStats:statsCopy relayGroupID:dCopy relaySessionID:iDCopy success:successCopy];
  }
}

- (void)link:(id)link didReceiveReportEvent:(id)event
{
  linkCopy = link;
  eventCopy = event;
  alternateDelegate = [linkCopy alternateDelegate];
  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = alternateDelegate;
    v12 = 2112;
    v13 = eventCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "didReceiveReportEvent - alternateDelegate:%@, eventDictionary:%@", buf, 0x16u);
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

  if (alternateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [alternateDelegate link:self didReceiveReportEvent:eventCopy];
  }
}

- (void)link:(id)link didAddQREvent:(id)event
{
  eventCopy = event;
  alternateDelegate = [link alternateDelegate];
  if (alternateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [alternateDelegate link:self didAddQREvent:eventCopy];
  }
}

- (void)link:(id)link reportNoSessionState:(id)state
{
  stateCopy = state;
  alternateDelegate = [link alternateDelegate];
  if (alternateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [alternateDelegate link:self reportNoSessionState:stateCopy];
  }
}

- (void)link:(id)link didReceiveParticipantUpdate:(id)update status:(unsigned __int16)status
{
  statusCopy = status;
  updateCopy = update;
  alternateDelegate = [link alternateDelegate];
  if (alternateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [alternateDelegate link:self didReceiveParticipantUpdate:updateCopy status:statusCopy];
  }
}

- (void)link:(id)link didReceivePluginRegistration:(unint64_t)registration pluginName:(id)name
{
  nameCopy = name;
  alternateDelegate = [link alternateDelegate];
  if (alternateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [alternateDelegate link:self didReceivePluginRegistration:registration pluginName:nameCopy];
  }
}

- (void)link:(id)link didReceivePluginUnregistration:(unint64_t)unregistration pluginName:(id)name
{
  nameCopy = name;
  alternateDelegate = [link alternateDelegate];
  if (alternateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [alternateDelegate link:self didReceivePluginUnregistration:unregistration pluginName:nameCopy];
  }
}

- (void)link:(id)link didReceiveRequestToPurgeRegistration:(id)registration
{
  registrationCopy = registration;
  alternateDelegate = [link alternateDelegate];
  if (alternateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [alternateDelegate link:self didReceiveRequestToPurgeRegistration:registrationCopy];
  }
}

- (void)link:(id)link didReceivePluginDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  alternateDelegate = [link alternateDelegate];
  if (alternateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [alternateDelegate link:self didReceivePluginDisconnect:disconnectCopy];
  }
}

- (void)link:(id)link didReceiveMappedParticipantsDict:(id)dict forLinkID:(char)d
{
  dCopy = d;
  dictCopy = dict;
  alternateDelegate = [link alternateDelegate];
  if (alternateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [alternateDelegate link:self didReceiveMappedParticipantsDict:dictCopy forLinkID:dCopy];
  }
}

- (void)link:(id)link pathMTUDidChange:(unsigned __int16)change forLinkID:(char)d
{
  dCopy = d;
  changeCopy = change;
  alternateDelegate = [link alternateDelegate];
  v9 = alternateDelegate;
  if (alternateDelegate)
  {
    v11 = alternateDelegate;
    v10 = objc_opt_respondsToSelector();
    v9 = v11;
    if (v10)
    {
      [v11 link:self pathMTUDidChange:changeCopy forLinkID:dCopy];
      v9 = v11;
    }
  }
}

- (void)link:(id)link didReceiveSessionStateCounter:(unsigned int)counter
{
  v4 = *&counter;
  alternateDelegate = [link alternateDelegate];
  v7 = alternateDelegate;
  if (alternateDelegate)
  {
    v9 = alternateDelegate;
    v8 = objc_opt_respondsToSelector();
    v7 = v9;
    if (v8)
    {
      [v9 link:self didReceiveSessionStateCounter:v4];
      v7 = v9;
    }
  }
}

- (void)didReceiveBlockedIndicationForLink:(id)link reason:(unsigned int)reason
{
  v4 = *&reason;
  alternateDelegate = [link alternateDelegate];
  v7 = alternateDelegate;
  if (alternateDelegate)
  {
    v9 = alternateDelegate;
    v8 = objc_opt_respondsToSelector();
    v7 = v9;
    if (v8)
    {
      [v9 didReceiveBlockedIndicationForLink:self reason:v4];
      v7 = v9;
    }
  }
}

- (void)link:(id)link didReceiveEncryptedDataBlobs:(id)blobs
{
  blobsCopy = blobs;
  alternateDelegate = [link alternateDelegate];
  if (alternateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [alternateDelegate link:self didReceiveEncryptedDataBlobs:blobsCopy];
  }
}

- (void)link:(id)link didReceiveErrorIndicationWithCode:(unsigned int)code
{
  v4 = *&code;
  alternateDelegate = [link alternateDelegate];
  v7 = alternateDelegate;
  if (alternateDelegate)
  {
    v9 = alternateDelegate;
    v8 = objc_opt_respondsToSelector();
    v7 = v9;
    if (v8)
    {
      [v9 link:self didReceiveErrorIndicationWithCode:v4];
      v7 = v9;
    }
  }
}

- (void)manager:(id)manager didPowerStateChange:(BOOL)change
{
  changeCopy = change;
  managerCopy = manager;
  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"OFF";
    if (changeCopy)
    {
      v7 = @"ON";
    }

    *buf = 138412546;
    v10 = managerCopy;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ reported power state change: %@", buf, 0x16u);
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

  if (!changeCopy)
  {
    v8 = managerCopy;
    IDSTransportThreadAddBlock();
  }
}

- (void)manager:(id)manager linkDidConnect:(id)connect
{
  connectCopy = connect;
  v4 = connectCopy;
  IDSTransportThreadAddBlock();
}

- (void)manager:(id)manager linkDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v4 = disconnectCopy;
  IDSTransportThreadAddBlock();
}

- (void)manager:(id)manager didPairedDeviceChange:(BOOL)change
{
  changeCopy = change;
  managerCopy = manager;
  if (changeCopy && !self->_isCentral)
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = managerCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ reported paired device change.", buf, 0xCu);
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

    v8 = managerCopy;
    IDSTransportThreadAddBlock();
  }
}

- (void)_handleNetworkChanges:(id)changes
{
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = changes;
  v4 = [obj countByEnumeratingWithState:&v64 objects:v73 count:16];
  if (v4)
  {
    v5 = 0;
    v58 = 0;
    v6 = *v65;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v65 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v64 + 1) + 8 * i);
        if (([(__CFString *)v8 hasPrefix:@"State:/Network/Interface/utun", v55]& 1) == 0)
        {
          if ([(__CFString *)v8 hasPrefix:@"State:/Network/Interface/en1"])
          {
            v9 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_handleNetworkChanges ignores en1 interface", buf, 2u);
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
            v10 = [(__CFString *)v8 hasPrefix:@"State:/Network/Interface/pdp_ip"];
            v11 = SCDynamicStoreCopyValue(self->_dynamicStore, v8);
            v5 |= v10 ^ 1;
            if (v11)
            {
              TypeID = CFDictionaryGetTypeID();
              if (TypeID == CFGetTypeID(v11))
              {
                v13 = v11;
              }

              else
              {
                v13 = 0;
              }

              v15 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                if (v13)
                {
                  Value = CFDictionaryGetValue(v13, @"Addresses");
                }

                else
                {
                  Value = 0;
                }

                *buf = 138412546;
                v70 = v8;
                v71 = 2112;
                v72 = Value;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "_handleNetworkChanges %@ = %@", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
              {
                v17 = v13 ? CFDictionaryGetValue(v13, @"Addresses") : 0;
                v55 = v8;
                v56 = v17;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  if (v13)
                  {
                    v18 = CFDictionaryGetValue(v13, @"Addresses");
                  }

                  else
                  {
                    v18 = 0;
                  }

                  v55 = v8;
                  v56 = v18;
                  _IDSLogV();
                }
              }

              CFRelease(v11);
              if (([(__CFString *)v8 hasSuffix:@"/IPv4"]& 1) != 0)
              {
                LOBYTE(v58) = 1;
              }

              else
              {
                HIDWORD(v58) |= [(__CFString *)v8 hasSuffix:@"/IPv6"];
              }
            }

            else
            {
              v14 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v70 = v8;
                v71 = 2112;
                v72 = 0;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "_handleNetworkChanges %@ = %@", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  v55 = v8;
                  v56 = 0;
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
                    v55 = v8;
                    v56 = 0;
                    _IDSLogV();
                  }
                }
              }

              if (([(__CFString *)v8 hasSuffix:@"/IPv4", v55, v56]& 1) != 0)
              {
                LOBYTE(v58) = 1;
              }

              else
              {
                HIDWORD(v58) |= [(__CFString *)v8 hasSuffix:@"/IPv6"];
              }
            }
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v64 objects:v73 count:16];
    }

    while (v4);
    v57 = v5 & v58;
  }

  else
  {
    v57 = 0;
    v58 = 0;
  }

  [(NSMutableDictionary *)self->_cbuuidToLinks allKeys];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v19 = v61 = 0u;
  v20 = 0;
  v21 = [v19 countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (v21)
  {
    v22 = *v61;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v61 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v60 + 1) + 8 * j);
        cbuuidToLinks = self->_cbuuidToLinks;
        if (cbuuidToLinks)
        {
          v26 = v24 == 0;
        }

        else
        {
          v26 = 1;
        }

        if (v26)
        {
          v27 = 0;
        }

        else
        {
          v28 = CFDictionaryGetValue(cbuuidToLinks, v24);
          v27 = v28;
          if (v28)
          {
            v29 = CFDictionaryGetValue(v28, @"IDSLinkGlobalKey");

            if (v29)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v29 handleNetworkAddressChanges:v58 & 1 hasIPv6AddressChange:BYTE4(v58) & 1];
                if (((v58 ^ 1 | BYTE4(v58)) & 1) == 0)
                {
                  [v29 handleNetworkAddressChanges:0 hasIPv6AddressChange:1];
                }
              }

              v20 = v29;
            }

            else
            {
              v20 = 0;
            }
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v60 objects:v68 count:16];
    }

    while (v21);
  }

  if (v57)
  {
    v30 = +[IDSPairingManager sharedInstance];
    shouldUseIPsecLinkForDefaultPairedDevice = [v30 shouldUseIPsecLinkForDefaultPairedDevice];

    if ((shouldUseIPsecLinkForDefaultPairedDevice & 1) == 0)
    {
      v32 = kIDSDefaultPairedDeviceID;
      v33 = [(IDSLinkManager *)self _newUDPLinkForDeviceUniqueID:0 cbuuid:kIDSDefaultPairedDeviceID IPVersion:0 port:0];
      copyCurrentNetworkInterfaces = [v33 copyCurrentNetworkInterfaces];
      v35 = copyCurrentNetworkInterfaces;
      if (self->_isDefaultDeviceUsingBTLink)
      {
        if (!self->_isCentral && self->_doesDefaultDevicePreferInfraWiFi && ![copyCurrentNetworkInterfaces count])
        {
          [(IDSLinkManager *)self _suspendBTLink:0 cbuuid:v32];
LABEL_106:
          firstObject = [v35 firstObject];
          address = [firstObject address];
          [v33 reconnectWithLocalAddress:address];

          goto LABEL_107;
        }

        goto LABEL_89;
      }

      v36 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        localWiFiAddressUsedForDefaultDevice = self->_localWiFiAddressUsedForDefaultDevice;
        *buf = 138412290;
        v70 = localWiFiAddressUsedForDefaultDevice;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "_handleNetworkChanges _localWiFiAddressUsedForDefaultDevice = %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v55 = self->_localWiFiAddressUsedForDefaultDevice;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v55 = self->_localWiFiAddressUsedForDefaultDevice;
            _IDSLogV();
          }
        }
      }

      if (![v35 count])
      {
        if (self->_doesDefaultDevicePreferInfraWiFi)
        {
          [(IDSLinkManager *)self _suspendBTLink:0 cbuuid:v32];
          if (self->_isCentral)
          {
            ids_monotonic_time();
            self->_rejectedPreferInfraWiFi = v46;
            [(IDSLinkManager *)self _sendUDPLinkInterfaceAddresses:v33 toDeviceID:v32 isRetransmission:0 isReply:0];
          }
        }

        else
        {
          [(IDSLinkManager *)self _connectivityChangedForDefaultDevice:0 isCloudConnected:self->_lastSentDefaultDeviceCloudConnectivity];
        }

        goto LABEL_106;
      }

      firstObject2 = [v35 firstObject];
      v39 = firstObject2;
      if (self->_isWiFiBroughtUp)
      {
        v40 = self->_localWiFiAddressUsedForDefaultDevice;
        if (!self->_isCentral)
        {
          address2 = [firstObject2 address];
          v52 = [(IDSSockAddrWrapper *)v40 isEqualToWrapper:address2];

          firstObject3 = [v35 firstObject];
          address3 = [firstObject3 address];
          [v33 reconnectWithLocalAddress:address3];

          if ((v52 & 1) == 0)
          {
            goto LABEL_107;
          }

LABEL_90:
          if (v33)
          {
            [(IDSLinkManager *)self _sendUDPLinkInterfaceAddresses:v33 toDeviceID:v32 isRetransmission:0 isReply:0];
          }

          if (self->_delayedDefaultDeviceAllocateRequest)
          {
            v45 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "receive WiFi IP address, start QR allocation.", buf, 2u);
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

            [(IDSLinkManager *)self _startAllocateRequestForDevice:v32];
          }

          goto LABEL_107;
        }

        if (!v40 || ([firstObject2 address], v41 = objc_claimAutoreleasedReturnValue(), v42 = -[IDSSockAddrWrapper isEqualToWrapper:](v40, "isEqualToWrapper:", v41), v41, v42))
        {
          self->_shouldKeepWiFiUp = 1;

LABEL_89:
          firstObject4 = [v35 firstObject];
          address4 = [firstObject4 address];
          [v33 reconnectWithLocalAddress:address4];

          goto LABEL_90;
        }
      }

      else
      {
        [(IDSLinkManager *)self _connectivityChangedForDefaultDevice:0 isCloudConnected:self->_lastSentDefaultDeviceCloudConnectivity];
      }

      firstObject5 = [v35 firstObject];
      address5 = [firstObject5 address];
      [v33 reconnectWithLocalAddress:address5];

LABEL_107:
    }
  }
}

- (void)currentLinkType:(unint64_t *)type andRATType:(unsigned int *)tType forDeviceID:(id)d
{
  dCopy = d;
  *type = 0;
  *tType = 0;
  if ([dCopy isEqualToString:kIDSDefaultPairedDeviceID])
  {
    *type = self->_currentDefaultDeviceLinkType;
  }

  else
  {
    Value = 0;
    if (dCopy && self->_deviceIDToCurrentLink)
    {
      Value = CFDictionaryGetValue(self->_deviceIDToCurrentLink, dCopy);
    }

    v10 = Value;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      defaultLinkType = [v10 defaultLinkType];
      *type = defaultLinkType;
      if (defaultLinkType == 4)
      {
        v12 = +[IDSCellularLinkMonitor sharedInstance];
        *tType = [v12 radioAccessTechnology];
      }

      else
      {
        *tType = 0;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        *type = 2;
      }
    }

    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *type;
      v15 = *tType;
      *buf = 134218240;
      v17 = v14;
      v18 = 2048;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "LinkType %lu, RATType %lu for non-FaceTime clients", buf, 0x16u);
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

- (id)linkForCBUUID:(id)d
{
  Value = 0;
  if (d)
  {
    deviceIDToCurrentLink = self->_deviceIDToCurrentLink;
    if (deviceIDToCurrentLink)
    {
      Value = CFDictionaryGetValue(deviceIDToCurrentLink, d);
      v3 = vars8;
    }
  }

  return Value;
}

- (unint64_t)currentLinkType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:kIDSDefaultPairedDeviceID])
  {
    currentDefaultDeviceLinkType = self->_currentDefaultDeviceLinkType;
  }

  else
  {
    Value = 0;
    if (typeCopy && self->_deviceIDToCurrentLink)
    {
      Value = CFDictionaryGetValue(self->_deviceIDToCurrentLink, typeCopy);
    }

    v7 = Value;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      currentDefaultDeviceLinkType = [v7 defaultLinkType];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        currentDefaultDeviceLinkType = 2;
      }

      else
      {
        currentDefaultDeviceLinkType = 0;
      }
    }

    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v11 = typeCopy;
      v12 = 1024;
      v13 = currentDefaultDeviceLinkType;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "current link type for %@ is %d.", buf, 0x12u);
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

  return currentDefaultDeviceLinkType;
}

- (id)_getIDSLinkTypeString:(unint64_t)string
{
  if (string > 6)
  {
    return @"UnexpectedType";
  }

  else
  {
    return *(&off_100BDFFB0 + string);
  }
}

- (unint64_t)_getIDSLinkTypeFromWRMLinkType:(unint64_t)type
{
  if (type > 3)
  {
    return 6;
  }

  else
  {
    return qword_1009ABB60[type];
  }
}

- (unint64_t)_getWRMLinkTypeFromIDSLinkType:(unint64_t)type
{
  if (type - 1 > 3)
  {
    return 2;
  }

  else
  {
    return qword_1009ABB80[type - 1];
  }
}

- (void)_handleWRMLinkRecommendation:(unint64_t)recommendation
{
  recommendationCopy = recommendation;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v6 = recommendationCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "WRM recommends the link type %u, but IDS ignores WRM recommendations per rdar://problem/33602915 discussion", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)_subscribeToWRMForLinkRecommendation:(unint64_t)recommendation
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10054F20C;
  v7[3] = &unk_100BDFF28;
  v7[4] = self;
  v4 = objc_retainBlock(v7);
  v5 = +[IDSWRMExchange sharedInstance];
  v6 = dispatch_get_global_queue(-32768, 0);
  [v5 subscribeForRecommendation:v6 recommendationType:recommendation block:v4];
}

- (void)_unsubscribeFromWRMForLinkRecommendation
{
  v2 = +[IDSWRMExchange sharedInstance];
  [v2 unsubscribeForRecommendation];
}

- (void)cellularRadioAccessTechnologyDidChange:(BOOL)change
{
  changeCopy = change;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (changeCopy)
    {
      v6 = @"YES";
    }

    *buf = 138412290;
    v30 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "cellular RAT changed, usable: %@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v7 = changeCopy ? @"YES" : @"NO";
    v23 = v7;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      v23 = v7;
      _IDSLogV();
    }
  }

  if (changeCopy)
  {
    allKeys = [(NSMutableDictionary *)self->_cbuuidToLinks allKeys];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = allKeys;
    v10 = 0;
    v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = *v25;
      do
      {
        v13 = 0;
        do
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * v13);
          cbuuidToLinks = self->_cbuuidToLinks;
          if (cbuuidToLinks)
          {
            v16 = v14 == 0;
          }

          else
          {
            v16 = 1;
          }

          if (v16)
          {
            v17 = 0;
          }

          else
          {
            v18 = CFDictionaryGetValue(cbuuidToLinks, v14);
            v17 = v18;
            if (v18)
            {
              v19 = CFDictionaryGetValue(v18, @"IDSLinkGlobalKey");

              if (v19)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v19 handleCellularRATChange];
                }

                v10 = v19;
              }

              else
              {
                v10 = 0;
              }
            }
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v11);
    }

    if (!self->_delayedDefaultDeviceAllocateRequest)
    {
      goto LABEL_41;
    }

    v20 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = kIDSDefaultPairedDeviceID;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "celluar data is usable, retry QR allocation for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v21 = _IDSShouldLogTransport();
      v22 = kIDSDefaultPairedDeviceID;
      if (v21)
      {
        v23 = kIDSDefaultPairedDeviceID;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
          [(IDSLinkManager *)self _startAllocateRequestForDevice:v22, v22];
LABEL_41:

          return;
        }
      }
    }

    else
    {
      v22 = kIDSDefaultPairedDeviceID;
    }

    [(IDSLinkManager *)self _startAllocateRequestForDevice:v22, v23];
    goto LABEL_41;
  }
}

- (void)cellularSoMaskDidChange:(unsigned int)change
{
  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    changeCopy = change;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "cellular SoMask changed: %u.", buf, 8u);
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

  IDSTransportThreadAddBlock();
}

@end