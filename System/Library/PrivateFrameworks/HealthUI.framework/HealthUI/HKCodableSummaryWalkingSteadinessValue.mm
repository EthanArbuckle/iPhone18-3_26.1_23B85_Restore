@interface HKCodableSummaryWalkingSteadinessValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableSummaryWalkingSteadinessValue

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSummaryWalkingSteadinessValue;
  v4 = [(HKCodableSummaryWalkingSteadinessValue *)&v8 description];
  v5 = [(HKCodableSummaryWalkingSteadinessValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  quantity = self->_quantity;
  if (quantity)
  {
    v5 = [(HKCodableSummaryQuantityValue *)quantity dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"quantity"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_classificationRawValue];
    [v3 setObject:v6 forKey:@"classificationRawValue"];
  }

  levelViewDataConfiguration = self->_levelViewDataConfiguration;
  if (levelViewDataConfiguration)
  {
    v8 = [(HKCodableLevelViewDataConfiguration *)levelViewDataConfiguration dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"levelViewDataConfiguration"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_quantity)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    v4 = v5;
  }

  if (self->_levelViewDataConfiguration)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_quantity)
  {
    [v4 setQuantity:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_classificationRawValue;
    *(v4 + 32) |= 1u;
  }

  if (self->_levelViewDataConfiguration)
  {
    [v5 setLevelViewDataConfiguration:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HKCodableSummaryQuantityValue *)self->_quantity copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_classificationRawValue;
    *(v5 + 32) |= 1u;
  }

  v8 = [(HKCodableLevelViewDataConfiguration *)self->_levelViewDataConfiguration copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  quantity = self->_quantity;
  if (quantity | *(v4 + 3))
  {
    if (![(HKCodableSummaryQuantityValue *)quantity isEqual:?])
    {
      goto LABEL_11;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_classificationRawValue != *(v4 + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  levelViewDataConfiguration = self->_levelViewDataConfiguration;
  if (levelViewDataConfiguration | *(v4 + 2))
  {
    v7 = [(HKCodableLevelViewDataConfiguration *)levelViewDataConfiguration isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_12:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(HKCodableSummaryQuantityValue *)self->_quantity hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_classificationRawValue;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(HKCodableLevelViewDataConfiguration *)self->_levelViewDataConfiguration hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  quantity = self->_quantity;
  v6 = v4[3];
  v9 = v4;
  if (quantity)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HKCodableSummaryQuantityValue *)quantity mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HKCodableSummaryWalkingSteadinessValue *)self setQuantity:?];
  }

  v4 = v9;
LABEL_7:
  if (v4[4])
  {
    self->_classificationRawValue = v4[1];
    *&self->_has |= 1u;
  }

  levelViewDataConfiguration = self->_levelViewDataConfiguration;
  v8 = v4[2];
  if (levelViewDataConfiguration)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    levelViewDataConfiguration = [(HKCodableLevelViewDataConfiguration *)levelViewDataConfiguration mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    levelViewDataConfiguration = [(HKCodableSummaryWalkingSteadinessValue *)self setLevelViewDataConfiguration:?];
  }

  v4 = v9;
LABEL_15:

  MEMORY[0x1EEE66BB8](levelViewDataConfiguration, v4);
}

@end