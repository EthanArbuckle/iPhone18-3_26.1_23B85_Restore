@interface NNMKProtoBatchedFetchResult
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMessageAddition:(id)addition;
- (void)addMessageDeletion:(id)deletion;
- (void)addMessageUpdate:(id)update;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasMailboxSyncVersion:(BOOL)version;
- (void)setHasShouldTrimDatabase:(BOOL)database;
- (void)writeTo:(id)to;
@end

@implementation NNMKProtoBatchedFetchResult

- (void)addMessageAddition:(id)addition
{
  additionCopy = addition;
  messageAdditions = self->_messageAdditions;
  v8 = additionCopy;
  if (!messageAdditions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_messageAdditions;
    self->_messageAdditions = v6;

    additionCopy = v8;
    messageAdditions = self->_messageAdditions;
  }

  [(NSMutableArray *)messageAdditions addObject:additionCopy];
}

- (void)addMessageUpdate:(id)update
{
  updateCopy = update;
  messageUpdates = self->_messageUpdates;
  v8 = updateCopy;
  if (!messageUpdates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_messageUpdates;
    self->_messageUpdates = v6;

    updateCopy = v8;
    messageUpdates = self->_messageUpdates;
  }

  [(NSMutableArray *)messageUpdates addObject:updateCopy];
}

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

- (void)setHasShouldTrimDatabase:(BOOL)database
{
  if (database)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
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
  v8.super_class = NNMKProtoBatchedFetchResult;
  v4 = [(NNMKProtoBatchedFetchResult *)&v8 description];
  dictionaryRepresentation = [(NNMKProtoBatchedFetchResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v48 = *MEMORY[0x277D85DE8];
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

  if ([(NSMutableArray *)self->_messageAdditions count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_messageAdditions, "count")}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v7 = self->_messageAdditions;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v42;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v42 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v41 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"messageAddition"];
  }

  if ([(NSMutableArray *)self->_messageUpdates count])
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_messageUpdates, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v14 = self->_messageUpdates;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v38;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation2 = [*(*(&v37 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation2];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v16);
    }

    [dictionary setObject:v13 forKey:@"messageUpdate"];
  }

  if ([(NSMutableArray *)self->_messageDeletions count])
  {
    v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_messageDeletions, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v21 = self->_messageDeletions;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v33 objects:v45 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v34;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v34 != v24)
          {
            objc_enumerationMutation(v21);
          }

          dictionaryRepresentation3 = [*(*(&v33 + 1) + 8 * k) dictionaryRepresentation];
          [v20 addObject:dictionaryRepresentation3];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v33 objects:v45 count:16];
      }

      while (v23);
    }

    [dictionary setObject:v20 forKey:@"messageDeletion"];
  }

  dateForRequestingMoreMessages = self->_dateForRequestingMoreMessages;
  if (dateForRequestingMoreMessages)
  {
    [dictionary setObject:dateForRequestingMoreMessages forKey:@"dateForRequestingMoreMessages"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v28 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldTrimDatabase];
    [dictionary setObject:v28 forKey:@"shouldTrimDatabase"];
  }

  mailboxId = self->_mailboxId;
  if (mailboxId)
  {
    [dictionary setObject:mailboxId forKey:@"mailboxId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_mailboxSyncVersion];
    [dictionary setObject:v30 forKey:@"mailboxSyncVersion"];
  }

  v31 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v42 = *MEMORY[0x277D85DE8];
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

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = self->_messageAdditions;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    do
    {
      v10 = 0;
      do
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v35 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v8);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = self->_messageUpdates;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    do
    {
      v16 = 0;
      do
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v31 + 1) + 8 * v16);
        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v14);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = self->_messageDeletions;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      v22 = 0;
      do
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v27 + 1) + 8 * v22);
        PBDataWriterWriteSubmessage();
        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v20);
  }

  if (self->_dateForRequestingMoreMessages)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 4) != 0)
  {
    shouldTrimDatabase = self->_shouldTrimDatabase;
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

  v26 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[6] = self->_fullSyncVersion;
    *(toCopy + 76) |= 1u;
  }

  v18 = toCopy;
  if (self->_dateSynced)
  {
    [toCopy setDateSynced:?];
  }

  if ([(NNMKProtoBatchedFetchResult *)self messageAdditionsCount])
  {
    [v18 clearMessageAdditions];
    messageAdditionsCount = [(NNMKProtoBatchedFetchResult *)self messageAdditionsCount];
    if (messageAdditionsCount)
    {
      v6 = messageAdditionsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NNMKProtoBatchedFetchResult *)self messageAdditionAtIndex:i];
        [v18 addMessageAddition:v8];
      }
    }
  }

  if ([(NNMKProtoBatchedFetchResult *)self messageUpdatesCount])
  {
    [v18 clearMessageUpdates];
    messageUpdatesCount = [(NNMKProtoBatchedFetchResult *)self messageUpdatesCount];
    if (messageUpdatesCount)
    {
      v10 = messageUpdatesCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(NNMKProtoBatchedFetchResult *)self messageUpdateAtIndex:j];
        [v18 addMessageUpdate:v12];
      }
    }
  }

  if ([(NNMKProtoBatchedFetchResult *)self messageDeletionsCount])
  {
    [v18 clearMessageDeletions];
    messageDeletionsCount = [(NNMKProtoBatchedFetchResult *)self messageDeletionsCount];
    if (messageDeletionsCount)
    {
      v14 = messageDeletionsCount;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(NNMKProtoBatchedFetchResult *)self messageDeletionAtIndex:k];
        [v18 addMessageDeletion:v16];
      }
    }
  }

  if (self->_dateForRequestingMoreMessages)
  {
    [v18 setDateForRequestingMoreMessages:?];
  }

  v17 = v18;
  if ((*&self->_has & 4) != 0)
  {
    v18[72] = self->_shouldTrimDatabase;
    v18[76] |= 4u;
  }

  if (self->_mailboxId)
  {
    [v18 setMailboxId:?];
    v17 = v18;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v17 + 10) = self->_mailboxSyncVersion;
    v17[76] |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_fullSyncVersion;
    *(v5 + 76) |= 1u;
  }

  v7 = [(NSData *)self->_dateSynced copyWithZone:zone];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v9 = self->_messageAdditions;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v42;
    do
    {
      v13 = 0;
      do
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v41 + 1) + 8 * v13) copyWithZone:zone];
        [v6 addMessageAddition:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v11);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v15 = self->_messageUpdates;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v38;
    do
    {
      v19 = 0;
      do
      {
        if (*v38 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v37 + 1) + 8 * v19) copyWithZone:zone];
        [v6 addMessageUpdate:v20];

        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v17);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = self->_messageDeletions;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v34;
    do
    {
      v25 = 0;
      do
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v33 + 1) + 8 * v25) copyWithZone:{zone, v33}];
        [v6 addMessageDeletion:v26];

        ++v25;
      }

      while (v23 != v25);
      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v23);
  }

  v27 = [(NSData *)self->_dateForRequestingMoreMessages copyWithZone:zone];
  v28 = *(v6 + 8);
  *(v6 + 8) = v27;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 72) = self->_shouldTrimDatabase;
    *(v6 + 76) |= 4u;
  }

  v29 = [(NSString *)self->_mailboxId copyWithZone:zone, v33];
  v30 = *(v6 + 32);
  *(v6 + 32) = v29;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 40) = self->_mailboxSyncVersion;
    *(v6 + 76) |= 2u;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = *(equalCopy + 76);
  if (*&self->_has)
  {
    if ((*(equalCopy + 76) & 1) == 0 || self->_fullSyncVersion != *(equalCopy + 6))
    {
      goto LABEL_27;
    }
  }

  else if (*(equalCopy + 76))
  {
    goto LABEL_27;
  }

  dateSynced = self->_dateSynced;
  if (dateSynced | *(equalCopy + 2) && ![(NSData *)dateSynced isEqual:?])
  {
    goto LABEL_27;
  }

  messageAdditions = self->_messageAdditions;
  if (messageAdditions | *(equalCopy + 6))
  {
    if (![(NSMutableArray *)messageAdditions isEqual:?])
    {
      goto LABEL_27;
    }
  }

  messageUpdates = self->_messageUpdates;
  if (messageUpdates | *(equalCopy + 8))
  {
    if (![(NSMutableArray *)messageUpdates isEqual:?])
    {
      goto LABEL_27;
    }
  }

  messageDeletions = self->_messageDeletions;
  if (messageDeletions | *(equalCopy + 7))
  {
    if (![(NSMutableArray *)messageDeletions isEqual:?])
    {
      goto LABEL_27;
    }
  }

  dateForRequestingMoreMessages = self->_dateForRequestingMoreMessages;
  if (dateForRequestingMoreMessages | *(equalCopy + 1))
  {
    if (![(NSData *)dateForRequestingMoreMessages isEqual:?])
    {
      goto LABEL_27;
    }
  }

  has = self->_has;
  v12 = *(equalCopy + 76);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 76) & 4) == 0)
    {
      goto LABEL_27;
    }

    v16 = *(equalCopy + 72);
    if (self->_shouldTrimDatabase)
    {
      if ((*(equalCopy + 72) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (*(equalCopy + 72))
    {
      goto LABEL_27;
    }
  }

  else if ((*(equalCopy + 76) & 4) != 0)
  {
    goto LABEL_27;
  }

  mailboxId = self->_mailboxId;
  if (!(mailboxId | *(equalCopy + 4)))
  {
    goto LABEL_22;
  }

  if (![(NSString *)mailboxId isEqual:?])
  {
LABEL_27:
    v14 = 0;
    goto LABEL_28;
  }

  has = self->_has;
LABEL_22:
  v14 = (*(equalCopy + 76) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 76) & 2) == 0 || self->_mailboxSyncVersion != *(equalCopy + 10))
    {
      goto LABEL_27;
    }

    v14 = 1;
  }

LABEL_28:

  return v14;
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
  v6 = [(NSMutableArray *)self->_messageUpdates hash];
  v7 = [(NSMutableArray *)self->_messageDeletions hash];
  v8 = [(NSData *)self->_dateForRequestingMoreMessages hash];
  if ((*&self->_has & 4) != 0)
  {
    v9 = 2654435761 * self->_shouldTrimDatabase;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(NSString *)self->_mailboxId hash];
  if ((*&self->_has & 2) != 0)
  {
    v11 = 2654435761 * self->_mailboxSyncVersion;
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)from
{
  v37 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[19])
  {
    self->_fullSyncVersion = fromCopy[6];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    [(NNMKProtoBatchedFetchResult *)self setDateSynced:?];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = *(v5 + 6);
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(NNMKProtoBatchedFetchResult *)self addMessageAddition:*(*(&v30 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v8);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = *(v5 + 8);
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(NNMKProtoBatchedFetchResult *)self addMessageUpdate:*(*(&v26 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v13);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = *(v5 + 7);
  v17 = [v16 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(NNMKProtoBatchedFetchResult *)self addMessageDeletion:*(*(&v22 + 1) + 8 * k), v22];
      }

      v18 = [v16 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v18);
  }

  if (*(v5 + 1))
  {
    [(NNMKProtoBatchedFetchResult *)self setDateForRequestingMoreMessages:?];
  }

  if ((*(v5 + 76) & 4) != 0)
  {
    self->_shouldTrimDatabase = *(v5 + 72);
    *&self->_has |= 4u;
  }

  if (*(v5 + 4))
  {
    [(NNMKProtoBatchedFetchResult *)self setMailboxId:?];
  }

  if ((*(v5 + 76) & 2) != 0)
  {
    self->_mailboxSyncVersion = *(v5 + 10);
    *&self->_has |= 2u;
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end