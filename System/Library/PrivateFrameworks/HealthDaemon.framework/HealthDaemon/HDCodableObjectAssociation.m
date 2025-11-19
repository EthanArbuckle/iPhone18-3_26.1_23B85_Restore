@interface HDCodableObjectAssociation
- (BOOL)isEqual:(id)a3;
- (HDCodableObjectAssociation)initWithAssociationUUID:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableObjectAssociation

- (HDCodableObjectAssociation)initWithAssociationUUID:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HDCodableObjectAssociation;
  v5 = [(HDCodableObjectAssociation *)&v8 init];
  if (v5)
  {
    v6 = [v4 hk_dataForUUIDBytes];
    [(HDCodableObjectAssociation *)v5 setAssociationUuid:v6];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableObjectAssociation;
  v4 = [(HDCodableObjectAssociation *)&v8 description];
  v5 = [(HDCodableObjectAssociation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  associationUuid = self->_associationUuid;
  if (associationUuid)
  {
    [v3 setObject:associationUuid forKey:@"associationUuid"];
  }

  objectUuids = self->_objectUuids;
  if (objectUuids)
  {
    [v4 setObject:objectUuids forKey:@"objectUuids"];
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
  if (self->_associationUuid)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_objectUuids)
  {
    PBDataWriterWriteDataField();
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
  if (self->_associationUuid)
  {
    [v4 setAssociationUuid:?];
    v4 = v5;
  }

  if (self->_objectUuids)
  {
    [v5 setObjectUuids:?];
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
  v6 = [(NSData *)self->_associationUuid copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_objectUuids copyWithZone:a3];
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
  if ([v4 isMemberOfClass:objc_opt_class()] && ((associationUuid = self->_associationUuid, !(associationUuid | v4[1])) || -[NSData isEqual:](associationUuid, "isEqual:")) && ((objectUuids = self->_objectUuids, !(objectUuids | v4[2])) || -[NSData isEqual:](objectUuids, "isEqual:")))
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
  v3 = [(NSData *)self->_associationUuid hash];
  v4 = [(NSData *)self->_objectUuids hash]^ v3;
  return v4 ^ [(HDCodableSyncIdentity *)self->_syncIdentity hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[1])
  {
    [(HDCodableObjectAssociation *)self setAssociationUuid:?];
    v4 = v7;
  }

  if (v4[2])
  {
    [(HDCodableObjectAssociation *)self setObjectUuids:?];
    v4 = v7;
  }

  syncIdentity = self->_syncIdentity;
  v6 = v4[3];
  if (syncIdentity)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    syncIdentity = [(HDCodableSyncIdentity *)syncIdentity mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    syncIdentity = [(HDCodableObjectAssociation *)self setSyncIdentity:?];
  }

  v4 = v7;
LABEL_11:

  MEMORY[0x2821F96F8](syncIdentity, v4);
}

@end