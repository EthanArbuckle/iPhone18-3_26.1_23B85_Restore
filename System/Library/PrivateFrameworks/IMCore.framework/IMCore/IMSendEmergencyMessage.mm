@interface IMSendEmergencyMessage
- (IMSendEmergencyMessage)init;
- (IMSendEmergencyMessage)initWithDaemon:(id)a3;
- (void)daemonConnectionLost;
- (void)daemonControllerDidDisconnect;
- (void)dealloc;
- (void)locationUpdateSent;
- (void)sendEmergencyQuestionnaire:(id)a3;
- (void)setUpConnectionToDaemaon;
@end

@implementation IMSendEmergencyMessage

- (IMSendEmergencyMessage)init
{
  v4 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v6 = objc_msgSend_initWithDaemon_(self, v5, v4);

  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v13 = 0;
        v9 = "Success init";
        v10 = &v13;
LABEL_8:
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, v9, v10, 2u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if (v7)
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = 0;
      v9 = "Failed init";
      v10 = &v12;
      goto LABEL_8;
    }

LABEL_9:
  }

  return v6;
}

- (void)sendEmergencyQuestionnaire:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Sending request to daemon to send emergency questionnaire", v10, 2u);
    }
  }

  v8 = objc_msgSend_remoteDaemon(self->_daemon, v5, v6);
  objc_msgSend_sendEmergencyQuestionnaire_(v8, v9, v4);
}

- (void)locationUpdateSent
{
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Sending a location update", v9, 2u);
    }
  }

  v6 = objc_msgSend_remoteDaemon(self->_daemon, v3, v4);
  objc_msgSend_locationUpdateSent(v6, v7, v8);
}

- (IMSendEmergencyMessage)initWithDaemon:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = IMSendEmergencyMessage;
  v5 = [(IMSendEmergencyMessage *)&v11 init];
  v7 = v5;
  if (v5)
  {
    objc_msgSend_setDaemon_(v5, v6, v4);
    objc_msgSend_setUpConnectionToDaemaon(v7, v8, v9);
  }

  return v7;
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
  objc_msgSend_removeObserver_(v4, v5, self);

  objc_msgSend_setDelegate_(self->_daemon, v6, 0);
  objc_msgSend_setDaemon_(self, v7, 0);
  v8.receiver = self;
  v8.super_class = IMSendEmergencyMessage;
  [(IMSendEmergencyMessage *)&v8 dealloc];
}

- (void)setUpConnectionToDaemaon
{
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Setting up IMAgent connect for Stewie emergency message", buf, 2u);
    }
  }

  objc_msgSend_setDelegate_(self->_daemon, v3, self);
  v7 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v5, v6);
  v10 = objc_msgSend_bundleIdentifier(v7, v8, v9);

  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, @"%@-SendEmergencyMessage", v10);
  objc_msgSend_addListenerID_capabilities_(self->_daemon, v13, v12, *MEMORY[0x1E69A62A8]);
  daemon = self->_daemon;
  v17 = objc_msgSend_capabilities(daemon, v15, v16);
  objc_msgSend_connectToDaemonWithLaunch_capabilities_blockUntilConnected_(daemon, v18, 0, v17, 0);
}

- (void)daemonControllerDidDisconnect
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Did disconnect from daemon", v3, 2u);
    }
  }
}

- (void)daemonConnectionLost
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Lost connection daemon", v3, 2u);
    }
  }
}

@end