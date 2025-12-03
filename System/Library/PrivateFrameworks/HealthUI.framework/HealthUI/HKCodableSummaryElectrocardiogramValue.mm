@interface HKCodableSummaryElectrocardiogramValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasClassificationRawValue:(BOOL)value;
- (void)setHasTimestampData:(BOOL)data;
- (void)writeTo:(id)to;
@end

@implementation HKCodableSummaryElectrocardiogramValue

- (void)setHasClassificationRawValue:(BOOL)value
{
  if (value)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasTimestampData:(BOOL)data
{
  if (data)
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
  v8.super_class = HKCodableSummaryElectrocardiogramValue;
  v4 = [(HKCodableSummaryElectrocardiogramValue *)&v8 description];
  dictionaryRepresentation = [(HKCodableSummaryElectrocardiogramValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_algorithmVersionRawValue];
    [dictionary setObject:v5 forKey:@"algorithmVersionRawValue"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_classificationRawValue];
    [dictionary setObject:v6 forKey:@"classificationRawValue"];
  }

  averageHeartRate = self->_averageHeartRate;
  if (averageHeartRate)
  {
    dictionaryRepresentation = [(HKCodableQuantity *)averageHeartRate dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"averageHeartRate"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestampData];
    [dictionary setObject:v9 forKey:@"timestampData"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_averageHeartRate)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteDoubleField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_algorithmVersionRawValue;
    *(toCopy + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[2] = self->_classificationRawValue;
    *(toCopy + 40) |= 2u;
  }

  if (self->_averageHeartRate)
  {
    v6 = toCopy;
    [toCopy setAverageHeartRate:?];
    toCopy = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    toCopy[3] = *&self->_timestampData;
    *(toCopy + 40) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_algorithmVersionRawValue;
    *(v5 + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_classificationRawValue;
    *(v5 + 40) |= 2u;
  }

  v8 = [(HKCodableQuantity *)self->_averageHeartRate copyWithZone:zone];
  v9 = *(v6 + 32);
  *(v6 + 32) = v8;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 24) = self->_timestampData;
    *(v6 + 40) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  if (has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_algorithmVersionRawValue != *(equalCopy + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_classificationRawValue != *(equalCopy + 2))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
    goto LABEL_19;
  }

  averageHeartRate = self->_averageHeartRate;
  if (averageHeartRate | *(equalCopy + 4))
  {
    if (![(HKCodableQuantity *)averageHeartRate isEqual:?])
    {
LABEL_19:
      v7 = 0;
      goto LABEL_20;
    }

    has = self->_has;
  }

  v7 = (*(equalCopy + 40) & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 40) & 4) == 0 || self->_timestampData != *(equalCopy + 3))
    {
      goto LABEL_19;
    }

    v7 = 1;
  }

LABEL_20:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_algorithmVersionRawValue;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_classificationRawValue;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(HKCodableQuantity *)self->_averageHeartRate hash];
  if ((*&self->_has & 4) != 0)
  {
    timestampData = self->_timestampData;
    if (timestampData < 0.0)
    {
      timestampData = -timestampData;
    }

    *v6.i64 = floor(timestampData + 0.5);
    v10 = (timestampData - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v7, v6).i64;
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

  return v4 ^ v3 ^ v8 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 40);
  if (v6)
  {
    self->_algorithmVersionRawValue = fromCopy[1];
    *&self->_has |= 1u;
    v6 = *(fromCopy + 40);
  }

  if ((v6 & 2) != 0)
  {
    self->_classificationRawValue = fromCopy[2];
    *&self->_has |= 2u;
  }

  averageHeartRate = self->_averageHeartRate;
  v8 = v5[4];
  if (averageHeartRate)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = v5;
    [(HKCodableQuantity *)averageHeartRate mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = v5;
    [(HKCodableSummaryElectrocardiogramValue *)self setAverageHeartRate:?];
  }

  v5 = v9;
LABEL_11:
  if ((v5[5] & 4) != 0)
  {
    *&self->_timestampData = v5[3];
    *&self->_has |= 4u;
  }

  MEMORY[0x1EEE66BB8]();
}

@end