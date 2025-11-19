@interface IMAssistantUnsendMessagesHandler
+ (id)makeRetractedMessageItem:(id)a3;
- (void)chatsForMessageIdentifiers:(id)a3 completion:(id)a4;
- (void)handleUnsendMessages:(id)a3 completion:(id)a4;
- (void)retractPartIndex:(int64_t)a3 fromMessageItem:(id)a4 chat:(id)a5 backwardCompatabilityText:(id)a6;
@end

@implementation IMAssistantUnsendMessagesHandler

- (void)handleUnsendMessages:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v20 = v6;
    _os_log_impl(&dword_25479E000, v8, OS_LOG_TYPE_INFO, "Handling INUnsendMessagesIntent: %@", buf, 0xCu);
  }

  v9 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  v10 = [v9 accountDataSource];
  v11 = [v10 hasMessagingAccount];

  if (v11)
  {
    v12 = [v6 messageIdentifiers];
    v13 = +[IMAssistantMessageQueryHandler IMAssistantIMSPIQueue];
    v17 = v6;
    v18 = v7;
    IMSPIQueryIMMessageItemsWithGUIDsAndQOS();

    v14 = v17;
  }

  else
  {
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v15, OS_LOG_TYPE_INFO, "Could not send message; no messaging accounts available", buf, 2u);
    }

    v14 = [objc_alloc(MEMORY[0x277CD4298]) initWithCode:10 userActivity:0];
    (*(v7 + 2))(v7, v14);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)chatsForMessageIdentifiers:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[IMAssistantMessageQueryHandler IMAssistantIMSPIQueue];
  v10 = v6;
  v8 = v6;
  v9 = v5;
  IMSPIQueryMessagesWithGUIDsAndQOS();
}

+ (id)makeRetractedMessageItem:(id)a3
{
  v3 = a3;
  v4 = [v3 body];
  if (!v4)
  {
    v5 = [v3 plainBody];
    v6 = v5;
    v7 = &stru_286693278;
    if (v5)
    {
      v7 = v5;
    }

    v8 = v7;

    v4 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v8];
  }

  v9 = [v4 __im_messageTextByRemovingMessagePartIndex:0];
  v10 = MEMORY[0x277D1AA70];
  v11 = [v3 fileTransferGUIDs];
  v12 = [v10 newMessageItemFrom:v3 withText:v9 deleteSubject:1 withFileTransferGUIDs:v11];

  v13 = [MEMORY[0x277CBEAA8] __im_dateWithCurrentServerTime];
  [v12 setDateEdited:v13];

  [v12 addRetractedPartIndex:0];

  return v12;
}

- (void)retractPartIndex:(int64_t)a3 fromMessageItem:(id)a4 chat:(id)a5 backwardCompatabilityText:(id)a6
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v11 = [v9 account];
  v12 = IMCopyGUIDForChatOnAccount();

  IMComponentsFromChatGUID();
  v13 = 0;
  v14 = [IMAssistantUnsendMessagesHandler makeRetractedMessageItem:v10];
  v15 = [MEMORY[0x277D18D68] sharedController];
  v16 = [v15 remoteDaemon];
  v17 = [v9 chatStyle];
  v18 = [v9 account];

  v19 = [v18 uniqueID];
  [v16 sendEditedMessage:v14 previousMessage:v10 partIndex:a3 editType:2 toChatIdentifier:v13 style:v17 account:v19 backwardCompatabilityText:v8];
}

@end