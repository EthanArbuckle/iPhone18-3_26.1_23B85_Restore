@interface IMAssistantChatParticipant
- (IMAssistantChatParticipant)initWithIMHandle:(id)a3 handleFromContact:(id)a4;
@end

@implementation IMAssistantChatParticipant

- (IMAssistantChatParticipant)initWithIMHandle:(id)a3 handleFromContact:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IMAssistantChatParticipant;
  v9 = [(IMAssistantChatParticipant *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_imHandle, a3);
    objc_storeStrong(&v10->_handleFromContact, a4);
  }

  return v10;
}

@end