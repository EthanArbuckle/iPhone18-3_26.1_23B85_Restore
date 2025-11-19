@interface FCCAlmostThereConfigurationProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCoalescingRules:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasGoalType:(BOOL)a3;
- (void)setHasMinimumPercentageComplete:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation FCCAlmostThereConfigurationProtobuf

- (void)setHasMinimumPercentageComplete:(BOOL)a3
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

- (void)addCoalescingRules:(id)a3
{
  v4 = a3;
  coalescingRules = self->_coalescingRules;
  v8 = v4;
  if (!coalescingRules)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_coalescingRules;
    self->_coalescingRules = v6;

    v4 = v8;
    coalescingRules = self->_coalescingRules;
  }

  [(NSMutableArray *)coalescingRules addObject:v4];
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

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = FCCAlmostThereConfigurationProtobuf;
  v4 = [(FCCAlmostThereConfigurationProtobuf *)&v8 description];
  v5 = [(FCCAlmostThereConfigurationProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_minimumPercentageComplete];
    [v4 setObject:v7 forKey:@"minimumPercentageComplete"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_goalBufferPercentage];
    [v4 setObject:v8 forKey:@"goalBufferPercentage"];
  }

  if ([(NSMutableArray *)self->_coalescingRules count])
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_coalescingRules, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = self->_coalescingRules;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:v15];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    [v4 setObject:v9 forKey:@"coalescingRules"];
  }

  timeOfDayRule = self->_timeOfDayRule;
  if (timeOfDayRule)
  {
    v17 = [(FCCTimeOfDayRuleProtobuf *)timeOfDayRule dictionaryRepresentation];
    [v4 setObject:v17 forKey:@"timeOfDayRule"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithInt:self->_goalType];
    [v4 setObject:v18 forKey:@"goalType"];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    minimumPercentageComplete = self->_minimumPercentageComplete;
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if (has)
  {
    goalBufferPercentage = self->_goalBufferPercentage;
    PBDataWriterWriteDoubleField();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_coalescingRules;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  if (self->_timeOfDayRule)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 4) != 0)
  {
    goalType = self->_goalType;
    PBDataWriterWriteInt32Field();
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
    v4 = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 2) = *&self->_minimumPercentageComplete;
    *(v4 + 56) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = *&self->_goalBufferPercentage;
    *(v4 + 56) |= 1u;
  }

  if ([(FCCAlmostThereConfigurationProtobuf *)self coalescingRulesCount])
  {
    [v10 clearCoalescingRules];
    v6 = [(FCCAlmostThereConfigurationProtobuf *)self coalescingRulesCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(FCCAlmostThereConfigurationProtobuf *)self coalescingRulesAtIndex:i];
        [v10 addCoalescingRules:v9];
      }
    }
  }

  if (self->_timeOfDayRule)
  {
    [v10 setTimeOfDayRule:?];
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v10 + 8) = self->_goalType;
    *(v10 + 56) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_minimumPercentageComplete;
    *(v5 + 56) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_goalBufferPercentage;
    *(v5 + 56) |= 1u;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = self->_coalescingRules;
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

        v14 = [*(*(&v19 + 1) + 8 * i) copyWithZone:{a3, v19}];
        [v5 addCoalescingRules:v14];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v15 = [(FCCTimeOfDayRuleProtobuf *)self->_timeOfDayRule copyWithZone:a3];
  v16 = *(v5 + 48);
  *(v5 + 48) = v15;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 32) = self->_goalType;
    *(v5 + 56) |= 4u;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 5))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_22;
    }
  }

  v6 = *(v4 + 56);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 56) & 2) == 0 || self->_minimumPercentageComplete != *(v4 + 2))
    {
      goto LABEL_22;
    }
  }

  else if ((*(v4 + 56) & 2) != 0)
  {
LABEL_22:
    v9 = 0;
    goto LABEL_23;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_goalBufferPercentage != *(v4 + 1))
    {
      goto LABEL_22;
    }
  }

  else if (*(v4 + 56))
  {
    goto LABEL_22;
  }

  coalescingRules = self->_coalescingRules;
  if (coalescingRules | *(v4 + 3) && ![(NSMutableArray *)coalescingRules isEqual:?])
  {
    goto LABEL_22;
  }

  timeOfDayRule = self->_timeOfDayRule;
  if (timeOfDayRule | *(v4 + 6))
  {
    if (![(FCCTimeOfDayRuleProtobuf *)timeOfDayRule isEqual:?])
    {
      goto LABEL_22;
    }
  }

  v9 = (*(v4 + 56) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 56) & 4) == 0 || self->_goalType != *(v4 + 8))
    {
      goto LABEL_22;
    }

    v9 = 1;
  }

LABEL_23:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  if ((*&self->_has & 2) != 0)
  {
    minimumPercentageComplete = self->_minimumPercentageComplete;
    if (minimumPercentageComplete < 0.0)
    {
      minimumPercentageComplete = -minimumPercentageComplete;
    }

    *v4.i64 = floor(minimumPercentageComplete + 0.5);
    v8 = (minimumPercentageComplete - *v4.i64) * 1.84467441e19;
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
    goalBufferPercentage = self->_goalBufferPercentage;
    if (goalBufferPercentage < 0.0)
    {
      goalBufferPercentage = -goalBufferPercentage;
    }

    *v4.i64 = floor(goalBufferPercentage + 0.5);
    v12 = (goalBufferPercentage - *v4.i64) * 1.84467441e19;
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

  v14 = [(NSMutableArray *)self->_coalescingRules hash];
  v15 = [(FCCTimeOfDayRuleProtobuf *)self->_timeOfDayRule hash];
  if ((*&self->_has & 4) != 0)
  {
    v16 = 2654435761 * self->_goalType;
  }

  else
  {
    v16 = 0;
  }

  return v6 ^ v3 ^ v10 ^ v14 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 5))
  {
    [(FCCAlmostThereConfigurationProtobuf *)self setIdentifier:?];
  }

  v5 = *(v4 + 56);
  if ((v5 & 2) != 0)
  {
    self->_minimumPercentageComplete = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 56);
  }

  if (v5)
  {
    self->_goalBufferPercentage = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = *(v4 + 3);
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

        [(FCCAlmostThereConfigurationProtobuf *)self addCoalescingRules:*(*(&v14 + 1) + 8 * i), v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  timeOfDayRule = self->_timeOfDayRule;
  v12 = *(v4 + 6);
  if (timeOfDayRule)
  {
    if (v12)
    {
      [(FCCTimeOfDayRuleProtobuf *)timeOfDayRule mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(FCCAlmostThereConfigurationProtobuf *)self setTimeOfDayRule:?];
  }

  if ((*(v4 + 56) & 4) != 0)
  {
    self->_goalType = *(v4 + 8);
    *&self->_has |= 4u;
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end