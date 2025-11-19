@interface IMDBackgroundMessagingAPITargetHandler
- (BOOL)_shouldThrottleMessageToRecipient:(id)a3;
- (IMDBackgroundMessagingAPITargetHandler)initWithXPCConnection:(id)a3 targetQueue:(id)a4 delegate:(id)a5;
- (id)_formattedPhoneNumberForNumber:(id)a3;
- (void)_clearConnection;
- (void)_sendMessageText:(id)a3 toHandle:(id)a4 onService:(id)a5 completion:(id)a6;
- (void)checkAuthorizationStatusForRecipients:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)handleSMSSendResult:(id)a3 sent:(BOOL)a4;
- (void)postNotificationForRecipientHandle:(id)a3;
- (void)requestBackgroundMessagingAuthorizationForRecipients:(id)a3 completion:(id)a4;
- (void)sendBackgroundMessage:(id)a3 toRecipient:(id)a4 completion:(id)a5;
@end

@implementation IMDBackgroundMessagingAPITargetHandler

- (IMDBackgroundMessagingAPITargetHandler)initWithXPCConnection:(id)a3 targetQueue:(id)a4 delegate:(id)a5
{
  v77 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v58 = a4;
  v10 = a5;
  v74.receiver = self;
  v74.super_class = IMDBackgroundMessagingAPITargetHandler;
  v11 = [(IMDBackgroundMessagingAPITargetHandler *)&v74 init];
  [(IMDBackgroundMessagingAPITargetHandler *)v11 setDelegate:v10];
  objc_storeStrong(&v11->_connection, a3);
  objc_storeStrong(&v11->_queue, a4);
  v12 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.MobileSMS"];
  notificationCenter = v11->_notificationCenter;
  v11->_notificationCenter = v12;

  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  trackedMessages = v11->_trackedMessages;
  v11->_trackedMessages = v14;

  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  trackedRecipientHandles = v11->_trackedRecipientHandles;
  v11->_trackedRecipientHandles = v16;

  v18 = IMDaemonBackgroundMessagingProtocolXPCInterface();
  [v9 setExportedInterface:v18];

  [v9 setExportedObject:v11];
  v11->_clientPid = [v9 processIdentifier];
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = sub_22B5BCFEC;
  v71[3] = &unk_278702FA0;
  v19 = v11;
  v72 = v19;
  v20 = v10;
  v73 = v20;
  [v9 setInvalidationHandler:v71];
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = sub_22B5BD0DC;
  v68[3] = &unk_278702FA0;
  v21 = v19;
  v69 = v21;
  v57 = v20;
  v70 = v57;
  [v9 setInterruptionHandler:v68];
  [v9 resume];
  v22 = [MEMORY[0x277D47008] targetWithPid:v11->_clientPid];
  v23 = [MEMORY[0x277D46FA0] predicateMatching:v22];
  v67 = 0;
  v59 = [MEMORY[0x277D46F48] handleForPredicate:v23 error:&v67];
  v24 = v67;
  if (v24)
  {
    v25 = v24;
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        clientPid = v11->_clientPid;
        *buf = 67109120;
        v76 = clientPid;
        _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "IMDBackgroundMessagingAPITargetHandler failed to find process handle for %d", buf, 8u);
      }
    }
  }

  else
  {
    v28 = [v59 bundle];
    v29 = [v28 identifier];
    clientBundleID = v21->_clientBundleID;
    v21->_clientBundleID = v29;

    v31 = objc_alloc(MEMORY[0x277CC1E70]);
    v32 = v21->_clientBundleID;
    v66 = 0;
    v33 = [v31 initWithBundleIdentifier:v32 allowPlaceholder:0 error:&v66];
    v25 = v66;
    v34 = [v33 localizedShortName];
    clientAppName = v21->_clientAppName;
    v21->_clientAppName = v34;

    v36 = [v33 infoDictionary];
    v37 = [v36 objectForKey:@"NSCriticalMessagingUsageDescription" ofClass:objc_opt_class()];
    v38 = v37;
    if (v37)
    {
      v39 = v37;
    }

    else
    {
      v39 = @"This app wants to send critical text messages.";
    }

    objc_storeStrong(&v21->_appDescription, v39);
  }

  v40 = [MEMORY[0x277D46FB0] descriptor];
  [v40 setValues:1];
  [v40 setEndowmentNamespaces:&unk_283F4EE58];
  v41 = dispatch_group_create();
  processMonitorWaitingForInitialStateGroup = v21->_processMonitorWaitingForInitialStateGroup;
  v21->_processMonitorWaitingForInitialStateGroup = v41;

  dispatch_group_enter(v21->_processMonitorWaitingForInitialStateGroup);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B5BD1C4;
  aBlock[3] = &unk_278705B68;
  v43 = v21;
  v65 = v43;
  v44 = _Block_copy(aBlock);
  v45 = MEMORY[0x277D46F80];
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = sub_22B5BD320;
  v60[3] = &unk_278705B90;
  v61 = v23;
  v62 = v40;
  v63 = v44;
  v46 = v44;
  v47 = v40;
  v48 = v23;
  v49 = [v45 monitorWithConfiguration:v60];
  processMonitor = v43->_processMonitor;
  v43->_processMonitor = v49;

  v51 = +[IMDBackgroundMessagingAPIMessageRegistry sharedRegistry];
  messageRegistry = v43->_messageRegistry;
  v43->_messageRegistry = v51;

  v53 = v63;
  v54 = v43;

  v55 = *MEMORY[0x277D85DE8];
  return v54;
}

- (void)dealloc
{
  [(IMDBackgroundMessagingAPITargetHandler *)self _clearConnection];
  [(RBSProcessMonitor *)self->_processMonitor invalidate];
  v3.receiver = self;
  v3.super_class = IMDBackgroundMessagingAPITargetHandler;
  [(IMDBackgroundMessagingAPITargetHandler *)&v3 dealloc];
}

- (void)_clearConnection
{
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;
}

- (id)_formattedPhoneNumberForNumber:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEAF8] currentLocale];
  v5 = [v4 objectForKey:*MEMORY[0x277CBE690]];
  v6 = [v5 lowercaseString];

  v7 = *MEMORY[0x277CBECE8];
  v8 = CFPhoneNumberCreate();
  if (v8)
  {
    v9 = v8;
    String = CFPhoneNumberCreateString();
    if (String)
    {
      v11 = String;
      CFRelease(v9);
LABEL_5:
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"+%@", v11];

      goto LABEL_7;
    }

    v11 = CFPhoneNumberCreateString();
    CFRelease(v9);
    if (v11)
    {
      goto LABEL_5;
    }
  }

  v12 = v3;
LABEL_7:

  return v12;
}

- (void)requestBackgroundMessagingAuthorizationForRecipients:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B5BD65C;
  block[3] = &unk_2787037B8;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)checkAuthorizationStatusForRecipients:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B5BDD58;
  block[3] = &unk_2787037B8;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)sendBackgroundMessage:(id)a3 toRecipient:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_group_wait(self->_processMonitorWaitingForInitialStateGroup, 1uLL);
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22B5BE094;
  v15[3] = &unk_278702F50;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (BOOL)_shouldThrottleMessageToRecipient:(id)a3
{
  messageRegistry = self->_messageRegistry;
  clientBundleID = self->_clientBundleID;
  v5 = [a3 phoneNumber];
  v6 = [(IMDBackgroundMessagingAPIMessageRegistry *)messageRegistry dateLastMessageSentFromAppWithBundleID:clientBundleID recipientHandle:v5];

  if (v6)
  {
    [v6 timeIntervalSinceNow];
    v8 = v7 >= -30.0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_sendMessageText:(id)a3 toHandle:(id)a4 onService:(id)a5 completion:(id)a6
{
  v57[3] = *MEMORY[0x277D85DE8];
  v49 = a3;
  v10 = a4;
  v11 = a5;
  aBlock = a6;
  v12 = objc_alloc_init(MEMORY[0x277D1AA70]);
  [v12 setHandle:v10];
  [v12 setService:v11];
  v13 = [MEMORY[0x277CCACA8] stringGUID];
  [v12 setGuid:v13];

  v14 = [MEMORY[0x277CBEAA8] date];
  [v12 setTime:v14];

  [v12 setShouldNotifyOnSend:1];
  [v12 setFlags:5];
  v15 = [objc_alloc(MEMORY[0x277D1AC98]) initWithContent:&stru_283F23018];
  [v15 appendString:v49];
  v16 = [v15 body];
  [v12 setBody:v16];

  v17 = [v15 body];
  v18 = [v17 string];
  [v12 setPlainBody:v18];

  [v12 setCriticalMessagingAppName:self->_clientAppName];
  v19 = +[IMDAccountController sharedInstance];
  v20 = [v19 anySessionForServiceName:v11];

  if (v20)
  {
    v21 = +[IMDChatRegistry sharedInstance];
    v22 = [v20 account];
    v23 = [v21 existingChatForID:v10 account:v22];

    if (!v23)
    {
      v24 = *MEMORY[0x277D193A8];
      v56[0] = *MEMORY[0x277D192F8];
      v56[1] = v24;
      v57[0] = &unk_283F4E960;
      v57[1] = v10;
      v56[2] = *MEMORY[0x277D193C0];
      v57[2] = v10;
      v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:3];
      v55 = v48;
      v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
      [v20 didJoinChat:v10 style:45 displayName:0 groupID:0 originalGroupID:0 handleInfo:v47 category:0 spamExtensionName:0];
      v25 = +[IMDChatRegistry sharedInstance];
      v26 = [v20 account];
      v23 = [v25 existingChatWithIdentifier:v10 account:v26];

      v27 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      v28 = [v27 isIntroductionsEnabled];

      if (!v28 || ([MEMORY[0x277D1AB08] isFilterUnknownSendersEnabled] & 1) == 0)
      {
        [v23 updateIsFiltered:0];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = v20;
        v30 = [v23 chatIdentifier];
        v46 = [v29 _callerIDForChatWithChatIdentifier:v30 chatStyle:45 foundChat:v23];

        if (IMOSLoggingEnabled())
        {
          v31 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v32 = [v23 guid];
            *buf = 138412546;
            v52 = v46;
            v53 = 2112;
            v54 = v32;
            _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Updating lastAddressedHandle %@ for chat %@", buf, 0x16u);
          }
        }

        [v23 updateLastAddressedHandle:v46];
      }
    }

    if (aBlock)
    {
      trackedMessages = self->_trackedMessages;
      v34 = _Block_copy(aBlock);
      v35 = [v12 guid];
      [(NSMutableDictionary *)trackedMessages setObject:v34 forKey:v35];
    }

    trackedRecipientHandles = self->_trackedRecipientHandles;
    v37 = [v12 guid];
    [(NSMutableDictionary *)trackedRecipientHandles setObject:v10 forKey:v37];

    v38 = [v23 chatIdentifier];
    [v20 sendMessage:v12 toChat:v38 style:{-[NSObject style](v23, "style")}];
  }

  else
  {
    v23 = IMLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D49F0(v11, v23, v39, v40, v41, v42, v43, v44);
    }
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (void)handleSMSSendResult:(id)a3 sent:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_trackedMessages objectForKeyedSubscript:v6];
  if (v7)
  {
    if (v4)
    {
      v8 = [(NSMutableDictionary *)self->_trackedRecipientHandles objectForKey:v6];
      v9 = [(IMDBackgroundMessagingAPITargetHandler *)self _formattedPhoneNumberForNumber:v8];
      [(IMDBackgroundMessagingAPITargetHandler *)self postNotificationForRecipientHandle:v9];
      v7[2](v7, 0);
    }

    else
    {
      v10 = IMLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D4A5C(self);
      }

      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MSCriticalMessagingErrorDomain" code:4 userInfo:0];
      (v7)[2](v7, v8);
    }

    [(NSMutableDictionary *)self->_trackedMessages removeObjectForKey:v6];
    [(NSMutableDictionary *)self->_trackedRecipientHandles removeObjectForKey:v6];
  }
}

- (void)postNotificationForRecipientHandle:(id)a3
{
  v4 = MEMORY[0x277CE1F60];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = MEMORY[0x277CCACA8];
  v8 = IMSharedUtilitiesFrameworkBundle();
  v9 = [v8 localizedStringForKey:@"CMAPI_MESSAGE_SEND" value:&stru_283F23018 table:@"IMSharedUtilities"];
  v10 = [v7 localizedStringWithFormat:v9, self->_clientAppName, v5];

  [v6 setBody:v10];
  v11 = MEMORY[0x277CE1FC0];
  v12 = [MEMORY[0x277CCAD78] UUID];
  v13 = [v12 UUIDString];
  v14 = [v11 requestWithIdentifier:v13 content:v6 trigger:0];

  notificationCenter = self->_notificationCenter;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_22B5BEC68;
  v17[3] = &unk_278703C58;
  v18 = v14;
  v16 = v14;
  [(UNUserNotificationCenter *)notificationCenter addNotificationRequest:v16 withCompletionHandler:v17];
}

@end