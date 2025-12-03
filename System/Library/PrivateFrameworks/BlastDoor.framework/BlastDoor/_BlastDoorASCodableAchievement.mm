@interface _BlastDoorASCodableAchievement
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDoubleValue:(BOOL)value;
- (void)setHasIntValue:(BOOL)value;
- (void)setHasWorkoutActivityType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation _BlastDoorASCodableAchievement

- (void)setHasDoubleValue:(BOOL)value
{
  if (value)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIntValue:(BOOL)value
{
  if (value)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasWorkoutActivityType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = _BlastDoorASCodableAchievement;
  v4 = [(_BlastDoorASCodableAchievement *)&v9 description];
  dictionaryRepresentation = [(_BlastDoorASCodableAchievement *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  sample = self->_sample;
  if (sample)
  {
    dictionaryRepresentation = [(_BlastDoorASCodableSample *)sample dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"sample"];
  }

  has = self->_has;
  if (has)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_completedDate];
    [dictionary setObject:v11 forKey:@"completedDate"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_doubleValue];
  [dictionary setObject:v12 forKey:@"doubleValue"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_17:
  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_intValue];
  [dictionary setObject:v13 forKey:@"intValue"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_workoutActivityType];
    [dictionary setObject:v7 forKey:@"workoutActivityType"];
  }

LABEL_8:
  definitionIdentifier = self->_definitionIdentifier;
  if (definitionIdentifier)
  {
    [dictionary setObject:definitionIdentifier forKey:@"definitionIdentifier"];
  }

  templateUniqueName = self->_templateUniqueName;
  if (templateUniqueName)
  {
    [dictionary setObject:templateUniqueName forKey:@"templateUniqueName"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_sample)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  has = self->_has;
  if (has)
  {
    completedDate = self->_completedDate;
    PBDataWriterWriteDoubleField();
    toCopy = v10;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  doubleValue = self->_doubleValue;
  PBDataWriterWriteDoubleField();
  toCopy = v10;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_17:
  intValue = self->_intValue;
  PBDataWriterWriteInt64Field();
  toCopy = v10;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    workoutActivityType = self->_workoutActivityType;
    PBDataWriterWriteInt64Field();
    toCopy = v10;
  }

LABEL_8:
  if (self->_definitionIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if (self->_templateUniqueName)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_sample)
  {
    [toCopy setSample:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = *&self->_completedDate;
    *(toCopy + 64) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 2) = *&self->_doubleValue;
  *(toCopy + 64) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_17:
  *(toCopy + 3) = self->_intValue;
  *(toCopy + 64) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    *(toCopy + 4) = self->_workoutActivityType;
    *(toCopy + 64) |= 8u;
  }

LABEL_8:
  if (self->_definitionIdentifier)
  {
    [v6 setDefinitionIdentifier:?];
    toCopy = v6;
  }

  if (self->_templateUniqueName)
  {
    [v6 setTemplateUniqueName:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_BlastDoorASCodableSample *)self->_sample copyWithZone:zone];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_completedDate;
    *(v5 + 64) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 24) = self->_intValue;
      *(v5 + 64) |= 4u;
      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_doubleValue;
  *(v5 + 64) |= 2u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 8) != 0)
  {
LABEL_5:
    *(v5 + 32) = self->_workoutActivityType;
    *(v5 + 64) |= 8u;
  }

LABEL_6:
  v9 = [(NSString *)self->_definitionIdentifier copyWithZone:zone];
  v10 = *(v5 + 40);
  *(v5 + 40) = v9;

  v11 = [(NSString *)self->_templateUniqueName copyWithZone:zone];
  v12 = *(v5 + 56);
  *(v5 + 56) = v11;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  sample = self->_sample;
  if (sample | *(equalCopy + 6))
  {
    if (![(_BlastDoorASCodableSample *)sample isEqual:?])
    {
      goto LABEL_28;
    }
  }

  v6 = *(equalCopy + 64);
  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_completedDate != *(equalCopy + 1))
    {
      goto LABEL_28;
    }
  }

  else if (*(equalCopy + 64))
  {
LABEL_28:
    v9 = 0;
    goto LABEL_29;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 64) & 2) == 0 || self->_doubleValue != *(equalCopy + 2))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 64) & 2) != 0)
  {
    goto LABEL_28;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 64) & 4) == 0 || self->_intValue != *(equalCopy + 3))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 64) & 4) != 0)
  {
    goto LABEL_28;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 64) & 8) == 0 || self->_workoutActivityType != *(equalCopy + 4))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 64) & 8) != 0)
  {
    goto LABEL_28;
  }

  definitionIdentifier = self->_definitionIdentifier;
  if (definitionIdentifier | *(equalCopy + 5) && ![(NSString *)definitionIdentifier isEqual:?])
  {
    goto LABEL_28;
  }

  templateUniqueName = self->_templateUniqueName;
  if (templateUniqueName | *(equalCopy + 7))
  {
    v9 = [(NSString *)templateUniqueName isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_29:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(_BlastDoorASCodableSample *)self->_sample hash];
  if (*&self->_has)
  {
    completedDate = self->_completedDate;
    if (completedDate < 0.0)
    {
      completedDate = -completedDate;
    }

    *v4.i64 = floor(completedDate + 0.5);
    v8 = (completedDate - *v4.i64) * 1.84467441e19;
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
    doubleValue = self->_doubleValue;
    if (doubleValue < 0.0)
    {
      doubleValue = -doubleValue;
    }

    *v4.i64 = floor(doubleValue + 0.5);
    v12 = (doubleValue - *v4.i64) * 1.84467441e19;
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

  if ((*&self->_has & 4) != 0)
  {
    v14 = 2654435761 * self->_intValue;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_19;
    }

LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

  v14 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  v15 = 2654435761 * self->_workoutActivityType;
LABEL_22:
  v16 = v6 ^ v3 ^ v10 ^ v14 ^ v15 ^ [(NSString *)self->_definitionIdentifier hash];
  return v16 ^ [(NSString *)self->_templateUniqueName hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  sample = self->_sample;
  v6 = *(fromCopy + 6);
  v8 = fromCopy;
  if (sample)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(_BlastDoorASCodableSample *)sample mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(_BlastDoorASCodableAchievement *)self setSample:?];
  }

  fromCopy = v8;
LABEL_7:
  v7 = *(fromCopy + 64);
  if (v7)
  {
    self->_completedDate = *(fromCopy + 1);
    *&self->_has |= 1u;
    v7 = *(fromCopy + 64);
    if ((v7 & 2) == 0)
    {
LABEL_9:
      if ((v7 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }
  }

  else if ((*(fromCopy + 64) & 2) == 0)
  {
    goto LABEL_9;
  }

  self->_doubleValue = *(fromCopy + 2);
  *&self->_has |= 2u;
  v7 = *(fromCopy + 64);
  if ((v7 & 4) == 0)
  {
LABEL_10:
    if ((v7 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_21:
  self->_intValue = *(fromCopy + 3);
  *&self->_has |= 4u;
  if ((*(fromCopy + 64) & 8) != 0)
  {
LABEL_11:
    self->_workoutActivityType = *(fromCopy + 4);
    *&self->_has |= 8u;
  }

LABEL_12:
  if (*(fromCopy + 5))
  {
    [(_BlastDoorASCodableAchievement *)self setDefinitionIdentifier:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 7))
  {
    [(_BlastDoorASCodableAchievement *)self setTemplateUniqueName:?];
  }

  MEMORY[0x2821F96F8]();
}

@end