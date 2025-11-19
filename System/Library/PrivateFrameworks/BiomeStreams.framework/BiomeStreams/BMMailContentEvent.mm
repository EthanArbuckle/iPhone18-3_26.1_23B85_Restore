@interface BMMailContentEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMMailContentEvent)initWithCoder:(id)a3;
- (BMMailContentEvent)initWithProto:(id)a3;
- (BMMailContentEvent)initWithProtoData:(id)a3;
- (BMMailContentEvent)initWithUniqueId:(id)a3 domainId:(id)a4 personaId:(id)a5 absoluteTimestamp:(double)a6 accountIdentifier:(id)a7 messageIdentifier:(id)a8 fromHandle:(id)a9 toHandles:(id)a10 ccHandles:(id)a11 bccHandles:(id)a12 headers:(id)a13 subject:(id)a14 htmlContent:(id)a15 textContent:(id)a16 isFullyDownloaded:(BOOL)a17 securityMethod:(id)a18 accountHandles:(id)a19 replyTo:(id)a20 mailboxIdentifiers:(id)a21 listId:(id)a22 accountType:(id)a23 attachments:(id)a24 contentProtection:(id)a25 conversationId:(id)a26 dateReceived:(id)a27 mailCategories:(id)a28 isNew:(id)a29 isTwoFactorCode:(id)a30 isFromMe:(id)a31 isJunk:(id)a32 isRead:(id)a33 isVIP:(id)a34 isFlagged:(id)a35;
- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)debugDescription;
- (id)_initWithUniqueId:(id)a3 domainId:(id)a4 personaId:(id)a5;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (void)_inflateFromProto:(id)a3;
- (void)_loadData;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMMailContentEvent

- (id)proto
{
  [(BMMailContentEvent *)self _loadData];
  proto = self->_proto;

  return proto;
}

- (void)_inflateFromProto:(id)a3
{
  v75 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_proto)
  {
    [BMMailContentEvent _inflateFromProto:];
  }

  v5 = [BMNamedHandle alloc];
  v6 = [(BMPBMailContentEvent *)v4 fromHandle];
  v7 = [(BMNamedHandle *)v5 initWithProto:v6];
  fromHandle = self->_fromHandle;
  self->_fromHandle = v7;

  if ([(BMPBMailContentEvent *)v4 hasReplyTo])
  {
    v9 = [BMNamedHandle alloc];
    v10 = [(BMPBMailContentEvent *)v4 replyTo];
    v11 = [(BMNamedHandle *)v9 initWithProto:v10];
    replyTo = self->_replyTo;
    self->_replyTo = v11;
  }

  if ([(BMPBMailContentEvent *)v4 hasListId])
  {
    v13 = [BMNamedHandle alloc];
    v14 = [(BMPBMailContentEvent *)v4 listId];
    v15 = [(BMNamedHandle *)v13 initWithProto:v14];
    listId = self->_listId;
    self->_listId = v15;
  }

  v17 = [(BMPBMailContentEvent *)v4 toHandles];
  v18 = [v17 _pas_mappedArrayWithTransform:&__block_literal_global_19];
  toHandles = self->_toHandles;
  self->_toHandles = v18;

  v20 = [(BMPBMailContentEvent *)v4 ccHandles];
  v21 = [v20 _pas_mappedArrayWithTransform:&__block_literal_global_19];
  ccHandles = self->_ccHandles;
  self->_ccHandles = v21;

  v23 = [(BMPBMailContentEvent *)v4 bccHandles];
  v24 = [v23 _pas_mappedArrayWithTransform:&__block_literal_global_21];
  bccHandles = self->_bccHandles;
  v67 = self;
  self->_bccHandles = v24;

  v26 = objc_alloc(MEMORY[0x1E695DF90]);
  v27 = [(BMPBMailContentEvent *)v4 headers];
  v28 = [v26 initWithCapacity:{objc_msgSend(v27, "count")}];

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v66 = v4;
  obj = [(BMPBMailContentEvent *)v4 headers];
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
        v36 = [v33 value];
        v37 = [v28 objectForKeyedSubscript:v35];
        if (v37)
        {
          v38 = [v28 objectForKeyedSubscript:v35];
          v39 = [v38 arrayByAddingObject:v36];
          [v28 setObject:v39 forKeyedSubscript:v35];
        }

        else
        {
          v73 = v36;
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
  headers = v67->_headers;
  v67->_headers = v40;

  v42 = [(BMPBMailContentEvent *)v66 attachments];
  v43 = [v42 _pas_mappedArrayWithTransform:&__block_literal_global_26];
  attachments = v67->_attachments;
  v67->_attachments = v43;

  if ([(BMPBMailContentEvent *)v66 hasDateReceived])
  {
    v45 = objc_alloc(MEMORY[0x1E695DF00]);
    [(BMPBMailContentEvent *)v66 dateReceived];
    v46 = [v45 initWithTimeIntervalSinceReferenceDate:?];
    dateReceived = v67->_dateReceived;
    v67->_dateReceived = v46;
  }

  if ([(BMPBMailContentEvent *)v66 hasMailCategories])
  {
    v48 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPBMailContentEvent mailCategories](v66, "mailCategories")}];
    mailCategories = v67->_mailCategories;
    v67->_mailCategories = v48;
  }

  if ([(BMPBMailContentEvent *)v66 hasIsNew])
  {
    v50 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPBMailContentEvent isNew](v66, "isNew")}];
    isNew = v67->_isNew;
    v67->_isNew = v50;
  }

  if ([(BMPBMailContentEvent *)v66 hasIsTwoFactorCode])
  {
    v52 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPBMailContentEvent isTwoFactorCode](v66, "isTwoFactorCode")}];
    isTwoFactorCode = v67->_isTwoFactorCode;
    v67->_isTwoFactorCode = v52;
  }

  if ([(BMPBMailContentEvent *)v66 hasIsFromMe])
  {
    v54 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPBMailContentEvent isFromMe](v66, "isFromMe")}];
    isFromMe = v67->_isFromMe;
    v67->_isFromMe = v54;
  }

  if ([(BMPBMailContentEvent *)v66 hasIsJunk])
  {
    v56 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPBMailContentEvent isJunk](v66, "isJunk")}];
    isJunk = v67->_isJunk;
    v67->_isJunk = v56;
  }

  if ([(BMPBMailContentEvent *)v66 hasIsRead])
  {
    v58 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPBMailContentEvent isRead](v66, "isRead")}];
    isRead = v67->_isRead;
    v67->_isRead = v58;
  }

  if ([(BMPBMailContentEvent *)v66 hasIsVIP])
  {
    v60 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPBMailContentEvent isVIP](v66, "isVIP")}];
    isVIP = v67->_isVIP;
    v67->_isVIP = v60;
  }

  if ([(BMPBMailContentEvent *)v66 hasIsFlagged])
  {
    v62 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPBMailContentEvent isFlagged](v66, "isFlagged")}];
    isFlagged = v67->_isFlagged;
    v67->_isFlagged = v62;
  }

  proto = v67->_proto;
  v67->_proto = v66;

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

- (id)_initWithUniqueId:(id)a3 domainId:(id)a4 personaId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = BMMailContentEvent;
  v11 = [(BMMailContentEvent *)&v20 init];
  v12 = v11;
  if (v11)
  {
    v11->_protoLock._os_unfair_lock_opaque = 0;
    v13 = [v8 copy];
    uniqueId = v12->_uniqueId;
    v12->_uniqueId = v13;

    v15 = [v9 copy];
    domainId = v12->_domainId;
    v12->_domainId = v15;

    v17 = [v10 copy];
    personaId = v12->_personaId;
    v12->_personaId = v17;
  }

  return v12;
}

- (BMMailContentEvent)initWithUniqueId:(id)a3 domainId:(id)a4 personaId:(id)a5 absoluteTimestamp:(double)a6 accountIdentifier:(id)a7 messageIdentifier:(id)a8 fromHandle:(id)a9 toHandles:(id)a10 ccHandles:(id)a11 bccHandles:(id)a12 headers:(id)a13 subject:(id)a14 htmlContent:(id)a15 textContent:(id)a16 isFullyDownloaded:(BOOL)a17 securityMethod:(id)a18 accountHandles:(id)a19 replyTo:(id)a20 mailboxIdentifiers:(id)a21 listId:(id)a22 accountType:(id)a23 attachments:(id)a24 contentProtection:(id)a25 conversationId:(id)a26 dateReceived:(id)a27 mailCategories:(id)a28 isNew:(id)a29 isTwoFactorCode:(id)a30 isFromMe:(id)a31 isJunk:(id)a32 isRead:(id)a33 isVIP:(id)a34 isFlagged:(id)a35
{
  v40 = a3;
  v41 = a4;
  v42 = a5;
  v43 = a7;
  v44 = a8;
  v96 = a9;
  v94 = a10;
  v93 = a11;
  v92 = a12;
  v45 = a13;
  v46 = a14;
  v91 = a15;
  v90 = a16;
  v89 = a18;
  v88 = a19;
  v87 = a20;
  v86 = a21;
  v85 = a22;
  v84 = a23;
  v83 = a24;
  v82 = a25;
  v81 = a26;
  v80 = a27;
  v47 = a28;
  v79 = a29;
  v78 = a30;
  v77 = a31;
  v76 = a32;
  v75 = a33;
  v74 = a34;
  v73 = a35;
  if (v40)
  {
    if (v43)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BMMailContentEvent initWithUniqueId:domainId:personaId:absoluteTimestamp:accountIdentifier:messageIdentifier:fromHandle:toHandles:ccHandles:bccHandles:headers:subject:htmlContent:textContent:isFullyDownloaded:securityMethod:accountHandles:replyTo:mailboxIdentifiers:listId:accountType:attachments:contentProtection:conversationId:dateReceived:mailCategories:isNew:isTwoFactorCode:isFromMe:isJunk:isRead:isVIP:isFlagged:];
    if (v43)
    {
      goto LABEL_3;
    }
  }

  [BMMailContentEvent initWithUniqueId:domainId:personaId:absoluteTimestamp:accountIdentifier:messageIdentifier:fromHandle:toHandles:ccHandles:bccHandles:headers:subject:htmlContent:textContent:isFullyDownloaded:securityMethod:accountHandles:replyTo:mailboxIdentifiers:listId:accountType:attachments:contentProtection:conversationId:dateReceived:mailCategories:isNew:isTwoFactorCode:isFromMe:isJunk:isRead:isVIP:isFlagged:];
LABEL_3:
  v48 = v41;
  if (!v44)
  {
    [BMMailContentEvent initWithUniqueId:domainId:personaId:absoluteTimestamp:accountIdentifier:messageIdentifier:fromHandle:toHandles:ccHandles:bccHandles:headers:subject:htmlContent:textContent:isFullyDownloaded:securityMethod:accountHandles:replyTo:mailboxIdentifiers:listId:accountType:attachments:contentProtection:conversationId:dateReceived:mailCategories:isNew:isTwoFactorCode:isFromMe:isJunk:isRead:isVIP:isFlagged:];
  }

  v49 = v47;
  if (v96)
  {
    if (v45)
    {
      goto LABEL_7;
    }

LABEL_34:
    [BMMailContentEvent initWithUniqueId:domainId:personaId:absoluteTimestamp:accountIdentifier:messageIdentifier:fromHandle:toHandles:ccHandles:bccHandles:headers:subject:htmlContent:textContent:isFullyDownloaded:securityMethod:accountHandles:replyTo:mailboxIdentifiers:listId:accountType:attachments:contentProtection:conversationId:dateReceived:mailCategories:isNew:isTwoFactorCode:isFromMe:isJunk:isRead:isVIP:isFlagged:];
    if (v46)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

  [BMMailContentEvent initWithUniqueId:domainId:personaId:absoluteTimestamp:accountIdentifier:messageIdentifier:fromHandle:toHandles:ccHandles:bccHandles:headers:subject:htmlContent:textContent:isFullyDownloaded:securityMethod:accountHandles:replyTo:mailboxIdentifiers:listId:accountType:attachments:contentProtection:conversationId:dateReceived:mailCategories:isNew:isTwoFactorCode:isFromMe:isJunk:isRead:isVIP:isFlagged:];
  if (!v45)
  {
    goto LABEL_34;
  }

LABEL_7:
  if (v46)
  {
    goto LABEL_8;
  }

LABEL_35:
  [BMMailContentEvent initWithUniqueId:domainId:personaId:absoluteTimestamp:accountIdentifier:messageIdentifier:fromHandle:toHandles:ccHandles:bccHandles:headers:subject:htmlContent:textContent:isFullyDownloaded:securityMethod:accountHandles:replyTo:mailboxIdentifiers:listId:accountType:attachments:contentProtection:conversationId:dateReceived:mailCategories:isNew:isTwoFactorCode:isFromMe:isJunk:isRead:isVIP:isFlagged:];
LABEL_8:
  v50 = [(BMMailContentEvent *)self _initWithUniqueId:v40 domainId:v48 personaId:v42];
  if (v50)
  {
    v72 = v46;
    v51 = objc_opt_new();
    [v51 setUniqueId:v40];
    [v51 setDomainId:v48];
    v71 = v42;
    [v51 setPersonaId:v42];
    [v51 setAbsoluteTimestamp:a6];
    v69 = v43;
    [v51 setAccountIdentifier:v43];
    v68 = v44;
    [v51 setMessageIdentifier:v44];
    v52 = [v96 proto];
    [v51 setFromHandle:v52];

    v53 = [v94 _pas_mappedArrayWithTransform:&__block_literal_global_51];
    v54 = [v53 mutableCopy];
    [v51 setToHandles:v54];

    v55 = [v93 _pas_mappedArrayWithTransform:&__block_literal_global_53];
    v56 = [v55 mutableCopy];
    [v51 setCcHandles:v56];

    v57 = [v92 _pas_mappedArrayWithTransform:&__block_literal_global_55];
    v58 = [v57 mutableCopy];
    [v51 setBccHandles:v58];

    if ([v45 count])
    {
      v59 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v45, "count")}];
      v97[0] = MEMORY[0x1E69E9820];
      v97[1] = 3221225472;
      v97[2] = __422__BMMailContentEvent_initWithUniqueId_domainId_personaId_absoluteTimestamp_accountIdentifier_messageIdentifier_fromHandle_toHandles_ccHandles_bccHandles_headers_subject_htmlContent_textContent_isFullyDownloaded_securityMethod_accountHandles_replyTo_mailboxIdentifiers_listId_accountType_attachments_contentProtection_conversationId_dateReceived_mailCategories_isNew_isTwoFactorCode_isFromMe_isJunk_isRead_isVIP_isFlagged___block_invoke_4;
      v97[3] = &unk_1E6E545C8;
      v98 = v59;
      v60 = v59;
      [v45 enumerateKeysAndObjectsUsingBlock:v97];
      [v51 setHeaders:v60];
    }

    [v51 setSubject:v72];
    [v51 setHtmlContent:v91];
    [v51 setTextContent:v90];
    [v51 setIsFullyDownloaded:a17];
    [v51 setSecurityMethod:v89];
    v61 = [v88 mutableCopy];
    [v51 setAccountHandles:v61];

    v62 = [v87 proto];
    [v51 setReplyTo:v62];

    v63 = [v86 mutableCopy];
    [v51 setMailboxIdentifiers:v63];

    v64 = [v85 proto];
    [v51 setListId:v64];

    [v51 setAccountType:v84];
    v65 = [v83 _pas_mappedArrayWithTransform:&__block_literal_global_61];
    v66 = [v65 mutableCopy];
    [v51 setAttachments:v66];

    [v51 setContentProtection:v82];
    [v51 setConversationId:v81];
    if (v80)
    {
      [v80 timeIntervalSinceReferenceDate];
      [v51 setDateReceived:?];
    }

    v43 = v69;
    v42 = v71;
    v44 = v68;
    v49 = v47;
    if (v47)
    {
      [v51 setMailCategories:{objc_msgSend(v47, "intValue")}];
    }

    if (v79)
    {
      [v51 setIsNew:{objc_msgSend(v79, "BOOLValue")}];
    }

    if (v78)
    {
      [v51 setIsTwoFactorCode:{objc_msgSend(v78, "BOOLValue")}];
    }

    if (v77)
    {
      [v51 setIsFromMe:{objc_msgSend(v77, "BOOLValue")}];
    }

    if (v76)
    {
      [v51 setIsJunk:{objc_msgSend(v76, "BOOLValue")}];
    }

    if (v75)
    {
      [v51 setIsRead:{objc_msgSend(v75, "BOOLValue")}];
    }

    if (v74)
    {
      [v51 setIsVIP:{objc_msgSend(v74, "BOOLValue")}];
    }

    if (v73)
    {
      [v51 setIsFlagged:{objc_msgSend(v73, "BOOLValue")}];
    }

    [(BMMailContentEvent *)v50 _inflateFromProto:v51];

    v46 = v72;
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (a4 == 3)
  {
    v7 = [[a1 alloc] initWithProtoData:v6];
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BMMailContentEvent eventWithData:a4 dataVersion:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  v2 = [(BMMailContentEvent *)self proto];
  v3 = [v2 dictionaryRepresentation];

  v4 = [v3 objectForKeyedSubscript:@"htmlContent"];

  if (v4)
  {
    v5 = [v3 mutableCopy];
    v6 = [v5 objectForKeyedSubscript:@"htmlContent"];
    v7 = [v6 base64EncodedStringWithOptions:0];
    [v5 setObject:v7 forKeyedSubscript:@"htmlContent"];

    v3 = v5;
  }

  return v3;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(BMMailContentEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BMMailContentEvent *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"dat"];
}

- (BMMailContentEvent)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E69C5D78];
  v5 = a3;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:v5 expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMMailContentEvent *)self initWithProtoData:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)encodeAsProto
{
  v2 = [(BMMailContentEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMMailContentEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    if ([v5 hasUniqueId] && objc_msgSend(v5, "hasAbsoluteTimestamp") && objc_msgSend(v5, "hasAccountIdentifier") && objc_msgSend(v5, "hasMessageIdentifier") && objc_msgSend(v5, "hasFromHandle") && objc_msgSend(v5, "hasSubject") && objc_msgSend(v5, "hasIsFullyDownloaded"))
    {
      v6 = [v5 uniqueId];
      v7 = [v5 domainId];
      v8 = [v5 personaId];
      v9 = [(BMMailContentEvent *)self _initWithUniqueId:v6 domainId:v7 personaId:v8];

      if (v9)
      {
        [v9 _inflateFromProto:v5];
      }

      self = v9;
      v10 = self;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BMMailContentEvent)initWithProtoData:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [[BMPBMailContentEventFilteringSubset alloc] initWithData:v5];
    v7 = v6;
    if (v6)
    {
      v8 = [(BMPBMailContentEventFilteringSubset *)v6 uniqueId];
      v9 = [(BMPBMailContentEventFilteringSubset *)v7 domainId];
      v10 = [(BMPBMailContentEventFilteringSubset *)v7 personaId];
      v11 = [(BMMailContentEvent *)self _initWithUniqueId:v8 domainId:v9 personaId:v10];

      if (v11)
      {
        objc_storeStrong(v11 + 1, a3);
      }

      self = v11;
      v12 = self;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMailContentEvent *)self proto];
    v7 = [v5 proto];

    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4
{
  v6 = [(BMMailContentEvent *)self uniqueId];
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  v8 = [(BMMailContentEvent *)self accountIdentifier];
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v8;
  v10 = [(BMMailContentEvent *)self messageIdentifier];
  if (!v10)
  {
LABEL_12:

LABEL_13:
    goto LABEL_14;
  }

  v11 = v10;
  v12 = [(BMMailContentEvent *)self fromHandle];
  if (!v12)
  {
LABEL_11:

    goto LABEL_12;
  }

  v13 = v12;
  v14 = [(BMMailContentEvent *)self headers];
  if (!v14)
  {
LABEL_10:

    goto LABEL_11;
  }

  v15 = v14;
  v16 = [(BMMailContentEvent *)self subject];
  if (!v16)
  {

    goto LABEL_10;
  }

  v17 = v16;
  v18 = [(BMMailContentEvent *)self htmlContent];
  if (v18)
  {

    return 1;
  }

  v22 = [(BMMailContentEvent *)self textContent];

  if (v22)
  {
    return 1;
  }

LABEL_14:
  if (!a4)
  {
    return 0;
  }

  v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BMStreamErrorDomain" code:3 userInfo:0];
  v20 = v19;
  result = 0;
  *a4 = v19;
  return result;
}

- (NSString)debugDescription
{
  v2 = [(BMMailContentEvent *)self proto];
  v3 = [v2 debugDescription];

  return v3;
}

@end