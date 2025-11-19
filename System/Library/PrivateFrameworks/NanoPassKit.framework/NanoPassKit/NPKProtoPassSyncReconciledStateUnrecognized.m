@interface NPKProtoPassSyncReconciledStateUnrecognized
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoPassSyncReconciledStateUnrecognized

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoPassSyncReconciledStateUnrecognized;
  v4 = [(NPKProtoPassSyncReconciledStateUnrecognized *)&v8 description];
  v5 = [(NPKProtoPassSyncReconciledStateUnrecognized *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  unrecognizedReconciledStateHash = self->_unrecognizedReconciledStateHash;
  if (unrecognizedReconciledStateHash)
  {
    [v3 setObject:unrecognizedReconciledStateHash forKey:@"unrecognizedReconciledStateHash"];
  }

  libraryPassSyncState = self->_libraryPassSyncState;
  if (libraryPassSyncState)
  {
    v7 = [(NPKProtoPassSyncState *)libraryPassSyncState dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"libraryPassSyncState"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_unrecognizedReconciledStateVersion];
    [v4 setObject:v8 forKey:@"unrecognizedReconciledStateVersion"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_unrecognizedReconciledStateHash)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_libraryPassSyncState)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    unrecognizedReconciledStateVersion = self->_unrecognizedReconciledStateVersion;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_unrecognizedReconciledStateHash)
  {
    [v4 setUnrecognizedReconciledStateHash:?];
    v4 = v5;
  }

  if (self->_libraryPassSyncState)
  {
    [v5 setLibraryPassSyncState:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 6) = self->_unrecognizedReconciledStateVersion;
    *(v4 + 28) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_unrecognizedReconciledStateHash copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NPKProtoPassSyncState *)self->_libraryPassSyncState copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_unrecognizedReconciledStateVersion;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  unrecognizedReconciledStateHash = self->_unrecognizedReconciledStateHash;
  if (unrecognizedReconciledStateHash | *(v4 + 2))
  {
    if (![(NSData *)unrecognizedReconciledStateHash isEqual:?])
    {
      goto LABEL_10;
    }
  }

  libraryPassSyncState = self->_libraryPassSyncState;
  if (libraryPassSyncState | *(v4 + 1))
  {
    if (![(NPKProtoPassSyncState *)libraryPassSyncState isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) != 0 && self->_unrecognizedReconciledStateVersion == *(v4 + 6))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_unrecognizedReconciledStateHash hash];
  v4 = [(NPKProtoPassSyncState *)self->_libraryPassSyncState hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_unrecognizedReconciledStateVersion;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 2))
  {
    [(NPKProtoPassSyncReconciledStateUnrecognized *)self setUnrecognizedReconciledStateHash:?];
    v4 = v7;
  }

  libraryPassSyncState = self->_libraryPassSyncState;
  v6 = *(v4 + 1);
  if (libraryPassSyncState)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(NPKProtoPassSyncState *)libraryPassSyncState mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(NPKProtoPassSyncReconciledStateUnrecognized *)self setLibraryPassSyncState:?];
  }

  v4 = v7;
LABEL_9:
  if (v4[7])
  {
    self->_unrecognizedReconciledStateVersion = v4[6];
    *&self->_has |= 1u;
  }
}

@end