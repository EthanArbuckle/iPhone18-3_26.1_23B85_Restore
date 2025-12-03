@interface HKCodableSummaryWalkingSteadinessValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HKCodableSummaryWalkingSteadinessValue

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSummaryWalkingSteadinessValue;
  v4 = [(HKCodableSummaryWalkingSteadinessValue *)&v8 description];
  dictionaryRepresentation = [(HKCodableSummaryWalkingSteadinessValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  quantity = self->_quantity;
  if (quantity)
  {
    dictionaryRepresentation = [(HKCodableSummaryQuantityValue *)quantity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"quantity"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_classificationRawValue];
    [dictionary setObject:v6 forKey:@"classificationRawValue"];
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
  v5 = toCopy;
  if (self->_quantity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v5;
  }

  if (self->_levelViewDataConfiguration)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_quantity)
  {
    [toCopy setQuantity:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_classificationRawValue;
    *(toCopy + 32) |= 1u;
  }

  if (self->_levelViewDataConfiguration)
  {
    [v5 setLevelViewDataConfiguration:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HKCodableSummaryQuantityValue *)self->_quantity copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_classificationRawValue;
    *(v5 + 32) |= 1u;
  }

  v8 = [(HKCodableLevelViewDataConfiguration *)self->_levelViewDataConfiguration copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  quantity = self->_quantity;
  if (quantity | *(equalCopy + 3))
  {
    if (![(HKCodableSummaryQuantityValue *)quantity isEqual:?])
    {
      goto LABEL_11;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_classificationRawValue != *(equalCopy + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  levelViewDataConfiguration = self->_levelViewDataConfiguration;
  if (levelViewDataConfiguration | *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  quantity = self->_quantity;
  v6 = fromCopy[3];
  v9 = fromCopy;
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

  fromCopy = v9;
LABEL_7:
  if (fromCopy[4])
  {
    self->_classificationRawValue = fromCopy[1];
    *&self->_has |= 1u;
  }

  levelViewDataConfiguration = self->_levelViewDataConfiguration;
  v8 = fromCopy[2];
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

  fromCopy = v9;
LABEL_15:

  MEMORY[0x1EEE66BB8](levelViewDataConfiguration, fromCopy);
}

@end