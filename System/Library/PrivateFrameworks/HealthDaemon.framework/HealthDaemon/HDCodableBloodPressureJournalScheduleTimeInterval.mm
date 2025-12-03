@interface HDCodableBloodPressureJournalScheduleTimeInterval
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDayWindowType:(id)type;
- (int)dayWindowType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (int)StringAsDayWindowType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"WakeUp"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"BedTime"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableBloodPressureJournalScheduleTimeInterval;
  v4 = [(HDCodableBloodPressureJournalScheduleTimeInterval *)&v8 description];
  dictionaryRepresentation = [(HDCodableBloodPressureJournalScheduleTimeInterval *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
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

    [dictionary setObject:v5 forKey:@"dayWindowType"];
  }

  scheduledTime = self->_scheduledTime;
  if (scheduledTime)
  {
    dictionaryRepresentation = [(HDCodableDateComponents *)scheduledTime dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"scheduledTime"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    dayWindowType = self->_dayWindowType;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_scheduledTime)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[2] = self->_dayWindowType;
    *(toCopy + 24) |= 1u;
  }

  if (self->_scheduledTime)
  {
    v5 = toCopy;
    [toCopy setScheduledTime:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_dayWindowType;
    *(v5 + 24) |= 1u;
  }

  v7 = [(HDCodableDateComponents *)self->_scheduledTime copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 24);
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_dayWindowType != *(equalCopy + 2))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 24))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  scheduledTime = self->_scheduledTime;
  if (scheduledTime | *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[6])
  {
    self->_dayWindowType = fromCopy[2];
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