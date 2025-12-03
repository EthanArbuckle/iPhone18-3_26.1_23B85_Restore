@interface CKDAssetBatch
- (BOOL)isEmptyOfAssets;
- (BOOL)isEmptyOfRereferencesAssets;
- (BOOL)isPackageSectionBatch;
- (BOOL)isRereferenceAssetBatch;
- (CKDAssetBatch)initWithAssetZone:(id)zone;
- (CKDAssetTokenRequest)assetTokenRequest;
- (NSArray)allRegularAndSectionAndRereferenceItems;
- (id)CKPropertiesDescription;
- (id)firstMMCSItemError;
- (unsigned)sizeUpperBound;
- (void)failIfNotDoneAllRegularAndSectionAndRereferenceItemsWithError:(id)error;
@end

@implementation CKDAssetBatch

- (CKDAssetBatch)initWithAssetZone:(id)zone
{
  zoneCopy = zone;
  v21.receiver = self;
  v21.super_class = CKDAssetBatch;
  v6 = [(CKDAssetBatch *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetZone, zone);
    v8 = objc_opt_new();
    assetRecords = v7->_assetRecords;
    v7->_assetRecords = v8;

    v12 = objc_msgSend_assetZoneKey(zoneCopy, v10, v11);
    v15 = objc_msgSend_useMMCSEncryptionV2(v12, v13, v14);
    v18 = objc_msgSend_BOOLValue(v15, v16, v17);

    if (v18)
    {
      objc_msgSend_setUseMMCSEncryptionV2_(v7, v19, 1);
    }
  }

  return v7;
}

- (unsigned)sizeUpperBound
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = self->_assetRecords;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v13, v17, 16);
  if (v4)
  {
    v7 = v4;
    v8 = 0;
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v2);
        }

        v8 += objc_msgSend_sizeUpperBound(*(*(&v13 + 1) + 8 * i), v5, v6, v13);
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v13, v17, 16);
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (NSArray)allRegularAndSectionAndRereferenceItems
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = self->_assetRecords;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v21, v25, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = objc_msgSend_allMMCSAndSectionItems(v12, v7, v8, v21);
        objc_msgSend_addObjectsFromArray_(v3, v14, v13);

        v17 = objc_msgSend_allRereferenceMMCSPackageItems(v12, v15, v16);
        objc_msgSend_addObjectsFromArray_(v3, v18, v17);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v21, v25, 16);
    }

    while (v9);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)failIfNotDoneAllRegularAndSectionAndRereferenceItemsWithError:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = objc_msgSend_allRegularAndSectionAndRereferenceItems(self, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v18, v22, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = objc_msgSend_error(v15, v10, v11);

        if (!v16)
        {
          objc_msgSend_setError_(v15, v10, errorCopy);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v18, v22, 16);
    }

    while (v12);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)firstMMCSItemError
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_225073ED0;
  v10 = sub_2250734F4;
  v11 = 0;
  assetRecords = self->_assetRecords;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_225144390;
  v5[3] = &unk_278546728;
  v5[4] = &v6;
  objc_msgSend_enumerateObjectsUsingBlock_(assetRecords, a2, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)isPackageSectionBatch
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  assetRecords = self->_assetRecords;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2251444AC;
  v5[3] = &unk_278546728;
  v5[4] = &v6;
  objc_msgSend_enumerateObjectsUsingBlock_(assetRecords, a2, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isRereferenceAssetBatch
{
  v3 = objc_msgSend_assetZoneKey(self->_assetZone, a2, v2);
  isReReference = objc_msgSend_isReReference(v3, v4, v5);

  return isReReference;
}

- (BOOL)isEmptyOfAssets
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  assetRecords = self->_assetRecords;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_225144614;
  v5[3] = &unk_278546728;
  v5[4] = &v6;
  objc_msgSend_enumerateObjectsUsingBlock_(assetRecords, a2, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isEmptyOfRereferencesAssets
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  assetRecords = self->_assetRecords;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22514472C;
  v5[3] = &unk_278546728;
  v5[4] = &v6;
  objc_msgSend_enumerateObjectsUsingBlock_(assetRecords, a2, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)CKPropertiesDescription
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_assetZone(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v4, v8, @"zone=%@", v7);
  objc_msgSend_addObject_(v3, v10, v9);

  v11 = MEMORY[0x277CCACA8];
  v14 = objc_msgSend_assetRecords(self, v12, v13);
  v17 = objc_msgSend_count(v14, v15, v16);
  v19 = objc_msgSend_stringWithFormat_(v11, v18, @"recordCount=%llu", v17);
  objc_msgSend_addObject_(v3, v20, v19);

  if (objc_msgSend_isPackageSectionBatch(self, v21, v22))
  {
    objc_msgSend_addObject_(v3, v23, @"isPackageSectionBatch");
  }

  v24 = objc_msgSend_componentsJoinedByString_(v3, v23, @", ");

  return v24;
}

- (CKDAssetTokenRequest)assetTokenRequest
{
  WeakRetained = objc_loadWeakRetained(&self->_assetTokenRequest);

  return WeakRetained;
}

@end