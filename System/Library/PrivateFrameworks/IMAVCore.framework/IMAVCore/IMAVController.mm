@interface IMAVController
+ (id)sharedInstance;
- (BOOL)_shouldObserveConferences;
- (BOOL)_shouldRunACConferences;
- (BOOL)_shouldRunConferences;
- (BOOL)hasActiveConference;
- (BOOL)hasRunningConference;
- (IMAVController)init;
- (unsigned)overallChatState;
- (void)_dumpCaps;
- (void)_receivedPendingACRequests;
- (void)_receivedPendingVCRequests;
- (void)_setServiceVCCaps:(unint64_t)caps toCaps:(unint64_t)toCaps;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)blockOnPendingVCInvitationsWithCapabilities:(int64_t)capabilities;
- (void)cancelVCRequestWithBuddy:(id)buddy vcProps:(id)props forAccount:(id)account conferenceID:(id)d reason:(id)reason;
- (void)pushCachedVCCapsToDaemon;
- (void)removeDelegate:(id)delegate;
- (void)requestPendingACInvitations;
- (void)requestPendingVCInvitations;
- (void)setDelegate:(id)delegate;
- (void)setIMAVCapabilities:(int64_t)capabilities toCaps:(int64_t)caps;
- (void)setupIMAVController;
- (void)vcCapabilitiesChanged:(unint64_t)changed;
@end

@implementation IMAVController

+ (id)sharedInstance
{
  if (qword_28134A408 != -1)
  {
    sub_25477F878();
  }

  v3 = qword_28134A3D8;

  return v3;
}

- (BOOL)_shouldRunConferences
{
  v5 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], a2, v2, v3, v4);
  v10 = (*MEMORY[0x277D19348] & objc_msgSend_capabilities(v5, v6, v7, v8, v9)) != 0;

  return v10;
}

- (BOOL)_shouldObserveConferences
{
  v5 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], a2, v2, v3, v4);
  v10 = (*MEMORY[0x277D19330] & objc_msgSend_capabilities(v5, v6, v7, v8, v9)) != 0;

  return v10;
}

- (BOOL)_shouldRunACConferences
{
  v5 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], a2, v2, v3, v4);
  v10 = (*MEMORY[0x277D19340] & objc_msgSend_capabilities(v5, v6, v7, v8, v9)) != 0;

  return v10;
}

- (void)setupIMAVController
{
  if (qword_28134A430 != -1)
  {
    sub_25477F88C();
  }

  v5 = objc_msgSend_sharedInstance(IMAVTelephonyManager, a2, v2, v3, v4);
  v10 = objc_msgSend_sharedInstance(IMAVInterface, v6, v7, v8, v9);
}

- (IMAVController)init
{
  v20.receiver = self;
  v20.super_class = IMAVController;
  v2 = [(IMAVController *)&v20 init];
  v6 = v2;
  if (v2)
  {
    objc_msgSend_setBlockIncomingInvitationsDuringCall_(v2, v3, 1, v4, v5);
    objc_msgSend_setBlockMultipleIncomingInvitations_(v6, v7, 1, v8, v9);
    objc_msgSend_setBlockOutgoingInvitationsDuringCall_(v6, v10, 1, v11, v12);
    v17 = objc_msgSend_nonRetainingArray(MEMORY[0x277CBEB18], v13, v14, v15, v16);
    delegates = v6->_delegates;
    v6->_delegates = v17;
  }

  return v6;
}

- (void)cancelVCRequestWithBuddy:(id)buddy vcProps:(id)props forAccount:(id)account conferenceID:(id)d reason:(id)reason
{
  v89 = *MEMORY[0x277D85DE8];
  buddyCopy = buddy;
  propsCopy = props;
  accountCopy = account;
  dCopy = d;
  reasonCopy = reason;
  if (!accountCopy)
  {
    accountCopy = objc_msgSend_account(buddyCopy, v15, v16, v17, v18);
  }

  v19 = objc_msgSend_objectForKey_(propsCopy, v15, *MEMORY[0x277D19568], v17, v18);
  v81 = objc_msgSend_unsignedIntValue(v19, v20, v21, v22, v23);

  v24 = sub_254761764();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v29 = objc_msgSend_ID(buddyCopy, v25, v26, v27, v28);
    *buf = 138412290;
    v84 = v29;
    _os_log_impl(&dword_254743000, v24, OS_LOG_TYPE_DEFAULT, "Sending cancel to service for: %@", buf, 0xCu);
  }

  v30 = sub_254761764();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v84 = dCopy;
    v85 = 2112;
    v86 = accountCopy;
    v87 = 2112;
    v88 = buddyCopy;
    _os_log_impl(&dword_254743000, v30, OS_LOG_TYPE_DEFAULT, "Conference ID: %@     Account: %@    Handle: %@", buf, 0x20u);
  }

  v31 = sub_254761764();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v36 = objc_msgSend_loginStatusMessage(accountCopy, v32, v33, v34, v35);
    *buf = 138412290;
    v84 = v36;
    _os_log_impl(&dword_254743000, v31, OS_LOG_TYPE_DEFAULT, "        Account login status: %@", buf, 0xCu);
  }

  v37 = sub_254761764();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    if (objc_msgSend_isActive(accountCopy, v38, v39, v40, v41))
    {
      v42 = @"YES";
    }

    else
    {
      v42 = @"NO";
    }

    *buf = 138412290;
    v84 = v42;
    _os_log_impl(&dword_254743000, v37, OS_LOG_TYPE_DEFAULT, "        Account active: %@", buf, 0xCu);
  }

  v43 = sub_254761764();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v48 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v44, v45, v46, v47);
    if (objc_msgSend_isConnected(v48, v49, v50, v51, v52))
    {
      v53 = @"YES";
    }

    else
    {
      v53 = @"NO";
    }

    *buf = 138412290;
    v84 = v53;
    _os_log_impl(&dword_254743000, v43, OS_LOG_TYPE_DEFAULT, "        Daemon Connected: %@", buf, 0xCu);
  }

  v58 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v54, v55, v56, v57);
  v63 = objc_msgSend_ID(buddyCopy, v59, v60, v61, v62);
  v67 = objc_msgSend_vcResponseInfoWithSessionID_(self, v64, v81, v65, v66);
  v72 = objc_msgSend_account(buddyCopy, v68, v69, v70, v71);
  v77 = objc_msgSend_uniqueID(v72, v73, v74, v75, v76);
  objc_msgSend_cancelVCRequestWithPerson_properties_conference_reason_account_(v58, v78, v63, v67, dCopy, reasonCopy, v77);

  v79 = *MEMORY[0x277D85DE8];
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  if (delegateCopy && (objc_msgSend_containsObjectIdenticalTo_(self->_delegates, v6, delegateCopy, v7, v8) & 1) == 0)
  {
    objc_msgSend_addObject_(self->_delegates, v10, delegateCopy, v11, v12);
  }
}

- (void)removeDelegate:(id)delegate
{
  if (delegate)
  {
    objc_msgSend_removeObjectIdenticalTo_(self->_delegates, a2, delegate, v3, v4);
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8 = objc_msgSend_delegate(self, v4, v5, v6, v7);

  v11 = delegateCopy;
  if (v8 != delegateCopy)
  {
    objc_msgSend_addDelegate_queue_(self, v9, delegateCopy, MEMORY[0x277D85CD0], v10);
    v11 = delegateCopy;
  }
}

- (void)_dumpCaps
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (objc_msgSend_hasRunningConference(self, v4, v5, v6, v7))
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v40 = 138412290;
    v41 = v8;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "     has running conference: %@", &v40, 0xCu);
  }

  v9 = sub_254761764();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (objc_msgSend_hasActiveConference(self, v10, v11, v12, v13))
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v40 = 138412290;
    v41 = v14;
    _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, "      has active conference: %@", &v40, 0xCu);
  }

  v15 = sub_254761764();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (objc_msgSend_cameraConnected(self, v16, v17, v18, v19))
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v40 = 138412290;
    v41 = v20;
    _os_log_impl(&dword_254743000, v15, OS_LOG_TYPE_DEFAULT, "           camera connected: %@", &v40, 0xCu);
  }

  v21 = sub_254761764();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    if (objc_msgSend_cameraCapable(self, v22, v23, v24, v25))
    {
      v26 = @"YES";
    }

    else
    {
      v26 = @"NO";
    }

    v40 = 138412290;
    v41 = v26;
    _os_log_impl(&dword_254743000, v21, OS_LOG_TYPE_DEFAULT, "             camera capable: %@", &v40, 0xCu);
  }

  v27 = sub_254761764();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    if (objc_msgSend_microphoneCapable(self, v28, v29, v30, v31))
    {
      v32 = @"YES";
    }

    else
    {
      v32 = @"NO";
    }

    v40 = 138412290;
    v41 = v32;
    _os_log_impl(&dword_254743000, v27, OS_LOG_TYPE_DEFAULT, "         microphone capable: %@", &v40, 0xCu);
  }

  v33 = sub_254761764();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    if (objc_msgSend_microphoneConnected(self, v34, v35, v36, v37))
    {
      v38 = @"YES";
    }

    else
    {
      v38 = @"NO";
    }

    v40 = 138412290;
    v41 = v38;
    _os_log_impl(&dword_254743000, v33, OS_LOG_TYPE_DEFAULT, "       microphone connected: %@", &v40, 0xCu);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_setServiceVCCaps:(unint64_t)caps toCaps:(unint64_t)toCaps
{
  v5 = (qword_28134A440 & ~caps | toCaps) & 0x1F0000 | 0x100000020000;
  qword_28134A440 = v5;
  if (!qword_28134A438)
  {
    qword_28134A438 = v5;
  }

  objc_msgSend__dumpCaps(self, a2, caps, toCaps, v4);
  v10 = objc_msgSend__nonFinalChat(IMAVChat, v6, v7, v8, v9);

  if (!v10)
  {
    qword_28134A440 = qword_28134A440 & 0xFFFFFFFFFFEEFFFFLL | 0x100000;
  }

  v18 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v11, v12, v13, v14);
  objc_msgSend_setVCCapabilities_(v18, v15, qword_28134A440, v16, v17);
}

- (void)setIMAVCapabilities:(int64_t)capabilities toCaps:(int64_t)caps
{
  v5 = vdupq_n_s64(capabilities);
  v6 = vorrq_s8(vandq_s8(vshlq_u64(v5, xmmword_254783240), xmmword_254783270), vandq_s8(vshlq_u64(v5, xmmword_254783250), xmmword_254783260));
  v7 = vdupq_n_s64(caps);
  v8 = vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL));
  v9 = vorrq_s8(vandq_s8(vshlq_u64(v7, xmmword_254783240), xmmword_254783270), vandq_s8(vshlq_u64(v7, xmmword_254783250), xmmword_254783260));
  objc_msgSend__setServiceVCCaps_toCaps_(self, a2, v8, *&vorr_s8(*v9.i8, *&vextq_s8(v9, v9, 8uLL)), v4);
}

- (void)vcCapabilitiesChanged:(unint64_t)changed
{
  if (objc_msgSend__shouldRunConferences(self, a2, changed, v3, v4))
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    v11 = objc_msgSend__shouldRunACConferences(self, v7, v8, v9, v10) ^ 1;
  }

  if (objc_msgSend__shouldObserveConferences(self, v7, v8, v9, v10))
  {
    if (qword_28134A440)
    {
      v16 = v11;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      goto LABEL_9;
    }
  }

  else if (!qword_28134A440)
  {
LABEL_9:
    qword_28134A440 = changed;
  }

  if (qword_28134A438 != changed)
  {
    qword_28134A438 = changed;
    if ((objc_msgSend__shouldRunConferences(self, v12, v13, v14, v15) & 1) != 0 || (objc_msgSend__shouldRunACConferences(self, v17, v18, v19, v20) & 1) != 0 || objc_msgSend__shouldObserveConferences(self, v17, v18, v19, v20))
    {
      v21 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v17, v18, v19, v20);
      v25 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v22, qword_28134A440 | 0x100000, v23, v24);
      objc_msgSend_setObject_forKey_(v21, v26, v25, @"CachedVCCaps", v27);
    }

    objc_msgSend__dumpCaps(self, v17, v18, v19, v20);
    v34 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v28, v29, v30, v31);
    objc_msgSend___mainThreadPostNotificationName_object_(v34, v32, @"VideoCapabilitesChangedNotification", 0, v33);
  }
}

- (void)pushCachedVCCapsToDaemon
{
  v32 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, v2, v3, v4);
  v9 = objc_msgSend_objectForKey_(v32, v6, @"CachedVCCaps", v7, v8);
  v14 = v9;
  v15 = qword_28134A440;
  if (qword_28134A440)
  {
    v16 = 1;
  }

  else
  {
    v16 = v9 == 0;
  }

  if (v16)
  {
    if (!qword_28134A440)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v15 = objc_msgSend_unsignedLongLongValue(v9, v10, v11, v12, v13) | 0x100000;
  }

  objc_msgSend__setServiceVCCaps_toCaps_(self, v10, 2031616, v15, v13);
  v21 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v17, v18, v19, v20);
  objc_msgSend___mainThreadPostNotificationName_object_(v21, v22, @"VideoCapabilitesChangedNotification", 0, v23);

  v28 = objc_msgSend_sharedInstance(IMAVController, v24, v25, v26, v27);
  objc_msgSend_vcCapabilitiesChanged_(v28, v29, v15, v30, v31);

LABEL_8:
}

- (unsigned)overallChatState
{
  v5 = objc_msgSend_sharedInstance(IMAVCallManager, a2, v2, v3, v4);
  v10 = objc_msgSend__callState(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)hasActiveConference
{
  v5 = objc_msgSend_sharedInstance(IMAVCallManager, a2, v2, v3, v4);
  if (objc_msgSend__hasActiveFaceTimeCall(v5, v6, v7, v8, v9))
  {
    v14 = 1;
  }

  else
  {
    v15 = objc_msgSend_sharedInstance(IMAVCallManager, v10, v11, v12, v13);
    v14 = objc_msgSend__hasActiveAudioCall(v15, v16, v17, v18, v19);
  }

  return v14;
}

- (BOOL)hasRunningConference
{
  v5 = objc_msgSend_sharedInstance(IMAVCallManager, a2, v2, v3, v4);
  v10 = objc_msgSend__callState(v5, v6, v7, v8, v9);

  return v10 > 1 && v10 != 5;
}

- (void)requestPendingVCInvitations
{
  if (objc_msgSend__shouldRunConferences(self, a2, v2, v3, v4))
  {
    v13 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v5, v6, v7, v8);
    objc_msgSend_requestPendingVCInvites(v13, v9, v10, v11, v12);
  }
}

- (void)requestPendingACInvitations
{
  if (objc_msgSend__shouldRunACConferences(self, a2, v2, v3, v4))
  {
    v13 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v5, v6, v7, v8);
    objc_msgSend_requestPendingACInvites(v13, v9, v10, v11, v12);
  }
}

- (void)_receivedPendingACRequests
{
  byte_27F610650 = 1;
  v2 = sub_254761764();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_254743000, v2, OS_LOG_TYPE_DEFAULT, "Got pending AC requests flushed", v3, 2u);
  }
}

- (void)_receivedPendingVCRequests
{
  byte_27F610651 = 1;
  v2 = sub_254761764();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_254743000, v2, OS_LOG_TYPE_DEFAULT, "Got pending VC requests flushed", v3, 2u);
  }
}

- (void)blockOnPendingVCInvitationsWithCapabilities:(int64_t)capabilities
{
  v6 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], a2, capabilities, v3, v4);
  isConnected = objc_msgSend_isConnected(v6, v7, v8, v9, v10);

  if ((isConnected & 1) == 0)
  {
    shouldRunACConferences = objc_msgSend__shouldRunACConferences(self, v12, v13, v14, v15);
    shouldRunConferences = objc_msgSend__shouldRunConferences(self, v17, v18, v19, v20);
    v26 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v22, v23, v24, v25);
    objc_msgSend_blockUntilConnected(v26, v27, v28, v29, v30);

    if (shouldRunACConferences)
    {
      v35 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v31, v32, v33, v34);
      objc_msgSend_addObserver_selector_name_object_(v35, v36, self, sel__receivedPendingACRequests, @"__kIMAVControllerPendingACInvitationRequestComplete", 0);
    }

    v37 = shouldRunACConferences;
    if (shouldRunConferences)
    {
      v38 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v31, v32, v33, v34);
      objc_msgSend_addObserver_selector_name_object_(v38, v39, self, sel__receivedPendingVCRequests, @"__kIMAVControllerPendingAVInvitationRequestComplete", 0);

      v37 = 1;
    }

    v40 = objc_msgSend_currentRunLoop(MEMORY[0x277CBEB88], v31, v32, v33, v34);
    v41 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    v42 = sub_254761764();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v42, OS_LOG_TYPE_DEFAULT, "Starting block for VC invitations", buf, 2u);
    }

    byte_27F610650 = 0;
    byte_27F610651 = 0;
    if (shouldRunACConferences)
    {
      v47 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v43, v44, v45, v46);
      objc_msgSend_requestPendingACInvites(v47, v48, v49, v50, v51);
    }

    if (shouldRunConferences)
    {
      v52 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v43, v44, v45, v46);
      objc_msgSend_requestPendingVCInvites(v52, v53, v54, v55, v56);
    }

    v57 = *MEMORY[0x277D19198];
    v58 = shouldRunConferences ^ 1;
    while (1)
    {
      v59 = shouldRunACConferences & (byte_27F610650 ^ 1);
      if ((v59 | v58))
      {
        v60 = v59 | shouldRunConferences;
      }

      else
      {
        v60 = shouldRunConferences;
        if (byte_27F610651)
        {
          break;
        }
      }

      if (v60 & v37)
      {
        v61 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x277CBEAA8], v43, v44, v45, v46, 2.0);
        objc_msgSend_runMode_beforeDate_(v40, v62, v57, v61, v63);

        v64 = shouldRunACConferences & (byte_27F610650 ^ 1);
        if ((v64 | v58))
        {
          v60 = v64 | shouldRunConferences;
        }

        else
        {
          v60 = shouldRunConferences;
          if (byte_27F610651)
          {
            break;
          }
        }
      }

      if ((v60 & v37 & 1) == 0)
      {
        break;
      }

      objc_msgSend_timeIntervalSinceNow(v41, v43, v44, v45, v46);
      if (v65 <= -2.0)
      {
        v66 = sub_254761764();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          *v73 = 0;
          _os_log_impl(&dword_254743000, v66, OS_LOG_TYPE_DEFAULT, "Timed out blocking for VC invitiations", v73, 2u);
        }

        break;
      }
    }

    if (shouldRunACConferences)
    {
      v67 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v43, v44, v45, v46);
      objc_msgSend_removeObserver_name_object_(v67, v68, self, @"__kIMAVControllerPendingACInvitationRequestComplete", 0);
    }

    if (shouldRunConferences)
    {
      v69 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v43, v44, v45, v46);
      objc_msgSend_removeObserver_name_object_(v69, v70, self, @"__kIMAVControllerPendingAVInvitationRequestComplete", 0);
    }

    v71 = sub_254761764();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      *v72 = 0;
      _os_log_impl(&dword_254743000, v71, OS_LOG_TYPE_DEFAULT, "Complete block for VC invitations", v72, 2u);
    }
  }
}

@end