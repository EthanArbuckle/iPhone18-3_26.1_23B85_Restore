@interface HKCodableSummaryTrendChartViewModel
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableSummaryTrendChartViewModel

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSummaryTrendChartViewModel;
  v4 = [(HKCodableSummaryTrendChartViewModel *)&v8 description];
  v5 = [(HKCodableSummaryTrendChartViewModel *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  chartString = self->_chartString;
  if (chartString)
  {
    [v3 setObject:chartString forKey:@"chartString"];
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
    v10 = [(HKCodableDateInterval *)baselineDateInterval dictionaryRepresentation];
    [v4 setObject:v10 forKey:@"baselineDateInterval"];
  }

  baselineQuantity = self->_baselineQuantity;
  if (baselineQuantity)
  {
    v12 = [(HKCodableQuantity *)baselineQuantity dictionaryRepresentation];
    [v4 setObject:v12 forKey:@"baselineQuantity"];
  }

  changeDateInterval = self->_changeDateInterval;
  if (changeDateInterval)
  {
    v14 = [(HKCodableDateInterval *)changeDateInterval dictionaryRepresentation];
    [v4 setObject:v14 forKey:@"changeDateInterval"];
  }

  changeQuantity = self->_changeQuantity;
  if (changeQuantity)
  {
    v16 = [(HKCodableQuantity *)changeQuantity dictionaryRepresentation];
    [v4 setObject:v16 forKey:@"changeQuantity"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_chartString)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_changeTypeRawValue)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_objectTypeIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    v4 = v5;
  }

  if (self->_baselineDateInterval)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_baselineQuantity)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_changeDateInterval)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_changeQuantity)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_chartString)
  {
    [v4 setChartString:?];
    v4 = v5;
  }

  if (self->_changeTypeRawValue)
  {
    [v5 setChangeTypeRawValue:?];
    v4 = v5;
  }

  if (self->_objectTypeIdentifier)
  {
    [v5 setObjectTypeIdentifier:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_coveredTimeScopeRawValue;
    *(v4 + 72) |= 1u;
  }

  if (self->_baselineDateInterval)
  {
    [v5 setBaselineDateInterval:?];
    v4 = v5;
  }

  if (self->_baselineQuantity)
  {
    [v5 setBaselineQuantity:?];
    v4 = v5;
  }

  if (self->_changeDateInterval)
  {
    [v5 setChangeDateInterval:?];
    v4 = v5;
  }

  if (self->_changeQuantity)
  {
    [v5 setChangeQuantity:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_chartString copyWithZone:a3];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  v8 = [(NSString *)self->_changeTypeRawValue copyWithZone:a3];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  v10 = [(NSString *)self->_objectTypeIdentifier copyWithZone:a3];
  v11 = *(v5 + 64);
  *(v5 + 64) = v10;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_coveredTimeScopeRawValue;
    *(v5 + 72) |= 1u;
  }

  v12 = [(HKCodableDateInterval *)self->_baselineDateInterval copyWithZone:a3];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  v14 = [(HKCodableQuantity *)self->_baselineQuantity copyWithZone:a3];
  v15 = *(v5 + 24);
  *(v5 + 24) = v14;

  v16 = [(HKCodableDateInterval *)self->_changeDateInterval copyWithZone:a3];
  v17 = *(v5 + 32);
  *(v5 + 32) = v16;

  v18 = [(HKCodableQuantity *)self->_changeQuantity copyWithZone:a3];
  v19 = *(v5 + 40);
  *(v5 + 40) = v18;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  chartString = self->_chartString;
  if (chartString | *(v4 + 7))
  {
    if (![(NSString *)chartString isEqual:?])
    {
      goto LABEL_21;
    }
  }

  changeTypeRawValue = self->_changeTypeRawValue;
  if (changeTypeRawValue | *(v4 + 6))
  {
    if (![(NSString *)changeTypeRawValue isEqual:?])
    {
      goto LABEL_21;
    }
  }

  objectTypeIdentifier = self->_objectTypeIdentifier;
  if (objectTypeIdentifier | *(v4 + 8))
  {
    if (![(NSString *)objectTypeIdentifier isEqual:?])
    {
      goto LABEL_21;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 72) & 1) == 0 || self->_coveredTimeScopeRawValue != *(v4 + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 72))
  {
LABEL_21:
    v12 = 0;
    goto LABEL_22;
  }

  baselineDateInterval = self->_baselineDateInterval;
  if (baselineDateInterval | *(v4 + 2) && ![(HKCodableDateInterval *)baselineDateInterval isEqual:?])
  {
    goto LABEL_21;
  }

  baselineQuantity = self->_baselineQuantity;
  if (baselineQuantity | *(v4 + 3))
  {
    if (![(HKCodableQuantity *)baselineQuantity isEqual:?])
    {
      goto LABEL_21;
    }
  }

  changeDateInterval = self->_changeDateInterval;
  if (changeDateInterval | *(v4 + 4))
  {
    if (![(HKCodableDateInterval *)changeDateInterval isEqual:?])
    {
      goto LABEL_21;
    }
  }

  changeQuantity = self->_changeQuantity;
  if (changeQuantity | *(v4 + 5))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v13 = v4;
  if (v4[7])
  {
    [(HKCodableSummaryTrendChartViewModel *)self setChartString:?];
    v4 = v13;
  }

  if (v4[6])
  {
    [(HKCodableSummaryTrendChartViewModel *)self setChangeTypeRawValue:?];
    v4 = v13;
  }

  if (v4[8])
  {
    [(HKCodableSummaryTrendChartViewModel *)self setObjectTypeIdentifier:?];
    v4 = v13;
  }

  if (v4[9])
  {
    self->_coveredTimeScopeRawValue = v4[1];
    *&self->_has |= 1u;
  }

  baselineDateInterval = self->_baselineDateInterval;
  v6 = v4[2];
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

  v4 = v13;
LABEL_15:
  baselineQuantity = self->_baselineQuantity;
  v8 = v4[3];
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

  v4 = v13;
LABEL_21:
  changeDateInterval = self->_changeDateInterval;
  v10 = v4[4];
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

  v4 = v13;
LABEL_27:
  changeQuantity = self->_changeQuantity;
  v12 = v4[5];
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

  v4 = v13;
LABEL_33:

  MEMORY[0x1EEE66BB8](changeQuantity, v4);
}

@end