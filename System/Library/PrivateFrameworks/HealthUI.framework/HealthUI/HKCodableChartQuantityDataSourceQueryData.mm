@interface HKCodableChartQuantityDataSourceQueryData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableChartQuantityDataSourceQueryData

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableChartQuantityDataSourceQueryData;
  v4 = [(HKCodableChartQuantityDataSourceQueryData *)&v8 description];
  v5 = [(HKCodableChartQuantityDataSourceQueryData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  statisticsCollection = self->_statisticsCollection;
  if (statisticsCollection)
  {
    v5 = [(HKCodableStatisticsCollection *)statisticsCollection dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"statisticsCollection"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (self->_statisticsCollection)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  statisticsCollection = self->_statisticsCollection;
  if (statisticsCollection)
  {
    [a3 setStatisticsCollection:statisticsCollection];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HKCodableStatisticsCollection *)self->_statisticsCollection copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    statisticsCollection = self->_statisticsCollection;
    if (statisticsCollection | v4[1])
    {
      v6 = [(HKCodableStatisticsCollection *)statisticsCollection isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  statisticsCollection = self->_statisticsCollection;
  v6 = v4[1];
  if (statisticsCollection)
  {
    if (v6)
    {
      [(HKCodableStatisticsCollection *)statisticsCollection mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(HKCodableChartQuantityDataSourceQueryData *)self setStatisticsCollection:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end