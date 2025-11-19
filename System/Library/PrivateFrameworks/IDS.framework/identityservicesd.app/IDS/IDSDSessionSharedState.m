@interface IDSDSessionSharedState
- (BOOL)destinationIsDefaultPairedDevice:(id)a3;
- (BOOL)destinationIsGuestDevice:(id)a3;
- (BOOL)supportsReinitiate;
- (IDSDSession)delegate;
- (IDSDSessionSharedState)initWithDictionary:(id)a3 serviceName:(id)a4 isInitiator:(BOOL)a5 uniqueID:(id)a6 accountID:(id)a7 destinations:(id)a8;
- (NSString)pushTopic;
- (id)getQuickRelayAllocateOptions:(id)a3;
- (id)publicIdentityFromData:(id)a3;
- (void)_clearConnectionTimer;
- (void)_clearEndSessionTimeoutTimer;
- (void)_clearInvitationTimer;
- (void)_clearPacketLossTimer;
- (void)_clearReConnectTimer;
- (void)_connectionTimedOut;
- (void)_connectionTimerFiredOnMain;
- (void)_endSessionTimedOut;
- (void)_endSessionTimerFiredOnMain;
- (void)_inviteTimedOut;
- (void)_inviteTimerFiredOnMain;
- (void)_reConnectTimedOut;
- (void)_reConnectTimerFiredOnMain;
- (void)clearAllTimers;
- (void)setConnectionTimer;
- (void)setEndSessionTimeoutTimer;
- (void)setInvitationTimer;
- (void)setReConnectTimer;
@end

@implementation IDSDSessionSharedState

- (IDSDSessionSharedState)initWithDictionary:(id)a3 serviceName:(id)a4 isInitiator:(BOOL)a5 uniqueID:(id)a6 accountID:(id)a7 destinations:(id)a8
{
  v14 = a3;
  v114 = a4;
  v120 = a6;
  v119 = a7;
  v118 = a8;
  v131.receiver = self;
  v131.super_class = IDSDSessionSharedState;
  v15 = [(IDSDSessionSharedState *)&v131 init];
  v16 = v15;
  if (!v15)
  {
LABEL_85:
    v100 = v16;
    goto LABEL_86;
  }

  objc_storeStrong(&v15->_serviceName, a4);
  v16->_isInitiator = a5;
  if ([v120 length])
  {
    v17 = v120;
  }

  else
  {
    v17 = +[NSString stringGUID];
  }

  uniqueID = v16->_uniqueID;
  v16->_uniqueID = v17;

  v19 = +[NSString stringGUID];
  participantID = v16->_participantID;
  v16->_participantID = v19;

  objc_storeStrong(&v16->_accountID, a7);
  objc_storeStrong(&v16->_destinations, a8);
  v21 = IDSSessionPeerProtocolVersionKey;
  v22 = [v14 objectForKey:IDSSessionPeerProtocolVersionKey];
  if (v22)
  {
    [v14 objectForKey:v21];
  }

  else
  {
    _IDSSessionProtocolVersionNumber();
  }
  v23 = ;
  v16->_peerProtocolVersion = [v23 unsignedIntValue];

  v24 = [v14 objectForKey:IDSSessionWaitForPreConnectionDataKey];
  v16->_enableSKE = [v24 BOOLValue];

  v25 = [v14 objectForKey:IDSSessionDisableEncryptionKey];
  v16->_disableEncryption = [v25 BOOLValue];

  v26 = [v14 objectForKey:IDSSessionForceInternetInvitationKey];
  v16->_forceInternetInvitation = [v26 BOOLValue];

  v27 = [v14 objectForKey:IDSSessionSingleChannelDirectModeKey];
  v16->_enableSingleChannelDirectMode = [v27 BOOLValue];

  v28 = [v14 objectForKey:IDSSessionUseSecureQRControlMessageKey];
  v16->_useSecureQRControlMessage = [v28 BOOLValue];

  v111 = IDSSessionIsRealTimeKey;
  v29 = [v14 objectForKey:?];
  v16->_useBTDatagramPipe = [v29 BOOLValue];

  v30 = [v14 objectForKey:IDSSessionInvitationIsRetryKey];
  v16->_invitationRetryCount = [v30 BOOLValue];

  v16->_lastPacketTime = 0.0;
  v31 = [v14 objectForKey:IDSGroupSessionMessagesGroupIDKey];
  groupID = v16->_groupID;
  v16->_groupID = v31;

  v116 = [v14 objectForKey:IDSSessionClientUUIDKey];
  if (v116)
  {
    v33 = [[NSUUID alloc] initWithUUIDString:v116];
    clientUUID = v16->_clientUUID;
    v16->_clientUUID = v33;
  }

  v16->_useQRDirectly = IMGetDomainBoolForKey();
  v35 = +[IDSDAccountController sharedInstance];
  v121 = [v35 accountWithUniqueID:v119];

  v117 = [v121 service];
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v36 = v118;
  v37 = [v36 countByEnumeratingWithState:&v127 objects:v143 count:16];
  if (v37)
  {
    v38 = *v128;
    while (2)
    {
      for (i = 0; i != v37; i = i + 1)
      {
        if (*v128 != v38)
        {
          objc_enumerationMutation(v36);
        }

        v40 = *(*(&v127 + 1) + 8 * i);
        v41 = [v40 prefixedURI];
        v42 = [v41 hasSuffix:@"inbox.appleid.apple.com"];

        if (v42)
        {
          v43 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            v44 = [(IDSDSessionSharedState *)v16 uniqueID];
            v45 = [(IDSDSessionSharedState *)v16 destinations];
            *buf = 138412802;
            v134 = v40;
            v135 = 2114;
            v136 = v44;
            v137 = 2112;
            v138 = v45;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "At least one destination is mako {destinationURI: %@, uniqueID: %{public}@, destinations: %@}", buf, 0x20u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v46 = [(IDSDSessionSharedState *)v16 uniqueID];
              [(IDSDSessionSharedState *)v16 destinations];
              v110 = v109 = v46;
              v107 = v40;
              _IDSLogTransport();

              if (_IDSShouldLog())
              {
                v47 = [(IDSDSessionSharedState *)v16 uniqueID:v40];
                [(IDSDSessionSharedState *)v16 destinations];
                v110 = v109 = v47;
                v107 = v40;
                _IDSLogV();
              }
            }
          }

          goto LABEL_25;
        }
      }

      v37 = [v36 countByEnumeratingWithState:&v127 objects:v143 count:16];
      if (v37)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:

  v48 = [v121 primaryRegistration];
  v49 = [v48 dsHandle];
  v112 = [v49 _stripFZIDPrefix];

  v50 = [v121 service];
  [v50 shouldRegisterUsingDSHandle];

  v51 = [v121 service];
  v52 = [v51 identifier];
  _IDSPrefersPhoneNumbersForServiceIdentifier();

  v113 = [v14 objectForKey:IDSSessionToIDKey];
  v53 = [v14 objectForKey:IDSGroupSessionMessagesCallerIDKey];
  v115 = v53;
  if (v53)
  {
    v54 = v53;
  }

  else
  {
    if (v113)
    {
      [v113 prefixedURI];
    }

    else
    {
      [v121 displayName];
    }
    v55 = ;
    v56 = [v121 unprefixedURIStringsFromRegistration];
    v57 = [v121 pseudonyms];
    v54 = _IDSCopyCallerIDWithSelfMessagingHint();
  }

  v58 = [v117 identifier];
  v59 = [IDSURI URIWithUnprefixedURI:v54 withServiceLoggingHint:v58];
  fromURI = v16->_fromURI;
  v16->_fromURI = v59;

  v61 = [v121 unprefixedURIStringsFromRegistration];
  v62 = [(IDSURI *)v16->_fromURI unprefixedURI];
  v63 = [v61 containsObject:v62];

  v64 = +[IDSFoundationLog IDSDSession];
  v65 = v64;
  if (v63)
  {
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v66 = v16->_uniqueID;
      v67 = v16->_fromURI;
      accountID = v16->_accountID;
      v69 = [v121 unprefixedURIStringsFromRegistration];
      *buf = 138413314;
      v134 = v66;
      v135 = 2112;
      v136 = v67;
      v137 = 2112;
      v138 = v115;
      v139 = 2112;
      v140 = accountID;
      v141 = 2112;
      v142 = v69;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Resolved IDSDSession fromID { sessionID: %@, fromID: %@, clientSpecifiedFromID: %@, accountID: %@, accountAliasStrings: %@ }", buf, 0x34u);
    }
  }

  else if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
  {
    v103 = v16->_uniqueID;
    v104 = v16->_fromURI;
    v105 = v16->_accountID;
    v106 = [v121 unprefixedURIStringsFromRegistration];
    *buf = 138413314;
    v134 = v103;
    v135 = 2112;
    v136 = v104;
    v137 = 2112;
    v138 = v115;
    v139 = 2112;
    v140 = v105;
    v141 = 2112;
    v142 = v106;
    _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "Resolved IDSDSession fromID is not a valid selected alias on the account! This may cause messaging failures. { sessionID: %@, fromID: %@, clientSpecifiedFromID: %@, accountID: %@, accountAliasStrings: %@ }", buf, 0x34u);
  }

  v70 = [v117 identifier];
  if ([v70 isEqualToIgnoringCase:@"com.apple.private.alloy.phonecontinuity"])
  {
    v71 = +[IMLockdownManager sharedInstance];
    v72 = [v71 isInternalInstall];

    if (v72 && IMGetDomainBoolForKey())
    {
      v16->_enableQuickRelay = 1;
    }

    v73 = [v14 objectForKey:v111];
    v74 = v73 == 0;

    if (v74)
    {
      v16->_useBTDatagramPipe = 1;
    }

    v16->_useBTDatagramPipe = IMGetDomainBoolForKeyWithDefaultValue();
    v82 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      v83 = [(IDSDSessionSharedState *)v16 uniqueID];
      *buf = 138412546;
      v134 = v70;
      v135 = 2112;
      v136 = v83;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "QuickRelay is disabled for service: %@, session: %@.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        [(IDSDSessionSharedState *)v16 uniqueID];
        v109 = v108 = v70;
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          [(IDSDSessionSharedState *)v16 uniqueID:v70];
          v109 = v108 = v70;
          _IDSLogV();
        }
      }
    }

    v16->_connectionTimeout = 5.0;
  }

  else
  {
    v16->_enableQuickRelay = 1;
    v16->_connectionTimeout = 30.0;
    v75 = [v14 objectForKey:IDSGroupSessionStartedAsUPlusOneKey];
    v76 = [v75 BOOLValue];

    v77 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      v78 = [(IDSDSessionSharedState *)v16 uniqueID];
      v79 = v78;
      v80 = &stru_100C06028;
      *buf = 138412802;
      v134 = v70;
      v135 = 2112;
      if (v76)
      {
        v80 = @" (U+1)";
      }

      v136 = v80;
      v137 = 2112;
      v138 = v78;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "QuickRelay is enabled for service: %@%@, session: %@.", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v81 = v76 ? @" (U+1)" : &stru_100C06028;
      [(IDSDSessionSharedState *)v16 uniqueID];
      v110 = v109 = v81;
      v108 = v70;
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        [(IDSDSessionSharedState *)v16 uniqueID:v70];
        v110 = v109 = v81;
        v108 = v70;
        _IDSLogV();
      }
    }
  }

  v16->_reConnectTimeout = 30.0;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v84 = v36;
  v85 = [v84 countByEnumeratingWithState:&v123 objects:v132 count:16];
  if (!v85)
  {
LABEL_78:

    v92 = [v14 objectForKey:IDSSessionDestinationLightWeightStatusesKey];
    destinationsLightweightStatus = v16->_destinationsLightweightStatus;
    v16->_destinationsLightweightStatus = v92;

    if (v16->_destinationsLightweightStatus)
    {
      v94 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
      {
        v95 = [(NSDictionary *)v16->_destinationsLightweightStatus description];
        v96 = IDSLoggableDescriptionForObjectOnService();
        *buf = 138412290;
        v134 = v96;
        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "Destinations lightweight status: %@", buf, 0xCu);
      }
    }

    v97 = [v14 objectForKey:{IDSSessionUnauthenticatedPublicKey, v108}];
    if (v97)
    {
      v98 = [(IDSDSessionSharedState *)v16 publicIdentityFromData:v97];
      remoteUnauthenticatedPublicIdentity = v16->_remoteUnauthenticatedPublicIdentity;
      v16->_remoteUnauthenticatedPublicIdentity = v98;
    }

    goto LABEL_85;
  }

  v86 = *v124;
LABEL_63:
  v87 = 0;
  while (1)
  {
    if (*v124 != v86)
    {
      objc_enumerationMutation(v84);
    }

    if ([(IDSDSessionSharedState *)v16 destinationIsGuestDevice:*(*(&v123 + 1) + 8 * v87), v108, v109, v110])
    {
      break;
    }

    if (v85 == ++v87)
    {
      v85 = [v84 countByEnumeratingWithState:&v123 objects:v132 count:16];
      if (v85)
      {
        goto LABEL_63;
      }

      goto LABEL_78;
    }
  }

  v122 = 0;
  v88 = [IDSMPFullLegacyIdentity identityWithError:&v122];
  v89 = v122;
  if (v88)
  {
    v90 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v134 = v88;
      _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "Created local unauthenticated full identity {fullIdentity: %{private}@}", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v108 = v88;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v108 = v88;
          _IDSLogV();
        }
      }
    }

    localUnauthenticatedFullIdentity = v16->_localUnauthenticatedFullIdentity;
    v16->_localUnauthenticatedFullIdentity = v88;

    goto LABEL_78;
  }

  v102 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
  {
    *buf = 138477827;
    v134 = v84;
    _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_ERROR, "Failed to create full identity for unauthenticated destination {destinations: %{private}@}", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    _IDSWarnV();
    _IDSLogV();
    _IDSLogTransport();
  }

  v100 = 0;
LABEL_86:

  return v100;
}

- (void)clearAllTimers
{
  [(IDSDSessionSharedState *)self _clearInvitationTimer];
  [(IDSDSessionSharedState *)self _clearConnectionTimer];
  [(IDSDSessionSharedState *)self _clearPacketLossTimer];
  [(IDSDSessionSharedState *)self _clearEndSessionTimeoutTimer];

  [(IDSDSessionSharedState *)self _clearReConnectTimer];
}

- (void)setInvitationTimer
{
  atomic_store(0, &self->_inviteTimerCleared);
  v3 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10060E840;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_inviteTimerFiredOnMain
{
  v3 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10060EA2C;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_inviteTimedOut
{
  if (![(IDSDSessionSharedState *)self inviteTimerCleared])
  {
    v3 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      [(IDSDSessionSharedState *)self inviteTimeout];
      v8 = 134217984;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Session invite timed out after %f seconds", &v8, 0xCu);
    }

    if ([(IDSDSessionSharedState *)self isInitiator])
    {
      v5 = 4;
    }

    else
    {
      v5 = 3;
    }

    v6 = [(IDSDSessionSharedState *)self delegate];
    [v6 sendCancelInvitationMessage];

    v7 = [(IDSDSessionSharedState *)self delegate];
    [v7 endSessionWithReason:v5];
  }
}

- (void)_clearInvitationTimer
{
  atomic_store(1u, &self->_inviteTimerCleared);
  v3 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10060EBD4;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_clearConnectionTimer
{
  atomic_store(1u, &self->_connectionTimerCleared);
  v3 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10060ED18;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)setConnectionTimer
{
  [(IDSDSessionSharedState *)self _clearConnectionTimer];
  atomic_store(0, &self->_connectionTimerCleared);
  v3 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10060EE5C;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_connectionTimerFiredOnMain
{
  v3 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10060F10C;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_connectionTimedOut
{
  v2 = atomic_load(&self->_connectionTimerCleared);
  if ((v2 & 1) == 0)
  {
    v4 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      [(IDSDSessionSharedState *)self connectionTimeout];
      v7 = 134217984;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Session connection timed out after %f seconds", &v7, 0xCu);
    }

    v6 = [(IDSDSessionSharedState *)self delegate];
    [v6 endSessionWithReason:6];
  }
}

- (void)_clearPacketLossTimer
{
  v3 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10060F278;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_clearEndSessionTimeoutTimer
{
  atomic_store(1u, &self->_endSessionTimerCleared);
  v3 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10060F394;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)setEndSessionTimeoutTimer
{
  atomic_store(0, &self->_endSessionTimerCleared);
  v3 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10060F4D4;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_endSessionTimerFiredOnMain
{
  v3 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10060F6B8;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_endSessionTimedOut
{
  v2 = atomic_load(&self->_endSessionTimerCleared);
  if ((v2 & 1) == 0)
  {
    v4 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      [(IDSDSessionSharedState *)self endSessionTimeout];
      v8 = 134217984;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "End session timed out after %f seconds", &v8, 0xCu);
    }

    if (self->_isInitiator)
    {
      v6 = 11;
    }

    else
    {
      v6 = 12;
    }

    v7 = [(IDSDSessionSharedState *)self delegate];
    [v7 endSessionWithReason:v6];
  }
}

- (void)_clearReConnectTimer
{
  atomic_store(1u, &self->_reConnectTimerCleared);
  v3 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10060F840;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)setReConnectTimer
{
  [(IDSDSessionSharedState *)self _clearReConnectTimer];
  atomic_store(0, &self->_reConnectTimerCleared);
  v3 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10060F984;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_reConnectTimerFiredOnMain
{
  v3 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10060FBD4;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_reConnectTimedOut
{
  v2 = atomic_load(&self->_reConnectTimerCleared);
  if ((v2 & 1) == 0 && ![(IDSDSessionSharedState *)self isInUPlusOneMode])
  {
    v4 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      [(IDSDSessionSharedState *)self reConnectTimeout];
      v7 = 134217984;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Session lost all links and failed to reconnect for %f seconds", &v7, 0xCu);
    }

    v6 = [(IDSDSessionSharedState *)self delegate];
    [v6 endSessionWithReason:54];
  }
}

- (BOOL)supportsReinitiate
{
  if ([(IDSDSessionSharedState *)self sharedSession]&& ![(IDSDSessionSharedState *)self isInUPlusOneMode]|| [(IDSDSessionSharedState *)self clientType]!= 1 && [(IDSDSessionSharedState *)self clientType]!= 5 && [(IDSDSessionSharedState *)self clientType]!= 6 || ![(IDSDSessionSharedState *)self enableQuickRelay])
  {
    return 0;
  }

  return [(IDSDSessionSharedState *)self useQRDirectly];
}

- (id)getQuickRelayAllocateOptions:(id)a3
{
  v4 = a3;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v6 = +[IDSDAccountController sharedInstance];
  v7 = [(IDSDSessionSharedState *)self accountID];
  v8 = [v6 accountWithUniqueID:v7];
  v9 = [v8 service];
  v10 = [v9 pushTopic];

  if (v10)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_AppID, v10);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092D080();
  }

  v11 = v4;
  if (v11)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_AllocateType, v11);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092D108();
  }

  if (([v11 intValue] & 0xFFFFFFFD) == 1)
  {
    v12 = [NSNumber numberWithInt:0];
    if (v12)
    {
      CFDictionarySetValue(Mutable, kIDSQRAllocateKey_SelfAllocationCount, v12);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092D190();
    }
  }

  if ([(IDSDSessionSharedState *)self invitationRetryCount])
  {
    v13 = [NSNumber numberWithUnsignedInt:[(IDSDSessionSharedState *)self invitationRetryCount]];
    if (v13)
    {
      CFDictionarySetValue(Mutable, IDSSessionInvitationRetryCountKey, v13);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092D218();
    }
  }

  v14 = IMGetDomainValueForKey();
  if (v14)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_QRForceExperiment, v14);
  }

  return Mutable;
}

- (BOOL)destinationIsGuestDevice:(id)a3
{
  v3 = [a3 prefixedURI];
  v4 = [v3 hasPrefix:@"guest-device:"];

  return v4;
}

- (BOOL)destinationIsDefaultPairedDevice:(id)a3
{
  v4 = [a3 prefixedURI];
  v5 = [(IDSDSessionSharedState *)self accountID];
  v6 = [(IDSDSessionSharedState *)self serviceName];
  v7 = [IDSDAccountController isDefaultPairedDeviceFromID:v4 accountUniqueID:v5 serviceName:v6];

  return v7;
}

- (id)publicIdentityFromData:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v10 = 0;
    v4 = [IDSMPPublicLegacyIdentity identityWithData:v3 error:&v10];
    v5 = v10;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v8 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543619;
        v12 = v5;
        v13 = 2113;
        v14 = v3;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to create unauthenticated public identity from data {error: %{public}@, data: %{private}@}", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }
    }
  }

  else
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to create unauthenticated public identity from data becuase data is nil", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    v4 = 0;
  }

  return v4;
}

- (NSString)pushTopic
{
  v3 = +[IDSDAccountController sharedInstance];
  v4 = [(IDSDSessionSharedState *)self accountID];
  v5 = [v3 accountWithUniqueID:v4];
  v6 = [v5 service];
  v7 = [v6 pushTopic];

  return v7;
}

- (IDSDSession)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end