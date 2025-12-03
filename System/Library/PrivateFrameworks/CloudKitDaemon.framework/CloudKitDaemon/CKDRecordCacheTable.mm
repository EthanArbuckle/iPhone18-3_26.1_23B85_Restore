@interface CKDRecordCacheTable
- (BOOL)_cachedRecordHasValidAssets:(id)assets forRequiredKeys:(id)keys;
- (BOOL)_cachedRecordKnownUserKeyData:(id)data satisfiesRequiredKeys:(id)keys;
- (CKDRecordCacheTable)init;
- (id)_dsidForAccount:(id)account;
- (id)_recordWithID:(id)d container:(id)container requiredKeys:(id)keys scope:(int64_t)scope;
- (id)_trimRecord:(id)record toRequiredKeys:(id)keys;
- (id)addRecord:(id)record container:(id)container knownUserKeys:(id)keys scope:(int64_t)scope;
- (id)etagForRecordID:(id)d container:(id)container requiredKeys:(id)keys scope:(int64_t)scope;
- (id)fetchCacheEntryRecordData:(id)data;
- (id)recordWithID:(id)d container:(id)container requiredKeys:(id)keys scope:(int64_t)scope;
- (id)recordsWithIDs:(id)ds container:(id)container requiredKeys:(id)keys scope:(int64_t)scope;
- (id)tableForReferenceProperty:(id)property;
- (unint64_t)numberOfRecordsWithID:(id)d container:(id)container;
- (void)clearAllRecords:(id)records;
- (void)clearAllRecordsForContainer:(id)container zoneWithID:(id)d;
- (void)clearAllRecordsInScope:(int64_t)scope container:(id)container;
- (void)deleteRecordWithID:(id)d container:(id)container scope:(int64_t)scope;
- (void)willAddToGroup:(id)group;
@end

@implementation CKDRecordCacheTable

- (CKDRecordCacheTable)init
{
  v4 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], a2, v2);
  v7 = objc_msgSend_recordCacheEntryCountLimit(v4, v5, v6);
  v10 = objc_msgSend_recordCacheSizeLimit(v4, v8, v9);
  v13 = objc_msgSend_cachedRecordExpiryTime(v4, v11, v12);
  objc_msgSend_recordCacheExpireDelay(v4, v14, v15);
  v19.receiver = self;
  v19.super_class = CKDRecordCacheTable;
  v17 = [(CKSQLiteCacheTable *)&v19 initWithLogicalTableName:@"RecordCache" entryCountLimit:v7 dataSizeLimit:v10 expirationTime:v13 expireDelay:v16];

  return v17;
}

- (void)willAddToGroup:(id)group
{
  v5.receiver = self;
  v5.super_class = CKDRecordCacheTable;
  groupCopy = group;
  [(CKSQLiteCacheTable *)&v5 willAddToGroup:groupCopy];
  objc_msgSend_addSingletonInstanceToGroup_(MEMORY[0x277CBC650], v4, groupCopy, v5.receiver, v5.super_class);
}

- (id)tableForReferenceProperty:(id)property
{
  propertyCopy = property;
  if (objc_msgSend_isEqualToString_(propertyCopy, v5, @"containerID"))
  {
    v8 = MEMORY[0x277CBC650];
    v9 = objc_msgSend_tableGroup(self, v6, v7);
    v11 = objc_msgSend_singletonInstanceInGroup_(v8, v10, v9);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CKDRecordCacheTable;
    v11 = [(CKSQLiteTable *)&v13 tableForReferenceProperty:propertyCopy];
  }

  return v11;
}

- (id)_dsidForAccount:(id)account
{
  accountCopy = account;
  if (objc_msgSend_accountType(accountCopy, v4, v5) == 1)
  {
    v8 = @"Anonymous";
  }

  else
  {
    v9 = objc_msgSend_dsid(accountCopy, v6, v7);
    if (v9)
    {
      v8 = v9;
    }

    else
    {
      v8 = @"Unknown";
    }
  }

  return v8;
}

- (BOOL)_cachedRecordKnownUserKeyData:(id)data satisfiesRequiredKeys:(id)keys
{
  v29 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  keysCopy = keys;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(keysCopy, v7, &v24, v28, 16);
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(keysCopy);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        if (CKIsIndexedArrayKey())
        {

          isSubsetOfSet = 0;
          goto LABEL_12;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(keysCopy, v13, &v24, v28, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v16 = objc_msgSend_null(MEMORY[0x277CBEB68], v14, v15, v24);
  v18 = objc_msgSend_containsObject_(dataCopy, v17, v16);

  if (v18)
  {
    isSubsetOfSet = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    isSubsetOfSet = 0;
    if (keysCopy && (isKindOfClass & 1) != 0)
    {
      isSubsetOfSet = objc_msgSend_isSubsetOfSet_(keysCopy, v23, dataCopy);
    }
  }

LABEL_12:

  v20 = *MEMORY[0x277D85DE8];
  return isSubsetOfSet;
}

- (BOOL)_cachedRecordHasValidAssets:(id)assets forRequiredKeys:(id)keys
{
  v47[2] = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  keysCopy = keys;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 1;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_225073F40;
  v40 = sub_22507352C;
  v41 = 0;
  v9 = objc_msgSend_valueStore(assetsCopy, v7, v8);
  v47[0] = objc_opt_class();
  v47[1] = objc_opt_class();
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, v47, 2);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_22515F3EC;
  v32[3] = &unk_278546D18;
  v12 = keysCopy;
  v33 = v12;
  v34 = &v36;
  v35 = &v42;
  objc_msgSend_enumerateKeysAndValuesOfClasses_usingBlock_(v9, v13, v11, v32);

  if (*(v43 + 24) == 1 && objc_msgSend_count(v37[5], v14, v15))
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = v37[5];
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v28, v46, 16);
    if (v20)
    {
      v21 = *v29;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(v16);
          }

          v23 = *(*(&v28 + 1) + 8 * i);
          if (objc_msgSend_paddedFileSize(v23, v18, v19, v28))
          {
            *(v43 + 24) = 0;
            goto LABEL_13;
          }

          objc_msgSend_setWasCached_(v23, v24, 1);
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v28, v46, 16);
        if (v20)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v25 = *(v43 + 24);

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  v26 = *MEMORY[0x277D85DE8];
  return v25 & 1;
}

- (id)fetchCacheEntryRecordData:(id)data
{
  v14[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v7 = objc_msgSend_primaryKey(self, v5, v6);
  v14[0] = v7;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, v14, 1);
  v11 = objc_msgSend_fetchProperties_inObject_matchingDBProperties_label_(self, v10, &unk_2838C8E20, dataCopy, v9, off_27D719E80);

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_recordWithID:(id)d container:(id)container requiredKeys:(id)keys scope:(int64_t)scope
{
  v54[4] = *MEMORY[0x277D85DE8];
  dCopy = d;
  containerCopy = container;
  keysCopy = keys;
  if (!dCopy)
  {
    v38 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v13, v14);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v38, v39, a2, self, @"CKDRecordCache.m", 204, @"Can't fetch a record if we don't have a recordID");
  }

  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = sub_225073F40;
  v51 = sub_22507352C;
  v52 = 0;
  v16 = objc_msgSend_account(containerCopy, v13, v14);
  v18 = objc_msgSend__dsidForAccount_(self, v17, v16);

  v53[0] = @"RECORDID";
  v21 = objc_msgSend_sqliteRepresentation(dCopy, v19, v20);
  v54[0] = v21;
  v53[1] = @"CONTAINERID";
  v24 = objc_msgSend_containerID(containerCopy, v22, v23);
  v54[1] = v24;
  v53[2] = @"SCOPE";
  v26 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v25, scope);
  v53[3] = @"DSID";
  v54[2] = v26;
  v54[3] = v18;
  v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v27, v54, v53, 4);

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = sub_22515F8D0;
  v40[3] = &unk_278546D40;
  v40[4] = self;
  v29 = v28;
  v41 = v29;
  v30 = keysCopy;
  v42 = v30;
  v31 = containerCopy;
  v43 = v31;
  v45 = &v47;
  scopeCopy = scope;
  v32 = dCopy;
  v44 = v32;
  v34 = objc_msgSend_performInTransaction_(self, v33, v40);
  v35 = v48[5];

  _Block_object_dispose(&v47, 8);
  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

- (id)_trimRecord:(id)record toRequiredKeys:(id)keys
{
  v50 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  keysCopy = keys;
  if (keysCopy)
  {
    objc_msgSend_setTrackChanges_(recordCopy, v6, 0);
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v10 = objc_msgSend_valuesByKey(recordCopy, v8, v9);
    v13 = objc_msgSend_allKeys(v10, v11, v12);

    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v44, v49, 16);
    if (v15)
    {
      v17 = v15;
      v18 = *v45;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v45 != v18)
          {
            objc_enumerationMutation(v13);
          }

          v20 = *(*(&v44 + 1) + 8 * i);
          if ((objc_msgSend_containsObject_(keysCopy, v16, v20) & 1) == 0)
          {
            objc_msgSend_setObject_forKeyedSubscript_(recordCopy, v16, 0, v20);
          }
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v44, v49, 16);
      }

      while (v17);
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v23 = objc_msgSend_encryptedValues(recordCopy, v21, v22, 0);
    v26 = objc_msgSend_allKeys(v23, v24, v25);

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

          v33 = *(*(&v40 + 1) + 8 * j);
          if ((objc_msgSend_containsObject_(keysCopy, v29, v33) & 1) == 0)
          {
            v35 = objc_msgSend_encryptedValues(recordCopy, v29, v34);
            objc_msgSend_setObject_forKeyedSubscript_(v35, v36, 0, v33);
          }
        }

        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v40, v48, 16);
      }

      while (v30);
    }

    objc_msgSend_setTrackChanges_(recordCopy, v37, 1);
  }

  v38 = *MEMORY[0x277D85DE8];

  return recordCopy;
}

- (id)recordWithID:(id)d container:(id)container requiredKeys:(id)keys scope:(int64_t)scope
{
  dCopy = d;
  containerCopy = container;
  keysCopy = keys;
  v16 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v14, v15);
  v19 = objc_msgSend_disableCaching(v16, v17, v18);

  if (v19)
  {
    v22 = 0;
  }

  else
  {
    if (!dCopy)
    {
      v27 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v20, v21);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v27, v28, a2, self, @"CKDRecordCache.m", 282, @"Expected a recordID");
    }

    v22 = objc_msgSend__recordWithID_container_requiredKeys_scope_(self, v20, dCopy, containerCopy, keysCopy, scope);
    if ((objc_msgSend__cachedRecordHasValidAssets_forRequiredKeys_(self, v23, v22, keysCopy) & 1) == 0)
    {

      v22 = 0;
    }

    v25 = objc_msgSend__trimRecord_toRequiredKeys_(self, v24, v22, keysCopy);
  }

  return v22;
}

- (id)recordsWithIDs:(id)ds container:(id)container requiredKeys:(id)keys scope:(int64_t)scope
{
  v81 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  containerCopy = container;
  keysCopy = keys;
  v16 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v14, v15);
  v19 = objc_msgSend_disableCaching(v16, v17, v18);

  if (v19)
  {
    v22 = MEMORY[0x277CBEBF8];
  }

  else
  {
    if (!objc_msgSend_count(dsCopy, v20, v21))
    {
      v61 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v23, v24);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v61, v62, a2, self, @"CKDRecordCache.m", 300, @"Expected recordIDs");
    }

    v65 = keysCopy;
    v63 = objc_opt_new();
    v25 = objc_alloc(MEMORY[0x277CBEB18]);
    v28 = objc_msgSend_count(dsCopy, v26, v27);
    v30 = objc_msgSend_initWithCapacity_(v25, v29, v28);
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v64 = dsCopy;
    v31 = dsCopy;
    v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v74, v80, 16);
    if (v33)
    {
      v36 = v33;
      v37 = *v75;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v75 != v37)
          {
            objc_enumerationMutation(v31);
          }

          v39 = objc_msgSend_sqliteRepresentation(*(*(&v74 + 1) + 8 * i), v34, v35);
          objc_msgSend_addObject_(v30, v40, v39);
        }

        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v34, &v74, v80, 16);
      }

      while (v36);
    }

    v78[0] = @"CONTAINERID";
    v43 = objc_msgSend_containerID(containerCopy, v41, v42);
    v79[0] = v43;
    v78[1] = @"SCOPE";
    v45 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v44, scope);
    v79[1] = v45;
    v78[2] = @"DSID";
    v48 = objc_msgSend_account(containerCopy, v46, v47);
    v50 = objc_msgSend__dsidForAccount_(self, v49, v48);
    v79[2] = v50;
    v52 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v51, v79, v78, 3);

    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = sub_225160410;
    v66[3] = &unk_278546D68;
    v66[4] = self;
    v67 = v52;
    v68 = v30;
    keysCopy = v65;
    v69 = v65;
    v70 = containerCopy;
    scopeCopy = scope;
    v71 = v31;
    v53 = v63;
    v72 = v53;
    v54 = v30;
    v55 = v52;
    v57 = objc_msgSend_performInTransaction_(self, v56, v66);
    v58 = v72;
    v22 = v53;

    dsCopy = v64;
  }

  v59 = *MEMORY[0x277D85DE8];

  return v22;
}

- (unint64_t)numberOfRecordsWithID:(id)d container:(id)container
{
  v29[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  containerCopy = container;
  if ((*MEMORY[0x277CBC810] & 1) == 0)
  {
    v26 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v26, v27, a2, self, @"CKDRecordCache.m", 380, @"Only suitable for testing: %s:%d", "/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/Caches/Records/CKDRecordCache.m", 380);
  }

  v28[0] = @"RECORDID";
  v11 = objc_msgSend_sqliteRepresentation(dCopy, v8, v9);
  v29[0] = v11;
  v28[1] = @"CONTAINERID";
  v14 = objc_msgSend_containerID(containerCopy, v12, v13);
  v29[1] = v14;
  v28[2] = @"DSID";
  v17 = objc_msgSend_account(containerCopy, v15, v16);
  v19 = objc_msgSend__dsidForAccount_(self, v18, v17);
  v29[2] = v19;
  v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v20, v29, v28, 3);

  v23 = objc_msgSend_countOfEntriesMatching_label_error_predicate_(self, v22, v21, off_27D719EB0, 0, &unk_28385CAA0);
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

- (id)addRecord:(id)record container:(id)container knownUserKeys:(id)keys scope:(int64_t)scope
{
  v158[2] = *MEMORY[0x277D85DE8];
  recordCopy = record;
  containerCopy = container;
  keysCopy = keys;
  v16 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v14, v15);
  v19 = objc_msgSend_disableCaching(v16, v17, v18);

  if (v19)
  {
    v22 = 0;
  }

  else
  {
    if (!recordCopy)
    {
      v133 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v20, v21);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v133, v134, a2, self, @"CKDRecordCache.m", 397, @"Null record");
    }

    v23 = objc_msgSend_recordID(recordCopy, v20, v21);

    if (!v23)
    {
      v135 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v24, v25);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v135, v136, a2, self, @"CKDRecordCache.m", 398, @"Null recordID");
    }

    v26 = objc_msgSend_recordID(recordCopy, v24, v25);
    v29 = objc_msgSend_recordName(v26, v27, v28);

    if (!v29)
    {
      v137 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v30, v31);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v137, v138, a2, self, @"CKDRecordCache.m", 399, @"Null recordName");
    }

    v32 = objc_msgSend_recordID(recordCopy, v30, v31);
    v35 = objc_msgSend_zoneID(v32, v33, v34);

    if (!v35)
    {
      v139 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v36, v37);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v139, v140, a2, self, @"CKDRecordCache.m", 400, @"Null zoneID");
    }

    v38 = objc_msgSend_etag(recordCopy, v36, v37);

    if (!v38)
    {
      v141 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v39, v40);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v141, v142, a2, self, @"CKDRecordCache.m", 401, @"Null etag");
    }

    v150 = 0;
    v151 = &v150;
    v152 = 0x2020000000;
    v41 = objc_msgSend_valueStore(recordCopy, v39, v40);
    v158[0] = objc_opt_class();
    v158[1] = objc_opt_class();
    v43 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v42, v158, 2);
    v45 = objc_msgSend_containsValueOfClasses_passingTest_(v41, v44, v43, &unk_28385CAC0);

    v153 = v45;
    v149[0] = MEMORY[0x277D85DD0];
    v149[1] = 3221225472;
    v149[2] = sub_2251613A4;
    v149[3] = &unk_278546DB0;
    v149[4] = &v150;
    objc_msgSend_enumerateObjectsUsingBlock_(keysCopy, v46, v149);
    if (v151[3])
    {
      v22 = 0;
    }

    else
    {
      v145 = objc_msgSend_serializeProtectionData(recordCopy, v47, v48);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v143 = objc_msgSend_serializePersonalInfo(recordCopy, v49, v50);
        objc_msgSend_setSerializePersonalInfo_(recordCopy, v51, 1);
      }

      else
      {
        v143 = 0;
      }

      objc_msgSend_setSerializeProtectionData_(recordCopy, v49, 1);
      if (!keysCopy)
      {
        v54 = MEMORY[0x277CBEB98];
        v55 = objc_msgSend_null(MEMORY[0x277CBEB68], v52, v53);
        keysCopy = objc_msgSend_setWithObject_(v54, v56, v55);
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v57 = *MEMORY[0x277CBC868];
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        v129 = objc_msgSend_recordID(recordCopy, v58, v59);
        v132 = objc_msgSend_etag(recordCopy, v130, v131);
        *buf = 138412546;
        v155 = v129;
        v156 = 2114;
        v157 = v132;
        _os_log_debug_impl(&dword_22506F000, v57, OS_LOG_TYPE_DEBUG, "Adding recordID %@ with etag %{public}@ to cache", buf, 0x16u);
      }

      v60 = [CKDProtocolTranslator alloc];
      v144 = objc_msgSend_initWithContainer_databaseScope_requireContainerScopedUserID_(v60, v61, containerCopy, scope, 0);
      v63 = objc_msgSend_pRecordFromRecord_forCache_(v144, v62, recordCopy, 1);
      v66 = objc_msgSend_dataRepresentation(v63, v64, v65);

      v67 = objc_alloc_init(CKDRecordCacheEntry);
      v70 = objc_msgSend_recordID(recordCopy, v68, v69);
      v73 = objc_msgSend_sqliteRepresentation(v70, v71, v72);
      objc_msgSend_setRecordID_(v67, v74, v73);

      v77 = objc_msgSend_zoneID(v70, v75, v76);
      v80 = objc_msgSend_sqliteRepresentation(v77, v78, v79);
      objc_msgSend_setZoneIdentifier_(v67, v81, v80);

      v84 = objc_msgSend_containerID(containerCopy, v82, v83);
      objc_msgSend_setContainerID_(v67, v85, v84);

      v87 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v86, scope);
      objc_msgSend_setDatabaseScope_(v67, v88, v87);

      v91 = objc_msgSend_etag(recordCopy, v89, v90);
      objc_msgSend_setEtag_(v67, v92, v91);

      v93 = objc_alloc(MEMORY[0x277CBEAA8]);
      objc_msgSend_cacheExpirationTime(self, v94, v95);
      v98 = objc_msgSend_initWithTimeIntervalSinceNow_(v93, v96, v97);
      objc_msgSend_setExpirationDate_(v67, v99, v98);

      objc_msgSend_setRecordData_(v67, v100, v66);
      objc_msgSend_setKnownUserKeys_(v67, v101, keysCopy);
      v104 = objc_msgSend_account(containerCopy, v102, v103);
      v106 = objc_msgSend__dsidForAccount_(self, v105, v104);
      objc_msgSend_setDsid_(v67, v107, v106);

      v110 = objc_msgSend_length(v66, v108, v109);
      v112 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v111, v110);
      objc_msgSend_setSize_(v67, v113, v112);

      v116 = objc_msgSend_modificationDate(recordCopy, v114, v115);
      v119 = v116;
      if (v116)
      {
        v120 = v116;
      }

      else
      {
        v120 = objc_msgSend_distantPast(MEMORY[0x277CBEAA8], v117, v118);
      }

      v121 = v120;

      v146[0] = MEMORY[0x277D85DD0];
      v146[1] = 3221225472;
      v146[2] = sub_2251613E8;
      v146[3] = &unk_278546800;
      v146[4] = self;
      v122 = v67;
      v147 = v122;
      v123 = v121;
      v148 = v123;
      v22 = objc_msgSend_performTransaction_(self, v124, v146);
      objc_msgSend_setSerializeProtectionData_(recordCopy, v125, v145);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_setSerializePersonalInfo_(recordCopy, v126, v143);
      }
    }

    _Block_object_dispose(&v150, 8);
  }

  v127 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)etagForRecordID:(id)d container:(id)container requiredKeys:(id)keys scope:(int64_t)scope
{
  v64[4] = *MEMORY[0x277D85DE8];
  dCopy = d;
  containerCopy = container;
  keysCopy = keys;
  v16 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v14, v15);
  v19 = objc_msgSend_disableCaching(v16, v17, v18);

  if (v19)
  {
    v22 = 0;
  }

  else
  {
    if (!dCopy)
    {
      v47 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v20, v21);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v47, v48, a2, self, @"CKDRecordCache.m", 489, @"Expected a recordID");
    }

    v23 = objc_msgSend_recordName(dCopy, v20, v21);

    if (!v23)
    {
      v49 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v24, v25);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v49, v50, a2, self, @"CKDRecordCache.m", 490, @"Expected a recordName");
    }

    v26 = objc_msgSend_zoneID(dCopy, v24, v25);

    if (!v26)
    {
      v51 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v27, v28);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v51, v52, a2, self, @"CKDRecordCache.m", 491, @"Expected a zoneID");
    }

    v57 = 0;
    v58 = &v57;
    v59 = 0x3032000000;
    v60 = sub_225073F40;
    v61 = sub_22507352C;
    v62 = 0;
    v63[0] = @"RECORDID";
    v29 = objc_msgSend_sqliteRepresentation(dCopy, v27, v28);
    v64[0] = v29;
    v63[1] = @"CONTAINERID";
    v32 = objc_msgSend_containerID(containerCopy, v30, v31);
    v64[1] = v32;
    v63[2] = @"SCOPE";
    v34 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v33, scope);
    v64[2] = v34;
    v63[3] = @"DSID";
    v37 = objc_msgSend_account(containerCopy, v35, v36);
    v39 = objc_msgSend__dsidForAccount_(self, v38, v37);
    v64[3] = v39;
    v41 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v40, v64, v63, 4);

    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = sub_22516187C;
    v53[3] = &unk_278546DD8;
    v53[4] = self;
    v42 = v41;
    v54 = v42;
    v55 = keysCopy;
    v56 = &v57;
    v44 = objc_msgSend_performInTransaction_(self, v43, v53);
    v22 = v58[5];

    _Block_object_dispose(&v57, 8);
  }

  v45 = *MEMORY[0x277D85DE8];

  return v22;
}

- (void)deleteRecordWithID:(id)d container:(id)container scope:(int64_t)scope
{
  v37[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v11 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v9, v10);
  v14 = objc_msgSend_disableCaching(v11, v12, v13);

  if ((v14 & 1) == 0)
  {
    if (!dCopy)
    {
      v30 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v15, v16);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v30, v31, a2, self, @"CKDRecordCache.m", 525, @"Expected a objectID");
    }

    v17 = objc_msgSend_recordName(dCopy, v15, v16);

    if (!v17)
    {
      v32 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v18, v19);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v32, v33, a2, self, @"CKDRecordCache.m", 526, @"Expected a recordName");
    }

    v20 = objc_msgSend_zoneID(dCopy, v18, v19);

    if (!v20)
    {
      v34 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v21, v22);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v34, v35, a2, self, @"CKDRecordCache.m", 527, @"Expected a zoneID");
    }

    v36[0] = @"RECORDID";
    v23 = objc_msgSend_sqliteRepresentation(dCopy, v21, v22);
    v36[1] = @"SCOPE";
    v37[0] = v23;
    v25 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v24, scope);
    v37[1] = v25;
    v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, v37, v36, 2);

    objc_msgSend_deleteEntriesMatching_label_error_predicate_(self, v28, v27, off_27D719EF8, 0, &unk_28385CB00);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)clearAllRecords:(id)records
{
  v4 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], a2, records);
  v7 = objc_msgSend_disableCaching(v4, v5, v6);

  if ((v7 & 1) == 0)
  {

    objc_msgSend_deleteAllEntries_(self, v8, 0);
  }
}

- (void)clearAllRecordsInScope:(int64_t)scope container:(id)container
{
  v24[1] = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], a2, scope, container);
  v10 = objc_msgSend_disableCaching(v7, v8, v9);

  if ((v10 & 1) == 0)
  {
    v13 = objc_msgSend_db(self, v11, v12);

    if (!v13)
    {
      v21 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v14, v15);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v21, v22, a2, self, @"CKDRecordCache.m", 548, @"Expected non-nil db for %@", self);
    }

    v23 = @"SCOPE";
    v16 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v14, scope);
    v24[0] = v16;
    v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v24, &v23, 1);

    objc_msgSend_deleteEntriesMatching_label_error_predicate_(self, v19, v18, off_27D719F10, 0, &unk_28385CB20);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)clearAllRecordsForContainer:(id)container zoneWithID:(id)d
{
  v20[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v8 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v6, v7);
  v11 = objc_msgSend_disableCaching(v8, v9, v10);

  if (dCopy && (v11 & 1) == 0)
  {
    v19 = @"ZONEID";
    v14 = objc_msgSend_sqliteRepresentation(dCopy, v12, v13);
    v20[0] = v14;
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v20, &v19, 1);

    objc_msgSend_deleteEntriesMatching_label_error_predicate_(self, v17, v16, off_27D719F28, 0, &unk_28385CB40);
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end