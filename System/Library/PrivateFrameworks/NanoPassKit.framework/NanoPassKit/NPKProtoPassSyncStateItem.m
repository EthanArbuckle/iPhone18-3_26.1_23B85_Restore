@interface NPKProtoPassSyncStateItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addManifestEntry:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoPassSyncStateItem

- (void)addManifestEntry:(id)a3
{
  v4 = a3;
  manifestEntrys = self->_manifestEntrys;
  v8 = v4;
  if (!manifestEntrys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_manifestEntrys;
    self->_manifestEntrys = v6;

    v4 = v8;
    manifestEntrys = self->_manifestEntrys;
  }

  [(NSMutableArray *)manifestEntrys addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoPassSyncStateItem;
  v4 = [(NPKProtoPassSyncStateItem *)&v8 description];
  v5 = [(NPKProtoPassSyncStateItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  passTypeIdentifier = self->_passTypeIdentifier;
  if (passTypeIdentifier)
  {
    [v3 setObject:passTypeIdentifier forKey:@"passTypeIdentifier"];
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

          v15 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:v15];
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

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_passTypeIdentifier)
  {
    [NPKProtoPassSyncStateItem writeTo:];
  }

  v5 = v4;
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

- (void)copyTo:(id)a3
{
  v8 = a3;
  [v8 setPassTypeIdentifier:self->_passTypeIdentifier];
  [v8 setSerialNumber:self->_serialNumber];
  if (*&self->_has)
  {
    *(v8 + 8) = self->_sequenceCounter;
    *(v8 + 48) |= 1u;
  }

  [v8 setManifestHash:self->_manifestHash];
  if ([(NPKProtoPassSyncStateItem *)self manifestEntrysCount])
  {
    [v8 clearManifestEntrys];
    v4 = [(NPKProtoPassSyncStateItem *)self manifestEntrysCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoPassSyncStateItem *)self manifestEntryAtIndex:i];
        [v8 addManifestEntry:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_passTypeIdentifier copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_serialNumber copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_sequenceCounter;
    *(v5 + 48) |= 1u;
  }

  v10 = [(NSData *)self->_manifestHash copyWithZone:a3];
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

        v17 = [*(*(&v20 + 1) + 8 * v16) copyWithZone:{a3, v20}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  passTypeIdentifier = self->_passTypeIdentifier;
  if (passTypeIdentifier | *(v4 + 3))
  {
    if (![(NSString *)passTypeIdentifier isEqual:?])
    {
      goto LABEL_15;
    }
  }

  serialNumber = self->_serialNumber;
  if (serialNumber | *(v4 + 5))
  {
    if (![(NSString *)serialNumber isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v7 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_sequenceCounter != *(v4 + 8))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  manifestHash = self->_manifestHash;
  if (manifestHash | *(v4 + 2) && ![(NSData *)manifestHash isEqual:?])
  {
    goto LABEL_15;
  }

  manifestEntrys = self->_manifestEntrys;
  if (manifestEntrys | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 3))
  {
    [(NPKProtoPassSyncStateItem *)self setPassTypeIdentifier:?];
  }

  if (*(v4 + 5))
  {
    [(NPKProtoPassSyncStateItem *)self setSerialNumber:?];
  }

  if (*(v4 + 48))
  {
    self->_sequenceCounter = *(v4 + 8);
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    [(NPKProtoPassSyncStateItem *)self setManifestHash:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(v4 + 1);
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