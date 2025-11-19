@interface NPSUserDefaultsBackupMsgKey
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPSUserDefaultsBackupMsgKey

- (id)description
{
  v7.receiver = self;
  v7.super_class = NPSUserDefaultsBackupMsgKey;
  v3 = [(NPSUserDefaultsBackupMsgKey *)&v7 description];
  v4 = [(NPSUserDefaultsBackupMsgKey *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_key)
  {
    sub_100026E84();
  }

  v5 = v4;
  PBDataWriterWriteStringField();
  if (self->_value)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  [v4 setKey:self->_key];
  if (self->_value)
  {
    [v4 setValue:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_value copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | v4[1])) || -[NSString isEqual:](key, "isEqual:")))
  {
    value = self->_value;
    if (value | v4[2])
    {
      v7 = [(NSData *)value isEqual:?];
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(NPSUserDefaultsBackupMsgKey *)self setKey:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(NPSUserDefaultsBackupMsgKey *)self setValue:?];
    v4 = v5;
  }
}

@end