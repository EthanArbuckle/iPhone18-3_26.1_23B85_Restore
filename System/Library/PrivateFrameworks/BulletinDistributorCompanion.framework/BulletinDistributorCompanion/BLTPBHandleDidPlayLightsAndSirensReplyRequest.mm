@interface BLTPBHandleDidPlayLightsAndSirensReplyRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDidPlayLightsAndSirens:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BLTPBHandleDidPlayLightsAndSirensReplyRequest

- (void)setHasDidPlayLightsAndSirens:(BOOL)a3
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
  v8.super_class = BLTPBHandleDidPlayLightsAndSirensReplyRequest;
  v4 = [(BLTPBHandleDidPlayLightsAndSirensReplyRequest *)&v8 description];
  v5 = [(BLTPBHandleDidPlayLightsAndSirensReplyRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_didPlayLightsAndSirens];
    [v3 setObject:v4 forKey:@"didPlayLightsAndSirens"];
  }

  publisherMatchID = self->_publisherMatchID;
  if (publisherMatchID)
  {
    [v3 setObject:publisherMatchID forKey:@"publisherMatchID"];
  }

  phoneSectionID = self->_phoneSectionID;
  if (phoneSectionID)
  {
    [v3 setObject:phoneSectionID forKey:@"phoneSectionID"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_date];
    [v3 setObject:v7 forKey:@"date"];
  }

  replyToken = self->_replyToken;
  if (replyToken)
  {
    [v3 setObject:replyToken forKey:@"replyToken"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if ((*&self->_has & 2) != 0)
  {
    didPlayLightsAndSirens = self->_didPlayLightsAndSirens;
    PBDataWriterWriteBOOLField();
    v4 = v7;
  }

  if (self->_publisherMatchID)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_phoneSectionID)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    date = self->_date;
    PBDataWriterWriteDoubleField();
    v4 = v7;
  }

  if (self->_replyToken)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[40] = self->_didPlayLightsAndSirens;
    v4[44] |= 2u;
  }

  v5 = v4;
  if (self->_publisherMatchID)
  {
    [v4 setPublisherMatchID:?];
    v4 = v5;
  }

  if (self->_phoneSectionID)
  {
    [v5 setPhoneSectionID:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_date;
    v4[44] |= 1u;
  }

  if (self->_replyToken)
  {
    [v5 setReplyToken:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 40) = self->_didPlayLightsAndSirens;
    *(v5 + 44) |= 2u;
  }

  v7 = [(NSString *)self->_publisherMatchID copyWithZone:a3];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  v9 = [(NSString *)self->_phoneSectionID copyWithZone:a3];
  v10 = *(v6 + 16);
  *(v6 + 16) = v9;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_date;
    *(v6 + 44) |= 1u;
  }

  v11 = [(NSString *)self->_replyToken copyWithZone:a3];
  v12 = *(v6 + 32);
  *(v6 + 32) = v11;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = *(v4 + 44);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0)
    {
      goto LABEL_12;
    }

    v11 = *(v4 + 40);
    if (self->_didPlayLightsAndSirens)
    {
      if ((*(v4 + 40) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (*(v4 + 40))
    {
      goto LABEL_12;
    }
  }

  else if ((*(v4 + 44) & 2) != 0)
  {
    goto LABEL_12;
  }

  publisherMatchID = self->_publisherMatchID;
  if (publisherMatchID | *(v4 + 3) && ![(NSString *)publisherMatchID isEqual:?])
  {
    goto LABEL_12;
  }

  phoneSectionID = self->_phoneSectionID;
  if (phoneSectionID | *(v4 + 2))
  {
    if (![(NSString *)phoneSectionID isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = *(v4 + 44);
  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) != 0 && self->_date == *(v4 + 1))
    {
      goto LABEL_21;
    }

LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  if (*(v4 + 44))
  {
    goto LABEL_12;
  }

LABEL_21:
  replyToken = self->_replyToken;
  if (replyToken | *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((*(v4 + 44) & 2) != 0)
  {
    self->_didPlayLightsAndSirens = *(v4 + 40);
    *&self->_has |= 2u;
  }

  v5 = v4;
  if (*(v4 + 3))
  {
    [(BLTPBHandleDidPlayLightsAndSirensReplyRequest *)self setPublisherMatchID:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(BLTPBHandleDidPlayLightsAndSirensReplyRequest *)self setPhoneSectionID:?];
    v4 = v5;
  }

  if (*(v4 + 44))
  {
    self->_date = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 4))
  {
    [(BLTPBHandleDidPlayLightsAndSirensReplyRequest *)self setReplyToken:?];
    v4 = v5;
  }
}

@end