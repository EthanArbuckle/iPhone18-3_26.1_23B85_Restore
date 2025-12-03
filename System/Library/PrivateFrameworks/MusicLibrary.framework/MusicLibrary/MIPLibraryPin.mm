@interface MIPLibraryPin
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDefaultAction:(BOOL)action;
- (void)setHasEntityType:(BOOL)type;
- (void)setHasPosition:(BOOL)position;
- (void)writeTo:(id)to;
@end

@implementation MIPLibraryPin

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 56);
  if ((v5 & 4) != 0)
  {
    self->_entityType = *(fromCopy + 3);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 56);
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

  else if ((*(fromCopy + 56) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_defaultAction = *(fromCopy + 2);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 56);
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
  self->_position = *(fromCopy + 4);
  *&self->_has |= 8u;
  if (*(fromCopy + 56))
  {
LABEL_5:
    self->_cloudItemID = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_6:
  v6 = fromCopy;
  if (*(fromCopy + 5))
  {
    [(MIPLibraryPin *)self setCloudLibraryID:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 6))
  {
    [(MIPLibraryPin *)self setPositionUUID:?];
    fromCopy = v6;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 56) & 4) == 0 || self->_entityType != *(equalCopy + 3))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 56) & 4) != 0)
  {
LABEL_26:
    v7 = 0;
    goto LABEL_27;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_defaultAction != *(equalCopy + 2))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 56) & 2) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 56) & 8) == 0 || self->_position != *(equalCopy + 4))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 56) & 8) != 0)
  {
    goto LABEL_26;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_cloudItemID != *(equalCopy + 1))
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 56))
  {
    goto LABEL_26;
  }

  cloudLibraryID = self->_cloudLibraryID;
  if (cloudLibraryID | *(equalCopy + 5) && ![(NSString *)cloudLibraryID isEqual:?])
  {
    goto LABEL_26;
  }

  positionUUID = self->_positionUUID;
  if (positionUUID | *(equalCopy + 6))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
  v8 = [(NSString *)self->_cloudLibraryID copyWithZone:zone];
  v9 = v6[5];
  v6[5] = v8;

  v10 = [(NSString *)self->_positionUUID copyWithZone:zone];
  v11 = v6[6];
  v6[6] = v10;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[3] = self->_entityType;
    *(toCopy + 56) |= 4u;
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

  toCopy[2] = self->_defaultAction;
  *(toCopy + 56) |= 2u;
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
  toCopy[4] = self->_position;
  *(toCopy + 56) |= 8u;
  if (*&self->_has)
  {
LABEL_5:
    toCopy[1] = self->_cloudItemID;
    *(toCopy + 56) |= 1u;
  }

LABEL_6:
  v6 = toCopy;
  if (self->_cloudLibraryID)
  {
    [toCopy setCloudLibraryID:?];
    toCopy = v6;
  }

  if (self->_positionUUID)
  {
    [v6 setPositionUUID:?];
    toCopy = v6;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v6;
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
  toCopy = v6;
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
  toCopy = v6;
  if (*&self->_has)
  {
LABEL_5:
    PBDataWriterWriteInt64Field();
    toCopy = v6;
  }

LABEL_6:
  if (self->_cloudLibraryID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_positionUUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_entityType];
    [dictionary setObject:v9 forKey:@"entityType"];

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
  [dictionary setObject:v10 forKey:@"defaultAction"];

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
  [dictionary setObject:v11 forKey:@"position"];

  if (*&self->_has)
  {
LABEL_5:
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_cloudItemID];
    [dictionary setObject:v5 forKey:@"cloudItemID"];
  }

LABEL_6:
  cloudLibraryID = self->_cloudLibraryID;
  if (cloudLibraryID)
  {
    [dictionary setObject:cloudLibraryID forKey:@"cloudLibraryID"];
  }

  positionUUID = self->_positionUUID;
  if (positionUUID)
  {
    [dictionary setObject:positionUUID forKey:@"positionUUID"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MIPLibraryPin;
  v4 = [(MIPLibraryPin *)&v8 description];
  dictionaryRepresentation = [(MIPLibraryPin *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasPosition:(BOOL)position
{
  if (position)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasDefaultAction:(BOOL)action
{
  if (action)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasEntityType:(BOOL)type
{
  if (type)
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