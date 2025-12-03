@interface IMDiMessageIDSDelegate
+ (BOOL)isDefaultPairedDevice:(id)device withAccount:(id)account;
+ (id)commandHandlerRegistry;
+ (void)_postReceivedMessageMetricsForInput:(id)input withMessageContext:(id)context toIDSService:(id)service;
+ (void)addLockdownCommandHandlersToRegistry:(id)registry;
+ (void)addStandardCommandHandlersToRegistry:(id)registry;
- (BOOL)_containsHandlesForTrustedData:(id)data;
- (BOOL)_shouldDropIncomingMessageOnService:(id)service guid:(id)guid trustedData:(id)data;
- (BOOL)_shouldPassthroughIncomingMessageOnService:(id)service command:(int64_t)command message:(id)message;
- (BOOL)blockCommandForTrustedData:(id)data;
- (IMDiMessageIDSDelegate)init;
- (IMDiMessageIDSDelegate)initWithiMessageService:(id)service bizChatService:(id)chatService incomingMessageHandler:(id)handler messageStore:(id)store chatRegistry:(id)registry accountController:(id)controller storageController:(id)storageController recentsController:(id)self0 attachmentStore:(id)self1;
- (id)broadcaster;
- (id)makeTopLevelMessageDictionaryFrom:(id)from batchContext:(id)context;
- (void)service:(id)service account:(id)account fromID:(id)d message:(id)message messageContext:(id)context trustedData:(id)data powerAssertion:(id)assertion;
- (void)service:(id)service account:(id)account incomingBatchMessage:(id)message;
- (void)service:(id)service account:(id)account incomingTopLevelMessage:(id)message fromID:(id)d messageContext:(id)context;
@end

@implementation IMDiMessageIDSDelegate

+ (id)commandHandlerRegistry
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B5AAEAC;
  block[3] = &unk_278702AF8;
  block[4] = self;
  if (qword_281421358 != -1)
  {
    dispatch_once(&qword_281421358, block);
  }

  handlers = [qword_281421350 handlers];

  return handlers;
}

- (IMDiMessageIDSDelegate)init
{
  v24 = *MEMORY[0x277D85DE8];
  commandHandlerRegistry = [objc_opt_class() commandHandlerRegistry];
  v3 = MEMORY[0x277CBEB98];
  allKeys = [commandHandlerRegistry allKeys];
  v5 = [v3 setWithArray:allKeys];

  v6 = objc_alloc(MEMORY[0x277D18778]);
  v20 = [v6 initWithService:*MEMORY[0x277D186B0] commands:v5 manuallyAckMessages:1];
  v7 = objc_alloc(MEMORY[0x277D18778]);
  v8 = [v7 initWithService:*MEMORY[0x277D186B8] commands:v5 manuallyAckMessages:1];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = v5;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "supports commands: %@", buf, 0xCu);
    }
  }

  v10 = objc_alloc_init(IMDiMessageIncomingMessageHandler);
  v11 = +[IMDMessageStore sharedInstance];
  v12 = +[IMDChatRegistry sharedInstance];
  v13 = +[IMDAccountController sharedInstance];
  v14 = +[IMDMessageFromStorageController iMessageStorageController];
  v15 = +[IMDRecentsController sharedInstance];
  v16 = +[IMDAttachmentStore sharedInstance];
  v17 = [(IMDiMessageIDSDelegate *)self initWithiMessageService:v20 bizChatService:v8 incomingMessageHandler:v10 messageStore:v11 chatRegistry:v12 accountController:v13 storageController:v14 recentsController:v15 attachmentStore:v16];

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (IMDiMessageIDSDelegate)initWithiMessageService:(id)service bizChatService:(id)chatService incomingMessageHandler:(id)handler messageStore:(id)store chatRegistry:(id)registry accountController:(id)controller storageController:(id)storageController recentsController:(id)self0 attachmentStore:(id)self1
{
  v40 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  chatServiceCopy = chatService;
  handlerCopy = handler;
  storeCopy = store;
  registryCopy = registry;
  controllerCopy = controller;
  storageControllerCopy = storageController;
  recentsControllerCopy = recentsController;
  attachmentStoreCopy = attachmentStore;
  v35.receiver = self;
  v35.super_class = IMDiMessageIDSDelegate;
  v18 = [(IMDiMessageIDSDelegate *)&v35 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_idsService, service);
    [(IDSService *)v19->_idsService addDelegate:v19 queue:MEMORY[0x277D85CD0]];
    objc_storeStrong(&v19->_bizChatService, chatService);
    [(IDSService *)v19->_bizChatService addDelegate:v19 queue:MEMORY[0x277D85CD0]];

    objc_storeStrong(&v19->_handler, handler);
    objc_storeStrong(&v19->_messageStore, store);
    objc_storeStrong(&v19->_accountController, controller);
    objc_storeStrong(&v19->_messageFromStorageController, storageController);
    objc_storeStrong(&v19->_recentsController, recentsController);
    objc_storeStrong(&v19->_chatRegistry, registry);
    objc_storeStrong(&v19->_attachmentStore, attachmentStore);
    commandHandlerRegistry = [objc_opt_class() commandHandlerRegistry];
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        idsService = v19->_idsService;
        allKeys = [commandHandlerRegistry allKeys];
        *buf = 138412546;
        v37 = idsService;
        v38 = 2112;
        v39 = allKeys;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "IDS Delegate Loaded service: %@ handling commands %@", buf, 0x16u);
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)broadcaster
{
  v2 = +[IMDBroadcastController sharedProvider];
  broadcasterForChatListeners = [v2 broadcasterForChatListeners];

  return broadcasterForChatListeners;
}

+ (BOOL)isDefaultPairedDevice:(id)device withAccount:(id)account
{
  v22 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  idsAccount = [account idsAccount];
  devices = [idsAccount devices];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = devices;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v12 isDefaultPairedDevice])
        {
          pushToken = [v12 pushToken];
          v14 = [pushToken isEqualToData:deviceCopy];

          if (v14)
          {
            LOBYTE(v9) = 1;
            goto LABEL_12;
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (void)_postReceivedMessageMetricsForInput:(id)input withMessageContext:(id)context toIDSService:(id)service
{
  v35 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  contextCopy = context;
  serviceCopy = service;
  v23 = inputCopy;
  if (objc_opt_respondsToSelector())
  {
    v24 = serviceCopy;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = [inputCopy messageItems];
    v10 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v10)
    {
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
            [v14 addTelemetryMetricForKey:7];
            incomingMessageMetrics = [contextCopy incomingMessageMetrics];
            if (incomingMessageMetrics)
            {
              [v14 addTelemetryMetricsFromDictionary:incomingMessageMetrics];
            }

            im_samplingUUID = [contextCopy im_samplingUUID];
            if (im_samplingUUID)
            {
              v17 = objc_alloc(MEMORY[0x277D18A28]);
              telemetryMetrics = [v14 telemetryMetrics];
              v19 = [v17 initWithTimestampDictionary:telemetryMetrics identifier:im_samplingUUID];

              [v24 noteMetricOfType:1 context:v19];
              if (IMOSLoggingEnabled())
              {
                v20 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                {
                  guid = [v14 guid];
                  *buf = 138412546;
                  v31 = guid;
                  v32 = 2112;
                  v33 = im_samplingUUID;
                  _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Post received telemetry metrics for message guid: %@, samplingUUID: %@", buf, 0x16u);
                }
              }
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v10);
    }

    serviceCopy = v24;
  }

  v22 = *MEMORY[0x277D85DE8];
}

+ (void)addStandardCommandHandlersToRegistry:(id)registry
{
  v88 = *MEMORY[0x277D85DE8];
  registryCopy = registry;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B5AC1FC;
  aBlock[3] = &unk_278705948;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v85 = "FTCommandIDDeliveryReceipt";
    v86 = 2112;
    v87 = &unk_283F4E768;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", buf, 0x16u);
  }

  v66 = v5;
  v7 = _Block_copy(v5);
  [registryCopy setStandardHandler:v7 forCommand:&unk_283F4E768];

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isTranscriptSharingEnabled = [mEMORY[0x277D1A9B8] isTranscriptSharingEnabled];

  if (isTranscriptSharingEnabled)
  {
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = sub_22B5ACB5C;
    v82[3] = &unk_278705948;
    v82[4] = self;
    v10 = _Block_copy(v82);
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v85 = "FTCommandIDChatSessionClose";
      v86 = 2112;
      v87 = &unk_283F4E780;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", buf, 0x16u);
    }

    v12 = _Block_copy(v10);
    [registryCopy setStandardHandler:v12 forCommand:&unk_283F4E780];
  }

  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = sub_22B5AD3C8;
  v81[3] = &unk_278705948;
  v81[4] = self;
  v13 = _Block_copy(v81);
  v14 = IMLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v85 = "FTCommandIDReadReceipt";
    v86 = 2112;
    v87 = &unk_283F4E798;
    _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", buf, 0x16u);
  }

  v15 = _Block_copy(v13);
  [registryCopy setStandardHandler:v15 forCommand:&unk_283F4E798];

  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = sub_22B5ADD00;
  v80[3] = &unk_278705948;
  v80[4] = self;
  v16 = _Block_copy(v80);
  v17 = IMLogHandleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v85 = "FTCommandIDMarkAsUnreadMessage";
    v86 = 2112;
    v87 = &unk_283F4E7B0;
    _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", buf, 0x16u);
  }

  v18 = _Block_copy(v16);
  [registryCopy setStandardHandler:v18 forCommand:&unk_283F4E7B0];

  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = sub_22B5AE4E8;
  v79[3] = &unk_2787059B8;
  v79[4] = self;
  v19 = _Block_copy(v79);
  v20 = IMLogHandleForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v85 = "FTCommandIDPlayedReceipt";
    v86 = 2112;
    v87 = &unk_283F4E7C8;
    _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", buf, 0x16u);
  }

  v21 = _Block_copy(v19);
  [registryCopy setStandardHandler:v21 forCommand:&unk_283F4E7C8];

  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = sub_22B5AECC0;
  v78[3] = &unk_2787059B8;
  v78[4] = self;
  v68 = _Block_copy(v78);
  v22 = IMLogHandleForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v85 = "FTCommandIDDeliveredQuietly";
    v86 = 2112;
    v87 = &unk_283F4E7E0;
    _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", buf, 0x16u);
  }

  v23 = _Block_copy(v68);
  [registryCopy setStandardHandler:v23 forCommand:&unk_283F4E7E0];

  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = sub_22B5AF450;
  v77[3] = &unk_2787059B8;
  v77[4] = self;
  v67 = _Block_copy(v77);
  v24 = IMLogHandleForCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v85 = "FTCommandIDNotifyRecipient";
    v86 = 2112;
    v87 = &unk_283F4E7F8;
    _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", buf, 0x16u);
  }

  v25 = _Block_copy(v67);
  [registryCopy setStandardHandler:v25 forCommand:&unk_283F4E7F8];

  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = sub_22B5AFBE0;
  v76[3] = &unk_278705948;
  v76[4] = self;
  v26 = _Block_copy(v76);
  v27 = IMLogHandleForCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v85 = "FTCommandIDTextMessage";
    v86 = 2112;
    v87 = &unk_283F4E810;
    _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", buf, 0x16u);
  }

  v63 = v19;

  v28 = _Block_copy(v26);
  [registryCopy setStandardHandler:v28 forCommand:&unk_283F4E810];

  v29 = IMLogHandleForCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v85 = "FTCommandIDSyndicationAction";
    v86 = 2112;
    v87 = &unk_283F4E828;
    _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", buf, 0x16u);
  }

  v65 = v13;

  [registryCopy setStandardHandler:&unk_283F1A068 forCommand:&unk_283F4E828];
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = sub_22B5B1B6C;
  v75[3] = &unk_2787059B8;
  v75[4] = self;
  v30 = _Block_copy(v75);
  v31 = IMLogHandleForCategory();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v85 = "FTCommandIDEditMessage";
    v86 = 2112;
    v87 = &unk_283F4E840;
    _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", buf, 0x16u);
  }

  v61 = v26;

  v32 = _Block_copy(v30);
  [registryCopy setStandardHandler:v32 forCommand:&unk_283F4E840];

  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = sub_22B5B22FC;
  v74[3] = &unk_2787059B8;
  v74[4] = self;
  v33 = _Block_copy(v74);
  v34 = IMLogHandleForCategory();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v85 = "FTCommandIDRecoverJunkMessage";
    v86 = 2112;
    v87 = &unk_283F4E858;
    _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", buf, 0x16u);
  }

  v35 = _Block_copy(v33);
  [registryCopy setStandardHandler:v35 forCommand:&unk_283F4E858];

  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = sub_22B5B2A8C;
  v73[3] = &unk_2787059B8;
  v73[4] = self;
  v36 = _Block_copy(v73);
  v37 = IMLogHandleForCategory();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v85 = "IDSCommandIDStickerRepositionMessage";
    v86 = 2112;
    v87 = &unk_283F4E870;
    _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", buf, 0x16u);
  }

  v64 = v16;

  v38 = _Block_copy(v36);
  [registryCopy setStandardHandler:v38 forCommand:&unk_283F4E870];

  v39 = IMLogHandleForCategory();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v85 = "134";
    v86 = 2112;
    v87 = &unk_283F4E888;
    _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", buf, 0x16u);
  }

  [registryCopy setStandardHandler:&unk_283F1A088 forCommand:&unk_283F4E888];
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = sub_22B5B3850;
  v72[3] = &unk_2787059B8;
  v72[4] = self;
  v40 = _Block_copy(v72);
  v41 = IMLogHandleForCategory();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v85 = "135";
    v86 = 2112;
    v87 = &unk_283F4E8A0;
    _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", buf, 0x16u);
  }

  v42 = _Block_copy(v40);
  [registryCopy setStandardHandler:v42 forCommand:&unk_283F4E8A0];

  mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isTranscriptBackgroundsEnabled = [mEMORY[0x277D1A9B8]2 isTranscriptBackgroundsEnabled];

  if (isTranscriptBackgroundsEnabled)
  {
    v45 = IMLogHandleForCategory();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v85 = "FTCommandIDTranscriptBackgroundMessage";
      v86 = 2112;
      v87 = &unk_283F4E8B8;
      _os_log_impl(&dword_22B4CC000, v45, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", buf, 0x16u);
    }

    [registryCopy setStandardHandler:&unk_283F1A0A8 forCommand:{&unk_283F4E8B8, v61, v63, v64, v65, v66}];
  }

  mEMORY[0x277D1A9B8]3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isIntroductionsEnabled = [mEMORY[0x277D1A9B8]3 isIntroductionsEnabled];

  if (isIntroductionsEnabled)
  {
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = sub_22B5B46B4;
    v71[3] = &unk_2787059B8;
    v71[4] = self;
    v48 = _Block_copy(v71);
    v49 = IMLogHandleForCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v85 = "FTCommandIDAcceptChat";
      v86 = 2112;
      v87 = &unk_283F4E8D0;
      _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", buf, 0x16u);
    }

    v50 = _Block_copy(v48);
    [registryCopy setStandardHandler:v50 forCommand:&unk_283F4E8D0];
  }

  mEMORY[0x277D1A9B8]4 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isIntroductionsEnabled2 = [mEMORY[0x277D1A9B8]4 isIntroductionsEnabled];

  if (isIntroductionsEnabled2)
  {
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = sub_22B5B4E44;
    v70[3] = &unk_2787059B8;
    v70[4] = self;
    v53 = _Block_copy(v70);
    v54 = IMLogHandleForCategory();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v85 = "125";
      v86 = 2112;
      v87 = &unk_283F4E8E8;
      _os_log_impl(&dword_22B4CC000, v54, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", buf, 0x16u);
    }

    v55 = _Block_copy(v53);
    [registryCopy setStandardHandler:v55 forCommand:&unk_283F4E8E8];
  }

  mEMORY[0x277D1A9B8]5 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  [mEMORY[0x277D1A9B8]5 isPriorityMessagesEnabled];

  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = sub_22B5B55D4;
  v69[3] = &unk_2787059B8;
  v69[4] = self;
  v57 = _Block_copy(v69);
  v58 = IMLogHandleForCategory();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v85 = "127";
    v86 = 2112;
    v87 = &unk_283F4E900;
    _os_log_impl(&dword_22B4CC000, v58, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", buf, 0x16u);
  }

  v59 = _Block_copy(v57);
  [registryCopy setStandardHandler:v59 forCommand:&unk_283F4E900];

  v60 = *MEMORY[0x277D85DE8];
}

+ (void)addLockdownCommandHandlersToRegistry:(id)registry
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B5B5E34;
  aBlock[3] = &unk_278705948;
  aBlock[4] = self;
  registryCopy = registry;
  v4 = _Block_copy(aBlock);
  v5 = _Block_copy(v4);
  [registryCopy setLockdownHandler:v5 forCommand:&unk_283F4E810];

  [registryCopy setPassThroughLockdownHandlerForCommand:&unk_283F4E768];
  [registryCopy setPassThroughLockdownHandlerForCommand:&unk_283F4E798];
}

- (BOOL)_containsHandlesForTrustedData:(id)data
{
  fromIdentifier = [data fromIdentifier];
  _stripFZIDPrefix = [fromIdentifier _stripFZIDPrefix];

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@ || %K == %@", *MEMORY[0x277D19F00], _stripFZIDPrefix, *MEMORY[0x277D19F08], _stripFZIDPrefix];
  synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
  v7 = [synchronousDatabase handleRecordsFilteredByPredicate:v5];

  LOBYTE(synchronousDatabase) = [v7 count] != 0;
  return synchronousDatabase;
}

- (BOOL)blockCommandForTrustedData:(id)data
{
  v12 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if ([dataCopy isFromMe])
  {
    goto LABEL_2;
  }

  LOBYTE(v5) = 0;
  v6 = [dataCopy command] - 102;
  if (v6 > 0x19)
  {
    goto LABEL_13;
  }

  if (((1 << v6) & 0x3C24200) != 0)
  {
    if ([dataCopy isFromMe])
    {
LABEL_2:
      LOBYTE(v5) = 0;
      goto LABEL_13;
    }

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = dataCopy;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Received message that should only be from me (trustedData: %@)", &v10, 0xCu);
      }
    }

    LOBYTE(v5) = 1;
  }

  else if (((1 << v6) & 0x110C09) != 0)
  {
    v5 = ![(IMDiMessageIDSDelegate *)self _containsHandlesForTrustedData:dataCopy];
  }

LABEL_13:

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)_shouldPassthroughIncomingMessageOnService:(id)service command:(int64_t)command message:(id)message
{
  serviceCopy = service;
  messageCopy = message;
  bizChatService = [(IMDiMessageIDSDelegate *)self bizChatService];

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isBizChatBlastDoorEnabled = [mEMORY[0x277D1A9B8] isBizChatBlastDoorEnabled];

  v13 = command == 100 && bizChatService == serviceCopy;
  v14 = v13;
  if (v13)
  {
    v15 = isBizChatBlastDoorEnabled ^ 1;
  }

  else
  {
    v15 = 0;
  }

  if (((isBizChatBlastDoorEnabled ^ 1) & 1) == 0 && v14)
  {
    v16 = [messageCopy objectForKey:*MEMORY[0x277D187F8]];
    _FTOptionallyDecompressData = [v16 _FTOptionallyDecompressData];
    v18 = JWDecodeDictionary();

    v23 = 0;
    v19 = [MEMORY[0x277D1ABB8] infoFromDictionary:v18 isStewieTranscriptSharingMessage:&v23];
    v15 = v23;
    if (v23 == 1 && IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *v22 = 0;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Transcript emergency info received, using old handler", v22, 2u);
      }
    }
  }

  return v15;
}

- (BOOL)_shouldDropIncomingMessageOnService:(id)service guid:(id)guid trustedData:(id)data
{
  v20 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  guidCopy = guid;
  dataCopy = data;
  bizChatService = [(IMDiMessageIDSDelegate *)self bizChatService];
  v12 = bizChatService;
  if (bizChatService == serviceCopy)
  {
    supportsBusinessChat = [MEMORY[0x277D1A9A0] supportsBusinessChat];

    if ((supportsBusinessChat & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v18 = 138412290;
          v19 = guidCopy;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Drop incoming business chat message because it is not supported. (guid: %@)", &v18, 0xCu);
        }

        goto LABEL_14;
      }

LABEL_15:
      v14 = 1;
      goto LABEL_16;
    }
  }

  else
  {
  }

  if (![dataCopy command] || !+[IMBlastdoor _commandReadyForBlastdoor:](IMBlastdoor, "_commandReadyForBlastdoor:", objc_msgSend(dataCopy, "command")))
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = dataCopy;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Rejecting BlastDoor processing for trustedData %@", &v18, 0xCu);
      }

LABEL_14:

      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v14 = 0;
LABEL_16:

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)makeTopLevelMessageDictionaryFrom:(id)from batchContext:(id)context
{
  v60[2] = *MEMORY[0x277D85DE8];
  fromCopy = from;
  contextCopy = context;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  messageContext = [fromCopy messageContext];
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v59[0] = *MEMORY[0x277D18980];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(messageContext, "wantsCheckpointing")}];
  v60[0] = v11;
  v59[1] = *MEMORY[0x277D18968];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(messageContext, "serverTimestampInNanoseconds")}];
  v60[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
  [v10 addEntriesFromDictionary:v13];

  originalGUID = [messageContext originalGUID];

  if (originalGUID)
  {
    originalGUID2 = [messageContext originalGUID];
    v16 = IDSGetUUIDData();
    [v10 setObject:v16 forKey:*MEMORY[0x277D18978]];
  }

  else
  {
    [v7 addObject:*MEMORY[0x277D18978]];
  }

  originalCommand = [messageContext originalCommand];

  if (originalCommand)
  {
    originalCommand2 = [messageContext originalCommand];
    [v10 setObject:originalCommand2 forKey:*MEMORY[0x277D187D8]];
  }

  else
  {
    [v7 addObject:*MEMORY[0x277D187D8]];
  }

  originalTimestamp = [messageContext originalTimestamp];

  if (originalTimestamp)
  {
    originalTimestamp2 = [messageContext originalTimestamp];
    [v10 setObject:originalTimestamp2 forKey:*MEMORY[0x277D18850]];
  }

  im_incomingOC = [messageContext im_incomingOC];

  if (im_incomingOC)
  {
    im_incomingOC2 = [messageContext im_incomingOC];
    [v10 setObject:im_incomingOC2 forKey:*MEMORY[0x277D18848]];
  }

  fromID = [messageContext fromID];

  if (fromID)
  {
    fromID2 = [messageContext fromID];
    [v10 setObject:fromID2 forKey:*MEMORY[0x277D18928]];
  }

  else
  {
    [v7 addObject:*MEMORY[0x277D18928]];
  }

  toID = [messageContext toID];

  if (toID)
  {
    toID2 = [messageContext toID];
    [v10 setObject:toID2 forKey:*MEMORY[0x277D18858]];
  }

  else
  {
    [v7 addObject:*MEMORY[0x277D18858]];
  }

  senderPushToken = [messageContext senderPushToken];

  if (senderPushToken)
  {
    senderPushToken2 = [messageContext senderPushToken];
    [v10 setObject:senderPushToken2 forKey:*MEMORY[0x277D18970]];
  }

  else
  {
    [v7 addObject:*MEMORY[0x277D18970]];
  }

  storageContext = [messageContext storageContext];

  if (storageContext)
  {
    storageContext2 = [messageContext storageContext];
    [v10 setObject:storageContext2 forKey:*MEMORY[0x277D18960]];
  }

  else
  {
    [v7 addObject:*MEMORY[0x277D18960]];
  }

  deliveryStatusContext = [messageContext deliveryStatusContext];

  if (deliveryStatusContext)
  {
    messageContext2 = [fromCopy messageContext];
    deliveryStatusContext2 = [messageContext2 deliveryStatusContext];
    [v10 setObject:deliveryStatusContext2 forKey:*MEMORY[0x277D187F0]];
  }

  v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v35 = *MEMORY[0x277D18810];
  v58[0] = v10;
  v36 = *MEMORY[0x277D18818];
  v57[0] = v35;
  v57[1] = v36;
  v37 = MEMORY[0x277CCABB0];
  messageContext3 = [fromCopy messageContext];
  v39 = [v37 numberWithBool:{objc_msgSend(messageContext3, "shouldShowPeerErrors")}];
  v58[1] = v39;
  v57[2] = *MEMORY[0x277D19F38];
  v58[2] = contextCopy;
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:3];
  [v34 addEntriesFromDictionary:v40];

  decryptedData = [fromCopy decryptedData];

  if (decryptedData)
  {
    decryptedData2 = [fromCopy decryptedData];
    [v34 setObject:decryptedData2 forKey:*MEMORY[0x277D187F8]];
  }

  else
  {
    [v8 addObject:*MEMORY[0x277D187F8]];
  }

  certifiedDeliveryContext = [messageContext certifiedDeliveryContext];

  if (certifiedDeliveryContext)
  {
    certifiedDeliveryContext2 = [messageContext certifiedDeliveryContext];
    [certifiedDeliveryContext2 originalEncryptionType];
    v45 = IDSEncryptionTypeStringFromEncryptionType();
    [v34 setObject:v45 forKey:*MEMORY[0x277D18808]];
  }

  else
  {
    [v8 addObject:*MEMORY[0x277D18808]];
  }

  messageContext4 = [fromCopy messageContext];
  engramGroupID = [messageContext4 engramGroupID];

  if (engramGroupID)
  {
    messageContext5 = [fromCopy messageContext];
    engramGroupID2 = [messageContext5 engramGroupID];
    [v34 setObject:engramGroupID2 forKey:*MEMORY[0x277D18800]];
  }

  else
  {
    [v8 addObject:*MEMORY[0x277D18800]];
  }

  if (([v7 count] || objc_msgSend(v8, "count")) && IMOSLoggingEnabled())
  {
    v50 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      v53 = 138412546;
      v54 = v7;
      v55 = 2112;
      v56 = v8;
      _os_log_impl(&dword_22B4CC000, v50, OS_LOG_TYPE_INFO, "Message in Batch missing payload props %@ / topLevel props %@", &v53, 0x16u);
    }
  }

  v51 = *MEMORY[0x277D85DE8];

  return v34;
}

- (void)service:(id)service account:(id)account incomingBatchMessage:(id)message
{
  v59 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  messageCopy = message;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      messages = [messageCopy messages];
      v9 = [messages count];
      uniqueID = [accountCopy uniqueID];
      loginID = [accountCopy loginID];
      *buf = 134219266;
      selfCopy = self;
      v49 = 2048;
      v50 = messageCopy;
      v51 = 2048;
      v52 = v9;
      v53 = 2112;
      v54 = serviceCopy;
      v55 = 2112;
      v56 = uniqueID;
      v57 = 2112;
      v58 = loginID;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "<IMDiMessageIDSDelegate %p> Received incoming batch Message %p size %ld for service %@ account %@ %@", buf, 0x3Eu);
    }
  }

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v31 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.iMessageReceivedBatchPush", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v31, &state);
  v34 = [objc_alloc(MEMORY[0x277D19290]) initWithIdentifier:@"IncomingPipelineMessagePowerAssertion" timeout:10.0];
  messageFromStorageController = [(IMDiMessageIDSDelegate *)self messageFromStorageController];
  idsService = [(IMDiMessageIDSDelegate *)self idsService];
  [messageFromStorageController noteBatchMessage:messageCopy fromAccount:accountCopy usingService:idsService];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  messages2 = [messageCopy messages];
  v15 = [messages2 countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v15)
  {
    v16 = 0;
    v33 = *v40;
    obj = messages2;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v40 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v39 + 1) + 8 * i);
        messageContext = [v18 messageContext];
        fromID = [messageContext fromID];

        v44[0] = *MEMORY[0x277D19F30];
        uniqueID2 = [accountCopy uniqueID];
        v45[0] = uniqueID2;
        v44[1] = *MEMORY[0x277D19F40];
        context = [messageCopy context];
        batchIdentifier = [context batchIdentifier];
        v45[1] = batchIdentifier;
        v44[2] = *MEMORY[0x277D19F48];
        v24 = [MEMORY[0x277CCABB0] numberWithLongLong:v16];
        v45[2] = v24;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:3];

        v26 = [[IMDiMessageIDSTrustedData alloc] initWithBatchedMessage:v18 batchContext:v25];
        v27 = [(IMDiMessageIDSDelegate *)self makeTopLevelMessageDictionaryFrom:v18 batchContext:v25];
        if (IMOSLoggingEnabled())
        {
          v28 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            selfCopy = v25;
            v49 = 2112;
            v50 = v27;
            _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Generated TLM for %@: %@", buf, 0x16u);
          }
        }

        messageContext2 = [v18 messageContext];
        [(IMDiMessageIDSDelegate *)self service:serviceCopy account:accountCopy fromID:fromID message:v27 messageContext:messageContext2 trustedData:v26 powerAssertion:v34, v31];

        ++v16;
      }

      messages2 = obj;
      v15 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
    }

    while (v15);
  }

  os_activity_scope_leave(&state);
  v30 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service account:(id)account incomingTopLevelMessage:(id)message fromID:(id)d messageContext:(id)context
{
  v50 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v29 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.iMessageReceivedPush", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v29, &state);
  v30 = [objc_alloc(MEMORY[0x277D19290]) initWithIdentifier:@"IncomingPipelineMessagePowerAssertion" timeout:10.0];
  v14 = [[IMDiMessageIDSTrustedData alloc] initWithTopLevelMessage:messageCopy fromPushID:dCopy messageContext:contextCopy];
  v32 = contextCopy;
  v15 = [messageCopy objectForKey:*MEMORY[0x277D18810]];
  v16 = [v15 objectForKey:@"U"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v18 = MEMORY[0x277CBEA90];
    v19 = [v15 objectForKey:@"U"];
    v20 = [v18 _IDSDataFromBase64String:v19];
LABEL_5:
    v21 = v20;
    v22 = isKindOfClass ^ 1;
    goto LABEL_7;
  }

  v19 = [v15 objectForKey:@"U"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [v15 objectForKey:@"U"];
    goto LABEL_5;
  }

  v22 = 0;
  v21 = 0;
LABEL_7:
  v23 = JWUUIDPushObjectToString();
  if (v22)
  {
  }

  if (isKindOfClass)
  {
  }

  if ([v23 length])
  {
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld-%@.data", -[IMDiMessageIDSTrustedData command](v14, "command"), v23, v29];
    [MEMORY[0x277D1AA18] writeMessagePayloadToDisk:messageCopy fileName:v24];
  }

  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      uniqueID = [accountCopy uniqueID];
      command = [(IMDiMessageIDSTrustedData *)v14 command];
      *buf = 134219522;
      selfCopy = self;
      v38 = 2048;
      v39 = messageCopy;
      v40 = 2112;
      v41 = serviceCopy;
      v42 = 2112;
      v43 = uniqueID;
      v44 = 2112;
      v45 = dCopy;
      v46 = 2048;
      v47 = command;
      v48 = 2112;
      v49 = v23;
      _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "<IMDiMessageIDSDelegate %p> Received incoming iMessage %p for service %@ account %@ fromID: %@ command: %ld, guid: %@", buf, 0x48u);
    }
  }

  [(IMDiMessageIDSDelegate *)self service:serviceCopy account:accountCopy fromID:dCopy message:messageCopy messageContext:v32 trustedData:v14 powerAssertion:v30];

  os_activity_scope_leave(&state);
  v28 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service account:(id)account fromID:(id)d message:(id)message messageContext:(id)context trustedData:(id)data powerAssertion:(id)assertion
{
  v111 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  dCopy = d;
  messageCopy = message;
  contextCopy = context;
  dataCopy = data;
  assertionCopy = assertion;
  v90 = contextCopy;
  originalGUID = [contextCopy originalGUID];
  v91 = [messageCopy objectForKey:*MEMORY[0x277D18810]];
  v17 = objc_opt_class();
  v18 = sub_22B5B8EF8(v17, v91, @"mc");
  bOOLValue = [v18 BOOLValue];

  if (bOOLValue)
  {
    v20 = +[IMMessagesToTrack sharedInstance];
    [v20 addMessagesID:originalGUID];
  }

  v21 = dataCopy;
  if ([(IMDiMessageIDSDelegate *)self _shouldDropIncomingMessageOnService:serviceCopy guid:originalGUID trustedData:dataCopy])
  {
    [serviceCopy sendAckForMessageWithContext:v90];
    messageFromStorageController = [(IMDiMessageIDSDelegate *)self messageFromStorageController];
    batchContext = [dataCopy batchContext];
    [messageFromStorageController noteItemProcessed:0 batchContext:batchContext usingService:serviceCopy];

    goto LABEL_56;
  }

  v24 = -[IMDiMessageIDSDelegate _shouldPassthroughIncomingMessageOnService:command:message:](self, "_shouldPassthroughIncomingMessageOnService:command:message:", serviceCopy, [dataCopy command], messageCopy);
  v25 = IMOSLoggingEnabled();
  if (v24)
  {
    if (v25)
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v106 = originalGUID;
        _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Passing biz chat through legacy path (guid: %@)", buf, 0xCu);
      }
    }

    accountController = self->_accountController;
    uniqueID = [accountCopy uniqueID];
    v29 = [(IMDAccountController *)accountController accountForIDSAccountUniqueID:uniqueID];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      session = [v29 session];
      idsAccount = [v29 idsAccount];
      v32 = [session _pushHandlerForIDSAccount:idsAccount];

      if (v32 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        if (IMOSLoggingEnabled())
        {
          v33 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v106 = session;
            v107 = 2112;
            v108 = v32;
            _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Found service session for biz chat, passing along (%@), push handler (%@)", buf, 0x16u);
          }
        }

        v81 = [messageCopy objectForKey:*MEMORY[0x277D187F8]];
        v82 = [messageCopy objectForKey:*MEMORY[0x277D18808]];
        v34 = objc_opt_class();
        v80 = sub_22B5B8EF8(v34, v91, *MEMORY[0x277D18858]);
        v35 = objc_opt_class();
        v79 = sub_22B5B8EF8(v35, v91, *MEMORY[0x277D18928]);
        v36 = *MEMORY[0x277D18970];
        v84 = [v91 objectForKey:*MEMORY[0x277D18970]];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v37 = MEMORY[0x277CBEA90];
          v83 = [v91 objectForKey:v36];
          v78 = [v37 _IDSDataFromBase64String:v83];
        }

        else
        {
          v83 = [v91 objectForKey:v36];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v60 = 0;
            v78 = 0;
            goto LABEL_50;
          }

          v78 = [v91 objectForKey:v36];
        }

        v60 = isKindOfClass ^ 1;
LABEL_50:
        v61 = objc_opt_class();
        v77 = sub_22B5B8EF8(v61, v91, *MEMORY[0x277D18968]);
        v62 = objc_opt_class();
        v63 = *MEMORY[0x277D187F0];
        v76 = sub_22B5B8EF8(v62, v91, *MEMORY[0x277D187F0]);
        v64 = objc_opt_class();
        v75 = sub_22B5B8EF8(v64, v91, v63);
        v65 = objc_opt_class();
        v66 = sub_22B5B8EF8(v65, v91, *MEMORY[0x277D18960]);
        batchContext2 = [dataCopy batchContext];
        v68 = [messageCopy objectForKey:@"mid"];
        v69 = objc_opt_class();
        v70 = sub_22B5B8EF8(v69, v91, *MEMORY[0x277D18980]);
        bOOLValue2 = [v70 BOOLValue];
        BYTE1(v74) = [messageCopy BOOLValueForKey:@"stu" withDefault:1];
        LOBYTE(v74) = bOOLValue2;
        LOBYTE(v73) = 0;
        [session handler:v32 incomingMessage:v81 originalEncryptionType:v82 messageID:originalGUID toIdentifier:v80 fromIdentifier:v79 fromToken:v78 timeStamp:v77 fromIDSID:dCopy incomingEngroup:0 needsDeliveryReceipt:v76 deliveryContext:v75 storageContext:v66 batchContext:batchContext2 messageContext:v90 isBeingReplayed:v73 mergeID:v68 wantsCheckpointing:v74 isSnapTrustedUser:?];

        if (v60)
        {
        }

        if (isKindOfClass)
        {
        }

LABEL_55:
        [serviceCopy sendAckForMessageWithContext:v90];

        goto LABEL_56;
      }
    }

    else
    {
      session = 0;
      v32 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v54 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v106 = session;
        v107 = 2112;
        v108 = v32;
        v109 = 2112;
        v110 = originalGUID;
        _os_log_impl(&dword_22B4CC000, v54, OS_LOG_TYPE_INFO, "Failed to process incoming biz chat message because we couldn't find a session (%@) or push handler (%@) (guid: %@)", buf, 0x20u);
      }
    }

    goto LABEL_55;
  }

  if (v25)
  {
    v38 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v106 = originalGUID;
      _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "BlastDoor processing GUID (%@)", buf, 0xCu);
    }

    v21 = dataCopy;
  }

  if ([v21 command] == 100)
  {
    im_sendMessageCheckpointIfNecessary();
  }

  v39 = self->_accountController;
  uniqueID2 = [accountCopy uniqueID];
  v86 = [(IMDAccountController *)v39 accountForIDSAccountUniqueID:uniqueID2];

  if (!v86)
  {
    if (IMOSLoggingEnabled())
    {
      v41 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = self->_accountController;
        *buf = 138412546;
        v106 = accountCopy;
        v107 = 2112;
        v108 = v42;
        _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, "<Warning> Couldn't find IMDAccount for IDSAccount (%@) using accountController: %@", buf, 0x16u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v43 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        accounts = [(IMDAccountController *)self->_accountController accounts];
        *buf = 138412290;
        v106 = accounts;
        _os_log_impl(&dword_22B4CC000, v43, OS_LOG_TYPE_INFO, "  AllAccounts: %@", buf, 0xCu);
      }
    }
  }

  v45 = [IMDiMessagePipelineResources alloc];
  messageStore = [(IMDiMessageIDSDelegate *)self messageStore];
  messageFromStorageController2 = [(IMDiMessageIDSDelegate *)self messageFromStorageController];
  broadcaster = [(IMDiMessageIDSDelegate *)self broadcaster];
  recentsController = [(IMDiMessageIDSDelegate *)self recentsController];
  chatRegistry = [(IMDiMessageIDSDelegate *)self chatRegistry];
  attachmentStore = [(IMDiMessageIDSDelegate *)self attachmentStore];
  v52 = [(IMDiMessagePipelineResources *)v45 initWithIMDAccount:v86 service:serviceCopy messageStore:messageStore storageController:messageFromStorageController2 broadcaster:broadcaster recentsController:recentsController chatRegistry:chatRegistry attachmentStore:attachmentStore];

  if ([dataCopy isFromMe])
  {
    v53 = 1;
  }

  else
  {
    chatRegistry2 = [(IMDiMessagePipelineResources *)v52 chatRegistry];
    fromIdentifier = [dataCopy fromIdentifier];
    v53 = [chatRegistry2 hasKnownSenderChatWithChatIdentifier:fromIdentifier];
  }

  v57 = MEMORY[0x277D1AB80];
  serviceIdentifier = [serviceCopy serviceIdentifier];
  v59 = [v57 contextWithKnownSender:v53 serviceName:serviceIdentifier];

  if ([(IMDiMessageIDSDelegate *)self blockCommandForTrustedData:dataCopy])
  {
    [serviceCopy sendAckForMessageWithContext:v90];
  }

  else
  {
    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 3221225472;
    v95[2] = sub_22B5B8FB4;
    v95[3] = &unk_278705AC8;
    v96 = dataCopy;
    v97 = serviceCopy;
    v104 = bOOLValue;
    v98 = originalGUID;
    selfCopy = self;
    v100 = v52;
    v101 = v90;
    v102 = assertionCopy;
    v103 = messageCopy;
    [IMBlastdoor sendDictionary:v103 senderContext:v59 withCompletionBlock:v95];
  }

LABEL_56:
  v72 = *MEMORY[0x277D85DE8];
}

@end