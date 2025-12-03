@interface MTPBAlarmUpdate
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)from;
@end

@implementation MTPBAlarmUpdate

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MTPBAlarmUpdate;
  v4 = [(MTPBAlarmUpdate *)&v8 description];
  dictionaryRepresentation = [(MTPBAlarmUpdate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  alarmProperties = self->_alarmProperties;
  if (alarmProperties)
  {
    dictionaryRepresentation = [(MTPBAlarmProperties *)alarmProperties dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"alarmProperties"];
  }

  return dictionary;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(MTPBAlarmProperties *)self->_alarmProperties copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    alarmProperties = self->_alarmProperties;
    if (alarmProperties | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  alarmProperties = self->_alarmProperties;
  v6 = fromCopy[1];
  if (alarmProperties)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    alarmProperties = [(MTPBAlarmProperties *)alarmProperties mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    alarmProperties = [(MTPBAlarmUpdate *)self setAlarmProperties:?];
  }

  fromCopy = v7;
LABEL_7:

  MEMORY[0x1EEE66BB8](alarmProperties, fromCopy);
}

@end