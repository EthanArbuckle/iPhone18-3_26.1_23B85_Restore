@interface HDCodableWorkoutZonesAssociation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableWorkoutZonesAssociation

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableWorkoutZonesAssociation;
  v4 = [(HDCodableWorkoutZonesAssociation *)&v8 description];
  dictionaryRepresentation = [(HDCodableWorkoutZonesAssociation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  workoutUUID = self->_workoutUUID;
  if (workoutUUID)
  {
    [dictionary setObject:workoutUUID forKey:@"workoutUUID"];
  }

  zonesSampleUUID = self->_zonesSampleUUID;
  if (zonesSampleUUID)
  {
    [v4 setObject:zonesSampleUUID forKey:@"zonesSampleUUID"];
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
  if (self->_workoutUUID)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_zonesSampleUUID)
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
  if (self->_workoutUUID)
  {
    [toCopy setWorkoutUUID:?];
    toCopy = v5;
  }

  if (self->_zonesSampleUUID)
  {
    [v5 setZonesSampleUUID:?];
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
  v6 = [(NSData *)self->_workoutUUID copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_zonesSampleUUID copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((workoutUUID = self->_workoutUUID, !(workoutUUID | equalCopy[2])) || -[NSData isEqual:](workoutUUID, "isEqual:")) && ((zonesSampleUUID = self->_zonesSampleUUID, !(zonesSampleUUID | equalCopy[3])) || -[NSData isEqual:](zonesSampleUUID, "isEqual:")))
  {
    syncIdentity = self->_syncIdentity;
    if (syncIdentity | equalCopy[1])
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
  v3 = [(NSData *)self->_workoutUUID hash];
  v4 = [(NSData *)self->_zonesSampleUUID hash]^ v3;
  return v4 ^ [(HDCodableSyncIdentity *)self->_syncIdentity hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[2])
  {
    [(HDCodableWorkoutZonesAssociation *)self setWorkoutUUID:?];
    fromCopy = v7;
  }

  if (fromCopy[3])
  {
    [(HDCodableWorkoutZonesAssociation *)self setZonesSampleUUID:?];
    fromCopy = v7;
  }

  syncIdentity = self->_syncIdentity;
  v6 = fromCopy[1];
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

    syncIdentity = [(HDCodableWorkoutZonesAssociation *)self setSyncIdentity:?];
  }

  fromCopy = v7;
LABEL_11:

  MEMORY[0x2821F96F8](syncIdentity, fromCopy);
}

@end