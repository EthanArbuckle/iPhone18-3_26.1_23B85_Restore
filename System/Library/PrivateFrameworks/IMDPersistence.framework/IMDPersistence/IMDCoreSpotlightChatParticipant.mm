@interface IMDCoreSpotlightChatParticipant
- (IMDCoreSpotlightChatParticipant)initWithHandleID:(id)d contact:(id)contact isSender:(BOOL)sender;
@end

@implementation IMDCoreSpotlightChatParticipant

- (IMDCoreSpotlightChatParticipant)initWithHandleID:(id)d contact:(id)contact isSender:(BOOL)sender
{
  dCopy = d;
  contactCopy = contact;
  v16.receiver = self;
  v16.super_class = IMDCoreSpotlightChatParticipant;
  v12 = [(IMDCoreSpotlightChatParticipant *)&v16 init];
  if (v12)
  {
    v13 = objc_msgSend_copy(dCopy, v10, v11);
    handleID = v12->_handleID;
    v12->_handleID = v13;

    objc_storeStrong(&v12->_contact, contact);
    v12->_isSender = sender;
  }

  return v12;
}

@end