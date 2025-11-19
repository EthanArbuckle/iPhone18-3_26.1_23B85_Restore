@interface HKCodableSummaryCardioFitnessValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDateData:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableSummaryCardioFitnessValue

- (void)setHasDateData:(BOOL)a3
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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSummaryCardioFitnessValue;
  v4 = [(HKCodableSummaryCardioFitnessValue *)&v8 description];
  v5 = [(HKCodableSummaryCardioFitnessValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  value = self->_value;
  if (value)
  {
    v5 = [(HKCodableQuantity *)value dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"value"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_classificationRawValue];
    [v3 setObject:v7 forKey:@"classificationRawValue"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_dateData];
    [v3 setObject:v8 forKey:@"dateData"];
  }

  levelViewDataConfiguration = self->_levelViewDataConfiguration;
  if (levelViewDataConfiguration)
  {
    v10 = [(HKCodableLevelViewDataConfiguration *)levelViewDataConfiguration dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"levelViewDataConfiguration"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt64Field();
    v4 = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }

  if (self->_levelViewDataConfiguration)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_value)
  {
    [v4 setValue:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = self->_classificationRawValue;
    *(v4 + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 2) = *&self->_dateData;
    *(v4 + 40) |= 2u;
  }

  if (self->_levelViewDataConfiguration)
  {
    [v6 setLevelViewDataConfiguration:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HKCodableQuantity *)self->_value copyWithZone:a3];
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

  v9 = [(HKCodableLevelViewDataConfiguration *)self->_levelViewDataConfiguration copyWithZone:a3];
  v10 = *(v5 + 24);
  *(v5 + 24) = v9;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  value = self->_value;
  if (value | *(v4 + 4))
  {
    if (![(HKCodableQuantity *)value isEqual:?])
    {
      goto LABEL_16;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_classificationRawValue != *(v4 + 1))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_16:
    v7 = 0;
    goto LABEL_17;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_dateData != *(v4 + 2))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_16;
  }

  levelViewDataConfiguration = self->_levelViewDataConfiguration;
  if (levelViewDataConfiguration | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  value = self->_value;
  v6 = *(v4 + 4);
  v10 = v4;
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

  v4 = v10;
LABEL_7:
  v7 = *(v4 + 40);
  if (v7)
  {
    self->_classificationRawValue = *(v4 + 1);
    *&self->_has |= 1u;
    v7 = *(v4 + 40);
  }

  if ((v7 & 2) != 0)
  {
    self->_dateData = *(v4 + 2);
    *&self->_has |= 2u;
  }

  levelViewDataConfiguration = self->_levelViewDataConfiguration;
  v9 = *(v4 + 3);
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