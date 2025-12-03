@interface HDCodableRacingMetrics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addRoutePoints:(id)points;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasStartDate:(BOOL)date;
- (void)writeTo:(id)to;
@end

@implementation HDCodableRacingMetrics

- (void)setHasStartDate:(BOOL)date
{
  if (date)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addRoutePoints:(id)points
{
  pointsCopy = points;
  routePoints = self->_routePoints;
  v8 = pointsCopy;
  if (!routePoints)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_routePoints;
    self->_routePoints = v6;

    pointsCopy = v8;
    routePoints = self->_routePoints;
  }

  [(NSMutableArray *)routePoints addObject:pointsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableRacingMetrics;
  v4 = [(HDCodableRacingMetrics *)&v8 description];
  dictionaryRepresentation = [(HDCodableRacingMetrics *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  workoutUUID = self->_workoutUUID;
  if (workoutUUID)
  {
    [dictionary setObject:workoutUUID forKey:@"workoutUUID"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:self->_startDate];
    [v4 setObject:v17 forKey:@"startDate"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  v18 = [MEMORY[0x277CCABB0] numberWithDouble:self->_duration];
  [v4 setObject:v18 forKey:@"duration"];

  if (*&self->_has)
  {
LABEL_6:
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_distance];
    [v4 setObject:v7 forKey:@"distance"];
  }

LABEL_7:
  if ([(NSMutableArray *)self->_routePoints count])
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_routePoints, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = self->_routePoints;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:dictionaryRepresentation];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    [v4 setObject:v8 forKey:@"routePoints"];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)to
{
  v21 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_workoutUUID)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    startDate = self->_startDate;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  duration = self->_duration;
  PBDataWriterWriteDoubleField();
  if (*&self->_has)
  {
LABEL_6:
    distance = self->_distance;
    PBDataWriterWriteDoubleField();
  }

LABEL_7:
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_routePoints;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_workoutUUID)
  {
    [toCopy setWorkoutUUID:?];
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_15:
    *(toCopy + 2) = *&self->_duration;
    *(toCopy + 48) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *(toCopy + 3) = *&self->_startDate;
  *(toCopy + 48) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_15;
  }

LABEL_5:
  if (has)
  {
LABEL_6:
    *(toCopy + 1) = *&self->_distance;
    *(toCopy + 48) |= 1u;
  }

LABEL_7:
  if ([(HDCodableRacingMetrics *)self routePointsCount])
  {
    [v10 clearRoutePoints];
    routePointsCount = [(HDCodableRacingMetrics *)self routePointsCount];
    if (routePointsCount)
    {
      v7 = routePointsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(HDCodableRacingMetrics *)self routePointsAtIndex:i];
        [v10 addRoutePoints:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_workoutUUID copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_startDate;
    *(v5 + 48) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_duration;
  *(v5 + 48) |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    *(v5 + 8) = self->_distance;
    *(v5 + 48) |= 1u;
  }

LABEL_5:
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = self->_routePoints;
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

        v14 = [*(*(&v17 + 1) + 8 * i) copyWithZone:{zone, v17}];
        [v5 addRoutePoints:v14];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  workoutUUID = self->_workoutUUID;
  if (workoutUUID | *(equalCopy + 5))
  {
    if (![(NSData *)workoutUUID isEqual:?])
    {
      goto LABEL_21;
    }
  }

  v6 = *(equalCopy + 48);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 48) & 4) == 0 || self->_startDate != *(equalCopy + 3))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 48) & 4) != 0)
  {
LABEL_21:
    v8 = 0;
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_duration != *(equalCopy + 2))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_21;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_distance != *(equalCopy + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_21;
  }

  routePoints = self->_routePoints;
  if (routePoints | *(equalCopy + 4))
  {
    v8 = [(NSMutableArray *)routePoints isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_22:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_workoutUUID hash];
  if ((*&self->_has & 4) != 0)
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

  if ((*&self->_has & 2) != 0)
  {
    duration = self->_duration;
    if (duration < 0.0)
    {
      duration = -duration;
    }

    *v4.i64 = floor(duration + 0.5);
    v12 = (duration - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v13), v5, v4);
    v10 = 2654435761u * *v4.i64;
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

  if (*&self->_has)
  {
    distance = self->_distance;
    if (distance < 0.0)
    {
      distance = -distance;
    }

    *v4.i64 = floor(distance + 0.5);
    v16 = (distance - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v14 = 2654435761u * *vbslq_s8(vnegq_f64(v17), v5, v4).i64;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v14 += v16;
      }
    }

    else
    {
      v14 -= fabs(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  return v6 ^ v3 ^ v10 ^ v14 ^ [(NSMutableArray *)self->_routePoints hash];
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 5))
  {
    [(HDCodableRacingMetrics *)self setWorkoutUUID:?];
  }

  v5 = *(fromCopy + 48);
  if ((v5 & 4) != 0)
  {
    self->_startDate = *(fromCopy + 3);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 48);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(fromCopy + 48) & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_duration = *(fromCopy + 2);
  *&self->_has |= 2u;
  if (*(fromCopy + 48))
  {
LABEL_6:
    self->_distance = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_7:
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(fromCopy + 4);
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

        [(HDCodableRacingMetrics *)self addRoutePoints:*(*(&v12 + 1) + 8 * i), v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end