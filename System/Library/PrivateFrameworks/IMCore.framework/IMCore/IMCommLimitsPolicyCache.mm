@interface IMCommLimitsPolicyCache
- (BOOL)isFetchingCommLimitsPolicyForChat:(id)a3;
- (IMCommLimitsPolicyCache)init;
- (id)chatForConversationContext:(id)a3;
- (id)chatForParticipantIDsHash:(id)a3;
- (id)contextForParticipantIDsHash:(id)a3;
- (id)conversationContextForChat:(id)a3;
- (void)addSentinelContextForParticipantIDsHash:(id)a3;
- (void)addTrackingForChat:(id)a3 participantIDsHash:(id)a4;
- (void)addTrackingForConversationContext:(id)a3 forParticipantIDsHash:(id)a4;
- (void)removeTrackingForChat:(id)a3;
@end

@implementation IMCommLimitsPolicyCache

- (IMCommLimitsPolicyCache)init
{
  v12.receiver = self;
  v12.super_class = IMCommLimitsPolicyCache;
  v2 = [(IMCommLimitsPolicyCache *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    participantIDsHashToConversationContext = v2->_participantIDsHashToConversationContext;
    v2->_participantIDsHashToConversationContext = v3;

    v5 = objc_opt_new();
    conversationContextToParticipantIDsHash = v2->_conversationContextToParticipantIDsHash;
    v2->_conversationContextToParticipantIDsHash = v5;

    v7 = objc_opt_new();
    participantIDsHashToChatIdentifier = v2->_participantIDsHashToChatIdentifier;
    v2->_participantIDsHashToChatIdentifier = v7;

    v9 = objc_opt_new();
    chatIdentifierToParticipantIDsHash = v2->_chatIdentifierToParticipantIDsHash;
    v2->_chatIdentifierToParticipantIDsHash = v9;
  }

  return v2;
}

- (void)addTrackingForChat:(id)a3 participantIDsHash:(id)a4
{
  v17 = a4;
  v10 = objc_msgSend_chatIdentifier(a3, v6, v7);
  if (v17 && v10)
  {
    v11 = objc_msgSend_participantIDsHashToChatIdentifier(self, v8, v9);
    objc_msgSend_setObject_forKeyedSubscript_(v11, v12, v10, v17);

    v15 = objc_msgSend_chatIdentifierToParticipantIDsHash(self, v13, v14);
    objc_msgSend_setObject_forKeyedSubscript_(v15, v16, v17, v10);
  }
}

- (void)removeTrackingForChat:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = objc_msgSend_chatIdentifier(v4, v5, v6);
  if (v9)
  {
    v10 = objc_msgSend_chatIdentifierToParticipantIDsHash(self, v7, v8);
    v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, v9);

    if (v12)
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v37 = 138412546;
          v38 = v4;
          v39 = 2112;
          v40 = v12;
          _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Participants changed for chat %@. Invalidating cached Screen Time policy for participants group IDs hash: %@", &v37, 0x16u);
        }
      }

      v16 = objc_msgSend_participantIDsHashToConversationContext(self, v13, v14);
      v18 = objc_msgSend_objectForKeyedSubscript_(v16, v17, v12);

      if (v18)
      {
        v21 = objc_msgSend_valueWithPointer_(MEMORY[0x1E696B098], v19, v18);
        v24 = objc_msgSend_conversationContextToParticipantIDsHash(self, v22, v23);
        objc_msgSend_setObject_forKeyedSubscript_(v24, v25, 0, v21);
      }

      v26 = objc_msgSend_chatIdentifierToParticipantIDsHash(self, v19, v20);
      objc_msgSend_setObject_forKeyedSubscript_(v26, v27, 0, v9);

      v30 = objc_msgSend_participantIDsHashToChatIdentifier(self, v28, v29);
      objc_msgSend_setObject_forKeyedSubscript_(v30, v31, 0, v12);

      v34 = objc_msgSend_participantIDsHashToConversationContext(self, v32, v33);
      objc_msgSend_setObject_forKeyedSubscript_(v34, v35, 0, v12);
    }
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (BOOL)isFetchingCommLimitsPolicyForChat:(id)a3
{
  v6 = objc_msgSend_chatIdentifier(a3, a2, a3);
  if (v6 && (objc_msgSend_chatIdentifierToParticipantIDsHash(self, v4, v5), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v7, v8, v6), v9 = objc_claimAutoreleasedReturnValue(), v7, v9))
  {
    v12 = objc_msgSend_participantIDsHashToConversationContext(self, v10, v11);
    v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, v9);

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)chatForParticipantIDsHash:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v7 = objc_msgSend_participantIDsHashToChatIdentifier(self, v5, v6);
    v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, v4);

    if (v9)
    {
      v12 = objc_msgSend_sharedRegistry(IMChatRegistry, v10, v11);
      v14 = objc_msgSend_existingChatWithChatIdentifier_(v12, v13, v9);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)chatForConversationContext:(id)a3
{
  if (a3)
  {
    v4 = objc_msgSend_valueWithPointer_(MEMORY[0x1E696B098], a2, a3);
    v7 = objc_msgSend_conversationContextToParticipantIDsHash(self, v5, v6);
    v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, v4);

    v11 = objc_msgSend_chatForParticipantIDsHash_(self, v10, v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)conversationContextForChat:(id)a3
{
  v6 = objc_msgSend_chatIdentifier(a3, a2, a3);
  if (v6)
  {
    v7 = objc_msgSend_chatIdentifierToParticipantIDsHash(self, v4, v5);
    v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, v6);

    if (v9)
    {
      v12 = objc_msgSend_participantIDsHashToConversationContext(self, v10, v11);
      v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, v9);

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_6:

        goto LABEL_8;
      }
    }

    v14 = 0;
    goto LABEL_6;
  }

  v14 = 0;
LABEL_8:

  return v14;
}

- (void)addTrackingForConversationContext:(id)a3 forParticipantIDsHash:(id)a4
{
  if (a3 && a4)
  {
    v6 = a4;
    v7 = a3;
    v10 = objc_msgSend_participantIDsHashToConversationContext(self, v8, v9);
    objc_msgSend_setObject_forKeyedSubscript_(v10, v11, v7, v6);

    v17 = objc_msgSend_valueWithPointer_(MEMORY[0x1E696B098], v12, v7);

    v15 = objc_msgSend_conversationContextToParticipantIDsHash(self, v13, v14);
    objc_msgSend_setObject_forKeyedSubscript_(v15, v16, v6, v17);
  }
}

- (void)addSentinelContextForParticipantIDsHash:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E695DFB0];
    v5 = a3;
    v12 = objc_msgSend_null(v4, v6, v7);
    v10 = objc_msgSend_participantIDsHashToConversationContext(self, v8, v9);
    objc_msgSend_setObject_forKeyedSubscript_(v10, v11, v12, v5);
  }
}

- (id)contextForParticipantIDsHash:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v7 = objc_msgSend_participantIDsHashToConversationContext(self, v5, v6);
    v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, v4);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end