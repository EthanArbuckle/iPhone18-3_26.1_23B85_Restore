@interface NPSUserDefaultsMsgKey
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasTwoWaySync:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPSUserDefaultsMsgKey

- (void)setHasTwoWaySync:(BOOL)a3
{
  if (a3)
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
  v4 = [(NPSUserDefaultsMsgKey *)self dictionaryRepresentation];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_key)
  {
    sub_100026604();
  }

  v9 = v4;
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

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setKey:self->_key];
  if (self->_value)
  {
    [v5 setValue:?];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 32) = self->_twoWaySync;
    *(v5 + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 1) = *&self->_timestamp;
    *(v5 + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_value copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  key = self->_key;
  if (key | *(v4 + 2))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_13;
    }
  }

  value = self->_value;
  if (value | *(v4 + 3))
  {
    if (![(NSData *)value isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0)
    {
      goto LABEL_13;
    }

    v9 = *(v4 + 32);
    if (self->_twoWaySync)
    {
      if ((*(v4 + 32) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (*(v4 + 32))
    {
      goto LABEL_13;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
    goto LABEL_13;
  }

  v7 = (*(v4 + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) != 0 && self->_timestamp == *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 2))
  {
    [(NPSUserDefaultsMsgKey *)self setKey:?];
    v4 = v6;
  }

  if (*(v4 + 3))
  {
    [(NPSUserDefaultsMsgKey *)self setValue:?];
    v4 = v6;
  }

  v5 = *(v4 + 36);
  if ((v5 & 2) != 0)
  {
    self->_twoWaySync = *(v4 + 32);
    *&self->_has |= 2u;
    v5 = *(v4 + 36);
  }

  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

@end