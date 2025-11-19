@interface IMDMessageServicesCenter
+ (id)sharedInstance;
- (BOOL)_connect;
- (BOOL)_disconnect;
- (IMDMessageServicesCenter)init;
- (void)_disconnected;
- (void)_requestExpireStateWithGUID:(id)a3 handler:(id)a4;
- (void)_requestScheduleMessagesWithGUID:(id)a3 handler:(id)a4;
- (void)_requestWatchdogWithGUID:(id)a3 handler:(id)a4;
- (void)dealloc;
- (void)requestExpireStateForMessageGuid:(id)a3 completionBlock:(id)a4;
- (void)requestExpireStateWithCompletion:(id)a3;
- (void)requestRoutingWithDowngradableServices:(id)a3 completion:(id)a4;
- (void)requestScheduledMessageForGuid:(id)a3 completionBlock:(id)a4;
- (void)requestScheduledMessagesWithCompletion:(id)a3;
- (void)requestWatchdogForMessageGuid:(id)a3 completionBlock:(id)a4;
- (void)requestWatchdogWithCompletion:(id)a3;
@end

@implementation IMDMessageServicesCenter

+ (id)sharedInstance
{
  if (qword_28141B7D8 != -1)
  {
    sub_2547E4A68();
  }

  return qword_28141B7D0;
}

- (IMDMessageServicesCenter)init
{
  v3.receiver = self;
  v3.super_class = IMDMessageServicesCenter;
  return [(IMDMessageServicesCenter *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IMDMessageServicesCenter;
  [(IMDMessageServicesCenter *)&v2 dealloc];
}

- (void)_disconnected
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(&dword_2547E2000, v3, OS_LOG_TYPE_DEBUG, "Clearing out _connection, we're disconnected", v5, 2u);
    }
  }

  connection = self->_connection;
  if (connection)
  {
    xpc_connection_cancel(connection);
    xpc_release(self->_connection);
    self->_connection = 0;
  }
}

- (BOOL)_disconnect
{
  if (self->_connection)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *v5 = 0;
        _os_log_impl(&dword_2547E2000, v3, OS_LOG_TYPE_DEBUG, "Forcing a disconnect, terminating connection", v5, 2u);
      }
    }

    xpc_connection_cancel(self->_connection);
    xpc_release(self->_connection);
    self->_connection = 0;
  }

  return 1;
}

- (BOOL)_connect
{
  if (self->_connection)
  {
    return 1;
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2547E2000, v4, OS_LOG_TYPE_INFO, "Connecting to message services agent", buf, 2u);
    }
  }

  self->_connection = IMXPCCreateConnectionForServiceWithQueue();
  IMXPCConfigureConnection();
  return self->_connection != 0;
}

- (void)requestRoutingWithDowngradableServices:(id)a3 completion:(id)a4
{
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_2547E2000, v7, OS_LOG_TYPE_INFO, "MessageServices received request for routing", v8, 2u);
    }
  }

  [(IMDMessageServicesCenter *)self _requestRoutingWithGUID:0 chatGUID:0 downgradableServices:a3 error:0 handler:a4];
}

- (void)_requestExpireStateWithGUID:(id)a3 handler:(id)a4
{
  if ([(IMDMessageServicesCenter *)self _connect])
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    IMInsertStringsToXPCDictionary();
    if (a3)
    {
      [a3 UTF8String];
      IMInsertStringsToXPCDictionary();
    }

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_2547E3950;
    handler[3] = &unk_279788848;
    handler[4] = a4;
    xpc_connection_send_message_with_reply(self->_connection, v7, MEMORY[0x277D85CD0], handler);
    xpc_release(v7);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2547E2000, v8, OS_LOG_TYPE_INFO, "Unable to connect to message services agent", buf, 2u);
      }
    }

    if (a4)
    {
      (*(a4 + 2))(a4, 0, 0.0);
    }
  }
}

- (void)requestExpireStateWithCompletion:(id)a3
{
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_2547E2000, v5, OS_LOG_TYPE_INFO, "MessageServices received request for expire state", v6, 2u);
    }
  }

  [(IMDMessageServicesCenter *)self _requestExpireStateWithGUID:0 handler:a3];
}

- (void)requestExpireStateForMessageGuid:(id)a3 completionBlock:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = a3;
      _os_log_impl(&dword_2547E2000, v7, OS_LOG_TYPE_INFO, "MessageServices received request for expire state for guid: %@", &v9, 0xCu);
    }
  }

  [(IMDMessageServicesCenter *)self _requestExpireStateWithGUID:a3 handler:a4];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_requestWatchdogWithGUID:(id)a3 handler:(id)a4
{
  if ([(IMDMessageServicesCenter *)self _connect])
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    IMInsertStringsToXPCDictionary();
    if (a3)
    {
      [a3 UTF8String];
      IMInsertStringsToXPCDictionary();
    }

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_2547E3F80;
    handler[3] = &unk_279788848;
    handler[4] = a4;
    xpc_connection_send_message_with_reply(self->_connection, v7, MEMORY[0x277D85CD0], handler);
    xpc_release(v7);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2547E2000, v8, OS_LOG_TYPE_INFO, "Unable to connect to message services agent", buf, 2u);
      }
    }

    if (a4)
    {
      (*(a4 + 2))(a4, 0, 0.0);
    }
  }
}

- (void)requestWatchdogWithCompletion:(id)a3
{
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_2547E2000, v5, OS_LOG_TYPE_INFO, "MessageServices received request for watchdog", v6, 2u);
    }
  }

  [(IMDMessageServicesCenter *)self _requestWatchdogWithGUID:0 handler:a3];
}

- (void)requestWatchdogForMessageGuid:(id)a3 completionBlock:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = a3;
      _os_log_impl(&dword_2547E2000, v7, OS_LOG_TYPE_INFO, "MessageServices received request for watchdog for guid: %@", &v9, 0xCu);
    }
  }

  [(IMDMessageServicesCenter *)self _requestWatchdogWithGUID:a3 handler:a4];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_requestScheduleMessagesWithGUID:(id)a3 handler:(id)a4
{
  if ([(IMDMessageServicesCenter *)self _connect])
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    IMInsertStringsToXPCDictionary();
    if (a3)
    {
      [a3 UTF8String];
      IMInsertStringsToXPCDictionary();
    }

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_2547E45B4;
    handler[3] = &unk_279788848;
    handler[4] = a4;
    xpc_connection_send_message_with_reply(self->_connection, v7, MEMORY[0x277D85CD0], handler);
    xpc_release(v7);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2547E2000, v8, OS_LOG_TYPE_INFO, "Unable to connect to message services agent", buf, 2u);
      }
    }

    if (a4)
    {
      (*(a4 + 2))(a4, 0, 60.0);
    }
  }
}

- (void)requestScheduledMessagesWithCompletion:(id)a3
{
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_2547E2000, v5, OS_LOG_TYPE_INFO, "MessageServices received request for Schedule Messages", v6, 2u);
    }
  }

  [(IMDMessageServicesCenter *)self _requestScheduleMessagesWithGUID:0 handler:a3];
}

- (void)requestScheduledMessageForGuid:(id)a3 completionBlock:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = a3;
      _os_log_impl(&dword_2547E2000, v7, OS_LOG_TYPE_INFO, "MessageServices received request for Schedule Messages for guid: %@", &v9, 0xCu);
    }
  }

  [(IMDMessageServicesCenter *)self _requestScheduleMessagesWithGUID:a3 handler:a4];
  v8 = *MEMORY[0x277D85DE8];
}

@end