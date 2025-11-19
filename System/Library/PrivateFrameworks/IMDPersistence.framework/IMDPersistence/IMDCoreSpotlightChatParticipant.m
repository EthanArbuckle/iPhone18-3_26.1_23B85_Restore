@interface IMDCoreSpotlightChatParticipant
- (IMDCoreSpotlightChatParticipant)initWithHandleID:(id)a3 contact:(id)a4 isSender:(BOOL)a5;
@end

@implementation IMDCoreSpotlightChatParticipant

- (IMDCoreSpotlightChatParticipant)initWithHandleID:(id)a3 contact:(id)a4 isSender:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = IMDCoreSpotlightChatParticipant;
  v12 = [(IMDCoreSpotlightChatParticipant *)&v16 init];
  if (v12)
  {
    v13 = objc_msgSend_copy(v8, v10, v11);
    handleID = v12->_handleID;
    v12->_handleID = v13;

    objc_storeStrong(&v12->_contact, a4);
    v12->_isSender = a5;
  }

  return v12;
}

@end