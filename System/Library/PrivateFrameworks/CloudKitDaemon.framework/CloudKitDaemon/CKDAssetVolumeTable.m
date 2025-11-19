@interface CKDAssetVolumeTable
- (CKDAssetVolumeTable)initWithLogicalTableName:(id)a3;
- (id)unmountedAssetVolumes;
- (id)volumeIndexForVolumeUUID:(id)a3;
- (id)volumeUUIDWithVolumeIndex:(id)a3;
- (id)wakeFromDatabase;
- (void)_lockedSetVolumeIndex:(id)a3 forVolumeUUID:(id)a4;
@end

@implementation CKDAssetVolumeTable

- (id)wakeFromDatabase
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_22509EBFC;
  v4[3] = &unk_278545D08;
  v4[4] = self;
  v2 = objc_msgSend_enumerateEntriesWithBlock_(self, a2, v4);

  return v2;
}

- (id)unmountedAssetVolumes
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22509ED3C;
  v9[3] = &unk_278545D30;
  v4 = v3;
  v10 = v4;
  v11 = self;
  v6 = objc_msgSend_enumerateEntriesWithBlock_(self, v5, v9);
  v7 = v4;

  return v4;
}

- (CKDAssetVolumeTable)initWithLogicalTableName:(id)a3
{
  v9.receiver = self;
  v9.super_class = CKDAssetVolumeTable;
  v3 = [(CKSQLiteTable *)&v9 initWithLogicalTableName:a3];
  if (v3)
  {
    v4 = objc_opt_new();
    volumeIndexByVolumeUUID = v3->_volumeIndexByVolumeUUID;
    v3->_volumeIndexByVolumeUUID = v4;

    v6 = objc_opt_new();
    volumeUUIDByVolumeIndex = v3->_volumeUUIDByVolumeIndex;
    v3->_volumeUUIDByVolumeIndex = v6;
  }

  return v3;
}

- (void)_lockedSetVolumeIndex:(id)a3 forVolumeUUID:(id)a4
{
  volumeIndexByVolumeUUID = self->_volumeIndexByVolumeUUID;
  v7 = a4;
  v10 = a3;
  objc_msgSend_setObject_forKeyedSubscript_(volumeIndexByVolumeUUID, v8, v10, v7);
  objc_msgSend_setObject_forKeyedSubscript_(self->_volumeUUIDByVolumeIndex, v9, v7, v10);
}

- (id)volumeIndexForVolumeUUID:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v7 = 0;
    goto LABEL_18;
  }

  os_unfair_lock_lock(&self->_lock);
  v6 = objc_msgSend_objectForKeyedSubscript_(self->_volumeIndexByVolumeUUID, v5, v4);
  if (!v6)
  {
    v8 = objc_opt_new();
    objc_msgSend_setVolumeUUID_(v8, v9, v4);
    v11 = objc_msgSend_insertObject_(self, v10, v8);
    v14 = MEMORY[0x277CBC880];
    v15 = MEMORY[0x277CBC828];
    if (v11)
    {
      v16 = v11;
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v17 = *v15;
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        v25 = 138412290;
        v26 = v16;
        _os_log_error_impl(&dword_22506F000, v17, OS_LOG_TYPE_ERROR, "volumeIndexForVolumeUUID failed: %@", &v25, 0xCu);
      }
    }

    else
    {
      v7 = objc_msgSend_volumeIndex(v8, v12, v13);
      v21 = objc_msgSend_volumeIndex(v8, v19, v20);
      objc_msgSend__lockedSetVolumeIndex_forVolumeUUID_(self, v22, v21, v4);

      if (v7)
      {
        goto LABEL_17;
      }
    }

    if (*v14 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v18 = *v15;
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_INFO))
    {
      v25 = 138543362;
      v26 = v4;
      _os_log_impl(&dword_22506F000, v18, OS_LOG_TYPE_INFO, "volumeIndexForVolumeUUID is returning nil for volumeUUID=%{public}@", &v25, 0xCu);
    }

    v7 = 0;
    goto LABEL_17;
  }

  v7 = v6;
LABEL_17:
  os_unfair_lock_unlock(&self->_lock);
LABEL_18:

  v23 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)volumeUUIDWithVolumeIndex:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v6 = objc_msgSend_objectForKeyedSubscript_(self->_volumeUUIDByVolumeIndex, v5, v4);
  if (!v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v7 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_INFO))
    {
      v10 = 138543362;
      v11 = v4;
      _os_log_impl(&dword_22506F000, v7, OS_LOG_TYPE_INFO, "volumeUUIDWithVolumeIndex is returning nil for volumeIndex=%{public}@", &v10, 0xCu);
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

@end