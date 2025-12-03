@interface HDCodableObjectAssociation
- (BOOL)isEqual:(id)equal;
- (HDCodableObjectAssociation)initWithAssociationUUID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableObjectAssociation

- (HDCodableObjectAssociation)initWithAssociationUUID:(id)d
{
  dCopy = d;
  v8.receiver = self;
  v8.super_class = HDCodableObjectAssociation;
  v5 = [(HDCodableObjectAssociation *)&v8 init];
  if (v5)
  {
    hk_dataForUUIDBytes = [dCopy hk_dataForUUIDBytes];
    [(HDCodableObjectAssociation *)v5 setAssociationUuid:hk_dataForUUIDBytes];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableObjectAssociation;
  v4 = [(HDCodableObjectAssociation *)&v8 description];
  dictionaryRepresentation = [(HDCodableObjectAssociation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  associationUuid = self->_associationUuid;
  if (associationUuid)
  {
    [dictionary setObject:associationUuid forKey:@"associationUuid"];
  }

  objectUuids = self->_objectUuids;
  if (objectUuids)
  {
    [v4 setObject:objectUuids forKey:@"objectUuids"];
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
  if (self->_associationUuid)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_objectUuids)
  {
    PBDataWriterWriteDataField();
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
  if (self->_associationUuid)
  {
    [toCopy setAssociationUuid:?];
    toCopy = v5;
  }

  if (self->_objectUuids)
  {
    [v5 setObjectUuids:?];
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
  v6 = [(NSData *)self->_associationUuid copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_objectUuids copyWithZone:zone];
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
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((associationUuid = self->_associationUuid, !(associationUuid | equalCopy[1])) || -[NSData isEqual:](associationUuid, "isEqual:")) && ((objectUuids = self->_objectUuids, !(objectUuids | equalCopy[2])) || -[NSData isEqual:](objectUuids, "isEqual:")))
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
  v3 = [(NSData *)self->_associationUuid hash];
  v4 = [(NSData *)self->_objectUuids hash]^ v3;
  return v4 ^ [(HDCodableSyncIdentity *)self->_syncIdentity hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[1])
  {
    [(HDCodableObjectAssociation *)self setAssociationUuid:?];
    fromCopy = v7;
  }

  if (fromCopy[2])
  {
    [(HDCodableObjectAssociation *)self setObjectUuids:?];
    fromCopy = v7;
  }

  syncIdentity = self->_syncIdentity;
  v6 = fromCopy[3];
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

  fromCopy = v7;
LABEL_11:

  MEMORY[0x2821F96F8](syncIdentity, fromCopy);
}

@end