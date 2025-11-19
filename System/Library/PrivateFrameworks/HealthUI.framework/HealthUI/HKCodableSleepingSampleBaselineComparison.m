@interface HKCodableSleepingSampleBaselineComparison
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableSleepingSampleBaselineComparison

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSleepingSampleBaselineComparison;
  v4 = [(HKCodableSleepingSampleBaselineComparison *)&v8 description];
  v5 = [(HKCodableSleepingSampleBaselineComparison *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_dataType];
    [v3 setObject:v4 forKey:@"dataType"];
  }

  baseline = self->_baseline;
  if (baseline)
  {
    v6 = [(HKCodableSleepingSampleBaseline *)baseline dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"baseline"];
  }

  aggregate = self->_aggregate;
  if (aggregate)
  {
    v8 = [(HKCodableSleepingSampleAggregate *)aggregate dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"aggregate"];
  }

  availability = self->_availability;
  if (availability)
  {
    v10 = [(HKCodableSleepingSampleBaselineAvailability *)availability dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"availability"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    v4 = v5;
  }

  if (self->_baseline)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_aggregate)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_availability)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_dataType;
    *(v4 + 40) |= 1u;
  }

  v5 = v4;
  if (self->_baseline)
  {
    [v4 setBaseline:?];
    v4 = v5;
  }

  if (self->_aggregate)
  {
    [v5 setAggregate:?];
    v4 = v5;
  }

  if (self->_availability)
  {
    [v5 setAvailability:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_dataType;
    *(v5 + 40) |= 1u;
  }

  v7 = [(HKCodableSleepingSampleBaseline *)self->_baseline copyWithZone:a3];
  v8 = v6[4];
  v6[4] = v7;

  v9 = [(HKCodableSleepingSampleAggregate *)self->_aggregate copyWithZone:a3];
  v10 = v6[2];
  v6[2] = v9;

  v11 = [(HKCodableSleepingSampleBaselineAvailability *)self->_availability copyWithZone:a3];
  v12 = v6[3];
  v6[3] = v11;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_dataType != *(v4 + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  baseline = self->_baseline;
  if (baseline | *(v4 + 4) && ![(HKCodableSleepingSampleBaseline *)baseline isEqual:?])
  {
    goto LABEL_13;
  }

  aggregate = self->_aggregate;
  if (aggregate | *(v4 + 2))
  {
    if (![(HKCodableSleepingSampleAggregate *)aggregate isEqual:?])
    {
      goto LABEL_13;
    }
  }

  availability = self->_availability;
  if (availability | *(v4 + 3))
  {
    v8 = [(HKCodableSleepingSampleBaselineAvailability *)availability isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_14:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_dataType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(HKCodableSleepingSampleBaseline *)self->_baseline hash]^ v3;
  v5 = [(HKCodableSleepingSampleAggregate *)self->_aggregate hash];
  return v4 ^ v5 ^ [(HKCodableSleepingSampleBaselineAvailability *)self->_availability hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[5])
  {
    self->_dataType = v4[1];
    *&self->_has |= 1u;
  }

  baseline = self->_baseline;
  v7 = v5[4];
  v12 = v5;
  if (baseline)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(HKCodableSleepingSampleBaseline *)baseline mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(HKCodableSleepingSampleBaselineComparison *)self setBaseline:?];
  }

  v5 = v12;
LABEL_9:
  aggregate = self->_aggregate;
  v9 = v5[2];
  if (aggregate)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(HKCodableSleepingSampleAggregate *)aggregate mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(HKCodableSleepingSampleBaselineComparison *)self setAggregate:?];
  }

  v5 = v12;
LABEL_15:
  availability = self->_availability;
  v11 = v5[3];
  if (availability)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    availability = [(HKCodableSleepingSampleBaselineAvailability *)availability mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    availability = [(HKCodableSleepingSampleBaselineComparison *)self setAvailability:?];
  }

  v5 = v12;
LABEL_21:

  MEMORY[0x1EEE66BB8](availability, v5);
}

@end