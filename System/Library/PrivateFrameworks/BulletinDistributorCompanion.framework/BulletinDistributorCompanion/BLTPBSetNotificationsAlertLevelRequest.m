@interface BLTPBSetNotificationsAlertLevelRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsLevel:(id)a3;
- (int)level;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMirror:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsLevel:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Off"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NotificationCenter"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"All"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"NonCritical"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasMirror:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBSetNotificationsAlertLevelRequest;
  v4 = [(BLTPBSetNotificationsAlertLevelRequest *)&v8 description];
  v5 = [(BLTPBSetNotificationsAlertLevelRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
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

    [v3 setObject:v5 forKey:@"level"];
  }

  sectionID = self->_sectionID;
  if (sectionID)
  {
    [v3 setObject:sectionID forKey:@"sectionID"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_mirror];
    [v3 setObject:v7 forKey:@"mirror"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*&self->_has)
  {
    level = self->_level;
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }

  if (self->_sectionID)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    mirror = self->_mirror;
    PBDataWriterWriteBOOLField();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[2] = self->_level;
    *(v4 + 28) |= 1u;
  }

  if (self->_sectionID)
  {
    v5 = v4;
    [v4 setSectionID:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 24) = self->_mirror;
    *(v4 + 28) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_level;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSString *)self->_sectionID copyWithZone:a3];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 24) = self->_mirror;
    *(v6 + 28) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  has = self->_has;
  v6 = *(v4 + 28);
  if (has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_level != *(v4 + 2))
    {
      goto LABEL_12;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_12;
  }

  sectionID = self->_sectionID;
  if (sectionID | *(v4 + 2))
  {
    if (![(NSString *)sectionID isEqual:?])
    {
      goto LABEL_12;
    }

    has = self->_has;
  }

  v8 = (*(v4 + 28) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) != 0)
    {
      if (self->_mirror)
      {
        if ((*(v4 + 24) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (*(v4 + 24))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 28))
  {
    self->_level = *(v4 + 2);
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    v5 = v4;
    [(BLTPBSetNotificationsAlertLevelRequest *)self setSectionID:?];
    v4 = v5;
  }

  if ((*(v4 + 28) & 2) != 0)
  {
    self->_mirror = *(v4 + 24);
    *&self->_has |= 2u;
  }
}

@end