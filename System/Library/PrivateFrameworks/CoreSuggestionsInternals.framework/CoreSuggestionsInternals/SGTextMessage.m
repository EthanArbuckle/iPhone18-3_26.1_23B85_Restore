@interface SGTextMessage
+ (BOOL)isSent:(id)a3;
+ (id)_nicknameCustomKey;
+ (id)_photoPathCustomKey;
- (SGTextMessage)initWithMessageDictionary:(id)a3;
- (SGTextMessage)initWithMessagesContentEvent:(id)a3 contentProtection:(id)a4;
- (SGTextMessage)initWithSearchableItem:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)spotlightBundleIdentifier;
- (id)spotlightDomainIdentifier;
@end

@implementation SGTextMessage

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = SGTextMessage;
  v4 = [(SGMessage *)&v6 copyWithZone:a3];
  [v4 setSender:self->_sender];
  [v4 setRecipients:self->_recipients];
  [v4 setConversationIdentifier:self->_conversationIdentifier];
  *(v4 + 168) = self->_senderIsAccountOwner;
  objc_storeStrong(v4 + 27, self->_attachmentFilename);
  return v4;
}

- (id)spotlightDomainIdentifier
{
  v17 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = SGTextMessage;
  v4 = [(SGMessage *)&v14 spotlightDomainIdentifier];
  if (v4 || ([(SGTextMessage *)self conversationIdentifier], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
  }

  else
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v13 = [(SGMessage *)self spotlightUniqueIdentifier];
      *buf = 138412290;
      v16 = v13;
      _os_log_fault_impl(&dword_231E60000, v9, OS_LOG_TYPE_FAULT, "Cannot get domain identifier for text message %@", buf, 0xCu);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      abort();
    }

    v10 = objc_alloc(MEMORY[0x277CCACA8]);
    v11 = [(SGMessage *)self uniqueIdentifier];
    v5 = [v10 initWithFormat:@"SGMissingDomainIdentifier.uniqueIdentifierFallback.%@", v11];

    if (!v5)
    {
      v12 = [MEMORY[0x277CCA890] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"SGTextMessage.m" lineNumber:247 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
    }
  }

  v6 = v5;

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)spotlightBundleIdentifier
{
  v7.receiver = self;
  v7.super_class = SGTextMessage;
  v2 = [(SGMessage *)&v7 spotlightBundleIdentifier];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = *MEMORY[0x277D021D0];
  }

  v5 = v4;

  return v4;
}

- (SGTextMessage)initWithMessageDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SGTextMessage;
  v5 = [(SGMessage *)&v12 initWithMessageDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"conversationIdentifier"];
    conversationIdentifier = v5->_conversationIdentifier;
    v5->_conversationIdentifier = v6;

    v8 = [v4 objectForKeyedSubscript:@"senderIsAccountOwner"];
    v5->_senderIsAccountOwner = [v8 BOOLValue];

    v9 = [v4 objectForKeyedSubscript:@"sender"];
    sender = v5->_sender;
    v5->_sender = v9;
  }

  return v5;
}

- (SGTextMessage)initWithMessagesContentEvent:(id)a3 contentProtection:(id)a4
{
  v39[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v38.receiver = self;
  v38.super_class = SGTextMessage;
  v7 = [(SGMessage *)&v38 initWithMessagesContentEvent:v6 contentProtection:a4];
  if (v7)
  {
    v8 = [v6 content];
    [(SGMessage *)v7 setTextContent:v8];

    v9 = [v6 fromHandle];
    v10 = [v9 name];
    v11 = [v9 handle];
    v12 = [v9 name];
    v13 = [v11 containsString:v12];

    if (v13)
    {

      v10 = 0;
    }

    v14 = objc_alloc(MEMORY[0x277CC3450]);
    v15 = [v9 handle];
    v39[0] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
    v17 = [v9 handleType];
    v18 = [v14 initWithDisplayName:v10 handles:v16 handleIdentifier:v17];

    sender = v7->_sender;
    v7->_sender = v18;
    v20 = v18;

    v7->_senderIsAccountOwner = 0;
    [(SGMessage *)v7 setIsSent:0];
    v21 = [v6 accountHandles];
    v22 = [v9 handle];
    LODWORD(v17) = [v21 containsObject:v22];

    if (v17)
    {
      v7->_senderIsAccountOwner = 1;
      [(SGMessage *)v7 setIsSent:1];
    }

    v23 = [v9 handleType];
    v24 = [v23 isEqual:*MEMORY[0x277CBD038]];

    if (v24)
    {
      v25 = [v9 handle];
      v26 = [v25 hasPrefix:@"urn:biz:"];

      if (v26)
      {
        v7->_senderIsBusinessChat = 1;
      }
    }

    v27 = [v6 accountIdentifier];
    conversationIdentifier = v7->_conversationIdentifier;
    v7->_conversationIdentifier = v27;

    v29 = [v6 attachment];
    v30 = [v29 filename];
    attachmentFilename = v7->_attachmentFilename;
    v7->_attachmentFilename = v30;

    v32 = [v6 suggestedPhotoPath];
    photoPath = v7->_photoPath;
    v7->_photoPath = v32;

    v34 = [v6 suggestedNickname];
    nickname = v7->_nickname;
    v7->_nickname = v34;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v7;
}

- (SGTextMessage)initWithSearchableItem:(id)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 domainIdentifier];

  if (!v6)
  {
    v54 = [MEMORY[0x277CCA890] currentHandler];
    [v54 handleFailureInMethod:a2 object:self file:@"SGTextMessage.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"searchableItem.domainIdentifier"}];
  }

  v64.receiver = self;
  v64.super_class = SGTextMessage;
  v7 = [(SGMessage *)&v64 initWithSearchableItem:v5];
  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [v5 attributeSet];
    v10 = [v9 authors];
    if ([v10 count])
    {
      v56 = v10;
      v11 = [v10 objectAtIndexedSubscript:0];
      v12 = MEMORY[0x277D41E30];
      v13 = [v11 handles];
      v14 = [v12 sanitizeHandles:v13];

      v15 = [v11 displayName];
      v57 = v8;
      v58 = v5;
      if (v15)
      {
        v16 = v15;
        v17 = v9;
        v18 = [v11 displayName];
        v19 = [v14 containsObject:v18];

        if (v19)
        {
          v20 = sgLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_231E60000, v20, OS_LOG_TYPE_DEBUG, "Suppressing non-meaningful text message displayName.", buf, 2u);
          }

          v21 = objc_alloc(MEMORY[0x277CC3450]);
          v22 = [v11 handleIdentifier];
          v23 = [v21 initWithDisplayName:0 handles:v14 handleIdentifier:v22];

          v11 = v23;
        }
      }

      else
      {
        v17 = v9;
      }

      v24 = v7;
      [(SGTextMessage *)v7 setSender:v11];
      v55 = v11;
      v25 = [v11 handleIdentifier];
      v26 = [v25 isEqual:*MEMORY[0x277CBD038]];

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v27 = v14;
      v28 = [v27 countByEnumeratingWithState:&v59 objects:v65 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v60;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v60 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v59 + 1) + 8 * i);
            v33 = [v17 accountHandles];
            v34 = [v33 containsObject:v32];

            if (v34)
            {
              v24->_senderIsAccountOwner = 1;
              [(SGMessage *)v24 setIsSent:1];
            }

            if (v26 && [v32 hasPrefix:@"urn:biz:"])
            {
              v24->_senderIsBusinessChat = 1;
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v59 objects:v65 count:16];
        }

        while (v29);
      }

      v7 = v24;
      v8 = v57;
      v5 = v58;
      v9 = v17;
      v10 = v56;
    }

    v35 = [v9 primaryRecipients];
    [(SGTextMessage *)v7 setRecipients:v35];

    v36 = [v5 domainIdentifier];
    v37 = [v36 isEqualToString:@"attachmentDomain"];

    if (v37)
    {
      v38 = [v9 accountIdentifier];
      [(SGTextMessage *)v7 setConversationIdentifier:v38];

      v39 = [v9 contentURL];
      v40 = [v39 lastPathComponent];
      attachmentFilename = v7->_attachmentFilename;
      v7->_attachmentFilename = v40;
    }

    else
    {
      v39 = [v5 domainIdentifier];
      [(SGTextMessage *)v7 setConversationIdentifier:v39];
    }

    v42 = [objc_opt_class() _photoPathCustomKey];
    if (v42)
    {
      v43 = [v5 attributeSet];
      v44 = [v43 valueForCustomKey:v42];

      if (v44)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v44 length])
          {
            [(SGTextMessage *)v7 setPhotoPath:v44];
          }
        }
      }
    }

    v45 = [objc_opt_class() _nicknameCustomKey];
    if (v45)
    {
      v46 = [v5 attributeSet];
      v47 = [v46 valueForCustomKey:v45];

      if (v47)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v47 length])
          {
            [(SGTextMessage *)v7 setNickname:v47];
          }
        }
      }
    }

    v48 = [v5 attributeSet];
    v49 = [v48 isPotentialEventMessage];
    v50 = v49;
    if (!v49)
    {
      v49 = MEMORY[0x277CBEC28];
    }

    v7->_isPotentialEventMessage = [v49 BOOLValue];

    if (objc_opt_respondsToSelector())
    {
      v51 = [v9 messageType];
      v7->_tapBack = [v51 isEqualToString:@"tpbck"];
    }

    else
    {
      v7->_tapBack = 0;
    }

    objc_autoreleasePoolPop(v8);
  }

  v52 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (BOOL)isSent:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [a3 attributeSet];
  v4 = [v3 authors];
  if ([v4 count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [v4 firstObject];
    v6 = [v5 handles];

    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v3 accountHandles];
          LOBYTE(v10) = [v11 containsObject:v10];

          if (v10)
          {
            LOBYTE(v7) = 1;
            goto LABEL_12;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)_nicknameCustomKey
{
  if (_nicknameCustomKey_onceToken != -1)
  {
    dispatch_once(&_nicknameCustomKey_onceToken, &__block_literal_global_39);
  }

  v3 = _nicknameCustomKey__nicknameCustomKey;

  return v3;
}

uint64_t __35__SGTextMessage__nicknameCustomKey__block_invoke()
{
  _nicknameCustomKey__nicknameCustomKey = [objc_alloc(MEMORY[0x277CC33B0]) initWithKeyName:@"com_apple_mobilesms_suggested_contact_name" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return MEMORY[0x2821F96F8]();
}

+ (id)_photoPathCustomKey
{
  if (_photoPathCustomKey_onceToken != -1)
  {
    dispatch_once(&_photoPathCustomKey_onceToken, &__block_literal_global);
  }

  v3 = _photoPathCustomKey__photoPathCustomKey;

  return v3;
}

uint64_t __36__SGTextMessage__photoPathCustomKey__block_invoke()
{
  _photoPathCustomKey__photoPathCustomKey = [objc_alloc(MEMORY[0x277CC33B0]) initWithKeyName:@"com_apple_mobilesms_suggested_contact_photo" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return MEMORY[0x2821F96F8]();
}

@end