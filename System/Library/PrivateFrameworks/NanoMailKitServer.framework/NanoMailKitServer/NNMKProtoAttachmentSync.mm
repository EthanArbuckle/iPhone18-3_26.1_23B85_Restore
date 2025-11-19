@interface NNMKProtoAttachmentSync
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NNMKProtoAttachmentSync

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NNMKProtoAttachmentSync;
  v4 = [(NNMKProtoAttachmentSync *)&v8 description];
  v5 = [(NNMKProtoAttachmentSync *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_fullSyncVersion];
    [v3 setObject:v4 forKey:@"fullSyncVersion"];
  }

  dateSynced = self->_dateSynced;
  if (dateSynced)
  {
    [v3 setObject:dateSynced forKey:@"dateSynced"];
  }

  messageId = self->_messageId;
  if (messageId)
  {
    [v3 setObject:messageId forKey:@"messageId"];
  }

  contentId = self->_contentId;
  if (contentId)
  {
    [v3 setObject:contentId forKey:@"contentId"];
  }

  attachmentData = self->_attachmentData;
  if (attachmentData)
  {
    [v3 setObject:attachmentData forKey:@"attachmentData"];
  }

  mailboxId = self->_mailboxId;
  if (mailboxId)
  {
    [v3 setObject:mailboxId forKey:@"mailboxId"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    fullSyncVersion = self->_fullSyncVersion;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }

  if (self->_dateSynced)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_messageId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_contentId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_attachmentData)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_mailboxId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[8] = self->_fullSyncVersion;
    *(v4 + 56) |= 1u;
  }

  v5 = v4;
  if (self->_dateSynced)
  {
    [v4 setDateSynced:?];
    v4 = v5;
  }

  if (self->_messageId)
  {
    [v5 setMessageId:?];
    v4 = v5;
  }

  if (self->_contentId)
  {
    [v5 setContentId:?];
    v4 = v5;
  }

  if (self->_attachmentData)
  {
    [v5 setAttachmentData:?];
    v4 = v5;
  }

  if (self->_mailboxId)
  {
    [v5 setMailboxId:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_fullSyncVersion;
    *(v5 + 56) |= 1u;
  }

  v7 = [(NSData *)self->_dateSynced copyWithZone:a3];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSString *)self->_messageId copyWithZone:a3];
  v10 = v6[6];
  v6[6] = v9;

  v11 = [(NSString *)self->_contentId copyWithZone:a3];
  v12 = v6[2];
  v6[2] = v11;

  v13 = [(NSData *)self->_attachmentData copyWithZone:a3];
  v14 = v6[1];
  v6[1] = v13;

  v15 = [(NSString *)self->_mailboxId copyWithZone:a3];
  v16 = v6[5];
  v6[5] = v15;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = *(v4 + 56);
  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_fullSyncVersion != *(v4 + 8))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 56))
  {
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  dateSynced = self->_dateSynced;
  if (dateSynced | *(v4 + 3) && ![(NSData *)dateSynced isEqual:?])
  {
    goto LABEL_17;
  }

  messageId = self->_messageId;
  if (messageId | *(v4 + 6))
  {
    if (![(NSString *)messageId isEqual:?])
    {
      goto LABEL_17;
    }
  }

  contentId = self->_contentId;
  if (contentId | *(v4 + 2))
  {
    if (![(NSString *)contentId isEqual:?])
    {
      goto LABEL_17;
    }
  }

  attachmentData = self->_attachmentData;
  if (attachmentData | *(v4 + 1))
  {
    if (![(NSData *)attachmentData isEqual:?])
    {
      goto LABEL_17;
    }
  }

  mailboxId = self->_mailboxId;
  if (mailboxId | *(v4 + 5))
  {
    v11 = [(NSString *)mailboxId isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_18:

  return v11;
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

  v4 = [(NSData *)self->_dateSynced hash]^ v3;
  v5 = [(NSString *)self->_messageId hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_contentId hash];
  v7 = [(NSData *)self->_attachmentData hash];
  return v6 ^ v7 ^ [(NSString *)self->_mailboxId hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[14])
  {
    self->_fullSyncVersion = v4[8];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 3))
  {
    [(NNMKProtoAttachmentSync *)self setDateSynced:?];
    v4 = v5;
  }

  if (*(v4 + 6))
  {
    [(NNMKProtoAttachmentSync *)self setMessageId:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(NNMKProtoAttachmentSync *)self setContentId:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(NNMKProtoAttachmentSync *)self setAttachmentData:?];
    v4 = v5;
  }

  if (*(v4 + 5))
  {
    [(NNMKProtoAttachmentSync *)self setMailboxId:?];
    v4 = v5;
  }
}

@end