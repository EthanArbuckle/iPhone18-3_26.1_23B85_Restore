@interface IMDBackgroundMessagingAPITargetHandler
- (BOOL)_shouldThrottleMessageToRecipient:(id)recipient;
- (IMDBackgroundMessagingAPITargetHandler)initWithXPCConnection:(id)connection targetQueue:(id)queue delegate:(id)delegate;
- (id)_formattedPhoneNumberForNumber:(id)number;
- (void)_clearConnection;
- (void)_sendMessageText:(id)text toHandle:(id)handle onService:(id)service completion:(id)completion;
- (void)checkAuthorizationStatusForRecipients:(id)recipients completion:(id)completion;
- (void)dealloc;
- (void)handleSMSSendResult:(id)result sent:(BOOL)sent;
- (void)postNotificationForRecipientHandle:(id)handle;
- (void)requestBackgroundMessagingAuthorizationForRecipients:(id)recipients completion:(id)completion;
- (void)sendBackgroundMessage:(id)message toRecipient:(id)recipient completion:(id)completion;
@end

@implementation IMDBackgroundMessagingAPITargetHandler

- (IMDBackgroundMessagingAPITargetHandler)initWithXPCConnection:(id)connection targetQueue:(id)queue delegate:(id)delegate
{
  v77 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  queueCopy = queue;
  delegateCopy = delegate;
  v74.receiver = self;
  v74.super_class = IMDBackgroundMessagingAPITargetHandler;
  v11 = [(IMDBackgroundMessagingAPITargetHandler *)&v74 init];
  [(IMDBackgroundMessagingAPITargetHandler *)v11 setDelegate:delegateCopy];
  objc_storeStrong(&v11->_connection, connection);
  objc_storeStrong(&v11->_queue, queue);
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
  [connectionCopy setExportedInterface:v18];

  [connectionCopy setExportedObject:v11];
  v11->_clientPid = [connectionCopy processIdentifier];
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = sub_22B5BCFEC;
  v71[3] = &unk_278702FA0;
  v19 = v11;
  v72 = v19;
  v20 = delegateCopy;
  v73 = v20;
  [connectionCopy setInvalidationHandler:v71];
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = sub_22B5BD0DC;
  v68[3] = &unk_278702FA0;
  v21 = v19;
  v69 = v21;
  v57 = v20;
  v70 = v57;
  [connectionCopy setInterruptionHandler:v68];
  [connectionCopy resume];
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
    bundle = [v59 bundle];
    identifier = [bundle identifier];
    clientBundleID = v21->_clientBundleID;
    v21->_clientBundleID = identifier;

    v31 = objc_alloc(MEMORY[0x277CC1E70]);
    v32 = v21->_clientBundleID;
    v66 = 0;
    v33 = [v31 initWithBundleIdentifier:v32 allowPlaceholder:0 error:&v66];
    v25 = v66;
    localizedShortName = [v33 localizedShortName];
    clientAppName = v21->_clientAppName;
    v21->_clientAppName = localizedShortName;

    infoDictionary = [v33 infoDictionary];
    v37 = [infoDictionary objectForKey:@"NSCriticalMessagingUsageDescription" ofClass:objc_opt_class()];
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

  descriptor = [MEMORY[0x277D46FB0] descriptor];
  [descriptor setValues:1];
  [descriptor setEndowmentNamespaces:&unk_283F4EE58];
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
  v62 = descriptor;
  v63 = v44;
  v46 = v44;
  v47 = descriptor;
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

- (id)_formattedPhoneNumberForNumber:(id)number
{
  numberCopy = number;
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v5 = [currentLocale objectForKey:*MEMORY[0x277CBE690]];
  lowercaseString = [v5 lowercaseString];

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

  v12 = numberCopy;
LABEL_7:

  return v12;
}

- (void)requestBackgroundMessagingAuthorizationForRecipients:(id)recipients completion:(id)completion
{
  recipientsCopy = recipients;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B5BD65C;
  block[3] = &unk_2787037B8;
  v12 = recipientsCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = recipientsCopy;
  dispatch_async(queue, block);
}

- (void)checkAuthorizationStatusForRecipients:(id)recipients completion:(id)completion
{
  recipientsCopy = recipients;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B5BDD58;
  block[3] = &unk_2787037B8;
  v12 = recipientsCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = recipientsCopy;
  dispatch_async(queue, block);
}

- (void)sendBackgroundMessage:(id)message toRecipient:(id)recipient completion:(id)completion
{
  messageCopy = message;
  recipientCopy = recipient;
  completionCopy = completion;
  dispatch_group_wait(self->_processMonitorWaitingForInitialStateGroup, 1uLL);
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22B5BE094;
  v15[3] = &unk_278702F50;
  v16 = messageCopy;
  v17 = recipientCopy;
  selfCopy = self;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = recipientCopy;
  v14 = messageCopy;
  dispatch_async(queue, v15);
}

- (BOOL)_shouldThrottleMessageToRecipient:(id)recipient
{
  messageRegistry = self->_messageRegistry;
  clientBundleID = self->_clientBundleID;
  phoneNumber = [recipient phoneNumber];
  v6 = [(IMDBackgroundMessagingAPIMessageRegistry *)messageRegistry dateLastMessageSentFromAppWithBundleID:clientBundleID recipientHandle:phoneNumber];

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

- (void)_sendMessageText:(id)text toHandle:(id)handle onService:(id)service completion:(id)completion
{
  v57[3] = *MEMORY[0x277D85DE8];
  textCopy = text;
  handleCopy = handle;
  serviceCopy = service;
  aBlock = completion;
  v12 = objc_alloc_init(MEMORY[0x277D1AA70]);
  [v12 setHandle:handleCopy];
  [v12 setService:serviceCopy];
  stringGUID = [MEMORY[0x277CCACA8] stringGUID];
  [v12 setGuid:stringGUID];

  date = [MEMORY[0x277CBEAA8] date];
  [v12 setTime:date];

  [v12 setShouldNotifyOnSend:1];
  [v12 setFlags:5];
  v15 = [objc_alloc(MEMORY[0x277D1AC98]) initWithContent:&stru_283F23018];
  [v15 appendString:textCopy];
  body = [v15 body];
  [v12 setBody:body];

  body2 = [v15 body];
  string = [body2 string];
  [v12 setPlainBody:string];

  [v12 setCriticalMessagingAppName:self->_clientAppName];
  v19 = +[IMDAccountController sharedInstance];
  v20 = [v19 anySessionForServiceName:serviceCopy];

  if (v20)
  {
    v21 = +[IMDChatRegistry sharedInstance];
    account = [v20 account];
    v23 = [v21 existingChatForID:handleCopy account:account];

    if (!v23)
    {
      v24 = *MEMORY[0x277D193A8];
      v56[0] = *MEMORY[0x277D192F8];
      v56[1] = v24;
      v57[0] = &unk_283F4E960;
      v57[1] = handleCopy;
      v56[2] = *MEMORY[0x277D193C0];
      v57[2] = handleCopy;
      v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:3];
      v55 = v48;
      v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
      [v20 didJoinChat:handleCopy style:45 displayName:0 groupID:0 originalGroupID:0 handleInfo:v47 category:0 spamExtensionName:0];
      v25 = +[IMDChatRegistry sharedInstance];
      account2 = [v20 account];
      v23 = [v25 existingChatWithIdentifier:handleCopy account:account2];

      mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      isIntroductionsEnabled = [mEMORY[0x277D1A9B8] isIntroductionsEnabled];

      if (!isIntroductionsEnabled || ([MEMORY[0x277D1AB08] isFilterUnknownSendersEnabled] & 1) == 0)
      {
        [v23 updateIsFiltered:0];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = v20;
        chatIdentifier = [v23 chatIdentifier];
        v46 = [v29 _callerIDForChatWithChatIdentifier:chatIdentifier chatStyle:45 foundChat:v23];

        if (IMOSLoggingEnabled())
        {
          v31 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            guid = [v23 guid];
            *buf = 138412546;
            v52 = v46;
            v53 = 2112;
            v54 = guid;
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
      guid2 = [v12 guid];
      [(NSMutableDictionary *)trackedMessages setObject:v34 forKey:guid2];
    }

    trackedRecipientHandles = self->_trackedRecipientHandles;
    guid3 = [v12 guid];
    [(NSMutableDictionary *)trackedRecipientHandles setObject:handleCopy forKey:guid3];

    chatIdentifier2 = [v23 chatIdentifier];
    [v20 sendMessage:v12 toChat:chatIdentifier2 style:{-[NSObject style](v23, "style")}];
  }

  else
  {
    v23 = IMLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D49F0(serviceCopy, v23, v39, v40, v41, v42, v43, v44);
    }
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (void)handleSMSSendResult:(id)result sent:(BOOL)sent
{
  sentCopy = sent;
  resultCopy = result;
  v7 = [(NSMutableDictionary *)self->_trackedMessages objectForKeyedSubscript:resultCopy];
  if (v7)
  {
    if (sentCopy)
    {
      v8 = [(NSMutableDictionary *)self->_trackedRecipientHandles objectForKey:resultCopy];
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

    [(NSMutableDictionary *)self->_trackedMessages removeObjectForKey:resultCopy];
    [(NSMutableDictionary *)self->_trackedRecipientHandles removeObjectForKey:resultCopy];
  }
}

- (void)postNotificationForRecipientHandle:(id)handle
{
  v4 = MEMORY[0x277CE1F60];
  handleCopy = handle;
  v6 = objc_alloc_init(v4);
  v7 = MEMORY[0x277CCACA8];
  v8 = IMSharedUtilitiesFrameworkBundle();
  v9 = [v8 localizedStringForKey:@"CMAPI_MESSAGE_SEND" value:&stru_283F23018 table:@"IMSharedUtilities"];
  handleCopy = [v7 localizedStringWithFormat:v9, self->_clientAppName, handleCopy];

  [v6 setBody:handleCopy];
  v11 = MEMORY[0x277CE1FC0];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v14 = [v11 requestWithIdentifier:uUIDString content:v6 trigger:0];

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