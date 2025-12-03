@interface BLTPBAddBulletinRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasShouldPlayLightsAndSirens:(BOOL)sirens;
- (void)setHasTrafficRestricted:(BOOL)restricted;
- (void)setHasUpdateType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation BLTPBAddBulletinRequest

- (void)setHasShouldPlayLightsAndSirens:(BOOL)sirens
{
  if (sirens)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasUpdateType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasTrafficRestricted:(BOOL)restricted
{
  if (restricted)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBAddBulletinRequest;
  v4 = [(BLTPBAddBulletinRequest *)&v8 description];
  dictionaryRepresentation = [(BLTPBAddBulletinRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  bulletin = self->_bulletin;
  if (bulletin)
  {
    dictionaryRepresentation = [(BLTPBBulletin *)bulletin dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"bulletin"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldPlayLightsAndSirens];
    [dictionary setObject:v9 forKey:@"shouldPlayLightsAndSirens"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_date];
  [dictionary setObject:v10 forKey:@"date"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_updateType];
  [dictionary setObject:v11 forKey:@"updateType"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_trafficRestricted];
    [dictionary setObject:v7 forKey:@"trafficRestricted"];
  }

LABEL_8:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_bulletin)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    shouldPlayLightsAndSirens = self->_shouldPlayLightsAndSirens;
    PBDataWriterWriteBOOLField();
    toCopy = v10;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  date = self->_date;
  PBDataWriterWriteDoubleField();
  toCopy = v10;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  updateType = self->_updateType;
  PBDataWriterWriteUint32Field();
  toCopy = v10;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    trafficRestricted = self->_trafficRestricted;
    PBDataWriterWriteBOOLField();
    toCopy = v10;
  }

LABEL_8:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_bulletin)
  {
    v6 = toCopy;
    [toCopy setBulletin:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 28) = self->_shouldPlayLightsAndSirens;
    *(toCopy + 32) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 1) = *&self->_date;
  *(toCopy + 32) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(toCopy + 6) = self->_updateType;
  *(toCopy + 32) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    *(toCopy + 29) = self->_trafficRestricted;
    *(toCopy + 32) |= 8u;
  }

LABEL_8:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(BLTPBBulletin *)self->_bulletin copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 28) = self->_shouldPlayLightsAndSirens;
    *(v5 + 32) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 24) = self->_updateType;
      *(v5 + 32) |= 2u;
      if ((*&self->_has & 8) == 0)
      {
        return v5;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 8) = self->_date;
  *(v5 + 32) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 8) != 0)
  {
LABEL_5:
    *(v5 + 29) = self->_trafficRestricted;
    *(v5 + 32) |= 8u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  bulletin = self->_bulletin;
  if (bulletin | *(equalCopy + 2))
  {
    if (![(BLTPBBulletin *)bulletin isEqual:?])
    {
      goto LABEL_24;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 32) & 4) == 0)
    {
      goto LABEL_24;
    }

    v6 = *(equalCopy + 28);
    if (self->_shouldPlayLightsAndSirens)
    {
      if ((*(equalCopy + 28) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else if (*(equalCopy + 28))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 32) & 4) != 0)
  {
    goto LABEL_24;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_date != *(equalCopy + 1))
    {
      goto LABEL_24;
    }
  }

  else if (*(equalCopy + 32))
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_updateType != *(equalCopy + 6))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
    goto LABEL_24;
  }

  v7 = (*(equalCopy + 32) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 32) & 8) != 0)
    {
      if (self->_trafficRestricted)
      {
        if ((*(equalCopy + 29) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else if (*(equalCopy + 29))
      {
        goto LABEL_24;
      }

      v7 = 1;
      goto LABEL_25;
    }

LABEL_24:
    v7 = 0;
  }

LABEL_25:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(BLTPBBulletin *)self->_bulletin hash];
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_shouldPlayLightsAndSirens;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  date = self->_date;
  if (date < 0.0)
  {
    date = -date;
  }

  *v4.i64 = floor(date + 0.5);
  v8 = (date - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

LABEL_9:
  if ((*&self->_has & 2) != 0)
  {
    v11 = 2654435761 * self->_updateType;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    v12 = 0;
    return v6 ^ v3 ^ v10 ^ v11 ^ v12;
  }

  v11 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v12 = 2654435761 * self->_trafficRestricted;
  return v6 ^ v3 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  bulletin = self->_bulletin;
  v6 = *(fromCopy + 2);
  if (bulletin)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = fromCopy;
    [(BLTPBBulletin *)bulletin mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = fromCopy;
    [(BLTPBAddBulletinRequest *)self setBulletin:?];
  }

  fromCopy = v8;
LABEL_7:
  v7 = *(fromCopy + 32);
  if ((v7 & 4) != 0)
  {
    self->_shouldPlayLightsAndSirens = *(fromCopy + 28);
    *&self->_has |= 4u;
    v7 = *(fromCopy + 32);
    if ((v7 & 1) == 0)
    {
LABEL_9:
      if ((v7 & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else if ((*(fromCopy + 32) & 1) == 0)
  {
    goto LABEL_9;
  }

  self->_date = *(fromCopy + 1);
  *&self->_has |= 1u;
  v7 = *(fromCopy + 32);
  if ((v7 & 2) == 0)
  {
LABEL_10:
    if ((v7 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_17:
  self->_updateType = *(fromCopy + 6);
  *&self->_has |= 2u;
  if ((*(fromCopy + 32) & 8) != 0)
  {
LABEL_11:
    self->_trafficRestricted = *(fromCopy + 29);
    *&self->_has |= 8u;
  }

LABEL_12:

  MEMORY[0x2821F96F8]();
}

@end