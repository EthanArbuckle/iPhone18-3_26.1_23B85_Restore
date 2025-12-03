@interface BMMailContentEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMMailContentEvent)initWithCoder:(id)coder;
- (BMMailContentEvent)initWithProto:(id)proto;
- (BMMailContentEvent)initWithProtoData:(id)data;
- (BMMailContentEvent)initWithUniqueId:(id)id domainId:(id)domainId personaId:(id)personaId absoluteTimestamp:(double)timestamp accountIdentifier:(id)identifier messageIdentifier:(id)messageIdentifier fromHandle:(id)handle toHandles:(id)self0 ccHandles:(id)self1 bccHandles:(id)self2 headers:(id)self3 subject:(id)self4 htmlContent:(id)self5 textContent:(id)self6 isFullyDownloaded:(BOOL)self7 securityMethod:(id)self8 accountHandles:(id)self9 replyTo:(id)to mailboxIdentifiers:(id)identifiers listId:(id)listId accountType:(id)type attachments:(id)attachments contentProtection:(id)protection conversationId:(id)conversationId dateReceived:(id)received mailCategories:(id)categories isNew:(id)new isTwoFactorCode:(id)id0 isFromMe:(id)id1 isJunk:(id)id2 isRead:(id)id3 isVIP:(id)id4 isFlagged:(id)id5;
- (BOOL)isCompleteWithContext:(id)context error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (id)_initWithUniqueId:(id)id domainId:(id)domainId personaId:(id)personaId;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (void)_inflateFromProto:(id)proto;
- (void)_loadData;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMMailContentEvent

- (id)proto
{
  [(BMMailContentEvent *)self _loadData];
  proto = self->_proto;

  return proto;
}

- (void)_inflateFromProto:(id)proto
{
  v75 = *MEMORY[0x1E69E9840];
  protoCopy = proto;
  if (self->_proto)
  {
    [BMMailContentEvent _inflateFromProto:];
  }

  v5 = [BMNamedHandle alloc];
  fromHandle = [(BMPBMailContentEvent *)protoCopy fromHandle];
  v7 = [(BMNamedHandle *)v5 initWithProto:fromHandle];
  fromHandle = self->_fromHandle;
  self->_fromHandle = v7;

  if ([(BMPBMailContentEvent *)protoCopy hasReplyTo])
  {
    v9 = [BMNamedHandle alloc];
    replyTo = [(BMPBMailContentEvent *)protoCopy replyTo];
    v11 = [(BMNamedHandle *)v9 initWithProto:replyTo];
    replyTo = self->_replyTo;
    self->_replyTo = v11;
  }

  if ([(BMPBMailContentEvent *)protoCopy hasListId])
  {
    v13 = [BMNamedHandle alloc];
    listId = [(BMPBMailContentEvent *)protoCopy listId];
    v15 = [(BMNamedHandle *)v13 initWithProto:listId];
    listId = self->_listId;
    self->_listId = v15;
  }

  toHandles = [(BMPBMailContentEvent *)protoCopy toHandles];
  v18 = [toHandles _pas_mappedArrayWithTransform:&__block_literal_global_19];
  toHandles = self->_toHandles;
  self->_toHandles = v18;

  ccHandles = [(BMPBMailContentEvent *)protoCopy ccHandles];
  v21 = [ccHandles _pas_mappedArrayWithTransform:&__block_literal_global_19];
  ccHandles = self->_ccHandles;
  self->_ccHandles = v21;

  bccHandles = [(BMPBMailContentEvent *)protoCopy bccHandles];
  v24 = [bccHandles _pas_mappedArrayWithTransform:&__block_literal_global_21];
  bccHandles = self->_bccHandles;
  selfCopy = self;
  self->_bccHandles = v24;

  v26 = objc_alloc(MEMORY[0x1E695DF90]);
  headers = [(BMPBMailContentEvent *)protoCopy headers];
  v28 = [v26 initWithCapacity:{objc_msgSend(headers, "count")}];

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v66 = protoCopy;
  obj = [(BMPBMailContentEvent *)protoCopy headers];
  v29 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v70;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v70 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v69 + 1) + 8 * i);
        v34 = objc_autoreleasePoolPush();
        v35 = [v33 key];
        value = [v33 value];
        v37 = [v28 objectForKeyedSubscript:v35];
        if (v37)
        {
          v38 = [v28 objectForKeyedSubscript:v35];
          v39 = [v38 arrayByAddingObject:value];
          [v28 setObject:v39 forKeyedSubscript:v35];
        }

        else
        {
          v73 = value;
          v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
          [v28 setObject:v38 forKeyedSubscript:v35];
        }

        objc_autoreleasePoolPop(v34);
      }

      v30 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
    }

    while (v30);
  }

  v40 = [v28 copy];
  headers = selfCopy->_headers;
  selfCopy->_headers = v40;

  attachments = [(BMPBMailContentEvent *)v66 attachments];
  v43 = [attachments _pas_mappedArrayWithTransform:&__block_literal_global_26];
  attachments = selfCopy->_attachments;
  selfCopy->_attachments = v43;

  if ([(BMPBMailContentEvent *)v66 hasDateReceived])
  {
    v45 = objc_alloc(MEMORY[0x1E695DF00]);
    [(BMPBMailContentEvent *)v66 dateReceived];
    v46 = [v45 initWithTimeIntervalSinceReferenceDate:?];
    dateReceived = selfCopy->_dateReceived;
    selfCopy->_dateReceived = v46;
  }

  if ([(BMPBMailContentEvent *)v66 hasMailCategories])
  {
    v48 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPBMailContentEvent mailCategories](v66, "mailCategories")}];
    mailCategories = selfCopy->_mailCategories;
    selfCopy->_mailCategories = v48;
  }

  if ([(BMPBMailContentEvent *)v66 hasIsNew])
  {
    v50 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPBMailContentEvent isNew](v66, "isNew")}];
    isNew = selfCopy->_isNew;
    selfCopy->_isNew = v50;
  }

  if ([(BMPBMailContentEvent *)v66 hasIsTwoFactorCode])
  {
    v52 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPBMailContentEvent isTwoFactorCode](v66, "isTwoFactorCode")}];
    isTwoFactorCode = selfCopy->_isTwoFactorCode;
    selfCopy->_isTwoFactorCode = v52;
  }

  if ([(BMPBMailContentEvent *)v66 hasIsFromMe])
  {
    v54 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPBMailContentEvent isFromMe](v66, "isFromMe")}];
    isFromMe = selfCopy->_isFromMe;
    selfCopy->_isFromMe = v54;
  }

  if ([(BMPBMailContentEvent *)v66 hasIsJunk])
  {
    v56 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPBMailContentEvent isJunk](v66, "isJunk")}];
    isJunk = selfCopy->_isJunk;
    selfCopy->_isJunk = v56;
  }

  if ([(BMPBMailContentEvent *)v66 hasIsRead])
  {
    v58 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPBMailContentEvent isRead](v66, "isRead")}];
    isRead = selfCopy->_isRead;
    selfCopy->_isRead = v58;
  }

  if ([(BMPBMailContentEvent *)v66 hasIsVIP])
  {
    v60 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPBMailContentEvent isVIP](v66, "isVIP")}];
    isVIP = selfCopy->_isVIP;
    selfCopy->_isVIP = v60;
  }

  if ([(BMPBMailContentEvent *)v66 hasIsFlagged])
  {
    v62 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPBMailContentEvent isFlagged](v66, "isFlagged")}];
    isFlagged = selfCopy->_isFlagged;
    selfCopy->_isFlagged = v62;
  }

  proto = selfCopy->_proto;
  selfCopy->_proto = v66;

  v65 = *MEMORY[0x1E69E9840];
}

BMNamedHandle *__40__BMMailContentEvent__inflateFromProto___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[BMNamedHandle alloc] initWithProto:v2];

  return v3;
}

BMNamedHandle *__40__BMMailContentEvent__inflateFromProto___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[BMNamedHandle alloc] initWithProto:v2];

  return v3;
}

BMNamedHandle *__40__BMMailContentEvent__inflateFromProto___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[BMNamedHandle alloc] initWithProto:v2];

  return v3;
}

BMContentAttachment *__40__BMMailContentEvent__inflateFromProto___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[BMContentAttachment alloc] initWithProto:v2];

  return v3;
}

- (void)_loadData
{
  os_unfair_lock_lock(&self->_protoLock);
  v3 = self->_proto;
  if (!v3)
  {
    if (self->_data)
    {
      [(BMMailContentEvent *)&self->_data _loadData];
      v3 = v5;
    }

    else
    {
      v3 = 0;
    }
  }

  v4 = v3;
  os_unfair_lock_unlock(&self->_protoLock);
}

- (id)_initWithUniqueId:(id)id domainId:(id)domainId personaId:(id)personaId
{
  idCopy = id;
  domainIdCopy = domainId;
  personaIdCopy = personaId;
  v20.receiver = self;
  v20.super_class = BMMailContentEvent;
  v11 = [(BMMailContentEvent *)&v20 init];
  v12 = v11;
  if (v11)
  {
    v11->_protoLock._os_unfair_lock_opaque = 0;
    v13 = [idCopy copy];
    uniqueId = v12->_uniqueId;
    v12->_uniqueId = v13;

    v15 = [domainIdCopy copy];
    domainId = v12->_domainId;
    v12->_domainId = v15;

    v17 = [personaIdCopy copy];
    personaId = v12->_personaId;
    v12->_personaId = v17;
  }

  return v12;
}

- (BMMailContentEvent)initWithUniqueId:(id)id domainId:(id)domainId personaId:(id)personaId absoluteTimestamp:(double)timestamp accountIdentifier:(id)identifier messageIdentifier:(id)messageIdentifier fromHandle:(id)handle toHandles:(id)self0 ccHandles:(id)self1 bccHandles:(id)self2 headers:(id)self3 subject:(id)self4 htmlContent:(id)self5 textContent:(id)self6 isFullyDownloaded:(BOOL)self7 securityMethod:(id)self8 accountHandles:(id)self9 replyTo:(id)to mailboxIdentifiers:(id)identifiers listId:(id)listId accountType:(id)type attachments:(id)attachments contentProtection:(id)protection conversationId:(id)conversationId dateReceived:(id)received mailCategories:(id)categories isNew:(id)new isTwoFactorCode:(id)id0 isFromMe:(id)id1 isJunk:(id)id2 isRead:(id)id3 isVIP:(id)id4 isFlagged:(id)id5
{
  idCopy = id;
  domainIdCopy = domainId;
  personaIdCopy = personaId;
  identifierCopy = identifier;
  messageIdentifierCopy = messageIdentifier;
  handleCopy = handle;
  handlesCopy = handles;
  ccHandlesCopy = ccHandles;
  bccHandlesCopy = bccHandles;
  headersCopy = headers;
  subjectCopy = subject;
  contentCopy = content;
  textContentCopy = textContent;
  methodCopy = method;
  accountHandlesCopy = accountHandles;
  toCopy = to;
  identifiersCopy = identifiers;
  listIdCopy = listId;
  typeCopy = type;
  attachmentsCopy = attachments;
  protectionCopy = protection;
  conversationIdCopy = conversationId;
  receivedCopy = received;
  categoriesCopy = categories;
  newCopy = new;
  codeCopy = code;
  meCopy = me;
  junkCopy = junk;
  readCopy = read;
  pCopy = p;
  flaggedCopy = flagged;
  if (idCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BMMailContentEvent initWithUniqueId:domainId:personaId:absoluteTimestamp:accountIdentifier:messageIdentifier:fromHandle:toHandles:ccHandles:bccHandles:headers:subject:htmlContent:textContent:isFullyDownloaded:securityMethod:accountHandles:replyTo:mailboxIdentifiers:listId:accountType:attachments:contentProtection:conversationId:dateReceived:mailCategories:isNew:isTwoFactorCode:isFromMe:isJunk:isRead:isVIP:isFlagged:];
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  [BMMailContentEvent initWithUniqueId:domainId:personaId:absoluteTimestamp:accountIdentifier:messageIdentifier:fromHandle:toHandles:ccHandles:bccHandles:headers:subject:htmlContent:textContent:isFullyDownloaded:securityMethod:accountHandles:replyTo:mailboxIdentifiers:listId:accountType:attachments:contentProtection:conversationId:dateReceived:mailCategories:isNew:isTwoFactorCode:isFromMe:isJunk:isRead:isVIP:isFlagged:];
LABEL_3:
  v48 = domainIdCopy;
  if (!messageIdentifierCopy)
  {
    [BMMailContentEvent initWithUniqueId:domainId:personaId:absoluteTimestamp:accountIdentifier:messageIdentifier:fromHandle:toHandles:ccHandles:bccHandles:headers:subject:htmlContent:textContent:isFullyDownloaded:securityMethod:accountHandles:replyTo:mailboxIdentifiers:listId:accountType:attachments:contentProtection:conversationId:dateReceived:mailCategories:isNew:isTwoFactorCode:isFromMe:isJunk:isRead:isVIP:isFlagged:];
  }

  v49 = categoriesCopy;
  if (handleCopy)
  {
    if (headersCopy)
    {
      goto LABEL_7;
    }

LABEL_34:
    [BMMailContentEvent initWithUniqueId:domainId:personaId:absoluteTimestamp:accountIdentifier:messageIdentifier:fromHandle:toHandles:ccHandles:bccHandles:headers:subject:htmlContent:textContent:isFullyDownloaded:securityMethod:accountHandles:replyTo:mailboxIdentifiers:listId:accountType:attachments:contentProtection:conversationId:dateReceived:mailCategories:isNew:isTwoFactorCode:isFromMe:isJunk:isRead:isVIP:isFlagged:];
    if (subjectCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

  [BMMailContentEvent initWithUniqueId:domainId:personaId:absoluteTimestamp:accountIdentifier:messageIdentifier:fromHandle:toHandles:ccHandles:bccHandles:headers:subject:htmlContent:textContent:isFullyDownloaded:securityMethod:accountHandles:replyTo:mailboxIdentifiers:listId:accountType:attachments:contentProtection:conversationId:dateReceived:mailCategories:isNew:isTwoFactorCode:isFromMe:isJunk:isRead:isVIP:isFlagged:];
  if (!headersCopy)
  {
    goto LABEL_34;
  }

LABEL_7:
  if (subjectCopy)
  {
    goto LABEL_8;
  }

LABEL_35:
  [BMMailContentEvent initWithUniqueId:domainId:personaId:absoluteTimestamp:accountIdentifier:messageIdentifier:fromHandle:toHandles:ccHandles:bccHandles:headers:subject:htmlContent:textContent:isFullyDownloaded:securityMethod:accountHandles:replyTo:mailboxIdentifiers:listId:accountType:attachments:contentProtection:conversationId:dateReceived:mailCategories:isNew:isTwoFactorCode:isFromMe:isJunk:isRead:isVIP:isFlagged:];
LABEL_8:
  v50 = [(BMMailContentEvent *)self _initWithUniqueId:idCopy domainId:v48 personaId:personaIdCopy];
  if (v50)
  {
    v72 = subjectCopy;
    v51 = objc_opt_new();
    [v51 setUniqueId:idCopy];
    [v51 setDomainId:v48];
    v71 = personaIdCopy;
    [v51 setPersonaId:personaIdCopy];
    [v51 setAbsoluteTimestamp:timestamp];
    v69 = identifierCopy;
    [v51 setAccountIdentifier:identifierCopy];
    v68 = messageIdentifierCopy;
    [v51 setMessageIdentifier:messageIdentifierCopy];
    proto = [handleCopy proto];
    [v51 setFromHandle:proto];

    v53 = [handlesCopy _pas_mappedArrayWithTransform:&__block_literal_global_51];
    v54 = [v53 mutableCopy];
    [v51 setToHandles:v54];

    v55 = [ccHandlesCopy _pas_mappedArrayWithTransform:&__block_literal_global_53];
    v56 = [v55 mutableCopy];
    [v51 setCcHandles:v56];

    v57 = [bccHandlesCopy _pas_mappedArrayWithTransform:&__block_literal_global_55];
    v58 = [v57 mutableCopy];
    [v51 setBccHandles:v58];

    if ([headersCopy count])
    {
      v59 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(headersCopy, "count")}];
      v97[0] = MEMORY[0x1E69E9820];
      v97[1] = 3221225472;
      v97[2] = __422__BMMailContentEvent_initWithUniqueId_domainId_personaId_absoluteTimestamp_accountIdentifier_messageIdentifier_fromHandle_toHandles_ccHandles_bccHandles_headers_subject_htmlContent_textContent_isFullyDownloaded_securityMethod_accountHandles_replyTo_mailboxIdentifiers_listId_accountType_attachments_contentProtection_conversationId_dateReceived_mailCategories_isNew_isTwoFactorCode_isFromMe_isJunk_isRead_isVIP_isFlagged___block_invoke_4;
      v97[3] = &unk_1E6E545C8;
      v98 = v59;
      v60 = v59;
      [headersCopy enumerateKeysAndObjectsUsingBlock:v97];
      [v51 setHeaders:v60];
    }

    [v51 setSubject:v72];
    [v51 setHtmlContent:contentCopy];
    [v51 setTextContent:textContentCopy];
    [v51 setIsFullyDownloaded:downloaded];
    [v51 setSecurityMethod:methodCopy];
    v61 = [accountHandlesCopy mutableCopy];
    [v51 setAccountHandles:v61];

    proto2 = [toCopy proto];
    [v51 setReplyTo:proto2];

    v63 = [identifiersCopy mutableCopy];
    [v51 setMailboxIdentifiers:v63];

    proto3 = [listIdCopy proto];
    [v51 setListId:proto3];

    [v51 setAccountType:typeCopy];
    v65 = [attachmentsCopy _pas_mappedArrayWithTransform:&__block_literal_global_61];
    v66 = [v65 mutableCopy];
    [v51 setAttachments:v66];

    [v51 setContentProtection:protectionCopy];
    [v51 setConversationId:conversationIdCopy];
    if (receivedCopy)
    {
      [receivedCopy timeIntervalSinceReferenceDate];
      [v51 setDateReceived:?];
    }

    identifierCopy = v69;
    personaIdCopy = v71;
    messageIdentifierCopy = v68;
    v49 = categoriesCopy;
    if (categoriesCopy)
    {
      [v51 setMailCategories:{objc_msgSend(categoriesCopy, "intValue")}];
    }

    if (newCopy)
    {
      [v51 setIsNew:{objc_msgSend(newCopy, "BOOLValue")}];
    }

    if (codeCopy)
    {
      [v51 setIsTwoFactorCode:{objc_msgSend(codeCopy, "BOOLValue")}];
    }

    if (meCopy)
    {
      [v51 setIsFromMe:{objc_msgSend(meCopy, "BOOLValue")}];
    }

    if (junkCopy)
    {
      [v51 setIsJunk:{objc_msgSend(junkCopy, "BOOLValue")}];
    }

    if (readCopy)
    {
      [v51 setIsRead:{objc_msgSend(readCopy, "BOOLValue")}];
    }

    if (pCopy)
    {
      [v51 setIsVIP:{objc_msgSend(pCopy, "BOOLValue")}];
    }

    if (flaggedCopy)
    {
      [v51 setIsFlagged:{objc_msgSend(flaggedCopy, "BOOLValue")}];
    }

    [(BMMailContentEvent *)v50 _inflateFromProto:v51];

    subjectCopy = v72;
  }

  return v50;
}

void __422__BMMailContentEvent_initWithUniqueId_domainId_personaId_absoluteTimestamp_accountIdentifier_messageIdentifier_fromHandle_toHandles_ccHandles_bccHandles_headers_subject_htmlContent_textContent_isFullyDownloaded_securityMethod_accountHandles_replyTo_mailboxIdentifiers_listId_accountType_attachments_contentProtection_conversationId_dateReceived_mailCategories_isNew_isTwoFactorCode_isFromMe_isJunk_isRead_isVIP_isFlagged___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = objc_opt_new();
        [v13 setKey:{v5, v15}];
        [v13 setValue:v11];
        [*(a1 + 32) addObject:v13];

        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version == 3)
  {
    v7 = [[self alloc] initWithProtoData:dataCopy];
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BMMailContentEvent eventWithData:version dataVersion:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  proto = [(BMMailContentEvent *)self proto];
  dictionaryRepresentation = [proto dictionaryRepresentation];

  v4 = [dictionaryRepresentation objectForKeyedSubscript:@"htmlContent"];

  if (v4)
  {
    v5 = [dictionaryRepresentation mutableCopy];
    v6 = [v5 objectForKeyedSubscript:@"htmlContent"];
    v7 = [v6 base64EncodedStringWithOptions:0];
    [v5 setObject:v7 forKeyedSubscript:@"htmlContent"];

    dictionaryRepresentation = v5;
  }

  return dictionaryRepresentation;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(BMMailContentEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:&v8];
  v5 = v8;

  if (!v4)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BMMailContentEvent *)v5 json];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(BMMailContentEvent *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"dat"];
}

- (BMMailContentEvent)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E69C5D78];
  coderCopy = coder;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:coderCopy expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMMailContentEvent *)self initWithProtoData:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)encodeAsProto
{
  proto = [(BMMailContentEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMMailContentEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = protoCopy;
    if ([v5 hasUniqueId] && objc_msgSend(v5, "hasAbsoluteTimestamp") && objc_msgSend(v5, "hasAccountIdentifier") && objc_msgSend(v5, "hasMessageIdentifier") && objc_msgSend(v5, "hasFromHandle") && objc_msgSend(v5, "hasSubject") && objc_msgSend(v5, "hasIsFullyDownloaded"))
    {
      uniqueId = [v5 uniqueId];
      domainId = [v5 domainId];
      personaId = [v5 personaId];
      v9 = [(BMMailContentEvent *)self _initWithUniqueId:uniqueId domainId:domainId personaId:personaId];

      if (v9)
      {
        [v9 _inflateFromProto:v5];
      }

      self = v9;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BMMailContentEvent)initWithProtoData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v6 = [[BMPBMailContentEventFilteringSubset alloc] initWithData:dataCopy];
    v7 = v6;
    if (v6)
    {
      uniqueId = [(BMPBMailContentEventFilteringSubset *)v6 uniqueId];
      domainId = [(BMPBMailContentEventFilteringSubset *)v7 domainId];
      personaId = [(BMPBMailContentEventFilteringSubset *)v7 personaId];
      v11 = [(BMMailContentEvent *)self _initWithUniqueId:uniqueId domainId:domainId personaId:personaId];

      if (v11)
      {
        objc_storeStrong(v11 + 1, data);
      }

      self = v11;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    proto = [(BMMailContentEvent *)self proto];
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
  uniqueId = [(BMMailContentEvent *)self uniqueId];
  if (!uniqueId)
  {
    goto LABEL_14;
  }

  v7 = uniqueId;
  accountIdentifier = [(BMMailContentEvent *)self accountIdentifier];
  if (!accountIdentifier)
  {
    goto LABEL_13;
  }

  v9 = accountIdentifier;
  messageIdentifier = [(BMMailContentEvent *)self messageIdentifier];
  if (!messageIdentifier)
  {
LABEL_12:

LABEL_13:
    goto LABEL_14;
  }

  v11 = messageIdentifier;
  fromHandle = [(BMMailContentEvent *)self fromHandle];
  if (!fromHandle)
  {
LABEL_11:

    goto LABEL_12;
  }

  v13 = fromHandle;
  headers = [(BMMailContentEvent *)self headers];
  if (!headers)
  {
LABEL_10:

    goto LABEL_11;
  }

  v15 = headers;
  subject = [(BMMailContentEvent *)self subject];
  if (!subject)
  {

    goto LABEL_10;
  }

  v17 = subject;
  htmlContent = [(BMMailContentEvent *)self htmlContent];
  if (htmlContent)
  {

    return 1;
  }

  textContent = [(BMMailContentEvent *)self textContent];

  if (textContent)
  {
    return 1;
  }

LABEL_14:
  if (!error)
  {
    return 0;
  }

  v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BMStreamErrorDomain" code:3 userInfo:0];
  v20 = v19;
  result = 0;
  *error = v19;
  return result;
}

- (NSString)debugDescription
{
  proto = [(BMMailContentEvent *)self proto];
  v3 = [proto debugDescription];

  return v3;
}

@end