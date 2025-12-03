@interface HKCodableSummaryBloodPressureValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HKCodableSummaryBloodPressureValue

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSummaryBloodPressureValue;
  v4 = [(HKCodableSummaryBloodPressureValue *)&v8 description];
  dictionaryRepresentation = [(HKCodableSummaryBloodPressureValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  systolicValue = self->_systolicValue;
  if (systolicValue)
  {
    dictionaryRepresentation = [(HKCodableQuantity *)systolicValue dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"systolicValue"];
  }

  diastolicValue = self->_diastolicValue;
  if (diastolicValue)
  {
    dictionaryRepresentation2 = [(HKCodableQuantity *)diastolicValue dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"diastolicValue"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestampData];
    [dictionary setObject:v8 forKey:@"timestampData"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_systolicValue)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_diastolicValue)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_systolicValue)
  {
    [toCopy setSystolicValue:?];
    toCopy = v5;
  }

  if (self->_diastolicValue)
  {
    [v5 setDiastolicValue:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_timestampData;
    *(toCopy + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HKCodableQuantity *)self->_systolicValue copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(HKCodableQuantity *)self->_diastolicValue copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestampData;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  systolicValue = self->_systolicValue;
  if (systolicValue | *(equalCopy + 3))
  {
    if (![(HKCodableQuantity *)systolicValue isEqual:?])
    {
      goto LABEL_10;
    }
  }

  diastolicValue = self->_diastolicValue;
  if (diastolicValue | *(equalCopy + 2))
  {
    if (![(HKCodableQuantity *)diastolicValue isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(equalCopy + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) != 0 && self->_timestampData == *(equalCopy + 1))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  systolicValue = self->_systolicValue;
  v6 = *(fromCopy + 3);
  v9 = fromCopy;
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

  fromCopy = v9;
LABEL_7:
  diastolicValue = self->_diastolicValue;
  v8 = *(fromCopy + 2);
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

  fromCopy = v9;
LABEL_13:
  if (*(fromCopy + 32))
  {
    self->_timestampData = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66BB8](diastolicValue, fromCopy);
}

@end