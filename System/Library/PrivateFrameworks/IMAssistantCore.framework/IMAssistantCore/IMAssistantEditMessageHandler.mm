@interface IMAssistantEditMessageHandler
- (void)chatsForMessageIdentifiers:(id)identifiers completion:(id)completion;
- (void)confirmEditMessage:(id)message completion:(id)completion;
- (void)handleEditMessage:(id)message completion:(id)completion;
- (void)resolveEditedContentForEditMessage:(id)message withCompletion:(id)completion;
- (void)sendEditedMessageItem:(id)item originalMessageItem:(id)messageItem chat:(id)chat backwardCompatabilityText:(id)text;
@end

@implementation IMAssistantEditMessageHandler

- (void)resolveEditedContentForEditMessage:(id)message withCompletion:(id)completion
{
  completionCopy = completion;
  editedContent = [message editedContent];
  trimmedString = [editedContent trimmedString];

  v8 = [trimmedString length];
  v9 = IMLogHandleForCategory();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v10)
    {
      *v13 = 0;
      _os_log_impl(&dword_25479E000, v9, OS_LOG_TYPE_INFO, "Trimmed message content length is nonzero, returning success", v13, 2u);
    }

    needsValue = [MEMORY[0x277CD4218] successWithResolvedString:trimmedString];
  }

  else
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v9, OS_LOG_TYPE_INFO, "Trimmed message content length is zero, returning needsValue", buf, 2u);
    }

    needsValue = [MEMORY[0x277CD4218] needsValue];
  }

  v12 = needsValue;
  completionCopy[2](completionCopy, needsValue);
}

- (void)confirmEditMessage:(id)message completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  completionCopy = completion;
  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = messageCopy;
    _os_log_impl(&dword_25479E000, v8, OS_LOG_TYPE_INFO, "Confirming INEditMessageIntent: %@", &v16, 0xCu);
  }

  messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  accountDataSource = [messageHandlerDataSource accountDataSource];
  hasMessagingAccount = [accountDataSource hasMessagingAccount];

  if (hasMessagingAccount)
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
  completionCopy[2](completionCopy, v14);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleEditMessage:(id)message completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  completionCopy = completion;
  v7 = IMLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = messageCopy;
    _os_log_impl(&dword_25479E000, v7, OS_LOG_TYPE_INFO, "Handling INEditMessageIntent: %@", buf, 0xCu);
  }

  messageIdentifier = [messageCopy messageIdentifier];
  v9 = messageIdentifier;
  if (messageIdentifier)
  {
    v17 = messageIdentifier;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    v11 = +[IMAssistantMessageQueryHandler IMAssistantIMSPIQueue];
    v15 = messageCopy;
    v16 = completionCopy;
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
    (*(completionCopy + 2))(completionCopy, v12);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)sendEditedMessageItem:(id)item originalMessageItem:(id)messageItem chat:(id)chat backwardCompatabilityText:(id)text
{
  v9 = MEMORY[0x277D18D68];
  textCopy = text;
  chatCopy = chat;
  messageItemCopy = messageItem;
  itemCopy = item;
  sharedController = [v9 sharedController];
  remoteDaemon = [sharedController remoteDaemon];
  body = [messageItemCopy body];
  __im_messagePartIndexes = [body __im_messagePartIndexes];
  firstIndex = [__im_messagePartIndexes firstIndex];
  chatIdentifier = [chatCopy chatIdentifier];
  chatStyle = [chatCopy chatStyle];
  account = [chatCopy account];

  uniqueID = [account uniqueID];
  [remoteDaemon sendEditedMessage:itemCopy previousMessage:messageItemCopy partIndex:firstIndex editType:1 toChatIdentifier:chatIdentifier style:chatStyle account:uniqueID backwardCompatabilityText:textCopy];
}

- (void)chatsForMessageIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  v7 = +[IMAssistantMessageQueryHandler IMAssistantIMSPIQueue];
  v10 = completionCopy;
  v8 = completionCopy;
  v9 = identifiersCopy;
  IMSPIQueryMessagesWithGUIDsAndQOS();
}

@end