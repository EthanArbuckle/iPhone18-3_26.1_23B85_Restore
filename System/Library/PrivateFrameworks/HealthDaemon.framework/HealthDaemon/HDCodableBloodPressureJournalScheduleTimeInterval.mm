@interface HDCodableBloodPressureJournalScheduleTimeInterval
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDayWindowType:(id)a3;
- (int)dayWindowType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableBloodPressureJournalScheduleTimeInterval

- (int)dayWindowType
{
  if (*&self->_has)
  {
    return self->_dayWindowType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsDayWindowType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"WakeUp"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"BedTime"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableBloodPressureJournalScheduleTimeInterval;
  v4 = [(HDCodableBloodPressureJournalScheduleTimeInterval *)&v8 description];
  v5 = [(HDCodableBloodPressureJournalScheduleTimeInterval *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    dayWindowType = self->_dayWindowType;
    if (dayWindowType)
    {
      if (dayWindowType == 1)
      {
        v5 = @"BedTime";
      }

      else
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_dayWindowType];
      }
    }

    else
    {
      v5 = @"WakeUp";
    }

    [v3 setObject:v5 forKey:@"dayWindowType"];
  }

  scheduledTime = self->_scheduledTime;
  if (scheduledTime)
  {
    v7 = [(HDCodableDateComponents *)scheduledTime dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"scheduledTime"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    dayWindowType = self->_dayWindowType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_scheduledTime)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[2] = self->_dayWindowType;
    *(v4 + 24) |= 1u;
  }

  if (self->_scheduledTime)
  {
    v5 = v4;
    [v4 setScheduledTime:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_dayWindowType;
    *(v5 + 24) |= 1u;
  }

  v7 = [(HDCodableDateComponents *)self->_scheduledTime copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 24);
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_dayWindowType != *(v4 + 2))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  scheduledTime = self->_scheduledTime;
  if (scheduledTime | *(v4 + 2))
  {
    v7 = [(HDCodableDateComponents *)scheduledTime isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_dayWindowType;
  }

  else
  {
    v2 = 0;
  }

  return [(HDCodableDateComponents *)self->_scheduledTime hash]^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[6])
  {
    self->_dayWindowType = v4[2];
    *&self->_has |= 1u;
  }

  scheduledTime = self->_scheduledTime;
  v7 = *(v5 + 2);
  if (scheduledTime)
  {
    if (v7)
    {
      [(HDCodableDateComponents *)scheduledTime mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(HDCodableBloodPressureJournalScheduleTimeInterval *)self setScheduledTime:?];
  }

  MEMORY[0x2821F96F8]();
}

@end