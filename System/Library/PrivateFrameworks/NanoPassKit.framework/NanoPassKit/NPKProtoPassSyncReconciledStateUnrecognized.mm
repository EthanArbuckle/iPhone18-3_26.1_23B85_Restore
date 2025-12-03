@interface NPKProtoPassSyncReconciledStateUnrecognized
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoPassSyncReconciledStateUnrecognized

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoPassSyncReconciledStateUnrecognized;
  v4 = [(NPKProtoPassSyncReconciledStateUnrecognized *)&v8 description];
  dictionaryRepresentation = [(NPKProtoPassSyncReconciledStateUnrecognized *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  unrecognizedReconciledStateHash = self->_unrecognizedReconciledStateHash;
  if (unrecognizedReconciledStateHash)
  {
    [dictionary setObject:unrecognizedReconciledStateHash forKey:@"unrecognizedReconciledStateHash"];
  }

  libraryPassSyncState = self->_libraryPassSyncState;
  if (libraryPassSyncState)
  {
    dictionaryRepresentation = [(NPKProtoPassSyncState *)libraryPassSyncState dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"libraryPassSyncState"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_unrecognizedReconciledStateVersion];
    [v4 setObject:v8 forKey:@"unrecognizedReconciledStateVersion"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_unrecognizedReconciledStateHash)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_libraryPassSyncState)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    unrecognizedReconciledStateVersion = self->_unrecognizedReconciledStateVersion;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_unrecognizedReconciledStateHash)
  {
    [toCopy setUnrecognizedReconciledStateHash:?];
    toCopy = v5;
  }

  if (self->_libraryPassSyncState)
  {
    [v5 setLibraryPassSyncState:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 6) = self->_unrecognizedReconciledStateVersion;
    *(toCopy + 28) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_unrecognizedReconciledStateHash copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NPKProtoPassSyncState *)self->_libraryPassSyncState copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_unrecognizedReconciledStateVersion;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  unrecognizedReconciledStateHash = self->_unrecognizedReconciledStateHash;
  if (unrecognizedReconciledStateHash | *(equalCopy + 2))
  {
    if (![(NSData *)unrecognizedReconciledStateHash isEqual:?])
    {
      goto LABEL_10;
    }
  }

  libraryPassSyncState = self->_libraryPassSyncState;
  if (libraryPassSyncState | *(equalCopy + 1))
  {
    if (![(NPKProtoPassSyncState *)libraryPassSyncState isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) != 0 && self->_unrecognizedReconciledStateVersion == *(equalCopy + 6))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(NPKProtoPassSyncReconciledStateUnrecognized *)self setUnrecognizedReconciledStateHash:?];
    fromCopy = v7;
  }

  libraryPassSyncState = self->_libraryPassSyncState;
  v6 = *(fromCopy + 1);
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

  fromCopy = v7;
LABEL_9:
  if (fromCopy[7])
  {
    self->_unrecognizedReconciledStateVersion = fromCopy[6];
    *&self->_has |= 1u;
  }
}

@end