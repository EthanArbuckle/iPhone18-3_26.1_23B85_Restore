@interface CKDUpdateMissingAssetStatusURLRequest
- (CKDUpdateMissingAssetStatusURLRequest)initWithOperation:(id)operation recoveredAssetRepairRecordID:(id)d size:(unint64_t)size putReceipt:(id)receipt;
- (CKDUpdateMissingAssetStatusURLRequest)initWithOperation:(id)operation repairRecordID:(id)d recovered:(BOOL)recovered package:(BOOL)package sizes:(id)sizes putReceipts:(id)receipts;
- (id)generateRequestOperations;
- (id)recordIDsUsedInZones:(id)zones;
- (id)requestOperationClasses;
- (void)fillOutEquivalencyPropertiesBuilder:(id)builder;
- (void)fillOutRequestProperties:(id)properties;
@end

@implementation CKDUpdateMissingAssetStatusURLRequest

- (CKDUpdateMissingAssetStatusURLRequest)initWithOperation:(id)operation recoveredAssetRepairRecordID:(id)d size:(unint64_t)size putReceipt:(id)receipt
{
  v24[1] = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  dCopy = d;
  receiptCopy = receipt;
  v14 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v13, size);
  v24[0] = v14;
  v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, v24, 1);
  if (receiptCopy)
  {
    v23 = receiptCopy;
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, &v23, 1);
    v20 = objc_msgSend_initWithOperation_repairRecordID_recovered_package_sizes_putReceipts_(self, v19, operationCopy, dCopy, 1, 0, v17, v18);
  }

  else
  {
    v20 = objc_msgSend_initWithOperation_repairRecordID_recovered_package_sizes_putReceipts_(self, v16, operationCopy, dCopy, 1, 0, v17, MEMORY[0x277CBEBF8]);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (CKDUpdateMissingAssetStatusURLRequest)initWithOperation:(id)operation repairRecordID:(id)d recovered:(BOOL)recovered package:(BOOL)package sizes:(id)sizes putReceipts:(id)receipts
{
  dCopy = d;
  sizesCopy = sizes;
  receiptsCopy = receipts;
  v21.receiver = self;
  v21.super_class = CKDUpdateMissingAssetStatusURLRequest;
  v18 = [(CKDURLRequest *)&v21 initWithOperation:operation];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_repairRecordID, d);
    v19->_recovered = recovered;
    v19->_isPackage = package;
    objc_storeStrong(&v19->_assetSizes, sizes);
    objc_storeStrong(&v19->_assetPutReceipts, receipts);
  }

  return v19;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)builder
{
  v13.receiver = self;
  v13.super_class = CKDUpdateMissingAssetStatusURLRequest;
  builderCopy = builder;
  [(CKDURLRequest *)&v13 fillOutEquivalencyPropertiesBuilder:builderCopy];
  v7 = objc_msgSend_repairRecordID(self, v5, v6, v13.receiver, v13.super_class);
  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v8, v7, @"repairRecordID");

  v11 = objc_msgSend_assetSizes(self, v9, v10);
  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v12, v11, @"assetSizes");
}

- (void)fillOutRequestProperties:(id)properties
{
  v13[1] = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v7 = objc_msgSend_repairRecordID(self, v5, v6);
  v13[0] = v7;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, v13, 1);
  objc_msgSend_setModifyRecordIDs_(propertiesCopy, v10, v9);

  v12.receiver = self;
  v12.super_class = CKDUpdateMissingAssetStatusURLRequest;
  [(CKDURLRequest *)&v12 fillOutRequestProperties:propertiesCopy];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)recordIDsUsedInZones:(id)zones
{
  zonesCopy = zones;
  v7 = objc_msgSend_repairRecordID(self, v5, v6);
  v10 = objc_msgSend_zoneID(v7, v8, v9);
  v12 = objc_msgSend_containsObject_(zonesCopy, v11, v10);

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