@interface NPKProtoPassSyncStateChange
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)npkDescription;
- (int)StringAsChangeType:(id)a3;
- (unint64_t)hash;
- (void)addRemoteAssetsForPartialUpdate:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasPassSegmentIndex:(BOOL)a3;
- (void)setHasPassSegmentTotal:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoPassSyncStateChange

- (int)StringAsChangeType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Add"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Update"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Remove"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPassSegmentIndex:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasPassSegmentTotal:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addRemoteAssetsForPartialUpdate:(id)a3
{
  v4 = a3;
  remoteAssetsForPartialUpdates = self->_remoteAssetsForPartialUpdates;
  v8 = v4;
  if (!remoteAssetsForPartialUpdates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_remoteAssetsForPartialUpdates;
    self->_remoteAssetsForPartialUpdates = v6;

    v4 = v8;
    remoteAssetsForPartialUpdates = self->_remoteAssetsForPartialUpdates;
  }

  [(NSMutableArray *)remoteAssetsForPartialUpdates addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoPassSyncStateChange;
  v4 = [(NPKProtoPassSyncStateChange *)&v8 description];
  v5 = [(NPKProtoPassSyncStateChange *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  changeUUID = self->_changeUUID;
  if (changeUUID)
  {
    [v3 setObject:changeUUID forKey:@"changeUUID"];
  }

  lastKnownReconciledPassSyncStateHash = self->_lastKnownReconciledPassSyncStateHash;
  if (lastKnownReconciledPassSyncStateHash)
  {
    [v4 setObject:lastKnownReconciledPassSyncStateHash forKey:@"lastKnownReconciledPassSyncStateHash"];
  }

  changeType = self->_changeType;
  if (changeType >= 3)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_changeType];
  }

  else
  {
    v8 = off_279949820[changeType];
  }

  [v4 setObject:v8 forKey:@"changeType"];

  uniqueID = self->_uniqueID;
  if (uniqueID)
  {
    [v4 setObject:uniqueID forKey:@"uniqueID"];
  }

  syncStateItem = self->_syncStateItem;
  if (syncStateItem)
  {
    v11 = [(NPKProtoPassSyncStateItem *)syncStateItem dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"syncStateItem"];
  }

  passData = self->_passData;
  if (passData)
  {
    [v4 setObject:passData forKey:@"passData"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_passSegmentIndex];
    [v4 setObject:v14 forKey:@"passSegmentIndex"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_passSegmentTotal];
    [v4 setObject:v15 forKey:@"passSegmentTotal"];
  }

  companionCatalog = self->_companionCatalog;
  if (companionCatalog)
  {
    v17 = [(NPKProtoCatalog *)companionCatalog dictionaryRepresentation];
    [v4 setObject:v17 forKey:@"companionCatalog"];
  }

  baseManifestHashForPartialUpdate = self->_baseManifestHashForPartialUpdate;
  if (baseManifestHashForPartialUpdate)
  {
    [v4 setObject:baseManifestHashForPartialUpdate forKey:@"baseManifestHashForPartialUpdate"];
  }

  if ([(NSMutableArray *)self->_remoteAssetsForPartialUpdates count])
  {
    v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_remoteAssetsForPartialUpdates, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v20 = self->_remoteAssetsForPartialUpdates;
    v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v32;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v32 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [*(*(&v31 + 1) + 8 * i) dictionaryRepresentation];
          [v19 addObject:v25];
        }

        v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v22);
    }

    [v4 setObject:v19 forKey:@"remoteAssetsForPartialUpdate"];
  }

  watchCatalog = self->_watchCatalog;
  if (watchCatalog)
  {
    v27 = [(NPKProtoCatalog *)watchCatalog dictionaryRepresentation];
    [v4 setObject:v27 forKey:@"watchCatalog"];
  }

  if (*&self->_has)
  {
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_lastKnownReconciledPassSyncStateHashVersion];
    [v4 setObject:v28 forKey:@"lastKnownReconciledPassSyncStateHashVersion"];
  }

  v29 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_changeUUID)
  {
    [NPKProtoPassSyncStateChange writeTo:];
  }

  v5 = v4;
  PBDataWriterWriteDataField();
  if (self->_lastKnownReconciledPassSyncStateHash)
  {
    PBDataWriterWriteDataField();
  }

  changeType = self->_changeType;
  PBDataWriterWriteInt32Field();
  if (!self->_uniqueID)
  {
    [NPKProtoPassSyncStateChange writeTo:];
  }

  PBDataWriterWriteStringField();
  if (self->_syncStateItem)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_passData)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    passSegmentIndex = self->_passSegmentIndex;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    passSegmentTotal = self->_passSegmentTotal;
    PBDataWriterWriteUint32Field();
  }

  if (self->_companionCatalog)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_baseManifestHashForPartialUpdate)
  {
    PBDataWriterWriteDataField();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_remoteAssetsForPartialUpdates;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  if (self->_watchCatalog)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    lastKnownReconciledPassSyncStateHashVersion = self->_lastKnownReconciledPassSyncStateHashVersion;
    PBDataWriterWriteUint32Field();
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v9 = a3;
  [v9 setChangeUUID:self->_changeUUID];
  if (self->_lastKnownReconciledPassSyncStateHash)
  {
    [v9 setLastKnownReconciledPassSyncStateHash:?];
  }

  *(v9 + 4) = self->_changeType;
  [v9 setUniqueID:self->_uniqueID];
  if (self->_syncStateItem)
  {
    [v9 setSyncStateItem:?];
  }

  if (self->_passData)
  {
    [v9 setPassData:?];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v9 + 16) = self->_passSegmentIndex;
    *(v9 + 104) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v9 + 17) = self->_passSegmentTotal;
    *(v9 + 104) |= 4u;
  }

  if (self->_companionCatalog)
  {
    [v9 setCompanionCatalog:?];
  }

  if (self->_baseManifestHashForPartialUpdate)
  {
    [v9 setBaseManifestHashForPartialUpdate:?];
  }

  if ([(NPKProtoPassSyncStateChange *)self remoteAssetsForPartialUpdatesCount])
  {
    [v9 clearRemoteAssetsForPartialUpdates];
    v5 = [(NPKProtoPassSyncStateChange *)self remoteAssetsForPartialUpdatesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NPKProtoPassSyncStateChange *)self remoteAssetsForPartialUpdateAtIndex:i];
        [v9 addRemoteAssetsForPartialUpdate:v8];
      }
    }
  }

  if (self->_watchCatalog)
  {
    [v9 setWatchCatalog:?];
  }

  if (*&self->_has)
  {
    *(v9 + 12) = self->_lastKnownReconciledPassSyncStateHashVersion;
    *(v9 + 104) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_changeUUID copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSData *)self->_lastKnownReconciledPassSyncStateHash copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  *(v5 + 16) = self->_changeType;
  v10 = [(NSString *)self->_uniqueID copyWithZone:a3];
  v11 = *(v5 + 88);
  *(v5 + 88) = v10;

  v12 = [(NPKProtoPassSyncStateItem *)self->_syncStateItem copyWithZone:a3];
  v13 = *(v5 + 80);
  *(v5 + 80) = v12;

  v14 = [(NSData *)self->_passData copyWithZone:a3];
  v15 = *(v5 + 56);
  *(v5 + 56) = v14;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 64) = self->_passSegmentIndex;
    *(v5 + 104) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 68) = self->_passSegmentTotal;
    *(v5 + 104) |= 4u;
  }

  v17 = [(NPKProtoCatalog *)self->_companionCatalog copyWithZone:a3];
  v18 = *(v5 + 32);
  *(v5 + 32) = v17;

  v19 = [(NSData *)self->_baseManifestHashForPartialUpdate copyWithZone:a3];
  v20 = *(v5 + 8);
  *(v5 + 8) = v19;

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v21 = self->_remoteAssetsForPartialUpdates;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v32;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v31 + 1) + 8 * i) copyWithZone:{a3, v31}];
        [v5 addRemoteAssetsForPartialUpdate:v26];
      }

      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v23);
  }

  v27 = [(NPKProtoCatalog *)self->_watchCatalog copyWithZone:a3];
  v28 = *(v5 + 96);
  *(v5 + 96) = v27;

  if (*&self->_has)
  {
    *(v5 + 48) = self->_lastKnownReconciledPassSyncStateHashVersion;
    *(v5 + 104) |= 1u;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  changeUUID = self->_changeUUID;
  if (changeUUID | *(v4 + 3))
  {
    if (![(NSData *)changeUUID isEqual:?])
    {
      goto LABEL_35;
    }
  }

  lastKnownReconciledPassSyncStateHash = self->_lastKnownReconciledPassSyncStateHash;
  if (lastKnownReconciledPassSyncStateHash | *(v4 + 5))
  {
    if (![(NSData *)lastKnownReconciledPassSyncStateHash isEqual:?])
    {
      goto LABEL_35;
    }
  }

  if (self->_changeType != *(v4 + 4))
  {
    goto LABEL_35;
  }

  uniqueID = self->_uniqueID;
  if (uniqueID | *(v4 + 11))
  {
    if (![(NSString *)uniqueID isEqual:?])
    {
      goto LABEL_35;
    }
  }

  syncStateItem = self->_syncStateItem;
  if (syncStateItem | *(v4 + 10))
  {
    if (![(NPKProtoPassSyncStateItem *)syncStateItem isEqual:?])
    {
      goto LABEL_35;
    }
  }

  passData = self->_passData;
  if (passData | *(v4 + 7))
  {
    if (![(NSData *)passData isEqual:?])
    {
      goto LABEL_35;
    }
  }

  v10 = *(v4 + 104);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 104) & 2) == 0 || self->_passSegmentIndex != *(v4 + 16))
    {
      goto LABEL_35;
    }
  }

  else if ((*(v4 + 104) & 2) != 0)
  {
LABEL_35:
    v15 = 0;
    goto LABEL_36;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 104) & 4) == 0 || self->_passSegmentTotal != *(v4 + 17))
    {
      goto LABEL_35;
    }
  }

  else if ((*(v4 + 104) & 4) != 0)
  {
    goto LABEL_35;
  }

  companionCatalog = self->_companionCatalog;
  if (companionCatalog | *(v4 + 4) && ![(NPKProtoCatalog *)companionCatalog isEqual:?])
  {
    goto LABEL_35;
  }

  baseManifestHashForPartialUpdate = self->_baseManifestHashForPartialUpdate;
  if (baseManifestHashForPartialUpdate | *(v4 + 1))
  {
    if (![(NSData *)baseManifestHashForPartialUpdate isEqual:?])
    {
      goto LABEL_35;
    }
  }

  remoteAssetsForPartialUpdates = self->_remoteAssetsForPartialUpdates;
  if (remoteAssetsForPartialUpdates | *(v4 + 9))
  {
    if (![(NSMutableArray *)remoteAssetsForPartialUpdates isEqual:?])
    {
      goto LABEL_35;
    }
  }

  watchCatalog = self->_watchCatalog;
  if (watchCatalog | *(v4 + 12))
  {
    if (![(NPKProtoCatalog *)watchCatalog isEqual:?])
    {
      goto LABEL_35;
    }
  }

  v15 = (*(v4 + 104) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 104) & 1) == 0 || self->_lastKnownReconciledPassSyncStateHashVersion != *(v4 + 12))
    {
      goto LABEL_35;
    }

    v15 = 1;
  }

LABEL_36:

  return v15;
}

- (unint64_t)hash
{
  v17 = [(NSData *)self->_changeUUID hash];
  v3 = [(NSData *)self->_lastKnownReconciledPassSyncStateHash hash];
  changeType = self->_changeType;
  v16 = v3;
  v4 = [(NSString *)self->_uniqueID hash];
  v5 = [(NPKProtoPassSyncStateItem *)self->_syncStateItem hash];
  v6 = [(NSData *)self->_passData hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_passSegmentIndex;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v8 = 2654435761 * self->_passSegmentTotal;
      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = [(NPKProtoCatalog *)self->_companionCatalog hash];
  v10 = [(NSData *)self->_baseManifestHashForPartialUpdate hash];
  v11 = [(NSMutableArray *)self->_remoteAssetsForPartialUpdates hash];
  v12 = [(NPKProtoCatalog *)self->_watchCatalog hash];
  if (*&self->_has)
  {
    v13 = 2654435761 * self->_lastKnownReconciledPassSyncStateHashVersion;
  }

  else
  {
    v13 = 0;
  }

  return v16 ^ v17 ^ v4 ^ v5 ^ v6 ^ (2654435761 * changeType) ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 3))
  {
    [(NPKProtoPassSyncStateChange *)self setChangeUUID:?];
  }

  if (*(v4 + 5))
  {
    [(NPKProtoPassSyncStateChange *)self setLastKnownReconciledPassSyncStateHash:?];
  }

  self->_changeType = *(v4 + 4);
  if (*(v4 + 11))
  {
    [(NPKProtoPassSyncStateChange *)self setUniqueID:?];
  }

  syncStateItem = self->_syncStateItem;
  v6 = *(v4 + 10);
  if (syncStateItem)
  {
    if (v6)
    {
      [(NPKProtoPassSyncStateItem *)syncStateItem mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(NPKProtoPassSyncStateChange *)self setSyncStateItem:?];
  }

  if (*(v4 + 7))
  {
    [(NPKProtoPassSyncStateChange *)self setPassData:?];
  }

  v7 = *(v4 + 104);
  if ((v7 & 2) != 0)
  {
    self->_passSegmentIndex = *(v4 + 16);
    *&self->_has |= 2u;
    v7 = *(v4 + 104);
  }

  if ((v7 & 4) != 0)
  {
    self->_passSegmentTotal = *(v4 + 17);
    *&self->_has |= 4u;
  }

  companionCatalog = self->_companionCatalog;
  v9 = *(v4 + 4);
  if (companionCatalog)
  {
    if (v9)
    {
      [(NPKProtoCatalog *)companionCatalog mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(NPKProtoPassSyncStateChange *)self setCompanionCatalog:?];
  }

  if (*(v4 + 1))
  {
    [(NPKProtoPassSyncStateChange *)self setBaseManifestHashForPartialUpdate:?];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = *(v4 + 9);
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(NPKProtoPassSyncStateChange *)self addRemoteAssetsForPartialUpdate:*(*(&v18 + 1) + 8 * i), v18];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  watchCatalog = self->_watchCatalog;
  v16 = *(v4 + 12);
  if (watchCatalog)
  {
    if (v16)
    {
      [(NPKProtoCatalog *)watchCatalog mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(NPKProtoPassSyncStateChange *)self setWatchCatalog:?];
  }

  if (*(v4 + 104))
  {
    self->_lastKnownReconciledPassSyncStateHashVersion = *(v4 + 12);
    *&self->_has |= 1u;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)npkDescription
{
  v3 = [(NPKProtoPassSyncStateChange *)self dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [(NPKProtoPassSyncStateChange *)self passData];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 npkDescription];
    [v4 setObject:v7 forKey:@"passData"];
  }

  v8 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = NPKProtoPassSyncStateChange;
  v9 = [(NPKProtoPassSyncStateChange *)&v12 description];
  v10 = [v8 stringWithFormat:@"%@ %@", v9, v4];

  return v10;
}

@end