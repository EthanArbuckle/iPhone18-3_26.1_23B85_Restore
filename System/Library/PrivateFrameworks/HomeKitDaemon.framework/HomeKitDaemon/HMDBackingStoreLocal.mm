@interface HMDBackingStoreLocal
+ (id)logCategory;
+ (void)cleanDatastoreFilesAt:(id)at everything:(BOOL)everything;
- (BOOL)_insertArchive:(id)archive identifier:(id)identifier controllerUserName:(id)name error:(id *)error;
- (BOOL)_selectArchiveWithIdentifier:(id)identifier archive:(id *)archive controllerUserName:(id *)name error:(id *)error;
- (HMDBackingStoreLocal)initWithDatastore:(id)datastore;
- (id)_commit;
- (id)_createDatastoreTables:(id)tables;
- (id)_createNewDatastore:(id)datastore;
- (id)_deleteGroupWithID:(int64_t)d;
- (id)_deleteLog:(int64_t)log;
- (id)_deleteRecordWithGroupID:(int64_t)d recordName:(id)name;
- (id)_deleteZoneWithID:(int64_t)d;
- (id)_dropUncommittedUnpushedTransactions;
- (id)_fetchGroupsForZone:(id)zone withError:(id *)error;
- (id)_fetchRecordWithUUID:(id)d root:(id)root error:(id *)error;
- (id)_fetchUncommittedAndPushedTransactions;
- (id)_fetchZonesWithError:(id *)error;
- (id)_fillStoreCache;
- (id)_fillZoneCache;
- (id)_insertLogOptionsWithID:(int64_t)d options:(id)options;
- (id)_instantiateResources:(BOOL)resources migrate:(BOOL)migrate;
- (id)_selectLogOptionsWithID:(int64_t)d;
- (id)_updateGroupWithID:(int64_t)d serverChangeToken:(id)token;
- (id)_updateGroupWithID:(int64_t)d subscription:(id)subscription;
- (id)_updateLog:(int64_t)log mask:(int64_t)mask set:(int64_t)set;
- (id)_updateRecordWithGroupID:(int64_t)d name:(id)name schema:(id)schema;
- (id)_updateRecordWithGroupID:(int64_t)d store:(int64_t)store name:(id)name model:(id)model;
- (id)_updateRecordWithGroupID:(int64_t)d store:(int64_t)store name:(id)name record:(id)record uuid:(id)uuid parentUUID:(id)iD type:(id)type data:(id)self0 encoding:(int64_t)self1 schema:(id)self2;
- (id)_updateRecordWithGroupID:(int64_t)d store:(int64_t)store record:(id)record;
- (id)_updateRecordWithGroupID:(int64_t)d store:(int64_t)store record:(id)record data:(id)data encoding:(int64_t)encoding;
- (int64_t)_insertGroupWithZoneID:(int64_t)d root:(id)root owner:(id)owner subscription:(id)subscription error:(id *)error;
- (int64_t)_insertZoneWithName:(id)name error:(id *)error;
- (int64_t)_numUncommittedTransactions;
- (unint64_t)_fetchIDForStore:(id)store error:(id *)error;
- (unint64_t)_insertLogWithRoot:(id)root transaction:(id)transaction set:(int64_t)set error:(id *)error;
- (void)_fetchRecordCountWithGroupID:(int64_t)d callback:(id)callback;
- (void)_fetchRecordMapWithGroupID:(int64_t)d callback:(id)callback;
- (void)_fetchRecordTypeSchemaWithGroupID:(int64_t)d callback:(id)callback;
- (void)_fetchRecordsWithGroupID:(int64_t)d callback:(id)callback;
- (void)_fetchRecordsWithGroupID:(int64_t)d names:(id)names callback:(id)callback;
- (void)_fetchRecordsWithGroupID:(int64_t)d parent:(id)parent type:(id)type callback:(id)callback;
- (void)_fetchRecordsWithGroupID:(int64_t)d parentUuids:(id)uuids callback:(id)callback;
- (void)_fetchRecordsWithGroupID:(int64_t)d uuids:(id)uuids callback:(id)callback;
- (void)_rollback;
- (void)_selectAllLog:(id)log;
- (void)_selectAllRecords:(id)records;
- (void)_selectLogWithMask:(int64_t)mask compare:(int64_t)compare callback:(id)callback;
- (void)_selectLogWithRoot:(id)root after:(int64_t)after mask:(int64_t)mask compare:(int64_t)compare callback:(id)callback;
- (void)dealloc;
@end

@implementation HMDBackingStoreLocal

- (BOOL)_selectArchiveWithIdentifier:(id)identifier archive:(id *)archive controllerUserName:(id *)name error:(id *)error
{
  selectArchive = self->selectArchive;
  v21 = 0;
  bindStringSQLite3(selectArchive, 1, identifier, &v21);
  v11 = v21;
  v12 = self->selectArchive;
  if (v11)
  {
    sqlite3_reset(v12);
    if (error)
    {
      v13 = v11;
      v14 = 0;
      *error = v11;
      goto LABEL_17;
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  v15 = sqlite3_step(v12);
  if (v15 != 100)
  {
    if (v15 == 101)
    {
      if (error)
      {
        v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
LABEL_14:
        *error = v16;
      }
    }

    else if (error)
    {
      v16 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectArchive];
      goto LABEL_14;
    }

    sqlite3_reset(self->selectArchive);
    goto LABEL_16;
  }

  v17 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectArchive column:1];
  v18 = [MEMORY[0x277CBEA90] dataWithSQLite3Column:self->selectArchive column:2];
  v19 = sqlite3_step(self->selectArchive);
  if (error && v19 != 101)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectArchive];
  }

  sqlite3_reset(self->selectArchive);
  *archive = [v18 copy];
  *name = [v17 copy];

  v14 = 1;
LABEL_17:

  return v14;
}

- (BOOL)_insertArchive:(id)archive identifier:(id)identifier controllerUserName:(id)name error:(id *)error
{
  archiveCopy = archive;
  identifierCopy = identifier;
  nameCopy = name;
  v13 = execSQLite3(self->updateLogToDiskCommited);
  v14 = v13;
  if (!v13)
  {
    bindStringSQLite3(self->insertArchive, 1, identifierCopy, error);
    bindStringSQLite3(self->insertArchive, 2, nameCopy, error);
    bindDataSQLite3(self->insertArchive, 3, archiveCopy, error);
    if (!*error)
    {
      v16 = steplastrowresetSQLite3(self->insertArchive, error) != 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (!error)
  {
LABEL_5:
    v16 = 0;
    goto LABEL_7;
  }

  v15 = v13;
  v16 = 0;
  *error = v14;
LABEL_7:

  return v16;
}

- (id)_deleteLog:(int64_t)log
{
  deleteLog = self->deleteLog;
  v10 = 0;
  bindIntSQLite3(deleteLog, 1, log, &v10);
  v5 = v10;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = execSQLite3(self->deleteLog);
  }

  v8 = v7;

  return v8;
}

- (id)_updateLog:(int64_t)log mask:(int64_t)mask set:(int64_t)set
{
  updateLog = self->updateLog;
  v19 = 0;
  bindIntSQLite3(updateLog, 1, mask, &v19);
  v9 = v19;
  v10 = self->updateLog;
  v18 = v9;
  bindIntSQLite3(v10, 2, set, &v18);
  v11 = v18;

  v12 = self->updateLog;
  v17 = v11;
  bindIntSQLite3(v12, 3, log, &v17);
  v13 = v17;

  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = execSQLite3(self->updateLog);
  }

  v15 = v14;

  return v15;
}

- (void)_selectAllLog:(id)log
{
  logCopy = log;
  while (1)
  {
    v4 = sqlite3_step(self->selectAllLog);
    if (v4 != 100)
    {
      break;
    }

    v5 = sqlite3_column_int64(self->selectAllLog, 0);
    v6 = sqlite3_column_int64(self->selectAllLog, 1);
    v7 = sqlite3_column_int64(self->selectAllLog, 2);
    v8 = sqlite3_column_int64(self->selectAllLog, 5);
    v9 = sqlite3_column_int64(self->selectAllLog, 6);
    v10 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectAllLog column:3];
    v11 = [MEMORY[0x277CBEA90] dataWithSQLite3Column:self->selectAllLog column:4];
    LOBYTE(v5) = logCopy[2](logCopy, v5, v6, v7, v8, v9, v10, v11, 0);

    if (v5)
    {
      goto LABEL_7;
    }
  }

  if ((v4 & 0xFFFFFFFE) != 0x64)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectAllLog];
    (logCopy)[2](logCopy, 0, 0, 0, 0, 0, 0, 0, v12);
  }

LABEL_7:
  sqlite3_reset(self->selectAllLog);
}

- (id)_selectLogOptionsWithID:(int64_t)d
{
  v26 = *MEMORY[0x277D85DE8];
  selectLogOptions = self->selectLogOptions;
  v21 = 0;
  bindIntSQLite3(selectLogOptions, 1, d, &v21);
  v20 = v21;
  v6 = 0;
  while (1)
  {
    v7 = sqlite3_step(self->selectLogOptions);
    if (v7 != 100)
    {
      break;
    }

    if (v6)
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543618;
        v23 = v11;
        v24 = 2048;
        dCopy = d;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Got multiple results for xact_block %lu (using first one)", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
    }

    else
    {
      v6 = [MEMORY[0x277CBEA90] dataWithSQLite3Column:self->selectLogOptions column:0];
    }
  }

  if (v7 != 101)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectLogOptions];
      *buf = 138543618;
      v23 = v15;
      v24 = 2112;
      dCopy = v16;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@unexpected error to selectLogOptions: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  sqlite3_reset(self->selectLogOptions);
  if (v6)
  {
    v17 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:0];
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_insertLogOptionsWithID:(int64_t)d options:(id)options
{
  insertLogOptions = self->insertLogOptions;
  v14 = 0;
  optionsCopy = options;
  bindIntSQLite3(insertLogOptions, 1, d, &v14);
  v8 = v14;
  v9 = self->insertLogOptions;
  v10 = encodeRootObject();

  v13 = v8;
  bindDataSQLite3(v9, 2, v10, &v13);
  v11 = v13;

  if (!v11)
  {
    v11 = execSQLite3(self->insertLogOptions);
  }

  return v11;
}

- (void)_selectLogWithMask:(int64_t)mask compare:(int64_t)compare callback:(id)callback
{
  callbackCopy = callback;
  selectChangeExistsLog = self->selectChangeExistsLog;
  v21 = 0;
  bindIntSQLite3(selectChangeExistsLog, 1, mask, &v21);
  v9 = v21;
  v10 = self->selectChangeExistsLog;
  v20 = v9;
  bindIntSQLite3(v10, 2, compare, &v20);
  v11 = v20;

  if (v11)
  {
    callbackCopy[2]();
  }

  else
  {
    while (1)
    {
      v12 = sqlite3_step(self->selectChangeExistsLog);
      if (v12 != 100)
      {
        break;
      }

      v13 = sqlite3_column_int64(self->selectChangeExistsLog, 0);
      v14 = sqlite3_column_int64(self->selectChangeExistsLog, 1);
      v15 = MEMORY[0x277CBC5D0];
      v16 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectChangeExistsLog column:2];
      v17 = [v15 parseFromString:v16];
      LOBYTE(v13) = (callbackCopy[2])(callbackCopy, v13, v14, v17, 0);

      if (v13)
      {
        goto LABEL_8;
      }
    }

    if ((v12 & 0xFFFFFFFE) != 0x64)
    {
      v18 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectChangeExistsLog];
      (callbackCopy[2])(callbackCopy, 0, 0, 0, v18);
    }

LABEL_8:
    sqlite3_reset(self->selectChangeExistsLog);
  }
}

- (void)_selectLogWithRoot:(id)root after:(int64_t)after mask:(int64_t)mask compare:(int64_t)compare callback:(id)callback
{
  callbackCopy = callback;
  selectLog = self->selectLog;
  encodeForKey = [root encodeForKey];
  v35 = 0;
  bindStringSQLite3(selectLog, 1, encodeForKey, &v35);
  v14 = v35;

  v15 = self->selectLog;
  v34 = v14;
  bindIntSQLite3(v15, 2, mask, &v34);
  v16 = v34;

  v17 = self->selectLog;
  v33 = v16;
  bindIntSQLite3(v17, 3, compare, &v33);
  v18 = v33;

  v19 = self->selectLog;
  v32 = v18;
  bindIntSQLite3(v19, 4, after, &v32);
  v20 = v32;

  if (v20)
  {
    (*(callbackCopy + 2))(callbackCopy, 0, 0, 0, 0, 0, 0, v20);
  }

  else
  {
    v21 = self->selectLog;
    v22 = callbackCopy;
    while (1)
    {
      v23 = sqlite3_step(v21);
      if (v23 != 100)
      {
        break;
      }

      v24 = sqlite3_column_int64(v21, 0);
      v25 = sqlite3_column_int64(v21, 1);
      v26 = sqlite3_column_int64(v21, 2);
      v27 = sqlite3_column_int64(v21, 4);
      v28 = sqlite3_column_int64(v21, 5);
      v29 = [MEMORY[0x277CBEA90] dataWithSQLite3Column:v21 column:3];
      LOBYTE(v24) = v22[2](v22, v24, v25, v26, v27, v28, v29, 0);

      if (v24)
      {
        goto LABEL_9;
      }
    }

    if ((v23 & 0xFFFFFFFE) != 0x64)
    {
      v30 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:v21];
      (v22)[2](v22, 0, 0, 0, 0, 0, 0, v30);
    }

LABEL_9:
    sqlite3_reset(v21);

    v20 = 0;
  }
}

- (unint64_t)_insertLogWithRoot:(id)root transaction:(id)transaction set:(int64_t)set error:(id *)error
{
  v63 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  transactionCopy = transaction;
  encodeForKey = [rootCopy encodeForKey];
  v13 = execSQLite3(self->flushPushedXact);
  if (v13)
  {
    v14 = v13;
    if (error)
    {
LABEL_3:
      v15 = v14;
      insert_rowid = 0;
      *error = v14;
      goto LABEL_28;
    }

LABEL_27:
    insert_rowid = 0;
    goto LABEL_28;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = [transactionCopy objects];
  v47 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v47)
  {
    setCopy = set;
    errorCopy = error;
    v44 = rootCopy;
    insert_rowid = 0;
    v49 = *v59;
    v45 = transactionCopy;
LABEL_6:
    v17 = 0;
    while (1)
    {
      if (*v59 != v49)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v58 + 1) + 8 * v17);
      v19 = objc_autoreleasePoolPush();
      change = [v18 change];
      v57 = 0;
      v21 = [change encodeWithEncoding:1 error:&v57];
      v14 = v57;

      if (!v21)
      {
        break;
      }

      p_insertLog = &self->insertLog;
      insertLog = self->insertLog;
      v56 = v14;
      bindIntSQLite3(insertLog, 1, setCopy, &v56);
      v24 = v56;

      v25 = self->insertLog;
      v55 = v24;
      bindStringSQLite3(v25, 2, encodeForKey, &v55);
      v26 = v55;

      v27 = self->insertLog;
      v54 = v26;
      bindDataSQLite3(v27, 3, v21, &v54);
      v28 = v54;

      v29 = self->insertLog;
      v53 = v28;
      bindIntSQLite3(v29, 4, insert_rowid, &v53);
      v30 = v53;

      v31 = self->insertLog;
      change2 = [v18 change];
      objectChangeType = [change2 objectChangeType];
      v52 = v30;
      bindIntSQLite3(v31, 5, objectChangeType, &v52);
      v34 = v52;

      v35 = self->insertLog;
      v51 = v34;
      bindIntSQLite3(v35, 6, 1, &v51);
      v14 = v51;

      if (v14)
      {
        break;
      }

      v36 = execSQLite3(*p_insertLog);
      if (v36)
      {
        goto LABEL_24;
      }

      if (!insert_rowid)
      {
        insert_rowid = sqlite3_last_insert_rowid(self->connection);
        p_updateLogXactID = &self->updateLogXactID;
        updateLogXactID = self->updateLogXactID;
        v50 = 0;
        bindIntSQLite3(updateLogXactID, 1, insert_rowid, &v50);
        v39 = v50;
        v14 = execSQLite3(self->updateLogXactID);

        if (v14)
        {
          break;
        }

        if (sqlite3_reset(*p_updateLogXactID))
        {
          goto LABEL_23;
        }

        options = [v45 options];
        v14 = [(HMDBackingStoreLocal *)self _insertLogOptionsWithID:insert_rowid options:options];

        if (v14)
        {
          break;
        }
      }

      if (sqlite3_reset(*p_insertLog))
      {
        p_updateLogXactID = &self->insertLog;
LABEL_23:
        v36 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:*p_updateLogXactID];
LABEL_24:
        v14 = v36;
        break;
      }

      objc_autoreleasePoolPop(v19);
      if (v47 == ++v17)
      {
        rootCopy = v44;
        transactionCopy = v45;
        v47 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
        if (v47)
        {
          goto LABEL_6;
        }

        goto LABEL_21;
      }
    }

    rootCopy = v44;
    transactionCopy = v45;

    objc_autoreleasePoolPop(v19);
    if (!v14)
    {
      goto LABEL_28;
    }

    error = errorCopy;
    if (errorCopy)
    {
      goto LABEL_3;
    }

    goto LABEL_27;
  }

  insert_rowid = 0;
LABEL_21:

  v14 = 0;
LABEL_28:

  v41 = *MEMORY[0x277D85DE8];
  return insert_rowid;
}

- (void)_selectAllRecords:(id)records
{
  recordsCopy = records;
  while (1)
  {
    v4 = sqlite3_step(self->selectRecords);
    if (v4 != 100)
    {
      break;
    }

    v5 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectRecords column:0];
    v6 = sqlite3_column_int64(self->selectRecords, 1);
    v7 = sqlite3_column_int64(self->selectRecords, 2);
    v8 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectRecords column:3];
    v9 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectRecords column:4];
    v10 = sqlite3_column_int64(self->selectRecords, 5);
    v11 = [MEMORY[0x277CBEA90] dataWithSQLite3Column:self->selectRecords column:6];
    v12 = [MEMORY[0x277CBEA90] dataWithSQLite3Column:self->selectRecords column:7];
    LOBYTE(v6) = recordsCopy[2](recordsCopy, v5, v6, v7, v8, v9, v10, v11, v12, 0);

    if (v6)
    {
      goto LABEL_7;
    }
  }

  if ((v4 & 0xFFFFFFFE) != 0x64)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectRecords];
    (recordsCopy)[2](recordsCopy, 0, 0, 0, 0, 0, 0, 0, 0, v13);
  }

LABEL_7:
  sqlite3_reset(self->selectRecords);
}

- (void)_fetchRecordsWithGroupID:(int64_t)d names:(id)names callback:(id)callback
{
  v26 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  callbackCopy = callback;
  if (d)
  {
    selectRecordName = self->selectRecordName;
    v24 = 0;
    bindIntSQLite3(selectRecordName, 2, d, &v24);
    d = v24;
  }

  else
  {
    selectRecordName = self->selectRecordNameNoShare;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = namesCopy;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        dCopy = d;
        bindStringSQLite3(selectRecordName, 1, v16, &dCopy);
        dCopy2 = dCopy;

        if (dCopy2)
        {
          (*(callbackCopy + 2))(callbackCopy, 0, 0, 0, 0, dCopy2);
          goto LABEL_17;
        }

        d = _handleFetchWithRawCallback(selectRecordName, callbackCopy);

        if (d)
        {
          dCopy2 = 0;
          goto LABEL_17;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
      d = 0;
      dCopy2 = 0;
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    dCopy2 = d;
  }

LABEL_17:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_fetchRecordsWithGroupID:(int64_t)d parent:(id)parent type:(id)type callback:(id)callback
{
  parentCopy = parent;
  typeCopy = type;
  callbackCopy = callback;
  if (d)
  {
    selectRecordParent = self->selectRecordParent;
    v21 = 0;
    bindIntSQLite3(selectRecordParent, 3, d, &v21);
    d = v21;
  }

  else
  {
    selectRecordParent = self->selectRecordParentNoShare;
  }

  uUIDString = [parentCopy UUIDString];
  dCopy = d;
  bindStringSQLite3(selectRecordParent, 1, uUIDString, &dCopy);
  v14 = dCopy;

  v19 = v14;
  bindStringSQLite3(selectRecordParent, 2, typeCopy, &v19);
  v15 = v19;

  if (v15)
  {
    sqlite3_reset(selectRecordParent);
    (*(callbackCopy + 2))(callbackCopy, 0, 0, 0, 0, v15);
  }

  else
  {
    v16 = _handleFetchWithRawCallback(selectRecordParent, callbackCopy);
  }
}

- (void)_fetchRecordsWithGroupID:(int64_t)d parentUuids:(id)uuids callback:(id)callback
{
  v29 = *MEMORY[0x277D85DE8];
  uuidsCopy = uuids;
  callbackCopy = callback;
  selectRecordParentUUID = self->selectRecordParentUUID;
  v27 = 0;
  bindIntSQLite3(selectRecordParentUUID, 2, d, &v27);
  v11 = v27;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = uuidsCopy;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = self->selectRecordParentUUID;
        uUIDString = [*(*(&v23 + 1) + 8 * i) UUIDString];
        v22 = v11;
        bindStringSQLite3(v17, 1, uUIDString, &v22);
        v19 = v22;

        v20 = self->selectRecordParentUUID;
        if (v19)
        {
          sqlite3_reset(v20);
          (*(callbackCopy + 2))(callbackCopy, 0, 0, 0, 0, v19);
          goto LABEL_14;
        }

        v11 = _handleFetchWithRawCallback(v20, callbackCopy);

        if (v11)
        {
          v19 = 0;
          goto LABEL_14;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
      v11 = 0;
      v19 = 0;
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v19 = v11;
  }

LABEL_14:

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_fetchRecordWithUUID:(id)d root:(id)root error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  selectRecordUUIDNoShare = self->selectRecordUUIDNoShare;
  uUIDString = [d UUIDString];
  v21 = 0;
  bindStringSQLite3(selectRecordUUIDNoShare, 1, uUIDString, &v21);
  v9 = v21;

  sqlite3_reset(self->selectRecordUUIDNoShare);
  if (v9)
  {
    if (error)
    {
      v10 = v9;
      v11 = 0;
      v12 = 0;
      *error = v9;
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v13 = sqlite3_step(self->selectRecordUUIDNoShare);
  if (v13 != 100)
  {
    if (error && v13 != 101)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectRecordUUIDNoShare];
    }

    sqlite3_reset(self->selectRecordUUIDNoShare);
    v9 = 0;
LABEL_18:
    v11 = 0;
    v12 = 0;
    goto LABEL_22;
  }

  v14 = sqlite3_column_int64(self->selectRecordUUIDNoShare, 2);
  v15 = [MEMORY[0x277CBEA90] dataWithSQLite3Column:self->selectRecordUUIDNoShare column:1];
  v16 = sqlite3_step(self->selectRecordUUIDNoShare);
  if (error && v16 != 101)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectRecordUUIDNoShare];
  }

  sqlite3_reset(self->selectRecordUUIDNoShare);
  v20 = 0;
  v11 = [HMDBackingStoreModelObject objectFromData:v15 encoding:v14 error:&v20];
  v17 = v20;
  v9 = v17;
  if (v17)
  {
    if (error && !*error)
    {
      v18 = v17;
      v12 = 0;
      *error = v9;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = v11;
  }

LABEL_22:

  return v12;
}

- (void)_fetchRecordsWithGroupID:(int64_t)d uuids:(id)uuids callback:(id)callback
{
  v26 = *MEMORY[0x277D85DE8];
  uuidsCopy = uuids;
  callbackCopy = callback;
  if (d)
  {
    selectRecordUUID = self->selectRecordUUID;
    v24 = 0;
    bindIntSQLite3(selectRecordUUID, 2, d, &v24);
    d = v24;
  }

  else
  {
    selectRecordUUID = self->selectRecordUUIDNoShare;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = uuidsCopy;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        uUIDString = [*(*(&v20 + 1) + 8 * i) UUIDString];
        dCopy = d;
        bindStringSQLite3(selectRecordUUID, 1, uUIDString, &dCopy);
        dCopy2 = dCopy;

        if (dCopy2)
        {
          sqlite3_reset(selectRecordUUID);
          (*(callbackCopy + 2))(callbackCopy, 0, 0, 0, 0, dCopy2);
          goto LABEL_17;
        }

        d = _handleFetchWithRawCallback(selectRecordUUID, callbackCopy);

        if (d)
        {
          dCopy2 = 0;
          goto LABEL_17;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
      d = 0;
      dCopy2 = 0;
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    dCopy2 = d;
  }

LABEL_17:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_fetchRecordsWithGroupID:(int64_t)d callback:(id)callback
{
  callbackCopy = callback;
  v18 = 0;
  bindIntSQLite3(self->selectRecordGroup, 1, d, &v18);
  v6 = v18;
  if (v6)
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = sqlite3_step(self->selectRecordGroup);
    if (v7 != 100)
    {
      break;
    }

    v8 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectRecordGroup column:0];
    v9 = [MEMORY[0x277CBEA90] dataWithSQLite3Column:self->selectRecordGroup column:1];
    v10 = sqlite3_column_int64(self->selectRecordGroup, 2);
    v11 = [MEMORY[0x277CBEA90] dataWithSQLite3Column:self->selectRecordGroup column:3];
    v12 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectRecordGroup column:4];
    v13 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectRecordGroup column:5];
    v14 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectRecordGroup column:6];
    v15 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectRecordGroup column:7];
    callbackCopy[2](callbackCopy, v8, v9, v10, v11, v12, v13, v14, v15, 0);
  }

  if (v7 == 101)
  {
    sqlite3_reset(self->selectRecordGroup);
    goto LABEL_7;
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectRecordGroup];
  sqlite3_reset(self->selectRecordGroup);
  v16 = callbackCopy;
  if (v6)
  {
LABEL_2:
    (callbackCopy[2])(callbackCopy, 0);

LABEL_7:
    v16 = callbackCopy;
  }
}

- (void)_fetchRecordMapWithGroupID:(int64_t)d callback:(id)callback
{
  callbackCopy = callback;
  v15 = 0;
  bindIntSQLite3(self->selectRecordGroupMap, 1, d, &v15);
  v6 = v15;
  if (v6)
  {
    v7 = *(callbackCopy + 2);
LABEL_3:
    v7();

LABEL_8:
    v13 = callbackCopy;
    goto LABEL_9;
  }

  while (1)
  {
    v8 = sqlite3_step(self->selectRecordGroupMap);
    if (v8 != 100)
    {
      break;
    }

    v9 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectRecordGroupMap column:0];
    v10 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectRecordGroupMap column:1];
    v11 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectRecordGroupMap column:2];
    v12 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectRecordGroupMap column:3];
    (*(callbackCopy + 2))(callbackCopy, v9, v10, v11, v12, 0);
  }

  if (v8 == 101)
  {
    sqlite3_reset(self->selectRecordGroupMap);
    goto LABEL_8;
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectRecordGroup];
  sqlite3_reset(self->selectRecordGroupMap);
  v13 = callbackCopy;
  if (v6)
  {
    v7 = *(callbackCopy + 2);
    goto LABEL_3;
  }

LABEL_9:
}

- (void)_fetchRecordTypeSchemaWithGroupID:(int64_t)d callback:(id)callback
{
  callbackCopy = callback;
  v14 = 0;
  bindIntSQLite3(self->selectRecordGroupTypeSchema, 1, d, &v14);
  v6 = v14;
  if (v6)
  {
    v7 = *(callbackCopy + 2);
    goto LABEL_3;
  }

  while (1)
  {
    v8 = sqlite3_step(self->selectRecordGroupTypeSchema);
    if (v8 != 100)
    {
      break;
    }

    v9 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectRecordGroupTypeSchema column:0];
    v10 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectRecordGroupTypeSchema column:1];
    v11 = (*(callbackCopy + 2))(callbackCopy, v9, v10, 0);

    if ((v11 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (v8 == 101)
  {
LABEL_8:
    sqlite3_reset(self->selectRecordGroupTypeSchema);
    goto LABEL_9;
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectRecordGroupTypeSchema];
  sqlite3_reset(self->selectRecordGroupTypeSchema);
  v12 = callbackCopy;
  if (v6)
  {
    v7 = *(callbackCopy + 2);
LABEL_3:
    v7();

LABEL_9:
    v12 = callbackCopy;
  }
}

- (void)_fetchRecordCountWithGroupID:(int64_t)d callback:(id)callback
{
  callbackCopy = callback;
  v12 = 0;
  bindIntSQLite3(self->selectRecordCountGroup, 1, d, &v12);
  v6 = v12;
  if (v6)
  {
    v7 = *(callbackCopy + 2);
LABEL_3:
    v7();

LABEL_8:
    v10 = callbackCopy;
    goto LABEL_9;
  }

  while (1)
  {
    v9 = sqlite3_step(self->selectRecordCountGroup);
    if (v9 != 100)
    {
      break;
    }

    v8 = sqlite3_column_int64(self->selectRecordCountGroup, 0);
    (*(callbackCopy + 2))(callbackCopy, v8, 0);
  }

  if (v9 == 101)
  {
    sqlite3_reset(self->selectRecordCountGroup);
    goto LABEL_8;
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectRecordCountGroup];
  sqlite3_reset(self->selectRecordCountGroup);
  v10 = callbackCopy;
  if (v6)
  {
    v7 = *(callbackCopy + 2);
    goto LABEL_3;
  }

LABEL_9:
}

- (id)_deleteRecordWithGroupID:(int64_t)d recordName:(id)name
{
  deleteRecord = self->deleteRecord;
  v15 = 0;
  nameCopy = name;
  bindIntSQLite3(deleteRecord, 2, d, &v15);
  v8 = v15;
  v9 = self->deleteRecord;
  v14 = v8;
  bindStringSQLite3(v9, 1, nameCopy, &v14);

  v10 = v14;
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = execSQLite3(self->deleteRecord);
  }

  v12 = v11;

  return v12;
}

- (id)_updateRecordWithGroupID:(int64_t)d store:(int64_t)store name:(id)name model:(id)model
{
  nameCopy = name;
  v19 = 0;
  v11 = [model encodeWithEncoding:1 error:&v19];
  v12 = v19;
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x277CBC5A0]);
    v16 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:nameCopy];
    v17 = [v15 initWithRecordType:@"ObjectRecord" recordID:v16];
    v14 = [(HMDBackingStoreLocal *)self _updateRecordWithGroupID:d store:store record:v17 data:v11 encoding:1];
  }

  return v14;
}

- (id)_updateRecordWithGroupID:(int64_t)d store:(int64_t)store record:(id)record
{
  recordCopy = record;
  v9 = [recordCopy objectForKey:@"k00"];
  integerValue = [v9 integerValue];

  if (integerValue)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"k%02lu", integerValue];
    v12 = [recordCopy objectForKey:v11];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v14)
    {
      [(HMDBackingStoreLocal *)self _updateRecordWithGroupID:d store:store record:recordCopy data:v14 encoding:integerValue];
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    }
    v15 = ;
  }

  else
  {
    v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
  }

  return v15;
}

- (id)_updateRecordWithGroupID:(int64_t)d store:(int64_t)store record:(id)record data:(id)data encoding:(int64_t)encoding
{
  recordCopy = record;
  dataCopy = data;
  v14 = objc_autoreleasePoolPush();
  v15 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [recordCopy encodeSystemFieldsWithCoder:v15];
  [v15 finishEncoding];
  encodedData = [v15 encodedData];

  objc_autoreleasePoolPop(v14);
  encodingCopy = encoding;
  v37 = 0;
  v17 = [HMDBackingStoreModelObject objectFromData:dataCopy encoding:encoding error:&v37];
  v18 = v37;
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  if (v18)
  {
    v21 = [(HMDBackingStoreLocal *)self _updateRecordWithGroupID:d store:store name:recordName record:encodedData uuid:0 parentUUID:0 type:0 data:dataCopy encoding:0 schema:0];
  }

  else
  {
    uuid = [v17 uuid];
    uUIDString = [uuid UUIDString];
    parentUUID = [v17 parentUUID];
    uUIDString2 = [parentUUID UUIDString];
    bsoType = [v17 bsoType];
    +[HMDBackingStoreSingleton sharedInstance];
    v22 = recordCopy;
    v23 = encodedData;
    v25 = v24 = store;
    v26 = [v25 schemaHashForObject:v17];
    selfCopy = self;
    v28 = v26;
    v29 = v24;
    encodedData = v23;
    recordCopy = v22;
    v21 = [(HMDBackingStoreLocal *)selfCopy _updateRecordWithGroupID:d store:v29 name:recordName record:encodedData uuid:uUIDString parentUUID:uUIDString2 type:bsoType data:dataCopy encoding:encodingCopy schema:v26];
  }

  return v21;
}

- (id)_updateRecordWithGroupID:(int64_t)d store:(int64_t)store name:(id)name record:(id)record uuid:(id)uuid parentUUID:(id)iD type:(id)type data:(id)self0 encoding:(int64_t)self1 schema:(id)self2
{
  v81 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  recordCopy = record;
  uuidCopy = uuid;
  iDCopy = iD;
  typeCopy = type;
  dataCopy = data;
  schemaCopy = schema;
  insertRecord = self->insertRecord;
  v66 = 0;
  dCopy = d;
  bindIntSQLite3(insertRecord, 1, d, &v66);
  v23 = v66;
  v24 = self->insertRecord;
  v65 = v23;
  v55 = nameCopy;
  bindStringSQLite3(v24, 2, nameCopy, &v65);
  v25 = v65;

  v26 = self->insertRecord;
  v64 = v25;
  v54 = recordCopy;
  bindDataSQLite3(v26, 3, recordCopy, &v64);
  v27 = v64;

  v28 = self->insertRecord;
  v63 = v27;
  bindStringSQLite3(v28, 4, uuidCopy, &v63);
  v29 = v63;

  v30 = self->insertRecord;
  v62 = v29;
  bindStringSQLite3(v30, 5, iDCopy, &v62);
  v31 = v62;

  v32 = self->insertRecord;
  v61 = v31;
  bindDataSQLite3(v32, 6, dataCopy, &v61);
  v33 = v61;

  v34 = self->insertRecord;
  v60 = v33;
  bindIntSQLite3(v34, 7, encoding, &v60);
  v35 = v60;

  v36 = self->insertRecord;
  v59 = v35;
  bindStringSQLite3(v36, 8, typeCopy, &v59);
  v37 = v59;

  v38 = self->insertRecord;
  v58 = v37;
  bindStringSQLite3(v38, 9, schemaCopy, &v58);
  v39 = v58;

  v40 = self->insertRecord;
  v57 = v39;
  bindIntSQLite3(v40, 10, store, &v57);
  v41 = v57;

  v42 = objc_autoreleasePoolPush();
  selfCopy = self;
  v44 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v46 = v45 = schemaCopy;
    *buf = 138544898;
    v68 = v46;
    v69 = 2048;
    v70 = dCopy;
    v71 = 2112;
    v72 = v55;
    v73 = 2112;
    v74 = uuidCopy;
    v75 = 2112;
    v76 = iDCopy;
    v77 = 2112;
    v78 = typeCopy;
    v79 = 2112;
    v80 = v45;
    _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_DEBUG, "%{public}@Inserting/Updating record group: %lu, name: %@, uuid: %@, parent: %@, type: %@, schema: %@", buf, 0x48u);

    schemaCopy = v45;
  }

  objc_autoreleasePoolPop(v42);
  if (v41)
  {
    v47 = v41;
  }

  else
  {
    v47 = execSQLite3(self->insertRecord);
  }

  v48 = v47;

  v49 = *MEMORY[0x277D85DE8];

  return v48;
}

- (id)_fetchGroupsForZone:(id)zone withError:(id *)error
{
  zoneCopy = zone;
  [MEMORY[0x277CBEB18] array];
  v24 = v23 = zoneCopy;
  bindIntSQLite3(self->selectGroups, 1, [zoneCopy zoneID], error);
  if (*error)
  {
LABEL_15:
    v20 = 0;
    goto LABEL_16;
  }

  errorCopy = error;
  while (1)
  {
    v7 = sqlite3_step(self->selectGroups);
    if (v7 != 100)
    {
      break;
    }

    v8 = sqlite3_column_int64(self->selectGroups, 0);
    if (v8)
    {
      v9 = v8;
      v10 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectGroups column:1];
      v11 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectGroups column:2];
      v12 = [MEMORY[0x277CBEA90] dataWithSQLite3Column:self->selectGroups column:3];
      v13 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectGroups column:4];
      v14 = [MEMORY[0x277CBEA90] dataWithSQLite3Column:self->selectGroups column:5];
      v15 = v14;
      if (v12)
      {
        v16 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v12 error:errorCopy];
        if (v15)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v16 = 0;
        if (v14)
        {
LABEL_7:
          v17 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v15 error:errorCopy];
          goto LABEL_10;
        }
      }

      v17 = 0;
LABEL_10:
      v18 = [[HMDBackingStoreCacheGroup alloc] initWithGroupID:v9 zone:v23 rootRecord:v10 serverChangeToken:v16 subscriptionName:v13 owner:v11 subscription:v17];
      [v24 addObject:v18];
    }
  }

  if (v7 != 101)
  {
    *errorCopy = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectGroups];
  }

  if (!sqlite3_reset(self->selectGroups))
  {
    if (!*errorCopy)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v19 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectGroups];
  *errorCopy = v19;
  if (v19)
  {
    goto LABEL_15;
  }

LABEL_20:
  v20 = v24;
LABEL_16:

  return v20;
}

- (id)_updateGroupWithID:(int64_t)d subscription:(id)subscription
{
  updateGroupSubscription = self->updateGroupSubscription;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:subscription requiringSecureCoding:1 error:0];
  v15 = 0;
  bindDataSQLite3(updateGroupSubscription, 1, v7, &v15);
  v8 = v15;

  v9 = self->updateGroupSubscription;
  v14 = v8;
  bindIntSQLite3(v9, 2, d, &v14);
  v10 = v14;

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = execSQLite3(self->updateGroupSubscription);
  }

  v12 = v11;

  return v12;
}

- (id)_updateGroupWithID:(int64_t)d serverChangeToken:(id)token
{
  updateGroupToken = self->updateGroupToken;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:token requiringSecureCoding:1 error:0];
  v15 = 0;
  bindDataSQLite3(updateGroupToken, 1, v7, &v15);
  v8 = v15;

  v9 = self->updateGroupToken;
  v14 = v8;
  bindIntSQLite3(v9, 2, d, &v14);
  v10 = v14;

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = execSQLite3(self->updateGroupToken);
  }

  v12 = v11;

  return v12;
}

- (id)_deleteGroupWithID:(int64_t)d
{
  if (d)
  {
    deleteGroup = self->deleteGroup;
    v8 = 0;
    bindIntSQLite3(deleteGroup, 1, d, &v8);
    v6 = v8;
    if (!v6)
    {
      v6 = execSQLite3(self->deleteGroup);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)_insertGroupWithZoneID:(int64_t)d root:(id)root owner:(id)owner subscription:(id)subscription error:(id *)error
{
  insertGroup = self->insertGroup;
  subscriptionCopy = subscription;
  ownerCopy = owner;
  rootCopy = root;
  bindIntSQLite3(insertGroup, 1, d, error);
  bindStringSQLite3(self->insertGroup, 2, rootCopy, error);

  bindStringSQLite3(self->insertGroup, 3, ownerCopy, error);
  bindStringSQLite3(self->insertGroup, 4, subscriptionCopy, error);

  if (*error)
  {
    return 0;
  }

  v17 = self->insertGroup;

  return steplastrowresetSQLite3(v17, error);
}

- (id)_fetchZonesWithError:(id *)error
{
  array = [MEMORY[0x277CBEB18] array];
  while (1)
  {
    v6 = sqlite3_step(self->selectZones);
    if (v6 != 100)
    {
      break;
    }

    v7 = sqlite3_column_int64(self->selectZones, 0);
    v8 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectZones column:1];
    if (v7)
    {
      v9 = [[HMDBackingStoreCacheZone alloc] initWithZoneID:v7 name:v8];
      [array addObject:v9];
    }
  }

  if (v6 == 101)
  {
    if (sqlite3_reset(self->selectZones))
    {
      if (error)
      {
        v10 = MEMORY[0x277CCA9B8];
LABEL_15:
        [v10 errorWithSQLite3Statement:self->selectZones];
        *error = v12 = 0;
        goto LABEL_18;
      }

      v12 = 0;
    }

    else
    {
      v12 = array;
    }
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectZones];
    }

    v11 = sqlite3_reset(self->selectZones);
    v12 = 0;
    if (error && v11)
    {
      v10 = MEMORY[0x277CCA9B8];
      goto LABEL_15;
    }
  }

LABEL_18:

  return v12;
}

- (id)_deleteZoneWithID:(int64_t)d
{
  if (d)
  {
    deleteZone = self->deleteZone;
    v8 = 0;
    bindIntSQLite3(deleteZone, 1, d, &v8);
    v6 = v8;
    if (!v6)
    {
      v6 = execSQLite3(self->deleteZone);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)_insertZoneWithName:(id)name error:(id *)error
{
  bindStringSQLite3(self->insertZone, 1, name, error);
  if (*error)
  {
    return 0;
  }

  insertZone = self->insertZone;

  return steplastrowresetSQLite3(insertZone, error);
}

- (id)_fillZoneCache
{
  v22 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v3 = [(HMDBackingStoreLocal *)self _fetchZonesWithError:&v20];
  v4 = v20;
  if (!v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v15 = 0;
          v11 = [(HMDBackingStoreLocal *)self _fetchGroupsForZone:v10 withError:&v15];
          v12 = v15;
          [v10 setActualGroups:v11];

          if (v12)
          {
            v4 = v12;

            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    [(HMDBackingStoreLocal *)self setZoneCache:v5];
    v4 = 0;
  }

LABEL_12:

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (unint64_t)_fetchIDForStore:(id)store error:(id *)error
{
  storeCopy = store;
  storeCache = [(HMDBackingStoreLocal *)self storeCache];
  v8 = [storeCache objectForKey:storeCopy];

  if (v8)
  {
    unsignedIntegerValue = [v8 unsignedIntegerValue];
  }

  else
  {
    insertStore = self->insertStore;
    v19 = 0;
    bindStringSQLite3(insertStore, 1, storeCopy, &v19);
    v11 = v19;
    v12 = self->insertStore;
    v18 = v11;
    unsignedIntegerValue = steplastrowresetSQLite3(v12, &v18);
    v13 = v18;

    if (error)
    {
      v14 = v13;
      *error = v13;
    }

    if (v13)
    {
      unsignedIntegerValue = 0;
    }

    else
    {
      storeCache2 = [(HMDBackingStoreLocal *)self storeCache];
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:unsignedIntegerValue];
      [storeCache2 setObject:v16 forKey:storeCopy];
    }
  }

  return unsignedIntegerValue;
}

- (id)_fetchUncommittedAndPushedTransactions
{
  connection = self->connection;
  v6 = 0;
  v3 = selectSQLite3(connection, "SELECT id, xact_id, pushed, data, type, encoding, root FROM xact WHERE ((pushed & 0xffff0000) >> 16) != 0 AND disk_committed=0 ORDER BY root, xact_id, id", MEMORY[0x277CBEC10], &v6);;
  v4 = [v3 na_map:&__block_literal_global_179737];

  return v4;
}

HMDBackingStoreLogRecord *__62__HMDBackingStoreLocal__fetchUncommittedAndPushedTransactions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMDBackingStoreLogRecord alloc] initWithArray:v2];

  return v3;
}

- (id)_dropUncommittedUnpushedTransactions
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = runSQLite3(self->connection, "DELETE FROM xact WHERE ((pushed & 0xffff0000) >> 16) = 0 AND disk_committed=0");
  if (!v3)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Dropped transactions that were not committed to disk.", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v3;
}

- (int64_t)_numUncommittedTransactions
{
  v25 = *MEMORY[0x277D85DE8];
  connection = self->connection;
  v20 = 0;
  v4 = selectSQLite3(connection, "SELECT count(*) FROM xact WHERE disk_committed=0", MEMORY[0x277CBEC10], &v20);;
  v5 = v20;
  if (![v4 count])
  {
    goto LABEL_12;
  }

  v6 = [v4 objectAtIndexedSubscript:0];
  v7 = [v6 count];

  if (!v7 || v5 != 0)
  {
    goto LABEL_12;
  }

  v9 = [v4 objectAtIndexedSubscript:0];
  v10 = [v9 objectAtIndexedSubscript:0];

  objc_opt_class();
  v11 = (objc_opt_isKindOfClass() & 1) != 0 ? v10 : 0;
  v12 = v11;

  if (v12)
  {
    integerValue = [v12 integerValue];
  }

  else
  {
LABEL_12:
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine number of uncommitted transactions %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    integerValue = -1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return integerValue;
}

- (id)_fillStoreCache
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  while (1)
  {
    v4 = sqlite3_step(self->selectStores);
    if (v4 != 100)
    {
      break;
    }

    v5 = sqlite3_column_int64(self->selectStores, 0);
    v6 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:self->selectStores column:1];
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
    [dictionary setValue:v7 forKey:v6];
  }

  if (v4 == 101)
  {
    if (sqlite3_reset(self->selectZones))
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectZones];
    }

    else
    {
      [(HMDBackingStoreLocal *)self setStoreCache:dictionary];
      v8 = 0;
    }
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectZones];
    if (sqlite3_reset(self->selectZones))
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectZones];

      v8 = v9;
    }
  }

  return v8;
}

- (void)_rollback
{
  v14 = *MEMORY[0x277D85DE8];
  connection = self->connection;
  if (connection && !sqlite3_get_autocommit(connection))
  {
    v4 = execSQLite3(self->rollback);
    if (v4)
    {
      v5 = objc_autoreleasePoolPush();
      selfCopy = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = HMFGetLogIdentifier();
        v10 = 138543618;
        v11 = v8;
        v12 = 2112;
        v13 = v4;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@ROLLBACK FAILED!: %@", &v10, 0x16u);
      }

      objc_autoreleasePoolPop(v5);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_commit
{
  if (sqlite3_get_autocommit(self->connection))
  {
    v3 = 0;
  }

  else
  {
    v3 = execSQLite3(self->commit);
  }

  return v3;
}

- (id)_instantiateResources:(BOOL)resources migrate:(BOOL)migrate
{
  resourcesCopy = resources;
  v386 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    datastoreFile = [(HMDBackingStoreLocal *)selfCopy datastoreFile];
    *buf = 138543618;
    v381 = v10;
    v382 = 2112;
    v383 = datastoreFile;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@SQLite datastore file: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  datastoreFile2 = [(HMDBackingStoreLocal *)selfCopy datastoreFile];

  if (!datastoreFile2)
  {
    _fillStoreCache = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    goto LABEL_31;
  }

  sqlite3_initialize();
  if (resourcesCopy)
  {
    datastoreFile3 = [(HMDBackingStoreLocal *)selfCopy datastoreFile];
    unlink([datastoreFile3 UTF8String]);
  }

  datastoreFile4 = [(HMDBackingStoreLocal *)selfCopy datastoreFile];
  v15 = sqlite3_open_v2([datastoreFile4 UTF8String], &selfCopy->connection, 2, 0);

  datastoreFile5 = [(HMDBackingStoreLocal *)selfCopy datastoreFile];
  v17 = datastoreFile5;
  if (!v15)
  {
    v21 = [datastoreFile5 isEqualToString:@":memory:"];

    if (v21)
    {
      datastoreFile6 = [(HMDBackingStoreLocal *)selfCopy datastoreFile];
      v23 = [(HMDBackingStoreLocal *)selfCopy _createDatastoreTables:datastoreFile6];

      if (v23)
      {
        v19 = v23;
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    connection = selfCopy->connection;
    v378 = 0;
    v27 = selectSQLite3(connection, "PRAGMA user_version", MEMORY[0x277CBEC10], &v378);;
    v328 = v378;
    firstObject = [v27 firstObject];
    v28FirstObject = [firstObject firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v28FirstObject;
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;

    v32 = objc_autoreleasePoolPush();
    v33 = selfCopy;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v381 = v35;
      v382 = 2112;
      v383 = v31;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@Current schema version: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    if ([v31 unsignedIntegerValue] == 2)
    {
LABEL_21:

      v25 = v328;
LABEL_22:
      v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA cache_size = %@", &unk_283E73880];;
      v37 = runSQLite3(selfCopy->connection, [v36 UTF8String]);

      if (v37)
      {
        v38 = objc_autoreleasePoolPush();
        v39 = selfCopy;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = HMFGetLogIdentifier();
          *buf = 138543874;
          v381 = v41;
          v382 = 2048;
          v383 = 512;
          v384 = 2112;
          v385 = v37;
          _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Unable to set sqlite cache size to %ld: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v38);
        v42 = v37;
      }

      else
      {
        v43 = runSQLite3(selfCopy->connection, "PRAGMA foreign_keys = ON");;
        if (!v43)
        {
          v64 = selfCopy->connection;
          v376 = 0;
          v65 = selectSQLite3(v64, "PRAGMA journal_mode=WAL", MEMORY[0x277CBEC10], &v376);;
          v66 = v376;
          if (v66 || [v65 count])
          {
            v67 = objc_autoreleasePoolPush();
            v68 = selfCopy;
            v69 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
            {
              v70 = HMFGetLogIdentifier();
              firstObject2 = [v65 firstObject];
              v71FirstObject = [firstObject2 firstObject];
              *buf = 138543874;
              v381 = v70;
              v382 = 2112;
              v383 = v71FirstObject;
              v384 = 2112;
              v385 = v66;
              _os_log_impl(&dword_229538000, v69, OS_LOG_TYPE_DEFAULT, "%{public}@turning on WAL resulted in %@ / %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v67);
          }

          v73 = selfCopy->connection;
          v375 = v66;
          v74 = prepareSQLite3(v73, "BEGIN;", &v375);
          v75 = v375;

          selfCopy->begin = v74;
          v76 = selfCopy->connection;
          v374 = v75;
          v77 = prepareSQLite3(v76, "COMMIT;", &v374);
          v78 = v374;

          selfCopy->commit = v77;
          v79 = selfCopy->connection;
          v373 = v78;
          v80 = prepareSQLite3(v79, "ROLLBACK;", &v373);
          v81 = v373;

          selfCopy->rollback = v80;
          v82 = selfCopy->connection;
          v372 = v81;
          v83 = prepareSQLite3(v82, "INSERT INTO zone (name) values (?1)", &v372);
          v84 = v372;

          selfCopy->insertZone = v83;
          v85 = selfCopy->connection;
          v371 = v84;
          v86 = prepareSQLite3(v85, "DELETE FROM zone WHERE id=?1;", &v371);
          v87 = v371;

          selfCopy->deleteZone = v86;
          v88 = selfCopy->connection;
          v370 = v87;
          v89 = prepareSQLite3(v88, "SELECT id, name FROM zone;", &v370);
          v90 = v370;

          selfCopy->selectZones = v89;
          v91 = selfCopy->connection;
          v369 = v90;
          v92 = prepareSQLite3(v91, "INSERT INTO store (name) values (?1)", &v369);
          v93 = v369;

          selfCopy->insertStore = v92;
          v94 = selfCopy->connection;
          v368 = v93;
          v95 = prepareSQLite3(v94, "SELECT id, name FROM store;", &v368);
          v96 = v368;

          selfCopy->selectStores = v95;
          v97 = selfCopy->connection;
          v367 = v96;
          v98 = prepareSQLite3(v97, "INSERT INTO zone_group (zone_id, root, owner, subscription) VALUES (?1, ?2, ?3, ?4);", &v367);
          v99 = v367;

          selfCopy->insertGroup = v98;
          v100 = selfCopy->connection;
          v366 = v99;
          v101 = prepareSQLite3(v100, "DELETE FROM zone_group WHERE id=?1;", &v366);
          v102 = v366;

          selfCopy->deleteGroup = v101;
          v103 = selfCopy->connection;
          v365 = v102;
          v104 = prepareSQLite3(v103, "UPDATE zone_group SET token=?1 WHERE id=?2;", &v365);
          v105 = v365;

          selfCopy->updateGroupToken = v104;
          v106 = selfCopy->connection;
          v364 = v105;
          v107 = prepareSQLite3(v106, "UPDATE zone_group SET subscription_data=?1 WHERE id=?2;", &v364);
          v108 = v364;

          selfCopy->updateGroupSubscription = v107;
          v109 = selfCopy->connection;
          v363 = v108;
          v110 = prepareSQLite3(v109, "SELECT id, root, owner, token, subscription, subscription_data FROM zone_group where zone_id=?1", &v363);
          v111 = v363;

          selfCopy->selectGroups = v110;
          v112 = selfCopy->connection;
          v362 = v111;
          v113 = prepareSQLite3(v112, "INSERT INTO zone_share (group_id, root, target) VALUES (?1, ?2, ?3);", &v362);
          v114 = v362;

          selfCopy->insertShare = v113;
          v115 = selfCopy->connection;
          v361 = v114;
          v116 = prepareSQLite3(v115, "DELETE FROM zone_share WHERE id=?1;", &v361);
          v117 = v361;

          selfCopy->deleteShare = v116;
          v118 = selfCopy->connection;
          v360 = v117;
          v119 = prepareSQLite3(v118, "UPDATE zone_share SET share=?1 WHERE id=?2;", &v360);
          v120 = v360;

          selfCopy->updateShareShare = v119;
          v121 = selfCopy->connection;
          v359 = v120;
          v122 = prepareSQLite3(v121, "UPDATE zone_share SET users=?1 WHERE id=?2;", &v359);
          v123 = v359;

          selfCopy->updateShareUsers = v122;
          v124 = selfCopy->connection;
          v358 = v123;
          v125 = prepareSQLite3(v124, "SELECT id, root, target, share, users FROM zone_share WHERE group_id=?1;", &v358);
          v126 = v358;

          selfCopy->selectShares = v125;
          v127 = selfCopy->connection;
          v357 = v126;
          v128 = prepareSQLite3(v127, "INSERT OR REPLACE INTO record (group_id, share_id, name, record, uuid, parent_uuid, data, encoding, type, schema, store_id) VALUES (?1, 0, ?2, ?3, ?4, ?5, ?6, ?7, ?8, ?9, ?10);", &v357);
          v129 = v357;

          selfCopy->insertRecord = v128;
          v130 = selfCopy->connection;
          v356 = v129;
          v131 = prepareSQLite3(v130, "UPDATE record SET schema = ?3 where group_id = ?1 and name = ?2;", &v356);
          v132 = v356;

          selfCopy->updateRecordSchema = v131;
          v133 = selfCopy->connection;
          v355 = v132;
          v134 = prepareSQLite3(v133, "SELECT count(*) FROM record WHERE group_id=?1;", &v355);
          v135 = v355;

          selfCopy->selectRecordCountGroup = v134;
          v136 = selfCopy->connection;
          v354 = v135;
          v137 = prepareSQLite3(v136, "SELECT type, schema FROM record WHERE group_id=?1 GROUP BY type, schema;", &v354);
          v138 = v354;

          selfCopy->selectRecordGroupTypeSchema = v137;
          v139 = selfCopy->connection;
          v353 = v138;
          v140 = prepareSQLite3(v139, "SELECT name, record, encoding, data, uuid, parent_uuid, type, schema FROM record WHERE group_id=?1;", &v353);
          v141 = v353;

          selfCopy->selectRecordGroup = v140;
          v142 = selfCopy->connection;
          v352 = v141;
          v143 = prepareSQLite3(v142, "SELECT name, uuid, parent_uuid, type FROM record WHERE group_id=?1;", &v352);
          v144 = v352;

          selfCopy->selectRecordGroupMap = v143;
          v145 = selfCopy->connection;
          v351 = v144;
          v146 = prepareSQLite3(v145, "SELECT record, data, encoding, uuid FROM record WHERE group_id=?2 AND uuid=?1;", &v351);
          v147 = v351;

          selfCopy->selectRecordUUID = v146;
          v148 = selfCopy->connection;
          v350 = v147;
          v149 = prepareSQLite3(v148, "SELECT record, data, encoding, uuid FROM record WHERE group_id=?2 AND parent_uuid=?1;", &v350);
          v150 = v350;

          selfCopy->selectRecordParentUUID = v149;
          v151 = selfCopy->connection;
          v349 = v150;
          v152 = prepareSQLite3(v151, "SELECT record, data, encoding, uuid FROM record WHERE group_id=?3 and parent_uuid=?1 and type=?2;", &v349);
          v153 = v349;

          selfCopy->selectRecordParent = v152;
          v154 = selfCopy->connection;
          v348 = v153;
          v155 = prepareSQLite3(v154, "SELECT record, data, encoding, uuid FROM record WHERE group_id=?2 AND name=?1;", &v348);
          v156 = v348;

          selfCopy->selectRecordName = v155;
          v157 = selfCopy->connection;
          v347 = v156;
          v158 = prepareSQLite3(v157, "SELECT record, data, encoding, uuid FROM record WHERE uuid=?1;", &v347);
          v159 = v347;

          selfCopy->selectRecordUUIDNoShare = v158;
          v160 = selfCopy->connection;
          v346 = v159;
          v161 = prepareSQLite3(v160, "SELECT record, data, encoding, uuid FROM record WHERE parent_uuid=?1 and type=?2;", &v346);
          v162 = v346;

          selfCopy->selectRecordParentNoShare = v161;
          v163 = selfCopy->connection;
          v345 = v162;
          v164 = prepareSQLite3(v163, "SELECT record, data, encoding, uuid FROM record WHERE name=?1;", &v345);
          v165 = v345;

          selfCopy->selectRecordNameNoShare = v164;
          v166 = selfCopy->connection;
          v344 = v165;
          v167 = prepareSQLite3(v166, "DELETE FROM record WHERE group_id=?2 AND name=?1;", &v344);
          v168 = v344;

          selfCopy->deleteRecord = v167;
          v169 = selfCopy->connection;
          v343 = v168;
          v170 = prepareSQLite3(v169, "SELECT name, group_id, share_id, uuid, parent_uuid, encoding, data, record FROM record ORDER BY group_id, share_id, record;", &v343);
          v171 = v343;

          selfCopy->selectRecords = v170;
          v172 = selfCopy->connection;
          v342 = v171;
          v173 = prepareSQLite3(v172, "SELECT name, group_id, share_id, encoding, data, record, schema FROM record WHERE store_id=?1 ORDER BY group_id, share_id, name;", &v342);
          v174 = v342;

          selfCopy->selectStoreRecords = v173;
          v175 = selfCopy->connection;
          v341 = v174;
          v176 = prepareSQLite3(v175, "UPDATE xact SET xact_id=?1 WHERE id=?1;", &v341);
          v177 = v341;

          selfCopy->updateLogXactID = v176;
          v178 = selfCopy->connection;
          v340 = v177;
          v179 = prepareSQLite3(v178, "INSERT INTO xact (pushed, root, data, xact_id, type, encoding, disk_committed) VALUES (?1, ?2, ?3, ?4, ?5, ?6, 0);", &v340);
          v180 = v340;

          selfCopy->insertLog = v179;
          v181 = selfCopy->connection;
          v339 = v180;
          v182 = prepareSQLite3(v181, "UPDATE xact SET disk_committed=1;", &v339);
          v183 = v339;

          selfCopy->updateLogToDiskCommited = v182;
          v184 = selfCopy->connection;
          v338 = v183;
          v185 = prepareSQLite3(v184, "SELECT id, xact_id, pushed, data, type, encoding FROM xact WHERE root=?1 AND (pushed & ?2) = ?3 AND xact_id>?4 ORDER BY xact_id, id;", &v338);
          v186 = v338;

          selfCopy->selectLog = v185;
          v187 = selfCopy->connection;
          v337 = v186;
          v188 = prepareSQLite3(v187, "SELECT id, xact_id, root FROM xact WHERE (pushed & ?1) = ?2 ORDER BY xact_id, id;", &v337);
          v189 = v337;

          selfCopy->selectChangeExistsLog = v188;
          v190 = selfCopy->connection;
          v336 = v189;
          v191 = prepareSQLite3(v190, "SELECT id, xact_id, pushed, root, data, type, encoding FROM xact ORDER BY root, xact_id, id;", &v336);
          v192 = v336;

          selfCopy->selectAllLog = v191;
          v193 = selfCopy->connection;
          v335 = v192;
          v194 = prepareSQLite3(v193, "INSERT INTO xact_block (id, data) VALUES (?1, ?2);", &v335);
          v195 = v335;

          selfCopy->insertLogOptions = v194;
          v196 = selfCopy->connection;
          v334 = v195;
          v197 = prepareSQLite3(v196, "SELECT data FROM xact_block WHERE id = ?1;", &v334);
          v198 = v334;

          selfCopy->selectLogOptions = v197;
          v199 = selfCopy->connection;
          v333 = v198;
          v200 = prepareSQLite3(v199, "UPDATE xact SET pushed=(((pushed & ?1) | ?2) | (pushed & ~?1)) WHERE id=?3;", &v333);
          v201 = v333;

          selfCopy->updateLog = v200;
          v202 = selfCopy->connection;
          v332 = v201;
          v203 = prepareSQLite3(v202, "DELETE FROM xact WHERE id=?1;", &v332);
          v204 = v332;

          selfCopy->deleteLog = v203;
          v205 = selfCopy->connection;
          v331 = v204;
          v206 = prepareSQLite3(v205, "DELETE FROM xact WHERE ((pushed & 0xffff0000 >> 16) = (pushed & 0x0000ffff)) AND disk_committed=1", &v331);
          v207 = v331;

          selfCopy->flushPushedXact = v206;
          v208 = selfCopy->connection;
          v330 = v207;
          v209 = prepareSQLite3(v208, "REPLACE INTO archive VALUES(?1, ?2, ?3)", &v330);
          v210 = v330;

          selfCopy->insertArchive = v209;
          v211 = selfCopy->connection;
          v329 = v210;
          v212 = prepareSQLite3(v211, "SELECT identifier, controller_username, value from archive where identifier=?1;", &v329);
          v213 = v329;

          selfCopy->selectArchive = v212;
          if (v213)
          {
            v214 = objc_autoreleasePoolPush();
            v215 = selfCopy;
            v216 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v216, OS_LOG_TYPE_ERROR))
            {
              v217 = HMFGetLogIdentifier();
              *buf = 138543618;
              v381 = v217;
              v382 = 2112;
              v383 = v213;
              _os_log_impl(&dword_229538000, v216, OS_LOG_TYPE_ERROR, "%{public}@unable to prepare SQL statements: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v214);
            v218 = v213;
          }

          else
          {
            if ([(HMDBackingStoreLocal *)selfCopy _numUncommittedTransactions]>= 1)
            {
              v248 = objc_autoreleasePoolPush();
              v249 = selfCopy;
              v250 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v250, OS_LOG_TYPE_ERROR))
              {
                v251 = HMFGetLogIdentifier();
                *buf = 138543362;
                v381 = v251;
                _os_log_impl(&dword_229538000, v250, OS_LOG_TYPE_ERROR, "%{public}@We crashed after running transaction but before saving to disk.", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v248);
            }

            _fillZoneCache = [(HMDBackingStoreLocal *)selfCopy _fillZoneCache];
            if (!_fillZoneCache)
            {
              _fillStoreCache = [(HMDBackingStoreLocal *)selfCopy _fillStoreCache];

              v24 = 0;
              goto LABEL_29;
            }

            v218 = _fillZoneCache;
          }

          v24 = v218;

          _fillStoreCache = v24;
LABEL_29:

          goto LABEL_30;
        }

        v42 = v43;
      }

      v24 = v42;
      _fillStoreCache = v42;
      goto LABEL_29;
    }

    v325 = v31;
    v46 = objc_autoreleasePoolPush();
    v47 = v33;
    v48 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = HMFGetLogIdentifier();
      *buf = 138543362;
      v381 = v49;
      _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_DEFAULT, "%{public}@Validating database.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v46);
    v50 = selfCopy->connection;
    v51 = v328;
    v377 = v328;
    v52 = v47;
    v53 = selectSQLite3(v50, "SELECT name FROM sqlite_master WHERE type='table' AND name='xact_block'", MEMORY[0x277CBEC10], &v377);
    v54 = v53;
    v55 = v377;
    if (v53)
    {
      v56 = v377 == 0;
    }

    else
    {
      v56 = 0;
    }

    v57 = !v56;
    v323 = v57;
    v327 = v52;
    v326 = v27;
    if (v56)
    {
      if (![v53 count])
      {
        v377 = runSQLite3(v50, "CREATE TABLE xact_block (id INTEGER PRIMARY KEY, data BLOB NOT NULL)");;
        if (v377)
        {
LABEL_74:
          v238 = 0;
          goto LABEL_75;
        }
      }
    }

    else
    {
      v58 = objc_autoreleasePoolPush();
      v59 = v52;
      v60 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v61 = HMFGetLogIdentifier();
        *buf = 138543874;
        v381 = v61;
        v382 = 2112;
        v383 = v54;
        v384 = 2112;
        v385 = v55;
        _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_ERROR, "%{public}@initial migration test failed with result / error: %@ / %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v58);
      userInfo = [v55 userInfo];
      v63 = [userInfo objectForKey:@"extcode"];
      if ([v63 isEqual:&unk_283E738B0])
      {

        v52 = v327;
      }

      else
      {
        userInfo2 = [v55 userInfo];
        v220 = [userInfo2 objectForKey:@"extcode"];
        v221 = [v220 isEqual:&unk_283E738C8];

        v52 = v327;
        if (!v221)
        {
          [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
          v377 = v238 = 0;
          goto LABEL_75;
        }
      }

      if (isInternalBuild())
      {
        v222 = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:"/var/mobile/Library/homed" isDirectory:1 relativeToURL:0];
        v223 = +[HMDTTRManager sharedManager];
        v379 = v222;
        v224 = [MEMORY[0x277CBEA60] arrayWithObjects:&v379 count:1];
        [v223 requestRadarWithDisplayReason:@"internal database is corrupt" radarTitle:@"Internal Database Corruption Detected" componentName:@"HomeKit" componentVersion:@"New Bugs" componentID:590644 attachments:v224];

        v52 = v327;
      }
    }

    v225 = selectSQLite3(v50, "SELECT name FROM sqlite_master WHERE type='index' AND name='xact_pushed2'", MEMORY[0x277CBEC10], &v377);

    v226 = v377;
    if (v377)
    {
      v227 = objc_autoreleasePoolPush();
      v228 = v52;
      v229 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v229, OS_LOG_TYPE_ERROR))
      {
        v230 = HMFGetLogIdentifier();
        v231 = [v225 count];
        *buf = 138543874;
        v381 = v230;
        v382 = 2048;
        v383 = v231;
        v384 = 2112;
        v385 = v226;
        _os_log_impl(&dword_229538000, v229, OS_LOG_TYPE_ERROR, "%{public}@xact_pushed2 migration test failed with result %lu items %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v227);
      v52 = v327;
    }

    else if (![v225 count])
    {
      v377 = runSQLite3(v50, "CREATE INDEX xact_pushed2 ON xact(root, xact_id, id)");;
      if (v377)
      {
        v238 = 0;
        v54 = v225;
        goto LABEL_75;
      }
    }

    v54 = selectSQLite3(v50, "SELECT subscription_data FROM zone_group WHERE subscription_data IS NOT NULL LIMIT 1", MEMORY[0x277CBEC10], &v377);

    v232 = v377;
    if (!v54 || v377)
    {
      v233 = objc_autoreleasePoolPush();
      v234 = v52;
      v235 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v235, OS_LOG_TYPE_ERROR))
      {
        v236 = HMFGetLogIdentifier();
        v237 = [v54 count];
        *buf = 138543874;
        v381 = v236;
        v382 = 2048;
        v383 = v237;
        v384 = 2112;
        v385 = v232;
        _os_log_impl(&dword_229538000, v235, OS_LOG_TYPE_ERROR, "%{public}@zone_group.subscription_data migration test failed with result %lu items %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v233);
      v52 = v327;
      if (v232)
      {
        v377 = runSQLite3(v50, "ALTER TABLE zone_group ADD COLUMN subscription_data BLOB");;
        if (v377)
        {
          goto LABEL_74;
        }
      }
    }

    v377 = runSQLite3(v50, "CREATE TABLE IF NOT EXISTS archive (identifier string primary key, controller_username string not null, value blob not null)");;
    if (v377)
    {
      goto LABEL_74;
    }

    v253 = selectSQLite3(v50, "SELECT disk_committed FROM xact WHERE id IS NOT NULL LIMIT 1", MEMORY[0x277CBEC10], &v377);

    v254 = v377;
    if (!v253 || v377)
    {
      v255 = objc_autoreleasePoolPush();
      v256 = v52;
      v257 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v257, OS_LOG_TYPE_ERROR))
      {
        v258 = HMFGetLogIdentifier();
        v259 = [v253 count];
        *buf = 138543874;
        v381 = v258;
        v382 = 2048;
        v383 = v259;
        v384 = 2112;
        v385 = v254;
        _os_log_impl(&dword_229538000, v257, OS_LOG_TYPE_ERROR, "%{public}@xact.disk_committed migration test failed with result %lu items %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v255);
      v52 = v327;
      if (v254)
      {
        v377 = runSQLite3(v50, "ALTER TABLE xact ADD COLUMN disk_committed INTEGER NOT NULL DEFAULT 1");;
        if (v377)
        {
          v238 = 0;
          v54 = v253;
          goto LABEL_75;
        }
      }
    }

    v262 = selectSQLite3(v50, "SELECT schema FROM record WHERE data IS NOT NULL LIMIT 1", MEMORY[0x277CBEC10], &v377);

    v263 = v377;
    if (!v262 || v377)
    {
      v264 = objc_autoreleasePoolPush();
      v265 = v52;
      v266 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v266, OS_LOG_TYPE_ERROR))
      {
        v267 = HMFGetLogIdentifier();
        v268 = [v262 count];
        *buf = 138543874;
        v381 = v267;
        v382 = 2048;
        v383 = v268;
        v384 = 2112;
        v385 = v263;
        _os_log_impl(&dword_229538000, v266, OS_LOG_TYPE_ERROR, "%{public}@record.schema migration test failed with result %lu items %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v264);
      v323 = 1;
      v52 = v327;
    }

    v269 = selectSQLite3(v50, "SELECT name FROM sqlite_master WHERE type='table' AND name='zone_group'", MEMORY[0x277CBEC10], &v377);

    v270 = v377;
    if (!v269 || v377)
    {
      v271 = objc_autoreleasePoolPush();
      v272 = v52;
      v273 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v273, OS_LOG_TYPE_ERROR))
      {
        v274 = HMFGetLogIdentifier();
        v275 = [v269 count];
        *buf = 138543874;
        v381 = v274;
        v382 = 2048;
        v383 = v275;
        v384 = 2112;
        v385 = v270;
        _os_log_impl(&dword_229538000, v273, OS_LOG_TYPE_ERROR, "%{public}@zone_group migration test failed with result %lu items %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v271);
      v52 = v327;
    }

    if ([v269 count])
    {
      v276 = v323;
    }

    else
    {
      v276 = 1;
    }

    v277 = selectSQLite3(v50, "SELECT type FROM record WHERE uuid = ''", MEMORY[0x277CBEC10], &v377);

    v278 = v377;
    if (!v277 || v377)
    {
      v279 = objc_autoreleasePoolPush();
      v280 = v52;
      v281 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v281, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v282 = v324 = v279;
        v283 = [v277 count];
        *buf = 138543874;
        v381 = v282;
        v382 = 2048;
        v383 = v283;
        v384 = 2112;
        v385 = v278;
        _os_log_impl(&dword_229538000, v281, OS_LOG_TYPE_ERROR, "%{public}@record table migration test failed with result %lu items %@", buf, 0x20u);

        v279 = v324;
      }

      objc_autoreleasePoolPop(v279);
      if (!v277)
      {
        v292 = objc_autoreleasePoolPush();
        v299 = v280;
        v294 = HMFGetOSLogHandle();
        v52 = v327;
        if (os_log_type_enabled(v294, OS_LOG_TYPE_ERROR))
        {
          v300 = HMFGetLogIdentifier();
          *buf = 138543362;
          v381 = v300;
          _os_log_impl(&dword_229538000, v294, OS_LOG_TYPE_ERROR, "%{public}@record table migration test failed with nil result", buf, 0xCu);
        }

        v54 = 0;
        goto LABEL_142;
      }

      v52 = v327;
      if (v276)
      {
        goto LABEL_115;
      }
    }

    else if (v276)
    {
LABEL_115:
      v54 = v277;
      goto LABEL_143;
    }

    v54 = selectSQLite3(v50, "SELECT name FROM zone WHERE id = 0", MEMORY[0x277CBEC10], &v377);

    v284 = v377;
    if (!v54 || v377)
    {
      v285 = objc_autoreleasePoolPush();
      v286 = v52;
      v287 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v287, OS_LOG_TYPE_ERROR))
      {
        v288 = HMFGetLogIdentifier();
        v289 = [v54 count];
        *buf = 138543874;
        v381 = v288;
        v382 = 2048;
        v383 = v289;
        v384 = 2112;
        v385 = v284;
        _os_log_impl(&dword_229538000, v287, OS_LOG_TYPE_ERROR, "%{public}@zone migration test failed with result %lu items %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v285);
      v52 = v327;
    }

    if (![v54 count])
    {
      goto LABEL_143;
    }

    v290 = selectSQLite3(v50, "SELECT type FROM xact WHERE id = 0", MEMORY[0x277CBEC10], &v377);
    v291 = v377;
    if (v377)
    {
      v292 = objc_autoreleasePoolPush();
      v293 = v52;
      v294 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v294, OS_LOG_TYPE_ERROR))
      {
        v295 = HMFGetLogIdentifier();
        *buf = 138543618;
        v381 = v295;
        v382 = 2112;
        v383 = v291;
        v296 = "%{public}@xact migration test failed with result %@";
        v297 = v294;
        v298 = 22;
LABEL_141:
        _os_log_impl(&dword_229538000, v297, OS_LOG_TYPE_ERROR, v296, buf, v298);

        goto LABEL_142;
      }

      goto LABEL_142;
    }

    v301 = selectSQLite3(v50, "SELECT id FROM xact WHERE pushed < 0x0100000000000000", MEMORY[0x277CBEC10], &v377);

    v302 = v377;
    if (v377 || [v301 count])
    {
      v54 = v301;
      v292 = objc_autoreleasePoolPush();
      v303 = v52;
      v294 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v294, OS_LOG_TYPE_ERROR))
      {
        v295 = HMFGetLogIdentifier();
        v304 = [v54 count];
        *buf = 138543874;
        v381 = v295;
        v382 = 2048;
        v383 = v304;
        v384 = 2112;
        v385 = v302;
        v296 = "%{public}@xact version migration test failed with result %lu items %@";
        v297 = v294;
        v298 = 32;
        goto LABEL_141;
      }

LABEL_142:

      objc_autoreleasePoolPop(v292);
LABEL_143:
      if (migrate)
      {
        sqlite3_close(v50);
        datastoreFile7 = [(HMDBackingStoreLocal *)v52 datastoreFile];
        v306 = [(HMDBackingStoreLocal *)v52 _createNewDatastore:datastoreFile7];
        v377 = v306;

        if (v306)
        {
          if (v50)
          {
            sqlite3_close(v50);
          }

          v238 = 0;
        }

        else
        {
          v238 = 1;
        }
      }

      else
      {
        v307 = objc_autoreleasePoolPush();
        v308 = v52;
        v309 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v309, OS_LOG_TYPE_ERROR))
        {
          v310 = HMFGetLogIdentifier();
          *buf = 138543362;
          v381 = v310;
          _os_log_impl(&dword_229538000, v309, OS_LOG_TYPE_ERROR, "%{public}@want to rebuild the databse, but not allowed to.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v307);
        [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
        v377 = v238 = 0;
        v52 = v327;
      }

LABEL_75:

      v239 = v377;
      if (v238)
      {
        v240 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA user_version = %ld", 2];;
        v241 = runSQLite3(selfCopy->connection, [v240 UTF8String]);

        v242 = objc_autoreleasePoolPush();
        v243 = v52;
        v244 = HMFGetOSLogHandle();
        v245 = v244;
        if (!v241)
        {
          v260 = v244;
          v27 = v326;
          if (os_log_type_enabled(v260, OS_LOG_TYPE_DEFAULT))
          {
            v261 = HMFGetLogIdentifier();
            *buf = 138543618;
            v381 = v261;
            v382 = 2048;
            v383 = 2;
            _os_log_impl(&dword_229538000, v260, OS_LOG_TYPE_DEFAULT, "%{public}@Current schema version: %ld", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v242);
          v328 = 0;
          v31 = v325;
          goto LABEL_21;
        }

        v246 = v326;
        if (os_log_type_enabled(v244, OS_LOG_TYPE_ERROR))
        {
          v247 = HMFGetLogIdentifier();
          *buf = 138543874;
          v381 = v247;
          v382 = 2048;
          v383 = 2;
          v384 = 2112;
          v385 = v241;
          _os_log_impl(&dword_229538000, v245, OS_LOG_TYPE_ERROR, "%{public}@Unable to update schema version to %ld: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v242);
        v24 = v241;
      }

      else
      {
        v24 = v239;
        v246 = v326;
      }

      _fillStoreCache = v24;
      goto LABEL_30;
    }

    if (isInternalBuild())
    {
      v54 = selectSQLite3(v50, "select uuid, share_id, count(*) from record group by uuid, group_id having count(*)>1", MEMORY[0x277CBEC10], &v377);;

      if ([v54 count])
      {
        v311 = objc_autoreleasePoolPush();
        v312 = v327;
        v313 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v313, OS_LOG_TYPE_ERROR))
        {
          v314 = HMFGetLogIdentifier();
          *buf = 138543362;
          v381 = v314;
          _os_log_impl(&dword_229538000, v313, OS_LOG_TYPE_ERROR, "%{public}@We have duplicate records with different share_ids deleting duplicates.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v311);
        v377 = runSQLite3(v50, "delete from record where uuid in (select uuid from record group by uuid, group_id having count(*)>1) and share_id!=0");;
        if (v377)
        {
          v292 = objc_autoreleasePoolPush();
          v315 = v312;
          v294 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v294, OS_LOG_TYPE_ERROR))
          {
LABEL_167:
            v52 = v327;
            v51 = v328;
            goto LABEL_142;
          }

          v316 = HMFGetLogIdentifier();
          *buf = 138543362;
          v381 = v316;
          v317 = "%{public}@Unable to delete duplicate entries";
LABEL_166:
          _os_log_impl(&dword_229538000, v294, OS_LOG_TYPE_ERROR, v317, buf, 0xCu);

          goto LABEL_167;
        }
      }

      v301 = v54;
    }

    v54 = selectSQLite3(v50, "select uuid from record where share_id!=0", MEMORY[0x277CBEC10], &v377);;

    if (![v54 count])
    {
      goto LABEL_168;
    }

    v318 = objc_autoreleasePoolPush();
    v319 = v327;
    v320 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v320, OS_LOG_TYPE_DEFAULT))
    {
      v321 = HMFGetLogIdentifier();
      *buf = 138543362;
      v381 = v321;
      _os_log_impl(&dword_229538000, v320, OS_LOG_TYPE_DEFAULT, "%{public}@Have records with share_id will migrate them.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v318);
    v377 = runSQLite3(v50, "update record set share_id = 0 where share_id != 0");;
    if (!v377)
    {
LABEL_168:
      v238 = 1;
      v52 = v327;
      v51 = v328;
      goto LABEL_75;
    }

    v292 = objc_autoreleasePoolPush();
    v322 = v319;
    v294 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v294, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_167;
    }

    v316 = HMFGetLogIdentifier();
    *buf = 138543362;
    v381 = v316;
    v317 = "%{public}@Unable to migrate share_ids";
    goto LABEL_166;
  }

  v18 = [(HMDBackingStoreLocal *)selfCopy _createNewDatastore:datastoreFile5];

  if (!v18)
  {
LABEL_14:
    v25 = 0;
    goto LABEL_22;
  }

  v19 = v18;
LABEL_13:
  v24 = v19;
  _fillStoreCache = v19;
LABEL_30:

LABEL_31:
  v44 = *MEMORY[0x277D85DE8];

  return _fillStoreCache;
}

- (id)_updateRecordWithGroupID:(int64_t)d name:(id)name schema:(id)schema
{
  v35 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  schemaCopy = schema;
  updateRecordSchema = self->updateRecordSchema;
  v26 = 0;
  bindIntSQLite3(updateRecordSchema, 1, d, &v26);
  v11 = v26;
  v12 = self->updateRecordSchema;
  v25 = v11;
  bindStringSQLite3(v12, 2, nameCopy, &v25);
  v13 = v25;

  v14 = self->updateRecordSchema;
  v24 = v13;
  bindStringSQLite3(v14, 3, schemaCopy, &v24);
  v15 = v24;

  v16 = objc_autoreleasePoolPush();
  selfCopy = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138544130;
    v28 = v19;
    v29 = 2048;
    dCopy = d;
    v31 = 2112;
    v32 = nameCopy;
    v33 = 2112;
    v34 = schemaCopy;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Updating record schema: %lu, name: %@, schema: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v16);
  if (v15)
  {
    v20 = v15;
  }

  else
  {
    v20 = execSQLite3(self->updateRecordSchema);
  }

  v21 = v20;

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)dealloc
{
  if (self->rollback)
  {
    [(HMDBackingStoreLocal *)self _rollback];
  }

  insertZone = self->insertZone;
  if (insertZone)
  {
    sqlite3_finalize(insertZone);
  }

  deleteZone = self->deleteZone;
  if (deleteZone)
  {
    sqlite3_finalize(deleteZone);
  }

  selectZones = self->selectZones;
  if (selectZones)
  {
    sqlite3_finalize(selectZones);
  }

  insertStore = self->insertStore;
  if (insertStore)
  {
    sqlite3_finalize(insertStore);
  }

  selectStores = self->selectStores;
  if (selectStores)
  {
    sqlite3_finalize(selectStores);
  }

  insertGroup = self->insertGroup;
  if (insertGroup)
  {
    sqlite3_finalize(insertGroup);
  }

  deleteGroup = self->deleteGroup;
  if (deleteGroup)
  {
    sqlite3_finalize(deleteGroup);
  }

  updateShareShare = self->updateShareShare;
  if (updateShareShare)
  {
    sqlite3_finalize(updateShareShare);
  }

  updateShareUsers = self->updateShareUsers;
  if (updateShareUsers)
  {
    sqlite3_finalize(updateShareUsers);
  }

  updateGroupToken = self->updateGroupToken;
  if (updateGroupToken)
  {
    sqlite3_finalize(updateGroupToken);
  }

  updateGroupSubscription = self->updateGroupSubscription;
  if (updateGroupSubscription)
  {
    sqlite3_finalize(updateGroupSubscription);
  }

  insertShare = self->insertShare;
  if (insertShare)
  {
    sqlite3_finalize(insertShare);
  }

  deleteShare = self->deleteShare;
  if (deleteShare)
  {
    sqlite3_finalize(deleteShare);
  }

  selectGroups = self->selectGroups;
  if (selectGroups)
  {
    sqlite3_finalize(selectGroups);
  }

  selectShares = self->selectShares;
  if (selectShares)
  {
    sqlite3_finalize(selectShares);
  }

  insertRecord = self->insertRecord;
  if (insertRecord)
  {
    sqlite3_finalize(insertRecord);
  }

  updateRecordSchema = self->updateRecordSchema;
  if (updateRecordSchema)
  {
    sqlite3_finalize(updateRecordSchema);
  }

  selectRecordCountGroup = self->selectRecordCountGroup;
  if (selectRecordCountGroup)
  {
    sqlite3_finalize(selectRecordCountGroup);
  }

  selectRecordGroupTypeSchema = self->selectRecordGroupTypeSchema;
  if (selectRecordGroupTypeSchema)
  {
    sqlite3_finalize(selectRecordGroupTypeSchema);
  }

  selectRecordGroup = self->selectRecordGroup;
  if (selectRecordGroup)
  {
    sqlite3_finalize(selectRecordGroup);
  }

  selectRecordGroupMap = self->selectRecordGroupMap;
  if (selectRecordGroupMap)
  {
    sqlite3_finalize(selectRecordGroupMap);
  }

  selectRecordUUID = self->selectRecordUUID;
  if (selectRecordUUID)
  {
    sqlite3_finalize(selectRecordUUID);
  }

  selectRecordParentUUID = self->selectRecordParentUUID;
  if (selectRecordParentUUID)
  {
    sqlite3_finalize(selectRecordParentUUID);
  }

  selectRecordParent = self->selectRecordParent;
  if (selectRecordParent)
  {
    sqlite3_finalize(selectRecordParent);
  }

  selectRecordName = self->selectRecordName;
  if (selectRecordName)
  {
    sqlite3_finalize(selectRecordName);
  }

  selectRecordUUIDNoShare = self->selectRecordUUIDNoShare;
  if (selectRecordUUIDNoShare)
  {
    sqlite3_finalize(selectRecordUUIDNoShare);
  }

  selectRecordNameNoShare = self->selectRecordNameNoShare;
  if (selectRecordNameNoShare)
  {
    sqlite3_finalize(selectRecordNameNoShare);
  }

  selectRecordParentNoShare = self->selectRecordParentNoShare;
  if (selectRecordParentNoShare)
  {
    sqlite3_finalize(selectRecordParentNoShare);
  }

  selectRecords = self->selectRecords;
  if (selectRecords)
  {
    sqlite3_finalize(selectRecords);
  }

  selectStoreRecords = self->selectStoreRecords;
  if (selectStoreRecords)
  {
    sqlite3_finalize(selectStoreRecords);
  }

  deleteRecord = self->deleteRecord;
  if (deleteRecord)
  {
    sqlite3_finalize(deleteRecord);
  }

  insertLog = self->insertLog;
  if (insertLog)
  {
    sqlite3_finalize(insertLog);
  }

  updateLogToDiskCommited = self->updateLogToDiskCommited;
  if (updateLogToDiskCommited)
  {
    sqlite3_finalize(updateLogToDiskCommited);
  }

  flushPushedXact = self->flushPushedXact;
  if (flushPushedXact)
  {
    sqlite3_finalize(flushPushedXact);
  }

  updateLogXactID = self->updateLogXactID;
  if (updateLogXactID)
  {
    sqlite3_finalize(updateLogXactID);
  }

  selectLog = self->selectLog;
  if (selectLog)
  {
    sqlite3_finalize(selectLog);
  }

  selectChangeExistsLog = self->selectChangeExistsLog;
  if (selectChangeExistsLog)
  {
    sqlite3_finalize(selectChangeExistsLog);
  }

  selectAllLog = self->selectAllLog;
  if (selectAllLog)
  {
    sqlite3_finalize(selectAllLog);
  }

  insertLogOptions = self->insertLogOptions;
  if (insertLogOptions)
  {
    sqlite3_finalize(insertLogOptions);
  }

  selectLogOptions = self->selectLogOptions;
  if (selectLogOptions)
  {
    sqlite3_finalize(selectLogOptions);
  }

  updateLog = self->updateLog;
  if (updateLog)
  {
    sqlite3_finalize(updateLog);
  }

  deleteLog = self->deleteLog;
  if (deleteLog)
  {
    sqlite3_finalize(deleteLog);
  }

  insertArchive = self->insertArchive;
  if (insertArchive)
  {
    sqlite3_finalize(insertArchive);
  }

  selectArchive = self->selectArchive;
  if (selectArchive)
  {
    sqlite3_finalize(selectArchive);
  }

  commit = self->commit;
  if (commit)
  {
    sqlite3_finalize(commit);
  }

  rollback = self->rollback;
  if (rollback)
  {
    sqlite3_finalize(rollback);
  }

  begin = self->begin;
  if (begin)
  {
    sqlite3_finalize(begin);
  }

  connection = self->connection;
  if (connection)
  {
    sqlite3_close(connection);
  }

  v51.receiver = self;
  v51.super_class = HMDBackingStoreLocal;
  [(HMDBackingStoreLocal *)&v51 dealloc];
}

- (HMDBackingStoreLocal)initWithDatastore:(id)datastore
{
  v19 = *MEMORY[0x277D85DE8];
  datastoreCopy = datastore;
  v14 = 0;
  v5 = [(HMDBackingStoreLocal *)self initWithDB:datastoreCopy migrate:1 error:&v14];
  v6 = v14;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = v5;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@unable to instance our resources: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = 0;
  }

  else
  {
    v11 = v5;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)_createDatastoreTables:(id)tables
{
  v29 = *MEMORY[0x277D85DE8];
  tablesCopy = tables;
  v5 = runSQLite3(self->connection, "CREATE TABLE zone (id INTEGER PRIMARY KEY AUTOINCREMENT, name STRING NOT NULL)");;
  if (v5)
  {
    goto LABEL_11;
  }

  v5 = runSQLite3(self->connection, "CREATE TABLE store (id INTEGER PRIMARY KEY AUTOINCREMENT, name STRING NOT NULL)");;
  if (v5)
  {
    goto LABEL_11;
  }

  v5 = runSQLite3(self->connection, "CREATE TABLE zone_group (id INTEGER PRIMARY KEY AUTOINCREMENT, zone_id INTEGER NOT NULL CONSTRAINT group_zone_id_fkey REFERENCES zone (id) ON DELETE RESTRICT, root TEXT NOT NULL, owner TEXT NOT NULL, token BLOB, subscription TEXT, subscription_data BLOB)");;
  if (v5)
  {
    goto LABEL_11;
  }

  v5 = runSQLite3(self->connection, "CREATE TABLE zone_share (id INTEGER PRIMARY KEY AUTOINCREMENT, group_id INTEGER NOT NULL CONSTRAINT group_zone_id_fkey REFERENCES zone_group (id) ON DELETE RESTRICT, root TEXT NOT NULL, target TEXT, share BLOB, users BLOB)");;
  if (v5)
  {
    goto LABEL_11;
  }

  v5 = runSQLite3(self->connection, "CREATE TABLE record (group_id INTEGER NOT NULL CONSTRAINT record_group_id_fkey REFERENCES zone_group (id) ON DELETE RESTRICT, share_id INTEGER NOT NULL CONSTRAINT record_share_id_fkey REFERENCES zone_share (id) ON DELETE RESTRICT, store_id INTEGER NOT NULL CONSTRAINT record_store_id_fkey REFERENCES store (id) ON DELETE RESTRICT, name TEXT NOT NULL, type TEXT, uuid TEXT, parent_uuid TEXT, encoding INTEGER NOT NULL, record BLOB NOT NULL, data BLOB NOT NULL, schema STRING)");;
  if (v5)
  {
    goto LABEL_11;
  }

  v5 = runSQLite3(self->connection, "CREATE TABLE xact (id INTEGER PRIMARY KEY AUTOINCREMENT, xact_id INTEGER NOT NULL, pushed INTEGER, root TEXT NOT NULL, type INT NOT NULL, encoding INTEGER NOT NULL, data BLOB NOT NULL, disk_committed INTEGER NOT NULL DEFAULT 1)");;
  if (v5)
  {
    goto LABEL_11;
  }

  v5 = runSQLite3(self->connection, "CREATE TABLE xact_block (id INTEGER PRIMARY KEY, data BLOB NOT NULL)");;
  if (v5 || (runSQLite3(self->connection, "CREATE UNIQUE INDEX zone_name ON zone (name)"), (v5 = objc_claimAutoreleasedReturnValue()) != 0) || (runSQLite3(self->connection, "CREATE UNIQUE INDEX store_name ON store (name)"), (v5 = objc_claimAutoreleasedReturnValue()) != 0) || (runSQLite3(self->connection, "CREATE UNIQUE INDEX group_owner_root_zone_id_ukey ON zone_group (owner, root, zone_id);"), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
LABEL_11:
    v6 = v5;
    goto LABEL_12;
  }

  v14 = runSQLite3(self->connection, "CREATE UNIQUE INDEX share_root_group_id_ukey ON zone_share (root, group_id)");;
  if (v14)
  {
    goto LABEL_23;
  }

  v14 = runSQLite3(self->connection, "CREATE UNIQUE INDEX record_group_id_share_id_name_ukey ON record (group_id, share_id, name)");;
  if (v14 || (runSQLite3(self->connection, "CREATE INDEX xact_pushed ON xact (root, pushed, xact_id);"), (v14 = objc_claimAutoreleasedReturnValue()) != 0) || (runSQLite3(self->connection, "CREATE INDEX xact_pushed2 ON xact (root, xact_id, id);"), (v14 = objc_claimAutoreleasedReturnValue()) != 0) || (runSQLite3(self->connection, "CREATE TABLE IF NOT EXISTS archive (identifier string primary key, controller_username string not null, value blob not null);"), (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
LABEL_23:
    v6 = v14;
LABEL_12:
    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v10;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@unable to initialize SQL context: %@", buf, 0x16u);
    }

LABEL_14:

    objc_autoreleasePoolPop(v7);
    sqlite3_close(self->connection);
    unlink([tablesCopy UTF8String]);
    v11 = v6;
    goto LABEL_15;
  }

  v15 = runSQLite3(self->connection, "INSERT INTO zone (id, name) VALUES (0, '<NULL>')");;
  if (v15 || (runSQLite3(self->connection, "INSERT INTO zone_group (id, zone_id, root, owner) VALUES (0, 0, '<NULL>', '<NULL>');"), (v15 = objc_claimAutoreleasedReturnValue()) != 0) || (runSQLite3(self->connection, "INSERT INTO zone_share (id, group_id, root) VALUES (0, 0, '<NULL>');"), (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v15;
    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v16;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@initial database row setup failed: %@", buf, 0x16u);
    }

    goto LABEL_14;
  }

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA user_version = %ld", 2];;
  v11 = runSQLite3(self->connection, [v17 UTF8String]);
  if (v11)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543874;
      v24 = v21;
      v25 = 2048;
      v26 = 2;
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@unable to set schema version to %ld failed: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    sqlite3_close(self->connection);
    unlink([tablesCopy UTF8String]);
    v22 = v11;
  }

LABEL_15:
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_createNewDatastore:(id)datastore
{
  v47 = *MEMORY[0x277D85DE8];
  datastoreCopy = datastore;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v45[0] = datastoreCopy;
  v5 = [datastoreCopy stringByAppendingString:@"-shm"];
  v45[1] = v5;
  v6 = [datastoreCopy stringByAppendingString:@"-wal"];
  v45[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:3];

  v8 = [v7 countByEnumeratingWithState:&v35 objects:v46 count:16];
  if (v8)
  {
    v9 = v8;
    v34 = datastoreCopy;
    v10 = 0;
    v11 = *v36;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        if (unlink([v13 UTF8String]) && *__error() != 2)
        {
          v14 = objc_autoreleasePoolPush();
          selfCopy = self;
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = HMFGetLogIdentifier();
            v18 = __error();
            v19 = strerror(*v18);
            *buf = 138543874;
            v40 = v17;
            v41 = 2112;
            v42 = v13;
            v43 = 2080;
            v44 = v19;
            _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@unable to remove old datastore file %@ (%s)", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v14);
          v10 = 1;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v35 objects:v46 count:16];
    }

    while (v9);

    datastoreCopy = v34;
    if (v10)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if (sqlite3_open_v2([datastoreCopy UTF8String], &self->connection, 6, 0))
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v23;
      v41 = 2112;
      v42 = 0;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@unable to open new SQL context: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
LABEL_20:
    v24 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    goto LABEL_27;
  }

  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA cache_size = %@", &unk_283E73880];;
  v26 = runSQLite3(self->connection, [v25 UTF8String]);
  if (v26)
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543874;
      v40 = v30;
      v41 = 2048;
      v42 = 512;
      v43 = 2112;
      v44 = v26;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Unable to set sqlite cache size to %ld: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v27);
    v31 = v26;
  }

  else
  {
    v31 = [(HMDBackingStoreLocal *)self _createDatastoreTables:datastoreCopy];
  }

  v24 = v31;

LABEL_27:
  v32 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t59 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t59, &__block_literal_global_202);
  }

  v3 = logCategory__hmf_once_v60;

  return v3;
}

void __35__HMDBackingStoreLocal_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v60;
  logCategory__hmf_once_v60 = v1;
}

+ (void)cleanDatastoreFilesAt:(id)at everything:(BOOL)everything
{
  everythingCopy = everything;
  v59 = *MEMORY[0x277D85DE8];
  atCopy = at;
  if ([atCopy isEqualToString:@":memory:"])
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v54 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Skipping because in memory store was specified.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v11 = MEMORY[0x277CCACA8];
    lastPathComponent = [atCopy lastPathComponent];
    v13 = [v11 stringWithFormat:@"^%@(?:|-shm|-wal)(\\..*)?$", lastPathComponent];

    v51 = 0;
    v14 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v13 options:0 error:&v51];
    v15 = v51;
    if (v15)
    {
      v16 = v15;
      v17 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v54 = v20;
        v55 = 2112;
        v56 = v16;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@unable to compile expression: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
    }

    else
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      stringByDeletingLastPathComponent = [atCopy stringByDeletingLastPathComponent];
      v50 = 0;
      v23 = [defaultManager contentsOfDirectoryAtPath:stringByDeletingLastPathComponent error:&v50];
      v24 = v50;
      v25 = [v23 mutableCopy];

      v45 = v24;
      if (v24)
      {
        v26 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543874;
          v54 = v29;
          v55 = 2112;
          v56 = stringByDeletingLastPathComponent;
          v57 = 2112;
          v58 = v45;
          _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@unable to get files in %@ (%@)", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v26);
      }

      else
      {
        v43 = v13;
        v44 = atCopy;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v42 = v25;
        v30 = v25;
        v31 = [v30 countByEnumeratingWithState:&v46 objects:v52 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v47;
          do
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v47 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v46 + 1) + 8 * i);
              v36 = [v14 firstMatchInString:v35 options:0 range:{0, objc_msgSend(v35, "length")}];
              v37 = v36;
              if (v36)
              {
                [v36 rangeAtIndex:1];
                if (v38 || everythingCopy)
                {
                  v40 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v35];
                  [defaultManager removeItemAtPath:v40 error:0];
                }
              }
            }

            v32 = [v30 countByEnumeratingWithState:&v46 objects:v52 count:16];
          }

          while (v32);
        }

        v13 = v43;
        atCopy = v44;
        v25 = v42;
      }

      v16 = v45;
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

@end