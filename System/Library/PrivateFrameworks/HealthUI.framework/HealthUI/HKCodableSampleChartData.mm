@interface HKCodableSampleChartData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEndDate:(BOOL)date;
- (void)setHasInt64Value:(BOOL)value;
- (void)setHasStartDate:(BOOL)date;
- (void)writeTo:(id)to;
@end

@implementation HKCodableSampleChartData

- (void)setHasInt64Value:(BOOL)value
{
  if (value)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasStartDate:(BOOL)date
{
  if (date)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasEndDate:(BOOL)date
{
  if (date)
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
  v8.super_class = HKCodableSampleChartData;
  v4 = [(HKCodableSampleChartData *)&v8 description];
  dictionaryRepresentation = [(HKCodableSampleChartData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_dataType];
    [dictionary setObject:v11 forKey:@"dataType"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_int64Value];
  [dictionary setObject:v12 forKey:@"int64Value"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startDate];
  [dictionary setObject:v13 forKey:@"startDate"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endDate];
    [dictionary setObject:v5 forKey:@"endDate"];
  }

LABEL_6:
  metadataDictionary = self->_metadataDictionary;
  if (metadataDictionary)
  {
    dictionaryRepresentation = [(HKCodableMetadataDictionary *)metadataDictionary dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"metadataDictionary"];
  }

  quantity = self->_quantity;
  if (quantity)
  {
    dictionaryRepresentation2 = [(HKCodableQuantity *)quantity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"quantity"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if (has)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v6;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt64Field();
  toCopy = v6;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  PBDataWriterWriteDoubleField();
  toCopy = v6;
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }

LABEL_6:
  if (self->_metadataDictionary)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_quantity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_dataType;
    *(toCopy + 56) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  toCopy[3] = self->_int64Value;
  *(toCopy + 56) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  toCopy[4] = *&self->_startDate;
  *(toCopy + 56) |= 8u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    toCopy[2] = *&self->_endDate;
    *(toCopy + 56) |= 2u;
  }

LABEL_6:
  v6 = toCopy;
  if (self->_metadataDictionary)
  {
    [toCopy setMetadataDictionary:?];
    toCopy = v6;
  }

  if (self->_quantity)
  {
    [v6 setQuantity:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_dataType;
    *(v5 + 56) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 32) = self->_startDate;
      *(v5 + 56) |= 8u;
      if ((*&self->_has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 24) = self->_int64Value;
  *(v5 + 56) |= 4u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 2) != 0)
  {
LABEL_5:
    *(v5 + 16) = self->_endDate;
    *(v5 + 56) |= 2u;
  }

LABEL_6:
  v8 = [(HKCodableMetadataDictionary *)self->_metadataDictionary copyWithZone:zone];
  v9 = v6[5];
  v6[5] = v8;

  v10 = [(HKCodableQuantity *)self->_quantity copyWithZone:zone];
  v11 = v6[6];
  v6[6] = v10;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_dataType != *(equalCopy + 1))
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 56))
  {
LABEL_26:
    v7 = 0;
    goto LABEL_27;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 56) & 4) == 0 || self->_int64Value != *(equalCopy + 3))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 56) & 4) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 56) & 8) == 0 || self->_startDate != *(equalCopy + 4))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 56) & 8) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_endDate != *(equalCopy + 2))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 56) & 2) != 0)
  {
    goto LABEL_26;
  }

  metadataDictionary = self->_metadataDictionary;
  if (metadataDictionary | *(equalCopy + 5) && ![(HKCodableMetadataDictionary *)metadataDictionary isEqual:?])
  {
    goto LABEL_26;
  }

  quantity = self->_quantity;
  if (quantity | *(equalCopy + 6))
  {
    v7 = [(HKCodableQuantity *)quantity isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_27:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v5 = 2654435761 * self->_dataType;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v6 = 2654435761 * self->_int64Value;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  startDate = self->_startDate;
  if (startDate < 0.0)
  {
    startDate = -startDate;
  }

  *v2.i64 = floor(startDate + 0.5);
  v8 = (startDate - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v9), v3, v2);
  v10 = 2654435761u * *v2.i64;
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

LABEL_11:
  if ((*&self->_has & 2) != 0)
  {
    endDate = self->_endDate;
    if (endDate < 0.0)
    {
      endDate = -endDate;
    }

    *v2.i64 = floor(endDate + 0.5);
    v13 = (endDate - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v11 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v3, v2).i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabs(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  v15 = v6 ^ v5 ^ v10 ^ v11 ^ [(HKCodableMetadataDictionary *)self->_metadataDictionary hash];
  return v15 ^ [(HKCodableQuantity *)self->_quantity hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 56);
  if (v6)
  {
    self->_dataType = *(fromCopy + 1);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 56);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(fromCopy + 56) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_int64Value = *(fromCopy + 3);
  *&self->_has |= 4u;
  v6 = *(fromCopy + 56);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  self->_startDate = *(fromCopy + 4);
  *&self->_has |= 8u;
  if ((*(fromCopy + 56) & 2) != 0)
  {
LABEL_5:
    self->_endDate = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

LABEL_6:
  metadataDictionary = self->_metadataDictionary;
  v8 = v5[5];
  v11 = v5;
  if (metadataDictionary)
  {
    if (!v8)
    {
      goto LABEL_16;
    }

    [(HKCodableMetadataDictionary *)metadataDictionary mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_16;
    }

    [(HKCodableSampleChartData *)self setMetadataDictionary:?];
  }

  v5 = v11;
LABEL_16:
  quantity = self->_quantity;
  v10 = v5[6];
  if (quantity)
  {
    if (!v10)
    {
      goto LABEL_22;
    }

    quantity = [(HKCodableQuantity *)quantity mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_22;
    }

    quantity = [(HKCodableSampleChartData *)self setQuantity:?];
  }

  v5 = v11;
LABEL_22:

  MEMORY[0x1EEE66BB8](quantity, v5);
}

@end