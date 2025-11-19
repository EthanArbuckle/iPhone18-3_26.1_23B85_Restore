@interface IDSGroupEncryptionController
+ (IDSGroupEncryptionController)sharedInstance;
- (BOOL)_isUsingAccount:(id)a3;
- (BOOL)_isValidPushToken:(id)a3;
- (BOOL)_shouldEnforceRemoteTimeout;
- (IDSDSessionController)sessionController;
- (IDSGroupEncryptionController)init;
- (__SecKey)localPrivatePreKey;
- (__SecKey)localPublicPreKey;
- (__SecKey)previousLocalPrivatePreKey;
- (__SecKey)previousLocalPublicPreKey;
- (__SecKey)publicKeyForPushToken:(id)a3;
- (double)_multiwayFTMessageSendTimeout;
- (id)_compactKeyMaterialMessage:(id)a3 isOutgoing:(BOOL)a4 groupID:(id)a5;
- (id)_generateMKMBlobForQRFromMessage:(id)a3 account:(id)a4 destination:(id)a5 fromURI:(id)a6;
- (id)_localDevicePushToken;
- (id)activeParticipantsForGroup:(id)a3;
- (id)createRealTimeEncryptionFullIdentityForDevice:(id)a3 completionBlock:(id)a4;
- (id)publicKeys;
- (id)receivedAndSetKeyMaterial:(id)a3 stableKeyMaterial:(id)a4 forDevice:(id)a5 fromURI:(id)a6 groupID:(id)a7 sessionID:(id)a8 fromSender:(BOOL)a9 error:(id *)a10 forMKM:(BOOL)a11 forSKM:(BOOL)a12;
- (id)stableKeyMaterialForGroup:(id)a3;
- (id)stableKeyMaterialForGroup:(id)a3 sessionID:(id)a4;
- (int64_t)setLocalParticipantID:(unint64_t)a3 forGroupID:(id)a4 sessionID:(id)a5;
- (unint64_t)encryptionSequenceNumberForGroupID:(id)a3;
- (unint64_t)localParticipantIDForGroupID:(id)a3;
- (unint64_t)participantIDForPushToken:(id)a3 inGroup:(id)a4;
- (void)_sendMessage:(id)a3 toDestination:(id)a4 forGroup:(id)a5 sessionID:(id)a6 command:(int64_t)a7 timeout:(double)a8 shouldExpire:(BOOL)a9 useQR:(BOOL)a10 completion:(id)a11 completionBlock:(id)a12;
- (void)_updateRelevantEncryptedDataBlobForSession:(id)a3;
- (void)account:(id)a3 didUpdateRegisteredDevices:(id)a4;
- (void)cleanUpSessionForID:(id)a3 groupID:(id)a4;
- (void)didReceiveEndpointsUpdate:(id)a3 forGroup:(id)a4 sessionID:(id)a5;
- (void)didUpdateMembers:(id)a3 forGroup:(id)a4 sessionID:(id)a5 lightweightStatusDict:(id)a6 hasChangedStandardMembers:(BOOL)a7 newlyAddedMembers:(id)a8;
- (void)didUpdateParticipants:(id)a3 ofType:(int64_t)a4 forGroup:(id)a5 sessionID:(id)a6;
- (void)ensureSessionForID:(id)a3 groupID:(id)a4;
- (void)processIncomingKeyMaterialsRecoveryRequest:(id)a3 fromDevice:(id)a4 fromURI:(id)a5 groupID:(id)a6 sessionID:(id)a7 serverDate:(id)a8 requireMKM:(BOOL)a9 requireSKM:(BOOL)a10;
- (void)processIncomingPrekeyAckForGroup:(id)a3;
- (void)processedQRMKMPayloadFromData:(id)a3 forGroupID:(id)a4 account:(id)a5 remoteURI:(id)a6 localURI:(id)a7 tokens:(id)a8 completionHandler:(id)a9;
- (void)reliablyRequestKeyMaterialForGroup:(id)a3 sessionID:(id)a4;
- (void)removeAccountForGroup:(id)a3;
- (void)removeActiveParticipant:(id)a3 forGroup:(id)a4;
- (void)removeLocalActiveParticipantForGroup:(id)a3;
- (void)reportPrekeyAckStatus:(id)a3;
- (void)requestKeyMaterialForGroup:(id)a3 sessionID:(id)a4;
- (void)requestKeyMaterialForGroup:(id)a3 sessionID:(id)a4 toSpecificMembers:(id)a5 requireMKM:(BOOL)a6 requireSKM:(BOOL)a7;
- (void)resetDevicePrekey;
- (void)resetKeyMaterialCacheTimerIfNeeded:(id)a3;
- (void)resetKeysForGroup:(id)a3 shouldRemoveCurrentParticipants:(BOOL)a4;
- (void)resetMKMLocalSentStatus:(id)a3;
- (void)rollNewKeysAfterResettingPrekeysForGroups:(id)a3 withReason:(int64_t)a4;
- (void)sendKeyMaterialMessage:(id)a3 toDestination:(id)a4 forGroup:(id)a5 sessionID:(id)a6 completion:(id)a7;
- (void)sendKeyMaterialRequestMessage:(id)a3 toDestination:(id)a4 forGroup:(id)a5 sessionID:(id)a6;
- (void)sendKeyMaterialsRecoveryRequestToGroup:(id)a3 requireMKM:(BOOL)a4 requireSKM:(BOOL)a5;
- (void)sendKeyMaterialsRecoveryRequestToParticipants:(id)a3 groupID:(id)a4 sessionID:(id)a5 requireMKM:(BOOL)a6 requireSKM:(BOOL)a7;
- (void)sendPreKeyMessage:(id)a3 toDestination:(id)a4 forGroup:(id)a5 sessionID:(id)a6;
- (void)sendPreKeyRequestMessage:(id)a3 toDestination:(id)a4 forGroup:(id)a5 sessionID:(id)a6;
- (void)setAccount:(id)a3 fromURI:(id)a4 forGroup:(id)a5;
- (void)setMembers:(id)a3 forGroup:(id)a4 sessionID:(id)a5 lightweightStatusDict:(id)a6;
- (void)storeEncryptionSequenceNumber:(unint64_t)a3 groupID:(id)a4;
- (void)unsubscribeEndpointsForGroup:(id)a3;
- (void)updateLightweightMemberTypes:(id)a3 members:(id)a4 triggeredLocally:(BOOL)a5 forGroup:(id)a6 sessionID:(id)a7;
- (void)updateServerDesiredKeyMaterialsForGroup:(id)a3 sessionID:(id)a4;
@end

@implementation IDSGroupEncryptionController

+ (IDSGroupEncryptionController)sharedInstance
{
  if (qword_100CBF550 != -1)
  {
    sub_100931F54();
  }

  v3 = qword_100CBF558;

  return v3;
}

- (IDSGroupEncryptionController)init
{
  v28.receiver = self;
  v28.super_class = IDSGroupEncryptionController;
  v2 = [(IDSGroupEncryptionController *)&v28 init];
  if (v2)
  {
    v3 = +[IMLockdownManager sharedInstance];
    v2->_isInternal = [v3 isInternalInstall];

    v4 = objc_alloc_init(NSMutableDictionary);
    prekeyAckCountForGroup = v2->_prekeyAckCountForGroup;
    v2->_prekeyAckCountForGroup = v4;

    v6 = objc_alloc_init(NSMutableDictionary);
    lastKnownGroupIDToPushTokens = v2->_lastKnownGroupIDToPushTokens;
    v2->_lastKnownGroupIDToPushTokens = v6;

    v8 = objc_alloc_init(NSMutableDictionary);
    lastKnownAccountIDToPushTokens = v2->_lastKnownAccountIDToPushTokens;
    v2->_lastKnownAccountIDToPushTokens = v8;

    v10 = objc_alloc_init(NSMutableDictionary);
    accountIDs = v2->_accountIDs;
    v2->_accountIDs = v10;

    v12 = objc_alloc_init(NSMutableDictionary);
    fromURIs = v2->_fromURIs;
    v2->_fromURIs = v12;

    v2->_lock._os_unfair_lock_opaque = 0;
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.ids.realtimeencryptioncontroller", v14);
    realtimeEncryptionQueue = v2->_realtimeEncryptionQueue;
    v2->_realtimeEncryptionQueue = v15;

    v17 = [_TtC17identityservicesd31IDSGroupEncryptionConfiguration alloc];
    v18 = +[IDSServerBag sharedInstance];
    v19 = [(IDSGroupEncryptionConfiguration *)v17 initWithBag:v18];

    v20 = [[_TtC17identityservicesd36IDSGroupEncryptionIdentityController alloc] initWithConfig:v19];
    v21 = [_TtC17identityservicesd29IDSGroupEncryptionController2 alloc];
    v22 = [(IDSGroupEncryptionController *)v2 sessionController];
    v23 = [(IDSGroupEncryptionController2 *)v21 initWithDelegate:v2 config:v19 sessionProvider:v22 identityController:v20 pushHandler:v2];
    internal = v2->_internal;
    v2->_internal = v23;

    v25 = [(IDSGroupEncryptionController2 *)v2->_internal createP2PNegotiatorProvider];
    p2pNegotiatorProvider = v2->_p2pNegotiatorProvider;
    v2->_p2pNegotiatorProvider = v25;
  }

  return v2;
}

- (IDSDSessionController)sessionController
{
  sessionController = self->_sessionController;
  if (sessionController)
  {
    v3 = sessionController;
  }

  else
  {
    v3 = +[IDSDSessionController sharedInstance];
  }

  return v3;
}

- (id)_localDevicePushToken
{
  v2 = +[IDSPushHandler sharedInstance];
  v3 = [v2 pushToken];
  v4 = [IDSPushToken pushTokenWithData:v3];

  return v4;
}

- (__SecKey)localPublicPreKey
{
  v2 = [(IDSGroupEncryptionController2 *)self->_internal objcPublicIdentity];
  v3 = [v2 publicIdentity];

  return v3;
}

- (__SecKey)localPrivatePreKey
{
  v2 = [(IDSGroupEncryptionController2 *)self->_internal objcIdentity];
  v3 = [v2 fullIdentity];

  return v3;
}

- (__SecKey)previousLocalPublicPreKey
{
  v2 = [(IDSGroupEncryptionController2 *)self->_internal objcPreviousPublicIdentity];
  v3 = [v2 publicIdentity];

  return v3;
}

- (__SecKey)previousLocalPrivatePreKey
{
  v2 = [(IDSGroupEncryptionController2 *)self->_internal objcPreviousIdentity];
  v3 = [v2 fullIdentity];

  return v3;
}

- (__SecKey)publicKeyForPushToken:(id)a3
{
  v3 = [(IDSGroupEncryptionController2 *)self->_internal objcPublicIdentityForPushToken:a3];
  v4 = [v3 publicIdentity];

  return v4;
}

- (BOOL)_isUsingAccount:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(NSMutableDictionary *)self->_accountIDs allValues];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1006C6DE4;
  v8[3] = &unk_100BE5558;
  v6 = v4;
  v9 = v6;
  v10 = &v11;
  [v5 enumerateObjectsUsingBlock:v8];

  LOBYTE(v5) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v5;
}

- (void)setAccount:(id)a3 fromURI:(id)a4 forGroup:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v8 && v9)
  {
    v11 = a4;
    os_unfair_lock_lock(&self->_lock);
    if (![(IDSGroupEncryptionController *)self _isUsingAccount:v8])
    {
      v12 = im_primary_queue();
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_1006C6FD8;
      v17 = &unk_100BD6E40;
      v18 = v8;
      v19 = self;
      dispatch_async(v12, &v14);
    }

    [(NSMutableDictionary *)self->_accountIDs setObject:v8 forKeyedSubscript:v10, v14, v15, v16, v17];
    [(NSMutableDictionary *)self->_fromURIs setObject:v11 forKeyedSubscript:v10];

    os_unfair_lock_unlock(&self->_lock);
    v13 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = v8;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "setAccount: added the accountID %@ for group %@", buf, 0x16u);
    }
  }
}

- (void)removeAccountForGroup:(id)a3
{
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = [(NSMutableDictionary *)self->_accountIDs objectForKeyedSubscript:v4];
    [(NSMutableDictionary *)self->_accountIDs setObject:0 forKeyedSubscript:v4];
    [(NSMutableDictionary *)self->_fromURIs setObject:0 forKeyedSubscript:v4];
    if (v5 && ![(IDSGroupEncryptionController *)self _isUsingAccount:v5])
    {
      v6 = im_primary_queue();
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1006C7390;
      v8[3] = &unk_100BD6E40;
      v9 = v5;
      v10 = self;
      dispatch_async(v6, v8);
    }

    os_unfair_lock_unlock(&self->_lock);
    v7 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "removeAccountForGroup: removed the account for group %@", buf, 0xCu);
    }
  }
}

- (void)requestKeyMaterialForGroup:(id)a3 sessionID:(id)a4 toSpecificMembers:(id)a5 requireMKM:(BOOL)a6 requireSKM:(BOOL)a7
{
  v7 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:a3, a4, a5, a6, a7];
  [v7 updateDesiredMaterials];
}

- (void)requestKeyMaterialForGroup:(id)a3 sessionID:(id)a4
{
  v4 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:a3, a4];
  [v4 updateDesiredMaterials];
}

- (void)reliablyRequestKeyMaterialForGroup:(id)a3 sessionID:(id)a4
{
  v4 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:a3, a4];
  [v4 updateDesiredMaterials];
}

- (id)createRealTimeEncryptionFullIdentityForDevice:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  internal = self->_internal;
  v8 = a3;
  v9 = [(IDSGroupEncryptionController2 *)internal identityController];
  v10 = [v9 ensurePublicIdentityForDevice:v8];

  v11 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006C7670;
  block[3] = &unk_100BD7270;
  v16 = v6;
  v12 = v6;
  v13 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
  dispatch_async(v11, v13);

  return v10;
}

- (void)processIncomingPrekeyAckForGroup:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_prekeyAckCountForGroup objectForKeyedSubscript:v4];
  v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 intValue] + 1);
  [(NSMutableDictionary *)self->_prekeyAckCountForGroup setObject:v6 forKeyedSubscript:v4];

  v7 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(NSMutableDictionary *)self->_prekeyAckCountForGroup objectForKeyedSubscript:v4];
    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Current ACK'd number of prekey: %@ for group: %@", &v9, 0x16u);
  }
}

- (void)reportPrekeyAckStatus:(id)a3
{
  v4 = a3;
  v5 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NSMutableDictionary *)self->_prekeyAckCountForGroup objectForKeyedSubscript:v4];
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Report the prekey ACK'd (final count: %@) result for group: %@", &v7, 0x16u);
  }

  [(NSMutableDictionary *)self->_prekeyAckCountForGroup removeObjectForKey:v4];
}

- (void)resetKeyMaterialCacheTimerIfNeeded:(id)a3
{
  v3 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:a3];
  [v3 cancelKMCacheReset];
}

- (void)storeEncryptionSequenceNumber:(unint64_t)a3 groupID:(id)a4
{
  v6 = a4;
  v7 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:v6];
  v8 = [v7 encryptionSequenceNumber];
  v9 = +[IDSFoundationLog RealTimeEncryptionController];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8 >= a3)
  {
    if (v10)
    {
      v11 = 134218498;
      v12 = a3;
      v13 = 2048;
      v14 = v8;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ignoring encryption sequence number %llu (old: %llu) for groupID %@ (Client -> *IDSD)", &v11, 0x20u);
    }
  }

  else
  {
    if (v10)
    {
      v11 = 134218498;
      v12 = a3;
      v13 = 2048;
      v14 = v8;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "storing encryption sequence number %llu (old: %llu) for groupID %@ (Client -> *IDSD)", &v11, 0x20u);
    }

    [v7 setEncryptionSequenceNumber:a3];
  }
}

- (unint64_t)encryptionSequenceNumberForGroupID:(id)a3
{
  v4 = a3;
  v5 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:v4];
  v6 = [v5 encryptionSequenceNumber];
  v7 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    v10 = v6;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "returning stored encryption sequence number %llu for groupID %@ (Client <- *IDSD)", &v9, 0x16u);
  }

  return v6;
}

- (id)publicKeys
{
  v2 = [(IDSGroupEncryptionController2 *)self->_internal publicKeys];
  v3 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "publicKeys: %@", &v5, 0xCu);
  }

  return v2;
}

- (int64_t)setLocalParticipantID:(unint64_t)a3 forGroupID:(id)a4 sessionID:(id)a5
{
  if (!a3)
  {
    return 0;
  }

  internal = self->_internal;
  v8 = a4;
  v9 = [(IDSGroupEncryptionController2 *)internal groupForID:v8];
  v10 = [v9 localParticipantID];

  v11 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:v8];

  [v11 setLocalParticipantID:a3];
  if (v10)
  {
    return 2 * (v10 != a3);
  }

  else
  {
    return 1;
  }
}

- (unint64_t)localParticipantIDForGroupID:(id)a3
{
  v3 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:a3];
  v4 = [v3 localParticipantID];

  return v4;
}

- (void)sendKeyMaterialsRecoveryRequestToGroup:(id)a3 requireMKM:(BOOL)a4 requireSKM:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [(IDSGroupEncryptionController *)self sessionController];
  v10 = [v9 sessionWithGroupID:v8];

  if (v10)
  {
    v19 = v8;
    v11 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:v8];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = [v11 participants];
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        v16 = 0;
        do
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v20 + 1) + 8 * v16);
          v18 = [v10 uniqueID];
          [v17 recoverKeyMaterialForSessionID:v18 mkm:v6 skm:v5];

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v14);
    }

    v8 = v19;
  }

  else
  {
    v11 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "sendKeyMaterialsRecoveryRequestToGroup: no session", buf, 2u);
    }
  }
}

- (void)sendKeyMaterialsRecoveryRequestToParticipants:(id)a3 groupID:(id)a4 sessionID:(id)a5 requireMKM:(BOOL)a6 requireSKM:(BOOL)a7
{
  v25 = a7;
  v7 = a6;
  v11 = a3;
  v12 = a5;
  v13 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:a4];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v15)
  {
    v17 = v15;
    v18 = *v27;
    *&v16 = 138412290;
    v24 = v16;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v26 + 1) + 8 * i);
        v21 = [v13 participantForID:{objc_msgSend(v20, "unsignedLongLongValue", v24)}];
        v22 = v21;
        if (v21)
        {
          [v21 recoverKeyMaterialForSessionID:v12 mkm:v7 skm:v25];
        }

        else
        {
          v23 = +[IDSFoundationLog RealTimeEncryptionController];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v24;
            v31 = v20;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "sendKeyMaterialsRecoveryRequestToParticipants: participant not found for ID %@", buf, 0xCu);
          }
        }
      }

      v17 = [v14 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v17);
  }
}

- (void)sendKeyMaterialRequestMessage:(id)a3 toDestination:(id)a4 forGroup:(id)a5 sessionID:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v14 = a3;
  [(IDSGroupEncryptionController *)self _multiwayFTMessageSendTimeout];
  LOBYTE(v13) = 0;
  [(IDSGroupEncryptionController *)self _sendMessage:v14 toDestination:v12 forGroup:v11 sessionID:v10 command:211 timeout:1 shouldExpire:v13 useQR:0 completion:0 completionBlock:?];
}

- (void)processIncomingKeyMaterialsRecoveryRequest:(id)a3 fromDevice:(id)a4 fromURI:(id)a5 groupID:(id)a6 sessionID:(id)a7 serverDate:(id)a8 requireMKM:(BOOL)a9 requireSKM:(BOOL)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = [(IDSGroupEncryptionController *)self sessionController];
  v23 = [v22 sessionWithUniqueID:v20];

  v65 = self;
  v24 = [(IDSGroupEncryptionController *)self sessionController];
  v25 = [v24 sessionWithGroupID:v19];

  v67 = [v18 URIByAddingOptionalPushToken:v17];
  if ([v23 destinationsContainFromURI:?] && (objc_msgSend(v25, "destinationsContainFromURI:", v67) & 1) != 0)
  {
    v58 = v25;
    v63 = v23;
    v64 = v21;
    v60 = v20;
    v61 = v19;
    v62 = v16;
    v59 = [(IDSGroupEncryptionController2 *)v65->_internal groupForID:v19];
    [v59 participants];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = v72 = 0u;
    v26 = [obj countByEnumeratingWithState:&v69 objects:v85 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v70;
      while (2)
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v70 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v69 + 1) + 8 * i);
          v31 = [v30 pushToken];
          v32 = [v31 isEqual:v17];

          if (v32)
          {
            v33 = [IDSURI alloc];
            v34 = [v30 allocatedURI];
            v35 = [v33 initWithPrefixedURI:v34];
            v36 = [v18 isEqual:v35];

            if (v36)
            {
              v45 = v30;

              v16 = v62;
              v57 = [v62 objectForKeyedSubscript:IDSDSessionMessageRealTimeEncryptionPublicKey];
              v56 = [v62 _numberForKey:IDSDSessionMessageRealTimeEncryptionWrapModeKey];
              v46 = +[IDSFoundationLog RealTimeEncryptionController];
              v20 = v60;
              v19 = v61;
              v21 = v64;
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138413571;
                v74 = v61;
                v75 = 2112;
                v76 = v60;
                v77 = 2112;
                v78 = v64;
                v79 = 2112;
                v80 = v17;
                v81 = 2112;
                v82 = v18;
                v83 = 2113;
                v84 = v62;
                _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "processIncomingKeyMaterialsRecoveryRequest for group %@, session %@, serverDate %@, pushToken: %@, fromID: %@, message %{private}@", buf, 0x3Eu);
              }

              v47 = +[IDSFoundationLog RealTimeEncryptionController];
              v23 = v63;
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
              {
                ids_monotonic_time();
                *buf = 134217984;
                v74 = v48;
                _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Receiving Key Material (Push, KeyMaterialsRecovery) [PreKey] -- %f", buf, 0xCu);
              }

              -[IDSGroupEncryptionController setRealTimeEncryptionPublicKey:forDevice:fromURI:groupID:sessionID:serverDate:wrapMode:](v65, "setRealTimeEncryptionPublicKey:forDevice:fromURI:groupID:sessionID:serverDate:wrapMode:", v57, v17, v18, v61, v60, v64, [v56 integerValue]);
              if (v63)
              {
                v49 = [v18 prefixedURI];
                v50 = [v17 rawToken];
                v66 = [IDSDestination destinationWithAlias:v49 pushToken:v50];

                v23 = v63;
                v51 = [(IDSGroupEncryptionController2 *)v65->_internal groupForID:v61];
                v52 = [v51 ensureSessionForID:v60];
                [v52 setKeyMaterialIsNeededForParticipant:v45 forMKM:a9 forSKM:a10];

                v21 = v64;
                [(IDSGroupEncryptionController *)v65 sendPublicKeyToDestination:v66 group:v61 sessionID:v60];
                v53 = [v17 rawToken];
                [v63 reportPreKeyReceivedOverPushFromToken:v53];

                v54 = v66;
                v43 = v58;
              }

              else
              {
                v55 = +[IDSFoundationLog RealTimeEncryptionController];
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v74 = v61;
                  v75 = 2112;
                  v76 = v60;
                  _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "processIncomingKeyMaterialsRecoveryRequest - there is no group session for group %@, session %@. We won't send any MKM/SKM.", buf, 0x16u);
                }

                v43 = v58;
                v54 = v55;
              }

              v42 = v67;

              goto LABEL_31;
            }

            v37 = +[IDSFoundationLog RealTimeEncryptionController];
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v38 = [IDSURI alloc];
              v39 = [v30 allocatedURI];
              v40 = [v38 initWithPrefixedURI:v39];
              *buf = 138412546;
              v74 = v18;
              v75 = 2112;
              v76 = v40;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "processIncomingKeyMaterialsRecoveryRequest: found a participant with different URI %@ vs %@.", buf, 0x16u);
            }
          }
        }

        v27 = [obj countByEnumeratingWithState:&v69 objects:v85 count:16];
        if (v27)
        {
          continue;
        }

        break;
      }
    }

    v41 = +[IDSFoundationLog RealTimeEncryptionController];
    v19 = v61;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v74 = v61;
      v75 = 2112;
      v76 = v17;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "processIncomingKeyMaterialsRecoveryRequest: We'll drop this key recovery request for group [%@] since deviceToken [%@] is not in the active participant list!", buf, 0x16u);
    }

    v23 = v63;
    v42 = v67;
    [v63 rejectedKeyRecoveryRequestFromURI:v67 reason:2];
    v16 = v62;
    v20 = v60;
    v21 = v64;
    v43 = v58;
LABEL_31:
  }

  else
  {
    v43 = v25;
    v44 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v74 = v19;
      v75 = 2112;
      v76 = v67;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "processIncomingKeyMaterialsRecoveryRequest: We'll drop this prekey recovery request for group %@ since %@ is not in this group!", buf, 0x16u);
    }

    v42 = v67;
    [v23 rejectedKeyRecoveryRequestFromURI:v67 reason:1];
  }
}

- (id)receivedAndSetKeyMaterial:(id)a3 stableKeyMaterial:(id)a4 forDevice:(id)a5 fromURI:(id)a6 groupID:(id)a7 sessionID:(id)a8 fromSender:(BOOL)a9 error:(id *)a10 forMKM:(BOOL)a11 forSKM:(BOOL)a12
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  if (v18)
  {
    v24 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:v22];
    v25 = [v24 receiveMKMWithKeyMaterialDictionary:v18 fromPushToken:v20 fromURI:v21 sessionID:v23 isFromSender:a9];

    if (v25)
    {
      Mutable = [v25 keyIndex];

      if (Mutable)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        [Mutable setObject:v25 forKeyedSubscript:@"ids-rtencryption-master-key-material-key"];
      }
    }

    else
    {
      Mutable = 0;
    }

    if (v19)
    {
      goto LABEL_9;
    }
  }

  else
  {
    Mutable = 0;
    if (v19)
    {
LABEL_9:
      v27 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:v22];
      v28 = [v27 receiveSKMWithKeyMaterialDictionary:v19 fromPushToken:v20 fromURI:v21 sessionID:v23 isFromSender:a9];
    }
  }

  return Mutable;
}

- (id)stableKeyMaterialForGroup:(id)a3
{
  v3 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:a3];
  v4 = [v3 stableKeyMaterial];

  return v4;
}

- (void)resetMKMLocalSentStatus:(id)a3
{
  v3 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:a3];
  [v3 resetKeysSentToClient];
}

- (double)_multiwayFTMessageSendTimeout
{
  v2 = +[IDSServerBag sharedInstance];
  v3 = [v2 objectForKey:@"ids-multiway-ftmessage-send-timeout"];

  v4 = 605.0;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 doubleValue];
      if (v5 > 0.0)
      {
        v6 = v5;
        v7 = +[IDSFoundationLog RealTimeEncryptionController];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 134217984;
          v10 = v6;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Server Bag provided us with a send timeout of %f ", &v9, 0xCu);
        }

        v4 = v6;
      }
    }
  }

  return v4;
}

- (BOOL)_shouldEnforceRemoteTimeout
{
  v2 = +[IDSServerBag sharedInstance];
  v3 = [v2 objectForKey:@"ids-multiway-ftmessage-enforce-remote-timeout"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
    v5 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (v4)
      {
        v6 = @"YES";
      }

      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Server Bag provided us with should enforce remote timeout %@", &v8, 0xCu);
    }
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (void)resetDevicePrekey
{
  v3 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "reset the device prekey", v5, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  v4 = [(IDSGroupEncryptionController2 *)self->_internal identityController];
  [v4 resetPreKey];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)activeParticipantsForGroup:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock(&self->_lock);
    v5 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:v4];

    v6 = [v5 participantPushTokens];
    v7 = [v6 allObjects];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)removeLocalActiveParticipantForGroup:(id)a3
{
  v4 = a3;
  v5 = [(IDSGroupEncryptionController *)self _localDevicePushToken];
  [(IDSGroupEncryptionController *)self removeActiveParticipant:v5 forGroup:v4];
}

- (void)removeActiveParticipant:(id)a3 forGroup:(id)a4
{
  if (a3 && a4)
  {
    v6 = a4;
    v7 = a3;
    os_unfair_lock_lock(&self->_lock);
    v8 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:v6];

    [v8 removeParticipantForToken:v7];
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)resetKeysForGroup:(id)a3 shouldRemoveCurrentParticipants:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    os_unfair_lock_lock(&self->_lock);
    v7 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:v6];
    v8 = v7;
    if (v4)
    {
      [v7 removeAllParticipants];
      [v8 resetKeysToPropagate];
      [v8 resetKeysSentToClient];
      [v8 hardRoll];
    }

    else
    {
      [v7 resetKeysToPropagate];
      [v8 resetKeysSentToClient];
    }

    v9 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      if (v4)
      {
        v10 = @"YES";
      }

      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "resetKeysForGroup: %@, shouldRemoveCurrentParticipants: %@", &v11, 0x16u);
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)unsubscribeEndpointsForGroup:(id)a3
{
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:v4];
    [v5 removeAllMembers];
    [v5 removeAllParticipants];
    [(NSMutableDictionary *)self->_lastKnownGroupIDToPushTokens setObject:0 forKeyedSubscript:v4];
    v6 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "unsubscribeEndpointsForGroup: %@", &v7, 0xCu);
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (unint64_t)participantIDForPushToken:(id)a3 inGroup:(id)a4
{
  internal = self->_internal;
  v6 = a3;
  v7 = [(IDSGroupEncryptionController2 *)internal groupForID:a4];
  v8 = [v7 participantForToken:v6];

  v9 = [v8 participantID];
  return v9;
}

- (id)stableKeyMaterialForGroup:(id)a3 sessionID:(id)a4
{
  internal = self->_internal;
  v6 = a4;
  v7 = [(IDSGroupEncryptionController2 *)internal groupForID:a3];
  v8 = [v7 ensureSessionForID:v6];

  v9 = [v8 skmController];
  [v9 ensureKey];

  v10 = [v8 skmController];
  v11 = [v10 currentObjcMaterial];

  return v11;
}

- (void)sendKeyMaterialMessage:(id)a3 toDestination:(id)a4 forGroup:(id)a5 sessionID:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  [(IDSGroupEncryptionController *)self _multiwayFTMessageSendTimeout];
  v18 = v17;
  shouldSendMKMOverQR = self->_shouldSendMKMOverQR;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1006C9454;
  v22[3] = &unk_100BE55C0;
  v23 = v12;
  v20 = v12;
  LOBYTE(v21) = shouldSendMKMOverQR;
  [(IDSGroupEncryptionController *)self _sendMessage:v16 toDestination:v15 forGroup:v14 sessionID:v13 command:211 timeout:1 shouldExpire:v18 useQR:v21 completion:&stru_100BE5598 completionBlock:v22];
}

- (void)_sendMessage:(id)a3 toDestination:(id)a4 forGroup:(id)a5 sessionID:(id)a6 command:(int64_t)a7 timeout:(double)a8 shouldExpire:(BOOL)a9 useQR:(BOOL)a10 completion:(id)a11 completionBlock:(id)a12
{
  v12 = a9;
  v56 = a3;
  v19 = a4;
  v20 = a5;
  v55 = a6;
  v53 = a11;
  v54 = a12;
  v21 = +[IDSDAccountController sharedInstance];
  v22 = [(NSMutableDictionary *)self->_accountIDs objectForKeyedSubscript:v20];
  v23 = [v21 accountWithUniqueID:v22];

  v24 = [(NSMutableDictionary *)self->_fromURIs objectForKeyedSubscript:v20];
  v25 = v24;
  if (v23 && v24)
  {
    *v82 = 0;
    *&v82[8] = v82;
    *&v82[16] = 0x2020000000;
    LOBYTE(v83) = 0;
    v74[0] = 0;
    v74[1] = v74;
    v74[2] = 0x2020000000;
    v75 = 0;
    v26 = IMGetDomainBoolForKey() ^ 1;
    if (a7 != 211)
    {
      LOBYTE(v26) = 1;
    }

    if (v26)
    {
      v29 = [(IDSGroupEncryptionController *)self sessionController];
      v27 = [v29 sessionWithUniqueID:v55];

      if (a7 == 211 && a10)
      {
        v30 = +[IDSFoundationLog RealTimeEncryptionController];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "sendMessage: calling _generateMKMBlobForQRFromMessage", buf, 2u);
        }

        v31 = [(IDSGroupEncryptionController *)self _generateMKMBlobForQRFromMessage:v56 account:v23 destination:v19 fromURI:v25];
        if (v31)
        {
          v67[0] = _NSConcreteStackBlock;
          v67[1] = 3221225472;
          v67[2] = sub_1006C9D74;
          v67[3] = &unk_100BE55E8;
          v72 = v82;
          v73 = v74;
          v68 = v20;
          v69 = v55;
          v70 = v53;
          v71 = v54;
          [v27 sendKeyMaterialMessageDataOverQR:v31 toDestination:v19 completionBlock:v67];

          v32 = v68;
        }

        else
        {
          v32 = +[IDSFoundationLog RealTimeEncryptionController];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v77 = v27;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Failed to generate a blob to send via QR, only using push {session: %@}", buf, 0xCu);
          }
        }
      }

      v52 = +[NSString stringGUID];
      v33 = objc_alloc_init(IDSSendParameters);
      v34 = [v25 unprefixedURI];
      [v33 setFromID:v34];

      [v33 setMessage:v56];
      [v33 setEncryptPayload:1];
      [v33 setPriority:300];
      [v33 setDestinations:v19];
      v35 = [NSNumber numberWithInteger:a7];
      [v33 setCommand:v35];

      [v33 setIdentifier:v52];
      [v33 setAlwaysSkipSelf:1];
      v36 = IDSGetUUIDData();
      [v33 setMessageUUID:v36];

      [v33 setTimeout:a8];
      [v33 setIgnoreMaxRetryCount:1];
      [v33 setWantsResponse:1];
      if (v12)
      {
        [v33 setEnforceRemoteTimeouts:{-[IDSGroupEncryptionController _shouldEnforceRemoteTimeout](self, "_shouldEnforceRemoteTimeout")}];
      }

      v37 = [v27 requiredLackOfCapabilities];
      v38 = [v37 count];

      if (v38)
      {
        v39 = +[IDSFoundationLog RealTimeEncryptionController];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = [v27 requiredLackOfCapabilities];
          *buf = 138412290;
          v77 = v40;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Group session encryption message requires lack of properties {requiredLackOfCapabilities: %@}", buf, 0xCu);
        }

        v41 = [v27 requiredLackOfCapabilities];
        [v33 setRequireLackOfRegistrationProperties:v41];
      }

      v42 = [v27 requiredCapabilities];
      v43 = [v42 count];

      if (v43)
      {
        v44 = +[IDSFoundationLog RealTimeEncryptionController];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = [v27 requiredCapabilities];
          *buf = 138412290;
          v77 = v45;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Group session encryption message requires properties {requiredCapabilities: %@}", buf, 0xCu);
        }

        v46 = [v27 requiredCapabilities];
        [v33 setRequireAllRegistrationProperties:v46];
      }

      v47 = +[IDSFoundationLog RealTimeEncryptionController];
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        [v33 timeout];
        *buf = 138412802;
        v77 = v52;
        v78 = 2048;
        v79 = a7;
        v80 = 2048;
        v81 = v48;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Sending group session encryption message { GUID: %@, command: %ld, timeout: %f }", buf, 0x20u);
      }

      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_1006C9EF0;
      v58[3] = &unk_100BE5610;
      v49 = v52;
      v59 = v49;
      v64 = v82;
      v65 = v74;
      v66 = a7;
      v60 = v20;
      v61 = v55;
      v62 = v53;
      v63 = v54;
      [v23 sendMessageWithSendParameters:v33 willSendBlock:0 completionBlock:v58];
      v50 = [NSNumber numberWithInteger:a7];
      v51 = [NSString stringWithFormat:@"sendMessage: Sent messageID %@ to the destination %@ command %@ (message: %@)", v49, v19, v50, v56];

      v57 = v51;
      cut_dispatch_log_queue();
    }

    else
    {
      v27 = +[IDSFoundationLog RealTimeEncryptionController];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "sendMessage: do not send MKM over push, return", buf, 2u);
      }
    }

    _Block_object_dispose(v74, 8);
    _Block_object_dispose(v82, 8);
  }

  else
  {
    v28 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *v82 = 138412802;
      *&v82[4] = v23;
      *&v82[12] = 2112;
      *&v82[14] = v25;
      *&v82[22] = 2112;
      v83 = v20;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "sendMessage: account: %@ fromID: %@ - failed to get the account forGroup: %@", v82, 0x20u);
    }
  }
}

- (void)sendPreKeyMessage:(id)a3 toDestination:(id)a4 forGroup:(id)a5 sessionID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006CA374;
  block[3] = &unk_100BD9FC0;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);
}

- (void)sendPreKeyRequestMessage:(id)a3 toDestination:(id)a4 forGroup:(id)a5 sessionID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006CA504;
  block[3] = &unk_100BD9FC0;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);
}

- (void)processedQRMKMPayloadFromData:(id)a3 forGroupID:(id)a4 account:(id)a5 remoteURI:(id)a6 localURI:(id)a7 tokens:(id)a8 completionHandler:(id)a9
{
  v62 = a3;
  v59 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v60 = a9;
  v18 = +[NSMutableSet set];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v19 = v17;
  v20 = [v19 countByEnumeratingWithState:&v70 objects:v80 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v71;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v71 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v70 + 1) + 8 * i);
        if (v24 && ([*(*(&v70 + 1) + 8 * i) isNull] & 1) == 0)
        {
          v25 = [v24 __imHexString];
          [v18 addObject:v25];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v70 objects:v80 count:16];
    }

    while (v21);
  }

  v26 = +[IDSPeerIDManager sharedInstance];
  v79 = v15;
  v27 = [NSArray arrayWithObjects:&v79 count:1];
  v58 = v14;
  v28 = [v14 service];
  v29 = [v28 identifier];
  v30 = [v26 endpointsForURIs:v27 service:v29 fromURI:v16];

  v55 = v30;
  v31 = [v30 objectForKey:v15];
  v56 = v16;
  v57 = v15;
  if ([v19 count])
  {
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_1006CAB6C;
    v68[3] = &unk_100BE5638;
    v69 = v18;
    v32 = [v31 sortedArrayUsingComparator:v68];

    v31 = v32;
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v31;
  v33 = [obj countByEnumeratingWithState:&v64 objects:v78 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v65;
    while (2)
    {
      for (j = 0; j != v34; j = j + 1)
      {
        if (*v65 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v37 = *(*(&v64 + 1) + 8 * j);
        v38 = +[IDSEncryptionController sharedInstance];
        v63 = 0;
        v39 = [v38 publicKeyDecryptData:v62 fromEndpoint:v37 pkType:1 priority:300 error:&v63];
        v40 = v63;

        if (v40)
        {
          v41 = +[IDSFoundationLog RealTimeEncryptionController];
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v75 = v40;
            v76 = 2112;
            v77 = v37;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Failed to process QRMKM payload {error: %@, endpoint: %@}", buf, 0x16u);
          }
        }

        else if (v39)
        {
          v48 = v37;

          v49 = JWDecodeDictionary();
          v44 = v59;
          v50 = [(IDSGroupEncryptionController *)self _compactKeyMaterialMessage:v49 isOutgoing:0 groupID:v59];
          v51 = +[IDSFoundationLog RealTimeEncryptionController];
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v75 = v49;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Decoded QR MKM Payload {decodedPayload: %@}", buf, 0xCu);
          }

          v52 = +[IDSFoundationLog RealTimeEncryptionController];
          v46 = v56;
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v75 = v50;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Expanded QR MKM Payload {expandedPayload: %@}", buf, 0xCu);
          }

          v47 = v60;
          if (v60)
          {
            v53 = [v48 pushToken];
            (*(v60 + 2))(v60, v50, v53);

            v47 = v60;
          }

          v45 = v57;
          v43 = v58;
          goto LABEL_37;
        }
      }

      v34 = [obj countByEnumeratingWithState:&v64 objects:v78 count:16];
      if (v34)
      {
        continue;
      }

      break;
    }
  }

  v42 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Unable to decrypt the incoming MKM QR blob -- returning nil", buf, 2u);
  }

  v43 = v58;
  v44 = v59;
  v46 = v56;
  v45 = v57;
  v47 = v60;
  if (v60)
  {
    (*(v60 + 2))(v60, 0, 0);
  }

  v39 = 0;
  v48 = 0;
LABEL_37:
}

- (id)_generateMKMBlobForQRFromMessage:(id)a3 account:(id)a4 destination:(id)a5 fromURI:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v12 destinationURIs];
  v15 = [v14 count];

  if (v15 < 2)
  {
    v18 = [v12 destinationURIs];
    v16 = [v18 anyObject];

    v55 = 0;
    v19 = [v16 _stripPotentialTokenURIWithToken:&v55];
    v20 = v55;
    if (v20)
    {
      v44 = self;
      v48 = v16;
      v49 = v12;
      v52 = v10;
      v21 = +[IDSPeerIDManager sharedInstance];
      v22 = [v11 service];
      [v22 identifier];
      v24 = v23 = v19;
      v46 = v20;
      v25 = [IDSPushToken pushTokenWithData:v20 withServiceLoggingHint:v24];
      v26 = [v11 service];
      v27 = [v26 identifier];
      v47 = v23;
      v28 = [IDSURI URIWithPrefixedURI:v23 withServiceLoggingHint:v27];
      v51 = v11;
      v29 = [v11 service];
      v30 = [v29 identifier];
      v50 = v13;
      v31 = [v21 endpointForPushToken:v25 URI:v28 service:v30 fromURI:v13];

      v32 = v31;
      if (v31)
      {
        v10 = v52;
        v33 = [(IDSGroupEncryptionController *)v44 _compactKeyMaterialMessage:v52 isOutgoing:1 groupID:0];
        v34 = JWEncodeDictionary();
        v54 = 0xAAAAAAAAAAAAAAAALL;
        v35 = +[IDSEncryptionController sharedInstance];
        v53 = 0;
        v45 = v34;
        v36 = [v35 publicKeyEncryptData:v34 encryptionContext:0 forceSizeOptimizations:0 resetState:0 withEncryptedAttributes:0 toEndpoint:v32 usedEncryptionType:&v54 priority:300 metadata:0 error:&v53];
        v37 = v53;

        v43 = v37;
        if (v36)
        {
          v38 = v54;
          v39 = +[IDSFoundationLog RealTimeEncryptionController];
          v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
          v12 = v49;
          v13 = v50;
          v16 = v48;
          v20 = v46;
          if (v38 == 4)
          {
            v19 = v47;
            if (v40)
            {
              *buf = 138412290;
              v57 = v33;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Encoded QR MKM Payload {compactPayload: %@}", buf, 0xCu);
            }

            v17 = v36;
          }

          else
          {
            v19 = v47;
            if (v40)
            {
              *buf = 138412290;
              v57 = v32;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "QR MKM payload used legacy encryption -- returning nil {endpointToTarget: %@}", buf, 0xCu);
            }

            v17 = 0;
          }
        }

        else
        {
          v41 = +[IDSFoundationLog RealTimeEncryptionController];
          v12 = v49;
          v13 = v50;
          v16 = v48;
          v20 = v46;
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v57 = v37;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "QR MKM payload failed to encrypt -- returning nil {error: %@}", buf, 0xCu);
          }

          v17 = 0;
          v19 = v47;
        }
      }

      else
      {
        v33 = +[IDSFoundationLog RealTimeEncryptionController];
        v10 = v52;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v20 = v46;
          v19 = v47;
          v57 = v47;
          v58 = 2112;
          v59 = v46;
          v60 = 2112;
          v13 = v50;
          v61 = v50;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "No endpoint found to target, not triggering a query -- returning nil {destinationURIString: %@, tokenFromURL: %@, fromURI: %@}", buf, 0x20u);
          v17 = 0;
          v16 = v48;
          v12 = v49;
        }

        else
        {
          v17 = 0;
          v12 = v49;
          v13 = v50;
          v19 = v47;
          v16 = v48;
          v20 = v46;
        }
      }

      v11 = v51;
    }

    else
    {
      v32 = +[IDSFoundationLog RealTimeEncryptionController];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v57 = v16;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Unable to generate a QR MKM payload to a non-specific URI -- returning nil {fullDestinationURIString: %@}", buf, 0xCu);
      }

      v17 = 0;
    }
  }

  else
  {
    v16 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v57 = v12;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Unable to generate a QR MKM payload to more than 1 destination -- returning nil {destination: %@}", buf, 0xCu);
    }

    v17 = 0;
  }

  return v17;
}

- (id)_compactKeyMaterialMessage:(id)a3 isOutgoing:(BOOL)a4 groupID:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  v9 = objc_autoreleasePoolPush();
  if (v6)
  {
    v10 = &off_100C3DDC0;
  }

  else
  {
    v10 = &off_100C3DDD8;
  }

  if (v6)
  {
    v11 = &off_100C3DDD8;
  }

  else
  {
    v11 = &off_100C3DDC0;
  }

  v12 = [v7 mutableCopy];
  [v12 removeObjectForKey:IDSDSessionMessageRealTimeEncryptionKeyAllValidKeyMaterialsKey];
  [v12 removeObjectForKey:IDSDSessionMessageRealTimeEncryptionKeyAllValidKeyMaterialsURIsKey];
  [v12 removeObjectForKey:IDSFanoutMessageGroupIDKey];
  [v12 removeObjectForKey:IDSDSessionMessageRealTimeEncryptionStableKeyMaterialKey];
  if (v8)
  {
    v13 = [v11 objectAtIndexedSubscript:0];
    [v12 setObject:v8 forKeyedSubscript:v13];
  }

  v14 = [v10 objectAtIndexedSubscript:1];
  v15 = [v12 _arrayForKey:v14];

  if (v15)
  {
    v16 = [v10 objectAtIndexedSubscript:1];
    [v12 removeObjectForKey:v16];

    v17 = [v11 objectAtIndexedSubscript:1];
    [v12 setObject:v15 forKeyedSubscript:v17];
  }

  v18 = [v10 objectAtIndexedSubscript:2];
  v19 = [v12 _dictionaryForKey:v18];
  v20 = [v19 mutableCopy];

  if (v20)
  {
    v40 = v9;
    v41 = v8;
    v21 = [v10 objectAtIndexedSubscript:4];
    v22 = [v20 _numberForKey:v21];

    if (v22)
    {
      v23 = [v10 objectAtIndexedSubscript:4];
      [v20 removeObjectForKey:v23];

      v24 = [v11 objectAtIndexedSubscript:4];
      [v20 setObject:v22 forKeyedSubscript:v24];
    }

    v25 = [v10 objectAtIndexedSubscript:5];
    v26 = [v20 _dataForKey:v25];

    if (v26)
    {
      v27 = [v10 objectAtIndexedSubscript:5];
      [v20 removeObjectForKey:v27];

      v28 = [v11 objectAtIndexedSubscript:5];
      [v20 setObject:v26 forKeyedSubscript:v28];
    }

    v42 = v7;
    v29 = [v10 objectAtIndexedSubscript:6];
    v30 = [v20 _dataForKey:v29];

    if (v30)
    {
      v31 = [v10 objectAtIndexedSubscript:6];
      [v20 removeObjectForKey:v31];

      v32 = [v11 objectAtIndexedSubscript:6];
      [v20 setObject:v30 forKeyedSubscript:v32];
    }

    v33 = [v10 objectAtIndexedSubscript:7];
    v34 = [v20 _dataForKey:v33];

    if (v34)
    {
      v35 = [v10 objectAtIndexedSubscript:7];
      [v20 removeObjectForKey:v35];

      v36 = [v11 objectAtIndexedSubscript:7];
      [v20 setObject:v34 forKeyedSubscript:v36];
    }

    v37 = [v10 objectAtIndexedSubscript:2];
    [v12 removeObjectForKey:v37];

    v38 = [v11 objectAtIndexedSubscript:2];
    [v12 setObject:v20 forKeyedSubscript:v38];

    v8 = v41;
    v7 = v42;
    v9 = v40;
  }

  objc_autoreleasePoolPop(v9);

  return v12;
}

- (void)updateServerDesiredKeyMaterialsForGroup:(id)a3 sessionID:(id)a4
{
  v4 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:a3, a4];
  [v4 updateDesiredMaterials];
}

- (void)rollNewKeysAfterResettingPrekeysForGroups:(id)a3 withReason:(int64_t)a4
{
  v5 = a3;
  v6 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = v5;
    v28 = 2048;
    v29 = a4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "rollNewKeysAfterResettingPrekeysForGroups: %@ reason: %ld", buf, 0x16u);
  }

  v7 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = v5;
    v28 = 2048;
    v29 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "rollNewKeysAfterResettingPrekeysForGroups: %@ reason: %ld", buf, 0x16u);
  }

  v8 = [(IDSGroupEncryptionController *)self identityForDevice];
  v9 = [v8 pushToken];
  v10 = [v9 copy];

  [(IDSGroupEncryptionController *)self resetDevicePrekey];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      v15 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * v15);
        v17 = im_primary_queue();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1006CB974;
        block[3] = &unk_100BD6E18;
        block[4] = self;
        block[5] = v16;
        v20 = v10;
        dispatch_async(v17, block);

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }
}

- (void)didReceiveEndpointsUpdate:(id)a3 forGroup:(id)a4 sessionID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSMutableSet set];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v41;
    do
    {
      v16 = 0;
      do
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v40 + 1) + 8 * v16) pushTokenObject];
        [v11 addObject:v17];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v14);
  }

  os_unfair_lock_lock(&self->_lock);
  v18 = [(NSMutableDictionary *)self->_lastKnownGroupIDToPushTokens objectForKeyedSubscript:v9];
  v19 = objc_autoreleasePoolPush();
  v20 = [v18 mutableCopy];
  [v20 intersectsSet:v11];
  [NSString stringWithFormat:@"newPushTokensForGroup: %@, previousPushTokensForGroup: %@, intersection: %@", v11, v18, v20];
  v35 = _NSConcreteStackBlock;
  v36 = 3221225472;
  v37 = sub_1006CC1DC;
  v39 = v38 = &unk_100BD6ED0;
  v21 = v39;
  cut_dispatch_log_queue();

  objc_autoreleasePoolPop(v19);
  [(NSMutableDictionary *)self->_lastKnownGroupIDToPushTokens setObject:v11 forKeyedSubscript:v9];
  os_unfair_lock_unlock(&self->_lock);
  if ([v18 isEqualToSet:v11])
  {
    v22 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v45 = v12;
      v46 = 2112;
      v47 = v9;
      v48 = 2112;
      v49 = v18;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "didReceiveEndpointsUpdate: %@ forGroup: %@ - nothing changed.(previous %@)", buf, 0x20u);
    }
  }

  else
  {
    endpointUpdateTimer = self->_endpointUpdateTimer;
    if (endpointUpdateTimer)
    {
      [(IMDispatchTimer *)endpointUpdateTimer invalidate];
      v24 = self->_endpointUpdateTimer;
      self->_endpointUpdateTimer = 0;

      v25 = +[IDSFoundationLog RealTimeEncryptionController];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v45 = v12;
        v46 = 2112;
        v47 = v9;
        v48 = 2048;
        v49 = 0x4000000000000000;
        v50 = 2112;
        v51 = v18;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "didReceiveEndpointsUpdate: %@ forGroup: %@ - invalidated the previous key rolling timer. Wait %f seconds more again to get more endpoint updates... (previous %@)", buf, 0x2Au);
      }
    }

    v26 = [IMDispatchTimer alloc];
    v27 = im_primary_queue();
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1006CC2B0;
    v30[3] = &unk_100BE5660;
    v31 = v12;
    v32 = v9;
    v33 = v18;
    v34 = self;
    v28 = [v26 initWithQueue:v27 interval:2 repeats:0 handlerBlock:v30];
    v29 = self->_endpointUpdateTimer;
    self->_endpointUpdateTimer = v28;

    v22 = v31;
  }
}

- (void)updateLightweightMemberTypes:(id)a3 members:(id)a4 triggeredLocally:(BOOL)a5 forGroup:(id)a6 sessionID:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  os_unfair_lock_lock(&self->_lock);
  v14 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:v13];
  v15 = &IDSRegistrationControlErrorDomain_ptr;
  if (a5)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v16 = v11;
    v17 = [v16 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v17)
    {
      v18 = v17;
      v36 = v13;
      v37 = v11;
      v38 = v12;
      v39 = self;
      v19 = *v42;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v42 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v41 + 1) + 8 * i);
          v22 = [v16 objectForKeyedSubscript:{v21, v36, v37}];
          v23 = [v22 BOOLValue];
          v24 = [IDSURI URIWithPrefixedURI:v21];
          v25 = [v14 memberForURI:v24];
          [v25 setIsLightweight:v23];
        }

        v18 = [v16 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v18);
      v11 = v37;
      v12 = v38;
      self = v39;
      v13 = v36;
      v15 = &IDSRegistrationControlErrorDomain_ptr;
    }
  }

  else
  {
    v40 = self;
    v16 = +[NSMutableSet set];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v26 = v12;
    v27 = [v26 countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v46;
      do
      {
        for (j = 0; j != v28; j = j + 1)
        {
          if (*v46 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [IDSURI URIWithPrefixedURI:*(*(&v45 + 1) + 8 * j)];
          [v16 addObject:v31];
        }

        v28 = [v26 countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v28);
    }

    [v14 updateMembersWithURIs:v16 lightweightStatusDict:v11];
    v15 = &IDSRegistrationControlErrorDomain_ptr;
    v32 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [v14 memberURIs];
      *buf = 138412546;
      v51 = v33;
      v52 = 2112;
      v53 = v13;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "updateLightweightMemberTypes: membersForGroup: %@ for group: %@", buf, 0x16u);
    }

    self = v40;
  }

  v34 = [v15[240] RealTimeEncryptionController];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [v14 allMembers];
    *buf = 138412546;
    v51 = v35;
    v52 = 2112;
    v53 = v13;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "updateLightweightMemberTypes: members: %@ for group: %@", buf, 0x16u);
  }

  [v14 updateDesiredMaterials];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)setMembers:(id)a3 forGroup:(id)a4 sessionID:(id)a5 lightweightStatusDict:(id)a6
{
  v10 = a3;
  v11 = a4;
  v36 = a5;
  v12 = a6;
  os_unfair_lock_lock(&self->_lock);
  v13 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:v11];
  v14 = [NSSet setWithArray:v10];
  v35 = v12;
  [v13 updateMembersWithURIs:v14 lightweightStatusDict:v12];

  v15 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_100931FE4(v13, v11, v15);
  }

  v34 = v13;

  v16 = +[NSMutableArray array];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v17 = v10;
  v18 = [v17 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v43;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v43 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [v16 addObject:*(*(&v42 + 1) + 8 * i)];
      }

      v19 = [v17 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v19);
  }

  v22 = +[IDSDAccountController sharedInstance];
  v23 = [(NSMutableDictionary *)self->_accountIDs objectForKeyedSubscript:v11];
  v24 = [v22 accountWithUniqueID:v23];

  v25 = [(NSMutableDictionary *)self->_fromURIs objectForKeyedSubscript:v11];
  v26 = [IDSEndpointSubscription alloc];
  v27 = [v24 service];
  v28 = [v27 identifier];
  v29 = [(IDSEndpointSubscription *)v26 initWithServiceIdentifier:v28 localURI:v25 subscribedURIs:v16 queue:self->_realtimeEncryptionQueue];

  [v34 setEndpointSubscription:v29];
  v30 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v47 = v29;
    v48 = 2112;
    v49 = v11;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "setMembers: endpointSubscription %p forGroup: %@", buf, 0x16u);
  }

  if (self->_isInternal)
  {
    v31 = [(NSMutableDictionary *)self->_prekeyAckCountForGroup objectForKey:v11];

    if (!v31)
    {
      [(NSMutableDictionary *)self->_prekeyAckCountForGroup setObject:&off_100C3D420 forKeyedSubscript:v11];
      v32 = +[IDSFoundationLog RealTimeEncryptionController];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v47 = v11;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "ACK'd prekey count is reset to 0 forGroup: %@", buf, 0xCu);
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  if (![(IDSGroupEncryptionController *)self isTestRunning])
  {
    realtimeEncryptionQueue = self->_realtimeEncryptionQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1006CCBB4;
    block[3] = &unk_100BD7020;
    v38 = v29;
    v39 = self;
    v40 = v11;
    v41 = v36;
    dispatch_async(realtimeEncryptionQueue, block);
  }
}

- (void)didUpdateMembers:(id)a3 forGroup:(id)a4 sessionID:(id)a5 lightweightStatusDict:(id)a6 hasChangedStandardMembers:(BOOL)a7 newlyAddedMembers:(id)a8
{
  v13 = a4;
  v14 = a5;
  internal = self->_internal;
  v16 = a6;
  v17 = a3;
  v18 = [(IDSGroupEncryptionController2 *)internal groupForID:v13];
  v19 = [NSSet setWithArray:v17];

  [v18 updateMembersWithURIs:v19 lightweightStatusDict:v16];
  v20 = +[IDSFoundationLog RealTimeEncryptionController];
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (a7)
  {
    if (v21)
    {
      v22 = [v18 allMembers];
      v23 = 138412546;
      v24 = v22;
      v25 = 2112;
      v26 = @"YES";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "didUpdateMembers to %@, didChangeStandardMembers: %@", &v23, 0x16u);
    }

    [(IDSGroupEncryptionController *)self _updateRelevantEncryptedDataBlobForSession:v14];
    [(IDSGroupEncryptionController *)self updateServerDesiredKeyMaterialsForGroup:v13 sessionID:v14];
  }

  else
  {
    if (v21)
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "didUpdateMembers doesn't do anything because hasChangedStandardMembers=NO.", &v23, 2u);
    }
  }
}

- (void)_updateRelevantEncryptedDataBlobForSession:(id)a3
{
  v4 = a3;
  v5 = [(IDSGroupEncryptionController *)self sessionController];
  v6 = [v5 sessionWithUniqueID:v4];

  if (v6)
  {
    [v6 updateRelevantEncryptedDataBlob];
  }

  else
  {
    v7 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100932094(v4, v7);
    }
  }
}

- (BOOL)_isValidPushToken:(id)a3
{
  if (a3)
  {
    v3 = a3;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)didUpdateParticipants:(id)a3 ofType:(int64_t)a4 forGroup:(id)a5 sessionID:(id)a6
{
  internal = self->_internal;
  v9 = a3;
  v10 = [(IDSGroupEncryptionController2 *)internal groupForID:a5];
  [v10 updateParticipants:v9 lightweight:a4 == 1];
}

- (void)account:(id)a3 didUpdateRegisteredDevices:(id)a4
{
  v6 = a3;
  v7 = a4;
  v33 = self;
  v8 = [(IDSGroupEncryptionController *)self sessionController];
  v32 = [v8 groupSessionGroupIDs];

  if (([v6 isRegistered] & 1) == 0)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v9 = v32;
    v10 = [v9 countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v41;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v41 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v40 + 1) + 8 * i);
          v15 = im_primary_queue();
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1006CD600;
          block[3] = &unk_100BD6E40;
          block[4] = v33;
          block[5] = v14;
          dispatch_async(v15, block);
        }

        v11 = [v9 countByEnumeratingWithState:&v40 objects:v49 count:16];
      }

      while (v11);
    }
  }

  lastKnownAccountIDToPushTokens = v33->_lastKnownAccountIDToPushTokens;
  v17 = [v6 uniqueID];
  v31 = [(NSMutableDictionary *)lastKnownAccountIDToPushTokens objectForKeyedSubscript:v17];

  v18 = objc_alloc_init(NSMutableSet);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v7;
  v19 = [obj countByEnumeratingWithState:&v35 objects:v48 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v36;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = [*(*(&v35 + 1) + 8 * j) pushToken];
        v24 = [v6 service];
        v25 = [v24 identifier];
        v26 = [IDSPushToken pushTokenWithData:v23 withServiceLoggingHint:v25];
        [v18 addObject:v26];
      }

      v20 = [obj countByEnumeratingWithState:&v35 objects:v48 count:16];
    }

    while (v20);
  }

  os_unfair_lock_lock(&v33->_lock);
  v27 = v33->_lastKnownAccountIDToPushTokens;
  v28 = [v6 uniqueID];
  [(NSMutableDictionary *)v27 setObject:v18 forKeyedSubscript:v28];

  os_unfair_lock_unlock(&v33->_lock);
  v29 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [v6 uniqueID];
    *buf = 138412546;
    v45 = obj;
    v46 = 2112;
    v47 = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "didUpdateRegisteredDevices: %@ for account: %@", buf, 0x16u);
  }

  if (([v18 isEqualToSet:v31] & 1) == 0)
  {
    [(IDSGroupEncryptionController *)v33 rollNewKeysAfterResettingPrekeysForGroups:v32 withReason:1];
  }
}

- (void)ensureSessionForID:(id)a3 groupID:(id)a4
{
  v8 = a3;
  v6 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:a4];
  v7 = [v6 ensureSessionForID:v8];
}

- (void)cleanUpSessionForID:(id)a3 groupID:(id)a4
{
  internal = self->_internal;
  v6 = a3;
  v7 = [(IDSGroupEncryptionController2 *)internal groupForID:a4];
  [v7 cleanUpSessionForID:v6];
}

@end