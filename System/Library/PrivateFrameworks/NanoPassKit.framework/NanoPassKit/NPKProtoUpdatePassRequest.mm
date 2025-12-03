@interface NPKProtoUpdatePassRequest
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

@implementation NPKProtoUpdatePassRequest

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
  v8.super_class = NPKProtoUpdatePassRequest;
  v4 = [(NPKProtoUpdatePassRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoUpdatePassRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  pass = self->_pass;
  if (pass)
  {
    dictionaryRepresentation = [(NPKProtoPass *)pass dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"pass"];
  }

  libraryHash = self->_libraryHash;
  if (libraryHash)
  {
    dictionaryRepresentation2 = [(NPKProtoHash *)libraryHash dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"libraryHash"];
  }

  previousManifestHash = self->_previousManifestHash;
  if (previousManifestHash)
  {
    [dictionary setObject:previousManifestHash forKey:@"previousManifestHash"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_resyncID];
    [dictionary setObject:v9 forKey:@"resyncID"];
  }

  catalog = self->_catalog;
  if (catalog)
  {
    dictionaryRepresentation3 = [(NPKProtoCatalog *)catalog dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"catalog"];
  }

  has = self->_has;
  if (has)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_lastKnownResyncID];
    [dictionary setObject:v13 forKey:@"lastKnownResyncID"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_syncID];
    [dictionary setObject:v14 forKey:@"syncID"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_pass)
  {
    [NPKProtoUpdatePassRequest writeTo:];
  }

  v10 = toCopy;
  PBDataWriterWriteSubmessage();
  if (self->_libraryHash)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_previousManifestHash)
  {
    PBDataWriterWriteDataField();
  }

  v5 = v10;
  if ((*&self->_has & 2) != 0)
  {
    resyncID = self->_resyncID;
    PBDataWriterWriteUint32Field();
    v5 = v10;
  }

  if (self->_catalog)
  {
    PBDataWriterWriteSubmessage();
    v5 = v10;
  }

  has = self->_has;
  if (has)
  {
    lastKnownResyncID = self->_lastKnownResyncID;
    PBDataWriterWriteUint32Field();
    v5 = v10;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    syncID = self->_syncID;
    PBDataWriterWriteUint32Field();
    v5 = v10;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setPass:self->_pass];
  if (self->_libraryHash)
  {
    [toCopy setLibraryHash:?];
  }

  if (self->_previousManifestHash)
  {
    [toCopy setPreviousManifestHash:?];
  }

  v4 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 12) = self->_resyncID;
    *(toCopy + 56) |= 2u;
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
    *(v4 + 56) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v4[13] = self->_syncID;
    *(v4 + 56) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NPKProtoPass *)self->_pass copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NPKProtoHash *)self->_libraryHash copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSData *)self->_previousManifestHash copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 48) = self->_resyncID;
    *(v5 + 56) |= 2u;
  }

  v12 = [(NPKProtoCatalog *)self->_catalog copyWithZone:zone];
  v13 = *(v5 + 8);
  *(v5 + 8) = v12;

  has = self->_has;
  if (has)
  {
    *(v5 + 16) = self->_lastKnownResyncID;
    *(v5 + 56) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 52) = self->_syncID;
    *(v5 + 56) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  pass = self->_pass;
  if (pass | *(equalCopy + 4))
  {
    if (![(NPKProtoPass *)pass isEqual:?])
    {
      goto LABEL_25;
    }
  }

  libraryHash = self->_libraryHash;
  if (libraryHash | *(equalCopy + 3))
  {
    if (![(NPKProtoHash *)libraryHash isEqual:?])
    {
      goto LABEL_25;
    }
  }

  previousManifestHash = self->_previousManifestHash;
  if (previousManifestHash | *(equalCopy + 5))
  {
    if (![(NSData *)previousManifestHash isEqual:?])
    {
      goto LABEL_25;
    }
  }

  has = self->_has;
  v9 = *(equalCopy + 56);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_resyncID != *(equalCopy + 12))
    {
      goto LABEL_25;
    }
  }

  else if ((*(equalCopy + 56) & 2) != 0)
  {
    goto LABEL_25;
  }

  catalog = self->_catalog;
  if (catalog | *(equalCopy + 1))
  {
    if (![(NPKProtoCatalog *)catalog isEqual:?])
    {
LABEL_25:
      v11 = 0;
      goto LABEL_26;
    }

    has = self->_has;
  }

  if (has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_lastKnownResyncID != *(equalCopy + 4))
    {
      goto LABEL_25;
    }
  }

  else if (*(equalCopy + 56))
  {
    goto LABEL_25;
  }

  v11 = (*(equalCopy + 56) & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 56) & 4) == 0 || self->_syncID != *(equalCopy + 13))
    {
      goto LABEL_25;
    }

    v11 = 1;
  }

LABEL_26:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NPKProtoPass *)self->_pass hash];
  v4 = [(NPKProtoHash *)self->_libraryHash hash];
  v5 = [(NSData *)self->_previousManifestHash hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_resyncID;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NPKProtoCatalog *)self->_catalog hash];
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_lastKnownResyncID;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v9 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

  v8 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v9 = 2654435761 * self->_syncID;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  pass = self->_pass;
  v6 = *(fromCopy + 4);
  v12 = fromCopy;
  if (pass)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NPKProtoPass *)pass mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NPKProtoUpdatePassRequest *)self setPass:?];
  }

  fromCopy = v12;
LABEL_7:
  libraryHash = self->_libraryHash;
  v8 = *(fromCopy + 3);
  if (libraryHash)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(NPKProtoHash *)libraryHash mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(NPKProtoUpdatePassRequest *)self setLibraryHash:?];
  }

  fromCopy = v12;
LABEL_13:
  if (*(fromCopy + 5))
  {
    [(NPKProtoUpdatePassRequest *)self setPreviousManifestHash:?];
    fromCopy = v12;
  }

  if ((*(fromCopy + 56) & 2) != 0)
  {
    self->_resyncID = *(fromCopy + 12);
    *&self->_has |= 2u;
  }

  catalog = self->_catalog;
  v10 = *(fromCopy + 1);
  if (catalog)
  {
    if (!v10)
    {
      goto LABEL_23;
    }

    [(NPKProtoCatalog *)catalog mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_23;
    }

    [(NPKProtoUpdatePassRequest *)self setCatalog:?];
  }

  fromCopy = v12;
LABEL_23:
  v11 = *(fromCopy + 56);
  if (v11)
  {
    self->_lastKnownResyncID = *(fromCopy + 4);
    *&self->_has |= 1u;
    v11 = *(fromCopy + 56);
  }

  if ((v11 & 4) != 0)
  {
    self->_syncID = *(fromCopy + 13);
    *&self->_has |= 4u;
  }
}

@end