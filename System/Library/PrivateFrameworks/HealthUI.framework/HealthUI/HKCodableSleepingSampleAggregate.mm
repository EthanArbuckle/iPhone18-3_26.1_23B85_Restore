@interface HKCodableSleepingSampleAggregate
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasMorningIndex:(BOOL)index;
- (void)writeTo:(id)to;
@end

@implementation HKCodableSleepingSampleAggregate

- (void)setHasMorningIndex:(BOOL)index
{
  if (index)
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
  v8.super_class = HKCodableSleepingSampleAggregate;
  v4 = [(HKCodableSleepingSampleAggregate *)&v8 description];
  dictionaryRepresentation = [(HKCodableSleepingSampleAggregate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_morningIndex];
    [dictionary setObject:v4 forKey:@"morningIndex"];
  }

  quantity = self->_quantity;
  if (quantity)
  {
    dictionaryRepresentation = [(HKCodableQuantity *)quantity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"quantity"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_latestSampleEndDate];
    [dictionary setObject:v7 forKey:@"latestSampleEndDate"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v5;
  }

  if (self->_quantity)
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
  if ((*&self->_has & 2) != 0)
  {
    toCopy[2] = self->_morningIndex;
    *(toCopy + 32) |= 2u;
  }

  if (self->_quantity)
  {
    v5 = toCopy;
    [toCopy setQuantity:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[1] = *&self->_latestSampleEndDate;
    *(toCopy + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_morningIndex;
    *(v5 + 32) |= 2u;
  }

  v7 = [(HKCodableQuantity *)self->_quantity copyWithZone:zone];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_latestSampleEndDate;
    *(v6 + 32) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_morningIndex != *(equalCopy + 2))
    {
      goto LABEL_14;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
    goto LABEL_14;
  }

  quantity = self->_quantity;
  if (quantity | *(equalCopy + 3))
  {
    if (![(HKCodableQuantity *)quantity isEqual:?])
    {
LABEL_14:
      v7 = 0;
      goto LABEL_15;
    }

    has = self->_has;
  }

  v7 = (*(equalCopy + 32) & 1) == 0;
  if (has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_latestSampleEndDate != *(equalCopy + 1))
    {
      goto LABEL_14;
    }

    v7 = 1;
  }

LABEL_15:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_morningIndex;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(HKCodableQuantity *)self->_quantity hash];
  if (*&self->_has)
  {
    latestSampleEndDate = self->_latestSampleEndDate;
    if (latestSampleEndDate < 0.0)
    {
      latestSampleEndDate = -latestSampleEndDate;
    }

    *v5.i64 = floor(latestSampleEndDate + 0.5);
    v9 = (latestSampleEndDate - *v5.i64) * 1.84467441e19;
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
  v5 = fromCopy;
  if ((fromCopy[4] & 2) != 0)
  {
    self->_morningIndex = fromCopy[2];
    *&self->_has |= 2u;
  }

  quantity = self->_quantity;
  v7 = v5[3];
  if (quantity)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = v5;
    quantity = [(HKCodableQuantity *)quantity mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = v5;
    quantity = [(HKCodableSleepingSampleAggregate *)self setQuantity:?];
  }

  v5 = v8;
LABEL_9:
  if (v5[4])
  {
    self->_latestSampleEndDate = v5[1];
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66BB8](quantity, v5);
}

@end