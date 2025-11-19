@interface NNMKProtoMoreMessages
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAddedMessage:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMailboxSyncVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NNMKProtoMoreMessages

- (void)addAddedMessage:(id)a3
{
  v4 = a3;
  addedMessages = self->_addedMessages;
  v8 = v4;
  if (!addedMessages)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_addedMessages;
    self->_addedMessages = v6;

    v4 = v8;
    addedMessages = self->_addedMessages;
  }

  [(NSMutableArray *)addedMessages addObject:v4];
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
  v8.super_class = NNMKProtoMoreMessages;
  v4 = [(NNMKProtoMoreMessages *)&v8 description];
  v5 = [(NNMKProtoMoreMessages *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x277D85DE8];
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

  if ([(NSMutableArray *)self->_addedMessages count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_addedMessages, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = self->_addedMessages;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"addedMessage"];
  }

  dateForRequestingMoreMessages = self->_dateForRequestingMoreMessages;
  if (dateForRequestingMoreMessages)
  {
    [v3 setObject:dateForRequestingMoreMessages forKey:@"dateForRequestingMoreMessages"];
  }

  mailboxId = self->_mailboxId;
  if (mailboxId)
  {
    [v3 setObject:mailboxId forKey:@"mailboxId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_mailboxSyncVersion];
    [v3 setObject:v15 forKey:@"mailboxSyncVersion"];
  }

  v16 = *MEMORY[0x277D85DE8];

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
  v6 = self->_addedMessages;
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

  if (self->_dateForRequestingMoreMessages)
  {
    PBDataWriterWriteDataField();
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
    v4[8] = self->_fullSyncVersion;
    *(v4 + 52) |= 1u;
  }

  v10 = v4;
  if (self->_dateSynced)
  {
    [v4 setDateSynced:?];
  }

  if ([(NNMKProtoMoreMessages *)self addedMessagesCount])
  {
    [v10 clearAddedMessages];
    v5 = [(NNMKProtoMoreMessages *)self addedMessagesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NNMKProtoMoreMessages *)self addedMessageAtIndex:i];
        [v10 addAddedMessage:v8];
      }
    }
  }

  if (self->_dateForRequestingMoreMessages)
  {
    [v10 setDateForRequestingMoreMessages:?];
  }

  v9 = v10;
  if (self->_mailboxId)
  {
    [v10 setMailboxId:?];
    v9 = v10;
  }

  if ((*&self->_has & 2) != 0)
  {
    v9[12] = self->_mailboxSyncVersion;
    *(v9 + 52) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_fullSyncVersion;
    *(v5 + 52) |= 1u;
  }

  v7 = [(NSData *)self->_dateSynced copyWithZone:a3];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = self->_addedMessages;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v21 + 1) + 8 * v13) copyWithZone:{a3, v21}];
        [v6 addAddedMessage:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v15 = [(NSData *)self->_dateForRequestingMoreMessages copyWithZone:a3];
  v16 = *(v6 + 16);
  *(v6 + 16) = v15;

  v17 = [(NSString *)self->_mailboxId copyWithZone:a3];
  v18 = *(v6 + 40);
  *(v6 + 40) = v17;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 48) = self->_mailboxSyncVersion;
    *(v6 + 52) |= 2u;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(v4 + 52);
  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) == 0 || self->_fullSyncVersion != *(v4 + 8))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 52))
  {
LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  dateSynced = self->_dateSynced;
  if (dateSynced | *(v4 + 3) && ![(NSData *)dateSynced isEqual:?])
  {
    goto LABEL_19;
  }

  addedMessages = self->_addedMessages;
  if (addedMessages | *(v4 + 1))
  {
    if (![(NSMutableArray *)addedMessages isEqual:?])
    {
      goto LABEL_19;
    }
  }

  dateForRequestingMoreMessages = self->_dateForRequestingMoreMessages;
  if (dateForRequestingMoreMessages | *(v4 + 2))
  {
    if (![(NSData *)dateForRequestingMoreMessages isEqual:?])
    {
      goto LABEL_19;
    }
  }

  mailboxId = self->_mailboxId;
  if (mailboxId | *(v4 + 5))
  {
    if (![(NSString *)mailboxId isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v10 = (*(v4 + 52) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 52) & 2) == 0 || self->_mailboxSyncVersion != *(v4 + 12))
    {
      goto LABEL_19;
    }

    v10 = 1;
  }

LABEL_20:

  return v10;
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
  v5 = [(NSMutableArray *)self->_addedMessages hash];
  v6 = [(NSData *)self->_dateForRequestingMoreMessages hash];
  v7 = [(NSString *)self->_mailboxId hash];
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_mailboxSyncVersion;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4[13])
  {
    self->_fullSyncVersion = v4[8];
    *&self->_has |= 1u;
  }

  if (*(v4 + 3))
  {
    [(NNMKProtoMoreMessages *)self setDateSynced:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(v5 + 1);
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

        [(NNMKProtoMoreMessages *)self addAddedMessage:*(*(&v12 + 1) + 8 * i), v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if (*(v5 + 2))
  {
    [(NNMKProtoMoreMessages *)self setDateForRequestingMoreMessages:?];
  }

  if (*(v5 + 5))
  {
    [(NNMKProtoMoreMessages *)self setMailboxId:?];
  }

  if ((*(v5 + 52) & 2) != 0)
  {
    self->_mailboxSyncVersion = *(v5 + 12);
    *&self->_has |= 2u;
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end