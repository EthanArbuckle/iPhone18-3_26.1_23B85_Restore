@interface BMMessagesContentEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMMessagesContentEvent)initWithCoder:(id)a3;
- (BMMessagesContentEvent)initWithProto:(id)a3;
- (BMMessagesContentEvent)initWithProtoData:(id)a3;
- (BMMessagesContentEvent)initWithUniqueId:(id)a3 domainId:(id)a4 personaId:(id)a5 absoluteTimestamp:(double)a6 conversationId:(id)a7 fromHandle:(id)a8 toHandles:(id)a9 suggestedNickname:(id)a10 suggestedPhotoPath:(id)a11 content:(id)a12 accountIdentifier:(id)a13 accountHandles:(id)a14 accountType:(id)a15 attachment:(id)a16 URL:(id)a17 contentProtection:(id)a18 isNew:(id)a19 isTwoFactorCode:(id)a20 isFromMe:(id)a21 isGroupThread:(id)a22 isJunk:(id)a23 isRead:(id)a24 isPinned:(id)a25 isBusinessChat:(id)a26 tapbackAssociatedMessageID:(id)a27 tapbackType:(id)a28 messageType:(id)a29 messagesService:(id)a30 messageEffect:(id)a31 isKnownSender:(id)a32 conversationUUID:(id)a33;
- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMMessagesContentEvent

- (id)encodeAsProto
{
  v2 = [(BMMessagesContentEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(BMMessagesContentEvent *)self uniqueId];
  [v3 setUniqueId:v4];

  v5 = [(BMMessagesContentEvent *)self domainId];
  [v3 setDomainId:v5];

  v6 = [(BMMessagesContentEvent *)self personaId];
  [v3 setPersonaId:v6];

  [(BMMessagesContentEvent *)self absoluteTimestamp];
  [v3 setAbsoluteTimestamp:?];
  v7 = [(BMMessagesContentEvent *)self conversationId];
  [v3 setConversationId:v7];

  v8 = [(BMMessagesContentEvent *)self fromHandle];
  v9 = [v8 proto];
  [v3 setFromHandle:v9];

  v10 = [(BMMessagesContentEvent *)self toHandles];
  v11 = [v10 _pas_mappedArrayWithTransform:&__block_literal_global_39];
  v12 = [v11 mutableCopy];
  [v3 setToHandles:v12];

  v13 = [(BMMessagesContentEvent *)self suggestedNickname];
  [v3 setSuggestedNickname:v13];

  v14 = [(BMMessagesContentEvent *)self suggestedPhotoPath];
  [v3 setSuggestedPhotoPath:v14];

  v15 = [(BMMessagesContentEvent *)self content];
  [v3 setContent:v15];

  v16 = [(BMMessagesContentEvent *)self accountIdentifier];
  [v3 setAccountIdentifier:v16];

  v17 = [(BMMessagesContentEvent *)self accountType];
  [v3 setAccountType:v17];

  v18 = [(BMMessagesContentEvent *)self accountHandles];
  v19 = [v18 mutableCopy];
  [v3 setAccountHandles:v19];

  v20 = [(BMMessagesContentEvent *)self attachment];
  v21 = [v20 proto];
  [v3 setAttachment:v21];

  v22 = [(BMMessagesContentEvent *)self URL];
  v23 = [v22 absoluteString];
  [v3 setUrl:v23];

  v24 = [(BMMessagesContentEvent *)self contentProtection];
  [v3 setContentProtection:v24];

  v25 = [(BMMessagesContentEvent *)self isNew];

  if (v25)
  {
    v26 = [(BMMessagesContentEvent *)self isNew];
    [v3 setIsNew:{objc_msgSend(v26, "BOOLValue")}];
  }

  v27 = [(BMMessagesContentEvent *)self isTwoFactorCode];

  if (v27)
  {
    v28 = [(BMMessagesContentEvent *)self isTwoFactorCode];
    [v3 setIsTwoFactorCode:{objc_msgSend(v28, "BOOLValue")}];
  }

  v29 = [(BMMessagesContentEvent *)self isFromMe];

  if (v29)
  {
    v30 = [(BMMessagesContentEvent *)self isFromMe];
    [v3 setIsFromMe:{objc_msgSend(v30, "BOOLValue")}];
  }

  v31 = [(BMMessagesContentEvent *)self isGroupThread];

  if (v31)
  {
    v32 = [(BMMessagesContentEvent *)self isGroupThread];
    [v3 setIsGroupThread:{objc_msgSend(v32, "BOOLValue")}];
  }

  v33 = [(BMMessagesContentEvent *)self isJunk];

  if (v33)
  {
    v34 = [(BMMessagesContentEvent *)self isJunk];
    [v3 setIsJunk:{objc_msgSend(v34, "BOOLValue")}];
  }

  v35 = [(BMMessagesContentEvent *)self isRead];

  if (v35)
  {
    v36 = [(BMMessagesContentEvent *)self isRead];
    [v3 setIsRead:{objc_msgSend(v36, "BOOLValue")}];
  }

  v37 = [(BMMessagesContentEvent *)self isPinned];

  if (v37)
  {
    v38 = [(BMMessagesContentEvent *)self isPinned];
    [v3 setIsPinned:{objc_msgSend(v38, "BOOLValue")}];
  }

  v39 = [(BMMessagesContentEvent *)self isBusinessChat];

  if (v39)
  {
    v40 = [(BMMessagesContentEvent *)self isBusinessChat];
    [v3 setIsBusinessChat:{objc_msgSend(v40, "BOOLValue")}];
  }

  v41 = [(BMMessagesContentEvent *)self tapbackAssociatedMessageID];

  if (v41)
  {
    v42 = [(BMMessagesContentEvent *)self tapbackAssociatedMessageID];
    [v3 setTapbackAssociatedMessageID:v42];
  }

  v43 = [(BMMessagesContentEvent *)self tapbackType];

  if (v43)
  {
    v44 = [(BMMessagesContentEvent *)self tapbackType];
    [v3 setTapbackType:{objc_msgSend(v44, "integerValue")}];
  }

  v45 = [(BMMessagesContentEvent *)self messageType];

  if (v45)
  {
    v46 = [(BMMessagesContentEvent *)self messageType];
    [v3 setMessageType:v46];
  }

  v47 = [(BMMessagesContentEvent *)self messagesService];

  if (v47)
  {
    v48 = [(BMMessagesContentEvent *)self messagesService];
    [v3 setMessagesService:v48];
  }

  v49 = [(BMMessagesContentEvent *)self messageEffect];

  if (v49)
  {
    v50 = [(BMMessagesContentEvent *)self messageEffect];
    [v3 setMessageEffect:{objc_msgSend(v50, "intValue")}];
  }

  v51 = [(BMMessagesContentEvent *)self isKnownSender];

  if (v51)
  {
    v52 = [(BMMessagesContentEvent *)self isKnownSender];
    [v3 setIsKnownSender:{objc_msgSend(v52, "BOOLValue")}];
  }

  v53 = [(BMMessagesContentEvent *)self conversationUUID];

  if (v53)
  {
    v54 = [(BMMessagesContentEvent *)self conversationUUID];
    [v3 setConversationUUID:v54];
  }

  return v3;
}

- (BMMessagesContentEvent)initWithUniqueId:(id)a3 domainId:(id)a4 personaId:(id)a5 absoluteTimestamp:(double)a6 conversationId:(id)a7 fromHandle:(id)a8 toHandles:(id)a9 suggestedNickname:(id)a10 suggestedPhotoPath:(id)a11 content:(id)a12 accountIdentifier:(id)a13 accountHandles:(id)a14 accountType:(id)a15 attachment:(id)a16 URL:(id)a17 contentProtection:(id)a18 isNew:(id)a19 isTwoFactorCode:(id)a20 isFromMe:(id)a21 isGroupThread:(id)a22 isJunk:(id)a23 isRead:(id)a24 isPinned:(id)a25 isBusinessChat:(id)a26 tapbackAssociatedMessageID:(id)a27 tapbackType:(id)a28 messageType:(id)a29 messagesService:(id)a30 messageEffect:(id)a31 isKnownSender:(id)a32 conversationUUID:(id)a33
{
  v77 = a3;
  v48 = a4;
  v73 = a4;
  v49 = a5;
  v72 = a5;
  v50 = a7;
  v38 = a7;
  v51 = a8;
  v76 = a8;
  v71 = a9;
  v70 = a10;
  v69 = a11;
  v75 = a12;
  v68 = a13;
  v67 = a14;
  v66 = a15;
  v65 = a16;
  v64 = a17;
  v63 = a18;
  v62 = a19;
  v61 = a20;
  v60 = a21;
  v39 = a22;
  v59 = a23;
  v40 = a24;
  v41 = a25;
  v53 = a26;
  v42 = a27;
  v43 = a28;
  v58 = a29;
  v57 = a30;
  v56 = a31;
  v55 = a32;
  v54 = a33;
  if (v77)
  {
    if (v38)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BMMessagesContentEvent initWithUniqueId:domainId:personaId:absoluteTimestamp:conversationId:fromHandle:toHandles:suggestedNickname:suggestedPhotoPath:content:accountIdentifier:accountHandles:accountType:attachment:URL:contentProtection:isNew:isTwoFactorCode:isFromMe:isGroupThread:isJunk:isRead:isPinned:isBusinessChat:tapbackAssociatedMessageID:tapbackType:messageType:messagesService:messageEffect:isKnownSender:conversationUUID:];
    if (v38)
    {
      goto LABEL_3;
    }
  }

  [BMMessagesContentEvent initWithUniqueId:domainId:personaId:absoluteTimestamp:conversationId:fromHandle:toHandles:suggestedNickname:suggestedPhotoPath:content:accountIdentifier:accountHandles:accountType:attachment:URL:contentProtection:isNew:isTwoFactorCode:isFromMe:isGroupThread:isJunk:isRead:isPinned:isBusinessChat:tapbackAssociatedMessageID:tapbackType:messageType:messagesService:messageEffect:isKnownSender:conversationUUID:];
LABEL_3:
  if (!v76)
  {
    [BMMessagesContentEvent initWithUniqueId:domainId:personaId:absoluteTimestamp:conversationId:fromHandle:toHandles:suggestedNickname:suggestedPhotoPath:content:accountIdentifier:accountHandles:accountType:attachment:URL:contentProtection:isNew:isTwoFactorCode:isFromMe:isGroupThread:isJunk:isRead:isPinned:isBusinessChat:tapbackAssociatedMessageID:tapbackType:messageType:messagesService:messageEffect:isKnownSender:conversationUUID:];
  }

  if (!v75)
  {
    [BMMessagesContentEvent initWithUniqueId:domainId:personaId:absoluteTimestamp:conversationId:fromHandle:toHandles:suggestedNickname:suggestedPhotoPath:content:accountIdentifier:accountHandles:accountType:attachment:URL:contentProtection:isNew:isTwoFactorCode:isFromMe:isGroupThread:isJunk:isRead:isPinned:isBusinessChat:tapbackAssociatedMessageID:tapbackType:messageType:messagesService:messageEffect:isKnownSender:conversationUUID:];
  }

  v78.receiver = self;
  v78.super_class = BMMessagesContentEvent;
  v44 = [(BMMessagesContentEvent *)&v78 init];
  v45 = v44;
  if (v44)
  {
    objc_storeStrong(&v44->_uniqueId, a3);
    objc_storeStrong(&v45->_domainId, v48);
    objc_storeStrong(&v45->_personaId, v49);
    v45->_absoluteTimestamp = a6;
    objc_storeStrong(&v45->_conversationId, v50);
    objc_storeStrong(&v45->_fromHandle, v51);
    objc_storeStrong(&v45->_toHandles, a9);
    objc_storeStrong(&v45->_suggestedNickname, a10);
    objc_storeStrong(&v45->_suggestedPhotoPath, a11);
    objc_storeStrong(&v45->_content, a12);
    objc_storeStrong(&v45->_accountIdentifier, a13);
    objc_storeStrong(&v45->_accountHandles, a14);
    objc_storeStrong(&v45->_accountType, a15);
    objc_storeStrong(&v45->_attachment, a16);
    objc_storeStrong(&v45->_URL, a17);
    objc_storeStrong(&v45->_contentProtection, a18);
    objc_storeStrong(&v45->_isNew, a19);
    objc_storeStrong(&v45->_isTwoFactorCode, a20);
    objc_storeStrong(&v45->_isFromMe, a21);
    objc_storeStrong(&v45->_isGroupThread, a22);
    objc_storeStrong(&v45->_isJunk, a23);
    objc_storeStrong(&v45->_isRead, a24);
    objc_storeStrong(&v45->_isPinned, a25);
    objc_storeStrong(&v45->_isBusinessChat, a26);
    objc_storeStrong(&v45->_tapbackAssociatedMessageID, a27);
    objc_storeStrong(&v45->_tapbackType, a28);
    objc_storeStrong(&v45->_messageType, a29);
    objc_storeStrong(&v45->_messagesService, a30);
    objc_storeStrong(&v45->_messageEffect, a31);
    objc_storeStrong(&v45->_isKnownSender, a32);
    objc_storeStrong(&v45->_conversationUUID, a33);
  }

  return v45;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (a4 == 2)
  {
    v7 = [[a1 alloc] initWithProtoData:v6];
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BMMessagesContentEvent eventWithData:a4 dataVersion:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  v2 = [(BMMessagesContentEvent *)self proto];
  v3 = [v2 dictionaryRepresentation];

  return v3;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(BMMessagesContentEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BMMessagesContentEvent *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"dat"];
}

- (BMMessagesContentEvent)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E69C5D78];
  v5 = a3;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:v5 expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMMessagesContentEvent *)self initWithProtoData:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BMMessagesContentEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([v5 hasUniqueId]&& [v5 hasAbsoluteTimestamp]&& [v5 hasConversationId]&& [v5 hasFromHandle]&& ([v5 hasContent]& 1) != 0)
      {
        v59 = [v5 uniqueId];
        v58 = [v5 domainId];
        v57 = [v5 personaId];
        [v5 absoluteTimestamp];
        v7 = v6;
        v56 = [v5 conversationId];
        v8 = [BMNamedHandle alloc];
        v34 = [v5 fromHandle];
        v55 = [(BMNamedHandle *)v8 initWithProto:?];
        v33 = [v5 toHandles];
        v54 = [v33 _pas_mappedArrayWithTransform:&__block_literal_global_3];
        v53 = [v5 suggestedNickname];
        v52 = [v5 suggestedPhotoPath];
        v51 = [v5 content];
        v50 = [v5 accountIdentifier];
        v49 = [v5 accountHandles];
        v48 = [v5 accountType];
        v9 = [BMContentAttachment alloc];
        v32 = [v5 attachment];
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

        v46 = [v5 contentProtection];
        v30 = [v5 hasIsNew];
        if (v30)
        {
          v43 = [MEMORY[0x1E696AD98] numberWithBool:{-[NSObject isNew](v5, "isNew")}];
        }

        else
        {
          v43 = 0;
        }

        v29 = [v5 hasIsTwoFactorCode];
        if (v29)
        {
          v42 = [MEMORY[0x1E696AD98] numberWithBool:{-[NSObject isTwoFactorCode](v5, "isTwoFactorCode")}];
        }

        else
        {
          v42 = 0;
        }

        v28 = [v5 hasIsFromMe];
        if (v28)
        {
          v41 = [MEMORY[0x1E696AD98] numberWithBool:{-[NSObject isFromMe](v5, "isFromMe")}];
        }

        else
        {
          v41 = 0;
        }

        v27 = [v5 hasIsGroupThread];
        if (v27)
        {
          v40 = [MEMORY[0x1E696AD98] numberWithBool:{-[NSObject isGroupThread](v5, "isGroupThread")}];
        }

        else
        {
          v40 = 0;
        }

        v26 = [v5 hasIsJunk];
        if (v26)
        {
          v39 = [MEMORY[0x1E696AD98] numberWithBool:{-[NSObject isJunk](v5, "isJunk")}];
        }

        else
        {
          v39 = 0;
        }

        v25 = [v5 hasIsRead];
        if (v25)
        {
          v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[NSObject isRead](v5, "isRead")}];
        }

        else
        {
          v38 = 0;
        }

        v24 = [v5 hasIsPinned];
        if (v24)
        {
          v37 = [MEMORY[0x1E696AD98] numberWithBool:{-[NSObject isPinned](v5, "isPinned")}];
        }

        else
        {
          v37 = 0;
        }

        v23 = [v5 hasIsBusinessChat];
        if (v23)
        {
          v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[NSObject isBusinessChat](v5, "isBusinessChat")}];
        }

        else
        {
          v36 = 0;
        }

        v45 = [v5 tapbackAssociatedMessageID];
        v22 = [v5 hasTapbackType];
        if (v22)
        {
          v35 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[NSObject tapbackType](v5, "tapbackType")}];
        }

        else
        {
          v35 = 0;
        }

        v14 = [v5 messageType];
        v15 = [v5 messagesService];
        v16 = [v5 hasMessageEffect];
        if (v16)
        {
          v17 = [MEMORY[0x1E696AD98] numberWithInt:{-[NSObject messageEffect](v5, "messageEffect")}];
        }

        else
        {
          v17 = 0;
        }

        v18 = [v5 hasIsKnownSender];
        if (v18)
        {
          v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[NSObject isKnownSender](v5, "isKnownSender")}];
        }

        else
        {
          v19 = 0;
        }

        v20 = [v5 conversationUUID];
        self = [(BMMessagesContentEvent *)self initWithUniqueId:v59 domainId:v58 personaId:v57 absoluteTimestamp:v56 conversationId:v55 fromHandle:v54 toHandles:v7 suggestedNickname:v53 suggestedPhotoPath:v52 content:v51 accountIdentifier:v50 accountHandles:v49 accountType:v48 attachment:v47 URL:v44 contentProtection:v46 isNew:v43 isTwoFactorCode:v42 isFromMe:v41 isGroupThread:v40 isJunk:v39 isRead:v38 isPinned:v37 isBusinessChat:v36 tapbackAssociatedMessageID:v45 tapbackType:v35 messageType:v14 messagesService:v15 messageEffect:v17 isKnownSender:v19 conversationUUID:v20];

        if (v18)
        {
        }

        if (v16)
        {
        }

        if (v22)
        {
        }

        if (v23)
        {
        }

        if (v24)
        {
        }

        if (v25)
        {
        }

        if (v26)
        {
        }

        if (v27)
        {
        }

        if (v28)
        {
        }

        if (v29)
        {
        }

        if (v30)
        {
        }

        if (v31)
        {
        }

        v11 = self;
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

    v11 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v11 = 0;
LABEL_18:

  return v11;
}

BMNamedHandle *__40__BMMessagesContentEvent_initWithProto___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[BMNamedHandle alloc] initWithProto:v2];

  return v3;
}

- (BMMessagesContentEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBMessagesContentEvent alloc] initWithData:v4];

    self = [(BMMessagesContentEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uniqueId hash];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
  v5 = [v4 hash];
  v6 = v3 ^ [(NSString *)self->_conversationId hash];

  return v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMessagesContentEvent *)self proto];
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
  v6 = a3;
  if (self->_uniqueId && self->_conversationId && self->_fromHandle && self->_toHandles && self->_content)
  {
    v7 = 1;
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"BMStreamErrorDomain" code:3 userInfo:0];
    *a4 = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end