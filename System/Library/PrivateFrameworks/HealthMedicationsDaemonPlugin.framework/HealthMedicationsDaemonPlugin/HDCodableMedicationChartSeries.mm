@interface HDCodableMedicationChartSeries
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableMedicationChartSeries

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableMedicationChartSeries;
  v4 = [(HDCodableMedicationChartSeries *)&v8 description];
  v5 = [(HDCodableMedicationChartSeries *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  monthData = self->_monthData;
  if (monthData)
  {
    [v3 setObject:monthData forKey:@"monthData"];
  }

  sixMonthsData = self->_sixMonthsData;
  if (sixMonthsData)
  {
    [v4 setObject:sixMonthsData forKey:@"sixMonthsData"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_monthData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_sixMonthsData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_monthData)
  {
    [v4 setMonthData:?];
    v4 = v5;
  }

  if (self->_sixMonthsData)
  {
    [v5 setSixMonthsData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_monthData copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_sixMonthsData copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((monthData = self->_monthData, !(monthData | v4[1])) || -[NSData isEqual:](monthData, "isEqual:")))
  {
    sixMonthsData = self->_sixMonthsData;
    if (sixMonthsData | v4[2])
    {
      v7 = [(NSData *)sixMonthsData isEqual:?];
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
  v5 = v4;
  if (v4[1])
  {
    [(HDCodableMedicationChartSeries *)self setMonthData:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(HDCodableMedicationChartSeries *)self setSixMonthsData:?];
    v4 = v5;
  }
}

@end