@interface CKDMarkAssetBrokenURLRequest
- (CKDMarkAssetBrokenURLRequest)initWithOperation:(id)a3 assetOrPackageMetadata:(id)a4 writeRepairRecord:(BOOL)a5;
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)a3;
- (id)requestOperationClasses;
- (void)fillOutEquivalencyPropertiesBuilder:(id)a3;
- (void)fillOutRequestProperties:(id)a3;
- (void)requestDidParseNodeFailure:(id)a3;
@end

@implementation CKDMarkAssetBrokenURLRequest

- (CKDMarkAssetBrokenURLRequest)initWithOperation:(id)a3 assetOrPackageMetadata:(id)a4 writeRepairRecord:(BOOL)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = CKDMarkAssetBrokenURLRequest;
  v10 = [(CKDURLRequest *)&v13 initWithOperation:a3];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_metadata, a4);
    v11->_writeRepairRecord = a5;
  }

  return v11;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)a3
{
  v9.receiver = self;
  v9.super_class = CKDMarkAssetBrokenURLRequest;
  v4 = a3;
  [(CKDURLRequest *)&v9 fillOutEquivalencyPropertiesBuilder:v4];
  v7 = objc_msgSend_metadata(self, v5, v6, v9.receiver, v9.super_class);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v8, v7, @"metadata");
}

- (void)fillOutRequestProperties:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_metadata(self, v5, v6);
  v10 = objc_msgSend_recordID(v7, v8, v9);
  v16[0] = v10;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v16, 1);
  objc_msgSend_setModifyRecordIDs_(v4, v13, v12);

  v15.receiver = self;
  v15.super_class = CKDMarkAssetBrokenURLRequest;
  [(CKDURLRequest *)&v15 fillOutRequestProperties:v4];

  v14 = *MEMORY[0x277D85DE8];
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
  v84[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_operationType(self, a2, v2);
  v6 = objc_msgSend_operationRequestWithType_(self, v5, v4);
  v7 = objc_opt_new();
  objc_msgSend_setMarkAssetBrokenRequest_(v6, v8, v7);

  v11 = objc_msgSend_markAssetBrokenRequest(v6, v9, v10);
  v14 = objc_msgSend_metadata(self, v12, v13);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v19 = objc_msgSend_metadata(self, v16, v17);
  if (isKindOfClass)
  {
    objc_msgSend_setIsPackage_(v11, v18, 1);
    v22 = objc_msgSend_fileSignatures(v19, v20, v21);
    v25 = objc_msgSend_mutableCopy(v22, v23, v24);
    objc_msgSend_setFileSignatures_(v11, v26, v25);

    v29 = objc_msgSend_referenceSignatures(v19, v27, v28);
    v32 = objc_msgSend_mutableCopy(v29, v30, v31);
  }

  else
  {
    objc_opt_class();
    v34 = objc_opt_isKindOfClass();

    if ((v34 & 1) == 0)
    {
      goto LABEL_6;
    }

    v19 = objc_msgSend_metadata(self, v35, v36);
    v39 = objc_msgSend_listIndex(v19, v37, v38);
    objc_msgSend_setListIndex_(v11, v40, v39);
    v41 = MEMORY[0x277CBEB18];
    v44 = objc_msgSend_fileSignature(v19, v42, v43);
    v46 = objc_msgSend_arrayWithObject_(v41, v45, v44);
    objc_msgSend_setFileSignatures_(v11, v47, v46);

    v48 = MEMORY[0x277CBEB18];
    v29 = objc_msgSend_referenceSignature(v19, v49, v50);
    v32 = objc_msgSend_arrayWithObject_(v48, v51, v29);
  }

  v52 = v32;
  objc_msgSend_setReferenceSignatures_(v11, v33, v32);

LABEL_6:
  v53 = objc_msgSend_translator(self, v35, v36);
  v56 = objc_msgSend_metadata(self, v54, v55);
  v59 = objc_msgSend_recordID(v56, v57, v58);
  v61 = objc_msgSend_pRecordIdentifierFromRecordID_(v53, v60, v59);
  objc_msgSend_setBrokenAssetRecordID_(v11, v62, v61);

  v65 = objc_msgSend_metadata(self, v63, v64);
  v68 = objc_msgSend_fieldName(v65, v66, v67);
  objc_msgSend_setFieldName_(v11, v69, v68);

  v72 = objc_msgSend_metadata(self, v70, v71);
  v75 = objc_msgSend_recordType(v72, v73, v74);
  objc_msgSend_setAffectedRecordType_(v11, v76, v75);

  if ((objc_msgSend_writeRepairRecord(self, v77, v78) & 1) == 0)
  {
    objc_msgSend_setSkipWriteMissingAssetStatusRecord_(v11, v79, 1);
  }

  v84[0] = v6;
  v81 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v80, v84, 1);

  v82 = *MEMORY[0x277D85DE8];

  return v81;
}

- (id)requestDidParseProtobufObject:(id)a3
{
  v4 = a3;
  if (objc_msgSend_hasMarkAssetBrokenResponse(v4, v5, v6) && (objc_msgSend_markAssetBrokenResponse(v4, v7, v8), v9 = objc_claimAutoreleasedReturnValue(), hasMissingAssetStatusRecord = objc_msgSend_hasMissingAssetStatusRecord(v9, v10, v11), v9, hasMissingAssetStatusRecord))
  {
    v13 = objc_msgSend_translator(self, v7, v8);
    v16 = objc_msgSend_markAssetBrokenResponse(v4, v14, v15);
    v19 = objc_msgSend_missingAssetStatusRecord(v16, v17, v18);
    v31 = 0;
    v21 = objc_msgSend_recordIDFromPRecordIdentifier_error_(v13, v20, v19, &v31);
    v22 = v31;
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  if (!(v22 | v21))
  {
    v22 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v7, *MEMORY[0x277CBBF50], 2006, @"Invalid data received from server");
  }

  v23 = objc_msgSend_assetBrokenBlock(self, v7, v8);

  if (v23)
  {
    v26 = objc_msgSend_assetBrokenBlock(self, v24, v25);
    v29 = objc_msgSend_result(v4, v27, v28);
    (v26)[2](v26, v21, v29);
  }

  return v22;
}

- (void)requestDidParseNodeFailure:(id)a3
{
  v13 = a3;
  v6 = objc_msgSend_assetBrokenBlock(self, v4, v5);

  if (v6)
  {
    v9 = objc_msgSend_assetBrokenBlock(self, v7, v8);
    v12 = objc_msgSend_result(v13, v10, v11);
    (v9)[2](v9, 0, v12);
  }
}

@end