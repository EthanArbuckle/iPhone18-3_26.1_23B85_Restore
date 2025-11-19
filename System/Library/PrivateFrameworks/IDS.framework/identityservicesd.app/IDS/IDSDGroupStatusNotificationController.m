@interface IDSDGroupStatusNotificationController
+ (IDSDGroupStatusNotificationController)sharedInstance;
- (IDSDGroupStatusNotificationController)init;
- (IDSDGroupStatusNotificationController)initWithSessionController:(id)a3 realTimeEncryptionController:(id)a4 broadcaster:(id)a5;
- (double)_multiwayFTMessageSendTimeout;
- (id)_currentDateString;
- (id)_groupMembersSupportingURILessUpdates:(id)a3 groupID:(id)a4;
- (id)_specificOriginatorfromURI:(id)a3 senderToken:(id)a4 accountUniqueID:(id)a5;
- (id)getURIFromPushToken:(id)a3 forGroup:(id)a4;
- (id)participantsForGroupID:(id)a3;
- (id)pushTokensForGroupID:(id)a3 capability:(id)a4;
- (void)_sendFanoutMessage:(id)a3 account:(id)a4 toGroupMembers:(id)a5 fromURI:(id)a6 command:(int64_t)a7 commandContext:(id)a8 toGroup:(id)a9 sessionID:(id)a10 reason:(unsigned __int8)a11 waitForMadridAcks:(BOOL)a12 isUPlusOne:(BOOL)a13 isInitiator:(id)a14 quickRelayUserType:(id)a15 requiredCapabilites:(id)a16 requiredLackOfCapabilities:(id)a17 completionBlock:(id)a18;
- (void)_sendFanoutMessage:(id)a3 account:(id)a4 toGroupMembers:(id)a5 fromURI:(id)a6 command:(int64_t)a7 toGroup:(id)a8 sessionID:(id)a9 reason:(unsigned __int8)a10 isUPlusOne:(BOOL)a11 isInitiator:(id)a12 quickRelayUserType:(id)a13;
- (void)_sendFanoutMessage:(id)a3 account:(id)a4 toGroupMembers:(id)a5 fromURI:(id)a6 command:(int64_t)a7 toGroup:(id)a8 sessionID:(id)a9 reason:(unsigned __int8)a10 isUPlusOne:(BOOL)a11 isInitiator:(id)a12 quickRelayUserType:(id)a13 requiredCapabilites:(id)a14 requiredLackOfCapabilities:(id)a15;
- (void)dealloc;
- (void)notifyJoinToGroup:(id)a3 members:(id)a4 params:(id)a5 fromAccount:(id)a6 fromURI:(id)a7 sessionID:(id)a8 isUPlusOne:(BOOL)a9 completionBlock:(id)a10;
- (void)notifyJoinToSpecificMembersOfGroup:(id)a3 members:(id)a4 params:(id)a5 fromAccount:(id)a6 fromURI:(id)a7 sessionID:(id)a8 isUPlusOne:(BOOL)a9 requiredCapabilites:(id)a10 requiredLackOfCapabilities:(id)a11;
- (void)notifyLeaveToGroup:(id)a3 members:(id)a4 params:(id)a5 fromAccount:(id)a6 fromURI:(id)a7 sessionID:(id)a8 isUPlusOne:(BOOL)a9;
- (void)notifyLeaveToSpecificMembersOfGroup:(id)a3 members:(id)a4 params:(id)a5 fromAccount:(id)a6 fromURI:(id)a7 sessionID:(id)a8 isUPlusOne:(BOOL)a9 requiredCapabilites:(id)a10 requiredLackOfCapabilities:(id)a11;
- (void)processIncomingParticipantDataUpdateMessage:(id)a3 fromToken:(id)a4 fromURI:(id)a5 toURI:(id)a6 topic:(id)a7 idsMessageContext:(id)a8;
- (void)processIncomingParticipantUpdateMessage:(id)a3 fromToken:(id)a4 fromURI:(id)a5 toURI:(id)a6 topic:(id)a7 idsMessageContext:(id)a8;
- (void)pushTokenLookup:(id)a3 forGroup:(id)a4 sessionID:(id)a5 fromURI:(id)a6 account:(id)a7 completionBlock:(id)a8;
- (void)updateMembers:(id)a3 toGroup:(id)a4 withContext:(id)a5 params:(id)a6 fromAccount:(id)a7 fromURI:(id)a8 sessionID:(id)a9 messagingCapabilities:(id)a10 reason:(unsigned __int8)a11 isUPlusOne:(BOOL)a12 completionBlock:(id)a13;
- (void)updateParticipantDataToMembers:(id)a3 toGroup:(id)a4 withContext:(id)a5 params:(id)a6 fromAccount:(id)a7 fromURI:(id)a8 sessionID:(id)a9 isUPlusOne:(BOOL)a10;
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

- (IDSDGroupStatusNotificationController)initWithSessionController:(id)a3 realTimeEncryptionController:(id)a4 broadcaster:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
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

    objc_storeStrong(&v12->_sessionController, a3);
    objc_storeStrong(&v12->_realTimeEncryptionController, a4);
    objc_storeStrong(&v12->_broadcaster, a5);
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

- (id)pushTokensForGroupID:(id)a3 capability:(id)a4
{
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_groupIDToCapabilityToParticipantPushTokens objectForKeyedSubscript:a3];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:v6];
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

- (id)participantsForGroupID:(id)a3
{
  v4 = a3;
  if (v4)
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
        if ([v11 isEqualToString:v4])
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
    v27 = v4;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Found participants for group %@", buf, 0xCu);
  }

  v15 = [v4 copy];
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

- (void)notifyJoinToGroup:(id)a3 members:(id)a4 params:(id)a5 fromAccount:(id)a6 fromURI:(id)a7 sessionID:(id)a8 isUPlusOne:(BOOL)a9 completionBlock:(id)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v61 = a7;
  v19 = a8;
  v59 = a10;
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

  v23 = v15;
  if (v23)
  {
    CFDictionarySetValue(Mutable, IDSFanoutMessageGroupIDKey, v23);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B578();
  }

  v58 = v23;

  v24 = [v16 __imArrayByApplyingBlock:&stru_100BDA8B8];
  if (v24)
  {
    CFDictionarySetValue(Mutable, IDSFanoutMessageGroupMembersKey, v24);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B600();
  }

  v25 = v19;
  if (v25)
  {
    CFDictionarySetValue(Mutable, IDSDSessionMessageSessionID, v25);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B688();
  }

  v26 = [v17 isInitiator];
  if (v26)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionIsInitiatorKey, v26);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B710();
  }

  v27 = [NSNumber numberWithBool:a9];
  if (v27)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionIsUPlusOneKey, v27);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B798();
  }

  v28 = [(IDSDGroupStatusNotificationController *)self sessionController];
  v29 = [v28 sessionWithUniqueID:v25];

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

  v31 = [v17 participantID];
  if (v31)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionParticipantIDKey, v31);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B8A8();
  }

  v32 = [v17 participantData];
  if (v32)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionParticipantDataKey, v32);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B930();
  }

  v33 = [v17 urisToParticipantIDs];
  if (v33)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionURIToParticipantID, v33);
  }

  v57 = v29;
  v34 = v16;

  v35 = [v17 clientJoinContextData];
  if (v35)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionClientContextDataKey, v35);
  }

  v36 = [v18 primaryRegistration];
  v37 = [v36 pushToken];
  v38 = v18;
  v39 = [v18 service];
  v40 = [v39 identifier];
  v56 = [IDSPushToken pushTokenWithData:v37 withServiceLoggingHint:v40];

  if (a9)
  {
    v41 = [v17 commandContext];
  }

  else
  {
    v42 = [v17 joinType];
    v43 = [v42 integerValue];

    if (v43 != 1)
    {
      v44 = 0;
      goto LABEL_50;
    }

    v41 = [NSNumber numberWithUnsignedInteger:1];
  }

  v44 = v41;
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
  v69 = v61;
  v74 = 207;
  v70 = v44;
  v71 = v25;
  v75 = a9;
  v72 = v17;
  v73 = v59;
  v63 = v59;
  v60 = v17;
  v55 = v25;
  v45 = v44;
  v46 = v61;
  v47 = v38;
  v48 = v58;
  v49 = v34;
  v50 = Mutable;
  v51 = objc_retainBlock(v64);
  v52 = [(IDSDGroupStatusNotificationController *)self realTimeEncryptionController];
  v53 = [v52 createRealTimeEncryptionFullIdentityForDevice:v56 completionBlock:v51];

  v54 = [(IDSDGroupStatusNotificationController *)self sessionController];
  [v54 updateCriticalReliabilityState];
}

- (void)notifyJoinToSpecificMembersOfGroup:(id)a3 members:(id)a4 params:(id)a5 fromAccount:(id)a6 fromURI:(id)a7 sessionID:(id)a8 isUPlusOne:(BOOL)a9 requiredCapabilites:(id)a10 requiredLackOfCapabilities:(id)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v64 = a7;
  v20 = a8;
  v62 = a10;
  v60 = a11;
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

  v24 = v16;
  if (v24)
  {
    CFDictionarySetValue(Mutable, IDSFanoutMessageGroupIDKey, v24);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B578();
  }

  v59 = v24;

  v25 = [v17 __imArrayByApplyingBlock:&stru_100BDA8B8];
  if (v25)
  {
    CFDictionarySetValue(Mutable, IDSFanoutMessageGroupMembersKey, v25);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B600();
  }

  v26 = v20;
  if (v26)
  {
    CFDictionarySetValue(Mutable, IDSDSessionMessageSessionID, v26);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B688();
  }

  v27 = [v18 isInitiator];
  if (v27)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionIsInitiatorKey, v27);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B710();
  }

  v28 = [NSNumber numberWithBool:a9];
  if (v28)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionIsUPlusOneKey, v28);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B798();
  }

  v29 = [(IDSDGroupStatusNotificationController *)self sessionController];
  v30 = [v29 sessionWithUniqueID:v26];

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

  v32 = [v18 participantID];
  if (v32)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionParticipantIDKey, v32);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B8A8();
  }

  v33 = [v18 participantData];
  if (v33)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionParticipantDataKey, v33);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B930();
  }

  v34 = [v18 urisToParticipantIDs];
  if (v34)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionURIToParticipantID, v34);
  }

  v58 = v30;
  v35 = v17;

  v36 = [v18 clientJoinContextData];
  if (v36)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionClientContextDataKey, v36);
  }

  v37 = [v19 primaryRegistration];
  v38 = [v37 pushToken];
  v39 = v19;
  v40 = [v19 service];
  v41 = [v40 identifier];
  v57 = [IDSPushToken pushTokenWithData:v38 withServiceLoggingHint:v41];

  if (a9)
  {
    v42 = [v18 commandContext];
  }

  else
  {
    v43 = [v18 joinType];
    v44 = [v43 integerValue];

    if (v44 != 1)
    {
      v45 = 0;
      goto LABEL_50;
    }

    v42 = [NSNumber numberWithUnsignedInteger:1];
  }

  v45 = v42;
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
  v72 = v64;
  v73 = v45;
  v74 = v26;
  v79 = a9;
  v75 = v18;
  v76 = v62;
  v78 = 207;
  v77 = v60;
  v66 = v60;
  v63 = v62;
  v61 = v18;
  v56 = v26;
  v46 = v45;
  v47 = v64;
  v48 = v39;
  v49 = v59;
  v50 = v35;
  v51 = Mutable;
  v52 = objc_retainBlock(v67);
  v53 = [(IDSDGroupStatusNotificationController *)self realTimeEncryptionController];
  v54 = [v53 createRealTimeEncryptionFullIdentityForDevice:v57 completionBlock:v52];

  v55 = [(IDSDGroupStatusNotificationController *)self sessionController];
  [v55 updateCriticalReliabilityState];
}

- (id)_groupMembersSupportingURILessUpdates:(id)a3 groupID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSServerBag sharedInstance];
  v9 = [v8 objectForKey:@"qr-session-particiapntID-URI-mapping-included"];

  v10 = &__NSArray0__struct;
  if (_os_feature_enabled_impl() && !v9)
  {
    v10 = +[NSMutableArray array];
    v23 = v7;
    v22 = [(NSMutableDictionary *)self->_groupIDToCapabilityToParticipantPushTokens objectForKeyedSubscript:v7];
    v11 = [v22 objectForKeyedSubscript:IDSRegistrationPropertySupportsURIlessMembershipUpdates];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v24 = v6;
    v12 = v6;
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
          v18 = [v17 pushToken];
          v19 = [v18 rawToken];
          v20 = [v11 containsObject:v19];

          if (v20)
          {
            [v10 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v14);
    }

    v7 = v23;
    v6 = v24;
  }

  return v10;
}

- (void)notifyLeaveToGroup:(id)a3 members:(id)a4 params:(id)a5 fromAccount:(id)a6 fromURI:(id)a7 sessionID:(id)a8 isUPlusOne:(BOOL)a9
{
  v15 = a3;
  v39 = a4;
  v16 = a5;
  v38 = a6;
  v37 = a7;
  v17 = a8;
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

  if (a9)
  {
    v36 = [v16 commandContext];
  }

  else
  {
    v36 = 0;
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

  v22 = [v16 clientLeaveContextData];
  if (v22)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionClientContextDataKey, v22);
  }

  v23 = v17;
  if (v23)
  {
    CFDictionarySetValue(Mutable, IDSDSessionMessageSessionID, v23);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B688();
  }

  v24 = v15;
  if (v24)
  {
    CFDictionarySetValue(Mutable, IDSFanoutMessageGroupIDKey, v24);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B578();
  }

  v25 = [v39 __imArrayByApplyingBlock:&stru_100BDA8B8];
  if (v25)
  {
    CFDictionarySetValue(Mutable, IDSFanoutMessageGroupMembersKey, v25);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B600();
  }

  v26 = [v16 participantID];
  if (v26)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionParticipantIDKey, v26);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B8A8();
  }

  v27 = [v16 isInitiator];
  if (v27)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionIsInitiatorKey, v27);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B710();
  }

  v28 = [NSNumber numberWithBool:a9];
  if (v28)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionIsUPlusOneKey, v28);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B798();
  }

  v29 = [(IDSDGroupStatusNotificationController *)self sessionController];
  v30 = [v29 sessionWithUniqueID:v23];

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

  v32 = [v16 isInitiator];
  v33 = [v16 quickRelayUserType];
  BYTE2(v35) = a9;
  LOWORD(v35) = 0;
  [IDSDGroupStatusNotificationController _sendFanoutMessage:"_sendFanoutMessage:account:toGroupMembers:fromURI:command:commandContext:toGroup:sessionID:reason:waitForMadridAcks:isUPlusOne:isInitiator:quickRelayUserType:requiredCapabilites:requiredLackOfCapabilities:completionBlock:" account:Mutable toGroupMembers:v38 fromURI:v39 command:v37 commandContext:208 toGroup:v36 sessionID:v24 reason:v23 waitForMadridAcks:v35 isUPlusOne:v32 isInitiator:v33 quickRelayUserType:0 requiredCapabilites:0 requiredLackOfCapabilities:0 completionBlock:?];

  v34 = [(IDSDGroupStatusNotificationController *)self sessionController];
  [v34 updateCriticalReliabilityState];
}

- (void)notifyLeaveToSpecificMembersOfGroup:(id)a3 members:(id)a4 params:(id)a5 fromAccount:(id)a6 fromURI:(id)a7 sessionID:(id)a8 isUPlusOne:(BOOL)a9 requiredCapabilites:(id)a10 requiredLackOfCapabilities:(id)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v41 = a6;
  v40 = a7;
  v19 = a8;
  v39 = a10;
  v38 = a11;
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

  v24 = v19;
  if (v24)
  {
    CFDictionarySetValue(Mutable, IDSDSessionMessageSessionID, v24);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B688();
  }

  v25 = v16;
  if (v25)
  {
    CFDictionarySetValue(Mutable, IDSFanoutMessageGroupIDKey, v25);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B578();
  }

  v37 = v25;

  v26 = [v17 __imArrayByApplyingBlock:&stru_100BDA8B8];
  if (v26)
  {
    CFDictionarySetValue(Mutable, IDSFanoutMessageGroupMembersKey, v26);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B600();
  }

  v27 = [v18 participantID];
  if (v27)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionParticipantIDKey, v27);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B8A8();
  }

  v28 = [v18 isInitiator];
  if (v28)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionIsInitiatorKey, v28);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B710();
  }

  v29 = [NSNumber numberWithBool:a9];
  if (v29)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionIsUPlusOneKey, v29);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B798();
  }

  v30 = [(IDSDGroupStatusNotificationController *)self sessionController];
  v31 = [v30 sessionWithUniqueID:v24];

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

  v33 = [v18 isInitiator];
  v34 = [v18 quickRelayUserType];
  BYTE1(v36) = a9;
  LOBYTE(v36) = 0;
  [(IDSDGroupStatusNotificationController *)self _sendFanoutMessage:Mutable account:v41 toGroupMembers:v17 fromURI:v40 command:208 toGroup:v37 sessionID:v24 reason:v36 isUPlusOne:v33 isInitiator:v34 quickRelayUserType:v39 requiredCapabilites:v38 requiredLackOfCapabilities:?];

  v35 = [(IDSDGroupStatusNotificationController *)self sessionController];
  [v35 updateCriticalReliabilityState];
}

- (void)updateMembers:(id)a3 toGroup:(id)a4 withContext:(id)a5 params:(id)a6 fromAccount:(id)a7 fromURI:(id)a8 sessionID:(id)a9 messagingCapabilities:(id)a10 reason:(unsigned __int8)a11 isUPlusOne:(BOOL)a12 completionBlock:(id)a13
{
  v58 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v57 = a7;
  v52 = a8;
  v21 = a9;
  v51 = a10;
  v22 = a13;
  v23 = im_primary_base_queue();
  dispatch_assert_queue_V2(v23);

  v24 = [NSNumber numberWithUnsignedChar:3];
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v26 = v18;
  if (v26)
  {
    CFDictionarySetValue(Mutable, IDSFanoutMessageGroupIDKey, v26);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B578();
  }

  v27 = v21;
  if (v27)
  {
    CFDictionarySetValue(Mutable, IDSDSessionMessageSessionID, v27);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B688();
  }

  v56 = v27;

  v28 = [v58 __imArrayByApplyingBlock:&stru_100BDA8B8];
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

  v30 = [v20 isInitiator];
  if (v30)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionIsInitiatorKey, v30);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B710();
  }

  v31 = [v20 participantID];
  if (v31)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionParticipantIDKey, v31);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B8A8();
  }

  v32 = [v20 participantData];
  if (v32)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionParticipantDataKey, v32);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B930();
  }

  v33 = [v20 urisToParticipantIDs];
  if (v33)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionURIToParticipantID, v33);
  }

  v55 = v22;

  if (v19)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionClientContextDataKey, v19);
  }

  v47 = [(IDSDGroupStatusNotificationController *)self _groupMembersSupportingURILessUpdates:v58 groupID:v26];
  v48 = v26;
  v49 = [v58 mutableCopy];
  [v49 removeObjectsInArray:v47];
  v54 = [(__CFDictionary *)Mutable mutableCopy];
  [v54 setObject:0 forKeyedSubscript:IDSGroupSessionURIToParticipantID];
  v34 = [v20 isInitiator];
  v35 = [v51 requiredCapabilities];
  v36 = [v35 allObjects];
  [v51 requiredMissingCapabilities];
  v38 = v37 = v20;
  v39 = [v38 allObjects];
  BYTE2(v45) = a12;
  BYTE1(v45) = 1;
  LOBYTE(v45) = a11;
  [IDSDGroupStatusNotificationController _sendFanoutMessage:"_sendFanoutMessage:account:toGroupMembers:fromURI:command:commandContext:toGroup:sessionID:reason:waitForMadridAcks:isUPlusOne:isInitiator:quickRelayUserType:requiredCapabilites:requiredLackOfCapabilities:completionBlock:" account:Mutable toGroupMembers:v57 fromURI:v58 command:v52 commandContext:209 toGroup:0 sessionID:v48 reason:v56 waitForMadridAcks:v45 isUPlusOne:v34 isInitiator:0 quickRelayUserType:v36 requiredCapabilites:v39 requiredLackOfCapabilities:v55 completionBlock:?];

  if ([v47 count])
  {
    v40 = [v37 isInitiator];
    v41 = [v51 requiredCapabilities];
    v42 = [v41 allObjects];
    v43 = [v51 requiredMissingCapabilities];
    v44 = [v43 allObjects];
    BYTE2(v46) = a12;
    BYTE1(v46) = 1;
    LOBYTE(v46) = a11;
    [IDSDGroupStatusNotificationController _sendFanoutMessage:"_sendFanoutMessage:account:toGroupMembers:fromURI:command:commandContext:toGroup:sessionID:reason:waitForMadridAcks:isUPlusOne:isInitiator:quickRelayUserType:requiredCapabilites:requiredLackOfCapabilities:completionBlock:" account:v54 toGroupMembers:v57 fromURI:v47 command:v52 commandContext:209 toGroup:0 sessionID:v48 reason:v56 waitForMadridAcks:v46 isUPlusOne:v40 isInitiator:0 quickRelayUserType:v42 requiredCapabilites:v44 requiredLackOfCapabilities:v55 completionBlock:?];
  }
}

- (void)updateParticipantDataToMembers:(id)a3 toGroup:(id)a4 withContext:(id)a5 params:(id)a6 fromAccount:(id)a7 fromURI:(id)a8 sessionID:(id)a9 isUPlusOne:(BOOL)a10
{
  v16 = a4;
  v17 = a5;
  v44 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a3;
  v22 = im_primary_base_queue();
  dispatch_assert_queue_V2(v22);

  v23 = [NSNumber numberWithUnsignedChar:4];
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v25 = v16;
  if (v25)
  {
    CFDictionarySetValue(Mutable, IDSFanoutMessageGroupIDKey, v25);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B578();
  }

  v26 = v20;
  if (v26)
  {
    CFDictionarySetValue(Mutable, IDSDSessionMessageSessionID, v26);
    v27 = v44;
  }

  else
  {
    v27 = v44;
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

  v29 = [v27 isInitiator];
  if (v29)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionIsInitiatorKey, v29);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B710();
  }

  v30 = [v27 participantID];
  if (v30)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionParticipantIDKey, v30);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B8A8();
  }

  v31 = [v27 participantData];
  if (v31)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionParticipantDataKey, v31);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B930();
  }

  v40 = v18;

  if (v17)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionClientContextDataKey, v17);
  }

  v43 = v17;
  v32 = [v27 urisToParticipantIDs];
  v33 = IDSGroupSessionURIToParticipantID;
  if (v32)
  {
    CFDictionarySetValue(Mutable, IDSGroupSessionURIToParticipantID, v32);
  }

  v34 = [(IDSDGroupStatusNotificationController *)self _groupMembersSupportingURILessUpdates:v21 groupID:v25];
  v41 = [v21 mutableCopy];
  [v41 removeObjectsInArray:v34];
  v35 = [(__CFDictionary *)Mutable mutableCopy];
  [v35 setObject:0 forKeyedSubscript:v33];
  v36 = [v44 isInitiator];
  BYTE1(v38) = a10;
  LOBYTE(v38) = 0;
  [(IDSDGroupStatusNotificationController *)self _sendFanoutMessage:Mutable account:v40 toGroupMembers:v21 fromURI:v19 command:239 toGroup:v25 sessionID:v26 reason:v38 isUPlusOne:v36 isInitiator:0 quickRelayUserType:?];

  if ([v34 count])
  {
    v37 = [v44 isInitiator];
    BYTE1(v39) = a10;
    LOBYTE(v39) = 0;
    [(IDSDGroupStatusNotificationController *)self _sendFanoutMessage:v35 account:v40 toGroupMembers:v34 fromURI:v19 command:239 toGroup:v25 sessionID:v26 reason:v39 isUPlusOne:v37 isInitiator:0 quickRelayUserType:?];
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

- (void)_sendFanoutMessage:(id)a3 account:(id)a4 toGroupMembers:(id)a5 fromURI:(id)a6 command:(int64_t)a7 toGroup:(id)a8 sessionID:(id)a9 reason:(unsigned __int8)a10 isUPlusOne:(BOOL)a11 isInitiator:(id)a12 quickRelayUserType:(id)a13
{
  BYTE2(v13) = a11;
  LOWORD(v13) = a10;
  [IDSDGroupStatusNotificationController _sendFanoutMessage:"_sendFanoutMessage:account:toGroupMembers:fromURI:command:commandContext:toGroup:sessionID:reason:waitForMadridAcks:isUPlusOne:isInitiator:quickRelayUserType:requiredCapabilites:requiredLackOfCapabilities:completionBlock:" account:a3 toGroupMembers:a4 fromURI:a5 command:a6 commandContext:a7 toGroup:0 sessionID:a8 reason:a9 waitForMadridAcks:v13 isUPlusOne:a12 isInitiator:a13 quickRelayUserType:0 requiredCapabilites:0 requiredLackOfCapabilities:0 completionBlock:?];
}

- (void)_sendFanoutMessage:(id)a3 account:(id)a4 toGroupMembers:(id)a5 fromURI:(id)a6 command:(int64_t)a7 toGroup:(id)a8 sessionID:(id)a9 reason:(unsigned __int8)a10 isUPlusOne:(BOOL)a11 isInitiator:(id)a12 quickRelayUserType:(id)a13 requiredCapabilites:(id)a14 requiredLackOfCapabilities:(id)a15
{
  BYTE2(v15) = a11;
  LOWORD(v15) = a10;
  [IDSDGroupStatusNotificationController _sendFanoutMessage:"_sendFanoutMessage:account:toGroupMembers:fromURI:command:commandContext:toGroup:sessionID:reason:waitForMadridAcks:isUPlusOne:isInitiator:quickRelayUserType:requiredCapabilites:requiredLackOfCapabilities:completionBlock:" account:a3 toGroupMembers:a4 fromURI:a5 command:a6 commandContext:a7 toGroup:0 sessionID:a8 reason:a9 waitForMadridAcks:v15 isUPlusOne:a12 isInitiator:a13 quickRelayUserType:a14 requiredCapabilites:a15 requiredLackOfCapabilities:0 completionBlock:?];
}

- (void)_sendFanoutMessage:(id)a3 account:(id)a4 toGroupMembers:(id)a5 fromURI:(id)a6 command:(int64_t)a7 commandContext:(id)a8 toGroup:(id)a9 sessionID:(id)a10 reason:(unsigned __int8)a11 waitForMadridAcks:(BOOL)a12 isUPlusOne:(BOOL)a13 isInitiator:(id)a14 quickRelayUserType:(id)a15 requiredCapabilites:(id)a16 requiredLackOfCapabilities:(id)a17 completionBlock:(id)a18
{
  v59 = a3;
  v62 = a4;
  v22 = a5;
  v63 = a6;
  v65 = a8;
  v58 = a9;
  v66 = a10;
  v60 = a14;
  v61 = a15;
  v23 = a16;
  v24 = a17;
  v64 = a18;
  if (v22)
  {
    v55 = [NSSet setWithArray:v22];
    v56 = [IDSDestination destinationWithDestinations:v55];
    v25 = +[NSString stringGUID];
    v26 = objc_alloc_init(IDSSendParameters);
    [v26 setQuickRelayUserType:v61];
    [v26 setMessage:v59];
    [v26 setEncryptPayload:1];
    [v26 setPriority:300];
    [v26 setDestinations:v56];
    v27 = [NSNumber numberWithInteger:a7];
    [v26 setCommand:v27];

    [v26 setCommandContext:v65];
    [v26 setIdentifier:v25];
    [v26 setAlwaysSkipSelf:1];
    v28 = IDSGetUUIDData();
    [v26 setMessageUUID:v28];

    v29 = [v63 unprefixedURI];
    [v26 setFromID:v29];

    [(IDSDGroupStatusNotificationController *)self _multiwayFTMessageSendTimeout];
    [v26 setTimeout:?];
    [v26 setIgnoreMaxRetryCount:1];
    [v26 setWantsResponse:1];
    [v26 setIsUPlusOne:a13];
    [v26 setIsInitiator:v60];
    if (_os_feature_enabled_impl())
    {
      v30 = +[IDSDSessionActiveParticipantsCache sharedInstance];
      v31 = [v30 vendTokenListForSessionID:v66];
      [v26 setPrioritizedTokenList:v31];
    }

    if (v23 | v24)
    {
      if ([v23 count])
      {
        v32 = +[IDSFoundationLog SessionController];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v78 = v23;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Group status notification requires properties -- manual {requiredCapabilites: %@}", buf, 0xCu);
        }

        [v26 setRequireAllRegistrationProperties:v23];
      }

      if ([v24 count])
      {
        v33 = +[IDSFoundationLog SessionController];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v78 = v24;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Group status notification requires lack of properties -- manual {requiredLackOfCapabilities: %@}", buf, 0xCu);
        }

        [v26 setRequireLackOfRegistrationProperties:v24];
      }
    }

    else
    {
      v35 = [(IDSDGroupStatusNotificationController *)self sessionController];
      v36 = [v35 sessionWithUniqueID:v66];

      v37 = [v36 requiredLackOfCapabilities];
      v38 = [v37 count];

      if (v38)
      {
        v39 = +[IDSFoundationLog SessionController];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = [v36 requiredLackOfCapabilities];
          *buf = 138412290;
          v78 = v40;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Group status notification requires lack of properties {requiredLackOfCapabilities: %@}", buf, 0xCu);
        }

        v41 = [v36 requiredLackOfCapabilities];
        [v26 setRequireLackOfRegistrationProperties:v41];
      }

      v42 = [v36 requiredCapabilities];
      v43 = [v42 count];

      if (v43)
      {
        v44 = +[IDSFoundationLog SessionController];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = [v36 requiredCapabilities];
          *buf = 138412290;
          v78 = v45;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Group status notification requires properties {requiredCapabilities: %@}", buf, 0xCu);
        }

        v46 = [v36 requiredCapabilities];
        [v26 setRequireAllRegistrationProperties:v46];
      }
    }

    v47 = +[IDSFoundationLog SessionController];
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = [NSNumber numberWithInteger:a7];
      if (a12)
      {
        v49 = @"YES";
      }

      else
      {
        v49 = @"NO";
      }

      v50 = objc_retainBlock(v64);
      *buf = 138413314;
      v78 = v25;
      v79 = 2112;
      v80 = v48;
      v81 = 2112;
      v82 = v65;
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
    v76 = objc_retainBlock(v64);
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_1003DFE50;
    v67[3] = &unk_100BDA7B8;
    v51 = v25;
    v73 = a12;
    v68 = v51;
    v72 = v75;
    v69 = v22;
    v70 = v58;
    v71 = v66;
    v74 = a11;
    [(__CFString *)v62 sendMessageWithSendParameters:v26 willSendBlock:0 completionBlock:v67];
    v52 = +[IDSFoundationLog SessionController];
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = [NSNumber numberWithInteger:a7];
      *buf = 138413314;
      v78 = v51;
      v79 = 2112;
      v80 = v56;
      v81 = 2112;
      v82 = v53;
      v83 = 2112;
      v84 = v62;
      v85 = 2112;
      v86 = v63;
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

- (void)processIncomingParticipantUpdateMessage:(id)a3 fromToken:(id)a4 fromURI:(id)a5 toURI:(id)a6 topic:(id)a7 idsMessageContext:(id)a8
{
  v14 = a3;
  v123 = a4;
  v124 = a5;
  v116 = a6;
  v121 = a7;
  v125 = a8;
  v15 = objc_alloc_init(IDSGroupStatusNotificationParameters);
  v118 = self;
  v16 = [(IDSDAccount *)self->_account uniqueID];
  v117 = [(IDSDGroupStatusNotificationController *)self _specificOriginatorfromURI:v124 senderToken:v123 accountUniqueID:v16];

  v17 = objc_opt_class();
  v122 = sub_10001B45C(v17, v14, IDSFanoutMessageGroupIDKey);
  v18 = objc_opt_class();
  v19 = sub_10001B45C(v18, v14, IDSDSessionMessageJoinNotificationKey);
  v120 = [v19 unsignedIntegerValue];

  v20 = [v125 objectForKey:IDSMessageContextCommandContextKey];
  v21 = [v20 integerValue];
  if (v21 >= 2)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  v109 = v22;

  v23 = objc_opt_class();
  v24 = IDSMessageContextFromServerStorageKey;
  v25 = sub_10001B45C(v23, v125, IDSMessageContextFromServerStorageKey);
  v26 = objc_opt_class();
  v27 = sub_10001B45C(v26, v125, v24);
  v110 = [v27 BOOLValue];

  v28 = [v125 objectForKey:IDSMessageContextServerTimestampKey];
  [v28 doubleValue];
  v115 = [NSDate dateWithTimeIntervalSince1970:?];

  v29 = objc_opt_class();
  v30 = sub_10001B45C(v29, v14, IDSSessionParticipantIDKey);
  [(IDSGroupStatusNotificationParameters *)v15 setParticipantID:v30];

  v31 = IDSSessionParticipantDataKey;
  v32 = [v14 objectForKey:IDSSessionParticipantDataKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = [v14 objectForKey:v31];
    v34 = [NSData _IDSDataFromBase64String:v33];
LABEL_8:
    v35 = v34;
    [(IDSGroupStatusNotificationParameters *)v15 setParticipantData:v34];

    goto LABEL_10;
  }

  v33 = [v14 objectForKey:v31];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = [v14 objectForKey:v31];
    goto LABEL_8;
  }

  [(IDSGroupStatusNotificationParameters *)v15 setParticipantData:0];
LABEL_10:

  v36 = IDSGroupSessionClientContextDataKey;
  v37 = [v14 objectForKey:IDSGroupSessionClientContextDataKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = [v14 objectForKey:v36];
    v39 = [NSData _IDSDataFromBase64String:v38];
LABEL_14:
    v40 = v39;
    [(IDSGroupStatusNotificationParameters *)v15 setClientJoinContextData:v39];

    goto LABEL_16;
  }

  v38 = [v14 objectForKey:v36];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = [v14 objectForKey:v36];
    goto LABEL_14;
  }

  [(IDSGroupStatusNotificationParameters *)v15 setClientJoinContextData:0];
LABEL_16:

  v41 = objc_opt_class();
  v42 = sub_10001B45C(v41, v14, IDSGroupSessionURIToParticipantID);
  [(IDSGroupStatusNotificationParameters *)v15 setUrisToParticipantIDs:v42];

  v43 = objc_opt_class();
  v44 = sub_10001B45C(v43, v14, IDSGroupSessionIsInitiatorKey);
  [(IDSGroupStatusNotificationParameters *)v15 setIsInitiator:v44];

  v45 = objc_opt_class();
  v111 = sub_10001B45C(v45, v14, IDSContextTimeStamp);
  v46 = objc_opt_class();
  v47 = IDSGroupSessionIsUPlusOneKey;
  v48 = sub_10001B45C(v46, v14, IDSGroupSessionIsUPlusOneKey);
  v49 = objc_opt_class();
  v50 = sub_10001B45C(v49, v14, v47);
  v51 = [v50 BOOLValue];

  v52 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    v53 = IDSLoggableDescriptionForObjectOnService();
    v54 = @"NO";
    *buf = 138413570;
    v127 = v53;
    if (v110)
    {
      v55 = @"YES";
    }

    else
    {
      v55 = @"NO";
    }

    if (v51)
    {
      v54 = @"YES";
    }

    v128 = 2112;
    v129 = v123;
    v130 = 2112;
    v131 = v124;
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
    v57 = v110 ? @"YES" : @"NO";
    v58 = v51 ? @"YES" : @"NO";
    v106 = v57;
    v107 = v58;
    v105 = v117;
    v100 = v123;
    v104 = v124;
    v98 = v56;
    _IDSLogTransport();

    if (_IDSShouldLog())
    {
      IDSLoggableDescriptionForObjectOnService();
      v106 = v57;
      v107 = v58;
      v105 = v117;
      v100 = v123;
      v98 = v104 = v124;
      _IDSLogV();
    }
  }

  v59 = objc_opt_class();
  v119 = sub_10001B45C(v59, v14, IDSFanoutMessageGroupMembersKey);
  v114 = [v119 __imArrayByApplyingBlock:&stru_100BDA7D8];
  v60 = [[NSUUID alloc] initWithUUIDString:v122];
  if (v120 == 1)
  {
    v112 = [(IDSGroupStatusNotificationParameters *)v15 participantData];
  }

  else
  {
    v112 = 0;
  }

  v113 = [(IDSGroupStatusNotificationParameters *)v15 clientJoinContextData:v98];
  v61 = [v60 UUIDString];
  v62 = [v61 isEqualToString:v122];

  if (v62)
  {
    v63 = [(IDSDGroupStatusNotificationController *)v118 sessionController];
    v64 = [v63 sessionWithGroupUUID:v60];

    if (v64 && ([(__CFString *)v124 URIByAddingOptionalPushToken:v123], v65 = objc_claimAutoreleasedReturnValue(), v66 = [v64 destinationsContainFromURI:v65], v65, (v66 & 1) == 0))
    {
      v75 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v127 = v122;
        v128 = 2112;
        v129 = v124;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "processIncomingParticipantUpdateMessage: We'll drop this participant update message for group %@ since %@ is not in this group!", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v99 = v122;
          v101 = v124;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v99 = v122;
            v101 = v124;
            _IDSLogV();
          }
        }
      }

      v76 = [IDSFoundationLog SessionController:v99];
      if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
      {
        v97 = [v64 destinations];
        *buf = 134218498;
        v127 = v120;
        v128 = 2112;
        v129 = v124;
        v130 = 2112;
        v131 = v97;
        _os_log_fault_impl(&_mh_execute_header, v76, OS_LOG_TYPE_FAULT, "Dropping group session participant update due to membership mismatch { type: %lu, fromURI: %@, destinations: %@ }", buf, 0x20u);
      }
    }

    else
    {
      v67 = [(IDSGroupStatusNotificationParameters *)v15 isInitiator];
      v108 = [v67 BOOLValue];

      if (v120 == 2)
      {
        v68 = [(IDSDGroupStatusNotificationController *)v118 realTimeEncryptionController];
        [v68 removeActiveParticipant:v123 forGroup:v122];

        goto LABEL_59;
      }

      if (v120 != 1)
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
          if (v108)
          {
            v70 = @"YES";
          }

          *buf = 138412290;
          v127 = v70;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Receive join from initiator: %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
        {
          v71 = v108 ? @"YES" : @"NO";
          v99 = v71;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v99 = v71;
            _IDSLogV();
          }
        }

        if ((v108 & 1) == 0)
        {
          [v64 receiveJoinNotificationFromAParticipant];
        }

        v72 = [(__CFString *)v123 rawToken];
        [v64 reportJoinReceivedOverPushFromToken:v72];

LABEL_60:
        if ([v64 handOffOverQREnabled])
        {
          if ((v120 - 1) <= 1 && v111)
          {
            v73 = [(IDSGroupStatusNotificationParameters *)v15 participantID];
            [v111 doubleValue];
            v74 = [v64 shouldReportToClient:v73 timeStamp:v120 type:1 overPush:?];

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
              v127 = v120;
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
                v99 = v120;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  [v111 doubleValue];
                  v99 = v120;
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
          v84 = [v64 handOffOverQREnabled];
          v85 = @"NO";
          if (v64)
          {
            v86 = @"NO";
          }

          else
          {
            v86 = @"YES";
          }

          if (v84)
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
        v90 = [(IDSGroupStatusNotificationParameters *)v15 participantID];
        v91 = [v90 unsignedLongLongValue];
        v92 = [(__CFString *)v124 URIByAddingPushToken:v123];
        v93 = [(IDSGroupStatusNotificationParameters *)v15 urisToParticipantIDs];
        LOBYTE(v99) = v110;
        v94 = [v89 initWithGroupUUID:v60 isInitiator:v108 participantIdentifier:v91 participantDestinationURI:v92 participantUpdateType:v120 participantUpdateSubtype:v109 fromServer:v99 serverDate:v115 participantData:v112 clientContextData:v113 members:v114 participantIDs:v93 relaySessionID:0];

        v95 = [(IDSDGroupStatusNotificationController *)v118 broadcaster];
        [v95 broadcastGroupSessionParticipantUpdate:v94 onTopic:v121 toURI:v116 fromURI:v124 context:v125];

        goto LABEL_110;
      }

      if (v108 & 1 | ((v51 & 1) == 0))
      {
        v80 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
        {
          v81 = @"NO";
          if (v51)
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
          v82 = v51 ? @"YES" : @"NO";
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

- (void)processIncomingParticipantDataUpdateMessage:(id)a3 fromToken:(id)a4 fromURI:(id)a5 toURI:(id)a6 topic:(id)a7 idsMessageContext:(id)a8
{
  v14 = a3;
  v80 = a4;
  v82 = a5;
  v73 = a6;
  v78 = a7;
  v81 = a8;
  v83 = objc_alloc_init(IDSGroupStatusNotificationParameters);
  v75 = self;
  v15 = [(IDSDAccount *)self->_account uniqueID];
  v76 = [(IDSDGroupStatusNotificationController *)self _specificOriginatorfromURI:v82 senderToken:v80 accountUniqueID:v15];

  v16 = objc_opt_class();
  v79 = sub_10001B45C(v16, v14, IDSFanoutMessageGroupIDKey);
  v17 = objc_opt_class();
  v18 = sub_10001B45C(v17, v14, IDSDSessionMessageJoinNotificationKey);
  v68 = [v18 unsignedIntegerValue];

  v19 = objc_opt_class();
  v20 = IDSMessageContextFromServerStorageKey;
  v21 = sub_10001B45C(v19, v81, IDSMessageContextFromServerStorageKey);
  v22 = objc_opt_class();
  v23 = sub_10001B45C(v22, v81, v20);
  v69 = [v23 BOOLValue];

  v24 = [v81 objectForKey:IDSMessageContextServerTimestampKey];
  [v24 doubleValue];
  v74 = [NSDate dateWithTimeIntervalSince1970:?];

  v25 = objc_opt_class();
  v26 = sub_10001B45C(v25, v14, IDSGroupSessionIsInitiatorKey);
  [(IDSGroupStatusNotificationParameters *)v83 setIsInitiator:v26];

  v27 = objc_opt_class();
  v28 = sub_10001B45C(v27, v14, IDSSessionParticipantIDKey);
  [(IDSGroupStatusNotificationParameters *)v83 setParticipantID:v28];

  v29 = IDSSessionParticipantDataKey;
  v30 = [v14 objectForKey:IDSSessionParticipantDataKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = [v14 objectForKey:v29];
    v32 = [NSData _IDSDataFromBase64String:v31];
LABEL_5:
    v33 = v32;
    [(IDSGroupStatusNotificationParameters *)v83 setParticipantData:v32];

    goto LABEL_7;
  }

  v31 = [v14 objectForKey:v29];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = [v14 objectForKey:v29];
    goto LABEL_5;
  }

  [(IDSGroupStatusNotificationParameters *)v83 setParticipantData:0];
LABEL_7:

  v34 = IDSGroupSessionClientContextDataKey;
  v35 = [v14 objectForKey:IDSGroupSessionClientContextDataKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = [v14 objectForKey:v34];
    v37 = [NSData _IDSDataFromBase64String:v36];
LABEL_11:
    v38 = v37;
    [(IDSGroupStatusNotificationParameters *)v83 setClientJoinContextData:v37];

    goto LABEL_13;
  }

  v36 = [v14 objectForKey:v34];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = [v14 objectForKey:v34];
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
    if (v69)
    {
      v41 = @"YES";
    }

    v86 = 2112;
    v87 = v80;
    v88 = 2112;
    v89 = v82;
    v90 = 2112;
    v91 = v76;
    v92 = 2112;
    v93 = v41;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Process incoming fanout message: %@, fromToken: %@, fromID: %@, specificOriginator: %@ fromStorage %@", buf, 0x34u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v42 = IDSLoggableDescriptionForObjectOnService();
    v43 = v69 ? @"YES" : @"NO";
    v66 = v76;
    v67 = v43;
    v64 = v80;
    v65 = v82;
    v63 = v42;
    _IDSLogTransport();

    if (_IDSShouldLog())
    {
      IDSLoggableDescriptionForObjectOnService();
      v66 = v76;
      v67 = v43;
      v64 = v80;
      v63 = v65 = v82;
      _IDSLogV();
    }
  }

  v44 = objc_opt_class();
  v77 = sub_10001B45C(v44, v14, IDSFanoutMessageGroupMembersKey);
  v72 = [v77 __imArrayByApplyingBlock:&stru_100BDA7F8];
  v45 = [[NSUUID alloc] initWithUUIDString:v79];
  v71 = [(IDSGroupStatusNotificationParameters *)v83 participantData];
  v70 = [(IDSGroupStatusNotificationParameters *)v83 clientJoinContextData];
  v46 = [v45 UUIDString];
  v47 = [v46 isEqualToString:v79];

  if (v47)
  {
    v48 = [(IDSDGroupStatusNotificationController *)self sessionController];
    v49 = [v48 sessionWithGroupUUID:v45];

    if (v49 && ([v82 URIByAddingOptionalPushToken:v80], v50 = objc_claimAutoreleasedReturnValue(), v51 = -[NSObject destinationsContainFromURI:](v49, "destinationsContainFromURI:", v50), v50, (v51 & 1) == 0))
    {
      v61 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v85 = v79;
        v86 = 2112;
        v87 = v82;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "processIncomingParticipantDataUpdateMessage: We'll drop this participant update message for group %@ since %@ is not in this group!", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v63 = v79;
          v64 = v82;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v63 = v79;
            v64 = v82;
            _IDSLogV();
          }
        }
      }

      v59 = [IDSFoundationLog SessionController:v63];
      if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
      {
        v62 = [v49 destinations];
        *buf = 134218498;
        v85 = v68;
        v86 = 2112;
        v87 = v82;
        v88 = 2112;
        v89 = v62;
        _os_log_fault_impl(&_mh_execute_header, v59, OS_LOG_TYPE_FAULT, "Dropping group session participant data update due to membership mismatch { type: %lu, fromURI: %@, destinations: %@ }", buf, 0x20u);
      }
    }

    else
    {
      v52 = [IDSGroupSessionParticipantUpdate alloc];
      v53 = [(IDSGroupStatusNotificationParameters *)v83 isInitiator];
      v54 = [v53 BOOLValue];
      v55 = [(IDSGroupStatusNotificationParameters *)v83 participantID];
      v56 = [v55 unsignedLongLongValue];
      v57 = [v82 URIByAddingPushToken:v80];
      v58 = [(IDSGroupStatusNotificationParameters *)v83 urisToParticipantIDs];
      LOBYTE(v63) = v69;
      v59 = [v52 initWithGroupUUID:v45 isInitiator:v54 participantIdentifier:v56 participantDestinationURI:v57 participantUpdateType:v68 participantUpdateSubtype:0 fromServer:v63 serverDate:v74 participantData:v71 clientContextData:v70 members:v72 participantIDs:v58 relaySessionID:0];

      v60 = [(IDSDGroupStatusNotificationController *)v75 broadcaster];
      [v60 broadcastGroupSessionParticipantDataUpdate:v59 onTopic:v78 toURI:v73 fromURI:v82];
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

- (void)pushTokenLookup:(id)a3 forGroup:(id)a4 sessionID:(id)a5 fromURI:(id)a6 account:(id)a7 completionBlock:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v32 = a6;
  v17 = a7;
  v18 = a8;
  v19 = v14;
  v20 = [v17 _registrationCert];
  v21 = [v17 service];
  v22 = [v21 identifier];

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
  v25 = v16;
  v41 = v25;
  v26 = v15;
  v42 = v26;
  v27 = v19;
  v43 = v27;
  v44 = self;
  v28 = v18;
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
    v36 = v20;
    v37 = v32;
    v38 = v22;
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

- (id)_specificOriginatorfromURI:(id)a3 senderToken:(id)a4 accountUniqueID:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 prefixedURI];
  v11 = [v10 hasPrefix:@"device:"];

  if (v11)
  {
    v12 = [v7 unprefixedURI];
  }

  else
  {
    v12 = 0;
  }

  v13 = +[IDSPairingManager sharedInstance];
  v14 = [v13 pairedDeviceUniqueID];
  v15 = [v12 isEqualToIgnoringCase:v14];

  v16 = [v7 prefixedURI];
  v17 = [v16 isEqualToIgnoringCase:IDSDefaultPairedDevice];

  if (v8)
  {
    if (!v7)
    {
      v19 = 0;
      goto LABEL_11;
    }

    v18 = [v7 URIByAddingPushToken:v8];
LABEL_9:
    v19 = v18;
LABEL_11:
    v19 = v19;
    v20 = v19;
    goto LABEL_12;
  }

  if ((v17 | v15))
  {
    v18 = v7;
    goto LABEL_9;
  }

  v22 = +[IDSDAccountController sharedInstance];
  v23 = [v22 accountWithUniqueID:v9];

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

  v24 = [v23 dependentRegistrationMatchingUUID:v12];
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
    v27 = [v36 firstObject];
    v28 = [v27 _stringForKey:@"uri"];

    v29 = _IDSCopyIDForTokenWithURI();
    v19 = [IDSURI URIWithPrefixedURI:v29];

    v30 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v38 = v7;
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

- (id)getURIFromPushToken:(id)a3 forGroup:(id)a4
{
  v25 = a3;
  v23 = a4;
  v24 = [(NSMutableDictionary *)self->_groupMemberPushTokens objectForKeyedSubscript:?];
  if (!v24)
  {
    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v23;
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

  v6 = [v25 rawToken];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v21 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v23;
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
        v17 = [v25 rawToken];
        v18 = [v17 isEqualToData:v15];

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
    v31 = v25;
    v32 = 2112;
    v33 = v23;
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