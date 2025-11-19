@interface HKCodableSummaryVisualizationDataPresencePoint
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableSummaryVisualizationDataPresencePoint

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSummaryVisualizationDataPresencePoint;
  v4 = [(HKCodableSummaryVisualizationDataPresencePoint *)&v8 description];
  v5 = [(HKCodableSummaryVisualizationDataPresencePoint *)self dictionaryRepresentation];
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
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_dataPresent];
    [v3 setObject:v6 forKey:@"dataPresent"];
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
    PBDataWriterWriteBOOLField();
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
    v4[16] = self->_dataPresent;
    v4[20] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HKCodableDateInterval *)self->_dateInterval copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_dataPresent;
    *(v5 + 20) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  dateInterval = self->_dateInterval;
  if (dateInterval | *(v4 + 1))
  {
    if (![(HKCodableDateInterval *)dateInterval isEqual:?])
    {
      goto LABEL_6;
    }
  }

  v6 = (*(v4 + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0)
    {
LABEL_6:
      v6 = 0;
      goto LABEL_7;
    }

    if (self->_dataPresent)
    {
      if ((*(v4 + 16) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (*(v4 + 16))
    {
      goto LABEL_6;
    }

    v6 = 1;
  }

LABEL_7:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(HKCodableDateInterval *)self->_dateInterval hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_dataPresent;
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
  v6 = *(v4 + 1);
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
    dateInterval = [(HKCodableSummaryVisualizationDataPresencePoint *)self setDateInterval:?];
  }

  v4 = v7;
LABEL_7:
  if (*(v4 + 20))
  {
    self->_dataPresent = *(v4 + 16);
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66BB8](dateInterval, v4);
}

@end