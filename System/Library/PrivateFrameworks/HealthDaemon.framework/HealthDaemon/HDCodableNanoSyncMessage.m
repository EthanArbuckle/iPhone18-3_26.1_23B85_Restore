@interface HDCodableNanoSyncMessage
+ (id)messageFromPersistentUserInfo:(id)a3;
+ (id)messageWithSyncStore:(id)a3 profile:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyPersistentUserInfo;
- (id)copyWithZone:(_NSZone *)a3;
- (id)decodedHealthPairingUUID;
- (id)decodedPersistentPairingUUID;
- (id)dictionaryRepresentation;
- (id)nanoSyncDescription;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

+ (id)messageWithSyncStore:(id)a3 profile:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(a1);
  [v8 setVersion:{objc_msgSend(v7, "protocolVersion")}];
  v9 = [v7 persistentUUID];
  v10 = [v9 hk_dataForUUIDBytes];
  [v8 setPersistentPairingUUID:v10];

  v11 = [v7 healthUUID];
  v12 = [v11 hk_dataForUUIDBytes];
  [v8 setHealthPairingUUID:v12];

  LOBYTE(v11) = [v7 isMaster];
  if ((v11 & 1) == 0)
  {
    v13 = [v6 daemon];
    v14 = [v13 behavior];
    v15 = [v14 tinkerModeEnabled];

    if ((v15 & 1) == 0)
    {
      v16 = [v6 syncIdentityManager];
      v17 = [v16 currentSyncIdentity];
      v18 = [v17 identity];
      v19 = [v18 codableSyncIdentity];
      [v8 setCurrentSyncIdentity:v19];
    }
  }

  return v8;
}

+ (id)messageFromPersistentUserInfo:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(HDCodableNanoSyncMessage);
  v5 = [HDCodableNanoSyncActivationRestore retreiveFromPersistentUserInfo:v3];
  [(HDCodableNanoSyncMessage *)v4 setActivationRestore:v5];

  v6 = [HDCodableNanoSyncChangeSet retreiveFromPersistentUserInfo:v3];
  [(HDCodableNanoSyncMessage *)v4 setChangeSet:v6];

  v7 = [HDCodableNanoSyncStatus retreiveFromPersistentUserInfo:v3];

  [(HDCodableNanoSyncMessage *)v4 setStatus:v7];

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableNanoSyncMessage;
  v4 = [(HDCodableNanoSyncMessage *)&v8 description];
  v5 = [(HDCodableNanoSyncMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_version];
    [v3 setObject:v4 forKey:@"version"];
  }

  persistentPairingUUID = self->_persistentPairingUUID;
  if (persistentPairingUUID)
  {
    [v3 setObject:persistentPairingUUID forKey:@"persistentPairingUUID"];
  }

  healthPairingUUID = self->_healthPairingUUID;
  if (healthPairingUUID)
  {
    [v3 setObject:healthPairingUUID forKey:@"healthPairingUUID"];
  }

  changeSet = self->_changeSet;
  if (changeSet)
  {
    v8 = [(HDCodableNanoSyncChangeSet *)changeSet dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"changeSet"];
  }

  status = self->_status;
  if (status)
  {
    v10 = [(HDCodableNanoSyncStatus *)status dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"status"];
  }

  activationRestore = self->_activationRestore;
  if (activationRestore)
  {
    v12 = [(HDCodableNanoSyncActivationRestore *)activationRestore dictionaryRepresentation];
    [v3 setObject:v12 forKey:@"activationRestore"];
  }

  entityVersionMap = self->_entityVersionMap;
  if (entityVersionMap)
  {
    v14 = [(HDCodableSyncEntityVersionMap *)entityVersionMap dictionaryRepresentation];
    [v3 setObject:v14 forKey:@"entityVersionMap"];
  }

  currentSyncIdentity = self->_currentSyncIdentity;
  if (currentSyncIdentity)
  {
    v16 = [(HDCodableSyncIdentity *)currentSyncIdentity dictionaryRepresentation];
    [v3 setObject:v16 forKey:@"currentSyncIdentity"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_persistentPairingUUID)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_healthPairingUUID)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_changeSet)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_status)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_activationRestore)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_entityVersionMap)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_currentSyncIdentity)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[16] = self->_version;
    *(v4 + 68) |= 1u;
  }

  v5 = v4;
  if (self->_persistentPairingUUID)
  {
    [v4 setPersistentPairingUUID:?];
    v4 = v5;
  }

  if (self->_healthPairingUUID)
  {
    [v5 setHealthPairingUUID:?];
    v4 = v5;
  }

  if (self->_changeSet)
  {
    [v5 setChangeSet:?];
    v4 = v5;
  }

  if (self->_status)
  {
    [v5 setStatus:?];
    v4 = v5;
  }

  if (self->_activationRestore)
  {
    [v5 setActivationRestore:?];
    v4 = v5;
  }

  if (self->_entityVersionMap)
  {
    [v5 setEntityVersionMap:?];
    v4 = v5;
  }

  if (self->_currentSyncIdentity)
  {
    [v5 setCurrentSyncIdentity:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 64) = self->_version;
    *(v5 + 68) |= 1u;
  }

  v7 = [(NSData *)self->_persistentPairingUUID copyWithZone:a3];
  v8 = v6[6];
  v6[6] = v7;

  v9 = [(NSData *)self->_healthPairingUUID copyWithZone:a3];
  v10 = v6[5];
  v6[5] = v9;

  v11 = [(HDCodableNanoSyncChangeSet *)self->_changeSet copyWithZone:a3];
  v12 = v6[2];
  v6[2] = v11;

  v13 = [(HDCodableNanoSyncStatus *)self->_status copyWithZone:a3];
  v14 = v6[7];
  v6[7] = v13;

  v15 = [(HDCodableNanoSyncActivationRestore *)self->_activationRestore copyWithZone:a3];
  v16 = v6[1];
  v6[1] = v15;

  v17 = [(HDCodableSyncEntityVersionMap *)self->_entityVersionMap copyWithZone:a3];
  v18 = v6[4];
  v6[4] = v17;

  v19 = [(HDCodableSyncIdentity *)self->_currentSyncIdentity copyWithZone:a3];
  v20 = v6[3];
  v6[3] = v19;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = *(v4 + 68);
  if (*&self->_has)
  {
    if ((*(v4 + 68) & 1) == 0 || self->_version != *(v4 + 16))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 68))
  {
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  persistentPairingUUID = self->_persistentPairingUUID;
  if (persistentPairingUUID | *(v4 + 6) && ![(NSData *)persistentPairingUUID isEqual:?])
  {
    goto LABEL_21;
  }

  healthPairingUUID = self->_healthPairingUUID;
  if (healthPairingUUID | *(v4 + 5))
  {
    if (![(NSData *)healthPairingUUID isEqual:?])
    {
      goto LABEL_21;
    }
  }

  changeSet = self->_changeSet;
  if (changeSet | *(v4 + 2))
  {
    if (![(HDCodableNanoSyncChangeSet *)changeSet isEqual:?])
    {
      goto LABEL_21;
    }
  }

  status = self->_status;
  if (status | *(v4 + 7))
  {
    if (![(HDCodableNanoSyncStatus *)status isEqual:?])
    {
      goto LABEL_21;
    }
  }

  activationRestore = self->_activationRestore;
  if (activationRestore | *(v4 + 1))
  {
    if (![(HDCodableNanoSyncActivationRestore *)activationRestore isEqual:?])
    {
      goto LABEL_21;
    }
  }

  entityVersionMap = self->_entityVersionMap;
  if (entityVersionMap | *(v4 + 4))
  {
    if (![(HDCodableSyncEntityVersionMap *)entityVersionMap isEqual:?])
    {
      goto LABEL_21;
    }
  }

  currentSyncIdentity = self->_currentSyncIdentity;
  if (currentSyncIdentity | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 68))
  {
    self->_version = *(v4 + 16);
    *&self->_has |= 1u;
  }

  v16 = v4;
  if (*(v4 + 6))
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