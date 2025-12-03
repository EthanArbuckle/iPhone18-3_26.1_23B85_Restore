@interface HKCodableTimePeriodData
+ (id)timePeriodDataWithCodableData:(id)data;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HKCodableTimePeriodData

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableTimePeriodData;
  v4 = [(HKCodableTimePeriodData *)&v8 description];
  dictionaryRepresentation = [(HKCodableTimePeriodData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dateInterval = self->_dateInterval;
  if (dateInterval)
  {
    dictionaryRepresentation = [(HKCodableDateInterval *)dateInterval dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"dateInterval"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_total];
    [dictionary setObject:v6 forKey:@"total"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_dateInterval)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_dateInterval)
  {
    v5 = toCopy;
    [toCopy setDateInterval:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_total;
    *(toCopy + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HKCodableDateInterval *)self->_dateInterval copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_total;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  dateInterval = self->_dateInterval;
  if (dateInterval | *(equalCopy + 2))
  {
    if (![(HKCodableDateInterval *)dateInterval isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) != 0 && self->_total == *(equalCopy + 1))
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
    v4 = 2654435761 * self->_total;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  dateInterval = self->_dateInterval;
  v6 = fromCopy[2];
  if (dateInterval)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    dateInterval = [(HKCodableDateInterval *)dateInterval mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    dateInterval = [(HKCodableTimePeriodData *)self setDateInterval:?];
  }

  fromCopy = v7;
LABEL_7:
  if (fromCopy[3])
  {
    self->_total = fromCopy[1];
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66BB8](dateInterval, fromCopy);
}

+ (id)timePeriodDataWithCodableData:(id)data
{
  v22 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = dataCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "total", v17)}];
        v12 = MEMORY[0x1E696AB80];
        dateInterval = [v10 dateInterval];
        v14 = [v12 hk_dateIntervalWithCodableDateInterval:dateInterval sourceTimeZone:0];

        [v4 setObject:v11 forKeyedSubscript:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = [v4 copy];

  return v15;
}

@end