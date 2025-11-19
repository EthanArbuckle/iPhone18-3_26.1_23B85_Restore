@interface HKCodableSummaryUnderwaterDepthValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasValueClamped:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableSummaryUnderwaterDepthValue

- (void)setHasValueClamped:(BOOL)a3
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
  v8.super_class = HKCodableSummaryUnderwaterDepthValue;
  v4 = [(HKCodableSummaryUnderwaterDepthValue *)&v8 description];
  v5 = [(HKCodableSummaryUnderwaterDepthValue *)self dictionaryRepresentation];
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
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_valueClamped];
    [v3 setObject:v7 forKey:@"valueClamped"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_dateData];
    [v3 setObject:v8 forKey:@"dateData"];
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
  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v6;
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_value)
  {
    v6 = v4;
    [v4 setValue:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 24) = self->_valueClamped;
    *(v4 + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = *&self->_dateData;
    *(v4 + 28) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HKCodableQuantity *)self->_value copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_valueClamped;
    *(v5 + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_dateData;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  value = self->_value;
  if (value | *(v4 + 2))
  {
    if (![(HKCodableQuantity *)value isEqual:?])
    {
      goto LABEL_11;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0)
    {
      goto LABEL_11;
    }

    if (self->_valueClamped)
    {
      if ((*(v4 + 24) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else if (*(v4 + 24))
    {
      goto LABEL_11;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
    goto LABEL_11;
  }

  v6 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) != 0 && self->_dateData == *(v4 + 1))
    {
      v6 = 1;
      goto LABEL_12;
    }

LABEL_11:
    v6 = 0;
  }

LABEL_12:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(HKCodableQuantity *)self->_value hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_valueClamped;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    return v6 ^ v3 ^ v10;
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
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

  return v6 ^ v3 ^ v10;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  value = self->_value;
  v6 = *(v4 + 2);
  if (value)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v4;
    value = [(HKCodableQuantity *)value mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v4;
    value = [(HKCodableSummaryUnderwaterDepthValue *)self setValue:?];
  }

  v4 = v8;
LABEL_7:
  v7 = *(v4 + 28);
  if ((v7 & 2) != 0)
  {
    self->_valueClamped = *(v4 + 24);
    *&self->_has |= 2u;
    v7 = *(v4 + 28);
  }

  if (v7)
  {
    self->_dateData = *(v4 + 1);
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66BB8](value, v4);
}

@end