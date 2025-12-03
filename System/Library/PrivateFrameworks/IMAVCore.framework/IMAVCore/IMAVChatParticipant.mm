@interface IMAVChatParticipant
- (BOOL)_generateCallInfo:(id)info;
- (BOOL)_processResponseDictionary:(id)dictionary allowSecondConnection:(BOOL)connection;
- (BOOL)hasConnectingSessions;
- (BOOL)hasUnfinishedSessions;
- (BOOL)isLocalParticipant;
- (BOOL)matchesAVConferenceCallID:(int64_t)d;
- (CGRect)_remoteLandscapeContentRect;
- (CGRect)_remotePortraitContentRect;
- (CGSize)_remoteLandscapeOrientation;
- (CGSize)_remotePIPLandscapeOrientation;
- (CGSize)_remotePIPPortraitOrientation;
- (CGSize)_remotePortraitOrientation;
- (IMAVChatParticipant)init;
- (id)_callInfoForCallID:(int64_t)d;
- (id)_callInfoForReinitiate;
- (id)_callInfoWithState:(int64_t)state;
- (id)_callInfosWaitingForAcceptAction;
- (id)_callInfosWaitingForResponse;
- (id)_initAs:(id)as invitedBy:(id)by sendingAudio:(BOOL)audio sendingVideo:(BOOL)video usingICE:(BOOL)e toChat:(id)chat inState:(unsigned int)state withError:(int)self0 andReason:(unsigned int)self1 andVCPartyID:(id)self2 account:(id)self3;
- (id)_natType;
- (id)_processIncomingCallProperties:(id)properties;
- (id)_proxyRepresentation;
- (id)callInfoBeingHandedOff;
- (id)description;
- (id)initAs:(id)as invitedBy:(id)by toChat:(id)chat account:(id)account;
- (int64_t)bestCallID;
- (void)_cleanupOrphanedCallInfos;
- (void)_connectTimeout:(id)timeout;
- (void)_handleIMAVResponse:(unsigned int)response;
- (void)_hangupCallLaterIfReinitiateFailsForCallInfo:(id)info;
- (void)_noteInviteDelivered:(BOOL)delivered;
- (void)_processPropertyUpdate:(id)update;
- (void)_reInitiateWithCallInfo:(id)info;
- (void)_registerCallInfo:(id)info;
- (void)_sendResponse:(unsigned int)response callInfo:(id)info;
- (void)_setConferenceID:(id)d;
- (void)_switchToUseNewIMHandle:(id)handle;
- (void)_updateProperties:(id)properties;
- (void)dealloc;
- (void)reinitializeCallForCallID:(unsigned int)d;
- (void)requestIconIfNecessary;
- (void)resetWaitingToConnectTimer;
- (void)sendInvitation;
- (void)setInFrequencyLevel:(id)level;
- (void)setOutFrequencyLevel:(id)level;
- (void)setVideoBackLayer:(void *)layer;
- (void)setVideoLayer:(void *)layer;
- (void)setWaitingToConnect:(BOOL)connect;
- (void)videoBackLayer;
- (void)videoLayer;
@end

@implementation IMAVChatParticipant

- (IMAVChatParticipant)init
{
  v7 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, v2, v3, v4);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"IMAVChatParticipant.m", 51, @"[IMAVChatParticipant init] should never be called!");

  return 0;
}

- (id)_initAs:(id)as invitedBy:(id)by sendingAudio:(BOOL)audio sendingVideo:(BOOL)video usingICE:(BOOL)e toChat:(id)chat inState:(unsigned int)state withError:(int)self0 andReason:(unsigned int)self1 andVCPartyID:(id)self2 account:(id)self3
{
  asCopy = as;
  byCopy = by;
  chatCopy = chat;
  dCopy = d;
  v65.receiver = self;
  v65.super_class = IMAVChatParticipant;
  v27 = [(IMAVChatParticipant *)&v65 init];
  if (v27)
  {
    if (!asCopy || !byCopy || !chatCopy)
    {
      sub_25477F7EC(a2, v27, v24, v25, v26);
    }

    if (!v27->_participantsCallInfo)
    {
      v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
      participantsCallInfo = v27->_participantsCallInfo;
      v27->_participantsCallInfo = v28;
    }

    objc_storeStrong(&v27->_imHandle, as);
    objc_storeStrong(&v27->_inviter, by);
    objc_msgSend_setAVChat_(v27, v30, chatCopy, v31, v32);
    v37 = objc_msgSend_conferenceID(chatCopy, v33, v34, v35, v36);
    v42 = objc_msgSend_copy(v37, v38, v39, v40, v41);
    conferenceID = v27->_conferenceID;
    v27->_conferenceID = v42;

    objc_msgSend__setScreenOrientation_(v27, v44, 0, v45, v46);
    __asm { FMOV            V0.2D, #-1.0 }

    v27->_remotePortraitOrientation = _Q0;
    v27->_remoteLandscapeOrientation = _Q0;
    v27->_sendingAudio = audio;
    v27->_sendingVideo = video;
    objc_msgSend__setCameraType_(v27, v52, 0, v53, v54);
    objc_msgSend__setCameraOrientation_(v27, v55, 0, v56, v57);
    v27->_isInitiator = asCopy == byCopy;
    objc_msgSend_setVCPartyID_(v27, v58, dCopy, v59, v60);
    v27->_state = state;
    v27->_chatEndedReason = reason;
    inFrequencyLevel = v27->_inFrequencyLevel;
    v27->_inFrequencyLevel = 0;

    outFrequencyLevel = v27->_outFrequencyLevel;
    v27->_outFrequencyLevel = 0;

    v63 = v27;
  }

  return v27;
}

- (void)_registerCallInfo:(id)info
{
  infoCopy = info;
  participantsCallInfo = self->_participantsCallInfo;
  v13 = infoCopy;
  if (!participantsCallInfo)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = self->_participantsCallInfo;
    self->_participantsCallInfo = v8;

    infoCopy = v13;
    participantsCallInfo = self->_participantsCallInfo;
  }

  if ((objc_msgSend_containsObjectIdenticalTo_(participantsCallInfo, infoCopy, infoCopy, v5, v6) & 1) == 0)
  {
    objc_msgSend_addObject_(self->_participantsCallInfo, v10, v13, v11, v12);
  }
}

- (id)callInfoBeingHandedOff
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_participantsCallInfo;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v16, v20, 16);
  if (v10)
  {
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (objc_msgSend_isBeingHandedOff(v13, v6, v7, v8, v9, v16))
        {
          v10 = v13;
          goto LABEL_11;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v16, v20, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_autoreleasePoolPop(v3);
  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)matchesAVConferenceCallID:(int64_t)d
{
  v5 = objc_autoreleasePoolPush();
  if (objc_msgSend_count(self->_participantsCallInfo, v6, v7, v8, v9))
  {
    v13 = objc_msgSend__callInfoForCallID_(self, v10, d, v11, v12);
    v14 = v13 != 0;
  }

  else
  {
    v14 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v14;
}

- (BOOL)hasUnfinishedSessions
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = self->_participantsCallInfo;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v14, v18, 16);
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v2);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (objc_msgSend_state(v11, v4, v5, v6, v7, v14) != 4 && objc_msgSend_state(v11, v4, v5, v6, v7))
        {
          LOBYTE(v8) = 1;
          goto LABEL_12;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v14, v18, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)hasConnectingSessions
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = self->_participantsCallInfo;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v13, v17, 16);
  if (v8)
  {
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v2);
        }

        if (objc_msgSend_state(*(*(&v13 + 1) + 8 * i), v4, v5, v6, v7, v13) < 3)
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v13, v17, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (int64_t)bestCallID
{
  v44 = *MEMORY[0x277D85DE8];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v2 = self->_participantsCallInfo;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v39, v43, 16);
  if (!v4)
  {
    v32 = 0;
    goto LABEL_22;
  }

  v9 = v4;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = *v40;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v40 != v13)
      {
        objc_enumerationMutation(v2);
      }

      v15 = *(*(&v39 + 1) + 8 * i);
      if ((objc_msgSend_isFinished(v15, v5, v6, v7, v8, v39) & 1) == 0)
      {
        v20 = v15;

        v12 = v20;
      }

      if ((objc_msgSend_isFinished(v15, v16, v17, v18, v19) & 1) == 0 && (objc_msgSend_isBeingHandedOff(v15, v21, v22, v23, v24) & 1) == 0)
      {
        v25 = v15;

        v10 = v25;
      }

      if (objc_msgSend_state(v15, v21, v22, v23, v24) <= 2)
      {
        v30 = v15;

        v11 = v30;
      }

      v31 = objc_msgSend_callID(v15, v26, v27, v28, v29);
    }

    v32 = v31;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v39, v43, 16);
  }

  while (v9);

  if (v10)
  {
    v32 = objc_msgSend_callID(v10, v33, v34, v35, v36);

    v2 = v10;
LABEL_22:

    goto LABEL_23;
  }

  if (v11)
  {
    v32 = objc_msgSend_callID(v11, v33, v34, v35, v36);

    v2 = v11;
    goto LABEL_22;
  }

  if (v12)
  {
    v32 = objc_msgSend_callID(v12, v33, v34, v35, v36);
    v2 = v12;
    goto LABEL_22;
  }

LABEL_23:
  v37 = *MEMORY[0x277D85DE8];
  return v32;
}

- (id)_callInfoForCallID:(int64_t)d
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = self->_participantsCallInfo;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v18, v22, 16);
  if (v6)
  {
    v11 = v6;
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v4);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if (objc_msgSend_callID(v14, v7, v8, v9, v10, v18) == d)
        {
          v15 = v14;
          goto LABEL_11;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v18, v22, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)initAs:(id)as invitedBy:(id)by toChat:(id)chat account:(id)account
{
  asCopy = as;
  byCopy = by;
  chatCopy = chat;
  accountCopy = account;
  if (objc_msgSend_isLoginIMHandle(asCopy, v14, v15, v16, v17))
  {
    v22 = objc_msgSend_sharedInstance(IMAVController, v18, v19, v20, v21);
    v27 = objc_msgSend_microphoneCapable(v22, v23, v24, v25, v26);

    if (objc_msgSend_isVideo(chatCopy, v28, v29, v30, v31))
    {
      v36 = objc_msgSend_sharedInstance(IMAVController, v32, v33, v34, v35);
      isVideo = objc_msgSend_cameraCapable(v36, v37, v38, v39, v40);
    }

    else
    {
      isVideo = 0;
    }

    hasCapability = 0;
  }

  else if (asCopy == byCopy)
  {
    isVideo = objc_msgSend_isVideo(chatCopy, v18, v19, v20, v21);
    hasCapability = 0;
    v27 = 1;
  }

  else
  {
    v42 = objc_msgSend_capabilities(asCopy, v18, v19, v20, v21);
    v27 = (v42 >> 19) & 1;
    isVideo = objc_msgSend_isVideo(chatCopy, v43, v44, v45, v46) & ((v42 & 0x40000) != 0);
    hasCapability = objc_msgSend_hasCapability_(asCopy, v47, 0x2000000000, v48, v49);
  }

  v51 = objc_msgSend_vcPartyIDForIMHandle_(chatCopy, v32, asCopy, v34, v35);
  v55 = 0;
  inited = objc_msgSend__initAs_invitedBy_sendingAudio_sendingVideo_usingICE_toChat_inState_withError_andReason_andVCPartyID_account_(self, v52, asCopy, byCopy, v27, isVideo, hasCapability, chatCopy, 0, v55, v51, accountCopy);

  return inited;
}

- (id)description
{
  v6 = objc_msgSend_avChat(self, a2, v2, v3, v4);
  isVideo = objc_msgSend_isVideo(v6, v7, v8, v9, v10);
  v12 = @"an audio";
  if (isVideo)
  {
    v12 = @"a video";
  }

  v13 = v12;

  state = self->_state;
  if (state > 2)
  {
    if (state == 3)
    {
      v19 = @"is connecting to";
      goto LABEL_17;
    }

    if (state != 4)
    {
      if (state == 5)
      {

        v19 = @"has left";
        v13 = @"the";
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    v19 = @"is connected to";
  }

  else
  {
    if (!state)
    {

      v19 = @"is not yet involved in";
      v13 = @"a";
      goto LABEL_17;
    }

    if (state != 1)
    {
      if (state == 2)
      {
        v19 = @"is waiting for others to join";
        goto LABEL_17;
      }

LABEL_14:

      v19 = @"is in an invalid state";
      v13 = @"for a";
      goto LABEL_17;
    }

    v19 = @"has been invited to";
  }

LABEL_17:
  v20 = MEMORY[0x277CCACA8];
  v21 = objc_msgSend_imHandle(self, v14, v15, v16, v17);
  v26 = objc_msgSend_vcPartyID(self, v22, v23, v24, v25);
  v30 = objc_msgSend_stringWithFormat_(v20, v27, @"%@ %@ %@ %@ chat (%p)", v28, v29, v21, v19, v13, v26, self);

  return v30;
}

- (void)dealloc
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "participant: %@", buf, 0xCu);
  }

  v8 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v4, v5, v6, v7);
  objc_msgSend_removeObserver_name_object_(v8, v9, self, 0, 0);

  inFrequencyLevel = self->_inFrequencyLevel;
  self->_inFrequencyLevel = 0;

  outFrequencyLevel = self->_outFrequencyLevel;
  self->_outFrequencyLevel = 0;

  participantsCallInfo = self->_participantsCallInfo;
  self->_participantsCallInfo = 0;

  additionalPeers = self->_additionalPeers;
  self->_additionalPeers = 0;

  excludingPushTokens = self->_excludingPushTokens;
  self->_excludingPushTokens = 0;

  properties = self->_properties;
  self->_properties = 0;

  imHandle = self->_imHandle;
  self->_imHandle = 0;

  inviter = self->_inviter;
  self->_inviter = 0;

  objc_msgSend_disconnectFromAVChat(self, v18, v19, v20, v21);
  objc_msgSend_setVCPartyID_(self, v22, 0, v23, v24);
  v26.receiver = self;
  v26.super_class = IMAVChatParticipant;
  [(IMAVChatParticipant *)&v26 dealloc];
  v25 = *MEMORY[0x277D85DE8];
}

- (BOOL)isLocalParticipant
{
  selfCopy = self;
  v6 = objc_msgSend_avChat(self, a2, v2, v3, v4);
  v11 = objc_msgSend_localParticipant(v6, v7, v8, v9, v10);
  LOBYTE(selfCopy) = v11 == selfCopy;

  return selfCopy;
}

- (void)requestIconIfNecessary
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "participant: %@", &v17, 0xCu);
  }

  v8 = objc_msgSend_imHandle(self, v4, v5, v6, v7);
  if ((objc_msgSend_isBuddy(v8, v9, v10, v11, v12) & 1) == 0)
  {
    objc_msgSend_requestValueOfProperty_(v8, v13, *MEMORY[0x277D193B8], v14, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_callInfoWithState:(int64_t)state
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = self->_participantsCallInfo;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v18, v22, 16);
  if (v6)
  {
    v11 = v6;
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v4);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if (objc_msgSend_state(v14, v7, v8, v9, v10, v18) == state)
        {
          v15 = v14;
          goto LABEL_11;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v18, v22, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_callInfosWaitingForAcceptAction
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  participantsCallInfo = self->_participantsCallInfo;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_25475182C;
  v10[3] = &unk_2797832B8;
  v5 = v3;
  v11 = v5;
  objc_msgSend_enumerateObjectsUsingBlock_(participantsCallInfo, v6, v10, v7, v8);

  return v5;
}

- (id)_callInfosWaitingForResponse
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  participantsCallInfo = self->_participantsCallInfo;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_254751960;
  v10[3] = &unk_2797832B8;
  v5 = v3;
  v11 = v5;
  objc_msgSend_enumerateObjectsUsingBlock_(participantsCallInfo, v6, v10, v7, v8);

  return v5;
}

- (id)_processIncomingCallProperties:(id)properties
{
  v68 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v5 = sub_254761764();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v66 = 138412290;
    v67 = propertiesCopy;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "_processIncomingCallProperties: %@", &v66, 0xCu);
  }

  v6 = objc_alloc_init(IMAVChatParticipantCallInfo);
  v10 = objc_msgSend_objectForKey_(propertiesCopy, v7, *MEMORY[0x277D194F0], v8, v9);
  objc_msgSend_setRemoteICEData_(v6, v11, v10, v12, v13);

  v17 = objc_msgSend_objectForKey_(propertiesCopy, v14, *MEMORY[0x277D19510], v15, v16);
  objc_msgSend_setRemoteNATType_(v6, v18, v17, v19, v20);

  v24 = objc_msgSend_objectForKey_(propertiesCopy, v21, *MEMORY[0x277D19508], v22, v23);
  objc_msgSend_setRemoteNATIP_(v6, v25, v24, v26, v27);

  v31 = objc_msgSend_objectForKey_(propertiesCopy, v28, *MEMORY[0x277D194D0], v29, v30);
  objc_msgSend_setPeerCN_(v6, v32, v31, v33, v34);

  v38 = objc_msgSend_objectForKey_(propertiesCopy, v35, *MEMORY[0x277D19560], v36, v37);
  objc_msgSend_setRemoteSKEData_(v6, v39, v38, v40, v41);

  v45 = objc_msgSend_objectForKey_(propertiesCopy, v42, *MEMORY[0x277D19540], v43, v44);
  objc_msgSend_setPeerProtocolVersion_(v6, v46, v45, v47, v48);

  objc_msgSend__registerCallInfo_(self, v49, v6, v50, v51);
  v55 = objc_msgSend_objectForKey_(propertiesCopy, v52, *MEMORY[0x277D194E8], v53, v54);
  v60 = objc_msgSend_BOOLValue(v55, v56, v57, v58, v59);
  objc_msgSend_setHasReinitiateCapability_(self, v61, v60, v62, v63);

  v64 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)_processResponseDictionary:(id)dictionary allowSecondConnection:(BOOL)connection
{
  connectionCopy = connection;
  v198 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v7 = sub_254761764();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy3 = dictionaryCopy;
    _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "_processResponseDictionary: %@", buf, 0xCu);
  }

  v14 = objc_msgSend_objectForKey_(dictionaryCopy, v8, *MEMORY[0x277D19558], v9, v10);
  if (v14)
  {
    v15 = objc_msgSend_dictionaryWithPlistData_(MEMORY[0x277CBEAC0], v11, v14, v12, v13);
    v20 = objc_msgSend__callInfosWaitingForResponse(self, v16, v17, v18, v19);
    v25 = objc_msgSend___imFirstObject(v20, v21, v22, v23, v24);

    if (!v25)
    {
      v26 = sub_254761764();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v31 = objc_msgSend__participantsCallInfo(self, v27, v28, v29, v30);
        *buf = 138412546;
        selfCopy3 = self;
        v196 = 2112;
        selfCopy2 = v31;
        _os_log_impl(&dword_254743000, v26, OS_LOG_TYPE_DEFAULT, "[WARN] *** No call info found for participant: %@  (All: %@)", buf, 0x16u);
      }
    }

    v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v33 = *MEMORY[0x277D19570];
    v37 = objc_msgSend_objectForKey_(v15, v34, *MEMORY[0x277D19570], v35, v36);
    if (v37)
    {
      CFDictionarySetValue(v32, v33, v37);
    }

    v41 = objc_msgSend_objectForKey_(v15, v38, *MEMORY[0x277D194D0], v39, v40);
    objc_msgSend_setPeerCN_(v25, v42, v41, v43, v44);

    v48 = objc_msgSend_objectForKey_(v15, v45, *MEMORY[0x277D194F0], v46, v47);
    objc_msgSend_setRemoteICEData_(v25, v49, v48, v50, v51);

    v55 = objc_msgSend_objectForKey_(v15, v52, *MEMORY[0x277D19510], v53, v54);
    objc_msgSend_setRemoteNATType_(v25, v56, v55, v57, v58);

    v62 = objc_msgSend_objectForKey_(v15, v59, *MEMORY[0x277D19508], v60, v61);
    objc_msgSend_setRemoteNATIP_(v25, v63, v62, v64, v65);

    v69 = objc_msgSend_objectForKey_(v15, v66, *MEMORY[0x277D194F8], v67, v68);
    objc_msgSend_setRelayInitiate_(v25, v70, v69, v71, v72);

    v76 = objc_msgSend_objectForKey_(v15, v73, *MEMORY[0x277D19560], v74, v75);
    objc_msgSend_setRemoteSKEData_(v25, v77, v76, v78, v79);

    v83 = objc_msgSend_objectForKey_(v15, v80, *MEMORY[0x277D19540], v81, v82);
    objc_msgSend_setPeerProtocolVersion_(v25, v84, v83, v85, v86);

    objc_msgSend_setState_(v25, v87, 1, v88, v89);
    if (objc_msgSend_count(v32, v90, v91, v92, v93))
    {
      objc_msgSend_setProperties_(self, v94, v32, v95, v96);
    }

    v97 = objc_msgSend_objectForKey_(dictionaryCopy, v94, *MEMORY[0x277D19550], v95, v96);
    v102 = objc_msgSend_intValue(v97, v98, v99, v100, v101);

    v107 = objc_msgSend_state(self, v103, v104, v105, v106);
    v111 = objc_msgSend_objectForKey_(v15, v108, *MEMORY[0x277D194E8], v109, v110);
    v116 = objc_msgSend_BOOLValue(v111, v112, v113, v114, v115);
    objc_msgSend_setHasReinitiateCapability_(self, v117, v116, v118, v119);

    v120 = sub_254761764();
    if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
    {
      _NSStringDescriptionForIMAVResponse(v102);
      v193 = v14;
      v121 = dictionaryCopy;
      v122 = v32;
      v124 = v123 = connectionCopy;
      *buf = 138412546;
      selfCopy3 = v124;
      v196 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_254743000, v120, OS_LOG_TYPE_DEFAULT, "Handling response: %@ from participant: %@", buf, 0x16u);

      connectionCopy = v123;
      v32 = v122;
      dictionaryCopy = v121;
      v14 = v193;
    }

    objc_msgSend__handleIMAVResponse_(self, v125, v102, v126, v127);
    if (!v102)
    {
      if (v107 < 3 || connectionCopy)
      {
        if (v107 >= 3 && connectionCopy)
        {
          v133 = objc_msgSend__callInfoWithState_(self, v128, 3, v130, v131);
          v138 = v133;
          if (v133)
          {
            objc_msgSend_setIsBeingHandedOff_(v133, v134, 1, v136, v137);
            objc_msgSend_setIsReinitiate_(v25, v139, 1, v140, v141);
          }

          v142 = objc_msgSend_sharedInstance(IMAVInterface, v134, v135, v136, v137);
          v147 = objc_msgSend_avChat(self, v143, v144, v145, v146);
          v152 = objc_msgSend_callID(v138, v148, v149, v150, v151);
          objc_msgSend_endAVConferenceWithChat_callID_(v142, v153, v147, v152, v154);

          v155 = sub_254761764();
          if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            selfCopy3 = v138;
            _os_log_impl(&dword_254743000, v155, OS_LOG_TYPE_DEFAULT, "Officially stopping the call we're handing off from %@", buf, 0xCu);
          }

          v160 = objc_msgSend_avChat(self, v156, v157, v158, v159);
          v165 = objc_msgSend_vcPartyID(self, v161, v162, v163, v164);
          objc_msgSend_conferencePersonWithID_mediaDidStall_(v160, v166, v165, 1, v167);

          v172 = objc_msgSend_avChat(self, v168, v169, v170, v171);
          objc_msgSend__setIsAudioInterrupted_(v172, v173, 1, v174, v175);

          v180 = objc_msgSend_avChat(self, v176, v177, v178, v179);
          objc_msgSend__setIsVideoInterrupted_(v180, v181, 1, v182, v183);
        }

        v132 = objc_msgSend_sharedInstance(IMAVInterface, v128, v129, v130, v131);
        v188 = objc_msgSend_avChat(self, v184, v185, v186, v187);
        objc_msgSend_avChat_prepareConnectionWithCallInfo_(v132, v189, v188, v25, v190);
      }

      else
      {
        v132 = sub_254761764();
        if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          selfCopy3 = self;
          _os_log_impl(&dword_254743000, v132, OS_LOG_TYPE_DEFAULT, "Received accept for participant (%@) who was already connecting, ignoring this", buf, 0xCu);
        }
      }
    }
  }

  v191 = *MEMORY[0x277D85DE8];
  return v14 != 0;
}

- (BOOL)_generateCallInfo:(id)info
{
  v46 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = sub_254761764();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v42 = 138412546;
    selfCopy = self;
    v44 = 2112;
    selfCopy2 = infoCopy;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "getLocalICEData: %@ callInfo: %@", &v42, 0x16u);
  }

  v10 = objc_msgSend_sharedInstance(IMAVInterface, v6, v7, v8, v9);
  v15 = objc_msgSend_avChat(self, v11, v12, v13, v14);
  v20 = objc_msgSend_ID(self->_imHandle, v16, v17, v18, v19);
  v25 = objc_msgSend_service(self->_imHandle, v21, v22, v23, v24);
  v27 = objc_msgSend_avChat_generateCallInfoForID_service_usingRelay_callInfo_(v10, v26, v15, v20, v25, 0, infoCopy);

  v28 = sub_254761764();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v33 = objc_msgSend_localICEData(infoCopy, v29, v30, v31, v32);
    v42 = 138412546;
    selfCopy = v33;
    v44 = 2112;
    selfCopy2 = self;
    _os_log_impl(&dword_254743000, v28, OS_LOG_TYPE_DEFAULT, "    result: %@ participant: %@", &v42, 0x16u);
  }

  v38 = objc_msgSend_avChat(self, v34, v35, v36, v37);
  objc_msgSend__postNotificationName_participant_userInfo_(v38, v39, @"__kIMAVChatParticipantCallInfoChangedNotification", self, 0);

  v40 = *MEMORY[0x277D85DE8];
  return v27;
}

- (id)_natType
{
  v5 = objc_msgSend_properties(self, a2, v2, v3, v4);
  v6 = *MEMORY[0x277D19510];
  v10 = objc_msgSend_objectForKey_(v5, v7, *MEMORY[0x277D19510], v8, v9);

  if (v10)
  {
    v14 = objc_msgSend_objectForKey_(v5, v11, v6, v12, v13);
  }

  else
  {
    v18 = objc_msgSend_objectForKey_(v5, v11, *MEMORY[0x277D19558], v12, v13);
    if (v18)
    {
      v19 = objc_msgSend_dictionaryWithPlistData_(MEMORY[0x277CBEAC0], v15, v18, v16, v17);
      v14 = objc_msgSend_objectForKey_(v19, v20, v6, v21, v22);
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (void)_handleIMAVResponse:(unsigned int)response
{
  if (response <= 3)
  {
    if (response)
    {
      if (response == 1)
      {
        v27 = sub_254761764();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *v33 = 0;
          _os_log_impl(&dword_254743000, v27, OS_LOG_TYPE_DEFAULT, "Remote user has Declined", v33, 2u);
        }

        objc_msgSend_setStateToEndedWithReason_andError_(self, v28, 5, 0, v29);
      }

      else
      {
        if (response != 2)
        {
LABEL_20:

          objc_msgSend_setStateToEndedWithReason_andError_(self, a2, 5, 0xFFFFFFFFLL, v3);
          return;
        }

        v8 = sub_254761764();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "Remote user is busy", buf, 2u);
        }

        objc_msgSend_setStateToEndedWithReason_andError_(self, v9, 3, 0, v10);
      }
    }

    else
    {
      v11 = sub_254761764();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v36 = 0;
        _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "Remote user accepted", v36, 2u);
      }

      objc_msgSend_setState_(self, v12, 3, v13, v14);
    }
  }

  else
  {
    if (response <= 6)
    {
      if (response == 4)
      {
        v5 = sub_254761764();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *v32 = 0;
          v6 = "Remote user doesn't have a good network";
          v7 = v32;
          goto LABEL_25;
        }

        goto LABEL_26;
      }

      if (response == 5)
      {
        v5 = sub_254761764();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v31 = 0;
          v6 = "Remote user has no wifi";
          v7 = &v31;
LABEL_25:
          _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
          goto LABEL_26;
        }

        goto LABEL_26;
      }

      goto LABEL_20;
    }

    if (response != 7)
    {
      if (response == 11)
      {
        v5 = sub_254761764();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v30 = 0;
          v6 = "Remote user filtered the call";
          v7 = &v30;
          goto LABEL_25;
        }

LABEL_26:

        v19 = objc_msgSend_avChat(self, v15, v16, v17, v18);
        objc_msgSend__reduceInvitationTimeoutTime(v19, v20, v21, v22, v23);

        return;
      }

      goto LABEL_20;
    }

    v24 = sub_254761764();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 0;
      _os_log_impl(&dword_254743000, v24, OS_LOG_TYPE_DEFAULT, "Remote user has missed the call", v34, 2u);
    }

    objc_msgSend_setStateToEndedWithReason_andError_(self, v25, 22, 0, v26);
  }
}

- (void)_noteInviteDelivered:(BOOL)delivered
{
  v102 = *MEMORY[0x277D85DE8];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v5 = self->_participantsCallInfo;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v95, v101, 16);
  if (v7)
  {
    v12 = v7;
    v13 = *v96;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v96 != v13)
      {
        objc_enumerationMutation(v5);
      }

      v15 = *(*(&v95 + 1) + 8 * v14);
      if (objc_msgSend_state(v15, v8, v9, v10, v11, v95) <= 2)
      {
        if (objc_msgSend_inviteNeedsDelivery(v15, v8, v9, v10, v11))
        {
          break;
        }
      }

      if (v12 == ++v14)
      {
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v95, v101, 16);
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_17;
      }
    }

    objc_msgSend_setInviteNeedsDelivery_(v15, v8, 0, v10, v11);
    if (delivered)
    {

      goto LABEL_18;
    }

    if (objc_msgSend_isReinitiate(v15, v16, v17, v18, v19))
    {
      v24 = sub_254761764();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v100 = v15;
        _os_log_impl(&dword_254743000, v24, OS_LOG_TYPE_DEFAULT, "Ending call info %@ since the re-initiate failed", buf, 0xCu);
      }

      objc_msgSend_setState_(v15, v25, 4, v26, v27);
      v32 = objc_msgSend_sharedInstance(IMAVInterface, v28, v29, v30, v31);
      v37 = objc_msgSend_avChat(self, v33, v34, v35, v36);
      v42 = objc_msgSend_callID(v15, v38, v39, v40, v41);
      objc_msgSend_endAVConferenceWithChat_callID_(v32, v43, v37, v42, v44);
    }
  }

LABEL_17:

  if (delivered)
  {
LABEL_18:
    if ((objc_msgSend__inviteDelivered(self, v20, v21, v22, v23, v95) & 1) == 0)
    {
      v49 = objc_msgSend_avChat(self, v45, v46, v47, v48);
      v54 = objc_msgSend_localParticipant(v49, v50, v51, v52, v53);
      if (!objc_msgSend_isInitiator(v54, v55, v56, v57, v58))
      {

        goto LABEL_23;
      }

      v63 = objc_msgSend_state(self, v59, v60, v61, v62);

      if (v63 <= 3)
      {
        v68 = objc_msgSend_avChat(self, v64, v65, v66, v67);
        objc_msgSend__postNotificationName_participant_userInfo_(v68, v69, @"__kIMAVChatParticipantInvitationDeliveredNotification", self, 0);

        v74 = objc_msgSend_avChat(self, v70, v71, v72, v73);
        v79 = objc_msgSend__timings(v74, v75, v76, v77, v78);
        objc_msgSend_stopTimingForKey_(v79, v80, @"invitation-delivery-time", v81, v82);

        objc_msgSend__setInviteDelivered_(self, v83, 1, v84, v85);
        v49 = objc_msgSend_sharedInstance(IMAVCallManager, v86, v87, v88, v89);
        objc_msgSend__sendProxyUpdate(v49, v90, v91, v92, v93);
LABEL_23:
      }
    }
  }

  v94 = *MEMORY[0x277D85DE8];
}

- (void)_cleanupOrphanedCallInfos
{
  v48 = *MEMORY[0x277D85DE8];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v6 = objc_msgSend__participantsCallInfo(self, a2, v2, v3, v4);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v41, v47, 16);
  if (v8)
  {
    v14 = v8;
    v15 = *v42;
    *&v13 = 138412290;
    v40 = v13;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(v6);
        }

        v17 = *(*(&v41 + 1) + 8 * i);
        if (objc_msgSend_state(v17, v9, v10, v11, v12, v40) <= 1)
        {
          v18 = sub_254761764();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v40;
            v46 = v17;
            _os_log_impl(&dword_254743000, v18, OS_LOG_TYPE_DEFAULT, "Cleaning up call info because it has not started connecting: %@", buf, 0xCu);
          }

          objc_msgSend_setState_(v17, v19, 4, v20, v21);
          v26 = objc_msgSend_sharedInstance(IMAVInterface, v22, v23, v24, v25);
          v31 = objc_msgSend_avChat(self, v27, v28, v29, v30);
          v36 = objc_msgSend_callID(v17, v32, v33, v34, v35);
          objc_msgSend_endAVConferenceWithChat_callID_(v26, v37, v31, v36, v38);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v41, v47, 16);
    }

    while (v14);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_hangupCallLaterIfReinitiateFailsForCallInfo:(id)info
{
  infoCopy = info;
  v3 = infoCopy;
  im_dispatch_after();
}

- (id)_callInfoForReinitiate
{
  v2 = objc_alloc_init(IMAVChatParticipantCallInfo);
  objc_msgSend_setIsReinitiate_(v2, v3, 1, v4, v5);
  objc_msgSend_setInviteNeedsDelivery_(v2, v6, 1, v7, v8);

  return v2;
}

- (void)reinitializeCallForCallID:(unsigned int)d
{
  v6 = objc_msgSend__callInfoForCallID_(self, a2, d, v3, v4);
  if ((objc_msgSend_isBeingHandedOff(v6, v7, v8, v9, v10) & 1) == 0 && (objc_msgSend_isFinished(v6, v11, v12, v13, v14) & 1) == 0 && objc_msgSend_state(v6, v15, v16, v17, v18) == 3)
  {
    v19 = MEMORY[0x259C18900](@"com.apple.conference", @"kDisableReInitiate");

    if (!v19)
    {
      if ((objc_msgSend_isLocalParticipant(self, v20, v21, v22, v23) & 1) == 0 && (objc_msgSend_hasConnectingSessions(self, v24, v25, v26, v27) & 1) == 0 && objc_msgSend_hasReinitiateCapability(self, v24, v25, v26, v27))
      {
        objc_msgSend_setIsBeingHandedOff_(v6, v24, 1, v26, v27);
        v32 = objc_msgSend__callInfoForReinitiate(self, v28, v29, v30, v31);
        objc_msgSend__registerCallInfo_(self, v33, v32, v34, v35);
        objc_msgSend__reInitiateWithCallInfo_(self, v36, v32, v37, v38);
        objc_msgSend__hangupCallLaterIfReinitiateFailsForCallInfo_(self, v39, v32, v40, v41);
      }

      if ((objc_msgSend_hasReinitiateCapability(self, v24, v25, v26, v27) & 1) == 0)
      {
        v42 = sub_254761764();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *v43 = 0;
          _os_log_impl(&dword_254743000, v42, OS_LOG_TYPE_DEFAULT, " We don't have re-initiate capability...", v43, 2u);
        }
      }
    }
  }
}

- (void)_processPropertyUpdate:(id)update
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_objectForKey_(update, a2, *MEMORY[0x277D19528], v3, v4);
  v7 = sub_254761764();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    selfCopy = v6;
    _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "kFZVCPropertyPeerMayRequireCTBreak: %@", &v22, 0xCu);
  }

  if (objc_msgSend_BOOLValue(v6, v8, v9, v10, v11))
  {
    v12 = sub_254761764();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_254743000, v12, OS_LOG_TYPE_DEFAULT, "%@ may require break before make!", &v22, 0xCu);
    }

    v17 = objc_msgSend_avChat(self, v13, v14, v15, v16);
    objc_msgSend_setMayRequireBreakBeforeMake_(v17, v18, 1, v19, v20);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_updateProperties:(id)properties
{
  propertiesCopy = properties;
  if (objc_msgSend_count(propertiesCopy, v4, v5, v6, v7))
  {
    v12 = objc_msgSend_properties(self, v8, v9, v10, v11);
    if (!v12 || (v17 = v12, objc_msgSend_properties(self, v13, v14, v15, v16), v18 = objc_claimAutoreleasedReturnValue(), isEqualToDictionary = objc_msgSend_isEqualToDictionary_(v18, v19, propertiesCopy, v20, v21), v18, v17, (isEqualToDictionary & 1) == 0))
    {
      v23 = objc_msgSend_properties(self, v13, v14, v15, v16);
      v28 = objc_msgSend_mutableCopy(v23, v24, v25, v26, v27);

      objc_msgSend_addEntriesFromDictionary_(v28, v29, propertiesCopy, v30, v31);
      objc_msgSend_setProperties_(self, v32, v28, v33, v34);
      objc_msgSend__processPropertyUpdate_(self, v35, propertiesCopy, v36, v37);
    }
  }
}

- (void)_setConferenceID:(id)d
{
  if (self->_conferenceID != d)
  {
    v7 = objc_msgSend_copy(d, a2, d, v3, v4);
    conferenceID = self->_conferenceID;
    self->_conferenceID = v7;

    MEMORY[0x2821F96F8]();
  }
}

- (void)setInFrequencyLevel:(id)level
{
  levelCopy = level;
  p_inFrequencyLevel = &self->_inFrequencyLevel;
  if (self->_inFrequencyLevel != levelCopy)
  {
    v14 = levelCopy;
    objc_storeStrong(p_inFrequencyLevel, level);
    v11 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v7, v8, v9, v10);
    objc_msgSend___mainThreadPostNotificationName_object_(v11, v12, @"__kIMAVChatParticipantInFrequencyChangedNotification", self, v13);

    levelCopy = v14;
  }

  MEMORY[0x2821F96F8](p_inFrequencyLevel, levelCopy);
}

- (void)setOutFrequencyLevel:(id)level
{
  levelCopy = level;
  p_outFrequencyLevel = &self->_outFrequencyLevel;
  if (self->_outFrequencyLevel != levelCopy)
  {
    v14 = levelCopy;
    objc_storeStrong(p_outFrequencyLevel, level);
    v11 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v7, v8, v9, v10);
    objc_msgSend___mainThreadPostNotificationName_object_(v11, v12, @"__kIMAVChatParticipantOutFrequencyChangedNotification", self, v13);

    levelCopy = v14;
  }

  MEMORY[0x2821F96F8](p_outFrequencyLevel, levelCopy);
}

- (void)_switchToUseNewIMHandle:(id)handle
{
  handleCopy = handle;
  if (handleCopy)
  {
    imHandle = self->_imHandle;
    p_imHandle = &self->_imHandle;
    if (imHandle != handleCopy)
    {
      v8 = handleCopy;
      objc_storeStrong(p_imHandle, handle);
      handleCopy = v8;
    }
  }
}

- (CGSize)_remotePortraitOrientation
{
  width = self->_remotePortraitOrientation.width;
  height = self->_remotePortraitOrientation.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)_remoteLandscapeOrientation
{
  width = self->_remoteLandscapeOrientation.width;
  height = self->_remoteLandscapeOrientation.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)_remotePIPPortraitOrientation
{
  width = self->_remotePIPPortraitOrientation.width;
  height = self->_remotePIPPortraitOrientation.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)_remotePIPLandscapeOrientation
{
  width = self->_remotePIPLandscapeOrientation.width;
  height = self->_remotePIPLandscapeOrientation.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)_remotePortraitContentRect
{
  x = self->_remotePortraitContentRect.origin.x;
  y = self->_remotePortraitContentRect.origin.y;
  width = self->_remotePortraitContentRect.size.width;
  height = self->_remotePortraitContentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)_remoteLandscapeContentRect
{
  x = self->_remoteLandscapeContentRect.origin.x;
  y = self->_remoteLandscapeContentRect.origin.y;
  width = self->_remoteLandscapeContentRect.size.width;
  height = self->_remoteLandscapeContentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_reInitiateWithCallInfo:(id)info
{
  infoCopy = info;
  v9 = objc_msgSend_avChat(self, v5, v6, v7, v8);
  v14 = objc_msgSend_GUID(v9, v10, v11, v12, v13);
  v19 = objc_msgSend_vcPartyID(self, v15, v16, v17, v18);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_25475E638;
  v23[3] = &unk_279783670;
  v24 = v9;
  v25 = infoCopy;
  v20 = dispatch_get_global_queue(0, 0);
  v21 = infoCopy;
  v22 = v9;
  sub_25475E518(v14, v19, 1, v23, v20);
}

- (void)sendInvitation
{
  if (!objc_msgSend_state(self, a2, v2, v3, v4))
  {
    objc_msgSend_setState_(self, v6, 1, v7, v8);
    v13 = objc_msgSend_avChat(self, v9, v10, v11, v12);
    v18 = objc_msgSend__timings(v13, v14, v15, v16, v17);
    objc_msgSend_stopTimingForKey_(v18, v19, @"time-to-av-invitation-op-creation", v20, v21);

    v22 = objc_alloc_init(IMAVChatParticipantCallInfo);
    objc_msgSend__registerCallInfo_(self, v23, v22, v24, v25);
    v30 = objc_msgSend_GUID(v13, v26, v27, v28, v29);
    v35 = objc_msgSend_vcPartyID(self, v31, v32, v33, v34);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = sub_25475F1F4;
    v38[3] = &unk_279783698;
    v39 = v22;
    v36 = dispatch_get_global_queue(0, 0);
    v37 = v22;
    sub_25475E518(v30, v35, 0, v38, v36);
  }
}

- (void)_sendResponse:(unsigned int)response callInfo:(id)info
{
  v49 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v7 = sub_254761764();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = _NSStringDescriptionForIMAVResponse(response);
    *buf = 138412546;
    selfCopy = self;
    v47 = 2112;
    v48 = v8;
    _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "participant: %@   response: %@", buf, 0x16u);
  }

  v13 = objc_msgSend_avChat(self, v9, v10, v11, v12);
  v18 = v13;
  if (response)
  {
    v19 = objc_msgSend_GUID(v13, v14, v15, v16, v17);
    v24 = objc_msgSend_vcPartyID(self, v20, v21, v22, v23);
    sub_25475F7AC(response, 0, 1, 1, v19, v24, infoCopy);
  }

  else
  {
    if (objc_msgSend_isReinitiate(infoCopy, v14, v15, v16, v17))
    {
      objc_msgSend__hangupCallLaterIfReinitiateFailsForCallInfo_(self, v25, infoCopy, v27, v28);
    }

    v29 = objc_msgSend_GUID(v18, v25, v26, v27, v28);
    v34 = objc_msgSend_vcPartyID(self, v30, v31, v32, v33);
    isReinitiate = objc_msgSend_isReinitiate(infoCopy, v35, v36, v37, v38);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_25475F788;
    v42[3] = &unk_2797836C0;
    v44 = 0;
    v43 = infoCopy;
    v40 = dispatch_get_global_queue(0, 0);
    sub_25475E518(v29, v34, isReinitiate, v42, v40);

    v19 = v43;
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)setWaitingToConnect:(BOOL)connect
{
  connectCopy = connect;
  v29 = *MEMORY[0x277D85DE8];
  v5 = sub_254761764();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412546;
    selfCopy = self;
    v27 = 1024;
    v28 = connectCopy;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "participant: %@  waiting: %d", &v25, 0x12u);
  }

  v10 = objc_msgSend__connectTimeoutTimer(self, v6, v7, v8, v9);
  v15 = v10;
  if (connectCopy)
  {

    if (!v15)
    {
      v17 = objc_msgSend_scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_(MEMORY[0x277CBEBB8], v16, self, sel__connectTimeout_, 0, 0, 180.0);
      objc_msgSend__setConnectTimeoutTimer_(self, v18, v17, v19, v20);
    }
  }

  else
  {
    objc_msgSend_invalidate(v10, v11, v12, v13, v14);

    objc_msgSend__setConnectTimeoutTimer_(self, v21, 0, v22, v23);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)resetWaitingToConnectTimer
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "participant: %@", &v22, 0xCu);
  }

  v8 = objc_msgSend__connectTimeoutTimer(self, v4, v5, v6, v7);
  objc_msgSend_invalidate(v8, v9, v10, v11, v12);

  objc_msgSend__setConnectTimeoutTimer_(self, v13, 0, v14, v15);
  v17 = objc_msgSend_scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_(MEMORY[0x277CBEBB8], v16, self, sel__connectTimeout_, 0, 0, 180.0);
  objc_msgSend__setConnectTimeoutTimer_(self, v18, v17, v19, v20);

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_connectTimeout:(id)timeout
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = sub_254761764();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_msgSend_name(self, v5, v6, v7, v8);
    v16 = 138412290;
    v17 = v9;
    _os_log_impl(&dword_254743000, v4, OS_LOG_TYPE_DEFAULT, "Participant %@ _connectTimeout", &v16, 0xCu);
  }

  objc_msgSend__setConnectTimeoutTimer_(self, v10, 0, v11, v12);
  objc_msgSend_setStateToEndedWithReason_andError_(self, v13, 6, 1008, v14);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)videoLayer
{
  if (!objc_msgSend_isLocalParticipant(self, a2, v2, v3, v4))
  {
    return 0;
  }

  v9 = objc_msgSend_sharedInstance(IMAVInterface, v5, v6, v7, v8);
  v14 = objc_msgSend_localVideoLayer(v9, v10, v11, v12, v13);

  return v14;
}

- (void)setVideoLayer:(void *)layer
{
  if (objc_msgSend_isLocalParticipant(self, a2, layer, v3, v4))
  {
    v13 = objc_msgSend_sharedInstance(IMAVInterface, v6, v7, v8, v9);
    objc_msgSend_setLocalVideoLayer_(v13, v10, layer, v11, v12);
  }
}

- (void)videoBackLayer
{
  if (!objc_msgSend_isLocalParticipant(self, a2, v2, v3, v4))
  {
    return 0;
  }

  v9 = objc_msgSend_sharedInstance(IMAVInterface, v5, v6, v7, v8);
  v14 = objc_msgSend_localVideoBackLayer(v9, v10, v11, v12, v13);

  return v14;
}

- (void)setVideoBackLayer:(void *)layer
{
  if (objc_msgSend_isLocalParticipant(self, a2, layer, v3, v4))
  {
    v13 = objc_msgSend_sharedInstance(IMAVInterface, v6, v7, v8, v9);
    objc_msgSend_setLocalVideoBackLayer_(v13, v10, layer, v11, v12);
  }
}

- (id)_proxyRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = objc_msgSend_name(self, v4, v5, v6, v7);
  if (v10)
  {
    objc_msgSend_setObject_forKey_(v3, v8, v10, @"Name", v9);
  }

  return v3;
}

@end