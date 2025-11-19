@interface HDCodableWorkoutSessionGlobalState
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addEvents:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSessionState:(BOOL)a3;
- (void)setHasSessionStateChangeDate:(BOOL)a3;
- (void)setHasSessionStateEvent:(BOOL)a3;
- (void)setHasSessionStateEventDate:(BOOL)a3;
- (void)setHasStartDate:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableWorkoutSessionGlobalState

- (void)setHasSessionState:(BOOL)a3
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

- (void)setHasSessionStateChangeDate:(BOOL)a3
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

- (void)setHasSessionStateEvent:(BOOL)a3
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

- (void)setHasSessionStateEventDate:(BOOL)a3
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

- (void)setHasStartDate:(BOOL)a3
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

- (void)addEvents:(id)a3
{
  v4 = a3;
  events = self->_events;
  v8 = v4;
  if (!events)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_events;
    self->_events = v6;

    v4 = v8;
    events = self->_events;
  }

  [(NSMutableArray *)events addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableWorkoutSessionGlobalState;
  v4 = [(HDCodableWorkoutSessionGlobalState *)&v8 description];
  v5 = [(HDCodableWorkoutSessionGlobalState *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_sessionState];
    [v3 setObject:v17 forKey:@"sessionState"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v18 = [MEMORY[0x277CCABB0] numberWithDouble:self->_sessionStateChangeDate];
  [v3 setObject:v18 forKey:@"sessionStateChangeDate"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  v19 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_sessionStateEvent];
  [v3 setObject:v19 forKey:@"sessionStateEvent"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:self->_sessionStateEventDate];
  [v3 setObject:v20 forKey:@"sessionStateEventDate"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_26:
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:self->_startDate];
  [v3 setObject:v21 forKey:@"startDate"];

  if (*&self->_has)
  {
LABEL_7:
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_endDate];
    [v3 setObject:v5 forKey:@"endDate"];
  }

LABEL_8:
  currentActivity = self->_currentActivity;
  if (currentActivity)
  {
    v7 = [(HDCodableWorkoutActivity *)currentActivity dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"currentActivity"];
  }

  if ([(NSMutableArray *)self->_events count])
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_events, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = self->_events;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKey:@"events"];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    sessionState = self->_sessionState;
    PBDataWriterWriteInt64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  sessionStateChangeDate = self->_sessionStateChangeDate;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  sessionStateEvent = self->_sessionStateEvent;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  sessionStateEventDate = self->_sessionStateEventDate;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_22:
  startDate = self->_startDate;
  PBDataWriterWriteDoubleField();
  if (*&self->_has)
  {
LABEL_7:
    endDate = self->_endDate;
    PBDataWriterWriteDoubleField();
  }

LABEL_8:
  if (self->_currentActivity)
  {
    PBDataWriterWriteSubmessage();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->_events;
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

  v13 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[2] = self->_sessionState;
    *(v4 + 72) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v4[3] = *&self->_sessionStateChangeDate;
  *(v4 + 72) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v4[4] = self->_sessionStateEvent;
  *(v4 + 72) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v4[5] = *&self->_sessionStateEventDate;
  *(v4 + 72) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_21:
  v4[6] = *&self->_startDate;
  *(v4 + 72) |= 0x20u;
  if (*&self->_has)
  {
LABEL_7:
    v4[1] = *&self->_endDate;
    *(v4 + 72) |= 1u;
  }

LABEL_8:
  v10 = v4;
  if (self->_currentActivity)
  {
    [v4 setCurrentActivity:?];
  }

  if ([(HDCodableWorkoutSessionGlobalState *)self eventsCount])
  {
    [v10 clearEvents];
    v6 = [(HDCodableWorkoutSessionGlobalState *)self eventsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(HDCodableWorkoutSessionGlobalState *)self eventsAtIndex:i];
        [v10 addEvents:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_sessionState;
    *(v5 + 72) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 24) = self->_sessionStateChangeDate;
  *(v5 + 72) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v5 + 32) = self->_sessionStateEvent;
  *(v5 + 72) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v5 + 40) = self->_sessionStateEventDate;
  *(v5 + 72) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_20:
  *(v5 + 48) = self->_startDate;
  *(v5 + 72) |= 0x20u;
  if (*&self->_has)
  {
LABEL_7:
    *(v5 + 8) = self->_endDate;
    *(v5 + 72) |= 1u;
  }

LABEL_8:
  v8 = [(HDCodableWorkoutActivity *)self->_currentActivity copyWithZone:a3];
  v9 = v6[7];
  v6[7] = v8;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_events;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v18 + 1) + 8 * i) copyWithZone:{a3, v18}];
        [v6 addEvents:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  v5 = *(v4 + 72);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 72) & 2) == 0 || self->_sessionState != *(v4 + 2))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 72) & 2) != 0)
  {
LABEL_36:
    v8 = 0;
    goto LABEL_37;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 72) & 4) == 0 || self->_sessionStateChangeDate != *(v4 + 3))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 72) & 4) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 72) & 8) == 0 || self->_sessionStateEvent != *(v4 + 4))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 72) & 8) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 72) & 0x10) == 0 || self->_sessionStateEventDate != *(v4 + 5))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 72) & 0x10) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 72) & 0x20) == 0 || self->_startDate != *(v4 + 6))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 72) & 0x20) != 0)
  {
    goto LABEL_36;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 72) & 1) == 0 || self->_endDate != *(v4 + 1))
    {
      goto LABEL_36;
    }
  }

  else if (*(v4 + 72))
  {
    goto LABEL_36;
  }

  currentActivity = self->_currentActivity;
  if (currentActivity | *(v4 + 7) && ![(HDCodableWorkoutActivity *)currentActivity isEqual:?])
  {
    goto LABEL_36;
  }

  events = self->_events;
  if (events | *(v4 + 8))
  {
    v8 = [(NSMutableArray *)events isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_37:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_sessionState;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v5 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  sessionStateChangeDate = self->_sessionStateChangeDate;
  if (sessionStateChangeDate < 0.0)
  {
    sessionStateChangeDate = -sessionStateChangeDate;
  }

  *v2.i64 = floor(sessionStateChangeDate + 0.5);
  v7 = (sessionStateChangeDate - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
  v9 = 2654435761u * *v2.i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabs(v7);
  }

LABEL_9:
  if ((*&self->_has & 8) != 0)
  {
    v10 = 2654435761 * self->_sessionStateEvent;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_11;
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  v10 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  sessionStateEventDate = self->_sessionStateEventDate;
  if (sessionStateEventDate < 0.0)
  {
    sessionStateEventDate = -sessionStateEventDate;
  }

  *v2.i64 = floor(sessionStateEventDate + 0.5);
  v12 = (sessionStateEventDate - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v13), v3, v2);
  v14 = 2654435761u * *v2.i64;
  if (v12 >= 0.0)
  {
    if (v12 > 0.0)
    {
      v14 += v12;
    }
  }

  else
  {
    v14 -= fabs(v12);
  }

LABEL_17:
  if ((*&self->_has & 0x20) != 0)
  {
    startDate = self->_startDate;
    if (startDate < 0.0)
    {
      startDate = -startDate;
    }

    *v2.i64 = floor(startDate + 0.5);
    v17 = (startDate - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v18), v3, v2);
    v15 = 2654435761u * *v2.i64;
    if (v17 >= 0.0)
    {
      if (v17 > 0.0)
      {
        v15 += v17;
      }
    }

    else
    {
      v15 -= fabs(v17);
    }
  }

  else
  {
    v15 = 0;
  }

  if (*&self->_has)
  {
    endDate = self->_endDate;
    if (endDate < 0.0)
    {
      endDate = -endDate;
    }

    *v2.i64 = floor(endDate + 0.5);
    v21 = (endDate - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v22.f64[0] = NAN;
    v22.f64[1] = NAN;
    v19 = 2654435761u * *vbslq_s8(vnegq_f64(v22), v3, v2).i64;
    if (v21 >= 0.0)
    {
      if (v21 > 0.0)
      {
        v19 += v21;
      }
    }

    else
    {
      v19 -= fabs(v21);
    }
  }

  else
  {
    v19 = 0;
  }

  v23 = v9 ^ v5 ^ v10 ^ v14 ^ v15 ^ v19 ^ [(HDCodableWorkoutActivity *)self->_currentActivity hash];
  return v23 ^ [(NSMutableArray *)self->_events hash];
}

- (void)mergeFrom:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 72);
  if ((v6 & 2) != 0)
  {
    self->_sessionState = *(v4 + 2);
    *&self->_has |= 2u;
    v6 = *(v4 + 72);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v4 + 72) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_sessionStateChangeDate = *(v4 + 3);
  *&self->_has |= 4u;
  v6 = *(v4 + 72);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_sessionStateEvent = *(v4 + 4);
  *&self->_has |= 8u;
  v6 = *(v4 + 72);
  if ((v6 & 0x10) == 0)
  {
LABEL_5:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_sessionStateEventDate = *(v4 + 5);
  *&self->_has |= 0x10u;
  v6 = *(v4 + 72);
  if ((v6 & 0x20) == 0)
  {
LABEL_6:
    if ((v6 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  self->_startDate = *(v4 + 6);
  *&self->_has |= 0x20u;
  if (*(v4 + 72))
  {
LABEL_7:
    self->_endDate = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_8:
  currentActivity = self->_currentActivity;
  v8 = *(v5 + 7);
  if (currentActivity)
  {
    if (v8)
    {
      [(HDCodableWorkoutActivity *)currentActivity mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(HDCodableWorkoutSessionGlobalState *)self setCurrentActivity:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = *(v5 + 8);
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(HDCodableWorkoutSessionGlobalState *)self addEvents:*(*(&v15 + 1) + 8 * i), v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end