@interface MTPBAlarmUpdate
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)a3;
@end

@implementation MTPBAlarmUpdate

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MTPBAlarmUpdate;
  v4 = [(MTPBAlarmUpdate *)&v8 description];
  v5 = [(MTPBAlarmUpdate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  alarmProperties = self->_alarmProperties;
  if (alarmProperties)
  {
    v5 = [(MTPBAlarmProperties *)alarmProperties dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"alarmProperties"];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(MTPBAlarmProperties *)self->_alarmProperties copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    alarmProperties = self->_alarmProperties;
    if (alarmProperties | v4[1])
    {
      v6 = [(MTPBAlarmProperties *)alarmProperties isEqual:?];
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
  alarmProperties = self->_alarmProperties;
  v6 = v4[1];
  if (alarmProperties)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    alarmProperties = [(MTPBAlarmProperties *)alarmProperties mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    alarmProperties = [(MTPBAlarmUpdate *)self setAlarmProperties:?];
  }

  v4 = v7;
LABEL_7:

  MEMORY[0x1EEE66BB8](alarmProperties, v4);
}

@end