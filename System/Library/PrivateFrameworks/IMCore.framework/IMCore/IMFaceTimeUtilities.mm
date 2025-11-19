@interface IMFaceTimeUtilities
+ (BOOL)activeTUConversationHasActivitySession:(id)a3;
+ (BOOL)conversationIsAVLessSharePlay:(id)a3;
+ (BOOL)conversationIsVideoCall:(id)a3;
+ (BOOL)isScreenShareActivityForTUConversation:(id)a3;
+ (id)activityMetadataForTUConversation:(id)a3;
+ (id)activitySessionForTUConversation:(id)a3;
+ (id)currentCallForTUConversation:(id)a3;
+ (id)remoteParticipantHandleSharingScreenForTUConversation:(id)a3;
+ (void)initiateTUConversationForParticipants:(id)a3 senderAddress:(id)a4 videoEnabled:(BOOL)a5 groupID:(id)a6 displayName:(id)a7 screenShareType:(unint64_t)a8;
+ (void)leaveTUCall:(id)a3;
+ (void)leaveTUConversation;
@end

@implementation IMFaceTimeUtilities

+ (id)currentCallForTUConversation:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = objc_msgSend_sharedInstance(MEMORY[0x1E69D8A58], v4, v5);
  v9 = objc_msgSend_currentVideoCalls(v6, v7, v8);

  obj = v9;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v34, v38, 16);
  if (v11)
  {
    v14 = v11;
    v15 = 0;
    v16 = *v35;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v34 + 1) + 8 * i);
        v19 = objc_msgSend_sharedInstance(MEMORY[0x1E69D8A58], v12, v13);
        v21 = objc_msgSend_activeConversationForCall_(v19, v20, v18);

        v24 = objc_msgSend_UUID(v21, v22, v23);
        v27 = objc_msgSend_UUID(v3, v25, v26);
        isEqual = objc_msgSend_isEqual_(v24, v28, v27);

        if (isEqual)
        {
          v30 = v18;

          v15 = v30;
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v34, v38, 16);
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  v31 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (BOOL)activeTUConversationHasActivitySession:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = objc_msgSend_activitySessionForTUConversation_(IMFaceTimeUtilities, a2, a3);
  v4 = v3 != 0;

  return v4;
}

+ (void)initiateTUConversationForParticipants:(id)a3 senderAddress:(id)a4 videoEnabled:(BOOL)a5 groupID:(id)a6 displayName:(id)a7 screenShareType:(unint64_t)a8
{
  v101 = a5;
  v118 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v104 = a4;
  v102 = a6;
  v103 = a7;
  if (IMDeviceIsGreenTea() && IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "IMFaceTimeUtilities: request to initiate a group facetime for a green tea device. Only TUDialRequests are supported in this configuration, so this request will fail.", buf, 2u);
    }
  }

  v15 = MEMORY[0x1E695DFA8];
  v16 = objc_msgSend_count(v11, v12, v13);
  v18 = objc_msgSend_setWithCapacity_(v15, v17, v16);
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  obj = v11;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v107, v117, 16);
  if (v22)
  {
    v23 = *v108;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v108 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v107 + 1) + 8 * i);
        v26 = MEMORY[0x1E69D8C00];
        v27 = objc_msgSend_ID(v25, v20, v21);
        v29 = objc_msgSend_normalizedHandleWithDestinationID_(v26, v28, v27);

        if (v29)
        {
          v30 = objc_alloc(MEMORY[0x1E69D8B80]);
          v32 = objc_msgSend_setWithObject_(MEMORY[0x1E695DFD8], v31, v29);
          v34 = objc_msgSend_initWithHandles_(v30, v33, v32);

          objc_msgSend_addObject_(v18, v35, v34);
        }

        else if (IMOSLoggingEnabled())
        {
          v36 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v114 = v25;
            _os_log_impl(&dword_1A823F000, v36, OS_LOG_TYPE_INFO, "Skipping handle (%@) as the ID is nil", buf, 0xCu);
          }
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v107, v117, 16);
    }

    while (v22);
  }

  if (objc_msgSend_count(v18, v37, v38))
  {
    v39 = objc_alloc(MEMORY[0x1E69D8C10]);
    v41 = objc_msgSend_initWithRemoteMembers_(v39, v40, v18);
    v43 = v41;
    if (v101)
    {
      objc_msgSend_setAvMode_(v41, v42, 2);
    }

    else
    {
      objc_msgSend_setAvMode_(v41, v42, 1);
    }

    objc_msgSend_setVideoEnabled_(v43, v44, v101);
    objc_msgSend_setRequestToShareMyScreen_(v43, v45, a8 == 1);
    objc_msgSend_setRequestToShareScreen_(v43, v46, a8 == 2);
    objc_msgSend_setShouldSuppressInCallUI_(v43, v47, 1);
    v50 = objc_msgSend_expanseProvider(MEMORY[0x1E69D8BA8], v48, v49);
    objc_msgSend_setProvider_(v43, v51, v50);

    if (a8)
    {
      objc_msgSend_setOriginatingUIType_(v43, v52, 32);
    }

    else
    {
      objc_msgSend_setOriginatingUIType_(v43, v52, 18);
    }

    if (objc_opt_respondsToSelector())
    {
      v55 = objc_msgSend_normalizedHandleWithDestinationID_(MEMORY[0x1E69D8C00], v53, v104);
      v58 = objc_msgSend_facetimeService(IMService, v56, v57);
      v59 = IMPreferredAccountForService(v58);

      if (objc_msgSend_hasAlias_(v59, v60, v104))
      {
        objc_msgSend_setCallerID_(v43, v61, v55);
      }

      else if (IMOSLoggingEnabled())
      {
        v63 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          v66 = objc_msgSend_aliases(v59, v64, v65);
          *buf = 138412546;
          v114 = v104;
          v115 = 2112;
          v116 = v66;
          _os_log_impl(&dword_1A823F000, v63, OS_LOG_TYPE_INFO, "IMFaceTimeUtilities: Skipping setting callerID since FT account doesn't contain senderAddress: %@, aliases: %@", buf, 0x16u);
        }
      }
    }

    if (objc_msgSend_count(obj, v53, v54) < 2)
    {
      v86 = objc_alloc(MEMORY[0x1E695DFD8]);
      v87 = objc_alloc(MEMORY[0x1E69D8B68]);
      v69 = objc_msgSend_initWithHandleType_notificationStyles_(v87, v88, 2, 4);
      v111[0] = v69;
      v89 = objc_alloc(MEMORY[0x1E69D8B68]);
      v75 = objc_msgSend_initWithHandleType_notificationStyles_(v89, v90, 3, 4);
      v111[1] = v75;
      v91 = objc_alloc(MEMORY[0x1E69D8B68]);
      v78 = objc_msgSend_initWithHandleType_notificationStyles_(v91, v92, 1, 4);
      v111[2] = v78;
      v81 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v93, v111, 3);
      v85 = objc_msgSend_initWithArray_(v86, v94, v81);
    }

    else
    {
      v67 = objc_alloc(MEMORY[0x1E696AFB0]);
      v69 = objc_msgSend_initWithUUIDString_(v67, v68, v102);
      objc_msgSend_setMessagesGroupUUID_(v43, v70, v69);
      objc_msgSend_setMessagesGroupName_(v43, v71, v103);
      v72 = objc_alloc(MEMORY[0x1E695DFD8]);
      v73 = objc_alloc(MEMORY[0x1E69D8B68]);
      v75 = objc_msgSend_initWithHandleType_notificationStyles_(v73, v74, 2, 2);
      v112[0] = v75;
      v76 = objc_alloc(MEMORY[0x1E69D8B68]);
      v78 = objc_msgSend_initWithHandleType_notificationStyles_(v76, v77, 3, 2);
      v112[1] = v78;
      v79 = objc_alloc(MEMORY[0x1E69D8B68]);
      v81 = objc_msgSend_initWithHandleType_notificationStyles_(v79, v80, 1, 2);
      v112[2] = v81;
      v83 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v82, v112, 3);
      v85 = objc_msgSend_initWithArray_(v72, v84, v83);
    }

    objc_msgSend_setInvitationPreferences_(v43, v95, v85);
    v98 = objc_msgSend_sharedInstance(MEMORY[0x1E69D8A58], v96, v97);
    objc_msgSend_launchAppForJoinRequest_(v98, v99, v43);
  }

  else if (IMOSLoggingEnabled())
  {
    v62 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v62, OS_LOG_TYPE_INFO, "IMFaceTimeUtilities: Not starting FaceTime as the conversation has no valid participants.", buf, 2u);
    }
  }

  v100 = *MEMORY[0x1E69E9840];
}

+ (void)leaveTUConversation
{
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Leaving active video call", v10, 2u);
    }
  }

  v5 = objc_msgSend_sharedInstance(MEMORY[0x1E69D8A58], v2, v3);
  v8 = objc_msgSend_activeVideoCall(v5, v6, v7);
  objc_msgSend_leaveTUCall_(IMFaceTimeUtilities, v9, v8);
}

+ (void)leaveTUCall:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Leaving TUCall %@", &v10, 0xCu);
    }
  }

  v7 = objc_msgSend_sharedInstance(MEMORY[0x1E69D8A58], v4, v5);
  objc_msgSend_disconnectCall_(v7, v8, v3);

  v9 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isScreenShareActivityForTUConversation:(id)a3
{
  v3 = objc_msgSend_activitySessionForTUConversation_(IMFaceTimeUtilities, a2, a3);
  v6 = objc_msgSend_activity(v3, v4, v5);

  if (v6)
  {
    isScreenSharingActivity = objc_msgSend_isScreenSharingActivity(v6, v7, v8);
  }

  else
  {
    isScreenSharingActivity = 0;
  }

  return isScreenSharingActivity;
}

+ (id)activitySessionForTUConversation:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v5, v6);
  isAVLessSharePlayEnabled = objc_msgSend_isAVLessSharePlayEnabled(v7, v8, v9);

  v13 = objc_msgSend_activitySessions(v4, v11, v12);
  v16 = v13;
  if (isAVLessSharePlayEnabled)
  {
    v17 = objc_msgSend_anyObject(v13, v14, v15);

    if (!v17)
    {
      if (objc_msgSend_conversationIsAVLessSharePlay_(a1, v18, v4))
      {
        v17 = objc_msgSend_stagedActivitySession(v4, v19, v20);
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v21 = objc_msgSend_allObjects(v13, v14, v15);
    v17 = objc_msgSend_firstObject(v21, v22, v23);
  }

  return v17;
}

+ (id)remoteParticipantHandleSharingScreenForTUConversation:(id)a3
{
  v3 = objc_msgSend_activitySessionForTUConversation_(IMFaceTimeUtilities, a2, a3);
  v6 = objc_msgSend_activity(v3, v4, v5);

  if (objc_msgSend_isScreenSharingActivity(v6, v7, v8))
  {
    v11 = objc_msgSend_originator(v6, v9, v10);
    v14 = objc_msgSend_value(v11, v12, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)activityMetadataForTUConversation:(id)a3
{
  v4 = MEMORY[0x1E69A8070];
  v5 = a3;
  v8 = objc_msgSend_sharedFeatureFlags(v4, v6, v7);
  isAVLessSharePlayEnabled = objc_msgSend_isAVLessSharePlayEnabled(v8, v9, v10);

  if (isAVLessSharePlayEnabled)
  {
    v14 = objc_msgSend_activitySessionForTUConversation_(a1, v12, v5);

    v17 = objc_msgSend_activity(v14, v15, v16);
    v20 = objc_msgSend_metadata(v17, v18, v19);
  }

  else
  {
    v14 = objc_msgSend_activitySessions(v5, v12, v13);

    v17 = objc_msgSend_allObjects(v14, v21, v22);
    v25 = objc_msgSend_firstObject(v17, v23, v24);
    v28 = objc_msgSend_activity(v25, v26, v27);
    v20 = objc_msgSend_metadata(v28, v29, v30);
  }

  return v20;
}

+ (BOOL)conversationIsVideoCall:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_avMode(v3, v4, v5);
  v7 = NSSelectorFromString(&cfstr_Resolvedaudiov.isa);
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_msgSend_performSelector_(v3, v8, v7);
  }

  return v6 == 2;
}

+ (BOOL)conversationIsAVLessSharePlay:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v4, v5);
  isAVLessSharePlayEnabled = objc_msgSend_isAVLessSharePlayEnabled(v6, v7, v8);

  if (isAVLessSharePlayEnabled)
  {
    v12 = objc_msgSend_avMode(v3, v10, v11) == 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end