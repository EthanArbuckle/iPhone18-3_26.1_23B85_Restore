@interface IDSNonFTGL
- (BOOL)_isBetterCandidatePair:(id)pair newCandidatePair:(id)candidatePair;
- (BOOL)_processRemovedLocalAddressList:(id)list;
- (BOOL)_setupNewQRLinkIfNecessary:(id)necessary;
- (id)_nextConnectedCandidatePair;
- (id)linkEngineForSessionInfo:(id)info;
- (void)_didCreateSession:(id)session;
- (void)_handleNoRemotePacket;
- (void)_notifyCandidatePairConnected:(id)connected;
- (void)_notifyCandidatePairDisconnected:(id)disconnected withReason:(unsigned __int8)reason;
- (void)_selectBetterDefaultCandidatePair:(id)pair;
- (void)_selectDefaultCandidatePair;
- (void)_setDefaultCandidatePairForNonFT;
- (void)_setFirstDefaultCandidatePair:(id)pair;
- (void)_startHB:(id)b;
- (void)_willUpdateLinksForSession:(id)session;
- (void)disconnectWithCompletionHandler:(id)handler isReinitiating:(BOOL)reinitiating;
- (void)invalidate;
- (void)startWithOptions:(id)options;
@end

@implementation IDSNonFTGL

- (void)startWithOptions:(id)options
{
  v19 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  Value = 0;
  if (optionsCopy && @"gl-option-client-type")
  {
    Value = CFDictionaryGetValue(optionsCopy, @"gl-option-client-type");
  }

  unsignedIntValue = [Value unsignedIntValue];
  self->super._clientType = unsignedIntValue;
  self->super._useSecureControlMessage = 1;
  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(selfCopy) = unsignedIntValue;
    _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "enable secure control message for client type: %u.", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v12 = unsignedIntValue;
      _IDSLogTransport(@"GL", @"IDS", @"enable secure control message for client type: %u.");
      if (_IDSShouldLog())
      {
        v12 = unsignedIntValue;
        _IDSLogV(0, @"IDSFoundation", @"GL", @"enable secure control message for client type: %u.");
      }
    }
  }

  v8 = +[IDSFoundationLog NonFTGL];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    idsSessionID = self->super._idsSessionID;
    *buf = 138412546;
    selfCopy = self;
    v17 = 2112;
    v18 = idsSessionID;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "Start GL %@ for IDSSessionID: %@ (FaceTime:NO, isMultiway:NO).", buf, 0x16u);
  }

  if (IMGetDomainBoolForKey())
  {
    self->super._startPort = 16393;
    self->super._portRange = 10;
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(selfCopy) = unsignedIntValue;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "Use FaceTime port range (with UseFaceTimePortRange defaults) for clientType %u.", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v13 = unsignedIntValue;
        _IDSLogTransport(@"GL", @"IDS", @"Use FaceTime port range (with UseFaceTimePortRange defaults) for clientType %u.");
        if (_IDSShouldLog())
        {
          v13 = unsignedIntValue;
          _IDSLogV(0, @"IDSFoundation", @"GL", @"Use FaceTime port range (with UseFaceTimePortRange defaults) for clientType %u.");
        }
      }
    }
  }

  else
  {
    self->super._startPort = 16403;
    self->super._portRange = 70;
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(selfCopy) = unsignedIntValue;
      _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "Use GameKit port range for clientType %u.", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v13 = unsignedIntValue;
        _IDSLogTransport(@"GL", @"IDS", @"Use GameKit port range for clientType %u.");
        if (_IDSShouldLog())
        {
          v13 = unsignedIntValue;
          _IDSLogV(0, @"IDSFoundation", @"GL", @"Use GameKit port range for clientType %u.");
        }
      }
    }
  }

  v14.receiver = self;
  v14.super_class = IDSNonFTGL;
  [(IDSGlobalLink *)&v14 startWithOptions:optionsCopy, v13];
  self->super._enableSKE = 0;
  self->super._reduceCellularUsage = 0;
  self->super._reduceRelayLinkCreation = 0;
  self->super._shouldProcessBasebandNotification = 0;
  self->super._supportChannelData = 0;
}

- (void)invalidate
{
  v4.receiver = self;
  v4.super_class = IDSNonFTGL;
  [(IDSGlobalLink *)&v4 invalidate];
  linkEnginesByRemotePushToken = self->_linkEnginesByRemotePushToken;
  self->_linkEnginesByRemotePushToken = 0;
}

- (void)disconnectWithCompletionHandler:(id)handler isReinitiating:(BOOL)reinitiating
{
  v5.receiver = self;
  v5.super_class = IDSNonFTGL;
  [(IDSGlobalLink *)&v5 disconnectWithCompletionHandler:handler isReinitiating:reinitiating];
  [(IDSGlobalLink *)self _sendSessionDisconnectedCommand];
  [(IDSGlobalLink *)self _startDisconnectTimer];
}

- (void)_notifyCandidatePairConnected:(id)connected
{
  connectedCopy = connected;
  if (connectedCopy)
  {
    v5 = [(NSMutableDictionary *)self->super._tokenToCandidatePairs objectForKeyedSubscript:connectedCopy];
    if (v5)
    {
      [(IDSGlobalLink *)self _initializeSendInfoForCandidatePair:v5];
    }

    if (self->super._delayedConnData)
    {
      v6 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "connection data is delayed, send it now.", v7, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"connection data is delayed, send it now.");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"connection data is delayed, send it now.");
          }
        }
      }

      [(IDSGlobalLink *)self _sendConnectionDataWithRemovedAddressList:0];
    }
  }
}

- (void)_notifyCandidatePairDisconnected:(id)disconnected withReason:(unsigned __int8)reason
{
  reasonCopy = reason;
  disconnectedCopy = disconnected;
  v7 = disconnectedCopy;
  if (reasonCopy == 5 || !self->super._useLinkEngine)
  {
    if (!self->super._useLinkEngine)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = disconnectedCopy;
    linkEngine = [disconnectedCopy linkEngine];
    linkUniqueName = [v10 linkUniqueName];
    [linkEngine linkDidDisconnect:linkUniqueName];

    v7 = v10;
    if (!self->super._useLinkEngine)
    {
      goto LABEL_8;
    }
  }

  if (self->super._useLinkSelection)
  {
    v11 = v7;
    [(IDSGlobalLink *)self _deinitialieSendInfoForCandidatePair:v7];
    v7 = v11;
  }

LABEL_8:
}

- (void)_setFirstDefaultCandidatePair:(id)pair
{
  pairCopy = pair;
  v4 = IDSQRSendInfoList_ItemAtIndex(self->super._sendInfoList, 0);
  if (v4 && !*(v4 + 1))
  {
    [(IDSGlobalLink *)self _updateDefaultCandidatePair:pairCopy];
  }
}

- (BOOL)_isBetterCandidatePair:(id)pair newCandidatePair:(id)candidatePair
{
  pairCopy = pair;
  candidatePairCopy = candidatePair;
  local = [pairCopy local];
  radioAccessTechnology = [local radioAccessTechnology];

  remote = [pairCopy remote];
  radioAccessTechnology2 = [remote radioAccessTechnology];

  local2 = [candidatePairCopy local];
  radioAccessTechnology3 = [local2 radioAccessTechnology];

  remote2 = [candidatePairCopy remote];
  radioAccessTechnology4 = [remote2 radioAccessTechnology];

  channelNumber = [pairCopy channelNumber];
  channelNumber2 = [candidatePairCopy channelNumber];
  v45 = pairCopy;
  local3 = [pairCopy local];
  v18 = *([local3 address] + 1);

  local4 = [candidatePairCopy local];
  v20 = *([local4 address] + 1);

  if (radioAccessTechnology)
  {
    v21 = radioAccessTechnology == 9;
  }

  else
  {
    v21 = 1;
  }

  v22 = !v21;
  if (radioAccessTechnology3)
  {
    v23 = radioAccessTechnology3 == 9;
  }

  else
  {
    v23 = 1;
  }

  v24 = !v23;
  if (radioAccessTechnology4)
  {
    v25 = radioAccessTechnology4 == 9;
  }

  else
  {
    v25 = 1;
  }

  v26 = v25;
  if (radioAccessTechnology2)
  {
    v27 = radioAccessTechnology2 == 9;
  }

  else
  {
    v27 = 1;
  }

  if (v27)
  {
    v26 = 0;
  }

  if (v22 == v24)
  {
    LOBYTE(v22) = v26;
  }

  v28 = (channelNumber != 0) & ~v22;
  if (channelNumber2)
  {
    v28 = 0;
  }

  v29 = v22 | v28;
  v30 = (v18 == 30) & ~v29;
  if (v20 != 2)
  {
    v30 = 0;
  }

  v31 = v29 | v30;
  if (((v29 | v30) & 1) != 0 || v20 != 2)
  {
    v32 = v45;
  }

  else
  {
    v32 = v45;
    local5 = [v45 local];
    v34 = *([local5 address] + 4);

    remote3 = [v45 remote];
    v36 = *([remote3 external] + 4);

    local6 = [candidatePairCopy local];
    v38 = bswap32(*([local6 address] + 4));

    remote4 = [candidatePairCopy remote];
    v40 = *([remote4 external] + 4);

    if (HIWORD(v38) == 49320 || (v38 & 0xFF000000) == 0xA000000 || (v38 & 0xFFF00000) == 0xAC100000)
    {
      v41 = bswap32(v40);
      if ((v41 & 0xFFFF0000) == 0xC0A80000 || (v41 & 0xFF000000) == 0xA000000 || (v41 & 0xFFF00000) == 0xAC100000)
      {
        if ((v42 = bswap32(v34), (v42 & 0xFFFF0000) != 0xC0A80000) && (v42 & 0xFF000000) != 0xA000000 && (v42 & 0xFFF00000) != 0xAC100000 || (v43 = bswap32(v36), (v43 & 0xFFFF0000) != 0xC0A80000) && (v43 & 0xFF000000) != 0xA000000 && (v43 & 0xFFF00000) != 0xAC100000)
        {
          v31 = 1;
        }
      }
    }
  }

  return v31;
}

- (void)_selectBetterDefaultCandidatePair:(id)pair
{
  v20 = *MEMORY[0x1E69E9840];
  pairCopy = pair;
  if (!self->super._allowOnlyOneQR && self->super._isInitiator)
  {
    [(NSMutableDictionary *)self->super._tokenToCandidatePairs allValues];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v5 = v14 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (v6)
    {
      v7 = *v14;
LABEL_5:
      v8 = 0;
      while (1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        if ([v9 isNominated])
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
          if (v6)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }

      v6 = v9;

      if (!v6 || ![(IDSNonFTGL *)self _isBetterCandidatePair:v6 newCandidatePair:pairCopy])
      {
        goto LABEL_22;
      }

      v11 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = pairCopy;
        _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "select better candidate pair %@.", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v12 = pairCopy;
          _IDSLogTransport(@"GL", @"IDS", @"select better candidate pair %@.");
          if (_IDSShouldLog())
          {
            v12 = pairCopy;
            _IDSLogV(0, @"IDSFoundation", @"GL", @"select better candidate pair %@.");
          }
        }
      }

      candidatePairToken = [pairCopy candidatePairToken];
      [(IDSGlobalLink *)self _nominateCandidatePair:candidatePairToken];
    }

    else
    {
LABEL_11:
      candidatePairToken = v5;
    }

LABEL_22:
  }
}

- (id)_nextConnectedCandidatePair
{
  v18 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self->super._tokenToCandidatePairs allValues];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = v16 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v14 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v13 + 1) + 8 * v6);
      isRelayStunCandidatePair = [v7 isRelayStunCandidatePair];
      state = [v7 state];
      if (isRelayStunCandidatePair)
      {
        if (state == 4)
        {
          goto LABEL_10;
        }
      }

      else if (state == 3)
      {
LABEL_10:
        v10 = v7;
        if (v10)
        {
          v11 = v10;
          goto LABEL_15;
        }
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v11 = 0;
LABEL_15:

  return v11;
}

- (void)_selectDefaultCandidatePair
{
  v28 = *MEMORY[0x1E69E9840];
  if (!self->super._allowOnlyOneQR && self->super._isInitiator)
  {
    _nextConnectedCandidatePair = [(IDSNonFTGL *)self _nextConnectedCandidatePair];
    if (_nextConnectedCandidatePair)
    {
      v4 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = _nextConnectedCandidatePair;
        _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "currentBestPair: %@.", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v19 = _nextConnectedCandidatePair;
          _IDSLogTransport(@"GL", @"IDS", @"currentBestPair: %@.");
          if (_IDSShouldLog())
          {
            v19 = _nextConnectedCandidatePair;
            _IDSLogV(0, @"IDSFoundation", @"GL", @"currentBestPair: %@.");
          }
        }
      }

      [(NSMutableDictionary *)self->super._tokenToCandidatePairs allValues];
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v5 = v22 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v6)
      {
        v7 = *v22;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v22 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = *(*(&v21 + 1) + 8 * i);
            state = [v9 state];
            if (([v9 isEqual:_nextConnectedCandidatePair] & 1) == 0)
            {
              isRelayStunCandidatePair = [v9 isRelayStunCandidatePair];
              v12 = state == 4 ? 0 : isRelayStunCandidatePair;
              if ((v12 & 1) == 0)
              {
                isRelayStunCandidatePair2 = [v9 isRelayStunCandidatePair];
                v14 = state == 3 ? 1 : isRelayStunCandidatePair2;
                if (v14 == 1 && [(IDSNonFTGL *)self _isBetterCandidatePair:_nextConnectedCandidatePair newCandidatePair:v9])
                {
                  v15 = v9;

                  v16 = OSLogHandleForTransportCategory();
                  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v27 = v15;
                    _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "new currentBestPair: %@", buf, 0xCu);
                  }

                  if (os_log_shim_legacy_logging_enabled())
                  {
                    if (_IDSShouldLogTransport())
                    {
                      v20 = v15;
                      _IDSLogTransport(@"GL", @"IDS", @"new currentBestPair: %@");
                      if (_IDSShouldLog())
                      {
                        v20 = v15;
                        _IDSLogV(0, @"IDSFoundation", @"GL", @"new currentBestPair: %@");
                      }
                    }
                  }

                  _nextConnectedCandidatePair = v15;
                }
              }
            }
          }

          v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v6);
      }

      v17 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = _nextConnectedCandidatePair;
        _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "selected best candidate pair %@.", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        v20 = _nextConnectedCandidatePair;
        _IDSLogTransport(@"GL", @"IDS", @"selected best candidate pair %@.");
        if (_IDSShouldLog())
        {
          v20 = _nextConnectedCandidatePair;
          _IDSLogV(0, @"IDSFoundation", @"GL", @"selected best candidate pair %@.");
        }
      }

      candidatePairToken = [_nextConnectedCandidatePair candidatePairToken];
      [(IDSGlobalLink *)self _nominateCandidatePair:candidatePairToken];
    }
  }
}

- (BOOL)_processRemovedLocalAddressList:(id)list
{
  v5.receiver = self;
  v5.super_class = IDSNonFTGL;
  if ([(IDSGlobalLink *)&v5 _processRemovedLocalAddressList:list]&& [(IDSGlobalLink *)self _hasCandidatePairInState:3 anotherState:4 relayCandidatePairsOnly:0 excludeSelfAlloc:0])
  {
    [(IDSNonFTGL *)self _setDefaultCandidatePairForNonFT];
  }

  return 0;
}

- (void)_startHB:(id)b
{
  bCopy = b;
  [bCopy setHbStarted:1];
  candidatePairToken = [bCopy candidatePairToken];

  [(IDSGlobalLink *)self _sendCommandMessage:3 stunMessage:0 options:0 candidatePairToken:candidatePairToken];
}

- (void)_handleNoRemotePacket
{
  v3 = _Block_copy(self->super._connectReadyHandler);
  if (v3)
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"No remote packet time out." forKey:*MEMORY[0x1E696A578]];
    v6 = [v4 errorWithDomain:@"GlobalLink" code:11 userInfo:v5];

    v7 = im_primary_queue();
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = sub_1A7B4E9E4;
    v14 = &unk_1E77DD0F0;
    v15 = v6;
    v16 = v3;
    v8 = v6;
    dispatch_async(v7, &v11);

LABEL_5:
    goto LABEL_6;
  }

  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v8 = objc_loadWeakRetained(&self->super._delegate);
    [v8 link:self didFailToConnectOverCloud:0 cbuuid:self->super._cbuuid];
    goto LABEL_5;
  }

LABEL_6:
  [(IDSGlobalLink *)self _stopActivityTimer:v11];
}

- (void)_setDefaultCandidatePairForNonFT
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->super._allowOnlyOneQR)
  {
    _nextConnectedCandidatePair = [(IDSNonFTGL *)self _nextConnectedCandidatePair];
    if (_nextConnectedCandidatePair)
    {
      v4 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        candidatePairToken = [_nextConnectedCandidatePair candidatePairToken];
        *buf = 138412290;
        v8 = candidatePairToken;
        _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "default candidate pair is removed, switch to %@.", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        candidatePairToken2 = [_nextConnectedCandidatePair candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"default candidate pair is removed, switch to %@.");

        if (_IDSShouldLog())
        {
          candidatePairToken2 = [_nextConnectedCandidatePair candidatePairToken];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"default candidate pair is removed, switch to %@.");
        }
      }

      [(IDSGlobalLink *)self _updateDefaultCandidatePair:_nextConnectedCandidatePair, candidatePairToken2];
    }
  }

  else
  {

    MEMORY[0x1EEE66B58](self, sel__selectDefaultCandidatePair);
  }
}

- (BOOL)_setupNewQRLinkIfNecessary:(id)necessary
{
  v16 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  if (self->super._hasPendingAllocation)
  {
    v5 = +[IDSFoundationLog NonFTGL];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (self->super._hasPendingAllocation)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      *buf = 138412546;
      v13 = necessaryCopy;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "skip set up new QR link, relaySessionID: %@, _hasPendingAllocation: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = IDSNonFTGL;
    v8 = [(IDSGlobalLink *)&v11 _setupNewQRLinkIfNecessary:necessaryCopy];
    v7 = v8;
    if (!necessaryCopy && v8)
    {
      v10.receiver = self;
      v10.super_class = IDSNonFTGL;
      [(IDSGlobalLink *)&v10 _requestNewTwoWayQRAllocation:0];
      v7 = 1;
    }
  }

  return v7;
}

- (id)linkEngineForSessionInfo:(id)info
{
  v57[1] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  if (!self->_linkEnginesByRemotePushToken)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    linkEnginesByRemotePushToken = self->_linkEnginesByRemotePushToken;
    self->_linkEnginesByRemotePushToken = Mutable;
  }

  if ([infoCopy allocateType] != 1)
  {
    v10 = +[IDSFoundationLog NonFTGL];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "linkEngineForSessionInfo: not creating link engine because allocation type is not two-way", buf, 2u);
    }

    goto LABEL_39;
  }

  if (([infoCopy isInitiator] & 1) == 0)
  {
    null = [MEMORY[0x1E695DFB0] null];
    v57[0] = null;
    allocatedPushTokens2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:1];

    goto LABEL_10;
  }

  allocatedPushTokens = [infoCopy allocatedPushTokens];
  v8 = [allocatedPushTokens count];

  if (!v8)
  {
    v10 = +[IDSFoundationLog NonFTGL];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E11E18(v10);
    }

LABEL_39:
    v26 = 0;
    goto LABEL_40;
  }

  allocatedPushTokens2 = [infoCopy allocatedPushTokens];
LABEL_10:
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = allocatedPushTokens2;
  v12 = [v10 countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v48;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v48 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = [(NSMutableDictionary *)self->_linkEnginesByRemotePushToken objectForKeyedSubscript:*(*(&v47 + 1) + 8 * i)];
        if (v16)
        {
          v26 = v16;
          v38 = +[IDSFoundationLog NonFTGL];
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            allocatedPushTokens3 = [infoCopy allocatedPushTokens];
            *buf = 138412546;
            v53 = allocatedPushTokens3;
            v54 = 2112;
            v55 = v26;
            _os_log_impl(&dword_1A7AD9000, v38, OS_LOG_TYPE_DEFAULT, "linkEngineForSessionInfo: found link engine for session for push tokens %@, engine: %@", buf, 0x16u);
          }

          goto LABEL_40;
        }
      }

      v13 = [v10 countByEnumeratingWithState:&v47 objects:v56 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v17 = +[IDSFoundationLog NonFTGL];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    allocatedPushTokens4 = [infoCopy allocatedPushTokens];
    v19 = self->_linkEnginesByRemotePushToken;
    *buf = 138412546;
    v53 = allocatedPushTokens4;
    v54 = 2112;
    v55 = v19;
    _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "linkEngineForSessionInfo: creating new link engine for push tokens %@. Existing link engines: %@", buf, 0x16u);
  }

  v42 = [IDSGLLinkEngine alloc];
  v20 = [[IDSWeakGLLinkConnector alloc] initWithGLLinkConnector:self];
  allocateType = [infoCopy allocateType];
  isInitiator = [infoCopy isInitiator];
  useLinkSelection = self->super._useLinkSelection;
  recordExpensiveQualityMetrics = self->super._recordExpensiveQualityMetrics;
  linkSelectionStrategy = self->super._linkSelectionStrategy;
  v25 = [IDSServerBag sharedInstanceForBagType:0];
  v26 = [(IDSGLLinkEngine *)v42 initWithLinkConnector:v20 allocateType:allocateType isInitiator:isInitiator useLinkSelection:useLinkSelection recordExpensiveQualityMetrics:recordExpensiveQualityMetrics linkSelectionStrategy:linkSelectionStrategy serverBag:v25 timeFn:&unk_1F1AAA240];

  v27 = MEMORY[0x1E696AEC0];
  isInitiator2 = [infoCopy isInitiator];
  v29 = @"NO";
  if (isInitiator2)
  {
    v29 = @"YES";
  }

  v30 = [v27 stringWithFormat:@"Two-Way (NonFTGL %p) initiator=%@ remotePushTokens=%@", self, v29, v10];
  [(IDSGLLinkEngine *)v26 setTag:v30];

  [(IDSGLLinkEngine *)v26 registerEngine];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = v10;
  v31 = [v10 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v44;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v44 != v33)
        {
          objc_enumerationMutation(v10);
        }

        v35 = *(*(&v43 + 1) + 8 * j);
        if (([v35 isNull] & 1) == 0)
        {
          [(IDSGLLinkEngine *)v26 addRemotePushToken:v35];
        }

        [(NSMutableDictionary *)self->_linkEnginesByRemotePushToken setObject:v26 forKeyedSubscript:v35];
      }

      v32 = [v10 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v32);
  }

  v36 = +[IDSFoundationLog NonFTGL];
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = self->_linkEnginesByRemotePushToken;
    *buf = 138412290;
    v53 = v37;
    _os_log_impl(&dword_1A7AD9000, v36, OS_LOG_TYPE_DEFAULT, "linkEngineForSessionInfo: all link engines: %@", buf, 0xCu);
  }

LABEL_40:

  return v26;
}

- (void)_didCreateSession:(id)session
{
  v21 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v5 = sessionCopy;
  if (self->super._isInitiator)
  {
    localInterfacePreference = [sessionCopy localInterfacePreference];
  }

  else
  {
    sessionInfoDict = [sessionCopy sessionInfoDict];
    v8 = [sessionInfoDict objectForKey:@"qia"];
    localInterfacePreference = [v8 intValue];
  }

  remoteInterfacePreference = [v5 remoteInterfacePreference];
  isInitiator = self->super._isInitiator;
  v11 = +[IDSFoundationLog NonFTGL];
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (isInitiator)
  {
    if (!v12)
    {
      goto LABEL_10;
    }

    v19 = 67109120;
    v20 = localInterfacePreference;
    v13 = "_didCreateSession: is initiator; preferred interface: %d";
  }

  else
  {
    if (!v12)
    {
      goto LABEL_10;
    }

    v19 = 67109120;
    v20 = localInterfacePreference;
    v13 = "_didCreateSession: preferred interface from initiator: %d";
  }

  _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, v13, &v19, 8u);
LABEL_10:

  sessionInfo = [v5 sessionInfo];
  allocateType = [sessionInfo allocateType];

  if (allocateType == 1)
  {
    linkEngine = [v5 linkEngine];
    qrSessionID = [v5 qrSessionID];
    v18 = [(IDSGlobalLink *)self _remoteCandidatesForRelaySession:v5];
    [linkEngine addTwoWayAllocation:qrSessionID localAffinity:localInterfacePreference remoteAffinity:remoteInterfacePreference resolvedCandidates:v18];
  }
}

- (void)_willUpdateLinksForSession:(id)session
{
  sessionCopy = session;
  if (self->super._isInitiator)
  {
    localInterfacePreference = [sessionCopy localInterfacePreference];
  }

  else
  {
    sessionInfoDict = [sessionCopy sessionInfoDict];
    v6 = [sessionInfoDict objectForKey:@"qia"];
    localInterfacePreference = [v6 intValue];
  }

  remoteInterfacePreference = [sessionCopy remoteInterfacePreference];
  sessionInfo = [sessionCopy sessionInfo];
  allocateType = [sessionInfo allocateType];

  if (allocateType == 1)
  {
    linkEngine = [sessionCopy linkEngine];
    qrSessionID = [sessionCopy qrSessionID];
    v12 = [(IDSGlobalLink *)self _remoteCandidatesForRelaySession:sessionCopy];
    [linkEngine addTwoWayAllocation:qrSessionID localAffinity:localInterfacePreference remoteAffinity:remoteInterfacePreference resolvedCandidates:v12];
  }
}

@end