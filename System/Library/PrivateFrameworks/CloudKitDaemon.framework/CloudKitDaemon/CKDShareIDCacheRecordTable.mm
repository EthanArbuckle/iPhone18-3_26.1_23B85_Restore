@interface CKDShareIDCacheRecordTable
+ (id)dbProperties;
- (BOOL)addOrUpdateRecordID:(id)d withParentID:(id)iD error:(id *)error;
- (BOOL)addShareID:(id)d forRootRecordID:(id)iD error:(id *)error;
- (BOOL)propagateShareRowID:(id)d toChildrenOfRowID:(id)iD error:(id *)error;
- (BOOL)removeRecordID:(id)d error:(id *)error;
- (BOOL)removeRecordsWithShareRowID:(id)d error:(id *)error;
- (CKDShareIDCacheRecordTable)initWithShareIDTable:(id)table;
- (id)shareIDForRecordID:(id)d error:(id *)error;
- (id)shareIDsForZoneID:(id)d error:(id *)error;
- (unint64_t)removeRecordsWithZoneRowID:(id)d error:(id *)error;
- (unint64_t)removeZoneID:(id)d error:(id *)error;
@end

@implementation CKDShareIDCacheRecordTable

+ (id)dbProperties
{
  v6[5] = *MEMORY[0x277D85DE8];
  v5[0] = @"rowID";
  v5[1] = @"zoneRowID";
  v6[0] = &unk_2838C82B0;
  v6[1] = &unk_2838C82E0;
  v5[2] = @"recordName";
  v5[3] = @"shareRowID";
  v6[2] = &unk_2838C82F8;
  v6[3] = &unk_2838C8328;
  v5[4] = @"parentRowID";
  v6[4] = &unk_2838C8328;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v6, v5, 5);
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (CKDShareIDCacheRecordTable)initWithShareIDTable:(id)table
{
  tableCopy = table;
  v8 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v6, v7);
  v11 = objc_msgSend_deviceCapabilityShareIDSQLCacheCountLimit(v8, v9, v10);
  v14 = objc_msgSend_deviceCapabilityShareIDSQLCacheExpiryTime(v8, v12, v13);
  objc_msgSend_deviceCapabilityShareIDSQLCacheExpireDelay(v8, v15, v16);
  v21.receiver = self;
  v21.super_class = CKDShareIDCacheRecordTable;
  v18 = [(CKSQLiteCacheTable *)&v21 initWithLogicalTableName:@"ShareIDCacheRecordTable" entryCountLimit:v11 dataSizeLimit:0 expirationTime:v14 expireDelay:v17];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_shareIDTable, table);
  }

  return v19;
}

- (id)shareIDForRecordID:(id)d error:(id *)error
{
  v24 = 0;
  v6 = objc_msgSend_entryForRecordID_addIfNotFound_error_(self, a2, d, 0, &v24);
  v7 = v24;
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v6 == 0;
  }

  if (v10)
  {
    v11 = v7;
    goto LABEL_12;
  }

  v11 = objc_msgSend_shareRowID(v6, v8, v9);

  if (!v11)
  {
LABEL_12:
    v20 = 0;
    if (!error)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v14 = objc_msgSend_shareIDTable(self, v12, v13);
  v17 = objc_msgSend_shareRowID(v6, v15, v16);
  v23 = 0;
  v19 = objc_msgSend_shareIDForRowID_error_(v14, v18, v17, &v23);
  v11 = v23;

  v20 = 0;
  if (!v11)
  {
    v20 = v19;
  }

  if (error)
  {
LABEL_13:
    v21 = v11;
    *error = v11;
  }

LABEL_14:

  return v20;
}

- (id)shareIDsForZoneID:(id)d error:(id *)error
{
  dCopy = d;
  v9 = objc_msgSend_shareIDTable(self, v7, v8);
  v12 = objc_msgSend_zoneIDTable(v9, v10, v11);
  v25 = 0;
  v14 = objc_msgSend_rowIDForZoneID_addIfNotFound_error_(v12, v13, dCopy, 0, &v25);
  v15 = v25;

  v18 = 0;
  if (!v15 && v14)
  {
    v19 = objc_msgSend_shareIDTable(self, v16, v17);
    v24 = 0;
    v21 = objc_msgSend_shareIDsForZoneRowID_zoneID_error_(v19, v20, v14, dCopy, &v24);
    v15 = v24;

    v18 = 0;
    if (!v15)
    {
      v18 = v21;
    }
  }

  if (error)
  {
    v22 = v15;
    *error = v15;
  }

  return v18;
}

- (BOOL)addOrUpdateRecordID:(id)d withParentID:(id)iD error:(id *)error
{
  dCopy = d;
  v52 = 0;
  v10 = objc_msgSend_entryForRecordID_addIfNotFound_error_(self, v9, iD, 1, &v52);
  v12 = v52;
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = v10 == 0;
  }

  if (!v13)
  {
    v51 = 0;
    v14 = objc_msgSend_entryForRecordID_addIfNotFound_error_(self, v11, dCopy, 0, &v51);
    v15 = v51;
    if (v15)
    {
      v12 = v15;
    }

    else
    {
      if (!v14)
      {
        v18 = [CKDShareIDCacheRecordEntry alloc];
        v21 = objc_msgSend_zoneRowID(v10, v19, v20);
        v24 = objc_msgSend_recordName(dCopy, v22, v23);
        v14 = objc_msgSend_initWithZoneRowID_recordName_(v18, v25, v21, v24);
      }

      v26 = objc_msgSend_rowID(v10, v16, v17);
      objc_msgSend_setParentRowID_(v14, v27, v26);

      v30 = objc_msgSend_shareRowID(v14, v28, v29);
      v33 = objc_msgSend_shareRowID(v10, v31, v32);
      isEqual = objc_msgSend_isEqual_(v30, v34, v33);

      v38 = objc_msgSend_shareRowID(v10, v36, v37);
      objc_msgSend_setShareRowID_(v14, v39, v38);

      v12 = objc_msgSend_insertObject_orUpdateProperties_label_(self, v40, v14, 0, off_27D719DC0);
      if (!v12 && (isEqual & 1) == 0)
      {
        v43 = objc_msgSend_shareRowID(v14, v41, v42);
        v46 = objc_msgSend_rowID(v14, v44, v45);
        v50 = 0;
        objc_msgSend_propagateShareRowID_toChildrenOfRowID_error_(self, v47, v43, v46, &v50);
        v12 = v50;
      }
    }
  }

  if (error)
  {
    v48 = v12;
    *error = v12;
  }

  return v12 == 0;
}

- (BOOL)propagateShareRowID:(id)d toChildrenOfRowID:(id)iD error:(id *)error
{
  v40[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v39 = @"parentRowID";
  v40[0] = iDCopy;
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v40, &v39, 1);
  v12 = objc_msgSend_entriesWithValues_label_setupBlock_(self, v11, v10, off_280D53290, &unk_28385C920);

  context = objc_autoreleasePoolPush();
  v15 = objc_msgSend_nextObject(v12, v13, v14);
  if (v15)
  {
    v18 = v15;
    do
    {
      v19 = objc_msgSend_shareRowID(v18, v16, v17);
      isEqual = objc_msgSend_isEqual_(v19, v20, dCopy);

      if (isEqual)
      {
        v24 = 0;
      }

      else
      {
        objc_msgSend_setShareRowID_(v18, v22, dCopy);
        v38 = @"shareRowID";
        v26 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v25, &v38, 1);
        v24 = objc_msgSend_updateProperties_usingObject_label_(self, v27, v26, v18, off_280D532A8);

        if (!v24)
        {
          v28 = objc_msgSend_rowID(v18, v22, v23);
          v37 = 0;
          objc_msgSend_propagateShareRowID_toChildrenOfRowID_error_(self, v29, dCopy, v28, &v37);
          v24 = v37;
        }
      }

      v30 = objc_msgSend_nextObject(v12, v22, v23);

      if (v24)
      {
        break;
      }

      v18 = v30;
    }

    while (v30);
  }

  else
  {
    v30 = 0;
    v24 = 0;
  }

  v31 = objc_msgSend_error(v12, v16, v17);

  objc_autoreleasePoolPop(context);
  if (error)
  {
    v32 = v31;
    *error = v31;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v31 == 0;
}

- (BOOL)removeRecordsWithShareRowID:(id)d error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v19 = @"shareRowID";
  v20[0] = dCopy;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v7, v20, &v19, 1);
  v16 = 0;
  v10 = objc_msgSend_deleteEntriesMatching_label_error_predicate_(self, v9, v8, off_27D719DD8, &v16, &unk_28385C940);
  v11 = v16;

  if (v10)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v18 = v10;
      _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Deleted %zu records for the share from the shareID records cache.", buf, 0xCu);
      if (!error)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  if (error)
  {
LABEL_6:
    v13 = v11;
    *error = v11;
  }

LABEL_7:

  v14 = *MEMORY[0x277D85DE8];
  return v11 == 0;
}

- (BOOL)removeRecordID:(id)d error:(id *)error
{
  v12 = 0;
  v6 = objc_msgSend_entryForRecordID_addIfNotFound_error_(self, a2, d, 0, &v12);
  v8 = v12;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6 == 0;
  }

  if (!v9)
  {
    v8 = objc_msgSend_deleteObject_(self, v7, v6);
  }

  if (error)
  {
    v10 = v8;
    *error = v8;
  }

  return v8 == 0;
}

- (unint64_t)removeZoneID:(id)d error:(id *)error
{
  dCopy = d;
  v9 = objc_msgSend_shareIDTable(self, v7, v8);
  v12 = objc_msgSend_zoneIDTable(v9, v10, v11);
  v21 = 0;
  v14 = objc_msgSend_rowIDForZoneID_addIfNotFound_error_(v12, v13, dCopy, 0, &v21);

  v15 = v21;
  v17 = 0;
  if (!v15 && v14)
  {
    v20 = 0;
    v17 = objc_msgSend_removeRecordsWithZoneRowID_error_(self, v16, v14, &v20);
    v15 = v20;
  }

  if (error)
  {
    v18 = v15;
    *error = v15;
  }

  return v17;
}

- (unint64_t)removeRecordsWithZoneRowID:(id)d error:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  v17 = @"zoneRowID";
  v18[0] = d;
  v6 = MEMORY[0x277CBEAC0];
  dCopy = d;
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v6, v8, v18, &v17, 1);
  v16 = 0;
  v11 = objc_msgSend_deleteEntriesMatching_label_error_predicate_(self, v10, v9, off_27D719DF0, &v16, &unk_28385C960);
  v12 = v16;

  if (error)
  {
    v13 = v12;
    *error = v12;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)addShareID:(id)d forRootRecordID:(id)iD error:(id *)error
{
  iDCopy = iD;
  dCopy = d;
  v12 = objc_msgSend_shareIDTable(self, v10, v11);
  v45 = 0;
  v14 = objc_msgSend_entryForShareID_addIfNotFound_error_(v12, v13, dCopy, 1, &v45);

  v15 = v45;
  if (!v15 && v14)
  {
    v44 = 0;
    v17 = objc_msgSend_entryForRecordID_addIfNotFound_error_(self, v16, iDCopy, 0, &v44);
    v18 = v44;
    if (v18)
    {
      v15 = v18;
    }

    else
    {
      if (!v17)
      {
        v21 = [CKDShareIDCacheRecordEntry alloc];
        v24 = objc_msgSend_zoneRowID(v14, v22, v23);
        v27 = objc_msgSend_recordName(iDCopy, v25, v26);
        v17 = objc_msgSend_initWithZoneRowID_recordName_(v21, v28, v24, v27);
      }

      v29 = objc_msgSend_rowID(v14, v19, v20);
      v32 = objc_msgSend_shareRowID(v17, v30, v31);
      isEqual = objc_msgSend_isEqual_(v29, v33, v32);

      if (isEqual)
      {
        v15 = 0;
      }

      else
      {
        objc_msgSend_setShareRowID_(v17, v35, v29);
        v15 = objc_msgSend_insertObject_orUpdateProperties_label_(self, v36, v17, 0, off_27D719E08);
        if (!v15)
        {
          v39 = objc_msgSend_rowID(v17, v37, v38);
          v43 = 0;
          objc_msgSend_propagateShareRowID_toChildrenOfRowID_error_(self, v40, v29, v39, &v43);
          v15 = v43;
        }
      }
    }
  }

  if (error)
  {
    v41 = v15;
    *error = v15;
  }

  return v15 == 0;
}

@end