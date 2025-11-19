@interface BLTPBCancelBulletinRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasFeed:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BLTPBCancelBulletinRequest

- (void)setHasFeed:(BOOL)a3
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
  v8.super_class = BLTPBCancelBulletinRequest;
  v4 = [(BLTPBCancelBulletinRequest *)&v8 description];
  v5 = [(BLTPBCancelBulletinRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  universalSectionID = self->_universalSectionID;
  if (universalSectionID)
  {
    [v3 setObject:universalSectionID forKey:@"universalSectionID"];
  }

  publisherMatchID = self->_publisherMatchID;
  if (publisherMatchID)
  {
    [v4 setObject:publisherMatchID forKey:@"publisherMatchID"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_feed];
    [v4 setObject:v8 forKey:@"feed"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_date];
    [v4 setObject:v9 forKey:@"date"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_universalSectionID)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_publisherMatchID)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    feed = self->_feed;
    PBDataWriterWriteUint32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    date = self->_date;
    PBDataWriterWriteDoubleField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_universalSectionID)
  {
    [v4 setUniversalSectionID:?];
    v4 = v6;
  }

  if (self->_publisherMatchID)
  {
    [v6 setPublisherMatchID:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 4) = self->_feed;
    *(v4 + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = *&self->_date;
    *(v4 + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_universalSectionID copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_publisherMatchID copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_feed;
    *(v5 + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_date;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  universalSectionID = self->_universalSectionID;
  if (universalSectionID | *(v4 + 4))
  {
    if (![(NSString *)universalSectionID isEqual:?])
    {
      goto LABEL_15;
    }
  }

  publisherMatchID = self->_publisherMatchID;
  if (publisherMatchID | *(v4 + 3))
  {
    if (![(NSString *)publisherMatchID isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_feed != *(v4 + 4))
    {
      goto LABEL_15;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v7 = (*(v4 + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_date != *(v4 + 1))
    {
      goto LABEL_15;
    }

    v7 = 1;
  }

LABEL_16:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_universalSectionID hash];
  v4 = [(NSString *)self->_publisherMatchID hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_feed;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v11 = 0;
    return v4 ^ v3 ^ v7 ^ v11;
  }

  v7 = 0;
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

  *v5.i64 = floor(date + 0.5);
  v9 = (date - *v5.i64) * 1.84467441e19;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v11 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
  if (v9 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v11 += v9;
    }
  }

  else
  {
    v11 -= fabs(v9);
  }

  return v4 ^ v3 ^ v7 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 4))
  {
    [(BLTPBCancelBulletinRequest *)self setUniversalSectionID:?];
    v4 = v6;
  }

  if (*(v4 + 3))
  {
    [(BLTPBCancelBulletinRequest *)self setPublisherMatchID:?];
    v4 = v6;
  }

  v5 = *(v4 + 40);
  if ((v5 & 2) != 0)
  {
    self->_feed = *(v4 + 4);
    *&self->_has |= 2u;
    v5 = *(v4 + 40);
  }

  if (v5)
  {
    self->_date = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

@end