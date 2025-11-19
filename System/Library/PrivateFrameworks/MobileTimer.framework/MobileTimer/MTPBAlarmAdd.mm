@interface MTPBAlarmAdd
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)a3;
@end

@implementation MTPBAlarmAdd

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MTPBAlarmAdd;
  v4 = [(MTPBAlarmAdd *)&v8 description];
  v5 = [(MTPBAlarmAdd *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  alarm = self->_alarm;
  if (alarm)
  {
    v5 = [(MTPBAlarm *)alarm dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"alarm"];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(MTPBAlarm *)self->_alarm copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    alarm = self->_alarm;
    if (alarm | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  alarm = self->_alarm;
  v6 = v4[1];
  if (alarm)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    alarm = [(MTPBAlarm *)alarm mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    alarm = [(MTPBAlarmAdd *)self setAlarm:?];
  }

  v4 = v7;
LABEL_7:

  MEMORY[0x1EEE66BB8](alarm, v4);
}

@end