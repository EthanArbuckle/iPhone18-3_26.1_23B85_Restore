@interface CKDShareIDSQLCache
+ (id)_groupNameForContainer:(id)a3;
+ (id)shareIDSQLCacheForContainer:(id)a3 error:(id *)a4;
+ (id)shareIDSQLCacheForContainerID:(id)a3 dbPath:(id)a4 registryDatabase:(id)a5 groupName:(id)a6 error:(id *)a7;
+ (id)shareIDSQLCacheForTestingWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)removeShareWithShareEntry:(id)a3 error:(id *)a4;
- (id)shareIDForRecordID:(id)a3;
- (id)shareIDsForZoneID:(id)a3;
- (id)zoneShareIDForZoneID:(id)a3;
- (void)addHierarchicalShareID:(id)a3 forRootRecordID:(id)a4;
- (void)addOrUpdateRecordID:(id)a3 withParentID:(id)a4;
- (void)addZoneShareID:(id)a3;
- (void)createTables;
- (void)removeRecordID:(id)a3;
- (void)removeShareID:(id)a3;
- (void)removeZoneShareForZoneID:(id)a3;
- (void)removeZoneWithID:(id)a3;
@end

@implementation CKDShareIDSQLCache

- (void)createTables
{
  v30.receiver = self;
  v30.super_class = CKDShareIDSQLCache;
  [(CKSQLiteContainerAttributedTableGroup *)&v30 createTables];
  v3 = objc_alloc_init(CKDZoneIDCacheTable);
  zoneIDTable = self->_zoneIDTable;
  self->_zoneIDTable = v3;

  v5 = [CKDShareIDCacheTable alloc];
  v8 = objc_msgSend_zoneIDTable(self, v6, v7);
  v10 = objc_msgSend_initWithZoneIDTable_(v5, v9, v8);
  shareIDTable = self->_shareIDTable;
  self->_shareIDTable = v10;

  v12 = [CKDZoneShareCacheTable alloc];
  v15 = objc_msgSend_shareIDTable(self, v13, v14);
  v17 = objc_msgSend_initWithShareIDTable_(v12, v16, v15);
  zoneShareTable = self->_zoneShareTable;
  self->_zoneShareTable = v17;

  v19 = [CKDShareIDCacheRecordTable alloc];
  v22 = objc_msgSend_shareIDTable(self, v20, v21);
  v24 = objc_msgSend_initWithShareIDTable_(v19, v23, v22);
  recordTable = self->_recordTable;
  self->_recordTable = v24;

  objc_msgSend_addTable_(self, v26, self->_zoneIDTable);
  objc_msgSend_addTable_(self, v27, self->_shareIDTable);
  objc_msgSend_addTable_(self, v28, self->_zoneShareTable);
  objc_msgSend_addTable_(self, v29, self->_recordTable);
}

+ (id)shareIDSQLCacheForContainer:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9 = objc_msgSend_containerID(v6, v7, v8);
  v12 = objc_msgSend_directoryContext(v6, v10, v11);
  v15 = objc_msgSend_daemonDatabaseDirectory(v12, v13, v14);
  v18 = objc_msgSend_path(v15, v16, v17);

  v21 = objc_msgSend_deviceContext(v6, v19, v20);
  v24 = objc_msgSend_deviceScopedDatabase(v21, v22, v23);

  v25 = objc_opt_class();
  v27 = objc_msgSend__groupNameForContainer_(v25, v26, v6);

  v29 = objc_msgSend_shareIDSQLCacheForContainerID_dbPath_registryDatabase_groupName_error_(a1, v28, v9, v18, v24, v27, a4);

  return v29;
}

+ (id)shareIDSQLCacheForTestingWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CBC220];
  v7 = a3;
  v8 = [v6 alloc];
  v10 = objc_msgSend_initWithContainerIdentifier_environment_(v8, v9, v7, 2);
  v12 = objc_msgSend_groupNameWithDomain_domainIdentifier_groupName_(MEMORY[0x277CBC660], v11, 3, v7, @"DeviceCapabilityUsageSQLCache");

  v14 = objc_msgSend_shareIDSQLCacheForContainerID_dbPath_registryDatabase_groupName_error_(a1, v13, v10, 0, 0, v12, a4);

  return v14;
}

+ (id)shareIDSQLCacheForContainerID:(id)a3 dbPath:(id)a4 registryDatabase:(id)a5 groupName:(id)a6 error:(id *)a7
{
  v41 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (objc_msgSend_length(v13, v16, v17))
  {
    v36 = 0;
    v19 = &v36;
    v20 = objc_msgSend_databaseInDirectory_registryDatabase_options_error_(MEMORY[0x277CBC658], v18, v13, v14, 0, &v36);
  }

  else
  {
    v35 = 0;
    v19 = &v35;
    v20 = objc_msgSend_newInMemoryDatabase_(MEMORY[0x277CBC658], v18, &v35);
  }

  v21 = v20;
  v22 = *v19;
  v24 = v22;
  if (!v21 || v22)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v28 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v38 = v12;
      v39 = 2112;
      v40 = v24;
      _os_log_error_impl(&dword_22506F000, v28, OS_LOG_TYPE_ERROR, "Failed to create share ID Cache for containerID: %@, error: %@", buf, 0x16u);
      if (a7)
      {
        goto LABEL_13;
      }
    }

    else if (a7)
    {
LABEL_13:
      v29 = v24;
      v25 = 0;
LABEL_19:
      *a7 = v24;
      goto LABEL_22;
    }

    v25 = 0;
    goto LABEL_22;
  }

  v34 = 0;
  v25 = objc_msgSend_tableGroupInDatabase_withName_error_(a1, v23, v21, v15, &v34);
  v26 = v34;
  v24 = v26;
  if (v25 && !v26)
  {
    objc_msgSend_setContainerID_(v25, v27, v12);
    goto LABEL_22;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v30 = *MEMORY[0x277CBC830];
  if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    if (!a7)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  *buf = 138412546;
  v38 = v12;
  v39 = 2112;
  v40 = v24;
  _os_log_error_impl(&dword_22506F000, v30, OS_LOG_TYPE_ERROR, "Failed to create share ID Cache for containerID: %@, error: %@", buf, 0x16u);
  if (a7)
  {
LABEL_18:
    v31 = v24;
    goto LABEL_19;
  }

LABEL_22:

  v32 = *MEMORY[0x277D85DE8];

  return v25;
}

- (BOOL)removeShareWithShareEntry:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9 = objc_msgSend_zoneShareTable(self, v7, v8);
  v12 = objc_msgSend_zoneRowID(v6, v10, v11);
  v33 = 0;
  objc_msgSend_removeRowID_error_(v9, v13, v12, &v33);
  v14 = v33;

  if (!v14)
  {
    v17 = objc_msgSend_recordTable(self, v15, v16);
    v20 = objc_msgSend_rowID(v6, v18, v19);
    v32 = 0;
    objc_msgSend_removeRecordsWithShareRowID_error_(v17, v21, v20, &v32);
    v14 = v32;

    if (!v14)
    {
      v24 = objc_msgSend_shareIDTable(self, v22, v23);
      v27 = objc_msgSend_rowID(v6, v25, v26);
      v31 = 0;
      objc_msgSend_removeRowID_error_(v24, v28, v27, &v31);
      v14 = v31;
    }
  }

  if (a4)
  {
    v29 = v14;
    *a4 = v14;
  }

  return v14 == 0;
}

+ (id)_groupNameForContainer:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = sub_225081F2C(a3);
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"%@", v4);

  v8 = objc_msgSend_groupNameWithDomain_domainIdentifier_groupName_(MEMORY[0x277CBC660], v7, 3, v6, @"ShareIDSQLTableGroup");

  return v8;
}

- (id)shareIDForRecordID:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_225073F10;
  v19 = sub_225073514;
  v20 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_225151F04;
  v12[3] = &unk_278545CE0;
  v12[4] = self;
  v5 = v4;
  v13 = v5;
  v14 = &v15;
  v7 = objc_msgSend_performTransaction_(self, v6, v12);
  if (v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = self;
      v23 = 2112;
      v24 = v7;
      _os_log_error_impl(&dword_22506F000, v8, OS_LOG_TYPE_ERROR, "(%@) shareIDForRecordID failed with SQLite database error: %@", buf, 0x16u);
    }
  }

  v9 = v16[5];

  _Block_object_dispose(&v15, 8);
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)zoneShareIDForZoneID:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_225073F10;
  v19 = sub_225073514;
  v20 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_225152204;
  v12[3] = &unk_278545CE0;
  v12[4] = self;
  v5 = v4;
  v13 = v5;
  v14 = &v15;
  v7 = objc_msgSend_performTransaction_(self, v6, v12);
  if (v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = self;
      v23 = 2112;
      v24 = v7;
      _os_log_error_impl(&dword_22506F000, v8, OS_LOG_TYPE_ERROR, "(%@) zoneShareIDForZoneID failed with SQLite database error: %@", buf, 0x16u);
    }
  }

  v9 = v16[5];

  _Block_object_dispose(&v15, 8);
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)shareIDsForZoneID:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_225073F10;
  v19 = sub_225073514;
  v20 = objc_opt_new();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2251524A8;
  v12[3] = &unk_278545CE0;
  v12[4] = self;
  v5 = v4;
  v13 = v5;
  v14 = &v15;
  v7 = objc_msgSend_performTransaction_(self, v6, v12);
  if (v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = self;
      v23 = 2112;
      v24 = v7;
      _os_log_error_impl(&dword_22506F000, v8, OS_LOG_TYPE_ERROR, "(%@) shareIDsForZoneID failed with SQLite database error: %@", buf, 0x16u);
    }
  }

  v9 = v16[5];

  _Block_object_dispose(&v15, 8);
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)addOrUpdateRecordID:(id)a3 withParentID:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_225152740;
  v14[3] = &unk_278546800;
  v14[4] = self;
  v8 = v6;
  v15 = v8;
  v9 = v7;
  v16 = v9;
  v11 = objc_msgSend_performTransaction_(self, v10, v14);
  if (v11)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = self;
      v19 = 2112;
      v20 = v11;
      _os_log_error_impl(&dword_22506F000, v12, OS_LOG_TYPE_ERROR, "(%@) addOrUpdateRecordID failed with SQLite database error: %@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)removeRecordID:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22515297C;
  v10[3] = &unk_278546180;
  v10[4] = self;
  v5 = v4;
  v11 = v5;
  v7 = objc_msgSend_performTransaction_(self, v6, v10);
  if (v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v13 = self;
      v14 = 2112;
      v15 = v7;
      _os_log_error_impl(&dword_22506F000, v8, OS_LOG_TYPE_ERROR, "(%@) removeRecordID failed with SQLite database error: %@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)addZoneShareID:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_225152BC4;
  v10[3] = &unk_278546180;
  v10[4] = self;
  v5 = v4;
  v11 = v5;
  v7 = objc_msgSend_performTransaction_(self, v6, v10);
  if (v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v13 = self;
      v14 = 2112;
      v15 = v7;
      _os_log_error_impl(&dword_22506F000, v8, OS_LOG_TYPE_ERROR, "(%@) addZoneShareID failed with SQLite database error: %@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)addHierarchicalShareID:(id)a3 forRootRecordID:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_225152EF0;
  v14[3] = &unk_278546800;
  v8 = v6;
  v15 = v8;
  v16 = self;
  v9 = v7;
  v17 = v9;
  v11 = objc_msgSend_performTransaction_(self, v10, v14);
  if (v11)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = self;
      v20 = 2112;
      v21 = v11;
      _os_log_error_impl(&dword_22506F000, v12, OS_LOG_TYPE_ERROR, "(%@) addHierarchicalShareID failed with SQLite database error: %@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)removeShareID:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_225153284;
  v10[3] = &unk_278546180;
  v10[4] = self;
  v5 = v4;
  v11 = v5;
  v7 = objc_msgSend_performTransaction_(self, v6, v10);
  if (v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v13 = self;
      v14 = 2112;
      v15 = v7;
      _os_log_error_impl(&dword_22506F000, v8, OS_LOG_TYPE_ERROR, "(%@) removeShareID failed with SQLite database error: %@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeZoneShareForZoneID:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2251534A0;
  v10[3] = &unk_278546180;
  v10[4] = self;
  v5 = v4;
  v11 = v5;
  v7 = objc_msgSend_performTransaction_(self, v6, v10);
  if (v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v13 = self;
      v14 = 2112;
      v15 = v7;
      _os_log_error_impl(&dword_22506F000, v8, OS_LOG_TYPE_ERROR, "(%@) removeZoneShareForZoneID failed with SQLite database error: %@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeZoneWithID:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_225153734;
  v10[3] = &unk_278546180;
  v10[4] = self;
  v5 = v4;
  v11 = v5;
  v7 = objc_msgSend_performTransaction_(self, v6, v10);
  if (v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v13 = self;
      v14 = 2112;
      v15 = v7;
      _os_log_error_impl(&dword_22506F000, v8, OS_LOG_TYPE_ERROR, "(%@) removeZoneWithID failed with SQLite database error: %@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end