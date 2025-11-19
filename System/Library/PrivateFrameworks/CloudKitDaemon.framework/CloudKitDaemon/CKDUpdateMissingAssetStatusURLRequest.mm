@interface CKDUpdateMissingAssetStatusURLRequest
- (CKDUpdateMissingAssetStatusURLRequest)initWithOperation:(id)a3 recoveredAssetRepairRecordID:(id)a4 size:(unint64_t)a5 putReceipt:(id)a6;
- (CKDUpdateMissingAssetStatusURLRequest)initWithOperation:(id)a3 repairRecordID:(id)a4 recovered:(BOOL)a5 package:(BOOL)a6 sizes:(id)a7 putReceipts:(id)a8;
- (id)generateRequestOperations;
- (id)recordIDsUsedInZones:(id)a3;
- (id)requestOperationClasses;
- (void)fillOutEquivalencyPropertiesBuilder:(id)a3;
- (void)fillOutRequestProperties:(id)a3;
@end

@implementation CKDUpdateMissingAssetStatusURLRequest

- (CKDUpdateMissingAssetStatusURLRequest)initWithOperation:(id)a3 recoveredAssetRepairRecordID:(id)a4 size:(unint64_t)a5 putReceipt:(id)a6
{
  v24[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v14 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v13, a5);
  v24[0] = v14;
  v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, v24, 1);
  if (v12)
  {
    v23 = v12;
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, &v23, 1);
    v20 = objc_msgSend_initWithOperation_repairRecordID_recovered_package_sizes_putReceipts_(self, v19, v10, v11, 1, 0, v17, v18);
  }

  else
  {
    v20 = objc_msgSend_initWithOperation_repairRecordID_recovered_package_sizes_putReceipts_(self, v16, v10, v11, 1, 0, v17, MEMORY[0x277CBEBF8]);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (CKDUpdateMissingAssetStatusURLRequest)initWithOperation:(id)a3 repairRecordID:(id)a4 recovered:(BOOL)a5 package:(BOOL)a6 sizes:(id)a7 putReceipts:(id)a8
{
  v15 = a4;
  v16 = a7;
  v17 = a8;
  v21.receiver = self;
  v21.super_class = CKDUpdateMissingAssetStatusURLRequest;
  v18 = [(CKDURLRequest *)&v21 initWithOperation:a3];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_repairRecordID, a4);
    v19->_recovered = a5;
    v19->_isPackage = a6;
    objc_storeStrong(&v19->_assetSizes, a7);
    objc_storeStrong(&v19->_assetPutReceipts, a8);
  }

  return v19;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)a3
{
  v13.receiver = self;
  v13.super_class = CKDUpdateMissingAssetStatusURLRequest;
  v4 = a3;
  [(CKDURLRequest *)&v13 fillOutEquivalencyPropertiesBuilder:v4];
  v7 = objc_msgSend_repairRecordID(self, v5, v6, v13.receiver, v13.super_class);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v8, v7, @"repairRecordID");

  v11 = objc_msgSend_assetSizes(self, v9, v10);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v12, v11, @"assetSizes");
}

- (void)fillOutRequestProperties:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_repairRecordID(self, v5, v6);
  v13[0] = v7;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, v13, 1);
  objc_msgSend_setModifyRecordIDs_(v4, v10, v9);

  v12.receiver = self;
  v12.super_class = CKDUpdateMissingAssetStatusURLRequest;
  [(CKDURLRequest *)&v12 fillOutRequestProperties:v4];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)recordIDsUsedInZones:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_repairRecordID(self, v5, v6);
  v10 = objc_msgSend_zoneID(v7, v8, v9);
  v12 = objc_msgSend_containsObject_(v4, v11, v10);

  v15 = MEMORY[0x277CBEB98];
  if (v12)
  {
    v16 = objc_msgSend_repairRecordID(self, v13, v14);
    v18 = objc_msgSend_setWithObject_(v15, v17, v16);
  }

  else
  {
    v18 = objc_opt_new();
  }

  return v18;
}

- (id)requestOperationClasses
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = objc_opt_class();
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v6, 1);
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)generateRequestOperations
{
  v71 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_operationType(self, a2, v2);
  v6 = objc_msgSend_operationRequestWithType_(self, v5, v4);
  v7 = objc_opt_new();
  objc_msgSend_setUpdateMissingAssetStatusRequest_(v6, v8, v7);

  v11 = objc_msgSend_updateMissingAssetStatusRequest(v6, v9, v10);
  v14 = objc_msgSend_translator(self, v12, v13);
  v17 = objc_msgSend_repairRecordID(self, v15, v16);
  v19 = objc_msgSend_pRecordIdentifierFromRecordID_(v14, v18, v17);
  objc_msgSend_setMissingAssetStatusRecordID_(v11, v20, v19);

  v23 = objc_msgSend_recovered(self, v21, v22);
  objc_msgSend_setRecovered_(v11, v24, v23);
  if (objc_msgSend_recovered(self, v25, v26))
  {
    if (objc_msgSend_isPackage(self, v27, v28))
    {
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v31 = objc_msgSend_assetSizes(self, v29, v30, 0);
      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v65, v70, 16);
      if (v33)
      {
        v36 = v33;
        v37 = *v66;
        do
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v66 != v37)
            {
              objc_enumerationMutation(v31);
            }

            v39 = objc_msgSend_unsignedIntegerValue(*(*(&v65 + 1) + 8 * i), v34, v35);
            objc_msgSend_addPackageAssetSize_(v11, v40, v39);
          }

          v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v34, &v65, v70, 16);
        }

        while (v36);
      }

      v43 = objc_msgSend_assetPutReceipts(self, v41, v42);
      v46 = objc_msgSend_mutableCopy(v43, v44, v45);
      objc_msgSend_setPackagePutReceipts_(v11, v47, v46);
    }

    else
    {
      v48 = objc_msgSend_assetSizes(self, v29, v30);
      v51 = objc_msgSend_firstObject(v48, v49, v50);
      v54 = objc_msgSend_unsignedIntegerValue(v51, v52, v53);
      objc_msgSend_setAssetSize_(v11, v55, v54);

      v43 = objc_msgSend_assetPutReceipts(self, v56, v57);
      v46 = objc_msgSend_firstObject(v43, v58, v59);
      objc_msgSend_setAssetPutReceipt_(v11, v60, v46);
    }
  }

  v69 = v6;
  v62 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v61, &v69, 1);

  v63 = *MEMORY[0x277D85DE8];

  return v62;
}

@end