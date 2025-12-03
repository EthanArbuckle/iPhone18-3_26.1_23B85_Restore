@interface _BlastDoorASCodableActivityDataPreview
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAchievements:(id)achievements;
- (void)addWorkouts:(id)workouts;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _BlastDoorASCodableActivityDataPreview

- (void)addWorkouts:(id)workouts
{
  workoutsCopy = workouts;
  workouts = self->_workouts;
  v8 = workoutsCopy;
  if (!workouts)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_workouts;
    self->_workouts = v6;

    workoutsCopy = v8;
    workouts = self->_workouts;
  }

  [(NSMutableArray *)workouts addObject:workoutsCopy];
}

- (void)addAchievements:(id)achievements
{
  achievementsCopy = achievements;
  achievements = self->_achievements;
  v8 = achievementsCopy;
  if (!achievements)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_achievements;
    self->_achievements = v6;

    achievementsCopy = v8;
    achievements = self->_achievements;
  }

  [(NSMutableArray *)achievements addObject:achievementsCopy];
}

- (id)description
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = _BlastDoorASCodableActivityDataPreview;
  v4 = [(_BlastDoorASCodableActivityDataPreview *)&v9 description];
  dictionaryRepresentation = [(_BlastDoorASCodableActivityDataPreview *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)dictionaryRepresentation
{
  v33 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  activitySnapshot = self->_activitySnapshot;
  if (activitySnapshot)
  {
    dictionaryRepresentation = [(_BlastDoorASCodableActivitySnapshot *)activitySnapshot dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"activitySnapshot"];
  }

  if ([(NSMutableArray *)self->_workouts count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_workouts, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v7 = self->_workouts;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v29 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation2 = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation2];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v29 objects:v28 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"workouts"];
  }

  if ([(NSMutableArray *)self->_achievements count])
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_achievements, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = self->_achievements;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v24 objects:v23 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation3 = [*(*(&v24 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation3];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v24 objects:v23 count:16];
      }

      while (v16);
    }

    [dictionary setObject:v13 forKey:@"achievements"];
  }

  if (*&self->_has)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithDouble:self->_date];
    [dictionary setObject:v20 forKey:@"date"];
  }

  v21 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v29 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_activitySnapshot)
  {
    PBDataWriterWriteSubmessage();
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = self->_workouts;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v25 objects:v24 count:16];
    }

    while (v7);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = self->_achievements;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v20 objects:v19 count:16];
    }

    while (v13);
  }

  if (*&self->_has)
  {
    date = self->_date;
    PBDataWriterWriteDoubleField();
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_activitySnapshot)
  {
    [toCopy setActivitySnapshot:?];
  }

  if ([(_BlastDoorASCodableActivityDataPreview *)self workoutsCount])
  {
    [toCopy clearWorkouts];
    workoutsCount = [(_BlastDoorASCodableActivityDataPreview *)self workoutsCount];
    if (workoutsCount)
    {
      v5 = workoutsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(_BlastDoorASCodableActivityDataPreview *)self workoutsAtIndex:i];
        [toCopy addWorkouts:v7];
      }
    }
  }

  if ([(_BlastDoorASCodableActivityDataPreview *)self achievementsCount])
  {
    [toCopy clearAchievements];
    achievementsCount = [(_BlastDoorASCodableActivityDataPreview *)self achievementsCount];
    if (achievementsCount)
    {
      v9 = achievementsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(_BlastDoorASCodableActivityDataPreview *)self achievementsAtIndex:j];
        [toCopy addAchievements:v11];
      }
    }
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_date;
    *(toCopy + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_BlastDoorASCodableActivitySnapshot *)self->_activitySnapshot copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = self->_workouts;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v28 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      v12 = 0;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v28 + 1) + 8 * v12) copyWithZone:zone];
        [v5 addWorkouts:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v28 objects:v27 count:16];
    }

    while (v10);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = self->_achievements;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v23 + 1) + 8 * v18) copyWithZone:zone];
        [v5 addAchievements:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v22 count:16];
    }

    while (v16);
  }

  if (*&self->_has)
  {
    *(v5 + 8) = self->_date;
    *(v5 + 40) |= 1u;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  activitySnapshot = self->_activitySnapshot;
  if (activitySnapshot | *(equalCopy + 3))
  {
    if (![(_BlastDoorASCodableActivitySnapshot *)activitySnapshot isEqual:?])
    {
      goto LABEL_12;
    }
  }

  workouts = self->_workouts;
  if (workouts | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)workouts isEqual:?])
    {
      goto LABEL_12;
    }
  }

  achievements = self->_achievements;
  if (achievements | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)achievements isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(equalCopy + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) != 0 && self->_date == *(equalCopy + 1))
    {
      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(_BlastDoorASCodableActivitySnapshot *)self->_activitySnapshot hash];
  v4 = [(NSMutableArray *)self->_workouts hash];
  v5 = [(NSMutableArray *)self->_achievements hash];
  if (*&self->_has)
  {
    date = self->_date;
    if (date < 0.0)
    {
      date = -date;
    }

    *v6.i64 = floor(date + 0.5);
    v10 = (date - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v7, v6).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v8;
}

- (void)mergeFrom:(id)from
{
  v28 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  activitySnapshot = self->_activitySnapshot;
  v6 = *(fromCopy + 3);
  if (activitySnapshot)
  {
    if (v6)
    {
      [(_BlastDoorASCodableActivitySnapshot *)activitySnapshot mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(_BlastDoorASCodableActivityDataPreview *)self setActivitySnapshot:?];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = *(fromCopy + 4);
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(_BlastDoorASCodableActivityDataPreview *)self addWorkouts:*(*(&v24 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v23 count:16];
    }

    while (v9);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = *(fromCopy + 2);
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(_BlastDoorASCodableActivityDataPreview *)self addAchievements:*(*(&v19 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v14);
  }

  if (*(fromCopy + 40))
  {
    self->_date = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end