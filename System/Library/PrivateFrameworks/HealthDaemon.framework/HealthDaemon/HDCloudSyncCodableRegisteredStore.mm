@interface HDCloudSyncCodableRegisteredStore
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCloudSyncCodableRegisteredStore

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCloudSyncCodableRegisteredStore;
  v4 = [(HDCloudSyncCodableRegisteredStore *)&v8 description];
  dictionaryRepresentation = [(HDCloudSyncCodableRegisteredStore *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  ownerIdentifier = self->_ownerIdentifier;
  if (ownerIdentifier)
  {
    [dictionary setObject:ownerIdentifier forKey:@"ownerIdentifier"];
  }

  storeIdentifier = self->_storeIdentifier;
  if (storeIdentifier)
  {
    [v4 setObject:storeIdentifier forKey:@"storeIdentifier"];
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    dictionaryRepresentation = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"syncIdentity"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_ownerIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_storeIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_ownerIdentifier)
  {
    [toCopy setOwnerIdentifier:?];
    toCopy = v5;
  }

  if (self->_storeIdentifier)
  {
    [v5 setStoreIdentifier:?];
    toCopy = v5;
  }

  if (self->_syncIdentity)
  {
    [v5 setSyncIdentity:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_ownerIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_storeIdentifier copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((ownerIdentifier = self->_ownerIdentifier, !(ownerIdentifier | equalCopy[1])) || -[NSString isEqual:](ownerIdentifier, "isEqual:")) && ((storeIdentifier = self->_storeIdentifier, !(storeIdentifier | equalCopy[2])) || -[NSString isEqual:](storeIdentifier, "isEqual:")))
  {
    syncIdentity = self->_syncIdentity;
    if (syncIdentity | equalCopy[3])
    {
      v8 = [(HDCodableSyncIdentity *)syncIdentity isEqual:?];
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
  v3 = [(NSString *)self->_ownerIdentifier hash];
  v4 = [(NSString *)self->_storeIdentifier hash]^ v3;
  return v4 ^ [(HDCodableSyncIdentity *)self->_syncIdentity hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[1])
  {
    [(HDCloudSyncCodableRegisteredStore *)self setOwnerIdentifier:?];
    fromCopy = v7;
  }

  if (fromCopy[2])
  {
    [(HDCloudSyncCodableRegisteredStore *)self setStoreIdentifier:?];
    fromCopy = v7;
  }

  syncIdentity = self->_syncIdentity;
  v6 = fromCopy[3];
  if (syncIdentity)
  {
    if (v6)
    {
      [(HDCodableSyncIdentity *)syncIdentity mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(HDCloudSyncCodableRegisteredStore *)self setSyncIdentity:?];
  }

  MEMORY[0x2821F96F8]();
}

@end