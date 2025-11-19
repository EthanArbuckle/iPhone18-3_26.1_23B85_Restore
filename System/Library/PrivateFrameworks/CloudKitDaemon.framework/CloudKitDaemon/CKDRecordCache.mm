@interface CKDRecordCache
+ (id)recordCacheForContainer:(id)a3;
+ (id)recordCacheInDatabase:(id)a3 withContainer:(id)a4;
+ (id)recordCacheWithPath:(id)a3 forContainer:(id)a4;
- (void)createTables;
@end

@implementation CKDRecordCache

- (void)createTables
{
  v7.receiver = self;
  v7.super_class = CKDRecordCache;
  [(CKSQLiteTableGroup *)&v7 createTables];
  objc_msgSend_addSingletonInstanceToGroup_(MEMORY[0x277CBC650], v3, self);
  v4 = objc_alloc_init(CKDRecordCacheTable);
  rc = self->_rc;
  self->_rc = v4;

  objc_msgSend_addTable_(self, v6, self->_rc);
}

+ (id)recordCacheInDatabase:(id)a3 withContainer:(id)a4
{
  v5 = a3;
  v7 = objc_msgSend_groupNameWithDomain_domainIdentifier_groupName_(CKDRecordCache, v6, 0, 0, @"RecordCache");
  v9 = objc_msgSend_tableGroupInDatabase_withName_options_error_(a1, v8, v5, v7, 0, 0);

  return v9;
}

+ (id)recordCacheWithPath:(id)a3 forContainer:(id)a4
{
  v6 = MEMORY[0x277CBC658];
  v7 = a4;
  v8 = a3;
  v11 = objc_msgSend_deviceContext(v7, v9, v10);
  v14 = objc_msgSend_deviceScopedDatabase(v11, v12, v13);
  v16 = objc_msgSend_databaseInDirectory_registryDatabase_options_error_(v6, v15, v8, v14, 0, 0);

  v18 = objc_msgSend_recordCacheInDatabase_withContainer_(a1, v17, v16, v7);

  return v18;
}

+ (id)recordCacheForContainer:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_directoryContext(v4, v5, v6);
  v10 = objc_msgSend_daemonDatabaseDirectory(v7, v8, v9);

  v13 = objc_msgSend_path(v10, v11, v12);
  v15 = objc_msgSend_recordCacheWithPath_forContainer_(a1, v14, v13, v4);

  return v15;
}

@end