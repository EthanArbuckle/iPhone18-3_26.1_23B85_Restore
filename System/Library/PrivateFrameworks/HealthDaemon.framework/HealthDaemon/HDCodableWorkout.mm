@interface HDCodableWorkout
- (BOOL)applyToObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addEvents:(id)a3;
- (void)addSubActivities:(id)a3;
- (void)addZones:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasGoal:(BOOL)a3;
- (void)setHasGoalType:(BOOL)a3;
- (void)setHasTotalBasalEnergyBurnedInCanonicalUnit:(BOOL)a3;
- (void)setHasTotalDistanceInCanonicalUnit:(BOOL)a3;
- (void)setHasTotalEnergyBurnedInCanonicalUnit:(BOOL)a3;
- (void)setHasTotalFlightsClimbedInCanonicalUnit:(BOOL)a3;
- (void)setHasTotalSwimmingStrokeCountInCanonicalUnit:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableWorkout

- (BOOL)applyToObject:(id)a3
{
  v85 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[HDCodableWorkout sample](self, "sample"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 applyToObject:v4], v5, v6) && (type = self->_type, _HKWorkoutActivityTypeIsValid()))
  {
    [v4 _setWorkoutActivityType:self->_type];
    [v4 _setDuration:self->_duration];
    if ([(NSMutableArray *)self->_events count])
    {
      v8 = [MEMORY[0x277CBEB18] array];
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v9 = self->_events;
      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v79 objects:v84 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v80;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v80 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [MEMORY[0x277CCDC68] createWithCodable:*(*(&v79 + 1) + 8 * i)];
            if (v14)
            {
              [v8 addObject:v14];
            }
          }

          v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v79 objects:v84 count:16];
        }

        while (v11);
      }
    }

    else
    {
      v8 = 0;
    }

    [v4 _setWorkoutEvents:v8];

    if ([(NSMutableArray *)self->_zones count])
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v74 = self;
      v19 = self->_zones;
      v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v79 objects:v84 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v80;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v80 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = [MEMORY[0x277CCDCE0] createWithCodable:*(*(&v79 + 1) + 8 * j)];
            v25 = v24;
            if (v24)
            {
              v26 = [v24 type];
              v27 = [v18 objectForKeyedSubscript:v26];

              if (!v27)
              {
                v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
                [v18 setObject:v28 forKeyedSubscript:v26];
              }

              v29 = [v18 objectForKeyedSubscript:v26];
              [v29 addObject:v25];
            }
          }

          v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v79 objects:v84 count:16];
        }

        while (v21);
      }

      self = v74;
    }

    else
    {
      v18 = 0;
    }

    [v4 _setWorkoutZonesByType:v18];

    v30 = [MEMORY[0x277CCDBF0] createWithCodable:self->_primaryActivity];
    if (!v30)
    {
      [v4 workoutActivityType];
      v31 = [v4 metadata];
      v32 = _HKWorkoutConfigurationWithActivityTypeAndMetadata();

      v33 = objc_alloc(MEMORY[0x277CCDBF0]);
      v34 = [v4 UUID];
      v35 = [v4 startDate];
      v36 = [v4 endDate];
      v37 = [v4 workoutEvents];
      [v4 duration];
      v30 = [v33 _initWithUUID:v34 workoutConfiguration:v32 startDate:v35 endDate:v36 workoutEvents:v37 startsPaused:0 duration:0 metadata:0 statisticsPerType:?];
    }

    [v4 _setPrimaryActivity:v30];
    if ([(NSMutableArray *)self->_subActivities count])
    {
      v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v39 = self->_subActivities;
      v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v79 objects:v84 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v80;
        do
        {
          for (k = 0; k != v41; ++k)
          {
            if (*v80 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = [MEMORY[0x277CCDBF0] createWithCodable:*(*(&v79 + 1) + 8 * k)];
            if (v44)
            {
              [v38 addObject:v44];
            }
          }

          v41 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v79 objects:v84 count:16];
        }

        while (v41);
      }
    }

    else
    {
      v38 = 0;
    }

    [v4 _setSubActivities:v38];

    v45 = [v4 workoutEvents];
    v46 = [v45 count];

    if (v46)
    {
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v47 = [v4 _subActivities];
      v48 = [v47 countByEnumeratingWithState:&v75 objects:v83 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v76;
        do
        {
          for (m = 0; m != v49; ++m)
          {
            if (*v76 != v50)
            {
              objc_enumerationMutation(v47);
            }

            v52 = *(*(&v75 + 1) + 8 * m);
            v53 = [v4 workoutEvents];
            [v52 _filterAndSetWorkoutEvents:v53];
          }

          v49 = [v47 countByEnumeratingWithState:&v75 objects:v83 count:16];
        }

        while (v49);
      }
    }

    if ([(HDCodableWorkout *)self hasTotalEnergyBurnedInCanonicalUnit])
    {
      if ((*&self->_has & 0x20) != 0)
      {
        v55 = MEMORY[0x277CCD7E8];
        v56 = _HKWorkoutCanonicalEnergyBurnedUnit();
        v54 = [v55 quantityWithUnit:v56 doubleValue:self->_totalEnergyBurnedInCanonicalUnit];
      }

      else
      {
        v54 = 0;
      }

      [v4 _setTotalEnergyBurned:v54];
    }

    if ([(HDCodableWorkout *)self hasTotalBasalEnergyBurnedInCanonicalUnit])
    {
      if ((*&self->_has & 8) != 0)
      {
        v58 = MEMORY[0x277CCD7E8];
        v59 = _HKWorkoutCanonicalEnergyBurnedUnit();
        v57 = [v58 quantityWithUnit:v59 doubleValue:self->_totalBasalEnergyBurnedInCanonicalUnit];
      }

      else
      {
        v57 = 0;
      }

      [v4 _setTotalBasalEnergyBurned:v57];
    }

    if ([(HDCodableWorkout *)self hasTotalDistanceInCanonicalUnit])
    {
      if ((*&self->_has & 0x10) != 0)
      {
        v61 = MEMORY[0x277CCD7E8];
        v62 = _HKWorkoutCanonicalDistanceUnit();
        v60 = [v61 quantityWithUnit:v62 doubleValue:self->_totalDistanceInCanonicalUnit];
      }

      else
      {
        v60 = 0;
      }

      [v4 _setTotalDistance:v60];
    }

    if ([(HDCodableWorkout *)self hasTotalSwimmingStrokeCountInCanonicalUnit])
    {
      if ((*&self->_has & 0x80) != 0)
      {
        v64 = MEMORY[0x277CCD7E8];
        v65 = _HKWorkoutCanonicalSwimmingStrokeCountUnit();
        v63 = [v64 quantityWithUnit:v65 doubleValue:self->_totalSwimmingStrokeCountInCanonicalUnit];
      }

      else
      {
        v63 = 0;
      }

      [v4 _setTotalSwimmingStrokeCount:v63];
    }

    if ([(HDCodableWorkout *)self hasTotalFlightsClimbedInCanonicalUnit])
    {
      if ((*&self->_has & 0x40) != 0)
      {
        v67 = MEMORY[0x277CCD7E8];
        v68 = _HKWorkoutCanonicalFlightsClimbedUnit();
        v66 = [v67 quantityWithUnit:v68 doubleValue:self->_totalFlightsClimbedInCanonicalUnit];
      }

      else
      {
        v66 = 0;
      }

      [v4 _setTotalFlightsClimbed:v66];
    }

    if ([(HDCodableWorkout *)self hasGoalType])
    {
      if ((*&self->_has & 4) != 0)
      {
        goalType = self->_goalType;
      }

      else
      {
        goalType = 0;
      }

      [v4 _setGoalType:goalType];
    }

    if ([(HDCodableWorkout *)self hasGoal])
    {
      if ((~*&self->_has & 6) != 0)
      {
        v73 = 0;
      }

      else
      {
        v70 = MEMORY[0x277CCD7E8];
        v71 = self->_goalType;
        v72 = _HKWorkoutCanonicalUnitForGoalType();
        v73 = [v70 quantityWithUnit:v72 doubleValue:self->_goal];
      }

      [v4 _setGoal:v73];
    }

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)setHasType:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
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

- (void)setHasTotalEnergyBurnedInCanonicalUnit:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasTotalDistanceInCanonicalUnit:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasGoalType:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasGoal:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasTotalBasalEnergyBurnedInCanonicalUnit:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasTotalSwimmingStrokeCountInCanonicalUnit:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasTotalFlightsClimbedInCanonicalUnit:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)addSubActivities:(id)a3
{
  v4 = a3;
  subActivities = self->_subActivities;
  v8 = v4;
  if (!subActivities)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_subActivities;
    self->_subActivities = v6;

    v4 = v8;
    subActivities = self->_subActivities;
  }

  [(NSMutableArray *)subActivities addObject:v4];
}

- (void)addZones:(id)a3
{
  v4 = a3;
  zones = self->_zones;
  v8 = v4;
  if (!zones)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_zones;
    self->_zones = v6;

    v4 = v8;
    zones = self->_zones;
  }

  [(NSMutableArray *)zones addObject:v4];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableWorkout;
  v4 = [(HDCodableWorkout *)&v8 description];
  v5 = [(HDCodableWorkout *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  sample = self->_sample;
  if (sample)
  {
    v5 = [(HDCodableSample *)sample dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"sample"];
  }

  if ((*&self->_has & 0x100) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_type];
    [v3 setObject:v6 forKey:@"type"];
  }

  if ([(NSMutableArray *)self->_events count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_events, "count")}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v8 = self->_events;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v50;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v50 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v49 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:v13];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v49 objects:v55 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKey:@"events"];
  }

  has = self->_has;
  if (has)
  {
    v34 = [MEMORY[0x277CCABB0] numberWithDouble:self->_duration];
    [v3 setObject:v34 forKey:@"duration"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_16:
      if ((has & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_48;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_16;
  }

  v35 = [MEMORY[0x277CCABB0] numberWithDouble:self->_totalEnergyBurnedInCanonicalUnit];
  [v3 setObject:v35 forKey:@"totalEnergyBurnedInCanonicalUnit"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_17:
    if ((has & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  v36 = [MEMORY[0x277CCABB0] numberWithDouble:self->_totalDistanceInCanonicalUnit];
  [v3 setObject:v36 forKey:@"totalDistanceInCanonicalUnit"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_18:
    if ((has & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  v37 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_goalType];
  [v3 setObject:v37 forKey:@"goalType"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_19:
    if ((has & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  v38 = [MEMORY[0x277CCABB0] numberWithDouble:self->_goal];
  [v3 setObject:v38 forKey:@"goal"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_20:
    if ((has & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  v39 = [MEMORY[0x277CCABB0] numberWithDouble:self->_totalBasalEnergyBurnedInCanonicalUnit];
  [v3 setObject:v39 forKey:@"totalBasalEnergyBurnedInCanonicalUnit"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_21:
    if ((has & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_52:
  v40 = [MEMORY[0x277CCABB0] numberWithDouble:self->_totalSwimmingStrokeCountInCanonicalUnit];
  [v3 setObject:v40 forKey:@"totalSwimmingStrokeCountInCanonicalUnit"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_22:
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:self->_totalFlightsClimbedInCanonicalUnit];
    [v3 setObject:v15 forKey:@"totalFlightsClimbedInCanonicalUnit"];
  }

LABEL_23:
  primaryActivity = self->_primaryActivity;
  if (primaryActivity)
  {
    v17 = [(HDCodableWorkoutActivity *)primaryActivity dictionaryRepresentation];
    [v3 setObject:v17 forKey:@"primaryActivity"];
  }

  if ([(NSMutableArray *)self->_subActivities count])
  {
    v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_subActivities, "count")}];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v19 = self->_subActivities;
    v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v46;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v46 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v45 + 1) + 8 * j) dictionaryRepresentation];
          [v18 addObject:v24];
        }

        v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v21);
    }

    [v3 setObject:v18 forKey:@"subActivities"];
  }

  if ([(NSMutableArray *)self->_zones count])
  {
    v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_zones, "count")}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v26 = self->_zones;
    v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v41 objects:v53 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v42;
      do
      {
        for (k = 0; k != v28; ++k)
        {
          if (*v42 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [*(*(&v41 + 1) + 8 * k) dictionaryRepresentation];
          [v25 addObject:v31];
        }

        v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v41 objects:v53 count:16];
      }

      while (v28);
    }

    [v3 setObject:v25 forKey:@"zones"];
  }

  v32 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_sample)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 0x100) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt64Field();
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v6 = self->_events;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v43;
    do
    {
      v10 = 0;
      do
      {
        if (*v43 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v42 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v8);
  }

  has = self->_has;
  if (has)
  {
    duration = self->_duration;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_14:
      if ((has & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_40;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_14;
  }

  totalEnergyBurnedInCanonicalUnit = self->_totalEnergyBurnedInCanonicalUnit;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_15:
    if ((has & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  totalDistanceInCanonicalUnit = self->_totalDistanceInCanonicalUnit;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_16:
    if ((has & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  goalType = self->_goalType;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_17:
    if ((has & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  goal = self->_goal;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_18:
    if ((has & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  totalBasalEnergyBurnedInCanonicalUnit = self->_totalBasalEnergyBurnedInCanonicalUnit;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_19:
    if ((has & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_44:
  totalSwimmingStrokeCountInCanonicalUnit = self->_totalSwimmingStrokeCountInCanonicalUnit;
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_20:
    totalFlightsClimbedInCanonicalUnit = self->_totalFlightsClimbedInCanonicalUnit;
    PBDataWriterWriteDoubleField();
  }

LABEL_21:
  if (self->_primaryActivity)
  {
    PBDataWriterWriteSubmessage();
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v14 = self->_subActivities;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v39;
    do
    {
      v18 = 0;
      do
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v38 + 1) + 8 * v18);
        PBDataWriterWriteSubmessage();
        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v16);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v20 = self->_zones;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v35;
    do
    {
      v24 = 0;
      do
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v34 + 1) + 8 * v24);
        PBDataWriterWriteSubmessage();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v22);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v18 = v4;
  if (self->_sample)
  {
    [v4 setSample:?];
    v4 = v18;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    *(v4 + 9) = self->_type;
    *(v4 + 60) |= 0x100u;
  }

  if ([(HDCodableWorkout *)self eventsCount])
  {
    [v18 clearEvents];
    v5 = [(HDCodableWorkout *)self eventsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(HDCodableWorkout *)self eventsAtIndex:i];
        [v18 addEvents:v8];
      }
    }
  }

  has = self->_has;
  if (has)
  {
    *(v18 + 1) = *&self->_duration;
    *(v18 + 60) |= 1u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_11:
      if ((has & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_33;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_11;
  }

  *(v18 + 6) = *&self->_totalEnergyBurnedInCanonicalUnit;
  *(v18 + 60) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v18 + 5) = *&self->_totalDistanceInCanonicalUnit;
  *(v18 + 60) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_13:
    if ((has & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v18 + 3) = self->_goalType;
  *(v18 + 60) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_14:
    if ((has & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v18 + 2) = *&self->_goal;
  *(v18 + 60) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_15:
    if ((has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v18 + 4) = *&self->_totalBasalEnergyBurnedInCanonicalUnit;
  *(v18 + 60) |= 8u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_16:
    if ((has & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_37:
  *(v18 + 8) = *&self->_totalSwimmingStrokeCountInCanonicalUnit;
  *(v18 + 60) |= 0x80u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_17:
    *(v18 + 7) = *&self->_totalFlightsClimbedInCanonicalUnit;
    *(v18 + 60) |= 0x40u;
  }

LABEL_18:
  if (self->_primaryActivity)
  {
    [v18 setPrimaryActivity:?];
  }

  if ([(HDCodableWorkout *)self subActivitiesCount])
  {
    [v18 clearSubActivities];
    v10 = [(HDCodableWorkout *)self subActivitiesCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(HDCodableWorkout *)self subActivitiesAtIndex:j];
        [v18 addSubActivities:v13];
      }
    }
  }

  if ([(HDCodableWorkout *)self zonesCount])
  {
    [v18 clearZones];
    v14 = [(HDCodableWorkout *)self zonesCount];
    if (v14)
    {
      v15 = v14;
      for (k = 0; k != v15; ++k)
      {
        v17 = [(HDCodableWorkout *)self zonesAtIndex:k];
        [v18 addZones:v17];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HDCodableSample *)self->_sample copyWithZone:a3];
  v7 = *(v5 + 96);
  *(v5 + 96) = v6;

  if ((*&self->_has & 0x100) != 0)
  {
    *(v5 + 72) = self->_type;
    *(v5 + 120) |= 0x100u;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v8 = self->_events;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v40;
    do
    {
      v12 = 0;
      do
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v39 + 1) + 8 * v12) copyWithZone:a3];
        [v5 addEvents:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v10);
  }

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_duration;
    *(v5 + 120) |= 1u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_12:
      if ((has & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_36;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_12;
  }

  *(v5 + 48) = self->_totalEnergyBurnedInCanonicalUnit;
  *(v5 + 120) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_13:
    if ((has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v5 + 40) = self->_totalDistanceInCanonicalUnit;
  *(v5 + 120) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v5 + 24) = self->_goalType;
  *(v5 + 120) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_15:
    if ((has & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v5 + 16) = self->_goal;
  *(v5 + 120) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_16:
    if ((has & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v5 + 32) = self->_totalBasalEnergyBurnedInCanonicalUnit;
  *(v5 + 120) |= 8u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_17:
    if ((has & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_40:
  *(v5 + 64) = self->_totalSwimmingStrokeCountInCanonicalUnit;
  *(v5 + 120) |= 0x80u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_18:
    *(v5 + 56) = self->_totalFlightsClimbedInCanonicalUnit;
    *(v5 + 120) |= 0x40u;
  }

LABEL_19:
  v15 = [(HDCodableWorkoutActivity *)self->_primaryActivity copyWithZone:a3];
  v16 = *(v5 + 88);
  *(v5 + 88) = v15;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v17 = self->_subActivities;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v36;
    do
    {
      v21 = 0;
      do
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v35 + 1) + 8 * v21) copyWithZone:a3];
        [v5 addSubActivities:v22];

        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v19);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = self->_zones;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v32;
    do
    {
      v27 = 0;
      do
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v31 + 1) + 8 * v27) copyWithZone:{a3, v31}];
        [v5 addZones:v28];

        ++v27;
      }

      while (v25 != v27);
      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v25);
  }

  v29 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  sample = self->_sample;
  if (sample | *(v4 + 12))
  {
    if (![(HDCodableSample *)sample isEqual:?])
    {
      goto LABEL_58;
    }
  }

  has = self->_has;
  v7 = *(v4 + 60);
  if ((has & 0x100) != 0)
  {
    if ((*(v4 + 60) & 0x100) == 0 || self->_type != *(v4 + 9))
    {
      goto LABEL_58;
    }
  }

  else if ((*(v4 + 60) & 0x100) != 0)
  {
    goto LABEL_58;
  }

  events = self->_events;
  if (events | *(v4 + 10))
  {
    if (![(NSMutableArray *)events isEqual:?])
    {
LABEL_58:
      v12 = 0;
      goto LABEL_59;
    }

    has = self->_has;
    v7 = *(v4 + 60);
  }

  if (has)
  {
    if ((v7 & 1) == 0 || self->_duration != *(v4 + 1))
    {
      goto LABEL_58;
    }
  }

  else if (v7)
  {
    goto LABEL_58;
  }

  if ((has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_totalEnergyBurnedInCanonicalUnit != *(v4 + 6))
    {
      goto LABEL_58;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_totalDistanceInCanonicalUnit != *(v4 + 5))
    {
      goto LABEL_58;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_goalType != *(v4 + 3))
    {
      goto LABEL_58;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_goal != *(v4 + 2))
    {
      goto LABEL_58;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_totalBasalEnergyBurnedInCanonicalUnit != *(v4 + 4))
    {
      goto LABEL_58;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_totalSwimmingStrokeCountInCanonicalUnit != *(v4 + 8))
    {
      goto LABEL_58;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_totalFlightsClimbedInCanonicalUnit != *(v4 + 7))
    {
      goto LABEL_58;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_58;
  }

  primaryActivity = self->_primaryActivity;
  if (primaryActivity | *(v4 + 11) && ![(HDCodableWorkoutActivity *)primaryActivity isEqual:?])
  {
    goto LABEL_58;
  }

  subActivities = self->_subActivities;
  if (subActivities | *(v4 + 13))
  {
    if (![(NSMutableArray *)subActivities isEqual:?])
    {
      goto LABEL_58;
    }
  }

  zones = self->_zones;
  if (zones | *(v4 + 14))
  {
    v12 = [(NSMutableArray *)zones isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_59:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(HDCodableSample *)self->_sample hash];
  if ((*&self->_has & 0x100) != 0)
  {
    v4 = 2654435761 * self->_type;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSMutableArray *)self->_events hash];
  has = self->_has;
  if (has)
  {
    duration = self->_duration;
    if (duration < 0.0)
    {
      duration = -duration;
    }

    *v6.i64 = floor(duration + 0.5);
    v11 = (duration - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v12), v7, v6);
    v9 = 2654435761u * *v6.i64;
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

  if ((has & 0x20) != 0)
  {
    totalEnergyBurnedInCanonicalUnit = self->_totalEnergyBurnedInCanonicalUnit;
    if (totalEnergyBurnedInCanonicalUnit < 0.0)
    {
      totalEnergyBurnedInCanonicalUnit = -totalEnergyBurnedInCanonicalUnit;
    }

    *v6.i64 = floor(totalEnergyBurnedInCanonicalUnit + 0.5);
    v15 = (totalEnergyBurnedInCanonicalUnit - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v16), v7, v6);
    v13 = 2654435761u * *v6.i64;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v13 += v15;
      }
    }

    else
    {
      v13 -= fabs(v15);
    }
  }

  else
  {
    v13 = 0;
  }

  if ((has & 0x10) != 0)
  {
    totalDistanceInCanonicalUnit = self->_totalDistanceInCanonicalUnit;
    if (totalDistanceInCanonicalUnit < 0.0)
    {
      totalDistanceInCanonicalUnit = -totalDistanceInCanonicalUnit;
    }

    *v6.i64 = floor(totalDistanceInCanonicalUnit + 0.5);
    v19 = (totalDistanceInCanonicalUnit - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v20), v7, v6);
    v17 = 2654435761u * *v6.i64;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v17 += v19;
      }
    }

    else
    {
      v17 -= fabs(v19);
    }
  }

  else
  {
    v17 = 0;
  }

  if ((has & 4) != 0)
  {
    v21 = 2654435761 * self->_goalType;
    if ((has & 2) != 0)
    {
      goto LABEL_30;
    }

LABEL_35:
    v25 = 0;
    goto LABEL_36;
  }

  v21 = 0;
  if ((has & 2) == 0)
  {
    goto LABEL_35;
  }

LABEL_30:
  goal = self->_goal;
  if (goal < 0.0)
  {
    goal = -goal;
  }

  *v6.i64 = floor(goal + 0.5);
  v23 = (goal - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v24.f64[0] = NAN;
  v24.f64[1] = NAN;
  v6 = vbslq_s8(vnegq_f64(v24), v7, v6);
  v25 = 2654435761u * *v6.i64;
  if (v23 >= 0.0)
  {
    if (v23 > 0.0)
    {
      v25 += v23;
    }
  }

  else
  {
    v25 -= fabs(v23);
  }

LABEL_36:
  if ((has & 8) != 0)
  {
    totalBasalEnergyBurnedInCanonicalUnit = self->_totalBasalEnergyBurnedInCanonicalUnit;
    if (totalBasalEnergyBurnedInCanonicalUnit < 0.0)
    {
      totalBasalEnergyBurnedInCanonicalUnit = -totalBasalEnergyBurnedInCanonicalUnit;
    }

    *v6.i64 = floor(totalBasalEnergyBurnedInCanonicalUnit + 0.5);
    v28 = (totalBasalEnergyBurnedInCanonicalUnit - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v29.f64[0] = NAN;
    v29.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v29), v7, v6);
    v26 = 2654435761u * *v6.i64;
    if (v28 >= 0.0)
    {
      if (v28 > 0.0)
      {
        v26 += v28;
      }
    }

    else
    {
      v26 -= fabs(v28);
    }
  }

  else
  {
    v26 = 0;
  }

  if ((has & 0x80) != 0)
  {
    totalSwimmingStrokeCountInCanonicalUnit = self->_totalSwimmingStrokeCountInCanonicalUnit;
    if (totalSwimmingStrokeCountInCanonicalUnit < 0.0)
    {
      totalSwimmingStrokeCountInCanonicalUnit = -totalSwimmingStrokeCountInCanonicalUnit;
    }

    *v6.i64 = floor(totalSwimmingStrokeCountInCanonicalUnit + 0.5);
    v32 = (totalSwimmingStrokeCountInCanonicalUnit - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v33.f64[0] = NAN;
    v33.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v33), v7, v6);
    v30 = 2654435761u * *v6.i64;
    if (v32 >= 0.0)
    {
      if (v32 > 0.0)
      {
        v30 += v32;
      }
    }

    else
    {
      v30 -= fabs(v32);
    }
  }

  else
  {
    v30 = 0;
  }

  if ((has & 0x40) != 0)
  {
    totalFlightsClimbedInCanonicalUnit = self->_totalFlightsClimbedInCanonicalUnit;
    if (totalFlightsClimbedInCanonicalUnit < 0.0)
    {
      totalFlightsClimbedInCanonicalUnit = -totalFlightsClimbedInCanonicalUnit;
    }

    *v6.i64 = floor(totalFlightsClimbedInCanonicalUnit + 0.5);
    v36 = (totalFlightsClimbedInCanonicalUnit - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v37.f64[0] = NAN;
    v37.f64[1] = NAN;
    v34 = 2654435761u * *vbslq_s8(vnegq_f64(v37), v7, v6).i64;
    if (v36 >= 0.0)
    {
      if (v36 > 0.0)
      {
        v34 += v36;
      }
    }

    else
    {
      v34 -= fabs(v36);
    }
  }

  else
  {
    v34 = 0;
  }

  v38 = v4 ^ v3 ^ v5 ^ v9;
  v39 = v13 ^ v17 ^ v21 ^ v25 ^ v26 ^ v30 ^ v34 ^ [(HDCodableWorkoutActivity *)self->_primaryActivity hash];
  v40 = v38 ^ v39 ^ [(NSMutableArray *)self->_subActivities hash];
  return v40 ^ [(NSMutableArray *)self->_zones hash];
}

- (void)mergeFrom:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  sample = self->_sample;
  v6 = *(v4 + 12);
  if (sample)
  {
    if (v6)
    {
      [(HDCodableSample *)sample mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(HDCodableWorkout *)self setSample:?];
  }

  if ((*(v4 + 60) & 0x100) != 0)
  {
    self->_type = *(v4 + 9);
    *&self->_has |= 0x100u;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = *(v4 + 10);
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(HDCodableWorkout *)self addEvents:*(*(&v34 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v9);
  }

  v12 = *(v4 + 60);
  if (v12)
  {
    self->_duration = *(v4 + 1);
    *&self->_has |= 1u;
    v12 = *(v4 + 60);
    if ((v12 & 0x20) == 0)
    {
LABEL_17:
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_29;
    }
  }

  else if ((v12 & 0x20) == 0)
  {
    goto LABEL_17;
  }

  self->_totalEnergyBurnedInCanonicalUnit = *(v4 + 6);
  *&self->_has |= 0x20u;
  v12 = *(v4 + 60);
  if ((v12 & 0x10) == 0)
  {
LABEL_18:
    if ((v12 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_totalDistanceInCanonicalUnit = *(v4 + 5);
  *&self->_has |= 0x10u;
  v12 = *(v4 + 60);
  if ((v12 & 4) == 0)
  {
LABEL_19:
    if ((v12 & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_goalType = *(v4 + 3);
  *&self->_has |= 4u;
  v12 = *(v4 + 60);
  if ((v12 & 2) == 0)
  {
LABEL_20:
    if ((v12 & 8) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_goal = *(v4 + 2);
  *&self->_has |= 2u;
  v12 = *(v4 + 60);
  if ((v12 & 8) == 0)
  {
LABEL_21:
    if ((v12 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_totalBasalEnergyBurnedInCanonicalUnit = *(v4 + 4);
  *&self->_has |= 8u;
  v12 = *(v4 + 60);
  if ((v12 & 0x80) == 0)
  {
LABEL_22:
    if ((v12 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_33:
  self->_totalSwimmingStrokeCountInCanonicalUnit = *(v4 + 8);
  *&self->_has |= 0x80u;
  if ((*(v4 + 60) & 0x40) != 0)
  {
LABEL_23:
    self->_totalFlightsClimbedInCanonicalUnit = *(v4 + 7);
    *&self->_has |= 0x40u;
  }

LABEL_24:
  primaryActivity = self->_primaryActivity;
  v14 = *(v4 + 11);
  if (primaryActivity)
  {
    if (v14)
    {
      [(HDCodableWorkoutActivity *)primaryActivity mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(HDCodableWorkout *)self setPrimaryActivity:?];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = *(v4 + 13);
  v16 = [v15 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v31;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(HDCodableWorkout *)self addSubActivities:*(*(&v30 + 1) + 8 * j)];
      }

      v17 = [v15 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v17);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v20 = *(v4 + 14);
  v21 = [v20 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v27;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(HDCodableWorkout *)self addZones:*(*(&v26 + 1) + 8 * k), v26];
      }

      v22 = [v20 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v22);
  }

  v25 = *MEMORY[0x277D85DE8];
}

@end