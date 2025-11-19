@interface IMDIncomingMessageTranslator
- (IMDIncomingMessageTranslator)initWithChat:(id)a3;
- (id)checkForSentTranslationForMessage:(id)a3;
- (void)beginProcessingMessage:(id)a3;
- (void)finishProcessingMessage:(id)a3 completion:(id)a4;
- (void)processedAllMessagesWithCompletion:(id)a3;
@end

@implementation IMDIncomingMessageTranslator

- (IMDIncomingMessageTranslator)initWithChat:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = IMDIncomingMessageTranslator;
  v6 = [(IMDIncomingMessageTranslator *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_chat, a3);
    v8 = [IMDMessageTranslator shouldTranslateMessagesForChat:v5];
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

- (void)beginProcessingMessage:(id)a3
{
  v4 = [(IMDIncomingMessageTranslator *)self group];

  if (v4)
  {
    v5 = [(IMDIncomingMessageTranslator *)self group];
    dispatch_group_enter(v5);
  }
}

- (void)finishProcessingMessage:(id)a3 completion:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(IMDIncomingMessageTranslator *)self translating])
  {
    v17[0] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v9 = [(IMDIncomingMessageTranslator *)self chat];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_22B4E14A4;
    v15[3] = &unk_2787028B0;
    v15[4] = self;
    v16 = v7;
    [IMDMessageTranslator translateMessageItems:v8 forChat:v9 incoming:1 completion:v15];
  }

  else
  {
    v10 = [(IMDIncomingMessageTranslator *)self checkForSentTranslationForMessage:v6];
    if ([v10 length])
    {
      v11 = [(IMDIncomingMessageTranslator *)self chat];
      [v11 setIncomingTranslatedMessageIdentifier:v10];
    }

    v7[2](v7);
    v12 = [(IMDIncomingMessageTranslator *)self group];

    if (v12)
    {
      v13 = [(IMDIncomingMessageTranslator *)self group];
      dispatch_group_leave(v13);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)processedAllMessagesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IMDIncomingMessageTranslator *)self group];

  if (v5)
  {
    v6 = [(IMDIncomingMessageTranslator *)self group];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B4E16A4;
    block[3] = &unk_2787028D8;
    v8 = v4;
    dispatch_group_notify(v6, MEMORY[0x277D85CD0], block);
  }

  else
  {
    v4[2](v4);
  }
}

- (id)checkForSentTranslationForMessage:(id)a3
{
  v3 = a3;
  if ([v3 partCount])
  {
    v4 = 0;
    while (1)
    {
      v5 = [v3 translationsForMessagePart:v4];
      if ([v5 count])
      {
        break;
      }

      if (++v4 >= [v3 partCount])
      {
        goto LABEL_5;
      }
    }

    v7 = [v5 firstObject];
    v8 = [objc_alloc(MEMORY[0x277D1ACB0]) initWithDictionaryRepresentation:v7];
    v6 = [v8 sourceLanguage];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

  return v6;
}

@end