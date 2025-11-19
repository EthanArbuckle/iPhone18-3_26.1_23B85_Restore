@interface HKCodableChartDataSourceQueryData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)typeAsString:(int)a3;
- (int)StringAsType:(id)a3;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasFirstWeekday:(BOOL)a3;
- (void)setHasStartDate:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableChartDataSourceQueryData

- (void)setHasStartDate:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)type
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (void)setHasType:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)typeAsString:(int)a3
{
  if (a3 >= 0x10)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E81BCA78[a3];
  }

  return v4;
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"quantity"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"distribution"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"sampleTypeCount"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"bloodPressure"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"insulin"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"handwashing"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"horizontalTimePeriod"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"timePeriodSeries"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"sample"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"sleep"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"activitySummary"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"notification"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"cardioFitness"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"electrocardiogram"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"stateOfMind"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"healthChartsData"])
  {
    v4 = 15;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasFirstWeekday:(BOOL)a3
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
  v8.super_class = HKCodableChartDataSourceQueryData;
  v4 = [(HKCodableChartDataSourceQueryData *)&v8 description];
  v5 = [(HKCodableChartDataSourceQueryData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  timeZoneName = self->_timeZoneName;
  if (timeZoneName)
  {
    [v3 setObject:timeZoneName forKey:@"timeZoneName"];
  }

  queryDataObject = self->_queryDataObject;
  if (queryDataObject)
  {
    [v4 setObject:queryDataObject forKey:@"queryDataObject"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startDate];
    [v4 setObject:v8 forKey:@"startDate"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endDate];
    [v4 setObject:v9 forKey:@"endDate"];
  }

  statisticsInterval = self->_statisticsInterval;
  if (statisticsInterval)
  {
    v11 = [(HKCodableDateComponents *)statisticsInterval dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"statisticsInterval"];
  }

  v12 = self->_has;
  if ((v12 & 8) != 0)
  {
    type = self->_type;
    if (type >= 0x10)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v14 = off_1E81BCA78[type];
    }

    [v4 setObject:v14 forKey:@"type"];

    v12 = self->_has;
  }

  if ((v12 & 2) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_firstWeekday];
    [v4 setObject:v15 forKey:@"firstWeekday"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_timeZoneName)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_queryDataObject)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteDoubleField();
    v4 = v7;
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteDoubleField();
    v4 = v7;
  }

  if (self->_statisticsInterval)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 8) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v7;
    v6 = self->_has;
  }

  if ((v6 & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_timeZoneName)
  {
    [v4 setTimeZoneName:?];
    v4 = v7;
  }

  if (self->_queryDataObject)
  {
    [v7 setQueryDataObject:?];
    v4 = v7;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 3) = *&self->_startDate;
    *(v4 + 60) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = *&self->_endDate;
    *(v4 + 60) |= 1u;
  }

  if (self->_statisticsInterval)
  {
    [v7 setStatisticsInterval:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 8) != 0)
  {
    *(v4 + 14) = self->_type;
    *(v4 + 60) |= 8u;
    v6 = self->_has;
  }

  if ((v6 & 2) != 0)
  {
    *(v4 + 2) = self->_firstWeekday;
    *(v4 + 60) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_timeZoneName copyWithZone:a3];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NSData *)self->_queryDataObject copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_startDate;
    *(v5 + 60) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_endDate;
    *(v5 + 60) |= 1u;
  }

  v11 = [(HKCodableDateComponents *)self->_statisticsInterval copyWithZone:a3];
  v12 = *(v5 + 40);
  *(v5 + 40) = v11;

  v13 = self->_has;
  if ((v13 & 8) != 0)
  {
    *(v5 + 56) = self->_type;
    *(v5 + 60) |= 8u;
    v13 = self->_has;
  }

  if ((v13 & 2) != 0)
  {
    *(v5 + 16) = self->_firstWeekday;
    *(v5 + 60) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  timeZoneName = self->_timeZoneName;
  if (timeZoneName | *(v4 + 6))
  {
    if (![(NSString *)timeZoneName isEqual:?])
    {
      goto LABEL_28;
    }
  }

  queryDataObject = self->_queryDataObject;
  if (queryDataObject | *(v4 + 4))
  {
    if (![(NSData *)queryDataObject isEqual:?])
    {
      goto LABEL_28;
    }
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    if ((*(v4 + 60) & 4) == 0 || self->_startDate != *(v4 + 3))
    {
      goto LABEL_28;
    }
  }

  else if ((*(v4 + 60) & 4) != 0)
  {
    goto LABEL_28;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 60) & 1) == 0 || self->_endDate != *(v4 + 1))
    {
      goto LABEL_28;
    }
  }

  else if (*(v4 + 60))
  {
    goto LABEL_28;
  }

  statisticsInterval = self->_statisticsInterval;
  if (statisticsInterval | *(v4 + 5))
  {
    if (![(HKCodableDateComponents *)statisticsInterval isEqual:?])
    {
LABEL_28:
      v9 = 0;
      goto LABEL_29;
    }

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    if ((*(v4 + 60) & 8) == 0 || self->_type != *(v4 + 14))
    {
      goto LABEL_28;
    }
  }

  else if ((*(v4 + 60) & 8) != 0)
  {
    goto LABEL_28;
  }

  v9 = (*(v4 + 60) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 60) & 2) == 0 || self->_firstWeekday != *(v4 + 2))
    {
      goto LABEL_28;
    }

    v9 = 1;
  }

LABEL_29:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_timeZoneName hash];
  v4 = [(NSData *)self->_queryDataObject hash];
  if ((*&self->_has & 4) != 0)
  {
    startDate = self->_startDate;
    if (startDate < 0.0)
    {
      startDate = -startDate;
    }

    *v5.i64 = floor(startDate + 0.5);
    v9 = (startDate - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v10), v6, v5);
    v7 = 2654435761u * *v5.i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  if (*&self->_has)
  {
    endDate = self->_endDate;
    if (endDate < 0.0)
    {
      endDate = -endDate;
    }

    *v5.i64 = floor(endDate + 0.5);
    v13 = (endDate - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v11 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v6, v5).i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabs(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  v15 = [(HKCodableDateComponents *)self->_statisticsInterval hash];
  if ((*&self->_has & 8) != 0)
  {
    v16 = 2654435761 * self->_type;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_19;
    }

LABEL_21:
    v17 = 0;
    return v4 ^ v3 ^ v7 ^ v11 ^ v15 ^ v16 ^ v17;
  }

  v16 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  v17 = 2654435761 * self->_firstWeekday;
  return v4 ^ v3 ^ v7 ^ v11 ^ v15 ^ v16 ^ v17;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (*(v4 + 6))
  {
    [(HKCodableChartDataSourceQueryData *)self setTimeZoneName:?];
    v4 = v9;
  }

  if (*(v4 + 4))
  {
    [(HKCodableChartDataSourceQueryData *)self setQueryDataObject:?];
    v4 = v9;
  }

  v5 = *(v4 + 60);
  if ((v5 & 4) != 0)
  {
    self->_startDate = *(v4 + 3);
    *&self->_has |= 4u;
    v5 = *(v4 + 60);
  }

  if (v5)
  {
    self->_endDate = *(v4 + 1);
    *&self->_has |= 1u;
  }

  statisticsInterval = self->_statisticsInterval;
  v7 = *(v4 + 5);
  if (statisticsInterval)
  {
    if (!v7)
    {
      goto LABEL_15;
    }

    statisticsInterval = [(HKCodableDateComponents *)statisticsInterval mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_15;
    }

    statisticsInterval = [(HKCodableChartDataSourceQueryData *)self setStatisticsInterval:?];
  }

  v4 = v9;
LABEL_15:
  v8 = *(v4 + 60);
  if ((v8 & 8) != 0)
  {
    self->_type = *(v4 + 14);
    *&self->_has |= 8u;
    v8 = *(v4 + 60);
  }

  if ((v8 & 2) != 0)
  {
    self->_firstWeekday = *(v4 + 2);
    *&self->_has |= 2u;
  }

  MEMORY[0x1EEE66BB8](statisticsInterval, v4);
}

@end