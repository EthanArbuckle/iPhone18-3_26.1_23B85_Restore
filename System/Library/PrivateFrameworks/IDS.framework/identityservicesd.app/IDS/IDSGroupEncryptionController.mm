@interface IDSGroupEncryptionController
+ (IDSGroupEncryptionController)sharedInstance;
- (BOOL)_isUsingAccount:(id)account;
- (BOOL)_isValidPushToken:(id)token;
- (BOOL)_shouldEnforceRemoteTimeout;
- (IDSDSessionController)sessionController;
- (IDSGroupEncryptionController)init;
- (__SecKey)localPrivatePreKey;
- (__SecKey)localPublicPreKey;
- (__SecKey)previousLocalPrivatePreKey;
- (__SecKey)previousLocalPublicPreKey;
- (__SecKey)publicKeyForPushToken:(id)token;
- (double)_multiwayFTMessageSendTimeout;
- (id)_compactKeyMaterialMessage:(id)message isOutgoing:(BOOL)outgoing groupID:(id)d;
- (id)_generateMKMBlobForQRFromMessage:(id)message account:(id)account destination:(id)destination fromURI:(id)i;
- (id)_localDevicePushToken;
- (id)activeParticipantsForGroup:(id)group;
- (id)createRealTimeEncryptionFullIdentityForDevice:(id)device completionBlock:(id)block;
- (id)publicKeys;
- (id)receivedAndSetKeyMaterial:(id)material stableKeyMaterial:(id)keyMaterial forDevice:(id)device fromURI:(id)i groupID:(id)d sessionID:(id)iD fromSender:(BOOL)sender error:(id *)self0 forMKM:(BOOL)self1 forSKM:(BOOL)self2;
- (id)stableKeyMaterialForGroup:(id)group;
- (id)stableKeyMaterialForGroup:(id)group sessionID:(id)d;
- (int64_t)setLocalParticipantID:(unint64_t)d forGroupID:(id)iD sessionID:(id)sessionID;
- (unint64_t)encryptionSequenceNumberForGroupID:(id)d;
- (unint64_t)localParticipantIDForGroupID:(id)d;
- (unint64_t)participantIDForPushToken:(id)token inGroup:(id)group;
- (void)_sendMessage:(id)message toDestination:(id)destination forGroup:(id)group sessionID:(id)d command:(int64_t)command timeout:(double)timeout shouldExpire:(BOOL)expire useQR:(BOOL)self0 completion:(id)self1 completionBlock:(id)self2;
- (void)_updateRelevantEncryptedDataBlobForSession:(id)session;
- (void)account:(id)account didUpdateRegisteredDevices:(id)devices;
- (void)cleanUpSessionForID:(id)d groupID:(id)iD;
- (void)didReceiveEndpointsUpdate:(id)update forGroup:(id)group sessionID:(id)d;
- (void)didUpdateMembers:(id)members forGroup:(id)group sessionID:(id)d lightweightStatusDict:(id)dict hasChangedStandardMembers:(BOOL)standardMembers newlyAddedMembers:(id)addedMembers;
- (void)didUpdateParticipants:(id)participants ofType:(int64_t)type forGroup:(id)group sessionID:(id)d;
- (void)ensureSessionForID:(id)d groupID:(id)iD;
- (void)processIncomingKeyMaterialsRecoveryRequest:(id)request fromDevice:(id)device fromURI:(id)i groupID:(id)d sessionID:(id)iD serverDate:(id)date requireMKM:(BOOL)m requireSKM:(BOOL)self0;
- (void)processIncomingPrekeyAckForGroup:(id)group;
- (void)processedQRMKMPayloadFromData:(id)data forGroupID:(id)d account:(id)account remoteURI:(id)i localURI:(id)rI tokens:(id)tokens completionHandler:(id)handler;
- (void)reliablyRequestKeyMaterialForGroup:(id)group sessionID:(id)d;
- (void)removeAccountForGroup:(id)group;
- (void)removeActiveParticipant:(id)participant forGroup:(id)group;
- (void)removeLocalActiveParticipantForGroup:(id)group;
- (void)reportPrekeyAckStatus:(id)status;
- (void)requestKeyMaterialForGroup:(id)group sessionID:(id)d;
- (void)requestKeyMaterialForGroup:(id)group sessionID:(id)d toSpecificMembers:(id)members requireMKM:(BOOL)m requireSKM:(BOOL)kM;
- (void)resetDevicePrekey;
- (void)resetKeyMaterialCacheTimerIfNeeded:(id)needed;
- (void)resetKeysForGroup:(id)group shouldRemoveCurrentParticipants:(BOOL)participants;
- (void)resetMKMLocalSentStatus:(id)status;
- (void)rollNewKeysAfterResettingPrekeysForGroups:(id)groups withReason:(int64_t)reason;
- (void)sendKeyMaterialMessage:(id)message toDestination:(id)destination forGroup:(id)group sessionID:(id)d completion:(id)completion;
- (void)sendKeyMaterialRequestMessage:(id)message toDestination:(id)destination forGroup:(id)group sessionID:(id)d;
- (void)sendKeyMaterialsRecoveryRequestToGroup:(id)group requireMKM:(BOOL)m requireSKM:(BOOL)kM;
- (void)sendKeyMaterialsRecoveryRequestToParticipants:(id)participants groupID:(id)d sessionID:(id)iD requireMKM:(BOOL)m requireSKM:(BOOL)kM;
- (void)sendPreKeyMessage:(id)message toDestination:(id)destination forGroup:(id)group sessionID:(id)d;
- (void)sendPreKeyRequestMessage:(id)message toDestination:(id)destination forGroup:(id)group sessionID:(id)d;
- (void)setAccount:(id)account fromURI:(id)i forGroup:(id)group;
- (void)setMembers:(id)members forGroup:(id)group sessionID:(id)d lightweightStatusDict:(id)dict;
- (void)storeEncryptionSequenceNumber:(unint64_t)number groupID:(id)d;
- (void)unsubscribeEndpointsForGroup:(id)group;
- (void)updateLightweightMemberTypes:(id)types members:(id)members triggeredLocally:(BOOL)locally forGroup:(id)group sessionID:(id)d;
- (void)updateServerDesiredKeyMaterialsForGroup:(id)group sessionID:(id)d;
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
    sessionController = [(IDSGroupEncryptionController *)v2 sessionController];
    v23 = [(IDSGroupEncryptionController2 *)v21 initWithDelegate:v2 config:v19 sessionProvider:sessionController identityController:v20 pushHandler:v2];
    internal = v2->_internal;
    v2->_internal = v23;

    createP2PNegotiatorProvider = [(IDSGroupEncryptionController2 *)v2->_internal createP2PNegotiatorProvider];
    p2pNegotiatorProvider = v2->_p2pNegotiatorProvider;
    v2->_p2pNegotiatorProvider = createP2PNegotiatorProvider;
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
  pushToken = [v2 pushToken];
  v4 = [IDSPushToken pushTokenWithData:pushToken];

  return v4;
}

- (__SecKey)localPublicPreKey
{
  objcPublicIdentity = [(IDSGroupEncryptionController2 *)self->_internal objcPublicIdentity];
  publicIdentity = [objcPublicIdentity publicIdentity];

  return publicIdentity;
}

- (__SecKey)localPrivatePreKey
{
  objcIdentity = [(IDSGroupEncryptionController2 *)self->_internal objcIdentity];
  fullIdentity = [objcIdentity fullIdentity];

  return fullIdentity;
}

- (__SecKey)previousLocalPublicPreKey
{
  objcPreviousPublicIdentity = [(IDSGroupEncryptionController2 *)self->_internal objcPreviousPublicIdentity];
  publicIdentity = [objcPreviousPublicIdentity publicIdentity];

  return publicIdentity;
}

- (__SecKey)previousLocalPrivatePreKey
{
  objcPreviousIdentity = [(IDSGroupEncryptionController2 *)self->_internal objcPreviousIdentity];
  fullIdentity = [objcPreviousIdentity fullIdentity];

  return fullIdentity;
}

- (__SecKey)publicKeyForPushToken:(id)token
{
  v3 = [(IDSGroupEncryptionController2 *)self->_internal objcPublicIdentityForPushToken:token];
  publicIdentity = [v3 publicIdentity];

  return publicIdentity;
}

- (BOOL)_isUsingAccount:(id)account
{
  accountCopy = account;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  allValues = [(NSMutableDictionary *)self->_accountIDs allValues];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1006C6DE4;
  v8[3] = &unk_100BE5558;
  v6 = accountCopy;
  v9 = v6;
  v10 = &v11;
  [allValues enumerateObjectsUsingBlock:v8];

  LOBYTE(allValues) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return allValues;
}

- (void)setAccount:(id)account fromURI:(id)i forGroup:(id)group
{
  accountCopy = account;
  groupCopy = group;
  v10 = groupCopy;
  if (accountCopy && groupCopy)
  {
    iCopy = i;
    os_unfair_lock_lock(&self->_lock);
    if (![(IDSGroupEncryptionController *)self _isUsingAccount:accountCopy])
    {
      v12 = im_primary_queue();
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_1006C6FD8;
      v17 = &unk_100BD6E40;
      v18 = accountCopy;
      selfCopy = self;
      dispatch_async(v12, &v14);
    }

    [(NSMutableDictionary *)self->_accountIDs setObject:accountCopy forKeyedSubscript:v10, v14, v15, v16, v17];
    [(NSMutableDictionary *)self->_fromURIs setObject:iCopy forKeyedSubscript:v10];

    os_unfair_lock_unlock(&self->_lock);
    v13 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = accountCopy;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "setAccount: added the accountID %@ for group %@", buf, 0x16u);
    }
  }
}

- (void)removeAccountForGroup:(id)group
{
  groupCopy = group;
  if (groupCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = [(NSMutableDictionary *)self->_accountIDs objectForKeyedSubscript:groupCopy];
    [(NSMutableDictionary *)self->_accountIDs setObject:0 forKeyedSubscript:groupCopy];
    [(NSMutableDictionary *)self->_fromURIs setObject:0 forKeyedSubscript:groupCopy];
    if (v5 && ![(IDSGroupEncryptionController *)self _isUsingAccount:v5])
    {
      v6 = im_primary_queue();
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1006C7390;
      v8[3] = &unk_100BD6E40;
      v9 = v5;
      selfCopy = self;
      dispatch_async(v6, v8);
    }

    os_unfair_lock_unlock(&self->_lock);
    v7 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = groupCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "removeAccountForGroup: removed the account for group %@", buf, 0xCu);
    }
  }
}

- (void)requestKeyMaterialForGroup:(id)group sessionID:(id)d toSpecificMembers:(id)members requireMKM:(BOOL)m requireSKM:(BOOL)kM
{
  v7 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:group, d, members, m, kM];
  [v7 updateDesiredMaterials];
}

- (void)requestKeyMaterialForGroup:(id)group sessionID:(id)d
{
  v4 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:group, d];
  [v4 updateDesiredMaterials];
}

- (void)reliablyRequestKeyMaterialForGroup:(id)group sessionID:(id)d
{
  v4 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:group, d];
  [v4 updateDesiredMaterials];
}

- (id)createRealTimeEncryptionFullIdentityForDevice:(id)device completionBlock:(id)block
{
  blockCopy = block;
  internal = self->_internal;
  deviceCopy = device;
  identityController = [(IDSGroupEncryptionController2 *)internal identityController];
  v10 = [identityController ensurePublicIdentityForDevice:deviceCopy];

  v11 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006C7670;
  block[3] = &unk_100BD7270;
  v16 = blockCopy;
  v12 = blockCopy;
  v13 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
  dispatch_async(v11, v13);

  return v10;
}

- (void)processIncomingPrekeyAckForGroup:(id)group
{
  groupCopy = group;
  v5 = [(NSMutableDictionary *)self->_prekeyAckCountForGroup objectForKeyedSubscript:groupCopy];
  v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 intValue] + 1);
  [(NSMutableDictionary *)self->_prekeyAckCountForGroup setObject:v6 forKeyedSubscript:groupCopy];

  v7 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(NSMutableDictionary *)self->_prekeyAckCountForGroup objectForKeyedSubscript:groupCopy];
    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = groupCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Current ACK'd number of prekey: %@ for group: %@", &v9, 0x16u);
  }
}

- (void)reportPrekeyAckStatus:(id)status
{
  statusCopy = status;
  v5 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NSMutableDictionary *)self->_prekeyAckCountForGroup objectForKeyedSubscript:statusCopy];
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = statusCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Report the prekey ACK'd (final count: %@) result for group: %@", &v7, 0x16u);
  }

  [(NSMutableDictionary *)self->_prekeyAckCountForGroup removeObjectForKey:statusCopy];
}

- (void)resetKeyMaterialCacheTimerIfNeeded:(id)needed
{
  v3 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:needed];
  [v3 cancelKMCacheReset];
}

- (void)storeEncryptionSequenceNumber:(unint64_t)number groupID:(id)d
{
  dCopy = d;
  v7 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:dCopy];
  encryptionSequenceNumber = [v7 encryptionSequenceNumber];
  v9 = +[IDSFoundationLog RealTimeEncryptionController];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (encryptionSequenceNumber >= number)
  {
    if (v10)
    {
      v11 = 134218498;
      numberCopy2 = number;
      v13 = 2048;
      v14 = encryptionSequenceNumber;
      v15 = 2112;
      v16 = dCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ignoring encryption sequence number %llu (old: %llu) for groupID %@ (Client -> *IDSD)", &v11, 0x20u);
    }
  }

  else
  {
    if (v10)
    {
      v11 = 134218498;
      numberCopy2 = number;
      v13 = 2048;
      v14 = encryptionSequenceNumber;
      v15 = 2112;
      v16 = dCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "storing encryption sequence number %llu (old: %llu) for groupID %@ (Client -> *IDSD)", &v11, 0x20u);
    }

    [v7 setEncryptionSequenceNumber:number];
  }
}

- (unint64_t)encryptionSequenceNumberForGroupID:(id)d
{
  dCopy = d;
  v5 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:dCopy];
  encryptionSequenceNumber = [v5 encryptionSequenceNumber];
  v7 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    v10 = encryptionSequenceNumber;
    v11 = 2112;
    v12 = dCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "returning stored encryption sequence number %llu for groupID %@ (Client <- *IDSD)", &v9, 0x16u);
  }

  return encryptionSequenceNumber;
}

- (id)publicKeys
{
  publicKeys = [(IDSGroupEncryptionController2 *)self->_internal publicKeys];
  v3 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = publicKeys;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "publicKeys: %@", &v5, 0xCu);
  }

  return publicKeys;
}

- (int64_t)setLocalParticipantID:(unint64_t)d forGroupID:(id)iD sessionID:(id)sessionID
{
  if (!d)
  {
    return 0;
  }

  internal = self->_internal;
  iDCopy = iD;
  v9 = [(IDSGroupEncryptionController2 *)internal groupForID:iDCopy];
  localParticipantID = [v9 localParticipantID];

  v11 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:iDCopy];

  [v11 setLocalParticipantID:d];
  if (localParticipantID)
  {
    return 2 * (localParticipantID != d);
  }

  else
  {
    return 1;
  }
}

- (unint64_t)localParticipantIDForGroupID:(id)d
{
  v3 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:d];
  localParticipantID = [v3 localParticipantID];

  return localParticipantID;
}

- (void)sendKeyMaterialsRecoveryRequestToGroup:(id)group requireMKM:(BOOL)m requireSKM:(BOOL)kM
{
  kMCopy = kM;
  mCopy = m;
  groupCopy = group;
  sessionController = [(IDSGroupEncryptionController *)self sessionController];
  v10 = [sessionController sessionWithGroupID:groupCopy];

  if (v10)
  {
    v19 = groupCopy;
    v11 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:groupCopy];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    participants = [v11 participants];
    v13 = [participants countByEnumeratingWithState:&v20 objects:v25 count:16];
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
            objc_enumerationMutation(participants);
          }

          v17 = *(*(&v20 + 1) + 8 * v16);
          uniqueID = [v10 uniqueID];
          [v17 recoverKeyMaterialForSessionID:uniqueID mkm:mCopy skm:kMCopy];

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [participants countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v14);
    }

    groupCopy = v19;
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

- (void)sendKeyMaterialsRecoveryRequestToParticipants:(id)participants groupID:(id)d sessionID:(id)iD requireMKM:(BOOL)m requireSKM:(BOOL)kM
{
  kMCopy = kM;
  mCopy = m;
  participantsCopy = participants;
  iDCopy = iD;
  v13 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:d];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = participantsCopy;
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
          [v21 recoverKeyMaterialForSessionID:iDCopy mkm:mCopy skm:kMCopy];
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

- (void)sendKeyMaterialRequestMessage:(id)message toDestination:(id)destination forGroup:(id)group sessionID:(id)d
{
  dCopy = d;
  groupCopy = group;
  destinationCopy = destination;
  messageCopy = message;
  [(IDSGroupEncryptionController *)self _multiwayFTMessageSendTimeout];
  LOBYTE(v13) = 0;
  [(IDSGroupEncryptionController *)self _sendMessage:messageCopy toDestination:destinationCopy forGroup:groupCopy sessionID:dCopy command:211 timeout:1 shouldExpire:v13 useQR:0 completion:0 completionBlock:?];
}

- (void)processIncomingKeyMaterialsRecoveryRequest:(id)request fromDevice:(id)device fromURI:(id)i groupID:(id)d sessionID:(id)iD serverDate:(id)date requireMKM:(BOOL)m requireSKM:(BOOL)self0
{
  requestCopy = request;
  deviceCopy = device;
  iCopy = i;
  dCopy = d;
  iDCopy = iD;
  dateCopy = date;
  sessionController = [(IDSGroupEncryptionController *)self sessionController];
  v23 = [sessionController sessionWithUniqueID:iDCopy];

  selfCopy = self;
  sessionController2 = [(IDSGroupEncryptionController *)self sessionController];
  v25 = [sessionController2 sessionWithGroupID:dCopy];

  v67 = [iCopy URIByAddingOptionalPushToken:deviceCopy];
  if ([v23 destinationsContainFromURI:?] && (objc_msgSend(v25, "destinationsContainFromURI:", v67) & 1) != 0)
  {
    v58 = v25;
    v63 = v23;
    v64 = dateCopy;
    v60 = iDCopy;
    v61 = dCopy;
    v62 = requestCopy;
    v59 = [(IDSGroupEncryptionController2 *)selfCopy->_internal groupForID:dCopy];
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
          pushToken = [v30 pushToken];
          v32 = [pushToken isEqual:deviceCopy];

          if (v32)
          {
            v33 = [IDSURI alloc];
            allocatedURI = [v30 allocatedURI];
            v35 = [v33 initWithPrefixedURI:allocatedURI];
            v36 = [iCopy isEqual:v35];

            if (v36)
            {
              v45 = v30;

              requestCopy = v62;
              v57 = [v62 objectForKeyedSubscript:IDSDSessionMessageRealTimeEncryptionPublicKey];
              v56 = [v62 _numberForKey:IDSDSessionMessageRealTimeEncryptionWrapModeKey];
              v46 = +[IDSFoundationLog RealTimeEncryptionController];
              iDCopy = v60;
              dCopy = v61;
              dateCopy = v64;
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138413571;
                v74 = v61;
                v75 = 2112;
                v76 = v60;
                v77 = 2112;
                v78 = v64;
                v79 = 2112;
                v80 = deviceCopy;
                v81 = 2112;
                v82 = iCopy;
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

              -[IDSGroupEncryptionController setRealTimeEncryptionPublicKey:forDevice:fromURI:groupID:sessionID:serverDate:wrapMode:](selfCopy, "setRealTimeEncryptionPublicKey:forDevice:fromURI:groupID:sessionID:serverDate:wrapMode:", v57, deviceCopy, iCopy, v61, v60, v64, [v56 integerValue]);
              if (v63)
              {
                prefixedURI = [iCopy prefixedURI];
                rawToken = [deviceCopy rawToken];
                v66 = [IDSDestination destinationWithAlias:prefixedURI pushToken:rawToken];

                v23 = v63;
                v51 = [(IDSGroupEncryptionController2 *)selfCopy->_internal groupForID:v61];
                v52 = [v51 ensureSessionForID:v60];
                [v52 setKeyMaterialIsNeededForParticipant:v45 forMKM:m forSKM:kM];

                dateCopy = v64;
                [(IDSGroupEncryptionController *)selfCopy sendPublicKeyToDestination:v66 group:v61 sessionID:v60];
                rawToken2 = [deviceCopy rawToken];
                [v63 reportPreKeyReceivedOverPushFromToken:rawToken2];

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
              allocatedURI2 = [v30 allocatedURI];
              v40 = [v38 initWithPrefixedURI:allocatedURI2];
              *buf = 138412546;
              v74 = iCopy;
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
    dCopy = v61;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v74 = v61;
      v75 = 2112;
      v76 = deviceCopy;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "processIncomingKeyMaterialsRecoveryRequest: We'll drop this key recovery request for group [%@] since deviceToken [%@] is not in the active participant list!", buf, 0x16u);
    }

    v23 = v63;
    v42 = v67;
    [v63 rejectedKeyRecoveryRequestFromURI:v67 reason:2];
    requestCopy = v62;
    iDCopy = v60;
    dateCopy = v64;
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
      v74 = dCopy;
      v75 = 2112;
      v76 = v67;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "processIncomingKeyMaterialsRecoveryRequest: We'll drop this prekey recovery request for group %@ since %@ is not in this group!", buf, 0x16u);
    }

    v42 = v67;
    [v23 rejectedKeyRecoveryRequestFromURI:v67 reason:1];
  }
}

- (id)receivedAndSetKeyMaterial:(id)material stableKeyMaterial:(id)keyMaterial forDevice:(id)device fromURI:(id)i groupID:(id)d sessionID:(id)iD fromSender:(BOOL)sender error:(id *)self0 forMKM:(BOOL)self1 forSKM:(BOOL)self2
{
  materialCopy = material;
  keyMaterialCopy = keyMaterial;
  deviceCopy = device;
  iCopy = i;
  dCopy = d;
  iDCopy = iD;
  if (materialCopy)
  {
    v24 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:dCopy];
    v25 = [v24 receiveMKMWithKeyMaterialDictionary:materialCopy fromPushToken:deviceCopy fromURI:iCopy sessionID:iDCopy isFromSender:sender];

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

    if (keyMaterialCopy)
    {
      goto LABEL_9;
    }
  }

  else
  {
    Mutable = 0;
    if (keyMaterialCopy)
    {
LABEL_9:
      v27 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:dCopy];
      v28 = [v27 receiveSKMWithKeyMaterialDictionary:keyMaterialCopy fromPushToken:deviceCopy fromURI:iCopy sessionID:iDCopy isFromSender:sender];
    }
  }

  return Mutable;
}

- (id)stableKeyMaterialForGroup:(id)group
{
  v3 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:group];
  stableKeyMaterial = [v3 stableKeyMaterial];

  return stableKeyMaterial;
}

- (void)resetMKMLocalSentStatus:(id)status
{
  v3 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:status];
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
    bOOLValue = [v3 BOOLValue];
    v5 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (bOOLValue)
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
    LOBYTE(bOOLValue) = 1;
  }

  return bOOLValue;
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
  identityController = [(IDSGroupEncryptionController2 *)self->_internal identityController];
  [identityController resetPreKey];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)activeParticipantsForGroup:(id)group
{
  if (group)
  {
    groupCopy = group;
    os_unfair_lock_lock(&self->_lock);
    v5 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:groupCopy];

    participantPushTokens = [v5 participantPushTokens];
    allObjects = [participantPushTokens allObjects];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
}

- (void)removeLocalActiveParticipantForGroup:(id)group
{
  groupCopy = group;
  _localDevicePushToken = [(IDSGroupEncryptionController *)self _localDevicePushToken];
  [(IDSGroupEncryptionController *)self removeActiveParticipant:_localDevicePushToken forGroup:groupCopy];
}

- (void)removeActiveParticipant:(id)participant forGroup:(id)group
{
  if (participant && group)
  {
    groupCopy = group;
    participantCopy = participant;
    os_unfair_lock_lock(&self->_lock);
    v8 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:groupCopy];

    [v8 removeParticipantForToken:participantCopy];
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)resetKeysForGroup:(id)group shouldRemoveCurrentParticipants:(BOOL)participants
{
  participantsCopy = participants;
  groupCopy = group;
  if (groupCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    v7 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:groupCopy];
    v8 = v7;
    if (participantsCopy)
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
      if (participantsCopy)
      {
        v10 = @"YES";
      }

      v11 = 138412546;
      v12 = groupCopy;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "resetKeysForGroup: %@, shouldRemoveCurrentParticipants: %@", &v11, 0x16u);
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)unsubscribeEndpointsForGroup:(id)group
{
  groupCopy = group;
  if (groupCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:groupCopy];
    [v5 removeAllMembers];
    [v5 removeAllParticipants];
    [(NSMutableDictionary *)self->_lastKnownGroupIDToPushTokens setObject:0 forKeyedSubscript:groupCopy];
    v6 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = groupCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "unsubscribeEndpointsForGroup: %@", &v7, 0xCu);
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (unint64_t)participantIDForPushToken:(id)token inGroup:(id)group
{
  internal = self->_internal;
  tokenCopy = token;
  v7 = [(IDSGroupEncryptionController2 *)internal groupForID:group];
  v8 = [v7 participantForToken:tokenCopy];

  participantID = [v8 participantID];
  return participantID;
}

- (id)stableKeyMaterialForGroup:(id)group sessionID:(id)d
{
  internal = self->_internal;
  dCopy = d;
  v7 = [(IDSGroupEncryptionController2 *)internal groupForID:group];
  v8 = [v7 ensureSessionForID:dCopy];

  skmController = [v8 skmController];
  [skmController ensureKey];

  skmController2 = [v8 skmController];
  currentObjcMaterial = [skmController2 currentObjcMaterial];

  return currentObjcMaterial;
}

- (void)sendKeyMaterialMessage:(id)message toDestination:(id)destination forGroup:(id)group sessionID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  groupCopy = group;
  destinationCopy = destination;
  messageCopy = message;
  [(IDSGroupEncryptionController *)self _multiwayFTMessageSendTimeout];
  v18 = v17;
  shouldSendMKMOverQR = self->_shouldSendMKMOverQR;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1006C9454;
  v22[3] = &unk_100BE55C0;
  v23 = completionCopy;
  v20 = completionCopy;
  LOBYTE(v21) = shouldSendMKMOverQR;
  [(IDSGroupEncryptionController *)self _sendMessage:messageCopy toDestination:destinationCopy forGroup:groupCopy sessionID:dCopy command:211 timeout:1 shouldExpire:v18 useQR:v21 completion:&stru_100BE5598 completionBlock:v22];
}

- (void)_sendMessage:(id)message toDestination:(id)destination forGroup:(id)group sessionID:(id)d command:(int64_t)command timeout:(double)timeout shouldExpire:(BOOL)expire useQR:(BOOL)self0 completion:(id)self1 completionBlock:(id)self2
{
  expireCopy = expire;
  messageCopy = message;
  destinationCopy = destination;
  groupCopy = group;
  dCopy = d;
  completionCopy = completion;
  blockCopy = block;
  v21 = +[IDSDAccountController sharedInstance];
  v22 = [(NSMutableDictionary *)self->_accountIDs objectForKeyedSubscript:groupCopy];
  v23 = [v21 accountWithUniqueID:v22];

  v24 = [(NSMutableDictionary *)self->_fromURIs objectForKeyedSubscript:groupCopy];
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
    if (command != 211)
    {
      LOBYTE(v26) = 1;
    }

    if (v26)
    {
      sessionController = [(IDSGroupEncryptionController *)self sessionController];
      v27 = [sessionController sessionWithUniqueID:dCopy];

      if (command == 211 && r)
      {
        v30 = +[IDSFoundationLog RealTimeEncryptionController];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "sendMessage: calling _generateMKMBlobForQRFromMessage", buf, 2u);
        }

        v31 = [(IDSGroupEncryptionController *)self _generateMKMBlobForQRFromMessage:messageCopy account:v23 destination:destinationCopy fromURI:v25];
        if (v31)
        {
          v67[0] = _NSConcreteStackBlock;
          v67[1] = 3221225472;
          v67[2] = sub_1006C9D74;
          v67[3] = &unk_100BE55E8;
          v72 = v82;
          v73 = v74;
          v68 = groupCopy;
          v69 = dCopy;
          v70 = completionCopy;
          v71 = blockCopy;
          [v27 sendKeyMaterialMessageDataOverQR:v31 toDestination:destinationCopy completionBlock:v67];

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
      unprefixedURI = [v25 unprefixedURI];
      [v33 setFromID:unprefixedURI];

      [v33 setMessage:messageCopy];
      [v33 setEncryptPayload:1];
      [v33 setPriority:300];
      [v33 setDestinations:destinationCopy];
      v35 = [NSNumber numberWithInteger:command];
      [v33 setCommand:v35];

      [v33 setIdentifier:v52];
      [v33 setAlwaysSkipSelf:1];
      v36 = IDSGetUUIDData();
      [v33 setMessageUUID:v36];

      [v33 setTimeout:timeout];
      [v33 setIgnoreMaxRetryCount:1];
      [v33 setWantsResponse:1];
      if (expireCopy)
      {
        [v33 setEnforceRemoteTimeouts:{-[IDSGroupEncryptionController _shouldEnforceRemoteTimeout](self, "_shouldEnforceRemoteTimeout")}];
      }

      requiredLackOfCapabilities = [v27 requiredLackOfCapabilities];
      v38 = [requiredLackOfCapabilities count];

      if (v38)
      {
        v39 = +[IDSFoundationLog RealTimeEncryptionController];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          requiredLackOfCapabilities2 = [v27 requiredLackOfCapabilities];
          *buf = 138412290;
          v77 = requiredLackOfCapabilities2;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Group session encryption message requires lack of properties {requiredLackOfCapabilities: %@}", buf, 0xCu);
        }

        requiredLackOfCapabilities3 = [v27 requiredLackOfCapabilities];
        [v33 setRequireLackOfRegistrationProperties:requiredLackOfCapabilities3];
      }

      requiredCapabilities = [v27 requiredCapabilities];
      v43 = [requiredCapabilities count];

      if (v43)
      {
        v44 = +[IDSFoundationLog RealTimeEncryptionController];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          requiredCapabilities2 = [v27 requiredCapabilities];
          *buf = 138412290;
          v77 = requiredCapabilities2;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Group session encryption message requires properties {requiredCapabilities: %@}", buf, 0xCu);
        }

        requiredCapabilities3 = [v27 requiredCapabilities];
        [v33 setRequireAllRegistrationProperties:requiredCapabilities3];
      }

      v47 = +[IDSFoundationLog RealTimeEncryptionController];
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        [v33 timeout];
        *buf = 138412802;
        v77 = v52;
        v78 = 2048;
        commandCopy = command;
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
      commandCopy2 = command;
      v60 = groupCopy;
      v61 = dCopy;
      v62 = completionCopy;
      v63 = blockCopy;
      [v23 sendMessageWithSendParameters:v33 willSendBlock:0 completionBlock:v58];
      v50 = [NSNumber numberWithInteger:command];
      messageCopy = [NSString stringWithFormat:@"sendMessage: Sent messageID %@ to the destination %@ command %@ (message: %@)", v49, destinationCopy, v50, messageCopy];

      v57 = messageCopy;
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
      v83 = groupCopy;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "sendMessage: account: %@ fromID: %@ - failed to get the account forGroup: %@", v82, 0x20u);
    }
  }
}

- (void)sendPreKeyMessage:(id)message toDestination:(id)destination forGroup:(id)group sessionID:(id)d
{
  messageCopy = message;
  destinationCopy = destination;
  groupCopy = group;
  dCopy = d;
  v14 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006CA374;
  block[3] = &unk_100BD9FC0;
  block[4] = self;
  v20 = messageCopy;
  v21 = destinationCopy;
  v22 = groupCopy;
  v23 = dCopy;
  v15 = dCopy;
  v16 = groupCopy;
  v17 = destinationCopy;
  v18 = messageCopy;
  dispatch_async(v14, block);
}

- (void)sendPreKeyRequestMessage:(id)message toDestination:(id)destination forGroup:(id)group sessionID:(id)d
{
  messageCopy = message;
  destinationCopy = destination;
  groupCopy = group;
  dCopy = d;
  v14 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006CA504;
  block[3] = &unk_100BD9FC0;
  block[4] = self;
  v20 = messageCopy;
  v21 = destinationCopy;
  v22 = groupCopy;
  v23 = dCopy;
  v15 = dCopy;
  v16 = groupCopy;
  v17 = destinationCopy;
  v18 = messageCopy;
  dispatch_async(v14, block);
}

- (void)processedQRMKMPayloadFromData:(id)data forGroupID:(id)d account:(id)account remoteURI:(id)i localURI:(id)rI tokens:(id)tokens completionHandler:(id)handler
{
  dataCopy = data;
  dCopy = d;
  accountCopy = account;
  iCopy = i;
  rICopy = rI;
  tokensCopy = tokens;
  handlerCopy = handler;
  v18 = +[NSMutableSet set];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v19 = tokensCopy;
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
          __imHexString = [v24 __imHexString];
          [v18 addObject:__imHexString];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v70 objects:v80 count:16];
    }

    while (v21);
  }

  v26 = +[IDSPeerIDManager sharedInstance];
  v79 = iCopy;
  v27 = [NSArray arrayWithObjects:&v79 count:1];
  v58 = accountCopy;
  service = [accountCopy service];
  identifier = [service identifier];
  v30 = [v26 endpointsForURIs:v27 service:identifier fromURI:rICopy];

  v55 = v30;
  v31 = [v30 objectForKey:iCopy];
  v56 = rICopy;
  v57 = iCopy;
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
        v39 = [v38 publicKeyDecryptData:dataCopy fromEndpoint:v37 pkType:1 priority:300 error:&v63];
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
          v44 = dCopy;
          v50 = [(IDSGroupEncryptionController *)self _compactKeyMaterialMessage:v49 isOutgoing:0 groupID:dCopy];
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

          v47 = handlerCopy;
          if (handlerCopy)
          {
            pushToken = [v48 pushToken];
            (*(handlerCopy + 2))(handlerCopy, v50, pushToken);

            v47 = handlerCopy;
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
  v44 = dCopy;
  v46 = v56;
  v45 = v57;
  v47 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  v39 = 0;
  v48 = 0;
LABEL_37:
}

- (id)_generateMKMBlobForQRFromMessage:(id)message account:(id)account destination:(id)destination fromURI:(id)i
{
  messageCopy = message;
  accountCopy = account;
  destinationCopy = destination;
  iCopy = i;
  destinationURIs = [destinationCopy destinationURIs];
  v15 = [destinationURIs count];

  if (v15 < 2)
  {
    destinationURIs2 = [destinationCopy destinationURIs];
    anyObject = [destinationURIs2 anyObject];

    v55 = 0;
    v19 = [anyObject _stripPotentialTokenURIWithToken:&v55];
    v20 = v55;
    if (v20)
    {
      selfCopy = self;
      v48 = anyObject;
      v49 = destinationCopy;
      v52 = messageCopy;
      v21 = +[IDSPeerIDManager sharedInstance];
      service = [accountCopy service];
      [service identifier];
      v24 = v23 = v19;
      v46 = v20;
      v25 = [IDSPushToken pushTokenWithData:v20 withServiceLoggingHint:v24];
      service2 = [accountCopy service];
      identifier = [service2 identifier];
      v47 = v23;
      v28 = [IDSURI URIWithPrefixedURI:v23 withServiceLoggingHint:identifier];
      v51 = accountCopy;
      service3 = [accountCopy service];
      identifier2 = [service3 identifier];
      v50 = iCopy;
      v31 = [v21 endpointForPushToken:v25 URI:v28 service:identifier2 fromURI:iCopy];

      v32 = v31;
      if (v31)
      {
        messageCopy = v52;
        v33 = [(IDSGroupEncryptionController *)selfCopy _compactKeyMaterialMessage:v52 isOutgoing:1 groupID:0];
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
          destinationCopy = v49;
          iCopy = v50;
          anyObject = v48;
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
          destinationCopy = v49;
          iCopy = v50;
          anyObject = v48;
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
        messageCopy = v52;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v20 = v46;
          v19 = v47;
          v57 = v47;
          v58 = 2112;
          v59 = v46;
          v60 = 2112;
          iCopy = v50;
          v61 = v50;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "No endpoint found to target, not triggering a query -- returning nil {destinationURIString: %@, tokenFromURL: %@, fromURI: %@}", buf, 0x20u);
          v17 = 0;
          anyObject = v48;
          destinationCopy = v49;
        }

        else
        {
          v17 = 0;
          destinationCopy = v49;
          iCopy = v50;
          v19 = v47;
          anyObject = v48;
          v20 = v46;
        }
      }

      accountCopy = v51;
    }

    else
    {
      v32 = +[IDSFoundationLog RealTimeEncryptionController];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v57 = anyObject;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Unable to generate a QR MKM payload to a non-specific URI -- returning nil {fullDestinationURIString: %@}", buf, 0xCu);
      }

      v17 = 0;
    }
  }

  else
  {
    anyObject = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(anyObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v57 = destinationCopy;
      _os_log_impl(&_mh_execute_header, anyObject, OS_LOG_TYPE_DEFAULT, "Unable to generate a QR MKM payload to more than 1 destination -- returning nil {destination: %@}", buf, 0xCu);
    }

    v17 = 0;
  }

  return v17;
}

- (id)_compactKeyMaterialMessage:(id)message isOutgoing:(BOOL)outgoing groupID:(id)d
{
  outgoingCopy = outgoing;
  messageCopy = message;
  dCopy = d;
  v9 = objc_autoreleasePoolPush();
  if (outgoingCopy)
  {
    v10 = &off_100C3DDC0;
  }

  else
  {
    v10 = &off_100C3DDD8;
  }

  if (outgoingCopy)
  {
    v11 = &off_100C3DDD8;
  }

  else
  {
    v11 = &off_100C3DDC0;
  }

  v12 = [messageCopy mutableCopy];
  [v12 removeObjectForKey:IDSDSessionMessageRealTimeEncryptionKeyAllValidKeyMaterialsKey];
  [v12 removeObjectForKey:IDSDSessionMessageRealTimeEncryptionKeyAllValidKeyMaterialsURIsKey];
  [v12 removeObjectForKey:IDSFanoutMessageGroupIDKey];
  [v12 removeObjectForKey:IDSDSessionMessageRealTimeEncryptionStableKeyMaterialKey];
  if (dCopy)
  {
    v13 = [v11 objectAtIndexedSubscript:0];
    [v12 setObject:dCopy forKeyedSubscript:v13];
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
    v41 = dCopy;
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

    v42 = messageCopy;
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

    dCopy = v41;
    messageCopy = v42;
    v9 = v40;
  }

  objc_autoreleasePoolPop(v9);

  return v12;
}

- (void)updateServerDesiredKeyMaterialsForGroup:(id)group sessionID:(id)d
{
  v4 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:group, d];
  [v4 updateDesiredMaterials];
}

- (void)rollNewKeysAfterResettingPrekeysForGroups:(id)groups withReason:(int64_t)reason
{
  groupsCopy = groups;
  v6 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = groupsCopy;
    v28 = 2048;
    reasonCopy2 = reason;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "rollNewKeysAfterResettingPrekeysForGroups: %@ reason: %ld", buf, 0x16u);
  }

  v7 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = groupsCopy;
    v28 = 2048;
    reasonCopy2 = reason;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "rollNewKeysAfterResettingPrekeysForGroups: %@ reason: %ld", buf, 0x16u);
  }

  identityForDevice = [(IDSGroupEncryptionController *)self identityForDevice];
  pushToken = [identityForDevice pushToken];
  v10 = [pushToken copy];

  [(IDSGroupEncryptionController *)self resetDevicePrekey];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = groupsCopy;
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

- (void)didReceiveEndpointsUpdate:(id)update forGroup:(id)group sessionID:(id)d
{
  updateCopy = update;
  groupCopy = group;
  dCopy = d;
  v11 = +[NSMutableSet set];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v12 = updateCopy;
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

        pushTokenObject = [*(*(&v40 + 1) + 8 * v16) pushTokenObject];
        [v11 addObject:pushTokenObject];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v14);
  }

  os_unfair_lock_lock(&self->_lock);
  v18 = [(NSMutableDictionary *)self->_lastKnownGroupIDToPushTokens objectForKeyedSubscript:groupCopy];
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
  [(NSMutableDictionary *)self->_lastKnownGroupIDToPushTokens setObject:v11 forKeyedSubscript:groupCopy];
  os_unfair_lock_unlock(&self->_lock);
  if ([v18 isEqualToSet:v11])
  {
    v22 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v45 = v12;
      v46 = 2112;
      v47 = groupCopy;
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
        v47 = groupCopy;
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
    v32 = groupCopy;
    v33 = v18;
    selfCopy = self;
    v28 = [v26 initWithQueue:v27 interval:2 repeats:0 handlerBlock:v30];
    v29 = self->_endpointUpdateTimer;
    self->_endpointUpdateTimer = v28;

    v22 = v31;
  }
}

- (void)updateLightweightMemberTypes:(id)types members:(id)members triggeredLocally:(BOOL)locally forGroup:(id)group sessionID:(id)d
{
  typesCopy = types;
  membersCopy = members;
  groupCopy = group;
  os_unfair_lock_lock(&self->_lock);
  v14 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:groupCopy];
  v15 = &IDSRegistrationControlErrorDomain_ptr;
  if (locally)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v16 = typesCopy;
    v17 = [v16 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v17)
    {
      v18 = v17;
      v36 = groupCopy;
      v37 = typesCopy;
      v38 = membersCopy;
      selfCopy = self;
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
          bOOLValue = [v22 BOOLValue];
          v24 = [IDSURI URIWithPrefixedURI:v21];
          v25 = [v14 memberForURI:v24];
          [v25 setIsLightweight:bOOLValue];
        }

        v18 = [v16 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v18);
      typesCopy = v37;
      membersCopy = v38;
      self = selfCopy;
      groupCopy = v36;
      v15 = &IDSRegistrationControlErrorDomain_ptr;
    }
  }

  else
  {
    selfCopy2 = self;
    v16 = +[NSMutableSet set];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v26 = membersCopy;
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

    [v14 updateMembersWithURIs:v16 lightweightStatusDict:typesCopy];
    v15 = &IDSRegistrationControlErrorDomain_ptr;
    v32 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      memberURIs = [v14 memberURIs];
      *buf = 138412546;
      v51 = memberURIs;
      v52 = 2112;
      v53 = groupCopy;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "updateLightweightMemberTypes: membersForGroup: %@ for group: %@", buf, 0x16u);
    }

    self = selfCopy2;
  }

  realTimeEncryptionController = [v15[240] RealTimeEncryptionController];
  if (os_log_type_enabled(realTimeEncryptionController, OS_LOG_TYPE_DEFAULT))
  {
    allMembers = [v14 allMembers];
    *buf = 138412546;
    v51 = allMembers;
    v52 = 2112;
    v53 = groupCopy;
    _os_log_impl(&_mh_execute_header, realTimeEncryptionController, OS_LOG_TYPE_DEFAULT, "updateLightweightMemberTypes: members: %@ for group: %@", buf, 0x16u);
  }

  [v14 updateDesiredMaterials];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)setMembers:(id)members forGroup:(id)group sessionID:(id)d lightweightStatusDict:(id)dict
{
  membersCopy = members;
  groupCopy = group;
  dCopy = d;
  dictCopy = dict;
  os_unfair_lock_lock(&self->_lock);
  v13 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:groupCopy];
  v14 = [NSSet setWithArray:membersCopy];
  v35 = dictCopy;
  [v13 updateMembersWithURIs:v14 lightweightStatusDict:dictCopy];

  v15 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_100931FE4(v13, groupCopy, v15);
  }

  v34 = v13;

  v16 = +[NSMutableArray array];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v17 = membersCopy;
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
  v23 = [(NSMutableDictionary *)self->_accountIDs objectForKeyedSubscript:groupCopy];
  v24 = [v22 accountWithUniqueID:v23];

  v25 = [(NSMutableDictionary *)self->_fromURIs objectForKeyedSubscript:groupCopy];
  v26 = [IDSEndpointSubscription alloc];
  service = [v24 service];
  identifier = [service identifier];
  v29 = [(IDSEndpointSubscription *)v26 initWithServiceIdentifier:identifier localURI:v25 subscribedURIs:v16 queue:self->_realtimeEncryptionQueue];

  [v34 setEndpointSubscription:v29];
  v30 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v47 = v29;
    v48 = 2112;
    v49 = groupCopy;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "setMembers: endpointSubscription %p forGroup: %@", buf, 0x16u);
  }

  if (self->_isInternal)
  {
    v31 = [(NSMutableDictionary *)self->_prekeyAckCountForGroup objectForKey:groupCopy];

    if (!v31)
    {
      [(NSMutableDictionary *)self->_prekeyAckCountForGroup setObject:&off_100C3D420 forKeyedSubscript:groupCopy];
      v32 = +[IDSFoundationLog RealTimeEncryptionController];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v47 = groupCopy;
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
    selfCopy = self;
    v40 = groupCopy;
    v41 = dCopy;
    dispatch_async(realtimeEncryptionQueue, block);
  }
}

- (void)didUpdateMembers:(id)members forGroup:(id)group sessionID:(id)d lightweightStatusDict:(id)dict hasChangedStandardMembers:(BOOL)standardMembers newlyAddedMembers:(id)addedMembers
{
  groupCopy = group;
  dCopy = d;
  internal = self->_internal;
  dictCopy = dict;
  membersCopy = members;
  v18 = [(IDSGroupEncryptionController2 *)internal groupForID:groupCopy];
  v19 = [NSSet setWithArray:membersCopy];

  [v18 updateMembersWithURIs:v19 lightweightStatusDict:dictCopy];
  v20 = +[IDSFoundationLog RealTimeEncryptionController];
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (standardMembers)
  {
    if (v21)
    {
      allMembers = [v18 allMembers];
      v23 = 138412546;
      v24 = allMembers;
      v25 = 2112;
      v26 = @"YES";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "didUpdateMembers to %@, didChangeStandardMembers: %@", &v23, 0x16u);
    }

    [(IDSGroupEncryptionController *)self _updateRelevantEncryptedDataBlobForSession:dCopy];
    [(IDSGroupEncryptionController *)self updateServerDesiredKeyMaterialsForGroup:groupCopy sessionID:dCopy];
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

- (void)_updateRelevantEncryptedDataBlobForSession:(id)session
{
  sessionCopy = session;
  sessionController = [(IDSGroupEncryptionController *)self sessionController];
  v6 = [sessionController sessionWithUniqueID:sessionCopy];

  if (v6)
  {
    [v6 updateRelevantEncryptedDataBlob];
  }

  else
  {
    v7 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100932094(sessionCopy, v7);
    }
  }
}

- (BOOL)_isValidPushToken:(id)token
{
  if (token)
  {
    tokenCopy = token;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)didUpdateParticipants:(id)participants ofType:(int64_t)type forGroup:(id)group sessionID:(id)d
{
  internal = self->_internal;
  participantsCopy = participants;
  v10 = [(IDSGroupEncryptionController2 *)internal groupForID:group];
  [v10 updateParticipants:participantsCopy lightweight:type == 1];
}

- (void)account:(id)account didUpdateRegisteredDevices:(id)devices
{
  accountCopy = account;
  devicesCopy = devices;
  selfCopy = self;
  sessionController = [(IDSGroupEncryptionController *)self sessionController];
  groupSessionGroupIDs = [sessionController groupSessionGroupIDs];

  if (([accountCopy isRegistered] & 1) == 0)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v9 = groupSessionGroupIDs;
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
          block[4] = selfCopy;
          block[5] = v14;
          dispatch_async(v15, block);
        }

        v11 = [v9 countByEnumeratingWithState:&v40 objects:v49 count:16];
      }

      while (v11);
    }
  }

  lastKnownAccountIDToPushTokens = selfCopy->_lastKnownAccountIDToPushTokens;
  uniqueID = [accountCopy uniqueID];
  v31 = [(NSMutableDictionary *)lastKnownAccountIDToPushTokens objectForKeyedSubscript:uniqueID];

  v18 = objc_alloc_init(NSMutableSet);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = devicesCopy;
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

        pushToken = [*(*(&v35 + 1) + 8 * j) pushToken];
        service = [accountCopy service];
        identifier = [service identifier];
        v26 = [IDSPushToken pushTokenWithData:pushToken withServiceLoggingHint:identifier];
        [v18 addObject:v26];
      }

      v20 = [obj countByEnumeratingWithState:&v35 objects:v48 count:16];
    }

    while (v20);
  }

  os_unfair_lock_lock(&selfCopy->_lock);
  v27 = selfCopy->_lastKnownAccountIDToPushTokens;
  uniqueID2 = [accountCopy uniqueID];
  [(NSMutableDictionary *)v27 setObject:v18 forKeyedSubscript:uniqueID2];

  os_unfair_lock_unlock(&selfCopy->_lock);
  v29 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID3 = [accountCopy uniqueID];
    *buf = 138412546;
    v45 = obj;
    v46 = 2112;
    v47 = uniqueID3;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "didUpdateRegisteredDevices: %@ for account: %@", buf, 0x16u);
  }

  if (([v18 isEqualToSet:v31] & 1) == 0)
  {
    [(IDSGroupEncryptionController *)selfCopy rollNewKeysAfterResettingPrekeysForGroups:groupSessionGroupIDs withReason:1];
  }
}

- (void)ensureSessionForID:(id)d groupID:(id)iD
{
  dCopy = d;
  v6 = [(IDSGroupEncryptionController2 *)self->_internal groupForID:iD];
  v7 = [v6 ensureSessionForID:dCopy];
}

- (void)cleanUpSessionForID:(id)d groupID:(id)iD
{
  internal = self->_internal;
  dCopy = d;
  v7 = [(IDSGroupEncryptionController2 *)internal groupForID:iD];
  [v7 cleanUpSessionForID:dCopy];
}

@end