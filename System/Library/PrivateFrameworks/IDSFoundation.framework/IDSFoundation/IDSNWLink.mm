@interface IDSNWLink
+ (id)derivePSKFromSessionKey:(id)key salt:(id)salt;
- ($EF6EC642B48E9BFC073294F479749444)demuxPatternForQPodConnectionWithID:(unsigned int)d forNWLinkConnection:(id)connection;
- (BOOL)_createChannelDataConnection:(id)connection retryIndex:(unsigned __int8)index;
- (BOOL)_createReliableUnicastConnection:(id)connection localQUICConnectionID:(id)d;
- (BOOL)_doesUDPConnectionInProgressExist:(id)exist;
- (BOOL)_findExistingCollidingQRConnection:(id)connection remoteEndpoint:(id)endpoint sessionID:(id)d localEndpointToUse:(id *)use;
- (BOOL)_isLocalEndpointCellular:(id)cellular;
- (BOOL)_setParameters:(id)parameters NWLinkConnection:(id)connection sharePortWithListener:(BOOL)listener isTCP:(BOOL)p;
- (BOOL)_shouldAllowP2PConnectionTo:(id)to anotherRemoteEndpoint:(id)endpoint;
- (BOOL)_shouldFail;
- (BOOL)connect:(int)connect localAddress:(const sockaddr *)address remoteAddress:(const sockaddr *)remoteAddress clientUUID:(unsigned __int8)d[16] sessionID:(id)iD relaySessionToken:(id)token relaySessionKey:(id)key randomSaltBlock:(id)self0 pskTransportParameters:(id)self1 pskH3Settings:(id)self2 newLocalPort:(unsigned __int16 *)self3 disconnectAfterUse:(BOOL)self4 holdUntilFirstPacketReady:(BOOL)self5 usePathMTUDiscovery:(BOOL)self6 readyHandler:(id)self7;
- (BOOL)connectTCP:(int)p localAddress:(const sockaddr *)address remoteAddress:(const sockaddr *)remoteAddress clientUUID:(unsigned __int8)d[16] sessionID:(id)iD relaySessionToken:(id)token relaySessionKey:(id)key randomSaltBlock:(id)self0 newLocalPort:(unsigned __int16 *)self1 disconnectAfterUse:(BOOL)self2 readyHandler:(id)self3;
- (BOOL)createQUICPodP2PConnectionsForSession:(id)session localAddress:(const sockaddr *)address remoteAddress:(const sockaddr *)remoteAddress quicConnectionIDs:(id)ds negotiatedKeys:(id)keys channelNumber:(unsigned __int16)number completionHandler:(id)handler;
- (BOOL)createQUICPodQRConnectionsForSession:(id)session localAddress:(const sockaddr *)address remoteAddress:(const sockaddr *)remoteAddress quicConnectionIDs:(id)ds channelNumber:(unsigned __int16)number;
- (BOOL)getEffectiveSourceAddress:(sockaddr_storage *)address fromSourceAddress:(const sockaddr *)sourceAddress effectiveDestinationAddress:(sockaddr_storage *)destinationAddress fromDestinationAddress:(const sockaddr *)fromDestinationAddress sessionID:(id)d isQRConnection:(BOOL)connection;
- (IDSLinkDelegate)alternateDelegate;
- (IDSLinkDelegate)delegate;
- (IDSNWLink)initWithDeviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (id)_NWLinkConnectionForToken:(id)token;
- (id)_childConnectionEvaluatorForToken:(id)token;
- (id)_copyChildConnectionIDFor:(id)for clientUniquePID:(unint64_t)d sessionID:(id)iD isRelay:(BOOL)relay isCellular:(BOOL)cellular isQUICPod:(BOOL)pod;
- (id)_createNetworkInterfaceArrayWithIPVersion:(unint64_t)version wantsWiFi:(BOOL)fi wantsCellular:(BOOL)cellular;
- (id)_createNewListenerWithLocalPort:(unsigned __int16 *)port;
- (id)_createP2PQUICPodConnectionWithType:(unsigned int)type udpNWLinkConnection:(id)connection parameters:(id)parameters completionHandler:(id)handler;
- (id)_createQUICPodConnectionWithType:(unsigned int)type quicNWLinkConnection:(id)connection qpodParameters:(id)parameters;
- (id)_dictionaryFromPSKParameters:(id)parameters;
- (id)_extraListenerForPort:(unsigned __int16)port;
- (id)_findListenerWithLocalEndpoint:(id)endpoint;
- (id)_findNewLocalEndpointForQRConnection:(id)connection;
- (id)connectionInfoForLocalAddress:(const sockaddr *)address remoteAddress:(const sockaddr *)remoteAddress clientUniquePID:(unint64_t)d sessionID:(id)iD type:(unint64_t)type isRelay:(BOOL)relay protocolStackSuffix:(id)suffix isCellular:(BOOL)self0;
- (id)connectionInfoForToken:(id)token;
- (id)copyCurrentNetworkInterfaces;
- (id)newListenerWithClientUUID:(unsigned __int8)d[16] wantsWiFi:(BOOL)fi wantsCellular:(BOOL)cellular;
- (id)protocolStackDescriptionFor:(id)for;
- (unint64_t)_sendData:(id)data withPacketBuffer:(id *)buffer NWLinkConnection:(id)connection;
- (unint64_t)sendPacketBufferArray:(id *)array arraySize:(int)size toDeviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (unsigned)_NAT64LocalAddressForInterfaceIndex:(unsigned int)index;
- (unsigned)_getConnectedLocalPortAndSetLocalEndpointForConnection:(id)connection;
- (void)_addChildConnectionEvaluator:(id)evaluator token:(id)token;
- (void)_addExtraListener:(id)listener port:(unsigned __int16)port isCellular:(BOOL)cellular;
- (void)_addInterfaceIndex:(unsigned int)index NAT64LocalAddress:(unsigned int)address;
- (void)_addNWLinkConnection:(id)connection token:(id)token;
- (void)_addPendingTCPNWLinkConnection:(id)connection token:(id)token;
- (void)_addToRecentQRServerList:(id)list;
- (void)_addUDPConnectionInProgress:(id)progress token:(id)token;
- (void)_cancelNWLinkConnection:(id)connection remove:(BOOL)remove;
- (void)_cancelNWLinkConnectionWithToken:(id)token removeNWLinkConnectionNow:(BOOL)now;
- (void)_cleanup:(BOOL)_cleanup;
- (void)_createChannelDataConnectionForH2:(id)h2 retryIndex:(unsigned __int8)index;
- (void)_createIndicationConnection:(id)connection retryIndex:(unsigned __int8)index;
- (void)_createUDPConnectionForNWLinkConnection:(id)connection readyHandler:(id)handler;
- (void)_failConnectionsRandomly;
- (void)_failNWLinkConnection:(id)connection;
- (void)_handleIncomingIndicationMessage:(id)message;
- (void)_handleIncomingMessage:(id)message keepWaiting:(BOOL)waiting;
- (void)_peelOffQUICConnection:(id)connection type:(unint64_t)type readyHandler:(id)handler cancelHandler:(id)cancelHandler;
- (void)_removeChildConnectionEvaluatorFortoken:(id)fortoken;
- (void)_removeExtraListener:(unsigned __int16)listener;
- (void)_removeNWLinkConnection:(id)connection token:(id)token;
- (void)_removePendingTCPNWLinkConnectionForToken:(id)token;
- (void)_removeUDPConnectionInProgress:(id)progress token:(id)token;
- (void)_scheduleRetryConnectionIfNeeded:(id)needed baseConnection:(id)connection kind:(const char *)kind retryIndex:(unsigned __int8)index retryBlock:(id)block;
- (void)_setQUICKeepAliveForCellularLink:(id)link;
- (void)_setWiFiAssistStateForCellularLink:(id)link isEnabled:(BOOL)enabled;
- (void)_tryReadH2Header:(id)header;
- (void)dealloc;
- (void)disconnectP2PWithSessionID:(id)d localAddress:(const sockaddr *)address remoteAddress:(const sockaddr *)remoteAddress;
- (void)disconnectWithSessionID:(id)d localAddress:(const sockaddr *)address remoteAddress:(const sockaddr *)remoteAddress waitTime:(double)time final:(BOOL)final;
- (void)invalidate;
- (void)logConnectionSubtree:(id)subtree indentation:(id)indentation;
- (void)logConnectionTree;
- (void)peelOffReliableUnicastConnectionforLocalAddress:(const sockaddr *)address remoteAddress:(const sockaddr *)remoteAddress sessionID:(id)d localQUICConnectionID:(id)iD;
- (void)removeChildConnectionEvaluatorForSessionID:(id)d localAddress:(const sockaddr *)address remoteAddress:(const sockaddr *)remoteAddress isRelay:(BOOL)relay;
- (void)requestPathMTUEvaluationForLocalAddress:(const sockaddr *)address remoteAddress:(const sockaddr *)remoteAddress sessionID:(id)d type:(unint64_t)type;
- (void)setFtPowerOptimizationEnabled:(BOOL)enabled;
- (void)setWiFiAssistState:(BOOL)state;
@end

@implementation IDSNWLink

- (IDSNWLink)initWithDeviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  v37 = *MEMORY[0x1E69E9840];
  dCopy = d;
  cbuuidCopy = cbuuid;
  v34.receiver = self;
  v34.super_class = IDSNWLink;
  v9 = [(IDSNWLink *)&v34 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cbuuid, cbuuid);
    v10->_isDefaultPairedDevice = [(NSString *)v10->_cbuuid isEqualToString:@"12345678-7654-DADA-DADA-DADADADADADA"];
    objc_storeStrong(&v10->_deviceUniqueID, d);
    v10->_lock._os_unfair_lock_opaque = 0;
    if (!v10->_recentQRServerList)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      recentQRServerList = v10->_recentQRServerList;
      v10->_recentQRServerList = v11;
    }

    if (!v10->_tokenToPendingUDPNWLinkConnection)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      tokenToPendingUDPNWLinkConnection = v10->_tokenToPendingUDPNWLinkConnection;
      v10->_tokenToPendingUDPNWLinkConnection = Mutable;
    }

    if (!v10->_cellularPortList)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
      cellularPortList = v10->_cellularPortList;
      v10->_cellularPortList = v15;
    }

    if (!v10->_queuedPeelOffs)
    {
      v17 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      queuedPeelOffs = v10->_queuedPeelOffs;
      v10->_queuedPeelOffs = v17;
    }

    if (!v10->_tokenToNWLinkConnection)
    {
      v19 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      tokenToNWLinkConnection = v10->_tokenToNWLinkConnection;
      v10->_tokenToNWLinkConnection = v19;
    }

    if (!v10->_tokenToPendingTCPNWLinkConnection)
    {
      v21 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      tokenToPendingTCPNWLinkConnection = v10->_tokenToPendingTCPNWLinkConnection;
      v10->_tokenToPendingTCPNWLinkConnection = v21;
    }

    if (!v10->_tokenToChildConnectionEvaluator)
    {
      v23 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      tokenToChildConnectionEvaluator = v10->_tokenToChildConnectionEvaluator;
      v10->_tokenToChildConnectionEvaluator = v23;
    }

    if (!v10->_interfaceIndexToNAT64LocalAddress)
    {
      v25 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      interfaceIndexToNAT64LocalAddress = v10->_interfaceIndexToNAT64LocalAddress;
      v10->_interfaceIndexToNAT64LocalAddress = v25;
    }

    if (!v10->_portToExtraListener)
    {
      v27 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      portToExtraListener = v10->_portToExtraListener;
      v10->_portToExtraListener = v27;
    }

    if (!v10->_rootConnections)
    {
      v29 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      rootConnections = v10->_rootConnections;
      v10->_rootConnections = v29;
    }

    v10->_state = 0;
    if (IMGetDomainBoolForKey())
    {
      v31 = +[IDSFoundationLog IDSNWLink];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v31, OS_LOG_TYPE_DEFAULT, "NWLinkChaos on", buf, 2u);
      }

      v10->_shouldFailConnectionsRandomly = 1;
      [(IDSNWLink *)v10 _failConnectionsRandomly];
    }

    v10->_ftPowerOptimizationEnabled = 0;
  }

  v32 = +[IDSFoundationLog IDSNWLink];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v36 = v10;
    _os_log_impl(&dword_1A7AD9000, v32, OS_LOG_TYPE_DEFAULT, "created %p", buf, 0xCu);
  }

  return v10;
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = +[IDSFoundationLog IDSNWLink];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (self->_isInvalidated)
    {
      v4 = @"YES";
    }

    *buf = 134218242;
    selfCopy = self;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "deallocating... %p invalidated: %@", buf, 0x16u);
  }

  if (!self->_isInvalidated)
  {
    [(IDSNWLink *)self invalidate];
  }

  v5.receiver = self;
  v5.super_class = IDSNWLink;
  [(IDSNWLink *)&v5 dealloc];
}

- (void)_cleanup:(BOOL)_cleanup
{
  _cleanupCopy = _cleanup;
  v63 = *MEMORY[0x1E69E9840];
  v5 = +[IDSFoundationLog IDSNWLink];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (_cleanupCopy)
    {
      v6 = @"YES";
    }

    *buf = 134218242;
    selfCopy = self;
    v61 = 2112;
    v62 = v6;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "cleaning up... %p invalidate: %@", buf, 0x16u);
  }

  listener = self->_listener;
  if (listener)
  {
    nw_listener_cancel(listener);
  }

  cellularListener = self->_cellularListener;
  if (cellularListener)
  {
    nw_listener_cancel(cellularListener);
  }

  os_unfair_lock_lock(&self->_lock);
  self->_isInvalidated = _cleanupCopy;
  recentQRServerList = self->_recentQRServerList;
  self->_recentQRServerList = 0;

  cellularPortList = self->_cellularPortList;
  self->_cellularPortList = 0;

  queuedPeelOffs = self->_queuedPeelOffs;
  self->_queuedPeelOffs = 0;

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = [(NSMutableDictionary *)self->_tokenToNWLinkConnection copy];
  tokenToNWLinkConnection = self->_tokenToNWLinkConnection;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = sub_1A7B2FE28;
  v54[3] = &unk_1E77E00C8;
  v15 = v12;
  v55 = v15;
  [(NSMutableDictionary *)tokenToNWLinkConnection enumerateKeysAndObjectsUsingBlock:v54];
  [(NSMutableDictionary *)self->_tokenToNWLinkConnection removeAllObjects];
  [(NSMutableDictionary *)self->_interfaceIndexToNAT64LocalAddress removeAllObjects];
  allValues = [(NSMutableDictionary *)self->_tokenToChildConnectionEvaluator allValues];
  [(NSMutableDictionary *)self->_tokenToChildConnectionEvaluator removeAllObjects];
  allValues2 = [(NSMutableDictionary *)self->_portToExtraListener allValues];
  v18 = [allValues2 mutableCopy];

  if (!v18)
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  if (self->_listener)
  {
    [v18 addObject:?];
  }

  if (self->_cellularListener)
  {
    [v18 addObject:?];
  }

  [(NSMutableDictionary *)self->_portToExtraListener removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v19 = v15;
  v20 = [v19 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v51;
    do
    {
      v23 = 0;
      do
      {
        if (*v51 != v22)
        {
          objc_enumerationMutation(v19);
        }

        nw_connection_cancel(*(*(&v50 + 1) + 8 * v23++));
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v21);
  }

  v24 = [(NSMutableDictionary *)self->_tokenToPendingTCPNWLinkConnection copy];
  [(NSMutableDictionary *)self->_tokenToPendingTCPNWLinkConnection removeAllObjects];
  if (v24)
  {
    [v24 enumerateKeysAndObjectsUsingBlock:&unk_1F1AAA1E0];
  }

  v25 = [(NSMutableDictionary *)self->_tokenToPendingUDPNWLinkConnection copy];
  [(NSMutableDictionary *)self->_tokenToPendingUDPNWLinkConnection removeAllObjects];
  if (v25)
  {
    [v25 enumerateKeysAndObjectsUsingBlock:&unk_1F1AAA200];
  }

  if (v13)
  {
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = sub_1A7B2FF68;
    v49[3] = &unk_1E77E00C8;
    v49[4] = self;
    [v13 enumerateKeysAndObjectsUsingBlock:v49];
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v26 = allValues;
  v27 = [v26 countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v46;
    do
    {
      v30 = 0;
      do
      {
        if (*v46 != v29)
        {
          objc_enumerationMutation(v26);
        }

        nw_path_evaluator_cancel();
        ++v30;
      }

      while (v28 != v30);
      v28 = [v26 countByEnumeratingWithState:&v45 objects:v57 count:16];
    }

    while (v28);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v31 = v18;
  v32 = [v31 countByEnumeratingWithState:&v41 objects:v56 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v42;
    do
    {
      v35 = 0;
      do
      {
        if (*v42 != v34)
        {
          objc_enumerationMutation(v31);
        }

        nw_listener_cancel(*(*(&v41 + 1) + 8 * v35++));
      }

      while (v33 != v35);
      v33 = [v31 countByEnumeratingWithState:&v41 objects:v56 count:16];
    }

    while (v33);
  }

  rootConnections = self->_rootConnections;
  if (rootConnections)
  {
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = sub_1A7B2FF74;
    v40[3] = &unk_1E77E0110;
    v40[4] = self;
    [(NSMutableSet *)rootConnections enumerateObjectsUsingBlock:v40];
    [(NSMutableSet *)self->_rootConnections removeAllObjects];
    v37 = self->_rootConnections;
    self->_rootConnections = 0;
  }

  v38 = self->_listener;
  self->_listener = 0;

  v39 = self->_cellularListener;
  self->_cellularListener = 0;

  if (_cleanupCopy)
  {
    objc_storeWeak(&self->_delegate, 0);
  }
}

- (void)invalidate
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = +[IDSFoundationLog IDSNWLink];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "invalidating... %p", &v4, 0xCu);
  }

  [(IDSNWLink *)self _cleanup:1];
}

- (void)setWiFiAssistState:(BOOL)state
{
  stateCopy = state;
  v20 = *MEMORY[0x1E69E9840];
  v5 = +[IDSFoundationLog IDSNWLink];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (stateCopy)
    {
      v6 = @"YES";
    }

    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "NWLink setWiFiAssistState(%@) called", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  allValues = [(NSMutableDictionary *)self->_tokenToNWLinkConnection allValues];
  os_unfair_lock_unlock(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = allValues;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(IDSNWLink *)self _setWiFiAssistStateForCellularLink:*(*(&v13 + 1) + 8 * v12++) isEnabled:stateCopy, v13];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  self->_wifiAssistEnabled = stateCopy;
}

- (void)setFtPowerOptimizationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v13 = *MEMORY[0x1E69E9840];
  v5 = +[IDSFoundationLog IDSNWLink];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (enabledCopy)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    *buf = 138412290;
    v12 = v6;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "NWLink setFtPowerOptimizationEnabled:(%@)", buf, 0xCu);
  }

  LODWORD(v10) = 1459208360;
  v7 = MGIsDeviceOfType();
  v8 = [IDSFoundationLog IDSNWLink:0xA644847F97CC625ELL];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    *buf = 138412290;
    v12 = v9;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "setFtPowerOptimizationEnabled: platform requires optimization:(%@)", buf, 0xCu);
  }

  self->_ftPowerOptimizationEnabled = enabledCopy;
}

- (void)_failConnectionsRandomly
{
  v29 = *MEMORY[0x1E69E9840];
  if (!self->_isInvalidated)
  {
    v3 = +[IDSFoundationLog IDSNWLink];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "NWLinkChaos: logging connection tree", buf, 2u);
    }

    [(IDSNWLink *)self logConnectionTree];
    array = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = self->_tokenToNWLinkConnection;
    v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      do
      {
        v9 = 0;
        do
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [(NSMutableDictionary *)self->_tokenToNWLinkConnection objectForKeyedSubscript:*(*(&v22 + 1) + 8 * v9)];
          if (([v10 type] == 2 || objc_msgSend(v10, "type") == 4) && objc_msgSend(v10, "state") == 1)
          {
            [array addObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v7);
    }

    v11 = +[IDSFoundationLog IDSNWLink];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [array count];
      *buf = 134217984;
      v27 = v12;
      _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "NWLinkChaos: collected %lu possible connections to cancel", buf, 0xCu);
    }

    if ([array count])
    {
      v13 = [array objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(array, "count"))}];
      sub_1A7B306B4(v13, 1, "NWLinkChaos failing connection", v14, v15, v16, v17, v18, v20);
      [(IDSNWLink *)self _failNWLinkConnection:v13];
      v19 = +[IDSFoundationLog IDSNWLink];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "NWLinkChaos: new connection tree", buf, 2u);
      }

      [(IDSNWLink *)self logConnectionTree];
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1A7B309A8;
    v21[3] = &unk_1E77E0138;
    v21[4] = self;
    IDSTransportThreadAddBlockAfter(v21, 5.0);
  }
}

- (BOOL)_shouldFail
{
  v8 = *MEMORY[0x1E69E9840];
  if (!self->_shouldFailConnectionsRandomly)
  {
    return 0;
  }

  v2 = arc4random();
  v3 = +[IDSFoundationLog IDSNWLink];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v2;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "NWLinkChaos _shouldFail: rnd = %u", v7, 8u);
  }

  HIDWORD(v4) = -1030792151 * v2;
  LODWORD(v4) = -1030792151 * v2;
  if ((v4 >> 2) > 0x28F5C28)
  {
    return 0;
  }

  v6 = +[IDSFoundationLog IDSNWLink];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7[0]) = 0;
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "NWLinkChaos _shouldFail: returning YES; something should break (and hopefully retry)...", v7, 2u);
  }

  return 1;
}

- (id)copyCurrentNetworkInterfaces
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [(IDSNWLink *)self _createNetworkInterfaceArrayWithIPVersion:0 wantsWiFi:self->_wantsWiFi wantsCellular:self->_wantsCellular];
  v19 = [(IDSNWLink *)self _createNetworkInterfaceArrayWithIPVersion:1 wantsWiFi:self->_wantsWiFi wantsCellular:self->_wantsCellular];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v21;
    for (i = *v21; ; i = *v21)
    {
      if (i != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v20 + 1) + 8 * v7);
      address = [v10 address];
      v12 = [address sa];

      index = [v10 index];
      if (_supportsNAT64(v12, index))
      {
        v14 = +[IDSFoundationLog IDSNWLink];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = SAToIPString(v12);
          *buf = 67109378;
          v25 = index;
          v26 = 2112;
          v27 = v15;
          _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "NAT64: if:%u -> %@", buf, 0x12u);
        }

        [(IDSNWLink *)self _addInterfaceIndex:index NAT64LocalAddress:bswap32(*(v12 + 4))];
      }

      if (++v7 >= v6)
      {
        v16 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (!v16)
        {
          break;
        }

        v6 = v16;
        v7 = 0;
      }
    }
  }

  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v17 addObjectsFromArray:v4];
  [v17 addObjectsFromArray:v19];

  return v17;
}

- (id)newListenerWithClientUUID:(unsigned __int8)d[16] wantsWiFi:(BOOL)fi wantsCellular:(BOOL)cellular
{
  cellularCopy = cellular;
  fiCopy = fi;
  v33 = *MEMORY[0x1E69E9840];
  *self->_clientUUID = *d;
  self->_wantsWiFi = fi;
  self->_wantsCellular = cellular;
  v8 = +[IDSFoundationLog IDSNWLink];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    port = self->_port;
    cellularPort = self->_cellularPort;
    if (fiCopy)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    *v26 = 138413058;
    if (cellularCopy)
    {
      v9 = @"YES";
    }

    *&v26[4] = v12;
    v27 = 1024;
    v28 = port;
    v29 = 2112;
    v30 = v9;
    v31 = 1024;
    v32 = cellularPort;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "setting up listeners (wantsWiFi:%@ on port %u, wantsCellular:%@ on port %u)", v26, 0x22u);
  }

  if (fiCopy)
  {
    v13 = [(IDSNWLink *)self _createNewListenerWithLocalPort:&self->_port];
    listener = self->_listener;
    self->_listener = v13;

    if (!self->_listener)
    {
      v23 = +[IDSFoundationLog IDSNWLink];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E12504();
      }

      goto LABEL_21;
    }
  }

  if (cellularCopy)
  {
    v15 = [(IDSNWLink *)self _createNewListenerWithLocalPort:&self->_cellularPort];
    cellularListener = self->_cellularListener;
    self->_cellularListener = v15;

    if (!self->_cellularListener)
    {
      v24 = self->_listener;
      if (v24)
      {
        nw_listener_cancel(v24);
        v25 = self->_listener;
        self->_listener = 0;
      }

      v23 = +[IDSFoundationLog IDSNWLink];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E124D0();
      }

LABEL_21:

      return 0;
    }
  }

  v17 = +[IDSFoundationLog IDSNWLink];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = self->_port;
    v19 = self->_listener;
    v20 = self->_cellularListener;
    v21 = self->_cellularPort;
    *v26 = 134218752;
    *&v26[4] = v19;
    v27 = 1024;
    v28 = v18;
    v29 = 2048;
    v30 = v20;
    v31 = 1024;
    v32 = v21;
    _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "created listeners default %p port %d cellular %p cellularPort %d", v26, 0x22u);
  }

  return [(IDSNWLink *)self copyCurrentNetworkInterfaces];
}

+ (id)derivePSKFromSessionKey:(id)key salt:(id)salt
{
  v13 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  saltCopy = salt;
  if ([keyCopy length] != 20)
  {
    v7 = +[IDSFoundationLog IDSNWLink];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E12538();
    }

    goto LABEL_14;
  }

  if ([saltCopy length] != 12)
  {
    v7 = +[IDSFoundationLog IDSNWLink];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1256C();
    }

    goto LABEL_14;
  }

  v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:32];
  qmemcpy(&v12, "QR-QUIC-V0", 10);
  [saltCopy bytes];
  if (CCKDFParametersCreateHkdf())
  {
    v8 = +[IDSFoundationLog IDSNWLink];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E125A0();
    }

LABEL_13:

LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  [keyCopy bytes];
  [v7 mutableBytes];
  [v7 length];
  v9 = CCDeriveKey();
  CCKDFParametersDestroy();
  if (v9)
  {
    v8 = +[IDSFoundationLog IDSNWLink];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E12610();
    }

    goto LABEL_13;
  }

  v10 = v7;
LABEL_15:

  return v10;
}

- (id)_dictionaryFromPSKParameters:(id)parameters
{
  v33 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (parametersCopy && [parametersCopy length]> 2)
  {
    [parametersCopy componentsSeparatedByString:@", "];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    log = v29 = 0u;
    v4 = [log countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v4)
    {
      v5 = v4;
      v22 = parametersCopy;
      v6 = *v27;
      v7 = 0x1E77DB000uLL;
      v8 = &dword_1A7AD9000;
      v23 = *v27;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v27 != v6)
          {
            objc_enumerationMutation(log);
          }

          v10 = *(*(&v26 + 1) + 8 * i);
          if (v10 && [*(*(&v26 + 1) + 8 * i) length] > 2)
          {
            v12 = [v10 componentsSeparatedByString:@":"];
            iDSNWLink2 = v12;
            if (v12 && [v12 count]== 2)
            {
              iDSNWLink = [iDSNWLink2 objectAtIndexedSubscript:0];
              v14 = [iDSNWLink2 objectAtIndexedSubscript:1];
              longLongValue = [iDSNWLink longLongValue];
              longLongValue2 = [v14 longLongValue];
              [MEMORY[0x1E696AD98] numberWithLongLong:longLongValue2];
              v17 = v7;
              v19 = v18 = v8;
              v20 = [MEMORY[0x1E696AD98] numberWithLongLong:longLongValue];
              [dictionary setObject:v19 forKeyedSubscript:v20];

              v8 = v18;
              v7 = v17;
              v6 = v23;
            }

            else
            {
              iDSNWLink = [*(v7 + 2592) IDSNWLink];
              if (os_log_type_enabled(iDSNWLink, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v32 = iDSNWLink2;
                _os_log_impl(v8, iDSNWLink, OS_LOG_TYPE_DEFAULT, "_dictionaryFromPSKParameters: parameter pair has wrong number of parts: %@", buf, 0xCu);
              }
            }
          }

          else
          {
            iDSNWLink2 = [*(v7 + 2592) IDSNWLink];
            if (os_log_type_enabled(iDSNWLink2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v32 = v10;
              _os_log_impl(v8, iDSNWLink2, OS_LOG_TYPE_DEFAULT, "_dictionaryFromPSKParameters: parameter pair is not long enough: %@", buf, 0xCu);
            }
          }
        }

        v5 = [log countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v5);
      parametersCopy = v22;
    }
  }

  else
  {
    log = +[IDSFoundationLog IDSNWLink];
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = parametersCopy;
      _os_log_impl(&dword_1A7AD9000, log, OS_LOG_TYPE_DEFAULT, "_dictionaryFromPSKParameters: rawStr not long enough: %@", buf, 0xCu);
    }
  }

  return dictionary;
}

- (BOOL)connect:(int)connect localAddress:(const sockaddr *)address remoteAddress:(const sockaddr *)remoteAddress clientUUID:(unsigned __int8)d[16] sessionID:(id)iD relaySessionToken:(id)token relaySessionKey:(id)key randomSaltBlock:(id)self0 pskTransportParameters:(id)self1 pskH3Settings:(id)self2 newLocalPort:(unsigned __int16 *)self3 disconnectAfterUse:(BOOL)self4 holdUntilFirstPacketReady:(BOOL)self5 usePathMTUDiscovery:(BOOL)self6 readyHandler:(id)self7
{
  v19 = *&connect;
  v208 = *MEMORY[0x1E69E9840];
  iDCopy = iD;
  tokenCopy = token;
  keyCopy = key;
  blockCopy = block;
  parametersCopy = parameters;
  settingsCopy = settings;
  handlerCopy = handler;
  *self->_clientUUID = *d;
  addressCopy = address;
  address = nw_endpoint_create_address(address);
  v201 = 0;
  selfCopy = self;
  v166 = iDCopy;
  endpoint = nw_endpoint_create_address(remoteAddress);
  LODWORD(token) = [IDSNWLink _findExistingCollidingQRConnection:"_findExistingCollidingQRConnection:remoteEndpoint:sessionID:localEndpointToUse:" remoteEndpoint:address sessionID:? localEndpointToUse:?];
  v24 = 0;
  if (!token)
  {
    v157 = v24;
    goto LABEL_8;
  }

  v25 = v24;
  if (v24 || ([(IDSNWLink *)selfCopy _findNewLocalEndpointForQRConnection:address], (v25 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v26 = +[IDSFoundationLog IDSNWLink];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = address;
      v206 = 2112;
      v207 = v25;
      _os_log_impl(&dword_1A7AD9000, v26, OS_LOG_TYPE_DEFAULT, "COLLISION MITIGATED: local endpoint %@ -> %@", buf, 0x16u);
    }

    v198[0] = MEMORY[0x1E69E9820];
    v198[1] = 3221225472;
    v198[2] = sub_1A7B32714;
    v198[3] = &unk_1E77E0138;
    v198[4] = selfCopy;
    IDSTransportThreadAddBlock(v198);
    *port = nw_endpoint_get_port(v25);
    v157 = v25;

    address = v157;
LABEL_8:
    v169 = _tokenWithParameters(address, endpoint, iDCopy, 5uLL, 0);
    v27 = [(IDSNWLink *)selfCopy _NWLinkConnectionForToken:v169];
    if (!v27)
    {
LABEL_12:
      v156 = blockCopy[2]();
      if (v156)
      {
        v35 = [[NWLinkConnection alloc] initWithType:5 interfaceIndex:v19 localEndpoint:address remoteEndpoint:endpoint];

        [(NWLinkConnection *)v35 setHasRequiredInterface:1];
        [(NWLinkConnection *)v35 setSupportsNAT64:_supportsNAT64(addressCopy, v19)];
        [(NWLinkConnection *)v35 setSessionID:iDCopy];
        if (!use)
        {
          [(NWLinkConnection *)v35 setDisconnectionState:2];
        }

        v36 = nw_interface_create_with_index();
        sub_1A7B306B4(v35, 1, "connecting on if:%@(%u) for %@", v37, v38, v39, v40, v41, v36);

        queue = NWLinkQueue();
        parameters = nw_parameters_create_secure_udp(*MEMORY[0x1E6977EC0], *MEMORY[0x1E6977EB8]);
        stack = nw_parameters_copy_default_protocol_stack(parameters);
        *__buf = -1431655766;
        arc4random_buf(__buf, 4uLL);
        *__buf &= ~0x800000u;
        v42 = +[IDSFoundationLog IDSNWLink];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = *__buf;
          _os_log_impl(&dword_1A7AD9000, v42, OS_LOG_TYPE_DEFAULT, "_generateQUICConnectionID: %08x", buf, 8u);
        }

        buffer = *__buf;
        v146 = dispatch_data_create(&buffer, 4uLL, 0, 0);
        protocol = nw_demux_create_options();
        v189 = 64;
        v190 = bswap32(buffer);
        sub_1A7B306B4(v35, 1, "connect: adding demux rule with pattern: %02x%02x%02x%02x%02x (%08x)", v43, v44, v45, v46, v47, 64);
        v187 = -32;
        v188 = -1;
        buf[0] = -64;
        *&buf[1] = 0;
        buf[5] = 0;
        *&buf[6] = bswap32(buffer);
        sub_1A7B306B4(v35, 1, "connect: adding demux rule with pattern: %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x (%08x)", v48, v49, v50, v51, v52, 192);
        __buf[0] = -32;
        *&__buf[1] = 0;
        v203 = 0;
        v204 = -1;
        nw_demux_options_add_pattern();
        nw_demux_options_add_pattern();
        nw_protocol_stack_prepend_application_protocol(stack, protocol);
        v150 = MEMORY[0x1AC564630]();
        v163 = nw_quic_stream_copy_shared_connection_options();
        nw_quic_connection_set_force_version_negotiation();
        nw_quic_connection_set_keepalive_count();
        if (selfCopy->_ftPowerOptimizationEnabled)
        {
          localEndpoint = [(NWLinkConnection *)v35 localEndpoint];
          v54 = [(IDSNWLink *)selfCopy _isLocalEndpointCellular:localEndpoint];

          if (v54)
          {
            sub_1A7B306B4(v35, 1, "setting nw_quic_connection_set_idle_timeout for cellular connection", v55, v56, v57, v58, v59, v140);
            nw_quic_connection_set_idle_timeout();
          }
        }

        options = nw_quic_connection_copy_sec_protocol_options();
        nw_quic_set_source_connection_id();
        v149 = [IDSNWLink derivePSKFromSessionKey:keyCopy salt:v156];
        if (v149)
        {
          v60 = [tokenCopy length];
          v144 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v60 + 13];
          v61 = v144;
          mutableBytes = [v144 mutableBytes];
          *mutableBytes = 0;
          v63 = v156;
          bytes = [v156 bytes];
          v65 = *bytes;
          *(mutableBytes + 9) = *(bytes + 8);
          *(mutableBytes + 1) = v65;
          v66 = tokenCopy;
          memcpy(mutableBytes + 13, [tokenCopy bytes], objc_msgSend(tokenCopy, "length"));
          sub_1A7B306B4(v35, 1, "PSK transport parameters: %@, h3 settings: %@", v67, v68, v69, v70, v71, parametersCopy);
          v72 = v149;
          v73 = dispatch_data_create([v149 bytes], 0x20uLL, 0, 0);
          v74 = dispatch_data_create(mutableBytes, v60 + 13, 0, 0);
          sec_protocol_options_add_pre_shared_key(options, v73, v74);

          sec_protocol_options_add_tls_application_protocol(options, "h3");
          nw_quic_connection_add_h3_alpn();
          nw_quic_connection_set_disable_spin_bit();
          v152 = [(IDSNWLink *)selfCopy _dictionaryFromPSKParameters:parametersCopy];
          v75 = sub_1A7B32838(v152, &unk_1F1B1FF88, 0x2000);
          sub_1A7B32838(v152, &unk_1F1B1FFA0, 0x2000);
          sub_1A7B32838(v152, &unk_1F1B1FFB8, 0x2000);
          sub_1A7B32838(v152, &unk_1F1B1FFD0, 0x2000);
          sub_1A7B32838(v152, &unk_1F1B1FFE8, 16);
          sub_1A7B32838(v152, &unk_1F1B20000, 16);
          sub_1A7B306B4(v35, 1, "PSK transport parameters:\n    initialMaxStreamDataBidiLocal: %lld\n    initialMaxStreamDataBidiRemote: %lld\n    initialMaxData: %lld\n    initialMaxStreamDataUni: %lld\n    initialMaxStreamsBidi: %lld\n    initialMaxStreamsUni: %lld", v76, v77, v78, v79, v80, v75);
          nw_quic_set_remote_transport_parameters();
          nw_quic_connection_set_pmtud_for_non_transport();
          if (discovery)
          {
            objc_initWeak(&location, selfCopy);
            objc_initWeak(&from, v35);
            v179[1] = MEMORY[0x1E69E9820];
            v179[2] = 3221225472;
            v179[3] = sub_1A7B32880;
            v179[4] = &unk_1E77E01D8;
            objc_copyWeak(&v181, &location);
            objc_copyWeak(&v182, &from);
            v180 = v169;
            nw_quic_connection_set_pmtud_update_block();
            mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
            [mEMORY[0x1E69A60F0] isInternalInstall];
            v87 = IMGetDomainBoolForKeyWithDefaultValue();

            if ((addressCopy->sa_family == 30) | v87 & 1)
            {
              nw_quic_connection_set_pmtud_ignore_cost();
              nw_quic_connection_set_pmtud_update_interval();
              v93 = "set pmtu update interval and block";
            }

            else
            {
              v93 = "not setting pmtu update interval because not ipv6, but did set block";
            }

            sub_1A7B306B4(v35, 1, v93, v88, v89, v90, v91, v92, v141);

            objc_destroyWeak(&v182);
            objc_destroyWeak(&v181);
            objc_destroyWeak(&from);
            objc_destroyWeak(&location);
          }

          else
          {
            sub_1A7B306B4(v35, 1, "not setting pmtu block or interval because feature is not enabled", v81, v82, v83, v84, v85, v141);
          }

          nw_protocol_stack_prepend_application_protocol(stack, v150);
          v155 = nw_http3_create_options();
          if (ready)
          {
            nw_http3_set_0rtt_enabled();
          }

          if (selfCopy->_ftPowerOptimizationEnabled)
          {
            localEndpoint2 = [(NWLinkConnection *)v35 localEndpoint];
            v109 = [(IDSNWLink *)selfCopy _isLocalEndpointCellular:localEndpoint2];

            if (v109)
            {
              sub_1A7B306B4(v35, 1, "disabling h3 keepalives for this connection", v110, v111, v112, v113, v114, v142);
              nw_http3_set_keepalive_mode();
            }
          }

          v115 = [(IDSNWLink *)selfCopy _dictionaryFromPSKParameters:settingsCopy];
          v116 = sub_1A7B32838(v115, &unk_1F1B1FFA0, 0x10000);
          sub_1A7B32838(v115, &unk_1F1B20018, 0x3FFFLL);
          sub_1A7B32838(v115, &unk_1F1B1FFD0, 100);
          sub_1A7B306B4(v35, 1, "PSK H3 parameters:\n    maxFieldSectionSize: %lld\n    maxTableCapacity: %lld\n    blockedStreams: %lld", v117, v118, v119, v120, v121, v116);
          nw_http3_set_initial_remote_settings();
          nw_protocol_stack_prepend_application_protocol(stack, v155);
          v122 = [(IDSNWLink *)selfCopy protocolStackDescriptionFor:stack];
          [(NWLinkConnection *)v35 setProtocolStackDescription:v122];

          [(IDSNWLink *)selfCopy _setParameters:parameters NWLinkConnection:v35 sharePortWithListener:1 isTCP:0];
          v128 = nw_connection_create(endpoint, parameters);
          v99 = v128 != 0;
          if (v128)
          {
            handler[0] = MEMORY[0x1E69E9820];
            handler[1] = 3221225472;
            handler[2] = sub_1A7B32A38;
            handler[3] = &unk_1E77E0278;
            v129 = v35;
            v174[0] = v129;
            v174[1] = selfCopy;
            v130 = handlerCopy;
            v176 = v130;
            readyCopy = ready;
            v131 = v169;
            v175 = v131;
            nw_connection_set_state_changed_handler(v128, handler);
            [(NWLinkConnection *)v129 setConnection:v128];
            [(NWLinkConnection *)v129 setName:@"Main QUIC QR connection"];
            [(IDSNWLink *)selfCopy _addNWLinkConnection:v129 token:v131];
            nw_connection_set_queue(v128, queue);
            if (ready)
            {
              sub_1A7B306B4(v129, 1, "start: holding until first packet ready", v132, v133, v134, v135, v136, v143);
              [(NWLinkConnection *)v129 setHasQUICStarted:0];
              if (v130)
              {
                v170[0] = MEMORY[0x1E69E9820];
                v170[1] = 3221225472;
                v170[2] = sub_1A7B32ECC;
                v170[3] = &unk_1E77E02A0;
                v171 = v129;
                v172 = v130;
                IDSTransportThreadAddBlock(v170);
              }
            }

            else
            {
              sub_1A7B306B4(v129, 1, "start: starting immediately", v132, v133, v134, v135, v136, v143);
              [(NWLinkConnection *)v129 setHasQUICStarted:1];
              nw_connection_start(v128);
            }

            v137 = v174;
          }

          else
          {
            sub_1A7B306B4(v35, 2, "couldn't create QUIC connection for %@", v123, v124, v125, v126, v127, v169);
            v178[0] = MEMORY[0x1E69E9820];
            v178[1] = 3221225472;
            v178[2] = sub_1A7B32A1C;
            v178[3] = &unk_1E77E0188;
            v179[0] = handlerCopy;
            IDSTransportThreadAddBlock(v178);
            v137 = v179;
          }

          v105 = v144;
        }

        else
        {
          v104 = +[IDSFoundationLog IDSNWLink];
          if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
          {
            sub_1A7E12680();
          }

          v185[0] = MEMORY[0x1E69E9820];
          v185[1] = 3221225472;
          v185[2] = sub_1A7B3281C;
          v185[3] = &unk_1E77E0188;
          v186 = handlerCopy;
          IDSTransportThreadAddBlock(v185);
          v99 = 0;
          v105 = v186;
        }

        v27 = v35;
        v103 = queue;
      }

      else
      {
        v102 = +[IDSFoundationLog IDSNWLink];
        if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
        {
          sub_1A7E126B4();
        }

        v192[0] = MEMORY[0x1E69E9820];
        v192[1] = 3221225472;
        v192[2] = sub_1A7B32800;
        v192[3] = &unk_1E77E0188;
        v193 = handlerCopy;
        IDSTransportThreadAddBlock(v192);
        v99 = 0;
        v103 = v193;
      }

      v100 = v156;
      goto LABEL_59;
    }

    v28 = ids_monotonic_time();
    if ([v27 disconnectionState] == 1)
    {
      [v27 scheduledDisconnectTime];
      if (v29 < v28)
      {
        [v27 scheduledDisconnectTime];
        sub_1A7B306B4(v27, 1, "existing connection %@ already timed out (%.1f < %.1f) - reconnecting...", v30, v31, v32, v33, v34, v169);
        [(IDSNWLink *)selfCopy disconnectWithSessionID:iDCopy localAddress:address remoteAddress:remoteAddress waitTime:0 final:0.0];
        goto LABEL_12;
      }
    }

    if ([v27 disconnectionState] == 3)
    {
      sub_1A7B306B4(v27, 1, "this QUIC connection cannot be reused", v94, v95, v96, v97, v98, v139);
      v196[0] = MEMORY[0x1E69E9820];
      v196[1] = 3221225472;
      v196[2] = sub_1A7B327C8;
      v196[3] = &unk_1E77E0188;
      v197 = handlerCopy;
      IDSTransportThreadAddBlock(v196);
      v99 = 0;
      v100 = v197;
LABEL_59:

      v107 = v157;
      goto LABEL_60;
    }

    sub_1A7B306B4(v27, 1, "%@ already exists", v94, v95, v96, v97, v98, v169);
    if (use)
    {
      if ([v27 disconnectionState] != 1)
      {
LABEL_37:
        v194[0] = MEMORY[0x1E69E9820];
        v194[1] = 3221225472;
        v194[2] = sub_1A7B327E4;
        v194[3] = &unk_1E77E0188;
        v195 = handlerCopy;
        IDSTransportThreadAddBlock(v194);
        v100 = v195;
        v99 = 1;
        goto LABEL_59;
      }

      v101 = 0;
    }

    else
    {
      v101 = 2;
    }

    [v27 setDisconnectionState:v101];
    goto LABEL_37;
  }

  v106 = +[IDSFoundationLog IDSNWLink];
  if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v106, OS_LOG_TYPE_DEFAULT, "COLLISION MITIGATION failed", buf, 2u);
  }

  v199[0] = MEMORY[0x1E69E9820];
  v199[1] = 3221225472;
  v199[2] = sub_1A7B32644;
  v199[3] = &unk_1E77E0160;
  v199[4] = selfCopy;
  v200 = handlerCopy;
  IDSTransportThreadAddBlock(v199);
  v99 = 0;
  v107 = v200;
LABEL_60:

  return v99;
}

- (BOOL)connectTCP:(int)p localAddress:(const sockaddr *)address remoteAddress:(const sockaddr *)remoteAddress clientUUID:(unsigned __int8)d[16] sessionID:(id)iD relaySessionToken:(id)token relaySessionKey:(id)key randomSaltBlock:(id)self0 newLocalPort:(unsigned __int16 *)self1 disconnectAfterUse:(BOOL)self2 readyHandler:(id)self3
{
  v17 = *&p;
  v114 = *MEMORY[0x1E69E9840];
  iDCopy = iD;
  tokenCopy = token;
  keyCopy = key;
  blockCopy = block;
  handlerCopy = handler;
  *self->_clientUUID = *d;
  address = nw_endpoint_create_address(address);
  v21 = nw_endpoint_create_address(remoteAddress);
  v109 = 0;
  v82 = iDCopy;
  LODWORD(token) = [(IDSNWLink *)self _findExistingCollidingQRConnection:address remoteEndpoint:v21 sessionID:iDCopy localEndpointToUse:&v109];
  v22 = v109;
  v23 = v22;
  if (!token)
  {
    goto LABEL_7;
  }

  if (v22 || ([(IDSNWLink *)self _findNewLocalEndpointForQRConnection:address], (v23 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v24 = +[IDSFoundationLog IDSNWLink];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = address;
      *&buf[12] = 2112;
      *&buf[14] = v23;
      _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "connectTCP: COLLISION MITIGATED: local endpoint %@ -> %@", buf, 0x16u);
    }

    *port = nw_endpoint_get_port(v23);
    v23 = v23;

    address = v23;
LABEL_7:
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v111 = sub_1A7B33924;
    v112 = sub_1A7B33934;
    v113 = _tokenWithParameters(address, v21, v82, 5uLL, 0);
    v101 = 0;
    v102 = &v101;
    v103 = 0x3032000000;
    v104 = sub_1A7B33924;
    v105 = sub_1A7B33934;
    v106 = [(IDSNWLink *)self _NWLinkConnectionForToken:*(*&buf[8] + 40)];
    if (!v102[5])
    {
LABEL_11:
      v77 = blockCopy[2]();
      if (v77)
      {
        v34 = [[NWLinkConnection alloc] initWithType:5 interfaceIndex:v17 localEndpoint:address remoteEndpoint:v21 isH2Connection:1];
        v35 = v102[5];
        v102[5] = v34;

        [v102[5] setHasRequiredInterface:1];
        v36 = _supportsNAT64(address, v17);
        [v102[5] setSupportsNAT64:v36];
        [v102[5] setSessionID:v82];
        if (!use)
        {
          [v102[5] setDisconnectionState:2];
        }

        v37 = v102[5];
        v38 = nw_interface_create_with_index();
        sub_1A7B306B4(v37, 1, "connectTCP: connecting on if:%@(%u) for %@", v39, v40, v41, v42, v43, v38);

        queue = NWLinkQueue();
        configure_tls[0] = MEMORY[0x1E69E9820];
        configure_tls[1] = 3221225472;
        configure_tls[2] = sub_1A7B339E0;
        configure_tls[3] = &unk_1E77E02F0;
        v90 = keyCopy;
        v91 = v77;
        v44 = handlerCopy;
        v93 = v44;
        v92 = tokenCopy;
        secure_tcp = nw_parameters_create_secure_tcp(configure_tls, *MEMORY[0x1E6977EB8]);
        v46 = nw_parameters_copy_default_protocol_stack(secure_tcp);
        options = nw_http2_create_options();
        sub_1A7B306B4(v102[5], 1, "disabling nw capsule handling", v48, v49, v50, v51, v52, v75);
        nw_http2_set_capsule_handling_disabled();
        nw_protocol_stack_prepend_application_protocol(v46, options);
        v53 = [(IDSNWLink *)self protocolStackDescriptionFor:v46];
        [v102[5] setProtocolStackDescription:v53];

        [(IDSNWLink *)self _setParameters:secure_tcp NWLinkConnection:v102[5] sharePortWithListener:0 isTCP:1];
        v59 = nw_connection_create(v21, secure_tcp);
        v60 = v59 != 0;
        if (v59)
        {
          handler[0] = MEMORY[0x1E69E9820];
          handler[1] = 3221225472;
          handler[2] = sub_1A7B33C08;
          handler[3] = &unk_1E77E0390;
          v85 = &v101;
          handler[4] = self;
          v86 = buf;
          v84 = v44;
          nw_connection_set_state_changed_handler(v59, handler);
          [v102[5] setConnection:v59];
          [v102[5] setName:@"Main TCP QR connection"];
          [(IDSNWLink *)self _addPendingTCPNWLinkConnection:v102[5] token:*(*&buf[8] + 40)];
          nw_connection_set_queue(v59, queue);
          nw_connection_start(v59);
          [v102[5] setHasQUICStarted:1];
        }

        else
        {
          sub_1A7B306B4(v102[5], 2, "connectTCP: couldn't create TCPH2 connection for %@", v54, v55, v56, v57, v58, *(*&buf[8] + 40));
          v87[0] = MEMORY[0x1E69E9820];
          v87[1] = 3221225472;
          v87[2] = sub_1A7B33BE8;
          v87[3] = &unk_1E77E0188;
          v88 = v44;
          IDSTransportThreadAddBlock(v87);
        }

        v71 = queue;
      }

      else
      {
        v70 = +[IDSFoundationLog IDSNWLink];
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          sub_1A7E126B4();
        }

        v94[0] = MEMORY[0x1E69E9820];
        v94[1] = 3221225472;
        v94[2] = sub_1A7B339C0;
        v94[3] = &unk_1E77E0188;
        v95 = handlerCopy;
        IDSTransportThreadAddBlock(v94);
        v60 = 0;
        v71 = v95;
      }

      goto LABEL_30;
    }

    v25 = ids_monotonic_time();
    if ([v102[5] disconnectionState] == 1)
    {
      [v102[5] scheduledDisconnectTime];
      if (v26 < v25)
      {
        v27 = v102[5];
        v28 = *(*&buf[8] + 40);
        [v27 scheduledDisconnectTime];
        sub_1A7B306B4(v27, 1, "existing connection %@ already timed out (%.1f < %.1f) - reconnecting...", v29, v30, v31, v32, v33, v28);
        [(IDSNWLink *)self disconnectWithSessionID:v82 localAddress:address remoteAddress:remoteAddress waitTime:0 final:0.0];
        goto LABEL_11;
      }
    }

    disconnectionState = [v102[5] disconnectionState];
    v67 = v102[5];
    if (disconnectionState == 3)
    {
      sub_1A7B306B4(v67, 1, "this H/2 connection cannot be reused", v61, v62, v63, v64, v65, v74);
      v99[0] = MEMORY[0x1E69E9820];
      v99[1] = 3221225472;
      v99[2] = sub_1A7B3393C;
      v99[3] = &unk_1E77E0188;
      v100 = handlerCopy;
      IDSTransportThreadAddBlock(v99);

      v60 = 0;
LABEL_30:
      _Block_object_dispose(&v101, 8);

      _Block_object_dispose(buf, 8);
      goto LABEL_31;
    }

    sub_1A7B306B4(v67, 1, "connectTCP: %@ already exists", v61, v62, v63, v64, v65, *(*&buf[8] + 40));
    v68 = v102[5];
    if (use)
    {
      if ([v68 disconnectionState] != 1)
      {
LABEL_29:
        v96[0] = MEMORY[0x1E69E9820];
        v96[1] = 3221225472;
        v96[2] = sub_1A7B3395C;
        v96[3] = &unk_1E77E02C8;
        v96[4] = self;
        v98 = &v101;
        v97 = handlerCopy;
        IDSTransportThreadAddBlock(v96);

        v60 = 1;
        goto LABEL_30;
      }

      v69 = 0;
      v68 = v102[5];
    }

    else
    {
      v69 = 2;
    }

    [v68 setDisconnectionState:v69];
    goto LABEL_29;
  }

  v73 = +[IDSFoundationLog IDSNWLink];
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v73, OS_LOG_TYPE_DEFAULT, "connectTCP: COLLISION MITIGATION failed", buf, 2u);
  }

  v107[0] = MEMORY[0x1E69E9820];
  v107[1] = 3221225472;
  v107[2] = sub_1A7B33904;
  v107[3] = &unk_1E77E0188;
  v108 = handlerCopy;
  IDSTransportThreadAddBlock(v107);
  v60 = 0;
  v23 = v108;
LABEL_31:

  return v60;
}

- (void)_addPendingTCPNWLinkConnection:(id)connection token:(id)token
{
  value = connection;
  tokenCopy = token;
  os_unfair_lock_lock(&self->_lock);
  if (value)
  {
    CFDictionarySetValue(self->_tokenToNWLinkConnection, tokenCopy, value);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_removePendingTCPNWLinkConnectionForToken:(id)token
{
  tokenCopy = token;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_tokenToPendingTCPNWLinkConnection removeObjectForKey:tokenCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (unsigned)_getConnectedLocalPortAndSetLocalEndpointForConnection:(id)connection
{
  connectionCopy = connection;
  connection = [connectionCopy connection];
  v5 = nw_connection_copy_connected_local_endpoint();

  if (v5)
  {
    port = nw_endpoint_get_port(v5);
    sub_1A7B306B4(connectionCopy, 1, "connectTCP: got local endpoint: %u", v12, v13, v14, v15, v16, port);
  }

  else
  {
    sub_1A7B306B4(connectionCopy, 2, "connectTCP: unable to get local endpoint from the connected connection!", v6, v7, v8, v9, v10, v18);
    LOWORD(port) = 0;
  }

  [connectionCopy setLocalEndpoint:v5];

  return port;
}

- (void)peelOffReliableUnicastConnectionforLocalAddress:(const sockaddr *)address remoteAddress:(const sockaddr *)remoteAddress sessionID:(id)d localQUICConnectionID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12 = iDCopy;
  if (address)
  {
    if (remoteAddress)
    {
      if (dCopy)
      {
        if (iDCopy)
        {
          address = nw_endpoint_create_address(address);
          if (address)
          {
            v14 = nw_endpoint_create_address(remoteAddress);
            if (v14)
            {
              v15 = _tokenWithParameters(address, v14, dCopy, 5uLL, 0);
              v16 = [(IDSNWLink *)self _NWLinkConnectionForToken:v15];
              if (v16)
              {
                [(IDSNWLink *)self _createReliableUnicastConnection:v16 localQUICConnectionID:v12];
              }

              else
              {
                v17 = +[IDSFoundationLog IDSNWLink];
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  sub_1A7E1271C();
                }
              }
            }

            else
            {
              v15 = +[IDSFoundationLog IDSNWLink];
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                sub_1A7E12750();
              }
            }
          }

          else
          {
            v14 = +[IDSFoundationLog IDSNWLink];
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              sub_1A7E12784();
            }
          }
        }

        else
        {
          address = +[IDSFoundationLog IDSNWLink];
          if (os_log_type_enabled(address, OS_LOG_TYPE_ERROR))
          {
            sub_1A7E127B8();
          }
        }
      }

      else
      {
        address = +[IDSFoundationLog IDSNWLink];
        if (os_log_type_enabled(address, OS_LOG_TYPE_ERROR))
        {
          sub_1A7E127EC();
        }
      }
    }

    else
    {
      address = +[IDSFoundationLog IDSNWLink];
      if (os_log_type_enabled(address, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E12820();
      }
    }
  }

  else
  {
    address = +[IDSFoundationLog IDSNWLink];
    if (os_log_type_enabled(address, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E12854();
    }
  }
}

- (void)disconnectWithSessionID:(id)d localAddress:(const sockaddr *)address remoteAddress:(const sockaddr *)remoteAddress waitTime:(double)time final:(BOOL)final
{
  finalCopy = final;
  v32 = *MEMORY[0x1E69E9840];
  dCopy = d;
  address = nw_endpoint_create_address(address);
  v14 = nw_endpoint_create_address(remoteAddress);
  v15 = _tokenWithParameters(address, v14, dCopy, 5uLL, 0);
  v16 = [(IDSNWLink *)self _NWLinkConnectionForToken:v15];
  v17 = v16;
  if (v16 && [v16 disconnectionState] != 3)
  {
    if (finalCopy)
    {
      [v17 setDisconnectionState:3];
      [v17 setState:2];
    }

    else if ([v17 disconnectionState] != 2)
    {
      [v17 setDisconnectionState:1];
    }

    [v17 setScheduledDisconnectTime:ids_monotonic_time() + time];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A7B34804;
  aBlock[3] = &unk_1E77E03B8;
  aBlock[4] = self;
  addressCopy = address;
  v27 = addressCopy;
  v19 = v14;
  v28 = v19;
  v20 = dCopy;
  v29 = v20;
  v21 = _Block_copy(aBlock);
  v22 = +[IDSFoundationLog IDSNWLink];
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (time == 0.0)
  {
    if (v23)
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "disconnectWithSessionID cleanup immediately", buf, 2u);
    }

    v21[2](v21, 1);
  }

  else
  {
    if (v23)
    {
      *buf = 134217984;
      timeCopy = time;
      _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "disconnectWithSessionID scheduled disconnections in %.1f seconds", buf, 0xCu);
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1A7B34C50;
    v24[3] = &unk_1E77E0188;
    v25 = v21;
    IDSTransportThreadAddBlockAfter(v24, time);
  }
}

- (void)disconnectP2PWithSessionID:(id)d localAddress:(const sockaddr *)address remoteAddress:(const sockaddr *)remoteAddress
{
  dCopy = d;
  address = nw_endpoint_create_address(address);
  v10 = nw_endpoint_create_address(remoteAddress);
  if (self->_isInvalidated)
  {
    v11 = +[IDSFoundationLog IDSNWLink];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "disconnectWithSessionID alread invalidated", v15, 2u);
    }
  }

  else
  {
    v12 = _tokenWithParameters(address, v10, dCopy, 0, 0);
    [(IDSNWLink *)self _cancelNWLinkConnectionWithToken:v12 removeNWLinkConnectionNow:0];
    v13 = _tokenWithParameters(address, v10, dCopy, 9uLL, 0);

    [(IDSNWLink *)self _cancelNWLinkConnectionWithToken:v13 removeNWLinkConnectionNow:0];
    v14 = _tokenWithParameters(address, v10, dCopy, 0xAuLL, 0);

    [(IDSNWLink *)self _cancelNWLinkConnectionWithToken:v14 removeNWLinkConnectionNow:0];
  }
}

- (void)_cancelNWLinkConnectionWithToken:(id)token removeNWLinkConnectionNow:(BOOL)now
{
  nowCopy = now;
  v11 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  v7 = [(IDSNWLink *)self _NWLinkConnectionForToken:tokenCopy];
  if (v7)
  {
    [(IDSNWLink *)self _cancelNWLinkConnection:v7 remove:nowCopy];
  }

  else
  {
    v8 = +[IDSFoundationLog IDSNWLink];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = tokenCopy;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "_cancelNWLinkConnectionWithToken: cannot find connection to disconnect for %@", &v9, 0xCu);
    }
  }
}

- (BOOL)createQUICPodQRConnectionsForSession:(id)session localAddress:(const sockaddr *)address remoteAddress:(const sockaddr *)remoteAddress quicConnectionIDs:(id)ds channelNumber:(unsigned __int16)number
{
  numberCopy = number;
  sessionCopy = session;
  dsCopy = ds;
  address = nw_endpoint_create_address(address);
  v15 = nw_endpoint_create_address(remoteAddress);
  v16 = _tokenWithParameters(address, v15, sessionCopy, 5uLL, 0);
  v17 = [(IDSNWLink *)self _NWLinkConnectionForToken:v16];
  if (v17)
  {
    v18 = +[IDSFoundationLog IDSNWLink];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "Connection subtree for QUIC connection:", buf, 2u);
    }

    os_unfair_lock_lock(&self->_lock);
    [(IDSNWLink *)self logConnectionSubtree:v17 indentation:&stru_1F1AC8480];
    os_unfair_lock_unlock(&self->_lock);
  }

  v60 = _tokenWithParameters(address, v15, sessionCopy, 1uLL, 0);
  v19 = [(IDSNWLink *)self _NWLinkConnectionForToken:?];
  v20 = v19;
  v61 = dsCopy;
  v62 = sessionCopy;
  if (self->_disallowQUICPodForCellular && ([v19 localEndpoint], v21 = dsCopy, v22 = v17, v23 = v15, v24 = address, v25 = numberCopy, v26 = v20, v27 = objc_claimAutoreleasedReturnValue(), v28 = -[IDSNWLink _isLocalEndpointCellular:](self, "_isLocalEndpointCellular:", v27), v27, v20 = v26, numberCopy = v25, address = v24, v15 = v23, v17 = v22, dsCopy = v21, sessionCopy = v62, v28))
  {
    sub_1A7B306B4(v20, 1, "NOT setting up QUICPod because it's disallowed for cellular connections", v29, v30, v31, v32, v33, v56);
    v34 = 0;
  }

  else
  {
    v58 = v20;
    v59 = v16;
    v35 = sessionCopy;
    v36 = numberCopy;
    v37 = _tokenWithParameters(address, v15, v35, 7uLL, 0);
    [(IDSNWLink *)self _cancelNWLinkConnectionWithToken:v37 removeNWLinkConnectionNow:1];
    v38 = _tokenWithParameters(address, v15, v35, 8uLL, 0);

    v57 = v38;
    [(IDSNWLink *)self _cancelNWLinkConnectionWithToken:v38 removeNWLinkConnectionNow:1];
    v39 = -[IDSNWQPodParameters initWithClientConnectionID:serverConnectionID:clientSecret:serverSecret:isServer:]([IDSNWQPodParameters alloc], "initWithClientConnectionID:serverConnectionID:clientSecret:serverSecret:isServer:", [dsCopy localAVCConnectionID], objc_msgSend(dsCopy, "remoteAVCConnectionID"), 0, 0, 0);
    v40 = [(IDSNWLink *)self _createQUICPodConnectionWithType:0 quicNWLinkConnection:v17 qpodParameters:v39];
    v46 = v40;
    if (v40)
    {
      [v40 setChannelNumber:v36];
      v47 = -[IDSNWQPodParameters initWithClientConnectionID:serverConnectionID:clientSecret:serverSecret:isServer:]([IDSNWQPodParameters alloc], "initWithClientConnectionID:serverConnectionID:clientSecret:serverSecret:isServer:", [dsCopy localIDSConnectionID], objc_msgSend(dsCopy, "remoteIDSConnectionID"), 0, 0, 0);
      v48 = [(IDSNWLink *)self _createQUICPodConnectionWithType:1 quicNWLinkConnection:v17 qpodParameters:v47];
      v49 = v48;
      v34 = v48 != 0;
      if (v48)
      {
        [v48 setChannelNumber:v36];
      }

      else
      {
        [(IDSNWLink *)self _cancelNWLinkConnection:v46 remove:0];
        sub_1A7B306B4(v17, 2, "failed to create IDS QUICPod connection", v50, v51, v52, v53, v54, v57);
      }

      sessionCopy = v62;
    }

    else
    {
      sub_1A7B306B4(v17, 2, "failed to create AVC QUICPod connection", v41, v42, v43, v44, v45, v57);
      v34 = 0;
      sessionCopy = v62;
    }

    v20 = v58;
    v16 = v59;
  }

  return v34;
}

- (BOOL)createQUICPodP2PConnectionsForSession:(id)session localAddress:(const sockaddr *)address remoteAddress:(const sockaddr *)remoteAddress quicConnectionIDs:(id)ds negotiatedKeys:(id)keys channelNumber:(unsigned __int16)number completionHandler:(id)handler
{
  numberCopy = number;
  sessionCopy = session;
  dsCopy = ds;
  keysCopy = keys;
  handlerCopy = handler;
  v91[0] = 0;
  v91[1] = v91;
  v91[2] = 0x2020000000;
  v92 = 1;
  v89[0] = 0;
  v89[1] = v89;
  v89[2] = 0x2020000000;
  v90 = 0;
  v87[0] = 0;
  v87[1] = v87;
  v87[2] = 0x2020000000;
  v88 = 0;
  address = nw_endpoint_create_address(address);
  v68 = nw_endpoint_create_address(remoteAddress);
  addressCopy = address;
  v67 = _tokenWithParameters(address, v68, sessionCopy, 1uLL, 0);
  v17 = [(IDSNWLink *)self _NWLinkConnectionForToken:v67];
  v18 = v17;
  if (self->_disallowQUICPodForCellular && ([v17 localEndpoint], v19 = objc_claimAutoreleasedReturnValue(), v20 = -[IDSNWLink _isLocalEndpointCellular:](self, "_isLocalEndpointCellular:", v19), v19, v20))
  {
    sub_1A7B306B4(v18, 1, "NOT setting up QUICPod because it's disallowed for cellular connections", v21, v22, v23, v24, v25, v62);
    handlerCopy[2](handlerCopy, 0);
    v26 = 0;
  }

  else
  {
    if (v18)
    {
      v27 = +[IDSFoundationLog IDSNWLink];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v27, OS_LOG_TYPE_DEFAULT, "Connection subtree for ChannelData connection:", buf, 2u);
      }

      os_unfair_lock_lock(&self->_lock);
      [(IDSNWLink *)self logConnectionSubtree:v18 indentation:&stru_1F1AC8480];
      os_unfair_lock_unlock(&self->_lock);
    }

    v70 = v18;
    v71 = handlerCopy;
    v28 = [IDSNWQPodParameters alloc];
    localAVCConnectionID = [dsCopy localAVCConnectionID];
    remoteAVCConnectionID = [dsCopy remoteAVCConnectionID];
    v31 = [keysCopy avc];
    clientSecret = [v31 clientSecret];
    v33 = [keysCopy avc];
    serverSecret = [v33 serverSecret];
    v35 = -[IDSNWQPodParameters initWithClientConnectionID:serverConnectionID:clientSecret:serverSecret:isServer:](v28, "initWithClientConnectionID:serverConnectionID:clientSecret:serverSecret:isServer:", localAVCConnectionID, remoteAVCConnectionID, clientSecret, serverSecret, [keysCopy isServer]);

    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = sub_1A7B35850;
    v80[3] = &unk_1E77E03E0;
    v36 = v70;
    v81 = v36;
    v83 = v89;
    v84 = v91;
    v85 = v87;
    v37 = v71;
    v82 = v37;
    v65 = v35;
    v38 = [(IDSNWLink *)self _createP2PQUICPodConnectionWithType:0 udpNWLinkConnection:v36 parameters:v35 completionHandler:v80];
    v44 = v38;
    if (v38)
    {
      [v38 setChannelNumber:numberCopy];
      v63 = v44;
      v64 = [IDSNWQPodParameters alloc];
      localIDSConnectionID = [dsCopy localIDSConnectionID];
      remoteIDSConnectionID = [dsCopy remoteIDSConnectionID];
      v47 = [keysCopy ids];
      clientSecret2 = [v47 clientSecret];
      v49 = [keysCopy ids];
      serverSecret2 = [v49 serverSecret];
      v51 = -[IDSNWQPodParameters initWithClientConnectionID:serverConnectionID:clientSecret:serverSecret:isServer:](v64, "initWithClientConnectionID:serverConnectionID:clientSecret:serverSecret:isServer:", localIDSConnectionID, remoteIDSConnectionID, clientSecret2, serverSecret2, [keysCopy isServer]);

      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 3221225472;
      v74[2] = sub_1A7B35938;
      v74[3] = &unk_1E77E03E0;
      v52 = v36;
      v75 = v52;
      v77 = v87;
      v78 = v91;
      v79 = v89;
      v53 = v37;
      v76 = v53;
      v54 = [(IDSNWLink *)self _createP2PQUICPodConnectionWithType:1 udpNWLinkConnection:v52 parameters:v51 completionHandler:v74];
      v44 = v63;
      v55 = v54;
      v26 = v54 != 0;
      if (v54)
      {
        [v54 setChannelNumber:numberCopy];
      }

      else
      {
        [(IDSNWLink *)self _cancelNWLinkConnection:v63 remove:0];
        sub_1A7B306B4(v52, 2, "failed to create IDS QUICPod connection", v56, v57, v58, v59, v60, v62);
        (*(v53 + 2))(v53, 0);
      }
    }

    else
    {
      sub_1A7B306B4(v36, 2, "failed to create AVC QUICPod connection", v39, v40, v41, v42, v43, v62);
      (*(v37 + 2))(v37, 0);
      v26 = 0;
    }

    v18 = v70;
    handlerCopy = v71;
  }

  _Block_object_dispose(v87, 8);
  _Block_object_dispose(v89, 8);
  _Block_object_dispose(v91, 8);

  return v26;
}

- (unint64_t)sendPacketBufferArray:(id *)array arraySize:(int)size toDeviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  v96 = *MEMORY[0x1E69E9840];
  dCopy = d;
  cbuuidCopy = cbuuid;
  v12 = cbuuidCopy;
  if (cbuuidCopy && ([cbuuidCopy isEqualToString:self->_cbuuid] & 1) == 0)
  {
    if (size < 1)
    {
      v22 = 10;
    }

    else
    {
      sizeCopy = size;
      v22 = 10;
      do
      {
        v23 = *array++;
        _IDSLinkPacketBufferRelease("/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSNWLink.m", 1912, v23);
        --sizeCopy;
      }

      while (sizeCopy);
    }
  }

  else
  {
    if (size >= 1)
    {
      v13 = *array;
      address = nw_endpoint_create_address((*array + 56));
      v15 = nw_endpoint_create_address((v13 + 184));
      v85 = *(v13 + 43);
      v84 = *(v13 + 47);
      v16 = *(v13 + 1305);
      v87 = *(v13 + 44);
      v82 = dCopy;
      if (v87 == 1)
      {
        v17 = *(v13 + 158);
        v18 = address;
        v19 = v15;
        v20 = 5;
      }

      else
      {
        if (!*(v13 + 45) && !*(v13 + 46))
        {
          v61 = [(IDSNWLink *)self _shouldAllowP2PConnectionTo:v15 anotherRemoteEndpoint:0];
          if (v85 & 1) != 0 || !v16 && ((v84 | v61))
          {
            v62 = *(v13 + 158);
            v63 = address;
            v64 = v15;
            v65 = 0;
          }

          else
          {
            v62 = *(v13 + 158);
            if (v61)
            {
              v63 = address;
              v64 = v15;
              v65 = 10;
            }

            else
            {
              v63 = address;
              v64 = v15;
              v65 = 8;
            }
          }

          v66 = _tokenWithParameters(v63, v64, v62, v65, 0);
          v67 = [(IDSNWLink *)self _NWLinkConnectionForToken:v66];
          if (v67)
          {
            v25 = v67;
            v83 = v66;
LABEL_16:
            v81 = v12;
            v79 = v15;
            v80 = address;
            v78 = v16;
            if ([(NWLinkConnection *)v25 type]== 7)
            {
              v26 = 4;
            }

            else
            {
              v26 = 4 * ([(NWLinkConnection *)v25 type]== 8);
            }

            v27 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:2];
            v28 = 0;
            do
            {
              [v27 addPointer:array[v28++]];
            }

            while (size != v28);
            selfCopy = self;
            v29 = **array;
            v30 = *(*array + 2) - v26;
            *destructor = MEMORY[0x1E69E9820];
            *&destructor[8] = 3221225472;
            *&destructor[16] = sub_1A7B4007C;
            v94 = &unk_1E77E0818;
            v31 = v27;
            v95 = v31;
            v32 = dispatch_data_create((v29 + v26), v30, 0, destructor);
            v33 = v32;
            if (size == 1)
            {
              concat = v32;
            }

            else
            {
              v35 = size - 1;
              v36 = array + 1;
              do
              {
                v37 = *v36++;
                v38 = dispatch_data_create((*v37 + v26), v37[2] - v26, 0, &unk_1F1AAA220);
                concat = dispatch_data_create_concat(v33, v38);

                v33 = concat;
                --v35;
              }

              while (v35);
            }

            sub_1A7B306B4(v25, 3, "sendPacketBufferArray: token %@, isQRControlPacket: %@, isSTUNPacket: %@, isReliableUnicast: %@, isClientQUIC: %@, isVirtualRelay: %@", v39, v40, v41, v42, v43, v83);
            if ([(NWLinkConnection *)v25 type]== 7 || [(NWLinkConnection *)v25 type]== 8 || [(NWLinkConnection *)v25 type]== 9 || [(NWLinkConnection *)v25 type]== 10)
            {
              sub_1A7B306B4(v25, 3, "sendPacketBufferArray: sending QUICPod", v44, v45, v46, v47, v48, v76);
              *(v13 + 1304) = 1;
            }

            v12 = v81;
            if (v25)
            {
              protocolStackDescription = [(NWLinkConnection *)v25 protocolStackDescription];
              v50 = *(v13 + 159);
              *(v13 + 159) = protocolStackDescription;
            }

            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = sub_1A7B361D4;
            aBlock[3] = &unk_1E77E0408;
            v91 = v13;
            aBlock[4] = selfCopy;
            v51 = concat;
            v89 = v51;
            v92 = v87;
            v52 = v83;
            v90 = v52;
            v58 = _Block_copy(aBlock);
            if (v87)
            {
              v59 = "qr control packet";
            }

            else
            {
              sub_1A7B306B4(v25, 3, "non-qr control packet", v53, v54, v55, v56, v57, v76);
              if (!v25)
              {
                sub_1A7B306B4(0, 3, "NO existing NWLinkConnection", v53, v54, v55, v56, v57, v76);
                if ([(IDSNWLink *)selfCopy _shouldAllowP2PConnectionTo:v79 anotherRemoteEndpoint:0])
                {
                  if (!v78)
                  {
                    if ([(IDSNWLink *)selfCopy _doesUDPConnectionInProgressExist:v52])
                    {
                      v25 = +[IDSFoundationLog IDSNWLink];
                      if (os_log_type_enabled(&v25->super, OS_LOG_TYPE_DEFAULT))
                      {
                        *destructor = 0;
                        _os_log_impl(&dword_1A7AD9000, &v25->super, OS_LOG_TYPE_DEFAULT, "existing UDP connection in progress - return", destructor, 2u);
                      }

                      v22 = 14;
                    }

                    else
                    {
                      v70 = *(v13 + 12);
                      v25 = [[NWLinkConnection alloc] initWithType:0 interfaceIndex:v70 localEndpoint:v80 remoteEndpoint:v79];
                      sub_1A7B306B4(v25, 3, "created NWLinkConnection", v71, v72, v73, v74, v75, v77);
                      [(NWLinkConnection *)v25 setHasRequiredInterface:1];
                      [(NWLinkConnection *)v25 setSupportsNAT64:_supportsNAT64(v13 + 56, v70)];
                      [(IDSNWLink *)selfCopy _createUDPConnectionForNWLinkConnection:v25 readyHandler:v58];
                      v22 = 0;
                    }

                    goto LABEL_37;
                  }

                  v25 = +[IDSFoundationLog IDSNWLink];
                  if (os_log_type_enabled(&v25->super, OS_LOG_TYPE_ERROR))
                  {
                    sub_1A7E12888();
                  }
                }

                else
                {
                  v25 = +[IDSFoundationLog IDSNWLink];
                  if (os_log_type_enabled(&v25->super, OS_LOG_TYPE_DEFAULT))
                  {
                    *destructor = 138412546;
                    *&destructor[4] = v80;
                    *&destructor[12] = 2112;
                    *&destructor[14] = v79;
                    _os_log_impl(&dword_1A7AD9000, &v25->super, OS_LOG_TYPE_DEFAULT, "no direct UDP connection allowed from %@ to QR server %@", destructor, 0x16u);
                  }
                }

                v22 = 6;
LABEL_37:

                dCopy = v82;
                goto LABEL_39;
              }

              v59 = "have existing NWLinkConnection";
            }

            sub_1A7B306B4(v25, 3, v59, v53, v54, v55, v56, v57, v76);
            v22 = (*(v58 + 2))(v58, v25);
            goto LABEL_37;
          }

          v68 = _tokenWithParameters(address, v15, v12, 2uLL, 0);

          v83 = v68;
          v25 = [(IDSNWLink *)self _NWLinkConnectionForToken:v68];
          if (v25 || (v16 & 1) != 0)
          {
            goto LABEL_16;
          }

          v69 = _tokenWithParameters(address, v15, *(v13 + 158), 0, 0);

          v24 = v69;
LABEL_15:
          v83 = v24;
          v25 = [(IDSNWLink *)self _NWLinkConnectionForToken:?];
          goto LABEL_16;
        }

        v17 = *(v13 + 158);
        v18 = address;
        v19 = v15;
        v20 = 0;
      }

      v24 = _tokenWithParameters(v18, v19, v17, v20, 0);
      goto LABEL_15;
    }

    v22 = 9;
  }

LABEL_39:

  return v22;
}

- (id)connectionInfoForToken:(id)token
{
  v17 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  v5 = [(IDSNWLink *)self _NWLinkConnectionForToken:tokenCopy];
  if (v5)
  {
    v6 = objc_alloc_init(IDSNWConnectionInfo);
    v7 = [v5 type] == 7 || objc_msgSend(v5, "type") == 8 || objc_msgSend(v5, "type") == 9 || objc_msgSend(v5, "type") == 10;
    localEndpoint = [v5 localEndpoint];
    [(IDSNWConnectionInfo *)v6 setLocalEndpoint:localEndpoint];

    remoteEndpoint = [v5 remoteEndpoint];
    [(IDSNWConnectionInfo *)v6 setRemoteEndpoint:remoteEndpoint];

    -[IDSNWConnectionInfo setConnectionID:](v6, "setConnectionID:", [v5 connectionID]);
    [(IDSNWConnectionInfo *)v6 setIsQUICPod:v7];
    [(IDSNWConnectionInfo *)v6 setIsValid:1];
    sessionID = [v5 sessionID];
    [(IDSNWConnectionInfo *)v6 setSessionID:sessionID];

    [(IDSNWConnectionInfo *)v6 setToken:tokenCopy];
    connection = [v5 connection];
    [(IDSNWConnectionInfo *)v6 setConnection:connection];

    protocolStackDescription = [v5 protocolStackDescription];
    [(IDSNWConnectionInfo *)v6 setProtocolStackDescription:protocolStackDescription];
  }

  else
  {
    v13 = +[IDSFoundationLog IDSNWLink];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = tokenCopy;
      _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "Did not find NWLinkConnection for token %@", &v15, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (id)connectionInfoForLocalAddress:(const sockaddr *)address remoteAddress:(const sockaddr *)remoteAddress clientUniquePID:(unint64_t)d sessionID:(id)iD type:(unint64_t)type isRelay:(BOOL)relay protocolStackSuffix:(id)suffix isCellular:(BOOL)self0
{
  relayCopy = relay;
  v37 = *MEMORY[0x1E69E9840];
  iDCopy = iD;
  suffixCopy = suffix;
  v16 = objc_alloc_init(IDSNWConnectionInfo);
  address = nw_endpoint_create_address(address);
  v18 = nw_endpoint_create_address(remoteAddress);
  addressCopy = address;
  v19 = _tokenWithParameters(address, v18, iDCopy, type, 0);
  v20 = [(IDSNWLink *)self _NWLinkConnectionForToken:v19];
  v21 = v20;
  if (v20)
  {
    v22 = type - 7;
    -[IDSNWConnectionInfo setConnectionID:](v16, "setConnectionID:", [v20 connectionID]);
    [(IDSNWConnectionInfo *)v16 setIsQUICPod:type - 7 < 4];
    [(IDSNWConnectionInfo *)v16 setIsValid:1];
    [(IDSNWConnectionInfo *)v16 setIsCellular:cellular];
    [(IDSNWConnectionInfo *)v16 setClientUniquePID:d];
    [(IDSNWConnectionInfo *)v16 setSessionID:iDCopy];
    [(IDSNWConnectionInfo *)v16 setToken:v19];
    connection = [v21 connection];
    [(IDSNWConnectionInfo *)v16 setConnection:connection];

    if (v22 <= 3)
    {
      idsQPodParameters = [v21 idsQPodParameters];
      [(IDSNWConnectionInfo *)v16 setQpodParameters:idsQPodParameters];
    }

    v25 = [(IDSNWLink *)self _copyChildConnectionIDFor:v21 clientUniquePID:d sessionID:iDCopy isRelay:relayCopy isCellular:cellular isQUICPod:v22 < 4];
    [(IDSNWConnectionInfo *)v16 setChildConnectionID:v25];

    protocolStackDescription = [v21 protocolStackDescription];
    v27 = suffixCopy;
    v28 = [protocolStackDescription stringByAppendingString:suffixCopy];
    [(IDSNWConnectionInfo *)v16 setProtocolStackDescription:v28];

    v29 = v16;
  }

  else
  {
    v30 = +[IDSFoundationLog IDSNWLink];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v19;
      _os_log_impl(&dword_1A7AD9000, v30, OS_LOG_TYPE_DEFAULT, "Did not find NWLinkConnection for token %@", buf, 0xCu);
    }

    v29 = 0;
    v27 = suffixCopy;
  }

  return v29;
}

- ($EF6EC642B48E9BFC073294F479749444)demuxPatternForQPodConnectionWithID:(unsigned int)d forNWLinkConnection:(id)connection
{
  v8 = bswap32(d);
  sub_1A7B306B4(connection, 1, "copyChildConnectionIDFor: adding demux rule with pattern: %02x%02x%02x%02x%02x (%08x)", connection, v4, v5, v6, v7, 64);
  v9 = (HIWORD(v8) << 24) | (HIBYTE(v8) << 32) | (v8 << 8) & 0xFF0000 | ((v8 << 8) & 0xFF00) | 0xFFFFE00000000040;
  v10 = -1;
  *result.var0 = v9;
  result.var0[4] = BYTE4(v9);
  *result.var1 = *(&v9 + 5);
  result.var1[2] = HIBYTE(v9);
  *&result.var1[3] = v10;
  return result;
}

- (id)_copyChildConnectionIDFor:(id)for clientUniquePID:(unint64_t)d sessionID:(id)iD isRelay:(BOOL)relay isCellular:(BOOL)cellular isQUICPod:(BOOL)pod
{
  podCopy = pod;
  cellularCopy = cellular;
  relayCopy = relay;
  v70 = *MEMORY[0x1E69E9840];
  forCopy = for;
  v14 = forCopy;
  if (d)
  {
    localEndpoint = [forCopy localEndpoint];
    remoteEndpoint = [v14 remoteEndpoint];
    v16 = _tokenForNWLinkConnection(v14);
    v17 = +[IDSFoundationLog IDSNWLink];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v16;
      _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "copyChildConnectionIDForLocalAddress token = %@", buf, 0xCu);
    }

    connection = [v14 connection];
    v19 = connection;
    v62 = v16;
    if (!connection)
    {
      v20 = +[IDSFoundationLog IDSNWLink];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = localEndpoint;
        *&buf[12] = 2112;
        v24 = remoteEndpoint;
        *&buf[14] = remoteEndpoint;
        _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "copyChildConnectionIDForLocalAddress no QUIC or UDP connection found for %@ / %@", buf, 0x16u);
        v23 = 0;
        goto LABEL_36;
      }

LABEL_35:
      v23 = 0;
      v24 = remoteEndpoint;
      goto LABEL_36;
    }

    v61 = connection;
    v20 = [(IDSNWLink *)self _childConnectionEvaluatorForToken:v16];
    v21 = +[IDSFoundationLog IDSNWLink];
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if (v22)
      {
        *buf = 138412290;
        *&buf[4] = v61;
        _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "copyChildConnectionIDForLocalAddress found existing parent connection: %@", buf, 0xCu);
      }

      *buf = 0;
      *&buf[8] = 0;
      if (nw_path_evaluator_get_client_id())
      {
        v23 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:buf];
        v24 = remoteEndpoint;
        v19 = v61;
LABEL_36:

        goto LABEL_37;
      }

      v29 = +[IDSFoundationLog IDSNWLink];
      v19 = v61;
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      LOWORD(v66[0]) = 0;
      v30 = "copyChildConnectionIDForLocalAddress: failed to get existing client id";
      v31 = v66;
      v32 = v29;
      v33 = 2;
      goto LABEL_33;
    }

    if (v22)
    {
      v25 = "P2P";
      *buf = 136315650;
      if (relayCopy)
      {
        v25 = "QUIC";
      }

      *&buf[4] = v25;
      *&buf[12] = 2112;
      *&buf[14] = localEndpoint;
      v68 = 2112;
      v69 = remoteEndpoint;
      _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "copyChildConnectionIDForLocalAddress %s connection found for %@ / %@", buf, 0x20u);
    }

    v19 = v61;
    v26 = nw_connection_copy_connected_path();
    v20 = v26;
    if (v26)
    {
      if (MEMORY[0x1AC564470](v26))
      {
        v66[0] = 0xAAAAAAAAAAAAAAAALL;
        v66[1] = 0xAAAAAAAAAAAAAAAALL;
        if ((nw_path_get_client_id() & 1) == 0)
        {
          v35 = +[IDSFoundationLog IDSNWLink];
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v61;
            _os_log_impl(&dword_1A7AD9000, v35, OS_LOG_TYPE_DEFAULT, "copyChildConnectionIDForLocalAddress failed to get client id for %@", buf, 0xCu);
          }

          v23 = 0;
          v24 = remoteEndpoint;
          goto LABEL_74;
        }

        v60 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v66];
        v27 = +[IDSFoundationLog IDSNWLink];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v60;
          *&buf[12] = 2112;
          *&buf[14] = v61;
          _os_log_impl(&dword_1A7AD9000, v27, OS_LOG_TYPE_DEFAULT, "copyChildConnectionIDForLocalAddress got %@ from %@", buf, 0x16u);
        }

        if (podCopy)
        {
          quicPodParamaters = [v14 quicPodParamaters];
          secure_udp = MEMORY[0x1AC564200]();
        }

        else
        {
          secure_udp = nw_parameters_create_secure_udp(*MEMORY[0x1E6977EC0], *MEMORY[0x1E6977EB8]);
        }

        v19 = v61;
        memset(buf, 170, 16);
        [v60 getUUIDBytes:buf];
        nw_parameters_set_parent_id();
        v58 = [(IDSNWLink *)self _findListenerWithLocalEndpoint:localEndpoint];
        if (!v58)
        {
          v38 = +[IDSFoundationLog IDSNWLink];
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v65) = 138412290;
            *(&v65 + 4) = v61;
            _os_log_impl(&dword_1A7AD9000, v38, OS_LOG_TYPE_DEFAULT, "copyChildConnectionIDForLocalAddress failed to find the listener for %@", &v65, 0xCu);
          }

          v23 = 0;
          v24 = remoteEndpoint;
          v35 = v60;
          goto LABEL_73;
        }

        options = nw_demux_create_options();
        if (podCopy)
        {
          idsQPodParameters = [v14 idsQPodParameters];
          *&v65 = -[IDSNWLink demuxPatternForQPodConnectionWithID:forNWLinkConnection:](self, "demuxPatternForQPodConnectionWithID:forNWLinkConnection:", [idsQPodParameters clientConnectionID], v14);
          WORD4(v65) = v37;
        }

        else
        {
          if (relayCopy)
          {
            nw_demux_options_add_pattern();
            *&v65 = 0x8000000060;
            *v64 = 0x10000080000000F0;
          }

          else
          {
            nw_parameters_set_account_id();
            LOBYTE(v65) = 0x80;
            v64[0] = -64;
            nw_demux_options_add_pattern();
          }

          nw_demux_options_add_pattern();
          if (!cellularCopy)
          {
            goto LABEL_54;
          }

          sub_1A7B306B4(v14, 1, "copyChildConnectionIDFor: adding demux rule for baseband notification packets", v39, v40, v41, v42, v43, v54);
          LODWORD(v65) = -272716322;
          *v64 = -1;
        }

        nw_demux_options_add_pattern();
LABEL_54:
        nw_parameters_set_channel_demux_options();
        v44 = nw_demux_create_options();
        nw_demux_options_add_pattern();
        v55 = nw_parameters_copy_default_protocol_stack(secure_udp);
        v56 = v44;
        nw_protocol_stack_prepend_application_protocol(v55, v44);
        nw_parameters_allow_sharing_port_with_listener_for_connection();
        v45 = IDSRealTimeContext();
        nw_parameters_set_context();

        nw_parameters_set_delegated_unique_pid();
        if (!uuid_is_null(self->_clientUUID))
        {
          nw_parameters_set_e_proc_uuid();
        }

        v46 = +[IDSFoundationLog IDSNWLink];
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v65) = 138412290;
          *(&v65 + 4) = v60;
          _os_log_impl(&dword_1A7AD9000, v46, OS_LOG_TYPE_DEFAULT, "copyChildConnectionIDForLocalAddress: create evaluator with parent connection ID %@", &v65, 0xCu);
        }

        v47 = nw_path_copy_effective_local_endpoint(v20);
        v48 = v47;
        if (v47)
        {
          v49 = v47;
        }

        else
        {
          v49 = localEndpoint;
        }

        nw_parameters_set_local_endpoint(secure_udp, v49);
        v50 = nw_path_copy_effective_remote_endpoint(v20);
        evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
        if (evaluator_for_endpoint)
        {
          v65 = 0uLL;
          if (nw_path_evaluator_get_client_id())
          {
            v23 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v65];
            [(IDSNWLink *)self _addChildConnectionEvaluator:evaluator_for_endpoint token:v62];
            v52 = +[IDSFoundationLog IDSNWLink];
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              *v64 = 138412290;
              *&v64[4] = v23;
              _os_log_impl(&dword_1A7AD9000, v52, OS_LOG_TYPE_DEFAULT, "copyChildConnectionIDForLocalAddress: created child connection ID %@", v64, 0xCu);
            }
          }

          else
          {
            v52 = +[IDSFoundationLog IDSNWLink];
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              *v64 = 0;
              _os_log_impl(&dword_1A7AD9000, v52, OS_LOG_TYPE_DEFAULT, "copyChildConnectionIDForLocalAddress: failed to get client id", v64, 2u);
            }

            v23 = 0;
          }

          v35 = v60;
        }

        else
        {
          v53 = +[IDSFoundationLog IDSNWLink];
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v65) = 0;
            _os_log_impl(&dword_1A7AD9000, v53, OS_LOG_TYPE_DEFAULT, "copyChildConnectionIDForLocalAddress: failed to create evaluator for", &v65, 2u);
          }

          v23 = 0;
          v35 = v60;
        }

        v24 = remoteEndpoint;
        v19 = v61;
        v38 = options;
LABEL_73:

LABEL_74:
        goto LABEL_36;
      }

      v29 = +[IDSFoundationLog IDSNWLink];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v61;
        v30 = "copyChildConnectionIDForLocalAddress this connection doesn't support nexus: %@";
        goto LABEL_32;
      }
    }

    else
    {
      v29 = +[IDSFoundationLog IDSNWLink];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v61;
        v30 = "copyChildConnectionIDForLocalAddress failed to copy path for %@";
LABEL_32:
        v31 = buf;
        v32 = v29;
        v33 = 12;
LABEL_33:
        _os_log_impl(&dword_1A7AD9000, v32, OS_LOG_TYPE_DEFAULT, v30, v31, v33);
      }
    }

LABEL_34:

    goto LABEL_35;
  }

  localEndpoint = +[IDSFoundationLog IDSNWLink];
  if (os_log_type_enabled(localEndpoint, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, localEndpoint, OS_LOG_TYPE_DEFAULT, "copyChildConnectionIDForLocalAddress client uniquePID is 0 - skip for now", buf, 2u);
  }

  v23 = 0;
LABEL_37:

  return v23;
}

- (void)removeChildConnectionEvaluatorForSessionID:(id)d localAddress:(const sockaddr *)address remoteAddress:(const sockaddr *)remoteAddress isRelay:(BOOL)relay
{
  relayCopy = relay;
  v25 = *MEMORY[0x1E69E9840];
  dCopy = d;
  address = nw_endpoint_create_address(address);
  v12 = nw_endpoint_create_address(remoteAddress);
  if (relayCopy)
  {
    v13 = 5;
  }

  else
  {
    v13 = 0;
  }

  if (relayCopy)
  {
    v14 = 7;
  }

  else
  {
    v14 = 9;
  }

  v15 = _tokenWithParameters(address, v12, dCopy, v13, 0);
  v16 = _tokenWithParameters(address, v12, dCopy, v14, 0);

  [(IDSNWLink *)self _removeChildConnectionEvaluatorFortoken:v15];
  [(IDSNWLink *)self _removeChildConnectionEvaluatorFortoken:v16];
  v17 = +[IDSFoundationLog IDSNWLink];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    tokenToChildConnectionEvaluator = self->_tokenToChildConnectionEvaluator;
    v19 = 138412802;
    v20 = v15;
    v21 = 2112;
    v22 = v16;
    v23 = 2112;
    v24 = tokenToChildConnectionEvaluator;
    _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "Removed Child Connection Evaluator for token:%@(%@), remaining Child Connection Evaluators:%@", &v19, 0x20u);
  }
}

- (BOOL)getEffectiveSourceAddress:(sockaddr_storage *)address fromSourceAddress:(const sockaddr *)sourceAddress effectiveDestinationAddress:(sockaddr_storage *)destinationAddress fromDestinationAddress:(const sockaddr *)fromDestinationAddress sessionID:(id)d isQRConnection:(BOOL)connection
{
  connectionCopy = connection;
  v47 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (sourceAddress->sa_family == 2)
  {
    address = nw_endpoint_create_address(sourceAddress);
    v16 = nw_endpoint_create_address(fromDestinationAddress);
    if (connectionCopy)
    {
      v17 = 5;
    }

    else
    {
      v17 = 0;
    }

    v18 = _tokenWithParameters(address, v16, dCopy, v17, 0);
    v19 = [(IDSNWLink *)self _NWLinkConnectionForToken:v18];
    v20 = v19;
    if (v19)
    {
      connection = [v19 connection];
      v22 = nw_connection_copy_connected_path();

      if (v22)
      {
        v38 = v18;
        v23 = nw_path_copy_effective_local_endpoint(v22);
        v24 = nw_path_copy_effective_remote_endpoint(v22);
        v25 = v24;
        if (v23)
        {
          if (v24)
          {
            __src = nw_endpoint_get_address(v23);
            v26 = nw_endpoint_get_address(v25);
            if (__src)
            {
              if (v26)
              {
                v27 = v26;
                memcpy(address, __src, __src->sa_len);
                memcpy(destinationAddress, v27, v27->sa_len);
                v28 = 1;
                sub_1A7B306B4(v20, 1, "Found effective addresses: %@-%@ -> %@-%@", v29, v30, v31, v32, v33, address);

                v18 = v38;
LABEL_20:

                goto LABEL_21;
              }
            }
          }
        }

        v18 = v38;
      }
    }

    v34 = +[IDSFoundationLog IDSNWLink];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = @"NO";
      *buf = 138413058;
      addressCopy = address;
      v41 = 2112;
      if (connectionCopy)
      {
        v35 = @"YES";
      }

      v42 = v16;
      v43 = 2112;
      v44 = dCopy;
      v45 = 2112;
      v46 = v35;
      _os_log_impl(&dword_1A7AD9000, v34, OS_LOG_TYPE_DEFAULT, "Found no effective addresses: local %@, remote %@, sessionID %@, isQR %@", buf, 0x2Au);
    }

    v28 = 0;
    goto LABEL_20;
  }

  v28 = 0;
LABEL_21:

  return v28;
}

- (void)requestPathMTUEvaluationForLocalAddress:(const sockaddr *)address remoteAddress:(const sockaddr *)remoteAddress sessionID:(id)d type:(unint64_t)type
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
  address = nw_endpoint_create_address(address);
  v12 = nw_endpoint_create_address(remoteAddress);
  v13 = _tokenWithParameters(address, v12, dCopy, type, 0);
  v14 = [(IDSNWLink *)self _NWLinkConnectionForToken:v13];
  v15 = +[IDSFoundationLog IDSNWLink];
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      v18 = 138412802;
      addressCopy2 = address;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = dCopy;
      v17 = "requestPathMTUEvaluationForLocalAddress: request for endpoints %@->%@, sessionID: %@: not implemented";
LABEL_6:
      _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, v17, &v18, 0x20u);
    }
  }

  else if (v16)
  {
    v18 = 138412802;
    addressCopy2 = address;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = dCopy;
    v17 = "requestPathMTUEvaluationForLocalAddress: could not find NWLinkConnection for endpoints %@->%@, sessionID: %@";
    goto LABEL_6;
  }
}

- (id)_createNewListenerWithLocalPort:(unsigned __int16 *)port
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = *port;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v46 = v5;
  v47 = v5;
  v44 = v5;
  v45 = v5;
  v42 = v5;
  v43 = v5;
  *__str = v5;
  v41 = v5;
  snprintf(__str, 0x80uLL, "%u", v4);
  secure_udp = nw_parameters_create_secure_udp(*MEMORY[0x1E6977EC0], *MEMORY[0x1E6977EB8]);
  nw_parameters_set_account_id();
  host = nw_endpoint_create_host("::", __str);
  nw_parameters_set_local_endpoint(secure_udp, host);

  if (!uuid_is_null(self->_clientUUID))
  {
    nw_parameters_set_e_proc_uuid();
  }

  v8 = IDSRealTimeContext();
  nw_parameters_set_context();

  options = nw_demux_create_options();
  v39 = 0;
  v10 = nw_demux_create_options();
  nw_demux_options_add_pattern();
  nw_demux_options_add_pattern();
  nw_parameters_set_channel_demux_options();
  v11 = nw_parameters_copy_default_protocol_stack(secure_udp);
  nw_protocol_stack_append_application_protocol();
  v24 = [(IDSNWLink *)self protocolStackDescriptionFor:v11];
  v12 = nw_listener_create(secure_udp);
  if (v12)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1A7B37C2C;
    handler[3] = &unk_1E77E0458;
    handler[4] = self;
    v38 = v24;
    nw_listener_set_new_connection_handler(v12, handler);
    v13 = dispatch_semaphore_create(0);
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x3032000000;
    v31[3] = sub_1A7B33924;
    v31[4] = sub_1A7B33934;
    v32 = 0;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_1A7B3824C;
    v25[3] = &unk_1E77E0480;
    v14 = v12;
    v30 = v4;
    v26 = v14;
    v28 = &v33;
    v15 = v13;
    v27 = v15;
    v29 = v31;
    nw_listener_set_state_changed_handler(v14, v25);
    v16 = NWLinkQueue();
    nw_listener_set_queue(v14, v16);

    nw_listener_start(v14);
    v17 = dispatch_time(0, 3000000000);
    dispatch_semaphore_wait(v15, v17);
    if (v34[3])
    {
      if (!v4)
      {
        v18 = nw_listener_copy_local_endpoint();
        *port = nw_endpoint_get_port(v18);
      }

      v19 = v14;
    }

    else
    {
      v21 = +[IDSFoundationLog IDSNWLink];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E1295C();
      }

      nw_listener_cancel(v14);
      v19 = 0;
    }

    _Block_object_dispose(v31, 8);
    _Block_object_dispose(&v33, 8);
  }

  else
  {
    v20 = +[IDSFoundationLog IDSNWLink];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E129E8();
    }

    v19 = 0;
  }

  return v19;
}

- (void)_createUDPConnectionForNWLinkConnection:(id)connection readyHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  handlerCopy = handler;
  v8 = _tokenForNWLinkConnection(connectionCopy);
  [connectionCopy interfaceIndex];
  v9 = nw_interface_create_with_index();
  sub_1A7B306B4(connectionCopy, 1, "connecting on if:%@(%u) for %@", v10, v11, v12, v13, v14, v9);

  if ((IMGetDomainBoolForKey() & 1) != 0 || (IMGetDomainBoolForKeyWithDefaultValue() & 1) != 0 || self->_disableP2P)
  {
    secure_udp = +[IDSFoundationLog IDSNWLink];
    if (os_log_type_enabled(secure_udp, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_1A7AD9000, secure_udp, OS_LOG_TYPE_DEFAULT, "<%p> _createUDPConnectionWithLocalEndpoint - disabled by forceQuickRelay or disableP2PLinks", buf, 0xCu);
    }
  }

  else
  {
    secure_udp = nw_parameters_create_secure_udp(*MEMORY[0x1E6977EC0], *MEMORY[0x1E6977EB8]);
    nw_parameters_set_account_id();
    v16 = nw_parameters_copy_default_protocol_stack(secure_udp);
    options = nw_demux_create_options();
    buf[0] = 0;
    nw_demux_options_add_pattern();
    nw_protocol_stack_prepend_application_protocol(v16, options);
    v18 = [(IDSNWLink *)self protocolStackDescriptionFor:v16];
    [connectionCopy setProtocolStackDescription:v18];

    if ([(IDSNWLink *)self _setParameters:secure_udp NWLinkConnection:connectionCopy sharePortWithListener:1 isTCP:0])
    {
      remoteEndpoint = [connectionCopy remoteEndpoint];
      v20 = nw_connection_create(remoteEndpoint, secure_udp);

      if (v20)
      {
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = sub_1A7B387A0;
        handler[3] = &unk_1E77E04A8;
        v26 = connectionCopy;
        v30 = v26;
        selfCopy2 = self;
        v27 = v8;
        v32 = v27;
        v33 = handlerCopy;
        nw_connection_set_state_changed_handler(v20, handler);
        [v26 setName:@"UDP connection"];
        [v26 setConnection:v20];
        [(IDSNWLink *)self _addUDPConnectionInProgress:v26 token:v27];
        v28 = NWLinkQueue();
        nw_connection_set_queue(v20, v28);

        nw_connection_start(v20);
      }

      else
      {
        sub_1A7B306B4(connectionCopy, 2, "could NOT create UDP connection for %@", v21, v22, v23, v24, v25, v8);
      }
    }
  }
}

- (void)_scheduleRetryConnectionIfNeeded:(id)needed baseConnection:(id)connection kind:(const char *)kind retryIndex:(unsigned __int8)index retryBlock:(id)block
{
  indexCopy = index;
  neededCopy = needed;
  connectionCopy = connection;
  blockCopy = block;
  if (!neededCopy)
  {
    v20 = connectionCopy;
    sub_1A7B306B4(v20, 1, "_sheduleRetryConnectionIfNeeded(%s): connection could not be created", v26, v27, v28, v29, v30, kind);
    goto LABEL_6;
  }

  if ([neededCopy hasFailed])
  {
    v20 = neededCopy;
    if ([v20 shouldTreatNextTryAsFirstTry])
    {
      sub_1A7B306B4(v20, 1, "_sheduleRetryConnectionIfNeeded(%s): treating as first try", v21, v22, v23, v24, v25, kind);
      indexCopy = 0;
      goto LABEL_7;
    }

LABEL_6:
    if (indexCopy > 4)
    {
      sub_1A7B306B4(v20, 2, "_sheduleRetryConnectionIfNeeded(%s): failed, and out of retries.", v21, v22, v23, v24, v25, kind);
LABEL_12:

      goto LABEL_13;
    }

LABEL_7:
    if ([connectionCopy isConnected])
    {
      v36 = dbl_1A7E40B30[indexCopy];
      sub_1A7B306B4(v20, 1, "_sheduleRetryConnectionIfNeeded(%s): failed, but scheduling retry %d for %f seconds", v31, v32, v33, v34, v35, kind);
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = sub_1A7B38B18;
      v37[3] = &unk_1E77E04D0;
      v20 = v20;
      v38 = v20;
      kindCopy = kind;
      v42 = indexCopy;
      selfCopy = self;
      v40 = blockCopy;
      IDSTransportThreadAddBlockAfter(v37, v36);
    }

    else
    {
      sub_1A7B306B4(v20, 1, "_sheduleRetryConnectionIfNeeded(%s): failed, and would retry, but base connection is disconnected", v31, v32, v33, v34, v35, kind);
    }

    goto LABEL_12;
  }

  sub_1A7B306B4(neededCopy, 1, "_sheduleRetryConnectionIfNeeded(%s): no need to retry: connection didn't fail", v15, v16, v17, v18, v19, kind);
LABEL_13:
}

- (void)_createChannelDataConnectionForH2:(id)h2 retryIndex:(unsigned __int8)index
{
  h2Copy = h2;
  if ([h2Copy hasDisconnected])
  {
    sub_1A7B306B4(h2Copy, 1, "_createChannelDataConnectionForH2: base connection has disconnected. Not creating ChannelData connection.", v7, v8, v9, v10, v11, v15[0]);
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A7B38D78;
    aBlock[3] = &unk_1E77E04F8;
    aBlock[4] = self;
    v12 = h2Copy;
    v24 = v12;
    v13 = _Block_copy(aBlock);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1A7B38D88;
    v19[3] = &unk_1E77E0548;
    v19[4] = self;
    v20 = v12;
    indexCopy = index;
    v21 = v13;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1A7B39008;
    v15[3] = &unk_1E77E0548;
    v15[4] = self;
    indexCopy2 = index;
    v16 = v20;
    v17 = v21;
    v14 = v21;
    [(IDSNWLink *)self _peelOffQUICConnection:v16 type:2 readyHandler:v19 cancelHandler:v15];
  }
}

- (void)_tryReadH2Header:(id)header
{
  headerCopy = header;
  sub_1A7B306B4(headerCopy, 1, "_tryReadH2Header...", v5, v6, v7, v8, v9, v13);
  connection = [headerCopy connection];
  completion[0] = MEMORY[0x1E69E9820];
  completion[1] = 3221225472;
  completion[2] = sub_1A7B3914C;
  completion[3] = &unk_1E77E0598;
  completion[4] = self;
  v15 = headerCopy;
  v16 = connection;
  v11 = connection;
  v12 = headerCopy;
  nw_connection_receive(v11, 0, 0, completion);
}

- (BOOL)_createChannelDataConnection:(id)connection retryIndex:(unsigned __int8)index
{
  indexCopy = index;
  connectionCopy = connection;
  if ([connectionCopy hasDisconnected])
  {
    sub_1A7B306B4(connectionCopy, 1, "_createChannelDataConnection: base connection has disconnected. Not creating ChannelData connection.", v7, v8, v9, v10, v11, v40);
    v12 = 0;
  }

  else
  {
    v43 = indexCopy;
    v13 = [[NWLinkConnection alloc] initWithBaseNWLinkConnection:connectionCopy type:1];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A7B39870;
    aBlock[3] = &unk_1E77E04F8;
    aBlock[4] = self;
    v14 = connectionCopy;
    v60 = v14;
    v45 = _Block_copy(aBlock);
    v15 = _tokenForNWLinkConnection(v13);
    secure_udp = nw_parameters_create_secure_udp(*MEMORY[0x1E6977EC0], *MEMORY[0x1E6977EB8]);
    v17 = nw_parameters_copy_default_protocol_stack(secure_udp);
    options = nw_demux_create_options();
    v58 = 96;
    v57 = -16;
    v56 = 0;
    v55 = -64;
    v54 = -272716322;
    v53 = -1;
    nw_demux_options_add_pattern();
    nw_demux_options_add_pattern();
    nw_demux_options_add_pattern();
    nw_protocol_stack_prepend_application_protocol(v17, options);
    v44 = v17;
    v19 = [(IDSNWLink *)self protocolStackDescriptionFor:v17];
    [(NWLinkConnection *)v13 setProtocolStackDescription:v19];

    [(IDSNWLink *)self _setParameters:secure_udp NWLinkConnection:v13 sharePortWithListener:0 isTCP:0];
    connection = [v14 connection];
    v21 = nw_connection_create_with_connection();

    if (v21 && ![(IDSNWLink *)self _shouldFail])
    {
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = sub_1A7B39880;
      handler[3] = &unk_1E77E05C0;
      v29 = v13;
      v47 = v29;
      selfCopy = self;
      v42 = v15;
      v49 = v42;
      v30 = v14;
      v50 = v30;
      v52 = v43;
      v51 = v45;
      nw_connection_set_state_changed_handler(v21, handler);
      [(NWLinkConnection *)v29 setParent:v30];
      [(NWLinkConnection *)v29 setConnection:v21];
      [(NWLinkConnection *)v29 setName:@"Channel Data connection"];
      connectionID = [v30 connectionID];
      parent = [v30 parent];
      v41 = connectionID;
      [parent connectionID];
      v12 = 1;
      sub_1A7B306B4(v29, 1, "peeled off [C%llu(C%llu)]", v33, v34, v35, v36, v37, v41);

      [(IDSNWLink *)self _addNWLinkConnection:v29 token:v42];
      v38 = NWLinkQueue();
      nw_connection_set_queue(v21, v38);

      v28 = v45;
      nw_connection_start(v21);
    }

    else
    {
      connectionID2 = [v14 connectionID];
      sub_1A7B306B4(v13, 2, "couldn't create ChannelData connection from [C%llu] for %@", v23, v24, v25, v26, v27, connectionID2);
      v28 = v45;
      [(IDSNWLink *)self _scheduleRetryConnectionIfNeeded:0 baseConnection:v14 kind:"CD" retryIndex:v43 retryBlock:v45];
      v12 = 0;
    }
  }

  return v12;
}

- (BOOL)_createReliableUnicastConnection:(id)connection localQUICConnectionID:(id)d
{
  connectionCopy = connection;
  dCopy = d;
  v8 = [[NWLinkConnection alloc] initWithBaseNWLinkConnection:connectionCopy type:3];
  v9 = _tokenForNWLinkConnection(v8);
  secure_udp = nw_parameters_create_secure_udp(*MEMORY[0x1E6977EC0], *MEMORY[0x1E6977EB8]);
  v11 = nw_parameters_copy_default_protocol_stack(secure_udp);
  options = nw_demux_create_options();
  [dCopy length];
  [dCopy bytes];

  nw_demux_options_add_pattern();
  v32 = v11;
  nw_protocol_stack_prepend_application_protocol(v11, options);
  -[IDSNWLink _setParameters:NWLinkConnection:sharePortWithListener:isTCP:](self, "_setParameters:NWLinkConnection:sharePortWithListener:isTCP:", secure_udp, v8, 0, [connectionCopy isH2Connection]);
  connection = [connectionCopy connection];
  v14 = nw_connection_create_with_connection();

  if (v14)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1A7B39C1C;
    handler[3] = &unk_1E77E0430;
    v15 = v8;
    v34 = v15;
    selfCopy = self;
    v16 = v9;
    v17 = v9;
    v36 = v17;
    nw_connection_set_state_changed_handler(v14, handler);
    [(NWLinkConnection *)v15 setConnection:v14];
    [(NWLinkConnection *)v15 setName:@"Reliable Unicast connection"];
    connectionID = [(NWLinkConnection *)v15 connectionID];
    [connectionCopy connectionID];
    sub_1A7B306B4(v15, 1, "peeled off RU [C%llu(%llu)]", v19, v20, v21, v22, v23, connectionID);
    [(NWLinkConnection *)v15 setParent:connectionCopy];
    [(IDSNWLink *)self _addNWLinkConnection:v15 token:v17];
    v24 = NWLinkQueue();
    nw_connection_set_queue(v14, v24);

    nw_connection_start(v14);
  }

  else
  {
    connectionID2 = [connectionCopy connectionID];
    v16 = v9;
    sub_1A7B306B4(v8, 2, "couldn't create reliable unicast connection from [C%llu] for %@", v26, v27, v28, v29, v30, connectionID2);
  }

  return v14 != 0;
}

- (void)_failNWLinkConnection:(id)connection
{
  connectionCopy = connection;
  if ([connectionCopy state] != 4)
  {
    [(IDSNWLink *)self _cancelNWLinkConnection:connectionCopy remove:0];
    [connectionCopy setState:4];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [MEMORY[0x1E696AEC0] stringWithCString:sub_1A7B2ED88(objc_msgSend(connectionCopy encoding:{"type")), 4}];
    [WeakRetained link:self didFailConnectionOfType:v5];
  }
}

- (void)_cancelNWLinkConnection:(id)connection remove:(BOOL)remove
{
  removeCopy = remove;
  connectionCopy = connection;
  v6 = _tokenForNWLinkConnection(connectionCopy);
  sub_1A7B306B4(connectionCopy, 1, "_cancelNWLinkConnectionWithToken: disconnecting %@", v7, v8, v9, v10, v11, v6);
  if ([connectionCopy state] != 3 && objc_msgSend(connectionCopy, "state") != 4)
  {
    connection = [connectionCopy connection];
    nw_connection_cancel(connection);

    [connectionCopy setState:3];
    if (removeCopy)
    {
      v13 = _tokenForNWLinkConnection(connectionCopy);
      [(IDSNWLink *)self _removeNWLinkConnection:connectionCopy token:v13];
    }
  }
}

- (void)_createIndicationConnection:(id)connection retryIndex:(unsigned __int8)index
{
  connectionCopy = connection;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A7B3A0D4;
  aBlock[3] = &unk_1E77E04F8;
  aBlock[4] = self;
  v7 = connectionCopy;
  v23 = v7;
  v8 = _Block_copy(aBlock);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1A7B3A0E4;
  v18[3] = &unk_1E77E0548;
  v18[4] = self;
  v9 = v7;
  v19 = v9;
  indexCopy = index;
  v10 = v8;
  v20 = v10;
  v11 = _Block_copy(v18);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1A7B3A660;
  v14[3] = &unk_1E77E0548;
  v14[4] = self;
  v15 = v9;
  indexCopy2 = index;
  v16 = v10;
  v12 = v10;
  v13 = v9;
  [(IDSNWLink *)self _peelOffQUICConnection:v13 type:4 readyHandler:v11 cancelHandler:v14];
}

- (void)_peelOffQUICConnection:(id)connection type:(unint64_t)type readyHandler:(id)handler cancelHandler:(id)cancelHandler
{
  connectionCopy = connection;
  handlerCopy = handler;
  cancelHandlerCopy = cancelHandler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A7B3A8E8;
  aBlock[3] = &unk_1E77E0638;
  typeCopy = type;
  v13 = connectionCopy;
  v39 = v13;
  selfCopy = self;
  v14 = handlerCopy;
  v41 = v14;
  v15 = cancelHandlerCopy;
  v42 = v15;
  v16 = _Block_copy(aBlock);
  os_unfair_lock_lock(&self->_lock);
  isConnected = [v13 isConnected];
  v23 = @"NO";
  if (isConnected)
  {
    v23 = @"YES";
  }

  sub_1A7B306B4(v13, 1, "peeling off; isConnected: %@", v18, v19, v20, v21, v22, v23);
  if ([v13 isConnected])
  {
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = sub_1A7B3AD28;
    v35[3] = &unk_1E77E0160;
    v37 = v16;
    v36 = v13;
    IDSTransportThreadAddBlock(v35);

    v29 = v37;
  }

  else
  {
    sub_1A7B306B4(v13, 1, "not peeling off yet: not connected", v24, v25, v26, v27, v28, v34);
    v29 = _tokenForNWLinkConnection(v13);
    v30 = [(NSMutableDictionary *)self->_queuedPeelOffs objectForKeyedSubscript:v29];

    if (!v30)
    {
      v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(NSMutableDictionary *)self->_queuedPeelOffs setObject:v31 forKeyedSubscript:v29];
    }

    v32 = [(NSMutableDictionary *)self->_queuedPeelOffs objectForKeyedSubscript:v29];
    v33 = _Block_copy(v16);
    [v32 addObject:v33];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_findNewLocalEndpointForQRConnection:(id)connection
{
  v27 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  port = nw_endpoint_get_port(connectionCopy);
  v6 = 1;
  do
  {
    v14 = v6 + port;
    v7 = [(IDSNWLink *)self _createNewListenerWithLocalPort:&v14];
    if (v7)
    {
      goto LABEL_5;
    }

    v8 = v6++;
  }

  while (v8 <= 8);
  v14 = 0;
  v7 = [(IDSNWLink *)self _createNewListenerWithLocalPort:&v14];
  if (v7)
  {
LABEL_5:
    v9 = v7;
    [(IDSNWLink *)self _addExtraListener:v7 port:v14 isCellular:port == self->_cellularPort];
    nw_endpoint_get_address(connectionCopy);
    *&v10.sa_len = 0xAAAAAAAAAAAAAAAALL;
    *&v10.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
    v26 = v10;
    v24 = v10;
    v25 = v10;
    v22 = v10;
    v23 = v10;
    v20 = v10;
    v21 = v10;
    address = v10;
    __memcpy_chk();
    SASetPort(&address, v14);
    v11 = nw_endpoint_create_address(&address);
    v12 = +[IDSFoundationLog IDSNWLink];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v16 = port;
      v17 = 1024;
      v18 = v14;
      _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "replacing local port %u with new local port %u", buf, 0xEu);
    }

    goto LABEL_8;
  }

  v9 = +[IDSFoundationLog IDSNWLink];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *&address.sa_len = 67109376;
    *&address.sa_data[2] = port + 1;
    *&address.sa_data[6] = 1024;
    *&address.sa_data[8] = port + 9;
    _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "failed to create an extra listener for ports [%u-%u] and 0", &address.sa_len, 0xEu);
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (id)_createP2PQUICPodConnectionWithType:(unsigned int)type udpNWLinkConnection:(id)connection parameters:(id)parameters completionHandler:(id)handler
{
  v8 = *&type;
  connectionCopy = connection;
  parametersCopy = parameters;
  handlerCopy = handler;
  if (v8)
  {
    if (v8 != 1)
    {
      sub_1A7B306B4(connectionCopy, 2, "Unexpected P2P TLE connection type %u", v11, v12, v13, v14, v15, v8);
      handlerCopy[2](handlerCopy, 0);
      v37 = 0;
      goto LABEL_20;
    }

    v91 = "IDS";
    v17 = 10;
  }

  else
  {
    v91 = "AVC";
    v17 = 9;
  }

  v114 = 64;
  v18 = bswap32([parametersCopy clientConnectionID]);
  v19 = BYTE1(v18);
  v115 = v18;
  v20 = v18;
  v21 = BYTE2(v18);
  v85 = HIBYTE(v18);
  clientConnectionID = [parametersCopy clientConnectionID];
  v83 = v19;
  v84 = v21;
  v82 = v20;
  sub_1A7B306B4(connectionCopy, 1, "_createQUICPodConnectionWithType: adding demux rule with pattern: %02x%02x%02x%02x%02x (%08x)", v22, v23, v24, v25, v26, 64);
  v112 = -32;
  v113 = -1;
  connection = [connectionCopy connection];
  v28 = [[NWLinkConnection alloc] initWithBaseNWLinkConnection:connectionCopy type:v17];
  v29 = _tokenForNWLinkConnection(v28);
  v30 = [(IDSNWLink *)self _NWLinkConnectionForToken:v29];
  v31 = v30;
  if (!v30 || ![v30 isConnected])
  {
    v108 = 0;
    v109 = &v108;
    v110 = 0x2020000000;
    v111 = 0;
    v102 = MEMORY[0x1E69E9820];
    v103 = 3221225472;
    v104 = sub_1A7B3B52C;
    v105 = &unk_1E77E0660;
    v107 = &v108;
    v38 = parametersCopy;
    v106 = v38;
    qpod = nw_parameters_create_qpod();
    nw_parameters_set_account_id();
    if (v109[3])
    {
      if (qpod)
      {
        v89 = nw_parameters_copy_default_protocol_stack(qpod);
        options = nw_demux_create_options();
        nw_demux_options_add_pattern();
        nw_protocol_stack_append_application_protocol();
        v45 = [(IDSNWLink *)self protocolStackDescriptionFor:v89];
        [(NWLinkConnection *)v28 setProtocolStackDescription:v45];

        [(IDSNWLink *)self _setParameters:qpod NWLinkConnection:v28 sharePortWithListener:0 isTCP:0];
        sub_1A7B306B4(connectionCopy, 1, "creating QUICPod connection with connection", v46, v47, v48, v49, v50, v81);
        connection = nw_connection_create_with_connection();
        if (connection)
        {
          [(NWLinkConnection *)v28 setQuicPodParamaters:qpod];
          [(NWLinkConnection *)v28 setIsQUICPod:1];
          v100[0] = 0;
          v100[1] = v100;
          v100[2] = 0x2020000000;
          v101 = 0;
          handler[0] = MEMORY[0x1E69E9820];
          handler[1] = 3221225472;
          handler[2] = sub_1A7B3B620;
          handler[3] = &unk_1E77E0688;
          v99 = v100;
          v98 = handlerCopy;
          v51 = v28;
          v52 = v29;
          v53 = v51;
          v95 = v51;
          selfCopy = self;
          v87 = v52;
          v88 = v52;
          v97 = v88;
          nw_connection_set_state_changed_handler(connection, handler);
          [(NWLinkConnection *)v53 setParent:connectionCopy];
          [(NWLinkConnection *)v53 setConnection:connection];
          v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s qpod connection", v91, v82, v83, v84, v85, clientConnectionID];
          [(NWLinkConnection *)v53 setName:v54];

          [(NWLinkConnection *)v53 setIdsQPodParameters:v38];
          sub_1A7B306B4(v53, 1, "qpod parameters: %@", v55, v56, v57, v58, v59, v38);
          clientConnectionID2 = [v38 clientConnectionID];
          sub_1A7B306B4(v53, 1, "QUICPod local QUIC connection ID: %lu", v61, v62, v63, v64, v65, clientConnectionID2);
          connectionID = [(NWLinkConnection *)v53 connectionID];
          [connectionCopy connectionID];
          sub_1A7B306B4(v53, 1, "QUICPod peeled off [C%llu(C%llu)]", v67, v68, v69, v70, v71, connectionID);
          [(IDSNWLink *)self _addNWLinkConnection:v53 token:v88];
          v72 = NWLinkQueue();
          nw_connection_set_queue(connection, v72);

          nw_connection_start(connection);
          v37 = v53;

          _Block_object_dispose(v100, 8);
          v29 = v87;
        }

        else
        {
          handlerCopy[2](handlerCopy, 0);
          connectionID2 = [connectionCopy connectionID];
          sub_1A7B306B4(v28, 2, "couldn't create QUICPod connection from [C%llu] for %@", v75, v76, v77, v78, v79, connectionID2);
          v37 = 0;
        }

        goto LABEL_18;
      }

      v73 = "nw_parameters_create_qpod failed";
    }

    else
    {
      v73 = "nw_qpod_setup_secrets failed";
    }

    sub_1A7B306B4(v28, 2, v73, v40, v41, v42, v43, v44, v81);
    handlerCopy[2](handlerCopy, 0);
    v37 = 0;
LABEL_18:

    _Block_object_dispose(&v108, 8);
    goto LABEL_19;
  }

  sub_1A7B306B4(v31, 1, "not setting up new P2P QUICPod connection because one already exists for token %@", v32, v33, v34, v35, v36, v29);
  handlerCopy[2](handlerCopy, 1);
  v37 = v31;
LABEL_19:

LABEL_20:

  return v37;
}

- (id)_createQUICPodConnectionWithType:(unsigned int)type quicNWLinkConnection:(id)connection qpodParameters:(id)parameters
{
  v6 = *&type;
  connectionCopy = connection;
  parametersCopy = parameters;
  v14 = parametersCopy;
  if (v6)
  {
    if (v6 != 1)
    {
      sub_1A7B306B4(connectionCopy, 2, "Unexpected TLE connection type %u", v9, v10, v11, v12, v13, v6);
      v51 = 0;
      goto LABEL_16;
    }

    v15 = "IDS";
    v16 = 8;
  }

  else
  {
    v15 = "AVC";
    v16 = 7;
  }

  v89 = 64;
  v17 = bswap32([parametersCopy clientConnectionID]);
  v18 = BYTE1(v17);
  v90 = v17;
  v19 = v17;
  v20 = BYTE2(v17);
  v64 = HIBYTE(v17);
  clientConnectionID = [v14 clientConnectionID];
  v62 = v18;
  v63 = v20;
  v61 = v19;
  sub_1A7B306B4(connectionCopy, 1, "_createQUICPodConnectionWithType: adding demux rule with pattern: %02x%02x%02x%02x%02x (%08x)", v21, v22, v23, v24, v25, 64);
  v87 = -32;
  v88 = -1;
  connection = [connectionCopy connection];
  v27 = nw_protocol_copy_quic_connection_definition();
  v28 = nw_connection_copy_protocol_metadata(connection, v27);

  v29 = [[NWLinkConnection alloc] initWithBaseNWLinkConnection:connectionCopy type:v16];
  v69 = _tokenForNWLinkConnection(v29);
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v75 = MEMORY[0x1E69E9820];
  v76 = 3221225472;
  v77 = sub_1A7B3BCC8;
  v78 = &unk_1E77E06B0;
  v81 = &v83;
  v30 = v28;
  v79 = v30;
  v31 = v15;
  v82 = v15;
  v32 = v14;
  v80 = v32;
  qpod = nw_parameters_create_qpod();
  v39 = qpod;
  if (v84[3])
  {
    if (qpod)
    {
      v67 = nw_parameters_copy_default_protocol_stack(qpod);
      options = nw_demux_create_options();
      nw_demux_options_add_pattern();
      nw_protocol_stack_append_application_protocol();
      v40 = [(IDSNWLink *)self protocolStackDescriptionFor:v67];
      [(NWLinkConnection *)v29 setProtocolStackDescription:v40];

      [(IDSNWLink *)self _setParameters:v39 NWLinkConnection:v29 sharePortWithListener:0 isTCP:0];
      v41 = nw_connection_create_with_connection();
      if (v41)
      {
        [(NWLinkConnection *)v29 setQuicPodParamaters:v39];
        [(NWLinkConnection *)v29 setIsQUICPod:1];
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = sub_1A7B3BD7C;
        handler[3] = &unk_1E77E0430;
        v42 = v29;
        v72 = v42;
        selfCopy = self;
        v66 = v69;
        v74 = v66;
        nw_connection_set_state_changed_handler(v41, handler);
        [(NWLinkConnection *)v42 setConnection:v41];
        v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s qpod connection", v31, v61, v62, v63, v64, clientConnectionID];
        [(NWLinkConnection *)v42 setName:v43];

        [(NWLinkConnection *)v42 setParent:connectionCopy];
        [(NWLinkConnection *)v42 setIdsQPodParameters:v32];
        connectionID = [(NWLinkConnection *)v42 connectionID];
        [connectionCopy connectionID];
        sub_1A7B306B4(v42, 1, "QUICPod peeled off [C%llu(C%llu)]", v45, v46, v47, v48, v49, connectionID);
        [(IDSNWLink *)self _addNWLinkConnection:v42 token:v66];
        v50 = NWLinkQueue();
        nw_connection_set_queue(v41, v50);

        nw_connection_start(v41);
        v51 = v42;
      }

      else
      {
        connectionID2 = [connectionCopy connectionID];
        sub_1A7B306B4(v29, 2, "couldn't create QUICPod connection from [C%llu] for %@", v54, v55, v56, v57, v58, connectionID2);
        v51 = 0;
      }

      goto LABEL_15;
    }

    v52 = "nw_parameters_create_qpod failed";
  }

  else
  {
    v52 = "nw_qpod_setup_secrets failed";
  }

  sub_1A7B306B4(v29, 2, v52, v34, v35, v36, v37, v38, v60);
  v51 = 0;
LABEL_15:

  _Block_object_dispose(&v83, 8);
LABEL_16:

  return v51;
}

- (unint64_t)_sendData:(id)data withPacketBuffer:(id *)buffer NWLinkConnection:(id)connection
{
  v51 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  connectionCopy = connection;
  if ([connectionCopy type] == 4 || objc_msgSend(connectionCopy, "type") == 5 || objc_msgSend(connectionCopy, "type") == 6)
  {
    peelOffNewConnection = [connectionCopy peelOffNewConnection];
    var34 = buffer->var34;
    var31 = buffer->var31;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A7B3C318;
    aBlock[3] = &unk_1E77E06D8;
    v47 = var34;
    v46 = var31;
    v43 = dataCopy;
    v13 = connectionCopy;
    v44 = v13;
    selfCopy = self;
    v14 = _Block_copy(aBlock);
    if (peelOffNewConnection)
    {
      [(IDSNWLink *)self _peelOffQUICConnection:v13 type:6 readyHandler:v14];
    }

    else
    {
      [v13 setPeelOffNewConnection:1];
      v14[2](v14, v13);
    }

    v15 = v43;
    goto LABEL_8;
  }

  v15 = *MEMORY[0x1E6977E88];
  is_null = uuid_is_null(buffer->var29);
  if (([connectionCopy isH2Connection] & 1) == 0)
  {
    if (is_null)
    {
      if (!buffer->var30 && !buffer->var21)
      {
LABEL_24:
        connection = [connectionCopy connection];
        completion[0] = MEMORY[0x1E69E9820];
        completion[1] = 3221225472;
        completion[2] = sub_1A7B3C614;
        completion[3] = &unk_1E77E0700;
        v40 = connectionCopy;
        selfCopy2 = self;
        nw_connection_send(connection, dataCopy, v15, 1, completion);

        goto LABEL_8;
      }

      v25 = nw_content_context_create("NWLink packet metadata");
    }

    else
    {
      v25 = nw_content_context_create("NWLink packet metadata");

      nw_content_context_set_packet_id();
    }

    v15 = v25;
    var30 = buffer->var30;
    if (var30)
    {
      nw_content_context_set_expiration_milliseconds(v25, var30);
    }

    v27 = _nwProtocolMetaDataForTrafficClass(buffer->var21);
    v28 = v27;
    if (v27)
    {
      nw_ip_metadata_set_ecn_flag(v27, (buffer->var22 & 3));
      nw_content_context_set_metadata_for_protocol(v15, v28);
    }

    goto LABEL_24;
  }

  sub_1A7B306B4(connectionCopy, 3, "_sendData: h2 sending", v18, v19, v20, v21, v22, v34);
  v50 = -1431655766;
  v49 = 0xAAAAAAAAAAAAAAAALL;
  buffer = -1523056768;
  size = dispatch_data_get_size(dataCopy);
  if (size >= 0x40)
  {
    if (size >> 14)
    {
      if (size >> 30)
      {
        if (size >> 62)
        {
          abort();
        }

        size = bswap64(size | 0xC000000000000000);
        v24 = 8;
      }

      else
      {
        size = bswap32(size | 0x80000000);
        v24 = 4;
      }
    }

    else
    {
      size = bswap32(size | 0x4000) >> 16;
      v24 = 2;
    }
  }

  else
  {
    v24 = 1;
  }

  v38 = size;
  __memcpy_chk();
  v30 = dispatch_data_create(&buffer, (v24 + 4), 0, 0);
  concat = dispatch_data_create_concat(v30, dataCopy);
  connection2 = [connectionCopy connection];
  contentContext = [connectionCopy contentContext];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = sub_1A7B3C670;
  v35[3] = &unk_1E77E0700;
  v36 = connectionCopy;
  selfCopy3 = self;
  nw_connection_send(connection2, concat, contentContext, 0, v35);

LABEL_8:
  return 0;
}

- (void)_handleIncomingMessage:(id)message keepWaiting:(BOOL)waiting
{
  messageCopy = message;
  connection = [messageCopy connection];
  v8 = [messageCopy type] == 4 || objc_msgSend(messageCopy, "type") == 5 || objc_msgSend(messageCopy, "type") == 6;
  messageType = [messageCopy messageType];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A7B3C89C;
  aBlock[3] = &unk_1E77E0778;
  v10 = messageCopy;
  v26 = messageType;
  v24 = v10;
  selfCopy = self;
  v27 = v8;
  waitingCopy = waiting;
  v11 = _Block_copy(aBlock);
  if (![v10 isH2Connection] || v8)
  {
    sub_1A7B306B4(v10, 3, "calling nw_connection_receive_message on %@", v12, v13, v14, v15, v16, connection);
    nw_connection_receive_message(connection, v11);
  }

  else
  {
    capsuleParser = [v10 capsuleParser];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1A7B3D47C;
    v18[3] = &unk_1E77E07A0;
    v19 = v10;
    selfCopy2 = self;
    waitingCopy2 = waiting;
    v21 = v11;
    [capsuleParser readCapsuleWithCompletionHandler:v18];
  }
}

- (void)_handleIncomingIndicationMessage:(id)message
{
  messageCopy = message;
  connection = [messageCopy connection];
  completion[0] = MEMORY[0x1E69E9820];
  completion[1] = 3221225472;
  completion[2] = sub_1A7B3D5E4;
  completion[3] = &unk_1E77E0598;
  v9 = messageCopy;
  selfCopy = self;
  v11 = connection;
  v6 = connection;
  v7 = messageCopy;
  nw_connection_receive(v6, 4u, 4u, completion);
}

- (id)protocolStackDescriptionFor:(id)for
{
  forCopy = for;
  v4 = nw_protocol_stack_copy_internet_protocol(forCopy);
  v5 = nw_protocol_stack_copy_transport_protocol(forCopy);
  v6 = MEMORY[0x1E696AEC0];
  v7 = sub_1A7B3DA88(v4);
  v8 = sub_1A7B3DA88(v5);
  v9 = [v6 stringWithFormat:@"%@.%@", v7, v8];

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1A7B33924;
  v17 = sub_1A7B33934;
  v18 = &stru_1F1AC8480;
  iterate_block[0] = MEMORY[0x1E69E9820];
  iterate_block[1] = 3221225472;
  iterate_block[2] = sub_1A7B3DC80;
  iterate_block[3] = &unk_1E77E07F0;
  iterate_block[4] = &v13;
  nw_protocol_stack_iterate_application_protocols(forCopy, iterate_block);
  v10 = [v9 stringByAppendingString:v14[5]];
  _Block_object_dispose(&v13, 8);

  return v10;
}

- (BOOL)_setParameters:(id)parameters NWLinkConnection:(id)connection sharePortWithListener:(BOOL)listener isTCP:(BOOL)p
{
  pCopy = p;
  listenerCopy = listener;
  v57 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  connectionCopy = connection;
  localEndpoint = [connectionCopy localEndpoint];
  v18 = @"NO";
  if (listenerCopy)
  {
    v18 = @"YES";
  }

  sub_1A7B306B4(connectionCopy, 1, "_setParameters, sharePortWithListener: %@", v12, v13, v14, v15, v16, v18);
  supportsNAT64 = [connectionCopy supportsNAT64];
  if (pCopy)
  {
    if (!supportsNAT64)
    {
      host = [connectionCopy cachedH2LocalEndpoint];
      goto LABEL_10;
    }

    *&v20 = 0xAAAAAAAAAAAAAAAALL;
    *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v55 = v20;
    v56 = v20;
    v53 = v20;
    v54 = v20;
    v51 = v20;
    v52 = v20;
    *__str = v20;
    v50 = v20;
    cachedH2LocalEndpoint = [connectionCopy cachedH2LocalEndpoint];
    port = nw_endpoint_get_port(cachedH2LocalEndpoint);
    snprintf(__str, 0x80uLL, "%u", port);

LABEL_8:
    host = nw_endpoint_create_host("::", __str);
LABEL_10:
    v26 = host;
    nw_parameters_set_local_endpoint(parametersCopy, host);

    goto LABEL_12;
  }

  if (supportsNAT64)
  {
    *&v23 = 0xAAAAAAAAAAAAAAAALL;
    *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v55 = v23;
    v56 = v23;
    v53 = v23;
    v54 = v23;
    v51 = v23;
    v52 = v23;
    *__str = v23;
    v50 = v23;
    v24 = nw_endpoint_get_port(localEndpoint);
    snprintf(__str, 0x80uLL, "%u", v24);
    goto LABEL_8;
  }

  nw_parameters_set_local_endpoint(parametersCopy, localEndpoint);
LABEL_12:
  if ([connectionCopy hasRequiredInterface])
  {
    [connectionCopy interfaceIndex];
    v27 = nw_interface_create_with_index();
    nw_parameters_require_interface(parametersCopy, v27);
  }

  nw_parameters_set_reuse_local_address(parametersCopy, 1);
  if (!uuid_is_null(self->_clientUUID))
  {
    nw_parameters_set_e_proc_uuid();
  }

  v28 = IDSRealTimeContext();
  nw_parameters_set_context();

  if (pCopy)
  {
    LOBYTE(v34) = 1;
    sub_1A7B306B4(connectionCopy, 1, "TCP: no need to have demux logic", v29, v30, v31, v32, v33, v48);
  }

  else
  {
    __str[0] = 0;
    options = nw_demux_create_options();
    nw_demux_options_add_pattern();
    nw_parameters_set_channel_demux_options();
    if (listenerCopy)
    {
      v34 = [(IDSNWLink *)self _findListenerWithLocalEndpoint:localEndpoint];
      if (!v34)
      {
        sub_1A7B306B4(connectionCopy, 2, "couldn't find the listener for %@", v36, v37, v38, v39, v40, localEndpoint);

        goto LABEL_22;
      }

      connection = [connectionCopy connection];
      nw_parameters_allow_sharing_port_with_listener_for_connection();

      sub_1A7B306B4(connectionCopy, 1, "sharing local port with listener %p", v42, v43, v44, v45, v46, v34);
    }

    LOBYTE(v34) = 1;
  }

LABEL_22:

  return v34;
}

- (BOOL)_findExistingCollidingQRConnection:(id)connection remoteEndpoint:(id)endpoint sessionID:(id)d localEndpointToUse:(id *)use
{
  v40 = *MEMORY[0x1E69E9840];
  endpoint = connection;
  endpointCopy = endpoint;
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  selfCopy = self;
  allValues = [(NSMutableDictionary *)self->_tokenToNWLinkConnection allValues];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = [allValues countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v32;
    v14 = endpointCopy;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(allValues);
        }

        v16 = *(*(&v31 + 1) + 8 * i);
        if ([v16 type] == 5)
        {
          localEndpoint = [v16 localEndpoint];
          remoteEndpoint = [v16 remoteEndpoint];
          sessionID = [v16 sessionID];
          if (sub_1A7B3E2CC(v14, remoteEndpoint))
          {
            if ([dCopy isEqualToString:sessionID])
            {
              address = nw_endpoint_get_address(endpoint);
              v21 = nw_endpoint_get_address(localEndpoint);
              if (IsSameIP(address, v21))
              {
                *use = [v16 localEndpoint];
              }

              goto LABEL_15;
            }

            if (sub_1A7B3E2CC(endpoint, localEndpoint))
            {
              v22 = _tokenWithParameters(endpoint, v14, dCopy, 5uLL, 0);
              v23 = _tokenWithParameters(localEndpoint, remoteEndpoint, sessionID, 5uLL, 0);
              v24 = +[IDSFoundationLog IDSNWLink];
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v36 = v22;
                v37 = 2112;
                v38 = v23;
                _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "COLLISION DETECTED: new %@, existing %@", buf, 0x16u);
              }

              v12 = 1;
LABEL_15:
              v14 = endpointCopy;
            }
          }

          continue;
        }
      }

      v11 = [allValues countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (!v11)
      {
        goto LABEL_21;
      }
    }
  }

  v12 = 0;
  v14 = endpointCopy;
LABEL_21:
  os_unfair_lock_unlock(&selfCopy->_lock);

  return v12 & 1;
}

- (void)_setQUICKeepAliveForCellularLink:(id)link
{
  linkCopy = link;
  localEndpoint = [linkCopy localEndpoint];
  LODWORD(self) = [(IDSNWLink *)self _isLocalEndpointCellular:localEndpoint];

  if (self)
  {
    connection = [linkCopy connection];
    v6 = nw_protocol_copy_quic_definition();
    v7 = nw_connection_copy_protocol_metadata(connection, v6);

    if (v7)
    {
      sub_1A7B306B4(linkCopy, 1, "_setQUICKeepAliveForCellularLink: set nw_quic_set_keepalive to %d", v8, v9, v10, v11, v12, 120);
      nw_quic_set_keepalive();
    }
  }
}

- (void)_setWiFiAssistStateForCellularLink:(id)link isEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v26 = *MEMORY[0x1E69E9840];
  linkCopy = link;
  localEndpoint = [linkCopy localEndpoint];
  LODWORD(self) = [(IDSNWLink *)self _isLocalEndpointCellular:localEndpoint];

  if (self)
  {
    connection = [linkCopy connection];
    v9 = nw_connection_copy_current_path(connection);

    memset(src, 170, sizeof(src));
    nw_path_get_flow_registration_id();
    v10 = socket(2, 2, 17);
    memset(dst, 0, sizeof(dst));
    v24 = enabledCopy;
    uuid_copy(dst, src);
    v11 = setsockopt(v10, 0xFFFF, 4402, dst, 0x14u);
    if (enabledCopy)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    if (v11)
    {
      __error();
      sub_1A7B306B4(linkCopy, 2, "_setWiFiAssistStateForCellularLink(%@) failed with errno %d", v18, v19, v20, v21, v22, v17);
    }

    else
    {
      sub_1A7B306B4(linkCopy, 1, "_setWiFiAssistStateForCellularLink(%@) succeeded", v12, v13, v14, v15, v16, v17);
    }

    close(v10);
  }
}

- (void)_addNWLinkConnection:(id)connection token:(id)token
{
  value = connection;
  tokenCopy = token;
  os_unfair_lock_lock(&self->_lock);
  if (self->_isInvalidated)
  {
    sub_1A7B306B4(value, 1, "late after NWLink %p invalidated", v7, v8, v9, v10, v11, self);
    [(IDSNWLink *)self _cancelNWLinkConnection:value remove:0];
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_21;
  }

  if ([value connectionID])
  {
    if (!tokenCopy)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_1A7B306B4(value, 2, "WARNING! Storing nwLinkConnection with connectionID 0", v12, v13, v14, v15, v16, v54);
    if (!tokenCopy)
    {
LABEL_14:
      v26 = value;
      if (value)
      {
        CFDictionarySetValue(self->_tokenToNWLinkConnection, tokenCopy, value);
        v26 = value;
      }

      sub_1A7B306B4(v26, 1, "_addNWLinkConnection: added %@ for %@", v26, v13, v14, v15, v16, tokenCopy);
      v19 = 0;
LABEL_17:
      parent = [value parent];

      if (parent)
      {
        connectionID = [value connectionID];
        parent2 = [value parent];
        [parent2 connectionID];
        sub_1A7B306B4(value, 1, "_addNWLinkConnection: [C%llu] has parent [C%llu], adding as child", v35, v36, v37, v38, v39, connectionID);

        parent3 = [value parent];
        children = [parent3 children];
        [children addObject:value];
      }

      else
      {
        sub_1A7B306B4(value, 1, "_addNWLinkConnection: added to rootConnections", v28, v29, v30, v31, v32, v55);
        [(NSMutableSet *)self->_rootConnections addObject:value];
      }

      goto LABEL_20;
    }
  }

  tokenToNWLinkConnection = self->_tokenToNWLinkConnection;
  if (!tokenToNWLinkConnection)
  {
    goto LABEL_14;
  }

  v18 = CFDictionaryGetValue(tokenToNWLinkConnection, tokenCopy);
  if (!v18)
  {
    goto LABEL_14;
  }

  v19 = v18;
  if (([v18 hasFailed] & 1) != 0 || objc_msgSend(v19, "hasDisconnected"))
  {
    connection = [v19 connection];
    nw_connection_set_state_changed_handler(connection, 0);

    v25 = value;
    if (value)
    {
      CFDictionarySetValue(self->_tokenToNWLinkConnection, tokenCopy, value);
      v25 = value;
    }

    sub_1A7B306B4(v25, 1, "_addNWLinkConnection: replaced old %@ for %@ due to old being disconnected", v25, v21, v22, v23, v24, tokenCopy);
    goto LABEL_17;
  }

  connectionID2 = [v19 connectionID];
  if (connectionID2 >= [value connectionID])
  {
    sub_1A7B306B4(value, 1, "old connection being cancelled because new connection started earlier [C%llu >= C%llu]", v43, v44, v45, v46, v47, connectionID2);
    [(IDSNWLink *)self _cancelNWLinkConnection:v19 remove:0];
    connection2 = [v19 connection];
    nw_connection_set_state_changed_handler(connection2, 0);

    v53 = value;
    if (value)
    {
      CFDictionarySetValue(self->_tokenToNWLinkConnection, tokenCopy, value);
      v53 = value;
    }

    sub_1A7B306B4(v53, 1, "_addNWLinkConnection: replaced old %@ for %@", v53, v49, v50, v51, v52, tokenCopy);
    goto LABEL_17;
  }

  sub_1A7B306B4(value, 1, "new connection being cancelled due to existing earlier connection [C%llu < C%llu]", v43, v44, v45, v46, v47, connectionID2);
  [(IDSNWLink *)self _cancelNWLinkConnection:value remove:0];
LABEL_20:
  os_unfair_lock_unlock(&self->_lock);

LABEL_21:
}

- (id)_NWLinkConnectionForToken:(id)token
{
  tokenCopy = token;
  os_unfair_lock_lock(&self->_lock);
  Value = 0;
  if (tokenCopy && self->_tokenToNWLinkConnection)
  {
    Value = CFDictionaryGetValue(self->_tokenToNWLinkConnection, tokenCopy);
  }

  v6 = Value;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)_removeNWLinkConnection:(id)connection token:(id)token
{
  connectionCopy = connection;
  tokenCopy = token;
  os_unfair_lock_lock(&self->_lock);
  if (self->_isInvalidated)
  {
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_15;
  }

  parent = [connectionCopy parent];
  v8 = parent;
  if (parent)
  {
    children = [parent children];
    [children removeObject:connectionCopy];

    [connectionCopy setParent:0];
    if (!tokenCopy)
    {
      goto LABEL_11;
    }
  }

  else
  {
    [(NSMutableSet *)self->_rootConnections removeObject:connectionCopy];
    if (!tokenCopy)
    {
      goto LABEL_11;
    }
  }

  tokenToNWLinkConnection = self->_tokenToNWLinkConnection;
  if (tokenToNWLinkConnection)
  {
    v11 = CFDictionaryGetValue(tokenToNWLinkConnection, tokenCopy);
    if (v11)
    {
      v12 = v11;
      connectionID = [v11 connectionID];
      if (connectionID == [connectionCopy connectionID])
      {
        [(NSMutableDictionary *)self->_tokenToNWLinkConnection removeObjectForKey:tokenCopy];
        sub_1A7B306B4(connectionCopy, 1, "_removeNWLinkConnection: removed %@", v14, v15, v16, v17, v18, tokenCopy);
        connection = [connectionCopy connection];
        nw_connection_set_state_changed_handler(connection, 0);
      }

      else
      {
        connectionID2 = [v12 connectionID];
        [connectionCopy connectionID];
        sub_1A7B306B4(connectionCopy, 1, "_removeNWLinkConnection: not removed because it doesn't match to what's stored (%llu != %llu)", v27, v28, v29, v30, v31, connectionID2);
      }

      goto LABEL_14;
    }
  }

LABEL_11:
  connectionID3 = [connectionCopy connectionID];
  sub_1A7B306B4(connectionCopy, 1, "_removeNWLinkConnection: not removed because it's not stored (%llu)", v21, v22, v23, v24, v25, connectionID3);
LABEL_14:
  os_unfair_lock_unlock(&self->_lock);

LABEL_15:
}

- (void)_addChildConnectionEvaluator:(id)evaluator token:(id)token
{
  value = evaluator;
  tokenCopy = token;
  os_unfair_lock_lock(&self->_lock);
  if (value)
  {
    CFDictionarySetValue(self->_tokenToChildConnectionEvaluator, tokenCopy, value);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_removeChildConnectionEvaluatorFortoken:(id)fortoken
{
  key = fortoken;
  os_unfair_lock_lock(&self->_lock);
  if (key)
  {
    tokenToChildConnectionEvaluator = self->_tokenToChildConnectionEvaluator;
    if (tokenToChildConnectionEvaluator)
    {
      CFDictionaryRemoveValue(tokenToChildConnectionEvaluator, key);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_childConnectionEvaluatorForToken:(id)token
{
  tokenCopy = token;
  os_unfair_lock_lock(&self->_lock);
  Value = 0;
  if (tokenCopy && self->_tokenToChildConnectionEvaluator)
  {
    Value = CFDictionaryGetValue(self->_tokenToChildConnectionEvaluator, tokenCopy);
  }

  v6 = Value;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)_addInterfaceIndex:(unsigned int)index NAT64LocalAddress:(unsigned int)address
{
  v4 = *&address;
  v5 = *&index;
  os_unfair_lock_lock(&self->_lock);
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  if (v7)
  {
    CFDictionarySetValue(self->_interfaceIndexToNAT64LocalAddress, [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5], v7);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (unsigned)_NAT64LocalAddressForInterfaceIndex:(unsigned int)index
{
  v3 = *&index;
  os_unfair_lock_lock(&self->_lock);
  if (self->_interfaceIndexToNAT64LocalAddress)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
    if (v5)
    {
      interfaceIndexToNAT64LocalAddress = self->_interfaceIndexToNAT64LocalAddress;
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
      v8 = CFDictionaryGetValue(interfaceIndexToNAT64LocalAddress, v7);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  unsignedIntValue = [v8 unsignedIntValue];

  return unsignedIntValue;
}

- (void)_addExtraListener:(id)listener port:(unsigned __int16)port isCellular:(BOOL)cellular
{
  cellularCopy = cellular;
  portCopy = port;
  listenerCopy = listener;
  os_unfair_lock_lock(&self->_lock);
  v9 = listenerCopy;
  value = v9;
  if (v9)
  {
    CFDictionarySetValue(self->_portToExtraListener, [MEMORY[0x1E696AD98] numberWithUnsignedShort:portCopy], v9);
    v9 = value;
  }

  if (cellularCopy)
  {
    if (self->_cellularPortList)
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:portCopy];

      if (v10)
      {
        cellularPortList = self->_cellularPortList;
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:portCopy];
        CFArrayAppendValue(cellularPortList, v12);
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_extraListenerForPort:(unsigned __int16)port
{
  portCopy = port;
  os_unfair_lock_lock(&self->_lock);
  if (self->_portToExtraListener)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:portCopy];
    if (v5)
    {
      portToExtraListener = self->_portToExtraListener;
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:portCopy];
      v8 = CFDictionaryGetValue(portToExtraListener, v7);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (void)_removeExtraListener:(unsigned __int16)listener
{
  listenerCopy = listener;
  os_unfair_lock_lock(&self->_lock);
  if (self->_portToExtraListener && ([MEMORY[0x1E696AD98] numberWithUnsignedShort:listenerCopy], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, v7 = self->_portToExtraListener, objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", listenerCopy), v8 = objc_claimAutoreleasedReturnValue(), listener = CFDictionaryGetValue(v7, v8), v8, v6, listener))
  {
    portToExtraListener = self->_portToExtraListener;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:listenerCopy];
    [(NSMutableDictionary *)portToExtraListener removeObjectForKey:v10];

    cellularPortList = self->_cellularPortList;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:listenerCopy];
    [(NSMutableArray *)cellularPortList removeObject:v12];

    os_unfair_lock_unlock(&self->_lock);
    nw_listener_cancel(listener);
  }

  else
  {
    v13 = self->_cellularPortList;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:listenerCopy];
    [(NSMutableArray *)v13 removeObject:v14];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_addToRecentQRServerList:(id)list
{
  listCopy = list;
  remoteEndpoint = [listCopy remoteEndpoint];
  connection = [listCopy connection];
  v6 = nw_connection_copy_connected_path();

  if (v6)
  {
    v7 = nw_path_copy_effective_remote_endpoint(v6);
  }

  else
  {
    connectionID = [listCopy connectionID];
    sub_1A7B306B4(listCopy, 2, "failed to copy path for [C%llu]", v9, v10, v11, v12, v13, connectionID);
    v7 = 0;
  }

  os_unfair_lock_lock(&self->_lock);
  sub_1A7B306B4(listCopy, 1, "adding %@ to recent QR server list %@", v14, v15, v16, v17, v18, remoteEndpoint);
  recentQRServerList = self->_recentQRServerList;
  if (recentQRServerList && remoteEndpoint)
  {
    CFArrayAppendValue(recentQRServerList, remoteEndpoint);
  }

  if (v7)
  {
    if (v7 != remoteEndpoint)
    {
      sub_1A7B306B4(listCopy, 1, "adding %@ to recent QR server list %@", v19, v20, v21, v22, v23, v7);
      v25 = self->_recentQRServerList;
      if (v25)
      {
        CFArrayAppendValue(v25, v7);
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)_shouldAllowP2PConnectionTo:(id)to anotherRemoteEndpoint:(id)endpoint
{
  v21 = *MEMORY[0x1E69E9840];
  toCopy = to;
  endpointCopy = endpoint;
  os_unfair_lock_lock(&self->_lock);
  if (self->_connectedToQR)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = self->_recentQRServerList;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if (sub_1A7B3E2CC(v13, toCopy) || endpointCopy && sub_1A7B3E2CC(v13, endpointCopy))
          {
            v14 = 0;
            goto LABEL_16;
          }
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        v14 = 1;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v14 = 1;
    }

LABEL_16:
  }

  else
  {
    v14 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v14;
}

- (void)_addUDPConnectionInProgress:(id)progress token:(id)token
{
  progressCopy = progress;
  tokenCopy = token;
  os_unfair_lock_lock(&self->_lock);
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%lld", tokenCopy, objc_msgSend(progressCopy, "connectionID")];

  v9 = [(NSMutableDictionary *)self->_tokenToPendingUDPNWLinkConnection objectForKey:v8];

  if (v9)
  {
    v10 = +[IDSFoundationLog IDSNWLink];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E12AF0();
    }
  }

  [(NSMutableDictionary *)self->_tokenToPendingUDPNWLinkConnection setObject:progressCopy forKey:v8];
  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)_doesUDPConnectionInProgressExist:(id)exist
{
  v23 = *MEMORY[0x1E69E9840];
  existCopy = exist;
  os_unfair_lock_lock(&self->_lock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  allKeys = [(NSMutableDictionary *)self->_tokenToPendingUDPNWLinkConnection allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 hasPrefix:existCopy])
        {
          v10 = [(NSMutableDictionary *)self->_tokenToPendingUDPNWLinkConnection objectForKey:v9];

          if (v10)
          {
            LODWORD(v6) = 1;
            goto LABEL_12;
          }
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v14 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  os_unfair_lock_unlock(&self->_lock);
  v11 = +[IDSFoundationLog IDSNWLink];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"NO";
    if (v6)
    {
      v12 = @"YES";
    }

    *buf = 138412546;
    v19 = existCopy;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "UDP connection %@ in progress = %@", buf, 0x16u);
  }

  return v6;
}

- (void)_removeUDPConnectionInProgress:(id)progress token:(id)token
{
  tokenCopy = token;
  progressCopy = progress;
  os_unfair_lock_lock(&self->_lock);
  v8 = MEMORY[0x1E696AEC0];
  connectionID = [progressCopy connectionID];

  v10 = [v8 stringWithFormat:@"%@-%lld", tokenCopy, connectionID];

  [(NSMutableDictionary *)self->_tokenToPendingUDPNWLinkConnection removeObjectForKey:v10];
  os_unfair_lock_unlock(&self->_lock);
}

- (id)_createNetworkInterfaceArrayWithIPVersion:(unint64_t)version wantsWiFi:(BOOL)fi wantsCellular:(BOOL)cellular
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = GLUCreateNetworkInterfaceArrayWithOptions(version, 0, fi, cellular, 0, self->_useDefaultInterfaceOnly, self->_isDefaultPairedDevice, 0, self->_cellInterfaceName);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        isCellular = [v11 isCellular];
        address = [v11 address];
        if (isCellular)
        {
          cellularPort = [(IDSNWLink *)self cellularPort];
        }

        else
        {
          cellularPort = [(IDSNWLink *)self port];
        }

        [address updateLocalPort:cellularPort];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v6;
}

- (void)logConnectionTree
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = +[IDSFoundationLog IDSNWLink];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "NWLink Connection Tree %@", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = self->_rootConnections;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(IDSNWLink *)self logConnectionSubtree:*(*(&v9 + 1) + 8 * v8++) indentation:&stru_1F1AC8480, v9];
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)logConnectionSubtree:(id)subtree indentation:(id)indentation
{
  v59 = *MEMORY[0x1E69E9840];
  subtreeCopy = subtree;
  indentationCopy = indentation;
  v8 = sub_1A7B2ED88([subtreeCopy type]);
  sessionID = [subtreeCopy sessionID];
  if (sessionID && (v10 = sessionID, [subtreeCopy sessionID], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "length"), v11, v10, v12 >= 8))
  {
    v13 = MEMORY[0x1E696AEC0];
    sessionID2 = [subtreeCopy sessionID];
    v15 = [sessionID2 substringToIndex:8];
    v35 = [v13 stringWithFormat:@" %@", v15];
  }

  else
  {
    v35 = &stru_1F1AC8480;
  }

  protocolStackDescription = [subtreeCopy protocolStackDescription];

  if (protocolStackDescription)
  {
    v17 = MEMORY[0x1E696AEC0];
    protocolStackDescription2 = [subtreeCopy protocolStackDescription];
    v19 = [v17 stringWithFormat:@" — %@", protocolStackDescription2];
  }

  else
  {
    v19 = &stru_1F1AC8480;
  }

  parent = [subtreeCopy parent];

  if (parent)
  {
    v21 = MEMORY[0x1E696AEC0];
    parent2 = [subtreeCopy parent];
    v23 = [v21 stringWithFormat:@"(C%llu)", objc_msgSend(parent2, "connectionID")];
  }

  else
  {
    v23 = &stru_1F1AC8480;
  }

  v24 = +[IDSFoundationLog IDSNWLink];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    connectionID = [subtreeCopy connectionID];
    name = [subtreeCopy name];
    localEndpoint = [subtreeCopy localEndpoint];
    remoteEndpoint = [subtreeCopy remoteEndpoint];
    *buf = 138414338;
    v42 = indentationCopy;
    v43 = 2080;
    v44 = v8;
    v45 = 2112;
    v46 = v35;
    v47 = 2048;
    v48 = connectionID;
    v49 = 2112;
    v50 = v23;
    v51 = 2112;
    v52 = name;
    v53 = 2112;
    v54 = v19;
    v55 = 2112;
    v56 = localEndpoint;
    v57 = 2112;
    v58 = remoteEndpoint;
    _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "%@ - %-3s %@ [C%llu%@] %@%@ %@/%@", buf, 0x5Cu);
  }

  indentationCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@    ", indentationCopy];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  children = [subtreeCopy children];
  v30 = [children countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v37;
    do
    {
      v33 = 0;
      do
      {
        if (*v37 != v32)
        {
          objc_enumerationMutation(children);
        }

        [(IDSNWLink *)self logConnectionSubtree:*(*(&v36 + 1) + 8 * v33++) indentation:indentationCopy];
      }

      while (v31 != v33);
      v31 = [children countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v31);
  }
}

- (id)_findListenerWithLocalEndpoint:(id)endpoint
{
  port = nw_endpoint_get_port(endpoint);
  v5 = [(IDSNWLink *)self _extraListenerForPort:port];
  if (!v5)
  {
    if (port == self->_cellularPort)
    {
      v6 = 80;
LABEL_6:
      v5 = *(&self->super.isa + v6);
      goto LABEL_8;
    }

    if (port == self->_port)
    {
      v6 = 72;
      goto LABEL_6;
    }

    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (BOOL)_isLocalEndpointCellular:(id)cellular
{
  port = nw_endpoint_get_port(cellular);
  os_unfair_lock_lock(&self->_lock);
  if (port == self->_cellularPort)
  {
    v5 = 1;
  }

  else
  {
    cellularPortList = self->_cellularPortList;
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:port];
    v5 = [(NSMutableArray *)cellularPortList containsObject:v7];
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (IDSLinkDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (IDSLinkDelegate)alternateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_alternateDelegate);

  return WeakRetained;
}

@end