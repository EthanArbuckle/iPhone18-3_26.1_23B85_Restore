@interface IMAVConferenceInterface
+ (BOOL)_useMultipleAVConference;
+ (void)_postParticipantMediaChangeNotification:(id)a3 cameraChanged:(BOOL)a4 orientationChanged:(BOOL)a5 aspectChanged:(BOOL)a6 contentRectChanged:(BOOL)a7 cameraWillSwitch:(BOOL)a8 camera:(unsigned int)a9 orentation:(unsigned int)a10 aspect:(CGSize)a11 contentRect:(CGRect)a12;
+ (void)_postParticipantScreenAttributesChangeNotification:(id)a3 cameraChanged:(BOOL)a4 orientationChanged:(BOOL)a5 aspectChanged:(BOOL)a6 cameraWillSwitch:(BOOL)a7 camera:(unsigned int)a8 orentation:(unsigned int)a9 aspect:(CGSize)a10;
- (BOOL)_hasAVConferenceObjectsForChatsOtherThan:(id)a3;
- (BOOL)_submitEndCallMetric:(id)a3 forCallID:(int64_t)a4;
- (BOOL)_submitLoggingInformation:(id)a3 forChat:(id)a4;
- (BOOL)avChat:(id)a3 generateCallInfoForID:(id)a4 service:(id)a5 usingRelay:(BOOL)a6 callInfo:(id)a7;
- (BOOL)isAVInterfaceReady;
- (BOOL)isMuteForAVChat:(id)a3;
- (BOOL)isSendingAudioForAVChat:(id)a3;
- (BOOL)isSendingVideoForAVChat:(id)a3;
- (BOOL)startPreviewWithError:(id *)a3;
- (BOOL)stopPreview;
- (IMAVConferenceInterface)init;
- (id)_avChatForConference:(id)a3;
- (id)_avChatForConference:(id)a3 callID:(int64_t)a4 errorString:(id)a5;
- (id)_conferenceForAVChat:(id)a3;
- (id)_controller;
- (id)_existingConferenceForAVChat:(id)a3;
- (id)_existingConferenceForAVChatGUID:(id)a3;
- (id)_faceTimeUUID;
- (id)_imAVChatParticipantForConference:(id)a3 callID:(int64_t)a4 errorString:(id)a5;
- (id)getNatIPFromICEData:(id)a3;
- (id)natTypeForAVChat:(id)a3;
- (int)_deviceRoleForAVChat:(id)a3;
- (int)avChat:(id)a3 endConferenceForUserID:(id)a4;
- (void)_avChatDealloc:(id)a3;
- (void)_cleanupAVInterface;
- (void)_conferenceEnded:(id)a3;
- (void)_configureAVConference:(id)a3 forChat:(id)a4;
- (void)_notifyAboutPotentialCallForChat:(id)a3;
- (void)_queueAVConferenceForCleanup:(id)a3;
- (void)avChat:(id)a3 prepareConnectionWithCallInfo:(id)a4;
- (void)avChat:(id)a3 setLocalLandscapeAspectRatio:(CGSize)a4 localPortraitAspectRatio:(CGSize)a5;
- (void)avChat:(id)a3 setSendingAudio:(BOOL)a4;
- (void)avChat:(id)a3 setSendingVideo:(BOOL)a4;
- (void)cancelConferenceForAVChat:(id)a3;
- (void)chatRelayedStatusChanged:(id)a3;
- (void)chatStateUpdated;
- (void)conference:(id)a3 cancelRelayRequest:(int64_t)a4 requestDict:(id)a5;
- (void)conference:(id)a3 didChangeLocalVariablesForCallID:(int64_t)a4;
- (void)conference:(id)a3 didStartSession:(BOOL)a4 withUserInfo:(id)a5;
- (void)conference:(id)a3 didStopWithCallID:(int64_t)a4 error:(id)a5 callMetadata:(id)a6;
- (void)conference:(id)a3 inititiateRelayRequest:(int64_t)a4 requestDict:(id)a5;
- (void)conference:(id)a3 localIPChange:(id)a4 withCallID:(int64_t)a5;
- (void)conference:(id)a3 receivedFirstRemoteFrameForCallID:(int64_t)a4;
- (void)conference:(id)a3 reinitializeCallForCallID:(unsigned int)a4;
- (void)conference:(id)a3 remoteAudioPaused:(BOOL)a4 callID:(int64_t)a5;
- (void)conference:(id)a3 remoteScreenAttributesChanged:(id)a4 callID:(int64_t)a5;
- (void)conference:(id)a3 remoteVideoAttributesChanged:(id)a4 callID:(int64_t)a5;
- (void)conference:(id)a3 remoteVideoPaused:(BOOL)a4 callID:(int64_t)a5;
- (void)conference:(id)a3 sendRelayUpdate:(int64_t)a4 updateDict:(id)a5;
- (void)conference:(id)a3 updateInputFrequencyLevel:(id)a4;
- (void)conference:(id)a3 updateOutputFrequencyLevel:(id)a4;
- (void)conference:(id)a3 videoQualityNotificationForCallID:(int64_t)a4 isDegraded:(BOOL)a5 isRemote:(BOOL)a6;
- (void)conference:(id)a3 withCallID:(int64_t)a4 didPauseAudio:(BOOL)a5 error:(id)a6;
- (void)conference:(id)a3 withCallID:(int64_t)a4 networkHint:(BOOL)a5;
- (void)conference:(id)a3 withCallID:(int64_t)a4 remoteMediaStalled:(BOOL)a5;
- (void)dealloc;
- (void)endAVConferenceWithChat:(id)a3 callID:(int64_t)a4;
- (void)handleRelayCancel:(id)a3 fromParticipant:(id)a4 callInfo:(id)a5;
- (void)handleRelayInitate:(id)a3 fromParticipant:(id)a4 callInfo:(id)a5;
- (void)handleRelayUpdate:(id)a3 fromParticipant:(id)a4 callInfo:(id)a5;
- (void)initAVInterface;
- (void)localVideoBackLayer;
- (void)localVideoLayer;
- (void)processRemoteIPChanged:(id)a3 fromParticipant:(id)a4;
- (void)serverDiedForConference:(id)a3;
- (void)setLocalVideoBackLayer:(void *)a3;
- (void)setLocalVideoLayer:(void *)a3;
- (void)setRemoteVideoPresentationSize:(CGSize)a3 forChat:(id)a4;
- (void)setRemoteVideoPresentationState:(unsigned int)a3 forChat:(id)a4;
- (void)updateAVChat:(id)a3 withCallMetadata:(id)a4 isFinalUpdate:(BOOL)a5;
@end

@implementation IMAVConferenceInterface

+ (BOOL)_useMultipleAVConference
{
  v5 = objc_msgSend_sharedInstance(IMAVController, a2, v2, v3, v4);
  if (objc_msgSend_blockMultipleIncomingInvitations(v5, v6, v7, v8, v9))
  {
    v14 = objc_msgSend_sharedInstance(IMAVController, v10, v11, v12, v13);
    if (objc_msgSend_blockIncomingInvitationsDuringCall(v14, v15, v16, v17, v18))
    {
      v23 = objc_msgSend_sharedInstance(IMAVController, v19, v20, v21, v22);
      v28 = objc_msgSend_blockOutgoingInvitationsDuringCall(v23, v24, v25, v26, v27) ^ 1;
    }

    else
    {
      LOBYTE(v28) = 1;
    }
  }

  else
  {
    LOBYTE(v28) = 1;
  }

  return v28;
}

- (IMAVConferenceInterface)init
{
  v104.receiver = self;
  v104.super_class = IMAVConferenceInterface;
  v2 = [(IMAVConferenceInterface *)&v104 init];

  if (v2)
  {
    qword_28134A5C0 = MEMORY[0x259C18990](@"AVConference", @"AVConference");
    qword_28134A478 = MEMORY[0x259C18990](@"VCCapabilities", @"AVConference");
    if (!qword_28134A520)
    {
      v7 = MEMORY[0x259C189A0]("GKSRelayParameter_ClientData", @"AVConference");
      if (v7)
      {
        v8 = *v7;
      }

      else
      {
        v8 = 0;
      }

      objc_storeStrong(&qword_28134A520, v8);
    }

    if (!qword_28134A4B8)
    {
      v9 = MEMORY[0x259C189A0]("GKSRelayParameter_SelfNatType", @"AVConference");
      if (v9)
      {
        v10 = *v9;
      }

      else
      {
        v10 = 0;
      }

      objc_storeStrong(&qword_28134A4B8, v10);
    }

    if (!qword_28134A4C8)
    {
      v11 = MEMORY[0x259C189A0]("GKSRelayParameter_SelfBlob", @"AVConference");
      if (v11)
      {
        v12 = *v11;
      }

      else
      {
        v12 = 0;
      }

      objc_storeStrong(&qword_28134A4C8, v12);
    }

    if (!qword_28134A500)
    {
      v13 = MEMORY[0x259C189A0]("GKSRelayParameter_PeerID", @"AVConference");
      if (v13)
      {
        v14 = *v13;
      }

      else
      {
        v14 = 0;
      }

      objc_storeStrong(&qword_28134A500, v14);
    }

    if (!qword_28134A4F8)
    {
      v15 = MEMORY[0x259C189A0]("GKSRelayParameter_PeerNatType", @"AVConference");
      if (v15)
      {
        v16 = *v15;
      }

      else
      {
        v16 = 0;
      }

      objc_storeStrong(&qword_28134A4F8, v16);
    }

    if (!qword_28134A510)
    {
      v17 = MEMORY[0x259C189A0]("GKSRelayParameter_PeerBlob", @"AVConference");
      if (v17)
      {
        v18 = *v17;
      }

      else
      {
        v18 = 0;
      }

      objc_storeStrong(&qword_28134A510, v18);
    }

    if (!qword_28134A480)
    {
      v19 = MEMORY[0x259C189A0]("GKSRelayType", @"AVConference");
      if (v19)
      {
        v20 = *v19;
      }

      else
      {
        v20 = 0;
      }

      objc_storeStrong(&qword_28134A480, v20);
    }

    if (!qword_28134A518)
    {
      v21 = MEMORY[0x259C189A0]("GKSRelayParameter_ConnectionID", @"AVConference");
      if (v21)
      {
        v22 = *v21;
      }

      else
      {
        v22 = 0;
      }

      objc_storeStrong(&qword_28134A518, v22);
    }

    if (!qword_28134A488)
    {
      v23 = MEMORY[0x259C189A0]("GKSRelayParameter_TransactionID", @"AVConference");
      if (v23)
      {
        v24 = *v23;
      }

      else
      {
        v24 = 0;
      }

      objc_storeStrong(&qword_28134A488, v24);
    }

    if (!qword_28134A490)
    {
      v25 = MEMORY[0x259C189A0]("GKSRelayParameter_Token", @"AVConference");
      if (v25)
      {
        v26 = *v25;
      }

      else
      {
        v26 = 0;
      }

      objc_storeStrong(&qword_28134A490, v26);
    }

    if (!qword_28134A4F0)
    {
      v27 = MEMORY[0x259C189A0]("GKSRelayParameter_PeerRelayIP", @"AVConference");
      if (v27)
      {
        v28 = *v27;
      }

      else
      {
        v28 = 0;
      }

      objc_storeStrong(&qword_28134A4F0, v28);
    }

    if (!qword_28134A4D8)
    {
      v29 = MEMORY[0x259C189A0]("GKSRelayParameter_PeerRelayPort", @"AVConference");
      if (v29)
      {
        v30 = *v29;
      }

      else
      {
        v30 = 0;
      }

      objc_storeStrong(&qword_28134A4D8, v30);
    }

    if (!qword_28134A4B0)
    {
      v31 = MEMORY[0x259C189A0]("GKSRelayParameter_SelfRelayIP", @"AVConference");
      if (v31)
      {
        v32 = *v31;
      }

      else
      {
        v32 = 0;
      }

      objc_storeStrong(&qword_28134A4B0, v32);
    }

    if (!qword_28134A498)
    {
      v33 = MEMORY[0x259C189A0]("GKSRelayParameter_SelfRelayPort", @"AVConference");
      if (v33)
      {
        v34 = *v33;
      }

      else
      {
        v34 = 0;
      }

      objc_storeStrong(&qword_28134A498, v34);
    }

    if (!qword_28134A4A8)
    {
      v35 = MEMORY[0x259C189A0]("GKSRelayParameter_SelfRelayNatIP", @"AVConference");
      if (v35)
      {
        v36 = *v35;
      }

      else
      {
        v36 = 0;
      }

      objc_storeStrong(&qword_28134A4A8, v36);
    }

    if (!qword_28134A4A0)
    {
      v37 = MEMORY[0x259C189A0]("GKSRelayParameter_SelfRelayNatPort", @"AVConference");
      if (v37)
      {
        v38 = *v37;
      }

      else
      {
        v38 = 0;
      }

      objc_storeStrong(&qword_28134A4A0, v38);
    }

    if (!qword_28134A4E8)
    {
      v39 = MEMORY[0x259C189A0]("GKSRelayParameter_PeerRelayNatIP", @"AVConference");
      if (v39)
      {
        v40 = *v39;
      }

      else
      {
        v40 = 0;
      }

      objc_storeStrong(&qword_28134A4E8, v40);
    }

    if (!qword_28134A4E0)
    {
      v41 = MEMORY[0x259C189A0]("GKSRelayParameter_PeerRelayNatPort", @"AVConference");
      if (v41)
      {
        v42 = *v41;
      }

      else
      {
        v42 = 0;
      }

      objc_storeStrong(&qword_28134A4E0, v42);
    }

    if (!qword_28134A4D0)
    {
      v43 = MEMORY[0x259C189A0]("GKSRelayParameter_RemotePrimaryId", @"AVConference");
      if (v43)
      {
        v44 = *v43;
      }

      else
      {
        v44 = 0;
      }

      objc_storeStrong(&qword_28134A4D0, v44);
    }

    if (!qword_28134A4C0)
    {
      v45 = MEMORY[0x259C189A0]("GKSRelayParameter_SelfExternalAddr", @"AVConference");
      if (v45)
      {
        v46 = *v45;
      }

      else
      {
        v46 = 0;
      }

      objc_storeStrong(&qword_28134A4C0, v46);
    }

    if (!qword_28134A508)
    {
      v47 = MEMORY[0x259C189A0]("GKSRelayParameter_PeerExternalAddr", @"AVConference");
      if (v47)
      {
        v48 = *v47;
      }

      else
      {
        v48 = 0;
      }

      objc_storeStrong(&qword_28134A508, v48);
    }

    if (!qword_28134A570)
    {
      v49 = MEMORY[0x259C189A0]("GKSDidStartParameter_ConnType", @"AVConference");
      if (v49)
      {
        v50 = *v49;
      }

      else
      {
        v50 = 0;
      }

      objc_storeStrong(&qword_28134A570, v50);
    }

    if (!qword_28134A568)
    {
      v51 = MEMORY[0x259C189A0]("GKSDidStartParameter_Error", @"AVConference");
      if (v51)
      {
        v52 = *v51;
      }

      else
      {
        v52 = 0;
      }

      objc_storeStrong(&qword_28134A568, v52);
    }

    if (!qword_28134A578)
    {
      v53 = MEMORY[0x259C189A0]("GKSDidStartParameter_CallID", @"AVConference");
      if (v53)
      {
        v54 = *v53;
      }

      else
      {
        v54 = 0;
      }

      objc_storeStrong(&qword_28134A578, v54);
    }

    if (!qword_28134A560)
    {
      v55 = MEMORY[0x259C189A0]("GKSDidStartParameter_localUseCell", @"AVConference");
      if (v55)
      {
        v56 = *v55;
      }

      else
      {
        v56 = 0;
      }

      objc_storeStrong(&qword_28134A560, v56);
    }

    if (!qword_28134A558)
    {
      v57 = MEMORY[0x259C189A0]("GKSDidStartParameter_remoteUseCell", @"AVConference");
      if (v57)
      {
        v58 = *v57;
      }

      else
      {
        v58 = 0;
      }

      objc_storeStrong(&qword_28134A558, v58);
    }

    if (!qword_28134A5B8)
    {
      v59 = MEMORY[0x259C189A0]("GKSCDXServerAddress", @"AVConference");
      if (v59)
      {
        v60 = *v59;
      }

      else
      {
        v60 = 0;
      }

      objc_storeStrong(&qword_28134A5B8, v60);
    }

    if (!qword_28134A5B0)
    {
      v61 = MEMORY[0x259C189A0]("GKSCommNATServerCohortAddress", @"AVConference");
      if (v61)
      {
        v62 = *v61;
      }

      else
      {
        v62 = 0;
      }

      objc_storeStrong(&qword_28134A5B0, v62);
    }

    if (!qword_28134A5A0)
    {
      v63 = MEMORY[0x259C189A0]("GKSCommNATServerMain0Address", @"AVConference");
      if (v63)
      {
        v64 = *v63;
      }

      else
      {
        v64 = 0;
      }

      objc_storeStrong(&qword_28134A5A0, v64);
    }

    if (!qword_28134A590)
    {
      v65 = MEMORY[0x259C189A0]("GKSCommNATServerMain1Address", @"AVConference");
      if (v65)
      {
        v66 = *v65;
      }

      else
      {
        v66 = 0;
      }

      objc_storeStrong(&qword_28134A590, v66);
    }

    if (!qword_28134A5A8)
    {
      v67 = MEMORY[0x259C189A0]("GKSCommNATServerCohortName", @"AVConference");
      if (v67)
      {
        v68 = *v67;
      }

      else
      {
        v68 = 0;
      }

      objc_storeStrong(&qword_28134A5A8, v68);
    }

    if (!qword_28134A598)
    {
      v69 = MEMORY[0x259C189A0]("GKSCommNATServerMain0Name", @"AVConference");
      if (v69)
      {
        v70 = *v69;
      }

      else
      {
        v70 = 0;
      }

      objc_storeStrong(&qword_28134A598, v70);
    }

    if (!qword_28134A588)
    {
      v71 = MEMORY[0x259C189A0]("GKSCommNATServerMain1Name", @"AVConference");
      if (v71)
      {
        v72 = *v71;
      }

      else
      {
        v72 = 0;
      }

      objc_storeStrong(&qword_28134A588, v72);
    }

    if (!qword_28134A528)
    {
      v73 = MEMORY[0x259C189A0]("GKSPreEmptiveRelayTimeout", @"AVConference");
      if (v73)
      {
        v74 = *v73;
      }

      else
      {
        v74 = 0;
      }

      objc_storeStrong(&qword_28134A528, v74);
    }

    if (!qword_28134A548)
    {
      v75 = MEMORY[0x259C189A0]("GKSMaxRelayBitrate", @"AVConference");
      if (v75)
      {
        v76 = *v75;
      }

      else
      {
        v76 = 0;
      }

      objc_storeStrong(&qword_28134A548, v76);
    }

    if (!qword_28134A550)
    {
      v77 = MEMORY[0x259C189A0]("GKSICETimeout", @"AVConference");
      if (v77)
      {
        v78 = *v77;
      }

      else
      {
        v78 = 0;
      }

      objc_storeStrong(&qword_28134A550, v78);
    }

    if (!qword_28134A540)
    {
      v79 = MEMORY[0x259C189A0]("GKSNATCheckTimeout", @"AVConference");
      if (v79)
      {
        v80 = *v79;
      }

      else
      {
        v80 = 0;
      }

      objc_storeStrong(&qword_28134A540, v80);
    }

    if (!qword_28134A580)
    {
      v81 = MEMORY[0x259C189A0]("GKSConnectionBlobMaxBytes", @"AVConference");
      if (v81)
      {
        v82 = *v81;
      }

      else
      {
        v82 = 0;
      }

      objc_storeStrong(&qword_28134A580, v82);
    }

    if (!qword_28134A530)
    {
      v83 = MEMORY[0x259C189A0]("GKSNoRemotePacketsTimeout", @"AVConference");
      if (v83)
      {
        v84 = *v83;
      }

      else
      {
        v84 = 0;
      }

      objc_storeStrong(&qword_28134A530, v84);
    }

    if (!qword_28134A538)
    {
      v85 = MEMORY[0x259C189A0]("GKSNetworkConditionsTimeout", @"AVConference");
      if (v85)
      {
        v86 = *v85;
      }

      else
      {
        v86 = 0;
      }

      objc_storeStrong(&qword_28134A538, v86);
    }

    v2->_duringInit = 1;
    objc_msgSend_initAVInterface(v2, v3, v4, v5, v6);
    v2->_duringInit = 0;
    v87 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    avConferencesLock = v2->_avConferencesLock;
    v2->_avConferencesLock = v87;

    v93 = objc_msgSend_sharedController(MEMORY[0x277D18D68], v89, v90, v91, v92);
    v98 = objc_msgSend_listener(v93, v94, v95, v96, v97);
    objc_msgSend_addHandler_(v98, v99, v2, v100, v101);
  }

  v102 = v2;

  return v102;
}

- (void)dealloc
{
  objc_msgSend_stopPreview(self, a2, v2, v3, v4);
  objc_msgSend_makeObjectsPerformSelector_withObject_(self->_avConferencesToCleanup, v6, sel_setDelegate_, 0, v7);
  objc_msgSend_lock(self->_avConferencesLock, v8, v9, v10, v11);
  v16 = objc_msgSend_allValues(self->_avConferences, v12, v13, v14, v15);
  objc_msgSend_makeObjectsPerformSelector_withObject_(v16, v17, sel_setDelegate_, 0, v18);
  objc_msgSend_unlock(self->_avConferencesLock, v19, v20, v21, v22);

  v23.receiver = self;
  v23.super_class = IMAVConferenceInterface;
  [(IMAVInterface *)&v23 dealloc];
}

- (id)_faceTimeUUID
{
  if (qword_27F6106F8 != -1)
  {
    sub_25477F97C();
  }

  v3 = qword_27F6106F0;

  return v3;
}

- (void)_configureAVConference:(id)a3 forChat:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v10 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v6, v7, v8, v9);
  v15 = objc_msgSend_nonWifiFaceTimeAvailable(v10, v11, v12, v13, v14);

  objc_msgSend_setRequiresWifi_(v5, v16, v15 ^ 1u, v17, v18);
  v19 = sub_254761764();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = @"YES";
    if (v15)
    {
      v20 = @"NO";
    }

    v25 = 138412290;
    v26 = v20;
    _os_log_impl(&dword_254743000, v19, OS_LOG_TYPE_DEFAULT, "Requires wifi: %@", &v25, 0xCu);
  }

  objc_msgSend_setDelegate_(v5, v21, self, v22, v23);
  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)_hasAVConferenceObjectsForChatsOtherThan:(id)a3
{
  avConferencesLock = self->_avConferencesLock;
  v5 = a3;
  objc_msgSend_lock(avConferencesLock, v6, v7, v8, v9);
  avConferences = self->_avConferences;
  v15 = objc_msgSend_GUID(v5, v11, v12, v13, v14);

  v19 = objc_msgSend_objectForKey_(avConferences, v16, v15, v17, v18);

  v24 = v19 && objc_msgSend_count(self->_avConferences, v20, v21, v22, v23) > 1 || objc_msgSend_count(self->_avConferences, v20, v21, v22, v23) != 0;
  objc_msgSend_unlock(self->_avConferencesLock, v20, v21, v22, v23);
  return v24;
}

- (id)_existingConferenceForAVChat:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v5, v6, v7, v8);
  v14 = objc_msgSend_faceTimeSupported(v9, v10, v11, v12, v13);

  v19 = 0;
  if (v4)
  {
    if (v14)
    {
      v19 = objc_msgSend_GUID(v4, v15, v16, v17, v18);

      if (v19)
      {
        objc_msgSend_lock(self->_avConferencesLock, v20, v21, v22, v23);
        avConferences = self->_avConferences;
        v29 = objc_msgSend_GUID(v4, v25, v26, v27, v28);
        v19 = objc_msgSend_objectForKey_(avConferences, v30, v29, v31, v32);

        objc_msgSend_unlock(self->_avConferencesLock, v33, v34, v35, v36);
      }
    }
  }

  return v19;
}

- (id)_existingConferenceForAVChatGUID:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v5, v6, v7, v8);
  v14 = objc_msgSend_faceTimeSupported(v9, v10, v11, v12, v13);

  if (v14)
  {
    objc_msgSend_lock(self->_avConferencesLock, v15, v16, v17, v18);
    v22 = objc_msgSend_objectForKey_(self->_avConferences, v19, v4, v20, v21);
    objc_msgSend_unlock(self->_avConferencesLock, v23, v24, v25, v26);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)_conferenceForAVChat:(id)a3
{
  v81 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v5, v6, v7, v8);
  v14 = objc_msgSend_faceTimeSupported(v9, v10, v11, v12, v13);

  v19 = 0;
  if (v4 && v14)
  {
    v20 = objc_msgSend_GUID(v4, v15, v16, v17, v18);

    if (v20)
    {
      objc_msgSend_lock(self->_avConferencesLock, v21, v22, v23, v24);
      avConferences = self->_avConferences;
      v30 = objc_msgSend_GUID(v4, v26, v27, v28, v29);
      v19 = objc_msgSend_objectForKey_(avConferences, v31, v30, v32, v33);

      objc_msgSend_unlock(self->_avConferencesLock, v34, v35, v36, v37);
      if (!v19)
      {
        v42 = objc_msgSend__faceTimeUUID(self, v38, v39, v40, v41);
        v43 = sub_254761764();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v78 = v42;
          _os_log_impl(&dword_254743000, v43, OS_LOG_TYPE_DEFAULT, "Initializing conference with UUID %@", buf, 0xCu);
        }

        v44 = [qword_28134A5C0 alloc];
        v49 = objc_msgSend__faceTimeUUID(self, v45, v46, v47, v48);
        v19 = objc_msgSend_initWithClientUUID_transportType_(v44, v50, v49, 0, v51);

        v52 = sub_254761764();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v78 = v19;
          v79 = 2112;
          v80 = v4;
          _os_log_impl(&dword_254743000, v52, OS_LOG_TYPE_DEFAULT, "Created AVConference Instance: %@ for chat: %@", buf, 0x16u);
        }

        if (v19)
        {
          objc_msgSend__configureAVConference_forChat_(self, v53, v19, v4, v54);
          objc_msgSend_lock(self->_avConferencesLock, v55, v56, v57, v58);
          v63 = self->_avConferences;
          if (!v63)
          {
            Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            v65 = self->_avConferences;
            self->_avConferences = Mutable;

            v63 = self->_avConferences;
          }

          v66 = objc_msgSend_GUID(v4, v59, v60, v61, v62);
          objc_msgSend_setObject_forKey_(v63, v67, v19, v66, v68);

          objc_msgSend_unlock(self->_avConferencesLock, v69, v70, v71, v72);
        }

        else
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_25476BCFC;
          block[3] = &unk_279783738;
          v76 = v4;
          dispatch_async(MEMORY[0x277D85CD0], block);
        }
      }
    }

    else
    {
      v19 = 0;
    }
  }

  v73 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_avChatForConference:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_msgSend_lock(self->_avConferencesLock, v5, v6, v7, v8);
  v46 = self;
  v47 = v4;
  v12 = objc_msgSend_allKeysForObject_(self->_avConferences, v9, v4, v10, v11);
  v50 = objc_msgSend__avChatArray(IMAVChat, v13, v14, v15, v16);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v12;
  v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v56, v61, 16);
  v18 = 0;
  if (v51)
  {
    v49 = *v57;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v57 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v56 + 1) + 8 * i);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v21 = v50;
        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v52, v60, 16);
        if (v23)
        {
          v28 = v23;
          v29 = *v53;
          do
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v53 != v29)
              {
                objc_enumerationMutation(v21);
              }

              v31 = *(*(&v52 + 1) + 8 * j);
              v32 = objc_msgSend_GUID(v31, v24, v25, v26, v27);
              isEqualToString = objc_msgSend_isEqualToString_(v32, v33, v20, v34, v35);

              if (isEqualToString)
              {
                v37 = v31;

                v18 = v37;
              }
            }

            v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v52, v60, 16);
          }

          while (v28);
        }
      }

      v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v38, &v56, v61, 16);
    }

    while (v51);
  }

  objc_msgSend_unlock(v46->_avConferencesLock, v39, v40, v41, v42);
  v43 = v18;

  v44 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)_imAVChatParticipantForConference:(id)a3 callID:(int64_t)a4 errorString:(id)a5
{
  v6 = objc_msgSend__avChatForConference_callID_errorString_(self, a2, a3, a4, a5);
  v10 = objc_msgSend_participantWithAVConferenceCallID_(v6, v7, a4, v8, v9);

  return v10;
}

- (id)_avChatForConference:(id)a3 callID:(int64_t)a4 errorString:(id)a5
{
  v85 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v16 = objc_msgSend__avChatForConference_(self, v9, a3, v10, v11);
  if (v16)
  {
    goto LABEL_27;
  }

  v17 = objc_msgSend__chatListLock(IMAVChat, v12, v13, v14, v15);
  objc_msgSend_lock(v17, v18, v19, v20, v21);

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v26 = objc_msgSend__chatList(IMAVChat, v22, v23, v24, v25, 0);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v74, v84, 16);
  if (v16)
  {
    v31 = *v75;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v75 != v31)
        {
          objc_enumerationMutation(v26);
        }

        v33 = *(*(&v74 + 1) + 8 * i);
        v34 = objc_msgSend_participantWithAVConferenceCallID_(v33, v28, a4, v29, v30);

        if (v34)
        {
          v16 = v33;
          goto LABEL_12;
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v28, &v74, v84, 16);
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v39 = objc_msgSend__chatListLock(IMAVChat, v35, v36, v37, v38);
  objc_msgSend_unlock(v39, v40, v41, v42, v43);

  if (a4)
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"alwaysFixCallIDs", @"com.apple.conference", 0);
    if (v16 || !AppBooleanValue)
    {
      goto LABEL_24;
    }

LABEL_17:
    v45 = sub_254761764();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v79 = v8;
      v80 = 1024;
      v81 = a4;
      _os_log_impl(&dword_254743000, v45, OS_LOG_TYPE_DEFAULT, "%@: Found no conference for CallID: %d  fixing this...", buf, 0x12u);
    }

    v50 = objc_msgSend__connectedChat(IMAVChat, v46, v47, v48, v49);

    if (v50)
    {
      v16 = v50;
    }

    else
    {
      v55 = objc_msgSend__activeChat(IMAVChat, v51, v52, v53, v54);
      if (v55)
      {
        v16 = v55;
      }

      else
      {
        v60 = objc_msgSend__avChatArray(IMAVChat, v56, v57, v58, v59);
        v16 = objc_msgSend_lastObject(v60, v61, v62, v63, v64);
      }
    }

    goto LABEL_24;
  }

  if (!v16)
  {
    goto LABEL_17;
  }

LABEL_24:
  v65 = sub_254761764();
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
  {
    v70 = objc_msgSend__bustedCallID(v16, v66, v67, v68, v69);
    *buf = 138412802;
    v79 = v16;
    v80 = 1024;
    v81 = v70;
    v82 = 1024;
    v83 = a4;
    _os_log_impl(&dword_254743000, v65, OS_LOG_TYPE_DEFAULT, "_avChatForConference Found chat: %@ (%d) for callID: %d", buf, 0x18u);
  }

LABEL_27:
  v71 = v16;

  v72 = *MEMORY[0x277D85DE8];

  return v71;
}

- (int)_deviceRoleForAVChat:(id)a3
{
  if (objc_msgSend_isRelayed(a3, a2, a3, v3, v4))
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (void)_cleanupAVInterface
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Cleanup AV Interfaces", buf, 2u);
  }

  self->_pendingCleanup = 0;
  objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x277D82BB8], v4, self, sel__cleanupAVInterface, 0);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = self->_avConferencesToCleanup;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v29, v35, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = sub_254761764();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v34 = v11;
          _os_log_impl(&dword_254743000, v12, OS_LOG_TYPE_DEFAULT, "Unsetting delegate for AVConference: %@", buf, 0xCu);
        }

        objc_msgSend_setDelegate_(v11, v13, 0, v14, v15);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v16, &v29, v35, 16);
    }

    while (v8);
  }

  v17 = sub_254761764();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    avConferencesToCleanup = self->_avConferencesToCleanup;
    *buf = 138412290;
    v34 = avConferencesToCleanup;
    _os_log_impl(&dword_254743000, v17, OS_LOG_TYPE_DEFAULT, "Releasing AVConferences: %@", buf, 0xCu);
  }

  objc_msgSend_removeAllObjects(self->_avConferencesToCleanup, v19, v20, v21, v22);
  if (!objc_msgSend_count(self->_avConferencesToCleanup, v23, v24, v25, v26))
  {
    v27 = self->_avConferencesToCleanup;
    self->_avConferencesToCleanup = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_queueAVConferenceForCleanup:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = objc_msgSend__useMultipleAVConference(IMAVConferenceInterface, v5, v6, v7, v8);
  if (v4 && v9)
  {
    v10 = sub_254761764();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v49 = 138412290;
      v50 = v4;
      _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "Queue AVConference for cleanup: %@", &v49, 0xCu);
    }

    avConferencesToCleanup = self->_avConferencesToCleanup;
    if (!avConferencesToCleanup)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v16 = self->_avConferencesToCleanup;
      self->_avConferencesToCleanup = v15;

      avConferencesToCleanup = self->_avConferencesToCleanup;
    }

    objc_msgSend_addObject_(avConferencesToCleanup, v11, v4, v12, v13);
    objc_msgSend_setDelegate_(v4, v17, 0, v18, v19);
    self->_pendingCleanup = 1;
    objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x277D82BB8], v20, self, sel__cleanupAVInterface, 0);
    objc_msgSend_performSelector_withObject_afterDelay_(self, v21, sel__cleanupAVInterface, 0, v22, 5.0);
    objc_msgSend_lock(self->_avConferencesLock, v23, v24, v25, v26);
    v30 = objc_msgSend_allKeysForObject_(self->_avConferences, v27, v4, v28, v29);
    if (objc_msgSend_count(v30, v31, v32, v33, v34))
    {
      v39 = sub_254761764();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v49 = 138412290;
        v50 = v4;
        _os_log_impl(&dword_254743000, v39, OS_LOG_TYPE_DEFAULT, "Removing AVConference from available conference sets: %@", &v49, 0xCu);
      }

      objc_msgSend_removeObjectsForKeys_(self->_avConferences, v40, v30, v41, v42);
    }

    if (!objc_msgSend_count(self->_avConferences, v35, v36, v37, v38))
    {
      avConferences = self->_avConferences;
      self->_avConferences = 0;
    }

    objc_msgSend_unlock(self->_avConferencesLock, v43, v44, v45, v46);
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (void)initAVInterface
{
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Init AV Interface", buf, 2u);
  }

  v21.receiver = self;
  v21.super_class = IMAVConferenceInterface;
  [(IMAVInterface *)&v21 initAVInterface];
  v8 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v4, v5, v6, v7);
  v13 = objc_msgSend_faceTimeSupported(v8, v9, v10, v11, v12);

  if (v13)
  {
    if (self->_duringInit)
    {
      return;
    }

    v18 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v14, v15, v16, v17);
    objc_msgSend___mainThreadPostNotificationName_object_(v18, v19, @"__kIMAVInterfaceReadyNotification", 0, v20);
  }

  else
  {
    v18 = sub_254761764();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v18, OS_LOG_TYPE_DEFAULT, "Unsupported on this device, not initing", buf, 2u);
    }
  }
}

- (BOOL)isAVInterfaceReady
{
  v5 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], a2, v2, v3, v4);
  objc_msgSend_faceTimeSupported(v5, v6, v7, v8, v9);

  return 1;
}

- (void)_conferenceEnded:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sub_254761764();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "chat: %@", buf, 0xCu);
  }

  objc_msgSend_avChat_endConferenceForUserID_(self, v6, v4, 0, v7);
  v16.receiver = self;
  v16.super_class = IMAVConferenceInterface;
  [(IMAVInterface *)&v16 _conferenceEnded:v4];
  v11 = objc_msgSend__existingConferenceForAVChat_(self, v8, v4, v9, v10);
  objc_msgSend__queueAVConferenceForCleanup_(self, v12, v11, v13, v14);

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)isMuteForAVChat:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (!v4)
  {
    v24 = sub_254761764();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&dword_254743000, v24, OS_LOG_TYPE_DEFAULT, "No avChat", v26, 2u);
    }

    goto LABEL_9;
  }

  if (objc_msgSend__bustedCallID(v4, v5, v6, v7, v8) < 1)
  {
LABEL_9:
    isMicrophoneMuted = 0;
    goto LABEL_10;
  }

  if ((objc_msgSend_isAVInterfaceReady(self, v10, v11, v12, v13) & 1) == 0)
  {
    objc_msgSend_initAVInterface(self, v14, v15, v16, v17);
  }

  v18 = objc_msgSend__existingConferenceForAVChat_(self, v14, v9, v16, v17);
  isMicrophoneMuted = objc_msgSend_isMicrophoneMuted(v18, v19, v20, v21, v22);

LABEL_10:
  return isMicrophoneMuted;
}

- (BOOL)isSendingAudioForAVChat:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    if (objc_msgSend__bustedCallID(v4, v5, v6, v7, v8) < 1)
    {
      v34 = 1;
      goto LABEL_17;
    }

    if ((objc_msgSend_isAVInterfaceReady(self, v10, v11, v12, v13) & 1) == 0)
    {
      objc_msgSend_initAVInterface(self, v14, v15, v16, v17);
    }

    v18 = objc_msgSend__existingConferenceForAVChat_(self, v14, v9, v16, v17);
    v38 = 0;
    v23 = objc_msgSend__bustedCallID(v9, v19, v20, v21, v22);
    v37 = 0;
    v25 = objc_msgSend_getIsAudioPaused_callID_error_(v18, v24, &v38, v23, &v37);
    v26 = v37;
    if ((v25 & 1) == 0)
    {
      v27 = sub_254761764();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v40 = v26;
        _os_log_impl(&dword_254743000, v27, OS_LOG_TYPE_DEFAULT, "[WARN] Failed to get audio sending state: %@", buf, 0xCu);
      }

      v38 = 0;
    }

    v28 = sub_254761764();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v33 = objc_msgSend__bustedCallID(v9, v29, v30, v31, v32);
      *buf = 138412802;
      v40 = v9;
      v41 = 1024;
      v42 = v33;
      v43 = 1024;
      v44 = v38 ^ 1;
      _os_log_impl(&dword_254743000, v28, OS_LOG_TYPE_DEFAULT, "isSendingAudioFor: %@   callID: %d returning %d", buf, 0x18u);
    }

    v34 = v38 ^ 1;
  }

  else
  {
    v18 = sub_254761764();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v18, OS_LOG_TYPE_DEFAULT, "No avChat", buf, 2u);
    }

    v34 = 0;
  }

LABEL_17:
  v35 = *MEMORY[0x277D85DE8];
  return v34 & 1;
}

- (void)avChat:(id)a3 setSendingAudio:(BOOL)a4
{
  v4 = a4;
  v52 = *MEMORY[0x277D85DE8];
  v10 = a3;
  if (v10)
  {
    if ((objc_msgSend_isAVInterfaceReady(self, v6, v7, v8, v9) & 1) == 0)
    {
      objc_msgSend_initAVInterface(self, v11, v12, v13, v14);
    }

    v15 = sub_254761764();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (v4)
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      *buf = 138412802;
      v47 = v10;
      v48 = 2112;
      v49 = v20;
      v50 = 1024;
      v51 = objc_msgSend__bustedCallID(v10, v16, v17, v18, v19);
      _os_log_impl(&dword_254743000, v15, OS_LOG_TYPE_DEFAULT, "Setting %@ to sending audio: %@  callID: %d", buf, 0x1Cu);
    }

    if (objc_msgSend_state(v10, v21, v22, v23, v24) >= 5)
    {
      objc_msgSend__conferenceForAVChat_(self, v25, 0, v26, v27);
    }

    else
    {
      objc_msgSend__conferenceForAVChat_(self, v25, v10, v26, v27);
    }
    v28 = ;
    v33 = objc_msgSend__bustedCallID(v10, v29, v30, v31, v32);
    v45 = 0;
    v35 = objc_msgSend_setPauseAudio_callID_error_(v28, v34, !v4, v33, &v45);
    v36 = v45;
    if ((v35 & 1) == 0)
    {
      v37 = sub_254761764();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v42 = objc_msgSend__bustedCallID(v10, v38, v39, v40, v41);
        *buf = 67109120;
        LODWORD(v47) = v42;
        _os_log_impl(&dword_254743000, v37, OS_LOG_TYPE_DEFAULT, "[WARN] Could not pause video for callID: %d", buf, 8u);
      }
    }

    if (v36)
    {
      v43 = sub_254761764();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v47 = v36;
        _os_log_impl(&dword_254743000, v43, OS_LOG_TYPE_DEFAULT, "[WARN] Error pausing video: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v28 = sub_254761764();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v28, OS_LOG_TYPE_DEFAULT, "No avChat", buf, 2u);
    }
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSendingVideoForAVChat:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = v4;
  if (!v4)
  {
    v30 = sub_254761764();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v30, OS_LOG_TYPE_DEFAULT, "No avChat", buf, 2u);
    }

    v39 = 0;
    goto LABEL_19;
  }

  if (objc_msgSend__bustedCallID(v4, v5, v6, v7, v8) < 1)
  {
    v39 = 1;
  }

  else
  {
    if (objc_msgSend_isVideo(v9, v10, v11, v12, v13))
    {
      if ((objc_msgSend_isAVInterfaceReady(self, v14, v15, v16, v17) & 1) == 0)
      {
        objc_msgSend_initAVInterface(self, v18, v19, v20, v21);
      }

      v22 = sub_254761764();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v46 = v9;
        v47 = 1024;
        v48 = objc_msgSend__bustedCallID(v9, v23, v24, v25, v26);
        _os_log_impl(&dword_254743000, v22, OS_LOG_TYPE_DEFAULT, "isSendingVideoFor: %@   callID: %d", buf, 0x12u);
      }

      v30 = objc_msgSend__existingConferenceForAVChat_(self, v27, v9, v28, v29);
      v44 = 0;
      v35 = objc_msgSend__bustedCallID(v9, v31, v32, v33, v34);
      v43 = 0;
      v37 = objc_msgSend_getIsVideoPaused_callID_error_(v30, v36, &v44, v35, &v43);
      v38 = v43;
      if (v37)
      {
        v39 = v44 ^ 1;
      }

      else
      {
        v40 = sub_254761764();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v46 = v38;
          _os_log_impl(&dword_254743000, v40, OS_LOG_TYPE_DEFAULT, "[WARN] Failed to get video sending state: %@", buf, 0xCu);
        }

        v39 = 1;
      }

LABEL_19:
      goto LABEL_20;
    }

    v39 = 0;
  }

LABEL_20:

  v41 = *MEMORY[0x277D85DE8];
  return v39 & 1;
}

- (void)avChat:(id)a3 setSendingVideo:(BOOL)a4
{
  v4 = a4;
  v60 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v11 = v6;
  if (!v6)
  {
    v33 = sub_254761764();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v54) = 0;
      _os_log_impl(&dword_254743000, v33, OS_LOG_TYPE_DEFAULT, "No avChat", &v54, 2u);
    }

    goto LABEL_23;
  }

  if (objc_msgSend_isVideo(v6, v7, v8, v9, v10))
  {
    if ((objc_msgSend_isAVInterfaceReady(self, v12, v13, v14, v15) & 1) == 0)
    {
      objc_msgSend_initAVInterface(self, v16, v17, v18, v19);
    }

    v20 = sub_254761764();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      if (v4)
      {
        v25 = @"YES";
      }

      else
      {
        v25 = @"NO";
      }

      v54 = 138412802;
      v55 = v11;
      v56 = 2112;
      v57 = v25;
      v58 = 1024;
      v59 = objc_msgSend__bustedCallID(v11, v21, v22, v23, v24);
      _os_log_impl(&dword_254743000, v20, OS_LOG_TYPE_DEFAULT, "Setting %@ to sending video: %@  callID: %d", &v54, 0x1Cu);
    }

    if (objc_msgSend_state(v11, v26, v27, v28, v29) >= 5)
    {
      objc_msgSend__conferenceForAVChat_(self, v30, 0, v31, v32);
    }

    else
    {
      objc_msgSend__conferenceForAVChat_(self, v30, v11, v31, v32);
    }
    v33 = ;
    if (objc_msgSend_state(v11, v34, v35, v36, v37) <= 3)
    {
      if (v4)
      {
        v42 = objc_msgSend_isSendingVideoExpected(self, v38, v39, v40, v41);

        if (v42)
        {
          objc_msgSend_setSendingVideoExpected_(self, v38, 0, v40, v41);
        }
      }

      else
      {
        v43 = sub_254761764();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v54 = 67109120;
          LODWORD(v55) = 0;
          _os_log_impl(&dword_254743000, v43, OS_LOG_TYPE_DEFAULT, "Attempted to pause AVConference's video before being connected, setting sendingVideoExpected to %d", &v54, 8u);
        }

        v47 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v44, 0, v45, v46);
        objc_msgSend_setSendingVideoExpected_(self, v48, v47, v49, v50);
      }
    }

    v51 = objc_msgSend__bustedCallID(v11, v38, v39, v40, v41);
    objc_msgSend_conference_callID_setPauseVideo_(self, v52, v33, v51, !v4);
LABEL_23:
  }

  v53 = *MEMORY[0x277D85DE8];
}

- (BOOL)startPreviewWithError:(id *)a3
{
  v6 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], a2, a3, v3, v4);
  v11 = objc_msgSend_faceTimeSupported(v6, v7, v8, v9, v10);

  if (v11)
  {
    if ((objc_msgSend_isAVInterfaceReady(self, v12, v13, v14, v15) & 1) == 0)
    {
      objc_msgSend_initAVInterface(self, v16, v17, v18, v19);
    }

    v20 = objc_msgSend_sharedInstance(IMAVLocalPreviewClient, v16, v17, v18, v19);
    objc_msgSend_startPreview(v20, v21, v22, v23, v24);
  }

  return v11;
}

- (BOOL)stopPreview
{
  v5 = objc_msgSend_sharedInstance(IMAVLocalPreviewClient, a2, v2, v3, v4);
  objc_msgSend_stopPreview(v5, v6, v7, v8, v9);

  return 1;
}

- (void)endAVConferenceWithChat:(id)a3 callID:(int64_t)a4
{
  v7 = objc_msgSend_GUID(a3, a2, a3, a4, v4);
  v14 = objc_msgSend__existingConferenceForAVChatGUID_(self, v8, v7, v9, v10);

  objc_msgSend_stopCallID_(v14, v11, a4, v12, v13);
}

- (void)_avChatDealloc:(id)a3
{
  v80 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    v10 = objc_msgSend__conferenceQueue(v4, v5, v6, v7, v8);

    if (v10)
    {
      v11 = sub_254761764();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_msgSend_GUID(v9, v12, v13, v14, v15);
        *buf = 138412546;
        v77 = v16;
        v78 = 1024;
        v79 = objc_msgSend__bustedCallID(v9, v17, v18, v19, v20);
        _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "DEALLOC AVChat with guid: %@  callID: %d", buf, 0x12u);
      }

      v21 = sub_254761764();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v77 = v9;
        _os_log_impl(&dword_254743000, v21, OS_LOG_TYPE_DEFAULT, "chat: %@", buf, 0xCu);
      }

      v26 = objc_msgSend_GUID(v9, v22, v23, v24, v25);
      v30 = objc_msgSend__existingConferenceForAVChatGUID_(self, v27, v26, v28, v29);

      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v65 = v9;
      v35 = objc_msgSend_remoteParticipants(v9, v31, v32, v33, v34);
      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v70, v75, 16);
      if (v37)
      {
        v42 = v37;
        v43 = *v71;
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v71 != v43)
            {
              objc_enumerationMutation(v35);
            }

            v45 = *(*(&v70 + 1) + 8 * i);
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            v46 = objc_msgSend__participantsCallInfo(v45, v38, v39, v40, v41);
            v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, &v66, v74, 16);
            if (v48)
            {
              v52 = v48;
              v53 = *v67;
              do
              {
                for (j = 0; j != v52; ++j)
                {
                  if (*v67 != v53)
                  {
                    objc_enumerationMutation(v46);
                  }

                  v55 = *(*(&v66 + 1) + 8 * j);
                  objc_msgSend_setState_(v55, v49, 4, v50, v51);
                  v60 = objc_msgSend_callID(v55, v56, v57, v58, v59);
                  objc_msgSend_stopCallID_(v30, v61, v60, v62, v63);
                }

                v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v49, &v66, v74, 16);
              }

              while (v52);
            }
          }

          v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v38, &v70, v75, 16);
        }

        while (v42);
      }

      v9 = v65;
    }
  }

  v64 = *MEMORY[0x277D85DE8];
}

- (int)avChat:(id)a3 endConferenceForUserID:(id)a4
{
  v103 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v11 = a4;
  if (!v6)
  {
    goto LABEL_25;
  }

  v12 = objc_msgSend_sharedInstance(IMAVController, v7, v8, v9, v10);
  if (!objc_msgSend__shouldRunConferences(v12, v13, v14, v15, v16))
  {
    v21 = objc_msgSend_sharedInstance(IMAVController, v17, v18, v19, v20);
    shouldRunACConferences = objc_msgSend__shouldRunACConferences(v21, v22, v23, v24, v25);

    if (shouldRunACConferences)
    {
      goto LABEL_5;
    }

LABEL_25:
    v82 = 0;
    goto LABEL_28;
  }

LABEL_5:
  v27 = sub_254761764();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v98 = v6;
    v99 = 2112;
    v100 = v11;
    _os_log_impl(&dword_254743000, v27, OS_LOG_TYPE_DEFAULT, "chat: %@  userID: %@", buf, 0x16u);
  }

  v31 = objc_msgSend__existingConferenceForAVChat_(self, v28, v6, v29, v30);
  if (v31)
  {
    v85 = v11;
    v32 = sub_254761764();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v37 = objc_msgSend_otherIMHandle(v6, v33, v34, v35, v36);
      v42 = objc_msgSend_ID(v37, v38, v39, v40, v41);
      v47 = objc_msgSend__bustedCallID(v6, v43, v44, v45, v46);
      *buf = 138412802;
      v98 = v42;
      v99 = 2112;
      v100 = v31;
      v101 = 1024;
      v102 = v47;
      _os_log_impl(&dword_254743000, v32, OS_LOG_TYPE_DEFAULT, "Stopping AVConference with: %@ (%@)  callID: %d", buf, 0x1Cu);
    }

    objc_msgSend_updateAVChat_withCallMetadata_isFinalUpdate_(self, v48, v6, 0, 1);
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v86 = v6;
    v53 = objc_msgSend_remoteParticipants(v6, v49, v50, v51, v52);
    v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v54, &v91, v96, 16);
    if (v55)
    {
      v60 = v55;
      v61 = *v92;
      do
      {
        for (i = 0; i != v60; ++i)
        {
          if (*v92 != v61)
          {
            objc_enumerationMutation(v53);
          }

          v63 = *(*(&v91 + 1) + 8 * i);
          v87 = 0u;
          v88 = 0u;
          v89 = 0u;
          v90 = 0u;
          v64 = objc_msgSend__participantsCallInfo(v63, v56, v57, v58, v59, v85);
          v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v65, &v87, v95, 16);
          if (v66)
          {
            v70 = v66;
            v71 = *v88;
            do
            {
              for (j = 0; j != v70; ++j)
              {
                if (*v88 != v71)
                {
                  objc_enumerationMutation(v64);
                }

                v73 = *(*(&v87 + 1) + 8 * j);
                objc_msgSend_setState_(v73, v67, 4, v68, v69);
                v78 = objc_msgSend_callID(v73, v74, v75, v76, v77);
                objc_msgSend_stopCallID_(v31, v79, v78, v80, v81);
              }

              v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v67, &v87, v95, 16);
            }

            while (v70);
          }
        }

        v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v56, &v91, v96, 16);
      }

      while (v60);
    }

    v82 = 1;
    v11 = v85;
    v6 = v86;
  }

  else
  {
    v82 = 0;
  }

LABEL_28:
  v83 = *MEMORY[0x277D85DE8];
  return v82;
}

- (void)cancelConferenceForAVChat:(id)a3
{
  v97 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sub_254761764();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v92 = v4;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "chat: %@", buf, 0xCu);
  }

  if (v4)
  {
    v10 = objc_msgSend_sharedInstance(IMAVController, v6, v7, v8, v9);
    if (objc_msgSend__shouldRunConferences(v10, v11, v12, v13, v14))
    {

LABEL_7:
      v28 = objc_msgSend__existingConferenceForAVChat_(self, v19, v4, v20, v21);
      v29 = sub_254761764();
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
      if (v28)
      {
        if (v30)
        {
          v35 = objc_msgSend_otherIMHandle(v4, v31, v32, v33, v34);
          v40 = objc_msgSend_ID(v35, v36, v37, v38, v39);
          v45 = objc_msgSend__bustedCallID(v4, v41, v42, v43, v44);
          *buf = 138412802;
          v92 = v40;
          v93 = 2112;
          v94 = v28;
          v95 = 1024;
          v96 = v45;
          _os_log_impl(&dword_254743000, v29, OS_LOG_TYPE_DEFAULT, "Canceling AVConference with: %@ (%@)  callID: %d", buf, 0x1Cu);
        }

        objc_msgSend_updateAVChat_withCallMetadata_isFinalUpdate_(self, v46, v4, 0, 1);
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v29 = objc_msgSend_remoteParticipants(v4, v47, v48, v49, v50);
        v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v51, &v85, v90, 16);
        if (v52)
        {
          v57 = v52;
          v80 = v4;
          v58 = *v86;
          do
          {
            for (i = 0; i != v57; ++i)
            {
              if (*v86 != v58)
              {
                objc_enumerationMutation(v29);
              }

              v60 = *(*(&v85 + 1) + 8 * i);
              v81 = 0u;
              v82 = 0u;
              v83 = 0u;
              v84 = 0u;
              v61 = objc_msgSend__participantsCallInfo(v60, v53, v54, v55, v56);
              v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v62, &v81, v89, 16);
              if (v63)
              {
                v67 = v63;
                v68 = *v82;
                do
                {
                  for (j = 0; j != v67; ++j)
                  {
                    if (*v82 != v68)
                    {
                      objc_enumerationMutation(v61);
                    }

                    v70 = *(*(&v81 + 1) + 8 * j);
                    objc_msgSend_setState_(v70, v64, 4, v65, v66);
                    v75 = objc_msgSend_callID(v70, v71, v72, v73, v74);
                    objc_msgSend_cancelCallID_(v28, v76, v75, v77, v78);
                  }

                  v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v64, &v81, v89, 16);
                }

                while (v67);
              }
            }

            v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v53, &v85, v90, 16);
          }

          while (v57);
          v4 = v80;
        }
      }

      else if (v30)
      {
        *buf = 138412290;
        v92 = v4;
        _os_log_impl(&dword_254743000, v29, OS_LOG_TYPE_DEFAULT, "Not conference found to cancel for chat: %@", buf, 0xCu);
      }

      goto LABEL_30;
    }

    v22 = objc_msgSend_sharedInstance(IMAVController, v15, v16, v17, v18);
    shouldRunACConferences = objc_msgSend__shouldRunACConferences(v22, v23, v24, v25, v26);

    if (shouldRunACConferences)
    {
      goto LABEL_7;
    }
  }

  v28 = sub_254761764();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254743000, v28, OS_LOG_TYPE_DEFAULT, "Not canceling conference for chat because chat is nil or this process doesn't run conferences", buf, 2u);
  }

LABEL_30:

  v79 = *MEMORY[0x277D85DE8];
}

- (void)_notifyAboutPotentialCallForChat:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = IMAVConferenceInterface;
  [(IMAVInterface *)&v15 _notifyAboutPotentialCallForChat:v4];
  if (v4)
  {
    v8 = objc_msgSend__conferenceForAVChat_(self, v5, v4, v6, v7);
    v9 = sub_254761764();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, "Warming up conference %@", buf, 0xCu);
    }

    objc_msgSend_warmupForCall(v8, v10, v11, v12, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)getNatIPFromICEData:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = sub_254761764();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = v3;
    _os_log_impl(&dword_254743000, v4, OS_LOG_TYPE_DEFAULT, "Data: %@", &v23, 0xCu);
  }

  v9 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v5, v6, v7, v8);
  v14 = objc_msgSend_faceTimeSupported(v9, v10, v11, v12, v13);

  v18 = 0;
  if (v3 && v14)
  {
    v18 = objc_msgSend_externalAddressForSelfConnectionBlob_(qword_28134A5C0, v15, v3, v16, v17);
    v19 = sub_254761764();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = v18;
      _os_log_impl(&dword_254743000, v19, OS_LOG_TYPE_DEFAULT, "returned result: %@", &v23, 0xCu);
    }

    if (!v18)
    {
      v20 = sub_254761764();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_254743000, v20, OS_LOG_TYPE_DEFAULT, "[WARN] No nat-ip returned for data blob", &v23, 2u);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)natTypeForAVChat:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (v7)
  {
    v12 = objc_msgSend__existingConferenceForAVChat_(self, v4, v7, v5, v6);
    if (v12)
    {
      v13 = objc_msgSend__timings(v7, v8, v9, v10, v11);
      objc_msgSend_startTimingForKey_(v13, v14, @"connection-data-nat-type-time", v15, v16);

      v21 = objc_msgSend_natType(v12, v17, v18, v19, v20);
      v26 = objc_msgSend__timings(v7, v22, v23, v24, v25);
      objc_msgSend_stopTimingForKey_(v26, v27, @"connection-data-nat-type-time", v28, v29);

      v30 = sub_254761764();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v42 = 67109120;
        v43 = v21;
        _os_log_impl(&dword_254743000, v30, OS_LOG_TYPE_DEFAULT, "natType: %u", &v42, 8u);
      }

      if (CFPreferencesGetAppBooleanValue(@"UseCustomNatType", @"com.apple.conference", 0))
      {
        v21 = IMGetDomainIntForKey();
        v34 = sub_254761764();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v42 = 67109120;
          v43 = v21;
          _os_log_impl(&dword_254743000, v34, OS_LOG_TYPE_DEFAULT, "overriding natType: %u", &v42, 8u);
        }
      }

      v35 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v31, v21, v32, v33);
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v36 = sub_254761764();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v42) = 0;
      _os_log_impl(&dword_254743000, v36, OS_LOG_TYPE_DEFAULT, "No avChat", &v42, 2u);
    }

    v35 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v37, 0, v38, v39);
  }

  v40 = *MEMORY[0x277D85DE8];

  return v35;
}

- (void)avChat:(id)a3 prepareConnectionWithCallInfo:(id)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = sub_254761764();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v57 = v6;
    v58 = 2112;
    v59 = v7;
    _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "avChat: %@  callInfo: %@", buf, 0x16u);
  }

  if (v6)
  {
    v13 = objc_msgSend_sharedInstance(IMAVController, v9, v10, v11, v12);
    if (objc_msgSend__shouldRunConferences(v13, v14, v15, v16, v17))
    {

LABEL_9:
      v26 = objc_msgSend_otherIMHandle(v6, v22, v23, v24, v25);
      v37 = objc_msgSend_participantMatchingIMHandle_(v6, v34, v26, v35, v36);
      v41 = objc_msgSend__conferenceForAVChat_(self, v38, v6, v39, v40);
      v46 = objc_msgSend__conferenceQueue(v6, v42, v43, v44, v45);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_25476E930;
      block[3] = &unk_2797837B0;
      v51 = v6;
      v52 = self;
      v53 = v7;
      v54 = v41;
      v55 = v37;
      v47 = v37;
      v48 = v41;
      dispatch_async(v46, block);

      goto LABEL_13;
    }

    v28 = objc_msgSend_sharedInstance(IMAVController, v18, v19, v20, v21);
    shouldRunACConferences = objc_msgSend__shouldRunACConferences(v28, v29, v30, v31, v32);

    if (shouldRunACConferences)
    {
      goto LABEL_9;
    }

    v26 = sub_254761764();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v27 = "Returning because we are not the VC host";
LABEL_12:
    _os_log_impl(&dword_254743000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 2u);
    goto LABEL_13;
  }

  v26 = sub_254761764();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v27 = "No avChat";
    goto LABEL_12;
  }

LABEL_13:

  v49 = *MEMORY[0x277D85DE8];
}

- (BOOL)avChat:(id)a3 generateCallInfoForID:(id)a4 service:(id)a5 usingRelay:(BOOL)a6 callInfo:(id)a7
{
  v78 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v18 = a7;
  if (v11 && objc_msgSend_state(v11, v14, v15, v16, v17) != 5)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v75 = sub_25476FD7C;
    v76 = sub_25476FD8C;
    v77 = 0;
    v72[0] = 0;
    v72[1] = v72;
    v72[2] = 0x3032000000;
    v72[3] = sub_25476FD7C;
    v72[4] = sub_25476FD8C;
    v73 = 0;
    v24 = objc_msgSend__conferenceForAVChat_(self, v19, v11, v20, v21);
    v29 = objc_msgSend__timings(v11, v25, v26, v27, v28);
    objc_msgSend_stopTimingForKey_(v29, v30, @"time-to-query-for-connection-data-gathering", v31, v32);

    v37 = objc_msgSend__timings(v11, v33, v34, v35, v36);
    objc_msgSend_startTimingForKey_(v37, v38, @"full-connection-data-gather", v39, v40);

    v45 = objc_msgSend__conferenceQueue(v11, v41, v42, v43, v44);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_25476FD94;
    block[3] = &unk_279783800;
    v46 = v11;
    v65 = v46;
    v66 = self;
    v47 = v24;
    v67 = v47;
    v48 = v18;
    v68 = v48;
    v69 = v12;
    v70 = buf;
    v71 = v72;
    dispatch_sync(v45, block);

    v53 = objc_msgSend__timings(v46, v49, v50, v51, v52);
    objc_msgSend_stopTimingForKey_(v53, v54, @"full-connection-data-gather", v55, v56);

    v61 = objc_msgSend_localICEData(v48, v57, v58, v59, v60);
    v23 = v61 != 0;

    _Block_object_dispose(v72, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v22 = sub_254761764();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v11;
      _os_log_impl(&dword_254743000, v22, OS_LOG_TYPE_DEFAULT, "Tried to get connection data for: %@  in a dead call: %@   => returning nil", buf, 0x16u);
    }

    v23 = 0;
  }

  v62 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)conference:(id)a3 didStartSession:(BOOL)a4 withUserInfo:(id)a5
{
  v6 = a4;
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = sub_254761764();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (v6)
    {
      v11 = @"YES";
    }

    *buf = 138412290;
    v29 = v11;
    _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "Informed that conference did start: %@", buf, 0xCu);
  }

  v16 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v12, v13, v14, v15);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_254770A54;
  v23[3] = &unk_279783828;
  v27 = v6;
  v24 = v8;
  v25 = v9;
  v26 = self;
  v17 = v9;
  v18 = v8;
  objc_msgSend___im_performBlock_(v16, v19, v23, v20, v21);

  v22 = *MEMORY[0x277D85DE8];
}

- (void)conference:(id)a3 didStopWithCallID:(int64_t)a4 error:(id)a5 callMetadata:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = sub_254761764();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v33 = a4;
    _os_log_impl(&dword_254743000, v13, OS_LOG_TYPE_DEFAULT, "Informed that conference did stop with callID: %ld", buf, 0xCu);
  }

  v18 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v14, v15, v16, v17);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_2547711D8;
  v26[3] = &unk_279783850;
  v30 = self;
  v31 = a4;
  v27 = v10;
  v28 = v11;
  v29 = v12;
  v19 = v12;
  v20 = v11;
  v21 = v10;
  objc_msgSend___im_performBlock_(v18, v22, v26, v23, v24);

  v25 = *MEMORY[0x277D85DE8];
}

- (void)conference:(id)a3 updateInputFrequencyLevel:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v8, v9, v10, v11);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2547714D0;
  v18[3] = &unk_279783760;
  v18[4] = self;
  v19 = v6;
  v20 = v7;
  v13 = v7;
  v14 = v6;
  objc_msgSend___im_performBlock_(v12, v15, v18, v16, v17);
}

- (void)conference:(id)a3 updateOutputFrequencyLevel:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v8, v9, v10, v11);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_254771620;
  v18[3] = &unk_279783760;
  v18[4] = self;
  v19 = v6;
  v20 = v7;
  v13 = v7;
  v14 = v6;
  objc_msgSend___im_performBlock_(v12, v15, v18, v16, v17);
}

- (void)conference:(id)a3 receivedFirstRemoteFrameForCallID:(int64_t)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = sub_254761764();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v23 = a4;
    _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "Informed about first remote frame for call ID: %d", buf, 8u);
  }

  v12 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v8, v9, v10, v11);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2547717D0;
  v18[3] = &unk_279783878;
  v20 = self;
  v21 = a4;
  v19 = v6;
  v13 = v6;
  objc_msgSend___im_performBlock_(v12, v14, v18, v15, v16);

  v17 = *MEMORY[0x277D85DE8];
}

+ (void)_postParticipantMediaChangeNotification:(id)a3 cameraChanged:(BOOL)a4 orientationChanged:(BOOL)a5 aspectChanged:(BOOL)a6 contentRectChanged:(BOOL)a7 cameraWillSwitch:(BOOL)a8 camera:(unsigned int)a9 orentation:(unsigned int)a10 aspect:(CGSize)a11 contentRect:(CGRect)a12
{
  height = a12.size.height;
  width = a12.size.width;
  y = a12.origin.y;
  x = a12.origin.x;
  v16 = a11.height;
  v17 = a11.width;
  v23 = a3;
  v28 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v24, v25, v26, v27);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_254771B68;
  v33[3] = &unk_2797838A0;
  v43 = a4;
  v44 = a5;
  v45 = a6;
  v46 = a8;
  v47 = a7;
  v35 = x;
  v36 = y;
  v37 = width;
  v38 = height;
  v41 = a9;
  v42 = a10;
  v39 = v17;
  v40 = v16;
  v34 = v23;
  v29 = v23;
  objc_msgSend___im_performBlock_(v28, v30, v33, v31, v32);
}

+ (void)_postParticipantScreenAttributesChangeNotification:(id)a3 cameraChanged:(BOOL)a4 orientationChanged:(BOOL)a5 aspectChanged:(BOOL)a6 cameraWillSwitch:(BOOL)a7 camera:(unsigned int)a8 orentation:(unsigned int)a9 aspect:(CGSize)a10
{
  height = a10.height;
  width = a10.width;
  v16 = a3;
  v21 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v17, v18, v19, v20);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_254771E60;
  v26[3] = &unk_2797838C8;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v34 = a7;
  v30 = a9;
  v28 = width;
  v29 = height;
  v27 = v16;
  v22 = v16;
  objc_msgSend___im_performBlock_(v21, v23, v26, v24, v25);
}

- (void)conference:(id)a3 remoteScreenAttributesChanged:(id)a4 callID:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v14 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v10, v11, v12, v13);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_25477206C;
  v20[3] = &unk_2797838F0;
  v21 = v8;
  v22 = v9;
  v23 = self;
  v24 = a5;
  v15 = v9;
  v16 = v8;
  objc_msgSend___im_performBlock_(v14, v17, v20, v18, v19);
}

- (void)conference:(id)a3 remoteVideoAttributesChanged:(id)a4 callID:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v14 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v10, v11, v12, v13);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_254772620;
  v20[3] = &unk_2797838F0;
  v21 = v8;
  v22 = self;
  v23 = v9;
  v24 = a5;
  v15 = v9;
  v16 = v8;
  objc_msgSend___im_performBlock_(v14, v17, v20, v18, v19);
}

- (void)conference:(id)a3 inititiateRelayRequest:(int64_t)a4 requestDict:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v10, v11, v12, v13);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_254772C14;
  v20[3] = &unk_2797838F0;
  v21 = v8;
  v22 = v9;
  v23 = self;
  v24 = a4;
  v15 = v9;
  v16 = v8;
  objc_msgSend___im_performBlock_(v14, v17, v20, v18, v19);
}

- (void)conference:(id)a3 sendRelayUpdate:(int64_t)a4 updateDict:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v10, v11, v12, v13);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_254773714;
  v20[3] = &unk_2797838F0;
  v21 = v8;
  v22 = v9;
  v23 = self;
  v24 = a4;
  v15 = v9;
  v16 = v8;
  objc_msgSend___im_performBlock_(v14, v17, v20, v18, v19);
}

- (void)conference:(id)a3 cancelRelayRequest:(int64_t)a4 requestDict:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v10, v11, v12, v13);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_254773A2C;
  v20[3] = &unk_2797838F0;
  v21 = v8;
  v22 = v9;
  v23 = self;
  v24 = a4;
  v15 = v9;
  v16 = v8;
  objc_msgSend___im_performBlock_(v14, v17, v20, v18, v19);
}

- (void)conference:(id)a3 withCallID:(int64_t)a4 networkHint:(BOOL)a5
{
  v8 = a3;
  v13 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v9, v10, v11, v12);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_254773D2C;
  v18[3] = &unk_279783918;
  v20 = self;
  v21 = a4;
  v22 = a5;
  v19 = v8;
  v14 = v8;
  objc_msgSend___im_performBlock_(v13, v15, v18, v16, v17);
}

- (void)conference:(id)a3 videoQualityNotificationForCallID:(int64_t)a4 isDegraded:(BOOL)a5 isRemote:(BOOL)a6
{
  v10 = a3;
  v15 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v11, v12, v13, v14);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_254773F00;
  v20[3] = &unk_279783940;
  v22 = self;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v21 = v10;
  v16 = v10;
  objc_msgSend___im_performBlock_(v15, v17, v20, v18, v19);
}

- (void)conference:(id)a3 withCallID:(int64_t)a4 remoteMediaStalled:(BOOL)a5
{
  v8 = a3;
  v13 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v9, v10, v11, v12);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_254774198;
  v18[3] = &unk_279783918;
  v20 = self;
  v21 = a4;
  v22 = a5;
  v19 = v8;
  v14 = v8;
  objc_msgSend___im_performBlock_(v13, v15, v18, v16, v17);
}

- (void)conference:(id)a3 reinitializeCallForCallID:(unsigned int)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = sub_254761764();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v22 = a4;
    _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "Told to reinitialize call for callID %d", buf, 8u);
  }

  v12 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v8, v9, v10, v11);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_254774490;
  v18[3] = &unk_279783968;
  v18[4] = self;
  v19 = v6;
  v20 = a4;
  v13 = v6;
  objc_msgSend___im_performBlock_(v12, v14, v18, v15, v16);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)conference:(id)a3 withCallID:(int64_t)a4 didPauseAudio:(BOOL)a5 error:(id)a6
{
  v7 = a5;
  v35 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = sub_254761764();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v28 = v10;
    v29 = 1024;
    v30 = v7;
    v31 = 1024;
    v32 = a4;
    v33 = 2112;
    v34 = v11;
    _os_log_impl(&dword_254743000, v12, OS_LOG_TYPE_DEFAULT, "vc: %@  didPauseAudio: %d callID: %d error: %@", buf, 0x22u);
  }

  v17 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v13, v14, v15, v16);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_254774724;
  v23[3] = &unk_279783918;
  v23[4] = self;
  v24 = v10;
  v25 = a4;
  v26 = v7;
  v18 = v10;
  objc_msgSend___im_performBlock_(v17, v19, v23, v20, v21);

  v22 = *MEMORY[0x277D85DE8];
}

- (void)conference:(id)a3 remoteAudioPaused:(BOOL)a4 callID:(int64_t)a5
{
  v6 = a4;
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = sub_254761764();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v28 = v8;
    v29 = 1024;
    v30 = v6;
    v31 = 1024;
    v32 = a5;
    _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, "vc: %@  remoteAudioPaused: %d callID: %d", buf, 0x18u);
  }

  v10 = sub_254761764();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v11)
    {
      *buf = 67109120;
      LODWORD(v28) = a5;
      v12 = "Informed about remote audio muted for call ID: %d";
LABEL_8:
      _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 8u);
    }
  }

  else if (v11)
  {
    *buf = 67109120;
    LODWORD(v28) = a5;
    v12 = "Informed about remote audio unmuted for call ID: %d";
    goto LABEL_8;
  }

  v17 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v13, v14, v15, v16);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_254774964;
  v23[3] = &unk_279783918;
  v23[4] = self;
  v24 = v8;
  v25 = a5;
  v26 = v6;
  v18 = v8;
  objc_msgSend___im_performBlock_(v17, v19, v23, v20, v21);

  v22 = *MEMORY[0x277D85DE8];
}

- (void)conference:(id)a3 remoteVideoPaused:(BOOL)a4 callID:(int64_t)a5
{
  v6 = a4;
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = sub_254761764();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v28 = v8;
    v29 = 1024;
    v30 = v6;
    v31 = 1024;
    v32 = a5;
    _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, "vc: %@  videoPaused: %d callID: %d", buf, 0x18u);
  }

  v10 = sub_254761764();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v11)
    {
      *buf = 67109120;
      LODWORD(v28) = a5;
      v12 = "Informed about remote video paused for call ID: %d";
LABEL_8:
      _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 8u);
    }
  }

  else if (v11)
  {
    *buf = 67109120;
    LODWORD(v28) = a5;
    v12 = "Informed about remote video unpaused for call ID: %d";
    goto LABEL_8;
  }

  v17 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v13, v14, v15, v16);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_254774C3C;
  v23[3] = &unk_279783918;
  v23[4] = self;
  v24 = v8;
  v25 = a5;
  v26 = v6;
  v18 = v8;
  objc_msgSend___im_performBlock_(v17, v19, v23, v20, v21);

  v22 = *MEMORY[0x277D85DE8];
}

- (void)conference:(id)a3 localIPChange:(id)a4 withCallID:(int64_t)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = sub_254761764();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v28 = v8;
    v29 = 2112;
    v30 = v9;
    v31 = 1024;
    v32 = a5;
    _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "vc: %@  newBlob: %@ callID: %d", buf, 0x1Cu);
  }

  v11 = sub_254761764();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v28) = a5;
    _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "Informed about local IP changing for call ID: %d", buf, 8u);
  }

  v16 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v12, v13, v14, v15);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_254774F14;
  v23[3] = &unk_2797838F0;
  v23[4] = self;
  v24 = v8;
  v25 = v9;
  v26 = a5;
  v17 = v9;
  v18 = v8;
  objc_msgSend___im_performBlock_(v16, v19, v23, v20, v21);

  v22 = *MEMORY[0x277D85DE8];
}

- (void)conference:(id)a3 didChangeLocalVariablesForCallID:(int64_t)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = sub_254761764();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = v6;
    v23 = 1024;
    v24 = a4;
    _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "vc: %@  callID: %d", buf, 0x12u);
  }

  v12 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v8, v9, v10, v11);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_254775104;
  v18[3] = &unk_279783878;
  v18[4] = self;
  v19 = v6;
  v20 = a4;
  v13 = v6;
  objc_msgSend___im_performBlock_(v12, v14, v18, v15, v16);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)serverDiedForConference:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v5, v6, v7, v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_254775234;
  v14[3] = &unk_2797832F0;
  v15 = v4;
  v16 = self;
  v10 = v4;
  objc_msgSend___im_performBlock_(v9, v11, v14, v12, v13);
}

- (void)localVideoLayer
{
  if ((objc_msgSend_isAVInterfaceReady(self, a2, v2, v3, v4) & 1) == 0)
  {
    objc_msgSend_initAVInterface(self, v6, v7, v8, v9);
  }

  v10 = objc_msgSend_sharedInstance(IMAVLocalPreviewClient, v6, v7, v8, v9);
  v15 = objc_msgSend_localVideoLayer(v10, v11, v12, v13, v14);

  return v15;
}

- (void)setLocalVideoLayer:(void *)a3
{
  if ((objc_msgSend_isAVInterfaceReady(self, a2, a3, v3, v4) & 1) == 0)
  {
    objc_msgSend_initAVInterface(self, v7, v8, v9, v10);
  }

  v14 = objc_msgSend_sharedInstance(IMAVLocalPreviewClient, v7, v8, v9, v10);
  objc_msgSend_setLocalVideoLayer_(v14, v11, a3, v12, v13);
}

- (void)setRemoteVideoPresentationSize:(CGSize)a3 forChat:(id)a4
{
  height = a3.height;
  width = a3.width;
  v35 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (objc_msgSend_isVideo(v7, v8, v9, v10, v11))
  {
    if (v7)
    {
      if ((objc_msgSend_isAVInterfaceReady(self, v12, v13, v14, v15) & 1) == 0)
      {
        objc_msgSend_initAVInterface(self, v16, v17, v18, v19);
      }

      v20 = objc_msgSend__existingConferenceForAVChat_(self, v16, v7, v18, v19);
      if (v20)
      {
        v21 = sub_254761764();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v31 = 134218240;
          v32 = width;
          v33 = 2048;
          v34 = height;
          _os_log_impl(&dword_254743000, v21, OS_LOG_TYPE_DEFAULT, "Setting remote video presented size to %f, %f", &v31, 0x16u);
        }

        v26 = objc_msgSend__bustedCallID(v7, v22, v23, v24, v25);
        objc_msgSend_setConferenceVisualRectangle_forCallID_(v20, v27, v26, v28, v29, 0.0, 0.0, width, height);
      }
    }

    else
    {
      v20 = sub_254761764();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&dword_254743000, v20, OS_LOG_TYPE_DEFAULT, "No avChat when asked to set presentation size", &v31, 2u);
      }
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)setRemoteVideoPresentationState:(unsigned int)a3 forChat:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (objc_msgSend_isVideo(v6, v7, v8, v9, v10))
  {
    if (v6)
    {
      if ((objc_msgSend_isAVInterfaceReady(self, v11, v12, v13, v14) & 1) == 0)
      {
        objc_msgSend_initAVInterface(self, v15, v16, v17, v18);
      }

      v19 = objc_msgSend__existingConferenceForAVChat_(self, v15, v6, v17, v18);
      if (v19)
      {
        v20 = sub_254761764();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v30[0] = 67109120;
          v30[1] = a3;
          _os_log_impl(&dword_254743000, v20, OS_LOG_TYPE_DEFAULT, "Setting remote video presentation state to %d", v30, 8u);
        }

        if (a3 == 2)
        {
          v25 = 2;
        }

        else
        {
          v25 = a3 == 1;
        }

        v26 = objc_msgSend__bustedCallID(v6, v21, v22, v23, v24);
        objc_msgSend_setConferenceState_forCallID_(v19, v27, v25, v26, v28);
      }
    }

    else
    {
      v19 = sub_254761764();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v30[0]) = 0;
        _os_log_impl(&dword_254743000, v19, OS_LOG_TYPE_DEFAULT, "No avChat when asked to set presentation state", v30, 2u);
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)localVideoBackLayer
{
  if ((objc_msgSend_isAVInterfaceReady(self, a2, v2, v3, v4) & 1) == 0)
  {
    objc_msgSend_initAVInterface(self, v6, v7, v8, v9);
  }

  v10 = objc_msgSend_sharedInstance(IMAVLocalPreviewClient, v6, v7, v8, v9);
  v15 = objc_msgSend_localVideoBackLayer(v10, v11, v12, v13, v14);

  return v15;
}

- (void)setLocalVideoBackLayer:(void *)a3
{
  if ((objc_msgSend_isAVInterfaceReady(self, a2, a3, v3, v4) & 1) == 0)
  {
    objc_msgSend_initAVInterface(self, v7, v8, v9, v10);
  }

  v14 = objc_msgSend_sharedInstance(IMAVLocalPreviewClient, v7, v8, v9, v10);
  objc_msgSend_setLocalVideoBackLayer_(v14, v11, a3, v12, v13);
}

- (void)handleRelayInitate:(id)a3 fromParticipant:(id)a4 callInfo:(id)a5
{
  v117 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = objc_msgSend_sharedInstance(IMAVController, v11, v12, v13, v14);
  if (objc_msgSend__shouldRunConferences(v15, v16, v17, v18, v19))
  {
  }

  else
  {
    v28 = objc_msgSend_sharedInstance(IMAVController, v20, v21, v22, v23);
    shouldRunACConferences = objc_msgSend__shouldRunACConferences(v28, v29, v30, v31, v32);

    if ((shouldRunACConferences & 1) == 0)
    {
      v62 = sub_254761764();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_254743000, v62, OS_LOG_TYPE_DEFAULT, "Returning because we are not the VC host", buf, 2u);
      }

      goto LABEL_15;
    }
  }

  v34 = objc_msgSend_avChat(v9, v24, v25, v26, v27);
  v39 = objc_msgSend__conferenceQueue(v34, v35, v36, v37, v38);

  if (v39)
  {
    v44 = objc_msgSend_avChat(v9, v40, v41, v42, v43);
    v48 = objc_msgSend__existingConferenceForAVChat_(self, v45, v44, v46, v47);

    v49 = objc_alloc(MEMORY[0x277CBEB38]);
    v53 = objc_msgSend_initWithDictionary_(v49, v50, v8, v51, v52);
    v54 = *MEMORY[0x277D18F98];
    v62 = objc_msgSend_objectForKey_(v8, v55, *MEMORY[0x277D18F98], v56, v57);
    if (!v62)
    {
      v63 = objc_msgSend_avChat(v9, v58, v59, v60, v61);
      v68 = objc_msgSend__relayRemotePrimaryIdentifier(v63, v64, v65, v66, v67);

      if (v68)
      {
        v73 = objc_msgSend_avChat(v9, v69, v70, v71, v72);
        v78 = objc_msgSend__relayRemotePrimaryIdentifier(v73, v74, v75, v76, v77);
        objc_msgSend_setObject_forKey_(v53, v79, v78, v54, v80);
      }
    }

    v81 = sub_254761764();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      v86 = objc_msgSend_vcPartyID(v9, v82, v83, v84, v85);
      *buf = 138412290;
      v112 = v86;
      _os_log_impl(&dword_254743000, v81, OS_LOG_TYPE_DEFAULT, "Processing relay request response from: %@", buf, 0xCu);
    }

    v87 = sub_254761764();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      v92 = objc_msgSend_avChat(v9, v88, v89, v90, v91);
      *buf = 138412802;
      v112 = v92;
      v113 = 2112;
      v114 = v9;
      v115 = 2112;
      v116 = v8;
      _os_log_impl(&dword_254743000, v87, OS_LOG_TYPE_DEFAULT, "handleRelayInitate AVChat: %@    participant: %@    properties: %@", buf, 0x20u);
    }

    v97 = objc_msgSend_avChat(v9, v93, v94, v95, v96);
    v102 = objc_msgSend__conferenceQueue(v97, v98, v99, v100, v101);
    v106[0] = MEMORY[0x277D85DD0];
    v106[1] = 3221225472;
    v106[2] = sub_254775B90;
    v106[3] = &unk_279783990;
    v107 = v48;
    v108 = v10;
    v109 = v53;
    v110 = v9;
    v103 = v53;
    v104 = v48;
    dispatch_async(v102, v106);

LABEL_15:
  }

  v105 = *MEMORY[0x277D85DE8];
}

- (void)handleRelayUpdate:(id)a3 fromParticipant:(id)a4 callInfo:(id)a5
{
  v84 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = objc_msgSend_sharedInstance(IMAVController, v11, v12, v13, v14);
  if (objc_msgSend__shouldRunConferences(v15, v16, v17, v18, v19))
  {
  }

  else
  {
    v28 = objc_msgSend_sharedInstance(IMAVController, v20, v21, v22, v23);
    shouldRunACConferences = objc_msgSend__shouldRunACConferences(v28, v29, v30, v31, v32);

    if ((shouldRunACConferences & 1) == 0)
    {
      v71 = sub_254761764();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_254743000, v71, OS_LOG_TYPE_DEFAULT, "Returning because we are not the VC host", buf, 2u);
      }

      goto LABEL_12;
    }
  }

  v34 = objc_msgSend_avChat(v9, v24, v25, v26, v27);
  v39 = objc_msgSend__conferenceQueue(v34, v35, v36, v37, v38);

  if (v39)
  {
    v44 = objc_msgSend_avChat(v9, v40, v41, v42, v43);
    v48 = objc_msgSend__existingConferenceForAVChat_(self, v45, v44, v46, v47);

    v49 = sub_254761764();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v54 = objc_msgSend_vcPartyID(v9, v50, v51, v52, v53);
      *buf = 138412290;
      v79 = v54;
      _os_log_impl(&dword_254743000, v49, OS_LOG_TYPE_DEFAULT, "Processing relay update from: %@", buf, 0xCu);
    }

    v55 = sub_254761764();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v60 = objc_msgSend_avChat(v9, v56, v57, v58, v59);
      *buf = 138412802;
      v79 = v60;
      v80 = 2112;
      v81 = v9;
      v82 = 2112;
      v83 = v8;
      _os_log_impl(&dword_254743000, v55, OS_LOG_TYPE_DEFAULT, "handleRelayUpdate AVChat: %@    participant: %@    properties: %@", buf, 0x20u);
    }

    v65 = objc_msgSend_avChat(v9, v61, v62, v63, v64);
    v70 = objc_msgSend__conferenceQueue(v65, v66, v67, v68, v69);
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = sub_254775F18;
    v73[3] = &unk_279783990;
    v74 = v48;
    v75 = v10;
    v76 = v8;
    v77 = v9;
    v71 = v48;
    dispatch_async(v70, v73);

LABEL_12:
  }

  v72 = *MEMORY[0x277D85DE8];
}

- (void)handleRelayCancel:(id)a3 fromParticipant:(id)a4 callInfo:(id)a5
{
  v84 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = objc_msgSend_sharedInstance(IMAVController, v11, v12, v13, v14);
  if (objc_msgSend__shouldRunConferences(v15, v16, v17, v18, v19))
  {
  }

  else
  {
    v28 = objc_msgSend_sharedInstance(IMAVController, v20, v21, v22, v23);
    shouldRunACConferences = objc_msgSend__shouldRunACConferences(v28, v29, v30, v31, v32);

    if ((shouldRunACConferences & 1) == 0)
    {
      v71 = sub_254761764();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_254743000, v71, OS_LOG_TYPE_DEFAULT, "Returning because we are not the VC host", buf, 2u);
      }

      goto LABEL_12;
    }
  }

  v34 = objc_msgSend_avChat(v9, v24, v25, v26, v27);
  v39 = objc_msgSend__conferenceQueue(v34, v35, v36, v37, v38);

  if (v39)
  {
    v44 = objc_msgSend_avChat(v9, v40, v41, v42, v43);
    v48 = objc_msgSend__existingConferenceForAVChat_(self, v45, v44, v46, v47);

    v49 = sub_254761764();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v54 = objc_msgSend_vcPartyID(v9, v50, v51, v52, v53);
      *buf = 138412290;
      v79 = v54;
      _os_log_impl(&dword_254743000, v49, OS_LOG_TYPE_DEFAULT, "Processing relay cancel from: %@", buf, 0xCu);
    }

    v55 = sub_254761764();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v60 = objc_msgSend_avChat(v9, v56, v57, v58, v59);
      *buf = 138412802;
      v79 = v60;
      v80 = 2112;
      v81 = v9;
      v82 = 2112;
      v83 = v8;
      _os_log_impl(&dword_254743000, v55, OS_LOG_TYPE_DEFAULT, "handleRelayCancel AVChat: %@    participant: %@    properties: %@", buf, 0x20u);
    }

    v65 = objc_msgSend_avChat(v9, v61, v62, v63, v64);
    v70 = objc_msgSend__conferenceQueue(v65, v66, v67, v68, v69);
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = sub_2547762A0;
    v73[3] = &unk_279783990;
    v74 = v48;
    v75 = v10;
    v76 = v8;
    v77 = v9;
    v71 = v48;
    dispatch_async(v70, v73);

LABEL_12:
  }

  v72 = *MEMORY[0x277D85DE8];
}

- (void)processRemoteIPChanged:(id)a3 fromParticipant:(id)a4
{
  v66 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = sub_254761764();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v61 = v7;
    _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "Processing remote IP change from: %@", buf, 0xCu);
  }

  v9 = sub_254761764();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_msgSend_avChat(v7, v10, v11, v12, v13);
    *buf = 138412802;
    v61 = v14;
    v62 = 2112;
    v63 = v7;
    v64 = 2112;
    v65 = v6;
    _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, "remoteIPChangedWithBlob AVChat: %@    participant: %@    properties: %@", buf, 0x20u);
  }

  v19 = objc_msgSend_avChat(v7, v15, v16, v17, v18);
  v24 = objc_msgSend__conferenceQueue(v19, v20, v21, v22, v23);

  if (v24)
  {
    v29 = objc_msgSend_avChat(v7, v25, v26, v27, v28);
    v33 = objc_msgSend__existingConferenceForAVChat_(self, v30, v29, v31, v32);

    v37 = objc_msgSend_objectForKey_(v6, v34, @"LocalIPChangeNewBlob", v35, v36);
    v42 = objc_msgSend__FTDataFromBase64String(v37, v38, v39, v40, v41);
    v47 = objc_msgSend_avChat(v7, v43, v44, v45, v46);
    v52 = objc_msgSend__conferenceQueue(v47, v48, v49, v50, v51);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_254776598;
    block[3] = &unk_279783760;
    v57 = v33;
    v58 = v42;
    v59 = v7;
    v53 = v42;
    v54 = v33;
    dispatch_async(v52, block);
  }

  v55 = *MEMORY[0x277D85DE8];
}

- (id)_controller
{
  v6 = objc_msgSend__activeChat(IMAVChat, a2, v2, v3, v4);
  v10 = objc_msgSend__conferenceForAVChat_(self, v7, v6, v8, v9);

  return v10;
}

- (void)chatStateUpdated
{
  v6 = objc_msgSend__nonFinalChat(IMAVChat, a2, v2, v3, v4);

  v11 = objc_msgSend_sharedInstance(IMAVDaemonController, v7, v8, v9, v10);
  v15 = v11;
  if (v6)
  {
    objc_msgSend_addListenerID_(v11, v12, @"com.apple.IMAVConferenceAVAgentListener", v13, v14);
  }

  else
  {
    objc_msgSend_removeListenerID_(v11, v12, @"com.apple.IMAVConferenceAVAgentListener", v13, v14);
  }

  v16.receiver = self;
  v16.super_class = IMAVConferenceInterface;
  [(IMAVInterface *)&v16 chatStateUpdated];
}

- (void)chatRelayedStatusChanged:(id)a3
{
  v4 = a3;
  v12 = objc_msgSend__conferenceForAVChat_(self, v5, v4, v6, v7);
  if (v12)
  {
    v13 = objc_msgSend__conferenceQueue(v4, v8, v9, v10, v11);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2547767D0;
    block[3] = &unk_279783760;
    block[4] = self;
    v15 = v4;
    v16 = v12;
    dispatch_async(v13, block);
  }
}

- (void)avChat:(id)a3 setLocalLandscapeAspectRatio:(CGSize)a4 localPortraitAspectRatio:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v7 = a4.height;
  v8 = a4.width;
  v43 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v15 = v10;
  if (!v10)
  {
    v31 = sub_254761764();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v37) = 0;
      v32 = "No avChat";
      goto LABEL_13;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (objc_msgSend_isVideo(v10, v11, v12, v13, v14))
  {
    if ((objc_msgSend_isAVInterfaceReady(self, v16, v17, v18, v19) & 1) == 0)
    {
      objc_msgSend_initAVInterface(self, v20, v21, v22, v23);
    }

    v24 = sub_254761764();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v44.width = v8;
      v44.height = v7;
      v25 = NSStringFromSize(v44);
      v45.width = width;
      v45.height = height;
      v26 = NSStringFromSize(v45);
      v37 = 138412802;
      v38 = v15;
      v39 = 2112;
      v40 = v25;
      v41 = 2112;
      v42 = v26;
      _os_log_impl(&dword_254743000, v24, OS_LOG_TYPE_DEFAULT, "Chat: %@ Setting setLocalLandscapeAspectRatio: %@   localPortraitAspectRatio: %@", &v37, 0x20u);
    }

    if (v8 == 0.0 && v7 == 0.0)
    {
      v31 = sub_254761764();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v37) = 0;
        v32 = "       ** someone hasn't configured this localLandscapeAspectRatio, it's CGSizeZero, skipping";
LABEL_13:
        _os_log_impl(&dword_254743000, v31, OS_LOG_TYPE_DEFAULT, v32, &v37, 2u);
        goto LABEL_19;
      }
    }

    else
    {
      if (width != 0.0 || height != 0.0)
      {
        v31 = objc_msgSend_sharedInstance(IMAVLocalPreviewClient, v27, v28, v29, v30);
        objc_msgSend_avChat_setLocalPortraitRatio_localLandscapeRatio_(v31, v33, v15, v34, v35, width, height, v8, v7);
        goto LABEL_19;
      }

      v31 = sub_254761764();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v37) = 0;
        v32 = "       ** someone hasn't configured this localPortraitAspectRatio, it's CGSizeZero, skipping";
        goto LABEL_13;
      }
    }

    goto LABEL_19;
  }

LABEL_20:

  v36 = *MEMORY[0x277D85DE8];
}

- (BOOL)_submitLoggingInformation:(id)a3 forChat:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = sub_254761764();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138412546;
    v29 = v5;
    v30 = 2112;
    v31 = v6;
    _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "Will submit logging info: %@   for chat: %@", &v28, 0x16u);
  }

  v8 = objc_alloc_init(qword_28134A5C0);
  v9 = sub_254761764();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138412290;
    v29 = v8;
    _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, "   => Found conference: %@", &v28, 0xCu);
  }

  v10 = objc_opt_respondsToSelector();
  v11 = sub_254761764();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = NSStringFromSelector(sel_setCallReport_withReport_);
      v28 = 138412546;
      v29 = v8;
      v30 = 2112;
      v31 = v13;
      _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "%@ responds to %@", &v28, 0x16u);
    }

    v18 = objc_msgSend__bustedCallID(v6, v14, v15, v16, v17);
    v11 = objc_msgSend_descriptionInStringsFileFormat(v5, v19, v20, v21, v22);
    objc_msgSend_setCallReport_withReport_(v8, v23, v18, v11, v24);
  }

  else if (v12)
  {
    v25 = NSStringFromSelector(sel_setCallReport_withReport_);
    v28 = 138412546;
    v29 = v8;
    v30 = 2112;
    v31 = v25;
    _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "%@ DOES NOT respond to %@", &v28, 0x16u);
  }

  v26 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)_submitEndCallMetric:(id)a3 forCallID:(int64_t)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = sub_254761764();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = v5;
    v19 = 1024;
    LODWORD(v20) = a4;
    _os_log_impl(&dword_254743000, v6, OS_LOG_TYPE_DEFAULT, "Will submit end call metric: %@   for callID: %d", &v17, 0x12u);
  }

  v7 = objc_alloc_init(qword_28134A5C0);
  v8 = sub_254761764();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v7;
    _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "   => Found conference: %@", &v17, 0xCu);
  }

  v9 = objc_opt_respondsToSelector();
  v10 = sub_254761764();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v12 = NSStringFromSelector(sel_sendProtobuf_withType_forCallID_);
      v17 = 138412546;
      v18 = v7;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "%@ responds to %@", &v17, 0x16u);
    }

    objc_msgSend_sendProtobuf_withType_forCallID_(v7, v13, v5, 5312515, a4);
  }

  else
  {
    if (v11)
    {
      v14 = NSStringFromSelector(sel_sendProtobuf_withType_forCallID_);
      v17 = 138412546;
      v18 = v7;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "%@ DOES NOT respond to %@", &v17, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)updateAVChat:(id)a3 withCallMetadata:(id)a4 isFinalUpdate:(BOOL)a5
{
  v8 = a3;
  v13 = a4;
  if (v8)
  {
    v14 = objc_msgSend__conferenceQueue(v8, v9, v10, v11, v12);

    if (v14)
    {
      v19 = objc_msgSend__bustedCallID(v8, v15, v16, v17, v18);
      v23 = objc_msgSend__existingConferenceForAVChat_(self, v20, v8, v21, v22);
      v28 = objc_msgSend__conferenceQueue(v8, v24, v25, v26, v27);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2547770D8;
      block[3] = &unk_2797839E0;
      v31 = v13;
      v32 = v23;
      v34 = v19;
      v33 = v8;
      v35 = a5;
      v29 = v23;
      dispatch_async(v28, block);
    }
  }
}

@end