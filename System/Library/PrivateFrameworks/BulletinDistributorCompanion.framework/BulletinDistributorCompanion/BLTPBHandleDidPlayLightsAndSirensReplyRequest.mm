@interface BLTPBHandleDidPlayLightsAndSirensReplyRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDidPlayLightsAndSirens:(BOOL)sirens;
- (void)writeTo:(id)to;
@end

@implementation BLTPBHandleDidPlayLightsAndSirensReplyRequest

- (void)setHasDidPlayLightsAndSirens:(BOOL)sirens
{
  if (sirens)
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
  v8.super_class = BLTPBHandleDidPlayLightsAndSirensReplyRequest;
  v4 = [(BLTPBHandleDidPlayLightsAndSirensReplyRequest *)&v8 description];
  dictionaryRepresentation = [(BLTPBHandleDidPlayLightsAndSirensReplyRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_didPlayLightsAndSirens];
    [dictionary setObject:v4 forKey:@"didPlayLightsAndSirens"];
  }

  publisherMatchID = self->_publisherMatchID;
  if (publisherMatchID)
  {
    [dictionary setObject:publisherMatchID forKey:@"publisherMatchID"];
  }

  phoneSectionID = self->_phoneSectionID;
  if (phoneSectionID)
  {
    [dictionary setObject:phoneSectionID forKey:@"phoneSectionID"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_date];
    [dictionary setObject:v7 forKey:@"date"];
  }

  replyToken = self->_replyToken;
  if (replyToken)
  {
    [dictionary setObject:replyToken forKey:@"replyToken"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    didPlayLightsAndSirens = self->_didPlayLightsAndSirens;
    PBDataWriterWriteBOOLField();
    toCopy = v7;
  }

  if (self->_publisherMatchID)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_phoneSectionID)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    date = self->_date;
    PBDataWriterWriteDoubleField();
    toCopy = v7;
  }

  if (self->_replyToken)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[40] = self->_didPlayLightsAndSirens;
    toCopy[44] |= 2u;
  }

  v5 = toCopy;
  if (self->_publisherMatchID)
  {
    [toCopy setPublisherMatchID:?];
    toCopy = v5;
  }

  if (self->_phoneSectionID)
  {
    [v5 setPhoneSectionID:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_date;
    toCopy[44] |= 1u;
  }

  if (self->_replyToken)
  {
    [v5 setReplyToken:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 40) = self->_didPlayLightsAndSirens;
    *(v5 + 44) |= 2u;
  }

  v7 = [(NSString *)self->_publisherMatchID copyWithZone:zone];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  v9 = [(NSString *)self->_phoneSectionID copyWithZone:zone];
  v10 = *(v6 + 16);
  *(v6 + 16) = v9;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_date;
    *(v6 + 44) |= 1u;
  }

  v11 = [(NSString *)self->_replyToken copyWithZone:zone];
  v12 = *(v6 + 32);
  *(v6 + 32) = v11;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = *(equalCopy + 44);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0)
    {
      goto LABEL_12;
    }

    v11 = *(equalCopy + 40);
    if (self->_didPlayLightsAndSirens)
    {
      if ((*(equalCopy + 40) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (*(equalCopy + 40))
    {
      goto LABEL_12;
    }
  }

  else if ((*(equalCopy + 44) & 2) != 0)
  {
    goto LABEL_12;
  }

  publisherMatchID = self->_publisherMatchID;
  if (publisherMatchID | *(equalCopy + 3) && ![(NSString *)publisherMatchID isEqual:?])
  {
    goto LABEL_12;
  }

  phoneSectionID = self->_phoneSectionID;
  if (phoneSectionID | *(equalCopy + 2))
  {
    if (![(NSString *)phoneSectionID isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = *(equalCopy + 44);
  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) != 0 && self->_date == *(equalCopy + 1))
    {
      goto LABEL_21;
    }

LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  if (*(equalCopy + 44))
  {
    goto LABEL_12;
  }

LABEL_21:
  replyToken = self->_replyToken;
  if (replyToken | *(equalCopy + 4))
  {
    v9 = [(NSString *)replyToken isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_13:

  return v9;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_didPlayLightsAndSirens;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_publisherMatchID hash];
  v5 = [(NSString *)self->_phoneSectionID hash];
  if (*&self->_has)
  {
    date = self->_date;
    if (date < 0.0)
    {
      date = -date;
    }

    *v6.i64 = floor(date + 0.5);
    v10 = (date - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v7, v6).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v8 ^ [(NSString *)self->_replyToken hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((*(fromCopy + 44) & 2) != 0)
  {
    self->_didPlayLightsAndSirens = *(fromCopy + 40);
    *&self->_has |= 2u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(BLTPBHandleDidPlayLightsAndSirensReplyRequest *)self setPublisherMatchID:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(BLTPBHandleDidPlayLightsAndSirensReplyRequest *)self setPhoneSectionID:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 44))
  {
    self->_date = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 4))
  {
    [(BLTPBHandleDidPlayLightsAndSirensReplyRequest *)self setReplyToken:?];
    fromCopy = v5;
  }
}

@end