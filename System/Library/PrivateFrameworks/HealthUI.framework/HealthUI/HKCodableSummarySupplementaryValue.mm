@interface HKCodableSummarySupplementaryValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableSummarySupplementaryValue

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSummarySupplementaryValue;
  v4 = [(HKCodableSummarySupplementaryValue *)&v8 description];
  v5 = [(HKCodableSummarySupplementaryValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  dateInterval = self->_dateInterval;
  if (dateInterval)
  {
    v5 = [(HKCodableDateInterval *)dateInterval dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"dateInterval"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_dataCount];
    [v3 setObject:v6 forKey:@"dataCount"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_dateInterval)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_dateInterval)
  {
    v5 = v4;
    [v4 setDateInterval:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_dataCount;
    *(v4 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HKCodableDateInterval *)self->_dateInterval copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_dataCount;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  dateInterval = self->_dateInterval;
  if (dateInterval | *(v4 + 2))
  {
    if (![(HKCodableDateInterval *)dateInterval isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) != 0 && self->_dataCount == *(v4 + 1))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(HKCodableDateInterval *)self->_dateInterval hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_dataCount;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  dateInterval = self->_dateInterval;
  v6 = v4[2];
  if (dateInterval)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    dateInterval = [(HKCodableDateInterval *)dateInterval mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    dateInterval = [(HKCodableSummarySupplementaryValue *)self setDateInterval:?];
  }

  v4 = v7;
LABEL_7:
  if (v4[3])
  {
    self->_dataCount = v4[1];
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66BB8](dateInterval, v4);
}

@end