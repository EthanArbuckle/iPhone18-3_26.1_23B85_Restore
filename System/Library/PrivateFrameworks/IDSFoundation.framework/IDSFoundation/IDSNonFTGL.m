@interface IDSNonFTGL
- (BOOL)_isBetterCandidatePair:(id)a3 newCandidatePair:(id)a4;
- (BOOL)_processRemovedLocalAddressList:(id)a3;
- (BOOL)_setupNewQRLinkIfNecessary:(id)a3;
- (id)_nextConnectedCandidatePair;
- (id)linkEngineForSessionInfo:(id)a3;
- (void)_didCreateSession:(id)a3;
- (void)_handleNoRemotePacket;
- (void)_notifyCandidatePairConnected:(id)a3;
- (void)_notifyCandidatePairDisconnected:(id)a3 withReason:(unsigned __int8)a4;
- (void)_selectBetterDefaultCandidatePair:(id)a3;
- (void)_selectDefaultCandidatePair;
- (void)_setDefaultCandidatePairForNonFT;
- (void)_setFirstDefaultCandidatePair:(id)a3;
- (void)_startHB:(id)a3;
- (void)_willUpdateLinksForSession:(id)a3;
- (void)disconnectWithCompletionHandler:(id)a3 isReinitiating:(BOOL)a4;
- (void)invalidate;
- (void)startWithOptions:(id)a3;
@end

@implementation IDSNonFTGL

- (void)startWithOptions:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  Value = 0;
  if (v4 && @"gl-option-client-type")
  {
    Value = CFDictionaryGetValue(v4, @"gl-option-client-type");
  }

  v6 = [Value unsignedIntValue];
  self->super._clientType = v6;
  self->super._useSecureControlMessage = 1;
  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v16) = v6;
    _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "enable secure control message for client type: %u.", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v12 = v6;
      _IDSLogTransport(@"GL", @"IDS", @"enable secure control message for client type: %u.");
      if (_IDSShouldLog())
      {
        v12 = v6;
        _IDSLogV(0, @"IDSFoundation", @"GL", @"enable secure control message for client type: %u.");
      }
    }
  }

  v8 = +[IDSFoundationLog NonFTGL];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    idsSessionID = self->super._idsSessionID;
    *buf = 138412546;
    v16 = self;
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
      LODWORD(v16) = v6;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "Use FaceTime port range (with UseFaceTimePortRange defaults) for clientType %u.", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v13 = v6;
        _IDSLogTransport(@"GL", @"IDS", @"Use FaceTime port range (with UseFaceTimePortRange defaults) for clientType %u.");
        if (_IDSShouldLog())
        {
          v13 = v6;
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
      LODWORD(v16) = v6;
      _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "Use GameKit port range for clientType %u.", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v13 = v6;
        _IDSLogTransport(@"GL", @"IDS", @"Use GameKit port range for clientType %u.");
        if (_IDSShouldLog())
        {
          v13 = v6;
          _IDSLogV(0, @"IDSFoundation", @"GL", @"Use GameKit port range for clientType %u.");
        }
      }
    }
  }

  v14.receiver = self;
  v14.super_class = IDSNonFTGL;
  [(IDSGlobalLink *)&v14 startWithOptions:v4, v13];
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

- (void)disconnectWithCompletionHandler:(id)a3 isReinitiating:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = IDSNonFTGL;
  [(IDSGlobalLink *)&v5 disconnectWithCompletionHandler:a3 isReinitiating:a4];
  [(IDSGlobalLink *)self _sendSessionDisconnectedCommand];
  [(IDSGlobalLink *)self _startDisconnectTimer];
}

- (void)_notifyCandidatePairConnected:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->super._tokenToCandidatePairs objectForKeyedSubscript:v4];
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

- (void)_notifyCandidatePairDisconnected:(id)a3 withReason:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4 == 5 || !self->super._useLinkEngine)
  {
    if (!self->super._useLinkEngine)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = v6;
    v8 = [v6 linkEngine];
    v9 = [v10 linkUniqueName];
    [v8 linkDidDisconnect:v9];

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

- (void)_setFirstDefaultCandidatePair:(id)a3
{
  v5 = a3;
  v4 = IDSQRSendInfoList_ItemAtIndex(self->super._sendInfoList, 0);
  if (v4 && !*(v4 + 1))
  {
    [(IDSGlobalLink *)self _updateDefaultCandidatePair:v5];
  }
}

- (BOOL)_isBetterCandidatePair:(id)a3 newCandidatePair:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 local];
  v8 = [v7 radioAccessTechnology];

  v9 = [v5 remote];
  v10 = [v9 radioAccessTechnology];

  v11 = [v6 local];
  v12 = [v11 radioAccessTechnology];

  v13 = [v6 remote];
  v14 = [v13 radioAccessTechnology];

  v15 = [v5 channelNumber];
  v16 = [v6 channelNumber];
  v45 = v5;
  v17 = [v5 local];
  v18 = *([v17 address] + 1);

  v19 = [v6 local];
  v20 = *([v19 address] + 1);

  if (v8)
  {
    v21 = v8 == 9;
  }

  else
  {
    v21 = 1;
  }

  v22 = !v21;
  if (v12)
  {
    v23 = v12 == 9;
  }

  else
  {
    v23 = 1;
  }

  v24 = !v23;
  if (v14)
  {
    v25 = v14 == 9;
  }

  else
  {
    v25 = 1;
  }

  v26 = v25;
  if (v10)
  {
    v27 = v10 == 9;
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

  v28 = (v15 != 0) & ~v22;
  if (v16)
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
    v33 = [v45 local];
    v34 = *([v33 address] + 4);

    v35 = [v45 remote];
    v36 = *([v35 external] + 4);

    v37 = [v6 local];
    v38 = bswap32(*([v37 address] + 4));

    v39 = [v6 remote];
    v40 = *([v39 external] + 4);

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

- (void)_selectBetterDefaultCandidatePair:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

      if (!v6 || ![(IDSNonFTGL *)self _isBetterCandidatePair:v6 newCandidatePair:v4])
      {
        goto LABEL_22;
      }

      v11 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v4;
        _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "select better candidate pair %@.", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v12 = v4;
          _IDSLogTransport(@"GL", @"IDS", @"select better candidate pair %@.");
          if (_IDSShouldLog())
          {
            v12 = v4;
            _IDSLogV(0, @"IDSFoundation", @"GL", @"select better candidate pair %@.");
          }
        }
      }

      v10 = [v4 candidatePairToken];
      [(IDSGlobalLink *)self _nominateCandidatePair:v10];
    }

    else
    {
LABEL_11:
      v10 = v5;
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
      v8 = [v7 isRelayStunCandidatePair];
      v9 = [v7 state];
      if (v8)
      {
        if (v9 == 4)
        {
          goto LABEL_10;
        }
      }

      else if (v9 == 3)
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
    v3 = [(IDSNonFTGL *)self _nextConnectedCandidatePair];
    if (v3)
    {
      v4 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v3;
        _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "currentBestPair: %@.", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v19 = v3;
          _IDSLogTransport(@"GL", @"IDS", @"currentBestPair: %@.");
          if (_IDSShouldLog())
          {
            v19 = v3;
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
            v10 = [v9 state];
            if (([v9 isEqual:v3] & 1) == 0)
            {
              v11 = [v9 isRelayStunCandidatePair];
              v12 = v10 == 4 ? 0 : v11;
              if ((v12 & 1) == 0)
              {
                v13 = [v9 isRelayStunCandidatePair];
                v14 = v10 == 3 ? 1 : v13;
                if (v14 == 1 && [(IDSNonFTGL *)self _isBetterCandidatePair:v3 newCandidatePair:v9])
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

                  v3 = v15;
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
        v27 = v3;
        _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "selected best candidate pair %@.", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        v20 = v3;
        _IDSLogTransport(@"GL", @"IDS", @"selected best candidate pair %@.");
        if (_IDSShouldLog())
        {
          v20 = v3;
          _IDSLogV(0, @"IDSFoundation", @"GL", @"selected best candidate pair %@.");
        }
      }

      v18 = [v3 candidatePairToken];
      [(IDSGlobalLink *)self _nominateCandidatePair:v18];
    }
  }
}

- (BOOL)_processRemovedLocalAddressList:(id)a3
{
  v5.receiver = self;
  v5.super_class = IDSNonFTGL;
  if ([(IDSGlobalLink *)&v5 _processRemovedLocalAddressList:a3]&& [(IDSGlobalLink *)self _hasCandidatePairInState:3 anotherState:4 relayCandidatePairsOnly:0 excludeSelfAlloc:0])
  {
    [(IDSNonFTGL *)self _setDefaultCandidatePairForNonFT];
  }

  return 0;
}

- (void)_startHB:(id)a3
{
  v4 = a3;
  [v4 setHbStarted:1];
  v5 = [v4 candidatePairToken];

  [(IDSGlobalLink *)self _sendCommandMessage:3 stunMessage:0 options:0 candidatePairToken:v5];
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
    v3 = [(IDSNonFTGL *)self _nextConnectedCandidatePair];
    if (v3)
    {
      v4 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [v3 candidatePairToken];
        *buf = 138412290;
        v8 = v5;
        _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "default candidate pair is removed, switch to %@.", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        v6 = [v3 candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"default candidate pair is removed, switch to %@.");

        if (_IDSShouldLog())
        {
          v6 = [v3 candidatePairToken];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"default candidate pair is removed, switch to %@.");
        }
      }

      [(IDSGlobalLink *)self _updateDefaultCandidatePair:v3, v6];
    }
  }

  else
  {

    MEMORY[0x1EEE66B58](self, sel__selectDefaultCandidatePair);
  }
}

- (BOOL)_setupNewQRLinkIfNecessary:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
      v13 = v4;
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
    v8 = [(IDSGlobalLink *)&v11 _setupNewQRLinkIfNecessary:v4];
    v7 = v8;
    if (!v4 && v8)
    {
      v10.receiver = self;
      v10.super_class = IDSNonFTGL;
      [(IDSGlobalLink *)&v10 _requestNewTwoWayQRAllocation:0];
      v7 = 1;
    }
  }

  return v7;
}

- (id)linkEngineForSessionInfo:(id)a3
{
  v57[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_linkEnginesByRemotePushToken)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    linkEnginesByRemotePushToken = self->_linkEnginesByRemotePushToken;
    self->_linkEnginesByRemotePushToken = Mutable;
  }

  if ([v4 allocateType] != 1)
  {
    v10 = +[IDSFoundationLog NonFTGL];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "linkEngineForSessionInfo: not creating link engine because allocation type is not two-way", buf, 2u);
    }

    goto LABEL_39;
  }

  if (([v4 isInitiator] & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
    v57[0] = v11;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:1];

    goto LABEL_10;
  }

  v7 = [v4 allocatedPushTokens];
  v8 = [v7 count];

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

  v9 = [v4 allocatedPushTokens];
LABEL_10:
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = v9;
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
            v39 = [v4 allocatedPushTokens];
            *buf = 138412546;
            v53 = v39;
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
    v18 = [v4 allocatedPushTokens];
    v19 = self->_linkEnginesByRemotePushToken;
    *buf = 138412546;
    v53 = v18;
    v54 = 2112;
    v55 = v19;
    _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "linkEngineForSessionInfo: creating new link engine for push tokens %@. Existing link engines: %@", buf, 0x16u);
  }

  v42 = [IDSGLLinkEngine alloc];
  v20 = [[IDSWeakGLLinkConnector alloc] initWithGLLinkConnector:self];
  v41 = [v4 allocateType];
  v21 = [v4 isInitiator];
  useLinkSelection = self->super._useLinkSelection;
  recordExpensiveQualityMetrics = self->super._recordExpensiveQualityMetrics;
  linkSelectionStrategy = self->super._linkSelectionStrategy;
  v25 = [IDSServerBag sharedInstanceForBagType:0];
  v26 = [(IDSGLLinkEngine *)v42 initWithLinkConnector:v20 allocateType:v41 isInitiator:v21 useLinkSelection:useLinkSelection recordExpensiveQualityMetrics:recordExpensiveQualityMetrics linkSelectionStrategy:linkSelectionStrategy serverBag:v25 timeFn:&unk_1F1AAA240];

  v27 = MEMORY[0x1E696AEC0];
  v28 = [v4 isInitiator];
  v29 = @"NO";
  if (v28)
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

- (void)_didCreateSession:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->super._isInitiator)
  {
    v6 = [v4 localInterfacePreference];
  }

  else
  {
    v7 = [v4 sessionInfoDict];
    v8 = [v7 objectForKey:@"qia"];
    v6 = [v8 intValue];
  }

  v9 = [v5 remoteInterfacePreference];
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
    v20 = v6;
    v13 = "_didCreateSession: is initiator; preferred interface: %d";
  }

  else
  {
    if (!v12)
    {
      goto LABEL_10;
    }

    v19 = 67109120;
    v20 = v6;
    v13 = "_didCreateSession: preferred interface from initiator: %d";
  }

  _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, v13, &v19, 8u);
LABEL_10:

  v14 = [v5 sessionInfo];
  v15 = [v14 allocateType];

  if (v15 == 1)
  {
    v16 = [v5 linkEngine];
    v17 = [v5 qrSessionID];
    v18 = [(IDSGlobalLink *)self _remoteCandidatesForRelaySession:v5];
    [v16 addTwoWayAllocation:v17 localAffinity:v6 remoteAffinity:v9 resolvedCandidates:v18];
  }
}

- (void)_willUpdateLinksForSession:(id)a3
{
  v13 = a3;
  if (self->super._isInitiator)
  {
    v4 = [v13 localInterfacePreference];
  }

  else
  {
    v5 = [v13 sessionInfoDict];
    v6 = [v5 objectForKey:@"qia"];
    v4 = [v6 intValue];
  }

  v7 = [v13 remoteInterfacePreference];
  v8 = [v13 sessionInfo];
  v9 = [v8 allocateType];

  if (v9 == 1)
  {
    v10 = [v13 linkEngine];
    v11 = [v13 qrSessionID];
    v12 = [(IDSGlobalLink *)self _remoteCandidatesForRelaySession:v13];
    [v10 addTwoWayAllocation:v11 localAffinity:v4 remoteAffinity:v7 resolvedCandidates:v12];
  }
}

@end