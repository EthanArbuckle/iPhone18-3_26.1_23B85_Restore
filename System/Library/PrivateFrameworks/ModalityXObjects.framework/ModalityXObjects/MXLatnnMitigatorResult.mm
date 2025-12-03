@interface MXLatnnMitigatorResult
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasProcessed:(BOOL)processed;
- (void)setHasThreshold:(BOOL)threshold;
- (void)writeTo:(id)to;
@end

@implementation MXLatnnMitigatorResult

- (void)setHasProcessed:(BOOL)processed
{
  if (processed)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasThreshold:(BOOL)threshold
{
  if (threshold)
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
  v8.super_class = MXLatnnMitigatorResult;
  v4 = [(MXLatnnMitigatorResult *)&v8 description];
  dictionaryRepresentation = [(MXLatnnMitigatorResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 4) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_processed];
    [dictionary setObject:v4 forKey:@"processed"];
  }

  version = self->_version;
  if (version)
  {
    [dictionary setObject:version forKey:@"version"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_threshold];
    [dictionary setObject:v7 forKey:@"threshold"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_score];
    [dictionary setObject:v8 forKey:@"score"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    processed = self->_processed;
    PBDataWriterWriteBOOLField();
  }

  if (self->_version)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    threshold = self->_threshold;
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if (has)
  {
    score = self->_score;
    PBDataWriterWriteDoubleField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    toCopy[32] = self->_processed;
    toCopy[36] |= 4u;
  }

  if (self->_version)
  {
    v6 = toCopy;
    [toCopy setVersion:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 2) = *&self->_threshold;
    toCopy[36] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = *&self->_score;
    toCopy[36] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 32) = self->_processed;
    *(v5 + 36) |= 4u;
  }

  v7 = [(NSString *)self->_version copyWithZone:zone];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 16) = self->_threshold;
    *(v6 + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v6 + 8) = self->_score;
    *(v6 + 36) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  has = self->_has;
  v6 = *(equalCopy + 36);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) == 0)
    {
      goto LABEL_21;
    }

    v8 = *(equalCopy + 32);
    if (self->_processed)
    {
      if ((*(equalCopy + 32) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else if (*(equalCopy + 32))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 36) & 4) != 0)
  {
    goto LABEL_21;
  }

  version = self->_version;
  if (!(version | *(equalCopy + 3)))
  {
    goto LABEL_7;
  }

  if (![(NSString *)version isEqual:?])
  {
LABEL_21:
    v9 = 0;
    goto LABEL_22;
  }

  has = self->_has;
LABEL_7:
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_threshold != *(equalCopy + 2))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_21;
  }

  v9 = (*(equalCopy + 36) & 1) == 0;
  if (has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_score != *(equalCopy + 1))
    {
      goto LABEL_21;
    }

    v9 = 1;
  }

LABEL_22:

  return v9;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_processed;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_version hash];
  if ((*&self->_has & 2) != 0)
  {
    threshold = self->_threshold;
    if (threshold < 0.0)
    {
      threshold = -threshold;
    }

    *v5.i64 = floor(threshold + 0.5);
    v9 = (threshold - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v10), v6, v5);
    v7 = 2654435761u * *v5.i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  if (*&self->_has)
  {
    score = self->_score;
    if (score < 0.0)
    {
      score = -score;
    }

    *v5.i64 = floor(score + 0.5);
    v13 = (score - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v11 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v6, v5).i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabs(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v7 ^ v11;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((*(fromCopy + 36) & 4) != 0)
  {
    self->_processed = *(fromCopy + 32);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 3))
  {
    v6 = fromCopy;
    [(MXLatnnMitigatorResult *)self setVersion:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 36);
  if ((v5 & 2) != 0)
  {
    self->_threshold = *(fromCopy + 2);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 36);
  }

  if (v5)
  {
    self->_score = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

@end