@interface NNMKProtoMessageContentSync
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAttachment:(id)attachment;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasMainAlternativeValid:(BOOL)valid;
- (void)setHasPartiallyLoaded:(BOOL)loaded;
- (void)writeTo:(id)to;
@end

@implementation NNMKProtoMessageContentSync

- (void)setHasMainAlternativeValid:(BOOL)valid
{
  if (valid)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasPartiallyLoaded:(BOOL)loaded
{
  if (loaded)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addAttachment:(id)attachment
{
  attachmentCopy = attachment;
  attachments = self->_attachments;
  v8 = attachmentCopy;
  if (!attachments)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_attachments;
    self->_attachments = v6;

    attachmentCopy = v8;
    attachments = self->_attachments;
  }

  [(NSMutableArray *)attachments addObject:attachmentCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NNMKProtoMessageContentSync;
  v4 = [(NNMKProtoMessageContentSync *)&v8 description];
  dictionaryRepresentation = [(NNMKProtoMessageContentSync *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v29 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_fullSyncVersion];
    [dictionary setObject:v4 forKey:@"fullSyncVersion"];
  }

  dateSynced = self->_dateSynced;
  if (dateSynced)
  {
    [dictionary setObject:dateSynced forKey:@"dateSynced"];
  }

  messageId = self->_messageId;
  if (messageId)
  {
    [dictionary setObject:messageId forKey:@"messageId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_mainAlternativeValid];
    [dictionary setObject:v7 forKey:@"mainAlternativeValid"];
  }

  text = self->_text;
  if (text)
  {
    [dictionary setObject:text forKey:@"text"];
  }

  preview = self->_preview;
  if (preview)
  {
    [dictionary setObject:preview forKey:@"preview"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_partiallyLoaded];
    [dictionary setObject:v10 forKey:@"partiallyLoaded"];
  }

  if ([(NSMutableArray *)self->_attachments count])
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_attachments, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = self->_attachments;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation = [*(*(&v24 + 1) + 8 * i) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v14);
    }

    [dictionary setObject:v11 forKey:@"attachment"];
  }

  notificationMessage = self->_notificationMessage;
  if (notificationMessage)
  {
    dictionaryRepresentation2 = [(NNMKProtoMessage *)notificationMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"notificationMessage"];
  }

  htmlContentData = self->_htmlContentData;
  if (htmlContentData)
  {
    [dictionary setObject:htmlContentData forKey:@"htmlContentData"];
  }

  mailboxId = self->_mailboxId;
  if (mailboxId)
  {
    [dictionary setObject:mailboxId forKey:@"mailboxId"];
  }

  v22 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    fullSyncVersion = self->_fullSyncVersion;
    PBDataWriterWriteUint32Field();
  }

  if (self->_dateSynced)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_messageId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    mainAlternativeValid = self->_mainAlternativeValid;
    PBDataWriterWriteBOOLField();
  }

  if (self->_text)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_preview)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 4) != 0)
  {
    partiallyLoaded = self->_partiallyLoaded;
    PBDataWriterWriteBOOLField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_attachments;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  if (self->_notificationMessage)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_htmlContentData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_mailboxId)
  {
    PBDataWriterWriteStringField();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[6] = self->_fullSyncVersion;
    *(toCopy + 84) |= 1u;
  }

  v10 = toCopy;
  if (self->_dateSynced)
  {
    [toCopy setDateSynced:?];
    toCopy = v10;
  }

  if (self->_messageId)
  {
    [v10 setMessageId:?];
    toCopy = v10;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 80) = self->_mainAlternativeValid;
    *(toCopy + 84) |= 2u;
  }

  if (self->_text)
  {
    [v10 setText:?];
    toCopy = v10;
  }

  if (self->_preview)
  {
    [v10 setPreview:?];
    toCopy = v10;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 81) = self->_partiallyLoaded;
    *(toCopy + 84) |= 4u;
  }

  if ([(NNMKProtoMessageContentSync *)self attachmentsCount])
  {
    [v10 clearAttachments];
    attachmentsCount = [(NNMKProtoMessageContentSync *)self attachmentsCount];
    if (attachmentsCount)
    {
      v6 = attachmentsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NNMKProtoMessageContentSync *)self attachmentAtIndex:i];
        [v10 addAttachment:v8];
      }
    }
  }

  if (self->_notificationMessage)
  {
    [v10 setNotificationMessage:?];
  }

  v9 = v10;
  if (self->_htmlContentData)
  {
    [v10 setHtmlContentData:?];
    v9 = v10;
  }

  if (self->_mailboxId)
  {
    [v10 setMailboxId:?];
    v9 = v10;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_fullSyncVersion;
    *(v5 + 84) |= 1u;
  }

  v7 = [(NSData *)self->_dateSynced copyWithZone:zone];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  v9 = [(NSString *)self->_messageId copyWithZone:zone];
  v10 = *(v6 + 48);
  *(v6 + 48) = v9;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 80) = self->_mainAlternativeValid;
    *(v6 + 84) |= 2u;
  }

  v11 = [(NSData *)self->_text copyWithZone:zone];
  v12 = *(v6 + 72);
  *(v6 + 72) = v11;

  v13 = [(NSData *)self->_preview copyWithZone:zone];
  v14 = *(v6 + 64);
  *(v6 + 64) = v13;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 81) = self->_partiallyLoaded;
    *(v6 + 84) |= 4u;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = self->_attachments;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      v19 = 0;
      do
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v29 + 1) + 8 * v19) copyWithZone:{zone, v29}];
        [v6 addAttachment:v20];

        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v17);
  }

  v21 = [(NNMKProtoMessage *)self->_notificationMessage copyWithZone:zone];
  v22 = *(v6 + 56);
  *(v6 + 56) = v21;

  v23 = [(NSData *)self->_htmlContentData copyWithZone:zone];
  v24 = *(v6 + 32);
  *(v6 + 32) = v23;

  v25 = [(NSString *)self->_mailboxId copyWithZone:zone];
  v26 = *(v6 + 40);
  *(v6 + 40) = v25;

  v27 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  v5 = *(equalCopy + 84);
  if (*&self->_has)
  {
    if ((*(equalCopy + 84) & 1) == 0 || self->_fullSyncVersion != *(equalCopy + 6))
    {
      goto LABEL_28;
    }
  }

  else if (*(equalCopy + 84))
  {
    goto LABEL_28;
  }

  dateSynced = self->_dateSynced;
  if (dateSynced | *(equalCopy + 2) && ![(NSData *)dateSynced isEqual:?])
  {
    goto LABEL_28;
  }

  messageId = self->_messageId;
  if (messageId | *(equalCopy + 6))
  {
    if (![(NSString *)messageId isEqual:?])
    {
      goto LABEL_28;
    }
  }

  v8 = *(equalCopy + 84);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 84) & 2) == 0)
    {
      goto LABEL_28;
    }

    v18 = *(equalCopy + 80);
    if (self->_mainAlternativeValid)
    {
      if ((*(equalCopy + 80) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (*(equalCopy + 80))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 84) & 2) != 0)
  {
    goto LABEL_28;
  }

  text = self->_text;
  if (text | *(equalCopy + 9) && ![(NSData *)text isEqual:?])
  {
    goto LABEL_28;
  }

  preview = self->_preview;
  if (preview | *(equalCopy + 8))
  {
    if (![(NSData *)preview isEqual:?])
    {
      goto LABEL_28;
    }
  }

  v11 = *(equalCopy + 84);
  if ((*&self->_has & 4) == 0)
  {
    if ((*(equalCopy + 84) & 4) == 0)
    {
      goto LABEL_19;
    }

LABEL_28:
    v16 = 0;
    goto LABEL_29;
  }

  if ((*(equalCopy + 84) & 4) == 0)
  {
    goto LABEL_28;
  }

  v19 = *(equalCopy + 81);
  if (self->_partiallyLoaded)
  {
    if ((*(equalCopy + 81) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (*(equalCopy + 81))
  {
    goto LABEL_28;
  }

LABEL_19:
  attachments = self->_attachments;
  if (attachments | *(equalCopy + 1) && ![(NSMutableArray *)attachments isEqual:?])
  {
    goto LABEL_28;
  }

  notificationMessage = self->_notificationMessage;
  if (notificationMessage | *(equalCopy + 7))
  {
    if (![(NNMKProtoMessage *)notificationMessage isEqual:?])
    {
      goto LABEL_28;
    }
  }

  htmlContentData = self->_htmlContentData;
  if (htmlContentData | *(equalCopy + 4))
  {
    if (![(NSData *)htmlContentData isEqual:?])
    {
      goto LABEL_28;
    }
  }

  mailboxId = self->_mailboxId;
  if (mailboxId | *(equalCopy + 5))
  {
    v16 = [(NSString *)mailboxId isEqual:?];
  }

  else
  {
    v16 = 1;
  }

LABEL_29:

  return v16;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_fullSyncVersion;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_dateSynced hash];
  v5 = [(NSString *)self->_messageId hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_mainAlternativeValid;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSData *)self->_text hash];
  v8 = [(NSData *)self->_preview hash];
  if ((*&self->_has & 4) != 0)
  {
    v9 = 2654435761 * self->_partiallyLoaded;
  }

  else
  {
    v9 = 0;
  }

  v10 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  v11 = [(NSMutableArray *)self->_attachments hash];
  v12 = v11 ^ [(NNMKProtoMessage *)self->_notificationMessage hash];
  v13 = v12 ^ [(NSData *)self->_htmlContentData hash];
  return v10 ^ v13 ^ [(NSString *)self->_mailboxId hash];
}

- (void)mergeFrom:(id)from
{
  v19 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[21])
  {
    self->_fullSyncVersion = fromCopy[6];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    [(NNMKProtoMessageContentSync *)self setDateSynced:?];
  }

  if (*(v5 + 6))
  {
    [(NNMKProtoMessageContentSync *)self setMessageId:?];
  }

  if ((*(v5 + 84) & 2) != 0)
  {
    self->_mainAlternativeValid = *(v5 + 80);
    *&self->_has |= 2u;
  }

  if (*(v5 + 9))
  {
    [(NNMKProtoMessageContentSync *)self setText:?];
  }

  if (*(v5 + 8))
  {
    [(NNMKProtoMessageContentSync *)self setPreview:?];
  }

  if ((*(v5 + 84) & 4) != 0)
  {
    self->_partiallyLoaded = *(v5 + 81);
    *&self->_has |= 4u;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = *(v5 + 1);
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(NNMKProtoMessageContentSync *)self addAttachment:*(*(&v14 + 1) + 8 * i), v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  notificationMessage = self->_notificationMessage;
  v12 = *(v5 + 7);
  if (notificationMessage)
  {
    if (v12)
    {
      [(NNMKProtoMessage *)notificationMessage mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(NNMKProtoMessageContentSync *)self setNotificationMessage:?];
  }

  if (*(v5 + 4))
  {
    [(NNMKProtoMessageContentSync *)self setHtmlContentData:?];
  }

  if (*(v5 + 5))
  {
    [(NNMKProtoMessageContentSync *)self setMailboxId:?];
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end