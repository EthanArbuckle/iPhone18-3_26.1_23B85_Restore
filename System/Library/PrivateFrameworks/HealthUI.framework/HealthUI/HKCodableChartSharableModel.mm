@interface HKCodableChartSharableModel
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasMinimumSupportedVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation HKCodableChartSharableModel

- (void)setHasMinimumSupportedVersion:(BOOL)version
{
  if (version)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableChartSharableModel;
  v4 = [(HKCodableChartSharableModel *)&v8 description];
  dictionaryRepresentation = [(HKCodableChartSharableModel *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  monthData = self->_monthData;
  if (monthData)
  {
    dictionaryRepresentation = [(HKCodableChartDataSourceQueryData *)monthData dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"monthData"];
  }

  monthDateInterval = self->_monthDateInterval;
  if (monthDateInterval)
  {
    dictionaryRepresentation2 = [(HKCodableDateInterval *)monthDateInterval dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"monthDateInterval"];
  }

  sixMonthData = self->_sixMonthData;
  if (sixMonthData)
  {
    dictionaryRepresentation3 = [(HKCodableChartDataSourceQueryData *)sixMonthData dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"sixMonthData"];
  }

  sixMonthDateInterval = self->_sixMonthDateInterval;
  if (sixMonthDateInterval)
  {
    dictionaryRepresentation4 = [(HKCodableDateInterval *)sixMonthDateInterval dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"sixMonthDateInterval"];
  }

  has = self->_has;
  if (has)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_latestSupportedVersion];
    [dictionary setObject:v13 forKey:@"latestSupportedVersion"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_minimumSupportedVersion];
    [dictionary setObject:v14 forKey:@"minimumSupportedVersion"];
  }

  weekData = self->_weekData;
  if (weekData)
  {
    dictionaryRepresentation5 = [(HKCodableChartDataSourceQueryData *)weekData dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"weekData"];
  }

  weekDateInterval = self->_weekDateInterval;
  if (weekDateInterval)
  {
    dictionaryRepresentation6 = [(HKCodableDateInterval *)weekDateInterval dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"weekDateInterval"];
  }

  dayData = self->_dayData;
  if (dayData)
  {
    dictionaryRepresentation7 = [(HKCodableChartDataSourceQueryData *)dayData dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation7 forKey:@"dayData"];
  }

  dayDateInterval = self->_dayDateInterval;
  if (dayDateInterval)
  {
    dictionaryRepresentation8 = [(HKCodableDateInterval *)dayDateInterval dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation8 forKey:@"dayDateInterval"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_monthData)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_monthDateInterval)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_sixMonthData)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_sixMonthDateInterval)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v6;
  }

  if (self->_weekData)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_weekDateInterval)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_dayData)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_dayDateInterval)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_monthData)
  {
    [toCopy setMonthData:?];
    toCopy = v6;
  }

  if (self->_monthDateInterval)
  {
    [v6 setMonthDateInterval:?];
    toCopy = v6;
  }

  if (self->_sixMonthData)
  {
    [v6 setSixMonthData:?];
    toCopy = v6;
  }

  if (self->_sixMonthDateInterval)
  {
    [v6 setSixMonthDateInterval:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_latestSupportedVersion;
    *(toCopy + 88) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 2) = self->_minimumSupportedVersion;
    *(toCopy + 88) |= 2u;
  }

  if (self->_weekData)
  {
    [v6 setWeekData:?];
    toCopy = v6;
  }

  if (self->_weekDateInterval)
  {
    [v6 setWeekDateInterval:?];
    toCopy = v6;
  }

  if (self->_dayData)
  {
    [v6 setDayData:?];
    toCopy = v6;
  }

  if (self->_dayDateInterval)
  {
    [v6 setDayDateInterval:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HKCodableChartDataSourceQueryData *)self->_monthData copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(HKCodableDateInterval *)self->_monthDateInterval copyWithZone:zone];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  v10 = [(HKCodableChartDataSourceQueryData *)self->_sixMonthData copyWithZone:zone];
  v11 = *(v5 + 56);
  *(v5 + 56) = v10;

  v12 = [(HKCodableDateInterval *)self->_sixMonthDateInterval copyWithZone:zone];
  v13 = *(v5 + 64);
  *(v5 + 64) = v12;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_latestSupportedVersion;
    *(v5 + 88) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_minimumSupportedVersion;
    *(v5 + 88) |= 2u;
  }

  v15 = [(HKCodableChartDataSourceQueryData *)self->_weekData copyWithZone:zone];
  v16 = *(v5 + 72);
  *(v5 + 72) = v15;

  v17 = [(HKCodableDateInterval *)self->_weekDateInterval copyWithZone:zone];
  v18 = *(v5 + 80);
  *(v5 + 80) = v17;

  v19 = [(HKCodableChartDataSourceQueryData *)self->_dayData copyWithZone:zone];
  v20 = *(v5 + 24);
  *(v5 + 24) = v19;

  v21 = [(HKCodableDateInterval *)self->_dayDateInterval copyWithZone:zone];
  v22 = *(v5 + 32);
  *(v5 + 32) = v21;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  monthData = self->_monthData;
  if (monthData | *(equalCopy + 5))
  {
    if (![(HKCodableChartDataSourceQueryData *)monthData isEqual:?])
    {
      goto LABEL_28;
    }
  }

  monthDateInterval = self->_monthDateInterval;
  if (monthDateInterval | *(equalCopy + 6))
  {
    if (![(HKCodableDateInterval *)monthDateInterval isEqual:?])
    {
      goto LABEL_28;
    }
  }

  sixMonthData = self->_sixMonthData;
  if (sixMonthData | *(equalCopy + 7))
  {
    if (![(HKCodableChartDataSourceQueryData *)sixMonthData isEqual:?])
    {
      goto LABEL_28;
    }
  }

  sixMonthDateInterval = self->_sixMonthDateInterval;
  if (sixMonthDateInterval | *(equalCopy + 8))
  {
    if (![(HKCodableDateInterval *)sixMonthDateInterval isEqual:?])
    {
      goto LABEL_28;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 88) & 1) == 0 || self->_latestSupportedVersion != *(equalCopy + 1))
    {
      goto LABEL_28;
    }
  }

  else if (*(equalCopy + 88))
  {
LABEL_28:
    v13 = 0;
    goto LABEL_29;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 88) & 2) == 0 || self->_minimumSupportedVersion != *(equalCopy + 2))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 88) & 2) != 0)
  {
    goto LABEL_28;
  }

  weekData = self->_weekData;
  if (weekData | *(equalCopy + 9) && ![(HKCodableChartDataSourceQueryData *)weekData isEqual:?])
  {
    goto LABEL_28;
  }

  weekDateInterval = self->_weekDateInterval;
  if (weekDateInterval | *(equalCopy + 10))
  {
    if (![(HKCodableDateInterval *)weekDateInterval isEqual:?])
    {
      goto LABEL_28;
    }
  }

  dayData = self->_dayData;
  if (dayData | *(equalCopy + 3))
  {
    if (![(HKCodableChartDataSourceQueryData *)dayData isEqual:?])
    {
      goto LABEL_28;
    }
  }

  dayDateInterval = self->_dayDateInterval;
  if (dayDateInterval | *(equalCopy + 4))
  {
    v13 = [(HKCodableDateInterval *)dayDateInterval isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_29:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(HKCodableChartDataSourceQueryData *)self->_monthData hash];
  v4 = [(HKCodableDateInterval *)self->_monthDateInterval hash];
  v5 = [(HKCodableChartDataSourceQueryData *)self->_sixMonthData hash];
  v6 = [(HKCodableDateInterval *)self->_sixMonthDateInterval hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_latestSupportedVersion;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = 2654435761 * self->_minimumSupportedVersion;
LABEL_6:
  v9 = v4 ^ v3 ^ v5 ^ v6;
  v10 = v7 ^ v8 ^ [(HKCodableChartDataSourceQueryData *)self->_weekData hash];
  v11 = v9 ^ v10 ^ [(HKCodableDateInterval *)self->_weekDateInterval hash];
  v12 = [(HKCodableChartDataSourceQueryData *)self->_dayData hash];
  return v11 ^ v12 ^ [(HKCodableDateInterval *)self->_dayDateInterval hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  monthData = self->_monthData;
  v6 = fromCopy[5];
  v22 = fromCopy;
  if (monthData)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HKCodableChartDataSourceQueryData *)monthData mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HKCodableChartSharableModel *)self setMonthData:?];
  }

  fromCopy = v22;
LABEL_7:
  monthDateInterval = self->_monthDateInterval;
  v8 = fromCopy[6];
  if (monthDateInterval)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(HKCodableDateInterval *)monthDateInterval mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(HKCodableChartSharableModel *)self setMonthDateInterval:?];
  }

  fromCopy = v22;
LABEL_13:
  sixMonthData = self->_sixMonthData;
  v10 = fromCopy[7];
  if (sixMonthData)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(HKCodableChartDataSourceQueryData *)sixMonthData mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(HKCodableChartSharableModel *)self setSixMonthData:?];
  }

  fromCopy = v22;
LABEL_19:
  sixMonthDateInterval = self->_sixMonthDateInterval;
  v12 = fromCopy[8];
  if (sixMonthDateInterval)
  {
    if (!v12)
    {
      goto LABEL_25;
    }

    [(HKCodableDateInterval *)sixMonthDateInterval mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_25;
    }

    [(HKCodableChartSharableModel *)self setSixMonthDateInterval:?];
  }

  fromCopy = v22;
LABEL_25:
  v13 = *(fromCopy + 88);
  if (v13)
  {
    self->_latestSupportedVersion = fromCopy[1];
    *&self->_has |= 1u;
    v13 = *(fromCopy + 88);
  }

  if ((v13 & 2) != 0)
  {
    self->_minimumSupportedVersion = fromCopy[2];
    *&self->_has |= 2u;
  }

  weekData = self->_weekData;
  v15 = fromCopy[9];
  if (weekData)
  {
    if (!v15)
    {
      goto LABEL_35;
    }

    [(HKCodableChartDataSourceQueryData *)weekData mergeFrom:?];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_35;
    }

    [(HKCodableChartSharableModel *)self setWeekData:?];
  }

  fromCopy = v22;
LABEL_35:
  weekDateInterval = self->_weekDateInterval;
  v17 = fromCopy[10];
  if (weekDateInterval)
  {
    if (!v17)
    {
      goto LABEL_41;
    }

    [(HKCodableDateInterval *)weekDateInterval mergeFrom:?];
  }

  else
  {
    if (!v17)
    {
      goto LABEL_41;
    }

    [(HKCodableChartSharableModel *)self setWeekDateInterval:?];
  }

  fromCopy = v22;
LABEL_41:
  dayData = self->_dayData;
  v19 = fromCopy[3];
  if (dayData)
  {
    if (!v19)
    {
      goto LABEL_47;
    }

    [(HKCodableChartDataSourceQueryData *)dayData mergeFrom:?];
  }

  else
  {
    if (!v19)
    {
      goto LABEL_47;
    }

    [(HKCodableChartSharableModel *)self setDayData:?];
  }

  fromCopy = v22;
LABEL_47:
  dayDateInterval = self->_dayDateInterval;
  v21 = fromCopy[4];
  if (dayDateInterval)
  {
    if (!v21)
    {
      goto LABEL_53;
    }

    dayDateInterval = [(HKCodableDateInterval *)dayDateInterval mergeFrom:?];
  }

  else
  {
    if (!v21)
    {
      goto LABEL_53;
    }

    dayDateInterval = [(HKCodableChartSharableModel *)self setDayDateInterval:?];
  }

  fromCopy = v22;
LABEL_53:

  MEMORY[0x1EEE66BB8](dayDateInterval, fromCopy);
}

@end