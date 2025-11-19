@interface NPKProtoCatalogChangedRequest
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

@implementation NPKProtoCatalogChangedRequest

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
  v8.super_class = NPKProtoCatalogChangedRequest;
  v4 = [(NPKProtoCatalogChangedRequest *)&v8 description];
  v5 = [(NPKProtoCatalogChangedRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  companionCatalog = self->_companionCatalog;
  if (companionCatalog)
  {
    v5 = [(NPKProtoCatalog *)companionCatalog dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"companionCatalog"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_resyncID];
    [v3 setObject:v11 forKey:@"resyncID"];

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

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_lastKnownResyncID];
  [v3 setObject:v12 forKey:@"lastKnownResyncID"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_syncID];
    [v3 setObject:v7 forKey:@"syncID"];
  }

LABEL_7:
  watchCatalog = self->_watchCatalog;
  if (watchCatalog)
  {
    v9 = [(NPKProtoCatalog *)watchCatalog dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"watchCatalog"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_companionCatalog)
  {
    [NPKProtoCatalogChangedRequest writeTo:];
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

  if (self->_watchCatalog)
  {
    PBDataWriterWriteSubmessage();
    v8 = v10;
  }
}

- (void)copyTo:(id)a3
{
  v6 = a3;
  [v6 setCompanionCatalog:self->_companionCatalog];
  v4 = v6;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 5) = self->_resyncID;
    *(v6 + 40) |= 2u;
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

  *(v6 + 4) = self->_lastKnownResyncID;
  *(v6 + 40) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v6 + 6) = self->_syncID;
    *(v6 + 40) |= 4u;
  }

LABEL_5:
  if (self->_watchCatalog)
  {
    [v6 setWatchCatalog:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NPKProtoCatalog *)self->_companionCatalog copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 16) = self->_lastKnownResyncID;
    *(v5 + 40) |= 1u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 20) = self->_resyncID;
  *(v5 + 40) |= 2u;
  has = self->_has;
  if (has)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 24) = self->_syncID;
    *(v5 + 40) |= 4u;
  }

LABEL_5:
  v9 = [(NPKProtoCatalog *)self->_watchCatalog copyWithZone:a3];
  v10 = *(v5 + 32);
  *(v5 + 32) = v9;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  companionCatalog = self->_companionCatalog;
  if (companionCatalog | *(v4 + 1))
  {
    if (![(NPKProtoCatalog *)companionCatalog isEqual:?])
    {
      goto LABEL_21;
    }
  }

  v6 = *(v4 + 40);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_resyncID != *(v4 + 5))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
LABEL_21:
    v8 = 0;
    goto LABEL_22;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_lastKnownResyncID != *(v4 + 4))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0 || self->_syncID != *(v4 + 6))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 40) & 4) != 0)
  {
    goto LABEL_21;
  }

  watchCatalog = self->_watchCatalog;
  if (watchCatalog | *(v4 + 4))
  {
    v8 = [(NPKProtoCatalog *)watchCatalog isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_22:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NPKProtoCatalog *)self->_companionCatalog hash];
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
    return v4 ^ v3 ^ v5 ^ v6 ^ [(NPKProtoCatalog *)self->_watchCatalog hash];
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
  return v4 ^ v3 ^ v5 ^ v6 ^ [(NPKProtoCatalog *)self->_watchCatalog hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  companionCatalog = self->_companionCatalog;
  v6 = *(v4 + 1);
  v10 = v4;
  if (companionCatalog)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NPKProtoCatalog *)companionCatalog mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NPKProtoCatalogChangedRequest *)self setCompanionCatalog:?];
  }

  v4 = v10;
LABEL_7:
  v7 = *(v4 + 40);
  if ((v7 & 2) != 0)
  {
    self->_resyncID = *(v4 + 5);
    *&self->_has |= 2u;
    v7 = *(v4 + 40);
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

  else if ((*(v4 + 40) & 1) == 0)
  {
    goto LABEL_9;
  }

  self->_lastKnownResyncID = *(v4 + 4);
  *&self->_has |= 1u;
  if ((*(v4 + 40) & 4) != 0)
  {
LABEL_10:
    self->_syncID = *(v4 + 6);
    *&self->_has |= 4u;
  }

LABEL_11:
  watchCatalog = self->_watchCatalog;
  v9 = *(v4 + 4);
  if (watchCatalog)
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    [(NPKProtoCatalog *)watchCatalog mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    [(NPKProtoCatalogChangedRequest *)self setWatchCatalog:?];
  }

  v4 = v10;
LABEL_20:
}

@end