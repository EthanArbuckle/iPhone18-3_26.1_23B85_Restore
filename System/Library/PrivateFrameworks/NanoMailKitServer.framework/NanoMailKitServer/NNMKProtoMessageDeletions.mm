@interface NNMKProtoMessageDeletions
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMessageDeletion:(id)deletion;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasMailboxSyncVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation NNMKProtoMessageDeletions

- (void)addMessageDeletion:(id)deletion
{
  deletionCopy = deletion;
  messageDeletions = self->_messageDeletions;
  v8 = deletionCopy;
  if (!messageDeletions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_messageDeletions;
    self->_messageDeletions = v6;

    deletionCopy = v8;
    messageDeletions = self->_messageDeletions;
  }

  [(NSMutableArray *)messageDeletions addObject:deletionCopy];
}

- (void)setHasMailboxSyncVersion:(BOOL)version
{
  if (version)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NNMKProtoMessageDeletions;
  v4 = [(NNMKProtoMessageDeletions *)&v8 description];
  dictionaryRepresentation = [(NNMKProtoMessageDeletions *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x277D85DE8];
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

  if ([(NSMutableArray *)self->_messageDeletions count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_messageDeletions, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = self->_messageDeletions;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"messageDeletion"];
  }

  mailboxId = self->_mailboxId;
  if (mailboxId)
  {
    [dictionary setObject:mailboxId forKey:@"mailboxId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_mailboxSyncVersion];
    [dictionary setObject:v14 forKey:@"mailboxSyncVersion"];
  }

  v15 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x277D85DE8];
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

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_messageDeletions;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if (self->_mailboxId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    mailboxSyncVersion = self->_mailboxSyncVersion;
    PBDataWriterWriteUint32Field();
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_fullSyncVersion;
    *(toCopy + 48) |= 1u;
  }

  v9 = toCopy;
  if (self->_dateSynced)
  {
    [toCopy setDateSynced:?];
  }

  if ([(NNMKProtoMessageDeletions *)self messageDeletionsCount])
  {
    [v9 clearMessageDeletions];
    messageDeletionsCount = [(NNMKProtoMessageDeletions *)self messageDeletionsCount];
    if (messageDeletionsCount)
    {
      v6 = messageDeletionsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NNMKProtoMessageDeletions *)self messageDeletionAtIndex:i];
        [v9 addMessageDeletion:v8];
      }
    }
  }

  if (self->_mailboxId)
  {
    [v9 setMailboxId:?];
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v9 + 8) = self->_mailboxSyncVersion;
    *(v9 + 48) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_fullSyncVersion;
    *(v5 + 48) |= 1u;
  }

  v7 = [(NSData *)self->_dateSynced copyWithZone:zone];
  v8 = *(v6 + 8);
  *(v6 + 8) = v7;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = self->_messageDeletions;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v19 + 1) + 8 * v13) copyWithZone:{zone, v19}];
        [v6 addMessageDeletion:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v15 = [(NSString *)self->_mailboxId copyWithZone:zone];
  v16 = *(v6 + 24);
  *(v6 + 24) = v15;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 32) = self->_mailboxSyncVersion;
    *(v6 + 48) |= 2u;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_fullSyncVersion != *(equalCopy + 4))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  dateSynced = self->_dateSynced;
  if (dateSynced | *(equalCopy + 1) && ![(NSData *)dateSynced isEqual:?])
  {
    goto LABEL_17;
  }

  messageDeletions = self->_messageDeletions;
  if (messageDeletions | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)messageDeletions isEqual:?])
    {
      goto LABEL_17;
    }
  }

  mailboxId = self->_mailboxId;
  if (mailboxId | *(equalCopy + 3))
  {
    if (![(NSString *)mailboxId isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v9 = (*(equalCopy + 48) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_mailboxSyncVersion != *(equalCopy + 8))
    {
      goto LABEL_17;
    }

    v9 = 1;
  }

LABEL_18:

  return v9;
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
  v5 = [(NSMutableArray *)self->_messageDeletions hash];
  v6 = [(NSString *)self->_mailboxId hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_mailboxSyncVersion;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[12])
  {
    self->_fullSyncVersion = fromCopy[4];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    [(NNMKProtoMessageDeletions *)self setDateSynced:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(v5 + 5);
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

        [(NNMKProtoMessageDeletions *)self addMessageDeletion:*(*(&v12 + 1) + 8 * i), v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if (*(v5 + 3))
  {
    [(NNMKProtoMessageDeletions *)self setMailboxId:?];
  }

  if ((*(v5 + 48) & 2) != 0)
  {
    self->_mailboxSyncVersion = *(v5 + 8);
    *&self->_has |= 2u;
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end