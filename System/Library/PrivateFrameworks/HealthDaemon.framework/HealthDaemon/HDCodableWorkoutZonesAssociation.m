@interface HDCodableWorkoutZonesAssociation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableWorkoutZonesAssociation

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableWorkoutZonesAssociation;
  v4 = [(HDCodableWorkoutZonesAssociation *)&v8 description];
  v5 = [(HDCodableWorkoutZonesAssociation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  workoutUUID = self->_workoutUUID;
  if (workoutUUID)
  {
    [v3 setObject:workoutUUID forKey:@"workoutUUID"];
  }

  zonesSampleUUID = self->_zonesSampleUUID;
  if (zonesSampleUUID)
  {
    [v4 setObject:zonesSampleUUID forKey:@"zonesSampleUUID"];
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
  if (self->_workoutUUID)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_zonesSampleUUID)
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
  if (self->_workoutUUID)
  {
    [v4 setWorkoutUUID:?];
    v4 = v5;
  }

  if (self->_zonesSampleUUID)
  {
    [v5 setZonesSampleUUID:?];
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
  v6 = [(NSData *)self->_workoutUUID copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_zonesSampleUUID copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((workoutUUID = self->_workoutUUID, !(workoutUUID | v4[2])) || -[NSData isEqual:](workoutUUID, "isEqual:")) && ((zonesSampleUUID = self->_zonesSampleUUID, !(zonesSampleUUID | v4[3])) || -[NSData isEqual:](zonesSampleUUID, "isEqual:")))
  {
    syncIdentity = self->_syncIdentity;
    if (syncIdentity | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[2])
  {
    [(HDCodableWorkoutZonesAssociation *)self setWorkoutUUID:?];
    v4 = v7;
  }

  if (v4[3])
  {
    [(HDCodableWorkoutZonesAssociation *)self setZonesSampleUUID:?];
    v4 = v7;
  }

  syncIdentity = self->_syncIdentity;
  v6 = v4[1];
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

  v4 = v7;
LABEL_11:

  MEMORY[0x2821F96F8](syncIdentity, v4);
}

@end