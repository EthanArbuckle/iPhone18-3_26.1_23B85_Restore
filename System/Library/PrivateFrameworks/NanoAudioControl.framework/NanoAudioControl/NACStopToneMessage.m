@interface NACStopToneMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasShouldWaitUntilEndOfCurrentRepetition:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NACStopToneMessage

- (void)setHasShouldWaitUntilEndOfCurrentRepetition:(BOOL)a3
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
  v8.super_class = NACStopToneMessage;
  v4 = [(NACStopToneMessage *)&v8 description];
  v5 = [(NACStopToneMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_fadeOutDuration];
    [v3 setObject:v5 forKey:@"fadeOutDuration"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldWaitUntilEndOfCurrentRepetition];
    [v3 setObject:v6 forKey:@"shouldWaitUntilEndOfCurrentRepetition"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if (has)
  {
    fadeOutDuration = self->_fadeOutDuration;
    PBDataWriterWriteDoubleField();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    shouldWaitUntilEndOfCurrentRepetition = self->_shouldWaitUntilEndOfCurrentRepetition;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = *&self->_fadeOutDuration;
    *(v4 + 20) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 16) = self->_shouldWaitUntilEndOfCurrentRepetition;
    *(v4 + 20) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = *&self->_fadeOutDuration;
    *(result + 20) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(result + 16) = self->_shouldWaitUntilEndOfCurrentRepetition;
    *(result + 20) |= 2u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_fadeOutDuration != *(v4 + 1))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 20))
  {
    goto LABEL_9;
  }

  v5 = (*(v4 + 20) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 20) & 2) == 0)
    {
LABEL_9:
      v5 = 0;
      goto LABEL_10;
    }

    if (self->_shouldWaitUntilEndOfCurrentRepetition)
    {
      if ((*(v4 + 16) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (*(v4 + 16))
    {
      goto LABEL_9;
    }

    v5 = 1;
  }

LABEL_10:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    fadeOutDuration = self->_fadeOutDuration;
    if (fadeOutDuration < 0.0)
    {
      fadeOutDuration = -fadeOutDuration;
    }

    *v2.i64 = floor(fadeOutDuration + 0.5);
    v6 = (fadeOutDuration - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v4 = 2654435761u * *vbslq_s8(vnegq_f64(v7), v3, v2).i64;
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
    v8 = 2654435761 * self->_shouldWaitUntilEndOfCurrentRepetition;
  }

  else
  {
    v8 = 0;
  }

  return v8 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 20);
  if (v5)
  {
    self->_fadeOutDuration = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 20);
  }

  if ((v5 & 2) != 0)
  {
    self->_shouldWaitUntilEndOfCurrentRepetition = *(v4 + 16);
    *&self->_has |= 2u;
  }
}

@end