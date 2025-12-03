@interface MTPBAlarmAdd
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)from;
@end

@implementation MTPBAlarmAdd

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MTPBAlarmAdd;
  v4 = [(MTPBAlarmAdd *)&v8 description];
  dictionaryRepresentation = [(MTPBAlarmAdd *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  alarm = self->_alarm;
  if (alarm)
  {
    dictionaryRepresentation = [(MTPBAlarm *)alarm dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"alarm"];
  }

  return dictionary;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(MTPBAlarm *)self->_alarm copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    alarm = self->_alarm;
    if (alarm | equalCopy[1])
    {
      v6 = [(MTPBAlarm *)alarm isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  alarm = self->_alarm;
  v6 = fromCopy[1];
  if (alarm)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    alarm = [(MTPBAlarm *)alarm mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    alarm = [(MTPBAlarmAdd *)self setAlarm:?];
  }

  fromCopy = v7;
LABEL_7:

  MEMORY[0x1EEE66BB8](alarm, fromCopy);
}

@end