@interface IMAVChat
+ (id)_acceptedChats;
+ (id)_activeChat;
+ (id)_avChatArray;
+ (id)_avChatConnectingFromIMHandle:(id)a3;
+ (id)_avChatInvitedByIMHandle:(id)a3 orConferenceID:(id)a4;
+ (id)_avChatWaitingForReplyFromIMHandle:(id)a3 orConferenceID:(id)a4;
+ (id)_avChatWithConferenceID:(id)a3;
+ (id)_avChatWithGUID:(id)a3;
+ (id)_avChatWithMatchingIMHandles:(id)a3 video:(BOOL)a4;
+ (id)_chatList;
+ (id)_chatListLock;
+ (id)_connectedChat;
+ (id)_imHandleFromProxyRepresentation:(id)a3;
+ (id)_nonFinalChat;
+ (id)_proxyRepresentationForIMHandle:(id)a3;
+ (id)acceptedChats;
+ (id)activeChat;
+ (id)avChatWithGUID:(id)a3;
+ (id)chatList;
+ (id)connectedChat;
+ (id)nonFinalChat;
+ (int)systemSupportsNewOutgoingConferenceTo:(id)a3 isVideo:(BOOL)a4;
- (BOOL)_cachedBoolForKey:(id)a3;
- (BOOL)_hasCachedBoolForKey:(id)a3;
- (BOOL)_isCallUpgradeTo:(id)a3;
- (BOOL)_isVideoUpgradeTo:(id)a3;
- (BOOL)_moveVCPartyID:(id)a3 toIndex:(unsigned int)a4 inCount:(unsigned int)a5;
- (BOOL)_participantsCheckOut;
- (BOOL)_processVCResponseDict:(id)a3;
- (BOOL)isMute;
- (BOOL)isPaused;
- (BOOL)isRemoteMute;
- (BOOL)isSendingAudio;
- (BOOL)isSendingVideo;
- (BOOL)startPreviewWithError:(id *)a3;
- (BOOL)stopPreview;
- (CGSize)landscapeAspectRatios;
- (CGSize)portraitAspectRatios;
- (IMAVChatParticipant)initiatorParticipant;
- (IMHandle)otherIMHandle;
- (NSArray)_imHandles;
- (NSArray)remoteParticipants;
- (NSNumber)_callDuration;
- (NSNumber)_connectDuration;
- (NSNumber)_currentNatType;
- (NSNumber)_natType;
- (NSNumber)_relayConnectDuration;
- (NSNumber)_remoteNatType;
- (id)_initWith:(id)a3 invitedBy:(id)a4 sessionID:(unsigned int)a5 isRelayed:(BOOL)a6 GUID:(id)a7 video:(BOOL)a8 extraProperties:(id)a9;
- (id)_participantMatchingVCPartyID:(id)a3;
- (id)_proxyRepresentation;
- (id)_proxyRepresentationForIMAVChatParticipant:(id)a3;
- (id)description;
- (id)inviteesInfo;
- (id)participantMatchingIMHandle:(id)a3;
- (id)participantWithAVConferenceCallID:(int64_t)a3;
- (id)participantWithID:(id)a3;
- (id)vcPartyIDForIMHandle:(id)a3;
- (int64_t)_bustedCallID;
- (unint64_t)_localNetworkConnectionType;
- (unsigned)cameraOrientation;
- (unsigned)cameraType;
- (void)__responseToVCInvite:(id)a3;
- (void)_airplaneModeChanged:(id)a3;
- (void)_clearConnectionTimeoutTimer;
- (void)_clearFirstFrameTimeoutTimer;
- (void)_clearInvitationTimeoutTimer;
- (void)_conferenceOtherParticipant:(id)a3 didConnect:(BOOL)a4;
- (void)_connectionTimeout:(id)a3;
- (void)_entitlementsChanged:(id)a3;
- (void)_firstFrameTimeout:(id)a3;
- (void)_handleAVError:(id)a3;
- (void)_handleGenericAVMessageFromParticipant:(id)a3 type:(unsigned int)a4 userInfo:(id)a5 handled:(BOOL)a6;
- (void)_handleRelayCancel:(id)a3 fromParticipant:(id)a4;
- (void)_handleRelayInitate:(id)a3 fromParticipant:(id)a4;
- (void)_handleRelayUpdate:(id)a3 fromParticipant:(id)a4;
- (void)_initParticipantsWithIMHandles:(id)a3;
- (void)_insertRemoteParticipant:(id)a3 atIndex:(unint64_t)a4;
- (void)_invitationTimeout:(id)a3;
- (void)_noteFirstFrame;
- (void)_peerID:(id)a3 changedTo:(id)a4;
- (void)_postNotificationName:(id)a3 participant:(id)a4 userInfo:(id)a5;
- (void)_postNotificationName:(id)a3 userInfo:(id)a4;
- (void)_postParticipantMediaChangeNotification:(id)a3 cameraChanged:(BOOL)a4 orientationChanged:(BOOL)a5 aspectChanged:(BOOL)a6 cameraWillSwitch:(BOOL)a7 camera:(unsigned int)a8 orientation:(unsigned int)a9 aspect:(CGSize)a10;
- (void)_postStateToDelegateIfNecessary;
- (void)_reduceInvitationTimeoutTime;
- (void)_responseToVCInvite:(id)a3;
- (void)_resumeAudioState;
- (void)_resumeVideoState;
- (void)_saveAudioRestartState;
- (void)_saveVideoRestartState;
- (void)_setActiveConference;
- (void)_setCallerProperties:(id)a3;
- (void)_setConferenceID:(id)a3;
- (void)_setConnectionTimeoutTimer;
- (void)_setCreationDate;
- (void)_setDateConnected;
- (void)_setFirstFrameTimeoutTimer;
- (void)_setInvitationTimeoutTimer;
- (void)_setStateDisconnected;
- (void)_submitCallConnectedLogging;
- (void)_submitCallEndedLoggingWithReason:(unsigned int)a3 andError:(int)a4;
- (void)_submitCallInterruptionBeganLogging;
- (void)_submitCallInterruptionEndedLogging;
- (void)_submitCallStartedLoggingWithRecipientID:(id)a3 isCaller:(BOOL)a4 isVideo:(BOOL)a5;
- (void)_updateIMHandleInBuddyList:(id)a3;
- (void)_vccInitDidFinish:(id)a3;
- (void)acceptInvitation;
- (void)beginChat;
- (void)conferenceDidPauseAudioWithCallID:(int64_t)a3 didPauseAudio:(BOOL)a4;
- (void)conferenceDidStopWithCallID:(int64_t)a3 error:(id)a4;
- (void)conferencePersonWithID:(id)a3 localIPDidChange:(id)a4;
- (void)conferencePersonWithID:(id)a3 sendRelayCancel:(id)a4;
- (void)conferencePersonWithID:(id)a3 sendRelayRequest:(id)a4;
- (void)conferencePersonWithID:(id)a3 sendRelayUpdate:(id)a4;
- (void)dealloc;
- (void)declineInvitation;
- (void)endChat;
- (void)invite:(id)a3 additionalPeers:(id)a4 excludingPushTokens:(id)a5;
- (void)inviteAll;
- (void)localVideoBackLayer;
- (void)localVideoLayer;
- (void)notificationCenterDidDisappear;
- (void)notificationCenterWillAppear;
- (void)setConnectionTimeoutTime:(double)a3;
- (void)setInvitationTimeoutTime:(double)a3;
- (void)setLocalAspectRatio:(CGSize)a3 cameraOrientation:(unsigned int)a4 cameraType:(unsigned int)a5;
- (void)setLocalVideoBackLayer:(void *)a3;
- (void)setLocalVideoLayer:(void *)a3;
- (void)setMayRequireBreakBeforeMake:(BOOL)a3;
- (void)setMetadataFinalized;
- (void)setRelayed:(BOOL)a3;
- (void)setRemoteVideoPresentationSize:(CGSize)a3;
- (void)systemApplicationDidBecomeActive;
- (void)systemApplicationDidEnterBackground;
- (void)systemApplicationDidResume;
- (void)systemApplicationDidResumeForEventsOnly;
- (void)systemApplicationDidSuspend;
- (void)systemApplicationWillEnterForeground;
- (void)systemDidFastUserSwitchOut;
- (void)systemWillShutdown;
- (void)toggleMute;
- (void)togglePaused;
@end

@implementation IMAVChat

- (id)_initWith:(id)a3 invitedBy:(id)a4 sessionID:(unsigned int)a5 isRelayed:(BOOL)a6 GUID:(id)a7 video:(BOOL)a8 extraProperties:(id)a9
{
  v9 = a8;
  v197 = *MEMORY[0x277D85DE8];
  v15 = COERCE_DOUBLE(a3);
  v16 = a4;
  v17 = a7;
  v181 = a9;
  v18 = sub_254761764();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413826;
    v184 = self;
    v185 = 2112;
    v186 = v15;
    v187 = 2112;
    v188 = v16;
    v189 = 1024;
    v190 = a5;
    v191 = 2112;
    v192 = v17;
    v193 = 1024;
    v194 = v9;
    v195 = 2112;
    v196 = v181;
    _os_log_impl(&dword_254743000, v18, OS_LOG_TYPE_DEFAULT, "avchat: %@  invited: %@  invitedBy: %@  sessionID: %u guid: %@  video: %d props: %@", buf, 0x40u);
  }

  v182.receiver = self;
  v182.super_class = IMAVChat;
  v19 = [(IMAVChat *)&v182 init];
  if (!v19)
  {
    goto LABEL_27;
  }

  v20 = objc_alloc_init(MEMORY[0x277D192C0]);
  timingCollection = v19->_timingCollection;
  v19->_timingCollection = v20;

  v22 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v23 = dispatch_queue_create("com.apple.imavchat_conference_queue", v22);
  conferenceQueue = v19->_conferenceQueue;
  v19->_conferenceQueue = v23;

  objc_msgSend_localPortraitAspectRatio(IMAVLocalPreviewClient, v25, v26, v27, v28);
  v30 = v29;
  v32 = v31;
  v33 = sub_254761764();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v184 = *&v30;
    v185 = 2048;
    v186 = v32;
    _os_log_impl(&dword_254743000, v33, OS_LOG_TYPE_DEFAULT, "   Portrait Aspect: (%f / %f)", buf, 0x16u);
  }

  v34 = sub_254761764();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v184 = *&v32;
    v185 = 2048;
    v186 = v30;
    _os_log_impl(&dword_254743000, v34, OS_LOG_TYPE_DEFAULT, "  Landscape Aspect: (%f / %f)", buf, 0x16u);
  }

  if (v9)
  {
    objc_msgSend_setLocalAspectRatio_cameraOrientation_cameraType_(v19, v35, 2, 0, v38, v32, v30);
    objc_msgSend_setLocalAspectRatio_cameraOrientation_cameraType_(v19, v39, 0, 0, v40, v30, v32);
  }

  objc_msgSend_defaultConnectionTimeoutTime(IMAVChat, v35, v36, v37, v38);
  v19->_connectionTimeoutTime = v41;
  v46 = objc_msgSend_defaultInvitationTimeoutTime(IMAVChat, v42, v43, v44, v45);
  v19->_invitationTimeoutTime = v51;
  if (v17)
  {
    v52 = v17;
  }

  else
  {
    v52 = sub_25475B108(v46, v47, v48, v49, v50);
  }

  GUID = v19->_GUID;
  v19->_GUID = v52;

  v58 = objc_msgSend_sharedInstance(IMAVCallManager, v54, v55, v56, v57);
  objc_msgSend__addIMAVChatToChatList_(v58, v59, v19, v60, v61);

  v66 = objc_msgSend_sharedInstance(IMAVInterface, v62, v63, v64, v65);
  objc_msgSend_setDelegate_(v66, v67, v19, v68, v69);

  v74 = objc_msgSend_account(v16, v70, v71, v72, v73);
  objc_storeStrong(&v19->_initiator, a4);
  v79 = objc_msgSend_loginIMHandle(v74, v75, v76, v77, v78);
  v19->_isCaller = v79 == v16;

  p_timingCollection = &v19->_timingCollection;
  v80 = v19->_timingCollection;
  v19->_sessionID = a5;
  v19->_isVideo = v9;
  v19->_relayed = a6;
  objc_msgSend_startTimingForKey_(v80, v82, @"time-to-connected", v83, v84);
  objc_msgSend_startTimingForKey_(v19->_timingCollection, v85, @"time-to-connecting", v86, v87);
  if (v19->_isCaller)
  {
    objc_msgSend_startTimingForKey_(*p_timingCollection, v88, @"time-to-invitation", v89, v90);
  }

  else
  {
    objc_msgSend_startTimingForKey_(*p_timingCollection, v88, @"time-to-response", v89, v90);
  }

  objc_msgSend_startTimingForKey_(*p_timingCollection, v91, @"time-to-connection-data-gathering", v92, v93);
  objc_msgSend_startTimingForKey_(*p_timingCollection, v94, @"time-to-query-for-connection-data-gathering", v95, v96);
  v97 = sub_254761764();
  if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
  {
    sessionID = v19->_sessionID;
    *buf = 67109120;
    LODWORD(v184) = sessionID;
    _os_log_impl(&dword_254743000, v97, OS_LOG_TYPE_DEFAULT, "IMAVChat created with sessionID %u", buf, 8u);
  }

  objc_msgSend__setCreationDate(v19, v99, v100, v101, v102);
  dateEnded = v19->_dateEnded;
  v19->_dateEnded = 0;

  if (!v19->_isCaller)
  {
    v108 = sub_254761764();
    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v108, OS_LOG_TYPE_DEFAULT, " ** not the caller, let's warmup", buf, 2u);
    }

    v113 = objc_msgSend_sharedInstance(IMAVInterface, v109, v110, v111, v112);
    objc_msgSend__notifyAboutPotentialCallForChat_(v113, v114, v19, v115, v116);
  }

  v117 = objc_msgSend___imFirstObject(*&v15, v104, v105, v106, v107);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend__initParticipantsWithIMHandles_(v19, v118, *&v15, v120, v121);
  }

  else
  {
    v122 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v118, v119, v120, v121);
    v123 = objc_opt_class();
    v124 = NSStringFromClass(v123);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v122, v125, a2, v19, @"IMAVChat.m", 174, @"Invalid class %@", v124);
  }

  if (objc_msgSend__participantsCheckOut(v19, v126, v127, v128, v129))
  {
    v134 = objc_msgSend_initiatorParticipant(v19, v130, v131, v132, v133);
    v138 = objc_msgSend__processIncomingCallProperties_(v134, v135, v181, v136, v137);
    v143 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v139, v140, v141, v142);
    objc_msgSend_addObserver_selector_name_object_(v143, v144, v19, sel__airplaneModeChanged_, *MEMORY[0x277D19168], 0);

    v149 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v145, v146, v147, v148);
    objc_msgSend_addObserver_selector_name_object_(v149, v150, v19, sel__entitlementsChanged_, *MEMORY[0x277D07D80], 0);

    v155 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v151, v152, v153, v154);
    objc_msgSend_addListener_(v155, v156, v19, v157, v158);

    v163 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v159, v160, v161, v162);
    objc_msgSend_setActive_(v163, v164, 1, v165, v166);

    v171 = objc_msgSend_sharedInstance(IMAVController, v167, v168, v169, v170);
    objc_msgSend__dumpCaps(v171, v172, v173, v174, v175);

LABEL_27:
    v176 = v19;
    goto LABEL_31;
  }

  v177 = sub_254761764();
  if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v184 = @"Participants failed basic check";
    _os_log_impl(&dword_254743000, v177, OS_LOG_TYPE_DEFAULT, "[WARN] %@", buf, 0xCu);
  }

  v176 = 0;
LABEL_31:

  v178 = *MEMORY[0x277D85DE8];
  return v176;
}

+ (int)systemSupportsNewOutgoingConferenceTo:(id)a3 isVideo:(BOOL)a4
{
  v4 = a4;
  v59 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = sub_254761764();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v56 = v5;
    v57 = 1024;
    v58 = v4;
    _os_log_impl(&dword_254743000, v6, OS_LOG_TYPE_DEFAULT, "imHandles: %@  isVideo: %d", buf, 0x12u);
  }

  v11 = objc_msgSend_sharedInstance(IMAVInterface, v7, v8, v9, v10);
  v16 = v11;
  if (v4)
  {
    CanVideoChat = objc_msgSend_systemCanVideoChat(v11, v12, v13, v14, v15);

    if ((CanVideoChat & 1) == 0)
    {
      v22 = -1;
      goto LABEL_27;
    }
  }

  else
  {
    CanAudioChat = objc_msgSend_systemCanAudioChat(v11, v12, v13, v14, v15);

    if (!CanAudioChat)
    {
      v22 = -2;
      goto LABEL_27;
    }
  }

  if (objc_msgSend_count(v5, v18, v19, v20, v21) >= 2)
  {
    if (v4)
    {
      v22 = 4;
    }

    else
    {
      v22 = 3;
    }

    goto LABEL_27;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v24 = v5;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v50, v54, 16);
  if (!v26)
  {
    goto LABEL_24;
  }

  v31 = v26;
  v32 = *v51;
  while (2)
  {
    for (i = 0; i != v31; ++i)
    {
      if (*v51 != v32)
      {
        objc_enumerationMutation(v24);
      }

      v34 = objc_msgSend_service(*(*(&v50 + 1) + 8 * i), v27, v28, v29, v30, v50);
      v39 = objc_msgSend_facetimeService(MEMORY[0x277D18DE0], v35, v36, v37, v38);

      if (v34 == v39)
      {
        v40 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v27, v28, v29, v30);
        v45 = v40;
        if (v4)
        {
          v46 = objc_msgSend_faceTimeAvailable(v40, v41, v42, v43, v44);

          if ((v46 & 1) == 0)
          {
            v22 = 6;
LABEL_26:

            goto LABEL_27;
          }
        }

        else
        {
          v47 = objc_msgSend_callingAvailable(v40, v41, v42, v43, v44);

          if (!v47)
          {
            v22 = 5;
            goto LABEL_26;
          }
        }
      }
    }

    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v27, &v50, v54, 16);
    if (v31)
    {
      continue;
    }

    break;
  }

LABEL_24:

  v22 = 0;
LABEL_27:

  v48 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)dealloc
{
  v173 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v172 = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "avchat: %@", buf, 0xCu);
  }

  v4 = sub_254761764();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    timingCollection = self->_timingCollection;
    *buf = 138412290;
    v172 = timingCollection;
    _os_log_impl(&dword_254743000, v4, OS_LOG_TYPE_DEFAULT, "Timings: %@", buf, 0xCu);
  }

  v10 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v6, v7, v8, v9);
  objc_msgSend_removeObserver_name_object_(v10, v11, self, 0, 0);

  v16 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v12, v13, v14, v15);
  objc_msgSend_removeListener_(v16, v17, self, v18, v19);

  v24 = objc_msgSend_sharedInstance(IMAVInterface, v20, v21, v22, v23);
  objc_msgSend__avChatDealloc_(v24, v25, self, v26, v27);

  v32 = objc_msgSend_sharedInstance(IMAVInterface, v28, v29, v30, v31);
  objc_msgSend_unsetDelegate_(v32, v33, self, v34, v35);

  if (self->_localState != self->_lastPostedState)
  {
    v40 = objc_msgSend_sharedInstance(IMAVInterface, v36, v37, v38, v39);
    objc_msgSend_chatStateUpdated(v40, v41, v42, v43, v44);
  }

  isCaller = objc_msgSend_isCaller(self, v36, v37, v38, v39);
  localState = self->_localState;
  if (!isCaller)
  {
    if (localState - 1 > 2)
    {
      goto LABEL_19;
    }

    v56 = objc_msgSend_initiatorParticipant(self, v46, v47, v48, v49);
    v67 = sub_254761764();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v172 = v56;
      _os_log_impl(&dword_254743000, v67, OS_LOG_TYPE_DEFAULT, "Dealloc: Declining current chat with: %@", buf, 0xCu);
    }

    v66 = objc_msgSend_sharedInstance(IMAVController, v68, v69, v70, v71);
    v76 = objc_msgSend_imHandle(v56, v72, v73, v74, v75);
    callerProperties = self->_callerProperties;
    v82 = objc_msgSend_imHandle(v56, v78, v79, v80, v81);
    v87 = objc_msgSend_account(v82, v83, v84, v85, v86);
    objc_msgSend_declineVCRequestWithBuddy_response_vcProps_forAccount_conferenceID_(v66, v88, v76, 1, callerProperties, v87, self->_conferenceID);

    goto LABEL_17;
  }

  if ((localState | 2) != 3)
  {
    goto LABEL_19;
  }

  v51 = objc_msgSend_endedReason(self, v46, v47, v48, v49);
  if (v51 > 0x18 || ((1 << v51) & 0x1811000) == 0)
  {
    v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    v56 = objc_msgSend_remoteParticipants(self, v52, v53, v54, v55);
    v134 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v133, &v166, v170, 16);
    if (v134)
    {
      v136 = v134;
      v137 = *v167;
      *&v135 = 138412290;
      v164 = v135;
      do
      {
        for (i = 0; i != v136; ++i)
        {
          if (*v167 != v137)
          {
            objc_enumerationMutation(v56);
          }

          v139 = *(*(&v166 + 1) + 8 * i);
          v140 = sub_254761764();
          if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v164;
            v172 = v139;
            _os_log_impl(&dword_254743000, v140, OS_LOG_TYPE_DEFAULT, "Dealloc: Cancelling outgoing invitation to %@", buf, 0xCu);
          }

          v145 = objc_msgSend_sharedInstance(IMAVController, v141, v142, v143, v144);
          v150 = objc_msgSend_imHandle(v139, v146, v147, v148, v149);
          v151 = self->_callerProperties;
          v156 = objc_msgSend_imHandle(v139, v152, v153, v154, v155);
          v161 = objc_msgSend_account(v156, v157, v158, v159, v160);
          objc_msgSend_cancelVCRequestWithBuddy_vcProps_forAccount_conferenceID_reason_(v145, v162, v150, v151, v161, self->_conferenceID, 0);
        }

        v136 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v163, &v166, v170, 16);
      }

      while (v136);
    }

    goto LABEL_18;
  }

  v56 = sub_254761764();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    v61 = objc_msgSend_endedReason(self, v57, v58, v59, v60);
    v66 = _NSStringDescriptionForIMAVChatEndedReason(v61, v62, v63, v64, v65);
    *buf = 138412290;
    v172 = v66;
    _os_log_impl(&dword_254743000, v56, OS_LOG_TYPE_DEFAULT, "Dealloc: Not Cancelling outgoing invitation since the chat ended with reason %@", buf, 0xCu);
LABEL_17:
  }

LABEL_18:

LABEL_19:
  objc_msgSend_makeObjectsPerformSelector_(self->_participants, v46, sel_disconnectFromAVChat, v48, v49, v164);
  objc_msgSend_disconnectFromAVChat(self->_localParticipant, v89, v90, v91, v92);
  self->_localState = 0;
  v97 = objc_msgSend_sharedInstance(IMAVCallManager, v93, v94, v95, v96);
  objc_msgSend__removeIMAVChatFromChatList_(v97, v98, self, v99, v100);

  v105 = objc_msgSend_sharedInstance(IMAVCallManager, v101, v102, v103, v104);
  objc_msgSend__sendProxyUpdate(v105, v106, v107, v108, v109);

  objc_msgSend__clearConnectionTimeoutTimer(self, v110, v111, v112, v113);
  objc_msgSend__clearFirstFrameTimeoutTimer(self, v114, v115, v116, v117);
  objc_msgSend__clearInvitationTimeoutTimer(self, v118, v119, v120, v121);
  v126 = objc_msgSend_sharedInstance(IMAVController, v122, v123, v124, v125);
  objc_msgSend_updateActiveConference(v126, v127, v128, v129, v130);

  conferenceQueue = self->_conferenceQueue;
  if (conferenceQueue)
  {
    self->_conferenceQueue = 0;
  }

  v165.receiver = self;
  v165.super_class = IMAVChat;
  [(IMAVChat *)&v165 dealloc];
  v132 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v7 = objc_msgSend_initWithString_(v3, v4, &stru_28668C2A0, v5, v6);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = self->_participants;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v44, v48, 16);
  if (v10)
  {
    v15 = v10;
    v16 = *v45;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v45 != v16)
        {
          objc_enumerationMutation(v8);
        }

        v18 = objc_msgSend_imHandle(*(*(&v44 + 1) + 8 * i), v11, v12, v13, v14);
        v23 = objc_msgSend_description(v18, v19, v20, v21, v22);
        objc_msgSend_appendString_(v7, v24, v23, v25, v26);

        objc_msgSend_appendString_(v7, v27, @", ", v28, v29);
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v44, v48, 16);
    }

    while (v15);
  }

  v30 = MEMORY[0x277CCACA8];
  if (self->_isVideo)
  {
    v31 = @"Video";
  }

  else
  {
    v31 = @"Audio";
  }

  v32 = _NSStringDescriptionForIMAVChatState(self->_localState);
  GUID = self->_GUID;
  conferenceID = self->_conferenceID;
  sessionID = self->_sessionID;
  v36 = objc_opt_class();
  v37 = NSStringFromClass(v36);
  v41 = objc_msgSend_stringWithFormat_(v30, v38, @"<%p> %@ chat with %@ (state %@) (ConfID: %@) (SID: %u) (GUID: %@) (Kind: %@)", v39, v40, self, v31, v7, v32, conferenceID, sessionID, GUID, v37, v44);

  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

- (void)beginChat
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "avchat: %@", &v23, 0xCu);
  }

  objc_msgSend__setCreationDate(self, v4, v5, v6, v7);
  localParticipant = self->_localParticipant;
  if (self->_isCaller)
  {
    objc_msgSend_setState_(localParticipant, v8, 2, v10, v11);
  }

  else
  {
    v13 = objc_msgSend_invitedBy(localParticipant, v8, v9, v10, v11);
    v17 = objc_msgSend_participantMatchingIMHandle_(self, v14, v13, v15, v16);

    if (!v17)
    {
      v21 = sub_254761764();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_254743000, v21, OS_LOG_TYPE_DEFAULT, "[WARN] ********* [IMAVChat beginChat] Could not find participant which invited me!", &v23, 2u);
      }
    }

    objc_msgSend_setState_(v17, v18, 2, v19, v20);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)endChat
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_msgSend_otherIMHandle(self, v4, v5, v6, v7);
    v13 = objc_msgSend_ID(v8, v9, v10, v11, v12);
    v18 = 138412290;
    v19 = v13;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Marking conference with %@ as ended", &v18, 0xCu);
  }

  v14 = sub_254761764();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = self;
    _os_log_impl(&dword_254743000, v14, OS_LOG_TYPE_DEFAULT, "avchat: %@", &v18, 0xCu);
  }

  objc_msgSend_endChatWithReason_error_(self, v15, 8, 0, v16);
  v17 = *MEMORY[0x277D85DE8];
}

- (id)inviteesInfo
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = objc_msgSend_remoteParticipants(self, v5, v6, v7, v8);
  v14 = objc_msgSend_lastObject(v9, v10, v11, v12, v13);

  v19 = objc_msgSend_additionalPeers(v14, v15, v16, v17, v18);
  v24 = objc_msgSend_count(v19, v20, v21, v22, v23);

  if (v24)
  {
    v29 = objc_msgSend_additionalPeers(v14, v25, v26, v27, v28);
    objc_msgSend_addObjectsFromArray_(v3, v30, v29, v31, v32);
  }

  else
  {
    v33 = objc_msgSend_otherIMHandle(self, v25, v26, v27, v28);
    v29 = objc_msgSend_originalID(v33, v34, v35, v36, v37);

    if (!objc_msgSend_length(v29, v38, v39, v40, v41))
    {
      v46 = objc_msgSend_otherIMHandle(self, v42, v43, v44, v45);
      v51 = objc_msgSend_ID(v46, v47, v48, v49, v50);

      v29 = v51;
    }

    objc_msgSend_addObject_(v3, v42, v29, v44, v45);
  }

  v56 = objc_msgSend_excludingPushTokens(v14, v52, v53, v54, v55);
  v61 = objc_msgSend_count(v56, v57, v58, v59, v60);

  if (v61)
  {
    v66 = objc_msgSend_excludingPushTokens(v14, v62, v63, v64, v65);
    objc_msgSend_addObjectsFromArray_(v4, v67, v66, v68, v69);
  }

  v70 = MEMORY[0x277CBEAC0];
  sessionID = self->_sessionID;
  if (sessionID)
  {
    v72 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v62, sessionID, v64, v65);
    objc_msgSend_dictionaryWithObjectsAndKeys_(v70, v73, v72, v74, v75, *MEMORY[0x277D19568], v3, *MEMORY[0x277D19500], v4, @"excludingPushTokens", 0);
  }

  else
  {
    v72 = 0;
    objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEAC0], v62, 0, v64, v65, *MEMORY[0x277D19568], v3, *MEMORY[0x277D19500], v4, @"excludingPushTokens", 0);
  }
  v76 = ;
  if (sessionID)
  {
  }

  return v76;
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

- (BOOL)_isVideoUpgradeTo:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_otherIMHandle(self, a2, a3, v3, v4);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = objc_msgSend_sharedInstance(IMAVCallManager, v7, v8, v9, v10, 0);
  v16 = objc_msgSend_calls(v11, v12, v13, v14, v15);

  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v30, v34, 16);
  if (v18)
  {
    v23 = v18;
    v24 = *v31;
    while (2)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(v16);
        }

        v26 = *(*(&v30 + 1) + 8 * i);
        if (v26 != self && objc_msgSend_isActive(*(*(&v30 + 1) + 8 * i), v19, v20, v21, v22) && objc_msgSend_isVideo(self, v19, v20, v21, v22) && (objc_msgSend_isVideo(v26, v19, v20, v21, v22) & 1) == 0 && (objc_msgSend__isCallUpgradeTo_(v26, v19, v6, v21, v22) & 1) != 0)
        {
          v27 = 1;
          goto LABEL_15;
        }
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v30, v34, 16);
      if (v23)
      {
        continue;
      }

      break;
    }
  }

  v27 = 0;
LABEL_15:

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (void)inviteAll
{
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Starting invite process", buf, 2u);
  }

  objc_msgSend_stopTimingForKey_(self->_timingCollection, v4, @"time-to-invitation", v5, v6);
  objc_msgSend_stopTimingForKey_(self->_timingCollection, v7, @"time-to-av-invitation-op-creation", v8, v9);
  objc_msgSend__setActiveConference(self, v10, v11, v12, v13);
  objc_msgSend_setMute_(self, v14, 0, v15, v16);
  objc_msgSend_setPaused_(self, v17, 0, v18, v19);
  v24 = objc_msgSend_sharedInstance(IMAVInterface, v20, v21, v22, v23);
  isAVInterfaceReady = objc_msgSend_isAVInterfaceReady(v24, v25, v26, v27, v28);

  v30 = sub_254761764();
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
  if (isAVInterfaceReady)
  {
    if (v31)
    {
      *v55 = 0;
      _os_log_impl(&dword_254743000, v30, OS_LOG_TYPE_DEFAULT, "Delivering Invites", v55, 2u);
    }

    v36 = objc_msgSend_remoteParticipants(self, v32, v33, v34, v35);
    objc_msgSend_makeObjectsPerformSelector_(v36, v37, sel_sendInvitation, v38, v39);
  }

  else
  {
    if (v31)
    {
      *v54 = 0;
      _os_log_impl(&dword_254743000, v30, OS_LOG_TYPE_DEFAULT, "Initing Interface", v54, 2u);
    }

    self->_hasPendingInit = 1;
    v44 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v40, v41, v42, v43);
    objc_msgSend_addObserver_selector_name_object_(v44, v45, self, sel__vccInitDidFinish_, @"__kIMAVInterfaceReadyNotification", 0);

    v36 = objc_msgSend_sharedInstance(IMAVInterface, v46, v47, v48, v49);
    objc_msgSend_initAVInterface(v36, v50, v51, v52, v53);
  }
}

- (void)invite:(id)a3 additionalPeers:(id)a4 excludingPushTokens:(id)a5
{
  v107 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_254761764();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v12)
    {
      v17 = objc_msgSend_ID(v8, v13, v14, v15, v16);
      *buf = 138412290;
      v106 = v17;
      _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "Asked to invite a buddy: %@", buf, 0xCu);
    }

    v11 = objc_msgSend_remoteParticipants(self, v18, v19, v20, v21);
    if (objc_msgSend_count(v11, v22, v23, v24, v25))
    {
      if (objc_msgSend_count(v9, v26, v27, v28, v29))
      {
        v34 = objc_msgSend_remoteParticipants(self, v30, v31, v32, v33);
        v39 = objc_msgSend_lastObject(v34, v35, v36, v37, v38);

        v40 = sub_254761764();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v106 = v9;
          _os_log_impl(&dword_254743000, v40, OS_LOG_TYPE_DEFAULT, "Additional peers %@", buf, 0xCu);
        }

        objc_msgSend_setAdditionalPeers_(v39, v41, v9, v42, v43);
      }

      if (objc_msgSend_count(v10, v30, v31, v32, v33))
      {
        v48 = objc_msgSend_remoteParticipants(self, v44, v45, v46, v47);
        v53 = objc_msgSend_lastObject(v48, v49, v50, v51, v52);

        v54 = sub_254761764();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v106 = v10;
          _os_log_impl(&dword_254743000, v54, OS_LOG_TYPE_DEFAULT, "Excluding push tokens %@", buf, 0xCu);
        }

        objc_msgSend_setExcludingPushTokens_(v53, v55, v10, v56, v57);
      }

      objc_msgSend_makeObjectsPerformSelector_(v11, v44, sel_sendInvitation, v46, v47);
      inited = sub_254761764();
      if (os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v106 = v11;
        _os_log_impl(&dword_254743000, inited, OS_LOG_TYPE_DEFAULT, "We already have a remote participant in this chat %@, can't add more", buf, 0xCu);
      }
    }

    else
    {
      v59 = [IMAVChatParticipant alloc];
      v64 = objc_msgSend_account(v8, v60, v61, v62, v63);
      v69 = objc_msgSend_loginIMHandle(v64, v65, v66, v67, v68);
      v74 = objc_msgSend_account(v8, v70, v71, v72, v73);
      inited = objc_msgSend_initAs_invitedBy_toChat_account_(v59, v75, v8, v69, self, v74);

      if (objc_msgSend_count(v9, v76, v77, v78, v79))
      {
        v84 = sub_254761764();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v106 = v9;
          _os_log_impl(&dword_254743000, v84, OS_LOG_TYPE_DEFAULT, "Additional peers %@", buf, 0xCu);
        }

        objc_msgSend_setAdditionalPeers_(inited, v85, v9, v86, v87);
      }

      if (objc_msgSend_count(v10, v80, v81, v82, v83))
      {
        v90 = sub_254761764();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v106 = v10;
          _os_log_impl(&dword_254743000, v90, OS_LOG_TYPE_DEFAULT, "Excluding push tokens %@", buf, 0xCu);
        }

        objc_msgSend_setExcludingPushTokens_(inited, v91, v10, v92, v93);
      }

      objc_msgSend__insertRemoteParticipant_atIndex_(self, v88, inited, 0, v89);
      objc_msgSend_sendInvitation(inited, v94, v95, v96, v97);
      v101 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEAC0], v98, inited, v99, v100, @"__kIMAVChatParticipantKey", 0);
      objc_msgSend__postNotificationName_userInfo_(self, v102, @"__kIMAVChatParticipantAddedNotification", v101, v103);
    }
  }

  else if (v12)
  {
    *buf = 0;
    _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "[WARN] AVChat asked to invite buddy == nil !", buf, 2u);
  }

  v104 = *MEMORY[0x277D85DE8];
}

- (void)acceptInvitation
{
  v82 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isCaller(self, a2, v2, v3, v4))
  {
    v10 = sub_254761764();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v80 = 138412290;
      v81 = self;
      _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "Received bogus when I'm actually the caller for chat: %@", &v80, 0xCu);
    }

    goto LABEL_17;
  }

  v11 = objc_msgSend_state(self, v6, v7, v8, v9);
  v10 = sub_254761764();
  v12 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v11 != 1)
  {
    if (!v12)
    {
      goto LABEL_17;
    }

    v63 = objc_msgSend_state(self, v13, v14, v15, v16);
    v64 = _NSStringDescriptionForIMAVChatState(v63);
    v80 = 138412290;
    v81 = v64;
    _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "Received bogus accept request in state: %@", &v80, 0xCu);
LABEL_16:

    goto LABEL_17;
  }

  if (v12)
  {
    LOWORD(v80) = 0;
    _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "Starting accept process", &v80, 2u);
  }

  objc_msgSend_stopTimingForKey_(self->_timingCollection, v17, @"time-to-response", v18, v19);
  objc_msgSend_startTimingForKey_(self->_timingCollection, v20, @"time-to-start-connecting", v21, v22);
  v10 = objc_msgSend_initiatorParticipant(self, v23, v24, v25, v26);
  v31 = objc_msgSend_sharedInstance(IMAVInterface, v27, v28, v29, v30);
  objc_msgSend_setDelegate_(v31, v32, self, v33, v34);

  objc_msgSend_setMute_(self, v35, 0, v36, v37);
  objc_msgSend_setPaused_(self, v38, 0, v39, v40);
  objc_msgSend_setState_(v10, v41, 3, v42, v43);
  objc_msgSend__setActiveConference(self, v44, v45, v46, v47);
  v52 = objc_msgSend_sharedInstance(IMAVInterface, v48, v49, v50, v51);
  isAVInterfaceReady = objc_msgSend_isAVInterfaceReady(v52, v53, v54, v55, v56);

  v58 = sub_254761764();
  v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
  if (!isAVInterfaceReady)
  {
    if (v59)
    {
      LOWORD(v80) = 0;
      _os_log_impl(&dword_254743000, v58, OS_LOG_TYPE_DEFAULT, "Building AV Interface", &v80, 2u);
    }

    self->_hasPendingAccept = 1;
    v69 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v65, v66, v67, v68);
    objc_msgSend_addObserver_selector_name_object_(v69, v70, self, sel__vccInitDidFinish_, @"__kIMAVInterfaceReadyNotification", 0);

    v64 = objc_msgSend_sharedInstance(IMAVInterface, v71, v72, v73, v74);
    objc_msgSend_initAVInterface(v64, v75, v76, v77, v78);
    goto LABEL_16;
  }

  if (v59)
  {
    LOWORD(v80) = 0;
    _os_log_impl(&dword_254743000, v58, OS_LOG_TYPE_DEFAULT, "Sending response", &v80, 2u);
  }

  objc_msgSend_sendResponse_(v10, v60, 0, v61, v62);
LABEL_17:

  v79 = *MEMORY[0x277D85DE8];
}

- (void)declineInvitation
{
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Starting decline process", v7, 2u);
  }

  objc_msgSend_declineInvitationWithResponse_(self, v4, 1, v5, v6);
}

- (void)_setStateDisconnected
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "avchat: %@", &v14, 0xCu);
  }

  localState = self->_localState;
  if (localState == 3)
  {
    v9 = 6;
    goto LABEL_7;
  }

  if (localState == 4)
  {
    v9 = 7;
LABEL_7:
    v10 = objc_msgSend_endedError(self, v4, v5, v6, v7);
    objc_msgSend__endChatWithReason_andError_(self, v11, v9, v10, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_processVCResponseDict:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v8 = v4;
  if (v4)
  {
    v9 = objc_msgSend_objectForKey_(v4, v5, *MEMORY[0x277D19548], v6, v7);
    v17 = objc_msgSend_participantMatchingIMHandle_(self, v10, v9, v11, v12);
    if (!v17)
    {
      v18 = objc_msgSend_remoteParticipants(self, v13, v14, v15, v16);
      v17 = objc_msgSend_lastObject(v18, v19, v20, v21, v22);
    }

    objc_msgSend__switchToUseNewIMHandle_(v17, v13, v9, v15, v16);
    v29 = objc_msgSend_objectForKey_(v8, v23, *MEMORY[0x277D19558], v24, v25);
    if (!v29)
    {
      v50 = 1;
LABEL_22:

      goto LABEL_23;
    }

    v30 = objc_msgSend_dictionaryWithPlistData_(MEMORY[0x277CBEAC0], v26, v29, v27, v28);
    v34 = objc_msgSend_objectForKey_(v30, v31, *MEMORY[0x277D19568], v32, v33);
    v39 = v34;
    if (v34)
    {
      v40 = objc_msgSend_unsignedIntValue(v34, v35, v36, v37, v38);
      sessionID = self->_sessionID;
      v42 = sub_254761764();
      v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
      if (v40 == sessionID)
      {
        if (v43)
        {
          v56 = 138412290;
          v57 = v39;
          _os_log_impl(&dword_254743000, v42, OS_LOG_TYPE_DEFAULT, "response or counter-proposal received for expected session ID %@", &v56, 0xCu);
        }

        v50 = objc_msgSend__processResponseDictionary_allowSecondConnection_(v17, v48, v8, 0, v49);
        goto LABEL_21;
      }

      if (v43)
      {
        v52 = objc_msgSend_unsignedIntValue(v39, v44, v45, v46, v47);
        v53 = self->_sessionID;
        v56 = 138412802;
        v57 = v9;
        v58 = 1024;
        v59 = v52;
        v60 = 1024;
        v61 = v53;
        _os_log_impl(&dword_254743000, v42, OS_LOG_TYPE_DEFAULT, "Response or counter-proposal received from %@ with session ID %d that doesn't match %u", &v56, 0x18u);
      }
    }

    else
    {
      v51 = sub_254761764();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v56) = 0;
        _os_log_impl(&dword_254743000, v51, OS_LOG_TYPE_DEFAULT, "[WARN] No session ID", &v56, 2u);
      }
    }

    v50 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v9 = sub_254761764();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v56) = 0;
    _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, "[WARN] [IMAVChat _processVCResponseDict:] nil dict", &v56, 2u);
  }

  v50 = 0;
LABEL_23:

  v54 = *MEMORY[0x277D85DE8];
  return v50;
}

- (void)__responseToVCInvite:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v8 = objc_msgSend_objectForKey_(v4, v5, *MEMORY[0x277D19548], v6, v7);
  v9 = sub_254761764();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412546;
    v27 = v8;
    v28 = 2112;
    v29 = v4;
    _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, "Response from: %@  dictionary: %@", &v26, 0x16u);
  }

  objc_msgSend_stopTimingForKey_(self->_timingCollection, v10, @"time-to-response", v11, v12);
  objc_msgSend_startTimingForKey_(self->_timingCollection, v13, @"time-to-start-connecting", v14, v15);
  v19 = objc_msgSend__processVCResponseDict_(self, v16, v4, v17, v18);
  v20 = sub_254761764();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    if (v21)
    {
      LOWORD(v26) = 0;
      v22 = "Successfully processed VC response";
      v23 = v20;
      v24 = 2;
LABEL_8:
      _os_log_impl(&dword_254743000, v23, OS_LOG_TYPE_DEFAULT, v22, &v26, v24);
    }
  }

  else if (v21)
  {
    v26 = 138412290;
    v27 = v4;
    v22 = "[WARN] Failed processing of VC response dictionary: %@";
    v23 = v20;
    v24 = 12;
    goto LABEL_8;
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_responseToVCInvite:(id)a3
{
  v4 = a3;
  if (objc_msgSend_state(self, v5, v6, v7, v8) != 2 && objc_msgSend_state(self, v9, v10, v11, v12) != 3 && objc_msgSend_state(self, v9, v10, v11, v12) != 4)
  {
    v16 = sub_254761764();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "[WARN] Received response while we're not waiting for a response";
      v18 = buf;
      goto LABEL_10;
    }

LABEL_11:

    goto LABEL_12;
  }

  if ((objc_msgSend_isCaller(self, v9, v10, v11, v12) & 1) == 0)
  {
    v16 = sub_254761764();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 0;
      v17 = "[WARN] Received response while we're not the caller, ignoring";
      v18 = &v19;
LABEL_10:
      _os_log_impl(&dword_254743000, v16, OS_LOG_TYPE_DEFAULT, v17, v18, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  objc_msgSend___responseToVCInvite_(self, v13, v4, v14, v15);
LABEL_12:
}

- (void)_handleGenericAVMessageFromParticipant:(id)a3 type:(unsigned int)a4 userInfo:(id)a5 handled:(BOOL)a6
{
  *&v40[5] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  if (a4 <= 1000)
  {
    if (a4 != 350)
    {
      if (a4 == 1000)
      {
        v12 = sub_254761764();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v39 = 138412290;
          *v40 = v10;
          _os_log_impl(&dword_254743000, v12, OS_LOG_TYPE_DEFAULT, "Received ping from participant: %@  => sending pong", &v39, 0xCu);
        }

        objc_msgSend_sendAVMessage_userInfo_(v10, v13, 1001, 0, v14);
        goto LABEL_22;
      }

      goto LABEL_12;
    }

    v20 = sub_254761764();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 138412290;
      *v40 = v10;
      _os_log_impl(&dword_254743000, v20, OS_LOG_TYPE_DEFAULT, "Received prepare from participant: %@", &v39, 0xCu);
    }

    goto LABEL_18;
  }

  if (a4 != 1001)
  {
    if (a4 != 1500)
    {
LABEL_12:
      if (!a6)
      {
        v23 = sub_254761764();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v28 = objc_msgSend_imHandle(v10, v24, v25, v26, v27);
          v33 = objc_msgSend_ID(v28, v29, v30, v31, v32);
          v39 = 67109378;
          v40[0] = a4;
          LOWORD(v40[1]) = 2112;
          *(&v40[1] + 2) = v33;
          _os_log_impl(&dword_254743000, v23, OS_LOG_TYPE_DEFAULT, "[WARN] Unhandled messagetype id: %d from: %@", &v39, 0x12u);
        }
      }

      goto LABEL_22;
    }

    v15 = sub_254761764();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 138412290;
      *v40 = v10;
      _os_log_impl(&dword_254743000, v15, OS_LOG_TYPE_DEFAULT, "Received local IP change from participant: %@ => notifying AVConference", &v39, 0xCu);
    }

    v20 = objc_msgSend_sharedInstance(IMAVInterface, v16, v17, v18, v19);
    objc_msgSend_processRemoteIPChanged_fromParticipant_(v20, v21, v11, v10, v22);
LABEL_18:

    goto LABEL_22;
  }

  v34 = sub_254761764();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v39 = 138412290;
    *v40 = v10;
    _os_log_impl(&dword_254743000, v34, OS_LOG_TYPE_DEFAULT, "Received pong from participant: %@  => clearing break before make timer", &v39, 0xCu);
  }

  objc_msgSend_setMayRequireBreakBeforeMake_(self, v35, 0, v36, v37);
LABEL_22:

  v38 = *MEMORY[0x277D85DE8];
}

- (id)participantWithAVConferenceCallID:(int64_t)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = objc_msgSend_remoteParticipants(self, a2, a3, v3, v4, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v19, v23, 16);
  if (v8)
  {
    v12 = v8;
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v6);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        if (objc_msgSend_matchesAVConferenceCallID_(v15, v9, a3, v10, v11))
        {
          v16 = v15;
          goto LABEL_11;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v19, v23, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_11:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)participantWithID:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sub_254761764();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "avchat: %@ vcPartyID: %@", &v12, 0x16u);
  }

  v9 = objc_msgSend__participantMatchingVCPartyID_(self, v6, v4, v7, v8);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)vcPartyIDForIMHandle:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sub_254761764();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412546;
    v19 = self;
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "avchat: %@ imhandle: %@", &v18, 0x16u);
  }

  v9 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v6, ++dword_27F6103F0, v7, v8);
  v14 = objc_msgSend_stringValue(v9, v10, v11, v12, v13);

  if (dword_27F6103F0 == 9999)
  {
    dword_27F6103F0 = 1000;
  }

  v15 = sub_254761764();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v14;
    _os_log_impl(&dword_254743000, v15, OS_LOG_TYPE_DEFAULT, "  Using VC Party Coerced ID: %@", &v18, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)participantMatchingIMHandle:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_participants;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v18, v22, 16);
  if (v11)
  {
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = objc_msgSend_imHandle(v14, v7, v8, v9, v10, v18);

        if (v15 == v4)
        {
          v11 = v14;
          goto LABEL_11;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v18, v22, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_setCallerProperties:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = sub_254761764();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = self;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_254743000, v6, OS_LOG_TYPE_DEFAULT, "avchat: %@ properties: %@", &v16, 0x16u);
  }

  if (self->_callerProperties != v5)
  {
    objc_storeStrong(&self->_callerProperties, a3);
    v11 = objc_msgSend_initiatorParticipant(self, v7, v8, v9, v10);
    objc_msgSend_setProperties_(v11, v12, v5, v13, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (IMHandle)otherIMHandle
{
  if (objc_msgSend_count(self->_participants, a2, v2, v3, v4) < 2)
  {
    v14 = 0;
  }

  else
  {
    v9 = objc_msgSend_objectAtIndex_(self->_participants, v6, 1, v7, v8);
    v14 = objc_msgSend_imHandle(v9, v10, v11, v12, v13);
  }

  return v14;
}

- (void)_setConferenceID:(id)a3
{
  if (self->_conferenceID != a3)
  {
    v25 = v5;
    v26 = v6;
    v8 = objc_msgSend_copy(a3, a2, a3, v3, v4);
    conferenceID = self->_conferenceID;
    self->_conferenceID = v8;

    objc_msgSend__postNotificationName_userInfo_(self, v10, @"__kIMAVChatConferenceIDChangedNotification", 0, v11);
    objc_msgSend_makeObjectsPerformSelector_withObject_(self->_participants, v12, sel__setConferenceID_, self->_conferenceID, v13);
    v14 = sub_254761764();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_254743000, v14, OS_LOG_TYPE_DEFAULT, "Conference ID changed sending proxy update", v24, 2u);
    }

    v19 = objc_msgSend_sharedInstance(IMAVCallManager, v15, v16, v17, v18);
    objc_msgSend__sendProxyUpdate(v19, v20, v21, v22, v23);
  }
}

- (void)_setCreationDate
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "avchat: %@", &v13, 0xCu);
  }

  if (!self->_dateCreated)
  {
    v8 = objc_msgSend_date(MEMORY[0x277CBEAA8], v4, v5, v6, v7);
    dateCreated = self->_dateCreated;
    self->_dateCreated = v8;
  }

  if (!self->_conferenceID)
  {
    v10 = sub_25475B138();
    conferenceID = self->_conferenceID;
    self->_conferenceID = v10;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_setDateConnected
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "avchat: %@", &v21, 0xCu);
  }

  if (!self->_dateConnected)
  {
    v8 = objc_msgSend_date(MEMORY[0x277CBEAA8], v4, v5, v6, v7);
    dateConnected = self->_dateConnected;
    self->_dateConnected = v8;

    v10 = sub_254761764();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "Date connected changed, sending proxy update", &v21, 2u);
    }

    v15 = objc_msgSend_sharedInstance(IMAVCallManager, v11, v12, v13, v14);
    objc_msgSend__sendProxyUpdate(v15, v16, v17, v18, v19);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (int64_t)_bustedCallID
{
  v5 = objc_msgSend_remoteParticipants(self, a2, v2, v3, v4);
  v10 = objc_msgSend___imFirstObject(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_bestCallID(v10, v11, v12, v13, v14);

  return v15;
}

- (NSNumber)_remoteNatType
{
  v5 = objc_msgSend_remoteParticipants(self, a2, v2, v3, v4);
  v10 = objc_msgSend_lastObject(v5, v6, v7, v8, v9);
  v15 = objc_msgSend__natType(v10, v11, v12, v13, v14);

  return v15;
}

- (NSNumber)_currentNatType
{
  v6 = objc_msgSend_sharedInstance(IMAVInterface, a2, v2, v3, v4);
  v10 = objc_msgSend_natTypeForAVChat_(v6, v7, self, v8, v9);

  return v10;
}

- (NSNumber)_connectDuration
{
  v6 = objc_msgSend_dateConnected(self, a2, v2, v3, v4);
  v11 = v6;
  if (self->_dateStartedConnecting)
  {
    if (!v6)
    {
      v11 = objc_msgSend_date(MEMORY[0x277CBEAA8], v7, v8, v9, v10);
    }

    objc_msgSend_timeIntervalSinceDate_(v11, v7, self->_dateStartedConnecting, v9, v10);
  }

  else
  {
    v12 = 0.0;
  }

  v13 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v7, v8, v9, v10, v12);

  return v13;
}

- (NSNumber)_callDuration
{
  v6 = objc_msgSend_dateConnected(self, a2, v2, v3, v4);
  v11 = objc_msgSend_dateEnded(self, v7, v8, v9, v10);
  v16 = v11;
  if (v6)
  {
    if (v11)
    {
      v17 = v11;
    }

    else
    {
      v17 = objc_msgSend_date(MEMORY[0x277CBEAA8], v12, v13, v14, v15);
    }

    v21 = v17;
    objc_msgSend_timeIntervalSinceDate_(v17, v18, v6, v19, v20);
    v23 = v22;

    objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v24, v25, v26, v27, v23);
  }

  else
  {
    objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v12, v13, v14, v15, 0.0);
  }
  v28 = ;

  return v28;
}

- (NSNumber)_relayConnectDuration
{
  v5 = 0.0;
  if (self->_dateReceivedRelayInitiate)
  {
    dateReceivedRelayUpdate = self->_dateReceivedRelayUpdate;
    if (dateReceivedRelayUpdate)
    {
      v8 = dateReceivedRelayUpdate;
    }

    else
    {
      v8 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, v2, v3, v4);
    }

    v12 = v8;
    objc_msgSend_timeIntervalSinceDate_(v8, v9, self->_dateReceivedRelayInitiate, v10, v11);
    v5 = v13;
  }

  if (v5 >= 0.0)
  {
    v14 = v5;
  }

  else
  {
    v14 = 0.0;
  }

  v15 = MEMORY[0x277CCABB0];

  return objc_msgSend_numberWithDouble_(v15, a2, v2, v3, v4, v14);
}

- (NSNumber)_natType
{
  v15 = *MEMORY[0x277D85DE8];
  natType = self->_natType;
  if (natType)
  {
    v6 = objc_msgSend_unsignedIntValue(natType, a2, v2, v3, v4);
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  if (CFPreferencesGetAppBooleanValue(@"UseCustomNatType", @"com.apple.conference", 0))
  {
    v6 = IMGetDomainIntForKey();
    v10 = sub_254761764();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14[0] = 67109120;
      v14[1] = v6;
      _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "overriding natType: %u", v14, 8u);
    }
  }

  if ((v6 & 0x80000000) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v7, v6, v8, v9);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)setRelayed:(BOOL)a3
{
  v21 = *MEMORY[0x277D85DE8];
  if (self->_relayed != a3)
  {
    v3 = a3;
    v5 = sub_254761764();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (self->_relayed)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      if (v3)
      {
        v6 = @"YES";
      }

      v17 = 138412546;
      v18 = v7;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set relayed from %@ to %@.", &v17, 0x16u);
    }

    self->_relayed = v3;
    v12 = objc_msgSend_sharedInstance(IMAVInterface, v8, v9, v10, v11);
    objc_msgSend_chatRelayedStatusChanged_(v12, v13, self, v14, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setMayRequireBreakBeforeMake:(BOOL)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_mayRequireBreakBeforeMake != a3)
  {
    v3 = a3;
    v5 = sub_254761764();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (self->_mayRequireBreakBeforeMake)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      if (v3)
      {
        v6 = @"YES";
      }

      v11 = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set mayRequireBreakBeforeMake from %@ to %@.", &v11, 0x16u);
    }

    self->_mayRequireBreakBeforeMake = v3;
    objc_msgSend__postNotificationName_userInfo_(self, v8, @"__kIMAVChatMayRequireBreakBeforeMakeChangedNotification", 0, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_localNetworkConnectionType
{
  result = self->_localNetworkConnectionType;
  if (!result)
  {
    v7 = objc_msgSend_sharedInstance(MEMORY[0x277D07DD8], a2, v2, v3, v4);
    v16 = objc_msgSend_allowAnyNetwork(v7, v8, v9, v10, v11);
    if ((v16 & 1) != 0 || (objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v12, v13, v14, v15), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend_nonWifiFaceTimeAvailable(v5, v17, v18, v19, v20)))
    {
      v21 = objc_msgSend_sharedInstance(MEMORY[0x277D07DD8], v12, v13, v14, v15);
      v26 = objc_msgSend_dataActiveAndReachable(v21, v22, v23, v24, v25);

      if (v16)
      {
LABEL_8:

        if (v26)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_8;
  }

  return result;
}

- (NSArray)_imHandles
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = objc_msgSend_remoteParticipants(self, v4, v5, v6, v7, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v24, v28, 16);
  if (v10)
  {
    v15 = v10;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v8);
        }

        v18 = objc_msgSend_imHandle(*(*(&v24 + 1) + 8 * i), v11, v12, v13, v14);
        objc_msgSend_addObject_(v3, v19, v18, v20, v21);
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v24, v28, 16);
    }

    while (v15);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_handleAVError:(id)a3
{
  v53[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = sub_254761764();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v49 = self;
    v50 = 2112;
    v51 = v5;
    _os_log_impl(&dword_254743000, v6, OS_LOG_TYPE_DEFAULT, "AVChat: %@ received error: %@", buf, 0x16u);
  }

  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (objc_msgSend_isActive(self, v7, v8, v9, v10))
    {
      v47 = 0;
      v46 = 1;
      v15 = objc_msgSend_state(self, v11, v12, v13, v14);
      sub_2547568A8(v5, &v47 + 1, &v47, &v46);
      v16 = sub_254761764();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v21 = objc_msgSend_domain(v5, v17, v18, v19, v20);
        v26 = objc_msgSend_description(v5, v22, v23, v24, v25);
        v31 = objc_msgSend_code(v5, v27, v28, v29, v30);
        v36 = _NSStringDescriptionForIMAVChatEndedReason(HIDWORD(v47), v32, v33, v34, v35);
        *buf = 138413058;
        v49 = v21;
        v50 = 2112;
        v51 = v26;
        v52 = 1024;
        LODWORD(v53[0]) = v31;
        WORD2(v53[0]) = 2112;
        *(v53 + 6) = v36;
        _os_log_impl(&dword_254743000, v16, OS_LOG_TYPE_DEFAULT, "Conference received error: [%@:%@:%d:%@]", buf, 0x26u);
      }

      if (v15 != 4 || (v46 & 1) != 0)
      {
        v37 = sub_254761764();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_254743000, v37, OS_LOG_TYPE_DEFAULT, "This is a fatal error", buf, 2u);
        }

        objc_storeStrong(&self->_error, a3);
        objc_msgSend__endChatWithReason_andError_(self, v38, HIDWORD(v47), v47, v39);
        goto LABEL_20;
      }

      v40 = sub_254761764();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v41 = "This is not a fatal error, and we're connected already - so ignoring";
        goto LABEL_15;
      }
    }

    else
    {
      v40 = sub_254761764();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v41 = "Ignoring error, we're already dead anyway!";
LABEL_15:
        _os_log_impl(&dword_254743000, v40, OS_LOG_TYPE_DEFAULT, v41, buf, 2u);
      }
    }

    goto LABEL_20;
  }

  v42 = sub_254761764();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = objc_opt_class();
    v44 = NSStringFromClass(v43);
    *buf = 138412802;
    v49 = self;
    v50 = 2112;
    v51 = v5;
    v52 = 2112;
    v53[0] = v44;
    _os_log_impl(&dword_254743000, v42, OS_LOG_TYPE_DEFAULT, "[WARN] Invalid error type posted to chat: %@   error: %@    class: %@", buf, 0x20u);
  }

LABEL_20:
  v45 = *MEMORY[0x277D85DE8];
}

- (void)_postNotificationName:(id)a3 userInfo:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_GUID)
  {
    v8 = sub_254761764();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412802;
      v17 = v6;
      v18 = 2112;
      v19 = self;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "Posting notification name: %@  object: %@  userInfo: %@", &v16, 0x20u);
    }

    v13 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v9, v10, v11, v12);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v13, v14, v6, self, v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_postNotificationName:(id)a3 participant:(id)a4 userInfo:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_GUID)
  {
    v11 = sub_254761764();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412802;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "Posting participant notification name: %@  object: %@  userInfo: %@", &v19, 0x20u);
    }

    v16 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v12, v13, v14, v15);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v16, v17, v8, v9, v10);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_noteFirstFrame
{
  v6 = objc_msgSend_dateConnected(self, a2, v2, v3, v4);

  if (!v6)
  {
    objc_msgSend__setDateConnected(self, v7, v8, v9, v10);
    objc_msgSend__submitCallConnectedLogging(self, v11, v12, v13, v14);
  }

  self->_hasReceivedFirstFrame = 1;
  v19 = objc_msgSend_sharedInstance(IMAVCallManager, v7, v8, v9, v10);
  objc_msgSend__sendProxyUpdate(v19, v15, v16, v17, v18);
}

- (BOOL)_hasCachedBoolForKey:(id)a3
{
  v4 = a3;
  if (objc_msgSend_length(v4, v5, v6, v7, v8))
  {
    v12 = objc_msgSend_objectForKey_(self->_conferenceStateCache, v9, v4, v10, v11);
    v13 = v12 != 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_cachedBoolForKey:(id)a3
{
  v4 = a3;
  if (objc_msgSend_length(v4, v5, v6, v7, v8))
  {
    v12 = objc_msgSend_objectForKey_(self->_conferenceStateCache, v9, v4, v10, v11);
    v17 = objc_msgSend_BOOLValue(v12, v13, v14, v15, v16);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (CGSize)portraitAspectRatios
{
  width = self->_portraitAspectRatios.width;
  height = self->_portraitAspectRatios.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)landscapeAspectRatios
{
  width = self->_landscapeAspectRatios.width;
  height = self->_landscapeAspectRatios.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)localVideoLayer
{
  v5 = objc_msgSend_sharedInstance(IMAVInterface, a2, v2, v3, v4);
  v10 = objc_msgSend_localVideoLayer(v5, v6, v7, v8, v9);

  return v10;
}

- (void)setLocalVideoLayer:(void *)a3
{
  v9 = objc_msgSend_sharedInstance(IMAVInterface, a2, a3, v3, v4);
  objc_msgSend_setLocalVideoLayer_(v9, v6, a3, v7, v8);
}

- (void)localVideoBackLayer
{
  v5 = objc_msgSend_sharedInstance(IMAVInterface, a2, v2, v3, v4);
  v10 = objc_msgSend_localVideoBackLayer(v5, v6, v7, v8, v9);

  return v10;
}

- (void)setLocalVideoBackLayer:(void *)a3
{
  v9 = objc_msgSend_sharedInstance(IMAVInterface, a2, a3, v3, v4);
  objc_msgSend_setLocalVideoBackLayer_(v9, v6, a3, v7, v8);
}

- (void)setRemoteVideoPresentationSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v12 = objc_msgSend_sharedInstance(IMAVInterface, a2, v3, v4, v5);
  objc_msgSend_setRemoteVideoPresentationSize_forChat_(v12, v9, self, v10, v11, width, height);
}

- (BOOL)startPreviewWithError:(id *)a3
{
  v5 = a3;
  v6 = objc_msgSend_sharedInstance(IMAVInterface, a2, a3, v3, v4);
  LOBYTE(v5) = objc_msgSend_startPreviewWithError_(v6, v7, v5, v8, v9);

  return v5;
}

- (BOOL)stopPreview
{
  v5 = objc_msgSend_sharedInstance(IMAVInterface, a2, v2, v3, v4);
  v10 = objc_msgSend_stopPreview(v5, v6, v7, v8, v9);

  return v10;
}

- (void)_postParticipantMediaChangeNotification:(id)a3 cameraChanged:(BOOL)a4 orientationChanged:(BOOL)a5 aspectChanged:(BOOL)a6 cameraWillSwitch:(BOOL)a7 camera:(unsigned int)a8 orientation:(unsigned int)a9 aspect:(CGSize)a10
{
  height = a10.height;
  width = a10.width;
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v27 = a3;
  v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = !v14 && !v13 && !v15 && !v16;
  if ((v23 & 1) != 0 || v16)
  {
    v24 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v18, a8, v20, v21);
    if (v24)
    {
      CFDictionarySetValue(v22, @"__kIMAVChatCameraTypeKey", v24);
    }
  }

  if ((v23 | v15) == 1)
  {
    v25 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v18, a9, v20, v21);
    if (v25)
    {
      CFDictionarySetValue(v22, @"__kIMAVChatCameraOrientationKey", v25);
    }
  }

  if ((v23 | v14) == 1)
  {
    v26 = objc_msgSend_valueWithSize_(MEMORY[0x277CCAE60], v18, v19, v20, v21, width, height);
    if (v26)
    {
      CFDictionarySetValue(v22, @"__kIMAVChatCameraAspectRatioKey", v26);
    }
  }

  if ((v23 | v13) == 1)
  {
    CFDictionarySetValue(v22, @"__kIMAVChatCameraWillChangeKey", &unk_286692BA8);
  }

  if (v27)
  {
    objc_msgSend__postNotificationName_participant_userInfo_(self, v27, @"__kIMAVChatMediaPropertiesChangedNotification", v27, v22);
  }

  else
  {
    objc_msgSend__postNotificationName_userInfo_(self, 0, @"__kIMAVChatMediaPropertiesChangedNotification", v22, v21);
  }
}

- (unsigned)cameraType
{
  v5 = objc_msgSend_sharedInstance(IMAVLocalPreviewClient, a2, v2, v3, v4);
  v10 = objc_msgSend_cameraType(v5, v6, v7, v8, v9);

  return v10;
}

- (unsigned)cameraOrientation
{
  v5 = objc_msgSend_sharedInstance(IMAVLocalPreviewClient, a2, v2, v3, v4);
  v10 = objc_msgSend_cameraOrientation(v5, v6, v7, v8, v9);

  return v10;
}

- (void)setLocalAspectRatio:(CGSize)a3 cameraOrientation:(unsigned int)a4 cameraType:(unsigned int)a5
{
  height = a3.height;
  width = a3.width;
  v37 = *MEMORY[0x277D85DE8];
  v9 = sub_254761764();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (a4 > 1)
  {
    if (v10)
    {
      v39.width = width;
      v39.height = height;
      v20 = NSStringFromSize(v39);
      *buf = 138412546;
      v34 = self;
      v35 = 2112;
      v36 = v20;
      _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, "Chat: %@ set local landscape aspect ratio to %@", buf, 0x16u);
    }

    objc_msgSend__setLandscapeAspectRatios_(self, v21, v22, v23, v24, width, height);
  }

  else
  {
    if (v10)
    {
      v38.width = width;
      v38.height = height;
      v11 = NSStringFromSize(v38);
      *buf = 138412546;
      v34 = self;
      v35 = 2112;
      v36 = v11;
      _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, "Chat: %@ set local portrait aspect ratio to %@", buf, 0x16u);
    }

    objc_msgSend__setPortraitAspectRatios_(self, v12, v13, v14, v15, width, height);
  }

  v25 = objc_msgSend_cameraType(self, v16, v17, v18, v19);
  v32 = objc_msgSend_cameraOrientation(self, v26, v27, v28, v29);
  objc_msgSend__postParticipantMediaChangeNotification_cameraChanged_orientationChanged_aspectChanged_cameraWillSwitch_camera_orientation_aspect_(self, v30, 0, 0, 0, 1, 0, v25, width, height, v32);
  v31 = *MEMORY[0x277D85DE8];
}

- (void)setInvitationTimeoutTime:(double)a3
{
  if (self->_invitationTimeoutTime != a3)
  {
    self->_invitationTimeoutTime = a3;
    if (objc_msgSend_state(self, a2, v3, v4, v5) == 1 || objc_msgSend_state(self, v7, v8, v9, v10) == 2)
    {

      objc_msgSend__setInvitationTimeoutTimer(self, v7, v8, v9, v10);
    }
  }
}

- (void)setConnectionTimeoutTime:(double)a3
{
  if (self->_connectionTimeoutTime != a3)
  {
    self->_connectionTimeoutTime = a3;
    if (objc_msgSend_state(self, a2, v3, v4, v5) == 3)
    {

      objc_msgSend__setConnectionTimeoutTimer(self, v7, v8, v9, v10);
    }
  }
}

- (void)_clearConnectionTimeoutTimer
{
  v6 = objc_msgSend_connectionTimeoutTimer(self, a2, v2, v3, v4);

  if (v6)
  {
    v7 = sub_254761764();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "Clearing connection timeout timer", v20, 2u);
    }

    v12 = objc_msgSend_connectionTimeoutTimer(self, v8, v9, v10, v11);
    objc_msgSend_invalidate(v12, v13, v14, v15, v16);

    objc_msgSend__setConnectionTimeoutTimer_(self, v17, 0, v18, v19);
  }
}

- (void)_setConnectionTimeoutTimer
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend__clearConnectionTimeoutTimer(self, a2, v2, v3, v4);
  if (self->_connectionTimeoutTime > 0.0)
  {
    v6 = sub_254761764();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      connectionTimeoutTime = self->_connectionTimeoutTime;
      *buf = 134217984;
      v10 = connectionTimeoutTime;
      _os_log_impl(&dword_254743000, v6, OS_LOG_TYPE_DEFAULT, "Setting new connection timeout timer for %f seconds", buf, 0xCu);
    }

    im_main_thread();
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_connectionTimeout:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_state(self, a2, a3, v3, v4);
  v7 = sub_254761764();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6 == 4)
  {
    if (v8)
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "Ignoring timeout timer, we're connected", &v17, 2u);
    }
  }

  else
  {
    if (v8)
    {
      v17 = 138412290;
      v18 = self;
      _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "Connection timeout for: %@", &v17, 0xCu);
    }

    v9 = sub_254761764();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, "Hitting connection timeout", &v17, 2u);
    }

    objc_msgSend__clearConnectionTimeoutTimer(self, v10, v11, v12, v13);
    objc_msgSend__endChatWithReason_andError_(self, v14, 6, 1008, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_clearInvitationTimeoutTimer
{
  v6 = objc_msgSend_inviteTimeoutTimer(self, a2, v2, v3, v4);

  if (v6)
  {
    v7 = sub_254761764();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "Clearing invitation timeout timer", v20, 2u);
    }

    v12 = objc_msgSend_inviteTimeoutTimer(self, v8, v9, v10, v11);
    objc_msgSend_invalidate(v12, v13, v14, v15, v16);

    objc_msgSend__setInviteTimeoutTimer_(self, v17, 0, v18, v19);
  }
}

- (void)_setInvitationTimeoutTimer
{
  v14 = *MEMORY[0x277D85DE8];
  objc_msgSend__clearInvitationTimeoutTimer(self, a2, v2, v3, v4);
  objc_msgSend__setInviteTimeoutTimerStart_(self, v6, 0, v7, v8);
  if (self->_invitationTimeoutTime > 0.0)
  {
    v9 = sub_254761764();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      invitationTimeoutTime = self->_invitationTimeoutTime;
      *buf = 134217984;
      v13 = invitationTimeoutTime;
      _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, "Setting new invitation timeout timer for %f seconds", buf, 0xCu);
    }

    im_main_thread();
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_invitationTimeout:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = sub_254761764();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = self;
    _os_log_impl(&dword_254743000, v4, OS_LOG_TYPE_DEFAULT, "Invitation timeout for: %@", &v18, 0xCu);
  }

  v5 = sub_254761764();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Hitting Invitation timeout", &v18, 2u);
  }

  objc_msgSend__clearInvitationTimeoutTimer(self, v6, v7, v8, v9);
  if (objc_msgSend_isCaller(self, v10, v11, v12, v13))
  {
    objc_msgSend__endChatWithReason_andError_(self, v14, 22, 0, v16);
  }

  else
  {
    objc_msgSend_declineInvitationWithResponse_(self, v14, 7, v15, v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_reduceInvitationTimeoutTime
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  v8 = objc_msgSend_inviteTimeoutTimerStart(self, v4, v5, v6, v7);
  objc_msgSend_timeIntervalSinceDate_(v3, v9, v8, v10, v11);
  v13 = v12;

  v18 = self->_invitationTimeoutTime * 0.5;
  if (v13 < v18)
  {
    objc_msgSend_setInvitationTimeoutTime_(self, v14, v15, v16, v17, self->_invitationTimeoutTime * 0.5);
    v19 = sub_254761764();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 134217984;
      v22 = v18;
      _os_log_impl(&dword_254743000, v19, OS_LOG_TYPE_DEFAULT, "Reducing invitation timeout time to %f", &v21, 0xCu);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_clearFirstFrameTimeoutTimer
{
  v6 = objc_msgSend_firstFrameTimeoutTimer(self, a2, v2, v3, v4);

  if (v6)
  {
    v7 = sub_254761764();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "Clearing first frame timeout timer", v20, 2u);
    }

    v12 = objc_msgSend_firstFrameTimeoutTimer(self, v8, v9, v10, v11);
    objc_msgSend_invalidate(v12, v13, v14, v15, v16);

    objc_msgSend__setFirstFrameTimeoutTimer_(self, v17, 0, v18, v19);
  }
}

- (void)_setFirstFrameTimeoutTimer
{
  objc_msgSend__clearFirstFrameTimeoutTimer(self, a2, v2, v3, v4);
  if (objc_msgSend_isVideo(self, v6, v7, v8, v9) && !self->_hasReceivedFirstFrame)
  {
    v14 = objc_msgSend_firstFrameTimeoutTimer(self, v10, v11, v12, v13);

    if (!v14)
    {
      im_main_thread();
    }
  }
}

- (void)_firstFrameTimeout:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = sub_254761764();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 138412290;
    v33 = self;
    _os_log_impl(&dword_254743000, v4, OS_LOG_TYPE_DEFAULT, "First frame timeout for: %@", &v32, 0xCu);
  }

  v5 = sub_254761764();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v32) = 0;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Hitting first frame timeout timeout, generating fake first frame", &v32, 2u);
  }

  v10 = objc_msgSend_remoteParticipants(self, v6, v7, v8, v9);
  v15 = objc_msgSend_count(v10, v11, v12, v13, v14);

  if (v15)
  {
    v20 = objc_msgSend_remoteParticipants(self, v16, v17, v18, v19);
    v25 = objc_msgSend___imFirstObject(v20, v21, v22, v23, v24);
  }

  else
  {
    v25 = 0;
  }

  objc_msgSend__noteFirstFrame(self, v16, v17, v18, v19);
  objc_msgSend__postNotificationName_participant_userInfo_(self, v26, @"__kIMAVChatParticipantReceivedFirstFrameNotification", v25, 0);
  objc_msgSend__clearFirstFrameTimeoutTimer(self, v27, v28, v29, v30);

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_vccInitDidFinish:(id)a3
{
  v4 = sub_254761764();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v38 = 0;
    _os_log_impl(&dword_254743000, v4, OS_LOG_TYPE_DEFAULT, &unk_2547876A3, v38, 2u);
  }

  if (self->_localState != 5)
  {
    if (self->_hasPendingInit)
    {
      if (!self->_isCaller)
      {
        goto LABEL_10;
      }

      v9 = objc_msgSend_remoteParticipants(self, v5, v6, v7, v8);
      objc_msgSend_makeObjectsPerformSelector_(v9, v10, sel_sendInvitation, v11, v12);
    }

    else
    {
      if (!self->_hasPendingAccept)
      {
        goto LABEL_10;
      }

      v9 = objc_msgSend_initiatorParticipant(self, v5, v6, v7, v8);
      objc_msgSend_sendResponse_(v9, v13, 0, v14, v15);
    }

LABEL_10:
    self->_hasPendingInit = 0;
    self->_hasPendingAccept = 0;
    if (objc_msgSend_isActive(self, v5, v6, v7, v8))
    {
      v20 = objc_msgSend_sharedInstance(IMAVInterface, v16, v17, v18, v19);
      objc_msgSend_landscapeAspectRatios(self, v21, v22, v23, v24);
      v26 = v25;
      v28 = v27;
      objc_msgSend_portraitAspectRatios(self, v29, v30, v31, v32);
      objc_msgSend_avChat_setLocalLandscapeAspectRatio_localPortraitAspectRatio_(v20, v33, self, v34, v35, v26, v28, v36, v37);
    }
  }
}

- (void)conferenceDidStopWithCallID:(int64_t)a3 error:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v10 = objc_msgSend_participantWithAVConferenceCallID_(self, v7, a3, v8, v9);
  v14 = objc_msgSend__callInfoForCallID_(v10, v11, a3, v12, v13);
  objc_msgSend_setState_(v14, v15, 4, v16, v17);
  if (v6)
  {
    objc_msgSend__handleAVError_(self, v18, v6, v20, v21);
  }

  else if (objc_msgSend_hasUnfinishedSessions(v10, v18, v19, v20, v21))
  {
    v25 = sub_254761764();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v33) = 0;
      _os_log_impl(&dword_254743000, v25, OS_LOG_TYPE_DEFAULT, "The other party still has other sessions, so we will not be hanging up.", &v33, 2u);
    }
  }

  else
  {
    objc_msgSend_endChatWithReason_(self, v22, 9, v23, v24);
  }

  v26 = sub_254761764();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v31 = objc_msgSend__participantsCallInfo(v10, v27, v28, v29, v30);
    v33 = 138412290;
    v34 = v31;
    _os_log_impl(&dword_254743000, v26, OS_LOG_TYPE_DEFAULT, "conferenceDidStopWithCallID participant info states %@", &v33, 0xCu);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)conferenceDidPauseAudioWithCallID:(int64_t)a3 didPauseAudio:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v30 = *MEMORY[0x277D85DE8];
  v7 = sub_254761764();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412802;
    v25 = self;
    v26 = 1024;
    v27 = v5;
    v28 = 1024;
    v29 = v4;
    _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "avchat: %@ callID: %d didPauseAudio: %d", &v24, 0x18u);
  }

  objc_msgSend__clearCache(self, v8, v9, v10, v11);
  objc_msgSend__postNotificationName_userInfo_(self, v12, @"__kIMAVChatSendingAudioChangedNotification", 0, v13);
  v18 = objc_msgSend_sharedInstance(IMAVCallManager, v14, v15, v16, v17);
  objc_msgSend__sendProxyUpdate(v18, v19, v20, v21, v22);

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_conferenceOtherParticipant:(id)a3 didConnect:(BOOL)a4
{
  v4 = a4;
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (objc_msgSend_state(v6, v7, v8, v9, v10) != 5)
  {
    if (v6)
    {
      if (v4)
      {
        v15 = objc_msgSend_imHandle(v6, v11, v12, v13, v14);
        v20 = objc_msgSend_invitedBy(self->_localParticipant, v16, v17, v18, v19);

        if (v15 == v20)
        {
          objc_msgSend_setWaitingToConnect_(v6, v21, 0, v22, v23);
        }

        objc_msgSend_setState_(v6, v21, 4, v22, v23);
      }

      else if (objc_msgSend_hasUnfinishedSessions(v6, v11, v12, v13, v14))
      {
        v27 = sub_254761764();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v34) = 0;
          _os_log_impl(&dword_254743000, v27, OS_LOG_TYPE_DEFAULT, "The other party still has other sessions, so we will not be hanging up.", &v34, 2u);
        }
      }

      else
      {
        objc_msgSend_setStateToEndedWithReason_andError_(v6, v25, 6, 1008, v26);
      }

      v24 = sub_254761764();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v32 = objc_msgSend__participantsCallInfo(v6, v28, v29, v30, v31);
        v34 = 138412290;
        v35 = v32;
        _os_log_impl(&dword_254743000, v24, OS_LOG_TYPE_DEFAULT, "_conferenceOtherParticipant:didConnect: participant info states %@", &v34, 0xCu);
      }
    }

    else
    {
      v24 = sub_254761764();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v34) = 0;
        _os_log_impl(&dword_254743000, v24, OS_LOG_TYPE_DEFAULT, "[WARN] [IMAVChat conferencePersonWithID:didConnect:] received for unknown callee", &v34, 2u);
      }
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)conferencePersonWithID:(id)a3 sendRelayRequest:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = sub_254761764();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v46 = 138412802;
    v47 = self;
    v48 = 2112;
    v49 = v6;
    v50 = 2112;
    v51 = v7;
    _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "avchat: %@  person: %@  parameters: %@", &v46, 0x20u);
  }

  v9 = sub_254761764();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v46 = 138412290;
    v47 = v6;
    _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, "Sending relay initiate to: %@", &v46, 0xCu);
  }

  v13 = objc_msgSend_participantWithID_(self, v10, v6, v11, v12);
  v18 = objc_msgSend_imHandle(v13, v14, v15, v16, v17);
  v23 = objc_msgSend_account(v18, v19, v20, v21, v22);
  v28 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v24, v25, v26, v27);
  v33 = objc_msgSend_conferenceID(self, v29, v30, v31, v32);
  v38 = objc_msgSend_ID(v18, v34, v35, v36, v37);
  v43 = objc_msgSend_uniqueID(v23, v39, v40, v41, v42);
  objc_msgSend_relay_sendInitateRequest_toPerson_account_(v28, v44, v33, v7, v38, v43);

  v45 = *MEMORY[0x277D85DE8];
}

- (void)conferencePersonWithID:(id)a3 sendRelayUpdate:(id)a4
{
  v63 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = sub_254761764();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v57 = 138412802;
    v58 = self;
    v59 = 2112;
    v60 = v6;
    v61 = 2112;
    v62 = v7;
    _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "avchat: %@  person: %@  parameters: %@", &v57, 0x20u);
  }

  v9 = sub_254761764();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v57 = 138412290;
    v58 = v6;
    _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, "Sending relay update to: %@", &v57, 0xCu);
  }

  v13 = objc_msgSend_participantWithID_(self, v10, v6, v11, v12);
  v18 = objc_msgSend_imHandle(v13, v14, v15, v16, v17);
  v23 = objc_msgSend_account(v18, v19, v20, v21, v22);
  v28 = objc_msgSend__timings(self, v24, v25, v26, v27);
  objc_msgSend_stopTimingForKey_(v28, v29, @"time-from-relay-initiate-to-outgoing-relay-update", v30, v31);

  objc_msgSend_startTimingForKey_(self->_timingCollection, v32, @"time-from-outgoing-relay-update-to-connected", v33, v34);
  v39 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v35, v36, v37, v38);
  v44 = objc_msgSend_conferenceID(self, v40, v41, v42, v43);
  v49 = objc_msgSend_ID(v18, v45, v46, v47, v48);
  v54 = objc_msgSend_uniqueID(v23, v50, v51, v52, v53);
  objc_msgSend_relay_sendUpdate_toPerson_account_(v39, v55, v44, v7, v49, v54);

  v56 = *MEMORY[0x277D85DE8];
}

- (void)conferencePersonWithID:(id)a3 sendRelayCancel:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = sub_254761764();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v46 = 138412802;
    v47 = self;
    v48 = 2112;
    v49 = v6;
    v50 = 2112;
    v51 = v7;
    _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "avchat: %@  person: %@  parameters: %@", &v46, 0x20u);
  }

  v9 = sub_254761764();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v46 = 138412290;
    v47 = v6;
    _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, "Sending relay cancel to: %@", &v46, 0xCu);
  }

  v13 = objc_msgSend_participantWithID_(self, v10, v6, v11, v12);
  v18 = objc_msgSend_imHandle(v13, v14, v15, v16, v17);
  v23 = objc_msgSend_account(v18, v19, v20, v21, v22);
  v28 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v24, v25, v26, v27);
  v33 = objc_msgSend_conferenceID(self, v29, v30, v31, v32);
  v38 = objc_msgSend_ID(v18, v34, v35, v36, v37);
  v43 = objc_msgSend_uniqueID(v23, v39, v40, v41, v42);
  objc_msgSend_relay_sendCancel_toPerson_account_(v28, v44, v33, v7, v38, v43);

  v45 = *MEMORY[0x277D85DE8];
}

- (void)conferencePersonWithID:(id)a3 localIPDidChange:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = sub_254761764();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v28 = self;
    v29 = 2112;
    v30 = v6;
    v31 = 2112;
    v32 = v7;
    _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "avchat: %@  person: %@  newBlob: %@", buf, 0x20u);
  }

  v9 = sub_254761764();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v6;
    _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, "Sending local IP change to: %@", buf, 0xCu);
  }

  v13 = objc_msgSend_participantWithID_(self, v10, v6, v11, v12);
  v18 = objc_msgSend__FTStringFromBaseData(v7, v14, v15, v16, v17);
  v19 = objc_alloc(MEMORY[0x277CBEAC0]);
  v23 = objc_msgSend_initWithObjectsAndKeys_(v19, v20, v18, v21, v22, @"LocalIPChangeNewBlob", 0);
  objc_msgSend_sendAVMessage_userInfo_(v13, v24, 1500, v23, v25);

  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)isMute
{
  if (objc_msgSend__hasCachedBoolForKey_(self, a2, @"isMute", v2, v3))
  {

    return MEMORY[0x2821F9670](self, sel__cachedBoolForKey_, @"isMute", v7, v8);
  }

  else
  {
    v9 = objc_msgSend_sharedInstance(IMAVInterface, v5, v6, v7, v8);
    isMuteForAVChat = objc_msgSend_isMuteForAVChat_(v9, v10, self, v11, v12);

    objc_msgSend__cacheBool_forKey_(self, v14, isMuteForAVChat, @"isMute", v15);
    return isMuteForAVChat;
  }
}

- (void)toggleMute
{
  v7 = objc_msgSend_isMute(self, a2, v2, v3, v4) ^ 1;

  objc_msgSend_setMute_(self, v6, v7, v8, v9);
}

- (BOOL)isRemoteMute
{
  if (objc_msgSend__hasCachedBoolForKey_(self, a2, @"isRemoteMute", v2, v3))
  {

    return MEMORY[0x2821F9670](self, sel__cachedBoolForKey_, @"isRemoteMute", v7, v8);
  }

  else
  {
    v9 = objc_msgSend_sharedInstance(IMAVInterface, v5, v6, v7, v8);
    isRemoteMuteForAVChat = objc_msgSend_isRemoteMuteForAVChat_(v9, v10, self, v11, v12);

    objc_msgSend__cacheBool_forKey_(self, v14, isRemoteMuteForAVChat, @"isRemoteMute", v15);
    return isRemoteMuteForAVChat;
  }
}

- (BOOL)isSendingAudio
{
  if (objc_msgSend__hasCachedBoolForKey_(self, a2, @"isSendingAudio", v2, v3))
  {

    return MEMORY[0x2821F9670](self, sel__cachedBoolForKey_, @"isSendingAudio", v7, v8);
  }

  else
  {
    v9 = objc_msgSend_sharedInstance(IMAVInterface, v5, v6, v7, v8);
    isSendingAudioForAVChat = objc_msgSend_isSendingAudioForAVChat_(v9, v10, self, v11, v12);

    objc_msgSend__cacheBool_forKey_(self, v14, isSendingAudioForAVChat, @"isSendingAudio", v15);
    return isSendingAudioForAVChat;
  }
}

- (BOOL)isPaused
{
  if (objc_msgSend__hasCachedBoolForKey_(self, a2, @"isPaused", v2, v3))
  {

    return MEMORY[0x2821F9670](self, sel__cachedBoolForKey_, @"isPaused", v7, v8);
  }

  else
  {
    v9 = objc_msgSend_sharedInstance(IMAVInterface, v5, v6, v7, v8);
    isPausedForAVChat = objc_msgSend_isPausedForAVChat_(v9, v10, self, v11, v12);

    objc_msgSend__cacheBool_forKey_(self, v14, isPausedForAVChat, @"isPaused", v15);
    return isPausedForAVChat;
  }
}

- (void)togglePaused
{
  v7 = objc_msgSend_isPaused(self, a2, v2, v3, v4) ^ 1;

  objc_msgSend_setPaused_(self, v6, v7, v8, v9);
}

- (BOOL)isSendingVideo
{
  if (objc_msgSend__hasCachedBoolForKey_(self, a2, @"isSendingVideo", v2, v3))
  {

    return MEMORY[0x2821F9670](self, sel__cachedBoolForKey_, @"isSendingVideo", v7, v8);
  }

  else
  {
    v9 = objc_msgSend_sharedInstance(IMAVInterface, v5, v6, v7, v8);
    isSendingVideoForAVChat = objc_msgSend_isSendingVideoForAVChat_(v9, v10, self, v11, v12);

    objc_msgSend__cacheBool_forKey_(self, v14, isSendingVideoForAVChat, @"isSendingVideo", v15);
    return isSendingVideoForAVChat;
  }
}

- (void)_handleRelayInitate:(id)a3 fromParticipant:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = sub_254761764();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v50 = self;
    v51 = 2112;
    v52 = v7;
    v53 = 2112;
    v54 = v6;
    _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "avchat: %@  participant: %@   properties: %@", buf, 0x20u);
  }

  v13 = objc_msgSend_avChat(v7, v9, v10, v11, v12);
  v18 = objc_msgSend__timings(v13, v14, v15, v16, v17);
  objc_msgSend_startTimingForKey_(v18, v19, @"time-from-relay-initiate-to-outgoing-relay-update", v20, v21);

  v26 = objc_msgSend_avChat(v7, v22, v23, v24, v25);
  v31 = objc_msgSend__timings(v26, v27, v28, v29, v30);
  objc_msgSend_startTimingForKey_(v31, v32, @"time-from-relay-initiate-to-incoming-relay-update", v33, v34);

  v35 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  dateReceivedRelayInitiate = self->_dateReceivedRelayInitiate;
  self->_dateReceivedRelayInitiate = v35;

  v41 = objc_msgSend__conferenceQueue(self, v37, v38, v39, v40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_254764AAC;
  block[3] = &unk_279783760;
  v46 = v7;
  v47 = v6;
  v48 = self;
  v42 = v6;
  v43 = v7;
  dispatch_async(v41, block);

  v44 = *MEMORY[0x277D85DE8];
}

- (void)_handleRelayUpdate:(id)a3 fromParticipant:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = sub_254761764();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v50 = self;
    v51 = 2112;
    v52 = v7;
    v53 = 2112;
    v54 = v6;
    _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "avchat: %@  participant: %@   properties: %@", buf, 0x20u);
  }

  v13 = objc_msgSend_avChat(v7, v9, v10, v11, v12);
  v18 = objc_msgSend__timings(v13, v14, v15, v16, v17);
  objc_msgSend_stopTimingForKey_(v18, v19, @"time-from-relay-initiate-to-incoming-relay-update", v20, v21);

  v26 = objc_msgSend_avChat(v7, v22, v23, v24, v25);
  v31 = objc_msgSend__timings(v26, v27, v28, v29, v30);
  objc_msgSend_startTimingForKey_(v31, v32, @"time-from-relay-incoming-relay-update-to-connected", v33, v34);

  v35 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  dateReceivedRelayUpdate = self->_dateReceivedRelayUpdate;
  self->_dateReceivedRelayUpdate = v35;

  v41 = objc_msgSend__conferenceQueue(self, v37, v38, v39, v40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_254764E1C;
  block[3] = &unk_279783760;
  v46 = v7;
  v47 = self;
  v48 = v6;
  v42 = v6;
  v43 = v7;
  dispatch_async(v41, block);

  v44 = *MEMORY[0x277D85DE8];
}

- (void)_handleRelayCancel:(id)a3 fromParticipant:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = sub_254761764();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v24 = self;
    v25 = 2112;
    v26 = v7;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "avchat: %@  participant: %@   properties: %@", buf, 0x20u);
  }

  dateReceivedRelayInitiate = self->_dateReceivedRelayInitiate;
  self->_dateReceivedRelayInitiate = 0;

  dateReceivedRelayUpdate = self->_dateReceivedRelayUpdate;
  self->_dateReceivedRelayUpdate = 0;

  v15 = objc_msgSend__conferenceQueue(self, v11, v12, v13, v14);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_254765198;
  block[3] = &unk_279783760;
  v20 = v7;
  v21 = self;
  v22 = v6;
  v16 = v6;
  v17 = v7;
  dispatch_async(v15, block);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_setActiveConference
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v32) = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "_setActiveConference", &v32, 2u);
  }

  v4 = sub_254761764();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 138412290;
    v33 = self;
    _os_log_impl(&dword_254743000, v4, OS_LOG_TYPE_DEFAULT, "avchat: %@", &v32, 0xCu);
  }

  if (objc_msgSend_isActive(self, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_sharedInstance(IMAVInterface, v9, v10, v11, v12);
    objc_msgSend_landscapeAspectRatios(self, v14, v15, v16, v17);
    v19 = v18;
    v21 = v20;
    objc_msgSend_portraitAspectRatios(self, v22, v23, v24, v25);
    objc_msgSend_avChat_setLocalLandscapeAspectRatio_localPortraitAspectRatio_(v13, v26, self, v27, v28, v19, v21, v29, v30);
  }

  objc_msgSend__postStateToDelegateIfNecessary(self, v9, v10, v11, v12);
  v31 = *MEMORY[0x277D85DE8];
}

- (void)_postStateToDelegateIfNecessary
{
  v183 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v178 = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "avchat: %@", buf, 0xCu);
  }

  localState = self->_localState;
  if (localState != self->_lastPostedState)
  {
    if (localState > 2)
    {
      if (localState == 3)
      {
        objc_msgSend_stopTimingForKey_(self->_timingCollection, v4, @"time-to-start-connecting", v6, v7);
        objc_msgSend_startTimingForKey_(self->_timingCollection, v39, @"time-connecting-to-connected", v40, v41);
        objc_msgSend_stopTimingForKey_(self->_timingCollection, v42, @"time-to-connecting", v43, v44);
        objc_msgSend__clearInvitationTimeoutTimer(self, v45, v46, v47, v48);
        objc_msgSend__clearFirstFrameTimeoutTimer(self, v49, v50, v51, v52);
        objc_msgSend__setConnectionTimeoutTimer(self, v53, v54, v55, v56);
        if (!self->_dateStartedConnecting)
        {
          v57 = objc_alloc_init(MEMORY[0x277CBEAA8]);
          dateStartedConnecting = self->_dateStartedConnecting;
          self->_dateStartedConnecting = v57;
        }

        goto LABEL_17;
      }

      if (localState == 4)
      {
        objc_msgSend_stopTimingForKey_(self->_timingCollection, v4, @"time-from-outgoing-relay-update-to-connected", v6, v7);
        objc_msgSend_stopTimingForKey_(self->_timingCollection, v59, @"time-from-relay-incoming-relay-update-to-connected", v60, v61);
        objc_msgSend_stopTimingForKey_(self->_timingCollection, v62, @"time-connecting-to-connected", v63, v64);
        objc_msgSend_stopTimingForKey_(self->_timingCollection, v65, @"time-to-connected", v66, v67);
        objc_msgSend__clearConnectionTimeoutTimer(self, v68, v69, v70, v71);
        objc_msgSend__clearInvitationTimeoutTimer(self, v72, v73, v74, v75);
        objc_msgSend__setFirstFrameTimeoutTimer(self, v76, v77, v78, v79);
        objc_msgSend__entitlementsChanged_(self, v80, 0, v81, v82);
        goto LABEL_17;
      }

      if (localState != 5)
      {
LABEL_17:
        if (self->_localState == 5)
        {
          v83 = MEMORY[0x277CCACA8];
          v84 = objc_msgSend_reasonChatEnded(self->_localParticipant, v4, v5, v6, v7);
          v89 = _NSStringDescriptionForIMAVChatEndedReason(v84, v85, v86, v87, v88);
          v94 = objc_msgSend_error(self->_localParticipant, v90, v91, v92, v93);
          v99 = _NSStringDescriptionForIMAVChatError(v94, v95, v96, v97, v98);
          v103 = objc_msgSend_stringWithFormat_(v83, v100, @"%@ - %@", v101, v102, v89, v99);

          _IMLoggingSetFailureReason();
        }

        v104 = objc_msgSend_sharedInstance(IMAVInterface, v4, v5, v6, v7);
        objc_msgSend_chatStateUpdated(v104, v105, v106, v107, v108);

        v113 = self->_localState;
        if (self->_lastPostedState <= 5 && v113 == 5)
        {
          if (!self->_dateEnded)
          {
            v115 = objc_msgSend_date(MEMORY[0x277CBEAA8], v109, v110, v111, v112);
            dateEnded = self->_dateEnded;
            self->_dateEnded = v115;
          }

          v117 = objc_msgSend_sharedInstance(IMAVInterface, v109, v110, v111, v112);
          objc_msgSend__conferenceEnded_(v117, v118, self, v119, v120);

          v113 = self->_localState;
        }

        self->_lastPostedState = v113;
        v121 = sub_254761764();
        if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
        {
          v122 = _NSStringDescriptionForIMAVChatState(self->_lastPostedState);
          v127 = objc_msgSend_endedReason(self, v123, v124, v125, v126);
          v132 = _NSStringDescriptionForIMAVChatEndedReason(v127, v128, v129, v130, v131);
          v137 = objc_msgSend_endedError(self, v133, v134, v135, v136);
          v142 = _NSStringDescriptionForIMAVChatError(v137, v138, v139, v140, v141);
          *buf = 138412802;
          v178 = v122;
          v179 = 2112;
          v180 = v132;
          v181 = 2112;
          v182 = v142;
          _os_log_impl(&dword_254743000, v121, OS_LOG_TYPE_DEFAULT, "Posting state change to %@   reason: %@   error: %@", buf, 0x20u);
        }

        v143 = sub_254761764();
        if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
        {
          v148 = objc_msgSend_reasonChatEnded(self->_localParticipant, v144, v145, v146, v147);
          v153 = _NSStringDescriptionForIMAVChatEndedReason(v148, v149, v150, v151, v152);
          *buf = 138412290;
          v178 = v153;
          _os_log_impl(&dword_254743000, v143, OS_LOG_TYPE_DEFAULT, "    Reason: %@", buf, 0xCu);
        }

        v154 = sub_254761764();
        if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
        {
          v159 = objc_msgSend_error(self->_localParticipant, v155, v156, v157, v158);
          v164 = _NSStringDescriptionForIMAVChatError(v159, v160, v161, v162, v163);
          *buf = 138412290;
          v178 = v164;
          _os_log_impl(&dword_254743000, v154, OS_LOG_TYPE_DEFAULT, "     Error: %@", buf, 0xCu);
        }

        v165 = MEMORY[0x277CBEAC0];
        v169 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v166, self->_lastPostedState, v167, v168);
        v173 = objc_msgSend_dictionaryWithObjectsAndKeys_(v165, v170, v169, v171, v172, @"__kIMAVChatStateKey", 0);
        objc_msgSend__postNotificationName_userInfo_(self, v174, @"__kIMAVChatStateChangedNotification", v173, v175);

        goto LABEL_34;
      }

      objc_msgSend__clearConnectionTimeoutTimer(self, v4, v5, v6, v7);
      objc_msgSend__clearInvitationTimeoutTimer(self, v17, v18, v19, v20);
      objc_msgSend__clearFirstFrameTimeoutTimer(self, v21, v22, v23, v24);
      v29 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v25, v26, v27, v28);
      objc_msgSend_removeObserver_name_object_(v29, v30, self, 0, 0);
    }

    else if (localState)
    {
      if (localState == 1 || localState == 2)
      {
        objc_msgSend__clearConnectionTimeoutTimer(self, v4, v5, v6, v7);
        objc_msgSend__setInvitationTimeoutTimer(self, v9, v10, v11, v12);
        objc_msgSend__clearFirstFrameTimeoutTimer(self, v13, v14, v15, v16);
      }

      goto LABEL_17;
    }

    objc_msgSend__clearConnectionTimeoutTimer(self, v4, v5, v6, v7);
    objc_msgSend__clearFirstFrameTimeoutTimer(self, v31, v32, v33, v34);
    objc_msgSend__clearInvitationTimeoutTimer(self, v35, v36, v37, v38);
    goto LABEL_17;
  }

LABEL_34:
  v176 = *MEMORY[0x277D85DE8];
}

- (void)systemDidFastUserSwitchOut
{
  if ((objc_msgSend_isStateFinal(self, a2, v2, v3, v4) & 1) == 0)
  {

    objc_msgSend_endChat(self, v6, v7, v8, v9);
  }
}

- (void)_saveAudioRestartState
{
  v27 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isActive(self, a2, v2, v3, v4) && objc_msgSend_isSendingAudio(self, v6, v7, v8, v9) && (objc_msgSend__needsAudioRestart(self, v10, v11, v12, v13) & 1) == 0)
  {
    v14 = sub_254761764();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = self;
      _os_log_impl(&dword_254743000, v14, OS_LOG_TYPE_DEFAULT, "** Setting needs audio restarted: %@", &v25, 0xCu);
    }

    objc_msgSend__setNeedsAudioRestart_(self, v15, 1, v16, v17);
    objc_msgSend_setMute_(self, v18, 1, v19, v20);
    objc_msgSend_setIsSendingAudio_(self, v21, 0, v22, v23);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_saveVideoRestartState
{
  v27 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isActive(self, a2, v2, v3, v4) && objc_msgSend_isSendingVideo(self, v6, v7, v8, v9) && (objc_msgSend__needsVideoRestart(self, v10, v11, v12, v13) & 1) == 0)
  {
    v14 = sub_254761764();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = self;
      _os_log_impl(&dword_254743000, v14, OS_LOG_TYPE_DEFAULT, "** Setting needs video restarted: %@", &v25, 0xCu);
    }

    objc_msgSend__setNeedsVideoRestart_(self, v15, 1, v16, v17);
    objc_msgSend_setPaused_(self, v18, 1, v19, v20);
    objc_msgSend_setIsSendingVideo_(self, v21, 0, v22, v23);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_resumeAudioState
{
  if (objc_msgSend_isActive(self, a2, v2, v3, v4) && objc_msgSend__needsAudioRestart(self, v6, v7, v8, v9))
  {
    v10 = sub_254761764();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "** Restarting audio!", v20, 2u);
    }

    objc_msgSend__setNeedsAudioRestart_(self, v11, 0, v12, v13);
    objc_msgSend_setMute_(self, v14, 0, v15, v16);
    objc_msgSend_setIsSendingAudio_(self, v17, 1, v18, v19);
  }
}

- (void)_resumeVideoState
{
  if (objc_msgSend_isActive(self, a2, v2, v3, v4) && objc_msgSend__needsVideoRestart(self, v6, v7, v8, v9))
  {
    v10 = sub_254761764();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "** Restarting video!", v20, 2u);
    }

    objc_msgSend__setNeedsVideoRestart_(self, v11, 0, v12, v13);
    objc_msgSend_setPaused_(self, v14, 0, v15, v16);
    objc_msgSend_setIsSendingVideo_(self, v17, 1, v18, v19);
  }
}

- (void)systemApplicationDidBecomeActive
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Become active: %@", &v13, 0xCu);
  }

  objc_msgSend__resumeAudioState(self, v4, v5, v6, v7);
  objc_msgSend__resumeVideoState(self, v8, v9, v10, v11);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)systemApplicationDidEnterBackground
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Application is entering background: %@", &v9, 0xCu);
  }

  objc_msgSend__saveVideoRestartState(self, v4, v5, v6, v7);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)systemApplicationWillEnterForeground
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Application is entering foreground: %@", &v13, 0xCu);
  }

  objc_msgSend__resumeAudioState(self, v4, v5, v6, v7);
  objc_msgSend__resumeVideoState(self, v8, v9, v10, v11);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)systemApplicationDidSuspend
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Application did suspend: %@", &v9, 0xCu);
  }

  objc_msgSend__saveVideoRestartState(self, v4, v5, v6, v7);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)systemApplicationDidResume
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Application did resume: %@", &v13, 0xCu);
  }

  objc_msgSend__resumeAudioState(self, v4, v5, v6, v7);
  objc_msgSend__resumeVideoState(self, v8, v9, v10, v11);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)systemApplicationDidResumeForEventsOnly
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Application did resume for events only: %@", &v13, 0xCu);
  }

  objc_msgSend__resumeAudioState(self, v4, v5, v6, v7);
  objc_msgSend__resumeVideoState(self, v8, v9, v10, v11);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)notificationCenterWillAppear
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Notification center is appearing: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)notificationCenterDidDisappear
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Notification center did disappear: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)systemWillShutdown
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "System will shut down, ending chat: %@", &v9, 0xCu);
  }

  objc_msgSend_endChat(self, v4, v5, v6, v7);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_airplaneModeChanged:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_airplaneModeEnabled(self, a2, a3, v3, v4);
  v11 = objc_msgSend_sharedInstance(MEMORY[0x277D19270], v7, v8, v9, v10);
  isAirplaneModeEnabled = objc_msgSend_isAirplaneModeEnabled(v11, v12, v13, v14, v15);
  objc_msgSend__setAirplaneModeEnabled_(self, v17, isAirplaneModeEnabled, v18, v19);

  if (v6 != objc_msgSend_airplaneModeEnabled(self, v20, v21, v22, v23) && objc_msgSend_airplaneModeEnabled(self, v24, v25, v26, v27))
  {
    v28 = sub_254761764();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 138412290;
      v35 = self;
      _os_log_impl(&dword_254743000, v28, OS_LOG_TYPE_DEFAULT, "Airplane mode was enabled, ending chat: %@", &v34, 0xCu);
    }

    objc_msgSend_endChat(self, v29, v30, v31, v32);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_entitlementsChanged:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  if (objc_msgSend__localNetworkConnectionType(self, a2, a3, v3, v4) == 1)
  {
    v10 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v6, v7, v8, v9);
    v15 = objc_msgSend_nonWifiFaceTimeAvailable(v10, v11, v12, v13, v14);

    if ((v15 & 1) == 0)
    {
      v16 = sub_254761764();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        v23 = self;
        _os_log_impl(&dword_254743000, v16, OS_LOG_TYPE_DEFAULT, "FaceTime over cellular was disabled, ending chat: %@", &v22, 0xCu);
      }

      objc_msgSend_endChat(self, v17, v18, v19, v20);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_peerID:(id)a3 changedTo:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = sub_254761764();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v53 = 138412546;
    v54 = v6;
    v55 = 2112;
    v56 = v7;
    _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "peerID: %@ changedTo: %@", &v53, 0x16u);
  }

  if ((objc_msgSend_isEqualToString_(v6, v9, v7, v10, v11) & 1) == 0 && objc_msgSend_length(v6, v12, v13, v14, v15) && objc_msgSend_length(v7, v16, v17, v18, v19))
  {
    v24 = objc_msgSend_account(self, v20, v21, v22, v23);
    v28 = objc_msgSend_imHandleWithID_(v24, v25, v6, v26, v27);

    v33 = objc_msgSend_account(self, v29, v30, v31, v32);
    v37 = objc_msgSend_imHandleWithID_(v33, v34, v7, v35, v36);

    v38 = sub_254761764();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v53 = 138412546;
      v54 = v28;
      v55 = 2112;
      v56 = v37;
      _os_log_impl(&dword_254743000, v38, OS_LOG_TYPE_DEFAULT, "old handle: %@   new handle: %@", &v53, 0x16u);
    }

    if (v28 && v37)
    {
      v42 = objc_msgSend_participantMatchingIMHandle_(self, v39, v37, v40, v41);
      if (v42)
      {
        v46 = v42;
        v47 = sub_254761764();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v53) = 0;
          _os_log_impl(&dword_254743000, v47, OS_LOG_TYPE_DEFAULT, "Already have new handle", &v53, 2u);
        }
      }

      else
      {
        v46 = objc_msgSend_participantMatchingIMHandle_(self, v43, v28, v44, v45);
        v48 = sub_254761764();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v53 = 138412290;
          v54 = v46;
          _os_log_impl(&dword_254743000, v48, OS_LOG_TYPE_DEFAULT, "found participant: %@", &v53, 0xCu);
        }

        objc_msgSend__switchToUseNewIMHandle_(v46, v49, v37, v50, v51);
      }
    }
  }

  v52 = *MEMORY[0x277D85DE8];
}

- (void)_updateIMHandleInBuddyList:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277D18CF0];
  objc_msgSend_postNotificationName_(v3, v5, *MEMORY[0x277D18CF0], v6, v7);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = objc_msgSend_accountSiblingsArray(v3, v8, v9, v10, v11, 0);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v22, v26, 16);
  if (v14)
  {
    v18 = v14;
    v19 = *v23;
    do
    {
      v20 = 0;
      do
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v12);
        }

        objc_msgSend_postNotificationName_(*(*(&v22 + 1) + 8 * v20++), v15, v4, v16, v17);
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v22, v26, 16);
    }

    while (v18);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_insertRemoteParticipant:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = sub_254761764();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, &unk_2547876A3, v25, 2u);
  }

  objc_msgSend_requestIconIfNecessary(v6, v8, v9, v10, v11);
  if (a4 == 0x7FFFFFFFFFFFFFFFLL || (v16 = a4 + 1, v16 >= objc_msgSend_count(self->_participants, v12, v13, v14, v15)))
  {
    objc_msgSend_addObject_(self->_participants, v12, v6, v14, v15);
  }

  else
  {
    objc_msgSend_insertObject_atIndex_(self->_participants, v12, v6, v16, v15);
  }

  v21 = objc_msgSend_imHandle(v6, v17, v18, v19, v20);
  objc_msgSend__updateIMHandleInBuddyList_(self, v22, v21, v23, v24);
}

- (BOOL)_moveVCPartyID:(id)a3 toIndex:(unsigned int)a4 inCount:(unsigned int)a5
{
  LODWORD(v5) = a5;
  v11 = a3;
  if (v5)
  {
    v12 = objc_msgSend_objectAtIndex_(self->_participants, v8, 0, v9, v10);
    v17 = objc_msgSend_vcPartyID(v12, v13, v14, v15, v16);
    isEqualToString = objc_msgSend_isEqualToString_(v11, v18, v17, v19, v20);

    if (isEqualToString)
    {
      v25 = 0;
      LOBYTE(v5) = 1;
LABEL_8:
      if (v25 != a4)
      {
        objc_msgSend_removeObjectAtIndex_(self->_participants, v22, v25, v23, v24);
        objc_msgSend_insertObject_atIndex_(self->_participants, v39, v12, a4, v40);
      }
    }

    else
    {
      v26 = v5;
      v5 = 1;
      while (1)
      {

        if (v26 == v5)
        {
          break;
        }

        v12 = objc_msgSend_objectAtIndex_(self->_participants, v27, v5, v28, v29);
        v34 = objc_msgSend_vcPartyID(v12, v30, v31, v32, v33);
        v38 = objc_msgSend_isEqualToString_(v11, v35, v34, v36, v37);

        ++v5;
        if (v38)
        {
          v25 = v5 - 1;
          LOBYTE(v5) = v5 - 1 < v26;
          goto LABEL_8;
        }
      }

      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (void)_initParticipantsWithIMHandles:(id)a3
{
  v82 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sub_254761764();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v79 = self;
    v80 = 2112;
    v81 = v4;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "avchat: %@  imhandles: %@", buf, 0x16u);
  }

  v10 = objc_msgSend_count(v4, v6, v7, v8, v9);
  v11 = objc_alloc(MEMORY[0x277CBEB18]);
  v15 = objc_msgSend_initWithCapacity_(v11, v12, v10 + 1, v13, v14);
  participants = self->_participants;
  self->_participants = v15;

  v71 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v17, v4, v18, v19);
  objc_msgSend_addObject_(v71, v20, self->_initiator, v21, v22);
  v27 = objc_msgSend___imFirstObject(v4, v23, v24, v25, v26);
  v32 = objc_msgSend_account(v27, v28, v29, v30, v31);
  v37 = objc_msgSend_loginIMHandle(v32, v33, v34, v35, v36);

  v38 = [IMAVChatParticipant alloc];
  initiator = self->_initiator;
  v44 = objc_msgSend_account(v37, v40, v41, v42, v43);
  inited = objc_msgSend_initAs_invitedBy_toChat_account_(v38, v45, v37, initiator, self, v44);
  localParticipant = self->_localParticipant;
  self->_localParticipant = inited;

  objc_msgSend_addObject_(self->_participants, v48, self->_localParticipant, v49, v50);
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = v4;
  v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v51, &v73, v77, 16);
  if (v52)
  {
    v54 = v52;
    v55 = 0;
    v56 = *v74;
    do
    {
      for (i = 0; i != v54; ++i)
      {
        if (*v74 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v58 = *(*(&v73 + 1) + 8 * i);
        if (v58 == v37)
        {
          if (self->_isVideo)
          {
            v55 = 0;
          }
        }

        else
        {
          v59 = [IMAVChatParticipant alloc];
          v60 = self->_initiator;
          v65 = objc_msgSend_account(v58, v61, v62, v63, v64);
          v67 = objc_msgSend_initAs_invitedBy_toChat_account_(v59, v66, v58, v60, self, v65);

          objc_msgSend__insertRemoteParticipant_atIndex_(self, v68, v67, v55, v69);
          ++v55;
        }
      }

      v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v53, &v73, v77, 16);
    }

    while (v54);
  }

  v70 = *MEMORY[0x277D85DE8];
}

- (BOOL)_participantsCheckOut
{
  v72 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, &unk_2547876A3, buf, 2u);
  }

  v8 = objc_msgSend_count(self->_participants, v4, v5, v6, v7);
  if ((v8 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v8;
    v14 = sub_254761764();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_isVideo)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      *buf = 67109378;
      *v69 = v13;
      *&v69[4] = 2112;
      *&v69[6] = v15;
      v16 = "Failing due to count check:   count: %d  isVideo: %@";
      v17 = v14;
      v18 = 18;
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  localParticipant = self->_localParticipant;
  if (!localParticipant)
  {
    v14 = sub_254761764();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "Failing due to empty local participant";
      v17 = v14;
      v18 = 2;
LABEL_23:
      _os_log_impl(&dword_254743000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
    }

LABEL_24:
    v56 = 0;
    goto LABEL_39;
  }

  v14 = objc_msgSend_invitedBy(localParticipant, v9, v10, v11, v12);
  v24 = objc_msgSend_imHandle(self->_localParticipant, v20, v21, v22, v23);
  v25 = v14 == v24;
  isCaller = self->_isCaller;

  if (isCaller == v25)
  {
    v31 = objc_msgSend_set(MEMORY[0x277CBEB58], v27, v28, v29, v30);
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v32 = self->_participants;
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v63, v67, 16);
    if (v34)
    {
      v39 = v34;
      v40 = 0;
      v41 = *v64;
      while (2)
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v64 != v41)
          {
            objc_enumerationMutation(v32);
          }

          v43 = *(*(&v63 + 1) + 8 * i);
          v44 = objc_msgSend_imHandle(v43, v35, v36, v37, v38, v63);
          v49 = objc_msgSend_invitedBy(v43, v45, v46, v47, v48);
          if (objc_msgSend_containsObject_(v31, v50, v44, v51, v52))
          {
            v60 = sub_254761764();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *v69 = v44;
              _os_log_impl(&dword_254743000, v60, OS_LOG_TYPE_DEFAULT, "Failing due to duplicate handle: %@", buf, 0xCu);
            }

            goto LABEL_36;
          }

          v40 |= v44 == v49;
          objc_msgSend_addObject_(v31, v53, v44, v54, v55);
        }

        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v63, v67, 16);
        if (v39)
        {
          continue;
        }

        break;
      }

      if (v40)
      {
        v56 = 1;
        goto LABEL_38;
      }
    }

    else
    {
    }

    v32 = sub_254761764();
    if (os_log_type_enabled(&v32->super.super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, &v32->super.super, OS_LOG_TYPE_DEFAULT, "Failing due to inviter not being in the participant list", buf, 2u);
    }

LABEL_36:
  }

  else
  {
    v31 = sub_254761764();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v57 = self->_localParticipant;
      v58 = self->_isCaller;
      *buf = 138412802;
      if (v58)
      {
        v59 = @"YES";
      }

      else
      {
        v59 = @"NO";
      }

      *v69 = v57;
      *&v69[8] = 2112;
      *&v69[10] = v14;
      v70 = 2112;
      v71 = v59;
      _os_log_impl(&dword_254743000, v31, OS_LOG_TYPE_DEFAULT, "Failing inviter check:   localParticipant: %@   invitedBy: %@   isCaller: %@", buf, 0x20u);
    }
  }

  v56 = 0;
LABEL_38:

LABEL_39:
  v61 = *MEMORY[0x277D85DE8];
  return v56;
}

- (IMAVChatParticipant)initiatorParticipant
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = self->_participants;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v17, v21, 16);
  if (v4)
  {
    v9 = v4;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v2);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (objc_msgSend_isInitiator(v12, v5, v6, v7, v8))
        {
          v13 = v12;
          goto LABEL_13;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v17, v21, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v2 = sub_254761764();
  if (os_log_type_enabled(&v2->super.super, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_254743000, &v2->super.super, OS_LOG_TYPE_DEFAULT, "[WARN] *********** [IMAVChat initiatorParticipant] couldn't find initiator participant!", v16, 2u);
  }

  v13 = 0;
LABEL_13:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (NSArray)remoteParticipants
{
  v6 = objc_msgSend_count(self->_participants, a2, v2, v3, v4);
  if (v6 > 1)
  {
    objc_msgSend_subarrayWithRange_(self->_participants, v7, 1, (v6 - 1), v10);
  }

  else
  {
    objc_msgSend_array(MEMORY[0x277CBEA60], v7, v8, v9, v10);
  }
  v11 = ;

  return v11;
}

- (id)_participantMatchingVCPartyID:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = v4;
  if (!v4)
  {
LABEL_12:
    v26 = 0;
    goto LABEL_15;
  }

  if (objc_msgSend_length(v4, v5, v6, v7, v8))
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = self->_participants;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v29, v33, 16);
    if (v12)
    {
      v17 = v12;
      v18 = *v30;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v10);
          }

          v20 = *(*(&v29 + 1) + 8 * i);
          v21 = objc_msgSend_vcPartyID(v20, v13, v14, v15, v16, v29);
          isEqualToString = objc_msgSend_isEqualToString_(v9, v22, v21, v23, v24);

          if (isEqualToString)
          {
            v26 = v20;

            goto LABEL_15;
          }
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v29, v33, 16);
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_12;
  }

  v26 = self->_localParticipant;
LABEL_15:

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)chatList
{
  v5 = objc_msgSend_sharedInstance(IMAVCallManager, a2, v2, v3, v4);
  v10 = objc_msgSend_calls(v5, v6, v7, v8, v9);

  return v10;
}

+ (id)connectedChat
{
  v6 = objc_msgSend__chatListLock(IMAVChat, a2, v2, v3, v4);
  objc_msgSend_lock(v6, v7, v8, v9, v10);

  v15 = objc_msgSend_activeChat(a1, v11, v12, v13, v14);
  v20 = v15;
  if (v15 && objc_msgSend_state(v15, v16, v17, v18, v19) == 2)
  {
    v21 = objc_msgSend__chatListLock(IMAVChat, v16, v17, v18, v19);
    objc_msgSend_unlock(v21, v22, v23, v24, v25);

    v26 = 0;
  }

  else
  {
    v27 = objc_msgSend__chatListLock(IMAVChat, v16, v17, v18, v19);
    objc_msgSend_unlock(v27, v28, v29, v30, v31);

    v26 = v20;
  }

  return v26;
}

+ (id)activeChat
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_sharedInstance(IMAVController, a2, v2, v3, v4);
  hasActiveConference = objc_msgSend_hasActiveConference(v5, v6, v7, v8, v9);

  if (hasActiveConference)
  {
    v15 = objc_msgSend__chatListLock(IMAVChat, v11, v12, v13, v14);
    objc_msgSend_lock(v15, v16, v17, v18, v19);

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v24 = objc_msgSend_chatList(IMAVChat, v20, v21, v22, v23, 0);
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v47, v51, 16);
    if (v30)
    {
      v31 = *v48;
      while (2)
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v48 != v31)
          {
            objc_enumerationMutation(v24);
          }

          v33 = *(*(&v47 + 1) + 8 * i);
          v34 = objc_msgSend_state(v33, v26, v27, v28, v29);
          if (v34 > 5 || ((1 << v34) & 0x23) == 0)
          {
            v30 = v33;
            goto LABEL_16;
          }
        }

        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v47, v51, 16);
        if (v30)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    v40 = objc_msgSend__chatListLock(IMAVChat, v36, v37, v38, v39);
    objc_msgSend_unlock(v40, v41, v42, v43, v44);
  }

  else
  {
    v30 = 0;
  }

  v45 = *MEMORY[0x277D85DE8];

  return v30;
}

+ (id)nonFinalChat
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend__chatListLock(IMAVChat, a2, v2, v3, v4);
  objc_msgSend_lock(v5, v6, v7, v8, v9);

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v14 = objc_msgSend_chatList(IMAVChat, v10, v11, v12, v13, 0);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v37, v41, 16);
  if (v20)
  {
    v21 = *v38;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v38 != v21)
        {
          objc_enumerationMutation(v14);
        }

        v23 = *(*(&v37 + 1) + 8 * i);
        v24 = objc_msgSend_state(v23, v16, v17, v18, v19);
        if (v24)
        {
          v25 = v24 == 5;
        }

        else
        {
          v25 = 1;
        }

        if (!v25)
        {
          v20 = v23;
          goto LABEL_13;
        }
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v37, v41, 16);
    }

    while (v20);
  }

LABEL_13:

  v30 = objc_msgSend__chatListLock(IMAVChat, v26, v27, v28, v29);
  objc_msgSend_unlock(v30, v31, v32, v33, v34);

  v35 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)acceptedChats
{
  v5 = objc_msgSend__chatListLock(IMAVChat, a2, v2, v3, v4);
  objc_msgSend_lock(v5, v6, v7, v8, v9);

  v10 = objc_alloc(MEMORY[0x277CBEB18]);
  v15 = objc_msgSend_connectingChats(IMAVChat, v11, v12, v13, v14);
  v19 = objc_msgSend_initWithArray_(v10, v16, v15, v17, v18);

  v24 = objc_msgSend_connectedChats(IMAVChat, v20, v21, v22, v23);
  objc_msgSend_addObjectsFromArray_(v19, v25, v24, v26, v27);

  v32 = objc_msgSend__chatListLock(IMAVChat, v28, v29, v30, v31);
  objc_msgSend_unlock(v32, v33, v34, v35, v36);

  return v19;
}

+ (id)avChatWithGUID:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (objc_msgSend_length(v3, v4, v5, v6, v7))
  {
    v12 = objc_msgSend__chatListLock(IMAVChat, v8, v9, v10, v11);
    objc_msgSend_lock(v12, v13, v14, v15, v16);

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v21 = objc_msgSend_chatList(IMAVChat, v17, v18, v19, v20, 0);
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v47, v51, 16);
    if (v27)
    {
      v28 = *v48;
      while (2)
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v48 != v28)
          {
            objc_enumerationMutation(v21);
          }

          v30 = *(*(&v47 + 1) + 8 * i);
          v31 = objc_msgSend_GUID(v30, v23, v24, v25, v26);
          isEqualToString = objc_msgSend_isEqualToString_(v31, v32, v3, v33, v34);

          if (isEqualToString)
          {
            v27 = v30;
            goto LABEL_12;
          }
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v47, v51, 16);
        if (v27)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v40 = objc_msgSend__chatListLock(IMAVChat, v36, v37, v38, v39);
    objc_msgSend_unlock(v40, v41, v42, v43, v44);
  }

  else
  {
    v27 = 0;
  }

  v45 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (id)_avChatArray
{
  v5 = objc_msgSend_sharedInstance(IMAVCallManager, a2, v2, v3, v4);
  v10 = objc_msgSend__copyMutableFTCalls(v5, v6, v7, v8, v9);

  return v10;
}

+ (id)_chatList
{
  v5 = objc_msgSend__chatListLock(IMAVChat, a2, v2, v3, v4);
  objc_msgSend_lock(v5, v6, v7, v8, v9);

  v14 = objc_msgSend_sharedInstance(IMAVCallManager, v10, v11, v12, v13);
  v19 = objc_msgSend__FTCalls(v14, v15, v16, v17, v18);
  v24 = objc_msgSend_copy(v19, v20, v21, v22, v23);

  v29 = objc_msgSend__chatListLock(IMAVChat, v25, v26, v27, v28);
  objc_msgSend_unlock(v29, v30, v31, v32, v33);

  return v24;
}

+ (id)_connectedChat
{
  v5 = objc_msgSend__activeChat(a1, a2, v2, v3, v4);
  v10 = v5;
  if (v5 && objc_msgSend_state(v5, v6, v7, v8, v9) == 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  return v11;
}

+ (id)_activeChat
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_sharedInstance(IMAVController, a2, v2, v3, v4);
  hasActiveConference = objc_msgSend_hasActiveConference(v5, v6, v7, v8, v9);

  if (hasActiveConference)
  {
    v15 = objc_msgSend__chatListLock(IMAVChat, v11, v12, v13, v14);
    objc_msgSend_lock(v15, v16, v17, v18, v19);

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v24 = objc_msgSend__chatList(IMAVChat, v20, v21, v22, v23, 0);
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v47, v51, 16);
    if (v30)
    {
      v31 = *v48;
      while (2)
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v48 != v31)
          {
            objc_enumerationMutation(v24);
          }

          v33 = *(*(&v47 + 1) + 8 * i);
          v34 = objc_msgSend_state(v33, v26, v27, v28, v29);
          if (v34 > 5 || ((1 << v34) & 0x23) == 0)
          {
            v30 = v33;
            goto LABEL_16;
          }
        }

        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v47, v51, 16);
        if (v30)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    v40 = objc_msgSend__chatListLock(IMAVChat, v36, v37, v38, v39);
    objc_msgSend_unlock(v40, v41, v42, v43, v44);
  }

  else
  {
    v30 = 0;
  }

  v45 = *MEMORY[0x277D85DE8];

  return v30;
}

+ (id)_nonFinalChat
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend__chatListLock(IMAVChat, a2, v2, v3, v4);
  objc_msgSend_lock(v5, v6, v7, v8, v9);

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v14 = objc_msgSend_sharedInstance(IMAVCallManager, v10, v11, v12, v13, 0);
  v19 = objc_msgSend__FTCalls(v14, v15, v16, v17, v18);

  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v42, v46, 16);
  if (v25)
  {
    v26 = *v43;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v43 != v26)
        {
          objc_enumerationMutation(v19);
        }

        v28 = *(*(&v42 + 1) + 8 * i);
        v29 = objc_msgSend_state(v28, v21, v22, v23, v24);
        if (v29)
        {
          v30 = v29 == 5;
        }

        else
        {
          v30 = 1;
        }

        if (!v30)
        {
          v25 = v28;
          goto LABEL_13;
        }
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v42, v46, 16);
    }

    while (v25);
  }

LABEL_13:

  v35 = objc_msgSend__chatListLock(IMAVChat, v31, v32, v33, v34);
  objc_msgSend_unlock(v35, v36, v37, v38, v39);

  v40 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)_chatListLock
{
  if (qword_28134A470 != -1)
  {
    sub_25477F968();
  }

  v3 = qword_28134A468;

  return v3;
}

+ (id)_avChatWithConferenceID:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (objc_msgSend_length(v3, v4, v5, v6, v7))
  {
    v12 = objc_msgSend__chatListLock(IMAVChat, v8, v9, v10, v11);
    objc_msgSend_lock(v12, v13, v14, v15, v16);

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v21 = objc_msgSend__chatList(IMAVChat, v17, v18, v19, v20, 0);
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v47, v51, 16);
    if (v27)
    {
      v28 = *v48;
      while (2)
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v48 != v28)
          {
            objc_enumerationMutation(v21);
          }

          v30 = *(*(&v47 + 1) + 8 * i);
          v31 = objc_msgSend_conferenceID(v30, v23, v24, v25, v26);
          isEqualToString = objc_msgSend_isEqualToString_(v31, v32, v3, v33, v34);

          if (isEqualToString)
          {
            v27 = v30;
            goto LABEL_12;
          }
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v47, v51, 16);
        if (v27)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v40 = objc_msgSend__chatListLock(IMAVChat, v36, v37, v38, v39);
    objc_msgSend_unlock(v40, v41, v42, v43, v44);
  }

  else
  {
    v27 = 0;
  }

  v45 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (id)_avChatWithGUID:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (objc_msgSend_length(v3, v4, v5, v6, v7))
  {
    v12 = objc_msgSend__chatListLock(IMAVChat, v8, v9, v10, v11);
    objc_msgSend_lock(v12, v13, v14, v15, v16);

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v21 = objc_msgSend__chatList(IMAVChat, v17, v18, v19, v20, 0);
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v47, v51, 16);
    if (v27)
    {
      v28 = *v48;
      while (2)
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v48 != v28)
          {
            objc_enumerationMutation(v21);
          }

          v30 = *(*(&v47 + 1) + 8 * i);
          v31 = objc_msgSend_GUID(v30, v23, v24, v25, v26);
          isEqualToString = objc_msgSend_isEqualToString_(v31, v32, v3, v33, v34);

          if (isEqualToString)
          {
            v27 = v30;
            goto LABEL_12;
          }
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v47, v51, 16);
        if (v27)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v40 = objc_msgSend__chatListLock(IMAVChat, v36, v37, v38, v39);
    objc_msgSend_unlock(v40, v41, v42, v43, v44);
  }

  else
  {
    v27 = 0;
  }

  v45 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (id)_acceptedChats
{
  v5 = objc_msgSend__chatListLock(IMAVChat, a2, v2, v3, v4);
  objc_msgSend_lock(v5, v6, v7, v8, v9);

  v10 = objc_alloc(MEMORY[0x277CBEB18]);
  v15 = objc_msgSend__connectingChats(IMAVChat, v11, v12, v13, v14);
  v19 = objc_msgSend_initWithArray_(v10, v16, v15, v17, v18);

  v24 = objc_msgSend__connectedChats(IMAVChat, v20, v21, v22, v23);
  objc_msgSend_addObjectsFromArray_(v19, v25, v24, v26, v27);

  v32 = objc_msgSend__chatListLock(IMAVChat, v28, v29, v30, v31);
  objc_msgSend_unlock(v32, v33, v34, v35, v36);

  return v19;
}

+ (id)_avChatInvitedByIMHandle:(id)a3 orConferenceID:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v10 = objc_msgSend__avChatWithConferenceID_(a1, v7, a4, v8, v9);
  v15 = v10;
  if (v10)
  {
    v16 = v10;
  }

  else
  {
    v17 = objc_msgSend__chatListLock(IMAVChat, v11, v12, v13, v14);
    objc_msgSend_lock(v17, v18, v19, v20, v21);

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v26 = objc_msgSend__chatList(IMAVChat, v22, v23, v24, v25, 0);
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v47, v51, 16);
    if (v16)
    {
      v32 = *v48;
      while (2)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v48 != v32)
          {
            objc_enumerationMutation(v26);
          }

          v34 = *(*(&v47 + 1) + 8 * i);
          v35 = objc_msgSend_initiatorIMHandle(v34, v28, v29, v30, v31);

          if (v35 == v6)
          {
            v16 = v34;
            goto LABEL_13;
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v28, &v47, v51, 16);
        if (v16)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    v40 = objc_msgSend__chatListLock(IMAVChat, v36, v37, v38, v39);
    objc_msgSend_unlock(v40, v41, v42, v43, v44);
  }

  v45 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_avChatWaitingForReplyFromIMHandle:(id)a3 orConferenceID:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend__avChatWithConferenceID_(a1, a2, a4, a4, v4);
  v10 = v5;
  if (v5 && objc_msgSend_isCaller(v5, v6, v7, v8, v9))
  {
    v11 = v10;
  }

  else
  {
    v12 = objc_msgSend__chatListLock(IMAVChat, v6, v7, v8, v9);
    objc_msgSend_lock(v12, v13, v14, v15, v16);

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v21 = objc_msgSend__chatList(IMAVChat, v17, v18, v19, v20, 0);
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v41, v45, 16);
    if (v11)
    {
      v27 = *v42;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v42 != v27)
          {
            objc_enumerationMutation(v21);
          }

          v29 = *(*(&v41 + 1) + 8 * i);
          if (objc_msgSend_state(v29, v23, v24, v25, v26) == 2 && objc_msgSend_isCaller(v29, v23, v24, v25, v26))
          {
            v11 = v29;
            goto LABEL_15;
          }
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v41, v45, 16);
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    v34 = objc_msgSend__chatListLock(IMAVChat, v30, v31, v32, v33);
    objc_msgSend_unlock(v34, v35, v36, v37, v38);
  }

  v39 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)_avChatConnectingFromIMHandle:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v8 = objc_msgSend__chatListLock(IMAVChat, v4, v5, v6, v7);
  objc_msgSend_lock(v8, v9, v10, v11, v12);

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v17 = objc_msgSend__chatList(IMAVChat, v13, v14, v15, v16, 0);
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v39, v43, 16);
  if (v23)
  {
    v24 = *v40;
    while (2)
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v40 != v24)
        {
          objc_enumerationMutation(v17);
        }

        v26 = *(*(&v39 + 1) + 8 * i);
        if (objc_msgSend_state(v26, v19, v20, v21, v22) == 3 && (objc_msgSend_isCaller(v26, v19, v20, v21, v22) & 1) == 0)
        {
          if (!v3 || (objc_msgSend_participantMatchingIMHandle_(v26, v19, v3, v21, v22), v27 = objc_claimAutoreleasedReturnValue(), v27, v27))
          {
            v23 = v26;
            goto LABEL_14;
          }
        }
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v39, v43, 16);
      if (v23)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v32 = objc_msgSend__chatListLock(IMAVChat, v28, v29, v30, v31);
  objc_msgSend_unlock(v32, v33, v34, v35, v36);

  v37 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)_avChatWithMatchingIMHandles:(id)a3 video:(BOOL)a4
{
  v111 = a4;
  v122 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sub_254761764();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v111)
    {
      v6 = @"YES";
    }

    *buf = 138412546;
    v119 = v4;
    v120 = 2112;
    v121 = v6;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "imHandles: %@  video: %@", buf, 0x16u);
  }

  v11 = objc_msgSend_lastObject(v4, v7, v8, v9, v10);
  v12 = sub_254761764();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_msgSend__avChatArray(IMAVChat, v13, v14, v15, v16);
    *buf = 138412290;
    v119 = v17;
    _os_log_impl(&dword_254743000, v12, OS_LOG_TYPE_DEFAULT, "All existing AVChats: %@", buf, 0xCu);
  }

  v22 = objc_msgSend__chatListLock(IMAVChat, v18, v19, v20, v21);
  objc_msgSend_lock(v22, v23, v24, v25, v26);

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v31 = objc_msgSend__chatList(IMAVChat, v27, v28, v29, v30);
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v113, v117, 16);
  v112 = v31;
  if (!v33)
  {
    v98 = 0;
    goto LABEL_44;
  }

  v34 = v33;
  v110 = v4;
  v35 = *v114;
  while (2)
  {
    for (i = 0; i != v34; ++i)
    {
      if (*v114 != v35)
      {
        objc_enumerationMutation(v31);
      }

      v37 = *(*(&v113 + 1) + 8 * i);
      v38 = sub_254761764();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v119 = v37;
        _os_log_impl(&dword_254743000, v38, OS_LOG_TYPE_DEFAULT, "Checking AVChat: %@", buf, 0xCu);
      }

      if (objc_msgSend_isCaller(v37, v39, v40, v41, v42))
      {
        v47 = sub_254761764();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_254743000, v47, OS_LOG_TYPE_DEFAULT, "  ==> Not using this, this is an outgoing", buf, 2u);
        }

        goto LABEL_36;
      }

      v47 = objc_msgSend_remoteParticipants(v37, v43, v44, v45, v46);
      if (objc_msgSend_count(v47, v48, v49, v50, v51) < 2)
      {
        v57 = objc_msgSend_lastObject(v47, v52, v53, v54, v55);
        v62 = objc_msgSend_imHandle(v57, v58, v59, v60, v61);

        if (v62 != v11)
        {
          v67 = sub_254761764();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v119 = v62;
            v120 = 2112;
            v121 = v11;
            _os_log_impl(&dword_254743000, v67, OS_LOG_TYPE_DEFAULT, "  ==> %@ and %@ do not match", buf, 0x16u);
          }

          v72 = objc_msgSend_ID(v62, v68, v69, v70, v71);
          objc_msgSend_ID(v11, v73, v74, v75, v76);
          v78 = v77 = v11;
          hasSuffix = objc_msgSend_hasSuffix_(v72, v79, v78, v80, v81);

          v11 = v77;
          if (!hasSuffix)
          {
LABEL_35:

            v31 = v112;
            goto LABEL_36;
          }

          v83 = sub_254761764();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_254743000, v83, OS_LOG_TYPE_DEFAULT, "  ==> Letting this slide...", buf, 2u);
          }
        }

        if (objc_msgSend_state(v37, v63, v64, v65, v66) < 3)
        {
          isVideo = objc_msgSend_isVideo(v37, v84, v85, v86, v87);
          v88 = sub_254761764();
          v96 = os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT);
          if (isVideo == v111)
          {
            if (v96)
            {
              *buf = 138412290;
              v119 = v37;
              _os_log_impl(&dword_254743000, v88, OS_LOG_TYPE_DEFAULT, "We found a matching chat: %@", buf, 0xCu);
            }

            v98 = v37;
            goto LABEL_42;
          }

          if (v96)
          {
            *buf = 0;
            _os_log_impl(&dword_254743000, v88, OS_LOG_TYPE_DEFAULT, "  ==> Video flags do not match", buf, 2u);
          }
        }

        else
        {
          v88 = sub_254761764();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
          {
            v93 = objc_msgSend_state(v37, v89, v90, v91, v92);
            v94 = _NSStringDescriptionForIMAVChatState(v93);
            *buf = 138412290;
            v119 = v94;
            _os_log_impl(&dword_254743000, v88, OS_LOG_TYPE_DEFAULT, "  ==> State of this chat is not adequate: %@", buf, 0xCu);
          }
        }

        goto LABEL_35;
      }

      v56 = sub_254761764();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_254743000, v56, OS_LOG_TYPE_DEFAULT, "  ==> Outgoing multiparty, skipping", buf, 2u);
      }

LABEL_36:
    }

    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v97, &v113, v117, 16);
    if (v34)
    {
      continue;
    }

    break;
  }

  v98 = 0;
LABEL_42:
  v4 = v110;
LABEL_44:

  v103 = objc_msgSend__chatListLock(IMAVChat, v99, v100, v101, v102);
  objc_msgSend_unlock(v103, v104, v105, v106, v107);

  v108 = *MEMORY[0x277D85DE8];

  return v98;
}

+ (id)_imHandleFromProxyRepresentation:(id)a3
{
  v3 = a3;
  v7 = objc_msgSend_objectForKey_(v3, v4, @"Service", v5, v6);
  v11 = objc_msgSend_objectForKey_(v3, v8, @"AccountGUID", v9, v10);
  v15 = objc_msgSend_objectForKey_(v3, v12, @"AccountLogin", v13, v14);
  v19 = objc_msgSend_objectForKey_(v3, v16, @"HandleID", v17, v18);

  v23 = objc_msgSend_serviceWithName_(MEMORY[0x277D18DD8], v20, v7, v21, v22);
  v28 = objc_msgSend_sharedInstance(MEMORY[0x277D18D28], v24, v25, v26, v27);
  v30 = objc_msgSend_bestAccountForService_login_guid_(v28, v29, v23, v15, v11);

  v34 = objc_msgSend_imHandleWithID_(v30, v31, v19, v32, v33);

  return v34;
}

+ (id)_proxyRepresentationForIMHandle:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v10 = objc_msgSend_service(v4, v6, v7, v8, v9);
  v15 = objc_msgSend_name(v10, v11, v12, v13, v14);
  v20 = objc_msgSend_account(v4, v16, v17, v18, v19);
  v25 = objc_msgSend_uniqueID(v20, v21, v22, v23, v24);
  v30 = objc_msgSend_login(v20, v26, v27, v28, v29);
  v35 = objc_msgSend_ID(v4, v31, v32, v33, v34);

  if (v15)
  {
    objc_msgSend_setObject_forKey_(v5, v36, v15, @"Service", v37);
  }

  if (v25)
  {
    objc_msgSend_setObject_forKey_(v5, v36, v25, @"AccountGUID", v37);
  }

  if (v30)
  {
    objc_msgSend_setObject_forKey_(v5, v36, v30, @"AccountLogin", v37);
  }

  if (v35)
  {
    objc_msgSend_setObject_forKey_(v5, v36, v35, @"HandleID", v37);
  }

  return v5;
}

- (id)_proxyRepresentationForIMAVChatParticipant:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = objc_msgSend_name(v3, v5, v6, v7, v8);
  if (v9)
  {
    CFDictionarySetValue(v4, @"Name", v9);
  }

  v10 = MEMORY[0x277CCABB0];
  v15 = objc_msgSend__inviteDelivered(v3, v11, v12, v13, v14);
  v19 = objc_msgSend_numberWithBool_(v10, v16, v15, v17, v18);
  if (v19)
  {
    CFDictionarySetValue(v4, @"IsInvitationDelivered", v19);
  }

  v20 = MEMORY[0x277CCABB0];
  isLocalParticipant = objc_msgSend_isLocalParticipant(v3, v21, v22, v23, v24);
  v29 = objc_msgSend_numberWithBool_(v20, v26, isLocalParticipant, v27, v28);
  if (v29)
  {
    CFDictionarySetValue(v4, @"IsLocalParticipant", v29);
  }

  return v4;
}

- (id)_proxyRepresentation
{
  v216 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = objc_msgSend_GUID(self, v4, v5, v6, v7);
  if (v8)
  {
    CFDictionarySetValue(v3, @"GUID", v8);
  }

  v13 = objc_msgSend_account(self, v9, v10, v11, v12);
  v18 = objc_msgSend_uniqueID(v13, v14, v15, v16, v17);

  if (v18)
  {
    CFDictionarySetValue(v3, @"AccountID", v18);
  }

  v23 = objc_msgSend_conferenceID(self, v19, v20, v21, v22);
  if (v23)
  {
    CFDictionarySetValue(v3, @"ConferenceID", v23);
  }

  v24 = MEMORY[0x277CCABB0];
  v29 = objc_msgSend_state(self, v25, v26, v27, v28);
  v33 = objc_msgSend_numberWithUnsignedInt_(v24, v30, v29, v31, v32);
  if (v33)
  {
    CFDictionarySetValue(v3, @"State", v33);
  }

  v34 = MEMORY[0x277CCABB0];
  isStateFinal = objc_msgSend_isStateFinal(self, v35, v36, v37, v38);
  v43 = objc_msgSend_numberWithBool_(v34, v40, isStateFinal, v41, v42);
  if (v43)
  {
    CFDictionarySetValue(v3, @"IsStateFinal", v43);
  }

  v48 = objc_msgSend_initiatorIMHandle(self, v44, v45, v46, v47);
  v52 = objc_msgSend__proxyRepresentationForIMHandle_(IMAVChat, v49, v48, v50, v51);

  if (v52)
  {
    CFDictionarySetValue(v3, @"Initiator", v52);
  }

  v57 = objc_msgSend_otherIMHandle(self, v53, v54, v55, v56);
  v61 = objc_msgSend__proxyRepresentationForIMHandle_(IMAVChat, v58, v57, v59, v60);

  if (v61)
  {
    CFDictionarySetValue(v3, @"Other", v61);
  }

  v62 = MEMORY[0x277CCABB0];
  isCaller = objc_msgSend_isCaller(self, v63, v64, v65, v66);
  v71 = objc_msgSend_numberWithBool_(v62, v68, isCaller, v69, v70);
  if (v71)
  {
    CFDictionarySetValue(v3, @"IsCaller", v71);
  }

  v72 = MEMORY[0x277CCABB0];
  isVideo = objc_msgSend_isVideo(self, v73, v74, v75, v76);
  v81 = objc_msgSend_numberWithBool_(v72, v78, isVideo, v79, v80);
  if (v81)
  {
    CFDictionarySetValue(v3, @"IsVideo", v81);
  }

  v82 = MEMORY[0x277CCABB0];
  v87 = objc_msgSend_endedReason(self, v83, v84, v85, v86);
  v91 = objc_msgSend_numberWithUnsignedInt_(v82, v88, v87, v89, v90);
  if (v91)
  {
    CFDictionarySetValue(v3, @"EndedReason", v91);
  }

  v92 = MEMORY[0x277CCABB0];
  v97 = objc_msgSend_endedError(self, v93, v94, v95, v96);
  v101 = objc_msgSend_numberWithInt_(v92, v98, v97, v99, v100);
  if (v101)
  {
    CFDictionarySetValue(v3, @"EndedError", v101);
  }

  v102 = MEMORY[0x277CCABB0];
  isMute = objc_msgSend_isMute(self, v103, v104, v105, v106);
  v111 = objc_msgSend_numberWithBool_(v102, v108, isMute, v109, v110);
  if (v111)
  {
    CFDictionarySetValue(v3, @"IsMute", v111);
  }

  v112 = MEMORY[0x277CCABB0];
  isSendingAudio = objc_msgSend_isSendingAudio(self, v113, v114, v115, v116);
  v121 = objc_msgSend_numberWithBool_(v112, v118, isSendingAudio, v119, v120);
  if (v121)
  {
    CFDictionarySetValue(v3, @"IsSendingAudio", v121);
  }

  v122 = MEMORY[0x277CCABB0];
  isSendingVideo = objc_msgSend_isSendingVideo(self, v123, v124, v125, v126);
  v131 = objc_msgSend_numberWithBool_(v122, v128, isSendingVideo, v129, v130);
  if (v131)
  {
    CFDictionarySetValue(v3, @"IsSendingVideo", v131);
  }

  v136 = objc_msgSend_dataUploaded(self, v132, v133, v134, v135);
  if (v136)
  {
    CFDictionarySetValue(v3, @"DataUploaded", v136);
  }

  v141 = objc_msgSend_dataDownloaded(self, v137, v138, v139, v140);
  if (v141)
  {
    CFDictionarySetValue(v3, @"DataDownloaded", v141);
  }

  v145 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v142, self->_relayed, v143, v144);
  if (v145)
  {
    CFDictionarySetValue(v3, @"IsRelayed", v145);
  }

  v146 = MEMORY[0x277CCABB0];
  v151 = objc_msgSend_metadataFinalized(self, v147, v148, v149, v150);
  v155 = objc_msgSend_numberWithBool_(v146, v152, v151, v153, v154);
  if (v155)
  {
    CFDictionarySetValue(v3, @"MetadataFinalized", v155);
  }

  v159 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v156, self->_hasReceivedFirstFrame, v157, v158);
  if (v159)
  {
    CFDictionarySetValue(v3, @"HasReceivedFirstFrame", v159);
  }

  v164 = objc_msgSend_dateConnected(self, v160, v161, v162, v163);
  objc_msgSend_timeIntervalSince1970(v164, v165, v166, v167, v168);
  v173 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v169, v170, v171, v172);
  if (v173)
  {
    CFDictionarySetValue(v3, @"DateConnected", v173);
  }

  v178 = objc_msgSend_dateEnded(self, v174, v175, v176, v177);
  objc_msgSend_timeIntervalSince1970(v178, v179, v180, v181, v182);
  v187 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v183, v184, v185, v186);
  if (v187)
  {
    CFDictionarySetValue(v3, @"DateEnded", v187);
  }

  v192 = objc_msgSend_remoteParticipants(self, v188, v189, v190, v191);
  v193 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v211 = 0u;
  v212 = 0u;
  v213 = 0u;
  v214 = 0u;
  v194 = v192;
  v196 = objc_msgSend_countByEnumeratingWithState_objects_count_(v194, v195, &v211, v215, 16);
  if (v196)
  {
    v200 = v196;
    v210 = v164;
    v201 = 0;
    v202 = *v212;
    do
    {
      v203 = 0;
      v204 = v201;
      do
      {
        if (*v212 != v202)
        {
          objc_enumerationMutation(v194);
        }

        v201 = objc_msgSend__proxyRepresentationForIMAVChatParticipant_(self, v197, *(*(&v211 + 1) + 8 * v203), v198, v199);

        objc_msgSend_addObject_(v193, v205, v201, v206, v207);
        ++v203;
        v204 = v201;
      }

      while (v200 != v203);
      v200 = objc_msgSend_countByEnumeratingWithState_objects_count_(v194, v197, &v211, v215, 16);
    }

    while (v200);

    v164 = v210;
  }

  if (v193)
  {
    CFDictionarySetValue(v3, @"RemoteParticipants", v193);
  }

  v208 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)setMetadataFinalized
{
  objc_msgSend__setMetadataFinalized_(self, a2, 1, v2, v3);
  v11 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v5, v6, v7, v8);
  objc_msgSend_postNotificationName_object_(v11, v9, @"__kIMAVChatConferenceMetadataUpdatedNotification", self, v10);
}

- (void)_submitCallStartedLoggingWithRecipientID:(id)a3 isCaller:(BOOL)a4 isVideo:(BOOL)a5
{
  v5 = a4;
  IMStringIsEmail();
  if (v5)
  {
    FTAWDSetSubmissionDate();
  }

  v14 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v6, v7, v8, v9);
  objc_msgSend_isScreenLocked(v14, v10, v11, v12, v13);
  FTAWDLogCallStarted();
}

- (void)_submitCallConnectedLogging
{
  objc_msgSend_isCaller(self, a2, v2, v3, v4);
  objc_msgSend_isVideo(self, v6, v7, v8, v9);
  v75 = objc_msgSend__connectDuration(self, v10, v11, v12, v13);
  objc_msgSend__remoteNetworkConnectionType(self, v14, v15, v16, v17);
  objc_msgSend__localNetworkConnectionType(self, v18, v19, v20, v21);
  v26 = objc_msgSend__connectionType(self, v22, v23, v24, v25);
  sub_25477D6C8(v26);
  objc_msgSend__usesRelay(self, v27, v28, v29, v30);
  v39 = objc_msgSend__natType(self, v31, v32, v33, v34);
  if (!v39)
  {
    v39 = objc_msgSend__currentNatType(self, v35, v36, v37, v38);
  }

  v40 = objc_msgSend__remoteNatType(self, v35, v36, v37, v38);
  v45 = objc_msgSend_unsignedIntValue(v39, v41, v42, v43, v44);
  v46 = sub_25477D778(v45);
  v51 = objc_msgSend_unsignedIntValue(v40, v47, v48, v49, v50);
  v52 = sub_25477D778(v51);
  v56 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v53, v46, v54, v55);

  v60 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v57, v52, v58, v59);

  v65 = objc_msgSend__relayConnectDuration(self, v61, v62, v63, v64);
  v70 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v66, v67, v68, v69);
  objc_msgSend_isScreenLocked(v70, v71, v72, v73, v74);
  FTAWDLogCallConnected();
}

- (void)_submitCallInterruptionBeganLogging
{
  objc_msgSend_isCaller(self, a2, v2, v3, v4);
  objc_msgSend_isVideo(self, v6, v7, v8, v9);
  objc_msgSend__isVideoInterrupted(self, v10, v11, v12, v13);
  objc_msgSend__isAudioInterrupted(self, v14, v15, v16, v17);
  v18 = MEMORY[0x277CCABB0];
  v23 = objc_msgSend_sharedInstance(MEMORY[0x277D192E8], v19, v20, v21, v22);
  if (objc_msgSend__localNetworkConnectionType(self, v24, v25, v26, v27) == 1)
  {
    v31 = objc_msgSend_linkQualityValueForInterfaceType_(v23, v28, 3, v29, v30);
  }

  else
  {
    v31 = objc_msgSend_linkQualityValueForInterfaceType_(v23, v28, 2, v29, v30);
  }

  v53 = objc_msgSend_numberWithInt_(v18, v32, v31, v33, v34);

  v39 = objc_msgSend__interruptionBegan(self, v35, v36, v37, v38);

  if (!v39)
  {
    v44 = objc_msgSend_date(MEMORY[0x277CBEAA8], v40, v41, v42, v43);
    objc_msgSend__setInterruptionBegan_(self, v45, v44, v46, v47);
  }

  v48 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v40, v41, v42, v43);
  objc_msgSend_isScreenLocked(v48, v49, v50, v51, v52);
  FTAWDLogCallInterruptionBegan();
}

- (void)_submitCallInterruptionEndedLogging
{
  v85 = *MEMORY[0x277D85DE8];
  objc_msgSend_isCaller(self, a2, v2, v3, v4);
  objc_msgSend_isVideo(self, v6, v7, v8, v9);
  objc_msgSend__isVideoInterrupted(self, v10, v11, v12, v13);
  objc_msgSend__isAudioInterrupted(self, v14, v15, v16, v17);
  v18 = MEMORY[0x277CCABB0];
  v23 = objc_msgSend_sharedInstance(MEMORY[0x277D192E8], v19, v20, v21, v22);
  if (objc_msgSend__localNetworkConnectionType(self, v24, v25, v26, v27) == 1)
  {
    v31 = objc_msgSend_linkQualityValueForInterfaceType_(v23, v28, 3, v29, v30);
  }

  else
  {
    v31 = objc_msgSend_linkQualityValueForInterfaceType_(v23, v28, 2, v29, v30);
  }

  v35 = objc_msgSend_numberWithInt_(v18, v32, v31, v33, v34);

  v40 = objc_msgSend_date(MEMORY[0x277CBEAA8], v36, v37, v38, v39);
  v45 = objc_msgSend__interruptionBegan(self, v41, v42, v43, v44);
  objc_msgSend_timeIntervalSinceDate_(v40, v46, v45, v47, v48);
  v50 = v49;

  v51 = sub_254761764();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    v56 = objc_msgSend__interruptionBegan(self, v52, v53, v54, v55);
    v61 = objc_msgSend_date(MEMORY[0x277CBEAA8], v57, v58, v59, v60);
    v79 = 138412802;
    v80 = v56;
    v81 = 2112;
    v82 = v61;
    v83 = 2048;
    v84 = v50;
    _os_log_impl(&dword_254743000, v51, OS_LOG_TYPE_DEFAULT, "Interruption start date %@ end date %@ interval %f", &v79, 0x20u);
  }

  v65 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v62, (v50 * 1000.0), v63, v64);
  v70 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v66, v67, v68, v69);
  objc_msgSend_isScreenLocked(v70, v71, v72, v73, v74);
  FTAWDLogCallInterruptionEnded();

  objc_msgSend__setInterruptionBegan_(self, v75, 0, v76, v77);
  v78 = *MEMORY[0x277D85DE8];
}

- (void)_submitCallEndedLoggingWithReason:(unsigned int)a3 andError:(int)a4
{
  v7 = dispatch_time(0, 3000000000);
  v8 = dispatch_get_global_queue(-32768, 0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_25477F518;
  v9[3] = &unk_279783AD8;
  v9[4] = self;
  v10 = a4;
  v11 = a3;
  dispatch_after(v7, v8, v9);
}

@end