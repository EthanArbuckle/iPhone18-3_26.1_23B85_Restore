@interface BMPBRemindersContentEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCompletionDateTimestamp:(BOOL)timestamp;
- (void)setHasDueDateTimestamp:(BOOL)timestamp;
- (void)setHasIsAllDay:(BOOL)day;
- (void)setHasPriority:(BOOL)priority;
- (void)writeTo:(id)to;
@end

@implementation BMPBRemindersContentEvent

- (void)setHasIsAllDay:(BOOL)day
{
  if (day)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasCompletionDateTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasDueDateTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasPriority:(BOOL)priority
{
  if (priority)
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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBRemindersContentEvent;
  v4 = [(BMPBRemindersContentEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBRemindersContentEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  uniqueId = self->_uniqueId;
  if (uniqueId)
  {
    [dictionary setObject:uniqueId forKey:@"uniqueId"];
  }

  domainId = self->_domainId;
  if (domainId)
  {
    [v4 setObject:domainId forKey:@"domainId"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
    [v4 setObject:v7 forKey:@"absoluteTimestamp"];
  }

  title = self->_title;
  if (title)
  {
    [v4 setObject:title forKey:@"title"];
  }

  notes = self->_notes;
  if (notes)
  {
    [v4 setObject:notes forKey:@"notes"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAllDay];
    [v4 setObject:v15 forKey:@"isAllDay"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_13:
      if ((has & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_25;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithDouble:self->_completionDateTimestamp];
  [v4 setObject:v16 forKey:@"completionDateTimestamp"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_14:
    if ((has & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_25:
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:self->_dueDateTimestamp];
  [v4 setObject:v17 forKey:@"dueDateTimestamp"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_15:
    v11 = [MEMORY[0x1E696AD98] numberWithInt:self->_priority];
    [v4 setObject:v11 forKey:@"priority"];
  }

LABEL_16:
  contentProtection = self->_contentProtection;
  if (contentProtection)
  {
    [v4 setObject:contentProtection forKey:@"contentProtection"];
  }

  personaId = self->_personaId;
  if (personaId)
  {
    [v4 setObject:personaId forKey:@"personaId"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v11 = toCopy;
  if (self->_uniqueId)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  if (self->_domainId)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    toCopy = v11;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  if (self->_notes)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    isAllDay = self->_isAllDay;
    PBDataWriterWriteBOOLField();
    toCopy = v11;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_13:
      if ((has & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_25;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

  completionDateTimestamp = self->_completionDateTimestamp;
  PBDataWriterWriteDoubleField();
  toCopy = v11;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_14:
    if ((has & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_25:
  dueDateTimestamp = self->_dueDateTimestamp;
  PBDataWriterWriteDoubleField();
  toCopy = v11;
  if ((*&self->_has & 8) != 0)
  {
LABEL_15:
    priority = self->_priority;
    PBDataWriterWriteSint32Field();
    toCopy = v11;
  }

LABEL_16:
  if (self->_contentProtection)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  if (self->_personaId)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_uniqueId)
  {
    [toCopy setUniqueId:?];
    toCopy = v6;
  }

  if (self->_domainId)
  {
    [v6 setDomainId:?];
    toCopy = v6;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_absoluteTimestamp;
    *(toCopy + 92) |= 1u;
  }

  if (self->_title)
  {
    [v6 setTitle:?];
    toCopy = v6;
  }

  if (self->_notes)
  {
    [v6 setNotes:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(toCopy + 88) = self->_isAllDay;
    *(toCopy + 92) |= 0x10u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_13:
      if ((has & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_25;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

  *(toCopy + 2) = *&self->_completionDateTimestamp;
  *(toCopy + 92) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_14:
    if ((has & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_25:
  *(toCopy + 3) = *&self->_dueDateTimestamp;
  *(toCopy + 92) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_15:
    *(toCopy + 16) = self->_priority;
    *(toCopy + 92) |= 8u;
  }

LABEL_16:
  if (self->_contentProtection)
  {
    [v6 setContentProtection:?];
    toCopy = v6;
  }

  if (self->_personaId)
  {
    [v6 setPersonaId:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_uniqueId copyWithZone:zone];
  v7 = *(v5 + 80);
  *(v5 + 80) = v6;

  v8 = [(NSString *)self->_domainId copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_absoluteTimestamp;
    *(v5 + 92) |= 1u;
  }

  v10 = [(NSString *)self->_title copyWithZone:zone];
  v11 = *(v5 + 72);
  *(v5 + 72) = v10;

  v12 = [(NSString *)self->_notes copyWithZone:zone];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v5 + 88) = self->_isAllDay;
    *(v5 + 92) |= 0x10u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      *(v5 + 24) = self->_dueDateTimestamp;
      *(v5 + 92) |= 4u;
      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(v5 + 16) = self->_completionDateTimestamp;
  *(v5 + 92) |= 2u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((has & 8) != 0)
  {
LABEL_7:
    *(v5 + 64) = self->_priority;
    *(v5 + 92) |= 8u;
  }

LABEL_8:
  v15 = [(NSString *)self->_contentProtection copyWithZone:zone];
  v16 = *(v5 + 32);
  *(v5 + 32) = v15;

  v17 = [(NSString *)self->_personaId copyWithZone:zone];
  v18 = *(v5 + 56);
  *(v5 + 56) = v17;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  uniqueId = self->_uniqueId;
  if (uniqueId | *(equalCopy + 10))
  {
    if (![(NSString *)uniqueId isEqual:?])
    {
      goto LABEL_42;
    }
  }

  domainId = self->_domainId;
  if (domainId | *(equalCopy + 5))
  {
    if (![(NSString *)domainId isEqual:?])
    {
      goto LABEL_42;
    }
  }

  v7 = *(equalCopy + 92);
  if (*&self->_has)
  {
    if ((*(equalCopy + 92) & 1) == 0 || self->_absoluteTimestamp != *(equalCopy + 1))
    {
      goto LABEL_42;
    }
  }

  else if (*(equalCopy + 92))
  {
    goto LABEL_42;
  }

  title = self->_title;
  if (title | *(equalCopy + 9) && ![(NSString *)title isEqual:?])
  {
    goto LABEL_42;
  }

  notes = self->_notes;
  if (notes | *(equalCopy + 6))
  {
    if (![(NSString *)notes isEqual:?])
    {
      goto LABEL_42;
    }
  }

  v10 = *(equalCopy + 92);
  if ((*&self->_has & 0x10) == 0)
  {
    if ((*(equalCopy + 92) & 0x10) == 0)
    {
      goto LABEL_17;
    }

LABEL_42:
    v14 = 0;
    goto LABEL_43;
  }

  if ((*(equalCopy + 92) & 0x10) == 0)
  {
    goto LABEL_42;
  }

  v11 = *(equalCopy + 88);
  if (self->_isAllDay)
  {
    if ((*(equalCopy + 88) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (*(equalCopy + 88))
  {
    goto LABEL_42;
  }

LABEL_17:
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 92) & 2) == 0 || self->_completionDateTimestamp != *(equalCopy + 2))
    {
      goto LABEL_42;
    }
  }

  else if ((*(equalCopy + 92) & 2) != 0)
  {
    goto LABEL_42;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 92) & 4) == 0 || self->_dueDateTimestamp != *(equalCopy + 3))
    {
      goto LABEL_42;
    }
  }

  else if ((*(equalCopy + 92) & 4) != 0)
  {
    goto LABEL_42;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 92) & 8) == 0 || self->_priority != *(equalCopy + 16))
    {
      goto LABEL_42;
    }
  }

  else if ((*(equalCopy + 92) & 8) != 0)
  {
    goto LABEL_42;
  }

  contentProtection = self->_contentProtection;
  if (contentProtection | *(equalCopy + 4) && ![(NSString *)contentProtection isEqual:?])
  {
    goto LABEL_42;
  }

  personaId = self->_personaId;
  if (personaId | *(equalCopy + 7))
  {
    v14 = [(NSString *)personaId isEqual:?];
  }

  else
  {
    v14 = 1;
  }

LABEL_43:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uniqueId hash];
  v4 = [(NSString *)self->_domainId hash];
  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    if (absoluteTimestamp < 0.0)
    {
      absoluteTimestamp = -absoluteTimestamp;
    }

    *v5.i64 = floor(absoluteTimestamp + 0.5);
    v9 = (absoluteTimestamp - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = [(NSString *)self->_title hash];
  v12 = [(NSString *)self->_notes hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v15 = 2654435761 * self->_isAllDay;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_11;
    }

LABEL_16:
    v19 = 0;
    goto LABEL_17;
  }

  v15 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  completionDateTimestamp = self->_completionDateTimestamp;
  if (completionDateTimestamp < 0.0)
  {
    completionDateTimestamp = -completionDateTimestamp;
  }

  *v13.i64 = floor(completionDateTimestamp + 0.5);
  v17 = (completionDateTimestamp - *v13.i64) * 1.84467441e19;
  *v14.i64 = *v13.i64 - trunc(*v13.i64 * 5.42101086e-20) * 1.84467441e19;
  v18.f64[0] = NAN;
  v18.f64[1] = NAN;
  v13 = vbslq_s8(vnegq_f64(v18), v14, v13);
  v19 = 2654435761u * *v13.i64;
  if (v17 >= 0.0)
  {
    if (v17 > 0.0)
    {
      v19 += v17;
    }
  }

  else
  {
    v19 -= fabs(v17);
  }

LABEL_17:
  if ((*&self->_has & 4) != 0)
  {
    dueDateTimestamp = self->_dueDateTimestamp;
    if (dueDateTimestamp < 0.0)
    {
      dueDateTimestamp = -dueDateTimestamp;
    }

    *v13.i64 = floor(dueDateTimestamp + 0.5);
    v22 = (dueDateTimestamp - *v13.i64) * 1.84467441e19;
    *v14.i64 = *v13.i64 - trunc(*v13.i64 * 5.42101086e-20) * 1.84467441e19;
    v23.f64[0] = NAN;
    v23.f64[1] = NAN;
    v20 = 2654435761u * *vbslq_s8(vnegq_f64(v23), v14, v13).i64;
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

  if ((*&self->_has & 8) != 0)
  {
    v24 = 2654435761 * self->_priority;
  }

  else
  {
    v24 = 0;
  }

  v25 = v4 ^ v3 ^ v7 ^ v11 ^ v12 ^ v15 ^ v19;
  v26 = v20 ^ v24 ^ [(NSString *)self->_contentProtection hash];
  return v25 ^ v26 ^ [(NSString *)self->_personaId hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 10))
  {
    [(BMPBRemindersContentEvent *)self setUniqueId:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 5))
  {
    [(BMPBRemindersContentEvent *)self setDomainId:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 92))
  {
    self->_absoluteTimestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 9))
  {
    [(BMPBRemindersContentEvent *)self setTitle:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 6))
  {
    [(BMPBRemindersContentEvent *)self setNotes:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 92);
  if ((v5 & 0x10) != 0)
  {
    self->_isAllDay = *(fromCopy + 88);
    *&self->_has |= 0x10u;
    v5 = *(fromCopy + 92);
    if ((v5 & 2) == 0)
    {
LABEL_13:
      if ((v5 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_25;
    }
  }

  else if ((*(fromCopy + 92) & 2) == 0)
  {
    goto LABEL_13;
  }

  self->_completionDateTimestamp = *(fromCopy + 2);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 92);
  if ((v5 & 4) == 0)
  {
LABEL_14:
    if ((v5 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_25:
  self->_dueDateTimestamp = *(fromCopy + 3);
  *&self->_has |= 4u;
  if ((*(fromCopy + 92) & 8) != 0)
  {
LABEL_15:
    self->_priority = *(fromCopy + 16);
    *&self->_has |= 8u;
  }

LABEL_16:
  if (*(fromCopy + 4))
  {
    [(BMPBRemindersContentEvent *)self setContentProtection:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 7))
  {
    [(BMPBRemindersContentEvent *)self setPersonaId:?];
    fromCopy = v6;
  }
}

@end