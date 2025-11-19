@interface MXLatnnMitigatorResult
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasProcessed:(BOOL)a3;
- (void)setHasThreshold:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MXLatnnMitigatorResult

- (void)setHasProcessed:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasThreshold:(BOOL)a3
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
  v8.super_class = MXLatnnMitigatorResult;
  v4 = [(MXLatnnMitigatorResult *)&v8 description];
  v5 = [(MXLatnnMitigatorResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 4) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_processed];
    [v3 setObject:v4 forKey:@"processed"];
  }

  version = self->_version;
  if (version)
  {
    [v3 setObject:version forKey:@"version"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_threshold];
    [v3 setObject:v7 forKey:@"threshold"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_score];
    [v3 setObject:v8 forKey:@"score"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 4) != 0)
  {
    v4[32] = self->_processed;
    v4[36] |= 4u;
  }

  if (self->_version)
  {
    v6 = v4;
    [v4 setVersion:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 2) = *&self->_threshold;
    v4[36] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = *&self->_score;
    v4[36] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 32) = self->_processed;
    *(v5 + 36) |= 4u;
  }

  v7 = [(NSString *)self->_version copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  has = self->_has;
  v6 = *(v4 + 36);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) == 0)
    {
      goto LABEL_21;
    }

    v8 = *(v4 + 32);
    if (self->_processed)
    {
      if ((*(v4 + 32) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else if (*(v4 + 32))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 36) & 4) != 0)
  {
    goto LABEL_21;
  }

  version = self->_version;
  if (!(version | *(v4 + 3)))
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
    if ((*(v4 + 36) & 2) == 0 || self->_threshold != *(v4 + 2))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
    goto LABEL_21;
  }

  v9 = (*(v4 + 36) & 1) == 0;
  if (has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_score != *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((*(v4 + 36) & 4) != 0)
  {
    self->_processed = *(v4 + 32);
    *&self->_has |= 4u;
  }

  if (*(v4 + 3))
  {
    v6 = v4;
    [(MXLatnnMitigatorResult *)self setVersion:?];
    v4 = v6;
  }

  v5 = *(v4 + 36);
  if ((v5 & 2) != 0)
  {
    self->_threshold = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 36);
  }

  if (v5)
  {
    self->_score = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

@end