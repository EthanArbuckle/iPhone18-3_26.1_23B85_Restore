@interface IMDaemonController
+ (IMDaemonController)sharedController;
+ (id)sharedInstance;
- (BOOL)_hasMultiplexedConnectionWithUniqueID:(id)d;
- (BOOL)addListenerID:(id)d capabilities:(unsigned int)capabilities;
- (BOOL)connectToDaemon;
- (BOOL)connectToDaemonWithLaunch:(BOOL)launch;
- (BOOL)connectToDaemonWithLaunch:(BOOL)launch capabilities:(unsigned int)capabilities blockUntilConnected:(BOOL)connected;
- (BOOL)isConnected;
- (BOOL)isConnecting;
- (IMDaemonController)init;
- (IMDaemonProtocol)remoteDaemon;
- (IMDaemonProtocol)replyingRemoteDaemon;
- (IMDaemonProtocol)synchronousRemoteDaemon;
- (IMDaemonProtocol)synchronousReplyingRemoteDaemon;
- (NSDictionary)processContext;
- (id)_multiplexedConnectionWithUniqueID:(id)d label:(id)label capabilities:(unint64_t)capabilities context:(id)context retain:(BOOL)retain;
- (id)delegate;
- (id)multiplexedConnectionWithLabel:(id)label capabilities:(unint64_t)capabilities context:(id)context;
- (unint64_t)_capabilitiesForMultiplexedConnectionWithUniqueID:(id)d;
- (unint64_t)_clientCapabilitiesForLegacyClientWithListenerID:(id)d requestedCapabilities:(unint64_t)capabilities;
- (unint64_t)processCapabilities;
- (unint64_t)requestedCapabilities;
- (unsigned)capabilitiesForListenerID:(id)d;
- (void)_connectWithCompletion:(id)completion;
- (void)_handleDaemonLaunched:(id)launched;
- (void)_invalidateMultiplexedConnectionWithUniqueID:(id)d;
- (void)_reconnectIfNeeded;
- (void)_updateAnonymousMultiplexedConnectionWithAddedCapabilities:(unint64_t)capabilities;
- (void)blockUntilConnected;
- (void)disconnectFromDaemon;
- (void)killDaemon;
- (void)requestSetup;
@end

@implementation IMDaemonController

+ (IMDaemonController)sharedController
{
  if (qword_1ED7677C0 != -1)
  {
    sub_1A82419F4();
  }

  v3 = qword_1ED7677D8;

  return v3;
}

+ (id)sharedInstance
{
  v3 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v6 = objc_msgSend_remoteDaemonProxy(v3, v4, v5);

  return v6;
}

- (IMDaemonController)init
{
  v46[2] = *MEMORY[0x1E69E9840];
  v45.receiver = self;
  v45.super_class = IMDaemonController;
  v2 = [(IMDaemonController *)&v45 init];
  if (v2)
  {
    v3 = objc_alloc_init(_IMLegacyDaemonListener);
    v4 = *(v2 + 3);
    *(v2 + 3) = v3;

    v5 = [IMDaemonConnection alloc];
    v7 = objc_msgSend_initWithListener_(v5, v6, *(v2 + 3));
    v8 = *(v2 + 10);
    *(v2 + 10) = v7;

    v9 = IMGetMainBundleIdentifier();
    v12 = v9;
    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v10, v11);
    }

    v14 = *(v2 + 4);
    *(v2 + 4) = v13;

    v15 = objc_alloc(MEMORY[0x1E696AD18]);
    v17 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v15, v16, 0x10000, 5, 1);
    v18 = *(v2 + 11);
    *(v2 + 11) = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v20 = *(v2 + 12);
    *(v2 + 12) = v19;

    v21 = [IMDaemonQueryController alloc];
    v23 = objc_msgSend_initWithDaemonController_(v21, v22, v2);
    v24 = *(v2 + 5);
    *(v2 + 5) = v23;

    *(v2 + 3) = 0;
    objc_initWeak(&location, v2);
    v25 = objc_alloc(MEMORY[0x1E69A80D8]);
    v26 = IMGetDaemonProtocol();
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = sub_1A82434AC;
    v42[3] = &unk_1E7810400;
    objc_copyWeak(&v43, &location);
    v28 = objc_msgSend_initWithProtocol_forwardingHandler_(v25, v27, v26, v42);

    v29 = objc_alloc(MEMORY[0x1E69A8040]);
    v30 = objc_loadWeakRetained(&location);
    v46[0] = v30;
    v46[1] = v28;
    v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v31, v46, 2);
    v34 = objc_msgSend_initWithTargets_(v29, v33, v32);
    v35 = *(v2 + 14);
    *(v2 + 14) = v34;

    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = sub_1A824C17C;
    v40[3] = &unk_1E7810428;
    objc_copyWeak(&v41, &location);
    objc_msgSend_setOnSetupComplete_(*(v2 + 10), v36, v40);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_1A8282F98, *MEMORY[0x1E69A61F8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    objc_destroyWeak(&v41);

    objc_destroyWeak(&v43);
    objc_destroyWeak(&location);
  }

  v38 = *MEMORY[0x1E69E9840];
  return v2;
}

- (BOOL)isConnected
{
  v4 = objc_msgSend_connection(self, a2, v2);
  if (objc_msgSend_isConnected(v4, v5, v6))
  {
    v9 = objc_msgSend_listener(self, v7, v8);
    isSetupComplete = objc_msgSend_isSetupComplete(v9, v10, v11);
  }

  else
  {
    isSetupComplete = 0;
  }

  return isSetupComplete;
}

- (void)blockUntilConnected
{
  objc_msgSend__connectWithContextChange_(self, a2, 0);
  v7 = objc_msgSend_connection(self, v3, v4);
  objc_msgSend_waitForSetup(v7, v5, v6);
}

- (unint64_t)requestedCapabilities
{
  v24 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = objc_msgSend_multiplexedConnections(self, v3, v4, 0);
  v8 = objc_msgSend_objectEnumerator(v5, v6, v7);

  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v19, v23, 16);
  if (v10)
  {
    v13 = v10;
    v14 = 0;
    v15 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v8);
        }

        v14 |= objc_msgSend_capabilities(*(*(&v19 + 1) + 8 * i), v11, v12);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v19, v23, 16);
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v17 = *MEMORY[0x1E69E9840];
  return v14;
}

- (NSDictionary)processContext
{
  v41 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  processContext = self->_processContext;
  if (!processContext)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v7 = objc_msgSend_multiplexedConnections(self, v5, v6, 0);
    v10 = objc_msgSend_keyEnumerator(v7, v8, v9);

    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v36, v40, 16);
    if (v12)
    {
      v15 = v12;
      v16 = *v37;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v37 != v16)
          {
            objc_enumerationMutation(v10);
          }

          v18 = *(*(&v36 + 1) + 8 * i);
          v19 = objc_msgSend_multiplexedConnections(self, v13, v14);
          v21 = objc_msgSend_objectForKey_(v19, v20, v18);

          if (v21)
          {
            v24 = objc_msgSend_context(v21, v22, v23);

            if (v24)
            {
              v27 = objc_msgSend_context(v21, v25, v26);
              objc_msgSend_setObject_forKeyedSubscript_(v4, v28, v27, v18);
            }
          }
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v36, v40, 16);
      }

      while (v15);
    }

    v31 = objc_msgSend_copy(v4, v29, v30);
    v32 = self->_processContext;
    self->_processContext = v31;

    processContext = self->_processContext;
  }

  v33 = processContext;
  os_unfair_lock_unlock(&self->_lock);
  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

- (unint64_t)processCapabilities
{
  if (self->_processCapabilities)
  {
    return self->_processCapabilities;
  }

  else
  {
    return objc_msgSend_requestedCapabilities(self, a2, v2);
  }
}

- (IMDaemonProtocol)replyingRemoteDaemon
{
  v3 = objc_msgSend_connection(self, a2, v2);
  v6 = objc_msgSend_remoteObjectProxy(v3, v4, v5);

  return v6;
}

- (IMDaemonProtocol)remoteDaemon
{
  v3 = objc_msgSend_connection(self, a2, v2);
  v6 = objc_msgSend_remoteObjectProxy(v3, v4, v5);

  return v6;
}

- (IMDaemonProtocol)synchronousRemoteDaemon
{
  v3 = objc_msgSend_connection(self, a2, v2);
  v6 = objc_msgSend_synchronousRemoteObjectProxy(v3, v4, v5);

  return v6;
}

- (void)_connectWithCompletion:(id)completion
{
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Requesting asynchronous connection and setup for client", buf, 2u);
    }
  }

  v8 = objc_msgSend_connection(self, v5, v6);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A828322C;
  v11[3] = &unk_1E780FE90;
  v12 = completionCopy;
  v9 = completionCopy;
  objc_msgSend_requestSetupIfNeededWithCompletionHandler_(v8, v10, v11);
}

- (BOOL)connectToDaemon
{
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Connecting with anonymous multiplexed connection", v6, 2u);
    }
  }

  objc_msgSend__connectWithContextChange_(self, v3, 0);
  return 1;
}

- (BOOL)connectToDaemonWithLaunch:(BOOL)launch
{
  launchCopy = launch;
  v12 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (launchCopy)
      {
        v7 = @"YES";
      }

      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Connecting with anonymous multiplexed connection with launch %@", &v10, 0xCu);
    }
  }

  objc_msgSend__connectWithContextChange_(self, v5, 0);
  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)connectToDaemonWithLaunch:(BOOL)launch capabilities:(unsigned int)capabilities blockUntilConnected:(BOOL)connected
{
  connectedCopy = connected;
  v25 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = IMStringFromClientCapabilities();
      v11 = v10;
      v12 = @"NO";
      if (connectedCopy)
      {
        v12 = @"YES";
      }

      v21 = 138412546;
      v22 = v10;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Connecting with anonymous multiplexed connection using capabilities: %@ blockUntilConnected: %@", &v21, 0x16u);
    }
  }

  objc_msgSend__updateAnonymousMultiplexedConnectionWithAddedCapabilities_(self, v8, capabilities);
  objc_msgSend__connectWithContextChange_(self, v13, 0);
  if (connectedCopy)
  {
    v16 = objc_msgSend_connection(self, v14, v15);
    objc_msgSend_waitForSetup(v16, v17, v18);
  }

  v19 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)disconnectFromDaemon
{
  v4 = objc_msgSend_connection(self, a2, v2);
  objc_msgSend_disconnect(v4, v5, v6);

  v11 = objc_msgSend_listener(self, v7, v8);
  objc_msgSend__noteDisconnected(v11, v9, v10);
}

- (void)killDaemon
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Request to terminate daemon ignored, this function is no longer supported", v3, 2u);
    }
  }
}

- (void)_reconnectIfNeeded
{
  v27 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Request to reconnect if needed", &v25, 2u);
    }
  }

  os_unfair_lock_lock(&self->_lock);
  v6 = objc_msgSend_anonymousMultiplexedConnection(self, v4, v5);
  if (v6)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v10 = objc_msgSend_multiplexedConnections(self, v8, v9);
  v13 = objc_msgSend_count(v10, v11, v12) < v7;

  os_unfair_lock_unlock(&self->_lock);
  v14 = IMOSLoggingEnabled();
  if (v13)
  {
    if (v14)
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Not reconnecting, no non-anonymous multiplexed connections", &v25, 2u);
      }
    }
  }

  else
  {
    if (v14)
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v20 = objc_msgSend_multiplexedConnections(self, v18, v19);
        v23 = objc_msgSend_count(v20, v21, v22);
        v25 = 134217984;
        v26 = v23;
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Reconnecting, controller has %llu multiplexed connections", &v25, 0xCu);
      }
    }

    objc_msgSend__connectWithContextChange_(self, v15, 0);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_handleDaemonLaunched:(id)launched
{
  launchedCopy = launched;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Daemon launch detected while process was running", v8, 2u);
    }
  }

  objc_msgSend__reconnectIfNeeded(self, v5, v6);
}

- (id)multiplexedConnectionWithLabel:(id)label capabilities:(unint64_t)capabilities context:(id)context
{
  v8 = MEMORY[0x1E696AEC0];
  v9 = MEMORY[0x1E696AFB0];
  contextCopy = context;
  labelCopy = label;
  v14 = objc_msgSend_UUID(v9, v12, v13);
  v17 = objc_msgSend_UUIDString(v14, v15, v16);
  v19 = objc_msgSend_stringWithFormat_(v8, v18, @"%@-%@", labelCopy, v17);

  v21 = objc_msgSend__multiplexedConnectionWithUniqueID_label_capabilities_context_retain_(self, v20, v19, labelCopy, capabilities, contextCopy, 0);

  return v21;
}

- (id)_multiplexedConnectionWithUniqueID:(id)d label:(id)label capabilities:(unint64_t)capabilities context:(id)context retain:(BOOL)retain
{
  retainCopy = retain;
  v53 = *MEMORY[0x1E69E9840];
  dCopy = d;
  labelCopy = label;
  contextCopy = context;
  os_unfair_lock_lock(&self->_lock);
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A8283DE0;
  aBlock[3] = &unk_1E7810450;
  objc_copyWeak(&v45, &location);
  v15 = dCopy;
  v44 = v15;
  v16 = _Block_copy(aBlock);
  v38 = MEMORY[0x1E69E9820];
  v39 = 3221225472;
  v40 = sub_1A8283E30;
  v41 = &unk_1E780FDC8;
  objc_copyWeak(&v42, &location);
  v17 = _Block_copy(&v38);
  v18 = [IMMultiplexedDaemonConnection alloc];
  v20 = objc_msgSend_initWithLabel_capabilities_context_onInvalidate_onDealloc_(v18, v19, labelCopy, capabilities, contextCopy, v16, v17, v38, v39, v40, v41);
  v23 = objc_msgSend_multiplexedConnections(self, v21, v22);
  objc_msgSend_setObject_forKey_(v23, v24, v20, v15);

  v27 = objc_msgSend_retainedMultiplexedConnections(self, v25, v26);
  v29 = v27;
  if (retainCopy)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v27, v28, v20, v15);
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v27, v28, 0, v15);
  }

  if (contextCopy)
  {
    processContext = self->_processContext;
    self->_processContext = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (IMOSLoggingEnabled())
  {
    v32 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = IMStringFromClientCapabilities();
      v34 = v33;
      v35 = MEMORY[0x1E695E110];
      if (contextCopy)
      {
        v35 = MEMORY[0x1E695E118];
      }

      *buf = 138412802;
      v48 = labelCopy;
      v49 = 2112;
      v50 = v33;
      v51 = 2112;
      v52 = v35;
      _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_INFO, "Multiplexing connection with label: %@ capabilities: %@ hasContext: %@", buf, 0x20u);
    }
  }

  objc_msgSend__capabilitiesDidChangeWithContextChange_(self, v31, contextCopy != 0);

  objc_destroyWeak(&v42);
  objc_destroyWeak(&v45);
  objc_destroyWeak(&location);

  v36 = *MEMORY[0x1E69E9840];

  return v20;
}

- (void)_invalidateMultiplexedConnectionWithUniqueID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  v7 = objc_msgSend_multiplexedConnections(self, v5, v6);
  objc_msgSend_removeObjectForKey_(v7, v8, dCopy);

  v11 = objc_msgSend_retainedMultiplexedConnections(self, v9, v10);
  objc_msgSend_setObject_forKeyedSubscript_(v11, v12, 0, dCopy);

  os_unfair_lock_unlock(&self->_lock);
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = dCopy;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Removed multiplexed connection with uniqueID: %@", &v17, 0xCu);
    }
  }

  objc_msgSend__capabilitiesDidChange(self, v13, v14);

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)_hasMultiplexedConnectionWithUniqueID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  v7 = objc_msgSend_multiplexedConnections(self, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, dCopy);

  os_unfair_lock_unlock(&self->_lock);
  return v9 != 0;
}

- (unint64_t)_capabilitiesForMultiplexedConnectionWithUniqueID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  v7 = objc_msgSend_multiplexedConnections(self, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, dCopy);

  v12 = objc_msgSend_capabilities(v9, v10, v11);
  os_unfair_lock_unlock(&self->_lock);
  return v12;
}

- (void)_updateAnonymousMultiplexedConnectionWithAddedCapabilities:(unint64_t)capabilities
{
  v22 = *MEMORY[0x1E69E9840];
  if (capabilities)
  {
    capabilitiesCopy = capabilities;
    v5 = objc_msgSend_anonymousMultiplexedConnection(self, a2, capabilities);

    if (v5)
    {
      v8 = objc_msgSend_anonymousMultiplexedConnection(self, v6, v7);
      v11 = objc_msgSend_capabilities(v8, v9, v10);

      capabilitiesCopy |= v11;
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = IMStringFromClientCapabilities();
          v14 = IMStringFromClientCapabilities();
          v18 = 138412546;
          v19 = v13;
          v20 = 2112;
          v21 = v14;
          _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Had existing anonymous capabilities %@, updating to %@", &v18, 0x16u);
        }
      }
    }

    v15 = objc_msgSend__multiplexedConnectionWithUniqueID_label_capabilities_context_retain_(self, v6, @"__IMDaemonControllerAnonymousConnectionIdentifier", @"__IMDaemonControllerAnonymousConnectionIdentifier", capabilitiesCopy, 0, 1);
    objc_msgSend_setAnonymousMultiplexedConnection_(self, v16, v15);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)addListenerID:(id)d capabilities:(unsigned int)capabilities
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v8 = objc_msgSend__clientCapabilitiesForLegacyClientWithListenerID_requestedCapabilities_(self, v7, dCopy, capabilities);
  v10 = objc_msgSend__multiplexedConnectionWithUniqueID_label_capabilities_context_retain_(self, v9, dCopy, dCopy, v8, 0, 1);
  if (objc_msgSend__clientRequiresSynchronousConnectionRescueWithListenerID_(self, v11, dCopy))
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = dCopy;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Forcing block until connected for client %@ to rescue poor asynchronous behavior", &v17, 0xCu);
      }
    }

    objc_msgSend_blockUntilConnected(self, v12, v13);
  }

  v15 = *MEMORY[0x1E69E9840];
  return 1;
}

- (unsigned)capabilitiesForListenerID:(id)d
{
  if (d)
  {
    return objc_msgSend__capabilitiesForMultiplexedConnectionWithUniqueID_(self, a2, d);
  }

  else
  {
    return objc_msgSend_processCapabilities(self, a2, 0);
  }
}

- (unint64_t)_clientCapabilitiesForLegacyClientWithListenerID:(id)d requestedCapabilities:(unint64_t)capabilities
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if ((capabilities & 0x200004) == 4)
  {
    capabilitiesCopy = capabilities | 0x400000;
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = dCopy;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Assuming client %@ wants Precached Recent Chats (has no on-demand chat registry capability)", &v17, 0xCu);
      }
    }
  }

  else
  {
    capabilitiesCopy = capabilities;
    capabilitiesCopy2 = capabilities;
    if ((capabilities & 4) == 0)
    {
      goto LABEL_11;
    }
  }

  capabilitiesCopy2 = capabilitiesCopy | 0x43200;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = dCopy;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Assuming client %@ wants Send Messages, Message History Modify Read State, and Accounts (has chat capability)", &v17, 0xCu);
    }
  }

LABEL_11:
  if (objc_msgSend_isEqualToString_(dCopy, v5, @"CKSettingsMessagesController"))
  {
    capabilitiesCopy2 |= 0x20000000uLL;
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Granting synced settings capability to CKSettingsMessagesController listener.", &v17, 2u);
      }
    }
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = IMStringFromClientCapabilities();
      v14 = IMStringFromClientCapabilities();
      v17 = 138412802;
      v18 = dCopy;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Client %@ requested %@ with legacy API, upgrading capabilities to %@", &v17, 0x20u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return capabilitiesCopy2;
}

- (BOOL)isConnecting
{
  v4 = objc_msgSend_connection(self, a2, v2);
  if (objc_msgSend_isConnected(v4, v5, v6))
  {
    v9 = objc_msgSend_listener(self, v7, v8);
    v12 = objc_msgSend_isSetupComplete(v9, v10, v11) ^ 1;
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (void)requestSetup
{
  v5 = objc_msgSend_connection(self, a2, v2);
  objc_msgSend_requestSetup(v5, v3, v4);
}

- (IMDaemonProtocol)synchronousReplyingRemoteDaemon
{
  v3 = objc_msgSend_connection(self, a2, v2);
  v6 = objc_msgSend_synchronousRemoteObjectProxy(v3, v4, v5);

  return v6;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end