@interface CKDProgressTracker
+ (unint64_t)_sizeForItem:(id)a3;
- (CKDProgressTracker)init;
- (CKDProgressTracker)initWithTrackingID:(id)a3;
- (double)updateProgressWithItem:(id)a3 progress:(double)a4;
- (unint64_t)_updateTotalBytes;
- (unint64_t)_updateTotalCompletedBytes;
- (void)startTrackingItems:(id)a3;
- (void)stopTrackingItems:(id)a3;
@end

@implementation CKDProgressTracker

+ (unint64_t)_sizeForItem:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if (objc_msgSend_isConstructedAsset(v4, v5, v6))
    {
      v9 = objc_msgSend_constructedAssetEstimatedSize(v4, v7, v8);
    }

    else
    {
      v9 = objc_msgSend_size(v4, v7, v8);
    }

    v12 = v9;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = objc_msgSend_size_(v3, v10, 0);
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v12 = 0;
        goto LABEL_12;
      }

      v11 = objc_msgSend_fileSize(v3, v13, v14);
    }

    v12 = v11;
  }

LABEL_12:

  return v12;
}

- (CKDProgressTracker)init
{
  v8.receiver = self;
  v8.super_class = CKDProgressTracker;
  v4 = [(CKDProgressTracker *)&v8 init];
  if (v4)
  {
    v5 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v2, v3);
    completedBytesByItems = v4->_completedBytesByItems;
    v4->_completedBytesByItems = v5;
  }

  return v4;
}

- (CKDProgressTracker)initWithTrackingID:(id)a3
{
  v5 = a3;
  v8 = objc_msgSend_init(self, v6, v7);
  v9 = v8;
  if (v8)
  {
    objc_storeStrong((v8 + 48), a3);
  }

  return v9;
}

- (void)startTrackingItems:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v18, v26, 16);
  if (v9)
  {
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_setObject_forKey_(v5->_completedBytesByItems, v8, &unk_2838C8BF8, *(*(&v18 + 1) + 8 * i), v18);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v18, v26, 16);
    }

    while (v9);
  }

  *&v5->_hasCachedTotalBytes = 0;
  objc_sync_exit(v5);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v12 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v14 = v12;
    v17 = objc_msgSend_trackingID(v5, v15, v16);
    *buf = 138412546;
    v23 = v17;
    v24 = 2112;
    v25 = v6;
    _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "%@ started tracking items: %@", buf, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)stopTrackingItems:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v18, v26, 16);
  if (v9)
  {
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_removeObjectForKey_(v5->_completedBytesByItems, v8, *(*(&v18 + 1) + 8 * i), v18);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v18, v26, 16);
    }

    while (v9);
  }

  *&v5->_hasCachedTotalBytes = 0;
  objc_sync_exit(v5);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v12 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v14 = v12;
    v17 = objc_msgSend_trackingID(v5, v15, v16);
    *buf = 138412546;
    v23 = v17;
    v24 = 2112;
    v25 = v6;
    _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "%@ stopped tracking items: %@", buf, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_updateTotalBytes
{
  if (self->_hasCachedTotalBytes)
  {
    return self->_cachedTotalBytes;
  }

  v5 = objc_msgSend_keyEnumerator(self->_completedBytesByItems, a2, v2);
  v8 = objc_msgSend_nextObject(v5, v6, v7);
  if (v8)
  {
    v10 = v8;
    v4 = 0;
    do
    {
      v4 += objc_msgSend__sizeForItem_(CKDProgressTracker, v9, v10);
      v13 = objc_msgSend_nextObject(v5, v11, v12);

      v10 = v13;
    }

    while (v13);
  }

  else
  {
    v4 = 0;
  }

  self->_cachedTotalBytes = v4;
  self->_hasCachedTotalBytes = 1;

  return v4;
}

- (unint64_t)_updateTotalCompletedBytes
{
  if (self->_hasCachedCompletedBytes)
  {
    return self->_cachedCompletedBytes;
  }

  v5 = objc_msgSend_objectEnumerator(self->_completedBytesByItems, a2, v2);
  v8 = objc_msgSend_nextObject(v5, v6, v7);
  if (v8)
  {
    v11 = v8;
    v4 = 0;
    do
    {
      v4 += objc_msgSend_unsignedLongLongValue(v11, v9, v10);
      v14 = objc_msgSend_nextObject(v5, v12, v13);

      v11 = v14;
    }

    while (v14);
  }

  else
  {
    v4 = 0;
  }

  self->_cachedCompletedBytes = v4;
  self->_hasCachedCompletedBytes = 1;

  return v4;
}

- (double)updateProgressWithItem:(id)a3 progress:(double)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  updated = objc_msgSend__updateTotalBytes(v7, v8, v9);
  v13 = 0.0;
  if (updated)
  {
    v15 = objc_msgSend__updateTotalCompletedBytes(v7, v10, v11);
    if (v6)
    {
      v17 = objc_msgSend_objectForKey_(v7->_completedBytesByItems, v14, v6);
      if (v17)
      {
        v18 = objc_msgSend__sizeForItem_(CKDProgressTracker, v16, v6);
        v21 = v18 * a4;
        v22 = v18 >= v21 ? v21 : v18;
        if (v22 != objc_msgSend_unsignedLongLongValue(v17, v19, v20))
        {
          v25 = objc_msgSend_unsignedLongLongValue(v17, v23, v24);
          if (v15 >= v25)
          {
            v27 = v15 - v25;
          }

          else
          {
            v27 = 0;
          }

          completedBytesByItems = v7->_completedBytesByItems;
          v29 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v26, v22);
          objc_msgSend_setObject_forKey_(completedBytesByItems, v30, v29, v6);
          v15 = v27 + v22;
        }
      }
    }

    if (v15 >= updated)
    {
      v31 = updated;
    }

    else
    {
      v31 = v15;
    }

    v7->_cachedCompletedBytes = v31;
    v7->_hasCachedCompletedBytes = 1;
    v32 = (v7->_lastItemPercentage * updated);
    if (updated < v32)
    {
      v32 = updated;
    }

    v33 = v32 + updated;
    if (v33)
    {
      v13 = v31 / v33;
    }
  }

  objc_sync_exit(v7);

  return v13;
}

@end