@interface IMDNotificationResponseUtilities
+ (id)sharedInstance;
- (IMDAskToBuyResponseHandler)askToBuyResponseHandler;
- (IMDFamilyInviteReponseHandler)familyInviteResponseHandler;
- (IMDNotificationResponseUtilities)init;
- (IMDSafetyMonitorResponseHandler)safetyMonitorResponseHandler;
- (IMDScreenTimeAskReponseHandler)screenTimeAskReponseHandler;
- (void)_markMessageAsRead:(id)read inChat:(id)chat withCompletionHandler:(id)handler;
- (void)_setupNotificationCenter;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation IMDNotificationResponseUtilities

+ (id)sharedInstance
{
  if (qword_281421148 != -1)
  {
    sub_22B7D4890();
  }

  v3 = qword_281420FC8;

  return v3;
}

- (IMDNotificationResponseUtilities)init
{
  v5.receiver = self;
  v5.super_class = IMDNotificationResponseUtilities;
  v2 = [(IMDNotificationResponseUtilities *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IMDNotificationResponseUtilities *)v2 _setupNotificationCenter];
  }

  return v3;
}

- (IMDScreenTimeAskReponseHandler)screenTimeAskReponseHandler
{
  screenTimeAskReponseHandler = self->_screenTimeAskReponseHandler;
  if (!screenTimeAskReponseHandler)
  {
    v4 = objc_alloc_init(IMDScreenTimeAskReponseHandler);
    v5 = self->_screenTimeAskReponseHandler;
    self->_screenTimeAskReponseHandler = v4;

    screenTimeAskReponseHandler = self->_screenTimeAskReponseHandler;
  }

  return screenTimeAskReponseHandler;
}

- (IMDFamilyInviteReponseHandler)familyInviteResponseHandler
{
  familyInviteResponseHandler = self->_familyInviteResponseHandler;
  if (!familyInviteResponseHandler)
  {
    v4 = objc_alloc_init(IMDFamilyInviteReponseHandler);
    v5 = self->_familyInviteResponseHandler;
    self->_familyInviteResponseHandler = v4;

    familyInviteResponseHandler = self->_familyInviteResponseHandler;
  }

  return familyInviteResponseHandler;
}

- (IMDAskToBuyResponseHandler)askToBuyResponseHandler
{
  askToBuyResponseHandler = self->_askToBuyResponseHandler;
  if (!askToBuyResponseHandler)
  {
    v4 = objc_alloc_init(IMDAskToBuyResponseHandler);
    v5 = self->_askToBuyResponseHandler;
    self->_askToBuyResponseHandler = v4;

    askToBuyResponseHandler = self->_askToBuyResponseHandler;
  }

  return askToBuyResponseHandler;
}

- (IMDSafetyMonitorResponseHandler)safetyMonitorResponseHandler
{
  safetyMonitorResponseHandler = self->_safetyMonitorResponseHandler;
  if (!safetyMonitorResponseHandler)
  {
    v4 = objc_alloc_init(IMDSafetyMonitorResponseHandler);
    v5 = self->_safetyMonitorResponseHandler;
    self->_safetyMonitorResponseHandler = v4;

    safetyMonitorResponseHandler = self->_safetyMonitorResponseHandler;
  }

  return safetyMonitorResponseHandler;
}

- (void)_setupNotificationCenter
{
  v3 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.MobileSMS"];
  notificationCenter = self->_notificationCenter;
  self->_notificationCenter = v3;

  [(UNUserNotificationCenter *)self->_notificationCenter setDelegate:self];
  v5 = self->_notificationCenter;

  MEMORY[0x2821F9670](v5, sel_setWantsNotificationResponsesDelivered);
}

- (void)_markMessageAsRead:(id)read inChat:(id)chat withCompletionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  readCopy = read;
  chatCopy = chat;
  handlerCopy = handler;
  v10 = +[IMDChatRegistry sharedInstance];
  v11 = [v10 existingChatWithGUID:chatCopy];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x277D1AA70]) initWithSender:0 time:0 body:0 attributes:0 fileTransferGUIDs:0 flags:0 error:0 guid:readCopy threadIdentifier:0];
    v13 = [MEMORY[0x277CBEAA8] now];
    [v12 setTimeRead:v13];

    serviceSession = [v11 serviceSession];
    chatIdentifier = [v11 chatIdentifier];
    [serviceSession sendReadReceiptForMessage:v12 toChatID:chatCopy identifier:chatIdentifier style:{objc_msgSend(v11, "style")}];

    [v10 updateNotificationUnreadCountForChat:v11];
    if (!handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v19 = chatCopy;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "couldn't find chat for %@ to mark message as read", buf, 0xCu);
    }
  }

  if (handlerCopy)
  {
LABEL_9:
    handlerCopy[2](handlerCopy);
  }

LABEL_10:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  centerCopy = center;
  responseCopy = response;
  handlerCopy = handler;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v32 = centerCopy;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "receive notification response for bundleID [%@]", buf, 0xCu);
    }
  }

  screenTimeAskReponseHandler = [(IMDNotificationResponseUtilities *)self screenTimeAskReponseHandler];
  v13 = [screenTimeAskReponseHandler canHandleNotificationResponse:responseCopy userNotificationCenter:centerCopy];

  if (v13)
  {
    screenTimeAskReponseHandler2 = [(IMDNotificationResponseUtilities *)self screenTimeAskReponseHandler];
    v15 = v30;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_22B5BA030;
    v30[3] = &unk_278705AF0;
    v16 = responseCopy;
    v30[4] = v16;
    v30[5] = self;
    v30[6] = handlerCopy;
    [screenTimeAskReponseHandler2 handleNotificationResponse:v16 userNotificationCenter:centerCopy completionHandler:v30];
LABEL_13:

    goto LABEL_14;
  }

  familyInviteResponseHandler = [(IMDNotificationResponseUtilities *)self familyInviteResponseHandler];
  v18 = [familyInviteResponseHandler canHandleNotificationResponse:responseCopy userNotificationCenter:centerCopy];

  if (v18)
  {
    screenTimeAskReponseHandler2 = [(IMDNotificationResponseUtilities *)self familyInviteResponseHandler];
    v15 = v29;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_22B5BA170;
    v29[3] = &unk_278705AF0;
    v19 = responseCopy;
    v29[4] = v19;
    v29[5] = self;
    v29[6] = handlerCopy;
    [screenTimeAskReponseHandler2 handleNotificationResponse:v19 userNotificationCenter:centerCopy completionHandler:v29];
    goto LABEL_13;
  }

  askToBuyResponseHandler = [(IMDNotificationResponseUtilities *)self askToBuyResponseHandler];
  v21 = [askToBuyResponseHandler canHandleNotificationResponse:responseCopy userNotificationCenter:centerCopy];

  if (v21)
  {
    screenTimeAskReponseHandler2 = [(IMDNotificationResponseUtilities *)self askToBuyResponseHandler];
    v15 = v28;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_22B5BA2B0;
    v28[3] = &unk_278705AF0;
    v22 = responseCopy;
    v28[4] = v22;
    v28[5] = self;
    v28[6] = handlerCopy;
    [screenTimeAskReponseHandler2 handleNotificationResponse:v22 userNotificationCenter:centerCopy completionHandler:v28];
    goto LABEL_13;
  }

  safetyMonitorResponseHandler = [(IMDNotificationResponseUtilities *)self safetyMonitorResponseHandler];
  v24 = [safetyMonitorResponseHandler canHandleNotificationResponse:responseCopy userNotificationCenter:centerCopy];

  if (v24)
  {
    screenTimeAskReponseHandler2 = [(IMDNotificationResponseUtilities *)self safetyMonitorResponseHandler];
    v15 = v27;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_22B5BA3F0;
    v27[3] = &unk_278705AF0;
    v25 = responseCopy;
    v27[4] = v25;
    v27[5] = self;
    v27[6] = handlerCopy;
    [screenTimeAskReponseHandler2 handleNotificationResponse:v25 userNotificationCenter:centerCopy completionHandler:v27];
    goto LABEL_13;
  }

LABEL_14:

  v26 = *MEMORY[0x277D85DE8];
}

@end