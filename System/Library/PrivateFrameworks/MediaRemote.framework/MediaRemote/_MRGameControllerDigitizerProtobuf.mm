@interface _MRGameControllerDigitizerProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasTouchDown:(BOOL)down;
- (void)setHasX:(BOOL)x;
- (void)setHasY:(BOOL)y;
- (void)writeTo:(id)to;
@end

@implementation _MRGameControllerDigitizerProtobuf

- (void)setHasX:(BOOL)x
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

- (void)setHasY:(BOOL)y
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

- (void)setHasTouchDown:(BOOL)down
{
  if (down)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRGameControllerDigitizerProtobuf;
  v4 = [(_MRGameControllerDigitizerProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRGameControllerDigitizerProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_x];
    [dictionary setObject:v7 forKey:@"x"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
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

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_y];
  [dictionary setObject:v8 forKey:@"y"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_touchDown];
  [dictionary setObject:v9 forKey:@"touchDown"];

  if (*&self->_has)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v5 forKey:@"timestamp"];
  }

LABEL_6:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    x = self->_x;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
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

  y = self->_y;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  touchDown = self->_touchDown;
  PBDataWriterWriteBOOLField();
  if (*&self->_has)
  {
LABEL_5:
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

LABEL_6:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[2] = *&self->_x;
    *(toCopy + 36) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
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

  toCopy[3] = *&self->_y;
  *(toCopy + 36) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  *(toCopy + 32) = self->_touchDown;
  *(toCopy + 36) |= 8u;
  if (*&self->_has)
  {
LABEL_5:
    toCopy[1] = self->_timestamp;
    *(toCopy + 36) |= 1u;
  }

LABEL_6:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 2) = *&self->_x;
    *(result + 36) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
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

  *(result + 3) = *&self->_y;
  *(result + 36) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(result + 32) = self->_touchDown;
  *(result + 36) |= 8u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 1) = self->_timestamp;
  *(result + 36) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_x != *(equalCopy + 2))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) == 0 || self->_y != *(equalCopy + 3))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 36) & 4) != 0)
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 8) == 0)
  {
    if ((*(equalCopy + 36) & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_19:
    v5 = 0;
    goto LABEL_20;
  }

  if ((*(equalCopy + 36) & 8) == 0)
  {
    goto LABEL_19;
  }

  v7 = *(equalCopy + 32);
  if (self->_touchDown)
  {
    if ((*(equalCopy + 32) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 32))
  {
    goto LABEL_19;
  }

LABEL_14:
  v5 = (*(equalCopy + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_19;
    }

    v5 = 1;
  }

LABEL_20:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    x = self->_x;
    if (x < 0.0)
    {
      x = -x;
    }

    *v2.i64 = floor(x + 0.5);
    v6 = (x - *v2.i64) * 1.84467441e19;
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
    y = self->_y;
    if (y < 0.0)
    {
      y = -y;
    }

    *v2.i64 = floor(y + 0.5);
    v10 = (y - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v3, v2).i64;
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

  if ((*&self->_has & 8) != 0)
  {
    v12 = 2654435761 * self->_touchDown;
    if (*&self->_has)
    {
      goto LABEL_19;
    }

LABEL_21:
    v13 = 0;
    return v8 ^ v4 ^ v12 ^ v13;
  }

  v12 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  v13 = 2654435761u * self->_timestamp;
  return v8 ^ v4 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 36);
  if ((v5 & 2) != 0)
  {
    self->_x = *(fromCopy + 2);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 36);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(fromCopy + 36) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_y = *(fromCopy + 3);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 36);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  self->_touchDown = *(fromCopy + 32);
  *&self->_has |= 8u;
  if (*(fromCopy + 36))
  {
LABEL_5:
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_6:
}

@end