@interface IMDIncomingMessageTranslator
- (IMDIncomingMessageTranslator)initWithChat:(id)chat;
- (id)checkForSentTranslationForMessage:(id)message;
- (void)beginProcessingMessage:(id)message;
- (void)finishProcessingMessage:(id)message completion:(id)completion;
- (void)processedAllMessagesWithCompletion:(id)completion;
@end

@implementation IMDIncomingMessageTranslator

- (IMDIncomingMessageTranslator)initWithChat:(id)chat
{
  chatCopy = chat;
  v12.receiver = self;
  v12.super_class = IMDIncomingMessageTranslator;
  v6 = [(IMDIncomingMessageTranslator *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_chat, chat);
    v8 = [IMDMessageTranslator shouldTranslateMessagesForChat:chatCopy];
    v7->_translating = v8;
    if (v8)
    {
      v9 = dispatch_group_create();
      group = v7->_group;
      v7->_group = v9;
    }
  }

  return v7;
}

- (void)beginProcessingMessage:(id)message
{
  group = [(IMDIncomingMessageTranslator *)self group];

  if (group)
  {
    group2 = [(IMDIncomingMessageTranslator *)self group];
    dispatch_group_enter(group2);
  }
}

- (void)finishProcessingMessage:(id)message completion:(id)completion
{
  v17[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  completionCopy = completion;
  if ([(IMDIncomingMessageTranslator *)self translating])
  {
    v17[0] = messageCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    chat = [(IMDIncomingMessageTranslator *)self chat];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_22B4E14A4;
    v15[3] = &unk_2787028B0;
    v15[4] = self;
    v16 = completionCopy;
    [IMDMessageTranslator translateMessageItems:v8 forChat:chat incoming:1 completion:v15];
  }

  else
  {
    v10 = [(IMDIncomingMessageTranslator *)self checkForSentTranslationForMessage:messageCopy];
    if ([v10 length])
    {
      chat2 = [(IMDIncomingMessageTranslator *)self chat];
      [chat2 setIncomingTranslatedMessageIdentifier:v10];
    }

    completionCopy[2](completionCopy);
    group = [(IMDIncomingMessageTranslator *)self group];

    if (group)
    {
      group2 = [(IMDIncomingMessageTranslator *)self group];
      dispatch_group_leave(group2);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)processedAllMessagesWithCompletion:(id)completion
{
  completionCopy = completion;
  group = [(IMDIncomingMessageTranslator *)self group];

  if (group)
  {
    group2 = [(IMDIncomingMessageTranslator *)self group];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B4E16A4;
    block[3] = &unk_2787028D8;
    v8 = completionCopy;
    dispatch_group_notify(group2, MEMORY[0x277D85CD0], block);
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

- (id)checkForSentTranslationForMessage:(id)message
{
  messageCopy = message;
  if ([messageCopy partCount])
  {
    v4 = 0;
    while (1)
    {
      v5 = [messageCopy translationsForMessagePart:v4];
      if ([v5 count])
      {
        break;
      }

      if (++v4 >= [messageCopy partCount])
      {
        goto LABEL_5;
      }
    }

    firstObject = [v5 firstObject];
    v8 = [objc_alloc(MEMORY[0x277D1ACB0]) initWithDictionaryRepresentation:firstObject];
    sourceLanguage = [v8 sourceLanguage];
  }

  else
  {
LABEL_5:
    sourceLanguage = 0;
  }

  return sourceLanguage;
}

@end