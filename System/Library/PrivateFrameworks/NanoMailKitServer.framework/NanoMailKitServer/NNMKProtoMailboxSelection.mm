@interface NNMKProtoMailboxSelection
+ (id)protoMailboxSelectionFromMailboxSelection:(id)selection fullSyncVersion:(unint64_t)version;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)mailboxSelection;
- (unint64_t)hash;
- (void)addMailboxes:(id)mailboxes;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NNMKProtoMailboxSelection

- (void)addMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  mailboxes = self->_mailboxes;
  v8 = mailboxesCopy;
  if (!mailboxes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_mailboxes;
    self->_mailboxes = v6;

    mailboxesCopy = v8;
    mailboxes = self->_mailboxes;
  }

  [(NSMutableArray *)mailboxes addObject:mailboxesCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NNMKProtoMailboxSelection;
  v4 = [(NNMKProtoMailboxSelection *)&v8 description];
  dictionaryRepresentation = [(NNMKProtoMailboxSelection *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v19 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_fullSyncVersion];
    [dictionary setObject:v4 forKey:@"fullSyncVersion"];
  }

  if ([(NSMutableArray *)self->_mailboxes count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_mailboxes, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = self->_mailboxes;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

          dictionaryRepresentation = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:dictionaryRepresentation];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"mailboxes"];
  }

  v12 = *MEMORY[0x277D85DE8];

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
  v6 = self->_mailboxes;
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
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[2] = self->_fullSyncVersion;
    *(toCopy + 24) |= 1u;
  }

  v9 = toCopy;
  if ([(NNMKProtoMailboxSelection *)self mailboxesCount])
  {
    [v9 clearMailboxes];
    mailboxesCount = [(NNMKProtoMailboxSelection *)self mailboxesCount];
    if (mailboxesCount)
    {
      v6 = mailboxesCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NNMKProtoMailboxSelection *)self mailboxesAtIndex:i];
        [v9 addMailboxes:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_fullSyncVersion;
    *(v5 + 24) |= 1u;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_mailboxes;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * v11) copyWithZone:{zone, v15}];
        [v6 addMailboxes:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 24);
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_fullSyncVersion != *(equalCopy + 2))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 24))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  mailboxes = self->_mailboxes;
  if (mailboxes | *(equalCopy + 2))
  {
    v7 = [(NSMutableArray *)mailboxes isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_fullSyncVersion;
  }

  else
  {
    v2 = 0;
  }

  return [(NSMutableArray *)self->_mailboxes hash]^ v2;
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 24))
  {
    self->_fullSyncVersion = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(fromCopy + 2);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(NNMKProtoMailboxSelection *)self addMailboxes:*(*(&v12 + 1) + 8 * v10++), v12];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)mailboxSelection
{
  v22 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  mailboxes = [(NNMKProtoMailboxSelection *)self mailboxes];
  v5 = [mailboxes countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(mailboxes);
        }

        mailbox = [*(*(&v17 + 1) + 8 * i) mailbox];
        [array addObject:mailbox];
      }

      v6 = [mailboxes countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  mailboxes2 = [(NNMKProtoMailboxSelection *)self mailboxes];
  v11 = [mailboxes2 count];

  if (!v11)
  {
    v12 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_25B19F000, v12, OS_LOG_TYPE_DEFAULT, "Proto Maibox selection is empty.", v16, 2u);
    }
  }

  v13 = [[NNMKMailboxSelection alloc] initWithMailboxes:array];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)protoMailboxSelectionFromMailboxSelection:(id)selection fullSyncVersion:(unint64_t)version
{
  v22 = *MEMORY[0x277D85DE8];
  selectionCopy = selection;
  v6 = objc_alloc_init(NNMKProtoMailboxSelection);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allMailboxesSyncEnabled = [selectionCopy allMailboxesSyncEnabled];
  v8 = [allMailboxesSyncEnabled countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(allMailboxesSyncEnabled);
        }

        v12 = [NNMKProtoMailbox protoMailboxFromMailbox:*(*(&v17 + 1) + 8 * i)];
        [(NNMKProtoMailboxSelection *)v6 addMailboxes:v12];
      }

      v9 = [allMailboxesSyncEnabled countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  if (![(NNMKProtoMailboxSelection *)v6 mailboxesCount])
  {
    v13 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_25B19F000, v13, OS_LOG_TYPE_DEFAULT, "Sending Proto mailbox selection with no mailboxes", v16, 2u);
    }
  }

  [(NNMKProtoMailboxSelection *)v6 setFullSyncVersion:version];

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

@end