@interface NNMKProtoMessageStatusUpdates
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMessageStatusUpdate:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMailboxSyncVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NNMKProtoMessageStatusUpdates

- (void)addMessageStatusUpdate:(id)a3
{
  v4 = a3;
  messageStatusUpdates = self->_messageStatusUpdates;
  v8 = v4;
  if (!messageStatusUpdates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_messageStatusUpdates;
    self->_messageStatusUpdates = v6;

    v4 = v8;
    messageStatusUpdates = self->_messageStatusUpdates;
  }

  [(NSMutableArray *)messageStatusUpdates addObject:v4];
}

- (void)setHasMailboxSyncVersion:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NNMKProtoMessageStatusUpdates;
  v4 = [(NNMKProtoMessageStatusUpdates *)&v8 description];
  v5 = [(NNMKProtoMessageStatusUpdates *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x277D85DE8];
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

  if ([(NSMutableArray *)self->_messageStatusUpdates count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_messageStatusUpdates, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = self->_messageStatusUpdates;
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

          v12 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"messageStatusUpdate"];
  }

  mailboxId = self->_mailboxId;
  if (mailboxId)
  {
    [v3 setObject:mailboxId forKey:@"mailboxId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_mailboxSyncVersion];
    [v3 setObject:v14 forKey:@"mailboxSyncVersion"];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
  v6 = self->_messageStatusUpdates;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_fullSyncVersion;
    *(v4 + 48) |= 1u;
  }

  v9 = v4;
  if (self->_dateSynced)
  {
    [v4 setDateSynced:?];
  }

  if ([(NNMKProtoMessageStatusUpdates *)self messageStatusUpdatesCount])
  {
    [v9 clearMessageStatusUpdates];
    v5 = [(NNMKProtoMessageStatusUpdates *)self messageStatusUpdatesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NNMKProtoMessageStatusUpdates *)self messageStatusUpdateAtIndex:i];
        [v9 addMessageStatusUpdate:v8];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_fullSyncVersion;
    *(v5 + 48) |= 1u;
  }

  v7 = [(NSData *)self->_dateSynced copyWithZone:a3];
  v8 = *(v6 + 8);
  *(v6 + 8) = v7;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = self->_messageStatusUpdates;
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

        v14 = [*(*(&v19 + 1) + 8 * v13) copyWithZone:{a3, v19}];
        [v6 addMessageStatusUpdate:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v15 = [(NSString *)self->_mailboxId copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_fullSyncVersion != *(v4 + 4))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  dateSynced = self->_dateSynced;
  if (dateSynced | *(v4 + 1) && ![(NSData *)dateSynced isEqual:?])
  {
    goto LABEL_17;
  }

  messageStatusUpdates = self->_messageStatusUpdates;
  if (messageStatusUpdates | *(v4 + 5))
  {
    if (![(NSMutableArray *)messageStatusUpdates isEqual:?])
    {
      goto LABEL_17;
    }
  }

  mailboxId = self->_mailboxId;
  if (mailboxId | *(v4 + 3))
  {
    if (![(NSString *)mailboxId isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v9 = (*(v4 + 48) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_mailboxSyncVersion != *(v4 + 8))
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
  v5 = [(NSMutableArray *)self->_messageStatusUpdates hash];
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

- (void)mergeFrom:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4[12])
  {
    self->_fullSyncVersion = v4[4];
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    [(NNMKProtoMessageStatusUpdates *)self setDateSynced:?];
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

        [(NNMKProtoMessageStatusUpdates *)self addMessageStatusUpdate:*(*(&v12 + 1) + 8 * i), v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if (*(v5 + 3))
  {
    [(NNMKProtoMessageStatusUpdates *)self setMailboxId:?];
  }

  if ((*(v5 + 48) & 2) != 0)
  {
    self->_mailboxSyncVersion = *(v5 + 8);
    *&self->_has |= 2u;
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end