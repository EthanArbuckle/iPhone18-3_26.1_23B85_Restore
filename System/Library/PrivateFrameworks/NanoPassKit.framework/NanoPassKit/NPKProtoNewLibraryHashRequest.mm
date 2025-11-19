@interface NPKProtoNewLibraryHashRequest
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

@implementation NPKProtoNewLibraryHashRequest

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
  v8.super_class = NPKProtoNewLibraryHashRequest;
  v4 = [(NPKProtoNewLibraryHashRequest *)&v8 description];
  v5 = [(NPKProtoNewLibraryHashRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  libraryHash = self->_libraryHash;
  if (libraryHash)
  {
    v5 = [(NPKProtoHash *)libraryHash dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"libraryHash"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_resyncID];
    [v3 setObject:v9 forKey:@"resyncID"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_lastKnownResyncID];
  [v3 setObject:v10 forKey:@"lastKnownResyncID"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_syncID];
    [v3 setObject:v7 forKey:@"syncID"];
  }

LABEL_7:

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_libraryHash)
  {
    [NPKProtoNewLibraryHashRequest writeTo:];
  }

  v10 = v4;
  PBDataWriterWriteSubmessage();
  has = self->_has;
  if ((has & 2) != 0)
  {
    resyncID = self->_resyncID;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if (has)
  {
    lastKnownResyncID = self->_lastKnownResyncID;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  v8 = v10;
  if ((has & 4) != 0)
  {
    syncID = self->_syncID;
    PBDataWriterWriteUint32Field();
    v8 = v10;
  }
}

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setLibraryHash:self->_libraryHash];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 6) = self->_resyncID;
    *(v5 + 32) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 2) = self->_lastKnownResyncID;
  *(v5 + 32) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v5 + 7) = self->_syncID;
    *(v5 + 32) |= 4u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NPKProtoHash *)self->_libraryHash copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 8) = self->_lastKnownResyncID;
    *(v5 + 32) |= 1u;
    if ((*&self->_has & 4) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *(v5 + 24) = self->_resyncID;
  *(v5 + 32) |= 2u;
  has = self->_has;
  if (has)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 28) = self->_syncID;
    *(v5 + 32) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  libraryHash = self->_libraryHash;
  if (libraryHash | *(v4 + 2))
  {
    if (![(NPKProtoHash *)libraryHash isEqual:?])
    {
      goto LABEL_18;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_resyncID != *(v4 + 6))
    {
      goto LABEL_18;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
LABEL_18:
    v6 = 0;
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_lastKnownResyncID != *(v4 + 2))
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 32))
  {
    goto LABEL_18;
  }

  v6 = (*(v4 + 32) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 32) & 4) == 0 || self->_syncID != *(v4 + 7))
    {
      goto LABEL_18;
    }

    v6 = 1;
  }

LABEL_19:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NPKProtoHash *)self->_libraryHash hash];
  if ((*&self->_has & 2) == 0)
  {
    v4 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v4 = 2654435761 * self->_resyncID;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_lastKnownResyncID;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761 * self->_syncID;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  libraryHash = self->_libraryHash;
  v6 = *(v4 + 2);
  if (libraryHash)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v4;
    [(NPKProtoHash *)libraryHash mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v4;
    [(NPKProtoNewLibraryHashRequest *)self setLibraryHash:?];
  }

  v4 = v8;
LABEL_7:
  v7 = *(v4 + 32);
  if ((v7 & 2) != 0)
  {
    self->_resyncID = *(v4 + 6);
    *&self->_has |= 2u;
    v7 = *(v4 + 32);
    if ((v7 & 1) == 0)
    {
LABEL_9:
      if ((v7 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*(v4 + 32) & 1) == 0)
  {
    goto LABEL_9;
  }

  self->_lastKnownResyncID = *(v4 + 2);
  *&self->_has |= 1u;
  if ((*(v4 + 32) & 4) != 0)
  {
LABEL_10:
    self->_syncID = *(v4 + 7);
    *&self->_has |= 4u;
  }

LABEL_11:
}

@end