@interface HKCodableChartSharableModel
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMinimumSupportedVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableChartSharableModel

- (void)setHasMinimumSupportedVersion:(BOOL)a3
{
  if (a3)
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
  v5 = [(HKCodableChartSharableModel *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  monthData = self->_monthData;
  if (monthData)
  {
    v5 = [(HKCodableChartDataSourceQueryData *)monthData dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"monthData"];
  }

  monthDateInterval = self->_monthDateInterval;
  if (monthDateInterval)
  {
    v7 = [(HKCodableDateInterval *)monthDateInterval dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"monthDateInterval"];
  }

  sixMonthData = self->_sixMonthData;
  if (sixMonthData)
  {
    v9 = [(HKCodableChartDataSourceQueryData *)sixMonthData dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"sixMonthData"];
  }

  sixMonthDateInterval = self->_sixMonthDateInterval;
  if (sixMonthDateInterval)
  {
    v11 = [(HKCodableDateInterval *)sixMonthDateInterval dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"sixMonthDateInterval"];
  }

  has = self->_has;
  if (has)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_latestSupportedVersion];
    [v3 setObject:v13 forKey:@"latestSupportedVersion"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_minimumSupportedVersion];
    [v3 setObject:v14 forKey:@"minimumSupportedVersion"];
  }

  weekData = self->_weekData;
  if (weekData)
  {
    v16 = [(HKCodableChartDataSourceQueryData *)weekData dictionaryRepresentation];
    [v3 setObject:v16 forKey:@"weekData"];
  }

  weekDateInterval = self->_weekDateInterval;
  if (weekDateInterval)
  {
    v18 = [(HKCodableDateInterval *)weekDateInterval dictionaryRepresentation];
    [v3 setObject:v18 forKey:@"weekDateInterval"];
  }

  dayData = self->_dayData;
  if (dayData)
  {
    v20 = [(HKCodableChartDataSourceQueryData *)dayData dictionaryRepresentation];
    [v3 setObject:v20 forKey:@"dayData"];
  }

  dayDateInterval = self->_dayDateInterval;
  if (dayDateInterval)
  {
    v22 = [(HKCodableDateInterval *)dayDateInterval dictionaryRepresentation];
    [v3 setObject:v22 forKey:@"dayDateInterval"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_monthData)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_monthDateInterval)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_sixMonthData)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_sixMonthDateInterval)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt64Field();
    v4 = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
    v4 = v6;
  }

  if (self->_weekData)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_weekDateInterval)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_dayData)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_dayDateInterval)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_monthData)
  {
    [v4 setMonthData:?];
    v4 = v6;
  }

  if (self->_monthDateInterval)
  {
    [v6 setMonthDateInterval:?];
    v4 = v6;
  }

  if (self->_sixMonthData)
  {
    [v6 setSixMonthData:?];
    v4 = v6;
  }

  if (self->_sixMonthDateInterval)
  {
    [v6 setSixMonthDateInterval:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = self->_latestSupportedVersion;
    *(v4 + 88) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 2) = self->_minimumSupportedVersion;
    *(v4 + 88) |= 2u;
  }

  if (self->_weekData)
  {
    [v6 setWeekData:?];
    v4 = v6;
  }

  if (self->_weekDateInterval)
  {
    [v6 setWeekDateInterval:?];
    v4 = v6;
  }

  if (self->_dayData)
  {
    [v6 setDayData:?];
    v4 = v6;
  }

  if (self->_dayDateInterval)
  {
    [v6 setDayDateInterval:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HKCodableChartDataSourceQueryData *)self->_monthData copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(HKCodableDateInterval *)self->_monthDateInterval copyWithZone:a3];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  v10 = [(HKCodableChartDataSourceQueryData *)self->_sixMonthData copyWithZone:a3];
  v11 = *(v5 + 56);
  *(v5 + 56) = v10;

  v12 = [(HKCodableDateInterval *)self->_sixMonthDateInterval copyWithZone:a3];
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

  v15 = [(HKCodableChartDataSourceQueryData *)self->_weekData copyWithZone:a3];
  v16 = *(v5 + 72);
  *(v5 + 72) = v15;

  v17 = [(HKCodableDateInterval *)self->_weekDateInterval copyWithZone:a3];
  v18 = *(v5 + 80);
  *(v5 + 80) = v17;

  v19 = [(HKCodableChartDataSourceQueryData *)self->_dayData copyWithZone:a3];
  v20 = *(v5 + 24);
  *(v5 + 24) = v19;

  v21 = [(HKCodableDateInterval *)self->_dayDateInterval copyWithZone:a3];
  v22 = *(v5 + 32);
  *(v5 + 32) = v21;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  monthData = self->_monthData;
  if (monthData | *(v4 + 5))
  {
    if (![(HKCodableChartDataSourceQueryData *)monthData isEqual:?])
    {
      goto LABEL_28;
    }
  }

  monthDateInterval = self->_monthDateInterval;
  if (monthDateInterval | *(v4 + 6))
  {
    if (![(HKCodableDateInterval *)monthDateInterval isEqual:?])
    {
      goto LABEL_28;
    }
  }

  sixMonthData = self->_sixMonthData;
  if (sixMonthData | *(v4 + 7))
  {
    if (![(HKCodableChartDataSourceQueryData *)sixMonthData isEqual:?])
    {
      goto LABEL_28;
    }
  }

  sixMonthDateInterval = self->_sixMonthDateInterval;
  if (sixMonthDateInterval | *(v4 + 8))
  {
    if (![(HKCodableDateInterval *)sixMonthDateInterval isEqual:?])
    {
      goto LABEL_28;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 88) & 1) == 0 || self->_latestSupportedVersion != *(v4 + 1))
    {
      goto LABEL_28;
    }
  }

  else if (*(v4 + 88))
  {
LABEL_28:
    v13 = 0;
    goto LABEL_29;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 88) & 2) == 0 || self->_minimumSupportedVersion != *(v4 + 2))
    {
      goto LABEL_28;
    }
  }

  else if ((*(v4 + 88) & 2) != 0)
  {
    goto LABEL_28;
  }

  weekData = self->_weekData;
  if (weekData | *(v4 + 9) && ![(HKCodableChartDataSourceQueryData *)weekData isEqual:?])
  {
    goto LABEL_28;
  }

  weekDateInterval = self->_weekDateInterval;
  if (weekDateInterval | *(v4 + 10))
  {
    if (![(HKCodableDateInterval *)weekDateInterval isEqual:?])
    {
      goto LABEL_28;
    }
  }

  dayData = self->_dayData;
  if (dayData | *(v4 + 3))
  {
    if (![(HKCodableChartDataSourceQueryData *)dayData isEqual:?])
    {
      goto LABEL_28;
    }
  }

  dayDateInterval = self->_dayDateInterval;
  if (dayDateInterval | *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  monthData = self->_monthData;
  v6 = v4[5];
  v22 = v4;
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

  v4 = v22;
LABEL_7:
  monthDateInterval = self->_monthDateInterval;
  v8 = v4[6];
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

  v4 = v22;
LABEL_13:
  sixMonthData = self->_sixMonthData;
  v10 = v4[7];
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

  v4 = v22;
LABEL_19:
  sixMonthDateInterval = self->_sixMonthDateInterval;
  v12 = v4[8];
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

  v4 = v22;
LABEL_25:
  v13 = *(v4 + 88);
  if (v13)
  {
    self->_latestSupportedVersion = v4[1];
    *&self->_has |= 1u;
    v13 = *(v4 + 88);
  }

  if ((v13 & 2) != 0)
  {
    self->_minimumSupportedVersion = v4[2];
    *&self->_has |= 2u;
  }

  weekData = self->_weekData;
  v15 = v4[9];
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

  v4 = v22;
LABEL_35:
  weekDateInterval = self->_weekDateInterval;
  v17 = v4[10];
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

  v4 = v22;
LABEL_41:
  dayData = self->_dayData;
  v19 = v4[3];
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

  v4 = v22;
LABEL_47:
  dayDateInterval = self->_dayDateInterval;
  v21 = v4[4];
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

  v4 = v22;
LABEL_53:

  MEMORY[0x1EEE66BB8](dayDateInterval, v4);
}

@end