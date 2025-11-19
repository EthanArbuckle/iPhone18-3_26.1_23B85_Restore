@interface IMAVHandler
+ (void)ensureHandlerSetup;
+ (void)initialize;
- (BOOL)_notAllowingInvitesAndChatInvitesNonZero:(id)a3 fromHandle:(id)a4 properties:(id)a5;
- (BOOL)_notAllowingInvitesDuringCallAndRunningConference:(id)a3 fromHandle:(id)a4 properties:(id)a5;
- (void)_checkConferenceCapabilities:(id)a3;
- (void)_enqueueIMAVChatForNetworkActivation:(id)a3;
- (void)_handleIncomingAVChatForNotification:(id)a3;
- (void)_handleIncomingWithAccount:(id)a3 fromHandle:(id)a4 conference:(id)a5 properties:(id)a6;
- (void)_handleInviteFailed:(id)a3 fromHandle:(id)a4 conference:(id)a5 properties:(id)a6 reason:(int64_t)a7;
- (void)_handleProtectedIncomingWithAccount:(id)a3 fromHandle:(id)a4 conference:(id)a5 properties:(id)a6;
- (void)_notifyOfIncomingInvitationFor:(id)a3 notifyInvitationListeners:(BOOL)a4;
- (void)_setUpChat:(id)a3 isAudioOnly:(BOOL)a4 conference:(id)a5 properties:(id)a6 protectedType:(int64_t)a7 avChat:(id)a8;
- (void)account:(id)a3 conference:(id)a4 changedToNewConferenceID:(id)a5;
- (void)account:(id)a3 conference:(id)a4 peerID:(id)a5 propertiesUpdated:(id)a6;
- (void)account:(id)a3 conference:(id)a4 peerIDChangedFromID:(id)a5 toID:(id)a6;
- (void)account:(id)a3 conference:(id)a4 receivedCancelInvitationFrom:(id)a5 properties:(id)a6;
- (void)account:(id)a3 conference:(id)a4 receivedInvitationFrom:(id)a5 properties:(id)a6;
- (void)account:(id)a3 conference:(id)a4 receivedResponseToInvitationFrom:(id)a5 properties:(id)a6;
- (void)account:(id)a3 conference:(id)a4 remoteUser:(id)a5 properties:(id)a6;
- (void)account:(id)a3 postedError:(id)a4;
- (void)account:(id)a3 relay:(id)a4 handleCancel:(id)a5 fromPerson:(id)a6;
- (void)account:(id)a3 relay:(id)a4 handleInitate:(id)a5 fromPerson:(id)a6;
- (void)account:(id)a3 relay:(id)a4 handleUpdate:(id)a5 fromPerson:(id)a6;
- (void)pendingACRequestComplete;
- (void)pendingVCRequestComplete;
- (void)persistentProperty:(id)a3 changedTo:(id)a4 from:(id)a5;
- (void)property:(id)a3 changedTo:(id)a4 from:(id)a5;
- (void)setupComplete;
- (void)vcCapabilitiesChanged:(unint64_t)a3;
@end

@implementation IMAVHandler

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    v9 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v4, v5, v6, v7);
    objc_msgSend_addObserver_selector_name_object_(v9, v8, a1, sel_ensureHandlerSetup, *MEMORY[0x277D07DA0], 0);
  }
}

+ (void)ensureHandlerSetup
{
  v5 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], a2, v2, v3, v4);
  v10 = objc_msgSend_faceTimeSupported(v5, v6, v7, v8, v9);

  if (v10)
  {
    if (qword_28134A450 != -1)
    {
      sub_25477F7D8();
    }
  }

  else
  {
    v11 = sub_254761764();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "VC is not supported on this device, not setting up the AV Handler", v12, 2u);
    }
  }
}

- (BOOL)_notAllowingInvitesDuringCallAndRunningConference:(id)a3 fromHandle:(id)a4 properties:(id)a5
{
  v81 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_254761764();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v74 = v7;
    _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "In active conference, declining conference ID: %@", buf, 0xCu);
  }

  v11 = sub_254761764();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_msgSend__activeChat(IMAVChat, v12, v13, v14, v15);
    v21 = objc_msgSend__nonFinalChat(IMAVChat, v17, v18, v19, v20);
    v26 = objc_msgSend__connectedChat(IMAVChat, v22, v23, v24, v25);
    v31 = objc_msgSend__avChatArray(IMAVChat, v27, v28, v29, v30);
    *buf = 138413058;
    v74 = v16;
    v75 = 2112;
    v76 = v21;
    v77 = 2112;
    v78 = v26;
    v79 = 2112;
    v80 = v31;
    _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "Active chat: %@, Non final chat: %@, Connected chat: %@, All chats: %@", buf, 0x2Au);
  }

  v36 = objc_msgSend__activeChat(IMAVChat, v32, v33, v34, v35);

  if (v36)
  {
    v41 = sub_254761764();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v46 = objc_msgSend__activeChat(IMAVChat, v42, v43, v44, v45);
      *buf = 138412290;
      v74 = v46;
      _os_log_impl(&dword_254743000, v41, OS_LOG_TYPE_DEFAULT, "Simple ActiveChat: %@", buf, 0xCu);
    }

    v51 = objc_msgSend_sharedInstance(IMAVController, v47, v48, v49, v50);
    objc_msgSend_declineVCRequestWithBuddy_response_vcProps_forAccount_conferenceID_(v51, v52, v8, 2, v9, 0, v7);
  }

  else
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v53 = objc_msgSend__avChatArray(IMAVChat, v37, v38, v39, v40, 0);
    v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v54, &v68, v72, 16);
    if (v55)
    {
      v60 = v55;
      v61 = *v69;
      while (2)
      {
        for (i = 0; i != v60; ++i)
        {
          if (*v69 != v61)
          {
            objc_enumerationMutation(v53);
          }

          v63 = *(*(&v68 + 1) + 8 * i);
          if (objc_msgSend_isActive(v63, v56, v57, v58, v59))
          {
            v64 = sub_254761764();
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v74 = v63;
              _os_log_impl(&dword_254743000, v64, OS_LOG_TYPE_DEFAULT, "chat that was active: %@", buf, 0xCu);
            }

            goto LABEL_21;
          }
        }

        v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v56, &v68, v72, 16);
        if (v60)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:

    v65 = sub_254761764();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v65, OS_LOG_TYPE_DEFAULT, "[IMAVController hasRunningConference] claimed to have an active chat, but we really don't... *******FILE THIS PLEASE*****", buf, 2u);
    }

    v51 = sub_254761764();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v51, OS_LOG_TYPE_DEFAULT, "[WARN] [IMAVController hasRunningConference] claimed to have an active chat, but we really don't...", buf, 2u);
    }
  }

  v66 = *MEMORY[0x277D85DE8];
  return v36 != 0;
}

- (BOOL)_notAllowingInvitesAndChatInvitesNonZero:(id)a3 fromHandle:(id)a4 properties:(id)a5
{
  v82 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_254761764();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v75 = v7;
    _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "We have active invite, declining conference ID: %@", buf, 0xCu);
  }

  v11 = sub_254761764();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_msgSend__activeChat(IMAVChat, v12, v13, v14, v15);
    v21 = objc_msgSend__nonFinalChat(IMAVChat, v17, v18, v19, v20);
    v26 = objc_msgSend__connectedChat(IMAVChat, v22, v23, v24, v25);
    v31 = objc_msgSend__avChatArray(IMAVChat, v27, v28, v29, v30);
    *buf = 138413058;
    v75 = v16;
    v76 = 2112;
    v77 = v21;
    v78 = 2112;
    v79 = v26;
    v80 = 2112;
    v81 = v31;
    _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "Active chat: %@, Non final chat: %@, Connected chat: %@, All chats: %@", buf, 0x2Au);
  }

  v36 = objc_msgSend__nonFinalChat(IMAVChat, v32, v33, v34, v35);

  if (v36)
  {
    v41 = sub_254761764();
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
LABEL_25:

      v60 = objc_msgSend_sharedInstance(IMAVController, v62, v63, v64, v65);
      objc_msgSend_declineVCRequestWithBuddy_response_vcProps_forAccount_conferenceID_(v60, v66, v8, 2, v9, 0, v7);
      v61 = 1;
      goto LABEL_26;
    }

    v46 = objc_msgSend__nonFinalChat(IMAVChat, v42, v43, v44, v45);
    *buf = 138412290;
    v75 = v46;
    v47 = "Simple nonFinalChat: %@";
    v48 = v41;
LABEL_23:
    _os_log_impl(&dword_254743000, v48, OS_LOG_TYPE_DEFAULT, v47, buf, 0xCu);
LABEL_24:

    goto LABEL_25;
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v41 = objc_msgSend__avChatArray(IMAVChat, v37, v38, v39, v40, 0);
  v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v49, &v69, v73, 16);
  if (v50)
  {
    v55 = v50;
    v56 = *v70;
LABEL_10:
    v57 = 0;
    while (1)
    {
      if (*v70 != v56)
      {
        objc_enumerationMutation(v41);
      }

      v58 = *(*(&v69 + 1) + 8 * v57);
      if (objc_msgSend_isActive(v58, v51, v52, v53, v54))
      {
        break;
      }

      if (v55 == ++v57)
      {
        v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v51, &v69, v73, 16);
        if (v55)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    v46 = sub_254761764();
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    v75 = v58;
    v47 = "chat that was active: %@";
    v48 = v46;
    goto LABEL_23;
  }

LABEL_16:

  v59 = sub_254761764();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254743000, v59, OS_LOG_TYPE_DEFAULT, "[IMAVController hasRunningConference] claimed to have an active chat, but we really don't... *******FILE THIS PLEASE*****", buf, 2u);
  }

  v60 = sub_254761764();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254743000, v60, OS_LOG_TYPE_DEFAULT, "[WARN] [IMAVController hasRunningConference] claimed to have an active chat, but we really don't...", buf, 2u);
  }

  v61 = 0;
LABEL_26:

  v67 = *MEMORY[0x277D85DE8];
  return v61;
}

- (void)_handleInviteFailed:(id)a3 fromHandle:(id)a4 conference:(id)a5 properties:(id)a6 reason:(int64_t)a7
{
  v57 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18 = objc_msgSend_sharedInstance(IMAVController, v14, v15, v16, v17);
  v44 = v13;
  v45 = v12;
  v46 = v10;
  objc_msgSend_declineVCRequestWithBuddy_response_vcProps_forAccount_conferenceID_(v18, v19, v11, 1, v13, v10, v12);

  v20 = sub_254761764();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v54 = v11;
    v55 = 2048;
    v56 = a7;
    _os_log_impl(&dword_254743000, v20, OS_LOG_TYPE_DEFAULT, "Notifying delegates about inviteFailedFromIMHandle %@ reason %ld", buf, 0x16u);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v25 = objc_msgSend_sharedInstance(IMAVController, v21, v22, v23, v24);
  v30 = objc_msgSend_delegates(v25, v26, v27, v28, v29);

  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v48, v52, 16);
  if (v32)
  {
    v33 = v32;
    v34 = *v49;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v49 != v34)
        {
          objc_enumerationMutation(v30);
        }

        v36 = *(*(&v48 + 1) + 8 * i);
        v37 = objc_opt_respondsToSelector();
        v38 = sub_254761764();
        v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
        if (v37)
        {
          if (v39)
          {
            *buf = 138412290;
            v54 = v36;
            _os_log_impl(&dword_254743000, v38, OS_LOG_TYPE_DEFAULT, " => Dispatching to delegate: %@", buf, 0xCu);
          }

          objc_msgSend_inviteFailedFromIMHandle_reason_(v36, v40, v11, a7, v41);
        }

        else
        {
          if (v39)
          {
            *buf = 138412290;
            v54 = v36;
            _os_log_impl(&dword_254743000, v38, OS_LOG_TYPE_DEFAULT, " => **NOT** Dispatching to delegate: %@", buf, 0xCu);
          }
        }
      }

      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v42, &v48, v52, 16);
    }

    while (v33);
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (void)_setUpChat:(id)a3 isAudioOnly:(BOOL)a4 conference:(id)a5 properties:(id)a6 protectedType:(int64_t)a7 avChat:(id)a8
{
  v50 = *MEMORY[0x277D85DE8];
  v9 = a8;
  objc_msgSend_beginChat(v9, v10, v11, v12, v13);
  v14 = sub_254761764();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v49 = v9;
    _os_log_impl(&dword_254743000, v14, OS_LOG_TYPE_DEFAULT, "Notifying delegates about invitedToIMAVChat %@", buf, 0xCu);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v19 = objc_msgSend_sharedInstance(IMAVController, v15, v16, v17, v18);
  v24 = objc_msgSend_delegates(v19, v20, v21, v22, v23);

  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v43, v47, 16);
  if (v26)
  {
    v27 = v26;
    v28 = *v44;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v44 != v28)
        {
          objc_enumerationMutation(v24);
        }

        v30 = *(*(&v43 + 1) + 8 * i);
        v31 = objc_opt_respondsToSelector();
        v32 = sub_254761764();
        v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
        if (v31)
        {
          if (v33)
          {
            *buf = 138412290;
            v49 = v30;
            _os_log_impl(&dword_254743000, v32, OS_LOG_TYPE_DEFAULT, " => Dispatching to delegate: %@", buf, 0xCu);
          }

          if (a7 == 1)
          {
            objc_msgSend_invitedToIMAVChat_(v30, v34, v9, v35, v36);
          }

          else
          {
            objc_msgSend_receivedProtectedInitiate_(v30, v34, v9, v35, v36);
          }
        }

        else
        {
          if (v33)
          {
            *buf = 138412290;
            v49 = v30;
            _os_log_impl(&dword_254743000, v32, OS_LOG_TYPE_DEFAULT, " => **NOT** Dispatching to delegate: %@", buf, 0xCu);
          }
        }
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v37, &v43, v47, 16);
    }

    while (v27);
  }

  objc_msgSend_acceptInvitation(v9, v38, v39, v40, v41);
  v42 = *MEMORY[0x277D85DE8];
}

- (void)_checkConferenceCapabilities:(id)a3
{
  v22 = a3;
  v7 = objc_msgSend_allBuddyListIMHandles(MEMORY[0x277D18D20], v3, v4, v5, v6);
  v11 = objc_msgSend_indexOfObjectIdenticalTo_(v7, v8, v22, v9, v10);

  if ((objc_msgSend_hasConferencing(v22, v12, v13, v14, v15) & 1) == 0 && v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_setCapabilities_(v22, v16, 0x1000000E0000, v17, v18);
    objc_msgSend_setPersonStatus_(v22, v19, 4, v20, v21);
  }
}

- (void)_handleIncomingWithAccount:(id)a3 fromHandle:(id)a4 conference:(id)a5 properties:(id)a6
{
  v301 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v297 = objc_msgSend__avChatWaitingForReplyFromIMHandle_orConferenceID_(IMAVChat, v13, v10, v11, v14);
  if (v11)
  {
    v296 = objc_msgSend__avChatWithConferenceID_(IMAVChat, v15, v11, v16, v17);
  }

  else
  {
    v296 = 0;
  }

  v295 = objc_msgSend__avChatConnectingFromIMHandle_(IMAVChat, v15, v10, v16, v17);
  v22 = objc_msgSend_sharedInstance(IMAVController, v18, v19, v20, v21);
  v27 = objc_msgSend_blockMultipleIncomingInvitations(v22, v23, v24, v25, v26);

  v32 = objc_msgSend_sharedInstance(IMAVController, v28, v29, v30, v31);
  v37 = objc_msgSend_blockIncomingInvitationsDuringCall(v32, v33, v34, v35, v36);

  v41 = objc_msgSend_objectForKey_(v12, v38, *MEMORY[0x277D194C8], v39, v40);
  v293 = objc_msgSend_BOOLValue(v41, v42, v43, v44, v45);

  v46 = sub_254761764();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    if (v27)
    {
      v47 = @"NO";
    }

    else
    {
      v47 = @"YES";
    }

    *buf = 138412290;
    *&buf[4] = v47;
    _os_log_impl(&dword_254743000, v46, OS_LOG_TYPE_DEFAULT, "Allowing multiple invitations: %@", buf, 0xCu);
  }

  v48 = sub_254761764();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    if (v37)
    {
      v49 = @"NO";
    }

    else
    {
      v49 = @"YES";
    }

    *buf = 138412290;
    *&buf[4] = v49;
    _os_log_impl(&dword_254743000, v48, OS_LOG_TYPE_DEFAULT, "Allowing incoming invitations during call: %@", buf, 0xCu);
  }

  v50 = sub_254761764();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v55 = objc_msgSend_sharedInstance(IMAVController, v51, v52, v53, v54);
    if (objc_msgSend_hasRunningConference(v55, v56, v57, v58, v59))
    {
      v60 = @"YES";
    }

    else
    {
      v60 = @"NO";
    }

    *buf = 138412290;
    *&buf[4] = v60;
    _os_log_impl(&dword_254743000, v50, OS_LOG_TYPE_DEFAULT, "Has running conference %@", buf, 0xCu);
  }

  v64 = objc_msgSend_objectForKey_(v12, v61, *MEMORY[0x277D194D8], v62, v63);
  if (objc_msgSend_BOOLValue(v64, v65, v66, v67, v68))
  {
    v73 = sub_254761764();
    v74 = os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT);
    v76 = v296;
    v75 = v297;
    if (v296)
    {
      v77 = v9;
      if (v74)
      {
        *buf = 138412546;
        *&buf[4] = v296;
        v299 = 2112;
        v300 = v11;
        _os_log_impl(&dword_254743000, v73, OS_LOG_TYPE_DEFAULT, "We already have a chat running for %@  (%@)", buf, 0x16u);
      }

      v81 = objc_msgSend_participantMatchingIMHandle_(v296, v78, v10, v79, v80);
      v82 = sub_254761764();
      v83 = os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT);
      if (v81)
      {
        if (v83)
        {
          *buf = 138412290;
          *&buf[4] = v81;
          _os_log_impl(&dword_254743000, v82, OS_LOG_TYPE_DEFAULT, "Re-initiate for: %@", buf, 0xCu);
        }

        if (objc_msgSend_hasConnectingSessions(v81, v84, v85, v86, v87) && (objc_msgSend_localParticipant(v296, v88, v89, v90, v91), v92 = objc_claimAutoreleasedReturnValue(), isInitiator = objc_msgSend_isInitiator(v92, v93, v94, v95, v96), v92, v76 = v296, isInitiator))
        {
          v82 = sub_254761764();
          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v98 = "We already started a re-invite and we are the initiator dropping invite on the floor";
LABEL_58:
            _os_log_impl(&dword_254743000, v82, OS_LOG_TYPE_DEFAULT, v98, buf, 2u);
          }
        }

        else
        {
          v82 = objc_msgSend__processIncomingCallProperties_(v81, v88, v12, v90, v91);
          objc_msgSend_setIsReinitiate_(v82, v183, 1, v184, v185);
          objc_msgSend__sendResponse_callInfo_(v81, v186, 0, v82, v187);
        }
      }

      else if (v83)
      {
        *buf = 0;
        v98 = "[WARN] No participant found to re-initiate";
        goto LABEL_58;
      }

      v126 = v295;
      goto LABEL_115;
    }

    v77 = v9;
    v126 = v295;
    if (v74)
    {
      *buf = 138412290;
      *&buf[4] = v11;
      _os_log_impl(&dword_254743000, v73, OS_LOG_TYPE_DEFAULT, "This is is a re-initiate and we do not have a chat running for CID (%@)", buf, 0xCu);
    }

LABEL_93:

    goto LABEL_115;
  }

  v75 = v297;
  if (v297)
  {
    v99 = sub_254761764();
    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
    {
      v104 = objc_msgSend_otherIMHandle(v297, v100, v101, v102, v103);
      v109 = objc_msgSend_ID(v104, v105, v106, v107, v108);
      *buf = 138412546;
      *&buf[4] = v109;
      v299 = 2112;
      v300 = v297;
      _os_log_impl(&dword_254743000, v99, OS_LOG_TYPE_DEFAULT, "We already have a chat awaiting reply from %@  (%@)", buf, 0x16u);
    }

    v114 = objc_msgSend_remoteParticipants(v297, v110, v111, v112, v113);
    v119 = objc_msgSend_count(v114, v115, v116, v117, v118);

    if (v119 >= 2)
    {
      v124 = objc_msgSend_sharedInstance(IMAVController, v120, v121, v122, v123);
      v77 = v9;
      objc_msgSend_declineVCRequestWithBuddy_response_vcProps_forAccount_conferenceID_(v124, v125, v10, 2, v12, v9, v11);

      v126 = v295;
      v76 = v296;
      goto LABEL_115;
    }

    v290 = v64;
    v140 = objc_msgSend_participantMatchingIMHandle_(v297, v120, v10, v122, v123);
    v289 = v140 != 0;
    v288 = objc_msgSend_objectForKey_(v12, v141, *MEMORY[0x277D194E0], v142, v143);
    v287 = objc_msgSend_dictionaryWithPlistData_(MEMORY[0x277CBEAC0], v144, v288, v145, v146);
    v150 = objc_msgSend_objectForKey_(v287, v147, *MEMORY[0x277D19568], v148, v149);
    v155 = objc_msgSend_sessionID(v297, v151, v152, v153, v154);
    v286 = v150;
    v160 = objc_msgSend_unsignedIntValue(v150, v156, v157, v158, v159);
    v161 = sub_254761764();
    v162 = os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT);
    v292 = v140;
    if (v140)
    {
      if (v162)
      {
        *buf = 0;
        _os_log_impl(&dword_254743000, v161, OS_LOG_TYPE_DEFAULT, "We have cross invites", buf, 2u);
      }

      if (v155 == v160)
      {
        v77 = v9;
        v76 = v296;
        v64 = v290;
        if (!v11)
        {
          goto LABEL_111;
        }

        v167 = objc_msgSend_conferenceID(v297, v163, v164, v165, v166);

        if (!v167)
        {
          goto LABEL_111;
        }

        v168 = sub_254761764();
        if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_254743000, v168, OS_LOG_TYPE_DEFAULT, "Using conference IDs to pick the host", buf, 2u);
        }

        v173 = objc_msgSend_conferenceID(v297, v169, v170, v171, v172);
        isEqualToIgnoringCase = objc_msgSend_isEqualToIgnoringCase_(v11, v174, v173, v175, v176);

        if (isEqualToIgnoringCase)
        {
          v182 = 0;
        }

        else
        {
          v268 = objc_msgSend_conferenceID(v297, v178, v179, v180, v181);
          v182 = objc_msgSend_compare_(v11, v269, v268, v270, v271) == 1;
        }

        v272 = sub_254761764();
        if (os_log_type_enabled(v272, OS_LOG_TYPE_DEFAULT))
        {
          v277 = objc_msgSend_conferenceID(v297, v273, v274, v275, v276);
          *buf = 138412290;
          *&buf[4] = v277;
          _os_log_impl(&dword_254743000, v272, OS_LOG_TYPE_DEFAULT, "Cross invites: our   conference ID %@", buf, 0xCu);
        }

        v278 = sub_254761764();
        v76 = v296;
        if (os_log_type_enabled(v278, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v11;
          _os_log_impl(&dword_254743000, v278, OS_LOG_TYPE_DEFAULT, "Cross invites: their conference ID %@", buf, 0xCu);
        }

        if (!v182)
        {
LABEL_111:
          v200 = sub_254761764();
          v126 = v295;
          if (os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_254743000, v200, OS_LOG_TYPE_DEFAULT, "Cross invites: We are the host, declining incoming invite", buf, 2u);
          }

          v75 = v297;
LABEL_114:

          v283 = objc_msgSend_sharedInstance(IMAVController, v279, v280, v281, v282);
          objc_msgSend_declineVCRequestWithBuddy_response_vcProps_forAccount_conferenceID_(v283, v284, v10, 2, v12, v77, v11);

          goto LABEL_115;
        }
      }

      else
      {
        v201 = sub_254761764();
        v76 = v296;
        if (os_log_type_enabled(v201, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_254743000, v201, OS_LOG_TYPE_DEFAULT, "Using session IDs to pick the host", buf, 2u);
        }

        v202 = sub_254761764();
        if (os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v155;
          _os_log_impl(&dword_254743000, v202, OS_LOG_TYPE_DEFAULT, "Cross invites: our   session ID %u", buf, 8u);
        }

        v203 = sub_254761764();
        if (os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v160;
          _os_log_impl(&dword_254743000, v203, OS_LOG_TYPE_DEFAULT, "Cross invites: their session ID %u", buf, 8u);
        }

        v204 = v155 >= v160;
        v77 = v9;
        v64 = v290;
        if (v204)
        {
          goto LABEL_111;
        }
      }

      v205 = sub_254761764();
      v126 = v295;
      if (os_log_type_enabled(v205, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_254743000, v205, OS_LOG_TYPE_DEFAULT, "They are the host, cancelling our outgoing invite", buf, 2u);
      }

      v75 = v297;
      v199 = self;
    }

    else
    {
      if (v162)
      {
        *buf = 0;
        _os_log_impl(&dword_254743000, v161, OS_LOG_TYPE_DEFAULT, "Buddy not found, this is not a cross invite", buf, 2u);
      }

      v77 = v9;
      v126 = v295;
      v76 = v296;
      v199 = self;
      v64 = v290;
      if (v37)
      {
        v200 = sub_254761764();
        if (os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_254743000, v200, OS_LOG_TYPE_DEFAULT, "Not allowing incoming invitation during call, declining...", buf, 2u);
        }

        goto LABEL_114;
      }
    }

    goto LABEL_79;
  }

  v126 = v295;
  if (v295)
  {
    v127 = v37;
  }

  else
  {
    v127 = 1;
  }

  if ((v127 & 1) == 0)
  {
    v188 = sub_254761764();
    v292 = v188;
    if (os_log_type_enabled(v188, OS_LOG_TYPE_DEFAULT))
    {
      v193 = objc_msgSend_otherIMHandle(v295, v189, v190, v191, v192);
      v198 = objc_msgSend_ID(v193, v194, v195, v196, v197);
      *buf = 138412546;
      *&buf[4] = v198;
      v299 = 2112;
      v300 = v295;
      _os_log_impl(&dword_254743000, v188, OS_LOG_TYPE_DEFAULT, "We already have a chat connecting from %@  (%@), accepting incoming invite and declining existing chat", buf, 0x16u);
    }

    v289 = 1;
    v77 = v9;
    v76 = v296;
    v199 = self;
LABEL_79:
    v206 = v293;

LABEL_80:
    objc_msgSend__checkConferenceCapabilities_(v199, v207, v10, v208, v209);
    goto LABEL_81;
  }

  if (v37)
  {
    v128 = objc_msgSend_sharedInstance(IMAVCallManager, v69, v70, v71, v72);
    v133 = objc_msgSend_callState(v128, v129, v130, v131, v132);

    if (v133 == 3)
    {
      v138 = sub_254761764();
      v77 = v9;
      v76 = v296;
      v75 = 0;
      if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v11;
        v139 = "We have a call we're making, declining conference ID: %@";
LABEL_91:
        _os_log_impl(&dword_254743000, v138, OS_LOG_TYPE_DEFAULT, v139, buf, 0xCu);
        goto LABEL_92;
      }

      goto LABEL_92;
    }

    v231 = objc_msgSend_sharedInstance(IMAVCallManager, v134, v135, v136, v137);
    v236 = objc_msgSend_callState(v231, v232, v233, v234, v235);

    if (v236 == 1)
    {
      v138 = sub_254761764();
      v77 = v9;
      v76 = v296;
      v75 = 0;
      if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v11;
        v139 = "We have a call we're invited to, declining conference ID: %@";
        goto LABEL_91;
      }

LABEL_92:

      v73 = objc_msgSend_sharedInstance(IMAVController, v241, v242, v243, v244);
      objc_msgSend_declineVCRequestWithBuddy_response_vcProps_forAccount_conferenceID_(v73, v245, v10, 2, v12, 0, v11);
      goto LABEL_93;
    }

    v246 = objc_msgSend_sharedInstance(IMAVController, v237, v238, v239, v240);
    hasRunningConference = objc_msgSend_hasRunningConference(v246, v247, v248, v249, v250);

    v75 = 0;
    if (hasRunningConference)
    {
      v252 = objc_msgSend__notAllowingInvitesDuringCallAndRunningConference_fromHandle_properties_(self, v69, v11, v10, v12);
      v77 = v9;
      v199 = self;
      v76 = v296;
LABEL_103:
      v206 = v293;
      if (v252)
      {
        goto LABEL_115;
      }

      v289 = 0;
      goto LABEL_80;
    }
  }

  if (v27)
  {
    v253 = objc_msgSend__incomingInvitations(IMAVChat, v69, v70, v71, v72);
    if (objc_msgSend_count(v253, v254, v255, v256, v257))
    {

      v77 = v9;
LABEL_102:
      v199 = self;
      v252 = objc_msgSend__notAllowingInvitesAndChatInvitesNonZero_fromHandle_properties_(self, v69, v11, v10, v12);
      v126 = v295;
      v76 = v296;
      goto LABEL_103;
    }

    v262 = objc_msgSend__outgoingInvitations(IMAVChat, v258, v259, v260, v261);
    v267 = objc_msgSend_count(v262, v263, v264, v265, v266);

    v77 = v9;
    if (v267)
    {
      goto LABEL_102;
    }

    v289 = 0;
    v126 = v295;
    v76 = v296;
  }

  else
  {
    v289 = 0;
    v77 = v9;
    v76 = v296;
  }

  v199 = self;
  v206 = v293;
  objc_msgSend__checkConferenceCapabilities_(self, v69, v10, v71, v72);
LABEL_81:
  *buf = 0;
  if (objc_msgSend__isReady_reason_(v199, v210, v206, buf, v211))
  {
    if (v10)
    {
      v291 = v64;
      v213 = [IMAVChat alloc];
      v215 = v206;
      isVideo_callerProperties = objc_msgSend_initIncomingFrom_isVideo_callerProperties_(v213, v214, v10, v206 ^ 1, v12);
      objc_msgSend__setConferenceID_(isVideo_callerProperties, v217, v11, v218, v219);
      if (v289)
      {
        objc_msgSend__setUpChat_isAudioOnly_conference_properties_protectedType_avChat_(v199, v220, v10, v215, v11, v12, 1, isVideo_callerProperties);
        objc_msgSend_cancelInvitation(v75, v223, v224, v225, v226);
        objc_msgSend_endChat(v126, v227, v228, v229, v230);
      }

      else
      {
        objc_msgSend__handleIncomingAVChatForNotification_(v199, v220, isVideo_callerProperties, v221, v222);
      }

      v64 = v291;
    }
  }

  else
  {
    objc_msgSend__handleInviteFailed_fromHandle_conference_properties_reason_(v199, v212, v77, v10, v11, v12, *buf);
  }

LABEL_115:

  v285 = *MEMORY[0x277D85DE8];
}

- (void)_handleProtectedIncomingWithAccount:(id)a3 fromHandle:(id)a4 conference:(id)a5 properties:(id)a6
{
  v144 = *MEMORY[0x277D85DE8];
  v138 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v16 = objc_msgSend__avChatConnectingFromIMHandle_(IMAVChat, v13, v10, v14, v15);
  v19 = objc_msgSend__avChatWaitingForReplyFromIMHandle_orConferenceID_(IMAVChat, v17, v10, v11, v18);
  v24 = objc_msgSend_sharedInstance(IMAVController, v20, v21, v22, v23);
  v29 = objc_msgSend_blockMultipleIncomingInvitations(v24, v25, v26, v27, v28);

  v34 = objc_msgSend_sharedInstance(IMAVController, v30, v31, v32, v33);
  v39 = objc_msgSend_blockIncomingInvitationsDuringCall(v34, v35, v36, v37, v38);

  v43 = objc_msgSend_objectForKey_(v12, v40, *MEMORY[0x277D194C8], v41, v42);
  v137 = objc_msgSend_BOOLValue(v43, v44, v45, v46, v47);

  v48 = sub_254761764();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    v136 = v11;
    v53 = v19;
    v54 = v16;
    if (v29)
    {
      v55 = @"NO";
    }

    else
    {
      v55 = @"YES";
    }

    if (v39)
    {
      v56 = @"NO";
    }

    else
    {
      v56 = @"YES";
    }

    objc_msgSend_sharedInstance(IMAVController, v49, v50, v51, v52);
    v57 = v135 = v39;
    hasRunningConference = objc_msgSend_hasRunningConference(v57, v58, v59, v60, v61);
    *buf = 138412802;
    v63 = @"YES";
    if (!hasRunningConference)
    {
      v63 = @"NO";
    }

    *&buf[4] = v55;
    v16 = v54;
    v19 = v53;
    v140 = 2112;
    v141 = v56;
    v11 = v136;
    v142 = 2112;
    v143 = v63;
    _os_log_impl(&dword_254743000, v48, OS_LOG_TYPE_DEFAULT, "Allowing multiple invitations: %@, Allowing incoming invitations during call: %@, Has running conference %@", buf, 0x20u);

    v39 = v135;
  }

  if (!v39)
  {
    goto LABEL_23;
  }

  v68 = objc_msgSend_sharedInstance(IMAVCallManager, v64, v65, v66, v67);
  v73 = objc_msgSend_callState(v68, v69, v70, v71, v72);

  if (v73 == 3)
  {
    v78 = sub_254761764();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v11;
      v79 = "We have a call we're making, declining conference ID: %@";
LABEL_18:
      _os_log_impl(&dword_254743000, v78, OS_LOG_TYPE_DEFAULT, v79, buf, 0xCu);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v80 = objc_msgSend_sharedInstance(IMAVCallManager, v74, v75, v76, v77);
  v85 = objc_msgSend_callState(v80, v81, v82, v83, v84);

  if (v85 == 1)
  {
    v78 = sub_254761764();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v11;
      v79 = "We have a call we're invited to, declining conference ID: %@";
      goto LABEL_18;
    }

LABEL_19:

    isVideo_callerProperties = objc_msgSend_sharedInstance(IMAVController, v90, v91, v92, v93);
    objc_msgSend_declineVCRequestWithBuddy_response_vcProps_forAccount_conferenceID_(isVideo_callerProperties, v95, v10, 2, v12, 0, v11);
LABEL_31:

    goto LABEL_33;
  }

  v96 = objc_msgSend_sharedInstance(IMAVController, v86, v87, v88, v89);
  v101 = objc_msgSend_hasRunningConference(v96, v97, v98, v99, v100);

  if (!v101)
  {
LABEL_23:
    if (!v29)
    {
      goto LABEL_28;
    }

    v102 = objc_msgSend__incomingInvitations(IMAVChat, v64, v65, v66, v67);
    if (objc_msgSend_count(v102, v103, v104, v105, v106))
    {
    }

    else
    {
      v111 = objc_msgSend__outgoingInvitations(IMAVChat, v107, v108, v109, v110);
      v116 = objc_msgSend_count(v111, v112, v113, v114, v115);

      if (!v116)
      {
        goto LABEL_28;
      }
    }

    if (objc_msgSend__notAllowingInvitesAndChatInvitesNonZero_fromHandle_properties_(self, v64, v11, v10, v12))
    {
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  if (objc_msgSend__notAllowingInvitesDuringCallAndRunningConference_fromHandle_properties_(self, v64, v11, v10, v12))
  {
    goto LABEL_33;
  }

LABEL_28:
  objc_msgSend__checkConferenceCapabilities_(self, v64, v10, v66, v67);
  *buf = 0;
  if (!objc_msgSend__isReady_reason_(self, v117, v137, buf, v118))
  {
    objc_msgSend__handleInviteFailed_fromHandle_conference_properties_reason_(self, v119, v138, v10, v11, v12, *buf);
    goto LABEL_33;
  }

  if (v10)
  {
    v120 = [IMAVChat alloc];
    isVideo_callerProperties = objc_msgSend_initIncomingFrom_isVideo_callerProperties_(v120, v121, v10, v137 ^ 1, v12);
    objc_msgSend__setConferenceID_(isVideo_callerProperties, v122, v11, v123, v124);
    objc_msgSend__setUpChat_isAudioOnly_conference_properties_protectedType_avChat_(self, v125, v10, v137, v11, v12, 0, isVideo_callerProperties);
    objc_msgSend_cancelInvitation(v19, v126, v127, v128, v129);
    objc_msgSend_endChat(v16, v130, v131, v132, v133);
    goto LABEL_31;
  }

LABEL_33:

  v134 = *MEMORY[0x277D85DE8];
}

- (void)account:(id)a3 conference:(id)a4 remoteUser:(id)a5 properties:(id)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = sub_254761764();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 138412290;
    v31 = v11;
    _os_log_impl(&dword_254743000, v14, OS_LOG_TYPE_DEFAULT, "Received protected initiate in IMAVHandler for remoteUser %@", &v30, 0xCu);
  }

  v19 = objc_msgSend_sharedInstance(MEMORY[0x277D18D28], v15, v16, v17, v18);
  v23 = objc_msgSend_accountForUniqueID_(v19, v20, v13, v21, v22);

  v28 = objc_msgSend_imHandleWithInfo_(v23, v24, v11, v25, v26);
  if (v28)
  {
    objc_msgSend__handleProtectedIncomingWithAccount_fromHandle_conference_properties_(self, v27, v23, v28, v10, v12);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)account:(id)a3 conference:(id)a4 receivedInvitationFrom:(id)a5 properties:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = sub_254761764();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 138412546;
    v31 = v11;
    v32 = 2112;
    v33 = v10;
    _os_log_impl(&dword_254743000, v14, OS_LOG_TYPE_DEFAULT, "Incoming VC Invitation from: %@   conference ID: %@", &v30, 0x16u);
  }

  v19 = objc_msgSend_sharedInstance(MEMORY[0x277D18D28], v15, v16, v17, v18);
  v23 = objc_msgSend_accountForUniqueID_(v19, v20, v13, v21, v22);

  v27 = objc_msgSend_imHandleWithInfo_(v23, v24, v11, v25, v26);
  objc_msgSend__handleIncomingWithAccount_fromHandle_conference_properties_(self, v28, v23, v27, v10, v12);

  v29 = *MEMORY[0x277D85DE8];
}

- (void)account:(id)a3 conference:(id)a4 receivedResponseToInvitationFrom:(id)a5 properties:(id)a6
{
  v81 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a6;
  v11 = MEMORY[0x277D18D28];
  v12 = a5;
  v13 = a3;
  v18 = objc_msgSend_sharedInstance(v11, v14, v15, v16, v17);
  v22 = objc_msgSend_accountForUniqueID_(v18, v19, v13, v20, v21);

  v76 = v22;
  v26 = objc_msgSend_imHandleWithInfo_(v22, v23, v12, v24, v25);

  v27 = sub_254761764();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v32 = objc_msgSend_ID(v26, v28, v29, v30, v31);
    *buf = 138412290;
    v78 = v32;
    _os_log_impl(&dword_254743000, v27, OS_LOG_TYPE_DEFAULT, "Incoming VC Response from: %@", buf, 0xCu);
  }

  v36 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEB38], v33, v10, v34, v35);
  v40 = v36;
  if (v26)
  {
    objc_msgSend_setObject_forKey_(v36, v37, v26, *MEMORY[0x277D19548], v39);
  }

  v41 = objc_msgSend_objectForKey_(v10, v37, *MEMORY[0x277D19558], v38, v39);
  v45 = objc_msgSend_dictionaryWithPlistData_(MEMORY[0x277CBEAC0], v42, v41, v43, v44);
  v49 = objc_msgSend_objectForKey_(v45, v46, *MEMORY[0x277D19568], v47, v48);
  v57 = objc_msgSend_unsignedIntValue(v49, v50, v51, v52, v53);
  if (!v9)
  {
    v62 = 0;
LABEL_15:
    v67 = objc_msgSend__bestGuessAVChatWithIMHandle_conferenceID_sessionID_properties_(IMAVChat, v54, v26, v9, v57, 0);
    objc_msgSend__responseToVCInvite_(v67, v72, v40, v73, v74);
    goto LABEL_16;
  }

  v58 = objc_msgSend__avChatWithConferenceID_(IMAVChat, v54, v9, v55, v56);
  v62 = v58;
  if (!v58 || objc_msgSend_state(v58, v54, v59, v60, v61) != 4)
  {
    goto LABEL_15;
  }

  v63 = sub_254761764();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v78 = v62;
    v79 = 2112;
    v80 = v9;
    _os_log_impl(&dword_254743000, v63, OS_LOG_TYPE_DEFAULT, "We already have a chat running for %@  (%@)", buf, 0x16u);
  }

  v67 = objc_msgSend_participantMatchingIMHandle_(v62, v64, v26, v65, v66);
  v68 = sub_254761764();
  v69 = os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT);
  if (v67)
  {
    if (v69)
    {
      *buf = 138412290;
      v78 = v67;
      _os_log_impl(&dword_254743000, v68, OS_LOG_TYPE_DEFAULT, "Accept re-initiate for: %@", buf, 0xCu);
    }

    objc_msgSend__processResponseDictionary_allowSecondConnection_(v67, v70, v10, 1, v71);
  }

  else
  {
    if (v69)
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v68, OS_LOG_TYPE_DEFAULT, "[WARN] No participant found to accept re-initiate", buf, 2u);
    }
  }

LABEL_16:

  v75 = *MEMORY[0x277D85DE8];
}

- (void)account:(id)a3 conference:(id)a4 receivedCancelInvitationFrom:(id)a5 properties:(id)a6
{
  v76 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = MEMORY[0x277D18D28];
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v18 = objc_msgSend_sharedInstance(v10, v14, v15, v16, v17);
  v22 = objc_msgSend_accountForUniqueID_(v18, v19, v13, v20, v21);

  v26 = objc_msgSend_imHandleWithInfo_(v22, v23, v12, v24, v25);

  v27 = sub_254761764();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v32 = objc_msgSend_ID(v26, v28, v29, v30, v31);
    v72 = 138412290;
    v73 = v32;
    _os_log_impl(&dword_254743000, v27, OS_LOG_TYPE_DEFAULT, "Incoming VC Cancel from: %@", &v72, 0xCu);
  }

  v36 = objc_msgSend_objectForKey_(v11, v33, *MEMORY[0x277D19558], v34, v35);

  v40 = objc_msgSend_dictionaryWithPlistData_(MEMORY[0x277CBEAC0], v37, v36, v38, v39);
  v44 = objc_msgSend_objectForKey_(v40, v41, *MEMORY[0x277D19568], v42, v43);
  v48 = objc_msgSend_objectForKey_(v40, v45, *MEMORY[0x277D19550], v46, v47);
  v53 = objc_msgSend_unsignedIntValue(v44, v49, v50, v51, v52);
  v55 = objc_msgSend__bestGuessAVChatWithIMHandle_conferenceID_sessionID_properties_(IMAVChat, v54, v26, v9, v53, 0);
  v56 = sub_254761764();
  v57 = os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
  if (v55)
  {
    if (v57)
    {
      v72 = 138412290;
      v73 = v55;
      _os_log_impl(&dword_254743000, v56, OS_LOG_TYPE_DEFAULT, "Found chat to cancel: %@", &v72, 0xCu);
    }

    v66 = objc_msgSend_intValue(v48, v62, v63, v64, v65);
    if (v66 == 10)
    {
      v69 = 29;
    }

    else
    {
      v69 = 1;
    }

    if (v66 == 8)
    {
      objc_msgSend__cancelInvitationWithReason_error_(v55, v67, 27, 0, v68);
    }

    else
    {
      objc_msgSend__cancelInvitationWithReason_error_(v55, v67, v69, 0, v68);
    }
  }

  else
  {
    if (v57)
    {
      v70 = objc_msgSend_ID(v26, v58, v59, v60, v61);
      v72 = 138412546;
      v73 = v9;
      v74 = 2112;
      v75 = v70;
      _os_log_impl(&dword_254743000, v56, OS_LOG_TYPE_DEFAULT, "[WARN] Found no VC chat to cancel for conference: %@ with buddy: %@", &v72, 0x16u);
    }
  }

  v71 = *MEMORY[0x277D85DE8];
}

- (void)account:(id)a3 conference:(id)a4 peerIDChangedFromID:(id)a5 toID:(id)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = sub_254761764();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412802;
    v24 = v9;
    v25 = 2112;
    v26 = v11;
    v27 = 2112;
    v28 = v12;
    _os_log_impl(&dword_254743000, v13, OS_LOG_TYPE_DEFAULT, "Account: %@    Requested changing of Peer ID from: %@  to %@", &v23, 0x20u);
  }

  v17 = objc_msgSend__avChatWithConferenceID_(IMAVChat, v14, v10, v15, v16);
  v20 = v17;
  if (v17)
  {
    objc_msgSend__peerID_changedTo_(v17, v18, v11, v12, v19);
  }

  else
  {
    v21 = sub_254761764();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138413058;
      v24 = v9;
      v25 = 2112;
      v26 = v10;
      v27 = 2112;
      v28 = v11;
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&dword_254743000, v21, OS_LOG_TYPE_DEFAULT, "%@ requested a change of conference (%@) peer ID: %@  to: %@  but it doesn't exist!", &v23, 0x2Au);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)account:(id)a3 conference:(id)a4 changedToNewConferenceID:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_254761764();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412802;
    v23 = v7;
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "Account: %@    Requested changing of conference ID: %@  to %@", &v22, 0x20u);
  }

  v14 = objc_msgSend__avChatWithConferenceID_(IMAVChat, v11, v8, v12, v13);
  v15 = sub_254761764();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      v22 = 138412290;
      v23 = v9;
      _os_log_impl(&dword_254743000, v15, OS_LOG_TYPE_DEFAULT, "VC Conference ID Set to: %@", &v22, 0xCu);
    }

    objc_msgSend__setConferenceID_(v14, v17, v9, v18, v19);
  }

  else
  {
    if (v16)
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_254743000, v15, OS_LOG_TYPE_DEFAULT, "** VC Conference ID could not be set!", &v22, 2u);
    }

    v20 = sub_254761764();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412802;
      v23 = v7;
      v24 = 2112;
      v25 = v8;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&dword_254743000, v20, OS_LOG_TYPE_DEFAULT, "%@ requested a change of conference ID: %@  to: %@  but it doesn't exist!", &v22, 0x20u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_notifyOfIncomingInvitationFor:(id)a3 notifyInvitationListeners:(BOOL)a4
{
  v4 = a4;
  v65 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = sub_254761764();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v4)
    {
      v7 = @"YES";
    }

    *buf = 138412546;
    v62 = v5;
    v63 = 2112;
    v64 = v7;
    _os_log_impl(&dword_254743000, v6, OS_LOG_TYPE_DEFAULT, "chat %@ notifyInvitationListeners %@", buf, 0x16u);
  }

  if (v4)
  {
    if (!objc_msgSend_state(v5, v8, v9, v10, v11))
    {
      v55 = v5;
      objc_msgSend_beginChat(v5, v12, v13, v14, v15);
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v20 = objc_msgSend_sharedInstance(IMAVController, v16, v17, v18, v19);
      v25 = objc_msgSend_delegates(v20, v21, v22, v23, v24);

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v56, v60, 16);
      if (v27)
      {
        v28 = v27;
        v29 = *v57;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v57 != v29)
            {
              objc_enumerationMutation(v25);
            }

            v31 = *(*(&v56 + 1) + 8 * i);
            v32 = sub_254761764();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v62 = v31;
              _os_log_impl(&dword_254743000, v32, OS_LOG_TYPE_DEFAULT, "Checking delegate: %@", buf, 0xCu);
            }

            v33 = objc_opt_respondsToSelector();
            v34 = sub_254761764();
            v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
            if (v33)
            {
              if (v35)
              {
                *buf = 138412290;
                v62 = v31;
                _os_log_impl(&dword_254743000, v34, OS_LOG_TYPE_DEFAULT, " => Dispatching to delegate: %@", buf, 0xCu);
              }

              objc_msgSend_invitedToIMAVChat_(v31, v36, v55, v37, v38);
            }

            else
            {
              if (v35)
              {
                *buf = 138412290;
                v62 = v31;
                _os_log_impl(&dword_254743000, v34, OS_LOG_TYPE_DEFAULT, " => **NOT** Dispatching to delegate: %@", buf, 0xCu);
              }
            }
          }

          v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v39, &v56, v60, 16);
        }

        while (v28);
      }

      v5 = v55;
    }

    v40 = objc_msgSend_initiatorIMHandle(v5, v12, v13, v14, v15);
    v45 = objc_msgSend_ID(v40, v41, v42, v43, v44);
    isVideo = objc_msgSend_isVideo(v5, v46, v47, v48, v49);
    objc_msgSend__submitCallStartedLoggingWithRecipientID_isCaller_isVideo_(v5, v51, v45, 0, isVideo);

    if (ShouldAutoAcceptInvitations())
    {
      objc_msgSend_performSelector_withObject_afterDelay_(v5, v52, sel_acceptInvitation, 0, v53, 0.0);
    }
  }

  v54 = *MEMORY[0x277D85DE8];
}

- (void)_enqueueIMAVChatForNetworkActivation:(id)a3
{
  v150 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((objc_msgSend_containsObjectIdenticalTo_(self->_pendingChats, v5, v4, v6, v7) & 1) == 0)
  {
    if (!self->_pendingLookups)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      pendingLookups = self->_pendingLookups;
      self->_pendingLookups = v12;
    }

    if (!self->_pendingChats)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      pendingChats = self->_pendingChats;
      self->_pendingChats = v14;
    }

    v135 = objc_msgSend_sharedInstance(MEMORY[0x277D07DD8], v8, v9, v10, v11);
    if (objc_msgSend_allowAnyNetwork(v135, v16, v17, v18, v19))
    {
      v24 = sub_254761764();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_254743000, v24, OS_LOG_TYPE_DEFAULT, "We're allowed to use any network, bypassing check", buf, 2u);
      }

      if (objc_msgSend_state(v4, v25, v26, v27, v28) > 4)
      {
        goto LABEL_47;
      }

      v29 = sub_254761764();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v147 = v4;
        _os_log_impl(&dword_254743000, v29, OS_LOG_TYPE_DEFAULT, "Notifying for chat: %@", buf, 0xCu);
      }

      objc_msgSend__notifyOfIncomingInvitationFor_notifyInvitationListeners_(self, v30, v4, 1, v31);
      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      v32 = self->_pendingChats;
      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v136, v145, 16);
      if (v35)
      {
        v36 = *v137;
        do
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v137 != v36)
            {
              objc_enumerationMutation(v32);
            }

            v38 = *(*(&v136 + 1) + 8 * i);
            if (v38 != v4)
            {
              v39 = sub_254761764();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v147 = v38;
                _os_log_impl(&dword_254743000, v39, OS_LOG_TYPE_DEFAULT, "Declining other chat: %@", buf, 0xCu);
              }

              objc_msgSend_declineInvitationWithResponse_(v38, v40, 2, v41, v42);
            }
          }

          v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v34, &v136, v145, 16);
        }

        while (v35);
      }
    }

    else
    {
      v43 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v20, v21, v22, v23);
      v47 = objc_msgSend_wifiAllowedForBundleId_(v43, v44, @"com.apple.facetime", v45, v46);

      v52 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v48, v49, v50, v51);
      v53 = v47;
      v58 = objc_msgSend_nonWifiFaceTimeAvailable(v52, v54, v55, v56, v57);

      if (v58)
      {
        v63 = 2.0;
      }

      else
      {
        v63 = 15.0;
      }

      if (v58)
      {
        v64 = (v53 | 2);
      }

      else
      {
        v64 = v53;
      }

      v65 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v59, v60, v61, v62);
      isScreenLit = objc_msgSend_isScreenLit(v65, v66, v67, v68, v69);

      if (isScreenLit)
      {
        v71 = objc_alloc_init(MEMORY[0x277CBEAA8]);
        v76 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v72, v73, v74, v75);
        v81 = objc_msgSend_dateScreenLightLastChanged(v76, v77, v78, v79, v80);

        objc_msgSend_timeIntervalSinceDate_(v71, v82, v81, v83, v84);
        v86 = v85;
        v87 = sub_254761764();
        if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v147 = *&v86;
          _os_log_impl(&dword_254743000, v87, OS_LOG_TYPE_DEFAULT, "Time since lights on: %f", buf, 0xCu);
        }

        if (v86 <= 0.0)
        {
          v88 = v63;
        }

        else
        {
          v88 = 0.0;
          if (v86 < v63)
          {
            v88 = v63 - v86;
          }
        }
      }

      else
      {
        v88 = v63;
      }

      IMTimeOfDay();
      v90 = v89;
      v95 = objc_msgSend__timings(v4, v91, v92, v93, v94);
      objc_msgSend_startTimingForKey_(v95, v96, @"incoming-network-check", v97, v98);

      v99 = sub_254761764();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v147 = 0x403E000000000000;
        v148 = 2048;
        v149 = v88;
        _os_log_impl(&dword_254743000, v99, OS_LOG_TYPE_DEFAULT, "Starting availability check with network timeout: %fs   wifi timeout: %fs", buf, 0x16u);
      }

      v100 = objc_alloc(MEMORY[0x277D19280]);
      objc_initWeak(&location, v100);
      v101 = v100;
      v140[0] = MEMORY[0x277D85DD0];
      v140[1] = 3221225472;
      v140[2] = sub_254747DC4;
      v140[3] = &unk_2797830B8;
      v102 = v4;
      v141 = v102;
      v143[1] = v90;
      objc_copyWeak(v143, &location);
      v142 = self;
      v143[2] = v64;
      v32 = objc_msgSend_initWithFlags_options_timeout_wifiTimeout_completionBlock_(v101, v103, v64, 0, v140, 30.0, v88);

      v104 = sub_254761764();
      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
      {
        v109 = objc_msgSend_initiatorIMHandle(v102, v105, v106, v107, v108);
        v114 = objc_msgSend_ID(v109, v110, v111, v112, v113);
        v119 = objc_msgSend_conferenceID(v102, v115, v116, v117, v118);
        *buf = 138412546;
        v147 = v114;
        v148 = 2112;
        v149 = *&v119;
        _os_log_impl(&dword_254743000, v104, OS_LOG_TYPE_DEFAULT, "Enqueing VC Invitation from: %@   conference ID: %@", buf, 0x16u);
      }

      objc_msgSend_setContext_(v32, v120, v102, v121, v122);
      objc_msgSend_addObject_(self->_pendingLookups, v123, v32, v124, v125);
      objc_msgSend_addObject_(self->_pendingChats, v126, v102, v127, v128);
      v129 = sub_254761764();
      if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v147 = v102;
        _os_log_impl(&dword_254743000, v129, OS_LOG_TYPE_DEFAULT, "Adding pendingChat %@", buf, 0xCu);
      }

      objc_msgSend_start(v32, v130, v131, v132, v133);
      objc_destroyWeak(v143);

      objc_destroyWeak(&location);
    }

LABEL_47:
  }

  v134 = *MEMORY[0x277D85DE8];
}

- (void)_handleIncomingAVChatForNotification:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sub_254761764();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_msgSend_initiatorIMHandle(v4, v6, v7, v8, v9);
    v15 = objc_msgSend_ID(v10, v11, v12, v13, v14);
    v20 = objc_msgSend_conferenceID(v4, v16, v17, v18, v19);
    v28 = 138412546;
    v29 = v15;
    v30 = 2112;
    v31 = v20;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Handling VC Invitation from: %@   conference ID: %@", &v28, 0x16u);
  }

  v21 = sub_254761764();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v28) = 0;
    _os_log_impl(&dword_254743000, v21, OS_LOG_TYPE_DEFAULT, "Will try to bring up network if needed", &v28, 2u);
  }

  objc_msgSend__enqueueIMAVChatForNetworkActivation_(self, v22, v4, v23, v24);
  objc_msgSend__notifyOfIncomingInvitationFor_notifyInvitationListeners_(self, v25, v4, 0, v26);

  v27 = *MEMORY[0x277D85DE8];
}

- (void)vcCapabilitiesChanged:(unint64_t)a3
{
  v9 = objc_msgSend_sharedInstance(IMAVController, a2, a3, v3, v4);
  objc_msgSend_vcCapabilitiesChanged_(v9, v6, a3, v7, v8);
}

- (void)pendingVCRequestComplete
{
  v7 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3, v4);
  objc_msgSend___mainThreadPostNotificationName_object_(v7, v5, @"__kIMAVControllerPendingAVInvitationRequestComplete", 0, v6);
}

- (void)pendingACRequestComplete
{
  v7 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3, v4);
  objc_msgSend___mainThreadPostNotificationName_object_(v7, v5, @"__kIMAVControllerPendingACInvitationRequestComplete", 0, v6);
}

- (void)setupComplete
{
  v5 = objc_msgSend_sharedController(MEMORY[0x277D18D68], a2, v2, v3, v4);
  v10 = objc_msgSend_listener(v5, v6, v7, v8, v9);
  v102 = objc_msgSend_properties(v10, v11, v12, v13, v14);

  v19 = objc_msgSend_sharedInstance(IMAVController, v15, v16, v17, v18);
  if ((objc_msgSend__shouldRunACConferences(v19, v20, v21, v22, v23) & 1) == 0)
  {
    v28 = objc_msgSend_sharedInstance(IMAVController, v24, v25, v26, v27);
    shouldObserveConferences = objc_msgSend__shouldObserveConferences(v28, v29, v30, v31, v32);

    if (!shouldObserveConferences)
    {
      goto LABEL_5;
    }

    v19 = objc_msgSend_objectForKey_(v102, v34, @"ACChatProxy", v36, v37);
    v42 = objc_msgSend_sharedInstance(IMAVCallManager, v38, v39, v40, v41);
    objc_msgSend__updateACChatProxyWithInfo_(v42, v43, v19, v44, v45);
  }

LABEL_5:
  v46 = objc_msgSend_sharedInstance(IMAVController, v34, v35, v36, v37);
  if ((objc_msgSend__shouldRunConferences(v46, v47, v48, v49, v50) & 1) == 0)
  {
    v55 = objc_msgSend_sharedInstance(IMAVController, v51, v52, v53, v54);
    v60 = objc_msgSend__shouldObserveConferences(v55, v56, v57, v58, v59);

    if (!v60)
    {
      goto LABEL_9;
    }

    v46 = objc_msgSend_objectForKey_(v102, v61, @"AVChatProxy", v63, v64);
    v69 = objc_msgSend_sharedInstance(IMAVCallManager, v65, v66, v67, v68);
    objc_msgSend__updateAVChatProxyWithInfo_(v69, v70, v46, v71, v72);
  }

LABEL_9:
  v73 = objc_msgSend_sharedInstance(IMAVController, v61, v62, v63, v64);
  if (objc_msgSend__shouldRunConferences(v73, v74, v75, v76, v77))
  {
  }

  else
  {
    v86 = objc_msgSend_sharedInstance(IMAVController, v78, v79, v80, v81);
    shouldRunACConferences = objc_msgSend__shouldRunACConferences(v86, v87, v88, v89, v90);

    if (!shouldRunACConferences)
    {
      goto LABEL_13;
    }
  }

  v92 = objc_msgSend_sharedInstance(IMAVController, v82, v83, v84, v85);
  objc_msgSend_pushCachedVCCapsToDaemon(v92, v93, v94, v95, v96);

LABEL_13:
  v97 = objc_msgSend_sharedInstance(IMAVCallManager, v82, v83, v84, v85);
  objc_msgSend__updateOverallChatState(v97, v98, v99, v100, v101);
}

- (void)account:(id)a3 conference:(id)a4 peerID:(id)a5 propertiesUpdated:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a6;
  v10 = objc_msgSend__avChatWaitingForReplyFromIMHandle_orConferenceID_(IMAVChat, v8, 0, a4, v9);
  v11 = sub_254761764();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412546;
    v27 = v10;
    v28 = 2112;
    v29 = v7;
    _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "Chat: %@ properties updated to: %@", &v26, 0x16u);
  }

  v16 = objc_msgSend_remoteParticipants(v10, v12, v13, v14, v15);
  v21 = objc_msgSend_lastObject(v16, v17, v18, v19, v20);
  objc_msgSend__updateProperties_(v21, v22, v7, v23, v24);

  v25 = *MEMORY[0x277D85DE8];
}

- (void)property:(id)a3 changedTo:(id)a4 from:(id)a5
{
  v68 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_isEqualToString_(v6, v8, @"AVChatProxy", v9, v10))
  {
    v15 = objc_msgSend_sharedInstance(IMAVController, v11, v12, v13, v14);
    if (objc_msgSend__shouldRunConferences(v15, v16, v17, v18, v19))
    {
    }

    else
    {
      v24 = objc_msgSend_sharedInstance(IMAVController, v20, v21, v22, v23);
      shouldObserveConferences = objc_msgSend__shouldObserveConferences(v24, v25, v26, v27, v28);

      if (shouldObserveConferences)
      {
        v30 = sub_254761764();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v66 = 138412290;
          v67 = v6;
          _os_log_impl(&dword_254743000, v30, OS_LOG_TYPE_DEFAULT, "Received %@ property change", &v66, 0xCu);
        }

        v35 = objc_msgSend_sharedInstance(IMAVCallManager, v31, v32, v33, v34);
        objc_msgSend__updateAVChatProxyWithInfo_(v35, v36, v7, v37, v38);
        goto LABEL_14;
      }
    }
  }

  if (objc_msgSend_isEqualToString_(v6, v11, @"ACChatProxy", v13, v14))
  {
    v35 = objc_msgSend_sharedInstance(IMAVController, v39, v40, v41, v42);
    if (objc_msgSend__shouldRunACConferences(v35, v43, v44, v45, v46))
    {
LABEL_14:

      goto LABEL_15;
    }

    v51 = objc_msgSend_sharedInstance(IMAVController, v47, v48, v49, v50);
    v56 = objc_msgSend__shouldObserveConferences(v51, v52, v53, v54, v55);

    if (v56)
    {
      v57 = sub_254761764();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v66 = 138412290;
        v67 = v6;
        _os_log_impl(&dword_254743000, v57, OS_LOG_TYPE_DEFAULT, "Received %@ property change", &v66, 0xCu);
      }

      v35 = objc_msgSend_sharedInstance(IMAVCallManager, v58, v59, v60, v61);
      objc_msgSend__updateACChatProxyWithInfo_(v35, v62, v7, v63, v64);
      goto LABEL_14;
    }
  }

LABEL_15:

  v65 = *MEMORY[0x277D85DE8];
}

- (void)persistentProperty:(id)a3 changedTo:(id)a4 from:(id)a5
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = sub_254761764();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_254743000, v6, OS_LOG_TYPE_DEFAULT, "Persistent property %@ changed", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)account:(id)a3 postedError:(id)a4
{
  v94 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v11 = objc_msgSend_domain(v6, v7, v8, v9, v10);
  isEqualToString = objc_msgSend_isEqualToString_(v11, v12, *MEMORY[0x277D18F40], v13, v14);

  if (isEqualToString)
  {
    v16 = sub_254761764();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v91 = v5;
      v92 = 2112;
      v93 = v6;
      _os_log_impl(&dword_254743000, v16, OS_LOG_TYPE_DEFAULT, "Account: %@   Posted AV Error: %@", buf, 0x16u);
    }

    v21 = objc_msgSend_sharedInstance(MEMORY[0x277D18D28], v17, v18, v19, v20);
    v25 = objc_msgSend_accountForUniqueID_(v21, v22, v5, v23, v24);

    v26 = sub_254761764();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (v25)
    {
      if (v27)
      {
        *buf = 138412546;
        v91 = v25;
        v92 = 2112;
        v93 = v6;
        _os_log_impl(&dword_254743000, v26, OS_LOG_TYPE_DEFAULT, "Account: %@    Posted AV Error: %@", buf, 0x16u);
      }

      v32 = objc_msgSend_userInfo(v6, v28, v29, v30, v31);
      v36 = objc_msgSend_objectForKey_(v32, v33, @"ID", v34, v35);
      v89 = objc_msgSend_objectForKey_(v32, v37, @"conference", v38, v39);
      v87 = objc_msgSend_objectForKey_(v32, v40, @"properties", v41, v42);
      v88 = objc_msgSend_objectForKey_(v87, v43, *MEMORY[0x277D19568], v44, v45);
      v49 = objc_msgSend_objectForKey_(v32, v46, @"internalErrorDomain", v47, v48);
      v53 = objc_msgSend_objectForKey_(v32, v50, @"internalUserInfo", v51, v52);
      v57 = objc_msgSend_objectForKey_(v32, v54, @"internalCode", v55, v56);
      v58 = sub_254761764();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v91 = v32;
        _os_log_impl(&dword_254743000, v58, OS_LOG_TYPE_DEFAULT, "            UserInfo: %@", buf, 0xCu);
      }

      v59 = sub_254761764();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v91 = v89;
        _os_log_impl(&dword_254743000, v59, OS_LOG_TYPE_DEFAULT, "        conferenceID: %@", buf, 0xCu);
      }

      v60 = sub_254761764();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v65 = objc_msgSend_unsignedIntValue(v88, v61, v62, v63, v64);
        *buf = 67109120;
        LODWORD(v91) = v65;
        _os_log_impl(&dword_254743000, v60, OS_LOG_TYPE_DEFAULT, "           SessionID: %u", buf, 8u);
      }

      v66 = sub_254761764();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v91 = v49;
        _os_log_impl(&dword_254743000, v66, OS_LOG_TYPE_DEFAULT, "      internalDomain: %@", buf, 0xCu);
      }

      v67 = sub_254761764();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v91 = v57;
        _os_log_impl(&dword_254743000, v67, OS_LOG_TYPE_DEFAULT, "        internalCode: %@", buf, 0xCu);
      }

      v86 = v49;

      v68 = sub_254761764();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v91 = v53;
        _os_log_impl(&dword_254743000, v68, OS_LOG_TYPE_DEFAULT, "    internalUserInfo: %@", buf, 0xCu);
      }

      v69 = v53;

      v70 = v36;
      v74 = objc_msgSend_imHandleWithID_(v25, v71, v36, v72, v73);
      v79 = objc_msgSend_unsignedIntValue(v88, v75, v76, v77, v78);
      v26 = objc_msgSend__bestGuessAVChatWithIMHandle_conferenceID_sessionID_properties_(IMAVChat, v80, v74, v89, v79, 0);

      v81 = sub_254761764();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v91 = v26;
        _os_log_impl(&dword_254743000, v81, OS_LOG_TYPE_DEFAULT, "  Using found AVChat: %@", buf, 0xCu);
      }

      objc_msgSend__handleAVError_(v26, v82, v6, v83, v84);
    }

    else if (v27)
    {
      *buf = 138412290;
      v91 = v6;
      _os_log_impl(&dword_254743000, v26, OS_LOG_TYPE_DEFAULT, "[WARN] Posted AVError: %@ from nil account", buf, 0xCu);
    }
  }

  v85 = *MEMORY[0x277D85DE8];
}

- (void)account:(id)a3 relay:(id)a4 handleInitate:(id)a5 fromPerson:(id)a6
{
  v42 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v17 = objc_msgSend_sharedInstance(MEMORY[0x277D18D28], v13, v14, v15, v16);
  v21 = objc_msgSend_accountForUniqueID_(v17, v18, v9, v19, v20);

  if (v21)
  {
    v25 = objc_msgSend_imHandleWithInfo_(v21, v22, v12, v23, v24);
    v27 = objc_msgSend__bestGuessAVChatWithIMHandle_conferenceID_sessionID_properties_(IMAVChat, v26, v25, v10, 0, 0);
    v31 = objc_msgSend_participantMatchingIMHandle_(v27, v28, v25, v29, v30);
    v32 = sub_254761764();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 138412802;
      v37 = v12;
      v38 = 2112;
      v39 = v10;
      v40 = 2112;
      v41 = v11;
      _os_log_impl(&dword_254743000, v32, OS_LOG_TYPE_DEFAULT, "Handling incoming relay initiate from person: %@    conference: %@   request: %@", &v36, 0x20u);
    }

    objc_msgSend__handleRelayInitate_fromParticipant_(v27, v33, v11, v31, v34);
  }

  else
  {
    v25 = sub_254761764();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 138412290;
      v37 = v9;
      _os_log_impl(&dword_254743000, v25, OS_LOG_TYPE_DEFAULT, "[WARN] Posted relay initiate: %@ from nil account", &v36, 0xCu);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)account:(id)a3 relay:(id)a4 handleUpdate:(id)a5 fromPerson:(id)a6
{
  v42 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v17 = objc_msgSend_sharedInstance(MEMORY[0x277D18D28], v13, v14, v15, v16);
  v21 = objc_msgSend_accountForUniqueID_(v17, v18, v9, v19, v20);

  v22 = sub_254761764();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (v21)
  {
    if (v23)
    {
      v36 = 138412802;
      v37 = v12;
      v38 = 2112;
      v39 = v10;
      v40 = 2112;
      v41 = v11;
      _os_log_impl(&dword_254743000, v22, OS_LOG_TYPE_DEFAULT, "Handling incoming relay update from person: %@    conference: %@   request: %@", &v36, 0x20u);
    }

    v22 = objc_msgSend_imHandleWithInfo_(v21, v24, v12, v25, v26);
    v28 = objc_msgSend__bestGuessAVChatWithIMHandle_conferenceID_sessionID_properties_(IMAVChat, v27, v22, v10, 0, 0);
    v32 = objc_msgSend_participantMatchingIMHandle_(v28, v29, v22, v30, v31);
    objc_msgSend__handleRelayUpdate_fromParticipant_(v28, v33, v11, v32, v34);
  }

  else if (v23)
  {
    v36 = 138412290;
    v37 = v9;
    _os_log_impl(&dword_254743000, v22, OS_LOG_TYPE_DEFAULT, "[WARN] Posted relay update: %@ from nil account", &v36, 0xCu);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)account:(id)a3 relay:(id)a4 handleCancel:(id)a5 fromPerson:(id)a6
{
  v42 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v17 = objc_msgSend_sharedInstance(MEMORY[0x277D18D28], v13, v14, v15, v16);
  v21 = objc_msgSend_accountForUniqueID_(v17, v18, v9, v19, v20);

  v22 = sub_254761764();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (v21)
  {
    if (v23)
    {
      v36 = 138412802;
      v37 = v12;
      v38 = 2112;
      v39 = v10;
      v40 = 2112;
      v41 = v11;
      _os_log_impl(&dword_254743000, v22, OS_LOG_TYPE_DEFAULT, "Handling incoming relay cancel from person: %@    conference: %@   request: %@", &v36, 0x20u);
    }

    v22 = objc_msgSend_imHandleWithInfo_(v21, v24, v12, v25, v26);
    v28 = objc_msgSend__bestGuessAVChatWithIMHandle_conferenceID_sessionID_properties_(IMAVChat, v27, v22, v10, 0, 0);
    v32 = objc_msgSend_participantMatchingIMHandle_(v28, v29, v22, v30, v31);
    objc_msgSend__handleRelayCancel_fromParticipant_(v28, v33, v11, v32, v34);
  }

  else if (v23)
  {
    v36 = 138412290;
    v37 = v9;
    _os_log_impl(&dword_254743000, v22, OS_LOG_TYPE_DEFAULT, "[WARN] Posted relay cancel: %@ from nil account", &v36, 0xCu);
  }

  v35 = *MEMORY[0x277D85DE8];
}

@end