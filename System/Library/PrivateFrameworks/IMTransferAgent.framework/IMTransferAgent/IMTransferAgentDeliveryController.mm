@interface IMTransferAgentDeliveryController
+ (id)sharedInstance;
- (IMTransferAgentDeliveryController)init;
- (void)dealloc;
- (void)sendFTMessage:(id)message completionBlock:(id)block;
@end

@implementation IMTransferAgentDeliveryController

+ (id)sharedInstance
{
  if (qword_28112D9F8 != -1)
  {
    sub_2548680B4();
  }

  v3 = qword_28112D9D0;

  return v3;
}

- (IMTransferAgentDeliveryController)init
{
  v9.receiver = self;
  v9.super_class = IMTransferAgentDeliveryController;
  v4 = [(IMTransferAgentDeliveryController *)&v9 init];
  if (v4)
  {
    v5 = objc_alloc_init(objc_msgSend_APNSMessageDeliveryClass(MEMORY[0x277D07DC0], v2, v3));
    messageDelivery = v4->_messageDelivery;
    v4->_messageDelivery = v5;

    objc_msgSend_setMaxConcurrentMessages_(v4->_messageDelivery, v7, 2);
  }

  return v4;
}

- (void)dealloc
{
  objc_msgSend_setMessageDelivery_(self, a2, 0);
  v3.receiver = self;
  v3.super_class = IMTransferAgentDeliveryController;
  [(IMTransferAgentDeliveryController *)&v3 dealloc];
}

- (void)sendFTMessage:(id)message completionBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = messageCopy;
      _os_log_impl(&dword_254850000, v8, OS_LOG_TYPE_INFO, "Sending FTMessage: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = messageCopy;
      _os_log_impl(&dword_254850000, v9, OS_LOG_TYPE_INFO, "send FTMessage: %@", buf, 0xCu);
    }
  }

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = sub_25485D004;
  v17 = &unk_27978CEF8;
  selfCopy = self;
  v19 = blockCopy;
  v10 = blockCopy;
  objc_msgSend_setCompletionBlock_(messageCopy, v11, &v14);
  objc_msgSend_sendMessage_(self->_messageDelivery, v12, messageCopy, v14, v15, v16, v17, selfCopy);

  v13 = *MEMORY[0x277D85DE8];
}

@end