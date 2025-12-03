@interface NRPBMigrationDeviceInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NRPBMigrationDeviceInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NRPBMigrationDeviceInfo;
  v4 = [(NRPBMigrationDeviceInfo *)&v8 description];
  dictionaryRepresentation = [(NRPBMigrationDeviceInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  iD = self->_iD;
  if (iD)
  {
    [dictionary setObject:iD forKey:@"ID"];
  }

  name = self->_name;
  if (name)
  {
    [v4 setObject:name forKey:@"name"];
  }

  advertisedName = self->_advertisedName;
  if (advertisedName)
  {
    [v4 setObject:advertisedName forKey:@"advertisedName"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_iD)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_advertisedName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_iD)
  {
    [toCopy setID:?];
    toCopy = v5;
  }

  if (self->_name)
  {
    [v5 setName:?];
    toCopy = v5;
  }

  if (self->_advertisedName)
  {
    [v5 setAdvertisedName:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_iD copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_name copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_advertisedName copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((iD = self->_iD, !(iD | equalCopy[2])) || -[NSData isEqual:](iD, "isEqual:")) && ((name = self->_name, !(name | equalCopy[3])) || -[NSString isEqual:](name, "isEqual:")))
  {
    advertisedName = self->_advertisedName;
    if (advertisedName | equalCopy[1])
    {
      v8 = [(NSString *)advertisedName isEqual:?];
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
  v3 = [(NSData *)self->_iD hash];
  v4 = [(NSString *)self->_name hash]^ v3;
  return v4 ^ [(NSString *)self->_advertisedName hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(NRPBMigrationDeviceInfo *)self setID:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(NRPBMigrationDeviceInfo *)self setName:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(NRPBMigrationDeviceInfo *)self setAdvertisedName:?];
    fromCopy = v5;
  }
}

@end