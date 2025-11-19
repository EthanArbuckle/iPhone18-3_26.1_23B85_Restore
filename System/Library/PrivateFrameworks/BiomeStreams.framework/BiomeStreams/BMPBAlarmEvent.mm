@interface BMPBAlarmEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEventType:(id)a3;
- (int)StringAsLastEventType:(id)a3;
- (int)eventType;
- (int)lastEventType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsSleepAlarm:(BOOL)a3;
- (void)setHasLastEventType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBAlarmEvent

- (void)setHasIsSleepAlarm:(BOOL)a3
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

- (int)eventType
{
  if (*&self->_has)
  {
    return self->_eventType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsEventType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Firing"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Stopped"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Snoozed"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Created"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Updated"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Deleted"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)lastEventType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_lastEventType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasLastEventType:(BOOL)a3
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

- (int)StringAsLastEventType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Idle"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Fired"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"FiredAfterSnooze"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"FiredGoToBedReminder"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"FiredGoToBedReminderAfterSnooze"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Dismissed"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"DismissedGoToBedReminder"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"Snoozed"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SnoozedBedtime"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"ConfigurationChanged"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"TimedOut"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBAlarmEvent;
  v4 = [(BMPBAlarmEvent *)&v8 description];
  v5 = [(BMPBAlarmEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSleepAlarm];
    [v3 setObject:v5 forKey:@"isSleepAlarm"];

    has = self->_has;
  }

  if (has)
  {
    eventType = self->_eventType;
    if (eventType >= 6)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_eventType];
    }

    else
    {
      v7 = off_1E6E54608[eventType];
    }

    [v3 setObject:v7 forKey:@"eventType"];
  }

  alarmID = self->_alarmID;
  if (alarmID)
  {
    [v3 setObject:alarmID forKey:@"alarmID"];
  }

  if ((*&self->_has & 2) != 0)
  {
    lastEventType = self->_lastEventType;
    if (lastEventType >= 0xB)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_lastEventType];
    }

    else
    {
      v10 = off_1E6E54638[lastEventType];
    }

    [v3 setObject:v10 forKey:@"lastEventType"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    isSleepAlarm = self->_isSleepAlarm;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if (has)
  {
    eventType = self->_eventType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_alarmID)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    lastEventType = self->_lastEventType;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[24] = self->_isSleepAlarm;
    v4[28] |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 4) = self->_eventType;
    v4[28] |= 1u;
  }

  if (self->_alarmID)
  {
    v6 = v4;
    [v4 setAlarmID:?];
    v4 = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 5) = self->_lastEventType;
    v4[28] |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_isSleepAlarm;
    *(v5 + 28) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 16) = self->_eventType;
    *(v5 + 28) |= 1u;
  }

  v8 = [(NSString *)self->_alarmID copyWithZone:a3];
  v9 = *(v6 + 8);
  *(v6 + 8) = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 20) = self->_lastEventType;
    *(v6 + 28) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  has = self->_has;
  v6 = *(v4 + 28);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 28) & 4) == 0)
    {
      goto LABEL_21;
    }

    v7 = *(v4 + 24);
    if (self->_isSleepAlarm)
    {
      if ((*(v4 + 24) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else if (*(v4 + 24))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 28) & 4) != 0)
  {
    goto LABEL_21;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_eventType != *(v4 + 4))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_21;
  }

  alarmID = self->_alarmID;
  if (alarmID | *(v4 + 1))
  {
    if ([(NSString *)alarmID isEqual:?])
    {
      has = self->_has;
      goto LABEL_16;
    }

LABEL_21:
    v9 = 0;
    goto LABEL_22;
  }

LABEL_16:
  v9 = (*(v4 + 28) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_lastEventType != *(v4 + 5))
    {
      goto LABEL_21;
    }

    v9 = 1;
  }

LABEL_22:

  return v9;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_isSleepAlarm;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if (*&self->_has)
    {
LABEL_3:
      v4 = 2654435761 * self->_eventType;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_alarmID hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_lastEventType;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v6 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 28);
  if ((v5 & 4) != 0)
  {
    self->_isSleepAlarm = *(v4 + 24);
    *&self->_has |= 4u;
    v5 = *(v4 + 28);
  }

  if (v5)
  {
    self->_eventType = *(v4 + 4);
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    v6 = v4;
    [(BMPBAlarmEvent *)self setAlarmID:?];
    v4 = v6;
  }

  if ((*(v4 + 28) & 2) != 0)
  {
    self->_lastEventType = *(v4 + 5);
    *&self->_has |= 2u;
  }
}

@end