@interface HKCodableChartInsulinValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasStartDate:(BOOL)date;
- (void)writeTo:(id)to;
@end

@implementation HKCodableChartInsulinValue

- (void)setHasStartDate:(BOOL)date
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
  v8.super_class = HKCodableChartInsulinValue;
  v4 = [(HKCodableChartInsulinValue *)&v8 description];
  dictionaryRepresentation = [(HKCodableChartInsulinValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startDate];
    [dictionary setObject:v5 forKey:@"startDate"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endDate];
    [dictionary setObject:v6 forKey:@"endDate"];
  }

  insulinQuantity = self->_insulinQuantity;
  if (insulinQuantity)
  {
    dictionaryRepresentation = [(HKCodableQuantity *)insulinQuantity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"insulinQuantity"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v6;
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }

  if (self->_insulinQuantity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[2] = *&self->_startDate;
    *(toCopy + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[1] = *&self->_endDate;
    *(toCopy + 32) |= 1u;
  }

  if (self->_insulinQuantity)
  {
    v6 = toCopy;
    [toCopy setInsulinQuantity:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_startDate;
    *(v5 + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_endDate;
    *(v5 + 32) |= 1u;
  }

  v8 = [(HKCodableQuantity *)self->_insulinQuantity copyWithZone:zone];
  v9 = v6[3];
  v6[3] = v8;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_startDate != *(equalCopy + 2))
    {
      goto LABEL_14;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_endDate != *(equalCopy + 1))
    {
      goto LABEL_14;
    }
  }

  else if (*(equalCopy + 32))
  {
    goto LABEL_14;
  }

  insulinQuantity = self->_insulinQuantity;
  if (insulinQuantity | *(equalCopy + 3))
  {
    v6 = [(HKCodableQuantity *)insulinQuantity isEqual:?];
  }

  else
  {
    v6 = 1;
  }

LABEL_15:

  return v6;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    startDate = self->_startDate;
    if (startDate < 0.0)
    {
      startDate = -startDate;
    }

    *v6.i64 = floor(startDate + 0.5);
    v10 = (startDate - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v11), v7, v6);
    v8 = 2654435761u * *v6.i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  if (*&self->_has)
  {
    endDate = self->_endDate;
    if (endDate < 0.0)
    {
      endDate = -endDate;
    }

    *v6.i64 = floor(endDate + 0.5);
    v14 = (endDate - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v12 = 2654435761u * *vbslq_s8(vnegq_f64(v15), v7, v6).i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v12 += v14;
      }
    }

    else
    {
      v12 -= fabs(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 ^ v8 ^ [(HKCodableQuantity *)self->_insulinQuantity hash:v3];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 32);
  if ((v6 & 2) != 0)
  {
    self->_startDate = fromCopy[2];
    *&self->_has |= 2u;
    v6 = *(fromCopy + 32);
  }

  if (v6)
  {
    self->_endDate = fromCopy[1];
    *&self->_has |= 1u;
  }

  insulinQuantity = self->_insulinQuantity;
  v8 = *(v5 + 3);
  if (insulinQuantity)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = v5;
    insulinQuantity = [(HKCodableQuantity *)insulinQuantity mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = v5;
    insulinQuantity = [(HKCodableChartInsulinValue *)self setInsulinQuantity:?];
  }

  v5 = v9;
LABEL_11:

  MEMORY[0x1EEE66BB8](insulinQuantity, v5);
}

@end