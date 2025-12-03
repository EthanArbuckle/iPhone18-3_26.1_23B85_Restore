@interface BMPBAlarmEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEventType:(id)type;
- (int)StringAsLastEventType:(id)type;
- (int)eventType;
- (int)lastEventType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsSleepAlarm:(BOOL)alarm;
- (void)setHasLastEventType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation BMPBAlarmEvent

- (void)setHasIsSleepAlarm:(BOOL)alarm
{
  if (alarm)
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

- (int)StringAsEventType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Firing"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Stopped"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Snoozed"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Created"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"Updated"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"Deleted"])
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

- (void)setHasLastEventType:(BOOL)type
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

- (int)StringAsLastEventType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Idle"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Fired"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"FiredAfterSnooze"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"FiredGoToBedReminder"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"FiredGoToBedReminderAfterSnooze"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"Dismissed"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"DismissedGoToBedReminder"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"Snoozed"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"SnoozedBedtime"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"ConfigurationChanged"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"TimedOut"])
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
  dictionaryRepresentation = [(BMPBAlarmEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSleepAlarm];
    [dictionary setObject:v5 forKey:@"isSleepAlarm"];

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

    [dictionary setObject:v7 forKey:@"eventType"];
  }

  alarmID = self->_alarmID;
  if (alarmID)
  {
    [dictionary setObject:alarmID forKey:@"alarmID"];
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

    [dictionary setObject:v10 forKey:@"lastEventType"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[24] = self->_isSleepAlarm;
    toCopy[28] |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 4) = self->_eventType;
    toCopy[28] |= 1u;
  }

  if (self->_alarmID)
  {
    v6 = toCopy;
    [toCopy setAlarmID:?];
    toCopy = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 5) = self->_lastEventType;
    toCopy[28] |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

  v8 = [(NSString *)self->_alarmID copyWithZone:zone];
  v9 = *(v6 + 8);
  *(v6 + 8) = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 20) = self->_lastEventType;
    *(v6 + 28) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  has = self->_has;
  v6 = *(equalCopy + 28);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 28) & 4) == 0)
    {
      goto LABEL_21;
    }

    v7 = *(equalCopy + 24);
    if (self->_isSleepAlarm)
    {
      if ((*(equalCopy + 24) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 28) & 4) != 0)
  {
    goto LABEL_21;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_eventType != *(equalCopy + 4))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_21;
  }

  alarmID = self->_alarmID;
  if (alarmID | *(equalCopy + 1))
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
  v9 = (*(equalCopy + 28) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_lastEventType != *(equalCopy + 5))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 28);
  if ((v5 & 4) != 0)
  {
    self->_isSleepAlarm = *(fromCopy + 24);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 28);
  }

  if (v5)
  {
    self->_eventType = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    v6 = fromCopy;
    [(BMPBAlarmEvent *)self setAlarmID:?];
    fromCopy = v6;
  }

  if ((*(fromCopy + 28) & 2) != 0)
  {
    self->_lastEventType = *(fromCopy + 5);
    *&self->_has |= 2u;
  }
}

@end