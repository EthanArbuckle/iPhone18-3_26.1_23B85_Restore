@interface IMAssistantChatParticipant
- (IMAssistantChatParticipant)initWithIMHandle:(id)handle handleFromContact:(id)contact;
@end

@implementation IMAssistantChatParticipant

- (IMAssistantChatParticipant)initWithIMHandle:(id)handle handleFromContact:(id)contact
{
  handleCopy = handle;
  contactCopy = contact;
  v12.receiver = self;
  v12.super_class = IMAssistantChatParticipant;
  v9 = [(IMAssistantChatParticipant *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_imHandle, handle);
    objc_storeStrong(&v10->_handleFromContact, contact);
  }

  return v10;
}

@end