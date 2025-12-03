@interface MSASPendingChanges
- (MSASPendingChanges)initWithSyncedKeyValueChangesForAlbumGUIDS:(id)s albumChanges:(id)changes accessControlChangesForAlbumGUIDS:(id)dS;
- (void)addPendingAssetCollectionChanges:(id)changes forAlbumGUID:(id)d;
- (void)addPendingChangesForAlbumGUID:(id)d;
- (void)removePendingAssetCollection:(id)collection forAlbumGUID:(id)d;
- (void)removePendingChangesForAlbumGUID:(id)d;
- (void)removePendingKeyValueChangesForAlbumGUID:(id)d;
- (void)removePendingSharingInfoChangesForAlbumGUID:(id)d;
@end

@implementation MSASPendingChanges

- (void)removePendingSharingInfoChangesForAlbumGUID:(id)d
{
  v8 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    [(NSMutableSet *)self->_pendingAlbumGUIDsWithSharingInfoChanges removeObject:dCopy];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not remove pending sharing info changes for album with nil GUID.", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)removePendingAssetCollection:(id)collection forAlbumGUID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  pendingAlbumGUIDToAssetCollections = self->_pendingAlbumGUIDToAssetCollections;
  collectionCopy = collection;
  v9 = [(NSMutableDictionary *)pendingAlbumGUIDToAssetCollections objectForKey:dCopy];
  gUID = [collectionCopy GUID];

  if (!gUID)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      selfCopy2 = self;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not remove pending asset collection with nil GUID.", &v14, 0xCu);
      if (!dCopy)
      {
        goto LABEL_10;
      }
    }

    else if (!dCopy)
    {
      goto LABEL_10;
    }

LABEL_6:
    v11 = [v9 count];
    v12 = self->_pendingAlbumGUIDToAssetCollections;
    if (v11)
    {
      [(NSMutableDictionary *)v12 setObject:v9 forKey:dCopy];
    }

    else
    {
      [(NSMutableDictionary *)v12 removeObjectForKey:dCopy];
    }

    goto LABEL_12;
  }

  [v9 removeObject:gUID];
  if (dCopy)
  {
    goto LABEL_6;
  }

LABEL_10:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v14 = 138543362;
    selfCopy2 = self;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not remove pending asset collections for album with nil GUID.", &v14, 0xCu);
  }

LABEL_12:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)addPendingAssetCollectionChanges:(id)changes forAlbumGUID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  dCopy = d;
  v8 = [(NSMutableDictionary *)self->_pendingAlbumGUIDToAssetCollections objectForKey:dCopy];
  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(changesCopy, "count")}];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__MSASPendingChanges_addPendingAssetCollectionChanges_forAlbumGUID___block_invoke;
  v11[3] = &unk_278E927F0;
  v12 = v8;
  v9 = v8;
  [changesCopy enumerateObjectsUsingBlock:v11];
  if (dCopy)
  {
    [(NSMutableDictionary *)self->_pendingAlbumGUIDToAssetCollections setObject:v9 forKey:dCopy];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    selfCopy = self;
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

- (void)removePendingChangesForAlbumGUID:(id)d
{
  v8 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    [(NSMutableSet *)self->_pendingAlbumChanges removeObject:dCopy];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not remove pending changes for album with nil GUID.", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)addPendingChangesForAlbumGUID:(id)d
{
  v8 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    [(NSMutableSet *)self->_pendingAlbumChanges addObject:dCopy];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not add pending changes for album with nil GUID.", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)removePendingKeyValueChangesForAlbumGUID:(id)d
{
  v8 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    [(NSMutableSet *)self->_pendingAlbumGUIDsWithKeyValueChanges removeObject:dCopy];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not remove pending key value changes for album with nil GUID.", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (MSASPendingChanges)initWithSyncedKeyValueChangesForAlbumGUIDS:(id)s albumChanges:(id)changes accessControlChangesForAlbumGUIDS:(id)dS
{
  sCopy = s;
  changesCopy = changes;
  dSCopy = dS;
  v21.receiver = self;
  v21.super_class = MSASPendingChanges;
  v11 = [(MSASPendingChanges *)&v21 init];
  if (v11)
  {
    v12 = [MEMORY[0x277CBEB58] setWithArray:sCopy];
    pendingAlbumGUIDsWithKeyValueChanges = v11->_pendingAlbumGUIDsWithKeyValueChanges;
    v11->_pendingAlbumGUIDsWithKeyValueChanges = v12;

    v14 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(changesCopy, "count")}];
    pendingAlbumChanges = v11->_pendingAlbumChanges;
    v11->_pendingAlbumChanges = v14;

    v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(changesCopy, "count")}];
    pendingAlbumGUIDToAssetCollections = v11->_pendingAlbumGUIDToAssetCollections;
    v11->_pendingAlbumGUIDToAssetCollections = v16;

    v18 = [MEMORY[0x277CBEB58] setWithArray:dSCopy];
    pendingAlbumGUIDsWithSharingInfoChanges = v11->_pendingAlbumGUIDsWithSharingInfoChanges;
    v11->_pendingAlbumGUIDsWithSharingInfoChanges = v18;
  }

  return v11;
}

@end