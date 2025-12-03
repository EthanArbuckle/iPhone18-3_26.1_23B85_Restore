@interface FCCAtypicalDayConfigurationProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)allowedGoalTypesAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasMinimumBehindPercentage:(BOOL)percentage;
- (void)writeTo:(id)to;
@end

@implementation FCCAtypicalDayConfigurationProtobuf

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = FCCAtypicalDayConfigurationProtobuf;
  [(FCCAtypicalDayConfigurationProtobuf *)&v3 dealloc];
}

- (void)setHasMinimumBehindPercentage:(BOOL)percentage
{
  if (percentage)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
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
  v8.super_class = FCCAtypicalDayConfigurationProtobuf;
  v4 = [(FCCAtypicalDayConfigurationProtobuf *)&v8 description];
  dictionaryRepresentation = [(FCCAtypicalDayConfigurationProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_minimumAheadPercentage];
    [v4 setObject:v7 forKey:@"minimumAheadPercentage"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_minimumBehindPercentage];
    [v4 setObject:v8 forKey:@"minimumBehindPercentage"];
  }

  percentageOfDayRule = self->_percentageOfDayRule;
  if (percentageOfDayRule)
  {
    dictionaryRepresentation = [(FCCPercentageOfDayRuleProtobuf *)percentageOfDayRule dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"percentageOfDayRule"];
  }

  v11 = PBRepeatedInt32NSArray();
  [v4 setObject:v11 forKey:@"allowedGoalTypes"];

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v11 = toCopy;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  has = self->_has;
  if (has)
  {
    minimumAheadPercentage = self->_minimumAheadPercentage;
    PBDataWriterWriteDoubleField();
    toCopy = v11;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    minimumBehindPercentage = self->_minimumBehindPercentage;
    PBDataWriterWriteDoubleField();
    toCopy = v11;
  }

  if (self->_percentageOfDayRule)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v11;
  }

  p_allowedGoalTypes = &self->_allowedGoalTypes;
  if (p_allowedGoalTypes->count)
  {
    v9 = 0;
    do
    {
      v10 = p_allowedGoalTypes->list[v9];
      PBDataWriterWriteInt32Field();
      toCopy = v11;
      ++v9;
    }

    while (v9 < p_allowedGoalTypes->count);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v9;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 4) = *&self->_minimumAheadPercentage;
    *(toCopy + 64) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 5) = *&self->_minimumBehindPercentage;
    *(toCopy + 64) |= 2u;
  }

  if (self->_percentageOfDayRule)
  {
    [v9 setPercentageOfDayRule:?];
  }

  if ([(FCCAtypicalDayConfigurationProtobuf *)self allowedGoalTypesCount])
  {
    [v9 clearAllowedGoalTypes];
    allowedGoalTypesCount = [(FCCAtypicalDayConfigurationProtobuf *)self allowedGoalTypesCount];
    if (allowedGoalTypesCount)
    {
      v7 = allowedGoalTypesCount;
      for (i = 0; i != v7; ++i)
      {
        [v9 addAllowedGoalTypes:{-[FCCAtypicalDayConfigurationProtobuf allowedGoalTypesAtIndex:](self, "allowedGoalTypesAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 32) = self->_minimumAheadPercentage;
    *(v5 + 64) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 40) = self->_minimumBehindPercentage;
    *(v5 + 64) |= 2u;
  }

  v9 = [(FCCPercentageOfDayRuleProtobuf *)self->_percentageOfDayRule copyWithZone:zone];
  v10 = *(v5 + 56);
  *(v5 + 56) = v9;

  PBRepeatedInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 6))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v6 = *(equalCopy + 64);
  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_minimumAheadPercentage != *(equalCopy + 4))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 64))
  {
LABEL_17:
    IsEqual = 0;
    goto LABEL_18;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 64) & 2) == 0 || self->_minimumBehindPercentage != *(equalCopy + 5))
    {
      goto LABEL_17;
    }
  }

  else if ((*(equalCopy + 64) & 2) != 0)
  {
    goto LABEL_17;
  }

  percentageOfDayRule = self->_percentageOfDayRule;
  if (percentageOfDayRule | *(equalCopy + 7) && ![(FCCPercentageOfDayRuleProtobuf *)percentageOfDayRule isEqual:?])
  {
    goto LABEL_17;
  }

  IsEqual = PBRepeatedInt32IsEqual();
LABEL_18:

  return IsEqual;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  if (*&self->_has)
  {
    minimumAheadPercentage = self->_minimumAheadPercentage;
    if (minimumAheadPercentage < 0.0)
    {
      minimumAheadPercentage = -minimumAheadPercentage;
    }

    *v4.i64 = floor(minimumAheadPercentage + 0.5);
    v8 = (minimumAheadPercentage - *v4.i64) * 1.84467441e19;
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
    minimumBehindPercentage = self->_minimumBehindPercentage;
    if (minimumBehindPercentage < 0.0)
    {
      minimumBehindPercentage = -minimumBehindPercentage;
    }

    *v4.i64 = floor(minimumBehindPercentage + 0.5);
    v12 = (minimumBehindPercentage - *v4.i64) * 1.84467441e19;
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

  v14 = v6 ^ v3 ^ v10 ^ [(FCCPercentageOfDayRuleProtobuf *)self->_percentageOfDayRule hash];
  return v14 ^ PBRepeatedInt32Hash();
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v11 = fromCopy;
  if (*(fromCopy + 6))
  {
    [(FCCAtypicalDayConfigurationProtobuf *)self setIdentifier:?];
    fromCopy = v11;
  }

  v5 = *(fromCopy + 64);
  if (v5)
  {
    self->_minimumAheadPercentage = fromCopy[4];
    *&self->_has |= 1u;
    v5 = *(fromCopy + 64);
  }

  if ((v5 & 2) != 0)
  {
    self->_minimumBehindPercentage = fromCopy[5];
    *&self->_has |= 2u;
  }

  percentageOfDayRule = self->_percentageOfDayRule;
  v7 = *(fromCopy + 7);
  if (percentageOfDayRule)
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    [(FCCPercentageOfDayRuleProtobuf *)percentageOfDayRule mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    [(FCCAtypicalDayConfigurationProtobuf *)self setPercentageOfDayRule:?];
  }

  fromCopy = v11;
LABEL_13:
  allowedGoalTypesCount = [fromCopy allowedGoalTypesCount];
  if (allowedGoalTypesCount)
  {
    v9 = allowedGoalTypesCount;
    for (i = 0; i != v9; ++i)
    {
      -[FCCAtypicalDayConfigurationProtobuf addAllowedGoalTypes:](self, "addAllowedGoalTypes:", [v11 allowedGoalTypesAtIndex:i]);
    }
  }
}

@end