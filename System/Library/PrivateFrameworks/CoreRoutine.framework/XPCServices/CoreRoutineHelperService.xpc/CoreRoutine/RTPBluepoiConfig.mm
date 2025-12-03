@interface RTPBluepoiConfig
- (BOOL)isEqual:(id)equal;
- (double)higConfidenceJurassic;
- (double)lowConfidenceJurassic;
- (double)xgboostHighThreshold;
- (double)xgboostLowThreshold;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasLowConfidenceJurassic:(BOOL)jurassic;
- (void)setHasXgboostHighThreshold:(BOOL)threshold;
- (void)setHasXgboostLowThreshold:(BOOL)threshold;
- (void)writeTo:(id)to;
@end

@implementation RTPBluepoiConfig

- (double)xgboostLowThreshold
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_xgboostLowThreshold;
  }

  else
  {
    return 0.6;
  }
}

- (void)setHasXgboostLowThreshold:(BOOL)threshold
{
  if (threshold)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (double)xgboostHighThreshold
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_xgboostHighThreshold;
  }

  else
  {
    return 0.8;
  }
}

- (void)setHasXgboostHighThreshold:(BOOL)threshold
{
  if (threshold)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (double)lowConfidenceJurassic
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_lowConfidenceJurassic;
  }

  else
  {
    return 0.9;
  }
}

- (void)setHasLowConfidenceJurassic:(BOOL)jurassic
{
  if (jurassic)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (double)higConfidenceJurassic
{
  if (*&self->_has)
  {
    return self->_higConfidenceJurassic;
  }

  else
  {
    return 0.95;
  }
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = RTPBluepoiConfig;
  v3 = [(RTPBluepoiConfig *)&v7 description];
  dictionaryRepresentation = [(RTPBluepoiConfig *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v7 = [NSNumber numberWithDouble:self->_xgboostLowThreshold];
    [v3 setObject:v7 forKey:@"xgboost_low_threshold"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = [NSNumber numberWithDouble:self->_xgboostHighThreshold];
  [v3 setObject:v8 forKey:@"xgboost_high_threshold"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v9 = [NSNumber numberWithDouble:self->_lowConfidenceJurassic];
  [v3 setObject:v9 forKey:@"low_confidence_jurassic"];

  if (*&self->_has)
  {
LABEL_5:
    v5 = [NSNumber numberWithDouble:self->_higConfidenceJurassic];
    [v3 setObject:v5 forKey:@"hig_confidence_jurassic"];
  }

LABEL_6:

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    xgboostLowThreshold = self->_xgboostLowThreshold;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  xgboostHighThreshold = self->_xgboostHighThreshold;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  lowConfidenceJurassic = self->_lowConfidenceJurassic;
  PBDataWriterWriteDoubleField();
  if (*&self->_has)
  {
LABEL_5:
    higConfidenceJurassic = self->_higConfidenceJurassic;
    PBDataWriterWriteDoubleField();
  }

LABEL_6:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    toCopy[4] = *&self->_xgboostLowThreshold;
    *(toCopy + 40) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  toCopy[3] = *&self->_xgboostHighThreshold;
  *(toCopy + 40) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  toCopy[2] = *&self->_lowConfidenceJurassic;
  *(toCopy + 40) |= 2u;
  if (*&self->_has)
  {
LABEL_5:
    toCopy[1] = *&self->_higConfidenceJurassic;
    *(toCopy + 40) |= 1u;
  }

LABEL_6:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(result + 4) = *&self->_xgboostLowThreshold;
    *(result + 40) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 3) = *&self->_xgboostHighThreshold;
  *(result + 40) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(result + 2) = *&self->_lowConfidenceJurassic;
  *(result + 40) |= 2u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 1) = *&self->_higConfidenceJurassic;
  *(result + 40) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 40) & 8) == 0 || self->_xgboostLowThreshold != *(equalCopy + 4))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 40) & 8) != 0)
  {
LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 40) & 4) == 0 || self->_xgboostHighThreshold != *(equalCopy + 3))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 40) & 4) != 0)
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_lowConfidenceJurassic != *(equalCopy + 2))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
    goto LABEL_21;
  }

  v5 = (*(equalCopy + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_higConfidenceJurassic != *(equalCopy + 1))
    {
      goto LABEL_21;
    }

    v5 = 1;
  }

LABEL_22:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    xgboostLowThreshold = self->_xgboostLowThreshold;
    if (xgboostLowThreshold < 0.0)
    {
      xgboostLowThreshold = -xgboostLowThreshold;
    }

    *v2.i64 = floor(xgboostLowThreshold + 0.5);
    v6 = (xgboostLowThreshold - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v7), v3, v2);
    v4 = 2654435761u * *v2.i64;
    if (v6 >= 0.0)
    {
      if (v6 > 0.0)
      {
        v4 += v6;
      }
    }

    else
    {
      v4 -= fabs(v6);
    }
  }

  else
  {
    v4 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    xgboostHighThreshold = self->_xgboostHighThreshold;
    if (xgboostHighThreshold < 0.0)
    {
      xgboostHighThreshold = -xgboostHighThreshold;
    }

    *v2.i64 = floor(xgboostHighThreshold + 0.5);
    v10 = (xgboostHighThreshold - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v11), v3, v2);
    v8 = 2654435761u * *v2.i64;
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

  if ((*&self->_has & 2) != 0)
  {
    lowConfidenceJurassic = self->_lowConfidenceJurassic;
    if (lowConfidenceJurassic < 0.0)
    {
      lowConfidenceJurassic = -lowConfidenceJurassic;
    }

    *v2.i64 = floor(lowConfidenceJurassic + 0.5);
    v14 = (lowConfidenceJurassic - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v15), v3, v2);
    v12 = 2654435761u * *v2.i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v12 += v14;
      }
    }

    else
    {
      v12 -= fabs(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  if (*&self->_has)
  {
    higConfidenceJurassic = self->_higConfidenceJurassic;
    if (higConfidenceJurassic < 0.0)
    {
      higConfidenceJurassic = -higConfidenceJurassic;
    }

    *v2.i64 = floor(higConfidenceJurassic + 0.5);
    v18 = (higConfidenceJurassic - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v16 = 2654435761u * *vbslq_s8(vnegq_f64(v19), v3, v2).i64;
    if (v18 >= 0.0)
    {
      if (v18 > 0.0)
      {
        v16 += v18;
      }
    }

    else
    {
      v16 -= fabs(v18);
    }
  }

  else
  {
    v16 = 0;
  }

  return v8 ^ v4 ^ v12 ^ v16;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 40);
  if ((v5 & 8) != 0)
  {
    self->_xgboostLowThreshold = *(fromCopy + 4);
    *&self->_has |= 8u;
    v5 = *(fromCopy + 40);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(fromCopy + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_xgboostHighThreshold = *(fromCopy + 3);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 40);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  self->_lowConfidenceJurassic = *(fromCopy + 2);
  *&self->_has |= 2u;
  if (*(fromCopy + 40))
  {
LABEL_5:
    self->_higConfidenceJurassic = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_6:
}

@end