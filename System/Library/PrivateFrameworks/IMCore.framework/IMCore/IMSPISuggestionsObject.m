@interface IMSPISuggestionsObject
- (IMSPISuggestionsObject)initWithChatGuid:(id)a3 displayName:(id)a4 participants:(id)a5;
- (id)description;
@end

@implementation IMSPISuggestionsObject

- (IMSPISuggestionsObject)initWithChatGuid:(id)a3 displayName:(id)a4 participants:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = IMSPISuggestionsObject;
  v12 = [(IMSPISuggestionsObject *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_chatGUID, a3);
    objc_storeStrong(&v13->_displayName, a4);
    objc_storeStrong(&v13->_participants, a5);
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