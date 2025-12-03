@interface HKCodableElectrocardiogramSample
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasClassificationRawValue:(BOOL)value;
- (void)setHasPrivateSymptoms:(BOOL)symptoms;
- (void)setHasSymptomsStatusRawValue:(BOOL)value;
- (void)writeTo:(id)to;
@end

@implementation HKCodableElectrocardiogramSample

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

- (void)setHasSymptomsStatusRawValue:(BOOL)value
{
  if (value)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasPrivateSymptoms:(BOOL)symptoms
{
  if (symptoms)
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
  v8.super_class = HKCodableElectrocardiogramSample;
  v4 = [(HKCodableElectrocardiogramSample *)&v8 description];
  dictionaryRepresentation = [(HKCodableElectrocardiogramSample *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dateInterval = self->_dateInterval;
  if (dateInterval)
  {
    dictionaryRepresentation = [(HKCodableDateInterval *)dateInterval dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"dateInterval"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_classificationRawValue];
    [dictionary setObject:v6 forKey:@"classificationRawValue"];
  }

  averageHeartRate = self->_averageHeartRate;
  if (averageHeartRate)
  {
    dictionaryRepresentation2 = [(HKCodableQuantity *)averageHeartRate dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"averageHeartRate"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_symptomsStatusRawValue];
    [dictionary setObject:v10 forKey:@"symptomsStatusRawValue"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_privateSymptoms];
    [dictionary setObject:v11 forKey:@"privateSymptoms"];
  }

  readingData = self->_readingData;
  if (readingData)
  {
    [dictionary setObject:readingData forKey:@"readingData"];
  }

  if (*&self->_has)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_algorithmVersionRawValue];
    [dictionary setObject:v13 forKey:@"algorithmVersionRawValue"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_dateInterval)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v6;
  }

  if (self->_averageHeartRate)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v6;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v6;
  }

  if (self->_readingData)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_dateInterval)
  {
    [toCopy setDateInterval:?];
    toCopy = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 2) = self->_classificationRawValue;
    *(toCopy + 64) |= 2u;
  }

  if (self->_averageHeartRate)
  {
    [v6 setAverageHeartRate:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(toCopy + 4) = self->_symptomsStatusRawValue;
    *(toCopy + 64) |= 8u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(toCopy + 3) = self->_privateSymptoms;
    *(toCopy + 64) |= 4u;
  }

  if (self->_readingData)
  {
    [v6 setReadingData:?];
    toCopy = v6;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_algorithmVersionRawValue;
    *(toCopy + 64) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HKCodableDateInterval *)self->_dateInterval copyWithZone:zone];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_classificationRawValue;
    *(v5 + 64) |= 2u;
  }

  v8 = [(HKCodableQuantity *)self->_averageHeartRate copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 32) = self->_symptomsStatusRawValue;
    *(v5 + 64) |= 8u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_privateSymptoms;
    *(v5 + 64) |= 4u;
  }

  v11 = [(NSData *)self->_readingData copyWithZone:zone];
  v12 = *(v5 + 56);
  *(v5 + 56) = v11;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_algorithmVersionRawValue;
    *(v5 + 64) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  dateInterval = self->_dateInterval;
  if (dateInterval | *(equalCopy + 6))
  {
    if (![(HKCodableDateInterval *)dateInterval isEqual:?])
    {
      goto LABEL_29;
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 64) & 2) == 0 || self->_classificationRawValue != *(equalCopy + 2))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 64) & 2) != 0)
  {
    goto LABEL_29;
  }

  averageHeartRate = self->_averageHeartRate;
  if (averageHeartRate | *(equalCopy + 5))
  {
    if (![(HKCodableQuantity *)averageHeartRate isEqual:?])
    {
      goto LABEL_29;
    }

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 64) & 8) == 0 || self->_symptomsStatusRawValue != *(equalCopy + 4))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 64) & 8) != 0)
  {
    goto LABEL_29;
  }

  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 64) & 4) == 0 || self->_privateSymptoms != *(equalCopy + 3))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 64) & 4) != 0)
  {
    goto LABEL_29;
  }

  readingData = self->_readingData;
  if (readingData | *(equalCopy + 7))
  {
    if ([(NSData *)readingData isEqual:?])
    {
      has = self->_has;
      goto LABEL_25;
    }

LABEL_29:
    v9 = 0;
    goto LABEL_30;
  }

LABEL_25:
  v9 = (*(equalCopy + 64) & 1) == 0;
  if (has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_algorithmVersionRawValue != *(equalCopy + 1))
    {
      goto LABEL_29;
    }

    v9 = 1;
  }

LABEL_30:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(HKCodableDateInterval *)self->_dateInterval hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_classificationRawValue;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(HKCodableQuantity *)self->_averageHeartRate hash];
  if ((*&self->_has & 8) != 0)
  {
    v6 = 2654435761 * self->_symptomsStatusRawValue;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_6:
      v7 = 2654435761 * self->_privateSymptoms;
      goto LABEL_9;
    }
  }

  v7 = 0;
LABEL_9:
  v8 = [(NSData *)self->_readingData hash];
  if (*&self->_has)
  {
    v9 = 2654435761 * self->_algorithmVersionRawValue;
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  dateInterval = self->_dateInterval;
  v6 = fromCopy[6];
  v10 = fromCopy;
  if (dateInterval)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HKCodableDateInterval *)dateInterval mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HKCodableElectrocardiogramSample *)self setDateInterval:?];
  }

  fromCopy = v10;
LABEL_7:
  if ((fromCopy[8] & 2) != 0)
  {
    self->_classificationRawValue = fromCopy[2];
    *&self->_has |= 2u;
  }

  averageHeartRate = self->_averageHeartRate;
  v8 = fromCopy[5];
  if (averageHeartRate)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    averageHeartRate = [(HKCodableQuantity *)averageHeartRate mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    averageHeartRate = [(HKCodableElectrocardiogramSample *)self setAverageHeartRate:?];
  }

  fromCopy = v10;
LABEL_15:
  v9 = *(fromCopy + 64);
  if ((v9 & 8) != 0)
  {
    self->_symptomsStatusRawValue = fromCopy[4];
    *&self->_has |= 8u;
    v9 = *(fromCopy + 64);
  }

  if ((v9 & 4) != 0)
  {
    self->_privateSymptoms = fromCopy[3];
    *&self->_has |= 4u;
  }

  if (fromCopy[7])
  {
    averageHeartRate = [(HKCodableElectrocardiogramSample *)self setReadingData:?];
    fromCopy = v10;
  }

  if (fromCopy[8])
  {
    self->_algorithmVersionRawValue = fromCopy[1];
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66BB8](averageHeartRate, fromCopy);
}

@end