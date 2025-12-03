@interface IMDBackgroundMessagingAPIListener
+ (id)sharedListener;
- (BOOL)isConnectionEntitled:(id)entitled;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (IMDBackgroundMessagingAPIListener)init;
- (void)dealloc;
- (void)handleSMSSendResult:(id)result sent:(BOOL)sent;
@end

@implementation IMDBackgroundMessagingAPIListener

+ (id)sharedListener
{
  if (qword_281420F20 != -1)
  {
    sub_22B7D6870();
  }

  v3 = qword_281420F18;

  return v3;
}

- (IMDBackgroundMessagingAPIListener)init
{
  v11.receiver = self;
  v11.super_class = IMDBackgroundMessagingAPIListener;
  v2 = [(IMDBackgroundMessagingAPIListener *)&v11 init];
  v3 = dispatch_queue_create("IMDBackgroundMessagingAPIListenerQueue", 0);
  queue = v2->_queue;
  v2->_queue = v3;

  [MEMORY[0x277D1A8C8] resetStorageIfNeeded];
  v5 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.messages.critical-messaging"];
  listener = v2->_listener;
  v2->_listener = v5;

  [(NSXPCListener *)v2->_listener setDelegate:v2];
  [(NSXPCListener *)v2->_listener resume];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  activeConnections = v2->_activeConnections;
  v2->_activeConnections = v7;

  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterAddObserver(DistributedCenter, v2, sub_22B619A90, *MEMORY[0x277D19FE0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  return v2;
}

- (void)dealloc
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "dealloc", buf, 2u);
    }
  }

  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterRemoveObserver(DistributedCenter, self, *MEMORY[0x277D19FE0], 0);
  [(NSXPCListener *)self->_listener invalidate];
  v5.receiver = self;
  v5.super_class = IMDBackgroundMessagingAPIListener;
  [(IMDBackgroundMessagingAPIListener *)&v5 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Incoming XPC Connection for IMDBackgroundMessagingAPIListener", buf, 2u);
    }
  }

  v9 = [(IMDBackgroundMessagingAPIListener *)self isConnectionEntitled:connectionCopy];
  if (v9)
  {
    v10 = [[IMDBackgroundMessagingAPITargetHandler alloc] initWithXPCConnection:connectionCopy targetQueue:self->_queue delegate:self];
    v11 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(connectionCopy, "processIdentifier")}];
    [(NSMutableDictionary *)self->_activeConnections setObject:v10 forKey:v11];
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Incoming XPC Connection for IMDBackgroundMessagingAPIListener missing entitlement", v14, 2u);
    }
  }

  return v9;
}

- (BOOL)isConnectionEntitled:(id)entitled
{
  v3 = [entitled valueForEntitlement:@"com.apple.developer.messages.critical-messaging"];
  v4 = v3;
  v5 = v3 && ([v3 BOOLValue] & 1) != 0;

  return v5;
}

- (void)handleSMSSendResult:(id)result sent:(BOOL)sent
{
  resultCopy = result;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B619F28;
  block[3] = &unk_278706650;
  block[4] = self;
  v10 = resultCopy;
  sentCopy = sent;
  v8 = resultCopy;
  dispatch_async(queue, block);
}

@end