@interface NNMKProtoAttachmentSync
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NNMKProtoAttachmentSync

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NNMKProtoAttachmentSync;
  v4 = [(NNMKProtoAttachmentSync *)&v8 description];
  dictionaryRepresentation = [(NNMKProtoAttachmentSync *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
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

  contentId = self->_contentId;
  if (contentId)
  {
    [dictionary setObject:contentId forKey:@"contentId"];
  }

  attachmentData = self->_attachmentData;
  if (attachmentData)
  {
    [dictionary setObject:attachmentData forKey:@"attachmentData"];
  }

  mailboxId = self->_mailboxId;
  if (mailboxId)
  {
    [dictionary setObject:mailboxId forKey:@"mailboxId"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    fullSyncVersion = self->_fullSyncVersion;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }

  if (self->_dateSynced)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_messageId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_contentId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_attachmentData)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_mailboxId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[8] = self->_fullSyncVersion;
    *(toCopy + 56) |= 1u;
  }

  v5 = toCopy;
  if (self->_dateSynced)
  {
    [toCopy setDateSynced:?];
    toCopy = v5;
  }

  if (self->_messageId)
  {
    [v5 setMessageId:?];
    toCopy = v5;
  }

  if (self->_contentId)
  {
    [v5 setContentId:?];
    toCopy = v5;
  }

  if (self->_attachmentData)
  {
    [v5 setAttachmentData:?];
    toCopy = v5;
  }

  if (self->_mailboxId)
  {
    [v5 setMailboxId:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_fullSyncVersion;
    *(v5 + 56) |= 1u;
  }

  v7 = [(NSData *)self->_dateSynced copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSString *)self->_messageId copyWithZone:zone];
  v10 = v6[6];
  v6[6] = v9;

  v11 = [(NSString *)self->_contentId copyWithZone:zone];
  v12 = v6[2];
  v6[2] = v11;

  v13 = [(NSData *)self->_attachmentData copyWithZone:zone];
  v14 = v6[1];
  v6[1] = v13;

  v15 = [(NSString *)self->_mailboxId copyWithZone:zone];
  v16 = v6[5];
  v6[5] = v15;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = *(equalCopy + 56);
  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_fullSyncVersion != *(equalCopy + 8))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 56))
  {
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  dateSynced = self->_dateSynced;
  if (dateSynced | *(equalCopy + 3) && ![(NSData *)dateSynced isEqual:?])
  {
    goto LABEL_17;
  }

  messageId = self->_messageId;
  if (messageId | *(equalCopy + 6))
  {
    if (![(NSString *)messageId isEqual:?])
    {
      goto LABEL_17;
    }
  }

  contentId = self->_contentId;
  if (contentId | *(equalCopy + 2))
  {
    if (![(NSString *)contentId isEqual:?])
    {
      goto LABEL_17;
    }
  }

  attachmentData = self->_attachmentData;
  if (attachmentData | *(equalCopy + 1))
  {
    if (![(NSData *)attachmentData isEqual:?])
    {
      goto LABEL_17;
    }
  }

  mailboxId = self->_mailboxId;
  if (mailboxId | *(equalCopy + 5))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[14])
  {
    self->_fullSyncVersion = fromCopy[8];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(NNMKProtoAttachmentSync *)self setDateSynced:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 6))
  {
    [(NNMKProtoAttachmentSync *)self setMessageId:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(NNMKProtoAttachmentSync *)self setContentId:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(NNMKProtoAttachmentSync *)self setAttachmentData:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 5))
  {
    [(NNMKProtoAttachmentSync *)self setMailboxId:?];
    fromCopy = v5;
  }
}

@end