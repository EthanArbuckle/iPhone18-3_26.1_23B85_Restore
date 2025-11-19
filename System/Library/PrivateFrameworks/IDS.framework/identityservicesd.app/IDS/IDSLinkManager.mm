@interface IDSLinkManager
- (BOOL)_hasGlobalLinkConnectingOrConnected;
- (BOOL)_startUDPLinkHandshakeForDefaultDevice:(BOOL)a3 immediately:(BOOL)a4;
- (BOOL)isConnectedToDeviceID:(id)a3;
- (BOOL)link:(id)a3 didReceivePacket:(id *)a4 fromDeviceUniqueID:(id)a5 cbuuid:(id)a6;
- (IDSLinkManager)initWithDelegate:(id)a3;
- (id)_getIDSLinkTypeString:(unint64_t)a3;
- (id)_linkKeyForLink:(id)a3;
- (id)_newGlobalLinkForDeviceUniqueID:(id)a3 cbuuid:(id)a4 options:(id)a5;
- (id)_newUDPGlobalLinkForDeviceUniqueID:(id)a3 cbuuid:(id)a4;
- (id)_newUDPLinkForDeviceUniqueID:(id)a3 cbuuid:(id)a4 IPVersion:(unint64_t)a5 port:(unsigned __int16)a6;
- (id)_selectBestLink:(id)a3;
- (id)copyLinkStatsDict;
- (id)generateLinkReport:(double)a3 forceReport:(BOOL)a4;
- (id)globalLinkForSessionID:(id)a3;
- (id)linkForCBUUID:(id)a3;
- (unint64_t)_getIDSLinkTypeFromWRMLinkType:(unint64_t)a3;
- (unint64_t)_getWRMLinkTypeFromIDSLinkType:(unint64_t)a3;
- (unint64_t)_sendPacketBuffer:(id *)a3 toDeviceUniqueID:(id)a4 cbuuid:(id)a5 link:(id)a6;
- (unint64_t)currentLinkType:(id)a3;
- (unint64_t)sendPacketBuffer:(id *)a3 toDeviceUniqueID:(id)a4 cbuuid:(id)a5;
- (unint64_t)sendPacketBufferArray:(id *)a3 arraySize:(int)a4 toDeviceUniqueID:(id)a5 cbuuid:(id)a6;
- (void)_addAllocateRequestForDevice:(id)a3 requestID:(id)a4;
- (void)_bringUpWiFi:(BOOL)a3;
- (void)_clearWiFiAssociationPowerAssertion;
- (void)_connectivityChangedForDefaultDevice:(BOOL)a3 isCloudConnected:(BOOL)a4;
- (void)_createWiFiAssociationPowerAssertion:(double)a3;
- (void)_createWiFiManagerClient;
- (void)_handleNetworkChanges:(id)a3;
- (void)_handleWRMLinkRecommendation:(unint64_t)a3;
- (void)_handleWiFiAutoJoinStatusChange:(int64_t)a3 WiFiSSID:(id)a4;
- (void)_nearbyChangedForDefaultDevice;
- (void)_processLMCommandPacket:(id *)a3 fromLink:(id)a4 deviceUniqueID:(id)a5 cbuuid:(id)a6;
- (void)_processLinkChangeForDefaultDeviceFrom:(id)a3 to:(id)a4;
- (void)_removeAllLinksForDeviceID:(id)a3;
- (void)_removeAllocateRequestForDevice:(id)a3 requestID:(id)a4;
- (void)_removeLinkForDeviceID:(id)a3 linkKey:(id)a4 verifyWithLink:(id)a5;
- (void)_sendUDPLinkInterfaceAddresses:(id)a3 toDeviceID:(id)a4 isRetransmission:(BOOL)a5 isReply:(BOOL)a6;
- (void)_setBestLinkToCurrent:(id)a3;
- (void)_startAllocateRequestForDevice:(id)a3;
- (void)_startCellularDataStatusListener:(BOOL)a3;
- (void)_startNetworkInterfaceListener:(BOOL)a3;
- (void)_startReporter;
- (void)_subscribeToWRMForLinkRecommendation:(unint64_t)a3;
- (void)_suspendBTLink:(BOOL)a3 cbuuid:(id)a4;
- (void)_unsubscribeFromWRMForLinkRecommendation;
- (void)addPairedDevice:(id)a3;
- (void)cellularRadioAccessTechnologyDidChange:(BOOL)a3;
- (void)cellularSoMaskDidChange:(unsigned int)a3;
- (void)clearGlobalLinkConfigurationForSession:(id)a3 configuration:(id)a4;
- (void)clearGlobalLinkForSessionID:(id)a3;
- (void)connectGlobalLinkForDevice:(id)a3 sessionInfo:(id)a4 connectReadyHandler:(id)a5 withLocalInterfacePreference:(int)a6;
- (void)connectPairedDevice:(id)a3;
- (void)createConnectionDataForDevice:(id)a3 localPartyID:(id)a4 dataReadyHandler:(id)a5;
- (void)currentLinkType:(unint64_t *)a3 andRATType:(unsigned int *)a4 forDeviceID:(id)a5;
- (void)dealloc;
- (void)deletePairedDevice:(id)a3;
- (void)didReceiveBlockedIndicationForLink:(id)a3 reason:(unsigned int)a4;
- (void)disconnectGlobalLinkForDevice:(id)a3 isReinitiating:(BOOL)a4 completionHandler:(id)a5;
- (void)flushBuffer:(unint64_t)a3 toDeviceUniqueID:(id)a4 cbuuid:(id)a5;
- (void)getSessionInfo:(id)a3 relayGroupID:(id)a4 relaySessionID:(id)a5 options:(id)a6;
- (void)handleAllocateRequestFailureForDevice:(id)a3 requestID:(id)a4 errorCode:(int)a5;
- (void)injectFakePacketInBTLink:(id *)a3 cbuuid:(id)a4;
- (void)link:(id)a3 didAddQREvent:(id)a4;
- (void)link:(id)a3 didCellularMTUChange:(unsigned __int16)a4;
- (void)link:(id)a3 didCellularNWPathFlagsChanged:(unsigned __int16)a4;
- (void)link:(id)a3 didConnectForDeviceUniqueID:(id)a4 cbuuid:(id)a5;
- (void)link:(id)a3 didConnectOverCloud:(id)a4 cbuuid:(id)a5;
- (void)link:(id)a3 didConnectUnderlyingLink:(char)a4 linkUUID:(id)a5 localAttributes:(id)a6 remoteAttributes:(id)a7;
- (void)link:(id)a3 didDefaultUnderlyingLinkChangeSucceeded:(BOOL)a4 currentDefaultLinkID:(char)a5;
- (void)link:(id)a3 didDisconnectForDeviceUniqueID:(id)a4 cbuuid:(id)a5;
- (void)link:(id)a3 didDisconnectOverCloud:(id)a4 cbuuid:(id)a5;
- (void)link:(id)a3 didDisconnectUnderlyingLinkID:(char)a4 linkUUID:(id)a5 reason:(unsigned __int8)a6;
- (void)link:(id)a3 didFailToConnectOverCloud:(id)a4 cbuuid:(id)a5;
- (void)link:(id)a3 didFinishConvergenceForRelaySessionID:(id)a4;
- (void)link:(id)a3 didGetLinkProbingStatus:(id)a4;
- (void)link:(id)a3 didRATChange:(unsigned __int8)a4;
- (void)link:(id)a3 didReceiveChildConnections:(id)a4 forLinkID:(char)a5;
- (void)link:(id)a3 didReceiveEncryptedDataBlobs:(id)a4;
- (void)link:(id)a3 didReceiveErrorIndicationWithCode:(unsigned int)a4;
- (void)link:(id)a3 didReceiveKeyMaterialMessageData:(id)a4 fromParticipantIDs:(id)a5 toParticipantID:(id)a6;
- (void)link:(id)a3 didReceiveMappedParticipantsDict:(id)a4 forLinkID:(char)a5;
- (void)link:(id)a3 didReceiveMaterialInfo:(id)a4 material:(id)a5;
- (void)link:(id)a3 didReceiveParticipantUpdate:(id)a4 status:(unsigned __int16)a5;
- (void)link:(id)a3 didReceivePluginDisconnect:(id)a4;
- (void)link:(id)a3 didReceivePluginRegistration:(unint64_t)a4 pluginName:(id)a5;
- (void)link:(id)a3 didReceivePluginUnregistration:(unint64_t)a4 pluginName:(id)a5;
- (void)link:(id)a3 didReceiveReliableUnicastServerMaterial:(id)a4;
- (void)link:(id)a3 didReceiveReportEvent:(id)a4;
- (void)link:(id)a3 didReceiveRequestToPurgeRegistration:(id)a4;
- (void)link:(id)a3 didReceiveSKEData:(id)a4;
- (void)link:(id)a3 didReceiveSessionInfo:(id)a4 relayGroupID:(id)a5 relaySessionID:(id)a6 status:(unsigned int)a7;
- (void)link:(id)a3 didReceiveSessionStateCounter:(unsigned int)a4;
- (void)link:(id)a3 didReceiveSessionStats:(id)a4 relayGroupID:(id)a5 relaySessionID:(id)a6 success:(BOOL)a7;
- (void)link:(id)a3 didWiFiNWPathFlagsChanged:(unsigned __int16)a4;
- (void)link:(id)a3 hasSpaceAvailable:(BOOL)a4 deviceUniqueID:(id)a5 cbuuid:(id)a6;
- (void)link:(id)a3 hostAwakeDidChange:(BOOL)a4 deviceUniqueID:(id)a5 cbuuid:(id)a6;
- (void)link:(id)a3 pathMTUDidChange:(unsigned __int16)a4 forLinkID:(char)a5;
- (void)link:(id)a3 reportNoSessionState:(id)a4;
- (void)manager:(id)a3 didPairedDeviceChange:(BOOL)a4;
- (void)manager:(id)a3 didPowerStateChange:(BOOL)a4;
- (void)manager:(id)a3 linkDidConnect:(id)a4;
- (void)manager:(id)a3 linkDidDisconnect:(id)a4;
- (void)obliterateConnectionInfo;
- (void)processRemoteConnectionDataForDevice:(id)a3 remoteConnectionData:(id)a4 completionHandler:(id)a5;
- (void)setIsOnPhoneCall:(BOOL)a3 forDeviceID:(id)a4;
- (void)setPreferInfraWiFi:(BOOL)a3;
- (void)setRequireBT:(BOOL)a3;
- (void)setShouldStartBTLinkManager:(BOOL)a3;
- (void)start;
- (void)startBTDatagramLinkForDeviceUniqueID:(id)a3 cbuuid:(id)a4;
- (void)startConnectionForDevice:(id)a3 isInitiator:(BOOL)a4 remotePartyID:(id)a5 useStunMICheck:(BOOL)a6;
- (void)startGlobalLinkForDevice:(id)a3;
- (void)startLinkForDeviceUniqueID:(id)a3 cbuuid:(id)a4;
- (void)startLocalSetup;
- (void)startUDPGlobalLinkForDevice:(id)a3;
- (void)stopBTDatagramLinkForDeviceUniqueID:(id)a3 cbuuid:(id)a4;
- (void)stopGlobalLinkForDevice:(id)a3;
- (void)stopLinkForDeviceUniqueID:(id)a3 cbuuid:(id)a4 disconnectWP:(BOOL)a5;
- (void)stopUDPGlobalLinkForDevice:(id)a3;
- (void)terminateCallDueToIdleClientForLink:(id)a3;
- (void)triggerBTCorruptionRecoveryForCBUUID:(id)a3;
- (void)triggerFixedInterfaceLinksDidConnect;
@end

@implementation IDSLinkManager

- (IDSLinkManager)initWithDelegate:(id)a3
{
  v4 = a3;
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

    objc_storeWeak(&v5->_delegate, v4);
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
      v16 = [v14 unsignedIntValue];
    }

    else
    {
      v16 = 1.0;
    }

    v5->_minReportFileOpenTimeInterval = v16;
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
      v30 = [v28 unsignedIntValue];
    }

    else
    {
      v30 = 60.0;
    }

    v5->_preferInfraWiFiConnectionTimeout = v30;
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
    v13 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "============= Dealloc LinkManager %@ =============", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v10 = self;
    _IDSLogV();
  }

  dynamicStore = self->_dynamicStore;
  if (dynamicStore)
  {
    CFRelease(dynamicStore);
  }

  [(IDSLinkManager *)self _bringUpWiFi:0, v10];
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

- (id)globalLinkForSessionID:(id)a3
{
  v3 = 0;
  if (a3)
  {
    cbuuidToLinks = self->_cbuuidToLinks;
    v5 = 0;
    if (cbuuidToLinks)
    {
      v6 = CFDictionaryGetValue(cbuuidToLinks, a3);
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

- (void)clearGlobalLinkConfigurationForSession:(id)a3 configuration:(id)a4
{
  v9 = a3;
  globalLinkConfigurationsBySessionID = self->_globalLinkConfigurationsBySessionID;
  v7 = a4;
  v8 = [(NSMutableDictionary *)globalLinkConfigurationsBySessionID objectForKeyedSubscript:v9];

  if (v8 == v7)
  {
    [(NSMutableDictionary *)self->_globalLinkConfigurationsBySessionID setObject:0 forKeyedSubscript:v9];
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
    v9 = [(NSDictionary *)self->_deviceIDToUDPDestinations allKeys];
    v10 = v6;
    v7 = v6;
    v8 = v9;
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

  v6 = [Value allValues];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v11 copyLinkStatsDict];
        if (v12)
        {
          CFDictionarySetValue(Mutable, [v11 linkTypeString], v12);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
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

- (id)generateLinkReport:(double)a3 forceReport:(BOOL)a4
{
  previousReportTime = self->_previousReportTime;
  v6 = a3 - previousReportTime;
  if (a4 || v6 >= 30.0)
  {
    if (previousReportTime == 0.0)
    {
LABEL_36:
      self->_previousReportTime = a3;
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
      v13 = [(NSMutableDictionary *)self->_cbuuidToLinks allKeys];
      context = objc_autoreleasePoolPush();
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      obj = v13;
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

            v23 = [v22 allValues];
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            v24 = [v23 countByEnumeratingWithState:&v65 objects:v74 count:16];
            if (v24)
            {
              v25 = *v66;
              do
              {
                for (j = 0; j != v24; j = j + 1)
                {
                  if (*v66 != v25)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v27 = [*(*(&v65 + 1) + 8 * j) generateLinkReport:objc_msgSend(*(*(&v65 + 1) + 8 * j) isCurrentLink:{"isEqual:", v21), a3}];
                  [v12 appendString:v27];
                }

                v24 = [v23 countByEnumeratingWithState:&v65 objects:v74 count:16];
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
      v64 = self;
      v41 = v12;
      dispatch_async(v40, block);

      v42 = *&self->_totalBytesReceived;
      *&self->_previousBytesSent = *&self->_totalBytesSent;
      *&self->_previousBytesReceived = v42;
      self->_previousPacketsDropped = self->_totalPacketsDropped;

      goto LABEL_36;
    }

    if (a3 - self->_previousReportFileOpenTime < self->_minReportFileOpenTimeInterval)
    {
      return 0;
    }

    self->_previousReportFileOpenTime = a3;
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

- (id)_linkKeyForLink:(id)a3
{
  v3 = a3;
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

- (void)_suspendBTLink:(BOOL)a3 cbuuid:(id)a4
{
  v4 = a3;
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
    self->_doesDefaultDevicePreferInfraWiFi = v4;
  }

  else
  {
    v10 = v9;
    v11 = CFDictionaryGetValue(v9, @"IDSLinkBTKey");
    doesDefaultDevicePreferInfraWiFi = self->_doesDefaultDevicePreferInfraWiFi;
    self->_doesDefaultDevicePreferInfraWiFi = v4;
    if (v11)
    {
      v13 = v11;
      v14 = [v11 isLinkSuspended];
      v15 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = @"NO";
        if (v14)
        {
          v17 = @"YES";
        }

        else
        {
          v17 = @"NO";
        }

        if (v4)
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

      if (v14 == v4)
      {
        if (doesDefaultDevicePreferInfraWiFi && !v4 && !self->_isCentral)
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
        [v13 suspendLink:v4];
        [(IDSLinkManager *)self _setBestLinkToCurrent:v6];
      }

      goto LABEL_24;
    }
  }

  if (!v4)
  {
    [(IDSLinkManager *)self _setBestLinkToCurrent:v6];
  }

  v13 = 0;
LABEL_24:
}

- (void)injectFakePacketInBTLink:(id *)a3 cbuuid:(id)a4
{
  v6 = a4;
  v7 = v6;
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

    [Value injectFakePacket:a3];

    v6 = key;
  }
}

- (void)_connectivityChangedForDefaultDevice:(BOOL)a3 isCloudConnected:(BOOL)a4
{
  if (self->_shouldStartBTLinkManager)
  {
    v4 = a4;
    v5 = a3;
    if (a3)
    {
      self->_hasDelayedNoConnectivityNotification = 0;
    }

    if (self->_lastSentDefaultDeviceConnectivity != a3 || self->_lastSentDefaultDeviceCloudConnectivity != a4)
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
        if (v5)
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
        if (v4)
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

      self->_lastSentDefaultDeviceConnectivity = v5;
      self->_lastSentDefaultDeviceCloudConnectivity = v4;
      if (v5 || v4)
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
        if (v5)
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

    else if (self->_lastSentDefaultPeerConnectivity != v5)
    {
      self->_lastSentDefaultPeerConnectivity = v5;
      v19 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10053CC70;
      block[3] = &unk_100BDFD48;
      v24 = v5;
      dispatch_async(v19, block);
    }

    v20 = im_primary_queue();
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10053CE08;
    v21[3] = &unk_100BDFD48;
    v22 = v4;
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

- (void)_processLMCommandPacket:(id *)a3 fromLink:(id)a4 deviceUniqueID:(id)a5 cbuuid:(id)a6
{
  v10 = a4;
  v55 = a5;
  v11 = a6;
  *&v12 = *a3->var0;
  if (*a3->var0 <= 0x42u)
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
          v16 = [IDSInterfaceAddress interfaceAddressWithTransmittedBytes:a3->var0 + 1 length:a3->var2 - 1 withLocalInterfaceName:self->_fixedInterface];
          v17 = v16;
          if (!v16 || ([v16 address], v18 = objc_claimAutoreleasedReturnValue(), v18, !v18))
          {
            v29 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v30 = a3->var2 - 1;
              v31 = [NSData dataWithBytes:a3->var0 + 1 length:v30];
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

            v32 = a3->var2 - 1;
            v50 = [NSData dataWithBytes:a3->var0 + 1 length:v32];
            _IDSLogTransport();

            if (!_IDSShouldLog())
            {
              goto LABEL_138;
            }

            v33 = [NSData dataWithBytes:a3->var0 + 1 length:a3->var2 - 1, v32, v50];
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
            v63 = v10;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "received remote UDPLink %@interface address %@%@ through %@", buf, 0x2Au);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
          {
            *&v23 = v19 >= 2 ? COERCE_DOUBLE(&stru_100C06028) : COERCE_DOUBLE(@"(prefer) ");
            v24 = v53 == 66 ? @"(reply) " : &stru_100C06028;
            v51 = v17;
            v52 = v10;
            v48 = *&v23;
            v49 = v24;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v51 = v17;
              v52 = v10;
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
          v42 = -[IDSLinkManager _newUDPLinkForDeviceUniqueID:cbuuid:IPVersion:port:](self, "_newUDPLinkForDeviceUniqueID:cbuuid:IPVersion:port:", 0, v11, [v17 IPVersion], 0);
          if ((v28 & self->_isCentral) == 1 && !(isKindOfClass & 1 | !self->_doesDefaultDevicePreferInfraWiFi))
          {
            v33 = 0;
          }

          else
          {
            if ((isKindOfClass & 1) != 0 && a3->var19.ss_family)
            {
              v33 = [[IDSSockAddrWrapper alloc] initWithSockAddr:&a3->var19];
            }

            else
            {
              v33 = 0;
            }

            v43 = [v17 address];
            v44 = [v42 setDestinationAddress:v43 isFixedDestination:self->_hasFixedDestination fromAddress:v33];

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
                [(IDSLinkManager *)self _sendUDPLinkInterfaceAddresses:v42 toDeviceID:v11 isRetransmission:0 isReply:1];
              }

              goto LABEL_136;
            }
          }

          else if (!self->_doesDefaultDevicePreferInfraWiFi)
          {
            goto LABEL_123;
          }

          [(IDSLinkManager *)self _suspendBTLink:v28 cbuuid:v11, *&v48];
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
      v59 = v10;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "received remote UDPLink interface down %@through %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      *&v36 = LODWORD(v12) == 67 ? COERCE_DOUBLE(@"(reply) ") : COERCE_DOUBLE(&stru_100C06028);
      v48 = *&v36;
      v49 = v10;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v48 = *&v36;
        v49 = v10;
        _IDSLogV();
      }
    }

    if (self->_doesDefaultDevicePreferInfraWiFi)
    {
      [(IDSLinkManager *)self _suspendBTLink:0 cbuuid:v11];
    }

    v14 = [(IDSLinkManager *)self _newUDPLinkForDeviceUniqueID:0 cbuuid:v11 IPVersion:0 port:0, *&v48, v49];
    if (LODWORD(v12) == 65)
    {
      [(IDSLinkManager *)self _sendUDPLinkInterfaceAddresses:v14 toDeviceID:v11 isRetransmission:0 isReply:1];
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
    [(__CFString *)v10 remoteDetectedCorruption];
  }

LABEL_139:
}

- (void)_sendUDPLinkInterfaceAddresses:(id)a3 toDeviceID:(id)a4 isRetransmission:(BOOL)a5 isReply:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (!self->_hasFixedDestination)
  {
    v13 = kIDSDefaultPairedDeviceID;
    if ([v11 isEqualToString:kIDSDefaultPairedDeviceID])
    {
      if ([v10 isInvalidated])
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

      if (v6)
      {
LABEL_11:
        v15 = [v10 copyCurrentNetworkInterfaces];
        v16 = [v15 firstObject];
        v17 = [v16 address];
        localWiFiAddressUsedForDefaultDevice = self->_localWiFiAddressUsedForDefaultDevice;
        self->_localWiFiAddressUsedForDefaultDevice = v17;

        v19 = _IDSLinkPacketBufferCreate();
        if (v16)
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
            if (v6)
            {
              v21 = @"(reply) ";
            }

            v61 = v21;
            v62 = 2112;
            v63 = v16;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "transmitting UDPLink %@interface address %@%@", buf, 0x20u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
          {
            v23 = self->_doesDefaultDevicePreferInfraWiFi ? @"(prefer) " : &stru_100C06028;
            v24 = v6 ? @"(reply) " : &stru_100C06028;
            v54 = v24;
            v55 = v16;
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
              v55 = v16;
              v53 = *&v25;
              _IDSLogV();
            }
          }

          if (v6)
          {
            v26 = 70;
          }

          else
          {
            v26 = 69;
          }

          if (v6)
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

          v29 = [v16 getTransmittableBytes:*v19 withPrefixByte:{v28, *&v53, v54, v55}];
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

            if (!v6)
            {
              self->_addressRetransmissionInterval = 0.0;
            }

            goto LABEL_94;
          }

          v41 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = &stru_100C06028;
            if (v6)
            {
              v42 = @"(reply)";
            }

            *buf = 138412290;
            v59 = *&v42;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "transmitting UDPLink interface down%@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
          {
            v43 = v6 ? @"(reply)" : &stru_100C06028;
            v53 = *&v43;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v53 = *&v43;
              _IDSLogV();
            }
          }

          if (v6)
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

        if (v6)
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
            v56 = v10;
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
      if (v7)
      {
        [v10 lastDestinationSent];
        v33 = v32;
        [v10 lastDestinationReceived];
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

        [v10 lastDestinationSent];
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
        [v10 setLastDestinationSent:v30];
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

- (void)_createWiFiAssociationPowerAssertion:(double)a3
{
  if (self->_isCentral)
  {
    v5 = [[CUTPowerAssertion alloc] initWithIdentifier:@"IDSLinkManagerWiFiPowerAssertion" timeout:a3];
    WiFiPowerAssertion = self->_WiFiPowerAssertion;
    self->_WiFiPowerAssertion = v5;

    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_WiFiPowerAssertion;
      *buf = 134218240;
      v10 = v8;
      v11 = 1024;
      v12 = a3;
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

- (void)_handleWiFiAutoJoinStatusChange:(int64_t)a3 WiFiSSID:(id)a4
{
  v17 = a4;
  self->_currentWiFiAutoJoinStatus = a3;
  if ((a3 - 3) > 1)
  {
    self->_isWiFiAssociated = 0;
    if (a3 - 1) < 0xA && ((0x213u >> (a3 - 1)))
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

  objc_storeStrong(&self->_currentWiFiSSID, a4);
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

- (BOOL)_startUDPLinkHandshakeForDefaultDevice:(BOOL)a3 immediately:(BOOL)a4
{
  if (!self->_requireBT)
  {
    v6 = a4;
    v7 = a3;
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      if (v7)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      mayBringUpWiFi = self->_mayBringUpWiFi;
      if (v6)
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
      v14 = v7 ? @"YES" : @"NO";
      v15 = v6 ? @"YES" : @"NO";
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

    if (v7)
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

      v19 = [IMWeakLinkClass() sharedInstance];
      v20 = [v19 isWiFiEnabled];

      if ((v20 & 1) == 0)
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
          v49 = self;
          IDSTransportThreadAddBlock();
        }

        goto LABEL_95;
      }
    }

    v21 = !v7 || v6;
    if (self->_isCentral)
    {
      v22 = v7;
    }

    else
    {
      v22 = !v7 || v6;
    }

    if (v7)
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
    v43 = v7;
    v44 = v22;
    v24 = objc_retainBlock(v41);
    if (v21)
    {
      v25 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = @"down";
        if (v7)
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
        if (v7)
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
        v31 = v7 ? @"up" : @"down";
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

- (void)_processLinkChangeForDefaultDeviceFrom:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v33 = v6;
    v34 = 2112;
    v35 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "process link change for default paired device (oldLink:%@, newLink:%@).", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v30 = v6;
      v31 = v7;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v30 = v6;
        v31 = v7;
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

  if (v7)
  {
    v14 = kIDSDefaultPairedDeviceID;
    CFDictionarySetValue(self->_deviceIDToCurrentLink, kIDSDefaultPairedDeviceID, v7);
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
    v20 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = 2;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = [v7 defaultLinkType];
      }

      else
      {
        v20 = 0;
      }
    }
  }

  if (self->_currentDefaultDeviceLinkType != v20)
  {
    v21 = [v7 linkTypeString];
    if (v21)
    {
      v22 = v21;
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
      v35 = v20;
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

    self->_currentDefaultDeviceLinkType = v20;
    if (v20 == 1)
    {
      [(IDSLinkManager *)self disconnectGlobalLinkForDevice:v14 isReinitiating:0 completionHandler:0];
      [(IDSLinkManager *)self _clearWiFiAssociationPowerAssertion];
      [(IDSLinkManager *)self _bringUpWiFi:0];
    }

    v25 = [NSDictionary alloc];
    v26 = [NSNumber numberWithUnsignedInteger:self->_currentDefaultDeviceLinkType];
    v27 = [v25 initWithObjectsAndKeys:{v26, @"IDSLinkType", 0}];

    IDSPowerLogDictionary();
    if (v20 == 2 && self->_doesDefaultDevicePreferInfraWiFi)
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

- (id)_selectBestLink:(id)a3
{
  v3 = a3;
  v4 = [v3 allValues];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    v9 = 255;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 state] == 4 && objc_msgSend(v11, "headerOverhead") < v9)
        {
          v9 = [v11 headerOverhead];
          v12 = v11;

          v7 = v12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_setBestLinkToCurrent:(id)a3
{
  v4 = a3;
  Value = 0;
  if (v4 && self->_deviceIDToCurrentLink)
  {
    Value = CFDictionaryGetValue(self->_deviceIDToCurrentLink, v4);
  }

  v6 = Value;
  v7 = 0;
  if (v4)
  {
    cbuuidToLinks = self->_cbuuidToLinks;
    v9 = 0;
    if (cbuuidToLinks)
    {
      v7 = CFDictionaryGetValue(cbuuidToLinks, v4);
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
    v30 = v4;
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
    v23 = v4;
    _IDSLogV();
  }

  if (v9 != v6)
  {
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(NSMutableDictionary *)v9 deviceUniqueID];
      *buf = 138413058;
      v30 = v6;
      v31 = 2112;
      v32 = v9;
      v33 = 2112;
      v34 = v4;
      v35 = 2112;
      v36 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "set current link from %@ to %@ for cbuuid %@ deviceUniqueID %@", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        [(NSMutableDictionary *)v9 deviceUniqueID];
        v27 = v26 = v4;
        v23 = v6;
        v25 = v9;
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          [(NSMutableDictionary *)v9 deviceUniqueID:v6];
          v27 = v26 = v4;
          v23 = v6;
          v25 = v9;
          _IDSLogV();
        }
      }
    }

    if ([(NSMutableDictionary *)v4 isEqualToString:kIDSDefaultPairedDeviceID, v23, v25, v26, v27, v28]&& !self->_hasFixedDestination)
    {
      [(IDSLinkManager *)self _processLinkChangeForDefaultDeviceFrom:v6 to:v9];
      goto LABEL_52;
    }

    if (v9)
    {
      CFDictionarySetValue(self->_deviceIDToCurrentLink, v4, v9);
      if (self->_hasFixedDestination)
      {
        [(IDSLinkManager *)self _connectivityChangedForDefaultDevice:1 isCloudConnected:0];
        goto LABEL_52;
      }

      v16 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v4;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "sending UTunController didConnectForDevice %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v24 = v4;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v24 = v4;
            _IDSLogV();
          }
        }
      }

      v17 = [(NSMutableDictionary *)v9 alternateDelegate];
      v18 = v17;
      if (v17)
      {
        [v17 link:self didConnectForDeviceUniqueID:0 cbuuid:v4];
      }

      else
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained link:self didConnectForDeviceUniqueID:0 cbuuid:v4];
      }
    }

    else
    {
      if (v4)
      {
        v15 = self->_deviceIDToCurrentLink;
        if (v15)
        {
          CFDictionaryRemoveValue(v15, v4);
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
        v30 = v4;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "sending UTunController didDisconnectForDevice %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v24 = v4;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v24 = v4;
            _IDSLogV();
          }
        }
      }

      v20 = [(NSMutableDictionary *)v6 alternateDelegate];
      v18 = v20;
      if (v20)
      {
        [v20 link:self didDisconnectForDeviceUniqueID:0 cbuuid:v4];
      }

      else
      {
        v22 = objc_loadWeakRetained(&self->_delegate);
        [v22 link:self didDisconnectForDeviceUniqueID:0 cbuuid:v4];
      }
    }
  }

LABEL_52:
}

- (id)_newUDPLinkForDeviceUniqueID:(id)a3 cbuuid:(id)a4 IPVersion:(unint64_t)a5 port:(unsigned __int16)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = 0;
  v13 = 1;
  if (v11)
  {
    cbuuidToLinks = self->_cbuuidToLinks;
    if (cbuuidToLinks)
    {
      v15 = CFDictionaryGetValue(cbuuidToLinks, v11);
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

  v18 = [[IDSUDPLink alloc] initWithDeviceUniqueID:v10 cbuuid:v11];
  [(NSMutableDictionary *)v18 setDelegate:self];
  if (v13)
  {
    v12 = [NSMutableDictionary dictionaryWithObject:v18 forKey:@"IDSLinkLocalUDPKey"];
    if (v12)
    {
      v19 = self->_cbuuidToLinks;
      v20 = v11;
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

  [(NSMutableDictionary *)v18 setPort:v6];
  [(NSMutableDictionary *)v18 setAllowsLinkLocal:self->_hasFixedDestination];
  v22 = [(NSMutableDictionary *)v18 newSocketWithIPVersion:a5 wantsAWDL:0 wantsWiFi:1 wantsCellular:0];
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

- (id)_newUDPGlobalLinkForDeviceUniqueID:(id)a3 cbuuid:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = 0;
  v9 = 1;
  if (v7)
  {
    cbuuidToLinks = self->_cbuuidToLinks;
    if (cbuuidToLinks)
    {
      v11 = CFDictionaryGetValue(cbuuidToLinks, v7);
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

  v13 = [[IDSUDPGlobalLink alloc] initWithDeviceUniqueID:v6 cbuuid:v7];
  [(IDSUDPGlobalLink *)v13 setDelegate:self];
  if (v9)
  {
    v8 = [NSMutableDictionary dictionaryWithObject:v13 forKey:@"IDSLinkGlobalUDPKey"];
    if (v8)
    {
      v14 = self->_cbuuidToLinks;
      v15 = v7;
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

- (id)_newGlobalLinkForDeviceUniqueID:(id)a3 cbuuid:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_hasFixedDestination)
  {
    v11 = 0;
  }

  else
  {
    v12 = [(NSMutableDictionary *)self->_cbuuidToLinks objectForKeyedSubscript:v9];
    v13 = [(NSMutableDictionary *)self->_globalLinkConfigurationsBySessionID objectForKeyedSubscript:v9];
    v14 = [(IDSLinkManager *)self globalLinkForSessionID:v9];
    if (v14)
    {
      v11 = v14;
    }

    else
    {
      v15 = [objc_alloc(+[IDSGlobalLink getGLClassWithOptions:](IDSGlobalLink getGLClassWithOptions:{v10)), "initWithDeviceUniqueID:cbuuid:", v8, v9}];
      [v13 configureGlobalLink:v15];
      [v15 setDelegate:self];
      Mutable = [v10 mutableCopy];
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      }

      if ([v9 isEqualToString:kIDSDefaultPairedDeviceID])
      {
        [(__CFDictionary *)Mutable setObject:&__kCFBooleanTrue forKeyedSubscript:IDSGlobalLinkOptionForceRelayKey];
      }

      v17 = [[IDSGlobalLinkBlocks alloc] initWithBlocks:&stru_100BDFE00 qraAWDBlock:&stru_100BDFE40 qraCONBlock:&stru_100BDFE80 qraDISBlock:&stru_100BDFEA0];
      [(__CFDictionary *)Mutable setObject:v17 forKeyedSubscript:IDSGlobalLinkOptionQRABlockKey];
      [v15 startWithOptions:Mutable];
      if (!v12)
      {
        v12 = +[NSMutableDictionary dictionary];
        [(NSMutableDictionary *)self->_cbuuidToLinks setObject:v12 forKeyedSubscript:v9];
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
        v28 = v9;
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

        v23 = v9;
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

- (void)_bringUpWiFi:(BOOL)a3
{
  if (a3)
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

    v12 = [Value BOOLValue];
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

    else if (v12)
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

- (void)_removeLinkForDeviceID:(id)a3 linkKey:(id)a4 verifyWithLink:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = 0;
  if (v8)
  {
    cbuuidToLinks = self->_cbuuidToLinks;
    v13 = 0;
    if (cbuuidToLinks)
    {
      v14 = CFDictionaryGetValue(cbuuidToLinks, v8);
      v13 = v14;
      v11 = 0;
      if (v9)
      {
        if (v14)
        {
          v11 = CFDictionaryGetValue(v14, v9);
          if (v11)
          {
            if (!v10 || [(__CFString *)v10 isEqual:v11])
            {
              v15 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                v16 = @"a BT/BTLE link";
                if (v10)
                {
                  v16 = v10;
                }

                *buf = 138412546;
                v18 = v16;
                v19 = 2112;
                v20 = v8;
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

              CFDictionaryRemoveValue(v13, v9);
              [(IDSLinkManager *)self _setBestLinkToCurrent:v8];
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

- (void)_removeAllLinksForDeviceID:(id)a3
{
  key = a3;
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
  v5 = [(NSMutableDictionary *)self->_cbuuidToLinks allValues];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
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

      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)_startNetworkInterfaceListener:(BOOL)a3
{
  dynamicStore = self->_dynamicStore;
  if (a3)
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

- (void)_startCellularDataStatusListener:(BOOL)a3
{
  if (a3)
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

- (unint64_t)sendPacketBuffer:(id *)a3 toDeviceUniqueID:(id)a4 cbuuid:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (a3->var0)
  {
    v10 = (*a3->var0 >> 5) & 1;
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
      var2 = a3->var2;
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
      if (v9)
      {
        deviceIDToUDPDestinations = self->_deviceIDToUDPDestinations;
        if (deviceIDToUDPDestinations)
        {
          v17 = CFDictionaryGetValue(deviceIDToUDPDestinations, v9);
          if (v17)
          {
            v18 = v17;
            v19 = [v15 sendPacketBuffer:a3 destination:v17 toDeviceID:0];
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

      v27 = [v9 isEqualToString:v14];

      if ((v27 & 1) == 0)
      {
LABEL_30:
        v15 = 0;
        if (v9)
        {
          deviceIDToCurrentLink = self->_deviceIDToCurrentLink;
          if (deviceIDToCurrentLink)
          {
            v29 = CFDictionaryGetValue(deviceIDToCurrentLink, v9);
            v15 = v29;
            if (v29)
            {
              if ([v29 state] == 4)
              {
                v19 = [v15 sendPacketBuffer:a3 toDeviceUniqueID:v8 cbuuid:v9];
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

  if (!a3->var10)
  {
    goto LABEL_86;
  }

  currentDefaultDeviceLinkType = self->_currentDefaultDeviceLinkType;
  if (currentDefaultDeviceLinkType - 3 > 1)
  {
    if (currentDefaultDeviceLinkType != 1)
    {
      if (currentDefaultDeviceLinkType != 2 || !a3->var7)
      {
        goto LABEL_86;
      }

      v32 = [(IDSLinkManager *)self globalLinkForSessionID:v9];
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

    if (!a3->var11)
    {
      goto LABEL_86;
    }

    v36 = 0;
    if (!v9)
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
      v39 = CFDictionaryGetValue(cbuuidToLinks, v9);
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
      if (!a3->var8)
      {
        goto LABEL_123;
      }

      v41 = 0;
      if (v9 && self->_deviceIDToCurrentLink)
      {
        v41 = CFDictionaryGetValue(self->_deviceIDToCurrentLink, v9);
      }

      if (v34 == v41)
      {
LABEL_123:
        v43 = 0;
      }

      else
      {
        v42 = 0;
        if (v9 && self->_deviceIDToCurrentLink)
        {
          v42 = CFDictionaryGetValue(self->_deviceIDToCurrentLink, v9);
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
    if (!v9 || (v44 = self->_deviceIDToCurrentLink) == 0 || (v45 = CFDictionaryGetValue(v44, v9)) == 0)
    {
      ++self->_totalPacketsDropped;
      v48 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v59 = v9;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "no current link for %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v55 = v9;
        _IDSLogV();
      }

      if (([v9 isEqualToString:{kIDSDefaultPairedDeviceID, v55}] & 1) == 0 && !a3->var7)
      {
        v49 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v59 = v9;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "No current link for %@ -- asking WiProx to connect.", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v57 = v9;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v57 = v9;
              _IDSLogV();
            }
          }
        }

        v50 = +[IDSWPLinkManager sharedInstance];
        [v50 connectToPeer:v9];
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

      v19 = [(IDSLinkManager *)self _sendPacketBuffer:a3 toDeviceUniqueID:v8 cbuuid:v9 link:v34, v55];
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

        if (![(IDSLinkManager *)self _sendPacketBuffer:v47 toDeviceUniqueID:v8 cbuuid:v9 link:v43, v56])
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
      v59 = v9;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "dropped data for device %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    if (!a3->var7)
    {
      [(IDSLinkManager *)self startLinkForDeviceUniqueID:v8 cbuuid:v9];
    }

LABEL_111:
    _IDSLinkPacketBufferRelease();
    v19 = 6;
LABEL_112:

    goto LABEL_113;
  }

  if (a3->var7)
  {
    goto LABEL_86;
  }

  ++self->_totalPacketsDropped;
  v23 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = a3->var2;
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

- (unint64_t)_sendPacketBuffer:(id *)a3 toDeviceUniqueID:(id)a4 cbuuid:(id)a5 link:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  var2 = a3->var2;
  var10 = a3->var10;
  v15 = [v12 sendPacketBuffer:a3 toDeviceUniqueID:v10 cbuuid:v11];
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
      v23 = v12;
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

- (unint64_t)sendPacketBufferArray:(id *)a3 arraySize:(int)a4 toDeviceUniqueID:(id)a5 cbuuid:(id)a6
{
  v7 = *&a4;
  v10 = a5;
  v11 = a6;
  v12 = [(IDSLinkManager *)self globalLinkForSessionID:v11];
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
        v18 = a3;
        do
        {
          v19 = *v18++;
          v16 += *(v19 + 16);
          --v17;
        }

        while (v17);
      }

      v20 = [v14 sendPacketBufferArray:a3 arraySize:v7 toDeviceUniqueID:v10 cbuuid:v11];
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
      ++a3;
      _IDSLinkPacketBufferRelease();
      --v21;
    }

    while (v21);
  }

  v15 = 0;
LABEL_18:

  return v20;
}

- (void)flushBuffer:(unint64_t)a3 toDeviceUniqueID:(id)a4 cbuuid:(id)a5
{
  v15 = a4;
  v8 = a5;
  v9 = v8;
  if (!self->_hasFixedDestination)
  {
    v10 = 0;
    if (v8)
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
            [v14 flushBuffer:a3];
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

- (void)addPairedDevice:(id)a3
{
  v4 = a3;
  if (!self->_hasFixedDestination)
  {
    btLinkManager = self->_btLinkManager;
    if (btLinkManager)
    {
      v6 = [(IDSBTLinkManager *)btLinkManager pairedDevice];
      v7 = [v6 isEqualToString:v4];

      if (v7)
      {
        v8 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v16 = v4;
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
        v12 = v4;
        v14 = v12;
        dispatch_async(v11, block);

        [(IDSLinkManager *)self _removeAllLinksForDeviceID:kIDSDefaultPairedDeviceID];
        [(IDSBTLinkManager *)self->_btLinkManager updatePairedDevice:v12];
      }
    }

    else
    {
      v9 = [[IDSBTLinkManager alloc] initWithDelegate:self pairedDevice:v4];
      v10 = self->_btLinkManager;
      self->_btLinkManager = v9;

      if (self->_shouldStartBTLinkManager)
      {
        [(IDSBTLinkManager *)self->_btLinkManager start];
      }
    }
  }
}

- (void)connectPairedDevice:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_hasFixedDestination)
  {
    if (v4 && (-[IDSBTLinkManager pairedDevice](self->_btLinkManager, "pairedDevice"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 isEqualToString:v6], v6, v7))
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

- (void)deletePairedDevice:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_hasFixedDestination)
  {
    if (v4 && (-[IDSBTLinkManager pairedDevice](self->_btLinkManager, "pairedDevice"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 isEqualToString:v6], v6, !v7))
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

- (void)setPreferInfraWiFi:(BOOL)a3
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

  else if (a3)
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

- (BOOL)isConnectedToDeviceID:(id)a3
{
  result = 0;
  if (a3)
  {
    deviceIDToCurrentLink = self->_deviceIDToCurrentLink;
    if (deviceIDToCurrentLink)
    {
      return CFDictionaryGetValue(deviceIDToCurrentLink, a3) != 0;
    }
  }

  return result;
}

- (void)triggerBTCorruptionRecoveryForCBUUID:(id)a3
{
  v4 = 0;
  key = a3;
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

- (void)setRequireBT:(BOOL)a3
{
  if (self->_requireBT != a3)
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

    self->_requireBT = v3;
  }
}

- (void)setShouldStartBTLinkManager:(BOOL)a3
{
  if (self->_shouldStartBTLinkManager != a3)
  {
    self->_shouldStartBTLinkManager = a3;
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

- (void)startLinkForDeviceUniqueID:(id)a3 cbuuid:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7 && ([v7 isEqualToString:kIDSDefaultPairedDeviceID] & 1) == 0 && !self->_hasFixedDestination)
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
        v19 = v6;
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
        v19 = v6;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No connected BTLE link for cbuuid %@ deviceUniqueID %@ -- asking WiProx to connect.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v14 = v8;
          v15 = v6;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v14 = v8;
            v15 = v6;
            _IDSLogV();
          }
        }
      }

      v13 = [IDSWPLinkManager sharedInstance:v14];
      [v13 connectToPeer:v8];
    }
  }
}

- (void)stopLinkForDeviceUniqueID:(id)a3 cbuuid:(id)a4 disconnectWP:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9 && ([v9 isEqualToString:kIDSDefaultPairedDeviceID] & 1) == 0 && !self->_hasFixedDestination)
  {
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Asked to disconnect from cbuuid %@ deviceUniqueID %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v13 = v10;
        v14 = v8;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v13 = v10;
          v14 = v8;
          _IDSLogV();
        }
      }
    }

    [(IDSLinkManager *)self _removeAllLinksForDeviceID:v10, v13, v14];
    if (v5)
    {
      v12 = +[IDSWPLinkManager sharedInstance];
      [v12 disconnectFromPeer:v10];
    }
  }
}

- (void)startUDPGlobalLinkForDevice:(id)a3
{
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "startUDPGlobalLinkForDevice %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v6 = v4;
    _IDSLogV();
  }
}

- (void)stopUDPGlobalLinkForDevice:(id)a3
{
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "stopUDPGlobalLinkForDevice %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v11 = v4;
    _IDSLogV();
  }

  v6 = 0;
  if (v4)
  {
    cbuuidToLinks = self->_cbuuidToLinks;
    v8 = 0;
    if (cbuuidToLinks)
    {
      v9 = CFDictionaryGetValue(cbuuidToLinks, v4);
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
            v13 = v4;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Remove UDPGlobalLink for device %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v11 = v4;
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

  [(IDSLinkManager *)self _removeAllLinksForDeviceID:v4, v11];
}

- (void)createConnectionDataForDevice:(id)a3 localPartyID:(id)a4 dataReadyHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = v8;
    v28 = 2112;
    v29 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "createConnectionDataForDevice - deviceID=%@, localPartyID=%@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v21 = v8;
      v22 = v9;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v21 = v8;
        v22 = v9;
        _IDSLogV();
      }
    }
  }

  v12 = 0;
  if (v8 && (cbuuidToLinks = self->_cbuuidToLinks) != 0 && (v14 = CFDictionaryGetValue(cbuuidToLinks, v8), (v12 = v14) != 0) && (v15 = CFDictionaryGetValue(v14, @"IDSLinkGlobalUDPKey")) != 0)
  {
    v16 = v15;
    if (objc_opt_respondsToSelector())
    {
      [v16 createConnectionData:v9 dataReadyHandler:v10];
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

    if (v10)
    {
      v20 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100546BF8;
      block[3] = &unk_100BD7298;
      v25 = v10;
      v24 = v18;
      dispatch_async(v20, block);
    }

    v16 = 0;
  }
}

- (void)processRemoteConnectionDataForDevice:(id)a3 remoteConnectionData:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "processRemoteConnectionDataForDevice - %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v21 = v8;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v21 = v8;
        _IDSLogV();
      }
    }
  }

  v12 = 0;
  if (v8 && (cbuuidToLinks = self->_cbuuidToLinks) != 0 && (v14 = CFDictionaryGetValue(cbuuidToLinks, v8), (v12 = v14) != 0) && (v15 = CFDictionaryGetValue(v14, @"IDSLinkGlobalUDPKey")) != 0)
  {
    v16 = v15;
    if (objc_opt_respondsToSelector())
    {
      [v16 processRemoteConnectionData:v9 completionHandler:v10];
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

    if (v10)
    {
      v20 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100546F94;
      block[3] = &unk_100BD7298;
      v24 = v10;
      v23 = v18;
      dispatch_async(v20, block);
    }

    v16 = 0;
  }
}

- (void)startConnectionForDevice:(id)a3 isInitiator:(BOOL)a4 remotePartyID:(id)a5 useStunMICheck:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"NO";
    *buf = 138412802;
    v19 = v10;
    v20 = 2112;
    if (v8)
    {
      v13 = @"YES";
    }

    v21 = v13;
    v22 = 2112;
    v23 = v11;
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
  if (v10)
  {
    cbuuidToLinks = self->_cbuuidToLinks;
    v16 = 0;
    if (cbuuidToLinks)
    {
      v17 = CFDictionaryGetValue(cbuuidToLinks, v10);
      v14 = v17;
      if (v17)
      {
        v16 = CFDictionaryGetValue(v17, @"IDSLinkGlobalUDPKey");
        if (v16 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v16 startConnectionForDevice:v10 isInitiator:v8 remotePartyID:v11 useStunMICheck:v6];
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

- (void)startBTDatagramLinkForDeviceUniqueID:(id)a3 cbuuid:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "startBTDatagramLinkForDeviceUniqueID - deviceID %@ cbuuid %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v9 = v6;
      v10 = v7;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v9 = v6;
        v10 = v7;
        _IDSLogV();
      }
    }
  }

  [(IDSBTLinkManager *)self->_btLinkManager startDatagramLink:v9];
}

- (void)stopBTDatagramLinkForDeviceUniqueID:(id)a3 cbuuid:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "stopBTDatagramLinkForDeviceUniqueID - deviceID %@ cbuuid %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v9 = v6;
      v10 = v7;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v9 = v6;
        v10 = v7;
        _IDSLogV();
      }
    }
  }

  [(IDSBTLinkManager *)self->_btLinkManager stopDatagramLink:v9];
}

- (void)_startAllocateRequestForDevice:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_hasFixedDestination)
  {
    goto LABEL_41;
  }

  v6 = [v4 isEqualToString:kIDSDefaultPairedDeviceID];
  if (!v6 || self->_currentDefaultDeviceLinkType != 1)
  {
    v8 = [(IDSLinkManager *)self _newGlobalLinkForDeviceUniqueID:0 cbuuid:v5 options:0];
    v9 = [v8 state];
    if (v9 < 2)
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
          v22 = self;
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
      v10 = v9;
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

- (void)startGlobalLinkForDevice:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_hasFixedDestination)
  {
    goto LABEL_36;
  }

  v6 = [v4 isEqualToString:kIDSDefaultPairedDeviceID];
  if (!v6 || self->_currentDefaultDeviceLinkType != 1)
  {
    v8 = [(IDSLinkManager *)self _newGlobalLinkForDeviceUniqueID:0 cbuuid:v5 options:0];
    v9 = [v8 state];
    v10 = v9;
    if (v9 < 2)
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

    if ((v9 - 7) > 0xFFFFFFFFFFFFFFFDLL)
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

- (void)clearGlobalLinkForSessionID:(id)a3
{
  v4 = a3;
  cbuuidToLinks = self->_cbuuidToLinks;
  if (cbuuidToLinks)
  {
    v7 = v4;
    cbuuidToLinks = [cbuuidToLinks objectForKeyedSubscript:v4];
    v4 = v7;
    if (cbuuidToLinks)
    {
      v6 = cbuuidToLinks;
      [cbuuidToLinks setObject:0 forKeyedSubscript:@"IDSLinkGlobalKey"];

      v4 = v7;
    }
  }

  _objc_release_x1(cbuuidToLinks, v4);
}

- (void)stopGlobalLinkForDevice:(id)a3
{
  v4 = a3;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "stopGlobalLinkForDevice %@ (=> cbuuid)", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v12 = v4;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v12 = v4;
        _IDSLogV();
      }
    }
  }

  v6 = [(IDSLinkManager *)self globalLinkForSessionID:v4, v12];
  if (v6)
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Remove %@ for session %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v13 = v6;
        v14 = v4;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v13 = v6;
          v14 = v4;
          _IDSLogV();
        }
      }
    }

    [v6 invalidate];
    [(IDSLinkManager *)self clearGlobalLinkForSessionID:v4];
  }

  if (!self->_btLinkManager && ![(IDSLinkManager *)self _hasGlobalLinkConnectingOrConnected])
  {
    [(IDSLinkManager *)self _startNetworkInterfaceListener:0];
    [(IDSLinkManager *)self _startCellularDataStatusListener:0];
  }

  Value = 0;
  if (v4 && self->_deviceIDToGlobalLinkUp)
  {
    Value = CFDictionaryGetValue(self->_deviceIDToGlobalLinkUp, v4);
  }

  if ([Value BOOLValue])
  {
    CFDictionarySetValue(self->_deviceIDToGlobalLinkUp, v4, &__kCFBooleanFalse);
  }

  if ([v4 isEqualToString:kIDSDefaultPairedDeviceID])
  {
    self->_delayedDefaultDeviceAllocateRequest = 0;
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "IDSGlobalLink is brought down for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v13 = v4;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v13 = v4;
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
    [(IDSLinkManager *)self _removeAllLinksForDeviceID:v4];
  }
}

- (void)connectGlobalLinkForDevice:(id)a3 sessionInfo:(id)a4 connectReadyHandler:(id)a5 withLocalInterfacePreference:(int)a6
{
  v6 = *&a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!self->_hasFixedDestination)
  {
    if ([(__CFString *)v10 isEqualToString:kIDSDefaultPairedDeviceID]&& self->_currentDefaultDeviceLinkType == 1)
    {
      v13 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v42 = v10;
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
      if (v11 && kIDSQRAllocateKey_RequestID)
      {
        Value = CFDictionaryGetValue(v11, kIDSQRAllocateKey_RequestID);
      }

      v15 = Value;
      [(IDSLinkManager *)self _removeAllocateRequestForDevice:v10 requestID:v15];
      v16 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v42 = v15;
        v43 = 2112;
        v44 = v10;
        v45 = 2112;
        v46 = v11;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Receive allocate response for request %@, device %@. connectGlobalLinkForDevice with sessionInfo %@.", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v34 = v10;
          v36 = v11;
          v32 = v15;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v34 = v10;
            v36 = v11;
            v32 = v15;
            _IDSLogV();
          }
        }
      }

      v17 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(__CFDictionary *)v11 objectForKeyedSubscript:kIDSQRAllocateKey_StreamInfoSubscribedStreams];
        *buf = 138412290;
        v42 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "connectGlobalLinkForDevice: sessionInfo[kIDSQRAllocateKey_StreamInfoSubscribedStreams]:%@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v19 = kIDSQRAllocateKey_StreamInfoSubscribedStreams;
          v32 = [(__CFDictionary *)v11 objectForKeyedSubscript:kIDSQRAllocateKey_StreamInfoSubscribedStreams];
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            v32 = [(__CFDictionary *)v11 objectForKeyedSubscript:v19, v32];
            _IDSLogV();
          }
        }
      }

      v20 = [(IDSLinkManager *)self _newGlobalLinkForDeviceUniqueID:0 cbuuid:v10 options:v11, v32, v34, v36];
      if (kIDSQRAllocateKey_AlternateDelegate)
      {
        v21 = v11 != 0;
      }

      else
      {
        v21 = 0;
      }

      if (v21)
      {
        v22 = CFDictionaryGetValue(v11, kIDSQRAllocateKey_AlternateDelegate);
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
        v44 = v10;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Set alternateDelegate %@ for %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v33 = v23;
        v35 = v10;
        _IDSLogV();
      }

      [v20 setAlternateDelegate:{v23, v33, v35}];
      if (kIDSQRAllocateKey_ClientUniquePID)
      {
        v25 = v11 != 0;
      }

      else
      {
        v25 = 0;
      }

      if (v25)
      {
        v26 = CFDictionaryGetValue(v11, kIDSQRAllocateKey_ClientUniquePID);
      }

      else
      {
        v26 = 0;
      }

      v27 = v26;
      [v20 setClientUniquePID:{objc_msgSend(v27, "unsignedLongLongValue")}];
      if (v20)
      {
        [v20 connectWithSessionInfo:v11 interfaceAddress:0 joinSession:1 completionHandler:v12 withLocalInterfacePreference:v6];
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

        if (v12)
        {
          v30 = im_primary_queue();
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100548FB4;
          block[3] = &unk_100BD7298;
          v40 = v12;
          v39 = v37;
          v31 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
          dispatch_async(v30, v31);
        }
      }
    }
  }
}

- (void)disconnectGlobalLinkForDevice:(id)a3 isReinitiating:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(IDSLinkManager *)self globalLinkForSessionID:v8];
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "disconnectGlobalLinkForDevice for  %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v14 = v8;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v14 = v8;
        _IDSLogV();
      }
    }
  }

  if ([v10 state] <= 4)
  {
    [v10 disconnectWithCompletionHandler:v9 isReinitiating:v6];
  }

  else
  {
LABEL_10:
    if (v9)
    {
      v12 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1005491F4;
      block[3] = &unk_100BD7270;
      v16 = v9;
      v13 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
      dispatch_async(v12, v13);
    }
  }
}

- (void)_addAllocateRequestForDevice:(id)a3 requestID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 || (deviceIDToAllocRequests = self->_deviceIDToAllocRequests) == 0 || (v9 = CFDictionaryGetValue(deviceIDToAllocRequests, v6)) == 0)
  {
    v9 = objc_alloc_init(NSMutableArray);
  }

  if (v7 && v9)
  {
    CFArrayAppendValue(v9, v7);
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
    CFDictionarySetValue(self->_deviceIDToAllocRequests, v6, v12);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100928FB0();
  }

  v13 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = v7;
    v16 = 2112;
    v17 = v6;
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

- (void)_removeAllocateRequestForDevice:(id)a3 requestID:(id)a4
{
  v6 = a4;
  Value = 0;
  v8 = v6;
  if (a3 && self->_deviceIDToAllocRequests)
  {
    Value = CFDictionaryGetValue(self->_deviceIDToAllocRequests, a3);
    v6 = v8;
  }

  [Value removeObject:v6];
}

- (void)handleAllocateRequestFailureForDevice:(id)a3 requestID:(id)a4 errorCode:(int)a5
{
  v5 = *&a5;
  v8 = a3;
  v9 = a4;
  v10 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v19 = 1024;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "handleAllocateRequestFailureForDevice - deviceID %@, requestID %@, erroCode %d", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v13 = v9;
      v14 = v5;
      v12 = v8;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v13 = v9;
        v14 = v5;
        v12 = v8;
        _IDSLogV();
      }
    }
  }

  [(IDSLinkManager *)self _removeAllocateRequestForDevice:v8 requestID:v9, v12, v13, v14];
  Value = 0;
  if (v8 && self->_deviceIDToGlobalLinkUp)
  {
    Value = CFDictionaryGetValue(self->_deviceIDToGlobalLinkUp, v8);
  }

  if ([Value BOOLValue])
  {
    CFDictionarySetValue(self->_deviceIDToGlobalLinkUp, v8, &__kCFBooleanFalse);
  }
}

- (void)getSessionInfo:(id)a3 relayGroupID:(id)a4 relaySessionID:(id)a5 options:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  Value = 0;
  if (v13 && IDSGlobalLinkOptionSessionInfoRequestTypeKey)
  {
    Value = CFDictionaryGetValue(v13, IDSGlobalLinkOptionSessionInfoRequestTypeKey);
  }

  v15 = [Value unsignedIntValue];
  v16 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v41 = v11;
    v42 = 2112;
    v43 = v12;
    v44 = 2112;
    v45 = v13;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "get session info for group %@, session %@, options %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v37 = v12;
      v39 = v13;
      v35 = v11;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v37 = v12;
        v39 = v13;
        v35 = v11;
        _IDSLogV();
      }
    }
  }

  v17 = [(IDSLinkManager *)self globalLinkForSessionID:v10, v35, v37, v39];
  v18 = v17;
  if (v17 || v15 != 1)
  {
    if (v17)
    {
      if (v15 != 1)
      {
        v23 = v13;
LABEL_53:
        [v18 getSessionInfo:v11 relaySessionID:v12 requestType:v15 options:v23];

        goto LABEL_54;
      }

LABEL_43:
      v30 = 0;
      if (v13 && IDSGlobalLinkOptionQRSessionInfoKey)
      {
        v30 = CFDictionaryGetValue(v13, IDSGlobalLinkOptionQRSessionInfoKey);
      }

      v23 = v30;
      v31 = IDSGlobalLinkOptionSessionInfoCommandFlagKey;
      v32 = [(__CFDictionary *)v13 objectForKey:IDSGlobalLinkOptionSessionInfoCommandFlagKey];
      v33 = [v32 unsignedIntValue];

      if (v33)
      {
        v34 = [NSNumber numberWithUnsignedInt:v33];
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
    if (v13)
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
      v22 = CFDictionaryGetValue(v13, IDSGlobalLinkOptionNewLinkOptionsKey);
    }

    v18 = [(IDSLinkManager *)self _newGlobalLinkForDeviceUniqueID:0 cbuuid:v10 options:v22];
    if (v18)
    {
      if (v21)
      {
        v24 = CFDictionaryGetValue(v13, v19);
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
        v43 = v10;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Set alternateDelegate %@ for %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v36 = v26;
        v38 = v10;
        _IDSLogV();
      }

      [v18 setAlternateDelegate:{v26, v36, v38}];
      if (kIDSQRAllocateKey_ClientUniquePID)
      {
        v28 = v13 != 0;
      }

      else
      {
        v28 = 0;
      }

      if (v28)
      {
        v29 = CFDictionaryGetValue(v13, kIDSQRAllocateKey_ClientUniquePID);
      }

      else
      {
        v29 = 0;
      }

      [v18 setClientUniquePID:{objc_msgSend(v29, "unsignedLongLongValue")}];

      goto LABEL_43;
    }
  }

  v23 = v13;
LABEL_54:
}

- (void)setIsOnPhoneCall:(BOOL)a3 forDeviceID:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (v4)
    {
      v8 = @"YES";
    }

    *buf = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "setIsOnPhoneCall %@ for deviceID %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v9 = v4 ? @"YES" : @"NO";
    v11 = v9;
    v12 = v6;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      v11 = v9;
      v12 = v6;
      _IDSLogV();
    }
  }

  if ([v6 isEqualToString:{kIDSDefaultPairedDeviceID, v11, v12}])
  {
    isDefaultDeviceOnPhoneCall = self->_isDefaultDeviceOnPhoneCall;
    self->_isDefaultDeviceOnPhoneCall = v4;
    if (isDefaultDeviceOnPhoneCall && !v4 && self->_shouldBringWiFiDown)
    {
      [(IDSLinkManager *)self _bringUpWiFi:0];
    }
  }
}

- (void)link:(id)a3 didConnectForDeviceUniqueID:(id)a4 cbuuid:(id)a5
{
  v8 = a3;
  v20 = a4;
  v9 = a5;
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v28 = v8;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ didConnectForDevice %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v18 = v8;
    v19 = v9;
    _IDSLogV();
  }

  [(IDSLinkManager *)self _setBestLinkToCurrent:v9, v18, v19];
  if (self->_hasFixedDestination)
  {
    v11 = [(NSDictionary *)self->_deviceIDToUDPDestinations allKeys];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = +[IDSWPLinkManager sharedInstance];
          [v16 setAlwaysConnectedForCBUUID:v15];
        }

        v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    v21 = v8;
    v17 = v11;
    IDSTransportThreadAddBlockAfter();
  }
}

- (void)link:(id)a3 didDisconnectForDeviceUniqueID:(id)a4 cbuuid:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = v8;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ didDisconnectForDevice %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v13 = v8;
    v14 = v10;
    _IDSLogV();
  }

  v12 = [(IDSLinkManager *)self _linkKeyForLink:v8, v13, v14];
  [(IDSLinkManager *)self _removeLinkForDeviceID:v10 linkKey:v12 verifyWithLink:v8];
  if (([v12 isEqualToString:@"IDSLinkBTKey"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"IDSLinkBTLEKey"))
  {
    [(IDSBTLinkManager *)self->_btLinkManager removeLink:v8];
    [(IDSWPLinkManager *)self->_wpLinkManager removeLink:v8];
  }
}

- (BOOL)link:(id)a3 didReceivePacket:(id *)a4 fromDeviceUniqueID:(id)a5 cbuuid:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  var2 = a4->var2;
  v14 = vdupq_n_s64(1uLL);
  v14.i64[0] = var2;
  *&self->_totalBytesReceived = vaddq_s64(*&self->_totalBytesReceived, v14);
  if (var2 >= 1)
  {
    if ((*a4->var0 & 0xE0) == 0x40 && !a4->var6)
    {
      [(IDSLinkManager *)self _processLMCommandPacket:a4 fromLink:v10 deviceUniqueID:v11 cbuuid:v12];
      v17 = 1;
      goto LABEL_10;
    }

    if ((*a4->var0 & 0x20) != 0)
    {
      kdebug_trace();
    }
  }

  v15 = [v10 alternateDelegate];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 link:self didReceivePacket:a4 fromDeviceUniqueID:v11 cbuuid:v12];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v17 = [WeakRetained link:self didReceivePacket:a4 fromDeviceUniqueID:v11 cbuuid:v12];
  }

LABEL_10:
  return v17;
}

- (void)link:(id)a3 hostAwakeDidChange:(BOOL)a4 deviceUniqueID:(id)a5 cbuuid:(id)a6
{
  v7 = [a3 cbuuid];
  v8 = [v7 isEqualToString:kIDSDefaultPairedDeviceID];

  if (v8)
  {
    v9 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10054A414;
    block[3] = &unk_100BDFD48;
    v11 = a4;
    dispatch_async(v9, block);
  }
}

- (void)link:(id)a3 hasSpaceAvailable:(BOOL)a4 deviceUniqueID:(id)a5 cbuuid:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
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
    [WeakRetained link:self hasSpaceAvailable:v8 deviceUniqueID:v11 cbuuid:v12];
  }
}

- (void)link:(id)a3 didReceiveSKEData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 alternateDelegate];
  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = v8;
    v13 = 1024;
    v14 = [v7 length];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "didReceiveSKEData - alternateDelegate:%@, skeData:%d bytes.", buf, 0x12u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v10 = [v7 length];
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        [v7 length];
        _IDSLogV();
      }
    }
  }

  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v8 link:self didReceiveSKEData:v7];
  }
}

- (void)link:(id)a3 didReceiveKeyMaterialMessageData:(id)a4 fromParticipantIDs:(id)a5 toParticipantID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 alternateDelegate];
  v15 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v17 = v14;
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
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

  if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v14 link:self didReceiveKeyMaterialMessageData:v11 fromParticipantIDs:v12 toParticipantID:v13];
  }
}

- (void)link:(id)a3 didReceiveMaterialInfo:(id)a4 material:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 alternateDelegate];
  v12 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = v11;
    v15 = 2112;
    v16 = v9;
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

  if (v11 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v11 link:self didReceiveMaterialInfo:v9 material:v10];
  }
}

- (void)link:(id)a3 didConnectOverCloud:(id)a4 cbuuid:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_shouldStartBTLinkManager)
  {
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "didConnectOverCloud for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v14 = v10;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v14 = v10;
          _IDSLogV();
        }
      }
    }

    [(IDSLinkManager *)self _setBestLinkToCurrent:v10, v14];
    if ([v10 isEqualToString:kIDSDefaultPairedDeviceID])
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
      v16 = v10;
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

- (void)link:(id)a3 didFailToConnectOverCloud:(id)a4 cbuuid:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "didFailToConnectOverCloud for %@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v13 = v10;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v13 = v10;
        _IDSLogV();
      }
    }
  }

  [(IDSLinkManager *)self disconnectGlobalLinkForDevice:v10 isReinitiating:0 completionHandler:0, v13];
  [(IDSLinkManager *)self _setBestLinkToCurrent:v10];
  if ([v10 isEqualToString:kIDSDefaultPairedDeviceID])
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
    v15 = v10;
    dispatch_async(v12, block);
  }
}

- (void)link:(id)a3 didDisconnectOverCloud:(id)a4 cbuuid:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "didDisconnectOverCloud for %@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v17 = v10;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v17 = v10;
        _IDSLogV();
      }
    }
  }

  [(IDSLinkManager *)self stopGlobalLinkForDevice:v10, v17];
  [(IDSLinkManager *)self _setBestLinkToCurrent:v10];
  v12 = [v8 cbuuid];
  v13 = kIDSDefaultPairedDeviceID;
  v14 = [v12 isEqualToString:kIDSDefaultPairedDeviceID];

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
    v19 = v10;
    dispatch_async(v16, block);
  }
}

- (void)link:(id)a3 didConnectUnderlyingLink:(char)a4 linkUUID:(id)a5 localAttributes:(id)a6 remoteAttributes:(id)a7
{
  v10 = a4;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [v12 alternateDelegate];
  v17 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v19 = v16;
    v20 = 1024;
    v21 = v10;
    v22 = 2112;
    v23 = v13;
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

  if (v16 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v16 link:self didConnectUnderlyingLink:v10 linkUUID:v13 localAttributes:v14 remoteAttributes:v15];
  }
}

- (void)link:(id)a3 didReceiveChildConnections:(id)a4 forLinkID:(char)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [v8 alternateDelegate];
  v11 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v13 = v10;
    v14 = 2112;
    v15 = v9;
    v16 = 1024;
    v17 = v5;
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

  if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v10 link:self didReceiveChildConnections:v9 forLinkID:v5];
  }
}

- (void)link:(id)a3 didReceiveReliableUnicastServerMaterial:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 alternateDelegate];
  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v7;
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

  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v8 link:self didReceiveReliableUnicastServerMaterial:v7];
  }
}

- (void)link:(id)a3 didDisconnectUnderlyingLinkID:(char)a4 linkUUID:(id)a5 reason:(unsigned __int8)a6
{
  v6 = a6;
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = [v10 alternateDelegate];
  v13 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v15 = v12;
    v16 = 1024;
    v17 = v8;
    v18 = 2112;
    v19 = v11;
    v20 = 1024;
    v21 = v6;
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

  if (v12 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v12 link:self didDisconnectUnderlyingLinkID:v8 linkUUID:v11 reason:v6];
  }
}

- (void)link:(id)a3 didDefaultUnderlyingLinkChangeSucceeded:(BOOL)a4 currentDefaultLinkID:(char)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [v8 alternateDelegate];
  v10 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = v9;
    v13 = 1024;
    v14 = v5;
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

  if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v9 link:self didDefaultUnderlyingLinkChangeSucceeded:v6 currentDefaultLinkID:v5];
  }
}

- (void)link:(id)a3 didWiFiNWPathFlagsChanged:(unsigned __int16)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 alternateDelegate];
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v10 = v7;
    v11 = 1024;
    v12 = v4;
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

  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 link:self didWiFiNWPathFlagsChanged:v4];
  }
}

- (void)link:(id)a3 didCellularNWPathFlagsChanged:(unsigned __int16)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 alternateDelegate];
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v10 = v7;
    v11 = 1024;
    v12 = v4;
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

  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 link:self didCellularNWPathFlagsChanged:v4];
  }
}

- (void)link:(id)a3 didRATChange:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 alternateDelegate];
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v10 = v7;
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

  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 link:self didRATChange:v4];
  }
}

- (void)link:(id)a3 didCellularMTUChange:(unsigned __int16)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 alternateDelegate];
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v10 = v7;
    v11 = 1024;
    v12 = v4;
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

  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 link:self didCellularMTUChange:v4];
  }
}

- (void)link:(id)a3 didGetLinkProbingStatus:(id)a4
{
  v7 = a4;
  v6 = [a3 alternateDelegate];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 link:self didGetLinkProbingStatus:v7];
  }
}

- (void)terminateCallDueToIdleClientForLink:(id)a3
{
  v4 = a3;
  v5 = [v4 alternateDelegate];
  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v5;
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

  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 terminateCallDueToIdleClientForLink:self];
  }
}

- (void)link:(id)a3 didReceiveSessionInfo:(id)a4 relayGroupID:(id)a5 relaySessionID:(id)a6 status:(unsigned int)a7
{
  v7 = *&a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [v12 alternateDelegate];
  v17 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v19 = v14;
    v20 = 2112;
    v21 = v15;
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

  if (v16 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v16 link:self didReceiveSessionInfo:v13 relayGroupID:v14 relaySessionID:v15 status:v7];
  }
}

- (void)link:(id)a3 didFinishConvergenceForRelaySessionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 alternateDelegate];
  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v7;
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

  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v8 link:self didFinishConvergenceForRelaySessionID:v7];
  }
}

- (void)link:(id)a3 didReceiveSessionStats:(id)a4 relayGroupID:(id)a5 relaySessionID:(id)a6 success:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [v12 alternateDelegate];
  v17 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"NO";
    *buf = 138412802;
    v20 = v14;
    v21 = 2112;
    if (v7)
    {
      v18 = @"YES";
    }

    v22 = v15;
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

  if (v16 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v16 link:self didReceiveSessionStats:v13 relayGroupID:v14 relaySessionID:v15 success:v7];
  }
}

- (void)link:(id)a3 didReceiveReportEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 alternateDelegate];
  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v7;
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

  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v8 link:self didReceiveReportEvent:v7];
  }
}

- (void)link:(id)a3 didAddQREvent:(id)a4
{
  v7 = a4;
  v6 = [a3 alternateDelegate];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 link:self didAddQREvent:v7];
  }
}

- (void)link:(id)a3 reportNoSessionState:(id)a4
{
  v7 = a4;
  v6 = [a3 alternateDelegate];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 link:self reportNoSessionState:v7];
  }
}

- (void)link:(id)a3 didReceiveParticipantUpdate:(id)a4 status:(unsigned __int16)a5
{
  v5 = a5;
  v9 = a4;
  v8 = [a3 alternateDelegate];
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v8 link:self didReceiveParticipantUpdate:v9 status:v5];
  }
}

- (void)link:(id)a3 didReceivePluginRegistration:(unint64_t)a4 pluginName:(id)a5
{
  v9 = a5;
  v8 = [a3 alternateDelegate];
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v8 link:self didReceivePluginRegistration:a4 pluginName:v9];
  }
}

- (void)link:(id)a3 didReceivePluginUnregistration:(unint64_t)a4 pluginName:(id)a5
{
  v9 = a5;
  v8 = [a3 alternateDelegate];
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v8 link:self didReceivePluginUnregistration:a4 pluginName:v9];
  }
}

- (void)link:(id)a3 didReceiveRequestToPurgeRegistration:(id)a4
{
  v7 = a4;
  v6 = [a3 alternateDelegate];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 link:self didReceiveRequestToPurgeRegistration:v7];
  }
}

- (void)link:(id)a3 didReceivePluginDisconnect:(id)a4
{
  v7 = a4;
  v6 = [a3 alternateDelegate];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 link:self didReceivePluginDisconnect:v7];
  }
}

- (void)link:(id)a3 didReceiveMappedParticipantsDict:(id)a4 forLinkID:(char)a5
{
  v5 = a5;
  v9 = a4;
  v8 = [a3 alternateDelegate];
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v8 link:self didReceiveMappedParticipantsDict:v9 forLinkID:v5];
  }
}

- (void)link:(id)a3 pathMTUDidChange:(unsigned __int16)a4 forLinkID:(char)a5
{
  v5 = a5;
  v6 = a4;
  v8 = [a3 alternateDelegate];
  v9 = v8;
  if (v8)
  {
    v11 = v8;
    v10 = objc_opt_respondsToSelector();
    v9 = v11;
    if (v10)
    {
      [v11 link:self pathMTUDidChange:v6 forLinkID:v5];
      v9 = v11;
    }
  }
}

- (void)link:(id)a3 didReceiveSessionStateCounter:(unsigned int)a4
{
  v4 = *&a4;
  v6 = [a3 alternateDelegate];
  v7 = v6;
  if (v6)
  {
    v9 = v6;
    v8 = objc_opt_respondsToSelector();
    v7 = v9;
    if (v8)
    {
      [v9 link:self didReceiveSessionStateCounter:v4];
      v7 = v9;
    }
  }
}

- (void)didReceiveBlockedIndicationForLink:(id)a3 reason:(unsigned int)a4
{
  v4 = *&a4;
  v6 = [a3 alternateDelegate];
  v7 = v6;
  if (v6)
  {
    v9 = v6;
    v8 = objc_opt_respondsToSelector();
    v7 = v9;
    if (v8)
    {
      [v9 didReceiveBlockedIndicationForLink:self reason:v4];
      v7 = v9;
    }
  }
}

- (void)link:(id)a3 didReceiveEncryptedDataBlobs:(id)a4
{
  v7 = a4;
  v6 = [a3 alternateDelegate];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 link:self didReceiveEncryptedDataBlobs:v7];
  }
}

- (void)link:(id)a3 didReceiveErrorIndicationWithCode:(unsigned int)a4
{
  v4 = *&a4;
  v6 = [a3 alternateDelegate];
  v7 = v6;
  if (v6)
  {
    v9 = v6;
    v8 = objc_opt_respondsToSelector();
    v7 = v9;
    if (v8)
    {
      [v9 link:self didReceiveErrorIndicationWithCode:v4];
      v7 = v9;
    }
  }
}

- (void)manager:(id)a3 didPowerStateChange:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"OFF";
    if (v4)
    {
      v7 = @"ON";
    }

    *buf = 138412546;
    v10 = v5;
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

  if (!v4)
  {
    v8 = v5;
    IDSTransportThreadAddBlock();
  }
}

- (void)manager:(id)a3 linkDidConnect:(id)a4
{
  v5 = a4;
  v4 = v5;
  IDSTransportThreadAddBlock();
}

- (void)manager:(id)a3 linkDidDisconnect:(id)a4
{
  v5 = a4;
  v4 = v5;
  IDSTransportThreadAddBlock();
}

- (void)manager:(id)a3 didPairedDeviceChange:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4 && !self->_isCentral)
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v6;
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

    v8 = v6;
    IDSTransportThreadAddBlock();
  }
}

- (void)_handleNetworkChanges:(id)a3
{
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = a3;
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
    v31 = [v30 shouldUseIPsecLinkForDefaultPairedDevice];

    if ((v31 & 1) == 0)
    {
      v32 = kIDSDefaultPairedDeviceID;
      v33 = [(IDSLinkManager *)self _newUDPLinkForDeviceUniqueID:0 cbuuid:kIDSDefaultPairedDeviceID IPVersion:0 port:0];
      v34 = [v33 copyCurrentNetworkInterfaces];
      v35 = v34;
      if (self->_isDefaultDeviceUsingBTLink)
      {
        if (!self->_isCentral && self->_doesDefaultDevicePreferInfraWiFi && ![v34 count])
        {
          [(IDSLinkManager *)self _suspendBTLink:0 cbuuid:v32];
LABEL_106:
          v49 = [v35 firstObject];
          v50 = [v49 address];
          [v33 reconnectWithLocalAddress:v50];

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

      v38 = [v35 firstObject];
      v39 = v38;
      if (self->_isWiFiBroughtUp)
      {
        v40 = self->_localWiFiAddressUsedForDefaultDevice;
        if (!self->_isCentral)
        {
          v51 = [v38 address];
          v52 = [(IDSSockAddrWrapper *)v40 isEqualToWrapper:v51];

          v53 = [v35 firstObject];
          v54 = [v53 address];
          [v33 reconnectWithLocalAddress:v54];

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

        if (!v40 || ([v38 address], v41 = objc_claimAutoreleasedReturnValue(), v42 = -[IDSSockAddrWrapper isEqualToWrapper:](v40, "isEqualToWrapper:", v41), v41, v42))
        {
          self->_shouldKeepWiFiUp = 1;

LABEL_89:
          v43 = [v35 firstObject];
          v44 = [v43 address];
          [v33 reconnectWithLocalAddress:v44];

          goto LABEL_90;
        }
      }

      else
      {
        [(IDSLinkManager *)self _connectivityChangedForDefaultDevice:0 isCloudConnected:self->_lastSentDefaultDeviceCloudConnectivity];
      }

      v47 = [v35 firstObject];
      v48 = [v47 address];
      [v33 reconnectWithLocalAddress:v48];

LABEL_107:
    }
  }
}

- (void)currentLinkType:(unint64_t *)a3 andRATType:(unsigned int *)a4 forDeviceID:(id)a5
{
  v8 = a5;
  *a3 = 0;
  *a4 = 0;
  if ([v8 isEqualToString:kIDSDefaultPairedDeviceID])
  {
    *a3 = self->_currentDefaultDeviceLinkType;
  }

  else
  {
    Value = 0;
    if (v8 && self->_deviceIDToCurrentLink)
    {
      Value = CFDictionaryGetValue(self->_deviceIDToCurrentLink, v8);
    }

    v10 = Value;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 defaultLinkType];
      *a3 = v11;
      if (v11 == 4)
      {
        v12 = +[IDSCellularLinkMonitor sharedInstance];
        *a4 = [v12 radioAccessTechnology];
      }

      else
      {
        *a4 = 0;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        *a3 = 2;
      }
    }

    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *a3;
      v15 = *a4;
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

- (id)linkForCBUUID:(id)a3
{
  Value = 0;
  if (a3)
  {
    deviceIDToCurrentLink = self->_deviceIDToCurrentLink;
    if (deviceIDToCurrentLink)
    {
      Value = CFDictionaryGetValue(deviceIDToCurrentLink, a3);
      v3 = vars8;
    }
  }

  return Value;
}

- (unint64_t)currentLinkType:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:kIDSDefaultPairedDeviceID])
  {
    currentDefaultDeviceLinkType = self->_currentDefaultDeviceLinkType;
  }

  else
  {
    Value = 0;
    if (v4 && self->_deviceIDToCurrentLink)
    {
      Value = CFDictionaryGetValue(self->_deviceIDToCurrentLink, v4);
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
      v11 = v4;
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

- (id)_getIDSLinkTypeString:(unint64_t)a3
{
  if (a3 > 6)
  {
    return @"UnexpectedType";
  }

  else
  {
    return *(&off_100BDFFB0 + a3);
  }
}

- (unint64_t)_getIDSLinkTypeFromWRMLinkType:(unint64_t)a3
{
  if (a3 > 3)
  {
    return 6;
  }

  else
  {
    return qword_1009ABB60[a3];
  }
}

- (unint64_t)_getWRMLinkTypeFromIDSLinkType:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return 2;
  }

  else
  {
    return qword_1009ABB80[a3 - 1];
  }
}

- (void)_handleWRMLinkRecommendation:(unint64_t)a3
{
  v3 = a3;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v6 = v3;
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

- (void)_subscribeToWRMForLinkRecommendation:(unint64_t)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10054F20C;
  v7[3] = &unk_100BDFF28;
  v7[4] = self;
  v4 = objc_retainBlock(v7);
  v5 = +[IDSWRMExchange sharedInstance];
  v6 = dispatch_get_global_queue(-32768, 0);
  [v5 subscribeForRecommendation:v6 recommendationType:a3 block:v4];
}

- (void)_unsubscribeFromWRMForLinkRecommendation
{
  v2 = +[IDSWRMExchange sharedInstance];
  [v2 unsubscribeForRecommendation];
}

- (void)cellularRadioAccessTechnologyDidChange:(BOOL)a3
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
    v30 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "cellular RAT changed, usable: %@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v7 = v3 ? @"YES" : @"NO";
    v23 = v7;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      v23 = v7;
      _IDSLogV();
    }
  }

  if (v3)
  {
    v8 = [(NSMutableDictionary *)self->_cbuuidToLinks allKeys];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v8;
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

- (void)cellularSoMaskDidChange:(unsigned int)a3
{
  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v6 = a3;
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