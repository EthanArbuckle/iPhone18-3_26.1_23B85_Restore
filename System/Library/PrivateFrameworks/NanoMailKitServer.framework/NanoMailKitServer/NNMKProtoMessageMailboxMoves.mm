@interface NNMKProtoMessageMailboxMoves
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMessageIds:(id)ids;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NNMKProtoMessageMailboxMoves

- (void)addMessageIds:(id)ids
{
  idsCopy = ids;
  messageIds = self->_messageIds;
  v8 = idsCopy;
  if (!messageIds)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_messageIds;
    self->_messageIds = v6;

    idsCopy = v8;
    messageIds = self->_messageIds;
  }

  [(NSMutableArray *)messageIds addObject:idsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NNMKProtoMessageMailboxMoves;
  v4 = [(NNMKProtoMessageMailboxMoves *)&v8 description];
  dictionaryRepresentation = [(NNMKProtoMessageMailboxMoves *)self dictionaryRepresentation];
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

  messageIds = self->_messageIds;
  if (messageIds)
  {
    [dictionary setObject:messageIds forKey:@"messageIds"];
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
  v18 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    fullSyncVersion = self->_fullSyncVersion;
    PBDataWriterWriteUint32Field();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_messageIds;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (self->_mailboxId)
  {
    PBDataWriterWriteStringField();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[2] = self->_fullSyncVersion;
    *(toCopy + 32) |= 1u;
  }

  v9 = toCopy;
  if ([(NNMKProtoMessageMailboxMoves *)self messageIdsCount])
  {
    [v9 clearMessageIds];
    messageIdsCount = [(NNMKProtoMessageMailboxMoves *)self messageIdsCount];
    if (messageIdsCount)
    {
      v6 = messageIdsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NNMKProtoMessageMailboxMoves *)self messageIdsAtIndex:i];
        [v9 addMessageIds:v8];
      }
    }
  }

  if (self->_mailboxId)
  {
    [v9 setMailboxId:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_fullSyncVersion;
    *(v5 + 32) |= 1u;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_messageIds;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v17 + 1) + 8 * v11) copyWithZone:{zone, v17}];
        [v6 addMessageIds:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v13 = [(NSString *)self->_mailboxId copyWithZone:zone];
  v14 = v6[2];
  v6[2] = v13;

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_fullSyncVersion != *(equalCopy + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  messageIds = self->_messageIds;
  if (messageIds | *(equalCopy + 3) && ![(NSMutableArray *)messageIds isEqual:?])
  {
    goto LABEL_11;
  }

  mailboxId = self->_mailboxId;
  if (mailboxId | *(equalCopy + 2))
  {
    v8 = [(NSString *)mailboxId isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
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

  v4 = [(NSMutableArray *)self->_messageIds hash]^ v3;
  return v4 ^ [(NSString *)self->_mailboxId hash];
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 32))
  {
    self->_fullSyncVersion = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(fromCopy + 3);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(NNMKProtoMessageMailboxMoves *)self addMessageIds:*(*(&v12 + 1) + 8 * i), v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if (v5[2])
  {
    [(NNMKProtoMessageMailboxMoves *)self setMailboxId:?];
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end