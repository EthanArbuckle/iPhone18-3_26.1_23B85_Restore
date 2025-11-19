@interface IMAssistantEditMessageHandler
- (void)chatsForMessageIdentifiers:(id)a3 completion:(id)a4;
- (void)confirmEditMessage:(id)a3 completion:(id)a4;
- (void)handleEditMessage:(id)a3 completion:(id)a4;
- (void)resolveEditedContentForEditMessage:(id)a3 withCompletion:(id)a4;
- (void)sendEditedMessageItem:(id)a3 originalMessageItem:(id)a4 chat:(id)a5 backwardCompatabilityText:(id)a6;
@end

@implementation IMAssistantEditMessageHandler

- (void)resolveEditedContentForEditMessage:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = [a3 editedContent];
  v7 = [v6 trimmedString];

  v8 = [v7 length];
  v9 = IMLogHandleForCategory();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v10)
    {
      *v13 = 0;
      _os_log_impl(&dword_25479E000, v9, OS_LOG_TYPE_INFO, "Trimmed message content length is nonzero, returning success", v13, 2u);
    }

    v11 = [MEMORY[0x277CD4218] successWithResolvedString:v7];
  }

  else
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v9, OS_LOG_TYPE_INFO, "Trimmed message content length is zero, returning needsValue", buf, 2u);
    }

    v11 = [MEMORY[0x277CD4218] needsValue];
  }

  v12 = v11;
  v5[2](v5, v11);
}

- (void)confirmEditMessage:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = v6;
    _os_log_impl(&dword_25479E000, v8, OS_LOG_TYPE_INFO, "Confirming INEditMessageIntent: %@", &v16, 0xCu);
  }

  v9 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  v10 = [v9 accountDataSource];
  v11 = [v10 hasMessagingAccount];

  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_25479E000, v13, OS_LOG_TYPE_INFO, "Could not send message; no messaging accounts available", &v16, 2u);
    }

    v12 = 10;
  }

  v14 = [objc_alloc(MEMORY[0x277CD3BC8]) initWithCode:v12 userActivity:0];
  v7[2](v7, v14);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleEditMessage:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = IMLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = v5;
    _os_log_impl(&dword_25479E000, v7, OS_LOG_TYPE_INFO, "Handling INEditMessageIntent: %@", buf, 0xCu);
  }

  v8 = [v5 messageIdentifier];
  v9 = v8;
  if (v8)
  {
    v17 = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    v11 = +[IMAssistantMessageQueryHandler IMAssistantIMSPIQueue];
    v15 = v5;
    v16 = v6;
    IMSPIQueryIMMessageItemsWithGUIDsAndQOS();

    v12 = v15;
  }

  else
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v13, OS_LOG_TYPE_INFO, "Intent message identifier is nil", buf, 2u);
    }

    v12 = [objc_alloc(MEMORY[0x277CD3BC8]) initWithCode:4 userActivity:0];
    (*(v6 + 2))(v6, v12);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)sendEditedMessageItem:(id)a3 originalMessageItem:(id)a4 chat:(id)a5 backwardCompatabilityText:(id)a6
{
  v9 = MEMORY[0x277D18D68];
  v20 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v22 = [v9 sharedController];
  v13 = [v22 remoteDaemon];
  v21 = [v11 body];
  v14 = [v21 __im_messagePartIndexes];
  v15 = [v14 firstIndex];
  v16 = [v10 chatIdentifier];
  v17 = [v10 chatStyle];
  v18 = [v10 account];

  v19 = [v18 uniqueID];
  [v13 sendEditedMessage:v12 previousMessage:v11 partIndex:v15 editType:1 toChatIdentifier:v16 style:v17 account:v19 backwardCompatabilityText:v20];
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

@end