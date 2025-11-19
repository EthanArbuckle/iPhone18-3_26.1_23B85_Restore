@interface IMDiMessageIDSDelegate
+ (BOOL)isDefaultPairedDevice:(id)a3 withAccount:(id)a4;
+ (id)commandHandlerRegistry;
+ (void)_postReceivedMessageMetricsForInput:(id)a3 withMessageContext:(id)a4 toIDSService:(id)a5;
+ (void)addLockdownCommandHandlersToRegistry:(id)a3;
+ (void)addStandardCommandHandlersToRegistry:(id)a3;
- (BOOL)_containsHandlesForTrustedData:(id)a3;
- (BOOL)_shouldDropIncomingMessageOnService:(id)a3 guid:(id)a4 trustedData:(id)a5;
- (BOOL)_shouldPassthroughIncomingMessageOnService:(id)a3 command:(int64_t)a4 message:(id)a5;
- (BOOL)blockCommandForTrustedData:(id)a3;
- (IMDiMessageIDSDelegate)init;
- (IMDiMessageIDSDelegate)initWithiMessageService:(id)a3 bizChatService:(id)a4 incomingMessageHandler:(id)a5 messageStore:(id)a6 chatRegistry:(id)a7 accountController:(id)a8 storageController:(id)a9 recentsController:(id)a10 attachmentStore:(id)a11;
- (id)broadcaster;
- (id)makeTopLevelMessageDictionaryFrom:(id)a3 batchContext:(id)a4;
- (void)service:(id)a3 account:(id)a4 fromID:(id)a5 message:(id)a6 messageContext:(id)a7 trustedData:(id)a8 powerAssertion:(id)a9;
- (void)service:(id)a3 account:(id)a4 incomingBatchMessage:(id)a5;
- (void)service:(id)a3 account:(id)a4 incomingTopLevelMessage:(id)a5 fromID:(id)a6 messageContext:(id)a7;
@end

@implementation IMDiMessageIDSDelegate

+ (id)commandHandlerRegistry
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B5AAEAC;
  block[3] = &unk_278702AF8;
  block[4] = a1;
  if (qword_281421358 != -1)
  {
    dispatch_once(&qword_281421358, block);
  }

  v2 = [qword_281421350 handlers];

  return v2;
}

- (IMDiMessageIDSDelegate)init
{
  v24 = *MEMORY[0x277D85DE8];
  v21 = [objc_opt_class() commandHandlerRegistry];
  v3 = MEMORY[0x277CBEB98];
  v4 = [v21 allKeys];
  v5 = [v3 setWithArray:v4];

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

- (IMDiMessageIDSDelegate)initWithiMessageService:(id)a3 bizChatService:(id)a4 incomingMessageHandler:(id)a5 messageStore:(id)a6 chatRegistry:(id)a7 accountController:(id)a8 storageController:(id)a9 recentsController:(id)a10 attachmentStore:(id)a11
{
  v40 = *MEMORY[0x277D85DE8];
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v31 = a8;
  v32 = a9;
  v33 = a10;
  v34 = a11;
  v35.receiver = self;
  v35.super_class = IMDiMessageIDSDelegate;
  v18 = [(IMDiMessageIDSDelegate *)&v35 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_idsService, a3);
    [(IDSService *)v19->_idsService addDelegate:v19 queue:MEMORY[0x277D85CD0]];
    objc_storeStrong(&v19->_bizChatService, a4);
    [(IDSService *)v19->_bizChatService addDelegate:v19 queue:MEMORY[0x277D85CD0]];

    objc_storeStrong(&v19->_handler, a5);
    objc_storeStrong(&v19->_messageStore, a6);
    objc_storeStrong(&v19->_accountController, a8);
    objc_storeStrong(&v19->_messageFromStorageController, a9);
    objc_storeStrong(&v19->_recentsController, a10);
    objc_storeStrong(&v19->_chatRegistry, a7);
    objc_storeStrong(&v19->_attachmentStore, a11);
    v20 = [objc_opt_class() commandHandlerRegistry];
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        idsService = v19->_idsService;
        v23 = [v20 allKeys];
        *buf = 138412546;
        v37 = idsService;
        v38 = 2112;
        v39 = v23;
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
  v3 = [v2 broadcasterForChatListeners];

  return v3;
}

+ (BOOL)isDefaultPairedDevice:(id)a3 withAccount:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 idsAccount];
  v7 = [v6 devices];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v7;
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
          v13 = [v12 pushToken];
          v14 = [v13 isEqualToData:v5];

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

+ (void)_postReceivedMessageMetricsForInput:(id)a3 withMessageContext:(id)a4 toIDSService:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v23 = v7;
  if (objc_opt_respondsToSelector())
  {
    v24 = v9;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = [v7 messageItems];
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
            v15 = [v8 incomingMessageMetrics];
            if (v15)
            {
              [v14 addTelemetryMetricsFromDictionary:v15];
            }

            v16 = [v8 im_samplingUUID];
            if (v16)
            {
              v17 = objc_alloc(MEMORY[0x277D18A28]);
              v18 = [v14 telemetryMetrics];
              v19 = [v17 initWithTimestampDictionary:v18 identifier:v16];

              [v24 noteMetricOfType:1 context:v19];
              if (IMOSLoggingEnabled())
              {
                v20 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                {
                  v21 = [v14 guid];
                  *buf = 138412546;
                  v31 = v21;
                  v32 = 2112;
                  v33 = v16;
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

    v9 = v24;
  }

  v22 = *MEMORY[0x277D85DE8];
}

+ (void)addStandardCommandHandlersToRegistry:(id)a3
{
  v88 = *MEMORY[0x277D85DE8];
  v4 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B5AC1FC;
  aBlock[3] = &unk_278705948;
  aBlock[4] = a1;
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
  [v4 setStandardHandler:v7 forCommand:&unk_283F4E768];

  v8 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v9 = [v8 isTranscriptSharingEnabled];

  if (v9)
  {
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = sub_22B5ACB5C;
    v82[3] = &unk_278705948;
    v82[4] = a1;
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
    [v4 setStandardHandler:v12 forCommand:&unk_283F4E780];
  }

  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = sub_22B5AD3C8;
  v81[3] = &unk_278705948;
  v81[4] = a1;
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
  [v4 setStandardHandler:v15 forCommand:&unk_283F4E798];

  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = sub_22B5ADD00;
  v80[3] = &unk_278705948;
  v80[4] = a1;
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
  [v4 setStandardHandler:v18 forCommand:&unk_283F4E7B0];

  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = sub_22B5AE4E8;
  v79[3] = &unk_2787059B8;
  v79[4] = a1;
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
  [v4 setStandardHandler:v21 forCommand:&unk_283F4E7C8];

  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = sub_22B5AECC0;
  v78[3] = &unk_2787059B8;
  v78[4] = a1;
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
  [v4 setStandardHandler:v23 forCommand:&unk_283F4E7E0];

  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = sub_22B5AF450;
  v77[3] = &unk_2787059B8;
  v77[4] = a1;
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
  [v4 setStandardHandler:v25 forCommand:&unk_283F4E7F8];

  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = sub_22B5AFBE0;
  v76[3] = &unk_278705948;
  v76[4] = a1;
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
  [v4 setStandardHandler:v28 forCommand:&unk_283F4E810];

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

  [v4 setStandardHandler:&unk_283F1A068 forCommand:&unk_283F4E828];
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = sub_22B5B1B6C;
  v75[3] = &unk_2787059B8;
  v75[4] = a1;
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
  [v4 setStandardHandler:v32 forCommand:&unk_283F4E840];

  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = sub_22B5B22FC;
  v74[3] = &unk_2787059B8;
  v74[4] = a1;
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
  [v4 setStandardHandler:v35 forCommand:&unk_283F4E858];

  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = sub_22B5B2A8C;
  v73[3] = &unk_2787059B8;
  v73[4] = a1;
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
  [v4 setStandardHandler:v38 forCommand:&unk_283F4E870];

  v39 = IMLogHandleForCategory();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v85 = "134";
    v86 = 2112;
    v87 = &unk_283F4E888;
    _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", buf, 0x16u);
  }

  [v4 setStandardHandler:&unk_283F1A088 forCommand:&unk_283F4E888];
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = sub_22B5B3850;
  v72[3] = &unk_2787059B8;
  v72[4] = a1;
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
  [v4 setStandardHandler:v42 forCommand:&unk_283F4E8A0];

  v43 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v44 = [v43 isTranscriptBackgroundsEnabled];

  if (v44)
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

    [v4 setStandardHandler:&unk_283F1A0A8 forCommand:{&unk_283F4E8B8, v61, v63, v64, v65, v66}];
  }

  v46 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v47 = [v46 isIntroductionsEnabled];

  if (v47)
  {
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = sub_22B5B46B4;
    v71[3] = &unk_2787059B8;
    v71[4] = a1;
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
    [v4 setStandardHandler:v50 forCommand:&unk_283F4E8D0];
  }

  v51 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v52 = [v51 isIntroductionsEnabled];

  if (v52)
  {
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = sub_22B5B4E44;
    v70[3] = &unk_2787059B8;
    v70[4] = a1;
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
    [v4 setStandardHandler:v55 forCommand:&unk_283F4E8E8];
  }

  v56 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  [v56 isPriorityMessagesEnabled];

  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = sub_22B5B55D4;
  v69[3] = &unk_2787059B8;
  v69[4] = a1;
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
  [v4 setStandardHandler:v59 forCommand:&unk_283F4E900];

  v60 = *MEMORY[0x277D85DE8];
}

+ (void)addLockdownCommandHandlersToRegistry:(id)a3
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B5B5E34;
  aBlock[3] = &unk_278705948;
  aBlock[4] = a1;
  v3 = a3;
  v4 = _Block_copy(aBlock);
  v5 = _Block_copy(v4);
  [v3 setLockdownHandler:v5 forCommand:&unk_283F4E810];

  [v3 setPassThroughLockdownHandlerForCommand:&unk_283F4E768];
  [v3 setPassThroughLockdownHandlerForCommand:&unk_283F4E798];
}

- (BOOL)_containsHandlesForTrustedData:(id)a3
{
  v3 = [a3 fromIdentifier];
  v4 = [v3 _stripFZIDPrefix];

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@ || %K == %@", *MEMORY[0x277D19F00], v4, *MEMORY[0x277D19F08], v4];
  v6 = [MEMORY[0x277D18EB0] synchronousDatabase];
  v7 = [v6 handleRecordsFilteredByPredicate:v5];

  LOBYTE(v6) = [v7 count] != 0;
  return v6;
}

- (BOOL)blockCommandForTrustedData:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isFromMe])
  {
    goto LABEL_2;
  }

  LOBYTE(v5) = 0;
  v6 = [v4 command] - 102;
  if (v6 > 0x19)
  {
    goto LABEL_13;
  }

  if (((1 << v6) & 0x3C24200) != 0)
  {
    if ([v4 isFromMe])
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
        v11 = v4;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Received message that should only be from me (trustedData: %@)", &v10, 0xCu);
      }
    }

    LOBYTE(v5) = 1;
  }

  else if (((1 << v6) & 0x110C09) != 0)
  {
    v5 = ![(IMDiMessageIDSDelegate *)self _containsHandlesForTrustedData:v4];
  }

LABEL_13:

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)_shouldPassthroughIncomingMessageOnService:(id)a3 command:(int64_t)a4 message:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(IMDiMessageIDSDelegate *)self bizChatService];

  v11 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v12 = [v11 isBizChatBlastDoorEnabled];

  v13 = a4 == 100 && v10 == v8;
  v14 = v13;
  if (v13)
  {
    v15 = v12 ^ 1;
  }

  else
  {
    v15 = 0;
  }

  if (((v12 ^ 1) & 1) == 0 && v14)
  {
    v16 = [v9 objectForKey:*MEMORY[0x277D187F8]];
    v17 = [v16 _FTOptionallyDecompressData];
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

- (BOOL)_shouldDropIncomingMessageOnService:(id)a3 guid:(id)a4 trustedData:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IMDiMessageIDSDelegate *)self bizChatService];
  v12 = v11;
  if (v11 == v8)
  {
    v13 = [MEMORY[0x277D1A9A0] supportsBusinessChat];

    if ((v13 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v18 = 138412290;
          v19 = v9;
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

  if (![v10 command] || !+[IMBlastdoor _commandReadyForBlastdoor:](IMBlastdoor, "_commandReadyForBlastdoor:", objc_msgSend(v10, "command")))
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = v10;
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

- (id)makeTopLevelMessageDictionaryFrom:(id)a3 batchContext:(id)a4
{
  v60[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [v5 messageContext];
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v59[0] = *MEMORY[0x277D18980];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "wantsCheckpointing")}];
  v60[0] = v11;
  v59[1] = *MEMORY[0x277D18968];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v9, "serverTimestampInNanoseconds")}];
  v60[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
  [v10 addEntriesFromDictionary:v13];

  v14 = [v9 originalGUID];

  if (v14)
  {
    v15 = [v9 originalGUID];
    v16 = IDSGetUUIDData();
    [v10 setObject:v16 forKey:*MEMORY[0x277D18978]];
  }

  else
  {
    [v7 addObject:*MEMORY[0x277D18978]];
  }

  v17 = [v9 originalCommand];

  if (v17)
  {
    v18 = [v9 originalCommand];
    [v10 setObject:v18 forKey:*MEMORY[0x277D187D8]];
  }

  else
  {
    [v7 addObject:*MEMORY[0x277D187D8]];
  }

  v19 = [v9 originalTimestamp];

  if (v19)
  {
    v20 = [v9 originalTimestamp];
    [v10 setObject:v20 forKey:*MEMORY[0x277D18850]];
  }

  v21 = [v9 im_incomingOC];

  if (v21)
  {
    v22 = [v9 im_incomingOC];
    [v10 setObject:v22 forKey:*MEMORY[0x277D18848]];
  }

  v23 = [v9 fromID];

  if (v23)
  {
    v24 = [v9 fromID];
    [v10 setObject:v24 forKey:*MEMORY[0x277D18928]];
  }

  else
  {
    [v7 addObject:*MEMORY[0x277D18928]];
  }

  v25 = [v9 toID];

  if (v25)
  {
    v26 = [v9 toID];
    [v10 setObject:v26 forKey:*MEMORY[0x277D18858]];
  }

  else
  {
    [v7 addObject:*MEMORY[0x277D18858]];
  }

  v27 = [v9 senderPushToken];

  if (v27)
  {
    v28 = [v9 senderPushToken];
    [v10 setObject:v28 forKey:*MEMORY[0x277D18970]];
  }

  else
  {
    [v7 addObject:*MEMORY[0x277D18970]];
  }

  v29 = [v9 storageContext];

  if (v29)
  {
    v30 = [v9 storageContext];
    [v10 setObject:v30 forKey:*MEMORY[0x277D18960]];
  }

  else
  {
    [v7 addObject:*MEMORY[0x277D18960]];
  }

  v31 = [v9 deliveryStatusContext];

  if (v31)
  {
    v32 = [v5 messageContext];
    v33 = [v32 deliveryStatusContext];
    [v10 setObject:v33 forKey:*MEMORY[0x277D187F0]];
  }

  v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v35 = *MEMORY[0x277D18810];
  v58[0] = v10;
  v36 = *MEMORY[0x277D18818];
  v57[0] = v35;
  v57[1] = v36;
  v37 = MEMORY[0x277CCABB0];
  v38 = [v5 messageContext];
  v39 = [v37 numberWithBool:{objc_msgSend(v38, "shouldShowPeerErrors")}];
  v58[1] = v39;
  v57[2] = *MEMORY[0x277D19F38];
  v58[2] = v6;
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:3];
  [v34 addEntriesFromDictionary:v40];

  v41 = [v5 decryptedData];

  if (v41)
  {
    v42 = [v5 decryptedData];
    [v34 setObject:v42 forKey:*MEMORY[0x277D187F8]];
  }

  else
  {
    [v8 addObject:*MEMORY[0x277D187F8]];
  }

  v43 = [v9 certifiedDeliveryContext];

  if (v43)
  {
    v44 = [v9 certifiedDeliveryContext];
    [v44 originalEncryptionType];
    v45 = IDSEncryptionTypeStringFromEncryptionType();
    [v34 setObject:v45 forKey:*MEMORY[0x277D18808]];
  }

  else
  {
    [v8 addObject:*MEMORY[0x277D18808]];
  }

  v46 = [v5 messageContext];
  v47 = [v46 engramGroupID];

  if (v47)
  {
    v48 = [v5 messageContext];
    v49 = [v48 engramGroupID];
    [v34 setObject:v49 forKey:*MEMORY[0x277D18800]];
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

- (void)service:(id)a3 account:(id)a4 incomingBatchMessage:(id)a5
{
  v59 = *MEMORY[0x277D85DE8];
  v35 = a3;
  v38 = a4;
  v36 = a5;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v36 messages];
      v9 = [v8 count];
      v10 = [v38 uniqueID];
      v11 = [v38 loginID];
      *buf = 134219266;
      v48 = self;
      v49 = 2048;
      v50 = v36;
      v51 = 2048;
      v52 = v9;
      v53 = 2112;
      v54 = v35;
      v55 = 2112;
      v56 = v10;
      v57 = 2112;
      v58 = v11;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "<IMDiMessageIDSDelegate %p> Received incoming batch Message %p size %ld for service %@ account %@ %@", buf, 0x3Eu);
    }
  }

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v31 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.iMessageReceivedBatchPush", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v31, &state);
  v34 = [objc_alloc(MEMORY[0x277D19290]) initWithIdentifier:@"IncomingPipelineMessagePowerAssertion" timeout:10.0];
  v12 = [(IMDiMessageIDSDelegate *)self messageFromStorageController];
  v13 = [(IMDiMessageIDSDelegate *)self idsService];
  [v12 noteBatchMessage:v36 fromAccount:v38 usingService:v13];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v14 = [v36 messages];
  v15 = [v14 countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v15)
  {
    v16 = 0;
    v33 = *v40;
    obj = v14;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v40 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v39 + 1) + 8 * i);
        v19 = [v18 messageContext];
        v20 = [v19 fromID];

        v44[0] = *MEMORY[0x277D19F30];
        v21 = [v38 uniqueID];
        v45[0] = v21;
        v44[1] = *MEMORY[0x277D19F40];
        v22 = [v36 context];
        v23 = [v22 batchIdentifier];
        v45[1] = v23;
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
            v48 = v25;
            v49 = 2112;
            v50 = v27;
            _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Generated TLM for %@: %@", buf, 0x16u);
          }
        }

        v29 = [v18 messageContext];
        [(IMDiMessageIDSDelegate *)self service:v35 account:v38 fromID:v20 message:v27 messageContext:v29 trustedData:v26 powerAssertion:v34, v31];

        ++v16;
      }

      v14 = obj;
      v15 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
    }

    while (v15);
  }

  os_activity_scope_leave(&state);
  v30 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 incomingTopLevelMessage:(id)a5 fromID:(id)a6 messageContext:(id)a7
{
  v50 = *MEMORY[0x277D85DE8];
  v33 = a3;
  v34 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v29 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.iMessageReceivedPush", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v29, &state);
  v30 = [objc_alloc(MEMORY[0x277D19290]) initWithIdentifier:@"IncomingPipelineMessagePowerAssertion" timeout:10.0];
  v14 = [[IMDiMessageIDSTrustedData alloc] initWithTopLevelMessage:v11 fromPushID:v12 messageContext:v13];
  v32 = v13;
  v15 = [v11 objectForKey:*MEMORY[0x277D18810]];
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
    [MEMORY[0x277D1AA18] writeMessagePayloadToDisk:v11 fileName:v24];
  }

  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = [v34 uniqueID];
      v27 = [(IMDiMessageIDSTrustedData *)v14 command];
      *buf = 134219522;
      v37 = self;
      v38 = 2048;
      v39 = v11;
      v40 = 2112;
      v41 = v33;
      v42 = 2112;
      v43 = v26;
      v44 = 2112;
      v45 = v12;
      v46 = 2048;
      v47 = v27;
      v48 = 2112;
      v49 = v23;
      _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "<IMDiMessageIDSDelegate %p> Received incoming iMessage %p for service %@ account %@ fromID: %@ command: %ld, guid: %@", buf, 0x48u);
    }
  }

  [(IMDiMessageIDSDelegate *)self service:v33 account:v34 fromID:v12 message:v11 messageContext:v32 trustedData:v14 powerAssertion:v30];

  os_activity_scope_leave(&state);
  v28 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 fromID:(id)a5 message:(id)a6 messageContext:(id)a7 trustedData:(id)a8 powerAssertion:(id)a9
{
  v111 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v89 = a4;
  v87 = a5;
  v92 = a6;
  v16 = a7;
  v94 = a8;
  v88 = a9;
  v90 = v16;
  v93 = [v16 originalGUID];
  v91 = [v92 objectForKey:*MEMORY[0x277D18810]];
  v17 = objc_opt_class();
  v18 = sub_22B5B8EF8(v17, v91, @"mc");
  v19 = [v18 BOOLValue];

  if (v19)
  {
    v20 = +[IMMessagesToTrack sharedInstance];
    [v20 addMessagesID:v93];
  }

  v21 = v94;
  if ([(IMDiMessageIDSDelegate *)self _shouldDropIncomingMessageOnService:v15 guid:v93 trustedData:v94])
  {
    [v15 sendAckForMessageWithContext:v90];
    v22 = [(IMDiMessageIDSDelegate *)self messageFromStorageController];
    v23 = [v94 batchContext];
    [v22 noteItemProcessed:0 batchContext:v23 usingService:v15];

    goto LABEL_56;
  }

  v24 = -[IMDiMessageIDSDelegate _shouldPassthroughIncomingMessageOnService:command:message:](self, "_shouldPassthroughIncomingMessageOnService:command:message:", v15, [v94 command], v92);
  v25 = IMOSLoggingEnabled();
  if (v24)
  {
    if (v25)
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v106 = v93;
        _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Passing biz chat through legacy path (guid: %@)", buf, 0xCu);
      }
    }

    accountController = self->_accountController;
    v28 = [v89 uniqueID];
    v29 = [(IMDAccountController *)accountController accountForIDSAccountUniqueID:v28];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [v29 session];
      v31 = [v29 idsAccount];
      v32 = [v30 _pushHandlerForIDSAccount:v31];

      if (v32 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        if (IMOSLoggingEnabled())
        {
          v33 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v106 = v30;
            v107 = 2112;
            v108 = v32;
            _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Found service session for biz chat, passing along (%@), push handler (%@)", buf, 0x16u);
          }
        }

        v81 = [v92 objectForKey:*MEMORY[0x277D187F8]];
        v82 = [v92 objectForKey:*MEMORY[0x277D18808]];
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
        v67 = [v94 batchContext];
        v68 = [v92 objectForKey:@"mid"];
        v69 = objc_opt_class();
        v70 = sub_22B5B8EF8(v69, v91, *MEMORY[0x277D18980]);
        v71 = [v70 BOOLValue];
        BYTE1(v74) = [v92 BOOLValueForKey:@"stu" withDefault:1];
        LOBYTE(v74) = v71;
        LOBYTE(v73) = 0;
        [v30 handler:v32 incomingMessage:v81 originalEncryptionType:v82 messageID:v93 toIdentifier:v80 fromIdentifier:v79 fromToken:v78 timeStamp:v77 fromIDSID:v87 incomingEngroup:0 needsDeliveryReceipt:v76 deliveryContext:v75 storageContext:v66 batchContext:v67 messageContext:v90 isBeingReplayed:v73 mergeID:v68 wantsCheckpointing:v74 isSnapTrustedUser:?];

        if (v60)
        {
        }

        if (isKindOfClass)
        {
        }

LABEL_55:
        [v15 sendAckForMessageWithContext:v90];

        goto LABEL_56;
      }
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v54 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v106 = v30;
        v107 = 2112;
        v108 = v32;
        v109 = 2112;
        v110 = v93;
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
      v106 = v93;
      _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "BlastDoor processing GUID (%@)", buf, 0xCu);
    }

    v21 = v94;
  }

  if ([v21 command] == 100)
  {
    im_sendMessageCheckpointIfNecessary();
  }

  v39 = self->_accountController;
  v40 = [v89 uniqueID];
  v86 = [(IMDAccountController *)v39 accountForIDSAccountUniqueID:v40];

  if (!v86)
  {
    if (IMOSLoggingEnabled())
    {
      v41 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = self->_accountController;
        *buf = 138412546;
        v106 = v89;
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
        v44 = [(IMDAccountController *)self->_accountController accounts];
        *buf = 138412290;
        v106 = v44;
        _os_log_impl(&dword_22B4CC000, v43, OS_LOG_TYPE_INFO, "  AllAccounts: %@", buf, 0xCu);
      }
    }
  }

  v45 = [IMDiMessagePipelineResources alloc];
  v46 = [(IMDiMessageIDSDelegate *)self messageStore];
  v47 = [(IMDiMessageIDSDelegate *)self messageFromStorageController];
  v48 = [(IMDiMessageIDSDelegate *)self broadcaster];
  v49 = [(IMDiMessageIDSDelegate *)self recentsController];
  v50 = [(IMDiMessageIDSDelegate *)self chatRegistry];
  v51 = [(IMDiMessageIDSDelegate *)self attachmentStore];
  v52 = [(IMDiMessagePipelineResources *)v45 initWithIMDAccount:v86 service:v15 messageStore:v46 storageController:v47 broadcaster:v48 recentsController:v49 chatRegistry:v50 attachmentStore:v51];

  if ([v94 isFromMe])
  {
    v53 = 1;
  }

  else
  {
    v55 = [(IMDiMessagePipelineResources *)v52 chatRegistry];
    v56 = [v94 fromIdentifier];
    v53 = [v55 hasKnownSenderChatWithChatIdentifier:v56];
  }

  v57 = MEMORY[0x277D1AB80];
  v58 = [v15 serviceIdentifier];
  v59 = [v57 contextWithKnownSender:v53 serviceName:v58];

  if ([(IMDiMessageIDSDelegate *)self blockCommandForTrustedData:v94])
  {
    [v15 sendAckForMessageWithContext:v90];
  }

  else
  {
    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 3221225472;
    v95[2] = sub_22B5B8FB4;
    v95[3] = &unk_278705AC8;
    v96 = v94;
    v97 = v15;
    v104 = v19;
    v98 = v93;
    v99 = self;
    v100 = v52;
    v101 = v90;
    v102 = v88;
    v103 = v92;
    [IMBlastdoor sendDictionary:v103 senderContext:v59 withCompletionBlock:v95];
  }

LABEL_56:
  v72 = *MEMORY[0x277D85DE8];
}

@end