@interface HKCodableChartBloodPressureDataSourceQueryData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableChartBloodPressureDataSourceQueryData

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableChartBloodPressureDataSourceQueryData;
  v4 = [(HKCodableChartBloodPressureDataSourceQueryData *)&v8 description];
  v5 = [(HKCodableChartBloodPressureDataSourceQueryData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  systolicStatisticsCollection = self->_systolicStatisticsCollection;
  if (systolicStatisticsCollection)
  {
    v5 = [(HKCodableStatisticsCollection *)systolicStatisticsCollection dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"systolicStatisticsCollection"];
  }

  diastolicStatisticsCollection = self->_diastolicStatisticsCollection;
  if (diastolicStatisticsCollection)
  {
    v7 = [(HKCodableStatisticsCollection *)diastolicStatisticsCollection dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"diastolicStatisticsCollection"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_systolicStatisticsCollection)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_diastolicStatisticsCollection)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_systolicStatisticsCollection)
  {
    [v4 setSystolicStatisticsCollection:?];
    v4 = v5;
  }

  if (self->_diastolicStatisticsCollection)
  {
    [v5 setDiastolicStatisticsCollection:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HKCodableStatisticsCollection *)self->_systolicStatisticsCollection copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(HKCodableStatisticsCollection *)self->_diastolicStatisticsCollection copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((systolicStatisticsCollection = self->_systolicStatisticsCollection, !(systolicStatisticsCollection | v4[2])) || -[HKCodableStatisticsCollection isEqual:](systolicStatisticsCollection, "isEqual:")))
  {
    diastolicStatisticsCollection = self->_diastolicStatisticsCollection;
    if (diastolicStatisticsCollection | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  systolicStatisticsCollection = self->_systolicStatisticsCollection;
  v6 = v4[2];
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  diastolicStatisticsCollection = self->_diastolicStatisticsCollection;
  v8 = v4[1];
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

  v4 = v9;
LABEL_13:

  MEMORY[0x1EEE66BB8](diastolicStatisticsCollection, v4);
}

@end