@interface NPKProtoResyncNeededRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addManifestHashes:(id)hashes;
- (void)addUniqueIDs:(id)ds;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasFullResyncNeeded:(BOOL)needed;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoResyncNeededRequest

- (void)addUniqueIDs:(id)ds
{
  dsCopy = ds;
  uniqueIDs = self->_uniqueIDs;
  v8 = dsCopy;
  if (!uniqueIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_uniqueIDs;
    self->_uniqueIDs = v6;

    dsCopy = v8;
    uniqueIDs = self->_uniqueIDs;
  }

  [(NSMutableArray *)uniqueIDs addObject:dsCopy];
}

- (void)addManifestHashes:(id)hashes
{
  hashesCopy = hashes;
  manifestHashes = self->_manifestHashes;
  v8 = hashesCopy;
  if (!manifestHashes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_manifestHashes;
    self->_manifestHashes = v6;

    hashesCopy = v8;
    manifestHashes = self->_manifestHashes;
  }

  [(NSMutableArray *)manifestHashes addObject:hashesCopy];
}

- (void)setHasFullResyncNeeded:(BOOL)needed
{
  if (needed)
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
  v8.super_class = NPKProtoResyncNeededRequest;
  v4 = [(NPKProtoResyncNeededRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoResyncNeededRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  expectedHash = self->_expectedHash;
  if (expectedHash)
  {
    dictionaryRepresentation = [(NPKProtoHash *)expectedHash dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"expectedHash"];
  }

  uniqueIDs = self->_uniqueIDs;
  if (uniqueIDs)
  {
    [dictionary setObject:uniqueIDs forKey:@"uniqueIDs"];
  }

  manifestHashes = self->_manifestHashes;
  if (manifestHashes)
  {
    [dictionary setObject:manifestHashes forKey:@"manifestHashes"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_fullResyncNeeded];
    [dictionary setObject:v9 forKey:@"fullResyncNeeded"];

    has = self->_has;
  }

  if (has)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_resyncID];
    [dictionary setObject:v10 forKey:@"resyncID"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v31 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_expectedHash)
  {
    PBDataWriterWriteSubmessage();
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = self->_uniqueIDs;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = self->_manifestHashes;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * j);
        PBDataWriterWriteDataField();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v13);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    fullResyncNeeded = self->_fullResyncNeeded;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if (has)
  {
    resyncID = self->_resyncID;
    PBDataWriterWriteUint32Field();
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_expectedHash)
  {
    [toCopy setExpectedHash:?];
  }

  if ([(NPKProtoResyncNeededRequest *)self uniqueIDsCount])
  {
    [toCopy clearUniqueIDs];
    uniqueIDsCount = [(NPKProtoResyncNeededRequest *)self uniqueIDsCount];
    if (uniqueIDsCount)
    {
      v5 = uniqueIDsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoResyncNeededRequest *)self uniqueIDsAtIndex:i];
        [toCopy addUniqueIDs:v7];
      }
    }
  }

  if ([(NPKProtoResyncNeededRequest *)self manifestHashesCount])
  {
    [toCopy clearManifestHashes];
    manifestHashesCount = [(NPKProtoResyncNeededRequest *)self manifestHashesCount];
    if (manifestHashesCount)
    {
      v9 = manifestHashesCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(NPKProtoResyncNeededRequest *)self manifestHashesAtIndex:j];
        [toCopy addManifestHashes:v11];
      }
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 40) = self->_fullResyncNeeded;
    *(toCopy + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 6) = self->_resyncID;
    *(toCopy + 44) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NPKProtoHash *)self->_expectedHash copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = self->_uniqueIDs;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v27 + 1) + 8 * i) copyWithZone:zone];
        [v5 addUniqueIDs:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v10);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = self->_manifestHashes;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v23 + 1) + 8 * j) copyWithZone:{zone, v23}];
        [v5 addManifestHashes:v19];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 40) = self->_fullResyncNeeded;
    *(v5 + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 24) = self->_resyncID;
    *(v5 + 44) |= 1u;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  expectedHash = self->_expectedHash;
  if (expectedHash | *(equalCopy + 1))
  {
    if (![(NPKProtoHash *)expectedHash isEqual:?])
    {
      goto LABEL_15;
    }
  }

  uniqueIDs = self->_uniqueIDs;
  if (uniqueIDs | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)uniqueIDs isEqual:?])
    {
      goto LABEL_15;
    }
  }

  manifestHashes = self->_manifestHashes;
  if (manifestHashes | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)manifestHashes isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0)
    {
      goto LABEL_15;
    }

    v10 = *(equalCopy + 40);
    if (self->_fullResyncNeeded)
    {
      if ((*(equalCopy + 40) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (*(equalCopy + 40))
    {
      goto LABEL_15;
    }
  }

  else if ((*(equalCopy + 44) & 2) != 0)
  {
    goto LABEL_15;
  }

  v8 = (*(equalCopy + 44) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) != 0 && self->_resyncID == *(equalCopy + 6))
    {
      v8 = 1;
      goto LABEL_16;
    }

LABEL_15:
    v8 = 0;
  }

LABEL_16:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NPKProtoHash *)self->_expectedHash hash];
  v4 = [(NSMutableArray *)self->_uniqueIDs hash];
  v5 = [(NSMutableArray *)self->_manifestHashes hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_fullResyncNeeded;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_resyncID;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  v29 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  expectedHash = self->_expectedHash;
  v6 = *(fromCopy + 1);
  if (expectedHash)
  {
    if (v6)
    {
      [(NPKProtoHash *)expectedHash mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(NPKProtoResyncNeededRequest *)self setExpectedHash:?];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = *(fromCopy + 4);
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(NPKProtoResyncNeededRequest *)self addUniqueIDs:*(*(&v23 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v9);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = *(fromCopy + 2);
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(NPKProtoResyncNeededRequest *)self addManifestHashes:*(*(&v19 + 1) + 8 * j), v19];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  v17 = *(fromCopy + 44);
  if ((v17 & 2) != 0)
  {
    self->_fullResyncNeeded = *(fromCopy + 40);
    *&self->_has |= 2u;
    v17 = *(fromCopy + 44);
  }

  if (v17)
  {
    self->_resyncID = *(fromCopy + 6);
    *&self->_has |= 1u;
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end