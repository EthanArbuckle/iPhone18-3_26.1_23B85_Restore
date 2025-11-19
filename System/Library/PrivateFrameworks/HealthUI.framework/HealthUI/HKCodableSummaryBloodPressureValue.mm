@interface HKCodableSummaryBloodPressureValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableSummaryBloodPressureValue

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSummaryBloodPressureValue;
  v4 = [(HKCodableSummaryBloodPressureValue *)&v8 description];
  v5 = [(HKCodableSummaryBloodPressureValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  systolicValue = self->_systolicValue;
  if (systolicValue)
  {
    v5 = [(HKCodableQuantity *)systolicValue dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"systolicValue"];
  }

  diastolicValue = self->_diastolicValue;
  if (diastolicValue)
  {
    v7 = [(HKCodableQuantity *)diastolicValue dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"diastolicValue"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestampData];
    [v3 setObject:v8 forKey:@"timestampData"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_systolicValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_diastolicValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_systolicValue)
  {
    [v4 setSystolicValue:?];
    v4 = v5;
  }

  if (self->_diastolicValue)
  {
    [v5 setDiastolicValue:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_timestampData;
    *(v4 + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HKCodableQuantity *)self->_systolicValue copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(HKCodableQuantity *)self->_diastolicValue copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestampData;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  systolicValue = self->_systolicValue;
  if (systolicValue | *(v4 + 3))
  {
    if (![(HKCodableQuantity *)systolicValue isEqual:?])
    {
      goto LABEL_10;
    }
  }

  diastolicValue = self->_diastolicValue;
  if (diastolicValue | *(v4 + 2))
  {
    if (![(HKCodableQuantity *)diastolicValue isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) != 0 && self->_timestampData == *(v4 + 1))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(HKCodableQuantity *)self->_systolicValue hash];
  v4 = [(HKCodableQuantity *)self->_diastolicValue hash];
  if (*&self->_has)
  {
    timestampData = self->_timestampData;
    if (timestampData < 0.0)
    {
      timestampData = -timestampData;
    }

    *v5.i64 = floor(timestampData + 0.5);
    v9 = (timestampData - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  systolicValue = self->_systolicValue;
  v6 = *(v4 + 3);
  v9 = v4;
  if (systolicValue)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HKCodableQuantity *)systolicValue mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HKCodableSummaryBloodPressureValue *)self setSystolicValue:?];
  }

  v4 = v9;
LABEL_7:
  diastolicValue = self->_diastolicValue;
  v8 = *(v4 + 2);
  if (diastolicValue)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    diastolicValue = [(HKCodableQuantity *)diastolicValue mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    diastolicValue = [(HKCodableSummaryBloodPressureValue *)self setDiastolicValue:?];
  }

  v4 = v9;
LABEL_13:
  if (*(v4 + 32))
  {
    self->_timestampData = *(v4 + 1);
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66BB8](diastolicValue, v4);
}

@end