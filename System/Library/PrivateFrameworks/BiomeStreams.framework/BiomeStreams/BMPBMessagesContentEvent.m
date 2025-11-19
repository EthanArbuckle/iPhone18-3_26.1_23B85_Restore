@interface BMPBMessagesContentEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAccountHandles:(id)a3;
- (void)addToHandles:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsBusinessChat:(BOOL)a3;
- (void)setHasIsFromMe:(BOOL)a3;
- (void)setHasIsGroupThread:(BOOL)a3;
- (void)setHasIsJunk:(BOOL)a3;
- (void)setHasIsKnownSender:(BOOL)a3;
- (void)setHasIsNew:(BOOL)a3;
- (void)setHasIsPinned:(BOOL)a3;
- (void)setHasIsRead:(BOOL)a3;
- (void)setHasIsTwoFactorCode:(BOOL)a3;
- (void)setHasMessageEffect:(BOOL)a3;
- (void)setHasTapbackType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBMessagesContentEvent

- (void)addToHandles:(id)a3
{
  v4 = a3;
  toHandles = self->_toHandles;
  v8 = v4;
  if (!toHandles)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_toHandles;
    self->_toHandles = v6;

    v4 = v8;
    toHandles = self->_toHandles;
  }

  [(NSMutableArray *)toHandles addObject:v4];
}

- (void)addAccountHandles:(id)a3
{
  v4 = a3;
  accountHandles = self->_accountHandles;
  v8 = v4;
  if (!accountHandles)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_accountHandles;
    self->_accountHandles = v6;

    v4 = v8;
    accountHandles = self->_accountHandles;
  }

  [(NSMutableArray *)accountHandles addObject:v4];
}

- (void)setHasIsNew:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasIsTwoFactorCode:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasIsFromMe:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasIsGroupThread:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasIsJunk:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasIsRead:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasIsPinned:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasIsBusinessChat:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasTapbackType:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasMessageEffect:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasIsKnownSender:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBMessagesContentEvent;
  v4 = [(BMPBMessagesContentEvent *)&v8 description];
  v5 = [(BMPBMessagesContentEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  uniqueId = self->_uniqueId;
  if (uniqueId)
  {
    [v3 setObject:uniqueId forKey:@"uniqueId"];
  }

  domainId = self->_domainId;
  if (domainId)
  {
    [v4 setObject:domainId forKey:@"domainId"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
    [v4 setObject:v7 forKey:@"absoluteTimestamp"];
  }

  conversationId = self->_conversationId;
  if (conversationId)
  {
    [v4 setObject:conversationId forKey:@"conversationId"];
  }

  author = self->_author;
  if (author)
  {
    [v4 setObject:author forKey:@"author"];
  }

  suggestedNickname = self->_suggestedNickname;
  if (suggestedNickname)
  {
    [v4 setObject:suggestedNickname forKey:@"suggestedNickname"];
  }

  suggestedPhotoPath = self->_suggestedPhotoPath;
  if (suggestedPhotoPath)
  {
    [v4 setObject:suggestedPhotoPath forKey:@"suggestedPhotoPath"];
  }

  recipients = self->_recipients;
  if (recipients)
  {
    [v4 setObject:recipients forKey:@"recipients"];
  }

  attachmentURL = self->_attachmentURL;
  if (attachmentURL)
  {
    [v4 setObject:attachmentURL forKey:@"attachmentURL"];
  }

  content = self->_content;
  if (content)
  {
    [v4 setObject:content forKey:@"content"];
  }

  fromHandle = self->_fromHandle;
  if (fromHandle)
  {
    v16 = [(BMPBNamedHandle *)fromHandle dictionaryRepresentation];
    [v4 setObject:v16 forKey:@"fromHandle"];
  }

  if ([(NSMutableArray *)self->_toHandles count])
  {
    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_toHandles, "count")}];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v18 = self->_toHandles;
    v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v53;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v53 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v52 + 1) + 8 * i) dictionaryRepresentation];
          [v17 addObject:v23];
        }

        v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v52 objects:v56 count:16];
      }

      while (v20);
    }

    [v4 setObject:v17 forKey:@"toHandles"];
  }

  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier)
  {
    [v4 setObject:accountIdentifier forKey:@"accountIdentifier"];
  }

  accountType = self->_accountType;
  if (accountType)
  {
    [v4 setObject:accountType forKey:@"accountType"];
  }

  accountHandles = self->_accountHandles;
  if (accountHandles)
  {
    [v4 setObject:accountHandles forKey:@"accountHandles"];
  }

  attachment = self->_attachment;
  if (attachment)
  {
    v28 = [(BMPBContentAttachment *)attachment dictionaryRepresentation];
    [v4 setObject:v28 forKey:@"attachment"];
  }

  url = self->_url;
  if (url)
  {
    [v4 setObject:url forKey:@"url"];
  }

  contentProtection = self->_contentProtection;
  if (contentProtection)
  {
    [v4 setObject:contentProtection forKey:@"contentProtection"];
  }

  personaId = self->_personaId;
  if (personaId)
  {
    [v4 setObject:personaId forKey:@"personaId"];
  }

  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v45 = [MEMORY[0x1E696AD98] numberWithBool:self->_isNew];
    [v4 setObject:v45 forKey:@"isNew"];

    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_48:
      if ((has & 0x10) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_72;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_48;
  }

  v46 = [MEMORY[0x1E696AD98] numberWithBool:{self->_isTwoFactorCode, v52}];
  [v4 setObject:v46 forKey:@"isTwoFactorCode"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_49:
    if ((has & 0x20) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_73;
  }

LABEL_72:
  v47 = [MEMORY[0x1E696AD98] numberWithBool:{self->_isFromMe, v52}];
  [v4 setObject:v47 forKey:@"isFromMe"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_50:
    if ((has & 0x40) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_74;
  }

LABEL_73:
  v48 = [MEMORY[0x1E696AD98] numberWithBool:{self->_isGroupThread, v52}];
  [v4 setObject:v48 forKey:@"isGroupThread"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_51:
    if ((has & 0x400) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_75;
  }

LABEL_74:
  v49 = [MEMORY[0x1E696AD98] numberWithBool:{self->_isJunk, v52}];
  [v4 setObject:v49 forKey:@"isJunk"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_52:
    if ((has & 0x200) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_76;
  }

LABEL_75:
  v50 = [MEMORY[0x1E696AD98] numberWithBool:{self->_isRead, v52}];
  [v4 setObject:v50 forKey:@"isRead"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_53:
    if ((has & 8) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_76:
  v51 = [MEMORY[0x1E696AD98] numberWithBool:{self->_isPinned, v52}];
  [v4 setObject:v51 forKey:@"isPinned"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_54:
    v33 = [MEMORY[0x1E696AD98] numberWithBool:{self->_isBusinessChat, v52}];
    [v4 setObject:v33 forKey:@"isBusinessChat"];
  }

LABEL_55:
  tapbackAssociatedMessageID = self->_tapbackAssociatedMessageID;
  if (tapbackAssociatedMessageID)
  {
    [v4 setObject:tapbackAssociatedMessageID forKey:@"tapbackAssociatedMessageID"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v35 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_tapbackType];
    [v4 setObject:v35 forKey:@"tapbackType"];
  }

  messageType = self->_messageType;
  if (messageType)
  {
    [v4 setObject:messageType forKey:@"messageType"];
  }

  messagesService = self->_messagesService;
  if (messagesService)
  {
    [v4 setObject:messagesService forKey:@"messagesService"];
  }

  v38 = self->_has;
  if ((v38 & 4) != 0)
  {
    v39 = [MEMORY[0x1E696AD98] numberWithInt:self->_messageEffect];
    [v4 setObject:v39 forKey:@"messageEffect"];

    v38 = self->_has;
  }

  if ((v38 & 0x80) != 0)
  {
    v40 = [MEMORY[0x1E696AD98] numberWithBool:self->_isKnownSender];
    [v4 setObject:v40 forKey:@"isKnownSender"];
  }

  conversationUUID = self->_conversationUUID;
  if (conversationUUID)
  {
    [v4 setObject:conversationUUID forKey:@"conversationUUID"];
  }

  v42 = v4;

  v43 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)writeTo:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_uniqueId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_domainId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_conversationId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_author)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_suggestedNickname)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_suggestedPhotoPath)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_recipients)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_attachmentURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_content)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fromHandle)
  {
    PBDataWriterWriteSubmessage();
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = self->_toHandles;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v37;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v36 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v8);
  }

  if (self->_accountIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_accountType)
  {
    PBDataWriterWriteStringField();
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = self->_accountHandles;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v33;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v32 + 1) + 8 * j);
        PBDataWriterWriteStringField();
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v14);
  }

  if (self->_attachment)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_url)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contentProtection)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_personaId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x100) != 0)
  {
    isNew = self->_isNew;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_51:
      if ((has & 0x10) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_75;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_51;
  }

  isTwoFactorCode = self->_isTwoFactorCode;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_52:
    if ((has & 0x20) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_76;
  }

LABEL_75:
  isFromMe = self->_isFromMe;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_53:
    if ((has & 0x40) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_77;
  }

LABEL_76:
  isGroupThread = self->_isGroupThread;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_54:
    if ((has & 0x400) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_78;
  }

LABEL_77:
  isJunk = self->_isJunk;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_55:
    if ((has & 0x200) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_79;
  }

LABEL_78:
  isRead = self->_isRead;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_56:
    if ((has & 8) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_79:
  isPinned = self->_isPinned;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 8) != 0)
  {
LABEL_57:
    isBusinessChat = self->_isBusinessChat;
    PBDataWriterWriteBOOLField();
  }

LABEL_58:
  if (self->_tapbackAssociatedMessageID)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    tapbackType = self->_tapbackType;
    PBDataWriterWriteInt64Field();
  }

  if (self->_messageType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_messagesService)
  {
    PBDataWriterWriteStringField();
  }

  v21 = self->_has;
  if ((v21 & 4) != 0)
  {
    messageEffect = self->_messageEffect;
    PBDataWriterWriteInt32Field();
    v21 = self->_has;
  }

  if ((v21 & 0x80) != 0)
  {
    isKnownSender = self->_isKnownSender;
    PBDataWriterWriteBOOLField();
  }

  if (self->_conversationUUID)
  {
    PBDataWriterWriteStringField();
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v16 = v4;
  if (self->_uniqueId)
  {
    [v4 setUniqueId:?];
    v4 = v16;
  }

  if (self->_domainId)
  {
    [v16 setDomainId:?];
    v4 = v16;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_absoluteTimestamp;
    *(v4 + 110) |= 1u;
  }

  if (self->_conversationId)
  {
    [v16 setConversationId:?];
  }

  if (self->_author)
  {
    [v16 setAuthor:?];
  }

  if (self->_suggestedNickname)
  {
    [v16 setSuggestedNickname:?];
  }

  if (self->_suggestedPhotoPath)
  {
    [v16 setSuggestedPhotoPath:?];
  }

  if (self->_recipients)
  {
    [v16 setRecipients:?];
  }

  if (self->_attachmentURL)
  {
    [v16 setAttachmentURL:?];
  }

  if (self->_content)
  {
    [v16 setContent:?];
  }

  if (self->_fromHandle)
  {
    [v16 setFromHandle:?];
  }

  if ([(BMPBMessagesContentEvent *)self toHandlesCount])
  {
    [v16 clearToHandles];
    v5 = [(BMPBMessagesContentEvent *)self toHandlesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(BMPBMessagesContentEvent *)self toHandlesAtIndex:i];
        [v16 addToHandles:v8];
      }
    }
  }

  if (self->_accountIdentifier)
  {
    [v16 setAccountIdentifier:?];
  }

  if (self->_accountType)
  {
    [v16 setAccountType:?];
  }

  if ([(BMPBMessagesContentEvent *)self accountHandlesCount])
  {
    [v16 clearAccountHandles];
    v9 = [(BMPBMessagesContentEvent *)self accountHandlesCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(BMPBMessagesContentEvent *)self accountHandlesAtIndex:j];
        [v16 addAccountHandles:v12];
      }
    }
  }

  if (self->_attachment)
  {
    [v16 setAttachment:?];
  }

  v13 = v16;
  if (self->_url)
  {
    [v16 setUrl:?];
    v13 = v16;
  }

  if (self->_contentProtection)
  {
    [v16 setContentProtection:?];
    v13 = v16;
  }

  if (self->_personaId)
  {
    [v16 setPersonaId:?];
    v13 = v16;
  }

  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v13[213] = self->_isNew;
    *(v13 + 110) |= 0x100u;
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_45:
      if ((has & 0x10) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_71;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_45;
  }

  v13[216] = self->_isTwoFactorCode;
  *(v13 + 110) |= 0x800u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_46:
    if ((has & 0x20) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_72;
  }

LABEL_71:
  v13[209] = self->_isFromMe;
  *(v13 + 110) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_47:
    if ((has & 0x40) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_73;
  }

LABEL_72:
  v13[210] = self->_isGroupThread;
  *(v13 + 110) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_48:
    if ((has & 0x400) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_74;
  }

LABEL_73:
  v13[211] = self->_isJunk;
  *(v13 + 110) |= 0x40u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_49:
    if ((has & 0x200) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_75;
  }

LABEL_74:
  v13[215] = self->_isRead;
  *(v13 + 110) |= 0x400u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_50:
    if ((has & 8) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_75:
  v13[214] = self->_isPinned;
  *(v13 + 110) |= 0x200u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_51:
    v13[208] = self->_isBusinessChat;
    *(v13 + 110) |= 8u;
  }

LABEL_52:
  if (self->_tapbackAssociatedMessageID)
  {
    [v16 setTapbackAssociatedMessageID:?];
    v13 = v16;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v13 + 2) = self->_tapbackType;
    *(v13 + 110) |= 2u;
  }

  if (self->_messageType)
  {
    [v16 setMessageType:?];
    v13 = v16;
  }

  if (self->_messagesService)
  {
    [v16 setMessagesService:?];
    v13 = v16;
  }

  v15 = self->_has;
  if ((v15 & 4) != 0)
  {
    *(v13 + 30) = self->_messageEffect;
    *(v13 + 110) |= 4u;
    v15 = self->_has;
  }

  if ((v15 & 0x80) != 0)
  {
    v13[212] = self->_isKnownSender;
    *(v13 + 110) |= 0x80u;
  }

  if (self->_conversationUUID)
  {
    [v16 setConversationUUID:?];
    v13 = v16;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v72 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uniqueId copyWithZone:a3];
  v7 = *(v5 + 192);
  *(v5 + 192) = v6;

  v8 = [(NSString *)self->_domainId copyWithZone:a3];
  v9 = *(v5 + 104);
  *(v5 + 104) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_absoluteTimestamp;
    *(v5 + 220) |= 1u;
  }

  v10 = [(NSString *)self->_conversationId copyWithZone:a3];
  v11 = *(v5 + 88);
  *(v5 + 88) = v10;

  v12 = [(NSString *)self->_author copyWithZone:a3];
  v13 = *(v5 + 64);
  *(v5 + 64) = v12;

  v14 = [(NSString *)self->_suggestedNickname copyWithZone:a3];
  v15 = *(v5 + 160);
  *(v5 + 160) = v14;

  v16 = [(NSString *)self->_suggestedPhotoPath copyWithZone:a3];
  v17 = *(v5 + 168);
  *(v5 + 168) = v16;

  v18 = [(NSString *)self->_recipients copyWithZone:a3];
  v19 = *(v5 + 152);
  *(v5 + 152) = v18;

  v20 = [(NSString *)self->_attachmentURL copyWithZone:a3];
  v21 = *(v5 + 56);
  *(v5 + 56) = v20;

  v22 = [(NSString *)self->_content copyWithZone:a3];
  v23 = *(v5 + 72);
  *(v5 + 72) = v22;

  v24 = [(BMPBNamedHandle *)self->_fromHandle copyWithZone:a3];
  v25 = *(v5 + 112);
  *(v5 + 112) = v24;

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v26 = self->_toHandles;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v66 objects:v71 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v67;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v67 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [*(*(&v66 + 1) + 8 * i) copyWithZone:a3];
        [v5 addToHandles:v31];
      }

      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v66 objects:v71 count:16];
    }

    while (v28);
  }

  v32 = [(NSString *)self->_accountIdentifier copyWithZone:a3];
  v33 = *(v5 + 32);
  *(v5 + 32) = v32;

  v34 = [(NSString *)self->_accountType copyWithZone:a3];
  v35 = *(v5 + 40);
  *(v5 + 40) = v34;

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v36 = self->_accountHandles;
  v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v62 objects:v70 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v63;
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v63 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = [*(*(&v62 + 1) + 8 * j) copyWithZone:{a3, v62}];
        [v5 addAccountHandles:v41];
      }

      v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v62 objects:v70 count:16];
    }

    while (v38);
  }

  v42 = [(BMPBContentAttachment *)self->_attachment copyWithZone:a3];
  v43 = *(v5 + 48);
  *(v5 + 48) = v42;

  v44 = [(NSString *)self->_url copyWithZone:a3];
  v45 = *(v5 + 200);
  *(v5 + 200) = v44;

  v46 = [(NSString *)self->_contentProtection copyWithZone:a3];
  v47 = *(v5 + 80);
  *(v5 + 80) = v46;

  v48 = [(NSString *)self->_personaId copyWithZone:a3];
  v49 = *(v5 + 144);
  *(v5 + 144) = v48;

  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(v5 + 213) = self->_isNew;
    *(v5 + 220) |= 0x100u;
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_19:
      if ((has & 0x10) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_35;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_19;
  }

  *(v5 + 216) = self->_isTwoFactorCode;
  *(v5 + 220) |= 0x800u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_20:
    if ((has & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v5 + 209) = self->_isFromMe;
  *(v5 + 220) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_21:
    if ((has & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v5 + 210) = self->_isGroupThread;
  *(v5 + 220) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_22:
    if ((has & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v5 + 211) = self->_isJunk;
  *(v5 + 220) |= 0x40u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_23:
    if ((has & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v5 + 215) = self->_isRead;
  *(v5 + 220) |= 0x400u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_24:
    if ((has & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_39:
  *(v5 + 214) = self->_isPinned;
  *(v5 + 220) |= 0x200u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_25:
    *(v5 + 208) = self->_isBusinessChat;
    *(v5 + 220) |= 8u;
  }

LABEL_26:
  v51 = [(NSString *)self->_tapbackAssociatedMessageID copyWithZone:a3, v62];
  v52 = *(v5 + 176);
  *(v5 + 176) = v51;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_tapbackType;
    *(v5 + 220) |= 2u;
  }

  v53 = [(NSString *)self->_messageType copyWithZone:a3];
  v54 = *(v5 + 128);
  *(v5 + 128) = v53;

  v55 = [(NSString *)self->_messagesService copyWithZone:a3];
  v56 = *(v5 + 136);
  *(v5 + 136) = v55;

  v57 = self->_has;
  if ((v57 & 4) != 0)
  {
    *(v5 + 120) = self->_messageEffect;
    *(v5 + 220) |= 4u;
    v57 = self->_has;
  }

  if ((v57 & 0x80) != 0)
  {
    *(v5 + 212) = self->_isKnownSender;
    *(v5 + 220) |= 0x80u;
  }

  v58 = [(NSString *)self->_conversationUUID copyWithZone:a3];
  v59 = *(v5 + 96);
  *(v5 + 96) = v58;

  v60 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_121;
  }

  uniqueId = self->_uniqueId;
  if (uniqueId | *(v4 + 24))
  {
    if (![(NSString *)uniqueId isEqual:?])
    {
      goto LABEL_121;
    }
  }

  domainId = self->_domainId;
  if (domainId | *(v4 + 13))
  {
    if (![(NSString *)domainId isEqual:?])
    {
      goto LABEL_121;
    }
  }

  v7 = *(v4 + 110);
  if (*&self->_has)
  {
    if ((v7 & 1) == 0 || self->_absoluteTimestamp != *(v4 + 1))
    {
      goto LABEL_121;
    }
  }

  else if (v7)
  {
    goto LABEL_121;
  }

  conversationId = self->_conversationId;
  if (conversationId | *(v4 + 11) && ![(NSString *)conversationId isEqual:?])
  {
    goto LABEL_121;
  }

  author = self->_author;
  if (author | *(v4 + 8))
  {
    if (![(NSString *)author isEqual:?])
    {
      goto LABEL_121;
    }
  }

  suggestedNickname = self->_suggestedNickname;
  if (suggestedNickname | *(v4 + 20))
  {
    if (![(NSString *)suggestedNickname isEqual:?])
    {
      goto LABEL_121;
    }
  }

  suggestedPhotoPath = self->_suggestedPhotoPath;
  if (suggestedPhotoPath | *(v4 + 21))
  {
    if (![(NSString *)suggestedPhotoPath isEqual:?])
    {
      goto LABEL_121;
    }
  }

  recipients = self->_recipients;
  if (recipients | *(v4 + 19))
  {
    if (![(NSString *)recipients isEqual:?])
    {
      goto LABEL_121;
    }
  }

  attachmentURL = self->_attachmentURL;
  if (attachmentURL | *(v4 + 7))
  {
    if (![(NSString *)attachmentURL isEqual:?])
    {
      goto LABEL_121;
    }
  }

  content = self->_content;
  if (content | *(v4 + 9))
  {
    if (![(NSString *)content isEqual:?])
    {
      goto LABEL_121;
    }
  }

  fromHandle = self->_fromHandle;
  if (fromHandle | *(v4 + 14))
  {
    if (![(BMPBNamedHandle *)fromHandle isEqual:?])
    {
      goto LABEL_121;
    }
  }

  toHandles = self->_toHandles;
  if (toHandles | *(v4 + 23))
  {
    if (![(NSMutableArray *)toHandles isEqual:?])
    {
      goto LABEL_121;
    }
  }

  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier | *(v4 + 4))
  {
    if (![(NSString *)accountIdentifier isEqual:?])
    {
      goto LABEL_121;
    }
  }

  accountType = self->_accountType;
  if (accountType | *(v4 + 5))
  {
    if (![(NSString *)accountType isEqual:?])
    {
      goto LABEL_121;
    }
  }

  accountHandles = self->_accountHandles;
  if (accountHandles | *(v4 + 3))
  {
    if (![(NSMutableArray *)accountHandles isEqual:?])
    {
      goto LABEL_121;
    }
  }

  attachment = self->_attachment;
  if (attachment | *(v4 + 6))
  {
    if (![(BMPBContentAttachment *)attachment isEqual:?])
    {
      goto LABEL_121;
    }
  }

  url = self->_url;
  if (url | *(v4 + 25))
  {
    if (![(NSString *)url isEqual:?])
    {
      goto LABEL_121;
    }
  }

  contentProtection = self->_contentProtection;
  if (contentProtection | *(v4 + 10))
  {
    if (![(NSString *)contentProtection isEqual:?])
    {
      goto LABEL_121;
    }
  }

  personaId = self->_personaId;
  if (personaId | *(v4 + 18))
  {
    if (![(NSString *)personaId isEqual:?])
    {
      goto LABEL_121;
    }
  }

  has = self->_has;
  v25 = *(v4 + 110);
  if ((has & 0x100) != 0)
  {
    if ((*(v4 + 110) & 0x100) == 0)
    {
      goto LABEL_121;
    }

    v28 = *(v4 + 213);
    if (self->_isNew)
    {
      if ((*(v4 + 213) & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else if (*(v4 + 213))
    {
      goto LABEL_121;
    }
  }

  else if ((*(v4 + 110) & 0x100) != 0)
  {
    goto LABEL_121;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 110) & 0x800) == 0)
    {
      goto LABEL_121;
    }

    v29 = *(v4 + 216);
    if (self->_isTwoFactorCode)
    {
      if ((*(v4 + 216) & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else if (*(v4 + 216))
    {
      goto LABEL_121;
    }
  }

  else if ((*(v4 + 110) & 0x800) != 0)
  {
    goto LABEL_121;
  }

  if ((has & 0x10) != 0)
  {
    if ((v25 & 0x10) == 0)
    {
      goto LABEL_121;
    }

    v30 = *(v4 + 209);
    if (self->_isFromMe)
    {
      if ((*(v4 + 209) & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else if (*(v4 + 209))
    {
      goto LABEL_121;
    }
  }

  else if ((v25 & 0x10) != 0)
  {
    goto LABEL_121;
  }

  if ((has & 0x20) != 0)
  {
    if ((v25 & 0x20) == 0)
    {
      goto LABEL_121;
    }

    v31 = *(v4 + 210);
    if (self->_isGroupThread)
    {
      if ((*(v4 + 210) & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else if (*(v4 + 210))
    {
      goto LABEL_121;
    }
  }

  else if ((v25 & 0x20) != 0)
  {
    goto LABEL_121;
  }

  if ((has & 0x40) != 0)
  {
    if ((v25 & 0x40) == 0)
    {
      goto LABEL_121;
    }

    v32 = *(v4 + 211);
    if (self->_isJunk)
    {
      if ((*(v4 + 211) & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else if (*(v4 + 211))
    {
      goto LABEL_121;
    }
  }

  else if ((v25 & 0x40) != 0)
  {
    goto LABEL_121;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 110) & 0x400) == 0)
    {
      goto LABEL_121;
    }

    v33 = *(v4 + 215);
    if (self->_isRead)
    {
      if ((*(v4 + 215) & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else if (*(v4 + 215))
    {
      goto LABEL_121;
    }
  }

  else if ((*(v4 + 110) & 0x400) != 0)
  {
    goto LABEL_121;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 110) & 0x200) == 0)
    {
      goto LABEL_121;
    }

    v34 = *(v4 + 214);
    if (self->_isPinned)
    {
      if ((*(v4 + 214) & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else if (*(v4 + 214))
    {
      goto LABEL_121;
    }
  }

  else if ((*(v4 + 110) & 0x200) != 0)
  {
    goto LABEL_121;
  }

  if ((has & 8) != 0)
  {
    if ((v25 & 8) == 0)
    {
      goto LABEL_121;
    }

    v35 = *(v4 + 208);
    if (self->_isBusinessChat)
    {
      if ((*(v4 + 208) & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else if (*(v4 + 208))
    {
      goto LABEL_121;
    }
  }

  else if ((v25 & 8) != 0)
  {
    goto LABEL_121;
  }

  tapbackAssociatedMessageID = self->_tapbackAssociatedMessageID;
  if (tapbackAssociatedMessageID | *(v4 + 22))
  {
    if (![(NSString *)tapbackAssociatedMessageID isEqual:?])
    {
      goto LABEL_121;
    }

    has = self->_has;
  }

  v27 = *(v4 + 110);
  if ((has & 2) != 0)
  {
    if ((v27 & 2) == 0 || self->_tapbackType != *(v4 + 2))
    {
      goto LABEL_121;
    }
  }

  else if ((v27 & 2) != 0)
  {
    goto LABEL_121;
  }

  messageType = self->_messageType;
  if (messageType | *(v4 + 16) && ![(NSString *)messageType isEqual:?])
  {
    goto LABEL_121;
  }

  messagesService = self->_messagesService;
  if (messagesService | *(v4 + 17))
  {
    if (![(NSString *)messagesService isEqual:?])
    {
      goto LABEL_121;
    }
  }

  v38 = self->_has;
  v39 = *(v4 + 110);
  if ((v38 & 4) != 0)
  {
    if ((v39 & 4) == 0 || self->_messageEffect != *(v4 + 30))
    {
      goto LABEL_121;
    }
  }

  else if ((v39 & 4) != 0)
  {
    goto LABEL_121;
  }

  if ((v38 & 0x80) == 0)
  {
    if ((v39 & 0x80) == 0)
    {
      goto LABEL_127;
    }

LABEL_121:
    v40 = 0;
    goto LABEL_122;
  }

  if ((v39 & 0x80) == 0)
  {
    goto LABEL_121;
  }

  v43 = *(v4 + 212);
  if (self->_isKnownSender)
  {
    if ((*(v4 + 212) & 1) == 0)
    {
      goto LABEL_121;
    }
  }

  else if (*(v4 + 212))
  {
    goto LABEL_121;
  }

LABEL_127:
  conversationUUID = self->_conversationUUID;
  if (conversationUUID | *(v4 + 12))
  {
    v40 = [(NSString *)conversationUUID isEqual:?];
  }

  else
  {
    v40 = 1;
  }

LABEL_122:

  return v40;
}

- (unint64_t)hash
{
  v47 = [(NSString *)self->_uniqueId hash];
  v46 = [(NSString *)self->_domainId hash];
  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    if (absoluteTimestamp < 0.0)
    {
      absoluteTimestamp = -absoluteTimestamp;
    }

    *v3.i64 = floor(absoluteTimestamp + 0.5);
    v6 = (absoluteTimestamp - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v3.i64[0] = vbslq_s8(vnegq_f64(v7), v4, v3).i64[0];
    v8 = 2654435761u * *v3.i64;
    v9 = v8 + v6;
    if (v6 <= 0.0)
    {
      v9 = 2654435761u * *v3.i64;
    }

    v10 = v8 - fabs(v6);
    if (v6 >= 0.0)
    {
      v10 = v9;
    }

    v45 = v10;
  }

  else
  {
    v45 = 0;
  }

  v44 = [(NSString *)self->_conversationId hash];
  v43 = [(NSString *)self->_author hash];
  v42 = [(NSString *)self->_suggestedNickname hash];
  v41 = [(NSString *)self->_suggestedPhotoPath hash];
  v40 = [(NSString *)self->_recipients hash];
  v39 = [(NSString *)self->_attachmentURL hash];
  v38 = [(NSString *)self->_content hash];
  v37 = [(BMPBNamedHandle *)self->_fromHandle hash];
  v36 = [(NSMutableArray *)self->_toHandles hash];
  v35 = [(NSString *)self->_accountIdentifier hash];
  v34 = [(NSString *)self->_accountType hash];
  v33 = [(NSMutableArray *)self->_accountHandles hash];
  v32 = [(BMPBContentAttachment *)self->_attachment hash];
  v31 = [(NSString *)self->_url hash];
  v30 = [(NSString *)self->_contentProtection hash];
  v29 = [(NSString *)self->_personaId hash];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v28 = 2654435761 * self->_isNew;
    if ((*&self->_has & 0x800) != 0)
    {
LABEL_12:
      v27 = 2654435761 * self->_isTwoFactorCode;
      if ((has & 0x10) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v28 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_12;
    }
  }

  v27 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_13:
    v26 = 2654435761 * self->_isFromMe;
    if ((has & 0x20) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_21:
  v26 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_14:
    v24 = 2654435761 * self->_isGroupThread;
    if ((has & 0x40) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

LABEL_22:
  v24 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_15:
    v12 = 2654435761 * self->_isJunk;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

LABEL_23:
  v12 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_16:
    v13 = 2654435761 * self->_isRead;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_17;
    }

LABEL_25:
    v14 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_26;
  }

LABEL_24:
  v13 = 0;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_25;
  }

LABEL_17:
  v14 = 2654435761 * self->_isPinned;
  if ((has & 8) != 0)
  {
LABEL_18:
    v15 = 2654435761 * self->_isBusinessChat;
    goto LABEL_27;
  }

LABEL_26:
  v15 = 0;
LABEL_27:
  v16 = [(NSString *)self->_tapbackAssociatedMessageID hash];
  if ((*&self->_has & 2) != 0)
  {
    v17 = 2654435761 * self->_tapbackType;
  }

  else
  {
    v17 = 0;
  }

  v18 = [(NSString *)self->_messageType hash];
  v19 = [(NSString *)self->_messagesService hash];
  v20 = self->_has;
  if ((v20 & 4) != 0)
  {
    v21 = 2654435761 * self->_messageEffect;
    if ((v20 & 0x80) != 0)
    {
      goto LABEL_32;
    }

LABEL_34:
    v22 = 0;
    return v46 ^ v47 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v21 ^ v22 ^ [(NSString *)self->_conversationUUID hash];
  }

  v21 = 0;
  if ((v20 & 0x80) == 0)
  {
    goto LABEL_34;
  }

LABEL_32:
  v22 = 2654435761 * self->_isKnownSender;
  return v46 ^ v47 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v21 ^ v22 ^ [(NSString *)self->_conversationUUID hash];
}

- (void)mergeFrom:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 24))
  {
    [(BMPBMessagesContentEvent *)self setUniqueId:?];
  }

  if (*(v4 + 13))
  {
    [(BMPBMessagesContentEvent *)self setDomainId:?];
  }

  if (*(v4 + 110))
  {
    self->_absoluteTimestamp = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 11))
  {
    [(BMPBMessagesContentEvent *)self setConversationId:?];
  }

  if (*(v4 + 8))
  {
    [(BMPBMessagesContentEvent *)self setAuthor:?];
  }

  if (*(v4 + 20))
  {
    [(BMPBMessagesContentEvent *)self setSuggestedNickname:?];
  }

  if (*(v4 + 21))
  {
    [(BMPBMessagesContentEvent *)self setSuggestedPhotoPath:?];
  }

  if (*(v4 + 19))
  {
    [(BMPBMessagesContentEvent *)self setRecipients:?];
  }

  if (*(v4 + 7))
  {
    [(BMPBMessagesContentEvent *)self setAttachmentURL:?];
  }

  if (*(v4 + 9))
  {
    [(BMPBMessagesContentEvent *)self setContent:?];
  }

  fromHandle = self->_fromHandle;
  v6 = *(v4 + 14);
  if (fromHandle)
  {
    if (v6)
    {
      [(BMPBNamedHandle *)fromHandle mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(BMPBMessagesContentEvent *)self setFromHandle:?];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = *(v4 + 23);
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(BMPBMessagesContentEvent *)self addToHandles:*(*(&v26 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }

  if (*(v4 + 4))
  {
    [(BMPBMessagesContentEvent *)self setAccountIdentifier:?];
  }

  if (*(v4 + 5))
  {
    [(BMPBMessagesContentEvent *)self setAccountType:?];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = *(v4 + 3);
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(BMPBMessagesContentEvent *)self addAccountHandles:*(*(&v22 + 1) + 8 * j), v22];
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v14);
  }

  attachment = self->_attachment;
  v18 = *(v4 + 6);
  if (attachment)
  {
    if (v18)
    {
      [(BMPBContentAttachment *)attachment mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(BMPBMessagesContentEvent *)self setAttachment:?];
  }

  if (*(v4 + 25))
  {
    [(BMPBMessagesContentEvent *)self setUrl:?];
  }

  if (*(v4 + 10))
  {
    [(BMPBMessagesContentEvent *)self setContentProtection:?];
  }

  if (*(v4 + 18))
  {
    [(BMPBMessagesContentEvent *)self setPersonaId:?];
  }

  v19 = *(v4 + 110);
  if ((v19 & 0x100) != 0)
  {
    self->_isNew = *(v4 + 213);
    *&self->_has |= 0x100u;
    v19 = *(v4 + 110);
    if ((v19 & 0x800) == 0)
    {
LABEL_57:
      if ((v19 & 0x10) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_81;
    }
  }

  else if ((*(v4 + 110) & 0x800) == 0)
  {
    goto LABEL_57;
  }

  self->_isTwoFactorCode = *(v4 + 216);
  *&self->_has |= 0x800u;
  v19 = *(v4 + 110);
  if ((v19 & 0x10) == 0)
  {
LABEL_58:
    if ((v19 & 0x20) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_82;
  }

LABEL_81:
  self->_isFromMe = *(v4 + 209);
  *&self->_has |= 0x10u;
  v19 = *(v4 + 110);
  if ((v19 & 0x20) == 0)
  {
LABEL_59:
    if ((v19 & 0x40) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_83;
  }

LABEL_82:
  self->_isGroupThread = *(v4 + 210);
  *&self->_has |= 0x20u;
  v19 = *(v4 + 110);
  if ((v19 & 0x40) == 0)
  {
LABEL_60:
    if ((v19 & 0x400) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_84;
  }

LABEL_83:
  self->_isJunk = *(v4 + 211);
  *&self->_has |= 0x40u;
  v19 = *(v4 + 110);
  if ((v19 & 0x400) == 0)
  {
LABEL_61:
    if ((v19 & 0x200) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_85;
  }

LABEL_84:
  self->_isRead = *(v4 + 215);
  *&self->_has |= 0x400u;
  v19 = *(v4 + 110);
  if ((v19 & 0x200) == 0)
  {
LABEL_62:
    if ((v19 & 8) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

LABEL_85:
  self->_isPinned = *(v4 + 214);
  *&self->_has |= 0x200u;
  if ((*(v4 + 110) & 8) != 0)
  {
LABEL_63:
    self->_isBusinessChat = *(v4 + 208);
    *&self->_has |= 8u;
  }

LABEL_64:
  if (*(v4 + 22))
  {
    [(BMPBMessagesContentEvent *)self setTapbackAssociatedMessageID:?];
  }

  if ((*(v4 + 110) & 2) != 0)
  {
    self->_tapbackType = *(v4 + 2);
    *&self->_has |= 2u;
  }

  if (*(v4 + 16))
  {
    [(BMPBMessagesContentEvent *)self setMessageType:?];
  }

  if (*(v4 + 17))
  {
    [(BMPBMessagesContentEvent *)self setMessagesService:?];
  }

  v20 = *(v4 + 110);
  if ((v20 & 4) != 0)
  {
    self->_messageEffect = *(v4 + 30);
    *&self->_has |= 4u;
    v20 = *(v4 + 110);
  }

  if ((v20 & 0x80) != 0)
  {
    self->_isKnownSender = *(v4 + 212);
    *&self->_has |= 0x80u;
  }

  if (*(v4 + 12))
  {
    [(BMPBMessagesContentEvent *)self setConversationUUID:?];
  }

  v21 = *MEMORY[0x1E69E9840];
}

@end