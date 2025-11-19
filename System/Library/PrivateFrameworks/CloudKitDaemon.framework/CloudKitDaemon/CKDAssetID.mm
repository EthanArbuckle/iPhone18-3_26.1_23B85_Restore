@interface CKDAssetID
- (BOOL)isEqual:(id)a3;
- (CKDAssetID)initWithRecordID:(id)a3 fileSignature:(id)a4 referenceSignature:(id)a5 size:(id)a6;
- (id)CKPropertiesDescription;
- (unint64_t)hash;
@end

@implementation CKDAssetID

- (CKDAssetID)initWithRecordID:(id)a3 fileSignature:(id)a4 referenceSignature:(id)a5 size:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v28.receiver = self;
  v28.super_class = CKDAssetID;
  v16 = [(CKDAssetID *)&v28 init];
  if (v16)
  {
    v17 = objc_msgSend_copy(v10, v14, v15);
    recordID = v16->_recordID;
    v16->_recordID = v17;

    v21 = objc_msgSend_copy(v11, v19, v20);
    fileSignature = v16->_fileSignature;
    v16->_fileSignature = v21;

    v25 = objc_msgSend_copy(v12, v23, v24);
    referenceSignature = v16->_referenceSignature;
    v16->_referenceSignature = v25;

    objc_storeStrong(&v16->_size, a6);
  }

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    isEqualToNumber = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v9 = objc_msgSend_recordID(self, v7, v8);
    v12 = objc_msgSend_recordID(v6, v10, v11);
    isEqual = objc_msgSend_isEqual_(v9, v13, v12);

    if (!isEqual)
    {
      goto LABEL_10;
    }

    v17 = objc_msgSend_fileSignature(self, v15, v16);
    v20 = objc_msgSend_fileSignature(v6, v18, v19);
    v22 = objc_msgSend_isEqual_(v17, v21, v20);

    if (!v22)
    {
      goto LABEL_10;
    }

    v25 = objc_msgSend_referenceSignature(self, v23, v24);
    v28 = objc_msgSend_referenceSignature(v6, v26, v27);
    v29 = CKObjectsAreBothNilOrEqual();

    if (v29)
    {
      v32 = objc_msgSend_size(self, v30, v31);
      v35 = objc_msgSend_size(v6, v33, v34);
      isEqualToNumber = objc_msgSend_isEqualToNumber_(v32, v36, v35);
    }

    else
    {
LABEL_10:
      isEqualToNumber = 0;
    }
  }

  else
  {
    isEqualToNumber = 0;
  }

  return isEqualToNumber;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_recordID(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_fileSignature(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12) ^ v7;
  v16 = objc_msgSend_referenceSignature(self, v14, v15);
  v19 = objc_msgSend_hash(v16, v17, v18);
  v22 = objc_msgSend_size(self, v20, v21);
  v25 = v19 ^ objc_msgSend_hash(v22, v23, v24);

  return v13 ^ v25;
}

- (id)CKPropertiesDescription
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_recordID(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v4, v8, @"recordID=%@", v7);
  objc_msgSend_addObject_(v3, v10, v9);

  v11 = MEMORY[0x277CCACA8];
  v14 = objc_msgSend_fileSignature(self, v12, v13);
  v16 = objc_msgSend_stringWithFormat_(v11, v15, @"fileSignature=%@", v14);
  objc_msgSend_addObject_(v3, v17, v16);

  v20 = objc_msgSend_referenceSignature(self, v18, v19);

  if (v20)
  {
    v23 = MEMORY[0x277CCACA8];
    v24 = objc_msgSend_referenceSignature(self, v21, v22);
    v26 = objc_msgSend_stringWithFormat_(v23, v25, @"referenceSignature=%@", v24);
    objc_msgSend_addObject_(v3, v27, v26);
  }

  v28 = MEMORY[0x277CCACA8];
  v29 = objc_msgSend_size(self, v21, v22);
  v31 = objc_msgSend_stringWithFormat_(v28, v30, @"size=%@", v29);
  objc_msgSend_addObject_(v3, v32, v31);

  v34 = objc_msgSend_componentsJoinedByString_(v3, v33, @", ");

  return v34;
}

@end