@interface HDCloudSyncCodableStore
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDeviceMode:(id)mode;
- (int)StringAsRequiredProtocolVersion:(id)version;
- (int)StringAsSupportedProtocolVersion:(id)version;
- (int)deviceMode;
- (int)requiredProtocolVersion;
- (int)supportedProtocolVersion;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasActive:(BOOL)active;
- (void)setHasDeviceMode:(BOOL)mode;
- (void)setHasIsChild:(BOOL)child;
- (void)setHasRequiredProtocolVersion:(BOOL)version;
- (void)setHasSupportedProtocolVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation HDCloudSyncCodableStore

- (void)setHasIsChild:(BOOL)child
{
  if (child)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasActive:(BOOL)active
{
  if (active)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)deviceMode
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_deviceMode;
  }

  else
  {
    return 1;
  }
}

- (void)setHasDeviceMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsDeviceMode:(id)mode
{
  modeCopy = mode;
  v4 = 1;
  if (([modeCopy isEqualToString:@"Basic"] & 1) == 0)
  {
    if ([modeCopy isEqualToString:@"Satellite"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (int)supportedProtocolVersion
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_supportedProtocolVersion;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSupportedProtocolVersion:(BOOL)version
{
  if (version)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsSupportedProtocolVersion:(id)version
{
  versionCopy = version;
  if ([versionCopy isEqualToString:@"Tigris"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [versionCopy isEqualToString:@"Yukon"];
  }

  return v4;
}

- (int)requiredProtocolVersion
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_requiredProtocolVersion;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRequiredProtocolVersion:(BOOL)version
{
  if (version)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsRequiredProtocolVersion:(id)version
{
  versionCopy = version;
  if ([versionCopy isEqualToString:@"Tigris"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [versionCopy isEqualToString:@"Yukon"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCloudSyncCodableStore;
  v4 = [(HDCloudSyncCodableStore *)&v8 description];
  dictionaryRepresentation = [(HDCloudSyncCodableStore *)self dictionaryRepresentation];
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

  pendingOwnerIdentifier = self->_pendingOwnerIdentifier;
  if (pendingOwnerIdentifier)
  {
    [v4 setObject:pendingOwnerIdentifier forKey:@"pendingOwnerIdentifier"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_order];
    [v4 setObject:v7 forKey:@"order"];
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    dictionaryRepresentation = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"syncIdentity"];
  }

  pendingSyncIdentity = self->_pendingSyncIdentity;
  if (pendingSyncIdentity)
  {
    dictionaryRepresentation2 = [(HDCodableSyncIdentity *)pendingSyncIdentity dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"pendingSyncIdentity"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_isChild];
    [v4 setObject:v12 forKey:@"isChild"];
  }

  storeIdentifier = self->_storeIdentifier;
  if (storeIdentifier)
  {
    [v4 setObject:storeIdentifier forKey:@"storeIdentifier"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_active];
    [v4 setObject:v15 forKey:@"active"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_17:
      if ((has & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_27;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_17;
  }

  deviceMode = self->_deviceMode;
  if (deviceMode == 1)
  {
    v17 = @"Basic";
  }

  else if (deviceMode == 2)
  {
    v17 = @"Satellite";
  }

  else
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_deviceMode];
  }

  [v4 setObject:v17 forKey:@"deviceMode"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_18:
    if ((has & 4) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

LABEL_27:
  supportedProtocolVersion = self->_supportedProtocolVersion;
  if (supportedProtocolVersion)
  {
    if (supportedProtocolVersion == 1)
    {
      v19 = @"Yukon";
    }

    else
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_supportedProtocolVersion];
    }
  }

  else
  {
    v19 = @"Tigris";
  }

  [v4 setObject:v19 forKey:@"supportedProtocolVersion"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_33:
    requiredProtocolVersion = self->_requiredProtocolVersion;
    if (requiredProtocolVersion)
    {
      if (requiredProtocolVersion == 1)
      {
        v21 = @"Yukon";
      }

      else
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_requiredProtocolVersion];
      }
    }

    else
    {
      v21 = @"Tigris";
    }

    [v4 setObject:v21 forKey:@"requiredProtocolVersion"];
  }

LABEL_39:
  systemBuildVersion = self->_systemBuildVersion;
  if (systemBuildVersion)
  {
    [v4 setObject:systemBuildVersion forKey:@"systemBuildVersion"];
  }

  productType = self->_productType;
  if (productType)
  {
    [v4 setObject:productType forKey:@"productType"];
  }

  deviceName = self->_deviceName;
  if (deviceName)
  {
    [v4 setObject:deviceName forKey:@"deviceName"];
  }

  shardPredicate = self->_shardPredicate;
  if (shardPredicate)
  {
    dictionaryRepresentation3 = [(HDCloudSyncCodableShardPredicate *)shardPredicate dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"shardPredicate"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v12 = toCopy;
  if (self->_ownerIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if (self->_pendingOwnerIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if (*&self->_has)
  {
    order = self->_order;
    PBDataWriterWriteInt64Field();
    toCopy = v12;
  }

  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v12;
  }

  if (self->_pendingSyncIdentity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v12;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    isChild = self->_isChild;
    PBDataWriterWriteBOOLField();
    toCopy = v12;
  }

  if (self->_storeIdentifier)
  {
    PBDataWriterWriteDataField();
    toCopy = v12;
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    active = self->_active;
    PBDataWriterWriteBOOLField();
    toCopy = v12;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_17:
      if ((has & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_33;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_17;
  }

  deviceMode = self->_deviceMode;
  PBDataWriterWriteInt32Field();
  toCopy = v12;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_18:
    if ((has & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_33:
  supportedProtocolVersion = self->_supportedProtocolVersion;
  PBDataWriterWriteInt32Field();
  toCopy = v12;
  if ((*&self->_has & 4) != 0)
  {
LABEL_19:
    requiredProtocolVersion = self->_requiredProtocolVersion;
    PBDataWriterWriteInt32Field();
    toCopy = v12;
  }

LABEL_20:
  if (self->_systemBuildVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if (self->_productType)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if (self->_deviceName)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if (self->_shardPredicate)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v12;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_ownerIdentifier)
  {
    [toCopy setOwnerIdentifier:?];
    toCopy = v6;
  }

  if (self->_pendingOwnerIdentifier)
  {
    [v6 setPendingOwnerIdentifier:?];
    toCopy = v6;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_order;
    *(toCopy + 116) |= 1u;
  }

  if (self->_syncIdentity)
  {
    [v6 setSyncIdentity:?];
    toCopy = v6;
  }

  if (self->_pendingSyncIdentity)
  {
    [v6 setPendingSyncIdentity:?];
    toCopy = v6;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(toCopy + 113) = self->_isChild;
    *(toCopy + 116) |= 0x20u;
  }

  if (self->_storeIdentifier)
  {
    [v6 setStoreIdentifier:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(toCopy + 112) = self->_active;
    *(toCopy + 116) |= 0x10u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_17:
      if ((has & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_33;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_17;
  }

  *(toCopy + 4) = self->_deviceMode;
  *(toCopy + 116) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_18:
    if ((has & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_33:
  *(toCopy + 22) = self->_supportedProtocolVersion;
  *(toCopy + 116) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_19:
    *(toCopy + 16) = self->_requiredProtocolVersion;
    *(toCopy + 116) |= 4u;
  }

LABEL_20:
  if (self->_systemBuildVersion)
  {
    [v6 setSystemBuildVersion:?];
    toCopy = v6;
  }

  if (self->_productType)
  {
    [v6 setProductType:?];
    toCopy = v6;
  }

  if (self->_deviceName)
  {
    [v6 setDeviceName:?];
    toCopy = v6;
  }

  if (self->_shardPredicate)
  {
    [v6 setShardPredicate:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_ownerIdentifier copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_pendingOwnerIdentifier copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_order;
    *(v5 + 116) |= 1u;
  }

  v10 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:zone];
  v11 = *(v5 + 96);
  *(v5 + 96) = v10;

  v12 = [(HDCodableSyncIdentity *)self->_pendingSyncIdentity copyWithZone:zone];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  if ((*&self->_has & 0x20) != 0)
  {
    *(v5 + 113) = self->_isChild;
    *(v5 + 116) |= 0x20u;
  }

  v14 = [(NSData *)self->_storeIdentifier copyWithZone:zone];
  v15 = *(v5 + 80);
  *(v5 + 80) = v14;

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v5 + 112) = self->_active;
    *(v5 + 116) |= 0x10u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      *(v5 + 88) = self->_supportedProtocolVersion;
      *(v5 + 116) |= 8u;
      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  *(v5 + 16) = self->_deviceMode;
  *(v5 + 116) |= 2u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((has & 4) != 0)
  {
LABEL_9:
    *(v5 + 64) = self->_requiredProtocolVersion;
    *(v5 + 116) |= 4u;
  }

LABEL_10:
  v17 = [(NSString *)self->_systemBuildVersion copyWithZone:zone];
  v18 = *(v5 + 104);
  *(v5 + 104) = v17;

  v19 = [(NSString *)self->_productType copyWithZone:zone];
  v20 = *(v5 + 56);
  *(v5 + 56) = v19;

  v21 = [(NSString *)self->_deviceName copyWithZone:zone];
  v22 = *(v5 + 24);
  *(v5 + 24) = v21;

  v23 = [(HDCloudSyncCodableShardPredicate *)self->_shardPredicate copyWithZone:zone];
  v24 = *(v5 + 72);
  *(v5 + 72) = v23;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_57;
  }

  ownerIdentifier = self->_ownerIdentifier;
  if (ownerIdentifier | *(equalCopy + 4))
  {
    if (![(NSString *)ownerIdentifier isEqual:?])
    {
      goto LABEL_57;
    }
  }

  pendingOwnerIdentifier = self->_pendingOwnerIdentifier;
  if (pendingOwnerIdentifier | *(equalCopy + 5))
  {
    if (![(NSString *)pendingOwnerIdentifier isEqual:?])
    {
      goto LABEL_57;
    }
  }

  v7 = *(equalCopy + 116);
  if (*&self->_has)
  {
    if ((*(equalCopy + 116) & 1) == 0 || self->_order != *(equalCopy + 1))
    {
      goto LABEL_57;
    }
  }

  else if (*(equalCopy + 116))
  {
    goto LABEL_57;
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity | *(equalCopy + 12) && ![(HDCodableSyncIdentity *)syncIdentity isEqual:?])
  {
    goto LABEL_57;
  }

  pendingSyncIdentity = self->_pendingSyncIdentity;
  if (pendingSyncIdentity | *(equalCopy + 6))
  {
    if (![(HDCodableSyncIdentity *)pendingSyncIdentity isEqual:?])
    {
      goto LABEL_57;
    }
  }

  has = self->_has;
  v11 = *(equalCopy + 116);
  if ((has & 0x20) != 0)
  {
    if ((*(equalCopy + 116) & 0x20) == 0)
    {
      goto LABEL_57;
    }

    v13 = *(equalCopy + 113);
    if (self->_isChild)
    {
      if ((*(equalCopy + 113) & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    else if (*(equalCopy + 113))
    {
      goto LABEL_57;
    }
  }

  else if ((*(equalCopy + 116) & 0x20) != 0)
  {
    goto LABEL_57;
  }

  storeIdentifier = self->_storeIdentifier;
  if (storeIdentifier | *(equalCopy + 10))
  {
    if (![(NSData *)storeIdentifier isEqual:?])
    {
      goto LABEL_57;
    }

    has = self->_has;
    v11 = *(equalCopy + 116);
  }

  if ((has & 0x10) == 0)
  {
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_22;
    }

LABEL_57:
    v19 = 0;
    goto LABEL_58;
  }

  if ((v11 & 0x10) == 0)
  {
    goto LABEL_57;
  }

  v14 = *(equalCopy + 112);
  if (self->_active)
  {
    if ((*(equalCopy + 112) & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (*(equalCopy + 112))
  {
    goto LABEL_57;
  }

LABEL_22:
  if ((has & 2) != 0)
  {
    if ((v11 & 2) == 0 || self->_deviceMode != *(equalCopy + 4))
    {
      goto LABEL_57;
    }
  }

  else if ((v11 & 2) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 8) != 0)
  {
    if ((v11 & 8) == 0 || self->_supportedProtocolVersion != *(equalCopy + 22))
    {
      goto LABEL_57;
    }
  }

  else if ((v11 & 8) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 4) != 0)
  {
    if ((v11 & 4) == 0 || self->_requiredProtocolVersion != *(equalCopy + 16))
    {
      goto LABEL_57;
    }
  }

  else if ((v11 & 4) != 0)
  {
    goto LABEL_57;
  }

  systemBuildVersion = self->_systemBuildVersion;
  if (systemBuildVersion | *(equalCopy + 13) && ![(NSString *)systemBuildVersion isEqual:?])
  {
    goto LABEL_57;
  }

  productType = self->_productType;
  if (productType | *(equalCopy + 7))
  {
    if (![(NSString *)productType isEqual:?])
    {
      goto LABEL_57;
    }
  }

  deviceName = self->_deviceName;
  if (deviceName | *(equalCopy + 3))
  {
    if (![(NSString *)deviceName isEqual:?])
    {
      goto LABEL_57;
    }
  }

  shardPredicate = self->_shardPredicate;
  if (shardPredicate | *(equalCopy + 9))
  {
    v19 = [(HDCloudSyncCodableShardPredicate *)shardPredicate isEqual:?];
  }

  else
  {
    v19 = 1;
  }

LABEL_58:

  return v19;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_ownerIdentifier hash];
  v4 = [(NSString *)self->_pendingOwnerIdentifier hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_order;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(HDCodableSyncIdentity *)self->_syncIdentity hash];
  v7 = [(HDCodableSyncIdentity *)self->_pendingSyncIdentity hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v8 = 2654435761 * self->_isChild;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(NSData *)self->_storeIdentifier hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v10 = 2654435761 * self->_active;
    if ((*&self->_has & 2) != 0)
    {
LABEL_9:
      v11 = 2654435761 * self->_deviceMode;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_10;
      }

LABEL_14:
      v12 = 0;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_11;
      }

LABEL_15:
      v13 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v10 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_9;
    }
  }

  v11 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  v12 = 2654435761 * self->_supportedProtocolVersion;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  v13 = 2654435761 * self->_requiredProtocolVersion;
LABEL_16:
  v14 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  v15 = v10 ^ v11 ^ v12 ^ v13 ^ [(NSString *)self->_systemBuildVersion hash];
  v16 = v15 ^ [(NSString *)self->_productType hash];
  v17 = v14 ^ v16 ^ [(NSString *)self->_deviceName hash];
  return v17 ^ [(HDCloudSyncCodableShardPredicate *)self->_shardPredicate hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v12 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(HDCloudSyncCodableStore *)self setOwnerIdentifier:?];
    fromCopy = v12;
  }

  if (*(fromCopy + 5))
  {
    [(HDCloudSyncCodableStore *)self setPendingOwnerIdentifier:?];
    fromCopy = v12;
  }

  if (*(fromCopy + 116))
  {
    self->_order = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  syncIdentity = self->_syncIdentity;
  v6 = *(fromCopy + 12);
  if (syncIdentity)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    [(HDCodableSyncIdentity *)syncIdentity mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    [(HDCloudSyncCodableStore *)self setSyncIdentity:?];
  }

  fromCopy = v12;
LABEL_13:
  pendingSyncIdentity = self->_pendingSyncIdentity;
  v8 = *(fromCopy + 6);
  if (pendingSyncIdentity)
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    [(HDCodableSyncIdentity *)pendingSyncIdentity mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    [(HDCloudSyncCodableStore *)self setPendingSyncIdentity:?];
  }

  fromCopy = v12;
LABEL_19:
  if ((*(fromCopy + 116) & 0x20) != 0)
  {
    self->_isChild = *(fromCopy + 113);
    *&self->_has |= 0x20u;
  }

  if (*(fromCopy + 10))
  {
    [(HDCloudSyncCodableStore *)self setStoreIdentifier:?];
    fromCopy = v12;
  }

  v9 = *(fromCopy + 116);
  if ((v9 & 0x10) != 0)
  {
    self->_active = *(fromCopy + 112);
    *&self->_has |= 0x10u;
    v9 = *(fromCopy + 116);
    if ((v9 & 2) == 0)
    {
LABEL_25:
      if ((v9 & 8) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_39;
    }
  }

  else if ((*(fromCopy + 116) & 2) == 0)
  {
    goto LABEL_25;
  }

  self->_deviceMode = *(fromCopy + 4);
  *&self->_has |= 2u;
  v9 = *(fromCopy + 116);
  if ((v9 & 8) == 0)
  {
LABEL_26:
    if ((v9 & 4) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_39:
  self->_supportedProtocolVersion = *(fromCopy + 22);
  *&self->_has |= 8u;
  if ((*(fromCopy + 116) & 4) != 0)
  {
LABEL_27:
    self->_requiredProtocolVersion = *(fromCopy + 16);
    *&self->_has |= 4u;
  }

LABEL_28:
  if (*(fromCopy + 13))
  {
    [(HDCloudSyncCodableStore *)self setSystemBuildVersion:?];
    fromCopy = v12;
  }

  if (*(fromCopy + 7))
  {
    [(HDCloudSyncCodableStore *)self setProductType:?];
    fromCopy = v12;
  }

  if (*(fromCopy + 3))
  {
    [(HDCloudSyncCodableStore *)self setDeviceName:?];
    fromCopy = v12;
  }

  shardPredicate = self->_shardPredicate;
  v11 = *(fromCopy + 9);
  if (shardPredicate)
  {
    if (!v11)
    {
      goto LABEL_44;
    }

    shardPredicate = [(HDCloudSyncCodableShardPredicate *)shardPredicate mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_44;
    }

    shardPredicate = [(HDCloudSyncCodableStore *)self setShardPredicate:?];
  }

  fromCopy = v12;
LABEL_44:

  MEMORY[0x2821F96F8](shardPredicate, fromCopy);
}

@end