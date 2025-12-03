@interface BMMessagesContentEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMMessagesContentEvent)initWithCoder:(id)coder;
- (BMMessagesContentEvent)initWithProto:(id)proto;
- (BMMessagesContentEvent)initWithProtoData:(id)data;
- (BMMessagesContentEvent)initWithUniqueId:(id)id domainId:(id)domainId personaId:(id)personaId absoluteTimestamp:(double)timestamp conversationId:(id)conversationId fromHandle:(id)handle toHandles:(id)handles suggestedNickname:(id)self0 suggestedPhotoPath:(id)self1 content:(id)self2 accountIdentifier:(id)self3 accountHandles:(id)self4 accountType:(id)self5 attachment:(id)self6 URL:(id)self7 contentProtection:(id)self8 isNew:(id)self9 isTwoFactorCode:(id)code isFromMe:(id)me isGroupThread:(id)thread isJunk:(id)junk isRead:(id)read isPinned:(id)pinned isBusinessChat:(id)chat tapbackAssociatedMessageID:(id)d tapbackType:(id)tapbackType messageType:(id)messageType messagesService:(id)id0 messageEffect:(id)id1 isKnownSender:(id)id2 conversationUUID:(id)id3;
- (BOOL)isCompleteWithContext:(id)context error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMMessagesContentEvent

- (id)encodeAsProto
{
  proto = [(BMMessagesContentEvent *)self proto];
  data = [proto data];

  return data;
}

- (id)proto
{
  v3 = objc_opt_new();
  uniqueId = [(BMMessagesContentEvent *)self uniqueId];
  [v3 setUniqueId:uniqueId];

  domainId = [(BMMessagesContentEvent *)self domainId];
  [v3 setDomainId:domainId];

  personaId = [(BMMessagesContentEvent *)self personaId];
  [v3 setPersonaId:personaId];

  [(BMMessagesContentEvent *)self absoluteTimestamp];
  [v3 setAbsoluteTimestamp:?];
  conversationId = [(BMMessagesContentEvent *)self conversationId];
  [v3 setConversationId:conversationId];

  fromHandle = [(BMMessagesContentEvent *)self fromHandle];
  proto = [fromHandle proto];
  [v3 setFromHandle:proto];

  toHandles = [(BMMessagesContentEvent *)self toHandles];
  v11 = [toHandles _pas_mappedArrayWithTransform:&__block_literal_global_39];
  v12 = [v11 mutableCopy];
  [v3 setToHandles:v12];

  suggestedNickname = [(BMMessagesContentEvent *)self suggestedNickname];
  [v3 setSuggestedNickname:suggestedNickname];

  suggestedPhotoPath = [(BMMessagesContentEvent *)self suggestedPhotoPath];
  [v3 setSuggestedPhotoPath:suggestedPhotoPath];

  content = [(BMMessagesContentEvent *)self content];
  [v3 setContent:content];

  accountIdentifier = [(BMMessagesContentEvent *)self accountIdentifier];
  [v3 setAccountIdentifier:accountIdentifier];

  accountType = [(BMMessagesContentEvent *)self accountType];
  [v3 setAccountType:accountType];

  accountHandles = [(BMMessagesContentEvent *)self accountHandles];
  v19 = [accountHandles mutableCopy];
  [v3 setAccountHandles:v19];

  attachment = [(BMMessagesContentEvent *)self attachment];
  proto2 = [attachment proto];
  [v3 setAttachment:proto2];

  v22 = [(BMMessagesContentEvent *)self URL];
  absoluteString = [v22 absoluteString];
  [v3 setUrl:absoluteString];

  contentProtection = [(BMMessagesContentEvent *)self contentProtection];
  [v3 setContentProtection:contentProtection];

  isNew = [(BMMessagesContentEvent *)self isNew];

  if (isNew)
  {
    isNew2 = [(BMMessagesContentEvent *)self isNew];
    [v3 setIsNew:{objc_msgSend(isNew2, "BOOLValue")}];
  }

  isTwoFactorCode = [(BMMessagesContentEvent *)self isTwoFactorCode];

  if (isTwoFactorCode)
  {
    isTwoFactorCode2 = [(BMMessagesContentEvent *)self isTwoFactorCode];
    [v3 setIsTwoFactorCode:{objc_msgSend(isTwoFactorCode2, "BOOLValue")}];
  }

  isFromMe = [(BMMessagesContentEvent *)self isFromMe];

  if (isFromMe)
  {
    isFromMe2 = [(BMMessagesContentEvent *)self isFromMe];
    [v3 setIsFromMe:{objc_msgSend(isFromMe2, "BOOLValue")}];
  }

  isGroupThread = [(BMMessagesContentEvent *)self isGroupThread];

  if (isGroupThread)
  {
    isGroupThread2 = [(BMMessagesContentEvent *)self isGroupThread];
    [v3 setIsGroupThread:{objc_msgSend(isGroupThread2, "BOOLValue")}];
  }

  isJunk = [(BMMessagesContentEvent *)self isJunk];

  if (isJunk)
  {
    isJunk2 = [(BMMessagesContentEvent *)self isJunk];
    [v3 setIsJunk:{objc_msgSend(isJunk2, "BOOLValue")}];
  }

  isRead = [(BMMessagesContentEvent *)self isRead];

  if (isRead)
  {
    isRead2 = [(BMMessagesContentEvent *)self isRead];
    [v3 setIsRead:{objc_msgSend(isRead2, "BOOLValue")}];
  }

  isPinned = [(BMMessagesContentEvent *)self isPinned];

  if (isPinned)
  {
    isPinned2 = [(BMMessagesContentEvent *)self isPinned];
    [v3 setIsPinned:{objc_msgSend(isPinned2, "BOOLValue")}];
  }

  isBusinessChat = [(BMMessagesContentEvent *)self isBusinessChat];

  if (isBusinessChat)
  {
    isBusinessChat2 = [(BMMessagesContentEvent *)self isBusinessChat];
    [v3 setIsBusinessChat:{objc_msgSend(isBusinessChat2, "BOOLValue")}];
  }

  tapbackAssociatedMessageID = [(BMMessagesContentEvent *)self tapbackAssociatedMessageID];

  if (tapbackAssociatedMessageID)
  {
    tapbackAssociatedMessageID2 = [(BMMessagesContentEvent *)self tapbackAssociatedMessageID];
    [v3 setTapbackAssociatedMessageID:tapbackAssociatedMessageID2];
  }

  tapbackType = [(BMMessagesContentEvent *)self tapbackType];

  if (tapbackType)
  {
    tapbackType2 = [(BMMessagesContentEvent *)self tapbackType];
    [v3 setTapbackType:{objc_msgSend(tapbackType2, "integerValue")}];
  }

  messageType = [(BMMessagesContentEvent *)self messageType];

  if (messageType)
  {
    messageType2 = [(BMMessagesContentEvent *)self messageType];
    [v3 setMessageType:messageType2];
  }

  messagesService = [(BMMessagesContentEvent *)self messagesService];

  if (messagesService)
  {
    messagesService2 = [(BMMessagesContentEvent *)self messagesService];
    [v3 setMessagesService:messagesService2];
  }

  messageEffect = [(BMMessagesContentEvent *)self messageEffect];

  if (messageEffect)
  {
    messageEffect2 = [(BMMessagesContentEvent *)self messageEffect];
    [v3 setMessageEffect:{objc_msgSend(messageEffect2, "intValue")}];
  }

  isKnownSender = [(BMMessagesContentEvent *)self isKnownSender];

  if (isKnownSender)
  {
    isKnownSender2 = [(BMMessagesContentEvent *)self isKnownSender];
    [v3 setIsKnownSender:{objc_msgSend(isKnownSender2, "BOOLValue")}];
  }

  conversationUUID = [(BMMessagesContentEvent *)self conversationUUID];

  if (conversationUUID)
  {
    conversationUUID2 = [(BMMessagesContentEvent *)self conversationUUID];
    [v3 setConversationUUID:conversationUUID2];
  }

  return v3;
}

- (BMMessagesContentEvent)initWithUniqueId:(id)id domainId:(id)domainId personaId:(id)personaId absoluteTimestamp:(double)timestamp conversationId:(id)conversationId fromHandle:(id)handle toHandles:(id)handles suggestedNickname:(id)self0 suggestedPhotoPath:(id)self1 content:(id)self2 accountIdentifier:(id)self3 accountHandles:(id)self4 accountType:(id)self5 attachment:(id)self6 URL:(id)self7 contentProtection:(id)self8 isNew:(id)self9 isTwoFactorCode:(id)code isFromMe:(id)me isGroupThread:(id)thread isJunk:(id)junk isRead:(id)read isPinned:(id)pinned isBusinessChat:(id)chat tapbackAssociatedMessageID:(id)d tapbackType:(id)tapbackType messageType:(id)messageType messagesService:(id)id0 messageEffect:(id)id1 isKnownSender:(id)id2 conversationUUID:(id)id3
{
  idCopy = id;
  domainIdCopy = domainId;
  domainIdCopy2 = domainId;
  personaIdCopy = personaId;
  personaIdCopy2 = personaId;
  conversationIdCopy = conversationId;
  conversationIdCopy2 = conversationId;
  handleCopy = handle;
  handleCopy2 = handle;
  handlesCopy = handles;
  nicknameCopy = nickname;
  pathCopy = path;
  contentCopy = content;
  identifierCopy = identifier;
  accountHandlesCopy = accountHandles;
  typeCopy = type;
  attachmentCopy = attachment;
  lCopy = l;
  protectionCopy = protection;
  newCopy = new;
  codeCopy = code;
  meCopy = me;
  threadCopy = thread;
  junkCopy = junk;
  readCopy = read;
  pinnedCopy = pinned;
  chatCopy = chat;
  dCopy = d;
  tapbackTypeCopy = tapbackType;
  messageTypeCopy = messageType;
  serviceCopy = service;
  effectCopy = effect;
  senderCopy = sender;
  iDCopy = iD;
  if (idCopy)
  {
    if (conversationIdCopy2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BMMessagesContentEvent initWithUniqueId:domainId:personaId:absoluteTimestamp:conversationId:fromHandle:toHandles:suggestedNickname:suggestedPhotoPath:content:accountIdentifier:accountHandles:accountType:attachment:URL:contentProtection:isNew:isTwoFactorCode:isFromMe:isGroupThread:isJunk:isRead:isPinned:isBusinessChat:tapbackAssociatedMessageID:tapbackType:messageType:messagesService:messageEffect:isKnownSender:conversationUUID:];
    if (conversationIdCopy2)
    {
      goto LABEL_3;
    }
  }

  [BMMessagesContentEvent initWithUniqueId:domainId:personaId:absoluteTimestamp:conversationId:fromHandle:toHandles:suggestedNickname:suggestedPhotoPath:content:accountIdentifier:accountHandles:accountType:attachment:URL:contentProtection:isNew:isTwoFactorCode:isFromMe:isGroupThread:isJunk:isRead:isPinned:isBusinessChat:tapbackAssociatedMessageID:tapbackType:messageType:messagesService:messageEffect:isKnownSender:conversationUUID:];
LABEL_3:
  if (!handleCopy2)
  {
    [BMMessagesContentEvent initWithUniqueId:domainId:personaId:absoluteTimestamp:conversationId:fromHandle:toHandles:suggestedNickname:suggestedPhotoPath:content:accountIdentifier:accountHandles:accountType:attachment:URL:contentProtection:isNew:isTwoFactorCode:isFromMe:isGroupThread:isJunk:isRead:isPinned:isBusinessChat:tapbackAssociatedMessageID:tapbackType:messageType:messagesService:messageEffect:isKnownSender:conversationUUID:];
  }

  if (!contentCopy)
  {
    [BMMessagesContentEvent initWithUniqueId:domainId:personaId:absoluteTimestamp:conversationId:fromHandle:toHandles:suggestedNickname:suggestedPhotoPath:content:accountIdentifier:accountHandles:accountType:attachment:URL:contentProtection:isNew:isTwoFactorCode:isFromMe:isGroupThread:isJunk:isRead:isPinned:isBusinessChat:tapbackAssociatedMessageID:tapbackType:messageType:messagesService:messageEffect:isKnownSender:conversationUUID:];
  }

  v78.receiver = self;
  v78.super_class = BMMessagesContentEvent;
  v44 = [(BMMessagesContentEvent *)&v78 init];
  v45 = v44;
  if (v44)
  {
    objc_storeStrong(&v44->_uniqueId, id);
    objc_storeStrong(&v45->_domainId, domainIdCopy);
    objc_storeStrong(&v45->_personaId, personaIdCopy);
    v45->_absoluteTimestamp = timestamp;
    objc_storeStrong(&v45->_conversationId, conversationIdCopy);
    objc_storeStrong(&v45->_fromHandle, handleCopy);
    objc_storeStrong(&v45->_toHandles, handles);
    objc_storeStrong(&v45->_suggestedNickname, nickname);
    objc_storeStrong(&v45->_suggestedPhotoPath, path);
    objc_storeStrong(&v45->_content, content);
    objc_storeStrong(&v45->_accountIdentifier, identifier);
    objc_storeStrong(&v45->_accountHandles, accountHandles);
    objc_storeStrong(&v45->_accountType, type);
    objc_storeStrong(&v45->_attachment, attachment);
    objc_storeStrong(&v45->_URL, l);
    objc_storeStrong(&v45->_contentProtection, protection);
    objc_storeStrong(&v45->_isNew, new);
    objc_storeStrong(&v45->_isTwoFactorCode, code);
    objc_storeStrong(&v45->_isFromMe, me);
    objc_storeStrong(&v45->_isGroupThread, thread);
    objc_storeStrong(&v45->_isJunk, junk);
    objc_storeStrong(&v45->_isRead, read);
    objc_storeStrong(&v45->_isPinned, pinned);
    objc_storeStrong(&v45->_isBusinessChat, chat);
    objc_storeStrong(&v45->_tapbackAssociatedMessageID, d);
    objc_storeStrong(&v45->_tapbackType, tapbackType);
    objc_storeStrong(&v45->_messageType, messageType);
    objc_storeStrong(&v45->_messagesService, service);
    objc_storeStrong(&v45->_messageEffect, effect);
    objc_storeStrong(&v45->_isKnownSender, sender);
    objc_storeStrong(&v45->_conversationUUID, iD);
  }

  return v45;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version == 2)
  {
    v7 = [[self alloc] initWithProtoData:dataCopy];
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BMMessagesContentEvent eventWithData:version dataVersion:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  proto = [(BMMessagesContentEvent *)self proto];
  dictionaryRepresentation = [proto dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(BMMessagesContentEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:&v8];
  v5 = v8;

  if (!v4)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BMMessagesContentEvent *)v5 json];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(BMMessagesContentEvent *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"dat"];
}

- (BMMessagesContentEvent)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E69C5D78];
  coderCopy = coder;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:coderCopy expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMMessagesContentEvent *)self initWithProtoData:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BMMessagesContentEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      if ([v5 hasUniqueId]&& [v5 hasAbsoluteTimestamp]&& [v5 hasConversationId]&& [v5 hasFromHandle]&& ([v5 hasContent]& 1) != 0)
      {
        uniqueId = [v5 uniqueId];
        domainId = [v5 domainId];
        personaId = [v5 personaId];
        [v5 absoluteTimestamp];
        v7 = v6;
        conversationId = [v5 conversationId];
        v8 = [BMNamedHandle alloc];
        fromHandle = [v5 fromHandle];
        v55 = [(BMNamedHandle *)v8 initWithProto:?];
        toHandles = [v5 toHandles];
        v54 = [toHandles _pas_mappedArrayWithTransform:&__block_literal_global_3];
        suggestedNickname = [v5 suggestedNickname];
        suggestedPhotoPath = [v5 suggestedPhotoPath];
        content = [v5 content];
        accountIdentifier = [v5 accountIdentifier];
        accountHandles = [v5 accountHandles];
        accountType = [v5 accountType];
        v9 = [BMContentAttachment alloc];
        attachment = [v5 attachment];
        v47 = [(BMContentAttachment *)v9 initWithProto:?];
        v31 = [v5 url];
        if (v31)
        {
          v10 = objc_alloc(MEMORY[0x1E695DFF8]);
          v21 = [v5 url];
          v44 = [v10 initWithString:?];
        }

        else
        {
          v44 = 0;
        }

        contentProtection = [v5 contentProtection];
        hasIsNew = [v5 hasIsNew];
        if (hasIsNew)
        {
          v43 = [MEMORY[0x1E696AD98] numberWithBool:{-[NSObject isNew](v5, "isNew")}];
        }

        else
        {
          v43 = 0;
        }

        hasIsTwoFactorCode = [v5 hasIsTwoFactorCode];
        if (hasIsTwoFactorCode)
        {
          v42 = [MEMORY[0x1E696AD98] numberWithBool:{-[NSObject isTwoFactorCode](v5, "isTwoFactorCode")}];
        }

        else
        {
          v42 = 0;
        }

        hasIsFromMe = [v5 hasIsFromMe];
        if (hasIsFromMe)
        {
          v41 = [MEMORY[0x1E696AD98] numberWithBool:{-[NSObject isFromMe](v5, "isFromMe")}];
        }

        else
        {
          v41 = 0;
        }

        hasIsGroupThread = [v5 hasIsGroupThread];
        if (hasIsGroupThread)
        {
          v40 = [MEMORY[0x1E696AD98] numberWithBool:{-[NSObject isGroupThread](v5, "isGroupThread")}];
        }

        else
        {
          v40 = 0;
        }

        hasIsJunk = [v5 hasIsJunk];
        if (hasIsJunk)
        {
          v39 = [MEMORY[0x1E696AD98] numberWithBool:{-[NSObject isJunk](v5, "isJunk")}];
        }

        else
        {
          v39 = 0;
        }

        hasIsRead = [v5 hasIsRead];
        if (hasIsRead)
        {
          v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[NSObject isRead](v5, "isRead")}];
        }

        else
        {
          v38 = 0;
        }

        hasIsPinned = [v5 hasIsPinned];
        if (hasIsPinned)
        {
          v37 = [MEMORY[0x1E696AD98] numberWithBool:{-[NSObject isPinned](v5, "isPinned")}];
        }

        else
        {
          v37 = 0;
        }

        hasIsBusinessChat = [v5 hasIsBusinessChat];
        if (hasIsBusinessChat)
        {
          v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[NSObject isBusinessChat](v5, "isBusinessChat")}];
        }

        else
        {
          v36 = 0;
        }

        tapbackAssociatedMessageID = [v5 tapbackAssociatedMessageID];
        hasTapbackType = [v5 hasTapbackType];
        if (hasTapbackType)
        {
          v35 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[NSObject tapbackType](v5, "tapbackType")}];
        }

        else
        {
          v35 = 0;
        }

        messageType = [v5 messageType];
        messagesService = [v5 messagesService];
        hasMessageEffect = [v5 hasMessageEffect];
        if (hasMessageEffect)
        {
          v17 = [MEMORY[0x1E696AD98] numberWithInt:{-[NSObject messageEffect](v5, "messageEffect")}];
        }

        else
        {
          v17 = 0;
        }

        hasIsKnownSender = [v5 hasIsKnownSender];
        if (hasIsKnownSender)
        {
          v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[NSObject isKnownSender](v5, "isKnownSender")}];
        }

        else
        {
          v19 = 0;
        }

        conversationUUID = [v5 conversationUUID];
        self = [(BMMessagesContentEvent *)self initWithUniqueId:uniqueId domainId:domainId personaId:personaId absoluteTimestamp:conversationId conversationId:v55 fromHandle:v54 toHandles:v7 suggestedNickname:suggestedNickname suggestedPhotoPath:suggestedPhotoPath content:content accountIdentifier:accountIdentifier accountHandles:accountHandles accountType:accountType attachment:v47 URL:v44 contentProtection:contentProtection isNew:v43 isTwoFactorCode:v42 isFromMe:v41 isGroupThread:v40 isJunk:v39 isRead:v38 isPinned:v37 isBusinessChat:v36 tapbackAssociatedMessageID:tapbackAssociatedMessageID tapbackType:v35 messageType:messageType messagesService:messagesService messageEffect:v17 isKnownSender:v19 conversationUUID:conversationUUID];

        if (hasIsKnownSender)
        {
        }

        if (hasMessageEffect)
        {
        }

        if (hasTapbackType)
        {
        }

        if (hasIsBusinessChat)
        {
        }

        if (hasIsPinned)
        {
        }

        if (hasIsRead)
        {
        }

        if (hasIsJunk)
        {
        }

        if (hasIsGroupThread)
        {
        }

        if (hasIsFromMe)
        {
        }

        if (hasIsTwoFactorCode)
        {
        }

        if (hasIsNew)
        {
        }

        if (v31)
        {
        }

        selfCopy = self;
        goto LABEL_17;
      }

      v12 = __biome_log_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [BMMessagesContentEvent initWithProto:v12];
      }
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMMessagesContentEvent initWithProto:v5];
      }
    }

    selfCopy = 0;
LABEL_17:

    goto LABEL_18;
  }

  selfCopy = 0;
LABEL_18:

  return selfCopy;
}

BMNamedHandle *__40__BMMessagesContentEvent_initWithProto___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[BMNamedHandle alloc] initWithProto:v2];

  return v3;
}

- (BMMessagesContentEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBMessagesContentEvent alloc] initWithData:dataCopy];

    self = [(BMMessagesContentEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uniqueId hash];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
  v5 = [v4 hash];
  v6 = v3 ^ [(NSString *)self->_conversationId hash];

  return v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    proto = [(BMMessagesContentEvent *)self proto];
    proto2 = [v5 proto];

    v8 = [proto isEqual:proto2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isCompleteWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  if (self->_uniqueId && self->_conversationId && self->_fromHandle && self->_toHandles && self->_content)
  {
    v7 = 1;
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"BMStreamErrorDomain" code:3 userInfo:0];
    *error = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end