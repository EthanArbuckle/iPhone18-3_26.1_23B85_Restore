@interface IDSGFTGL
- (BOOL)_IsExtIPDiscoveryNeeded:(sockaddr *)a3 candidatePairList:(id)a4;
- (BOOL)_postProcessAllocbindResponse:(id)a3 candidatePair:(id)a4 candidatePairToken:(id)a5;
- (BOOL)_postProcessQUICAllocbindResponse:(id)a3 candidatePair:(id)a4;
- (BOOL)_processRegisterAckResponse:(id)a3 candidatePairToken:(id)a4;
- (BOOL)_processRegisterIndication:(id)a3 candidatePairToken:(id)a4;
- (BOOL)_processRegisterResponse:(id)a3 candidatePairToken:(id)a4;
- (BOOL)_processReliableUnicastRegistrationErrorResponse:(id)a3 packetBuffer:(id *)a4 startTime:(double)a5 candidatePair:(id)a6;
- (BOOL)_processRemovedLocalAddressList:(id)a3;
- (BOOL)_sendCallModeUpdateToQR;
- (BOOL)_setupNewQRLinkIfNecessary:(id)a3;
- (id)_findVirtualCandidatePair:(id)a3;
- (id)_virtualCandidatePairFromLocalLinkID:(unsigned __int16)a3 remoteRelayLinkID:(unsigned __int16)a4;
- (void)_checkIfQRLinkIsDownButP2PLinkIsUp;
- (void)_destroyVirtualRelayLinksForCandidatePair:(id)a3 withReason:(unsigned __int8)a4;
- (void)_disableE2E;
- (void)_discardCandidatePairsWithOption:(BOOL)a3 isReinitiating:(BOOL)a4;
- (void)_discardKeyMaterialMessage:(int64_t)a3;
- (void)_enableE2E;
- (void)_processCommandRelayInterfaceInfo:(id)a3 candidatePairToken:(id)a4;
- (void)_processReceivedRemoteCandidatePairs:(id)a3;
- (void)_sendConnectionDataWithRemovedAddressList:(id)a3;
- (void)_sendQUICRegisterAckRequest:(id)a3 withOptions:(id)a4;
- (void)_sendQUICRegisterRequest:(id)a3 withOptions:(id)a4;
- (void)_sendRegisterRequest:(id)a3;
- (void)_sendRelayInterfaceInfo:(id)a3;
- (void)_setupVirtualCandidatePairs:(id)a3 remoteCandidatePair:(id)a4;
- (void)didReceiveProtobufPacketForLinkID:(unsigned __int8)a3;
- (void)disconnectWithCompletionHandler:(id)a3 isReinitiating:(BOOL)a4;
- (void)enableUPlusOneSessionForTransition:(BOOL)a3;
- (void)invalidate;
- (void)manageDesignatedDestinations:(id)a3 relayGroupID:(id)a4 withType:(unsigned __int16)a5 sessionStateCounter:(unsigned int)a6 withClientContextBlob:(id)a7 identifier:(unint64_t)a8;
- (void)receiveJoinNotificationFromAParticipant;
- (void)removeParticipantIDs:(id)a3 relayGroupID:(id)a4 sessionStateCounter:(unsigned int)a5;
- (void)reportLinkMetricsForLinkID:(unsigned __int8)a3 lastPacketReceivedTime:(double)a4 lastPacketSentTime:(double)a5;
- (void)sendKeyMaterialMessageData:(id)a3 relayGroupID:(id)a4 destinationURIs:(id)a5 completionHandler:(id)a6;
- (void)setAllowP2P:(BOOL)a3;
- (void)setCellInterfaceName:(id)a3;
- (void)setDefaultUnderlyingLink:(char)a3;
- (void)setIsUPlusOneSession:(BOOL)a3;
- (void)setParticipantType:(unsigned __int16)a3 relayGroupID:(id)a4 sessionStateCounter:(unsigned int)a5 withClientContextBlob:(id)a6 identifier:(unint64_t)a7;
- (void)setPluginCache:(id)a3;
- (void)startWithOptions:(id)a3;
- (void)updateURIToParticipantIDs:(id)a3 relaySessionID:(id)a4 sessionInfo:(id)a5;
@end

@implementation IDSGFTGL

- (void)startWithOptions:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSFoundationLog GFTGL];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    idsSessionID = self->super._idsSessionID;
    *buf = 138412546;
    v26 = self;
    v27 = 2112;
    v28 = idsSessionID;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "Start GL %@ for IDSSessionID: %@ (FaceTime:YES, isMultiway:YES).", buf, 0x16u);
  }

  Value = 0;
  if (v4 && @"gl-option-timebase")
  {
    Value = CFDictionaryGetValue(v4, @"gl-option-timebase");
  }

  objc_storeStrong(&self->super._timeBase, Value);
  self->super._startPort = 16393;
  self->super._portRange = 10;
  v24.receiver = self;
  v24.super_class = IDSGFTGL;
  [(IDSGlobalLink *)&v24 startWithOptions:v4];
  if (self->super._isUPlusOneSession)
  {
    v8 = IMGetDomainBoolForKeyWithDefaultValue();
    self->super._allowP2P = v8 ^ 1;
    if (((v8 ^ 1) & 1) == 0)
    {
      v9 = +[IDSFoundationLog GFTGL];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "disableP2PLinks default is set to YES.", buf, 2u);
      }
    }

    v10 = 0;
    if (v4 && @"gl-option-disable-p2p")
    {
      v10 = CFDictionaryGetValue(v4, @"gl-option-disable-p2p");
    }

    if (([v10 BOOLValue] & 1) != 0 || self->super._isReliableUnicastSession)
    {
      [(IDSNWLink *)self->super._nwLink setDisableP2P:1];
      self->super._allowP2P = 0;
      self->_allowE2E = 1;
      v11 = +[IDSFoundationLog GFTGL];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        isReliableUnicastSession = self->super._isReliableUnicastSession;
        if (self->super._allowP2P)
        {
          v13 = @"YES";
        }

        else
        {
          v13 = @"NO";
        }

        if (self->_allowE2E)
        {
          v14 = @"YES";
        }

        else
        {
          v14 = @"NO";
        }

        *buf = 138412802;
        v26 = v13;
        if (isReliableUnicastSession)
        {
          v15 = @"YES";
        }

        else
        {
          v15 = @"NO";
        }

        v27 = 2112;
        v28 = v14;
        v29 = 2112;
        v30 = v15;
        _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "disableP2PLinks is set to YES; _allowP2P = %@, _allowE2E = %@, _isReliableUnicastSession: %@", buf, 0x20u);
      }

      if (self->super._isReliableUnicastSession)
      {
        if (!self->_reliableUnicastServerMaterialToProtoMessageTransactionID)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          reliableUnicastServerMaterialToProtoMessageTransactionID = self->_reliableUnicastServerMaterialToProtoMessageTransactionID;
          self->_reliableUnicastServerMaterialToProtoMessageTransactionID = Mutable;
        }

        self->super._receivedRemoteDeviceVersion = 1;
        v18 = +[IDSFoundationLog GFTGL];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = @"NO";
          receivedRemoteDeviceVersion = self->super._receivedRemoteDeviceVersion;
          if (self->super._allowP2P)
          {
            v21 = @"YES";
          }

          else
          {
            v21 = @"NO";
          }

          if (self->_allowE2E)
          {
            v22 = @"YES";
          }

          else
          {
            v22 = @"NO";
          }

          *buf = 138412802;
          v26 = v21;
          if (receivedRemoteDeviceVersion)
          {
            v19 = @"YES";
          }

          v27 = 2112;
          v28 = v22;
          v29 = 2112;
          v30 = v19;
          _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "Enabled Reliable Unicast Session - _allowP2P = %@, _allowE2E = %@, _receivedRemoteDeviceVersion = %@", buf, 0x20u);
        }
      }
    }

    self->super._useSecureControlMessage = 1;
    v23 = +[IDSFoundationLog GFTGL];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_DEFAULT, "Enable secure control message for U + 1 Session.", buf, 2u);
    }
  }

  else
  {
    self->super._allowP2P = 0;
  }

  self->super._allowOnlyOneQR = 0;
  self->super._enableSKE = 0;
  self->super._allowConcurrentQRSetup = 1;
  self->super._shouldProcessBasebandNotification = 1;
  self->super._supportChannelData = 1;
  self->_keyMaterialDataCounter = -1;
}

- (void)invalidate
{
  remoteCandidatePairs = self->_remoteCandidatePairs;
  self->_remoteCandidatePairs = 0;

  virtualCandidatePairs = self->_virtualCandidatePairs;
  self->_virtualCandidatePairs = 0;

  localRemoteRelayLinkIDToVirtualCandidatePairs = self->super._localRemoteRelayLinkIDToVirtualCandidatePairs;
  self->super._localRemoteRelayLinkIDToVirtualCandidatePairs = 0;

  v6.receiver = self;
  v6.super_class = IDSGFTGL;
  [(IDSGlobalLink *)&v6 invalidate];
}

- (void)disconnectWithCompletionHandler:(id)a3 isReinitiating:(BOOL)a4
{
  v4 = a4;
  v6.receiver = self;
  v6.super_class = IDSGFTGL;
  [(IDSGlobalLink *)&v6 disconnectWithCompletionHandler:a3 isReinitiating:?];
  [(IDSGlobalLink *)self _handleDisconnect:v4];
}

- (void)setDefaultUnderlyingLink:(char)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (!self->super._isUPlusOneSession)
  {
    p_super = +[IDSFoundationLog GFTGL];
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    LOWORD(v12) = 0;
    v8 = "setDefaultUnderlyingLink not allowed when not in U+1 mode";
    v9 = p_super;
    v10 = 2;
LABEL_16:
    _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, v8, &v12, v10);
    goto LABEL_17;
  }

  v3 = a3;
  if (!self->super._isInitiator)
  {
    p_super = +[IDSFoundationLog GFTGL];
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    if (self->super._isInitiator)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v12 = 67109378;
    v13 = v3;
    v14 = 2112;
    v15 = v11;
    v8 = "set default underlying link (linkID:%d) failed (isInitiator:%@).";
    v9 = p_super;
    v10 = 18;
    goto LABEL_16;
  }

  if (a3 < 0 || self->super._maxLinkID <= a3 || (v5 = self->super._candidatePairs[a3]) == 0)
  {
    p_super = +[IDSFoundationLog GFTGL];
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v12 = 67109120;
    v13 = v3;
    v8 = "failed to find candidate pair for linkID:%d.";
    v9 = p_super;
    v10 = 8;
    goto LABEL_16;
  }

  p_super = &v5->super;
  v7 = [(IDSStunCandidatePair *)v5 candidatePairToken];
  [(IDSGlobalLink *)self _nominateCandidatePair:v7];

LABEL_17:
}

- (void)_setupVirtualCandidatePairs:(id)a3 remoteCandidatePair:(id)a4
{
  v94 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 relayLinkID];
  v83 = [v7 relayLinkID];
  v9 = [v6 sessionID];
  v10 = [v7 sessionID];
  v11 = [v9 isEqualToString:v10];

  if (v11)
  {
    v81 = self;
    v82 = v7;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v12 = self->_virtualCandidatePairs;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v85 objects:v89 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v86;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v86 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v85 + 1) + 8 * i);
          v18 = [v17 sessionID];
          v19 = v6;
          v20 = [v6 sessionID];
          if ([v18 isEqualToString:v20] && -[NSObject relayLinkID](v17, "relayLinkID") == v8)
          {
            v21 = v12;
            v22 = [v17 remoteRelayLinkID];

            v23 = v22 == v83;
            v12 = v21;
            if (v23)
            {
              v41 = +[IDSFoundationLog GFTGL];
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v91 = v17;
                _os_log_impl(&dword_1A7AD9000, v41, OS_LOG_TYPE_DEFAULT, "[U+1] Virtual candidate pair exists %@, no need to set up virtual candidate pairs, return", buf, 0xCu);
              }

              v7 = v82;
              p_super = &v21->super.super;
              v6 = v19;
              goto LABEL_42;
            }
          }

          else
          {
          }

          v6 = v19;
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v85 objects:v89 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v24 = [v6 local];
    v25 = [v82 remote];
    v26 = [v6 sessionID];
    v27 = [IDSStunCandidatePair candidatePairWithLocalCandidate:v24 remoteCandidate:v25 sessionID:v26 delegate:v81];

    [v27 setIsNAT64:{objc_msgSend(v6, "isNAT64")}];
    [v27 setState:4];
    [v27 setRelayLinkID:v8];
    [v27 setRemoteRelayLinkID:v83];
    [v27 setLinkUUIDWithRelayLinkIDs];
    [v27 setDelegatedLinkID:{objc_msgSend(v6, "linkID")}];
    [v27 setChannelNumber:{objc_msgSend(v6, "channelNumber")}];
    [v27 setRelayProviderType:2];
    [v27 setServerIsDegraded:{objc_msgSend(v6, "serverIsDegraded")}];
    v28 = [v27 remote];
    v29 = [v6 remote];
    v30 = [v29 address];
    v31 = [v6 remote];
    [v28 setAddress:v30 external:{objc_msgSend(v31, "external")}];

    virtualCandidatePairs = v81->_virtualCandidatePairs;
    if (!virtualCandidatePairs)
    {
      v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v34 = v81->_virtualCandidatePairs;
      v81->_virtualCandidatePairs = v33;

      virtualCandidatePairs = v81->_virtualCandidatePairs;
    }

    if (virtualCandidatePairs && v27)
    {
      CFArrayAppendValue(virtualCandidatePairs, v27);
    }

    v35 = localRemoteRelayLinkIDForVirtualStunCandidatePair([v6 relayLinkID], objc_msgSend(v82, "relayLinkID"));
    if (!v81->super._localRemoteRelayLinkIDToVirtualCandidatePairs)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      localRemoteRelayLinkIDToVirtualCandidatePairs = v81->super._localRemoteRelayLinkIDToVirtualCandidatePairs;
      v81->super._localRemoteRelayLinkIDToVirtualCandidatePairs = Mutable;
    }

    p_super = v27;
    if (v27)
    {
      CFDictionarySetValue(v81->super._localRemoteRelayLinkIDToVirtualCandidatePairs, v35, p_super);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1AD34();
    }

    v84 = v35;

    v43 = +[IDSFoundationLog GFTGL];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v91 = p_super;
      _os_log_impl(&dword_1A7AD9000, v43, OS_LOG_TYPE_DEFAULT, "[U+1] set up virtual candidate pair: %@", buf, 0xCu);
    }

    nwLink = v81->super._nwLink;
    v44 = [p_super local];
    v45 = [v44 address];
    v46 = [p_super remote];
    v47 = [v46 external];
    v48 = [p_super sessionID];
    v49 = [p_super kindSuffix];
    v50 = [p_super local];
    LOBYTE(v77) = [v50 isCellularStunCandidate];
    v80 = [(IDSNWLink *)nwLink connectionInfoForLocalAddress:v45 remoteAddress:v47 clientUniquePID:0 sessionID:v48 type:7 isRelay:1 protocolStackSuffix:v49 isCellular:v77];

    v51 = v81->super._nwLink;
    v52 = [p_super local];
    v53 = [v52 address];
    v54 = [p_super remote];
    v55 = [v54 external];
    v56 = [p_super sessionID];
    v57 = [p_super kindSuffix];
    v58 = [p_super local];
    LOBYTE(v78) = [v58 isCellularStunCandidate];
    v59 = [(IDSNWLink *)v51 connectionInfoForLocalAddress:v53 remoteAddress:v55 clientUniquePID:0 sessionID:v56 type:0 isRelay:1 protocolStackSuffix:v57 isCellular:v78];

    v60 = GLUtilConnectionDictionaryForNWConnectionInfo(v59, 1);
    v61 = [p_super connections];
    [v61 setObject:v60 forKeyedSubscript:@"udp"];

    v62 = GLUtilConnectionDictionaryForNWConnectionInfo(v80, v81->super._allowTLEOverVRLinks);
    v63 = [p_super connections];
    [v63 setObject:v62 forKeyedSubscript:@"qpod"];

    v64 = [v6 linkEngine];

    if (v64)
    {
      v65 = +[IDSFoundationLog GFTGL];
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v65, OS_LOG_TYPE_DEFAULT, "giving virtual candidate pair to LinkEngine", buf, 2u);
      }

      v66 = [v6 linkEngine];
      v67 = [v66 addLinkForCandidatePair:p_super];

      if (v67)
      {
        v68 = [v6 linkEngine];
        [p_super setLinkEngine:v68];

        [p_super setLinkUniqueName:v67];
        v69 = [v6 linkEngine];
        [v69 linkDidConnect:v67];
      }

      if (v81->super._useLinkSelection)
      {
        v70 = [p_super linkEngine];
        v71 = [p_super testableLink];
        v72 = [p_super linkUniqueName];
        [v70 setTestableLink:v71 forLinkWithUniqueID:v72];

        v73 = [p_super linkEngine];
        v74 = [p_super linkUniqueName];
        v75 = [v73 packetQualityHandlerForLinkWithUniqueName:v74];
        [p_super setQualityHandler:v75];
      }
    }

    [(IDSGlobalLink *)v81 _setCandidatePairConnected:p_super];
    v76 = [p_super linkMetrics];
    [v76 virtualRelayLinkConnected];

    [(IDSGFTGL *)v81 _sendRegisterRequest:p_super];
    v7 = v82;
  }

  else
  {
    p_super = +[IDSFoundationLog GFTGL];
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [v6 sessionID];
      v40 = [v7 sessionID];
      *buf = 138412546;
      v91 = v39;
      v92 = 2112;
      v93 = v40;
      _os_log_impl(&dword_1A7AD9000, p_super, OS_LOG_TYPE_DEFAULT, "[U+1]: _setupVirtualCandidatePairs local sessionID: %@ doesn't match remote sessionID: %@, return", buf, 0x16u);
    }
  }

LABEL_42:
}

- (void)_sendRegisterRequest:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->super._isReliableUnicastSession && [v4 isVirtualRelayStunCandidatePair])
  {
    if (self->super._isReliableUnicastClient)
    {
      v6 = [v5 relayLinkID];
      if (v6)
      {
        v7 = v6;
        v8 = [v5 remoteRelayLinkID];
        if (v8)
        {
          v9 = v8;
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v11 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v7];
          [(__CFDictionary *)Mutable setObject:v11 forKeyedSubscript:@"gl-option-reliable-unicast-local-relay-id"];

          v12 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v9];
          [(__CFDictionary *)Mutable setObject:v12 forKeyedSubscript:@"gl-option-reliable-unicast-remote-relay-id"];

          v13 = [MEMORY[0x1E696AFB0] UUID];
          [(__CFDictionary *)Mutable setObject:v13 forKeyedSubscript:@"gl-option-reliable-unicast-reliable-link-uuid"];
          v14 = [v5 local];
          v15 = [v14 transport];

          if (v15 == 2)
          {
            v25[0] = MEMORY[0x1E69E9820];
            v25[1] = 3221225472;
            v25[2] = sub_1A7BF6CB8;
            v25[3] = &unk_1E77E0E18;
            v25[4] = self;
            v16 = &v26;
            v17 = v5;
            v18 = &v27;
            v26 = v17;
            v27 = Mutable;
            v19 = Mutable;
            [(IDSGlobalLink *)self _connectNWLink:v17 disconnectAfterUse:0 connectedHandler:v25];
          }

          else
          {
            v22[0] = MEMORY[0x1E69E9820];
            v22[1] = 3221225472;
            v22[2] = sub_1A7BF6D14;
            v22[3] = &unk_1E77E0E18;
            v22[4] = self;
            v16 = &v23;
            v20 = v5;
            v18 = &v24;
            v23 = v20;
            v24 = Mutable;
            v21 = Mutable;
            [(IDSGlobalLink *)self _connectNWTCPLink:v20 disconnectAfterUse:0 connectedHandler:v22];
          }
        }

        else
        {
          v13 = +[IDSFoundationLog GFTGL];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1ADC4();
          }
        }
      }

      else
      {
        v13 = +[IDSFoundationLog GFTGL];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_1A7E1AE00();
        }
      }
    }

    else
    {
      v13 = +[IDSFoundationLog GFTGL];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "Will not send register request, not a client device. Remote will kick-off registration!", buf, 2u);
      }
    }
  }
}

- (void)_sendQUICRegisterRequest:(id)a3 withOptions:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    if (self->super._state < 5)
    {
      tokenToCandidatePairs = self->super._tokenToCandidatePairs;
      if (tokenToCandidatePairs && (v12 = CFDictionaryGetValue(tokenToCandidatePairs, v6)) != 0)
      {
        v13 = v12;
        v14 = [[IDSQRProtoMessage alloc] initWithType:29 candidatePair:v12 options:v7];
        if (v14)
        {
          v15 = +[IDSFoundationLog GFTGL];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            idsSessionID = self->super._idsSessionID;
            v17 = [v13 sessionID];
            *buf = 138413314;
            v26 = @"register_request";
            v27 = 2112;
            v28 = v14;
            v29 = 2112;
            v30 = idsSessionID;
            v31 = 2112;
            v32 = v17;
            v33 = 2112;
            v34 = v6;
            _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "Send %@ %@ for IDSSessionID: %@ QRSessionID: %@ candidatePairToken: %@", buf, 0x34u);
          }

          [(IDSGlobalLink *)self _sendProtoMessage:v14 candidatePair:v13];
          [v13 addProtoRequest:{-[IDSQRProtoMessage transactionID](v14, "transactionID")}];
          if (!self->_reliableUnicastServerMaterialToProtoMessageTransactionID)
          {
            Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            reliableUnicastServerMaterialToProtoMessageTransactionID = self->_reliableUnicastServerMaterialToProtoMessageTransactionID;
            self->_reliableUnicastServerMaterialToProtoMessageTransactionID = Mutable;
          }

          v20 = [v7 copy];
          if (v20)
          {
            CFDictionarySetValue(self->_reliableUnicastServerMaterialToProtoMessageTransactionID, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSQRProtoMessage transactionID](v14, "transactionID")}], v20);
          }
        }

        else
        {
          v24 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v26 = @"register_request";
            _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "failed to create proto message (%@)!", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"GL", @"IDS", @"failed to create proto message (%@)!");
              if (_IDSShouldLog())
              {
                _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to create proto message (%@)!");
              }
            }
          }
        }
      }

      else
      {
        v21 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "Will not send register request due to invalid candidate pair!", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"Will not send register request due to invalid candidate pair!");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"Will not send register request due to invalid candidate pair!");
            }
          }
        }

        v22 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = self->super._tokenToCandidatePairs;
          *buf = 138412546;
          v26 = v6;
          v27 = 2112;
          v28 = v23;
          _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "_sendQUICRegisterRequest: Token: %@, _tokenToCandidatePairs:%@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"_sendQUICRegisterRequest: Token: %@, _tokenToCandidatePairs:%@");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"_sendQUICRegisterRequest: Token: %@, _tokenToCandidatePairs:%@");
            }
          }
        }
      }
    }

    else
    {
      v8 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = _IDSLinkStateStrings[self->super._state];
        *buf = 138412546;
        v26 = v6;
        v27 = 2080;
        v28 = v9;
        _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "Will not send register request for %@, GL state [%s]!", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"Will not send register request for %@, GL state [%s]!");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"Will not send register request for %@, GL state [%s]!");
          }
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
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "Will not send register request due to invalid candidatePairToken!", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"Will not send register request due to invalid candidatePairToken!");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"Will not send register request due to invalid candidatePairToken!");
        }
      }
    }
  }
}

- (BOOL)_processRegisterIndication:(id)a3 candidatePairToken:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a3 registerIndication];
  v8 = +[IDSFoundationLog GFTGL];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v33 = [v7 txnId];
    v34 = 2112;
    v35 = v6;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "received register-indication(%llu) for %@.", buf, 0x16u);
  }

  if (v7)
  {
    if (self->super._isReliableUnicastSession)
    {
      v9 = [v7 e2eChannelUuid];
      if (!v9)
      {
        v10 = +[IDSFoundationLog GFTGL];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "processRegisterIndication failed due to invalid channelUUDData!", buf, 2u);
        }

        v23 = 0;
        goto LABEL_44;
      }

      v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{-[NSObject bytes](v9, "bytes")}];
      if (!v10)
      {
        v11 = +[IDSFoundationLog GFTGL];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "processRegisterIndication failed due to invalid reliableLinkUUID!", buf, 2u);
        }

        v23 = 0;
        goto LABEL_43;
      }

      v11 = [v7 virtualQuicClientConnectionId];
      if (!v11)
      {
        v12 = +[IDSFoundationLog GFTGL];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "processRegisterIndication failed due to invalid virtualConnectionID!", buf, 2u);
        }

        v23 = 0;
        goto LABEL_42;
      }

      v12 = [v7 channelInfo];
      v13 = [v12 quicServerConnectionId];
      if (!v13)
      {
        v14 = +[IDSFoundationLog GFTGL];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "processRegisterIndication failed due to invalid local connection ID!", buf, 2u);
        }

        v23 = 0;
        goto LABEL_41;
      }

      v14 = [v12 quicClientConnectionId];
      if (!v14)
      {
        v22 = +[IDSFoundationLog GFTGL];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "processRegisterIndication failed due to invalid remote connection ID!", buf, 2u);
        }

        v23 = 0;
        goto LABEL_40;
      }

      v28 = v13;
      v15 = [v12 quicServerLinkId];
      if (v15)
      {
        v16 = v15;
        v17 = [v12 quicClientLinkId];
        if (v17)
        {
          v27 = v17;
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          [(__CFDictionary *)Mutable setObject:v28 forKeyedSubscript:@"gl-option-reliable-unicast-local-connection-id"];
          [(__CFDictionary *)Mutable setObject:v14 forKeyedSubscript:@"gl-option-reliable-unicast-remote-connection-id"];
          v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v16];
          [(__CFDictionary *)Mutable setObject:v19 forKeyedSubscript:@"gl-option-reliable-unicast-local-relay-id"];

          v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v27];
          [(__CFDictionary *)Mutable setObject:v20 forKeyedSubscript:@"gl-option-reliable-unicast-remote-relay-id"];

          [(__CFDictionary *)Mutable setObject:v11 forKeyedSubscript:@"gl-option-reliable-unicast-virtual-connection-id"];
          [(__CFDictionary *)Mutable setObject:v10 forKeyedSubscript:@"gl-option-reliable-unicast-reliable-link-uuid"];
          v21 = im_primary_queue();
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_1A7BF79FC;
          block[3] = &unk_1E77E0E18;
          block[4] = self;
          v30 = v6;
          v31 = Mutable;
          v22 = Mutable;
          dispatch_async(v21, block);

          v13 = v28;
          v23 = 1;
LABEL_40:

LABEL_41:
LABEL_42:

LABEL_43:
LABEL_44:

          goto LABEL_45;
        }

        v22 = +[IDSFoundationLog GFTGL];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v25 = "processRegisterIndication failed due to invalid remote relay link ID!";
          goto LABEL_38;
        }
      }

      else
      {
        v22 = +[IDSFoundationLog GFTGL];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v25 = "processRegisterIndication failed due to invalid local relay link ID!";
LABEL_38:
          _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, v25, buf, 2u);
        }
      }

      v23 = 0;
      v13 = v28;
      goto LABEL_40;
    }

    v9 = +[IDSFoundationLog GFTGL];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v24 = "processRegisterIndication failed, not a Reliable Unicast Session!";
      goto LABEL_17;
    }
  }

  else
  {
    v9 = +[IDSFoundationLog GFTGL];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v24 = "processRegisterIndication failed due to invalid registerIndication!";
LABEL_17:
      _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, v24, buf, 2u);
    }
  }

  v23 = 0;
LABEL_45:

  return v23;
}

- (void)_sendQUICRegisterAckRequest:(id)a3 withOptions:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      if (self->super._state < 5)
      {
        tokenToCandidatePairs = self->super._tokenToCandidatePairs;
        if (tokenToCandidatePairs && (v14 = CFDictionaryGetValue(tokenToCandidatePairs, v6)) != 0)
        {
          v15 = v14;
          v16 = [[IDSQRProtoMessage alloc] initWithType:32 candidatePair:v14 options:v8];
          if (v16)
          {
            v17 = +[IDSFoundationLog GFTGL];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              idsSessionID = self->super._idsSessionID;
              v19 = [v15 sessionID];
              *buf = 138413314;
              v26 = @"registerAck_request";
              v27 = 2112;
              v28 = v16;
              v29 = 2112;
              v30 = idsSessionID;
              v31 = 2112;
              v32 = v19;
              v33 = 2112;
              v34 = v6;
              _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "Send %@ %@ for IDSSessionID: %@ QRSessionID: %@ candidatePairToken: %@", buf, 0x34u);
            }

            [(IDSGlobalLink *)self _sendProtoMessage:v16 candidatePair:v15];
            [v15 addProtoRequest:{-[IDSQRProtoMessage transactionID](v16, "transactionID")}];
            if (!self->_reliableUnicastServerMaterialToProtoMessageTransactionID)
            {
              Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              reliableUnicastServerMaterialToProtoMessageTransactionID = self->_reliableUnicastServerMaterialToProtoMessageTransactionID;
              self->_reliableUnicastServerMaterialToProtoMessageTransactionID = Mutable;
            }

            v22 = [v8 copy];
            if (v22)
            {
              CFDictionarySetValue(self->_reliableUnicastServerMaterialToProtoMessageTransactionID, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSQRProtoMessage transactionID](v16, "transactionID")}], v22);
            }
          }

          else
          {
            v24 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v26 = @"registerAck_request";
              _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "failed to create proto message (%@).", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"GL", @"IDS", @"failed to create proto message (%@).");
                if (_IDSShouldLog())
                {
                  _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to create proto message (%@).");
                }
              }
            }
          }
        }

        else
        {
          v23 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_DEFAULT, "Will not send register ack request due to invalid candidatePair!", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"GL", @"IDS", @"Will not send register ack request due to invalid candidatePair!");
              if (_IDSShouldLog())
              {
                _IDSLogV(0, @"IDSFoundation", @"GL", @"Will not send register ack request due to invalid candidatePair!");
              }
            }
          }
        }
      }

      else
      {
        v9 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = _IDSLinkStateStrings[self->super._state];
          *buf = 138412546;
          v26 = v6;
          v27 = 2080;
          v28 = v10;
          _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "Will not send register ack request for %@, GL state [%s]!", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"Will not send register ack request for %@, GL state [%s]!");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"Will not send register ack request for %@, GL state [%s]!");
            }
          }
        }
      }
    }

    else
    {
      v12 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "Will not send register ack request due to invalid options!", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"Will not send register ack request due to invalid options!");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"Will not send register ack request due to invalid options!");
          }
        }
      }
    }
  }

  else
  {
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "Will not send register ack request due to invalid candidatePairToken!", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"Will not send register ack request due to invalid candidatePairToken!");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"Will not send register ack request due to invalid candidatePairToken!");
        }
      }
    }
  }
}

- (BOOL)_processRegisterAckResponse:(id)a3 candidatePairToken:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[IDSFoundationLog GFTGL];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v46 = [v6 transactionID];
    v47 = 2112;
    v48 = v7;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "received registerAck-response(%llu) for %@.", buf, 0x16u);
  }

  if (v7)
  {
    if (self->_reliableUnicastServerMaterialToProtoMessageTransactionID)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v6, "transactionID")}];
      if (v9)
      {
        reliableUnicastServerMaterialToProtoMessageTransactionID = self->_reliableUnicastServerMaterialToProtoMessageTransactionID;
        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v6, "transactionID")}];
        v12 = [CFDictionaryGetValue(reliableUnicastServerMaterialToProtoMessageTransactionID v11)];
      }

      else
      {
        v12 = [0 mutableCopy];
      }

      if (!v12)
      {
        v34 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v34, OS_LOG_TYPE_DEFAULT, "processRegisterAckResponse failed due to invalid options!", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"processRegisterAckResponse failed due to invalid options!");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"processRegisterAckResponse failed due to invalid options!");
            }
          }
        }

        v15 = 0;
        goto LABEL_61;
      }

      v44 = [v12 objectForKeyedSubscript:@"gl-option-reliable-unicast-local-connection-id"];
      if (v44)
      {
        v16 = [v12 objectForKeyedSubscript:@"gl-option-reliable-unicast-local-relay-id"];
        v17 = [v16 unsignedIntValue];

        if (v17)
        {
          v18 = [v12 objectForKeyedSubscript:@"gl-option-reliable-unicast-remote-relay-id"];
          v19 = [v18 unsignedIntValue];

          if (v19)
          {
            v20 = [(IDSGFTGL *)self _virtualCandidatePairFromLocalLinkID:v17 remoteRelayLinkID:v19];
            v21 = v20;
            v15 = v20 != 0;
            if (v20)
            {
              v22 = [v20 remote];
              v23 = [v22 radioAccessTechnology];

              v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v23];
              if (v24)
              {
                CFDictionarySetValue(v12, @"gl-option-reliable-unicast-remote-type", v24);
              }

              nwLink = self->super._nwLink;
              v43 = [v21 local];
              v40 = [v43 address];
              v42 = [v21 remote];
              v25 = [v42 external];
              v26 = [v21 sessionID];
              v27 = [v21 kindSuffix];
              v28 = [v21 local];
              LOBYTE(v39) = [v28 isCellularStunCandidate];
              v29 = [(IDSNWLink *)nwLink connectionInfoForLocalAddress:v40 remoteAddress:v25 clientUniquePID:0 sessionID:v26 type:5 isRelay:1 protocolStackSuffix:v27 isCellular:v39];

              v30 = [v29 connection];
              if (v30)
              {
                CFDictionarySetValue(v12, @"gl-option-reliable-unicast-parent-connection", v30);
              }

              WeakRetained = objc_loadWeakRetained(&self->super._delegate);
              v32 = objc_opt_respondsToSelector();

              if (v32)
              {
                v33 = objc_loadWeakRetained(&self->super._delegate);
                [v33 link:self didReceiveReliableUnicastServerMaterial:v12];
              }
            }

            else
            {
              v37 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1A7AD9000, v37, OS_LOG_TYPE_DEFAULT, "processRegisterAckResponse failed due to invalid candidatePair!", buf, 2u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  _IDSLogTransport(@"GL", @"IDS", @"processRegisterAckResponse failed due to invalid candidatePair!");
                  if (_IDSShouldLog())
                  {
                    _IDSLogV(0, @"IDSFoundation", @"GL", @"processRegisterAckResponse failed due to invalid candidatePair!");
                  }
                }
              }
            }

            goto LABEL_60;
          }

          v36 = +[IDSFoundationLog GFTGL];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1AE3C();
          }
        }

        else
        {
          v36 = +[IDSFoundationLog GFTGL];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1AE78();
          }
        }
      }

      else
      {
        v35 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v35, OS_LOG_TYPE_DEFAULT, "processRegisterAckResponse failed due to invalid localConnectionID!", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"processRegisterAckResponse failed due to invalid localConnectionID!");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"processRegisterAckResponse failed due to invalid localConnectionID!");
            }
          }
        }
      }

      v15 = 0;
LABEL_60:

LABEL_61:
      goto LABEL_62;
    }

    v14 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "processRegisterAckResponse failed due to invalid _reliableUnicastServerMaterialToProtoMessageTransactionID!", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"processRegisterAckResponse failed due to invalid _reliableUnicastServerMaterialToProtoMessageTransactionID!");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"processRegisterAckResponse failed due to invalid _reliableUnicastServerMaterialToProtoMessageTransactionID!");
        }
      }
    }
  }

  else
  {
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "processRegisterAckResponse failed due to invalid candidatePairToken!", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"processRegisterAckResponse failed due to invalid candidatePairToken!");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"processRegisterAckResponse failed due to invalid candidatePairToken!");
        }
      }
    }
  }

  v15 = 0;
LABEL_62:

  return v15;
}

- (BOOL)_processRegisterResponse:(id)a3 candidatePairToken:(id)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 registerResponse];
  v9 = +[IDSFoundationLog GFTGL];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v50 = [v6 transactionID];
    v51 = 2112;
    v52 = v7;
    _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "received register-response(%llu) for %@.", buf, 0x16u);
  }

  if (v8)
  {
    v10 = [v8 channelInfo];
    if (self->_reliableUnicastServerMaterialToProtoMessageTransactionID)
    {
      v11 = v7;
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v6, "transactionID")}];
      if (v12)
      {
        reliableUnicastServerMaterialToProtoMessageTransactionID = self->_reliableUnicastServerMaterialToProtoMessageTransactionID;
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v6, "transactionID")}];
        v15 = [CFDictionaryGetValue(reliableUnicastServerMaterialToProtoMessageTransactionID v14)];
      }

      else
      {
        v15 = [0 mutableCopy];
      }

      v7 = v11;
      if (v15)
      {
LABEL_16:
        v17 = [v10 quicClientConnectionId];
        if (!v17)
        {
          v48 = +[IDSFoundationLog GFTGL];
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1AEF0();
          }

          v16 = 0;
          goto LABEL_45;
        }

        CFDictionarySetValue(v15, @"gl-option-reliable-unicast-local-connection-id", v17);
        v18 = [v10 quicServerConnectionId];
        v48 = v18;
        if (!v18)
        {
          v25 = +[IDSFoundationLog GFTGL];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1AEB4();
          }

          v16 = 0;
          goto LABEL_44;
        }

        v47 = v7;
        CFDictionarySetValue(v15, @"gl-option-reliable-unicast-remote-connection-id", v18);
        v19 = [(__CFDictionary *)v15 copy];
        if (v19)
        {
          CFDictionarySetValue(self->_reliableUnicastServerMaterialToProtoMessageTransactionID, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v6, "transactionID")}], v19);
        }

        v20 = [(__CFDictionary *)v15 objectForKeyedSubscript:@"gl-option-reliable-unicast-local-relay-id"];
        v21 = [v20 unsignedIntValue];

        if (v21)
        {
          v22 = [(__CFDictionary *)v15 objectForKeyedSubscript:@"gl-option-reliable-unicast-remote-relay-id"];
          v23 = [v22 unsignedIntValue];

          if (v23)
          {
            v24 = [(IDSGFTGL *)self _virtualCandidatePairFromLocalLinkID:v21 remoteRelayLinkID:v23];
            v25 = v24;
            v16 = v24 != 0;
            if (v24)
            {
              v26 = [v24 remote];
              v27 = [v26 radioAccessTechnology];

              v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v27];
              if (v28)
              {
                CFDictionarySetValue(v15, @"gl-option-reliable-unicast-remote-type", v28);
              }

              nwLink = self->super._nwLink;
              v43 = [v25 local];
              v40 = [v43 address];
              v42 = [v25 remote];
              v39 = [v42 external];
              v45 = [v25 sessionID];
              v38 = [v25 kindSuffix];
              v29 = [v25 local];
              LOBYTE(v37) = [v29 isCellularStunCandidate];
              v30 = [(IDSNWLink *)nwLink connectionInfoForLocalAddress:v40 remoteAddress:v39 clientUniquePID:0 sessionID:v45 type:5 isRelay:1 protocolStackSuffix:v38 isCellular:v37];

              v46 = v30;
              v31 = [v30 connection];
              if (v31)
              {
                CFDictionarySetValue(v15, @"gl-option-reliable-unicast-parent-connection", v31);
              }

              WeakRetained = objc_loadWeakRetained(&self->super._delegate);
              v44 = objc_opt_respondsToSelector();

              if (v44)
              {
                v33 = objc_loadWeakRetained(&self->super._delegate);
                v34 = [(__CFDictionary *)v15 copy];
                [v33 link:self didReceiveReliableUnicastServerMaterial:v34];
              }

              v35 = v46;
              v7 = v47;
            }

            else
            {
              v35 = +[IDSFoundationLog GFTGL];
              v7 = v47;
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1A7AD9000, v35, OS_LOG_TYPE_DEFAULT, "processRegisterResponse failed due to invalid candidatePair!", buf, 2u);
              }
            }

            goto LABEL_44;
          }

          v25 = +[IDSFoundationLog GFTGL];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1AE3C();
          }
        }

        else
        {
          v25 = +[IDSFoundationLog GFTGL];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1AE78();
          }
        }

        v16 = 0;
        v7 = v47;
LABEL_44:

LABEL_45:
LABEL_46:

        goto LABEL_47;
      }
    }

    else
    {
      v15 = [0 mutableCopy];
      if (v15)
      {
        goto LABEL_16;
      }
    }

    v17 = +[IDSFoundationLog GFTGL];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "processRegisterResponse failed due to invalid _reliableUnicastServerMaterialToProtoMessageTransactionID!", buf, 2u);
    }

    v16 = 0;
    goto LABEL_46;
  }

  v10 = +[IDSFoundationLog GFTGL];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "processRegisterResponse failed due to invalid registerResponse!", buf, 2u);
  }

  v16 = 0;
LABEL_47:

  return v16;
}

- (BOOL)_processReliableUnicastRegistrationErrorResponse:(id)a3 packetBuffer:(id *)a4 startTime:(double)a5 candidatePair:(id)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a6;
  var31 = a4->var31;
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", var31];
  var35_low = LOWORD(a4->var35);
  var34_low = LOWORD(a4->var34);
  if ([v10 removeProtoRequest:var31])
  {
    if ([v10 state] == 2)
    {
      v15 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v10 candidatePairToken];
        *buf = 138412546;
        *v22 = v16;
        *&v22[8] = 1024;
        *v23 = var34_low;
        _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "%@ is already in error state, ignore error response %04x.", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v19 = [v10 candidatePairToken];
          _IDSLogTransport(@"GL", @"IDS", @"%@ is already in error state, ignore error response %04x.");

          if (_IDSShouldLog())
          {
            v20 = [v10 candidatePairToken];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"%@ is already in error state, ignore error response %04x.");
          }
        }
      }
    }

    else
    {
      v17 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109890;
        *v22 = var34_low;
        *&v22[4] = 1024;
        *&v22[6] = var35_low;
        *v23 = 2112;
        *&v23[2] = v12;
        v24 = 2048;
        v25 = (ids_monotonic_time() - a5) * 1000.0;
        _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "receive error response - type(%04x) error_code(%u) txn_id(%@) after %0.3lf ms.", buf, 0x22u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          ids_monotonic_time();
          _IDSLogTransport(@"GL", @"IDS", @"receive error response - type(%04x) error_code(%u) txn_id(%@) after %0.3lf ms.");
          if (_IDSShouldLog())
          {
            ids_monotonic_time();
            _IDSLogV(0, @"IDSFoundation", @"GL", @"receive error response - type(%04x) error_code(%u) txn_id(%@) after %0.3lf ms.");
          }
        }
      }
    }
  }

  return 1;
}

- (id)_findVirtualCandidatePair:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_virtualCandidatePairs;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 candidatePairToken];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_virtualCandidatePairFromLocalLinkID:(unsigned __int16)a3 remoteRelayLinkID:(unsigned __int16)a4
{
  v5 = localRemoteRelayLinkIDForVirtualStunCandidatePair(a3, a4);
  v6 = [(NSMutableDictionary *)self->super._localRemoteRelayLinkIDToVirtualCandidatePairs objectForKey:v5];

  return v6;
}

- (void)_processReceivedRemoteCandidatePairs:(id)a3
{
  v129 = *MEMORY[0x1E69E9840];
  v76 = a3;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v82 = self;
  obj = self->_remoteCandidatePairs;
  v79 = [(NSArray *)obj countByEnumeratingWithState:&v111 objects:v128 count:16];
  if (v79)
  {
    theArray = 0;
    v74 = *v112;
    do
    {
      for (i = 0; i != v79; ++i)
      {
        if (*v112 != v74)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v111 + 1) + 8 * i);
        v6 = +[IDSFoundationLog GFTGL];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v116 = v5;
          _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "_processReceivedRemoteCandidatePairs: found existing: %@", buf, 0xCu);
        }

        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v7 = v76;
        v8 = [v7 countByEnumeratingWithState:&v107 objects:v127 count:16];
        if (v8)
        {
          v9 = *v108;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v108 != v9)
              {
                objc_enumerationMutation(v7);
              }

              v11 = *(*(&v107 + 1) + 8 * j);
              v12 = [v11 sessionID];
              v13 = [(__CFArray *)v5 sessionID];
              if ([v12 isEqualToString:v13])
              {
                v14 = [(__CFArray *)v5 relayLinkID];
                LOBYTE(v14) = v14 == [v11 relayLinkID];

                if (v14)
                {

                  goto LABEL_24;
                }
              }

              else
              {
              }
            }

            v8 = [v7 countByEnumeratingWithState:&v107 objects:v127 count:16];
          }

          while (v8);
        }

        v15 = theArray;
        if (!theArray)
        {
          v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        theArray = v15;
        if (v15 && v5)
        {
          CFArrayAppendValue(v15, v5);
        }

LABEL_24:
        ;
      }

      v79 = [(NSArray *)obj countByEnumeratingWithState:&v111 objects:v128 count:16];
    }

    while (v79);
  }

  else
  {
    theArray = 0;
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v75 = v76;
  v16 = [v75 countByEnumeratingWithState:&v103 objects:v126 count:16];
  if (v16)
  {
    v77 = 0;
    v80 = *v104;
    do
    {
      for (k = 0; k != v16; ++k)
      {
        if (*v104 != v80)
        {
          objc_enumerationMutation(v75);
        }

        v18 = *(*(&v103 + 1) + 8 * k);
        v19 = +[IDSFoundationLog GFTGL];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v116 = v18;
          _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "_processReceivedRemoteCandidatePairs: received: %@", buf, 0xCu);
        }

        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v20 = v82->_remoteCandidatePairs;
        v21 = [(NSArray *)v20 countByEnumeratingWithState:&v99 objects:v125 count:16];
        if (v21)
        {
          v22 = *v100;
          do
          {
            for (m = 0; m != v21; ++m)
            {
              if (*v100 != v22)
              {
                objc_enumerationMutation(v20);
              }

              v24 = *(*(&v99 + 1) + 8 * m);
              v25 = [(__CFArray *)v18 sessionID];
              v26 = [v24 sessionID];
              if ([v25 isEqualToString:v26])
              {
                v27 = [v24 relayLinkID];
                LOBYTE(v27) = v27 == [(__CFArray *)v18 relayLinkID];

                if (v27)
                {

                  goto LABEL_51;
                }
              }

              else
              {
              }
            }

            v21 = [(NSArray *)v20 countByEnumeratingWithState:&v99 objects:v125 count:16];
          }

          while (v21);
        }

        v28 = v77;
        if (!v77)
        {
          v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        v77 = v28;
        if (v28 && v18)
        {
          CFArrayAppendValue(v28, v18);
        }

LABEL_51:
        ;
      }

      v16 = [v75 countByEnumeratingWithState:&v103 objects:v126 count:16];
    }

    while (v16);
  }

  else
  {
    v77 = 0;
  }

  objc_storeStrong(&v82->_remoteCandidatePairs, a3);
  if (![(__CFArray *)theArray count])
  {
    v30 = 0;
    goto LABEL_94;
  }

  v29 = +[IDSFoundationLog GFTGL];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v116 = theArray;
    _os_log_impl(&dword_1A7AD9000, v29, OS_LOG_TYPE_DEFAULT, "[U+1] _processReceivedRemoteCandidatePairs: removed remote candidate pairs: %@", buf, 0xCu);
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v67 = theArray;
  v70 = [(__CFArray *)v67 countByEnumeratingWithState:&v95 objects:v124 count:16];
  if (!v70)
  {
    v30 = 0;
    goto LABEL_93;
  }

  v30 = 0;
  v69 = *v96;
  do
  {
    v31 = 0;
    do
    {
      if (*v96 != v69)
      {
        v32 = v31;
        objc_enumerationMutation(v67);
        v31 = v32;
      }

      obja = v31;
      v33 = *(*(&v95 + 1) + 8 * v31);
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v34 = v82->_virtualCandidatePairs;
      v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v91 objects:v123 count:16];
      if (v35)
      {
        v36 = *v92;
        do
        {
          for (n = 0; n != v35; ++n)
          {
            if (*v92 != v36)
            {
              objc_enumerationMutation(v34);
            }

            v38 = *(*(&v91 + 1) + 8 * n);
            v39 = [v38 remoteRelayLinkID];
            if (v39 == [v33 relayLinkID])
            {
              v40 = [v38 sessionID];
              v41 = [v33 sessionID];
              v42 = [v40 isEqualToString:v41];

              if (v42)
              {
                if (v30)
                {
                  if (!v38)
                  {
                    goto LABEL_76;
                  }
                }

                else
                {
                  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  if (!v38)
                  {
LABEL_76:
                    v43 = OSLogHandleForTransportCategory();
                    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                    {
                      v44 = [v38 candidatePairToken];
                      *buf = 138412290;
                      v116 = v44;
                      _os_log_impl(&dword_1A7AD9000, v43, OS_LOG_TYPE_DEFAULT, "[U+1] _processReceivedRemoteCandidatePairs: remove virtual candidate pair %@.", buf, 0xCu);
                    }

                    if (os_log_shim_legacy_logging_enabled())
                    {
                      if (_IDSShouldLogTransport())
                      {
                        v66 = [v38 candidatePairToken];
                        _IDSLogTransport(@"GL", @"IDS", @"[U+1] _processReceivedRemoteCandidatePairs: remove virtual candidate pair %@.");

                        if (_IDSShouldLog())
                        {
                          v66 = [v38 candidatePairToken];
                          _IDSLogV(0, @"IDSFoundation", @"GL", @"[U+1] _processReceivedRemoteCandidatePairs: remove virtual candidate pair %@.");
                        }
                      }
                    }

                    [(IDSGlobalLink *)v82 _notifyCandidatePairDisconnected:v38 withReason:2, v66];
                    v45 = localRemoteRelayLinkIDForVirtualStunCandidatePair([v38 relayLinkID], objc_msgSend(v38, "remoteRelayLinkID"));
                    if (v45)
                    {
                      localRemoteRelayLinkIDToVirtualCandidatePairs = v82->super._localRemoteRelayLinkIDToVirtualCandidatePairs;
                      if (localRemoteRelayLinkIDToVirtualCandidatePairs)
                      {
                        CFDictionaryRemoveValue(localRemoteRelayLinkIDToVirtualCandidatePairs, v45);
                      }
                    }

                    continue;
                  }
                }

                if (v30)
                {
                  CFArrayAppendValue(v30, v38);
                }

                goto LABEL_76;
              }
            }
          }

          v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v91 objects:v123 count:16];
        }

        while (v35);
      }

      v31 = obja + 1;
    }

    while (obja + 1 != v70);
    v70 = [(__CFArray *)v67 countByEnumeratingWithState:&v95 objects:v124 count:16];
  }

  while (v70);
LABEL_93:

  [(NSMutableArray *)v82->_virtualCandidatePairs removeObjectsInArray:v30];
LABEL_94:
  if ([(__CFArray *)v77 count])
  {
    v47 = +[IDSFoundationLog GFTGL];
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v116 = v77;
      _os_log_impl(&dword_1A7AD9000, v47, OS_LOG_TYPE_DEFAULT, "[U+1] _processReceivedRemoteCandidatePairs: new remote candidate pairs: %@", buf, 0xCu);
    }

    v81 = [(NSMutableDictionary *)v82->super._tokenToCandidatePairs allValues];
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    objb = v77;
    v48 = [(__CFArray *)objb countByEnumeratingWithState:&v87 objects:v122 count:16];
    if (v48)
    {
      v49 = *v88;
      do
      {
        for (ii = 0; ii != v48; ++ii)
        {
          if (*v88 != v49)
          {
            objc_enumerationMutation(objb);
          }

          v51 = *(*(&v87 + 1) + 8 * ii);
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v52 = v81;
          v53 = [v52 countByEnumeratingWithState:&v83 objects:v121 count:16];
          if (v53)
          {
            v54 = *v84;
            do
            {
              for (jj = 0; jj != v53; ++jj)
              {
                if (*v84 != v54)
                {
                  objc_enumerationMutation(v52);
                }

                v56 = *(*(&v83 + 1) + 8 * jj);
                if ([v56 isSharedQRSession] && objc_msgSend(v56, "state") == 4)
                {
                  [(IDSGFTGL *)v82 _setupVirtualCandidatePairs:v56 remoteCandidatePair:v51];
                }
              }

              v53 = [v52 countByEnumeratingWithState:&v83 objects:v121 count:16];
            }

            while (v53);
          }
        }

        v48 = [(__CFArray *)objb countByEnumeratingWithState:&v87 objects:v122 count:16];
      }

      while (v48);
    }
  }

  v57 = +[IDSFoundationLog GFTGL];
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    v58 = [(NSMutableDictionary *)v82->super._tokenToCandidatePairs allValues];
    v59 = [v58 count];
    v60 = [(NSArray *)v82->_remoteCandidatePairs count];
    v61 = [(NSMutableArray *)v82->_virtualCandidatePairs count];
    *buf = 134218496;
    v116 = v59;
    v117 = 2048;
    v118 = v60;
    v119 = 2048;
    v120 = v61;
    _os_log_impl(&dword_1A7AD9000, v57, OS_LOG_TYPE_DEFAULT, "[U+1] _processReceivedRemoteCandidatePairs: local candidate pairs: %ld, remote candidate pairs: %ld, all virtual candidate pairs: %ld", buf, 0x20u);
  }

  v62 = +[IDSFoundationLog GFTGL];
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
  {
    virtualCandidatePairs = v82->_virtualCandidatePairs;
    *buf = 138412290;
    v116 = virtualCandidatePairs;
    _os_log_impl(&dword_1A7AD9000, v62, OS_LOG_TYPE_DEFAULT, "[U+1] _processReceivedRemoteCandidatePairs: virtual candidate pairs: %@", buf, 0xCu);
  }

  v64 = +[IDSFoundationLog GFTGL];
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    v65 = v82->super._localRemoteRelayLinkIDToVirtualCandidatePairs;
    *buf = 138412290;
    v116 = v65;
    _os_log_impl(&dword_1A7AD9000, v64, OS_LOG_TYPE_DEFAULT, "[U+1] _processReceivedRemoteCandidatePairs: localRemoteRelayLinkID map: %@", buf, 0xCu);
  }
}

- (void)_processCommandRelayInterfaceInfo:(id)a3 candidatePairToken:(id)a4
{
  v134 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 command];
  if (self->super._isUPlusOneSession)
  {
    if (self->super._receivedRemoteDeviceVersion)
    {
      if (!v7 || (v9 = v8, (tokenToCandidatePairs = self->super._tokenToCandidatePairs) == 0) || (v11 = CFDictionaryGetValue(tokenToCandidatePairs, v7)) == 0)
      {
        v28 = +[IDSFoundationLog GFTGL];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v28, OS_LOG_TYPE_DEFAULT, "[U+1] failed to find candidate pair.", buf, 2u);
        }

        goto LABEL_158;
      }

      v93 = v11;
      v117 = 0;
      v116 = 0;
      if (GLUtilHasValidUInt16Attr(v6, 12, &v117) && self->super._remoteCapabilityFlag != v117)
      {
        self->super._remoteCapabilityFlag = v117;
        v12 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          remoteCapabilityFlag_low = LOWORD(self->super._remoteCapabilityFlag);
          *buf = 67109120;
          *&buf[4] = remoteCapabilityFlag_low;
          _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "update remote capability: %04X.", buf, 8u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v84 = LOWORD(self->super._remoteCapabilityFlag);
            _IDSLogTransport(@"GL", @"IDS", @"update remote capability: %04X.");
            if (_IDSShouldLog())
            {
              v84 = LOWORD(self->super._remoteCapabilityFlag);
              _IDSLogV(0, @"IDSFoundation", @"GL", @"update remote capability: %04X.");
            }
          }
        }
      }

      if (self->super._isInitiator && !self->super._acceptDelayU32 && GLUtilHasValidUInt32Attr(v6, 7, &v116))
      {
        v14 = v116;
        self->super._acceptDelayU32 = v116;
        v15 = vcvtd_n_f64_u32(v14, 0x10uLL) + HIWORD(v14);
        v16 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          acceptDelayU32 = self->super._acceptDelayU32;
          *buf = 67109376;
          *&buf[4] = acceptDelayU32;
          *&buf[8] = 2048;
          *&buf[10] = v15;
          _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "receive accept delay: %08x/%.6f", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v85 = v15;
            v84 = self->super._acceptDelayU32;
            _IDSLogTransport(@"GL", @"IDS", @"receive accept delay: %08x/%.6f");
            if (_IDSShouldLog())
            {
              v85 = v15;
              v84 = self->super._acceptDelayU32;
              _IDSLogV(0, @"IDSFoundation", @"GL", @"receive accept delay: %08x/%.6f");
            }
          }
        }
      }

      v115 = 0;
      if (GLUtilHasValidUInt16Attr(v6, 1, &v115))
      {
        if (v9 != 32774)
        {
          if (v9 != 6)
          {
LABEL_157:
            v28 = v93;
LABEL_158:

            goto LABEL_159;
          }

          if (!self->super._isUPlusOneSession)
          {
            [(IDSGFTGL *)self enableUPlusOneSessionForTransition:1];
          }

          v18 = MEMORY[0x1E695DF20];
          v19 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{v115, v84, *&v85}];
          v91 = [v18 dictionaryWithObject:v19 forKey:@"gl-attr-counter"];

          v20 = +[IDSFoundationLog GFTGL];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109378;
            *&buf[4] = v115;
            *&buf[8] = 2112;
            *&buf[10] = v7;
            _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "[U+1] _processCommandRelayInterfaceInfo: send RelayInterfaceInfoAck (counter: %u) using %@", buf, 0x12u);
          }

          [(IDSGlobalLink *)self _sendCommandMessage:32774 stunMessage:0 options:v91 candidatePairToken:v7];
          if (self->super._remoteRelayInterfaceCounter >= v115)
          {
            v41 = +[IDSFoundationLog GFTGL];
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              remoteRelayInterfaceCounter = self->super._remoteRelayInterfaceCounter;
              *buf = 67109376;
              *&buf[4] = v115;
              *&buf[8] = 1024;
              *&buf[10] = remoteRelayInterfaceCounter;
              _os_log_impl(&dword_1A7AD9000, v41, OS_LOG_TYPE_DEFAULT, "[U+1] _processCommandRelayInterfaceInfo: received old counter: %u, current counter: %u, ignore", buf, 0xEu);
            }
          }

          else
          {
            self->super._remoteRelayInterfaceCounter = v115;
            memset(buf, 170, 0x400uLL);
            v114 = 0;
            if (GLUtilHasValidBinaryDataAttr(v6, 21, buf, &v114))
            {
              memset(__b, 170, sizeof(__b));
              v113 = 0;
              if (!GLUtilHasValidBinaryDataAttr(v6, 22, __b, &v113) || !self->super._shouldAcceptIncomingMKMOverQR)
              {
                goto LABEL_122;
              }

              v88 = [MEMORY[0x1E695DEF0] dataWithBytes:__b length:v113];
              v89 = JWDecodeDictionary();
              v87 = [v89 _dataForKey:@"p"];
              v90 = [v89 _stringForKey:@"r"];
              if (v90)
              {
                if ([v93 isSharedQRSession])
                {
                  v21 = [v93 groupID];
                  v22 = [v21 isEqualToString:v90];

                  if (v22)
                  {
                    v23 = v93;
LABEL_88:
                    v93 = v23;
                    v55 = [v23 participantID];
                    v86 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v55];
                    v56 = [v93 URIToParticipantIDs];
                    v57 = [v56 allValues];

                    v58 = +[IDSFoundationLog GFTGL];
                    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                    {
                      *v123 = 134218242;
                      v124 = v55;
                      v125 = 2112;
                      v126 = v57;
                      _os_log_impl(&dword_1A7AD9000, v58, OS_LOG_TYPE_DEFAULT, "[U+1] _processCommandRelayInterfaceInfo localParticipantID = %llu participantIDSets = %@", v123, 0x16u);
                    }

                    v107 = 0u;
                    v108 = 0u;
                    v105 = 0u;
                    v106 = 0u;
                    obj = v57;
                    v59 = [obj countByEnumeratingWithState:&v105 objects:v130 count:16];
                    if (v59)
                    {
                      v94 = *v106;
                      v95 = 0;
                      do
                      {
                        for (i = 0; i != v59; ++i)
                        {
                          if (*v106 != v94)
                          {
                            objc_enumerationMutation(obj);
                          }

                          v61 = *(*(&v105 + 1) + 8 * i);
                          v101 = 0u;
                          v102 = 0u;
                          v103 = 0u;
                          v104 = 0u;
                          v62 = v61;
                          v63 = [v62 countByEnumeratingWithState:&v101 objects:v129 count:16];
                          if (v63)
                          {
                            v64 = *v102;
                            while (2)
                            {
                              for (j = 0; j != v63; ++j)
                              {
                                if (*v102 != v64)
                                {
                                  objc_enumerationMutation(v62);
                                }

                                if ([*(*(&v101 + 1) + 8 * j) unsignedLongLongValue] == v55)
                                {
                                  LOBYTE(v63) = 1;
                                  goto LABEL_105;
                                }
                              }

                              v63 = [v62 countByEnumeratingWithState:&v101 objects:v129 count:16];
                              if (v63)
                              {
                                continue;
                              }

                              break;
                            }
                          }

LABEL_105:

                          if ([v62 count])
                          {
                            v66 = v63;
                          }

                          else
                          {
                            v66 = 1;
                          }

                          if ((v66 & 1) == 0)
                          {
                            v67 = v62;

                            v95 = v67;
                          }
                        }

                        v59 = [obj countByEnumeratingWithState:&v105 objects:v130 count:16];
                      }

                      while (v59);

                      if (v95)
                      {
                        v68 = +[IDSFoundationLog GFTGL];
                        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                        {
                          *v123 = 138412802;
                          v124 = v89;
                          v125 = 2112;
                          v126 = v95;
                          v127 = 2112;
                          v128 = v86;
                          _os_log_impl(&dword_1A7AD9000, v68, OS_LOG_TYPE_DEFAULT, "[U+1] received remote key material %@ from fromParticipantIDs %@ to local participantIDs %@", v123, 0x20u);
                        }

                        WeakRetained = objc_loadWeakRetained(&self->super._delegate);
                        [WeakRetained link:self didReceiveKeyMaterialMessageData:v87 fromParticipantIDs:v95 toParticipantID:v86];
LABEL_120:

                        v52 = v86;
                        goto LABEL_121;
                      }
                    }

                    else
                    {
                    }

                    WeakRetained = +[IDSFoundationLog GFTGL];
                    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
                    {
                      *v123 = 0;
                      _os_log_impl(&dword_1A7AD9000, WeakRetained, OS_LOG_TYPE_DEFAULT, "[U+1] _processCommandRelayInterfaceInfo couldn't find fromParticipantID - ignoring this key material message", v123, 2u);
                    }

                    v95 = 0;
                    goto LABEL_120;
                  }
                }

                [(NSMutableDictionary *)self->super._tokenToCandidatePairs allValues];
                v111 = 0u;
                v112 = 0u;
                v109 = 0u;
                v45 = v110 = 0u;
                v46 = [v45 countByEnumeratingWithState:&v109 objects:v131 count:16];
                if (v46)
                {
                  v47 = *v110;
                  do
                  {
                    for (k = 0; k != v46; ++k)
                    {
                      if (*v110 != v47)
                      {
                        objc_enumerationMutation(v45);
                      }

                      v49 = *(*(&v109 + 1) + 8 * k);
                      if ([v49 isSharedQRSession])
                      {
                        v50 = [v49 groupID];
                        if ([v50 isEqualToString:v90])
                        {
                          v51 = [v49 state] == 4;

                          if (v51)
                          {
                            v54 = v49;

                            v23 = v54;
                            goto LABEL_88;
                          }
                        }

                        else
                        {
                        }
                      }
                    }

                    v46 = [v45 countByEnumeratingWithState:&v109 objects:v131 count:16];
                  }

                  while (v46);
                }

                v52 = +[IDSFoundationLog GFTGL];
                if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_121;
                }

                *v123 = 138412290;
                v124 = v90;
                v53 = "[U+1] _processCommandRelayInterfaceInfo couldn't find a matching candidatePair with relayGroupID %@ - ignoring this key material message";
              }

              else
              {
                v52 = +[IDSFoundationLog GFTGL];
                if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
                {
LABEL_121:

LABEL_122:
                  if ([v93 isSharedQRSession])
                  {
                    v70 = [v93 sessionID];
LABEL_124:
                    *v123 = 0;
                    v71 = +[IDSStunRelayInterfaceInfoController sharedInstance];
                    v72 = [v71 candidatePairsFromRelayInterfaceInfo:buf bufferLength:v114 token:self->super._cbuuid sessionID:v70 error:v123];

                    if (*v123)
                    {
                      v73 = +[IDSFoundationLog GFTGL];
                      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                      {
                        *v96 = 0;
                        _os_log_impl(&dword_1A7AD9000, v73, OS_LOG_TYPE_DEFAULT, "[U+1] _processCommandRelayInterfaceInfo: couldn't get any candidate pairs, return", v96, 2u);
                      }
                    }

                    else
                    {
                      [(IDSGFTGL *)self _processReceivedRemoteCandidatePairs:v72];
                    }
                  }

                  else
                  {
                    [(NSMutableDictionary *)self->super._tokenToCandidatePairs allValues];
                    v99 = 0u;
                    v100 = 0u;
                    v97 = 0u;
                    v74 = v98 = 0u;
                    v75 = [v74 countByEnumeratingWithState:&v97 objects:v122 count:16];
                    if (v75)
                    {
                      v70 = 0;
                      v76 = *v98;
                      while (2)
                      {
                        for (m = 0; m != v75; ++m)
                        {
                          if (*v98 != v76)
                          {
                            objc_enumerationMutation(v74);
                          }

                          v78 = *(*(&v97 + 1) + 8 * m);
                          if ([v78 isSharedQRSession] && objc_msgSend(v78, "state") == 4)
                          {
                            v79 = [v78 sessionID];
                            v80 = v79;
                            if (v70)
                            {
                              if (([v70 isEqualToString:v79] & 1) == 0)
                              {
                                v81 = +[IDSFoundationLog GFTGL];
                                if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
                                {
                                  *v123 = 0;
                                  _os_log_impl(&dword_1A7AD9000, v81, OS_LOG_TYPE_DEFAULT, "[U+1] There are multiple relaySessionIDs - ignore this relayInterface Info", v123, 2u);
                                }

                                v83 = v74;
                                goto LABEL_153;
                              }
                            }

                            else
                            {
                              v70 = v79;
                            }
                          }
                        }

                        v75 = [v74 countByEnumeratingWithState:&v97 objects:v122 count:16];
                        if (v75)
                        {
                          continue;
                        }

                        break;
                      }

                      if (v70)
                      {

                        goto LABEL_124;
                      }
                    }

                    else
                    {
                    }

                    v83 = +[IDSFoundationLog GFTGL];
                    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                    {
                      *v123 = 0;
                      _os_log_impl(&dword_1A7AD9000, v83, OS_LOG_TYPE_DEFAULT, "[U+1] There is no relaySessionID found - ignore this relayInterface Info", v123, 2u);
                    }

                    v70 = 0;
LABEL_153:
                  }

                  goto LABEL_155;
                }

                *v123 = 138412290;
                v124 = 0;
                v53 = "[U+1] _processCommandRelayInterfaceInfo bad relayGroupID %@ in key material message";
              }

              _os_log_impl(&dword_1A7AD9000, v52, OS_LOG_TYPE_DEFAULT, v53, v123, 0xCu);
              goto LABEL_121;
            }

            v44 = +[IDSFoundationLog GFTGL];
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              *__b = 0;
              _os_log_impl(&dword_1A7AD9000, v44, OS_LOG_TYPE_DEFAULT, "[U+1] _processCommandRelayInterfaceInfo failed due to invalid data.", __b, 2u);
            }
          }

LABEL_155:
          v29 = v91;
          goto LABEL_156;
        }

        v33 = v115;
        if (self->_keyMaterialData && self->_keyMaterialDataCounter <= v115)
        {
          v34 = +[IDSFoundationLog GFTGL];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            keyMaterialDataCounter = self->_keyMaterialDataCounter;
            *buf = 67109376;
            *&buf[4] = v115;
            *&buf[8] = 1024;
            *&buf[10] = keyMaterialDataCounter;
            _os_log_impl(&dword_1A7AD9000, v34, OS_LOG_TYPE_DEFAULT, "[U+1] _processCommandRelayInterfaceInfo: received relay link interface ack(counter:%u >= %u) - key material data delivery success", buf, 0xEu);
          }

          [(IDSGFTGL *)self _discardKeyMaterialMessage:0];
          v33 = v115;
        }

        localRelayInterfaceCounter = self->super._localRelayInterfaceCounter;
        if (localRelayInterfaceCounter > v33)
        {
          v29 = +[IDSFoundationLog GFTGL];
          if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_156;
          }

          v37 = self->super._localRelayInterfaceCounter;
          v38 = self->_keyMaterialDataCounter;
          *buf = 67109632;
          *&buf[4] = v115;
          *&buf[8] = 1024;
          *&buf[10] = v37;
          *&buf[14] = 1024;
          *&buf[16] = v38;
          v30 = "[U+1] _processCommandRelayInterfaceInfo: received old relay link interface ack(counter:%u), _localRelayInterfaceCounter: %u, _keyMaterialDataCounter: %u, ignore.";
          v31 = v29;
          v32 = 20;
          goto LABEL_49;
        }

        if (localRelayInterfaceCounter != v33 || (+[IDSStunRelayInterfaceInfoController sharedInstance](IDSStunRelayInterfaceInfoController, "sharedInstance"), v39 = objc_claimAutoreleasedReturnValue(), v40 = [v39 relayInterfaceInfoDeliveryStatus:self->super._cbuuid] == 3, v39, !v40))
        {
          v43 = [IDSFoundationLog GFTGL:v84];
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = v115;
            _os_log_impl(&dword_1A7AD9000, v43, OS_LOG_TYPE_DEFAULT, "[U+1] _processCommandRelayInterfaceInfo: receive RelayInterfaceInfoAck (counter:%u).", buf, 8u);
          }

          v29 = +[IDSStunRelayInterfaceInfoController sharedInstance];
          [v29 setRelayInterfaceInfoDeliveryStatus:self->super._cbuuid status:3];
          goto LABEL_156;
        }

        v29 = +[IDSFoundationLog GFTGL];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v30 = "[U+1] _processCommandRelayInterfaceInfo: current status is success, ignore.";
          goto LABEL_48;
        }
      }

      else
      {
        v29 = +[IDSFoundationLog GFTGL];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v30 = "[U+1] _processCommandRelayInterfaceInfo failed due to invalid counter.";
LABEL_48:
          v31 = v29;
          v32 = 2;
LABEL_49:
          _os_log_impl(&dword_1A7AD9000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
        }
      }

LABEL_156:

      goto LABEL_157;
    }

    v25 = +[IDSFoundationLog GFTGL];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v25, OS_LOG_TYPE_DEFAULT, "[U+1] no remote device version received yet. Saving incoming RelayInterfaceInfo[Ack] for later", buf, 2u);
    }

    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A7BFB2D8;
    aBlock[3] = &unk_1E77E0FA0;
    objc_copyWeak(&v121, buf);
    v119 = v6;
    v120 = v7;
    v26 = _Block_copy(aBlock);
    pendingCommandRelayInterfaceInfoBlock = self->super._pendingCommandRelayInterfaceInfoBlock;
    self->super._pendingCommandRelayInterfaceInfoBlock = v26;

    objc_destroyWeak(&v121);
    objc_destroyWeak(buf);
  }

  else
  {
    v24 = +[IDSFoundationLog GFTGL];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "[U+1] not processing CommandRelayInterfaceInfo because we are not in U+1 mode.", buf, 2u);
    }
  }

LABEL_159:
}

- (BOOL)_postProcessAllocbindResponse:(id)a3 candidatePair:(id)a4 candidatePairToken:(id)a5
{
  v140 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v113 = a4;
  v107 = a5;
  v129 = 0;
  v112 = v7;
  if (StunUtilHasValidUInt32Attr(v7, 65512, &v129))
  {
    [v113 setChannelSettings:v129];
  }

  v111 = [(NSMutableDictionary *)self->super._tokenToCandidatePairs allValues];
  v8 = +[IDSFoundationLog GFTGL];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v133 = v111;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "current candidate pairs: %@", buf, 0xCu);
  }

  v110 = GLUtilGetDifferentRelayCandidatePairSucceeded(v113, v111);
  v9 = [v110 local];
  v10 = [v9 transport];

  v11 = [v113 local];
  v12 = [v11 transport];

  v13 = [v113 local];
  v106 = -[IDSGlobalLink _interfaceNameForInterfaceIndexIncludingVPN:](self, "_interfaceNameForInterfaceIndexIncludingVPN:", [v13 index]);

  v14 = [v113 linkEngine];

  if (!v14)
  {
    if (!v110)
    {
      goto LABEL_26;
    }

    if (self->super._cellInterfaceName)
    {
      v20 = [v113 local];
      if ([v20 isCellularStunCandidate])
      {
        v21 = [(__CFString *)v106 isEqualToIgnoringCase:self->super._cellInterfaceName];

        if (v21)
        {
          v22 = [IDSServerBag sharedInstanceForBagType:0];
          v23 = [v22 objectForKey:@"ids-delay-for-cellular-default-and-slicing"];

          if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v24 = [v23 unsignedIntegerValue];
            v25 = +[IDSFoundationLog GFTGL];
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              cellInterfaceName = self->super._cellInterfaceName;
              *buf = 138413058;
              v133 = v106;
              v134 = 2112;
              v135 = cellInterfaceName;
              v136 = 2112;
              v137 = v110;
              v138 = 1024;
              v139 = v24;
              _os_log_impl(&dword_1A7AD9000, v25, OS_LOG_TYPE_DEFAULT, "Sliced Cellular Interface - currentInterfaceName %@ _cellInterfaceName %@ will discard existing pair: %@ in %u seconds.", buf, 0x26u);
            }

            v27 = [MEMORY[0x1E6995700] weakRefWithObject:self];
            v28 = dispatch_time(0, 1000000000 * v24);
            v29 = im_primary_queue();
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = sub_1A7BFC468;
            block[3] = &unk_1E77E0C88;
            v127 = v27;
            v128 = v110;
            v30 = v27;
            dispatch_after(v28, v29, block);
          }

          else
          {
            v100 = +[IDSFoundationLog GFTGL];
            if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
            {
              v101 = self->super._cellInterfaceName;
              *buf = 138412802;
              v133 = v106;
              v134 = 2112;
              v135 = v101;
              v136 = 2112;
              v137 = v110;
              _os_log_impl(&dword_1A7AD9000, v100, OS_LOG_TYPE_DEFAULT, "Sliced Cellular Interface - currentInterfaceName %@ _cellInterfaceName %@ discard existing pair: %@.", buf, 0x20u);
            }

            v30 = [v110 candidatePairToken];
            [(IDSGlobalLink *)self _sendUnallocbindRequest:v30 stunMessage:0 reason:13];
          }

LABEL_25:
          goto LABEL_26;
        }
      }

      else
      {
      }
    }

    if (v10 <= v12 && ([v113 isRealloc] & 1) == 0)
    {
      v18 = +[IDSFoundationLog GFTGL];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        v133 = v10;
        v134 = 2048;
        v135 = v12;
        v136 = 2112;
        v137 = v113;
        _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "succeededTransport %ld currentTransport %ld discard current pair: %@", buf, 0x20u);
      }

      goto LABEL_9;
    }

    v31 = +[IDSFoundationLog GFTGL];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v133 = v10;
      v134 = 2048;
      v135 = v12;
      v136 = 2112;
      v137 = v110;
      _os_log_impl(&dword_1A7AD9000, v31, OS_LOG_TYPE_DEFAULT, "succeededTransport %ld currentTransport %ld discard existing pair: %@.", buf, 0x20u);
    }

    v23 = [v110 candidatePairToken];
    [(IDSGlobalLink *)self _sendUnallocbindRequest:v23 stunMessage:0 reason:8];
    goto LABEL_25;
  }

  v15 = [v113 linkEngine];
  v16 = [v113 linkUniqueName];
  v17 = [v15 isLinkConnecting:v16];

  if ((v17 & 1) == 0)
  {
    v18 = +[IDSFoundationLog GFTGL];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v113 linkUniqueName];
      *buf = 138412290;
      v133 = v19;
      _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "discard current pair because it should no longer be connecting: %@", buf, 0xCu);
    }

LABEL_9:

    [(IDSGlobalLink *)self _sendUnallocbindRequest:v107 stunMessage:0 reason:8];
    goto LABEL_110;
  }

LABEL_26:
  v32 = [v113 hbhEncKey];
  if (!v32 || ([v113 hbhDecKey], v33 = objc_claimAutoreleasedReturnValue(), v34 = v33 == 0, v33, v32, v34))
  {
    v35 = [v113 relaySessionKey];
    v36 = [v113 sessionID];
    v37 = [v113 participantID];
    v38 = [v112 transactionID];
    v39 = IDSLinkHBHDeriveHKDFSha256Keys(v35, v36, v37, v38);

    if (v39)
    {
      v40 = [v39 subdataWithRange:{0, 32}];
      v41 = [v39 subdataWithRange:{32, 32}];
      [v113 setHbhEncKey:v40];
      [v113 setHbhDecKey:v41];
    }

    else
    {
      v40 = +[IDSFoundationLog GFTGL];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E1AF2C();
      }
    }
  }

  [(IDSGlobalLink *)self _notifyQRSessionConnected:v113];
  v42 = self;
  if (self->super._isUPlusOneSession)
  {
    [(IDSGFTGL *)self _sendRelayInterfaceInfo:v107];
    v124 = 0u;
    v125 = 0u;
    v123 = 0u;
    v122 = 0u;
    v43 = self->_remoteCandidatePairs;
    v44 = [(NSArray *)v43 countByEnumeratingWithState:&v122 objects:v131 count:16];
    if (v44)
    {
      v45 = *v123;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v123 != v45)
          {
            objc_enumerationMutation(v43);
          }

          [(IDSGFTGL *)self _setupVirtualCandidatePairs:v113 remoteCandidatePair:*(*(&v122 + 1) + 8 * i)];
        }

        v44 = [(NSArray *)v43 countByEnumeratingWithState:&v122 objects:v131 count:16];
      }

      while (v44);
    }

    v42 = self;
  }

  v47 = [(NSMutableDictionary *)v42->super._tokenToCandidatePairs allValues];
  v108 = GLUtilGetRelayCandidatePairNotSucceededForOppositeIPVersion(v113, v47);

  if (v108)
  {
    v48 = GLUCreateIPVersionFailureEvent(v108);
    v49 = [v108 local];
    if (*([v49 address] + 1) == 2)
    {
      v50 = @"IPv4";
    }

    else
    {
      v50 = @"IPv6";
    }

    v51 = v50;

    v52 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v133 = v51;
      _os_log_impl(&dword_1A7AD9000, v52, OS_LOG_TYPE_DEFAULT, "RTC reports: add %@ setup failure", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v102 = v51;
        _IDSLogTransport(@"GL", @"IDS", @"RTC reports: add %@ setup failure");
        if (_IDSShouldLog())
        {
          v102 = v51;
          _IDSLogV(0, @"IDSFoundation", @"GL", @"RTC reports: add %@ setup failure");
        }
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->super._delegate);
    v54 = objc_opt_respondsToSelector();

    if (v54)
    {
      v55 = objc_loadWeakRetained(&self->super._delegate);
      [v55 link:self didAddQREvent:v48];
    }
  }

  v56 = [v113 linkID];
  v57 = StunUtilProcessStreamInfo(v112, v56, v56);
  v58 = v57;
  Value = 0;
  if (v57 && @"stream-info-peer-published-streams")
  {
    Value = CFDictionaryGetValue(v57, @"stream-info-peer-published-streams");
  }

  v60 = StunUtilProcessParticipants(Value, [v113 participantID], self->super._isLightweightParticipant);
  v61 = StunUtilProcessLightweightParticipants(v112);
  if ([v60 count] >= 2)
  {
    self->super._isSecondOrLaterParticipant = 1;
    if (!self->super._receivedAllocbindResponse)
    {
      v62 = ids_monotonic_time();
      v63 = GLUCreateQRClientTimeEvent(311, 0, v113, 0, v62);
      v64 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v64, OS_LOG_TYPE_DEFAULT, "RTC reports: add first allocbind response", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"RTC reports: add first allocbind response");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"RTC reports: add first allocbind response");
          }
        }
      }

      v65 = objc_loadWeakRetained(&self->super._delegate);
      v66 = objc_opt_respondsToSelector();

      if (v66)
      {
        v67 = objc_loadWeakRetained(&self->super._delegate);
        [v67 link:self didAddQREvent:v63];
      }

      self->super._receivedAllocbindResponse = 1;
    }
  }

  theDict = objc_alloc_init(MEMORY[0x1E695DF90]);
  v68 = v58;
  if (v58)
  {
    v69 = v68;
    CFDictionarySetValue(theDict, @"gl-option-sessioninfo-response-streaminfo-key", v68);
    v68 = v69;
  }

  v105 = v68;

  v70 = v60;
  if (v70)
  {
    v71 = v70;
    CFDictionarySetValue(theDict, @"gl-option-sessioninfo-response-participants-key", v70);
    v70 = v71;
  }

  v104 = v70;

  v72 = v61;
  if (v72)
  {
    v73 = v72;
    CFDictionarySetValue(theDict, @"gl-option-sessioninfo-response-lightweight-participants-key", v72);
    v72 = v73;
  }

  v103 = v72;

  v74 = [v113 groupID];
  v75 = [v113 sessionID];
  [(IDSGlobalLink *)self _notifySessionInfoReceived:theDict relayGroupID:v74 relaySessionID:v75 status:0];

  v76 = [v113 sessionID];
  [v113 initParticipantIDMap:0];
  v77 = [v113 groupID];
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v78 = v111;
  v79 = [(__CFString *)v78 countByEnumeratingWithState:&v118 objects:v130 count:16];
  if (v79)
  {
    v80 = *v119;
    do
    {
      for (j = 0; j != v79; ++j)
      {
        if (*v119 != v80)
        {
          objc_enumerationMutation(v78);
        }

        v82 = *(*(&v118 + 1) + 8 * j);
        v83 = [v82 sessionID];
        if ([v83 isEqualToString:v76])
        {
          v84 = [v82 groupID];
          if ([v84 isEqualToString:v77] && objc_msgSend(v82, "state") == 4)
          {
            v85 = [v82 isSharedQRSession];

            if (!v85)
            {
              continue;
            }

            v83 = [(NSMutableDictionary *)self->super._pluginParticipantIDs allKeys];
            [v82 updateParticipantIDMap:v83];
          }

          else
          {
          }
        }
      }

      v79 = [(__CFString *)v78 countByEnumeratingWithState:&v118 objects:v130 count:16];
    }

    while (v79);
  }

  v117 = 0;
  if (StunUtilHasValidUInt32Attr(v112, 65513, &v117))
  {
    v86 = +[IDSFoundationLog GFTGL];
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v133) = v117;
      _os_log_impl(&dword_1A7AD9000, v86, OS_LOG_TYPE_DEFAULT, "receive channel cookie %08x.", buf, 8u);
    }

    v87 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v88 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v113, "nextSessionInfoReqID")}];
    if (v88)
    {
      CFDictionarySetValue(v87, @"gl-option-sessioninfo-request-id", v88);
    }

    else
    {
      v89 = MEMORY[0x1E69E9C10];
      v90 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E1AF68();
      }
    }

    v91 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v117];
    if (v91)
    {
      CFDictionarySetValue(v87, @"gl-option-sessioninfo-cookie", v91);
    }

    else
    {
      v92 = MEMORY[0x1E69E9C10];
      v93 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E1AFF8();
      }
    }

    [v113 sendSessionInfoRequest:0 options:v87];
  }

  *buf = 0;
  HasValidUInt32Attr = StunUtilHasValidUInt32Attr(v112, 65489, buf);
  if (*buf)
  {
    v95 = HasValidUInt32Attr;
  }

  else
  {
    v95 = 0;
  }

  if (v95 == 1)
  {
    v96 = objc_loadWeakRetained(&self->super._delegate);
    v97 = objc_opt_respondsToSelector();

    if (v97)
    {
      v98 = objc_loadWeakRetained(&self->super._delegate);
      [v98 link:self didReceiveSessionStateCounter:*buf];
    }
  }

  v115[0] = MEMORY[0x1E69E9820];
  v115[1] = 3221225472;
  v115[2] = sub_1A7BFC578;
  v115[3] = &unk_1E77E0250;
  v115[4] = self;
  v116 = v113;
  IDSTransportThreadAddBlockAfter(v115, 1.0);

LABEL_110:
  return 1;
}

- (void)_sendRelayInterfaceInfo:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSStunRelayInterfaceInfoController sharedInstance];
  v6 = [v5 relayInterfaceInfoDeliveryStatus:self->super._cbuuid];

  if (v6 >= 3)
  {
    v7 = +[IDSFoundationLog GFTGL];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v43 = v6;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "[U+1] _sendRelayInterfaceInfo status was %lu. Resetting", buf, 0xCu);
    }

    v8 = +[IDSStunRelayInterfaceInfoController sharedInstance];
    [v8 removeCache:self->super._cbuuid];
  }

  if (!self->_allowE2E || !self->super._receivedRemoteDeviceVersion)
  {
    v13 = +[IDSFoundationLog GFTGL];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = @"NO";
      if (self->_allowE2E)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      if (self->super._receivedRemoteDeviceVersion)
      {
        v14 = @"YES";
      }

      *buf = 138412546;
      *v43 = v15;
      *&v43[8] = 2112;
      *&v43[10] = v14;
      _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "[U+1] _sendRelayInterfaceInfo can't send relayInterfaceInfo yet. allowE2E = %@, receivedRemoteDeviceVersion = %@", buf, 0x16u);
    }

    v16 = +[IDSStunRelayInterfaceInfoController sharedInstance];
    [v16 setRelayInterfaceInfoDeliveryStatus:self->super._cbuuid status:1];
    goto LABEL_18;
  }

  tokenToCandidatePairs = self->super._tokenToCandidatePairs;
  if (v4)
  {
    v10 = [(NSMutableDictionary *)tokenToCandidatePairs objectForKeyedSubscript:v4];
    v11 = v10;
    if (v10)
    {
      v41 = v10;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = [(NSMutableDictionary *)tokenToCandidatePairs allValues];
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v16 = v12;
  v17 = [v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v37;
    while (1)
    {
      v21 = 0;
      v35 = v18;
      do
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v36 + 1) + 8 * v21);
        v23 = [v22 state];
        if ([v22 isRelayStunCandidatePair])
        {
          if (v23 != 4)
          {
            goto LABEL_43;
          }
        }

        else if (v23 != 3)
        {
          goto LABEL_43;
        }

        if ((v19 & 1) == 0)
        {
          ++self->super._localRelayInterfaceCounter;
        }

        if (self->_keyMaterialData)
        {
          if (self->_keyMaterialDataCounter == -1)
          {
            self->_keyMaterialDataCounter = self->super._localRelayInterfaceCounter;
          }

          v24 = +[IDSFoundationLog GFTGL];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [(NSData *)self->_keyMaterialData length];
            keyMaterialDataCounter = self->_keyMaterialDataCounter;
            *buf = 67109376;
            *v43 = v25;
            *&v43[4] = 1024;
            *&v43[6] = keyMaterialDataCounter;
            _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "[U+1] _sendRelayInterfaceInfo piggybacking key material message %d bytes. keyMaterialDataCounter = %u", buf, 0xEu);
          }

          v27 = MEMORY[0x1E695DF20];
          v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->super._localRelayInterfaceCounter];
          v29 = [v27 dictionaryWithObjectsAndKeys:{v28, @"gl-attr-counter", self->_keyMaterialData, @"gl-attr-mkm", 0}];
        }

        else
        {
          v30 = MEMORY[0x1E695DF20];
          v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->super._localRelayInterfaceCounter];
          v29 = [v30 dictionaryWithObjectsAndKeys:{v28, @"gl-attr-counter", 0}];
        }

        v31 = [v22 candidatePairToken];

        v32 = +[IDSFoundationLog GFTGL];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          localRelayInterfaceCounter = self->super._localRelayInterfaceCounter;
          *buf = 67109378;
          *v43 = localRelayInterfaceCounter;
          *&v43[4] = 2112;
          *&v43[6] = v31;
          _os_log_impl(&dword_1A7AD9000, v32, OS_LOG_TYPE_DEFAULT, "[U+1] _sendRelayInterfaceInfo: send RelayInterfaceInfo (counter: %u) on %@", buf, 0x12u);
        }

        [(IDSGlobalLink *)self _sendCommandMessage:6 stunMessage:0 options:v29 candidatePairToken:v31];
        v19 = 1;
        v4 = v31;
        v18 = v35;
LABEL_43:
        ++v21;
      }

      while (v18 != v21);
      v18 = [v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (!v18)
      {

        if (v19)
        {
          v34 = +[IDSStunRelayInterfaceInfoController sharedInstance];
          [v34 setRelayInterfaceInfoDeliveryStatus:self->super._cbuuid status:2];
          goto LABEL_48;
        }

        goto LABEL_18;
      }
    }
  }

  v34 = v16;
LABEL_48:

LABEL_18:
}

- (BOOL)_setupNewQRLinkIfNecessary:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = IDSGFTGL;
  v5 = [(IDSGlobalLink *)&v12 _setupNewQRLinkIfNecessary:?];
  v6 = v5;
  if (!a3 && v5)
  {
    v7 = +[IDSFoundationLog GFTGL];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      idsSessionID = self->super._idsSessionID;
      *buf = 138412290;
      v14 = idsSessionID;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "set up new QR link for group %@.", buf, 0xCu);
    }

    v9 = im_primary_queue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A7BFCCE4;
    block[3] = &unk_1E77E0818;
    block[4] = self;
    dispatch_async(v9, block);
  }

  return v6;
}

- (void)setAllowP2P:(BOOL)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (IMGetDomainBoolForKeyWithDefaultValue())
  {
    v5 = +[IDSFoundationLog GFTGL];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "Ignore setAllowP2P due to defaults", &v9, 2u);
    }
  }

  else
  {
    self->super._allowP2P = a3;
    v6 = +[IDSFoundationLog GFTGL];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (self->super._allowP2P)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "[U+1] setAllowP2P: %@", &v9, 0xCu);
    }

    nwLink = self->super._nwLink;
    if (nwLink)
    {
      [(IDSNWLink *)nwLink setDisableP2P:!self->super._allowP2P];
    }

    if (self->super._allowP2P)
    {
      [(IDSGlobalLink *)self _startExtIPDiscovery];
    }
  }
}

- (void)_enableE2E
{
  v10 = *MEMORY[0x1E69E9840];
  if (!self->_allowE2E)
  {
    v3 = +[IDSFoundationLog GFTGL];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = +[IDSStunRelayInterfaceInfoController sharedInstance];
      v5 = [v4 relayInterfaceInfoDeliveryStatus:self->super._cbuuid];
      v8 = 134217984;
      v9 = v5;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "[U+1] _enableE2E: now can set up E2E links, VR status: %ld", &v8, 0xCu);
    }

    self->_allowE2E = 1;
    v6 = +[IDSStunRelayInterfaceInfoController sharedInstance];
    v7 = [v6 relayInterfaceInfoDeliveryStatus:self->super._cbuuid];

    if (v7 == 1)
    {
      [(IDSGFTGL *)self _sendRelayInterfaceInfo:0];
    }

    [(IDSGlobalLink *)self _startExtIPDiscovery];
  }
}

- (void)_disableE2E
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = 0x1E77DB000uLL;
  v4 = +[IDSFoundationLog GFTGL];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "[U+1] _disableE2E: disconnect all E2E links", buf, 2u);
  }

  self->_allowE2E = 0;
  v5 = +[IDSStunRelayInterfaceInfoController sharedInstance];
  [v5 removeCache:self->super._cbuuid];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = self->_virtualCandidatePairs;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(IDSGlobalLink *)self _notifyCandidatePairDisconnected:*(*(&v37 + 1) + 8 * i) withReason:7];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v8);
  }

  virtualCandidatePairs = self->_virtualCandidatePairs;
  self->_virtualCandidatePairs = 0;

  remoteCandidatePairs = self->_remoteCandidatePairs;
  self->_remoteCandidatePairs = 0;

  localRemoteRelayLinkIDToVirtualCandidatePairs = self->super._localRemoteRelayLinkIDToVirtualCandidatePairs;
  self->super._localRemoteRelayLinkIDToVirtualCandidatePairs = 0;

  self->super._receivedRemoteDeviceVersion = 0;
  self->super._remoteRelayInterfaceCounter = 0;
  v14 = [(NSMutableDictionary *)self->super._tokenToCandidatePairs allValues];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v34;
    v32 = *v34;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v34 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v33 + 1) + 8 * j);
        if (([v20 isRelayStunCandidatePair] & 1) == 0 && objc_msgSend(v20, "state") == 3)
        {
          v21 = [v20 candidatePairToken];
          if (!v17)
          {
            v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          if (v17 && v21)
          {
            CFArrayAppendValue(v17, v21);
          }

          v22 = [*(v3 + 2592) GFTGL];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            [v20 candidatePairToken];
            v23 = self;
            v24 = v17;
            v25 = v14;
            v27 = v26 = v3;
            *buf = 138412290;
            v42 = v27;
            _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "[U+1] removing P2P candidate pair %@", buf, 0xCu);

            v3 = v26;
            v14 = v25;
            v17 = v24;
            self = v23;
            v18 = v32;
          }

          [(IDSGlobalLink *)self _notifyCandidatePairDisconnected:v20 withReason:7];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  [(NSMutableDictionary *)self->super._tokenToCandidatePairs removeObjectsForKeys:v17];
  tokenToStunCheckPairs = self->super._tokenToStunCheckPairs;
  self->super._tokenToStunCheckPairs = 0;

  remoteCandidateList = self->super._remoteCandidateList;
  self->super._remoteCandidateList = 0;

  v30 = [*(v3 + 2592) GFTGL];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [(NSMutableDictionary *)self->super._tokenToCandidatePairs allValues];
    *buf = 138412290;
    v42 = v31;
    _os_log_impl(&dword_1A7AD9000, v30, OS_LOG_TYPE_DEFAULT, "[U+1] remaining candidate pairs: %@", buf, 0xCu);
  }
}

- (void)_sendConnectionDataWithRemovedAddressList:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_allowE2E && self->super._receivedRemoteDeviceVersion)
  {
    v8.receiver = self;
    v8.super_class = IDSGFTGL;
    [(IDSGlobalLink *)&v8 _sendConnectionDataWithRemovedAddressList:v4];
  }

  else
  {
    v5 = +[IDSFoundationLog GFTGL];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (self->_allowE2E)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      if (self->super._receivedRemoteDeviceVersion)
      {
        v6 = @"YES";
      }

      *buf = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "[U+1] cannot send connection data yet. allowE2E = %@, receivedRemoteDeviceVersion = %@", buf, 0x16u);
    }
  }
}

- (void)receiveJoinNotificationFromAParticipant
{
  if (self->super._isUPlusOneSession)
  {
    v7 = v2;
    v8 = v3;
    v5 = +[IDSFoundationLog GFTGL];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "[U+1] remote joined the U + 1 session", v6, 2u);
    }

    [(IDSGFTGL *)self _enableE2E];
  }
}

- (void)setIsUPlusOneSession:(BOOL)a3
{
  if (self->super._isUPlusOneSession != a3)
  {
    v18 = v3;
    v19 = v4;
    v5 = a3;
    self->super._isUPlusOneSession = a3;
    ++self->super._callModeUpdateGenerationCounter;
    v7 = +[IDSFoundationLog GFTGL];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "[U+1] enabled", buf, 2u);
      }

      v9 = IMGetDomainBoolForKeyWithDefaultValue();
      self->super._allowP2P = v9 ^ 1;
      if (((v9 ^ 1) & 1) == 0)
      {
        v10 = +[IDSFoundationLog GFTGL];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v16 = 0;
          _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "disableP2PLinks default is set to YES.", v16, 2u);
        }
      }
    }

    else
    {
      if (v8)
      {
        *v15 = 0;
        _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "[U+1] disabled", v15, 2u);
      }

      self->super._shouldReportAcceptDelay = 0;
      self->super._allowP2P = 0;
    }

    v11 = GLUCreateSetUPlusOneEvent(v5, self->super._timeBase);
    if (v11)
    {
      WeakRetained = objc_loadWeakRetained(&self->super._delegate);
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        v14 = objc_loadWeakRetained(&self->super._delegate);
        [v14 link:self didAddQREvent:v11];
      }
    }
  }
}

- (void)enableUPlusOneSessionForTransition:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v5 = +[IDSFoundationLog GFTGL];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    if (self->super._isUPlusOneSession)
    {
      v6 = @"YES";
    }

    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "[U+1] enableUPlusOneSessionForTransition: enableUPlusOneSession: %@, _isUPlusOneSession: %@", &v10, 0x16u);
  }

  if (self->super._isUPlusOneSession != v3)
  {
    [(IDSGFTGL *)self setIsUPlusOneSession:v3];
    [(IDSGFTGL *)self _sendCallModeUpdateToQR];
    if (v3)
    {
      v8 = +[IDSStunRelayInterfaceInfoController sharedInstance];
      [v8 setRelayInterfaceInfoDeliveryStatus:self->super._cbuuid status:1];

      [(IDSGFTGL *)self _enableE2E];
    }

    else
    {
      [(IDSGFTGL *)self _disableE2E];
      pendingCommandRelayInterfaceInfoBlock = self->super._pendingCommandRelayInterfaceInfoBlock;
      self->super._pendingCommandRelayInterfaceInfoBlock = 0;
    }
  }
}

- (BOOL)_sendCallModeUpdateToQR
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(IDSQRProtoCallModeUpdateInfo);
  [(IDSQRProtoCallModeUpdateInfo *)v3 setModeGenCounter:self->super._callModeUpdateGenerationCounter];
  if (self->super._isUPlusOneSession)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  [(IDSQRProtoCallModeUpdateInfo *)v3 setFacetimeMode:v4];
  v5 = [(NSMutableDictionary *)self->super._tokenToCandidatePairs allValues];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 state];
        if ([v11 isActualRelayStunCandidatePair])
        {
          v13 = v12 == 4;
        }

        else
        {
          v13 = 0;
        }

        if (v13 && [v11 isQUIC])
        {
          v14 = [IDSQRProtoMessage alloc];
          v22 = @"gl-option-call-mode-update-info-key";
          v23 = v3;
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
          v16 = [(IDSQRProtoMessage *)v14 initWithType:37 candidatePair:v11 options:v15];

          v8 |= [v11 sendQUICCallModeUpdateRequest:v16];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v7);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

- (void)_discardCandidatePairsWithOption:(BOOL)a3 isReinitiating:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_virtualCandidatePairs;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(IDSGlobalLink *)self _notifyCandidatePairDisconnected:*(*(&v14 + 1) + 8 * v11++) withReason:11];
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  localRemoteRelayLinkIDToVirtualCandidatePairs = self->super._localRemoteRelayLinkIDToVirtualCandidatePairs;
  self->super._localRemoteRelayLinkIDToVirtualCandidatePairs = 0;

  v13.receiver = self;
  v13.super_class = IDSGFTGL;
  [(IDSGlobalLink *)&v13 _discardCandidatePairsWithOption:v5 isReinitiating:v4];
}

- (BOOL)_processRemovedLocalAddressList:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v40.receiver = self;
  v40.super_class = IDSGFTGL;
  v27 = [(IDSGlobalLink *)&v40 _processRemovedLocalAddressList:v4];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v4;
  v30 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  v5 = 0;
  if (v30)
  {
    v29 = *v37;
    do
    {
      v6 = 0;
      do
      {
        if (*v37 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = v6;
        v7 = [*(*(&v36 + 1) + 8 * v6) address];
        v8 = [v7 sa];

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v9 = self->_virtualCandidatePairs;
        v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v32 objects:v43 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v33;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v33 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v32 + 1) + 8 * i);
              v15 = [v14 local];
              v16 = IsSameIP(v8, [v15 address]);

              if (v16)
              {
                if (!v5)
                {
                  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
                }

                if (v14)
                {
                  v17 = v5 == 0;
                }

                else
                {
                  v17 = 1;
                }

                if (!v17)
                {
                  CFArrayAppendValue(v5, v14);
                }

                v18 = +[IDSFoundationLog GFTGL];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  v19 = [v14 candidatePairToken];
                  *buf = 138412290;
                  v42 = v19;
                  _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "[U+1] _processRemovedLocalAddressList: remove virtual candidate pair %@.", buf, 0xCu);
                }

                [(IDSGlobalLink *)self _notifyCandidatePairDisconnected:v14 withReason:1];
                v20 = localRemoteRelayLinkIDForVirtualStunCandidatePair([v14 relayLinkID], objc_msgSend(v14, "remoteRelayLinkID"));
                if (v20)
                {
                  localRemoteRelayLinkIDToVirtualCandidatePairs = self->super._localRemoteRelayLinkIDToVirtualCandidatePairs;
                  if (localRemoteRelayLinkIDToVirtualCandidatePairs)
                  {
                    CFDictionaryRemoveValue(localRemoteRelayLinkIDToVirtualCandidatePairs, v20);
                  }
                }
              }
            }

            v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v32 objects:v43 count:16];
          }

          while (v11);
        }

        v6 = v31 + 1;
      }

      while (v31 + 1 != v30);
      v30 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v30);
  }

  if ([(__CFArray *)v5 count])
  {
    [(NSMutableArray *)self->_virtualCandidatePairs removeObjectsInArray:v5];
    v22 = +[IDSFoundationLog GFTGL];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      virtualCandidatePairs = self->_virtualCandidatePairs;
      *buf = 138412290;
      v42 = virtualCandidatePairs;
      _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "[U+1] _processRemovedLocalAddressList: virtual candidate pairs: %@", buf, 0xCu);
    }

    v24 = +[IDSFoundationLog GFTGL];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = self->super._localRemoteRelayLinkIDToVirtualCandidatePairs;
      *buf = 138412290;
      v42 = v25;
      _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "[U+1] _processRemovedLocalAddressList: localRemoteRelayLinkID map: %@", buf, 0xCu);
    }

    [(IDSGFTGL *)self _sendRelayInterfaceInfo:0];
  }

  return v27;
}

- (void)manageDesignatedDestinations:(id)a3 relayGroupID:(id)a4 withType:(unsigned __int16)a5 sessionStateCounter:(unsigned int)a6 withClientContextBlob:(id)a7 identifier:(unint64_t)a8
{
  v58 = a5;
  v71 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v55 = self;
  [(NSMutableDictionary *)self->super._tokenToCandidatePairs allValues];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v14 = v66 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v63 objects:v70 count:16];
  if (!v15)
  {
    goto LABEL_12;
  }

  v16 = v15;
  v17 = *v64;
  while (2)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v64 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v63 + 1) + 8 * i);
      v20 = [v19 groupID];
      if ([v20 isEqualToString:v12])
      {
        v21 = [v19 state];

        if (v21 == 4)
        {
          v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v24 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v58];
          v25 = v24;
          if (v24)
          {
            CFDictionarySetValue(v23, @"gl-option-participant-update-request-type", v24);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1B088();
          }

          if ((v58 - 1) <= 3u)
          {
            v50 = v23;
            v51 = v14;
            v52 = v13;
            v53 = v12;
            v26 = [v19 URIToParticipantIDs];
            v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v59 = 0u;
            v60 = 0u;
            v61 = 0u;
            v62 = 0u;
            v54 = v11;
            v29 = v11;
            v30 = [v29 countByEnumeratingWithState:&v59 objects:v69 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = *v60;
              do
              {
                for (j = 0; j != v31; ++j)
                {
                  if (*v60 != v32)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v34 = *(*(&v59 + 1) + 8 * j);
                  v35 = [v26 objectForKey:v34];

                  if (v35)
                  {
                    v36 = [v26 objectForKeyedSubscript:v34];
                    [v27 addObjectsFromArray:v36];
                  }

                  else
                  {
                    [v28 addObject:v34];
                  }
                }

                v31 = [v29 countByEnumeratingWithState:&v59 objects:v69 count:16];
              }

              while (v31);
            }

            v37 = [v27 count];
            v38 = +[IDSFoundationLog GFTGL];
            v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
            if (!v37)
            {
              v13 = v52;
              if (v39)
              {
                *buf = 0;
                _os_log_impl(&dword_1A7AD9000, v38, OS_LOG_TYPE_DEFAULT, "manageDesignatedDestinations: couldn't find blocked participantIDs", buf, 2u);
              }

              v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
              v42 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v58];
              if (v42)
              {
                CFDictionarySetValue(v41, @"ids-stun-attribute-session-state-type", v42);
              }

              v43 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:6];
              v11 = v54;
              if (v43)
              {
                CFDictionarySetValue(v41, @"ids-stun-message-type", v43);
              }

              else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                sub_1A7E1B2C8();
              }

              WeakRetained = objc_loadWeakRetained(&v55->super._delegate);
              v48 = objc_opt_respondsToSelector();

              if (v48)
              {
                v49 = objc_loadWeakRetained(&v55->super._delegate);
                [v49 link:v55 didReceiveParticipantUpdate:v41 status:6];
              }

              v14 = v51;
              v22 = v51;
              v12 = v53;
              goto LABEL_63;
            }

            v13 = v52;
            v23 = v50;
            if (v39)
            {
              *buf = 138412290;
              v68 = v27;
              _os_log_impl(&dword_1A7AD9000, v38, OS_LOG_TYPE_DEFAULT, "manageDesignatedDestinations: blockedParticipantIDs: %@", buf, 0xCu);
            }

            v40 = v27;
            if (v40)
            {
              CFDictionarySetValue(v50, @"gl-option-participant-update-blocked-participantIDs", v40);
              v12 = v53;
              v11 = v54;
            }

            else
            {
              v12 = v53;
              v11 = v54;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                sub_1A7E1B118();
              }
            }

            if ([v28 count])
            {
              v44 = +[IDSFoundationLog GFTGL];
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v68 = v28;
                _os_log_impl(&dword_1A7AD9000, v44, OS_LOG_TYPE_DEFAULT, "manageDesignatedDestinations: couldn't find participantIDs for failureBlockedDestinations: %@", buf, 0xCu);
              }
            }

            v14 = v51;
          }

          if (v13)
          {
            CFDictionarySetValue(v23, @"gl-option-ids-context-blob-key", v13);
          }

          if (a8)
          {
            v45 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
            if (v45)
            {
              CFDictionarySetValue(v23, @"gl-option-ids-client-context-identifier-key", v45);
            }

            else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              sub_1A7E1B1A8();
            }
          }

          v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a6];
          if (v46)
          {
            CFDictionarySetValue(v23, @"gl-option-participant-update-request-counter", v46);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1B238();
          }

          if ([v19 isQUIC])
          {
            [v19 sendQUICParticipantUpdateRequestWithOptions:v23];
          }

          else
          {
            [v19 sendParticipantUpdateRequest:0 options:v23];
          }

          v22 = v14;
          goto LABEL_63;
        }
      }

      else
      {
      }
    }

    v16 = [v14 countByEnumeratingWithState:&v63 objects:v70 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_12:

  v22 = +[IDSFoundationLog GFTGL];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "manageDesignatedDestinations: couldn't find a connected candidatePair for sendParticipantUpdateRequest", buf, 2u);
  }

LABEL_63:
}

- (void)removeParticipantIDs:(id)a3 relayGroupID:(id)a4 sessionStateCounter:(unsigned int)a5
{
  v5 = *&a5;
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  [(NSMutableDictionary *)self->super._tokenToCandidatePairs allValues];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = v27 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = [v15 groupID];
        if ([v16 isEqualToString:v9])
        {
          v17 = [v15 state];

          if (v17 == 4)
          {
            v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
            CFDictionarySetValue(v19, @"gl-option-participant-update-request-type", &unk_1F1B20198);
            v20 = [v8 allObjects];
            v21 = v20;
            if (v20)
            {
              CFDictionarySetValue(v19, @"gl-option-participant-update-blocked-participantIDs", v20);
            }

            else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              sub_1A7E1B118();
            }

            v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
            if (v22)
            {
              CFDictionarySetValue(v19, @"gl-option-participant-update-request-counter", v22);
            }

            else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              sub_1A7E1B238();
            }

            if ([v15 isQUIC])
            {
              [v15 sendQUICParticipantUpdateRequestWithOptions:v19];
            }

            else
            {
              [v15 sendParticipantUpdateRequest:0 options:v19];
            }

            v18 = v10;
            goto LABEL_26;
          }
        }

        else
        {
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v18 = +[IDSFoundationLog GFTGL];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "removeParticipantIDs: couldn't find a connected candidatePair for sendParticipantUpdateRequest", v23, 2u);
  }

LABEL_26:
}

- (void)_destroyVirtualRelayLinksForCandidatePair:(id)a3 withReason:(unsigned __int8)a4
{
  v23 = a4;
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = self;
    v6 = self->_virtualCandidatePairs;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v25 = 0;
      v9 = *v27;
      while (1)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v26 + 1) + 8 * i);
          v12 = [v11 sessionID];
          v13 = [v5 sessionID];
          if ([v12 isEqualToString:v13])
          {
            v14 = [v11 relayLinkID];
            v15 = [v5 relayLinkID];

            if (v14 != v15)
            {
              continue;
            }

            v16 = v25;
            if (!v25)
            {
              v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            v25 = v16;
            if (v11 && v16)
            {
              CFArrayAppendValue(v16, v11);
            }

            v17 = +[IDSFoundationLog GFTGL];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = [v11 candidatePairToken];
              *buf = 138412290;
              v31 = v18;
              _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "[U+1] _destroyVirtualRelayLinksForCandidatePair: remove virtual candidate pair %@.", buf, 0xCu);
            }

            [(IDSGlobalLink *)v24 _notifyCandidatePairDisconnected:v11 withReason:v23];
            v12 = localRemoteRelayLinkIDForVirtualStunCandidatePair([v11 relayLinkID], objc_msgSend(v11, "remoteRelayLinkID"));
            if (v12)
            {
              localRemoteRelayLinkIDToVirtualCandidatePairs = v24->super._localRemoteRelayLinkIDToVirtualCandidatePairs;
              if (localRemoteRelayLinkIDToVirtualCandidatePairs)
              {
                CFDictionaryRemoveValue(localRemoteRelayLinkIDToVirtualCandidatePairs, v12);
              }
            }
          }

          else
          {
          }
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v26 objects:v32 count:16];
        if (!v8)
        {
          goto LABEL_27;
        }
      }
    }

    v25 = 0;
LABEL_27:

    if ([(__CFArray *)v25 count])
    {
      [(NSMutableArray *)v24->_virtualCandidatePairs removeObjectsInArray:v25];
      v21 = +[IDSFoundationLog GFTGL];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        virtualCandidatePairs = v24->_virtualCandidatePairs;
        *buf = 138412290;
        v31 = virtualCandidatePairs;
        _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "[U+1] _destroyVirtualRelayLinksForCandidatePair: virtual candidate pairs: %@", buf, 0xCu);
      }

      [(IDSGFTGL *)v24 _sendRelayInterfaceInfo:0];
      v20 = v25;
    }

    else
    {
      v20 = v25;
    }
  }

  else
  {
    v20 = +[IDSFoundationLog GFTGL];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "[U+1] _destroyVirtualRelayLinksForCandidatePair: invalid candidatePair, return", buf, 2u);
    }
  }
}

- (void)updateURIToParticipantIDs:(id)a3 relaySessionID:(id)a4 sessionInfo:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v29 = self;
  [(NSMutableDictionary *)self->super._tokenToCandidatePairs allValues];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v34 = 0u;
  v11 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        v16 = [v15 sessionID];
        if ([(IDSQuickRelaySessionInfo *)v16 isEqualToString:v9])
        {
          v17 = [v15 groupID];
          v18 = [v17 isEqualToString:v8];

          if (!v18)
          {
            continue;
          }

          v19 = +[IDSFoundationLog GFTGL];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v36 = v8;
            v37 = 2112;
            v38 = v9;
            _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "updateURIToParticipantIDs for group %@, session %@.", buf, 0x16u);
          }

          [v15 updateURIToParticipantIDMapping:v10];
          v16 = objc_alloc_init(IDSQuickRelaySessionInfo);
          v20 = [(IDSQuickRelaySessionInfo *)v16 parseSessionInfo:v10];
          v21 = +[IDSFoundationLog GFTGL];
          v22 = v21;
          if (v20)
          {
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 134217984;
              v36 = v20;
              _os_log_error_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_ERROR, "updateURIToParticipantIDs failed with error: %ld.", buf, 0xCu);
            }
          }

          else
          {
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v23 = [v15 candidatePairToken];
              *buf = 138412290;
              v36 = v23;
              _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "updateURIToParticipantIDs updating session info for %@", buf, 0xCu);
            }

            [v15 setPropertiesWithRelaySessionInfo:v16 sessionInfoDict:v10 enableSKE:{objc_msgSend(v15, "enableSKE")}];
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v12);
  }

  v24 = [(NSMutableDictionary *)v29->super._sessionsByID objectForKeyedSubscript:v9];
  if (v24)
  {
    v25 = objc_alloc_init(IDSQuickRelaySessionInfo);
    v26 = [(IDSQuickRelaySessionInfo *)v25 parseSessionInfo:v10];
    v27 = +[IDSFoundationLog GFTGL];
    v28 = v27;
    if (v26)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E1B358();
      }
    }

    else
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v9;
        _os_log_impl(&dword_1A7AD9000, v28, OS_LOG_TYPE_DEFAULT, "updateURIToParticipantIDs updating session info for session %@", buf, 0xCu);
      }

      [v24 setSessionInfo:v25 sessionInfoDict:v10];
    }
  }
}

- (void)setPluginCache:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSFoundationLog GFTGL];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "setPluginCache: pluginNameToPluginOptionsDict %@", &v8, 0xCu);
  }

  v6 = [v4 mutableCopy];
  pluginNameToPluginOptionsDict = self->super._pluginNameToPluginOptionsDict;
  self->super._pluginNameToPluginOptionsDict = v6;
}

- (void)setParticipantType:(unsigned __int16)a3 relayGroupID:(id)a4 sessionStateCounter:(unsigned int)a5 withClientContextBlob:(id)a6 identifier:(unint64_t)a7
{
  v8 = *&a5;
  v10 = a3;
  v23 = *MEMORY[0x1E69E9840];
  isLightweightParticipant = self->super._isLightweightParticipant;
  self->super._isLightweightParticipant = a3 == 0;
  v13 = a6;
  v14 = a4;
  v15 = +[IDSFoundationLog GFTGL];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = @"NO";
    if (isLightweightParticipant)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    if (self->super._isLightweightParticipant)
    {
      v16 = @"YES";
    }

    v19 = 138412546;
    v20 = v17;
    v21 = 2112;
    v22 = v16;
    _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "setParticipantType: lightweight %@ -> lightweight %@", &v19, 0x16u);
  }

  if (v10)
  {
    v18 = 8;
  }

  else
  {
    v18 = 7;
  }

  [(IDSGFTGL *)self manageDesignatedDestinations:0 relayGroupID:v14 withType:v18 sessionStateCounter:v8 withClientContextBlob:v13 identifier:a7];
}

- (void)sendKeyMaterialMessageData:(id)a3 relayGroupID:(id)a4 destinationURIs:(id)a5 completionHandler:(id)a6
{
  v78 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[IDSFoundationLog GFTGL];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    isUPlusOneSession = self->super._isUPlusOneSession;
    *buf = 138413058;
    if (isUPlusOneSession)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    *v73 = v16;
    *&v73[8] = 2112;
    *&v73[10] = v11;
    v74 = 2112;
    v75 = v12;
    v76 = 2112;
    v77 = v10;
    _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "sendKeyMaterialMessageData isUPlusOneSession %@ relayGroupID %@ destinationURIs %@ keyMaterialMessageData %@", buf, 0x2Au);
  }

  if (!self->super._isUPlusOneSession)
  {
    v43 = +[IDSFoundationLog GFTGL];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v44 = "[U+1] sendKeyMaterialMessageData This is not U+1, returning.";
      v45 = v43;
      v46 = 2;
LABEL_43:
      _os_log_impl(&dword_1A7AD9000, v45, OS_LOG_TYPE_DEFAULT, v44, buf, v46);
    }

LABEL_44:

    v13[2](v13, 2);
    goto LABEL_49;
  }

  if (!v10 || !v11)
  {
    v43 = +[IDSFoundationLog GFTGL];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v73 = v10;
      *&v73[8] = 2112;
      *&v73[10] = v11;
      v44 = "[U+1] sendKeyMaterialMessageData Invalid params {keyMaterialMessageData: %@, relayGroupID: %@}";
      v45 = v43;
      v46 = 22;
      goto LABEL_43;
    }

    goto LABEL_44;
  }

  v70[0] = @"p";
  v70[1] = @"r";
  v71[0] = v10;
  v71[1] = v11;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:2];
  v57 = JWEncodeDictionary();
  objc_storeStrong(&self->_keyMaterialData, v57);
  v56 = v13;
  v18 = _Block_copy(v13);
  keyMaterialSentHandler = self->_keyMaterialSentHandler;
  self->_keyMaterialSentHandler = v18;

  v20 = +[IDSFoundationLog GFTGL];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v57 length];
    *buf = 67109378;
    *v73 = v21;
    *&v73[4] = 2112;
    *&v73[6] = v17;
    _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "sendKeyMaterialMessageData keyMaterialData size = %d from %@", buf, 0x12u);
  }

  v22 = +[IDSStunRelayInterfaceInfoController sharedInstance];
  v23 = [v22 relayInterfaceInfoDeliveryStatus:self->super._cbuuid];

  if (!v23)
  {
    v24 = +[IDSStunRelayInterfaceInfoController sharedInstance];
    [v24 setRelayInterfaceInfoDeliveryStatus:self->super._cbuuid status:1];
  }

  [(NSMutableDictionary *)self->super._tokenToCandidatePairs allValues];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v25 = v67 = 0u;
  v26 = [v25 countByEnumeratingWithState:&v64 objects:v69 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v65;
    v50 = self;
    v51 = v10;
    v54 = v12;
    v55 = v11;
    v52 = v25;
    v53 = v17;
    v49 = *v65;
    do
    {
      v29 = 0;
      v58 = v27;
      do
      {
        if (*v65 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v64 + 1) + 8 * v29);
        if ([v30 isSharedQRSession])
        {
          v31 = [v30 groupID];
          if (![v31 isEqualToString:v11])
          {
            goto LABEL_35;
          }

          v32 = [v30 state];

          v33 = v32 == 4;
          v27 = v58;
          if (v33)
          {
            v31 = [v30 URIToParticipantIDs];
            v34 = +[IDSFoundationLog GFTGL];
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *v73 = v31;
              _os_log_impl(&dword_1A7AD9000, v34, OS_LOG_TYPE_DEFAULT, "sendKeyMaterialMessageData URIToParticipantIDs = %@", buf, 0xCu);
            }

            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            obj = v12;
            v35 = [obj countByEnumeratingWithState:&v60 objects:v68 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v61;
              while (2)
              {
                for (i = 0; i != v36; ++i)
                {
                  if (*v61 != v37)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v39 = *(*(&v60 + 1) + 8 * i);
                  v40 = [v39 _stripPotentialTokenURIWithToken:0];
                  v41 = [v31 objectForKey:v40];
                  v42 = +[IDSFoundationLog GFTGL];
                  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412802;
                    *v73 = v39;
                    *&v73[8] = 2112;
                    *&v73[10] = v40;
                    v74 = 2112;
                    v75 = v41;
                    _os_log_impl(&dword_1A7AD9000, v42, OS_LOG_TYPE_DEFAULT, "sendKeyMaterialMessageData destinationURI = %@, strippedDestinationURI = %@, participantIDs = %@", buf, 0x20u);
                  }

                  if ([v41 count])
                  {
                    v47 = +[IDSFoundationLog GFTGL];
                    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                    {
                      v48 = [v30 candidatePairToken];
                      *buf = 138412802;
                      *v73 = v48;
                      *&v73[8] = 2112;
                      *&v73[10] = v41;
                      v74 = 2112;
                      v75 = v40;
                      _os_log_impl(&dword_1A7AD9000, v47, OS_LOG_TYPE_DEFAULT, "sendKeyMaterialMessageData found candidatePair %@ with participantIDs %@ for destinationURI %@", buf, 0x20u);
                    }

                    [(IDSGFTGL *)v50 _sendRelayInterfaceInfo:0];
                    v10 = v51;
                    v25 = v52;
                    v12 = v54;
                    v11 = v55;
                    v17 = v53;
                    goto LABEL_48;
                  }
                }

                v36 = [obj countByEnumeratingWithState:&v60 objects:v68 count:16];
                if (v36)
                {
                  continue;
                }

                break;
              }
            }

            v12 = v54;
            v11 = v55;
            v25 = v52;
            v17 = v53;
            v28 = v49;
            v27 = v58;
LABEL_35:
          }
        }

        ++v29;
      }

      while (v29 != v27);
      v27 = [v25 countByEnumeratingWithState:&v64 objects:v69 count:16];
      v10 = v51;
    }

    while (v27);
  }

LABEL_48:

  v13 = v56;
LABEL_49:
}

- (void)_discardKeyMaterialMessage:(int64_t)a3
{
  keyMaterialData = self->_keyMaterialData;
  self->_keyMaterialData = 0;

  self->_keyMaterialDataCounter = -1;
  keyMaterialSentHandler = self->_keyMaterialSentHandler;
  if (keyMaterialSentHandler)
  {
    keyMaterialSentHandler[2](keyMaterialSentHandler, a3);
    v7 = self->_keyMaterialSentHandler;
    self->_keyMaterialSentHandler = 0;
  }
}

- (void)reportLinkMetricsForLinkID:(unsigned __int8)a3 lastPacketReceivedTime:(double)a4 lastPacketSentTime:(double)a5
{
  if (self->super._maxLinkID > a3 && (v7 = self->super._candidatePairs[a3]) != 0)
  {
    v8 = v7;
    if ([(IDSStunCandidatePair *)v7 isP2P])
    {
      lastP2PPacketReceivedTime = self->_lastP2PPacketReceivedTime;
      if (lastP2PPacketReceivedTime < a4)
      {
        lastP2PPacketReceivedTime = a4;
      }

      self->_lastP2PPacketReceivedTime = lastP2PPacketReceivedTime;
      [(IDSGFTGL *)self _checkIfQRLinkIsDownButP2PLinkIsUp];
    }
  }

  else
  {
    v10 = +[IDSFoundationLog GFTGL];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1B3CC();
    }

    v8 = 0;
  }
}

- (void)didReceiveProtobufPacketForLinkID:(unsigned __int8)a3
{
  if (self->super._maxLinkID > a3 && (v4 = self->super._candidatePairs[a3]) != 0)
  {
    p_super = &v4->super;
    if ([(IDSStunCandidatePair *)v4 isQUIC])
    {
      lastQRPacketReceivedTime = self->_lastQRPacketReceivedTime;
      v7 = ids_monotonic_time();
      if (lastQRPacketReceivedTime >= v7)
      {
        v7 = lastQRPacketReceivedTime;
      }

      self->_lastQRPacketReceivedTime = v7;
      [(IDSGFTGL *)self _checkIfQRLinkIsDownButP2PLinkIsUp];
    }

    else
    {
      v8 = +[IDSFoundationLog GFTGL];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E1B440();
      }
    }
  }

  else
  {
    p_super = +[IDSFoundationLog GFTGL];
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1B4B4();
    }
  }
}

- (void)_checkIfQRLinkIsDownButP2PLinkIsUp
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = ids_monotonic_time();
  lastP2PPacketReceivedTime = self->_lastP2PPacketReceivedTime;
  lastQRPacketReceivedTime = self->_lastQRPacketReceivedTime;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(NSMutableDictionary *)self->super._tokenToCandidatePairs allValues];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (!v7)
  {
LABEL_16:

    return;
  }

  v8 = v7;
  v9 = 0;
  v10 = v3 - lastP2PPacketReceivedTime;
  v11 = v3 - lastQRPacketReceivedTime;
  v12 = *v17;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v17 != v12)
      {
        objc_enumerationMutation(v6);
      }

      v14 = *(*(&v16 + 1) + 8 * i);
      if ([v14 isQUIC])
      {
        v9 |= [v14 state] == 4;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v16 objects:v26 count:16];
  }

  while (v8);

  if ((v9 & 1) != 0 && v10 < 5.0 && v11 >= 25.0)
  {
    v15 = +[IDSFoundationLog GFTGL];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v21 = @"YES";
      v22 = 2048;
      v23 = v10;
      v24 = 2048;
      v25 = v11;
      _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "_checkIfQRLinkIsDownButP2PLinkIsUp: has active QUIC: %@, last P2P: %f, last QR: %f", buf, 0x20u);
    }

    v6 = [(IDSGFTMetricsCollector *)self->super._metricsCollector error:@"gl"];
    [v6 event:@"p2p-but-no-qr"];
    goto LABEL_16;
  }
}

- (BOOL)_postProcessQUICAllocbindResponse:(id)a3 candidatePair:(id)a4
{
  v148 = *MEMORY[0x1E69E9840];
  v122 = a3;
  v123 = a4;
  v116 = [v123 candidatePairToken];
  v5 = [v122 channelSettings];
  if (v5)
  {
    [v123 setChannelSettings:v5];
  }

  v119 = [(NSMutableDictionary *)self->super._tokenToCandidatePairs allValues];
  v6 = +[IDSFoundationLog GFTGL];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v141 = v119;
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "current candidate pairs: %@", buf, 0xCu);
  }

  v118 = GLUtilGetDifferentRelayCandidatePairSucceeded(v123, v119);
  v7 = [v118 local];
  v8 = [v7 transport];

  v9 = [v123 local];
  v10 = [v9 transport];

  v11 = [v123 local];
  v115 = -[IDSGlobalLink _interfaceNameForInterfaceIndexIncludingVPN:](self, "_interfaceNameForInterfaceIndexIncludingVPN:", [v11 index]);

  v12 = [v123 linkEngine];

  if (v12)
  {
    v13 = [v123 linkEngine];
    v14 = [v123 linkUniqueName];
    v15 = [v13 isLinkConnecting:v14];

    if ((v15 & 1) == 0)
    {
      v16 = +[IDSFoundationLog GFTGL];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v123 linkUniqueName];
        *buf = 138412290;
        v141 = v17;
        _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "discard current pair because it should no longer be connecting: %@", buf, 0xCu);
      }

      [(IDSGlobalLink *)self _sendUnallocbindRequest:v116 stunMessage:0 reason:8];
      goto LABEL_109;
    }

    goto LABEL_26;
  }

  if (v118)
  {
    if (self->super._cellInterfaceName)
    {
      v18 = [v123 local];
      if ([v18 isCellularStunCandidate])
      {
        v19 = [(__CFString *)v115 isEqualToIgnoringCase:self->super._cellInterfaceName];

        if (v19)
        {
          v20 = [IDSServerBag sharedInstanceForBagType:0];
          v21 = [v20 objectForKey:@"ids-delay-for-cellular-default-and-slicing"];

          if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v22 = [v21 unsignedIntegerValue];
            v23 = +[IDSFoundationLog GFTGL];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              cellInterfaceName = self->super._cellInterfaceName;
              *buf = 138413058;
              v141 = v115;
              v142 = 2112;
              v143 = cellInterfaceName;
              v144 = 2112;
              v145 = v118;
              v146 = 1024;
              v147 = v22;
              _os_log_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_DEFAULT, "Sliced Cellular Interface - currentInterfaceName %@ _cellInterfaceName %@ will discard existing pair: %@ in %u seconds.", buf, 0x26u);
            }

            v25 = [MEMORY[0x1E6995700] weakRefWithObject:self];
            v26 = dispatch_time(0, 1000000000 * v22);
            v27 = im_primary_queue();
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = sub_1A7C01274;
            block[3] = &unk_1E77E0C88;
            v28 = v25;
            v136 = v28;
            v137 = v118;
            dispatch_after(v26, v27, block);
          }

          else
          {
            v106 = +[IDSFoundationLog GFTGL];
            if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
            {
              v107 = self->super._cellInterfaceName;
              *buf = 138412802;
              v141 = v115;
              v142 = 2112;
              v143 = v107;
              v144 = 2112;
              v145 = v118;
              _os_log_impl(&dword_1A7AD9000, v106, OS_LOG_TYPE_DEFAULT, "Sliced Cellular Interface - currentInterfaceName %@ _cellInterfaceName %@ discard existing pair: %@.", buf, 0x20u);
            }

            v28 = [v118 candidatePairToken];
            [(IDSGlobalLink *)self _sendUnallocbindRequest:v28 stunMessage:0 reason:13];
          }

LABEL_25:
          goto LABEL_26;
        }
      }

      else
      {
      }
    }

    if (v8 <= v10 && ([v123 isRealloc] & 1) == 0)
    {
      v105 = +[IDSFoundationLog GFTGL];
      if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        v141 = v8;
        v142 = 2048;
        v143 = v10;
        v144 = 2112;
        v145 = v123;
        _os_log_impl(&dword_1A7AD9000, v105, OS_LOG_TYPE_DEFAULT, "succeededTransport %ld currentTransport %ld discard current pair: %@", buf, 0x20u);
      }

      [(IDSGlobalLink *)self _sendUnallocbindRequest:v116 stunMessage:0 reason:8];
      goto LABEL_109;
    }

    v29 = +[IDSFoundationLog GFTGL];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v141 = v8;
      v142 = 2048;
      v143 = v10;
      v144 = 2112;
      v145 = v118;
      _os_log_impl(&dword_1A7AD9000, v29, OS_LOG_TYPE_DEFAULT, "succeededTransport %ld currentTransport %ld discard existing pair: %@.", buf, 0x20u);
    }

    v21 = [v118 candidatePairToken];
    [(IDSGlobalLink *)self _sendUnallocbindRequest:v21 stunMessage:0 reason:8];
    goto LABEL_25;
  }

LABEL_26:
  v30 = [v123 hbhEncKey];
  if (!v30 || ([v123 hbhDecKey], v31 = objc_claimAutoreleasedReturnValue(), v32 = v31 == 0, v31, v30, v32))
  {
    v33 = [v123 relaySessionKey];
    v34 = [v123 sessionID];
    v35 = [v123 participantID];
    v36 = [v123 hbhSalt];
    v37 = IDSLinkHBHDeriveHKDFSha256Keys(v33, v34, v35, v36);

    if (v37)
    {
      v38 = [v37 subdataWithRange:{0, 32}];
      v39 = [v37 subdataWithRange:{32, 32}];
      [v123 setHbhEncKey:v38];
      [v123 setHbhDecKey:v39];
    }

    else
    {
      v38 = +[IDSFoundationLog GFTGL];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E1B528();
      }
    }
  }

  if ([v122 hasIsNewlyJoined])
  {
    v40 = +[IDSFoundationLog GFTGL];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = [v122 isNewlyJoined];
      v42 = @"NO";
      if (v41)
      {
        v42 = @"YES";
      }

      *buf = 138412546;
      v141 = v42;
      v142 = 2112;
      v143 = v123;
      _os_log_impl(&dword_1A7AD9000, v40, OS_LOG_TYPE_DEFAULT, "isNewlyJoined:%@ for candidatePair: %@.", buf, 0x16u);
    }

    if ([v122 isNewlyJoined])
    {
      [v123 setIsNewlyJoined:1];
    }
  }

  [(IDSGlobalLink *)self _notifyQRSessionConnected:v123];
  v43 = self;
  if (self->super._isUPlusOneSession)
  {
    [(IDSGFTGL *)self _sendRelayInterfaceInfo:v116];
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v44 = self->_remoteCandidatePairs;
    v45 = [(NSArray *)v44 countByEnumeratingWithState:&v131 objects:v139 count:16];
    if (v45)
    {
      v46 = *v132;
      do
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v132 != v46)
          {
            objc_enumerationMutation(v44);
          }

          [(IDSGFTGL *)self _setupVirtualCandidatePairs:v123 remoteCandidatePair:*(*(&v131 + 1) + 8 * i)];
        }

        v45 = [(NSArray *)v44 countByEnumeratingWithState:&v131 objects:v139 count:16];
      }

      while (v45);
    }

    v43 = self;
  }

  v48 = [(NSMutableDictionary *)v43->super._tokenToCandidatePairs allValues];
  v117 = GLUtilGetRelayCandidatePairNotSucceededForOppositeIPVersion(v123, v48);

  if (v117)
  {
    v49 = GLUCreateIPVersionFailureEvent(v117);
    v50 = [v117 local];
    if (*([v50 address] + 1) == 2)
    {
      v51 = @"IPv4";
    }

    else
    {
      v51 = @"IPv6";
    }

    v52 = v51;

    v53 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v141 = v52;
      _os_log_impl(&dword_1A7AD9000, v53, OS_LOG_TYPE_DEFAULT, "RTC reports: add %@ setup failure", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v108 = v52;
        _IDSLogTransport(@"GL", @"IDS", @"RTC reports: add %@ setup failure");
        if (_IDSShouldLog())
        {
          v108 = v52;
          _IDSLogV(0, @"IDSFoundation", @"GL", @"RTC reports: add %@ setup failure");
        }
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->super._delegate);
    v55 = objc_opt_respondsToSelector();

    if (v55)
    {
      v56 = objc_loadWeakRetained(&self->super._delegate);
      [v56 link:self didAddQREvent:v49];
    }
  }

  v57 = [v123 linkID];
  v58 = ProtoUtilProcessStreamInfo(v122, v57, v57);
  v59 = v58;
  Value = 0;
  if (v58 && @"stream-info-peer-published-streams")
  {
    Value = CFDictionaryGetValue(v58, @"stream-info-peer-published-streams");
  }

  v61 = StunUtilProcessParticipants(Value, [v123 participantID], self->super._isLightweightParticipant);
  v62 = ProtoUtilProcessLightweightParticipants(v122);
  v63 = [v122 leftParticipants];
  v64 = ProtoUtilProcessLeftParticipants(v63, v61, v62);

  v65 = [v122 joinedParticipants];
  v66 = ProtoUtilProcessjoinedParticipants(v65, v61, v62);

  v67 = [v122 updatedParticipants];
  v68 = ProtoUtilProcessUpdatedParticipants(v67, v61, v62);

  if ([v61 count] >= 2)
  {
    self->super._isSecondOrLaterParticipant = 1;
    if (!self->super._receivedAllocbindResponse)
    {
      v69 = ids_monotonic_time();
      theDict = GLUCreateQRClientTimeEvent(311, 0, v123, 0, v69);
      v70 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v70, OS_LOG_TYPE_DEFAULT, "RTC reports: add first allocbind response", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"RTC reports: add first allocbind response");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"RTC reports: add first allocbind response");
          }
        }
      }

      v71 = objc_loadWeakRetained(&self->super._delegate);
      v72 = objc_opt_respondsToSelector();

      if (v72)
      {
        v73 = objc_loadWeakRetained(&self->super._delegate);
        [v73 link:self didAddQREvent:theDict];
      }

      self->super._receivedAllocbindResponse = 1;
    }
  }

  theDicta = objc_alloc_init(MEMORY[0x1E695DF90]);
  v74 = v59;
  if (v59)
  {
    v75 = v74;
    CFDictionarySetValue(theDicta, @"gl-option-sessioninfo-response-streaminfo-key", v74);
    v74 = v75;
  }

  v114 = v74;

  v76 = v61;
  if (v76)
  {
    v77 = v76;
    CFDictionarySetValue(theDicta, @"gl-option-sessioninfo-response-participants-key", v76);
    v76 = v77;
  }

  v113 = v76;

  v78 = v62;
  if (v78)
  {
    v79 = v78;
    CFDictionarySetValue(theDicta, @"gl-option-sessioninfo-response-lightweight-participants-key", v78);
    v78 = v79;
  }

  v111 = v78;

  v80 = v66;
  if (v80)
  {
    v81 = v80;
    CFDictionarySetValue(theDicta, @"gl-option-sessioninfo-response-joined-participant-info-key", v80);
    v80 = v81;
  }

  v112 = v80;

  v82 = v64;
  if (v82)
  {
    v83 = v82;
    CFDictionarySetValue(theDicta, @"gl-option-sessioninfo-response-left-participant-info-key", v82);
    v82 = v83;
  }

  v109 = v82;

  v84 = v68;
  if (v84)
  {
    v85 = v84;
    CFDictionarySetValue(theDicta, @"gl-option-sessioninfo-response-updated-participant-info-key", v84);
    v84 = v85;
  }

  v110 = v84;

  v86 = [v123 groupID];
  v87 = [v123 sessionID];
  [(IDSGlobalLink *)self _notifySessionInfoReceived:theDicta relayGroupID:v86 relaySessionID:v87 status:0];

  v88 = [v123 sessionID];
  [v123 initParticipantIDMap:0];
  v89 = [v123 groupID];
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v90 = v119;
  v91 = [(__CFString *)v90 countByEnumeratingWithState:&v127 objects:v138 count:16];
  if (v91)
  {
    v92 = *v128;
    do
    {
      for (j = 0; j != v91; ++j)
      {
        if (*v128 != v92)
        {
          objc_enumerationMutation(v90);
        }

        v94 = *(*(&v127 + 1) + 8 * j);
        v95 = [v94 sessionID];
        if ([v95 isEqualToString:v88])
        {
          v96 = [v94 groupID];
          if ([v96 isEqualToString:v89] && objc_msgSend(v94, "state") == 4)
          {
            v97 = [v94 isSharedQRSession];

            if (!v97)
            {
              continue;
            }

            v95 = [(NSMutableDictionary *)self->super._pluginParticipantIDs allKeys];
            [v94 updateParticipantIDMap:v95];
          }

          else
          {
          }
        }
      }

      v91 = [(__CFString *)v90 countByEnumeratingWithState:&v127 objects:v138 count:16];
    }

    while (v91);
  }

  if ([v122 hasSessionStateCounter])
  {
    v98 = [v122 sessionStateCounter];
    if (v98)
    {
      v99 = objc_loadWeakRetained(&self->super._delegate);
      v100 = objc_opt_respondsToSelector();

      if (v100)
      {
        v101 = objc_loadWeakRetained(&self->super._delegate);
        [v101 link:self didReceiveSessionStateCounter:v98];
      }
    }
  }

  v102 = [v123 linkEngine];
  v103 = v102 == 0;

  if (v103)
  {
    v125[0] = MEMORY[0x1E69E9820];
    v125[1] = 3221225472;
    v125[2] = sub_1A7C01384;
    v125[3] = &unk_1E77E0250;
    v125[4] = self;
    v126 = v123;
    IDSTransportThreadAddBlockAfter(v125, 1.0);
  }

LABEL_109:
  return 1;
}

- (BOOL)_IsExtIPDiscoveryNeeded:(sockaddr *)a3 candidatePairList:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (self->super._sharedSessionHasJoined && self->super._isUPlusOneSession && !self->super._ipDiscoveryDisabled)
  {
    v13.receiver = self;
    v13.super_class = IDSGFTGL;
    v11 = [(IDSGlobalLink *)&v13 _IsExtIPDiscoveryNeeded:a3 candidatePairList:v6];
  }

  else
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (self->super._sharedSessionHasJoined)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      if (self->super._isUPlusOneSession)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      if (self->super._ipDiscoveryDisabled)
      {
        v8 = @"YES";
      }

      *buf = 138412802;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "external IP discovery is not needed: _sharedSessionHasJoined: %@, _isUPlusOneSession: %@, _ipDiscoveryDisabled: %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"external IP discovery is not needed: _sharedSessionHasJoined: %@, _isUPlusOneSession: %@, _ipDiscoveryDisabled: %@");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"external IP discovery is not needed: _sharedSessionHasJoined: %@, _isUPlusOneSession: %@, _ipDiscoveryDisabled: %@");
        }
      }
    }

    v11 = 0;
  }

  return v11;
}

- (void)setCellInterfaceName:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    [(IDSNWLink *)self->super._nwLink setCellInterfaceName:v5];
    objc_storeStrong(&self->super._cellInterfaceName, a3);
    v6 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "setCellInterfaceName: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v9 = v5;
        _IDSLogTransport(@"GL", @"IDS", @"setCellInterfaceName: %@");
        if (_IDSShouldLog())
        {
          v9 = v5;
          _IDSLogV(0, @"IDSFoundation", @"GL", @"setCellInterfaceName: %@");
        }
      }
    }

    if (self->super._hasStarted)
    {
      v7 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "setCellInterfaceName: updating interfaces...", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"setCellInterfaceName: updating interfaces...");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"setCellInterfaceName: updating interfaces...");
          }
        }
      }

      [(IDSGlobalLink *)self handleNetworkAddressChanges:1 hasIPv6AddressChange:1, v9];
    }

    else
    {
      v8 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "setCellInterfaceName: not updating interfaces because _hasStarted is NO.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"setCellInterfaceName: not updating interfaces because _hasStarted is NO.");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"setCellInterfaceName: not updating interfaces because _hasStarted is NO.");
          }
        }
      }
    }
  }
}

@end