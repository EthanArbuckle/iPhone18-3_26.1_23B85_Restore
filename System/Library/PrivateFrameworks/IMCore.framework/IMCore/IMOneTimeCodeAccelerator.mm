@interface IMOneTimeCodeAccelerator
+ (IMSyncedSettingsManaging)syncedSettingsManager;
- (IMOneTimeCodeAccelerator)initWithBlockForUpdates:(id)updates;
- (void)_deleteVerificationCodesDidChange:(id)change;
- (void)_incomingCodeUpdateFromDaemon:(id)daemon;
- (void)consumeCodeWithGuid:(id)guid;
- (void)dealloc;
- (void)fetchAutoDeletionPreferenceWithCompletionHandler:(id)handler;
- (void)onboardDeleteVerificationCodesIfNeededWithCompletionHandler:(id)handler;
- (void)onboardDeleteVerificationCodesIfNeededWithMessage:(id)message completionHandler:(id)handler;
- (void)setUpConnectionToDaemaon;
@end

@implementation IMOneTimeCodeAccelerator

+ (IMSyncedSettingsManaging)syncedSettingsManager
{
  v3 = qword_1EB2E9D50;
  if (!qword_1EB2E9D50)
  {
    v4 = objc_msgSend_sharedManager(IMSyncedSettingsManager, a2, v2);
    v5 = qword_1EB2E9D50;
    qword_1EB2E9D50 = v4;

    v3 = qword_1EB2E9D50;
  }

  return v3;
}

- (void)_deleteVerificationCodesDidChange:(id)change
{
  v33 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Delete Verifications Codes setting updated.", &v31, 2u);
    }
  }

  v8 = objc_msgSend_userInfo(changeCopy, v5, v6);
  v10 = objc_msgSend_valueForKey_(v8, v9, @"reason");
  isEqual = objc_msgSend_isEqual_(v10, v11, @"LocallySet");

  if ((isEqual & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "reason is not locally set", &v31, 2u);
      }
    }

    v16 = objc_msgSend_settingUpdateBlock(self, v13, v14);

    if (v16)
    {
      v19 = objc_msgSend_syncedSettingsManager(IMOneTimeCodeAccelerator, v17, v18);
      v21 = objc_msgSend_settingValueForKey_(v19, v20, 2);
      v24 = objc_msgSend_BOOLValue(v21, v22, v23);

      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = @"NO";
          if (v24)
          {
            v28 = @"YES";
          }

          v31 = 138412290;
          v32 = v28;
          _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "Calling setting update block with %@", &v31, 0xCu);
        }
      }

      v29 = objc_msgSend_settingUpdateBlock(self, v25, v26);
      v29[2](v29, v24);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (IMOneTimeCodeAccelerator)initWithBlockForUpdates:(id)updates
{
  updatesCopy = updates;
  v19.receiver = self;
  v19.super_class = IMOneTimeCodeAccelerator;
  v5 = [(IMOneTimeCodeAccelerator *)&v19 init];
  if (v5)
  {
    v6 = _Block_copy(updatesCopy);
    updateBlock = v5->_updateBlock;
    v5->_updateBlock = v6;

    objc_msgSend_setUpConnectionToDaemaon(v5, v8, v9);
    v12 = objc_msgSend_syncedSettingsManager(IMOneTimeCodeAccelerator, v10, v11);
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v16 = objc_msgSend_syncedSettingsManager(IMOneTimeCodeAccelerator, v14, v15);
      objc_msgSend_addObserver_selector_key_(v16, v17, v5, sel__deleteVerificationCodesDidChange_, 2);
    }
  }

  return v5;
}

- (void)consumeCodeWithGuid:(id)guid
{
  v13 = *MEMORY[0x1E69E9840];
  guidCopy = guid;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = guidCopy;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Sending request to daemon to consume code with GUID: %@", &v11, 0xCu);
    }
  }

  v8 = objc_msgSend_remoteProxy(self->_daemonConnection, v5, v6);
  objc_msgSend_consumeCodeWithMessageGUID_(v8, v9, guidCopy);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)onboardDeleteVerificationCodesIfNeededWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Sending request to onboarding delete verification codes if needed", v10, 2u);
    }
  }

  v8 = objc_msgSend_remoteProxy(self->_daemonConnection, v5, v6);
  objc_msgSend_onboardDeleteVerificationCodesIfNeededWithReply_(v8, v9, handlerCopy);
}

- (void)onboardDeleteVerificationCodesIfNeededWithMessage:(id)message completionHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  handlerCopy = handler;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = messageCopy;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Sending request to onboarding delete verification codes if needed, using custom message: %@", &v14, 0xCu);
    }
  }

  v11 = objc_msgSend_remoteProxy(self->_daemonConnection, v8, v9);
  objc_msgSend_onboardDeleteVerificationCodesIfNeededWithMessage_reply_(v11, v12, messageCopy, handlerCopy);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)fetchAutoDeletionPreferenceWithCompletionHandler:(id)handler
{
  if (handler)
  {
    daemonConnection = self->_daemonConnection;
    handlerCopy = handler;
    v8 = objc_msgSend_remoteProxy(daemonConnection, v5, v6);
    objc_msgSend_fetchAutoDeletionPreferenceWithReply_(v8, v7, handlerCopy);
  }
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
  objc_msgSend_removeObserver_(v4, v5, self);

  objc_msgSend_setUpdateBlock_(self, v6, 0);
  v9 = objc_msgSend_syncedSettingsManager(IMOneTimeCodeAccelerator, v7, v8);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v13 = objc_msgSend_syncedSettingsManager(IMOneTimeCodeAccelerator, v11, v12);
    objc_msgSend_removeObserver_key_(v13, v14, self, 2);
  }

  v15.receiver = self;
  v15.super_class = IMOneTimeCodeAccelerator;
  [(IMOneTimeCodeAccelerator *)&v15 dealloc];
}

- (void)setUpConnectionToDaemaon
{
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Setting up IMAgent connect for OTC", buf, 2u);
    }
  }

  v6 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v3, v4);
  objc_msgSend_addObserver_selector_name_object_(v6, v7, self, sel__incomingCodeUpdateFromDaemon_, @"com.apple.imcore.otcUpdated", 0);

  v10 = objc_msgSend_sharedController(IMDaemonController, v8, v9);
  v12 = objc_msgSend_multiplexedConnectionWithLabel_capabilities_context_(v10, v11, @"com.apple.IMCore.IMOneTimeCodeAccelerator", 545259520, 0);
  daemonConnection = self->_daemonConnection;
  self->_daemonConnection = v12;

  v14 = self->_daemonConnection;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1A835EAE4;
  v16[3] = &unk_1E780FCB0;
  v16[4] = self;
  objc_msgSend_connectWithCompletion_(v14, v15, v16);
}

- (void)_incomingCodeUpdateFromDaemon:(id)daemon
{
  v23 = *MEMORY[0x1E69E9840];
  daemonCopy = daemon;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = objc_msgSend_userInfo(daemonCopy, v8, v9);
      v21 = 138412290;
      v22 = v10;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Recevied updated valid codes list from daemon: %@", &v21, 0xCu);
    }
  }

  v11 = objc_msgSend_userInfo(daemonCopy, v5, v6);
  v13 = objc_msgSend_objectForKeyedSubscript_(v11, v12, @"validCodes");

  v16 = objc_msgSend_updateBlock(self, v14, v15);
  if (v16)
  {
    v17 = v13 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;

  if (v18)
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Sending codes to SPI ", &v21, 2u);
      }
    }

    (*(self->_updateBlock + 2))();
  }

  v20 = *MEMORY[0x1E69E9840];
}

@end