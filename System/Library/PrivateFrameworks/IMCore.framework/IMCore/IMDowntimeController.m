@interface IMDowntimeController
+ (id)fetchEmergencyNumbersSetWithProviderManager:(id)a3;
+ (id)sharedInstance;
- (BOOL)_allowedToShowConversationWithHandleIDs:(id)a3 sync:(BOOL)a4 context:(id *)a5 participantIDsHash:(id)a6 trackingChat:(id)a7;
- (BOOL)allowedToShowAppExtensionWithBundleIdentifier:(id)a3;
- (BOOL)isDowntimeLimited;
- (BOOL)isEmergencyHandle:(id)a3;
- (IMDowntimeController)init;
- (id)STConversation;
- (id)conversationContextForChat:(id)a3;
- (id)emergencyNumbers;
- (void)_addObserversToChat:(id)a3;
- (void)_doRegisterForScreenTimeNotifications;
- (void)_participantsForChatDidChange:(id)a3;
- (void)fetchScreenTimeAppPolicy;
- (void)getSTConversation:(id)a3;
- (void)initializeContext:(id)a3 participantIDsHash:(id)a4 trackingChat:(id)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)providersChangedForProviderManager:(id)a3;
- (void)registerForScreenTimeNotifications;
- (void)setEmergencyNumbers:(id)a3;
@end

@implementation IMDowntimeController

+ (id)sharedInstance
{
  if (qword_1ED767940 != -1)
  {
    sub_1A8259188();
  }

  v3 = qword_1ED7678E0;

  return v3;
}

- (IMDowntimeController)init
{
  v38.receiver = self;
  v38.super_class = IMDowntimeController;
  v2 = [(IMDowntimeController *)&v38 init];
  if (v2)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Setting up screentime downtime controller", &buf, 2u);
      }
    }

    if (objc_msgSend_isContactLimitsFeatureEnabled(IMDowntimeController, v3, v4))
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Contact Limits Feature Active", &buf, 2u);
        }
      }

      v2->_stateLock._os_unfair_lock_opaque = 0;
      v9 = objc_opt_new();
      objc_msgSend_setPolicyCache_(v2, v10, v9);

      v11 = dispatch_queue_create("com.apple.messages.private.IMDowntimeController", 0);
      screenTimeDispatchQueue = v2->_screenTimeDispatchQueue;
      v2->_screenTimeDispatchQueue = v11;

      v13 = dispatch_queue_create("com.apple.messages.private.IMDowntimeController.setup", 0);
      setupDispatchQueue = v2->_setupDispatchQueue;
      v2->_setupDispatchQueue = v13;

      v15 = objc_alloc_init(MEMORY[0x1E69D8A90]);
      callProviderManager = v2->_callProviderManager;
      v2->_callProviderManager = v15;

      objc_msgSend_addDelegate_queue_(v2->_callProviderManager, v17, v2, MEMORY[0x1E69E96A0]);
      v18 = v2->_setupDispatchQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A825967C;
      block[3] = &unk_1E780FCB0;
      v37 = v2;
      dispatch_async(v18, block);
    }

    v19 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v6, v7);
    bundleIDPolicyMap = v2->_bundleIDPolicyMap;
    v2->_bundleIDPolicyMap = v19;

    objc_initWeak(&buf, v2);
    v21 = dispatch_get_global_queue(-2, 0);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = sub_1A82597A0;
    v33[3] = &unk_1E780FDC8;
    objc_copyWeak(&v34, &buf);
    dispatch_async(v21, v33);

    v24 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v22, v23);
    v27 = objc_msgSend_mainQueue(MEMORY[0x1E696ADC8], v25, v26);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = sub_1A825EF3C;
    v31[3] = &unk_1E7810118;
    objc_copyWeak(&v32, &buf);
    v29 = objc_msgSend_addObserverForName_object_queue_usingBlock_(v24, v28, @"__kIMBalloonPluginManagerInstalledAppsChangedNotification", 0, v27, v31);

    objc_destroyWeak(&v32);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&buf);
  }

  return v2;
}

- (id)emergencyNumbers
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = self->_stateLock_emergencyNumbersSet;
  os_unfair_lock_unlock(&self->_stateLock);

  return v3;
}

- (id)STConversation
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1A8259BF0;
  v9 = sub_1A825AF24;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A8259E30;
  v4[3] = &unk_1E78130C8;
  v4[4] = &v5;
  objc_msgSend_getSTConversation_(self, a2, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)registerForScreenTimeNotifications
{
  if (objc_msgSend_isContactLimitsFeatureEnabled(IMDowntimeController, a2, v2))
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1A825C0DC;
    v9[3] = &unk_1E7813168;
    v9[4] = self;
    v9[5] = &v10;
    objc_msgSend_getSTConversation_(self, v4, v9);
    if (*(v11 + 24) == 1)
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *v8 = 0;
          _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Delaying registering for screentime state change notification as setup is not finished.", v8, 2u);
        }
      }
    }

    else
    {
      objc_msgSend__doRegisterForScreenTimeNotifications(self, v5, v6);
    }

    _Block_object_dispose(&v10, 8);
  }
}

- (void)_doRegisterForScreenTimeNotifications
{
  v20 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = qword_1ED7676F0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Registering for screentime state change notification %s", buf, 0xCu);
    }
  }

  v4 = qword_1ED7676F0;
  if (!qword_1ED7676F0)
  {
    *buf = xmmword_1E7813188;
    v18 = *off_1E7813198;
    v19 = 635;
    v5 = MEMORY[0x1E696AEC0];
    v6 = IMFileLocationTrimFileName();
    v7 = v19;
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, &stru_1F1B76F98);
    v11 = objc_msgSend_stringWithFormat_(v5, v10, @"Unexpected nil '%@' in %s at %s:%d. %@", @"IMSTManagementStateStateDidChangeNotificationName", "[IMDowntimeController _doRegisterForScreenTimeNotifications]", v6, v7, v9);

    v14 = IMGetAssertionFailureHandler();
    if (v14)
    {
      v14(v11);
    }

    else
    {
      v15 = objc_msgSend_warning(MEMORY[0x1E69A6138], v12, v13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E1AB0();
      }
    }

    v4 = qword_1ED7676F0;
  }

  self->_needsNotificationsRegistering = 0;
  *buf = 0;
  notify_register_dispatch(v4, buf, MEMORY[0x1E69E96A0], &unk_1F1B6EE80);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)fetchScreenTimeAppPolicy
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_sharedInstance(IMBalloonPluginManager, a2, v2);
  v5 = objc_opt_new();
  v8 = objc_msgSend_allPlugins(v4, v6, v7);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_1A825F418;
  v24[3] = &unk_1E78131D8;
  v9 = v5;
  v25 = v9;
  objc_msgSend_enumerateObjectsUsingBlock_(v8, v10, v24);

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = v9;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Fetching application downtime policies for bundleIDs: %@", buf, 0xCu);
    }
  }

  v14 = objc_msgSend_appPolicyMonitor(self, v11, v12);
  v17 = objc_msgSend_allObjects(v9, v15, v16);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1A834D640;
  v21[3] = &unk_1E7813200;
  v22 = v9;
  v23 = self;
  v18 = v9;
  objc_msgSend_requestPoliciesForBundleIdentifiers_completionHandler_(v14, v19, v17, v21);

  v20 = *MEMORY[0x1E69E9840];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v12 = a4;
  if (qword_1EB2E54E8 == a6)
  {
    if (objc_msgSend_isContactLimitsFeatureEnabled(IMDowntimeController, v10, v11))
    {
      v13 = v12;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1A834C094;
      v14[3] = &unk_1E7810140;
      v14[4] = self;
      v15 = v13;
      dispatch_async(MEMORY[0x1E69E96A0], v14);
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = IMDowntimeController;
    [(IMDowntimeController *)&v16 observeValueForKeyPath:a3 ofObject:v12 change:a5 context:a6];
  }
}

+ (id)fetchEmergencyNumbersSetWithProviderManager:(id)a3
{
  v3 = objc_msgSend_emergencyProvider(a3, a2, a3);
  v6 = objc_msgSend_emergencyHandles(v3, v4, v5);
  v8 = objc_msgSend___imArrayByApplyingBlock_(v6, v7, &unk_1F1B6EE40);

  v10 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v9, v8);

  return v10;
}

- (void)initializeContext:(id)a3 participantIDsHash:(id)a4 trackingChat:(id)a5
{
  v19 = a3;
  v8 = a5;
  v9 = a4;
  v12 = objc_msgSend_policyCache(self, v10, v11);
  objc_msgSend_addTrackingForConversationContext_forParticipantIDsHash_(v12, v13, v19, v9);

  objc_msgSend_addObserver_forKeyPath_options_context_(v19, v14, self, @"allowedByScreenTime", 5, qword_1EB2E54E8);
  if (v8)
  {
    v17 = objc_msgSend_allowedByScreenTime(v19, v15, v16);
    objc_msgSend_downtimeControllerInitializedContextWithAllowedByScreenTime_(v8, v18, v17);
  }
}

- (void)setEmergencyNumbers:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_stateLock);
  stateLock_emergencyNumbersSet = self->_stateLock_emergencyNumbersSet;
  self->_stateLock_emergencyNumbersSet = v4;

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)getSTConversation:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_stateLock);
  v4[2](v4, self->_stateLock_STConversation);

  os_unfair_lock_unlock(&self->_stateLock);
}

- (BOOL)_allowedToShowConversationWithHandleIDs:(id)a3 sync:(BOOL)a4 context:(id *)a5 participantIDsHash:(id)a6 trackingChat:(id)a7
{
  v10 = a4;
  v12 = a3;
  v13 = a6;
  v14 = a7;
  if (objc_msgSend_isContactLimitsFeatureEnabled(IMDowntimeController, v15, v16))
  {
    v47 = a5;
    if (v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = IMHashOfHashesForStringArray(v12, v17);
    }

    v20 = v18;
    v63 = 0;
    v64 = &v63;
    v65 = 0x3032000000;
    v66 = sub_1A8259BF0;
    v67 = sub_1A825AF24;
    v68 = 0;
    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A834C7D4;
    aBlock[3] = &unk_1E7813140;
    v52 = v12;
    v48 = v20;
    v53 = v48;
    v54 = self;
    v56 = &v59;
    v57 = &v63;
    v58 = v10;
    v21 = v14;
    v55 = v21;
    v22 = _Block_copy(aBlock);
    v25 = objc_msgSend_emergencyNumbers(self, v23, v24);
    v28 = objc_msgSend_STConversation(self, v26, v27);
    v31 = v28;
    if (v25 && v28)
    {
      v19 = v22[2](v22, v25, v28);
    }

    else
    {
      if (v10)
      {
        dispatch_sync(self->_setupDispatchQueue, &unk_1F1B6EE60);
        v36 = objc_msgSend_emergencyNumbers(self, v34, v35);
        v39 = objc_msgSend_STConversation(self, v37, v38);
        v19 = v22[2](v22, v36, v39);
      }

      else
      {
        v40 = objc_msgSend_policyCache(self, v29, v30);
        objc_msgSend_addSentinelContextForParticipantIDsHash_(v40, v41, v48);

        setupDispatchQueue = self->_setupDispatchQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1A834CD78;
        block[3] = &unk_1E7810230;
        block[4] = self;
        v50 = v22;
        dispatch_async(setupDispatchQueue, block);
        v19 = 1;
        v36 = v50;
      }
    }

    if (v47)
    {
      *v47 = v64[5];
    }

    if (v21)
    {
      if (v60[3])
      {
        v43 = v64[5];
        if (v43)
        {
          v44 = objc_msgSend_allowedByScreenTime(v43, v32, v33);
          objc_msgSend_updateCachedAllowedByScreenTime_(v21, v45, v44);
        }
      }
    }

    _Block_object_dispose(&v59, 8);
    _Block_object_dispose(&v63, 8);
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

- (BOOL)isDowntimeLimited
{
  v3 = IMHashOfHashesForStringArray(&unk_1F1BA1740, a2);
  v6 = objc_msgSend_policyCache(self, v4, v5);
  v8 = objc_msgSend_contextForParticipantIDsHash_(v6, v7, v3);

  if (!v8 || (objc_msgSend_null(MEMORY[0x1E695DFB0], v9, v10), v11 = objc_claimAutoreleasedReturnValue(), v11, v8 == v11))
  {
    v15 = [qword_1ED767700 alloc];
    v17 = objc_msgSend_initWithBundleIdentifier_(v15, v16, @"com.apple.MobileSMS");
    v19 = objc_msgSend_allowableByContactsHandles_(v17, v18, &unk_1F1BA1740);
    objc_msgSend_initializeContext_participantIDsHash_trackingChat_(self, v20, v19, v3, 0);
    v14 = objc_msgSend_applicationCurrentlyLimited(v19, v21, v22);
  }

  else
  {
    v14 = objc_msgSend_applicationCurrentlyLimited(v8, v12, v13);
  }

  return v14;
}

- (BOOL)isEmergencyHandle:(id)a3
{
  v4 = MEMORY[0x1E696AB08];
  v5 = a3;
  v8 = objc_msgSend_whitespaceAndNewlineCharacterSet(v4, v6, v7);
  v10 = objc_msgSend_stringByTrimmingCharactersInSet_(v5, v9, v8);

  v13 = objc_msgSend_controlCharacterSet(MEMORY[0x1E696AB08], v11, v12);
  v15 = objc_msgSend_stringByTrimmingCharactersInSet_(v10, v14, v13);

  v18 = objc_msgSend_emergencyNumbers(self, v16, v17);
  LOBYTE(v13) = objc_msgSend_containsObject_(v18, v19, v15);

  return v13;
}

- (void)_addObserversToChat:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E696AD88];
    v5 = a3;
    v10 = objc_msgSend_defaultCenter(v4, v6, v7);
    objc_msgSend_removeObserver_name_object_(v10, v8, self, @"__kIMChatParticipantsDidChangeNotification", v5);
    objc_msgSend_addObserver_selector_name_object_(v10, v9, self, sel__participantsForChatDidChange_, @"__kIMChatParticipantsDidChangeNotification", v5);
  }
}

- (void)_participantsForChatDidChange:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isContactLimitsFeatureEnabled(IMDowntimeController, v5, v6))
  {
    v10 = objc_msgSend_object(v4, v7, v8);
    if (v10)
    {
      v11 = objc_msgSend_conversationContextForChat_(self, v9, v10);
      v14 = objc_msgSend_policyCache(self, v12, v13);
      objc_msgSend_removeTrackingForChat_(v14, v15, v10);

      objc_msgSend_removeObserver_forKeyPath_context_(v11, v16, self, @"allowedByScreenTime", qword_1EB2E54E8);
      objc_msgSend_allowedToShowConversationForChat_sync_(self, v17, v10, 0);
    }

    else
    {
      v18 = IMLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E1B18();
      }
    }
  }
}

- (id)conversationContextForChat:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isContactLimitsFeatureEnabled(IMDowntimeController, v5, v6))
  {
    v9 = objc_msgSend_policyCache(self, v7, v8);
    v11 = objc_msgSend_conversationContextForChat_(v9, v10, v4);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)providersChangedForProviderManager:(id)a3
{
  if (objc_msgSend_isContactLimitsFeatureEnabled(IMDowntimeController, a2, a3))
  {
    v4 = objc_opt_class();
    v7 = objc_msgSend_callProviderManager(self, v5, v6);
    v10 = objc_msgSend_fetchEmergencyNumbersSetWithProviderManager_(v4, v8, v7);

    objc_msgSend_setEmergencyNumbers_(self, v9, v10);
  }
}

- (BOOL)allowedToShowAppExtensionWithBundleIdentifier:(id)a3
{
  if (!a3)
  {
    return 1;
  }

  v4 = a3;
  v7 = objc_msgSend_bundleIDPolicyMap(self, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, v4);

  if (v9)
  {
    v12 = objc_msgSend_integerValue(v9, v10, v11) == 0;
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

@end