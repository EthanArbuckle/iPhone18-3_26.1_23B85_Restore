@interface BLTPBBulletinSummaryKey
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BLTPBBulletinSummaryKey

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBBulletinSummaryKey;
  v4 = [(BLTPBBulletinSummaryKey *)&v8 description];
  v5 = [(BLTPBBulletinSummaryKey *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
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

  valueNulls = self->_valueNulls;
  if (valueNulls)
  {
    [v4 setObject:valueNulls forKey:@"valueNulls"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_key)
  {
    [BLTPBBulletinSummaryKey writeTo:];
  }

  v5 = v4;
  PBDataWriterWriteStringField();
  if (self->_value)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_valueNulls)
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

  if (self->_valueNulls)
  {
    [v4 setValueNulls:?];
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

  v10 = [(NSData *)self->_valueNulls copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | v4[1])) || -[NSString isEqual:](key, "isEqual:")) && ((value = self->_value, !(value | v4[2])) || -[NSData isEqual:](value, "isEqual:")))
  {
    valueNulls = self->_valueNulls;
    if (valueNulls | v4[3])
    {
      v8 = [(NSData *)valueNulls isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSData *)self->_value hash]^ v3;
  return v4 ^ [(NSData *)self->_valueNulls hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(BLTPBBulletinSummaryKey *)self setKey:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(BLTPBBulletinSummaryKey *)self setValue:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(BLTPBBulletinSummaryKey *)self setValueNulls:?];
    v4 = v5;
  }
}

@end