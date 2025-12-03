@interface HKCodableStatistics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDataCount:(BOOL)count;
- (void)setHasDataType:(BOOL)type;
- (void)setHasEndDate:(BOOL)date;
- (void)setHasStartDate:(BOOL)date;
- (void)writeTo:(id)to;
@end

@implementation HKCodableStatistics

- (void)setHasDataType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasStartDate:(BOOL)date
{
  if (date)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasEndDate:(BOOL)date
{
  if (date)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasDataCount:(BOOL)count
{
  if (count)
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
  v8.super_class = HKCodableStatistics;
  v4 = [(HKCodableStatistics *)&v8 description];
  dictionaryRepresentation = [(HKCodableStatistics *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_dataType];
    [dictionary setObject:v25 forKey:@"dataType"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v26 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startDate];
  [dictionary setObject:v26 forKey:@"startDate"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endDate];
    [dictionary setObject:v5 forKey:@"endDate"];
  }

LABEL_5:
  averageQuantity = self->_averageQuantity;
  if (averageQuantity)
  {
    dictionaryRepresentation = [(HKCodableQuantity *)averageQuantity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"averageQuantity"];
  }

  minQuantity = self->_minQuantity;
  if (minQuantity)
  {
    dictionaryRepresentation2 = [(HKCodableQuantity *)minQuantity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"minQuantity"];
  }

  maxQuantity = self->_maxQuantity;
  if (maxQuantity)
  {
    dictionaryRepresentation3 = [(HKCodableQuantity *)maxQuantity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"maxQuantity"];
  }

  mostRecentQuantity = self->_mostRecentQuantity;
  if (mostRecentQuantity)
  {
    dictionaryRepresentation4 = [(HKCodableQuantity *)mostRecentQuantity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"mostRecentQuantity"];
  }

  sumQuantity = self->_sumQuantity;
  if (sumQuantity)
  {
    dictionaryRepresentation5 = [(HKCodableQuantity *)sumQuantity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"sumQuantity"];
  }

  durationQuantity = self->_durationQuantity;
  if (durationQuantity)
  {
    dictionaryRepresentation6 = [(HKCodableQuantity *)durationQuantity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"durationQuantity"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_dataCount];
    [dictionary setObject:v18 forKey:@"dataCount"];
  }

  statisticsInterval = self->_statisticsInterval;
  if (statisticsInterval)
  {
    dictionaryRepresentation7 = [(HKCodableDateComponents *)statisticsInterval dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation7 forKey:@"statisticsInterval"];
  }

  if (*&self->_has)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_baselineRelativeValueState];
    [dictionary setObject:v21 forKey:@"baselineRelativeValueState"];
  }

  metadata = self->_metadata;
  if (metadata)
  {
    dictionaryRepresentation8 = [(HKCodableMetadataDictionary *)metadata dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation8 forKey:@"metadata"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v6;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteDoubleField();
  toCopy = v6;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }

LABEL_5:
  if (self->_averageQuantity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_minQuantity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_maxQuantity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_mostRecentQuantity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_sumQuantity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_durationQuantity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v6;
  }

  if (self->_statisticsInterval)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v6;
  }

  if (self->_metadata)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[3] = self->_dataType;
    *(toCopy + 112) |= 4u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  toCopy[5] = *&self->_startDate;
  *(toCopy + 112) |= 0x10u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    toCopy[4] = *&self->_endDate;
    *(toCopy + 112) |= 8u;
  }

LABEL_5:
  v6 = toCopy;
  if (self->_averageQuantity)
  {
    [toCopy setAverageQuantity:?];
    toCopy = v6;
  }

  if (self->_minQuantity)
  {
    [v6 setMinQuantity:?];
    toCopy = v6;
  }

  if (self->_maxQuantity)
  {
    [v6 setMaxQuantity:?];
    toCopy = v6;
  }

  if (self->_mostRecentQuantity)
  {
    [v6 setMostRecentQuantity:?];
    toCopy = v6;
  }

  if (self->_sumQuantity)
  {
    [v6 setSumQuantity:?];
    toCopy = v6;
  }

  if (self->_durationQuantity)
  {
    [v6 setDurationQuantity:?];
    toCopy = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    toCopy[2] = self->_dataCount;
    *(toCopy + 112) |= 2u;
  }

  if (self->_statisticsInterval)
  {
    [v6 setStatisticsInterval:?];
    toCopy = v6;
  }

  if (*&self->_has)
  {
    toCopy[1] = self->_baselineRelativeValueState;
    *(toCopy + 112) |= 1u;
  }

  if (self->_metadata)
  {
    [v6 setMetadata:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_dataType;
    *(v5 + 112) |= 4u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 40) = self->_startDate;
  *(v5 + 112) |= 0x10u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    *(v5 + 32) = self->_endDate;
    *(v5 + 112) |= 8u;
  }

LABEL_5:
  v8 = [(HKCodableQuantity *)self->_averageQuantity copyWithZone:zone];
  v9 = *(v6 + 48);
  *(v6 + 48) = v8;

  v10 = [(HKCodableQuantity *)self->_minQuantity copyWithZone:zone];
  v11 = *(v6 + 80);
  *(v6 + 80) = v10;

  v12 = [(HKCodableQuantity *)self->_maxQuantity copyWithZone:zone];
  v13 = *(v6 + 64);
  *(v6 + 64) = v12;

  v14 = [(HKCodableQuantity *)self->_mostRecentQuantity copyWithZone:zone];
  v15 = *(v6 + 88);
  *(v6 + 88) = v14;

  v16 = [(HKCodableQuantity *)self->_sumQuantity copyWithZone:zone];
  v17 = *(v6 + 104);
  *(v6 + 104) = v16;

  v18 = [(HKCodableQuantity *)self->_durationQuantity copyWithZone:zone];
  v19 = *(v6 + 56);
  *(v6 + 56) = v18;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 16) = self->_dataCount;
    *(v6 + 112) |= 2u;
  }

  v20 = [(HKCodableDateComponents *)self->_statisticsInterval copyWithZone:zone];
  v21 = *(v6 + 96);
  *(v6 + 96) = v20;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_baselineRelativeValueState;
    *(v6 + 112) |= 1u;
  }

  v22 = [(HKCodableMetadataDictionary *)self->_metadata copyWithZone:zone];
  v23 = *(v6 + 72);
  *(v6 + 72) = v22;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_44;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 112) & 4) == 0 || self->_dataType != *(equalCopy + 3))
    {
      goto LABEL_44;
    }
  }

  else if ((*(equalCopy + 112) & 4) != 0)
  {
    goto LABEL_44;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 112) & 0x10) == 0 || self->_startDate != *(equalCopy + 5))
    {
      goto LABEL_44;
    }
  }

  else if ((*(equalCopy + 112) & 0x10) != 0)
  {
    goto LABEL_44;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 112) & 8) == 0 || self->_endDate != *(equalCopy + 4))
    {
      goto LABEL_44;
    }
  }

  else if ((*(equalCopy + 112) & 8) != 0)
  {
    goto LABEL_44;
  }

  averageQuantity = self->_averageQuantity;
  if (averageQuantity | *(equalCopy + 6) && ![(HKCodableQuantity *)averageQuantity isEqual:?])
  {
    goto LABEL_44;
  }

  minQuantity = self->_minQuantity;
  if (minQuantity | *(equalCopy + 10))
  {
    if (![(HKCodableQuantity *)minQuantity isEqual:?])
    {
      goto LABEL_44;
    }
  }

  maxQuantity = self->_maxQuantity;
  if (maxQuantity | *(equalCopy + 8))
  {
    if (![(HKCodableQuantity *)maxQuantity isEqual:?])
    {
      goto LABEL_44;
    }
  }

  mostRecentQuantity = self->_mostRecentQuantity;
  if (mostRecentQuantity | *(equalCopy + 11))
  {
    if (![(HKCodableQuantity *)mostRecentQuantity isEqual:?])
    {
      goto LABEL_44;
    }
  }

  sumQuantity = self->_sumQuantity;
  if (sumQuantity | *(equalCopy + 13))
  {
    if (![(HKCodableQuantity *)sumQuantity isEqual:?])
    {
      goto LABEL_44;
    }
  }

  durationQuantity = self->_durationQuantity;
  if (durationQuantity | *(equalCopy + 7))
  {
    if (![(HKCodableQuantity *)durationQuantity isEqual:?])
    {
      goto LABEL_44;
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 112) & 2) == 0 || self->_dataCount != *(equalCopy + 2))
    {
      goto LABEL_44;
    }
  }

  else if ((*(equalCopy + 112) & 2) != 0)
  {
    goto LABEL_44;
  }

  statisticsInterval = self->_statisticsInterval;
  if (statisticsInterval | *(equalCopy + 12))
  {
    if (![(HKCodableDateComponents *)statisticsInterval isEqual:?])
    {
LABEL_44:
      v14 = 0;
      goto LABEL_45;
    }

    has = self->_has;
  }

  if (has)
  {
    if ((*(equalCopy + 112) & 1) == 0 || self->_baselineRelativeValueState != *(equalCopy + 1))
    {
      goto LABEL_44;
    }
  }

  else if (*(equalCopy + 112))
  {
    goto LABEL_44;
  }

  metadata = self->_metadata;
  if (metadata | *(equalCopy + 9))
  {
    v14 = [(HKCodableMetadataDictionary *)metadata isEqual:?];
  }

  else
  {
    v14 = 1;
  }

LABEL_45:

  return v14;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v24 = 2654435761 * self->_dataType;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v24 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  startDate = self->_startDate;
  if (startDate < 0.0)
  {
    startDate = -startDate;
  }

  *v2.i64 = floor(startDate + 0.5);
  v6 = (startDate - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v7), v3, v2);
  v8 = 2654435761u * *v2.i64;
  if (v6 >= 0.0)
  {
    if (v6 > 0.0)
    {
      v8 += v6;
    }
  }

  else
  {
    v8 -= fabs(v6);
  }

LABEL_9:
  v23 = v8;
  if ((*&self->_has & 8) != 0)
  {
    endDate = self->_endDate;
    if (endDate < 0.0)
    {
      endDate = -endDate;
    }

    *v2.i64 = floor(endDate + 0.5);
    v11 = (endDate - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v3, v2).i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  v22 = [(HKCodableQuantity *)self->_averageQuantity hash];
  v13 = [(HKCodableQuantity *)self->_minQuantity hash];
  v14 = [(HKCodableQuantity *)self->_maxQuantity hash];
  v15 = [(HKCodableQuantity *)self->_mostRecentQuantity hash];
  v16 = [(HKCodableQuantity *)self->_sumQuantity hash];
  v17 = [(HKCodableQuantity *)self->_durationQuantity hash];
  if ((*&self->_has & 2) != 0)
  {
    v18 = 2654435761 * self->_dataCount;
  }

  else
  {
    v18 = 0;
  }

  v19 = [(HKCodableDateComponents *)self->_statisticsInterval hash];
  if (*&self->_has)
  {
    v20 = 2654435761 * self->_baselineRelativeValueState;
  }

  else
  {
    v20 = 0;
  }

  return v23 ^ v24 ^ v9 ^ v22 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ [(HKCodableMetadataDictionary *)self->_metadata hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 112);
  if ((v6 & 4) != 0)
  {
    self->_dataType = *(fromCopy + 3);
    *&self->_has |= 4u;
    v6 = *(fromCopy + 112);
    if ((v6 & 0x10) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 112) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_startDate = *(fromCopy + 5);
  *&self->_has |= 0x10u;
  if ((*(fromCopy + 112) & 8) != 0)
  {
LABEL_4:
    self->_endDate = *(fromCopy + 4);
    *&self->_has |= 8u;
  }

LABEL_5:
  averageQuantity = self->_averageQuantity;
  v8 = v5[6];
  v23 = v5;
  if (averageQuantity)
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    [(HKCodableQuantity *)averageQuantity mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    [(HKCodableStatistics *)self setAverageQuantity:?];
  }

  v5 = v23;
LABEL_14:
  minQuantity = self->_minQuantity;
  v10 = v5[10];
  if (minQuantity)
  {
    if (!v10)
    {
      goto LABEL_20;
    }

    [(HKCodableQuantity *)minQuantity mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_20;
    }

    [(HKCodableStatistics *)self setMinQuantity:?];
  }

  v5 = v23;
LABEL_20:
  maxQuantity = self->_maxQuantity;
  v12 = v5[8];
  if (maxQuantity)
  {
    if (!v12)
    {
      goto LABEL_26;
    }

    [(HKCodableQuantity *)maxQuantity mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_26;
    }

    [(HKCodableStatistics *)self setMaxQuantity:?];
  }

  v5 = v23;
LABEL_26:
  mostRecentQuantity = self->_mostRecentQuantity;
  v14 = v5[11];
  if (mostRecentQuantity)
  {
    if (!v14)
    {
      goto LABEL_32;
    }

    [(HKCodableQuantity *)mostRecentQuantity mergeFrom:?];
  }

  else
  {
    if (!v14)
    {
      goto LABEL_32;
    }

    [(HKCodableStatistics *)self setMostRecentQuantity:?];
  }

  v5 = v23;
LABEL_32:
  sumQuantity = self->_sumQuantity;
  v16 = v5[13];
  if (sumQuantity)
  {
    if (!v16)
    {
      goto LABEL_38;
    }

    [(HKCodableQuantity *)sumQuantity mergeFrom:?];
  }

  else
  {
    if (!v16)
    {
      goto LABEL_38;
    }

    [(HKCodableStatistics *)self setSumQuantity:?];
  }

  v5 = v23;
LABEL_38:
  durationQuantity = self->_durationQuantity;
  v18 = v5[7];
  if (durationQuantity)
  {
    if (!v18)
    {
      goto LABEL_44;
    }

    [(HKCodableQuantity *)durationQuantity mergeFrom:?];
  }

  else
  {
    if (!v18)
    {
      goto LABEL_44;
    }

    [(HKCodableStatistics *)self setDurationQuantity:?];
  }

  v5 = v23;
LABEL_44:
  if ((v5[14] & 2) != 0)
  {
    self->_dataCount = v5[2];
    *&self->_has |= 2u;
  }

  statisticsInterval = self->_statisticsInterval;
  v20 = v5[12];
  if (statisticsInterval)
  {
    if (!v20)
    {
      goto LABEL_52;
    }

    [(HKCodableDateComponents *)statisticsInterval mergeFrom:?];
  }

  else
  {
    if (!v20)
    {
      goto LABEL_52;
    }

    [(HKCodableStatistics *)self setStatisticsInterval:?];
  }

  v5 = v23;
LABEL_52:
  if (v5[14])
  {
    self->_baselineRelativeValueState = v5[1];
    *&self->_has |= 1u;
  }

  metadata = self->_metadata;
  v22 = v5[9];
  if (metadata)
  {
    if (!v22)
    {
      goto LABEL_60;
    }

    metadata = [(HKCodableMetadataDictionary *)metadata mergeFrom:?];
  }

  else
  {
    if (!v22)
    {
      goto LABEL_60;
    }

    metadata = [(HKCodableStatistics *)self setMetadata:?];
  }

  v5 = v23;
LABEL_60:

  MEMORY[0x1EEE66BB8](metadata, v5);
}

@end