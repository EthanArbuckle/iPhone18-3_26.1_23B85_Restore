@interface CKDPUpdateMissingAssetStatusRequest
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int64_t)packageAssetSizeAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addPackagePutReceipts:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasRecovered:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPUpdateMissingAssetStatusRequest

- (void)dealloc
{
  PBRepeatedInt64Clear();
  v3.receiver = self;
  v3.super_class = CKDPUpdateMissingAssetStatusRequest;
  [(CKDPUpdateMissingAssetStatusRequest *)&v3 dealloc];
}

+ (id)options
{
  if (qword_280D550C0 != -1)
  {
    dispatch_once(&qword_280D550C0, &unk_28385E100);
  }

  v3 = qword_280D550B8;

  return v3;
}

- (void)setHasRecovered:(BOOL)a3
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

- (int64_t)packageAssetSizeAtIndex:(unint64_t)a3
{
  p_packageAssetSizes = &self->_packageAssetSizes;
  count = self->_packageAssetSizes.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"idx (%lu) is out of range (%lu)", a3, count);
    v10 = objc_msgSend_exceptionWithName_reason_userInfo_(v6, v9, v7, v8, 0);
    objc_msgSend_raise(v10, v11, v12);
  }

  return p_packageAssetSizes->list[a3];
}

- (void)addPackagePutReceipts:(id)a3
{
  v4 = a3;
  packagePutReceipts = self->_packagePutReceipts;
  v8 = v4;
  if (!packagePutReceipts)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_packagePutReceipts;
    self->_packagePutReceipts = v6;

    v4 = v8;
    packagePutReceipts = self->_packagePutReceipts;
  }

  objc_msgSend_addObject_(packagePutReceipts, v4, v4);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPUpdateMissingAssetStatusRequest;
  v4 = [(CKDPUpdateMissingAssetStatusRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  missingAssetStatusRecordID = self->_missingAssetStatusRecordID;
  if (missingAssetStatusRecordID)
  {
    v8 = objc_msgSend_dictionaryRepresentation(missingAssetStatusRecordID, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"missingAssetStatusRecordID");
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v11 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_recovered);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"recovered");

    has = self->_has;
  }

  if (has)
  {
    v13 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v4, self->_assetSize);
    objc_msgSend_setObject_forKey_(v6, v14, v13, @"assetSize");
  }

  assetPutReceipt = self->_assetPutReceipt;
  if (assetPutReceipt)
  {
    objc_msgSend_setObject_forKey_(v6, v4, assetPutReceipt, @"assetPutReceipt");
  }

  v16 = PBRepeatedInt64NSArray();
  objc_msgSend_setObject_forKey_(v6, v17, v16, @"packageAssetSize");

  packagePutReceipts = self->_packagePutReceipts;
  if (packagePutReceipts)
  {
    objc_msgSend_setObject_forKey_(v6, v18, packagePutReceipts, @"packagePutReceipts");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_missingAssetStatusRecordID)
  {
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    recovered = self->_recovered;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if (has)
  {
    assetSize = self->_assetSize;
    PBDataWriterWriteInt64Field();
  }

  if (self->_assetPutReceipt)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_packageAssetSizes.count)
  {
    v8 = 0;
    do
    {
      v9 = self->_packageAssetSizes.list[v8];
      PBDataWriterWriteInt64Field();
      ++v8;
    }

    while (v8 < self->_packageAssetSizes.count);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = self->_packagePutReceipts;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v19, v23, 16);
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v17, &v19, v23, 16);
    }

    while (v13);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  missingAssetStatusRecordID = self->_missingAssetStatusRecordID;
  v28 = v4;
  if (missingAssetStatusRecordID)
  {
    objc_msgSend_setMissingAssetStatusRecordID_(v4, v5, missingAssetStatusRecordID);
    v4 = v28;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 64) = self->_recovered;
    *(v4 + 68) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 4) = self->_assetSize;
    *(v4 + 68) |= 1u;
  }

  assetPutReceipt = self->_assetPutReceipt;
  if (assetPutReceipt)
  {
    objc_msgSend_setAssetPutReceipt_(v28, v5, assetPutReceipt);
  }

  if (objc_msgSend_packageAssetSizesCount(self, v5, assetPutReceipt))
  {
    objc_msgSend_clearPackageAssetSizes(v28, v9, v10);
    v13 = objc_msgSend_packageAssetSizesCount(self, v11, v12);
    if (v13)
    {
      v14 = v13;
      for (i = 0; i != v14; ++i)
      {
        v16 = objc_msgSend_packageAssetSizeAtIndex_(self, v9, i);
        objc_msgSend_addPackageAssetSize_(v28, v17, v16);
      }
    }
  }

  if (objc_msgSend_packagePutReceiptsCount(self, v9, v10))
  {
    objc_msgSend_clearPackagePutReceipts(v28, v18, v19);
    v22 = objc_msgSend_packagePutReceiptsCount(self, v20, v21);
    if (v22)
    {
      v24 = v22;
      for (j = 0; j != v24; ++j)
      {
        v26 = objc_msgSend_packagePutReceiptsAtIndex_(self, v23, j);
        objc_msgSend_addPackagePutReceipts_(v28, v27, v26);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_missingAssetStatusRecordID, v11, a3);
  v13 = *(v10 + 48);
  *(v10 + 48) = v12;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v10 + 64) = self->_recovered;
    *(v10 + 68) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v10 + 32) = self->_assetSize;
    *(v10 + 68) |= 1u;
  }

  v16 = objc_msgSend_copyWithZone_(self->_assetPutReceipt, v14, a3);
  v17 = *(v10 + 40);
  *(v10 + 40) = v16;

  PBRepeatedInt64Copy();
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = self->_packagePutReceipts;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v29, v33, 16);
  if (v20)
  {
    v22 = v20;
    v23 = *v30;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(v18);
        }

        v25 = objc_msgSend_copyWithZone_(*(*(&v29 + 1) + 8 * i), v21, a3, v29);
        objc_msgSend_addPackagePutReceipts_(v10, v26, v25);
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v29, v33, 16);
    }

    while (v22);
  }

  v27 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_21;
  }

  missingAssetStatusRecordID = self->_missingAssetStatusRecordID;
  v9 = v4[6];
  if (missingAssetStatusRecordID | v9)
  {
    if (!objc_msgSend_isEqual_(missingAssetStatusRecordID, v7, v9))
    {
      goto LABEL_21;
    }
  }

  v10 = *(v4 + 68);
  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 68) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_21:
    isEqual = 0;
    goto LABEL_22;
  }

  if ((*(v4 + 68) & 2) == 0)
  {
    goto LABEL_21;
  }

  v11 = *(v4 + 64);
  if (self->_recovered)
  {
    if ((v4[8] & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v4[8])
  {
    goto LABEL_21;
  }

LABEL_6:
  if (*&self->_has)
  {
    if ((*(v4 + 68) & 1) == 0 || self->_assetSize != v4[4])
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 68))
  {
    goto LABEL_21;
  }

  assetPutReceipt = self->_assetPutReceipt;
  v13 = v4[5];
  if (assetPutReceipt | v13 && !objc_msgSend_isEqual_(assetPutReceipt, v7, v13) || !PBRepeatedInt64IsEqual())
  {
    goto LABEL_21;
  }

  packagePutReceipts = self->_packagePutReceipts;
  v16 = v4[7];
  if (packagePutReceipts | v16)
  {
    isEqual = objc_msgSend_isEqual_(packagePutReceipts, v14, v16);
  }

  else
  {
    isEqual = 1;
  }

LABEL_22:

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_missingAssetStatusRecordID, a2, v2);
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_recovered;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = 2654435761 * self->_assetSize;
LABEL_6:
  v9 = v7 ^ v4 ^ v8 ^ objc_msgSend_hash(self->_assetPutReceipt, v5, v6);
  v10 = PBRepeatedInt64Hash();
  return v9 ^ v10 ^ objc_msgSend_hash(self->_packagePutReceipts, v11, v12);
}

- (void)mergeFrom:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  missingAssetStatusRecordID = self->_missingAssetStatusRecordID;
  v7 = *(v5 + 6);
  if (missingAssetStatusRecordID)
  {
    if (v7)
    {
      objc_msgSend_mergeFrom_(missingAssetStatusRecordID, v4, v7);
    }
  }

  else if (v7)
  {
    objc_msgSend_setMissingAssetStatusRecordID_(self, v4, v7);
  }

  v8 = *(v5 + 68);
  if ((v8 & 2) != 0)
  {
    self->_recovered = *(v5 + 64);
    *&self->_has |= 2u;
    v8 = *(v5 + 68);
  }

  if (v8)
  {
    self->_assetSize = *(v5 + 4);
    *&self->_has |= 1u;
  }

  v9 = *(v5 + 5);
  if (v9)
  {
    objc_msgSend_setAssetPutReceipt_(self, v4, v9);
  }

  v10 = objc_msgSend_packageAssetSizesCount(v5, v4, v9);
  if (v10)
  {
    v12 = v10;
    for (i = 0; i != v12; ++i)
    {
      v14 = objc_msgSend_packageAssetSizeAtIndex_(v5, v11, i);
      objc_msgSend_addPackageAssetSize_(self, v15, v14);
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = *(v5 + 7);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v24, v28, 16);
  if (v18)
  {
    v20 = v18;
    v21 = *v25;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v16);
        }

        objc_msgSend_addPackagePutReceipts_(self, v19, *(*(&v24 + 1) + 8 * j), v24);
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v24, v28, 16);
    }

    while (v20);
  }

  v23 = *MEMORY[0x277D85DE8];
}

@end