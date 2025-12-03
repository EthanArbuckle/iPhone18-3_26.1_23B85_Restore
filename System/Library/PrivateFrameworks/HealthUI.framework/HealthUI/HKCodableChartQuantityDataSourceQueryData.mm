@interface HKCodableChartQuantityDataSourceQueryData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HKCodableChartQuantityDataSourceQueryData

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableChartQuantityDataSourceQueryData;
  v4 = [(HKCodableChartQuantityDataSourceQueryData *)&v8 description];
  dictionaryRepresentation = [(HKCodableChartQuantityDataSourceQueryData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  statisticsCollection = self->_statisticsCollection;
  if (statisticsCollection)
  {
    dictionaryRepresentation = [(HKCodableStatisticsCollection *)statisticsCollection dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"statisticsCollection"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (self->_statisticsCollection)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  statisticsCollection = self->_statisticsCollection;
  if (statisticsCollection)
  {
    [to setStatisticsCollection:statisticsCollection];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HKCodableStatisticsCollection *)self->_statisticsCollection copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    statisticsCollection = self->_statisticsCollection;
    if (statisticsCollection | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  statisticsCollection = self->_statisticsCollection;
  v6 = fromCopy[1];
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