@interface HDCloudSyncCodableRegisteredStore
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCloudSyncCodableRegisteredStore

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCloudSyncCodableRegisteredStore;
  v4 = [(HDCloudSyncCodableRegisteredStore *)&v8 description];
  v5 = [(HDCloudSyncCodableRegisteredStore *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  ownerIdentifier = self->_ownerIdentifier;
  if (ownerIdentifier)
  {
    [v3 setObject:ownerIdentifier forKey:@"ownerIdentifier"];
  }

  storeIdentifier = self->_storeIdentifier;
  if (storeIdentifier)
  {
    [v4 setObject:storeIdentifier forKey:@"storeIdentifier"];
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    v8 = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"syncIdentity"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_ownerIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_storeIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_ownerIdentifier)
  {
    [v4 setOwnerIdentifier:?];
    v4 = v5;
  }

  if (self->_storeIdentifier)
  {
    [v5 setStoreIdentifier:?];
    v4 = v5;
  }

  if (self->_syncIdentity)
  {
    [v5 setSyncIdentity:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_ownerIdentifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_storeIdentifier copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((ownerIdentifier = self->_ownerIdentifier, !(ownerIdentifier | v4[1])) || -[NSString isEqual:](ownerIdentifier, "isEqual:")) && ((storeIdentifier = self->_storeIdentifier, !(storeIdentifier | v4[2])) || -[NSString isEqual:](storeIdentifier, "isEqual:")))
  {
    syncIdentity = self->_syncIdentity;
    if (syncIdentity | v4[3])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[1])
  {
    [(HDCloudSyncCodableRegisteredStore *)self setOwnerIdentifier:?];
    v4 = v7;
  }

  if (v4[2])
  {
    [(HDCloudSyncCodableRegisteredStore *)self setStoreIdentifier:?];
    v4 = v7;
  }

  syncIdentity = self->_syncIdentity;
  v6 = v4[3];
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