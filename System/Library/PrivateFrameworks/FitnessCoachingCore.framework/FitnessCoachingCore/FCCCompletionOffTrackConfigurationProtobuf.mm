@interface FCCCompletionOffTrackConfigurationProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)allowedGoalTypesAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addCoalescingRules:(id)rules;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation FCCCompletionOffTrackConfigurationProtobuf

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = FCCCompletionOffTrackConfigurationProtobuf;
  [(FCCCompletionOffTrackConfigurationProtobuf *)&v3 dealloc];
}

- (void)addCoalescingRules:(id)rules
{
  rulesCopy = rules;
  coalescingRules = self->_coalescingRules;
  v8 = rulesCopy;
  if (!coalescingRules)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_coalescingRules;
    self->_coalescingRules = v6;

    rulesCopy = v8;
    coalescingRules = self->_coalescingRules;
  }

  [(NSMutableArray *)coalescingRules addObject:rulesCopy];
}

- (int)allowedGoalTypesAtIndex:(unint64_t)index
{
  p_allowedGoalTypes = &self->_allowedGoalTypes;
  count = self->_allowedGoalTypes.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_allowedGoalTypes->list[index];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = FCCCompletionOffTrackConfigurationProtobuf;
  v4 = [(FCCCompletionOffTrackConfigurationProtobuf *)&v8 description];
  dictionaryRepresentation = [(FCCCompletionOffTrackConfigurationProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_goalBufferPercentage];
    [v4 setObject:v6 forKey:@"goalBufferPercentage"];
  }

  if ([(NSMutableArray *)self->_coalescingRules count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_coalescingRules, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = self->_coalescingRules;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    [v4 setObject:v7 forKey:@"coalescingRules"];
  }

  percentageOfDayRule = self->_percentageOfDayRule;
  if (percentageOfDayRule)
  {
    dictionaryRepresentation2 = [(FCCPercentageOfDayRuleProtobuf *)percentageOfDayRule dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"percentageOfDayRule"];
  }

  v16 = PBRepeatedInt32NSArray();
  [v4 setObject:v16 forKey:@"allowedGoalTypes"];

  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)to
{
  v21 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    goalBufferPercentage = self->_goalBufferPercentage;
    PBDataWriterWriteDoubleField();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_coalescingRules;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if (self->_percentageOfDayRule)
  {
    PBDataWriterWriteSubmessage();
  }

  p_allowedGoalTypes = &self->_allowedGoalTypes;
  if (p_allowedGoalTypes->count)
  {
    v13 = 0;
    do
    {
      v14 = p_allowedGoalTypes->list[v13];
      PBDataWriterWriteInt32Field();
      ++v13;
    }

    while (v13 < p_allowedGoalTypes->count);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v12 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v12;
  }

  if (*&self->_has)
  {
    *(toCopy + 4) = *&self->_goalBufferPercentage;
    *(toCopy + 64) |= 1u;
  }

  if ([(FCCCompletionOffTrackConfigurationProtobuf *)self coalescingRulesCount])
  {
    [v12 clearCoalescingRules];
    coalescingRulesCount = [(FCCCompletionOffTrackConfigurationProtobuf *)self coalescingRulesCount];
    if (coalescingRulesCount)
    {
      v6 = coalescingRulesCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(FCCCompletionOffTrackConfigurationProtobuf *)self coalescingRulesAtIndex:i];
        [v12 addCoalescingRules:v8];
      }
    }
  }

  if (self->_percentageOfDayRule)
  {
    [v12 setPercentageOfDayRule:?];
  }

  if ([(FCCCompletionOffTrackConfigurationProtobuf *)self allowedGoalTypesCount])
  {
    [v12 clearAllowedGoalTypes];
    allowedGoalTypesCount = [(FCCCompletionOffTrackConfigurationProtobuf *)self allowedGoalTypesCount];
    if (allowedGoalTypesCount)
    {
      v10 = allowedGoalTypesCount;
      for (j = 0; j != v10; ++j)
      {
        [v12 addAllowedGoalTypes:{-[FCCCompletionOffTrackConfigurationProtobuf allowedGoalTypesAtIndex:](self, "allowedGoalTypesAtIndex:", j)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_goalBufferPercentage;
    *(v5 + 64) |= 1u;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_coalescingRules;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v18 + 1) + 8 * v12) copyWithZone:{zone, v18}];
        [v5 addCoalescingRules:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = [(FCCPercentageOfDayRuleProtobuf *)self->_percentageOfDayRule copyWithZone:zone];
  v15 = *(v5 + 56);
  *(v5 + 56) = v14;

  PBRepeatedInt32Copy();
  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 6))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_14;
    }
  }

  v6 = *(equalCopy + 64);
  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_goalBufferPercentage != *(equalCopy + 4))
    {
      goto LABEL_14;
    }
  }

  else if (*(equalCopy + 64))
  {
LABEL_14:
    IsEqual = 0;
    goto LABEL_15;
  }

  coalescingRules = self->_coalescingRules;
  if (coalescingRules | *(equalCopy + 5) && ![(NSMutableArray *)coalescingRules isEqual:?])
  {
    goto LABEL_14;
  }

  percentageOfDayRule = self->_percentageOfDayRule;
  if (percentageOfDayRule | *(equalCopy + 7))
  {
    if (![(FCCPercentageOfDayRuleProtobuf *)percentageOfDayRule isEqual:?])
    {
      goto LABEL_14;
    }
  }

  IsEqual = PBRepeatedInt32IsEqual();
LABEL_15:

  return IsEqual;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  if (*&self->_has)
  {
    goalBufferPercentage = self->_goalBufferPercentage;
    if (goalBufferPercentage < 0.0)
    {
      goalBufferPercentage = -goalBufferPercentage;
    }

    *v4.i64 = floor(goalBufferPercentage + 0.5);
    v8 = (goalBufferPercentage - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
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

  v10 = v6 ^ v3;
  v11 = [(NSMutableArray *)self->_coalescingRules hash];
  v12 = v10 ^ v11 ^ [(FCCPercentageOfDayRuleProtobuf *)self->_percentageOfDayRule hash];
  return v12 ^ PBRepeatedInt32Hash();
}

- (void)mergeFrom:(id)from
{
  v21 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 6))
  {
    [(FCCCompletionOffTrackConfigurationProtobuf *)self setIdentifier:?];
  }

  if (*(fromCopy + 64))
  {
    self->_goalBufferPercentage = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = *(fromCopy + 5);
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(FCCCompletionOffTrackConfigurationProtobuf *)self addCoalescingRules:*(*(&v16 + 1) + 8 * i), v16];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  percentageOfDayRule = self->_percentageOfDayRule;
  v11 = *(fromCopy + 7);
  if (percentageOfDayRule)
  {
    if (v11)
    {
      [(FCCPercentageOfDayRuleProtobuf *)percentageOfDayRule mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(FCCCompletionOffTrackConfigurationProtobuf *)self setPercentageOfDayRule:?];
  }

  allowedGoalTypesCount = [fromCopy allowedGoalTypesCount];
  if (allowedGoalTypesCount)
  {
    v13 = allowedGoalTypesCount;
    for (j = 0; j != v13; ++j)
    {
      -[FCCCompletionOffTrackConfigurationProtobuf addAllowedGoalTypes:](self, "addAllowedGoalTypes:", [fromCopy allowedGoalTypesAtIndex:j]);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end