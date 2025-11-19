@interface HDCodableMedicalDateInterval
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableMedicalDateInterval

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableMedicalDateInterval;
  v4 = [(HDCodableMedicalDateInterval *)&v8 description];
  v5 = [(HDCodableMedicalDateInterval *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  startDate = self->_startDate;
  if (startDate)
  {
    v5 = [(HDCodableMedicalDate *)startDate dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"startDate"];
  }

  endDate = self->_endDate;
  if (endDate)
  {
    v7 = [(HDCodableMedicalDate *)endDate dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"endDate"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_startDate)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_endDate)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_startDate)
  {
    [v4 setStartDate:?];
    v4 = v5;
  }

  if (self->_endDate)
  {
    [v5 setEndDate:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HDCodableMedicalDate *)self->_startDate copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(HDCodableMedicalDate *)self->_endDate copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((startDate = self->_startDate, !(startDate | v4[2])) || -[HDCodableMedicalDate isEqual:](startDate, "isEqual:")))
  {
    endDate = self->_endDate;
    if (endDate | v4[1])
    {
      v7 = [(HDCodableMedicalDate *)endDate isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  startDate = self->_startDate;
  v6 = v4[2];
  v9 = v4;
  if (startDate)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HDCodableMedicalDate *)startDate mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HDCodableMedicalDateInterval *)self setStartDate:?];
  }

  v4 = v9;
LABEL_7:
  endDate = self->_endDate;
  v8 = v4[1];
  if (endDate)
  {
    if (v8)
    {
      [(HDCodableMedicalDate *)endDate mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(HDCodableMedicalDateInterval *)self setEndDate:?];
  }

  MEMORY[0x2821F96F8]();
}

@end