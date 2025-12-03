@interface HDCodableNanoSyncMessage
+ (id)messageFromPersistentUserInfo:(id)info;
+ (id)messageWithSyncStore:(id)store profile:(id)profile;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyPersistentUserInfo;
- (id)copyWithZone:(_NSZone *)zone;
- (id)decodedHealthPairingUUID;
- (id)decodedPersistentPairingUUID;
- (id)dictionaryRepresentation;
- (id)nanoSyncDescription;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableNanoSyncMessage

- (id)copyPersistentUserInfo
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(HDCodableNanoSyncActivationRestore *)self->_activationRestore addToPersistentUserInfo:v3];
  [(HDCodableNanoSyncStatus *)self->_status addToPersistentUserInfo:v3];
  [(HDCodableNanoSyncChangeSet *)self->_changeSet addToPersistentUserInfo:v3];
  return v3;
}

- (id)nanoSyncDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__HDCodableNanoSyncMessage_NanoSyncSupport__nanoSyncDescription__block_invoke;
  aBlock[3] = &unk_2786230F8;
  v9 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);
  v5[2](v5, self->_activationRestore);
  v5[2](v5, self->_changeSet);
  v5[2](v5, self->_status);
  v6 = [v4 componentsJoinedByString:{@", "}];

  return v6;
}

void __64__HDCodableNanoSyncMessage_NanoSyncSupport__nanoSyncDescription__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = MEMORY[0x277CCACA8];
    v5 = [a2 nanoSyncDescription];
    v4 = [v3 stringWithFormat:@"<%@>", v5];
    [v2 addObject:v4];
  }
}

- (id)decodedPersistentPairingUUID
{
  if (self->_persistentPairingUUID)
  {
    v3 = [MEMORY[0x277CCAD78] hk_UUIDWithData:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)decodedHealthPairingUUID
{
  if (self->_healthPairingUUID)
  {
    v3 = [MEMORY[0x277CCAD78] hk_UUIDWithData:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)messageWithSyncStore:(id)store profile:(id)profile
{
  profileCopy = profile;
  storeCopy = store;
  v8 = objc_alloc_init(self);
  [v8 setVersion:{objc_msgSend(storeCopy, "protocolVersion")}];
  persistentUUID = [storeCopy persistentUUID];
  hk_dataForUUIDBytes = [persistentUUID hk_dataForUUIDBytes];
  [v8 setPersistentPairingUUID:hk_dataForUUIDBytes];

  healthUUID = [storeCopy healthUUID];
  hk_dataForUUIDBytes2 = [healthUUID hk_dataForUUIDBytes];
  [v8 setHealthPairingUUID:hk_dataForUUIDBytes2];

  LOBYTE(healthUUID) = [storeCopy isMaster];
  if ((healthUUID & 1) == 0)
  {
    daemon = [profileCopy daemon];
    behavior = [daemon behavior];
    tinkerModeEnabled = [behavior tinkerModeEnabled];

    if ((tinkerModeEnabled & 1) == 0)
    {
      syncIdentityManager = [profileCopy syncIdentityManager];
      currentSyncIdentity = [syncIdentityManager currentSyncIdentity];
      identity = [currentSyncIdentity identity];
      codableSyncIdentity = [identity codableSyncIdentity];
      [v8 setCurrentSyncIdentity:codableSyncIdentity];
    }
  }

  return v8;
}

+ (id)messageFromPersistentUserInfo:(id)info
{
  infoCopy = info;
  v4 = objc_alloc_init(HDCodableNanoSyncMessage);
  v5 = [HDCodableNanoSyncActivationRestore retreiveFromPersistentUserInfo:infoCopy];
  [(HDCodableNanoSyncMessage *)v4 setActivationRestore:v5];

  v6 = [HDCodableNanoSyncChangeSet retreiveFromPersistentUserInfo:infoCopy];
  [(HDCodableNanoSyncMessage *)v4 setChangeSet:v6];

  v7 = [HDCodableNanoSyncStatus retreiveFromPersistentUserInfo:infoCopy];

  [(HDCodableNanoSyncMessage *)v4 setStatus:v7];

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableNanoSyncMessage;
  v4 = [(HDCodableNanoSyncMessage *)&v8 description];
  dictionaryRepresentation = [(HDCodableNanoSyncMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_version];
    [dictionary setObject:v4 forKey:@"version"];
  }

  persistentPairingUUID = self->_persistentPairingUUID;
  if (persistentPairingUUID)
  {
    [dictionary setObject:persistentPairingUUID forKey:@"persistentPairingUUID"];
  }

  healthPairingUUID = self->_healthPairingUUID;
  if (healthPairingUUID)
  {
    [dictionary setObject:healthPairingUUID forKey:@"healthPairingUUID"];
  }

  changeSet = self->_changeSet;
  if (changeSet)
  {
    dictionaryRepresentation = [(HDCodableNanoSyncChangeSet *)changeSet dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"changeSet"];
  }

  status = self->_status;
  if (status)
  {
    dictionaryRepresentation2 = [(HDCodableNanoSyncStatus *)status dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"status"];
  }

  activationRestore = self->_activationRestore;
  if (activationRestore)
  {
    dictionaryRepresentation3 = [(HDCodableNanoSyncActivationRestore *)activationRestore dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"activationRestore"];
  }

  entityVersionMap = self->_entityVersionMap;
  if (entityVersionMap)
  {
    dictionaryRepresentation4 = [(HDCodableSyncEntityVersionMap *)entityVersionMap dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"entityVersionMap"];
  }

  currentSyncIdentity = self->_currentSyncIdentity;
  if (currentSyncIdentity)
  {
    dictionaryRepresentation5 = [(HDCodableSyncIdentity *)currentSyncIdentity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"currentSyncIdentity"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_persistentPairingUUID)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_healthPairingUUID)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_changeSet)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_status)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_activationRestore)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_entityVersionMap)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_currentSyncIdentity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[16] = self->_version;
    *(toCopy + 68) |= 1u;
  }

  v5 = toCopy;
  if (self->_persistentPairingUUID)
  {
    [toCopy setPersistentPairingUUID:?];
    toCopy = v5;
  }

  if (self->_healthPairingUUID)
  {
    [v5 setHealthPairingUUID:?];
    toCopy = v5;
  }

  if (self->_changeSet)
  {
    [v5 setChangeSet:?];
    toCopy = v5;
  }

  if (self->_status)
  {
    [v5 setStatus:?];
    toCopy = v5;
  }

  if (self->_activationRestore)
  {
    [v5 setActivationRestore:?];
    toCopy = v5;
  }

  if (self->_entityVersionMap)
  {
    [v5 setEntityVersionMap:?];
    toCopy = v5;
  }

  if (self->_currentSyncIdentity)
  {
    [v5 setCurrentSyncIdentity:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 64) = self->_version;
    *(v5 + 68) |= 1u;
  }

  v7 = [(NSData *)self->_persistentPairingUUID copyWithZone:zone];
  v8 = v6[6];
  v6[6] = v7;

  v9 = [(NSData *)self->_healthPairingUUID copyWithZone:zone];
  v10 = v6[5];
  v6[5] = v9;

  v11 = [(HDCodableNanoSyncChangeSet *)self->_changeSet copyWithZone:zone];
  v12 = v6[2];
  v6[2] = v11;

  v13 = [(HDCodableNanoSyncStatus *)self->_status copyWithZone:zone];
  v14 = v6[7];
  v6[7] = v13;

  v15 = [(HDCodableNanoSyncActivationRestore *)self->_activationRestore copyWithZone:zone];
  v16 = v6[1];
  v6[1] = v15;

  v17 = [(HDCodableSyncEntityVersionMap *)self->_entityVersionMap copyWithZone:zone];
  v18 = v6[4];
  v6[4] = v17;

  v19 = [(HDCodableSyncIdentity *)self->_currentSyncIdentity copyWithZone:zone];
  v20 = v6[3];
  v6[3] = v19;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = *(equalCopy + 68);
  if (*&self->_has)
  {
    if ((*(equalCopy + 68) & 1) == 0 || self->_version != *(equalCopy + 16))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 68))
  {
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  persistentPairingUUID = self->_persistentPairingUUID;
  if (persistentPairingUUID | *(equalCopy + 6) && ![(NSData *)persistentPairingUUID isEqual:?])
  {
    goto LABEL_21;
  }

  healthPairingUUID = self->_healthPairingUUID;
  if (healthPairingUUID | *(equalCopy + 5))
  {
    if (![(NSData *)healthPairingUUID isEqual:?])
    {
      goto LABEL_21;
    }
  }

  changeSet = self->_changeSet;
  if (changeSet | *(equalCopy + 2))
  {
    if (![(HDCodableNanoSyncChangeSet *)changeSet isEqual:?])
    {
      goto LABEL_21;
    }
  }

  status = self->_status;
  if (status | *(equalCopy + 7))
  {
    if (![(HDCodableNanoSyncStatus *)status isEqual:?])
    {
      goto LABEL_21;
    }
  }

  activationRestore = self->_activationRestore;
  if (activationRestore | *(equalCopy + 1))
  {
    if (![(HDCodableNanoSyncActivationRestore *)activationRestore isEqual:?])
    {
      goto LABEL_21;
    }
  }

  entityVersionMap = self->_entityVersionMap;
  if (entityVersionMap | *(equalCopy + 4))
  {
    if (![(HDCodableSyncEntityVersionMap *)entityVersionMap isEqual:?])
    {
      goto LABEL_21;
    }
  }

  currentSyncIdentity = self->_currentSyncIdentity;
  if (currentSyncIdentity | *(equalCopy + 3))
  {
    v13 = [(HDCodableSyncIdentity *)currentSyncIdentity isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_22:

  return v13;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_version;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_persistentPairingUUID hash]^ v3;
  v5 = [(NSData *)self->_healthPairingUUID hash];
  v6 = v4 ^ v5 ^ [(HDCodableNanoSyncChangeSet *)self->_changeSet hash];
  v7 = [(HDCodableNanoSyncStatus *)self->_status hash];
  v8 = v7 ^ [(HDCodableNanoSyncActivationRestore *)self->_activationRestore hash];
  v9 = v6 ^ v8 ^ [(HDCodableSyncEntityVersionMap *)self->_entityVersionMap hash];
  return v9 ^ [(HDCodableSyncIdentity *)self->_currentSyncIdentity hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 68))
  {
    self->_version = *(fromCopy + 16);
    *&self->_has |= 1u;
  }

  v16 = fromCopy;
  if (*(fromCopy + 6))
  {
    [(HDCodableNanoSyncMessage *)self setPersistentPairingUUID:?];
    v5 = v16;
  }

  if (v5[5])
  {
    [(HDCodableNanoSyncMessage *)self setHealthPairingUUID:?];
    v5 = v16;
  }

  changeSet = self->_changeSet;
  v7 = v5[2];
  if (changeSet)
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    [(HDCodableNanoSyncChangeSet *)changeSet mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    [(HDCodableNanoSyncMessage *)self setChangeSet:?];
  }

  v5 = v16;
LABEL_13:
  status = self->_status;
  v9 = v5[7];
  if (status)
  {
    if (!v9)
    {
      goto LABEL_19;
    }

    [(HDCodableNanoSyncStatus *)status mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_19;
    }

    [(HDCodableNanoSyncMessage *)self setStatus:?];
  }

  v5 = v16;
LABEL_19:
  activationRestore = self->_activationRestore;
  v11 = v5[1];
  if (activationRestore)
  {
    if (!v11)
    {
      goto LABEL_25;
    }

    [(HDCodableNanoSyncActivationRestore *)activationRestore mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_25;
    }

    [(HDCodableNanoSyncMessage *)self setActivationRestore:?];
  }

  v5 = v16;
LABEL_25:
  entityVersionMap = self->_entityVersionMap;
  v13 = v5[4];
  if (entityVersionMap)
  {
    if (!v13)
    {
      goto LABEL_31;
    }

    [(HDCodableSyncEntityVersionMap *)entityVersionMap mergeFrom:?];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_31;
    }

    [(HDCodableNanoSyncMessage *)self setEntityVersionMap:?];
  }

  v5 = v16;
LABEL_31:
  currentSyncIdentity = self->_currentSyncIdentity;
  v15 = v5[3];
  if (currentSyncIdentity)
  {
    if (!v15)
    {
      goto LABEL_37;
    }

    currentSyncIdentity = [(HDCodableSyncIdentity *)currentSyncIdentity mergeFrom:?];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_37;
    }

    currentSyncIdentity = [(HDCodableNanoSyncMessage *)self setCurrentSyncIdentity:?];
  }

  v5 = v16;
LABEL_37:

  MEMORY[0x2821F96F8](currentSyncIdentity, v5);
}

@end