@interface CKDAssetTokenRequest
- (BOOL)hasSuccessfulBatches;
- (CKDAssetTokenRequest)init;
- (id)CKPropertiesDescription;
- (void)addAssetBatch:(id)batch;
@end

@implementation CKDAssetTokenRequest

- (CKDAssetTokenRequest)init
{
  v8.receiver = self;
  v8.super_class = CKDAssetTokenRequest;
  v2 = [(CKDAssetTokenRequest *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    assetBatches = v2->_assetBatches;
    v2->_assetBatches = v3;

    v5 = objc_opt_new();
    failedAssetBatches = v2->_failedAssetBatches;
    v2->_failedAssetBatches = v5;
  }

  return v2;
}

- (void)addAssetBatch:(id)batch
{
  batchCopy = batch;
  objc_msgSend_assetTokenRequest(batchCopy, v4, v5);
  if (objc_claimAutoreleasedReturnValue())
  {
    __assert_rtn("[CKDAssetTokenRequest addAssetBatch:]", "CKDAssetTokenRequest.m", 35, "!assetBatch.assetTokenRequest");
  }

  objc_msgSend_setAssetTokenRequest_(batchCopy, v6, self);
  objc_msgSend_addObject_(self->_assetBatches, v7, batchCopy);
  self->_sizeUpperBound += objc_msgSend_sizeUpperBound(batchCopy, v8, v9);
  self->_size += objc_msgSend_size(batchCopy, v10, v11);
}

- (BOOL)hasSuccessfulBatches
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  assetBatches = self->_assetBatches;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22514831C;
  v5[3] = &unk_278546728;
  v5[4] = &v6;
  objc_msgSend_enumerateObjectsUsingBlock_(assetBatches, a2, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)CKPropertiesDescription
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_assetBatches(self, v5, v6);
  v10 = objc_msgSend_count(v7, v8, v9);
  v12 = objc_msgSend_stringWithFormat_(v4, v11, @"assetBatchCount=%lu", v10);
  objc_msgSend_addObject_(v3, v13, v12);

  v14 = MEMORY[0x277CCACA8];
  v17 = objc_msgSend_failedAssetBatches(self, v15, v16);
  v20 = objc_msgSend_count(v17, v18, v19);
  v22 = objc_msgSend_stringWithFormat_(v14, v21, @"failedAssetBatchCount=%lu", v20);
  objc_msgSend_addObject_(v3, v23, v22);

  v24 = MEMORY[0x277CCACA8];
  v27 = objc_msgSend_sizeUpperBound(self, v25, v26);
  v29 = objc_msgSend_stringWithFormat_(v24, v28, @"sizeUpperBound=%lu", v27);
  objc_msgSend_addObject_(v3, v30, v29);

  v32 = objc_msgSend_componentsJoinedByString_(v3, v31, @", ");

  return v32;
}

@end