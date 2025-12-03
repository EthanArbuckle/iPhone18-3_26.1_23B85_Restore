@interface HKCodableSummaryAudioExposureValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasLastUpdatedDateData:(BOOL)data;
- (void)setHasSecondsListened:(BOOL)listened;
- (void)writeTo:(id)to;
@end

@implementation HKCodableSummaryAudioExposureValue

- (void)setHasSecondsListened:(BOOL)listened
{
  if (listened)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasLastUpdatedDateData:(BOOL)data
{
  if (data)
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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSummaryAudioExposureValue;
  v4 = [(HKCodableSummaryAudioExposureValue *)&v8 description];
  dictionaryRepresentation = [(HKCodableSummaryAudioExposureValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  leqQuantity = self->_leqQuantity;
  if (leqQuantity)
  {
    dictionaryRepresentation = [(HKCodableQuantity *)leqQuantity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"leqQuantity"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_secondsListened];
    [dictionary setObject:v9 forKey:@"secondsListened"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_daysAggregated];
  [dictionary setObject:v10 forKey:@"daysAggregated"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_lastUpdatedDateData];
    [dictionary setObject:v7 forKey:@"lastUpdatedDateData"];
  }

LABEL_7:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_leqQuantity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v6;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  PBDataWriterWriteInt64Field();
  toCopy = v6;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }

LABEL_7:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_leqQuantity)
  {
    v6 = toCopy;
    [toCopy setLeqQuantity:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 3) = *&self->_secondsListened;
    *(toCopy + 40) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 1) = self->_daysAggregated;
  *(toCopy + 40) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    *(toCopy + 2) = *&self->_lastUpdatedDateData;
    *(toCopy + 40) |= 2u;
  }

LABEL_7:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HKCodableQuantity *)self->_leqQuantity copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 8) = self->_daysAggregated;
    *(v5 + 40) |= 1u;
    if ((*&self->_has & 2) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *(v5 + 24) = self->_secondsListened;
  *(v5 + 40) |= 4u;
  has = self->_has;
  if (has)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    *(v5 + 16) = self->_lastUpdatedDateData;
    *(v5 + 40) |= 2u;
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

  leqQuantity = self->_leqQuantity;
  if (leqQuantity | *(equalCopy + 4))
  {
    if (![(HKCodableQuantity *)leqQuantity isEqual:?])
    {
      goto LABEL_18;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 40) & 4) == 0 || self->_secondsListened != *(equalCopy + 3))
    {
      goto LABEL_18;
    }
  }

  else if ((*(equalCopy + 40) & 4) != 0)
  {
LABEL_18:
    v6 = 0;
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_daysAggregated != *(equalCopy + 1))
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_18;
  }

  v6 = (*(equalCopy + 40) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_lastUpdatedDateData != *(equalCopy + 2))
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
  v3 = [(HKCodableQuantity *)self->_leqQuantity hash];
  if ((*&self->_has & 4) != 0)
  {
    secondsListened = self->_secondsListened;
    if (secondsListened < 0.0)
    {
      secondsListened = -secondsListened;
    }

    *v4.i64 = floor(secondsListened + 0.5);
    v8 = (secondsListened - *v4.i64) * 1.84467441e19;
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

  if (*&self->_has)
  {
    v10 = 2654435761 * self->_daysAggregated;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_11;
    }

LABEL_16:
    v14 = 0;
    return v6 ^ v3 ^ v10 ^ v14;
  }

  v10 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  lastUpdatedDateData = self->_lastUpdatedDateData;
  if (lastUpdatedDateData < 0.0)
  {
    lastUpdatedDateData = -lastUpdatedDateData;
  }

  *v4.i64 = floor(lastUpdatedDateData + 0.5);
  v12 = (lastUpdatedDateData - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v14 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v5, v4).i64;
  if (v12 >= 0.0)
  {
    if (v12 > 0.0)
    {
      v14 += v12;
    }
  }

  else
  {
    v14 -= fabs(v12);
  }

  return v6 ^ v3 ^ v10 ^ v14;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  leqQuantity = self->_leqQuantity;
  v6 = *(fromCopy + 4);
  if (leqQuantity)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = fromCopy;
    leqQuantity = [(HKCodableQuantity *)leqQuantity mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = fromCopy;
    leqQuantity = [(HKCodableSummaryAudioExposureValue *)self setLeqQuantity:?];
  }

  fromCopy = v8;
LABEL_7:
  v7 = *(fromCopy + 40);
  if ((v7 & 4) != 0)
  {
    self->_secondsListened = *(fromCopy + 3);
    *&self->_has |= 4u;
    v7 = *(fromCopy + 40);
    if ((v7 & 1) == 0)
    {
LABEL_9:
      if ((v7 & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*(fromCopy + 40) & 1) == 0)
  {
    goto LABEL_9;
  }

  self->_daysAggregated = *(fromCopy + 1);
  *&self->_has |= 1u;
  if ((*(fromCopy + 40) & 2) != 0)
  {
LABEL_10:
    self->_lastUpdatedDateData = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

LABEL_11:

  MEMORY[0x1EEE66BB8](leqQuantity, fromCopy);
}

@end