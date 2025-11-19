@interface NNMKProtoMessageAdditions
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMessageAddition:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMailboxSyncVersion:(BOOL)a3;
- (void)setHasMessagesAreNew:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NNMKProtoMessageAdditions

- (void)addMessageAddition:(id)a3
{
  v4 = a3;
  messageAdditions = self->_messageAdditions;
  v8 = v4;
  if (!messageAdditions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_messageAdditions;
    self->_messageAdditions = v6;

    v4 = v8;
    messageAdditions = self->_messageAdditions;
  }

  [(NSMutableArray *)messageAdditions addObject:v4];
}

- (void)setHasMessagesAreNew:(BOOL)a3
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
  v8.super_class = NNMKProtoMessageAdditions;
  v4 = [(NNMKProtoMessageAdditions *)&v8 description];
  v5 = [(NNMKProtoMessageAdditions *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x277D85DE8];
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

  if ([(NSMutableArray *)self->_messageAdditions count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_messageAdditions, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = self->_messageAdditions;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"messageAddition"];
  }

  dateForRequestingMoreMessages = self->_dateForRequestingMoreMessages;
  if (dateForRequestingMoreMessages)
  {
    [v3 setObject:dateForRequestingMoreMessages forKey:@"dateForRequestingMoreMessages"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_messagesAreNew];
    [v3 setObject:v14 forKey:@"messagesAreNew"];
  }

  mailboxId = self->_mailboxId;
  if (mailboxId)
  {
    [v3 setObject:mailboxId forKey:@"mailboxId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_mailboxSyncVersion];
    [v3 setObject:v16 forKey:@"mailboxSyncVersion"];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
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

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_messageAdditions;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if (self->_dateForRequestingMoreMessages)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 4) != 0)
  {
    messagesAreNew = self->_messagesAreNew;
    PBDataWriterWriteBOOLField();
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

  v14 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[6] = self->_fullSyncVersion;
    *(v4 + 60) |= 1u;
  }

  v10 = v4;
  if (self->_dateSynced)
  {
    [v4 setDateSynced:?];
  }

  if ([(NNMKProtoMessageAdditions *)self messageAdditionsCount])
  {
    [v10 clearMessageAdditions];
    v5 = [(NNMKProtoMessageAdditions *)self messageAdditionsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NNMKProtoMessageAdditions *)self messageAdditionAtIndex:i];
        [v10 addMessageAddition:v8];
      }
    }
  }

  if (self->_dateForRequestingMoreMessages)
  {
    [v10 setDateForRequestingMoreMessages:?];
  }

  v9 = v10;
  if ((*&self->_has & 4) != 0)
  {
    v10[56] = self->_messagesAreNew;
    v10[60] |= 4u;
  }

  if (self->_mailboxId)
  {
    [v10 setMailboxId:?];
    v9 = v10;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v9 + 10) = self->_mailboxSyncVersion;
    v9[60] |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_fullSyncVersion;
    *(v5 + 60) |= 1u;
  }

  v7 = [(NSData *)self->_dateSynced copyWithZone:a3];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = self->_messageAdditions;
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
        [v6 addMessageAddition:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v15 = [(NSData *)self->_dateForRequestingMoreMessages copyWithZone:a3];
  v16 = *(v6 + 8);
  *(v6 + 8) = v15;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 56) = self->_messagesAreNew;
    *(v6 + 60) |= 4u;
  }

  v17 = [(NSString *)self->_mailboxId copyWithZone:a3, v21];
  v18 = *(v6 + 32);
  *(v6 + 32) = v17;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 40) = self->_mailboxSyncVersion;
    *(v6 + 60) |= 2u;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  v5 = *(v4 + 60);
  if (*&self->_has)
  {
    if ((*(v4 + 60) & 1) == 0 || self->_fullSyncVersion != *(v4 + 6))
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 60))
  {
    goto LABEL_23;
  }

  dateSynced = self->_dateSynced;
  if (dateSynced | *(v4 + 2) && ![(NSData *)dateSynced isEqual:?])
  {
    goto LABEL_23;
  }

  messageAdditions = self->_messageAdditions;
  if (messageAdditions | *(v4 + 6))
  {
    if (![(NSMutableArray *)messageAdditions isEqual:?])
    {
      goto LABEL_23;
    }
  }

  dateForRequestingMoreMessages = self->_dateForRequestingMoreMessages;
  if (dateForRequestingMoreMessages | *(v4 + 1))
  {
    if (![(NSData *)dateForRequestingMoreMessages isEqual:?])
    {
      goto LABEL_23;
    }
  }

  has = self->_has;
  v10 = *(v4 + 60);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 60) & 4) == 0)
    {
      goto LABEL_23;
    }

    v14 = *(v4 + 56);
    if (self->_messagesAreNew)
    {
      if ((*(v4 + 56) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (*(v4 + 56))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 60) & 4) != 0)
  {
    goto LABEL_23;
  }

  mailboxId = self->_mailboxId;
  if (!(mailboxId | *(v4 + 4)))
  {
    goto LABEL_18;
  }

  if (![(NSString *)mailboxId isEqual:?])
  {
LABEL_23:
    v12 = 0;
    goto LABEL_24;
  }

  has = self->_has;
LABEL_18:
  v12 = (*(v4 + 60) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 60) & 2) == 0 || self->_mailboxSyncVersion != *(v4 + 10))
    {
      goto LABEL_23;
    }

    v12 = 1;
  }

LABEL_24:

  return v12;
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
  v5 = [(NSMutableArray *)self->_messageAdditions hash];
  v6 = [(NSData *)self->_dateForRequestingMoreMessages hash];
  if ((*&self->_has & 4) != 0)
  {
    v7 = 2654435761 * self->_messagesAreNew;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSString *)self->_mailboxId hash];
  if ((*&self->_has & 2) != 0)
  {
    v9 = 2654435761 * self->_mailboxSyncVersion;
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4[15])
  {
    self->_fullSyncVersion = v4[6];
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    [(NNMKProtoMessageAdditions *)self setDateSynced:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(v5 + 6);
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

        [(NNMKProtoMessageAdditions *)self addMessageAddition:*(*(&v12 + 1) + 8 * i), v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if (*(v5 + 1))
  {
    [(NNMKProtoMessageAdditions *)self setDateForRequestingMoreMessages:?];
  }

  if ((*(v5 + 60) & 4) != 0)
  {
    self->_messagesAreNew = *(v5 + 56);
    *&self->_has |= 4u;
  }

  if (*(v5 + 4))
  {
    [(NNMKProtoMessageAdditions *)self setMailboxId:?];
  }

  if ((*(v5 + 60) & 2) != 0)
  {
    self->_mailboxSyncVersion = *(v5 + 10);
    *&self->_has |= 2u;
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end