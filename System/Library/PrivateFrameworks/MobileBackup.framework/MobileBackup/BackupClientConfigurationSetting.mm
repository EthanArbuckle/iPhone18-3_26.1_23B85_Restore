@interface BackupClientConfigurationSetting
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BackupClientConfigurationSetting

- (id)description
{
  v7.receiver = self;
  v7.super_class = BackupClientConfigurationSetting;
  v3 = [(BackupClientConfigurationSetting *)&v7 description];
  dictionaryRepresentation = [(BackupClientConfigurationSetting *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
  }

  value = self->_value;
  if (value)
  {
    [v4 setObject:value forKey:@"value"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_key)
  {
    __assert_rtn("[BackupClientConfigurationSetting writeTo:]", "BackupClientConfigurationSetting.m", 83, "nil != self->_key");
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  if (!self->_value)
  {
    __assert_rtn("[BackupClientConfigurationSetting writeTo:]", "BackupClientConfigurationSetting.m", 88, "nil != self->_value");
  }

  PBDataWriterWriteStringField();
}

- (void)copyTo:(id)to
{
  key = self->_key;
  toCopy = to;
  [toCopy setKey:key];
  [toCopy setValue:self->_value];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_value copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | equalCopy[1])) || -[NSString isEqual:](key, "isEqual:")))
  {
    value = self->_value;
    if (value | equalCopy[2])
    {
      v7 = [(NSString *)value isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(BackupClientConfigurationSetting *)self setKey:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(BackupClientConfigurationSetting *)self setValue:?];
    fromCopy = v5;
  }
}

@end