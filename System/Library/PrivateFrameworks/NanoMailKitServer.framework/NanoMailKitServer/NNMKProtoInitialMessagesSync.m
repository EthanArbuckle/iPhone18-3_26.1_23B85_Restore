@interface NNMKProtoInitialMessagesSync
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addInitialMessage:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMailboxSyncVersion:(BOOL)a3;
- (void)setHasOrganizedByThread:(BOOL)a3;
- (void)setHasSyncedMailboxType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NNMKProtoInitialMessagesSync

- (void)addInitialMessage:(id)a3
{
  v4 = a3;
  initialMessages = self->_initialMessages;
  v8 = v4;
  if (!initialMessages)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_initialMessages;
    self->_initialMessages = v6;

    v4 = v8;
    initialMessages = self->_initialMessages;
  }

  [(NSMutableArray *)initialMessages addObject:v4];
}

- (void)setHasSyncedMailboxType:(BOOL)a3
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

- (void)setHasOrganizedByThread:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NNMKProtoInitialMessagesSync;
  v4 = [(NNMKProtoInitialMessagesSync *)&v8 description];
  v5 = [(NNMKProtoInitialMessagesSync *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v30 = *MEMORY[0x277D85DE8];
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

  if ([(NSMutableArray *)self->_initialMessages count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_initialMessages, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = self->_initialMessages;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"initialMessage"];
  }

  dateForRequestingMoreMessages = self->_dateForRequestingMoreMessages;
  if (dateForRequestingMoreMessages)
  {
    [v3 setObject:dateForRequestingMoreMessages forKey:@"dateForRequestingMoreMessages"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_syncedMailboxType];
    [v3 setObject:v14 forKey:@"syncedMailboxType"];
  }

  syncedMailboxAccountId = self->_syncedMailboxAccountId;
  if (syncedMailboxAccountId)
  {
    [v3 setObject:syncedMailboxAccountId forKey:@"syncedMailboxAccountId"];
  }

  syncedMailboxURL = self->_syncedMailboxURL;
  if (syncedMailboxURL)
  {
    [v3 setObject:syncedMailboxURL forKey:@"syncedMailboxURL"];
  }

  syncedMailboxCustomName = self->_syncedMailboxCustomName;
  if (syncedMailboxCustomName)
  {
    [v3 setObject:syncedMailboxCustomName forKey:@"syncedMailboxCustomName"];
  }

  mailbox = self->_mailbox;
  if (mailbox)
  {
    v19 = [(NNMKProtoMailbox *)mailbox dictionaryRepresentation];
    [v3 setObject:v19 forKey:@"mailbox"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_mailboxSyncVersion];
    [v3 setObject:v21 forKey:@"mailboxSyncVersion"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v22 = [MEMORY[0x277CCABB0] numberWithBool:self->_organizedByThread];
    [v3 setObject:v22 forKey:@"organizedByThread"];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
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

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_initialMessages;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  if (self->_dateForRequestingMoreMessages)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 4) != 0)
  {
    syncedMailboxType = self->_syncedMailboxType;
    PBDataWriterWriteUint32Field();
  }

  if (self->_syncedMailboxAccountId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_syncedMailboxURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_syncedMailboxCustomName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_mailbox)
  {
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    mailboxSyncVersion = self->_mailboxSyncVersion;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    organizedByThread = self->_organizedByThread;
    PBDataWriterWriteBOOLField();
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[6] = self->_fullSyncVersion;
    *(v4 + 92) |= 1u;
  }

  v11 = v4;
  if (self->_dateSynced)
  {
    [v4 setDateSynced:?];
  }

  if ([(NNMKProtoInitialMessagesSync *)self initialMessagesCount])
  {
    [v11 clearInitialMessages];
    v5 = [(NNMKProtoInitialMessagesSync *)self initialMessagesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NNMKProtoInitialMessagesSync *)self initialMessageAtIndex:i];
        [v11 addInitialMessage:v8];
      }
    }
  }

  if (self->_dateForRequestingMoreMessages)
  {
    [v11 setDateForRequestingMoreMessages:?];
  }

  v9 = v11;
  if ((*&self->_has & 4) != 0)
  {
    *(v11 + 18) = self->_syncedMailboxType;
    *(v11 + 92) |= 4u;
  }

  if (self->_syncedMailboxAccountId)
  {
    [v11 setSyncedMailboxAccountId:?];
    v9 = v11;
  }

  if (self->_syncedMailboxURL)
  {
    [v11 setSyncedMailboxURL:?];
    v9 = v11;
  }

  if (self->_syncedMailboxCustomName)
  {
    [v11 setSyncedMailboxCustomName:?];
    v9 = v11;
  }

  if (self->_mailbox)
  {
    [v11 setMailbox:?];
    v9 = v11;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v9[12] = self->_mailboxSyncVersion;
    *(v9 + 92) |= 2u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v9 + 88) = self->_organizedByThread;
    *(v9 + 92) |= 8u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_fullSyncVersion;
    *(v5 + 92) |= 1u;
  }

  v7 = [(NSData *)self->_dateSynced copyWithZone:a3];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = self->_initialMessages;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v28 + 1) + 8 * i) copyWithZone:{a3, v28}];
        [v6 addInitialMessage:v14];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v11);
  }

  v15 = [(NSData *)self->_dateForRequestingMoreMessages copyWithZone:a3];
  v16 = *(v6 + 8);
  *(v6 + 8) = v15;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 72) = self->_syncedMailboxType;
    *(v6 + 92) |= 4u;
  }

  v17 = [(NSString *)self->_syncedMailboxAccountId copyWithZone:a3, v28];
  v18 = *(v6 + 56);
  *(v6 + 56) = v17;

  v19 = [(NSString *)self->_syncedMailboxURL copyWithZone:a3];
  v20 = *(v6 + 80);
  *(v6 + 80) = v19;

  v21 = [(NSString *)self->_syncedMailboxCustomName copyWithZone:a3];
  v22 = *(v6 + 64);
  *(v6 + 64) = v21;

  v23 = [(NNMKProtoMailbox *)self->_mailbox copyWithZone:a3];
  v24 = *(v6 + 40);
  *(v6 + 40) = v23;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 48) = self->_mailboxSyncVersion;
    *(v6 + 92) |= 2u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v6 + 88) = self->_organizedByThread;
    *(v6 + 92) |= 8u;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  v5 = *(v4 + 92);
  if (*&self->_has)
  {
    if ((*(v4 + 92) & 1) == 0 || self->_fullSyncVersion != *(v4 + 6))
    {
      goto LABEL_33;
    }
  }

  else if (*(v4 + 92))
  {
    goto LABEL_33;
  }

  dateSynced = self->_dateSynced;
  if (dateSynced | *(v4 + 2) && ![(NSData *)dateSynced isEqual:?])
  {
    goto LABEL_33;
  }

  initialMessages = self->_initialMessages;
  if (initialMessages | *(v4 + 4))
  {
    if (![(NSMutableArray *)initialMessages isEqual:?])
    {
      goto LABEL_33;
    }
  }

  dateForRequestingMoreMessages = self->_dateForRequestingMoreMessages;
  if (dateForRequestingMoreMessages | *(v4 + 1))
  {
    if (![(NSData *)dateForRequestingMoreMessages isEqual:?])
    {
      goto LABEL_33;
    }
  }

  v9 = *(v4 + 92);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 92) & 4) == 0 || self->_syncedMailboxType != *(v4 + 18))
    {
      goto LABEL_33;
    }
  }

  else if ((*(v4 + 92) & 4) != 0)
  {
    goto LABEL_33;
  }

  syncedMailboxAccountId = self->_syncedMailboxAccountId;
  if (syncedMailboxAccountId | *(v4 + 7) && ![(NSString *)syncedMailboxAccountId isEqual:?])
  {
    goto LABEL_33;
  }

  syncedMailboxURL = self->_syncedMailboxURL;
  if (syncedMailboxURL | *(v4 + 10))
  {
    if (![(NSString *)syncedMailboxURL isEqual:?])
    {
      goto LABEL_33;
    }
  }

  syncedMailboxCustomName = self->_syncedMailboxCustomName;
  if (syncedMailboxCustomName | *(v4 + 8))
  {
    if (![(NSString *)syncedMailboxCustomName isEqual:?])
    {
      goto LABEL_33;
    }
  }

  mailbox = self->_mailbox;
  if (mailbox | *(v4 + 5))
  {
    if (![(NNMKProtoMailbox *)mailbox isEqual:?])
    {
      goto LABEL_33;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 92) & 2) == 0 || self->_mailboxSyncVersion != *(v4 + 12))
    {
      goto LABEL_33;
    }
  }

  else if ((*(v4 + 92) & 2) != 0)
  {
    goto LABEL_33;
  }

  v14 = (*(v4 + 92) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 92) & 8) == 0)
    {
LABEL_33:
      v14 = 0;
      goto LABEL_34;
    }

    if (self->_organizedByThread)
    {
      if ((*(v4 + 88) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (*(v4 + 88))
    {
      goto LABEL_33;
    }

    v14 = 1;
  }

LABEL_34:

  return v14;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v14 = 2654435761 * self->_fullSyncVersion;
  }

  else
  {
    v14 = 0;
  }

  v3 = [(NSData *)self->_dateSynced hash];
  v4 = [(NSMutableArray *)self->_initialMessages hash];
  v5 = [(NSData *)self->_dateForRequestingMoreMessages hash];
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_syncedMailboxType;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSString *)self->_syncedMailboxAccountId hash];
  v8 = [(NSString *)self->_syncedMailboxURL hash];
  v9 = [(NSString *)self->_syncedMailboxCustomName hash];
  v10 = [(NNMKProtoMailbox *)self->_mailbox hash];
  if ((*&self->_has & 2) != 0)
  {
    v11 = 2654435761 * self->_mailboxSyncVersion;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_11:
    v12 = 0;
    return v3 ^ v14 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  }

  v11 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v12 = 2654435761 * self->_organizedByThread;
  return v3 ^ v14 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4[23])
  {
    self->_fullSyncVersion = v4[6];
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    [(NNMKProtoInitialMessagesSync *)self setDateSynced:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = *(v5 + 4);
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(NNMKProtoInitialMessagesSync *)self addInitialMessage:*(*(&v15 + 1) + 8 * i), v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if (*(v5 + 1))
  {
    [(NNMKProtoInitialMessagesSync *)self setDateForRequestingMoreMessages:?];
  }

  if ((*(v5 + 92) & 4) != 0)
  {
    self->_syncedMailboxType = *(v5 + 18);
    *&self->_has |= 4u;
  }

  if (*(v5 + 7))
  {
    [(NNMKProtoInitialMessagesSync *)self setSyncedMailboxAccountId:?];
  }

  if (*(v5 + 10))
  {
    [(NNMKProtoInitialMessagesSync *)self setSyncedMailboxURL:?];
  }

  if (*(v5 + 8))
  {
    [(NNMKProtoInitialMessagesSync *)self setSyncedMailboxCustomName:?];
  }

  mailbox = self->_mailbox;
  v12 = *(v5 + 5);
  if (mailbox)
  {
    if (v12)
    {
      [(NNMKProtoMailbox *)mailbox mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(NNMKProtoInitialMessagesSync *)self setMailbox:?];
  }

  v13 = *(v5 + 92);
  if ((v13 & 2) != 0)
  {
    self->_mailboxSyncVersion = *(v5 + 12);
    *&self->_has |= 2u;
    v13 = *(v5 + 92);
  }

  if ((v13 & 8) != 0)
  {
    self->_organizedByThread = *(v5 + 88);
    *&self->_has |= 8u;
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end