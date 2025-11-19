@interface CKDAssetZone
- (CKDAssetZone)initWithAssetZoneKey:(id)a3;
- (NSMutableOrderedSet)assetRecords;
- (id)CKPropertiesDescription;
- (void)addMMCSItem:(id)a3;
- (void)addMMCSSectionItem:(id)a3;
- (void)addRereferencedMMCSPackageItem:(id)a3;
@end

@implementation CKDAssetZone

- (CKDAssetZone)initWithAssetZoneKey:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = CKDAssetZone;
  v6 = [(CKDAssetZone *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetZoneKey, a3);
    v8 = objc_opt_new();
    assetRecords = v7->_assetRecords;
    v7->_assetRecords = v8;

    v10 = objc_opt_new();
    assetRecordsByRecordID = v7->_assetRecordsByRecordID;
    v7->_assetRecordsByRecordID = v10;
  }

  return v7;
}

- (void)addMMCSItem:(id)a3
{
  v5 = a3;
  assetZoneKey = self->_assetZoneKey;
  v38 = v5;
  v9 = objc_msgSend_assetZoneKey(v5, v7, v8);
  LOBYTE(assetZoneKey) = objc_msgSend_isEqual_(assetZoneKey, v10, v9);

  if ((assetZoneKey & 1) == 0)
  {
    v32 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12);
    v33 = self->_assetZoneKey;
    v36 = objc_msgSend_assetZoneKey(v38, v34, v35);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v32, v37, a2, self, @"CKDAssetZone.m", 35, @"Expected Item for Zone %@ but Found %@", v33, v36);
  }

  assetRecordsByRecordID = self->_assetRecordsByRecordID;
  v14 = objc_msgSend_recordID(v38, v11, v12);
  v16 = objc_msgSend_objectForKeyedSubscript_(assetRecordsByRecordID, v15, v14);

  if (!v16)
  {
    v18 = [CKDAssetRecord alloc];
    v21 = objc_msgSend_recordType(v38, v19, v20);
    v24 = objc_msgSend_recordID(v38, v22, v23);
    v16 = objc_msgSend_initWithRecordType_recordID_(v18, v25, v21, v24);

    v26 = self->_assetRecordsByRecordID;
    v29 = objc_msgSend_recordID(v38, v27, v28);
    objc_msgSend_setObject_forKeyedSubscript_(v26, v30, v16, v29);

    objc_msgSend_addObject_(self->_assetRecords, v31, v16);
  }

  objc_msgSend_addMMCSItem_(v16, v17, v38);
}

- (void)addRereferencedMMCSPackageItem:(id)a3
{
  v5 = a3;
  assetZoneKey = self->_assetZoneKey;
  v38 = v5;
  v9 = objc_msgSend_assetZoneKey(v5, v7, v8);
  LOBYTE(assetZoneKey) = objc_msgSend_isEqual_(assetZoneKey, v10, v9);

  if ((assetZoneKey & 1) == 0)
  {
    v32 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12);
    v33 = self->_assetZoneKey;
    v36 = objc_msgSend_assetZoneKey(v38, v34, v35);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v32, v37, a2, self, @"CKDAssetZone.m", 47, @"Expected Item for Zone %@ but Found %@", v33, v36);
  }

  assetRecordsByRecordID = self->_assetRecordsByRecordID;
  v14 = objc_msgSend_recordID(v38, v11, v12);
  v16 = objc_msgSend_objectForKeyedSubscript_(assetRecordsByRecordID, v15, v14);

  if (!v16)
  {
    v18 = [CKDAssetRecord alloc];
    v21 = objc_msgSend_recordType(v38, v19, v20);
    v24 = objc_msgSend_recordID(v38, v22, v23);
    v16 = objc_msgSend_initWithRecordType_recordID_(v18, v25, v21, v24);

    v26 = self->_assetRecordsByRecordID;
    v29 = objc_msgSend_recordID(v38, v27, v28);
    objc_msgSend_setObject_forKeyedSubscript_(v26, v30, v16, v29);

    objc_msgSend_addObject_(self->_assetRecords, v31, v16);
  }

  objc_msgSend_addRereferencedMMCSPackageItem_(v16, v17, v38);
}

- (void)addMMCSSectionItem:(id)a3
{
  v5 = a3;
  assetZoneKey = self->_assetZoneKey;
  v38 = v5;
  v9 = objc_msgSend_assetZoneKey(v5, v7, v8);
  LOBYTE(assetZoneKey) = objc_msgSend_isEqual_(assetZoneKey, v10, v9);

  if ((assetZoneKey & 1) == 0)
  {
    v32 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12);
    v33 = self->_assetZoneKey;
    v36 = objc_msgSend_assetZoneKey(v38, v34, v35);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v32, v37, a2, self, @"CKDAssetZone.m", 60, @"Expected Item for Zone %@ but Found %@", v33, v36);
  }

  assetRecordsByRecordID = self->_assetRecordsByRecordID;
  v14 = objc_msgSend_recordID(v38, v11, v12);
  v16 = objc_msgSend_objectForKeyedSubscript_(assetRecordsByRecordID, v15, v14);

  if (!v16)
  {
    v18 = [CKDAssetRecord alloc];
    v21 = objc_msgSend_recordType(v38, v19, v20);
    v24 = objc_msgSend_recordID(v38, v22, v23);
    v16 = objc_msgSend_initWithRecordType_recordID_(v18, v25, v21, v24);

    v26 = self->_assetRecordsByRecordID;
    v29 = objc_msgSend_recordID(v38, v27, v28);
    objc_msgSend_setObject_forKeyedSubscript_(v26, v30, v16, v29);

    objc_msgSend_addObject_(self->_assetRecords, v31, v16);
  }

  objc_msgSend_addMMCSSectionItem_(v16, v17, v38);
}

- (NSMutableOrderedSet)assetRecords
{
  v3 = objc_msgSend_copy(self->_assetRecords, a2, v2);

  return v3;
}

- (id)CKPropertiesDescription
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_assetZoneKey(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v4, v8, @"assetZoneKey=%@", v7);
  objc_msgSend_addObject_(v3, v10, v9);

  v12 = objc_msgSend_componentsJoinedByString_(v3, v11, @", ");

  return v12;
}

@end