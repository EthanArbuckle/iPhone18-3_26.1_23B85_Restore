@interface HKCodableSummaryTrendChartViewModel
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HKCodableSummaryTrendChartViewModel

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSummaryTrendChartViewModel;
  v4 = [(HKCodableSummaryTrendChartViewModel *)&v8 description];
  dictionaryRepresentation = [(HKCodableSummaryTrendChartViewModel *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  chartString = self->_chartString;
  if (chartString)
  {
    [dictionary setObject:chartString forKey:@"chartString"];
  }

  changeTypeRawValue = self->_changeTypeRawValue;
  if (changeTypeRawValue)
  {
    [v4 setObject:changeTypeRawValue forKey:@"changeTypeRawValue"];
  }

  objectTypeIdentifier = self->_objectTypeIdentifier;
  if (objectTypeIdentifier)
  {
    [v4 setObject:objectTypeIdentifier forKey:@"objectTypeIdentifier"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_coveredTimeScopeRawValue];
    [v4 setObject:v8 forKey:@"coveredTimeScopeRawValue"];
  }

  baselineDateInterval = self->_baselineDateInterval;
  if (baselineDateInterval)
  {
    dictionaryRepresentation = [(HKCodableDateInterval *)baselineDateInterval dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"baselineDateInterval"];
  }

  baselineQuantity = self->_baselineQuantity;
  if (baselineQuantity)
  {
    dictionaryRepresentation2 = [(HKCodableQuantity *)baselineQuantity dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"baselineQuantity"];
  }

  changeDateInterval = self->_changeDateInterval;
  if (changeDateInterval)
  {
    dictionaryRepresentation3 = [(HKCodableDateInterval *)changeDateInterval dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"changeDateInterval"];
  }

  changeQuantity = self->_changeQuantity;
  if (changeQuantity)
  {
    dictionaryRepresentation4 = [(HKCodableQuantity *)changeQuantity dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation4 forKey:@"changeQuantity"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_chartString)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_changeTypeRawValue)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_objectTypeIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v5;
  }

  if (self->_baselineDateInterval)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_baselineQuantity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_changeDateInterval)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_changeQuantity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_chartString)
  {
    [toCopy setChartString:?];
    toCopy = v5;
  }

  if (self->_changeTypeRawValue)
  {
    [v5 setChangeTypeRawValue:?];
    toCopy = v5;
  }

  if (self->_objectTypeIdentifier)
  {
    [v5 setObjectTypeIdentifier:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_coveredTimeScopeRawValue;
    *(toCopy + 72) |= 1u;
  }

  if (self->_baselineDateInterval)
  {
    [v5 setBaselineDateInterval:?];
    toCopy = v5;
  }

  if (self->_baselineQuantity)
  {
    [v5 setBaselineQuantity:?];
    toCopy = v5;
  }

  if (self->_changeDateInterval)
  {
    [v5 setChangeDateInterval:?];
    toCopy = v5;
  }

  if (self->_changeQuantity)
  {
    [v5 setChangeQuantity:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_chartString copyWithZone:zone];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  v8 = [(NSString *)self->_changeTypeRawValue copyWithZone:zone];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  v10 = [(NSString *)self->_objectTypeIdentifier copyWithZone:zone];
  v11 = *(v5 + 64);
  *(v5 + 64) = v10;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_coveredTimeScopeRawValue;
    *(v5 + 72) |= 1u;
  }

  v12 = [(HKCodableDateInterval *)self->_baselineDateInterval copyWithZone:zone];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  v14 = [(HKCodableQuantity *)self->_baselineQuantity copyWithZone:zone];
  v15 = *(v5 + 24);
  *(v5 + 24) = v14;

  v16 = [(HKCodableDateInterval *)self->_changeDateInterval copyWithZone:zone];
  v17 = *(v5 + 32);
  *(v5 + 32) = v16;

  v18 = [(HKCodableQuantity *)self->_changeQuantity copyWithZone:zone];
  v19 = *(v5 + 40);
  *(v5 + 40) = v18;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  chartString = self->_chartString;
  if (chartString | *(equalCopy + 7))
  {
    if (![(NSString *)chartString isEqual:?])
    {
      goto LABEL_21;
    }
  }

  changeTypeRawValue = self->_changeTypeRawValue;
  if (changeTypeRawValue | *(equalCopy + 6))
  {
    if (![(NSString *)changeTypeRawValue isEqual:?])
    {
      goto LABEL_21;
    }
  }

  objectTypeIdentifier = self->_objectTypeIdentifier;
  if (objectTypeIdentifier | *(equalCopy + 8))
  {
    if (![(NSString *)objectTypeIdentifier isEqual:?])
    {
      goto LABEL_21;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 72) & 1) == 0 || self->_coveredTimeScopeRawValue != *(equalCopy + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 72))
  {
LABEL_21:
    v12 = 0;
    goto LABEL_22;
  }

  baselineDateInterval = self->_baselineDateInterval;
  if (baselineDateInterval | *(equalCopy + 2) && ![(HKCodableDateInterval *)baselineDateInterval isEqual:?])
  {
    goto LABEL_21;
  }

  baselineQuantity = self->_baselineQuantity;
  if (baselineQuantity | *(equalCopy + 3))
  {
    if (![(HKCodableQuantity *)baselineQuantity isEqual:?])
    {
      goto LABEL_21;
    }
  }

  changeDateInterval = self->_changeDateInterval;
  if (changeDateInterval | *(equalCopy + 4))
  {
    if (![(HKCodableDateInterval *)changeDateInterval isEqual:?])
    {
      goto LABEL_21;
    }
  }

  changeQuantity = self->_changeQuantity;
  if (changeQuantity | *(equalCopy + 5))
  {
    v12 = [(HKCodableQuantity *)changeQuantity isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_22:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_chartString hash];
  v4 = [(NSString *)self->_changeTypeRawValue hash];
  v5 = [(NSString *)self->_objectTypeIdentifier hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_coveredTimeScopeRawValue;
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 ^ v3 ^ v5 ^ v6;
  v8 = [(HKCodableDateInterval *)self->_baselineDateInterval hash];
  v9 = v8 ^ [(HKCodableQuantity *)self->_baselineQuantity hash];
  v10 = v7 ^ v9 ^ [(HKCodableDateInterval *)self->_changeDateInterval hash];
  return v10 ^ [(HKCodableQuantity *)self->_changeQuantity hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v13 = fromCopy;
  if (fromCopy[7])
  {
    [(HKCodableSummaryTrendChartViewModel *)self setChartString:?];
    fromCopy = v13;
  }

  if (fromCopy[6])
  {
    [(HKCodableSummaryTrendChartViewModel *)self setChangeTypeRawValue:?];
    fromCopy = v13;
  }

  if (fromCopy[8])
  {
    [(HKCodableSummaryTrendChartViewModel *)self setObjectTypeIdentifier:?];
    fromCopy = v13;
  }

  if (fromCopy[9])
  {
    self->_coveredTimeScopeRawValue = fromCopy[1];
    *&self->_has |= 1u;
  }

  baselineDateInterval = self->_baselineDateInterval;
  v6 = fromCopy[2];
  if (baselineDateInterval)
  {
    if (!v6)
    {
      goto LABEL_15;
    }

    [(HKCodableDateInterval *)baselineDateInterval mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_15;
    }

    [(HKCodableSummaryTrendChartViewModel *)self setBaselineDateInterval:?];
  }

  fromCopy = v13;
LABEL_15:
  baselineQuantity = self->_baselineQuantity;
  v8 = fromCopy[3];
  if (baselineQuantity)
  {
    if (!v8)
    {
      goto LABEL_21;
    }

    [(HKCodableQuantity *)baselineQuantity mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_21;
    }

    [(HKCodableSummaryTrendChartViewModel *)self setBaselineQuantity:?];
  }

  fromCopy = v13;
LABEL_21:
  changeDateInterval = self->_changeDateInterval;
  v10 = fromCopy[4];
  if (changeDateInterval)
  {
    if (!v10)
    {
      goto LABEL_27;
    }

    [(HKCodableDateInterval *)changeDateInterval mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_27;
    }

    [(HKCodableSummaryTrendChartViewModel *)self setChangeDateInterval:?];
  }

  fromCopy = v13;
LABEL_27:
  changeQuantity = self->_changeQuantity;
  v12 = fromCopy[5];
  if (changeQuantity)
  {
    if (!v12)
    {
      goto LABEL_33;
    }

    changeQuantity = [(HKCodableQuantity *)changeQuantity mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_33;
    }

    changeQuantity = [(HKCodableSummaryTrendChartViewModel *)self setChangeQuantity:?];
  }

  fromCopy = v13;
LABEL_33:

  MEMORY[0x1EEE66BB8](changeQuantity, fromCopy);
}

@end