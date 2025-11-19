@interface IDSQuickRelaySessionInfo
- (int64_t)parseSessionInfo:(id)a3;
@end

@implementation IDSQuickRelaySessionInfo

- (int64_t)parseSessionInfo:(id)a3
{
  v124 = *MEMORY[0x1E69E9840];
  v4 = a3;
  Value = 0;
  if (v4 && @"qat")
  {
    Value = CFDictionaryGetValue(v4, @"qat");
  }

  v6 = [Value unsignedIntValue];
  self->_allocateType = v6;
  if (v6 - 5 > 0xFFFFFFFB)
  {
    v9 = 0;
    if (v4 && @"qsat")
    {
      v9 = CFDictionaryGetValue(v4, @"qsat");
    }

    [v9 doubleValue];
    self->_allocateTime = v10;
    if (v10 <= 0.0)
    {
      v21 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "failed to get allocate-time from sessionInfo.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"failed to get allocate-time from sessionInfo.");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get allocate-time from sessionInfo.");
          }
        }
      }

      v8 = 28;
    }

    else if (v4 && @"U" && (v11 = CFDictionaryGetValue(v4, @"U"), (v115 = v11) != 0))
    {
      objc_storeStrong(&self->_allocateRequestID, v11);
      if (@"qrsi" && (v12 = CFDictionaryGetValue(v4, @"qrsi"), (v13 = v12) != 0))
      {
        v113 = v13;
        objc_storeStrong(&self->_relaySessionID, v12);
        if (@"qrst" && (v14 = CFDictionaryGetValue(v4, @"qrst"), (v15 = v14) != 0))
        {
          v110 = v15;
          objc_storeStrong(&self->_relaySessionToken, v14);
          if (@"qrsk" && (v16 = CFDictionaryGetValue(v4, @"qrsk"), (v17 = v16) != 0))
          {
            v109 = v17;
            objc_storeStrong(&self->_relaySessionKey, v16);
            if (@"qr-software-id" && (v18 = CFDictionaryGetValue(v4, @"qr-software-id"), (v19 = v18) != 0))
            {
              v108 = v19;
              objc_storeStrong(&self->_softwareData, v18);
              if (@"qrp")
              {
                v20 = CFDictionaryGetValue(v4, @"qrp");
              }

              else
              {
                v20 = 0;
              }

              v28 = [v20 unsignedShortValue];
              if (v28)
              {
                v120 = -1431655766;
                if (@"qrip" && (v29 = v28, (v30 = CFDictionaryGetValue(v4, @"qrip")) != 0))
                {
                  v106 = v30;
                  [v30 getBytes:&v120 length:4];
                  *&self->_serverAddress.ss_len = 528;
                  *&self->_serverAddress.__ss_pad1[2] = v120;
                  v31 = __rev16(v29);
                  *self->_serverAddress.__ss_pad1 = v31;
                  if (@"qipp")
                  {
                    v32 = CFDictionaryGetValue(v4, @"qipp");
                  }

                  else
                  {
                    v32 = 0;
                  }

                  self->_ipPreference = [v32 unsignedCharValue];
                  if (@"qrhpp")
                  {
                    v35 = CFDictionaryGetValue(v4, @"qrhpp");
                  }

                  else
                  {
                    v35 = 0;
                  }

                  v36 = [v35 unsignedShortValue];
                  v37 = v36;
                  *&self->_highPriorityServerAddressIPv6.__ss_pad2[8] = 0;
                  *self->_highPriorityServerAddressIPv6.__ss_pad2 = 0;
                  *&self->_highPriorityServerAddressIPv6.ss_len = 0u;
                  *&self->_highPriorityServerAddress.ss_len = 0u;
                  if (v36)
                  {
                    *&self->_highPriorityServerAddress.ss_len = 528;
                    *&self->_highPriorityServerAddress.__ss_pad1[2] = v120;
                    *self->_highPriorityServerAddress.__ss_pad1 = __rev16(v36);
                  }

                  else
                  {
                    v38 = OSLogHandleForTransportCategory();
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_1A7AD9000, v38, OS_LOG_TYPE_DEFAULT, "failed to get high priority relay-port from sessionInfo.", buf, 2u);
                    }

                    if (os_log_shim_legacy_logging_enabled())
                    {
                      if (_IDSShouldLogTransport())
                      {
                        _IDSLogTransport(@"GL", @"IDS", @"failed to get high priority relay-port from sessionInfo.");
                        if (_IDSShouldLog())
                        {
                          _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get high priority relay-port from sessionInfo.");
                        }
                      }
                    }
                  }

                  if (@"qrip6" && (v39 = CFDictionaryGetValue(v4, @"qrip6")) != 0)
                  {
                    v107 = v39;
                    if ([v39 length] == 16)
                    {
                      *&self->_serverAddressIPv6.ss_len = 0;
                      self->_serverAddressIPv6.__ss_align = 0;
                      *&self->_serverAddressIPv6.__ss_pad2[8] = 0;
                      *self->_serverAddressIPv6.__ss_pad2 = 0;
                      *&self->_serverAddressIPv6.ss_len = 7708;
                      *self->_serverAddressIPv6.__ss_pad1 = v31;
                      v40 = v107;
                      *&self->_serverAddressIPv6.__ss_align = *[v107 bytes];
                      v41 = OSLogHandleForTransportCategory();
                      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                      {
                        v42 = *self->_serverAddressIPv6.__ss_pad1;
                        *buf = 67109120;
                        LODWORD(v123) = v42;
                        _os_log_impl(&dword_1A7AD9000, v41, OS_LOG_TYPE_DEFAULT, "QR IPv6 port number: %d", buf, 8u);
                      }

                      if (os_log_shim_legacy_logging_enabled())
                      {
                        if (_IDSShouldLogTransport())
                        {
                          v103 = *self->_serverAddressIPv6.__ss_pad1;
                          _IDSLogTransport(@"GL", @"IDS", @"QR IPv6 port number: %d");
                          if (_IDSShouldLog())
                          {
                            v103 = *self->_serverAddressIPv6.__ss_pad1;
                            _IDSLogV(0, @"IDSFoundation", @"GL", @"QR IPv6 port number: %d");
                          }
                        }
                      }

                      if (v37)
                      {
                        *&self->_highPriorityServerAddressIPv6.ss_len = 7708;
                        *self->_highPriorityServerAddressIPv6.__ss_pad1 = __rev16(v37);
                        v43 = v107;
                        *&self->_highPriorityServerAddressIPv6.__ss_align = *[v107 bytes];
                      }
                    }

                    else
                    {
                      v51 = OSLogHandleForTransportCategory();
                      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                      {
                        v52 = [v107 length];
                        *buf = 134217984;
                        v123 = v52;
                        _os_log_impl(&dword_1A7AD9000, v51, OS_LOG_TYPE_DEFAULT, "QR IPv6 address length is: %lu != 16", buf, 0xCu);
                      }

                      if (os_log_shim_legacy_logging_enabled())
                      {
                        if (_IDSShouldLogTransport())
                        {
                          v103 = [v107 length];
                          _IDSLogTransport(@"GL", @"IDS", @"QR IPv6 address length is: %lu != 16");
                          if (_IDSShouldLog())
                          {
                            v103 = [v107 length];
                            _IDSLogV(0, @"IDSFoundation", @"GL", @"QR IPv6 address length is: %lu != 16");
                          }
                        }
                      }
                    }
                  }

                  else
                  {
                    v44 = OSLogHandleForTransportCategory();
                    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_1A7AD9000, v44, OS_LOG_TYPE_DEFAULT, "No IPV6 relay-address from sessionInfo.", buf, 2u);
                    }

                    if (os_log_shim_legacy_logging_enabled())
                    {
                      if (_IDSShouldLogTransport())
                      {
                        _IDSLogTransport(@"GL", @"IDS", @"No IPV6 relay-address from sessionInfo.");
                        if (_IDSShouldLog())
                        {
                          _IDSLogV(0, @"IDSFoundation", @"GL", @"No IPV6 relay-address from sessionInfo.");
                        }
                      }
                    }

                    v107 = 0;
                  }

                  if (@"qv")
                  {
                    v45 = CFDictionaryGetValue(v4, @"qv");
                  }

                  else
                  {
                    v45 = 0;
                  }

                  v46 = [v45 unsignedCharValue];
                  if (v46)
                  {
                    self->_protocolVersion = v46;
                    if (@"qids" && (v47 = CFDictionaryGetValue(v4, @"qids"), (v104 = v47) != 0))
                    {
                      objc_storeStrong(&self->_idsSessionID, v47);
                      if (@"qrpr")
                      {
                        v48 = CFDictionaryGetValue(v4, @"qrpr");
                      }

                      else
                      {
                        v48 = 0;
                      }

                      self->_relayServerProviderType = [v48 unsignedIntValue];
                      v53 = @"qrep";
                      if (@"qrep")
                      {
                        v53 = CFDictionaryGetValue(v4, @"qrep");
                      }

                      objc_storeStrong(&self->_reportingDataBlob, v53);
                      if (@"qri")
                      {
                        v54 = CFDictionaryGetValue(v4, @"qri");
                      }

                      else
                      {
                        v54 = 0;
                      }

                      self->_participantID = [v54 unsignedLongLongValue];
                      if (@"IsInitiator")
                      {
                        v55 = CFDictionaryGetValue(v4, @"IsInitiator");
                      }

                      else
                      {
                        v55 = 0;
                      }

                      self->_isInitiator = [v55 BOOLValue];
                      if (@"link-protocol")
                      {
                        v56 = CFDictionaryGetValue(v4, @"link-protocol");
                      }

                      else
                      {
                        v56 = 0;
                      }

                      self->_linkProtocol = [v56 intValue];
                      if (@"ls")
                      {
                        v57 = CFDictionaryGetValue(v4, @"ls");
                      }

                      else
                      {
                        v57 = 0;
                      }

                      self->_linkSuggestion = [v57 unsignedCharValue];
                      if (@"lc")
                      {
                        v58 = CFDictionaryGetValue(v4, @"lc");
                      }

                      else
                      {
                        v58 = 0;
                      }

                      self->_linkScore = [v58 unsignedCharValue];
                      if (@"und2")
                      {
                        v59 = CFDictionaryGetValue(v4, @"und2");
                      }

                      else
                      {
                        v59 = 0;
                      }

                      self->_uplinkNackDisabled = [v59 BOOLValue];
                      if (@"h2fdv2")
                      {
                        v60 = CFDictionaryGetValue(v4, @"h2fdv2");
                      }

                      else
                      {
                        v60 = 0;
                      }

                      self->_h2FallbackDisabled = [v60 BOOLValue];
                      if (@"tled")
                      {
                        v61 = CFDictionaryGetValue(v4, @"tled");
                      }

                      else
                      {
                        v61 = 0;
                      }

                      self->_transportLayerEncryptionDisabled = [v61 BOOLValue];
                      if (@"ipdd")
                      {
                        v62 = CFDictionaryGetValue(v4, @"ipdd");
                      }

                      else
                      {
                        v62 = 0;
                      }

                      self->_ipDiscoveryDisabled = [v62 BOOLValue];
                      v63 = @"qrexp";
                      if (@"qrexp")
                      {
                        v63 = CFDictionaryGetValue(v4, @"qrexp");
                      }

                      objc_storeStrong(&self->_qrSessionExperiments, v63);
                      v64 = @"qptp";
                      if (@"qptp")
                      {
                        v64 = CFDictionaryGetValue(v4, @"qptp");
                      }

                      objc_storeStrong(&self->_pskTransportParameters, v64);
                      v65 = @"qph3";
                      if (@"qph3")
                      {
                        v65 = CFDictionaryGetValue(v4, @"qph3");
                      }

                      objc_storeStrong(&self->_pskH3Settings, v65);
                      if (@"x-internal")
                      {
                        v66 = CFDictionaryGetValue(v4, @"x-internal");
                      }

                      else
                      {
                        v66 = 0;
                      }

                      self->_isInternal = [v66 BOOLValue];
                      if (@"idscel")
                      {
                        v67 = CFDictionaryGetValue(v4, @"idscel");
                      }

                      else
                      {
                        v67 = 0;
                      }

                      self->_ftPowerOptimizationEnabled = [v67 BOOLValue];
                      if (@"qal")
                      {
                        v68 = CFDictionaryGetValue(v4, @"qal");
                      }

                      else
                      {
                        v68 = 0;
                      }

                      v105 = v68;
                      v69 = objc_alloc_init(MEMORY[0x1E695DF70]);
                      [v69 addObjectsFromArray:v105];
                      v112 = [MEMORY[0x1E695DF70] array];
                      v118 = 0u;
                      v119 = 0u;
                      v116 = 0u;
                      v117 = 0u;
                      obj = v69;
                      v70 = 0;
                      v71 = [obj countByEnumeratingWithState:&v116 objects:v121 count:16];
                      if (v71)
                      {
                        v114 = *v117;
                        do
                        {
                          for (i = 0; i != v71; ++i)
                          {
                            if (*v117 != v114)
                            {
                              objc_enumerationMutation(obj);
                            }

                            v73 = 0;
                            v74 = *(*(&v116 + 1) + 8 * i);
                            if (@"qri" && v74)
                            {
                              v73 = CFDictionaryGetValue(*(*(&v116 + 1) + 8 * i), @"qri");
                            }

                            v75 = v73;
                            v76 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v75, "unsignedLongLongValue")}];
                            if (!v70)
                            {
                              v70 = objc_alloc_init(MEMORY[0x1E695DF70]);
                            }

                            if (v70 && v76)
                            {
                              CFArrayAppendValue(v70, v76);
                            }

                            if ([v75 unsignedLongLongValue] == self->_participantID)
                            {
                              v77 = 0;
                              if (v74 && @"tP")
                              {
                                v77 = CFDictionaryGetValue(v74, @"tP");
                              }

                              v78 = v77;
                              self->_isPseudoParticipant = MEMORY[0x1AC563170]();
                            }

                            v79 = [(__CFDictionary *)v74 objectForKeyedSubscript:@"t"];
                            if (v79)
                            {
                              v80 = [IDSPushToken pushTokenWithData:v79];
                              [v112 addObject:v80];
                            }
                          }

                          v71 = [obj countByEnumeratingWithState:&v116 objects:v121 count:16];
                        }

                        while (v71);
                      }

                      objc_storeStrong(&self->_allocatedPushTokens, v112);
                      if (v70 || self->_allocateType != 3)
                      {
                        objc_storeStrong(&self->_allParticipantIDs, v70);
                        v82 = [(__CFArray *)v70 description];
                        cut_dispatch_log_queue();
                        if (@"default-local-device-cbuuid")
                        {
                          v83 = CFDictionaryGetValue(v4, @"default-local-device-cbuuid");
                        }

                        else
                        {
                          v83 = 0;
                        }

                        v84 = v83;
                        v85 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v84];
                        defaultDeviceLocalCBUUID = self->_defaultDeviceLocalCBUUID;
                        self->_defaultDeviceLocalCBUUID = v85;

                        if (@"default-remote-device-cbuuid")
                        {
                          v87 = CFDictionaryGetValue(v4, @"default-remote-device-cbuuid");
                        }

                        else
                        {
                          v87 = 0;
                        }

                        v88 = v87;
                        v89 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v88];
                        defaultDeviceRemoteCBUUID = self->_defaultDeviceRemoteCBUUID;
                        self->_defaultDeviceRemoteCBUUID = v89;

                        v91 = @"qgid";
                        if (@"qgid")
                        {
                          v91 = CFDictionaryGetValue(v4, @"qgid");
                        }

                        objc_storeStrong(&self->_groupID, v91);
                        v92 = @"qsgid";
                        if (@"qsgid")
                        {
                          v92 = CFDictionaryGetValue(v4, @"qsgid");
                        }

                        objc_storeStrong(&self->_stableGroupID, v92);
                        v93 = @"stream-info-published-streams";
                        if (@"stream-info-published-streams")
                        {
                          v93 = CFDictionaryGetValue(v4, @"stream-info-published-streams");
                        }

                        objc_storeStrong(&self->_publishedStreams, v93);
                        v94 = @"stream-info-subscribed-streams";
                        if (@"stream-info-subscribed-streams")
                        {
                          v94 = CFDictionaryGetValue(v4, @"stream-info-subscribed-streams");
                        }

                        objc_storeStrong(&self->_subscribedStreams, v94);
                        if (@"stream-info-generation-counter")
                        {
                          v95 = CFDictionaryGetValue(v4, @"stream-info-generation-counter");
                        }

                        else
                        {
                          v95 = 0;
                        }

                        self->_generationCounter = [v95 unsignedIntValue];
                        if (@"stream-info-max-concurrent-streams")
                        {
                          v96 = CFDictionaryGetValue(v4, @"stream-info-max-concurrent-streams");
                        }

                        else
                        {
                          v96 = 0;
                        }

                        self->_maxConcurrentStreams = [v96 unsignedIntValue];
                        v97 = @"participant-data-key";
                        if (@"participant-data-key")
                        {
                          v97 = CFDictionaryGetValue(v4, @"participant-data-key");
                        }

                        objc_storeStrong(&self->_avcDataBlob, v97);
                        v98 = @"quic-exchange-provider-key";
                        if (@"quic-exchange-provider-key")
                        {
                          v98 = CFDictionaryGetValue(v4, @"quic-exchange-provider-key");
                        }

                        objc_storeStrong(&self->_quicMaterialExchangeProvider, v98);
                        if (@"gl-option-session-is-user-participant-initiated")
                        {
                          v99 = CFDictionaryGetValue(v4, @"gl-option-session-is-user-participant-initiated");
                        }

                        else
                        {
                          v99 = 0;
                        }

                        self->_sessionIsNonUserParticipantInitiated = [v99 unsignedIntValue] != 0;
                        if (@"gl-option-session-hand-off-over-qr-enabled")
                        {
                          v100 = CFDictionaryGetValue(v4, @"gl-option-session-hand-off-over-qr-enabled");
                        }

                        else
                        {
                          v100 = 0;
                        }

                        self->_handOffOverQREnabled = [v100 BOOLValue];
                        if (@"gl-option-call-type")
                        {
                          v101 = CFDictionaryGetValue(v4, @"gl-option-call-type");
                        }

                        else
                        {
                          v101 = 0;
                        }

                        self->_callType = [v101 unsignedIntValue];

                        v8 = 0;
                      }

                      else
                      {
                        v81 = OSLogHandleForTransportCategory();
                        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_1A7AD9000, v81, OS_LOG_TYPE_DEFAULT, "failed to get recipient participant-id list.", buf, 2u);
                        }

                        if (os_log_shim_legacy_logging_enabled())
                        {
                          if (_IDSShouldLogTransport())
                          {
                            _IDSLogTransport(@"GL", @"IDS", @"failed to get recipient participant-id list.");
                            if (_IDSShouldLog())
                            {
                              _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get recipient participant-id list.");
                            }
                          }
                        }

                        v8 = 31;
                      }
                    }

                    else
                    {
                      v49 = OSLogHandleForTransportCategory();
                      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_1A7AD9000, v49, OS_LOG_TYPE_DEFAULT, "failed to get ids-session-id from sessionInfo.", buf, 2u);
                      }

                      if (os_log_shim_legacy_logging_enabled())
                      {
                        if (_IDSShouldLogTransport())
                        {
                          _IDSLogTransport(@"GL", @"IDS", @"failed to get ids-session-id from sessionInfo.");
                          if (_IDSShouldLog())
                          {
                            _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get ids-session-id from sessionInfo.");
                          }
                        }
                      }

                      v8 = 25;
                    }
                  }

                  else
                  {
                    v50 = OSLogHandleForTransportCategory();
                    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_1A7AD9000, v50, OS_LOG_TYPE_DEFAULT, "invalid QR protocol version.", buf, 2u);
                    }

                    if (os_log_shim_legacy_logging_enabled())
                    {
                      if (_IDSShouldLogTransport())
                      {
                        _IDSLogTransport(@"GL", @"IDS", @"invalid QR protocol version.");
                        if (_IDSShouldLog())
                        {
                          _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid QR protocol version.");
                        }
                      }
                    }

                    v8 = 13;
                  }
                }

                else
                {
                  v33 = OSLogHandleForTransportCategory();
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1A7AD9000, v33, OS_LOG_TYPE_DEFAULT, "failed to get relay-address from sessionInfo.", buf, 2u);
                  }

                  if (os_log_shim_legacy_logging_enabled())
                  {
                    if (_IDSShouldLogTransport())
                    {
                      _IDSLogTransport(@"GL", @"IDS", @"failed to get relay-address from sessionInfo.");
                      if (_IDSShouldLog())
                      {
                        _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get relay-address from sessionInfo.");
                      }
                    }
                  }

                  v8 = 4;
                }
              }

              else
              {
                v34 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1A7AD9000, v34, OS_LOG_TYPE_DEFAULT, "failed to get relay-port from sessionInfo.", buf, 2u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    _IDSLogTransport(@"GL", @"IDS", @"failed to get relay-port from sessionInfo.");
                    if (_IDSShouldLog())
                    {
                      _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get relay-port from sessionInfo.");
                    }
                  }
                }

                v8 = 5;
              }

              v27 = v108;
            }

            else
            {
              v26 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1A7AD9000, v26, OS_LOG_TYPE_DEFAULT, "failed to get software-data from sessionInfo.", buf, 2u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  _IDSLogTransport(@"GL", @"IDS", @"failed to get software-data from sessionInfo.");
                  if (_IDSShouldLog())
                  {
                    _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get software-data from sessionInfo.");
                  }
                }
              }

              v27 = 0;
              v8 = 29;
            }
          }

          else
          {
            v25 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1A7AD9000, v25, OS_LOG_TYPE_DEFAULT, "failed to get relay-session-key from sessionInfo.", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"GL", @"IDS", @"failed to get relay-session-key from sessionInfo.");
                if (_IDSShouldLog())
                {
                  _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get relay-session-key from sessionInfo.");
                }
              }
            }

            v8 = 3;
          }
        }

        else
        {
          v24 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "failed to get relay-session-token from sessionInfo.", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"GL", @"IDS", @"failed to get relay-session-token from sessionInfo.");
              if (_IDSShouldLog())
              {
                _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get relay-session-token from sessionInfo.");
              }
            }
          }

          v8 = 2;
        }
      }

      else
      {
        v23 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_DEFAULT, "failed to get relay-session-id from sessionInfo.", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"failed to get relay-session-id from sessionInfo.");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get relay-session-id from sessionInfo.");
            }
          }
        }

        v8 = 1;
      }
    }

    else
    {
      v22 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "failed to get allocate-request-id from sessionInfo.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"failed to get allocate-request-id from sessionInfo.");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get allocate-request-id from sessionInfo.");
          }
        }
      }

      v8 = 12;
    }
  }

  else
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "failed to get allocate-type from sessionInfo.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"failed to get allocate-type from sessionInfo.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get allocate-type from sessionInfo.");
        }
      }
    }

    v8 = 27;
  }

  return v8;
}

@end