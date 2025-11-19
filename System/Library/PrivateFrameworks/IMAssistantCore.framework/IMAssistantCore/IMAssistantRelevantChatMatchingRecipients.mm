@interface IMAssistantRelevantChatMatchingRecipients
- (IMAssistantRelevantChatMatchingRecipients)initWithChat:(id)a3 resolvedPersons:(id)a4;
@end

@implementation IMAssistantRelevantChatMatchingRecipients

- (IMAssistantRelevantChatMatchingRecipients)initWithChat:(id)a3 resolvedPersons:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = IMAssistantRelevantChatMatchingRecipients;
  v9 = [(IMAssistantRelevantChatMatchingRecipients *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_chat, a3);
    v11 = [v8 copy];
    resolvedPersons = v10->_resolvedPersons;
    v10->_resolvedPersons = v11;
  }

  return v10;
}

@end