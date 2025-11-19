@interface BLTPBIntelligentSummaryBulletinRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasUpdateType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BLTPBIntelligentSummaryBulletinRequest

- (void)setHasUpdateType:(BOOL)a3
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
  v8.super_class = BLTPBIntelligentSummaryBulletinRequest;
  v4 = [(BLTPBIntelligentSummaryBulletinRequest *)&v8 description];
  v5 = [(BLTPBIntelligentSummaryBulletinRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  bulletin = self->_bulletin;
  if (bulletin)
  {
    v5 = [(BLTPBBulletin *)bulletin dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"bulletin"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_date];
    [v3 setObject:v7 forKey:@"date"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_updateType];
    [v3 setObject:v8 forKey:@"updateType"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_bulletin)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    date = self->_date;
    PBDataWriterWriteDoubleField();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    updateType = self->_updateType;
    PBDataWriterWriteUint32Field();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_bulletin)
  {
    v6 = v4;
    [v4 setBulletin:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = *&self->_date;
    *(v4 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 6) = self->_updateType;
    *(v4 + 28) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(BLTPBBulletin *)self->_bulletin copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_date;
    *(v5 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_updateType;
    *(v5 + 28) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  bulletin = self->_bulletin;
  if (bulletin | *(v4 + 2))
  {
    if (![(BLTPBBulletin *)bulletin isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_date != *(v4 + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 28))
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v6 = (*(v4 + 28) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_updateType != *(v4 + 6))
    {
      goto LABEL_13;
    }

    v6 = 1;
  }

LABEL_14:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(BLTPBBulletin *)self->_bulletin hash];
  if (*&self->_has)
  {
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
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v10 = 2654435761 * self->_updateType;
  }

  else
  {
    v10 = 0;
  }

  return v6 ^ v3 ^ v10;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  bulletin = self->_bulletin;
  v6 = *(v4 + 2);
  if (bulletin)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v4;
    [(BLTPBBulletin *)bulletin mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v4;
    [(BLTPBIntelligentSummaryBulletinRequest *)self setBulletin:?];
  }

  v4 = v8;
LABEL_7:
  v7 = *(v4 + 28);
  if (v7)
  {
    self->_date = *(v4 + 1);
    *&self->_has |= 1u;
    v7 = *(v4 + 28);
  }

  if ((v7 & 2) != 0)
  {
    self->_updateType = *(v4 + 6);
    *&self->_has |= 2u;
  }

  MEMORY[0x2821F96F8]();
}

@end