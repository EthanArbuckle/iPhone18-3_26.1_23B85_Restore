@interface NPKPassSyncChange
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToChange:(id)a3;
- (BOOL)isEqualToChangeIgnoringUUID:(id)a3;
- (NPKPassSyncChange)initWithChangeUUID:(id)a3 reconciledStateHash:(id)a4 reconciledStateVersion:(unint64_t)a5 changeType:(unint64_t)a6 uniqueID:(id)a7 syncStateItem:(id)a8 passData:(id)a9 baseManifestHashForPartialUpdate:(id)a10 remoteAssetsForPartialUpdate:(id)a11;
- (NPKPassSyncChange)initWithCoder:(id)a3;
- (NPKPassSyncChange)initWithProtoPassSyncChange:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)protoPassSyncChange;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NPKPassSyncChange

- (NPKPassSyncChange)initWithChangeUUID:(id)a3 reconciledStateHash:(id)a4 reconciledStateVersion:(unint64_t)a5 changeType:(unint64_t)a6 uniqueID:(id)a7 syncStateItem:(id)a8 passData:(id)a9 baseManifestHashForPartialUpdate:(id)a10 remoteAssetsForPartialUpdate:(id)a11
{
  v27 = a3;
  v26 = a4;
  v25 = a7;
  v24 = a8;
  v23 = a9;
  v16 = a10;
  v17 = a11;
  v28.receiver = self;
  v28.super_class = NPKPassSyncChange;
  v18 = [(NPKPassSyncChange *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_changeUUID, a3);
    objc_storeStrong(&v19->_reconciledStateHash, a4);
    v19->_reconciledStateVersion = a5;
    v19->_changeType = a6;
    objc_storeStrong(&v19->_uniqueID, a7);
    objc_storeStrong(&v19->_syncStateItem, a8);
    objc_storeStrong(&v19->_passData, a9);
    objc_storeStrong(&v19->_baseManifestHashForPartialUpdate, a10);
    objc_storeStrong(&v19->_remoteAssetsForPartialUpdate, a11);
  }

  return v19;
}

- (id)description
{
  v17 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  changeUUID = self->_changeUUID;
  v5 = [(NSData *)self->_reconciledStateHash hexEncoding];
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
  v13 = [(NSData *)passData npkDescription];
  v14 = [(NSData *)self->_baseManifestHashForPartialUpdate hexEncoding];
  v15 = [v17 stringWithFormat:@"<%@: %p change UUID %@ reconciled state hash %@ version:%lu change type %@ unique ID %@ sync state item %@ pass data %@ base manifest hash for partial update %@>", v3, self, changeUUID, v5, reconciledStateVersion, v12, uniqueID, syncStateItem, v13, v14];

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(NPKPassSyncChange *)self isEqualToChange:v5];
  }

  return v6;
}

- (BOOL)isEqualToChange:(id)a3
{
  v4 = a3;
  changeUUID = self->_changeUUID;
  v6 = v4[1];
  if (PKEqualObjects())
  {
    v7 = [(NPKPassSyncChange *)self isEqualToChangeIgnoringUUID:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqualToChangeIgnoringUUID:(id)a3
{
  v4 = a3;
  reconciledStateHash = self->_reconciledStateHash;
  v6 = v4[2];
  if (PKEqualObjects() && self->_changeType == v4[4] && (uniqueID = self->_uniqueID, v8 = v4[5], PKEqualObjects()) && (syncStateItem = self->_syncStateItem, v10 = v4[6], PKEqualObjects()) && (passData = self->_passData, v12 = v4[7], PKEqualObjects()))
  {
    baseManifestHashForPartialUpdate = self->_baseManifestHashForPartialUpdate;
    v14 = v4[8];
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
  v3 = [MEMORY[0x277CBEB18] array];
  [v3 safelyAddObject:self->_changeUUID];
  [v3 safelyAddObject:self->_reconciledStateHash];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_reconciledStateVersion];
  [v3 safelyAddObject:v4];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_changeType];
  [v3 safelyAddObject:v5];

  [v3 safelyAddObject:self->_uniqueID];
  [v3 safelyAddObject:self->_syncStateItem];
  [v3 safelyAddObject:self->_passData];
  [v3 safelyAddObject:self->_baseManifestHashForPartialUpdate];
  [v3 safelyAddObject:self->_remoteAssetsForPartialUpdate];
  v6 = *MEMORY[0x277D38638];
  v7 = PKCombinedHash();

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (void)encodeWithCoder:(id)a3
{
  changeUUID = self->_changeUUID;
  v7 = a3;
  [v7 encodeObject:changeUUID forKey:@"changeUUID"];
  [v7 encodeObject:self->_reconciledStateHash forKey:@"reconciledStateHash"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_reconciledStateVersion];
  [v7 encodeObject:v5 forKey:@"reconciledStateVersion"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_changeType];
  [v7 encodeObject:v6 forKey:@"changeType"];

  [v7 encodeObject:self->_uniqueID forKey:@"uniqueID"];
  [v7 encodeObject:self->_syncStateItem forKey:@"syncStateItem"];
  [v7 encodeObject:self->_passData forKey:@"passData"];
  [v7 encodeObject:self->_baseManifestHashForPartialUpdate forKey:@"baseManifestHashForPartialUpdate"];
  [v7 encodeObject:self->_remoteAssetsForPartialUpdate forKey:@"remoteAssetsForPartialUpdate"];
}

- (NPKPassSyncChange)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = NPKPassSyncChange;
  v5 = [(NPKPassSyncChange *)&v24 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"changeUUID"];
    changeUUID = v5->_changeUUID;
    v5->_changeUUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reconciledStateHash"];
    reconciledStateHash = v5->_reconciledStateHash;
    v5->_reconciledStateHash = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reconciledStateVersion"];
    v5->_reconciledStateVersion = [v10 unsignedIntValue];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"changeType"];
    v5->_changeType = [v11 unsignedIntValue];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueID"];
    uniqueID = v5->_uniqueID;
    v5->_uniqueID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"syncStateItem"];
    syncStateItem = v5->_syncStateItem;
    v5->_syncStateItem = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passData"];
    passData = v5->_passData;
    v5->_passData = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"baseManifestHashForPartialUpdate"];
    baseManifestHashForPartialUpdate = v5->_baseManifestHashForPartialUpdate;
    v5->_baseManifestHashForPartialUpdate = v18;

    v20 = objc_opt_class();
    v21 = [v4 decodeDictionaryWithKeysOfClass:v20 objectsOfClass:objc_opt_class() forKey:@"remoteAssetsForPartialUpdate"];
    remoteAssetsForPartialUpdate = v5->_remoteAssetsForPartialUpdate;
    v5->_remoteAssetsForPartialUpdate = v21;
  }

  return v5;
}

- (NPKPassSyncChange)initWithProtoPassSyncChange:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v31 = self;
    v6 = [v4 changeUUID];
    v32 = v6;
    if (v6)
    {
      v30 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v6, "bytes")}];
    }

    else
    {
      v30 = 0;
    }

    v29 = [v5 lastKnownReconciledPassSyncStateHash];
    v27 = [v5 lastKnownReconciledPassSyncStateHashVersion];
    v8 = [v5 changeType];
    v9 = v8 == 1;
    if (v8 == 2)
    {
      v9 = 2;
    }

    v26 = v9;
    v28 = [v5 uniqueID];
    v10 = [NPKPassSyncStateItem alloc];
    v11 = [v5 syncStateItem];
    v25 = [(NPKPassSyncStateItem *)v10 initWithProtoSyncStateItem:v11];

    v12 = [v5 passData];
    v13 = [v5 baseManifestHashForPartialUpdate];
    v14 = [MEMORY[0x277CBEB38] dictionary];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v15 = [v5 remoteAssetsForPartialUpdates];
    v16 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v33 + 1) + 8 * i);
          v21 = [v20 fileHash];
          v22 = [v20 relativePath];
          [v14 setObject:v21 forKey:v22];
        }

        v17 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v17);
    }

    v7 = [(NPKPassSyncChange *)v31 initWithChangeUUID:v30 reconciledStateHash:v29 reconciledStateVersion:v27 changeType:v26 uniqueID:v28 syncStateItem:v25 passData:v12 baseManifestHashForPartialUpdate:v13 remoteAssetsForPartialUpdate:v14];
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
  v4 = [(NPKPassSyncChange *)self changeUUID];
  v5 = v4;
  if (v4)
  {
    v21[0] = 0;
    v21[1] = 0;
    [v4 getUUIDBytes:v21];
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:v21 length:16];
    [(NPKProtoPassSyncStateChange *)v3 setChangeUUID:v6];
  }

  v7 = [(NPKPassSyncChange *)self reconciledStateHash];
  [(NPKProtoPassSyncStateChange *)v3 setLastKnownReconciledPassSyncStateHash:v7];

  [(NPKProtoPassSyncStateChange *)v3 setLastKnownReconciledPassSyncStateHashVersion:[(NPKPassSyncChange *)self reconciledStateVersion]];
  v8 = [(NPKPassSyncChange *)self changeType];
  if (v8 == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8 == 1;
  }

  [(NPKProtoPassSyncStateChange *)v3 setChangeType:v9];
  v10 = [(NPKPassSyncChange *)self uniqueID];
  [(NPKProtoPassSyncStateChange *)v3 setUniqueID:v10];

  v11 = [(NPKPassSyncChange *)self syncStateItem];
  v12 = [v11 protoSyncStateItem];
  [(NPKProtoPassSyncStateChange *)v3 setSyncStateItem:v12];

  v13 = [(NPKPassSyncChange *)self passData];
  [(NPKProtoPassSyncStateChange *)v3 setPassData:v13];

  v14 = [(NPKPassSyncChange *)self baseManifestHashForPartialUpdate];
  [(NPKProtoPassSyncStateChange *)v3 setBaseManifestHashForPartialUpdate:v14];

  v15 = [(NPKPassSyncChange *)self remoteAssetsForPartialUpdate];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __57__NPKPassSyncChange_ProtobufSupport__protoPassSyncChange__block_invoke;
  v19[3] = &unk_279949020;
  v16 = v3;
  v20 = v16;
  [v15 enumerateKeysAndObjectsUsingBlock:v19];

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