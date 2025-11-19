@interface IDSDSessionController
+ (IDSDSessionController)sharedInstance;
- (BOOL)_isCleanupMeantForTheRightSession:(id)a3 clientChannelUUID:(id)a4;
- (BOOL)endAllSessionsForService:(id)a3 withReason:(unsigned int)a4;
- (IDSDSessionController)init;
- (id)_specificOriginatorFromURI:(id)a3 senderToken:(id)a4 accountUniqueID:(id)a5;
- (id)groupSessionGroupIDs;
- (id)sessionIDForAlias:(id)a3 salt:(id)a4;
- (id)sessionWithGroupID:(id)a3;
- (id)sessionWithGroupUUID:(id)a3;
- (id)sessionWithInstanceID:(id)a3;
- (id)sessionWithUniqueID:(id)a3;
- (id)setupNewIncomingSessionWithOptions:(id)a3;
- (id)setupNewOutgoingSessionWithOptions:(id)a3;
- (void)_handleClientDeath:(id)a3;
- (void)cleanupSession:(id)a3 shouldCleanSessionStatus:(BOOL)a4;
- (void)cleanupSessionWithChannelDestination:(id)a3 clientChannelUUID:(id)a4;
- (void)cleanupSessionWithInstanceID:(id)a3;
- (void)cleanupSessionsForClient:(id)a3;
- (void)dealloc;
- (void)processIncomingGroupSessionMessage:(id)a3 fromToken:(id)a4 fromURI:(id)a5 toURI:(id)a6 topic:(id)a7 idsMessageContext:(id)a8;
- (void)processIncomingInvitationWithPayload:(id)a3 topic:(id)a4 fromToken:(id)a5 fromURI:(id)a6 toURI:(id)a7 idsMessageContext:(id)a8 messageContext:(id)a9;
- (void)processIncomingSessionAcceptMessage:(id)a3 fromToken:(id)a4 fromURI:(id)a5 idsMessageContext:(id)a6;
- (void)processIncomingSessionCancelMessage:(id)a3 fromToken:(id)a4 fromURI:(id)a5 idsMessageContext:(id)a6;
- (void)processIncomingSessionDeclineMessage:(id)a3 fromToken:(id)a4 fromURI:(id)a5 idsMessageContext:(id)a6;
- (void)processIncomingSessionEndMessage:(id)a3 fromToken:(id)a4 fromURI:(id)a5 idsMessageContext:(id)a6;
- (void)processIncomingSessionMessage:(id)a3 fromToken:(id)a4 fromURI:(id)a5 idsMessageContext:(id)a6;
- (void)processIncomingSessionReinitiateMessage:(id)a3 fromToken:(id)a4 fromURI:(id)a5 idsMessageContext:(id)a6;
- (void)updateCriticalReliabilityState;
@end

@implementation IDSDSessionController

+ (IDSDSessionController)sharedInstance
{
  if (qword_100CBD648 != -1)
  {
    sub_10092455C();
  }

  v3 = qword_100CBD650;

  return v3;
}

- (IDSDSessionController)init
{
  v15.receiver = self;
  v15.super_class = IDSDSessionController;
  v2 = [(IDSDSessionController *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(NSMutableDictionary);
    sessions = v3->_sessions;
    v3->_sessions = v4;

    v6 = [IMMultiQueue alloc];
    v7 = im_primary_queue();
    v8 = [v6 initWithQueue:v7];
    sessionIDMultiQueue = v3->_sessionIDMultiQueue;
    v3->_sessionIDMultiQueue = v8;

    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Building Message delivery", v14, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v11 = objc_alloc_init(+[FTMessageDelivery APNSMessageDeliveryClass]);
    messageDelivery = v3->_messageDelivery;
    v3->_messageDelivery = v11;

    [(FTMessageDelivery *)v3->_messageDelivery setUserAgent:@"com.apple.invitation-service"];
  }

  return v3;
}

- (void)dealloc
{
  [(FTMessageDelivery *)self->_messageDelivery invalidate];
  messageDelivery = self->_messageDelivery;
  self->_messageDelivery = 0;

  v4.receiver = self;
  v4.super_class = IDSDSessionController;
  [(IDSDSessionController *)&v4 dealloc];
}

- (id)setupNewOutgoingSessionWithOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:IDSSessionAccountIDKey];
  v6 = [v4 objectForKey:IDSSessionDestinationsKey];
  v7 = [NSSet setWithArray:v6];

  v8 = [v4 objectForKey:IDSSessionUniqueIDKey];
  v27 = [v4 objectForKey:IDSSessionInstanceIDKey];
  v28 = [v4 objectForKey:IDSSessionTransportTypeKey];
  v9 = +[IDSDAccountController sharedInstance];
  v10 = [v9 accountWithUniqueID:v5];

  v11 = [v10 service];
  v12 = [v11 displayName];
  if (![v5 length])
  {
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Missing accountID for outgoing session, bailing...", buf, 2u);
    }

    goto LABEL_37;
  }

  if (![v7 count])
  {
    v13 = [v4 objectForKey:kIDSQRAllocateKey_AllocateType];
    if (!v13 && [0 intValue] != 2)
    {
      v18 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Missing destinations for outgoing session, bailing...", buf, 2u);
      }

      goto LABEL_37;
    }
  }

  if (v28)
  {
    if ([v8 length])
    {
      os_unfair_lock_lock(&self->_lock);
      v14 = [(NSMutableDictionary *)self->_sessions objectForKey:v8];
      os_unfair_lock_unlock(&self->_lock);
      if (v14)
      {
        if (!v27)
        {
          v21 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v32 = v8;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Already have an existing session with uniqueID %@, bailing...", buf, 0xCu);
          }

          DLCWarn();
          v20 = 0;
          goto LABEL_34;
        }

        v15 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          [(IDSDSession *)v14 instanceID];
          *buf = 138412802;
          v32 = v8;
          v34 = v33 = 2112;
          v35 = 2112;
          v36 = v27;
          v26 = v34;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Found existing session matching uniqueID -- replacing with new instance { uniqueID: %@, oldInstanceID: %@, newInstanceID: %@ }", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v24 = [(IDSDSession *)v14 instanceID];
          v25 = v27;
          v23 = v8;
          _IDSLogV();
        }

        [(IDSDSessionController *)self cleanupSession:v8 shouldCleanSessionStatus:1, v23, v24, v25];
      }

      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1004DDF48;
      v29[3] = &unk_100BD7530;
      v30 = v11;
      v16 = [v7 __imSetByApplyingBlock:v29];
      v14 = [[IDSDSession alloc] initWithAccount:v5 destinations:v16 options:v4];
      if (v14)
      {
        os_unfair_lock_lock(&self->_lock);
        [(NSMutableDictionary *)self->_sessions setObject:v14 forKey:v8];
        os_unfair_lock_unlock(&self->_lock);
        v17 = v14;
      }

      else
      {
        v19 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to create outgoing session.", buf, 2u);
        }

        DLCWarn();
      }

      v20 = v14;
LABEL_34:

      goto LABEL_38;
    }

    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Missing uniqueID for outgoing session, bailing...", buf, 2u);
    }
  }

  else
  {
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Missing transport type for outgoing session, bailing...", buf, 2u);
    }
  }

LABEL_37:

  DLCWarn();
  v20 = 0;
LABEL_38:

  return v20;
}

- (id)setupNewIncomingSessionWithOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:IDSSessionAccountIDKey];
  v6 = [v4 objectForKey:IDSSessionDestinationsKey];
  v7 = [v4 objectForKey:IDSSessionUniqueIDKey];
  v21 = [v4 objectForKey:IDSSessionTransportTypeKey];
  v20 = [v4 objectForKey:IDSDSessionMessageBlob];
  v8 = +[IDSDAccountController sharedInstance];
  v9 = [v8 accountWithUniqueID:v5];

  v10 = [v9 service];
  v11 = [v10 displayName];
  if (![v5 length])
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Missing accountID for incoming session, bailing...", buf, 2u);
    }

    goto LABEL_22;
  }

  if (![v6 count])
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Missing destinations for incoming session, bailing...", buf, 2u);
    }

    goto LABEL_22;
  }

  if (!v21)
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Missing transport type for incoming session, bailing...", buf, 2u);
    }

    goto LABEL_22;
  }

  if (![(__CFString *)v7 length])
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Missing uniqueID for incoming session, bailing...", buf, 2u);
    }

LABEL_22:

    DLCWarn();
LABEL_23:
    v16 = 0;
    goto LABEL_24;
  }

  os_unfair_lock_lock(&self->_lock);
  v12 = [(NSMutableDictionary *)self->_sessions allKeys];
  v13 = [v12 containsObject:v7];

  os_unfair_lock_unlock(&self->_lock);
  if (v13)
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "We already have an existing session with unique ID %@, ignoring self invite...", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    goto LABEL_23;
  }

  v16 = [[IDSDSession alloc] initWithAccount:v5 destinations:v6 options:v4];
  if (v16)
  {
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableDictionary *)self->_sessions setObject:v16 forKey:v7];
    os_unfair_lock_unlock(&self->_lock);
    [(IDSDSession *)v16 setRemoteBlob:v20];
    v18 = v16;
  }

  else
  {
    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = @"SessionController";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@ - Failed to create incoming session", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }

LABEL_24:

  return v16;
}

- (void)processIncomingInvitationWithPayload:(id)a3 topic:(id)a4 fromToken:(id)a5 fromURI:(id)a6 toURI:(id)a7 idsMessageContext:(id)a8 messageContext:(id)a9
{
  v14 = a3;
  v97 = a4;
  v95 = a5;
  v15 = a6;
  v96 = a7;
  v16 = a8;
  v91 = a9;
  v90 = v16;
  v17 = [v16 objectForKey:IDSMessageContextFromServerStorageKey];
  v18 = [v17 BOOLValue];

  v19 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = @"NO";
    *buf = 138413570;
    v109 = v14;
    v110 = 2112;
    if (v18)
    {
      v20 = @"YES";
    }

    v111 = v97;
    v112 = 2112;
    v113 = v95;
    v114 = 2112;
    v115 = v15;
    v116 = 2112;
    v117 = v96;
    v118 = 2112;
    v119 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Received incoming invitation with payload %@ topic %@ fromToken %@ fromURI %@ toURI %@ fromStorage %@", buf, 0x3Eu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v21 = v18 ? @"YES" : @"NO";
    v87 = v96;
    v88 = v21;
    v85 = v95;
    v86 = v15;
    v83 = v14;
    v84 = v97;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      v87 = v96;
      v88 = v21;
      v85 = v95;
      v86 = v15;
      v83 = v14;
      v84 = v97;
      _IDSLogV();
    }
  }

  v22 = [IDSDServiceController sharedInstance:v83];
  v23 = [v22 serviceWithPushTopic:v97];

  v93 = [v23 displayName];
  v24 = objc_opt_class();
  v94 = sub_10001B690(v24, v14, IDSDSessionMessageSessionID);
  if ([v94 length])
  {
    v25 = +[IDSDAccountController sharedInstance];
    v26 = [v96 prefixedURI];
    v27 = [v25 accountOnService:v23 withAliasURI:v26];

    v28 = [v15 prefixedURI];
    LODWORD(v26) = [v28 hasPrefix:@"device:"];

    if (v26)
    {
      v89 = [v15 unprefixedURI];
      if (v27)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v89 = 0;
      if (v27)
      {
        goto LABEL_27;
      }
    }

    v30 = [v96 prefixedURI];
    if ([v30 length])
    {
      v27 = 0;
    }

    else
    {
      v31 = [v15 prefixedURI];
      if ([v31 isEqualToIgnoringCase:IDSDefaultPairedDevice])
      {
      }

      else
      {
        v32 = +[IDSPairingManager sharedInstance];
        v33 = [v32 pairedDeviceUniqueID];
        v34 = [v89 isEqualToIgnoringCase:v33];

        if (!v34)
        {
          v27 = 0;
          goto LABEL_27;
        }
      }

      v30 = +[IDSDAccountController sharedInstance];
      v27 = [v30 localAccountOnService:v23];
    }

LABEL_27:
    v35 = [v27 uniqueID];
    v36 = [(IDSDSessionController *)self _specificOriginatorFromURI:v15 senderToken:v95 accountUniqueID:v35];

    v37 = [v36 prefixedURI];
    v38 = [v37 length] == 0;

    if (v38)
    {
      v42 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Missing originator for session invitation, bailing...", buf, 2u);
      }

      DLCWarn();
    }

    else
    {
      v39 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Creating IDSSession for incoming invite", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v40 = +[NSMutableDictionary dictionary];
      v41 = [v27 uniqueID];
      if (v41)
      {
        CFDictionarySetValue(v40, IDSSessionAccountIDKey, v41);
      }

      else
      {
        v43 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100924570();
        }
      }

      v44 = v96;
      if (v44)
      {
        CFDictionarySetValue(v40, IDSSessionToIDKey, v44);
      }

      else
      {
        v45 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1009245F8();
        }
      }

      v46 = [NSSet setWithObject:v36];
      if (v46)
      {
        CFDictionarySetValue(v40, IDSSessionDestinationsKey, v46);
      }

      else
      {
        v47 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100924680();
        }
      }

      v48 = v94;
      if (v48)
      {
        CFDictionarySetValue(v40, IDSSessionUniqueIDKey, v48);
      }

      else
      {
        v49 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100924708();
        }
      }

      CFDictionarySetValue(v40, IDSSessionIsInitiatorKey, &__kCFBooleanFalse);
      v50 = [v14 objectForKey:IDSDSessionMessageTransportType];
      if (v50)
      {
        CFDictionarySetValue(v40, IDSSessionTransportTypeKey, v50);
      }

      else
      {
        v51 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100924790();
        }
      }

      v52 = [v14 objectForKey:IDSDSessionMessageVersion];
      if (v52)
      {
        CFDictionarySetValue(v40, IDSSessionPeerProtocolVersionKey, v52);
      }

      else
      {
        v53 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100924818();
        }
      }

      v54 = [v14 objectForKey:IDSDSessionMessageConnectionCountHint];
      if (v54)
      {
        CFDictionarySetValue(v40, IDSSessionConnectionCountHintKey, v54);
      }

      else
      {
        v55 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1009248A0();
        }
      }

      v56 = [v14 objectForKey:IDSDSessionMessageNeedsToWaitForPreConnectionData];
      if (v56)
      {
        CFDictionarySetValue(v40, IDSSessionWaitForPreConnectionDataKey, v56);
      }

      else
      {
        v57 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100924928();
        }
      }

      v58 = [v14 objectForKey:IDSDSessionMessageDisableEncryption];
      if (v58)
      {
        CFDictionarySetValue(v40, IDSSessionDisableEncryptionKey, v58);
      }

      v59 = [v14 objectForKey:IDSDSessionMessageSingleChannelDirectMode];
      if (v59)
      {
        CFDictionarySetValue(v40, IDSSessionSingleChannelDirectModeKey, v59);
      }

      v60 = [v14 objectForKey:IDSDSessionMessageUseStunMessageIntegrity];
      if (v60)
      {
        CFDictionarySetValue(v40, IDSSessionUseStunMessageIntegrityKey, v60);
      }

      v61 = [v14 objectForKey:IDSDSessionMessageUseSecureQRControlMessage];
      if (v61)
      {
        CFDictionarySetValue(v40, IDSSessionUseSecureQRControlMessageKey, v61);
      }

      v62 = IDSDSessionMessageBlob;
      v63 = [v14 objectForKey:IDSDSessionMessageBlob];
      if (v63)
      {
        CFDictionarySetValue(v40, v62, v63);
      }

      else
      {
        v64 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1009249B0(v62, v65, v66, v67, v68, v69, v70, v71);
        }
      }

      v72 = [v14 objectForKey:IDSDSessionMessageIsRealTime];
      if (v72)
      {
        CFDictionarySetValue(v40, IDSSessionIsRealTimeKey, v72);
      }

      v73 = IDSSessionUnauthenticatedPublicKey;
      v74 = [v14 objectForKey:IDSSessionUnauthenticatedPublicKey];
      if (v74)
      {
        CFDictionarySetValue(v40, v73, v74);
      }

      v75 = IDSDSessionMessageAssumeRemoteDeviceEncryption;
      v76 = [v14 objectForKey:IDSDSessionMessageAssumeRemoteDeviceEncryption];
      if (v76)
      {
        CFDictionarySetValue(v40, v75, v76);
      }

      v77 = +[IDSFoundationLog SessionController];
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v109 = v36;
        v110 = 2112;
        v111 = v48;
        _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "Enqueuing incoming session invitation block from %@ with key %@", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      sessionIDMultiQueue = self->_sessionIDMultiQueue;
      v98[0] = _NSConcreteStackBlock;
      v98[1] = 3221225472;
      v98[2] = sub_1004DF330;
      v98[3] = &unk_100BDEC68;
      objc_copyWeak(&v107, buf);
      v79 = v40;
      v99 = v79;
      v100 = v93;
      v101 = v14;
      v102 = v97;
      v80 = v48;
      v81 = v44;
      v82 = v80;
      v103 = v80;
      v104 = v81;
      v105 = v36;
      v106 = v91;
      [(IMMultiQueue *)sessionIDMultiQueue addBlock:v98 withTimeout:v82 forKey:@"Process incoming session %@ accept message" description:65.0];

      objc_destroyWeak(&v107);
      objc_destroyWeak(buf);
    }

    goto LABEL_99;
  }

  v29 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "No sessionID provided in invitation, bailing...", buf, 2u);
  }

  DLCWarn();
LABEL_99:
}

- (void)processIncomingSessionAcceptMessage:(id)a3 fromToken:(id)a4 fromURI:(id)a5 idsMessageContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_opt_class();
  v15 = sub_10001B690(v14, v10, IDSDSessionMessageSessionID);
  v16 = +[IDSDSessionController sharedInstance];
  v17 = [v16 sessionWithUniqueID:v15];

  if (v17)
  {
    v18 = [v17 accountID];
    v19 = [(IDSDSessionController *)self _specificOriginatorFromURI:v12 senderToken:v11 accountUniqueID:v18];

    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v19;
      v29 = 2112;
      v30 = v15;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Enqueuing incoming session accept block from %@ with key %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    sessionIDMultiQueue = self->_sessionIDMultiQueue;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1004E0848;
    v23[3] = &unk_100BDEC90;
    v24 = v17;
    v25 = v10;
    v26 = v19;
    v22 = v19;
    [(IMMultiQueue *)sessionIDMultiQueue addBlock:v23 withTimeout:v15 forKey:@"Process incoming session %@ accept message" description:10.0];
  }
}

- (void)processIncomingSessionDeclineMessage:(id)a3 fromToken:(id)a4 fromURI:(id)a5 idsMessageContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_opt_class();
  v15 = sub_10001B690(v14, v10, IDSDSessionMessageSessionID);
  v16 = +[IDSDSessionController sharedInstance];
  v17 = [v16 sessionWithUniqueID:v15];

  if (v17)
  {
    v18 = [v17 accountID];
    v19 = [(IDSDSessionController *)self _specificOriginatorFromURI:v12 senderToken:v11 accountUniqueID:v18];

    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v19;
      v29 = 2112;
      v30 = v15;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Enqueuing incoming session decline block from %@ with key %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    sessionIDMultiQueue = self->_sessionIDMultiQueue;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1004E0B48;
    v23[3] = &unk_100BDEC90;
    v24 = v17;
    v25 = v10;
    v26 = v19;
    v22 = v19;
    [(IMMultiQueue *)sessionIDMultiQueue addBlock:v23 withTimeout:v15 forKey:@"Process incoming session %@ decline message" description:10.0];
  }
}

- (void)processIncomingSessionCancelMessage:(id)a3 fromToken:(id)a4 fromURI:(id)a5 idsMessageContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_opt_class();
  v15 = sub_10001B690(v14, v10, IDSDSessionMessageSessionID);
  v16 = +[IDSDSessionController sharedInstance];
  v17 = [v16 sessionWithUniqueID:v15];

  if (v17)
  {
    v18 = [v17 accountID];
    v19 = [(IDSDSessionController *)self _specificOriginatorFromURI:v12 senderToken:v11 accountUniqueID:v18];

    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v19;
      v29 = 2112;
      v30 = v15;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Enqueuing incoming session cancel block from %@ with key %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    sessionIDMultiQueue = self->_sessionIDMultiQueue;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1004E0E48;
    v23[3] = &unk_100BDEC90;
    v24 = v17;
    v25 = v10;
    v26 = v19;
    v22 = v19;
    [(IMMultiQueue *)sessionIDMultiQueue addBlock:v23 withTimeout:v15 forKey:@"Process incoming session %@ cancel message" description:10.0];
  }
}

- (void)processIncomingSessionMessage:(id)a3 fromToken:(id)a4 fromURI:(id)a5 idsMessageContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_opt_class();
  v15 = sub_10001B690(v14, v10, IDSDSessionMessageSessionID);
  v16 = +[IDSDSessionController sharedInstance];
  v17 = [v16 sessionWithUniqueID:v15];

  if (v17)
  {
    v18 = [v17 accountID];
    v19 = [(IDSDSessionController *)self _specificOriginatorFromURI:v12 senderToken:v11 accountUniqueID:v18];

    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v19;
      v29 = 2112;
      v30 = v15;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Enqueuing incoming session message block from %@ with key %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    sessionIDMultiQueue = self->_sessionIDMultiQueue;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1004E1148;
    v23[3] = &unk_100BDEC90;
    v24 = v17;
    v25 = v10;
    v26 = v19;
    v22 = v19;
    [(IMMultiQueue *)sessionIDMultiQueue addBlock:v23 withTimeout:v15 forKey:@"Process incoming session %@ session message" description:10.0];
  }
}

- (void)processIncomingSessionEndMessage:(id)a3 fromToken:(id)a4 fromURI:(id)a5 idsMessageContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_opt_class();
  v15 = sub_10001B690(v14, v10, IDSDSessionMessageSessionID);
  v16 = +[IDSDSessionController sharedInstance];
  v17 = [v16 sessionWithUniqueID:v15];

  if (v17)
  {
    v18 = [v17 accountID];
    v19 = [(IDSDSessionController *)self _specificOriginatorFromURI:v12 senderToken:v11 accountUniqueID:v18];

    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v19;
      v29 = 2112;
      v30 = v15;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Enqueuing incoming session end block from %@ with key %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    sessionIDMultiQueue = self->_sessionIDMultiQueue;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1004E1448;
    v23[3] = &unk_100BDEC90;
    v24 = v17;
    v25 = v10;
    v26 = v19;
    v22 = v19;
    [(IMMultiQueue *)sessionIDMultiQueue addBlock:v23 withTimeout:v15 forKey:@"Process incoming session %@ end message" description:10.0];
  }
}

- (void)processIncomingSessionReinitiateMessage:(id)a3 fromToken:(id)a4 fromURI:(id)a5 idsMessageContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_opt_class();
  v15 = sub_10001B690(v14, v10, IDSDSessionMessageSessionID);
  v16 = +[IDSDSessionController sharedInstance];
  v17 = [v16 sessionWithUniqueID:v15];

  if (v17)
  {
    v18 = [v17 accountID];
    v19 = [(IDSDSessionController *)self _specificOriginatorFromURI:v12 senderToken:v11 accountUniqueID:v18];

    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v19;
      v29 = 2112;
      v30 = v15;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Enqueuing incoming session reinitiate block from %@ with key %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    sessionIDMultiQueue = self->_sessionIDMultiQueue;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1004E1748;
    v23[3] = &unk_100BDEC90;
    v24 = v17;
    v25 = v10;
    v26 = v19;
    v22 = v19;
    [(IMMultiQueue *)sessionIDMultiQueue addBlock:v23 withTimeout:v15 forKey:@"Process incoming session %@ reinitiate teardown message" description:10.0];
  }
}

- (void)processIncomingGroupSessionMessage:(id)a3 fromToken:(id)a4 fromURI:(id)a5 toURI:(id)a6 topic:(id)a7 idsMessageContext:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v49 = a6;
  v17 = a7;
  v18 = a8;
  v52 = [v18 objectForKeyedSubscript:IDSMessageContextServerTimestampKey];
  [v52 doubleValue];
  v48 = [NSDate dateWithTimeIntervalSince1970:?];
  v19 = objc_opt_class();
  v51 = sub_10001B690(v19, v14, IDSFanoutMessageGroupIDKey);
  v20 = objc_opt_class();
  v21 = sub_10001B690(v20, v14, IDSDSessionMessageSessionID);
  v22 = +[IDSDSessionController sharedInstance];
  v23 = [v22 sessionWithUniqueID:v21];

  v24 = [v23 accountID];
  v47 = [(IDSDSessionController *)self _specificOriginatorFromURI:v16 senderToken:v15 accountUniqueID:v24];

  v25 = IMGetDomainBoolForKey();
  if (v17)
  {
    v26 = v18 == 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = v26;
  v45 = v27;
  v46 = v25;
  v28 = @"Push";
  if (v26)
  {
    v28 = @"QR";
  }

  v44 = v28;
  v29 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = IDSLoggableDescriptionForObjectOnService();
    *buf = 138413058;
    v70 = v16;
    v71 = 2112;
    v72 = v51;
    v73 = 2112;
    v74 = v21;
    v75 = 2112;
    v76 = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Enqueuing incoming group session message block fromID %@ with the group %@ sessionID %@ (message %@)", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v40 = IDSLoggableDescriptionForObjectOnService();
    _IDSLogV();
  }

  objc_initWeak(buf, self);
  sessionIDMultiQueue = self->_sessionIDMultiQueue;
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_1004E1CAC;
  v53[3] = &unk_100BDECB8;
  v41 = v14;
  v54 = v41;
  v42 = v15;
  v55 = v42;
  v43 = v16;
  v56 = v43;
  v50 = v49;
  v57 = v50;
  v32 = v17;
  v58 = v32;
  v33 = v18;
  v59 = v33;
  v67 = v46;
  objc_copyWeak(&v66, buf);
  v34 = v44;
  v60 = v34;
  v68 = v45;
  v35 = v23;
  v61 = v35;
  v36 = v47;
  v62 = v36;
  v37 = v51;
  v63 = v37;
  v38 = v21;
  v64 = v38;
  v39 = v48;
  v65 = v39;
  [(IMMultiQueue *)sessionIDMultiQueue addBlock:v53 withTimeout:v37 forKey:@"Process incoming group session %@ session message" description:10.0];

  objc_destroyWeak(&v66);
  objc_destroyWeak(buf);
}

- (void)cleanupSession:(id)a3 shouldCleanSessionStatus:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6 && (os_unfair_lock_lock(&self->_lock), [(NSMutableDictionary *)self->_sessions objectForKey:v6], v7 = objc_claimAutoreleasedReturnValue(), os_unfair_lock_unlock(&self->_lock), v7))
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"NO";
      if (v4)
      {
        v9 = @"YES";
      }

      *buf = 138412546;
      v15 = v6;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cleaning up session %@, shouldCleanSessionStatus: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v10 = @"NO";
      if (v4)
      {
        v10 = @"YES";
      }

      v12 = v6;
      v13 = v10;
      _IDSLogV();
    }

    [v7 cleanupSessionWithCleanStatus:{v4, v12, v13}];
    if (v4)
    {
      os_unfair_lock_lock(&self->_lock);
      [(NSMutableDictionary *)self->_sessions removeObjectForKey:v6];
      os_unfair_lock_unlock(&self->_lock);
    }
  }

  else
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Couldn't find the session %@ to clean up!", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v7 = 0;
  }
}

- (void)cleanupSessionWithInstanceID:(id)a3
{
  v4 = a3;
  v5 = [(IDSDSessionController *)self sessionWithInstanceID:v4];
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 uniqueID];
    *buf = 138412546;
    v12 = v4;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cleaning up session based on instanceID { instanceID: %@, correspondingUniqueID: %@ }", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [v5 uniqueID];
    v10 = v9 = v4;
    _IDSLogV();
  }

  v8 = [v5 uniqueID];
  [(IDSDSessionController *)self cleanupSession:v8 shouldCleanSessionStatus:1];
}

- (BOOL)_isCleanupMeantForTheRightSession:(id)a3 clientChannelUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  if (v6)
  {
    v8 = [(NSMutableDictionary *)self->_sessions objectForKey:v6];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 clientChannelUUID];
  v10 = [v7 isEqual:v9];

  os_unfair_lock_unlock(&self->_lock);
  return v10;
}

- (void)cleanupSessionWithChannelDestination:(id)a3 clientChannelUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 componentsSeparatedByString:@":"];
  if ([v8 count] >= 2)
  {
    v9 = [v8 objectAtIndex:1];
    if ([(IDSDSessionController *)self _isCleanupMeantForTheRightSession:v9 clientChannelUUID:v7])
    {
      [(IDSDSessionController *)self cleanupSession:v9 shouldCleanSessionStatus:0];
    }

    else
    {
      v10 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v12 = v6;
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "skip cleanupSessionWithChannelDestination for destination %@ and clientChannelUUID %@", buf, 0x16u);
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

- (void)cleanupSessionsForClient:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cleaning up session(s) for client ID: %@ because it died", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v15 = v4;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v15 = v4;
          _IDSLogV();
        }
      }
    }

    v18 = objc_alloc_init(NSMutableArray);
    v17 = objc_alloc_init(NSMutableArray);
    os_unfair_lock_lock(&self->_lock);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = [(NSMutableDictionary *)self->_sessions allKeys];
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v7)
    {
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = [(NSMutableDictionary *)self->_sessions objectForKey:v10, v15];
          v12 = [v11 clientID];
          v13 = [v12 isEqualToIgnoringCase:v4];

          if (v13)
          {
            v14 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v24 = v10;
              v25 = 2112;
              v26 = v4;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Cleaning up session: %@ for client ID: %@", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                v15 = v10;
                v16 = v4;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  v15 = v10;
                  v16 = v4;
                  _IDSLogV();
                }
              }
            }

            [v18 addObject:{v10, v15, v16}];
            [v17 addObject:v11];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v7);
    }

    os_unfair_lock_unlock(&self->_lock);
    [v17 enumerateObjectsUsingBlock:&stru_100BDECF8];
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableDictionary *)self->_sessions removeObjectsForKeys:v18];
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (BOOL)endAllSessionsForService:(id)a3 withReason:(unsigned int)a4
{
  v5 = a3;
  if ([v5 length])
  {
    v6 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v31 = v5;
      v32 = 2048;
      v33 = a4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cleaning up session(s) for service: %@ with reason %ld", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v18 = v5;
        v19 = a4;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v18 = v5;
          v19 = a4;
          _IDSLogV();
        }
      }
    }

    v22 = objc_alloc_init(NSMutableArray);
    v21 = objc_alloc_init(NSMutableArray);
    os_unfair_lock_lock(&self->_lock);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = [(NSMutableDictionary *)self->_sessions allKeys];
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v8)
    {
      v9 = *v26;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v25 + 1) + 8 * i);
          v12 = [(NSMutableDictionary *)self->_sessions objectForKey:v11, v18, v19];
          v13 = [v12 getFromService];
          v14 = [v13 isEqualToIgnoringCase:v5];

          if (v14)
          {
            v15 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v31 = v11;
              v32 = 2112;
              v33 = v5;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Cleaning up session: %@ for service: %@", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                v18 = v11;
                v19 = v5;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  v18 = v11;
                  v19 = v5;
                  _IDSLogV();
                }
              }
            }

            [v22 addObject:{v11, v18, v19}];
            [v21 addObject:v12];
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v8);
    }

    os_unfair_lock_unlock(&self->_lock);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1004E3E4C;
    v23[3] = &unk_100BDED18;
    v24 = a4;
    [v21 enumerateObjectsUsingBlock:v23];
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableDictionary *)self->_sessions removeObjectsForKeys:v22];
    os_unfair_lock_unlock(&self->_lock);
    v16 = [v22 count] != 0;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)_handleClientDeath:(id)a3
{
  v16 = a3;
  v17 = [v16 userInfo];
  if (v17)
  {
    v4 = [v17 objectForKey:@"IDSDaemonClientID"];
    if (v4)
    {
      v19 = objc_alloc_init(NSMutableArray);
      v18 = objc_alloc_init(NSMutableArray);
      os_unfair_lock_lock(&self->_lock);
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v5 = [(NSMutableDictionary *)self->_sessions allKeys];
      v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v6)
      {
        v7 = *v21;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v21 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = *(*(&v20 + 1) + 8 * i);
            v10 = [(NSMutableDictionary *)self->_sessions objectForKey:v9];
            v11 = [v10 clientID];
            v12 = [v11 isEqualToIgnoringCase:v4];

            if (v12)
            {
              v13 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v25 = v9;
                v26 = 2112;
                v27 = v4;
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Cleaning up session: %@ for client ID: %@", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  v14 = v9;
                  v15 = v4;
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
                    v14 = v9;
                    v15 = v4;
                    _IDSLogV();
                  }
                }
              }

              [v19 addObject:{v9, v14, v15}];
              [v18 addObject:v10];
            }
          }

          v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
        }

        while (v6);
      }

      os_unfair_lock_unlock(&self->_lock);
      [v18 enumerateObjectsUsingBlock:&stru_100BDED38];
      os_unfair_lock_lock(&self->_lock);
      [(NSMutableDictionary *)self->_sessions removeObjectsForKeys:v19];
      os_unfair_lock_unlock(&self->_lock);
    }
  }
}

- (id)_specificOriginatorFromURI:(id)a3 senderToken:(id)a4 accountUniqueID:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(__CFString *)v7 prefixedURI];
  v11 = [v10 hasPrefix:@"device:"];

  if (v11)
  {
    v12 = [(__CFString *)v7 unprefixedURI];
  }

  else
  {
    v12 = 0;
  }

  v13 = +[IDSPairingManager sharedInstance];
  v14 = [v13 pairedDeviceUniqueID];
  v15 = [v12 isEqualToIgnoringCase:v14];

  v16 = [(__CFString *)v7 prefixedURI];
  v17 = [v16 isEqualToIgnoringCase:IDSDefaultPairedDevice];

  v18 = +[IDSDAccountController sharedInstance];
  v19 = [v18 accountWithUniqueID:v9];

  v20 = [v8 rawToken];
  v21 = [v20 length];

  if (v21)
  {
    v22 = [v8 rawToken];
    if ([v22 length])
    {
      v23 = [(__CFString *)v7 prefixedURI];
      v24 = [v23 length];

      if (v24)
      {
        v25 = [v8 rawToken];
        v26 = [(__CFString *)v7 prefixedURI];
        v27 = _IDSCopyIDForTokenWithURI();

LABEL_13:
        v30 = [v19 service];
        v31 = [v30 identifier];
        v32 = [IDSURI URIWithPrefixedURI:v27 withServiceLoggingHint:v31];

        goto LABEL_14;
      }
    }

    else
    {
    }

    v27 = 0;
    goto LABEL_13;
  }

  v28 = [(__CFString *)v7 prefixedURI];
  v27 = v28;
  if ((v17 | v15))
  {
    goto LABEL_13;
  }

  v29 = [v28 hasPrefix:@"guest-device:"];

  if (v29)
  {
    v27 = [(__CFString *)v7 prefixedURI];
    goto LABEL_13;
  }

  if (!v19)
  {
    v42 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v53 = @"SessionController";
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%@ - No account found to build specificOriginator, bailing...", buf, 0xCu);
    }

    if (!os_log_shim_legacy_logging_enabled())
    {
      goto LABEL_45;
    }

LABEL_30:
    _IDSWarnV();
    _IDSLogV();
    _IDSLogTransport();
    goto LABEL_45;
  }

  v34 = [v19 dependentRegistrationMatchingUUID:v12];
  v35 = v34;
  if (!v34)
  {
    v43 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v53 = @"SessionController";
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%@ - No device found to build specificOriginator, bailing...", buf, 0xCu);
    }

    if (!os_log_shim_legacy_logging_enabled())
    {
      goto LABEL_45;
    }

    goto LABEL_30;
  }

  v51 = [v34 _dataForKey:IDSDevicePropertyPushToken];
  if ([v51 length])
  {
    v50 = [v35 _arrayForKey:IDSDevicePropertyIdentities];
    if ([v50 count])
    {
      v36 = [v50 firstObject];
      v49 = [v36 _stringForKey:@"uri"];

      v27 = _IDSCopyIDForTokenWithURI();
      v37 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v48 = [v19 service];
        v38 = [v48 identifier];
        v39 = IDSLoggableDescriptionForHandleOnService();
        *buf = 138412546;
        v53 = v7;
        v54 = 2112;
        v55 = v39;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "original fromID %@ -> resulting specificOriginator %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v40 = [v19 service];
        v41 = [v40 identifier];
        IDSLoggableDescriptionForHandleOnService();
        v47 = v46 = v7;
        _IDSLogV();
      }

      goto LABEL_13;
    }

    v45 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v53 = @"SessionController";
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%@ - No device identity found to build specificOriginator, bailing...", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }

  else
  {
    v44 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v53 = @"SessionController";
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%@ - No device push token found to build specificOriginator, bailing...", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }

LABEL_45:
  v32 = 0;
LABEL_14:

  return v32;
}

- (id)sessionWithUniqueID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = [(NSMutableDictionary *)self->_sessions objectForKey:v4];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = @"SessionController";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@ - No unique ID provided to lookup session, bailing...", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    v5 = 0;
  }

  return v5;
}

- (id)sessionWithInstanceID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    os_unfair_lock_lock(&self->_lock);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(NSMutableDictionary *)self->_sessions allValues];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if (v4)
          {
            v9 = *(*(&v14 + 1) + 8 * i);
            v10 = [v9 instanceID];
            v11 = [v10 isEqualToString:v4];

            if (v11)
            {
              v6 = v9;
              goto LABEL_18;
            }
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = @"SessionController";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@ - No instance ID provided to lookup session, bailing...", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    v6 = 0;
  }

  return v6;
}

- (id)sessionWithGroupID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    os_unfair_lock_lock(&self->_lock);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v13 = 0x3032000000;
    v14 = sub_10000AA04;
    v15 = sub_10000BC74;
    v16 = 0;
    v5 = [(NSMutableDictionary *)self->_sessions allValues];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1004E50C0;
    v9[3] = &unk_100BDED60;
    v10 = v4;
    p_buf = &buf;
    [v5 enumerateObjectsUsingBlock:v9];

    v6 = *(*(&buf + 1) + 40);
    _Block_object_dispose(&buf, 8);

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = @"SessionController";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@ - No group ID provided to lookup session, bailing...", &buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    v6 = 0;
  }

  return v6;
}

- (id)sessionWithGroupUUID:(id)a3
{
  v4 = a3;
  v5 = [v4 UUIDString];
  v6 = [v5 length];

  if (v6)
  {
    os_unfair_lock_lock(&self->_lock);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v15 = 0x3032000000;
    v16 = sub_10000AA04;
    v17 = sub_10000BC74;
    v18 = 0;
    v7 = [(NSMutableDictionary *)self->_sessions allValues];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1004E53F8;
    v11[3] = &unk_100BDED60;
    v12 = v4;
    p_buf = &buf;
    [v7 enumerateObjectsUsingBlock:v11];

    v8 = *(*(&buf + 1) + 40);
    _Block_object_dispose(&buf, 8);

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = @"SessionController";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@ - No group UUID provided to lookup session, bailing...", &buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    v8 = 0;
  }

  return v8;
}

- (id)groupSessionGroupIDs
{
  os_unfair_lock_lock(&self->_lock);
  v3 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSMutableDictionary *)self->_sessions allValues];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 groupID];
        v10 = v9 == 0;

        if (!v10)
        {
          v11 = [v8 groupID];
          [v3 addObject:v11];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)sessionIDForAlias:(id)a3 salt:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_sessions;
  v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = IDSIDAliasHashUUIDString();
        v14 = [v13 isEqualToString:{v12, v16}];

        if (v14)
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (void)updateCriticalReliabilityState
{
  os_unfair_lock_lock(&self->_lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(NSMutableDictionary *)self->_sessions allValues];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v4)
  {
    v5 = *v16;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        if ([v7 state] - 9 >= 0xFFFFFFF8)
        {
          v4 = v7;
          v8 = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v15 objects:v23 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  os_unfair_lock_unlock(&self->_lock);
  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    if (v8)
    {
      v10 = @"YES";
    }

    *buf = 138412546;
    v20 = v10;
    v21 = 2112;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updating critical reliability {needsCritical: %@, session: %@}", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v11 = @"NO";
    if (v8)
    {
      v11 = @"YES";
    }

    v13 = v11;
    v14 = v4;
    _IDSLogV();
  }

  v12 = [FTNetworkSupport sharedInstance:v13];
  [v12 setEnableCriticalReliability:v8];
}

@end