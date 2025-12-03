@interface BLTPBCancelBulletinRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasFeed:(BOOL)feed;
- (void)writeTo:(id)to;
@end

@implementation BLTPBCancelBulletinRequest

- (void)setHasFeed:(BOOL)feed
{
  if (feed)
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
  dictionaryRepresentation = [(BLTPBCancelBulletinRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  universalSectionID = self->_universalSectionID;
  if (universalSectionID)
  {
    [dictionary setObject:universalSectionID forKey:@"universalSectionID"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_universalSectionID)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_publisherMatchID)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    feed = self->_feed;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    date = self->_date;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_universalSectionID)
  {
    [toCopy setUniversalSectionID:?];
    toCopy = v6;
  }

  if (self->_publisherMatchID)
  {
    [v6 setPublisherMatchID:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 4) = self->_feed;
    *(toCopy + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = *&self->_date;
    *(toCopy + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_universalSectionID copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_publisherMatchID copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  universalSectionID = self->_universalSectionID;
  if (universalSectionID | *(equalCopy + 4))
  {
    if (![(NSString *)universalSectionID isEqual:?])
    {
      goto LABEL_15;
    }
  }

  publisherMatchID = self->_publisherMatchID;
  if (publisherMatchID | *(equalCopy + 3))
  {
    if (![(NSString *)publisherMatchID isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_feed != *(equalCopy + 4))
    {
      goto LABEL_15;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v7 = (*(equalCopy + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_date != *(equalCopy + 1))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(BLTPBCancelBulletinRequest *)self setUniversalSectionID:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(BLTPBCancelBulletinRequest *)self setPublisherMatchID:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 40);
  if ((v5 & 2) != 0)
  {
    self->_feed = *(fromCopy + 4);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 40);
  }

  if (v5)
  {
    self->_date = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

@end