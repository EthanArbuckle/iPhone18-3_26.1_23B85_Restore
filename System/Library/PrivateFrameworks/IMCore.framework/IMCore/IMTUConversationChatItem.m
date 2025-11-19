@interface IMTUConversationChatItem
- (BOOL)isFromMe;
- (NSDate)time;
- (NSUUID)tuConversationUUID;
- (TUConversation)tuConversation;
- (id)_initWithItem:(id)a3 conversationInitiator:(id)a4;
- (id)activeCall;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)conversationAVMode;
@end

@implementation IMTUConversationChatItem

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend__item(self, v5, v6);
  v9 = objc_msgSend__initWithItem_conversationInitiator_(v4, v8, v7, self->_conversationInitiator);

  return v9;
}

- (id)_initWithItem:(id)a3 conversationInitiator:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = IMTUConversationChatItem;
  v8 = [(IMChatItem *)&v18 _initWithItem:v6];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 7, a4);
    v12 = objc_msgSend_guid(v6, v10, v11);
    v13 = sub_1A83AC604();

    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v20 = v13;
        v21 = 2112;
        v22 = v6;
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Creating new IMTranscriptChatItem with GUID %@ from IMTUConversationItem %@", buf, 0x16u);
      }
    }

    objc_msgSend__setGUID_(v9, v14, v13);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)activeCall
{
  v4 = objc_msgSend_sharedRegistry(IMChatRegistry, a2, v2);
  v7 = objc_msgSend_tuConversationUUID(self, v5, v6);
  v9 = objc_msgSend_activeCallForConversationUUID_(v4, v8, v7);

  return v9;
}

- (NSUUID)tuConversationUUID
{
  v3 = objc_alloc(MEMORY[0x1E696AFB0]);
  v6 = objc_msgSend__item(self, v4, v5);
  v9 = objc_msgSend_guid(v6, v7, v8);
  v11 = objc_msgSend_initWithUUIDString_(v3, v10, v9);

  return v11;
}

- (TUConversation)tuConversation
{
  v4 = objc_msgSend_sharedRegistry(IMChatRegistry, a2, v2);
  v7 = objc_msgSend_tuConversationUUID(self, v5, v6);
  v9 = objc_msgSend_existingConversationForFaceTimeConversationUUID_(v4, v8, v7);

  return v9;
}

- (BOOL)isFromMe
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_isFromMe(v3, v4, v5);

  return v6;
}

- (NSDate)time
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_time(v3, v4, v5);

  return v6;
}

- (unint64_t)conversationAVMode
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_avMode(v3, v4, v5);

  return v6;
}

@end