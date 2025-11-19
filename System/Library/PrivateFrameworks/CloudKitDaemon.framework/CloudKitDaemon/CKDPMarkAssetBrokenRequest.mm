@interface CKDPMarkAssetBrokenRequest
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addFileSignature:(id)a3;
- (void)addReferenceSignature:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsPackage:(BOOL)a3;
- (void)setHasSkipWriteMissingAssetStatusRecord:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPMarkAssetBrokenRequest

+ (id)options
{
  if (qword_280D54FD0 != -1)
  {
    dispatch_once(&qword_280D54FD0, &unk_28385DDC0);
  }

  v3 = qword_280D54FC8;

  return v3;
}

- (void)addFileSignature:(id)a3
{
  v4 = a3;
  fileSignatures = self->_fileSignatures;
  v8 = v4;
  if (!fileSignatures)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_fileSignatures;
    self->_fileSignatures = v6;

    v4 = v8;
    fileSignatures = self->_fileSignatures;
  }

  objc_msgSend_addObject_(fileSignatures, v4, v4);
}

- (void)addReferenceSignature:(id)a3
{
  v4 = a3;
  referenceSignatures = self->_referenceSignatures;
  v8 = v4;
  if (!referenceSignatures)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_referenceSignatures;
    self->_referenceSignatures = v6;

    v4 = v8;
    referenceSignatures = self->_referenceSignatures;
  }

  objc_msgSend_addObject_(referenceSignatures, v4, v4);
}

- (void)setHasIsPackage:(BOOL)a3
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

- (void)setHasSkipWriteMissingAssetStatusRecord:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPMarkAssetBrokenRequest;
  v4 = [(CKDPMarkAssetBrokenRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  brokenAssetRecordID = self->_brokenAssetRecordID;
  if (brokenAssetRecordID)
  {
    v8 = objc_msgSend_dictionaryRepresentation(brokenAssetRecordID, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"brokenAssetRecordID");
  }

  fieldName = self->_fieldName;
  if (fieldName)
  {
    objc_msgSend_setObject_forKey_(v6, v4, fieldName, @"fieldName");
  }

  if (*&self->_has)
  {
    v11 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v4, self->_listIndex);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"listIndex");
  }

  fileSignatures = self->_fileSignatures;
  if (fileSignatures)
  {
    objc_msgSend_setObject_forKey_(v6, v4, fileSignatures, @"fileSignature");
  }

  referenceSignatures = self->_referenceSignatures;
  if (referenceSignatures)
  {
    objc_msgSend_setObject_forKey_(v6, v4, referenceSignatures, @"referenceSignature");
  }

  if ((*&self->_has & 2) != 0)
  {
    v15 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_isPackage);
    objc_msgSend_setObject_forKey_(v6, v16, v15, @"isPackage");
  }

  affectedRecordType = self->_affectedRecordType;
  if (affectedRecordType)
  {
    objc_msgSend_setObject_forKey_(v6, v4, affectedRecordType, @"affectedRecordType");
  }

  if ((*&self->_has & 4) != 0)
  {
    v18 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_skipWriteMissingAssetStatusRecord);
    objc_msgSend_setObject_forKey_(v6, v19, v18, @"skipWriteMissingAssetStatusRecord");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_brokenAssetRecordID)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_fieldName)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    listIndex = self->_listIndex;
    PBDataWriterWriteInt32Field();
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = self->_fileSignatures;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v29, v34, 16);
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      v11 = 0;
      do
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v29 + 1) + 8 * v11);
        PBDataWriterWriteDataField();
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v13, &v29, v34, 16);
    }

    while (v9);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = self->_referenceSignatures;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v25, v33, 16);
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      v19 = 0;
      do
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v25 + 1) + 8 * v19);
        PBDataWriterWriteDataField();
        ++v19;
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v21, &v25, v33, 16);
    }

    while (v17);
  }

  if ((*&self->_has & 2) != 0)
  {
    isPackage = self->_isPackage;
    PBDataWriterWriteBOOLField();
  }

  if (self->_affectedRecordType)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    skipWriteMissingAssetStatusRecord = self->_skipWriteMissingAssetStatusRecord;
    PBDataWriterWriteBOOLField();
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  brokenAssetRecordID = self->_brokenAssetRecordID;
  v28 = v4;
  if (brokenAssetRecordID)
  {
    objc_msgSend_setBrokenAssetRecordID_(v4, v5, brokenAssetRecordID);
    v4 = v28;
  }

  fieldName = self->_fieldName;
  if (fieldName)
  {
    objc_msgSend_setFieldName_(v28, v5, fieldName);
    v4 = v28;
  }

  if (*&self->_has)
  {
    *(v4 + 10) = self->_listIndex;
    v4[60] |= 1u;
  }

  if (objc_msgSend_fileSignaturesCount(self, v5, fieldName))
  {
    objc_msgSend_clearFileSignatures(v28, v8, v9);
    v12 = objc_msgSend_fileSignaturesCount(self, v10, v11);
    if (v12)
    {
      v13 = v12;
      for (i = 0; i != v13; ++i)
      {
        v15 = objc_msgSend_fileSignatureAtIndex_(self, v8, i);
        objc_msgSend_addFileSignature_(v28, v16, v15);
      }
    }
  }

  if (objc_msgSend_referenceSignaturesCount(self, v8, v9))
  {
    objc_msgSend_clearReferenceSignatures(v28, v17, v18);
    v21 = objc_msgSend_referenceSignaturesCount(self, v19, v20);
    if (v21)
    {
      v22 = v21;
      for (j = 0; j != v22; ++j)
      {
        v24 = objc_msgSend_referenceSignatureAtIndex_(self, v17, j);
        objc_msgSend_addReferenceSignature_(v28, v25, v24);
      }
    }
  }

  v26 = v28;
  if ((*&self->_has & 2) != 0)
  {
    v28[56] = self->_isPackage;
    v28[60] |= 2u;
  }

  affectedRecordType = self->_affectedRecordType;
  if (affectedRecordType)
  {
    objc_msgSend_setAffectedRecordType_(v28, v17, affectedRecordType);
    v26 = v28;
  }

  if ((*&self->_has & 4) != 0)
  {
    v26[57] = self->_skipWriteMissingAssetStatusRecord;
    v26[60] |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_brokenAssetRecordID, v11, a3);
  v13 = *(v10 + 16);
  *(v10 + 16) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_fieldName, v14, a3);
  v16 = *(v10 + 24);
  *(v10 + 24) = v15;

  if (*&self->_has)
  {
    *(v10 + 40) = self->_listIndex;
    *(v10 + 60) |= 1u;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v17 = self->_fileSignatures;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v44, v49, 16);
  if (v19)
  {
    v21 = v19;
    v22 = *v45;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v45 != v22)
        {
          objc_enumerationMutation(v17);
        }

        v24 = objc_msgSend_copyWithZone_(*(*(&v44 + 1) + 8 * i), v20, a3);
        objc_msgSend_addFileSignature_(v10, v25, v24);
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v44, v49, 16);
    }

    while (v21);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v26 = self->_referenceSignatures;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v40, v48, 16);
  if (v28)
  {
    v30 = v28;
    v31 = *v41;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v41 != v31)
        {
          objc_enumerationMutation(v26);
        }

        v33 = objc_msgSend_copyWithZone_(*(*(&v40 + 1) + 8 * j), v29, a3, v40);
        objc_msgSend_addReferenceSignature_(v10, v34, v33);
      }

      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v40, v48, 16);
    }

    while (v30);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v10 + 56) = self->_isPackage;
    *(v10 + 60) |= 2u;
  }

  v36 = objc_msgSend_copyWithZone_(self->_affectedRecordType, v35, a3, v40);
  v37 = *(v10 + 8);
  *(v10 + 8) = v36;

  if ((*&self->_has & 4) != 0)
  {
    *(v10 + 57) = self->_skipWriteMissingAssetStatusRecord;
    *(v10 + 60) |= 4u;
  }

  v38 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_26;
  }

  brokenAssetRecordID = self->_brokenAssetRecordID;
  v9 = v4[2];
  if (brokenAssetRecordID | v9)
  {
    if (!objc_msgSend_isEqual_(brokenAssetRecordID, v7, v9))
    {
      goto LABEL_26;
    }
  }

  fieldName = self->_fieldName;
  v11 = v4[3];
  if (fieldName | v11)
  {
    if (!objc_msgSend_isEqual_(fieldName, v7, v11))
    {
      goto LABEL_26;
    }
  }

  v12 = *(v4 + 60);
  if (*&self->_has)
  {
    if ((*(v4 + 60) & 1) == 0 || self->_listIndex != *(v4 + 10))
    {
      goto LABEL_26;
    }
  }

  else if (*(v4 + 60))
  {
    goto LABEL_26;
  }

  fileSignatures = self->_fileSignatures;
  v14 = v4[4];
  if (fileSignatures | v14 && !objc_msgSend_isEqual_(fileSignatures, v7, v14))
  {
    goto LABEL_26;
  }

  referenceSignatures = self->_referenceSignatures;
  v16 = v4[6];
  if (referenceSignatures | v16)
  {
    if (!objc_msgSend_isEqual_(referenceSignatures, v7, v16))
    {
      goto LABEL_26;
    }
  }

  has = self->_has;
  v18 = *(v4 + 60);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 60) & 2) == 0)
    {
      goto LABEL_26;
    }

    v23 = *(v4 + 56);
    if (self->_isPackage)
    {
      if ((v4[7] & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else if (v4[7])
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 60) & 2) != 0)
  {
    goto LABEL_26;
  }

  affectedRecordType = self->_affectedRecordType;
  v20 = v4[1];
  if (affectedRecordType | v20)
  {
    if (!objc_msgSend_isEqual_(affectedRecordType, v7, v20))
    {
      goto LABEL_26;
    }

    has = self->_has;
    v18 = *(v4 + 60);
  }

  v21 = (v18 & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((v18 & 4) != 0)
    {
      if (self->_skipWriteMissingAssetStatusRecord)
      {
        if (*(v4 + 57))
        {
          goto LABEL_34;
        }
      }

      else if (!*(v4 + 57))
      {
LABEL_34:
        v21 = 1;
        goto LABEL_27;
      }
    }

LABEL_26:
    v21 = 0;
  }

LABEL_27:

  return v21;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_brokenAssetRecordID, a2, v2);
  v9 = objc_msgSend_hash(self->_fieldName, v5, v6);
  if (*&self->_has)
  {
    v10 = 2654435761 * self->_listIndex;
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_msgSend_hash(self->_fileSignatures, v7, v8);
  v16 = objc_msgSend_hash(self->_referenceSignatures, v12, v13);
  if ((*&self->_has & 2) != 0)
  {
    v17 = 2654435761 * self->_isPackage;
  }

  else
  {
    v17 = 0;
  }

  v18 = objc_msgSend_hash(self->_affectedRecordType, v14, v15);
  if ((*&self->_has & 4) != 0)
  {
    v19 = 2654435761 * self->_skipWriteMissingAssetStatusRecord;
  }

  else
  {
    v19 = 0;
  }

  return v9 ^ v4 ^ v10 ^ v11 ^ v16 ^ v17 ^ v18 ^ v19;
}

- (void)mergeFrom:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  brokenAssetRecordID = self->_brokenAssetRecordID;
  v7 = *(v5 + 2);
  if (brokenAssetRecordID)
  {
    if (v7)
    {
      objc_msgSend_mergeFrom_(brokenAssetRecordID, v4, v7);
    }
  }

  else if (v7)
  {
    objc_msgSend_setBrokenAssetRecordID_(self, v4, v7);
  }

  v8 = *(v5 + 3);
  if (v8)
  {
    objc_msgSend_setFieldName_(self, v4, v8);
  }

  if (*(v5 + 60))
  {
    self->_listIndex = *(v5 + 10);
    *&self->_has |= 1u;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = *(v5 + 4);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v30, v35, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v31;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v9);
        }

        objc_msgSend_addFileSignature_(self, v12, *(*(&v30 + 1) + 8 * i));
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v30, v35, 16);
    }

    while (v13);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = *(v5 + 6);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v26, v34, 16);
  if (v18)
  {
    v20 = v18;
    v21 = *v27;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v16);
        }

        objc_msgSend_addReferenceSignature_(self, v19, *(*(&v26 + 1) + 8 * j), v26);
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v26, v34, 16);
    }

    while (v20);
  }

  if ((*(v5 + 60) & 2) != 0)
  {
    self->_isPackage = *(v5 + 56);
    *&self->_has |= 2u;
  }

  v24 = *(v5 + 1);
  if (v24)
  {
    objc_msgSend_setAffectedRecordType_(self, v23, v24);
  }

  if ((*(v5 + 60) & 4) != 0)
  {
    self->_skipWriteMissingAssetStatusRecord = *(v5 + 57);
    *&self->_has |= 4u;
  }

  v25 = *MEMORY[0x277D85DE8];
}

@end