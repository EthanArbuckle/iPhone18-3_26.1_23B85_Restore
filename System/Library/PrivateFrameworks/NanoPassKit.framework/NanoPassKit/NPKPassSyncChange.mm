@interface NPKPassSyncChange
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToChange:(id)change;
- (BOOL)isEqualToChangeIgnoringUUID:(id)d;
- (NPKPassSyncChange)initWithChangeUUID:(id)d reconciledStateHash:(id)hash reconciledStateVersion:(unint64_t)version changeType:(unint64_t)type uniqueID:(id)iD syncStateItem:(id)item passData:(id)data baseManifestHashForPartialUpdate:(id)self0 remoteAssetsForPartialUpdate:(id)self1;
- (NPKPassSyncChange)initWithCoder:(id)coder;
- (NPKPassSyncChange)initWithProtoPassSyncChange:(id)change;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)protoPassSyncChange;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NPKPassSyncChange

- (NPKPassSyncChange)initWithChangeUUID:(id)d reconciledStateHash:(id)hash reconciledStateVersion:(unint64_t)version changeType:(unint64_t)type uniqueID:(id)iD syncStateItem:(id)item passData:(id)data baseManifestHashForPartialUpdate:(id)self0 remoteAssetsForPartialUpdate:(id)self1
{
  dCopy = d;
  hashCopy = hash;
  iDCopy = iD;
  itemCopy = item;
  dataCopy = data;
  updateCopy = update;
  partialUpdateCopy = partialUpdate;
  v28.receiver = self;
  v28.super_class = NPKPassSyncChange;
  v18 = [(NPKPassSyncChange *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_changeUUID, d);
    objc_storeStrong(&v19->_reconciledStateHash, hash);
    v19->_reconciledStateVersion = version;
    v19->_changeType = type;
    objc_storeStrong(&v19->_uniqueID, iD);
    objc_storeStrong(&v19->_syncStateItem, item);
    objc_storeStrong(&v19->_passData, data);
    objc_storeStrong(&v19->_baseManifestHashForPartialUpdate, update);
    objc_storeStrong(&v19->_remoteAssetsForPartialUpdate, partialUpdate);
  }

  return v19;
}

- (id)description
{
  v17 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  changeUUID = self->_changeUUID;
  hexEncoding = [(NSData *)self->_reconciledStateHash hexEncoding];
  v6 = @"Add";
  reconciledStateVersion = self->_reconciledStateVersion;
  changeType = self->_changeType;
  if (changeType == 1)
  {
    v6 = @"Update";
  }

  if (changeType == 2)
  {
    v6 = @"Remove";
  }

  uniqueID = self->_uniqueID;
  syncStateItem = self->_syncStateItem;
  passData = self->_passData;
  v12 = v6;
  npkDescription = [(NSData *)passData npkDescription];
  hexEncoding2 = [(NSData *)self->_baseManifestHashForPartialUpdate hexEncoding];
  v15 = [v17 stringWithFormat:@"<%@: %p change UUID %@ reconciled state hash %@ version:%lu change type %@ unique ID %@ sync state item %@ pass data %@ base manifest hash for partial update %@>", v3, self, changeUUID, hexEncoding, reconciledStateVersion, v12, uniqueID, syncStateItem, npkDescription, hexEncoding2];

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(NPKPassSyncChange *)self isEqualToChange:v5];
  }

  return v6;
}

- (BOOL)isEqualToChange:(id)change
{
  changeCopy = change;
  changeUUID = self->_changeUUID;
  v6 = changeCopy[1];
  if (PKEqualObjects())
  {
    v7 = [(NPKPassSyncChange *)self isEqualToChangeIgnoringUUID:changeCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqualToChangeIgnoringUUID:(id)d
{
  dCopy = d;
  reconciledStateHash = self->_reconciledStateHash;
  v6 = dCopy[2];
  if (PKEqualObjects() && self->_changeType == dCopy[4] && (uniqueID = self->_uniqueID, v8 = dCopy[5], PKEqualObjects()) && (syncStateItem = self->_syncStateItem, v10 = dCopy[6], PKEqualObjects()) && (passData = self->_passData, v12 = dCopy[7], PKEqualObjects()))
  {
    baseManifestHashForPartialUpdate = self->_baseManifestHashForPartialUpdate;
    v14 = dCopy[8];
    v15 = PKEqualObjects();
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (unint64_t)hash
{
  array = [MEMORY[0x277CBEB18] array];
  [array safelyAddObject:self->_changeUUID];
  [array safelyAddObject:self->_reconciledStateHash];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_reconciledStateVersion];
  [array safelyAddObject:v4];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_changeType];
  [array safelyAddObject:v5];

  [array safelyAddObject:self->_uniqueID];
  [array safelyAddObject:self->_syncStateItem];
  [array safelyAddObject:self->_passData];
  [array safelyAddObject:self->_baseManifestHashForPartialUpdate];
  [array safelyAddObject:self->_remoteAssetsForPartialUpdate];
  v6 = *MEMORY[0x277D38638];
  v7 = PKCombinedHash();

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NPKPassSyncChange allocWithZone:?]];
  [(NPKPassSyncChange *)v4 setChangeUUID:self->_changeUUID];
  [(NPKPassSyncChange *)v4 setReconciledStateHash:self->_reconciledStateHash];
  [(NPKPassSyncChange *)v4 setReconciledStateVersion:self->_reconciledStateVersion];
  [(NPKPassSyncChange *)v4 setChangeType:self->_changeType];
  [(NPKPassSyncChange *)v4 setUniqueID:self->_uniqueID];
  [(NPKPassSyncChange *)v4 setSyncStateItem:self->_syncStateItem];
  [(NPKPassSyncChange *)v4 setPassData:self->_passData];
  [(NPKPassSyncChange *)v4 setBaseManifestHashForPartialUpdate:self->_baseManifestHashForPartialUpdate];
  [(NPKPassSyncChange *)v4 setRemoteAssetsForPartialUpdate:self->_remoteAssetsForPartialUpdate];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  changeUUID = self->_changeUUID;
  coderCopy = coder;
  [coderCopy encodeObject:changeUUID forKey:@"changeUUID"];
  [coderCopy encodeObject:self->_reconciledStateHash forKey:@"reconciledStateHash"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_reconciledStateVersion];
  [coderCopy encodeObject:v5 forKey:@"reconciledStateVersion"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_changeType];
  [coderCopy encodeObject:v6 forKey:@"changeType"];

  [coderCopy encodeObject:self->_uniqueID forKey:@"uniqueID"];
  [coderCopy encodeObject:self->_syncStateItem forKey:@"syncStateItem"];
  [coderCopy encodeObject:self->_passData forKey:@"passData"];
  [coderCopy encodeObject:self->_baseManifestHashForPartialUpdate forKey:@"baseManifestHashForPartialUpdate"];
  [coderCopy encodeObject:self->_remoteAssetsForPartialUpdate forKey:@"remoteAssetsForPartialUpdate"];
}

- (NPKPassSyncChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = NPKPassSyncChange;
  v5 = [(NPKPassSyncChange *)&v24 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"changeUUID"];
    changeUUID = v5->_changeUUID;
    v5->_changeUUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reconciledStateHash"];
    reconciledStateHash = v5->_reconciledStateHash;
    v5->_reconciledStateHash = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reconciledStateVersion"];
    v5->_reconciledStateVersion = [v10 unsignedIntValue];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"changeType"];
    v5->_changeType = [v11 unsignedIntValue];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueID"];
    uniqueID = v5->_uniqueID;
    v5->_uniqueID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"syncStateItem"];
    syncStateItem = v5->_syncStateItem;
    v5->_syncStateItem = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passData"];
    passData = v5->_passData;
    v5->_passData = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baseManifestHashForPartialUpdate"];
    baseManifestHashForPartialUpdate = v5->_baseManifestHashForPartialUpdate;
    v5->_baseManifestHashForPartialUpdate = v18;

    v20 = objc_opt_class();
    v21 = [coderCopy decodeDictionaryWithKeysOfClass:v20 objectsOfClass:objc_opt_class() forKey:@"remoteAssetsForPartialUpdate"];
    remoteAssetsForPartialUpdate = v5->_remoteAssetsForPartialUpdate;
    v5->_remoteAssetsForPartialUpdate = v21;
  }

  return v5;
}

- (NPKPassSyncChange)initWithProtoPassSyncChange:(id)change
{
  v38 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = changeCopy;
  if (changeCopy)
  {
    selfCopy = self;
    changeUUID = [changeCopy changeUUID];
    v32 = changeUUID;
    if (changeUUID)
    {
      v30 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(changeUUID, "bytes")}];
    }

    else
    {
      v30 = 0;
    }

    lastKnownReconciledPassSyncStateHash = [v5 lastKnownReconciledPassSyncStateHash];
    lastKnownReconciledPassSyncStateHashVersion = [v5 lastKnownReconciledPassSyncStateHashVersion];
    changeType = [v5 changeType];
    v9 = changeType == 1;
    if (changeType == 2)
    {
      v9 = 2;
    }

    v26 = v9;
    uniqueID = [v5 uniqueID];
    v10 = [NPKPassSyncStateItem alloc];
    syncStateItem = [v5 syncStateItem];
    v25 = [(NPKPassSyncStateItem *)v10 initWithProtoSyncStateItem:syncStateItem];

    passData = [v5 passData];
    baseManifestHashForPartialUpdate = [v5 baseManifestHashForPartialUpdate];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    remoteAssetsForPartialUpdates = [v5 remoteAssetsForPartialUpdates];
    v16 = [remoteAssetsForPartialUpdates countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v34;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v34 != v18)
          {
            objc_enumerationMutation(remoteAssetsForPartialUpdates);
          }

          v20 = *(*(&v33 + 1) + 8 * i);
          fileHash = [v20 fileHash];
          relativePath = [v20 relativePath];
          [dictionary setObject:fileHash forKey:relativePath];
        }

        v17 = [remoteAssetsForPartialUpdates countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v17);
    }

    v7 = [(NPKPassSyncChange *)selfCopy initWithChangeUUID:v30 reconciledStateHash:lastKnownReconciledPassSyncStateHash reconciledStateVersion:lastKnownReconciledPassSyncStateHashVersion changeType:v26 uniqueID:uniqueID syncStateItem:v25 passData:passData baseManifestHashForPartialUpdate:baseManifestHashForPartialUpdate remoteAssetsForPartialUpdate:dictionary];
  }

  else
  {

    v7 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)protoPassSyncChange
{
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(NPKProtoPassSyncStateChange);
  changeUUID = [(NPKPassSyncChange *)self changeUUID];
  v5 = changeUUID;
  if (changeUUID)
  {
    v21[0] = 0;
    v21[1] = 0;
    [changeUUID getUUIDBytes:v21];
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:v21 length:16];
    [(NPKProtoPassSyncStateChange *)v3 setChangeUUID:v6];
  }

  reconciledStateHash = [(NPKPassSyncChange *)self reconciledStateHash];
  [(NPKProtoPassSyncStateChange *)v3 setLastKnownReconciledPassSyncStateHash:reconciledStateHash];

  [(NPKProtoPassSyncStateChange *)v3 setLastKnownReconciledPassSyncStateHashVersion:[(NPKPassSyncChange *)self reconciledStateVersion]];
  changeType = [(NPKPassSyncChange *)self changeType];
  if (changeType == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = changeType == 1;
  }

  [(NPKProtoPassSyncStateChange *)v3 setChangeType:v9];
  uniqueID = [(NPKPassSyncChange *)self uniqueID];
  [(NPKProtoPassSyncStateChange *)v3 setUniqueID:uniqueID];

  syncStateItem = [(NPKPassSyncChange *)self syncStateItem];
  protoSyncStateItem = [syncStateItem protoSyncStateItem];
  [(NPKProtoPassSyncStateChange *)v3 setSyncStateItem:protoSyncStateItem];

  passData = [(NPKPassSyncChange *)self passData];
  [(NPKProtoPassSyncStateChange *)v3 setPassData:passData];

  baseManifestHashForPartialUpdate = [(NPKPassSyncChange *)self baseManifestHashForPartialUpdate];
  [(NPKProtoPassSyncStateChange *)v3 setBaseManifestHashForPartialUpdate:baseManifestHashForPartialUpdate];

  remoteAssetsForPartialUpdate = [(NPKPassSyncChange *)self remoteAssetsForPartialUpdate];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __57__NPKPassSyncChange_ProtobufSupport__protoPassSyncChange__block_invoke;
  v19[3] = &unk_279949020;
  v16 = v3;
  v20 = v16;
  [remoteAssetsForPartialUpdate enumerateKeysAndObjectsUsingBlock:v19];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

void __57__NPKPassSyncChange_ProtobufSupport__protoPassSyncChange__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_alloc_init(NPKProtoPassSyncStateManifestEntry);
  [(NPKProtoPassSyncStateManifestEntry *)v7 setRelativePath:v6];

  [(NPKProtoPassSyncStateManifestEntry *)v7 setFileHash:v5];
  [*(a1 + 32) addRemoteAssetsForPartialUpdate:v7];
}

@end