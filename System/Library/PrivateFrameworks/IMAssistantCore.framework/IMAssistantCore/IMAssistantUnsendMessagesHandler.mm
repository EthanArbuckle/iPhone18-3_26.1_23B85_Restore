@interface IMAssistantUnsendMessagesHandler
+ (id)makeRetractedMessageItem:(id)item;
- (void)chatsForMessageIdentifiers:(id)identifiers completion:(id)completion;
- (void)handleUnsendMessages:(id)messages completion:(id)completion;
- (void)retractPartIndex:(int64_t)index fromMessageItem:(id)item chat:(id)chat backwardCompatabilityText:(id)text;
@end

@implementation IMAssistantUnsendMessagesHandler

- (void)handleUnsendMessages:(id)messages completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  completionCopy = completion;
  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v20 = messagesCopy;
    _os_log_impl(&dword_25479E000, v8, OS_LOG_TYPE_INFO, "Handling INUnsendMessagesIntent: %@", buf, 0xCu);
  }

  messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  accountDataSource = [messageHandlerDataSource accountDataSource];
  hasMessagingAccount = [accountDataSource hasMessagingAccount];

  if (hasMessagingAccount)
  {
    messageIdentifiers = [messagesCopy messageIdentifiers];
    v13 = +[IMAssistantMessageQueryHandler IMAssistantIMSPIQueue];
    v17 = messagesCopy;
    v18 = completionCopy;
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
    (*(completionCopy + 2))(completionCopy, v14);
  }

  v16 = *MEMORY[0x277D85DE8];
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

+ (id)makeRetractedMessageItem:(id)item
{
  itemCopy = item;
  body = [itemCopy body];
  if (!body)
  {
    plainBody = [itemCopy plainBody];
    v6 = plainBody;
    v7 = &stru_286693278;
    if (plainBody)
    {
      v7 = plainBody;
    }

    v8 = v7;

    body = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v8];
  }

  v9 = [body __im_messageTextByRemovingMessagePartIndex:0];
  v10 = MEMORY[0x277D1AA70];
  fileTransferGUIDs = [itemCopy fileTransferGUIDs];
  v12 = [v10 newMessageItemFrom:itemCopy withText:v9 deleteSubject:1 withFileTransferGUIDs:fileTransferGUIDs];

  __im_dateWithCurrentServerTime = [MEMORY[0x277CBEAA8] __im_dateWithCurrentServerTime];
  [v12 setDateEdited:__im_dateWithCurrentServerTime];

  [v12 addRetractedPartIndex:0];

  return v12;
}

- (void)retractPartIndex:(int64_t)index fromMessageItem:(id)item chat:(id)chat backwardCompatabilityText:(id)text
{
  textCopy = text;
  chatCopy = chat;
  itemCopy = item;
  account = [chatCopy account];
  v12 = IMCopyGUIDForChatOnAccount();

  IMComponentsFromChatGUID();
  v13 = 0;
  v14 = [IMAssistantUnsendMessagesHandler makeRetractedMessageItem:itemCopy];
  mEMORY[0x277D18D68] = [MEMORY[0x277D18D68] sharedController];
  remoteDaemon = [mEMORY[0x277D18D68] remoteDaemon];
  chatStyle = [chatCopy chatStyle];
  account2 = [chatCopy account];

  uniqueID = [account2 uniqueID];
  [remoteDaemon sendEditedMessage:v14 previousMessage:itemCopy partIndex:index editType:2 toChatIdentifier:v13 style:chatStyle account:uniqueID backwardCompatabilityText:textCopy];
}

@end