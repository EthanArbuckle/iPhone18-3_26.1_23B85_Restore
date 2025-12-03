@interface IDSDGroupStatusNotificationController
+ (IDSDGroupStatusNotificationController)sharedInstance;
- (IDSDGroupStatusNotificationController)init;
- (IDSDGroupStatusNotificationController)initWithSessionController:(id)controller realTimeEncryptionController:(id)encryptionController broadcaster:(id)broadcaster;
- (double)_multiwayFTMessageSendTimeout;
- (id)_currentDateString;
- (id)_groupMembersSupportingURILessUpdates:(id)updates groupID:(id)d;
- (id)_specificOriginatorfromURI:(id)i senderToken:(id)token accountUniqueID:(id)d;
- (id)getURIFromPushToken:(id)token forGroup:(id)group;
- (id)participantsForGroupID:(id)d;
- (id)pushTokensForGroupID:(id)d capability:(id)capability;
- (void)_sendFanoutMessage:(id)message account:(id)account toGroupMembers:(id)members fromURI:(id)i command:(int64_t)command commandContext:(id)context toGroup:(id)group sessionID:(id)self0 reason:(unsigned __int8)self1 waitForMadridAcks:(BOOL)self2 isUPlusOne:(BOOL)self3 isInitiator:(id)self4 quickRelayUserType:(id)self5 requiredCapabilites:(id)self6 requiredLackOfCapabilities:(id)self7 completionBlock:(id)self8;
- (void)_sendFanoutMessage:(id)message account:(id)account toGroupMembers:(id)members fromURI:(id)i command:(int64_t)command toGroup:(id)group sessionID:(id)d reason:(unsigned __int8)self0 isUPlusOne:(BOOL)self1 isInitiator:(id)self2 quickRelayUserType:(id)self3;
- (void)_sendFanoutMessage:(id)message account:(id)account toGroupMembers:(id)members fromURI:(id)i command:(int64_t)command toGroup:(id)group sessionID:(id)d reason:(unsigned __int8)self0 isUPlusOne:(BOOL)self1 isInitiator:(id)self2 quickRelayUserType:(id)self3 requiredCapabilites:(id)self4 requiredLackOfCapabilities:(id)self5;
- (void)dealloc;
- (void)notifyJoinToGroup:(id)group members:(id)members params:(id)params fromAccount:(id)account fromURI:(id)i sessionID:(id)d isUPlusOne:(BOOL)one completionBlock:(id)self0;
- (void)notifyJoinToSpecificMembersOfGroup:(id)group members:(id)members params:(id)params fromAccount:(id)account fromURI:(id)i sessionID:(id)d isUPlusOne:(BOOL)one requiredCapabilites:(id)self0 requiredLackOfCapabilities:(id)self1;
- (void)notifyLeaveToGroup:(id)group members:(id)members params:(id)params fromAccount:(id)account fromURI:(id)i sessionID:(id)d isUPlusOne:(BOOL)one;
- (void)notifyLeaveToSpecificMembersOfGroup:(id)group members:(id)members params:(id)params fromAccount:(id)account fromURI:(id)i sessionID:(id)d isUPlusOne:(BOOL)one requiredCapabilites:(id)self0 requiredLackOfCapabilities:(id)self1;
- (void)processIncomingParticipantDataUpdateMessage:(id)message fromToken:(id)token fromURI:(id)i toURI:(id)rI topic:(id)topic idsMessageContext:(id)context;
- (void)processIncomingParticipantUpdateMessage:(id)message fromToken:(id)token fromURI:(id)i toURI:(id)rI topic:(id)topic idsMessageContext:(id)context;
- (void)pushTokenLookup:(id)lookup forGroup:(id)group sessionID:(id)d fromURI:(id)i account:(id)account completionBlock:(id)block;
- (void)updateMembers:(id)members toGroup:(id)group withContext:(id)context params:(id)params fromAccount:(id)account fromURI:(id)i sessionID:(id)d messagingCapabilities:(id)self0 reason:(unsigned __int8)self1 isUPlusOne:(BOOL)self2 completionBlock:(id)self3;
- (void)updateParticipantDataToMembers:(id)members toGroup:(id)group withContext:(id)context params:(id)params fromAccount:(id)account fromURI:(id)i sessionID:(id)d isUPlusOne:(BOOL)self0;
@end

@implementation IDSDGroupStatusNotificationController

+ (IDSDGroupStatusNotificationController)sharedInstance
{
  if (qword_100CBD1C8 != -1)
  {
    sub_10091B4DC();
  }

  v3 = qword_100CBD1D0;

  return v3;
}

- (IDSDGroupStatusNotificationController)init
{
  v3 = +[IDSDSessionController sharedInstance];
  v4 = +[IDSGroupEncryptionController sharedInstance];
  v5 = objc_alloc_init(IDSDGroupStatusNotificationControllerBroadcaster);
  v6 = [(IDSDGroupStatusNotificationController *)self initWithSessionController:v3 realTimeEncryptionController:v4 broadcaster:v5];

  return v6;
}

- (IDSDGroupStatusNotificationController)initWithSessionController:(id)controller realTimeEncryptionController:(id)encryptionController broadcaster:(id)broadcaster
{
  controllerCopy = controller;
  encryptionControllerCopy = encryptionController;
  broadcasterCopy = broadcaster;
  v26.receiver = self;
  v26.super_class = IDSDGroupStatusNotificationController;
  v12 = [(IDSDGroupStatusNotificationController *)&v26 init];
  if (v12)
  {
    v13 = objc_alloc_init(NSMutableDictionary);
    notifiers = v12->_notifiers;
    v12->_notifiers = v13;

    v15 = objc_alloc_init(NSMutableSet);
    groups = v12->_groups;
    v12->_groups = v15;

    v17 = objc_alloc_init(NSMutableDictionary);
    events = v12->_events;
    v12->_events = v17;

    v19 = objc_alloc_init(NSMutableDictionary);
    groupIDToCapabilityToParticipantPushTokens = v12->_groupIDToCapabilityToParticipantPushTokens;
    v12->_groupIDToCapabilityToParticipantPushTokens = v19;

    objc_storeStrong(&v12->_sessionController, controller);
    objc_storeStrong(&v12->_realTimeEncryptionController, encryptionController);
    objc_storeStrong(&v12->_broadcaster, broadcaster);
    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = [[NSString alloc] initWithFormat:@"com.apple.ids.IDSDGroupStatusNotificationController"];
    v23 = dispatch_queue_create([v22 UTF8String], v21);
    queue = v12->_queue;
    v12->_queue = v23;
  }

  return v12;
}

- (void)dealloc
{
  queue = self->_queue;
  self->_queue = 0;

  notifiers = self->_notifiers;
  self->_notifiers = 0;

  groups = self->_groups;
  self->_groups = 0;

  events = self->_events;
  self->_events = 0;

  groupMemberPushTokens = self->_groupMemberPushTokens;
  self->_groupMemberPushTokens = 0;

  groupIDToCapabilityToParticipantPushTokens = self->_groupIDToCapabilityToParticipantPushTokens;
  self->_groupIDToCapabilityToParticipantPushTokens = 0;

  v9.receiver = self;
  v9.super_class = IDSDGroupStatusNotificationController;
  [(IDSDGroupStatusNotificationController *)&v9 dealloc];
}

- (id)pushTokensForGroupID:(id)d capability:(id)capability
{
  capabilityCopy = capability;
  v7 = [(NSMutableDictionary *)self->_groupIDToCapabilityToParticipantPushTokens objectForKeyedSubscript:d];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:capabilityCopy];
    if (v9)
    {
      v10 = +[NSMutableArray array];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v19;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v19 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [IDSPushToken pushTokenWithData:*(*(&v18 + 1) + 8 * i), v18];
            [v10 addObject:v16];
          }

          v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v13);
      }
    }

    else
    {
      v10 = +[NSArray array];
    }
  }

  else
  {
    v10 = +[NSArray array];
  }

  return v10;
}

- (id)participantsForGroupID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = self->_groups;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v6)
    {
      v7 = *v23;
      v8 = IDSGroupStatusNotificationControllerGroupIDKey;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        v11 = [v10 objectForKey:v8];
        if ([v11 isEqualToString:dCopy])
        {
          break;
        }

        if (v6 == ++v9)
        {
          v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          goto LABEL_19;
        }
      }

      v12 = [v10 objectForKey:IDSGroupStatusNotificationControllerGroupParticipantsKey];

      if (v12)
      {
        goto LABEL_21;
      }
    }

    else
    {
LABEL_19:
    }
  }

  else
  {
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Cannot get participantsForGroupID, no groupID!", buf, 2u);
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

  v12 = +[NSArray array];
LABEL_21:
  v14 = +[IDSFoundationLog SessionController];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = dCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Found participants for group %@", buf, 0xCu);
  }

  v15 = [dCopy copy];
  [v12 description];
  v21 = v20 = v15;
  v16 = v21;
  v17 = v15;
  cut_dispatch_log_queue();
  v18 = [v12 copy];

  return v18;
}

- (id)_currentDateString
{
  v2 = +[NSDate date];
  v3 = objc_alloc_init(NSDateFormatter);
  [v3 setDateFormat:@"yyyy-MM-dd HH:mm:ssz"];
  v4 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
  [v3 setLocale:v4];

  v5 = [v3 stringFromDate:v2];

  return v5;
}

- (void)notifyJoinToGroup:(id)group members:(id)members params:(id)params fromAccount:(id)account fromURI:(id)i sessionID:(id)d isUPlusOne:(BOOL)one completionBlock:(id)self0
{
  groupCopy = group;
  membersCopy = members;
  paramsCopy = params;
  accountCopy = account;
  iCopy = i;
  dCopy = d;
  blockCopy = block;
  v20 = im_primary_base_queue();
  dispatch_assert_queue_V2(v20);

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v22 = [NSNumber numberWithUnsignedChar:1];
  if (v22)
  {
    CFDictionarySetValue(Mutable, IDSDSessionMessageJoinNotificationKey, v22);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B4F0();
  }

  v23 = groupCopy;
  if (v23)
  {
    CFDictionarySetValue(Mutable, IDSFanoutMessageGroupIDKey, v23);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B578();
  }

  v58 = v23;

  v24 = [membersCopy __imArrayByApplyingBlock:&stru_100BDA8B8];
  if (v24)
  {
    CFDictionarySetValue(Mutable, IDSFanoutMessageGroupMembersKey, v24);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B600();
  }

  v25 = dCopy;
  if (v25)
  {
    CFDictionarySetValue(Mutable, IDSDSessionMessageSessionID, v25);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B688();
  }

  isInitiator = [paramsCopy isInitiator];
  if (isInitiator)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionIsInitiatorKey, isInitiator);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B710();
  }

  v27 = [NSNumber numberWithBool:one];
  if (v27)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionIsUPlusOneKey, v27);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B798();
  }

  sessionController = [(IDSDGroupStatusNotificationController *)self sessionController];
  v29 = [sessionController sessionWithUniqueID:v25];

  if (v29 && [v29 handOffOverQREnabled])
  {
    [v29 getIDSContextTimeStamp];
    v30 = [NSNumber numberWithDouble:?];
    if (v30)
    {
      CFDictionarySetValue(Mutable, IDSContextTimeStamp, v30);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10091B820();
    }
  }

  participantID = [paramsCopy participantID];
  if (participantID)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionParticipantIDKey, participantID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B8A8();
  }

  participantData = [paramsCopy participantData];
  if (participantData)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionParticipantDataKey, participantData);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B930();
  }

  urisToParticipantIDs = [paramsCopy urisToParticipantIDs];
  if (urisToParticipantIDs)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionURIToParticipantID, urisToParticipantIDs);
  }

  v57 = v29;
  v34 = membersCopy;

  clientJoinContextData = [paramsCopy clientJoinContextData];
  if (clientJoinContextData)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionClientContextDataKey, clientJoinContextData);
  }

  primaryRegistration = [accountCopy primaryRegistration];
  pushToken = [primaryRegistration pushToken];
  v38 = accountCopy;
  service = [accountCopy service];
  identifier = [service identifier];
  v56 = [IDSPushToken pushTokenWithData:pushToken withServiceLoggingHint:identifier];

  if (one)
  {
    commandContext = [paramsCopy commandContext];
  }

  else
  {
    joinType = [paramsCopy joinType];
    integerValue = [joinType integerValue];

    if (integerValue != 1)
    {
      v44 = 0;
      goto LABEL_50;
    }

    commandContext = [NSNumber numberWithUnsignedInteger:1];
  }

  v44 = commandContext;
LABEL_50:
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_1003DD0EC;
  v64[3] = &unk_100BDA768;
  v64[4] = self;
  v65 = Mutable;
  v66 = v34;
  v67 = v58;
  v68 = v38;
  v69 = iCopy;
  v74 = 207;
  v70 = v44;
  v71 = v25;
  oneCopy = one;
  v72 = paramsCopy;
  v73 = blockCopy;
  v63 = blockCopy;
  v60 = paramsCopy;
  v55 = v25;
  v45 = v44;
  v46 = iCopy;
  v47 = v38;
  v48 = v58;
  v49 = v34;
  v50 = Mutable;
  v51 = objc_retainBlock(v64);
  realTimeEncryptionController = [(IDSDGroupStatusNotificationController *)self realTimeEncryptionController];
  v53 = [realTimeEncryptionController createRealTimeEncryptionFullIdentityForDevice:v56 completionBlock:v51];

  sessionController2 = [(IDSDGroupStatusNotificationController *)self sessionController];
  [sessionController2 updateCriticalReliabilityState];
}

- (void)notifyJoinToSpecificMembersOfGroup:(id)group members:(id)members params:(id)params fromAccount:(id)account fromURI:(id)i sessionID:(id)d isUPlusOne:(BOOL)one requiredCapabilites:(id)self0 requiredLackOfCapabilities:(id)self1
{
  groupCopy = group;
  membersCopy = members;
  paramsCopy = params;
  accountCopy = account;
  iCopy = i;
  dCopy = d;
  capabilitesCopy = capabilites;
  capabilitiesCopy = capabilities;
  v21 = im_primary_base_queue();
  dispatch_assert_queue_V2(v21);

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v23 = [NSNumber numberWithUnsignedChar:1];
  if (v23)
  {
    CFDictionarySetValue(Mutable, IDSDSessionMessageJoinNotificationKey, v23);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B9B8();
  }

  v24 = groupCopy;
  if (v24)
  {
    CFDictionarySetValue(Mutable, IDSFanoutMessageGroupIDKey, v24);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B578();
  }

  v59 = v24;

  v25 = [membersCopy __imArrayByApplyingBlock:&stru_100BDA8B8];
  if (v25)
  {
    CFDictionarySetValue(Mutable, IDSFanoutMessageGroupMembersKey, v25);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B600();
  }

  v26 = dCopy;
  if (v26)
  {
    CFDictionarySetValue(Mutable, IDSDSessionMessageSessionID, v26);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B688();
  }

  isInitiator = [paramsCopy isInitiator];
  if (isInitiator)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionIsInitiatorKey, isInitiator);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B710();
  }

  v28 = [NSNumber numberWithBool:one];
  if (v28)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionIsUPlusOneKey, v28);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B798();
  }

  sessionController = [(IDSDGroupStatusNotificationController *)self sessionController];
  v30 = [sessionController sessionWithUniqueID:v26];

  if (v30 && [v30 handOffOverQREnabled])
  {
    [v30 getIDSContextTimeStamp];
    v31 = [NSNumber numberWithDouble:?];
    if (v31)
    {
      CFDictionarySetValue(Mutable, IDSContextTimeStamp, v31);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10091B820();
    }
  }

  participantID = [paramsCopy participantID];
  if (participantID)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionParticipantIDKey, participantID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B8A8();
  }

  participantData = [paramsCopy participantData];
  if (participantData)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionParticipantDataKey, participantData);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B930();
  }

  urisToParticipantIDs = [paramsCopy urisToParticipantIDs];
  if (urisToParticipantIDs)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionURIToParticipantID, urisToParticipantIDs);
  }

  v58 = v30;
  v35 = membersCopy;

  clientJoinContextData = [paramsCopy clientJoinContextData];
  if (clientJoinContextData)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionClientContextDataKey, clientJoinContextData);
  }

  primaryRegistration = [accountCopy primaryRegistration];
  pushToken = [primaryRegistration pushToken];
  v39 = accountCopy;
  service = [accountCopy service];
  identifier = [service identifier];
  v57 = [IDSPushToken pushTokenWithData:pushToken withServiceLoggingHint:identifier];

  if (one)
  {
    commandContext = [paramsCopy commandContext];
  }

  else
  {
    joinType = [paramsCopy joinType];
    integerValue = [joinType integerValue];

    if (integerValue != 1)
    {
      v45 = 0;
      goto LABEL_50;
    }

    commandContext = [NSNumber numberWithUnsignedInteger:1];
  }

  v45 = commandContext;
LABEL_50:
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_1003DDA10;
  v67[3] = &unk_100BDA790;
  v67[4] = self;
  v68 = Mutable;
  v69 = v35;
  v70 = v59;
  v71 = v39;
  v72 = iCopy;
  v73 = v45;
  v74 = v26;
  oneCopy = one;
  v75 = paramsCopy;
  v76 = capabilitesCopy;
  v78 = 207;
  v77 = capabilitiesCopy;
  v66 = capabilitiesCopy;
  v63 = capabilitesCopy;
  v61 = paramsCopy;
  v56 = v26;
  v46 = v45;
  v47 = iCopy;
  v48 = v39;
  v49 = v59;
  v50 = v35;
  v51 = Mutable;
  v52 = objc_retainBlock(v67);
  realTimeEncryptionController = [(IDSDGroupStatusNotificationController *)self realTimeEncryptionController];
  v54 = [realTimeEncryptionController createRealTimeEncryptionFullIdentityForDevice:v57 completionBlock:v52];

  sessionController2 = [(IDSDGroupStatusNotificationController *)self sessionController];
  [sessionController2 updateCriticalReliabilityState];
}

- (id)_groupMembersSupportingURILessUpdates:(id)updates groupID:(id)d
{
  updatesCopy = updates;
  dCopy = d;
  v8 = +[IDSServerBag sharedInstance];
  v9 = [v8 objectForKey:@"qr-session-particiapntID-URI-mapping-included"];

  v10 = &__NSArray0__struct;
  if (_os_feature_enabled_impl() && !v9)
  {
    v10 = +[NSMutableArray array];
    v23 = dCopy;
    v22 = [(NSMutableDictionary *)self->_groupIDToCapabilityToParticipantPushTokens objectForKeyedSubscript:dCopy];
    v11 = [v22 objectForKeyedSubscript:IDSRegistrationPropertySupportsURIlessMembershipUpdates];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v24 = updatesCopy;
    v12 = updatesCopy;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          pushToken = [v17 pushToken];
          rawToken = [pushToken rawToken];
          v20 = [v11 containsObject:rawToken];

          if (v20)
          {
            [v10 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v14);
    }

    dCopy = v23;
    updatesCopy = v24;
  }

  return v10;
}

- (void)notifyLeaveToGroup:(id)group members:(id)members params:(id)params fromAccount:(id)account fromURI:(id)i sessionID:(id)d isUPlusOne:(BOOL)one
{
  groupCopy = group;
  membersCopy = members;
  paramsCopy = params;
  accountCopy = account;
  iCopy = i;
  dCopy = d;
  v18 = im_primary_base_queue();
  dispatch_assert_queue_V2(v18);

  v19 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "notify Leave To Group", buf, 2u);
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

  if (one)
  {
    commandContext = [paramsCopy commandContext];
  }

  else
  {
    commandContext = 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v21 = [NSNumber numberWithUnsignedChar:2];
  if (v21)
  {
    CFDictionarySetValue(Mutable, IDSDSessionMessageJoinNotificationKey, v21);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B9B8();
  }

  clientLeaveContextData = [paramsCopy clientLeaveContextData];
  if (clientLeaveContextData)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionClientContextDataKey, clientLeaveContextData);
  }

  v23 = dCopy;
  if (v23)
  {
    CFDictionarySetValue(Mutable, IDSDSessionMessageSessionID, v23);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B688();
  }

  v24 = groupCopy;
  if (v24)
  {
    CFDictionarySetValue(Mutable, IDSFanoutMessageGroupIDKey, v24);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B578();
  }

  v25 = [membersCopy __imArrayByApplyingBlock:&stru_100BDA8B8];
  if (v25)
  {
    CFDictionarySetValue(Mutable, IDSFanoutMessageGroupMembersKey, v25);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B600();
  }

  participantID = [paramsCopy participantID];
  if (participantID)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionParticipantIDKey, participantID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B8A8();
  }

  isInitiator = [paramsCopy isInitiator];
  if (isInitiator)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionIsInitiatorKey, isInitiator);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B710();
  }

  v28 = [NSNumber numberWithBool:one];
  if (v28)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionIsUPlusOneKey, v28);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B798();
  }

  sessionController = [(IDSDGroupStatusNotificationController *)self sessionController];
  v30 = [sessionController sessionWithUniqueID:v23];

  if (v30 && [v30 handOffOverQREnabled])
  {
    [v30 getIDSContextTimeStamp];
    v31 = [NSNumber numberWithDouble:?];
    if (v31)
    {
      CFDictionarySetValue(Mutable, IDSContextTimeStamp, v31);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10091B820();
    }
  }

  isInitiator2 = [paramsCopy isInitiator];
  quickRelayUserType = [paramsCopy quickRelayUserType];
  BYTE2(v35) = one;
  LOWORD(v35) = 0;
  [IDSDGroupStatusNotificationController _sendFanoutMessage:"_sendFanoutMessage:account:toGroupMembers:fromURI:command:commandContext:toGroup:sessionID:reason:waitForMadridAcks:isUPlusOne:isInitiator:quickRelayUserType:requiredCapabilites:requiredLackOfCapabilities:completionBlock:" account:Mutable toGroupMembers:accountCopy fromURI:membersCopy command:iCopy commandContext:208 toGroup:commandContext sessionID:v24 reason:v23 waitForMadridAcks:v35 isUPlusOne:isInitiator2 isInitiator:quickRelayUserType quickRelayUserType:0 requiredCapabilites:0 requiredLackOfCapabilities:0 completionBlock:?];

  sessionController2 = [(IDSDGroupStatusNotificationController *)self sessionController];
  [sessionController2 updateCriticalReliabilityState];
}

- (void)notifyLeaveToSpecificMembersOfGroup:(id)group members:(id)members params:(id)params fromAccount:(id)account fromURI:(id)i sessionID:(id)d isUPlusOne:(BOOL)one requiredCapabilites:(id)self0 requiredLackOfCapabilities:(id)self1
{
  groupCopy = group;
  membersCopy = members;
  paramsCopy = params;
  accountCopy = account;
  iCopy = i;
  dCopy = d;
  capabilitesCopy = capabilites;
  capabilitiesCopy = capabilities;
  v20 = im_primary_base_queue();
  dispatch_assert_queue_V2(v20);

  v21 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "notify Leave To Group", buf, 2u);
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

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v23 = [NSNumber numberWithUnsignedChar:2];
  if (v23)
  {
    CFDictionarySetValue(Mutable, IDSDSessionMessageJoinNotificationKey, v23);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B9B8();
  }

  v24 = dCopy;
  if (v24)
  {
    CFDictionarySetValue(Mutable, IDSDSessionMessageSessionID, v24);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B688();
  }

  v25 = groupCopy;
  if (v25)
  {
    CFDictionarySetValue(Mutable, IDSFanoutMessageGroupIDKey, v25);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B578();
  }

  v37 = v25;

  v26 = [membersCopy __imArrayByApplyingBlock:&stru_100BDA8B8];
  if (v26)
  {
    CFDictionarySetValue(Mutable, IDSFanoutMessageGroupMembersKey, v26);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B600();
  }

  participantID = [paramsCopy participantID];
  if (participantID)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionParticipantIDKey, participantID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B8A8();
  }

  isInitiator = [paramsCopy isInitiator];
  if (isInitiator)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionIsInitiatorKey, isInitiator);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B710();
  }

  v29 = [NSNumber numberWithBool:one];
  if (v29)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionIsUPlusOneKey, v29);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B798();
  }

  sessionController = [(IDSDGroupStatusNotificationController *)self sessionController];
  v31 = [sessionController sessionWithUniqueID:v24];

  if (v31 && [v31 handOffOverQREnabled])
  {
    [v31 getIDSContextTimeStamp];
    v32 = [NSNumber numberWithDouble:?];
    if (v32)
    {
      CFDictionarySetValue(Mutable, IDSContextTimeStamp, v32);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10091B820();
    }
  }

  isInitiator2 = [paramsCopy isInitiator];
  quickRelayUserType = [paramsCopy quickRelayUserType];
  BYTE1(v36) = one;
  LOBYTE(v36) = 0;
  [(IDSDGroupStatusNotificationController *)self _sendFanoutMessage:Mutable account:accountCopy toGroupMembers:membersCopy fromURI:iCopy command:208 toGroup:v37 sessionID:v24 reason:v36 isUPlusOne:isInitiator2 isInitiator:quickRelayUserType quickRelayUserType:capabilitesCopy requiredCapabilites:capabilitiesCopy requiredLackOfCapabilities:?];

  sessionController2 = [(IDSDGroupStatusNotificationController *)self sessionController];
  [sessionController2 updateCriticalReliabilityState];
}

- (void)updateMembers:(id)members toGroup:(id)group withContext:(id)context params:(id)params fromAccount:(id)account fromURI:(id)i sessionID:(id)d messagingCapabilities:(id)self0 reason:(unsigned __int8)self1 isUPlusOne:(BOOL)self2 completionBlock:(id)self3
{
  membersCopy = members;
  groupCopy = group;
  contextCopy = context;
  paramsCopy = params;
  accountCopy = account;
  iCopy = i;
  dCopy = d;
  capabilitiesCopy = capabilities;
  blockCopy = block;
  v23 = im_primary_base_queue();
  dispatch_assert_queue_V2(v23);

  v24 = [NSNumber numberWithUnsignedChar:3];
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v26 = groupCopy;
  if (v26)
  {
    CFDictionarySetValue(Mutable, IDSFanoutMessageGroupIDKey, v26);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B578();
  }

  v27 = dCopy;
  if (v27)
  {
    CFDictionarySetValue(Mutable, IDSDSessionMessageSessionID, v27);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B688();
  }

  v56 = v27;

  v28 = [membersCopy __imArrayByApplyingBlock:&stru_100BDA8B8];
  if (v28)
  {
    CFDictionarySetValue(Mutable, IDSFanoutMessageGroupMembersKey, v28);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B600();
  }

  v29 = v24;
  if (v29)
  {
    CFDictionarySetValue(Mutable, IDSDSessionMessageJoinNotificationKey, v29);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B9B8();
  }

  v50 = v29;

  isInitiator = [paramsCopy isInitiator];
  if (isInitiator)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionIsInitiatorKey, isInitiator);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B710();
  }

  participantID = [paramsCopy participantID];
  if (participantID)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionParticipantIDKey, participantID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B8A8();
  }

  participantData = [paramsCopy participantData];
  if (participantData)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionParticipantDataKey, participantData);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B930();
  }

  urisToParticipantIDs = [paramsCopy urisToParticipantIDs];
  if (urisToParticipantIDs)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionURIToParticipantID, urisToParticipantIDs);
  }

  v55 = blockCopy;

  if (contextCopy)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionClientContextDataKey, contextCopy);
  }

  v47 = [(IDSDGroupStatusNotificationController *)self _groupMembersSupportingURILessUpdates:membersCopy groupID:v26];
  v48 = v26;
  v49 = [membersCopy mutableCopy];
  [v49 removeObjectsInArray:v47];
  v54 = [(__CFDictionary *)Mutable mutableCopy];
  [v54 setObject:0 forKeyedSubscript:IDSGroupSessionURIToParticipantID];
  isInitiator2 = [paramsCopy isInitiator];
  requiredCapabilities = [capabilitiesCopy requiredCapabilities];
  allObjects = [requiredCapabilities allObjects];
  [capabilitiesCopy requiredMissingCapabilities];
  v38 = v37 = paramsCopy;
  allObjects2 = [v38 allObjects];
  BYTE2(v45) = one;
  BYTE1(v45) = 1;
  LOBYTE(v45) = reason;
  [IDSDGroupStatusNotificationController _sendFanoutMessage:"_sendFanoutMessage:account:toGroupMembers:fromURI:command:commandContext:toGroup:sessionID:reason:waitForMadridAcks:isUPlusOne:isInitiator:quickRelayUserType:requiredCapabilites:requiredLackOfCapabilities:completionBlock:" account:Mutable toGroupMembers:accountCopy fromURI:membersCopy command:iCopy commandContext:209 toGroup:0 sessionID:v48 reason:v56 waitForMadridAcks:v45 isUPlusOne:isInitiator2 isInitiator:0 quickRelayUserType:allObjects requiredCapabilites:allObjects2 requiredLackOfCapabilities:v55 completionBlock:?];

  if ([v47 count])
  {
    isInitiator3 = [v37 isInitiator];
    requiredCapabilities2 = [capabilitiesCopy requiredCapabilities];
    allObjects3 = [requiredCapabilities2 allObjects];
    requiredMissingCapabilities = [capabilitiesCopy requiredMissingCapabilities];
    allObjects4 = [requiredMissingCapabilities allObjects];
    BYTE2(v46) = one;
    BYTE1(v46) = 1;
    LOBYTE(v46) = reason;
    [IDSDGroupStatusNotificationController _sendFanoutMessage:"_sendFanoutMessage:account:toGroupMembers:fromURI:command:commandContext:toGroup:sessionID:reason:waitForMadridAcks:isUPlusOne:isInitiator:quickRelayUserType:requiredCapabilites:requiredLackOfCapabilities:completionBlock:" account:v54 toGroupMembers:accountCopy fromURI:v47 command:iCopy commandContext:209 toGroup:0 sessionID:v48 reason:v56 waitForMadridAcks:v46 isUPlusOne:isInitiator3 isInitiator:0 quickRelayUserType:allObjects3 requiredCapabilites:allObjects4 requiredLackOfCapabilities:v55 completionBlock:?];
  }
}

- (void)updateParticipantDataToMembers:(id)members toGroup:(id)group withContext:(id)context params:(id)params fromAccount:(id)account fromURI:(id)i sessionID:(id)d isUPlusOne:(BOOL)self0
{
  groupCopy = group;
  contextCopy = context;
  paramsCopy = params;
  accountCopy = account;
  iCopy = i;
  dCopy = d;
  membersCopy = members;
  v22 = im_primary_base_queue();
  dispatch_assert_queue_V2(v22);

  v23 = [NSNumber numberWithUnsignedChar:4];
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v25 = groupCopy;
  if (v25)
  {
    CFDictionarySetValue(Mutable, IDSFanoutMessageGroupIDKey, v25);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B578();
  }

  v26 = dCopy;
  if (v26)
  {
    CFDictionarySetValue(Mutable, IDSDSessionMessageSessionID, v26);
    v27 = paramsCopy;
  }

  else
  {
    v27 = paramsCopy;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10091B688();
    }
  }

  v28 = v23;
  if (v28)
  {
    CFDictionarySetValue(Mutable, IDSDSessionMessageJoinNotificationKey, v28);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B9B8();
  }

  v42 = v28;

  isInitiator = [v27 isInitiator];
  if (isInitiator)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionIsInitiatorKey, isInitiator);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B710();
  }

  participantID = [v27 participantID];
  if (participantID)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionParticipantIDKey, participantID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B8A8();
  }

  participantData = [v27 participantData];
  if (participantData)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionParticipantDataKey, participantData);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B930();
  }

  v40 = accountCopy;

  if (contextCopy)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionClientContextDataKey, contextCopy);
  }

  v43 = contextCopy;
  urisToParticipantIDs = [v27 urisToParticipantIDs];
  v33 = IDSGroupSessionURIToParticipantID;
  if (urisToParticipantIDs)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionURIToParticipantID, urisToParticipantIDs);
  }

  v34 = [(IDSDGroupStatusNotificationController *)self _groupMembersSupportingURILessUpdates:membersCopy groupID:v25];
  v41 = [membersCopy mutableCopy];
  [v41 removeObjectsInArray:v34];
  v35 = [(__CFDictionary *)Mutable mutableCopy];
  [v35 setObject:0 forKeyedSubscript:v33];
  isInitiator2 = [paramsCopy isInitiator];
  BYTE1(v38) = one;
  LOBYTE(v38) = 0;
  [(IDSDGroupStatusNotificationController *)self _sendFanoutMessage:Mutable account:v40 toGroupMembers:membersCopy fromURI:iCopy command:239 toGroup:v25 sessionID:v26 reason:v38 isUPlusOne:isInitiator2 isInitiator:0 quickRelayUserType:?];

  if ([v34 count])
  {
    isInitiator3 = [paramsCopy isInitiator];
    BYTE1(v39) = one;
    LOBYTE(v39) = 0;
    [(IDSDGroupStatusNotificationController *)self _sendFanoutMessage:v35 account:v40 toGroupMembers:v34 fromURI:iCopy command:239 toGroup:v25 sessionID:v26 reason:v39 isUPlusOne:isInitiator3 isInitiator:0 quickRelayUserType:?];
  }
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
        v7 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v10 = v6;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Server Bag provided us with a send timeout of %f ", buf, 0xCu);
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

        v4 = v6;
      }
    }
  }

  return v4;
}

- (void)_sendFanoutMessage:(id)message account:(id)account toGroupMembers:(id)members fromURI:(id)i command:(int64_t)command toGroup:(id)group sessionID:(id)d reason:(unsigned __int8)self0 isUPlusOne:(BOOL)self1 isInitiator:(id)self2 quickRelayUserType:(id)self3
{
  BYTE2(v13) = one;
  LOWORD(v13) = reason;
  [IDSDGroupStatusNotificationController _sendFanoutMessage:"_sendFanoutMessage:account:toGroupMembers:fromURI:command:commandContext:toGroup:sessionID:reason:waitForMadridAcks:isUPlusOne:isInitiator:quickRelayUserType:requiredCapabilites:requiredLackOfCapabilities:completionBlock:" account:message toGroupMembers:account fromURI:members command:i commandContext:command toGroup:0 sessionID:group reason:d waitForMadridAcks:v13 isUPlusOne:initiator isInitiator:type quickRelayUserType:0 requiredCapabilites:0 requiredLackOfCapabilities:0 completionBlock:?];
}

- (void)_sendFanoutMessage:(id)message account:(id)account toGroupMembers:(id)members fromURI:(id)i command:(int64_t)command toGroup:(id)group sessionID:(id)d reason:(unsigned __int8)self0 isUPlusOne:(BOOL)self1 isInitiator:(id)self2 quickRelayUserType:(id)self3 requiredCapabilites:(id)self4 requiredLackOfCapabilities:(id)self5
{
  BYTE2(v15) = one;
  LOWORD(v15) = reason;
  [IDSDGroupStatusNotificationController _sendFanoutMessage:"_sendFanoutMessage:account:toGroupMembers:fromURI:command:commandContext:toGroup:sessionID:reason:waitForMadridAcks:isUPlusOne:isInitiator:quickRelayUserType:requiredCapabilites:requiredLackOfCapabilities:completionBlock:" account:message toGroupMembers:account fromURI:members command:i commandContext:command toGroup:0 sessionID:group reason:d waitForMadridAcks:v15 isUPlusOne:initiator isInitiator:type quickRelayUserType:capabilites requiredCapabilites:capabilities requiredLackOfCapabilities:0 completionBlock:?];
}

- (void)_sendFanoutMessage:(id)message account:(id)account toGroupMembers:(id)members fromURI:(id)i command:(int64_t)command commandContext:(id)context toGroup:(id)group sessionID:(id)self0 reason:(unsigned __int8)self1 waitForMadridAcks:(BOOL)self2 isUPlusOne:(BOOL)self3 isInitiator:(id)self4 quickRelayUserType:(id)self5 requiredCapabilites:(id)self6 requiredLackOfCapabilities:(id)self7 completionBlock:(id)self8
{
  messageCopy = message;
  accountCopy = account;
  membersCopy = members;
  iCopy = i;
  contextCopy = context;
  groupCopy = group;
  dCopy = d;
  initiatorCopy = initiator;
  typeCopy = type;
  capabilitesCopy = capabilites;
  capabilitiesCopy = capabilities;
  blockCopy = block;
  if (membersCopy)
  {
    v55 = [NSSet setWithArray:membersCopy];
    v56 = [IDSDestination destinationWithDestinations:v55];
    v25 = +[NSString stringGUID];
    v26 = objc_alloc_init(IDSSendParameters);
    [v26 setQuickRelayUserType:typeCopy];
    [v26 setMessage:messageCopy];
    [v26 setEncryptPayload:1];
    [v26 setPriority:300];
    [v26 setDestinations:v56];
    v27 = [NSNumber numberWithInteger:command];
    [v26 setCommand:v27];

    [v26 setCommandContext:contextCopy];
    [v26 setIdentifier:v25];
    [v26 setAlwaysSkipSelf:1];
    v28 = IDSGetUUIDData();
    [v26 setMessageUUID:v28];

    unprefixedURI = [iCopy unprefixedURI];
    [v26 setFromID:unprefixedURI];

    [(IDSDGroupStatusNotificationController *)self _multiwayFTMessageSendTimeout];
    [v26 setTimeout:?];
    [v26 setIgnoreMaxRetryCount:1];
    [v26 setWantsResponse:1];
    [v26 setIsUPlusOne:one];
    [v26 setIsInitiator:initiatorCopy];
    if (_os_feature_enabled_impl())
    {
      v30 = +[IDSDSessionActiveParticipantsCache sharedInstance];
      v31 = [v30 vendTokenListForSessionID:dCopy];
      [v26 setPrioritizedTokenList:v31];
    }

    if (capabilitesCopy | capabilitiesCopy)
    {
      if ([capabilitesCopy count])
      {
        v32 = +[IDSFoundationLog SessionController];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v78 = capabilitesCopy;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Group status notification requires properties -- manual {requiredCapabilites: %@}", buf, 0xCu);
        }

        [v26 setRequireAllRegistrationProperties:capabilitesCopy];
      }

      if ([capabilitiesCopy count])
      {
        v33 = +[IDSFoundationLog SessionController];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v78 = capabilitiesCopy;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Group status notification requires lack of properties -- manual {requiredLackOfCapabilities: %@}", buf, 0xCu);
        }

        [v26 setRequireLackOfRegistrationProperties:capabilitiesCopy];
      }
    }

    else
    {
      sessionController = [(IDSDGroupStatusNotificationController *)self sessionController];
      v36 = [sessionController sessionWithUniqueID:dCopy];

      requiredLackOfCapabilities = [v36 requiredLackOfCapabilities];
      v38 = [requiredLackOfCapabilities count];

      if (v38)
      {
        v39 = +[IDSFoundationLog SessionController];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          requiredLackOfCapabilities2 = [v36 requiredLackOfCapabilities];
          *buf = 138412290;
          v78 = requiredLackOfCapabilities2;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Group status notification requires lack of properties {requiredLackOfCapabilities: %@}", buf, 0xCu);
        }

        requiredLackOfCapabilities3 = [v36 requiredLackOfCapabilities];
        [v26 setRequireLackOfRegistrationProperties:requiredLackOfCapabilities3];
      }

      requiredCapabilities = [v36 requiredCapabilities];
      v43 = [requiredCapabilities count];

      if (v43)
      {
        v44 = +[IDSFoundationLog SessionController];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          requiredCapabilities2 = [v36 requiredCapabilities];
          *buf = 138412290;
          v78 = requiredCapabilities2;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Group status notification requires properties {requiredCapabilities: %@}", buf, 0xCu);
        }

        requiredCapabilities3 = [v36 requiredCapabilities];
        [v26 setRequireAllRegistrationProperties:requiredCapabilities3];
      }
    }

    v47 = +[IDSFoundationLog SessionController];
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = [NSNumber numberWithInteger:command];
      if (acks)
      {
        v49 = @"YES";
      }

      else
      {
        v49 = @"NO";
      }

      v50 = objc_retainBlock(blockCopy);
      *buf = 138413314;
      v78 = v25;
      v79 = 2112;
      v80 = v48;
      v81 = 2112;
      v82 = contextCopy;
      v83 = 2112;
      v84 = v49;
      v85 = 2112;
      v86 = v50;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Sending group status notification fanout message { GUID: %@, command: %@, commandContext: %@, waitForMadridAcks: %@, completionBlock: %@ }", buf, 0x34u);
    }

    v75[0] = 0;
    v75[1] = v75;
    v75[2] = 0x3032000000;
    v75[3] = sub_10000A918;
    v75[4] = sub_10000BC0C;
    v76 = objc_retainBlock(blockCopy);
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_1003DFE50;
    v67[3] = &unk_100BDA7B8;
    v51 = v25;
    acksCopy = acks;
    v68 = v51;
    v72 = v75;
    v69 = membersCopy;
    v70 = groupCopy;
    v71 = dCopy;
    reasonCopy = reason;
    [(__CFString *)accountCopy sendMessageWithSendParameters:v26 willSendBlock:0 completionBlock:v67];
    v52 = +[IDSFoundationLog SessionController];
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = [NSNumber numberWithInteger:command];
      *buf = 138413314;
      v78 = v51;
      v79 = 2112;
      v80 = v56;
      v81 = 2112;
      v82 = v53;
      v83 = 2112;
      v84 = accountCopy;
      v85 = 2112;
      v86 = iCopy;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Sent messageID %@ to the destination %@ command %@ (account %@, fromURI %@)", buf, 0x34u);
    }

    _Block_object_dispose(v75, 8);
  }

  else
  {
    v34 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "No Group, bailing...", buf, 2u);
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

- (void)processIncomingParticipantUpdateMessage:(id)message fromToken:(id)token fromURI:(id)i toURI:(id)rI topic:(id)topic idsMessageContext:(id)context
{
  messageCopy = message;
  tokenCopy = token;
  iCopy = i;
  rICopy = rI;
  topicCopy = topic;
  contextCopy = context;
  v15 = objc_alloc_init(IDSGroupStatusNotificationParameters);
  selfCopy = self;
  uniqueID = [(IDSDAccount *)self->_account uniqueID];
  v117 = [(IDSDGroupStatusNotificationController *)self _specificOriginatorfromURI:iCopy senderToken:tokenCopy accountUniqueID:uniqueID];

  v17 = objc_opt_class();
  v122 = sub_10001B45C(v17, messageCopy, IDSFanoutMessageGroupIDKey);
  v18 = objc_opt_class();
  v19 = sub_10001B45C(v18, messageCopy, IDSDSessionMessageJoinNotificationKey);
  unsignedIntegerValue = [v19 unsignedIntegerValue];

  v20 = [contextCopy objectForKey:IDSMessageContextCommandContextKey];
  integerValue = [v20 integerValue];
  if (integerValue >= 2)
  {
    v22 = 0;
  }

  else
  {
    v22 = integerValue;
  }

  v109 = v22;

  v23 = objc_opt_class();
  v24 = IDSMessageContextFromServerStorageKey;
  v25 = sub_10001B45C(v23, contextCopy, IDSMessageContextFromServerStorageKey);
  v26 = objc_opt_class();
  v27 = sub_10001B45C(v26, contextCopy, v24);
  bOOLValue = [v27 BOOLValue];

  v28 = [contextCopy objectForKey:IDSMessageContextServerTimestampKey];
  [v28 doubleValue];
  v115 = [NSDate dateWithTimeIntervalSince1970:?];

  v29 = objc_opt_class();
  v30 = sub_10001B45C(v29, messageCopy, IDSSessionParticipantIDKey);
  [(IDSGroupStatusNotificationParameters *)v15 setParticipantID:v30];

  v31 = IDSSessionParticipantDataKey;
  v32 = [messageCopy objectForKey:IDSSessionParticipantDataKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = [messageCopy objectForKey:v31];
    v34 = [NSData _IDSDataFromBase64String:v33];
LABEL_8:
    v35 = v34;
    [(IDSGroupStatusNotificationParameters *)v15 setParticipantData:v34];

    goto LABEL_10;
  }

  v33 = [messageCopy objectForKey:v31];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = [messageCopy objectForKey:v31];
    goto LABEL_8;
  }

  [(IDSGroupStatusNotificationParameters *)v15 setParticipantData:0];
LABEL_10:

  v36 = IDSGroupSessionClientContextDataKey;
  v37 = [messageCopy objectForKey:IDSGroupSessionClientContextDataKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = [messageCopy objectForKey:v36];
    v39 = [NSData _IDSDataFromBase64String:v38];
LABEL_14:
    v40 = v39;
    [(IDSGroupStatusNotificationParameters *)v15 setClientJoinContextData:v39];

    goto LABEL_16;
  }

  v38 = [messageCopy objectForKey:v36];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = [messageCopy objectForKey:v36];
    goto LABEL_14;
  }

  [(IDSGroupStatusNotificationParameters *)v15 setClientJoinContextData:0];
LABEL_16:

  v41 = objc_opt_class();
  v42 = sub_10001B45C(v41, messageCopy, IDSGroupSessionURIToParticipantID);
  [(IDSGroupStatusNotificationParameters *)v15 setUrisToParticipantIDs:v42];

  v43 = objc_opt_class();
  v44 = sub_10001B45C(v43, messageCopy, IDSGroupSessionIsInitiatorKey);
  [(IDSGroupStatusNotificationParameters *)v15 setIsInitiator:v44];

  v45 = objc_opt_class();
  v111 = sub_10001B45C(v45, messageCopy, IDSContextTimeStamp);
  v46 = objc_opt_class();
  v47 = IDSGroupSessionIsUPlusOneKey;
  v48 = sub_10001B45C(v46, messageCopy, IDSGroupSessionIsUPlusOneKey);
  v49 = objc_opt_class();
  v50 = sub_10001B45C(v49, messageCopy, v47);
  bOOLValue2 = [v50 BOOLValue];

  v52 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    v53 = IDSLoggableDescriptionForObjectOnService();
    v54 = @"NO";
    *buf = 138413570;
    v127 = v53;
    if (bOOLValue)
    {
      v55 = @"YES";
    }

    else
    {
      v55 = @"NO";
    }

    if (bOOLValue2)
    {
      v54 = @"YES";
    }

    v128 = 2112;
    v129 = tokenCopy;
    v130 = 2112;
    v131 = iCopy;
    v132 = 2112;
    v133 = v117;
    v134 = 2112;
    v135 = v55;
    v136 = 2112;
    v137 = v54;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Process incoming fanout message: %@, fromToken: %@, fromURI: %@, specificOriginator: %@ fromStorage %@ isUPlusOne %@", buf, 0x3Eu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v56 = IDSLoggableDescriptionForObjectOnService();
    v57 = bOOLValue ? @"YES" : @"NO";
    v58 = bOOLValue2 ? @"YES" : @"NO";
    v106 = v57;
    v107 = v58;
    v105 = v117;
    v100 = tokenCopy;
    v104 = iCopy;
    v98 = v56;
    _IDSLogTransport();

    if (_IDSShouldLog())
    {
      IDSLoggableDescriptionForObjectOnService();
      v106 = v57;
      v107 = v58;
      v105 = v117;
      v100 = tokenCopy;
      v98 = v104 = iCopy;
      _IDSLogV();
    }
  }

  v59 = objc_opt_class();
  v119 = sub_10001B45C(v59, messageCopy, IDSFanoutMessageGroupMembersKey);
  v114 = [v119 __imArrayByApplyingBlock:&stru_100BDA7D8];
  v60 = [[NSUUID alloc] initWithUUIDString:v122];
  if (unsignedIntegerValue == 1)
  {
    participantData = [(IDSGroupStatusNotificationParameters *)v15 participantData];
  }

  else
  {
    participantData = 0;
  }

  v113 = [(IDSGroupStatusNotificationParameters *)v15 clientJoinContextData:v98];
  uUIDString = [v60 UUIDString];
  v62 = [uUIDString isEqualToString:v122];

  if (v62)
  {
    sessionController = [(IDSDGroupStatusNotificationController *)selfCopy sessionController];
    v64 = [sessionController sessionWithGroupUUID:v60];

    if (v64 && ([(__CFString *)iCopy URIByAddingOptionalPushToken:tokenCopy], v65 = objc_claimAutoreleasedReturnValue(), v66 = [v64 destinationsContainFromURI:v65], v65, (v66 & 1) == 0))
    {
      v75 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v127 = v122;
        v128 = 2112;
        v129 = iCopy;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "processIncomingParticipantUpdateMessage: We'll drop this participant update message for group %@ since %@ is not in this group!", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v99 = v122;
          v101 = iCopy;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v99 = v122;
            v101 = iCopy;
            _IDSLogV();
          }
        }
      }

      v76 = [IDSFoundationLog SessionController:v99];
      if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
      {
        destinations = [v64 destinations];
        *buf = 134218498;
        v127 = unsignedIntegerValue;
        v128 = 2112;
        v129 = iCopy;
        v130 = 2112;
        v131 = destinations;
        _os_log_fault_impl(&_mh_execute_header, v76, OS_LOG_TYPE_FAULT, "Dropping group session participant update due to membership mismatch { type: %lu, fromURI: %@, destinations: %@ }", buf, 0x20u);
      }
    }

    else
    {
      isInitiator = [(IDSGroupStatusNotificationParameters *)v15 isInitiator];
      bOOLValue3 = [isInitiator BOOLValue];

      if (unsignedIntegerValue == 2)
      {
        realTimeEncryptionController = [(IDSDGroupStatusNotificationController *)selfCopy realTimeEncryptionController];
        [realTimeEncryptionController removeActiveParticipant:tokenCopy forGroup:v122];

        goto LABEL_59;
      }

      if (unsignedIntegerValue != 1)
      {
LABEL_59:
        if (!v64)
        {
          goto LABEL_92;
        }

        goto LABEL_60;
      }

      if (v64)
      {
        v69 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          v70 = @"NO";
          if (bOOLValue3)
          {
            v70 = @"YES";
          }

          *buf = 138412290;
          v127 = v70;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Receive join from initiator: %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
        {
          v71 = bOOLValue3 ? @"YES" : @"NO";
          v99 = v71;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v99 = v71;
            _IDSLogV();
          }
        }

        if ((bOOLValue3 & 1) == 0)
        {
          [v64 receiveJoinNotificationFromAParticipant];
        }

        rawToken = [(__CFString *)tokenCopy rawToken];
        [v64 reportJoinReceivedOverPushFromToken:rawToken];

LABEL_60:
        if ([v64 handOffOverQREnabled])
        {
          if ((unsignedIntegerValue - 1) <= 1 && v111)
          {
            participantID = [(IDSGroupStatusNotificationParameters *)v15 participantID];
            [v111 doubleValue];
            v74 = [v64 shouldReportToClient:participantID timeStamp:unsignedIntegerValue type:1 overPush:?];

            if ((v74 & 1) == 0)
            {
              goto LABEL_110;
            }
          }

          else
          {
            v77 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
            {
              [v111 doubleValue];
              *buf = 134218240;
              v127 = unsignedIntegerValue;
              v128 = 2048;
              v129 = v78;
              _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "Should not dedup, updateType: %lu, timeStamp: %f", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                [v111 doubleValue];
                v102 = v79;
                v99 = unsignedIntegerValue;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  [v111 doubleValue];
                  v99 = unsignedIntegerValue;
                  _IDSLogV();
                }
              }
            }
          }

          goto LABEL_109;
        }

LABEL_92:
        v83 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          handOffOverQREnabled = [v64 handOffOverQREnabled];
          v85 = @"NO";
          if (v64)
          {
            v86 = @"NO";
          }

          else
          {
            v86 = @"YES";
          }

          if (handOffOverQREnabled)
          {
            v85 = @"YES";
          }

          *buf = 138412546;
          v127 = v86;
          v128 = 2112;
          v129 = v85;
          _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "Should not dedup, session == nil: %@ Handoff Over QR Feature is Enabled: %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
        {
          v87 = v64 ? @"NO" : @"YES";
          v88 = [v64 handOffOverQREnabled:v99]? @"YES" : @"NO";
          v99 = v87;
          v103 = v88;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            [v64 handOffOverQREnabled:v87];
            v99 = v87;
            _IDSLogV();
          }
        }

LABEL_109:
        v89 = [IDSGroupSessionParticipantUpdate alloc];
        participantID2 = [(IDSGroupStatusNotificationParameters *)v15 participantID];
        unsignedLongLongValue = [participantID2 unsignedLongLongValue];
        v92 = [(__CFString *)iCopy URIByAddingPushToken:tokenCopy];
        urisToParticipantIDs = [(IDSGroupStatusNotificationParameters *)v15 urisToParticipantIDs];
        LOBYTE(v99) = bOOLValue;
        v94 = [v89 initWithGroupUUID:v60 isInitiator:bOOLValue3 participantIdentifier:unsignedLongLongValue participantDestinationURI:v92 participantUpdateType:unsignedIntegerValue participantUpdateSubtype:v109 fromServer:v99 serverDate:v115 participantData:participantData clientContextData:v113 members:v114 participantIDs:urisToParticipantIDs relaySessionID:0];

        broadcaster = [(IDSDGroupStatusNotificationController *)selfCopy broadcaster];
        [broadcaster broadcastGroupSessionParticipantUpdate:v94 onTopic:topicCopy toURI:rICopy fromURI:iCopy context:contextCopy];

        goto LABEL_110;
      }

      if (bOOLValue3 & 1 | ((bOOLValue2 & 1) == 0))
      {
        v80 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
        {
          v81 = @"NO";
          if (bOOLValue2)
          {
            v81 = @"YES";
          }

          *buf = 138412546;
          v127 = v122;
          v128 = 2112;
          v129 = v81;
          _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "Passing the join event to client/s. There is no session for groupID %@ and isUPlusOne:%@ but the join push is from Initiator", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
        {
          v82 = bOOLValue2 ? @"YES" : @"NO";
          v99 = v122;
          v101 = v82;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v99 = v122;
            v101 = v82;
            _IDSLogV();
          }
        }

        goto LABEL_92;
      }

      v96 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v127 = v122;
        _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "Couldn't pass the join event to clients. There is no U + 1 session for groupID %@ and the join push is not from Initiator.", buf, 0xCu);
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

  else
  {
    v64 = +[IDSFoundationLog SessionController];
    if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
    {
      sub_10091BA40(v60);
    }
  }

LABEL_110:
}

- (void)processIncomingParticipantDataUpdateMessage:(id)message fromToken:(id)token fromURI:(id)i toURI:(id)rI topic:(id)topic idsMessageContext:(id)context
{
  messageCopy = message;
  tokenCopy = token;
  iCopy = i;
  rICopy = rI;
  topicCopy = topic;
  contextCopy = context;
  v83 = objc_alloc_init(IDSGroupStatusNotificationParameters);
  selfCopy = self;
  uniqueID = [(IDSDAccount *)self->_account uniqueID];
  v76 = [(IDSDGroupStatusNotificationController *)self _specificOriginatorfromURI:iCopy senderToken:tokenCopy accountUniqueID:uniqueID];

  v16 = objc_opt_class();
  v79 = sub_10001B45C(v16, messageCopy, IDSFanoutMessageGroupIDKey);
  v17 = objc_opt_class();
  v18 = sub_10001B45C(v17, messageCopy, IDSDSessionMessageJoinNotificationKey);
  unsignedIntegerValue = [v18 unsignedIntegerValue];

  v19 = objc_opt_class();
  v20 = IDSMessageContextFromServerStorageKey;
  v21 = sub_10001B45C(v19, contextCopy, IDSMessageContextFromServerStorageKey);
  v22 = objc_opt_class();
  v23 = sub_10001B45C(v22, contextCopy, v20);
  bOOLValue = [v23 BOOLValue];

  v24 = [contextCopy objectForKey:IDSMessageContextServerTimestampKey];
  [v24 doubleValue];
  v74 = [NSDate dateWithTimeIntervalSince1970:?];

  v25 = objc_opt_class();
  v26 = sub_10001B45C(v25, messageCopy, IDSGroupSessionIsInitiatorKey);
  [(IDSGroupStatusNotificationParameters *)v83 setIsInitiator:v26];

  v27 = objc_opt_class();
  v28 = sub_10001B45C(v27, messageCopy, IDSSessionParticipantIDKey);
  [(IDSGroupStatusNotificationParameters *)v83 setParticipantID:v28];

  v29 = IDSSessionParticipantDataKey;
  v30 = [messageCopy objectForKey:IDSSessionParticipantDataKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = [messageCopy objectForKey:v29];
    v32 = [NSData _IDSDataFromBase64String:v31];
LABEL_5:
    v33 = v32;
    [(IDSGroupStatusNotificationParameters *)v83 setParticipantData:v32];

    goto LABEL_7;
  }

  v31 = [messageCopy objectForKey:v29];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = [messageCopy objectForKey:v29];
    goto LABEL_5;
  }

  [(IDSGroupStatusNotificationParameters *)v83 setParticipantData:0];
LABEL_7:

  v34 = IDSGroupSessionClientContextDataKey;
  v35 = [messageCopy objectForKey:IDSGroupSessionClientContextDataKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = [messageCopy objectForKey:v34];
    v37 = [NSData _IDSDataFromBase64String:v36];
LABEL_11:
    v38 = v37;
    [(IDSGroupStatusNotificationParameters *)v83 setClientJoinContextData:v37];

    goto LABEL_13;
  }

  v36 = [messageCopy objectForKey:v34];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = [messageCopy objectForKey:v34];
    goto LABEL_11;
  }

  [(IDSGroupStatusNotificationParameters *)v83 setClientJoinContextData:0];
LABEL_13:

  v39 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = IDSLoggableDescriptionForObjectOnService();
    v41 = @"NO";
    *buf = 138413314;
    v85 = v40;
    if (bOOLValue)
    {
      v41 = @"YES";
    }

    v86 = 2112;
    v87 = tokenCopy;
    v88 = 2112;
    v89 = iCopy;
    v90 = 2112;
    v91 = v76;
    v92 = 2112;
    v93 = v41;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Process incoming fanout message: %@, fromToken: %@, fromID: %@, specificOriginator: %@ fromStorage %@", buf, 0x34u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v42 = IDSLoggableDescriptionForObjectOnService();
    v43 = bOOLValue ? @"YES" : @"NO";
    v66 = v76;
    v67 = v43;
    v64 = tokenCopy;
    v65 = iCopy;
    v63 = v42;
    _IDSLogTransport();

    if (_IDSShouldLog())
    {
      IDSLoggableDescriptionForObjectOnService();
      v66 = v76;
      v67 = v43;
      v64 = tokenCopy;
      v63 = v65 = iCopy;
      _IDSLogV();
    }
  }

  v44 = objc_opt_class();
  v77 = sub_10001B45C(v44, messageCopy, IDSFanoutMessageGroupMembersKey);
  v72 = [v77 __imArrayByApplyingBlock:&stru_100BDA7F8];
  v45 = [[NSUUID alloc] initWithUUIDString:v79];
  participantData = [(IDSGroupStatusNotificationParameters *)v83 participantData];
  clientJoinContextData = [(IDSGroupStatusNotificationParameters *)v83 clientJoinContextData];
  uUIDString = [v45 UUIDString];
  v47 = [uUIDString isEqualToString:v79];

  if (v47)
  {
    sessionController = [(IDSDGroupStatusNotificationController *)self sessionController];
    v49 = [sessionController sessionWithGroupUUID:v45];

    if (v49 && ([iCopy URIByAddingOptionalPushToken:tokenCopy], v50 = objc_claimAutoreleasedReturnValue(), v51 = -[NSObject destinationsContainFromURI:](v49, "destinationsContainFromURI:", v50), v50, (v51 & 1) == 0))
    {
      v61 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v85 = v79;
        v86 = 2112;
        v87 = iCopy;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "processIncomingParticipantDataUpdateMessage: We'll drop this participant update message for group %@ since %@ is not in this group!", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v63 = v79;
          v64 = iCopy;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v63 = v79;
            v64 = iCopy;
            _IDSLogV();
          }
        }
      }

      v59 = [IDSFoundationLog SessionController:v63];
      if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
      {
        destinations = [v49 destinations];
        *buf = 134218498;
        v85 = unsignedIntegerValue;
        v86 = 2112;
        v87 = iCopy;
        v88 = 2112;
        v89 = destinations;
        _os_log_fault_impl(&_mh_execute_header, v59, OS_LOG_TYPE_FAULT, "Dropping group session participant data update due to membership mismatch { type: %lu, fromURI: %@, destinations: %@ }", buf, 0x20u);
      }
    }

    else
    {
      v52 = [IDSGroupSessionParticipantUpdate alloc];
      isInitiator = [(IDSGroupStatusNotificationParameters *)v83 isInitiator];
      bOOLValue2 = [isInitiator BOOLValue];
      participantID = [(IDSGroupStatusNotificationParameters *)v83 participantID];
      unsignedLongLongValue = [participantID unsignedLongLongValue];
      v57 = [iCopy URIByAddingPushToken:tokenCopy];
      urisToParticipantIDs = [(IDSGroupStatusNotificationParameters *)v83 urisToParticipantIDs];
      LOBYTE(v63) = bOOLValue;
      v59 = [v52 initWithGroupUUID:v45 isInitiator:bOOLValue2 participantIdentifier:unsignedLongLongValue participantDestinationURI:v57 participantUpdateType:unsignedIntegerValue participantUpdateSubtype:0 fromServer:v63 serverDate:v74 participantData:participantData clientContextData:clientJoinContextData members:v72 participantIDs:urisToParticipantIDs relaySessionID:0];

      broadcaster = [(IDSDGroupStatusNotificationController *)selfCopy broadcaster];
      [broadcaster broadcastGroupSessionParticipantDataUpdate:v59 onTopic:topicCopy toURI:rICopy fromURI:iCopy];
    }
  }

  else
  {
    v49 = +[IDSFoundationLog SessionController];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
    {
      sub_10091BB60(v45);
    }
  }
}

- (void)pushTokenLookup:(id)lookup forGroup:(id)group sessionID:(id)d fromURI:(id)i account:(id)account completionBlock:(id)block
{
  lookupCopy = lookup;
  groupCopy = group;
  dCopy = d;
  iCopy = i;
  accountCopy = account;
  blockCopy = block;
  v19 = lookupCopy;
  _registrationCert = [accountCopy _registrationCert];
  service = [accountCopy service];
  identifier = [service identifier];

  if (!self->_groupMemberPushTokens)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    groupMemberPushTokens = self->_groupMemberPushTokens;
    self->_groupMemberPushTokens = Mutable;
  }

  objc_initWeak(location, self);
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1003E231C;
  v40[3] = &unk_100BDA820;
  objc_copyWeak(&v46, location);
  v25 = dCopy;
  v41 = v25;
  v26 = groupCopy;
  v42 = v26;
  v27 = v19;
  v43 = v27;
  selfCopy = self;
  v28 = blockCopy;
  v45 = v28;
  v29 = objc_retainBlock(v40);
  if ([v27 count])
  {
    v30 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003E2E70;
    block[3] = &unk_100BDA848;
    v35 = v27;
    v36 = _registrationCert;
    v37 = iCopy;
    v38 = identifier;
    v39 = v29;
    dispatch_async(v30, block);
  }

  else
  {
    v31 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Cannot find the push tokens, missing recipientIDs.", buf, 2u);
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

  objc_destroyWeak(&v46);
  objc_destroyWeak(location);
}

- (id)_specificOriginatorfromURI:(id)i senderToken:(id)token accountUniqueID:(id)d
{
  iCopy = i;
  tokenCopy = token;
  dCopy = d;
  prefixedURI = [iCopy prefixedURI];
  v11 = [prefixedURI hasPrefix:@"device:"];

  if (v11)
  {
    unprefixedURI = [iCopy unprefixedURI];
  }

  else
  {
    unprefixedURI = 0;
  }

  v13 = +[IDSPairingManager sharedInstance];
  pairedDeviceUniqueID = [v13 pairedDeviceUniqueID];
  v15 = [unprefixedURI isEqualToIgnoringCase:pairedDeviceUniqueID];

  prefixedURI2 = [iCopy prefixedURI];
  v17 = [prefixedURI2 isEqualToIgnoringCase:IDSDefaultPairedDevice];

  if (tokenCopy)
  {
    if (!iCopy)
    {
      v19 = 0;
      goto LABEL_11;
    }

    v18 = [iCopy URIByAddingPushToken:tokenCopy];
LABEL_9:
    v19 = v18;
LABEL_11:
    v19 = v19;
    v20 = v19;
    goto LABEL_12;
  }

  if ((v17 | v15))
  {
    v18 = iCopy;
    goto LABEL_9;
  }

  v22 = +[IDSDAccountController sharedInstance];
  v23 = [v22 accountWithUniqueID:dCopy];

  if (!v23)
  {
    v31 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v38 = "GroupStatusNotificationController";
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s - No account found to build specificOriginator, bailing...", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    goto LABEL_39;
  }

  v24 = [v23 dependentRegistrationMatchingUUID:unprefixedURI];
  v25 = v24;
  if (!v24)
  {
    v32 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v38 = "GroupStatusNotificationController";
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s - No device found to build specificOriginator, bailing...", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    goto LABEL_39;
  }

  v26 = [v24 _dataForKey:IDSDevicePropertyPushToken];
  if (![v26 length])
  {
    v33 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v38 = "GroupStatusNotificationController";
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s - No device push token found to build specificOriginator, bailing...", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

LABEL_39:
    v19 = 0;
    goto LABEL_40;
  }

  v36 = [v25 _arrayForKey:IDSDevicePropertyIdentities];
  v35 = [v36 count];
  if (v35)
  {
    firstObject = [v36 firstObject];
    v28 = [firstObject _stringForKey:@"uri"];

    v29 = _IDSCopyIDForTokenWithURI();
    v19 = [IDSURI URIWithPrefixedURI:v29];

    v30 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v38 = iCopy;
      v39 = 2112;
      v40 = v19;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "original fromID %@ -> resulting specificOriginator %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  else
  {
    v34 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v38 = "GroupStatusNotificationController";
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%s - No device identity found to build specificOriginator, bailing...", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    v19 = 0;
  }

  if (v35)
  {
    goto LABEL_11;
  }

LABEL_40:
  v20 = 0;
LABEL_12:

  return v20;
}

- (id)getURIFromPushToken:(id)token forGroup:(id)group
{
  tokenCopy = token;
  groupCopy = group;
  v24 = [(NSMutableDictionary *)self->_groupMemberPushTokens objectForKeyedSubscript:?];
  if (!v24)
  {
    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = groupCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Couldn't find the tokens for group %@", buf, 0xCu);
    }

    if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
    {
      goto LABEL_26;
    }

LABEL_25:
    _IDSLogV();
    goto LABEL_26;
  }

  rawToken = [tokenCopy rawToken];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v21 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = groupCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Coudln't find the URI for the given token for group %@. the pushToken is not NSData.", buf, 0xCu);
    }

    if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v24;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v9)
  {
    v10 = *v27;
    v11 = kIDSQRAllocateKey_RecipientPushToken;
    v12 = kIDSQRAllocateKey_RecipientURI;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = [v14 objectForKeyedSubscript:v11];
        v16 = [v14 objectForKeyedSubscript:v12];
        rawToken2 = [tokenCopy rawToken];
        v18 = [rawToken2 isEqualToData:v15];

        if (v18)
        {

          goto LABEL_27;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v19 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = tokenCopy;
    v32 = 2112;
    v33 = groupCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Coudln't find the URI for the given token %@ for group %@.", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

LABEL_26:
  v16 = 0;
LABEL_27:

  return v16;
}

@end