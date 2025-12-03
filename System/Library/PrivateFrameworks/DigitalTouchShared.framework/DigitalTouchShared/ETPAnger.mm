@interface ETPAnger
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)mergeFrom:(id)from;
- (void)setHasNormalizedCenterX:(BOOL)x;
- (void)setHasNormalizedCenterY:(BOOL)y;
- (void)writeTo:(id)to;
@end

@implementation ETPAnger

- (void)setHasNormalizedCenterX:(BOOL)x
{
  if (x)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasNormalizedCenterY:(BOOL)y
{
  if (y)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ETPAnger;
  v4 = [(ETPAnger *)&v8 description];
  dictionaryRepresentation = [(ETPAnger *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    *&v4 = self->_duration;
    v10 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [dictionary setObject:v10 forKey:@"duration"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *&v4 = self->_normalizedCenterX;
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [dictionary setObject:v11 forKey:@"normalizedCenterX"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *&v4 = self->_normalizedCenterY;
    v6 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [dictionary setObject:v6 forKey:@"normalizedCenterY"];
  }

LABEL_5:
  delays = self->_delays;
  if (delays)
  {
    [dictionary setObject:delays forKey:@"delays"];
  }

  points = self->_points;
  if (points)
  {
    [dictionary setObject:points forKey:@"points"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if (has)
  {
    PBDataWriterWriteFloatField();
    toCopy = v6;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteFloatField();
  toCopy = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteFloatField();
    toCopy = v6;
  }

LABEL_5:
  if (self->_delays)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_points)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 20) = self->_normalizedCenterX;
    *(v5 + 40) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 16) = self->_duration;
  *(v5 + 40) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 24) = self->_normalizedCenterY;
    *(v5 + 40) |= 4u;
  }

LABEL_5:
  v8 = [(NSData *)self->_delays copyWithZone:zone];
  v9 = v6[1];
  v6[1] = v8;

  v10 = [(NSData *)self->_points copyWithZone:zone];
  v11 = v6[4];
  v6[4] = v10;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_duration != *(equalCopy + 4))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_21:
    v7 = 0;
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_normalizedCenterX != *(equalCopy + 5))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 40) & 4) == 0 || self->_normalizedCenterY != *(equalCopy + 6))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 40) & 4) != 0)
  {
    goto LABEL_21;
  }

  delays = self->_delays;
  if (delays | *(equalCopy + 1) && ![(NSData *)delays isEqual:?])
  {
    goto LABEL_21;
  }

  points = self->_points;
  if (points | *(equalCopy + 4))
  {
    v7 = [(NSData *)points isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_22:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    duration = self->_duration;
    if (duration >= 0.0)
    {
      v7 = duration;
    }

    else
    {
      v7 = -duration;
    }

    *v2.i64 = floor(v7 + 0.5);
    v8 = (v7 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v9), v3, v2);
    v5 = 2654435761u * *v2.i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v5 += v8;
      }
    }

    else
    {
      v5 -= fabs(v8);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    normalizedCenterX = self->_normalizedCenterX;
    if (normalizedCenterX >= 0.0)
    {
      v12 = normalizedCenterX;
    }

    else
    {
      v12 = -normalizedCenterX;
    }

    *v2.i64 = floor(v12 + 0.5);
    v13 = (v12 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v14), v3, v2);
    v10 = 2654435761u * *v2.i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v10 += v13;
      }
    }

    else
    {
      v10 -= fabs(v13);
    }
  }

  else
  {
    v10 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    normalizedCenterY = self->_normalizedCenterY;
    if (normalizedCenterY >= 0.0)
    {
      v17 = normalizedCenterY;
    }

    else
    {
      v17 = -normalizedCenterY;
    }

    *v2.i64 = floor(v17 + 0.5);
    v18 = (v17 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v15 = 2654435761u * *vbslq_s8(vnegq_f64(v19), v3, v2).i64;
    if (v18 >= 0.0)
    {
      if (v18 > 0.0)
      {
        v15 += v18;
      }
    }

    else
    {
      v15 -= fabs(v18);
    }
  }

  else
  {
    v15 = 0;
  }

  v20 = v10 ^ v5 ^ v15 ^ [(NSData *)self->_delays hash];
  return v20 ^ [(NSData *)self->_points hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 40);
  if (v5)
  {
    self->_duration = *(fromCopy + 4);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 40);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_normalizedCenterX = *(fromCopy + 5);
  *&self->_has |= 2u;
  if ((*(fromCopy + 40) & 4) != 0)
  {
LABEL_4:
    self->_normalizedCenterY = *(fromCopy + 6);
    *&self->_has |= 4u;
  }

LABEL_5:
  v6 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(ETPAnger *)self setDelays:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 4))
  {
    [(ETPAnger *)self setPoints:?];
    fromCopy = v6;
  }
}

@end