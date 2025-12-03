@interface BRKIDSMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasLongitude:(BOOL)longitude;
- (void)setHasRadius:(BOOL)radius;
- (void)writeTo:(id)to;
@end

@implementation BRKIDSMessage

- (void)setHasLongitude:(BOOL)longitude
{
  if (longitude)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasRadius:(BOOL)radius
{
  if (radius)
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
  v8.super_class = BRKIDSMessage;
  v4 = [(BRKIDSMessage *)&v8 description];
  dictionaryRepresentation = [(BRKIDSMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  has = self->_has;
  if (has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_latitude];
    [v4 setObject:v9 forKey:@"latitude"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_longitude];
  [v4 setObject:v10 forKey:@"longitude"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_radius];
    [v4 setObject:v7 forKey:@"radius"];
  }

LABEL_7:

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  has = self->_has;
  if (has)
  {
    latitude = self->_latitude;
    PBDataWriterWriteDoubleField();
    toCopy = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  longitude = self->_longitude;
  PBDataWriterWriteDoubleField();
  toCopy = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    radius = self->_radius;
    PBDataWriterWriteDoubleField();
    toCopy = v9;
  }

LABEL_7:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_identifier)
  {
    v6 = toCopy;
    [toCopy setIdentifier:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = *&self->_latitude;
    *(toCopy + 40) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 2) = *&self->_longitude;
  *(toCopy + 40) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    *(toCopy + 3) = *&self->_radius;
    *(toCopy + 40) |= 4u;
  }

LABEL_7:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 16) = self->_longitude;
    *(v5 + 40) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *(v5 + 8) = self->_latitude;
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
    *(v5 + 24) = self->_radius;
    *(v5 + 40) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 4))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_18;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_latitude != *(equalCopy + 1))
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_18:
    v6 = 0;
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_longitude != *(equalCopy + 2))
    {
      goto LABEL_18;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
    goto LABEL_18;
  }

  v6 = (*(equalCopy + 40) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 40) & 4) == 0 || self->_radius != *(equalCopy + 3))
    {
      goto LABEL_18;
    }

    v6 = 1;
  }

LABEL_19:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  if (*&self->_has)
  {
    latitude = self->_latitude;
    if (latitude < 0.0)
    {
      latitude = -latitude;
    }

    *v4.i64 = floor(latitude + 0.5);
    v8 = (latitude - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v9), v5, v4);
    v6 = 2654435761u * *v4.i64;
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
    longitude = self->_longitude;
    if (longitude < 0.0)
    {
      longitude = -longitude;
    }

    *v4.i64 = floor(longitude + 0.5);
    v12 = (longitude - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v13), v5, v4);
    v10 = 2654435761u * *v4.i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    radius = self->_radius;
    if (radius < 0.0)
    {
      radius = -radius;
    }

    *v4.i64 = floor(radius + 0.5);
    v16 = (radius - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v14 = 2654435761u * *vbslq_s8(vnegq_f64(v17), v5, v4).i64;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v14 += v16;
      }
    }

    else
    {
      v14 -= fabs(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  return v6 ^ v3 ^ v10 ^ v14;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 4))
  {
    v6 = fromCopy;
    [(BRKIDSMessage *)self setIdentifier:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 40);
  if (v5)
  {
    self->_latitude = fromCopy[1];
    *&self->_has |= 1u;
    v5 = *(fromCopy + 40);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((fromCopy[5] & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_longitude = fromCopy[2];
  *&self->_has |= 2u;
  if ((fromCopy[5] & 4) != 0)
  {
LABEL_6:
    self->_radius = fromCopy[3];
    *&self->_has |= 4u;
  }

LABEL_7:
}

@end