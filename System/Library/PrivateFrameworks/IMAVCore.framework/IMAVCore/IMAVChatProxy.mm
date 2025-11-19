@interface IMAVChatProxy
- (BOOL)_isCallUpgradeTo:(id)a3;
- (BOOL)hasReceivedFirstFrame;
- (BOOL)isCaller;
- (BOOL)isMute;
- (BOOL)isRelayed;
- (BOOL)isSendingAudio;
- (BOOL)isSendingVideo;
- (BOOL)isStateFinal;
- (BOOL)isVideo;
- (IMHandle)initiatorIMHandle;
- (IMHandle)otherIMHandle;
- (NSArray)remoteParticipants;
- (NSDate)dateConnected;
- (NSDate)dateEnded;
- (double)connectionTimeoutTime;
- (double)invitationTimeoutTime;
- (id)description;
- (int)endedError;
- (unsigned)endedReason;
- (unsigned)sessionID;
- (unsigned)state;
- (void)acceptInvitation;
- (void)cancelInvitation;
- (void)declineInvitation;
- (void)endChat;
- (void)finalUpdate;
- (void)forwardInvocation:(id)a3;
- (void)invite:(id)a3 additionalPeers:(id)a4 excludingPushTokens:(id)a5;
- (void)inviteAll;
- (void)setConnectionTimeoutTime:(double)a3;
- (void)setInvitationTimeoutTime:(double)a3;
- (void)setMute:(BOOL)a3;
- (void)updateWithInfo:(id)a3;
@end

@implementation IMAVChatProxy

- (id)description
{
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_initiatorIMHandle(self, a2, v2, v3, v4);
  v12 = objc_msgSend_description(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_otherIMHandle(self, v13, v14, v15, v16);
  v22 = objc_msgSend_description(v17, v18, v19, v20, v21);
  v26 = objc_msgSend_stringWithFormat_(v6, v23, @"Initiator: %@, Receiver: %@", v24, v25, v12, v22);

  v27 = MEMORY[0x277CCACA8];
  if (objc_msgSend_isVideo(self, v28, v29, v30, v31))
  {
    v36 = @"Video";
  }

  else
  {
    v36 = @"Audio";
  }

  v37 = objc_msgSend_state(self, v32, v33, v34, v35);
  v38 = _NSStringDescriptionForIMAVChatState(v37);
  v43 = objc_msgSend_conferenceID(self, v39, v40, v41, v42);
  v48 = objc_msgSend_sessionID(self, v44, v45, v46, v47);
  v53 = objc_msgSend_GUID(self, v49, v50, v51, v52);
  v57 = objc_msgSend_stringWithFormat_(v27, v54, @"<%p> %@ chat with %@ (state %@) (ConfID: %@) (SID: %u) (GUID: %@)", v55, v56, self, v36, v26, v38, v43, v48, v53);

  return v57;
}

- (unsigned)sessionID
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"SessionID", v2, v3);
  v9 = objc_msgSend_unsignedIntValue(v4, v5, v6, v7, v8);

  return v9;
}

- (unsigned)state
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"State", v2, v3);
  v9 = objc_msgSend_unsignedIntValue(v4, v5, v6, v7, v8);

  return v9;
}

- (BOOL)isStateFinal
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"IsStateFinal", v2, v3);
  v9 = objc_msgSend_BOOLValue(v4, v5, v6, v7, v8);

  return v9;
}

- (BOOL)isSendingAudio
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"IsSendingAudio", v2, v3);
  v9 = objc_msgSend_BOOLValue(v4, v5, v6, v7, v8);

  return v9;
}

- (BOOL)isSendingVideo
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"IsSendingVideo", v2, v3);
  v9 = objc_msgSend_BOOLValue(v4, v5, v6, v7, v8);

  return v9;
}

- (BOOL)hasReceivedFirstFrame
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"HasReceivedFirstFrame", v2, v3);
  v9 = objc_msgSend_BOOLValue(v4, v5, v6, v7, v8);

  return v9;
}

- (NSDate)dateConnected
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"DateConnected", v2, v3);
  objc_msgSend_doubleValue(v4, v5, v6, v7, v8);
  v10 = v9;
  if (v9 >= 1.0)
  {
    v12 = objc_alloc(MEMORY[0x277CBEAA8]);
    v11 = objc_msgSend_initWithTimeIntervalSince1970_(v12, v13, v14, v15, v16, v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSDate)dateEnded
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"DateEnded", v2, v3);
  objc_msgSend_doubleValue(v4, v5, v6, v7, v8);
  v10 = v9;
  if (v9 >= 1.0)
  {
    v12 = objc_alloc(MEMORY[0x277CBEAA8]);
    v11 = objc_msgSend_initWithTimeIntervalSince1970_(v12, v13, v14, v15, v16, v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSArray)remoteParticipants
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_objectForKey_(self->_info, a2, @"RemoteParticipants", v2, v3);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = v5;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v24, v28, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [IMAVChatParticipantProxy alloc];
        v20 = objc_msgSend_initWithDictionary_chat_(v14, v15, v13, self, v16, v24);
        if (v20)
        {
          objc_msgSend_addObject_(v6, v17, v20, v18, v19);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v21, &v24, v28, 16);
    }

    while (v10);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v6;
}

- (IMHandle)initiatorIMHandle
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"Initiator", v2, v3);
  v8 = objc_msgSend__imHandleFromProxyRepresentation_(IMAVChat, v5, v4, v6, v7);

  return v8;
}

- (IMHandle)otherIMHandle
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"Other", v2, v3);
  v8 = objc_msgSend__imHandleFromProxyRepresentation_(IMAVChat, v5, v4, v6, v7);

  return v8;
}

- (BOOL)isCaller
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"IsCaller", v2, v3);
  v9 = objc_msgSend_BOOLValue(v4, v5, v6, v7, v8);

  return v9;
}

- (BOOL)isVideo
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"IsVideo", v2, v3);
  v9 = objc_msgSend_BOOLValue(v4, v5, v6, v7, v8);

  return v9;
}

- (BOOL)isMute
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"IsMute", v2, v3);
  v9 = objc_msgSend_BOOLValue(v4, v5, v6, v7, v8);

  return v9;
}

- (void)setMute:(BOOL)a3
{
  v3 = a3;
  v38 = *MEMORY[0x277D85DE8];
  v5 = sub_254761764();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v35[0] = 67109378;
    v35[1] = v3;
    v36 = 2112;
    v37 = self;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Client called setMute %d on chat proxy %@", v35, 0x12u);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = objc_alloc(MEMORY[0x277CCABB0]);
  v16 = objc_msgSend_initWithDouble_(v7, v8, v9, v10, v11, v3);
  if (v16)
  {
    CFDictionarySetValue(v6, @"IsMute", v16);
  }

  v17 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v12, v13, v14, v15);
  v22 = objc_msgSend_account(self, v18, v19, v20, v21);
  v27 = objc_msgSend_GUID(self, v23, v24, v25, v26);
  isVideo = objc_msgSend_isVideo(self, v28, v29, v30, v31);
  objc_msgSend_account_avAction_withArguments_toAVChat_isVideo_(v17, v33, v22, 9, v6, v27, isVideo);

  v34 = *MEMORY[0x277D85DE8];
}

- (unsigned)endedReason
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"EndedReason", v2, v3);
  v9 = objc_msgSend_unsignedIntValue(v4, v5, v6, v7, v8);

  return v9;
}

- (int)endedError
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"EndedError", v2, v3);
  v9 = objc_msgSend_intValue(v4, v5, v6, v7, v8);

  return v9;
}

- (double)invitationTimeoutTime
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"InvitationTimeoutTime", v2, v3);
  objc_msgSend_doubleValue(v4, v5, v6, v7, v8);
  v10 = v9;

  return v10;
}

- (void)setInvitationTimeoutTime:(double)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = sub_254761764();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v35 = 134218242;
    v36 = a3;
    v37 = 2112;
    v38 = self;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Client called setInvitationTimeoutTime %f on chat proxy %@", &v35, 0x16u);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = objc_alloc(MEMORY[0x277CCABB0]);
  v16 = objc_msgSend_initWithDouble_(v7, v8, v9, v10, v11, a3);
  if (v16)
  {
    CFDictionarySetValue(v6, @"InvitationTimeoutTime", v16);
  }

  v17 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v12, v13, v14, v15);
  v22 = objc_msgSend_account(self, v18, v19, v20, v21);
  v27 = objc_msgSend_GUID(self, v23, v24, v25, v26);
  isVideo = objc_msgSend_isVideo(self, v28, v29, v30, v31);
  objc_msgSend_account_avAction_withArguments_toAVChat_isVideo_(v17, v33, v22, 7, v6, v27, isVideo);

  v34 = *MEMORY[0x277D85DE8];
}

- (double)connectionTimeoutTime
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"ConnectionTimeoutTime", v2, v3);
  objc_msgSend_doubleValue(v4, v5, v6, v7, v8);
  v10 = v9;

  return v10;
}

- (void)setConnectionTimeoutTime:(double)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = sub_254761764();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v35 = 134218242;
    v36 = a3;
    v37 = 2112;
    v38 = self;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Client called setConnectionTimeoutTime %f on chat proxy %@", &v35, 0x16u);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = objc_alloc(MEMORY[0x277CCABB0]);
  v16 = objc_msgSend_initWithDouble_(v7, v8, v9, v10, v11, a3);
  if (v16)
  {
    CFDictionarySetValue(v6, @"ConnectionTimeoutTime", v16);
  }

  v17 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v12, v13, v14, v15);
  v22 = objc_msgSend_account(self, v18, v19, v20, v21);
  v27 = objc_msgSend_GUID(self, v23, v24, v25, v26);
  isVideo = objc_msgSend_isVideo(self, v28, v29, v30, v31);
  objc_msgSend_account_avAction_withArguments_toAVChat_isVideo_(v17, v33, v22, 8, v6, v27, isVideo);

  v34 = *MEMORY[0x277D85DE8];
}

- (BOOL)isRelayed
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"IsRelayed", v2, v3);
  v9 = objc_msgSend_BOOLValue(v4, v5, v6, v7, v8);

  return v9;
}

- (BOOL)_isCallUpgradeTo:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_otherIMHandle(self, v5, v6, v7, v8);
  v14 = objc_msgSend_ID(v9, v10, v11, v12, v13);
  v19 = objc_msgSend_ID(v4, v15, v16, v17, v18);

  LOBYTE(v4) = MEMORY[0x259C18A30](v14, v19);
  return v4;
}

- (void)inviteAll
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412290;
    v27 = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Client called inviteAll on chat proxy %@", &v26, 0xCu);
  }

  v8 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v4, v5, v6, v7);
  v13 = objc_msgSend_account(self, v9, v10, v11, v12);
  v18 = objc_msgSend_GUID(self, v14, v15, v16, v17);
  isVideo = objc_msgSend_isVideo(self, v19, v20, v21, v22);
  objc_msgSend_account_avAction_withArguments_toAVChat_isVideo_(v8, v24, v13, 5, 0, v18, isVideo);

  v25 = *MEMORY[0x277D85DE8];
}

- (void)invite:(id)a3 additionalPeers:(id)a4 excludingPushTokens:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_254761764();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v39 = 138413058;
    v40 = v8;
    v41 = 2112;
    v42 = v9;
    v43 = 2112;
    v44 = v10;
    v45 = 2112;
    v46 = self;
    _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "Client called invite %@ additionalPeers %@ excludingPushTokens %@ on chat proxy %@", &v39, 0x2Au);
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = objc_msgSend__proxyRepresentationForIMHandle_(IMAVChat, v13, v8, v14, v15);
  if (v20)
  {
    CFDictionarySetValue(v12, @"Buddy", v20);
  }

  if (v9)
  {
    CFDictionarySetValue(v12, @"AdditionalPeers", v9);
  }

  if (v10)
  {
    CFDictionarySetValue(v12, @"ExcludingPushTokens", v10);
  }

  v21 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v16, v17, v18, v19);
  v26 = objc_msgSend_account(self, v22, v23, v24, v25);
  v31 = objc_msgSend_GUID(self, v27, v28, v29, v30);
  isVideo = objc_msgSend_isVideo(self, v32, v33, v34, v35);
  objc_msgSend_account_avAction_withArguments_toAVChat_isVideo_(v21, v37, v26, 6, v12, v31, isVideo);

  v38 = *MEMORY[0x277D85DE8];
}

- (void)acceptInvitation
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412290;
    v27 = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Client called acceptInvitation on chat proxy %@", &v26, 0xCu);
  }

  v8 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v4, v5, v6, v7);
  v13 = objc_msgSend_account(self, v9, v10, v11, v12);
  v18 = objc_msgSend_GUID(self, v14, v15, v16, v17);
  isVideo = objc_msgSend_isVideo(self, v19, v20, v21, v22);
  objc_msgSend_account_avAction_withArguments_toAVChat_isVideo_(v8, v24, v13, 1, 0, v18, isVideo);

  v25 = *MEMORY[0x277D85DE8];
}

- (void)cancelInvitation
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412290;
    v27 = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Client called cancelInvitation on chat proxy %@", &v26, 0xCu);
  }

  v8 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v4, v5, v6, v7);
  v13 = objc_msgSend_account(self, v9, v10, v11, v12);
  v18 = objc_msgSend_GUID(self, v14, v15, v16, v17);
  isVideo = objc_msgSend_isVideo(self, v19, v20, v21, v22);
  objc_msgSend_account_avAction_withArguments_toAVChat_isVideo_(v8, v24, v13, 3, 0, v18, isVideo);

  v25 = *MEMORY[0x277D85DE8];
}

- (void)declineInvitation
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412290;
    v27 = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Client called declineInvitation on chat proxy %@", &v26, 0xCu);
  }

  v8 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v4, v5, v6, v7);
  v13 = objc_msgSend_account(self, v9, v10, v11, v12);
  v18 = objc_msgSend_GUID(self, v14, v15, v16, v17);
  isVideo = objc_msgSend_isVideo(self, v19, v20, v21, v22);
  objc_msgSend_account_avAction_withArguments_toAVChat_isVideo_(v8, v24, v13, 2, 0, v18, isVideo);

  v25 = *MEMORY[0x277D85DE8];
}

- (void)endChat
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Client called endChat on chat proxy %@", &v8, 0xCu);
  }

  objc_msgSend_endChatWithReason_(self, v4, 0, v5, v6);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)finalUpdate
{
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Proxy is going away faking a state change to ended", v24, 2u);
  }

  v8 = objc_msgSend_mutableCopy(self->_info, v4, v5, v6, v7);
  v12 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v9, 5, v10, v11);
  objc_msgSend_setObject_forKey_(v8, v13, v12, @"State", v14);

  v18 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v15, 1, v16, v17);
  objc_msgSend_setObject_forKey_(v8, v19, v18, @"IsStateFinal", v20);

  objc_msgSend_updateWithInfo_(self, v21, v8, v22, v23);
}

- (void)updateWithInfo:(id)a3
{
  v264 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = sub_254761764();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v262 = self;
    *&v262[8] = 2112;
    v263 = v5;
    _os_log_impl(&dword_254743000, v6, OS_LOG_TYPE_DEFAULT, "Updating proxy %@ with info %@", buf, 0x16u);
  }

  v253 = objc_msgSend_state(self, v7, v8, v9, v10);
  v15 = objc_msgSend_remoteParticipants(self, v11, v12, v13, v14);
  v20 = objc_msgSend_lastObject(v15, v16, v17, v18, v19);
  v250 = objc_msgSend__inviteDelivered(v20, v21, v22, v23, v24);

  isMute = objc_msgSend_isMute(self, v25, v26, v27, v28);
  isSendingAudio = objc_msgSend_isSendingAudio(self, v29, v30, v31, v32);
  v36 = objc_msgSend_objectForKey_(self->_info, v33, @"MetadataFinalized", v34, v35);
  v252 = objc_msgSend_BOOLValue(v36, v37, v38, v39, v40);

  v44 = objc_msgSend_objectForKey_(self->_info, v41, @"HasReceivedFirstFrame", v42, v43);
  v49 = objc_msgSend_BOOLValue(v44, v45, v46, v47, v48);

  objc_storeStrong(&self->_info, a3);
  v54 = objc_msgSend_state(self, v50, v51, v52, v53);
  v59 = objc_msgSend_remoteParticipants(self, v55, v56, v57, v58);
  v64 = objc_msgSend_lastObject(v59, v60, v61, v62, v63);
  v249 = objc_msgSend__inviteDelivered(v64, v65, v66, v67, v68);

  v247 = objc_msgSend_isMute(self, v69, v70, v71, v72);
  v254 = objc_msgSend_isSendingAudio(self, v73, v74, v75, v76);
  v77 = v5;
  v81 = objc_msgSend_objectForKey_(v5, v78, @"MetadataFinalized", v79, v80);
  v251 = objc_msgSend_BOOLValue(v81, v82, v83, v84, v85);

  v86 = v54;
  v90 = objc_msgSend_objectForKey_(self->_info, v87, @"HasReceivedFirstFrame", v88, v89);
  v95 = objc_msgSend_BOOLValue(v90, v91, v92, v93, v94);

  v96 = sub_254761764();
  if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
  {
    v97 = _NSStringDescriptionForIMAVChatState(v253);
    v98 = _NSStringDescriptionForIMAVChatState(v54);
    *buf = 138412546;
    *v262 = v97;
    *&v262[8] = 2112;
    v263 = v98;
    _os_log_impl(&dword_254743000, v96, OS_LOG_TYPE_DEFAULT, "Old state %@, new state %@", buf, 0x16u);
  }

  v99 = sub_254761764();
  if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
  {
    if (v250)
    {
      v100 = @"YES";
    }

    else
    {
      v100 = @"NO";
    }

    if (v249)
    {
      v101 = @"YES";
    }

    else
    {
      v101 = @"NO";
    }

    *buf = 138412546;
    *v262 = v100;
    *&v262[8] = 2112;
    v263 = v101;
    _os_log_impl(&dword_254743000, v99, OS_LOG_TYPE_DEFAULT, "Old delivered %@, new  %@", buf, 0x16u);
  }

  v102 = sub_254761764();
  LODWORD(v103) = v49;
  if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
  {
    if (isSendingAudio)
    {
      v104 = @"YES";
    }

    else
    {
      v104 = @"NO";
    }

    if (v254)
    {
      v105 = @"YES";
    }

    else
    {
      v105 = @"NO";
    }

    *buf = 138412546;
    *v262 = v104;
    *&v262[8] = 2112;
    v263 = v105;
    _os_log_impl(&dword_254743000, v102, OS_LOG_TYPE_DEFAULT, "Old sendingAudio %@, new %@", buf, 0x16u);
  }

  v106 = sub_254761764();
  v107 = v252;
  if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
  {
    if (v252)
    {
      v108 = @"YES";
    }

    else
    {
      v108 = @"NO";
    }

    if (v251)
    {
      v109 = @"YES";
    }

    else
    {
      v109 = @"NO";
    }

    *buf = 138412546;
    *v262 = v108;
    *&v262[8] = 2112;
    v263 = v109;
    _os_log_impl(&dword_254743000, v106, OS_LOG_TYPE_DEFAULT, "Old metadataFinalized %@, new %@", buf, 0x16u);
  }

  v110 = sub_254761764();
  if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
  {
    if (v103)
    {
      v111 = @"YES";
    }

    else
    {
      v111 = @"NO";
    }

    if (v95)
    {
      v112 = @"YES";
    }

    else
    {
      v112 = @"NO";
    }

    *buf = 138412546;
    *v262 = v111;
    *&v262[8] = 2112;
    v263 = v112;
    _os_log_impl(&dword_254743000, v110, OS_LOG_TYPE_DEFAULT, "Old hasReceivedFirstRemoteFrame %@, new %@", buf, 0x16u);
  }

  v117 = 0x277CCA000uLL;
  if (v253 != v54)
  {
    isVideo = objc_msgSend_isVideo(self, v113, v114, v115, v116);
    v119 = sub_254761764();
    v120 = os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT);
    if (isVideo)
    {
      if (v120)
      {
        *buf = 0;
        _os_log_impl(&dword_254743000, v119, OS_LOG_TYPE_DEFAULT, "Kicking off AV call state update", buf, 2u);
      }

      v125 = objc_msgSend_sharedInstance(IMAVCallManager, v121, v122, v123, v124);
      objc_msgSend__updateAVCallState(v125, v126, v127, v128, v129);
    }

    else
    {
      if (v120)
      {
        *buf = 0;
        _os_log_impl(&dword_254743000, v119, OS_LOG_TYPE_DEFAULT, "Kicking off AC call state update", buf, 2u);
      }

      v125 = objc_msgSend_sharedInstance(IMAVCallManager, v130, v131, v132, v133);
      objc_msgSend__updateACCallState(v125, v134, v135, v136, v137);
    }

    if (v54 == 1)
    {
      if (objc_msgSend_isCaller(self, v138, v139, v140, v141))
      {
        v146 = sub_254761764();
        if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v262 = self;
          _os_log_impl(&dword_254743000, v146, OS_LOG_TYPE_DEFAULT, " => Proxy is an outgoing chat, not notifying as invited: %@", buf, 0xCu);
        }
      }

      else
      {
        v246 = v103;
        v258 = 0u;
        v259 = 0u;
        v256 = 0u;
        v257 = 0u;
        v147 = objc_msgSend_sharedInstance(IMAVController, v142, v143, v144, v145);
        v146 = objc_msgSend_delegates(v147, v148, v149, v150, v151);

        v153 = objc_msgSend_countByEnumeratingWithState_objects_count_(v146, v152, &v256, v260, 16);
        if (v153)
        {
          v154 = v153;
          v244 = v95;
          v155 = self;
          v245 = v77;
          v156 = *v257;
          do
          {
            for (i = 0; i != v154; ++i)
            {
              if (*v257 != v156)
              {
                objc_enumerationMutation(v146);
              }

              v158 = *(*(&v256 + 1) + 8 * i);
              v159 = sub_254761764();
              if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v262 = v158;
                _os_log_impl(&dword_254743000, v159, OS_LOG_TYPE_DEFAULT, "Checking delegate: %@", buf, 0xCu);
              }

              v160 = objc_opt_respondsToSelector();
              v161 = sub_254761764();
              v162 = os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT);
              if (v160)
              {
                if (v162)
                {
                  *buf = 138412290;
                  *v262 = v158;
                  _os_log_impl(&dword_254743000, v161, OS_LOG_TYPE_DEFAULT, " => Dispatching to delegate: %@", buf, 0xCu);
                }

                objc_msgSend_invitedToIMAVChat_(v158, v163, v155, v164, v165);
              }

              else
              {
                if (v162)
                {
                  *buf = 138412290;
                  *v262 = v158;
                  _os_log_impl(&dword_254743000, v161, OS_LOG_TYPE_DEFAULT, " => **NOT** Dispatching to delegate: %@", buf, 0xCu);
                }
              }
            }

            v154 = objc_msgSend_countByEnumeratingWithState_objects_count_(v146, v166, &v256, v260, 16);
          }

          while (v154);
          v77 = v245;
          self = v155;
          LOBYTE(v103) = v246;
          v86 = v86;
          LOBYTE(v95) = v244;
          v117 = 0x277CCA000;
        }
      }
    }

    v167 = v77;
    v168 = v103;
    v169 = sub_254761764();
    if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v262 = v253;
      *&v262[4] = 1024;
      *&v262[6] = v86;
      _os_log_impl(&dword_254743000, v169, OS_LOG_TYPE_DEFAULT, "Posting proxy state changed notification from %d to %d", buf, 0xEu);
    }

    v174 = objc_msgSend_defaultCenter(*(v117 + 2968), v170, v171, v172, v173);
    v175 = MEMORY[0x277CBEAC0];
    objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v176, v86, v177, v178);
    v179 = v103 = v117;
    v183 = objc_msgSend_dictionaryWithObjectsAndKeys_(v175, v180, v179, v181, v182, @"__kIMAVChatStateKey", 0);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v174, v184, @"__kIMAVChatStateChangedNotification", self, v183);

    v117 = v103;
    LOBYTE(v103) = v168;
    v77 = v167;
    v107 = v252;
  }

  if (!(v250 & 1 | ((v249 & 1) == 0)))
  {
    v185 = v107;
    v186 = v77;
    v187 = v103;
    v188 = sub_254761764();
    if (os_log_type_enabled(v188, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v188, OS_LOG_TYPE_DEFAULT, "Posting proxy participant notification delivered", buf, 2u);
    }

    v193 = objc_msgSend_defaultCenter(*(v117 + 2968), v189, v190, v191, v192);
    v198 = objc_msgSend_remoteParticipants(self, v194, v195, v196, v197);
    objc_msgSend_lastObject(v198, v199, v200, v201, v202);
    v203 = v103 = v117;
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v193, v204, @"__kIMAVChatParticipantInvitationDeliveredNotification", v203, 0);

    v117 = v103;
    LOBYTE(v103) = v187;
    v77 = v186;
    v107 = v185;
  }

  if (isMute != v247)
  {
    v205 = sub_254761764();
    if (os_log_type_enabled(v205, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v262 = isMute;
      *&v262[4] = 1024;
      *&v262[6] = v247;
      _os_log_impl(&dword_254743000, v205, OS_LOG_TYPE_DEFAULT, "Posting proxy is mute changed notification from %d to %d", buf, 0xEu);
    }

    v210 = objc_msgSend_defaultCenter(*(v117 + 2968), v206, v207, v208, v209);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v210, v211, @"__kIMAVChatIsMutedChangedNotification", self, 0);
  }

  if (isSendingAudio != v254)
  {
    v212 = sub_254761764();
    if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v262 = isSendingAudio;
      *&v262[4] = 1024;
      *&v262[6] = v254;
      _os_log_impl(&dword_254743000, v212, OS_LOG_TYPE_DEFAULT, "Posting proxy sending audio changed notification from %d to %d", buf, 0xEu);
    }

    v217 = objc_msgSend_defaultCenter(*(v117 + 2968), v213, v214, v215, v216);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v217, v218, @"__kIMAVChatSendingAudioChangedNotification", self, 0);
  }

  if (!(v107 & 1 | ((v251 & 1) == 0)))
  {
    v219 = sub_254761764();
    if (os_log_type_enabled(v219, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v219, OS_LOG_TYPE_DEFAULT, "Posting proxy conference metadata updated notification", buf, 2u);
    }

    v224 = objc_msgSend_defaultCenter(*(v117 + 2968), v220, v221, v222, v223);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v224, v225, @"__kIMAVChatConferenceMetadataUpdatedNotification", self, 0);
  }

  if (!(v103 & 1 | ((v95 & 1) == 0)))
  {
    v226 = sub_254761764();
    if (os_log_type_enabled(v226, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v226, OS_LOG_TYPE_DEFAULT, "Posting proxy participant received first frame notification", buf, 2u);
    }

    v231 = objc_msgSend_defaultCenter(*(v117 + 2968), v227, v228, v229, v230);
    v236 = objc_msgSend_remoteParticipants(self, v232, v233, v234, v235);
    v241 = objc_msgSend_lastObject(v236, v237, v238, v239, v240);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v231, v242, @"__kIMAVChatParticipantReceivedFirstFrameNotification", v241, 0);
  }

  v243 = *MEMORY[0x277D85DE8];
}

- (void)forwardInvocation:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = sub_254761764();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_msgSend_selector(v3, v5, v6, v7, v8);
    v10 = NSStringFromSelector(v9);
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&dword_254743000, v4, OS_LOG_TYPE_DEFAULT, "[WARN] ********** IMAVChatProxy does not respond to selector %@, please file a radar **********", &v12, 0xCu);
  }

  IMLogBacktrace();
  v11 = *MEMORY[0x277D85DE8];
}

@end