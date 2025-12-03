@interface IMChorosMonitor
+ (id)roadsideProviderIDFromChatIdentifier:(id)identifier;
+ (id)sharedInstance;
+ (int64_t)serviceFromChatIdentifier:(id)identifier;
- (BOOL)isMessagingActiveOverSatellite;
- (BOOL)isSatelliteConnectionActive;
- (BOOL)isStewieActive;
- (BOOL)isStewieEmergencyActive;
- (BOOL)isStewieRoadsideActive;
- (BOOL)shouldShowTextEmergencyServicesButton;
- (BOOL)shouldShowTextRoadsideProviderButton;
- (CoreTelephonyClient)telephonyClient;
- (IMChorosMonitor)init;
- (NSDictionary)emergencyHandles;
- (id)mostRecentlyUsedRoadsideChatIdentifier;
- (id)roadsideBusinessIDForChatIdentifier:(id)identifier;
- (id)roadsideBusinessIDForProviderId:(int64_t)id;
- (id)roadsideProviderForProviderId:(int64_t)id;
- (id)roadsideProviderNameForChatIdentifier:(id)identifier;
- (id)roadsideProviderNameForProviderId:(int64_t)id;
- (void)_setStewieRoadsideContext:(id)context forChat:(id)chat;
- (void)launchStewieForMessagingWithAppForegrounded:(BOOL)foregrounded;
- (void)openStewieAppForChatIdentifier:(id)identifier completion:(id)completion;
- (void)placeEmergencyCallToHandle:(id)handle completion:(id)completion;
- (void)presentSatelliteConnectionBannerIfNecessaryWithChat:(id)chat withReason:(id)reason ignoreTimerLimit:(BOOL)limit;
- (void)reset;
- (void)startMonitor;
- (void)startMonitorIfNeededForReason:(int64_t)reason withOffer:(BOOL)offer callInBackground:(BOOL)background;
- (void)stateChanged:(id)changed;
@end

@implementation IMChorosMonitor

+ (id)sharedInstance
{
  if (qword_1ED767938 != -1)
  {
    sub_1A82572B4();
  }

  v3 = qword_1ED7678D8;

  return v3;
}

- (IMChorosMonitor)init
{
  v10.receiver = self;
  v10.super_class = IMChorosMonitor;
  v2 = [(IMChorosMonitor *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E6965080]);
    v5 = objc_msgSend_initWithDelegate_queue_(v3, v4, v2, MEMORY[0x1E69E96A0]);
    coreTelephonyStewieMonitor = v2->_coreTelephonyStewieMonitor;
    v2->_coreTelephonyStewieMonitor = v5;

    if (!v2->_coreTelephonyStewieMonitor)
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *v9 = 0;
          _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Failed to load monitor", v9, 2u);
        }
      }
    }
  }

  return v2;
}

- (BOOL)isSatelliteConnectionActive
{
  v3 = objc_msgSend_getState(self, a2, v2);
  isStewieActiveOverBB = objc_msgSend_isStewieActiveOverBB(v3, v4, v5);

  return isStewieActiveOverBB;
}

- (BOOL)isMessagingActiveOverSatellite
{
  v3 = objc_msgSend_getState(self, a2, v2);
  isActiveService = objc_msgSend_isActiveService_(v3, v4, 16);
  v7 = objc_msgSend_isActiveService_(v3, v6, 32);
  if ((isActiveService & 1) != 0 || v7)
  {
    isStewieActiveOverBB = objc_msgSend_isStewieActiveOverBB(v3, v8, v9);
  }

  else
  {
    isStewieActiveOverBB = 0;
  }

  return isStewieActiveOverBB;
}

- (BOOL)isStewieActive
{
  v3 = objc_msgSend_getState(self, a2, v2);
  isActiveService = 1;
  if ((objc_msgSend_isActiveService_(v3, v5, 1) & 1) == 0)
  {
    isActiveService = objc_msgSend_isActiveService_(v3, v6, 8);
  }

  return isActiveService;
}

- (void)presentSatelliteConnectionBannerIfNecessaryWithChat:(id)chat withReason:(id)reason ignoreTimerLimit:(BOOL)limit
{
  limitCopy = limit;
  v104 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  reasonCopy = reason;
  if (objc_msgSend_needsShowConnectionUI(self, v10, v11) && objc_msgSend_monitorStarted(self, v12, v13))
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Got pending request to show Connection UI. Not show Offer pill.", buf, 2u);
    }

    objc_msgSend_launchStewieForMessagingWithAppForegrounded_(self, v15, 1);
    goto LABEL_30;
  }

  v16 = IMLogHandleForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v101 = reasonCopy;
    _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Try to present offer for reason: %@", buf, 0xCu);
  }

  if (!chatCopy || objc_msgSend_isSatelliteMessagingCompatible(chatCopy, v17, v18))
  {
    v92 = limitCopy;
    v96 = reasonCopy;
    v19 = objc_msgSend_sharedInstanceForBagType_(MEMORY[0x1E69A53F0], v17, 1);
    v21 = objc_msgSend_objectForKey_(v19, v20, @"when-to-first-show-OTG-banner");
    v23 = objc_msgSend_objectForKey_(v19, v22, @"how-often-to-show-OTG-banner");
    v25 = objc_msgSend_objectForKey_(v19, v24, @"when-to-stop-showing-OTG-banner");
    v28 = objc_msgSend_messagesAppDomain(MEMORY[0x1E695E000], v26, v27);
    v29 = MEMORY[0x1E69A7850];
    v31 = objc_msgSend_integerForKey_(v28, v30, *MEMORY[0x1E69A7850]);

    v34 = objc_msgSend_messagesAppDomain(MEMORY[0x1E695E000], v32, v33);
    v94 = objc_msgSend_integerForKey_(v34, v35, *MEMORY[0x1E69A7D20]);

    v38 = objc_msgSend_getState(self, v36, v37);
    v95 = v25;
    if (objc_msgSend_isAnyServicesAvailableFor_(MEMORY[0x1E69A81A8], v39, v38))
    {
      v93 = v21;
      v42 = objc_msgSend_messagesAppDomain(MEMORY[0x1E695E000], v40, v41);
      objc_msgSend_setInteger_forKey_(v42, v43, v31 + 1, *v29);

      if (objc_msgSend_integerValue(v25, v44, v45) <= 0 || (v48 = v25, v94 < objc_msgSend_integerValue(v25, v46, v47)))
      {
        v49 = v23;
        if (objc_msgSend_integerValue(v23, v46, v47) && v31 % objc_msgSend_integerValue(v23, v50, v51))
        {
          v52 = IMLogHandleForCategory();
          v21 = v93;
          reasonCopy = v96;
          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            v55 = objc_msgSend_integerValue(v49, v53, v54);
            *buf = 134218240;
            v101 = v55;
            v102 = 2048;
            v103 = v94;
            v56 = "Not showing satellite connection banner. Only showing banner on every %ld attempt. number of times attempted: %ld";
LABEL_23:
            v61 = v52;
            v62 = 22;
LABEL_24:
            _os_log_impl(&dword_1A823F000, v61, OS_LOG_TYPE_INFO, v56, buf, v62);
          }
        }

        else
        {
          v21 = v93;
          reasonCopy = v96;
          if (objc_msgSend_integerValue(v93, v50, v51) - 1 <= v31)
          {
            v67 = objc_msgSend_objectForKey_(v19, v57, @"limit-to-start-showing-OTG-banner");
            v70 = objc_msgSend_integerValue(v67, v68, v69);

            if (v70 <= 0)
            {
              v73 = 600;
            }

            else
            {
              v73 = v70;
            }

            v74 = objc_msgSend_messagesAppDomain(MEMORY[0x1E695E000], v71, v72);
            v76 = objc_msgSend_BOOLForKey_(v74, v75, IMIgnoreTimerLimit);

            objc_msgSend_timeSinceBeingOffGrid(self, v77, v78);
            if (v80 >= v73)
            {
              if (objc_msgSend_isEqualToString_(v96, v79, IMReasonDidBeginTyping))
              {
                v52 = IMLogHandleForCategory();
                v21 = v93;
                if (!os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_29;
                }

                *buf = 0;
                v56 = "Not showing banner because we should have shown it when entering chat.";
                v61 = v52;
                v62 = 2;
                goto LABEL_24;
              }
            }

            else if (((v92 | v76) & 1) == 0)
            {
              v81 = v73;
              v52 = IMLogHandleForCategory();
              v21 = v93;
              if (!os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
              {
                goto LABEL_29;
              }

              *buf = 134217984;
              v101 = v81;
              v56 = "Not showing satellite connection banner as it's been less than %ld seconds since we are without connection";
              v61 = v52;
              v62 = 12;
              goto LABEL_24;
            }

            v52 = objc_alloc_init(MEMORY[0x1E6965078]);
            objc_msgSend_setReason_(v52, v82, 8);
            v83 = *MEMORY[0x1E69654B0];
            v98[0] = *MEMORY[0x1E69654A8];
            v98[1] = v83;
            v99[0] = MEMORY[0x1E695E118];
            v99[1] = v96;
            v85 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v84, v99, v98, 2);
            objc_msgSend_setMetadata_(v52, v86, v85);

            v87 = IMLogHandleForCategory();
            v21 = v93;
            if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1A823F000, v87, OS_LOG_TYPE_INFO, "Requesting satellite connection banner", buf, 2u);
            }

            v90 = objc_msgSend_telephonyClient(self, v88, v89);
            v97[0] = MEMORY[0x1E69E9820];
            v97[1] = 3221225472;
            v97[2] = sub_1A82ED2EC;
            v97[3] = &unk_1E7811CE0;
            v97[4] = v94;
            objc_msgSend_requestStewieWithContext_completion_(v90, v91, v52, v97);

            goto LABEL_29;
          }

          v52 = IMLogHandleForCategory();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            v60 = objc_msgSend_integerValue(v93, v58, v59);
            *buf = 134218240;
            v101 = v60;
            v102 = 2048;
            v103 = v31;
            v56 = "Not showing satellite connection banner. Only showing banner on after %ld attempts. Number of attempts: %ld";
            goto LABEL_23;
          }
        }

LABEL_29:

        goto LABEL_30;
      }

      v52 = IMLogHandleForCategory();
      v49 = v23;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        v65 = objc_msgSend_integerValue(v48, v63, v64);
        *buf = 134218240;
        v101 = v65;
        v102 = 2048;
        v103 = v94;
        _os_log_impl(&dword_1A823F000, v52, OS_LOG_TYPE_INFO, "Not showing satellite connection banner. Limit has been reached. Limit: %ld, number of times shown: %ld", buf, 0x16u);
      }

      v21 = v93;
    }

    else
    {
      v52 = IMLogHandleForCategory();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v52, OS_LOG_TYPE_INFO, "Stewie state disallow displaying banner.", buf, 2u);
      }

      v49 = v23;
    }

    reasonCopy = v96;
    goto LABEL_29;
  }

LABEL_30:

  v66 = *MEMORY[0x1E69E9840];
}

- (void)startMonitor
{
  v5 = xmmword_1E78121D8;
  v6 = *off_1E78121E8;
  v7 = 82;
  v3 = IMLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1A84E0864(&v5, v3);
  }

  objc_msgSend_startMonitorWithOffer_(self, v4, 1, v5, v6, v7);
}

- (void)startMonitorIfNeededForReason:(int64_t)reason withOffer:(BOOL)offer callInBackground:(BOOL)background
{
  backgroundCopy = background;
  if ((objc_msgSend_monitorStarted(self, a2, reason) & 1) == 0)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A8308120;
    aBlock[3] = &unk_1E7812208;
    aBlock[4] = self;
    aBlock[5] = reason;
    offerCopy = offer;
    v9 = _Block_copy(aBlock);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1A83081D0;
    v16[3] = &unk_1E7812230;
    offerCopy2 = offer;
    v20 = backgroundCopy;
    reasonCopy = reason;
    v16[4] = self;
    v10 = v9;
    v17 = v10;
    v11 = _Block_copy(v16);
    v12 = v11;
    if (backgroundCopy)
    {
      v13 = dispatch_get_global_queue(9, 0);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1A83084A8;
      v14[3] = &unk_1E780FE90;
      v15 = v12;
      dispatch_async(v13, v14);
    }

    else
    {
      (*(v11 + 2))(v11);
    }
  }
}

- (CoreTelephonyClient)telephonyClient
{
  if (!self->_telephonyClient)
  {
    v3 = objc_alloc(MEMORY[0x1E69650A0]);
    v5 = objc_msgSend_initWithQueue_(v3, v4, MEMORY[0x1E69E96A0]);
    telephonyClient = self->_telephonyClient;
    self->_telephonyClient = v5;

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Created new _telephonyClient", v10, 2u);
      }
    }
  }

  v8 = self->_telephonyClient;

  return v8;
}

- (void)reset
{
  telephonyClient = self->_telephonyClient;
  self->_telephonyClient = 0;

  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "relese _telephonyClient", v4, 2u);
    }
  }
}

- (void)stateChanged:(id)changed
{
  v26 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v18 = 134218752;
      active = objc_msgSend_activeServices(changedCopy, v7, v8);
      v20 = 2048;
      v21 = objc_msgSend_allowedServices(changedCopy, v9, v10);
      v22 = 2048;
      v23 = objc_msgSend_status(changedCopy, v11, v12);
      v24 = 2048;
      v25 = objc_msgSend_transportType(changedCopy, v13, v14);
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Stewie status changed to: activeServices: %ld - allowedServices: %ld - status: %ld - transport: %ld", &v18, 0x2Au);
    }
  }

  v15 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v4, v5);
  objc_msgSend___mainThreadPostNotificationName_object_(v15, v16, @"IMChorosMonitorStewieStatusChangedNotification", 0);

  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)isStewieEmergencyActive
{
  v3 = objc_msgSend_getState(self, a2, v2);
  isActiveService = objc_msgSend_isActiveService_(v3, v4, 1);

  return isActiveService;
}

- (BOOL)shouldShowTextEmergencyServicesButton
{
  v3 = objc_msgSend_getState(self, a2, v2);
  if (objc_msgSend_isActiveService_(v3, v4, 1))
  {
    isAllowedService = 0;
  }

  else
  {
    isAllowedService = objc_msgSend_isAllowedService_(v3, v5, 1);
  }

  return isAllowedService;
}

- (void)_setStewieRoadsideContext:(id)context forChat:(id)chat
{
  v17[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  chatCopy = chat;
  v8 = objc_msgSend_roadsideProviderIDFromChatIdentifier_(IMChorosMonitor, v7, chatCopy);
  v10 = v8;
  if (v8)
  {
    v16 = *MEMORY[0x1E69654B8];
    v17[0] = v8;
    v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, v17, &v16, 1);
    objc_msgSend_setMetadata_(contextCopy, v12, v11);

    objc_msgSend_setReason_(contextCopy, v13, 7);
  }

  else
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E0994();
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)openStewieAppForChatIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = objc_alloc_init(MEMORY[0x1E6965078]);
  if (IMIsStringStewieEmergency())
  {
    objc_msgSend_setReason_(v8, v9, 2);
LABEL_5:
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Requesting to open application", buf, 2u);
      }
    }

    v14 = objc_msgSend_telephonyClient(self, v11, v12);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1A8308B08;
    v17[3] = &unk_1E7812258;
    v18 = completionCopy;
    objc_msgSend_requestStewieWithContext_completion_(v14, v15, v8, v17);

    v16 = v18;
    goto LABEL_12;
  }

  if (objc_msgSend_isStewieRoadsideChat_(IMChorosMonitor, v9, identifierCopy))
  {
    objc_msgSend__setStewieRoadsideContext_forChat_(self, v10, v8, identifierCopy);
    goto LABEL_5;
  }

  v16 = IMLogHandleForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_1A84E0994();
  }

LABEL_12:
}

- (void)placeEmergencyCallToHandle:(id)handle completion:(id)completion
{
  v38 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  completionCopy = completion;
  v7 = objc_alloc_init(MEMORY[0x1E69D8A90]);
  v8 = objc_alloc(MEMORY[0x1E69D8BD0]);
  v11 = objc_msgSend_emergencyProvider(v7, v9, v10);
  v13 = objc_msgSend_initWithProvider_(v8, v12, v11);

  objc_msgSend_setDialType_(v13, v14, 1);
  if (handleCopy)
  {
    objc_msgSend_setHandle_(v13, v15, handleCopy);
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v19 = objc_msgSend_handle(v13, v17, v18);
        v22 = objc_msgSend_value(v19, v20, v21);
        *buf = 138412290;
        v37 = v22;
        _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Requesting a specific handle %@ in the dial request.", buf, 0xCu);
      }
    }
  }

  v23 = IMLogHandleForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_1A84E0A94();
  }

  if (objc_msgSend_isValid(v13, v24, v25))
  {
    v28 = objc_msgSend_sharedInstance(MEMORY[0x1E69D8A58], v26, v27);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = sub_1A8308EB8;
    v34[3] = &unk_1E7812258;
    v35 = completionCopy;
    objc_msgSend_launchAppForDialRequest_completion_(v28, v29, v13, v34);

    v30 = v35;
  }

  else
  {
    v31 = IMLogHandleForCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E0AFC();
    }

    v30 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v32, @"IMChorosMonitorPlaceEmergencyCallErrorDomain", 1, 0);
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v30);
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (NSDictionary)emergencyHandles
{
  v44 = *MEMORY[0x1E69E9840];
  emergencyHandles = self->_emergencyHandles;
  if (!emergencyHandles)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = objc_alloc_init(MEMORY[0x1E69D8A90]);
    v8 = objc_msgSend_emergencyProvider(v5, v6, v7);
    v11 = v8;
    if (v8)
    {
      v12 = objc_msgSend_emergencyLabeledHandles(v8, v9, v10);

      if (v12)
      {
        v38 = v5;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v13 = objc_msgSend_emergencyLabeledHandles(v11, v9, v10);
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v39, v43, 16);
        if (v15)
        {
          v18 = v15;
          v19 = *v40;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v40 != v19)
              {
                objc_enumerationMutation(v13);
              }

              v21 = *(*(&v39 + 1) + 8 * i);
              v22 = objc_msgSend_label(v21, v16, v17);

              v27 = objc_msgSend_handle(v21, v23, v24);
              if (v22)
              {
                v28 = objc_msgSend_label(v21, v25, v26);
                objc_msgSend_setObject_forKeyedSubscript_(v4, v29, v27, v28);
              }

              else
              {
                v28 = objc_msgSend_handle(v21, v25, v26);
                v32 = objc_msgSend_value(v28, v30, v31);
                objc_msgSend_setObject_forKeyedSubscript_(v4, v33, v27, v32);
              }
            }

            v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v39, v43, 16);
          }

          while (v18);
        }

        v5 = v38;
      }
    }

    v34 = objc_msgSend_copy(v4, v9, v10);
    v35 = self->_emergencyHandles;
    self->_emergencyHandles = v34;

    emergencyHandles = self->_emergencyHandles;
  }

  v36 = *MEMORY[0x1E69E9840];

  return emergencyHandles;
}

+ (int64_t)serviceFromChatIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (IMIsStringStewieEmergency())
  {
    v5 = 1;
  }

  else if (objc_msgSend_isStewieRoadsideChat_(IMChorosMonitor, v4, identifierCopy))
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isStewieRoadsideActive
{
  v3 = objc_msgSend_getState(self, a2, v2);
  isActiveService = objc_msgSend_isActiveService_(v3, v4, 8);

  return isActiveService;
}

- (BOOL)shouldShowTextRoadsideProviderButton
{
  v3 = objc_msgSend_getState(self, a2, v2);
  if (objc_msgSend_isActiveService_(v3, v4, 8))
  {
    isAllowedService = 0;
  }

  else
  {
    isAllowedService = objc_msgSend_isAllowedService_(v3, v5, 8);
  }

  return isAllowedService;
}

- (id)mostRecentlyUsedRoadsideChatIdentifier
{
  v2 = IMGetDomainIntForKey();

  return MEMORY[0x1EEE66B58](IMChorosMonitor, sel_chatIdentifierForRoadside_, v2);
}

+ (id)roadsideProviderIDFromChatIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (objc_msgSend_serviceFromChatIdentifier_(IMChorosMonitor, v4, identifierCopy) == 8)
  {
    v6 = objc_msgSend_componentsSeparatedByString_(identifierCopy, v5, @":");
    if (objc_msgSend_count(v6, v7, v8) >= 3)
    {
      v10 = objc_opt_new();
      v12 = objc_msgSend_objectAtIndexedSubscript_(v6, v11, 2);
      v9 = objc_msgSend_numberFromString_(v10, v13, v12);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)roadsideProviderForProviderId:(int64_t)id
{
  v4 = objc_msgSend_telephonyClient(self, a2, id);
  v5 = objc_opt_new();
  v17 = 0;
  v7 = objc_msgSend_fetchRoadsideProvidersWithContext_error_(v4, v6, v5, &v17);
  v8 = v17;

  if (v8)
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E0BCC();
    }

LABEL_4:
    v12 = 0;
    goto LABEL_7;
  }

  if (!v7)
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E0C34(v11);
    }

    goto LABEL_4;
  }

  v11 = objc_msgSend_providers(v7, v9, v10);
  v14 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v13, id);
  v12 = objc_msgSend_objectForKeyedSubscript_(v11, v15, v14);

LABEL_7:

  return v12;
}

- (id)roadsideProviderNameForProviderId:(int64_t)id
{
  v3 = objc_msgSend_roadsideProviderForProviderId_(self, a2, id);
  v6 = objc_msgSend_providerName(v3, v4, v5);

  return v6;
}

- (id)roadsideBusinessIDForProviderId:(int64_t)id
{
  v3 = objc_msgSend_roadsideProviderForProviderId_(self, a2, id);
  v6 = objc_msgSend_bizId(v3, v4, v5);

  if (objc_msgSend__appearsToBeBusinessID(v6, v7, v8))
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

- (id)roadsideProviderNameForChatIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = objc_msgSend_sharedRegistry(IMChatRegistry, v5, v6);
  v9 = objc_msgSend_existingChatWithChatIdentifier_(v7, v8, identifierCopy);

  v12 = objc_msgSend_displayName(v9, v10, v11);
  if (v12)
  {
    v14 = v12;
    v15 = v14;
  }

  else
  {
    v16 = objc_msgSend_roadsideProviderIDFromChatIdentifier_(IMChorosMonitor, v13, identifierCopy);
    v19 = v16;
    if (v16 && (v20 = objc_msgSend_integerValue(v16, v17, v18), objc_msgSend_roadsideProviderNameForProviderId_(self, v21, v20), (v22 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v15 = v22;
      v14 = v15;
    }

    else
    {
      v23 = sub_1A8361964();
      v15 = objc_msgSend_localizedStringForKey_value_table_(v23, v24, @"STEWIE_ROADSIDE_FALLBACK_HANDLE_NAME", &stru_1F1B76F98, @"IMCoreLocalizable-Avocet");

      v14 = 0;
    }
  }

  return v15;
}

- (id)roadsideBusinessIDForChatIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = objc_msgSend_sharedRegistry(IMChatRegistry, v5, v6);
  v9 = objc_msgSend_existingChatWithChatIdentifier_(v7, v8, identifierCopy);

  v12 = objc_msgSend_associatedBusinessID(v9, v10, v11);
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = objc_msgSend_roadsideProviderIDFromChatIdentifier_(IMChorosMonitor, v13, identifierCopy);
    v18 = v15;
    if (v15)
    {
      v19 = objc_msgSend_integerValue(v15, v16, v17);
      v15 = objc_msgSend_roadsideBusinessIDForProviderId_(self, v20, v19);
    }

    v14 = v15;
  }

  return v14;
}

- (void)launchStewieForMessagingWithAppForegrounded:(BOOL)foregrounded
{
  selfCopy = self;
  IMChorosMonitor.launchStewieForMessaging(withAppForegrounded:)(foregrounded);
}

@end