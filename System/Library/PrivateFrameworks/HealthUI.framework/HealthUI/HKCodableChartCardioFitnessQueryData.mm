@interface HKCodableChartCardioFitnessQueryData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasBiologicalSex:(BOOL)a3;
- (void)setHasCardioFitnessLevelEnabled:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableChartCardioFitnessQueryData

- (void)setHasCardioFitnessLevelEnabled:(BOOL)a3
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

- (void)setHasBiologicalSex:(BOOL)a3
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
  v8.super_class = HKCodableChartCardioFitnessQueryData;
  v4 = [(HKCodableChartCardioFitnessQueryData *)&v8 description];
  v5 = [(HKCodableChartCardioFitnessQueryData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_cardioFitnessLevelEnabled];
    [v3 setObject:v9 forKey:@"cardioFitnessLevelEnabled"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_biologicalSex];
  [v3 setObject:v10 forKey:@"biologicalSex"];

  if (*&self->_has)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_age];
    [v3 setObject:v5 forKey:@"age"];
  }

LABEL_5:
  quantityData = self->_quantityData;
  if (quantityData)
  {
    v7 = [(HKCodableChartQuantityDataSourceQueryData *)quantityData dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"quantityData"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt64Field();
    v4 = v6;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt64Field();
  v4 = v6;
  if (*&self->_has)
  {
LABEL_4:
    PBDataWriterWriteInt64Field();
    v4 = v6;
  }

LABEL_5:
  if (self->_quantityData)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[3] = self->_cardioFitnessLevelEnabled;
    *(v4 + 40) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v4[2] = self->_biologicalSex;
  *(v4 + 40) |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    v4[1] = self->_age;
    *(v4 + 40) |= 1u;
  }

LABEL_5:
  if (self->_quantityData)
  {
    v6 = v4;
    [v4 setQuantityData:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 16) = self->_biologicalSex;
    *(v5 + 40) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 24) = self->_cardioFitnessLevelEnabled;
  *(v5 + 40) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    *(v5 + 8) = self->_age;
    *(v5 + 40) |= 1u;
  }

LABEL_5:
  v8 = [(HKCodableChartQuantityDataSourceQueryData *)self->_quantityData copyWithZone:a3];
  v9 = v6[4];
  v6[4] = v8;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0 || self->_cardioFitnessLevelEnabled != *(v4 + 3))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 40) & 4) != 0)
  {
LABEL_19:
    v6 = 0;
    goto LABEL_20;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_biologicalSex != *(v4 + 2))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_age != *(v4 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_19;
  }

  quantityData = self->_quantityData;
  if (quantityData | *(v4 + 4))
  {
    v6 = [(HKCodableChartQuantityDataSourceQueryData *)quantityData isEqual:?];
  }

  else
  {
    v6 = 1;
  }

LABEL_20:

  return v6;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    return v7 ^ v6 ^ v8 ^ [(HKCodableChartQuantityDataSourceQueryData *)self->_quantityData hash:v3];
  }

  v6 = 2654435761 * self->_cardioFitnessLevelEnabled;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = 2654435761 * self->_biologicalSex;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = 2654435761 * self->_age;
  return v7 ^ v6 ^ v8 ^ [(HKCodableChartQuantityDataSourceQueryData *)self->_quantityData hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 40);
  if ((v6 & 4) != 0)
  {
    self->_cardioFitnessLevelEnabled = v4[3];
    *&self->_has |= 4u;
    v6 = *(v4 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v4[5] & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_biologicalSex = v4[2];
  *&self->_has |= 2u;
  if (v4[5])
  {
LABEL_4:
    self->_age = v4[1];
    *&self->_has |= 1u;
  }

LABEL_5:
  quantityData = self->_quantityData;
  v8 = v5[4];
  if (quantityData)
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = v5;
    quantityData = [(HKCodableChartQuantityDataSourceQueryData *)quantityData mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = v5;
    quantityData = [(HKCodableChartCardioFitnessQueryData *)self setQuantityData:?];
  }

  v5 = v9;
LABEL_14:

  MEMORY[0x1EEE66BB8](quantityData, v5);
}

@end