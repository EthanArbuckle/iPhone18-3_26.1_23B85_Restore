@interface MSASPendingChanges
- (MSASPendingChanges)initWithSyncedKeyValueChangesForAlbumGUIDS:(id)a3 albumChanges:(id)a4 accessControlChangesForAlbumGUIDS:(id)a5;
- (void)addPendingAssetCollectionChanges:(id)a3 forAlbumGUID:(id)a4;
- (void)addPendingChangesForAlbumGUID:(id)a3;
- (void)removePendingAssetCollection:(id)a3 forAlbumGUID:(id)a4;
- (void)removePendingChangesForAlbumGUID:(id)a3;
- (void)removePendingKeyValueChangesForAlbumGUID:(id)a3;
- (void)removePendingSharingInfoChangesForAlbumGUID:(id)a3;
@end

@implementation MSASPendingChanges

- (void)removePendingSharingInfoChangesForAlbumGUID:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    [(NSMutableSet *)self->_pendingAlbumGUIDsWithSharingInfoChanges removeObject:v4];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not remove pending sharing info changes for album with nil GUID.", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)removePendingAssetCollection:(id)a3 forAlbumGUID:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  pendingAlbumGUIDToAssetCollections = self->_pendingAlbumGUIDToAssetCollections;
  v8 = a3;
  v9 = [(NSMutableDictionary *)pendingAlbumGUIDToAssetCollections objectForKey:v6];
  v10 = [v8 GUID];

  if (!v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      v15 = self;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not remove pending asset collection with nil GUID.", &v14, 0xCu);
      if (!v6)
      {
        goto LABEL_10;
      }
    }

    else if (!v6)
    {
      goto LABEL_10;
    }

LABEL_6:
    v11 = [v9 count];
    v12 = self->_pendingAlbumGUIDToAssetCollections;
    if (v11)
    {
      [(NSMutableDictionary *)v12 setObject:v9 forKey:v6];
    }

    else
    {
      [(NSMutableDictionary *)v12 removeObjectForKey:v6];
    }

    goto LABEL_12;
  }

  [v9 removeObject:v10];
  if (v6)
  {
    goto LABEL_6;
  }

LABEL_10:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v14 = 138543362;
    v15 = self;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not remove pending asset collections for album with nil GUID.", &v14, 0xCu);
  }

LABEL_12:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)addPendingAssetCollectionChanges:(id)a3 forAlbumGUID:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_pendingAlbumGUIDToAssetCollections objectForKey:v7];
  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v6, "count")}];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__MSASPendingChanges_addPendingAssetCollectionChanges_forAlbumGUID___block_invoke;
  v11[3] = &unk_278E927F0;
  v12 = v8;
  v9 = v8;
  [v6 enumerateObjectsUsingBlock:v11];
  if (v7)
  {
    [(NSMutableDictionary *)self->_pendingAlbumGUIDToAssetCollections setObject:v9 forKey:v7];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = self;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not add pending asset collection changes for album with nil GUID.", buf, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __68__MSASPendingChanges_addPendingAssetCollectionChanges_forAlbumGUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 GUID];
  [v2 addObject:v3];
}

- (void)removePendingChangesForAlbumGUID:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    [(NSMutableSet *)self->_pendingAlbumChanges removeObject:v4];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not remove pending changes for album with nil GUID.", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)addPendingChangesForAlbumGUID:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    [(NSMutableSet *)self->_pendingAlbumChanges addObject:v4];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not add pending changes for album with nil GUID.", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)removePendingKeyValueChangesForAlbumGUID:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    [(NSMutableSet *)self->_pendingAlbumGUIDsWithKeyValueChanges removeObject:v4];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not remove pending key value changes for album with nil GUID.", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (MSASPendingChanges)initWithSyncedKeyValueChangesForAlbumGUIDS:(id)a3 albumChanges:(id)a4 accessControlChangesForAlbumGUIDS:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = MSASPendingChanges;
  v11 = [(MSASPendingChanges *)&v21 init];
  if (v11)
  {
    v12 = [MEMORY[0x277CBEB58] setWithArray:v8];
    pendingAlbumGUIDsWithKeyValueChanges = v11->_pendingAlbumGUIDsWithKeyValueChanges;
    v11->_pendingAlbumGUIDsWithKeyValueChanges = v12;

    v14 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v9, "count")}];
    pendingAlbumChanges = v11->_pendingAlbumChanges;
    v11->_pendingAlbumChanges = v14;

    v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v9, "count")}];
    pendingAlbumGUIDToAssetCollections = v11->_pendingAlbumGUIDToAssetCollections;
    v11->_pendingAlbumGUIDToAssetCollections = v16;

    v18 = [MEMORY[0x277CBEB58] setWithArray:v10];
    pendingAlbumGUIDsWithSharingInfoChanges = v11->_pendingAlbumGUIDsWithSharingInfoChanges;
    v11->_pendingAlbumGUIDsWithSharingInfoChanges = v18;
  }

  return v11;
}

@end