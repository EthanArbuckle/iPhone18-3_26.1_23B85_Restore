@interface HDCodableSyncIdentity
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableSyncIdentity

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableSyncIdentity;
  v4 = [(HDCodableSyncIdentity *)&v8 description];
  v5 = [(HDCodableSyncIdentity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  hardwareIdentifier = self->_hardwareIdentifier;
  if (hardwareIdentifier)
  {
    [v3 setObject:hardwareIdentifier forKey:@"hardwareIdentifier"];
  }

  databaseIdentifier = self->_databaseIdentifier;
  if (databaseIdentifier)
  {
    [v4 setObject:databaseIdentifier forKey:@"databaseIdentifier"];
  }

  instanceDiscriminator = self->_instanceDiscriminator;
  if (instanceDiscriminator)
  {
    [v4 setObject:instanceDiscriminator forKey:@"instanceDiscriminator"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_hardwareIdentifier)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_databaseIdentifier)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_instanceDiscriminator)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_hardwareIdentifier)
  {
    [v4 setHardwareIdentifier:?];
    v4 = v5;
  }

  if (self->_databaseIdentifier)
  {
    [v5 setDatabaseIdentifier:?];
    v4 = v5;
  }

  if (self->_instanceDiscriminator)
  {
    [v5 setInstanceDiscriminator:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_hardwareIdentifier copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_databaseIdentifier copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_instanceDiscriminator copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((hardwareIdentifier = self->_hardwareIdentifier, !(hardwareIdentifier | v4[2])) || -[NSData isEqual:](hardwareIdentifier, "isEqual:")) && ((databaseIdentifier = self->_databaseIdentifier, !(databaseIdentifier | v4[1])) || -[NSData isEqual:](databaseIdentifier, "isEqual:")))
  {
    instanceDiscriminator = self->_instanceDiscriminator;
    if (instanceDiscriminator | v4[3])
    {
      v8 = [(NSString *)instanceDiscriminator isEqual:?];
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
  v3 = [(NSData *)self->_hardwareIdentifier hash];
  v4 = [(NSData *)self->_databaseIdentifier hash]^ v3;
  return v4 ^ [(NSString *)self->_instanceDiscriminator hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(HDCodableSyncIdentity *)self setHardwareIdentifier:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(HDCodableSyncIdentity *)self setDatabaseIdentifier:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(HDCodableSyncIdentity *)self setInstanceDiscriminator:?];
    v4 = v5;
  }
}

@end