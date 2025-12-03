@interface HKCodableChartBloodPressureDataSourceQueryData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HKCodableChartBloodPressureDataSourceQueryData

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableChartBloodPressureDataSourceQueryData;
  v4 = [(HKCodableChartBloodPressureDataSourceQueryData *)&v8 description];
  dictionaryRepresentation = [(HKCodableChartBloodPressureDataSourceQueryData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  systolicStatisticsCollection = self->_systolicStatisticsCollection;
  if (systolicStatisticsCollection)
  {
    dictionaryRepresentation = [(HKCodableStatisticsCollection *)systolicStatisticsCollection dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"systolicStatisticsCollection"];
  }

  diastolicStatisticsCollection = self->_diastolicStatisticsCollection;
  if (diastolicStatisticsCollection)
  {
    dictionaryRepresentation2 = [(HKCodableStatisticsCollection *)diastolicStatisticsCollection dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"diastolicStatisticsCollection"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_systolicStatisticsCollection)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_diastolicStatisticsCollection)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_systolicStatisticsCollection)
  {
    [toCopy setSystolicStatisticsCollection:?];
    toCopy = v5;
  }

  if (self->_diastolicStatisticsCollection)
  {
    [v5 setDiastolicStatisticsCollection:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HKCodableStatisticsCollection *)self->_systolicStatisticsCollection copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(HKCodableStatisticsCollection *)self->_diastolicStatisticsCollection copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((systolicStatisticsCollection = self->_systolicStatisticsCollection, !(systolicStatisticsCollection | equalCopy[2])) || -[HKCodableStatisticsCollection isEqual:](systolicStatisticsCollection, "isEqual:")))
  {
    diastolicStatisticsCollection = self->_diastolicStatisticsCollection;
    if (diastolicStatisticsCollection | equalCopy[1])
    {
      v7 = [(HKCodableStatisticsCollection *)diastolicStatisticsCollection isEqual:?];
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  systolicStatisticsCollection = self->_systolicStatisticsCollection;
  v6 = fromCopy[2];
  v9 = fromCopy;
  if (systolicStatisticsCollection)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HKCodableStatisticsCollection *)systolicStatisticsCollection mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HKCodableChartBloodPressureDataSourceQueryData *)self setSystolicStatisticsCollection:?];
  }

  fromCopy = v9;
LABEL_7:
  diastolicStatisticsCollection = self->_diastolicStatisticsCollection;
  v8 = fromCopy[1];
  if (diastolicStatisticsCollection)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    diastolicStatisticsCollection = [(HKCodableStatisticsCollection *)diastolicStatisticsCollection mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    diastolicStatisticsCollection = [(HKCodableChartBloodPressureDataSourceQueryData *)self setDiastolicStatisticsCollection:?];
  }

  fromCopy = v9;
LABEL_13:

  MEMORY[0x1EEE66BB8](diastolicStatisticsCollection, fromCopy);
}

@end