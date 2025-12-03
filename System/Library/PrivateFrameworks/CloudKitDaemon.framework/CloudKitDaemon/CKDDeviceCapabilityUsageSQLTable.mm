@interface CKDDeviceCapabilityUsageSQLTable
+ (id)dbProperties;
- (BOOL)_deleteUsageForIDString:(id)string itemType:(unint64_t)type withError:(id *)error;
- (BOOL)_setUsage:(id)usage forIDString:(id)string forItemType:(unint64_t)type withError:(id *)error;
- (BOOL)deleteRecordWithUnknownShareUsageForRecordID:(id)d withError:(id *)error;
- (BOOL)deleteShareUsageForShareID:(id)d withError:(id *)error;
- (BOOL)deleteZoneUsageForZoneID:(id)d withError:(id *)error;
- (BOOL)setRecordWithUnknownShareUsage:(id)usage forRecordID:(id)d withError:(id *)error;
- (BOOL)setShareUsage:(id)usage forShareID:(id)d withError:(id *)error;
- (BOOL)setZoneUsage:(id)usage forZoneID:(id)d withError:(id *)error;
- (CKDDeviceCapabilityUsageSQLTable)initWithContainerID:(id)d;
- (id)_usageEntriesForContainerID:(id)d itemType:(unint64_t)type maxCount:(unint64_t)count withError:(id *)error;
- (id)_usageForIDString:(id)string itemType:(unint64_t)type withError:(id *)error;
- (id)recordWithUnknownShareUsageForRecordID:(id)d withError:(id *)error;
- (id)recordWithUnknownShareUsagesForContainerID:(id)d maxCount:(unint64_t)count withError:(id *)error;
- (id)shareUsageForShareID:(id)d withError:(id *)error;
- (id)shareUsagesForContainerID:(id)d maxCount:(unint64_t)count withError:(id *)error;
- (id)zoneUsageForZoneID:(id)d withError:(id *)error;
- (id)zoneUsagesForContainerID:(id)d maxCount:(unint64_t)count withError:(id *)error;
@end

@implementation CKDDeviceCapabilityUsageSQLTable

+ (id)dbProperties
{
  v6[7] = *MEMORY[0x277D85DE8];
  v5[0] = @"rowID";
  v5[1] = @"IDString";
  v6[0] = &unk_2838C8238;
  v6[1] = &unk_2838C8250;
  v5[2] = @"itemType";
  v5[3] = @"lastUsed";
  v6[2] = &unk_2838C8268;
  v6[3] = &unk_2838C8280;
  v5[4] = @"lastSent";
  v5[5] = @"sending";
  v6[4] = &unk_2838C8280;
  v6[5] = &unk_2838C8280;
  v5[6] = @"failureCount";
  v6[6] = &unk_2838C8298;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v6, v5, 7);
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (CKDDeviceCapabilityUsageSQLTable)initWithContainerID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = CKDDeviceCapabilityUsageSQLTable;
  v6 = [(CKSQLiteCacheTable *)&v9 initWithLogicalTableName:@"UsageTable" entryCountLimit:100000 dataSizeLimit:0 expirationTime:0.0 expireDelay:86400.0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_containerID, d);
  }

  return v7;
}

- (id)zoneUsageForZoneID:(id)d withError:(id *)error
{
  dCopy = d;
  if (!dCopy)
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CKDDeviceCapabilityUsageSQLTable.m", 114, @"zoneID must not be nil");
  }

  v10 = objc_msgSend_sqliteRepresentation(dCopy, v7, v8);
  v12 = objc_msgSend__usageForIDString_itemType_withError_(self, v11, v10, 1, error);

  return v12;
}

- (id)shareUsageForShareID:(id)d withError:(id *)error
{
  dCopy = d;
  if (!dCopy)
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CKDDeviceCapabilityUsageSQLTable.m", 120, @"shareID must not be nil");
  }

  v10 = objc_msgSend_sqliteRepresentation(dCopy, v7, v8);
  v12 = objc_msgSend__usageForIDString_itemType_withError_(self, v11, v10, 2, error);

  return v12;
}

- (id)recordWithUnknownShareUsageForRecordID:(id)d withError:(id *)error
{
  dCopy = d;
  if (!dCopy)
  {
    v20 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v20, v21, a2, self, @"CKDDeviceCapabilityUsageSQLTable.m", 126, @"recordID must not be nil");
  }

  v10 = objc_msgSend_sqliteRepresentation(dCopy, v7, v8);
  v22 = 0;
  v12 = objc_msgSend__usageForIDString_itemType_withError_(self, v11, v10, 3, &v22);
  v13 = v22;

  if (v13)
  {
    if (error)
    {
      v16 = v13;
      v17 = 0;
      *error = v13;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    if (v12)
    {
      v18 = v12;
    }

    else
    {
      v18 = objc_msgSend_none(CKUsageInfo, v14, v15);
    }

    v17 = v18;
  }

  return v17;
}

- (id)_usageForIDString:(id)string itemType:(unint64_t)type withError:(id *)error
{
  v43[2] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (!stringCopy)
  {
    v27 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v27, v28, a2, self, @"CKDDeviceCapabilityUsageSQLTable.m", 140, @"IDString must not be nil");
  }

  v42[0] = @"IDString";
  v42[1] = @"itemType";
  v43[0] = stringCopy;
  v12 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v9, type);
  v43[1] = v12;
  v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v43, v42, 2);

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_225073F00;
  v36 = sub_22507350C;
  v37 = 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_22514B698;
  v29[3] = &unk_278545CE0;
  v29[4] = self;
  v15 = v14;
  v30 = v15;
  v31 = &v32;
  v19 = objc_msgSend_performTransaction_(self, v16, v29);
  if (!v19)
  {
    v23 = v33[5];
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = objc_msgSend_none(CKUsageInfo, v17, v18);
    }

    v22 = v24;
    goto LABEL_15;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v20 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v39 = stringCopy;
    v40 = 2112;
    v41 = v19;
    _os_log_error_impl(&dword_22506F000, v20, OS_LOG_TYPE_ERROR, "Failed to fetch usage for IDString %@: %@", buf, 0x16u);
    if (error)
    {
      goto LABEL_8;
    }
  }

  else if (error)
  {
LABEL_8:
    v21 = v19;
    v22 = 0;
    *error = v19;
    goto LABEL_15;
  }

  v22 = 0;
LABEL_15:

  _Block_object_dispose(&v32, 8);
  v25 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)zoneUsagesForContainerID:(id)d maxCount:(unint64_t)count withError:(id *)error
{
  v88 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy)
  {
    v63 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v63, v64, a2, self, @"CKDDeviceCapabilityUsageSQLTable.m", 170, @"containerID must not be nil");
  }

  v68 = objc_opt_new();
  v79 = 0;
  v13 = objc_msgSend__usageEntriesForContainerID_itemType_maxCount_withError_(self, v12, dCopy, 1, count, &v79);
  v14 = v79;
  v17 = v14;
  if (v14)
  {
    if (error)
    {
      v18 = v14;
      v19 = 0;
      *error = v17;
    }

    else
    {
      v19 = 0;
    }
  }

  else if (v13 && objc_msgSend_count(v13, v15, v16))
  {
    v65 = 0;
    selfCopy = self;
    v67 = dCopy;
    v20 = objc_opt_new();
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v66 = v13;
    obj = v13;
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v75, v87, 16);
    if (v22)
    {
      v23 = v22;
      v24 = *v76;
      do
      {
        v25 = 0;
        do
        {
          if (*v76 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v75 + 1) + 8 * v25);
          v27 = [CKUsageInfo alloc];
          v29 = objc_msgSend_initWithUsageInfoEntry_(v27, v28, v26);
          v30 = objc_alloc(MEMORY[0x277CBC5F8]);
          v33 = objc_msgSend_IDString(v26, v31, v32);
          v35 = objc_msgSend_initWithSqliteRepresentation_(v30, v34, v33);

          if (v29)
          {
            v38 = v35 == 0;
          }

          else
          {
            v38 = 1;
          }

          if (v38 || (objc_msgSend_itemType(v26, v36, v37), v39 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend_unsignedIntegerValue(v39, v40, v41), v39, v42 != 1))
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v44 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v81 = v67;
              _os_log_error_impl(&dword_22506F000, v44, OS_LOG_TYPE_ERROR, "Fetched device capability usage entry cannot be converted CKUsageInfo for containerID %@", buf, 0xCu);
            }

            objc_msgSend_addObject_(v20, v45, v26, v65);
          }

          else
          {
            objc_msgSend_setObject_forKeyedSubscript_(v68, v43, v29, v35);
          }

          ++v25;
        }

        while (v23 != v25);
        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v46, &v75, v87, 16);
      }

      while (v23);
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v47 = v20;
    v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v71, v86, 16);
    if (v49)
    {
      v51 = v49;
      v52 = *v72;
      do
      {
        v53 = 0;
        do
        {
          if (*v72 != v52)
          {
            objc_enumerationMutation(v47);
          }

          v54 = *(*(&v71 + 1) + 8 * v53);
          v55 = objc_msgSend_deleteObject_(selfCopy, v50, v54, v65);
          if (v55)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v56 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
            {
              v57 = v56;
              v60 = objc_msgSend_IDString(v54, v58, v59);
              *buf = 138412802;
              v81 = v60;
              v82 = 2112;
              v83 = @"ZoneUsage";
              v84 = 2112;
              v85 = v55;
              _os_log_error_impl(&dword_22506F000, v57, OS_LOG_TYPE_ERROR, "Failed to delete usage entry with IDString %@ and itemType %@: %@", buf, 0x20u);
            }
          }

          ++v53;
        }

        while (v51 != v53);
        v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v50, &v71, v86, 16);
      }

      while (v51);
    }

    v19 = v68;
    dCopy = v67;
    v17 = v65;
    v13 = v66;
  }

  else
  {
    v19 = MEMORY[0x277CBEC10];
  }

  v61 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)shareUsagesForContainerID:(id)d maxCount:(unint64_t)count withError:(id *)error
{
  v88 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy)
  {
    v63 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v63, v64, a2, self, @"CKDDeviceCapabilityUsageSQLTable.m", 219, @"containerID must not be nil");
  }

  v68 = objc_opt_new();
  v79 = 0;
  v13 = objc_msgSend__usageEntriesForContainerID_itemType_maxCount_withError_(self, v12, dCopy, 2, count, &v79);
  v14 = v79;
  v17 = v14;
  if (v14)
  {
    if (error)
    {
      v18 = v14;
      v19 = 0;
      *error = v17;
    }

    else
    {
      v19 = 0;
    }
  }

  else if (v13 && objc_msgSend_count(v13, v15, v16))
  {
    v65 = 0;
    selfCopy = self;
    v67 = dCopy;
    v20 = objc_opt_new();
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v66 = v13;
    obj = v13;
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v75, v87, 16);
    if (v22)
    {
      v23 = v22;
      v24 = *v76;
      do
      {
        v25 = 0;
        do
        {
          if (*v76 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v75 + 1) + 8 * v25);
          v27 = [CKUsageInfo alloc];
          v29 = objc_msgSend_initWithUsageInfoEntry_(v27, v28, v26);
          v30 = objc_alloc(MEMORY[0x277CBC5D0]);
          v33 = objc_msgSend_IDString(v26, v31, v32);
          v35 = objc_msgSend_initWithSqliteRepresentation_(v30, v34, v33);

          if (v29)
          {
            v38 = v35 == 0;
          }

          else
          {
            v38 = 1;
          }

          if (v38 || (objc_msgSend_itemType(v26, v36, v37), v39 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend_unsignedIntegerValue(v39, v40, v41), v39, v42 != 2))
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v44 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v81 = v67;
              _os_log_error_impl(&dword_22506F000, v44, OS_LOG_TYPE_ERROR, "Fetched device capability usage entry cannot be converted CKUsageInfo for containerID %@", buf, 0xCu);
            }

            objc_msgSend_addObject_(v20, v45, v26, v65);
          }

          else
          {
            objc_msgSend_setObject_forKeyedSubscript_(v68, v43, v29, v35);
          }

          ++v25;
        }

        while (v23 != v25);
        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v46, &v75, v87, 16);
      }

      while (v23);
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v47 = v20;
    v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v71, v86, 16);
    if (v49)
    {
      v51 = v49;
      v52 = *v72;
      do
      {
        v53 = 0;
        do
        {
          if (*v72 != v52)
          {
            objc_enumerationMutation(v47);
          }

          v54 = *(*(&v71 + 1) + 8 * v53);
          v55 = objc_msgSend_deleteObject_(selfCopy, v50, v54, v65);
          if (v55)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v56 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
            {
              v57 = v56;
              v60 = objc_msgSend_IDString(v54, v58, v59);
              *buf = 138412802;
              v81 = v60;
              v82 = 2112;
              v83 = @"ShareUsage";
              v84 = 2112;
              v85 = v55;
              _os_log_error_impl(&dword_22506F000, v57, OS_LOG_TYPE_ERROR, "Failed to delete usage entry with IDString %@ and itemType %@: %@", buf, 0x20u);
            }
          }

          ++v53;
        }

        while (v51 != v53);
        v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v50, &v71, v86, 16);
      }

      while (v51);
    }

    v19 = v68;
    dCopy = v67;
    v17 = v65;
    v13 = v66;
  }

  else
  {
    v19 = MEMORY[0x277CBEC10];
  }

  v61 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)recordWithUnknownShareUsagesForContainerID:(id)d maxCount:(unint64_t)count withError:(id *)error
{
  v88 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy)
  {
    v63 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v63, v64, a2, self, @"CKDDeviceCapabilityUsageSQLTable.m", 268, @"containerID must not be nil");
  }

  v68 = objc_opt_new();
  v79 = 0;
  v13 = objc_msgSend__usageEntriesForContainerID_itemType_maxCount_withError_(self, v12, dCopy, 3, count, &v79);
  v14 = v79;
  v17 = v14;
  if (v14)
  {
    if (error)
    {
      v18 = v14;
      v19 = 0;
      *error = v17;
    }

    else
    {
      v19 = 0;
    }
  }

  else if (v13 && objc_msgSend_count(v13, v15, v16))
  {
    v65 = 0;
    selfCopy = self;
    v67 = dCopy;
    v20 = objc_opt_new();
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v66 = v13;
    obj = v13;
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v75, v87, 16);
    if (v22)
    {
      v23 = v22;
      v24 = *v76;
      do
      {
        v25 = 0;
        do
        {
          if (*v76 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v75 + 1) + 8 * v25);
          v27 = [CKUsageInfo alloc];
          v29 = objc_msgSend_initWithUsageInfoEntry_(v27, v28, v26);
          v30 = objc_alloc(MEMORY[0x277CBC5D0]);
          v33 = objc_msgSend_IDString(v26, v31, v32);
          v35 = objc_msgSend_initWithSqliteRepresentation_(v30, v34, v33);

          if (v29)
          {
            v38 = v35 == 0;
          }

          else
          {
            v38 = 1;
          }

          if (v38 || (objc_msgSend_itemType(v26, v36, v37), v39 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend_unsignedIntegerValue(v39, v40, v41), v39, v42 != 3))
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v44 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v81 = v67;
              _os_log_error_impl(&dword_22506F000, v44, OS_LOG_TYPE_ERROR, "Fetched device capability usage entry cannot be converted CKUsageInfo for containerID %@", buf, 0xCu);
            }

            objc_msgSend_addObject_(v20, v45, v26, v65);
          }

          else
          {
            objc_msgSend_setObject_forKeyedSubscript_(v68, v43, v29, v35);
          }

          ++v25;
        }

        while (v23 != v25);
        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v46, &v75, v87, 16);
      }

      while (v23);
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v47 = v20;
    v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v71, v86, 16);
    if (v49)
    {
      v51 = v49;
      v52 = *v72;
      do
      {
        v53 = 0;
        do
        {
          if (*v72 != v52)
          {
            objc_enumerationMutation(v47);
          }

          v54 = *(*(&v71 + 1) + 8 * v53);
          v55 = objc_msgSend_deleteObject_(selfCopy, v50, v54, v65);
          if (v55)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v56 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
            {
              v57 = v56;
              v60 = objc_msgSend_IDString(v54, v58, v59);
              *buf = 138412802;
              v81 = v60;
              v82 = 2112;
              v83 = @"RecordWithUnknownShareUsage";
              v84 = 2112;
              v85 = v55;
              _os_log_error_impl(&dword_22506F000, v57, OS_LOG_TYPE_ERROR, "Failed to delete usage entry with IDString %@ and itemType %@: %@", buf, 0x20u);
            }
          }

          ++v53;
        }

        while (v51 != v53);
        v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v50, &v71, v86, 16);
      }

      while (v51);
    }

    v19 = v68;
    dCopy = v67;
    v17 = v65;
    v13 = v66;
  }

  else
  {
    v19 = MEMORY[0x277CBEC10];
  }

  v61 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_usageEntriesForContainerID:(id)d itemType:(unint64_t)type maxCount:(unint64_t)count withError:(id *)error
{
  v42[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy)
  {
    v25 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, a2, self, @"CKDDeviceCapabilityUsageSQLTable.m", 317, @"containerID must not be nil");
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_225073F00;
  v35 = sub_22507350C;
  v36 = 0;
  v41 = @"itemType";
  v14 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v11, type);
  v42[0] = v14;
  v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v42, &v41, 1);

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_22514C93C;
  v27[3] = &unk_278546870;
  v27[4] = self;
  v17 = v16;
  v28 = v17;
  v29 = &v31;
  countCopy = count;
  v19 = objc_msgSend_performInTransaction_(self, v18, v27);
  if (v19)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v20 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v38 = dCopy;
      v39 = 2112;
      v40 = v19;
      _os_log_error_impl(&dword_22506F000, v20, OS_LOG_TYPE_ERROR, "Failed to fetch usage for containerID %@: %@", buf, 0x16u);
      if (error)
      {
        goto LABEL_8;
      }
    }

    else if (error)
    {
LABEL_8:
      v21 = v19;
      v22 = 0;
      *error = v19;
      goto LABEL_12;
    }

    v22 = 0;
  }

  else
  {
    v22 = v32[5];
  }

LABEL_12:

  _Block_object_dispose(&v31, 8);
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (BOOL)setZoneUsage:(id)usage forZoneID:(id)d withError:(id *)error
{
  usageCopy = usage;
  dCopy = d;
  if (!dCopy)
  {
    v17 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v17, v18, a2, self, @"CKDDeviceCapabilityUsageSQLTable.m", 355, @"zoneID must not be nil");
  }

  v13 = objc_msgSend_sqliteRepresentation(dCopy, v10, v11);
  v15 = objc_msgSend__setUsage_forIDString_forItemType_withError_(self, v14, usageCopy, v13, 1, error);

  return v15;
}

- (BOOL)setShareUsage:(id)usage forShareID:(id)d withError:(id *)error
{
  usageCopy = usage;
  dCopy = d;
  if (!dCopy)
  {
    v17 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v17, v18, a2, self, @"CKDDeviceCapabilityUsageSQLTable.m", 361, @"shareID must not be nil");
  }

  v13 = objc_msgSend_sqliteRepresentation(dCopy, v10, v11);
  v15 = objc_msgSend__setUsage_forIDString_forItemType_withError_(self, v14, usageCopy, v13, 2, error);

  return v15;
}

- (BOOL)setRecordWithUnknownShareUsage:(id)usage forRecordID:(id)d withError:(id *)error
{
  usageCopy = usage;
  dCopy = d;
  if (!dCopy)
  {
    v17 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v17, v18, a2, self, @"CKDDeviceCapabilityUsageSQLTable.m", 367, @"recordID must not be nil");
  }

  v13 = objc_msgSend_sqliteRepresentation(dCopy, v10, v11);
  v15 = objc_msgSend__setUsage_forIDString_forItemType_withError_(self, v14, usageCopy, v13, 3, error);

  return v15;
}

- (BOOL)_setUsage:(id)usage forIDString:(id)string forItemType:(unint64_t)type withError:(id *)error
{
  v34[2] = *MEMORY[0x277D85DE8];
  usageCopy = usage;
  stringCopy = string;
  if (!stringCopy)
  {
    v26 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v12, v13);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v26, v27, a2, self, @"CKDDeviceCapabilityUsageSQLTable.m", 373, @"IDString must not be nil");
  }

  v33[0] = @"IDString";
  v33[1] = @"itemType";
  v34[0] = stringCopy;
  v15 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v12, type);
  v34[1] = v15;
  v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, v34, v33, 2);

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_22514CF4C;
  v28[3] = &unk_278545F38;
  v28[4] = self;
  v29 = v17;
  v31 = usageCopy;
  typeCopy = type;
  v30 = stringCopy;
  v18 = usageCopy;
  v19 = stringCopy;
  v20 = v17;
  v22 = objc_msgSend_performTransaction_(self, v21, v28);
  if (error && v22)
  {
    v22 = v22;
    *error = v22;
  }

  v23 = v22 == 0;

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)deleteZoneUsageForZoneID:(id)d withError:(id *)error
{
  dCopy = d;
  if (!dCopy)
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CKDDeviceCapabilityUsageSQLTable.m", 417, @"zoneID must not be nil");
  }

  v10 = objc_msgSend_sqliteRepresentation(dCopy, v7, v8);
  v12 = objc_msgSend__deleteUsageForIDString_itemType_withError_(self, v11, v10, 1, error);

  return v12;
}

- (BOOL)deleteShareUsageForShareID:(id)d withError:(id *)error
{
  dCopy = d;
  if (!dCopy)
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CKDDeviceCapabilityUsageSQLTable.m", 423, @"shareID must not be nil");
  }

  v10 = objc_msgSend_sqliteRepresentation(dCopy, v7, v8);
  v12 = objc_msgSend__deleteUsageForIDString_itemType_withError_(self, v11, v10, 2, error);

  return v12;
}

- (BOOL)deleteRecordWithUnknownShareUsageForRecordID:(id)d withError:(id *)error
{
  dCopy = d;
  if (!dCopy)
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CKDDeviceCapabilityUsageSQLTable.m", 429, @"recordID must not be nil");
  }

  v10 = objc_msgSend_sqliteRepresentation(dCopy, v7, v8);
  v12 = objc_msgSend__deleteUsageForIDString_itemType_withError_(self, v11, v10, 3, error);

  return v12;
}

- (BOOL)_deleteUsageForIDString:(id)string itemType:(unint64_t)type withError:(id *)error
{
  v35[2] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (!stringCopy)
  {
    v25 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, a2, self, @"CKDDeviceCapabilityUsageSQLTable.m", 435, @"IDString must not be nil");
  }

  v34[0] = @"IDString";
  v34[1] = @"itemType";
  v35[0] = stringCopy;
  v12 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v9, type);
  v35[1] = v12;
  v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v35, v34, 2);

  v27 = 0;
  objc_msgSend_deleteEntriesMatching_label_error_predicate_(self, v15, v14, off_27D719D18, &v27, &unk_28385C820);
  v16 = v27;
  if (v16)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v21 = v17;
      v24 = objc_msgSend_containerID(self, v22, v23);
      *buf = 138412802;
      v29 = stringCopy;
      v30 = 2112;
      v31 = v24;
      v32 = 2112;
      v33 = v16;
      _os_log_error_impl(&dword_22506F000, v21, OS_LOG_TYPE_ERROR, "Failed to delete usage entry for IDString %@ in DeviceCapabilityUsageSQLTable for containerID %@: %@", buf, 0x20u);

      if (!error)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (error)
    {
LABEL_8:
      v18 = v16;
      *error = v16;
    }
  }

LABEL_9:

  v19 = *MEMORY[0x277D85DE8];
  return v16 == 0;
}

@end