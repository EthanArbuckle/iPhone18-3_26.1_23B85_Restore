@interface IMDNotificationResponseUtilities
+ (id)sharedInstance;
- (IMDAskToBuyResponseHandler)askToBuyResponseHandler;
- (IMDFamilyInviteReponseHandler)familyInviteResponseHandler;
- (IMDNotificationResponseUtilities)init;
- (IMDSafetyMonitorResponseHandler)safetyMonitorResponseHandler;
- (IMDScreenTimeAskReponseHandler)screenTimeAskReponseHandler;
- (void)_markMessageAsRead:(id)a3 inChat:(id)a4 withCompletionHandler:(id)a5;
- (void)_setupNotificationCenter;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
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

- (void)_markMessageAsRead:(id)a3 inChat:(id)a4 withCompletionHandler:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[IMDChatRegistry sharedInstance];
  v11 = [v10 existingChatWithGUID:v8];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x277D1AA70]) initWithSender:0 time:0 body:0 attributes:0 fileTransferGUIDs:0 flags:0 error:0 guid:v7 threadIdentifier:0];
    v13 = [MEMORY[0x277CBEAA8] now];
    [v12 setTimeRead:v13];

    v14 = [v11 serviceSession];
    v15 = [v11 chatIdentifier];
    [v14 sendReadReceiptForMessage:v12 toChatID:v8 identifier:v15 style:{objc_msgSend(v11, "style")}];

    [v10 updateNotificationUnreadCountForChat:v11];
    if (!v9)
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
      v19 = v8;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "couldn't find chat for %@ to mark message as read", buf, 0xCu);
    }
  }

  if (v9)
  {
LABEL_9:
    v9[2](v9);
  }

LABEL_10:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v32 = v8;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "receive notification response for bundleID [%@]", buf, 0xCu);
    }
  }

  v12 = [(IMDNotificationResponseUtilities *)self screenTimeAskReponseHandler];
  v13 = [v12 canHandleNotificationResponse:v9 userNotificationCenter:v8];

  if (v13)
  {
    v14 = [(IMDNotificationResponseUtilities *)self screenTimeAskReponseHandler];
    v15 = v30;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_22B5BA030;
    v30[3] = &unk_278705AF0;
    v16 = v9;
    v30[4] = v16;
    v30[5] = self;
    v30[6] = v10;
    [v14 handleNotificationResponse:v16 userNotificationCenter:v8 completionHandler:v30];
LABEL_13:

    goto LABEL_14;
  }

  v17 = [(IMDNotificationResponseUtilities *)self familyInviteResponseHandler];
  v18 = [v17 canHandleNotificationResponse:v9 userNotificationCenter:v8];

  if (v18)
  {
    v14 = [(IMDNotificationResponseUtilities *)self familyInviteResponseHandler];
    v15 = v29;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_22B5BA170;
    v29[3] = &unk_278705AF0;
    v19 = v9;
    v29[4] = v19;
    v29[5] = self;
    v29[6] = v10;
    [v14 handleNotificationResponse:v19 userNotificationCenter:v8 completionHandler:v29];
    goto LABEL_13;
  }

  v20 = [(IMDNotificationResponseUtilities *)self askToBuyResponseHandler];
  v21 = [v20 canHandleNotificationResponse:v9 userNotificationCenter:v8];

  if (v21)
  {
    v14 = [(IMDNotificationResponseUtilities *)self askToBuyResponseHandler];
    v15 = v28;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_22B5BA2B0;
    v28[3] = &unk_278705AF0;
    v22 = v9;
    v28[4] = v22;
    v28[5] = self;
    v28[6] = v10;
    [v14 handleNotificationResponse:v22 userNotificationCenter:v8 completionHandler:v28];
    goto LABEL_13;
  }

  v23 = [(IMDNotificationResponseUtilities *)self safetyMonitorResponseHandler];
  v24 = [v23 canHandleNotificationResponse:v9 userNotificationCenter:v8];

  if (v24)
  {
    v14 = [(IMDNotificationResponseUtilities *)self safetyMonitorResponseHandler];
    v15 = v27;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_22B5BA3F0;
    v27[3] = &unk_278705AF0;
    v25 = v9;
    v27[4] = v25;
    v27[5] = self;
    v27[6] = v10;
    [v14 handleNotificationResponse:v25 userNotificationCenter:v8 completionHandler:v27];
    goto LABEL_13;
  }

LABEL_14:

  v26 = *MEMORY[0x277D85DE8];
}

@end