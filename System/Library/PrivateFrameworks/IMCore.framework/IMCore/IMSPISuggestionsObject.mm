@interface IMSPISuggestionsObject
- (IMSPISuggestionsObject)initWithChatGuid:(id)guid displayName:(id)name participants:(id)participants;
- (id)description;
@end

@implementation IMSPISuggestionsObject

- (IMSPISuggestionsObject)initWithChatGuid:(id)guid displayName:(id)name participants:(id)participants
{
  guidCopy = guid;
  nameCopy = name;
  participantsCopy = participants;
  v15.receiver = self;
  v15.super_class = IMSPISuggestionsObject;
  v12 = [(IMSPISuggestionsObject *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_chatGUID, guid);
    objc_storeStrong(&v13->_displayName, name);
    objc_storeStrong(&v13->_participants, participants);
  }

  return v13;
}

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_chatGUID(self, a2, v2);
  v8 = objc_msgSend_displayName(self, v6, v7);
  v11 = objc_msgSend_participants(self, v9, v10);
  v13 = objc_msgSend_stringWithFormat_(v4, v12, @"IMSPISuggestionsObject: %p [Chat guid: %@ DisplayName: %@ Participants: %@]", self, v5, v8, v11);

  return v13;
}

@end