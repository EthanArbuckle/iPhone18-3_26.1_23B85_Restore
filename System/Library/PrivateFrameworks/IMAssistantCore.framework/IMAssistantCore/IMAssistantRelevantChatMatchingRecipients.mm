@interface IMAssistantRelevantChatMatchingRecipients
- (IMAssistantRelevantChatMatchingRecipients)initWithChat:(id)chat resolvedPersons:(id)persons;
@end

@implementation IMAssistantRelevantChatMatchingRecipients

- (IMAssistantRelevantChatMatchingRecipients)initWithChat:(id)chat resolvedPersons:(id)persons
{
  chatCopy = chat;
  personsCopy = persons;
  v14.receiver = self;
  v14.super_class = IMAssistantRelevantChatMatchingRecipients;
  v9 = [(IMAssistantRelevantChatMatchingRecipients *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_chat, chat);
    v11 = [personsCopy copy];
    resolvedPersons = v10->_resolvedPersons;
    v10->_resolvedPersons = v11;
  }

  return v10;
}

@end