@interface SGTextMessage
+ (BOOL)isSent:(id)sent;
+ (id)_nicknameCustomKey;
+ (id)_photoPathCustomKey;
- (SGTextMessage)initWithMessageDictionary:(id)dictionary;
- (SGTextMessage)initWithMessagesContentEvent:(id)event contentProtection:(id)protection;
- (SGTextMessage)initWithSearchableItem:(id)item;
- (id)copyWithZone:(_NSZone *)zone;
- (id)spotlightBundleIdentifier;
- (id)spotlightDomainIdentifier;
@end

@implementation SGTextMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = SGTextMessage;
  v4 = [(SGMessage *)&v6 copyWithZone:zone];
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
  spotlightDomainIdentifier = [(SGMessage *)&v14 spotlightDomainIdentifier];
  if (spotlightDomainIdentifier || ([(SGTextMessage *)self conversationIdentifier], (spotlightDomainIdentifier = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = spotlightDomainIdentifier;
  }

  else
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      spotlightUniqueIdentifier = [(SGMessage *)self spotlightUniqueIdentifier];
      *buf = 138412290;
      v16 = spotlightUniqueIdentifier;
      _os_log_fault_impl(&dword_231E60000, v9, OS_LOG_TYPE_FAULT, "Cannot get domain identifier for text message %@", buf, 0xCu);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      abort();
    }

    v10 = objc_alloc(MEMORY[0x277CCACA8]);
    uniqueIdentifier = [(SGMessage *)self uniqueIdentifier];
    v5 = [v10 initWithFormat:@"SGMissingDomainIdentifier.uniqueIdentifierFallback.%@", uniqueIdentifier];

    if (!v5)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SGTextMessage.m" lineNumber:247 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
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
  spotlightBundleIdentifier = [(SGMessage *)&v7 spotlightBundleIdentifier];
  v3 = spotlightBundleIdentifier;
  if (spotlightBundleIdentifier)
  {
    v4 = spotlightBundleIdentifier;
  }

  else
  {
    v4 = *MEMORY[0x277D021D0];
  }

  v5 = v4;

  return v4;
}

- (SGTextMessage)initWithMessageDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SGTextMessage;
  v5 = [(SGMessage *)&v12 initWithMessageDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"conversationIdentifier"];
    conversationIdentifier = v5->_conversationIdentifier;
    v5->_conversationIdentifier = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"senderIsAccountOwner"];
    v5->_senderIsAccountOwner = [v8 BOOLValue];

    v9 = [dictionaryCopy objectForKeyedSubscript:@"sender"];
    sender = v5->_sender;
    v5->_sender = v9;
  }

  return v5;
}

- (SGTextMessage)initWithMessagesContentEvent:(id)event contentProtection:(id)protection
{
  v39[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v38.receiver = self;
  v38.super_class = SGTextMessage;
  v7 = [(SGMessage *)&v38 initWithMessagesContentEvent:eventCopy contentProtection:protection];
  if (v7)
  {
    content = [eventCopy content];
    [(SGMessage *)v7 setTextContent:content];

    fromHandle = [eventCopy fromHandle];
    name = [fromHandle name];
    handle = [fromHandle handle];
    name2 = [fromHandle name];
    v13 = [handle containsString:name2];

    if (v13)
    {

      name = 0;
    }

    v14 = objc_alloc(MEMORY[0x277CC3450]);
    handle2 = [fromHandle handle];
    v39[0] = handle2;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
    handleType = [fromHandle handleType];
    v18 = [v14 initWithDisplayName:name handles:v16 handleIdentifier:handleType];

    sender = v7->_sender;
    v7->_sender = v18;
    v20 = v18;

    v7->_senderIsAccountOwner = 0;
    [(SGMessage *)v7 setIsSent:0];
    accountHandles = [eventCopy accountHandles];
    handle3 = [fromHandle handle];
    LODWORD(handleType) = [accountHandles containsObject:handle3];

    if (handleType)
    {
      v7->_senderIsAccountOwner = 1;
      [(SGMessage *)v7 setIsSent:1];
    }

    handleType2 = [fromHandle handleType];
    v24 = [handleType2 isEqual:*MEMORY[0x277CBD038]];

    if (v24)
    {
      handle4 = [fromHandle handle];
      v26 = [handle4 hasPrefix:@"urn:biz:"];

      if (v26)
      {
        v7->_senderIsBusinessChat = 1;
      }
    }

    accountIdentifier = [eventCopy accountIdentifier];
    conversationIdentifier = v7->_conversationIdentifier;
    v7->_conversationIdentifier = accountIdentifier;

    attachment = [eventCopy attachment];
    filename = [attachment filename];
    attachmentFilename = v7->_attachmentFilename;
    v7->_attachmentFilename = filename;

    suggestedPhotoPath = [eventCopy suggestedPhotoPath];
    photoPath = v7->_photoPath;
    v7->_photoPath = suggestedPhotoPath;

    suggestedNickname = [eventCopy suggestedNickname];
    nickname = v7->_nickname;
    v7->_nickname = suggestedNickname;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v7;
}

- (SGTextMessage)initWithSearchableItem:(id)item
{
  v66 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  domainIdentifier = [itemCopy domainIdentifier];

  if (!domainIdentifier)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGTextMessage.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"searchableItem.domainIdentifier"}];
  }

  v64.receiver = self;
  v64.super_class = SGTextMessage;
  v7 = [(SGMessage *)&v64 initWithSearchableItem:itemCopy];
  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    attributeSet = [itemCopy attributeSet];
    authors = [attributeSet authors];
    if ([authors count])
    {
      v56 = authors;
      v11 = [authors objectAtIndexedSubscript:0];
      v12 = MEMORY[0x277D41E30];
      handles = [v11 handles];
      v14 = [v12 sanitizeHandles:handles];

      displayName = [v11 displayName];
      v57 = v8;
      v58 = itemCopy;
      if (displayName)
      {
        v16 = displayName;
        v17 = attributeSet;
        displayName2 = [v11 displayName];
        v19 = [v14 containsObject:displayName2];

        if (v19)
        {
          v20 = sgLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_231E60000, v20, OS_LOG_TYPE_DEBUG, "Suppressing non-meaningful text message displayName.", buf, 2u);
          }

          v21 = objc_alloc(MEMORY[0x277CC3450]);
          handleIdentifier = [v11 handleIdentifier];
          v23 = [v21 initWithDisplayName:0 handles:v14 handleIdentifier:handleIdentifier];

          v11 = v23;
        }
      }

      else
      {
        v17 = attributeSet;
      }

      v24 = v7;
      [(SGTextMessage *)v7 setSender:v11];
      v55 = v11;
      handleIdentifier2 = [v11 handleIdentifier];
      v26 = [handleIdentifier2 isEqual:*MEMORY[0x277CBD038]];

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
            accountHandles = [v17 accountHandles];
            v34 = [accountHandles containsObject:v32];

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
      itemCopy = v58;
      attributeSet = v17;
      authors = v56;
    }

    primaryRecipients = [attributeSet primaryRecipients];
    [(SGTextMessage *)v7 setRecipients:primaryRecipients];

    domainIdentifier2 = [itemCopy domainIdentifier];
    v37 = [domainIdentifier2 isEqualToString:@"attachmentDomain"];

    if (v37)
    {
      accountIdentifier = [attributeSet accountIdentifier];
      [(SGTextMessage *)v7 setConversationIdentifier:accountIdentifier];

      contentURL = [attributeSet contentURL];
      lastPathComponent = [contentURL lastPathComponent];
      attachmentFilename = v7->_attachmentFilename;
      v7->_attachmentFilename = lastPathComponent;
    }

    else
    {
      contentURL = [itemCopy domainIdentifier];
      [(SGTextMessage *)v7 setConversationIdentifier:contentURL];
    }

    _photoPathCustomKey = [objc_opt_class() _photoPathCustomKey];
    if (_photoPathCustomKey)
    {
      attributeSet2 = [itemCopy attributeSet];
      v44 = [attributeSet2 valueForCustomKey:_photoPathCustomKey];

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

    _nicknameCustomKey = [objc_opt_class() _nicknameCustomKey];
    if (_nicknameCustomKey)
    {
      attributeSet3 = [itemCopy attributeSet];
      v47 = [attributeSet3 valueForCustomKey:_nicknameCustomKey];

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

    attributeSet4 = [itemCopy attributeSet];
    isPotentialEventMessage = [attributeSet4 isPotentialEventMessage];
    v50 = isPotentialEventMessage;
    if (!isPotentialEventMessage)
    {
      isPotentialEventMessage = MEMORY[0x277CBEC28];
    }

    v7->_isPotentialEventMessage = [isPotentialEventMessage BOOLValue];

    if (objc_opt_respondsToSelector())
    {
      messageType = [attributeSet messageType];
      v7->_tapBack = [messageType isEqualToString:@"tpbck"];
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

+ (BOOL)isSent:(id)sent
{
  v19 = *MEMORY[0x277D85DE8];
  attributeSet = [sent attributeSet];
  authors = [attributeSet authors];
  if ([authors count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    firstObject = [authors firstObject];
    handles = [firstObject handles];

    v7 = [handles countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(handles);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          accountHandles = [attributeSet accountHandles];
          LOBYTE(v10) = [accountHandles containsObject:v10];

          if (v10)
          {
            LOBYTE(v7) = 1;
            goto LABEL_12;
          }
        }

        v7 = [handles countByEnumeratingWithState:&v14 objects:v18 count:16];
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