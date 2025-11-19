@interface MIPLibraryPin
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDefaultAction:(BOOL)a3;
- (void)setHasEntityType:(BOOL)a3;
- (void)setHasPosition:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MIPLibraryPin

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 56);
  if ((v5 & 4) != 0)
  {
    self->_entityType = *(v4 + 3);
    *&self->_has |= 4u;
    v5 = *(v4 + 56);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(v4 + 56) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_defaultAction = *(v4 + 2);
  *&self->_has |= 2u;
  v5 = *(v4 + 56);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  self->_position = *(v4 + 4);
  *&self->_has |= 8u;
  if (*(v4 + 56))
  {
LABEL_5:
    self->_cloudItemID = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_6:
  v6 = v4;
  if (*(v4 + 5))
  {
    [(MIPLibraryPin *)self setCloudLibraryID:?];
    v4 = v6;
  }

  if (*(v4 + 6))
  {
    [(MIPLibraryPin *)self setPositionUUID:?];
    v4 = v6;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_entityType;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_defaultAction;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = 0;
      if (*&self->_has)
      {
        goto LABEL_5;
      }

LABEL_9:
      v6 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = 2654435761 * self->_position;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v6 = 2654435761 * self->_cloudItemID;
LABEL_10:
  v7 = v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_cloudLibraryID hash];
  return v7 ^ [(NSString *)self->_positionUUID hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 56) & 4) == 0 || self->_entityType != *(v4 + 3))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 56) & 4) != 0)
  {
LABEL_26:
    v7 = 0;
    goto LABEL_27;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 56) & 2) == 0 || self->_defaultAction != *(v4 + 2))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 56) & 2) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 56) & 8) == 0 || self->_position != *(v4 + 4))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 56) & 8) != 0)
  {
    goto LABEL_26;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_cloudItemID != *(v4 + 1))
    {
      goto LABEL_26;
    }
  }

  else if (*(v4 + 56))
  {
    goto LABEL_26;
  }

  cloudLibraryID = self->_cloudLibraryID;
  if (cloudLibraryID | *(v4 + 5) && ![(NSString *)cloudLibraryID isEqual:?])
  {
    goto LABEL_26;
  }

  positionUUID = self->_positionUUID;
  if (positionUUID | *(v4 + 6))
  {
    v7 = [(NSString *)positionUUID isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_27:

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_entityType;
    *(v5 + 56) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 32) = self->_position;
      *(v5 + 56) |= 8u;
      if ((*&self->_has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_defaultAction;
  *(v5 + 56) |= 2u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (has)
  {
LABEL_5:
    *(v5 + 8) = self->_cloudItemID;
    *(v5 + 56) |= 1u;
  }

LABEL_6:
  v8 = [(NSString *)self->_cloudLibraryID copyWithZone:a3];
  v9 = v6[5];
  v6[5] = v8;

  v10 = [(NSString *)self->_positionUUID copyWithZone:a3];
  v11 = v6[6];
  v6[6] = v10;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[3] = self->_entityType;
    *(v4 + 56) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v4[2] = self->_defaultAction;
  *(v4 + 56) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  v4[4] = self->_position;
  *(v4 + 56) |= 8u;
  if (*&self->_has)
  {
LABEL_5:
    v4[1] = self->_cloudItemID;
    *(v4 + 56) |= 1u;
  }

LABEL_6:
  v6 = v4;
  if (self->_cloudLibraryID)
  {
    [v4 setCloudLibraryID:?];
    v4 = v6;
  }

  if (self->_positionUUID)
  {
    [v6 setPositionUUID:?];
    v4 = v6;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt64Field();
    v4 = v6;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt64Field();
  v4 = v6;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  PBDataWriterWriteInt64Field();
  v4 = v6;
  if (*&self->_has)
  {
LABEL_5:
    PBDataWriterWriteInt64Field();
    v4 = v6;
  }

LABEL_6:
  if (self->_cloudLibraryID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_positionUUID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_entityType];
    [v3 setObject:v9 forKey:@"entityType"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_defaultAction];
  [v3 setObject:v10 forKey:@"defaultAction"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_position];
  [v3 setObject:v11 forKey:@"position"];

  if (*&self->_has)
  {
LABEL_5:
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_cloudItemID];
    [v3 setObject:v5 forKey:@"cloudItemID"];
  }

LABEL_6:
  cloudLibraryID = self->_cloudLibraryID;
  if (cloudLibraryID)
  {
    [v3 setObject:cloudLibraryID forKey:@"cloudLibraryID"];
  }

  positionUUID = self->_positionUUID;
  if (positionUUID)
  {
    [v3 setObject:positionUUID forKey:@"positionUUID"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MIPLibraryPin;
  v4 = [(MIPLibraryPin *)&v8 description];
  v5 = [(MIPLibraryPin *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasPosition:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasDefaultAction:(BOOL)a3
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

- (void)setHasEntityType:(BOOL)a3
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

@end