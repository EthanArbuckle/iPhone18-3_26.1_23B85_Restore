@interface HDCodableBloodPressureJournal
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsJournalState:(id)a3;
- (int)StringAsJournalType:(id)a3;
- (int)StringAsScheduleType:(id)a3;
- (int)journalState;
- (int)journalType;
- (int)scheduleType;
- (unint64_t)hash;
- (void)addTimeInterval:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasJournalState:(BOOL)a3;
- (void)setHasJournalType:(BOOL)a3;
- (void)setHasScheduleType:(BOOL)a3;
- (void)setHasStartDate:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableBloodPressureJournal

- (void)setHasStartDate:(BOOL)a3
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

- (int)journalType
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_journalType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasJournalType:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsJournalType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"LearnHypertensionRisk"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"MonitorHypertension"];
  }

  return v4;
}

- (int)scheduleType
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_scheduleType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasScheduleType:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (int)StringAsScheduleType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UserDefined"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"TypicalDay"];
  }

  return v4;
}

- (int)journalState
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_journalState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasJournalState:(BOOL)a3
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

- (int)StringAsJournalState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Active"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"Closed"];
  }

  return v4;
}

- (void)addTimeInterval:(id)a3
{
  v4 = a3;
  timeIntervals = self->_timeIntervals;
  v8 = v4;
  if (!timeIntervals)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_timeIntervals;
    self->_timeIntervals = v6;

    v4 = v8;
    timeIntervals = self->_timeIntervals;
  }

  [(NSMutableArray *)timeIntervals addObject:v4];
}

- (void)setHasTimestamp:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableBloodPressureJournal;
  v4 = [(HDCodableBloodPressureJournal *)&v8 description];
  v5 = [(HDCodableBloodPressureJournal *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_startDate];
    [v4 setObject:v7 forKey:@"startDate"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_endDate];
  [v4 setObject:v8 forKey:@"endDate"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_11:
  journalType = self->_journalType;
  if (journalType)
  {
    if (journalType == 1)
    {
      v10 = @"MonitorHypertension";
    }

    else
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_journalType];
    }
  }

  else
  {
    v10 = @"LearnHypertensionRisk";
  }

  [v4 setObject:v10 forKey:@"journalType"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_23;
  }

LABEL_17:
  scheduleType = self->_scheduleType;
  if (scheduleType)
  {
    if (scheduleType == 1)
    {
      v12 = @"TypicalDay";
    }

    else
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_scheduleType];
    }
  }

  else
  {
    v12 = @"UserDefined";
  }

  [v4 setObject:v12 forKey:@"scheduleType"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_23:
    journalState = self->_journalState;
    if (journalState)
    {
      if (journalState == 1)
      {
        v14 = @"Closed";
      }

      else
      {
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_journalState];
      }
    }

    else
    {
      v14 = @"Active";
    }

    [v4 setObject:v14 forKey:@"journalState"];
  }

LABEL_29:
  if ([(NSMutableArray *)self->_timeIntervals count])
  {
    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_timeIntervals, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = self->_timeIntervals;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          [v15 addObject:v21];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v18);
    }

    [v4 setObject:v15 forKey:@"timeInterval"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
    [v4 setObject:v22 forKey:@"timestamp"];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    startDate = self->_startDate;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  endDate = self->_endDate;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  journalType = self->_journalType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_22:
  scheduleType = self->_scheduleType;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    journalState = self->_journalState;
    PBDataWriterWriteInt32Field();
  }

LABEL_9:
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->_timeIntervals;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  if ((*&self->_has & 4) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteDoubleField();
  }

  v14 = *MEMORY[0x277D85DE8];
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

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 2) = *&self->_startDate;
    *(v4 + 64) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 1) = *&self->_endDate;
  *(v4 + 64) |= 1u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_21:
    *(v4 + 10) = self->_scheduleType;
    *(v4 + 64) |= 0x20u;
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_20:
  *(v4 + 9) = self->_journalType;
  *(v4 + 64) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_7:
  if ((has & 8) != 0)
  {
LABEL_8:
    *(v4 + 8) = self->_journalState;
    *(v4 + 64) |= 8u;
  }

LABEL_9:
  if ([(HDCodableBloodPressureJournal *)self timeIntervalsCount])
  {
    [v10 clearTimeIntervals];
    v6 = [(HDCodableBloodPressureJournal *)self timeIntervalsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(HDCodableBloodPressureJournal *)self timeIntervalAtIndex:i];
        [v10 addTimeInterval:v9];
      }
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v10 + 3) = *&self->_timestamp;
    *(v10 + 64) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_uuid copyWithZone:a3];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_startDate;
    *(v5 + 64) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 8) = self->_endDate;
  *(v5 + 64) |= 1u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v5 + 36) = self->_journalType;
  *(v5 + 64) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_20:
  *(v5 + 40) = self->_scheduleType;
  *(v5 + 64) |= 0x20u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    *(v5 + 32) = self->_journalState;
    *(v5 + 64) |= 8u;
  }

LABEL_7:
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = self->_timeIntervals;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v17 + 1) + 8 * i) copyWithZone:{a3, v17}];
        [v5 addTimeInterval:v14];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_timestamp;
    *(v5 + 64) |= 4u;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  uuid = self->_uuid;
  if (uuid | *(v4 + 7))
  {
    if (![(NSData *)uuid isEqual:?])
    {
      goto LABEL_36;
    }
  }

  has = self->_has;
  v7 = *(v4 + 64);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 64) & 2) == 0 || self->_startDate != *(v4 + 2))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 64) & 2) != 0)
  {
    goto LABEL_36;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_endDate != *(v4 + 1))
    {
      goto LABEL_36;
    }
  }

  else if (*(v4 + 64))
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 64) & 0x10) == 0 || self->_journalType != *(v4 + 9))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 64) & 0x10) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 64) & 0x20) == 0 || self->_scheduleType != *(v4 + 10))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 64) & 0x20) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 64) & 8) == 0 || self->_journalState != *(v4 + 8))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 64) & 8) != 0)
  {
    goto LABEL_36;
  }

  timeIntervals = self->_timeIntervals;
  if (timeIntervals | *(v4 + 6))
  {
    if (![(NSMutableArray *)timeIntervals isEqual:?])
    {
LABEL_36:
      v9 = 0;
      goto LABEL_37;
    }

    has = self->_has;
    v7 = *(v4 + 64);
  }

  v9 = (v7 & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_timestamp != *(v4 + 3))
    {
      goto LABEL_36;
    }

    v9 = 1;
  }

LABEL_37:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_uuid hash];
  if ((*&self->_has & 2) != 0)
  {
    startDate = self->_startDate;
    if (startDate < 0.0)
    {
      startDate = -startDate;
    }

    *v4.i64 = floor(startDate + 0.5);
    v8 = (startDate - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v9), v5, v4);
    v6 = 2654435761u * *v4.i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if (*&self->_has)
  {
    endDate = self->_endDate;
    if (endDate < 0.0)
    {
      endDate = -endDate;
    }

    *v4.i64 = floor(endDate + 0.5);
    v12 = (endDate - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v5, v4).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  if ((*&self->_has & 0x10) == 0)
  {
    v14 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    v15 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  v14 = 2654435761 * self->_journalType;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  v15 = 2654435761 * self->_scheduleType;
  if ((*&self->_has & 8) != 0)
  {
LABEL_20:
    v16 = 2654435761 * self->_journalState;
    goto LABEL_24;
  }

LABEL_23:
  v16 = 0;
LABEL_24:
  v17 = [(NSMutableArray *)self->_timeIntervals hash];
  if ((*&self->_has & 4) != 0)
  {
    timestamp = self->_timestamp;
    if (timestamp < 0.0)
    {
      timestamp = -timestamp;
    }

    *v18.i64 = floor(timestamp + 0.5);
    v22 = (timestamp - *v18.i64) * 1.84467441e19;
    *v19.i64 = *v18.i64 - trunc(*v18.i64 * 5.42101086e-20) * 1.84467441e19;
    v23.f64[0] = NAN;
    v23.f64[1] = NAN;
    v20 = 2654435761u * *vbslq_s8(vnegq_f64(v23), v19, v18).i64;
    if (v22 >= 0.0)
    {
      if (v22 > 0.0)
      {
        v20 += v22;
      }
    }

    else
    {
      v20 -= fabs(v22);
    }
  }

  else
  {
    v20 = 0;
  }

  return v6 ^ v3 ^ v10 ^ v14 ^ v15 ^ v16 ^ v17 ^ v20;
}

- (void)mergeFrom:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 7))
  {
    [(HDCodableBloodPressureJournal *)self setUuid:?];
  }

  v5 = *(v4 + 64);
  if ((v5 & 2) != 0)
  {
    self->_startDate = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 64);
    if ((v5 & 1) == 0)
    {
LABEL_5:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_21;
    }
  }

  else if ((*(v4 + 64) & 1) == 0)
  {
    goto LABEL_5;
  }

  self->_endDate = *(v4 + 1);
  *&self->_has |= 1u;
  v5 = *(v4 + 64);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_journalType = *(v4 + 9);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 64);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_22:
  self->_scheduleType = *(v4 + 10);
  *&self->_has |= 0x20u;
  if ((*(v4 + 64) & 8) != 0)
  {
LABEL_8:
    self->_journalState = *(v4 + 8);
    *&self->_has |= 8u;
  }

LABEL_9:
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(v4 + 6);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(HDCodableBloodPressureJournal *)self addTimeInterval:*(*(&v12 + 1) + 8 * i), v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if ((*(v4 + 64) & 4) != 0)
  {
    self->_timestamp = *(v4 + 3);
    *&self->_has |= 4u;
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end