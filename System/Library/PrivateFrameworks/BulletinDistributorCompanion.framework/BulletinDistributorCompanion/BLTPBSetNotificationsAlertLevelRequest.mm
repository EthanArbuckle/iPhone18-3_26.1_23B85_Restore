@interface BLTPBSetNotificationsAlertLevelRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsLevel:(id)level;
- (int)level;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasMirror:(BOOL)mirror;
- (void)writeTo:(id)to;
@end

@implementation BLTPBSetNotificationsAlertLevelRequest

- (int)level
{
  if (*&self->_has)
  {
    return self->_level;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsLevel:(id)level
{
  levelCopy = level;
  if ([levelCopy isEqualToString:@"Off"])
  {
    v4 = 0;
  }

  else if ([levelCopy isEqualToString:@"NotificationCenter"])
  {
    v4 = 1;
  }

  else if ([levelCopy isEqualToString:@"All"])
  {
    v4 = 2;
  }

  else if ([levelCopy isEqualToString:@"NonCritical"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasMirror:(BOOL)mirror
{
  if (mirror)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBSetNotificationsAlertLevelRequest;
  v4 = [(BLTPBSetNotificationsAlertLevelRequest *)&v8 description];
  dictionaryRepresentation = [(BLTPBSetNotificationsAlertLevelRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    level = self->_level;
    if (level >= 4)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_level];
    }

    else
    {
      v5 = off_278D32038[level];
    }

    [dictionary setObject:v5 forKey:@"level"];
  }

  sectionID = self->_sectionID;
  if (sectionID)
  {
    [dictionary setObject:sectionID forKey:@"sectionID"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_mirror];
    [dictionary setObject:v7 forKey:@"mirror"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (*&self->_has)
  {
    level = self->_level;
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }

  if (self->_sectionID)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    mirror = self->_mirror;
    PBDataWriterWriteBOOLField();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[2] = self->_level;
    *(toCopy + 28) |= 1u;
  }

  if (self->_sectionID)
  {
    v5 = toCopy;
    [toCopy setSectionID:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 24) = self->_mirror;
    *(toCopy + 28) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_level;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSString *)self->_sectionID copyWithZone:zone];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 24) = self->_mirror;
    *(v6 + 28) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  has = self->_has;
  v6 = *(equalCopy + 28);
  if (has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_level != *(equalCopy + 2))
    {
      goto LABEL_12;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_12;
  }

  sectionID = self->_sectionID;
  if (sectionID | *(equalCopy + 2))
  {
    if (![(NSString *)sectionID isEqual:?])
    {
      goto LABEL_12;
    }

    has = self->_has;
  }

  v8 = (*(equalCopy + 28) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) != 0)
    {
      if (self->_mirror)
      {
        if ((*(equalCopy + 24) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (*(equalCopy + 24))
      {
        goto LABEL_12;
      }

      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_level;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_sectionID hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_mirror;
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
  if (*(fromCopy + 28))
  {
    self->_level = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    v5 = fromCopy;
    [(BLTPBSetNotificationsAlertLevelRequest *)self setSectionID:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 28) & 2) != 0)
  {
    self->_mirror = *(fromCopy + 24);
    *&self->_has |= 2u;
  }
}

@end