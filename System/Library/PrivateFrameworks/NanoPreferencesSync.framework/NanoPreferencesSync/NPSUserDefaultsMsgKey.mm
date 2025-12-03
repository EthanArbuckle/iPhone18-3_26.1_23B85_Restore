@interface NPSUserDefaultsMsgKey
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasTwoWaySync:(BOOL)sync;
- (void)writeTo:(id)to;
@end

@implementation NPSUserDefaultsMsgKey

- (void)setHasTwoWaySync:(BOOL)sync
{
  if (sync)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NPSUserDefaultsMsgKey;
  v3 = [(NPSUserDefaultsMsgKey *)&v7 description];
  dictionaryRepresentation = [(NPSUserDefaultsMsgKey *)self dictionaryRepresentation];
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

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [NSNumber numberWithBool:self->_twoWaySync];
    [v4 setObject:v8 forKey:@"twoWaySync"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [NSNumber numberWithDouble:self->_timestamp];
    [v4 setObject:v9 forKey:@"timestamp"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_key)
  {
    sub_100026604();
  }

  v9 = toCopy;
  PBDataWriterWriteStringField();
  if (self->_value)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    twoWaySync = self->_twoWaySync;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  v7 = v9;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteDoubleField();
    v7 = v9;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setKey:self->_key];
  if (self->_value)
  {
    [toCopy setValue:?];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 32) = self->_twoWaySync;
    *(toCopy + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = *&self->_timestamp;
    *(toCopy + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_value copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 32) = self->_twoWaySync;
    *(v5 + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v5[1] = *&self->_timestamp;
    *(v5 + 36) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  key = self->_key;
  if (key | *(equalCopy + 2))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_13;
    }
  }

  value = self->_value;
  if (value | *(equalCopy + 3))
  {
    if (![(NSData *)value isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0)
    {
      goto LABEL_13;
    }

    v9 = *(equalCopy + 32);
    if (self->_twoWaySync)
    {
      if ((*(equalCopy + 32) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (*(equalCopy + 32))
    {
      goto LABEL_13;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_13;
  }

  v7 = (*(equalCopy + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) != 0 && self->_timestamp == *(equalCopy + 1))
    {
      v7 = 1;
      goto LABEL_14;
    }

LABEL_13:
    v7 = 0;
  }

LABEL_14:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSData *)self->_value hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_twoWaySync;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v11 = 0;
    return v4 ^ v3 ^ v7 ^ v11;
  }

  v7 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  timestamp = self->_timestamp;
  if (timestamp < 0.0)
  {
    timestamp = -timestamp;
  }

  *v5.i64 = floor(timestamp + 0.5);
  v9 = (timestamp - *v5.i64) * 1.84467441e19;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v11 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
  if (v9 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v11 += v9;
    }
  }

  else
  {
    v11 -= fabs(v9);
  }

  return v4 ^ v3 ^ v7 ^ v11;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(NPSUserDefaultsMsgKey *)self setKey:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(NPSUserDefaultsMsgKey *)self setValue:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 36);
  if ((v5 & 2) != 0)
  {
    self->_twoWaySync = *(fromCopy + 32);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 36);
  }

  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

@end