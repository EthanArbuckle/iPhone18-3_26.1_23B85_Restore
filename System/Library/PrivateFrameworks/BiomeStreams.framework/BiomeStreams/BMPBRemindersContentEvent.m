@interface BMPBRemindersContentEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCompletionDateTimestamp:(BOOL)a3;
- (void)setHasDueDateTimestamp:(BOOL)a3;
- (void)setHasIsAllDay:(BOOL)a3;
- (void)setHasPriority:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBRemindersContentEvent

- (void)setHasIsAllDay:(BOOL)a3
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

- (void)setHasCompletionDateTimestamp:(BOOL)a3
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

- (void)setHasDueDateTimestamp:(BOOL)a3
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

- (void)setHasPriority:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBRemindersContentEvent;
  v4 = [(BMPBRemindersContentEvent *)&v8 description];
  v5 = [(BMPBRemindersContentEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  uniqueId = self->_uniqueId;
  if (uniqueId)
  {
    [v3 setObject:uniqueId forKey:@"uniqueId"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (self->_uniqueId)
  {
    PBDataWriterWriteStringField();
    v4 = v11;
  }

  if (self->_domainId)
  {
    PBDataWriterWriteStringField();
    v4 = v11;
  }

  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    v4 = v11;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    v4 = v11;
  }

  if (self->_notes)
  {
    PBDataWriterWriteStringField();
    v4 = v11;
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    isAllDay = self->_isAllDay;
    PBDataWriterWriteBOOLField();
    v4 = v11;
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
  v4 = v11;
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
  v4 = v11;
  if ((*&self->_has & 8) != 0)
  {
LABEL_15:
    priority = self->_priority;
    PBDataWriterWriteSint32Field();
    v4 = v11;
  }

LABEL_16:
  if (self->_contentProtection)
  {
    PBDataWriterWriteStringField();
    v4 = v11;
  }

  if (self->_personaId)
  {
    PBDataWriterWriteStringField();
    v4 = v11;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_uniqueId)
  {
    [v4 setUniqueId:?];
    v4 = v6;
  }

  if (self->_domainId)
  {
    [v6 setDomainId:?];
    v4 = v6;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_absoluteTimestamp;
    *(v4 + 92) |= 1u;
  }

  if (self->_title)
  {
    [v6 setTitle:?];
    v4 = v6;
  }

  if (self->_notes)
  {
    [v6 setNotes:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v4 + 88) = self->_isAllDay;
    *(v4 + 92) |= 0x10u;
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

  *(v4 + 2) = *&self->_completionDateTimestamp;
  *(v4 + 92) |= 2u;
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
  *(v4 + 3) = *&self->_dueDateTimestamp;
  *(v4 + 92) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_15:
    *(v4 + 16) = self->_priority;
    *(v4 + 92) |= 8u;
  }

LABEL_16:
  if (self->_contentProtection)
  {
    [v6 setContentProtection:?];
    v4 = v6;
  }

  if (self->_personaId)
  {
    [v6 setPersonaId:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uniqueId copyWithZone:a3];
  v7 = *(v5 + 80);
  *(v5 + 80) = v6;

  v8 = [(NSString *)self->_domainId copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_absoluteTimestamp;
    *(v5 + 92) |= 1u;
  }

  v10 = [(NSString *)self->_title copyWithZone:a3];
  v11 = *(v5 + 72);
  *(v5 + 72) = v10;

  v12 = [(NSString *)self->_notes copyWithZone:a3];
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
  v15 = [(NSString *)self->_contentProtection copyWithZone:a3];
  v16 = *(v5 + 32);
  *(v5 + 32) = v15;

  v17 = [(NSString *)self->_personaId copyWithZone:a3];
  v18 = *(v5 + 56);
  *(v5 + 56) = v17;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  uniqueId = self->_uniqueId;
  if (uniqueId | *(v4 + 10))
  {
    if (![(NSString *)uniqueId isEqual:?])
    {
      goto LABEL_42;
    }
  }

  domainId = self->_domainId;
  if (domainId | *(v4 + 5))
  {
    if (![(NSString *)domainId isEqual:?])
    {
      goto LABEL_42;
    }
  }

  v7 = *(v4 + 92);
  if (*&self->_has)
  {
    if ((*(v4 + 92) & 1) == 0 || self->_absoluteTimestamp != *(v4 + 1))
    {
      goto LABEL_42;
    }
  }

  else if (*(v4 + 92))
  {
    goto LABEL_42;
  }

  title = self->_title;
  if (title | *(v4 + 9) && ![(NSString *)title isEqual:?])
  {
    goto LABEL_42;
  }

  notes = self->_notes;
  if (notes | *(v4 + 6))
  {
    if (![(NSString *)notes isEqual:?])
    {
      goto LABEL_42;
    }
  }

  v10 = *(v4 + 92);
  if ((*&self->_has & 0x10) == 0)
  {
    if ((*(v4 + 92) & 0x10) == 0)
    {
      goto LABEL_17;
    }

LABEL_42:
    v14 = 0;
    goto LABEL_43;
  }

  if ((*(v4 + 92) & 0x10) == 0)
  {
    goto LABEL_42;
  }

  v11 = *(v4 + 88);
  if (self->_isAllDay)
  {
    if ((*(v4 + 88) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (*(v4 + 88))
  {
    goto LABEL_42;
  }

LABEL_17:
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 92) & 2) == 0 || self->_completionDateTimestamp != *(v4 + 2))
    {
      goto LABEL_42;
    }
  }

  else if ((*(v4 + 92) & 2) != 0)
  {
    goto LABEL_42;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 92) & 4) == 0 || self->_dueDateTimestamp != *(v4 + 3))
    {
      goto LABEL_42;
    }
  }

  else if ((*(v4 + 92) & 4) != 0)
  {
    goto LABEL_42;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 92) & 8) == 0 || self->_priority != *(v4 + 16))
    {
      goto LABEL_42;
    }
  }

  else if ((*(v4 + 92) & 8) != 0)
  {
    goto LABEL_42;
  }

  contentProtection = self->_contentProtection;
  if (contentProtection | *(v4 + 4) && ![(NSString *)contentProtection isEqual:?])
  {
    goto LABEL_42;
  }

  personaId = self->_personaId;
  if (personaId | *(v4 + 7))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 10))
  {
    [(BMPBRemindersContentEvent *)self setUniqueId:?];
    v4 = v6;
  }

  if (*(v4 + 5))
  {
    [(BMPBRemindersContentEvent *)self setDomainId:?];
    v4 = v6;
  }

  if (*(v4 + 92))
  {
    self->_absoluteTimestamp = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 9))
  {
    [(BMPBRemindersContentEvent *)self setTitle:?];
    v4 = v6;
  }

  if (*(v4 + 6))
  {
    [(BMPBRemindersContentEvent *)self setNotes:?];
    v4 = v6;
  }

  v5 = *(v4 + 92);
  if ((v5 & 0x10) != 0)
  {
    self->_isAllDay = *(v4 + 88);
    *&self->_has |= 0x10u;
    v5 = *(v4 + 92);
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

  else if ((*(v4 + 92) & 2) == 0)
  {
    goto LABEL_13;
  }

  self->_completionDateTimestamp = *(v4 + 2);
  *&self->_has |= 2u;
  v5 = *(v4 + 92);
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
  self->_dueDateTimestamp = *(v4 + 3);
  *&self->_has |= 4u;
  if ((*(v4 + 92) & 8) != 0)
  {
LABEL_15:
    self->_priority = *(v4 + 16);
    *&self->_has |= 8u;
  }

LABEL_16:
  if (*(v4 + 4))
  {
    [(BMPBRemindersContentEvent *)self setContentProtection:?];
    v4 = v6;
  }

  if (*(v4 + 7))
  {
    [(BMPBRemindersContentEvent *)self setPersonaId:?];
    v4 = v6;
  }
}

@end