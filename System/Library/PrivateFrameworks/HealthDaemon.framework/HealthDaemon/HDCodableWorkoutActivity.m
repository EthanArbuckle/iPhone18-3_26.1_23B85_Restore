@interface HDCodableWorkoutActivity
+ (id)codableForWorkoutActivity:(id)a3;
+ (id)codableStatisticsForActivity:(id)a3;
+ (id)codablesForWorkoutActivities:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addStatistics:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasEndDate:(BOOL)a3;
- (void)setHasStartDate:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableWorkoutActivity

+ (id)codableForWorkoutActivity:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HDCodableWorkoutActivity);
  v6 = [v4 UUID];
  v7 = [v6 UUIDString];
  [(HDCodableWorkoutActivity *)v5 setUuid:v7];

  v8 = [v4 workoutConfiguration];
  v9 = [v8 codableRepresentationForSync];

  [(HDCodableWorkoutActivity *)v5 setConfiguration:v9];
  v10 = [v4 startDate];
  [v10 timeIntervalSinceReferenceDate];
  [(HDCodableWorkoutActivity *)v5 setStartDate:?];

  v11 = [v4 endDate];

  if (v11)
  {
    v12 = [v4 endDate];
    [v12 timeIntervalSinceReferenceDate];
    [(HDCodableWorkoutActivity *)v5 setEndDate:?];
  }

  [v4 duration];
  [(HDCodableWorkoutActivity *)v5 setDuration:?];
  v13 = [v4 metadata];

  if (v13)
  {
    v14 = [v4 metadata];
    v15 = [v14 hk_codableMetadata];
    [(HDCodableWorkoutActivity *)v5 setMetadata:v15];
  }

  v16 = [a1 codableStatisticsForActivity:v4];
  [(HDCodableWorkoutActivity *)v5 setStatistics:v16];

  return v5;
}

+ (id)codablesForWorkoutActivities:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [a1 codableForWorkoutActivity:{*(*(&v14 + 1) + 8 * i), v14}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)codableStatisticsForActivity:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CBEB18]);
  v5 = [v3 allStatistics];
  v6 = [v4 initWithCapacity:{objc_msgSend(v5, "count")}];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = [v3 allStatistics];
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v3 statisticsForType:*(*(&v27 + 1) + 8 * i)];
        if (v12)
        {
          v13 = objc_alloc_init(HDCodableWorkoutStatistics);
          v14 = [v12 quantityType];
          -[HDCodableWorkoutStatistics setQuantityType:](v13, "setQuantityType:", [v14 code]);

          v15 = [v12 quantityType];
          v16 = [v15 canonicalUnit];

          v17 = [v12 sumQuantity];

          if (v17)
          {
            v18 = [v12 sumQuantity];
            [v18 doubleValueForUnit:v16];
            [(HDCodableWorkoutStatistics *)v13 setSumQuantity:?];
          }

          v19 = [v12 minimumQuantity];

          if (v19)
          {
            v20 = [v12 minimumQuantity];
            [v20 doubleValueForUnit:v16];
            [(HDCodableWorkoutStatistics *)v13 setMinQuantity:?];
          }

          v21 = [v12 maximumQuantity];

          if (v21)
          {
            v22 = [v12 maximumQuantity];
            [v22 doubleValueForUnit:v16];
            [(HDCodableWorkoutStatistics *)v13 setMaxQuantity:?];
          }

          v23 = [v12 averageQuantity];

          if (v23)
          {
            v24 = [v12 averageQuantity];
            [v24 doubleValueForUnit:v16];
            [(HDCodableWorkoutStatistics *)v13 setAvgQuantity:?];
          }

          [v6 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v9);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v6;
}

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

- (void)setHasEndDate:(BOOL)a3
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

- (void)addStatistics:(id)a3
{
  v4 = a3;
  statistics = self->_statistics;
  v8 = v4;
  if (!statistics)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_statistics;
    self->_statistics = v6;

    v4 = v8;
    statistics = self->_statistics;
  }

  [(NSMutableArray *)statistics addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableWorkoutActivity;
  v4 = [(HDCodableWorkoutActivity *)&v8 description];
  v5 = [(HDCodableWorkoutActivity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
  }

  configuration = self->_configuration;
  if (configuration)
  {
    v7 = [(HDCodableWorkoutConfiguration *)configuration dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"configuration"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_startDate];
    [v4 setObject:v9 forKey:@"startDate"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_endDate];
    [v4 setObject:v10 forKey:@"endDate"];
  }

  metadata = self->_metadata;
  if (metadata)
  {
    v12 = [(HDCodableMetadataDictionary *)metadata dictionaryRepresentation];
    [v4 setObject:v12 forKey:@"metadata"];
  }

  if (*&self->_has)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_duration];
    [v4 setObject:v13 forKey:@"duration"];
  }

  if ([(NSMutableArray *)self->_statistics count])
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_statistics, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = self->_statistics;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          [v14 addObject:v20];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v17);
    }

    [v4 setObject:v14 forKey:@"statistics"];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_configuration)
  {
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    startDate = self->_startDate;
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    endDate = self->_endDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_metadata)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    duration = self->_duration;
    PBDataWriterWriteDoubleField();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_statistics;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_uuid)
  {
    [v4 setUuid:?];
    v4 = v10;
  }

  if (self->_configuration)
  {
    [v10 setConfiguration:?];
    v4 = v10;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 3) = *&self->_startDate;
    *(v4 + 64) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 2) = *&self->_endDate;
    *(v4 + 64) |= 2u;
  }

  if (self->_metadata)
  {
    [v10 setMetadata:?];
    v4 = v10;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_duration;
    *(v4 + 64) |= 1u;
  }

  if ([(HDCodableWorkoutActivity *)self statisticsCount])
  {
    [v10 clearStatistics];
    v6 = [(HDCodableWorkoutActivity *)self statisticsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(HDCodableWorkoutActivity *)self statisticsAtIndex:i];
        [v10 addStatistics:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uuid copyWithZone:a3];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  v8 = [(HDCodableWorkoutConfiguration *)self->_configuration copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_startDate;
    *(v5 + 64) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_endDate;
    *(v5 + 64) |= 2u;
  }

  v11 = [(HDCodableMetadataDictionary *)self->_metadata copyWithZone:a3];
  v12 = *(v5 + 40);
  *(v5 + 40) = v11;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_duration;
    *(v5 + 64) |= 1u;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = self->_statistics;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v21 + 1) + 8 * i) copyWithZone:{a3, v21}];
        [v5 addStatistics:v18];
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  uuid = self->_uuid;
  if (uuid | *(v4 + 7))
  {
    if (![(NSString *)uuid isEqual:?])
    {
      goto LABEL_26;
    }
  }

  configuration = self->_configuration;
  if (configuration | *(v4 + 4))
  {
    if (![(HDCodableWorkoutConfiguration *)configuration isEqual:?])
    {
      goto LABEL_26;
    }
  }

  has = self->_has;
  v8 = *(v4 + 64);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 64) & 4) == 0 || self->_startDate != *(v4 + 3))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 64) & 4) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 64) & 2) == 0 || self->_endDate != *(v4 + 2))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 64) & 2) != 0)
  {
    goto LABEL_26;
  }

  metadata = self->_metadata;
  if (metadata | *(v4 + 5))
  {
    if (![(HDCodableMetadataDictionary *)metadata isEqual:?])
    {
LABEL_26:
      v11 = 0;
      goto LABEL_27;
    }

    has = self->_has;
    v8 = *(v4 + 64);
  }

  if (has)
  {
    if ((v8 & 1) == 0 || self->_duration != *(v4 + 1))
    {
      goto LABEL_26;
    }
  }

  else if (v8)
  {
    goto LABEL_26;
  }

  statistics = self->_statistics;
  if (statistics | *(v4 + 6))
  {
    v11 = [(NSMutableArray *)statistics isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_27:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uuid hash];
  v4 = [(HDCodableWorkoutConfiguration *)self->_configuration hash];
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

  if ((*&self->_has & 2) != 0)
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

  v15 = [(HDCodableMetadataDictionary *)self->_metadata hash];
  if (*&self->_has)
  {
    duration = self->_duration;
    if (duration < 0.0)
    {
      duration = -duration;
    }

    *v16.i64 = floor(duration + 0.5);
    v20 = (duration - *v16.i64) * 1.84467441e19;
    *v17.i64 = *v16.i64 - trunc(*v16.i64 * 5.42101086e-20) * 1.84467441e19;
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v18 = 2654435761u * *vbslq_s8(vnegq_f64(v21), v17, v16).i64;
    if (v20 >= 0.0)
    {
      if (v20 > 0.0)
      {
        v18 += v20;
      }
    }

    else
    {
      v18 -= fabs(v20);
    }
  }

  else
  {
    v18 = 0;
  }

  return v4 ^ v3 ^ v7 ^ v11 ^ v15 ^ v18 ^ [(NSMutableArray *)self->_statistics hash];
}

- (void)mergeFrom:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 7))
  {
    [(HDCodableWorkoutActivity *)self setUuid:?];
  }

  configuration = self->_configuration;
  v6 = *(v4 + 4);
  if (configuration)
  {
    if (v6)
    {
      [(HDCodableWorkoutConfiguration *)configuration mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(HDCodableWorkoutActivity *)self setConfiguration:?];
  }

  v7 = *(v4 + 64);
  if ((v7 & 4) != 0)
  {
    self->_startDate = *(v4 + 3);
    *&self->_has |= 4u;
    v7 = *(v4 + 64);
  }

  if ((v7 & 2) != 0)
  {
    self->_endDate = *(v4 + 2);
    *&self->_has |= 2u;
  }

  metadata = self->_metadata;
  v9 = *(v4 + 5);
  if (metadata)
  {
    if (v9)
    {
      [(HDCodableMetadataDictionary *)metadata mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(HDCodableWorkoutActivity *)self setMetadata:?];
  }

  if (*(v4 + 64))
  {
    self->_duration = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = *(v4 + 6);
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(HDCodableWorkoutActivity *)self addStatistics:*(*(&v16 + 1) + 8 * i), v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end