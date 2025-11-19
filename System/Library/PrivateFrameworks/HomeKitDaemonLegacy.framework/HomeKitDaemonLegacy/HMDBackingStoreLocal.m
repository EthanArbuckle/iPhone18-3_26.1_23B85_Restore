@interface HMDBackingStoreLocal
+ (id)logCategory;
+ (void)cleanDatastoreFilesAt:(id)a3 everything:(BOOL)a4;
- (BOOL)_insertArchive:(id)a3 identifier:(id)a4 controllerUserName:(id)a5 error:(id *)a6;
- (BOOL)_selectArchiveWithIdentifier:(id)a3 archive:(id *)a4 controllerUserName:(id *)a5 error:(id *)a6;
- (HMDBackingStoreLocal)initWithDatastore:(id)a3;
- (id)_commit;
- (id)_createDatastoreTables:(id)a3;
- (id)_createNewDatastore:(id)a3;
- (id)_deleteGroupWithID:(int64_t)a3;
- (id)_deleteLog:(int64_t)a3;
- (id)_deleteRecordWithGroupID:(int64_t)a3 recordName:(id)a4;
- (id)_deleteZoneWithID:(int64_t)a3;
- (id)_dropUncommittedUnpushedTransactions;
- (id)_fetchGroupsForZone:(id)a3 withError:(id *)a4;
- (id)_fetchRecordWithUUID:(id)a3 root:(id)a4 error:(id *)a5;
- (id)_fetchUncommittedAndPushedTransactions;
- (id)_fetchZonesWithError:(id *)a3;
- (id)_fillStoreCache;
- (id)_fillZoneCache;
- (id)_insertLogOptionsWithID:(int64_t)a3 options:(id)a4;
- (id)_instantiateResources:(BOOL)a3 migrate:(BOOL)a4;
- (id)_selectLogOptionsWithID:(int64_t)a3;
- (id)_updateGroupWithID:(int64_t)a3 serverChangeToken:(id)a4;
- (id)_updateGroupWithID:(int64_t)a3 subscription:(id)a4;
- (id)_updateLog:(int64_t)a3 mask:(int64_t)a4 set:(int64_t)a5;
- (id)_updateRecordWithGroupID:(int64_t)a3 name:(id)a4 schema:(id)a5;
- (id)_updateRecordWithGroupID:(int64_t)a3 store:(int64_t)a4 name:(id)a5 model:(id)a6;
- (id)_updateRecordWithGroupID:(int64_t)a3 store:(int64_t)a4 name:(id)a5 record:(id)a6 uuid:(id)a7 parentUUID:(id)a8 type:(id)a9 data:(id)a10 encoding:(int64_t)a11 schema:(id)a12;
- (id)_updateRecordWithGroupID:(int64_t)a3 store:(int64_t)a4 record:(id)a5;
- (id)_updateRecordWithGroupID:(int64_t)a3 store:(int64_t)a4 record:(id)a5 data:(id)a6 encoding:(int64_t)a7;
- (int64_t)_insertGroupWithZoneID:(int64_t)a3 root:(id)a4 owner:(id)a5 subscription:(id)a6 error:(id *)a7;
- (int64_t)_insertZoneWithName:(id)a3 error:(id *)a4;
- (int64_t)_numUncommittedTransactions;
- (unint64_t)_fetchIDForStore:(id)a3 error:(id *)a4;
- (unint64_t)_insertLogWithRoot:(id)a3 transaction:(id)a4 set:(int64_t)a5 error:(id *)a6;
- (void)_fetchRecordCountWithGroupID:(int64_t)a3 callback:(id)a4;
- (void)_fetchRecordMapWithGroupID:(int64_t)a3 callback:(id)a4;
- (void)_fetchRecordTypeSchemaWithGroupID:(int64_t)a3 callback:(id)a4;
- (void)_fetchRecordsWithGroupID:(int64_t)a3 callback:(id)a4;
- (void)_fetchRecordsWithGroupID:(int64_t)a3 names:(id)a4 callback:(id)a5;
- (void)_fetchRecordsWithGroupID:(int64_t)a3 parent:(id)a4 type:(id)a5 callback:(id)a6;
- (void)_fetchRecordsWithGroupID:(int64_t)a3 parentUuids:(id)a4 callback:(id)a5;
- (void)_fetchRecordsWithGroupID:(int64_t)a3 uuids:(id)a4 callback:(id)a5;
- (void)_rollback;
- (void)_selectAllLog:(id)a3;
- (void)_selectAllRecords:(id)a3;
- (void)_selectLogWithMask:(int64_t)a3 compare:(int64_t)a4 callback:(id)a5;
- (void)_selectLogWithRoot:(id)a3 after:(int64_t)a4 mask:(int64_t)a5 compare:(int64_t)a6 callback:(id)a7;
- (void)dealloc;
@end

@implementation HMDBackingStoreLocal

- (BOOL)_selectArchiveWithIdentifier:(id)a3 archive:(id *)a4 controllerUserName:(id *)a5 error:(id *)a6
{
  selectArchive = self->selectArchive;
  v21 = 0;
  bindStringSQLite3(selectArchive, 1, a3, &v21);
  v11 = v21;
  v12 = self->selectArchive;
  if (v11)
  {
    sqlite3_reset(v12);
    if (a6)
    {
      v13 = v11;
      v14 = 0;
      *a6 = v11;
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
      if (a6)
      {
        v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
LABEL_14:
        *a6 = v16;
      }
    }

    else if (a6)
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
  if (a6 && v19 != 101)
  {
    *a6 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectArchive];
  }

  sqlite3_reset(self->selectArchive);
  *a4 = [v18 copy];
  *a5 = [v17 copy];

  v14 = 1;
LABEL_17:

  return v14;
}

- (BOOL)_insertArchive:(id)a3 identifier:(id)a4 controllerUserName:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = execSQLite3(self->updateLogToDiskCommited);
  v14 = v13;
  if (!v13)
  {
    bindStringSQLite3(self->insertArchive, 1, v11, a6);
    bindStringSQLite3(self->insertArchive, 2, v12, a6);
    bindDataSQLite3(self->insertArchive, 3, v10, a6);
    if (!*a6)
    {
      v16 = steplastrowresetSQLite3(self->insertArchive, a6) != 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (!a6)
  {
LABEL_5:
    v16 = 0;
    goto LABEL_7;
  }

  v15 = v13;
  v16 = 0;
  *a6 = v14;
LABEL_7:

  return v16;
}

- (id)_deleteLog:(int64_t)a3
{
  deleteLog = self->deleteLog;
  v10 = 0;
  bindIntSQLite3(deleteLog, 1, a3, &v10);
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

- (id)_updateLog:(int64_t)a3 mask:(int64_t)a4 set:(int64_t)a5
{
  updateLog = self->updateLog;
  v19 = 0;
  bindIntSQLite3(updateLog, 1, a4, &v19);
  v9 = v19;
  v10 = self->updateLog;
  v18 = v9;
  bindIntSQLite3(v10, 2, a5, &v18);
  v11 = v18;

  v12 = self->updateLog;
  v17 = v11;
  bindIntSQLite3(v12, 3, a3, &v17);
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

- (void)_selectAllLog:(id)a3
{
  v13 = a3;
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
    LOBYTE(v5) = v13[2](v13, v5, v6, v7, v8, v9, v10, v11, 0);

    if (v5)
    {
      goto LABEL_7;
    }
  }

  if ((v4 & 0xFFFFFFFE) != 0x64)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectAllLog];
    (v13)[2](v13, 0, 0, 0, 0, 0, 0, 0, v12);
  }

LABEL_7:
  sqlite3_reset(self->selectAllLog);
}

- (id)_selectLogOptionsWithID:(int64_t)a3
{
  v26 = *MEMORY[0x277D85DE8];
  selectLogOptions = self->selectLogOptions;
  v21 = 0;
  bindIntSQLite3(selectLogOptions, 1, a3, &v21);
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
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543618;
        v23 = v11;
        v24 = 2048;
        v25 = a3;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Got multiple results for xact_block %lu (using first one)", buf, 0x16u);
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
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectLogOptions];
      *buf = 138543618;
      v23 = v15;
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@unexpected error to selectLogOptions: %@", buf, 0x16u);
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

- (id)_insertLogOptionsWithID:(int64_t)a3 options:(id)a4
{
  insertLogOptions = self->insertLogOptions;
  v14 = 0;
  v7 = a4;
  bindIntSQLite3(insertLogOptions, 1, a3, &v14);
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

- (void)_selectLogWithMask:(int64_t)a3 compare:(int64_t)a4 callback:(id)a5
{
  v19 = a5;
  selectChangeExistsLog = self->selectChangeExistsLog;
  v21 = 0;
  bindIntSQLite3(selectChangeExistsLog, 1, a3, &v21);
  v9 = v21;
  v10 = self->selectChangeExistsLog;
  v20 = v9;
  bindIntSQLite3(v10, 2, a4, &v20);
  v11 = v20;

  if (v11)
  {
    v19[2]();
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
      LOBYTE(v13) = (v19[2])(v19, v13, v14, v17, 0);

      if (v13)
      {
        goto LABEL_8;
      }
    }

    if ((v12 & 0xFFFFFFFE) != 0x64)
    {
      v18 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectChangeExistsLog];
      (v19[2])(v19, 0, 0, 0, v18);
    }

LABEL_8:
    sqlite3_reset(self->selectChangeExistsLog);
  }
}

- (void)_selectLogWithRoot:(id)a3 after:(int64_t)a4 mask:(int64_t)a5 compare:(int64_t)a6 callback:(id)a7
{
  v31 = a7;
  selectLog = self->selectLog;
  v13 = [a3 encodeForKey];
  v35 = 0;
  bindStringSQLite3(selectLog, 1, v13, &v35);
  v14 = v35;

  v15 = self->selectLog;
  v34 = v14;
  bindIntSQLite3(v15, 2, a5, &v34);
  v16 = v34;

  v17 = self->selectLog;
  v33 = v16;
  bindIntSQLite3(v17, 3, a6, &v33);
  v18 = v33;

  v19 = self->selectLog;
  v32 = v18;
  bindIntSQLite3(v19, 4, a4, &v32);
  v20 = v32;

  if (v20)
  {
    (*(v31 + 2))(v31, 0, 0, 0, 0, 0, 0, v20);
  }

  else
  {
    v21 = self->selectLog;
    v22 = v31;
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

- (unint64_t)_insertLogWithRoot:(id)a3 transaction:(id)a4 set:(int64_t)a5 error:(id *)a6
{
  v63 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = [v10 encodeForKey];
  v13 = execSQLite3(self->flushPushedXact);
  if (v13)
  {
    v14 = v13;
    if (a6)
    {
LABEL_3:
      v15 = v14;
      insert_rowid = 0;
      *a6 = v14;
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
  obj = [v11 objects];
  v47 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v47)
  {
    v48 = a5;
    v43 = a6;
    v44 = v10;
    insert_rowid = 0;
    v49 = *v59;
    v45 = v11;
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
      v20 = [v18 change];
      v57 = 0;
      v21 = [v20 encodeWithEncoding:1 error:&v57];
      v14 = v57;

      if (!v21)
      {
        break;
      }

      p_insertLog = &self->insertLog;
      insertLog = self->insertLog;
      v56 = v14;
      bindIntSQLite3(insertLog, 1, v48, &v56);
      v24 = v56;

      v25 = self->insertLog;
      v55 = v24;
      bindStringSQLite3(v25, 2, v12, &v55);
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
      v32 = [v18 change];
      v33 = [v32 objectChangeType];
      v52 = v30;
      bindIntSQLite3(v31, 5, v33, &v52);
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

        v40 = [v45 options];
        v14 = [(HMDBackingStoreLocal *)self _insertLogOptionsWithID:insert_rowid options:v40];

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
        v10 = v44;
        v11 = v45;
        v47 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
        if (v47)
        {
          goto LABEL_6;
        }

        goto LABEL_21;
      }
    }

    v10 = v44;
    v11 = v45;

    objc_autoreleasePoolPop(v19);
    if (!v14)
    {
      goto LABEL_28;
    }

    a6 = v43;
    if (v43)
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

- (void)_selectAllRecords:(id)a3
{
  v14 = a3;
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
    LOBYTE(v6) = v14[2](v14, v5, v6, v7, v8, v9, v10, v11, v12, 0);

    if (v6)
    {
      goto LABEL_7;
    }
  }

  if ((v4 & 0xFFFFFFFE) != 0x64)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectRecords];
    (v14)[2](v14, 0, 0, 0, 0, 0, 0, 0, 0, v13);
  }

LABEL_7:
  sqlite3_reset(self->selectRecords);
}

- (void)_fetchRecordsWithGroupID:(int64_t)a3 names:(id)a4 callback:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  if (a3)
  {
    selectRecordName = self->selectRecordName;
    v24 = 0;
    bindIntSQLite3(selectRecordName, 2, a3, &v24);
    a3 = v24;
  }

  else
  {
    selectRecordName = self->selectRecordNameNoShare;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v8;
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
        v19 = a3;
        bindStringSQLite3(selectRecordName, 1, v16, &v19);
        v17 = v19;

        if (v17)
        {
          (*(v9 + 2))(v9, 0, 0, 0, 0, v17);
          goto LABEL_17;
        }

        a3 = _handleFetchWithRawCallback(selectRecordName, v9);

        if (a3)
        {
          v17 = 0;
          goto LABEL_17;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
      a3 = 0;
      v17 = 0;
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v17 = a3;
  }

LABEL_17:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_fetchRecordsWithGroupID:(int64_t)a3 parent:(id)a4 type:(id)a5 callback:(id)a6
{
  v17 = a4;
  v10 = a5;
  v11 = a6;
  if (a3)
  {
    selectRecordParent = self->selectRecordParent;
    v21 = 0;
    bindIntSQLite3(selectRecordParent, 3, a3, &v21);
    a3 = v21;
  }

  else
  {
    selectRecordParent = self->selectRecordParentNoShare;
  }

  v13 = [v17 UUIDString];
  v20 = a3;
  bindStringSQLite3(selectRecordParent, 1, v13, &v20);
  v14 = v20;

  v19 = v14;
  bindStringSQLite3(selectRecordParent, 2, v10, &v19);
  v15 = v19;

  if (v15)
  {
    sqlite3_reset(selectRecordParent);
    (*(v11 + 2))(v11, 0, 0, 0, 0, v15);
  }

  else
  {
    v16 = _handleFetchWithRawCallback(selectRecordParent, v11);
  }
}

- (void)_fetchRecordsWithGroupID:(int64_t)a3 parentUuids:(id)a4 callback:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  selectRecordParentUUID = self->selectRecordParentUUID;
  v27 = 0;
  bindIntSQLite3(selectRecordParentUUID, 2, a3, &v27);
  v11 = v27;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v8;
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
        v18 = [*(*(&v23 + 1) + 8 * i) UUIDString];
        v22 = v11;
        bindStringSQLite3(v17, 1, v18, &v22);
        v19 = v22;

        v20 = self->selectRecordParentUUID;
        if (v19)
        {
          sqlite3_reset(v20);
          (*(v9 + 2))(v9, 0, 0, 0, 0, v19);
          goto LABEL_14;
        }

        v11 = _handleFetchWithRawCallback(v20, v9);

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

- (id)_fetchRecordWithUUID:(id)a3 root:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = 0;
  }

  selectRecordUUIDNoShare = self->selectRecordUUIDNoShare;
  v8 = [a3 UUIDString];
  v21 = 0;
  bindStringSQLite3(selectRecordUUIDNoShare, 1, v8, &v21);
  v9 = v21;

  sqlite3_reset(self->selectRecordUUIDNoShare);
  if (v9)
  {
    if (a5)
    {
      v10 = v9;
      v11 = 0;
      v12 = 0;
      *a5 = v9;
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v13 = sqlite3_step(self->selectRecordUUIDNoShare);
  if (v13 != 100)
  {
    if (a5 && v13 != 101)
    {
      *a5 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectRecordUUIDNoShare];
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
  if (a5 && v16 != 101)
  {
    *a5 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectRecordUUIDNoShare];
  }

  sqlite3_reset(self->selectRecordUUIDNoShare);
  v20 = 0;
  v11 = [HMDBackingStoreModelObject objectFromData:v15 encoding:v14 error:&v20];
  v17 = v20;
  v9 = v17;
  if (v17)
  {
    if (a5 && !*a5)
    {
      v18 = v17;
      v12 = 0;
      *a5 = v9;
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

- (void)_fetchRecordsWithGroupID:(int64_t)a3 uuids:(id)a4 callback:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  if (a3)
  {
    selectRecordUUID = self->selectRecordUUID;
    v24 = 0;
    bindIntSQLite3(selectRecordUUID, 2, a3, &v24);
    a3 = v24;
  }

  else
  {
    selectRecordUUID = self->selectRecordUUIDNoShare;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v8;
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

        v16 = [*(*(&v20 + 1) + 8 * i) UUIDString];
        v19 = a3;
        bindStringSQLite3(selectRecordUUID, 1, v16, &v19);
        v17 = v19;

        if (v17)
        {
          sqlite3_reset(selectRecordUUID);
          (*(v9 + 2))(v9, 0, 0, 0, 0, v17);
          goto LABEL_17;
        }

        a3 = _handleFetchWithRawCallback(selectRecordUUID, v9);

        if (a3)
        {
          v17 = 0;
          goto LABEL_17;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
      a3 = 0;
      v17 = 0;
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v17 = a3;
  }

LABEL_17:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_fetchRecordsWithGroupID:(int64_t)a3 callback:(id)a4
{
  v17 = a4;
  v18 = 0;
  bindIntSQLite3(self->selectRecordGroup, 1, a3, &v18);
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
    v17[2](v17, v8, v9, v10, v11, v12, v13, v14, v15, 0);
  }

  if (v7 == 101)
  {
    sqlite3_reset(self->selectRecordGroup);
    goto LABEL_7;
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectRecordGroup];
  sqlite3_reset(self->selectRecordGroup);
  v16 = v17;
  if (v6)
  {
LABEL_2:
    (v17[2])(v17, 0);

LABEL_7:
    v16 = v17;
  }
}

- (void)_fetchRecordMapWithGroupID:(int64_t)a3 callback:(id)a4
{
  v14 = a4;
  v15 = 0;
  bindIntSQLite3(self->selectRecordGroupMap, 1, a3, &v15);
  v6 = v15;
  if (v6)
  {
    v7 = *(v14 + 2);
LABEL_3:
    v7();

LABEL_8:
    v13 = v14;
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
    (*(v14 + 2))(v14, v9, v10, v11, v12, 0);
  }

  if (v8 == 101)
  {
    sqlite3_reset(self->selectRecordGroupMap);
    goto LABEL_8;
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectRecordGroup];
  sqlite3_reset(self->selectRecordGroupMap);
  v13 = v14;
  if (v6)
  {
    v7 = *(v14 + 2);
    goto LABEL_3;
  }

LABEL_9:
}

- (void)_fetchRecordTypeSchemaWithGroupID:(int64_t)a3 callback:(id)a4
{
  v13 = a4;
  v14 = 0;
  bindIntSQLite3(self->selectRecordGroupTypeSchema, 1, a3, &v14);
  v6 = v14;
  if (v6)
  {
    v7 = *(v13 + 2);
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
    v11 = (*(v13 + 2))(v13, v9, v10, 0);

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
  v12 = v13;
  if (v6)
  {
    v7 = *(v13 + 2);
LABEL_3:
    v7();

LABEL_9:
    v12 = v13;
  }
}

- (void)_fetchRecordCountWithGroupID:(int64_t)a3 callback:(id)a4
{
  v11 = a4;
  v12 = 0;
  bindIntSQLite3(self->selectRecordCountGroup, 1, a3, &v12);
  v6 = v12;
  if (v6)
  {
    v7 = *(v11 + 2);
LABEL_3:
    v7();

LABEL_8:
    v10 = v11;
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
    (*(v11 + 2))(v11, v8, 0);
  }

  if (v9 == 101)
  {
    sqlite3_reset(self->selectRecordCountGroup);
    goto LABEL_8;
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectRecordCountGroup];
  sqlite3_reset(self->selectRecordCountGroup);
  v10 = v11;
  if (v6)
  {
    v7 = *(v11 + 2);
    goto LABEL_3;
  }

LABEL_9:
}

- (id)_deleteRecordWithGroupID:(int64_t)a3 recordName:(id)a4
{
  deleteRecord = self->deleteRecord;
  v15 = 0;
  v7 = a4;
  bindIntSQLite3(deleteRecord, 2, a3, &v15);
  v8 = v15;
  v9 = self->deleteRecord;
  v14 = v8;
  bindStringSQLite3(v9, 1, v7, &v14);

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

- (id)_updateRecordWithGroupID:(int64_t)a3 store:(int64_t)a4 name:(id)a5 model:(id)a6
{
  v10 = a5;
  v19 = 0;
  v11 = [a6 encodeWithEncoding:1 error:&v19];
  v12 = v19;
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x277CBC5A0]);
    v16 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v10];
    v17 = [v15 initWithRecordType:@"ObjectRecord" recordID:v16];
    v14 = [(HMDBackingStoreLocal *)self _updateRecordWithGroupID:a3 store:a4 record:v17 data:v11 encoding:1];
  }

  return v14;
}

- (id)_updateRecordWithGroupID:(int64_t)a3 store:(int64_t)a4 record:(id)a5
{
  v8 = a5;
  v9 = [v8 objectForKey:@"k00"];
  v10 = [v9 integerValue];

  if (v10)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"k%02lu", v10];
    v12 = [v8 objectForKey:v11];

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
      [(HMDBackingStoreLocal *)self _updateRecordWithGroupID:a3 store:a4 record:v8 data:v14 encoding:v10];
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

- (id)_updateRecordWithGroupID:(int64_t)a3 store:(int64_t)a4 record:(id)a5 data:(id)a6 encoding:(int64_t)a7
{
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [v12 encodeSystemFieldsWithCoder:v15];
  [v15 finishEncoding];
  v16 = [v15 encodedData];

  objc_autoreleasePoolPop(v14);
  v36 = a7;
  v37 = 0;
  v17 = [HMDBackingStoreModelObject objectFromData:v13 encoding:a7 error:&v37];
  v18 = v37;
  v19 = [v12 recordID];
  v20 = [v19 recordName];
  if (v18)
  {
    v21 = [(HMDBackingStoreLocal *)self _updateRecordWithGroupID:a3 store:a4 name:v20 record:v16 uuid:0 parentUUID:0 type:0 data:v13 encoding:0 schema:0];
  }

  else
  {
    v35 = [v17 uuid];
    v33 = [v35 UUIDString];
    v34 = [v17 parentUUID];
    v32 = [v34 UUIDString];
    v31 = [v17 bsoType];
    +[HMDBackingStoreSingleton sharedInstance];
    v22 = v12;
    v23 = v16;
    v25 = v24 = a4;
    v26 = [v25 schemaHashForObject:v17];
    v27 = self;
    v28 = v26;
    v29 = v24;
    v16 = v23;
    v12 = v22;
    v21 = [(HMDBackingStoreLocal *)v27 _updateRecordWithGroupID:a3 store:v29 name:v20 record:v16 uuid:v33 parentUUID:v32 type:v31 data:v13 encoding:v36 schema:v26];
  }

  return v21;
}

- (id)_updateRecordWithGroupID:(int64_t)a3 store:(int64_t)a4 name:(id)a5 record:(id)a6 uuid:(id)a7 parentUUID:(id)a8 type:(id)a9 data:(id)a10 encoding:(int64_t)a11 schema:(id)a12
{
  v81 = *MEMORY[0x277D85DE8];
  v17 = a5;
  v18 = a6;
  v56 = a7;
  v19 = a8;
  v52 = a9;
  v20 = a10;
  v21 = a12;
  insertRecord = self->insertRecord;
  v66 = 0;
  v51 = a3;
  bindIntSQLite3(insertRecord, 1, a3, &v66);
  v23 = v66;
  v24 = self->insertRecord;
  v65 = v23;
  v55 = v17;
  bindStringSQLite3(v24, 2, v17, &v65);
  v25 = v65;

  v26 = self->insertRecord;
  v64 = v25;
  v54 = v18;
  bindDataSQLite3(v26, 3, v18, &v64);
  v27 = v64;

  v28 = self->insertRecord;
  v63 = v27;
  bindStringSQLite3(v28, 4, v56, &v63);
  v29 = v63;

  v30 = self->insertRecord;
  v62 = v29;
  bindStringSQLite3(v30, 5, v19, &v62);
  v31 = v62;

  v32 = self->insertRecord;
  v61 = v31;
  bindDataSQLite3(v32, 6, v20, &v61);
  v33 = v61;

  v34 = self->insertRecord;
  v60 = v33;
  bindIntSQLite3(v34, 7, a11, &v60);
  v35 = v60;

  v36 = self->insertRecord;
  v59 = v35;
  bindStringSQLite3(v36, 8, v52, &v59);
  v37 = v59;

  v38 = self->insertRecord;
  v58 = v37;
  bindStringSQLite3(v38, 9, v21, &v58);
  v39 = v58;

  v40 = self->insertRecord;
  v57 = v39;
  bindIntSQLite3(v40, 10, a4, &v57);
  v41 = v57;

  v42 = objc_autoreleasePoolPush();
  v43 = self;
  v44 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v46 = v45 = v21;
    *buf = 138544898;
    v68 = v46;
    v69 = 2048;
    v70 = v51;
    v71 = 2112;
    v72 = v55;
    v73 = 2112;
    v74 = v56;
    v75 = 2112;
    v76 = v19;
    v77 = 2112;
    v78 = v52;
    v79 = 2112;
    v80 = v45;
    _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_DEBUG, "%{public}@Inserting/Updating record group: %lu, name: %@, uuid: %@, parent: %@, type: %@, schema: %@", buf, 0x48u);

    v21 = v45;
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

- (id)_fetchGroupsForZone:(id)a3 withError:(id *)a4
{
  v6 = a3;
  [MEMORY[0x277CBEB18] array];
  v24 = v23 = v6;
  bindIntSQLite3(self->selectGroups, 1, [v6 zoneID], a4);
  if (*a4)
  {
LABEL_15:
    v20 = 0;
    goto LABEL_16;
  }

  v22 = a4;
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
        v16 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v12 error:v22];
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
          v17 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v15 error:v22];
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
    *v22 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectGroups];
  }

  if (!sqlite3_reset(self->selectGroups))
  {
    if (!*v22)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v19 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectGroups];
  *v22 = v19;
  if (v19)
  {
    goto LABEL_15;
  }

LABEL_20:
  v20 = v24;
LABEL_16:

  return v20;
}

- (id)_updateGroupWithID:(int64_t)a3 subscription:(id)a4
{
  updateGroupSubscription = self->updateGroupSubscription;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a4 requiringSecureCoding:1 error:0];
  v15 = 0;
  bindDataSQLite3(updateGroupSubscription, 1, v7, &v15);
  v8 = v15;

  v9 = self->updateGroupSubscription;
  v14 = v8;
  bindIntSQLite3(v9, 2, a3, &v14);
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

- (id)_updateGroupWithID:(int64_t)a3 serverChangeToken:(id)a4
{
  updateGroupToken = self->updateGroupToken;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a4 requiringSecureCoding:1 error:0];
  v15 = 0;
  bindDataSQLite3(updateGroupToken, 1, v7, &v15);
  v8 = v15;

  v9 = self->updateGroupToken;
  v14 = v8;
  bindIntSQLite3(v9, 2, a3, &v14);
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

- (id)_deleteGroupWithID:(int64_t)a3
{
  if (a3)
  {
    deleteGroup = self->deleteGroup;
    v8 = 0;
    bindIntSQLite3(deleteGroup, 1, a3, &v8);
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

- (int64_t)_insertGroupWithZoneID:(int64_t)a3 root:(id)a4 owner:(id)a5 subscription:(id)a6 error:(id *)a7
{
  insertGroup = self->insertGroup;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  bindIntSQLite3(insertGroup, 1, a3, a7);
  bindStringSQLite3(self->insertGroup, 2, v15, a7);

  bindStringSQLite3(self->insertGroup, 3, v14, a7);
  bindStringSQLite3(self->insertGroup, 4, v13, a7);

  if (*a7)
  {
    return 0;
  }

  v17 = self->insertGroup;

  return steplastrowresetSQLite3(v17, a7);
}

- (id)_fetchZonesWithError:(id *)a3
{
  v5 = [MEMORY[0x277CBEB18] array];
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
      [v5 addObject:v9];
    }
  }

  if (v6 == 101)
  {
    if (sqlite3_reset(self->selectZones))
    {
      if (a3)
      {
        v10 = MEMORY[0x277CCA9B8];
LABEL_15:
        [v10 errorWithSQLite3Statement:self->selectZones];
        *a3 = v12 = 0;
        goto LABEL_18;
      }

      v12 = 0;
    }

    else
    {
      v12 = v5;
    }
  }

  else
  {
    if (a3)
    {
      *a3 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectZones];
    }

    v11 = sqlite3_reset(self->selectZones);
    v12 = 0;
    if (a3 && v11)
    {
      v10 = MEMORY[0x277CCA9B8];
      goto LABEL_15;
    }
  }

LABEL_18:

  return v12;
}

- (id)_deleteZoneWithID:(int64_t)a3
{
  if (a3)
  {
    deleteZone = self->deleteZone;
    v8 = 0;
    bindIntSQLite3(deleteZone, 1, a3, &v8);
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

- (int64_t)_insertZoneWithName:(id)a3 error:(id *)a4
{
  bindStringSQLite3(self->insertZone, 1, a3, a4);
  if (*a4)
  {
    return 0;
  }

  insertZone = self->insertZone;

  return steplastrowresetSQLite3(insertZone, a4);
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

- (unint64_t)_fetchIDForStore:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HMDBackingStoreLocal *)self storeCache];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    v9 = [v8 unsignedIntegerValue];
  }

  else
  {
    insertStore = self->insertStore;
    v19 = 0;
    bindStringSQLite3(insertStore, 1, v6, &v19);
    v11 = v19;
    v12 = self->insertStore;
    v18 = v11;
    v9 = steplastrowresetSQLite3(v12, &v18);
    v13 = v18;

    if (a4)
    {
      v14 = v13;
      *a4 = v13;
    }

    if (v13)
    {
      v9 = 0;
    }

    else
    {
      v15 = [(HMDBackingStoreLocal *)self storeCache];
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v9];
      [v15 setObject:v16 forKey:v6];
    }
  }

  return v9;
}

- (id)_fetchUncommittedAndPushedTransactions
{
  connection = self->connection;
  v6 = 0;
  v3 = selectSQLite3(connection, "SELECT id, xact_id, pushed, data, type, encoding, root FROM xact WHERE ((pushed & 0xffff0000) >> 16) != 0 AND disk_committed=0 ORDER BY root, xact_id, id", MEMORY[0x277CBEC10], &v6);;
  v4 = [v3 na_map:&__block_literal_global_119005];

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
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Dropped transactions that were not committed to disk.", &v10, 0xCu);
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
    v13 = [v12 integerValue];
  }

  else
  {
LABEL_12:
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine number of uncommitted transactions %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = -1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)_fillStoreCache
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
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
    [v3 setValue:v7 forKey:v6];
  }

  if (v4 == 101)
  {
    if (sqlite3_reset(self->selectZones))
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:self->selectZones];
    }

    else
    {
      [(HMDBackingStoreLocal *)self setStoreCache:v3];
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
      v6 = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = HMFGetLogIdentifier();
        v10 = 138543618;
        v11 = v8;
        v12 = 2112;
        v13 = v4;
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@ROLLBACK FAILED!: %@", &v10, 0x16u);
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

- (id)_instantiateResources:(BOOL)a3 migrate:(BOOL)a4
{
  v5 = a3;
  v386 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [(HMDBackingStoreLocal *)v8 datastoreFile];
    *buf = 138543618;
    v381 = v10;
    v382 = 2112;
    v383 = v11;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@SQLite datastore file: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [(HMDBackingStoreLocal *)v8 datastoreFile];

  if (!v12)
  {
    v20 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    goto LABEL_31;
  }

  sqlite3_initialize();
  if (v5)
  {
    v13 = [(HMDBackingStoreLocal *)v8 datastoreFile];
    unlink([v13 UTF8String]);
  }

  v14 = [(HMDBackingStoreLocal *)v8 datastoreFile];
  v15 = sqlite3_open_v2([v14 UTF8String], &v8->connection, 2, 0);

  v16 = [(HMDBackingStoreLocal *)v8 datastoreFile];
  v17 = v16;
  if (!v15)
  {
    v21 = [v16 isEqualToString:@":memory:"];

    if (v21)
    {
      v22 = [(HMDBackingStoreLocal *)v8 datastoreFile];
      v23 = [(HMDBackingStoreLocal *)v8 _createDatastoreTables:v22];

      if (v23)
      {
        v19 = v23;
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    connection = v8->connection;
    v378 = 0;
    v27 = selectSQLite3(connection, "PRAGMA user_version", MEMORY[0x277CBEC10], &v378);;
    v328 = v378;
    v28 = [v27 firstObject];
    v29 = [v28 firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;

    v32 = objc_autoreleasePoolPush();
    v33 = v8;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v381 = v35;
      v382 = 2112;
      v383 = v31;
      _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@Current schema version: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    if ([v31 unsignedIntegerValue] == 2)
    {
LABEL_21:

      v25 = v328;
LABEL_22:
      v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA cache_size = %@", &unk_286628DB0];;
      v37 = runSQLite3(v8->connection, [v36 UTF8String]);

      if (v37)
      {
        v38 = objc_autoreleasePoolPush();
        v39 = v8;
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
          _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@Unable to set sqlite cache size to %ld: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v38);
        v42 = v37;
      }

      else
      {
        v43 = runSQLite3(v8->connection, "PRAGMA foreign_keys = ON");;
        if (!v43)
        {
          v64 = v8->connection;
          v376 = 0;
          v65 = selectSQLite3(v64, "PRAGMA journal_mode=WAL", MEMORY[0x277CBEC10], &v376);;
          v66 = v376;
          if (v66 || [v65 count])
          {
            v67 = objc_autoreleasePoolPush();
            v68 = v8;
            v69 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
            {
              v70 = HMFGetLogIdentifier();
              v71 = [v65 firstObject];
              v72 = [v71 firstObject];
              *buf = 138543874;
              v381 = v70;
              v382 = 2112;
              v383 = v72;
              v384 = 2112;
              v385 = v66;
              _os_log_impl(&dword_2531F8000, v69, OS_LOG_TYPE_DEFAULT, "%{public}@turning on WAL resulted in %@ / %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v67);
          }

          v73 = v8->connection;
          v375 = v66;
          v74 = prepareSQLite3(v73, "BEGIN;", &v375);
          v75 = v375;

          v8->begin = v74;
          v76 = v8->connection;
          v374 = v75;
          v77 = prepareSQLite3(v76, "COMMIT;", &v374);
          v78 = v374;

          v8->commit = v77;
          v79 = v8->connection;
          v373 = v78;
          v80 = prepareSQLite3(v79, "ROLLBACK;", &v373);
          v81 = v373;

          v8->rollback = v80;
          v82 = v8->connection;
          v372 = v81;
          v83 = prepareSQLite3(v82, "INSERT INTO zone (name) values (?1)", &v372);
          v84 = v372;

          v8->insertZone = v83;
          v85 = v8->connection;
          v371 = v84;
          v86 = prepareSQLite3(v85, "DELETE FROM zone WHERE id=?1;", &v371);
          v87 = v371;

          v8->deleteZone = v86;
          v88 = v8->connection;
          v370 = v87;
          v89 = prepareSQLite3(v88, "SELECT id, name FROM zone;", &v370);
          v90 = v370;

          v8->selectZones = v89;
          v91 = v8->connection;
          v369 = v90;
          v92 = prepareSQLite3(v91, "INSERT INTO store (name) values (?1)", &v369);
          v93 = v369;

          v8->insertStore = v92;
          v94 = v8->connection;
          v368 = v93;
          v95 = prepareSQLite3(v94, "SELECT id, name FROM store;", &v368);
          v96 = v368;

          v8->selectStores = v95;
          v97 = v8->connection;
          v367 = v96;
          v98 = prepareSQLite3(v97, "INSERT INTO zone_group (zone_id, root, owner, subscription) VALUES (?1, ?2, ?3, ?4);", &v367);
          v99 = v367;

          v8->insertGroup = v98;
          v100 = v8->connection;
          v366 = v99;
          v101 = prepareSQLite3(v100, "DELETE FROM zone_group WHERE id=?1;", &v366);
          v102 = v366;

          v8->deleteGroup = v101;
          v103 = v8->connection;
          v365 = v102;
          v104 = prepareSQLite3(v103, "UPDATE zone_group SET token=?1 WHERE id=?2;", &v365);
          v105 = v365;

          v8->updateGroupToken = v104;
          v106 = v8->connection;
          v364 = v105;
          v107 = prepareSQLite3(v106, "UPDATE zone_group SET subscription_data=?1 WHERE id=?2;", &v364);
          v108 = v364;

          v8->updateGroupSubscription = v107;
          v109 = v8->connection;
          v363 = v108;
          v110 = prepareSQLite3(v109, "SELECT id, root, owner, token, subscription, subscription_data FROM zone_group where zone_id=?1", &v363);
          v111 = v363;

          v8->selectGroups = v110;
          v112 = v8->connection;
          v362 = v111;
          v113 = prepareSQLite3(v112, "INSERT INTO zone_share (group_id, root, target) VALUES (?1, ?2, ?3);", &v362);
          v114 = v362;

          v8->insertShare = v113;
          v115 = v8->connection;
          v361 = v114;
          v116 = prepareSQLite3(v115, "DELETE FROM zone_share WHERE id=?1;", &v361);
          v117 = v361;

          v8->deleteShare = v116;
          v118 = v8->connection;
          v360 = v117;
          v119 = prepareSQLite3(v118, "UPDATE zone_share SET share=?1 WHERE id=?2;", &v360);
          v120 = v360;

          v8->updateShareShare = v119;
          v121 = v8->connection;
          v359 = v120;
          v122 = prepareSQLite3(v121, "UPDATE zone_share SET users=?1 WHERE id=?2;", &v359);
          v123 = v359;

          v8->updateShareUsers = v122;
          v124 = v8->connection;
          v358 = v123;
          v125 = prepareSQLite3(v124, "SELECT id, root, target, share, users FROM zone_share WHERE group_id=?1;", &v358);
          v126 = v358;

          v8->selectShares = v125;
          v127 = v8->connection;
          v357 = v126;
          v128 = prepareSQLite3(v127, "INSERT OR REPLACE INTO record (group_id, share_id, name, record, uuid, parent_uuid, data, encoding, type, schema, store_id) VALUES (?1, 0, ?2, ?3, ?4, ?5, ?6, ?7, ?8, ?9, ?10);", &v357);
          v129 = v357;

          v8->insertRecord = v128;
          v130 = v8->connection;
          v356 = v129;
          v131 = prepareSQLite3(v130, "UPDATE record SET schema = ?3 where group_id = ?1 and name = ?2;", &v356);
          v132 = v356;

          v8->updateRecordSchema = v131;
          v133 = v8->connection;
          v355 = v132;
          v134 = prepareSQLite3(v133, "SELECT count(*) FROM record WHERE group_id=?1;", &v355);
          v135 = v355;

          v8->selectRecordCountGroup = v134;
          v136 = v8->connection;
          v354 = v135;
          v137 = prepareSQLite3(v136, "SELECT type, schema FROM record WHERE group_id=?1 GROUP BY type, schema;", &v354);
          v138 = v354;

          v8->selectRecordGroupTypeSchema = v137;
          v139 = v8->connection;
          v353 = v138;
          v140 = prepareSQLite3(v139, "SELECT name, record, encoding, data, uuid, parent_uuid, type, schema FROM record WHERE group_id=?1;", &v353);
          v141 = v353;

          v8->selectRecordGroup = v140;
          v142 = v8->connection;
          v352 = v141;
          v143 = prepareSQLite3(v142, "SELECT name, uuid, parent_uuid, type FROM record WHERE group_id=?1;", &v352);
          v144 = v352;

          v8->selectRecordGroupMap = v143;
          v145 = v8->connection;
          v351 = v144;
          v146 = prepareSQLite3(v145, "SELECT record, data, encoding, uuid FROM record WHERE group_id=?2 AND uuid=?1;", &v351);
          v147 = v351;

          v8->selectRecordUUID = v146;
          v148 = v8->connection;
          v350 = v147;
          v149 = prepareSQLite3(v148, "SELECT record, data, encoding, uuid FROM record WHERE group_id=?2 AND parent_uuid=?1;", &v350);
          v150 = v350;

          v8->selectRecordParentUUID = v149;
          v151 = v8->connection;
          v349 = v150;
          v152 = prepareSQLite3(v151, "SELECT record, data, encoding, uuid FROM record WHERE group_id=?3 and parent_uuid=?1 and type=?2;", &v349);
          v153 = v349;

          v8->selectRecordParent = v152;
          v154 = v8->connection;
          v348 = v153;
          v155 = prepareSQLite3(v154, "SELECT record, data, encoding, uuid FROM record WHERE group_id=?2 AND name=?1;", &v348);
          v156 = v348;

          v8->selectRecordName = v155;
          v157 = v8->connection;
          v347 = v156;
          v158 = prepareSQLite3(v157, "SELECT record, data, encoding, uuid FROM record WHERE uuid=?1;", &v347);
          v159 = v347;

          v8->selectRecordUUIDNoShare = v158;
          v160 = v8->connection;
          v346 = v159;
          v161 = prepareSQLite3(v160, "SELECT record, data, encoding, uuid FROM record WHERE parent_uuid=?1 and type=?2;", &v346);
          v162 = v346;

          v8->selectRecordParentNoShare = v161;
          v163 = v8->connection;
          v345 = v162;
          v164 = prepareSQLite3(v163, "SELECT record, data, encoding, uuid FROM record WHERE name=?1;", &v345);
          v165 = v345;

          v8->selectRecordNameNoShare = v164;
          v166 = v8->connection;
          v344 = v165;
          v167 = prepareSQLite3(v166, "DELETE FROM record WHERE group_id=?2 AND name=?1;", &v344);
          v168 = v344;

          v8->deleteRecord = v167;
          v169 = v8->connection;
          v343 = v168;
          v170 = prepareSQLite3(v169, "SELECT name, group_id, share_id, uuid, parent_uuid, encoding, data, record FROM record ORDER BY group_id, share_id, record;", &v343);
          v171 = v343;

          v8->selectRecords = v170;
          v172 = v8->connection;
          v342 = v171;
          v173 = prepareSQLite3(v172, "SELECT name, group_id, share_id, encoding, data, record, schema FROM record WHERE store_id=?1 ORDER BY group_id, share_id, name;", &v342);
          v174 = v342;

          v8->selectStoreRecords = v173;
          v175 = v8->connection;
          v341 = v174;
          v176 = prepareSQLite3(v175, "UPDATE xact SET xact_id=?1 WHERE id=?1;", &v341);
          v177 = v341;

          v8->updateLogXactID = v176;
          v178 = v8->connection;
          v340 = v177;
          v179 = prepareSQLite3(v178, "INSERT INTO xact (pushed, root, data, xact_id, type, encoding, disk_committed) VALUES (?1, ?2, ?3, ?4, ?5, ?6, 0);", &v340);
          v180 = v340;

          v8->insertLog = v179;
          v181 = v8->connection;
          v339 = v180;
          v182 = prepareSQLite3(v181, "UPDATE xact SET disk_committed=1;", &v339);
          v183 = v339;

          v8->updateLogToDiskCommited = v182;
          v184 = v8->connection;
          v338 = v183;
          v185 = prepareSQLite3(v184, "SELECT id, xact_id, pushed, data, type, encoding FROM xact WHERE root=?1 AND (pushed & ?2) = ?3 AND xact_id>?4 ORDER BY xact_id, id;", &v338);
          v186 = v338;

          v8->selectLog = v185;
          v187 = v8->connection;
          v337 = v186;
          v188 = prepareSQLite3(v187, "SELECT id, xact_id, root FROM xact WHERE (pushed & ?1) = ?2 ORDER BY xact_id, id;", &v337);
          v189 = v337;

          v8->selectChangeExistsLog = v188;
          v190 = v8->connection;
          v336 = v189;
          v191 = prepareSQLite3(v190, "SELECT id, xact_id, pushed, root, data, type, encoding FROM xact ORDER BY root, xact_id, id;", &v336);
          v192 = v336;

          v8->selectAllLog = v191;
          v193 = v8->connection;
          v335 = v192;
          v194 = prepareSQLite3(v193, "INSERT INTO xact_block (id, data) VALUES (?1, ?2);", &v335);
          v195 = v335;

          v8->insertLogOptions = v194;
          v196 = v8->connection;
          v334 = v195;
          v197 = prepareSQLite3(v196, "SELECT data FROM xact_block WHERE id = ?1;", &v334);
          v198 = v334;

          v8->selectLogOptions = v197;
          v199 = v8->connection;
          v333 = v198;
          v200 = prepareSQLite3(v199, "UPDATE xact SET pushed=(((pushed & ?1) | ?2) | (pushed & ~?1)) WHERE id=?3;", &v333);
          v201 = v333;

          v8->updateLog = v200;
          v202 = v8->connection;
          v332 = v201;
          v203 = prepareSQLite3(v202, "DELETE FROM xact WHERE id=?1;", &v332);
          v204 = v332;

          v8->deleteLog = v203;
          v205 = v8->connection;
          v331 = v204;
          v206 = prepareSQLite3(v205, "DELETE FROM xact WHERE ((pushed & 0xffff0000 >> 16) = (pushed & 0x0000ffff)) AND disk_committed=1", &v331);
          v207 = v331;

          v8->flushPushedXact = v206;
          v208 = v8->connection;
          v330 = v207;
          v209 = prepareSQLite3(v208, "REPLACE INTO archive VALUES(?1, ?2, ?3)", &v330);
          v210 = v330;

          v8->insertArchive = v209;
          v211 = v8->connection;
          v329 = v210;
          v212 = prepareSQLite3(v211, "SELECT identifier, controller_username, value from archive where identifier=?1;", &v329);
          v213 = v329;

          v8->selectArchive = v212;
          if (v213)
          {
            v214 = objc_autoreleasePoolPush();
            v215 = v8;
            v216 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v216, OS_LOG_TYPE_ERROR))
            {
              v217 = HMFGetLogIdentifier();
              *buf = 138543618;
              v381 = v217;
              v382 = 2112;
              v383 = v213;
              _os_log_impl(&dword_2531F8000, v216, OS_LOG_TYPE_ERROR, "%{public}@unable to prepare SQL statements: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v214);
            v218 = v213;
          }

          else
          {
            if ([(HMDBackingStoreLocal *)v8 _numUncommittedTransactions]>= 1)
            {
              v248 = objc_autoreleasePoolPush();
              v249 = v8;
              v250 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v250, OS_LOG_TYPE_ERROR))
              {
                v251 = HMFGetLogIdentifier();
                *buf = 138543362;
                v381 = v251;
                _os_log_impl(&dword_2531F8000, v250, OS_LOG_TYPE_ERROR, "%{public}@We crashed after running transaction but before saving to disk.", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v248);
            }

            v252 = [(HMDBackingStoreLocal *)v8 _fillZoneCache];
            if (!v252)
            {
              v20 = [(HMDBackingStoreLocal *)v8 _fillStoreCache];

              v24 = 0;
              goto LABEL_29;
            }

            v218 = v252;
          }

          v24 = v218;

          v20 = v24;
LABEL_29:

          goto LABEL_30;
        }

        v42 = v43;
      }

      v24 = v42;
      v20 = v42;
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
      _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_DEFAULT, "%{public}@Validating database.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v46);
    v50 = v8->connection;
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
        _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_ERROR, "%{public}@initial migration test failed with result / error: %@ / %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v58);
      v62 = [v55 userInfo];
      v63 = [v62 objectForKey:@"extcode"];
      if ([v63 isEqual:&unk_286628DE0])
      {

        v52 = v327;
      }

      else
      {
        v219 = [v55 userInfo];
        v220 = [v219 objectForKey:@"extcode"];
        v221 = [v220 isEqual:&unk_286628DF8];

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
        _os_log_impl(&dword_2531F8000, v229, OS_LOG_TYPE_ERROR, "%{public}@xact_pushed2 migration test failed with result %lu items %@", buf, 0x20u);
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
        _os_log_impl(&dword_2531F8000, v235, OS_LOG_TYPE_ERROR, "%{public}@zone_group.subscription_data migration test failed with result %lu items %@", buf, 0x20u);
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
        _os_log_impl(&dword_2531F8000, v257, OS_LOG_TYPE_ERROR, "%{public}@xact.disk_committed migration test failed with result %lu items %@", buf, 0x20u);
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
        _os_log_impl(&dword_2531F8000, v266, OS_LOG_TYPE_ERROR, "%{public}@record.schema migration test failed with result %lu items %@", buf, 0x20u);
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
        _os_log_impl(&dword_2531F8000, v273, OS_LOG_TYPE_ERROR, "%{public}@zone_group migration test failed with result %lu items %@", buf, 0x20u);
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
        _os_log_impl(&dword_2531F8000, v281, OS_LOG_TYPE_ERROR, "%{public}@record table migration test failed with result %lu items %@", buf, 0x20u);

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
          _os_log_impl(&dword_2531F8000, v294, OS_LOG_TYPE_ERROR, "%{public}@record table migration test failed with nil result", buf, 0xCu);
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
        _os_log_impl(&dword_2531F8000, v287, OS_LOG_TYPE_ERROR, "%{public}@zone migration test failed with result %lu items %@", buf, 0x20u);
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
        _os_log_impl(&dword_2531F8000, v297, OS_LOG_TYPE_ERROR, v296, buf, v298);

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
      if (a4)
      {
        sqlite3_close(v50);
        v305 = [(HMDBackingStoreLocal *)v52 datastoreFile];
        v306 = [(HMDBackingStoreLocal *)v52 _createNewDatastore:v305];
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
          _os_log_impl(&dword_2531F8000, v309, OS_LOG_TYPE_ERROR, "%{public}@want to rebuild the databse, but not allowed to.", buf, 0xCu);
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
        v241 = runSQLite3(v8->connection, [v240 UTF8String]);

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
            _os_log_impl(&dword_2531F8000, v260, OS_LOG_TYPE_DEFAULT, "%{public}@Current schema version: %ld", buf, 0x16u);
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
          _os_log_impl(&dword_2531F8000, v245, OS_LOG_TYPE_ERROR, "%{public}@Unable to update schema version to %ld: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v242);
        v24 = v241;
      }

      else
      {
        v24 = v239;
        v246 = v326;
      }

      v20 = v24;
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
          _os_log_impl(&dword_2531F8000, v313, OS_LOG_TYPE_ERROR, "%{public}@We have duplicate records with different share_ids deleting duplicates.", buf, 0xCu);
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
          _os_log_impl(&dword_2531F8000, v294, OS_LOG_TYPE_ERROR, v317, buf, 0xCu);

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
      _os_log_impl(&dword_2531F8000, v320, OS_LOG_TYPE_DEFAULT, "%{public}@Have records with share_id will migrate them.", buf, 0xCu);
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

  v18 = [(HMDBackingStoreLocal *)v8 _createNewDatastore:v16];

  if (!v18)
  {
LABEL_14:
    v25 = 0;
    goto LABEL_22;
  }

  v19 = v18;
LABEL_13:
  v24 = v19;
  v20 = v19;
LABEL_30:

LABEL_31:
  v44 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_updateRecordWithGroupID:(int64_t)a3 name:(id)a4 schema:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  updateRecordSchema = self->updateRecordSchema;
  v26 = 0;
  bindIntSQLite3(updateRecordSchema, 1, a3, &v26);
  v11 = v26;
  v12 = self->updateRecordSchema;
  v25 = v11;
  bindStringSQLite3(v12, 2, v8, &v25);
  v13 = v25;

  v14 = self->updateRecordSchema;
  v24 = v13;
  bindStringSQLite3(v14, 3, v9, &v24);
  v15 = v24;

  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138544130;
    v28 = v19;
    v29 = 2048;
    v30 = a3;
    v31 = 2112;
    v32 = v8;
    v33 = 2112;
    v34 = v9;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Updating record schema: %lu, name: %@, schema: %@", buf, 0x2Au);
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

- (HMDBackingStoreLocal)initWithDatastore:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0;
  v5 = [(HMDBackingStoreLocal *)self initWithDB:v4 migrate:1 error:&v14];
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
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@unable to instance our resources: %@", buf, 0x16u);
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

- (id)_createDatastoreTables:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v10;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@unable to initialize SQL context: %@", buf, 0x16u);
    }

LABEL_14:

    objc_autoreleasePoolPop(v7);
    sqlite3_close(self->connection);
    unlink([v4 UTF8String]);
    v11 = v6;
    goto LABEL_15;
  }

  v15 = runSQLite3(self->connection, "INSERT INTO zone (id, name) VALUES (0, '<NULL>')");;
  if (v15 || (runSQLite3(self->connection, "INSERT INTO zone_group (id, zone_id, root, owner) VALUES (0, 0, '<NULL>', '<NULL>');"), (v15 = objc_claimAutoreleasedReturnValue()) != 0) || (runSQLite3(self->connection, "INSERT INTO zone_share (id, group_id, root) VALUES (0, 0, '<NULL>');"), (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v15;
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v16;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@initial database row setup failed: %@", buf, 0x16u);
    }

    goto LABEL_14;
  }

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA user_version = %ld", 2];;
  v11 = runSQLite3(self->connection, [v17 UTF8String]);
  if (v11)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
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
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@unable to set schema version to %ld failed: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    sqlite3_close(self->connection);
    unlink([v4 UTF8String]);
    v22 = v11;
  }

LABEL_15:
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_createNewDatastore:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v45[0] = v4;
  v5 = [v4 stringByAppendingString:@"-shm"];
  v45[1] = v5;
  v6 = [v4 stringByAppendingString:@"-wal"];
  v45[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:3];

  v8 = [v7 countByEnumeratingWithState:&v35 objects:v46 count:16];
  if (v8)
  {
    v9 = v8;
    v34 = v4;
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
          v15 = self;
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
            _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@unable to remove old datastore file %@ (%s)", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v14);
          v10 = 1;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v35 objects:v46 count:16];
    }

    while (v9);

    v4 = v34;
    if (v10)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if (sqlite3_open_v2([v4 UTF8String], &self->connection, 6, 0))
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v23;
      v41 = 2112;
      v42 = 0;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@unable to open new SQL context: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
LABEL_20:
    v24 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    goto LABEL_27;
  }

  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA cache_size = %@", &unk_286628DB0];;
  v26 = runSQLite3(self->connection, [v25 UTF8String]);
  if (v26)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = self;
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
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Unable to set sqlite cache size to %ld: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v27);
    v31 = v26;
  }

  else
  {
    v31 = [(HMDBackingStoreLocal *)self _createDatastoreTables:v4];
  }

  v24 = v31;

LABEL_27:
  v32 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t59_119223 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t59_119223, &__block_literal_global_202);
  }

  v3 = logCategory__hmf_once_v60_119224;

  return v3;
}

uint64_t __35__HMDBackingStoreLocal_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v60_119224;
  logCategory__hmf_once_v60_119224 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (void)cleanDatastoreFilesAt:(id)a3 everything:(BOOL)a4
{
  v4 = a4;
  v59 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([v6 isEqualToString:@":memory:"])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v54 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Skipping because in memory store was specified.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [v6 lastPathComponent];
    v13 = [v11 stringWithFormat:@"^%@(?:|-shm|-wal)(\\..*)?$", v12];

    v51 = 0;
    v14 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v13 options:0 error:&v51];
    v15 = v51;
    if (v15)
    {
      v16 = v15;
      v17 = objc_autoreleasePoolPush();
      v18 = a1;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v54 = v20;
        v55 = 2112;
        v56 = v16;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@unable to compile expression: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
    }

    else
    {
      v21 = [MEMORY[0x277CCAA00] defaultManager];
      v22 = [v6 stringByDeletingLastPathComponent];
      v50 = 0;
      v23 = [v21 contentsOfDirectoryAtPath:v22 error:&v50];
      v24 = v50;
      v25 = [v23 mutableCopy];

      v45 = v24;
      if (v24)
      {
        v26 = objc_autoreleasePoolPush();
        v27 = a1;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543874;
          v54 = v29;
          v55 = 2112;
          v56 = v22;
          v57 = 2112;
          v58 = v45;
          _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@unable to get files in %@ (%@)", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v26);
      }

      else
      {
        v43 = v13;
        v44 = v6;
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
                if (v38 || v4)
                {
                  v40 = [v22 stringByAppendingPathComponent:v35];
                  [v21 removeItemAtPath:v40 error:0];
                }
              }
            }

            v32 = [v30 countByEnumeratingWithState:&v46 objects:v52 count:16];
          }

          while (v32);
        }

        v13 = v43;
        v6 = v44;
        v25 = v42;
      }

      v16 = v45;
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

@end