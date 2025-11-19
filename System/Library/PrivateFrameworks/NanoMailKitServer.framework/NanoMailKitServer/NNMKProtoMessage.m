@interface NNMKProtoMessage
+ (id)protoMessageFromMessage:(id)a3 organizedByThread:(BOOL)a4 sanitizeMessageId:(BOOL)a5 supportsStandaloneMode:(BOOL)a6;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addBcc:(id)a3;
- (void)addCc:(id)a3;
- (void)addTo:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsThreadSpecific:(BOOL)a3;
- (void)setHasStatus:(BOOL)a3;
- (void)setHasStatusVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NNMKProtoMessage

- (void)setHasStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addTo:(id)a3
{
  v4 = a3;
  tos = self->_tos;
  v8 = v4;
  if (!tos)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_tos;
    self->_tos = v6;

    v4 = v8;
    tos = self->_tos;
  }

  [(NSMutableArray *)tos addObject:v4];
}

- (void)addCc:(id)a3
{
  v4 = a3;
  ccs = self->_ccs;
  v8 = v4;
  if (!ccs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_ccs;
    self->_ccs = v6;

    v4 = v8;
    ccs = self->_ccs;
  }

  [(NSMutableArray *)ccs addObject:v4];
}

- (void)addBcc:(id)a3
{
  v4 = a3;
  bccs = self->_bccs;
  v8 = v4;
  if (!bccs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_bccs;
    self->_bccs = v6;

    v4 = v8;
    bccs = self->_bccs;
  }

  [(NSMutableArray *)bccs addObject:v4];
}

- (void)setHasIsThreadSpecific:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasStatusVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NNMKProtoMessage;
  v4 = [(NNMKProtoMessage *)&v8 description];
  v5 = [(NNMKProtoMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  messageId = self->_messageId;
  if (messageId)
  {
    [v3 setObject:messageId forKey:@"messageId"];
  }

  accountId = self->_accountId;
  if (accountId)
  {
    [v4 setObject:accountId forKey:@"accountId"];
  }

  conversationId = self->_conversationId;
  if (conversationId)
  {
    [v4 setObject:conversationId forKey:@"conversationId"];
  }

  subject = self->_subject;
  if (subject)
  {
    [v4 setObject:subject forKey:@"subject"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_status];
    [v4 setObject:v9 forKey:@"status"];
  }

  from = self->_from;
  if (from)
  {
    [v4 setObject:from forKey:@"from"];
  }

  tos = self->_tos;
  if (tos)
  {
    [v4 setObject:tos forKey:@"to"];
  }

  ccs = self->_ccs;
  if (ccs)
  {
    [v4 setObject:ccs forKey:@"cc"];
  }

  dateSent = self->_dateSent;
  if (dateSent)
  {
    [v4 setObject:dateSent forKey:@"dateSent"];
  }

  dateReceived = self->_dateReceived;
  if (dateReceived)
  {
    [v4 setObject:dateReceived forKey:@"dateReceived"];
  }

  messageIdHeader = self->_messageIdHeader;
  if (messageIdHeader)
  {
    [v4 setObject:messageIdHeader forKey:@"messageIdHeader"];
  }

  bccs = self->_bccs;
  if (bccs)
  {
    [v4 setObject:bccs forKey:@"bcc"];
  }

  remoteId = self->_remoteId;
  if (remoteId)
  {
    [v4 setObject:remoteId forKey:@"remoteId"];
  }

  notificationMessageId = self->_notificationMessageId;
  if (notificationMessageId)
  {
    [v4 setObject:notificationMessageId forKey:@"notificationMessageId"];
  }

  mailboxId = self->_mailboxId;
  if (mailboxId)
  {
    [v4 setObject:mailboxId forKey:@"mailboxId"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithBool:self->_isThreadSpecific];
    [v4 setObject:v21 forKey:@"isThreadSpecific"];

    has = self->_has;
  }

  if (has)
  {
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_isSpecialMailboxSpecific];
    [v4 setObject:v22 forKey:@"isSpecialMailboxSpecific"];
  }

  publisherBulletinId = self->_publisherBulletinId;
  if (publisherBulletinId)
  {
    [v4 setObject:publisherBulletinId forKey:@"publisherBulletinId"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_statusVersion];
    [v4 setObject:v24 forKey:@"statusVersion"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_messageId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_accountId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_conversationId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subject)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    status = self->_status;
    PBDataWriterWriteUint32Field();
  }

  if (self->_from)
  {
    PBDataWriterWriteStringField();
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = self->_tos;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v8);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = self->_ccs;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v34;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v33 + 1) + 8 * j);
        PBDataWriterWriteStringField();
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v14);
  }

  if (self->_dateSent)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_dateReceived)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_messageIdHeader)
  {
    PBDataWriterWriteStringField();
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = self->_bccs;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v30;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v29 + 1) + 8 * k);
        PBDataWriterWriteStringField();
      }

      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v20);
  }

  if (self->_remoteId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_notificationMessageId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_mailboxId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    isThreadSpecific = self->_isThreadSpecific;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if (has)
  {
    isSpecialMailboxSpecific = self->_isSpecialMailboxSpecific;
    PBDataWriterWriteUint32Field();
  }

  if (self->_publisherBulletinId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    statusVersion = self->_statusVersion;
    PBDataWriterWriteUint32Field();
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v19 = v4;
  if (self->_messageId)
  {
    [v4 setMessageId:?];
    v4 = v19;
  }

  if (self->_accountId)
  {
    [v19 setAccountId:?];
    v4 = v19;
  }

  if (self->_conversationId)
  {
    [v19 setConversationId:?];
    v4 = v19;
  }

  if (self->_subject)
  {
    [v19 setSubject:?];
    v4 = v19;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 30) = self->_status;
    *(v4 + 148) |= 2u;
  }

  if (self->_from)
  {
    [v19 setFrom:?];
  }

  if ([(NNMKProtoMessage *)self tosCount])
  {
    [v19 clearTos];
    v5 = [(NNMKProtoMessage *)self tosCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NNMKProtoMessage *)self toAtIndex:i];
        [v19 addTo:v8];
      }
    }
  }

  if ([(NNMKProtoMessage *)self ccsCount])
  {
    [v19 clearCcs];
    v9 = [(NNMKProtoMessage *)self ccsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(NNMKProtoMessage *)self ccAtIndex:j];
        [v19 addCc:v12];
      }
    }
  }

  if (self->_dateSent)
  {
    [v19 setDateSent:?];
  }

  if (self->_dateReceived)
  {
    [v19 setDateReceived:?];
  }

  if (self->_messageIdHeader)
  {
    [v19 setMessageIdHeader:?];
  }

  if ([(NNMKProtoMessage *)self bccsCount])
  {
    [v19 clearBccs];
    v13 = [(NNMKProtoMessage *)self bccsCount];
    if (v13)
    {
      v14 = v13;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(NNMKProtoMessage *)self bccAtIndex:k];
        [v19 addBcc:v16];
      }
    }
  }

  if (self->_remoteId)
  {
    [v19 setRemoteId:?];
  }

  v17 = v19;
  if (self->_notificationMessageId)
  {
    [v19 setNotificationMessageId:?];
    v17 = v19;
  }

  if (self->_mailboxId)
  {
    [v19 setMailboxId:?];
    v17 = v19;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v17[144] = self->_isThreadSpecific;
    v17[148] |= 8u;
    has = self->_has;
  }

  if (has)
  {
    *(v17 + 16) = self->_isSpecialMailboxSpecific;
    v17[148] |= 1u;
  }

  if (self->_publisherBulletinId)
  {
    [v19 setPublisherBulletinId:?];
    v17 = v19;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v17 + 31) = self->_statusVersion;
    v17[148] |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_messageId copyWithZone:a3];
  v7 = *(v5 + 80);
  *(v5 + 80) = v6;

  v8 = [(NSString *)self->_accountId copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v10 = [(NSString *)self->_conversationId copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSString *)self->_subject copyWithZone:a3];
  v13 = *(v5 + 128);
  *(v5 + 128) = v12;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 120) = self->_status;
    *(v5 + 148) |= 2u;
  }

  v14 = [(NSString *)self->_from copyWithZone:a3];
  v15 = *(v5 + 56);
  *(v5 + 56) = v14;

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v16 = self->_tos;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v59 objects:v65 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v60;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v60 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v59 + 1) + 8 * i) copyWithZone:a3];
        [v5 addTo:v21];
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v59 objects:v65 count:16];
    }

    while (v18);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v22 = self->_ccs;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v55 objects:v64 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v56;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v56 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v55 + 1) + 8 * j) copyWithZone:a3];
        [v5 addCc:v27];
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v55 objects:v64 count:16];
    }

    while (v24);
  }

  v28 = [(NSData *)self->_dateSent copyWithZone:a3];
  v29 = *(v5 + 48);
  *(v5 + 48) = v28;

  v30 = [(NSData *)self->_dateReceived copyWithZone:a3];
  v31 = *(v5 + 40);
  *(v5 + 40) = v30;

  v32 = [(NSString *)self->_messageIdHeader copyWithZone:a3];
  v33 = *(v5 + 88);
  *(v5 + 88) = v32;

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v34 = self->_bccs;
  v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v52;
    do
    {
      for (k = 0; k != v36; ++k)
      {
        if (*v52 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = [*(*(&v51 + 1) + 8 * k) copyWithZone:{a3, v51}];
        [v5 addBcc:v39];
      }

      v36 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v36);
  }

  v40 = [(NSString *)self->_remoteId copyWithZone:a3];
  v41 = *(v5 + 112);
  *(v5 + 112) = v40;

  v42 = [(NSString *)self->_notificationMessageId copyWithZone:a3];
  v43 = *(v5 + 96);
  *(v5 + 96) = v42;

  v44 = [(NSString *)self->_mailboxId copyWithZone:a3];
  v45 = *(v5 + 72);
  *(v5 + 72) = v44;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 144) = self->_isThreadSpecific;
    *(v5 + 148) |= 8u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 64) = self->_isSpecialMailboxSpecific;
    *(v5 + 148) |= 1u;
  }

  v47 = [(NSString *)self->_publisherBulletinId copyWithZone:a3, v51];
  v48 = *(v5 + 104);
  *(v5 + 104) = v47;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 124) = self->_statusVersion;
    *(v5 + 148) |= 4u;
  }

  v49 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_54;
  }

  messageId = self->_messageId;
  if (messageId | *(v4 + 10))
  {
    if (![(NSString *)messageId isEqual:?])
    {
      goto LABEL_54;
    }
  }

  accountId = self->_accountId;
  if (accountId | *(v4 + 1))
  {
    if (![(NSString *)accountId isEqual:?])
    {
      goto LABEL_54;
    }
  }

  conversationId = self->_conversationId;
  if (conversationId | *(v4 + 4))
  {
    if (![(NSString *)conversationId isEqual:?])
    {
      goto LABEL_54;
    }
  }

  subject = self->_subject;
  if (subject | *(v4 + 16))
  {
    if (![(NSString *)subject isEqual:?])
    {
      goto LABEL_54;
    }
  }

  v9 = *(v4 + 148);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 148) & 2) == 0 || self->_status != *(v4 + 30))
    {
      goto LABEL_54;
    }
  }

  else if ((*(v4 + 148) & 2) != 0)
  {
    goto LABEL_54;
  }

  from = self->_from;
  if (from | *(v4 + 7) && ![(NSString *)from isEqual:?])
  {
    goto LABEL_54;
  }

  tos = self->_tos;
  if (tos | *(v4 + 17))
  {
    if (![(NSMutableArray *)tos isEqual:?])
    {
      goto LABEL_54;
    }
  }

  ccs = self->_ccs;
  if (ccs | *(v4 + 3))
  {
    if (![(NSMutableArray *)ccs isEqual:?])
    {
      goto LABEL_54;
    }
  }

  dateSent = self->_dateSent;
  if (dateSent | *(v4 + 6))
  {
    if (![(NSData *)dateSent isEqual:?])
    {
      goto LABEL_54;
    }
  }

  dateReceived = self->_dateReceived;
  if (dateReceived | *(v4 + 5))
  {
    if (![(NSData *)dateReceived isEqual:?])
    {
      goto LABEL_54;
    }
  }

  messageIdHeader = self->_messageIdHeader;
  if (messageIdHeader | *(v4 + 11))
  {
    if (![(NSString *)messageIdHeader isEqual:?])
    {
      goto LABEL_54;
    }
  }

  bccs = self->_bccs;
  if (bccs | *(v4 + 2))
  {
    if (![(NSMutableArray *)bccs isEqual:?])
    {
      goto LABEL_54;
    }
  }

  remoteId = self->_remoteId;
  if (remoteId | *(v4 + 14))
  {
    if (![(NSString *)remoteId isEqual:?])
    {
      goto LABEL_54;
    }
  }

  notificationMessageId = self->_notificationMessageId;
  if (notificationMessageId | *(v4 + 12))
  {
    if (![(NSString *)notificationMessageId isEqual:?])
    {
      goto LABEL_54;
    }
  }

  mailboxId = self->_mailboxId;
  if (mailboxId | *(v4 + 9))
  {
    if (![(NSString *)mailboxId isEqual:?])
    {
      goto LABEL_54;
    }
  }

  has = self->_has;
  v21 = *(v4 + 148);
  if ((has & 8) != 0)
  {
    if ((*(v4 + 148) & 8) == 0)
    {
      goto LABEL_54;
    }

    v22 = *(v4 + 144);
    if (self->_isThreadSpecific)
    {
      if ((*(v4 + 144) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else if (*(v4 + 144))
    {
      goto LABEL_54;
    }
  }

  else if ((*(v4 + 148) & 8) != 0)
  {
    goto LABEL_54;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 148) & 1) == 0 || self->_isSpecialMailboxSpecific != *(v4 + 16))
    {
      goto LABEL_54;
    }
  }

  else if (*(v4 + 148))
  {
    goto LABEL_54;
  }

  publisherBulletinId = self->_publisherBulletinId;
  if (publisherBulletinId | *(v4 + 13))
  {
    if ([(NSString *)publisherBulletinId isEqual:?])
    {
      has = self->_has;
      goto LABEL_49;
    }

LABEL_54:
    v24 = 0;
    goto LABEL_55;
  }

LABEL_49:
  v24 = (*(v4 + 148) & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((*(v4 + 148) & 4) == 0 || self->_statusVersion != *(v4 + 31))
    {
      goto LABEL_54;
    }

    v24 = 1;
  }

LABEL_55:

  return v24;
}

- (unint64_t)hash
{
  v22 = [(NSString *)self->_messageId hash];
  v21 = [(NSString *)self->_accountId hash];
  v20 = [(NSString *)self->_conversationId hash];
  v19 = [(NSString *)self->_subject hash];
  if ((*&self->_has & 2) != 0)
  {
    v18 = 2654435761 * self->_status;
  }

  else
  {
    v18 = 0;
  }

  v17 = [(NSString *)self->_from hash];
  v16 = [(NSMutableArray *)self->_tos hash];
  v15 = [(NSMutableArray *)self->_ccs hash];
  v14 = [(NSData *)self->_dateSent hash];
  v13 = [(NSData *)self->_dateReceived hash];
  v3 = [(NSString *)self->_messageIdHeader hash];
  v4 = [(NSMutableArray *)self->_bccs hash];
  v5 = [(NSString *)self->_remoteId hash];
  v6 = [(NSString *)self->_notificationMessageId hash];
  v7 = [(NSString *)self->_mailboxId hash];
  if ((*&self->_has & 8) != 0)
  {
    v8 = 2654435761 * self->_isThreadSpecific;
    if (*&self->_has)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (*&self->_has)
    {
LABEL_6:
      v9 = 2654435761 * self->_isSpecialMailboxSpecific;
      goto LABEL_9;
    }
  }

  v9 = 0;
LABEL_9:
  v10 = [(NSString *)self->_publisherBulletinId hash];
  if ((*&self->_has & 4) != 0)
  {
    v11 = 2654435761 * self->_statusVersion;
  }

  else
  {
    v11 = 0;
  }

  return v21 ^ v22 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v14 ^ v13 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 10))
  {
    [(NNMKProtoMessage *)self setMessageId:?];
  }

  if (*(v4 + 1))
  {
    [(NNMKProtoMessage *)self setAccountId:?];
  }

  if (*(v4 + 4))
  {
    [(NNMKProtoMessage *)self setConversationId:?];
  }

  if (*(v4 + 16))
  {
    [(NNMKProtoMessage *)self setSubject:?];
  }

  if ((*(v4 + 148) & 2) != 0)
  {
    self->_status = *(v4 + 30);
    *&self->_has |= 2u;
  }

  if (*(v4 + 7))
  {
    [(NNMKProtoMessage *)self setFrom:?];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = *(v4 + 17);
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NNMKProtoMessage *)self addTo:*(*(&v30 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v7);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = *(v4 + 3);
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(NNMKProtoMessage *)self addCc:*(*(&v26 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v12);
  }

  if (*(v4 + 6))
  {
    [(NNMKProtoMessage *)self setDateSent:?];
  }

  if (*(v4 + 5))
  {
    [(NNMKProtoMessage *)self setDateReceived:?];
  }

  if (*(v4 + 11))
  {
    [(NNMKProtoMessage *)self setMessageIdHeader:?];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = *(v4 + 2);
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(NNMKProtoMessage *)self addBcc:*(*(&v22 + 1) + 8 * k), v22];
      }

      v17 = [v15 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v17);
  }

  if (*(v4 + 14))
  {
    [(NNMKProtoMessage *)self setRemoteId:?];
  }

  if (*(v4 + 12))
  {
    [(NNMKProtoMessage *)self setNotificationMessageId:?];
  }

  if (*(v4 + 9))
  {
    [(NNMKProtoMessage *)self setMailboxId:?];
  }

  v20 = *(v4 + 148);
  if ((v20 & 8) != 0)
  {
    self->_isThreadSpecific = *(v4 + 144);
    *&self->_has |= 8u;
    v20 = *(v4 + 148);
  }

  if (v20)
  {
    self->_isSpecialMailboxSpecific = *(v4 + 16);
    *&self->_has |= 1u;
  }

  if (*(v4 + 13))
  {
    [(NNMKProtoMessage *)self setPublisherBulletinId:?];
  }

  if ((*(v4 + 148) & 4) != 0)
  {
    self->_statusVersion = *(v4 + 31);
    *&self->_has |= 4u;
  }

  v21 = *MEMORY[0x277D85DE8];
}

+ (id)protoMessageFromMessage:(id)a3 organizedByThread:(BOOL)a4 sanitizeMessageId:(BOOL)a5 supportsStandaloneMode:(BOOL)a6
{
  v7 = a5;
  v63 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = objc_alloc_init(NNMKProtoMessage);
  v11 = [v9 messageId];
  v12 = v11;
  if (v7)
  {
    v13 = [v11 nnmk_sanitizedFileNameString];
    [(NNMKProtoMessage *)v10 setMessageId:v13];
  }

  else
  {
    [(NNMKProtoMessage *)v10 setMessageId:v11];
  }

  v14 = [v9 accountId];
  [(NNMKProtoMessage *)v10 setAccountId:v14];

  if (a4)
  {
    v15 = [v9 conversationId];
    [(NNMKProtoMessage *)v10 setConversationId:v15];
  }

  else
  {
    v16 = MEMORY[0x277CCACA8];
    v15 = [v9 conversationId];
    v17 = [v9 messageId];
    v18 = [v16 stringWithFormat:@"%@|%@", v15, v17];
    [(NNMKProtoMessage *)v10 setConversationId:v18];
  }

  v19 = [v9 subject];
  [(NNMKProtoMessage *)v10 setSubject:v19];

  -[NNMKProtoMessage setStatus:](v10, "setStatus:", [v9 status]);
  -[NNMKProtoMessage setStatusVersion:](v10, "setStatusVersion:", [v9 statusVersion]);
  v20 = [v9 from];
  [(NNMKProtoMessage *)v10 setFrom:v20];

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v21 = [v9 to];
  v22 = [v21 countByEnumeratingWithState:&v56 objects:v62 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v57;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v57 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(NNMKProtoMessage *)v10 addTo:*(*(&v56 + 1) + 8 * i)];
      }

      v23 = [v21 countByEnumeratingWithState:&v56 objects:v62 count:16];
    }

    while (v23);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v26 = [v9 cc];
  v27 = [v26 countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v53;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v53 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [(NNMKProtoMessage *)v10 addCc:*(*(&v52 + 1) + 8 * j)];
      }

      v28 = [v26 countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v28);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v31 = [v9 bcc];
  v32 = [v31 countByEnumeratingWithState:&v48 objects:v60 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v49;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v49 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [(NNMKProtoMessage *)v10 addBcc:*(*(&v48 + 1) + 8 * k)];
      }

      v33 = [v31 countByEnumeratingWithState:&v48 objects:v60 count:16];
    }

    while (v33);
  }

  v36 = MEMORY[0x277CCAAB0];
  v37 = [v9 dateSent];
  v38 = [v36 archivedDataWithRootObject:v37 requiringSecureCoding:1 error:0];
  [(NNMKProtoMessage *)v10 setDateSent:v38];

  v39 = MEMORY[0x277CCAAB0];
  v40 = [v9 dateReceived];
  v41 = [v39 archivedDataWithRootObject:v40 requiringSecureCoding:1 error:0];
  [(NNMKProtoMessage *)v10 setDateReceived:v41];

  v42 = [v9 messageIdHeader];
  [(NNMKProtoMessage *)v10 setMessageIdHeader:v42];

  v43 = [v9 mailboxId];
  [(NNMKProtoMessage *)v10 setMailboxId:v43];

  -[NNMKProtoMessage setIsThreadSpecific:](v10, "setIsThreadSpecific:", [v9 isThreadSpecific]);
  -[NNMKProtoMessage setIsSpecialMailboxSpecific:](v10, "setIsSpecialMailboxSpecific:", [v9 isSpecialMailboxSpecific]);
  if (a6)
  {
    v44 = [v9 notificationMessageId];
    [(NNMKProtoMessage *)v10 setNotificationMessageId:v44];

    v45 = [v9 publisherBulletinId];
    [(NNMKProtoMessage *)v10 setPublisherBulletinId:v45];
  }

  else
  {
    v45 = [v9 publisherBulletinId];
    [(NNMKProtoMessage *)v10 setNotificationMessageId:v45];
  }

  v46 = *MEMORY[0x277D85DE8];

  return v10;
}

@end