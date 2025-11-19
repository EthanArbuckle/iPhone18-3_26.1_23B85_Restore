@interface IMCollaborationNoticeDispatcher
- (IMCollaborationNoticeDispatcher)init;
- (id)_bestSendingHandle;
- (void)dealloc;
- (void)sendClearNotice:(id)a3 toHandles:(id)a4 completion:(id)a5;
- (void)sendNotice:(id)a3 toHandles:(id)a4 completion:(id)a5;
- (void)setUpConnectionToDaemon;
@end

@implementation IMCollaborationNoticeDispatcher

- (IMCollaborationNoticeDispatcher)init
{
  v10.receiver = self;
  v10.super_class = IMCollaborationNoticeDispatcher;
  v2 = [(IMCollaborationNoticeDispatcher *)&v10 init];
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v3)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Success init", v9, 2u);
      }
    }

    objc_msgSend_setUpConnectionToDaemon(v2, v4, v5);
  }

  else if (v3)
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "IMCollaborationNoticeDispatcher failed init", v9, 2u);
    }
  }

  return v2;
}

- (void)sendNotice:(id)a3 toHandles:(id)a4 completion:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v25 = v8;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Connecting to daemon to send notice %@ to %@", buf, 0x16u);
    }
  }

  v14 = objc_msgSend_daemonConnection(self, v11, v12);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1A8307428;
  v20[3] = &unk_1E78120D0;
  v20[4] = self;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v15 = v10;
  v16 = v9;
  v17 = v8;
  objc_msgSend_connectWithCompletion_(v14, v18, v20);

  v19 = *MEMORY[0x1E69E9840];
}

- (void)sendClearNotice:(id)a3 toHandles:(id)a4 completion:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v25 = v8;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Connecting to daemon to send clear notice %@ to %@", buf, 0x16u);
    }
  }

  v14 = objc_msgSend_daemonConnection(self, v11, v12);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1A8307910;
  v20[3] = &unk_1E78120D0;
  v20[4] = self;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v15 = v10;
  v16 = v9;
  v17 = v8;
  objc_msgSend_connectWithCompletion_(v14, v18, v20);

  v19 = *MEMORY[0x1E69E9840];
}

- (id)_bestSendingHandle
{
  v2 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, a2, *MEMORY[0x1E69A7AF0]);
  v5 = objc_msgSend_sharedInstance(IMAccountController, v3, v4);
  v7 = objc_msgSend_bestAccountForService_(v5, v6, v2);

  v10 = objc_msgSend_loginIMHandle(v7, v8, v9);
  v13 = objc_msgSend_ID(v10, v11, v12);
  v14 = MEMORY[0x1AC56C3F0]();

  if (objc_msgSend__appearsToBeEmail(v14, v15, v16))
  {
    v17 = MEMORY[0x1AC56B6F0](v14);
  }

  else
  {
    v17 = IDSCopyIDForPhoneNumber();
  }

  v18 = v17;

  return v18;
}

- (void)dealloc
{
  objc_msgSend_disconnectFromDaemon(self, a2, v2);
  objc_msgSend_setDaemonConnection_(self, v4, 0);
  v5.receiver = self;
  v5.super_class = IMCollaborationNoticeDispatcher;
  [(IMCollaborationNoticeDispatcher *)&v5 dealloc];
}

- (void)setUpConnectionToDaemon
{
  v15 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Setting up connection for %@", &v13, 0xCu);
    }
  }

  v8 = objc_msgSend_sharedController(IMDaemonController, v3, v4);
  v10 = objc_msgSend_multiplexedConnectionWithLabel_capabilities_context_(v8, v9, @"com.apple.IMCore.IMCollaborationNoticeDispatcher", 512, 0);
  daemonConnection = self->_daemonConnection;
  self->_daemonConnection = v10;

  v12 = *MEMORY[0x1E69E9840];
}

@end