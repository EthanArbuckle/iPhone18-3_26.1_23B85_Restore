@interface HKCodableElectrocardiogramSample
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasClassificationRawValue:(BOOL)a3;
- (void)setHasPrivateSymptoms:(BOOL)a3;
- (void)setHasSymptomsStatusRawValue:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableElectrocardiogramSample

- (void)setHasClassificationRawValue:(BOOL)a3
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

- (void)setHasSymptomsStatusRawValue:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasPrivateSymptoms:(BOOL)a3
{
  if (a3)
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
  v5 = [(HKCodableElectrocardiogramSample *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  dateInterval = self->_dateInterval;
  if (dateInterval)
  {
    v5 = [(HKCodableDateInterval *)dateInterval dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"dateInterval"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_classificationRawValue];
    [v3 setObject:v6 forKey:@"classificationRawValue"];
  }

  averageHeartRate = self->_averageHeartRate;
  if (averageHeartRate)
  {
    v8 = [(HKCodableQuantity *)averageHeartRate dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"averageHeartRate"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_symptomsStatusRawValue];
    [v3 setObject:v10 forKey:@"symptomsStatusRawValue"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_privateSymptoms];
    [v3 setObject:v11 forKey:@"privateSymptoms"];
  }

  readingData = self->_readingData;
  if (readingData)
  {
    [v3 setObject:readingData forKey:@"readingData"];
  }

  if (*&self->_has)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_algorithmVersionRawValue];
    [v3 setObject:v13 forKey:@"algorithmVersionRawValue"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_dateInterval)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
    v4 = v6;
  }

  if (self->_averageHeartRate)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    PBDataWriterWriteInt64Field();
    v4 = v6;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt64Field();
    v4 = v6;
  }

  if (self->_readingData)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_dateInterval)
  {
    [v4 setDateInterval:?];
    v4 = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 2) = self->_classificationRawValue;
    *(v4 + 64) |= 2u;
  }

  if (self->_averageHeartRate)
  {
    [v6 setAverageHeartRate:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v4 + 4) = self->_symptomsStatusRawValue;
    *(v4 + 64) |= 8u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v4 + 3) = self->_privateSymptoms;
    *(v4 + 64) |= 4u;
  }

  if (self->_readingData)
  {
    [v6 setReadingData:?];
    v4 = v6;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_algorithmVersionRawValue;
    *(v4 + 64) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HKCodableDateInterval *)self->_dateInterval copyWithZone:a3];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_classificationRawValue;
    *(v5 + 64) |= 2u;
  }

  v8 = [(HKCodableQuantity *)self->_averageHeartRate copyWithZone:a3];
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

  v11 = [(NSData *)self->_readingData copyWithZone:a3];
  v12 = *(v5 + 56);
  *(v5 + 56) = v11;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_algorithmVersionRawValue;
    *(v5 + 64) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  dateInterval = self->_dateInterval;
  if (dateInterval | *(v4 + 6))
  {
    if (![(HKCodableDateInterval *)dateInterval isEqual:?])
    {
      goto LABEL_29;
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 64) & 2) == 0 || self->_classificationRawValue != *(v4 + 2))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 64) & 2) != 0)
  {
    goto LABEL_29;
  }

  averageHeartRate = self->_averageHeartRate;
  if (averageHeartRate | *(v4 + 5))
  {
    if (![(HKCodableQuantity *)averageHeartRate isEqual:?])
    {
      goto LABEL_29;
    }

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    if ((*(v4 + 64) & 8) == 0 || self->_symptomsStatusRawValue != *(v4 + 4))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 64) & 8) != 0)
  {
    goto LABEL_29;
  }

  if ((has & 4) != 0)
  {
    if ((*(v4 + 64) & 4) == 0 || self->_privateSymptoms != *(v4 + 3))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 64) & 4) != 0)
  {
    goto LABEL_29;
  }

  readingData = self->_readingData;
  if (readingData | *(v4 + 7))
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
  v9 = (*(v4 + 64) & 1) == 0;
  if (has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_algorithmVersionRawValue != *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  dateInterval = self->_dateInterval;
  v6 = v4[6];
  v10 = v4;
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

  v4 = v10;
LABEL_7:
  if ((v4[8] & 2) != 0)
  {
    self->_classificationRawValue = v4[2];
    *&self->_has |= 2u;
  }

  averageHeartRate = self->_averageHeartRate;
  v8 = v4[5];
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

  v4 = v10;
LABEL_15:
  v9 = *(v4 + 64);
  if ((v9 & 8) != 0)
  {
    self->_symptomsStatusRawValue = v4[4];
    *&self->_has |= 8u;
    v9 = *(v4 + 64);
  }

  if ((v9 & 4) != 0)
  {
    self->_privateSymptoms = v4[3];
    *&self->_has |= 4u;
  }

  if (v4[7])
  {
    averageHeartRate = [(HKCodableElectrocardiogramSample *)self setReadingData:?];
    v4 = v10;
  }

  if (v4[8])
  {
    self->_algorithmVersionRawValue = v4[1];
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66BB8](averageHeartRate, v4);
}

@end