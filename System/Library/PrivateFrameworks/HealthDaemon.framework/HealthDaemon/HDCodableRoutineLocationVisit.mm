@interface HDCodableRoutineLocationVisit
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasExitTime:(BOOL)time;
- (void)writeTo:(id)to;
@end

@implementation HDCodableRoutineLocationVisit

- (void)setHasExitTime:(BOOL)time
{
  if (time)
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
  v8.super_class = HDCodableRoutineLocationVisit;
  v4 = [(HDCodableRoutineLocationVisit *)&v8 description];
  dictionaryRepresentation = [(HDCodableRoutineLocationVisit *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_entryTime];
    [dictionary setObject:v5 forKey:@"entryTime"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_exitTime];
    [dictionary setObject:v6 forKey:@"exitTime"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if (has)
  {
    entryTime = self->_entryTime;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    exitTime = self->_exitTime;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = *&self->_entryTime;
    *(toCopy + 24) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[2] = *&self->_exitTime;
    *(toCopy + 24) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = *&self->_entryTime;
    *(result + 24) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(result + 2) = *&self->_exitTime;
    *(result + 24) |= 2u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_entryTime != *(equalCopy + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 24))
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(equalCopy + 24) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) == 0 || self->_exitTime != *(equalCopy + 2))
    {
      goto LABEL_11;
    }

    v5 = 1;
  }

LABEL_12:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    entryTime = self->_entryTime;
    if (entryTime < 0.0)
    {
      entryTime = -entryTime;
    }

    *v2.i64 = floor(entryTime + 0.5);
    v6 = (entryTime - *v2.i64) * 1.84467441e19;
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
    exitTime = self->_exitTime;
    if (exitTime < 0.0)
    {
      exitTime = -exitTime;
    }

    *v2.i64 = floor(exitTime + 0.5);
    v10 = (exitTime - *v2.i64) * 1.84467441e19;
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

  return v8 ^ v4;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 24);
  if (v5)
  {
    self->_entryTime = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 24);
  }

  if ((v5 & 2) != 0)
  {
    self->_exitTime = *(fromCopy + 2);
    *&self->_has |= 2u;
  }
}

@end