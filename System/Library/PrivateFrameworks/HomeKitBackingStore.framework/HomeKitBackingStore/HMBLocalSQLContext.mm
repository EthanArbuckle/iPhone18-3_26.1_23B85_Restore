@interface HMBLocalSQLContext
+ (id)logCategory;
+ (id)openWithURL:(id)l error:(id *)error;
+ (void)unlinkDatastoreAt:(id)at everything:(BOOL)everything;
- (BOOL)_deleteBlockWithRow:(unint64_t)row error:(id *)error;
- (BOOL)_deleteBlocksWithZoneRow:(unint64_t)row error:(id *)error;
- (BOOL)_deleteIndexSentinelsWithModelType:(id)type error:(id *)error;
- (BOOL)_deleteIndexSentinelsWithZoneRow:(unint64_t)row error:(id *)error;
- (BOOL)_deleteItemWithRow:(unint64_t)row error:(id *)error;
- (BOOL)_deleteItemWithZoneRow:(unint64_t)row error:(id *)error;
- (BOOL)_deleteItemWithZoneRow:(unint64_t)row type:(unint64_t)type externalID:(id)d error:(id *)error;
- (BOOL)_deleteItemsWithBlockRow:(unint64_t)row error:(id *)error;
- (BOOL)_deleteNullBlocksWithZoneRow:(unint64_t)row error:(id *)error;
- (BOOL)_deleteNullItemsWithZoneRow:(unint64_t)row error:(id *)error;
- (BOOL)_deleteNullItemsWithZoneRow:(unint64_t)row type:(unint64_t)type error:(id *)error;
- (BOOL)_deleteRecordWithRow:(unint64_t)row error:(id *)error;
- (BOOL)_deleteRecordWithZoneRow:(unint64_t)row externalID:(id)d error:(id *)error;
- (BOOL)_deleteRecordWithZoneRow:(unint64_t)row modelID:(id)d error:(id *)error;
- (BOOL)_deleteRecordsWithZoneRow:(unint64_t)row error:(id *)error;
- (BOOL)_deleteZombieRecordsWithZoneRow:(unint64_t)row error:(id *)error;
- (BOOL)_deleteZoneWithRow:(unint64_t)row error:(id *)error;
- (BOOL)_insertIndexSentinelWithZoneRow:(unint64_t)row modelType:(id)type error:(id *)error;
- (BOOL)_resetOutputForRecordsWithBlockRow:(unint64_t)row error:(id *)error;
- (BOOL)_selectRecordsWithZoneRow:(unint64_t)row modelType:(id)type returning:(unint64_t)returning error:(id *)error handler:(id)handler;
- (BOOL)_updateBlockWithRow:(unint64_t)row options:(id)options error:(id *)error;
- (BOOL)_updateItemWithZoneRow:(unint64_t)row blockRow:(unint64_t)blockRow type:(unint64_t)type externalID:(id)d externalData:(id)data modelEncoding:(unint64_t)encoding modelData:(id)modelData error:(id *)self0;
- (BOOL)_updateRecordWithRow:(unint64_t)row externalID:(id)d externalData:(id)data error:(id *)error;
- (BOOL)_updateRecordWithRow:(unint64_t)row modelEncoding:(unint64_t)encoding modelData:(id)data modelSchema:(id)schema error:(id *)error;
- (BOOL)_updateRecordWithRow:(unint64_t)row modelType:(id)type modelSchema:(id)schema error:(id *)error;
- (BOOL)_updateRecordWithRow:(unint64_t)row pushBlockRow:(id)blockRow pushData:(id)data pushEncoding:(unint64_t)encoding error:(id *)error;
- (BOOL)_updateRecordWithZoneRow:(unint64_t)row externalID:(id)d externalData:(id)data error:(id *)error;
- (BOOL)_updateRecordWithZoneRow:(unint64_t)row modelID:(id)d externalData:(id)data error:(id *)error;
- (BOOL)_updateRecordWithZoneRow:(unint64_t)row modelID:(id)d pushEncoding:(unint64_t)encoding pushData:(id)data pushBlockRow:(id)blockRow error:(id *)error;
- (BOOL)_updateRecordsClearPushWithPushBlockRow:(unint64_t)row error:(id *)error;
- (BOOL)_updateZoneWithRow:(unint64_t)row replication:(id)replication error:(id *)error;
- (BOOL)initializeNewlyCreatedDatabaseWithError:(id *)error;
- (BOOL)prepareTablesWithError:(id *)error;
- (BOOL)prepareWithError:(id *)error;
- (BOOL)sqlBlockWithActivity:(id)activity error:(id *)error block:(id)block;
- (BOOL)sqlTransactionWithActivity:(id)activity error:(id *)error block:(id)block;
- (HMBLocalSQLContext)initWithURL:(id)l;
- (HMBSQLQueryStatement)selectAllRecordParentModelIDRows;
- (HMBSQLQueryStatement)selectAllRecordParentModelIDTypeRows;
- (HMBSQLQueryStatement)selectAllRecordRows;
- (HMBSQLQueryStatement)selectAllRecordTypeRows;
- (HMBSQLQueryStatement)selectReadyInputBlocks;
- (HMBSQLQueryStatement)selectReadyRollbackBlocks;
- (id)_fetchAllZones:(id *)zones;
- (id)_selectBlockWithRow:(unint64_t)row error:(id *)error;
- (id)_selectIndexSentinelForZoneRow:(unint64_t)row modelType:(id)type error:(id *)error;
- (id)_selectItemsWithBlockRow:(unint64_t)row returning:(unint64_t)returning error:(id *)error;
- (id)_selectItemsWithBlockRow:(unint64_t)row rowGreaterThan:(unint64_t)than limit:(unint64_t)limit returning:(unint64_t)returning error:(id *)error;
- (id)_selectReadyBlocksWithZoneRow:(unint64_t)row type:(unint64_t)type error:(id *)error;
- (id)_selectRecordModelIDWithZoneRow:(unint64_t)row externalID:(id)d error:(id *)error;
- (id)_selectRecordWithRow:(unint64_t)row returning:(unint64_t)returning error:(id *)error;
- (id)_selectRecordWithZoneRow:(unint64_t)row externalID:(id)d returning:(unint64_t)returning error:(id *)error;
- (id)_selectRecordWithZoneRow:(unint64_t)row modelID:(id)d returning:(unint64_t)returning error:(id *)error;
- (id)_selectRecordWithZoneRow:(unint64_t)row parentModelID:(id)d modelType:(id)type returning:(unint64_t)returning error:(id *)error;
- (id)_selectRecordsWithBlockRow:(unint64_t)row returning:(unint64_t)returning error:(id *)error;
- (id)_selectRecordsWithZoneRow:(unint64_t)row modelType:(id)type returning:(unint64_t)returning error:(id *)error;
- (id)_selectRecordsWithZoneRow:(unint64_t)row parentModelID:(id)d returning:(unint64_t)returning error:(id *)error;
- (id)_selectRecordsWithZoneRow:(unint64_t)row returning:(unint64_t)returning error:(id *)error;
- (id)_selectZoneWithRow:(unint64_t)row error:(id *)error;
- (id)flush:(BOOL)flush;
- (id)selectAllRecordsWithZoneRow:(unint64_t)row returning:(unint64_t)returning;
- (id)sqlBlockWithActivity:(id)activity block:(id)block;
- (id)sqlTransactionWithActivity:(id)activity block:(id)block;
- (int64_t)migrateFromSchemaVersion:(int64_t)version error:(id *)error;
- (int64_t)migrateToSchema01WithError:(id *)error;
- (unint64_t)_clearPushForRecordRow:(unint64_t)row expectedOutputBlockRow:(unint64_t)blockRow error:(id *)error;
- (unint64_t)_deleteRecordWithRow:(unint64_t)row expectedOutputBlockRow:(unint64_t)blockRow error:(id *)error;
- (unint64_t)_insertBlockWithZoneRow:(unint64_t)row type:(unint64_t)type error:(id *)error;
- (unint64_t)_insertBlockWithZoneRow:(unint64_t)row type:(unint64_t)type options:(id)options items:(id)items error:(id *)error;
- (unint64_t)_insertDeletionItemWithZoneRow:(unint64_t)row blockRow:(unint64_t)blockRow type:(unint64_t)type modelID:(id)d error:(id *)error;
- (unint64_t)_insertDeletionItemsWithZoneRow:(unint64_t)row blockRow:(unint64_t)blockRow type:(unint64_t)type modelType:(id)modelType error:(id *)error;
- (unint64_t)_insertDeletionItemsWithZoneRow:(unint64_t)row blockRow:(unint64_t)blockRow type:(unint64_t)type parentModelID:(id)d error:(id *)error;
- (unint64_t)_insertItemWithZoneRow:(unint64_t)row blockRow:(unint64_t)blockRow type:(unint64_t)type externalID:(id)d externalData:(id)data modelEncoding:(unint64_t)encoding modelData:(id)modelData error:(id *)self0;
- (unint64_t)_insertItemWithZoneRow:(unint64_t)row blockRow:(unint64_t)blockRow type:(unint64_t)type modelType:(id)modelType error:(id *)error;
- (unint64_t)_insertRecordWithZoneRow:(unint64_t)row externalID:(id)d externalData:(id)data modelID:(id)iD parentModelID:(id)modelID modelType:(id)type modelEncoding:(unint64_t)encoding modelData:(id)self0 modelSchema:(id)self1 pushEncoding:(unint64_t)self2 pushData:(id)self3 pushBlockRow:(id)self4 error:(id *)self5;
- (unint64_t)_insertZoneWithIdentification:(id)identification name:(id)name error:(id *)error;
- (void)finalize;
- (void)reloadSQLQueryMetadata;
@end

@implementation HMBLocalSQLContext

- (BOOL)prepareTablesWithError:(id *)error
{
  v95[2] = *MEMORY[0x277D85DE8];
  if (__reloadSQLQueryMetadata(self, error))
  {
    queryTables = [(HMBLocalSQLContext *)self queryTables];
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __56__HMBLocalSQLContext_Queryable__prepareTablesWithError___block_invoke;
    v85[3] = &unk_2786E1EC8;
    v85[4] = self;
    [queryTables enumerateKeysAndObjectsUsingBlock:v85];

    v95[0] = @"CREATE TABLE IF NOT EXISTS index_sentinel(                 store_id            INTEGER NOT NULL, type                TEXT NOT NULL, CONSTRAINT fk_index_sentinel FOREIGN KEY (store_id) REFERENCES store_v2 (id) ON DELETE CASCADE);";
    v95[1] = @"CREATE UNIQUE INDEX IF NOT EXISTS index_sentinel_unique ON index_sentinel (store_id, type);";
    [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:2];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v6 = v84 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v81 objects:v94 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v82;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v82 != v9)
          {
            objc_enumerationMutation(v6);
          }

          uTF8String = [*(*(&v81 + 1) + 8 * i) UTF8String];
          v80 = 0;
          v12 = [(HMBSQLContext *)self runSQLite3:uTF8String error:&v80];
          v13 = v80;
          v14 = v13;
          if (!v12)
          {
            v47 = objc_autoreleasePoolPush();
            selfCopy = self;
            v49 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              v50 = HMFGetLogIdentifier();
              *buf = 138543618;
              v87 = v50;
              v88 = 2112;
              v89 = v14;
              _os_log_impl(&dword_22AD27000, v49, OS_LOG_TYPE_ERROR, "%{public}@Adding sentinel table failed: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v47);
            if (error)
            {
              v51 = v14;
              v46 = 0;
              *error = v14;
            }

            else
            {
              v46 = 0;
            }

            v30 = v6;
            goto LABEL_49;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v81 objects:v94 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    errorCopy = error;
    v61 = v6;

    v15 = +[HMBModel hmbModelClassesWithQueries];
    v16 = [MEMORY[0x277CBEB58] set];
    queryTables2 = [(HMBLocalSQLContext *)self queryTables];
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __56__HMBLocalSQLContext_Queryable__prepareTablesWithError___block_invoke_51;
    v77[3] = &unk_2786E1F18;
    v62 = v15;
    v78 = v62;
    v18 = v16;
    v79 = v18;
    [queryTables2 enumerateKeysAndObjectsUsingBlock:v77];

    v76 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v14 = v18;
    v19 = [(HMBLocalSQLQueryTable *)v14 countByEnumeratingWithState:&v73 objects:v93 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v74;
      while (2)
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v74 != v21)
          {
            objc_enumerationMutation(v14);
          }

          v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"DROP TABLE IF EXISTS %@", *(*(&v73 + 1) + 8 * j)];
          uTF8String2 = [v23 UTF8String];
          v72 = 0;
          v25 = [(HMBSQLContext *)self runSQLite3:uTF8String2 error:&v72];
          v26 = v72;
          if (!v25)
          {
            v52 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v54 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              v55 = HMFGetLogIdentifier();
              *buf = 138543618;
              v87 = v55;
              v88 = 2112;
              v89 = v26;
              _os_log_impl(&dword_22AD27000, v54, OS_LOG_TYPE_ERROR, "%{public}@Failed to clean up queryable table: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v52);
            v35 = v26;
            obj = v14;
LABEL_44:
            v6 = v61;
            if (errorCopy)
            {
              v57 = v26;
              *errorCopy = v26;
            }

            v46 = 0;
            goto LABEL_47;
          }
        }

        v20 = [(HMBLocalSQLQueryTable *)v14 countByEnumeratingWithState:&v73 objects:v93 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v27 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v29 = HMFGetOSLogHandle();
    v30 = v62;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v31 = HMFGetLogIdentifier();
      hmbDescription = [v62 hmbDescription];
      *buf = 138543618;
      v87 = v31;
      v88 = 2112;
      v89 = hmbDescription;
      _os_log_impl(&dword_22AD27000, v29, OS_LOG_TYPE_DEBUG, "%{public}@Preparing query contexts for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = v62;
    v66 = [(HMBLocalSQLQueryTable *)obj countByEnumeratingWithState:&v68 objects:v92 count:16];
    if (v66)
    {
      v65 = *v69;
      v63 = selfCopy3;
      while (2)
      {
        for (k = 0; k != v66; ++k)
        {
          if (*v69 != v65)
          {
            objc_enumerationMutation(obj);
          }

          v34 = *(*(&v68 + 1) + 8 * k);
          v35 = [[HMBLocalSQLQueryTable alloc] initWithContext:selfCopy3 queryModel:v34];
          v67 = 0;
          v36 = [(HMBLocalSQLQueryTable *)v35 prepareWithError:&v67];
          v26 = v67;
          v37 = objc_autoreleasePoolPush();
          v38 = selfCopy3;
          v39 = HMFGetOSLogHandle();
          v40 = v39;
          if (!v36)
          {
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v56 = HMFGetLogIdentifier();
              *buf = 138543874;
              v87 = v56;
              v88 = 2112;
              v89 = v34;
              v90 = 2112;
              v91 = v26;
              _os_log_impl(&dword_22AD27000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to prepare query context for %@: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v37);
            v23 = v26;
            goto LABEL_44;
          }

          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            v41 = HMFGetLogIdentifier();
            modelType = [(HMBLocalSQLQueryTable *)v35 modelType];
            *buf = 138543618;
            v87 = v41;
            v88 = 2112;
            v89 = modelType;
            _os_log_impl(&dword_22AD27000, v40, OS_LOG_TYPE_DEBUG, "%{public}@Prepared query context for %@", buf, 0x16u);

            selfCopy3 = v63;
          }

          objc_autoreleasePoolPop(v37);
          queryContextsByClass = [(HMBLocalSQLContext *)v38 queryContextsByClass];
          [queryContextsByClass setObject:v35 forKey:v34];

          queryContextsByModelType = [(HMBLocalSQLContext *)v38 queryContextsByModelType];
          modelType2 = [(HMBLocalSQLQueryTable *)v35 modelType];
          [queryContextsByModelType setObject:v35 forKey:modelType2];
        }

        v46 = 1;
        v66 = [(HMBLocalSQLQueryTable *)obj countByEnumeratingWithState:&v68 objects:v92 count:16];
        if (v66)
        {
          continue;
        }

        break;
      }

      v6 = v61;
LABEL_47:
      v30 = v62;
    }

    else
    {
      v46 = 1;
      v6 = v61;
    }

LABEL_49:
  }

  else
  {
    v46 = 0;
  }

  v58 = *MEMORY[0x277D85DE8];
  return v46;
}

void __56__HMBLocalSQLContext_Queryable__prepareTablesWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 columnNames];
    v12 = [v11 allObjects];
    v13 = [v12 componentsJoinedByString:{@", "}];
    *buf = 138543874;
    v18 = v10;
    v19 = 2112;
    v20 = v5;
    v21 = 2112;
    v22 = v13;
    _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Query Table: %@ <%@>", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v14 = [v6 indexes];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__HMBLocalSQLContext_Queryable__prepareTablesWithError___block_invoke_45;
  v16[3] = &unk_2786E1EA0;
  v16[4] = *(a1 + 32);
  [v14 enumerateKeysAndObjectsUsingBlock:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __56__HMBLocalSQLContext_Queryable__prepareTablesWithError___block_invoke_51(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__HMBLocalSQLContext_Queryable__prepareTablesWithError___block_invoke_2;
  v11[3] = &unk_2786E1EF0;
  v10 = v7;
  v12 = v10;
  v13 = &v15;
  v14 = a4;
  [v9 enumerateObjectsUsingBlock:v11];
  if ((v16[3] & 1) == 0)
  {
    [*(a1 + 40) addObject:v10];
  }

  _Block_object_dispose(&v15, 8);
}

void __56__HMBLocalSQLContext_Queryable__prepareTablesWithError___block_invoke_2(void *a1, Class aClass)
{
  v3 = a1[4];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromClass(aClass);
  v6 = [v4 stringWithFormat:@"queryable_%@", v5];
  LODWORD(v3) = [v3 isEqualToString:v6];

  if (v3)
  {
    v7 = a1[6];
    *(*(a1[5] + 8) + 24) = 1;
    *v7 = 1;
  }
}

void __56__HMBLocalSQLContext_Queryable__prepareTablesWithError___block_invoke_45(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 columns];
    v12 = [v11 componentsJoinedByString:{@", "}];
    v14 = 138543874;
    v15 = v10;
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_DEBUG, "%{public}@    %@ <%@>", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)reloadSQLQueryMetadata
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__HMBLocalSQLContext_Queryable__reloadSQLQueryMetadata__block_invoke;
  v3[3] = &unk_2786E24B0;
  v3[4] = self;
  v2 = [(HMBLocalSQLContext *)self sqlBlockWithActivity:0 block:v3];
}

- (id)flush:(BOOL)flush
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __28__HMBLocalSQLContext_flush___block_invoke;
  v5[3] = &unk_2786E27C8;
  v5[4] = self;
  flushCopy = flush;
  v3 = [(HMBLocalSQLContext *)self sqlTransactionWithActivity:0 block:v5];

  return v3;
}

id __28__HMBLocalSQLContext_flush___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = v3;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v36 = v7;
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@removing all records and transactions from local", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v33 = 0;
  [v5 runSQLite3:"DELETE FROM transaction_v2" error:&v33];
  v8 = v33;
  v32 = v8;
  [v5 runSQLite3:"DELETE FROM record_v2" error:&v32];
  v9 = v32;

  v31 = v9;
  [v5 runSQLite3:"DELETE FROM block_v2" error:&v31];
  v10 = v31;

  v30 = v10;
  [v5 runSQLite3:"DELETE FROM index_sentinel" error:&v30];
  v11 = v30;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = [*(a1 + 32) queryContextsByClass];
  v13 = [v12 keyEnumerator];

  v14 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      v17 = 0;
      v18 = v11;
      do
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v19 = [*(*(&v26 + 1) + 8 * v17) dropTableSQL];
        v20 = [v19 UTF8String];
        v25 = v18;
        [v5 runSQLite3:v20 error:&v25];
        v11 = v25;

        ++v17;
        v18 = v11;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v15);
  }

  if (*(a1 + 40) == 1)
  {
    v24 = v11;
    [v5 runSQLite3:"DELETE FROM store_v2" error:&v24];
    v21 = v24;

    v11 = v21;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)_deleteIndexSentinelsWithZoneRow:(unint64_t)row error:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HMBLocalSQLContext__deleteIndexSentinelsWithZoneRow_error___block_invoke;
  v7[3] = &unk_2786E29A8;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = row;
  v7[7] = error;
  v4 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"DELETE FROM index_sentinel WHERE store_id = ?1" block:v7];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

id __61__HMBLocalSQLContext__deleteIndexSentinelsWithZoneRow_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 48);
  v7 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v7);
  v5 = v7;
  *(*(*(a1 + 40) + 8) + 24) = __execAndSetError(*(a1 + 32), a2, v5, *(a1 + 56));

  return v5;
}

- (BOOL)_deleteIndexSentinelsWithModelType:(id)type error:(id *)error
{
  typeCopy = type;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__HMBLocalSQLContext__deleteIndexSentinelsWithModelType_error___block_invoke;
  v10[3] = &unk_2786E2920;
  v7 = typeCopy;
  v11 = v7;
  selfCopy = self;
  v13 = &v15;
  errorCopy = error;
  v8 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"DELETE FROM index_sentinel WHERE type = ?1" block:v10];
  LOBYTE(error) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return error;
}

id __63__HMBLocalSQLContext__deleteIndexSentinelsWithModelType_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  v7 = 0;
  hmbBindStringSQLite3(a2, 1, v4, &v7);
  v5 = v7;
  *(*(*(a1 + 48) + 8) + 24) = __execAndSetError(*(a1 + 40), a2, v5, *(a1 + 56));

  return v5;
}

- (id)_selectIndexSentinelForZoneRow:(unint64_t)row modelType:(id)type error:(id *)error
{
  typeCopy = type;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7598;
  v24 = __Block_byref_object_dispose__7599;
  v25 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__HMBLocalSQLContext__selectIndexSentinelForZoneRow_modelType_error___block_invoke;
  v15[3] = &unk_2786E2920;
  rowCopy = row;
  v9 = typeCopy;
  v16 = v9;
  selfCopy = self;
  v18 = &v20;
  v10 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"SELECT COUNT('X') FROM index_sentinel WHERE store_id = ?1 and type = ?2" block:v15];
  v11 = v10;
  if (error)
  {
    v12 = v10;
    *error = v11;
  }

  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

id __69__HMBLocalSQLContext__selectIndexSentinelForZoneRow_modelType_error___block_invoke(void *a1, sqlite3_stmt *a2)
{
  v4 = a1[7];
  v18 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v18);
  v5 = v18;
  v6 = a1[4];
  v17 = v5;
  hmbBindStringSQLite3(a2, 2, v6, &v17);
  v7 = v17;

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__HMBLocalSQLContext__selectIndexSentinelForZoneRow_modelType_error___block_invoke_2;
  v15[3] = &unk_2786E28F8;
  v8 = a1[5];
  v15[4] = a1[6];
  v16 = v7;
  v9 = [v8 fetchSQLite3One:a2 error:&v16 block:v15];
  v10 = v16;

  v11 = 0;
  if ((v9 & 1) == 0)
  {
    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;

    v11 = v10;
  }

  return v11;
}

uint64_t __69__HMBLocalSQLContext__selectIndexSentinelForZoneRow_modelType_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{sqlite3_column_int64(a2, 0)}];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

- (BOOL)_insertIndexSentinelWithZoneRow:(unint64_t)row modelType:(id)type error:(id *)error
{
  typeCopy = type;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__HMBLocalSQLContext__insertIndexSentinelWithZoneRow_modelType_error___block_invoke;
  v12[3] = &unk_2786E2978;
  rowCopy = row;
  v9 = typeCopy;
  v13 = v9;
  selfCopy = self;
  v15 = &v18;
  errorCopy = error;
  v10 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"INSERT INTO index_sentinel (store_id block:type) VALUES(?1, ?2)", v12];
  LOBYTE(error) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return error;
}

id __70__HMBLocalSQLContext__insertIndexSentinelWithZoneRow_modelType_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 56);
  v10 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v10);
  v5 = v10;
  v6 = *(a1 + 32);
  v9 = v5;
  hmbBindStringSQLite3(a2, 2, v6, &v9);
  v7 = v9;

  *(*(*(a1 + 48) + 8) + 24) = __execAndSetError(*(a1 + 40), a2, v7, *(a1 + 64));

  return v7;
}

- (BOOL)_deleteNullItemsWithZoneRow:(unint64_t)row error:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMBLocalSQLContext__deleteNullItemsWithZoneRow_error___block_invoke;
  v7[3] = &unk_2786E29A8;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = row;
  v7[7] = error;
  v4 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"DELETE FROM transaction_v2 WHERE block_id IN (SELECT id FROM block_v2 WHERE store_v2_id=?1 AND options_data IS NULL)" block:v7];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

id __56__HMBLocalSQLContext__deleteNullItemsWithZoneRow_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 48);
  v7 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v7);
  v5 = v7;
  *(*(*(a1 + 40) + 8) + 24) = __execAndSetError(*(a1 + 32), a2, v5, *(a1 + 56));

  return v5;
}

- (BOOL)_deleteNullItemsWithZoneRow:(unint64_t)row type:(unint64_t)type error:(id *)error
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__HMBLocalSQLContext__deleteNullItemsWithZoneRow_type_error___block_invoke;
  v8[3] = &unk_2786E2700;
  v8[6] = row;
  v8[7] = type;
  v8[4] = self;
  v8[5] = &v9;
  v8[8] = error;
  v5 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"DELETE FROM transaction_v2 WHERE block_id IN (SELECT id FROM block_v2 WHERE store_v2_id=?1 AND type=?2 AND options_data IS NULL)" block:v8];
  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

id __61__HMBLocalSQLContext__deleteNullItemsWithZoneRow_type_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 48);
  v10 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v10);
  v5 = v10;
  v6 = *(a1 + 56);
  v9 = v5;
  hmbBindIntSQLite3(a2, 2, v6, &v9);
  v7 = v9;

  *(*(*(a1 + 40) + 8) + 24) = __execAndSetError(*(a1 + 32), a2, v7, *(a1 + 64));

  return v7;
}

- (id)_selectItemsWithBlockRow:(unint64_t)row returning:(unint64_t)returning error:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__7598;
  v20 = __Block_byref_object_dispose__7599;
  array = [MEMORY[0x277CBEB18] array];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__HMBLocalSQLContext__selectItemsWithBlockRow_returning_error___block_invoke;
  v15[3] = &unk_2786E29A8;
  v15[6] = row;
  v15[7] = returning;
  v15[4] = self;
  v15[5] = &v16;
  v9 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"SELECT id block:external_id, external_data, model_encoding, model_data FROM transaction_v2 WHERE  block_id=?1", v15];
  v10 = v9;
  v11 = v17[5];
  if (error && !v11)
  {
    v12 = v9;
    *error = v10;
    v11 = v17[5];
  }

  v13 = v11;

  _Block_object_dispose(&v16, 8);

  return v13;
}

id __63__HMBLocalSQLContext__selectItemsWithBlockRow_returning_error___block_invoke(void *a1, sqlite3_stmt *a2)
{
  v4 = a1[6];
  v16 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v16);
  v5 = v16;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__HMBLocalSQLContext__selectItemsWithBlockRow_returning_error___block_invoke_2;
  v14[3] = &unk_2786E29E0;
  v6 = a1[4];
  v7 = a1[5];
  v14[5] = a1[7];
  v15 = v5;
  v14[4] = v7;
  v8 = [v6 fetchSQLite3:a2 error:&v15 block:v14];
  v9 = v15;

  v10 = 0;
  if ((v8 & 1) == 0)
  {
    v11 = *(a1[5] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;

    v10 = v9;
  }

  return v10;
}

uint64_t __63__HMBLocalSQLContext__selectItemsWithBlockRow_returning_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [[HMBLocalSQLContextRowItem alloc] initWithStatement:a2 returning:*(a1 + 40)];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v3];

  return 0;
}

- (id)_selectItemsWithBlockRow:(unint64_t)row rowGreaterThan:(unint64_t)than limit:(unint64_t)limit returning:(unint64_t)returning error:(id *)error
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7598;
  v24 = __Block_byref_object_dispose__7599;
  v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:limit];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __84__HMBLocalSQLContext__selectItemsWithBlockRow_rowGreaterThan_limit_returning_error___block_invoke;
  v19[3] = &unk_2786E27A0;
  v19[6] = row;
  v19[7] = than;
  v19[8] = limit;
  v19[9] = returning;
  v19[4] = self;
  v19[5] = &v20;
  v13 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"SELECT id block:external_id, external_data, model_encoding, model_data FROM transaction_v2 WHERE  block_id=?1 AND id>?2 ORDER BY id LIMIT ?3", v19];
  v14 = v13;
  v15 = v21[5];
  if (error && !v15)
  {
    v16 = v13;
    *error = v14;
    v15 = v21[5];
  }

  v17 = v15;

  _Block_object_dispose(&v20, 8);

  return v17;
}

id __84__HMBLocalSQLContext__selectItemsWithBlockRow_rowGreaterThan_limit_returning_error___block_invoke(void *a1, sqlite3_stmt *a2)
{
  v4 = a1[6];
  v21 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v21);
  v5 = v21;
  v6 = a1[7];
  v20 = v5;
  hmbBindIntSQLite3(a2, 2, v6, &v20);
  v7 = v20;

  v8 = a1[8];
  v19 = v7;
  hmbBindIntSQLite3(a2, 3, v8, &v19);
  v9 = v19;

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __84__HMBLocalSQLContext__selectItemsWithBlockRow_rowGreaterThan_limit_returning_error___block_invoke_2;
  v17[3] = &unk_2786E29E0;
  v10 = a1[4];
  v11 = a1[5];
  v17[5] = a1[9];
  v18 = v9;
  v17[4] = v11;
  LOBYTE(v7) = [v10 fetchSQLite3:a2 error:&v18 block:v17];
  v12 = v18;

  v13 = 0;
  if ((v7 & 1) == 0)
  {
    v14 = *(a1[5] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = 0;

    v13 = v12;
  }

  return v13;
}

uint64_t __84__HMBLocalSQLContext__selectItemsWithBlockRow_rowGreaterThan_limit_returning_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [[HMBLocalSQLContextRowItem alloc] initWithStatement:a2 returning:*(a1 + 40)];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v3];

  return 0;
}

- (BOOL)_deleteItemWithZoneRow:(unint64_t)row type:(unint64_t)type externalID:(id)d error:(id *)error
{
  dCopy = d;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__HMBLocalSQLContext__deleteItemWithZoneRow_type_externalID_error___block_invoke;
  v14[3] = &unk_2786E2778;
  rowCopy = row;
  typeCopy = type;
  v11 = dCopy;
  v15 = v11;
  selfCopy = self;
  v17 = &v21;
  errorCopy = error;
  v12 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"DELETE FROM transaction_v2 WHERE store_v2_id=?1 AND type=?2 AND external_id=?3" block:v14];
  LOBYTE(error) = *(v22 + 24);

  _Block_object_dispose(&v21, 8);
  return error;
}

id __67__HMBLocalSQLContext__deleteItemWithZoneRow_type_externalID_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 56);
  v13 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v13);
  v5 = v13;
  v6 = *(a1 + 64);
  v12 = v5;
  hmbBindIntSQLite3(a2, 2, v6, &v12);
  v7 = v12;

  v8 = *(a1 + 32);
  v11 = v7;
  hmbBindDataSQLite3(a2, 3, v8, &v11);
  v9 = v11;

  *(*(*(a1 + 48) + 8) + 24) = __execAndSetError(*(a1 + 40), a2, v9, *(a1 + 72));

  return v9;
}

- (BOOL)_deleteItemWithZoneRow:(unint64_t)row error:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HMBLocalSQLContext__deleteItemWithZoneRow_error___block_invoke;
  v7[3] = &unk_2786E29A8;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = row;
  v7[7] = error;
  v4 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"DELETE FROM transaction_v2 WHERE store_v2_id=?1" block:v7];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

id __51__HMBLocalSQLContext__deleteItemWithZoneRow_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 48);
  v7 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v7);
  v5 = v7;
  *(*(*(a1 + 40) + 8) + 24) = __execAndSetError(*(a1 + 32), a2, v5, *(a1 + 56));

  return v5;
}

- (BOOL)_deleteItemsWithBlockRow:(unint64_t)row error:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__HMBLocalSQLContext__deleteItemsWithBlockRow_error___block_invoke;
  v7[3] = &unk_2786E29A8;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = row;
  v7[7] = error;
  v4 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"DELETE FROM transaction_v2 where block_id=?1" block:v7];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

id __53__HMBLocalSQLContext__deleteItemsWithBlockRow_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 48);
  v7 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v7);
  v5 = v7;
  *(*(*(a1 + 40) + 8) + 24) = __execAndSetError(*(a1 + 32), a2, v5, *(a1 + 56));

  return v5;
}

- (BOOL)_deleteItemWithRow:(unint64_t)row error:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HMBLocalSQLContext__deleteItemWithRow_error___block_invoke;
  v7[3] = &unk_2786E29A8;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = row;
  v7[7] = error;
  v4 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"DELETE FROM transaction_v2 WHERE id=?1" block:v7];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

id __47__HMBLocalSQLContext__deleteItemWithRow_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 48);
  v7 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v7);
  v5 = v7;
  *(*(*(a1 + 40) + 8) + 24) = __execAndSetError(*(a1 + 32), a2, v5, *(a1 + 56));

  return v5;
}

- (BOOL)_updateItemWithZoneRow:(unint64_t)row blockRow:(unint64_t)blockRow type:(unint64_t)type externalID:(id)d externalData:(id)data modelEncoding:(unint64_t)encoding modelData:(id)modelData error:(id *)self0
{
  dCopy = d;
  dataCopy = data;
  modelDataCopy = modelData;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __113__HMBLocalSQLContext__updateItemWithZoneRow_blockRow_type_externalID_externalData_modelEncoding_modelData_error___block_invoke;
  v24[3] = &unk_2786E2728;
  rowCopy = row;
  blockRowCopy = blockRow;
  typeCopy = type;
  v19 = dCopy;
  v25 = v19;
  v20 = dataCopy;
  v26 = v20;
  encodingCopy = encoding;
  v21 = modelDataCopy;
  v27 = v21;
  selfCopy = self;
  v29 = &v35;
  errorCopy = error;
  v22 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"INSERT OR REPLACE INTO transaction_v2 (store_v2_id block:block_id, type, external_id, external_data, model_encoding, model_data) VALUES (?1, ?2, ?3, ?4, ?5, ?6, ?7)", v24];
  LOBYTE(self) = *(v36 + 24);

  _Block_object_dispose(&v35, 8);
  return self;
}

id __113__HMBLocalSQLContext__updateItemWithZoneRow_blockRow_type_externalID_externalData_modelEncoding_modelData_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 72);
  v25 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v25);
  v5 = v25;
  v6 = *(a1 + 80);
  v24 = v5;
  hmbBindIntSQLite3(a2, 2, v6, &v24);
  v7 = v24;

  v8 = *(a1 + 88);
  v23 = v7;
  hmbBindIntSQLite3(a2, 3, v8, &v23);
  v9 = v23;

  v10 = *(a1 + 32);
  v22 = v9;
  hmbBindDataSQLite3(a2, 4, v10, &v22);
  v11 = v22;

  v12 = *(a1 + 40);
  v21 = v11;
  hmbBindDataSQLite3(a2, 5, v12, &v21);
  v13 = v21;

  v14 = *(a1 + 96);
  v20 = v13;
  hmbBindIntSQLite3(a2, 6, v14, &v20);
  v15 = v20;

  v16 = *(a1 + 48);
  v19 = v15;
  hmbBindDataSQLite3(a2, 7, v16, &v19);
  v17 = v19;

  *(*(*(a1 + 64) + 8) + 24) = __execAndSetError(*(a1 + 56), a2, v17, *(a1 + 104));

  return v17;
}

- (unint64_t)_insertItemWithZoneRow:(unint64_t)row blockRow:(unint64_t)blockRow type:(unint64_t)type modelType:(id)modelType error:(id *)error
{
  modelTypeCopy = modelType;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __75__HMBLocalSQLContext__insertItemWithZoneRow_blockRow_type_modelType_error___block_invoke;
  v17[3] = &unk_2786E2750;
  rowCopy = row;
  blockRowCopy = blockRow;
  typeCopy = type;
  v13 = modelTypeCopy;
  v18 = v13;
  selfCopy = self;
  v20 = &v25;
  errorCopy = error;
  v14 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"INSERT INTO transaction_v2 (store_v2_id block:block_id, type, external_id, model_encoding, model_data) SELECT ?1, ?2, ?3, COALESCE(external_id, randomblob(16)), 0, uuid FROM record_v2 WHERE store_v2_id = ?1 AND type = ?4 AND model_data IS NOT NULL", v17];
  v15 = v26[3];

  _Block_object_dispose(&v25, 8);
  return v15;
}

id __75__HMBLocalSQLContext__insertItemWithZoneRow_blockRow_type_modelType_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 56);
  v16 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v16);
  v5 = v16;
  v6 = *(a1 + 64);
  v15 = v5;
  hmbBindIntSQLite3(a2, 2, v6, &v15);
  v7 = v15;

  v8 = *(a1 + 72);
  v14 = v7;
  hmbBindIntSQLite3(a2, 3, v8, &v14);
  v9 = v14;

  v10 = *(a1 + 32);
  v13 = v9;
  hmbBindStringSQLite3(a2, 4, v10, &v13);
  v11 = v13;

  *(*(*(a1 + 48) + 8) + 24) = __execRowAndSetError(*(a1 + 40), a2, v11, *(a1 + 80));

  return v11;
}

- (unint64_t)_insertDeletionItemsWithZoneRow:(unint64_t)row blockRow:(unint64_t)blockRow type:(unint64_t)type parentModelID:(id)d error:(id *)error
{
  dCopy = d;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __88__HMBLocalSQLContext__insertDeletionItemsWithZoneRow_blockRow_type_parentModelID_error___block_invoke;
  v17[3] = &unk_2786E2750;
  rowCopy = row;
  blockRowCopy = blockRow;
  typeCopy = type;
  v13 = dCopy;
  v18 = v13;
  selfCopy = self;
  v20 = &v25;
  errorCopy = error;
  v14 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"INSERT INTO transaction_v2 (store_v2_id block:block_id, type, external_id, model_encoding, model_data) SELECT ?1, ?2, ?3, COALESCE(external_id, randomblob(16)), 0, uuid FROM record_v2 WHERE store_v2_id = ?1 AND parent_uuid = ?4 AND model_data IS NOT NULL", v17];
  v15 = v26[3];

  _Block_object_dispose(&v25, 8);
  return v15;
}

id __88__HMBLocalSQLContext__insertDeletionItemsWithZoneRow_blockRow_type_parentModelID_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 56);
  v16 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v16);
  v5 = v16;
  v6 = *(a1 + 64);
  v15 = v5;
  hmbBindIntSQLite3(a2, 2, v6, &v15);
  v7 = v15;

  v8 = *(a1 + 72);
  v14 = v7;
  hmbBindIntSQLite3(a2, 3, v8, &v14);
  v9 = v14;

  v10 = *(a1 + 32);
  v13 = v9;
  hmbBindUUIDSQLite3(a2, 4, v10, &v13);
  v11 = v13;

  *(*(*(a1 + 48) + 8) + 24) = __execRowAndSetError(*(a1 + 40), a2, v11, *(a1 + 80));

  return v11;
}

- (unint64_t)_insertDeletionItemWithZoneRow:(unint64_t)row blockRow:(unint64_t)blockRow type:(unint64_t)type modelID:(id)d error:(id *)error
{
  dCopy = d;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __81__HMBLocalSQLContext__insertDeletionItemWithZoneRow_blockRow_type_modelID_error___block_invoke;
  v17[3] = &unk_2786E2750;
  rowCopy = row;
  blockRowCopy = blockRow;
  typeCopy = type;
  v13 = dCopy;
  v18 = v13;
  selfCopy = self;
  v20 = &v25;
  errorCopy = error;
  v14 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"INSERT INTO transaction_v2 (store_v2_id block:block_id, type, external_id, model_encoding, model_data) SELECT ?1, ?2, ?3, COALESCE(external_id, randomblob(16)), 0, uuid FROM record_v2 WHERE store_v2_id = ?1 AND uuid = ?4 AND model_data IS NOT NULL", v17];
  v15 = v26[3];

  _Block_object_dispose(&v25, 8);
  return v15;
}

id __81__HMBLocalSQLContext__insertDeletionItemWithZoneRow_blockRow_type_modelID_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 56);
  v16 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v16);
  v5 = v16;
  v6 = *(a1 + 64);
  v15 = v5;
  hmbBindIntSQLite3(a2, 2, v6, &v15);
  v7 = v15;

  v8 = *(a1 + 72);
  v14 = v7;
  hmbBindIntSQLite3(a2, 3, v8, &v14);
  v9 = v14;

  v10 = *(a1 + 32);
  v13 = v9;
  hmbBindUUIDSQLite3(a2, 4, v10, &v13);
  v11 = v13;

  *(*(*(a1 + 48) + 8) + 24) = __execRowAndSetError(*(a1 + 40), a2, v11, *(a1 + 80));

  return v11;
}

- (unint64_t)_insertDeletionItemsWithZoneRow:(unint64_t)row blockRow:(unint64_t)blockRow type:(unint64_t)type modelType:(id)modelType error:(id *)error
{
  modelTypeCopy = modelType;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __84__HMBLocalSQLContext__insertDeletionItemsWithZoneRow_blockRow_type_modelType_error___block_invoke;
  v17[3] = &unk_2786E2750;
  rowCopy = row;
  blockRowCopy = blockRow;
  typeCopy = type;
  v13 = modelTypeCopy;
  v18 = v13;
  selfCopy = self;
  v20 = &v25;
  errorCopy = error;
  v14 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"INSERT INTO transaction_v2 (store_v2_id block:block_id, type, external_id, model_encoding, model_data) SELECT ?1, ?2, ?3, COALESCE(external_id, randomblob(16)), 0, uuid FROM record_v2 WHERE store_v2_id = ?1 AND type = ?4 AND model_data IS NOT NULL", v17];
  v15 = v26[3];

  _Block_object_dispose(&v25, 8);
  return v15;
}

id __84__HMBLocalSQLContext__insertDeletionItemsWithZoneRow_blockRow_type_modelType_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 56);
  v16 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v16);
  v5 = v16;
  v6 = *(a1 + 64);
  v15 = v5;
  hmbBindIntSQLite3(a2, 2, v6, &v15);
  v7 = v15;

  v8 = *(a1 + 72);
  v14 = v7;
  hmbBindIntSQLite3(a2, 3, v8, &v14);
  v9 = v14;

  v10 = *(a1 + 32);
  v13 = v9;
  hmbBindStringSQLite3(a2, 4, v10, &v13);
  v11 = v13;

  *(*(*(a1 + 48) + 8) + 24) = __execRowAndSetError(*(a1 + 40), a2, v11, *(a1 + 80));

  return v11;
}

- (unint64_t)_insertItemWithZoneRow:(unint64_t)row blockRow:(unint64_t)blockRow type:(unint64_t)type externalID:(id)d externalData:(id)data modelEncoding:(unint64_t)encoding modelData:(id)modelData error:(id *)self0
{
  dCopy = d;
  dataCopy = data;
  modelDataCopy = modelData;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __113__HMBLocalSQLContext__insertItemWithZoneRow_blockRow_type_externalID_externalData_modelEncoding_modelData_error___block_invoke;
  v25[3] = &unk_2786E2728;
  rowCopy = row;
  blockRowCopy = blockRow;
  typeCopy = type;
  v19 = dCopy;
  v26 = v19;
  v20 = dataCopy;
  v27 = v20;
  encodingCopy = encoding;
  v21 = modelDataCopy;
  v28 = v21;
  selfCopy = self;
  v30 = &v36;
  errorCopy = error;
  v22 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"INSERT INTO transaction_v2 (store_v2_id block:block_id, type, external_id, external_data, model_encoding, model_data) VALUES (?1, ?2, ?3, ?4, ?5, ?6, ?7)", v25];
  v23 = v37[3];

  _Block_object_dispose(&v36, 8);
  return v23;
}

id __113__HMBLocalSQLContext__insertItemWithZoneRow_blockRow_type_externalID_externalData_modelEncoding_modelData_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 72);
  v25 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v25);
  v5 = v25;
  v6 = *(a1 + 80);
  v24 = v5;
  hmbBindIntSQLite3(a2, 2, v6, &v24);
  v7 = v24;

  v8 = *(a1 + 88);
  v23 = v7;
  hmbBindIntSQLite3(a2, 3, v8, &v23);
  v9 = v23;

  v10 = *(a1 + 32);
  v22 = v9;
  hmbBindDataSQLite3(a2, 4, v10, &v22);
  v11 = v22;

  v12 = *(a1 + 40);
  v21 = v11;
  hmbBindDataSQLite3(a2, 5, v12, &v21);
  v13 = v21;

  v14 = *(a1 + 96);
  v20 = v13;
  hmbBindIntSQLite3(a2, 6, v14, &v20);
  v15 = v20;

  v16 = *(a1 + 48);
  v19 = v15;
  hmbBindDataSQLite3(a2, 7, v16, &v19);
  v17 = v19;

  *(*(*(a1 + 64) + 8) + 24) = __execRowAndSetError(*(a1 + 56), a2, v17, *(a1 + 104));

  return v17;
}

- (unint64_t)_insertBlockWithZoneRow:(unint64_t)row type:(unint64_t)type options:(id)options items:(id)items error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  itemsCopy = items;
  v40 = 0;
  rowCopy = row;
  selfCopy = self;
  typeCopy = type;
  v34 = [(HMBLocalSQLContext *)self _insertBlockWithZoneRow:row type:type error:&v40];
  v13 = v40;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v14 = itemsCopy;
  v15 = [v14 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v37;
    obj = v14;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v36 + 1) + 8 * i);
        externalID = [v19 externalID];
        externalData = [v19 externalData];
        modelEncoding = [v19 modelEncoding];
        modelData = [v19 modelData];
        v35 = v13;
        [(HMBLocalSQLContext *)selfCopy _insertItemWithZoneRow:rowCopy blockRow:v34 type:typeCopy externalID:externalID externalData:externalData modelEncoding:modelEncoding modelData:modelData error:&v35];
        v24 = v35;

        if (v24)
        {
          if (error)
          {
            v25 = v24;
            *error = v24;
          }

          v14 = obj;

          v34 = 0;
          v26 = optionsCopy;
          goto LABEL_15;
        }

        v13 = 0;
      }

      v14 = obj;
      v16 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      v13 = 0;
      v24 = 0;
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v24 = v13;
  }

  v26 = optionsCopy;
  [(HMBLocalSQLContext *)selfCopy _updateBlockWithRow:v34 options:optionsCopy error:error];
LABEL_15:

  v27 = *MEMORY[0x277D85DE8];
  return v34;
}

- (BOOL)_deleteNullBlocksWithZoneRow:(unint64_t)row error:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HMBLocalSQLContext__deleteNullBlocksWithZoneRow_error___block_invoke;
  v7[3] = &unk_2786E29A8;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = row;
  v7[7] = error;
  v4 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"DELETE FROM block_v2 WHERE store_v2_id=?1 AND options_data IS NULL" block:v7];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

id __57__HMBLocalSQLContext__deleteNullBlocksWithZoneRow_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 48);
  v7 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v7);
  v5 = v7;
  *(*(*(a1 + 40) + 8) + 24) = __execAndSetError(*(a1 + 32), a2, v5, *(a1 + 56));

  return v5;
}

- (id)_selectBlockWithRow:(unint64_t)row error:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__7598;
  v12 = __Block_byref_object_dispose__7599;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HMBLocalSQLContext__selectBlockWithRow_error___block_invoke;
  v7[3] = &unk_2786E29A8;
  v7[6] = row;
  v7[7] = error;
  v7[4] = self;
  v7[5] = &v8;
  v4 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"SELECT id block:type, options_data FROM block_v2 WHERE id=?1", v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

id __48__HMBLocalSQLContext__selectBlockWithRow_error___block_invoke(void *a1, sqlite3_stmt *a2)
{
  hmbBindIntSQLite3(a2, 1, a1[6], a1[7]);
  v4 = a1[7];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__HMBLocalSQLContext__selectBlockWithRow_error___block_invoke_2;
  v10[3] = &unk_2786E28F8;
  v5 = a1[4];
  v10[4] = a1[5];
  if ([v5 fetchSQLite3One:a2 error:v4 block:v10])
  {
    v6 = 0;
  }

  else
  {
    v7 = *(a1[5] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;

    v6 = *a1[7];
  }

  return v6;
}

uint64_t __48__HMBLocalSQLContext__selectBlockWithRow_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [HMBLocalSQLContextRowBlock alloc];
  v5 = sqlite3_column_int64(a2, 0);
  v6 = sqlite3_column_int64(a2, 1);
  v7 = [MEMORY[0x277CBEA90] hmbDataWithSQLite3Column:a2 column:2];
  v8 = [(HMBLocalSQLContextRowBlock *)v4 initWithBlockRow:v5 type:v6 options:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return 0;
}

- (id)_selectReadyBlocksWithZoneRow:(unint64_t)row type:(unint64_t)type error:(id *)error
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__7598;
  v17 = __Block_byref_object_dispose__7599;
  array = [MEMORY[0x277CBEB18] array];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__HMBLocalSQLContext__selectReadyBlocksWithZoneRow_type_error___block_invoke;
  v12[3] = &unk_2786E2700;
  v12[6] = row;
  v12[7] = error;
  v12[8] = type;
  v12[4] = self;
  v12[5] = &v13;
  v9 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"SELECT id block:options_data FROM block_v2 WHERE store_v2_id=?1 AND type=?2 AND options_data IS NOT NULL ORDER BY id", v12];
  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

id __63__HMBLocalSQLContext__selectReadyBlocksWithZoneRow_type_error___block_invoke(void *a1, sqlite3_stmt *a2)
{
  hmbBindIntSQLite3(a2, 1, a1[6], a1[7]);
  hmbBindIntSQLite3(a2, 2, a1[8], a1[7]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__HMBLocalSQLContext__selectReadyBlocksWithZoneRow_type_error___block_invoke_2;
  v11[3] = &unk_2786E29E0;
  v4 = a1[7];
  v5 = a1[8];
  v6 = a1[4];
  v11[4] = a1[5];
  v11[5] = v5;
  if ([v6 fetchSQLite3:a2 error:v4 block:v11])
  {
    v7 = 0;
  }

  else
  {
    v8 = *(a1[5] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;

    v7 = *a1[7];
  }

  return v7;
}

uint64_t __63__HMBLocalSQLContext__selectReadyBlocksWithZoneRow_type_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [HMBLocalSQLContextRowBlock alloc];
  v5 = sqlite3_column_int64(a2, 0);
  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CBEA90] hmbDataWithSQLite3Column:a2 column:1];
  v8 = [(HMBLocalSQLContextRowBlock *)v4 initWithBlockRow:v5 type:v6 options:v7];

  [*(*(*(a1 + 32) + 8) + 40) addObject:v8];
  return 0;
}

- (BOOL)_updateBlockWithRow:(unint64_t)row options:(id)options error:(id *)error
{
  optionsCopy = options;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__HMBLocalSQLContext__updateBlockWithRow_options_error___block_invoke;
  v12[3] = &unk_2786E2978;
  rowCopy = row;
  v9 = optionsCopy;
  v13 = v9;
  selfCopy = self;
  v15 = &v18;
  errorCopy = error;
  v10 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"UPDATE block_v2 SET options_data=?2 WHERE id=?1" block:v12];
  LOBYTE(error) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return error;
}

id __56__HMBLocalSQLContext__updateBlockWithRow_options_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 56);
  v10 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v10);
  v5 = v10;
  v6 = *(a1 + 32);
  v9 = v5;
  hmbBindDataSQLite3(a2, 2, v6, &v9);
  v7 = v9;

  *(*(*(a1 + 48) + 8) + 24) = __execAndSetError(*(a1 + 40), a2, v7, *(a1 + 64));

  return v7;
}

- (BOOL)_deleteBlocksWithZoneRow:(unint64_t)row error:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__HMBLocalSQLContext__deleteBlocksWithZoneRow_error___block_invoke;
  v7[3] = &unk_2786E29A8;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = row;
  v7[7] = error;
  v4 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"DELETE FROM block_v2 WHERE store_v2_id=?1" block:v7];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

id __53__HMBLocalSQLContext__deleteBlocksWithZoneRow_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 48);
  v7 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v7);
  v5 = v7;
  *(*(*(a1 + 40) + 8) + 24) = __execAndSetError(*(a1 + 32), a2, v5, *(a1 + 56));

  return v5;
}

- (BOOL)_deleteBlockWithRow:(unint64_t)row error:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HMBLocalSQLContext__deleteBlockWithRow_error___block_invoke;
  v7[3] = &unk_2786E29A8;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = row;
  v7[7] = error;
  v4 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"DELETE FROM block_v2 WHERE id=?1" block:v7];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

id __48__HMBLocalSQLContext__deleteBlockWithRow_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 48);
  v7 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v7);
  v5 = v7;
  *(*(*(a1 + 40) + 8) + 24) = __execAndSetError(*(a1 + 32), a2, v5, *(a1 + 56));

  return v5;
}

- (unint64_t)_insertBlockWithZoneRow:(unint64_t)row type:(unint64_t)type error:(id *)error
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__HMBLocalSQLContext__insertBlockWithZoneRow_type_error___block_invoke;
  v8[3] = &unk_2786E2700;
  v8[6] = row;
  v8[7] = type;
  v8[4] = self;
  v8[5] = &v9;
  v8[8] = error;
  v5 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"INSERT INTO block_v2 (store_v2_id block:type) VALUES (?1, ?2)", v8];
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

id __57__HMBLocalSQLContext__insertBlockWithZoneRow_type_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 48);
  v11 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v11);
  v5 = v11;
  v6 = *(a1 + 56);
  v10 = v5;
  hmbBindIntSQLite3(a2, 2, v6, &v10);
  v7 = v10;

  *(*(*(a1 + 40) + 8) + 24) = __execRowAndSetError(*(a1 + 32), a2, v7, *(a1 + 64));
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_updateZoneWithRow:(unint64_t)row replication:(id)replication error:(id *)error
{
  replicationCopy = replication;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__HMBLocalSQLContext__updateZoneWithRow_replication_error___block_invoke;
  v12[3] = &unk_2786E2978;
  rowCopy = row;
  v9 = replicationCopy;
  v13 = v9;
  selfCopy = self;
  v15 = &v18;
  errorCopy = error;
  v10 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"UPDATE store_v2 SET replication_data=?2 WHERE id=?1" block:v12];
  LOBYTE(error) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return error;
}

id __59__HMBLocalSQLContext__updateZoneWithRow_replication_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 56);
  v10 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v10);
  v5 = v10;
  v6 = *(a1 + 32);
  v9 = v5;
  hmbBindUUIDSQLite3(a2, 2, v6, &v9);
  v7 = v9;

  *(*(*(a1 + 48) + 8) + 24) = __execAndSetError(*(a1 + 40), a2, v7, *(a1 + 64));

  return v7;
}

- (id)_selectZoneWithRow:(unint64_t)row error:(id *)error
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7598;
  v16 = __Block_byref_object_dispose__7599;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__HMBLocalSQLContext__selectZoneWithRow_error___block_invoke;
  v11[3] = &unk_2786E29A8;
  v11[6] = row;
  v11[7] = error;
  v11[4] = self;
  v11[5] = &v12;
  v5 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"SELECT id block:label, identifier_data, replication_data FROM store_v2 WHERE id=?1", v11];
  v6 = v5;
  v7 = v13[5];
  if (error && !v7)
  {
    v8 = v5;
    *error = v6;
    v7 = v13[5];
  }

  v9 = v7;

  _Block_object_dispose(&v12, 8);

  return v9;
}

id __47__HMBLocalSQLContext__selectZoneWithRow_error___block_invoke(void *a1, sqlite3_stmt *a2)
{
  v4 = a1[6];
  v14 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v14);
  v5 = v14;
  v6 = a1[7];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__HMBLocalSQLContext__selectZoneWithRow_error___block_invoke_2;
  v13[3] = &unk_2786E28F8;
  v7 = a1[4];
  v13[4] = a1[5];
  v8 = [v7 fetchSQLite3One:a2 error:v6 block:v13];
  v9 = 0;
  if ((v8 & 1) == 0)
  {
    v10 = *(a1[5] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;

    v9 = v5;
  }

  return v9;
}

uint64_t __47__HMBLocalSQLContext__selectZoneWithRow_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_column_int64(a2, 0);
  v5 = [MEMORY[0x277CCACA8] hmbStringWithSQLite3Column:a2 column:1];
  v6 = [MEMORY[0x277CBEA90] hmbDataWithSQLite3Column:a2 column:2];
  v7 = [[HMBLocalSQLContextRowZone alloc] initWithZoneRow:v4 name:v5 token:v6];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [MEMORY[0x277CCAD78] hmbUUIDWithSQLite3Column:a2 column:4];
  [*(*(*(a1 + 32) + 8) + 40) setReplication:v10];

  return 0;
}

- (id)_fetchAllZones:(id *)zones
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7598;
  v16 = __Block_byref_object_dispose__7599;
  array = [MEMORY[0x277CBEB18] array];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37__HMBLocalSQLContext__fetchAllZones___block_invoke;
  v11[3] = &unk_2786E26D8;
  v11[4] = self;
  v11[5] = &v12;
  v5 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"SELECT id block:label, identifier_data, replication_data FROM store_v2", v11];
  v6 = v5;
  v7 = v13[5];
  if (zones && !v7)
  {
    v8 = v5;
    *zones = v6;
    v7 = v13[5];
  }

  v9 = v7;

  _Block_object_dispose(&v12, 8);

  return v9;
}

id __37__HMBLocalSQLContext__fetchAllZones___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37__HMBLocalSQLContext__fetchAllZones___block_invoke_2;
  v10[3] = &unk_2786E26B0;
  v10[4] = *(a1 + 40);
  v11 = 0;
  v4 = [v3 fetchSQLite3:a2 error:&v11 block:v10];
  v5 = v11;
  v6 = 0;
  if ((v4 & 1) == 0)
  {
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;

    v6 = v5;
  }

  return v6;
}

uint64_t __37__HMBLocalSQLContext__fetchAllZones___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_column_int64(a2, 0);
  v5 = [MEMORY[0x277CCACA8] hmbStringWithSQLite3Column:a2 column:1];
  v6 = [MEMORY[0x277CBEA90] hmbDataWithSQLite3Column:a2 column:2];
  v7 = [[HMBLocalSQLContextRowZone alloc] initWithZoneRow:v4 name:v5 token:v6];
  v8 = [MEMORY[0x277CCAD78] hmbUUIDWithSQLite3Column:a2 column:3];
  [(HMBLocalSQLContextRowZone *)v7 setReplication:v8];

  [*(*(*(a1 + 32) + 8) + 40) addObject:v7];
  return 0;
}

- (BOOL)_deleteZoneWithRow:(unint64_t)row error:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HMBLocalSQLContext__deleteZoneWithRow_error___block_invoke;
  v7[3] = &unk_2786E29A8;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = row;
  v7[7] = error;
  v4 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"DELETE FROM store_v2 WHERE id=?1" block:v7];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

id __47__HMBLocalSQLContext__deleteZoneWithRow_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 48);
  v7 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v7);
  v5 = v7;
  *(*(*(a1 + 40) + 8) + 24) = __execAndSetError(*(a1 + 32), a2, v5, *(a1 + 56));

  return v5;
}

- (unint64_t)_insertZoneWithIdentification:(id)identification name:(id)name error:(id *)error
{
  identificationCopy = identification;
  nameCopy = name;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__HMBLocalSQLContext__insertZoneWithIdentification_name_error___block_invoke;
  v15[3] = &unk_2786E2688;
  v10 = nameCopy;
  v16 = v10;
  v11 = identificationCopy;
  v17 = v11;
  selfCopy = self;
  v19 = &v21;
  errorCopy = error;
  v12 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"INSERT INTO store_v2 (label block:identifier_data, replication_data) VALUES (?1, ?2, ?3)", v15];
  v13 = v22[3];

  _Block_object_dispose(&v21, 8);
  return v13;
}

id __63__HMBLocalSQLContext__insertZoneWithIdentification_name_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  v13 = 0;
  hmbBindStringSQLite3(a2, 1, v4, &v13);
  v5 = v13;
  v6 = *(a1 + 40);
  v12 = v5;
  hmbBindDataSQLite3(a2, 2, v6, &v12);
  v7 = v12;

  v8 = [MEMORY[0x277CBEA90] data];
  v11 = v7;
  hmbBindDataSQLite3(a2, 3, v8, &v11);
  v9 = v11;

  *(*(*(a1 + 56) + 8) + 24) = __execRowAndSetError(*(a1 + 48), a2, v9, *(a1 + 64));

  return v9;
}

- (int64_t)migrateFromSchemaVersion:(int64_t)version error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  if (version >= 2)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543874;
      v38 = v9;
      v39 = 2048;
      versionCopy = version;
      v41 = 2048;
      v42 = 1;
      _os_log_impl(&dword_22AD27000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failing database migration because the database has a later version than our current known version (%ld > %ld).", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    result = 0;
    goto LABEL_20;
  }

  if (!version && [(HMBLocalSQLContext *)self migrateToSchema01WithError:error]!= 3)
  {
LABEL_10:
    v35.receiver = self;
    v35.super_class = HMBLocalSQLContext;
    result = [(HMBSQLContext *)&v35 migrateFromSchemaVersion:version error:error];
    goto LABEL_20;
  }

  selfCopy2 = self;
  v13 = [MEMORY[0x277CBEB98] setWithArray:&unk_283EB9F18];
  connection = [(HMBSQLContext *)selfCopy2 connection];
  v36 = 0;
  v15 = selectSQLite3(connection, "SELECT name FROM sqlite_master WHERE type = 'table'", MEMORY[0x277CBEC10], &v36);
  v16 = v36;
  if (v15)
  {
    v17 = MEMORY[0x277CBEB98];
    na_arrayByFlattening = [v15 na_arrayByFlattening];
    v19 = [v17 setWithArray:na_arrayByFlattening];

    if ([v13 isSubsetOfSet:v19])
    {

      goto LABEL_10;
    }

    v24 = objc_autoreleasePoolPush();
    v21 = selfCopy2;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      hmbDescription = [v19 hmbDescription];
      [v13 hmbDescription];
      v28 = v34 = v24;
      *buf = 138543874;
      v38 = v26;
      v39 = 2112;
      versionCopy = hmbDescription;
      v41 = 2112;
      v42 = v28;
      _os_log_impl(&dword_22AD27000, v25, OS_LOG_TYPE_ERROR, "%{public}@Set of found tables: %@ does not contain all required tables: %@", buf, 0x20u);

      v24 = v34;
    }

    objc_autoreleasePoolPop(v24);
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy2;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v23;
      v39 = 2112;
      versionCopy = v16;
      _os_log_impl(&dword_22AD27000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unable to query all required tables: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
  }

  v29 = objc_autoreleasePoolPush();
  v30 = selfCopy2;
  v31 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = HMFGetLogIdentifier();
    *buf = 138543362;
    v38 = v32;
    _os_log_impl(&dword_22AD27000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@Requiring re-init after migration because all required tables do not exist", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v29);
  result = 1;
LABEL_20:
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)finalize
{
  os_unfair_lock_assert_owner(&self->super._lock);
  [(HMBSQLStatement *)self->_selectReadyInputBlocks finalize];
  [(HMBSQLStatement *)self->_selectReadyRollbackBlocks finalize];
  [(HMBSQLStatement *)self->_selectAllRecordRows finalize];
  [(HMBSQLStatement *)self->_selectAllRecordTypeRows finalize];
  [(HMBSQLStatement *)self->_selectAllRecordParentModelIDRows finalize];
  [(HMBSQLStatement *)self->_selectAllRecordParentModelIDTypeRows finalize];
  queryContextsByModelType = [(HMBLocalSQLContext *)self queryContextsByModelType];
  [queryContextsByModelType enumerateKeysAndObjectsUsingBlock:&__block_literal_global_7615];

  queryContextsByClass = [(HMBLocalSQLContext *)self queryContextsByClass];
  [queryContextsByClass removeAllObjects];

  queryContextsByModelType2 = [(HMBLocalSQLContext *)self queryContextsByModelType];
  [queryContextsByModelType2 removeAllObjects];

  v6.receiver = self;
  v6.super_class = HMBLocalSQLContext;
  [(HMBSQLContext *)&v6 finalize];
}

- (BOOL)initializeNewlyCreatedDatabaseWithError:(id *)error
{
  v74 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  [MEMORY[0x277CBEA60] arrayWithObjects:{@"CREATE TABLE IF NOT EXISTS store_v2(                              id                  INTEGER PRIMARY KEY AUTOINCREMENT, label               STRING  NOT NULL, identifier_data     BLOB UNIQUE NOT NULL, replication_data    BLOB                                             );", @"CREATE TABLE IF NOT EXISTS block_v2(                              id                  INTEGER PRIMARY KEY AUTOINCREMENT, store_v2_id         INTEGER NOT NULL CONSTRAINT fetch_store_v2_id_fkey REFERENCES store_v2 (id) ON DELETE RESTRICT, type                INTEGER NOT NULL, options_data        BLOB                                             );", @"CREATE TABLE IF NOT EXISTS transaction_v2(                        id                  INTEGER PRIMARY KEY AUTOINCREMENT, store_v2_id         INTEGER NOT NULL CONSTRAINT fetch_store_v2_id_fkey REFERENCES store_v2 (id) ON DELETE RESTRICT, block_id            INTEGER NOT NULL CONSTRAINT transaction_v2_block_v2_id_fkey REFERENCES block_v2 (id) ON DELETE RESTRICT, type                INTEGER NOT NULL, external_id         BLOB    NOT NULL, external_data       BLOB, model_encoding      INTEGER NOT NULL, model_data          BLOB                                             );", @"CREATE TABLE IF NOT EXISTS record_v2(                             id                  INTEGER PRIMARY KEY AUTOINCREMENT, store_v2_id         INTEGER NOT NULL CONSTRAINT record_v2_group_id_fkey REFERENCES store_v2 (id) ON DELETE RESTRICT, uuid                BLOB    NOT NULL, parent_uuid         BLOB    NOT NULL, type                TEXT, model_schema        BLOB, external_id         BLOB, external_data       BLOB, model_encoding      INTEGER NOT NULL, model_data          BLOB, push_encoding       INTEGER NOT NULL, push_data           BLOB, push_block_id       INTEGER CONSTRAINT record_v2_block_v2_fkey REFERENCES block_v2 (id) ON DELETE RESTRICT            );", @"CREATE TABLE IF NOT EXISTS index_sentinel(                 store_id            INTEGER NOT NULL, type                TEXT NOT NULL, CONSTRAINT fk_index_sentinel FOREIGN KEY (store_id) REFERENCES store_v2 (id) ON DELETE CASCADE);", 0}];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v5 = v55 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v52 objects:v68 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v53;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v53 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v52 + 1) + 8 * i);
        v11 = -[HMBSQLContext runSQLite3:](selfCopy, "runSQLite3:", [v10 UTF8String]);
        if (v11)
        {
          v22 = v11;
          v23 = objc_autoreleasePoolPush();
          v24 = selfCopy;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = HMFGetLogIdentifier();
            *buf = 138543874;
            v63 = v26;
            v64 = 2112;
            v65 = v10;
            v66 = 2112;
            v67 = v22;
            _os_log_impl(&dword_22AD27000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to initialize SQL table %@: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v23);
          sqlite3_close([(HMBSQLContext *)v24 connection]);
          v27 = v22;
          v20 = v27;
          v12 = v5;
          goto LABEL_22;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v52 objects:v68 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  [MEMORY[0x277CBEA60] arrayWithObjects:{@"CREATE UNIQUE INDEX IF NOT EXISTS transaction_v2_ukey ON transaction_v2 (store_v2_id, type, external_id);", @"CREATE UNIQUE INDEX IF NOT EXISTS record_v2_external_store_v2_id_ukey ON record_v2 (store_v2_id, external_id);", @"CREATE UNIQUE INDEX IF NOT EXISTS record_v2_uuid_store_v2_id_ukey ON record_v2 (store_v2_id, uuid);", @"CREATE INDEX IF NOT EXISTS block_v2_store_type ON block_v2 (store_v2_id, type, id);", @"CREATE INDEX IF NOT EXISTS transaction_v2_block_id ON transaction_v2 (block_id, id);", @"CREATE INDEX IF NOT EXISTS record_v2_push_id ON record_v2 (push_block_id, id);", @"CREATE INDEX IF NOT EXISTS record_v2_store ON record_v2 (store_v2_id);", @"CREATE INDEX IF NOT EXISTS record_v2_store_uuid ON record_v2 (store_v2_id, uuid);", @"CREATE INDEX IF NOT EXISTS record_v2_store_parent_uuid ON record_v2 (store_v2_id, parent_uuid);", @"CREATE INDEX IF NOT EXISTS record_v2_store_type_parent_uuid ON record_v2 (store_v2_id, parent_uuid, type);", @"CREATE INDEX IF NOT EXISTS record_v2_store_external ON record_v2 (store_v2_id, external_id);", @"CREATE UNIQUE INDEX IF NOT EXISTS index_sentinel_unique ON index_sentinel (store_id, type);", 0}];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v12 = v51 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v48 objects:buf count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v49;
    while (2)
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v49 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v48 + 1) + 8 * j);
        v18 = -[HMBSQLContext runSQLite3:](selfCopy, "runSQLite3:", [v17 UTF8String]);
        if (v18)
        {
          v28 = v18;
          v29 = objc_autoreleasePoolPush();
          v30 = selfCopy;
          v31 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v32 = HMFGetLogIdentifier();
            *v56 = 138543874;
            v57 = v32;
            v58 = 2112;
            v59 = v17;
            v60 = 2112;
            v61 = v28;
            _os_log_impl(&dword_22AD27000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to initialize SQL index %@: %@", v56, 0x20u);
          }

          objc_autoreleasePoolPop(v29);
          sqlite3_close([(HMBSQLContext *)v30 connection]);
          v20 = v28;

          v21 = v20;
          goto LABEL_26;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v48 objects:buf count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v47 = 0;
  v19 = [(HMBSQLContext *)selfCopy setSchemaVersion:1 error:&v47];
  v20 = v47;
  if (v19)
  {
    v21 = 0;
  }

  else
  {
    v42 = objc_autoreleasePoolPush();
    v43 = selfCopy;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = HMFGetLogIdentifier();
      *v56 = 138543874;
      v57 = v45;
      v58 = 2048;
      v59 = 1;
      v60 = 2112;
      v61 = v20;
      _os_log_impl(&dword_22AD27000, v44, OS_LOG_TYPE_ERROR, "%{public}@Failed to updated schema version to current version %lu: %@", v56, 0x20u);
    }

    objc_autoreleasePoolPop(v42);
    sqlite3_close([(HMBSQLContext *)v43 connection]);
    v27 = v20;
    v20 = v27;
LABEL_22:
    v21 = v27;
  }

LABEL_26:

  if (v21)
  {
    v33 = objc_autoreleasePoolPush();
    v34 = selfCopy;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      v37 = [(HMBSQLContext *)v34 url];
      *v68 = 138543874;
      v69 = v36;
      v70 = 2112;
      v71 = v37;
      v72 = 2112;
      v73 = v21;
      _os_log_impl(&dword_22AD27000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to create SQLite datastore %@: %@", v68, 0x20u);
    }

    objc_autoreleasePoolPop(v33);
    if (error)
    {
      v38 = v21;
      v39 = 0;
      *error = v21;
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v46.receiver = selfCopy;
    v46.super_class = HMBLocalSQLContext;
    v39 = [(HMBSQLContext *)&v46 initializeNewlyCreatedDatabaseWithError:error];
  }

  v40 = *MEMORY[0x277D85DE8];
  return v39;
}

- (BOOL)prepareWithError:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = HMBLocalSQLContext;
  if ([(HMBSQLContext *)&v15 prepareWithError:?])
  {
    v14 = 0;
    v5 = [(HMBLocalSQLContext *)self prepareTablesWithError:&v14];
    v6 = v14;
    if (!v5)
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543618;
        v17 = v10;
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to prepare tables: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      if (error)
      {
        v11 = v6;
        *error = v6;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (HMBSQLQueryStatement)selectAllRecordParentModelIDTypeRows
{
  os_unfair_lock_assert_owner(&self->super._lock);
  selectAllRecordParentModelIDTypeRows = self->_selectAllRecordParentModelIDTypeRows;
  if (!selectAllRecordParentModelIDTypeRows)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s LIMIT (%lu)", "SELECT record_v2.id, record_v2.external_id, record_v2.external_data, record_v2.model_encoding, record_v2.model_data, record_v2.model_schema, record_v2.type, record_v2.push_encoding, record_v2.push_data, record_v2.push_block_id, record_v2.uuid FROM record_v2 WHERE store_v2_id=:_store_id AND parent_uuid=:_parent_uuid AND type == :_type AND id>:_sequence_offset ORDER BY id", +[HMBSQLQueryIterator maximumRowsPerSelect](HMBSQLQueryIterator, "maximumRowsPerSelect")];
    v5 = [[HMBSQLQueryStatement alloc] initWithContext:self statement:v4];
    v6 = self->_selectAllRecordParentModelIDTypeRows;
    self->_selectAllRecordParentModelIDTypeRows = v5;

    selectAllRecordParentModelIDTypeRows = self->_selectAllRecordParentModelIDTypeRows;
  }

  return selectAllRecordParentModelIDTypeRows;
}

- (HMBSQLQueryStatement)selectAllRecordParentModelIDRows
{
  os_unfair_lock_assert_owner(&self->super._lock);
  selectAllRecordParentModelIDRows = self->_selectAllRecordParentModelIDRows;
  if (!selectAllRecordParentModelIDRows)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s LIMIT (%lu)", "SELECT record_v2.id, record_v2.external_id, record_v2.external_data, record_v2.model_encoding, record_v2.model_data, record_v2.model_schema, record_v2.type, record_v2.push_encoding, record_v2.push_data, record_v2.push_block_id, record_v2.uuid FROM record_v2 WHERE store_v2_id=:_store_id AND parent_uuid=:_parent_uuid AND id>:_sequence_offset ORDER BY id", +[HMBSQLQueryIterator maximumRowsPerSelect](HMBSQLQueryIterator, "maximumRowsPerSelect")];
    v5 = [[HMBSQLQueryStatement alloc] initWithContext:self statement:v4];
    v6 = self->_selectAllRecordParentModelIDRows;
    self->_selectAllRecordParentModelIDRows = v5;

    selectAllRecordParentModelIDRows = self->_selectAllRecordParentModelIDRows;
  }

  return selectAllRecordParentModelIDRows;
}

- (HMBSQLQueryStatement)selectAllRecordTypeRows
{
  os_unfair_lock_assert_owner(&self->super._lock);
  selectAllRecordTypeRows = self->_selectAllRecordTypeRows;
  if (!selectAllRecordTypeRows)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s LIMIT (%lu)", "SELECT record_v2.id, record_v2.external_id, record_v2.external_data, record_v2.model_encoding, record_v2.model_data, record_v2.model_schema, record_v2.type, record_v2.push_encoding, record_v2.push_data, record_v2.push_block_id, record_v2.uuid FROM record_v2 WHERE store_v2_id=:_store_id AND type=:_model_type AND id>:_sequence_offset ORDER BY id", +[HMBSQLQueryIterator maximumRowsPerSelect](HMBSQLQueryIterator, "maximumRowsPerSelect")];
    v5 = [[HMBSQLQueryStatement alloc] initWithContext:self statement:v4];
    v6 = self->_selectAllRecordTypeRows;
    self->_selectAllRecordTypeRows = v5;

    selectAllRecordTypeRows = self->_selectAllRecordTypeRows;
  }

  return selectAllRecordTypeRows;
}

- (HMBSQLQueryStatement)selectAllRecordRows
{
  os_unfair_lock_assert_owner(&self->super._lock);
  selectAllRecordRows = self->_selectAllRecordRows;
  if (!selectAllRecordRows)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s LIMIT (%lu)", "SELECT record_v2.id, record_v2.external_id, record_v2.external_data, record_v2.model_encoding, record_v2.model_data, record_v2.model_schema, record_v2.type, record_v2.push_encoding, record_v2.push_data, record_v2.push_block_id, record_v2.uuid FROM record_v2 WHERE store_v2_id=:_store_id AND id>:_sequence_offset ORDER BY id", +[HMBSQLQueryIterator maximumRowsPerSelect](HMBSQLQueryIterator, "maximumRowsPerSelect")];
    v5 = [[HMBSQLQueryStatement alloc] initWithContext:self statement:v4];
    v6 = self->_selectAllRecordRows;
    self->_selectAllRecordRows = v5;

    selectAllRecordRows = self->_selectAllRecordRows;
  }

  return selectAllRecordRows;
}

- (HMBSQLQueryStatement)selectReadyRollbackBlocks
{
  os_unfair_lock_assert_owner(&self->super._lock);
  selectReadyRollbackBlocks = self->_selectReadyRollbackBlocks;
  if (!selectReadyRollbackBlocks)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s LIMIT (%lu)", "SELECT id, type, options_data FROM block_v2 WHERE store_v2_id=:_store_id AND id<=:_sequence_offset AND type=3 ORDER BY id DESC", +[HMBSQLQueryIterator maximumRowsPerSelect](HMBSQLQueryIterator, "maximumRowsPerSelect")];
    v5 = [[HMBSQLQueryStatement alloc] initWithContext:self statement:v4];
    v6 = self->_selectReadyRollbackBlocks;
    self->_selectReadyRollbackBlocks = v5;

    selectReadyRollbackBlocks = self->_selectReadyRollbackBlocks;
  }

  return selectReadyRollbackBlocks;
}

- (HMBSQLQueryStatement)selectReadyInputBlocks
{
  os_unfair_lock_assert_owner(&self->super._lock);
  selectReadyInputBlocks = self->_selectReadyInputBlocks;
  if (!selectReadyInputBlocks)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s LIMIT (%lu)", "SELECT id, type, options_data FROM block_v2 WHERE store_v2_id=:_store_id AND id>:_sequence_offset AND (type=1 OR type=2) AND options_data IS NOT NULL ORDER BY id", +[HMBSQLQueryIterator maximumRowsPerSelect](HMBSQLQueryIterator, "maximumRowsPerSelect")];
    v5 = [[HMBSQLQueryStatement alloc] initWithContext:self statement:v4];
    v6 = self->_selectReadyInputBlocks;
    self->_selectReadyInputBlocks = v5;

    selectReadyInputBlocks = self->_selectReadyInputBlocks;
  }

  return selectReadyInputBlocks;
}

- (BOOL)sqlTransactionWithActivity:(id)activity error:(id *)error block:(id)block
{
  v23 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  blockCopy = block;
  if (error && *error)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *error;
      v19 = 138543618;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_22AD27000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring SQL block request due to previous error: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v15 = [(HMBLocalSQLContext *)self sqlTransactionWithActivity:activityCopy block:blockCopy];
    v16 = v15 == 0;
    if (error && v15)
    {
      v15 = v15;
      v16 = 0;
      *error = v15;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)sqlBlockWithActivity:(id)activity error:(id *)error block:(id)block
{
  v23 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  blockCopy = block;
  if (error && *error)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *error;
      v19 = 138543618;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_22AD27000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring SQL block request due to previous error: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v15 = [(HMBLocalSQLContext *)self sqlBlockWithActivity:activityCopy block:blockCopy];
    v16 = v15 == 0;
    if (error && v15)
    {
      v15 = v15;
      v16 = 0;
      *error = v15;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)sqlTransactionWithActivity:(id)activity block:(id)block
{
  blockCopy = block;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__HMBLocalSQLContext_sqlTransactionWithActivity_block___block_invoke;
  v11[3] = &unk_2786E2640;
  v12 = blockCopy;
  v10.receiver = self;
  v10.super_class = HMBLocalSQLContext;
  v7 = blockCopy;
  v8 = [(HMBSQLContext *)&v10 sqlTransactionWithActivity:activity block:v11];

  return v8;
}

- (id)sqlBlockWithActivity:(id)activity block:(id)block
{
  blockCopy = block;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__HMBLocalSQLContext_sqlBlockWithActivity_block___block_invoke;
  v11[3] = &unk_2786E2640;
  v12 = blockCopy;
  v10.receiver = self;
  v10.super_class = HMBLocalSQLContext;
  v7 = blockCopy;
  v8 = [(HMBSQLContext *)&v10 sqlBlockWithActivity:activity block:v11];

  return v8;
}

- (HMBLocalSQLContext)initWithURL:(id)l
{
  v9.receiver = self;
  v9.super_class = HMBLocalSQLContext;
  v3 = [(HMBSQLContext *)&v9 initWithURL:l];
  if (v3)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    queryContextsByClass = v3->_queryContextsByClass;
    v3->_queryContextsByClass = strongToStrongObjectsMapTable;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    queryContextsByModelType = v3->_queryContextsByModelType;
    v3->_queryContextsByModelType = dictionary;
  }

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t23 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t23, &__block_literal_global_101);
  }

  v3 = logCategory__hmf_once_v24;

  return v3;
}

uint64_t __33__HMBLocalSQLContext_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v24;
  logCategory__hmf_once_v24 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)openWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v6 = [HMBSQLFile openContextWithURL:lCopy usingSubclass:objc_opt_class() error:error];

  return v6;
}

+ (void)unlinkDatastoreAt:(id)at everything:(BOOL)everything
{
  everythingCopy = everything;
  v55 = *MEMORY[0x277D85DE8];
  atCopy = at;
  absoluteString = [atCopy absoluteString];
  v8 = MEMORY[0x277CCACA8];
  lastPathComponent = [absoluteString lastPathComponent];
  v10 = [v8 stringWithFormat:@"^%@(?:|-shm|-wal)(\\..*)?$", lastPathComponent];

  v47 = 0;
  v11 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v10 options:0 error:&v47];
  v12 = v47;
  if (v12)
  {
    v13 = v12;
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v50 = v17;
      v51 = 2112;
      v52 = v13;
      _os_log_impl(&dword_22AD27000, v16, OS_LOG_TYPE_ERROR, "%{public}@unable to compile expression: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  else
  {
    v41 = v10;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    stringByDeletingLastPathComponent = [absoluteString stringByDeletingLastPathComponent];
    v46 = 0;
    v20 = [defaultManager contentsOfDirectoryAtPath:stringByDeletingLastPathComponent error:&v46];
    v13 = v46;
    v21 = [v20 mutableCopy];

    v40 = v21;
    if (v13)
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543874;
        v50 = v25;
        v51 = 2112;
        v52 = stringByDeletingLastPathComponent;
        v53 = 2112;
        v54 = v13;
        _os_log_impl(&dword_22AD27000, v24, OS_LOG_TYPE_ERROR, "%{public}@unable to get files in %@ (%@)", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v22);
    }

    else
    {
      v38 = absoluteString;
      v39 = atCopy;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v26 = v21;
      v27 = [v26 countByEnumeratingWithState:&v42 objects:v48 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v43;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v43 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v42 + 1) + 8 * i);
            v32 = [v11 firstMatchInString:v31 options:0 range:{0, objc_msgSend(v31, "length")}];
            v33 = v32;
            if (v32)
            {
              [v32 rangeAtIndex:1];
              if (v34 || everythingCopy)
              {
                v36 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v31];
                [defaultManager removeItemAtPath:v36 error:0];
              }
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v42 objects:v48 count:16];
        }

        while (v28);
      }

      absoluteString = v38;
      atCopy = v39;
      v13 = 0;
    }

    v10 = v41;
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (BOOL)_resetOutputForRecordsWithBlockRow:(unint64_t)row error:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HMBLocalSQLContext_Record___resetOutputForRecordsWithBlockRow_error___block_invoke;
  v7[3] = &unk_2786E29A8;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = row;
  v7[7] = error;
  v4 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"UPDATE record_v2 SET push_encoding = 0 block:push_data = NULL, push_block_id = NULL WHERE push_block_id=?1", v7];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

id __71__HMBLocalSQLContext_Record___resetOutputForRecordsWithBlockRow_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 48);
  v7 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v7);
  v5 = v7;
  *(*(*(a1 + 40) + 8) + 24) = __execAndSetError(*(a1 + 32), a2, v5, *(a1 + 56));

  return v5;
}

- (id)selectAllRecordsWithZoneRow:(unint64_t)row returning:(unint64_t)returning
{
  v4 = [[HMBLocalSQLIteratorRowRecord alloc] initWithSQLContext:self zoneRow:row returning:returning];

  return v4;
}

- (id)_selectRecordsWithBlockRow:(unint64_t)row returning:(unint64_t)returning error:(id *)error
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__7867;
  v19 = __Block_byref_object_dispose__7868;
  array = [MEMORY[0x277CBEB18] array];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__HMBLocalSQLContext_Record___selectRecordsWithBlockRow_returning_error___block_invoke;
  v14[3] = &unk_2786E29A8;
  v14[6] = row;
  v14[7] = returning;
  v14[4] = self;
  v14[5] = &v15;
  v9 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"SELECT record_v2.id block:record_v2.external_id, record_v2.external_data, record_v2.model_encoding, record_v2.model_data, record_v2.model_schema, record_v2.type, record_v2.push_encoding, record_v2.push_data, record_v2.push_block_id, record_v2.uuid FROM record_v2 WHERE push_block_id=?1", v14];
  v10 = v9;
  if (error)
  {
    v11 = v9;
    *error = v10;
  }

  v12 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v12;
}

id __73__HMBLocalSQLContext_Record___selectRecordsWithBlockRow_returning_error___block_invoke(void *a1, sqlite3_stmt *a2)
{
  v4 = a1[6];
  v16 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v16);
  v5 = v16;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__HMBLocalSQLContext_Record___selectRecordsWithBlockRow_returning_error___block_invoke_2;
  v14[3] = &unk_2786E29E0;
  v6 = a1[4];
  v7 = a1[5];
  v14[5] = a1[7];
  v15 = v5;
  v14[4] = v7;
  v8 = [v6 fetchSQLite3:a2 error:&v15 block:v14];
  v9 = v15;

  v10 = 0;
  if ((v8 & 1) == 0)
  {
    v11 = *(a1[5] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;

    v10 = v9;
  }

  return v10;
}

uint64_t __73__HMBLocalSQLContext_Record___selectRecordsWithBlockRow_returning_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [[HMBLocalSQLContextRowRecord alloc] initWithStatement:a2 returning:*(a1 + 40)];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v3];

  return 0;
}

- (id)_selectRecordsWithZoneRow:(unint64_t)row returning:(unint64_t)returning error:(id *)error
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__7867;
  v19 = __Block_byref_object_dispose__7868;
  array = [MEMORY[0x277CBEB18] array];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__HMBLocalSQLContext_Record___selectRecordsWithZoneRow_returning_error___block_invoke;
  v14[3] = &unk_2786E29A8;
  v14[6] = row;
  v14[7] = returning;
  v14[4] = self;
  v14[5] = &v15;
  v9 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"SELECT record_v2.id block:record_v2.external_id, record_v2.external_data, record_v2.model_encoding, record_v2.model_data, record_v2.model_schema, record_v2.type, record_v2.push_encoding, record_v2.push_data, record_v2.push_block_id, record_v2.uuid FROM record_v2 WHERE store_v2_id=?1", v14];
  v10 = v9;
  if (error)
  {
    v11 = v9;
    *error = v10;
  }

  v12 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v12;
}

id __72__HMBLocalSQLContext_Record___selectRecordsWithZoneRow_returning_error___block_invoke(void *a1, sqlite3_stmt *a2)
{
  v4 = a1[6];
  v16 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v16);
  v5 = v16;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__HMBLocalSQLContext_Record___selectRecordsWithZoneRow_returning_error___block_invoke_2;
  v14[3] = &unk_2786E29E0;
  v6 = a1[4];
  v7 = a1[5];
  v14[5] = a1[7];
  v15 = v5;
  v14[4] = v7;
  v8 = [v6 fetchSQLite3:a2 error:&v15 block:v14];
  v9 = v15;

  v10 = 0;
  if ((v8 & 1) == 0)
  {
    v11 = *(a1[5] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;

    v10 = v9;
  }

  return v10;
}

uint64_t __72__HMBLocalSQLContext_Record___selectRecordsWithZoneRow_returning_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [[HMBLocalSQLContextRowRecord alloc] initWithStatement:a2 returning:*(a1 + 40)];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v3];

  return 0;
}

- (BOOL)_selectRecordsWithZoneRow:(unint64_t)row modelType:(id)type returning:(unint64_t)returning error:(id *)error handler:(id)handler
{
  typeCopy = type;
  handlerCopy = handler;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __90__HMBLocalSQLContext_Record___selectRecordsWithZoneRow_modelType_returning_error_handler___block_invoke;
  v19[3] = &unk_2786E2A68;
  rowCopy = row;
  v14 = typeCopy;
  v20 = v14;
  selfCopy = self;
  v23 = &v26;
  returningCopy = returning;
  v15 = handlerCopy;
  v22 = v15;
  v16 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"SELECT record_v2.id block:record_v2.external_id, record_v2.external_data, record_v2.model_encoding, record_v2.model_data, record_v2.model_schema, record_v2.type, record_v2.push_encoding, record_v2.push_data, record_v2.push_block_id, record_v2.uuid FROM record_v2 WHERE store_v2_id=?1 and type=?2", v19];
  if (error)
  {
    v16 = v16;
    *error = v16;
  }

  v17 = *(v27 + 24);

  _Block_object_dispose(&v26, 8);
  return v17;
}

id __90__HMBLocalSQLContext_Record___selectRecordsWithZoneRow_modelType_returning_error_handler___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v2 = a2;
  v4 = *(a1 + 64);
  v17 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v17);
  v5 = v17;
  v6 = *(a1 + 32);
  v16 = v5;
  hmbBindStringSQLite3(v2, 2, v6, &v16);
  v7 = v16;

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __90__HMBLocalSQLContext_Record___selectRecordsWithZoneRow_modelType_returning_error_handler___block_invoke_2;
  v12[3] = &unk_2786E2A40;
  v14 = *(a1 + 72);
  v15 = v7;
  v8 = *(a1 + 40);
  v13 = *(a1 + 48);
  LOBYTE(v2) = [v8 fetchSQLite3:v2 error:&v15 block:v12];
  v9 = v15;
  v10 = v15;

  *(*(*(a1 + 56) + 8) + 24) = v2;
  return v9;
}

uint64_t __90__HMBLocalSQLContext_Record___selectRecordsWithZoneRow_modelType_returning_error_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [[HMBLocalSQLContextRowRecord alloc] initWithStatement:a2 returning:*(a1 + 40)];
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v4);
  return 0;
}

- (id)_selectRecordsWithZoneRow:(unint64_t)row modelType:(id)type returning:(unint64_t)returning error:(id *)error
{
  typeCopy = type;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__7867;
  v27 = __Block_byref_object_dispose__7868;
  array = [MEMORY[0x277CBEB18] array];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __82__HMBLocalSQLContext_Record___selectRecordsWithZoneRow_modelType_returning_error___block_invoke;
  v17[3] = &unk_2786E2978;
  rowCopy = row;
  v11 = typeCopy;
  v18 = v11;
  selfCopy = self;
  returningCopy = returning;
  v20 = &v23;
  v12 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"SELECT record_v2.id block:record_v2.external_id, record_v2.external_data, record_v2.model_encoding, record_v2.model_data, record_v2.model_schema, record_v2.type, record_v2.push_encoding, record_v2.push_data, record_v2.push_block_id, record_v2.uuid FROM record_v2 WHERE store_v2_id=?1 and type=?2", v17];
  v13 = v12;
  if (error)
  {
    v14 = v12;
    *error = v13;
  }

  v15 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v15;
}

id __82__HMBLocalSQLContext_Record___selectRecordsWithZoneRow_modelType_returning_error___block_invoke(void *a1, sqlite3_stmt *a2)
{
  v4 = a1[7];
  v19 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v19);
  v5 = v19;
  v6 = a1[4];
  v18 = v5;
  hmbBindStringSQLite3(a2, 2, v6, &v18);
  v7 = v18;

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __82__HMBLocalSQLContext_Record___selectRecordsWithZoneRow_modelType_returning_error___block_invoke_2;
  v16[3] = &unk_2786E29E0;
  v8 = a1[5];
  v9 = a1[6];
  v16[5] = a1[8];
  v17 = v7;
  v16[4] = v9;
  v10 = [v8 fetchSQLite3:a2 error:&v17 block:v16];
  v11 = v17;

  v12 = 0;
  if ((v10 & 1) == 0)
  {
    v13 = *(a1[6] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;

    v12 = v11;
  }

  return v12;
}

uint64_t __82__HMBLocalSQLContext_Record___selectRecordsWithZoneRow_modelType_returning_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [[HMBLocalSQLContextRowRecord alloc] initWithStatement:a2 returning:*(a1 + 40)];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v3];

  return 0;
}

- (id)_selectRecordWithZoneRow:(unint64_t)row parentModelID:(id)d modelType:(id)type returning:(unint64_t)returning error:(id *)error
{
  dCopy = d;
  typeCopy = type;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__7867;
  v32 = __Block_byref_object_dispose__7868;
  array = [MEMORY[0x277CBEB18] array];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __95__HMBLocalSQLContext_Record___selectRecordWithZoneRow_parentModelID_modelType_returning_error___block_invoke;
  v21[3] = &unk_2786E2A10;
  rowCopy = row;
  v14 = typeCopy;
  v22 = v14;
  v15 = dCopy;
  v23 = v15;
  selfCopy = self;
  returningCopy = returning;
  v25 = &v28;
  v16 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"SELECT record_v2.id block:record_v2.external_id, record_v2.external_data, record_v2.model_encoding, record_v2.model_data, record_v2.model_schema, record_v2.type, record_v2.push_encoding, record_v2.push_data, record_v2.push_block_id, record_v2.uuid FROM record_v2 WHERE store_v2_id=?1 AND parent_uuid=?3 AND type=?2", v21];
  v17 = v16;
  if (error)
  {
    v18 = v16;
    *error = v17;
  }

  v19 = v29[5];

  _Block_object_dispose(&v28, 8);

  return v19;
}

id __95__HMBLocalSQLContext_Record___selectRecordWithZoneRow_parentModelID_modelType_returning_error___block_invoke(void *a1, sqlite3_stmt *a2)
{
  v4 = a1[8];
  v21 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v21);
  v5 = v21;
  v6 = a1[4];
  v20 = v5;
  hmbBindStringSQLite3(a2, 2, v6, &v20);
  v7 = v20;

  v8 = a1[5];
  v19 = v7;
  hmbBindUUIDSQLite3(a2, 3, v8, &v19);
  v9 = v19;

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __95__HMBLocalSQLContext_Record___selectRecordWithZoneRow_parentModelID_modelType_returning_error___block_invoke_2;
  v17[3] = &unk_2786E29E0;
  v10 = a1[6];
  v11 = a1[7];
  v17[5] = a1[9];
  v18 = v9;
  v17[4] = v11;
  LOBYTE(v7) = [v10 fetchSQLite3:a2 error:&v18 block:v17];
  v12 = v18;

  v13 = 0;
  if ((v7 & 1) == 0)
  {
    v14 = *(a1[7] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = 0;

    v13 = v12;
  }

  return v13;
}

uint64_t __95__HMBLocalSQLContext_Record___selectRecordWithZoneRow_parentModelID_modelType_returning_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [[HMBLocalSQLContextRowRecord alloc] initWithStatement:a2 returning:*(a1 + 40)];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v3];

  return 0;
}

- (id)_selectRecordsWithZoneRow:(unint64_t)row parentModelID:(id)d returning:(unint64_t)returning error:(id *)error
{
  dCopy = d;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__7867;
  v27 = __Block_byref_object_dispose__7868;
  array = [MEMORY[0x277CBEB18] array];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __86__HMBLocalSQLContext_Record___selectRecordsWithZoneRow_parentModelID_returning_error___block_invoke;
  v17[3] = &unk_2786E2978;
  rowCopy = row;
  v11 = dCopy;
  v18 = v11;
  selfCopy = self;
  returningCopy = returning;
  v20 = &v23;
  v12 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"SELECT record_v2.id block:record_v2.external_id, record_v2.external_data, record_v2.model_encoding, record_v2.model_data, record_v2.model_schema, record_v2.type, record_v2.push_encoding, record_v2.push_data, record_v2.push_block_id, record_v2.uuid FROM record_v2 WHERE store_v2_id=?1 and parent_uuid=?2", v17];
  v13 = v12;
  if (error)
  {
    v14 = v12;
    *error = v13;
  }

  v15 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v15;
}

id __86__HMBLocalSQLContext_Record___selectRecordsWithZoneRow_parentModelID_returning_error___block_invoke(void *a1, sqlite3_stmt *a2)
{
  v4 = a1[7];
  v19 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v19);
  v5 = v19;
  v6 = a1[4];
  v18 = v5;
  hmbBindUUIDSQLite3(a2, 2, v6, &v18);
  v7 = v18;

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __86__HMBLocalSQLContext_Record___selectRecordsWithZoneRow_parentModelID_returning_error___block_invoke_2;
  v16[3] = &unk_2786E29E0;
  v8 = a1[5];
  v9 = a1[6];
  v16[5] = a1[8];
  v17 = v7;
  v16[4] = v9;
  v10 = [v8 fetchSQLite3:a2 error:&v17 block:v16];
  v11 = v17;

  v12 = 0;
  if ((v10 & 1) == 0)
  {
    v13 = *(a1[6] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;

    v12 = v11;
  }

  return v12;
}

uint64_t __86__HMBLocalSQLContext_Record___selectRecordsWithZoneRow_parentModelID_returning_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [[HMBLocalSQLContextRowRecord alloc] initWithStatement:a2 returning:*(a1 + 40)];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v3];

  return 0;
}

- (id)_selectRecordWithZoneRow:(unint64_t)row externalID:(id)d returning:(unint64_t)returning error:(id *)error
{
  dCopy = d;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__7867;
  v27 = __Block_byref_object_dispose__7868;
  v28 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __82__HMBLocalSQLContext_Record___selectRecordWithZoneRow_externalID_returning_error___block_invoke;
  v17[3] = &unk_2786E2978;
  rowCopy = row;
  v11 = dCopy;
  v18 = v11;
  selfCopy = self;
  v20 = &v23;
  returningCopy = returning;
  v12 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"SELECT record_v2.id block:record_v2.external_id, record_v2.external_data, record_v2.model_encoding, record_v2.model_data, record_v2.model_schema, record_v2.type, record_v2.push_encoding, record_v2.push_data, record_v2.push_block_id, record_v2.uuid FROM record_v2 WHERE store_v2_id=?1 and external_id=?2", v17];
  v13 = v12;
  if (error)
  {
    v14 = v12;
    *error = v13;
  }

  v15 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v15;
}

id __82__HMBLocalSQLContext_Record___selectRecordWithZoneRow_externalID_returning_error___block_invoke(void *a1, sqlite3_stmt *a2)
{
  v4 = a1[7];
  v19 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v19);
  v5 = v19;
  v6 = a1[4];
  v18 = v5;
  hmbBindDataSQLite3(a2, 2, v6, &v18);
  v7 = v18;

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __82__HMBLocalSQLContext_Record___selectRecordWithZoneRow_externalID_returning_error___block_invoke_2;
  v16[3] = &unk_2786E2950;
  v8 = a1[5];
  v9 = a1[8];
  v16[4] = a1[6];
  v16[5] = v9;
  v17 = v7;
  v10 = [v8 fetchSQLite3One:a2 error:&v17 block:v16];
  v11 = v17;

  v12 = 0;
  if (v10)
  {
    v13 = *(a1[6] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;

    v12 = v11;
  }

  return v12;
}

uint64_t __82__HMBLocalSQLContext_Record___selectRecordWithZoneRow_externalID_returning_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [[HMBLocalSQLContextRowRecord alloc] initWithStatement:a2 returning:*(a1 + 40)];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

- (id)_selectRecordWithRow:(unint64_t)row returning:(unint64_t)returning error:(id *)error
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7867;
  v16 = __Block_byref_object_dispose__7868;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__HMBLocalSQLContext_Record___selectRecordWithRow_returning_error___block_invoke;
  v11[3] = &unk_2786E29A8;
  v11[4] = self;
  v11[5] = &v12;
  v11[6] = row;
  v11[7] = returning;
  v6 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"SELECT record_v2.id block:record_v2.external_id, record_v2.external_data, record_v2.model_encoding, record_v2.model_data, record_v2.model_schema, record_v2.type, record_v2.push_encoding, record_v2.push_data, record_v2.push_block_id, record_v2.uuid FROM record_v2 WHERE id=?1", v11];
  v7 = v6;
  if (error)
  {
    v8 = v6;
    *error = v7;
  }

  v9 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v9;
}

id __67__HMBLocalSQLContext_Record___selectRecordWithRow_returning_error___block_invoke(void *a1, sqlite3_stmt *a2)
{
  v4 = a1[6];
  v16 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v16);
  v5 = v16;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__HMBLocalSQLContext_Record___selectRecordWithRow_returning_error___block_invoke_2;
  v14[3] = &unk_2786E2950;
  v6 = a1[4];
  v7 = a1[7];
  v14[4] = a1[5];
  v14[5] = v7;
  v15 = v5;
  v8 = [v6 fetchSQLite3One:a2 error:&v15 block:v14];
  v9 = v15;

  v10 = 0;
  if ((v8 & 1) == 0)
  {
    v11 = *(a1[5] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;

    v10 = v9;
  }

  return v10;
}

uint64_t __67__HMBLocalSQLContext_Record___selectRecordWithRow_returning_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [[HMBLocalSQLContextRowRecord alloc] initWithStatement:a2 returning:*(a1 + 40)];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

- (id)_selectRecordWithZoneRow:(unint64_t)row modelID:(id)d returning:(unint64_t)returning error:(id *)error
{
  dCopy = d;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__7867;
  v27 = __Block_byref_object_dispose__7868;
  v28 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__HMBLocalSQLContext_Record___selectRecordWithZoneRow_modelID_returning_error___block_invoke;
  v17[3] = &unk_2786E2978;
  rowCopy = row;
  v11 = dCopy;
  v18 = v11;
  selfCopy = self;
  v20 = &v23;
  returningCopy = returning;
  v12 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"SELECT record_v2.id block:record_v2.external_id, record_v2.external_data, record_v2.model_encoding, record_v2.model_data, record_v2.model_schema, record_v2.type, record_v2.push_encoding, record_v2.push_data, record_v2.push_block_id, record_v2.uuid FROM record_v2 WHERE store_v2_id=?1 and uuid=?2", v17];
  v13 = v12;
  if (error)
  {
    v14 = v12;
    *error = v13;
  }

  v15 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v15;
}

id __79__HMBLocalSQLContext_Record___selectRecordWithZoneRow_modelID_returning_error___block_invoke(void *a1, sqlite3_stmt *a2)
{
  v4 = a1[7];
  v19 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v19);
  v5 = v19;
  v6 = a1[4];
  v18 = v5;
  hmbBindUUIDSQLite3(a2, 2, v6, &v18);
  v7 = v18;

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __79__HMBLocalSQLContext_Record___selectRecordWithZoneRow_modelID_returning_error___block_invoke_2;
  v16[3] = &unk_2786E2950;
  v8 = a1[5];
  v9 = a1[8];
  v16[4] = a1[6];
  v16[5] = v9;
  v17 = v7;
  v10 = [v8 fetchSQLite3One:a2 error:&v17 block:v16];
  v11 = v17;

  v12 = 0;
  if ((v10 & 1) == 0)
  {
    v13 = *(a1[6] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;

    v12 = v11;
  }

  return v12;
}

uint64_t __79__HMBLocalSQLContext_Record___selectRecordWithZoneRow_modelID_returning_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [[HMBLocalSQLContextRowRecord alloc] initWithStatement:a2 returning:*(a1 + 40)];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

- (id)_selectRecordModelIDWithZoneRow:(unint64_t)row externalID:(id)d error:(id *)error
{
  dCopy = d;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7867;
  v24 = __Block_byref_object_dispose__7868;
  v25 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__HMBLocalSQLContext_Record___selectRecordModelIDWithZoneRow_externalID_error___block_invoke;
  v15[3] = &unk_2786E2920;
  rowCopy = row;
  v9 = dCopy;
  v16 = v9;
  selfCopy = self;
  v18 = &v20;
  v10 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"SELECT uuid FROM record_v2 WHERE store_v2_id=?1 AND external_id=?2" block:v15];
  v11 = v10;
  if (error)
  {
    v12 = v10;
    *error = v11;
  }

  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

id __79__HMBLocalSQLContext_Record___selectRecordModelIDWithZoneRow_externalID_error___block_invoke(void *a1, sqlite3_stmt *a2)
{
  v4 = a1[7];
  v18 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v18);
  v5 = v18;
  v6 = a1[4];
  v17 = v5;
  hmbBindDataSQLite3(a2, 2, v6, &v17);
  v7 = v17;

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__HMBLocalSQLContext_Record___selectRecordModelIDWithZoneRow_externalID_error___block_invoke_2;
  v15[3] = &unk_2786E28F8;
  v8 = a1[5];
  v15[4] = a1[6];
  v16 = v7;
  v9 = [v8 fetchSQLite3One:a2 error:&v16 block:v15];
  v10 = v16;

  v11 = 0;
  if ((v9 & 1) == 0)
  {
    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;

    v11 = v10;
  }

  return v11;
}

uint64_t __79__HMBLocalSQLContext_Record___selectRecordModelIDWithZoneRow_externalID_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCAD78] hmbUUIDWithSQLite3Column:a2 column:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

- (BOOL)_deleteZombieRecordsWithZoneRow:(unint64_t)row error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v7 = prepareSQLite3([(HMBSQLContext *)self connection], "DELETE FROM record_v2 WHERE store_v2_id = ?1 AND (model_encoding = 0 OR model_data IS NULL) AND (push_block_id IS NULL OR push_block_id NOT IN (SELECT id FROM block_v2))", &v20);
  v8 = v20;
  v9 = v8;
  if (v7)
  {
    v19 = v8;
    hmbBindIntSQLite3(v7, 1, row, &v19);
    v10 = v19;

    v11 = __execAndSetError(self, v7, v10, error);
    sqlite3_finalize(v7);
    v9 = v10;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v15;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_22AD27000, v14, OS_LOG_TYPE_ERROR, "%{public}@unable to prepare SQL statement: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    if (error)
    {
      v16 = v9;
      v11 = 0;
      *error = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)_deleteRecordsWithZoneRow:(unint64_t)row error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v7 = prepareSQLite3([(HMBSQLContext *)self connection], "DELETE FROM record_v2 WHERE store_v2_id=?1;", &v20);
  v8 = v20;
  v9 = v8;
  if (v7)
  {
    v19 = v8;
    hmbBindIntSQLite3(v7, 1, row, &v19);
    v10 = v19;

    v11 = __execAndSetError(self, v7, v10, error);
    sqlite3_finalize(v7);
    v9 = v10;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v15;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_22AD27000, v14, OS_LOG_TYPE_ERROR, "%{public}@unable to prepare SQL statement: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    if (error)
    {
      v16 = v9;
      v11 = 0;
      *error = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

- (unint64_t)_clearPushForRecordRow:(unint64_t)row expectedOutputBlockRow:(unint64_t)blockRow error:(id *)error
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__HMBLocalSQLContext_Record___clearPushForRecordRow_expectedOutputBlockRow_error___block_invoke;
  v9[3] = &unk_2786E29A8;
  v9[6] = row;
  v9[7] = blockRow;
  v9[4] = self;
  v9[5] = &v10;
  v6 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"UPDATE record_v2 SET push_encoding = 0 block:push_data = NULL, push_block_id = NULL WHERE id=?1 AND push_block_id=?2", v9];
  if (error)
  {
    v6 = v6;
    *error = v6;
  }

  v7 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v7;
}

id __82__HMBLocalSQLContext_Record___clearPushForRecordRow_expectedOutputBlockRow_error___block_invoke(void *a1, sqlite3_stmt *a2)
{
  v4 = a1[6];
  v16 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v16);
  v5 = v16;
  v6 = a1[7];
  v15 = v5;
  hmbBindIntSQLite3(a2, 2, v6, &v15);
  v7 = v15;

  if (v7)
  {
    *(*(a1[5] + 8) + 24) = 0;
    v8 = v7;
  }

  else
  {
    v9 = a1[4];
    v14 = 0;
    v10 = [v9 execSQLite3:a2 error:&v14];
    v11 = v14;
    v12 = v11;
    if (!v10)
    {
      if (!v11)
      {
        *(*(a1[5] + 8) + 24) = 1;
      }

      *(*(a1[5] + 8) + 24) = 0;
    }

    *(*(a1[5] + 8) + 24) = 2;
    if (*(*(a1[5] + 8) + 24))
    {
      v8 = 0;
    }

    else
    {
      v8 = v11;
    }
  }

  return v8;
}

- (unint64_t)_deleteRecordWithRow:(unint64_t)row expectedOutputBlockRow:(unint64_t)blockRow error:(id *)error
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__HMBLocalSQLContext_Record___deleteRecordWithRow_expectedOutputBlockRow_error___block_invoke;
  v9[3] = &unk_2786E29A8;
  v9[6] = row;
  v9[7] = blockRow;
  v9[4] = self;
  v9[5] = &v10;
  v6 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"DELETE FROM record_v2 WHERE id=?1 and push_block_id=?2" block:v9];
  if (error)
  {
    v6 = v6;
    *error = v6;
  }

  v7 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v7;
}

id __80__HMBLocalSQLContext_Record___deleteRecordWithRow_expectedOutputBlockRow_error___block_invoke(void *a1, sqlite3_stmt *a2)
{
  v4 = a1[6];
  v16 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v16);
  v5 = v16;
  v6 = a1[7];
  v15 = v5;
  hmbBindIntSQLite3(a2, 2, v6, &v15);
  v7 = v15;

  if (v7)
  {
    *(*(a1[5] + 8) + 24) = 0;
    v8 = v7;
  }

  else
  {
    v9 = a1[4];
    v14 = 0;
    v10 = [v9 execSQLite3:a2 error:&v14];
    v11 = v14;
    v12 = v11;
    if (!v10)
    {
      if (!v11)
      {
        *(*(a1[5] + 8) + 24) = 1;
      }

      *(*(a1[5] + 8) + 24) = 0;
    }

    *(*(a1[5] + 8) + 24) = 2;
    if (*(*(a1[5] + 8) + 24))
    {
      v8 = 0;
    }

    else
    {
      v8 = v11;
    }
  }

  return v8;
}

- (BOOL)_deleteRecordWithRow:(unint64_t)row error:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HMBLocalSQLContext_Record___deleteRecordWithRow_error___block_invoke;
  v7[3] = &unk_2786E29A8;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = row;
  v7[7] = error;
  v4 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"DELETE FROM record_v2 WHERE id=?1" block:v7];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

id __57__HMBLocalSQLContext_Record___deleteRecordWithRow_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 48);
  v7 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v7);
  v5 = v7;
  *(*(*(a1 + 40) + 8) + 24) = __execAndSetError(*(a1 + 32), a2, v5, *(a1 + 56));

  return v5;
}

- (BOOL)_deleteRecordWithZoneRow:(unint64_t)row externalID:(id)d error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v23 = 0;
  v9 = prepareSQLite3([(HMBSQLContext *)self connection], "DELETE FROM record_v2 WHERE store_v2_id=?1 AND external_id=?2;", &v23);
  v10 = v23;
  v11 = v10;
  if (v9)
  {
    v22 = v10;
    hmbBindIntSQLite3(v9, 1, row, &v22);
    v12 = v22;

    v21 = v12;
    hmbBindDataSQLite3(v9, 2, dCopy, &v21);
    v11 = v21;

    v13 = __execAndSetError(self, v9, v11, error);
    sqlite3_finalize(v9);
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v17;
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&dword_22AD27000, v16, OS_LOG_TYPE_ERROR, "%{public}@unable to prepare SQL statement: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    if (error)
    {
      v18 = v11;
      v13 = 0;
      *error = v11;
    }

    else
    {
      v13 = 0;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_deleteRecordWithZoneRow:(unint64_t)row modelID:(id)d error:(id *)error
{
  dCopy = d;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__HMBLocalSQLContext_Record___deleteRecordWithZoneRow_modelID_error___block_invoke;
  v12[3] = &unk_2786E2978;
  rowCopy = row;
  v9 = dCopy;
  v13 = v9;
  selfCopy = self;
  v15 = &v18;
  errorCopy = error;
  v10 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"DELETE FROM record_v2 WHERE store_v2_id=?1 AND uuid=?2" block:v12];
  LOBYTE(error) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return error;
}

id __69__HMBLocalSQLContext_Record___deleteRecordWithZoneRow_modelID_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 56);
  v10 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v10);
  v5 = v10;
  v6 = *(a1 + 32);
  v9 = v5;
  hmbBindUUIDSQLite3(a2, 2, v6, &v9);
  v7 = v9;

  *(*(*(a1 + 48) + 8) + 24) = __execAndSetError(*(a1 + 40), a2, v7, *(a1 + 64));

  return v7;
}

- (BOOL)_updateRecordWithRow:(unint64_t)row modelType:(id)type modelSchema:(id)schema error:(id *)error
{
  typeCopy = type;
  schemaCopy = schema;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __79__HMBLocalSQLContext_Record___updateRecordWithRow_modelType_modelSchema_error___block_invoke;
  v16[3] = &unk_2786E2A10;
  rowCopy = row;
  v12 = typeCopy;
  v17 = v12;
  v13 = schemaCopy;
  v18 = v13;
  selfCopy = self;
  v20 = &v23;
  errorCopy = error;
  v14 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"UPDATE record_v2 SET type = ?2 block:model_schema = ?3 WHERE id = ?1", v16];
  LOBYTE(self) = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  return self;
}

id __79__HMBLocalSQLContext_Record___updateRecordWithRow_modelType_modelSchema_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 64);
  v13 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v13);
  v5 = v13;
  v6 = *(a1 + 32);
  v12 = v5;
  hmbBindStringSQLite3(a2, 2, v6, &v12);
  v7 = v12;

  v8 = *(a1 + 40);
  v11 = v7;
  hmbBindUUIDSQLite3(a2, 3, v8, &v11);
  v9 = v11;

  *(*(*(a1 + 56) + 8) + 24) = __execAndSetError(*(a1 + 48), a2, v9, *(a1 + 72));

  return v9;
}

- (BOOL)_updateRecordWithRow:(unint64_t)row pushBlockRow:(id)blockRow pushData:(id)data pushEncoding:(unint64_t)encoding error:(id *)error
{
  blockRowCopy = blockRow;
  dataCopy = data;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __92__HMBLocalSQLContext_Record___updateRecordWithRow_pushBlockRow_pushData_pushEncoding_error___block_invoke;
  v18[3] = &unk_2786E2898;
  rowCopy = row;
  encodingCopy = encoding;
  v14 = dataCopy;
  v19 = v14;
  v15 = blockRowCopy;
  v20 = v15;
  selfCopy = self;
  v22 = &v26;
  errorCopy = error;
  v16 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"UPDATE record_v2 SET push_encoding = ?2 block:push_data = ?3, push_block_id = ?4 WHERE id = ?1", v18];
  LOBYTE(self) = *(v27 + 24);

  _Block_object_dispose(&v26, 8);
  return self;
}

id __92__HMBLocalSQLContext_Record___updateRecordWithRow_pushBlockRow_pushData_pushEncoding_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 64);
  v16 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v16);
  v5 = v16;
  v6 = *(a1 + 72);
  v15 = v5;
  hmbBindIntSQLite3(a2, 2, v6, &v15);
  v7 = v15;

  v8 = *(a1 + 32);
  v14 = v7;
  hmbBindDataSQLite3(a2, 3, v8, &v14);
  v9 = v14;

  v10 = *(a1 + 40);
  v13 = v9;
  hmbBindIntNumberSQLite3(a2, 4, v10, &v13);
  v11 = v13;

  *(*(*(a1 + 56) + 8) + 24) = __execAndSetError(*(a1 + 48), a2, v11, *(a1 + 80));

  return v11;
}

- (BOOL)_updateRecordWithRow:(unint64_t)row modelEncoding:(unint64_t)encoding modelData:(id)data modelSchema:(id)schema error:(id *)error
{
  dataCopy = data;
  schemaCopy = schema;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __93__HMBLocalSQLContext_Record___updateRecordWithRow_modelEncoding_modelData_modelSchema_error___block_invoke;
  v18[3] = &unk_2786E2898;
  rowCopy = row;
  encodingCopy = encoding;
  v14 = dataCopy;
  v19 = v14;
  v15 = schemaCopy;
  v20 = v15;
  selfCopy = self;
  v22 = &v26;
  errorCopy = error;
  v16 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"UPDATE record_v2 SET model_encoding=?2 block:model_data=?3, model_schema=?4 WHERE id=?1", v18];
  LOBYTE(self) = *(v27 + 24);

  _Block_object_dispose(&v26, 8);
  return self;
}

id __93__HMBLocalSQLContext_Record___updateRecordWithRow_modelEncoding_modelData_modelSchema_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 64);
  v16 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v16);
  v5 = v16;
  v6 = *(a1 + 72);
  v15 = v5;
  hmbBindIntSQLite3(a2, 2, v6, &v15);
  v7 = v15;

  v8 = *(a1 + 32);
  v14 = v7;
  hmbBindDataSQLite3(a2, 3, v8, &v14);
  v9 = v14;

  v10 = *(a1 + 40);
  v13 = v9;
  hmbBindUUIDSQLite3(a2, 4, v10, &v13);
  v11 = v13;

  *(*(*(a1 + 56) + 8) + 24) = __execAndSetError(*(a1 + 48), a2, v11, *(a1 + 80));

  return v11;
}

- (BOOL)_updateRecordsClearPushWithPushBlockRow:(unint64_t)row error:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__HMBLocalSQLContext_Record___updateRecordsClearPushWithPushBlockRow_error___block_invoke;
  v7[3] = &unk_2786E29A8;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = row;
  v7[7] = error;
  v4 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"UPDATE record_v2 SET push_encoding = 0 block:push_data = NULL, push_block_id = NULL WHERE push_block_id=?1", v7];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

id __76__HMBLocalSQLContext_Record___updateRecordsClearPushWithPushBlockRow_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 48);
  v7 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v7);
  v5 = v7;
  *(*(*(a1 + 40) + 8) + 24) = __execAndSetError(*(a1 + 32), a2, v5, *(a1 + 56));

  return v5;
}

- (BOOL)_updateRecordWithZoneRow:(unint64_t)row modelID:(id)d pushEncoding:(unint64_t)encoding pushData:(id)data pushBlockRow:(id)blockRow error:(id *)error
{
  dCopy = d;
  dataCopy = data;
  blockRowCopy = blockRow;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __104__HMBLocalSQLContext_Record___updateRecordWithZoneRow_modelID_pushEncoding_pushData_pushBlockRow_error___block_invoke;
  v22[3] = &unk_2786E2860;
  rowCopy = row;
  v17 = dCopy;
  v23 = v17;
  encodingCopy = encoding;
  v18 = dataCopy;
  v24 = v18;
  v19 = blockRowCopy;
  v25 = v19;
  selfCopy = self;
  v27 = &v31;
  errorCopy = error;
  v20 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"UPDATE record_v2 SET push_encoding = ?3 block:push_data = ?4, push_block_id = ?5 WHERE store_v2_id = ?1 AND uuid=?2", v22];
  LOBYTE(self) = *(v32 + 24);

  _Block_object_dispose(&v31, 8);
  return self;
}

id __104__HMBLocalSQLContext_Record___updateRecordWithZoneRow_modelID_pushEncoding_pushData_pushBlockRow_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 72);
  v19 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v19);
  v5 = v19;
  v6 = *(a1 + 32);
  v18 = v5;
  hmbBindUUIDSQLite3(a2, 2, v6, &v18);
  v7 = v18;

  v8 = *(a1 + 80);
  v17 = v7;
  hmbBindIntSQLite3(a2, 3, v8, &v17);
  v9 = v17;

  v10 = *(a1 + 40);
  v16 = v9;
  hmbBindDataSQLite3(a2, 4, v10, &v16);
  v11 = v16;

  v12 = *(a1 + 48);
  v15 = v11;
  hmbBindIntNumberSQLite3(a2, 5, v12, &v15);
  v13 = v15;

  *(*(*(a1 + 64) + 8) + 24) = __execAndSetError(*(a1 + 56), a2, v13, *(a1 + 88));

  return v13;
}

- (BOOL)_updateRecordWithZoneRow:(unint64_t)row modelID:(id)d externalData:(id)data error:(id *)error
{
  dCopy = d;
  dataCopy = data;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __82__HMBLocalSQLContext_Record___updateRecordWithZoneRow_modelID_externalData_error___block_invoke;
  v16[3] = &unk_2786E2A10;
  rowCopy = row;
  v12 = dCopy;
  v17 = v12;
  v13 = dataCopy;
  v18 = v13;
  selfCopy = self;
  v20 = &v23;
  errorCopy = error;
  v14 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"UPDATE record_v2 SET external_data=?3 WHERE store_v2_id=?1 AND uuid=?2" block:v16];
  LOBYTE(self) = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  return self;
}

id __82__HMBLocalSQLContext_Record___updateRecordWithZoneRow_modelID_externalData_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 64);
  v13 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v13);
  v5 = v13;
  v6 = *(a1 + 32);
  v12 = v5;
  hmbBindUUIDSQLite3(a2, 2, v6, &v12);
  v7 = v12;

  v8 = *(a1 + 40);
  v11 = v7;
  hmbBindDataSQLite3(a2, 3, v8, &v11);
  v9 = v11;

  *(*(*(a1 + 56) + 8) + 24) = __execAndSetError(*(a1 + 48), a2, v9, *(a1 + 72));

  return v9;
}

- (BOOL)_updateRecordWithZoneRow:(unint64_t)row externalID:(id)d externalData:(id)data error:(id *)error
{
  dCopy = d;
  dataCopy = data;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__HMBLocalSQLContext_Record___updateRecordWithZoneRow_externalID_externalData_error___block_invoke;
  v16[3] = &unk_2786E2A10;
  rowCopy = row;
  v12 = dCopy;
  v17 = v12;
  v13 = dataCopy;
  v18 = v13;
  selfCopy = self;
  v20 = &v23;
  errorCopy = error;
  v14 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"UPDATE record_v2 SET external_data=?3 WHERE store_v2_id=?1 AND external_id=?2" block:v16];
  LOBYTE(self) = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  return self;
}

id __85__HMBLocalSQLContext_Record___updateRecordWithZoneRow_externalID_externalData_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 64);
  v13 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v13);
  v5 = v13;
  v6 = *(a1 + 32);
  v12 = v5;
  hmbBindDataSQLite3(a2, 2, v6, &v12);
  v7 = v12;

  v8 = *(a1 + 40);
  v11 = v7;
  hmbBindDataSQLite3(a2, 3, v8, &v11);
  v9 = v11;

  *(*(*(a1 + 56) + 8) + 24) = __execAndSetError(*(a1 + 48), a2, v9, *(a1 + 72));

  return v9;
}

- (BOOL)_updateRecordWithRow:(unint64_t)row externalID:(id)d externalData:(id)data error:(id *)error
{
  dCopy = d;
  dataCopy = data;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__HMBLocalSQLContext_Record___updateRecordWithRow_externalID_externalData_error___block_invoke;
  v16[3] = &unk_2786E2A10;
  rowCopy = row;
  v12 = dCopy;
  v17 = v12;
  v13 = dataCopy;
  v18 = v13;
  selfCopy = self;
  v20 = &v23;
  errorCopy = error;
  v14 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"UPDATE record_v2 SET external_id=?2 block:external_data=?3 WHERE id=?1", v16];
  LOBYTE(self) = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  return self;
}

id __81__HMBLocalSQLContext_Record___updateRecordWithRow_externalID_externalData_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 64);
  v13 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v13);
  v5 = v13;
  v6 = *(a1 + 32);
  v12 = v5;
  hmbBindDataSQLite3(a2, 2, v6, &v12);
  v7 = v12;

  v8 = *(a1 + 40);
  v11 = v7;
  hmbBindDataSQLite3(a2, 3, v8, &v11);
  v9 = v11;

  *(*(*(a1 + 56) + 8) + 24) = __execAndSetError(*(a1 + 48), a2, v9, *(a1 + 72));

  return v9;
}

- (unint64_t)_insertRecordWithZoneRow:(unint64_t)row externalID:(id)d externalData:(id)data modelID:(id)iD parentModelID:(id)modelID modelType:(id)type modelEncoding:(unint64_t)encoding modelData:(id)self0 modelSchema:(id)self1 pushEncoding:(unint64_t)self2 pushData:(id)self3 pushBlockRow:(id)self4 error:(id *)self5
{
  dCopy = d;
  dataCopy = data;
  iDCopy = iD;
  modelIDCopy = modelID;
  typeCopy = type;
  modelDataCopy = modelData;
  schemaCopy = schema;
  pushDataCopy = pushData;
  blockRowCopy = blockRow;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __188__HMBLocalSQLContext_Record___insertRecordWithZoneRow_externalID_externalData_modelID_parentModelID_modelType_modelEncoding_modelData_modelSchema_pushEncoding_pushData_pushBlockRow_error___block_invoke;
  v42[3] = &unk_2786E2818;
  rowCopy = row;
  v29 = dCopy;
  v43 = v29;
  v30 = dataCopy;
  v44 = v30;
  v31 = iDCopy;
  v45 = v31;
  v32 = modelIDCopy;
  v46 = v32;
  v33 = typeCopy;
  v47 = v33;
  encodingCopy = encoding;
  v34 = modelDataCopy;
  v48 = v34;
  v35 = schemaCopy;
  v49 = v35;
  pushEncodingCopy = pushEncoding;
  v36 = pushDataCopy;
  v50 = v36;
  v37 = blockRowCopy;
  v51 = v37;
  selfCopy = self;
  v53 = &v58;
  errorCopy = error;
  v38 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"INSERT INTO record_v2                                         (store_v2_id block:external_id, external_data, uuid, parent_uuid, type, model_encoding, model_data, model_schema, push_encoding, push_data, push_block_id)                                         VALUES (?1, ?2, ?3, ?4, ?5, ?6, ?7, ?8, ?9, ?10, ?11, ?12)", v42];
  v39 = v59[3];

  _Block_object_dispose(&v58, 8);
  return v39;
}

id __188__HMBLocalSQLContext_Record___insertRecordWithZoneRow_externalID_externalData_modelID_parentModelID_modelType_modelEncoding_modelData_modelSchema_pushEncoding_pushData_pushBlockRow_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 120);
  v40 = 0;
  hmbBindIntSQLite3(a2, 1, v4, &v40);
  v5 = v40;
  v6 = *(a1 + 32);
  v39 = v5;
  hmbBindDataSQLite3(a2, 2, v6, &v39);
  v7 = v39;

  v8 = *(a1 + 40);
  v38 = v7;
  hmbBindDataSQLite3(a2, 3, v8, &v38);
  v9 = v38;

  v10 = *(a1 + 48);
  v37 = v9;
  hmbBindUUIDSQLite3(a2, 4, v10, &v37);
  v11 = v37;

  v12 = *(a1 + 56);
  v36 = v11;
  hmbBindUUIDSQLite3(a2, 5, v12, &v36);
  v13 = v36;

  v14 = *(a1 + 64);
  v35 = v13;
  hmbBindStringSQLite3(a2, 6, v14, &v35);
  v15 = v35;

  v16 = *(a1 + 128);
  v34 = v15;
  hmbBindIntSQLite3(a2, 7, v16, &v34);
  v17 = v34;

  v18 = *(a1 + 72);
  v33 = v17;
  hmbBindDataSQLite3(a2, 8, v18, &v33);
  v19 = v33;

  v20 = *(a1 + 80);
  v32 = v19;
  hmbBindUUIDSQLite3(a2, 9, v20, &v32);
  v21 = v32;

  v22 = *(a1 + 136);
  v31 = v21;
  hmbBindIntSQLite3(a2, 10, v22, &v31);
  v23 = v31;

  v24 = *(a1 + 88);
  v30 = v23;
  hmbBindDataSQLite3(a2, 11, v24, &v30);
  v25 = v30;

  v26 = *(a1 + 96);
  v29 = v25;
  hmbBindIntNumberSQLite3(a2, 12, v26, &v29);
  v27 = v29;

  *(*(*(a1 + 112) + 8) + 24) = __execRowAndSetError(*(a1 + 104), a2, v27, *(a1 + 144));

  return v27;
}

- (int64_t)migrateToSchema01WithError:(id *)error
{
  v5 = -[HMBSQLContext runSQLite3:](self, "runSQLite3:", [CFSTR(""CREATE TABLE IF NOT EXISTS index_sentinel(                 store_id            INTEGER NOT NULL type                TEXT NOT NULL]);
  if (v5)
  {
    if (error)
    {
LABEL_3:
      v5 = v5;
      v6 = 0;
      *error = v5;
      goto LABEL_10;
    }

LABEL_6:
    v6 = 0;
    goto LABEL_10;
  }

  v5 = -[HMBSQLContext runSQLite3:](self, "runSQLite3:", [@"CREATE UNIQUE INDEX IF NOT EXISTS index_sentinel_unique ON index_sentinel (store_id type)"]);;
  if (v5)
  {
    if (error)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  v7 = [(HMBSQLContext *)self setSchemaVersion:1 error:error];
  v5 = 0;
  if (v7)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

LABEL_10:

  return v6;
}

@end