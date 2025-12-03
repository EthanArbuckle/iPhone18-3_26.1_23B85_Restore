@interface IMBackgroundMessagingAPIConnection
- (IMBackgroundMessagingAPIConnection)init;
- (id)_backgroundMessagingAPIServiceWithErrorHandler:(id)handler;
- (id)_currentConnection;
- (void)_clearConnection;
- (void)checkAuthorizationStatusForRecipients:(id)recipients completion:(id)completion;
- (void)requestBackgroundMessagingAuthorizationForRecipients:(id)recipients completion:(id)completion;
- (void)sendBackgroundMessage:(id)message toRecipient:(id)recipient completion:(id)completion;
@end

@implementation IMBackgroundMessagingAPIConnection

- (IMBackgroundMessagingAPIConnection)init
{
  v6.receiver = self;
  v6.super_class = IMBackgroundMessagingAPIConnection;
  v2 = [(IMBackgroundMessagingAPIConnection *)&v6 init];
  v3 = dispatch_queue_create("IMBackgroundMessagingAPIConnectionQueue", 0);
  queue = v2->_queue;
  v2->_queue = v3;

  return v2;
}

- (id)_currentConnection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = objc_alloc(MEMORY[0x1E696B0B8]);
    v6 = objc_msgSend_initWithMachServiceName_options_(v4, v5, @"com.apple.messages.critical-messaging", 0);
    v7 = self->_connection;
    self->_connection = v6;

    objc_msgSend__setQueue_(self->_connection, v8, self->_queue);
    objc_initWeak(&location, self);
    v9 = self->_connection;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1A831359C;
    v21[3] = &unk_1E780FDC8;
    objc_copyWeak(&v22, &location);
    objc_msgSend_setInvalidationHandler_(v9, v10, v21);
    v11 = self->_connection;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1A8313644;
    v19[3] = &unk_1E780FDC8;
    objc_copyWeak(&v20, &location);
    objc_msgSend_setInterruptionHandler_(v11, v12, v19);
    v13 = self->_connection;
    v14 = IMDaemonBackgroundMessagingProtocolXPCInterface();
    objc_msgSend_setRemoteObjectInterface_(v13, v15, v14);

    objc_msgSend_resume(self->_connection, v16, v17);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

- (void)_clearConnection
{
  objc_msgSend_invalidate(self->_connection, a2, v2);
  connection = self->_connection;
  self->_connection = 0;
}

- (id)_backgroundMessagingAPIServiceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_msgSend__currentConnection(self, v5, v6);
  v9 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v7, v8, handlerCopy);

  return v9;
}

- (void)requestBackgroundMessagingAuthorizationForRecipients:(id)recipients completion:(id)completion
{
  recipientsCopy = recipients;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "requestBackgroundMessagingAuthorizationForRecipients", buf, 2u);
    }
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83138CC;
  block[3] = &unk_1E7812328;
  v13 = recipientsCopy;
  v14 = completionCopy;
  block[4] = self;
  v10 = recipientsCopy;
  v11 = completionCopy;
  dispatch_async(queue, block);
}

- (void)checkAuthorizationStatusForRecipients:(id)recipients completion:(id)completion
{
  recipientsCopy = recipients;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "checkAuthorizationStatusForRecipients", buf, 2u);
    }
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8313B68;
  block[3] = &unk_1E7812328;
  v13 = recipientsCopy;
  v14 = completionCopy;
  block[4] = self;
  v10 = recipientsCopy;
  v11 = completionCopy;
  dispatch_async(queue, block);
}

- (void)sendBackgroundMessage:(id)message toRecipient:(id)recipient completion:(id)completion
{
  messageCopy = message;
  recipientCopy = recipient;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "sendBackgroundMessage", buf, 2u);
    }
  }

  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1A8313E2C;
  v16[3] = &unk_1E7812350;
  v16[4] = self;
  v17 = messageCopy;
  v18 = recipientCopy;
  v19 = completionCopy;
  v13 = recipientCopy;
  v14 = messageCopy;
  v15 = completionCopy;
  dispatch_async(queue, v16);
}

@end