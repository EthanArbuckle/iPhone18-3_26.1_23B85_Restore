@interface NRPBMigrationDeviceInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NRPBMigrationDeviceInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NRPBMigrationDeviceInfo;
  v4 = [(NRPBMigrationDeviceInfo *)&v8 description];
  v5 = [(NRPBMigrationDeviceInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  iD = self->_iD;
  if (iD)
  {
    [v3 setObject:iD forKey:@"ID"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_iD)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_advertisedName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_iD)
  {
    [v4 setID:?];
    v4 = v5;
  }

  if (self->_name)
  {
    [v5 setName:?];
    v4 = v5;
  }

  if (self->_advertisedName)
  {
    [v5 setAdvertisedName:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_iD copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_name copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_advertisedName copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((iD = self->_iD, !(iD | v4[2])) || -[NSData isEqual:](iD, "isEqual:")) && ((name = self->_name, !(name | v4[3])) || -[NSString isEqual:](name, "isEqual:")))
  {
    advertisedName = self->_advertisedName;
    if (advertisedName | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(NRPBMigrationDeviceInfo *)self setID:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(NRPBMigrationDeviceInfo *)self setName:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(NRPBMigrationDeviceInfo *)self setAdvertisedName:?];
    v4 = v5;
  }
}

@end