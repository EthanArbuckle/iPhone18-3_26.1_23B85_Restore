@interface NPKProtoPassSyncStateItem
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addManifestEntry:(id)entry;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoPassSyncStateItem

- (void)addManifestEntry:(id)entry
{
  entryCopy = entry;
  manifestEntrys = self->_manifestEntrys;
  v8 = entryCopy;
  if (!manifestEntrys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_manifestEntrys;
    self->_manifestEntrys = v6;

    entryCopy = v8;
    manifestEntrys = self->_manifestEntrys;
  }

  [(NSMutableArray *)manifestEntrys addObject:entryCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoPassSyncStateItem;
  v4 = [(NPKProtoPassSyncStateItem *)&v8 description];
  dictionaryRepresentation = [(NPKProtoPassSyncStateItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  passTypeIdentifier = self->_passTypeIdentifier;
  if (passTypeIdentifier)
  {
    [dictionary setObject:passTypeIdentifier forKey:@"passTypeIdentifier"];
  }

  serialNumber = self->_serialNumber;
  if (serialNumber)
  {
    [v4 setObject:serialNumber forKey:@"serialNumber"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_sequenceCounter];
    [v4 setObject:v7 forKey:@"sequenceCounter"];
  }

  manifestHash = self->_manifestHash;
  if (manifestHash)
  {
    [v4 setObject:manifestHash forKey:@"manifestHash"];
  }

  if ([(NSMutableArray *)self->_manifestEntrys count])
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_manifestEntrys, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = self->_manifestEntrys;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:dictionaryRepresentation];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    [v4 setObject:v9 forKey:@"manifestEntry"];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (!self->_passTypeIdentifier)
  {
    [NPKProtoPassSyncStateItem writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  if (!self->_serialNumber)
  {
    [NPKProtoPassSyncStateItem writeTo:];
  }

  PBDataWriterWriteStringField();
  if (*&self->_has)
  {
    sequenceCounter = self->_sequenceCounter;
    PBDataWriterWriteUint32Field();
  }

  if (!self->_manifestHash)
  {
    [NPKProtoPassSyncStateItem writeTo:];
  }

  PBDataWriterWriteDataField();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_manifestEntrys;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setPassTypeIdentifier:self->_passTypeIdentifier];
  [toCopy setSerialNumber:self->_serialNumber];
  if (*&self->_has)
  {
    *(toCopy + 8) = self->_sequenceCounter;
    *(toCopy + 48) |= 1u;
  }

  [toCopy setManifestHash:self->_manifestHash];
  if ([(NPKProtoPassSyncStateItem *)self manifestEntrysCount])
  {
    [toCopy clearManifestEntrys];
    manifestEntrysCount = [(NPKProtoPassSyncStateItem *)self manifestEntrysCount];
    if (manifestEntrysCount)
    {
      v5 = manifestEntrysCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoPassSyncStateItem *)self manifestEntryAtIndex:i];
        [toCopy addManifestEntry:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_passTypeIdentifier copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_serialNumber copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_sequenceCounter;
    *(v5 + 48) |= 1u;
  }

  v10 = [(NSData *)self->_manifestHash copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = self->_manifestEntrys;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v20 + 1) + 8 * v16) copyWithZone:{zone, v20}];
        [v5 addManifestEntry:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  passTypeIdentifier = self->_passTypeIdentifier;
  if (passTypeIdentifier | *(equalCopy + 3))
  {
    if (![(NSString *)passTypeIdentifier isEqual:?])
    {
      goto LABEL_15;
    }
  }

  serialNumber = self->_serialNumber;
  if (serialNumber | *(equalCopy + 5))
  {
    if (![(NSString *)serialNumber isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v7 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_sequenceCounter != *(equalCopy + 8))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  manifestHash = self->_manifestHash;
  if (manifestHash | *(equalCopy + 2) && ![(NSData *)manifestHash isEqual:?])
  {
    goto LABEL_15;
  }

  manifestEntrys = self->_manifestEntrys;
  if (manifestEntrys | *(equalCopy + 1))
  {
    v10 = [(NSMutableArray *)manifestEntrys isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_16:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_passTypeIdentifier hash];
  v4 = [(NSString *)self->_serialNumber hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_sequenceCounter;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v3 ^ v5 ^ [(NSData *)self->_manifestHash hash];
  return v6 ^ [(NSMutableArray *)self->_manifestEntrys hash];
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 3))
  {
    [(NPKProtoPassSyncStateItem *)self setPassTypeIdentifier:?];
  }

  if (*(fromCopy + 5))
  {
    [(NPKProtoPassSyncStateItem *)self setSerialNumber:?];
  }

  if (*(fromCopy + 48))
  {
    self->_sequenceCounter = *(fromCopy + 8);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    [(NPKProtoPassSyncStateItem *)self setManifestHash:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(fromCopy + 1);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NPKProtoPassSyncStateItem *)self addManifestEntry:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end