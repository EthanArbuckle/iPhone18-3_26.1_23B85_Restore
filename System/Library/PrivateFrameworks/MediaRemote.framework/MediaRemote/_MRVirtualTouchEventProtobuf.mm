@interface _MRVirtualTouchEventProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPhase:(id)phase;
- (int)phase;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasFinger:(BOOL)finger;
- (void)setHasPhase:(BOOL)phase;
- (void)setHasY:(BOOL)y;
- (void)writeTo:(id)to;
@end

@implementation _MRVirtualTouchEventProtobuf

- (void)setHasY:(BOOL)y
{
  if (y)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)phase
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_phase;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPhase:(BOOL)phase
{
  if (phase)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsPhase:(id)phase
{
  phaseCopy = phase;
  if ([phaseCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([phaseCopy isEqualToString:@"Began"])
  {
    v4 = 1;
  }

  else if ([phaseCopy isEqualToString:@"Moved"])
  {
    v4 = 2;
  }

  else if ([phaseCopy isEqualToString:@"Stationary"])
  {
    v4 = 3;
  }

  else if ([phaseCopy isEqualToString:@"Ended"])
  {
    v4 = 4;
  }

  else if ([phaseCopy isEqualToString:@"Cancelled"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasFinger:(BOOL)finger
{
  if (finger)
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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRVirtualTouchEventProtobuf;
  v4 = [(_MRVirtualTouchEventProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRVirtualTouchEventProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_x];
    [dictionary setObject:v7 forKey:@"x"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_y];
  [dictionary setObject:v8 forKey:@"y"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  phase = self->_phase;
  if (phase >= 6)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_phase];
  }

  else
  {
    v10 = off_1E76A3380[phase];
  }

  [dictionary setObject:v10 forKey:@"phase"];

  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_5:
  v5 = [MEMORY[0x1E696AD98] numberWithInt:self->_finger];
  [dictionary setObject:v5 forKey:@"finger"];

LABEL_6:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    x = self->_x;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  y = self->_y;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  phase = self->_phase;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    finger = self->_finger;
    PBDataWriterWriteInt32Field();
  }

LABEL_6:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = *&self->_x;
    *(toCopy + 32) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  toCopy[2] = *&self->_y;
  *(toCopy + 32) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  *(toCopy + 7) = self->_phase;
  *(toCopy + 32) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    *(toCopy + 6) = self->_finger;
    *(toCopy + 32) |= 4u;
  }

LABEL_6:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = *&self->_x;
    *(result + 32) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 2) = *&self->_y;
  *(result + 32) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(result + 7) = self->_phase;
  *(result + 32) |= 8u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 6) = self->_finger;
  *(result + 32) |= 4u;
  return result;
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
    if ((*(equalCopy + 32) & 1) == 0 || self->_x != *(equalCopy + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_y != *(equalCopy + 2))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 32) & 8) == 0 || self->_phase != *(equalCopy + 7))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 32) & 8) != 0)
  {
    goto LABEL_21;
  }

  v5 = (*(equalCopy + 32) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 32) & 4) == 0 || self->_finger != *(equalCopy + 6))
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
  if (*&self->_has)
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

  if ((*&self->_has & 2) != 0)
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
    v12 = 2654435761 * self->_phase;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_19;
    }

LABEL_21:
    v13 = 0;
    return v8 ^ v4 ^ v12 ^ v13;
  }

  v12 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  v13 = 2654435761 * self->_finger;
  return v8 ^ v4 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 32);
  if (v5)
  {
    self->_x = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 32);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(fromCopy + 32) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_y = *(fromCopy + 2);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 32);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  self->_phase = *(fromCopy + 7);
  *&self->_has |= 8u;
  if ((*(fromCopy + 32) & 4) != 0)
  {
LABEL_5:
    self->_finger = *(fromCopy + 6);
    *&self->_has |= 4u;
  }

LABEL_6:
}

@end