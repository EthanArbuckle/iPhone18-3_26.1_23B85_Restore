@interface HDCodableRacingCluster
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addEligibleClusterUUIDs:(id)ds;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasActivityType:(BOOL)type;
- (void)setHasClusterSize:(BOOL)size;
- (void)setHasFinal:(BOOL)final;
- (void)writeTo:(id)to;
@end

@implementation HDCodableRacingCluster

- (void)setHasClusterSize:(BOOL)size
{
  if (size)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasActivityType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasFinal:(BOOL)final
{
  if (final)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)addEligibleClusterUUIDs:(id)ds
{
  dsCopy = ds;
  eligibleClusterUUIDs = self->_eligibleClusterUUIDs;
  v8 = dsCopy;
  if (!eligibleClusterUUIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_eligibleClusterUUIDs;
    self->_eligibleClusterUUIDs = v6;

    dsCopy = v8;
    eligibleClusterUUIDs = self->_eligibleClusterUUIDs;
  }

  [(NSMutableArray *)eligibleClusterUUIDs addObject:dsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableRacingCluster;
  v4 = [(HDCodableRacingCluster *)&v8 description];
  dictionaryRepresentation = [(HDCodableRacingCluster *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  uuid = self->_uuid;
  if (uuid)
  {
    [dictionary setObject:uuid forKey:@"uuid"];
  }

  workoutClusterUUID = self->_workoutClusterUUID;
  if (workoutClusterUUID)
  {
    [v4 setObject:workoutClusterUUID forKey:@"workoutClusterUUID"];
  }

  has = self->_has;
  if (has)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithDouble:self->_relevance];
    [v4 setObject:v20 forKey:@"relevance"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  v21 = [MEMORY[0x277CCABB0] numberWithInt:self->_clusterSize];
  [v4 setObject:v21 forKey:@"clusterSize"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_8:
    v8 = [MEMORY[0x277CCABB0] numberWithInt:self->_activityType];
    [v4 setObject:v8 forKey:@"activityType"];
  }

LABEL_9:
  routeSnapshot = self->_routeSnapshot;
  if (routeSnapshot)
  {
    [v4 setObject:routeSnapshot forKey:@"routeSnapshot"];
  }

  routeLabel = self->_routeLabel;
  if (routeLabel)
  {
    [v4 setObject:routeLabel forKey:@"routeLabel"];
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    dictionaryRepresentation = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"syncIdentity"];
  }

  lastWorkoutMetrics = self->_lastWorkoutMetrics;
  if (lastWorkoutMetrics)
  {
    dictionaryRepresentation2 = [(HDCodableRacingMetrics *)lastWorkoutMetrics dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"lastWorkoutMetrics"];
  }

  bestWorkoutMetrics = self->_bestWorkoutMetrics;
  if (bestWorkoutMetrics)
  {
    dictionaryRepresentation3 = [(HDCodableRacingMetrics *)bestWorkoutMetrics dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"bestWorkoutMetrics"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_final];
    [v4 setObject:v17 forKey:@"final"];
  }

  eligibleClusterUUIDs = self->_eligibleClusterUUIDs;
  if (eligibleClusterUUIDs)
  {
    [v4 setObject:eligibleClusterUUIDs forKey:@"eligibleClusterUUIDs"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v22 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_workoutClusterUUID)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if (has)
  {
    relevance = self->_relevance;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  clusterSize = self->_clusterSize;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_8:
    activityType = self->_activityType;
    PBDataWriterWriteInt32Field();
  }

LABEL_9:
  if (self->_routeSnapshot)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_routeLabel)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_lastWorkoutMetrics)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_bestWorkoutMetrics)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 8) != 0)
  {
    final = self->_final;
    PBDataWriterWriteBOOLField();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_eligibleClusterUUIDs;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        PBDataWriterWriteDataField();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_uuid)
  {
    [toCopy setUuid:?];
    toCopy = v10;
  }

  if (self->_workoutClusterUUID)
  {
    [v10 setWorkoutClusterUUID:?];
    toCopy = v10;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = *&self->_relevance;
    *(toCopy + 100) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 8) = self->_clusterSize;
  *(toCopy + 100) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_8:
    *(toCopy + 4) = self->_activityType;
    *(toCopy + 100) |= 2u;
  }

LABEL_9:
  if (self->_routeSnapshot)
  {
    [v10 setRouteSnapshot:?];
    toCopy = v10;
  }

  if (self->_routeLabel)
  {
    [v10 setRouteLabel:?];
    toCopy = v10;
  }

  if (self->_syncIdentity)
  {
    [v10 setSyncIdentity:?];
    toCopy = v10;
  }

  if (self->_lastWorkoutMetrics)
  {
    [v10 setLastWorkoutMetrics:?];
    toCopy = v10;
  }

  if (self->_bestWorkoutMetrics)
  {
    [v10 setBestWorkoutMetrics:?];
    toCopy = v10;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(toCopy + 96) = self->_final;
    *(toCopy + 100) |= 8u;
  }

  if ([(HDCodableRacingCluster *)self eligibleClusterUUIDsCount])
  {
    [v10 clearEligibleClusterUUIDs];
    eligibleClusterUUIDsCount = [(HDCodableRacingCluster *)self eligibleClusterUUIDsCount];
    if (eligibleClusterUUIDsCount)
    {
      v7 = eligibleClusterUUIDsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(HDCodableRacingCluster *)self eligibleClusterUUIDsAtIndex:i];
        [v10 addEligibleClusterUUIDs:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_uuid copyWithZone:zone];
  v7 = *(v5 + 80);
  *(v5 + 80) = v6;

  v8 = [(NSData *)self->_workoutClusterUUID copyWithZone:zone];
  v9 = *(v5 + 88);
  *(v5 + 88) = v8;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_relevance;
    *(v5 + 100) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 32) = self->_clusterSize;
  *(v5 + 100) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(v5 + 16) = self->_activityType;
    *(v5 + 100) |= 2u;
  }

LABEL_5:
  v11 = [(NSData *)self->_routeSnapshot copyWithZone:zone];
  v12 = *(v5 + 64);
  *(v5 + 64) = v11;

  v13 = [(NSString *)self->_routeLabel copyWithZone:zone];
  v14 = *(v5 + 56);
  *(v5 + 56) = v13;

  v15 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:zone];
  v16 = *(v5 + 72);
  *(v5 + 72) = v15;

  v17 = [(HDCodableRacingMetrics *)self->_lastWorkoutMetrics copyWithZone:zone];
  v18 = *(v5 + 48);
  *(v5 + 48) = v17;

  v19 = [(HDCodableRacingMetrics *)self->_bestWorkoutMetrics copyWithZone:zone];
  v20 = *(v5 + 24);
  *(v5 + 24) = v19;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 96) = self->_final;
    *(v5 + 100) |= 8u;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v21 = self->_eligibleClusterUUIDs;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v30;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v29 + 1) + 8 * i) copyWithZone:{zone, v29}];
        [v5 addEligibleClusterUUIDs:v26];
      }

      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v23);
  }

  v27 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  uuid = self->_uuid;
  if (uuid | *(equalCopy + 10))
  {
    if (![(NSData *)uuid isEqual:?])
    {
      goto LABEL_36;
    }
  }

  workoutClusterUUID = self->_workoutClusterUUID;
  if (workoutClusterUUID | *(equalCopy + 11))
  {
    if (![(NSData *)workoutClusterUUID isEqual:?])
    {
      goto LABEL_36;
    }
  }

  v7 = *(equalCopy + 100);
  if (*&self->_has)
  {
    if ((*(equalCopy + 100) & 1) == 0 || self->_relevance != *(equalCopy + 1))
    {
      goto LABEL_36;
    }
  }

  else if (*(equalCopy + 100))
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 100) & 4) == 0 || self->_clusterSize != *(equalCopy + 8))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 100) & 4) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 100) & 2) == 0 || self->_activityType != *(equalCopy + 4))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 100) & 2) != 0)
  {
    goto LABEL_36;
  }

  routeSnapshot = self->_routeSnapshot;
  if (routeSnapshot | *(equalCopy + 8) && ![(NSData *)routeSnapshot isEqual:?])
  {
    goto LABEL_36;
  }

  routeLabel = self->_routeLabel;
  if (routeLabel | *(equalCopy + 7))
  {
    if (![(NSString *)routeLabel isEqual:?])
    {
      goto LABEL_36;
    }
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity | *(equalCopy + 9))
  {
    if (![(HDCodableSyncIdentity *)syncIdentity isEqual:?])
    {
      goto LABEL_36;
    }
  }

  lastWorkoutMetrics = self->_lastWorkoutMetrics;
  if (lastWorkoutMetrics | *(equalCopy + 6))
  {
    if (![(HDCodableRacingMetrics *)lastWorkoutMetrics isEqual:?])
    {
      goto LABEL_36;
    }
  }

  bestWorkoutMetrics = self->_bestWorkoutMetrics;
  if (bestWorkoutMetrics | *(equalCopy + 3))
  {
    if (![(HDCodableRacingMetrics *)bestWorkoutMetrics isEqual:?])
    {
      goto LABEL_36;
    }
  }

  v13 = *(equalCopy + 100);
  if ((*&self->_has & 8) == 0)
  {
    if ((*(equalCopy + 100) & 8) == 0)
    {
      goto LABEL_33;
    }

LABEL_36:
    v15 = 0;
    goto LABEL_37;
  }

  if ((*(equalCopy + 100) & 8) == 0)
  {
    goto LABEL_36;
  }

  v17 = *(equalCopy + 96);
  if (self->_final)
  {
    if ((*(equalCopy + 96) & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (*(equalCopy + 96))
  {
    goto LABEL_36;
  }

LABEL_33:
  eligibleClusterUUIDs = self->_eligibleClusterUUIDs;
  if (eligibleClusterUUIDs | *(equalCopy + 5))
  {
    v15 = [(NSMutableArray *)eligibleClusterUUIDs isEqual:?];
  }

  else
  {
    v15 = 1;
  }

LABEL_37:

  return v15;
}

- (unint64_t)hash
{
  v20 = [(NSData *)self->_uuid hash];
  v18 = [(NSData *)self->_workoutClusterUUID hash];
  if (*&self->_has)
  {
    relevance = self->_relevance;
    if (relevance < 0.0)
    {
      relevance = -relevance;
    }

    *v3.i64 = floor(relevance + 0.5);
    v7 = (relevance - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v4, v3).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v9 = 2654435761 * self->_clusterSize;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_11:
      v10 = 2654435761 * self->_activityType;
      goto LABEL_14;
    }
  }

  v10 = 0;
LABEL_14:
  v11 = [(NSData *)self->_routeSnapshot hash];
  v12 = [(NSString *)self->_routeLabel hash];
  v13 = [(HDCodableSyncIdentity *)self->_syncIdentity hash];
  v14 = [(HDCodableRacingMetrics *)self->_lastWorkoutMetrics hash];
  v15 = [(HDCodableRacingMetrics *)self->_bestWorkoutMetrics hash];
  if ((*&self->_has & 8) != 0)
  {
    v16 = 2654435761 * self->_final;
  }

  else
  {
    v16 = 0;
  }

  return v19 ^ v20 ^ v5 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ [(NSMutableArray *)self->_eligibleClusterUUIDs hash];
}

- (void)mergeFrom:(id)from
{
  v23 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 10))
  {
    [(HDCodableRacingCluster *)self setUuid:?];
  }

  if (*(fromCopy + 11))
  {
    [(HDCodableRacingCluster *)self setWorkoutClusterUUID:?];
  }

  v5 = *(fromCopy + 100);
  if (v5)
  {
    self->_relevance = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 100);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*(fromCopy + 100) & 4) == 0)
  {
    goto LABEL_7;
  }

  self->_clusterSize = *(fromCopy + 8);
  *&self->_has |= 4u;
  if ((*(fromCopy + 100) & 2) != 0)
  {
LABEL_8:
    self->_activityType = *(fromCopy + 4);
    *&self->_has |= 2u;
  }

LABEL_9:
  if (*(fromCopy + 8))
  {
    [(HDCodableRacingCluster *)self setRouteSnapshot:?];
  }

  if (*(fromCopy + 7))
  {
    [(HDCodableRacingCluster *)self setRouteLabel:?];
  }

  syncIdentity = self->_syncIdentity;
  v7 = *(fromCopy + 9);
  if (syncIdentity)
  {
    if (v7)
    {
      [(HDCodableSyncIdentity *)syncIdentity mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(HDCodableRacingCluster *)self setSyncIdentity:?];
  }

  lastWorkoutMetrics = self->_lastWorkoutMetrics;
  v9 = *(fromCopy + 6);
  if (lastWorkoutMetrics)
  {
    if (v9)
    {
      [(HDCodableRacingMetrics *)lastWorkoutMetrics mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(HDCodableRacingCluster *)self setLastWorkoutMetrics:?];
  }

  bestWorkoutMetrics = self->_bestWorkoutMetrics;
  v11 = *(fromCopy + 3);
  if (bestWorkoutMetrics)
  {
    if (v11)
    {
      [(HDCodableRacingMetrics *)bestWorkoutMetrics mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(HDCodableRacingCluster *)self setBestWorkoutMetrics:?];
  }

  if ((*(fromCopy + 100) & 8) != 0)
  {
    self->_final = *(fromCopy + 96);
    *&self->_has |= 8u;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = *(fromCopy + 5);
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(HDCodableRacingCluster *)self addEligibleClusterUUIDs:*(*(&v18 + 1) + 8 * i), v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end