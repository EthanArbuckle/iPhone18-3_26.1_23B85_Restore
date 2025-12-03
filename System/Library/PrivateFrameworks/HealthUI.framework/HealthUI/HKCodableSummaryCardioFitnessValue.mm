@interface HKCodableSummaryCardioFitnessValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDateData:(BOOL)data;
- (void)writeTo:(id)to;
@end

@implementation HKCodableSummaryCardioFitnessValue

- (void)setHasDateData:(BOOL)data
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
  v8.super_class = HKCodableSummaryCardioFitnessValue;
  v4 = [(HKCodableSummaryCardioFitnessValue *)&v8 description];
  dictionaryRepresentation = [(HKCodableSummaryCardioFitnessValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  value = self->_value;
  if (value)
  {
    dictionaryRepresentation = [(HKCodableQuantity *)value dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"value"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_classificationRawValue];
    [dictionary setObject:v7 forKey:@"classificationRawValue"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_dateData];
    [dictionary setObject:v8 forKey:@"dateData"];
  }

  levelViewDataConfiguration = self->_levelViewDataConfiguration;
  if (levelViewDataConfiguration)
  {
    dictionaryRepresentation2 = [(HKCodableLevelViewDataConfiguration *)levelViewDataConfiguration dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"levelViewDataConfiguration"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }

  if (self->_levelViewDataConfiguration)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_value)
  {
    [toCopy setValue:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_classificationRawValue;
    *(toCopy + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 2) = *&self->_dateData;
    *(toCopy + 40) |= 2u;
  }

  if (self->_levelViewDataConfiguration)
  {
    [v6 setLevelViewDataConfiguration:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HKCodableQuantity *)self->_value copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_classificationRawValue;
    *(v5 + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_dateData;
    *(v5 + 40) |= 2u;
  }

  v9 = [(HKCodableLevelViewDataConfiguration *)self->_levelViewDataConfiguration copyWithZone:zone];
  v10 = *(v5 + 24);
  *(v5 + 24) = v9;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  value = self->_value;
  if (value | *(equalCopy + 4))
  {
    if (![(HKCodableQuantity *)value isEqual:?])
    {
      goto LABEL_16;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_classificationRawValue != *(equalCopy + 1))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_16:
    v7 = 0;
    goto LABEL_17;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_dateData != *(equalCopy + 2))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
    goto LABEL_16;
  }

  levelViewDataConfiguration = self->_levelViewDataConfiguration;
  if (levelViewDataConfiguration | *(equalCopy + 3))
  {
    v7 = [(HKCodableLevelViewDataConfiguration *)levelViewDataConfiguration isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_17:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(HKCodableQuantity *)self->_value hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_classificationRawValue;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    return v6 ^ v3 ^ v10 ^ [(HKCodableLevelViewDataConfiguration *)self->_levelViewDataConfiguration hash];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  dateData = self->_dateData;
  if (dateData < 0.0)
  {
    dateData = -dateData;
  }

  *v4.i64 = floor(dateData + 0.5);
  v8 = (dateData - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

  return v6 ^ v3 ^ v10 ^ [(HKCodableLevelViewDataConfiguration *)self->_levelViewDataConfiguration hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  value = self->_value;
  v6 = *(fromCopy + 4);
  v10 = fromCopy;
  if (value)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HKCodableQuantity *)value mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HKCodableSummaryCardioFitnessValue *)self setValue:?];
  }

  fromCopy = v10;
LABEL_7:
  v7 = *(fromCopy + 40);
  if (v7)
  {
    self->_classificationRawValue = *(fromCopy + 1);
    *&self->_has |= 1u;
    v7 = *(fromCopy + 40);
  }

  if ((v7 & 2) != 0)
  {
    self->_dateData = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

  levelViewDataConfiguration = self->_levelViewDataConfiguration;
  v9 = *(fromCopy + 3);
  if (levelViewDataConfiguration)
  {
    if (v9)
    {
      [(HKCodableLevelViewDataConfiguration *)levelViewDataConfiguration mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(HKCodableSummaryCardioFitnessValue *)self setLevelViewDataConfiguration:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end