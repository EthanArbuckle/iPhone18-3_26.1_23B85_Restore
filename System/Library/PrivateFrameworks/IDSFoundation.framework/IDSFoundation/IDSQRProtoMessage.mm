@interface IDSQRProtoMessage
+ (id)dataWithEmptyUnAllocBindResponse;
- (BOOL)_setupAllocbindRequest:(id)request candidatePair:(id)pair options:(id)options;
- (BOOL)_setupCallModeUpdateRequest:(id)request candidatePair:(id)pair options:(id)options;
- (BOOL)_setupChannelConfigRequest:(id)request candidatePair:(id)pair options:(id)options;
- (BOOL)_setupInfoRequest:(id)request candidatePair:(id)pair options:(id)options;
- (BOOL)_setupParticipantUpdateRequest:(id)request candidatePair:(id)pair options:(id)options;
- (BOOL)_setupPluginControlRequest:(id)request candidatePair:(id)pair options:(id)options;
- (BOOL)_setupPutmaterialRequest:(id)request candidatePair:(id)pair options:(id)options;
- (BOOL)_setupRegisterAckRequest:(id)request candidatePair:(id)pair options:(id)options;
- (BOOL)_setupRegisterRequest:(id)request candidatePair:(id)pair options:(id)options;
- (BOOL)_setupSessionInfoRequest:(id)request candidatePair:(id)pair options:(id)options;
- (BOOL)_setupStatsRequest:(id)request candidatePair:(id)pair options:(id)options;
- (BOOL)_setupTestRequest:(id)request candidatePair:(id)pair options:(id)options;
- (BOOL)_setupUnallocbindRequest:(id)request candidatePair:(id)pair options:(id)options;
- (IDSQRProtoMessage)initWithData:(id)data;
- (IDSQRProtoMessage)initWithType:(int)type candidatePair:(id)pair options:(id)options;
- (id)allocbindResponse;
- (id)callModeUpdateResponse;
- (id)channelConfigResponse;
- (id)diagnosticIndication;
- (id)errorIndication;
- (id)getMaterialResponse;
- (id)goAwayIndication;
- (id)infoResponse;
- (id)participantUpdateIndication;
- (id)participantUpdateResponse;
- (id)pluginControlIndication;
- (id)pluginControlResponse;
- (id)putMaterialIndication;
- (id)putMaterialResponse;
- (id)reallocateIndication;
- (id)registerIndication;
- (id)registerResponse;
- (id)sessionInfoIndication;
- (id)sessionInfoResponse;
- (id)statsResponse;
- (id)testResponse;
- (id)unallocbindResponse;
@end

@implementation IDSQRProtoMessage

- (IDSQRProtoMessage)initWithType:(int)type candidatePair:(id)pair options:(id)options
{
  v6 = *&type;
  v62 = *MEMORY[0x1E69E9840];
  pairCopy = pair;
  optionsCopy = options;
  v57.receiver = self;
  v57.super_class = IDSQRProtoMessage;
  v10 = [(IDSQRProtoMessage *)&v57 init];
  if (v10)
  {
    if (![pairCopy isRelayStunCandidatePair] || (objc_msgSend(pairCopy, "isValidRelayStunCandidatePair") & 1) == 0)
    {
      v16 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "failed to create QRProtoMessage due to invalid relay candidate pair.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"failed to create QRProtoMessage due to invalid relay candidate pair.");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to create QRProtoMessage due to invalid relay candidate pair.");
          }
        }
      }

      goto LABEL_68;
    }

    v10->_startTime = ids_monotonic_time();
    v11 = objc_alloc_init(IDSQRProtoH3Message);
    message = v10->_message;
    v10->_message = v11;

    if (v6 > 21)
    {
      if (v6 <= 28)
      {
        if (v6 == 22)
        {
          v36 = objc_alloc_init(IDSQRProtoUnAllocBindRequest);
          [(IDSQRProtoH3Message *)v10->_message setUnallocbindRequest:v36];

          unallocbindRequest = [(IDSQRProtoH3Message *)v10->_message unallocbindRequest];
          v15 = [(IDSQRProtoMessage *)v10 _setupUnallocbindRequest:unallocbindRequest candidatePair:pairCopy options:optionsCopy];
        }

        else
        {
          if (v6 != 24)
          {
            if (v6 == 27)
            {
              v21 = [optionsCopy objectForKeyedSubscript:@"gl-option-materials-request-key"];
              if (v21)
              {
                [(IDSQRProtoH3Message *)v10->_message setGetmaterialRequest:v21];

LABEL_45:
                v42 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                {
                  v43 = off_1E77E1DE8[v6 - 1];
                  v44 = v10->_message;
                  *buf = 138412546;
                  v59 = v43;
                  v60 = 2112;
                  v61 = v44;
                  _os_log_impl(&dword_1A7AD9000, v42, OS_LOG_TYPE_DEFAULT, "created %@ proto message %@", buf, 0x16u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    v53 = off_1E77E1DE8[v6 - 1];
                    v54 = v10->_message;
                    _IDSLogTransport(@"GL", @"IDS", @"created %@ proto message %@");
                    if (_IDSShouldLog())
                    {
                      v53 = off_1E77E1F20[v6];
                      v54 = v10->_message;
                      _IDSLogV(0, @"IDSFoundation", @"GL", @"created %@ proto message %@");
                    }
                  }
                }

                v45 = off_1E77E1F20[v6];
                [(IDSQRProtoH3Message *)v10->_message description:v53];
                v56 = v55 = v45;
                v46 = v56;
                cut_dispatch_log_queue();

                goto LABEL_52;
              }
            }

            goto LABEL_53;
          }

          v40 = objc_alloc_init(IDSQRProtoPutMaterialRequest);
          [(IDSQRProtoH3Message *)v10->_message setPutmaterialRequest:v40];

          putmaterialRequest = [(IDSQRProtoH3Message *)v10->_message putmaterialRequest];
          v15 = [(IDSQRProtoMessage *)v10 _setupPutmaterialRequest:putmaterialRequest candidatePair:pairCopy options:optionsCopy];
        }

        goto LABEL_44;
      }

      if (v6 > 36)
      {
        if (v6 == 37)
        {
          v32 = objc_alloc_init(IDSQRProtoCallModeUpdateRequest);
          [(IDSQRProtoH3Message *)v10->_message setCallmodeupdateRequest:v32];

          callmodeupdateRequest = [(IDSQRProtoH3Message *)v10->_message callmodeupdateRequest];
          v15 = [(IDSQRProtoMessage *)v10 _setupCallModeUpdateRequest:callmodeupdateRequest candidatePair:pairCopy options:optionsCopy];
        }

        else
        {
          if (v6 != 39)
          {
            goto LABEL_53;
          }

          v24 = objc_alloc_init(IDSQRH3ChannelConfigRequest);
          [(IDSQRProtoH3Message *)v10->_message setChannelconfigRequest:v24];

          channelconfigRequest = [(IDSQRProtoH3Message *)v10->_message channelconfigRequest];
          v15 = [(IDSQRProtoMessage *)v10 _setupChannelConfigRequest:channelconfigRequest candidatePair:pairCopy options:optionsCopy];
        }
      }

      else if (v6 == 29)
      {
        v28 = objc_alloc_init(IDSQRProtoH3EndToEndChannelRegisterRequest);
        [(IDSQRProtoH3Message *)v10->_message setRegisterRequest:v28];

        registerRequest = [(IDSQRProtoH3Message *)v10->_message registerRequest];
        v15 = [(IDSQRProtoMessage *)v10 _setupRegisterRequest:registerRequest candidatePair:pairCopy options:optionsCopy];
      }

      else
      {
        if (v6 != 32)
        {
          goto LABEL_53;
        }

        v17 = objc_alloc_init(IDSQRProtoH3EndToEndChannelRegisterAckRequest);
        [(IDSQRProtoH3Message *)v10->_message setRegisterAckRequest:v17];

        registerAckRequest = [(IDSQRProtoH3Message *)v10->_message registerAckRequest];
        v15 = [(IDSQRProtoMessage *)v10 _setupRegisterAckRequest:registerAckRequest candidatePair:pairCopy options:optionsCopy];
      }
    }

    else if (v6 <= 9)
    {
      switch(v6)
      {
        case 1:
          v34 = objc_alloc_init(IDSQRProtoAllocBindRequest);
          [(IDSQRProtoH3Message *)v10->_message setAllocbindRequest:v34];

          allocbindRequest = [(IDSQRProtoH3Message *)v10->_message allocbindRequest];
          v15 = [(IDSQRProtoMessage *)v10 _setupAllocbindRequest:allocbindRequest candidatePair:pairCopy options:optionsCopy];

          break;
        case 5:
          v38 = objc_alloc_init(IDSQRProtoInfoRequest);
          [(IDSQRProtoH3Message *)v10->_message setInfoRequest:v38];

          infoRequest = [(IDSQRProtoH3Message *)v10->_message infoRequest];
          v15 = [(IDSQRProtoMessage *)v10 _setupInfoRequest:infoRequest candidatePair:pairCopy options:optionsCopy];

          break;
        case 7:
          v19 = objc_alloc_init(IDSQRProtoParticipantUpdateRequest);
          [(IDSQRProtoH3Message *)v10->_message setParticipantupdateRequest:v19];

          participantupdateRequest = [(IDSQRProtoH3Message *)v10->_message participantupdateRequest];
          v15 = [(IDSQRProtoMessage *)v10 _setupParticipantUpdateRequest:participantupdateRequest candidatePair:pairCopy options:optionsCopy];

          break;
        default:
          goto LABEL_53;
      }
    }

    else if (v6 > 17)
    {
      if (v6 == 18)
      {
        v30 = objc_alloc_init(IDSQRProtoStatsRequest);
        [(IDSQRProtoH3Message *)v10->_message setStatsRequest:v30];

        statsRequest = [(IDSQRProtoH3Message *)v10->_message statsRequest];
        v15 = [(IDSQRProtoMessage *)v10 _setupStatsRequest:statsRequest candidatePair:pairCopy options:optionsCopy];
      }

      else
      {
        if (v6 != 20)
        {
          goto LABEL_53;
        }

        v22 = objc_alloc_init(IDSQRProtoTestRequest);
        [(IDSQRProtoH3Message *)v10->_message setTestRequest:v22];

        testRequest = [(IDSQRProtoH3Message *)v10->_message testRequest];
        v15 = [(IDSQRProtoMessage *)v10 _setupTestRequest:testRequest candidatePair:pairCopy options:optionsCopy];
      }
    }

    else
    {
      if (v6 != 10)
      {
        if (v6 == 15)
        {
          v13 = objc_alloc_init(IDSQRProtoSessionInfoRequest);
          [(IDSQRProtoH3Message *)v10->_message setSessioninfoRequest:v13];

          sessioninfoRequest = [(IDSQRProtoH3Message *)v10->_message sessioninfoRequest];
          v15 = [(IDSQRProtoMessage *)v10 _setupSessionInfoRequest:sessioninfoRequest candidatePair:pairCopy options:optionsCopy];

          goto LABEL_44;
        }

LABEL_53:
        v48 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          if (v6 >= 0x29)
          {
            v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
          }

          else
          {
            v49 = off_1E77E1F20[v6];
          }

          *buf = 138412290;
          v59 = v49;
          _os_log_impl(&dword_1A7AD9000, v48, OS_LOG_TYPE_DEFAULT, "failed to create %@ message", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
        {
          if (v6 >= 0x29)
          {
            v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
          }

          else
          {
            v50 = off_1E77E1F20[v6];
          }

          _IDSLogTransport(@"GL", @"IDS", @"failed to create %@ message");

          if (_IDSShouldLog())
          {
            if (v6 >= 0x29)
            {
              v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
            }

            else
            {
              v51 = off_1E77E1F20[v6];
            }

            _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to create %@ message");
          }
        }

LABEL_68:
        v47 = 0;
        goto LABEL_69;
      }

      v26 = objc_alloc_init(IDSQRProtoPluginControlRequest);
      [(IDSQRProtoH3Message *)v10->_message setPlugincontrolRequest:v26];

      plugincontrolRequest = [(IDSQRProtoH3Message *)v10->_message plugincontrolRequest];
      v15 = [(IDSQRProtoMessage *)v10 _setupPluginControlRequest:plugincontrolRequest candidatePair:pairCopy options:optionsCopy];
    }

LABEL_44:
    if (v15)
    {
      goto LABEL_45;
    }

    goto LABEL_53;
  }

LABEL_52:
  v47 = v10;
LABEL_69:

  return v47;
}

- (BOOL)_setupAllocbindRequest:(id)request candidatePair:(id)pair options:(id)options
{
  v138 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  pairCopy = pair;
  theDict = options;
  softwareData = [pairCopy softwareData];
  v117 = [softwareData length];
  if (v117 <= 2)
  {
    v28 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v135 = softwareData;
      _os_log_impl(&dword_1A7AD9000, v28, OS_LOG_TYPE_DEFAULT, "invalid software data %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"invalid software data %@");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid software data %@");
        }
      }
    }
  }

  else
  {
    [requestCopy setServiceId:{__rev16(*(objc_msgSend(softwareData, "bytes") + 1))}];
    mEMORY[0x1E69A60B8] = [MEMORY[0x1E69A60B8] sharedInstance];
    productName = [mEMORY[0x1E69A60B8] productName];

    mEMORY[0x1E69A60B8]2 = [MEMORY[0x1E69A60B8] sharedInstance];
    productVersion = [mEMORY[0x1E69A60B8]2 productVersion];

    mEMORY[0x1E69A60B8]3 = [MEMORY[0x1E69A60B8] sharedInstance];
    productBuildVersion = [mEMORY[0x1E69A60B8]3 productBuildVersion];

    v114 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@, %@", productName, productVersion, productBuildVersion];
    [requestCopy setClientOsVersion:v114];
    mEMORY[0x1E69A60B8]4 = [MEMORY[0x1E69A60B8] sharedInstance];
    model = [mEMORY[0x1E69A60B8]4 model];

    [requestCopy setClientHwVersion:model];
    capabilityFlags = [pairCopy capabilityFlags];
    Value = 0;
    if (theDict && @"gl-option-is-lightweight-participant-key")
    {
      Value = CFDictionaryGetValue(theDict, @"gl-option-is-lightweight-participant-key");
    }

    bOOLValue = [Value BOOLValue];
    v14 = 0;
    if (bOOLValue)
    {
      v15 = capabilityFlags & 0xFFFFFFFFFFDF7FFFLL | 0x8000;
    }

    else
    {
      v15 = capabilityFlags;
    }

    if (theDict && @"gl-option-is-facetime-session")
    {
      v14 = CFDictionaryGetValue(theDict, @"gl-option-is-facetime-session");
    }

    bOOLValue2 = [v14 BOOLValue];
    isSharedQRSession = [pairCopy isSharedQRSession];
    v18 = 0;
    if ((isSharedQRSession & bOOLValue2) != 0)
    {
      v19 = v15 | 0x90000;
    }

    else
    {
      v19 = v15;
    }

    if (theDict && @"gl-option-uplink-nack-disabled")
    {
      v18 = CFDictionaryGetValue(theDict, @"gl-option-uplink-nack-disabled");
    }

    bOOLValue3 = [v18 BOOLValue];
    v21 = 0;
    if (bOOLValue3)
    {
      v19 &= ~0x80000uLL;
    }

    if (theDict && @"gs-shortmki-enabled-key")
    {
      v21 = CFDictionaryGetValue(theDict, @"gs-shortmki-enabled-key");
    }

    bOOLValue4 = [v21 BOOLValue];
    v23 = 0;
    if (bOOLValue4)
    {
      v19 |= 0x800000uLL;
    }

    if (theDict && @"gs-dl-participantid-removal-supported-key")
    {
      v23 = CFDictionaryGetValue(theDict, @"gs-dl-participantid-removal-supported-key");
    }

    bOOLValue5 = [v23 BOOLValue];
    v25 = 0;
    if (bOOLValue5)
    {
      v19 |= 0x2000000uLL;
    }

    if (theDict && @"gs-enable-qpod-vr")
    {
      v25 = CFDictionaryGetValue(theDict, @"gs-enable-qpod-vr");
    }

    if ([v25 BOOLValue])
    {
      v19 |= 0x400000uLL;
    }

    [requestCopy setCapabilities:v19];
    v26 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v135 = v19;
      _os_log_impl(&dword_1A7AD9000, v26, OS_LOG_TYPE_DEFAULT, "_setupAllocbindRequest: final capabilityFlags: %llx", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v103 = v19;
        _IDSLogTransport(@"GL", @"IDS", @"_setupAllocbindRequest: final capabilityFlags: %llx");
        if (_IDSShouldLog())
        {
          v103 = v19;
          _IDSLogV(0, @"IDSFoundation", @"GL", @"_setupAllocbindRequest: final capabilityFlags: %llx");
        }
      }
    }

    v109 = 0;
    if (theDict && @"gs-started-as-u-plus-one-key")
    {
      v27 = CFDictionaryGetValue(theDict, @"gs-started-as-u-plus-one-key");
      if (v27)
      {
        v109 = v27;
        [requestCopy setCallModeInfo:?];
      }

      else
      {
        v109 = 0;
      }
    }

    v108 = 0;
    if (theDict && @"gl-option-fast-plugin-request-key")
    {
      v29 = CFDictionaryGetValue(theDict, @"gl-option-fast-plugin-request-key");
      if (v29)
      {
        v108 = v29;
        [requestCopy setFastPluginRequests:?];
      }

      else
      {
        v108 = 0;
      }
    }

    stateFlags = [pairCopy stateFlags];
    [requestCopy setStateFlags:stateFlags];
    v31 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v135) = stateFlags;
      _os_log_impl(&dword_1A7AD9000, v31, OS_LOG_TYPE_DEFAULT, "_setupAllocbindRequest: final stateFlags: %x", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v104 = stateFlags;
        _IDSLogTransport(@"GL", @"IDS", @"_setupAllocbindRequest: final stateFlags: %x");
        if (_IDSShouldLog())
        {
          v104 = stateFlags;
          _IDSLogV(0, @"IDSFoundation", @"GL", @"_setupAllocbindRequest: final stateFlags: %x");
        }
      }
    }

    if ([pairCopy isSharedQRSession])
    {
      relaySessionInfo = [pairCopy relaySessionInfo];
      publishedStreams = [relaySessionInfo publishedStreams];

      relaySessionInfo2 = [pairCopy relaySessionInfo];
      subscribedStreams = [relaySessionInfo2 subscribedStreams];

      relaySessionInfo3 = [pairCopy relaySessionInfo];
      LODWORD(relaySessionInfo2) = [relaySessionInfo3 maxConcurrentStreams];

      sub_1A7C3A534(requestCopy, publishedStreams, subscribedStreams, relaySessionInfo2);
    }

    v37 = 0;
    if (theDict && @"gl-option-additional-binding")
    {
      v37 = CFDictionaryGetValue(theDict, @"gl-option-additional-binding");
    }

    unsignedIntValue = [v37 unsignedIntValue];
    if (([pairCopy isSelfQRSession] & 1) == 0)
    {
      local = [pairCopy local];
      isCellularStunCandidate = [local isCellularStunCandidate];

      if (@"gl-option-should-auto-disconnect-for-standard-participant")
      {
        v41 = theDict != 0;
      }

      else
      {
        v41 = 0;
      }

      if (v41)
      {
        v42 = CFDictionaryGetValue(theDict, @"gl-option-should-auto-disconnect-for-standard-participant");
      }

      else
      {
        v42 = 0;
      }

      bOOLValue6 = [v42 BOOLValue];
      v44 = +[IDSServerBag sharedInstance];
      v45 = [v44 objectForKey:@"ids-disallow-qr-auto-disconnect"];

      v46 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = @"NO";
        if (bOOLValue6)
        {
          v48 = @"YES";
        }

        else
        {
          v48 = @"NO";
        }

        if (bOOLValue)
        {
          v47 = @"YES";
        }

        *buf = 138412546;
        v135 = v48;
        v136 = 2112;
        v137 = v47;
        _os_log_impl(&dword_1A7AD9000, v46, OS_LOG_TYPE_DEFAULT, "_setupAllocbindRequest: auto disconnect supported: %@, isLightweightParticipant: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        v49 = bOOLValue6 ? @"YES" : @"NO";
        v50 = bOOLValue ? @"YES" : @"NO";
        v105 = v49;
        v107 = v50;
        _IDSLogTransport(@"GL", @"IDS", @"_setupAllocbindRequest: auto disconnect supported: %@, isLightweightParticipant: %@");
        if (_IDSShouldLog())
        {
          v105 = v49;
          v107 = v50;
          _IDSLogV(0, @"IDSFoundation", @"GL", @"_setupAllocbindRequest: auto disconnect supported: %@, isLightweightParticipant: %@");
        }
      }

      v51 = (unsignedIntValue & 0x30 | isCellularStunCandidate);
      if (bOOLValue6)
      {
        if ([v45 BOOLValue])
        {
          v52 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A7AD9000, v52, OS_LOG_TYPE_DEFAULT, "disallowQRAutoDisconnectBagValue set to YES, don't set the channel binding bit", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"GL", @"IDS", @"disallowQRAutoDisconnectBagValue set to YES, don't set the channel binding bit");
              if (_IDSShouldLog())
              {
                _IDSLogV(0, @"IDSFoundation", @"GL", @"disallowQRAutoDisconnectBagValue set to YES, don't set the channel binding bit");
              }
            }
          }
        }

        else
        {
          v51 = (v51 | 0x200);
        }
      }

      [requestCopy setChannelBindingInfo:{v51, v105, v107}];
      v53 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v135) = v51;
        _os_log_impl(&dword_1A7AD9000, v53, OS_LOG_TYPE_DEFAULT, "channelBindingInfo: %u", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v105 = v51;
          _IDSLogTransport(@"GL", @"IDS", @"channelBindingInfo: %u");
          if (_IDSShouldLog())
          {
            v105 = v51;
            _IDSLogV(0, @"IDSFoundation", @"GL", @"channelBindingInfo: %u");
          }
        }
      }
    }

    v111 = 0;
    if (theDict && @"gl-option-qr-connection-id-avc-key")
    {
      v111 = CFDictionaryGetValue(theDict, @"gl-option-qr-connection-id-avc-key");
      if (v111)
      {
        v54 = objc_alloc_init(IDSQRProtoQuicConnectionInfo);
        [(IDSQRProtoQuicConnectionInfo *)v54 setQuicConnectionType:0];
        [(IDSQRProtoQuicConnectionInfo *)v54 setQuicConnectionId:v111];
        [requestCopy addQuicConnectionInfo:v54];
      }

      else
      {
        v111 = 0;
      }
    }

    v110 = 0;
    if (theDict && @"gl-option-qr-connection-id-ids-key")
    {
      v110 = CFDictionaryGetValue(theDict, @"gl-option-qr-connection-id-ids-key");
      if (v110)
      {
        v55 = objc_alloc_init(IDSQRProtoQuicConnectionInfo);
        [(IDSQRProtoQuicConnectionInfo *)v55 setQuicConnectionType:1];
        [(IDSQRProtoQuicConnectionInfo *)v55 setQuicConnectionId:v110];
        [requestCopy addQuicConnectionInfo:v55];
      }

      else
      {
        v110 = 0;
      }
    }

    v118 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (@"gl-option-should-override-server-test-option-tle-disabled")
    {
      v56 = theDict != 0;
    }

    else
    {
      v56 = 0;
    }

    if (v56)
    {
      v57 = CFDictionaryGetValue(theDict, @"gl-option-should-override-server-test-option-tle-disabled");
    }

    else
    {
      v57 = 0;
    }

    if ([v57 BOOLValue])
    {
      v58 = 0;
      if (theDict && @"gl-option-server-test-option-tle-disabled")
      {
        v58 = CFDictionaryGetValue(theDict, @"gl-option-server-test-option-tle-disabled");
      }

      bOOLValue7 = [v58 BOOLValue];
      v60 = objc_alloc_init(IDSQRProtoExperimentOverride);
      [(IDSQRProtoExperimentOverride *)v60 setExperimentName:@"tled"];
      [(IDSQRProtoExperimentOverride *)v60 setValue:bOOLValue7];
      [v118 addObject:v60];
    }

    if ([v118 count])
    {
      v61 = objc_alloc_init(IDSQRProtoAllocBindTestOption);
      [(IDSQRProtoAllocBindTestOption *)v61 setExperimentOverrides:v118];
      [requestCopy setTestOption:v61];
    }

    if (theDict)
    {
      if (@"gl-option-qr-session-experiments")
      {
        v62 = CFDictionaryGetValue(theDict, @"gl-option-qr-session-experiments");
        if (v62)
        {
          v63 = v62;
          array = [MEMORY[0x1E695DF70] array];
          [requestCopy setSessionExperiments:array];

          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v65 = v63;
          v66 = [v65 countByEnumeratingWithState:&v128 objects:v133 count:16];
          if (!v66)
          {
            goto LABEL_164;
          }

          v67 = *v129;
          while (1)
          {
            v68 = 0;
            do
            {
              if (*v129 != v67)
              {
                objc_enumerationMutation(v65);
              }

              v69 = *(*(&v128 + 1) + 8 * v68);
              v70 = [v65 objectForKeyedSubscript:{v69, v106, v107}];
              v71 = objc_alloc_init(IDSQRProtoSessionExperiment);
              [(IDSQRProtoSessionExperiment *)v71 setExperimentName:v69];
              v72 = v70;
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              v74 = v72;
              if (isKindOfClass)
              {
                [(IDSQRProtoSessionExperiment *)v71 setStringValue:v74];

LABEL_140:
                v75 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v135 = v69;
                  v136 = 2112;
                  v137 = v71;
                  _os_log_impl(&dword_1A7AD9000, v75, OS_LOG_TYPE_DEFAULT, "qrexp %@=%@", buf, 0x16u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    v106 = v69;
                    v107 = v71;
                    _IDSLogTransport(@"GL", @"IDS", @"qrexp %@=%@");
                    if (_IDSShouldLog())
                    {
                      v106 = v69;
                      v107 = v71;
                      _IDSLogV(0, @"IDSFoundation", @"GL", @"qrexp %@=%@");
                    }
                  }
                }

                sessionExperiments = [requestCopy sessionExperiments];
                [sessionExperiments addObject:v71];

                goto LABEL_147;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v77 = CFGetTypeID(v74);
                LODWORD(v77) = v77 == CFBooleanGetTypeID();

                if (v77)
                {
                  -[IDSQRProtoSessionExperiment setBoolValue:](v71, "setBoolValue:", [v74 BOOLValue]);
                  goto LABEL_140;
                }
              }

              else
              {
              }

              v78 = v74;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v79 = CFNumberIsFloatType(v78) == 0;

                if (v79)
                {
                  [(IDSQRProtoSessionExperiment *)v71 setInt32Value:[(__CFNumber *)v78 intValue]];
                  goto LABEL_140;
                }
              }

              else
              {
              }

              v80 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v135 = v69;
                v136 = 2112;
                v137 = v78;
                _os_log_impl(&dword_1A7AD9000, v80, OS_LOG_TYPE_DEFAULT, "qrexp %@ has unknown type (raw: %@)!", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  v106 = v69;
                  v107 = v78;
                  _IDSLogTransport(@"GL", @"IDS", @"qrexp %@ has unknown type (raw: %@)!");
                  if (_IDSShouldLog())
                  {
                    v106 = v69;
                    v107 = v78;
                    _IDSLogV(0, @"IDSFoundation", @"GL", @"qrexp %@ has unknown type (raw: %@)!");
                  }
                }
              }

LABEL_147:

              ++v68;
            }

            while (v66 != v68);
            v81 = [v65 countByEnumeratingWithState:&v128 objects:v133 count:16];
            v66 = v81;
            if (!v81)
            {
LABEL_164:

              break;
            }
          }
        }
      }
    }

    if (theDict)
    {
      if (@"gl-option-used-links")
      {
        v82 = CFDictionaryGetValue(theDict, @"gl-option-used-links");
        if (v82)
        {
          v83 = v82;
          array2 = [MEMORY[0x1E695DF70] array];
          v126 = 0u;
          v127 = 0u;
          v124 = 0u;
          v125 = 0u;
          v85 = v83;
          v86 = [v85 countByEnumeratingWithState:&v124 objects:v132 count:16];
          if (v86)
          {
            v87 = *v125;
            do
            {
              for (i = 0; i != v86; ++i)
              {
                if (*v125 != v87)
                {
                  objc_enumerationMutation(v85);
                }

                v89 = *(*(&v124 + 1) + 8 * i);
                v90 = objc_alloc_init(IDSQRProtoAllocBindStaleLink);
                localIP = [v89 localIP];
                [(IDSQRProtoAllocBindStaleLink *)v90 setClientAddress:localIP];

                serverIP = [v89 serverIP];
                [(IDSQRProtoAllocBindStaleLink *)v90 setServerAddress:serverIP];

                -[IDSQRProtoAllocBindStaleLink setLinkId:](v90, "setLinkId:", [v89 linkID]);
                [array2 addObject:v90];
              }

              v86 = [v85 countByEnumeratingWithState:&v124 objects:v132 count:16];
            }

            while (v86);
          }

          [requestCopy setStaleLinks:array2];
        }
      }
    }

    if (theDict)
    {
      if (@"gl-option-qr-server-data-blob")
      {
        v93 = CFDictionaryGetValue(theDict, @"gl-option-qr-server-data-blob");
        if (v93)
        {
          v94 = v93;
          [requestCopy setServerBlob:v93];
        }
      }
    }

    if (theDict)
    {
      if (@"gl-option-ids-context-blob-key")
      {
        v95 = CFDictionaryGetValue(theDict, @"gl-option-ids-context-blob-key");
        if (v95)
        {
          v96 = v95;
          [requestCopy setClientContextBlob:v95];
        }
      }
    }

    v97 = 0;
    if (theDict && @"gl-option-ids-context-reason-key")
    {
      v97 = CFDictionaryGetValue(theDict, @"gl-option-ids-context-reason-key");
    }

    intValue = [v97 intValue];
    if (intValue)
    {
      [requestCopy setReason:intValue];
    }

    v99 = [(__CFDictionary *)theDict objectForKeyedSubscript:@"gl-option-materials-key"];
    [requestCopy setMaterials:v99];

    materials = [requestCopy materials];
    v101 = [materials description];

    v123 = v101;
    cut_dispatch_log_queue();
  }

  return v117 > 2;
}

- (BOOL)_setupInfoRequest:(id)request candidatePair:(id)pair options:(id)options
{
  requestCopy = request;
  relaySessionToken = [pair relaySessionToken];
  [requestCopy setAccessToken:relaySessionToken];
  [requestCopy setInfoFlags:7];

  return 1;
}

- (BOOL)_setupParticipantUpdateRequest:(id)request candidatePair:(id)pair options:(id)options
{
  v35 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  pairCopy = pair;
  optionsCopy = options;
  Value = 0;
  if (optionsCopy && @"gl-option-participant-update-request-type")
  {
    Value = CFDictionaryGetValue(optionsCopy, @"gl-option-participant-update-request-type");
  }

  unsignedShortValue = [Value unsignedShortValue];
  [requestCopy setOperationFlags:unsignedShortValue];
  if (unsignedShortValue)
  {
    v12 = 0;
    if (optionsCopy && @"gl-option-participant-update-blocked-participantIDs")
    {
      v12 = CFDictionaryGetValue(optionsCopy, @"gl-option-participant-update-blocked-participantIDs");
    }

    v13 = v12;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [requestCopy addParticipantIdList:{objc_msgSend(*(*(&v29 + 1) + 8 * i), "unsignedLongLongValue")}];
        }

        v15 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v15);
    }
  }

  v18 = 0;
  if (optionsCopy && @"gl-option-participant-update-request-counter")
  {
    v18 = CFDictionaryGetValue(optionsCopy, @"gl-option-participant-update-request-counter");
  }

  [requestCopy setSessionStateCounter:{objc_msgSend(v18, "unsignedIntValue")}];
  if (optionsCopy)
  {
    if (@"gl-option-ids-context-blob-key")
    {
      v19 = CFDictionaryGetValue(optionsCopy, @"gl-option-ids-context-blob-key");
      if (v19)
      {
        v20 = v19;
        v21 = objc_alloc_init(IDSQRProtoMaterialInfo);
        [(IDSQRProtoMaterialInfo *)v21 setMaterialType:7];
        v22 = [v20 copy];
        [(IDSQRProtoMaterialInfo *)v21 setMaterialContent:v22];

        v28 = 0;
        v23 = [MEMORY[0x1E695DEF0] dataWithBytes:&v28 length:4];
        [(IDSQRProtoMaterialInfo *)v21 setMaterialId:v23];
        v24 = objc_alloc_init(IDSQRProtoMaterial);
        [(IDSQRProtoMaterial *)v24 setReceiverParticipantId:0];
        v33 = v21;
        v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
        v26 = [v25 mutableCopy];
        [(IDSQRProtoMaterial *)v24 setMaterialInfos:v26];

        [requestCopy setClientContextBlob:v24];
      }
    }
  }

  return 1;
}

- (BOOL)_setupRegisterRequest:(id)request candidatePair:(id)pair options:(id)options
{
  v29 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  pairCopy = pair;
  optionsCopy = options;
  candidatePairToken = [pairCopy candidatePairToken];
  if (candidatePairToken)
  {
    v11 = [optionsCopy objectForKeyedSubscript:@"gl-option-reliable-unicast-reliable-link-uuid"];
    v12 = v11;
    if (!v11)
    {
      v22 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "Will not send register request due to reliable link UUID!", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"Will not send register request due to reliable link UUID!");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"Will not send register request due to reliable link UUID!");
          }
        }
      }

      v20 = 0;
      goto LABEL_41;
    }

    memset(buf, 170, 16);
    [v11 getUUIDBytes:buf];
    v13 = [MEMORY[0x1E695DEF0] dataWithBytes:buf length:16];
    if (v13)
    {
      [requestCopy setE2eChannelUuid:v13];
      v14 = [optionsCopy objectForKeyedSubscript:@"gl-option-reliable-unicast-local-relay-id"];
      unsignedIntValue = [v14 unsignedIntValue];

      v16 = unsignedIntValue;
      if (unsignedIntValue)
      {
        v17 = [optionsCopy objectForKeyedSubscript:@"gl-option-reliable-unicast-remote-relay-id"];
        unsignedIntValue2 = [v17 unsignedIntValue];

        if (unsignedIntValue2)
        {
          v19 = objc_alloc_init(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo);
          [(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo *)v19 setQuicClientLinkId:v16];
          [(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo *)v19 setQuicServerLinkId:unsignedIntValue2];
          [(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo *)v19 setServerGeneratedConnectionIds:1];
          [requestCopy setChannelInfo:v19];

          v20 = 1;
LABEL_40:

LABEL_41:
          goto LABEL_42;
        }

        v25 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *v27 = 0;
          _os_log_impl(&dword_1A7AD9000, v25, OS_LOG_TYPE_DEFAULT, "Will not send register request, invalid remote relay link ID!", v27, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"Will not send register request, invalid remote relay link ID!");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"Will not send register request, invalid remote relay link ID!");
            }
          }
        }
      }

      else
      {
        v24 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *v27 = 0;
          _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "Will not send register request, invalid local relay link ID!", v27, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"Will not send register request, invalid local relay link ID!");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"Will not send register request, invalid local relay link ID!");
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
        *v27 = 0;
        _os_log_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_DEFAULT, "Will not send register request, can not convert UUID to NSData!", v27, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"Will not send register request, can not convert UUID to NSData!");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"Will not send register request, can not convert UUID to NSData!");
          }
        }
      }
    }

    v20 = 0;
    goto LABEL_40;
  }

  v21 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "Will not send register request due to invalid candidatePairToken!", buf, 2u);
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

  v20 = 0;
LABEL_42:

  return v20;
}

- (BOOL)_setupRegisterAckRequest:(id)request candidatePair:(id)pair options:(id)options
{
  v21 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  pairCopy = pair;
  optionsCopy = options;
  candidatePairToken = [pairCopy candidatePairToken];
  if (candidatePairToken)
  {
    v11 = [optionsCopy objectForKeyedSubscript:@"gl-option-reliable-unicast-reliable-link-uuid"];
    v12 = v11;
    if (v11)
    {
      memset(buf, 170, 16);
      [v11 getUUIDBytes:buf];
      v13 = [MEMORY[0x1E695DEF0] dataWithBytes:buf length:16];
      v14 = v13 != 0;
      if (v13)
      {
        [requestCopy setE2eChannelUuid:v13];
        [requestCopy setAccept:1];
      }

      else
      {
        v17 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v19 = 0;
          _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "Will not send register ack request, can not convert UUID to NSData!", v19, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"Will not send register ack request, can not convert UUID to NSData!");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"Will not send register ack request, can not convert UUID to NSData!");
            }
          }
        }
      }
    }

    else
    {
      v16 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "Will not send register ack request due to invalid reliable link UUID!", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"Will not send register ack request due to invalid reliable link UUID!");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"Will not send register ack request due to invalid reliable link UUID!");
          }
        }
      }

      v14 = 0;
    }
  }

  else
  {
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "Will not send register ack request due to invalid candidatePairToken!", buf, 2u);
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

    v14 = 0;
  }

  return v14;
}

- (BOOL)_setupPluginControlRequest:(id)request candidatePair:(id)pair options:(id)options
{
  requestCopy = request;
  pairCopy = pair;
  optionsCopy = options;
  Value = 0;
  if (optionsCopy && @"gl-option-plugin-operation")
  {
    Value = CFDictionaryGetValue(optionsCopy, @"gl-option-plugin-operation");
  }

  unsignedIntValue = [Value unsignedIntValue];
  v12 = 0;
  if (optionsCopy && @"gl-option-plugin-name")
  {
    v12 = CFDictionaryGetValue(optionsCopy, @"gl-option-plugin-name");
  }

  v13 = v12;
  v14 = 0;
  if (optionsCopy && @"gl-option-plugin-raw-public-key")
  {
    v14 = CFDictionaryGetValue(optionsCopy, @"gl-option-plugin-raw-public-key");
  }

  v15 = v14;
  [requestCopy setPluginOperation:unsignedIntValue];
  [requestCopy setPluginName:v13];
  [requestCopy setPluginClientRawPublicKey:v15];

  return 1;
}

- (BOOL)_setupSessionInfoRequest:(id)request candidatePair:(id)pair options:(id)options
{
  requestCopy = request;
  pairCopy = pair;
  optionsCopy = options;
  isSharedQRSession = [pairCopy isSharedQRSession];
  if (isSharedQRSession)
  {
    Value = 0;
    if (optionsCopy && @"gl-option-sessioninfo-request-type")
    {
      Value = CFDictionaryGetValue(optionsCopy, @"gl-option-sessioninfo-request-type");
    }

    if ([Value intValue] == 2)
    {
      v12 = 0;
      if (optionsCopy && @"gl-option-sessioninfo-generation-counter")
      {
        v12 = CFDictionaryGetValue(optionsCopy, @"gl-option-sessioninfo-generation-counter");
      }

      [requestCopy setGenerationCounter:{objc_msgSend(v12, "unsignedIntValue")}];
      v13 = 0;
      if (optionsCopy && @"gl-option-sessioninfo-published-streams")
      {
        v13 = CFDictionaryGetValue(optionsCopy, @"gl-option-sessioninfo-published-streams");
      }

      v14 = v13;
      v15 = 0;
      if (optionsCopy && @"gl-option-sessioninfo-subscribed-streams")
      {
        v15 = CFDictionaryGetValue(optionsCopy, @"gl-option-sessioninfo-subscribed-streams");
      }

      v16 = v15;
      v17 = 0;
      if (optionsCopy && @"gl-option-sessioninfo-max-concurrent-streams")
      {
        v17 = CFDictionaryGetValue(optionsCopy, @"gl-option-sessioninfo-max-concurrent-streams");
      }

      sub_1A7C3A534(requestCopy, v14, v16, [v17 unsignedCharValue]);
      v18 = 0;
      if (optionsCopy && @"gl-option-sessioninfo-relay-link-id")
      {
        v18 = CFDictionaryGetValue(optionsCopy, @"gl-option-sessioninfo-relay-link-id");
      }

      unsignedShortValue = [v18 unsignedShortValue];
      if (unsignedShortValue)
      {
        [requestCopy setLinkId:unsignedShortValue];
      }
    }

    v20 = 0;
    if (optionsCopy && @"gl-option-sessioninfo-command-flag")
    {
      v20 = CFDictionaryGetValue(optionsCopy, @"gl-option-sessioninfo-command-flag");
    }

    unsignedIntValue = [v20 unsignedIntValue];
    if (unsignedIntValue)
    {
      [requestCopy setCommandFlags:unsignedIntValue];
    }

    v22 = 0;
    if (optionsCopy && @"gl-option-sessioninfo-request-id")
    {
      v22 = CFDictionaryGetValue(optionsCopy, @"gl-option-sessioninfo-request-id");
    }

    unsignedIntValue2 = [v22 unsignedIntValue];
    if (unsignedIntValue2)
    {
      [requestCopy setRequestId:unsignedIntValue2];
    }
  }

  else
  {
    v24 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "session-info is not allowed in non-shared QR session", v26, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"session-info is not allowed in non-shared QR session");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"session-info is not allowed in non-shared QR session");
        }
      }
    }
  }

  return isSharedQRSession;
}

- (BOOL)_setupPutmaterialRequest:(id)request candidatePair:(id)pair options:(id)options
{
  optionsCopy = options;
  requestCopy = request;
  v8 = [optionsCopy objectForKeyedSubscript:@"gl-option-materials-key"];
  [requestCopy setMaterials:v8];

  v9 = [optionsCopy objectForKeyedSubscript:@"gl-option-materials-key"];

  v10 = [v9 description];

  v11 = v10;
  cut_dispatch_log_queue();

  return 1;
}

- (BOOL)_setupCallModeUpdateRequest:(id)request candidatePair:(id)pair options:(id)options
{
  requestCopy = request;
  v7 = [options objectForKeyedSubscript:@"gl-option-call-mode-update-info-key"];
  [requestCopy setCallModeInfo:v7];

  return 1;
}

- (BOOL)_setupStatsRequest:(id)request candidatePair:(id)pair options:(id)options
{
  requestCopy = request;
  optionsCopy = options;
  startTime = self->_startTime;
  pairCopy = pair;
  v12 = ntpTime32(startTime);
  [pairCopy serverLatency];
  v14 = v13;

  v15 = v14 * 1000.0;
  [requestCopy setClientTimestampNtp:v12];
  Value = 0;
  if (optionsCopy && @"report-p2p-session-key")
  {
    Value = CFDictionaryGetValue(optionsCopy, @"report-p2p-session-key");
  }

  if ([Value BOOLValue])
  {
    [requestCopy setP2pConnection:1];
  }

  if (v15)
  {
    [requestCopy setClientLatencyMs:v15];
  }

  if (optionsCopy && @"gl-option-stats-sent-packets" && CFDictionaryGetValue(optionsCopy, @"gl-option-stats-sent-packets"))
  {
    goto LABEL_15;
  }

  if (!optionsCopy || !@"gl-option-stats-received-packets" || !CFDictionaryGetValue(optionsCopy, @"gl-option-stats-received-packets"))
  {
    goto LABEL_20;
  }

  if (@"gl-option-stats-sent-packets")
  {
LABEL_15:
    v17 = CFDictionaryGetValue(optionsCopy, @"gl-option-stats-sent-packets");
  }

  else
  {
    v17 = 0;
  }

  [requestCopy setSentPackets:{objc_msgSend(v17, "unsignedIntValue")}];
  if (@"gl-option-stats-received-packets")
  {
    v18 = CFDictionaryGetValue(optionsCopy, @"gl-option-stats-received-packets");
  }

  else
  {
    v18 = 0;
  }

  [requestCopy setReceivedPackets:{objc_msgSend(v18, "unsignedIntValue")}];
LABEL_20:

  return 1;
}

- (BOOL)_setupTestRequest:(id)request candidatePair:(id)pair options:(id)options
{
  v31 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  pairCopy = pair;
  optionsCopy = options;
  Value = 0;
  if (optionsCopy && @"gl-option-test-options-flags")
  {
    Value = CFDictionaryGetValue(optionsCopy, @"gl-option-test-options-flags");
  }

  unsignedIntValue = [Value unsignedIntValue];
  v12 = 0;
  if (optionsCopy && @"gl-option-test-requested-message-type")
  {
    v12 = CFDictionaryGetValue(optionsCopy, @"gl-option-test-requested-message-type");
  }

  unsignedIntValue2 = [v12 unsignedIntValue];
  v14 = 0;
  if (optionsCopy && @"gl-option-test-requested-error-code-type")
  {
    v14 = CFDictionaryGetValue(optionsCopy, @"gl-option-test-requested-error-code-type");
  }

  unsignedIntValue3 = [v14 unsignedIntValue];
  v16 = 0;
  if (optionsCopy && @"gl-option-test-sub-operation")
  {
    v16 = CFDictionaryGetValue(optionsCopy, @"gl-option-test-sub-operation");
  }

  v17 = v16;
  [requestCopy setTestOptionFlags:unsignedIntValue];
  if (unsignedIntValue == 8)
  {
    v18 = unsignedIntValue2;
    [requestCopy setRequestedMessageType:v18];
    v19 = unsignedIntValue3;
    [requestCopy setRequestedErrorCode:v19];
    v20 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v26 = 8;
      v27 = 1024;
      v28 = v18;
      v29 = 1024;
      v30 = v19;
      _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "testOptions: %u, requestedMessageType: %u, requestedErrorCode: %u", buf, 0x14u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v23 = v18;
        v24 = v19;
        v22 = 8;
        _IDSLogTransport(@"GL", @"IDS", @"testOptions: %u, requestedMessageType: %u, requestedErrorCode: %u");
        if (_IDSShouldLog())
        {
          v23 = v18;
          v24 = v19;
          v22 = 8;
          _IDSLogV(0, @"IDSFoundation", @"GL", @"testOptions: %u, requestedMessageType: %u, requestedErrorCode: %u");
        }
      }
    }
  }

  [requestCopy setSubOperation:{v17, v22, v23, v24}];

  return 1;
}

- (BOOL)_setupUnallocbindRequest:(id)request candidatePair:(id)pair options:(id)options
{
  requestCopy = request;
  pairCopy = pair;
  optionsCopy = options;
  v10 = optionsCopy;
  if (optionsCopy)
  {
    if (@"gl-option-ids-context-blob-key")
    {
      v11 = CFDictionaryGetValue(optionsCopy, @"gl-option-ids-context-blob-key");
      if (v11)
      {
        v12 = v11;
        [requestCopy setClientContextBlob:v11];
      }
    }
  }

  Value = 0;
  if (v10 && @"gl-option-ids-context-reason-key")
  {
    Value = CFDictionaryGetValue(v10, @"gl-option-ids-context-reason-key");
  }

  [requestCopy setReason:{objc_msgSend(Value, "intValue")}];

  return 1;
}

- (BOOL)_setupChannelConfigRequest:(id)request candidatePair:(id)pair options:(id)options
{
  requestCopy = request;
  pairCopy = pair;
  optionsCopy = options;
  Value = 0;
  if (optionsCopy && @"gl-option-channel-config-override-idle-timeout-key")
  {
    Value = CFDictionaryGetValue(optionsCopy, @"gl-option-channel-config-override-idle-timeout-key");
  }

  [requestCopy setOverrideIdleTimeoutSeconds:{objc_msgSend(Value, "unsignedIntValue")}];
  v11 = 0;
  if (optionsCopy && @"gl-option-channel-config-counter-key")
  {
    v11 = CFDictionaryGetValue(optionsCopy, @"gl-option-channel-config-counter-key");
  }

  [requestCopy setConfigCounter:{objc_msgSend(v11, "unsignedIntValue")}];

  return 1;
}

- (IDSQRProtoMessage)initWithData:(id)data
{
  v24 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v19.receiver = self;
  v19.super_class = IDSQRProtoMessage;
  v5 = [(IDSQRProtoMessage *)&v19 init];
  if (v5)
  {
    v5->_startTime = ids_monotonic_time();
    v6 = [[IDSQRProtoH3Message alloc] initWithData:dataCopy];
    message = v5->_message;
    v5->_message = v6;

    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v5->_message;
      *buf = 138412546;
      v21 = v9;
      v22 = 2112;
      v23 = dataCopy;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "created proto message %@ with %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v17 = v5->_message;
        v18 = dataCopy;
        _IDSLogTransport(@"GL", @"IDS", @"created proto message %@ with %@");
        if (_IDSShouldLog())
        {
          v17 = v5->_message;
          v18 = dataCopy;
          _IDSLogV(0, @"IDSFoundation", @"GL", @"created proto message %@ with %@");
        }
      }
    }

    v10 = [(IDSQRProtoH3Message *)v5->_message description:v17];
    v11 = [dataCopy debugDescription];
    v12 = v10;
    v13 = v11;
    cut_dispatch_log_queue();
    v14 = v5->_message;
    if (!v14 || ![(IDSQRProtoH3Message *)v14 hasInnerMessage])
    {

      v15 = 0;
      goto LABEL_13;
    }
  }

  v15 = v5;
LABEL_13:

  return v15;
}

- (id)allocbindResponse
{
  if ([(IDSQRProtoH3Message *)self->_message innerMessage]== 2 && [(IDSQRProtoH3Message *)self->_message hasAllocbindResponse])
  {
    allocbindResponse = [(IDSQRProtoH3Message *)self->_message allocbindResponse];
  }

  else
  {
    allocbindResponse = 0;
  }

  return allocbindResponse;
}

- (id)infoResponse
{
  if ([(IDSQRProtoH3Message *)self->_message hasInfoResponse])
  {
    infoResponse = [(IDSQRProtoH3Message *)self->_message infoResponse];
  }

  else
  {
    infoResponse = 0;
  }

  return infoResponse;
}

- (id)participantUpdateResponse
{
  if ([(IDSQRProtoH3Message *)self->_message hasParticipantupdateResponse])
  {
    participantupdateResponse = [(IDSQRProtoH3Message *)self->_message participantupdateResponse];
  }

  else
  {
    participantupdateResponse = 0;
  }

  return participantupdateResponse;
}

- (id)pluginControlResponse
{
  if ([(IDSQRProtoH3Message *)self->_message hasPlugincontrolResponse])
  {
    plugincontrolResponse = [(IDSQRProtoH3Message *)self->_message plugincontrolResponse];
  }

  else
  {
    plugincontrolResponse = 0;
  }

  return plugincontrolResponse;
}

- (id)sessionInfoResponse
{
  if ([(IDSQRProtoH3Message *)self->_message hasSessioninfoResponse])
  {
    sessioninfoResponse = [(IDSQRProtoH3Message *)self->_message sessioninfoResponse];
  }

  else
  {
    sessioninfoResponse = 0;
  }

  return sessioninfoResponse;
}

- (id)getMaterialResponse
{
  if ([(IDSQRProtoH3Message *)self->_message hasGetmaterialResponse])
  {
    getmaterialResponse = [(IDSQRProtoH3Message *)self->_message getmaterialResponse];
  }

  else
  {
    getmaterialResponse = 0;
  }

  return getmaterialResponse;
}

- (id)putMaterialResponse
{
  if ([(IDSQRProtoH3Message *)self->_message hasPutmaterialResponse])
  {
    putmaterialResponse = [(IDSQRProtoH3Message *)self->_message putmaterialResponse];
  }

  else
  {
    putmaterialResponse = 0;
  }

  return putmaterialResponse;
}

- (id)callModeUpdateResponse
{
  if ([(IDSQRProtoH3Message *)self->_message hasCallmodeupdateResponse])
  {
    callmodeupdateResponse = [(IDSQRProtoH3Message *)self->_message callmodeupdateResponse];
  }

  else
  {
    callmodeupdateResponse = 0;
  }

  return callmodeupdateResponse;
}

- (id)statsResponse
{
  if ([(IDSQRProtoH3Message *)self->_message hasStatsResponse])
  {
    statsResponse = [(IDSQRProtoH3Message *)self->_message statsResponse];
  }

  else
  {
    statsResponse = 0;
  }

  return statsResponse;
}

- (id)testResponse
{
  if ([(IDSQRProtoH3Message *)self->_message hasTestResponse])
  {
    testResponse = [(IDSQRProtoH3Message *)self->_message testResponse];
  }

  else
  {
    testResponse = 0;
  }

  return testResponse;
}

- (id)unallocbindResponse
{
  if ([(IDSQRProtoH3Message *)self->_message hasUnallocbindResponse])
  {
    unallocbindResponse = [(IDSQRProtoH3Message *)self->_message unallocbindResponse];
  }

  else
  {
    unallocbindResponse = 0;
  }

  return unallocbindResponse;
}

- (id)diagnosticIndication
{
  if ([(IDSQRProtoH3Message *)self->_message hasDiagnosticIndication])
  {
    diagnosticIndication = [(IDSQRProtoH3Message *)self->_message diagnosticIndication];
  }

  else
  {
    diagnosticIndication = 0;
  }

  return diagnosticIndication;
}

- (id)errorIndication
{
  if ([(IDSQRProtoH3Message *)self->_message hasErrorIndication])
  {
    errorIndication = [(IDSQRProtoH3Message *)self->_message errorIndication];
  }

  else
  {
    errorIndication = 0;
  }

  return errorIndication;
}

- (id)goAwayIndication
{
  if ([(IDSQRProtoH3Message *)self->_message hasGoawayIndication])
  {
    goawayIndication = [(IDSQRProtoH3Message *)self->_message goawayIndication];
  }

  else
  {
    goawayIndication = 0;
  }

  return goawayIndication;
}

- (id)participantUpdateIndication
{
  if ([(IDSQRProtoH3Message *)self->_message hasParticipantupdateIndication])
  {
    participantupdateIndication = [(IDSQRProtoH3Message *)self->_message participantupdateIndication];
  }

  else
  {
    participantupdateIndication = 0;
  }

  return participantupdateIndication;
}

- (id)pluginControlIndication
{
  if ([(IDSQRProtoH3Message *)self->_message hasPlugincontrolIndication])
  {
    plugincontrolIndication = [(IDSQRProtoH3Message *)self->_message plugincontrolIndication];
  }

  else
  {
    plugincontrolIndication = 0;
  }

  return plugincontrolIndication;
}

- (id)reallocateIndication
{
  if ([(IDSQRProtoH3Message *)self->_message hasReallocateIndication])
  {
    reallocateIndication = [(IDSQRProtoH3Message *)self->_message reallocateIndication];
  }

  else
  {
    reallocateIndication = 0;
  }

  return reallocateIndication;
}

- (id)sessionInfoIndication
{
  if ([(IDSQRProtoH3Message *)self->_message hasSessioninfoIndication])
  {
    sessioninfoIndication = [(IDSQRProtoH3Message *)self->_message sessioninfoIndication];
  }

  else
  {
    sessioninfoIndication = 0;
  }

  return sessioninfoIndication;
}

- (id)putMaterialIndication
{
  if ([(IDSQRProtoH3Message *)self->_message hasPutmaterialIndication])
  {
    putmaterialIndication = [(IDSQRProtoH3Message *)self->_message putmaterialIndication];
  }

  else
  {
    putmaterialIndication = 0;
  }

  return putmaterialIndication;
}

- (id)registerIndication
{
  if ([(IDSQRProtoH3Message *)self->_message hasRegisterIndication])
  {
    registerIndication = [(IDSQRProtoH3Message *)self->_message registerIndication];
  }

  else
  {
    registerIndication = 0;
  }

  return registerIndication;
}

- (id)registerResponse
{
  if ([(IDSQRProtoH3Message *)self->_message hasRegisterResponse])
  {
    registerResponse = [(IDSQRProtoH3Message *)self->_message registerResponse];
  }

  else
  {
    registerResponse = 0;
  }

  return registerResponse;
}

- (id)channelConfigResponse
{
  if ([(IDSQRProtoH3Message *)self->_message hasChannelconfigResponse])
  {
    channelconfigResponse = [(IDSQRProtoH3Message *)self->_message channelconfigResponse];
  }

  else
  {
    channelconfigResponse = 0;
  }

  return channelconfigResponse;
}

+ (id)dataWithEmptyUnAllocBindResponse
{
  v2 = objc_alloc_init(IDSQRProtoH3Message);
  v3 = objc_alloc_init(IDSQRProtoUnAllocBindResponse);
  [(IDSQRProtoH3Message *)v2 setUnallocbindResponse:v3];

  data = [(IDSQRProtoH3Message *)v2 data];

  return data;
}

@end