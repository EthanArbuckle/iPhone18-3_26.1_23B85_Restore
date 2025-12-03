@interface HDCodableSyncIdentity
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableSyncIdentity

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableSyncIdentity;
  v4 = [(HDCodableSyncIdentity *)&v8 description];
  dictionaryRepresentation = [(HDCodableSyncIdentity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  hardwareIdentifier = self->_hardwareIdentifier;
  if (hardwareIdentifier)
  {
    [dictionary setObject:hardwareIdentifier forKey:@"hardwareIdentifier"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_hardwareIdentifier)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_databaseIdentifier)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_instanceDiscriminator)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_hardwareIdentifier)
  {
    [toCopy setHardwareIdentifier:?];
    toCopy = v5;
  }

  if (self->_databaseIdentifier)
  {
    [v5 setDatabaseIdentifier:?];
    toCopy = v5;
  }

  if (self->_instanceDiscriminator)
  {
    [v5 setInstanceDiscriminator:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_hardwareIdentifier copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_databaseIdentifier copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_instanceDiscriminator copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((hardwareIdentifier = self->_hardwareIdentifier, !(hardwareIdentifier | equalCopy[2])) || -[NSData isEqual:](hardwareIdentifier, "isEqual:")) && ((databaseIdentifier = self->_databaseIdentifier, !(databaseIdentifier | equalCopy[1])) || -[NSData isEqual:](databaseIdentifier, "isEqual:")))
  {
    instanceDiscriminator = self->_instanceDiscriminator;
    if (instanceDiscriminator | equalCopy[3])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(HDCodableSyncIdentity *)self setHardwareIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(HDCodableSyncIdentity *)self setDatabaseIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(HDCodableSyncIdentity *)self setInstanceDiscriminator:?];
    fromCopy = v5;
  }
}

@end