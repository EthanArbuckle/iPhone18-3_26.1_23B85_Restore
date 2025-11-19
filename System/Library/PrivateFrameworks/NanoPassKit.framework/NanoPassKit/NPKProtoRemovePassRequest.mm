@interface NPKProtoRemovePassRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasResyncID:(BOOL)a3;
- (void)setHasSyncID:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoRemovePassRequest

- (void)setHasResyncID:(BOOL)a3
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

- (void)setHasSyncID:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoRemovePassRequest;
  v4 = [(NPKProtoRemovePassRequest *)&v8 description];
  v5 = [(NPKProtoRemovePassRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  passID = self->_passID;
  if (passID)
  {
    [v3 setObject:passID forKey:@"passID"];
  }

  libraryHash = self->_libraryHash;
  if (libraryHash)
  {
    v7 = [(NPKProtoHash *)libraryHash dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"libraryHash"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_resyncID];
    [v4 setObject:v8 forKey:@"resyncID"];
  }

  catalog = self->_catalog;
  if (catalog)
  {
    v10 = [(NPKProtoCatalog *)catalog dictionaryRepresentation];
    [v4 setObject:v10 forKey:@"catalog"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_passID)
  {
    [NPKProtoRemovePassRequest writeTo:];
  }

  v10 = v4;
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

- (void)copyTo:(id)a3
{
  v6 = a3;
  [v6 setPassID:self->_passID];
  if (self->_libraryHash)
  {
    [v6 setLibraryHash:?];
  }

  v4 = v6;
  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 10) = self->_resyncID;
    *(v6 + 48) |= 2u;
  }

  if (self->_catalog)
  {
    [v6 setCatalog:?];
    v4 = v6;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_passID copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NPKProtoHash *)self->_libraryHash copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 40) = self->_resyncID;
    *(v5 + 48) |= 2u;
  }

  v10 = [(NPKProtoCatalog *)self->_catalog copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  passID = self->_passID;
  if (passID | *(v4 + 4))
  {
    if (![(NSString *)passID isEqual:?])
    {
      goto LABEL_23;
    }
  }

  libraryHash = self->_libraryHash;
  if (libraryHash | *(v4 + 3))
  {
    if (![(NPKProtoHash *)libraryHash isEqual:?])
    {
      goto LABEL_23;
    }
  }

  has = self->_has;
  v8 = *(v4 + 48);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_resyncID != *(v4 + 10))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_23;
  }

  catalog = self->_catalog;
  if (catalog | *(v4 + 1))
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
    if ((*(v4 + 48) & 1) == 0 || self->_lastKnownResyncID != *(v4 + 4))
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_23;
  }

  v10 = (*(v4 + 48) & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((*(v4 + 48) & 4) == 0 || self->_syncID != *(v4 + 11))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (*(v4 + 4))
  {
    [(NPKProtoRemovePassRequest *)self setPassID:?];
    v4 = v10;
  }

  libraryHash = self->_libraryHash;
  v6 = *(v4 + 3);
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

  v4 = v10;
LABEL_9:
  if ((v4[12] & 2) != 0)
  {
    self->_resyncID = v4[10];
    *&self->_has |= 2u;
  }

  catalog = self->_catalog;
  v8 = *(v4 + 1);
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

  v4 = v10;
LABEL_17:
  v9 = *(v4 + 48);
  if (v9)
  {
    self->_lastKnownResyncID = v4[4];
    *&self->_has |= 1u;
    v9 = *(v4 + 48);
  }

  if ((v9 & 4) != 0)
  {
    self->_syncID = v4[11];
    *&self->_has |= 4u;
  }
}

@end