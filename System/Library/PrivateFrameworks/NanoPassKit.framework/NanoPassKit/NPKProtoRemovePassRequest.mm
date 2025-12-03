@interface NPKProtoRemovePassRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasResyncID:(BOOL)d;
- (void)setHasSyncID:(BOOL)d;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoRemovePassRequest

- (void)setHasResyncID:(BOOL)d
{
  if (d)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSyncID:(BOOL)d
{
  if (d)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoRemovePassRequest;
  v4 = [(NPKProtoRemovePassRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoRemovePassRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  passID = self->_passID;
  if (passID)
  {
    [dictionary setObject:passID forKey:@"passID"];
  }

  libraryHash = self->_libraryHash;
  if (libraryHash)
  {
    dictionaryRepresentation = [(NPKProtoHash *)libraryHash dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"libraryHash"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_resyncID];
    [v4 setObject:v8 forKey:@"resyncID"];
  }

  catalog = self->_catalog;
  if (catalog)
  {
    dictionaryRepresentation2 = [(NPKProtoCatalog *)catalog dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"catalog"];
  }

  has = self->_has;
  if (has)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_lastKnownResyncID];
    [v4 setObject:v12 forKey:@"lastKnownResyncID"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_syncID];
    [v4 setObject:v13 forKey:@"syncID"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_passID)
  {
    [NPKProtoRemovePassRequest writeTo:];
  }

  v10 = toCopy;
  PBDataWriterWriteStringField();
  if (self->_libraryHash)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    resyncID = self->_resyncID;
    PBDataWriterWriteUint32Field();
  }

  v6 = v10;
  if (self->_catalog)
  {
    PBDataWriterWriteSubmessage();
    v6 = v10;
  }

  has = self->_has;
  if (has)
  {
    lastKnownResyncID = self->_lastKnownResyncID;
    PBDataWriterWriteUint32Field();
    v6 = v10;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    syncID = self->_syncID;
    PBDataWriterWriteUint32Field();
    v6 = v10;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setPassID:self->_passID];
  if (self->_libraryHash)
  {
    [toCopy setLibraryHash:?];
  }

  v4 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 10) = self->_resyncID;
    *(toCopy + 48) |= 2u;
  }

  if (self->_catalog)
  {
    [toCopy setCatalog:?];
    v4 = toCopy;
  }

  has = self->_has;
  if (has)
  {
    v4[4] = self->_lastKnownResyncID;
    *(v4 + 48) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v4[11] = self->_syncID;
    *(v4 + 48) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_passID copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NPKProtoHash *)self->_libraryHash copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 40) = self->_resyncID;
    *(v5 + 48) |= 2u;
  }

  v10 = [(NPKProtoCatalog *)self->_catalog copyWithZone:zone];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  has = self->_has;
  if (has)
  {
    *(v5 + 16) = self->_lastKnownResyncID;
    *(v5 + 48) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 44) = self->_syncID;
    *(v5 + 48) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  passID = self->_passID;
  if (passID | *(equalCopy + 4))
  {
    if (![(NSString *)passID isEqual:?])
    {
      goto LABEL_23;
    }
  }

  libraryHash = self->_libraryHash;
  if (libraryHash | *(equalCopy + 3))
  {
    if (![(NPKProtoHash *)libraryHash isEqual:?])
    {
      goto LABEL_23;
    }
  }

  has = self->_has;
  v8 = *(equalCopy + 48);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_resyncID != *(equalCopy + 10))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_23;
  }

  catalog = self->_catalog;
  if (catalog | *(equalCopy + 1))
  {
    if (![(NPKProtoCatalog *)catalog isEqual:?])
    {
LABEL_23:
      v10 = 0;
      goto LABEL_24;
    }

    has = self->_has;
  }

  if (has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_lastKnownResyncID != *(equalCopy + 4))
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_23;
  }

  v10 = (*(equalCopy + 48) & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 48) & 4) == 0 || self->_syncID != *(equalCopy + 11))
    {
      goto LABEL_23;
    }

    v10 = 1;
  }

LABEL_24:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_passID hash];
  v4 = [(NPKProtoHash *)self->_libraryHash hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_resyncID;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NPKProtoCatalog *)self->_catalog hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_lastKnownResyncID;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
  }

  v7 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v8 = 2654435761 * self->_syncID;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v10 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(NPKProtoRemovePassRequest *)self setPassID:?];
    fromCopy = v10;
  }

  libraryHash = self->_libraryHash;
  v6 = *(fromCopy + 3);
  if (libraryHash)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(NPKProtoHash *)libraryHash mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(NPKProtoRemovePassRequest *)self setLibraryHash:?];
  }

  fromCopy = v10;
LABEL_9:
  if ((fromCopy[12] & 2) != 0)
  {
    self->_resyncID = fromCopy[10];
    *&self->_has |= 2u;
  }

  catalog = self->_catalog;
  v8 = *(fromCopy + 1);
  if (catalog)
  {
    if (!v8)
    {
      goto LABEL_17;
    }

    [(NPKProtoCatalog *)catalog mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_17;
    }

    [(NPKProtoRemovePassRequest *)self setCatalog:?];
  }

  fromCopy = v10;
LABEL_17:
  v9 = *(fromCopy + 48);
  if (v9)
  {
    self->_lastKnownResyncID = fromCopy[4];
    *&self->_has |= 1u;
    v9 = *(fromCopy + 48);
  }

  if ((v9 & 4) != 0)
  {
    self->_syncID = fromCopy[11];
    *&self->_has |= 4u;
  }
}

@end