@interface BLTPBBulletinSummaryKey
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BLTPBBulletinSummaryKey

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBBulletinSummaryKey;
  v4 = [(BLTPBBulletinSummaryKey *)&v8 description];
  dictionaryRepresentation = [(BLTPBBulletinSummaryKey *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  key = self->_key;
  if (key)
  {
    [dictionary setObject:key forKey:@"key"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_key)
  {
    [BLTPBBulletinSummaryKey writeTo:];
  }

  v5 = toCopy;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setKey:self->_key];
  if (self->_value)
  {
    [toCopy setValue:?];
  }

  if (self->_valueNulls)
  {
    [toCopy setValueNulls:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_value copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSData *)self->_valueNulls copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | equalCopy[1])) || -[NSString isEqual:](key, "isEqual:")) && ((value = self->_value, !(value | equalCopy[2])) || -[NSData isEqual:](value, "isEqual:")))
  {
    valueNulls = self->_valueNulls;
    if (valueNulls | equalCopy[3])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(BLTPBBulletinSummaryKey *)self setKey:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(BLTPBBulletinSummaryKey *)self setValue:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(BLTPBBulletinSummaryKey *)self setValueNulls:?];
    fromCopy = v5;
  }
}

@end