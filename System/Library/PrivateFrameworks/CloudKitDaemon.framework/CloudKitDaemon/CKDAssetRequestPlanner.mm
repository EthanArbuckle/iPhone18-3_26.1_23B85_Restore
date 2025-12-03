@interface CKDAssetRequestPlanner
- (BOOL)hasSuccessfulAssetTokenRequests;
- (BOOL)hasSuccessfulBatches;
- (CKDAssetRequestPlanner)initWithAssetTokenRequestSizeLimit:(unsigned int)limit;
- (id)CKPropertiesDescription;
- (void)addMMCSItem:(id)item;
- (void)addMMCSSectionItem:(id)item;
- (void)addRereferencedPackageItem:(id)item;
- (void)failBatch:(id)batch;
- (void)planAssetRequests;
- (void)planRegisterBatches;
- (void)resetAssetTokenRequests;
@end

@implementation CKDAssetRequestPlanner

- (CKDAssetRequestPlanner)initWithAssetTokenRequestSizeLimit:(unsigned int)limit
{
  v14.receiver = self;
  v14.super_class = CKDAssetRequestPlanner;
  v4 = [(CKDAssetRequestPlanner *)&v14 init];
  if (v4)
  {
    v5 = objc_opt_new();
    items = v4->_items;
    v4->_items = v5;

    v7 = objc_opt_new();
    assetZoneByKey = v4->_assetZoneByKey;
    v4->_assetZoneByKey = v7;

    v4->_assetTokenRequestSizeLimit = limit;
    v9 = objc_opt_new();
    assetBatchesByZoneID = v4->_assetBatchesByZoneID;
    v4->_assetBatchesByZoneID = v9;

    v11 = objc_opt_new();
    rerefAssetBatchesByZoneID = v4->_rerefAssetBatchesByZoneID;
    v4->_rerefAssetBatchesByZoneID = v11;
  }

  return v4;
}

- (void)addMMCSItem:(id)item
{
  itemCopy = item;
  if (objc_msgSend_containsObject_(self->_items, v4, itemCopy))
  {
    __assert_rtn("[CKDAssetRequestPlanner addMMCSItem:]", "CKDAssetRequestPlanner.m", 58, "![_items containsObject:item]");
  }

  objc_msgSend_addObject_(self->_items, v5, itemCopy);
  v8 = objc_msgSend_assetZoneKey(itemCopy, v6, v7);
  v11 = objc_msgSend_objectForKeyedSubscript_(self->_assetZoneByKey, v9, v8);
  if (!v11)
  {
    v12 = [CKDAssetZone alloc];
    v11 = objc_msgSend_initWithAssetZoneKey_(v12, v13, v8);
    objc_msgSend_setObject_forKeyedSubscript_(self->_assetZoneByKey, v14, v11, v8);
  }

  objc_msgSend_addMMCSItem_(v11, v10, itemCopy);
}

- (void)addRereferencedPackageItem:(id)item
{
  itemCopy = item;
  if (objc_msgSend_containsObject_(self->_items, v4, itemCopy))
  {
    __assert_rtn("[CKDAssetRequestPlanner addRereferencedPackageItem:]", "CKDAssetRequestPlanner.m", 71, "![_items containsObject:item]");
  }

  objc_msgSend_addObject_(self->_items, v5, itemCopy);
  assetZoneByKey = self->_assetZoneByKey;
  v9 = objc_msgSend_assetZoneKey(itemCopy, v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(assetZoneByKey, v10, v9);

  if (!v11)
  {
    v13 = [CKDAssetZone alloc];
    v16 = objc_msgSend_assetZoneKey(itemCopy, v14, v15);
    v11 = objc_msgSend_initWithAssetZoneKey_(v13, v17, v16);

    v18 = self->_assetZoneByKey;
    v21 = objc_msgSend_assetZoneKey(itemCopy, v19, v20);
    objc_msgSend_setObject_forKeyedSubscript_(v18, v22, v11, v21);
  }

  objc_msgSend_addRereferencedMMCSPackageItem_(v11, v12, itemCopy);
}

- (void)addMMCSSectionItem:(id)item
{
  itemCopy = item;
  if (objc_msgSend_containsObject_(self->_items, v4, itemCopy))
  {
    __assert_rtn("[CKDAssetRequestPlanner addMMCSSectionItem:]", "CKDAssetRequestPlanner.m", 83, "![_items containsObject:item]");
  }

  objc_msgSend_addObject_(self->_items, v5, itemCopy);
  assetZoneByKey = self->_assetZoneByKey;
  v9 = objc_msgSend_assetZoneKey(itemCopy, v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(assetZoneByKey, v10, v9);

  if (!v11)
  {
    v13 = [CKDAssetZone alloc];
    v16 = objc_msgSend_assetZoneKey(itemCopy, v14, v15);
    v11 = objc_msgSend_initWithAssetZoneKey_(v13, v17, v16);
  }

  objc_msgSend_addMMCSSectionItem_(v11, v12, itemCopy);
}

- (void)resetAssetTokenRequests
{
  assetTokenRequests = self->_assetTokenRequests;
  self->_assetTokenRequests = 0;
  MEMORY[0x2821F96F8]();
}

- (void)planRegisterBatches
{
  v153 = *MEMORY[0x277D85DE8];
  v124 = objc_opt_new();
  assetTokenRequestSizeLimit = self->_assetTokenRequestSizeLimit;
  objc_msgSend_setAssetRegisterAndPutBatches_(self, v3, 0);
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  selfCopy = self;
  obj = objc_msgSend_allKeys(self->_assetZoneByKey, v4, v5);
  v120 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v144, v152, 16);
  if (v120)
  {
    v119 = *v145;
    do
    {
      v8 = 0;
      do
      {
        if (*v145 != v119)
        {
          objc_enumerationMutation(obj);
        }

        v121 = v8;
        v9 = *(*(&v144 + 1) + 8 * v8);
        v10 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_assetZoneByKey, v7, v9);
        v11 = [CKDAssetBatch alloc];
        v13 = objc_msgSend_initWithAssetZone_(v11, v12, v10);
        v16 = objc_msgSend_useMMCSEncryptionV2(v9, v14, v15);
        v19 = objc_msgSend_BOOLValue(v16, v17, v18);

        v123 = v13;
        v125 = v19;
        objc_msgSend_setUseMMCSEncryptionV2_(v13, v20, v19);
        v142 = 0u;
        v143 = 0u;
        v140 = 0u;
        v141 = 0u;
        v126 = v10;
        v23 = objc_msgSend_assetRecords(v10, v21, v22);
        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v140, v151, 16);
        if (v25)
        {
          v28 = v25;
          v29 = *v141;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v141 != v29)
              {
                objc_enumerationMutation(v23);
              }

              v31 = *(*(&v140 + 1) + 8 * i);
              if (objc_msgSend_isAssetRecord(v31, v26, v27))
              {
                v32 = [CKDAssetRecord alloc];
                v35 = objc_msgSend_recordType(v31, v33, v34);
                v38 = objc_msgSend_recordID(v31, v36, v37);
                v40 = objc_msgSend_initWithRecordType_recordID_(v32, v39, v35, v38);

                v138 = 0u;
                v139 = 0u;
                v136 = 0u;
                v137 = 0u;
                v43 = objc_msgSend_allMMCSSectionItems(v31, v41, v42);
                v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v136, v150, 16);
                if (v45)
                {
                  v47 = v45;
                  v48 = *v137;
                  do
                  {
                    for (j = 0; j != v47; ++j)
                    {
                      if (*v137 != v48)
                      {
                        objc_enumerationMutation(v43);
                      }

                      objc_msgSend_addMMCSSectionItem_(v40, v46, *(*(&v136 + 1) + 8 * j));
                    }

                    v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v46, &v136, v150, 16);
                  }

                  while (v47);
                }

                v134 = 0u;
                v135 = 0u;
                v132 = 0u;
                v133 = 0u;
                v52 = objc_msgSend_allMMCSItems(v31, v50, v51);
                v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v53, &v132, v149, 16);
                if (v54)
                {
                  v56 = v54;
                  v57 = *v133;
                  do
                  {
                    for (k = 0; k != v56; ++k)
                    {
                      if (*v133 != v57)
                      {
                        objc_enumerationMutation(v52);
                      }

                      objc_msgSend_addMMCSItem_(v40, v55, *(*(&v132 + 1) + 8 * k));
                    }

                    v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v55, &v132, v149, 16);
                  }

                  while (v56);
                }

                if ((objc_msgSend_isEmpty(v40, v59, v60) & 1) == 0)
                {
                  if (objc_msgSend_sizeUpperBound(v40, v61, v62) > assetTokenRequestSizeLimit || objc_msgSend_isPackageSectionRecord(v40, v63, v64))
                  {
                    v67 = [CKDAssetBatch alloc];
                    v69 = objc_msgSend_initWithAssetZone_(v67, v68, v126);
                    objc_msgSend_setUseMMCSEncryptionV2_(v69, v70, v125);
                    objc_msgSend_addAssetRecord_(v69, v71, v31);
                    objc_msgSend_addObject_(v124, v72, v69);
                  }

                  else
                  {
                    v73 = objc_msgSend_sizeUpperBound(v40, v65, v66);
                    if (objc_msgSend_sizeUpperBound(v123, v74, v75) + v73 <= assetTokenRequestSizeLimit)
                    {
                      v81 = v123;
                    }

                    else
                    {
                      objc_msgSend_addObject_(v124, v76, v123);
                      v77 = [CKDAssetBatch alloc];
                      v79 = objc_msgSend_initWithAssetZone_(v77, v78, v126);

                      objc_msgSend_setUseMMCSEncryptionV2_(v79, v80, v125);
                      v81 = v79;
                    }

                    v123 = v81;
                    objc_msgSend_addAssetRecord_(v81, v76, v40);
                  }
                }
              }
            }

            v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v140, v151, 16);
          }

          while (v28);
        }

        if ((objc_msgSend_isEmptyOfRereferencesAssets(v123, v82, v83) & 1) == 0)
        {
          objc_msgSend_addObject_(v124, v84, v123);
        }

        v8 = v121 + 1;
      }

      while (v121 + 1 != v120);
      v120 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v144, v152, 16);
    }

    while (v120);
  }

  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v85 = v124;
  v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v86, &v128, v148, 16);
  if (v87)
  {
    v90 = v87;
    v91 = *v129;
    do
    {
      for (m = 0; m != v90; ++m)
      {
        if (*v129 != v91)
        {
          objc_enumerationMutation(v85);
        }

        v93 = *(*(&v128 + 1) + 8 * m);
        assetBatchesByZoneID = selfCopy->_assetBatchesByZoneID;
        v95 = objc_msgSend_assetZone(v93, v88, v89);
        v98 = objc_msgSend_assetZoneKey(v95, v96, v97);
        v101 = objc_msgSend_destinationZoneID(v98, v99, v100);
        v103 = objc_msgSend_objectForKeyedSubscript_(assetBatchesByZoneID, v102, v101);

        if (!v103)
        {
          v103 = objc_opt_new();
          v105 = selfCopy->_assetBatchesByZoneID;
          v108 = objc_msgSend_assetZone(v93, v106, v107);
          v111 = objc_msgSend_assetZoneKey(v108, v109, v110);
          v114 = objc_msgSend_destinationZoneID(v111, v112, v113);
          objc_msgSend_setObject_forKeyedSubscript_(v105, v115, v103, v114);
        }

        objc_msgSend_addObject_(v103, v104, v93);
      }

      v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v88, &v128, v148, 16);
    }

    while (v90);
  }

  objc_msgSend_setAssetRegisterAndPutBatches_(selfCopy, v116, v85);
  v117 = *MEMORY[0x277D85DE8];
}

- (void)planAssetRequests
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  assetTokenRequestSizeLimit = self->_assetTokenRequestSizeLimit;
  v5 = objc_opt_new();
  selfCopy = self;
  v8 = objc_msgSend_assetRegisterAndPutBatches(self, v6, v7);
  v9 = objc_alloc(MEMORY[0x277CBEB18]);
  v12 = objc_msgSend_count(v8, v10, v11);
  v14 = objc_msgSend_initWithCapacity_(v9, v13, v12);
  v16 = v14;
  if (v8)
  {
    objc_msgSend_addObjectsFromArray_(v14, v15, v8);
  }

  v42 = v8;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v17 = v16;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v44, v48, 16);
  if (v19)
  {
    v22 = v19;
    v23 = *v45;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v45 != v23)
        {
          objc_enumerationMutation(v17);
        }

        v25 = *(*(&v44 + 1) + 8 * i);
        if ((objc_msgSend_isFailed(v25, v20, v21, v42) & 1) == 0)
        {
          if (objc_msgSend_size(v25, v20, v21) <= assetTokenRequestSizeLimit)
          {
            v31 = objc_msgSend_size(v25, v26, v27);
            if (objc_msgSend_size(v5, v32, v33) + v31 > assetTokenRequestSizeLimit)
            {
              objc_msgSend_addObject_(v3, v34, v5);
              v35 = objc_opt_new();

              v5 = v35;
            }

            objc_msgSend_addAssetBatch_(v5, v34, v25);
          }

          else
          {
            v28 = objc_opt_new();
            objc_msgSend_addAssetBatch_(v28, v29, v25);
            objc_msgSend_addObject_(v3, v30, v28);
          }
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v44, v48, 16);
    }

    while (v22);
  }

  if ((objc_msgSend_isEmpty(v5, v36, v37) & 1) == 0)
  {
    objc_msgSend_addObject_(v3, v38, v5);
  }

  assetTokenRequests = selfCopy->_assetTokenRequests;
  selfCopy->_assetTokenRequests = v3;
  v40 = v3;

  v41 = *MEMORY[0x277D85DE8];
}

- (void)failBatch:(id)batch
{
  batchCopy = batch;
  objc_msgSend_setIsFailed_(batchCopy, v3, 1);
  v6 = objc_msgSend_assetTokenRequest(batchCopy, v4, v5);
  v8 = v6;
  if (v6)
  {
    objc_msgSend_addFailedBatch_(v6, v7, batchCopy);
  }
}

- (BOOL)hasSuccessfulBatches
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = objc_msgSend_assetRegisterAndPutBatches(self, a2, v2, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v12, v16, 16);
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v3);
        }

        if (!objc_msgSend_isFailed(*(*(&v12 + 1) + 8 * i), v5, v6))
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v12, v16, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)hasSuccessfulAssetTokenRequests
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_assetTokenRequests;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v11, v15, 16);
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v2);
        }

        if (objc_msgSend_hasSuccessfulBatches(*(*(&v11 + 1) + 8 * i), v4, v5, v11))
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v11, v15, 16);
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)CKPropertiesDescription
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_items(self, v5, v6);
  v10 = objc_msgSend_count(v7, v8, v9);
  v12 = objc_msgSend_stringWithFormat_(v4, v11, @"itemCount=%lu", v10);
  objc_msgSend_addObject_(v3, v13, v12);

  v14 = MEMORY[0x277CCACA8];
  v17 = objc_msgSend_assetRegisterAndPutBatches(self, v15, v16);
  v20 = objc_msgSend_count(v17, v18, v19);
  v22 = objc_msgSend_stringWithFormat_(v14, v21, @"assetRegisterAndPutBatchCount=%lu", v20);
  objc_msgSend_addObject_(v3, v23, v22);

  v24 = MEMORY[0x277CCACA8];
  v27 = objc_msgSend_assetTokenRequests(self, v25, v26);
  v30 = objc_msgSend_count(v27, v28, v29);
  v32 = objc_msgSend_stringWithFormat_(v24, v31, @"assetTokenRequestCount=%lu", v30);
  objc_msgSend_addObject_(v3, v33, v32);

  v35 = objc_msgSend_componentsJoinedByString_(v3, v34, @", ");

  return v35;
}

@end